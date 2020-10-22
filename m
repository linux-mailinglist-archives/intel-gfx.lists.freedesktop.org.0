Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0643B2956B6
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Oct 2020 05:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4E06E08A;
	Thu, 22 Oct 2020 03:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 351C06E08A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 03:24:10 +0000 (UTC)
IronPort-SDR: xLVP1W3oT9IOLZtQ3SytHEB97XGYbgT22u5sov21QjRNhygJ4n3AIP+49n3trdRQxIb4uLEyoo
 syA+/3+jM62A==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="155251415"
X-IronPort-AV: E=Sophos;i="5.77,403,1596524400"; d="scan'208";a="155251415"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 20:24:09 -0700
IronPort-SDR: TIK34VRVLmlJjAOjLXB8chpy71XVDdxEgHqnTDPS4vsYTprQTv8kNkLAETidc3YBq7us1bzd1w
 FitHPYVenFpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,403,1596524400"; d="scan'208";a="524125059"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga005.fm.intel.com with ESMTP; 21 Oct 2020 20:24:08 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 21 Oct 2020 20:24:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 21 Oct 2020 20:24:08 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 21 Oct 2020 20:24:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mbVnjstHDMCY8RH2PX1Gho6/qHyxhI5kmdZF/xbaq0xxLJJ+ZOqggEZSfGNsDP4LW11wlMX6wicZWrNdIYWezfxb6EqSMHdkFFpBE9Rs3iV3N5bPSxf90PnKUJ9qAxq3CPLTrXUMxJI1FOjCGneSxplcVlJXqFPlrI9RjsLS+5sEMZ3KFXR3JGLJfvKAIMsXi85onT9JBN8002KrLehEJLv2sv/QZaJ6UnctHE94Pc7TfXWOkcl5axADmby1tSRjK5gYc9ELNieh7XoNQYxt4l8Wo0XamFz3nIl7Ibh6MAp+qd7nyFhPfZmJTOB0i0OVmQoU+ww/qwA2NeSQkSs7Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DHFH2qXaefin5ga+gRPPOvFl8r9YWAVjxVxMp4g50g0=;
 b=IfgpEBRn7/j9Ko+qBR4y/oV2+PRGSZ9ZwXEYd8oMHA0ds5QUte2oEeonPUnPTEbabjoy0xXJElUAnxdE1I496jVNAUpmIh9FFZHzTkD2BVbc7qWN8fppxiJdq5zqbfU2/0SdMk0Pcq6u0EFcoE6to+0GkZaKRL8kRUsSEMGGpl4QnlQnclzcO+fKp3OsYM0sZ7FbP+BquG11MKEzCSuRBiBK6BUyDWsFrLfaqsIUXs+1XGhQJh94r2Q7NtqwwZMOxKL3UypVe2GTEa7uUV+oBXRuD2BP/SPksiBPmCiOvSaTd+T8FrTDScOv69jUt94P/rCFBQONL1eRyeRu7mKxfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DHFH2qXaefin5ga+gRPPOvFl8r9YWAVjxVxMp4g50g0=;
 b=zhClwIg1CWwdJjN4UxOPs5zrEVoP09fJIR7okH5YYvNxSALgeM+zZKtoakhX0kGdUvnp0Oq0SDRIPwNopx5iQoKUme6x9To8EpzwJ9/e4FKRStOa11Zm6LRCi6V+JaUPxblO8Z+0cqGAbRENlNKGDVLuB54fCPIIkZG8uhz7sZ8=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BYAPR11MB3815.namprd11.prod.outlook.com (2603:10b6:a03:fa::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.27; Thu, 22 Oct
 2020 03:24:06 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3477.028; Thu, 22 Oct 2020
 03:24:06 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: wait PSR state back to idle when turn PSR off
Thread-Index: AQHWp7WWmkhRMmIv+U2ReAf0IsoJaamiS6QAgACT3oA=
Date: Thu, 22 Oct 2020 03:24:06 +0000
Message-ID: <BY5PR11MB4307F2466CD9F842CF4F41DFA31D0@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20201021142450.7758-1-shawn.c.lee@intel.com>
 <690c040328458ae91d1fde7d23fc2d54c0c11480.camel@intel.com>
In-Reply-To: <690c040328458ae91d1fde7d23fc2d54c0c11480.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [1.161.43.86]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0c976fa9-685e-4b10-2b71-08d87639ef03
x-ms-traffictypediagnostic: BYAPR11MB3815:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3815864753D7A68F87057C92A31D0@BYAPR11MB3815.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 37baykZa+Ji3Y+/89rXjpQzbDcZ3F3YqzDzU8OmzF2Np6v7uCuNm3geA3248gvk2iE1sFVI9+657knY3lzHhduRLKX3xikbYF+0qHV6U28vTSfJm0tDl+Q2E51Oa1QmmxuVziNrvt6NrEcivI12dMWbUzGGiuPJrXcbWb3D7IxJ1UGSllLxy+b59A/UFYLbg8+7wQKmvEhNSV5IJmGFAYb7bubW8mHnF4Bw6Pw6Hote1ehYySLUJRQqTH0HnEn5i+BpioyKdMnkblKKb1i70i+y+tQsGOZBSgMaSabcytsFAAk/V79zP7osHX1355GY2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(136003)(396003)(346002)(376002)(55016002)(71200400001)(86362001)(26005)(6506007)(110136005)(186003)(4001150100001)(54906003)(316002)(9686003)(7696005)(33656002)(8936002)(2906002)(66446008)(52536014)(76116006)(478600001)(5660300002)(83380400001)(4326008)(8796002)(8676002)(66556008)(64756008)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: LSu7ooDCZ07VbqCFlvYBhsYZK3k7/7a7cv1WlnV7+U6012fsQCLFy1jizu0qIieQFSm7c/coa6Seti5Y8tHDlK4FwLOVeJak0lw6tdQzJpkSLToyNzmzrS3IutBn+GsBx/XslVq6UmNXEK0C29rFFvoencITOPkiFG65Ky1AHp6xkj44NGC4230gqdyLqLy5c4C23myJSNOpIXhkVTQQJsEn2O45Bhznagz+vbHzmYy73J3M8uI05I/1q8uZ9jVoA1RtgyjQg5SVZWJjs7EBxa4AMrUaIpqX33UmaZmUS5gNNKqRBRsyZWfqr05g4k1MrU9GDbN+fOxEjo5/VfFdBapy/1xXzroeICRF4XcgFKSrgGpI+ksPQBr7DKUx5vQTMPQxHI7mTC58BQEcSBA7zLy+Jk3LZRIJNv1ESfqKAVFJfoIStcd6lFMy7v7WglQS32zku80sA+/M5znXhWQEy2eoOBEb0k4MK4WePa+s5lfSRrFp8d+W0q1MAFkyUyVIbo5PnQEggeXlLvYllgES2RgmXKOWpv1iZA1gVc238uHyOueC4kElWT9absJQA3KDBns+Xq3Tvbm+f7Y8ts+GyoE+19bpY2i+Z7Dd9a6lz/GBOHlVouTw5J/OLnaDsqPRQBvCohM7eG6Z/8TrEEh2fA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c976fa9-685e-4b10-2b71-08d87639ef03
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2020 03:24:06.5832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +ezANP933BUvrqU/nGo5HH4WCkOFlQ4O/f50A+NV/Fvwe33/IY6VrReF+d1ofqMQj05Q6i+H1cMMsKCIDKjsXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3815
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


On Wed, Oct. 21, 2020, 5:13 p.m, Souza, Jose wrote:
>On Wed, 2020-10-21 at 22:24 +0800, Lee Shawn C wrote:
>> Driver should refer to commit 'b2fc2252ce41 ("drm/i915/psr:
>> Always wait for idle state when disabling PSR")' to wait for idle =

>> state when turn PSR off. But it did not follow previous method. Driver =

>> just call intel_psr_exit() in
>> intel_psr_invalidate() and psr_force_hw_tracking_exit().
>> Then leave the function right away.
>> =

>> After PSR disabled, we found some user space applications would =

>> enabled PSR again immediately. That caused particular TCON to get into =

>> incorrect state machine and can't recognize video data from source =

>> properly.
>
>How? I don't see how this is possible this change is only adding delay bet=
ween userspace calls.
>
>Take a look at intel_psr_work(), PSR will only be enabled again when idle.
>

Thanks for clarification! Per our finding, the problem was found on specifi=
c TCON support PSR2.
Below is our observation on customer board.

After psr exit called at intel_psr_invalidate(), PSR2_STATUS (0x6f940, bit =
31:28) report 0x3 sometimes.
Which means source PSR state still active. Then we check sink's DPCD 2008h =
before re-enable PSR2 in intel_psr_work().
DPCD 2008h shows 0x2 (PSR active - display from RFB) sometimes.

Seems problem occurred when source re-enable PSR2 but sink still at PSR2 ac=
tive state.
TCON is not able to recognize video data. And corrupt display shows on eDP =
panel.
Abnormal display is recoverable after modeset.

Looks like my change to wait PSR2 state idle adding more delay here to give=
 more times for TCON back to normal state.
Read DPCD 2008h to confirm sink's PSR2 status before re-enable PSR2 in inte=
l_psr_work().
It will be 0x4 (Sink device Transition to PSR inactive - capture and displa=
y; timing re-sync) always.
Then we can't replicate corrupt display issue anymore.

In my opinion, confirm DPCD 2008h moved to 0x4 before re-enable PSR2 may he=
lp this customer issue.
What do you think?

Best regards,
Shawn

>> =

>> Add this change to wait PSR idle state in intel_psr_invalidate() and =

>> psr_force_hw_tracking_exit(). This symptom is not able to replicate =

>> anymore.
>> =

>> Fixes: b2fc2252ce41 (drm/i915/psr: Always wait for idle state when =

>> disabling PSR).
>> =

>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_psr.c | 43 =

>> ++++++++++++++----------
>>  1 file changed, 26 insertions(+), 17 deletions(-)
>> =

>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c =

>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index a591a475f148..83b642a5567e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1036,6 +1036,25 @@ void intel_psr_enable(struct intel_dp =

>> *intel_dp,  mutex_unlock(&dev_priv->psr.lock);
>>  }
>>  =

>> =

>> =

>> =

>> +static void intel_psr_wait_idle(struct drm_i915_private *dev_priv) { =

>> +i915_reg_t psr_status;
>> +u32 psr_status_mask;
>> +
>> +if (dev_priv->psr.psr2_enabled) {
>> +psr_status =3D EDP_PSR2_STATUS(dev_priv->psr.transcoder);
>> +psr_status_mask =3D EDP_PSR2_STATUS_STATE_MASK; } else { psr_status =3D =

>> +EDP_PSR_STATUS(dev_priv->psr.transcoder);
>> +psr_status_mask =3D EDP_PSR_STATUS_STATE_MASK; }
>> +
>> +/* Wait till PSR is idle */
>> +if (intel_de_wait_for_clear(dev_priv, psr_status,
>> +    psr_status_mask, 2000))
>> +drm_err(&dev_priv->drm, "Timed out waiting PSR idle state\n"); }
>> +
>>  static void intel_psr_exit(struct drm_i915_private *dev_priv)  {
>>  u32 val;
>> @@ -1076,8 +1095,6 @@ static void intel_psr_exit(struct =

>> drm_i915_private *dev_priv)  static void =

>> intel_psr_disable_locked(struct intel_dp *intel_dp)  {  struct =

>> drm_i915_private *dev_priv =3D dp_to_i915(intel_dp); -i915_reg_t =

>> psr_status;
>> -u32 psr_status_mask;
>>  =

>> =

>> =

>> =

>>  lockdep_assert_held(&dev_priv->psr.lock);
>>  =

>> =

>> =

>> =

>> @@ -1088,19 +1105,7 @@ static void intel_psr_disable_locked(struct intel=
_dp *intel_dp)
>>      dev_priv->psr.psr2_enabled ? "2" : "1");
>>  =

>> =

>> =

>> =

>>  intel_psr_exit(dev_priv);
>> -
>> -if (dev_priv->psr.psr2_enabled) {
>> -psr_status =3D EDP_PSR2_STATUS(dev_priv->psr.transcoder);
>> -psr_status_mask =3D EDP_PSR2_STATUS_STATE_MASK; -} else { -psr_status =
=3D =

>> EDP_PSR_STATUS(dev_priv->psr.transcoder);
>> -psr_status_mask =3D EDP_PSR_STATUS_STATE_MASK; -}
>> -
>> -/* Wait till PSR is idle */
>> -if (intel_de_wait_for_clear(dev_priv, psr_status,
>> -    psr_status_mask, 2000))
>> -drm_err(&dev_priv->drm, "Timed out waiting PSR idle state\n");
>> +intel_psr_wait_idle(dev_priv);
>>  =

>> =

>> =

>> =

>>  /* WA 1408330847 */
>>  if (dev_priv->psr.psr2_sel_fetch_enabled && @@ -1158,12 +1163,14 @@ =

>> static void psr_force_hw_tracking_exit(struct drm_i915_private *dev_priv)
>>   * pipe.
>>   */
>>  intel_de_write(dev_priv, CURSURFLIVE(dev_priv->psr.pipe), 0); -else
>> +else {
>>  /*
>>   * A write to CURSURFLIVE do not cause HW tracking to exit PSR
>>   * on older gens so doing the manual exit instead.
>>   */
>>  intel_psr_exit(dev_priv);
>> +intel_psr_wait_idle(dev_priv);
>> +}
>>  }
>>  =

>> =

>> =

>> =

>>  void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane, @@ =

>> -1593,8 +1600,10 @@ void intel_psr_invalidate(struct drm_i915_private =

>> *dev_priv,  frontbuffer_bits &=3D =

>> INTEL_FRONTBUFFER_ALL_MASK(dev_priv->psr.pipe);
>>  dev_priv->psr.busy_frontbuffer_bits |=3D frontbuffer_bits;
>>  =

>> =

>> =

>> =

>> -if (frontbuffer_bits)
>> +if (frontbuffer_bits) {
>>  intel_psr_exit(dev_priv);
>> +intel_psr_wait_idle(dev_priv);
>> +}
>>  =

>> =

>> =

>> =

>>  mutex_unlock(&dev_priv->psr.lock);
>>  }


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
