Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E422C9979
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 09:31:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8C5F89FD4;
	Tue,  1 Dec 2020 08:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973CB6E4AF
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 08:31:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23171470-1500050 for multiple; Tue, 01 Dec 2020 08:14:41 +0000
MIME-Version: 1.0
In-Reply-To: <20201130224708.GD2480925@ideak-desk.fi.intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
 <20201130212200.2811939-10-imre.deak@intel.com>
 <160677402120.12351.15729317951519810612@build.alporthouse.com>
 <20201130224708.GD2480925@ideak-desk.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Imre Deak <imre.deak@intel.com>
Date: Tue, 01 Dec 2020 08:14:40 +0000
Message-ID: <160681048020.12351.8804231018277657231@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Make
 intel_display_power_put_unchecked() an internal-only function
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Imre Deak (2020-11-30 22:47:08)
> On Mon, Nov 30, 2020 at 10:07:01PM +0000, Chris Wilson wrote:
> > Quoting Imre Deak (2020-11-30 21:22:00)
> > > All the display power domain references are wakeref tracked now, so we
> > > can mark intel_display_power_put_unchecked() as an internal function
> > > (for suppressing wakeref tracking in non-debug builds).
> > > 
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > 
> > Ok, after all previous patches it will only be called from the header
> > after throwing away the wakeref.
> > 
> > I have a sneaky suspicion you might take another path after reviewing
> > the danger caused by the debug build, 
> 
> Yes, how about also adding:
> 
> +static inline void
> +____intel_display_power_put(struct drm_i915_private *i915,
> +                           enum intel_display_power_domain domain,
> +                           intel_wakeref_t wakeref)
> +{
> +       intel_display_power_put_unchecked(i915, domain);
> +}
> +
>  static inline void
>  intel_display_power_put(struct drm_i915_private *i915,
>                         enum intel_display_power_domain domain,
>                         intel_wakeref_t wakeref)
>  {
> -       intel_display_power_put_unchecked(i915, domain);
> +       ____intel_display_power_put(i915, domain, wakeref);
>  }
> 
> (and similar change for intel_display_power_put_async()) ?

Hmm. The compiler shouldn't DCE the wakeref since it has a side-effect.
We can but see.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
