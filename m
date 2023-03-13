Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E3F6B7337
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 10:55:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596D610E4C7;
	Mon, 13 Mar 2023 09:55:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E37E810E4C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 09:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678701316; x=1710237316;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UbJeKE0NyYggZOlXiIM7J2hnLojYmcYcMzPeHRFdkdI=;
 b=RcBtW8YkZ0dzNStXmRHHyrr0Bys6k4oJwQrrMNCJ6iEKCbhzaXLtlYYa
 zrut0E/J/UrU0y+NJlK9WfeYRl61g0Al8QIh1/mNALAQd4/PriL9qSYg2
 P3NWoZURigJyUf6fD4hIGIczedDQlsOlxMaPiy9vUxDm7EwCFyQDUdWyD
 B8xsKdfx78MyP2J2uXBzna799YWsPmuS8R4n80u6GYmv0ENmRXbQbkO7T
 HFMFLBXvz0dGkjzuVLbl90Y3YK4GCbIBQybl5EsNxbmFExuczKpCF0wG7
 h9iDE3jMCsiXtvNxys64mPeCiWwzNKp8Uhxpm4hG4tBFJlSeXsqJxTooe g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="338655809"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="338655809"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 02:55:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="671836691"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="671836691"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.1.93])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 02:55:13 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, "Das, Nirmoy" <nirmoy.das@linux.intel.com>
Date: Mon, 13 Mar 2023 10:55:11 +0100
Message-ID: <10239109.nUPlyArG6x@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <242c2634-1c38-351d-7198-cba3ec1ad4f2@linux.intel.com>
References: <20230310141138.6592-1-nirmoy.das@intel.com>
 <2135859.irdbgypaU6@jkrzyszt-mobl1.ger.corp.intel.com>
 <242c2634-1c38-351d-7198-cba3ec1ad4f2@linux.intel.com>
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
Cc: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>, stable@vger.kernel.org,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, 10 March 2023 17:48:10 CET Das, Nirmoy wrote:
> Hi Janusz,
>=20
> On 3/10/2023 4:19 PM, Janusz Krzysztofik wrote:
> > Hi Nirmoy,
> >
> > On Friday, 10 March 2023 15:11:38 CET Nirmoy Das wrote:
> >> debug_active_activate() expected ref->count to be zero
> >> which is not true anymore as __i915_active_activate() calls
> >> debug_active_activate() after incrementing the count.
> >>
> >> Fixes: 04240e30ed06 ("drm/i915: Skip taking acquire mutex for no ref-
>active
> > callback")
> >> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> >> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >> Cc: Thomas Hellstr=F6m <thomas.hellstrom@intel.com>
> >> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> >> Cc: intel-gfx@lists.freedesktop.org
> >> Cc: <stable@vger.kernel.org> # v5.10+
> >> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/i915_active.c | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/
> > i915_active.c
> >> index a9fea115f2d2..1c3066eb359a 100644
> >> --- a/drivers/gpu/drm/i915/i915_active.c
> >> +++ b/drivers/gpu/drm/i915/i915_active.c
> >> @@ -92,7 +92,7 @@ static void debug_active_init(struct i915_active *re=
f)
> >>   static void debug_active_activate(struct i915_active *ref)
> >>   {
> >>   	lockdep_assert_held(&ref->tree_lock);
> >> -	if (!atomic_read(&ref->count)) /* before the first inc */
> >> +	if (atomic_read(&ref->count) =3D=3D 1) /* after the first inc */
> > While that's obviously better than never calling debug_active_activate(=
),=20
I'm
> > wondering how likely we can still miss it because the counter being
> > incremented, e.g. via i915_active_acquire_if_busy(), by a concurrent=20
thread.
> > Since __i915_active_activate() is the only user and its decision making=
=20
step
> > is serialized against itself with a spinlock, couldn't we better call
> > debug_object_activate() unconditionally here?
>=20
>=20
> Yes, we can call debug_object_activate() without checking ref->count.=20
> Also we can remove the ref-count check for
>=20
> debug_active_deactivate() as this is wrapped with=20
> "atomic_dec_and_lock_irqsave(&ref->count, &ref->tree_lock, flags)".
>=20
>=20
> I think it makes sense to keep this patch as it is so it can be=20
> backported easily. I can add another patch to remove
>=20
> unnecessary ref->count  checks.

Looking at 5.10, I can't understand how dropping the check instead of=20
replacing it with a still problematic one could make backporting less easy.

Thanks,
Janusz


>=20
>=20
> Regards,
>=20
> Nirmoy
>=20
>=20
> >
> > Thanks,
> > Janusz
> >
> >>   		debug_object_activate(ref, &active_debug_desc);
> >>   }
> >>  =20
> >>
> >
> >
> >
>=20




