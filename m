Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFA33F0744
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 16:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 095B56E7EF;
	Wed, 18 Aug 2021 14:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C706E820
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 14:58:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="301922161"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="301922161"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 07:58:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="505701573"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 18 Aug 2021 07:58:55 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 07:58:55 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 07:58:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 18 Aug 2021 07:58:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 18 Aug 2021 07:58:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MqpchvXIn5Sc5PEVs8ry+R0C697ajkxgYIgzbU7uZg4cvSA46t6KJp+o221dVo7DKIZQRbybcU/b440QgfVJIKXWsZn/CG56Cj6pm7y8ouigbumnbH2x/8bCoKe6A2OI3OzQMT2sp5JsNkqSoU7doh2mfnD4CBA8s0ITtR/lfPjzJUe8SXzz6dUnS39Y5EKy/Rkih2ifTqHT+mrzVLuUVZ7SX1Fx/iSHk4+QVD4qJny+7t8wVzlID5KjHtktXJTDC12iH+/LicYu9AxnW4kNuGSUuNhHPwgz1uAfJ/HY6oKyA7M3/yT7E5KTVl6Z/BP1Rup0jV4PU11yLCMLqURO5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iTXoe8Uz8sRrTT0NU09zr8bk8xsk8gvs+6L6x0F3ENk=;
 b=StRp7upwIvNnFCq3mpI5HaXbzOzxvFZi48rghswLiovJVYBoMv8yhXgMUMSnFIH6qDzJf1+qArY1Eb0VYxYg9C698J6qIaovBclT6ZcBqeiUWA3nefT+I4mJV2fCA+PT2XIcqkYLcWf1hIw7NJpP9bhcsgg1VIhvE4AaCX7BqWnuvL6peNetV/KaB55NfOp9k8XowxsVPkZ2GiRwQTQfM39I8OcQQSfW6RGuwfWH/0r9b7M8AWjUHcxqkslBNdzQbf0QjQLUYazGHEdpQnAPF7qB2fmeXqwZtYlp9ln3Np1WiBaip8D07UuZgwtDEs+7mubDxoxLrJzh0M7c2BDbdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iTXoe8Uz8sRrTT0NU09zr8bk8xsk8gvs+6L6x0F3ENk=;
 b=vsvRwZuca/xdrdDZaLiOHCEGkFyVG/k0rJxsQLH3YWlaAr7+LO5lHvu/WpH8Xjt2BprdfnN/PTvcBMTsrJshiPBnaGo2gTMH4ScpT7KG0yUODLUWqkirTrjEnzaL89nnJltpluhNaRnLd5l1+yS8D6akaiISQe4qCa6prN4hLjQ=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5650.namprd11.prod.outlook.com (2603:10b6:5:35a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.15; Wed, 18 Aug
 2021 14:58:50 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::1188:21f3:a051:31d5%8]) with mapi id 15.20.4415.024; Wed, 18 Aug 2021
 14:58:50 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Ville Syrjala <ville.syrjala@linux.intel.com>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>, "Chiou, Cooper" <cooper.chiou@intel.com>,
 "Tseng, William" <william.tseng@intel.com>
Thread-Topic: [v4] drm/i915/dsi: Send proper brightness value via MIPI DCS
 command
Thread-Index: AQHXj+1EUKKy/2VwXkiPlD5pX0XMAqt5I5EAgAA9h3A=
Date: Wed, 18 Aug 2021 14:58:50 +0000
Message-ID: <CO6PR11MB5651DDFA42ED4481894C438EA3FF9@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210812154237.13911-8-shawn.c.lee@intel.com>
 <20210813024649.7197-1-shawn.c.lee@intel.com> <87zgtfgg8x.fsf@intel.com>
