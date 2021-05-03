Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 645B93722A4
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 23:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011C66E182;
	Mon,  3 May 2021 21:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E334F6E182
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 21:46:00 +0000 (UTC)
IronPort-SDR: RwILuaz5K4gy2wqyPGlimZJkSLCCkbQngGcYyusFixre+o5PpVBX/th02eSt8+xF/Q/G4UC37M
 4uI8U8r8rzEA==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="197935014"
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="197935014"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 14:45:59 -0700
IronPort-SDR: bnX59zvrvY8fdKkDlMphXtMLAUnEPToRid2TOdIiwzq49I3EbuXo5PYPeucXM0kZXLpAAWYTaH
 VpB+s0G/v8xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="462799191"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 03 May 2021 14:45:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 3 May 2021 14:45:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 3 May 2021 14:45:57 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Mon, 3 May 2021 14:45:57 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/csr: s/DRM_ERROR/drm_err
Thread-Index: AQHXPHNGPvdWB9iCh0CSr3A5U5pG8arSicyA///IKaA=
Date: Mon, 3 May 2021 21:45:57 +0000
Message-ID: <c2d1d206ff414fd9a7a258e0756ca8af@intel.com>
References: <20210428211249.11037-1-anusha.srivatsa@intel.com>
 <20210428211249.11037-2-anusha.srivatsa@intel.com> <87o8drzoc6.fsf@intel.com>
