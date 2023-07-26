Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD02763DC1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jul 2023 19:35:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3589210E082;
	Wed, 26 Jul 2023 17:35:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A6A410E082
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jul 2023 17:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690392910; x=1721928910;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=IonUovCj79So7MoPa1aAy+cNhXWZDX88xDl3oo6A9HY=;
 b=erIJCgCfkeH4Q/QmdGjFHNiI29r4to49C/wfyZIDgGhIp4zj3L5IMqOc
 062NRd6cZvKjzpfjI4oTMwhAyH/RkxtSG7P3DSOs6XtS8Nfo6CQNE3D6j
 T9Q54RC6TMlGxDJZmCawD/Tx8OmYWgMq3vdbA0yo2kaCKja6kL37saapm
 f315HYQH6okkMNy7eGmSqxMrpi2vnX3oLolzYYnFA3GXiob19mLu2RRCj
 a/k8oLVA5pB+GWfGfxw39sA/12NkUVzqznBjA/jx4z8fEJWZfUV8QkJ+c
 ula05I5vL9SXsqO/QihkPZQAkIFi2yTjbuozCiyMkirBbQ66NrkwKZLss Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="371696978"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="371696978"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 10:35:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="1057316290"
X-IronPort-AV: E=Sophos;i="6.01,232,1684825200"; d="scan'208";a="1057316290"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jul 2023 10:35:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 10:35:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 26 Jul 2023 10:35:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 26 Jul 2023 10:35:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 26 Jul 2023 10:35:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dza9ydymqvgGRUn7aart8PIPQ8MOWOB/TLBXM6ev8GkqrMpS7nNLDdNnd4intzMRyu8Y0C43IzTy3PyCrfta5/yG7X51KinecXttrGrsWyLK0ZbjUO0LmVYjndKCLIM4oMPHLT9BJD6QDwvUTtULW/XVuBedgSzXOiAn8XPIFWsAJQEbL3MbHdpxgjSY29496VCz7jMTL9o4iDFF2iYaEAlcniN0fRa0CskvuyMpRZLbmGWKC4GXmNqy4KY1Sj5OoqVNacuaXblw/ATlUmz8mtAbqo3v6ofAI35j4gDZhvmXUbfbuA9qfPYXKhvx26eo38b8yE8RTi9Rtg4GF5X09Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IonUovCj79So7MoPa1aAy+cNhXWZDX88xDl3oo6A9HY=;
 b=A9L5XM1cehGzrOksLunASQ58muJgwrXoYjN2t38nAkwef5V+cWR72oRnd8cW1Jp9XHz6OQaNT/pOBpxX1tzkpnpT1GIweICTNJ+WgcTyRIBp5GjFlejR5E6cbufqU2moYBMt7JUkObrt37Mofcb5RFCQtXM7VIMauWMu2mB8JoeG1am8E/w4bub5ldUwqLsUJQjAtqWE3Ei8Yz/H4Bwn7ENtq/H5nX9SAMn+hCWVf5lpOuBSRxo6sTqDWGzn2q8/hhvi6htkyMtMAtFWhdPdfzZwZedLpQBKgRv6WMO6t9bmx2e2uMw6gdnfkF6PrRTRlCwmP41x5Tf39Rz/CI4Cww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA2PR11MB4858.namprd11.prod.outlook.com (2603:10b6:806:f9::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.29; Wed, 26 Jul 2023 17:35:03 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::542d:f32a:14b:1531]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::542d:f32a:14b:1531%3]) with mapi id 15.20.6609.032; Wed, 26 Jul 2023
 17:35:03 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvc2VsZnRlc3Qv?=
 =?utf-8?B?Z3NjOiBFbnN1cmUgR1NDIFByb3h5IGluaXQgY29tcGxldGVzIGJlZm9yZSBz?=
 =?utf-8?Q?elftests_(rev7)?=
Thread-Index: AQHZu21SkMbsl50TPESHn2Ey1ZZf9a/MWCeA
Date: Wed, 26 Jul 2023 17:35:02 +0000
Message-ID: <2529e40b82e498107786db06d7915c15f94e8c7e.camel@intel.com>
References: <20230720230126.375566-1-alan.previn.teres.alexis@intel.com>
 <168990060357.22546.13194590660823467514@emeril.freedesktop.org>
