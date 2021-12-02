Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFDE465B07
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 01:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED9C6E870;
	Thu,  2 Dec 2021 00:35:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E48A6E870
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 00:35:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236531777"
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="236531777"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 16:35:20 -0800
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="745650985"
Received: from robingo1-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.213.164.45])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 16:35:20 -0800
Date: Wed, 1 Dec 2021 16:35:19 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
Message-ID: <20211202003519.esdmjnfeku5keewp@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211201222404.690285-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <20211201222404.690285-2-madhumitha.tolakanahalli.pradeep@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211201222404.690285-2-madhumitha.tolakanahalli.pradeep@intel.com>
Subject: Re: [Intel-gfx] [v2 1/1] drm/i915/dmc: Update DMC to v2.14 on ADL-P
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

On Wed, Dec 01, 2021 at 02:24:04PM -0800, Madhumitha Tolakanahalli Pradeep wrote:
>Changes since v2.12:
>  - Release notes for v2.13:
>      1. Fix for simple flip queue with DC6v
>  - Release notes for v2.14:
>      1. Fix for flip queue roll over cases with DC6v
>      2. Enhancement for residency
>      3. Workaround for 3Dlut restore issue
>
>v2: Commit message update (Imre)
>
>Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 2dc9d632969d..8617cd1ec9b2 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -45,8 +45,8 @@
>
> #define GEN12_DMC_MAX_FW_SIZE		ICL_DMC_MAX_FW_SIZE
>
>-#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 12)
>-#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
>+#define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 14)
>+#define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 14)
> MODULE_FIRMWARE(ADLP_DMC_PATH);
>
> #define ADLS_DMC_PATH			DMC_PATH(adls, 2, 01)
>-- 
>2.33.1
>
