Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B36382BF3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 14:19:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69B656E942;
	Mon, 17 May 2021 12:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C5E36E942
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 12:19:55 +0000 (UTC)
IronPort-SDR: NKw0rz8bbhYa8tD02scJro5KqZz0IUgK9lZKJCBTA3ScBJB2E+VcDsCxXKYinO8GwcxUBjXeTF
 Qpsm6YlV+oDQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9986"; a="187572973"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="187572973"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 05:19:54 -0700
IronPort-SDR: q/zFyVzLXvK1icaN8gE3gFsrnTn7S7TJdPU2qKKyVxduJ2z7MnPya7Api0DC4igUXOz0SxSJQP
 PFYJ255XC/kg==
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="540408297"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 05:19:52 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1licDt-00CjRQ-Md; Mon, 17 May 2021 15:19:49 +0300
Date: Mon, 17 May 2021 15:19:49 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>
Message-ID: <YKJfZXn3P/ZdslRP@smile.fi.intel.com>
References: <20210407122337.77493-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210407122337.77493-1-andriy.shevchenko@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Apr 07, 2021 at 03:23:37PM +0300, Andy Shevchenko wrote:
> The ascii85.h is user of exactly two headers, i.e. math.h and types.h.
> There is no need to carry on entire kernel.h.

It seems DRM has strict rules about what's going thru DRM tree and this one,
while being used only for DRM drivers and been originated as i915 code, in a
stale position right now.

Who can take it, please? (It's Rb by Jani)

I Cc'ed this to Andrew, if he is okay to expedite it, and to Rob, who is the
committer of the original move patch.

Personally to me DRM seems the best match, but... see above.

> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
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
>  
> -- 
> 2.30.2
> 

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
