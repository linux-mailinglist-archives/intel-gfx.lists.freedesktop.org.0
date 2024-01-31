Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CC2843E6D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 12:34:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B41E10E329;
	Wed, 31 Jan 2024 11:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E436310E329
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 11:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706700840; x=1738236840;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+OVMvm8Zy22zuZV4WBzg4w17mAwzyXYF181pcs/q2a8=;
 b=jpuABd/FmclqGbIUpAQnKhaM6z9DgPjgM03CF4nEvDA8dr+JAh2QuFGr
 xzJ9UdGfmeJIBT59diaQ8U2Y4avRaxFcPLF2Wy9pcxDNqS0kzAMHDc3H+
 Ttcujq77bbMbItotnluDVJM2h83zBvYEKFtNNUHstie5NvCj7oYJUln1X
 gAEu2LMfprXC6J64WlIH6AHTPBwfAPMSpmo6KIsnDGyPVRlbohC/TaAAH
 ngBopowrBedizqFJcsc91OypNUKP919zl5iUI0fdoV6pFeJYDiW+JNa6X
 +daLmWS5zF/507nYSkcYH88JwIet6+WQr106hQCN4MxrzfosMuhaAH8PK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="402424528"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="402424528"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 03:33:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="822539678"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="822539678"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 31 Jan 2024 03:33:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 Jan 2024 13:33:54 +0200
