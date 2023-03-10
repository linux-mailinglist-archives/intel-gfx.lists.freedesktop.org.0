Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFCF6B4A2C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 16:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F63410E978;
	Fri, 10 Mar 2023 15:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1955810E976
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 15:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678461601; x=1709997601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XV8dT9fCGcS7xhq94/G+Dh0DOiv5/8aVRqju9CQaf1g=;
 b=EyR5o8G9CRuiMuNhYOPmBewUdqtKMfZb4XfVxeJiUOzaMW5jWIipVNJY
 vCOk0Oby/w+jjOsL53K6+Vta99tR6rP62QPDLFGSeXk3S9ya90nJFVIPO
 F4oE4GGDtyNfNFZARi4wLINQGADSY9v5HFpDySVcPvPvDJlTYL2qLl2ne
 aoHHCSDOtyhksr7xn4RVp/Z1XrOfS+F2OjPNw1ZBXmTMmCQpDVxr1R3HI
 /PKxHJbVxrZFh2pdtBfypjR/L99fqrge7399nJL+pnez/piVdhib9Rga/
 k4KGMbcZvONIgv5aGkCEuXQHOsuQb+ZPyDN5dx0WlwWj9m2WDJZMtDiFc A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="325098537"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="325098537"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 07:20:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="708039065"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="708039065"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.20.86])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 07:19:58 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Mar 2023 16:19:55 +0100
Message-ID: <2135859.irdbgypaU6@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230310141138.6592-1-nirmoy.das@intel.com>
References: <20230310141138.6592-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/active: Fix missing debug object
 activation
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
Cc: Nirmoy Das <nirmoy.das@intel.com>,
 Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@intel.com>,
 stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Friday, 10 March 2023 15:11:38 CET Nirmoy Das wrote:
> debug_active_activate() expected ref->count to be zero
> which is not true anymore as __i915_active_activate() calls
> debug_active_activate() after incrementing the count.
>=20
> Fixes: 04240e30ed06 ("drm/i915: Skip taking acquire mutex for no ref->act=
ive=20
callback")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Thomas Hellstr=F6m <thomas.hellstrom@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: <stable@vger.kernel.org> # v5.10+
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_active.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/
i915_active.c
> index a9fea115f2d2..1c3066eb359a 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -92,7 +92,7 @@ static void debug_active_init(struct i915_active *ref)
>  static void debug_active_activate(struct i915_active *ref)
>  {
>  	lockdep_assert_held(&ref->tree_lock);
> -	if (!atomic_read(&ref->count)) /* before the first inc */
> +	if (atomic_read(&ref->count) =3D=3D 1) /* after the first inc */

While that's obviously better than never calling debug_active_activate(), I=
'm=20
wondering how likely we can still miss it because the counter being=20
incremented, e.g. via i915_active_acquire_if_busy(), by a concurrent thread=
=2E =20
Since __i915_active_activate() is the only user and its decision making ste=
p=20
is serialized against itself with a spinlock, couldn't we better call=20
debug_object_activate() unconditionally here?

Thanks,
Janusz

>  		debug_object_activate(ref, &active_debug_desc);
>  }
> =20
>=20




