Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0EE1C0C5F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 04:55:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F239D6E442;
	Fri,  1 May 2020 02:55:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A16306E442
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 02:55:27 +0000 (UTC)
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5462721775;
 Fri,  1 May 2020 02:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588301727;
 bh=rtxLTLaAVwNzQf+fMXmwlP8FIq4ep4XneNxZVzT4GaM=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=yZCeJEFZepLOlIqwoMzPPfRioJluWSNw0Rb1F/VFMUo9Rg9g4ckW8MLVmLpUN007u
 74iFCFXgUST7J3SVCgERw1N1HQK3o6JqmXjmuMQlbiU1Uo24t9ozDSHB65C/9UlW90
 Jjck7R1pOarfDrD1pMDW53BWvj4ojk35VSeNpbfs=
Date: Fri, 01 May 2020 02:55:26 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200427174122.13415-1-chris@chris-wilson.co.uk>
References: <20200427174122.13415-1-chris@chris-wilson.co.uk>
Message-Id: <20200501025527.5462721775@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Avoid reusing the same
 logical CC_ID
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
    03d0ed8a8e93 ("drm/i915: Skip capturing errors from internal contexts")
    1883a0a4658e ("drm/i915: Track hw reported context runtime")
    6f280b133dc2 ("drm/i915/perf: Fix OA context id overlap with idle context id")
    70a76a9b8e9d ("drm/i915/gt: Hook up CS_MASTER_ERROR_INTERRUPT")
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
