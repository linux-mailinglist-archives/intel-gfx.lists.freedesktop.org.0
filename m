Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3566593D28D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 13:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A200110E96C;
	Fri, 26 Jul 2024 11:48:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lVdJJZml";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED5010E964;
 Fri, 26 Jul 2024 11:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721994485; x=1753530485;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hvz/eDqGzydNGR+9ROBDnZqJ7dQypt7GdqKezR0sb8U=;
 b=lVdJJZml3ilgpv+UkxR+OOSy6lfvmxuOnMIT/Nx8RoeiMfWCaSSwo40H
 aVAHeIHdSU53YTqn11ka+7cSNcY1Opv2hEpSeVas8Kjs91joBm6JwfdzK
 xCxk2Igffe3jJSpKYws5Yfdv9YTB2J1Kv6c9S+LLVID9icXkO0lSdd4Ep
 Xt6b65jwPE4iSh0Aji1tOijColPQBV67Z3CukBMO590vX6iQICApqqGZ4
 ZILaKTYoTyQK7IR1bTNpoKZdACkZBkKPhb8CNHQpgq0QeHVY3LPPc5S96
 5TxAco+n41Mzx6FDj9Fixd8hFS1lY8bXnimTub+ZMR6tZaz2m/gAGYI6w A==;
X-CSE-ConnectionGUID: DWdLfi9dQDS4DGz+taiNPA==
X-CSE-MsgGUID: BCmHoForSviB7QZlY51COA==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19920289"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="19920289"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 04:48:04 -0700
X-CSE-ConnectionGUID: G47HvtWiR1yi1WTHgj6bzQ==
X-CSE-MsgGUID: 0bxvo0ZFSa+8jF3jIurfbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="57831967"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmviesa004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2024 04:48:03 -0700
Date: Fri, 26 Jul 2024 13:48:00 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH i-g-t 2/2] tests/core_hotunplug: Fix inline comment on
 missing device nodes
Message-ID: <20240726114800.bgthg6axbcohfao3@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
References: <20240726084022.356654-4-janusz.krzysztofik@linux.intel.com>
 <20240726084022.356654-6-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240726084022.356654-6-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,
On 2024-07-26 at 10:34:57 +0200, Janusz Krzysztofik wrote:
> The comment incorrectly blames udev for being responsible for delays in
> re-creation of device nodes after driver rebind.  While that could be
> true many years ago, nowadays that's the role of kernel devtmpfs.

Thank you for clarification,

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/core_hotunplug.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/core_hotunplug.c b/tests/core_hotunplug.c
> index db7a5c5e84..145fe141ed 100644
> --- a/tests/core_hotunplug.c
> +++ b/tests/core_hotunplug.c
> @@ -480,7 +480,7 @@ static void node_healthcheck(struct hotunplug *priv, unsigned flags)
>  
>  static bool healthcheck(struct hotunplug *priv, bool recover)
>  {
> -	/* give udev some time to recreate device nodes before we continue */
> +	/* give devtmpfs some time to recreate device nodes before we continue */
>  	sleep(1);
>  
>  	/* device name may have changed, rebuild IGT device list */
> -- 
> 2.45.2
> 
