Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D86994A4C7
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 11:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F352E10E093;
	Wed,  7 Aug 2024 09:55:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CcQlumit";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC0910E093
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 09:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723024524; x=1754560524;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=k7xSnaK4qv28M7lf0tJbdtNEVmbDWghd+YawnOA+U18=;
 b=CcQlumite7iTYp2o4nNrylvu2S8ZHGzUopA2uMtUJMwOxJLlN/Rd8NQj
 hhJ1OhHqLIMJXm6OOYMAGeiAsupsNzp/TEhr43IaqX9FpVPqkr4hURd0C
 LxttBZ5WO+26g0i2frLPj9+T0bGla+yPkLKiJIyRAoYz1OCew9LrZaykk
 yYxiqGCZvs93+n2A0hHyk3EMv2R9vWz/IrUIixwIArLah4rfNUH5FJ7g8
 jLMb/U2JHuKsfwBFOCkqeH51tyJemc4zdtCx7i9phejtV08d5taMuZO2O
 Fjq+oJ00CuGxfBgW8iq4fIlPly163Cv0ANCWyGu7eDeeEQCaVOlM7KMS1 A==;
X-CSE-ConnectionGUID: okdyGyciQiOijRCgn4OOYw==
X-CSE-MsgGUID: fWFoQQU9Qrq74BmxzECxnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="43607646"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="43607646"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 02:55:23 -0700
X-CSE-ConnectionGUID: nb7CA/1CSKulWAB0wqhIPg==
X-CSE-MsgGUID: nFacfogbQLiYlCFETounKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="80055434"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 02:55:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH 1/5] drm/i915/display: Add support for histogram
In-Reply-To: <20240705095551.1244154-2-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-2-arun.r.murthy@intel.com>
Date: Wed, 07 Aug 2024 12:55:18 +0300
Message-ID: <87r0b04pyx.fsf@intel.com>
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

On Fri, 05 Jul 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> +/* GLOBAL_HIST related registers */
> +#define _DPST_CTL_A					0x490C0
> +#define _DPST_CTL_B					0x491C0
> +#define DPST_CTL(pipe)					_MMIO_PIPE(pipe, _DPST_CTL_A, _DPST_CTL_B)
> +#define DPST_CTL_IE_HIST_EN				REG_BIT(31)
> +#define DPST_CTL_RESTORE				REG_BIT(28)
> +#define DPST_CTL_IE_MODI_TABLE_EN			REG_BIT(27)
> +#define DPST_CTL_HIST_MODE				REG_BIT(24)
> +#define DPST_CTL_ENHANCEMENT_MODE_MASK			REG_GENMASK(14, 13)
> +#define DPST_CTL_EN_MULTIPLICATIVE			REG_FIELD_PREP(DPST_CTL_ENHANCEMENT_MODE_MASK, 2)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT			REG_BIT(15)
> +#define DPST_CTL_BIN_REG_FUNC_SEL			REG_BIT(11)
> +#define DPST_CTL_BIN_REG_FUNC_TC			REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 0)
> +#define DPST_CTL_BIN_REG_FUNC_IE			REG_FIELD_PREP(DPST_CTL_BIN_REG_FUNC_SEL, 1)
> +#define DPST_CTL_BIN_REG_MASK				REG_GENMASK(6, 0)
> +#define DPST_CTL_BIN_REG_CLEAR				REG_FIELD_PREP(DPST_CTL_BIN_REG_MASK, 0)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_2INT_8FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 1)
> +#define DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC	REG_FIELD_PREP(DPST_CTL_IE_TABLE_VALUE_FORMAT, 0)
> +#define DPST_CTL_HIST_MODE_YUV				REG_FIELD_PREP(DPST_CTL_HIST_MODE, 0)
> +#define DPST_CTL_HIST_MODE_HSV				REG_FIELD_PREP(DPST_CTL_HIST_MODE, 1)
> +
> +#define _DPST_GUARD_A					0x490C8
> +#define _DPST_GUARD_B					0x491C8
> +#define DPST_GUARD(pipe)				_MMIO_PIPE(pipe, _DPST_GUARD_A, _DPST_GUARD_B)
> +#define DPST_GUARD_HIST_INT_EN				REG_BIT(31)
> +#define DPST_GUARD_HIST_EVENT_STATUS			REG_BIT(30)
> +#define DPST_GUARD_INTERRUPT_DELAY_MASK			REG_GENMASK(29, 22)
> +#define DPST_GUARD_INTERRUPT_DELAY(val)			REG_FIELD_PREP(DPST_GUARD_INTERRUPT_DELAY_MASK, val)
> +#define DPST_GUARD_THRESHOLD_GB_MASK			REG_GENMASK(21, 0)
> +#define DPST_GUARD_THRESHOLD_GB(val)			REG_FIELD_PREP(DPST_GUARD_THRESHOLD_GB_MASK, val)
> +
> +#define _DPST_BIN_A					0x490C4
> +#define _DPST_BIN_B					0x491C4
> +#define DPST_BIN(pipe)					_MMIO_PIPE(pipe, _DPST_BIN_A, _DPST_BIN_B)
> +#define DPST_BIN_DATA_MASK				REG_GENMASK(23, 0)
> +#define DPST_BIN_BUSY					REG_BIT(31)

PS. The big comment about formatting register definitions at the top of
i915_reg.h still applies.


-- 
Jani Nikula, Intel
