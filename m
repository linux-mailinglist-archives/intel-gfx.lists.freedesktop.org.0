Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF9AA0B0C2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 09:14:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3046C10E4C0;
	Mon, 13 Jan 2025 08:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="NhQ00wPQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 545BB10E4C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 08:14:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 3FB98A40C3E
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 08:12:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD20BC4CED6
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 08:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736756068;
 bh=/29FC4DaHiZSHDuASTZZMw3G6q4UmiJf6H38qNffACs=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=NhQ00wPQUJBFpS/714DSGDra3zv3sytSsTU6bb25IM/90AoBvIwPC7M1U/vdpqNo5
 IQ9KcPrua7NbyTqcROEZ43NcvkOFcTyUXvSVM5erFgiM6u1OtaiEaPGkvVErNd6uAB
 rfCBKtguNZGYz7oJduUlQckbvkBQ3MtcAVG4AS/HiOBmJSCuZT/czw/4exIarMxuVd
 +CAEUMr3gZGcF/PsmvtzeqX4he7HwcHDvz8OiIA4RUb4cg0QlJBJxFXftYYNRboSD9
 y3I4fXBvAFsa8eI0Yn8agk+9Airyjaw9jHbalnXmAoQWQSqzewLUtUR36fxMTvxyS5
 8kVYUjNeShGCg==
Date: Mon, 13 Jan 2025 09:14:23 +0100
From: Joel Granados <joel.granados@kernel.org>
To: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_fo?=
 =?utf-8?Q?r?= treewide: const qualify ctl_tables where applicable (rev2)
Message-ID: <rny2547hrakwe43dtrqrfaocxrhnvkecm5k3yxqvhpbgr5ndlb@jeuartii3xuv>
References: <20250110-jag-ctl_table_const-v2-1-0000e1663144@kernel.org>
 <173652366306.1994997.10396543175013851173@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173652366306.1994997.10396543175013851173@b555e5b46a47>
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

On Fri, Jan 10, 2025 at 03:41:03PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: treewide: const qualify ctl_tables where applicable (rev2)
> URL   : https://patchwork.freedesktop.org/series/143332/
> State : warning
> 
> == Summary ==
> 
> Error: dim checkpatch failed
> cbf4e96c8900 treewide: const qualify ctl_tables where applicable
> -:27: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
Have adjusted the commit message to fit the 75 char restriction.

> #27: 
>     identifier table_name != {watchdog_hardlockup_sysctl,iwcm_ctl_table,ucma_ctl_table,memory_allocation_profiling_sysctls,loadpin_sysctl_table};
> 
> -:424: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
This was pre-existing
> #424: FILE: drivers/misc/sgi-xp/xpc_main.c:114:
>  };
> +static const struct ctl_table xpc_sys_xpc[] = {
> 
> -:1204: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
This was pre-existing
> #1204: FILE: kernel/stackleak.c:47:
>  }
> +static const struct ctl_table stackleak_sysctls[] = {
> 
> total: 0 errors, 1 warnings, 2 checks, 920 lines checked
> 
> 

-- 

Joel Granados
