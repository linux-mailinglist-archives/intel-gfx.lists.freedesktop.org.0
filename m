Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E79BE9FD816
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 23:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 920B210E40C;
	Fri, 27 Dec 2024 22:51:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="lLmBXn/9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B4110E40C
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 22:51:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C65505C60DA;
 Fri, 27 Dec 2024 22:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90B15C4CED0;
 Fri, 27 Dec 2024 22:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1735339911;
 bh=ME90zdD6VYk0XiPST7RggRLzyktOpTz5tTkzTDJYu+w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lLmBXn/9UmusUEZgFg9ue5LsfKrB+IgR63XbIiKORw55wlcBMZfLXjecQwLxQky6w
 kNCXcO+MQSWKpd1nuBp6uKyaQSmuDZx5hn6N8ri1mLqcyifeH3SP/zEzkarbjlsT04
 7pEggruK/ek+pNyQ7/dRe21F+pk5VsQXpvk0PF9vxT8Ey8YsUozcTj2dZy7QjCaLLF
 rPgPDUXo2t0EKDKI5qXLA49o3nXVwxWxXgCCEi5Uk1NgpUbiVjiIlYSap+rqeNKzIr
 MXLth2i169beGe90VNvGSCBy42JBR3PKGiQoqhl2hTxCWR9thzyMykDJMbILt+0pso
 56nv2eMsjNvhg==
Date: Fri, 27 Dec 2024 23:51:46 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Tvrtko Ursulin <tursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org, 
 "Dr. David Alan Gilbert" <linux@treblig.org>
Subject: Re: [PATCH 2/3] drm/i915: Remove unused intel_huc_suspend
Message-ID: <f457gsabihhc7rkz3yyz5ggy77rfjchh53jyspkbfg2ubcmjwx@vj2sofcgvfsp>
References: <20241227113754.25871-1-tursulin@igalia.com>
 <20241227113754.25871-2-tursulin@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241227113754.25871-2-tursulin@igalia.com>
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

Hi,

On Fri, Dec 27, 2024 at 11:37:53AM +0000, Tvrtko Ursulin wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> intel_huc_suspend() was added in 2022 by
> commit 27536e03271d ("drm/i915/huc: track delayed HuC load with a
> fence")
> but hasn't been used.
> 
> Remove it.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