Date: Wed, 31 Jan 2024 13:33:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
Subject: Re: Re: [PATCH v3 05/16] drm/i915: Disable the "binder"
Message-ID: <ZbowIktrWqGcFBW3@intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-6-ville.syrjala@linux.intel.com>
 <ux7q2bmbk47rnke6n2qo3dabdx7lxkuwcy5rrauwsyz7v2bthc@p7jgbcz6vs7d>
 <32646e92-e06b-45a4-8d25-185be9c1e4d4@intel.com>
 <ZamwS6sLlEdJRv59@intel.com> <ZbIk9Kwx9f552dyl@intel.com>
 <5vc6jcw5u7ljvmxu4slj7t7jos4mtdwzrqzc3efg2pha7srnao@y3mwhwdmjg3c>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5vc6jcw5u7ljvmxu4slj7t7jos4mtdwzrqzc3efg2pha7srnao@y3mwhwdmjg3c>
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 25, 2024 at 03:59:36PM +0100, Michał Winiarski wrote:
> On Thu, Jan 25, 2024 at 11:08:04AM +0200, Ville Syrjälä wrote:
> > On Fri, Jan 19, 2024 at 01:12:11AM +0200, Ville Syrjälä wrote:
> > > On Wed, Jan 17, 2024 at 06:46:24PM +0100, Nirmoy Das wrote:
> > > > 
> > > > On 1/17/2024 3:13 PM, Michał Winiarski wrote:
> > > > > On Tue, Jan 16, 2024 at 09:56:25AM +0200, Ville Syrjala wrote:
> > > > >> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > >>
> > > > >> Now that the GGTT PTE updates go straight to GSMBASE (bypassing
> > > > >> GTTMMADR) there should be no more risk of system hangs? So the
> > > > >> "binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
> > > > >> necessary, disable it.
> > > > >>
> > > > >> My main worry with the MI_UPDATE_GTT are:
> > > > >> - only used on this one platform so very limited testing coverage
> > > > >> - async so more opprtunities to screw things up
> > > > >> - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
> > > > >>    to finish?
> > > > >> - requires working command submission, so even getting a working
> > > > >>    display now depends on a lot more extra components working correctly
> > > > >>
> > > > >> TODO: MI_UPDATE_GTT might be interesting as an optimization
> > > > >> though, so perhaps someone should look into always using it
> > > > >> (assuming the GPU is alive and well)?
> > > > >>
> > > > >> v2: Keep using MI_UPDATE_GTT on VM guests
> > > > >>
> > > > >> Cc: Paz Zcharya <pazz@chromium.org>
> > > > >> Cc: Nirmoy Das <nirmoy.das@intel.com>
> > > > >> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > >> ---
> > > > >>   drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
> > > > >>   1 file changed, 2 insertions(+), 1 deletion(-)
> > > > >>
> > > > >> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > > >> index 86f73fe558ca..e83dabc56a14 100644
> > > > >> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > > >> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> > > > >> @@ -24,7 +24,8 @@
> > > > >>   bool i915_ggtt_require_binder(struct drm_i915_private *i915)
> > > > >>   {
> > > > >>   	/* Wa_13010847436 & Wa_14019519902 */
> > > > >> -	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> > > > >> +	return i915_run_as_guest() &&
> > > > >> +		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> > > > > Note that i915_run_as_guest() is not the most reliable way to decide
> > > > > whether to use MI_UPDATE_GTT or straight to GSMBASE, as it requires the
> > > > > hypervisor to "opt-in" and set the X86_FEATURE_HYPERVISOR.
> > > > > If it's not set - the driver will go into GSMBASE, which is not mapped
> > > > > inside the guest.
> > > > > Does the system firmware advertise whether GSMBASE is "open" or "closed"
> > > > > to CPU access in any way?
> > > > 
> > > > Had a chat with David from IVE team, David suggested to read 0x138914 to 
> > > > determine that.  "GOP needs to qualify the WA by reading GFX MMIO offset 
> > > > 0x138914 and verify the value there is 0x1." -> as per the HSD-22018444074
> > > 
> > > OK, so we can confirm the firmware is on board. I suppose no real harm
> > > in doing so even though it would clearly be a rather weird if someone
> > > would ship some ancient firmware that doesn't handle this.
> > > 
> > > But that still won't help with the guest side handling because that
> > > register will read the same in the guest.
> > 
> > I guess we have two options here:
> > 1) ignore non-standard vms that don't advertise themselves
> > 2) try some other heuristics to detect them (eg. host/isa bridge PCI
> >    IDs/DMI/etc.)
> > 
> > My preference is to just go with option 1, and if someone comes across
> > a real world use case when the vm is hiding then we can think of some
> > way to handle it. Trying to come up with heuristics for that without
> > anything to test against would be 100% guesswork anyway.
> > 
> > -- 
> > Ville Syrjälä
> > Intel
> 
> Option 1 can work, but there is a heuristic that should work for most
> cases.
> If we can assume that on bare-metal, e820 memory map excludes the stolen
> region (it's marked as reserved), we should be able to do something that
> looks roughly like this (warning - not tested, just a pseudo-code):
> 
> static int is_reserved(struct resource *res, void *arg)
> {
> 	return 1;
> }
> 
> static bool _stolen_is_reserved(u64 addr)
> {
> 	int ret;
> 
> 	ret = walk_iomem_res_desc(IORES_DESC_RESERVED, IORESOURCE_MEM,
> 				  gsm, gsm + gsm_size, NULL, is_reserved)
> 	if (ret != 1)
> 		return false;
> 
> 	return true;
> }
> 
> if (i915_run_as_guest() || !_stolen_is_reserved(gsm, gsm_size))
> 	fallback_to_mi_ggtt()
> 
> Similar sanity check for stolen being reserved should probably also be
> done in the regular stolen init path - currently we're creating a
> resource named "Graphics Stolen Memory" somewhere in the middle of
> System RAM when i915 runs inside VM with native device passthrough.

You mean request_smem_stolen()? We skip that on LMEMBAR platforms.
And we now rely on the early quirk to figure out the DSM base/size.
People didn't want to keep doing that so now I suppose we're just
relying on the BIOS to do its job right.

So if we wanted to use that we'd need to redesign it to also
work for the LMEMBAR platforms without the early quirk, and
it might also make sense to do something similar for GSM for
extra belts and suspenders.

Anyways, I guess that's a bit beside the point, and just checking
to make sure both DSM and GSM are marked as reserved could be used
to detect that we need to take the normal path instead of the
direct stolen access path. That's assuming VMs don't mark that
range as reserved, which I guess they don't based on what you're
saying?

-- 
Ville Syrjälä
Intel
