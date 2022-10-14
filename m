Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3A35FEB4E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 11:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47E5310E047;
	Fri, 14 Oct 2022 09:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE05E10E047
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 09:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665738220; x=1697274220;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VapFVFDJ4+7S6U2YkHcB//G4GQHH1qu6ACYnqJGzwKI=;
 b=Z9WWUsEFD8Ru07Uy1rQpADuVKn2qVY3tepNjEJF9Lm3zNYIWxbbYo4XO
 Xt7m6Kx7xzzvVTuDzDFWmJY+nEs3y9sC+pHef98BHCCmiKWulT3CQvLzA
 sBujf0S9PbnMBG8134j7yYBq/LQFRZ4+uCYkXiiE94O2numI+a8IVvJyj
 Cy1ZUyuorgLEbrF1iaEYRcaw69iIWr1TTa1+bdPU00mmnHVLgItBpjQF5
 Dj4UVpDdOv1zrHVent7O7Syg3rdoDO4kohN2iTSWRpAvQgoj0XT3HiftS
 esKByvNXZnhyQZ+204dckKFPtWwBR+1RUmjlKyoZD9F9Z9P1UTz9MLVq+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="285716526"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="285716526"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 02:03:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="732230769"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="732230769"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 14 Oct 2022 02:03:28 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 02:03:27 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 02:03:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 14 Oct 2022 02:03:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 14 Oct 2022 02:03:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QiisFl0WC9NjpfPbSkkk4kKW3wR9n63yJcIgYU3NPpxdinaFQJ9sZRfvHAmSOTQ2a38GArkDyLTPf3viz9RFpourgdPGpAq6aGoqrBqRlaDWovIj/ECMnLteXwl2d4XWl+lzon90n0gO1WX7PcQ0lrdnHfYLjHesWsaw22r+4kNdsBZWmnYSHHYv/X/oZUZNVuKiPLy3JLPAlrxMftDojH47xu6DSsMiAnk1r9BDsHdbPCxYbZzbnN2FhTon6UEO6ftnmEpQhNZIfUtcucS0EJVCTE6z8YJIVYMMU8XoaWeSPEF0YnX9faTzaDqogp+kS39d2KahQoazKj+uki0QKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VapFVFDJ4+7S6U2YkHcB//G4GQHH1qu6ACYnqJGzwKI=;
 b=T0RI+9VGN47W9XXNlBarB51a5D7QRiF4wpQbFyZYDG0iCBfqiP7+mhhxAGL0WgZmclNMLLpXL47T9oOA/pjEfMLSk3xAzzRpW0sQZ9WZFmnfam1xwuo3gI2YHSBUeUq2K25ZW0I+Ttvjf3YItRtd4TMgLZz44RrkMCxdZ/Ce2vPnkBJCi/6iL9SMOifflfHUwkKgENn0AervWnBog3I6aWUR37/1cJwtBYiMicCgbTb6FNfUxvaIzCNbsxRbiiOwz2czf3g7eKubspP5lahh5tS1kX4+zAm04tAYipwTvQRuvNbJOPoOz8BIIdsaGKJrOakVYZ64yYh8UgYmxk1OMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM6PR11MB4612.namprd11.prod.outlook.com (2603:10b6:5:2a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Fri, 14 Oct
 2022 09:03:25 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::b335:3ebb:96b7:5441]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::b335:3ebb:96b7:5441%4]) with mapi id 15.20.5676.028; Fri, 14 Oct 2022
 09:03:24 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 00/22] drm/i915: ELD precompute and readout
