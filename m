Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A94D4317501
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 01:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C264C6ED7D;
	Thu, 11 Feb 2021 00:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D46266ED7D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 00:10:49 +0000 (UTC)
IronPort-SDR: UiWVVTZulrl0nlGJUKUOsCReGJJUjObxMqPa8GLBDVdcamqYWVxPUJ6RS5FQt4Ifg8gxyaLF3M
 ONLC9WrKXntg==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="267013860"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="267013860"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 16:10:49 -0800
IronPort-SDR: 76iHMAbdnjtNmnt+a4Dq/dgp6frDJlvgPBJZZAkstUIfL7XPqINxfTD3gXpQ9NYhKqOPV2dZdk
 BWXW09CyMqrQ==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="578616244"
Received: from sganes2-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.225])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 16:10:48 -0800
Date: Wed, 10 Feb 2021 16:10:47 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210211001047.4cutfumgnw32jkrm@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128192413.1715802-3-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/18] drm/i915/display13: Handle proper AUX
 interrupt bits
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

On Thu, Jan 28, 2021 at 11:23:57AM -0800, Matt Roper wrote:
>Display13 has new AUX interrupt bits for DDI-D and DDI-E.
>
>Bspec: 50064
>Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/i915_irq.c | 12 +++++++++++-
> drivers/gpu/drm/i915/i915_reg.h |  2 ++
> 2 files changed, 13 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>index 06937a2d2714..1bced71470a5 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -2251,7 +2251,17 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
> {
> 	u32 mask;
>
>-	if (INTEL_GEN(dev_priv) >= 12)
>+	if (HAS_DISPLAY13(dev_priv))
>+		return TGL_DE_PORT_AUX_DDIA |
>+			TGL_DE_PORT_AUX_DDIB |
>+			TGL_DE_PORT_AUX_DDIC |
>+			D13_DE_PORT_AUX_DDID |
>+			D13_DE_PORT_AUX_DDIE |
>+			TGL_DE_PORT_AUX_USBC1 |
>+			TGL_DE_PORT_AUX_USBC2 |
>+			TGL_DE_PORT_AUX_USBC3 |
>+			TGL_DE_PORT_AUX_USBC4;
>+	else if (INTEL_GEN(dev_priv) >= 12)
> 		return TGL_DE_PORT_AUX_DDIA |
> 			TGL_DE_PORT_AUX_DDIB |
> 			TGL_DE_PORT_AUX_DDIC |
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>index 3031897239a0..10fd0e3af2d4 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -7858,6 +7858,8 @@ enum {
> #define  TGL_DE_PORT_AUX_USBC3		(1 << 10)
> #define  TGL_DE_PORT_AUX_USBC2		(1 << 9)
> #define  TGL_DE_PORT_AUX_USBC1		(1 << 8)
>+#define  D13_DE_PORT_AUX_DDIE		(1 << 13)
>+#define  D13_DE_PORT_AUX_DDID		(1 << 12)

maybe this is a gray area, but the rule here is to define following the
bit order, regardless of the meaning of the bit.

in gen8_de_port_aux_mask() I guess it's fine to leave it in the logical
order, but here it would be good not to create exceptions.

while at it, we could also add another commit to convert the surrounding
code to REG_BIT()

Lucas De Marchi

> #define  TGL_DE_PORT_AUX_DDIC		(1 << 2)
> #define  TGL_DE_PORT_AUX_DDIB		(1 << 1)
> #define  TGL_DE_PORT_AUX_DDIA		(1 << 0)
>-- 
>2.25.4
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
