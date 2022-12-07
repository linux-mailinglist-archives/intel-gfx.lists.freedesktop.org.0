Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCC064567A
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:29:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0721910E0D4;
	Wed,  7 Dec 2022 09:29:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 902ED10E0D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670405367; x=1701941367;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hDH4G70kgQdqyDAl2OfyPL3fUHFnfNC4As2XeZdfSg8=;
 b=AOunE9QSWyBvf65Yy2l/GZPaSuSoOrVpREfU/0u5yrWJ9ODVX9BHRHKx
 7iygE51LuNK9YproHG96AvLCIdCWNYypbCSMvmAGxGDeZdb5GFIR1uDOx
 MAWSUci/RYAmrNntH6NN1wG3pgpc1xnXDcVeyKEo4ofVvBrYvjkUfCujX
 6qr1eqT5sMojN5FWwhvUwRSPP0ICugsmGnexLOKheuI4IONZ87Ov340qH
 pdeTXyS9QcGA5yuZ6pcfyGNihuYzLOU6JlnxZy6ASIjcbgQdJTDEm96A2
 XmHHdUVaFEUgGa6T1TXZCsT2X1ncp2FFURDF9+rltiPO7eGu7SxQQC7Ca A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="297204078"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="297204078"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:29:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="677297849"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="677297849"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 07 Dec 2022 01:29:26 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:29:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 01:29:25 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 01:29:25 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 01:29:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CHRNpsCfnqK0M8HCQDBAqOMcAfPjByvUOM2fWEo61EWOenQFR1ERxgvH2MGsr8QXO9smUu1zfLZDNfgDs+EzFtHGLYCXeJ/v2U8MOgx+Zt9K/BbNb1KC4l06J4CRkYiyrctAm0mVb4X88YOUlUjM1sJ+E30HPnOtOcdKBSYwGKG+KoetVXgY5MP1vYBehVNL5IKe7+0VLWnDA1Lo2pJA0W3MC3jylWPKnOsnsoPQntgRWRbeqyCgzCo8OBweQn5sbwqUnbxSxTiUf4t6KkKkA5aTsPYWI7+/uxNuqA/GjRyeUQe9YW+rJyV1uE29xbl1dDOQMrSLmeor5Zd6u8wvuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hDH4G70kgQdqyDAl2OfyPL3fUHFnfNC4As2XeZdfSg8=;
 b=EV9nqNjXu98fbYIU+yb3FdBKAwkMgt5pgKGAAmBwJIgdlNTdiXsKb98NeB+vlXIQpCacoFUro0/YI6oTk95phsbrJy9Bwk8hcOHrpF2HS6H8WWKLHowgenrEANO5Ec+dmjcegErNkt03I77KAffrpj1ZS4s2L7tacdFt/YWNnqXP3tXMDWnoAELxrerHzrWnrnzzYnAiNIAMRIbvS/xUxfzYJL9W+LXUFu9E5DK5nEtiuCxyyPk+i+ZfzGcXs4/fIn9ZJxNARM2mqFho/GQdG4Ne1g8HzgpWwaod40j7z4/bB6TISBeuxHKx/69i1jYVFLFwEgCKCFdvr/XcztSdQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM8PR11MB5702.namprd11.prod.outlook.com (2603:10b6:8:21::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Wed, 7 Dec 2022 09:29:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 09:29:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 08/13] drm/i915: Move the DSB setup/cleaup
 into the color code
