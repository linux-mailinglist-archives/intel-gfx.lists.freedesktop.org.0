Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772609A9E0B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 11:13:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F423010E62B;
	Tue, 22 Oct 2024 09:13:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LSELA4Rv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1C1E10E628;
 Tue, 22 Oct 2024 09:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729588386; x=1761124386;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/NyZUNEMSfQCqnevypFd/WUcnN1eH6zt/YaLhORlzAM=;
 b=LSELA4RvG1g0GpUyTFMB7FXFwioWmvk26XrQ3feMSWLnodJ2k1SlPvar
 gRkmkAbtGjjkqcOs1Z5FBdiN/YZk28a9frYF0+O4U84/BPm04fAeeI9Ke
 eJQZkZzIiwpLCq28l26qs4ZKKywRJH4oRn/PDmfuwGxEywvrgxmtIs+uc
 r8O4W4hRG3K7rb+tTVbKcmNHjmPetz16Srqh5Xk5m2UGrdKPUmGgU2coH
 QQdWAkx1Sg6pyBvz3PZavxjwqGjW/BNdUfQJJB8lZkK0xP0CBvHDL9q/Q
 7A2EADFDaFmkZj2YhPSyMtuIiblsW7Q2+RTuwXTNmEZOo1ynbNmgkX/+O A==;
X-CSE-ConnectionGUID: qKpmho/2TMGXnd6amFc8cw==
X-CSE-MsgGUID: rZWQcAjnQ8OdNI73u2pVdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="39721975"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="39721975"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:13:05 -0700
X-CSE-ConnectionGUID: AZyZRlD6RAe9AE6I1Dt+HQ==
X-CSE-MsgGUID: IkzqAu1YRF6e7JnHaVSNDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79809764"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:13:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [drm-intel-next PATCH] drm/xe: fix build failure originating
 from backmerge
In-Reply-To: <ef474dc3-d338-4645-a0e6-25ca3de7ffda@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241022080943.763580-1-jani.nikula@intel.com>
 <ef474dc3-d338-4645-a0e6-25ca3de7ffda@intel.com>
Date: Tue, 22 Oct 2024 12:13:00 +0300
Message-ID: <87zfmwv6ub.fsf@intel.com>
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

On Tue, 22 Oct 2024, Matthew Auld <matthew.auld@intel.com> wrote:
> On 22/10/2024 09:09, Jani Nikula wrote:
>> ../drivers/gpu/drm/xe/display/xe_display.c: In function =E2=80=98xe_disp=
lay_pm_shutdown=E2=80=99:
>> ../drivers/gpu/drm/xe/display/xe_display.c:382:27: error: passing argume=
nt 1 of =E2=80=98intel_dmc_suspend=E2=80=99 from incompatible pointer type =
[-Werror=3Dincompatible-pointer-types]
>>    382 |         intel_dmc_suspend(xe);
>>        |                           ^~
>>        |                           |
>>        |                           struct xe_device *
>> In file included from ../drivers/gpu/drm/xe/display/xe_display.c:24:
>> ../drivers/gpu/drm/i915/display/intel_dmc.h:22:46: note: expected =E2=80=
=98struct intel_display *=E2=80=99 but argument is of type =E2=80=98struct =
xe_device *=E2=80=99
>>     22 | void intel_dmc_suspend(struct intel_display *display);
>>        |                        ~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
>>=20
>> Fixes: c141cf76918e ("Merge drm/drm-next into drm-intel-next")
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Acked-by: Matthew Auld <matthew.auld@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>
>> ---
>>   drivers/gpu/drm/xe/display/xe_display.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/x=
e/display/xe_display.c
>> index 957ae763531d..ca00a365080f 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> @@ -379,7 +379,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>>=20=20=20
>>   	intel_opregion_suspend(display, PCI_D3cold);
>>=20=20=20
>> -	intel_dmc_suspend(xe);
>> +	intel_dmc_suspend(display);
>>   }
>>=20=20=20
>>   void xe_display_pm_runtime_suspend(struct xe_device *xe)

--=20
Jani Nikula, Intel
