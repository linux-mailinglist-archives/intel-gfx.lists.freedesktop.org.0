Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD15F2C9163
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 23:47:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2DF89C99;
	Mon, 30 Nov 2020 22:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3BEE89CA1
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 22:47:13 +0000 (UTC)
IronPort-SDR: vquAY0Q9q7REW30R4coZ4atmQfoASMKGDziSMYoyGD4YFxI/tCb5tzMrBIaKIL2G49wlVSF1Oc
 OLShsjl1BuqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="257434858"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="257434858"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:47:13 -0800
IronPort-SDR: gCH5/JCMd6Gf8fj94e1zEf0VthCdQhPF/6WC7J5zcfL9dZ/LrOcQDgN6Raavsd4W3VcEK9r+g9
 UI6QIMpNwMOA==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="480837722"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 14:47:12 -0800
Date: Tue, 1 Dec 2020 00:47:08 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201130224708.GD2480925@ideak-desk.fi.intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
 <20201130212200.2811939-10-imre.deak@intel.com>
 <160677402120.12351.15729317951519810612@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160677402120.12351.15729317951519810612@build.alporthouse.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 30, 2020 at 10:07:01PM +0000, Chris Wilson wrote:
> Quoting Imre Deak (2020-11-30 21:22:00)
> > All the display power domain references are wakeref tracked now, so we
> > can mark intel_display_power_put_unchecked() as an internal function
> > (for suppressing wakeref tracking in non-debug builds).
> > 
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> Ok, after all previous patches it will only be called from the header
> after throwing away the wakeref.
> 
> I have a sneaky suspicion you might take another path after reviewing
> the danger caused by the debug build, 

Yes, how about also adding:

+static inline void
+____intel_display_power_put(struct drm_i915_private *i915,
+                           enum intel_display_power_domain domain,
+                           intel_wakeref_t wakeref)
+{
+       intel_display_power_put_unchecked(i915, domain);
+}
+
 static inline void
 intel_display_power_put(struct drm_i915_private *i915,
                        enum intel_display_power_domain domain,
                        intel_wakeref_t wakeref)
 {
-       intel_display_power_put_unchecked(i915, domain);
+       ____intel_display_power_put(i915, domain, wakeref);
 }

(and similar change for intel_display_power_put_async()) ?

> but if you want to keep this patch,

> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
