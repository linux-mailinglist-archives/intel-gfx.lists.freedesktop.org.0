Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aB9QBftj62mtMAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:37:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BFA45E837
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 14:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F388410F56F;
	Fri, 24 Apr 2026 12:37:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gHaBXUc7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E21410E07B
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2026 15:52:13 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id
 2adb3069b0e04-5a3d1561e38so4792422e87.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2026 08:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776873131; x=1777477931; darn=lists.freedesktop.org;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
 :date:message-id:reply-to;
 bh=RNnGez9KIYhAWfYZKM7eASvp+SAAnmhGa5DxdGzAeNY=;
 b=gHaBXUc7NzsiSGA2cLFxlfjpVSUahJxA7TQx2Xgf42dIa7PEDbUtcQ5ilv87ovAvx+
 ciKNJy83fCIk5MuyRntlPD4ap8eFaMZ1rkXha+JSU1O4CppVkNTAi8ozOrXCmHG01tNG
 BjW4Imjef1q2ppROEjxUmUVQNTmpUIhmzlla9e6HOA/yDViXNCJfqeDMYHD6dbHO4wdY
 YQgAACZea45Q0X5GxAYl08t4bM7JWgIh9LvJFbrV1Xnvbv/nEfap7M6iM14mX7mqSx4F
 hVXM2fThSjcVRDy0rjr75CeoKtHNMOiga32C3Bj6I+ign6FsShLbISKpRuAh49juBWm3
 +pPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776873131; x=1777477931;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RNnGez9KIYhAWfYZKM7eASvp+SAAnmhGa5DxdGzAeNY=;
 b=np/oKTBYD8Qo3WepETCXq5g/3+WMB4vvZUgOhcBJzjZ0QfvNv2lQt1BAeRJ4tl+S9/
 Qu0DBBdX3B8sWrxmULY8dzO4jJFEAVOQYjs2XFLo3ggMzaW5jDHXvm335H7ibzjmI9bl
 i8SQpz1IOKD1YqxE7CbAYZUUin2zhpYnXUdkGScRJxUCweFDu8hUnJP4Y/Q29RCLUQSU
 2OFnS9fCV4fXX5sfYNreQR+bUNkbtvqlyNeaWpKE1VHCvJdur3I7eSBg4J6oZ4BtKd52
 sgAWJXgz/IHj7aUtvyB72crckgXhLdgh0SBl9Xs7jhfo0S0s9sIGD8fMXRrPIE11Mkss
 jIxg==
X-Forwarded-Encrypted: i=1;
 AFNElJ/R7A+L/ldUh/Kd6WB9Z4TcofwihJPAl20SaEaxASlLXJT82rV9YnXmUc0hHTvIJONxYr4p4b0DqDo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwtmYYJvTo2eYdJShv0VRspDKlHlUyTCwpL/TFfQDhEY4rFoO5u
 hOdQcTYrG+OdiEMxKGOu+haRNkatLQTp1KgVWMpuVKwO98NIFi4MFFPN
X-Gm-Gg: AeBDiets0+8dEBV2ZTEBDojE0nySBwfOsw7stSTjWRP6Nr9D5C5O/Yfr3dDyIusobLo
 jEP2DPVeX0p3Gv1mg6GyGYxq0CF7HWwK3eJy9rFlOqSajgNLXU9KJ5IGABv/Zi/7+HsJJT5MGpK
 hZhHNsdPxSl3dIN4b78+VlqOki9ZbV7AhxJCPbmskM2x8cL1swFbm5Mc2TDjqsP1nOR5kbvZEka
 PvOBZMVEJX6ROngy6XkT18ajxByX3XlsV/AOsTEJmQD71+P1lGSeIT4SCVSzH9ULaCMmnyqyqfL
 yTCN18Ii5R+U7L2SoCFHuywKsePro6wB1OssD3XVqBMWc5Xd/t2wf5BPBEiNeDLGSoGetN+7qKn
 ogsZ4fDfSbRZa68x4jdp/ATlFSqg47Seme3XuLjhqcsx7ZDMOiD1hwbd0geSSdQRUkA68ysMLIi
 n6EhhuKojkuGhesFaR2SRKJHu3ghXnZqxSo9A4aqUBAcfk5d363/ozDw==
