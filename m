Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE13D3CBA56
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 18:08:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72016E9BF;
	Fri, 16 Jul 2021 16:08:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C856E9BF
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 16:08:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10046"; a="191121369"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="191121369"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 09:06:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="414012366"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 16 Jul 2021 09:06:51 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 09:06:51 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 09:06:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 16 Jul 2021 09:06:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 16 Jul 2021 09:06:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lwYRkodwGOx5K5v1m5h3mt5IF/OQ3hI/t+Bcw8/UteftvFE0EYr1wK9Sw5pJivyiHO7si5AO4AEvS4NVIgiAZ075443E42bgRXMD614cVmx6oB3WoM3lN1Q86ePCaE064q09L1timF5wOvjolIBJkWhEyhhcLcMR+MtSPGscq2v+eaZJj5Ke28IKm80/sq7Ww36jMIhH3yuT7DqUd6+yCk73S7aQLQ9joddsO/6XrsKaM+FnruP31fbULjVI6I6VnCzqjLtwwPtMEeWxGpqJdp4XFGjfJTlVvdgYiauex7CXQg79UxvSfShfLLWKKpBbBrpe9jE2sTaYnA9waFrTRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ks87rE7GSW5m+rYL6OhG/Wqwe2wuMKopoIDY5Hai/jI=;
 b=TKwqACWMPXAsTNfwmTdpSD3ltSzv3XMLIoquji5NXOVhhu+QKnGdMTAxUdCn2rRpr6YJadlmsOv3yncp8d72KDRrYSzFEtkNCP2ZoTdDRHV4WO8x9/QKidr/q/xLnZRkVVnJnP/l11Wv2gfSdWU7ROdfOGcn3u1T52woM7BbPxAQCqlgeAVmB+nHdZ3oYdjWHVQ/lrONxKWrjQlBi35bHKwWEOdiEdzYkXa/l5he1txuO6CBDPGGjtQwdOTXRHDSv8b0d+LwhQ0IkIWuSsoWijCuHOL1s7jzHms6JnOTbSHRdkmoU5+J6bcsfm43Bcrn8b8w72z5wmi+zvsNJ7Pu+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ks87rE7GSW5m+rYL6OhG/Wqwe2wuMKopoIDY5Hai/jI=;
 b=k7umF3whYM1uta2v975fzez5FFDghl8mN52Vn3XX7/xwwEwMhdsIfBY0xTeWmUmQeeYNHQ/LkNzZWh/SEROpi7tQIHpuviGDIcsdWRuOcQdvtl9c40G3JmfPd9un7ADcTtCxvMs6vRimfADkilWzkxKAA2EMji+dm9G8uUya+MY=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by BL1PR11MB5286.namprd11.prod.outlook.com (2603:10b6:208:312::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.22; Fri, 16 Jul
 2021 16:06:49 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044%4]) with mapi id 15.20.4331.027; Fri, 16 Jul 2021
 16:06:49 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 24/50] drm/i915/dg2: DG2 uses the same
 sseu limits as XeHP SDV