In-Reply-To: <87zgtfgg8x.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc745c97-1fb1-4e2a-24c9-08d96258b056
x-ms-traffictypediagnostic: CO6PR11MB5650:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5650DDDADBE88FF3776769A2A3FF9@CO6PR11MB5650.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oL9IhTMrMk+DXENe5OKxaL7b/xG3g7jWskh6d+hYIPdUnHE021f3/nboothlMR5HSxV3sdp74BIoUmtgpUuGWl6ncBpBb/cyiHtMgZeVqam35bT1Y74g3++/iWwJ9CBVUQS1aj7Mzpm7KLSc5vDb56tHu4rgChQEqC5CaOMY8JGrWKXmKQ/NxLklWjGc0NfcmyCBBSJoqPazNUMXnwzfVaiPT7cYgSgxYcgllIrUK/zS1X+if8+d63zDCRjwpsN5TKFtYChqPiT0COcpD6dzIZepwbYQ0LNQ9ZD3nayr5AD3C+46+rzItcZZvG2sD0p5Qg+zYDjLgv4pDt73/eIIKeDqEcA98qn4hhxokEhgyoyzBiLf03N65sgMP1eX/fFGgx/MaBYqs0FzCMWgqrkjEWiNApZ8rT4+qBTAPfs64zX+VPIDlHZmr3WkifUBu9AFx07VJYrRgleUzRApC8p3vCG34fAvysrwgdqaP/wOX09TiUBbiTy2TXQ1NNlDwV7fzTCodVax4IGlLJftyGpoPNZiDo4db6plBWjFhg8doR78ceuLWgN1yyf1FC0eavZsuaG0+gafTkfvdaarfYeSj2MJHYotbqI+oFfNdKx/hHnATGElFyKAtkPYsZfLSOO8azrgOjUqpucaB4+N4UxgqfqytOPaQdQU7u3ICmsCzy8Fp0TPJsgs/R8+rTHH07MoWfcxehn1ZACKUl6G79cdeA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(33656002)(316002)(55016002)(122000001)(478600001)(38100700002)(66946007)(9686003)(52536014)(83380400001)(7696005)(71200400001)(76116006)(86362001)(8796002)(186003)(110136005)(26005)(55236004)(4326008)(66446008)(2906002)(5660300002)(66556008)(64756008)(66476007)(6506007)(8676002)(38070700005)(54906003)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RX6W8z1OMgOC246hlBIFZgprnYtRWWvNlTPrgkF5CiaLIOzwzZQmRPK5GnKW?=
 =?us-ascii?Q?5SpgXVsWhBhO+meTf27ppGBH+8pvAN+68h0uROqH/TR+FDoB1ZhzRS52EgCp?=
 =?us-ascii?Q?36zOSXzuqtuo3vSZlir4ru1ejspqxJxnwIWogu68wgHiYsiASHTAy8waNC1F?=
 =?us-ascii?Q?mo5koM3zHckkZVDGOqlsaoEtNc0Le+6mStLxpS8c89m9Hfhh4WuL5uA5/+ko?=
 =?us-ascii?Q?mLf8yrxsVxi42BfoV1HZQIemq9U7N1MzV8zxYVz30ey1tfOQos5P9Qcj5u2j?=
 =?us-ascii?Q?hfWKd2F2aSx94ECOKIql9LIpYmFhHkV4IagAVeccYFjBCfm0QJnLm2ZP0XCM?=
 =?us-ascii?Q?ccgEXnXKLugh12lxruNDhhq3Gb/dtcJ/sFhm7yfFAFaEbKPpthANeHOhbq1m?=
 =?us-ascii?Q?OAivHTnphESPFPRLGsMzE3HnFdjcnb6IUd1F1ZbXP7gJuE4qjkRjl2esyEDe?=
 =?us-ascii?Q?JabNPMqomE8U7XY02eodJGQkjFZusUg2vVSmKBxx3ETpJS99K2CnStoXJKOB?=
 =?us-ascii?Q?JUBcrLX0bspB3V+x1C89t2BstX+lw/t0B6UZqsVgKwBeP2DGnUTyk5QfknpP?=
 =?us-ascii?Q?Vvh1lTvePewoEaziM+DHDiPUgVhzg7F8iYCnhB/vhArhfy5RrXjo4XdQzGJ5?=
 =?us-ascii?Q?0+QpPpW8xeP1xjTfqXHnCHyMSUGbMn8/3wYdPjKOlxTpBcFVDI4oSbBuZ8Tp?=
 =?us-ascii?Q?AAUlgxpDRatjiclg99FM2XSnAjwRc4SL+60gUoOqUrYCZnifJr53crvuYSiI?=
 =?us-ascii?Q?SpIAvKup0xurnwPYanWeH2EOhcxs2ns0WPJs7NyK4IQbDjBk3RH1EBxZRird?=
 =?us-ascii?Q?JGi8qZqEr3YR7NG0vLUCq2EzH6zgHQx8Ty3kPYajYmzOX7KZc3JVWJmdPUb+?=
 =?us-ascii?Q?MFYYA8k8nnbw2Ogx+bNwZzxdf3cyI6/FrVz/9AAGSQ1djwMLmG3JY2pSw6SY?=
 =?us-ascii?Q?QQZvaBxaNryB8va5g3Rmk0Yl2tWj9TSkvuMXseKsV7D/GM3Y69wQ5OE/1uu/?=
 =?us-ascii?Q?ocPVuFRGNEsjf4TN9PinIkDTxOAZym/jABOjsT9NluEilTAeFV8WxB2ZgAIS?=
 =?us-ascii?Q?kdOikzk+DBk8BhYiJV9Fqjaqv4M7idxzxYCqKsbtmNiYXL3E1Ks4uRKKfaPt?=
 =?us-ascii?Q?VrdNsC80UMH82RkyAWFWFSnU1uCi0kNnk/E6bw1kn92QX+szbib/HMDhWASa?=
 =?us-ascii?Q?yuayY3LevAb3L78YdGed3ClO9woVk+dF4wZdkRHZ9HAcSZ0D70NG2N23nrEn?=
 =?us-ascii?Q?YOBw+owhvHj1SNbgY04PP7zFuo3uqf89rTVRHR/k4D3/+rodqr3z+yyequUM?=
 =?us-ascii?Q?tZ/aATiPSkG26fFHxOTJgtNe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc745c97-1fb1-4e2a-24c9-08d96258b056
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 14:58:50.2943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R4rB3OcIWQ3weVheKpZq9m+dHiCL9pw4q4gbZHVQsl6cLPzdjdZWeN/wJ7Li92KScOUgXj0fsvED3x/5EmqoUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5650
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v4] drm/i915/dsi: Send proper brightness value via
 MIPI DCS command
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
Reply-To: "20210813024649.7197-1-shawn.c.lee@intel.com"
 <20210813024649.7197-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 18 Aug 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>On Fri, 13 Aug 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> Driver has to swap the endian before send brightness level value to=20
