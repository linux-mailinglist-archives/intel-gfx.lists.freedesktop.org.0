Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A96529607E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 15:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5A586F55B;
	Thu, 22 Oct 2020 13:57:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59B1C6F55B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 13:56:59 +0000 (UTC)
IronPort-SDR: U6EWXg7RTHjYBbVxmRQdtVDBBuHT/qxIZMw/YKdiR96dOsJQ8Y/oj9EUechZ3AORg5fr6V9m8m
 p94dVuaJSm1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="164035316"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="164035316"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 06:56:58 -0700
IronPort-SDR: ZaxEX0xxJC2VwoA/61fkXggRlh1bfb07covyPGpIr+ZP1aDj9mROZpUqyx6JDbJzGC1znWq4G6
 jZ4CH3lsgDOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="533975516"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 22 Oct 2020 06:56:57 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 22 Oct 2020 06:56:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 22 Oct 2020 06:56:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 22 Oct 2020 06:56:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cd8vCMCbu8kJdQkL1wBlUh7mCxlbbHoLt5AsAsqniohNfHRbn7I9OTRIFaktvlrQFnDxnlbWOoOHOVRsWExPiStMUgo7qF1nmo1TLY40PMlaP+tCFXA6J6kxdn+Alznz5oeBOBhmlVQPV0kh2uIle/qzVfVB2CYY+9apDmfKYAKRddecx2dhw16COI+whlNRsx7WVqbmWSbP/O+urBMJm2Vh1EnteKPMhbKSP1MrooTYTRC9DxYjvtKKiheliIy1djPb/JQmbz5oSJDp6YRkXT1tS4/t/+fwScj3pf6I69hbhlprCRNLSfceNCP7oVcVN2fwACjTlqCT0HDHCNXv6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gcJ38cNJBxlPXStqem5PypitTiqWI5rsfF7Ha61vVwM=;
 b=Xjvv0ij8Sr80qhh8Ju2fTc8O20NB1hREjKkKu1fSUPUedsKREnrf7LLnUPGZQTFIiKRfQBn6s0taqj7Jvtwa9Vn3EkhHUYveUTzkuMWiUHXB8VBCyo6NIH2pmwuyfFdGclWAdet8jXSe1+KMqbVPhFVENRUT1PLY3TwgRX9U8Qj8lryK5I2Cwvq6YC+3UqY/Ix+Y5069ne8uUoUu5thp1XG2UELrOKP17ot4xfmzaJQ1uiWeBoM7ebYQYG5O3we3JKBGMAH9a4v+XZyUg8MyL2QALgISodjkUR+g/ClQ2eNWF0Q1anxgts1B21l/x009jW7PbNJuUyzUNHlj2pcRiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gcJ38cNJBxlPXStqem5PypitTiqWI5rsfF7Ha61vVwM=;
 b=Nun6wi28L9DSCFXUQr42ecifnBV2Fi/sFIgghaDwxAVzeru//b8dx4PLttYMMZFqRupvsPBekXl/nEuo/Dr/tdHhtwaqzHbidi3tt/wld7v1dAHfRUGRV+/qPIfKP1tCbLdqDpTUIWENROqBZJeOw3jaKLN2A96jLC4MSd7hDH8=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BYAPR11MB3557.namprd11.prod.outlook.com (2603:10b6:a03:b4::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.24; Thu, 22 Oct
 2020 13:56:55 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3477.028; Thu, 22 Oct 2020
 13:56:55 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915: wait PSR state back to idle when turn PSR off
