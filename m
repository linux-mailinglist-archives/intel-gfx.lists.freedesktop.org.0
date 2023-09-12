Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159FE79C850
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 09:38:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4A710E39C;
	Tue, 12 Sep 2023 07:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE20510E39C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 07:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694504283; x=1726040283;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=A3/uFWhmPLjJebDSUBMHWCMMnSu4AlJ16ikHIeemxSQ=;
 b=QfkP6vX6Cy7g6/MqCGbpd8LCfE7v00HjvjLlX+Y8ILPHOWgQScUjJDhO
 X71EuZfP/+3c5H560QKNzFJ+y7oeWF4EiqlaO8lHTKVbI6Se9Q9oIPOgG
 gFOFci959DeI//rEw+aezRz/aEgn3OSvHQqZ4K99Lj2PshT7gHK2QzKFW
 lU4VzKSB7dA64FRoes+oFfpFdvuyfyp2PSqd6lVzQauv4apIaoM+6tGhU
 Jw4138QBg959uFcsIxXkacjhZav4qyhN0IL8xS9LkkNChb2TCBa91lTe3
 qvAhYAzBrf2dawNqli3U/c9aZlGqaQOlz0xQEJnKvOzxfHEad8Z/88IgW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="444740112"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="444740112"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 00:38:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="743623266"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="743623266"
Received: from kscholl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.206])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 00:37:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM4PR11MB6360F00A1944B8F6D83FC19DF4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-3-ville.syrjala@linux.intel.com>
 <87edmmrxbe.fsf@intel.com>
 <DM4PR11MB6360F00A1944B8F6D83FC19DF4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
Date: Tue, 12 Sep 2023 10:37:56 +0300
Message-ID: <87cyynet9n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 02/19] drm/i915/dsb: Use non-locked
 register access
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

On Mon, 11 Sep 2023, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of J=
ani
>> Nikula
>> Sent: Thursday, June 8, 2023 5:16 PM
>> To: Ville Syrjala <ville.syrjala@linux.intel.com>; intel-gfx@lists.freed=
esktop.org
>> Subject: Re: [Intel-gfx] [PATCH v2 02/19] drm/i915/dsb: Use non-locked r=
egister
>> access
>>=20
>> On Tue, 06 Jun 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Avoid the locking overhead for DSB registers. We don't need the locks
>> > and intel_dsb_commit() in particular needs to be called from the
>> > vblank evade critical section and thus needs to be fast.
>>=20
>> Mmmh, I always find it slightly puzzling to encounter _fw calls in code,=
 wondering
>> what the rationale was, and why we can use the _fw variants.
>>=20
>> Should we start adding comments explaining why?
>
> I believe it=E2=80=99s a light weight write without any locks and forcewa=
ke.

That part is clear; the why isn't. :)

> Maybe a comment to explain the rationale would be good.
>
> With that added, this is:
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>
>> BR,
>> Jani.
>>=20
>>=20
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dsb.c | 18 +++++++++---------
>> >  1 file changed, 9 insertions(+), 9 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
>> > b/drivers/gpu/drm/i915/display/intel_dsb.c
>> > index bed058d2c3ac..97e593d9f100 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> > @@ -96,7 +96,7 @@ static bool assert_dsb_has_room(struct intel_dsb
>> > *dsb)  static bool is_dsb_busy(struct drm_i915_private *i915, enum pip=
e pipe,
>> >  			enum dsb_id id)
>> >  {
>> > -	return intel_de_read(i915, DSB_CTRL(pipe, id)) & DSB_STATUS_BUSY;
>> > +	return intel_de_read_fw(i915, DSB_CTRL(pipe, id)) & DSB_STATUS_BUSY;
>> >  }
>> >
>> >  static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
>> > @@ -243,13 +243,13 @@ void intel_dsb_commit(struct intel_dsb *dsb, bool
>> wait_for_vblank)
>> >  		return;
>> >  	}
>> >
>> > -	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id),
>> > -		       (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
>> > -		       DSB_ENABLE);
>> > -	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
>> > -		       i915_ggtt_offset(dsb->vma));
>> > -	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
>> > -		       i915_ggtt_offset(dsb->vma) + tail);
>> > +	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
>> > +			  (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
>> > +			  DSB_ENABLE);
>> > +	intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
>> > +			  i915_ggtt_offset(dsb->vma));
>> > +	intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
>> > +			  i915_ggtt_offset(dsb->vma) + tail);
>> >  }
>> >
>> >  void intel_dsb_wait(struct intel_dsb *dsb) @@ -266,7 +266,7 @@ void
>> > intel_dsb_wait(struct intel_dsb *dsb)
>> >  	/* Attempt to reset it */
>> >  	dsb->free_pos =3D 0;
>> >  	dsb->ins_start_offset =3D 0;
>> > -	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id), 0);
>> > +	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id), 0);
>> >  }
>> >
>> >  /**
>>=20
>> --
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel
