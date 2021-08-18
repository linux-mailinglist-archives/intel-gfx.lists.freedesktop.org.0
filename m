Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C08663F0789
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 17:09:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7FB86E83F;
	Wed, 18 Aug 2021 15:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F1926E83F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 15:09:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216375847"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="216375847"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 08:09:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="521098743"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Aug 2021 08:09:47 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 08:09:47 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 08:09:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 18 Aug 2021 08:09:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 18 Aug 2021 08:09:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GvbOsZw8QAFb5MIagKGEaHtAHfM3DlNx7itpXnI9cnAfZ6vkvfc60vOqDzC0n3iaIXDsETAs/J622lgQusueas4fvfm0trGd0j6YPGXU7QwCpheh/tEpCTkoYJZIs/XLYezHWDoAWZjzTWQpr5q17fCX8xgU6xU6Ov/3kYosBdYOgbRbhpnLqduGgWPpeblY0GWaZaUC6MFfTrKBaiAnKTyJSzHPv1x8m/kgcWtqpuX4A0RMmacVP7T42Y5/2gdl9WPo10DjmhC8upEzrlZgj4RD5dY85ObFQrOBVY307WavGWwFlIyz1Nu/02/ozARbUSkpdfRT82IK8aFO/9iahw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rohAj4oBqtoyRFv2BKO843Xpr5vhkkvhCS5Aptr+gHs=;
 b=FltDnS4ETQwU3kGMgC/RKmfEjzFWzp36gr1LAysxFXiIsH7u2khtC9i5V8p/K7SZ5hY0bL6Plg0LPTm78Mo1pMHIAsNWkTalnp7sHpsFBFdZ/UaYfK7NIDl0OdtNr0QGht5gNFov1qv4xYSWEVKLwBd6rbiXiiDDBxcQfU8R7qqV329IcfJddeuRBg2Tk/8ljG0YsXC9E0/I6PxisDeftZlA6W74uO03irbZwwCzlFADkSylQLfBJB6tgqI9IrOwOQTBM7gjmCALidZm7aqynwmJhq/YG6HwpZj0NYPK+vTMLwrI+jumDwZR/mO2aLAyoAlgzwLBzsaTutMHonngrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rohAj4oBqtoyRFv2BKO843Xpr5vhkkvhCS5Aptr+gHs=;
 b=I21UPLncyU7b7ypK4u9Z7NeY1C+zZvCsvf3f287o8YqhjMLw6bztUX6VxvVhBKXXlFJcqmaliiYvlgeubIkgBuC5aKYl+meDcG0O+bS31cA4gzPzGFeAlnfJym0eAggkueJygKijVV7AqHJAep6DZsOYcZS9WZ/m56bt3d80Zp0=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5571.namprd11.prod.outlook.com (2603:10b6:5:35f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.14; Wed, 18 Aug
 2021 15:09:43 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5%8]) with mapi id 15.20.4415.024; Wed, 18 Aug 2021
 15:09:43 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "20210706152541.25021-1-shawn.c.lee@intel.com"
 <20210706152541.25021-1-shawn.c.lee@intel.com>, "Almahallawy, Khaled"
 <khaled.almahallawy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
CC: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng, William"
 <william.tseng@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: return proper DPRX link
 training result
Thread-Index: AQHXcnpPP3kXTFmn9Eyy1eKW+tWwfKs2llyAgAAhyfCAQuZMcA==
Date: Wed, 18 Aug 2021 15:09:43 +0000
Message-ID: <CO6PR11MB565113D39F6A44130F72386DA3FF9@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210706152541.25021-1-shawn.c.lee@intel.com>
 <bc5e0ada3f3270a8e1531486ba4302dcdb1c80e6.camel@intel.com>
 <CO6PR11MB56513D4354949879295355E3A31A9@CO6PR11MB5651.namprd11.prod.outlook.com>
