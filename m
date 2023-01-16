Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F9A66B9F2
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 10:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9663B10E151;
	Mon, 16 Jan 2023 09:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A803A10E151
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 09:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673860324; x=1705396324;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Issnbl0fJZo7KvrXXfkMyfXvyV1q/x2NBiQY4XFM0gU=;
 b=JCSn/9QfbPznFgr48Ci31MykRYonyZ4kPvkU6SG/HBVs9n/tjhDIv6gy
 OoMm7QUVG5wQvl+5xAcvyDeNKSvQjMk0ZuJAqemOFl6KCHRSnhzBto3rx
 38WkJoj+5WApEvGGgG+IguvquGQfDiNZUe3XNlMsxBIyqOQTLGQ5gqCAa
 u1z1MBxv7Rn2M0cdz93sOAm/xk+LcBrflDmoL6U9aaT8JkGuoL7SaC/6p
 Xiy6M3VG224OErXUU0joalYTMi85+5XoynOCC94WufUi0KKsxhpJLL5pB
 xVnp3jKfkRg5QsS9wbnBgk8iC9gpqvlsy8VrPKa10FrHS0//97ukjdTI6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="304803280"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="304803280"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 01:12:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="608844102"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="608844102"
Received: from amakarev-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.13.137])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 01:12:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230112094131.550252-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230112094131.550252-1-chaitanya.kumar.borah@intel.com>
Date: Mon, 16 Jan 2023 11:12:00 +0200
Message-ID: <871qnug7xb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference
 clock
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

On Thu, 12 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> Fix typo for reference clock from 24400 to 24000

Is there a bug report? What's the impact?

It's obvious and easy to say there's a typo, but the harder part is
matching this against observed faulty behaviour, and that's something
people will want to do to match bug reports and fixes.

BR,
Jani.

>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0c107a38f9d0..7e16b655c833 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1319,7 +1319,7 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
>  	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
>  	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
>  	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> -	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> +	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
>  
>  	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
>  	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },

-- 
Jani Nikula, Intel Open Source Graphics Center
