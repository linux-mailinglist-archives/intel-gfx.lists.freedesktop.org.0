Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A997817A07
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:48:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CEA810E3B3;
	Mon, 18 Dec 2023 18:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE8E210E394;
 Mon, 18 Dec 2023 18:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702925174; x=1734461174;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZJm5BN+KKSaUxcTosVFGjYpj6is+jdjL1HZHv1HW1+k=;
 b=hcroYioyvTcO3yLBJUSqDyef4AA2MyhQmUJleSRnHrHz7eWC3vZYAjO7
 o2+j/NSOO8/M3aPDETPP1THP+ZTvnuaLK7WtbRgqhMVnH+OHG44tWoHfE
 toTX/j/b7mBb3y6EEIzaFDQgmaO4VXlKUrAbiERMdt7p02Ys3OAsNNmmK
 IPXw3zGNiCwpmoo+wYcxpYf/UPed/QF5Yx0TRolhkpIardQthYpsaRd79
 i6zwuw5reJjQ2BZvkhz061+X22Ao/uu0sUcH5PLndmT8knuc4wb6faW1f
 CzBcygSTlz6s0NtbXXkExhKlB1OqAJosXCkNXp9/2MI59oIkVro7VUHsh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="2693623"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; 
   d="scan'208";a="2693623"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 02:35:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="841430407"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="841430407"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 02:35:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 02:35:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 02:35:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 02:35:29 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 02:35:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hfLMT8JDKBdoRVAEyBWoJnB26//mXBZHbwsIZz2yvwMj8Z0Zjyc6+G85x0+W4picaEY4Y57kEMQnZ4+AuQsXyhANDH6iDKBMnj/UbAkhkFNgAfFIz05Wm+x8Vl3ER+6Cu+h34nw5g7Ny8OV0MU1xg7rEYEWKoO0anZyaLckzSGDLsJrJTGw1YqcDezY2+kx2PZG1aGw9tyxY6scfPyCVvCf95/Anm9pBpBbw9GwnOF84TntyEzdk5agq/HpmiEsxgCE5KHHadSdvc5rccdBgbiyj3bNqU4asrM7/sWGx3NxQQ4BZD+IY1WN1j9xm6jXpCIQ4tuYYFQwV7iBDDypiMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZJm5BN+KKSaUxcTosVFGjYpj6is+jdjL1HZHv1HW1+k=;
 b=SEYGurrqKrcqWwbcb3hsWihje+r8lvfY1iU+Y82n58f/vQpnFaEDV/xh+vkWLjkWl5tmkSZiKvRgIs2j4Gbw0XEddbxUrZsh3Eh4VVLNEsMKwmU9CMKLuEIZQdHRVVJHmnegxnBMEkQvwqyyqhMTxII/hNtkGjHgFgjA8GSmn/Xtk67uuj7zIsJNQVlejbUm+SIGeh8ef/6LaBl8tCoKFrtRT8bL5WW+h9g1KW5/hz9gANHUH6amOLOL9s9C2m3QcxRURmumLK1LQStSgmR8QK8sst9zkWWTcbKdbQ0n7+d2Iz3as1QO/Bn5nRuqyNCJ47VFV/JWNNyzGVn30FAJGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SN7PR11MB7068.namprd11.prod.outlook.com (2603:10b6:806:29b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 10:35:24 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 10:35:24 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBDdXJz?=
 =?utf-8?Q?or_vblank_evasion?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEN1cnNvciB2?=
 =?utf-8?Q?blank_evasion?=
Thread-Index: AQHaLgiOFniAkE1kMU2V4tRlpzoce7Cu31rg
Date: Mon, 18 Dec 2023 10:35:24 +0000
Message-ID: <DM8PR11MB565510ABB7B4F9C3ED54A053E090A@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <170250169138.10264.10617046881352336732@emeril.freedesktop.org>
In-Reply-To: <170250169138.10264.10617046881352336732@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SN7PR11MB7068:EE_
x-ms-office365-filtering-correlation-id: 412b38ed-0704-4b2b-d046-08dbffb50b64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BPMkSsfnndMTi7jK/mdCWzDYtnZGTpkYOyggl+YvJOjB2H45DKES40omhmloSebS8hX1Zq1mVVh7La6x0HUSAtGGtE1gCo6x5hW9/dhN90TDIpORBv4zu5Xc5lNwJ1fF80Vax6kMsjtJIe3Ws58w8bOAMuu+2iUYZ9mShYjFLQjUEnLeYr6mUQBiqxwAiaafh2pUta3ykApfAH3X8CznL0TYs6yPH1Pq1JjBL5LabbO3O/Z+kUfI3YQ7xlyvo/wnGFPTXuOzDvwjwaJt6Z61U5Rcjv9O2/+OxKVD3LhOsWsM8r/0Pgu/B59tBteGK5j0FMuaSL96nv1nRhbQfwHWNPeidNEbeveiXknZGTufIDg/Zd211wSFXUSR/chdiC1ld2Pvycq3GdV5FYBGkeh5OeMsqgA5QhQWOOM4NE7kmJE6EPlLTexNjeGIZPsvr5AsiSi0rqKwb+tW437EV1x4HA7qEFvOdc5vYAGrbn9cg489g0w8aX5zXBKRQ6y//svraxcSJpPkEYAuNAKXi5/3sJxthkbjwCvm2A13XeJ5/2ujClPU8jVsVlMUT4EVIrlnaJXt5om2epI/OgajjpfPwbJFGl+/TjQrBYANnKVkg/C9CFqpw5GMh8M2u++QCFz6TxBOd/kqSdxO803P/yHWtA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(396003)(366004)(346002)(230273577357003)(230922051799003)(230173577357003)(1800799012)(64100799003)(186009)(451199024)(966005)(66476007)(66446008)(84970400001)(55016003)(52536014)(8936002)(66556008)(316002)(66946007)(76116006)(110136005)(64756008)(41300700001)(122000001)(83380400001)(38100700002)(26005)(5660300002)(86362001)(33656002)(6506007)(7696005)(53546011)(71200400001)(2906002)(82960400001)(478600001)(9686003)(66574015)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T1RudGVXancyWTRlMDlyVnEyUXdvWFVqK2JWT01lMzJ5OTRwNXF5dWtJWGlo?=
 =?utf-8?B?dmZVcFNCK1FxeFRML2lHZnVXMDNiRER6K2c0Q0N5WnY5bUpLaVlxWjlEVlNl?=
 =?utf-8?B?cGdEbjVsbWp3aGh5RkFJZHVLelUrTEJPMWkyTWsrcGxjMCtEaW9UTDdLTjRY?=
 =?utf-8?B?ckdwREdhZU5HOGh1a3VGODFoTDZRb2NzMkNlaTJSOVhFclZ4ejVyNWdUTEl4?=
 =?utf-8?B?ejZSN1A2cDF5c1d4aVIrN3NSS1NPTVArWGd4YnBodjRYSnNVVjkwMU9nMFVv?=
 =?utf-8?B?dTkvSU1xZTA1VUpRVnlyY0ZKWjVUU2RXQWlNSWlGUUlmY0V4Y25WZHJLK2Fr?=
 =?utf-8?B?a0JrbHlaTTdwRjNRRi9CWWt3ZGMyYmp4WGpXQWNYSlBpbDdvZUU1b0pMODl6?=
 =?utf-8?B?NVVKc2RFK0VRaDJLMFZlK25BMjFtUkk5VWZSd3hCdU93R3RYU1l5ZWM0elVD?=
 =?utf-8?B?MkhSY29aOTlzRk1TYVUzY1ZmTlQvTUl6UzBpalNPRWdXMGRVbkg0VEw2NUVD?=
 =?utf-8?B?WVdDbnFwcWpnOVczTmozRXpSQ001MVk4UFR6N01BS0wyRnNvQ0hReEFGNGJQ?=
 =?utf-8?B?WE0xbmYxbGtSU2svYnlDTkxSZjNhMzkrRXpZUmFrZ0FEWWRHZ093UEx1RjV2?=
 =?utf-8?B?clJFWlgwdEw3Q0hLVVg0dGNOTmhuNEdHNEc0LzN1d0E0bGhnc21VYm9BMHNP?=
 =?utf-8?B?a2NuRDU5bi9PVTdqTU9IbkFoUUI5cW12RkFFRkV1RE9GT1E4U2Rrc1RQbzdH?=
 =?utf-8?B?a0tvcmc5QlppcFRmdFlMQmhlT0ZjNmZsNlhIajZZK1d6eGhnNUVxVUt2NjlM?=
 =?utf-8?B?NzVQWnlaem5XdXZUT1BoTmxSTDE2UEZNVVBYWnN4RE91WUpCUFZYRVRJc29q?=
 =?utf-8?B?N1dwZXZnQ3FlOS90RGxNSHUxaEgrbUhKTWV6NDhqSzlVVFQxQjI2SEkzWC90?=
 =?utf-8?B?RysrRDkxeW5YYXBTUUlTa3lFMnpJUEgrYTc0MThrb0MySlBNQTA1MTFiaTVo?=
 =?utf-8?B?cGdJZE92bGpZZmFCeExsaGpDVkZhOElsQWtLMWtpR1ZHVkx0OHlDSWplekJF?=
 =?utf-8?B?N25CdTU0eVAwcEM0M01ZTUdNWnc0NU9jb2dBRHRVempEUTJ6ZklkZ3dHNEtr?=
 =?utf-8?B?aGN5YVJtUVdaMU81VlpBdmJJS05aT3FjeXFVblprYjk0cGVSZWR6WW1JL0Fh?=
 =?utf-8?B?OXBiRmJwdFRyMWxtTDFGOUhSbUU0Z1lLSVQ0QmViL3A5dXJkMnprMWx5cmpw?=
 =?utf-8?B?YUVYckVoNW9Ya0lCTTlGWlBHeHE3OGJtNDdFV3djS3RyalRYSHhhb2YwckRI?=
 =?utf-8?B?d3laeThweGQzcE8rRm51cDF1Mk9LdnZuT0NFT0JZWFpoM1ZiL2gxWnJSa0V6?=
 =?utf-8?B?UEtOMEtmOE9ablBNcWlrWWJpUVZiZzdBVHBnV2RJVlFtR0pReTRwRzdIL1Vr?=
 =?utf-8?B?WlhOM21XckovMzRyb2kzZkxmSWd2dExTVVBGYTJHMkpkR3dkak1mRDdEcG5M?=
 =?utf-8?B?S2hXTm8zcmM4ekxoOWpyZHM4dUVDL0VJNmtWWlZ2RzczWHZLR2EwOTF4Q2Nk?=
 =?utf-8?B?MW1kaDhiOExHdGRMSFpnbjVSc1U1MmY2RDNHbU4xdmhwTkZDU3JjZU03OE9p?=
 =?utf-8?B?di9kclREMmx5K1hQd0lrVTU0WFVrZjRYQnFRNXgxMlhWODI3WjI4bHpvRUsx?=
 =?utf-8?B?UXNUTGVYeXFHb3hGbmM0NUpHeksyRFZsYUk1TmpQNmtvVG56eEFkUE1zeGVI?=
 =?utf-8?B?TGNKaGFBWHBmL0wzbm96LzdkczlLYzQvZ3ZOWExDaVpEckE3SndWL2J0UlY1?=
 =?utf-8?B?TkN1NnEzWXExWVEzVE5HdTVjSS82TUJSekxpNUV2ZjF2bkgyTFJnZ3QwOVhL?=
 =?utf-8?B?OVcyR0RoNUpkR2d1R3FtRFVWYnRiaGlsZE8weEdMd1ozZGNDTVdFMDhwWWdE?=
 =?utf-8?B?NmpMTDRmeE5FajNHUjdqVVJvOGx6ci9GSTBNejhLUGJmaXBxR1YyNUhMdkNH?=
 =?utf-8?B?alFhbmlLZ25ES05MTEZ3VnhXb1N2VHBxbnJERFUzcXJHSWNvdVBBOW4vdnB4?=
 =?utf-8?B?SlVzWmdvTlE2MmhKVzdFQkx0U2Fxb1Y0M25EK2Z6ZnAyeEozbllyb3hXbXNw?=
 =?utf-8?Q?xnEhiDvM3htVMR54JRPEy0KFx?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 412b38ed-0704-4b2b-d046-08dbffb50b64
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 10:35:24.7764 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k31sBi/PgMGY9RmEV2B1eGw90k1QUv2zuFM6zFw9GbKR417LCEJ2WREq95F8+RkRen27BUuMVW4GqSZQaFl9vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7068
X-OriginatorOrg: intel.com
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

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFBhdGNo
d29yaw0KPiBTZW50OiBXZWRuZXNkYXksIERlY2VtYmVyIDEzLCAyMDIzIDExOjA4IFBNDQo+IFRv
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBDYzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiDinJcgRmkuQ0kuQkFU
OiBmYWlsdXJlIGZvciBkcm0vaTkxNTogQ3Vyc29yIHZibGFuayBldmFzaW9uDQo+IA0KPiBQYXRj
aCBEZXRhaWxzDQo+IFNlcmllczoJZHJtL2k5MTU6IEN1cnNvciB2YmxhbmsgZXZhc2lvbg0KPiBV
Ukw6CWh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTI3NzQ0Lw0KPiBT
dGF0ZToJZmFpbHVyZQ0KPiBEZXRhaWxzOglodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xMjc3NDR2MS9pbmRleC5odG1sDQo+IA0KPiBDSSBCdWcgTG9n
IC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xNDAxNyAtPiBQYXRjaHdvcmtfMTI3NzQ0djENCj4gDQo+
IA0KPiBTdW1tYXJ5DQo+IA0KPiANCj4gRkFJTFVSRQ0KPiANCj4gU2VyaW91cyB1bmtub3duIGNo
YW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzEyNzc0NHYxIGFic29sdXRlbHkgbmVlZCB0byBi
ZQ0KPiB2ZXJpZmllZCBtYW51YWxseS4NCj4gDQo+IElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQg
Y2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcyBpbnRyb2R1Y2VkIGlu
DQo+IFBhdGNod29ya18xMjc3NDR2MSwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIChJOTE1
LWNpLQ0KPiBpbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93IHRoZW0gdG8gZG9j
dW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLA0KPiB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBw
b3NpdGl2ZXMgaW4gQ0kuDQo+IA0KPiBFeHRlcm5hbCBVUkw6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xMjc3NDR2MS9pbmRleC5odG1sDQo+
IA0KPiANCj4gUGFydGljaXBhdGluZyBob3N0cyAoMzcgLT4gMzcpDQo+IA0KPiANCj4gQWRkaXRp
b25hbCAoMSk6IGJhdC1ycGxzLTINCj4gTWlzc2luZyAoMSk6IGZpLXNuYi0yNTIwbQ0KPiANCj4g
DQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4gDQo+IA0KPiBIZXJlIGFyZSB0aGUgdW5rbm93biBj
aGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluDQo+IFBhdGNod29ya18xMjc3
NDR2MToNCj4gDQo+IA0KPiBJR1QgY2hhbmdlcw0KPiANCj4gDQo+IFBvc3NpYmxlIHJlZ3Jlc3Np
b25zDQo+IA0KPiANCj4gKglpZ3RAa21zX3BtX3JwbUBiYXNpYy1ydGU6DQo+IA0KPiAJKgliYXQt
cnBscy0yOiBOT1RSVU4gLT4gQUJPUlQgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMjc3NDR2MS9iYXQtcnBscy0yL2lndEBrbXNfcG1fcnBt
QGJhc2ljLQ0KPiBydGUuaHRtbD4NClVucmVsYXRlZC4gUGxlYXNlIHJlLXJlcG9ydCANCj4gDQo+
IA0KPiBLbm93biBpc3N1ZXMNCj4gDQo+IA0KPiBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBp
biBQYXRjaHdvcmtfMTI3NzQ0djEgdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOg0KPiANCj4g
DQo+IENJIGNoYW5nZXMNCj4gDQo+IA0KPiBJc3N1ZXMgaGl0DQo+IA0KPiANCj4gKglib290Og0K
PiANCj4gCSoJYmF0LWpzbC0xOiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTQwMTcvYmF0LWpzbC0xL2Jvb3QuaHRtbD4gIC0+IEZBSUwg
PGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
Mjc3NDR2MS9iYXQtanNsLTEvYm9vdC5odG1sPiAgKGk5MTUjODI5Mw0KPiA8aHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvODI5Mz4gKQ0KPiANCj4gDQo+IElH
VCBjaGFuZ2VzDQo+IA0KPiANCj4gSXNzdWVzIGhpdA0KPiANCj4gDQo+ICoJaWd0QGRlYnVnZnNf
dGVzdEBiYXNpYy1od21vbjoNCj4gDQo+IAkqCWJhdC1ycGxzLTI6IE5PVFJVTiAtPiBTS0lQIDxo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTI3
NzQ0djEvYmF0LXJwbHMtMi9pZ3RAZGVidWdmc190ZXN0QGJhc2ljLWh3bW9uLmh0bWw+DQo+IChp
OTE1IzkzMTggPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVz
LzkzMTg+ICkNCj4gDQo+ICoJaWd0QGdlbV90aWxlZF9wcmVhZF9iYXNpYzoNCj4gDQo+IAkqCWJh
dC1ycGxzLTI6IE5PVFJVTiAtPiBTS0lQIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvYmF0LXJwbHMtMi9pZ3RAZ2VtX3RpbGVk
X3ByZWFkX2Jhc2ljLmh0bWw+ICAoaTkxNSMzMjgyDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8zMjgyPiApDQo+IA0KPiAqCWlndEBrbXNfY3Vyc29y
X2xlZ2FjeUBiYXNpYy1idXN5LWZsaXAtYmVmb3JlLWN1cnNvci1sZWdhY3k6DQo+IA0KPiAJKgli
YXQtcnBscy0yOiBOT1RSVU4gLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzEyNzc0NHYxL2JhdC1ycGxzLTIvaWd0QGttc19jdXJz
b3JfbGVnYWN5QGJhc2ljLWJ1c3ktZmxpcC0NCj4gYmVmb3JlLWN1cnNvci1sZWdhY3kuaHRtbD4g
IChpOTE1IzQxMDMNCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwv
aXNzdWVzLzQxMDM+ICkgKzEgb3RoZXIgdGVzdCBza2lwDQo+IA0KPiAqCWlndEBrbXNfZHNjQGRz
Yy1iYXNpYzoNCj4gDQo+IAkqCWJhdC1ycGxzLTI6IE5PVFJVTiAtPiBTS0lQIDxodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvYmF0
LXJwbHMtMi9pZ3RAa21zX2RzY0Bkc2MtYmFzaWMuaHRtbD4gIChpOTE1IzM1NTUNCj4gPGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzM1NTU+ICAvIGk5MTUj
Mzg0MA0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMv
Mzg0MD4gKQ0KPiANCj4gKglpZ3RAa21zX2ZvcmNlX2Nvbm5lY3Rvcl9iYXNpY0Bmb3JjZS1sb2Fk
LWRldGVjdDoNCj4gDQo+IAkqCWJhdC1ycGxzLTI6IE5PVFJVTiAtPiBTS0lQIDxodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvYmF0
LXJwbHMtMi9pZ3RAa21zX2ZvcmNlX2Nvbm5lY3Rvcl9iYXNpY0Bmb3JjZS1sb2FkLQ0KPiBkZXRl
Y3QuaHRtbD4gIChmZG8jMTA5Mjg1DQo+IDxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMDkyODU+ICkNCj4gDQo+ICoJaWd0QGttc19waXBlX2NyY19iYXNpY0By
ZWFkLWNyYy1mcmFtZS1zZXF1ZW5jZUBwaXBlLWQtZWRwLTE6DQo+IA0KPiAJKgliYXQtcnBscC0x
OiBQQVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9E
Uk1fMTQwMTcvYmF0LXJwbHAtMS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJlYWQtY3JjLWZyYW1l
LQ0KPiBzZXF1ZW5jZUBwaXBlLWQtZWRwLTEuaHRtbD4gIC0+IEFCT1JUIDxodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvYmF0LXJw
bHAtMS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJlYWQtY3JjLWZyYW1lLQ0KPiBzZXF1ZW5jZUBw
aXBlLWQtZWRwLTEuaHRtbD4gIChpOTE1Izg2NjgNCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzg2Njg+ICkNCj4gDQo+ICoJaWd0QGttc19wbV9iYWNr
bGlnaHRAYmFzaWMtYnJpZ2h0bmVzczoNCj4gDQo+IAkqCWJhdC1ycGxzLTI6IE5PVFJVTiAtPiBT
S0lQIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdv
cmtfMTI3NzQ0djEvYmF0LXJwbHMtMi9pZ3RAa21zX3BtX2JhY2tsaWdodEBiYXNpYy0NCj4gYnJp
Z2h0bmVzcy5odG1sPiAgKGk5MTUjNTM1NA0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pbnRlbC9pc3N1ZXMvNTM1ND4gKQ0KPiANCj4ge25hbWV9OiBUaGlzIGVsZW1lbnQg
aXMgc3VwcHJlc3NlZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4gY29tcHV0aW5nDQo+
IHRoZSBzdGF0dXMgb2YgdGhlIGRpZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxV
UkUpLg0KPiANCj4gDQo+IEJ1aWxkIGNoYW5nZXMNCj4gDQo+IA0KPiAqCUxpbnV4OiBDSV9EUk1f
MTQwMTcgLT4gUGF0Y2h3b3JrXzEyNzc0NHYxDQo+IA0KPiBDSS0yMDE5MDUyOTogMjAxOTA1MjkN
Cj4gQ0lfRFJNXzE0MDE3OiA1OGFjNGZmYzc1YjYyZTYwMDdlODVhZTY3Nzc4MjBlNzdjMTEzYjAx
IEANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+IElHVF83
NjM5OiAxOGFmYzA5ZTM2MmI2MDVhM2M4OGMwMDAzMzE3MDhmMTA1ZDJjMjNhIEANCj4gaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiBQYXRjaHdv
cmtfMTI3NzQ0djE6IDU4YWM0ZmZjNzViNjJlNjAwN2U4NWFlNjc3NzgyMGU3N2MxMTNiMDEgQA0K
PiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gDQo+IA0KPiBM
aW51eCBjb21taXRzDQo+IA0KPiANCj4gZTFjMjc3ZjlhZTU1IFJldmVydCAiZHJtL2k5MTUveGUy
bHBkOiBUcmVhdCBjdXJzb3IgcGxhbmUgYXMgcmVndWxhciBwbGFuZSBmb3IgRERCDQo+IGFsbG9j
YXRpb24iDQo+IGI3MjY3NWMyOGIwNSBkcm0vaTkxNTogUGVyZm9ybSB2YmxhbmsgZXZhc2lvbiBh
cm91bmQgbGVnYWN5IGN1cnNvciB1cGRhdGVzDQo+IDNhYWY4MGI1OTMzNCBkcm0vaTkxNTogTW92
ZSBpbnRlbF92YmxhbmtfZXZhZGUoKSAmIGNvLiBpbnRvIGludGVsX3ZibGFuay5jDQo+IDFmMTgz
ZmUwOTJiNiBkcm0vaTkxNTogTW92ZSB0aGUgbWluL21heCBzY2FubGluZSBzYW5pdHkgY2hlY2sg
aW50bw0KPiBpbnRlbF92YmxhbmtfZXZhZGUoKQ0KPiAyYWY1ZDBiZGNjMzQgZHJtL2k5MTU6IEV4
dHJhY3QgaW50ZWxfdmJsYW5rX2V2YWRlKCkNCj4gZmE1ODNmOTAzMmVmIGRybS9pOTE1OiBJbmNs
dWRlIG5lZWRfdmx2X2RzaV93YSBpbiBpbnRlbF92YmxhbmtfZXZhZGVfY3R4DQo+IDIzNTc3MGU4
YWIzYSBkcm0vaTkxNTogSW50cm9kdWNlIHN0cnVjdCBpbnRlbF92YmxhbmtfZXZhZGVfY3R4DQo+
IDc0ZGViNzYyNDE3NSBkcm0vaTkxNTogUmVvcmRlciBkcm1fdmJsYW5rX3B1dCgpIHZzLiBuZWVk
X3Zsdl9kc2lfd2ENCj4gYjI4NTllMmQ1NzE0IGRybS9pOTE1OiBEZWNvdXBsZSBpbnRlbF9jcnRj
X3ZibGFua19ldmFkZV9zY2FubGluZXMoKSBmcm9tIGF0b21pYw0KPiBjb21taXRzDQoNCg==
