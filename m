Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95ED914721C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 20:50:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37726E124;
	Thu, 23 Jan 2020 19:50:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384FF6E124
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 19:50:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 11:50:28 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="220775535"
Received: from zye4-mobl1.amr.corp.intel.com (HELO [10.79.152.138])
 ([10.79.152.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 23 Jan 2020 11:50:27 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
References: <20200122194825.101240-1-michal.wajdeczko@intel.com>
 <67edac14-e319-a1b2-76a1-1404ca5836e2@intel.com>
 <157979173710.19995.3438477214193047615@skylake-alporthouse-com>
 <op.0euq22k9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: "Ye, Tony" <tony.ye@intel.com>
Message-ID: <2343d52c-0648-71b7-5092-c69c16602e56@intel.com>
Date: Thu, 23 Jan 2020 11:50:25 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <op.0euq22k9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Fix error reported by
 I915_PARAM_HUC_STATUS
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/23/2020 7:38 AM, Michal Wajdeczko wrote:
> On Thu, 23 Jan 2020 16:02:17 +0100, Chris Wilson =

> <chris@chris-wilson.co.uk> wrote:
> =

>> Quoting Daniele Ceraolo Spurio (2020-01-22 23:52:33)
>>>
>>>
>>> On 1/22/20 11:48 AM, Michal Wajdeczko wrote:
>>> >=A0 From commit 84b1ca2f0e68 ("drm/i915/uc: prefer intel_gt over i915
>>> > in GuC/HuC paths") we stopped using HUC_STATUS error -ENODEV only
>>> > to indicate lack of HuC hardware and we started to use this error
>>> > also for all other cases when HuC was not in use or supported.
>>> >
>>> > Fix that by relying again on HAS_GT_UC macro, since currently
>>> > used function intel_huc_is_supported() is based on HuC firmware
>>> > support which could be unsupported also due to force disabled
>>> > GuC firmware.
>>> >
>>> > Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>> > Cc: Tony Ye <tony.ye@intel.com>
>>>
>>> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>
>> Once upon a time did you (Michal) not argue we should indicate the lack
>> of firmware in the error code? Something like
>>
>> if (!HAS_GT_UC(gt->i915))
>> =A0=A0=A0=A0return -ENODEV;
>>
>> if (!intel_huc_is_supported(huc))
>> =A0=A0=A0=A0return -ENOEXEC;
> =

> Yes, we discussed this here [1] together with [2] but we didn't
> conclude our discussion due to different opinions on how represent
> some states, in particular "manually disabled" state.
> =

> In this patch I just wanted to restore old notation.
> =

> But we can start new discussion, here is summary:
> =

> ------------------+----------+----------+----------
>  =A0HuC state=A0=A0=A0=A0=A0=A0=A0 | today*=A0=A0 | option A | option B
> ------------------+----------+----------+----------
> no HuC hardware=A0=A0 | -ENODEV=A0 | -ENODEV=A0 | -ENODEV
> GuC fw disabled=A0=A0 |=A0=A0 0=A0=A0=A0=A0=A0 |=A0=A0=A0=A0 0=A0=A0=A0 |=
 -EOPNOTSUPP
> HuC fw disabled=A0=A0 |=A0=A0 0=A0=A0=A0=A0=A0 |=A0=A0=A0=A0 0=A0=A0=A0 |=
 -EOPNOTSUPP
> HuC fw missing=A0=A0=A0 |=A0=A0 0=A0=A0=A0=A0=A0 | -ENOPKG=A0 | -ENOEXEC
> HuC fw error=A0=A0=A0=A0=A0 |=A0=A0 0=A0=A0=A0=A0=A0 | -ENOEXEC | -ENOEXEC
> HuC fw fail=A0=A0=A0=A0=A0=A0 |=A0=A0 0=A0=A0=A0=A0=A0 | -EACCES=A0 |=A0=
=A0=A0 0
> HuC authenticated |=A0=A0 1=A0=A0=A0=A0=A0 |=A0=A0=A0=A0 1=A0=A0=A0 |=A0=
=A0=A0 1
> ------------------+----------+----------+----------
> =

> Note that all above should be compatible with media driver,
> which explicitly looks for no error and value 1

 From user space perspective, e.g. the new igt huc_copy, option B looks =

like this:

    pg.param =3D I915_PARAM_HUC_STATUS;
    pg.value =3D &val;
    ret =3D ioctl(fd, DRM_IOCTL_I915_GETPARAM, &pg);

------------------+----------+----------+------------+----------
   HuC state       | ret      | pg.value |  errno     | huc_copy
------------------+----------+----------+------------+----------
no HuC hardware   |  -1      |     0    | -ENODEV    | SKIP
GuC fw disabled   |  -1      |     0    | -EOPNOTSUPP| SKIP
HuC fw disabled   |  -1      |     0    | -EOPNOTSUPP| SKIP
HuC fw missing    |  -1      |     0    | -ENOEXEC   | FAIL
HuC fw error      |  -1      |     0    | -ENOEXEC   | FAIL
HuC fw fail       |   0      |     0    |    0       | FAIL
HuC authenticated |   0      |     1    |    0       | continue
------------------+----------+----------+------------+----------

It can distinguish the SKIP and FAIL conditions. But looks not elegant =

enough.
The pg.value is wasted as it is not pushed back to user space when =

intel_huc_check_status() < 0.

	case I915_PARAM_HUC_STATUS:
		value =3D intel_huc_check_status(&i915->gt.uc.huc);
		if (value < 0)
			return value;
		break;

Regards,
Tony
> =

> Michal
> =

> [1] https://patchwork.freedesktop.org/patch/306419/?series=3D61001&rev=3D1
> [2] https://patchwork.freedesktop.org/series/60800/#rev1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
