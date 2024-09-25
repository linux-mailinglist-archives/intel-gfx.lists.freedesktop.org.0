Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0238698561D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 11:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79A6B10E7D4;
	Wed, 25 Sep 2024 09:11:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RB560ghO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0391B10E7D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 09:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727255508; x=1758791508;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/v0yAZ5ssR9c40LIMkP4rI6FPAOWLpkWMoLFIGA/2I4=;
 b=RB560ghOrmsJq+239GjSR4EkVGifetMPFKLZazzRMaGjxlMD0TNZu416
 3ZKUAdtejXOYOKYRc5WQGWWdn6UmqJ1BMSffDMplBHXl5hJo6KUCudFVj
 bWUjBlRnvTP54NEWhp1KRMa8Fd2eXTgXEdjDjMSgSvtb/G236QgZea1kM
 GF55eSSZAHZH7eHVxskbcahB2xmChB5b79U8UfgkdiFX1AcB/7awCWrEA
 Qihp8mS7bqhJiGOG0oAc3wlHiToMZGqJuY20GJWhaq8ltSsFJ09Q4x0Ir
 TmSkfD/CqSTBVa8RaWsfO++q+b8IVHmsPzsGHyXnMQTYK/DrgQ7d9f3qO w==;
X-CSE-ConnectionGUID: utfBulXeQzCq3XmwUCirdw==
X-CSE-MsgGUID: 3+ctAVuqQbG2qrQ6qp7X4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="30001399"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="30001399"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 02:11:48 -0700
X-CSE-ConnectionGUID: ZEuPBxFjQ6WK8NZQvxkiIQ==
X-CSE-MsgGUID: +9QeKfKpR2KncQrIYknoGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="109168224"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 02:11:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/display: Modify panel_fitting code for joiner
In-Reply-To: <20240925063032.2311796-2-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240925063032.2311796-1-nemesa.garg@intel.com>
 <20240925063032.2311796-2-nemesa.garg@intel.com>
Date: Wed, 25 Sep 2024 12:11:43 +0300
Message-ID: <87seto2j3k.fsf@intel.com>
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

On Wed, 25 Sep 2024, Nemesa Garg <nemesa.garg@intel.com> wrote:
> @@ -666,16 +666,16 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>  	return 0;
>  }
>  
> -int intel_panel_fitting(struct intel_crtc_state *crtc_state,
> -			const struct drm_connector_state *conn_state)
> +int intel_gch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			    const struct drm_connector_state *conn_state)

What's gch supposed to mean?


-- 
Jani Nikula, Intel
