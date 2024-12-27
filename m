Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 407D49FD815
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 23:51:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DEE910E2F5;
	Fri, 27 Dec 2024 22:51:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="EUBB/n2i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3ED510E2F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 22:51:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 4E58EA41606;
 Fri, 27 Dec 2024 22:49:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24984C4CED0;
 Fri, 27 Dec 2024 22:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1735339870;
 bh=7O6wUEPl2hwoW072VnzeVLftNcHwVXWEo1xy3w6Fmnk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EUBB/n2ifab2Nnui+z/AsRairwdCF1+ixMLF1gwIjVcmS92B0ujxqv+YI2lhD+W2q
 NQjJr3hqe1nxNqZ7MDmZjwQHEy1O5fkHlGaCT/V59g5omi/G2ODAj91wtM/GuEW/5E
 OSV+dkNK5BivGAI8bQcKoOnN2yL6rOJP2XtzCy+yI2sF7X+pvyX+tZek0rFiHHK/M0
 zPv6q/mZpC1cfCzGOl/bnZW5QEzJezcL9gtf0v2312IdyHwk9epKhGuUQ8ayVQXdwz
 Kg+j3DmqpsL7cYqk8CRvZhgxhtPf5JN94gsALqDT1tAi1VQMn55hU3mUA6QvUCSFVL
 sq7ID7Dc2m9Aw==
Date: Fri, 27 Dec 2024 23:51:07 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Tvrtko Ursulin <tursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org, 
 "Dr. David Alan Gilbert" <linux@treblig.org>
Subject: Re: [PATCH 1/3] drm/i915: Remove deadcode
Message-ID: <djzse76t3gc6cf5dcgb3mazijtzvs2qspicyuph4hxcffvdsw7@v35hi2umhkdt>
References: <20241227113754.25871-1-tursulin@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241227113754.25871-1-tursulin@igalia.com>
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

BTW...

On Fri, Dec 27, 2024 at 11:37:52AM +0000, Tvrtko Ursulin wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> i915_active_acquire_for_context() was added in 2020 by
> commit 5d9341370f57 ("drm/i915: Export a preallocate variant of
> i915_active_acquire()") but has never been used.
> 
> The last use of __i915_gem_object_is_lmem() was removed in 2021 by
> commit ff20afc4cee7 ("drm/i915: Update error capture code to avoid using
> the current vma state")
> 
> Remove them.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
