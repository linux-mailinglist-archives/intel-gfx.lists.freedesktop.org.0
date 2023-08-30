Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D8878D3D8
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 10:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13A7D10E4D0;
	Wed, 30 Aug 2023 08:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B27BD10E4D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 08:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693382769; x=1724918769;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JligegOcgr7JuJPv8sQvj+VvxyvB3TG+OyQ6a6GWNQk=;
 b=XRipNaHvGGGr+4S0+MhOgARQH42FqvPxgoZ46/RHBwF1LXwhgNTsGDK5
 IuHT3HKsv6W3YVvHHhHbXRHsVlwd6TQjXa2FpPjvC4BdxxgOnA5BMTTJ3
 a9y/bDR4jfgNXJ/k0jPb1nfJUlB0630GIcZwONts50PQMYbA3vWF/3PVD
 EurWojJ0023z0/MBAQbBG4R2EC8HCAnNSp+G9gGSxDZFc/042iaPH1tAa
 6xv+M4xuhTXS4i6X+FgGRPtvnSr3VjKMSPRc6gu8GS/2m/76pdYunNVl1
 U7PZN4ZN9QHF25Vk0kgecN34WIyKYeT/KX/R1874Wp59YDREk23OLBNO1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="360577867"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="360577867"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:06:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="768333916"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="768333916"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 30 Aug 2023 01:06:08 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 01:06:07 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 01:06:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 30 Aug 2023 01:06:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 30 Aug 2023 01:06:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LPNtETP0RWPFJnUriQkdMiuDCq8ZjVxNPDxWqJQ3vlAASfiIpcwAZF+xc7m5JhRVZcWdTirQsOINP+yH6I9E/L2IArGQAnxG8qjSgdObh77DabkkCgnLIphdImEgTF1DQD8rerGpjmjVlX/t2+DG/4xBcxkf38iol//Xz4kHcLy1zyABemjFzoCAENO6mKmJ6nN7WBb340cHCuoa4R3HyaetnsVBNvE2yXtpddKdKWKIN2oS80blD2nghwdrfsunvc/i6YXh0ToJZmftdBvdHgm8ysYGnupBB0lQ6I6c7UnrzBv84nhZOR7nOthdX6F1JlhTlzZ52SFXb3v8bjNSdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JligegOcgr7JuJPv8sQvj+VvxyvB3TG+OyQ6a6GWNQk=;
 b=Yif0NSRTntmacGSFTASsrIepQnmaEuJ2IK4IofKu550QfEmocasOJEkfUhlURprb0kjfYpQpt7WHJSqMxRmK8v1zIVExa/YIbcSHzWiFHh6AsbIoGycJoREV2H2UKFgzc+Aaz2d0EPY1kQRe1CqQAF1DjLweDrbeaw3kEMlIpGC6ej1illGhI+W+8DVrnpf04NlXVvr3QVbwEsYn+BSe/us8ROgY9Krx1m39ESLOuL7D6mzbpkjybhCOTLBoelug15txCIfOtDWD12ASEy1J5mp9FWRIAP5Qt6dkjM9A5bxAELhflvM2uZ8j704vMURlCtScqWh6C8To4k791RgFMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6475.namprd11.prod.outlook.com (2603:10b6:510:1f1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Wed, 30 Aug
 2023 08:06:04 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6699.034; Wed, 30 Aug 2023
 08:06:03 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 4/4] drm/i915: Handle dma fences in
 dirtyfb callback
Thread-Index: AQHZwEw1F5gEaWaYk0CAX5nff/WvtLABNluAgAF6rwA=
Date: Wed, 30 Aug 2023 08:06:03 +0000
Message-ID: <93c025ccfbfbecb0d3ad97f721113a1a46c81f45.camel@intel.com>
References: <20230727053518.709345-1-jouni.hogander@intel.com>
 <20230727053518.709345-5-jouni.hogander@intel.com>
 <ZO26wSnWE8d_EtlC@intel.com>
