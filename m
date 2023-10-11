Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D44797C50FA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 13:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423BE10E6A1;
	Wed, 11 Oct 2023 11:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 025D810E6A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 11:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697022373; x=1728558373;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=wFtdwsqQ6GFtgGQ3YrSGBXFpd0l9fJcY6ncXeILBOeE=;
 b=b5q4wQySg7gVrtMJDOVZk7h7X7tUk+uZ57WlzljYXo4dKd9Da1Kn2wp2
 a/Gr572eqOquq8fN2HeNrOQnmKf4Gn/FWIc7iRsF7EIlkQCmXSn/coBCk
 yD865zTs4LWtgmYj5Z8p2x7IOn3lR0PmQy1R7TIbwZwEE0IVJ6EgVsfrw
 jA11rLZpSkrFKcJwyn9ZAe5dof2xlcPRWPFwrsm3Uy0R0I2KDWYFiol9w
 2uv2YUqdRHGL9HQZTJ6sboaJVumxv/gfYuT5XHWjJF0CYVwSpQTNBs9T2
 HXe5u7YSrvCsznogBSD5vcgEnrRgBOjJT0tnqd/cIMy1Rfqh3SRrK1NA8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="6192304"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="6192304"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 04:06:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="897590533"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="897590533"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 04:04:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 04:06:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 04:06:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 04:06:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 04:06:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XgAwfMCdg0JgE6bWx0u3Snn6zzBjzG4HZb5DHrzwrV8lZiTAGCemrBAFfosOacKdGdJIKcw9tuAsbqATWBPa3y9avNL759n5ncwJMjoh9A8v5l/h+trFE8zVy8DKY6Cm36XgBsneHaHtJh5aUP1/zOpqrkV/0zTXXn4Eh0A40IaFnJ8OoDDESFG+0p+eERRk3eruDKs0oWkKJQCudyXosOgAGx10nTFydFWOhJg9N8+k4ZJvWcl+afTqVA6IOa4WVNIc/CKhioWmUR/6NDkCOJOs8KFw7BkD26bL2bycdDO2uM+sPfbqGJVSGmTShukXQbyCe7Qa83FIeOWmhgLDEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wFtdwsqQ6GFtgGQ3YrSGBXFpd0l9fJcY6ncXeILBOeE=;
 b=Fa/F9/U0rkjtDFSOFaFsWyj5DxGOZNGH9C0SDkjyIRMNFuTSCtjGtwZoqkutshCNqhCTvOVnQE39/3odBIezbd6ovKsiaFsH2rscfgx6F/VbGtG+mpMrXswbSI2eEkhXPIdidlyYijZnVyynSuDlM6rYNwduqYz1iL/PvmDNUEcbS6nP4AGvjRUCYfvGnsv2SncW+KSwZCNGA4Dn58dXP5WgFgnEArTRPsI4lRQR+bG9rAnRhVYpVR7ZE+WIs9z5ab1SgfkQkEWGCKhV2U08nuzmrHNmobNtW6GmxyMe6w09kpnxImiieJIN0QzzReMhRk0ZDuxXcEcQUaqxAbxprw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB6964.namprd11.prod.outlook.com (2603:10b6:930:57::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.38; Wed, 11 Oct 2023 11:06:08 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 11:06:08 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1 0/3] scalable display feature
 configurations
Thread-Index: AQHZ9FsBnuQIH1h7lU26l6EhzwtPRrBEZhaAgAAXD4A=
Date: Wed, 11 Oct 2023 11:06:08 +0000
Message-ID: <9bf15ccc9d55afde7bb1ffcd1aeb2e5ca45cceb4.camel@intel.com>
References: <20231001113155.80659-1-vinod.govindapillai@intel.com>
 <276840230cf93f8c23601b4dea0a02fc9c99cc90.camel@intel.com>
