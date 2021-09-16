Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9942E40D81B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 13:03:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B7E86EB6F;
	Thu, 16 Sep 2021 11:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 910D289FA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 11:03:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="202694565"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="202694565"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 04:03:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="610609221"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 16 Sep 2021 04:03:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 16 Sep 2021 04:03:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 16 Sep 2021 04:03:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 16 Sep 2021 04:03:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SM8VneRO/p4jBR/1iiRWxeoEiaY9a2CS3sLKEZOco1OMSnU1WHwhohI6tfq7jfkHUpEO22zTdXZdGx/zgde+d0CuKtcSYFKjNaPYMDZBRe+LMKIPUeGcou2ahPsfV/SQI2gsKicqpWDFPmaRkyCJq6kB+lc/6XWZ2ChHuAvInyoPSUd4MgOOpmLATFVVhQjsYeQvqHYooL336D7KhqS8JiFUaU2Hq5pfR4C/O+isYYrJT1Bx3DegkO5so6e9oLHBrNWcgquuYJ8S6jhZgEjGfn3vy7fc2naDJgk5tISWL1Nbzj3y7g2AdQOJlGzsMtw8M5gvQSVVBuY/xHCoeiFoCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=fGydpnQxofUX8HPteC+i0D7vYy7Oplch+Ucci048Yds=;
 b=OWi2o18nMOxok9GeZm1U2LT0pzevmyC9VQA0rPSXvmc6zW/9kHIaEjw3Sc1tpgf61x9sqORqEbkAINMokd9YkATDHWRTm+RTrUYG5xyfEV2cEmIDxu0wCgh1x7o8j4tQb4WuKNOz6AR19MlS6AU2T5Tw0N80Vy+xwK8QSBSDy2sqDGogHuZACA8SYqmr9qmmb8zH4Qcfqu87QMcBPqEWwjjttqFZtw89YxUV5nMze2hJ9PHo29C4h14FgZs+vuUkOgzEx29i40M73GowUXtuw/GFT1Hg9L3VpAjeI0W5rGk4b4R8jk9fp6i1hkpVHsVZOiwUP5PF47b9C0ghK5azjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fGydpnQxofUX8HPteC+i0D7vYy7Oplch+Ucci048Yds=;
 b=vdSQquva3na8dpGxaW27qySn/rjophG3WDQwDHWL5hL38XvqrgMiYdM8mmcor0/f+L/6HC+aSmuyFy3B+itQEJdrWANJcqqvpYAZHDr7bJHPBleZxQpSOv0Gspjzki7Hq/4Q+DaAb12X2wM4Ku6d3KSPOaZuixxyGZrVp6qDdQQ=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Thu, 16 Sep
 2021 11:03:08 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::d92:b64a:8b59:cf4a]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::d92:b64a:8b59:cf4a%9]) with mapi id 15.20.4523.016; Thu, 16 Sep 2021
 11:03:08 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>, "Chiou, Cooper"
 <cooper.chiou@intel.com>, "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [PATCH] drm/i915/dsi: unregister gmbus if LFP display was MIPI
 panel
Thread-Index: AQHXquQRojdLiAiMPEuP8d9Qwhe7gqumdpmAgAAFMiA=
Date: Thu, 16 Sep 2021 11:03:08 +0000
Message-ID: <CO6PR11MB5651BAD4133E70B7A008B3CBA3DC9@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210916102118.17356-1-shawn.c.lee@intel.com>
 <87h7ekx12o.fsf@intel.com>
