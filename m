Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F80959540D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 09:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D72E10F8EA;
	Tue, 16 Aug 2022 07:41:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4FB10F8EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 07:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660635663; x=1692171663;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8zS6m4LpdE6Y/x6XT5mUw2t3YS9bhhQyzkVpASxTC5g=;
 b=AjN/8so1fTccl+NklFEbBSJC5h5LimkZVJeInrwAig2/HL1M43z9Kkxu
 IJ76jrYeYrlnC9RZmU2d9jNVEZjDspyEHMpuLXVO9dkgMdtjQMrNljnha
 ka2IV6vwEWLStTdTFRwYBgtKmtKGjUJWnyb7iONdIVMtZx9zvjxL6P5Z2
 5mEs4bM8l6Oam1Tw7qHkQvE5NanY4Z9Li0rc2CWYNg2BikSFEqcN1PDlk
 L9wW5Hh3uM0B1mWV5uypgjrqX5fQQLYYCHQbUkdyxvTUjGynWz28ROQVW
 eg8ODmnoZkTu9UbLZzy3mC1lX8kcHk4JyIGh448wGSLdgLXhNfySwEfYK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="279112335"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="279112335"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 00:41:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="852550608"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 16 Aug 2022 00:41:03 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 00:41:02 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 00:41:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 00:40:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 00:40:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Inm67fclAAVu1IUujhfOp95vT81gu5GcOcxbKD5rn8YnufoeIGKUUbOC9Md6hX3n5+06vTWrnB0bZfNAf++ccfErKSjkbjBihJnJSiPE1OHAftN6USIfxHg8/ZlTk9W/YYaqyQ+hfsXV/uD6F6hO3yh42yDT+4Ow8vjh6un6xvj10kxn+XX0p6i4TnwdPHF4rPQyuAAZs3ijwkNE15TGZK+kzbnNQzus6JNYVTz9L1qaubuhFLD+IsaZiQsNhRoZw9TB1jNJ4e/e1LUV0G83wQeSnA6XHCdzPEoceU7GZBOaqmZWlCOzNUbxyp6J3tr5CYfM9xJfwvwMl7jWZWCNFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8zS6m4LpdE6Y/x6XT5mUw2t3YS9bhhQyzkVpASxTC5g=;
 b=RAJN16nRSG3/y9eYh4arYdQObxZwJg/8UYcbGtC9yTHAlZ6swrMZuN0l2YxI+sxl86KOCz8/8+4/R4YGzU+ctvAbzG5KMGIQE/cH+HMFDc/K+hCyzCfawAo8dvutydR/qDfSaK4qEKT9yZAo2+6/Xj7BeXzE0UPdh0wdDOwlLT4JkDRKHI/rB34f830jkyv4WiBeZgH8Es56Z5WshmwfyqW+mplWlPKuEI7lLDQUfwR7noub3GO3GVlZ/JIqbKHsiuMKo2fFM0nEocIuO1Vn5J85MUGmPtoWwz9jRltZ8tij9P+m1DhoD+kpLYM0o5nPIM3CnGHcsZHqe3YGUF9DLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MWHPR11MB1790.namprd11.prod.outlook.com (2603:10b6:300:10e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Tue, 16 Aug
 2022 07:40:58 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 07:40:57 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 01/39] drm/i915: add display sub-struct to
 drm_i915_private
Thread-Index: AQHYrZXlzdW1V3Lj1UmoUlDicsFACa2qp5AQgAAp+oCABhSREIAARMQAgAAAq3A=
Date: Tue, 16 Aug 2022 07:40:57 +0000
Message-ID: <DM6PR11MB31770EC3B26C3A06259E7DCDBA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <a5641ef131cf70d404b5344eb8c3cd1688fdaae6.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177A81A3B4B3DA89C3EC833BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87bksqt16i.fsf@intel.com>
 <DM6PR11MB3177FC14F388F35CD62892F2BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87y1vor64t.fsf@intel.com>
