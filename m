Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGFNEmrqAWpHmQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 009675105D3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0904110E7A5;
	Mon, 11 May 2026 14:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=proton.me header.i=@proton.me header.b="eE686EVL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 428 seconds by postgrey-1.36 at gabe;
 Thu, 07 May 2026 12:30:03 UTC
Received: from mail-244103.protonmail.ch (mail-244103.protonmail.ch
 [109.224.244.103])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B934010E00C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 12:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
 s=rf6dlxadgragpeknl2zvhwifqq.protonmail; t=1778156569; x=1778415769;
 bh=yXyy/1avikG//9PNJ0NYNRcQ/+6OhcdCpQSlhFY4bVQ=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=eE686EVLPG9E3IvxDNMtZPAUgQnZvjYhBtGeYCeLsfCNrwyUOwDYNTExiom1wb1Vv
 qxf5nbN2AYwB+PjB6b4dqbRmwRB6HO9ooY5fYpYBLWpa0Jrj4sc5E1DnxJYfqEFebE
 pjq0qImRlNPXZuB/Kjwt4l0RDL2eqGnBDNaN2Fa6Zw9J60dvsjbk8K/SC9kyx70guD
 zRaMFJ8yT4aNrsf/KcU9MiDUzcCrQfOd+3neh79Rt+4WHcxEvs/Xro0+zBG7mfowTX
 HKw6d77yk6g1BGDajPKTBLEZHfo54YyENhNsf1cmjFijEBhEN7yZf+DNbhP37d96Ie
 XL4adMF90c2LQ==
Date: Thu, 07 May 2026 12:22:42 +0000
To: Thomas Zimmermann <tzimmermann@suse.de>
From: Aditya Garg <gargaditya08@proton.me>
Cc: mripard@kernel.org, maarten.lankhorst@linux.intel.com, airlied@redhat.com,
 airlied@gmail.com, simona@ffwll.ch, admin@kodeit.net, paul@crapouillou.net,
 zack.rusin@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mips@vger.kernel.org, virtualization@lists.linux.dev
Subject: Re: [PATCH 05/10] drm/appletbdrm: Allocate request/response buffers
 in begin_fb_access
Message-ID: <G66ElwoYASE3O3RpWWuKm9V5LNUTUtjJ_lGUsDxN3EujU3wsp3vpT-KcXMsrFfYEZkBwq9TNaD3Pc2g4oaueu4B-JXN3PTCoNGY999s5WHU=@proton.me>
In-Reply-To: <20260507075725.29738-6-tzimmermann@suse.de>
References: <20260507075725.29738-1-tzimmermann@suse.de>
 <20260507075725.29738-6-tzimmermann@suse.de>
Feedback-ID: 145777226:user:proton
X-Pm-Message-ID: 809317f98a9202275d5c4ae88ce01ca05792218d
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 11 May 2026 14:40:35 +0000
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
X-Rspamd-Queue-Id: 009675105D3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[proton.me : SPF not aligned (strict), No valid DKIM,quarantine];
	DATE_IN_PAST(1.00)[98];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,redhat.com,gmail.com,ffwll.ch,kodeit.net,crapouillou.net,broadcom.com,lists.freedesktop.org,vger.kernel.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tzimmermann@suse.de,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@redhat.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:admin@kodeit.net,m:paul@crapouillou.net,m:zack.rusin@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:dri-devel@lists.freedesktop.org,m:linux-hyperv@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-mips@vger.kernel.org,m:virtualization@lists.linux.dev,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[gargaditya08@proton.me,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gargaditya08@proton.me,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.772];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,proton.me:email,proton.me:mid]
X-Rspamd-Action: no action

On Thursday, May 7th, 2026 at 1:27 PM, Thomas Zimmermann <tzimmermann@suse.=
de> wrote:

> In atomic_check, damage handling is not fully evaluated. Another
> atomic_check helper could trigger a full modeset and thus invalidate
> damage clips.
>=20
> Allocation of the request/response buffers in appletbdrm depends on
> correct damage information. Otherwise it might allocate incorrectly
> sized buffers. Allocate the buffers in the driver's begin_fb_access
> helper. It runs early during the commit when damage clipping has been
> fully evaluated.
>=20
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Acked-by: Aditya Garg <gargaditya08@proton.me>