X-Received: by 2002:a05:6512:6cf:b0:5a2:bebd:45b5 with SMTP id
 2adb3069b0e04-5a4172bb8efmr8192442e87.4.1776873130944; 
 Wed, 22 Apr 2026 08:52:10 -0700 (PDT)
Received: from primary-ws.local ([188.234.148.119])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185ad11fsm4480896e87.14.2026.04.22.08.52.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2026 08:52:10 -0700 (PDT)
Message-ID: <2a93eae0c4b364d44fffe3840dcbb0a60a1c6114.camel@gmail.com>
Subject: Re: Regression on linux-next (next-20260324 )
From: "mikhail.v.gavrilov@gmail.com" <mikhail.v.gavrilov@gmail.com>
To: Peter Zijlstra <peterz@infradead.org>, John Stultz <jstultz@google.com>
Cc: K Prateek Nayak <kprateek.nayak@amd.com>, "Borah, Chaitanya Kumar"	
 <chaitanya.kumar.borah@intel.com>, willy@infradead.org, 
 linux-kernel@vger.kernel.org, "intel-gfx@lists.freedesktop.org"	
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"	
 <intel-xe@lists.freedesktop.org>, "Kurmi, Suresh Kumar"	
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 ravitejax.veesam@intel.com
Date: Wed, 22 Apr 2026 20:52:08 +0500
In-Reply-To: <20260422092335.GH3102924@noisy.programming.kicks-ass.net>
References: <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
 <20260330195037.GW2872@noisy.programming.kicks-ass.net>
 <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
 <CANDhNCq=oizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdDWG8fRQ@mail.gmail.com>
 <20260421101521.GO3102624@noisy.programming.kicks-ass.net>
 <95651a71-1adf-45ba-83eb-5744bc6d4a52@amd.com>
 <20260421143752.GD1064669@noisy.programming.kicks-ass.net>
 <bc5e8c5c-fc9c-4efc-b1a9-98c43c6a8762@amd.com>
 <CANDhNCr-+x8pTLhXZW=ATHaKTYEmXMPukz4+t8P-FeJ11Jrz9Q@mail.gmail.com>
 <20260421205647.GL3126523@noisy.programming.kicks-ass.net>
 <20260422092335.GH3102924@noisy.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.1 (3.60.1-1.fc45) 
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 24 Apr 2026 12:37:08 +0000
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
X-Rspamd-Queue-Id: 95BFA45E837
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	DATE_IN_PAST(1.00)[44];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:peterz@infradead.org,m:jstultz@google.com,m:kprateek.nayak@amd.com,m:chaitanya.kumar.borah@intel.com,m:willy@infradead.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:suresh.kumar.kurmi@intel.com,m:jani.saarinen@intel.com,m:ravitejax.veesam@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER(0.00)[mikhailvgavrilov@gmail.com,intel-gfx-bounces@lists.freedesktop.org]

