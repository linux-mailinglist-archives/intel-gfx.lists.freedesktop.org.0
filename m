Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C885428DA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 10:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D8A10E5CD;
	Wed,  8 Jun 2022 08:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC9C810E5CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 08:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654675610; x=1686211610;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=mW1PPccn0lIPbDVAWwkeOj1XnJlvD8tnVWRMur2wTTQ=;
 b=JZkmX9FxsK88mwlxo2Ok4Jl3LHnC7CQnN0o3M3HHV+mxfNZt2a9G1lqE
 Mm9Gs/iYiSIE0YER2N/IbJEDiaNuV0XpLSRd9NK0O3w0L+coaWyhxYy8f
 Kb5Zr1GBHvc+BiHnnGnFpnn76SP9hyamjYAsOjKtiDb9g2d1ZQeo4mjJs
 /tjUuHJ5UKTK0e7OSwn2v8Lv6doxLpI+7bxaMPe0K+Nlny+MGhkLl/UDm
 +l7goBc7BwgG4qfg3vcoGrAu0UByXuqjsrFwguPUmFvky1Lfy9tI3/zia
 klq55lnfH22csqMzwts740Ys0OEEb/OBoTUrpKNF+f2fn1SKQEFCv3tpY Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="274337396"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="274337396"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:06:50 -0700
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="907536590"
Received: from jking17-mobl.ger.corp.intel.com (HELO [10.213.193.156])
 ([10.213.193.156])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:06:49 -0700
Message-ID: <7b62505a-95a0-25ab-9299-e349453e49f5@linux.intel.com>
Date: Wed, 8 Jun 2022 09:06:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220506120405.2582372-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220506120405.2582372-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pxp: fix sparse warning for not
 declared symbol
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


On 06/05/2022 13:04, Jani Nikula wrote:
> Fix:
> 
> drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c:61:6: warning: symbol
> 'intel_pxp_debugfs_register' was not declared. Should it be static?
> 
> Sort and remove the redundant pxp prefixes from the includes while at
> it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> index c9da1015eb42..e888b5124a07 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> @@ -9,9 +9,10 @@
>   #include <drm/drm_print.h>
>   
>   #include "gt/intel_gt_debugfs.h"
> -#include "pxp/intel_pxp.h"
> -#include "pxp/intel_pxp_irq.h"
>   #include "i915_drv.h"
> +#include "intel_pxp.h"
> +#include "intel_pxp_debugfs.h"
> +#include "intel_pxp_irq.h"
>   
>   static int pxp_info_show(struct seq_file *m, void *data)
>   {

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Lets try to copy domain owners when doing cleanups to lessen the 
maintainer load, since it appears people are not really scanning the 
upstream mailing list these days. :(

Regards,

Tvrtko
