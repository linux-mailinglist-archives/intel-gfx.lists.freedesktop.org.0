Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A26003D7E2F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 21:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D59E6E442;
	Tue, 27 Jul 2021 19:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A0416E442
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 19:00:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="199732794"
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="199732794"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 12:00:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,274,1620716400"; d="scan'208";a="434837329"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 27 Jul 2021 12:00:28 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 27 Jul 2021 12:00:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 27 Jul 2021 12:00:27 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 27 Jul 2021 12:00:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L5gws60he+ivGbjaJpHKt1/ELDEz9p8E9t9IRqT7zdW6nXAeis0JRj6HBAZirLbEOrYi4VAWwuJrdHfavWVjaYSs6XR08Rgl+2SePw1jyy8psYpGFHby7+QtZOCMey3i2ayUlK3DnXWorqiD2iG0qwh3qYZ08R44qUJoVAQEaMCNDLAcLky5mgbhBjHJhdVctOzLowKP1PiTzAAtkJF7+IXaemSDmQLFeLb8DvPqnJp5Qx/kyJhEtXp1YvNQ6xlrz5z7V/UB84DeBN9j3BPzGSb5BaZProHk2lT4rQNnhwFOx3O/2ciq9QHW1kuzCndUX9tReL81dGA/qB1UMCz+lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vl2DcenB8c55LJkWsYdMmYFbB5SLtP3A9Au6/eTzwzM=;
 b=KkTTIa5tOujhA7iarb1+yyLNB7M9AXmfpEo509fIuBij1QTZFKONcsMEskTBuGGqXTFwJEWzmLbcgEaAPcUDEO3xaY7999mZo82zsx02nqdpaiGKZR/ZvVq7nHchuD3e6ti1p/0DEab4CaETG223+1l+nowu2qp6GhZfJrurPFDZz8ifJeeqtN/CCIFo8jouMPVyCLwMqQBU9YvRL9P92AsS6BwtO37h+PWhTESAsATqWSqyuIZXcMqkjH3E4lMqjAtUhUaWDhvU5TQpE7SG7VJLfEAYHUnasQ6b6R1n5eRF6ANC5u41KGWh1bA82yPOXz43khzl9HuqWYgb1ekgfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vl2DcenB8c55LJkWsYdMmYFbB5SLtP3A9Au6/eTzwzM=;
 b=DVq8uGuGxqp7eNUjNchYhoagtQNsS77M8Q4tuWc/gTIchJYjzLcEQ6TsFKS8HtcweywE/MdDxjRppntpAQXeEVsdp/AF+XU09iJ0tNl3rylXxxnWXWjv/929mO8scYcJPzt8lA8+ZHGMIA31iyp/nDLbhWr+PD+Tg5J0wSZwIAE=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by MN2PR11MB4495.namprd11.prod.outlook.com (2603:10b6:208:189::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.26; Tue, 27 Jul
 2021 19:00:20 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044%5]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 19:00:20 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 01/30] drm/i915/xehpsdv: Correct
 parameters for IS_XEHPSDV_GT_STEP()
Thread-Index: AQHXf+prHYelDeNsy0yduW+nBLiIoKtXLDYAgAABIQCAAAYcAA==
Date: Tue, 27 Jul 2021 19:00:20 +0000
Message-ID: <b57364ae2b413dfe36219e0846d8f6f200c50b5f.camel@intel.com>
References: <20210723174239.1551352-1-matthew.d.roper@intel.com>
 <20210723174239.1551352-2-matthew.d.roper@intel.com>
 <a2bb4c3922b85c68bf32459ad8d989fc41d36f4c.camel@intel.com>
 <20210727183826.GZ1556418@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210727183826.GZ1556418@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07959537-ea0b-41c7-ae1e-08d95130c81e
