Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4636F272443
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 14:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD766E15E;
	Mon, 21 Sep 2020 12:54:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D64936E15E
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 12:54:45 +0000 (UTC)
Received: from localhost (unknown [70.37.104.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 250D920874;
 Mon, 21 Sep 2020 12:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600692885;
 bh=3HQubua1JVZSbuiksHja1yPDGgphBllup5nvb5XngtM=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=1ym5/lRxm2lnN2eYU+cWZxzt8wO4hrOs7K30FDk4I4A/Ga31se+Pqnd5VCuDpGNXr
 MtIg7E/fN3MJmGOzjuYFI8pVkqYThNs2DTQl96a01Z8YpU8CKdfFIIi1Ssn0Ec7qxP
 sPcW1Owx5fzuqMkqXUHD+ejqana03DBUUmfS+KXk=
Date: Mon, 21 Sep 2020 12:54:44 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200916090059.3189-2-chris@chris-wilson.co.uk>
References: <20200916090059.3189-2-chris@chris-wilson.co.uk>
Message-Id: <20200921125445.250D920874@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Break up error capture
 compression loops with cond_resched()
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

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.8.10, v5.4.66, v4.19.146, v4.14.198, v4.9.236, v4.4.236.

v5.8.10: Build OK!
v5.4.66: Build OK!
v4.19.146: Build OK!
v4.14.198: Build OK!
v4.9.236: Failed to apply! Possible dependencies:
    0a97015d45ee ("drm/i915: Compress GPU objects in error state")
    83bc0f5b432f ("drm/i915: Handle incomplete Z_FINISH for compressed error states")
    95374d759ac7 ("drm/i915: Always use the GTT for error capture")
    98a2f411671f ("drm/i915: Allow disabling error capture")
    9f267eb8d2ea ("drm/i915: Stop the machine whilst capturing the GPU crash dump")
    d636951ec01b ("drm/i915: Cleanup instdone collection")
    fc4c79c37e82 ("drm/i915: Consolidate error object printing")

v4.4.236: Failed to apply! Possible dependencies:
    0a97015d45ee ("drm/i915: Compress GPU objects in error state")
    0bc40be85f33 ("drm/i915: Rename intel_engine_cs function parameters")
    688e6c725816 ("drm/i915: Slaughter the thundering i915_wait_request herd")
    755412e29c77 ("drm/i915: Add an optional selection from i915 of CONFIG_MMU_NOTIFIER")
    98a2f411671f ("drm/i915: Allow disabling error capture")
    ca82580c9cea ("drm/i915: Do not call API requiring struct_mutex where it is not available")
    cbdc12a9fc9d ("drm/i915: make A0 wa's applied to A1")
    e87a005d90c3 ("drm/i915: add helpers for platform specific revision id range checks")
    ef712bb4b700 ("drm/i915: remove parens around revision ids")
    fffda3f4fb49 ("drm/i915/bxt: add revision id for A1 stepping and use it")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
