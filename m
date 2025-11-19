Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D95FDC6FE2C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 16:58:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E3910E667;
	Wed, 19 Nov 2025 15:58:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z+9p+amO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE5B910E667
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Nov 2025 15:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763567922; x=1795103922;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9di7HYCedPwABhA6ZWidkt8qgt3yhmf5iEtqEOAGqdg=;
 b=Z+9p+amOKZBKnB6ZiuvuIhpEK+vruiq4Qj6jTm/sKW6cs6ZrTdpz4ZtO
 tC/1AZNCj/sjqWOrN1l+Uq81A8GC6V9sffWovRG3UnTcDWo8HbsB/VErc
 9Ysr4+DHDrRtM6g/uOQ0dm0rLDouRb5NFejUFYiwpjzLGlXLiVa3rAnaa
 d81sOOSak3lujzf+pbhx5ayZYBF+xljfa1hK0qEucg5KjR00t8F2dvZxo
 /6iRY+cn9z7SZbMXIk5tXKmM3Z/g6BYy6kp5bdkwX7+li2Dr/xdp02hNq
 bUAaP0v4Gk+UREn4Hj1RND7FA8umhOkc56jCtXJH8R6cFYcrEtExLHOny Q==;
X-CSE-ConnectionGUID: KDtElqkFQR2AHeQCzLvBgA==
X-CSE-MsgGUID: OTP0EONATfCraRfKDwTKDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="76970566"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="76970566"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 07:58:41 -0800
X-CSE-ConnectionGUID: F0u/VBYtQBGRvmP7fwU56g==
X-CSE-MsgGUID: 8GrX693pR0WNrfFs1NfZ3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="190902462"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.203])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 07:58:38 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 andi.shyti@linux.intel.com, krzysztof.karas@intel.com,
 krzysztof.niemiec@intel.com, sebastian.brzezinka@intel.com
Cc: chris.p.wilson@intel.com, andi.shyti@linux.intel.com,
 krzysztof.karas@intel.com, krzysztof.niemiec@intel.com,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [RFC PATCH] drm/i915: Use rcu_dereference() in hwsp_offset()
Date: Wed, 19 Nov 2025 16:58:36 +0100
Message-ID: <3156762.xgJ6IN8ObU@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20251104113318.3823840-1-sebastian.brzezinka@intel.com>
References: <20251104113318.3823840-1-sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
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

Hi Sebastian,

