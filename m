Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mESzOIZEUmp1NwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2026 15:26:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B392C741AA6
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2026 15:26:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aPCkOdEP;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B6510E373;
	Sat, 11 Jul 2026 13:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA6E10E1B6;
 Sat, 11 Jul 2026 13:26:23 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id E6A17601D9;
 Sat, 11 Jul 2026 13:26:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E3331F000E9;
 Sat, 11 Jul 2026 13:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1783776382;
 bh=fVjphaM/B3cY7EEbFuMGuyKiZiBk4vV629GclTQJJMg=;
 h=Date:Cc:To:From:Subject:References:In-Reply-To;
 b=aPCkOdEP19Svl46slzbLUVN6gRb91P4h3BWpj9bBDHNWrQYZye/fT7IbhOfPSYDFf
 r+5XCR61+a/C0T7mHFvbedM62i/xP2GT34cmrHvBXjEE2P8TPwf6/U8meC2leyisXs
 DwRrUoDqEfQTI4tNuOz4fDqCRkazjdeEpcuTF92/pYuVIJARQ9jMC8kCknoQoroUJi
 snEZQYtFHCOOUsb7Eld1n23rSxEJc1ioKEEQuyhs7Sl4w8vqUnjezFn79OnJ/Nax7z
 Wa7xVqEMMkwVy9kORE0Ovf3tHkRnuo7es6LQyuKLfZGiEl9XTnWk24eVb+jMhzZWXr
 P+GYpFStidKYQ==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sat, 11 Jul 2026 15:26:18 +0200
Message-Id: <DJVRYBLM3B94.MAUO8T8NXM5P@kernel.org>
Cc: <christian.koenig@amd.com>, <thomas.hellstrom@linux.intel.com>,
 <ecourtney@nvidia.com>, <simona@ffwll.ch>, <matthew.brost@intel.com>,
 <nat@pixelcluster.dev>, <airlied@gmail.com>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <amd-gfx@lists.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
From: "Danilo Krummrich" <dakr@kernel.org>
Subject: Re: [PATCH 09/12] drm/ttm: nuke buffer refcounting
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-10-christian.koenig@amd.com>
In-Reply-To: <20260710190752.2355-10-christian.koenig@amd.com>
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MV_CASE(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,linux.intel.com,nvidia.com,ffwll.ch,intel.com,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dakr@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B392C741AA6

On Fri Jul 10, 2026 at 8:52 PM CEST, =3D?UTF-8?q?Christian=3D20K=3DC3=3DB6n=
ig?=3D wrote:
> +/**
> + * ttm_bo_is_deleted - test if buffer is already deleted
> + * @bo: the struct ttm_buffer_object to test
> + *
> + * Returns true if the buffer is already deleted and only waiting for
> + * destruction.
> + */
> +static inline bool ttm_bo_is_deleted(struct ttm_buffer_object *bo)
> +{
> +	return !kref_read(&bo->base.refcount);
> +}

This is an anti-pattern, branch decisions cannot rely on an atomic referenc=
e
count unless additional invariants are upheld that otherwise guarantee that=
 the
read values does not instantly become meaningless.

Something like this should at least document in which context and under whi=
ch
conditions it is valid to rely on the returned value.
