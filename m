Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YM7wOncZ1mkxBAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 11:01:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B70B63B98B4
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 11:01:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3EAA10E5EB;
	Wed,  8 Apr 2026 09:01:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T8+7Mbc5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE00410E5EB;
 Wed,  8 Apr 2026 09:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775638892; x=1807174892;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=uKZCQo34WwlmfpZOYZIR7Sv75Pju735EOct5YRx+S8I=;
 b=T8+7Mbc5lvbZwkaO/eTjHHJMrXH6SXeHpvpkjZu6Njtg7F4rTLX2OX9o
 x9ceeqFr7ithtGJFqiiCXnoNYzhIQJj0n4+FovNdnXeqbtFfUNlxRRdXw
 36ob26rk4nWLXRfBeKZugqTwno/54Vd1kPkKiW3PP0mSYHtyjUjvUllQm
 M+T59Wcc1WA+sJvIi2oyH2jEDczbF2GdSMiLrU7kQl7ovZ8LmThbnWCns
 mu529CMYSf9Z7Tp/hFisF6y8qpt0pB3+vnEF0mMUg3iM5uXlsE4NZYt5m
 isUzKGww1AhYzvQYX/WSgqaCoikIiKT5bEyVSsCgn/VcNIp6FAX50+7r+ w==;
X-CSE-ConnectionGUID: A6Pkg3Z4TkK3cVo4YECCmw==
X-CSE-MsgGUID: 84O+cIcFQbW9+JNFDwpFEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80210850"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80210850"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 02:01:32 -0700
X-CSE-ConnectionGUID: jXhPYb2xTISOY5nWd9Tweg==
X-CSE-MsgGUID: jQ1YApErT/+01ZJnVeRGxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228314609"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 02:01:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/12] drm/i915/selftests: Eliminate duplicate vma size
 check
In-Reply-To: <20260407155053.32156-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
 <20260407155053.32156-11-ville.syrjala@linux.intel.com>
Date: Wed, 08 Apr 2026 12:01:26 +0300
Message-ID: <818d1ebdafb20f3b5ed25e1349f2965948ab819b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: B70B63B98B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 07 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Both remapped and rotated views need the exact same size check.

This is misleading, see below. At the very least the commit message
needs amending.

> Currently that is being done separately for each type. Share
> the code by just checking for !NORMAL view. This test doesn't
> use I915_GTT_VIEW_PARTIAL so the inverse check is fine here.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/selftests/i915_vma.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/=
i915/selftests/i915_vma.c
> index 7c4111e60f2e..258557388a2d 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -634,7 +634,7 @@ static int igt_vma_rotate_remap(void *arg)
>=20=20
>  					expected_pages =3D remapped_size(view.type, &plane_info[0], &plane_=
info[1]);
>=20=20
> -					if (view.type =3D=3D I915_GTT_VIEW_ROTATED &&
> +					if (view.type !=3D I915_GTT_VIEW_NORMAL &&
>  					    vma->size !=3D expected_pages * PAGE_SIZE) {
>  						pr_err("VMA is wrong size, expected %lu, found %llu\n",
>  						       PAGE_SIZE * expected_pages, vma->size);
> @@ -642,14 +642,6 @@ static int igt_vma_rotate_remap(void *arg)
>  						goto out_object;
>  					}
>=20=20
> -					if (view.type =3D=3D I915_GTT_VIEW_REMAPPED &&
> -					    vma->size > expected_pages * PAGE_SIZE) {

This check becomes stricter now, expecting exact match. Does it matter?

History points at you! ;)

e2e394bffa19 ("drm/i915/selftests: Add mock selftest for remapped vmas")

If you think the change in the check is okay, and with the commit
message amended,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> -						pr_err("VMA is wrong size, expected %lu, found %llu\n",
> -						       PAGE_SIZE * expected_pages, vma->size);
> -						err =3D -EINVAL;
> -						goto out_object;
> -					}
> -
>  					if (vma->pages->nents > expected_pages) {
>  						pr_err("sg table is wrong sizeo, expected %u, found %u nents\n",
>  						       expected_pages, vma->pages->nents);

--=20
Jani Nikula, Intel
