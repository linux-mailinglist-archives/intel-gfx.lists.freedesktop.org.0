Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7AD48B243
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 17:34:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF2410E849;
	Tue, 11 Jan 2022 16:34:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E94E10E849
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 16:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641918848; x=1673454848;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=C5HoVBOhnDgNXhay82x628388aqmeiwcQHlcgXnK2AA=;
 b=gVsxlHFtqgJIrKQUAV/yqyOtkJ34hFVKEpdJ2rte0hlEYQYkPVVWOUZ+
 /oGm0mph2mdHRYm5NdPSZV7DrjKRl6RPVL06dYrEVPf3dn1pGcedfSGFK
 xKTWPNWGZP3oOFb8iYTjX4tYUedYOAP7nyRhAEu5tacncx/oylLcl45FP
 70TwbnsDH1ZSwDF0ofwVKexQ18QjNiquuioiSp2VQaE0RgUInfzPBn3n5
 o3Y4vaYBX27P86yHrf30MInM2XPb06qlgz9KVGZWBYkwJ1ZPu7wuqW6QA
 WjWkIwRj3Fc5KsQM0T+ISWIQWLdJtwhAb1GI6orKhvU051swQp1rL6Jo5 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="329871164"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="329871164"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 08:29:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="669859643"
Received: from rblair-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.75.118])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 08:29:54 -0800
Date: Tue, 11 Jan 2022 08:29:54 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220111162954.6orumialtcp6qye3@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
 <20220111051600.3429104-8-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220111051600.3429104-8-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 07/11] drm/i915/gt: Move engine registers
 to their own header
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

On Mon, Jan 10, 2022 at 09:15:56PM -0800, Matt Roper wrote:
>Let's start breaking up and cleaning up the massive i915_reg.h file.
>We'll start by moving all registers that are defined in relation to an
>engine base to their own header.

maybe reword this a little bit since now this isn't the start of
this series anymore?

>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>index b7e03b6e886d..b504d67c2752 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -272,14 +272,6 @@
> #define GEN12_SFC_DONE(n)		_MMIO(0x1cc000 + (n) * 0x1000)
> #define GEN12_SFC_DONE_MAX		4
>
>-#define RING_PP_DIR_BASE(base)		_MMIO((base) + 0x228)
>-#define RING_PP_DIR_BASE_READ(base)	_MMIO((base) + 0x518)
>-#define RING_PP_DIR_DCLV(base)		_MMIO((base) + 0x220)
>-#define   PP_DIR_DCLV_2G		0xffffffff
>-
>-#define GEN8_RING_PDP_UDW(base, n)	_MMIO((base) + 0x270 + (n) * 8 + 4)
>-#define GEN8_RING_PDP_LDW(base, n)	_MMIO((base) + 0x270 + (n) * 8)
>-
> #define GEN8_R_PWR_CLK_STATE		_MMIO(0x20C8)
> #define   GEN8_RPCS_ENABLE		(1 << 31)
> #define   GEN8_RPCS_S_CNT_ENABLE	(1 << 18)
>@@ -2206,71 +2198,8 @@
> #define XEHP_VEBOX3_RING_BASE		0x1e8000
> #define XEHP_VEBOX4_RING_BASE		0x1f8000
> #define BLT_RING_BASE		0x22000

I know from the commit message this is not all, but since we are moving
the RING_TAIL() and friends that take the base as parameter, I don't
understand why we woul leave the bases behind in the old header.

Up to you if squashing the additional move here or following up with
more patches


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>-#define RING_TAIL(base)		_MMIO((base) + 0x30)
>-#define RING_HEAD(base)		_MMIO((base) + 0x34)
>-#define RING_START(base)	_MMIO((base) + 0x38)
>-#define RING_CTL(base)		_MMIO((base) + 0x3c)
>-#define   RING_CTL_SIZE(size)	((size) - PAGE_SIZE) /* in bytes -> pages */
>-#define RING_SYNC_0(base)	_MMIO((base) + 0x40)
>-#define RING_SYNC_1(base)	_MMIO((base) + 0x44)
>-#define RING_SYNC_2(base)	_MMIO((base) + 0x48)
>-#define GEN6_RVSYNC	(RING_SYNC_0(RENDER_RING_BASE))
>-#define GEN6_RBSYNC	(RING_SYNC_1(RENDER_RING_BASE))
>-#define GEN6_RVESYNC	(RING_SYNC_2(RENDER_RING_BASE))
>-#define GEN6_VBSYNC	(RING_SYNC_0(GEN6_BSD_RING_BASE))
>-#define GEN6_VRSYNC	(RING_SYNC_1(GEN6_BSD_RING_BASE))
>-#define GEN6_VVESYNC	(RING_SYNC_2(GEN6_BSD_RING_BASE))
>-#define GEN6_BRSYNC	(RING_SYNC_0(BLT_RING_BASE))
>-#define GEN6_BVSYNC	(RING_SYNC_1(BLT_RING_BASE))
>-#define GEN6_BVESYNC	(RING_SYNC_2(BLT_RING_BASE))
>-#define GEN6_VEBSYNC	(RING_SYNC_0(VEBOX_RING_BASE))
>-#define GEN6_VERSYNC	(RING_SYNC_1(VEBOX_RING_BASE))
>-#define GEN6_VEVSYNC	(RING_SYNC_2(VEBOX_RING_BASE))
>-#define GEN6_NOSYNC	INVALID_MMIO_REG
>-#define RING_PSMI_CTL(base)	_MMIO((base) + 0x50)
>-#define   GEN8_RC_SEMA_IDLE_MSG_DISABLE		REG_BIT(12)
>-#define   GEN8_FF_DOP_CLOCK_GATE_DISABLE	REG_BIT(10)
>-#define   GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
>-#define   GEN6_BSD_GO_INDICATOR			REG_BIT(4)
>-#define   GEN6_BSD_SLEEP_INDICATOR		REG_BIT(3)
>-#define   GEN6_BSD_SLEEP_FLUSH_DISABLE		REG_BIT(2)
>-#define   GEN6_PSMI_SLEEP_MSG_DISABLE		REG_BIT(0)
>-#define RING_MAX_IDLE(base)	_MMIO((base) + 0x54)
>-#define RING_HWS_PGA(base)	_MMIO((base) + 0x80)
>-#define RING_ID(base)		_MMIO((base) + 0x8c)
>-#define RING_HWS_PGA_GEN6(base)	_MMIO((base) + 0x2080)
