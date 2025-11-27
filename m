Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD61FC8DD58
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 11:50:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2AA10E183;
	Thu, 27 Nov 2025 10:49:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="duV1K2w4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBD9110E183;
 Thu, 27 Nov 2025 10:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764240541; x=1795776541;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lZFRuCzPyILyIeln0eXaUiPAjzMkGSxhy6gZrr+gqjU=;
 b=duV1K2w4X5vXI6gKmakJTpcXXynsxnMXo+acgC5WN4WRIHwmhmvY6TAz
 VVhLH6ip3bBJgCPoCXnks947ylITDuiJDH6edmAiyOECAUETh+YqBeYx6
 ++2uTjWbJswS5r06G1dR9ZkMz8hoDaK5MyMygpG4Q16UHTSI+7eWe0mDQ
 CEmY+xsv5rEBZSOc0LqTtvHd3iwK0+kqfxqBN/P4yLd+18IqvCbwj5jRm
 x0MaGRte6q7sgkmc7Fp7TyjnBIRQK9Vks5JDRXtQqMK1Aia9v4XIIZeLL
 1ishhkQh69Qx+WxPJzJeVmC5Hq7BFJGYjHzyDLwcGB2VE/tQV8e7ufK/d A==;
X-CSE-ConnectionGUID: axYSIeTqR8aRiSZxCRit9g==
X-CSE-MsgGUID: V6XoTTHVSr65c0sDIcFt4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="76975759"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="76975759"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 02:49:00 -0800
X-CSE-ConnectionGUID: GYcihkLuTIKezJQbXkO8Gg==
X-CSE-MsgGUID: 3XDAGXvhRkWo3nQp7GU08w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="198308041"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 02:48:58 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v9 04/17] drm/i915/vrr: Add functions to read out
 vmin/vmax stuff
In-Reply-To: <20251127091614.648791-5-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-5-mitulkumar.ajitkumar.golani@intel.com>
Date: Thu, 27 Nov 2025 12:48:55 +0200
Message-ID: <d29a343c252eac169e5c98f8d2105979cb33f72a@intel.com>
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

On Thu, 27 Nov 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> +int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp = 0;
> +
> +	tmp = intel_de_read(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder));
> +
> +	if (REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_CNT_MASK, tmp) == 0)
> +		return -1;

My pet peeve, using magic -1 as a negative error code.


BR,
Jani.


-- 
Jani Nikula, Intel
