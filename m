Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C5677DBE1
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 10:13:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95B1410E292;
	Wed, 16 Aug 2023 08:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7161F10E292
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 08:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692173589; x=1723709589;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vSbTRybMGQk5D+IiYOe/F5PYY/By8AmtF/PM7VrKsRQ=;
 b=MFv7o1/MTKY3URCj7r3TgTT6DAm4NZKdsKG2HprqaQEB/qzpkCW3vcKX
 QdO9hrd2QTpXEqywFGWCb00uXqBG/qkkAqOi741tJjAFJe+TEcMxl+WV6
 U7E2eXhmAC6T1h1P+Hm89S4vkEIG2VyWeSrJRBQ11BN1aH+DWqptp0b+2
 x9sy0Znva4mTGRW6WiaKPYSM7MyZarIfZOXO0CdNKystUhsADwr3jgD4L
 Z+15oAKoRo5raHwpoTWwtSd9puxtWznMGGGHlYcsP5Cxwd6hm8xGmIUXh
 QyTkrHRUk/vKmLEFIFCnL4VYAgPgcdQYjdNfpyGg/0xWxGtvGMtZLPonS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375244559"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="375244559"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 01:13:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="727677469"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="727677469"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 16 Aug 2023 01:13:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 01:13:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 01:13:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 01:13:08 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 01:13:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WycdjX45WmyuSBBD/ok+ostR6myL+XCXgUz9lN2sa4nFHlwoI0OrunTNYN9n4v/wRJLa2TuFMRU8ywp5hLwSDCNyxdXbQuQAMRlIj9vGlX4sDphYE+23XGZpmhAbR5RGGCL1hMwFvgP4hYqRYNnUavlAJjXPD1CHHKkWgG/ioVW7TtF5vi8hVSgRCmWStKvt+Tp26yNklL9CS1Es/k7nXgOF6dBbSgjCHSSrGBe1fgCYi4r+FHw7zcEQBgms58YvLhRPGsCJ7N4hUT3w+nAneGaTUrhHL4mtyLYVdlx53mlt1tZbK5C+UEhpiGTspw3ZcfFTXEHKKmlVu7SC8K4xSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DZ13TVveWhmyRyjXalGoXN3vxAUj5nAtvud9KKP7Y0c=;
 b=ArKYeRrCeoAcvGIY+wJvD7IHlx3MO+1v3lrlvStaeoMUnjbXTgo8ioTW9uu6uVLbI5COcmT8SEjmnwrFo0X9Kre0/5LUQas1ZBeMxcr4oOrnlDKHs6UdB60KW/eL7rzAj7qVqrA7nuF/dIfz6bgvIzNx6Oh7n/lXMs8DlumfjK9bblCJ2JpvzDUQcJ92OvRM+kqX0DkYsB30U/C6F2qlGLi6V7/odAV884QFu89GC7a5EtP8B+AlrARqJ7Z2GU6FUG9ctA5ziaZ+CCzRQSKxVByYhLOlTbfRCxR+sI/j50xxb44v+fNTzhLGjDBWl3T3UP3eB8wkc7MFG9Kv3Lglvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB8065.namprd11.prod.outlook.com (2603:10b6:806:2de::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 08:13:01 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Wed, 16 Aug 2023
 08:13:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 1/4] drm/i915/tc: rename
 mtl_tc_port_get_pin_assignment_mask()
