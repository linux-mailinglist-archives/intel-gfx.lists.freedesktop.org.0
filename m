Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 117DD1C0C58
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 04:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26DBA6E28E;
	Fri,  1 May 2020 02:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAA516E211
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 02:55:19 +0000 (UTC)
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEED32137B;
 Fri,  1 May 2020 02:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588301719;
 bh=CfnIrlYtAOs7sDyfADJhisKJglxD7RBQjtJiwVgX+2A=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=GH4QRhnmJwa3Sl5ilD5HeCmDzJnIustWP8cJrLHrZwc7wpgPMqx7QkhVXR5fN7AeA
 NuWxDZ5i5oyUYD4/FLLuMA4gYiK4L4VPwTpHG66eD7S/+FbA6hQtEILE8//nWehfM+
 8JC9ySK+QnkguLy2BRAnMgB21Qx/5QI/tXku7k8Q=
Date: Fri, 01 May 2020 02:55:18 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200428085336.9580-1-chris@chris-wilson.co.uk>
References: <20200428085336.9580-1-chris@chris-wilson.co.uk>
Message-Id: <20200501025518.EEED32137B@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Avoid reusing the
 same logical CCID
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag
fixing commit: 2935ed5339c4 ("drm/i915: Remove logical HW ID").

The bot has tested the following trees: v5.6.7.

v5.6.7: Failed to apply! Possible dependencies:
    1883a0a4658e ("drm/i915: Track hw reported context runtime")
    35f3fd8182ba ("drm/i915/execlists: Workaround switching back to a completed context")
    489645d522df ("drm/i915/gt: Show the cumulative context runtime in engine debug")
    4c8ed8b12674 ("drm/i915/selftests: Exercise timeslice rewinding")
    4c977837ba29 ("drm/i915/execlists: Peek at the next submission for error interrupts")
    606727842d8b ("drm/i915/gt: Include the execlists CCID of each port in the engine dump")
    61f874d6e001 ("drm/i915/gt: Use scnprintf() for avoiding potential buffer overflow")
    6f280b133dc2 ("drm/i915/perf: Fix OA context id overlap with idle context id")
    70a76a9b8e9d ("drm/i915/gt: Hook up CS_MASTER_ERROR_INTERRUPT")
    8b6d457f9532 ("drm/i915/execlists: Include priority info in trace_ports")
    b4892e440432 ("drm/i915: Make define for lrc state offset")
    b4d3acaa7333 ("drm/i915/gt: Pull sseu context updates under gt")
    c4e8ba739034 ("drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore")
    ff3d4ff6c9e6 ("drm/i915/gt: Tidy repetition in declaring gen8+ interrupts")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
