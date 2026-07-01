Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4TVwN2MsRWrf8AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:04:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 640226EF180
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:04:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZFHTizPR;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA27610E3AC;
	Wed,  1 Jul 2026 15:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DA4310E3AC;
 Wed,  1 Jul 2026 15:04:00 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id EE43E6001D;
 Wed,  1 Jul 2026 15:03:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C5081F000E9;
 Wed,  1 Jul 2026 15:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782918239;
 bh=zk1agxCFt6nBM0rrZXtqvdO2lHxzgZTETSU2JH6M4JQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=ZFHTizPRHQweZY4aMchzZQHYcXubYszoHd/c8wNEcJTbsm7FIqbir23niTe0zpqde
 UTc4ZRMUFiJQHzVSjL5NFdUDZK+xgg0KyKZ9umuLXaqDKFTQjklRJ/qPHHyLS0YpQm
 szo68Jd4qddjgjPli5zXcNiCaRODPrSuPKTgTuj1JaeVe1hvc1fvuOcmlumbT+YQan
 kXhvhO76xsEefJYJKtw04NVI+d3MsLOd+25b4N8bkgf3eZvnzc/983oX4NaLc4+ZZ8
 jaFVSRa2hIT5JYk9V4rGbub5PVk+GYdlx9pi1AgU7RS6yRljC60pVx3O/JKUoxagwW
 TJjmW3k/tKXXw==
Date: Wed, 1 Jul 2026 17:03:53 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>, 
 Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>, Martin Hodo <martin.hodo@intel.com>, 
 Faith Ekstrand <faith.ekstrand@collabora.com>,
 Simona Vetter <simona.vetter@ffwll.ch>, 
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/gem: Fix NULL deref in I915_CONTEXT_PARAM_SSEU
Message-ID: <akUqglq2Do3FF1GH@zenone.zhora.eu>
References: <20260701075555.52142-1-joonas.lahtinen@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260701075555.52142-1-joonas.lahtinen@linux.intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,intel.com:email,zenone.zhora.eu:mid,igalia.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 640226EF180

Hi Joonas,

On Wed, Jul 01, 2026 at 10:55:55AM +0300, Joonas Lahtinen wrote:
> Setting context engine slot N into I915_ENGINE_CLASS_INVALID /
> I915_ENGINE_CLASS_INVALID_NONE and attempting to apply
> I915_CONTEXT_PARAM_SSEU to the same slot N will deref NULL.
> Fix that.
> 
> Discovered using AI-assisted static analysis confirmed by
> Intel Product Security.
> 
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle create parameters (v5)")
> Cc: Faith Ekstrand <faith.ekstrand@collabora.com>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.15+
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
