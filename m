Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E136F62C333
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 16:57:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D478910E4C7;
	Wed, 16 Nov 2022 15:57:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84B2E10E4C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 15:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668614229; x=1700150229;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=3UXK1GQ9XnoPk4PTVVBGJWmqkYf+YAHyGGfQUiy0b9g=;
 b=V8xoonLd/7sVGQHHLbXtjIhg5Qhdw+u0htU/BIKXhvOFQcLNeVFMfqaW
 d053vlhJc/3vpGgKFOj7fXbUkpo4z7JAWaFPfv+2DG8hha+HU5QbPHO+/
 YtSC8Ei5Z4NXdk5BJl6A50HnIek1nQWCsDeZDOza3wZZ8kmKNcX+GMH6i
 ZHGUCw+02hChFBoWZBASiQdhmDTvPKX1JKtSdfKoUWMtNlOcj0qcmFz9U
 t524eZQ8C7LK+BVgKm6QiorKQdddtyLPlvqevSwZ9jXb3W5/3+PODxVCj
 lbkgkVP8/3fSntRrKxaDvxCFKra96VKTWvaAa/tf1AcDQLQ53CvGT6/xN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="376846070"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="376846070"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 07:57:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="672435724"
X-IronPort-AV: E=Sophos;i="5.96,167,1665471600"; d="scan'208";a="672435724"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 16 Nov 2022 07:57:08 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 07:57:08 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 07:57:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 07:57:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QTNJloExne7/ociOmeN5TAJC+dTW4i60C9CImN1jXtoiowVhtuu+U0rX6wvG6gsFO6ror0SNKV+eGEYNQamIyi/H5Tu22L6oCJpl0sEm2EsYq7tMnw/DjkJq4oWovrUM5WtY/xUvsU7ia9sgp9sTkiZuHVaW/cbWDioxcUeW/tblZ3xNvzdVsmxgF6FreZDGuntWTHjjwxOA4L+0Y/pPsoUV2gLXg9Tjv+FvYEycUbahzj52b8I9BUNIv+a377ruX7weJiqYO9RXsNEw5noKo0ttkYGzQNzJNjSaOeiMUPYdtze4MRyAj5CBJjA5Hdu7rRdEy2d4DCnADVK5KbgjfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XWW8fRDFEhc+3BsUudkOwUgaEn16ZHsKcDKzbr2iKiI=;
 b=IYPgMPvC2ZBjQzrQFeQDre4ZvxxNHJkJffhcb1ZSXy/a5VF4czgtLDVCyuL7IdTWvlv0+Q6650NA4x/Ft9fQ3XyaXF0+YOX+56wZ9AMxvo2fbEviiHg3elm2hgqNwNLVoCwSWjZWAK1jvTfGA3/DDrGf8ZcTw0fheliElJe05OC56Ql6cceGIrjiyK3I6S1Dy9njGX/TY3A/2Ir+9ABz/T8xoUaXdCsnux1Z6htu0gvAqiISjahAa3s6qNMM2WmMn28SNYJtrsnKqGLuL7CJx05EOkHz+vj48f+DLVILDIaS4bLlnc7I1WaMG5Iimsd5sx/R39mQ+vqSboHCig01ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by PH7PR11MB7552.namprd11.prod.outlook.com (2603:10b6:510:26a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.19; Wed, 16 Nov
 2022 15:57:05 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::1640:90e1:d157:ebda]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::1640:90e1:d157:ebda%7]) with mapi id 15.20.5813.017; Wed, 16 Nov 2022
 15:57:05 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v4] drm/i915/pps: improve eDP power on flow
Thread-Index: AQHY9/GU3p4YONVIO0SNODPpvw+9kK5BtMMAgAABxsA=
Date: Wed, 16 Nov 2022 15:57:05 +0000
Message-ID: <BYAPR11MB2710FA733C28BA23A61333BEA3079@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <20221024064004.1879-1-shawn.c.lee@intel.com>
 <20221114062155.18770-1-shawn.c.lee@intel.com> <87o7t629b1.fsf@intel.com>
