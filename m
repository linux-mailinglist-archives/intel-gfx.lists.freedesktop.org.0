Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E5E832223
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 00:12:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A4B10E820;
	Thu, 18 Jan 2024 23:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C72C810E820
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 23:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705619535; x=1737155535;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EEnxO9mgcDkauSKk4jXWFGy7yHr/LhOVPt6FH2hnxB4=;
 b=gPi/Z+NyxlhBJI12Afob3yd3P9lG7b6EeMAOHbgFFxuwqBOZdH+zbUI1
 CgHXVwdpztn0tmvK9fIB1BY10/8/66PVOtTT1CPrDGMMHW4xPKruD6kxX
 cNipyO2bE24m1+LPUHg36WFek5UlIC+xdn+arR5G9a+rDrOXZUbAGF3Rx
 22GnGJUqeCUciBlQyHMgGhEAYgEgevATCT+mwGZAWYFQhQ4bOhR2avmy9
 WIDWscMFXLFfYSTlXAKT3f9djGiU/Y+UCsOCA1AfoDoNwArLNxv3hdF9X
 hmYwvkwfyfxxz3LbWyW5ZoknErDnDPCJ96OPvx1kTKvnc991mgK1w26BP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="399479343"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="399479343"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 15:12:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="777845415"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="777845415"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 18 Jan 2024 15:12:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Jan 2024 01:12:11 +0200
Date: Fri, 19 Jan 2024 01:12:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Subject: Re: [PATCH v3 05/16] drm/i915: Disable the "binder"
Message-ID: <ZamwS6sLlEdJRv59@intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-6-ville.syrjala@linux.intel.com>
 <ux7q2bmbk47rnke6n2qo3dabdx7lxkuwcy5rrauwsyz7v2bthc@p7jgbcz6vs7d>
 <32646e92-e06b-45a4-8d25-185be9c1e4d4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <32646e92-e06b-45a4-8d25-185be9c1e4d4@intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org,
 =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 17, 2024 at 06:46:24PM +0100, Nirmoy Das wrote:
> 
> On 1/17/2024 3:13 PM, Michał Winiarski wrote:
> > On Tue, Jan 16, 2024 at 09:56:25AM +0200, Ville Syrjala wrote:
> >> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>
> >> Now that the GGTT PTE updates go straight to GSMBASE (bypassing
> >> GTTMMADR) there should be no more risk of system hangs? So the
> >> "binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
> >> necessary, disable it.
> >>
> >> My main worry with the MI_UPDATE_GTT are:
> >> - only used on this one platform so very limited testing coverage
> >> - async so more opprtunities to screw things up
> >> - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
> >>    to finish?
> >> - requires working command submission, so even getting a working
> >>    display now depends on a lot more extra components working correctly
> >>
> >> TODO: MI_UPDATE_GTT might be interesting as an optimization
> >> though, so perhaps someone should look into always using it
> >> (assuming the GPU is alive and well)?
> >>
> >> v2: Keep using MI_UPDATE_GTT on VM guests
> >>
> >> Cc: Paz Zcharya <pazz@chromium.org>
> >> Cc: Nirmoy Das <nirmoy.das@intel.com>
> >> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
> >>   1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> >> index 86f73fe558ca..e83dabc56a14 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> >> @@ -24,7 +24,8 @@
> >>   bool i915_ggtt_require_binder(struct drm_i915_private *i915)
> >>   {
> >>   	/* Wa_13010847436 & Wa_14019519902 */
> >> -	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> >> +	return i915_run_as_guest() &&
> >> +		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> > Note that i915_run_as_guest() is not the most reliable way to decide
> > whether to use MI_UPDATE_GTT or straight to GSMBASE, as it requires the
> > hypervisor to "opt-in" and set the X86_FEATURE_HYPERVISOR.
> > If it's not set - the driver will go into GSMBASE, which is not mapped
> > inside the guest.
> > Does the system firmware advertise whether GSMBASE is "open" or "closed"
> > to CPU access in any way?
> 
> Had a chat with David from IVE team, David suggested to read 0x138914 to 
> determine that.  "GOP needs to qualify the WA by reading GFX MMIO offset 
> 0x138914 and verify the value there is 0x1." -> as per the HSD-22018444074

OK, so we can confirm the firmware is on board. I suppose no real harm
in doing so even though it would clearly be a rather weird if someone
would ship some ancient firmware that doesn't handle this.

But that still won't help with the guest side handling because that
register will read the same in the guest.

-- 
Ville Syrjälä
Intel
