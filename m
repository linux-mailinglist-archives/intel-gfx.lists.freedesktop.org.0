Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 225F28AAA32
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 10:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75A8D10FE0E;
	Fri, 19 Apr 2024 08:31:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A+L5Wbwb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99A5210FE0E
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 08:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713515504; x=1745051504;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=cIgVlWy6BtoHO6ks/nqyqoNw9bOEnZwsgtVzjiDImxE=;
 b=A+L5WbwbkFZd6mfsnwFSh6xYbWdZGQMI2/IP2H52NVuPAaBgYnG7QYdf
 34RhPBAiwO3KMVQsW66BdczW0VC0XZxN1j+VkKmRi2DxKk/GwRCO51ZXa
 XKpgZ+/KI1XNfXjfD5syL7+z8Ruw9V4LxMZlbv7qfdCrfDPij66xu+Sh4
 fFl8CJBVp9vZAhJvwmz3KPJ0rj24gBaoNH5PC36qn+9b9qA//NMgJJZEE
 5CaUYPESC+omlLw2zxpCUbl5ldZG89hDIt/24alO/ZO3QcL0TWmx/7RuO
 dP2KCHaUEsO7nVuybl2YML5iDfFkyKFHW8bOHP/INipydbxh/8QoLwhW+ A==;
X-CSE-ConnectionGUID: c/O/mEL5T/6nx/PjIuks3Q==
X-CSE-MsgGUID: cBAcfFD3QIyQv2Ri+kieCw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8978016"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="8978016"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 01:31:38 -0700
X-CSE-ConnectionGUID: oMWHpLJZQU+K01YY3jw/lw==
X-CSE-MsgGUID: 7pi0zDspQHWuiOQrGJYspQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28101613"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 01:31:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Musial, Ewelina" <ewelina.musial@intel.com>, Patchwork
 <patchwork@emeril.freedesktop.org>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, LGCI Bug Filing
 <lgci.bug.filing@intel.com>, "Grabski, Mateusz" <mateusz.grabski@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: =?utf-8?Q?=E2=9C=93?= Fi.CI.BAT: success for drm/i915: BXT/GLK
 per-lane vswing and PHY reg cleanup (rev3)
In-Reply-To: <PH7PR11MB70736EC611E2EC85B0133FB8930D2@PH7PR11MB7073.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
 <171337812744.1482849.14997719345480382947@8e613ede5ea5>
 <87r0f2wrnh.fsf@intel.com>
 <PH7PR11MB70736EC611E2EC85B0133FB8930D2@PH7PR11MB7073.namprd11.prod.outlook.com>
Date: Fri, 19 Apr 2024 11:31:29 +0300
Message-ID: <87cyqlwy72.fsf@intel.com>
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


Got the results in the middle of the night; Ville, please merge. :)

BR,
Jani.

On Fri, 19 Apr 2024, "Musial, Ewelina" <ewelina.musial@intel.com> wrote:
> + @Grabski, Mateusz please check it=20
>
> Thanks,
> Ewelina
>
> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>=20
> Sent: Thursday, April 18, 2024 6:41 PM
> To: Patchwork <patchwork@emeril.freedesktop.org>; Ville Syrjala <ville.sy=
rjala@linux.intel.com>; LGCI Bug Filing <lgci.bug.filing@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: =E2=9C=93 Fi.CI.BAT: success for drm/i915: BXT/GLK per-lane =
vswing and PHY reg cleanup (rev3)
>
> On Wed, 17 Apr 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
>> =3D=3D Series Details =3D=3D
>>
>> Series: drm/i915: BXT/GLK per-lane vswing and PHY reg cleanup (rev3)
>> URL   : https://patchwork.freedesktop.org/series/132390/
>> State : success
>>
>> =3D=3D Summary =3D=3D
>>
>> CI Bug Log - changes from CI_DRM_14597 -> Patchwork_132390v3=20
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>>
>> Summary
>> -------
>>
>>   **SUCCESS**
>>
>>   No regressions found.
>>
>>   External URL:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/index.html
>
> What happened here? BAT passed, but there are no IGT results, and the sha=
rds queue is empty?
>
> BR,
> Jani.
>
>
>>
>> Participating hosts (38 -> 32)
>> ------------------------------
>>
>>   Missing    (6): bat-dg1-7 fi-snb-2520m fi-glk-j4005 fi-kbl-8809g bat-d=
g2-11 bat-arls-3=20
>>
>> Known issues
>> ------------
>>
>>   Here are the changes found in Patchwork_132390v3 that come from known =
issues:
>>
>> ### IGT changes ###
>>
>> #### Issues hit ####
>>
>>   * igt@i915_selftest@live@gem:
>>     - bat-dg2-9:          [PASS][1] -> [ABORT][2] ([i915#10366])
>>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14597/bat-dg2-9/=
igt@i915_selftest@live@gem.html
>>    [2]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/bat-dg2-9/
>> igt@i915_selftest@live@gem.html
>>
>>=20=20=20
>>   [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
>>
>>
>> Build changes
>> -------------
>>
>>   * Linux: CI_DRM_14597 -> Patchwork_132390v3
>>
>>   CI-20190529: 20190529
>>   CI_DRM_14597: 64a20aacb61e4ce6d8a0b3dc6e4bff72e316ffa3 @ git://anongit=
.freedesktop.org/gfx-ci/linux
>>   IGT_7810: 189483744e9ff56ea573e07a049c5365404c7ecb @ https://gitlab.fr=
eedesktop.org/drm/igt-gpu-tools.git
>>   Patchwork_132390v3: 64a20aacb61e4ce6d8a0b3dc6e4bff72e316ffa3 @=20
>> git://anongit.freedesktop.org/gfx-ci/linux
>>
>> =3D=3D Logs =3D=3D
>>
>> For more details see:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/index.html
>
> --
> Jani Nikula, Intel

--=20
Jani Nikula, Intel
