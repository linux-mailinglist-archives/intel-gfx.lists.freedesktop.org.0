Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C493AC67F0
	for <lists+intel-gfx@lfdr.de>; Wed, 28 May 2025 12:59:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5369010E5E8;
	Wed, 28 May 2025 10:59:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fKAd9c3U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7312F10E5EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 May 2025 10:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748429987; x=1779965987;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bveXytRulsolwCbYPhB3xd0oheELkjcJBR0Y0MEEnIw=;
 b=fKAd9c3Uy/iwgG+OX6NsioVSp3L3aQobXKwvVrC5SoIj7xy65uPtwKHn
 8O55rbOeCDBW4kgDag4CNGHfHFg8DFtOC0SuxqT6NnNp9m+mS/blA4qfw
 IS05nnc/g7aRCfdeO7AfFlNcahl0YCf2NwYhTIfNFC1vKn8ct5opCmujI
 iiGyzgg+E2NqjEeR9RweMfcfwuL7u5JQRhsh0p82n+Yjs4+e5T/iOVNPc
 KL19dACCqw9ke5vTshjwumjJELCUoYmV+weCNztJW5F2QUnMEl/EDzmGO
 RLAfHNGM7X/opRiD49ltLc75mnYZYA9XDLDJwh7e7CGz30xQDv//Wij/v g==;
X-CSE-ConnectionGUID: nHQkL2x9R9O+rs0puKPhXg==
X-CSE-MsgGUID: WaBHZZjtQTuBbPNKQ2HxYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11446"; a="50375466"
X-IronPort-AV: E=Sophos;i="6.15,320,1739865600"; d="scan'208";a="50375466"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 03:59:47 -0700
X-CSE-ConnectionGUID: +D3UpYjDRi+ABd6x+wBb+Q==
X-CSE-MsgGUID: 4NbTwui6Tg6Q1qdg/O81SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,320,1739865600"; d="scan'208";a="148490114"
Received: from abityuts-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.32])
 by orviesa005.jf.intel.com with SMTP; 28 May 2025 03:59:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 May 2025 13:59:43 +0300
Date: Wed, 28 May 2025 13:59:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/dp: Enable DSC on external DP display if VBT
 allows
Message-ID: <aDbsn22a2u-kWqpi@intel.com>
References: <20250527075906.65542-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250527075906.65542-1-shawn.c.lee@intel.com>
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

On Tue, May 27, 2025 at 07:59:06AM +0000, Lee Shawn C wrote:
> A DSC setting has been available in VBT since version 251, which allows
> users to enable or disable the DSC feature based on their system design.
> With this in mind, DP driver should reference this setting and avoid
> enabling DSC if this value is not allowed.
> 
> Cc: Shankar Uma <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c   |  8 ++++++++
>  drivers/gpu/drm/i915/display/intel_bios.h   |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c     | 12 +++++++++---
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
>  5 files changed, 20 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index ba7b8938b17c..f08dd54fe4d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3548,6 +3548,14 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>  	return false;
>  }
>  
> +bool intel_bios_encoder_ext_display_dsc_disabled(const struct intel_bios_encoder_data *devdata)
> +{
> +	if (!devdata || devdata->display->vbt.version < 251)
> +		return false;
> +
> +	return devdata->child.disable_compression_for_ext_disp;

Windows doesn't actually use that bit, so we probably shouldn't either.

-- 
Ville Syrjälä
Intel
