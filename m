Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE687C01C2
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 18:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3A1F10E3AC;
	Tue, 10 Oct 2023 16:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9859710E3AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 16:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696955736; x=1728491736;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uiSea6+qDG6plTf35siSSzRAYITG6NUB7haIYKYppJs=;
 b=DTyd/J3ruGlDetPXSqIseiQXGKzZ/OYOT4fdxSZl2usD2PaNkFj9D1xN
 QMBS1acTZ+jeQFZoyWQTup6a93ughw4T9BPRMiq1I3PIP7s6ZR86viI9f
 KQarypoKgC3Ik5UholZ60ch6hnywNj74LFjZG01ZbcsEF0jhTZjjSYHSy
 Z1cULYgYsvLkEiIhlLVyWV9wm/wxsirNZELCyoOfZPNv4T9hpM8M1Jse3
 J8kk++tUHmNEQOEsolMKZ512hCXP+jyoX6JI6Soek06ypqp/NYDZfrD6j
 zzERXIGGVxSLWPCtM3IHtbc6oJI73NXP0qP+E67CX3xjAoQZsAZAM0gKD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="448637834"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="448637834"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:17:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="757173618"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="757173618"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga007.fm.intel.com with SMTP; 10 Oct 2023 09:17:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Oct 2023 19:17:20 +0300
Date: Tue, 10 Oct 2023 19:17:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZSV5EDUwkM9UoRSU@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 00/19] drm/i915: Store DSC DPCD capabilities
 in the connector
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 06, 2023 at 04:37:08PM +0300, Imre Deak wrote:
> This patchset moves the DSC DPCD capabilities from the encoder
> (intel_dp) to the connector. This is required since in an MST topology
> each connector has its own version of these capabilities, allowing
> to configure/enable the DSC decompression for each stream separately.
> 
> The changes are needed for a follow-up patchset, fixing the MST DSC
> functionality, making it also possible to enable the BW management on
> MST links. The follow-up changes are based on patches 12-25 in
> 
> https://lore.kernel.org/all/20230914192659.757475-1-imre.deak@intel.com
> 
> Imre Deak (19):
>   drm/i915/dp: Sanitize DPCD revision check in
>     intel_dp_get_dsc_sink_cap()
>   drm/i915/dp: Store DSC DPCD capabilities in the connector
>   drm/i915/dp_mst: Set connector DSC capabilities and decompression AUX
>   drm/i915/dp: Use i915/intel connector local variables in
>     i915_dsc_fec_support_show()
>   drm/i915/dp: Use connector DSC DPCD in i915_dsc_fec_support_show()
>   drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_max_bpp()
>   drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_fec()
>   drm/i915/dp: Use connector DSC DPCD in intel_dp_supports_dsc()
>   drm/i915/dp: Use connector DSC DPCD in
>     intel_dp_dsc_max_sink_compressed_bppx16()
>   drm/i915/dp: Pass connector DSC DPCD to
>     drm_dp_dsc_sink_supported_input_bpcs()
>   drm/i915/dp: Pass only the required i915 to
>     intel_dp_source_dsc_version_minor()
>   drm/i915/dp: Pass only the required DSC DPCD to
>     intel_dp_sink_dsc_version_minor()
>   drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_params()
>   drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_supports_format()
>   drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_get_slice_count()
>   drm/i915/dp: Use connector DSC DPCD in intel_dp_mode_valid()
>   drm/i915/dp: Use connector DSC DPCD in intel_dp_dsc_compute_config()
>   drm/i915/dp_mst: Use connector DSC DPCD in
>     intel_dp_mst_mode_valid_ctx()
>   drm/i915/dp: Remove unused DSC caps from intel_dp

Looks reasonable to me. The one open question I have is how the DSC/FEC
capabilities get discovered in the MST topology, but I presume that'll
happen in some followup series.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  .../drm/i915/display/intel_display_debugfs.c  |  22 +--
>  .../drm/i915/display/intel_display_types.h    |   8 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 154 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dp.h       |   8 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  35 +++-
>  5 files changed, 136 insertions(+), 91 deletions(-)
> 
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
