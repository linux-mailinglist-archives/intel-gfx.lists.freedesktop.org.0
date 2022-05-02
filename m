Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C03FF516D1D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 11:13:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E21510FE1C;
	Mon,  2 May 2022 09:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9085510FE1C
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 09:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651482778; x=1683018778;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=53nc5l26wfKP6y0SyTC2RbLEK7hnZlN2JBHgqHUVNYY=;
 b=FPAPCmGffuD53J0AMTlb2o6jBQqEDWs38MJLg9ylp9n/d3CdPnSRM+IF
 afputL8j/+LUlamHrnKytv9cYxMIlF2z8C6RCLGKXVZTkav2ZUzdTp9Zm
 NIOCWncKEEQ/r/oqGPhrZridrGZ15p962ofokNLDbrrtq+bkwaCr809lg
 QF5QhDWx0tl6ejvcwZ5i5RgNXy3W8A0d+YtPBgsrLYKF/gGo62ENEv9HI
 /6EDsi2EhPU7sNr9vA8hiv2u8W6HDrxZ40V1F4I5UVFv4tzCN/aXdm1BJ
 Pqhv3HsvRktdoSds1RPSHJGdkWh/zQew7OLncXh49CNOVcTzDM3e/lvl+ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10334"; a="267319884"
X-IronPort-AV: E=Sophos;i="5.91,190,1647327600"; d="scan'208";a="267319884"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 02:12:58 -0700
X-IronPort-AV: E=Sophos;i="5.91,190,1647327600"; d="scan'208";a="583607459"
Received: from wagoleb-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.155.30])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 02:12:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
In-Reply-To: <YmwlRc9zwhqJ9XIF@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220429142140.2671828-1-jani.nikula@intel.com>
 <YmwlRc9zwhqJ9XIF@ideak-desk.fi.intel.com>
Date: Mon, 02 May 2022 12:12:53 +0300
Message-ID: <87bkwgs3fu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: move tons of power well
 initializers to rodata
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

On Fri, 29 Apr 2022, Imre Deak <imre.deak@intel.com> wrote:
> On Fri, Apr 29, 2022 at 05:21:40PM +0300, Jani Nikula wrote:
>> Using compound literals for initialization can be tricky. Lacking a
>> const qualifier, they won't end up in rodata, which is probably not
>> expected or intended. Add const to move a whopping 136 initializers to
>> rodata.
>>=20
>> Compare:
>>=20
>> $ objdump --syms drivers/gpu/drm/i915/display/intel_display_power_map.o =
| grep "\.rodata.*__compound_literal"
>> $ objdump --syms drivers/gpu/drm/i915/display/intel_display_power_map.o =
| grep "\.data.*__compound_literal"
>>=20
>> Before and after the change.
>>=20
>> Fixes: c32ffce42aa5 ("drm/i915: Convert the power well descriptor domain=
 mask to an array of domains")
>> Fixes: 4a845ff0c0d4 ("drm/i915: Simplify power well definitions by addin=
g power well instances")
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power_map.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_map.c
>> index af6f54a26a35..97b367f39f35 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> @@ -21,7 +21,7 @@
>>=20=20
>>  #define I915_PW_DOMAINS(...) \
>>  	(const struct i915_power_domain_list) \
>> -		__LIST(__LIST_INLINE_ELEMS(enum intel_display_power_domain, __VA_ARGS=
__))
>> +		__LIST(__LIST_INLINE_ELEMS(const enum intel_display_power_domain, __V=
A_ARGS__))
>>=20=20
>>  #define I915_DECL_PW_DOMAINS(__name, ...) \
>>  	static const struct i915_power_domain_list __name =3D I915_PW_DOMAINS(=
__VA_ARGS__)
>> @@ -32,7 +32,7 @@
>>=20=20
>>  #define I915_PW_INSTANCES(...) \
>>  	(const struct i915_power_well_instance_list) \
>> -		__LIST(__LIST_INLINE_ELEMS(struct i915_power_well_instance, __VA_ARGS=
__))
>> +		__LIST(__LIST_INLINE_ELEMS(const struct i915_power_well_instance, __V=
A_ARGS__))
>>=20=20
>>  #define I915_PW(_name, _domain_list, ...) \
>>  	{ .name =3D _name, .domain_list =3D _domain_list, ## __VA_ARGS__ }
>> --=20
>> 2.30.2
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
