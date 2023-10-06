Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC687BB7AB
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 14:31:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64E1610E4DD;
	Fri,  6 Oct 2023 12:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1AE310E4DB
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 12:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696595496; x=1728131496;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zaefIlMbFSmGKEyiEyPiGV97MfhEn9ALAeRNcGqBUpo=;
 b=jyO/x6I/8Gh09KneYkGDcd1V+NYd81YrgwFexyMGJmFbNJP2GWMpEDCD
 LGvbBAlIMoPD3tCVK2EFhnTNn1IYK5ip8PZHxHbJU+rRBiyjNF+Lv0a5r
 qcmO9Vm5ISo3T9AGa/lhqpBzD9ujjpPvUtUNdaP5ZlHefA+u4JGqJG7lh
 U/8IieQppeO+/Xaab5f4P9xM2QMyNAloYX0TrtFDF2emr9mXyXcPPDdoE
 dJp4D6DE8SfXts14fJgEO9KBLK5Rlw4VusGGNiIxjcXVBUTCAnsWsowwG
 JVrphD7clvcmtsPNrjGwCq9f1Zoho+hEg3tQGum6Rptw9R8QCTpDTdFMj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="387620156"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="387620156"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 05:31:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="895866807"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="895866807"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 05:30:04 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 05:31:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 05:31:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 05:31:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H2qLkCOpoxEmiKjj6LzITtn9ZB4utTZ0gqD/dxt+Tdp1Z47ho6UQfr5zFOjaNYiImsLpl+SZfnud7E9IXb95SUY0PjwGoG6U2J+/Z4mdDtqgb6/rY9AQ4CKt8XMeOcHFSBE6qygD15Y0qXwobVupLdr135wWG5Qw1OAkWUIACeNA1uWC4p1A/6JQVdujHkZBOa/DPFDF3Zplrl9ltyTtLK6TgXvrEzqGELNG4lTCviGgEsXdGH1irfzdYMiM9bRVSfBCFlqtuoRBD9hcINQPlLe5sowzSj0GvmZYk1A4U7dcEu9Mt+pAPP+lV3Aiu+QQ9uyX17azJHzxA71v09TSPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zaefIlMbFSmGKEyiEyPiGV97MfhEn9ALAeRNcGqBUpo=;
 b=Ov3+XXjZHDLkSZIHC+GrOzE/pM8U8Gv/0s74ATdTMKo8xrQ3qCqdd/kFy/81uR8iNbCH5zSjaoPZ3EP1TRh7STuYAZOMn83HKuyyLEcb5Yghd/ylLGu/8cAOecpQHe0TagklpEjGRp7KaVOaVKZ8t24t3CTo8R8lnZ5ia/3bo+0NXunV5rtYnInFKrmsopnbUFNPHRA6jxrkaaF8qwYoLbURpV4vEzO0igE35LOAhZF8FT8iI6y+rUUwtF8V2ehd0w9lL/aCkPG7fX11SJwJ5g2gdxV0qeE+TtMgZrXooHuExSfmY6c5wf/ySwfsrH0UvnuTi5pUNsjpMrGGNhdDUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 by PH7PR11MB5766.namprd11.prod.outlook.com (2603:10b6:510:130::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.39; Fri, 6 Oct
 2023 12:31:33 +0000
Received: from SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::97a1:1c1:c0e1:ee42]) by SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::97a1:1c1:c0e1:ee42%4]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 12:31:32 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after
 each read/write operation
Thread-Index: AQHZ9q3pfAfY5aw3hUqs4kawTievoLA5ltuAgAEtbaCAAItfAIAAB42AgAAIU4CAAO/5MIAAW5eAgAABKSA=
Date: Fri, 6 Oct 2023 12:31:32 +0000
Message-ID: <SN7PR11MB7041435DFEB501AAC563F759EFC9A@SN7PR11MB7041.namprd11.prod.outlook.com>
References: <20231004102504.497023-1-mika.kahola@intel.com>
 <ZR1g2e+gfdeJHad9@intel.com>
 <MW4PR11MB7054CF26F52F649E6D147CF0EFCAA@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZR7Snm5Fnt9hOFEl@intel.com>
 <169652043551.1601.10514040093231401136@gjsousa-mobl2>
 <ZR7f7zs+ZvcQYfc7@intel.com>
 <SN7PR11MB70414488B8785812D9D0EFC7EFC9A@SN7PR11MB7041.namprd11.prod.outlook.com>
 <169659342554.3173.6200793801430972625@gjsousa-mobl2>
