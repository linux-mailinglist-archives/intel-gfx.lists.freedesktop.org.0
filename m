Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 068C39D3A4E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:10:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B42A610E739;
	Wed, 20 Nov 2024 12:10:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J/Rce0z+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FA0610E726;
 Wed, 20 Nov 2024 12:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732104627; x=1763640627;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=vwhgTnQ1D6+6p4jZ7Er7vSUpcLxsgNq7RTjsGSI1H7E=;
 b=J/Rce0z+UQJrfI7d7RiljBVOODNk+3v2fbbF4YaKvZPegjsyZiQiVTx6
 LuN6w6S9iQRCAG6wSQ+w+vXCb0hEvFoTlsFKNJ9VDeZ2/xkKkfXi1K4Uu
 nWad+5ujs0aVFXcQbKi8c3LNNDg6K23hzGfzJljr4JtSbnu0CGn8EZ0h6
 IWYnomzqyM8ga7xYqH04OOU8Igdj4kAY53KRZqYzNNW/Ai2odnj4G/DxC
 a2zC0I9xGxgcW6OEmdGrz+8+Q5q/spnxC1+ZrupT8SQmeEQ6F1Q+o1v/N
 /cOO9u3PIM0hnUFrmyTDxGOUyFcwET76Gb4Lm5wHPCovFkuxHKRAQv+XT A==;
X-CSE-ConnectionGUID: CtMallarRsOXaRTF8jMvVA==
X-CSE-MsgGUID: VvU/XAG/TNmCi3l4A5UvmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="42798837"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="42798837"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:10:27 -0800
X-CSE-ConnectionGUID: CV81RW6xRTGCx9T53Ch5cg==
X-CSE-MsgGUID: sMjqJvZaSw+0JMJD0ix/+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94832877"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:10:26 -0800
Date: Wed, 20 Nov 2024 14:10:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/11] drm/i915: MST and DDI cleanups and refactoring
Message-ID: <Zz3R03W8-l0NGZS7@ideak-desk.fi.intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1731941270.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 18, 2024 at 04:48:55PM +0200, Jani Nikula wrote:
> I've accumulated a bunch of cleanups while preparing for 128b/132b SST
> operation. Let's get them merged first.

The updated patchset looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> 
> BR,
> Jani.
> 
> Jani Nikula (11):
>   drm/i915/mst: pass intel_dp around in mst stream helpers
>   drm/i915/mst: unify MST connector function naming to mst_connector_*
>   drm/i915/mst: simplify mst_connector_get_hw_state()
>   drm/i915/mst: unify MST topology callback naming to mst_topology_*
>   drm/i915/ddi: use intel_ddi_* naming convention for encoder
>     enable/disable
>   drm/i915/reg: convert DP_TP_CTL/DP_TP_STATUS to REG_BIT() and friends
>   drm/i915/dp: refactor clear/wait for act sent
>   drm/i915/ddi: rename temp to ddi_func_ctl in intel_ddi_read_func_ctl()
>   drm/i915/ddi: split up intel_ddi_read_func_ctl() by output type
>   drm/i915/ddi: refactor intel_ddi_connector_get_hw_state()
>   drm/i915/ddi: simplify intel_ddi_get_encoder_pipes() slightly
> 
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 319 +++++++++++---------
>  drivers/gpu/drm/i915/display/intel_ddi.h    |   8 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 161 +++++-----
>  drivers/gpu/drm/i915/i915_reg.h             |  57 ++--
>  4 files changed, 288 insertions(+), 257 deletions(-)
> 
> -- 
> 2.39.5
> 