In-Reply-To: <87y1vor64t.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10bbac2f-b4c6-4add-d991-08da7f5aa88f
x-ms-traffictypediagnostic: MWHPR11MB1790:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KbgfZ6lyI0pxlHtZNsuGXgkJxF4ZJY1SuLu0hSyN1tDrirjxRXbspamAMS9/v7J9cWBc2uNR3Hoccnbdvlzd+1n7Q2hDjxZpP4CIzBsgJPX9CNbHA9SkwOVu+wv/rfdqV2u/xVuZ6r849BmZfO6EAyRhzQSNlEL8mplhgPuWgmvLfH2cg9xhsygCboUTTQvsbKbH6NzPOfvGHrRACcjlzEO3SBVjJ8t07Xeun8lXL199MpnwZteZtYQgksJOta+8GIkEeyEte+7mUBaS0mK1TfRLFoRxS1aj4xlImY/pZmI2ldqlwBWtliVPJgQqGj5XK+sv0ABbKOMkPAk+B+PBWRZL8hvbevIvqKkoy1x3IRAvTY4eFS2Bv+dLGRxWXfA28ponsRm8jYh6r7OyI1QGU9uiEefu0XlP+kwOLxfh+xEsDjixISAUXRnWMfJ91TigUakOGOJLjIZOII+kF0i3c19tHgqxi1AZAzP9q11TXRnL92F3l4izmk5R5udRlyGY57I9iPNmt2i+fKOxlITnJcokTmBOOFdq+Ok5zWqte0r0+MC37rgH4IMzshd9F4O6ngmMnBJKA/7XbNsYaQAaYjCWThfJp93Ti8B+0GlmMCfgWzIhqjlLLg3QjjYeD0eYurUWSLbDo6xgsCrSqEY25ekT6z8dGZD9Wn52MyLs8yQHv9+DoC/7VHO2MkTLaVoBq3Wni3Zzz7mmnyuIAPTOlntgilUdPtBVrJbhdO3V6t0IXvOGW/+uG88LIdnYvokRaoMN9sQ+SWMduZ4O7A1f560/yeeSsCDGPP9lcHzCsNS4FUHQKFTHO78qjIpwmyr2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(396003)(346002)(136003)(376002)(41300700001)(478600001)(83380400001)(55016003)(55236004)(53546011)(82960400001)(52536014)(8936002)(2906002)(5660300002)(66556008)(66946007)(76116006)(8676002)(66446008)(4326008)(64756008)(33656002)(66476007)(71200400001)(38070700005)(122000001)(186003)(6506007)(7696005)(26005)(38100700002)(107886003)(9686003)(110136005)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dnpZNjJTT0JBMVBpdGpDNmROWUdnR1YvcHJSZUd2eDlHaDduM1pjbjdidEFR?=
 =?utf-8?B?TDNXZ2U2MjZBb05BclB5bnNPb010Mkh6K0NsTHJwVGttVldLcnFrclVCYWdO?=
 =?utf-8?B?RHFDMEVxUGZBeEpSV3J5TXpoYVFRNUxmZmJOYnZXam5GZlJ4Vzd2djNZRndj?=
 =?utf-8?B?ZFFqS2d3ZllRM1RmekVsd3M2T00rMEJXL0cxNkZHMCtJVzNoL3htY3FxVjZH?=
 =?utf-8?B?cld2WnU2STdUcXFGTXpJbERoM3MwK0ZRVXZtdFQ0bDMyQ3pHN0NUOUIydEhs?=
 =?utf-8?B?dGdmVkhxOXlYbXdEbURnVjE2M29rQkJPRVN1eTRCeDd4eFBUbUFDK0J2UjJI?=
 =?utf-8?B?WFV2clUvSmdDbGhOTWhtQnNRR1JibFVmczNZMDZCRmdoWXowdmRJVUhNVGpJ?=
 =?utf-8?B?M3UwNW5ES3BweGY1Vkpwa2RZeElmaEExT2lxbGN2eFFJeHUrNzZqVVBLc2JO?=
 =?utf-8?B?ejFaUG93MXRHZ2pkTVgwM1FhTTN6aEE4QVFuV3ptWEVmTVlQaWhSaEJaKzNT?=
 =?utf-8?B?anhMSDJJUEhGV2tVTVp4ZWl0cGlLWndmeXNSc1o5c1ovQzByNXNSWGc5SmZs?=
 =?utf-8?B?Z2RXSUV0Y3VmOCtGemQ5Wm9ySWVNeHNBemhVVTJ6cVFSbGVobnNHNUV5Unp6?=
 =?utf-8?B?MSt3QkVDcUZpOGFUaitOL0FLSTJ2cXE3b1luL0pMMVdzZnZyVmZSZnRUekxR?=
 =?utf-8?B?Q3ZNZGZkT0xyZWZuZjhWbXNSUGJZb1llTHBDMTZ2cDVkV1krNXAwNWFLRFZr?=
 =?utf-8?B?ejgrZW40VFc2SWxjMVlTZ0RvNG5kSHJxejV3b2VTc1ZyeFNndEN1dXhnWU1U?=
 =?utf-8?B?RlREeFJBbWVUVk9yWEZOZWhBN09SZUFjSUpKOXBrQjlXV01HUERVdG5iQW03?=
 =?utf-8?B?eEMwOTZ5aC9MdEJXQUpoZHNZR0NMSFQzeDRUekJkVHltWmJHTzJoK3VQWElH?=
 =?utf-8?B?VVNkOERGYWw1d3dDTlVRNkpadGtWdUR3RUljLzhuTXdQMGFLRDIxSExXWE9J?=
 =?utf-8?B?RzIzbERlcXpjNnpxNXhtVlh0Yk00bGtDN0NCTzNpYzJ5VmVSa20wTTdLbkZG?=
 =?utf-8?B?cmpTS1RIT1dzYXFrdjJJVXd4MTJIeUZLMnpickljUHdXa0dLVG9vWllvTEs1?=
 =?utf-8?B?MHJKVFhsUkJKakRuaFRIcVo3Nko5bnhNWVM2eWN4RUd4K2trNkJSQ05uenMw?=
 =?utf-8?B?MkZISVUwNFJ5Vm1uTGxUMGZTaG9NVTNRcUxXQWIrSzZqNDhVWENXR2NwYjVV?=
 =?utf-8?B?WjJWSWRrR3Yyd2IxcGVoYkdCdmZ6NEtROHJwYnFKRUxKZFZXZVI5UmczSVA4?=
 =?utf-8?B?eXUrVFRTdlpCTUN6N2k1ZjFZUVdTZmo1L0orMXR1Wk1DQ0ZXOThpSlR5SG9X?=
 =?utf-8?B?RTlRUFZ4QW0wT0Q0VUR1SDhPMkVDN1RQQkxxemtsZG9aQy81M0F1Yk9LajlQ?=
 =?utf-8?B?ZFAyTFNiSnNqWWlUbktwZTRMUUVxbGlaNGU5NDNHOXZXTkZzdmxJbEluSGh5?=
 =?utf-8?B?UEpYcURnYXB3eWtVMjdOYm9uaXJCQzFORklieUg1cGpTdlU0VUNkZ2trRXBr?=
 =?utf-8?B?U05BVFFGNHI4c3JzN0JBSC9VZXNtZmloTXc0SUVYZmE2NWtLSlFzVVRFQ2Rw?=
 =?utf-8?B?VGdHY3orMTV2T05wYitjSytyZzZUSnJsWTlzRlUxamJyR1dmckpJazRZcHlT?=
 =?utf-8?B?cC9Ua3JzME5jVncrTWo0TzNCRVJsbGt5T1gwb3FLUVBpV2pMVVZRTVU0NC9V?=
 =?utf-8?B?bFZ4YjNaQmt3VHZ6a0cxM3RJMmRGcFIvY0lHRlY5VUFwMjNacTE0YTFrbHJM?=
 =?utf-8?B?TW9SREsrMHRseG8rL1VFemlNditNK1FhMkw5RWJBeEswaEpRRklqZUdyUUxw?=
 =?utf-8?B?M3pQcGFyUDRTQTh3Wlh2Q0JjN1VqeU83N2g2M2VSSTBrejBxc25QeE9MZ3I5?=
 =?utf-8?B?WTVuVmpYTWpxdmR2Z1JkN0plNEU0cTQ5Vm9Va2E1QVo0WkFOOTBoUUIxT1RG?=
 =?utf-8?B?cFRBSFBhTEtlVnNmUHVpZEVSQ2FaVTBHYlR2WWViZFYzUDR4YnFTOGJBVzRH?=
 =?utf-8?B?encybUFGOVN0cWdKUW0vSENiWmIva0tOZ01YRTE0RTdmRVFiMUxzNndESWdD?=
 =?utf-8?Q?NtGU5Kj4T+hTuabNoAQbljRK4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10bbac2f-b4c6-4add-d991-08da7f5aa88f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 07:40:57.7661 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: icL53YS+Roe+bhC3g7Gam75/2ZIHtVxBDfpYVJhZAkC8nwRmv2rzvpC9FUDGJWXeGm1HdbTJpbIDPtg9WzU8qQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1790
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/39] drm/i915: add display sub-struct to
 drm_i915_private
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgQXVndXN0IDE2LCAyMDIyIDE6MDcg
UE0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47IGludGVs
LQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBEZSBNYXJjaGksIEx1Y2FzIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggMDEvMzldIGRybS9pOTE1OiBhZGQgZGlzcGxheSBzdWItc3RydWN0IHRvDQo+IGRybV9pOTE1
X3ByaXZhdGUNCj4gDQo+IE9uIFR1ZSwgMTYgQXVnIDIwMjIsICJNdXJ0aHksIEFydW4gUiIgPGFy
dW4uci5tdXJ0aHlAaW50ZWwuY29tPiB3cm90ZToNCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4gPj4gRnJvbTogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+
ID4+IFNlbnQ6IEZyaWRheSwgQXVndXN0IDEyLCAyMDIyIDEyOjEwIFBNDQo+ID4+IFRvOiBNdXJ0
aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPj4gZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+PiBDYzogRGUgTWFyY2hpLCBMdWNhcyA8bHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tPg0KPiA+PiBTdWJqZWN0OiBSRTogW0ludGVsLWdmeF0gW1BBVENIIDAx
LzM5XSBkcm0vaTkxNTogYWRkIGRpc3BsYXkNCj4gPj4gc3ViLXN0cnVjdCB0byBkcm1faTkxNV9w
cml2YXRlDQo+ID4+DQo+ID4+IE9uIEZyaSwgMTIgQXVnIDIwMjIsICJNdXJ0aHksIEFydW4gUiIg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPiB3cm90ZToNCj4gPj4gPj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+PiA+PiBAQCAtMCww
ICsxLDM4IEBADQo+ID4+ID4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovDQo+
ID4+ID4+ICsvKg0KPiA+PiA+PiArICogQ29weXJpZ2h0IMKpIDIwMjIgSW50ZWwgQ29ycG9yYXRp
b24gICovDQo+ID4+ID4+ICsNCj4gPj4gPj4gKyNpZm5kZWYgX19JTlRFTF9ESVNQTEFZX0NPUkVf
SF9fDQo+ID4+ID4+ICsjZGVmaW5lIF9fSU5URUxfRElTUExBWV9DT1JFX0hfXw0KPiA+PiA+PiAr
DQo+ID4+ID4+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4NCj4gPj4gPj4gKw0KPiA+PiA+PiAr
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsNCj4gPj4gPj4gK3N0cnVjdCBpbnRlbF9jcnRjOw0K
PiA+PiA+PiArc3RydWN0IGludGVsX2NydGNfc3RhdGU7DQo+ID4+ID4+ICtzdHJ1Y3QgaW50ZWxf
aW5pdGlhbF9wbGFuZV9jb25maWc7DQo+ID4+ID4+ICsNCj4gPj4gPj4gK3N0cnVjdCBpbnRlbF9k
aXNwbGF5X2Z1bmNzIHsNCj4gPj4gPj4gKyAgICAgLyogUmV0dXJucyB0aGUgYWN0aXZlIHN0YXRl
IG9mIHRoZSBjcnRjLCBhbmQgaWYgdGhlIGNydGMgaXMgYWN0aXZlLA0KPiA+PiA+PiArICAgICAg
KiBmaWxscyBvdXQgdGhlIHBpcGUtY29uZmlnIHdpdGggdGhlIGh3IHN0YXRlLiAqLw0KPiA+PiA+
IENhbiB0aGlzIGJlIGNoYW5nZWQgdG8gbXVsdGktbGluZSBjb21tZW50aW5nIHN0eWxlLg0KPiA+
Pg0KPiA+PiBZZWFoLg0KPiA+Pg0KPiA+PiA+IC8qDQo+ID4+ID4gICoNCj4gPj4gPiAgKi8NCj4g
Pj4gPj4gKyAgICAgYm9vbCAoKmdldF9waXBlX2NvbmZpZykoc3RydWN0IGludGVsX2NydGMgKiwN
Cj4gPj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKik7DQo+ID4+ID4+ICsgICAgIHZvaWQgKCpnZXRfaW5pdGlhbF9wbGFuZV9jb25maWcp
KHN0cnVjdCBpbnRlbF9jcnRjICosDQo+ID4+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9pbml0aWFsX3BsYW5lX2NvbmZpZyAqKTsNCj4gPj4g
Pj4gKyAgICAgdm9pZCAoKmNydGNfZW5hYmxlKShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gPj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0Yyk7DQo+ID4+ID4+ICsgICAgIHZvaWQgKCpjcnRjX2Rpc2FibGUpKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+PiA+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ID4+ID4+ICsgICAgIHZvaWQgKCpjb21taXRf
bW9kZXNldF9lbmFibGVzKShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlDQo+ID4+ID4+ICsgKnN0
YXRlKTsNCj4gPj4gPg0KPiA+PiA+IENhbiB0aGlzIGJlIGNoYW5nZWQgdG8gc29tZXRoaW5nIG1l
YW5pbmdmdWwgd29yZCwgc29tZXRoaW5nIGxpa2UNCj4gPj4gPiB1cGRhdGVfbW9kZXNldCgpDQo+
ID4+DQo+ID4+IEl0J3MgYWxyZWFkeSBib3JkZXJsaW5lIGRvaW5nIHRvbyBtdWNoIGluIG9uZSBw
YXRjaCB0byByZW5hbWUgdGhlDQo+ID4+IHN0cnVjdCwgYW5kIGRlZmluaXRlbHkgdG9vIG11Y2gg
dG8gcmVuYW1lIHRoZSBob29rLiBNYXliZSBpbiBhbm90aGVyDQo+IHBhdGNoLg0KPiA+Pg0KPiA+
IFRoYW5rcyBmb3IgYWNjZXB0aW5nLCB3b3VsZCB0aGlzIGNvbWUgYXMgcGFydCBvZiB0aGlzIHNl
cmllcyBpdHNlbGY/DQo+IA0KPiBJIHRoaW5rIHRoaXMgc2VyaWVzIGlzIGFscmVhZHkgZ3Jvd2lu
ZyB0b28gYmlnLCBJJ2xsIHdhbnQgdG8gc3RhcnQgbWVyZ2luZyBiZWZvcmUNCj4gYWRkaW5nIG5l
dyBwYXRjaGVzLiBCdXQgdGhlcmUncyBtb3JlIHRoaW5ncyB0byBtb3ZlIHRvIHRoZSBkaXNwbGF5
IHN1Yi0NCj4gc3RydWN0IHRvbywgc28gdGhlcmUnbGwgYmUgbW9yZSBwYXRjaGVzLg0KPiANCkkg
aG9wZSBhIFRPRE8gd291bGQgYmUgYWRkZWQgZm9yIHRoaXMhDQoNClJldmlld2VkLWJ5OiBBcnVu
IFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCg0KVGhhbmtzIGFuZCBSZWdhcmRz
LA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg==
