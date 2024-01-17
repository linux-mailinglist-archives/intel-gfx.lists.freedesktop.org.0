Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDDF83047C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 12:25:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C1E110E10D;
	Wed, 17 Jan 2024 11:25:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964A010E10D
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 11:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705490725; x=1737026725;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fmF2DalzvJ9jup3wJTEWIFkNVK8ANYxmdELd503NMk4=;
 b=GNaCwvkKhuMncqN0d1iFDzgyl5AeeWUD+84oRZsxgqj+6uR4ouJW8pcp
 u4YzCcnwDYpRtcDUbP6pIDibnaWR18l+2f+yi0uNT3gdT6hamcmGpLLW8
 R8WMZKymb8WikNG4ZvPurIGEUM8DnRVyZ+mgape9iC4YgKmVFn7aDOuGd
 /wvo4RhdHfa+EOUsqkN/KrTsdToyZmVezOfO9ooc/qgyD+BoiOj+kVibI
 0tedmDJXRI/ZInxxyuJlszSWDgBNT8fT/qk+QwqJsNzDqVQUnkpfdzQqX
 JCg5FRt//wnc71CP0xZyxSBuws9cC98HAkUhi0Doy8VEC+jKzkOxgw5Wp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="397301415"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="397301415"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 03:25:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="777426168"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="777426168"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Jan 2024 03:25:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Jan 2024 13:25:21 +0200
Date: Wed, 17 Jan 2024 13:25:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 6/6] drm/i915/opregion: make struct intel_opregion opaque
Message-ID: <Zae5IdwKzof84ae-@intel.com>
References: <cover.1704992868.git.jani.nikula@intel.com>
 <3b68d7ff4b2930eaf15d9657618a738b9065f64b.1704992868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3b68d7ff4b2930eaf15d9657618a738b9065f64b.1704992868.git.jani.nikula@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 11, 2024 at 07:21:19PM +0200, Jani Nikula wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 26aacb01f9ec..3f5a20f9153e 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -250,11 +250,37 @@ struct opregion_asle_ext {
>  
>  #define MAX_DSLP	1500
>  
> +#define OPREGION_SIZE	(8 * 1024)
> +
> +struct intel_opregion {
> +	struct drm_i915_private *i915;
> +
> +	struct opregion_header *header;
> +	struct opregion_acpi *acpi;
> +	struct opregion_swsci *swsci;
> +	u32 swsci_gbda_sub_functions;
> +	u32 swsci_sbcb_sub_functions;
> +	struct opregion_asle *asle;
> +	struct opregion_asle_ext *asle_ext;
> +	void *rvda;
> +	void *vbt_firmware;
> +	const void *vbt;
> +	u32 vbt_size;
> +	u32 *lid_state;

lid_state is unused btw. Someone should throw a nuke at it.

> +	struct work_struct asle_work;
> +	struct notifier_block acpi_notifier;
> +};
> +

-- 
Ville Syrjälä
Intel