In-Reply-To: <168990060357.22546.13194590660823467514@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA2PR11MB4858:EE_
x-ms-office365-filtering-correlation-id: 4ac43b67-176f-4210-b356-08db8dfea4ca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xjea0yzXCu1/YHfnVjZvrA/BfDXzEywfJQ2/JI0rzvIK8mnn1ZUYsgugZevB/QkAdU5XFk4Heiat7HtBmYCMjpK/zon2qBw6KkfNirf+BwhHYuHFqnfgOftj83cbXVo99OTZ+Hbep+CjPdQGVnltWnTq/xTHqv5TpqqjwZi85ywKNhvif8ErIDO2HK9Xq4dFPTBeJUZW6geHwtBuG998TsfMnWKNuQNK4cc30dnFIS40KUYYkcgK/vFMX2BrRB7fJi4O/kWOVrp+nLxW1l9XWG7KIsSYKBS1ItC/OEJOfdwJI7TCiksPdD87jvzHgN+piEyls/+FAFAohiqw0n2yRIVPwHHK3bgjnwKaZQhUgbdLF2SFgxwSLRF645tmr3Fzd/F5ntOm7Wq0o5iD60Njk6XCskOJXE4sTUpIiiPzq60UoIfG+NuTXvgMu+dDfl6SEkHjVrGN400LksKmf7cN3beZPBxcUa8pOHeMpPQAC24bMF1yTXSsyFqaenDInjIVZs6x4QP4CBi8RKd83V7yhRjv3XxiJf/ahVcfF1KcF9ZRqksWlK5WB9zTjUueU7x925KyPbWTlSAsJhkSOVMD/FpeA5skC6RbA67/1WJg9Ey7afczC33pPtsd16xHbm/B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199021)(38070700005)(86362001)(122000001)(36756003)(2906002)(4744005)(478600001)(38100700002)(82960400001)(186003)(2616005)(26005)(6506007)(71200400001)(5660300002)(41300700001)(6512007)(6486002)(66446008)(66476007)(66556008)(76116006)(316002)(66946007)(83380400001)(6916009)(64756008)(91956017)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZEpIYUJwenFHdEsvMGRIb0ppZ09wWkg3RjlsMDVDeFZrSkpzblQvbnZEaEhk?=
 =?utf-8?B?KzVqSHQzSXpIQXFCWGthc2lsU0NyS1VQOGxKQXRjdnp3bzkxdmpId3NiTW9P?=
 =?utf-8?B?YzdnMHJ1U1JhZ3RWRWFxVUNZQ0FHWHZYVVRzOHZpTytESmZ0QjFSeGFDTE5w?=
 =?utf-8?B?SDVhYmNNY3ZFL2VSZEROZG1mTUt1bmlRZnJYZWFWc2svWmcvby9rNWRjNmNy?=
 =?utf-8?B?NGh2SGJDcXJUUENLdUdUV2dZVjhZMHdSZldwclZGZnNYNEtqSFFDQ25LaHJS?=
 =?utf-8?B?Z1QxdnRQajFuMjJkbVpqbXczNUZFcjkzTDlWWW1zVENnanJWcUhQQVZvbUZ0?=
 =?utf-8?B?c0FkSUpsZTRMd040Zjl6b3g3QXF2SitnRUZscmJvRFRMOHYyTnV2c1BDU0Nk?=
 =?utf-8?B?bHNiMlMxK1BlSE5aSGpGelZXS3NrWkFxajczVFJmTnBHQ0pQeXkzSmJxeWN2?=
 =?utf-8?B?c1hWbkcrUTAzdHlBcDBHaHZsZGJqbXh4bDd1MkdKTklzTEhmQ2ZsSERzcUtF?=
 =?utf-8?B?VnJOeHFFL0lsL1RPWGF6Q3V0eVVIV21zN09hMmxGNVJKMVF6MGg0NVkyZFdK?=
 =?utf-8?B?eitYNEdIdTYrQzZEcWNTUW1yNlk5bkp0YnhJVTBidVNsQ2tMVzF2d1U3T1JX?=
 =?utf-8?B?NHpXSmo3cVRNcHlYYkFjSnFvRGFiQ3EzUzFCME9LSVZ0Y2tvcmhPaXgyWS9S?=
 =?utf-8?B?REErQ3Z2T1hMWHE2TTVWNE9Ic3hwUWF3Wm5yb0MzYkZzSkxnUUx1bE5DUDFz?=
 =?utf-8?B?NFhnZnY5eTBZRnBkWDFKTmZGWWtGd0pyeWZpa1hYbmdMWS9Wc3JzRTdwVkVJ?=
 =?utf-8?B?MlJWTWFEc3Jsc1NYeTV4bHBwZi8wWWI3UkhzRTl2NytzZjI5UEJVbGF4MnZM?=
 =?utf-8?B?ZVZ6MStHc1NlVm1nZm9KNEY2OWtRU1AwMitZZUhuMzhKSVpnelpLYnNzK1hT?=
 =?utf-8?B?RFFvdE9GK2tYN1l6Si9NeDh3YlRLNFNRSnFGQWJvai9iUCttdUpzbkcxSnZF?=
 =?utf-8?B?MEZoNk5CQ3Z6Z21uUHU3V3VKa010endaeUFMZysyb0x3Znllc0YxaGRqdmgx?=
 =?utf-8?B?aHh6VTlpVzVuRE5pQytCQzRRTlloQmVzT210MHRsdFVRYlFLR05OK2hUejdq?=
 =?utf-8?B?Z1V3RzZQR0xGalRLc0ZMbkF0WWhlcWI5MUxoc3JRK2xBTUQxOEJac3pHbGxC?=
 =?utf-8?B?VzhpV0pEajJxb3JYTUFxWExhOTFPQi84cGY4aHJ4MXlLRERrQmxXaDBpdzht?=
 =?utf-8?B?SmJKUnN4VWlvcmNkYU1GVVpRSjkxTU55MzFWWFZGVWVGYVFzVzVDWWd4cWw1?=
 =?utf-8?B?V29zV0l6V25kcVFuWjhuaHBiZTNWZjhmMmZQSGJiaTgzdDBMUzVMUFEwT1RD?=
 =?utf-8?B?UjBxZHd5bVluNDVacFpkZ0wwbExHcjA5WnFYVDBhRzJMbkhFbUNqSEdIdlZH?=
 =?utf-8?B?VVFkdGZMU1FTZ3JRLzVKem9SVXMyVUM5SUZUaVM2T2hwNDJMQnRDenZFZXhL?=
 =?utf-8?B?NmhVRHc2cDV2Tkp1NmJ3dmFuR3A1b0pLeXplM0k2VEVEZGoyNTZOdzVsMnVG?=
 =?utf-8?B?c0lFV0tTZXBYWHdQVUVnZUtOUTgvQ3RyYXNYWUFJWmhmRytsYmRsaEwzZ3U3?=
 =?utf-8?B?b01FendFcmJtRVpISk5Ga0d3YkQ5bUU5NWVMOU92UHBIcWJCNmlJS0hPVmRn?=
 =?utf-8?B?SmFPSTBLQkxpMjMyY21Od1k0SEwxNVlDNitIaDhPZFJDRG12VGhIS3V1Y3VI?=
 =?utf-8?B?SkU1VEhJZmdwQldFRnFscXdHVGVodVZrOUQxK3JqZGl0OVIxRTNiZy9USFRE?=
 =?utf-8?B?Ym90dnl5anZpNmJXRmU2aHhTUy9nVWNRVzkxSjExSDJIbjk4Z3lzbjlQUEtk?=
 =?utf-8?B?dHJCWGRDckQzMjRNOHpXMnJKQ1lYaGU3UlMrd1h5c3E0bTZld2pZR3UxejE3?=
 =?utf-8?B?YXJNT0E5TkJpL09mbTFVTjRIZmZMSWpQZG1SRldaUk9hRVFYL0xRckJoUy9O?=
 =?utf-8?B?d3pOUytkMVBzamUwd1ZvNXl2TERMR3Zseml0dC9zNVNNZFVkWDlwZjgzRVp0?=
 =?utf-8?B?YXJIL2RBcUc1NHp1MWxOZzZscUcyMWk0YjRNM0xsRGRqWXI5ZzZJZ0J6QTRH?=
 =?utf-8?B?VlR4LzlYNnhoa0NJdGxhaFlLbVJwblF2eTg0ZDZnU1orTlhHQ3lOUmd0UWln?=
 =?utf-8?Q?TXe2KdA4QsRhvM97XdiHhM4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C87445F1C3E6E94F8AE457D5E4DB2A01@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ac43b67-176f-4210-b356-08db8dfea4ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2023 17:35:02.7828 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: blRL3MvEfSlmSdKc9n5IEQy/pw0jF9O+O2//wW6J2jPqfO6t9Oan7sW2f1scJVa6sev2OoIdr4/Lj0TTIfUWuLokL13ASNHhypyakWWVBAcooLlx85Nr4whgwcoWDdsI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4858
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftest/gsc=3A_Ensure_GSC_Proxy_init_completes_before_se?=
 =?utf-8?q?lftests_=28rev7=29?=
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

