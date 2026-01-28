Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KZqEJAfemmv2wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:39:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D19B0A2EFD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:39:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C38E110E70D;
	Wed, 28 Jan 2026 14:39:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ix8aF/8U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BAE310E637
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 10:12:51 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-b8871718b00so803537566b.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jan 2026 02:12:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769595170; cv=none;
 d=google.com; s=arc-20240605;
 b=WpqkxvvFBGjsTc1LTUheSDiOiIUPP6aoTFImJlXJsKNrxARL+3qXD+4+zTlLX5Efs8
 yypHMkxabt3KNtorw4khejGjM5P7YGYRJUEdl2+RBchg2Echf13zwNH0vAqARVDiZmSW
 AZFYDnuwuJMlySGBhzUOGJxjwCX5p/RXUUp1L5tTPa+hSV3X8avgBnnRgTgNZzpCx46E
 qTyRbvY6Q3D5IaVFC8UKK56cWQpMdDvjymYycnCQFlrD6zvd2P/kISpBy+rKnMoPk1tS
 PrKeJ07Tt6+PEcblBg+Xjxw695JBotMNdtotfxUS3InvCTJJpoopAnkQvklXKzEgsm+3
 OBMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=bMedHKTUpCrDiRDvfRSiyuvj598CtJ0UHh+4Yb6z/KE=;
 fh=Fxo/1u0wyYibam+nk2jkhZbO21IGLFZX7R4d6DL4loI=;
 b=K+/ofAtQw27yJ0vU/OWioBIfNRHyJRDgQe0tyvOJFJMICNLE7CPuzUCyBFafq01uNF
 L8ng795LszQYdZ+kvQn4jLxe6ETs1MOBZ96tfDX2hseWRFkWgcb/gk8IWz95UFJ0Po3m
 D/YYESbrRn8itWfiTzl6fT4Ax37rcnq2y8pm/7DXE06mcIUFiylUMCCXYzAhMNH9ryFt
 s3UVl68FlH2BbfTp/ehVW+624LQuIzx5X2r5N/0Lw4VNix4CkYMFgjHPpbjyRmsulU7M
 +Ob3F0bXn9lw5fOhzl0IPAygGOtlAHrWkd+WyOiWiUehbgR7cSr4qFSV2rRp1ZECeZDf
 wpHA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769595170; x=1770199970; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=bMedHKTUpCrDiRDvfRSiyuvj598CtJ0UHh+4Yb6z/KE=;
 b=ix8aF/8UbRfRtuLD0oNVGX3wqVMnJgDyhtQHagQpQn2yc9TMpRExTq1cbRTai0Bh1f
 nj1x2/h+TrBFaXV+WOJy8rEMOb7EjIchrZcKTdskWvR+YloWIoKm33fV5ZO4ERa8xDZu
 Og7TIYe6swwQ+W9KY4970RP1v4M6b0ZfzHZZKvfpnCTUagd3wQgmUQYraGX29RVAVd3r
 kvOgLqbHzOCgv3Ld2i0oPaFjXQQL3AZBhEth8HgWw1C3HbbHnvA8NG9kzsb+YEdo3G2b
 PY2jF9vBDYCZ5iGr4vnQkCF3Cm7IlCWwe7/yKbarF9D2SlKPp9zI3076sbap0H9j+e5M
 TjFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769595170; x=1770199970;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bMedHKTUpCrDiRDvfRSiyuvj598CtJ0UHh+4Yb6z/KE=;
 b=qkX0eIWWBo1pjiudWL6hiZmx+c28GIYNm/giyZ3jy0TENy7sLGOieWYOrI9+tOzcpA
 CTsGDx5EZiDmNrceChqgCiLPqMnLimyfSQ4tErrhfZQqDGhDA9j0lHeCyaMXmF/IxNI6
 CPWJhJbyNb4CAv46ln948vwNumfIEjpRqpMviz+t5oNAF200YdbDyq+G1KrAzPssPuim
 aR3KxqmThROXkmfVBdTnnq9snximo5y/Ni7qqC+NaO91dTQV8SsiJvmWDdYW4XhEQYgp
 Lyoq7vd6D0LDsSBryJUkVXLmOYgv2X2/d5OWqx4q1MyQf2DcUMcUoZZnUxhgfTsCfBMC
 h+/Q==
X-Gm-Message-State: AOJu0YxryQzNk7rcKFMZr3JseVjpEoR1rlTTpVROvnysv9onxA2GcwB0
 p0GzfGMhFSGCyMiM+IAkepXJX5iaXBaGpW33u7Rj4gOb6C9Nl7fFyHpaphXQd9XAlCdvvMDPVg3
 sPI6kYcY9fboQq3lMP2kEpt0ArwwIwRHvzQZuJ7k=
X-Gm-Gg: AZuq6aJ9NUdRZ1CYx1Cj4vsUkxZHRBTCnSSJ9j8cI8srFsxwtDsATXTpEEdgxL/keJ7
 UwJeEGQavTka3gfTDEiVuxQUIv8JFtmmJk9MeqW7nMUf3BDdY1qdHUGLGwBkH/Z/QpCIqIT802Y
 rjfsQPKZ0+Sp1ERDgvHnNDHjHNLo0fOnhm9QJMdY1hVBiO4lvoqq6F0kZr2X43dndSlwd227wvD
 OyFeeKB7wsQgKs81vIjkHm584kMMML9THsFyyUlyMqKdl18f1V6F+LAYVKIWV3s430r1+sP7aWB
 pZ06rHKa6AfvbdKCwZ05muUoGYap+avY/hCI
X-Received: by 2002:a17:907:d8a:b0:b87:1db0:a4af with SMTP id
 a640c23a62f3a-b8dab3d2070mr331673166b.64.1769595169561; Wed, 28 Jan 2026
 02:12:49 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?SsOpcsO0bWUgVG9sbGV0?= <jerome.tollet@gmail.com>
Date: Wed, 28 Jan 2026 11:12:38 +0100
X-Gm-Features: AZwV_Qi5IJZzyfbalJKUw-lxWLXc_rxLSxVrj2V4y3PXP6uciNAbFVtk3M-HhXc
Message-ID: <CADN_a6Ne4Vr6knCXdKtCnB8=et6OK7PEZ8F5bpyGamwyv1K9GA@mail.gmail.com>
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 28 Jan 2026 14:39:06 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.60 / 15.00];
	FAKE_REPLY(1.00)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D19B0A2EFD
X-Rspamd-Action: no action

Hi Ville,
Following Ankit's response on January 21st where he suggested
considering a panel-specific quirk instead of a generic solution, I
wanted to get your input on the preferred approach.
As a reminder, testing showed the delay works at any placement in the
modeset sequence (all 4 test positions succeeded), suggesting this is
a timing issue rather than being tied to a specific operation.

Three approaches are available:
1. Generic SCDC polling after port enable - aligns with Windows
behavior which also performs ~200ms SCDC poll post-enable
2. Panel-specific quirk for affected displays (Cisco Desk Pro in my case)
3. Fixed delay after SCDC config (my v2 patch from Jan 14)

I'm happy with any approach that gets merged.

Thanks
Jerome
