Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04853B5A0A2
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 20:37:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6933D10E097;
	Tue, 16 Sep 2025 18:37:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="VfMXSqG/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DF1310E3DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 18:37:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E8F5643F46;
 Tue, 16 Sep 2025 18:37:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E135C4CEEB;
 Tue, 16 Sep 2025 18:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758047836;
 bh=uZNzYbnMobWY+QykZ4WTqTR72hqNvnvoYs9ygOwBweU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VfMXSqG/J8Ygsl2+/uZU1iHZZa3OW9+E+KPN8SZJpir7n+K8w4aiXm7xBqBfH34un
 d9Sqql4SQSGK9EwhWgUc0aDkpsYJOYQiz6Pq2GSnVfwdY+SVZBjoutHCLosYp0CiH1
 gcOeJOcKowSA4SBmMWh5iE01DEnn2aO2TQfhjHy5MUpRg9l393B8HtROeSNOXx7G3C
 Wlyssw55oFrb5N5s1MixBgRTutUavCoOI9MsJUOGso3HBjHZqkOlXqNIHX15ucg8Go
 xRj+Tkzqo/D+ogyQwh7VST52JMsEaNzN1f+QfgCZuleVNXwNsWkLeNmh1qFOOcMlb7
 FTmPb6kUpz7Aw==
Date: Tue, 16 Sep 2025 08:37:15 -1000
From: Tejun Heo <tj@kernel.org>
To: pengdonglin <dolinux.peng@gmail.com>
Cc: tony.luck@intel.com, jani.nikula@linux.intel.com, ap420073@gmail.com,
 jv@jvosburgh.net, freude@linux.ibm.com, bcrl@kvack.org,
 trondmy@kernel.org, longman@redhat.com, kees@kernel.org,
 bigeasy@linutronix.de, hdanton@sina.com, paulmck@kernel.org,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 linux-nfs@vger.kernel.org, linux-aio@kvack.org,
 linux-fsdevel@vger.kernel.org,
 linux-security-module@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-wireless@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-s390@vger.kernel.org,
 cgroups@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 pengdonglin <pengdonglin@xiaomi.com>
Subject: Re: [PATCH v3 09/14] cgroup/cpuset: Remove redundant
 rcu_read_lock/unlock() in spin_lock
Message-ID: <aMmuW8VhLbPRWwwx@slm.duckdns.org>
References: <20250916044735.2316171-1-dolinux.peng@gmail.com>
 <20250916044735.2316171-10-dolinux.peng@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916044735.2316171-10-dolinux.peng@gmail.com>
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

On Tue, Sep 16, 2025 at 12:47:30PM +0800, pengdonglin wrote:
> From: pengdonglin <pengdonglin@xiaomi.com>
> 
> Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side function definitions")
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
> Cc: Waiman Long <longman@redhat.com>
> Cc: Johannes Weiner <hannes@cmpxchg.org>
> Acked-by: Waiman Long <longman@redhat.com>
> Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
> Signed-off-by: pengdonglin <dolinux.peng@gmail.com>

Applied to cgroup/for-6.18.

Thanks.

-- 
tejun
