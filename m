Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BC07F445C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 11:55:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D112B10E5F9;
	Wed, 22 Nov 2023 10:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7957A10E5F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 10:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700650511; x=1732186511;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=W2F+W3i28hjyIjJ25c6m+Ea57kH4RPeVmxa/32BzGSw=;
 b=h95PNZPMt82XqFP+vxiYnaqVVzkbISw670Pk+Tpi95uLWiY7KVh+0jAw
 LRIt+pc7uX3cVm7hr79YhusbhdueM4O5P35HR0HTaNMknU2YkLwur/Etp
 Vb3/8OwsfNatASabg7dfUSlG9nA4tZcnmjbnbah2c/tyQ3qi5q98s9K6s
 Krk5m0yx8iBKXnIOclLaUsvJmzhPJCVeKjkPeiPwBjKJhS23NBbnFTj4K
 BJSR9pvPHT6+D1aTi+xFuSssI1vCsBo6apfSs63mA498ahts7bKolpKMN
 rv9nmm8ktbcWo0iP+LIJkrjqZiyu0uUxS/KuCvugm+Yn309gNVR7g0wij Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="372207277"
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; d="scan'208";a="372207277"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 02:55:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,218,1695711600"; 
   d="scan'208";a="8393368"
Received: from tjquresh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.76])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 02:55:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>, LGCI Bug Filing
 <lgci.bug.filing@intel.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>
In-Reply-To: <DM6PR11MB38192A2B1E08611ACB696367F2BBA@DM6PR11MB3819.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
 <170013946304.3092.1503824312309598619@emeril.freedesktop.org>
 <87ttplprbw.fsf@intel.com>
 <DM6PR11MB38192A2B1E08611ACB696367F2BBA@DM6PR11MB3819.namprd11.prod.outlook.com>
Date: Wed, 22 Nov 2023 12:55:05 +0200
Message-ID: <87fs0ym512.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev2=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 21 Nov 2023, "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>=
 wrote:
> Hi ,
>
> https://patchwork.freedesktop.org/series/125977/

Thanks, I guess, but now what? There are no shards results but the
series is not in the shards queue either [1].

I don't know what to do.


BR,
Jani.


[1] https://intel-gfx-ci.01.org/queue/index.html#fullshards-queue


>
> Thanks,
> Tejasree
>
> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>=20
> Sent: Thursday, November 16, 2023 10:29 PM
> To: LGCI Bug Filing <lgci.bug.filing@intel.com>; Andy Shevchenko <andriy.=
shevchenko@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] =E2=9C=97 Fi.CI.BAT: failure for drm/i915/dsi: 4=
th attempt to get rid of IOSF GPIO (rev2)
>
> On Thu, 16 Nov 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
>> =3D=3D Series Details =3D=3D
>>
>> Series: drm/i915/dsi: 4th attempt to get rid of IOSF GPIO (rev2)
>> URL   : https://patchwork.freedesktop.org/series/125977/
>> State : failure
>>
>> =3D=3D Summary =3D=3D
>>
>> CI Bug Log - changes from CI_DRM_13883 -> Patchwork_125977v2=20
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>>
>> Summary
>> -------
>>
>>   **FAILURE**
>>
>>   Serious unknown changes coming with Patchwork_125977v2 absolutely need=
 to be
