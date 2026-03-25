Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMNbJleWw2myrwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:01:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0D632111D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 09:01:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D92910E807;
	Wed, 25 Mar 2026 08:01:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MCckqo+/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7ABD10E807
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 08:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774425679; x=1805961679;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=9jBLsJVMImsx2ZBmZ2lTapXNz3uTIKjJTFNxKVZSjcU=;
 b=MCckqo+/Faceyryxqur+8XUZ9S1cS/l9JR/sNxB+YcCrnyqidlGA0M7k
 QFlfUnXAGP3nn3O1DjH/fYVBbMcR3lBoaUELbyaLOAl/zxFxcn77AebYb
 YPSh2i+cDOJm4jbtEs/EgX0vSMigJnBsg79uqme0z8GOtfwa716v2VTiH
 +1pH1Sb105rpi8bde9TwIWWqoXwlnG+GsFrfjab56PHn/azdna3wvT8A0
 FOUFSvbjRjKeD/6pqKor18P9jA0jPNu2IR5DK3l/FilcBIXAOuvDDu1QH
 ihs1awOb0R3OdJaeUGbz0rLTuLO3I4unoQYnbx2oT4plCztaXiZwKVYva Q==;
X-CSE-ConnectionGUID: 4MPaYdRZQn6MF/dw+1v7Eg==
X-CSE-MsgGUID: DfcFwmhoTlWdm9kMjm1pxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75345247"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="75345247"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:01:18 -0700
X-CSE-ConnectionGUID: 5SkHGIZsR+iG11Jk60P4eA==
X-CSE-MsgGUID: 5Za2rTMVSTWF3tOHbhol2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="218021155"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.44])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 01:01:16 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260324151741.29338-1-sosohero200@gmail.com>
References: <20260324151741.29338-1-sosohero200@gmail.com>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, rodrigo.vivi@intel.com,
 security@kernel.org, Yassine Mounir <sosohero200@gmail.com>
To: Yassine Mounir <sosohero200@gmail.com>, gregkh@linuxfoundation.org
Date: Wed, 25 Mar 2026 10:01:13 +0200
Message-ID: <177442567303.11552.5320450093167124387@jlahtine-mobl>
User-Agent: alot/0.12.dev7+g16b50e5f
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,linuxfoundation.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,intel.com,kernel.org,gmail.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	RSPAMD_EMAILBL_FAIL(0.00)[sosohero200.gmail.com:query timed out];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3F0D632111D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

You somehow included [PATCH v2] twice in the subject line and directly
sent it to Greg for some reason?

Please maybe use git format-patch and review the resulting files or
send-email with dry run option before sending.

Quoting Yassine Mounir (2026-03-24 17:17:41)
> Fix a race condition in Linux 7.0-rc2

I don't believe this is a good way of putting it, it makes it sound like
it got introduced in 7.0-rc2 and would be regression. Instead you could
use git blame to find the patch that introduced the buggy code and
supply a Fixes: tag.

As for the commit message can just say "Fix a race condition where GEM ..."

> where a GEM object could be freed
> during relocation if userspace closes the handle concurrently.

Maybe amend here that this only triggers on low-on-memory conditions.

> The fix involves pinning the object lifetime using i915_gem_object_get()
> before the relocation loop and releasing it via i915_gem_object_put()
> in the common exit path (out label), ensuring symmetry in both success
> and error paths.

This we can see from the code, no need to describe it here.

Please supply the UAF crash signature in some format as requested earlier.
If you won't be able to enable KASAN, please do try to use netlink or pstore
to capture the dmesg.

Regards, Joonas

> This v2 rebases the change to the new 'gem/' directory structure in
> the current mainline tree and addresses potential memory leaks in
> early error returns.
>=20
> Signed-off-by: Yassine Mounir <sosohero200@gmail.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu=
/drm/i915/gem/i915_gem_execbuffer.c
> index e7918f896..0468c0551 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1528,6 +1528,7 @@ static int eb_relocate_vma(struct i915_execbuffer *=
eb, struct eb_vma *ev)
>         if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
>                 return -EFAULT;
> =20
> +       i915_gem_object_get(ev->vma->obj);
>         do {
>                 struct drm_i915_gem_relocation_entry *r =3D stack;
>                 unsigned int count =3D
> @@ -1588,6 +1589,7 @@ static int eb_relocate_vma(struct i915_execbuffer *=
eb, struct eb_vma *ev)
>                 urelocs +=3D ARRAY_SIZE(stack);
>         } while (remain);
>  out:
> +       i915_gem_object_put(ev->vma->obj);
>         reloc_cache_reset(&eb->reloc_cache, eb);
>         return remain;
>  }
> --=20
> 2.53.0
>
