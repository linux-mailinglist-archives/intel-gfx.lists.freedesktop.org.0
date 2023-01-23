Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1EC677E2B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 15:35:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE5710E1EF;
	Mon, 23 Jan 2023 14:35:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2525C10E1EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 14:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674484540; x=1706020540;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=OtdI0/sXNHISXxhpsYKOVu1YkhfRfnPFv+Kz4EDxHPE=;
 b=aJziGB6XzZR/247FVeoilgOI38jLwOrFtBH5obBMrtOM5gRbVrCYYWFv
 mmDUszftQZLOZjZYCTUbeDgF2Cc2uT6two/O9Bs86/gRUxHY0rlKRY/6R
 agNSCClzGi0z3X09hwONNrlpxle01ta9PTybMfc7rhZVAHmpunC8vK0Sg
 ORt8dP18VO4v4Ec41qFlc9Cg+wvFaoGUi7ANUmmizH29e2mF7ZLWhc/YA
 cwK9XJYTdEdsUkuJgsgtonATlxHD+LupR39ATo8nelJkevwC+XdaFj6OA
 7cKBfomxd/kXTbmPbexzZIjbcSHS34R2/aReSVqTFZ78b1ZL+TSbO+oS9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="353315524"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="353315524"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 06:35:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="639164955"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="639164955"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 23 Jan 2023 06:35:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 06:35:38 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 06:35:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 06:35:38 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 06:35:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OCzfUhuU/E9LjR2g72aD+f/r51VtohxsetS69JQvPzR8PMPCeJLnJ9ZZRv0dKPtPc5l7Hoq0WDgyjtF7JX4A4ThYHFPJ8Wbh9CHVZDPjeke1MJsaz9bm7Ezam7WOsbNDKur/gC+OpsxkadGYjcVh2PLSGxt25N+bZJ+gBvZCufoY7Wnnj93rIwIKR1xIqXY9i61bQkEGHJ9Sz0Weq9R8ps14SqoONgCFlasvvsLRwCUWgnXBo7sZXC8biYQpMTo7jOWuovlzfSXXnIvInhTkPkuF3J90Ya0ZOOHJ3pxUotdqt2u4Zr1MPIjeq6St0ebM8gk55Bsg+t+Km8k54J1uwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OtdI0/sXNHISXxhpsYKOVu1YkhfRfnPFv+Kz4EDxHPE=;
 b=DiaQm9y+YRZb1ZdALO0yJK42ZcRlh0p1pUtoGpMYeNHrgOxl+JvTrAjuzPQj2L0TRKy4f/xx4YcH9xUbRNZtkTZSaozdn2Z9SLS00F2RgV9xroHtNQCET4/SpNbTsky+YzAiKD8cFiyXmz/EYQqNgCDwyrYL9LWS38StNmEETs7NgQoRJ3AoXD8IvroXM6SsDdJD5XD4uQYEqx20WFscfIGgbU/TnBBCvojowKJ15a0df8geHi7jNyb4Rr52UDUCWsjq/5tO1ulZqv1KIVrRhWsPLrFvOh+LqBP9z24NBVaLpjWjtKutEANTVF+dkQ8hb1Yqht0guljQj5RZrCSrnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6452.namprd11.prod.outlook.com (2603:10b6:510:1f3::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Mon, 23 Jan
 2023 14:35:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43%8]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 14:35:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>
Thread-Topic: [PATCH v4] drm/i915/fbdev: Implement fb_dirty for intel custom
 fb helper
Thread-Index: AQHZLv6a5f/GCleKCUS15L0YPf7iqa6r4IyAgAALuwCAABM+AIAAEmaA
Date: Mon, 23 Jan 2023 14:35:36 +0000
Message-ID: <1a232fb9319ccea324e4d5f9c465e21c599d0aa9.camel@intel.com>
References: <20230123074437.475103-1-jouni.hogander@intel.com>
 <7ee0c0c6-2620-38a6-76da-07c792950dd4@suse.de>
 <654a535c8399ba0aefb27773b7c3fbf926d3c9dc.camel@intel.com>
 <8dbd8df1-5b20-7b41-54d6-363a0177af55@suse.de>
