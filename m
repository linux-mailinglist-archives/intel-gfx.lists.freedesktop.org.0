Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AC42F7438
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 09:22:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF20E6E188;
	Fri, 15 Jan 2021 08:22:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248596E188
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 08:22:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23602707-1500050 for multiple; Fri, 15 Jan 2021 08:22:14 +0000
MIME-Version: 1.0
In-Reply-To: <7a7348c3-b915-69dc-e9c3-8b8f05db8077@intel.com>
References: <20201223103917.14687-1-chris@chris-wilson.co.uk>
 <87a6u4okvl.fsf@intel.com> <f6daaf1e-beab-4b9c-c6de-5e0fabe5e16e@intel.com>
 <87wnwny3hb.fsf@intel.com> <87zh1drr3e.fsf@intel.com>
 <7a7348c3-b915-69dc-e9c3-8b8f05db8077@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 08:22:12 +0000
Message-ID: <161069893278.19482.3803444937046587332@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Bitwise or the conversion
 colour specifier together
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Nautiyal, Ankit K (2021-01-15 07:24:36)
> 
> On 1/13/2021 5:22 PM, Jani Nikula wrote:
> > On Fri, 08 Jan 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> >> On Thu, 24 Dec 2020, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> >>> Thanks Chris to catch this.
> >>>
> >>> This definitely should be bitwise Operator, as mentioned by Jani is
> >>> right thing to do.
> >>>
> >>> The PCON which I had access to, had the F/W which was using 303Ch
> >>> (previously proposed) for color conversion capability, instead of what
> >>> is latest mentioned in the spec ie. 83h.
> >>>
> >>> While testing, I had to skip this line of code, and hardcoded to older
> >>> register ie. 303Ch.
> >>>
> >>> I Will get this patch tested and update.
> >> In the mean time, the topic/dp-hdmi-2.1-pcon branch has been merged to
> >> drm-next and backmerged to drm-intel-next. So drm-intel-next is where
> >> the fixes should now land.
> > Ankit, where are we with this? I'm anxious to merge this.
> 
> Jani, I checked the lastest F/W we had got for source control mode, but 
> its still having support in older DPCD 303Ch and has not updated to use 
> DPCD 83h.
> 
> So this patch cannot be directly tested.
> 
> Since this patch is correctly fixing to use bitwise operator, can we go 
> ahead with the merge?

Pushed. One hopes we can find a way to gain coverage for wacky DPCD,
this sounds like the sort of thing we need an emulator such as chamelium
for.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
