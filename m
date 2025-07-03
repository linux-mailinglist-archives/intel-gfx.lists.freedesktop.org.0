Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AA3AF6BB0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 09:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82FC910E7D8;
	Thu,  3 Jul 2025 07:35:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y2wINE11";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0F0610E7D8;
 Thu,  3 Jul 2025 07:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751528119; x=1783064119;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eVkDSUSOmhYCwFZcj8k+RQcfKVWejCY8R5X83AuWVoY=;
 b=Y2wINE11uBlvk6i4MDxRsDAzo0AkTHBoN4g6eOroJflJZYvRUeFWUQV2
 KMLY5NjhfMUMA6E8FZ5XvSRkE5tTR96lHJNAXi/sJNvC5JQh2DX7eVL6F
 FarVCHwqA0xNufDKDm3MpaEFbq5T7TaPRDGDTrmXQ8vSgWwFK4IhrvmUk
 g9HGPl3XcU5eeksDMgtFSTsobfQk7ehx93g4ESinO02assOUUYHnr1UrM
 33XDi4QiCJPWbXXgf0cHPflxKveEZfWQxwL9YmqsAgBMD/2jIrnh581Qt
 ZoK0TpuyyIdp8/tkECw6OGGTEZhoQ+u81AHNVmEIzGx8Oajj8z7eEIJud w==;
X-CSE-ConnectionGUID: 2Mj43SArStO0zrfWSaf4Qg==
X-CSE-MsgGUID: /G7HScfcT9+ORm9PG+he+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="41468450"
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="41468450"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 00:35:19 -0700
X-CSE-ConnectionGUID: 85mTc7kNQlioqoh3YdYgiQ==
X-CSE-MsgGUID: 9wMarVKlRIeF/opHEnt7Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="185231901"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 00:35:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: ryszard.knop@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH topic/core-for-CI] Revert "ftrace: Allow configuring
 global trace buffer size (for dump-on-oops)"
In-Reply-To: <20250630151728.316208-2-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250630151728.316208-2-lucas.demarchi@intel.com>
Date: Thu, 03 Jul 2025 10:35:13 +0300
Message-ID: <bad8ddb51d688adef738973cdc12916f7c022aae@intel.com>
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

On Mon, 30 Jun 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> This reverts commit 41e750b906022da3e4fb9dc57bc17670a340ad23.
>
> It's not used in CI anymore, probably for a very long time. So we don't
> need maintain this in topic/core-for-CI.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  kernel/trace/Kconfig | 7 -------
>  kernel/trace/trace.c | 4 +++-
>  2 files changed, 3 insertions(+), 8 deletions(-)
>
> diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
> index 012db82731e29..a3f35c7d83b6c 100644
> --- a/kernel/trace/Kconfig
> +++ b/kernel/trace/Kconfig
> @@ -176,13 +176,6 @@ config TRACING
>  	select TRACE_CLOCK
>  	select NEED_TASKS_RCU
>  
> -config GLOBAL_TRACE_BUF_SIZE
> -	int
> -	prompt "Global ftrace buffer size (for trace_printk)" if EXPERT
> -	range 0 4194034
> -	default 1441792 # 16384 * 88 (sizeof(struct print_entry))
> -	depends on TRACING
> -
>  config GENERIC_TRACER
>  	bool
>  	select TRACING
> diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
> index dc8ac10db04f2..95ae7c4e58357 100644
> --- a/kernel/trace/trace.c
> +++ b/kernel/trace/trace.c
> @@ -950,7 +950,9 @@ int tracing_is_enabled(void)
>   * to not have to wait for all that output. Anyway this can be
>   * boot time and run time configurable.
>   */
> -static unsigned long		trace_buf_size = CONFIG_GLOBAL_TRACE_BUF_SIZE;
> +#define TRACE_BUF_SIZE_DEFAULT	1441792UL /* 16384 * 88 (sizeof(entry)) */
> +
> +static unsigned long		trace_buf_size = TRACE_BUF_SIZE_DEFAULT;
>  
>  /* trace_types holds a link list of available tracers. */
>  static struct tracer		*trace_types __read_mostly;

-- 
Jani Nikula, Intel
