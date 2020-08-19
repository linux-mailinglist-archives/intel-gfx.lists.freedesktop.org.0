Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C23EA24AA0A
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 01:56:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36076E87D;
	Wed, 19 Aug 2020 23:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00876E87D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 23:56:28 +0000 (UTC)
Received: from localhost (unknown [70.37.104.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D18F20B1F;
 Wed, 19 Aug 2020 23:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597881388;
 bh=77hXGu43RjQWqtXacJ5Ho6ThUb08Bxt7MQIkbsEQOCI=;
 h=Date:From:To:To:To:Cc:Cc:Subject:In-Reply-To:References:From;
 b=kE30hggNaT7xd11ywnekRskeUaQ9hkxuGA/qAvuMVJ1DkiasT6xzlgnOkUHFvyUbI
 iconCyLGPe3UmKEeVsIlkWvp5ChhHDlNmWNeYy8KZkeOek2jG7+pLIBFnKmdWTkBLB
 /ZQP93Uek22BoD9+JtWToKAKt+NOjkpb7JOjZtGs=
Date: Wed, 19 Aug 2020 23:56:27 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200812223621.22292-3-chris@chris-wilson.co.uk>
References: <20200812223621.22292-3-chris@chris-wilson.co.uk>
Message-Id: <20200819235628.5D18F20B1F@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gem: Always test execution
 status on closing the context
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
fixing commit: 9a40bddd47ca ("drm/i915/gt: Expose heartbeat interval via sysfs").

The bot has tested the following trees: v5.8.1, v5.7.15.

v5.8.1: Failed to apply! Possible dependencies:
    1b90e4a43b74 ("drm/i915/selftests: Enable selftesting of busy-stats")
    2d3879950f8a ("drm/i915: Add psr_safest_params")
    4fe13f28d66a ("drm/i915/selftests: Add tests for timeslicing virtual engines")
    67a64e51ba92 ("drm/i915/selftests: Refactor sibling selection")
    8a25c4be583d ("drm/i915/params: switch to device specific parameters")
    9199c070cdde ("drm/i915/selftests: Exercise far preemption rollbacks")
    ad6586850b6d ("drm/i915/selftests: Change priority overflow detection")
    d4b02a4c613e ("drm/i915/selftests: Trim execlists runtime")
    f4bb45f72734 ("drm/i915: Trim set_timer_ms() intervals")

v5.7.15: Failed to apply! Possible dependencies:
    0c1abaa7fbfb ("drm: Constify adjusted_mode a bit")
    13ea6db2cf24 ("drm/i915/edp: Ignore short pulse when panel powered off")
    3dfd8d710419 ("drm/i915/display: use struct drm_device based logging")
    81b55ef1f47b ("drm/i915: drop a bunch of superfluous inlines")
    8a25c4be583d ("drm/i915/params: switch to device specific parameters")
    af67009c1439 ("drm/i915/dp: use struct drm_device based logging")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