Thread-Index: AQHXeF60quyD7gx5MUi/2UCo2sv+wqtFyGkA
Date: Fri, 16 Jul 2021 16:06:49 +0000
Message-ID: <afefd4c060b3af1fa17a5651d3677435f56a3d3a.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-25-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-25-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ade8980-d696-41e6-0881-08d94873b7e7
x-ms-traffictypediagnostic: BL1PR11MB5286:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL1PR11MB528612C989371C6C11B1B1189F119@BL1PR11MB5286.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +KWaPkYyKftlm3SpFq2aoY2ui/VvdLEHHM3yXbMKtpwM0iqI5FncjFK0eoT/oU6ZTybBrm8+9Pll5b7TCvr8SsoHXs6zdkL+5L6UZZgfKmZXIZvAgGx22ZKb/WJSXmGqdvjxcUTS4/ootJxJC33xsj6W+RhIXRF6leTtz+X3ch/ePBLqYxnbXGgXYRXDvRtIz5A6bEynSW5/eQ9O2fYWeXxKmx7VZeq9Tc+rFrpa5RlnkbqGIDbttjhlW9rlWx6BuGBQ0bL6psb527Pr+9891MdcoVToXHfQ8MgypBAhpzgn/0K6pQdWtlPXidnAmqsUiTCKoaHh+7Qee7i4nU9H+YkIqZ3apXPMmrJpA6QapuC2Vkj74cD56Oblrq8Aqi+3yNez0FPfzfJpc2qlamQhAJW3sS2EONYP9n2FymgdKM+cLAbpAg8wnsLz3JbJrhKJM2qd6+ng38ZnjxD8XlX9ByjGB4NH6fhPLlFMd9Xq+p5JRzfkdcImFPK0LIe4BK/hCP3eHof+E//5fb7ls2m7qfMLls20GSTUn2hXTLafMUfPfT8Ifim9Vq7C+kkewt8NR8KaFtp64sOO5k2dVpnXu7znRlB7ciy7Uya3Rsa82/SK44UJsnq+KJy3DY8Ha0ms8IiguVl1NnUm4pR7/g1H7VaQlzD1FKyQMW6t/0FF4W1qktzNPmSmXqCBls/blwngrOh1FHT1gNZMMQVCFWy9Dw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(346002)(376002)(136003)(366004)(71200400001)(83380400001)(38100700002)(2616005)(8676002)(478600001)(8936002)(110136005)(6512007)(66946007)(86362001)(4744005)(2906002)(316002)(6486002)(26005)(186003)(91956017)(76116006)(66446008)(36756003)(66556008)(66476007)(122000001)(5660300002)(64756008)(6506007)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmZRZ1NFMGZURmlSWTdzRkY3dnNVVHVhYkI2RDI1RnJYTzRmVWdOcVI4bkpC?=
 =?utf-8?B?YWJlbVJjL0Q0UzlodU1qeUpBZ0pPU0V3QmcrSkFZM0lGS1o1QXB5Z2hTSGF5?=
 =?utf-8?B?dUM4S3MwbmhrcnV4dWdKY2dTOFRucitFYWNyeUJJQVIvVHJZM1U4RUlGa2wr?=
 =?utf-8?B?Z2RjNkNLYjFuOEVQNDJDS2dnM1RVVVlseW02M3E3cU1oYkhvcE10bjQ5OHgr?=
 =?utf-8?B?TWF3cHI1RVdCbXhyMFg1aGEwMis4eEhGQWVLS2s0S2dmVGV2Ly9IaTA1eW9Y?=
 =?utf-8?B?QWM1WnFWeEdXejAzUGJNT1N5bmxvUHFMTHUxQ212UW5zdUk0VFNUNWhkOWs1?=
 =?utf-8?B?Z3pNbmFDWjdVRURsSTlGZC92TUxBc3RzcEE5amFzY0Q0ZzJjbTAyalBDTUcz?=
 =?utf-8?B?c1gxQkJIWFFoa1ZDdWE0aUJaeDFkb25wckQxUUQ1Z3ZuN1hIODNTOXRRcFhK?=
 =?utf-8?B?MDN3RVR5a1VwdlZTN2Rld0xjck5URjA3bm1zUWRqN2tnMDJCbWNxREEyd2dF?=
 =?utf-8?B?TTR1TlNJdThrNEFpMWp4SnFXM0FtYjMzOHBDc1BTNWpLaTZuc21GU3B1d1kx?=
 =?utf-8?B?WG0zbndVR0pKUnNLL0tVL1pNNFAwOG1XWnJTVHEwTXQxaDBwSEUxd3dSbnZo?=
 =?utf-8?B?S2pmZlFuaGZsZXczQWxqVXBiR1NscUhzcnRldnVnTlRLenRwV1pyQjQvVXNm?=
 =?utf-8?B?bzhnU3BNeXZOSmgvMy83R05KQStZOHZsSytoTlNySEFKai9jcGRyZXBMbHFN?=
 =?utf-8?B?TmVUTEF3QnhSODhZQkcrOU5WZDVYMkwwVHpHMVVlZmQyZFdWN2Y5eE40TndG?=
 =?utf-8?B?UmFJaUtNS2ZTUjJIYW1ZcUlKS0dLNkxTWDNXYURMZnY3Nk1aMzd5d0prUGlj?=
 =?utf-8?B?OTgvSlQwRGNJOXpDRnBSSGVqS3c1Qk94YkI1SjVqZWtTc3Rjem1mcUVDZC9T?=
 =?utf-8?B?bWcrTlFHYmJ1WnNGcFVPbVRFVmQ5NlNHbmtEZlR4R3VjeVZsSFJUTzUxclVR?=
 =?utf-8?B?Rk5RdmlQN3lRaUF6OTVHcGNBeUVqQjNRcVlVU3VVNVRmVW1Ib0lGT3Q2dGF0?=
 =?utf-8?B?VGRUbzdhUFhMenpsaDV4c1ZJUERXd2pMWjN2dzQ0dlByNXMrQWVtZnprQzRn?=
 =?utf-8?B?ZHZGeUoxV3pJWU9jMHdmQ25zOEx1WlhnNkhtVXVoaGhmTFFDVldyMi9DbUlR?=
 =?utf-8?B?V3gyNG91a1d0VmtGQ2ZSZHNRYmkwcm1ycUwwakMxb1VlZitIVzlCWHJuVVJJ?=
 =?utf-8?B?TnNNRTZxZ0ZKcjFiY3BFcG12U1dneGF3VldBb25YeXRhbWlYZlJUeE9VNWlY?=
 =?utf-8?B?K1E5WGlOdFpjZ0tJTWhXWnNNUW9QRDZSMklaZ0d3ZjdBNUY2eDEzdXpOQnRT?=
 =?utf-8?B?OVlKOURpSWQ2Zk5BNWdLQXJHSE5CU1VNcHIyWVpON0tVbnUyQ2pBYmxkb01t?=
 =?utf-8?B?UDBwR1Z6WTNVNDVLQ0Qzb2MxbVFmR2hNUjQzVlptTFgzNU52V250ZENQUE51?=
 =?utf-8?B?eWs5NmY0WlZTQURiL2VQSVdNSWNnWE4rd25TZXRHS3Z5aWxvMnVxWU56MUpy?=
 =?utf-8?B?N1JJNFdqSFVCZUVlclh3UzVBZEFGbS8yeFJmZ0hJdXBoaTBBYjQwb2wycXd6?=
 =?utf-8?B?UzlJUzZrTnNmYm1VYWNqNGZjWkp2VFNvYmtLRkNQMjRrRnZoTEpUQWl1Q3dH?=
 =?utf-8?B?SnVEQ1hvZXRMUk1KeHRZS2xrWTZyOXVSSFNrdG5DS01QVzUxZUtYckxqQi9W?=
 =?utf-8?Q?+B4yEX2cguSerWpKzmQdY7Jtf540rFmndhasUp2?=
