Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0356F8B5495
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 11:53:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EC1910E3BD;
	Mon, 29 Apr 2024 09:53:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bfSPYvyj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D3110E2DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 09:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714384409; x=1745920409;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HD5WyZ9bv1nsGyJeBA9ZAKXXvI3YjvFnU6UTX0mmKj4=;
 b=bfSPYvyj2BQ38lsHHYpxpGlUICDkWMbeZ+RqVLhJFO0lJIiLZZP0pETL
 MYHRS8EqhPjb349HHz0ZV/qLh1QQTytEhTwbdVVYA5JGxAqAmd28/xYWO
 g3SS6EH14t3XrBQ62805U7hW9MiAZPvawzw7oY3yaWI4Yl/ow2fFfhOAQ
 BZO3H+vmWoUxvfLOzV6zBBA3YW+qkUWlTgoIg5eM/+ejvzKDBJG8IRiEq
 7QveyAFjcO8TwvDGtVRYR8FK+gfcJmSqyTpo7jsOKN3FFxRWKR6f7OZ+W
 FpJVc+2h6swV3w169UP57K32WaQQQfSLDntf8V50Xuyucm8slrCjZPT2P Q==;
X-CSE-ConnectionGUID: s6y6q4y8Sfe3LHN0hN7Dgg==
X-CSE-MsgGUID: mUWwj127RUyVO5brXsGeHA==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="21453808"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="21453808"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 02:53:28 -0700
X-CSE-ConnectionGUID: dBW+NdweSd2qZLMzVwlAUg==
X-CSE-MsgGUID: 2HxpuucARC2jGEtHMroDIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26046808"
Received: from unknown (HELO intel.com) ([10.247.119.102])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 02:53:26 -0700
Date: Mon, 29 Apr 2024 11:53:17 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Chen, Angus" <angus.chen@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/mtl: Update workaround 14018778641
Message-ID: <Zi9uDRgtkT3IkTyG@ashyti-mobl2.lan>
References: <20240426073638.45775-1-angus.chen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240426073638.45775-1-angus.chen@intel.com>
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

Hi Angus,

...

> @@ -1586,6 +1586,8 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	 */
>  	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
>  
> +	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);

Can you please add the reference of the workaround in a comment
here?

Thanks,
Andi

> +