Thread-Index: AQHZu8QrueNq7dWaT0iwHAxhHinD4q/sungA
Date: Wed, 16 Aug 2023 08:13:00 +0000
Message-ID: <SN7PR11MB67503D9744E5F01AFB48DB86E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-2-luciano.coelho@intel.com>
In-Reply-To: <20230721111121.369227-2-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB8065:EE_
x-ms-office365-filtering-correlation-id: d40061b0-fc6c-46e6-4dd8-08db9e309baa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B+u+WfTvI5HpEscp/6kvTaAIa4OjmwpQCgcItQtMnBzk3zTQxqMFAIKiaaL6OmkQ0hldaPa0HdrDdkC3wdt8h9AtRrev/5HhH4FuAgxCqs353dH2Ed2rP04vu0cKuAn0U+Yzjk5SZ/++Kr4hYmdOfEkiKhOyagqdsbcJRwQ4LnR6DK3dv3dykE0xUg7k9TQr22HAC/+U3D9qSUWqGmdhx0oHZfVxA6XVsNV7LYl722ronGIHyB7t+GQ4Peb2smvGMfSA3plW2qnOxFMcmRWrNgIpCDy04D4kblvzHNidBoPawHfF2QnXiF1Ewp2pCUA8laxVhsrKIuDRf0J9t5os6R7X8+qAFvKolFdsfpFzGTsy7ABj52T7PYyL1lguZREINzh1r3+6BlB0G1POOIQvnJNMT3IfWAVOJGM13gGTOxCiAjmMpmag7nEtaQK+jDjI7jabituw11luwf2gvOx9FkOxD4XUbWyUlkE2iRuWIZtzWATq8krk6UNvI13/zFlPQmMpxyQCAWIxVY1B4YD3pfj3XroJCHl8mYpWZrXOm4o7Je21Yhnqw2iDivIt1wnMN9DnjmE9/ya69pxTtTNd2oCcc4EV9p20o/p6nIk8xrbDkrQ30mV2tctDGasDcW4t
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(1800799009)(451199024)(186009)(71200400001)(64756008)(66446008)(76116006)(66476007)(66556008)(66946007)(7696005)(6506007)(2906002)(478600001)(9686003)(110136005)(5660300002)(83380400001)(52536014)(41300700001)(316002)(8936002)(8676002)(122000001)(38100700002)(38070700005)(82960400001)(33656002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hysgj0QewOHhpj0nL2YjjgirUn4Nx2KFFXWL8X1qq/aIaU0W8ChdCihPZ2T1?=
 =?us-ascii?Q?Vps6uC0XJpV7on6GAyufWrienUJouKUcJoq7JneDEJOR58OBkwLamMEWI/wA?=
 =?us-ascii?Q?RTFJvzFW5uiG3iymcbyFGvS/1gg3xHGaVj2XFzrGA0cqVZKnEQGjA6s8itif?=
 =?us-ascii?Q?kpV0dEeTXjGoV6L4axgs0MfK6g8bbIRNx0ieRp9zPGSNH8LnDE2SQQcMfVUw?=
 =?us-ascii?Q?dHMK77lPPgBEJ/OEVs1TVqLfRD3LESKszpof0QvqjBdleiIiXY/ye/15rmDo?=
 =?us-ascii?Q?ETB4TlxhYWMYXF2WBcX8qXwtUkQTM1CwQAASwmBwwLFue5SPWaEfReCh5Hgn?=
 =?us-ascii?Q?lVWQKbiA9DRavD2RVcBOC14hYAQKwT49nmfw9a6EunV6OZ4rcffJQw47rxvi?=
 =?us-ascii?Q?NpUsADrj3EWBtHs9HW+rDJNe8ld/qRjiQdmuVfc1QMe36GZwWf18kklPkIho?=
 =?us-ascii?Q?AMKpN+8clVsPPjWs5vV0M5RsMYkjOsddMISPzbe9TBf7Bvxe0O1ENes6DlWm?=
 =?us-ascii?Q?kJSbP8TvG94vU0kRRaXlbaFZ9WtvThW6OdyEKEdUv3WP4LQu37a890sedDk8?=
 =?us-ascii?Q?nmjCl8ZiRh51iflQAC5GFGsVJn+4h7SEpEK9ysr54iS492c3YQ6LSPK6Xzzp?=
 =?us-ascii?Q?JYLgHAPrzRD0vlBvVQ5Lpq2dUJ/3XvX0UKj+iO244PwYxB29D7YkJia1QS/k?=
 =?us-ascii?Q?RY2vvFS9EOpNlCCWvrdxXhCxFt0xIXQCDv29fHXJ26nXFqlKZC+laP7gr9xc?=
 =?us-ascii?Q?WkN3XHMIpWG4CMNoJ/bDXZ7y4p9QiCmY8e0UbOU5FhZhqQqu+ysc17Ge1e6n?=
 =?us-ascii?Q?7eL3+qWGNMANyoWG4719LnxugCOiUI0OQBHfqdkt9UdAd8gYiQYX1M3XraMX?=
 =?us-ascii?Q?D2bQ1H1QypahNJDPj+F6j+PoSKzK0STlJ1JGIwOILh5gtC2NTwKrWk56Yha8?=
 =?us-ascii?Q?BjIHnnkTYdqexOzOntrV7+zOddBshwLqBTuhx5RbTDHsKH6ERIHvfP5VHxoX?=
 =?us-ascii?Q?yraMQYLTtw6If17Y3yAYqZrukVyH78bn9vQhEW/f8tfejlWvKLmbuQA+thCQ?=
 =?us-ascii?Q?6gtZ0G6b1kQSWiLMLiiPJFjJJAjFaOI0/OhFyn4DRtmSx6wvyBsCyr2ydTAF?=
 =?us-ascii?Q?1hx+pPgztKKnM/XIFfz0F2bWOtCMRyzKwkQggpuklZt+g5Ij6ZBrOh9KeS/q?=
 =?us-ascii?Q?LwMzw9uvIoObEh0dh1IZIKSU2Ic5iwQpUM9K1s/oVuogpmnEpxIf2j2G/ggG?=
 =?us-ascii?Q?vd5sjPd5Bc34YS7tAnmXhhPrtCBsczl5vjfEXcHlVh2yx68bA6qBhBNUbqaY?=
 =?us-ascii?Q?NSb6yvnAUPIy0CGGnV9PCWFSpJSLoAXO8SEjdx0uQUrE/Bs32jfE51LYhMOy?=
 =?us-ascii?Q?vEQeGNU8cRJpMsLzFdplEsfQoM3ZliYOngI7FgaLO+eifZTAbpn09Kr79FTe?=
 =?us-ascii?Q?7KOA+zx+D5oumRpVWUK1ZiNm4GWQizxTCcHneGJKSE4hNZwTILnZM0Ft/mtH?=
 =?us-ascii?Q?0/mOPYDhFFZAVICCy25EXAKN+Rj9uhvkjAxO1Y+7e9a4lcXtSB7Ui3i0eq3K?=
 =?us-ascii?Q?qDQ96qbi0POihP5DGOU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d40061b0-fc6c-46e6-4dd8-08db9e309baa
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 08:13:01.0099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /l22kWYaPkjgQ8F5ShI+R0oxJBuu/9IzAIU08ATUJZaXm0EFaASFGTuw1Yf4BdDdkafubE6i8ygiPCWEsOcIjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8065
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915/tc: rename
 mtl_tc_port_get_pin_assignment_mask()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> This function doesn't really return the pin assignment mask, but the max =
lane
> count derived from that.  So rename the function to
> mtl_tc_port_get_max_lane_count() to better reflect what it really does.
>
Maybe also add the version changes on commit messages here as cover letter =
ends up getting discarded

With that fixed

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> b/drivers/gpu/drm/i915/display/intel_tc.c
> index 3ebf41859043..71bbc2b16a0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -290,7 +290,7 @@ u32 intel_tc_port_get_pin_assignment_mask(struct
> intel_digital_port *dig_port)
>  	       DP_PIN_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
>  }
>=20
> -static int mtl_tc_port_get_pin_assignment_mask(struct intel_digital_port
> *dig_port)
> +static int mtl_tc_port_get_max_lane_count(struct intel_digital_port
> +*dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	intel_wakeref_t wakeref;
> @@ -325,7 +325,7 @@ int intel_tc_port_fia_max_lane_count(struct
> intel_digital_port *dig_port)
>  	assert_tc_cold_blocked(tc);
>=20
>  	if (DISPLAY_VER(i915) >=3D 14)
> -		return mtl_tc_port_get_pin_assignment_mask(dig_port);
> +		return mtl_tc_port_get_max_lane_count(dig_port);
>=20
>  	lane_mask =3D 0;
>  	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE,
> wakeref)
> --
> 2.39.2

