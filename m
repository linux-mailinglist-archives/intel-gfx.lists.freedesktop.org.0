Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E462B4131
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 11:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64DD589DDD;
	Mon, 16 Nov 2020 10:33:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC69C89DDD
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Nov 2020 10:33:12 +0000 (UTC)
IronPort-SDR: FcUiHqLND7en4nOHbRKuwTu8gFjempzuePO6QA4arcyVFbJC09if0uT4HHLW9EC4Btgj50eD46
 ZROCFf/Iwxfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="234881375"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="234881375"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:33:11 -0800
IronPort-SDR: J2wG9LInMA5o4HhyzG6e6Dfr6bkjHFNrtB5fmhj823WpBgc9N38SzgjAiOQZd5vDYhdEQ+po3V
 lEseUSln8lxQ==
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="475476158"
Received: from joejam1x-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.3.39])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 02:33:10 -0800
MIME-Version: 1.0
In-Reply-To: <20201115210815.5272-7-sean.z.huang@intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
 <20201115210815.5272-7-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160552278752.10586.16763655350466197410@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 16 Nov 2020 12:33:07 +0200
Subject: Re: [Intel-gfx] [PATCH 07/27] drm/i915/pxp: Add PXP-related
 registers into allowlist
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Huang, Sean Z (2020-11-15 23:07:55)
> Add several PXP-related reg into allowlist to allow
> ring3 driver to read the those register values.

The individual registers need to be spelled out and their usage on the
UMD side needs to be documented.

There needs to be a link to the Open Source userspace which requires
these registers.

> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

<SNIP>

> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -12419,4 +12419,12 @@ enum skl_power_gate {
>  #define TGL_ROOT_DEVICE_SKU_ULX                0x2
>  #define TGL_ROOT_DEVICE_SKU_ULT                0x4
>  
> +/* Registers for passlist check */
> +#define PXP_REG_01_LOWERBOUND          _MMIO(0x32260)
> +#define PXP_REG_01_UPPERBOUND          _MMIO(0x32268)
> +#define PXP_REG_02_LOWERBOUND          _MMIO(0x32670)
> +#define PXP_REG_02_UPPERBOUND          _MMIO(0x32678)
> +#define PXP_REG_03_LOWERBOUND          _MMIO(0x32860)
> +#define PXP_REG_03_UPPERBOUND          _MMIO(0x32c7c)

This is not any more informative than embedding magical values in the code.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
