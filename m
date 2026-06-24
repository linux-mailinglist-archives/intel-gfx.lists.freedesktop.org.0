Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vTvZFnWwO2p0bQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 12:24:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C826BD500
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 12:24:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Jlk8v4VG;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22E3B10E05C;
	Wed, 24 Jun 2026 10:24:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 780B010E05C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2026 10:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782296689; x=1813832689;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=5Mey65aFEMMsVLYRqQkLW5v1sN0ij2YCq1EqZjWXdng=;
 b=Jlk8v4VGUTMKDpiu8p6bis5uS7MjUo2y1eXU8T2AvLNPG+rFQN705rw7
 V9B62TNgLSYN8X9xTG+UT9OJDB5qSFonVc/+xa+ACCB/rw62F6my1JQEa
 ickYpGt8O9XM6eqvnyNjFs6zTUuO2G54BJxYq5JP0YapP61Gh1mg1Gp66
 3KU9eQRXuyokEg4HoFwOHnUIOrTIwj+6Rk4C76jk3TCmTDqeHy3jjPoIe
 R8iTR1XtQ8g/Pz63UhPpwh2M5rBRQCA4+dB9uQ/26wLJHALuOPBZNkhof
 iy83Da02+BAxLf2V/oBxC9MnAjP2NjP/9MG/0Txh2wZ1RsiCtp73a5veC w==;
X-CSE-ConnectionGUID: Zxii9xnPRBGYCRiSGX0gWA==
X-CSE-MsgGUID: XPnjNEsfSjqxKJ1oT3Ukjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="93651636"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="93651636"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 03:24:49 -0700
X-CSE-ConnectionGUID: 9yUWxfg3QY+DmmslQGYWdw==
X-CSE-MsgGUID: QHjZWvbwRI6DZnFG3U7AgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="243420969"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.147])
 by fmviesa009-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2026 03:24:47 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <DJH67X9IJD3J.1YRKHO7I0JSZF@intel.com>
References: <20260624090940.74840-1-joonas.lahtinen@linux.intel.com>
 <DJH67X9IJD3J.1YRKHO7I0JSZF@intel.com>
Subject: Re: [PATCH] drm/i915: Return NULL on error in active_instance
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Martin Hodo <martin.hodo@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas =?utf-8?q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Simona Vetter <simona.vetter@ffwll.ch>, stable@vger.kernel.org
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Date: Wed, 24 Jun 2026 13:24:44 +0300
Message-ID: <178229668435.102045.3320967434448969310@jlahtine-mobl>
User-Agent: alot/0.13.dev2+g40c57d620
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:martin.hodo@intel.com,m:maarten.lankhorst@linux.intel.com,m:thomas.hellstrom@linux.intel.com,m:simona.vetter@ffwll.ch,m:stable@vger.kernel.org,m:sebastian.brzezinka@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:from_mime,intel.com:dkim,jlahtine-mobl:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B0C826BD500

Quoting Sebastian Brzezinka (2026-06-24 12:27:07)
> Hi,
> On Wed Jun 24, 2026 at 11:09 AM CEST, Joonas Lahtinen wrote:
> > Avoid returning &node->base when node is NULL due to OOM
> > during GFP_ATOMIC allocation.
> >
> > Discovered using AI-assisted static analysis confirmed by
> > Intel Product Security.

<SNIP>

> > +++ b/drivers/gpu/drm/i915/i915_active.c
> > @@ -318,7 +318,7 @@ active_instance(struct i915_active *ref, u64 idx)
> >        */
> >       node =3D kmem_cache_alloc(slab_cache, GFP_ATOMIC);
> >       if (!node)
> > -             goto out;
> > +             goto err;
> just a nit: this jump is not neccesery, you could return early.

We specifically want to embrace the onion error handling idiom with goto
rather than doing the spinlock release inline here.

Preferred error handling should look more like:

	if (!try_lock(lock))
		goto err;

	mem =3D alloc();
	if (!mem)
		goto err_lock;

	if (!bla_bla(mem, bar))
		goto err_mem;

	...

err_mem:
	free(mem);
err_lock:
	unlock(lock);
err:
	return ret;

Rather than:

	if (!try_lock(lock))
		return ret;

	mem =3D alloc();
	if (!mem)
	{
		unlock(lock);
		return ret;
	}

	if (!bla_bla(mem, bar))
	{
		free(mem);
		unlock(lock);
		return ret;
	}

	...

Regards, Joonas
