Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7410940A96
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 10:00:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677AA10E0DD;
	Tue, 30 Jul 2024 08:00:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b8L5+xhb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 143D410E0DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 08:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722326424; x=1753862424;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FD+ZX5Z/BKGtZjY/P/YgMydfGWHMohEAnhmYXzQoEfQ=;
 b=b8L5+xhbR8hyuezM66C36jdRErrYYoplYjbUS5UOuuIoaCQuYues4Wim
 es0RVfunFLCkZJ7RgeGgsaaNUV+/X5biAolnq2i4Y1lq3zyQs4rk3+Vrs
 Vc5h4cm3HAKx62j1hZwVsYmCLH+20tLv0Sb9KxhBoQpRNsbe95DhCCx1K
 xX1kYWv57Hdiy+Vx+eCiflQMLuoRmA6vEDeikx45blG0j5uNzBYbJHpd/
 ZgxZnkc6ms4CQl5/8+DHPwYGs/bHmySPNBWlkBN0ALzGL0DeeyOW28rTC
 Kr/AkMWnJEx5EyBtQdcPaiGUgNle4IfYvCQvsMdzUNlfADHVSYMGTscYF A==;
X-CSE-ConnectionGUID: G9zblvqTQyGlfPtSrGckww==
X-CSE-MsgGUID: rlwPv+RBRR+NlW307iAkew==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="20282681"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="20282681"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 01:00:23 -0700
X-CSE-ConnectionGUID: 0tDrO2OXQaq32UbSzrBIMQ==
X-CSE-MsgGUID: BhnyUMRCR5yZppu6rpdWYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="58580244"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.34])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 01:00:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Fix HDCP2_STREAM_STATUS macro
In-Reply-To: <20240730035505.3759899-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240729040829.3753012-1-suraj.kandpal@intel.com>
 <20240730035505.3759899-1-suraj.kandpal@intel.com>
Date: Tue, 30 Jul 2024 11:00:19 +0300
Message-ID: <87cymvxqb0.fsf@intel.com>
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

On Tue, 30 Jul 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Fix HDCP2_STREAM_STATUS macro, it called pipe instead of port never
> threw a compile error as no one used it.
>
> --v2
> -Add Fixes [Jani]
>
> Fixes: d631b984cc90 ("drm/i915/hdcp: Add HDCP 2.2 stream register")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_regs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
> index a568a457e532..f590d7f48ba7 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_regs.h
> @@ -251,7 +251,7 @@
>  #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
>  					(TRANS_HDCP(dev_priv) ? \
>  					 TRANS_HDCP2_STREAM_STATUS(trans) : \
> -					 PIPE_HDCP2_STREAM_STATUS(pipe))
> +					 PIPE_HDCP2_STREAM_STATUS(port))
>  
>  #define _PORTA_HDCP2_AUTH_STREAM		0x66F00
>  #define _PORTB_HDCP2_AUTH_STREAM		0x66F04

-- 
Jani Nikula, Intel
