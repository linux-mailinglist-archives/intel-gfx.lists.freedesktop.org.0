Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 657E01588D2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 04:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319FB6E7D0;
	Tue, 11 Feb 2020 03:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97CB96E7D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 03:31:48 +0000 (UTC)
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38C1A20838;
 Tue, 11 Feb 2020 03:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581391908;
 bh=yCBBKcGHrzJyqTk3nldWaVYdcvQox0zU/zsZqfq6uMo=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=fhH+cEDsOJy81wX78b00zYPIoixEsimNF1bSKn4hTb+N7W/JoynaQZradug5DoSZm
 t7ubRb8ScxD7J/mz7saLMW08regKfJfsrcrj8MO8N8ddAKZJqNI8JSXKZl+Y2VQ9Km
 TCowu6bFvUq95GHyfid85c7LmR7mVdrSsB4bVS6E=
Date: Tue, 11 Feb 2020 03:31:47 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200207211452.2860634-1-chris@chris-wilson.co.uk>
References: <20200207211452.2860634-1-chris@chris-wilson.co.uk>
Message-Id: <20200211033148.38C1A20838@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Always force a context
 reload when rewinding RING_TAIL
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
Cc: , stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing").

The bot has tested the following trees: v5.5.2, v5.4.18.

v5.5.2: Failed to apply! Possible dependencies:
    05975cd9eb84 ("drm/i915: Remove vestigal i915_gem_context locals from cmdparser")
    32d94048b988 ("drm/i915/gem: Prepare gen7 cmdparser for async execution")
    3cd6e8860ecd ("drm/i915/gen7: Re-enable full-ppgtt for ivb & hsw")
    51696691aba3 ("drm/i915/gem: Tidy up error handling for eb_parse()")
    755bf8a8c985 ("drm/i915: Remove redundant parameters from intel_engine_cmd_parser")
    9f3ccd40acf4 ("drm/i915: Drop GEM context as a direct link from i915_request")
    b291ce0a168b ("drm/i915/gem: Purge the sudden reappearance of i915_gem_object_pin()")
    cd30a5031704 ("drm/i915/gem: Excise the per-batch whitelist from the context")
    f70de8d2ca6b ("drm/i915/gt: Track the context validity explicitly")
    f997056d5b17 ("drm/i915/gt: Push the flush_pd before the set-context")
    fc4f125d958f ("drm/i915/gem: Embed context/timeline name inside the GEM context")

v5.4.18: Failed to apply! Possible dependencies:
    08fff7aeddc9 ("drm/i915/tgl: Wa_1607138340")
    0b718ba1e884 ("drm/i915/gtt: Downgrade Cherryview back to aliasing-ppgtt")
    253a774bb08b ("drm/i915/execlists: Don't merely skip submission if maybe timeslicing")
    3c00660db183 ("drm/i915/execlists: Assert tasklet is locked for process_csb()")
    42014f69bb23 ("drm/i915: Hook up GT power management")
    5bf05dc58d65 ("drm/i915/tgl: Register state context definition for Gen12")
    5d904e3c5d40 ("drm/i915: Pass in intel_gt at some for_each_engine sites")
    7dc56af5260e ("drm/i915/selftests: Verify the LRC register layout between init and HW")
    82c69bf58650 ("drm/i915/gt: Detect if we miss WaIdleLiteRestore")
    c113236718e8 ("drm/i915: Extract GT render sleep (rc6) management")
    cdb736fa8b8b ("drm/i915: Use engine relative LRIs on context setup")
    eaef5b3c4113 ("drm/i915: Refactor instdone loops on new subslice functions")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
