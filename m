Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 612BC8t5T2r4hgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 12:36:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE6472FB18
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 12:36:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=tFae9DUV;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=z29gMTuQ;
	dmarc=pass (policy=none) header.from=linutronix.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 709C810E573;
	Thu,  9 Jul 2026 10:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8A710E55B;
 Thu,  9 Jul 2026 10:36:53 +0000 (UTC)
Date: Thu, 9 Jul 2026 12:36:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1783593411;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aeYVkDXbtSM1dfv57a5zyvpbgCuNmt8hZyk+ddryLsw=;
 b=tFae9DUVxDfeCfGJObLEeT8zCTCaQbRSeQiGjk6PNykJ5CvyNqBoZTVmSPjzm72LoMROuZ
 loTpCsUbp5RowSzaaw2o378BQbiKyWJAamd9rntqZaKeiD0L6wL9Yb3Wp1HGg/+gsLykZi
 R6FaKhPagdaqFw+1iIB8OjNUYgqfOyA0NY2/rm1GyKWxCqktj/rRcv1OkRtNhkw8CbeY7V
 HdcImlpf8YrNdBU2sFQNgxDFAfbtMAKD2ziYCK0uc9q5LDPrh9B7no1CRYSWzXlMjzn2ZX
 hmILgxYNUXu/KHijhF+/d3QRR3Ak/WFmA/SSCAiOks6p6YMnh8NhfbZIHCV5lA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1783593411;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aeYVkDXbtSM1dfv57a5zyvpbgCuNmt8hZyk+ddryLsw=;
 b=z29gMTuQSJ84uETZONIxOxF2wIw8/IgpRSUwyuOfKxrUWppnqY1zJGwhHElCWeJOOotrIh
 /Wf6xrXa7IS8ymDA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 4/7] drm/i915/gt: Fix selftests on PREEMPT_RT
Message-ID: <20260709103650.VxAAiEnx@linutronix.de>
References: <20260706114823.752313-1-dev@lankhorst.se>
 <20260706114823.752313-5-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260706114823.752313-5-dev@lankhorst.se>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:email,lists.freedesktop.org:from_smtp,linutronix.de:from_mime,linutronix.de:dkim,linutronix.de:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EEE6472FB18

On 2026-07-06 13:48:20 [+0200], Maarten Lankhorst wrote:
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/d=
rm/i915/gt/selftest_engine_pm.c
> index 10e556a7eac45..c1eff9edd8a5e 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> @@ -277,11 +277,11 @@ static int live_engine_busy_stats(void *arg)
>  		st_engine_heartbeat_disable(engine);
> =20
>  		ENGINE_TRACE(engine, "measuring idle time\n");
> -		preempt_disable();
> +		migrate_disable();
>  		de =3D intel_engine_get_busy_time(engine, &t[0]);

this change has been made probably due to guc_engine_busyness(). Looking
at execlists_engine_busyness() then there is a seqcount_t and the writer
side does local_irq_disable() during the update so this should work.
The comment says the writer is serialized but I don't see how (maybe
there is just one). So=E2=80=A6

Sebastian