Content-ID: <CB9B37BBBC69F7499D88EAE477AA8A4A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ade8980-d696-41e6-0881-08d94873b7e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2021 16:06:49.2022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TFgRQbTIXyeGX8T2amXcakdHt0kYqNpfd5+cHvtvCKGETRG+EDeH7NeD7mAcc4P2Ub/eDplJVq3pGVy2ikrHzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5286
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 24/50] drm/i915/dg2: DG2 uses the same
 sseu limits as XeHP SDV
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

Reviewed-by: Caz Yokoyama <caz.yokoyama@intel.com>
-caz

On Tue, 2021-07-13 at 20:15 -0700, Matt Roper wrote:
> DG2 supports compute DSS and has the same maximum number of DSS and
> EU
> as XeHP SDV.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_sseu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c
> b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 5d3b8dff464c..eaff221db5b0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -171,7 +171,7 @@ static void gen12_sseu_info_init(struct intel_gt
> *gt)
>  	 * across the entire device. Then calculate out the DSS for
> each
>  	 * workload type within that software slice.
>  	 */
> -	if (IS_XEHPSDV(gt->i915)) {
> +	if (IS_DG2(gt->i915) || IS_XEHPSDV(gt->i915)) {
>  		intel_sseu_set_info(sseu, 1, 32, 16);
>  		sseu->has_compute_dss = 1;
>  	} else {
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
