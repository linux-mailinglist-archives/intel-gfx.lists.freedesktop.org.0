Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 802EAC64553
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 14:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB83710E37C;
	Mon, 17 Nov 2025 13:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=toke.dk header.i=@toke.dk header.b="OER8VvtA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 387 seconds by postgrey-1.36 at gabe;
 Mon, 17 Nov 2025 11:53:41 UTC
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E48D510E05C
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Nov 2025 11:53:41 +0000 (UTC)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1763380031; bh=18AThoJ1F5XQlVvAYjRYKKUnjnNDdRj8jhe5/a7p0Ss=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=OER8VvtAWTP0L0fklHIXgvMbFN6jQ42q7ikGcR7PT1lfcpE+sk1vaFPlgwmYfxh2u
 Pq0y/kJUlVETtENUzSDWBD29nZ2oAwTrefvL8GaBT/YWNG1U5Mjq4+u8N2zaMvWGEW
 D0+efZ3KilUrlzGa4RTfgyZqCWS8ZZBaKN5UMhTzrzKUnNddCaSBPAq9WMvcT+Ds69
 3092p0XYV87EDLK8QwERXg2JcshEZMZcTB0vts1w1Xkp4t6mwezRfsELFuLCBJODqY
 ihba2OAwwWb9Fs/T1FQnHaijPFLuUVe/E+WYicL9bzWdCRfMuTnCXAFDCbIwAZWgF0
 sOcUAGdTe3FmA==
To: pengdonglin <dolinux.peng@gmail.com>, tj@kernel.org,
 tony.luck@intel.com, jani.nikula@linux.intel.com, ap420073@gmail.com,
 jv@jvosburgh.net, freude@linux.ibm.com, bcrl@kvack.org,
 trondmy@kernel.org, longman@redhat.com, kees@kernel.org
Cc: bigeasy@linutronix.de, hdanton@sina.com, paulmck@kernel.org,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 linux-nfs@vger.kernel.org, linux-aio@kvack.org,
 linux-fsdevel@vger.kernel.org, linux-security-module@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-s390@vger.kernel.org, cgroups@vger.kernel.org, pengdonglin
 <dolinux.peng@gmail.com>, Jakub Kicinski <kuba@kernel.org>, pengdonglin
 <pengdonglin@xiaomi.com>
Subject: Re: [PATCH v3 14/14] wifi: ath9k: Remove redundant
 rcu_read_lock/unlock() in spin_lock
In-Reply-To: <20250916044735.2316171-15-dolinux.peng@gmail.com>
References: <20250916044735.2316171-1-dolinux.peng@gmail.com>
 <20250916044735.2316171-15-dolinux.peng@gmail.com>
Date: Mon, 17 Nov 2025 12:47:07 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87fracop8k.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 17 Nov 2025 13:23:35 +0000
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

pengdonglin <dolinux.peng@gmail.com> writes:

> From: pengdonglin <pengdonglin@xiaomi.com>
>
> Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side funct=
ion definitions")
> there is no difference between rcu_read_lock(), rcu_read_lock_bh() and
> rcu_read_lock_sched() in terms of RCU read section and the relevant grace
> period. That means that spin_lock(), which implies rcu_read_lock_sched(),
> also implies rcu_read_lock().
>
> There is no need no explicitly start a RCU read section if one has already
> been started implicitly by spin_lock().
>
> Simplify the code and remove the inner rcu_read_lock() invocation.
>
> Cc: "Toke" <toke@toke.dk>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
> Signed-off-by: pengdonglin <dolinux.peng@gmail.com>

Acked-by: Toke H=C3=B8iland-J=C3=B8rgensen <toke@toke.dk>

