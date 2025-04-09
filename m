Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9221FA81DDD
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 09:06:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2B8E10E7E8;
	Wed,  9 Apr 2025 07:06:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NiKv8Wvd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02EFA10E7E7;
 Wed,  9 Apr 2025 07:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744182359; x=1775718359;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UpUp6JoJWvsj7fV0IWNHwVNCSKVwAB2RT+NzUqjqxjA=;
 b=NiKv8WvdQ4sZrQm7mtJkVYc9W8EolSUCNI4HT4aPksaZFw0G9SL2x8fA
 RWUvPfiB0nSfwWL1Zwj0mlIEvAgEciBrWLMdIQOvD2sKDe8gY1x95o2zQ
 3iAb29z2SFk2XjW42Azr5G8ezJzso9py6ulc5VmQoFjMpPejE6IuyRlhL
 HO8IEb4e5d2ewQtrtn8S+yiWzOUs7EM8+FpmchfMGwb5QLhXeItuxHuST
 fja6ftdDgPH3d967PL4xf2GxlbgwHwJav/Lj5jOjRj+ATw4Sx8+haTprD
 0hDPPHGU4oTjH5Hre4cjKqXnJq/6J8MSjcqouRV2yiDbmYkwG1g8yo6cZ A==;
X-CSE-ConnectionGUID: SN/o1EUHQciibMBeswrQtA==
X-CSE-MsgGUID: HiW/DXIVRgWTsfpnNUamLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45532437"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45532437"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 00:05:39 -0700
X-CSE-ConnectionGUID: bvc1UkM9RMm6MCxZu9vKUA==
X-CSE-MsgGUID: ZKxgu0xoRTiLrmR9Bg6BUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133484518"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 00:05:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH topic/core-for-CI] Revert "libata: Downgrade unsupported
 feature warnings to notifications"
In-Reply-To: <20250408194331.11046-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250408194331.11046-1-lucas.demarchi@intel.com>
Date: Wed, 09 Apr 2025 10:05:33 +0300
Message-ID: <87cydlyfuq.fsf@intel.com>
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

On Tue, 08 Apr 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> This reverts commit 3f412047c54e28ecd50c10bdcec698f166c861e8.
>
> Tentative removal from topic/core-for-CI.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/ata/libata-core.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/ata/libata-core.c b/drivers/ata/libata-core.c
> index 14bed90d83367..773799cfd4430 100644
> --- a/drivers/ata/libata-core.c
> +++ b/drivers/ata/libata-core.c
> @@ -2178,7 +2178,7 @@ static bool ata_identify_page_supported(struct ata_device *dev, u8 page)
>  		 * for drives which implement this ATA level or above.
>  		 */
>  		if (ata_id_major_version(dev->id) >= 10)
> -			ata_dev_notice(dev,
> +			ata_dev_warn(dev,
>  				"ATA Identify Device Log not supported\n");
>  		dev->quirks |= ATA_QUIRK_NO_ID_DEV_LOG;
>  		return false;
> @@ -2249,7 +2249,7 @@ static void ata_dev_config_ncq_send_recv(struct ata_device *dev)
>  	unsigned int err_mask;
>  
>  	if (!ata_log_supported(dev, ATA_LOG_NCQ_SEND_RECV)) {
> -		ata_dev_notice(dev, "NCQ Send/Recv Log not supported\n");
> +		ata_dev_warn(dev, "NCQ Send/Recv Log not supported\n");
>  		return;
>  	}
>  	err_mask = ata_read_log_page(dev, ATA_LOG_NCQ_SEND_RECV,
> @@ -2273,8 +2273,8 @@ static void ata_dev_config_ncq_non_data(struct ata_device *dev)
>  	unsigned int err_mask;
>  
>  	if (!ata_log_supported(dev, ATA_LOG_NCQ_NON_DATA)) {
> -		ata_dev_notice(dev,
> -			       "NCQ Non-Data Log not supported\n");
> +		ata_dev_warn(dev,
> +			     "NCQ Non-Data Log not supported\n");
>  		return;
>  	}
>  	err_mask = ata_read_log_page(dev, ATA_LOG_NCQ_NON_DATA,
> @@ -2937,14 +2937,14 @@ int ata_dev_configure(struct ata_device *dev)
>  		if (ata_id_is_cfa(id)) {
>  			/* CPRM may make this media unusable */
>  			if (id[ATA_ID_CFA_KEY_MGMT] & 1)
> -				ata_dev_notice(dev,
> +				ata_dev_warn(dev,
>  	"supports DRM functions and may not be fully accessible\n");
>  			snprintf(revbuf, 7, "CFA");
>  		} else {
>  			snprintf(revbuf, 7, "ATA-%d", ata_id_major_version(id));
>  			/* Warn the user if the device has TPM extensions */
>  			if (ata_id_has_tpm(id))
> -				ata_dev_notice(dev,
> +				ata_dev_warn(dev,
>  	"supports DRM functions and may not be fully accessible\n");
>  		}
>  
> @@ -3100,8 +3100,8 @@ int ata_dev_configure(struct ata_device *dev)
>  	}
>  
>  	if ((dev->quirks & ATA_QUIRK_FIRMWARE_WARN) && print_info) {
> -		ata_dev_notice(dev, "WARNING: device requires firmware update to be fully functional\n");
> -		ata_dev_notice(dev, "         contact the vendor or visit http://ata.wiki.kernel.org\n");
> +		ata_dev_warn(dev, "WARNING: device requires firmware update to be fully functional\n");
> +		ata_dev_warn(dev, "         contact the vendor or visit http://ata.wiki.kernel.org\n");
>  	}
>  
>  	return 0;

-- 
Jani Nikula, Intel