x-ms-traffictypediagnostic: MN2PR11MB4495:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB44955450B0681EE18740FA549FE99@MN2PR11MB4495.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JDUKasMzeBKkn4EBnMJCAnXZDDKiKrLC3jiKl+jnC/5gTgDIMj4mLEYYte9rgZffwfxhoznu99ao5MYveTtTD4LfGmjLAMGfMDCdbTrDzmG5Risfy4qihUVAUaDsQ8eNV38hLLAZ+XC68y+zbsBkEuuvUZWFb3pPrrxOrRh2rsdPGVseBlf1gDNejenSZrQIr4KH1dEZZ2Upm9psWCd584Eg5RpdGoXMxNmpMhAmV1fk2E29xwYs8xEGZ9C4UEtzUegOcRWnfIJ6GkAZqyvAkmzX6ZbWi3nekx2XzB83t2nKA07m5INfn1VGRKsQBRzx+jFkf+V3an2oGVaQpAF69E1ALOBqHQqQMyNa2U4Pe7UgiinZOzqIiUYunkslGBqNbhx4z1rBwseEibAAMhfBYZG7tG6wGzfDBuUST89zzwkInk5G1TWm9WjH60oq3WEML39ckCaUjfArNXaAQeDJyiIboJgDPV08YZmz6pyBjxCjflbG7wLGpsonIlmvN9ibY4C/s04gW9djxTvQ113SnFreBnWuzVI3j9rCg2R8pv0jDWepgkYTh1vJl0CfTmfu+zwm45nKhWHKMitswWxIBweRhOqpujID2TRbg6Yw4tXsXQ4Je0BQkoN8NGm5eP/d3el4YYraYNKJVz/wO6+NBsiJ7VjQtV0ROpwnls5/vfb7EQOWzsSWJFkxCnsERGbDacNED4wqZz4EQbgfWN9IHg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(366004)(376002)(136003)(346002)(64756008)(6486002)(83380400001)(8676002)(6862004)(71200400001)(6512007)(5660300002)(91956017)(37006003)(76116006)(2906002)(316002)(36756003)(38070700005)(66556008)(66946007)(86362001)(6636002)(66446008)(478600001)(8936002)(4326008)(6506007)(66476007)(122000001)(2616005)(186003)(26005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QkZ3TGl5T3VwL3ppcDdKN3ZyMmk4dWF0UklDa2JSZWZxdkpFV25vTm9yTldv?=
 =?utf-8?B?Y3BGNEc0NGt6UGtrOGhhWlhESHB2Z05UMG00VUFOVE80citoWmF3REJyREtU?=
 =?utf-8?B?UUVrUWZSZnd6OGRMU3JXSTJCSmE4d3U5YXVMUXAxdk1wckNLSmtaUk1FMW1M?=
 =?utf-8?B?UEJqNERQMUxlUFQ5aVg1cU9tdG14OHpDZ3k5OTZJb1J3ZFljcm0raEhlQTFp?=
 =?utf-8?B?WDA4T3FaR0RlOG1oZ2VkTTR4RDRJN3hiV0xXRWtkMmpRa01zTlNVREd0NTRU?=
 =?utf-8?B?TllkZml0UWFXdVNtZndUM0dWQTAyWndkdm1sNnR5QWZtNzVlS1dIUWRRNkpj?=
 =?utf-8?B?MnFWTE5yb1F0Y3IvQWE5MlhyUXVnSFk3QUsxa0pYQmRBVDJlVll1ckFJVGpy?=
 =?utf-8?B?d0dCekRqMDlrQTg1bktZRTFEdnpBYUM5MS9jc05QRFVmLzh3TjBRTldiS0Zx?=
 =?utf-8?B?Z1VVa3UvMlh3Tno0amp5K0tsdEVjVDVwODB4WkhKQjVhYWFNMVZlNUZrc2Rk?=
 =?utf-8?B?aVBVejBnYVZRNmpKaHF3Szc1Q2lESEtBaWF1R1BoRUwrbmVldWxpS1E0MExZ?=
 =?utf-8?B?dFgrUnhFcXhWYzVVV2lBdzFRSHAwcnJKNHR6QUdYQjRDMHA0bndYaGlHS2t0?=
 =?utf-8?B?bWJGT05ZR0Z3dHJ1N29FVVpvSHJGU0wvVjNteVBzYnR6TytVd2MwTFlqV09a?=
 =?utf-8?B?czZGK2I2b2dyeklDTTJJMHQ0U085Mi9NbmFrdkZFS0htdzJISE9OUUlwWUpv?=
 =?utf-8?B?RnlaaFV2UDgyVmFVZzBTV3VjbWpSTHpHd3ZGN2pBSnNNYkc4cUQ5YW90R0ZS?=
 =?utf-8?B?TEVZSjF1NU1TUWN1YmVrdEZUdE0vaE9WdTZoT056MmtPVng4VFB3YmhOMTR5?=
 =?utf-8?B?NkhnQ24rVVpMcE42TTlVMlB0aHBVZUFWb2RZSVdNcUNFSi82ME8xVkV2bXFh?=
 =?utf-8?B?U054V080cXg1b3BvbklENXlzUWZrK0RPekk3VkhlOTNzdTlaWHBacUtkNVdV?=
 =?utf-8?B?SjdyWGNLeU5qUHdaOHJrMGtZeWZhaDB2NGpMeWtQaHN5WExMdEt3VWhCcjla?=
 =?utf-8?B?U2RTKzU5RkxFZHNQN0xMQVI1RGRKRm5CQVRxdWRQNXd5QnczK0VYQm90NEZr?=
 =?utf-8?B?TnkyUU45bDN2UElEbkdNZVpFam9IakNPUG9ZdFRyYlNsYU1vNE55NSt5cW1B?=
 =?utf-8?B?UU11Unh3RENWS2dhcmdNWmFoR3hSbGpkT3RxY3JkTVVBVjVQZ0ljeUIwdWtm?=
 =?utf-8?B?Zlk0SzdFMWZiVW1GclZta1BVY1JFVGt3Q0lzVDZPYmZNdnVQa05jUUJQZjZN?=
 =?utf-8?B?UWN3Zk5nSVpzNXJaWGZGWDFWWFdmWXRtQU0zcTYrRTg2akNlc3hqYk5xU3VT?=
 =?utf-8?B?M3lrdERwa3R2VUplSVVvREhESVl5TFZuTzRVeXRZc1RRUnJWc1VxVE9kcXVO?=
 =?utf-8?B?OHNobkJaRmpwZHFJa1NkV1Y5MUYvZ2M4ZGlaY2NvV1BNUWtheVdIU0VUVWFp?=
 =?utf-8?B?WTlJbTlDOG5OSTY1aHY1Vyt0dmYyQnVkb1dTYU9rUVFIVjJEbHN0TDJKTU04?=
 =?utf-8?B?NG5Wd2k1Y2tvdkd1QVgwYnl2R1BaS1VuQVJLY0l3aVk4VGVVVnlNTTJFMmdi?=
 =?utf-8?B?UHJPeDZzbktuVGtYMlRJOGRRWDNoZVNCRks5TWJ2REhQcmtXbW02MDl4ajBk?=
 =?utf-8?B?NlVnU0g4cG1OOUxadHJMTzFpclozbDNiM0h3ZXhIU2poSUk3ejJ3aVMyS2sy?=
 =?utf-8?Q?UwJIlqqCCzIVCJFb+CuKPaRba7n2Wnjx46LMCfp?=
Content-ID: <C825C11861AE3B45A096075F3A65E0D0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07959537-ea0b-41c7-ae1e-08d95130c81e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2021 19:00:20.6015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HYGWKNlRIu3pAbHM68R3py/FN+UTmNddqXvjtQjjve/LSs9CsQ/8R74K3r+vFxp+w9onPOjWJ8EUvdvKfCPRvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4495
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 01/30] drm/i915/xehpsdv: Correct
 parameters for IS_XEHPSDV_GT_STEP()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2021-07-27 at 11:38 -0700, Matt Roper wrote:
