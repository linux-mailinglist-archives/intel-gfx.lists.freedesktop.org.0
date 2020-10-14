Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F4C28E1EF
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 16:11:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013A06EA59;
	Wed, 14 Oct 2020 14:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0CDD6EA59
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 14:11:41 +0000 (UTC)
IronPort-SDR: x8djr8aGzLq4VT0LJ/g9PnxehqdMo57BPAi39/g1deDlYjDmgMw6oIoIE0oDF97h9DyKuTopEU
 VBzFqIndWJWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="145973764"
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="145973764"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2020 07:11:41 -0700
IronPort-SDR: uFATMfJGfMydmgKlPYiseHka+yKTmtczyT/vFHP2T8qtJkx7W5hOx6jodNGFOBtmRQhPK6Upmj
 iLrKf1JNABfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; d="scan'208";a="520394419"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 14 Oct 2020 07:11:41 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 14 Oct 2020 07:11:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 14 Oct 2020 07:11:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 14 Oct 2020 07:11:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDNRtoFOaLuxHICItMs4TShHQ9baVCWXn0yEmxFNfqjnBmDnBb6r3xqNAmO00j3ssNl5q8TwImu8axATofNuh1VItXaF50ngN0CH9nnjHEGKYpCWR1gZSsdXOjZKt+AeHt8TQs+AYR0hb9QfMXbhNerbY6xTkXSwYO+sq1oru5K3v3sIGRshHw+Qs1t4QQtax3Ppd9KKfiDmxAwP6iivIoODSSBi4YSeIdXDvsYzwIQpewaoRcBcRjuo+G1lgfDtGofhEStUE2cwEcge0qTnaAEjQczUbmSTe0ThLyFuoztfsmvrJCZg2lVHcInbebD2uLI69h+Jv28KpfIH7RcSCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/mBRvkMSqN7hd2Vye8XMcGgiTIYAhGDZghnzqQZefks=;
 b=Yte9kj5ItExXFpItfnclxHXlf2VQm/l7Xkb2/ur71kMADl1Bv2yQgSSoGiKR2ArDCyixpTt1WxkBdknJs/3OrJ3HSLkdzSY3CkdLkYzMFo9GIf+IOdoSYU6s7/1JSetxz4ondAgehpZRu/hfGOqxCYTe+hAF9NDOyzZFknga/OiUSw5NFDjBYvstV3AcdbPamhq8AhGb0sROC1NP8oCvuDWvvHLep8L8EQDR+S5yW5NG3ndgTYKeedEIMSWTx5PEPa2wy6BRUTcNRhxHDOeuxo7haRnBYYJynJU5Xp4WiRlLL60tqKhsCf/4knNMtSZ5qTXMsYZiX3WqooKHBRevvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/mBRvkMSqN7hd2Vye8XMcGgiTIYAhGDZghnzqQZefks=;
 b=qdehM9bt8A1AVbL0/WqJ4zVb5oKLndN2puz0DBbTlGGTtICdfTJfE7OaMxzZCMk8PuONEvsB8EVNqsXVV9x0FrVqhd+3W98jyqsDBPqwLLW3ODz3Ac4/KNsZHHdmhPwo8I0GFllVTLxWc+VU7XP4D7fWEM8n6M6VzX116imBwX8=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by SJ0PR11MB4846.namprd11.prod.outlook.com (2603:10b6:a03:2d8::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21; Wed, 14 Oct
 2020 14:11:37 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3477.021; Wed, 14 Oct 2020
 14:11:37 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>,
 "20200828061941.17051-2-jani.nikula@intel.com"
 <20200828061941.17051-2-jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/dp: use opregion mailbox #5
 EDID for eDP, if available
Thread-Index: AQHWoHdy3e+P/mHIW0misMliBS+AAqmVQPsAgAAfH4CAAcTukA==
Date: Wed, 14 Oct 2020 14:11:37 +0000
Message-ID: <BY5PR11MB4307FF0DBCF91278A17EC19AA3050@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <BY5PR11MB4307E5790B466389CE00D68AA3070@BY5PR11MB4307.namprd11.prod.outlook.com>
 <87362jdd4y.fsf@intel.com>
 <BY5PR11MB43075789F4800E9D04E2DA6DA3040@BY5PR11MB4307.namprd11.prod.outlook.com>
 <87sgaibd66.fsf@intel.com>
In-Reply-To: <87sgaibd66.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [1.169.145.221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d7b602bd-141e-41f3-2a50-08d8704b10c8
x-ms-traffictypediagnostic: SJ0PR11MB4846:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB48461E3081A7C3450C1CE261A3050@SJ0PR11MB4846.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yrf3xFadt33Y/lASJ64dZccMSUGwD8JPK7tn/LhCN+F8aFrPEO20DhGxTBS53OIBzyGVBYUTtJYxqs8HHcMPVb8Zt5BsuxK3nqpUaJPXrxlSPTCuyOOl4TUdabvNOStB1ZPB+lB5Ic65G0CxpmnpKTfFfuSMPw09Gehs6tKQmIW2PcaDUejq8IOnO6CvBchlPPppI2aVe1qh5BiJSWMYzB5mNpvaMa4a9PiYdjzQSayNxCVxxI7MgxPNjZV+aECXaZ16ZaK/jn3femzRMxjRtAGcSdxRc/A7AJ3ycdj0yeJJ5RYfzh8gYRr6383ZR9Tn96hfj6rRhSPqFIr8HPmE0N4w9VzZx4XCmRuCuwNMvfGc0p22djb6z193lbMK8x5FDkVEfTssmel8PA6RFNJoSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(346002)(376002)(366004)(396003)(6506007)(186003)(15650500001)(26005)(83080400001)(53546011)(6636002)(66476007)(66946007)(83380400001)(86362001)(64756008)(76116006)(52536014)(66556008)(110136005)(316002)(8936002)(71200400001)(5660300002)(66446008)(7696005)(33656002)(9686003)(2906002)(478600001)(966005)(8676002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: FKc4jhFs0RSzq+YmOauaR4XpDG3bswoh0TOrGT17ShpaNWoqh1pAoWaMNujZi4G5vU9L8qXfLh8CKc8fSveRTMgaTCR1PuD60eSg3q/md3eNc7hZTC+a8iQg6gclYVHWn7zgdwPc6zbyNVpeHEQ3nL7dBEvjkih9Pi/wsyWhwwrgKDS0iDEVJcLcHu2A0H4O1AcVqFVd/K0ZWEPwmf5GHTRdmR2KjRvTajlmFNnmbag8yn9jzMGmB1DhJpjel5ixKcNFmaQjzM6ifTkgANukdX7rjL9vzleNaW2cc4haPLoI3sZOoTNmf9ffof9yakHu0fd1NjhwPPEHRXFxRS9lctcIQgxbnQdd+Gwi3AAi7GfL1C10KZZ8oYQdnlEj9w7ORV7TlUo0emWOM74/Ue3cDOSganUQY+PESz4y+DEJsEFrfFcoBGKrRWjrGagRDP5KglBankW/34TEZF4nT+mdj4uJBo283BVQd4FrbbT2L5YijDxgH3QQ5NmWHEA1j+t+/X60axllsE71TuvOigCwMnU+72sLY49PHqNRsMiE8jsUakIb4ktUMV2LFFKGvo2TC3Psb8W2IKIlE/P5wisLZy28sI1AkhiVM7wpTU9Rfsy3cC7kDKKO9Llo3Nz88e3zBtd2kdQqy/EOKlrbkLgwpw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7b602bd-141e-41f3-2a50-08d8704b10c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2020 14:11:37.7377 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4WO2IVCv3EnD7ThqQ3Qktb0OEuuySOcA5H/mJl6fd3kZ+egIR4PyM87guVNwrsGm6PA87NtZZ/MkhGZ/FSadwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4846
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: use opregion mailbox #5
 EDID for eDP, if available
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Tue, Oct 13, 2020 at 7:05 PM, Jani Nikula wrote:
>On Tue, 13 Oct 2020, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>> On Mon, Oct 12, 2020 at 5:09 PM, Jani Nikula wrote:
>>>On Mon, 12 Oct 2020, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>>>> On Fri, Aug 28, 2020 at 06:19AM, Shankar Uma wrote:
>>>>>> -----Original Message-----
>>>>>> From: Jani Nikula <jani.nikula@intel.com>
>>>>>> Sent: Friday, August 28, 2020 11:50 AM
>>>>>> To: intel-gfx@lists.freedesktop.org
>>>>>> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma 
>>>>>> <uma.shankar@intel.com>
>>>>>> Subject: [PATCH 2/2] drm/i915/dp: use opregion mailbox #5 EDID for 
>>>>>> eDP, if available
>>>>>>
>>>>>> If a panel's EDID is broken, there may be an override EDID set in 
>>>>>> the ACPI OpRegion mailbox #5. Use it if available.
>>>>>
>>>>>Looks Good to me.
>>>>>Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>>>>>
>>>>>> Cc: Uma Shankar <uma.shankar@intel.com>
>>>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>>> ---
>>>>>>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>>>>>>  1 file changed, 3 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> index c57ac83bf563..d1307be196a2 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> @@ -8114,6 +8114,9 @@ static bool intel_edp_init_connector(struct 
>>>>>> intel_dp *intel_dp,  goto out_vdd_off;  }
>>>>>>
>>>>>> +/* Set up override EDID, if any, from ACPI OpRegion */ 
>>>>>> +intel_opregion_edid_override(intel_connector);
>>>>>> +
>>>>
>>>> Customer report DUT still get EDID from eDP panel instead of mailbox #5.
>>>> After some investigations, this change can retrieve EDID from mailbox #5 properly.
>>>> But driver still used panel's EDID to enable eDP display. This is 
>>>> because of drm_get_edid() was executed after 
>>>> intel_opregion_edid_override(). drm_get_edid() return panel's EDID and overwrite mailbox #5's.
>>>
>>>In recent kernels, drm_get_edid() respects EDID override, and calling
>>>drm_get_edid() will return the override EDID from mailbox #5 instead of retrieving the actual EDID.
>>>
>>>Check the kernel version they're using and the drm_get_edid() implementation.
>>>
>>>BR,
>>>Jani.
>>>
>>
>> Just confirm customer is using kernel v5.8. Seems drm_edid.c already 
>> include the change for override_edid.
>>
>> BTW. override_edid should be "true" and used to over EDID in intel_opregion_edid_override() in patch 1. Right?
>> But it is "false" in the patch 1.
>>
>> +connector->override_edid = false;
>>
>
>
>+
>+	connector->override_edid = false;
>+	ret = drm_connector_update_edid_property(connector, edid);
>+	if (ret)
>+		return;
>+
>+	connector->override_edid = true;
>+	drm_dbg_kms(&i915->drm, "Using OpRegion EDID for [CONNECTOR:%d:%s]\n",
>+		    connector->base.id, connector->name);
>
>
>http://lore.kernel.org/r/20200831083657.15600-1-jani.nikula@intel.com
>
>BR,
>Jani.
>

I think I got the problem now. The patch you attached is correct.
http://lore.kernel.org/r/20200831083657.15600-1-jani.nikula@intel.com

But customer refer to below patch without "override_edid = true".
https://patchwork.freedesktop.org/patch/388309/?series=81121&rev=1

This is why they can't get EDID from mailbox #5 properly.

Best regards,
Shawn

>
>
>> Best regards,
>> Shawn
>>
>>>
>>>>
>>>> We try to move drm_get_edid() before intel_opregion_edid_override().
>>>> The test result is positive, mailbox #5 EDID will substitute for panel's.
>>>> It seems we may need some additional change for this patch. Thanks!
>>>>
>>>> Best regards,
>>>> Shawn
>>>>
>>>>>>  mutex_lock(&dev->mode_config.mutex);
>>>>>>  edid = drm_get_edid(connector, &intel_dp->aux.ddc);  if (edid) {
>>>>>> --
>>>>>> 2.20.1
>>>
>>>--
>>>Jani Nikula, Intel Open Source Graphics Center 
>>>_______________________________________________
>>>Intel-gfx mailing list
>>>Intel-gfx@lists.freedesktop.org
>>>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>--
>Jani Nikula, Intel Open Source Graphics Center _______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
