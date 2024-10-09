Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C23699619A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 09:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2CE510E67C;
	Wed,  9 Oct 2024 07:57:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N8BRMJpH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43F1410E67C;
 Wed,  9 Oct 2024 07:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728460629; x=1759996629;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tQoimHe7GN5mmswkf8Zh8FLWIPDj683O31mxdXLeLtM=;
 b=N8BRMJpHWvdKqxb77K7w2ut65QL9LKMWBMiU6xewyhAwrVWp5mEk8F9k
 06c162J7/h+NJIAZcHFfI4BDL2RRu/Uc4XHMWe1Nzyo69QIQmO1Hg14Oi
 hkIRQlzBg/t/PwhnzibNURURtGCi42F07Tdgikn7t73N+jbPyFAwQqxyG
 UtrDpfEg+isbAEo8RrHTcr6LUDhLziMSANerC59UlloGiBv+P5RZH2pxX
 odKNs4yoh3J8Xl+xnAfLY3OHNCWPAOBzyIXkVnlHa9JeEc4B1FwF6KC4Y
 wICyOQ4B+WSy9IWUduRSxA2nETimg+byf1vRav+LViwKxEl9D9rXKqd95 w==;
X-CSE-ConnectionGUID: n7iJVsCMToGFgtSXH8j10A==
X-CSE-MsgGUID: pVdvme4aSea7ZwAHs5vb3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="38331062"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="38331062"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:57:09 -0700
X-CSE-ConnectionGUID: q0tPk+L4Qc+HaOcViB7PFw==
X-CSE-MsgGUID: 3b8KrrE3RNCJPlYUlhXD1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76043534"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 00:57:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
Subject: Re: [PATCH 10/10] drm/i915/xe3lpd: Add powerdown value of eDP over
 type c
In-Reply-To: <20241008223741.82790-11-matthew.s.atwood@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-11-matthew.s.atwood@intel.com>
Date: Wed, 09 Oct 2024 10:57:03 +0300
Message-ID: <87h69lbtf4.fsf@intel.com>
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

On Tue, 08 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Add condition for P2.PG power down value.
>
> Bspec: 74494
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 1c8c2a2b05e1..3d95ee65a9f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3144,7 +3144,8 @@ static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
>  	if (intel_encoder_is_c10phy(encoder))
>  		return CX0_P2PG_STATE_DISABLE;
>  
> -	if (IS_BATTLEMAGE(i915) && encoder->port == PORT_A)
> +	if ((IS_BATTLEMAGE(i915) && encoder->port == PORT_A) ||
> +	    (DISPLAY_VER(i915) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
>  		return CX0_P2PG_STATE_DISABLE;

Does this match what the subject says?

BR,
Jani.

>  
>  	return CX0_P4PG_STATE_DISABLE;

-- 
Jani Nikula, Intel
