Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDE15E5DF1
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 10:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC56610E0F4;
	Thu, 22 Sep 2022 08:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9258D10E0F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 08:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663836695; x=1695372695;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=hfHkK7yoqVa5hKVXJhKfZSCPfm1ur4udHcMU9Nw6jdY=;
 b=OIZWXp7N1+qEg2K1DYI89hxJXZwi6n7M4ANiUxnzO7K0hnaadD5VSZJO
 0NIOoyANZmJ8nkrU5ossgjtyBZcIrxnYEwiWmonf27VCtYxgvs/1IFGMM
 N8hCblJCz8Fj4B9KrTr63SfhXQ+u5FWd5Ojlla6xT9FW+rBVuqbKig22G
 NuvpriH95KuVGieBTr4wkiTeYGoSzjZEBxWvciQq04mVD5X9gHCRwmnG3
 xZB0cIU2TNJ3hpb411myt8Ql1rFWgV+n0NYjSLU92hoRXWRrs+wQ2vsy4
 L2/strBF7gQk69/w3xrSGo2s3wFM3mBoKqFYNp5PUIavKOMIVO76mx9A4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="362008944"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="362008944"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:51:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="652886358"
Received: from akoska-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.156])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:51:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Luca
 Coelho <luca@coelho.fi>
In-Reply-To: <YywdAq6eYfTEppUC@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
 <20220916165206.1499-3-ville.syrjala@linux.intel.com>
 <9731fffc60162a34b7790bb08792fc55593e4ca2.camel@coelho.fi>
 <YywdAq6eYfTEppUC@intel.com>
Date: Thu, 22 Sep 2022 11:51:16 +0300
Message-ID: <87leqb7px7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Mark FBC B gone if pipe B is
 gone
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 22 Sep 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 22, 2022 at 11:18:55AM +0300, Luca Coelho wrote:
>> On Fri, 2022-09-16 at 19:52 +0300, Ville Syrjala wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >=20
>> > If pipe B is fused off we also shouldn't have FBC B.
>> >=20
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/intel_device_info.c | 1 +
>> >  1 file changed, 1 insertion(+)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/dr=
m/i915/intel_device_info.c
>> > index 1434dc33cf49..fbefebc023f1 100644
>> > --- a/drivers/gpu/drm/i915/intel_device_info.c
>> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> > @@ -394,6 +394,7 @@ void intel_device_info_runtime_init(struct drm_i91=
5_private *dev_priv)
>> >  		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
>> >  			runtime->pipe_mask &=3D ~BIT(PIPE_B);
>> >  			runtime->cpu_transcoder_mask &=3D ~BIT(TRANSCODER_B);
>> > +			runtime->fbc_mask &=3D ~BIT(INTEL_FBC_B);
>> >  		}
>> >  		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
>> >  			runtime->pipe_mask &=3D ~BIT(PIPE_C);
>>=20
>> I don't know (yet) what exactly this does, but it makes sense if you
>> think of consistency: we already do that for PIPE_A.
>
> It's basically saying the entire pipe is fused off, so anything
> living inside that pipe should also be fused off.
>
>>=20
>> But what about PIPE_C and PIPE_D? Wouldn't it make sense to do the same
>> thing for them as well?
>
> There is no FBC engine on those pipes (we don't even have
> the INTEL_FBC_C+ enum values defined), at least for now.

A future proof way would be to add

	runtime->fbc_mask &=3D runtime->pipe_mask;

after all the fuse handling. Would also fix any misconfiguration in
i915_pci.c.


BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
