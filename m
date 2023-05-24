Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4546F70EE55
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 08:44:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CFA10E57A;
	Wed, 24 May 2023 06:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5B910E046
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 06:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684910640; x=1716446640;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Q1TtrPMtfIxxGpM9Q1aUmTVKAt+15MyJidl0F4HA0Jo=;
 b=NB2KFdPhDntUlOldVE15QSttNOuLzHtJ9Cs5W6LZyxVG+jsVFuHKp20m
 K5XI6mjwd/N/6nrki+fElKGU8ERh3jku3A7Ru6YZQyV1Z0QVkXiUurdcw
 qLhN/oTA9BMO9oeSHPfZH/BrYw/Y9B4RYMPvwqmHy+YWM4TYIZO73igD3
 CwnG2ImYLNadLlWmZZr4rTL0Qo6QX8p6mE3jgIicpeuQCGdrJv+NrOQPi
 mFTgf6dPb2WWc2sgXVnwad6nO3QgJn+0hu1XVSTWUDFuS45/YjgWqFKM/
 81F7LgEMhzdipULg33mJiLKLIulx476EhVCQHbuN2idUXD+MrxvMzYQa/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="338057787"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="338057787"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 23:42:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="794062307"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="794062307"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 23 May 2023 23:42:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 23 May 2023 23:42:48 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 23 May 2023 23:42:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 23 May 2023 23:42:47 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 23 May 2023 23:42:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dATIe2fwqqvG3uGseV5QCzy203w6+WY4UGXuqzHx9V40ctfXjHs04abbVidQ+9fxE5JgoHyu/4MfwCOvH1EL/ArewHTUYdwzxhgem2eHTL/kMyjJu2LrnJbkQhEAyBDnsWRDsQlBVh+DIl19dewRtat+0do2T2qmJLJmexERjfetLOtXCxFU7MOWezm9aOCNobFyych0FjkORB5rVbjI1X/Uo9eGDo/7FJEczk5iAoc6t6JDm1JZHQiovfVDlQHIDSqxyZ2XhDHk2EGN0e3H8X31i/pRxRVs37zyIfGNVSpshse6uu3XH2aLpSFOTSYvXoo9MfLUX+DcHcHfAOr3Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q1TtrPMtfIxxGpM9Q1aUmTVKAt+15MyJidl0F4HA0Jo=;
 b=Pnc+uJ6m6CTws6XmWgikGqjGslbvEHqsrWyUbobDhaczJqFttYjPpCN7SDhDj6xER2/bPTXfqMvnh0Sd1mbTQ5+D8v7TbKE8suC15/ok8QuiN2nfxhuVxBz5ULy/uNPSQ39hV4tNIn/3Vwly6CJClXAbnErsL1Z3rVwR4e56nobc3ts94Yk1GVjox0soNMwKhgHrVQfIq8IXD9ZDixpxuSpp+xVRN8DaY3Fz34sNMFkHt/wN43+Yu7iABeygSV2j0NEIAYiEyuXbcFboEGMMGHvBNhVKYpw8h+zasYXDePtmroYCFOX/223sY8ylakSRlP/UnMDRwFNg6CV4IbohZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by DS7PR11MB7835.namprd11.prod.outlook.com (2603:10b6:8:db::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Wed, 24 May
 2023 06:42:45 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::79ad:e9c0:80ea:201e]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::79ad:e9c0:80ea:201e%7]) with mapi id 15.20.6411.028; Wed, 24 May 2023
 06:42:45 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 2/7] drm/i915: update the QGV point
 frequency calculations
Thread-Index: AQHZjQJiIA5DxwXwnk2g+EGam8wPWK9nkGIAgAA61wCAAAuiAIABJQEA
Date: Wed, 24 May 2023 06:42:45 +0000
Message-ID: <26980e220274dac9f1cc13fac81f2d038d861536.camel@intel.com>
References: <20230522230759.153112-1-vinod.govindapillai@intel.com>
 <20230522230759.153112-3-vinod.govindapillai@intel.com>
 <87fs7nmnet.fsf@intel.com>
 <c752c626934552a0b57850dc6b3c7697d143de05.camel@intel.com>
 <877cszkx5z.fsf@intel.com>
