Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3C573D812
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 08:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D0C210E07B;
	Mon, 26 Jun 2023 06:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA5C810E07B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 06:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687762513; x=1719298513;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=SsfO0+1T0wDaadjWyw6hzJ9vDhVeR0jI3/zPV+N4Vt8=;
 b=gA9mwnOfy8lyW0YiPT0a7UWHjipS0pGUo2BYS/0stDXz8++ru/LUR4zA
 CW9mIgBLiC0cqtIcZwOg5SwOcRQKXwjtqICYoG0OZvqkVITnPvFyJ/B8V
 xuR8h/BQRFJ26YMiditwkef0zr1tQq9k/mbe7HrE9/J4Aq7DX9KQABdLk
 dioCSrE23ufBjNbBb7RoAZb+QGgaZjJk98YBPytlRz8BofUzCWk29POQ/
 sy2MiOdYGjUNGnwIIU+eZ0yuVm07vev6r7YML4trzOfULSJY3j4y0/TFt
 Tt1Bndm6b5bjh0hTPK7OrPWFyUlgBHzbiDLf/B4Zani3wVlUEb2LuCPqs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="424865173"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="424865173"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2023 23:55:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="716002682"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="716002682"
Received: from mkomuves-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.201])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2023 23:55:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
Date: Mon, 26 Jun 2023 09:54:55 +0300
Message-ID: <87mt0myaps.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add header file for
 struct seq_file
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

On Mon, 26 Jun 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> With change [1], visibility of struct seq_file is lost in
> intel_display_power.h leading to build errors. Add header
> file explicitly to restore visibility.
>
> [1] ef104443bffa ("procfs: consolidate arch_report_meminfo declaration")
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index be1a87bde0c9..888993079a7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -6,6 +6,8 @@
>  #ifndef __INTEL_DISPLAY_POWER_H__
>  #define __INTEL_DISPLAY_POWER_H__
>  
> +#include <linux/seq_file.h>
> +

Always prefer a forward declaration over an include when it's
sufficient.

BR,
Jani.


>  #include "intel_wakeref.h"
>  
>  enum aux_ch;

-- 
Jani Nikula, Intel Open Source Graphics Center