On Wed, 2026-04-22 at 11:23 +0200, Peter Zijlstra wrote:
>=20
> How's this? It 'passes' the ww_mutex selftest thing in so far as that
> I
> get the same:
>=20
> [=C2=A0=C2=A0=C2=A0 2.312369] Beginning ww (wound) mutex selftests
> [=C2=A0=C2=A0=C2=A0 4.853240] stress (stress_inorder_work) failed with -3=
5
> [=C2=A0=C2=A0=C2=A0 9.379572] Beginning ww (die) mutex selftests
> [=C2=A0=C2=A0 16.435831] All ww mutex selftests passed
>=20
> before the offending commit and after this patch.
>=20
> ---
> Subject: Subject: locking/mutex: Fix ww_mutex wait_list operations
> From: Peter Zijlstra <peterz@infradead.org>
> Date: Wed Apr 22 10:38:41 CEST 2026
>=20
> Chaitanya and John reported commit 25500ba7e77c ("locking/mutex:
> Remove the
> list_head from struct mutex") wrecked ww_mutex.
>=20
> Specifically there were 2 issues:
>=20
> =C2=A0- __ww_waiter_prev() had the termination condition wrong; it would
> terminate
> =C2=A0=C2=A0 when the previous entry was the first, which results in a
> truncated
> =C2=A0=C2=A0 iteration: W3, W2, (no W1).
>=20
> =C2=A0- __mutex_add_waiter(@pos !=3D NULL), as used by __ww_waiter_add() =
/
> =C2=A0=C2=A0 __ww_mutex_add_waiter(); this inserts @waiter before @pos (w=
hich
> is what
> =C2=A0=C2=A0 list_add_tail() does). But this should then also update lock=
-
> >first_waiter.
>=20
> Much thanks to Prateek for spotting the __mutex_add_waiter() issue!
>=20
> Fixes: 25500ba7e77c ("locking/mutex: Remove the list_head from struct
> mutex")
> Reported-by: "Borah, Chaitanya Kumar"
> <chaitanya.kumar.borah@intel.com>
> Closes:
> https://lore.kernel.org/r/af005996-05e9-4336-8450-d14ca652ba5d%40intel.co=
m
> Reported-by: John Stultz <jstultz@google.com>
> Closes:
> https://lore.kernel.org/r/CANDhNCq%3Doizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdD=
WG8fRQ%40mail.gmail.com
> Debugged-by: K Prateek Nayak <kprateek.nayak@amd.com>
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> ---
> =C2=A0kernel/locking/mutex.c=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 40 +++++++++=
++++++++++++++++++--------
> -----
> =C2=A0kernel/locking/ww_mutex.h |=C2=A0=C2=A0 34 ++++++++++++++++++++++++=
++++++++--
> =C2=A02 files changed, 59 insertions(+), 15 deletions(-)
>=20
> --- a/kernel/locking/mutex.c
> +++ b/kernel/locking/mutex.c
> @@ -198,27 +198,43 @@ static inline void __mutex_clear_flag(st
> =C2=A0}
> =C2=A0
> =C2=A0/*
> - * Add @waiter to a given location in the lock wait_list and set the
> - * FLAG_WAITERS flag if it's the first waiter.
> + * Add @waiter to the @lock wait_list and set the FLAG_WAITERS flag
> if it's
> + * the first waiter.
> + *
> + * When @pos, @waiter is added before the waiter indicated by @pos.
> Otherwise
> + * @waiter will be added to the tail of the list.
> =C2=A0 */
> =C2=A0static void
> =C2=A0__mutex_add_waiter(struct mutex *lock, struct mutex_waiter *waiter,
> -		=C2=A0=C2=A0 struct mutex_waiter *first)
> +		=C2=A0=C2=A0 struct mutex_waiter *pos)
> =C2=A0	__must_hold(&lock->wait_lock)
> =C2=A0{
> +	struct mutex_waiter *first =3D lock->first_waiter;
> +
> =C2=A0	hung_task_set_blocker(lock, BLOCKER_TYPE_MUTEX);
> =C2=A0	debug_mutex_add_waiter(lock, waiter, current);
> =C2=A0
> -	if (!first)
> -		first =3D lock->first_waiter;
> +	if (pos) {
> +		/*
> +		 * Insert @waiter before @pos.
> +		 */
> +		list_add_tail(&waiter->list, &pos->list);
> +		/*
> +		 * If @pos =3D=3D @first, then @waiter will be the new
> first.
> +		 */
> +		if (pos =3D=3D first)
> +			lock->first_waiter =3D waiter;
> +		return;
> +	}
> =C2=A0
> =C2=A0	if (first) {
> =C2=A0		list_add_tail(&waiter->list, &first->list);
> -	} else {
> -		INIT_LIST_HEAD(&waiter->list);
> -		lock->first_waiter =3D waiter;
> -		__mutex_set_flag(lock, MUTEX_FLAG_WAITERS);
> +		return;
> =C2=A0	}
> +
> +	INIT_LIST_HEAD(&waiter->list);
> +	lock->first_waiter =3D waiter;
> +	__mutex_set_flag(lock, MUTEX_FLAG_WAITERS);
> =C2=A0}
> =C2=A0
> =C2=A0static void
> @@ -229,10 +245,8 @@ __mutex_remove_waiter(struct mutex *lock
> =C2=A0		__mutex_clear_flag(lock, MUTEX_FLAGS);
> =C2=A0		lock->first_waiter =3D NULL;
> =C2=A0	} else {
> -		if (lock->first_waiter =3D=3D waiter) {
> -			lock->first_waiter =3D
> list_first_entry(&waiter->list,
> -							=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct
> mutex_waiter, list);
> -		}
> +		if (lock->first_waiter =3D=3D waiter)
> +			lock->first_waiter =3D list_next_entry(waiter,
> list);
> =C2=A0		list_del(&waiter->list);
> =C2=A0	}
> =C2=A0
> --- a/kernel/locking/ww_mutex.h
> +++ b/kernel/locking/ww_mutex.h
> @@ -6,6 +6,19 @@
> =C2=A0#define MUTEX_WAITER	mutex_waiter
> =C2=A0#define WAIT_LOCK	wait_lock
> =C2=A0
> +/*
> + *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +--------=
+
> + *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | first=
=C2=A0 |
> + *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +--------=
+
> + *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |
> + *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 v
> + *=C2=A0 +----+=C2=A0=C2=A0=C2=A0=C2=A0 +----+=C2=A0=C2=A0=C2=A0=C2=A0 +=
----+
> + *=C2=A0 | W3 | <-> | W1 | <-> | W2 |
> + *=C2=A0 +----+=C2=A0=C2=A0=C2=A0=C2=A0 +----+=C2=A0=C2=A0=C2=A0=C2=A0 +=
----+
> + *=C2=A0=C2=A0=C2=A0 ^=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^
> + *=C2=A0=C2=A0=C2=A0 +---------------------+
> + */
> +
> =C2=A0static inline struct mutex_waiter *
> =C2=A0__ww_waiter_first(struct mutex *lock)
> =C2=A0	__must_hold(&lock->wait_lock)
> @@ -13,26 +26,43 @@ __ww_waiter_first(struct mutex *lock)
> =C2=A0	return lock->first_waiter;
> =C2=A0}
> =C2=A0
> +/*
> + * for (cur =3D __ww_waiter_first(); cur; cur =3D __ww_waiter_next())
> + *
> + * Should iterate like: W1, W2, W3
> + */
> =C2=A0static inline struct mutex_waiter *
> =C2=A0__ww_waiter_next(struct mutex *lock, struct mutex_waiter *w)
> =C2=A0	__must_hold(&lock->wait_lock)
> =C2=A0{
> =C2=A0	w =3D list_next_entry(w, list);
> +	/*
> +	 * Terminate if the next entry is the first again, that has
> already
> +	 * been observed.
> +	 */
> =C2=A0	if (lock->first_waiter =3D=3D w)
> =C2=A0		return NULL;
> =C2=A0
> =C2=A0	return w;
> =C2=A0}
> =C2=A0
> +/*
> + * for (cur =3D __ww_waiter_last(); cur; cur =3D __ww_waiter_prev())
> + *
> + * Should iterate like: W3, W2, W1
> + */
> =C2=A0static inline struct mutex_waiter *
> =C2=A0__ww_waiter_prev(struct mutex *lock, struct mutex_waiter *w)
> =C2=A0	__must_hold(&lock->wait_lock)
> =C2=A0{
> -	w =3D list_prev_entry(w, list);
> +	/*
> +	 * Terminate at the first entry, the previous entry of first
> is the
> +	 * last and that has already been observed.
> +	 */
> =C2=A0	if (lock->first_waiter =3D=3D w)
> =C2=A0		return NULL;
> =C2=A0
> -	return w;
> +	return list_prev_entry(w, list);
> =C2=A0}
> =C2=A0
> =C2=A0static inline struct mutex_waiter *


Confirmed on an independent userspace-visible reproducer: Resident
Evil 2/3/4/9 under Proton on AMD Zen4 + RX 7900 XTX, which hangs
deterministically during level load on current master (main thread
parked in futex_waitv). With this patch applied on top of master,
both RE2 and RE9 complete a full playthrough with save-resume on two
independent workstations (ASUS and ASRock B650). No hang, no splats.

Symptom details and third bisect log are in the separate thread at
https://lore.kernel.org/r/CABXGCsO5fKq2nD9nO8yO1z50ZzgCPWqueNXHANjntaswoOh2=
Dg@mail.gmail.com

Tested-by: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>

--=20
Thanks,
Mikhail