In-Reply-To: <276840230cf93f8c23601b4dea0a02fc9c99cc90.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB6964:EE_
x-ms-office365-filtering-correlation-id: 16eb8241-39ec-4533-da90-08dbca4a11f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MhdeUvNUwQqPSZ0o7s2EEj5Gm+2jxEdjw6gGEUQtdhYHb1YknPOC7A4kcv5bSFqwbw0Igm9hWj1W6QLRxL09KxcHCh+l334CAysBEWixI1tSG8TDUlw7kA0Wrbng8hFTsfExA8ji5n/W/4JkOtolXNJkZtph8KFcqSUuOYtchUBax5ur+ill9OnjZ0tHJOggHla+LEqiIESfMC7RJENSKRqBASP/Po3A6nt2uSylXTmXwOYngfqfagCcaIuzIIk22nt/HYk9wHaD1w3iazCUR2TL96df6FXzIZdeDucKDUi3v4Yfcxtfsc6igudUnB16qNKufJiPQiB3qd90EoLGFFgDylNgzpBsBhNcLu6/3YtQZgQrWXcKKE42YMKqFfU4DVZ6dRXL7t5LQ/xtWOv/NMDtipzoYdovg7F4pUjcb5NwoPhVk17WXuLztetghFMRwRfAgVNDUIGcmu1Do2XiNdg2bXEeLz54rGeLLSk9/Q3iVexf10tMCDEX8cTjO45hGNB5Qf6ovynJd/q49kLesV9Ho5QE/xNX81Ybwb7cXI3GeUxO38h7m2O0KsxQvk3SQ3h2Kfd9PRg83geatbFdyNNq0Nxmajq0xDEzkbWUrGsDkekYmYatqyhxJng0a1Xi
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(396003)(136003)(376002)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(4001150100001)(26005)(66574015)(82960400001)(38100700002)(83380400001)(8936002)(122000001)(8676002)(2616005)(66946007)(66476007)(478600001)(5660300002)(66556008)(76116006)(316002)(91956017)(2906002)(4744005)(64756008)(41300700001)(110136005)(6506007)(71200400001)(6486002)(6512007)(66446008)(6636002)(38070700005)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bDlNbXN1S3NQNndiQ1BiMTM4aldtaWNiV3h2S1l0QkZmMlNkYTVvVXZIcU5u?=
 =?utf-8?B?dU5KUDVvQzBNT1Zrc080ODcxZDZmc3pOclJtTWMwV1FCV3VkTk1SOHd6MTQx?=
 =?utf-8?B?R3dIbWZOYmRzYWZQWFF0K2UwT2lrU3FVeWJUb1ZkRTlsTTZWWU5PQ0l2ZHhm?=
 =?utf-8?B?eVBNSDdvT0F4WnQrc0NLMEFDNkhRdWRPOEJBRTRvMEJLN3YvRVozaTQwTWZx?=
 =?utf-8?B?dEhSKzJXUjdCY3E1NUxrNnMyWGg0ODJpZ0JjNEJHUlBmc2hWSUY1VHY3aFFL?=
 =?utf-8?B?aXRhVTVISG9La0pyM1h2bFpWSjA2a2hQUFJrKy82VFhnWTJweWwyNnRWTWhk?=
 =?utf-8?B?Z1YyTmVsMWNzME5LVEhuS3phZXlKNVhHYzJsZ0tBbXI2a3loZmJWMDhtRkEw?=
 =?utf-8?B?c0treFNOWkRMRWJHOHQ1MW5KUDl2b0lURjJoZmJBVWIzNmIzQnZab3B3MEFH?=
 =?utf-8?B?VE83OXZzc0dTMU9qMnIra043RWpBR0Rra2dFQ0FxOHk3M2h6cDNTSjJ5QTlP?=
 =?utf-8?B?YVd4bnViSHp5WDRLQlUxUlVtU09CVGliZUFCTFFydENJRGcyZldIY0YrUXF3?=
 =?utf-8?B?VkxxSDNtdzV1UlNCWVp6ZWJ0MW0waXJVRldxZkRvUEtJWEp0azk2ZlhueHZ3?=
 =?utf-8?B?THpFaGxqMXRCZjUzdVZ0eEpXeXoyd1VRbmZhMitURHdTTzFWSiswakVNNmZa?=
 =?utf-8?B?RFFSZmkxSnlEam5YV2VubUFpY1grR3pVNkJwSVVhSUhvUVBSNUtJbkNKbWVB?=
 =?utf-8?B?ODBlNW81bzNvb0x4eEpQTVRXNnY1Q29rZ1ZGSnlLTWR2WjRtWnI1M05DRkpr?=
 =?utf-8?B?VE40bkl1ejhzdC8yTVo5eGh2QkZ2bVcvQndsbVNCV2tPVytwSXh3eERaUGJG?=
 =?utf-8?B?alMwNUhieUNtcUxTSjJ4ckVZaU9sWHhCL0thSFlVVlBqenlXNEcvSm9JTFc4?=
 =?utf-8?B?STQzNUxOTVRDOVZBak91K0xaRE4xYjVuOHhKT1pINjBNbXVYTEpmR0UyTHQ1?=
 =?utf-8?B?M0VPdjcrangzRHR0SW1qOWNpbFUzMUdJV2V1aXVLSW04aklxcDdqRWFETFcx?=
 =?utf-8?B?WW9hY0lBVW04TTZ5b21laThZeDhmaFZxRU1GT0FOUDZVZEk3VjcwQ0lYYTN2?=
 =?utf-8?B?U1ZoVE9iUUZQVmtqdk84bWpIaTFkczlsZGZmWXdBKzBHZFpIRU5mSmhPTWsz?=
 =?utf-8?B?bU5uU0tOTGVOR2xCNk4xMG9tUC9EMlJrRU5oc0lIS2hzd05WeHpPZW9Ta29k?=
 =?utf-8?B?WUxBaXRyMStteHl2RXN1MVR3UmdIT1o0YTVVRVRPSkNEVkxxNTRUSkNBL1Q5?=
 =?utf-8?B?TlRJK1ExOEZJUTVLT2pSOVd3ay84WGdyYVJMTDlFdkRwM1lob0ZRalRaWERr?=
 =?utf-8?B?cTEzdnJXdnBWUDhvclZ3TkxlRzg2WkI3NVFILzZUK0MwcjJDU1dEaC9PSEV1?=
 =?utf-8?B?VWNJWmhLdVRNNmJtYWVNUWZRS2hOaERhMlRIWm1neUw0NVkwcS9PejNUY08v?=
 =?utf-8?B?dnJjNjdDZ3BIZ3dOcTdBaFVWcVR1ZXEySlJFN2tRdCtGdCtxbHNKNndUSkU4?=
 =?utf-8?B?OGtFZXJWeENOYzROdGJmL1hFMWVDeHgrcnRZcEpXaDZESHM5K3J1dG1MKytp?=
 =?utf-8?B?M2lrOERIVTVzeXBhRkZ3S3JTSHZzblVGd2xNUUlsVzM3T21oYytSdXd6aElj?=
 =?utf-8?B?eFg3cFFJOVArNlhJYitTaVF4T3BWQUJjTko0VTBVQ28weE9JVjVlTjFSaTVL?=
 =?utf-8?B?V0VINE9XbnlnQ050WUZBY05OTEdFYU1vdDJNSFEyZytWU1FaZjhESHhybGxL?=
 =?utf-8?B?R0xlVFhVRTFXNU1wOEdnc094NzFGeERFeU1LTy9zQU9id3gyLzVuUHgxcW90?=
 =?utf-8?B?MHFsWWUvSXFYRHdjU0ZuNUZ6ek12WnJhVkxkT1JmMGxWZ1BuNERaOGFZNkdx?=
 =?utf-8?B?cjlsdlllQ2NtQk1TTktKZXViQU1lTW8zbXRFK1dqakVOR1BOckEzYXRqc1cz?=
 =?utf-8?B?Z0hPbFFOUHpBR0VkY3V6TGNLNTczdWlnODdxbmdEcUd1QWpOY012N0RHN0xa?=
 =?utf-8?B?blhCMHIvVlFDdCtJR2dwWS9pSEJ6NnFnZmIwdDIreFROZDVwNkNIMWpvQTc5?=
 =?utf-8?B?c3ZvSTJZc0EvMDhwNXh3NGpKOTdCSTVMVUtLaXNTQ2p3QjNTZG12QVdhVEkr?=
 =?utf-8?B?OVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9808C5481461194483A40BC07CE26562@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16eb8241-39ec-4533-da90-08dbca4a11f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2023 11:06:08.0809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zNxrlp7JdaPBYX6v1etCtQJ7ytzk0O5H4LRh0+gHCWz4FqgEaD1dwzT9bcWNOAl1EUfIeTFcSoVE+SSHEvTh+lH1sbbbDLXzyzbKivGJRPw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6964
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 0/3] scalable display feature
 configurations
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

