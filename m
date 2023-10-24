Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B47B27D4F92
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B0210E35C;
	Tue, 24 Oct 2023 12:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C57B10E35C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698149733; x=1729685733;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=PXnziaTzojU3OxKwzld5yrVaQX6s24LWs5yvYa9dzpA=;
 b=CQib5HI++wiuLCFwu/gPwQQxcsVIeTxf8Ahz7+Cgl3LlmmLmozDQ29X9
 d/aFQpzD4guU/WNVVvTRVEMG5a6H+1Pu1A511u04ympU7CUcpUcYlFeqo
 N6ck2S7H2M0UwhaFCNSrjpazvi83WBrysjW806UySjipxZBWNhyfYaDMC
 8MBgFcFEXW3zo2cvkW2cE6lW+KLb6NmTuz/kl9VUKFarJhN0jMtwLF/24
 kL0NQ3nd2iMReN54Iy84vPTPoaa1Is7PTjTEYagCWb5TLrej96nSbslqI
 d2vM8tuWbLPpRWEGIrc2GTz0GNCHIafq7NEanRQ9Ad1PqJm1IW/a00Hc0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="386853750"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386853750"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:15:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="758456489"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="758456489"
Received: from goepfrim-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.28])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:15:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <639a31dea0e79b90735d14d4b40ef1531b9cd7f9.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-25-jouni.hogander@intel.com>
 <51352e16166514540e90e7ef2c7a07fb42d47241.camel@coelho.fi>
 <c9e5a54c56a1855cdca2f5e390dad48acc3ff5f3.camel@intel.com>
 <639a31dea0e79b90735d14d4b40ef1531b9cd7f9.camel@coelho.fi>
Date: Tue, 24 Oct 2023 15:15:27 +0300
Message-ID: <87jzrc9py8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 24/24] drm/i915/display: Use same
 permissions for enable_sagv as for rest
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

On Tue, 24 Oct 2023, Luca Coelho <luca@coelho.fi> wrote:
> On Tue, 2023-10-24 at 08:51 +0000, Hogander, Jouni wrote:
>> On Mon, 2023-10-23 at 17:06 +0300, Luca Coelho wrote:
>> > On Mon, 2023-10-16 at 14:16 +0300, Jouni H=C3=B6gander wrote:
>> > > Generally we have writable device parameters in debugfs. No need
>> > > to allow writing module parameters.
>> > >=20
>> > > Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> > > ---
>> > > =C2=A0drivers/gpu/drm/i915/display/intel_display_params.c | 2 +-
>> > > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>> > >=20
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c
>> > > b/drivers/gpu/drm/i915/display/intel_display_params.c
>> > > index 8e6353c1c25e..077f2dee2975 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>> > > @@ -50,7 +50,7 @@ intel_display_param_named_unsafe(enable_dc, int,
>> > > 0400,
>> > > =C2=A0intel_display_param_named_unsafe(enable_dpt, bool, 0400,
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0"Enable display page=
 table (DPT) (default: true)");
>> > > =C2=A0
>> > > -intel_display_param_named_unsafe(enable_sagv, bool, 0600,
>> > > +intel_display_param_named_unsafe(enable_sagv, bool, 0400,
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0"Enable system agent=
 voltage/frequency scaling (SAGV)
>> > > (default: true)");
>> > > =C2=A0
>> > > =C2=A0intel_display_param_named_unsafe(disable_power_well, int, 0400,
>> >=20
>> > This, as well as other similar changes throughout this series, could
>> > be
>> > controversial, since it's a userspace API change of sorts.=C2=A0 It us=
ed
>> > to
>> > be possible to write but it won't be anymore.=C2=A0 But, as we discuss=
ed
>> > offline, it shouldn't be problem, because probably nobody is writing
>> > to
>> > them, and most likely doing so wouldn't have the expected result,
>> > since
>> > the device copies were not getting updated.
>> >=20
>> > Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
>>=20
>> Thank you Luca. I actually moved this change to patch 11 due to your
>> comment there and added your rb tag there. I was planning to drop this
>> patch. Are you fine with this?
>
> Yes, this is fine.  I'll review your cahnges in v3 and give the missing
> r-b tags there, if applicable.

I think this change is good and frankly needed. It's confusing to be
able to modify the module param without it having any effect.

These are for debug, the param is designated "unsafe", and for these I
don't really care if someone complains they can't write to the file
anymore.

BR,
Jani.

>
> --
> Cheers,
> Luca.

--=20
Jani Nikula, Intel
