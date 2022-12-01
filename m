Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA87D63F720
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 19:08:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E0B710E66D;
	Thu,  1 Dec 2022 18:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94A8F10E66D
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 18:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669918092; x=1701454092;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=sWU79FgeJU8VkMxJTuEqXCTNIEY/7xrdH8+Lp61drqk=;
 b=nuJbHDqPHWYn5Yve5CqI00GVP567BOvuBEaX7N8SKCqJJABL0newW6E5
 6pFLRwiQg2HfVbPqOj8598WF6a3gOFHeJZYAkvWUCMA5dyTm3XCrw6f1B
 ARd1V73xkims3dojViDf2ozJwckxzJas3GNQ9lTjpeu/JzsNHhoPTp0wv
 uBmuK8IrEI54slKY7vdKX4abFk61bodgpZFXCJgXTHcA4i0F/K7ZLJgYs
 +iHU0q03ncGqBcbbSoJzZOxOQBkr39E2zL+mjn6LqyE+vUMimYxOsfFGT
 TdOQnTf3kgVB2cjeNWxbzE/ceeMwGL7JnWQUFb5V1haQY/Cm+CnAt1weK A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="315782889"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="315782889"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 10:07:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="644735741"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="644735741"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 01 Dec 2022 10:07:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 10:07:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 10:07:39 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 10:07:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6HfRrUrHcmaeaaumgS1gx4zL18Y1o6FGyWeQQczYoio1sDUadzJYso3TmCgud2gxj+qhCmJdhMi1aXdBkRhvDblPND0WnEk8XsrbFIdQanZOJig54ohYdUO6903IOV7totLPCTivj/OAQDOkBq6ySPAHZDh7zONEMOvua4GrmQoc2yJaa5rt3+Vhvw9kmKwN+swbmMyZosZoYC6i48CLNzbnu4u9tzicx/p2bma6VZ/MAPSTnOWX3q6v5OU0YLegfKnq/BJxJ3PngURaad7kb/RJUsp1ZhVHkQjfZ8Evy15BPe8Hs6xmTbQtjsvhmDp/M7Y4ScdP6olZTCcit2AaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sWU79FgeJU8VkMxJTuEqXCTNIEY/7xrdH8+Lp61drqk=;
 b=cIrH1XK7MbjGX0q9YrForo8LxOE/IoknunxDawgVsV5vYA+466swCk4UEQjoDnZg8eZCSUhdbHtOI7xL5o1TlT62yepG2A+TH8kAXhGmUyhFq9SBdVWZBQnpFZZAdZTmxM79Y0Ny0mqm+iwBAtEU6rUbjg29NzlRGigPr/5PxCcuYYN+umrXGNASJsmEx4E6hhGbrQ7zix6WS5/I9Sf+8y9Oz69LwMg/fstVIR03gx0SudV4d2+PTNrx3xI0OnAa8Y8hQOj3TNk1O9y4dJF0zQbeMm3KTRhC1xwqbTPQlo0hs9VqGjnMcGzF8bgi+JkTP9hfCRJCwue/s9hbazUVLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH7PR11MB6007.namprd11.prod.outlook.com (2603:10b6:510:1e2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 1 Dec
 2022 18:07:36 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 18:07:36 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "justonli@chromium.org" <justonli@chromium.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/3] drm/i915/pxp: Invalidate all PXP fw
 sessions during teardown
Thread-Index: AQHZA4wDE2Tyn5Ebv0miiiVdQr8l6q5YRriAgAESdoA=
Date: Thu, 1 Dec 2022 18:07:36 +0000
Message-ID: <b06f2e5986ac4ce4fe534a22e7cfd12a13dbe0df.camel@intel.com>
References: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
 <20221129004832.3735764-2-alan.previn.teres.alexis@intel.com>
 <97a03abf634d233d38fd4cb200eaad5140215c07.camel@chromium.org>
