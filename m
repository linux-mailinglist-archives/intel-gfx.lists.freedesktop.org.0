Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A877020D5E8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 22:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363D489CDF;
	Mon, 29 Jun 2020 20:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EC6C89CDF
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 20:00:48 +0000 (UTC)
IronPort-SDR: bjZMu4r2AkJUd4ideBCPU69c34/5e6l5ZNFPXU6oXjcH3TyPwLyLR6ZiNpGcEFcR5NAKDk+mbT
 Eu/1phbfQwGA==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="164070417"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="164070417"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 13:00:48 -0700
IronPort-SDR: qNCJkqHSgYBi8I7GcwELyEqiJbFn7YIjPzBMON6RqgBqa3HlAP+Bp9VfuJajjR6ricWfsdfm2i
 lazBgpoQ8duA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="454312554"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga005.jf.intel.com with ESMTP; 29 Jun 2020 13:00:47 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 29 Jun 2020 13:00:45 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 29 Jun 2020 13:00:32 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 29 Jun 2020 13:00:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 29 Jun 2020 13:00:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cv7cTEYXBos/yDbOwTATBpPD2xR72jg2XZGDsq4hBYKqN7P7pcQoTiwwedn+1m4Y6mh2MIuqQFeAqzL3QtJvJ7ITleyBUwSHpsj1NxxmirqLnu+YI3MiQXD5ZCPxas05W9y96YDvtOKTKZm0eJxTeiY7jc2DCWzFuu5WvtzSdhLfXV7R/AhACWrGUQElDb2Thalpiz5PJbtO3lhY1fEOSZBlTzusn/MKm2ndWuc9JzL0r4u75ubbqTbTCpHu34ywONCTQTQK9WMzupcnhwS2Zlee4W22K9YGJAPqpurdlW5dPebKRmJdpe0o6J4zKtrwgbwgNwyQRtQXRB4e70ES9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YrtIy1tNu1M/PIQla3oNPt8NN0ctGpYo5uPvZv66F5g=;
 b=VyC2MBwy9IKOWIVlg3UVzufRjD7DDjbZBNk/+Z+8Uqi8cyXCm09r9Yy8EDp5AxsguCwpRAs68pMBhAjiMQbp72odHKg5oJstBIm3XVqhpQ8E15rNrOh+9xqWdFSHrSLE6HYZZU3IYgPR6r/p15Girb4E6hwLcsvVIhpx7zQ72BdRil6fwritS/X41djoUadPfLejJ9VMhyawoO4Ev7Cn3iteRqopWLg7Bl6ieCgFDFlBzu4Qkgkbd7kbVikBAQPNPzYLmxPG0sPCQe5ZN1zMkqN3f24wS/BmtIRx/vCWbwWwaynINVjHxX/J6ckGg0RmnbQiwJvN027sPO4xzB/UGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YrtIy1tNu1M/PIQla3oNPt8NN0ctGpYo5uPvZv66F5g=;
 b=LpmmO/ewLwZv4EZPRcOhNk1OMgVVEQfgxmzHwmdyI4qaXci7PCULA5pfRstja0wNqvETx0xhVpVpP1ZNWebbHILU+6ymnUYedBzITevx4yfjL87eg5TVc0/jWuAviV/FN+4OWOtCsscMpDsTPTL1ktvXbDWxQT+dwAZ96rMTc3s=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MWHPR11MB0047.namprd11.prod.outlook.com (2603:10b6:301:68::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.26; Mon, 29 Jun
 2020 20:00:26 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::b840:82ba:a83a:d8c3]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::b840:82ba:a83a:d8c3%6]) with mapi id 15.20.3131.027; Mon, 29 Jun 2020
 20:00:26 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/tgl+: Fix TBT DPLL fractional divider for
 38.4MHz ref clock
