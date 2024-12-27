Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C76249FD817
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 23:52:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7291A10E40E;
	Fri, 27 Dec 2024 22:52:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="VBNrLNJu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B15010E40E
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 22:52:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 5CADEA41A7B;
 Fri, 27 Dec 2024 22:50:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 367E8C4CED0;
 Fri, 27 Dec 2024 22:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1735339956;
 bh=RcuMVkDnwaa7G4tTX/z3KG1pwWiw8J0cQnwJMAwoQPo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VBNrLNJucqzGMx/CNLJpikch4WdCgfLfgPfGzE5WViuHEmrQ/puWY+phw8NMJ/JAg
 oYPmHK12prpI1DDCAKO3MYRvAG6tSdQqBMCmtNHh+yqbUsTH1VAGipq4M2wwNL1TMk
 PhVXwC6tn2+qVj21JFHOx8kaffMBYu/hrLbEzFF/6jqNSg7iI8yWT2VW/loDOqHA2y
 AEiMvk9FQQusQT/81W60ql62kYoU14nMCZUTVOEw8AdOKCYJzat9tnWHluEV9POakA
 5/kIgZ97Gss4e4IhxjNTaHtQbwtyPIWgjmbx+UDD6mKfuCB3wJJ1h3jlr6YPoRyXim
 xRu6FrkbVWepA==
Date: Fri, 27 Dec 2024 23:52:33 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Tvrtko Ursulin <tursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org, 
 "Dr. David Alan Gilbert" <linux@treblig.org>
Subject: Re: [PATCH 3/3] drm/i915: Remove unused intel_ring_cacheline_align
Message-ID: <aoypc2myv2urpermqnz2m2nm4hdjunekqo32r3en5mstuktdzy@nu7lfn6geiip>
References: <20241227113754.25871-1-tursulin@igalia.com>
 <20241227113754.25871-3-tursulin@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241227113754.25871-3-tursulin@igalia.com>
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

On Fri, Dec 27, 2024 at 11:37:54AM +0000, Tvrtko Ursulin wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> The last use of intel_ring_cacheline_align() was removed in 2017 by
> commit afa8ce5b3080 ("drm/i915: Nuke legacy flip queueing code")
> 
> Remove it.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