In-Reply-To: <877cszkx5z.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|DS7PR11MB7835:EE_
x-ms-office365-filtering-correlation-id: c918d216-0817-426a-9dca-08db5c2214e7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yE/fq4Wpmuh7mMUNEFE496MAeuUKEJZ6S4f5crckAuRwTtakWqJl+d0iF20rgAc/06XXc1l7cALo+6TdWjNGFeL4hKKFdMn5/JNWCFE5NVUTkPixxcGzAJyN9QE4eclff/ySVd2E1oPSHfkuPUnpns1MVUaSL0AlHc/NfEWTqurGI3VQqa+nIbYxPDDuig4KfXvgv2OF3q4KQTQ5RvBQ3oGHurYcf4ScpmQh94elgeYiS9p1a9FmnBVTbS8Cp+7e1duNTYvuICXEZctc57eEV+hPYaMetOzWfodHfNgyCZt/23xrVseFpR4uoWjnQOFPPbX66GcccSpolbdJ2I9EnP00YyMHKQe5DzZ1lWl7TupE0zWexH4rjuD6Egq1qiFmdLBw04Zyahix51EqkVkAi52vXdUBLvl+rfHC0bpnm5Gs7P/lfntyL+fjvSNcUCgh00oU8kRmM6FUwTexQeJdRLHoR0hM9erxD3AIlIZJFWs1vmjxnp2NX28IBB3oj4Irj8FMsRlPVKCwgyYb+zwDuyWKIWpJoUeG67lOV2oC0aI71vMFp9FzFMqKh4TTmUXOtSy0iteRNQQwQ6kXltT8Zqiczv3qvkTwVxJ/UDftuYiL7XVGZLV+A0fZoIntwHJm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(39860400002)(396003)(136003)(366004)(451199021)(82960400001)(6506007)(6512007)(26005)(15650500001)(186003)(38100700002)(122000001)(2616005)(36756003)(83380400001)(2906002)(6486002)(110136005)(41300700001)(316002)(71200400001)(478600001)(91956017)(66556008)(64756008)(66476007)(66446008)(66946007)(4326008)(76116006)(38070700005)(86362001)(8676002)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z2dEQWZIM0lEaFhUckxhaERPc2UrajhTcmg3L21rbmVZVnUrN3NPMWx3cXZT?=
 =?utf-8?B?MnZ4RUIzRnJxRTJyaGs1OFVISUZHaThLV3A5OHY3TUZZQzNyZC9WdGhYRC9u?=
 =?utf-8?B?K2dnSis3eEM1bnJsc1B4SVl6cTBnbDExS0d5ZTB3S1kwalBVeWFaaWRvSGNm?=
 =?utf-8?B?U1dxN1RlQUhjNnBoUlFrT3F0dDJ6SlZvd2lzVHFGREErZEE1M1dITFdDalha?=
 =?utf-8?B?NHhRVTM0ZHFYZUNBQjlYZllVK0N2emxDNzRLcjIwemJaVmF0enY5VkFEWDRp?=
 =?utf-8?B?bUR3SkVWbml3NlY3NFhNSUtKVWhNMmdLbXJwWFIrOGdyYk1qU2pRQ0c1cHFC?=
 =?utf-8?B?c0pYOFdzOXlheWxwaDE4VFZBZ3QvTXNLb1R4TVVuUHIrdW4zOUVzUWQrbTdT?=
 =?utf-8?B?SlFBRk1nWGFrb1lxYm9Pc20vM25aYnpBVEUxeDZKekMyemp6dGZFczNrbDNS?=
 =?utf-8?B?alFJaXFtdHFZR3dmb0FHaE53RmpLK3lqTGNTeCtXeVlKc2dweWJzY3FNZHYx?=
 =?utf-8?B?RXZVMEtPak5RTUdXdC9wcTNPUHFtWE9keFpqQ2tsQmlkMC9nSDgrK0pQK010?=
 =?utf-8?B?T0huV1ZqWlNiYXZhS2w0cEFBQXJJTk52bURWRDNPV21idjhXRXFRZmVFQWRC?=
 =?utf-8?B?YzhKUEVYUktHamhXdmI0MWFuWkhyMUU0N1UrZ3RyajBZM3l6SFJwZlhUK0k0?=
 =?utf-8?B?ODFTbW5FN2RCYnZkOGZVbnRvancxbjBUSzBCdVRZczAydHc3OHNGT2hRNkhH?=
 =?utf-8?B?YVEwc3VFYisveUN6aE5nZW1MKzc3c1Y0QmlGbnMrRWttZm1xa0RPaTFXYjBC?=
 =?utf-8?B?aExuaUxoZUxXTWxkU05KdmpNR2pzeTJOK1E1QVp3L1NMdzAyR1c5ZkY4UHNW?=
 =?utf-8?B?SENsTjZlSllDRmErQnU0T0pUK3FxRXJ6NTF1K2tPNy85QnZUcmNWZy9DOTF4?=
 =?utf-8?B?NzZHbjRveWhzOVFIYVpJSjlRRkY2VUxzWTM4dTZvK21sRmpDV0I5NE5FclZ0?=
 =?utf-8?B?b2JiTVp0UGt6c2xoZ3M3djdSbHFaREJsQ204Y3BCK05wTFJLYjNJN01PdE1q?=
 =?utf-8?B?WTlPSmU2OXppdVpCekJCWkJOa085SGtHUWl4UWhlN2FuMzBRWFR2RldBcGNU?=
 =?utf-8?B?a0ZudzV6ZVBVcWlyMmNmVDBabnh4NE5EUUxFZEFIcEd1L0xNRG10VEV1ZTlj?=
 =?utf-8?B?Z2M5V0phclJKN1VuSGFsZUpOUlFTN0JORGgvMlVWOCtibVVCcUxQdFZlL1Rw?=
 =?utf-8?B?Tzl6MS9qNTM1OGRwcjlCejBFN1lMZWwyS2tSa0xxdXNHK0tsemtSSGpJcW9s?=
 =?utf-8?B?T1YwQnVDNjZpVzhicFVIbTNNNDYzS3pjNmxEOGttOFNvV1M1L1ZZblpGdlFF?=
 =?utf-8?B?c2szRFQ2QUVlb2dWSzB5bDNGZ2laNmFGUzJvNFR6eHk5OHZVT2FFVWs5SVA4?=
 =?utf-8?B?emczKzg3ZnAwckZ4Z3dLbkpKeVYzM2c2SkVvQWczNGJ4ZFZWbjZLeE8rR2hv?=
 =?utf-8?B?VGsrRDRHNEJselVkanhaenlTcThXZ2w1TVNvZkpMQkZQK1laNEZud2JkWEoy?=
 =?utf-8?B?M3ZwSW5DT3Z0T1VMYStxRXdpeHhnT0pObTJrQ1lKcGZPRkRGdVNaeFJWWG1p?=
 =?utf-8?B?UC9UclBETVVYNzBaSVpqWVZBOGUyZnRsaXhiUUxLUmpMSzFEdTNVdXdJeEJH?=
 =?utf-8?B?aEdoRTdDdHNMTVo3d2N3blB5UHNCNEViOUNIcXhWdkVDQkY2S3E5dnh6UzJz?=
 =?utf-8?B?bDhva0IxMHNKaU5xNkFBYTZSN2hiWlJhdUVIbXlCMWdmWXYybjRDcXNSSTNW?=
 =?utf-8?B?OVFTNFB0Y21SRGU0ekJEQTRIQUVROU44bU9pU05SMG5KWDhGZERkeDg0Wndh?=
 =?utf-8?B?SGhNVGNHR2h1TE96a0pyTEcyNFIxTSt0dTFwYjZ5YzJuZUtrRUcxZU5Ubm5w?=
 =?utf-8?B?dExLMFVBSE5PazM5WGo4OVdMUjBuYWFMVjdEcjRxNkgxS1pBbVZla0ZFaEFi?=
 =?utf-8?B?Rk1lN3BqYTJpb0dBcHFnelhoaE10RnkzTEdUY2xjMG1zOGpucWlWakZqa3VW?=
 =?utf-8?B?KzhUTVovMTJCZnI1NElTSlJBd2NacWcyNmI3eldHU0N5ZFpUaTVES0NacEZI?=
 =?utf-8?B?Zk82YlA4OVBKbEhPZ21tOGlBbEZJZkZPQnVuVGJMRzVPSlpiQUJzMlI1SlVw?=
 =?utf-8?Q?Iqb9GVUiZkqK+pEXZFxpU6M=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <19E6E40EEBFFBA429BC1896C788591C9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c918d216-0817-426a-9dca-08db5c2214e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2023 06:42:45.1873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C26bCSbI7qSJpwsSOeRt1iX3A3lV4MNcTAQk9Ebted7mTczFWhZk9jAp4HZRx61gYAh9YJk66Ssy2dcQShYMfmD9NYOKMuHIE5vgSft3QlA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7835
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 2/7] drm/i915: update the QGV point
 frequency calculations
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTA1LTIzIGF0IDE2OjE0ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAyMyBNYXkgMjAyMywgIkdvdmluZGFwaWxsYWksIFZpbm9kIiA8dmlub2QuZ292aW5k
YXBpbGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAyMy0wNS0yMyBhdCAxMjow
MSArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+ID4gPiBPbiBUdWUsIDIzIE1heSAyMDIzLCBW
aW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4gd3JvdGU6
DQo+ID4gPiA+IEZyb20gTVRMIG9ud3dhcmRzLCBwY29kZSBsb2NrcyB0aGUgUUdWIHBvaW50IGJh
c2VkIG9uIHBlYWsgQlcgb2YNCj4gPiA+ID4gdGhlIGludGVuZGVkIFFHViBwb2ludCBwYXNzZWQg
YnkgdGhlIGRyaXZlci4gU28gdGhlIHBlYWsgQlcNCj4gPiA+ID4gY2FsY3VsYXRpb24gbXVzdCBt
YXRjaCB0aGUgdmFsdWUgZXhwZWN0ZWQgYnkgdGhlIHBjb2RlLiBVcGRhdGUNCj4gPiA+ID4gdGhl
IGNhbGN1bGF0aW9ucyBhcyBwZXIgdGhlIEJzcGVjLg0KPiA+ID4gPiANCj4gPiA+ID4gdjI6IHVz
ZSBESVZfUk9VTkRfKiBtYWNybyBmb3IgdGhlIGNhbGN1bGF0aW9ucyAoVmlsbGUpDQo+ID4gPiA+
IA0KPiA+ID4gPiBCc3BlYzogNjQ2MzYNCj4gPiA+ID4gDQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+
ID4gPiBSZXZpZXdlZC1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tp
eUBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYyB8IDIgKy0NCj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiA+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiA+ID4gaW5kZXggYWI0MDVj
NDhjYTNhLi5jODA3NWEzN2MzYWIgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiA+ID4gQEAgLTE4Miw3ICsxODIsNyBAQCBzdGF0
aWMgaW50IG10bF9yZWFkX3Fndl9wb2ludF9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHZhbDIgPSBpbnRlbF91bmNvcmVfcmVh
ZCgmZGV2X3ByaXYtPnVuY29yZSwNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBNVExfTUVNX1NTX0lORk9fUUdW
X1BPSU5UX0hJR0gocG9pbnQpKTsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGRjbGsgPSBSRUdf
RklFTERfR0VUKE1UTF9EQ0xLX01BU0ssIHZhbCk7DQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoHNw
LT5kY2xrID0gRElWX1JPVU5EX1VQKCgxNjY2NyAqIGRjbGspLCAxMDAwKTsNCj4gPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgc3AtPmRjbGsgPSBESVZfUk9VTkRfQ0xPU0VTVCgxNjY2NyAqIGRjbGsgKyA1
MDAsIDEwMDApOw0KPiA+ID4gDQo+ID4gPiBXaGF0J3Mgd2l0aCB0aGUgKzUwMCB0aGVyZT8NCj4g
PiANCj4gPiBUaGlzIGlzIHdoYXQgcGNvZGUgZXhwZWN0cy4gU29tZWhvdyBwY29kZSB1c2UgdGhp
cyBmb3JtdWxhIGFuZCB3ZSBoYXZlIHRvIGV4YWN0bHkgbWF0Y2ggdGhpcy4NCj4gPiBHb3QNCj4g
PiB0aGlzIGNvbmZpcm1lZCBmcm9tIEFydC4NCj4gDQo+IEknbSBndWVzc2luZyBhbGwgaXQgcmVh
bGx5IG1lYW5zIGlzIHRvIHJvdW5kIHRvIGNsb3Nlc3QsIGFuZCB0aGV5DQo+IHNwZWNpZmllZCBp
dCBsaWtlIHRoYXQgaW5zdGVhZCBvZiBzYXlpbmcgInJvdW5kIHRvIGNsb3Nlc3QiLg0KPiANCj4g
RXNzZW50aWFsbHkgKHggKyAoZGl2LzIpKSAvIGRpdiBpcyB3aGF0IERJVl9ST1VORF9DTE9TRVNU
KCkgZG9lcy4NCj4gDQo+IEl0J3Mgb2RkIHRvIGRvIGl0ICp0d2ljZSosIGFuZCBzdXJlbHkgbm90
IHdoYXQgdGhleSBleHBlY3QuDQo+IA0KPiBCUiwNCj4gSmFuaS4NCg0KQWguLiBvayEgVGhhbmtz
ISB3aWxsIHVwZGF0ZSB0aGlzIQ0KDQpCUg0KVmlub2QNCg0KPiANCj4gPiANCj4gPiBCUg0KPiA+
IFZpbm9kDQo+ID4gDQo+ID4gPiANCj4gPiA+IEJSLA0KPiA+ID4gSmFuaS4NCj4gPiA+IA0KPiA+
ID4gDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBzcC0+dF9ycCA9IFJFR19GSUVMRF9HRVQoTVRM
X1RSUF9NQVNLLCB2YWwpOw0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3AtPnRfcmNkID0gUkVH
X0ZJRUxEX0dFVChNVExfVFJDRF9NQVNLLCB2YWwpOw0KPiA+ID4gDQo+ID4gDQo+IA0KDQo=