In-Reply-To: <CO6PR11MB56513D4354949879295355E3A31A9@CO6PR11MB5651.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 78d8c222-fae6-4760-5a7c-08d9625a3574
x-ms-traffictypediagnostic: CO6PR11MB5571:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5571B6558FB87E3B8F7AED49A3FF9@CO6PR11MB5571.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LlB2U7qbDOSKbGVVlLXjtKneNk+cQwXOxHJUmvk6dAXnKWzNdrHXKcbgfTh6byrqI1p6GtpBT7QYl2uCJcq+LpAEZJD9HlYm8TZRvwn5Iq52NTMAcrJanH0ZCxFcxCkcGpzKsA+tUcMpHnuCKvvwl42RLZ2zCwCnJKKJpj8QIGW6xu59WJDkROvyoq0Y4g4WVKyUkVoF225XKW9ctH7zYVuTqSZuoCaWoS9anYHeGQBvQlK6TiUJpoc5AjtWnBWo9xxWNZnO3EWabERMjDMT3HP0U+r1FUs0WOZYmUmtpYG5XadQMNkh/Cgahb0r8AQsPXM4k0bOTe3i1MYe4a4boXrb5i5vtX548IfB2+/2a6LCUjmSefJWBxZ41nXmhPIHxUMY8HH9m9xob8RUWG3Z+wYy0IY5OdIo2Vmn9b2LbFULFUim5YqYONkDjhYZFPPmWX6QlWbglX0yDCNbdD+tiuAhm/uptUFnRi6Li5pim072/im/fkUKYglDSVWNRojVHsn7cfIezMVmROLg8xz6YxjrOgb205DnRvC7oC9DgZ4Pa3m2zvWJ6OptZqKmmyVjbx0TstLApRNuc/UwxNvBmrWNkFPH6vamJTvQdYb1LPfwEKmL2+Ud1Xu3/zgG38A7fiZQnRj0S2del915sldieXpi5VNIghlS0vU8GmEoQMnWwb9lMEyufdIwuh1yBESeZ/n6zhJl8eNBGb99CSWQSo8oB9GAZzUy55NQlYVFXaMMUAZ/+KUfIDEgo/fGeBJQn6mX896LCgzazzuUB569Usz+Vz5i/TPtWJyUOcdOrMo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(39860400002)(376002)(346002)(136003)(55016002)(478600001)(5660300002)(55236004)(7696005)(316002)(38100700002)(2906002)(26005)(52536014)(33656002)(6506007)(122000001)(110136005)(54906003)(83380400001)(71200400001)(107886003)(9686003)(86362001)(186003)(6636002)(64756008)(66476007)(8796002)(76116006)(8676002)(66446008)(4326008)(66556008)(38070700005)(8936002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CLCAo2msIIJW8YSmBXR5e3RhWDhsrBU9bW12JS8uAlQdNSGYTfuxLlNhAak2?=
 =?us-ascii?Q?379n1erJYa3VdcOlSuKJVbO6iv9GAJ34WL31QMRAhBUfqWEkhPYUatiOwiMw?=
 =?us-ascii?Q?guVk4c5w9ggVFYR3nhTCOswh9xmlZOkz5qfHI++o95BN02vKY6Ouhj+IWFWM?=
 =?us-ascii?Q?PeH8uucV1Rx0iG9IpEr932g/hpL0h043ebOzxK+eYI0/Et84BnNLz/SWk8fi?=
 =?us-ascii?Q?Iwnuff89kDUG/EVNjs8WDKD1DOxNYCdyduPQwGTmmsNLRS9I6TCwT+lfmn1E?=
 =?us-ascii?Q?DiFVitQMWWTvHlmcMgnTKj8A1xZDEM7yyL7MhNAFi0YrCAmpsyA/b1AGRkCa?=
 =?us-ascii?Q?w96urJJFsO3xdUKWTropPOVuoJLl9rB7UhGrjKjMHo1QX4/EcBocrzZq5BJW?=
 =?us-ascii?Q?/wvlIO5v/uw7BYUDmaQBpkGMUkSrm0qhZ1IfK80a4mCGyNpl35DRwo1p6eYe?=
 =?us-ascii?Q?KcOcpLa92puj7KROqVGLdDb0Cyg9oijWi1dPrv0vvRYjauF5kVK1vXz9iC4V?=
 =?us-ascii?Q?zAHvBxwc73DyyjmQi/4FxYvls+ukHhS9s5peTy2hTcjU2J/SJQkvZGZFvS5c?=
 =?us-ascii?Q?kiBQUzUwyaE67AjVrI8Kw1bMTGgk/BDOSIpC4zMVUcwVma92iCIkyQReSbHc?=
 =?us-ascii?Q?z6PHuq44Fdh6intE1hxYiZjy9AkL5vgAMia6ath49jVVSfc8yvhApGAEf8bK?=
 =?us-ascii?Q?97N3EtNprvVH3XYikwrjvEBxh8EAkQKlXlDS5qb2ok6FjdbxE2GODeb6crbM?=
 =?us-ascii?Q?9kmSzhE+oJTQ3+htDvZztx1CXnxUIz6zaKVzfl8uAUncXK3rybuKtaGA7bvP?=
 =?us-ascii?Q?xZgzR4vNe4Y/C7r3WhCy60p7okJoEuPWvOkPZ/nRUyKuNqd+IZN+ZL5lnf+s?=
 =?us-ascii?Q?eSdrHxYlwJQ0Sg+/R8AXuuVIEPDVLWwUJgG3keu6Qxnu7KWqOtMqawIkfc2e?=
 =?us-ascii?Q?y3RAze8yV2iBwDxpvyyappJ5KxHG7PZ4fjgtTZoPOPZA8yRZSm3kU/uRzhXJ?=
 =?us-ascii?Q?h06yk5IRfjmPHdAoS0miE/awf/fgEpznxzboX0LUF7+VXHWoycjt4b0SWpxZ?=
 =?us-ascii?Q?xYVCaukUoLX9saNEXZ0qxx39SvB9ufoxkByt1chExaZnPT3tRFGWZtuxnIUb?=
 =?us-ascii?Q?Ag5Lupjt2mfmOb4D2h6WtFGO2xvBO/fWzca/FnHfvu3XwXq5eozJ5Sfj5Fz6?=
 =?us-ascii?Q?W6fvClMjPXILQPue1GvyOZl1rPktP3CIbwzjiO1FWaSZn42a3tUAWV/Bl+ct?=
 =?us-ascii?Q?yoPg5N4n43Ky9kbqsyEKx5okOlUjzZwtjahkk6JOeuQKqqAliFoQBwzJBQ2W?=
 =?us-ascii?Q?RSf6JpLujvoNXaOvzrZyGYix?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78d8c222-fae6-4760-5a7c-08d9625a3574
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 15:09:43.1130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IWktmx3fUDKzmF7dbPXQhAVxm4S5flzl7iMxatPaIvzWTtV6YCnb0eXDrlrrqV4wHnRFslRxXaQjNl3aECnvKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5571
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2021-07-07, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>On Tue, 2021-07-07, Almahallawy, Khaled <khaled.almahallawy@intel.com> wro=
te:
>>I believe Imre's LT fallback:
>>https://github.com/ideak/linux/commits/linktraining-fallback-fix  and Chr=
ome user space fix:=20
>>https://chromium-review.googlesource.com/c/chromium/src/+/3003487
>>should address Chrome concerns for LT failure and LTTPRs
>>
>
>Thanks for comment! The new fallback patch should help on this DPRX proble=
m.
>One more thing. If driver did not handle DPRX link train failed properly.
>It would impact link layer compliance test case in below.
>
>400.3.1.3
>400.3.1.4
>400.3.1.6
>400.3.1.12
>400.3.1.13
>400.3.1.14
>
>Best regards,
>Shawn
>

Hi all, before Imre's patch series land on upstream driver. The link train =
failed
handling works for LTTPR only. But DPRX does not. Could you please consider=
 to have
this change as temporary solution? Thanks!

Best regards,
Shawn

>>Thanks
>>Khaled
>>
>>On Tue, 2021-07-06 at 23:25 +0800, Lee Shawn C wrote:
>>> After DPRX link training, intel_dp_link_train_phy() did not return=20
>>> the training result properly. If link training failed,
>>> i915 driver would not run into link train fallback function.
>>> And no hotplug uevent would be received by user space application.
>>>=20
>>> Fixes: b30edfd8d0b4 ("drm/i915: Switch to LTTPR non-transparent mode=20
>>> link training")
>>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>>> Cc: Imre Deak <imre.deak@intel.com>
>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>>> Cc: William Tseng <william.tseng@intel.com>
>>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>> index 08bceae40aa8..e44788b2c564 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>> @@ -849,7 +849,7 @@ intel_dp_link_train_all_phys(struct intel_dp=20
>>> *intel_dp,
>>>  	}
>>> =20
>>>  	if (ret)
>>> -		intel_dp_link_train_phy(intel_dp, crtc_state,
>>> DP_PHY_DPRX);
>>> +		ret =3D intel_dp_link_train_phy(intel_dp, crtc_state,
>>> DP_PHY_DPRX);
>>> =20
>>>  	if (intel_dp->set_idle_link_train)
>>>  		intel_dp->set_idle_link_train(intel_dp, crtc_state);
>>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
