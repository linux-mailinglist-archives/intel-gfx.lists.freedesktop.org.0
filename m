Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC75190F4F3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 19:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D51C410E1CD;
	Wed, 19 Jun 2024 17:24:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dNO1HCTn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2BC410E1CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 17:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718817858; x=1750353858;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=GNLBgLdqvttyBqYyzCBBu6YuyPExJDPmLK1df3b0OrM=;
 b=dNO1HCTnrHH4NpO8dQP5p+2r0bXyiq4LoM0swyp2iooPQQFW4BJZtfCA
 IJn7fyIP/OTHxoq7L6+OcnhWXe/G8lS3x/m3cx6YoCIfhv+ALHrSIbV+B
 zhFfoHLtmhugvE66sgVqQqv1CI5My9OAsoF8nik/SsDDxchwG+VUei1G8
 mKZrBXTwcN4JC8yHVLaCzRqzly6kjdLbevOj3hw8RlVTTNIjv6JDiXeN6
 1E0oyAeZu06IaYBlgEvcUQMwko6f+3lPYjxAud80H/tEvYC/zqmzpODuo
 fg526cLIKMXxnJ+U0bpj/yegwJO9fsE0lG+wABkJ8jiTjfyBbiu4mEkyc A==;
X-CSE-ConnectionGUID: 9Gm7itA2SgedBfXXX1W+OQ==
X-CSE-MsgGUID: FpHTogipS8SGKvSs85LLow==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="33232472"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="33232472"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 10:24:17 -0700
X-CSE-ConnectionGUID: G7l48SYGRm6Hl9gbz/+5Iw==
X-CSE-MsgGUID: OZQeS96tQ3qMy4o7UwNU+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="42098870"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 10:24:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/11] drm/i915/dsb: Add i915.enable_dsb module parameter
In-Reply-To: <ZnLxT9oesCkk_NGS@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
 <20240611133344.30673-9-ville.syrjala@linux.intel.com>
 <875xu6h5kj.fsf@intel.com> <ZnLA_a8zAukixdI-@intel.com>
 <8734p9f577.fsf@intel.com> <ZnLcAIsrEPObe679@intel.com>
 <ZnLuuAk42hp7lveq@intel.com> <ZnLxT9oesCkk_NGS@intel.com>
Date: Wed, 19 Jun 2024 20:24:01 +0300
Message-ID: <87v824ethq.fsf@intel.com>
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

On Wed, 19 Jun 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Jun 19, 2024 at 05:44:08PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Wed, Jun 19, 2024 at 04:24:16PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> > On Wed, Jun 19, 2024 at 04:11:08PM +0300, Jani Nikula wrote:
>> > > On Wed, 19 Jun 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.in=
tel.com> wrote:
>> > > > On Tue, Jun 18, 2024 at 02:07:56PM +0300, Jani Nikula wrote:
>> > > >> On Tue, 11 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com=
> wrote:
>> > > >> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > > >> >
>> > > >> > As we extend the use of DSB for critical pipe/plane register
>> > > >> > programming, it'll be nice to have an escape valve at hand,
>> > > >> > in case things go very poorly. To that end, add a i915.enable_d=
sb
>> > > >> > modparam by which we can force the driver to take the pure mmio
>> > > >> > path instead.
>> > > >> >
>> > > >> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.int=
el.com>
>> > > >> > ---
>> > > >> >  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
>> > > >> >  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>> > > >> >  drivers/gpu/drm/i915/display/intel_dsb.c            | 3 +++
>> > > >> >  3 files changed, 7 insertions(+)
>> > > >> >
>> > > >> > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.=
c b/drivers/gpu/drm/i915/display/intel_display_params.c
>> > > >> > index aebdb7b59dbf..449a31767791 100644
>> > > >> > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>> > > >> > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>> > > >> > @@ -54,6 +54,9 @@ intel_display_param_named_unsafe(enable_dc, i=
nt, 0400,
>> > > >> >  intel_display_param_named_unsafe(enable_dpt, bool, 0400,
>> > > >> >  	"Enable display page table (DPT) (default: true)");
>> > > >> >=20=20
>> > > >> > +intel_display_param_named_unsafe(enable_dsb, bool, 0600,
>> > > >> > +	"Enable display state buffer (DSB) (default: true)");
>> > > >>=20
>> > > >> Not much point in leaving the module param 0600, is there?
>> > > >
>> > > > It'll let you try both dsb and mmio paths at runtime without
>> > > > having to do a full reboot/reload.
>> > >=20
>> > > I mean does any code actually look at the *module* parameter runtime?
>> > > It's only the initial value for the device param?
>> >=20
>> > You can change it via the debugfs i915_params/* thing.
>>=20
>> Apparently the modparam vs. debugfs permissions are specified in two
>> different places. This is rather confusing.
>>=20
>> Is there no way to put them in the same place? Or can we just nuke
>> the permission stuff from the modparam macro entirely so it won't
>> end up confusing me again? Looks like there is exactly one (gem related)
>> modparam that uses 0600, everything else seems to be 0400.
>
> And even that seems to use the per-device copy in the actual code.
> So looks to me like we can just rip out the macro argument and
> make it 0400 always.

Yeah, it's not great.

I guess the only reason the modparams would need to be writable is to be
able to use different values for different devices when the modparam
values are needed at probe, before they can be changed via device param
debugfs:

- set modparam to x
- probe device 1
- set modparam to y
- probe device 2

I don't know if anyone really uses that. There are really no good
solutions to this. :(

BR,
Jani.


--=20
Jani Nikula, Intel
