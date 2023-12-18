Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3859C8179E1
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:43:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B6B10E2BB;
	Mon, 18 Dec 2023 18:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4877E10E2A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702924991; x=1734460991;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=JNd5SIZwxlIPPuD5RUL3T68cpt/ykJK7tEP2du3WLEQ=;
 b=bSskmvOgxm16TdUg11RvdKiz2CW9P5IG+O0wUhc+ssLDnr2xEQDBru+j
 1Rs51Sf9CRdYPjK4p+kxENsNEs8745vOaFO9/eKm/1+hy09CX+OX6Ga0r
 3hA6BgvYP/caT3YkLKdErfYH6LHpS7MlSpY7g+Lo+1RotB1LBWy8aF1Mv
 /uxvzBEHI1XlCrpCOot6kQv0uXHA5v2FZPfBLddUBUfgkbmJSv+cY28tp
 p1wUcN1a7zjTXmNdgNcqL+MT/T2C/u0YHaCRuSpq72DPj4sX0uruOpjU1
 Cl1WN5ygzDQ7BPwJpPM7tnc3tnk9rmBf+4812JrO2AW7A0nG2TmHP4She A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17074734"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="17074734"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 06:57:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="809866223"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="809866223"
Received: from janlundk-mobl.ger.corp.intel.com (HELO [10.249.254.171])
 ([10.249.254.171])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 06:57:17 -0800
Message-ID: <9ab982c2-f278-e54d-09b4-e6738c443dce@linux.intel.com>
Date: Mon, 18 Dec 2023 15:57:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] drm/xe: Fix build without CONFIG_FAULT_INJECTION
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231218143023.1688831-1-rodrigo.vivi@intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20231218143023.1688831-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/18/23 15:30, Rodrigo Vivi wrote:
> Ideally this header could be included without the CONFIG_FAULT_INJECTION
> and it would take care itself for the includes it needs.
> So, let's temporary workaround this by moving this below and including
> only when CONFIG_FAULT_INJECTION is selected to avoid build breakages.
>
> Another solution would be us including the linux/types.h as well, but
> this creates unnecessary cases.
>
> Reference: https://lore.kernel.org/all/20230816134748.979231-1-himal.prasad.ghimiray@intel.com/
> Cc: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> Cc: Oded Gabbay <ogabbay@kernel.org>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
LGTM.

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

> ---
>   drivers/gpu/drm/xe/xe_debugfs.c | 2 +-
>   drivers/gpu/drm/xe/xe_gt.h      | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/xe_debugfs.c b/drivers/gpu/drm/xe/xe_debugfs.c
> index f1e80be8b9306..c56fd7d59f057 100644
> --- a/drivers/gpu/drm/xe/xe_debugfs.c
> +++ b/drivers/gpu/drm/xe/xe_debugfs.c
> @@ -5,7 +5,6 @@
>   
>   #include "xe_debugfs.h"
>   
> -#include <linux/fault-inject.h>
>   #include <linux/string_helpers.h>
>   
>   #include <drm/drm_debugfs.h>
> @@ -22,6 +21,7 @@
>   #endif
>   
>   #ifdef CONFIG_FAULT_INJECTION
> +#include <linux/fault-inject.h> /* XXX: fault-inject.h is broken */
>   DECLARE_FAULT_ATTR(gt_reset_failure);
>   #endif
>   
> diff --git a/drivers/gpu/drm/xe/xe_gt.h b/drivers/gpu/drm/xe/xe_gt.h
> index f3c780bd266dd..4486e083f5eff 100644
> --- a/drivers/gpu/drm/xe/xe_gt.h
> +++ b/drivers/gpu/drm/xe/xe_gt.h
> @@ -7,7 +7,6 @@
>   #define _XE_GT_H_
>   
>   #include <drm/drm_util.h>
> -#include <linux/fault-inject.h>
>   
>   #include "xe_device_types.h"
>   #include "xe_hw_engine.h"
> @@ -20,6 +19,7 @@
>   #define CCS_MASK(gt) (((gt)->info.engine_mask & XE_HW_ENGINE_CCS_MASK) >> XE_HW_ENGINE_CCS0)
>   
>   #ifdef CONFIG_FAULT_INJECTION
> +#include <linux/fault-inject.h> /* XXX: fault-inject.h is broken */
>   extern struct fault_attr gt_reset_failure;
>   static inline bool xe_fault_inject_gt_reset(void)
>   {
