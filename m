Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB8C9AE268
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F25D10E8EE;
	Thu, 24 Oct 2024 10:22:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mk+oeYuR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4F5010E8EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729765374; x=1761301374;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=C0na7BW6kCz6BOr18zHkuy0bZnOTA97IcrruA8JtYoY=;
 b=mk+oeYuRdhrePhHa2AkIcXILoCmrxuftiAI2eRyz5WNVfeziEOd3LExQ
 XAUfKDyFwjKB/7xPEdYMT79zaD8fXw6swL+OyQVGuPapq2btIe4Kyf0AK
 09vzKrEa7A9ul/O+VDAQ1pd62wACv3u/avASNRIDUtiedotzn67PBNpd8
 7CMbR0t/MGtHg57v40ROidTZJbrW+XFykZcR1k9ABghCX9BC539S+enHN
 uinEh/AhmUzN50cGNEJkVp8ZmCbdSL0375QJ0IRBXOTo2mRy1NPxz1/3B
 1bSEbhQHoWWQEAO3BGozJGeAvaib/ENYNULRoE3ks5+d34cNyZc9/OI/U w==;
X-CSE-ConnectionGUID: tFW9/SFjQG2TAZPqp1mZfQ==
X-CSE-MsgGUID: R8J/jrAnSeCWMrVlt1pxfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="46877755"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="46877755"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:22:53 -0700
X-CSE-ConnectionGUID: PRVBMROoTfytyCkd/WbBrw==
X-CSE-MsgGUID: 3HpW/I7aRvyPqUhG3RZvVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="103868607"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.151])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:22:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH topic/core-for-CI 1/2] Revert "HAX suspend: Disable
 S3/S4 for fi-bdw-samus"
In-Reply-To: <20241023211834.3370346-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241023211834.3370346-1-lucas.demarchi@intel.com>
Date: Thu, 24 Oct 2024 13:22:48 +0300
Message-ID: <87ttd1ssuf.fsf@intel.com>
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

On Wed, 23 Oct 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> This reverts commit efeb42fe3b7c58abbe674515252cfdb71c09eba5.
>
> That machine is not in CI anymore, let's drop the hack.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/acpi/sleep.c | 20 --------------------
>  1 file changed, 20 deletions(-)
>
> diff --git a/drivers/acpi/sleep.c b/drivers/acpi/sleep.c
> index 4272cbc71ae89..c8ee8e42b0f64 100644
> --- a/drivers/acpi/sleep.c
> +++ b/drivers/acpi/sleep.c
> @@ -84,16 +84,11 @@ static int acpi_sleep_prepare(u32 acpi_state)
>  	return 0;
>  }
>  
> -static u8 max_sleep_state = -1;
> -
>  bool acpi_sleep_state_supported(u8 sleep_state)
>  {
>  	acpi_status status;
>  	u8 type_a, type_b;
>  
> -	if (sleep_state > max_sleep_state)
> -		return false;
> -
>  	status = acpi_get_sleep_type_data(sleep_state, &type_a, &type_b);
>  	return ACPI_SUCCESS(status) && (!acpi_gbl_reduced_hardware
>  		|| (acpi_gbl_FADT.sleep_control.address
> @@ -170,13 +165,6 @@ static int __init init_nvs_nosave(const struct dmi_system_id *d)
>  	return 0;
>  }
>  
> -static int __init init_nosleep(const struct dmi_system_id *d)
> -{
> -	pr_info("Disabling ACPI suspend\n");
> -	max_sleep_state = 0;
> -	return 0;
> -}
> -
>  bool acpi_sleep_default_s3;
>  
>  static int __init init_default_s3(const struct dmi_system_id *d)
> @@ -411,14 +399,6 @@ static const struct dmi_system_id acpisleep_dmi_table[] __initconst = {
>  		DMI_MATCH(DMI_PRODUCT_NAME, "20GGA00L00"),
>  		},
>  	},
> -	{
> -	.callback = init_nosleep,
> -	.ident = "samus",
> -	.matches = {
> -		DMI_MATCH(DMI_SYS_VENDOR, "GOOGLE"),
> -		DMI_MATCH(DMI_PRODUCT_NAME, "Samus"),
> -		},
> -	},
>  	{},
>  };

-- 
Jani Nikula, Intel