In-Reply-To: <87o7t629b1.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2710:EE_|PH7PR11MB7552:EE_
x-ms-office365-filtering-correlation-id: 989058b8-14db-4d42-db85-08dac7eb3591
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vnnwbdDtyGp9hI+CTJcwsPjrDZnY+8JyhbPWRKrsIqhwKi0muNeObVB9ptTG+s6Zzn4ao0QU4SwI0Nllcu+shVRipbcrEAJHWhb8LFEO4ysGk5BjtcKteSzFAz8je2yLJC+dIuMPXc812QSLTwieSmd2SUqy1Dm8jEN2tNBMmkppkT5m2AsWBcWRozdovWUnErCW23WzQDkIJbf3VqSHWA7TJ7OSh0r77uYsfVGaT9/COWQ/VMBVWoXDsIf4IaHGRZSbyi1nyL5TcYspnlf2cky7KycH164XN3yDtQdwoicH1U7tbylDbK6Claw8jJ1RsMaY+apdXn9rBBR26pJY9Y1fVpKzz4zK1bxt0pda3jSnn8i4lbsWH4W0SwGdyUfc76p7goYvYBMd1BdbzAXTHYl4WXAUIn+u965QmMxqivDZH1b4QQTbFSlGcmYZT7+LuxfOaFdZeYDVZpnVx83USwIyMSzd0hPiZVzOQ5IXmAkZnm5gxOhPvYTt3DX2iWfXlZg3jOiwy21QjlvShjAfKSO0hc53Hz0igD4a8nizaFy3jmRe76cbEf+/DQZ/K7gHLyJJEVNvpMi29n+r2ird5xu/iS+ZWJUp8/qeO/XNiqObbeIKBt9QZpVsLNhlJmNe+T/Z62L+hqmYp1SOnixPExpCoJmxXCpcGIO8Xcp61rEStDzG7RJn0IhR64XszjcDe5uI4yrtU9+deLJ1zvQcQg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(396003)(136003)(39860400002)(366004)(451199015)(33656002)(38100700002)(82960400001)(2906002)(38070700005)(8796002)(8936002)(83380400001)(4326008)(122000001)(86362001)(54906003)(316002)(110136005)(76116006)(8676002)(66574015)(186003)(66476007)(66556008)(966005)(478600001)(66446008)(64756008)(41300700001)(5660300002)(66946007)(52536014)(53546011)(55236004)(6506007)(7696005)(26005)(71200400001)(55016003)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?hpUa9ybUHzMAVk8fjXVLgrv9694rkv4Xp46ovS0z1y2RXSfkQs4Q2ss0U+?=
 =?iso-8859-1?Q?yA9pD9hJM31uSyVaYIW79qwoBn3+slzBzYyytAyMgarfG7kYp4FXKpSj1t?=
 =?iso-8859-1?Q?uhfpsXA9gFZwQmGqWel39FftVk8VPb2Yti0n5d7VaBGR8IK7Hf7uu1Ymas?=
 =?iso-8859-1?Q?PaEsFloEL8pZ4BYiQwJCy6v4RhXYBuIozZbYeGOkIxw1gNv/9QONlc7DcI?=
 =?iso-8859-1?Q?mTjlfsKNvn2hV7TTDTNgWWfw/Q58cw6IFHZxxhIOkLMQ+CSn575YUprQ35?=
 =?iso-8859-1?Q?qd0CPxpV9F4UQSzjudt/zB8VANnp5OUsdEhrFcL2UZZ8/ZmZTcHXr1yXow?=
 =?iso-8859-1?Q?zsMjdkvFcka3eQETVdt61DDeAPI19m1b1IJSOeGywQRzA8CZ+B4wYPvdKx?=
 =?iso-8859-1?Q?S7hwHCNy7opcIDVVDgYgwN6SxmHiQi0xUlzGQidW1cxy6fPuOq64iH81GH?=
 =?iso-8859-1?Q?7bquGPZ3uQgAazKyubSmuz4JzOvO4MJ3tE7MDkdJjE0hE26wnpVuFlY+sL?=
 =?iso-8859-1?Q?iMTG84CcvR9p1gJovr2yWh1XRIUR75Fm3TKWQPg2DTEbDX7lvmauBQ4ssX?=
 =?iso-8859-1?Q?rJ0pdBZGdejthinf4pc/ewVhMcF3BH0b/5Zs+UEhKg0Z8QNnwhYA5UqCL6?=
 =?iso-8859-1?Q?ZzKeeeT3pbTcI9uBfyQXoJDawxK9BKr7O8nc/LINKz2ANv1OASNhHyWOuo?=
 =?iso-8859-1?Q?/ZT+8bVXXIwR46+JTJDXx24bgu6dBnl0r1gZDacO0uGxbecKDYjRhaP89/?=
 =?iso-8859-1?Q?fhmigJGoEKTU7N560jYjMaIGK5DHGBY43oyEbtAvxoMtbJ9ltmujUSILZh?=
 =?iso-8859-1?Q?7uwAW9RoztHbTIBdXT4hWVlThteRm4kb+McfkMKi6xNYZ+x/zG0IZV4rpc?=
 =?iso-8859-1?Q?QXd0J37EaPNPIpavjm0psbd1uaIa4Km3IgISkT8DbCOw4Mb+Jusd/vCLyT?=
 =?iso-8859-1?Q?sUhJWTvdeBVViijZrFg4I+/ikUbkhdX+uguMVEFprkvBTMwZszps3TAj/C?=
 =?iso-8859-1?Q?GNvz8HtdsP79SUdGG3r44SbC7/EjIhc4vsrh/x99Sx1emjLPd0X+bsymGF?=
 =?iso-8859-1?Q?e8mSwnawJhWaMzlbiPUjuWgBpL3l870YtSs39DMJXWoae+taIPJ25mVVg0?=
 =?iso-8859-1?Q?ozS5PoO1fE2X3GnmsYtucSN4cWqrlUsD78sS/QA70jatT3S3Oo8NxcWGiU?=
 =?iso-8859-1?Q?jRNH2uNGhEFmlRATuWPKrEjJECQWk9+T/Xn0m8ddfzlcYSHogKkeu4TZHQ?=
 =?iso-8859-1?Q?8OVytyLSCriCORckMunN2mJGdJtWg5fnADvnVu1S1mZ9Zxlroe3pFkQFfJ?=
 =?iso-8859-1?Q?Ve6alVTf2JlzZGbRzok5U+wfTo8O/WygwbUwnxe1SNkNqeM7VDTjqnTeD2?=
 =?iso-8859-1?Q?OLx/vm3ItgLTnLiCCOuck7H3Z/cGpk2E9kMTVIzvxti8v9dR1nEvcy9Pw3?=
 =?iso-8859-1?Q?IkdaKm5XOLpNXmUKWifFRFdRbTQS13qsmbCIBlPgRPZc/G1q5/E3L9K/9H?=
 =?iso-8859-1?Q?QrVUuR8YLgt9SnI9JVfqj17pdMtqo1r7Sw3NMG8Xeg+eoH6A53HGML6Mps?=
 =?iso-8859-1?Q?+5rHl29wj8OOZo/ksFzVDxn7qgsfRlpZhAzYCtDCfGIQ2Ew57IkVZ0vHak?=
 =?iso-8859-1?Q?bHUvuJ+08dQ94fhyIgd1sYBjaL4UQO01oR?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 989058b8-14db-4d42-db85-08dac7eb3591
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2022 15:57:05.5714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ao8c7dyfrbu4RX+0o4TUDPCDCv69SS1njdc/08ZQooKpuPMd5mv64lVnwj+6xk9VgkicRTlIkH4rIZNJueZQIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7552
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v4] drm/i915/pps: improve eDP power on flow
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
Reply-To: "20221114062155.18770-1-shawn.c.lee@intel.com"
 <20221114062155.18770-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, November 16, 2022 11:45 PM, Jani Nikula <jani.nikula@linux.in=
