Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED49542D5E1
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 11:20:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D6C06EC47;
	Thu, 14 Oct 2021 09:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781466EC47;
 Thu, 14 Oct 2021 09:20:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="227536382"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="227536382"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 02:20:29 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="491872553"
Received: from rwambsga-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.251.210.16])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 02:20:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>
In-Reply-To: <87o87svuao.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211014090941.12159-1-ville.syrjala@linux.intel.com>
 <20211014090941.12159-5-ville.syrjala@linux.intel.com>
 <87o87svuao.fsf@intel.com>
Date: Thu, 14 Oct 2021 12:20:24 +0300
Message-ID: <87lf2wvu7b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Fix oops on platforms w/o hpd
 support
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

On Thu, 14 Oct 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 14 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> We don't have hpd support on i8xx/i915 which means hotplug_funcs=3D=3DNU=
LL.
>> Let's not oops when loading the driver on one those machines.
>
> D'oh!
>
> Lemme guess, CI just casually dropped the machines from the results
> because they didn't boot?
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
>>
>> Cc: Dave Airlie <airlied@redhat.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Fixes: cd030c7c11a4 ("drm/i915: constify hotplug function vtable.")
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hotplug.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/=
drm/i915/display/intel_hotplug.c
>> index 3c1cec953b42..0e949a258a22 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>> @@ -215,7 +215,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i91=
5_private *dev_priv)
>>=20=20
>>  static void intel_hpd_irq_setup(struct drm_i915_private *i915)
>>  {
>> -	if (i915->display_irqs_enabled && i915->hotplug_funcs->hpd_irq_setup)
>> +	if (i915->display_irqs_enabled &&
>> +	    i915->hotplug_funcs && i915->hotplug_funcs->hpd_irq_setup)

Btw i915->hotplug_funcs->hpd_irq_setup is always set if
i915->hotplug_funcs is set, so that bit is a bit redundant.

Anyway, r-b stands either way you decide to go.


>>  		i915->hotplug_funcs->hpd_irq_setup(i915);
>>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