In-Reply-To: <ZO26wSnWE8d_EtlC@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6475:EE_
x-ms-office365-filtering-correlation-id: 540ec01a-1be9-479e-821f-08dba92ff4b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rcBTLn9h5WSOfLdO9gEbPf0nihddGUL/0EpiyoFBS1pBfwXYWxYVa9nXi6QZcVgXLHtqgnC61U/QxTYQ8OAYL042z56RNHHUsGTnl7W2ZAtOvQhsp6vtLPPodV+nzvWNmXBh+yv+DSJkyOH2sa4pEQSqHc11bo/U7ZVqfCzIMfvnqnAUAfhY7NVM1bo1ux2bNFJerGhjzsDHsAMhCUOaLLsPxeAnn95muyEsJuX6oLQyOigw6okoXg0laYHATLbgW+Lb1LyNDFzzNp1VNLuJcoorqLrCmK4S6SRBT3gVGP33UK6UPZLSqiZksEVf7L15rUrVC6otFa0HQt4lye1MzfLVYYYIMTAyRFK+mxA7Okqc/7zJweueH2n3Wy5sswR0PyG9d182/f7MizEyV0/Qhc1qRfQ2Qe9YDKaHlHKLYfnLxHnUr0WRgZQ1yccjywwpaSRtcLlJUtmnV+1Z+IhUhhOSMOb+ek5B5mopqYU03JH76kGUKHwKmsAKAJF1kogskpDAryBV/GIvMf42IrIRm3OwLUMitSninDutR/rDVS2O2CV4Y2EJDvCeleNNrPC93gsZZ9HXmE8L4ehIx6rI3gSZm+Ncg3limraClIOJXLEwzwBvETFIhqdx+9X04RKO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(136003)(366004)(346002)(451199024)(1800799009)(186009)(8676002)(8936002)(4326008)(6916009)(36756003)(64756008)(66946007)(66476007)(91956017)(76116006)(66556008)(66446008)(316002)(2906002)(5660300002)(41300700001)(6506007)(38070700005)(6486002)(6512007)(2616005)(26005)(122000001)(83380400001)(478600001)(71200400001)(82960400001)(38100700002)(86362001)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QnMveDFlMTQ4OW9FNktIcS9GUDlwQUxqY1RWeXNEaThuN1ZrWE96Y3lOUVQx?=
 =?utf-8?B?Umkyakk1K0E3V2xyUnFueTZxTSt1ZzVYSmxTNDJhT0IvNjNFanlCdG50bEti?=
 =?utf-8?B?WVdXSFNnL255VmtFRWxSd2JaZDU3L3paR3VkY1pRWlVaQWxsdEtlS1U3c0FB?=
 =?utf-8?B?cDlUVXdzV2ZYMThHc2prN3dsbzJYYTRkTld2aVFBQks1Zk9YOXowYmkycm9S?=
 =?utf-8?B?cWdzNzl1YlZRakhHbWx6d0lVRzlDNEhRRVdmSmRtaFduTjN1K3BGTE9MRUtV?=
 =?utf-8?B?L2NQV2FWQ3JGM0RCT3BRdGw4NHlzY01BNk9XQ0F0dnJHMDVZSHFMOC8wODdh?=
 =?utf-8?B?Z2lWYjY1b0daeWNKaUlpeXpVWkNQYlg1TkF1M01BTEdCY2w1dnFhTUR3YVlk?=
 =?utf-8?B?STRGbUo3T2tPTkJsbSt4OGg1WDd5eml2V1lpTEg4ZmxLRXV2VEI0b0ZpTDJW?=
 =?utf-8?B?MUdZaXlObnV6dmpVampuUzdUR0xXN3VLdGV6SFAxOFJqYjdDKzRLMkVNWUJL?=
 =?utf-8?B?ZWduWXc0SkJ3N1AwYUlnRU9Ga29tWEc2ZUREeE0rVFJ5R1BpUHNObi9hbWt1?=
 =?utf-8?B?L3NRdzdFYzR2YjByUDlIWFdhQllyYWZIVFp3MGcxT2lXRE9YWkFnWGxNTVpk?=
 =?utf-8?B?WVpHTUV5N04xU3NpazZqSGdRYUsvcEVhQjJuTWQyUWNtKzA1VVJFMkU3V3R5?=
 =?utf-8?B?TXNSSkgyNitWL2xkbU9ZTlBaaUVKYkZUVWIyODdtVmlocXRRbTk5RHpvazhV?=
 =?utf-8?B?U3Jqc0lnYVh0Y1BFdkc1NE9Pa0phcFBmSTdTRUpiTDBzaUVBNzQyazB0N3Yv?=
 =?utf-8?B?U25uN001THloZlVnTkNvczFrN3NBMFR6aUhzZ1BDRDc1cG0rbkJBL1ZHQnli?=
 =?utf-8?B?SnN3ekgvc09SMkJKZ0h5R3pDMmpKK2NsNDRJbkZUKzRmM2UxQktqcmR1eUd6?=
 =?utf-8?B?TU9zcVpJN1FNaVA5UnV6YmZjaEhzVVA4U2RtNkhpOUpJTWUrTHdLK0JybkRx?=
 =?utf-8?B?ZXBuQ0wrVDUyZURvTVdScnYrNnZBa2tFYTBmMnpXblNnL0t1SExxUGw0M3NQ?=
 =?utf-8?B?T3o1ZnllemVBYzNvcThVSVlzT2hzZU9RK1dwZzh5U2tKdWhKNVhPWitkNXI4?=
 =?utf-8?B?SXdTZVltaTc1QnB3WEhFQlV2b2k2YUNiSm9oeHhQZldLd0lxNG5KSWVTM2pZ?=
 =?utf-8?B?V3R2dzdrRmlnOS83L0Z3U1A1L3pscVFYbTZFb3ZuYXNsWFlqWGErUHUyUkhM?=
 =?utf-8?B?c09yMHkwZncvZXdScnB3Y1ZjMnBBTnR5WVRkd3hLdTArNzF0RGNLVkNxZS9r?=
 =?utf-8?B?RDFtQzNETWhOS2VGSnRqWXEyVlo5S3FSTXNnSnVvVkY1WnhZdndiUFBhNTFP?=
 =?utf-8?B?K25uem9OSHF1SmtvZ3VVc2dNR2d1U01Vdk9PUi9HcEZQcVZoWnRCQ1hNRnEz?=
 =?utf-8?B?V2plWDhkRWlrU2w2YVh1Mno5WUtLMTI2cGNDd1lSZG5oSUVnVXRxZ1d4UDNT?=
 =?utf-8?B?Qmw1OVdpSGoyN1JWVG94bzYzRlZ0TElkdmNEb2o2ejE3MVJmOW41Z1hETzFW?=
 =?utf-8?B?Wm1TUUdVdzBES1k3azkwYzIzb1ZHT3cvdXZiaDVqVCtGVkFTV0FEMjV6Szd6?=
 =?utf-8?B?eHJxOEhaV2dSRUNGOGlJUnhEQkY3cjE5QlpmbDllYmRzMStZOFFvWjFkNUFh?=
 =?utf-8?B?bFFBMlo5NVNURFkzd2FxR2JXd1hhU3l0emhCVFJuQmxDVXZnODU5TkZWMUFY?=
 =?utf-8?B?Rm5JUTgvaDRTK3FXaS8yL20zL3NNRi92MXJWSm1ZQlVtQlMzYWRIOW51WWlC?=
 =?utf-8?B?ZldOK2trTnRHM3dlSkxTOXZrUGQxMjM4aGp1cE1rSXFFbjZlZkFVQTc2aCtV?=
 =?utf-8?B?dGp5ZTNEcVkvdlBTMC9ueHBtSUxPUkdKVTVYbWx6UjBTMVdCWkMrb0tjVHd5?=
 =?utf-8?B?ZzREcHY0STZmb0J0VEU4ZnJtZmV5c3hld3JpKzZJTWxGM2lhMFRvU2JyVVNF?=
 =?utf-8?B?KytlNEVEazlWZmd0MVVmWmtYVGVYM1g5WDltZlNCYmpsaVd6WmdCalpvSGwx?=
 =?utf-8?B?M1B3UzRaaElYQSthWUZmZ3dRajBtNUJsT1VUUjBHVHFGSWxsT3hNUVdDUlJr?=
 =?utf-8?B?VFZGYjlkWW9WdG05TjNJQkxPT2NqQVdsQUNlZUtxZ3dTV0J3TWJJMEVpWEQ5?=
 =?utf-8?B?TFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A1BD28E3EC7B5944B25C3C467EF2EC8D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 540ec01a-1be9-479e-821f-08dba92ff4b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2023 08:06:03.6953 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KfLqNc9KJxabFAnotC0Ieurvjce7AtEmmm3OCYOVr4E1FHe4nEY3j9zWZyqFvGHJAvKGCCBvPE+8RsI7xcbo8WUoPFYtGCpoNgQAwJDHj/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6475
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915: Handle dma fences in
 dirtyfb callback
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTA4LTI5IGF0IDEyOjMwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gVGh1LCBKdWwgMjcsIDIwMjMgYXQgMDg6MzU6MThBTSArMDMwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gVGFrZSBpbnRvIGFjY291bnQgZG1hIGZlbmNlcyBpbiBkaXJ0eWZiIGNh
bGxiYWNrLiBJZiB0aGVyZSBpcyBubwo+ID4gdW5zaWduYWxlZCBkbWEgZmVuY2VzIHBlcmZvcm0g
Zmx1c2ggaW1tZWRpYXRlbHkuIElmIHRoZXJlIGFyZQo+ID4gdW5zaWduYWxlZCBkbWEgZmVuY2Vz
IHBlcmZvcm0gaW52YWxpZGF0ZSBhbmQgYWRkIGNhbGxiYWNrIHdoaWNoCj4gPiB3aWxsCj4gPiBx
dWV1ZSBmbHVzaCB3aGVuIHRoZSBmZW5jZSBnZXRzIHNpZ25hbGVkLgo+ID4gCj4gPiB2MjogVXNl
IGRtYV9yZXN2X2dldF9zaW5nbGV0b24KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jIHwgNTcKPiA+ICsrKysrKysrKysrKysrKysr
KysrKysrLS0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDU0IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5j
Cj4gPiBpbmRleCA0NDZiYmY3OTg2YjYuLjU2YTIxMzc3NjgwZCAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jCj4gPiBAQCAtNyw2ICs3LDkgQEAKPiA+IMKg
I2luY2x1ZGUgPGRybS9kcm1fZnJhbWVidWZmZXIuaD4KPiA+IMKgI2luY2x1ZGUgPGRybS9kcm1f
bW9kZXNldF9oZWxwZXIuaD4KPiA+IMKgCj4gPiArI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS5o
Pgo+ID4gKyNpbmNsdWRlIDxsaW51eC9kbWEtcmVzdi5oPgo+ID4gKwo+ID4gwqAjaW5jbHVkZSAi
aTkxNV9kcnYuaCIKPiA+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIKPiA+IMKgI2luY2x1
ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKPiA+IEBAIC0xODk2LDYgKzE4OTksMjEgQEAgc3Rh
dGljIGludAo+ID4gaW50ZWxfdXNlcl9mcmFtZWJ1ZmZlcl9jcmVhdGVfaGFuZGxlKHN0cnVjdCBk
cm1fZnJhbWVidWZmZXIgKmZiLAo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBkcm1fZ2VtX2hh
bmRsZV9jcmVhdGUoZmlsZSwgJm9iai0+YmFzZSwgaGFuZGxlKTsKPiA+IMKgfQo+ID4gwqAKPiA+
ICtzdHJ1Y3QgZnJvbnRidWZmZXJfZmVuY2VfY2Igewo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0
IGRtYV9mZW5jZV9jYiBiYXNlOwo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Zyb250
YnVmZmVyICpmcm9udDsKPiA+ICt9Owo+ID4gKwo+ID4gK3N0YXRpYyB2b2lkIGludGVsX3VzZXJf
ZnJhbWVidWZmZXJfZmVuY2Vfd2FrZShzdHJ1Y3QgZG1hX2ZlbmNlCj4gPiAqZG1hLAo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5jZV9jYgo+ID4gKmRh
dGEpCj4gPiArewo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGZyb250YnVmZmVyX2ZlbmNlX2Ni
ICpjYiA9IGNvbnRhaW5lcl9vZihkYXRhLAo+ID4gdHlwZW9mKCpjYiksIGJhc2UpOwo+ID4gKwo+
ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZnJvbnRidWZmZXJfcXVldWVfZmx1c2goY2ItPmZyb250
KTsKPiA+ICvCoMKgwqDCoMKgwqDCoGtmcmVlKGNiKTsKPiA+ICvCoMKgwqDCoMKgwqDCoGRtYV9m
ZW5jZV9wdXQoZG1hKTsKPiA+ICt9Cj4gPiArCj4gPiDCoHN0YXRpYyBpbnQgaW50ZWxfdXNlcl9m
cmFtZWJ1ZmZlcl9kaXJ0eShzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyCj4gPiAqZmIsCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgdW5zaWduZWQgaW50IGZsYWdzLAo+ID4gdW5zaWduZWQgaW50IGNvbG9yLAo+
ID4gQEAgLTE5MDMsMTEgKzE5MjEsNDQgQEAgc3RhdGljIGludAo+ID4gaW50ZWxfdXNlcl9mcmFt
ZWJ1ZmZlcl9kaXJ0eShzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwKPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgdW5zaWduZWQgaW50IG51bV9jbGlwcykKPiA+IMKgewo+ID4gwqDCoMKgwqDC
oMKgwqDCoHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBpbnRlbF9mYl9vYmooZmIp
Owo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Zyb250YnVmZmVyICpmcm9udCA9IHRv
X2ludGVsX2Zyb250YnVmZmVyKGZiKTsKPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlOwo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGZyb250YnVmZmVyX2ZlbmNlX2Ni
ICpjYjsKPiA+ICvCoMKgwqDCoMKgwqDCoGludCByZXQgPSAwOwo+ID4gKwo+ID4gK8KgwqDCoMKg
wqDCoMKgaWYgKGRtYV9yZXN2X3Rlc3Rfc2lnbmFsZWQob2JqLT5iYXNlLnJlc3YsCj4gPiBkbWFf
cmVzdl91c2FnZV9ydyhmYWxzZSkpKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGdvdG8gZmx1c2g7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9mcm9udGJ1ZmZlcl9p
bnZhbGlkYXRlKGZyb250LCBPUklHSU5fRElSVFlGQik7Cj4gCj4gTG9va3MgbGlrZSB0aGlzIGNv
dWxkIGJlIGRlZmVycmVkIHVudGlsIGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soKQo+IGhhcyBpbmZv
cm1lZCB1cyB3aGV0aGVyIHRoZSBmZW5jZSBoYXMgc2lnbmFsbGVkIGluIHRoZSBtZWFudGltZS4K
PiBUaGF0IHdheSB3ZSBvbmx5IGRvIHRoZSBpbnZhbGlkYXRlIGlmIHdlIHN1Y2Nlc2Z1bGx5IGFk
ZCB0aGUKPiBjYWxsYmFjay4gQ291bGQgaW4gdGhlb3J5IGRyb3AgdGhlIGRtYV9yZXN2X3Rlc3Rf
c2lnbmFsZWQoKSBhcyB3ZWxsLAo+IGJ1dCBtYXliZSBpdCdzIHdvcnRoIGtlZXBpbmcgdGhhdCBh
cm91bmQgdG8gYXZvaWQgdGhlIGttYWxsb2MoKS9ldGMuCj4gd2hlbmV2ZXIgcG9zc2libGUuCj4g
Cj4gQXBhcnQgZnJvbSB0aGF0IGFuZCB0aGUgZmV3IGNvbW1lbnRzIEkgZ2F2ZSB0byB0aGUgb3Ro
ZXIgcGF0Y2gKPiBpdCBhbGwgbG9va3MgcHJldHR5IHJlYXNvbmFibGUgdG8gbWUuCgpUaGFuayB5
b3UgZm9yIHRoZSByZXZpZXcuIEkgaGF2ZSBzZW50IGEgbmV3IHZlcnNpb24gb2YgdGhlIHNldCB3
aGVyZQpJJ20gYWRkcmVzc2luZyB5b3VyIGNvbW1lbnRzIGhlcmUgYW5kIG9uIHRoYXQgb3RoZXIg
cGF0Y2guIFBsZWFzZQpjaGVjay4KCkJSLAoKSm91bmkgSMO2Z2FuZGVyCgo+IAo+ID4gKwo+ID4g
K8KgwqDCoMKgwqDCoMKgcmV0ID0gZG1hX3Jlc3ZfZ2V0X3NpbmdsZXRvbihvYmotPmJhc2UucmVz
diwKPiA+IGRtYV9yZXN2X3VzYWdlX3J3KGZhbHNlKSwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZmZW5j
ZSk7Cj4gPiArwqDCoMKgwqDCoMKgwqBpZiAocmV0IHx8ICFmZW5jZSkKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGZsdXNoOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKg
Y2IgPSBrbWFsbG9jKHNpemVvZigqY2IpLCBHRlBfS0VSTkVMKTsKPiA+ICvCoMKgwqDCoMKgwqDC
oGlmICghY2IpIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbWFfZmVuY2Vf
cHV0KGZlbmNlKTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPSAtRU5P
TUVNOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZmx1c2g7Cj4gPiAr
wqDCoMKgwqDCoMKgwqB9Cj4gPiDCoAo+ID4gLcKgwqDCoMKgwqDCoMKgaTkxNV9nZW1fb2JqZWN0
X2ZsdXNoX2lmX2Rpc3BsYXkob2JqKTsKPiA+IC3CoMKgwqDCoMKgwqDCoGludGVsX2Zyb250YnVm
ZmVyX2ZsdXNoKHRvX2ludGVsX2Zyb250YnVmZmVyKGZiKSwKPiA+IE9SSUdJTl9ESVJUWUZCKTsK
PiA+ICvCoMKgwqDCoMKgwqDCoGNiLT5mcm9udCA9IGZyb250Owo+ID4gwqAKPiA+IC3CoMKgwqDC
oMKgwqDCoHJldHVybiAwOwo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0ID0gZG1hX2ZlbmNlX2FkZF9j
YWxsYmFjayhmZW5jZSwgJmNiLT5iYXNlLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAKPiA+IGludGVsX3Vz
ZXJfZnJhbWVidWZmZXJfZmVuY2Vfd2FrZSk7Cj4gPiArwqDCoMKgwqDCoMKgwqBpZiAocmV0KSB7
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfdXNlcl9mcmFtZWJ1ZmZl
cl9mZW5jZV93YWtlKGZlbmNlLCAmY2ItCj4gPiA+YmFzZSk7Cj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaWYgKHJldCA9PSAtRU5PRU5UKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPSAwOwo+ID4gK8KgwqDCoMKgwqDCoMKg
fQo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsKPiA+ICsKPiA+ICtmbHVzaDoK
PiA+ICvCoMKgwqDCoMKgwqDCoGk5MTVfZ2VtX29iamVjdF9mbHVzaF9pZl9kaXNwbGF5KG9iaik7
Cj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9mcm9udGJ1ZmZlcl9mbHVzaChmcm9udCwgT1JJR0lO
X0RJUlRZRkIpOwo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsKPiA+IMKgfQo+ID4gwqAK
PiA+IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXJfZnVuY3MgaW50ZWxfZmJf
ZnVuY3MgPSB7Cj4gPiAtLSAKPiA+IDIuMzQuMQo+IAoK
