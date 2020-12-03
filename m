Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C31782CE210
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 23:48:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6E806EC50;
	Thu,  3 Dec 2020 22:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A3F6EC50
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 22:48:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23208394-1500050 for multiple; Thu, 03 Dec 2020 22:48:17 +0000
MIME-Version: 1.0
In-Reply-To: <20201203223849.17350-1-chris@chris-wilson.co.uk>
References: <20201203223849.17350-1-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 03 Dec 2020 22:48:15 +0000
Message-ID: <160703569519.6805.8869429300654552221@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop sampling rc6 from inside
 pmu_enable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-12-03 22:38:49)
> Since rc6 is sampling the device registers, we try to acquire the device
> wakeref. However, since i915_pmu_enable may be called from hardirq, we
> cannot actually wake the device up. So let's not, and hope our gt wake
> tracking is accurate.

    drm/i915/pmu: Correct the rc6 offset upon enabling

    The rc6 residency starts ticking from 0 from BIOS POST, but the kernel
    starts measuring the time from its boot. If we start measuruing
    I915_PMU_RC6_RESIDENCY while the GT is idle, we start our sampling from
    0 and then upon first activity (park/unpark) add in all the rc6
    residency since boot. After the first park with the sampler engaged, the
    sleep/active counters are aligned.

    v2: With a wakeref to be sure

    Closes: https://gitlab.freedesktop.org/drm/intel/issues/973

Hmm. Take 2.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