Thread-Index: AQHY3ZL5pU29yGxRzUSB6XABXjLuKa4Nl1+w
Date: Fri, 14 Oct 2022 09:03:24 +0000
Message-ID: <SJ1PR11MB6129764665E28806A37A77A2B9249@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM6PR11MB4612:EE_
x-ms-office365-filtering-correlation-id: cfcceb99-5631-4a2e-f6fe-08daadc2f376
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MZy65wxrhyjEm2n5LlaFMnGK2Sj6o3jJvyh4SudAyZ8xGLG9jir4R/IgTetyuzz7fzSuItNsUwmt4TXjg4fxZ2sSebCQk/j1S7AlfwakGOHDLneWX/UJb2JTyThsdxGHxgdXqdP3fo+kMpCVuvMjqC4HRJ9GWax2wN3CPKJWracoXJluIoo37RVwSyplrIPKXxnQbJo9QHPLSNcE+tBqZ7yQlgCJVE1RhdTIA8MLmN1YijRePeDlBksdYc4ciadtI9NsOyk01zj3XCYeGh5W0+B8YyNZr4W/o/qTA8buVC3iPH6emA4IF/gtmCFhnnY45u+8PK+rBTUWKqufzFljqQMexC+gswNQFYr4Bwh6Rh0QmN10OpwiP5zyg+dHa+FRq7TGI8GLFvwxYl30N6cxQ/h2jH7Xi3XSpYh/ISyTc1WvbLZKwK00+D83TMT0/uePrycJxNobyicdpatTQZWKDbuEo5vvJE0SsW45DT8aEGo0VS0wMYrpWejAw9aeazrjBBinow84aYEv7OKw3CznpS6JHPomk5FEnRm2UptctCUOAXKy7sNcpTfRaUapyNfPpt9EWQzuqu+5rNNqSiO4oGZSOpiNHFSMCYKaCCuAh67I4ryAMRQpwimOLvb30T7zNLNncYB9rs8wycm2Tn7yjCRUy2wA6mesaE7LE5BfHmO1SdwPk9apy+ivAVeBI/uljQbYqIcDRYO8sMUa3VN3z5iIJFzc1UZa33jRiTtGetAxFlT7YmqSPIDcZYbNK8LFN6jI89QJLfjkDqc/aoeF2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(346002)(396003)(136003)(451199015)(5660300002)(8936002)(186003)(2906002)(53546011)(6506007)(7696005)(26005)(9686003)(52536014)(41300700001)(82960400001)(122000001)(33656002)(38100700002)(86362001)(38070700005)(55016003)(83380400001)(66574015)(316002)(54906003)(6916009)(71200400001)(66946007)(76116006)(66556008)(8676002)(478600001)(64756008)(4326008)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?by9kQXo0cjNubXR0dytsaEJWcnUwamljbFNPREh0eldwbmpQQkRVaDBnSFJU?=
 =?utf-8?B?Qjg4MHpsaEcvYVhKZWFiWm9FN3NYSEhZVFAxaDhzK1J6RGovSzRrbXVRdFA4?=
 =?utf-8?B?YkxuL1g2ZVRKT1pvZmxjek1UM2kvMVFQenNLK1RrNTYxVmFJVnBWSjlndURr?=
 =?utf-8?B?UWgycW9Kazk5czF1K0d0ZUwxbnNIemdwZldVenhVa2ZrZGg4SGY1TTBZZmZ6?=
 =?utf-8?B?cGx4UXJZRmZIQVI5cnFhRzROekZVaEF6cW1WWjRVdlRSRFJYWnZTY3RmSE5n?=
 =?utf-8?B?Q2JUMlcyYVpJOFd0b0hFN2ZWNG51UU9hNFhmWGx5akJzcG1DdXM4eVFYRWxU?=
 =?utf-8?B?NVFqcU1RaHc4Wmd2SXJEcUh5clVuY2lnZU96eXFFUG1ENUsrMHFmMU1UdG9Z?=
 =?utf-8?B?eGlyQlR6TzE1S3h5eUlFcnN1S1NsbVdKTGtWUVB0UDZ0bFNOTmx5amNSblRS?=
 =?utf-8?B?ZHJhK1J5RkNUa294SEw0cTg1d1pzaHdzcCttRTg3Q1c4N1NEa21wS2E5R1Aw?=
 =?utf-8?B?VVZHQzlUdTVpbEY0NklDQUJlNStIU1dJQVIvcEtMQ3FxZ0wrVXB3dFhxbE5D?=
 =?utf-8?B?ZjE3WjlUSXNwNDgzeXB2VHRFeDdRK0dLdVBKL09vZkdBVmg3amduM1pFUlRS?=
 =?utf-8?B?QzBDYVV1UzA5aVRnUWdvNUU0VVNMcmV6WG1yN0lhMkp4TkNDRk8vSzdHZXE4?=
 =?utf-8?B?REwrYWJpa3FKOG1zRCsrK2FKb2RodFkxU2lFUXVBUVE5c3pzRjdCaVhXTTZY?=
 =?utf-8?B?RUZRQ1pXcWJtQWxGTWF5bnFFTzZWVUlCK1dOM0l1UmxML3lkYlRLVzdidmpq?=
 =?utf-8?B?a1pKQS9KRXp2UGp6SHI2RENrdENheEtqZldmMytJR3N3MFd0d0J0aW03RElo?=
 =?utf-8?B?RWVWT1l4Yk8xeEdOZDE3ZUcxTVlLOXZqMTRiVjVCdUZQVWk5d0FHdUVHSVV4?=
 =?utf-8?B?cGNRZ0t6V0x1SGJjamZwcDdMRFdzeDhEbHV6TldRa2Vyam4wcFY0MXZZSDVF?=
 =?utf-8?B?bDZiYWdZbWVGYll4MzlVRkpNM1lob0pYM3l3dGlTZEhQMEUrY0IxR1V2SXJk?=
 =?utf-8?B?L0JNTzBoMFZQelNXcyt1RVFKei8wYnJLUzFEbGlwRkFpd0RsbGc0N0hHODN3?=
 =?utf-8?B?Y2VjcVJBSHg5dTRES01FMkVGYy9pT0g3aHBFZjlmV1lBVER4MzF3MkFsWFp2?=
 =?utf-8?B?Z1RnN2tsNGR6NFUvdTVxOGt5MjFCd2N3YURFTDFodXJVU3l3V09zb3o0NG9u?=
 =?utf-8?B?Y1NzWU9CR3o5MnJCUWVLeUxuQ3dhUkpTU2JhVzdtQjZvTUMyZWJaV3N4NTBY?=
 =?utf-8?B?SjJ1WENOYkM5R0RzMWNXT21YNXMrcXJmRy95a2RLb05Bb3RnK2kwSXR0VU5V?=
 =?utf-8?B?dnNaOUZOWkxZNmZGMVNrd0RKZy9IcWthWnBWZFdQZHlVY0hEMWE1emh5WXJL?=
 =?utf-8?B?TUxhUXNKZ3pzN0VXUHJNbGVjazlnVDJTZ3ZGMERVN2xqY0VEOTJOdUdYVUFX?=
 =?utf-8?B?di9rT2dyYjZOZDNCNzZpMjJIdXJzbzUwKzJrNkNrbk9icnpwUzA5MlhXdElD?=
 =?utf-8?B?blgrdjFod3o0a1NaTzFHc1IzYlJhUytOMHc5bXpmUGpwczBTcW95TlJ2S1VB?=
 =?utf-8?B?VTF1Qi9vMXBCY0l0Q29XZ0dzZTBsNHpWdUt3aUloek1oZEN1OWJyWTBlQ1RF?=
 =?utf-8?B?Qjhhcjl2WHlxbm1BVjJIMlBoNmwyU2ZLcU05ZUpoRGZDbUZ2SFhicmxkeDdZ?=
 =?utf-8?B?Uks0YVJHKzdpcmk2MkhTZklDNCt5ZDcyUk05alJnUTI4UVBEb0VPdysrNk1G?=
 =?utf-8?B?aDE2ZE1wNkJJRk1aTjhDMXova3F2K1E5OGdnR0lzL0JVTVRKY3laeE8wSzlQ?=
 =?utf-8?B?VXZ3SEVST2RsRmh2NGdNRVZXQ0JBZGsvYXhsSlloV0wvOHJsQkU0Rm9lSEZj?=
 =?utf-8?B?QXUxVkNLaWVRNG9jZXVnd0xvd1p1UVZTYWhBOG1aZVVteWxiRWhnZ2U3Vkdt?=
 =?utf-8?B?WVZIT1ptRGl2MHpXMTN6Mm4zYlNZMDlCbUFhNGw1WE1HbFNyTEFQQXFiaHBO?=
 =?utf-8?B?T3VaQVJ5R29kcUJ4NHovT0JZdXVWT2RuSDRHOC9BRitNSWFDUVFzWkM3WFU2?=
 =?utf-8?B?RmtqSnQ4enhXM21LNkhtRStZZEhlWHRjTXltYzhSUE1IZHJrbEJabS9FTjh2?=
 =?utf-8?B?bFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfcceb99-5631-4a2e-f6fe-08daadc2f376
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2022 09:03:24.5942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sg04/XNmW5xtcbEClbqVW1v0/cTv7oizpVNlBl2h9qyYx8dUAM1GFV18zZINlpJuorsY6whTAz5oxKwbfQ3aw5XYVHEWcRSJBZUzMZjYBtw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4612
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/22] drm/i915: ELD precompute and readout
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
Cc: Takashi Iwai <tiwai@suse.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqYWxhIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgT2N0b2JlciAxMSwg
MjAyMiAxMDozMCBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNv
bT47IEthaQ0KPiBWZWhtYW5lbiA8a2FpLnZlaG1hbmVuQGxpbnV4LmludGVsLmNvbT47IFRha2Fz
aGkgSXdhaSA8dGl3YWlAc3VzZS5kZT4NCj4gU3ViamVjdDogW1BBVENIIDAwLzIyXSBkcm0vaTkx
NTogRUxEIHByZWNvbXB1dGUgYW5kIHJlYWRvdXQNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGVyZSB3YXMgc29tZSBk
aXNjdXNzaW9uIGFyb3VuZCBFTEQgcHJlY29tcHV0ZSwgc28gSSBkZWNpZGVkIHRvIGhhdmUgYQ0K
PiBxdWljayBsb29rIGF0IGhvb2tpbmcgdGhhdCB1cC4gVW5mb3J0dW5hdGVseSB0aGUgaTkxNSBh
dWRpbyBjb2RlIGlzIGEgYml0IG9mIGENCj4gbWVzcyBzbyBlbmRlZCB1cCB3aXRoIGEgcGF0Y2hi
b21iIG9mIGNsZWFudXBzLiBTb3JyeSBhYm91dCB0aGF0Lg0KPiANCj4gVGhlIGFjdHVhbGx5IGlu
dGVyZXN0aW5nIHN0dWZmIGlzIGF0IHRoZSBlbmQgb2YgdGhlIHNlcmllcy4NCj4gVGhlIHByZWN1
bXB1dGUrcmVhZG90K3N0YXRlIGNoZWNrZXIgaXMgcHJldHR5IHNlbGYgZXhwbGFuYXRvcnkgc3R1
ZmYgZm9yIHRoZQ0KPiBtb3N0IHBhcnQuDQo+IA0KPiBCdXQgSSB0aGluayB3ZSBuZWVkIHRvIGRl
Y2lkZSB3aGF0IHRvIGRvIHdpdGggdGhlIGhhcmR3YXJlIEVMRCBidWZmZXIgaW4NCj4gZ2VuZXJh
bC4gSXQncyB0b3RhbGx5IGJ1c3RlZCBhdG0gb24gSFNXIChhbmQgSSdkIGV4cGVjcHQgQkRXIGFz
IHdlbGwpLCBidXQNCj4gd2UgaGFkIG5vIGlkZWEgc2luY2Ugd2UgaGFkIG5vIHJlYWRvdXQrc3Rh
dGUgY2hlY2tlciBmb3IgaXQuDQo+IA0KPiBTbyBkbyB3ZSB0cnkgdG8gc2FsdmFnZSBpdCAoSSBn
dWVzcyB0byBtYWlubHkgYWN0IGFzIHNvbWUga2luZCBvZiAiZGlkIHdlDQo+IGVuYWJsZSBhdWRp
byBjb3JyZWN0bHk/IiBjYW5hcnkpIG9yIGRvIHdlIGp1c3Qgc3RvcCBwcm9ncmFtbWluZyBpdCBv
dXRyaWdodD8NCj4gQW5kIG9uIHdoaWNoIHBsYXRmb3JtcyBjb3VsZCB3ZSBkbyB0aGF0Pw0KPiAN
Cg0KSGVsbG8gVmlsbGUsDQoNCkkgaGF2ZSBnb25lIHRocm91Z2ggdGhlIHBhdGNoZXMgYW5kIHRo
ZXkgbG9vayBnb29kLiBIb3dldmVyLCB0aGVyZSBpcyBvbmUgYXNwZWN0IHRoYXQgaXMgc3RpbGwg
bm90IGNsZWFyIGZvciBtZShtYXkgYmUgSSBoYXZlIG1pc3NlZCBzb21ldGhpbmchKQ0KVGhlIGNo
YW5nZXMgZG9lcyBub3QgdG91Y2ggdGhlIGNhbGxiYWNrIGk5MTVfYXVkaW9fY29tcG9uZW50X2dl
dF9lbGQoKSB3aGljaCBpcyBhY3R1YWxseSB1c2VkIGJ5IHRoZSBhdWRpbyBkcml2ZXIgdG8gYWNj
ZXNzIHRoZSBFTEQuIFNvIHdlIGFyZSBzdGlsbCBzZW5kaW5nIG91dCBhbiAibm9uLXByZWNvbXB1
dGVkIiBlbGQgc3RvcmVkIGluIHRoZSBjb25uZWN0b3INCnN0cnVjdHVyZS4gU2hvdWxkIHdlIGJl
IHBhc3NpbmcgZWxkIGRhdGEgZnJvbSBjcnRjX3N0YXRlIGluc3RlYWQgaGVyZT8NCg0KUmVnYXJk
cywNCg0KQ2hhaXRhbnlhDQoNCj4gQ2M6IENoYWl0YW55YSBLdW1hciBCb3JhaCA8Y2hhaXRhbnlh
Lmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gQ2M6IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVu
QGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IFRha2FzaGkgSXdhaSA8dGl3YWlAc3VzZS5kZT4NCj4g
DQo+IFZpbGxlIFN5cmrDpGzDpCAoMjIpOg0KPiAgIGRybS9pOTE1L2F1ZGlvOiBzL2Rldl9wcml2
L2k5MTUvDQo+ICAgZHJtL2k5MTUvYXVkaW86IE51a2UgbGVmdG92ZXIgUk9VTkRJTkdfRkFDVE9S
DQo+ICAgZHJtL2k5MTUvYXVkaW86IFJlbW92ZSBDTC9CTEMgYXVkaW8gc3R1ZmYNCj4gICBkcm0v
aTkxNS9hdWRpbzogRXhyYWN0IHN0cnVjdCBpbGtfYXVkaW9fcmVncw0KPiAgIGRybS9pOTE1L2F1
ZGlvOiBVc2UgUkVHX0JJVCgpICYgY28uDQo+ICAgZHJtL2k5MTUvYXVkaW86IFVuaWZ5IHJlZ2lz
dGVyIGJpdCBuYW1pbmcNCj4gICBkcm0vaTkxNS9hdWRpbzogUHJvdGVjdCBzaW5nbGV0b24gcmVn
aXN0ZXIgd2l0aCBhIGxvY2sNCj4gICBkcm0vaTkxNS9hdWRpbzogTnVrZSBpbnRlbF9lbGRfdXB0
b2RhdGUoKQ0KPiAgIGRybS9pOTE1L2F1ZGlvOiBSZWFkIEVMRCBidWZmZXIgc2l6ZSBmcm9tIGhh
cmR3YXJlDQo+ICAgZHJtL2k5MTUvYXVkaW86IE1ha2Ugc3VyZSB3ZSB3cml0ZSB0aGUgd2hvbGUg
RUxEIGJ1ZmZlcg0KPiAgIGRybS9pOTE1L2F1ZGlvOiBVc2UgdTMyKiBmb3IgRUxEDQo+ICAgZHJt
L2k5MTUvYXVkaW86IFVzZSBpbnRlbF9kZV9ybXcoKSBmb3IgbW9zdCBhdWRpbyByZWdpc3RlcnMN
Cj4gICBkcm0vaTkxNS9hdWRpbzogU3BsaXQgIkVMRCB2YWxpZCIgdnMuIGF1ZGlvIFBEIG9uIGhz
dysNCj4gICBkcm0vaTkxNS9hdWRpbzogRG8gdGhlIHZibGFuayB3YWl0cw0KPiAgIGRybS9pOTE1
L2F1ZGlvOiBQcmVjb21wdXRlIHRoZSBFTEQNCj4gICBkcm0vaTkxNS9hdWRpbzogSGFyZHdhcmUg
RUxEIHJlYWRvdXQNCj4gICBkcm0vaTkxNS9zZHZvOiBFeHRyYWN0IGludGVsX3Nkdm9faGFzX2F1
ZGlvKCkNCj4gICBkcm0vaTkxNS9zZHZvOiBQcmVjb21wdXRlIHRoZSBFTEQNCj4gICBkcm0vaTkx
NS9zZHZvOiBEbyBFTEQgaGFyZHdhcmUgcmVhZG91dA0KPiAgIGRybS9pOTE1L2F1ZGlvOiBIb29r
IHVwIEVMRCBpbnRvIHRoZSBzdGF0ZSBjaGVja2VyDQo+ICAgZHJtL2k5MTUvYXVkaW86IEluY2x1
ZGUgRUxEIGluIHRoZSBzdGF0ZSBkdW1wDQo+ICAgaGF4OiBkcm0vaTkxNS9hdWRpbzogTWFrZSBI
U1cgaGFyZHdhcmUgRUxEIGJ1ZmZlciBzb3J0IG9mIHdvcmsNCj4gDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2c0eF9kcC5jICAgICAgICAgfCAgIDIgKw0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9nNHhfaGRtaS5jICAgICAgIHwgICAyICsNCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYyAgICB8IDc5MiArKysrKysrKysrLS0tLS0t
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uaCAgICB8ICAg
NyArDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW9fcmVncy5oICAgfCAg
ODggKy0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGNfc3RhdGVfZHVtcC5jICB8
ICAxNyArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAg
fCAgIDIgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
IHwgIDQzICsNCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAg
ICB8ICAgMiArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAg
ICAgfCAgIDQgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
ICAgICB8ICAgNCArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZv
LmMgICAgIHwgIDU0ICstDQo+ICAxMiBmaWxlcyBjaGFuZ2VkLCA2MDggaW5zZXJ0aW9ucygrKSwg
NDA5IGRlbGV0aW9ucygtKQ0KPiANCj4gLS0NCj4gMi4zNS4xDQoNCg==
