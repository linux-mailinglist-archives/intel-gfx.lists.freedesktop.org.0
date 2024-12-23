Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 481789FB4A2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2024 20:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7FF510E247;
	Mon, 23 Dec 2024 19:18:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="rR+E2b4n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7FC510E247
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2024 19:18:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 940B5A4119B;
 Mon, 23 Dec 2024 19:17:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6866C4CED3;
 Mon, 23 Dec 2024 19:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1734981530;
 bh=SvlWKYABnZY0jvjAp3siDGS2K1BVypUQt368RBAYOKA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rR+E2b4n4gEOG8kayXyJcjT2E3MJeCzH4gvitdO/bhCHGUuhNvqFUCqKwkip1vzQy
 /NaLYWb88Nr794tfXkKQWuSrjP8K2EAOgeEVB60NmeAmynkMTcBWE03dUsdF3yF5S5
 bSvxFPDpFBgwNEpKTb77Z7gij5nQzMIQd9Gdyv0rxmrNruvsVqQ0VqfLLP727IPqSl
 Apmoz29Qca8eg9jVdz7aprbsFiZsv+G6F1cun+XZ31xNbrPiv1o8qL8Gh8Xr6faLv/
 G32j89VYofeEuGjgDmghNY20zmRd1I1h2hqFY6KBci95ILdNixnAo1ujbaxwBuy84Q
 bCIUY01DFuHjA==
Date: Mon, 23 Dec 2024 20:18:46 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH RESEND v2] drm/i915/gt: Log reason for setting TAINT_WARN
 at reset
Message-ID: <c66ibuhmcte6fu5vkdrl73icqts4yzlwlui4qolrlw5yaxxu6q@vqhtozsh5d46>
References: <20241220131714.1309483-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241220131714.1309483-1-andi.shyti@linux.intel.com>
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

Hi Sebastian,

On Fri, Dec 20, 2024 at 02:17:14PM +0100, Andi Shyti wrote:
> From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> 
> TAINT_WARN is used to notify CI about non-recoverable failures, which
> require device to be restarted. In some cases, there is no sufficient
> information about the reason for the restart. The test runner is just
> killed, and DUT is rebooted, logging only 'probe with driver i915 failed
> with error -4' to dmesg.
> 
> Printing error to dmesg before TAINT_WARN, would explain why the device
> has been restarted, and what caused the malfunction in the first place.
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>

it's hard to receive green lights from CI. Anyway, I merged it to
drm-intel-gt-next since all the failures look completely
unrelated.

Thanks for your patch,
Andi