In-Reply-To: <8dbd8df1-5b20-7b41-54d6-363a0177af55@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6452:EE_
x-ms-office365-filtering-correlation-id: 7d749994-1797-45a5-56ef-08dafd4f1747
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I64fkggwNRxFFCnPAxvhxpynvZ8jKQL1o5bCrvzT9WPf/ivkkHi9dqwcEJGBIT/qPiVKLfVUdCK+Qf+pstI9ooeo5ZFEJHCHaOFLgnus5s3awoe8N6ZGkeBpWgRdGBcxW2p3lxwUMibXoRK75quEos9ff7FrCAgiGZB4hj0jNFu2R/GkIWAgVXdXKoUMfIvqwTTZY3DPvY0L5U0QOU+KFqIbMalqYn3TUhWS72k+qQhY6k/CMYwASulfm58kONqP1yFyrQ0SceAv/NmZCJBwVaKG9KOveK2PHsh4ynlDRfRLkP6dsgiBDVvyCKqnPeh2bAysCX8mcvDXRJfNu6QbsiFhMgC1/d9sXvgr+QO0rEUEY8ZqiLsC6PUuXqkcBCdsuNTvnIUWSYe0vwGQl4PwYKwu7JdD35TFYpcdxNt6Ao4vOZ46Q6EjMJY2SEyF9newOeLcGSHqpOe4qlZB2dYwOTSyjbuK3OeBWCIOnuvJ/iYyQQJl45h6Fe4CHVZjl/DGL+NQ3L2tBtOxLujRU4SMd1anYYX1/kf4++CA3NNgcEt5mivjOXR8/nHEnDRDvghlI32I0UakrGBv8/llIRkEHJqZRyj8kIB+exp/PBDy4jQ3ngCyabQRa4rPoLRhVpr0cMCuive210+6EZA8UQ/cqUHQF2zbLVbe9mbsfje0xftqmPVheRPCf4QcVZRXsUiYcnesyYAI0JoOFdVtimkyQJY9e42HFBnuwXnzZ6h5B+U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(346002)(136003)(376002)(39860400002)(451199015)(38070700005)(2906002)(66946007)(122000001)(91956017)(66556008)(66476007)(8936002)(5660300002)(82960400001)(6506007)(38100700002)(54906003)(76116006)(71200400001)(110136005)(66574015)(478600001)(36756003)(316002)(6486002)(83380400001)(86362001)(186003)(41300700001)(64756008)(8676002)(4326008)(66446008)(6512007)(2616005)(26005)(14143004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHFoQWR1WTNUQjRkK0xYelNKNldzdHNWUEJkU3R4WnNBaUoreUVycHI0SGF1?=
 =?utf-8?B?YW8xWDNxcHhlYzNpMUY0ZC8yNUVrVEpneExPWDR0anBpT2NySHEweUQyWGlH?=
 =?utf-8?B?cjlpc2h3Q3AwSzZmbGJPR3JIbVVkNjBHSE9ZSmlOdThJVFBTdUMrUnVWWTdr?=
 =?utf-8?B?U0EycmhjelFibzV5ODRtSFBTR0Y5eUgyZ01jOHRGVzFpL0p2dGlPem8rRDRi?=
 =?utf-8?B?K2hjS29mcmx0M0lTL1M2bENsVWVOVW0zUWlWTW5NZ3g5dEoyU1Q3dlA2Ym1C?=
 =?utf-8?B?RXBjL3JnMTIzMjQ5Wk1MakRFSENqRHVkdzlQR0p3ZDZWRDN5WW1CY2U1dzEr?=
 =?utf-8?B?Uy9jNW1PMVJzZUxXNjJucEdBeVcrTUZPaEIrZmZBRFZicTRVaS93QUdWU2Ny?=
 =?utf-8?B?SlVPclN5aFhvY3oyY3R6Zzk3dlFRN1I4akpkdXRSRW5XRjZlUThpbjNVUzYy?=
 =?utf-8?B?cjdmYzJKbC9YZk5PZXdJOWZxWXVob2VxMEtIZ1B3bXg3US9LNmJwNG1BYnpQ?=
 =?utf-8?B?QU5MUlFPTHV5MnRzd1BaK210dUU4MmVIaVdSc2VkRmZNdWhSWmRYaUhWOWZl?=
 =?utf-8?B?NnpJSnRteTBqU0E4enpPY0VTcFRwWmQ3N1F4KzhXVEhRcHloS1JsbmRwTHJC?=
 =?utf-8?B?TzRBTWo0bWxFSkthd0Z5eVVPU291ODBPUC9lRUJBMEdFaUJXa3BuVHd1Sjhq?=
 =?utf-8?B?ZjQwaTlEb0M0TWNXZ00xMEhYT3hGR3BUUVF6ZUpLNnROV3o2YjZTWGxJbHNX?=
 =?utf-8?B?cjlCMDhVbkpNeWRTMjNiWkNMYjc1aWR1OWxNYXpSbFM5dlNFcDFBcjIzMjVY?=
 =?utf-8?B?RDkwVDI2d3VsWlBLVFpDT0twMWl3aDQ0US90N2h0YUkxNE80em9ibGlvYVRu?=
 =?utf-8?B?LzZHeGVuYnU1b2tBNXQ3a3dEcUJvOUQ4Z2JMOUpEUjBuSWNIZEppZ2xMOTVs?=
 =?utf-8?B?L0tKckx6TWl3QXoza2pObkpnNWJqWEoxZXJzWGNld05DOG95NUlrRERnQVdP?=
 =?utf-8?B?aFFXaUZwb1FQc0RmMnBRS0p2Z3cyT2M1Vjg5N0UzaHcwL3hsVWVZREY5MUFY?=
 =?utf-8?B?emh4U1B2U0MyNU9JOWNZenkwT3VPejNZWkh6TnNzNll0QUhoUEhJNDNzdm5x?=
 =?utf-8?B?ZDdKbStHMWJ2K0NQcHUyY0lVaVUxd0NHckJldlFYZ3A4Ym5vV3BnZENrRlpF?=
 =?utf-8?B?Y3FQcDl2V1NEeUdDbCtyc3c4dm54dTU4eDJxdXFOL3VaZWY1UFhZWCtCeUdI?=
 =?utf-8?B?eHVGMk9iZzBqczUzSGJERG1qc2V1bWxhZTNkSTF6Umx4bjNIYjdHWWlqT0E0?=
 =?utf-8?B?V0RsVDZRclRON0tTOVgreTA2MUdTRVE3a0lQc2ZTRThKdGNLRmVpQVFXb1Ja?=
 =?utf-8?B?OW9VOEZiOGN2MlNNbktrZnoyNGVubXd2Wk5Fc0tRckhEWURGbXlhWHAzbm1r?=
 =?utf-8?B?YWc1UDFqZ1MvWHNDNXRXN2FTZFdrbGVibFdmUFlaSjVpMG5NUHVnczhPejJx?=
 =?utf-8?B?ejZSTXJGQU5POElMdHZDaHR1YTk4OGRldzJtSmZUY0EvVHltU043aEJwT0hn?=
 =?utf-8?B?a0N0SVhqL3llZ3BpQm13ek43SGdXYnBsS3F5UDZUUVJiNHVSWlN6aE9pcEVu?=
 =?utf-8?B?K2JRZG5yc05ITm5UcVdyc1N6eUpFRmJ4ZUtvakR2NjNrN3RFV3VvRXBxaXo4?=
 =?utf-8?B?TlNlZFVFVVIyZ1IrUjErZWpGTkxaT2laUTBBZnErU3ZPSVoxSFZFc2lIQTVK?=
 =?utf-8?B?blBWTy9mSy9Lb3JRZkU4UGppUEdMdGRiTGZFQ0puZFdxdkZxaXNzeGRUWVlF?=
 =?utf-8?B?VEN6elRoNTZUV1pTNzd0TUtRU3grWmx0d3RnSFJXYmpyRDR4UVFaL20zREFF?=
 =?utf-8?B?YjVGSjB0eVFaOW15SU1pa2pML3BJVUtzT1orOTNKWDZlU0dYTUZKa3VSLzBI?=
 =?utf-8?B?Nm4zTEd6UHdGUUxoNGNWT1NIekVUd24raVRkWjdRalh0THZ5MzZWV2RjNGo2?=
 =?utf-8?B?WXdmckQzejdod1d0Y2RWZGJvNGJKKzhLVUhCaXNNUXpqUUlQRWtRTVVzb1BN?=
 =?utf-8?B?alAxajJ3aS85b2xLRnNJUzRDTDJQNEpNWWUzV1BzZFpjeFo2MU1udmJ2N0dB?=
 =?utf-8?B?Znp1Z0ZtSWp0ODJEZ05NZVV6dVJNSkk0alQxTys4S1krRGVubm9rZU1ldjMv?=
 =?utf-8?B?NHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <35B80C928649474BA01CBE88B01C0807@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d749994-1797-45a5-56ef-08dafd4f1747
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 14:35:36.0829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W0SlvHeEe+b82dZ6gheM+Ih40Rq8BqpZtswqaaZc72Nfol53bHrkXZqNRJq41BSQxzSCCHlTmHwRhNH67QDHRQm810479JZ9zOcGfJZw8Mo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/fbdev: Implement fb_dirty for
 intel custom fb helper
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTAxLTIzIGF0IDE0OjI5ICswMTAwLCBUaG9tYXMgWmltbWVybWFubiB3cm90
ZToNCj4gSGkNCj4gDQo+IEFtIDIzLjAxLjIzIHVtIDEzOjIwIHNjaHJpZWIgSG9nYW5kZXIsIEpv
dW5pOg0KPiA+IE9uIE1vbiwgMjAyMy0wMS0yMyBhdCAxMjozOCArMDEwMCwgVGhvbWFzIFppbW1l
cm1hbm4gd3JvdGU6DQo+ID4gPiBIaQ0KPiA+ID4gDQo+ID4gPiBBbSAyMy4wMS4yMyB1bSAwODo0
NCBzY2hyaWViIEpvdW5pIEjDtmdhbmRlcjoNCj4gPiA+ID4gQWZ0ZXIgZGlzY29ubmVjdGluZyBk
YW1hZ2Ugd29ya2VyIGZyb20gdXBkYXRlIGxvZ2ljIGl0J3MgbGVmdA0KPiA+ID4gPiB0bw0KPiA+
ID4gPiBmYmRldg0KPiA+ID4gPiBlbXVsYXRpb24gaW1wbGVtZW50YXRpb24gdG8gaGF2ZSBmYl9k
aXJ0eSBmdW5jdGlvbi4gQ3VycmVudGx5DQo+ID4gPiA+IGludGVsDQo+ID4gPiA+IGZiZGV2IGRv
ZXNuJ3QgaGF2ZSBpdC4gVGhpcyBpcyBjYXVzaW5nIHByb2JsZW1zIHRvIGZlYXR1cmVzDQo+ID4g
PiA+IChQU1IsDQo+ID4gPiA+IEZCQywNCj4gPiA+ID4gRFJSUykgcmVseWluZyBvbiBkaXJ0eSBj
YWxsYmFjay4NCj4gPiA+ID4gDQo+ID4gPiA+IEltcGxlbWVudCBzaW1wbGUgZmJfZGlydHkgY2Fs
bGJhY2sgdG8gZGVsaXZlciBub3RpZmljYXRpb25zDQo+ID4gPiA+IGFib3V0DQo+ID4gPiA+IHVw
ZGF0ZXMNCj4gPiA+ID4gaW4gZmIgY29uc29sZS4NCj4gPiA+ID4gDQo+ID4gPiA+IHY0OiBBZGQg
cHJvcGVyIEZpeGVzIHRhZyBhbmQgbW9kaWZ5IGNvbW1pdCBtZXNzYWdlDQo+ID4gPiA+IHYzOiBD
aGVjayBkYW1hZ2UgY2xpcA0KPiA+ID4gPiB2MjogSW1wcm92ZWQgY29tbWl0IG1lc3NhZ2UgYW5k
IGFkZGVkIEZpeGVzIHRhZw0KPiA+ID4gPiANCj4gPiA+ID4gRml4ZXM6IGYyMzFhZjQ5OGMyOSAo
ImRybS9mYi1oZWxwZXI6IERpc2Nvbm5lY3QgZGFtYWdlIHdvcmtlcg0KPiA+ID4gPiBmcm9tDQo+
ID4gPiA+IHVwZGF0ZSBsb2dpYyIpDQo+ID4gPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gPiBDYzogVGhvbWFzIFppbW1lcm1hbm4g
PHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+ID4gPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKgwqAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jIHwgMTIgKysrKysrKysrKysrDQo+
ID4gPiA+IMKgwqAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykNCj4gPiA+ID4gDQo+
ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
ZGV2LmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2
LmMNCj4gPiA+ID4gaW5kZXggMTlmM2I1ZDkyYTU1Li5kMzlkYjgwNTBjNjkgMTAwNjQ0DQo+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPiA+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4g
PiA+ID4gQEAgLTMyMSw4ICszMjEsMjAgQEAgc3RhdGljIGludCBpbnRlbGZiX2NyZWF0ZShzdHJ1
Y3QNCj4gPiA+ID4gZHJtX2ZiX2hlbHBlcg0KPiA+ID4gPiAqaGVscGVyLA0KPiA+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+ID4gPiDCoMKgIH0NCj4gPiA+ID4gwqDCoCAN
Cj4gPiA+ID4gK3N0YXRpYyBpbnQgaW50ZWxmYl9kaXJ0eShzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAq
aGVscGVyLCBzdHJ1Y3QNCj4gPiA+ID4gZHJtX2NsaXBfcmVjdCAqY2xpcCkNCj4gPiA+ID4gK3sN
Cj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKCEoY2xpcC0+eDEgPCBjbGlwLT54MiAmJiBjbGlw
LT55MSA8IGNsaXAtPnkyKSkNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHJldHVybiAwOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChoZWxwZXIt
PmZiLT5mdW5jcy0+ZGlydHkpDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5KGhlbHBlci0+ZmIsDQo+ID4gPiA+IE5V
TEwsDQo+ID4gPiA+IDAsIDAsIGNsaXAsIDEpOw0KPiA+ID4gDQo+ID4gPiBEaWRuJ3QgSSBuYWNr
IHRoaXMgYXBwcm9hY2ggYWxyZWFkeT8gWW91IHNob3VsZG4ndCBzZXQgZmJfZGlydHkuDQo+ID4g
PiBUaGUNCj4gPiA+IGJldHRlciBzb2x1dGlvbiB3YXMgdG8gaW1wbGVtZW50IGk5MTUtc3BlY2lm
aWMgaGVscGVycyBmb3Igd3JpdGUsDQo+ID4gPiBmaWxsYXJlYSwgY29weWFyZWEgYW5kIGJsaXQu
IFRob3NlIHNob3VsZCBjYWxsIGludGVsZmJfZGlydHkoKQ0KPiA+ID4gZGlyZWN0bHkNCj4gPiA+
IGFmdGVyIHBlcmZvcm1pbmcgdGhlIG91dHB1dC7CoCBBbmQgSUlSQyB5b3UgYWxyZWFkeSBpbXBs
ZW1lbnRlZA0KPiA+ID4gdGhpcy4NCj4gPiANCj4gPiBJIGhhdmUgaW1wbGVtZW50ZWQgc3VjaCB0
aGluZy4gSSBkaWRuJ3QgdG9vayBpdCBhcyBhIG5hY2sgYmFjaw0KPiA+IHRoZW4uDQo+ID4gTGFz
dCBjb21tZW50IGZyb20geW91IHdhczoNCj4gPiANCj4gPiAiaWYgeW91IGdvIHdpdGggZmJfZGly
dHksIHBsZWFzZSBpbXBsZW1lbnQgdGhlIGNsaXBwaW5nDQo+ID4gdGVzdCBpbiB5b3VyIGNhbGxi
YWNrLiINCj4gPiANCj4gPiBhbmQgdjMgd2FzIHByZXBhcmVkIHRvIGFkZHJlc3MgdGhhdCBjb21t
ZW50LsKgTXkgdGhpbmtpbmcgd2FzIHRoYXQNCj4gPiB0aGlzDQo+ID4gaXMgb25seSBmb3IgZmIg
Y29uc29sZSwgYnV0IFZpbGxlIFN5cmrDpGzDpCBjb21tZW50ZWQgdGhhdCB0aGVyZSBpcw0KPiA+
IG1vcmUNCj4gPiB0aGFuIGNvbnNvbGUgc28gSSBzdGlja2VkIGluIHRoaXMgYXBwcm9hY2guDQo+
ID4gDQo+ID4gU28geW91IHRoaW5rIEkgc2hvdWxkIGp1c3QgZHJvcCBpZGVhIG9mIHNldHRpbmcg
ZGlydHkgY2FsbGJhY2sgYW5kDQo+ID4gaW1wbGVtZW50IHRob3NlIGk5MTUtc3BlY2lmaWMgaGVs
cGVycz8NCj4gDQo+IEFoIE9LLCBzbyBJIHJlbWVtYmVyZWQgaW5jb3JyZWN0bHkuDQo+IA0KPiBB
IGZldyB0aGluZ3MgaGF2ZSBjaGFuZ2VkIHNpbmNlIG15IG9yaWdpbmFsIGNvbW1lbnQgYW5kIEkg
d29ya2VkIG9uIA0KPiBmYmRldiBoZWxwZXIgYSBiaXQuwqAgVGhlIHRoaW5nIGlzIHRoYXQgZmJf
ZGlydHkgd2lsbCBsaWtlbHkgZ28gYXdheQ0KPiBhdCANCj4gc29tZSBwb2ludCAodG9nZXRoZXIg
d2l0aCB0aGUgcmVzdCBvZiBkcm1fZmJfaGVscGVyX2Z1bmNzKS4gSU9XIGF0DQo+IHNvbWUgDQo+
IHBvaW50LCB5b3UnbGwgbmVlZCB0aG9zZSBpOTE1IGZ1bmN0aW9ucyBhbnl3YXlzLiBOb3QgdXNp
bmcgZmJfZGlydHkNCj4gbm93IA0KPiB3aWxsIHNhZmUgdGhhdCB3b3JrIGxhdGVyIG9uLg0KDQpP
aywgSSB3aWxsIG1vZGlmeSB0aGUgcGF0Y2ggYWNjb3JkaW5nbHkuDQoNCj4gDQo+IEJlc3QgcmVn
YXJkcw0KPiBUaG9tYXMNCj4gDQo+ID4gDQo+ID4gPiANCj4gPiA+IEJlc3QgcmVnYXJkcw0KPiA+
ID4gVGhvbWFzDQo+ID4gPiANCj4gPiA+ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqByZXR1
cm4gMDsNCj4gPiA+ID4gK30NCj4gPiA+ID4gKw0KPiA+ID4gPiDCoMKgIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZHJtX2ZiX2hlbHBlcl9mdW5jcw0KPiA+ID4gPiBpbnRlbF9mYl9oZWxwZXJfZnVuY3Mg
PSB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoC5mYl9wcm9iZSA9IGludGVsZmJfY3JlYXRl
LA0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAuZmJfZGlydHkgPSBpbnRlbGZiX2RpcnR5LA0KPiA+
ID4gPiDCoMKgIH07DQo+ID4gPiA+IMKgwqAgDQo+ID4gPiA+IMKgwqAgc3RhdGljIHZvaWQgaW50
ZWxfZmJkZXZfZGVzdHJveShzdHJ1Y3QgaW50ZWxfZmJkZXYgKmlmYmRldikNCj4gPiA+IA0KPiA+
ID4gLS0gDQo+ID4gPiBUaG9tYXMgWmltbWVybWFubg0KPiA+ID4gR3JhcGhpY3MgRHJpdmVyIERl
dmVsb3Blcg0KPiA+ID4gU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQo+ID4g
PiBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkNCj4gPiA+IChIUkIgMzY4
MDksIEFHIE7DvHJuYmVyZykNCj4gPiA+IEdlc2Now6RmdHNmw7xocmVyOiBJdm8gVG90ZXYNCj4g
PiANCj4gDQo+IC0tIA0KPiBUaG9tYXMgWmltbWVybWFubg0KPiBHcmFwaGljcyBEcml2ZXIgRGV2
ZWxvcGVyDQo+IFNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KPiBNYXhmZWxk
c3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkNCj4gKEhSQiAzNjgwOSwgQUcgTsO8cm5i
ZXJnKQ0KPiBHZXNjaMOkZnRzZsO8aHJlcjogSXZvIFRvdGV2DQoNCg==
