Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF1B28CB45
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 11:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3F26E2B4;
	Tue, 13 Oct 2020 09:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B8D6E2B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 09:56:42 +0000 (UTC)
IronPort-SDR: q7WsiQwS+keABHz2KST3mDFjzXLCiey3xzH0WRn6O7zhkzLuu80PZayvTr92sEtYtVPJzxePRG
 cMmPC8EvZ5lQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="227521663"
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; d="scan'208";a="227521663"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 02:56:40 -0700
IronPort-SDR: gmotT71ju4XEXlClKja6SlktGh7Sy6nRUXDXkxHS3ft/cujEmilrq5ZslvkpvdfU0wyksPXnV+
 rM1VbEMFMPiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,369,1596524400"; d="scan'208";a="519927329"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 13 Oct 2020 02:56:40 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Oct 2020 02:56:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 13 Oct 2020 02:56:40 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.58) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 13 Oct 2020 02:56:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aquWZjqryjNfXIOF4reiuIIXUyUXWcsxkT8MHYNrP7b4ZUQbd7+77VYHiPrTjSE5ckmDt0Xt5YdyKvPW803fYOKuKnsgnySSQQs4aGXV4jXtITLVy5KAgFR1EQ5TgTKr89gGiElYztN2v6mjNwonw3NbXS9o2bPzuMJmEpl3SwuEW3xH46e4NGU8MghTuG+9xciOFPw7mwNWz4pQFKSt4Zm7yOT8IcM7veEflFlbhb0J7AHoE8Rvhj7wmij257exf/75FvS/AgYN8XA6DEm78poprJzVHQQVG9v0ulQeXyDIZukW6lJ9NUgAs8adxxfO9wEfI2XzCM3C9G72vNgzKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FAJAfM296T7Q5tST6Uo0DTlurDVlH0+2dWtbm67IKow=;
 b=m7fzzPCLUW/17Fg+T6vf031R6WpGnV2nC/6Q/Hj1+RcAK7dlgMvTSOMlmf/LioaY+tpolpF91pysiwAZj1emJc2vNnT4wPfcI6vvcwUVucyGbzoU7cb6pSETirAsBXgtomARbmSKC4u9c5jDc30ZJzrD0yUSUE9oJb4gRt33dqeGfGdBbFVqgZHTWLuGhZzNkKUL/PC3Vwj80xa4mleDh8XwYt7cjYWvxUu9de26CvHLiUxQ1tj606iAMsqnEvd9IpYDVs+MtBvbYOLVeJV7z8PYTrxvv5CuJF9db/qItw2K1JqPkDboeP+LSqPM3mWnYHGcOgpV8nvZiIzhPqlALw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FAJAfM296T7Q5tST6Uo0DTlurDVlH0+2dWtbm67IKow=;
 b=DaJdpVrprmjAwMSemc8mTdIVXZ8+hL1M28sw4SQEoQupKJJ/SMNO6fpAkz7Nn7R6dUqWZA4ivFSyPUeNkjbbDYEpI65nT/fCO4pzbhLmrSpXrLS7Nv4K9VkoAZYH4odwKzdGWK8k7cYA58ll3Z6j1qTO+OhoJHw5O8T2D/v/ymA=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BY5PR11MB3976.namprd11.prod.outlook.com (2603:10b6:a03:187::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.22; Tue, 13 Oct
 2020 09:56:36 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3455.031; Tue, 13 Oct 2020
 09:56:36 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Shankar, Uma" <uma.shankar@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/dp: use opregion mailbox #5
 EDID for eDP, if available
Thread-Index: AQHWoHdy3e+P/mHIW0misMliBS+AAqmVQPsA
Date: Tue, 13 Oct 2020 09:56:36 +0000
Message-ID: <BY5PR11MB43075789F4800E9D04E2DA6DA3040@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <BY5PR11MB4307E5790B466389CE00D68AA3070@BY5PR11MB4307.namprd11.prod.outlook.com>
 <87362jdd4y.fsf@intel.com>
In-Reply-To: <87362jdd4y.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: ecc9a6b8-f560-48f8-f824-08d86f5e45f0
x-ms-traffictypediagnostic: BY5PR11MB3976:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB3976E0408E2723E7CDA45A85A3040@BY5PR11MB3976.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lk6z6cX+fKbimKzfsEP7wdo7a/leZDEP/qr04yJ5aqC10uQVfimTjH7o9XyWdu3Ya03xs6KdzkWufd2vVS++MnreV59GOwNxn6Nfkwv9Rl6D9bw8+Evf+DbOLT3RCkl3ixDye3xjy6k8XLflFwUx7d49K8iZL9babp6u2+I8mXiEx1rX+eCCv+qJFzWTjwDO1Zx545pq6jq1/PcNk7YNZquNnPRiwBPde6PUQj/VFGbvR6ZLOV74l5VwCm9NhROKASQfts8g3zR1fQ75esIbYx8jgfzyMjJ+uwkUitJQGtzoYlrpR+FUVgkmqaSDUbB7z4dfrO92RuHtFjJ519fsmRD/wi2SFE+B+Fh9xD9uMho=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(376002)(346002)(39860400002)(366004)(5660300002)(52536014)(110136005)(316002)(9686003)(6636002)(15650500001)(33656002)(2906002)(8796002)(8936002)(55016002)(478600001)(186003)(71200400001)(6506007)(53546011)(26005)(83380400001)(7696005)(66476007)(64756008)(66446008)(66946007)(66556008)(76116006)(86362001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: AZpp9k7KUNf1RhBTasbJpo6oOkgVDaALWqlVKG+3MbPwKwbEHsdc5ptR/jJ2w7a77DH0L3ts2ei32xh+5Ef+NrpvcOWgHne1SLQUS3ezaXz/npUsXxQD1UJMw1nayaYuJhE7caaDy8iLE4smvaa6ADPCLXb8p3sZTPRVEQBlT5g+objVHN7spEHBb8vWS9yzRUCGzVQnrbXXTBrkEqRtRrQ9nqOPAObwTS0Z0p9Fv4MuAloDgh9vK+tKmI3XLKk6Ewi0LTAv9IYxeJZgnM9XXGig2XnVPoMh7Q2tRctB/AdubJ0xOnse/JWofTjDmtgGRMt+vPRVMUkkSv+Cw5QxQ67PXhqv8s7dcr8zbfKehYgkaigDPDXQdL0c6ZEKITx24yr8FrxbS5jKrEgRJcwkt1cDT7UCKENqxD0C/2sWvGF9xfChw/MEf/YYbv4TonD25u6ESgzw/Wnw2S6SxQzxxzj3QKUZZfphi/KFkr6IcOyeRiRedTzr39De51/pC+E3tWUIZ3zJ8l65BL4mVFnPwES0JQRYVnb6aV8DYa4V+D8aQi9yvLJB/QN22Oa8/C68mGp7uEYpsBSnV193sf1E2awgKlqv8f//9pdrmpW9WHVOz5m8VKLJVzpOteFKwoYmX7z9/85uei1mSUg/ptAoDQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc9a6b8-f560-48f8-f824-08d86f5e45f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2020 09:56:36.1775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZybZshOVWoRWEltGKPdhs5r/MpVTONJVDBjgLg8Jg/lcMyovWo4eC6qKKJY4L3WBDOKBkAd6hqDBLFFFWz8AKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3976
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
Reply-To: "20200828061941.17051-2-jani.nikula@intel.com"
 <20200828061941.17051-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Mon, Oct 12, 2020 at 5:09 PM, Jani Nikula wrote:
>On Mon, 12 Oct 2020, "Lee, Shawn C" <shawn.c.lee@intel.com> wrote:
>> On Fri, Aug 28, 2020 at 06:19AM, Shankar Uma wrote:
>>>> -----Original Message-----
>>>> From: Jani Nikula <jani.nikula@intel.com>
>>>> Sent: Friday, August 28, 2020 11:50 AM
>>>> To: intel-gfx@lists.freedesktop.org
>>>> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma 
>>>> <uma.shankar@intel.com>
>>>> Subject: [PATCH 2/2] drm/i915/dp: use opregion mailbox #5 EDID for 
>>>> eDP, if available
>>>>
>>>> If a panel's EDID is broken, there may be an override EDID set in 
>>>> the ACPI OpRegion mailbox #5. Use it if available.
>>>
>>>Looks Good to me.
>>>Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>>>
>>>> Cc: Uma Shankar <uma.shankar@intel.com>
>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>>>>  1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index c57ac83bf563..d1307be196a2 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -8114,6 +8114,9 @@ static bool intel_edp_init_connector(struct 
>>>> intel_dp *intel_dp,  goto out_vdd_off;  }
>>>>
>>>> +/* Set up override EDID, if any, from ACPI OpRegion */ 
>>>> +intel_opregion_edid_override(intel_connector);
>>>> +
>>
>> Customer report DUT still get EDID from eDP panel instead of mailbox #5.
>> After some investigations, this change can retrieve EDID from mailbox #5 properly.
>> But driver still used panel's EDID to enable eDP display. This is 
>> because of drm_get_edid() was executed after 
>> intel_opregion_edid_override(). drm_get_edid() return panel's EDID and overwrite mailbox #5's.
>
>In recent kernels, drm_get_edid() respects EDID override, and calling
>drm_get_edid() will return the override EDID from mailbox #5 instead of retrieving the actual EDID.
>
>Check the kernel version they're using and the drm_get_edid() implementation.
>
>BR,
>Jani.
>

Just confirm customer is using kernel v5.8. Seems drm_edid.c already include
the change for override_edid.

BTW. override_edid should be "true" and used to over EDID in intel_opregion_edid_override() in patch 1. Right? 
But it is "false" in the patch 1.

+	connector->override_edid = false;

Best regards,
Shawn

>
>>
>> We try to move drm_get_edid() before intel_opregion_edid_override().
>> The test result is positive, mailbox #5 EDID will substitute for panel's.
>> It seems we may need some additional change for this patch. Thanks!
>>
>> Best regards,
>> Shawn
>>
>>>>  mutex_lock(&dev->mode_config.mutex);
>>>>  edid = drm_get_edid(connector, &intel_dp->aux.ddc);  if (edid) {
>>>> --
>>>> 2.20.1
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
