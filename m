Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD7172223A
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 11:31:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8606410E1C0;
	Mon,  5 Jun 2023 09:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA8C910E1C0
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 09:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685957498; x=1717493498;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=IZ0IzbG/hCu+SQxdeilzS30ws9Hz3FntwSTHpPsNTAM=;
 b=SHbpTlY1BcjtJ9OHzvHC5dbzW1pIb257YOM40xAIlJweZq9zQXm+AkQ2
 KOBlrJLge8Ia2iAbxkF/bPYArv9KluGi9sWflnAFus5vAo4708fCXXnfP
 JPj1qjdCKcvPgswH4KtGnMfkI9BleywVeR6++V3aAeTqVl8Up6syBj8Et
 1u7v7zOUf/UtwUtWmj7/Ucg2taSqF2DpS7MmvT+Z8d0xX3Ma2SYFtPd/+
 AqTum0Pys+dFmUKgFKbwgJ6znRJsjWVJKaXgX1dM7NzqWf1GiRi6FnWoE
 WZHL+VmGUpuZBgIujpAZg/fRL//ZcjLE+9RvWnjAUchELPWlvWITuYftp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="353819248"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="353819248"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:31:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="1038712520"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="1038712520"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 05 Jun 2023 02:31:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 02:31:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 02:31:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 02:31:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NVhFxQe1kU91sQEqjB2AyOBEtQDJls5UQs1ne+C4j418M8h6Kf7fU4OsZ24sxXkkcnjdPectwLozg4d4y5INsWK8v2m+Wt/ZMN9+Eg+CYN1iNLv7gD0sf20luEvvEUtvsRgFTS6oniqvxsLsUjSZyVOs/VDybuzmOYwBTQ6c8mP7OTHDUiU2q0A2uMu/tYcZ+feWTxAjyBpjAezY3ZnjNN2JiXuwswok52alu8w53CnkVhIMVB489/mYn9TraNE76fnVUgSj10tz/+TRFi75uNK0Z3JS5Dr/7+F7m6VghhwevIMY0H1qPHdRQs+A4E+XRvWVq6aFTSvjgGKukyXekQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IZ0IzbG/hCu+SQxdeilzS30ws9Hz3FntwSTHpPsNTAM=;
 b=fbMIxVUKDGVfEFKrolezlhH47n6uSG8qlM4vEwVwKrZa/k4yZ36sqmcwIBFtSsZLt3tCaNosmAzfc8lUjpFZxvzad6/+82cn3//EX34nz1kJr43SAaj7zUKAZ2+q+wMkhmaNfDU+PsR4tuwWHvRtrCCIAA/L29ACH4wWahB7otb84gtFa9AYoYPz3IpDWqeaxhwGVRQyOuWVJCwiznCOdO07KnCKkDPPFvtgOvmUkkEnAs5o/iO3wVS5d16GuuGuPo0hWq4EBWq/UiLxy4bUDT2EasRpMWLnHbOYy3H3RSLBX05oOZ167+UhFC3slNGzYZdMkRO4hXy1hRmYIYbPNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW5PR11MB5761.namprd11.prod.outlook.com (2603:10b6:303:195::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Mon, 5 Jun 2023 09:31:34 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%5]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 09:31:33 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "luca@coelho.fi" <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: Use 18 fast wake AUX sync len
Thread-Index: AQHZkt/nBfV12hlvc0W+oHluxqbE/K93NecAgATFXoA=
Date: Mon, 5 Jun 2023 09:31:32 +0000
Message-ID: <a1593e891c2dbb883e64d72d14f0ec2c86d8e269.camel@intel.com>
References: <20230530101649.2549949-1-jouni.hogander@intel.com>
 <0b56d0bdf0f49038548ae53a36d5af4d5c9cd8aa.camel@coelho.fi>
