Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1585683BCC8
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jan 2024 10:08:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81C5710F098;
	Thu, 25 Jan 2024 09:08:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D35A110F098
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jan 2024 09:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706173691; x=1737709691;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ipGTpsLjDOv1G4fKQnt5fvZr/Rzz5FoK7rHYHShjoRU=;
 b=DEfmToJ3nDU7B+Kg2WhWSaToINakHYNxOk0VKo/LcxTS9Lo0dJFHUzeH
 lxtI7ThORGqqUKe39VkITc9JNw5Fi2GBAqtQt/9b6BruzpBsR9ldStenU
 n+aTi229AXl62G5QJ7ZUKHnR9QkXFPMnzv3o2nIbW49ukgONbIQUtt9VV
 zJUs9LuA+Lvp1JqzxdUiwmbNACn0zddDp34Aakz/E0xjTYUvgIirMLaxx
 fBJMF5JCU2W/KKl2NA+rlbkxLQGj1h8NNGiFHeyiPGpGYElRjFuqsx23h
 5GBFKjbeXUsfkFY3JH/5XQMfuB1VW+0xeVMiQ3GUUMA4ShgIcU9x0j6R/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="392514265"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="392514265"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 01:08:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="820730978"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="820730978"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 25 Jan 2024 01:08:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Jan 2024 11:08:04 +0200
Date: Thu, 25 Jan 2024 11:08:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Subject: Re: [PATCH v3 05/16] drm/i915: Disable the "binder"
Message-ID: <ZbIk9Kwx9f552dyl@intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-6-ville.syrjala@linux.intel.com>
 <ux7q2bmbk47rnke6n2qo3dabdx7lxkuwcy5rrauwsyz7v2bthc@p7jgbcz6vs7d>
 <32646e92-e06b-45a4-8d25-185be9c1e4d4@intel.com>
 <ZamwS6sLlEdJRv59@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZamwS6sLlEdJRv59@intel.com>
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

On Fri, Jan 19, 2024 at 01:12:11AM +0200, Ville Syrjälä wrote:
> On Wed, Jan 17, 2024 at 06:46:24PM +0100, Nirmoy Das wrote:
> > 
> > On 1/17/2024 3:13 PM, Michał Winiarski wrote:
> > > On Tue, Jan 16, 2024 at 09:56:25AM +0200, Ville Syrjala wrote:
> > >> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >>
> > >> Now that the GGTT PTE updates go straight to GSMBASE (bypassing
> > >> GTTMMADR) there should be no more risk of system hangs? So the
> > >> "binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
> > >> necessary, disable it.
> > >>
> > >> My main worry with the MI_UPDATE_GTT are:
> > >> - only used on this one platform so very limited testing coverage
> > >> - async so more opprtunities to screw things up
> > >> - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
> > >>    to finish?
> > >> - requires working command submission, so even getting a working
> > >>    display now depends on a lot more extra components working correctly
> > >>
> > >> TODO: MI_UPDATE_GTT might be interesting as an optimization
> > >> though, so perhaps someone should look into always using it
> > >> (assuming the GPU is alive and well)?
> > >>
> > >> v2: Keep using MI_UPDATE_GTT on VM guests
> > >>
> > >> Cc: Paz Zcharya <pazz@chromium.org>
> > >> Cc: Nirmoy Das <nirmoy.das@intel.com>
> > >> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >> ---
> > >>   drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
> > >>   1 file changed, 2 insertions(+), 1 deletion(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > >> index 86f73fe558ca..e83dabc56a14 100644
> > >> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > >> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > >> @@ -24,7 +24,8 @@
> > >>   bool i915_ggtt_require_binder(struct drm_i915_private *i915)
> > >>   {
> > >>   	/* Wa_13010847436 & Wa_14019519902 */
> > >> -	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> > >> +	return i915_run_as_guest() &&
> > >> +		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> > > Note that i915_run_as_guest() is not the most reliable way to decide
> > > whether to use MI_UPDATE_GTT or straight to GSMBASE, as it requires the
> > > hypervisor to "opt-in" and set the X86_FEATURE_HYPERVISOR.
> > > If it's not set - the driver will go into GSMBASE, which is not mapped
> > > inside the guest.
> > > Does the system firmware advertise whether GSMBASE is "open" or "closed"
> > > to CPU access in any way?
> > 
> > Had a chat with David from IVE team, David suggested to read 0x138914 to 
> > determine that.  "GOP needs to qualify the WA by reading GFX MMIO offset 
> > 0x138914 and verify the value there is 0x1." -> as per the HSD-22018444074
> 
> OK, so we can confirm the firmware is on board. I suppose no real harm
> in doing so even though it would clearly be a rather weird if someone
> would ship some ancient firmware that doesn't handle this.
> 
> But that still won't help with the guest side handling because that
> register will read the same in the guest.

I guess we have two options here:
1) ignore non-standard vms that don't advertise themselves
2) try some other heuristics to detect them (eg. host/isa bridge PCI
   IDs/DMI/etc.)

My preference is to just go with option 1, and if someone comes across
a real world use case when the vm is hiding then we can think of some
way to handle it. Trying to come up with heuristics for that without
anything to test against would be 100% guesswork anyway.

-- 
Ville Syrjälä
Intel
