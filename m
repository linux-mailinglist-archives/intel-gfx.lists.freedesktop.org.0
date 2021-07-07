Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 586FD3BE099
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 03:33:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40AA16E7E6;
	Wed,  7 Jul 2021 01:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD3FA6E7E6
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 01:33:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="189599803"
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="189599803"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 18:33:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; d="scan'208";a="410659361"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 06 Jul 2021 18:33:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 6 Jul 2021 18:33:19 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 6 Jul 2021 18:33:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 6 Jul 2021 18:33:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Tue, 6 Jul 2021 18:33:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gBU6okZMbWzn0E1lZa7x+RKhdaqC1ki5YKwLzI6RdqHdvPOYenwU+hTUk5sPPr1jBa54iRjOhds5gnht8aaTOs1MET39tdk9Ez8iBIn4X9UTWzlLvWyIFN/gOGN4Jb4Gcze4SGyhGhDzUC8INHivzF/Ffomtw0Kbb6zliZkoyx1222zBzof9IkWJ/GuR9Le24M8isJKQ8lWJ1QVh6Ux7SBok+ftaXCC1pxo518KFK6mmvRcN+vUE8ERpkOuhCWzaTWeoc7dJNsXIVRuPAbVjfZhxIUSYyKVtE/yEaFMfYvMoZvmeN9TUGtcME5jVY6M9Q+asUaN8tTu0qFGv/s1RFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TUA8ZIV4mn2qnidQqz/L1naaaOpdrloZ+DZSTB44PPM=;
 b=QZC3meT6+pNFdDrcbhJGLfO1gacven4NEnwDOiKOOvO1TPGB8TAOj6pN9HMwcAB1fMKnWQyIRismH5/2il2FPEQOh4a8Dvh32Izw6ZezcArMLxm2mvRU5bWH0dabbyT6KqdEoQS/N+y+yHkRgO3/M9eP/rpdWsvMuw4145hVjK2zapIYwJbR0fQRikZND4DWqz4Pd/yHq6S0CIAJGDkZov93W4Fq3r+ljl5jC8b9jGf99HP9MSg7L8WPwB/wm3Tpgy0lQgt2mifcYVtWvAqGCam0VpXIVDNyBS0YjJJ5XMlpwEVRjpmvvHzdDQQiRlUJxX9tW7jKh0FFVjvej4PC8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TUA8ZIV4mn2qnidQqz/L1naaaOpdrloZ+DZSTB44PPM=;
 b=Bz1ekEN0ZIL/8g9URClEa67N7gtK+N/0To6rgLodh20FYbUrGSd39L9ce1oFxH53nTk5TBeFn4THzat9ojsZFGgNpN+B6I4bhR2qEsVgyeXnrfZJtLkSm2PlVZkJSQlvHs0Dy89LgSGkv6JrAqgk08lGev+0IWeXH9ssxSlSWSs=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5620.namprd11.prod.outlook.com (2603:10b6:303:13e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22; Wed, 7 Jul
 2021 01:33:17 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::396d:8a2a:b789:55b7]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::396d:8a2a:b789:55b7%5]) with mapi id 15.20.4287.033; Wed, 7 Jul 2021
 01:33:17 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
Thread-Index: AQHXcnpPP3kXTFmn9Eyy1eKW+tWwfKs2llyAgAAhyfA=
Date: Wed, 7 Jul 2021 01:33:16 +0000
Message-ID: <CO6PR11MB56513D4354949879295355E3A31A9@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210706152541.25021-1-shawn.c.lee@intel.com>
 <bc5e0ada3f3270a8e1531486ba4302dcdb1c80e6.camel@intel.com>