In-Reply-To: <87h7ekx12o.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48f5f8f6-c57f-455c-5cbe-08d9790190d3
x-ms-traffictypediagnostic: CO6PR11MB5651:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB565181974DD10C441FC17072A3DC9@CO6PR11MB5651.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1zNi7nnQ/rg8wSBakfUYg/hV7Nr3hy1cIXh56aVLNmzYbFIBmJBBiyXFLPoY2XbHSzfoDX5woW+aDign4nrtNuZ40E9RtkFqVikVURzat9UrtOs26RUiwq0n7CXK7BN/uMbe9Y6zrzNe82g/cNxG8S3DKiH/BsCGmmRYjKXbUC6B+dsuc++gLm0o0xkcjZ96hd950kwOs3RaN9NhUqzmm40Y73Vd0vEiRGUapbSi94QQmS5ESp3JBraGS2PYGrF5+joxaFuT9cvSuk8V9iD6M31AaEbMO3OPLH/jJOphiEbHi820Im/O946rjw8zz9GEedyVhxfXZGz0msyeUR5lw1F+wUOF3F4KmtP8BdpN0K8YZaJRbhb6q/ONZaJI0zFI6hVghPXUCHhovoKvFwNh7VWRDMw5KcexBcWCOjFKSLf3w4TlnpvU8E+YgjqH9i7ecU2ECNig2XHSEJCTO8RCFj6bvKIIcaGWt8PIUVogceeUhrvi9ARcudqxsGVuWV+7tl+8LXPw1G9w8VGy18Vtwaq/+dDKKxWbzjw5nkMsZOhOyeVBiqo1AsFXZTwyS+P+EFQ21vtF7x3oOarAT3jWkFJ4eWBshEvyy7zM/GX1kqW3+Vneb+dSB+6T7VW3ZSEuX+f+zBnWLkieRryeW/mVFA9mnBxkaC+97MwMQWT31p2csqrTZeldU5RjWnbOti/EZgTSxE/QFrprR6MWFwcEDA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(396003)(39860400002)(346002)(136003)(5660300002)(52536014)(110136005)(54906003)(316002)(66946007)(76116006)(8936002)(8796002)(9686003)(66446008)(66556008)(64756008)(66476007)(2906002)(86362001)(8676002)(55016002)(4326008)(7696005)(6506007)(478600001)(186003)(38100700002)(122000001)(33656002)(38070700005)(55236004)(26005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LdXuvygCmlwUlcUyH6FqBIkQMJRlvOTf0sf3GsMnrLJL6P+E/b6H9F1xsGwG?=
 =?us-ascii?Q?kdUwxGIcKbRw8kajUrOHpLvogT+7JPxkCZLJdUp5KHfWeIkLMneGXNd6PBKl?=
 =?us-ascii?Q?T5GLmG6XnW5aFF9nf4b9pmS3ovWwJu8JA3MnM+gi7CNyqhbhTVd5z5zwx/+M?=
 =?us-ascii?Q?aPhpDEznT3UecJuP8au1M2pAV8kMGFTMiz1CHJtCJgPOG2EQn5fFYhhFCWYi?=
 =?us-ascii?Q?IBYkaJR1YhrU/5pc7/7FKzfEMjyQYS5DvaQWuk9RhXn66gwSJB0nn7tNpSTm?=
 =?us-ascii?Q?fuBiqZI+KDuTrKJAAFhjxwiOuNHLcwAAA2LlSiBIGah9jzf6g+YxYvQv11G5?=
 =?us-ascii?Q?PCQChEu6Fx4NG8+oaXcbkvZCG5XAX+D5epT+x/5SlGU3xxKbiO/Z8O8CILHy?=
 =?us-ascii?Q?1dUlfUm5WE5O4ZurlU9clXJcyiZ95kKSftzgdSRuGNM/q2Uj7Aq3hSa54DzX?=
 =?us-ascii?Q?ZVjYfwBAT092bBBki/WLVrYXZ4xuQJE3bTtFZ1XN5YPoIK3pi9jwN8xpv6+z?=
 =?us-ascii?Q?J/H9clYm4EDHqG99kBRKTPsHUwqkUz+H86yEpWyxXPWzKyUltKB+FnMD3sf+?=
 =?us-ascii?Q?N0oKaVwlkt4FZQ1YKb6cy20XjWlZlfTztfZVg3w8RVDOk686Oa0oeZ94Mt8v?=
 =?us-ascii?Q?0gaWG9q0s6+1qTY95pABVNcZfNV+zBDl4xTic9DuwTvFc1fXwKrJbbr9q17m?=
 =?us-ascii?Q?2qT/yPjOTB6PBRvCFOD/6WQ0k4cdn6KvOOheRltGCdu5JXCuHpXuZeqqFHR0?=
 =?us-ascii?Q?l69mYRunrgQaPaeqbKemuuaD9gHXWJ5MHrVSTsTpM9TAq3Tgk+BSXYbXpdIh?=
 =?us-ascii?Q?I6AYpk/KABu5n/hXGGi4yQRlVeL80mEV5dJET5L4ZYyiweEiPQ871/Y1yCRy?=
 =?us-ascii?Q?as2lrWiXvWoxi1m+CCz5xYxnWj4K/WEMg5/RMSwoe0Cd5zGbQGf65Iewusmo?=
 =?us-ascii?Q?LyZ9EDTHiqHqPg0ikGNcKCxEhb9k43P0dBnDw8do3f5uER6Fi5PyC3hAzd9z?=
 =?us-ascii?Q?W/ppH5f+PinkTKhXt6unAqdtQFXp//1kDRDFj+0a2H2FFdAIl4EgqQNXO0M1?=
 =?us-ascii?Q?LHwBoIUqb7CZzfPWmTk2pR5TNlyODb//ct/T8OJiAQOCrPcMJUG65Mk3uler?=
 =?us-ascii?Q?A7vM7CWBp9Ox/UMhOKGEl16ZRbWZM1LJ+WpA+prOlekgZXQl9WSuq7p7d+Gw?=
 =?us-ascii?Q?RPrVkupQ0wQzXCPYkHyG2JM4a/oYVdbwLLm+4BwWdQLuwwYe/oNDWJSqKFwG?=
 =?us-ascii?Q?8d0OHiClcPLBr6ed1MExqLToRh3u6ib8AutP0vm+JfYcP3oA7f6eKl49hj9x?=
 =?us-ascii?Q?/TI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48f5f8f6-c57f-455c-5cbe-08d9790190d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2021 11:03:08.0737 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kdhZveKVk+duM/xum76wjWSDAIE0iRbCVFYgy+8Vyj9/u3TbtpRcz8OjImfzBVqvfxu+W6wAS7Yi2/5kzP+R+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5651
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: unregister gmbus if LFP
 display was MIPI panel
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
Reply-To: "20210916102118.17356-1-shawn.c.lee@intel.com"
 <20210916102118.17356-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 16 Sep 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>On Thu, 16 Sep 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> Gmbus driver would setup all Intel i2c GMBuses. But DDC bus may=20
>> configured as gpio and reserved for MIPI driver to control panel power=20
>> on/off sequence.
>>
>> Using i2c tool to communicate to peripherals via i2c interface=20
>> reversed for gmbus(DDC). There will be some high/low pulse appear on=20
>> DDC SCL and SDA (might be host sent out i2c slave address). MIPI panel=20
>> would be impacted due to unexpected signal then caused abnormal=20
>> display or shut down issue.
>
>Just a quick reply:
>
>So I don't know off the bat what the right solution is, but it's very obvi=
ous to me that we absolute can't go deleting gmbus adapters from DSI code.
>
>
>BR,
>Jani.
>

Create a new function in gmbus driver that allow to remove a given gmbus ad=
apter. And DSI driver used it to unregister particular gmbus.
It looks to me more reasonable for DSI and gmbus driver. What do you think?

Best regards,
Shawn

>>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/icl_dsi.c | 14 ++++++++++++++
>>  1 file changed, 14 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c=20
>> b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 060bc8fb0d30..d2504e291fcb 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1999,6 +1999,7 @@ void icl_dsi_init(struct drm_i915_private *dev_pri=
v)
>>  	struct intel_connector *intel_connector;
>>  	struct drm_connector *connector;
>>  	struct drm_display_mode *fixed_mode;
>> +	struct intel_gmbus *bus;
>>  	enum port port;
>> =20
>>  	if (!intel_bios_is_dsi_present(dev_priv, &port)) @@ -2092,6 +2093,19=20
>> @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>>  	icl_dphy_param_init(intel_dsi);
>> =20
>>  	icl_dsi_add_properties(intel_connector);
>> +
>> +	/*
>> +	 * DDC bus may configured as gpio and reserved for MIPI driver
>> +	 * to control panel power on/off sequence. so, unregister gmbus
>> +	 * if MIPI was LFP display.
>> +	 */
>> +	bus =3D &dev_priv->gmbus[GMBUS_PIN_1_BXT];
>> +	i2c_del_adapter(&bus->adapter);
>> +
>> +	if (dev_priv->vbt.dsi.config->dual_link) {
>> +		bus =3D &dev_priv->gmbus[GMBUS_PIN_2_BXT];
>> +		i2c_del_adapter(&bus->adapter);
>> +	}
>>  	return;
>> =20
>>  err:
>
>--
>Jani Nikula, Intel Open Source Graphics Center