In-Reply-To: <169659342554.3173.6200793801430972625@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7041:EE_|PH7PR11MB5766:EE_
x-ms-office365-filtering-correlation-id: 2e061df8-6de2-4605-bd13-08dbc6682c1c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EqJWPYmoXO4pjyoc1W/Z6IeWpvQotIGNAMl2CNelKjSTc7CwvY4JclnhlQplegOq5oqgXQttH/xzwWxYcrFnhvIfG2D9NrPz4gx/CqaXr86us4Lm9MroPW2Pvmqzzf5TwXR+czBOT/k0uXnTFlAmU45dUiUXn8nO/zir2iJ8xxJya7AkteygCA5HfXkOfnyvJs1anZh7M5NecgciTWUJZTznoL26m+ne3ObaodBRN0tLtm5OcAi7r8QFoPgfVaZ+SQP/+/nb9E2rFrN6s9ejx2gB+WzEO1+3O9EP/HvYjIzUaETt+yjVUWddQQiNbRSLPA+GH9Z1H3+z+ZDFr54yqLTiF62dHaZKMpSaFPrNFwHYj1UXx45N4FGHm66kknIh6IM/8xa0oK38hRTQhuCQ+FhmNjICjO3af6Mjdyk5lXCpR/ivxSYqVuoTbgA1vuN8mROSQE2Cxtgg5gwQwW/H6DOIWcLgfbNe8BT6/2tmuX+lEFVFlB6+PTAXK27cU/92WSqld8eSH4KHZseZNcSwkbDfv3ELJaNR5Gk+XaMVtX+Mk7jL0dYY2scJ7YjlxHFENwouwcMm5H6rF6a6qL314aDC/GKp7PgiLlM6FuOocjck8RVloYs2wTF46B0pU4ynKEM+155cfrddMpm4kgCc8w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7041.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(376002)(136003)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(55016003)(7696005)(6506007)(71200400001)(53546011)(478600001)(38100700002)(86362001)(38070700005)(33656002)(82960400001)(122000001)(15650500001)(2906002)(316002)(41300700001)(83380400001)(26005)(9686003)(66946007)(66556008)(66476007)(66446008)(64756008)(5660300002)(6636002)(76116006)(110136005)(4326008)(8936002)(8676002)(52536014)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OGFvM0o2U1BxVjNrVndBRXV3WEpZaTV2MGJVMTJucUlOa1Iyd0Yvd0ZPelVV?=
 =?utf-8?B?YVVxTHdmY012T29zN0R4Y0lhc1VmWUdMamRlSDV6bkVPb0pNWlg3ZmV1OTlm?=
 =?utf-8?B?SXVjMWR1T25NV2daVmJiOWdJRjg2eFpQQ01NcTJhdVAzK1hWVEhrcEVSQWRQ?=
 =?utf-8?B?czBsWk8xdVFJY0c3OXA4WmhkMlRPUHd2TkFIcVpHT0ZURWVqdEFoZ21IV0Nz?=
 =?utf-8?B?eStuclpJa015dytZQXZNL29NNmhGbHUyMXRJV01wMUMzckVTSHo5d0k3dWJB?=
 =?utf-8?B?S1llK1Q4Q1g1UVoyQVlNeW5Jcms4ZWNXcDdQcER3MHJhQ1hMSHlpd1hGUUM4?=
 =?utf-8?B?YU5RbGJ4RXU1MzE2RCtZVXJQSG9VOXpLRVIwMzM5c2p0aG9UaHd6TmltWXdr?=
 =?utf-8?B?SVNCM0lYenljRW45Z2VNZGpjRDNQY2pqa2JHVklkcEJVZHlDMGt5eXMvNEhi?=
 =?utf-8?B?c0xnUlhPUjdUU3Q3QnpaMDczY3V2a3MvQ1AzM3dBQVA0b1V2cVNEQXZHa3hZ?=
 =?utf-8?B?U2R5MUZGb21kK2k1LzNWUHVJZk1LK2tTREMxTVJDWlBmS2tyMjRRVjZseFRE?=
 =?utf-8?B?d29FK1o3eTNrN1VmZTZKcThmMVZVVWdpa0pzMU45ajJzWFVrTDM3aTEvN1N5?=
 =?utf-8?B?KzRGQ2M1VmRGQjJJUUp4QmlCVlM5Q2xoME5CemtLWG03NzlYRm8zS2RqUHBQ?=
 =?utf-8?B?MVRoODcyWWZTd1QvQzVQOEdQRzZRVUNJKzFUMWtLRjZmQ1JtYkVSUDdRakwy?=
 =?utf-8?B?WkphQzNLRmlHcjU0cG5SZWpKSUFla1dNNUw3a0Y0bVNaZkpvYW1RckVncDUw?=
 =?utf-8?B?MTNLNHZ2eDFSOXJsQ3lWSkRBOG9IVGY3M2lGSkREYm9pQ1BmMkQ4dnhPcy9U?=
 =?utf-8?B?aEN3T1JlRDYxSm9QNUF5QUl0OS91TU0yL1V6QWZzM3A0VDdoN1NkM1k2STdY?=
 =?utf-8?B?YVRBcmVhNFU0aVh0UXdzS05UWmZTcVZKUlBPRUR4Tkg0WDh1UVhHaisxZFYx?=
 =?utf-8?B?bEgxaGc1cnFIM1lacXYrdjIycGw1djAzcjVJZUNNNkhUR2xPczhUNVp6WFR1?=
 =?utf-8?B?bUJzQXd4VmV5V2w2SFNUeCtBS3ppbG1YTVJ5SmJWaEhSRjZQZHFkNXJ1ajlD?=
 =?utf-8?B?R1U5Vmt2bFpYcWhLZm9aSE5lOThGaFViT2N4YXk5eWgwaFhNQjIwd1BZYnJG?=
 =?utf-8?B?MTNWVlVNS2ZJTXdGQkEyODVXZXJmQkFHc0lBaGZRZDVhWmFHMzhMczl2eVpX?=
 =?utf-8?B?Z2RLaDlmWUpBVWJEc2lwOEZlRC9oem40ZEVzRWdzcUFhKzloVUswbHh5NGxU?=
 =?utf-8?B?aFNUZzhLcHRZQkhYT1Jad1R6UHVrbzg4eFRGTThQSW04K2F1ZE0wQjY5bDEw?=
 =?utf-8?B?YmhRM3dmbTRrN1Z1VUJia3ZnVEF3dTNzaFdZLzBNclo5T2ZMZTZWZnVzdm5t?=
 =?utf-8?B?MFhGdzJSa1I3NnUyK091Ny9xazlSc1dIekpFSW42Y1dIS1lUdGZ1ejk2WUs5?=
 =?utf-8?B?UTZlRFRZcHFyS3Q0WnNDKzFwY1Q3cmNPV3ZwOFB5TkxPejIrcGM3VE0zQWJ1?=
 =?utf-8?B?S2s1RjB2SzN2T2lTTXJOd213cTFIdE9WUWI4ZWQwUVFMQXdDSDQzTW1RTzkr?=
 =?utf-8?B?aS83WUJDcFZnTmVUZUQ5Yk9zdGdjemxrb284TTF1akY3V01JeXVXNHUyM1BU?=
 =?utf-8?B?UldvOTNOTzlrL1hDQlhGYWlKaStKd1hzZU55aGNjejFienI3czhhUHFGN0Ra?=
 =?utf-8?B?SzBFZUdQVnlBMnZURjZkQStLYWRtZVhrVERiRU14c3N3eWJpbjFKVVQ5RjJW?=
 =?utf-8?B?WnIxR1Y0SkJIVW5YME9jcWtraVJsMTRYZjltd3ppRUdURGRNRzdxWWZRaE40?=
 =?utf-8?B?K0pDanZ5a085dVdhRTV6bFV6Vkg1cDdsZ204MlJvZ2FpZU5Mc3MyWm1RamZ6?=
 =?utf-8?B?cUFoN0RxbktWelU3RFdPcWdLN1MrR214cTlwQVFLVzZ5cHVYVmNPYjlrZ3Jl?=
 =?utf-8?B?djA1OHBHU1FrU2liQmhsU1paZmloYkJZUlV5Vm1LeFRDd0FxRTJ4TnR5cElI?=
 =?utf-8?B?N0RYenZjeGw2RlpsOFpIMDUvQWtDZ1hMZEQweW1mSWg2MXcxMEc1bWh2UDB5?=
 =?utf-8?Q?ErmLqXBV1LQBSsdZet74zRQ2u?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7041.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e061df8-6de2-4605-bd13-08dbc6682c1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2023 12:31:32.1694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v8wYgLrAIlgpkKL+ur+q8ZYx6Y2jAta0BhACv13VMFxVuQZD6wDhoUs570kfcJZHI+q/q4xd9TfRghzALqAGMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5766
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after
 each read/write operation
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgT2N0b2JlciA2LCAyMDIzIDI6
NTcgUE0NCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgVml2aSwg
Um9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUkU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5
MTUvZGlzcGxheTogUmVzZXQgbWVzc2FnZSBidXMgYWZ0ZXIgZWFjaCByZWFkL3dyaXRlIG9wZXJh
dGlvbg0KPiANCj4gUXVvdGluZyBLYWhvbGEsIE1pa2EgKDIwMjMtMTAtMDYgMDM6NDk6MTUtMDM6
MDApDQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IFZpdmksIFJv
ZHJpZ28gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4+IFNlbnQ6IFRodXJzZGF5LCBPY3Rv
YmVyIDUsIDIwMjMgNzoxMCBQTQ0KPiA+PiBUbzogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291
c2FAaW50ZWwuY29tPg0KPiA+PiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+Ow0KPiA+PiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4+IFN1YmplY3Q6
IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IFJlc2V0IG1lc3NhZ2Ug
YnVzDQo+ID4+IGFmdGVyIGVhY2ggcmVhZC93cml0ZSBvcGVyYXRpb24NCj4gPj4NCj4gPj4gT24g
VGh1LCBPY3QgMDUsIDIwMjMgYXQgMTI6NDA6MzVQTSAtMDMwMCwgR3VzdGF2byBTb3VzYSB3cm90
ZToNCj4gPj4gPiBRdW90aW5nIFJvZHJpZ28gVml2aSAoMjAyMy0xMC0wNSAxMjoxMzozNC0wMzow
MCkNCj4gPj4gPiA+T24gVGh1LCBPY3QgMDUsIDIwMjMgYXQgMDM6MDU6MzFBTSAtMDQwMCwgS2Fo
b2xhLCBNaWthIHdyb3RlOg0KPiA+PiA+ID4+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPj4gPiA+PiA+IEZyb206IFZpdmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+
DQo+ID4+ID4gPj4gPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgNCwgMjAyMyAzOjU2IFBNDQo+
ID4+ID4gPj4gPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4+
ID4gPj4gPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+PiA+ID4+ID4g
U3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogUmVzZXQN
Cj4gPj4gPiA+PiA+IG1lc3NhZ2UgYnVzIGFmdGVyIGVhY2ggcmVhZC93cml0ZSBvcGVyYXRpb24N
Cj4gPj4gPiA+PiA+DQo+ID4+ID4gPj4gPiBPbiBXZWQsIE9jdCAwNCwgMjAyMyBhdCAwMToyNTow
NFBNICswMzAwLCBNaWthIEthaG9sYSB3cm90ZToNCj4gPj4gPiA+PiA+ID4gRXZlcnkga25vdyBh
bmQgdGhlbiB3ZSByZWNlaXZlIHRoZSBmb2xsb3dpbmcgZXJyb3Igd2hlbg0KPiA+PiA+ID4+ID4g
PiBydW5uaW5nIGZvciBleGFtcGxlIElHVCB0ZXN0IGttc19mbGlwLg0KPiA+PiA+ID4+ID4gPg0K
PiA+PiA+ID4+ID4gPiBbZHJtXSAqRVJST1IqIFBIWSBHIFJlYWQgMGQ4MCBmYWlsZWQgYWZ0ZXIg
MyByZXRyaWVzLg0KPiA+PiA+ID4+ID4gPiBbZHJtXSAqRVJST1IqIFBIWSBHIFdyaXRlIDBkODEg
ZmFpbGVkIGFmdGVyIDMgcmV0cmllcy4NCj4gPj4gPiA+PiA+ID4NCj4gPj4gPiA+PiA+ID4gU2lu
Y2UgdGhlIGVycm9yIGlzIHNwb3JhZGljIGluIG5hdHVyZSwgdGhlIHBhdGNoIHByb3Bvc2VzIHRv
DQo+ID4+ID4gPj4gPiA+IHJlc2V0IHRoZSBtZXNzYWdlIGJ1cyBhZnRlciBldmVyeSBzdWNjZXNz
ZnVsIG9yIHVuc3VjY2Vzc2Z1bA0KPiA+PiA+ID4+ID4gPiByZWFkIG9yIHdyaXRlIG9wZXJhdGlv
bi4gSG93ZXZlciwgdGVzdGluZyByZXZlYWxlZCB0aGF0IHRoaXMNCj4gPj4gPiA+PiA+ID4gYWxv
bmUgaXMgbm90IHN1ZmZpY2llbnQgbWV0aG9kIGFuIGFkZGl0aW9uYSBkZWxheSBpcyBhbHNvDQo+
ID4+ID4gPj4gPiA+IGludHJvZHVjZXMgYW55dGhpbmcgZnJvbSAyMDB1cyB0byAzMDB1cy4gVGhp
cyBkZWxheSBpcw0KPiA+PiA+ID4+ID4gPiBleHBlcmltZW50YWwgdmFsdWUgYW5kIGhhcyBubyBz
cGVjaWZpY2F0aW9uIHRvIGJhY2sgaXQgdXAuDQo+ID4+ID4gPj4gPg0KPiA+PiA+ID4+ID4gaGF2
ZSB5b3UgdHJpZWQgdGhlIGRlbGF5cyB3aXRob3V0IHRoZSBidXNfcmVzZXQ/DQo+ID4+ID4gPj4g
WWVzLCB3ZSBoYXZlIGJ1bXBlZCB1cCB0aGUgZGVsYXksIGZpcnN0IGZyb20gMHgxMDAgdG8gMHgy
MDAgYW5kDQo+ID4+ID4gPj4gdGhlbiBhcyBwZXIgQlNwZWMgY2hhbmdlIDB4YTAwMCBhbmQgSSBo
YXZlIHRyaWVkIDB4ZjAwMC4NCj4gPj4gPiA+PiBJbmNyZWFzaW5nIHRoZSB0aW1lb3V0IHJlZHVj
ZXMgdGhlIGZyZXF1ZW5jeSBvZiB0aGlzIGVycm9yIGJ1dCBkb2Vzbid0IHNvbHZlIHRoaXMgaXNz
dWUuDQo+ID4+ID4gPg0KPiA+PiA+ID53aGF0IGlzIGV4YWN0bHkgdGhpcyBCU1BlYydzIDB4YTAw
MD8gd2hlcmUgY2FuIEkgc2VlIGl0PyBTbyBtYXliZQ0KPiA+PiA+ID55b3UgY2FuIHVwZGF0ZSB0
aGUgbWVzc2FnZSBhYm92ZSByZW1vdmluZyB0aGUgJ25vIHNwZWNpZmljYXRpb24gdG8gYmFjayBp
dCB1cCcuDQo+ID4+ID4NCj4gPj4gPiAoUmVzZW5kaW5nIHRoaXMgYmVjYXVzZSBJIGdvdCBhIGRl
bGl2ZXJ5IGZhaWx1cmUgbm90aWZpY2F0aW9uKQ0KPiA+PiA+DQo+ID4+ID4gSSB0aGluayB3ZSBh
cmUgY29uZnVzaW5nICJkZWxheSIgd2l0aCB0aGUgInRpbWVvdXQgcGFyYW1ldGVyIiBvZiB0aGUg
bXNnYnVzLg0KPiA+PiA+DQo+ID4+ID4gVGhlIFBIWSBoYXMgYSByZWdpc3RlciB0byBjb250cm9s
IHRoZSB0aW1lb3V0IHBhcmFtZXRlciBvZiBtc2didXMNCj4gPj4gPiB0cmFuc2FjdGlvbnMgKEJT
cGVjIDY1MTU2KS4gSXQncyBkZWZhdWx0IHZhbHVlIGlzIDB4MTAwLiBXaXRoDQo+ID4+ID4gY29t
bWl0IGUwMjhkN2E0MjM1ZA0KPiA+PiA+ICgiZHJtL2k5MTUvY3gwOiBDaGVjayBhbmQgaW5jcmVh
c2UgbXNnYnVzIHRpbWVvdXQgdGhyZXNob2xkIiksIHdlDQo+ID4+ID4gaGFkIGludGVncmF0ZWQg
YSB3b3JrYXJvdW5kIHRoYXQgYnVtcGVkIHRoZSB0aW1lb3V0IHZhbHVlIHRvIDB4MjAwDQo+ID4+
ID4gaW4gY2FzZSB0aW1lb3V0cyB3ZXJlIG9ic2VydmVkLiBMYXRlciBvbiwgdGhlcmUgd2FzIGEg
QlNwZWMgdXBkYXRlDQo+ID4+ID4gd2l0aCB0aGUgZm9ybWFsIHRpbWVvdXQgdmFsdWUgdG8gYmUg
cHJvZ3JhbW1lZCB0byAweGEwMDAsIHdoaWNoIHdhcw0KPiA+PiA+IGluY29ycG9yYXRlZCB3aXRo
IGNvbW1pdCBlMzU2Mjg5NjgwMzINCj4gPj4gPiAoImRybS9pOTE1L2N4MDogQWRkIHN0ZXAgZm9y
IHByb2dyYW1taW5nIG1zZ2J1cyB0aW1lciIpLg0KPiA+PiA+DQo+ID4+ID4gSSAqYmVsaWV2ZSog
d2hhdCBSb2RyaWdvIGhhcyBhc2tlZCB3YXMgYWJvdXQgdGhlIHVzbGVlcF9yYW5nZSgpDQo+ID4+
ID4gY2FsbHMgYWRkZWQgd2l0aCB0aGlzIHBhdGNoLCBpZiB3ZSB0cmllZCB0byBvbmx5IGtlZXAg
dGhlIHVzbGVlZF9yYW5nZSgpIHdpdGhvdXQgdGhlIGJ1cyByZXNldC4NCj4gPj4NCj4gPj4geWVz
LCB0aGF0IHdhcyBteSBvcmlnaW5hbCBxdWVzdGlvbi4NCj4gPg0KPiA+SSBoYXZlIG5vIGdvb2Qg
ZXhwbGFuYXRpb24gd2h5IHVzbGVlcF9yYW5nZSgpIGlzIG5lZWRlZC4gV2l0aG91dCBpdCwNCj4g
PnRoZSBrbXNfZmxpcCB0ZXN0IGV2ZW50dWFsbHkgdGhyb3dzIHRoZXNlIHJlYWQvd3JpdGUgZmFp
bHVyZXMuIEFzIHRoZXNlDQo+ID5hcmUgYSBiaXQgc3BvcmFkaWMgaW4gbmF0dXJlLCBpdCB0YWtl
cyBzb21lIHRpbWUgdG8gY2F0Y2ggdGhlc2UgZXJyb3JzLg0KPiANCj4gSSB0aGluayB0aGUgcXVl
c3Rpb24gaXMgd2hldGhlciB0aGUgYnVzIHJlc2V0IGlzIHJlYWxseSBuZWNlc3NhcnkuIE1heWJl
IG9ubHkgdGhlIHVzbGVlcF9yYW5nZSgpIGhhY2sgd291bGQgYmUgImVub3VnaCIgdG8NCj4gbWl0
aWdhdGUgdGhlIGlzc3VlPw0KDQpJIGhhdmUgYmVlbiBzY3JhdGNoaW5nIG15IGhlYWQgd2l0aCB0
aGlzLiBJIHRlc3RlZCB3aXRob3V0IHJlc2V0IGFuZCBsZWZ0IG9ubHkgdGhlIGRlbGF5IGkuZS4g
dXNsZWVwX3JhbmdlKCkgaW4gcGxhY2UgYnV0IHN0aWxsIEkgaGFkIHRoZXNlIHJlYWQvd3JpdGUg
ZmFpbHVyZXMuIFRoZSBzYW1lIHRoaW5nIHZpY2UgdmVyc2EuIEl0J3MgbGlrZSB3ZSB3b3VsZCBu
ZWVkIGJvdGggb2YgdGhlbS4gSSB3b3VsZCBsaWtlIHRvIHVuZGVyc3RhbmQgd2h5IG9yIGlzIHRo
ZXJlIHNvbWV0aGluZyBlbHNlIHRoYXQgd2UgYXJlIG1pc3NpbmcgZnJvbSBvdXIgc2VxdWVuY2U/
DQoNCg0KPiANCj4gLS0NCj4gR3VzdGF2byBTb3VzYQ0KPiANCj4gPg0KPiA+VGhlIHBhdGNoIGlz
IGEgaGFjayBhbmQgbXkgaWRlYSB3YXMgdG8gc2V0IG1lc3NhZ2UgYnVzIGF0IHJlc2V0IHN0YXRl
IGFmdGVyIGVhY2ggcmVhZC93cml0ZSBvcGVyYXRpb24uDQo+ID5VbmZvcnR1bmF0ZWx5LCB0aGlz
IGFsb25lIGlzIG5vdCBlbm91Z2ggdG8gcGFzcyBrbXNfZmxpcCB3aXRob3V0IHRoZXNlIGRtZXNn
IGVycm9ycyBvbiByZWFkL3dyaXRlLg0KPiA+SG93ZXZlciwgdGhlIGttc19mbGlwIHRlc3QgaXRz
ZWxmLCB3aGljaCB0cmlnZ2VycyB0aGVzZSwgcGFzc2VzIHdpdGhvdXQgaXNzdWVzLg0KPiA+DQo+
ID5BbmQgSSBtaXNzZWQgdG8gbWVudGlvbiB0aGF0IHRoZXNlIGVycm9ycyBzaG93IHVwIChhdCBs
ZWFzdCBtb3JlDQo+ID5mcmVxdWVudGx5KSB3aGVuIDJ4IDRrIG1vbml0b3JzIGFyZSBjb25uZWN0
ZWQuIFRoZXNlIG1heSBub3QgYmUgdmlzaWJsZQ0KPiA+d2l0aCBvbmx5IG9uZSBtb25pdG9yIGNv
bm5lY3RlZC4gRm9yIHN1Y2ggYSBzeXN0ZW0sIEkgaGF2ZW4ndCBiZWVuIHRlc3RpbmcgdGhhdCBt
dWNoLg0KPiA+DQo+ID4tTWlrYS0NCj4gPg0KPiA+Pg0KPiA+PiA+DQo+ID4+ID4gLS0NCj4gPj4g
PiBHdXN0YXZvIFNvdXNhDQo+ID4+ID4NCj4gPj4gPiA+DQo+ID4+ID4gPk9oLCBhbmQgbXkgZW5n
bGlzaCBpcyBiYWQsIGJ1dCBpdCBsb29rcyB0byBtZSB0aGF0ICdlbXBpcmljYWwnDQo+ID4+ID4g
Pm1pZ2h0IHNvdW5kIGJldHRlciB0aGFuICdleHBlcmltZW50YWwnIGZvciB0aGlzIGNhc2UsIHNp
bmNlIHlvdQ0KPiA+PiA+ID5yZWFsbHkgZGlkIGEgbG90IG9mIGV4cGVyaW1lbnRzIGJlZm9yZSBj
b21pbmcgdG8gdGhpcyBmaW5hbCBjb25jbHVzaW9uLg0KPiA+PiA+ID4NCj4gPj4gPiA+Pg0KPiA+
PiA+ID4+ID4gaGF2ZSB5b3UgdGFsa2VkIHRvIGh3IGFyY2hpdGVjdHMgYWJvdXQgdGhpcz8NCj4g
Pj4gPiA+PiBZZXMsIEhXIGd1eXMgcmVxdWVzdGVkIHRyYWNlcyB3aGljaCBJIHByb3ZpZGVkIGJ1
dCBiYXNlZCBvbg0KPiA+PiA+ID4+IHRoZXNlIHRoZSBzZXF1ZW5jZSB3ZSB1c2UgaW4gaTkxNSBp
cyBjb3JyZWN0Lg0KPiA+PiA+ID4+DQo+ID4+ID4gPj4gPg0KPiA+PiA+ID4+ID4gSSB3b25kZXIg
aWYgd2Ugc2hvdWxkIGFkZCB0aGUgZGVsYXkgaW5zaWRlIHRoZSBidXNfcmVzZXQgaXRzZWxmPw0K
PiA+PiA+ID4+ID4gYWx0aG91Z2ggdGhlIGJpdCAxNSBjbGVhciBjaGVjayBzaG91bGQgYmUgZW5v
dWdoIGJ5IGl0c2VsZiBhbmQNCj4gPj4gPiA+PiA+IGl0IGRvZXNuJ3QgbG9vayBsaWtlIGl0IGlz
IGEgaHcvZncgcmVzZXQgaW52b2x2ZWQgdG8ganVzdGlmeSB0aGUgZXh0cmEgZGVsYXkuDQo+ID4+
ID4gPj4gVGhhdCBzaG91bGQgYmUgZW5vdWdoLiBUbyBtZSwgaXQgbG9va3MgbGlrZSB3aGVuIHJl
YWRpbmcvd3JpdGluZw0KPiA+PiA+ID4+IHRvIHRoZSBidXMgbWF5YmUgdG9vIGZhc3QsIHRoZSBo
dyBjYW5ub3QgaGFuZGxlIHRoYXQgYW5kIHdlIG5lZWQgdG8gcmVzZXQgYW5kIGxldCB0aGluZ3Mg
c2V0dGxlIGRvd24gYmVmb3JlIHRyeWluZyBhZ2Fpbi4NCj4gPj4gPiA+Pg0KPiA+PiA+ID4+ID4N
Cj4gPj4gPiA+PiA+IHdlbGwsIGF0IGxlYXN0IHNvbWUgLyogRklYTUU6ICovIG9yIC8qIFhYWDog
Ki8gY29tbWVudHMgaXMNCj4gPj4gPiA+PiA+IGRlc2lyZWQgYWxvbmcgd2l0aCB0aGUgbWVzc2Fn
ZXMgaWYgd2UgYXJlIGdvaW5nIHdpdGggdGhpcyBoYWNrIHdpdGhvdXQgdW5kZXJzdGFuZGluZyB3
aHkuLi4NCj4gPj4gPiA+PiBUcnVlLCBJIHdpbGwgYWRkIHRoZXNlIHRoZSB0aGUgcGF0Y2guDQo+
ID4+ID4gPj4NCj4gPj4gPiA+PiBUaGFua3MgZm9yIHJldmlldyENCj4gPj4gPiA+Pg0KPiA+PiA+
ID4+IC1NaWthLQ0KPiA+PiA+ID4+ID4NCj4gPj4gPiA+PiA+ID4NCj4gPj4gPiA+PiA+ID4gU2ln
bmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPj4gPiA+
PiA+ID4gLS0tDQo+ID4+ID4gPj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2N4MF9waHkuYyB8IDYgKysrKysrDQo+ID4+ID4gPj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspDQo+ID4+ID4gPj4gPiA+DQo+ID4+ID4gPj4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+PiA+ID4+
ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4+
ID4gPj4gPiA+IGluZGV4IGFiZDYwN2I1NjRmMS4uYTcxYjhhMjlkNmIwIDEwMDY0NA0KPiA+PiA+
ID4+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHku
Yw0KPiA+PiA+ID4+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2N4MF9waHkuYw0KPiA+PiA+ID4+ID4gPiBAQCAtMjIwLDkgKzIyMCwxMiBAQCBzdGF0aWMgdTgg
X19pbnRlbF9jeDBfcmVhZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgZW51bSBwb3J0
IHBvcnQsDQo+ID4+ID4gPj4gPiA+ICAgICAgICAgIC8qIDMgdHJpZXMgaXMgYXNzdW1lZCB0byBi
ZSBlbm91Z2ggdG8gcmVhZCBzdWNjZXNzZnVsbHkgKi8NCj4gPj4gPiA+PiA+ID4gICAgICAgICAg
Zm9yIChpID0gMDsgaSA8IDM7IGkrKykgew0KPiA+PiA+ID4+ID4gPiAgICAgICAgICAgICAgICAg
IHN0YXR1cyA9IF9faW50ZWxfY3gwX3JlYWRfb25jZShpOTE1LCBwb3J0LA0KPiA+PiA+ID4+ID4g
PiBsYW5lLCBhZGRyKTsNCj4gPj4gPiA+PiA+ID4gKyAgICAgICAgICAgICAgICBpbnRlbF9jeDBf
YnVzX3Jlc2V0KGk5MTUsIHBvcnQsIGxhbmUpOw0KPiA+PiA+ID4+ID4gPg0KPiA+PiA+ID4+ID4g
PiAgICAgICAgICAgICAgICAgIGlmIChzdGF0dXMgPj0gMCkNCj4gPj4gPiA+PiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgIHJldHVybiBzdGF0dXM7DQo+ID4+ID4gPj4gPiA+ICsNCj4gPj4g
PiA+PiA+ID4gKyAgICAgICAgICAgICAgICB1c2xlZXBfcmFuZ2UoMjAwLCAzMDApOw0KPiA+PiA+
ID4+ID4gPiAgICAgICAgICB9DQo+ID4+ID4gPj4gPiA+DQo+ID4+ID4gPj4gPiA+ICAgICAgICAg
IGRybV9lcnJfb25jZSgmaTkxNS0+ZHJtLCAiUEhZICVjIFJlYWQgJTA0eCBmYWlsZWQNCj4gPj4g
PiA+PiA+ID4gYWZ0ZXIgJWQgcmV0cmllcy5cbiIsIEBAIC0yOTksOSArMzAyLDEyIEBAIHN0YXRp
YyB2b2lkDQo+ID4+ID4gPj4gPiA+IF9faW50ZWxfY3gwX3dyaXRlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCBlbnVtIHBvcnQNCj4gPj4gcG9ydCwNCj4gPj4gPiA+PiA+ID4gICAgICAg
ICAgLyogMyB0cmllcyBpcyBhc3N1bWVkIHRvIGJlIGVub3VnaCB0byB3cml0ZSBzdWNjZXNzZnVs
bHkgKi8NCj4gPj4gPiA+PiA+ID4gICAgICAgICAgZm9yIChpID0gMDsgaSA8IDM7IGkrKykgew0K
PiA+PiA+ID4+ID4gPiAgICAgICAgICAgICAgICAgIHN0YXR1cyA9IF9faW50ZWxfY3gwX3dyaXRl
X29uY2UoaTkxNSwgcG9ydCwNCj4gPj4gPiA+PiA+ID4gbGFuZSwgYWRkciwgZGF0YSwgY29tbWl0
dGVkKTsNCj4gPj4gPiA+PiA+ID4gKyAgICAgICAgICAgICAgICBpbnRlbF9jeDBfYnVzX3Jlc2V0
KGk5MTUsIHBvcnQsIGxhbmUpOw0KPiA+PiA+ID4+ID4gPg0KPiA+PiA+ID4+ID4gPiAgICAgICAg
ICAgICAgICAgIGlmIChzdGF0dXMgPT0gMCkNCj4gPj4gPiA+PiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgIHJldHVybjsNCj4gPj4gPiA+PiA+ID4gKw0KPiA+PiA+ID4+ID4gPiArICAgICAg
ICAgICAgICAgIHVzbGVlcF9yYW5nZSgyMDAsIDMwMCk7DQo+ID4+ID4gPj4gPiA+ICAgICAgICAg
IH0NCj4gPj4gPiA+PiA+ID4NCj4gPj4gPiA+PiA+ID4gICAgICAgICAgZHJtX2Vycl9vbmNlKCZp
OTE1LT5kcm0sDQo+ID4+ID4gPj4gPiA+IC0tDQo+ID4+ID4gPj4gPiA+IDIuMzQuMQ0KPiA+PiA+
ID4+ID4gPg0K
