Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A720C746D47
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 11:25:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7A010E2D2;
	Tue,  4 Jul 2023 09:25:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA2510E2C2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 09:25:42 +0000 (UTC)
Date: Tue, 4 Jul 2023 11:25:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1688462736;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qPnlV1qPV+FX8QsFJRDWzuCP7fOxJePUcEoo+JgtoPs=;
 b=lp21xsRQj2oKCzfdJmcUc1FSy0uY8z3gLG3hShsOf0roe3BWiQj/kve1KTUWYkIrpYCcYK
 QwOQ89UXgt50/CmoD6I8JHKvE2nbhohfT5PniziHjyf2HhpZb12YDkIOApgfIMiODJYutR
 20dJ2ps8Rt8658KiH/XcjtQGDyJeg1SIMN3hgCaBUWc07HChNPXOwunr+9jUVqsYCzN/sj
 d9cmKy6iS6DL5z3zRv07L34FnFS5n0Vzk1qOTIZBrvlNguBZkMsY/3LQOY6LdrumnhZT6O
 9AUsSZh5n3a91hknIVbLJB8ARleXzGmjU+up3QXv4uAvSkJzJRfsEGWQKyPxYA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1688462736;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qPnlV1qPV+FX8QsFJRDWzuCP7fOxJePUcEoo+JgtoPs=;
 b=aMWtnbWJe0xZRfzZFBVo+Yz/KKBAFcoweeZhIKJWwU+3Hj+G7uK8qfv6gktPaluvIOvK90
 ZXKoVqzOg9RFcUBQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230704092532.k-Fi14oC@linutronix.de>
References: <20230630130949.coN0sVU4@linutronix.de>
 <5af9b5cb-2342-8de3-07f2-86f2be6201eb@linux.intel.com>
 <20230703161256.21Qmrm9d@linutronix.de>
 <bf4658a8-cf10-92c1-5e48-d674ad0e5c46@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <bf4658a8-cf10-92c1-5e48-d674ad0e5c46@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC] tentative fix for drm/i915/gt regression on
 preempt-rt
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
Cc: linux-rt-users@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Paul Gortmaker <paul.gortmaker@windriver.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-07-04 09:02:07 [+0100], Tvrtko Ursulin wrote:

> Lets make it a two patch series and then see. First patch to see if we can
> really get away without the top level preempt_disable, and then second patch
> to see if we can get away with preemptible short sleeps too.
oki.

> I guess on RT the top priority is consistent scheduling latency and not so
> much potential UI latency in some edge cases? Saying that because if waiting
I would says, yes. If you do RT and you provide some kind of GUI then
you prefer to meet your deadlines for your RT load over some UI latency.

> on the hw reset is made preemptible, _in theory_ it can prolong the reset
> completion (as observed by i915), and so result in more UI glitching than it
> normally would. Could be a theoretical point only because it requires both
> CPU over-subscribe and GPU hangs. It could also easily be that the reset
> path is only one path, and not so interesting one even, which can cause this
> on RT.

I see.

> Regards,
> 
> Tvrtko

Sebastian