Thread-Index: AQHWp7WWmkhRMmIv+U2ReAf0IsoJaamiS6QAgACT3oCAAMKT0A==
Date: Thu, 22 Oct 2020 13:56:55 +0000
Message-ID: <BY5PR11MB4307AFBFD42DD0C5DB7D6005A31D0@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20201021142450.7758-1-shawn.c.lee@intel.com>
 <690c040328458ae91d1fde7d23fc2d54c0c11480.camel@intel.com>
 <BY5PR11MB4307F2466CD9F842CF4F41DFA31D0@BY5PR11MB4307.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB4307F2466CD9F842CF4F41DFA31D0@BY5PR11MB4307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [1.161.43.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab56525e-3535-4ba1-a022-08d8769255e8
x-ms-traffictypediagnostic: BYAPR11MB3557:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3557DAD1AB93F65AA2B543E3A31D0@BYAPR11MB3557.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mo1LtzP5/DCkzGQEsfekUcedjqHeZHhQCmK2ZNQhKHLqBqMo1rdHYMIpQ+sNgVDD4CnX49orPQp6WMIcsW++ZigYgg8b6EiUgbMBRrM3HzUVcen8Hk4+YO+OPbHsKqDvu0Y4jzPtPhwxbmCtjIfiNw4ZLu86rfZHHkDPCereNz0fdl2/TsKCg/B6K44+W65CDySiBvLmUgjQAK4qlejrMv/CPI9e+7WwA9eTJPKg+YIdCFvIJ6vyKCSlGUwVkz5xFLkYX966t6HlyWxYWGAPIDa2/IW4WkqpRH9QeaP83RXSfZ/ST4V0BNjmNXagBKbs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(376002)(396003)(136003)(39860400002)(6636002)(55016002)(76116006)(54906003)(4326008)(66556008)(66946007)(66446008)(64756008)(66476007)(52536014)(110136005)(9686003)(316002)(5660300002)(83380400001)(4001150100001)(2906002)(26005)(186003)(8676002)(86362001)(7696005)(478600001)(33656002)(71200400001)(2940100002)(6506007)(8936002)(8796002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Ol1TtdVPB9b4PiO0D3S6Z1TLqykufCCmRSPsrlS5tSnqSpKacTVqJMTAJoRA4V5T1DscKTDxCuDh/cl0BDiTCgG0jH5+HAphT7EsIu4o+d6DHEhfmQ+dK+CDEHcKS8sCWCpIVCKqhAGILIr//PCama6/XUFWrHCZZ3YGmTA+szoddPM5gWMbcq36HN4pB+6Puk2Qpx5Qc2FqilZDradUzKyK2LgLt4nZ0CVw0znyTc9MRPWAucUYLQn52TzhtY/HH2OYS5NvTvR/PgOcyrkKM/eCk0cO2uYnUagIBwVD8nyA3wesVTI1TCgbDLXmllc9/Biqmg1YLe3m3dVGb7yjSGQci7CWfZqQ52G38cNb+dcSN+swD0aAIKx6T8dEfsAMmAG6gZdKxUwXuUdMJ+ktNWMDW2DE4TYxz9ySF08z8fUJMlTlkHNbFVWsj/09xLKhrCtP8BP52wLn19wHk6FHratBlb5XooaGOz0a2J0zU2Did7vlsUWE/KfCtzcq64fKoCNUEwbShQ4JVg7R+S3WLIafAb5B/EF2Jk0N10YopMQ/LyYhncNAvtJpLAVobAX+hQUYrZCnyrsYjw5zJMICjVOyjIktaMTRwMmLtyNzdB76gl63I24N4fisBHN1a4Z+ZdOtDx89VYWG2g7o+/1+sA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab56525e-3535-4ba1-a022-08d8769255e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2020 13:56:55.0487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OnqhXCY0XcPvVH5zQT+aKKQtIHShFufwSKRI3KKgwCK9k7JhbWM+M2aEZX37zHb4Vvvg3F4uxQN96w5ZXAPvag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3557
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: wait PSR state back to idle when
 turn PSR off
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
Reply-To: "20201021142450.7758-1-shawn.c.lee@intel.com"
 <20201021142450.7758-1-shawn.c.lee@intel.com>
Cc: "Chiou,
 Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Thu, Oct. 22, 2020, 3:24 a.m, Lee Shawn C wrote:
>On Wed, Oct. 21, 2020, 5:13 p.m, Souza, Jose wrote:
>>On Wed, 2020-10-21 at 22:24 +0800, Lee Shawn C wrote:
>>> Driver should refer to commit 'b2fc2252ce41 ("drm/i915/psr:
>>> Always wait for idle state when disabling PSR")' to wait for idle =

>>> state when turn PSR off. But it did not follow previous method. =

>>> Driver just call intel_psr_exit() in
>>> intel_psr_invalidate() and psr_force_hw_tracking_exit().
>>> Then leave the function right away.
>>> =

>>> After PSR disabled, we found some user space applications would =

>>> enabled PSR again immediately. That caused particular TCON to get =

>>> into incorrect state machine and can't recognize video data from =

>>> source properly.
>>
>>How? I don't see how this is possible this change is only adding delay be=
tween userspace calls.
>>
>>Take a look at intel_psr_work(), PSR will only be enabled again when idle.
>>
>
>Thanks for clarification! Per our finding, the problem was found on specif=
ic TCON support PSR2.
>Below is our observation on customer board.
>
>After psr exit called at intel_psr_invalidate(), PSR2_STATUS (0x6f940, bit=
 31:28) report 0x3 sometimes.
>Which means source PSR state still active. Then we check sink's DPCD 2008h=
 before re-enable PSR2 in intel_psr_work().
>DPCD 2008h shows 0x2 (PSR active - display from RFB) sometimes.
>
>Seems problem occurred when source re-enable PSR2 but sink still at PSR2 a=
ctive state.
>TCON is not able to recognize video data. And corrupt display shows on eDP=
 panel.
>Abnormal display is recoverable after modeset.
>
>Looks like my change to wait PSR2 state idle adding more delay here to giv=
e more times for TCON back to normal state.
>Read DPCD 2008h to confirm sink's PSR2 status before re-enable PSR2 in int=
el_psr_work().
>It will be 0x4 (Sink device Transition to PSR inactive - capture and displ=
ay; timing re-sync) always.
>Then we can't replicate corrupt display issue anymore.
>
>In my opinion, confirm DPCD 2008h moved to 0x4 before re-enable PSR2 may h=
elp this customer issue.
>What do you think?
>
>Best regards,
>Shawn
>

Per previous comment, it is a little complicated from source to align sink'=
s PSR state.
Even source PSR2 state already idle. But sink PSR2 state still at "active" =
sometimes.
Here is another idea. How about to disable/re-enable sink's PSR2 just like =
driver did for source as well?
Sink would back to normal display mode after PSR disabled. Then we can enab=
le PSR again in intel_psr_work()
before driver try to turn source PSR on.

Best regards,
Shawn

>>> =

>>> Add this change to wait PSR idle state in intel_psr_invalidate() and =

>>> psr_force_hw_tracking_exit(). This symptom is not able to replicate =

>>> anymore.
>>> =

>>> Fixes: b2fc2252ce41 (drm/i915/psr: Always wait for idle state when =

>>> disabling PSR).
>>> =

>>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>>> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_psr.c | 43
>>> ++++++++++++++----------
>>>  1 file changed, 26 insertions(+), 17 deletions(-)
>>> =

>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>>> b/drivers/gpu/drm/i915/display/intel_psr.c
>>> index a591a475f148..83b642a5567e 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> @@ -1036,6 +1036,25 @@ void intel_psr_enable(struct intel_dp =

>>> *intel_dp,  mutex_unlock(&dev_priv->psr.lock);
>>>  }
>>>  =

>>> =

>>> =

>>> =

>>> +static void intel_psr_wait_idle(struct drm_i915_private *dev_priv) { =

>>> +i915_reg_t psr_status;
>>> +u32 psr_status_mask;
>>> +
>>> +if (dev_priv->psr.psr2_enabled) {
>>> +psr_status =3D EDP_PSR2_STATUS(dev_priv->psr.transcoder);
>>> +psr_status_mask =3D EDP_PSR2_STATUS_STATE_MASK; } else { psr_status =
=3D =

>>> +EDP_PSR_STATUS(dev_priv->psr.transcoder);
>>> +psr_status_mask =3D EDP_PSR_STATUS_STATE_MASK; }
>>> +
>>> +/* Wait till PSR is idle */
>>> +if (intel_de_wait_for_clear(dev_priv, psr_status,
>>> +    psr_status_mask, 2000))
>>> +drm_err(&dev_priv->drm, "Timed out waiting PSR idle state\n"); }
>>> +
>>>  static void intel_psr_exit(struct drm_i915_private *dev_priv)  {
>>>  u32 val;
>>> @@ -1076,8 +1095,6 @@ static void intel_psr_exit(struct =

>>> drm_i915_private *dev_priv)  static void =

>>> intel_psr_disable_locked(struct intel_dp *intel_dp)  {  struct =

>>> drm_i915_private *dev_priv =3D dp_to_i915(intel_dp); -i915_reg_t =

>>> psr_status;
>>> -u32 psr_status_mask;
>>>  =

>>> =

>>> =

>>> =

>>>  lockdep_assert_held(&dev_priv->psr.lock);
>>>  =

>>> =

>>> =

>>> =

>>> @@ -1088,19 +1105,7 @@ static void intel_psr_disable_locked(struct inte=
l_dp *intel_dp)
>>>      dev_priv->psr.psr2_enabled ? "2" : "1");
>>>  =

>>> =

>>> =

>>> =

>>>  intel_psr_exit(dev_priv);
>>> -
>>> -if (dev_priv->psr.psr2_enabled) {
>>> -psr_status =3D EDP_PSR2_STATUS(dev_priv->psr.transcoder);
>>> -psr_status_mask =3D EDP_PSR2_STATUS_STATE_MASK; -} else { -psr_status =

>>> =3D EDP_PSR_STATUS(dev_priv->psr.transcoder);
>>> -psr_status_mask =3D EDP_PSR_STATUS_STATE_MASK; -}
>>> -
>>> -/* Wait till PSR is idle */
>>> -if (intel_de_wait_for_clear(dev_priv, psr_status,
>>> -    psr_status_mask, 2000))
>>> -drm_err(&dev_priv->drm, "Timed out waiting PSR idle state\n");
>>> +intel_psr_wait_idle(dev_priv);
>>>  =

>>> =

>>> =

>>> =

>>>  /* WA 1408330847 */
>>>  if (dev_priv->psr.psr2_sel_fetch_enabled && @@ -1158,12 +1163,14 @@ =

>>> static void psr_force_hw_tracking_exit(struct drm_i915_private *dev_pri=
v)
>>>   * pipe.
>>>   */
>>>  intel_de_write(dev_priv, CURSURFLIVE(dev_priv->psr.pipe), 0); -else
>>> +else {
>>>  /*
>>>   * A write to CURSURFLIVE do not cause HW tracking to exit PSR
>>>   * on older gens so doing the manual exit instead.
>>>   */
>>>  intel_psr_exit(dev_priv);
>>> +intel_psr_wait_idle(dev_priv);
>>> +}
>>>  }
>>>  =

>>> =

>>> =

>>> =

>>>  void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane, =

>>> @@
>>> -1593,8 +1600,10 @@ void intel_psr_invalidate(struct drm_i915_private =

>>> *dev_priv,  frontbuffer_bits &=3D =

>>> INTEL_FRONTBUFFER_ALL_MASK(dev_priv->psr.pipe);
>>>  dev_priv->psr.busy_frontbuffer_bits |=3D frontbuffer_bits;
>>>  =

>>> =

>>> =

>>> =

>>> -if (frontbuffer_bits)
>>> +if (frontbuffer_bits) {
>>>  intel_psr_exit(dev_priv);
>>> +intel_psr_wait_idle(dev_priv);
>>> +}
>>>  =

>>> =

>>> =

>>> =

>>>  mutex_unlock(&dev_priv->psr.lock);
>>>  }
>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