In-Reply-To: <87o8drzoc6.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/csr: s/DRM_ERROR/drm_err
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, May 3, 2021 11:04 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/csr: s/DRM_ERROR/drm_err
> 
> On Wed, 28 Apr 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > Use new format of debug messages across intel_csr.
> >
> > While at it, change some function definitions which now need dev_priv
> > for drm_err and drm_info etc.
> >
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Suggested-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_csr.c | 44
> > +++++++++++++-----------
> >  1 file changed, 23 insertions(+), 21 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_csr.c
> > b/drivers/gpu/drm/i915/display/intel_csr.c
> > index 26a922d34263..bf60c3ffdf5d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_csr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_csr.c
> > @@ -392,10 +392,11 @@ static u32 find_dmc_fw_offset(const struct
> intel_fw_info *fw_info,
> >  	return dmc_offset;
> >  }
> >
> > -static u32 parse_csr_fw_dmc(struct intel_csr *csr,
> > +static u32 parse_csr_fw_dmc(struct drm_i915_private *dev_priv,
> 
> All new struct drm_i915_private * should be named i915, not dev_priv.

I will change it.
> 
> >  			    const struct intel_dmc_header_base
> *dmc_header,
> >  			    size_t rem_size)
> >  {
> > +	struct intel_csr *csr = &dev_priv->csr;
> 
> You could also use container_of() to get from the csr to the i915 pointer. No
> need to add or change params.

Makes sense.  I will add the changes in the next version.

> >  	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
> >  	const u32 *mmioaddr, *mmiodata;
> >  	u32 mmio_count, mmio_count_max;
> > @@ -440,27 +441,27 @@ static u32 parse_csr_fw_dmc(struct intel_csr *csr,
> >  		header_len_bytes = dmc_header->header_len;
> >  		dmc_header_size = sizeof(*v1);
> >  	} else {
> > -		DRM_ERROR("Unknown DMC fw header version: %u\n",
> > +		drm_err(&dev_priv->drm, "Unknown DMC fw header
> version: %u\n",
> >  			  dmc_header->header_ver);
> 
> Please fix indentation. Same for all changes below.

I will take a look at the indentation.

Thanks,
Anusha
> >  		return 0;
> >  	}
> >
> >  	if (header_len_bytes != dmc_header_size) {
> > -		DRM_ERROR("DMC firmware has wrong dmc header length "
> > +		drm_err(&dev_priv->drm, "DMC firmware has wrong dmc
> header length "
> >  			  "(%u bytes)\n", header_len_bytes);
> >  		return 0;
> >  	}
> >
> >  	/* Cache the dmc header info. */
> >  	if (mmio_count > mmio_count_max) {
> > -		DRM_ERROR("DMC firmware has wrong mmio count %u\n",
> mmio_count);
> > +		drm_err(&dev_priv->drm, "DMC firmware has wrong mmio
> count %u\n",
> > +mmio_count);
> >  		return 0;
> >  	}
> >
> >  	for (i = 0; i < mmio_count; i++) {
> >  		if (mmioaddr[i] < CSR_MMIO_START_RANGE ||
> >  		    mmioaddr[i] > CSR_MMIO_END_RANGE) {
> > -			DRM_ERROR("DMC firmware has wrong mmio
> address 0x%x\n",
> > +			drm_err(&dev_priv->drm, "DMC firmware has wrong
> mmio address
> > +0x%x\n",
> >  				  mmioaddr[i]);
> >  			return 0;
> >  		}
> > @@ -477,14 +478,14 @@ static u32 parse_csr_fw_dmc(struct intel_csr *csr,
> >  		goto error_truncated;
> >
> >  	if (payload_size > csr->max_fw_size) {
> > -		DRM_ERROR("DMC FW too big (%u bytes)\n", payload_size);
> > +		drm_err(&dev_priv->drm, "DMC FW too big (%u bytes)\n",
> > +payload_size);
> >  		return 0;
> >  	}
> >  	csr->dmc_fw_size = dmc_header->fw_size;
> >
> >  	csr->dmc_payload = kmalloc(payload_size, GFP_KERNEL);
> >  	if (!csr->dmc_payload) {
> > -		DRM_ERROR("Memory allocation failed for dmc payload\n");
> > +		drm_err(&dev_priv->drm, "Memory allocation failed for dmc
> > +payload\n");
> >  		return 0;
> >  	}
> >
> > @@ -494,12 +495,12 @@ static u32 parse_csr_fw_dmc(struct intel_csr *csr,
> >  	return header_len_bytes + payload_size;
> >
> >  error_truncated:
> > -	DRM_ERROR("Truncated DMC firmware, refusing.\n");
> > +	drm_err(&dev_priv->drm, "Truncated DMC firmware, refusing.\n");
> >  	return 0;
> >  }
> >
> >  static u32
> > -parse_csr_fw_package(struct intel_csr *csr,
> > +parse_csr_fw_package(struct drm_i915_private *dev_priv,
> >  		     const struct intel_package_header *package_header,
> >  		     const struct stepping_info *si,
> >  		     size_t rem_size)
> > @@ -516,7 +517,7 @@ parse_csr_fw_package(struct intel_csr *csr,
> >  	} else if (package_header->header_ver == 2) {
> >  		max_entries = PACKAGE_V2_MAX_FW_INFO_ENTRIES;
> >  	} else {
> > -		DRM_ERROR("DMC firmware has unknown header version
> %u\n",
> > +		drm_err(&dev_priv->drm, "DMC firmware has unknown
> header version
> > +%u\n",
> >  			  package_header->header_ver);
> >  		return 0;
> >  	}
> > @@ -530,7 +531,7 @@ parse_csr_fw_package(struct intel_csr *csr,
> >  		goto error_truncated;
> >
> >  	if (package_header->header_len * 4 != package_size) {
> > -		DRM_ERROR("DMC firmware has wrong package header
> length "
> > +		drm_err(&dev_priv->drm, "DMC firmware has wrong
> package header length "
> >  			  "(%u bytes)\n", package_size);
> >  		return 0;
> >  	}
> > @@ -544,7 +545,7 @@ parse_csr_fw_package(struct intel_csr *csr,
> >  	dmc_offset = find_dmc_fw_offset(fw_info, num_entries, si,
> >  					package_header->header_ver);
> >  	if (dmc_offset == CSR_DEFAULT_FW_OFFSET) {
> > -		DRM_ERROR("DMC firmware not supported for %c
> stepping\n",
> > +		drm_err(&dev_priv->drm, "DMC firmware not supported for
> %c
> > +stepping\n",
> >  			  si->stepping);
> >  		return 0;
> >  	}
> > @@ -553,23 +554,25 @@ parse_csr_fw_package(struct intel_csr *csr,
> >  	return package_size + dmc_offset * 4;
> >
> >  error_truncated:
> > -	DRM_ERROR("Truncated DMC firmware, refusing.\n");
> > +	drm_err(&dev_priv->drm, "Truncated DMC firmware, refusing.\n");
> >  	return 0;
> >  }
> >
> >  /* Return number of bytes parsed or 0 on error */ -static u32
> > parse_csr_fw_css(struct intel_csr *csr,
> > +static u32 parse_csr_fw_css(struct drm_i915_private *dev_priv,
> >  			    struct intel_css_header *css_header,
> >  			    size_t rem_size)
> >  {
> > +	struct intel_csr *csr = &dev_priv->csr;
> > +
> >  	if (rem_size < sizeof(struct intel_css_header)) {
> > -		DRM_ERROR("Truncated DMC firmware, refusing.\n");
> > +		drm_err(&dev_priv->drm, "Truncated DMC firmware,
> refusing.\n");
> >  		return 0;
> >  	}
> >
> >  	if (sizeof(struct intel_css_header) !=
> >  	    (css_header->header_len * 4)) {
> > -		DRM_ERROR("DMC firmware has wrong CSS header length "
> > +		drm_err(&dev_priv->drm, "DMC firmware has wrong CSS
> header length "
> >  			  "(%u bytes)\n",
> >  			  (css_header->header_len * 4));
> >  		return 0;
> > @@ -577,7 +580,7 @@ static u32 parse_csr_fw_css(struct intel_csr *csr,
> >
> >  	if (csr->required_version &&
> >  	    css_header->version != csr->required_version) {
> > -		DRM_INFO("Refusing to load DMC firmware v%u.%u,"
> > +		drm_info(&dev_priv->drm, "Refusing to load DMC firmware
> v%u.%u,"
> >  			 " please use v%u.%u\n",
> >  			 CSR_VERSION_MAJOR(css_header->version),
> >  			 CSR_VERSION_MINOR(css_header->version),
> > @@ -597,7 +600,6 @@ static void parse_csr_fw(struct drm_i915_private
> *dev_priv,
> >  	struct intel_css_header *css_header;
> >  	struct intel_package_header *package_header;
> >  	struct intel_dmc_header_base *dmc_header;
> > -	struct intel_csr *csr = &dev_priv->csr;
> >  	const struct stepping_info *si = intel_get_stepping_info(dev_priv);
> >  	u32 readcount = 0;
> >  	u32 r;
> > @@ -607,7 +609,7 @@ static void parse_csr_fw(struct drm_i915_private
> > *dev_priv,
> >
> >  	/* Extract CSS Header information */
> >  	css_header = (struct intel_css_header *)fw->data;
> > -	r = parse_csr_fw_css(csr, css_header, fw->size);
> > +	r = parse_csr_fw_css(dev_priv, css_header, fw->size);
> >  	if (!r)
> >  		return;
> >
> > @@ -615,7 +617,7 @@ static void parse_csr_fw(struct drm_i915_private
> > *dev_priv,
> >
> >  	/* Extract Package Header information */
> >  	package_header = (struct intel_package_header *)&fw-
> >data[readcount];
> > -	r = parse_csr_fw_package(csr, package_header, si, fw->size -
> readcount);
> > +	r = parse_csr_fw_package(dev_priv, package_header, si, fw->size -
> > +readcount);
> >  	if (!r)
> >  		return;
> >
> > @@ -623,7 +625,7 @@ static void parse_csr_fw(struct drm_i915_private
> > *dev_priv,
> >
> >  	/* Extract dmc_header information */
> >  	dmc_header = (struct intel_dmc_header_base *)&fw-
> >data[readcount];
> > -	parse_csr_fw_dmc(csr, dmc_header, fw->size - readcount);
> > +	parse_csr_fw_dmc(dev_priv, dmc_header, fw->size - readcount);
> >  }
> >
> >  static void intel_csr_runtime_pm_get(struct drm_i915_private
> > *dev_priv)
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
