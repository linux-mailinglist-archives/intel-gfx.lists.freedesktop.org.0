Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDC86B7429
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 11:35:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16DB510E4C8;
	Mon, 13 Mar 2023 10:35:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2BC510E4C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 10:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678703746; x=1710239746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KPgHDxwRfBAuYG4UonleDLLYEJEbXK1VnLDAMsEiF9Q=;
 b=MH5oC/mj5sf4Tm/UMmQHH2hV/Kxz5jiuip3qtrTTqpxcicjUD/mOv2XL
 tFRBelZDHcRIDPuhaKpnC+XZancTKpaz83EB6U5RW7mlnKrmS9MC9ql8c
 wxZyrN9z0Yca5ZdqFxeACMR7S2zeP1/lSZyh9x7zwhgzA9QQ8abJZGLrR
 4TzXOgqOiPe3bEOHrVKhlN6qohaUmUCgcIpp2z+Ka5R46i2rmRkulxZH6
 ptQEYQEddDvNcv7dO/m4P5a97GwXKIJvdUM/ZZ5xsQqgfRsW9Gssx8J6n
 T+TcSNRd44efJj1nt4SG1htgkfczwgmUwQv24OggHoqAs5SFGPYzngwf1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="364774922"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="364774922"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 03:35:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="742807513"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="742807513"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.1.93])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 03:35:44 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Date: Mon, 13 Mar 2023 11:35:41 +0100
Message-ID: <21804473.EfDdHjke4D@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230313103045.8906-1-nirmoy.das@intel.com>
References: <20230313103045.8906-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/active: Fix missing debug
 object activation
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
Cc: stable@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Monday, 13 March 2023 11:30:45 CET Nirmoy Das wrote:
> debug_active_activate() expected ref->count to be zero
> which is not true anymore as __i915_active_activate() calls
> debug_active_activate() after incrementing the count.
>=20
> v2: No need to check for "ref->count =3D=3D 1" as __i915_active_activate()
> already make sure of that.
>=20
> Fixes: 04240e30ed06 ("drm/i915: Skip taking acquire mutex for no ref->act=
ive callback")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Thomas Hellstr=F6m <thomas.hellstrom@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.10+
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_active.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i9=
15_active.c
> index a9fea115f2d2..8ef93889061a 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -92,8 +92,7 @@ static void debug_active_init(struct i915_active *ref)
>  static void debug_active_activate(struct i915_active *ref)
>  {
>  	lockdep_assert_held(&ref->tree_lock);
> -	if (!atomic_read(&ref->count)) /* before the first inc */
> -		debug_object_activate(ref, &active_debug_desc);
> +	debug_object_activate(ref, &active_debug_desc);
>  }
> =20
>  static void debug_active_deactivate(struct i915_active *ref)
>=20