tel.com> wrote:
>On Mon, 14 Nov 2022, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> After i915 dirver initialized, a panel power off cycle delay always=20
>> append before turn eDP on. If eDP display did not power on before.=20
>> With this change, power off duration might longer than power cycle=20
>> delay. So driver can save power cycle delay to speed up driver=20
>> initialization time.
>>
>> v2: fix commit messages
>> v3: refine panel_power_off_time default value and modify
>>     commit messages
>> v4: add eDP power off cycle delay at the path to unload i915 module
>>
>> Cc: Shankar Uma <uma.shankar@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
>>  drivers/gpu/drm/i915/i915_driver.c       | 4 ++++
>>  2 files changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c=20
>> b/drivers/gpu/drm/i915/display/intel_pps.c
>> index 81ee7f3aadf6..ab4118b38120 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> @@ -1100,7 +1100,7 @@ bool intel_pps_have_panel_power_or_vdd(struct=20
>> intel_dp *intel_dp)
>> =20
>>  static void pps_init_timestamps(struct intel_dp *intel_dp)  {
>> -	intel_dp->pps.panel_power_off_time =3D ktime_get_boottime();
>> +	intel_dp->pps.panel_power_off_time =3D 0;
>>  	intel_dp->pps.last_power_on =3D jiffies;
>>  	intel_dp->pps.last_backlight_off =3D jiffies;  } diff --git=20
>> a/drivers/gpu/drm/i915/i915_driver.c=20
>> b/drivers/gpu/drm/i915/i915_driver.c
>> index c3d43f9b1e45..0e3cbd129055 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -107,6 +107,8 @@ static const char irst_name[] =3D "INT3392";
>> =20
>>  static const struct drm_driver i915_drm_driver;
>> =20
>> +static void intel_shutdown_encoders(struct drm_i915_private=20
>> +*dev_priv);
>> +
>>  static void i915_release_bridge_dev(struct drm_device *dev,
>>  				    void *bridge)
>>  {
>> @@ -796,6 +798,8 @@ static void i915_driver_unregister(struct=20
>> drm_i915_private *dev_priv)
>> =20
>>  	intel_display_driver_unregister(dev_priv);
>> =20
>> +	intel_shutdown_encoders(dev_priv);
>> +
>
>Per Ville's comments on IRC, this is still too early. See [1] for another =
approach.
>
>BR,
>Jani.
>

Thank you! I've tested this patch and it works properly. Detail kernel log =
is attached on [2].
Please help to review and merge that patch ASAP.=20

Best regards,
Shawn

>
>[1] https://patchwork.freedesktop.org/patch/msgid/20221116150657.1347504-1=
-jani.nikula@intel.com

[2] https://gitlab.freedesktop.org/drm/intel/-/issues/7417#note_1643009

>
>
>>  	for_each_gt(gt, dev_priv, i)
>>  		intel_gt_driver_unregister(gt);
>
>--
>Jani Nikula, Intel Open Source Graphics Center
