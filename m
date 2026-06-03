Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +LkLF+dXIGpk1gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 18:35:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E556F639CD7
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 18:35:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=pTSkEWWz;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=bootlin.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7940F1120DB;
	Wed,  3 Jun 2026 16:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B49CE1120E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2026 16:35:48 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id F13334E4010C;
 Wed,  3 Jun 2026 16:35:46 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id A75F65FA0F;
 Wed,  3 Jun 2026 16:35:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 214D110888CCD; 
 Wed,  3 Jun 2026 18:35:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1780504545; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=qU8KjorMFSCGfaBYoqMdn7y1itPV8ycA5Ml2oxKrIgM=;
 b=pTSkEWWzfyLOuLrHtm97ZF7/TeK/p7taRdgGhaKvoO1zf6872KsfitNyeAFsIrXJtJ4rV4
 U6gXeUM2+2FHFw2bdwYln9ZH/XKLvLlScIlv56+mefGoda95Uyz/TcOcU5RFD88KYqfekq
 1uCHhp2UQEkdIcbbyLXyVL7N/gkhM7zG8kUg2wPKDRY/xdGak2IUBVa4aSj0A1c8vSzRnU
 B8tQzadHLNsZrz4iKLZ4ZBUyloGCCBtN8v40CiNEVVbdhhgMiyxpJP/J8m646QzO4I1lHk
 twGw990PkXXyqsuKnP74dtgfK49ryzL2WHIaxk5jnu0EjQ1ba2jL9eN4UCKR8g==
Date: Wed, 3 Jun 2026 18:35:38 +0200
From: Kory Maincent <kory.maincent@bootlin.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Chris
 Wilson <chris@chris-wilson.co.uk>, Eric Anholt <eric@anholt.net>, Dave
 Airlie <airlied@redhat.com>, Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Louis Chauvet
 <louis.chauvet@bootlin.com>, Mark Yacoub <markyacoub@google.com>, Sean Paul
 <seanpaul@google.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Simona Vetter <simona.vetter@ffwll.ch>,
 stable@vger.kernel.org
Subject: Re: [PATCH 0/3] drm/i915: Fix double cleanup in error paths
Message-ID: <20260603183538.656b6444@kmaincent-XPS-13-7390>
In-Reply-To: <20260603-fix_i915-v1-0-7479ff64e705@bootlin.com>
References: <20260603-fix_i915-v1-0-7479ff64e705@bootlin.com>
Organization: bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:chris@chris-wilson.co.uk,m:eric@anholt.net,m:airlied@redhat.com,m:jbarnes@virtuousgeek.org,m:thomas.petazzoni@bootlin.com,m:louis.chauvet@bootlin.com,m:markyacoub@google.com,m:seanpaul@google.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:simona.vetter@ffwll.ch,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,chris-wilson.co.uk,anholt.net,redhat.com,virtuousgeek.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:url,bootlin.com:from_mime,bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E556F639CD7

On Wed, 03 Jun 2026 10:59:51 +0200
Kory Maincent <kory.maincent@bootlin.com> wrote:

> Several error paths in the i915 driver incorrectly invoke cleanup
> functions multiple times, potentially causing double-free errors.
> This series corrects these paths to ensure cleanup is performed
> only once.
>=20
> Testing note: Only the DisplayPort fix has been hardware tested due
> to lack of available hardware for the other components.

Don't pay attention to this series.
I missed the point that if drm_encoder/connector_cleanup() are called it wi=
ll
remove the encoder/connector from the DRM core list, therefore the destroy
callback will be never called. Which means no double cleanup path.
Sorry for the noise.

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com
