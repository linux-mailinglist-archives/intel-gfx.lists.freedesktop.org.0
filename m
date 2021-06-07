Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D959439E6D3
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 20:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3304E6E9C7;
	Mon,  7 Jun 2021 18:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B1916E9C7
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jun 2021 18:47:07 +0000 (UTC)
IronPort-SDR: +y1YzFJDuPajyYmUBfhWP2BnbzNsHeLqVJUyz+OkX+WhgEqIuAXHDeUltE23QkiF+kRy4xHeqY
 d4Y7OQX4yG8A==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="185056158"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="185056158"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 11:47:06 -0700
IronPort-SDR: N7XLhy3dBN8KHKH1tcsJzrpo53/ouNG4Q35GvwXtaX2tdskpowXZ224BuI+xnbVGulDBMhvB6l
 tw9b+9zw3ajw==
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="476301008"
Received: from jtvu-desk2.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.254.3.221])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 11:47:06 -0700
Date: Mon, 7 Jun 2021 11:47:04 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <20210607184704.c6dro25mvxupsupi@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210607141216.391305-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210607141216.391305-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2] x86/gpu: add JasperLake to gen11 early
 quirks
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
Cc: intel-gfx@lists.freedesktop.org, mahesh.meena@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 07, 2021 at 07:42:16PM +0530, Tejas Upadhyay wrote:
>Let's reserve JSL stolen memory for graphics.
>
>JasperLake is a gen11 platform which is compatible with
>ICL/EHL changes.
>
>V1:
>    - Added Cc: x86@kernel.org

except you didn't

Lucas De Marchi

>
>Cc: x86@kernel.org
>Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
>---
> arch/x86/kernel/early-quirks.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
>index b553ffe9b985..38837dad46e6 100644
>--- a/arch/x86/kernel/early-quirks.c
>+++ b/arch/x86/kernel/early-quirks.c
>@@ -549,6 +549,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
> 	INTEL_CNL_IDS(&gen9_early_ops),
> 	INTEL_ICL_11_IDS(&gen11_early_ops),
> 	INTEL_EHL_IDS(&gen11_early_ops),
>+	INTEL_JSL_IDS(&gen11_early_ops),
> 	INTEL_TGL_12_IDS(&gen11_early_ops),
> 	INTEL_RKL_IDS(&gen11_early_ops),
> 	INTEL_ADLS_IDS(&gen11_early_ops),
>-- 
>2.31.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