>> tcon.
>>
>> v2: Use __be16 instead of u16 to fix sparse warning.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: William Tseng <william.tseng@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c=20
>> b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> index cd85520d36e2..71c2adfa8931 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
>> @@ -66,10 +66,9 @@ static void dcs_set_backlight(const struct=20
>> drm_connector_state *conn_state, u32  {
>>  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(to_intel_encoder(conn=
_state->best_encoder));
>>  	struct mipi_dsi_device *dsi_device;
>> -	u8 data =3D level;
>> +	__be16 data =3D cpu_to_be16(level);
>
>Just discussed this with Vandita. Both the set and get brightness need to =
be adjusted, and the read/write size (one or two bytes) has to depend on th=
e precision. From MIPI DCS spec:
>
>	Note: It is up to display manufacturer to determine the
>	implementation of this register and background logic. Only one
>	parameter shall be sent for devices that support 8-bit
>	brightness levels. Two parameters shall be sent for devices that
>	support between 9-bit and 16-bit brightness levels.
>
>BR,
>Jani.
>

OK! We will send a patch that modify read/write size depend on precision se=
tting.

Best regards,
Shawn

>
>>  	enum port port;
>> =20
>> -	/* FIXME: Need to take care of 16 bit brightness level */
>>  	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
>>  		dsi_device =3D intel_dsi->dsi_hosts[port]->device;
>>  		mipi_dsi_dcs_write(dsi_device, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
>
>--
>Jani Nikula, Intel Open Source Graphics Center