PiBJR1QgY2hhbmdlcw0KPiBQb3NzaWJsZSByZWdyZXNzaW9ucw0KPiANCj4gICAqICAgaWd0QHZn
ZW1fYmFzaWNAZG1hYnVmLWZlbmNlLWJlZm9yZToNCj4gICAgICAqICAgZmkta2JsLXNvcmFrYTog
UEFTUzxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMzQw
MS9maS1rYmwtc29yYWthL2lndEB2Z2VtX2Jhc2ljQGRtYWJ1Zi1mZW5jZS1iZWZvcmUuaHRtbD4g
LT4gSU5DT01QTEVURTxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xMTc3MTN2Ny9maS1rYmwtc29yYWthL2lndEB2Z2VtX2Jhc2ljQGRtYWJ1Zi1mZW5j
ZS1iZWZvcmUuaHRtbD4NCj4gDQpUaGlzIGZhaWx1cmUgaXMgdW5yZWxhdGVkIGJlY2F1c2Ugb2Yg
dHdvIHJlYXNvbnMgLSAjMSwgdGhlIHBhdGNoIHdpbGwgb25seSBiZSBpbiBlZmZlY3Qgb24gTVRM
IGFuZCAjMiwgdGhlIHBhdGNoIGlzIG9ubHkgcGFydCBvZiBzZWxmLXRlc3Qgc3RhcnR1cCBidXQg
dGhpcyBpcyBub3QgYSBzZWxmLXRlc3QNCmZhaWx1cmUuDQo=
