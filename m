Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F50C7D75E2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 22:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C09C510E0FF;
	Wed, 25 Oct 2023 20:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF82A10E0FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 20:39:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 75937CE3B3E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 20:38:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28372C433C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 20:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1698266337;
 bh=FhhnyopK4VZcRmT7LUGpB4JnstSjdf0zgIWh3ff6zh0=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=AIhzrnKhbWUMFJ4oFi4GLPzXnP6ObqIUIoYl0Kb0xFdxrRtsgqC9jdfTUlHOTw0be
 xFdZ4Ce+opgECYQYH9Pn/No/OTwX/1x915iAUazr2XCOJlFjHBd33I/iscQ3d0oRXA
 XIGtlFW0u6bkC9G8kQHOXnLJN5jrdSr36zmbudpL65Gha3TDIf46qYaBnjhJJy6kHI
 HiACg2pHhRzNUUmpJQtt6bM2vXusLwYMDDtN/VuJSdbmrtw8UuOqdIHu6+WmDYKzKf
 SJM476qZyZuHBCustG7XNd1NN9nTWRyJKnWmTuAuJzYiDt1cHFCOjniBpth3qvSPmQ
 UIqcb2GIEmF1A==
Date: Wed, 25 Oct 2023 22:38:53 +0200
From: Christian Brauner <brauner@kernel.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20231025-ersichtlich-getan-a7b1a0ed7d08@brauner>
References: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
 <169826498379.20487.7678246160343879388@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <169826498379.20487.7678246160343879388@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBm?=
 =?utf-8?q?ile=2C_i915=3A_fix_file_reference_for_mmap=5Fsingleton=28=29y?=
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

On Wed, Oct 25, 2023 at 08:16:23PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: file, i915: fix file reference for mmap_singleton()
> URL   : https://patchwork.freedesktop.org/series/125570/
> State : failure
> 
> == Summary ==
> 
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/125570/revisions/1/mbox/ not applied
> Applying: file, i915: fix file reference for mmap_singleton()
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/i915/gem/i915_gem_mman.c
> M	fs/file.c
> M	include/linux/fs.h
> Falling back to patching base and 3-way merge...
> Auto-merging include/linux/fs.h
> CONFLICT (content): Merge conflict in include/linux/fs.h
> Auto-merging fs/file.c
> CONFLICT (content): Merge conflict in fs/file.c
> Auto-merging drivers/gpu/drm/i915/gem/i915_gem_mman.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_mman.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0001 file, i915: fix file reference for mmap_singleton()
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> Build failed, no error log produced

I'm not sure what tree you're testing on but please test on whatever is
in vfs.misc, I guess which has that patch.
git://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