> On Tue, Jul 27, 2021 at 11:34:28AM -0700, Yokoyama, Caz wrote:
> > On Fri, 2021-07-23 at 10:42 -0700, Matt Roper wrote:
> > > During a rebase the parameters were partially renamed, but not
> > > completely.  Since the subsequent patches that start using this
> > > macro
> > > haven't landed on an upstream tree yet this didn't cause a build
> > > failure.
> > > 
> > > Fixes: 086df54e20be ("drm/i915/xehpsdv: add initial XeHP SDV
> > > definitions")
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_drv.h | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > > b/drivers/gpu/drm/i915/i915_drv.h
> > > index d118834a4ed9..d44d0050beec 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -1562,8 +1562,8 @@ IS_SUBPLATFORM(const struct
> > > drm_i915_private
> > > *i915,
> > >       (IS_ALDERLAKE_P(__i915) && \
> > >        IS_GT_STEP(__i915, since, until))
> > > 
> > > -#define IS_XEHPSDV_GT_STEP(p, since, until) \
> > > -     (IS_XEHPSDV(p) && IS_GT_STEP(__i915, since, until))
> > > +#define IS_XEHPSDV_GT_STEP(__i915, since, until) \
> > > +     (IS_XEHPSDV(__i915) && IS_GT_STEP(__i915, since, until))
> > Is your comment saying that the first parameter
> > of IS_XEHPSDV_GT_STEP(), p or __i915 must be the first parameter of
> > both IS_XEHPSDV() and IS_GT_STEP()? The older code is a bug,
> > correct?
> > -caz
> 
> We can name the parameter anything we want, it just has to be used
> consistently throughout the macro.  Defining the parameter as 'p' but
> then passing a different undefined name '__i915' into IS_GT_STEP
> won't
> work (but it will only start causing compile errors when we land
> workarounds and such that start using the macro).
Reviewed-by: Caz Yokoyama <caz.yokoyama@intel.com>
-caz

> 
> 
> Matt
> 
> > >  /*
> > >   * DG2 hardware steppings are a bit unusual.  The hardware
> > > design
> > > was forked
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
