Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCD499A1A1
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 12:40:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DEE110EAAA;
	Fri, 11 Oct 2024 10:40:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cm1osQ+3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB5510EAAA
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 10:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728643241; x=1760179241;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bSVf9Y4kolye/0i1K3uE2MhorIeHCiMCsplxrTiJMjA=;
 b=Cm1osQ+3g8sTQYuV+bLwATo7i6XENE/m6GQxqph/WBWRke9cyFYckEMJ
 O93FQqYGqCfYYsFjcPb07Vt6VcfbrkwcqqxmqJ6o8+IogueyWJzH3yoOP
 I+QVwIbAeuumBVq/8alykSHRG/nRL2KS33UVhwmG6zp7nBgTv/Q7GvVus
 fh8cLK3K/e9HGt8laO/ayWn6be6nCBTwRYMn/UgQGDmrNNTPkXzjivcJm
 fQFEkcLuKL9u7V6u2ctVrXatB5j+1UFHsoQ/kTFk6JMb/kzFlBtjMisn+
 XLG3McJh5Nqi8c+ekK6AP2OMkcqv2/cSGwkdBGM5qaDtq9voieTxJiq0C Q==;
X-CSE-ConnectionGUID: q67e+s5kSKCkR8zNesZPtw==
X-CSE-MsgGUID: IBVwKtLHRSKPmO0kiL86Kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="31945018"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="31945018"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:40:40 -0700
X-CSE-ConnectionGUID: K/OdPxYbTxeylfAJSzFqzg==
X-CSE-MsgGUID: cio8sgkIS3aJSDN0F9X6pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77076895"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.178])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:40:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com, Raag Jadav
 <raag.jadav@intel.com>
Subject: Re: [PATCH v2 1/4] drm/i915/pciids: Refactor DG2 PCI IDs into
 workaround ranges
In-Reply-To: <20241011103250.1035316-2-raag.jadav@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241011103250.1035316-1-raag.jadav@intel.com>
 <20241011103250.1035316-2-raag.jadav@intel.com>
Date: Fri, 11 Oct 2024 13:40:31 +0300
Message-ID: <87ldyu6hy8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 11 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> Refactor DG2 PCI IDs into device ranges that will be used in a workaround.

Give the PCI ID ranges a name other than "WA". What are they?

BR,
Jani.

>
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>  include/drm/intel/i915_pciids.h | 34 +++++++++++++++++++++++----------
>  1 file changed, 24 insertions(+), 10 deletions(-)
>
> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
> index 2bf03ebfcf73..82f960f625c7 100644
> --- a/include/drm/intel/i915_pciids.h
> +++ b/include/drm/intel/i915_pciids.h
> @@ -724,37 +724,51 @@
>  	MACRO__(0xA7AB, ## __VA_ARGS__)
>  
>  /* DG2 */
> +#define INTEL_DG2_G10_WA_IDS(MACRO__, ...) \
> +	MACRO__(0x56A0, ## __VA_ARGS__), \
> +	MACRO__(0x56A1, ## __VA_ARGS__), \
> +	MACRO__(0x56A2, ## __VA_ARGS__)
> +
>  #define INTEL_DG2_G10_IDS(MACRO__, ...) \
> +	INTEL_DG2_G10_WA_IDS(MACRO__, ## __VA_ARGS__), \
>  	MACRO__(0x5690, ## __VA_ARGS__), \
>  	MACRO__(0x5691, ## __VA_ARGS__), \
>  	MACRO__(0x5692, ## __VA_ARGS__), \
> -	MACRO__(0x56A0, ## __VA_ARGS__), \
> -	MACRO__(0x56A1, ## __VA_ARGS__), \
> -	MACRO__(0x56A2, ## __VA_ARGS__), \
>  	MACRO__(0x56BE, ## __VA_ARGS__), \
>  	MACRO__(0x56BF, ## __VA_ARGS__)
>  
> +#define INTEL_DG2_G11_WA_IDS(MACRO__, ...) \
> +	MACRO__(0x56A5, ## __VA_ARGS__), \
> +	MACRO__(0x56A6, ## __VA_ARGS__), \
> +	MACRO__(0x56B0, ## __VA_ARGS__), \
> +	MACRO__(0x56B1, ## __VA_ARGS__)
> +
>  #define INTEL_DG2_G11_IDS(MACRO__, ...) \
> +	INTEL_DG2_G11_WA_IDS(MACRO__, ## __VA_ARGS__), \
>  	MACRO__(0x5693, ## __VA_ARGS__), \
>  	MACRO__(0x5694, ## __VA_ARGS__), \
>  	MACRO__(0x5695, ## __VA_ARGS__), \
> -	MACRO__(0x56A5, ## __VA_ARGS__), \
> -	MACRO__(0x56A6, ## __VA_ARGS__), \
> -	MACRO__(0x56B0, ## __VA_ARGS__), \
> -	MACRO__(0x56B1, ## __VA_ARGS__), \
>  	MACRO__(0x56BA, ## __VA_ARGS__), \
>  	MACRO__(0x56BB, ## __VA_ARGS__), \
>  	MACRO__(0x56BC, ## __VA_ARGS__), \
>  	MACRO__(0x56BD, ## __VA_ARGS__)
>  
> -#define INTEL_DG2_G12_IDS(MACRO__, ...) \
> -	MACRO__(0x5696, ## __VA_ARGS__), \
> -	MACRO__(0x5697, ## __VA_ARGS__), \
> +#define INTEL_DG2_G12_WA_IDS(MACRO__, ...) \
>  	MACRO__(0x56A3, ## __VA_ARGS__), \
>  	MACRO__(0x56A4, ## __VA_ARGS__), \
>  	MACRO__(0x56B2, ## __VA_ARGS__), \
>  	MACRO__(0x56B3, ## __VA_ARGS__)
>  
> +#define INTEL_DG2_G12_IDS(MACRO__, ...) \
> +	INTEL_DG2_G11_WA_IDS(MACRO__, ## __VA_ARGS__), \
> +	MACRO__(0x5696, ## __VA_ARGS__), \
> +	MACRO__(0x5697, ## __VA_ARGS__)
> +
> +#define INTEL_DG2_WA_IDS(MACRO__, ...) \
> +	INTEL_DG2_G10_WA_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_DG2_G11_WA_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_DG2_G12_WA_IDS(MACRO__, ## __VA_ARGS__)
> +
>  #define INTEL_DG2_IDS(MACRO__, ...) \
>  	INTEL_DG2_G10_IDS(MACRO__, ## __VA_ARGS__), \
>  	INTEL_DG2_G11_IDS(MACRO__, ## __VA_ARGS__), \

-- 
Jani Nikula, Intel
