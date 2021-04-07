Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6849D356C7D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 14:46:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7328E6E908;
	Wed,  7 Apr 2021 12:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6FB46E908
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 12:46:45 +0000 (UTC)
IronPort-SDR: ZZqrUNQ5tBi6Pvf1/8vUh3rYmp8pk9VCv6p/0A/5HWVrkoEeyQMFZeSfBS4uojTTsmQmsw/Nnr
 I7BxN0xL/uxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="191136660"
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="191136660"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 05:46:45 -0700
IronPort-SDR: WnUqqWXZL7oCyhW0EIInumpJdSfewC5ZnwxSWTxF1srzHQgl/wlwEVB4Kh7Jasr13leAQjiV4B
 JfixiK8CSWug==
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="415256731"
Received: from shochwel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.33.133])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 05:46:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-kernel@vger.kernel.org
In-Reply-To: <20210407122337.77493-1-andriy.shevchenko@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210407122337.77493-1-andriy.shevchenko@linux.intel.com>
Date: Wed, 07 Apr 2021 15:46:37 +0300
Message-ID: <87h7kijm8i.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1 1/1] drm/i915: Include only needed
 headers in ascii85.h
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 07 Apr 2021, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> The ascii85.h is user of exactly two headers, i.e. math.h and types.h.
> There is no need to carry on entire kernel.h.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

That's hardly drm/i915 specific!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

But who's going to pick it up and, hopefully, change the subject prefix
to ascii85 or something?

> ---
>  include/linux/ascii85.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/include/linux/ascii85.h b/include/linux/ascii85.h
> index 4cc40201273e..83ad775ad0aa 100644
> --- a/include/linux/ascii85.h
> +++ b/include/linux/ascii85.h
> @@ -8,7 +8,8 @@
>  #ifndef _ASCII85_H_
>  #define _ASCII85_H_
>  
> -#include <linux/kernel.h>
> +#include <linux/math.h>
> +#include <linux/types.h>
>  
>  #define ASCII85_BUFSZ 6

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
