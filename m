Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAA5B24744
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 12:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B26EB10E6EB;
	Wed, 13 Aug 2025 10:32:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bxtjmDsJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D41110E6EB;
 Wed, 13 Aug 2025 10:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755081131; x=1786617131;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pxntqjMp7pjeSxzxIh4BKQB7d/h7TDyvuiTf6dTNpxw=;
 b=bxtjmDsJPulCVN4QwyQcpfcBLynqSOJ8/cav/iK0dJHZClttwDZcrJeU
 aaGB6dUED7qjhraUP6Ac26yBL06f4hw7A5DbfDRov9QuUb8qFkLHUBCvg
 tk3Ahi073Ntpg6fjMyCdaZbwV5CJ54Uazt00SaIc6JzjnCMAQFiEmxELK
 Yf7sfuVbwnrhIouagNK8AmLD0u2TFPKkCgr7XWOluLbqvAbTXQRX6yJbH
 kwCOCTDaW66Jfy0cQIjFhwbrZp+v3byqv8dLo4eNtqL0esfFarTytIzYp
 Y/O8d7PWO7z40gV7TZbFEnBQ1C+B3/KDXA/DE54vywiH3rWfxiaKKbNtR A==;
X-CSE-ConnectionGUID: MHaOgltzRPSlmQse5ZyChg==
X-CSE-MsgGUID: T53DcyPsSy+f2ZF/wyvOBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="44948273"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="44948273"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 03:32:10 -0700
X-CSE-ConnectionGUID: 25W6VWEARjejm+NCH3ltLQ==
X-CSE-MsgGUID: HypUfa19RlGeQlELGqoI1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="166064386"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.61])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 03:32:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v6] drm/i915/display: Optimize panel power-on wait time
In-Reply-To: <4d00f184-d963-42c9-8cfa-b6014f224744@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250807082402.79018-1-dibin.moolakadan.subrahmanian@intel.com>
 <d83e4d1b8fc0fdf62805a7465511a8b63b4429d1@intel.com>
 <4d00f184-d963-42c9-8cfa-b6014f224744@intel.com>
Date: Wed, 13 Aug 2025 13:32:04 +0300
Message-ID: <276616553b899426613d06b88e43b575fe7487aa@intel.com>
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

On Wed, 13 Aug 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrah=
manian@intel.com> wrote:
> On 12-08-2025 23:42, Jani Nikula wrote:
>> On Thu, 07 Aug 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.sub=
rahmanian@intel.com> wrote:
>>> The current wait_panel_status() uses intel_de_wait(),
>>> which internally on Xe platforms calls  xe_mmio_wait32().
>>> xe_mmio_wait32() increases poll interval exponentially.
>>>
>>> This exponential poll interval increase causes unnessory delays
>>> during resume or power-on when the panel becomes ready earlier,
>>> but polling is delayed due to backoff.
>>>
>>> Replace intel_de_wait() with read_poll_timeout() +
>>> intel_de_read() to actively poll the register at a fixed 10ms interval
>>> up to a 5 second timeout. This allows poll to exit
>>> early  when panel is ready.
>>>
>>> Changes in v2:
>>> Replaced  two-phase intel_de_wait() with  read_poll_timeout()
>>>   + intel_de_read()
>>> Changes in v3:
>>>   - Add poll_interval_ms argument  'wait_panel_status' function.
>>>   - Modify 'wait_panel_status' callers with proper poll interval
>>> Changes in v4:
>>>   - Change 'wait_panel_off' poll interval to 10ms
>>> Changes in v5:
>>>   - Dropped  poll_interval_ms parameter,use fixed polling
>>>     interval of 10ms (Jani Nikula)
>>> Changes in v6:
>>>   - Removed goto in error path
>>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahma=
nian@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_pps.c | 12 +++++++++++-
>>>   1 file changed, 11 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm=
/i915/display/intel_pps.c
>>> index b64d0b30f5b1..b84eb43bd2d0 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>>> @@ -4,6 +4,7 @@
>>>    */
>>>=20=20=20
>>>   #include <linux/debugfs.h>
>>> +#include <linux/iopoll.h>
>>>=20=20=20
>>>   #include <drm/drm_print.h>
>>>=20=20=20
>>> @@ -608,6 +609,8 @@ static void wait_panel_status(struct intel_dp *inte=
l_dp,
>>>   	struct intel_display *display =3D to_intel_display(intel_dp);
>>>   	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>>>   	i915_reg_t pp_stat_reg, pp_ctrl_reg;
>>> +	int ret;
>>> +	u32 val;
>>>=20=20=20
>>>   	lockdep_assert_held(&display->pps.mutex);
>>>=20=20=20
>>> @@ -624,13 +627,20 @@ static void wait_panel_status(struct intel_dp *in=
tel_dp,
>>>   		    intel_de_read(display, pp_stat_reg),
>>>   		    intel_de_read(display, pp_ctrl_reg));
>>>=20=20=20
>>> -	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
>>> +	ret =3D read_poll_timeout(intel_de_read, val,
>>> +				(val & mask) =3D=3D value,
>>> +				10 * 1000, 5000 * 1000, true,
>> Otherwise looks good, but did you have some rationale for the
>> sleep_before_read =3D=3D true?
>
> Yes, this is intentional =E2=80=94 the status register is taking time in =
all cases.
> (panel power off time- 82ms, panel power cycle- 0.074 ms,panel power on-3=
27 ms)

Thanks for the patch, pushed to drm-intel-next.

BR,
Jani.

>
>> BR,
>> Jani.
>>
>>
>>> +				display, pp_stat_reg);
>>> +
>>> +	if (ret) {
>>>   		drm_err(display->drm,
>>>   			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CON=
TROL: 0x%08x\n",
>>>   			dig_port->base.base.base.id, dig_port->base.base.name,
>>>   			pps_name(intel_dp),
>>>   			intel_de_read(display, pp_stat_reg),
>>>   			intel_de_read(display, pp_ctrl_reg));
>>> +		return;
>>> +	}
>>>=20=20=20
>>>   	drm_dbg_kms(display->drm, "Wait complete\n");
>>>   }

--=20
Jani Nikula, Intel
