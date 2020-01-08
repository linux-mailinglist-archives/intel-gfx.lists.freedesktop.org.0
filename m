Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9748B134428
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 14:44:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C7E56E2E9;
	Wed,  8 Jan 2020 13:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2BB6E2D8;
 Wed,  8 Jan 2020 13:44:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 05:44:24 -0800
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="222934967"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 05:44:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chen Zhou <chenzhou10@huawei.com>, airlied@linux.ie,
 chris@chris-wilson.co.uk
In-Reply-To: <20200108133610.92714-1-chenzhou10@huawei.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200108133610.92714-1-chenzhou10@huawei.com>
Date: Wed, 08 Jan 2020 15:44:19 +0200
Message-ID: <877e22qczw.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH next] drm/i915/gtt: add missing include file
 asm/smp.h
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
Cc: chenzhou10@huawei.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Jan 2020, Chen Zhou <chenzhou10@huawei.com> wrote:
> Fix build error:
> lib/crypto/chacha.c: In function chacha_permute:
> lib/crypto/chacha.c:65:1: warning: the frame size of 3384 bytes is larger than 2048 bytes [-Wframe-larger-than=]
>  }
>   ^

IMO this needs a better explanation of why not having the include leads
to the above failure.

BR,
Jani.

>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 1a2b5dc..9ef8ed8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -6,6 +6,7 @@
>  #include <linux/stop_machine.h>
>  
>  #include <asm/set_memory.h>
> +#include <asm/smp.h>
>  
>  #include "intel_gt.h"
>  #include "i915_drv.h"

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
