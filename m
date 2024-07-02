Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF1F923B3A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 12:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E5610E5BE;
	Tue,  2 Jul 2024 10:19:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TN55qA0p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC64310E5A4;
 Tue,  2 Jul 2024 10:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719915545; x=1751451545;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Y5bki8pFzmuTVvpCEsKi5GpT3dlJLREZJ2E4xBMq2kw=;
 b=TN55qA0p1Ggm3W8gAhNA+h+cjvoCg5FP0nmSJayMVe0Uzp7wI5W8Zo7r
 9AXERvwhPwXDFFUFrEdAE9SNXwJ2TQkX/XvaWXttXiDZ+/EgCbBjoMT2P
 9CU89KUV4Db9CkGLVBeZas6858wpPAcOCyc0U8e1jldjNOHS5bFhIBV5a
 mbfy+HmkKtGnST6c5xGN5UsG9yvvD/BhNsbePd8/cZHMaJKMjXvnKwGkt
 cWfj+g2vATdBzoRdIANFmM2+1aShLe00nsBF0etVHKl9U5XhsMAqNQZbr
 wiwVncUBSlYxMcEL1mH9fIuZ+uMK/2Y+ksa52znG9IMK9K2ARXfvcSX4F w==;
X-CSE-ConnectionGUID: /kZK3LpKTeGCotRJwwPeyg==
X-CSE-MsgGUID: 2YlXSU5STKqNgUhgtv0+FA==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="28475926"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="28475926"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 03:19:05 -0700
X-CSE-ConnectionGUID: l0S7Si+CTZaiC13jjK+f0A==
X-CSE-MsgGUID: yEDrdTuUQAi+xRqOo30gGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="45746506"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.179])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 03:19:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-xe@lists.freedesktop.org
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
In-Reply-To: <20240619143127.110045-4-matthew.auld@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
Date: Tue, 02 Jul 2024 13:18:58 +0300
Message-ID: <877ce49jvx.fsf@intel.com>
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

On Wed, 19 Jun 2024, Matthew Auld <matthew.auld@intel.com> wrote:
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 0e16e5029081..f7521fd5db4c 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -34,7 +34,8 @@ uses_generated_oob := \
>  	$(obj)/xe_ring_ops.o \
>  	$(obj)/xe_vm.o \
>  	$(obj)/xe_wa.o \
> -	$(obj)/xe_ttm_stolen_mgr.o
> +	$(obj)/xe_ttm_stolen_mgr.o \
> +	$(obj)/display/xe_display_wa.o \

There's an extra \ there.

BR,
Jani.

-- 
Jani Nikula, Intel