>>   verified manually.
>>=20=20=20
>>   If you think the reported changes have nothing to do with the changes
>>   introduced in Patchwork_125977v2, please notify your bug team (lgci.bu=
g.filing@intel.com) to allow them
>>   to document this new failure mode, which will reduce false positives i=
n CI.
>
> The reported issue is unrelated to the series.
>
> Please consider adding
>
> Reply-To: lgci.bug.filing@intel.com
>
> message header to these status mails, so the right mail gets added automa=
tically.
>
>
> Thanks,
> Jani.
>
>
>>
>>   External URL:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/index.html
>>
>> Participating hosts (23 -> 36)
>> ------------------------------
>>
>>   Additional (16): fi-kbl-7567u fi-skl-guc fi-tgl-1115g4 bat-dg2-9 fi-cf=
l-guc fi-ilk-650 fi-kbl-guc fi-kbl-x1275 fi-pnv-d510 fi-ivb-3770 fi-elk-e75=
00 bat-jsl-3 bat-dg2-14 bat-dg2-13 bat-dg2-11 bat-mtlp-6=20
>>   Missing    (3): bat-mtlp-8 fi-snb-2520m bat-dg1-5=20
>>
>> Possible new issues
>> -------------------
>>
>>   Here are the unknown changes that may have been introduced in Patchwor=
k_125977v2:
>>
>> ### IGT changes ###
>>
>> #### Possible regressions ####
>>
>>   * igt@i915_selftest@live@gt_pm:
>>     - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][1]
>>    [1]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-hsw-477
>> 0/igt@i915_selftest@live@gt_pm.html
>>
>>=20=20=20
>> Known issues
>> ------------
>>
>>   Here are the changes found in Patchwork_125977v2 that come from known =
issues:
>>
>> ### CI changes ###
>>
>> #### Possible fixes ####
>>
>>   * boot:
>>     - fi-bsw-n3050:       [FAIL][2] ([i915#8293]) -> [PASS][3]
>>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13883/fi-bsw-n30=
50/boot.html
>>    [3]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-bsw-n30
>> 50/boot.html
>>
>>=20=20=20
>>
>> ### IGT changes ###
>>
>> #### Issues hit ####
>>
>>   * igt@debugfs_test@basic-hwmon:
>>     - bat-jsl-3:          NOTRUN -> [SKIP][4] ([i915#9318])
>>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-=
jsl-3/igt@debugfs_test@basic-hwmon.html
>>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][5] ([i915#9318])
>>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-t=
gl-1115g4/igt@debugfs_test@basic-hwmon.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][6] ([i915#9318])
>>    [6]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@debugfs_test@basic-hwmon.html
>>
>>   * igt@fbdev@info:
>>     - fi-kbl-x1275:       NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1849=
])
>>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-k=
bl-x1275/igt@fbdev@info.html
>>     - fi-kbl-guc:         NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1849=
])
>>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-k=
bl-guc/igt@fbdev@info.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][9] ([i915#1849] / [i915#2582])
>>    [9]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@fbdev@info.html
>>
>>   * igt@fbdev@write:
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][10] ([i915#2582]) +3 other te=
sts skip
>>    [10]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@fbdev@write.html
>>
>>   * igt@gem_huc_copy@huc-copy:
>>     - fi-kbl-7567u:       NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#219=
0])
>>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
kbl-7567u/igt@gem_huc_copy@huc-copy.html
>>     - fi-ivb-3770:        NOTRUN -> [SKIP][12] ([fdo#109271]) +15 other =
tests skip
>>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
ivb-3770/igt@gem_huc_copy@huc-copy.html
>>     - fi-elk-e7500:       NOTRUN -> [SKIP][13] ([fdo#109271]) +17 other =
tests skip
>>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
elk-e7500/igt@gem_huc_copy@huc-copy.html
>>     - fi-ilk-650:         NOTRUN -> [SKIP][14] ([fdo#109271]) +15 other =
tests skip
>>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
ilk-650/igt@gem_huc_copy@huc-copy.html
>>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][15] ([i915#2190])
>>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
tgl-1115g4/igt@gem_huc_copy@huc-copy.html
>>     - bat-jsl-3:          NOTRUN -> [SKIP][16] ([i915#2190])
>>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-jsl-3/igt@gem_huc_copy@huc-copy.html
>>     - fi-kbl-x1275:       NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#219=
0])
>>    [17]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-kbl-x12
>> 75/igt@gem_huc_copy@huc-copy.html
>>
>>   * igt@gem_lmem_swapping@basic:
>>     - fi-pnv-d510:        NOTRUN -> [SKIP][18] ([fdo#109271]) +25 other =
tests skip
>>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
pnv-d510/igt@gem_lmem_swapping@basic.html
>>     - bat-jsl-3:          NOTRUN -> [SKIP][19] ([i915#4613]) +3 other te=
sts skip
>>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-jsl-3/igt@gem_lmem_swapping@basic.html
>>     - fi-skl-guc:         NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#461=
3]) +3 other tests skip
>>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
skl-guc/igt@gem_lmem_swapping@basic.html
>>     - fi-kbl-7567u:       NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#461=
3]) +3 other tests skip
>>    [21]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-kbl-756
>> 7u/igt@gem_lmem_swapping@basic.html
>>
>>   * igt@gem_lmem_swapping@parallel-random-engines:
>>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][22] ([i915#4613]) +3 other te=
sts skip
>>    [22]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-tgl-111
>> 5g4/igt@gem_lmem_swapping@parallel-random-engines.html
>>
>>   * igt@gem_lmem_swapping@random-engines:
>>     - fi-bsw-n3050:       NOTRUN -> [SKIP][23] ([fdo#109271]) +14 other =
tests skip
>>    [23]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-bsw-n30
>> 50/igt@gem_lmem_swapping@random-engines.html
>>
>>   * igt@gem_lmem_swapping@verify-random:
>>     - fi-cfl-guc:         NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#461=
3]) +3 other tests skip
>>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
cfl-guc/igt@gem_lmem_swapping@verify-random.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][25] ([i915#4613]) +3 other te=
sts skip
>>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-mtlp-6/igt@gem_lmem_swapping@verify-random.html
>>     - fi-kbl-x1275:       NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#461=
3]) +3 other tests skip
>>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
kbl-x1275/igt@gem_lmem_swapping@verify-random.html
>>     - fi-kbl-guc:         NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#461=
3]) +3 other tests skip
>>    [27]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-kbl-guc
>> /igt@gem_lmem_swapping@verify-random.html
>>
>>   * igt@gem_mmap@basic:
>>     - bat-dg2-9:          NOTRUN -> [SKIP][28] ([i915#4083])
>>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-9/igt@gem_mmap@basic.html
>>     - bat-dg2-11:         NOTRUN -> [SKIP][29] ([i915#4083])
>>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-11/igt@gem_mmap@basic.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][30] ([i915#4083])
>>    [30]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@gem_mmap@basic.html
>>
>>   * igt@gem_mmap_gtt@basic:
>>     - bat-dg2-9:          NOTRUN -> [SKIP][31] ([i915#4077]) +2 other te=
sts skip
>>    [31]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-9/
>> igt@gem_mmap_gtt@basic.html
>>
>>   * igt@gem_render_tiled_blits@basic:
>>     - bat-dg2-9:          NOTRUN -> [SKIP][32] ([i915#4079]) +1 other te=
st skip
>>    [32]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-9/
>> igt@gem_render_tiled_blits@basic.html
>>
>>   * igt@gem_tiled_blits@basic:
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][33] ([i915#4077]) +2 other te=
sts skip
>>    [33]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@gem_tiled_blits@basic.html
>>
>>   * igt@gem_tiled_fence_blits@basic:
>>     - bat-dg2-11:         NOTRUN -> [SKIP][34] ([i915#4077]) +2 other te=
sts skip
>>    [34]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-11
>> /igt@gem_tiled_fence_blits@basic.html
>>
>>   * igt@gem_tiled_pread_basic:
>>     - bat-dg2-11:         NOTRUN -> [SKIP][35] ([i915#4079]) +1 other te=
st skip
>>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-11/igt@gem_tiled_pread_basic.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][36] ([i915#4079]) +1 other te=
st skip
>>    [36]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@gem_tiled_pread_basic.html
>>
>>   * igt@i915_pm_rps@basic-api:
>>     - bat-dg2-9:          NOTRUN -> [SKIP][37] ([i915#6621])
>>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-9/igt@i915_pm_rps@basic-api.html
>>     - bat-dg2-11:         NOTRUN -> [SKIP][38] ([i915#6621])
>>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-11/igt@i915_pm_rps@basic-api.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][39] ([i915#6621])
>>    [39]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@i915_pm_rps@basic-api.html
>>
>>   * igt@i915_suspend@basic-s3-without-i915:
>>     - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][40] ([i915#7443])
>>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][41] ([i915#6645])
>>    [41]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@i915_suspend@basic-s3-without-i915.html
>>
>>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][42] ([i915#4212]) +8 other te=
sts skip
>>    [42]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
>>
>>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>>     - bat-dg2-11:         NOTRUN -> [SKIP][43] ([i915#4212]) +6 other te=
sts skip
>>    [43]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-11
>> /igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
>>
>>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>>     - bat-dg2-9:          NOTRUN -> [SKIP][44] ([i915#5190])
>>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][45] ([i915#5190])
>>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>>     - bat-dg2-11:         NOTRUN -> [SKIP][46] ([i915#5190])
>>    [46]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-11
>> /igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>>
>>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>>     - bat-dg2-9:          NOTRUN -> [SKIP][47] ([i915#4215] / [i915#5190=
])
>>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>>     - bat-dg2-11:         NOTRUN -> [SKIP][48] ([i915#4215] / [i915#5190=
])
>>    [48]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-11
>> /igt@kms_addfb_basic@basic-y-tiled-legacy.html
>>
>>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>>     - bat-dg2-9:          NOTRUN -> [SKIP][49] ([i915#4212]) +6 other te=
sts skip
>>    [49]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-9/
>> igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
>>
>>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>>     - bat-dg2-9:          NOTRUN -> [SKIP][50] ([i915#4212] / [i915#5608=
])
>>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html
>>     - bat-dg2-11:         NOTRUN -> [SKIP][51] ([i915#4212] / [i915#5608=
])
>>    [51]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-11
>> /igt@kms_addfb_basic@tile-pitch-mismatch.html
>>
>>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>>     - bat-dg2-11:         NOTRUN -> [SKIP][52] ([i915#4103] / [i915#4213=
] / [i915#5608]) +1 other test skip
>>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][53] ([i915#4103]) +1 other te=
st skip
>>    [53]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-tgl-111
>> 5g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>>
>>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>>     - fi-cfl-guc:         NOTRUN -> [SKIP][54] ([fdo#109271]) +6 other t=
ests skip
>>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>>     - bat-jsl-3:          NOTRUN -> [SKIP][55] ([i915#4103]) +1 other te=
st skip
>>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>>     - bat-dg2-9:          NOTRUN -> [SKIP][56] ([i915#4103] / [i915#4213=
] / [i915#5608]) +1 other test skip
>>    [56]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-9/
>> igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>>
>>   * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][57] ([i915#1845]) +12 other t=
ests skip
>>    [57]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
>>
>>   * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
>>     - fi-kbl-guc:         NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#184=
5]) +14 other tests skip
>>    [58]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-kbl-guc
>> /igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
>>
>>   * igt@kms_dsc@dsc-basic:
>>     - fi-skl-guc:         NOTRUN -> [SKIP][59] ([fdo#109271]) +8 other t=
ests skip
>>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
skl-guc/igt@kms_dsc@dsc-basic.html
>>     - bat-dg2-11:         NOTRUN -> [SKIP][60] ([i915#3555] / [i915#3840=
])
>>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-11/igt@kms_dsc@dsc-basic.html
>>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][61] ([i915#3555] / [i915#3840=
])
>>    [61]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-tgl-111
>> 5g4/igt@kms_dsc@dsc-basic.html
>>
>>   * igt@kms_flip@basic-flip-vs-dpms:
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][62] ([i915#3637]) +3 other te=
sts skip
>>    [62]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@kms_flip@basic-flip-vs-dpms.html
>>
>>   * igt@kms_force_connector_basic@force-load-detect:
>>     - fi-kbl-7567u:       NOTRUN -> [SKIP][63] ([fdo#109271]) +6 other t=
ests skip
>>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html
>>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][64] ([fdo#109285])
>>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][65] ([fdo#109285])
>>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html
>>     - bat-jsl-3:          NOTRUN -> [SKIP][66] ([fdo#109285])
>>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-jsl-3/igt@kms_force_connector_basic@force-load-detect.html
>>     - bat-dg2-9:          NOTRUN -> [SKIP][67] ([fdo#109285])
>>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
>>     - bat-dg2-11:         NOTRUN -> [SKIP][68] ([fdo#109285])
>>    [68]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-11
>> /igt@kms_force_connector_basic@force-load-detect.html
>>
>>   * igt@kms_force_connector_basic@prune-stale-modes:
>>     - bat-dg2-9:          NOTRUN -> [SKIP][69] ([i915#5274])
>>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html
>>     - bat-dg2-11:         NOTRUN -> [SKIP][70] ([i915#5274])
>>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][71] ([i915#5274])
>>    [71]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@kms_force_connector_basic@prune-stale-modes.html
>>
>>   * igt@kms_frontbuffer_tracking@basic:
>>     - fi-kbl-x1275:       NOTRUN -> [SKIP][72] ([fdo#109271]) +17 other =
tests skip
>>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
kbl-x1275/igt@kms_frontbuffer_tracking@basic.html
>>     - fi-kbl-guc:         NOTRUN -> [SKIP][73] ([fdo#109271]) +15 other =
tests skip
>>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
kbl-guc/igt@kms_frontbuffer_tracking@basic.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][74] ([i915#4342])
>>    [74]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@kms_frontbuffer_tracking@basic.html
>>
>>   * igt@kms_hdmi_inject@inject-audio:
>>     - fi-skl-guc:         NOTRUN -> [FAIL][75] ([IGT#3])
>>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
skl-guc/igt@kms_hdmi_inject@inject-audio.html
>>     - fi-bsw-n3050:       NOTRUN -> [FAIL][76] ([IGT#3])
>>    [76]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-bsw-n30
>> 50/igt@kms_hdmi_inject@inject-audio.html
>>
>>   * igt@kms_pipe_crc_basic@read-crc:
>>     - fi-kbl-x1275:       NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#184=
5]) +14 other tests skip
>>    [77]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-kbl-x12
>> 75/igt@kms_pipe_crc_basic@read-crc.html
>>
>>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][78] ([i915#1845] / [i915#4078=
]) +4 other tests skip
>>    [78]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@kms_pipe_crc_basic@suspend-read-crc.html
>>
>>   * igt@kms_setmode@basic-clone-single-crtc:
>>     - bat-jsl-3:          NOTRUN -> [SKIP][79] ([i915#3555]) +1 other te=
st skip
>>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html
>>     - bat-dg2-9:          NOTRUN -> [SKIP][80] ([i915#3555] / [i915#4098=
])
>>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
>>     - bat-dg2-11:         NOTRUN -> [SKIP][81] ([i915#3555] / [i915#4098=
])
>>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html
>>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][82] ([i915#3555])
>>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-=
tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][83] ([i915#3555] / [i915#8809=
])
>>    [83]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@kms_setmode@basic-clone-single-crtc.html
>>
>>   * igt@prime_vgem@basic-fence-flip:
>>     - bat-dg2-9:          NOTRUN -> [SKIP][84] ([i915#3708])
>>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-9/igt@prime_vgem@basic-fence-flip.html
>>     - bat-dg2-11:         NOTRUN -> [SKIP][85] ([i915#3708])
>>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-11/igt@prime_vgem@basic-fence-flip.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][86] ([i915#1845] / [i915#3708=
])
>>    [86]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@prime_vgem@basic-fence-flip.html
>>
>>   * igt@prime_vgem@basic-fence-mmap:
>>     - bat-dg2-11:         NOTRUN -> [SKIP][87] ([i915#3708] / [i915#4077=
]) +1 other test skip
>>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-11/igt@prime_vgem@basic-fence-mmap.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][88] ([i915#3708] / [i915#4077=
]) +1 other test skip
>>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-mtlp-6/igt@prime_vgem@basic-fence-mmap.html
>>     - bat-dg2-9:          NOTRUN -> [SKIP][89] ([i915#3708] / [i915#4077=
]) +1 other test skip
>>    [89]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-9/
>> igt@prime_vgem@basic-fence-mmap.html
>>
>>   * igt@prime_vgem@basic-read:
>>     - bat-dg2-11:         NOTRUN -> [SKIP][90] ([i915#3291] / [i915#3708=
]) +2 other tests skip
>>    [90]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-dg2-11
>> /igt@prime_vgem@basic-read.html
>>
>>   * igt@prime_vgem@basic-write:
>>     - bat-dg2-9:          NOTRUN -> [SKIP][91] ([i915#3291] / [i915#3708=
]) +2 other tests skip
>>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat=
-dg2-9/igt@prime_vgem@basic-write.html
>>     - bat-mtlp-6:         NOTRUN -> [SKIP][92] ([i915#3708]) +2 other te=
sts skip
>>    [92]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/bat-mtlp-6
>> /igt@prime_vgem@basic-write.html
>>
>>=20=20=20
>> #### Possible fixes ####
>>
>>   * igt@i915_selftest@live@gt_timelines:
>>     - fi-hsw-4770:        [INCOMPLETE][93] ([i915#9527]) -> [PASS][94]
>>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13883/fi-hsw-47=
70/igt@i915_selftest@live@gt_timelines.html
>>    [94]:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/fi-hsw-477
>> 0/igt@i915_selftest@live@gt_timelines.html
>>
>>=20=20=20
>>   {name}: This element is suppressed. This means it is ignored when comp=
uting
>>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>>
>>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109271
>>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109285
>>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>>   [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
>>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>>   [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>>   [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
>>   [i915#7812]: https://gitlab.freedesktop.org/drm/intel/issues/7812
>>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>>   [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
>>   [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
>>   [i915#9527]: https://gitlab.freedesktop.org/drm/intel/issues/9527
>>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>>
>>
>> Build changes
>> -------------
>>
>>   * Linux: CI_DRM_13883 -> Patchwork_125977v2
>>
>>   CI-20190529: 20190529
>>   CI_DRM_13883: 382a59d725202e3548f8fcbffbefe8664a921e30 @ git://anongit=
.freedesktop.org/gfx-ci/linux
>>   IGT_7590: c484e1422184a3183d11f1595e53a6715574520f @ https://gitlab.fr=
eedesktop.org/drm/igt-gpu-tools.git
>>   Patchwork_125977v2: 382a59d725202e3548f8fcbffbefe8664a921e30 @=20
>> git://anongit.freedesktop.org/gfx-ci/linux
>>
>>
>> ### Linux commits
>>
>> 88bdd4e021ea drm/i915/iosf: Drop unused APIs a77c188e1c5e=20
>> drm/i915/dsi: Combine checks in mipi_exec_gpio() 0d4f7726f12e=20
>> drm/i915/dsi: Replace poking of CHV GPIOs behind the driver's back
>> 676e85ad0140 drm/i915/dsi: Prepare soc_gpio_set_value() to distinguish=20
>> GPIO communities
>> 243097ffab80 drm/i915/dsi: Replace poking of VLV GPIOs behind the=20
>> driver's back 2ba66360f03d drm/i915/dsi: Extract common=20
>> soc_gpio_set_value() helper
>> 4272788720c6 drm/i915/dsi: Fix wrong initial value for GPIOs in=20
>> bxt_gpio_set_value()
>> 08cf117983e4 drm/i915/dsi: Remove GPIO lookup table at the end of=20
>> intel_dsi_vbt_gpio_init() ab1ce1add06d drm/i915/dsi: Replace check=20
>> with a (missing) MIPI sequence name
>> 6104bf6004b4 drm/i915/dsi: Get rid of redundant 'else'
>> 17366b81dadb drm/i915/dsi: Replace while(1) with one with clear exit=20
>> condition
>> 21b1b71e73f1 drm/i915/dsi: bxt/icl GPIO set value do not need gpio=20
>> source 60c4936330be drm/i915/dsi: rename platform specific=20
>> *_exec_gpio() to *_gpio_set_value() 4beabfe83d0f drm/i915/dsi: clarify=20
>> GPIO exec sequence 47de5df0986b drm/i915/dsi: switch mipi_exec_gpio()=20
>> from dev_priv to i915
>> 7f9c22df7f34 drm/i915/dsi: assume BXT gpio works for non-native GPIO
>>
>> =3D=3D Logs =3D=3D
>>
>> For more details see:=20
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v2/index.html
>
> --
> Jani Nikula, Intel

--=20
Jani Nikula, Intel