Thread-Index: AQHY/1AntqXNH29eeUiQsbz1JIiPPa5iPefQ
Date: Wed, 7 Dec 2022 09:29:23 +0000
Message-ID: <DM4PR11MB636033BA827DC90CE32A79B4F41A9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20221123152638.20622-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM8PR11MB5702:EE_
x-ms-office365-filtering-correlation-id: df8af178-21fb-430f-ac32-08dad83586b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LM+ACykBlcycKYgBVZRdu4RzmIAl7GdfKuYy7rh60rbYF51JPUBO7r1zqXwXitr/XP/GEbAGoZz0lPToWFZurO/ZqKg7nRSBNy0n+qntg67sK4qnz8acEm9xHeFi+xbpyg322WSiEA/28kb8jN53LmOhBqnfTDUBxbl3MlihkkFp0Nar/9RfOdcRFfHkwZKm1uxOWKtKhawjX3c3FjYa9Q1s53eeEw+fxj+jDnHvoBOEX9WSUSu7Lt8tFudfvPN3LrMcS/TpF+aZvXAmbHg+JM8S/bNjUc8GwxNfGAXYqCCPqomKdX8DBsPMTcKXXXU7e1bPEcOM3oqCuO415EBzcKhHWWDPi0qMQa9bg2WpPjzCg8vaPip3VB9TVgBK1yCWIdyWM4d0LK2o9NBuHq/RDRVeiZ1UzXkrSS3khY5BJQxDtc8Lhkn7QqrSHLy8KZpVeHLx3UnUJMskP4CZkplvl+9+DV78c1jpTthbfUSuyvVJeJUC0bJnPF4Ypu3FyMc4DP5o2AKGGbw44vIZI3iHr95umpnM2mOuZiwpt4LPhZW5dOmboKs80tzqGMw2BBMmZodOs4rSXRoCSFwqrCDlACHNHuXBmWa7ahUMs2VI/4RDIZo1UpSL33uV03/7tn8J1Q/lDS71/qhgCWOLyjtiREm1j+gyoRzND4UxYvvQsNwAQ824vHv4N9fPN0PUSK+ZngtP8+7eTESdzorEMyR2uA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(39860400002)(346002)(376002)(366004)(451199015)(66574015)(83380400001)(41300700001)(186003)(9686003)(26005)(52536014)(8936002)(5660300002)(53546011)(82960400001)(2906002)(8676002)(6506007)(66446008)(66476007)(7696005)(64756008)(110136005)(66946007)(76116006)(38070700005)(478600001)(66556008)(122000001)(38100700002)(86362001)(33656002)(316002)(71200400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mm5xc3d3UW13dlltQTNicW54NWNaTFJMejZ5V0FjaU5TMmVJNzRnd3ZyWjhx?=
 =?utf-8?B?UFNRR2l1TXJ6S1JML3U3WTdZbS8yYzZOVlpzeStRQjJlVDkwRUZtVTlCUG80?=
 =?utf-8?B?STRXT2xudytUQkJSUG1GZTZtWDVqbEZzL2h2RzdPUnYrd0lHRXE5QS9Wa1Jw?=
 =?utf-8?B?V2t0c05uYzFWT295Q1lRejM0WGxLMGgrZG1uWlhNd0xkdjJtVnJCZzM1SDk1?=
 =?utf-8?B?TGNhcXhIaWt2ZDlnQnIrMElkVm9EQkp6cDFETlcvb0tJNXJSRmt1Z3NNNkRC?=
 =?utf-8?B?VkxGeVZDaytDYTN6cW9VbUxLNGY0a3JzUWhUcWt5UmppTXdzN3Q4MXNQelZT?=
 =?utf-8?B?eFc5Rmpkc3FZNVNwRlFkUDVCQkdjT1hxSlRMSUtaeVNqeWhQQnFDTVF3TzFY?=
 =?utf-8?B?eXZ5QWJya3diVjh5T3c2MzF2Nk9YOXNEdUxzMU5oRU4wZmMvMWtadnRwc3hm?=
 =?utf-8?B?cnpCVGU0NzJvcENVdzJRZTVNRFY0STd5NzlhOHVlLzNjOXBWbUJvYnlXL0Q0?=
 =?utf-8?B?bTVWbHpxUnNaeFlFQnhRVmQ5ZnBmREQzYzYxSnE1S1lPZCtWL0s4aVdFczBt?=
 =?utf-8?B?azJHTVBZRk9qTGEzSjZPYUdoWmpMZ2o3RmlnM1QyRHJvRGxpNVM0aC9sWnd2?=
 =?utf-8?B?WnN1U2d5akhaY3MyV0hNVUVQTzBWYXlvNFFQL2ZSaEhoa0xjZCtwMWt5TVpS?=
 =?utf-8?B?MFJCWlJJYzNNNjhZeUFxeVFzOUhNUGFhNFU4K3JaWStVT0s0bm1BR3hYQ29z?=
 =?utf-8?B?VUZnazY1V0RtVHAyejVaWHkzNHA1VnRMMEFva25lMWhHU1FXRDNCL0xJOWNU?=
 =?utf-8?B?bGlLWGJIVllKM2haQnpJZktxbjlTdzJFWTJ1ZU9YNWRzL2s4TEhIRk5lMzdO?=
 =?utf-8?B?a3FaRTJkY2hmWkNaYnJTOG83bzZsQTVWWEdDSDAvRlE1NFlveXdydWtjeFdU?=
 =?utf-8?B?VUtwSmp0c2U2cDc0WUZJeUJ5dUhTT3llQ3VrdWJya3B6SXFFTmxNV3dlR210?=
 =?utf-8?B?SjRvOVQrOXkwdXV2TWQ1RDlsS2E4Q2puYm5odnJZR0J6SlE2RlArWTBaeGFv?=
 =?utf-8?B?cE1ZeXRqL3V2OGNNTlk2UHdTZkh1Ry9CN0dUUkgzTlptbDdnZC9GQUtENWlw?=
 =?utf-8?B?MHJVeEF6b0tjSnlMR2NnZmNGaGN2cEdQalVwaGQvVEEwK2VhTFVZeENXNkUw?=
 =?utf-8?B?TWJ4emt3Wll4MnpVNE5TbGhCYVBlLzZVM0VXMUMvdThDUmkxYXZEQ29KYWdN?=
 =?utf-8?B?ajFLejhHeW9WMDh1amkyKzN3WDNvbjZoVmdqcXlhUmxJbzJjTTRwczloMTFZ?=
 =?utf-8?B?ZXBoSFdJVUVvOW95bzVpSXFrcFhWNG1BdFk1K3RVMHBkUHFlcGZ4cHIzQmU4?=
 =?utf-8?B?Q3FZLzZBQTJ3dVk1RVJhdHFkZklMWTc0UU4waHd1Nll0Tkk2QTBMRmtCK0pi?=
 =?utf-8?B?b042bE9xMFBaMXN1UVpGOXJhMXd0QWNqYlJiWXV1eEdtZ1BmWGhYdUlsZHho?=
 =?utf-8?B?YVFNaWNkcWNvUytTSXgvOFBmaUt2SmtqMnovSUhQMTRpRG1aN3g5VytvNWhM?=
 =?utf-8?B?UFEwbUxjdFlXTjdHSVBHMzVCblQxa0pXUllvYmsrMGpVZ2NjbkZCT21EZjd1?=
 =?utf-8?B?MndaUGFlUFc0cTBlclJ0NWt6ZEcxL3gvK0gwRkZuSjFkM0NrZ1ZjdzFVZlV1?=
 =?utf-8?B?WUlEMksxSytxSjlYN2x6SE1vUW9lU2E5NWJ3TzVCQy9tSm1aMWpXVUROd0lv?=
 =?utf-8?B?akJZdWl3NFg2WUV3eCt4TWU1MUhjcVVDVkJKWkR1SjJRUFJDQm8vN1NRK21w?=
 =?utf-8?B?RnRSaHB1dFJVblpncGJMODFBenNmcFFpckUvS0Q4WWZiK3UvbnppT2d2V0hO?=
 =?utf-8?B?UVJRd2ZUSWRTdDh4OEl2ZUhiWmNRSCtPRml2YW11empveC93WUJsZk5SK0Rm?=
 =?utf-8?B?T3pvaEN4VFFXaUp3Uk1VaDBvTDNKS25EZ1B6MmRPQi9mbmtJcTVDcm1jWHZa?=
 =?utf-8?B?RDN2aHA2eU02dTkwV3ZJUG00VTQ1K2Q2bDdFalR1WDNPdElmOHp2VWxPRWdL?=
 =?utf-8?B?SjVUV25YYW5yejEyVDI3K1NEN0RKU1FNTHI4L1d1MjNUcSsyOVFkNlNuTHFG?=
 =?utf-8?Q?hjxrxrcbluTyFAC1SfvDGlqR3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df8af178-21fb-430f-ac32-08dad83586b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 09:29:23.1371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V8dBvHn0vEBGTGKd3g7eTlUG4RsPmaO4fXVujOy/IIMDUs4C+Uyzzm20x8q7pa19hiiGDB8l19bu2QBfA8YasQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5702
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915: Move the DSB setup/cleaup
 into the color code
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjMsIDIwMjIgODo1NyBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDgvMTNdIGRybS9pOTE1OiBNb3ZlIHRoZSBEU0Igc2V0dXAvY2xlYXVwIGludG8g
dGhlDQo+IGNvbG9yIGNvZGUNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBTaW5jZSB0aGUgY29sb3IgbWFuYWdlbWVudCBj
b2RlIGlzIHRoZSBvbmx5IHVzZXIgb2YgdGhlIERTQiBhdCB0aGUgbW9tZW50IG1vdmUNCj4gdGhl
IERTQiBwcmVwYXJlL2NsZWFudXAgdGhlcmUgdG9vLiBUaGUgY29kZSBoYXMgdG8gYW55d2F5IG1h
a2UgZGVjaXNpb25zIG9uDQo+IHdoZXRoZXIgdG8gdXNlIHRoZSBEU0Igb3Igbm90IChhbmQgaG93
IHRvIHVzZSBpdCkuIEFsc28gd2UnbGwgbmVlZCBhIHBsYWNlIHdoZXJlIHdlDQo+IGFjdHVhbGx5
IGdlbmVyYXRlIHRoZSBEU0IgY29tbWFuZCBidWZmZXIgYWhlYWQgb2YgdGltZSByYXRoZXIgdGhh
biB0aGUgY3VycmVudA0KPiBzaXR1YXRpb24gd2hlcmUgaXQgZ2V0cyBnZW5lcmF0ZWQgdG9vIGxh
dGUgZHVyaW5nIHRoZSBtbWlvIHByb2dyYW1taW5nIG9mIHRoZQ0KPiBoYXJkd2FyZS4NCg0KTG9v
a3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50
ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jICAgfCAxMCArKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5oICAgfCAgMiArKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyNSArKysrKysrKy0tLS0tLS0tLS0tLQ0KPiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8ICA4ICsrKysrKysNCj4g
IDQgZmlsZXMgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGluZGV4
IDVhNGY3OTRlMWQwOC4uNWE4NjUyNDA3ZjMwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IEBAIC0xMzg5LDYgKzEzODksMTYgQEAgdm9pZCBp
bnRlbF9jb2xvcl9jb21taXRfYXJtKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQ0KPiAgCWk5MTUtPmRpc3BsYXkuZnVuY3MuY29sb3ItPmNvbG9yX2NvbW1pdF9h
cm0oY3J0Y19zdGF0ZSk7DQo+ICB9DQo+IA0KPiArdm9pZCBpbnRlbF9jb2xvcl9wcmVwYXJlX2Nv
bW1pdChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KPiArCWludGVsX2Rz
Yl9wcmVwYXJlKGNydGNfc3RhdGUpOw0KPiArfQ0KPiArDQo+ICt2b2lkIGludGVsX2NvbG9yX2Ns
ZWFudXBfY29tbWl0KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7DQo+ICsJ
aW50ZWxfZHNiX2NsZWFudXAoY3J0Y19zdGF0ZSk7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBib29s
IGludGVsX2Nhbl9wcmVsb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5l
d19jcnRjX3N0YXRlKSAgew0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxf
Y3J0YyhuZXdfY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuaA0KPiBpbmRleCAxYzZiMTc1NWY2ZDIuLmQ2MjBiNWIx
ZTJhNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b2xvci5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3Iu
aA0KPiBAQCAtMTcsNiArMTcsOCBAQCB2b2lkIGludGVsX2NvbG9yX2luaXRfaG9va3Moc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOyAgaW50DQo+IGludGVsX2NvbG9yX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOyAgdm9pZCBpbnRlbF9jb2xvcl9jcnRjX2luaXQoc3Ry
dWN0DQo+IGludGVsX2NydGMgKmNydGMpOyAgaW50IGludGVsX2NvbG9yX2NoZWNrKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gK3ZvaWQgaW50ZWxfY29sb3JfcHJlcGFy
ZV9jb21taXQoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiArdm9pZCBp
bnRlbF9jb2xvcl9jbGVhbnVwX2NvbW1pdChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSk7DQo+ICB2b2lkIGludGVsX2NvbG9yX2NvbW1pdF9ub2FybShjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7ICB2b2lkDQo+IGludGVsX2NvbG9yX2NvbW1pdF9h
cm0oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOyAgdm9pZA0KPiBp
bnRlbF9jb2xvcl9sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpOyBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBpbmRleCAzMmIyNTcxNTcxODYuLjQ1ZDc5OTZmNWMxYSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTkzLDcgKzkz
LDYgQEANCj4gICNpbmNsdWRlICJpbnRlbF9kcF9saW5rX3RyYWluaW5nLmgiDQo+ICAjaW5jbHVk
ZSAiaW50ZWxfZHBpb19waHkuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kcHQuaCINCj4gLSNpbmNs
dWRlICJpbnRlbF9kc2IuaCINCj4gICNpbmNsdWRlICJpbnRlbF9mYmMuaCINCj4gICNpbmNsdWRl
ICJpbnRlbF9mYmRldi5oIg0KPiAgI2luY2x1ZGUgImludGVsX2ZkaS5oIg0KPiBAQCAtNjkzMSw3
ICs2OTMwLDcgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfcHJlcGFyZV9jb21taXQoc3RydWN0
DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+IA0KPiAgCWZvcl9lYWNoX25ld19pbnRl
bF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBjcnRjX3N0YXRlLCBpKSB7DQo+ICAJCWlmIChp
bnRlbF9jcnRjX25lZWRzX2NvbG9yX3VwZGF0ZShjcnRjX3N0YXRlKSkNCj4gLQkJCWludGVsX2Rz
Yl9wcmVwYXJlKGNydGNfc3RhdGUpOw0KPiArCQkJaW50ZWxfY29sb3JfcHJlcGFyZV9jb21taXQo
Y3J0Y19zdGF0ZSk7DQo+ICAJfQ0KPiANCj4gIAlyZXR1cm4gMDsNCj4gQEAgLTczODIsMjQgKzcz
ODEsMTggQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF9mZW5jZV93YWl0KHN0cnVj
dA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKmludGVsX3N0YXQNCj4gIAkJICAgICZ3YWl0X3Jlc2V0
KTsNCj4gIH0NCj4gDQo+IC1zdGF0aWMgdm9pZCBpbnRlbF9jbGVhbnVwX2RzYnMoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpIC17DQo+IC0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUg
Km9sZF9jcnRjX3N0YXRlLCAqbmV3X2NydGNfc3RhdGU7DQo+IC0Jc3RydWN0IGludGVsX2NydGMg
KmNydGM7DQo+IC0JaW50IGk7DQo+IC0NCj4gLQlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19p
bl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsDQo+IC0JCQkJCSAgICBuZXdfY3J0
Y19zdGF0ZSwgaSkNCj4gLQkJaW50ZWxfZHNiX2NsZWFudXAob2xkX2NydGNfc3RhdGUpOw0KPiAt
fQ0KPiAtDQo+ICBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY2xlYW51cF93b3JrKHN0cnVjdCB3
b3JrX3N0cnVjdCAqd29yaykgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSA9DQo+ICAJCWNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlLCBi
YXNlLmNvbW1pdF93b3JrKTsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRv
X2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xk
X2NydGNfc3RhdGU7DQo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGM7DQo+ICsJaW50IGk7DQo+
ICsNCj4gKwlmb3JfZWFjaF9vbGRfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xk
X2NydGNfc3RhdGUsIGkpDQo+ICsJCWludGVsX2NvbG9yX2NsZWFudXBfY29tbWl0KG9sZF9jcnRj
X3N0YXRlKTsNCj4gDQo+IC0JaW50ZWxfY2xlYW51cF9kc2JzKHN0YXRlKTsNCj4gIAlkcm1fYXRv
bWljX2hlbHBlcl9jbGVhbnVwX3BsYW5lcygmaTkxNS0+ZHJtLCAmc3RhdGUtPmJhc2UpOw0KPiAg
CWRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9jbGVhbnVwX2RvbmUoJnN0YXRlLT5iYXNlKTsNCj4g
IAlkcm1fYXRvbWljX3N0YXRlX3B1dCgmc3RhdGUtPmJhc2UpOw0KPiBAQCAtNzU5MCw2ICs3NTgz
LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdA0KPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQkgKiBEU0IgY2xlYW51cCBpcyBkb25lIGluIGNs
ZWFudXBfd29yayBhbGlnbmluZyB3aXRoIGZyYW1lYnVmZmVyDQo+ICAJCSAqIGNsZWFudXAuIFNv
IGNvcHkgYW5kIHJlc2V0IHRoZSBkc2Igc3RydWN0dXJlIHRvIHN5bmMgd2l0aA0KPiAgCQkgKiBj
b21taXRfZG9uZSBhbmQgbGF0ZXIgZG8gZHNiIGNsZWFudXAgaW4gY2xlYW51cF93b3JrLg0KPiAr
CQkgKg0KPiArCQkgKiBGSVhNRSBnZXQgcmlkIG9mIHRoaXMgZnVubnkgbmV3LT5vbGQgc3dhcHBp
bmcNCj4gIAkJICovDQo+ICAJCW9sZF9jcnRjX3N0YXRlLT5kc2IgPSBmZXRjaF9hbmRfemVybygm
bmV3X2NydGNfc3RhdGUtPmRzYik7DQo+ICAJfQ0KPiBAQCAtNzc0MCw3ICs3NzM1LDcgQEAgc3Rh
dGljIGludCBpbnRlbF9hdG9taWNfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+ICAJ
CWk5MTVfc3dfZmVuY2VfY29tbWl0KCZzdGF0ZS0+Y29tbWl0X3JlYWR5KTsNCj4gDQo+ICAJCWZv
cl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBuZXdfY3J0Y19zdGF0
ZSwgaSkNCj4gLQkJCWludGVsX2RzYl9jbGVhbnVwKG5ld19jcnRjX3N0YXRlKTsNCj4gKwkJCWlu
dGVsX2NvbG9yX2NsZWFudXBfY29tbWl0KG5ld19jcnRjX3N0YXRlKTsNCj4gDQo+ICAJCWRybV9h
dG9taWNfaGVscGVyX2NsZWFudXBfcGxhbmVzKGRldiwgJnN0YXRlLT5iYXNlKTsNCj4gIAkJaW50
ZWxfcnVudGltZV9wbV9wdXQoJmRldl9wcml2LT5ydW50aW1lX3BtLCBzdGF0ZS0+d2FrZXJlZik7
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+
IGluZGV4IDcxNDAzMDEzNmI3Zi4uZWY3MzczMGYzMmIwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBAQCAtNDQwLDYgKzQ0MCwxNCBA
QCBlbnVtIGhwZF9waW4gew0KPiAgCSAgICAgKF9faSkrKykgXA0KPiAgCQlmb3JfZWFjaF9pZihw
bGFuZSkNCj4gDQo+ICsjZGVmaW5lIGZvcl9lYWNoX29sZF9pbnRlbF9jcnRjX2luX3N0YXRlKF9f
c3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLCBfX2kpIFwNCj4gKwlmb3IgKChfX2kpID0gMDsg
XA0KPiArCSAgICAgKF9faSkgPCAoX19zdGF0ZSktPmJhc2UuZGV2LT5tb2RlX2NvbmZpZy5udW1f
Y3J0YyAmJiBcDQo+ICsJCSAgICAgKChjcnRjKSA9IHRvX2ludGVsX2NydGMoKF9fc3RhdGUpLT5i
YXNlLmNydGNzW19faV0ucHRyKSwgXA0KPiArCQkgICAgICAob2xkX2NydGNfc3RhdGUpID0gdG9f
aW50ZWxfY3J0Y19zdGF0ZSgoX19zdGF0ZSktDQo+ID5iYXNlLmNydGNzW19faV0ub2xkX3N0YXRl
KSwgMSk7IFwNCj4gKwkgICAgIChfX2kpKyspIFwNCj4gKwkJZm9yX2VhY2hfaWYoY3J0YykNCj4g
Kw0KPiAgI2RlZmluZSBmb3JfZWFjaF9uZXdfaW50ZWxfcGxhbmVfaW5fc3RhdGUoX19zdGF0ZSwg
cGxhbmUsIG5ld19wbGFuZV9zdGF0ZSwgX19pKSBcDQo+ICAJZm9yICgoX19pKSA9IDA7IFwNCj4g
IAkgICAgIChfX2kpIDwgKF9fc3RhdGUpLT5iYXNlLmRldi0+bW9kZV9jb25maWcubnVtX3RvdGFs
X3BsYW5lICYmIFwNCj4gLS0NCj4gMi4zNy40DQoNCg==