In-Reply-To: <0b56d0bdf0f49038548ae53a36d5af4d5c9cd8aa.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW5PR11MB5761:EE_
x-ms-office365-filtering-correlation-id: 7ce0cebb-6709-4830-1689-08db65a7a651
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GpfJ0Ib/UbOeEzv4gwkXetXbudNjGViGY2whoFmF3CuxOVxAT3sy/tSIrRbpI4xh4K8qLuatgqfxKLh2UAfREWiby/lck50cr7ckviU0uZalwjXGNTHNb9gcXhlyK6sgY7z7pRLYVxgoklAdvXsh+TgQhVT0h4J2qk7TcZaJrbkCyb50d5ZSSh2f8fzAlVJ9rhkztbuDMGPPrboTDnt350VSP+PCM3UBTsCj0YHYdKzLo1B1ljPdVuCgYWwbi0HcaLdSYFREmuLK+K+XYbWhxbWyFiC6FnaIlJhZBek7E4+dJPftP6sOkI/SGSpzkrotRGzv+G+xpfpMOA7/3T0RN2uQijS5okpNMOaghQ3UKq+G6K8PPg127ZjqZ0gduhkchBhv2AeNiXKB8qTxsG3k7wTD4zKvgC+NppAm0uA1O/EuqKClKaecg4m78zxR2AE6eIR+3NDuPMMn2sEObttQhbE1xdspznPjSwsWLCmERVAPaUSvjsyAsSiSldWzLRDpKYCA8ias7RqRf5tsgl5eAXkEk6t3WX3Gp5s3mKwZY1wGzPSashDJeUILfo3kMZ74y+SQC+RfIkoFSn94ZvCrVljNzQJDxNr+qfxm8iWlyCb8u7XO0dApNeD2LphiP5Zc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(346002)(376002)(39860400002)(451199021)(6512007)(6506007)(26005)(966005)(36756003)(66574015)(83380400001)(86362001)(38070700005)(122000001)(82960400001)(38100700002)(186003)(2616005)(41300700001)(110136005)(2906002)(478600001)(76116006)(66946007)(91956017)(66476007)(66556008)(66446008)(64756008)(8936002)(8676002)(316002)(5660300002)(6486002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MTJoMUdsRWZIVVBOY0Y3NEhnMHhUTjlWUloxUUVaM3hYRS9LWVJVeEgwVXhj?=
 =?utf-8?B?TE43ZzRLWGRrMzBNVzM5QVRXYnRwa3dXRmxvSGljQm5FUktLVkhWbUNDQ09a?=
 =?utf-8?B?TmdHNTBmL1Q1OHM5VGVaTWJybWE5ZXFpMTZsbGZTb3VRZ2FKTnpSRkcxcXBM?=
 =?utf-8?B?akVnSW1DM1FJUStpemkrZ0lSZS93eUNraXlxT2pRZlVFOHl3S1lWcVlidTE5?=
 =?utf-8?B?TWIrTUJsSXVoSTc0c0Z0RG9NZTZLYWU2S2lZckF2UktUNXpLd3Z6S1BIbEx2?=
 =?utf-8?B?Y2c0TU1HWllaMXdhM2p0MzA5dkhBaGl0a21wYVFSdWxLVDdaVzJoRi9xaHBO?=
 =?utf-8?B?UWRKNkhnQUtmdE1YdTljZVJiSTF2VnJOaFpKL21CLzhSeUR2bnRSWFBxOXcy?=
 =?utf-8?B?OXNLYjhCOGplQ3VKaGNWQXg2cGdaMStRTG9ORG0va3E4VEVjK3ZIajRLems2?=
 =?utf-8?B?cjZLTnhXandEVDlCM25sZFcwREdudzh4aXQvMDdvU3gveFpuOVc5MmY0QVQy?=
 =?utf-8?B?THVQTWdTcHVhUnlwb3V5bG05S0E3RmJXNXp1Z3h4MlVJUEtRdUgzblJPckdh?=
 =?utf-8?B?Q3V6TE0rcEZGd282K0ZkdGgrNHB0VW1kcC8xSU85REk4aFBZc1FSRU5pNC9B?=
 =?utf-8?B?bVMxS2tjTTdXNldZUHE2V0kyWHkyaVpmQXFNZWhUV1JOcTlRL3EyYWpoTXZU?=
 =?utf-8?B?a2J0bnpWNEQ5cFZhR0lOZlAwaVVGczlaSmFOalJNYmpvbXc1d2t5YjI1UXIw?=
 =?utf-8?B?OXJvbm4yY01vb2JMTG56dEFuWUNVNXh1ZHJRK0Mxbm9mdnprMGhjYkJ1OGhR?=
 =?utf-8?B?WWpuZEkrT2phNHdKa2lnTlkwUGJFelVyY1ZPTDlqbXlSa1daRzlLM20yR2J2?=
 =?utf-8?B?QnBXd0plNlYvcnFlWkV1ZDZrTHZqNElkWnBkZmFCQU5mTmg0bXhKZVlZWjZG?=
 =?utf-8?B?ekFNUG5qSng3U2VnUDlUbXhFc1p6L0lhMXY4NnJiaDNueTNFamkxa29SSHR5?=
 =?utf-8?B?ckR5VlBDOEY2clZRNFpsY1hzUHZzQkEzMDh2aGt3a0N1SEtHRkZUWG1NQ0Fj?=
 =?utf-8?B?QWdzQXVjbDNKaURQU0NNWVRtNHNseTNjQVlCOUlKZDVnajJpeTBQTmFJSFM5?=
 =?utf-8?B?NGJoVVpaWkVpQVlsUlV6Vml0NUN2Q0JoY2tEQnMzV0N3MUZLNzF5U21zQU9v?=
 =?utf-8?B?NDNGY05nejhNMWJ0c2U2cytpdnVCcjRESllSOVo2S0J2TFd3Y1A0NlB2QXVk?=
 =?utf-8?B?Z01YR0FHVmk4RXRxV1lrQ3FaUVoxdlFkUlIwOS9IUDZ4VDFLeEF0aW84RXk0?=
 =?utf-8?B?YWpSQUlLd01QMjJaUG9VUm1mY1MwSjBTU2ptYjRHRUI5eVRTeE9jSWVwUWk4?=
 =?utf-8?B?WTFESERBWFZBQ2hwSFJuSTlDQ25oVUhSUXpVRWh1eGR1U2poc1VXQlliMUow?=
 =?utf-8?B?KzNLSEZ0OEJqTCtKbUIzZWFNT2UrczVjbENFRmtFME4zOHU4Vi9NdGdSdStC?=
 =?utf-8?B?clRLZXQ2bVk3R3JHaTNuZWZhYmg1L2VGeVNWTWUwckVqMldybzY3U3NYY2Yx?=
 =?utf-8?B?THZVbTk4bjVrcE9IVEprRDJaODdhbk1ySkpqQm54elFxMjltZ3lqMTIrWldk?=
 =?utf-8?B?YldQczZBb0U0aWE5ME9PWmdldlQvSzNoTDhocS9QRm8ydVJpM0VSclF3WFNP?=
 =?utf-8?B?YjVOSUE1MFErZ0ZObGx2ZitWeS9VL2VXQnZ0bzNpOHlyQzdvNGUvL1Y3ajRW?=
 =?utf-8?B?d0pVMHdwdE5YZVFPaURhRVlMVzhpcHVaVzBKMStudGZ1M3RCVklYbWo5OFhY?=
 =?utf-8?B?eTR5M1l1Nld1T2lHRElsM1cxTnNGRXI1MDVSZnNFd01zejkvdVpCcHZsaEx0?=
 =?utf-8?B?QWptRlBqNldUYkdFckYyS2xTT0g2NlhFeTZkZWtHdEZ4TFlKUXhwZ1piN3N6?=
 =?utf-8?B?K3N3RHcvVjhJMW1vVVpzVXQwMkp1eVFBUytaQWc2d0F4OXlEUUk1QmhtVVNV?=
 =?utf-8?B?WnBOU2FyWVlqUmRvNHJ5K2FwTnRwN1h3UG9RQ2xxbHNvc0RVVDNmY3JvOVkr?=
 =?utf-8?B?dHpHK2V1RDVHMzNzYjZWeGhkRHVONmtPTGFsVkVyZTNMVyswaGRaTVp3T0RO?=
 =?utf-8?B?SXgyQ1I4VE9lUzdXb2xQQlhFcCtXN3RUemVjeDZZZWtrWXc4LzdkT1J5TGRT?=
 =?utf-8?B?Wmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1787AD0B61FA724095083ECEF10EC71D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ce0cebb-6709-4830-1689-08db65a7a651
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2023 09:31:32.6795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lh8PkYBc4DSsyZmV7zD1v2brcMsVTg2LYexwg18/HDipr9nsgfDNB0WOU++RnBMQlHO1o+bYQX1HcWmeTcGkX6Ogb2NwRHbuz4rHtavpZ80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5761
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Use 18 fast wake AUX sync len
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

T24gRnJpLCAyMDIzLTA2LTAyIGF0IDExOjQwICswMzAwLCBMdWNhIENvZWxobyB3cm90ZToNCj4g
T24gVHVlLCAyMDIzLTA1LTMwIGF0IDEzOjE2ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+ID4gSFcgZGVmYXVsdCBmb3Igd2FrZSBzeW5jIHB1bHNlcyBpcyAxOC4gMTAgcHJlY2FyZ2Ug
YW5kIDggcHJlYW1ibGUuDQo+ID4gVGhlcmUgaXMNCj4gDQo+IFNtYWxsIHR5cG86IHMvcHJlY2Fy
Z2UvcHJlY2hhcmdlLw0KPiANCj4gDQo+ID4gbm8gcmVhc29uIHRvIGNoYW5nZSB0aGlzIGVzcGVj
aWFsbHkgYXMgaXQgaXMgY2F1c2luZyBwcm9ibGVtcyB3aXRoDQo+ID4gY2VydGFpbg0KPiA+IGVE
UCBwYW5lbHMuDQo+ID4gDQo+ID4gdjM6IENoYW5nZSAiRml4ZXM6IiBjb21taXQNCj4gPiB2Mjog
UmVtb3ZlICJmYXN0IHdha2UiIHJlcGVhdCBmcm9tIHN1YmplY3QNCj4gPiANCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBG
aXhlczogZTFjNzFmOGY5MTgwICgiZHJtL2k5MTU6IEZpeCBmYXN0IHdha2UgQVVYIHN5bmMgbGVu
IikNCj4gPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwv
LS9pc3N1ZXMvODQ3NQ0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9hdXguYyB8IDIgKy0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+ID4gaW5kZXggMGMyN2RiOGFlNGYxLi4xOTdjNmU4
MWRiMTQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9hdXguYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfYXV4LmMNCj4gPiBAQCAtMTI5LDcgKzEyOSw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfYXV4
X3N5bmNfbGVuKHZvaWQpDQo+ID4gwqANCj4gPiDCoHN0YXRpYyBpbnQgaW50ZWxfZHBfYXV4X2Z3
X3N5bmNfbGVuKHZvaWQpDQo+ID4gwqB7DQo+ID4gLcKgwqDCoMKgwqDCoMKgaW50IHByZWNoYXJn
ZSA9IDE2OyAvKiAxMC0xNiAqLw0KPiA+ICvCoMKgwqDCoMKgwqDCoGludCBwcmVjaGFyZ2UgPSAx
MDsgLyogMTAtMTYgKi8NCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50IHByZWFtYmxlID0gODsNCj4g
PiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcHJlY2hhcmdlICsgcHJlYW1ibGU7DQo+
IA0KPiBJZiB0aGlzIHJlYWxseSBzb2x2ZXMgdGhlIHByb2JsZW0sIGFuZCBzaW5jZSB0aGUgY29t
bWVudCBjbGVhcmx5IHNheXMNCj4gdGhhdCB0aGUgcmFuZ2UgaXMgZnJvbSAxMCB0byAxNiwgaXQg
bG9va3MgZ29vZCB0byBtZS4NCj4gDQo+IFJldmlld2VkLWJ5OiBMdWNhIENvZWxobyA8bHVjaWFu
by5jb2VsaG9AaW50ZWwuY29tPg0KDQpUaGFuayB5b3UgTHVjYSBmb3IgdGhlIHJldmlldy4gVGhp
cyBpcyBub3cgcHVzaGVkIHdpdGggeW91ciByYiB0YWcgYW5kDQp0eXBvIG1lbnRpb25lZCBhYm92
ZSBmaXhlZC4NCg0KPiANCj4gLS0NCj4gQ2hlZXJzLA0KPiBMdWNhLg0KDQo=