In-Reply-To: <97a03abf634d233d38fd4cb200eaad5140215c07.camel@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH7PR11MB6007:EE_
x-ms-office365-filtering-correlation-id: d68f1ed0-623f-4a40-1573-08dad3c6ed65
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eiZJwlT1lkfnoLDxm73Kcpllb/laGoLEriK2jJ/ULW+Y4dAq+XqY9XelsalDmJWHCiZfpH3By5zH0DVSJsS9EmQkXEnN4/JGAEn4gZ+0DeU5FykXwXwIkEJMPZ17pdyCfOp3bFZfw1MbMxH7p/rqKbW56FJROEYsYt5YH6F1srbTTcUlfuzaOlFatlIskta5R0fIapbpFBQ0VDIfE1ifoE5kYiStm7FUP0Yu51jNYNVeFNlE3lUJYobBwurbCJa8jWl5Gld9dZ+TnvaIj/Ize5qMAjb47wFJ11g3fN5QJ2+Y66SLoYEhFyC8g4mZu2lF7IawPCavp1g8NlSvP/9+iMP+2POXB2xTsBx+24i7RibKm1DY5kzbVKHY7c8mxxjP+AlV+o5o8iGGlc7+J9UuS3+tOOw6BwSUMHBfvWa9cbe8n+VS0mMsiYh237sd4D1ofnlrQOvxQxkS81bYHSYSxB0a3NdNaIQwLkcc5/a/8/PdvqCSCufMcHmGf0OQR6ksQusIhyaFtnTbeYeuhAuDj0FH3sGmyAjpmEsiQRL35VYThXO/Ne/iIzRh5Lm9pDe4wvXogXdTCwVYKnEHVm+jmToO/j2ecepfHurONGEnWnQDz/c+ha2lwXWddJndvu8gJOz2EPq0DGn+wQUZsaCAt71N1Pgl56h8mTm8B3NaKvAe7opXNjZC+CJ4tGR8qLw84XtN+wmCl0FPCQ6Y1txByQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(346002)(136003)(376002)(366004)(451199015)(38100700002)(110136005)(316002)(71200400001)(122000001)(38070700005)(82960400001)(36756003)(66556008)(66446008)(76116006)(8676002)(66476007)(66946007)(91956017)(64756008)(186003)(2616005)(86362001)(26005)(6512007)(6486002)(478600001)(6506007)(4744005)(4001150100001)(2906002)(8936002)(5660300002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVJLWWtRa2ViOWlZSUptMmNBYm5rZEhYNHk5U3doNVdiRU1RVEdFNmhQZThl?=
 =?utf-8?B?MnNtSzNsejU4R2tLSWNuNHgyNUxqdFNZcThwL2tDZWNzenpseGk4ZXkvejJW?=
 =?utf-8?B?bG1BSDdnb3BIQ2xST3dBQm9IbVZnUnNuNjVaUzdxT3RoUFY5UjdDVWNRYVh1?=
 =?utf-8?B?aDZ3cnd0WDdubnMzell6MkVlZzhDSEJRVSt5ekQwdnl1MGxXWnp3UUYveU1U?=
 =?utf-8?B?ZVptakdIdkFVOXVaZWxRYUdiNGFrTnE0MzhDcFl4RHFaallidXQzd2NZTFh3?=
 =?utf-8?B?czJlY3ZkWU9lYnI3bS9uSkk5UkVJYndXUHk4dW0zZzJ6U21jM0NwdnVCSFg2?=
 =?utf-8?B?K1ZCMlV4dHVvSUlHemh6Ylo0SkI1YjFrU3plVy8yNzRwSmt1V1RvbmowNzM0?=
 =?utf-8?B?Z2VnK3dOamdZU0VSNUpQbVRRd1VwSStqK3hDc083YXRjVmdYMEVoRm5HSnpv?=
 =?utf-8?B?ZWVvNUR3blAvdlNqaTg3ZzlsajUwWWd1VWVmR1ZmYVptT1lGS2RjY1FsYWF2?=
 =?utf-8?B?b1NhemZYUE80QnE4bVRGTUpsY1VPWjFFTDUxN0l5TWNJL1J3QWZUOTVOcTdr?=
 =?utf-8?B?TDVYRkx1NGFOUVZieDIvRG1EdFRyWVFTbXpvd0dGZkM2Q0JHcU9FUlFWaUw3?=
 =?utf-8?B?d1NKSU5OUGtPUFVBclVhVG1WWHd0enVXR1NqYnNiQ1hZbGdJYXo1cTFzSno1?=
 =?utf-8?B?VXpOMXNNd1RLM1N4NHB2ZmF2d0FMb1cvTm5EbFRnTWJLNTdkRERTdVYxWFB0?=
 =?utf-8?B?SDJIU0UrT2M3cUFndW0ra1drY202QzR2Y0p1cWk4REU2RC9LMGRsS3p3bFdr?=
 =?utf-8?B?REFBVEcrWDV3eFVtS3hGT0VYME1OU2h1YlVycEFqV3JCckdCa3RrYjZZMEZh?=
 =?utf-8?B?aEV2OHFWRGs3NjAzZFF0WjdRVi8yaXQ0SnJGLzRxTkhnc1VEMUpWU0ttMFNZ?=
 =?utf-8?B?MFExRVRycjFJVWZNK21IWDljQnlYbldHaWovMmpiRElreERkOFBrUzBGd3dS?=
 =?utf-8?B?MXBnM2RHTVliWmFjcmMrVEJsZVZaNFI5dmE0VDFtS3k2Tyt6aHBqeTlLWCtp?=
 =?utf-8?B?N0QyR3ZmZGtjY2R6YmRnOUxxUUNBaGNpM1JhRG9uSWV3UEZ6b2JZTFd3Z0V5?=
 =?utf-8?B?czVENng0QmsvVytETDNKLzBCZnlWd2VuRElhSVpIeGNuay9XOU8vNDA1SHEy?=
 =?utf-8?B?dk1CQm44WTI4Q2IyWElRYkNXWnVlVFpKNEVGbzdPNysvM3RMWFhoUGNPK2lB?=
 =?utf-8?B?VlYyUzRHNjJ1ODd1eWFrU3NLUGZCOWdkSWdrZVZjbkkrc05oOThpK3Nkandi?=
 =?utf-8?B?OXk2S0trbHduRWhsYTk4WmR6azA1ZklRRlVRTEx1S0dwS1VUbmxQL3ZBM2RF?=
 =?utf-8?B?RlpjNGt2N0VhcEhPTHpBRG4xaFFaOURPcDJxWGRjRmdBb1ZXaU96ZXJqQmtp?=
 =?utf-8?B?dFpseTVsUjNxVUsydmdRMFNCeGx5Ym1ZaFY1MkZIRHlLeGxPOE5vY2tYMGJ5?=
 =?utf-8?B?dEFhalFqZFdPaTVNWENzQUlQbEJjMmltSjRaeXVwWTNDcUVzZldDakE2bzB2?=
 =?utf-8?B?WFpWV0FGV3pvZlFJYXhhampBVmxReVdPY1lvdTYwRHVtUHM5NVo1VGFHTmpp?=
 =?utf-8?B?TWcrbHUrTG9LV1dWTHpiTEtDUUxQc0RORlMxUy90dDNBU3FrZVJNUDd6Unow?=
 =?utf-8?B?QVhPTjZjQ1VhMjh6ZzRWZWNmMnNVUm5pK2o3ZHEvQU80TyszOFcxaUw3K21s?=
 =?utf-8?B?Qm81R2xkTjRLenFsK2QvWHQ1K2FEYTFEM2pZQ3ZKVVdxcXhjVHpwbWk2dEla?=
 =?utf-8?B?T2owNE1ycEQycnR6dGcxSE9SRVlTOU9pZ1E5dmNya0tXSmptVDFjMGN6U04w?=
 =?utf-8?B?Nms5QURXR2ZONWl5Q0NIK1NJbmZFV0ZnakpRVDdWWVpyRFlidVJDeXpVT2pt?=
 =?utf-8?B?UEpoM0ZEN1krWkZZYUpPV3M4dUVSMDhxL21rdzFxOE51NnV6aTlSRUM3S3BJ?=
 =?utf-8?B?c3BqeU53WFNBUUVIVXdSRUdKbFdYT0RXYkZUUkdoODFjS01VNllYUnNJUEhE?=
 =?utf-8?B?ZHNjUURxYktLSWpqaFRQcWZhQ2NuRnlQUm9aSnc3YmRLeXkzU1ZmU1BrR1Y3?=
 =?utf-8?B?UitzV0xZMGdqVWFnUlVCNE43c0lmcUdlMWQ0MWI0WGM0YjBEZFBPckxZd1Uy?=
 =?utf-8?Q?lv4CqDAMlUuehSEu3DAWAIE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FEC7016B9CDC474FB72FCA3B740C195B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d68f1ed0-623f-4a40-1573-08dad3c6ed65
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 18:07:36.5844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DibcJbODVubm+8oVGMz/R3Nrk8FEt1kmJamWt3u8CaQgdqYuCjoGPoQRmAVTg7X/W4WcvrTQC0XKay0kmLhjGzusR6oDwwDdIKSwgc0QZf7qb1mDZ8qmr4yNKs3HxLMo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6007
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/pxp: Invalidate all PXP fw
 sessions during teardown
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

DQoNCk9uIFdlZCwgMjAyMi0xMS0zMCBhdCAxNzo0NyAtMDgwMCwgSnVzdG9uIExpIHdyb3RlOg0K
PiBPbiBNb24sIDIwMjItMTEtMjggYXQgMTY6NDggLTA4MDAsIEFsYW4gUHJldmluIHdyb3RlOg0K
PiA+IA0KPiA+IA0KPiA+IA0KQWxhbjpbc25pcF0NCj4gPiArI2RlZmluZSBJTlRFTF9QWFBfTUFY
X0hXRFJNX1NFU1NJT05TIDE2DQo+IA0KPiBUaGlzIGlzbid0IG5lZWQgYW55bW9yZSwgb3RoZXJ3
aXNlDQo+IA0KPiBSZXZpZXdlZC1ieTogSnVzdG9uIExpIDxqdXN0b25saUBjaHJvbWl1bS5vcmc+
DQo+IA0KQWxhbjogVGhhbmtzIC0geWVhaCAtIHdpbGwgcmVzcGluIGEgZmluYWwgd2l0aCB0aGF0
IGZpeC4gSSBhbHNvIHdpbGwgbmVlZCB0byBsaW5rIGZyb20gdGhpcyBwYXRjaCB0byB0aGUgbWVp
IHBhdGNoZXMNCnRoYXQgbmVlZHMgdGhlIGZpeGVzLiAob3IgaW5jbHVkZSBpbiB0aGlzIHNlcmll
cykuDQoNCj4gPiArDQo+ID4gwqAvKioNCj4gPiDCoCAqIHN0cnVjdCBpbnRlbF9weHAgLSBweHAg
c3RhdGUNCj4gPiDCoCAqLw0KPiANCg0K