On Tuesday, 4 November 2025 12:33:38 CET Sebastian Brzezinka wrote:
> Replace rcu_dereference_protected() with rcu_dereference() in
> hwsp_offset() since the function is called within an RCU read-side
> critical section. Using rcu_dereference() avoids unnecessary
> protection checks and aligns with correct RCU usage patterns.
>=20
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
> I noticed that the current implementation of hwsp_offset() uses rcu_deref=
erence_protected()
> when accessing rq->timeline. This seems to be a slight misuse of the API.
> rcu_dereference_protected() is intended for updater-side code, where we a=
re not holding
> rcu_read_lock() but instead rely on another lock that guarantees safety. =
The condition argument
> in this function acts more like an assertion that the caller holds the re=
quired lock.
> In our case, hwsp_offset() is called inside an RCU read-side critical sec=
tion, which means
> the correct primitive is rcu_dereference(). The original intent of the co=
ndition argument
> seems to have been to guard against use-after-free scenarios for timeline=
(?). However,
> rcu_dereference_protected() does not enforce that, it simply returns the =
pointer regardless
> of i915_request_signaled(), and in rare cases this pattern has led to iss=
ues such as:
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15181
> '''
> ...
> <4> [281.246503] drivers/gpu/drm/i915/gt/gen8_engine_cs.c:427 suspicious =
rcu_dereference_protected() usage!
> <4> [281.246506]
> other info that might help us debug this:
> <4> [281.246507]
> rcu_scheduler_active =3D 2, debug_locks =3D 1
> <4> [281.246509] 5 locks held by gem_exec_whispe/2308:
> <4> [281.246511]  #0: ffffc90002ae77c8 (reservation_ww_class_acquire){+.+=
=2E}-{0:0}, at: i915_gem_do_execbuffer+0xd2c/0x3710 [i915]
> <4> [281.246852]  #1: ffffc90002ae77f0 (reservation_ww_class_mutex){+.+.}=
=2D{3:3}, at: i915_gem_do_execbuffer+0xd2c/0x3710 [i915]
> <4> [281.247073]  #2: ffff8881e8a4a878 (&timeline->mutex){+.+.}-{3:3}, at=
: i915_request_create+0x61/0x200 [i915]
> <4> [281.247403]  #3: ffffffff83595560 (rcu_read_lock){....}-{1:2}, at: e=
xeclists_submission_tasklet+0x44/0x27b0 [i915]
> <4> [281.247592]  #4: ffff88812f0c2020 (&sched_engine->lock){-.-.}-{2:2},=
 at: execlists_submission_tasklet+0x20d/0x27b0 [i915]
> <4> [281.247787]
> stack backtrace:
> <4> [281.247789] CPU: 9 UID: 0 PID: 2308 Comm: gem_exec_whispe Tainted: G=
     U              6.17.0-CI_DRM_17306-gb3f121acbde4+ #1 PREEMPT(voluntary)
> <4> [281.247792] Tainted: [U]=3DUSER
> <4> [281.247792] Hardware name: Intel Corporation Rocket Lake Client Plat=
form/RocketLake S UDIMM 6L RVP, BIOS RKLSFWI1.R00.6062.A00.2502050210 02/05=
/2025
> <4> [281.247793] Call Trace:
> <4> [281.247794]  <IRQ>
> <4> [281.247796]  dump_stack_lvl+0x91/0xf0
> <4> [281.247802]  dump_stack+0x10/0x20
> <4> [281.247804]  lockdep_rcu_suspicious+0x151/0x1e0
> <4> [281.247811]  ? __i915_request_submit+0xb0/0x430 [i915]
> <4> [281.248010]  hwsp_offset+0x90/0xa0 [i915]
> <4> [281.248199]  gen12_emit_fini_breadcrumb_rcs+0xdf/0x480 [i915]
> <4> [281.248388]  ? __i915_request_submit+0xb0/0x430 [i915]
> <4> [281.248584]  __i915_request_submit+0x15b/0x430 [i915]
> <4> [281.248781]  execlists_submission_tasklet+0xdfa/0x27b0 [i915]
> <4> [281.248974]  ? mark_held_locks+0x46/0x90
> <4> [281.248982]  tasklet_action_common+0x166/0x410
> <4> [281.248988]  tasklet_hi_action+0x29/0x40
> <4> [281.248990]  handle_softirqs+0xd7/0x4d0
> <4> [281.248994]  ? __i915_request_queue+0x3f/0x80 [i915]
> <4> [281.249194]  __do_softirq+0x10/0x18
> <4> [281.249197]  do_softirq.part.0+0x47/0xd0
> ...
> '''
>=20
> This issue reproduces very rarely, and I haven=E2=80=99t been able to rep=
roduce it myself, so
> I=E2=80=99m not entirely sure why this scenario occurs why we attempt to =
emit a breadcrumb even
> when the request=E2=80=99s fence is already signaled. However, the correc=
t approach seems to be:
>  - Drop the use of rcu_dereference_protected() in this context, since it=
=E2=80=99s not providing
>    real safety here.
>  - Avoid emitting a breadcrumb at all when the request is already signale=
d, as
>    doing so appears unnecessary.
>=20
> My concern is that breadcrumbs seem to be emitted in __i915_request_submi=
t, which appears
> to be well-guarded against processing retried requests. This leaves me pu=
zzled about what=E2=80=99s
> actually happening here.
> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 3 +--
>  drivers/gpu/drm/i915/i915_request.c      | 2 +-
>  2 files changed, 2 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i=
915/gt/gen8_engine_cs.c
> index e9f65f27b53f..b799d423d306 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -424,8 +424,7 @@ static u32 hwsp_offset(const struct i915_request *rq)
>  	const struct intel_timeline *tl;
> =20
>  	/* Before the request is executed, the timeline is fixed */
> -	tl =3D rcu_dereference_protected(rq->timeline,
> -				       !i915_request_signaled(rq));

Whether rcu_dereference_protected() was misused or not, my understanding=20
is that rq->timeline shouldn't be dereferenced after the request has been=20
signaled, because that means the request has been already executed and=20
rq->timeline may have been already invalidated.  The complain from RCU=20
lockdep here means just that, I believe: the request was found already=20
signaled while it shouldn't, so the pointer should no longer be trusted. =20
I think that's the issue you should focus on, and try to identify its=20
root cause.

Thanks,
Janusz

> +	tl =3D rcu_dereference(rq->timeline);
> =20
>  	/* See the comment in i915_request_active_seqno(). */
>  	return page_mask_bits(tl->hwsp_offset) + offset_in_page(rq->hwsp_seqno);
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i=
915_request.c
> index b9a2b2194c8f..25a9e574149e 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -657,7 +657,7 @@ bool __i915_request_submit(struct i915_request *reque=
st)
>  	if (request->sched.semaphores &&
>  	    i915_sw_fence_signaled(&request->semaphore))
>  		engine->saturated |=3D request->sched.semaphores;
> -
> +	/*It seems that breadcrumbs are being emitted here.*/
>  	engine->emit_fini_breadcrumb(request,
>  				     request->ring->vaddr + request->postfix);
> =20
>=20