T24gV2VkLCAyMDIzLTEwLTExIGF0IDA5OjQzICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFN1biwgMjAyMy0xMC0wMSBhdCAxNDozMSArMDMwMCwgVmlub2QgR292aW5kYXBpbGxh
aSB3cm90ZToNCj4gPiBHZXQgdGhlIHJlcG9ydGVkIGRldmljZSBjYXBhYmlsaXRpZXMgYW5kIHVw
ZGF0ZSBEU0MgYW5kIHNjYWxlcg0KPiA+IGZlYXR1cmUgc3VwcG9ydA0KPiA+IA0KPiA+IHYxOiB1
c2UgZGVmaW5lZCBmaWVsZCB2YWx1ZXMgaW5zdGVhZCBvZiBtYWdpYyBudW1iZXJzIChKYW5pIE5p
a3VsYSkNCj4gDQo+IEZvciB0aGUgd2hvbGUgc2V0Og0KPiANCj4gUmV2aWV3ZWQtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQpUaGVzZSBhcmUgbm93IG1l
cmdlZC4gVGhhbmsgeW91IGZvciBwYXRjaGVzLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQo+
IA0KPiA+IA0KPiA+IFZpbm9kIEdvdmluZGFwaWxsYWkgKDMpOg0KPiA+IMKgIGRybS9pOTE1L3hl
MmxwZDogZGlzcGxheSBjYXBhYmlsaXR5IHJlZ2lzdGVyIGRlZmluaXRpb25zDQo+ID4gwqAgZHJt
L2k5MTUveGUybHBkOiB1cGRhdGUgdGhlIGRzYyBmZWF0dXJlIGNhcGFiaWxpdHkNCj4gPiDCoCBk
cm0vaTkxNS94ZTJscGQ6IHVwZGF0ZSB0aGUgc2NhbGVyIGZlYXR1cmUgY2FwYWJpbGl0eQ0KPiA+
IA0KPiA+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmPC
oMKgIHwgMTUNCj4gPiArKysrKysrKysrKysrKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDcgKysr
KysrKw0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspDQo+ID4gDQo+IA0K
DQo=