Thread-Index: AQHWTkd8X3ifG9uYg0GY07W4ZMp8OajwA0mA
Date: Mon, 29 Jun 2020 20:00:26 +0000
Message-ID: <a874fc1c32c5c6e849b74362ef2a985b47fdfa9b.camel@intel.com>
References: <20200629185848.20550-1-imre.deak@intel.com>
In-Reply-To: <20200629185848.20550-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.54.40]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7c76028b-3d12-4111-971c-08d81c6710fd
x-ms-traffictypediagnostic: MWHPR11MB0047:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB004719A93573EE7A5395108A896E0@MWHPR11MB0047.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 044968D9E1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fts+BZ5+DA17LDAAXzy1XXt6X8jUFkLrQTfHDwEUPSmD/GT7iBO/Y1gNn0+YrJS7qBY/eOVw6mNTXyATeFuw5kC1j4ssYHOYOGOVaIeyQAcuIMpi09jB9t6wSM2ZjE37B3whPq6khBlzNc/Lt9T6PZqJ/wO87QPm5AzVdQnmKwtRODJyAe+bNG/JZXdw8rdvCe3SBnoYAaFpnMLtsYO7jQY6waHuNJU6owzliKT3NYTyIFvhJCJHNEgfkYRdT6lVTz8LDP5wdKUlDbZv+oBM+1zgI9p/r6qG8GpxMIKi26CxWqD1e+VbBNYUHt2JHJDUktU4SoTuAh7JShWNiqtI5A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(346002)(39860400002)(136003)(376002)(66946007)(86362001)(36756003)(478600001)(91956017)(2616005)(2906002)(6512007)(26005)(6636002)(6486002)(110136005)(8936002)(66446008)(66556008)(186003)(6506007)(71200400001)(76116006)(83380400001)(66476007)(64756008)(316002)(5660300002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: qYDfXv8smSaJYwpjMTdng9k+7KEjDNAife6XJWyuginp+T+2R1gjeF/Nlo35BoKDrBFNkQcY+xwgYEKyk6SmivN/iST73ut6qVmcyUBgmna8vAItcD9KOdMx2w6CytnYSqpj5R/COg8tbQNkn1HhQ/YWZQboSeeS49K89bSylTl08OVVRZyBA9fXbCgCCC3+aUA7CODUCrsZEi25jTyMU7bXNCAN6p5BahKcT6gWMvjENRFBMBXzvJuS7ZNjDiQ84smxHg4rXarcYHCzuLr7rMlipt8KNhByWvNcCTmSAEHKzf2p6nkwruAtxCal5NTQu/tG3ZzTVft8hT1spNIVwGS/vr9nYWzdrVyuIKa4M/CG7Z/Vb49b9W75pG5vJokF7MXrcJOMMFzBw6S3xVaewWafwwedDtyKj/6dxzvy+COo0h83+i7Rwb4JuLq4fKWjiWnXkhbOo9Mj7yOHJWP4sFCxw4Wxo/HwqynvbO83oxs=
Content-ID: <369044CD89F9574180608015AD87AFCC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c76028b-3d12-4111-971c-08d81c6710fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2020 20:00:26.4352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vjWzDn0FxcjFxv482Gwu9b2jxPlN0cZExHpIE3x88sa0CR69e0++mP4IhbQs8dxBrsJgYFQzGVUR9FjUiqvDu3XkTf9NQLjJScLh0utBdbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0047
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl+: Fix TBT DPLL fractional
 divider for 38.4MHz ref clock
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

On Mon, 2020-06-29 at 21:58 +0300, Imre Deak wrote:
> When the reference clock is 38.4MHz, using the current TBT PLL
> fractional divider value results in a slightly off TBT link
> frequency.
> This causes an endless loop of link training success followed by a
> bad
> link signaling and retraining at least on a ThinkPad 40AC TBT
> dock.  The
> workaround provided by the HW team is to divide the fractional
> divider
> value by two. This fixed the link training problem on the ThinkPad
> dock.
> 
> The same workaround is needed on some EHL platforms and for combo PHY
> PLLs, these will be addressed in a follow-up.
> 
> Bspec: 49204
> 
> References: HSDES#22010772725
> References: HSDES#14011861142
> Reported-and-tested-by: Khaled Almahallawy <
> khaled.almahallawy@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index b45185b80bec..f585053d02d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -2937,6 +2937,12 @@ static const struct skl_wrpll_params
> tgl_tbt_pll_24MHz_values = {
>  	.pdiv = 0, .kdiv = 0, .qdiv_mode = 0, .qdiv_ratio = 0,
>  };
>  
> +static const struct skl_wrpll_params tgl_tbt_pll_38_4MHz_values = {
> +	.dco_integer = 0x54, .dco_fraction = 0x1800,
> +	/* the following params are unused */
> +	.pdiv = 0, .kdiv = 0, .qdiv_mode = 0, .qdiv_ratio = 0,
> +};
> +
>  static bool icl_calc_dp_combo_pll(struct intel_crtc_state
> *crtc_state,
>  				  struct skl_wrpll_params *pll_params)
>  {
> @@ -2970,12 +2976,14 @@ static bool icl_calc_tbt_pll(struct
> intel_crtc_state *crtc_state,
>  			MISSING_CASE(dev_priv->dpll.ref_clks.nssc);
>  			/* fall-through */
>  		case 19200:
> -		case 38400:
>  			*pll_params = tgl_tbt_pll_19_2MHz_values;
>  			break;
>  		case 24000:
>  			*pll_params = tgl_tbt_pll_24MHz_values;
>  			break;
> +		case 38400:
> +			*pll_params = tgl_tbt_pll_38_4MHz_values;
> +			break;
>  		}
>  	} else {
>  		switch (dev_priv->dpll.ref_clks.nssc) {

Reviewed-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