In-Reply-To: <bc5e0ada3f3270a8e1531486ba4302dcdb1c80e6.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9f8ff0c-2751-4ace-2d2e-08d940e73214
x-ms-traffictypediagnostic: CO6PR11MB5620:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5620DC6D1316048761792BF9A31A9@CO6PR11MB5620.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AUtsfg8HhsRGwP4ExPccFpFedrdPiBvuETMaZSSR9RGYhn4KFmyax8puRJnQABDRIKTXCbjVubwnKb5F8nzd+pud3DDl80KziShr/xPki7lQpYoKxEGqJ7VtT2CDPHRcPfrrzSZDMsICGW0gKo64Cj/s+JL4msxqaNFOEy6d+zTdFU7KLEk4KnX6tNPPBBwpwLU5UySVcC0y1JpY7LfSEAJhdHE9QaiIN5zlnUOXuyo2Q0maK1LTt1XcZx8iQmY6Cnw5hY32F+ApS9nQ3pGxaF7tV9egSiFAxvmFt8lTEvQbWLNW6xS5fbiDHjmaK0wUHmaNd9jdhm0bndQ5ile3bJoum2+oTOkoshTOiuuGj9EtHloV8xkxg5+UDRkIWQxiIa1YtP6uPhaslhcoIw/sjP6reqMeC+FCcEh5znCnrT0/lzw9p4hQo0pGaHjowBxffaz7vv+HnlKVsqbnxH49UTpCrOc1P3pWYtsu99ZWUHSuNlu7Dd9RZi2bZGisyfBHr/ZXAKuv3gJqj4fyy4LPmA652yPRBfAtgNJNmYkeihHBgRi1vd3y6HFO8l3er5+/nMJ7qj42HUSXjeGygPXxwULEGxwmuha6b43LixuOXAGJdO/0yqW3mclz9yAnyHb7nGkrqjjINVUwIDQjw+eQOAy11XPJGcYUPj7eWLswyPnfd8v2p7T92Zl69Gdp7jg2wMLxbf/dUrdP86+LswvhCHWWn6wY4UhPfQ3SqCdAUHkPtZIRhtzsLhJTaWp5bIscgNtP5trIUgsxrhtVM3HaBA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(346002)(396003)(366004)(136003)(376002)(66476007)(55236004)(86362001)(55016002)(9686003)(66556008)(8796002)(38100700002)(8676002)(7696005)(76116006)(4326008)(71200400001)(186003)(26005)(66946007)(6506007)(66446008)(478600001)(83380400001)(5660300002)(54906003)(52536014)(110136005)(316002)(107886003)(2906002)(33656002)(8936002)(6636002)(122000001)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qea3Ja/BiXuNXSeiBjFF6l0FRRuaLD2BS1qDnBYrrdSucxr7QDYoa+UXmJci?=
 =?us-ascii?Q?GYaO8OgifWmqyDxYh/o0gjM9tgRu9oXIW0SQLwXIOrJzH+00MbNwtXftUtSQ?=
 =?us-ascii?Q?cWxiIlJYD+WVN43VX9ykWBKldD1sppFiQAYMp8YugrB7XGzW5PM+T/VbvihS?=
 =?us-ascii?Q?762ehB8K9qaJLRth6tPFNWJJ2gJklPEozigEFuzt1a+KpcUFlNROzApkdKbz?=
 =?us-ascii?Q?dCVOx4foTg+RIX8eFqEYdTCgG5F1E4gy7Y4pDic7bF14W+54UucxfTXLOMOO?=
 =?us-ascii?Q?AlYvFnYH7jrrvYgiOBio1OTjnyKD3Q4akrhZs2CiPalmdoUe6e7JzML9ELEW?=
 =?us-ascii?Q?dOkWtvIQ6bdLIB9BjdOCm49s4RP6/KONwW+sGb1nZXLecDmhCG5urLlB96ZD?=
 =?us-ascii?Q?a75m3ICUcWNd8PYHkTrmohMM8DBYI24Ig4Xxy/tAGN4Rsel8odCQwb0wcKMW?=
 =?us-ascii?Q?GLIPNWvUhyyPiEAaUQ0ulPmALaVJftshHenvRd2H/wjEYcKbDyCChgCtU8VL?=
 =?us-ascii?Q?hsfuArTf8ChFGYAxktGXifUh1YtJ2JbRllrad8wq/gvqbkdW+yRi3UHgIFHA?=
 =?us-ascii?Q?F0zOCq2/8TGvFg4Lm1FKULfIw66gelL9jzMp5vw2Y5M2W5+C9ddQPfT0duO1?=
 =?us-ascii?Q?BO/RzX9EXQ1NrJ8JKmYJJwwQMg+oTyT2aclhPrYIux1fuFqgfdQjNNDQ8C+G?=
 =?us-ascii?Q?EUFOIBHi9+3LXaHmvM64F0PWXPdHlsHHCA8T6SgAvtcayNtvUSlozc0FOUbm?=
 =?us-ascii?Q?u2PpEkaG9PrRzvRTIV/RawQkZh7x9Mr6C1DHX+UdjJnpLdZdFc++j0mjFN7X?=
 =?us-ascii?Q?sYbwI9ySYslaGPkrNuTeoXIM5HJRys3JhPpIF5CijqX4YaiXV5I1szSeAq7a?=
 =?us-ascii?Q?d5/aJrVMBX8irtoH6pRJeAxzT+2ZaArPNaaonHC8OSGRtdcII/DX9UuOWZby?=
 =?us-ascii?Q?RtssAvX34wS1vhvg7vmdK0ttJKjFuYaJ9dh62i5tOXm2bqL/1dg1Su5ZrkGz?=
 =?us-ascii?Q?/VJ5DLrlHJ8WZGkYXaPOZyjqddtUaTaN9YTarlzSowywQ1sXPsg9GuPXMmOn?=
 =?us-ascii?Q?ooW3+DKEmLIWdlWOAJl/IOaezS6TrS600epiTTLSCZlcA7Qgek/1vecZ47n/?=
 =?us-ascii?Q?XFnP2aMgRTaQR/nByI18Ql/eDcjs9ZFJIhfEE5RdWk/mcrlUX6nLWJRTqYB3?=
 =?us-ascii?Q?xEsY/uC86sudHQW7ra2xsBZl10QVySvgTLIZbfrLStc1iTYVrt+njCS3vOPc?=
 =?us-ascii?Q?oaKrmF3sh2NZlDuHXJNuCQql45NytceM3d5ySssLQSPpj7uQNXMvX3VxPp1O?=
 =?us-ascii?Q?+dXdE9EFdeVtsW5TURFJwt2D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9f8ff0c-2751-4ace-2d2e-08d940e73214
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2021 01:33:17.0336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uw1q04V3gEviIaJMokSkazynFAChKbZw1b3RBwSQO9q2/3vk0UQS3blALOe3lsubiHTiWvIzNIxSF4nxNZMC6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5620
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
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
Reply-To: "20210706152541.25021-1-shawn.c.lee@intel.com"
 <20210706152541.25021-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2021-07-07, Almahallawy, Khaled <khaled.almahallawy@intel.com> wrote:
>I believe Imre's LT fallback:
>https://github.com/ideak/linux/commits/linktraining-fallback-fix  and Chrome user space fix: 
>https://chromium-review.googlesource.com/c/chromium/src/+/3003487
>should address Chrome concerns for LT failure and LTTPRs
>

Thanks for comment! The new fallback patch should help on this DPRX problem.
One more thing. If driver did not handle DPRX link train failed properly.
It would impact link layer compliance test case in below.

400.3.1.3
400.3.1.4
400.3.1.6
400.3.1.12
400.3.1.13
400.3.1.14

Best regards,
Shawn

>Thanks
>Khaled
>
>On Tue, 2021-07-06 at 23:25 +0800, Lee Shawn C wrote:
>> After DPRX link training, intel_dp_link_train_phy() did not return the 
>> training result properly. If link training failed,
>> i915 driver would not run into link train fallback function.
>> And no hotplug uevent would be received by user space application.
>> 
>> Fixes: b30edfd8d0b4 ("drm/i915: Switch to LTTPR non-transparent mode 
>> link training")
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 08bceae40aa8..e44788b2c564 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -849,7 +849,7 @@ intel_dp_link_train_all_phys(struct intel_dp 
>> *intel_dp,
>>  	}
>>  
>>  	if (ret)
>> -		intel_dp_link_train_phy(intel_dp, crtc_state,
>> DP_PHY_DPRX);
>> +		ret = intel_dp_link_train_phy(intel_dp, crtc_state,
>> DP_PHY_DPRX);
>>  
>>  	if (intel_dp->set_idle_link_train)
>>  		intel_dp->set_idle_link_train(intel_dp, crtc_state);
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
