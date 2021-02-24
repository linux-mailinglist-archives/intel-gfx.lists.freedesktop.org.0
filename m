Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EA932356E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 02:47:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE27C89DBC;
	Wed, 24 Feb 2021 01:47:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2404489DBC
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 01:47:17 +0000 (UTC)
IronPort-SDR: P/8YoyUC9czOyztokIRauLisIpE3KZnDH94ra1/9vGyB/RhhH3fqpimQURMw2AWgHIzNIlbCf3
 9ZLsh8Z4kWVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="182536534"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="182536534"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 17:47:16 -0800
IronPort-SDR: cQQs6Gn65ta+A+1c4z/4Y/SZpXThvXGGyXT2je/F2XCfIrPJnbhuwHJuVhyPE4OJy3EyrWFizk
 XN+Fv1kBilxA==
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; d="scan'208";a="366801848"
Received: from mdweiler-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.95.214])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 17:47:16 -0800
Date: Tue, 23 Feb 2021 17:47:16 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210224014716.qp4kg6fgmbketosr@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <cover.1614094093.git.jani.nikula@intel.com>
 <7fcf7557fc3c3829dac04637c12fea7c58951da2.1614094093.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7fcf7557fc3c3829dac04637c12fea7c58951da2.1614094093.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915: remove unused ADLS_REVID_*
 macros
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 23, 2021 at 05:35:06PM +0200, Jani Nikula wrote:
>It's the adls_revid_step_tbl array indexes that matter.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
>---
> drivers/gpu/drm/i915/i915_drv.h | 6 ------
> 1 file changed, 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index f8413b3b9da8..4b457a3c658f 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1587,12 +1587,6 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
> #define IS_DG1_REVID(p, since, until) \
> 	(IS_DG1(p) && IS_REVID(p, since, until))
>
>-#define ADLS_REVID_A0		0x0
>-#define ADLS_REVID_A2		0x1
>-#define ADLS_REVID_B0		0x4
>-#define ADLS_REVID_G0		0x8
>-#define ADLS_REVID_C0		0xC /*Same as H0 ADLS SOC stepping*/
>-
> #define IS_ADLS_DISP_STEPPING(p, since, until) \
> 	(IS_ALDERLAKE_S(p) && \
> 	 tgl_stepping_get(p)->disp_stepping >= (since) && \
>-- 
>2.20.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
