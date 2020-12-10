Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD012D5B7E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 14:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A746E529;
	Thu, 10 Dec 2020 13:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0218E6E529
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 13:21:25 +0000 (UTC)
IronPort-SDR: nrstMcPGnfXvO4uUw4L8CYnovkB3X4cNlY5xqvkw1cju6EB/8QT61qAHoAgZNcpJYDgd0vCdEO
 Tyt8QLVMdUbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="174365108"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="174365108"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 05:21:24 -0800
IronPort-SDR: u2aZAd+tn+k8HoIm3XJ46QCyXBnnXIjxdjaxCfZSbER6JAVTkPgWeWT4PL4aHem2426MwJfZ73
 brgNObjTjgNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="368959056"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 10 Dec 2020 05:21:23 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 306595C201A; Thu, 10 Dec 2020 15:19:07 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <160759689953.21588.11243424019053509462@build.alporthouse.com>
References: <20201209134231.961-1-chris@chris-wilson.co.uk>
 <87k0tqlzhk.fsf@gaia.fi.intel.com>
 <160759689953.21588.11243424019053509462@build.alporthouse.com>
Date: Thu, 10 Dec 2020 15:19:07 +0200
Message-ID: <87o8j1lrxw.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Rearrange snb workarounds
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2020-12-10 10:36:07)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > Some rcs0 workarounds were being incorrectly applied to the GT, and so
>> > we failed to restore the expected register settings after a reset.
>> >
>> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> > ---
>> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 67 ++++++++++-----------
>> >  1 file changed, 33 insertions(+), 34 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > index b5339a36d256..50cfe82f18a9 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > @@ -823,40 +823,6 @@ ilk_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>> >  static void
>> >  snb_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
>> >  {
>> > -     /* WaDisableHiZPlanesWhenMSAAEnabled:snb */
>> > -     wa_masked_en(wal,
>> > -                  _3D_CHICKEN,
>> > -                  _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB);
>> > -
>> > -     /* WaDisable_RenderCache_OperationalFlush:snb */
>> > -     wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
>> > -
>> > -     /*
>> > -      * BSpec recommends 8x4 when MSAA is used,
>> > -      * however in practice 16x4 seems fastest.
>> > -      *
>> > -      * Note that PS/WM thread counts depend on the WIZ hashing
>> > -      * disable bit, which we don't touch here, but it's good
>> > -      * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
>> > -      */
>> > -     wa_add(wal,
>> > -            GEN6_GT_MODE, 0,
>> > -            _MASKED_FIELD(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4),
>> > -            GEN6_WIZ_HASHING_16x4);
>> > -
>> > -     wa_masked_dis(wal, CACHE_MODE_0, CM0_STC_EVICT_DISABLE_LRA_SNB);
>> 
>> Where did this go?
>
> It was already in rcs_engine_wa

Yes it was.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
