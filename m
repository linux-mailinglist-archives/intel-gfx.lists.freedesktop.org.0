Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5B217D093
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Mar 2020 00:20:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81C5B6E266;
	Sat,  7 Mar 2020 23:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC686E266
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Mar 2020 23:20:32 +0000 (UTC)
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A51D2075E;
 Sat,  7 Mar 2020 23:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583623231;
 bh=2e9Uk9Ox7nQ3Ma8w5WA1dA9eAaWApX+Q35PkLEOPDbo=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=LId5YY7p03uuE/FdbMWyh4TL6WyEZUVWyqQ63yaT0AXJnTSE4ulUeigQvG5b+LtJd
 JNv6yl7Pz1Tr/uDUAL0e1DNa+WHAebRHSOAsx9TTPsm6b68oAfSpU3Fusu8ctREpqs
 1DjaWEXmNVVBwaqKCNXsNnxvmdnQN7JiN+2GScHc=
Date: Sat, 07 Mar 2020 23:20:30 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20200306133852.3420322-2-chris@chris-wilson.co.uk>
References: <20200306133852.3420322-2-chris@chris-wilson.co.uk>
Message-Id: <20200307232031.8A51D2075E@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH 02/17] drm/i915/execlists: Enable timeslice
 on partial virtual engine dequeue
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
Cc: stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag
fixing commit: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing").

The bot has tested the following trees: v5.5.8, v5.4.24.

v5.5.8: Build OK!
v5.4.24: Failed to apply! Possible dependencies:
    16ffe73c186b ("drm/i915/pmu: Use GT parked for estimating RC6 while asleep")
    253a774bb08b ("drm/i915/execlists: Don't merely skip submission if maybe timeslicing")
    3c00660db183 ("drm/i915/execlists: Assert tasklet is locked for process_csb()")
    42014f69bb23 ("drm/i915: Hook up GT power management")
    5d904e3c5d40 ("drm/i915: Pass in intel_gt at some for_each_engine sites")
    61fa60ff6e6a ("drm/i915: Move GT init to intel_gt.c")
    c113236718e8 ("drm/i915: Extract GT render sleep (rc6) management")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
