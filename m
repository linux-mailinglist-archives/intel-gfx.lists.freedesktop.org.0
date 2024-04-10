Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 498CB89F8DB
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 15:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A88A410EA5A;
	Wed, 10 Apr 2024 13:53:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wt9AB1w+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0380110EA5A
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 13:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712757206; x=1744293206;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ixT2P2oier7tHPpXsRCKs4FUIgA0XwcdheGcbzBucd4=;
 b=Wt9AB1w+bIHzUAGQ5mNuYHAN90HBTSPDekfeRkwv3ZWMUXhnA6c/lm9r
 ZRZuqWptGJVEMHVMPYPFfG5t5S5KG1r7VdpeTMdJI5uwTgJShT3hoF1wO
 NrqbbQiL7L2rOHS4yj3GyNQ4RTRuujsaOjtHhHCxLnKM19RDY1VX5okbs
 Te56thy17325BEq1754rC/Zsn1EIHJr8fXwxqUE1uxy1+4frpR2kK6nzj
 bDQ6AxAO1o1cVIp+Ij6fjDpYGQBinvEnnBUy/I2ds+QJOCeUmxet9ls3e
 QtcoWNZbunsD8bU5JDFXvn8mDX0ZM6aVu3OntmVn2NvTwgJzCyel+uEdq w==;
X-CSE-ConnectionGUID: tvk8ntETT32xUbZVhmzMxg==
X-CSE-MsgGUID: vqDRJYAXTpeYGdVzqDF9BA==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="25624757"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="25624757"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 06:53:25 -0700
X-CSE-ConnectionGUID: bZzmonBdRJ+dJL7nIUu/Iw==
X-CSE-MsgGUID: Fxo3jt5QTwqNFTZ9l33ttg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="58007163"
Received: from unknown (HELO intel.com) ([10.247.118.254])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 06:53:22 -0700
Date: Wed, 10 Apr 2024 15:53:15 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	Badal Nilawar <badal.nilawar@intel.com>
Subject: Re: [PATCH] drm/i915: Don't enable hwmon for selftests
Message-ID: <ZhaZy5MQtDaP10My@ashyti-mobl2.lan>
References: <20240410060549.201177-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240410060549.201177-1-ashutosh.dixit@intel.com>
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

Hi Ashutosh,

please use "git format-patch -v 3 ..." which generates subject
[PATCH v3] ...". Otherwise it gets confusing to see the patch
that needs to be reviewed.

On Tue, Apr 09, 2024 at 11:05:49PM -0700, Ashutosh Dixit wrote:
> There are no hwmon selftests so there is no need to enable hwmon for
> selftests. So enable hwmon only for real driver load.
> 
> v2: Move the logic inside i915_hwmon.c
> v3: Move is_i915_selftest definition to i915_selftest.h (Badal)
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_hwmon.c    |  3 ++-
>  drivers/gpu/drm/i915/i915_selftest.h | 10 ++++++++++
>  2 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 8c3f443c8347..cf1689333ebf 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -10,6 +10,7 @@
>  #include "i915_drv.h"
>  #include "i915_hwmon.h"
>  #include "i915_reg.h"
> +#include "i915_selftest.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_pcode.h"
>  #include "gt/intel_gt.h"
> @@ -789,7 +790,7 @@ void i915_hwmon_register(struct drm_i915_private *i915)
>  	int i;
>  
>  	/* hwmon is available only for dGfx */
> -	if (!IS_DGFX(i915))
> +	if (!IS_DGFX(i915) || is_i915_selftest())
>  		return;

I wonder if this is the right place to put it or rather place it
in i915_driver.c and avoid calling i915_hwmon_register() at all.

In any case, it's good:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
