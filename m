Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8326A8BFCCB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 14:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3C39113609;
	Wed,  8 May 2024 12:01:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UvLCVHWM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30451113609
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 12:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715169715; x=1746705715;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1GMXAMBME28AjcT8fvUTLf65HIRzj4KQd4hDC0vgPLw=;
 b=UvLCVHWMEICICJDukqwo1KOpdzH03ALwRsNTc0rZV1AHcZI5Av3gksVQ
 mC6Y3MsH04hSKdrSldEiPX566A//pVKMltPz+q5QwPgqUhXTY4DaFkik2
 bfyNWzG8wA/7xZwgVkFsEw3brKee+iBdlXAIy9E/u3+/+mTXhM7GoZ4dD
 NqaRzdEtW+cFC0YPe8p+tBz0qer2A7x0IpUfVPmO2vTjpksGODqtL831z
 /d+JarovcIgriTmzv+rugL5H7QdaN4chEieqqzqBQpPYP6FmAWgiYSN9g
 ABLbAdbKvTRmvSoapegVwRY4r7rJxs+h5AKtemNkJAgAhjdjDYIIVq48a g==;
X-CSE-ConnectionGUID: m/4sQLwNQGiHz9wKUL2DKQ==
X-CSE-MsgGUID: TvZZef5jQUuh7b6/yt7KcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="10959786"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="10959786"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 05:01:54 -0700
X-CSE-ConnectionGUID: qtq7JvQ0RrGfA4cN+3Uahg==
X-CSE-MsgGUID: tOCdVGzJT1+no3pQZeNPXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28800988"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 08 May 2024 05:01:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 May 2024 15:01:50 +0300
Date: Wed, 8 May 2024 15:01:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/5] drm/i915: don't include CML PCI IDs in CFL
Message-ID: <ZjtprkZVSQ-o_qch@intel.com>
References: <cover.1715086509.git.jani.nikula@intel.com>
 <bebbdad2decb22f3db29e6bc66746b4a05e1387b.1715086509.git.jani.nikula@intel.com>
 <Zjow5HXrXpg2cuOA@intel.com> <ZjtapMK6kadLqHCN@intel.com>
 <87o79gjznd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o79gjznd.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 08, 2024 at 02:45:10PM +0300, Jani Nikula wrote:
> On Wed, 08 May 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Tue, May 07, 2024 at 09:47:16AM -0400, Rodrigo Vivi wrote:
> >> On Tue, May 07, 2024 at 03:56:48PM +0300, Jani Nikula wrote:
> >> > It's confusing for INTEL_CFL_IDS() to include all CML PCI IDs. Even if
> >> > we treat them the same in a lot of places, CML is a platform of its own,
> >> > and the lists of PCI IDs should not conflate them.
> >> > 
> >> > Cc: Bjorn Helgaas <bhelgaas@google.com>
> >> > Cc: linux-pci@vger.kernel.org
> >> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> > ---
> >> >  arch/x86/kernel/early-quirks.c                      |  1 +
> >> >  drivers/gpu/drm/i915/display/intel_display_device.c |  1 +
> >> >  include/drm/i915_pciids.h                           | 12 +++++++-----
> >> >  3 files changed, 9 insertions(+), 5 deletions(-)
> >> > 
> >> > diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> >> > index 59f4aefc6bc1..2e2d15be4025 100644
> >> > --- a/arch/x86/kernel/early-quirks.c
> >> > +++ b/arch/x86/kernel/early-quirks.c
> >> > @@ -547,6 +547,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
> >> >  	INTEL_BXT_IDS(&gen9_early_ops),
> >> >  	INTEL_KBL_IDS(&gen9_early_ops),
> >> >  	INTEL_CFL_IDS(&gen9_early_ops),
> >> > +	INTEL_CML_IDS(&gen9_early_ops),
> >> >  	INTEL_GLK_IDS(&gen9_early_ops),
> >> >  	INTEL_CNL_IDS(&gen9_early_ops),
> >> >  	INTEL_ICL_11_IDS(&gen11_early_ops),
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> >> > index 56a2e17d7d9e..3aa7d1cdd228 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> >> > @@ -832,6 +832,7 @@ static const struct {
> >> >  	INTEL_GLK_IDS(&glk_display),
> >> >  	INTEL_KBL_IDS(&skl_display),
> >> >  	INTEL_CFL_IDS(&skl_display),
> >> > +	INTEL_CML_IDS(&skl_display),
> >> >  	INTEL_ICL_11_IDS(&icl_display),
> >> >  	INTEL_EHL_IDS(&jsl_ehl_display),
> >> >  	INTEL_JSL_IDS(&jsl_ehl_display),
> >> > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> >> > index 85ce33ad6e26..5f52c504ffde 100644
> >> > --- a/include/drm/i915_pciids.h
> >> > +++ b/include/drm/i915_pciids.h
> >> > @@ -472,6 +472,12 @@
> >> >  	INTEL_VGA_DEVICE(0x9BCA, info), \
> >> >  	INTEL_VGA_DEVICE(0x9BCC, info)
> >> >  
> >> > +#define INTEL_CML_IDS(info) \
> >> > +	INTEL_CML_GT1_IDS(info), \
> >> > +	INTEL_CML_GT2_IDS(info), \
> >> > +	INTEL_CML_U_GT1_IDS(info), \
> >> > +	INTEL_CML_U_GT2_IDS(info)
> >> > +
> >> >  #define INTEL_KBL_IDS(info) \
> >> >  	INTEL_KBL_GT1_IDS(info), \
> >> >  	INTEL_KBL_GT2_IDS(info), \
> >> > @@ -535,11 +541,7 @@
> >> >  	INTEL_WHL_U_GT1_IDS(info), \
> >> >  	INTEL_WHL_U_GT2_IDS(info), \
> >> >  	INTEL_WHL_U_GT3_IDS(info), \
> >> > -	INTEL_AML_CFL_GT2_IDS(info), \
> >> > -	INTEL_CML_GT1_IDS(info), \
> >> > -	INTEL_CML_GT2_IDS(info), \
> >> > -	INTEL_CML_U_GT1_IDS(info), \
> >> > -	INTEL_CML_U_GT2_IDS(info)
> >> > +	INTEL_AML_CFL_GT2_IDS(info)
> >> 
> >> Why only CML and not AML and WHL as well?
> >
> > Why do we even have CML as a separate platform? The only difference 
> > I can see is is that we do allow_read_ctx_timestamp() for CML but
> > not for CFL. Does that even make sense?
> 
> git blame tells me:
> 
> 5f4ae2704d59 ("drm/i915: Identify Cometlake platform")
> dbc7e72897a4 ("drm/i915/gt: Make the CTX_TIMESTAMP readable on !rcs")

Right. That explains why we need it on CML+. But is there some reason
we  can't just do it on CFL as well, even if not strictly necessary?
I would assume that setting FORCE_TO_NONPRIV on an already
non-privileged register should be totally fine.

-- 
Ville Syrjälä
Intel
