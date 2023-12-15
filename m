Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEFD8149D9
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 15:00:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D749610EA19;
	Fri, 15 Dec 2023 14:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9FB810EA19
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 14:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702648837; x=1734184837;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eOiU+Irf5/yTxcJOzX4Ck3zKnzALwzbpmi2Bl6GntX0=;
 b=PVKDY3ntdt5A3cotnnKeSHyrXcyxXVnOZd/ZeBRKGPKTv9nVYgU6hCfF
 bk0b0yqBKRKDg6TZtFUvKWHITqxEx0XdMhiKJJCvxgkAJ9IOn7Tk/rsgo
 85tadUZLoDR6zyQiviRGAZSCFR3V3bF1Znkr8xOU1JEYrLAXP+x5rgzF6
 2mzx9ivjF2oO3vqxCeopfirxbley62yU4b0UNTIMxfPzNEOkhIOHYTWvs
 qaExP/Wu6U8Omx87sy/X7lRxn21ArFTyJQ+ujR8HiCQrl568osoWGgvdH
 oqVaxl2FqxJUQ2UtRRZwR1H+c/j2ddAmPzXKYtYeiA02XF0nkioHQmQwL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="2130576"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; 
   d="scan'208";a="2130576"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 06:00:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="865413940"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="865413940"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 06:00:32 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 06:00:28 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 06:00:27 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 06:00:27 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 06:00:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SKv6BbjQP4CtBzioAlMC85vhS65XYU1ByqgnXx7Z00Eds1UpvPYwL0m0kuNYxzpisP55RA8WE8eyNf+v4XmekZQ2mQ6/QHDWKVF344oSjdHDeQS6iOngjuqUINFSShBHG/sQy4DgzuBbMMZyKwAGQHG/WYMv5Ox7k0gQN0NCuh9diGSCOLrEcI7ZayMQnq9Qlu6fhS+xbaMJa8skRXfYH74ksWWslYiTlVLrQ3nyRolhOZqRR4582qeSX0edieip4zBVqnjeta4qWRNRoQlr8kAFxfWqgkcXd4mRtrNdsNk+IUmvPHJZ5biEh08oJpN+hzOjO81x4gYrF1R7OAH7RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eOiU+Irf5/yTxcJOzX4Ck3zKnzALwzbpmi2Bl6GntX0=;
 b=NjXfkfQMK//Koxn0Wj6ON9Tqc8D/Nlt+3iNKvz2iftiKN1CVKPnyg4hJdUsNFogNoZS2sO82qpxC1RajjcfwLy3M+XjpGhoQ1tEv2EHy44l1dD2V7/Ur0Rtpr17OXcKN8Wh4jvFntNgOiqnVf/9eIvAh+SO+x6YIQhSD3Ywjz8wdBsQInaHqWqP7SChDhwW8Dvehq0Paq3cxaztAG4tvzC9wJYBfPAs2EuqhC0ft4lt2AAVM9eqBW2XEtwk20Ra3CQDdAaYuk31GXTpgQaP3FYcQm0qWIYnvPli6QtMKAKrpJVY/XsrA3cX5hB9fExB6gQPj4lnc3YN9zpz+r9S6Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM4PR11MB5550.namprd11.prod.outlook.com (2603:10b6:5:38b::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.32; Fri, 15 Dec
 2023 14:00:26 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7091.030; Fri, 15 Dec 2023
 14:00:25 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: C20 clock state verification
Thread-Topic: [PATCH] drm/i915/display: C20 clock state verification
Thread-Index: AQHaLy3CkqUvMtxGfEWO2UNtuuP+CbCqCf+AgAACOwCAAFHU0A==
Date: Fri, 15 Dec 2023 14:00:25 +0000
Message-ID: <MW4PR11MB7054CB8800BAB88AB9CA3B3EEF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231215080057.663792-1-mika.kahola@intel.com>
 <ZXwUC0RMKLeH9PDe@ideak-desk.fi.intel.com>
 <ZXwV6vZpNywCu/Md@ideak-desk.fi.intel.com>
In-Reply-To: <ZXwV6vZpNywCu/Md@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM4PR11MB5550:EE_
x-ms-office365-filtering-correlation-id: 7f6b750b-ffac-49e7-014d-08dbfd762fc6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SFGW0NMrEBDy0VlJ1/9sghgNKXv3j405b6S/SwyMyqZ+dTMHPNQW/ucIMpoJSVbkYV68NlMcZovHEtNCIrGxBTn/PNLtmCiS3OdGY6YMa8iUCIZtpIAJAQBgpSpLD9a6bklAb1bm8gPAsvnOGkPwNLVVo3ISgai/+GJA0l+KJtJm+smHcVwR0MmnoTacu8fBLw+ZkN37FEWocYM9nO0Rl1lOhhESpA5VMHNq3ehKWLOmOfUjROtqAL2M4zDoh/SEbK0Obj/n16eb1APqjqCpdR41qx/mMD3xc85Ik6ilVTegkTrznv04gf8CASRR463m36k2YBc/cE1x852QfuiD5jCEWJPI5BiSk3BGmKhLQ3dQ4UN8CuXfuzVJprbuNN1/IG2IoXG3E+HdUGX1eVJxgh6SFMwd1B5LYa20vtS2yUUeDUCVDjHr1wJ3VDqwjj4YeeAttBZE+uSx68pQgxxYzBFKcJj+z3BORZBs8suKU9hNxncyfAn+qY2kEmF2alF2c2KzHyi0fmlw8msKt/Qwe1dvvEVjoIo3EbOMhVmNFIcj+aQjZu7vvKdnl2B8STa0OtANNQABdH3a9xdl542DRmpHLsfmhMq2d/vahsJU1Vhx+8aShw3A/PiqWKxdQHZq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(366004)(346002)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(55016003)(122000001)(82960400001)(2906002)(38070700009)(33656002)(5660300002)(15650500001)(83380400001)(53546011)(6506007)(38100700002)(71200400001)(7696005)(9686003)(26005)(478600001)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(41300700001)(86362001)(110136005)(8676002)(8936002)(52536014)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGlJOFJ5SE1pZUpVTi9GM2hISWY3VW9WUytBSkxwNEhOaCtTK0tpOS94a1hY?=
 =?utf-8?B?eGx3VWUreldtK3lVM2VZSWZKMTNHaGlXYWFEOWE4NDVNNCtucCtFdHd4cXJB?=
 =?utf-8?B?amZGOWxjbnlPY1NaOUlUZU4vQlgybS9BeFZYQzlRV0tIRDF1aDgwRVJHcnJG?=
 =?utf-8?B?bHdJZkZSSDk0Uy81cHpPRzFFcWpKMTBQV2RMSmdEUDlReFJpQVdvbFluNUZQ?=
 =?utf-8?B?UGR0MjRZYXh1WkZpWkpzcVZoL2JPTmVZazJWVzFMd213VkZCc3FOZmNXREIz?=
 =?utf-8?B?aGNaVmdpekpTK0dNckNYUXp1dXhvVW5TNUpxUU5SbUNMaVhRMlZRY3AwTzBZ?=
 =?utf-8?B?Y08xWnlZd2lvTDNrTnNWMHNVQ2hRS1dYcG1yT3lBTGtaRDM3VnBBMk91aWVP?=
 =?utf-8?B?bWFGSWZuT3I3S09NVi9UUFVUV0NtSTBxNGZUdTg2M3hHdm5uQjhqSHZBK215?=
 =?utf-8?B?eGdmRzF4Zk41aGREd2Y1cmJtMXJJZmcrUndFcGRWKzlLc2hYeExXRHhwV2Z6?=
 =?utf-8?B?eC9LUEQwc1NnNWJWbklvb05BUXdrSTNHWDN1UlZkMjA0cHk3dEpPN0tGODd1?=
 =?utf-8?B?aFlaajUyMlEyR2FpMWpYL3JGdStVUjV1WE5WanozeWxhMnVwM0lRU2ppeWRF?=
 =?utf-8?B?R2tZdXJWczRkc1EyVVhSSXlyaE51bnpRTERnbEJ4bW0zVGEyamFPaHlFN2Jt?=
 =?utf-8?B?RG0yUmNNcDYxanBSdDE5dFpwQk1QR0N0blY1WXBNRDhzV094eHF4V281QkZF?=
 =?utf-8?B?Q0lrczFrVlRYUlpSUFVGcTFyZ2YxdWkvb3lLNDZ5T1RhUkQ1VjNENWdaK25O?=
 =?utf-8?B?S3ovTFFXTm85bjVMUWE2NXJMV3NHS290aUZJeS81Q2hhQTJhbi8xSlJBUzdj?=
 =?utf-8?B?TStCQkZwM3c0QjVHQkRUTjM5M3UxaTRDL3dVeitDK3N5Ymh6cVhWSi9QZXRW?=
 =?utf-8?B?U0lPbDVRSGpGb0NXT2pzTlBSUG91R2hZZXp1R2RQclBiZnkxQWcyUWZQNVRy?=
 =?utf-8?B?NjArYkwvVVNQTjVBREgrK2ttM2RKZlVwQ2tTa04wSVBwa0IxRDhZWUxFRk44?=
 =?utf-8?B?S2t0Q1FkSGJxc1FvaTZDQmdNc3pIdmpydmxxakFUeXhSSWtoUHhhcVhpQUhj?=
 =?utf-8?B?N0pwQ2lyR3NQNnM1Q2RkUDh6RTQyZXgvbG9LbzJkRzZTNGUyYkhxVm9UZjBX?=
 =?utf-8?B?RWt6emtNV3RzSTQ2c09QTit3TU1rMlg4WDY3aTQ1SEFkb051NG95RU9ySFBu?=
 =?utf-8?B?bDhGb1pma0ROSzU5SHRGMW1Xakk0eEg0ZDNUTnhiMDFGdTJjeUhJd2pEMUNt?=
 =?utf-8?B?dFljbmk0MEJWbGw0bkpNWGhSR3BnNkV2d0VDbmg4Sko1bzV2V21oMWlKRnZC?=
 =?utf-8?B?d3BrZ1pJUE9wUTdqS2VESGJQd1BBSHdwL3hzUnQ5eVVzd3NGZDZDQzhaVDUx?=
 =?utf-8?B?Y2xqVVBoRGhLVGQ0QVFpZ2NudWFhWDVJMkNnNVJWRm1mcU5PT0xoQjFtNGdq?=
 =?utf-8?B?Z1ZZeGQ5VXJXNVlpLzdpdERKejh6UXM0Qzd3MUlDbWh4Qm1iclg4c0VRUzNu?=
 =?utf-8?B?Z25uOEhBQmU1OE5QNGN2ZW9oNi91SmdpbkJxUzlaeGdqK2d1Sm42VndVRGJp?=
 =?utf-8?B?enhrMFdWeHFNcFZmeDdNc0RyVExTaFl4Z2lPUndLeGM1MnFmdlBQb3VvMUlh?=
 =?utf-8?B?RzlTeGtCZW52Sk45WWJtVld3dHhFVHlwMU00ajVMSTl3cUFySFpxdk5Gc0I0?=
 =?utf-8?B?SE5sUDB6aFRZcXZHYjdZdXNjODJyQ0F3SnA3NnFGU3pZcUIwUjNQekNwaDN4?=
 =?utf-8?B?NksrZFlDNVNVb1hJY0czOG95eURQc01SQWVSbTNnNEJwNk5CRURlUjdLRHpX?=
 =?utf-8?B?ekQvTEtlaDl6bWM2ZkliUjhSOXp2S0YzSGE3Z29HamNuSlIvT1FYaDIvS0ZW?=
 =?utf-8?B?dkNOdkxyZjVJdU9KMWgwY0pPOFcxZXVFQXZ2bjE4Si83YWZyNzA2TVlBYUdE?=
 =?utf-8?B?UWFKUXgvMm9SeWlxay9BNlB1cVRnaTdyUSt2ZHVRTnJqQXl6cW02OWF3YU1P?=
 =?utf-8?B?THJHNzhWc3pwNzNwLzRmS2ppdmM0QVJZY0lvdHJrMTlqR1RremRwRTEyUXBJ?=
 =?utf-8?Q?7uhbiHpQQwe43SLTzZWfznTtG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f6b750b-ffac-49e7-014d-08dbfd762fc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2023 14:00:25.2372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tsoATVLkSyKQ1odQCsoLN1gzwzTv1NIXE94YMzjEgxn9T8w0TyEmIvK4TxqwEUo16fS9/Z+SBOts361+Tj6qIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5550
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIERlY2VtYmVyIDE1LCAyMDIzIDExOjAyIEFN
DQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvZGlz
cGxheTogQzIwIGNsb2NrIHN0YXRlIHZlcmlmaWNhdGlvbg0KPiANCj4gT24gRnJpLCBEZWMgMTUs
IDIwMjMgYXQgMTA6NTM6MzZBTSArMDIwMCwgSW1yZSBEZWFrIHdyb3RlOg0KPiA+IE9uIEZyaSwg
RGVjIDE1LCAyMDIzIGF0IDEwOjAwOjU3QU0gKzAyMDAsIE1pa2EgS2Fob2xhIHdyb3RlOg0KPiA+
ID4gQWRkIGNsb2NrIHN0YXRlIHZlcmlmaWNhdGlvbiBmb3IgQzIwLiBTaW5jZSB3ZSBhcmUgdXNp
Z24gZWl0aGVyIEEgb3INCj4gPiA+IEIgY29udGV4dHMsIHdoaWNoIGFyZSBzZWxlY3RlZCBiYXNl
ZCBvbiBjbG9jayByYXRlLCB3ZSBmaXJzdCBuZWVkIHRvDQo+ID4gPiBjYWxjdWxhdGUgaHcgY2xv
Y2sgYW5kIHVzZSB0aGF0IGNsb2NrIHRvIHNlbGVjdCB3aGljaCBjb250ZXh0IHdlIGFyZQ0KPiA+
ID4gdXNpbmcuDQo+ID4NCj4gPiBDb3VsZCB0aGUgZGVzY3JpcHRpb24gYmUgY2xlYXJlciB0aGF0
IHRoZSBwYXRjaCBfZml4ZXNfIHRoZSBjb250ZXh0DQo+ID4gc2VsZWN0aW9uPyAoQWxzbyB0aGUg
c3ViamVjdCBsaW5lIHNob3VsZCBhbHdheXMgc2F5IF93aGF0XyB0aGUgcGF0Y2gNCj4gPiBkb2Vz
LikNCk9LLCBzaG91bGQgSSBhZGQgdGhlIGZpeGVzIHRhZyBhcyB3ZWxsPyBJIHdpbGwgcmV3b3Jk
IHRoZSBjb21taXQgbWVzc2FnZSB0byBiZXR0ZXIgZGVzY3JpYmUgd2hhdCdzIGdvaW5nIG9uIGlu
IHRoaXMgcGF0Y2guDQoNCj4gPg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fo
b2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyB8IDggKysrKysrKy0NCj4gPiA+ICAx
IGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPg0KPiA+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5j
DQo+ID4gPiBpbmRleCA3NzVjMWM0YTg5NzguLjY3NTdlOWY5NDFlNCAxMDA2NDQNCj4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4g
QEAgLTMwNzksOCArMzA3OSw5IEBAIHN0YXRpYyB2b2lkIGludGVsX2MyMHBsbF9zdGF0ZV92ZXJp
ZnkoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gIAljb25zdCBz
dHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlICptcGxsX3N3X3N0YXRlID0gJnN0YXRlLT5jeDBwbGxf
c3RhdGUuYzIwOw0KPiA+ID4gIAlib29sIHVzZV9tcGxsYTsNCj4gPiA+ICAJaW50IGk7DQo+ID4g
PiArCWludCBod19jbG9jayA9IGludGVsX2MyMHBsbF9jYWxjX3BvcnRfY2xvY2soZW5jb2RlciwN
Cj4gPiA+ICttcGxsX2h3X3N0YXRlKTsNCj4gPiA+DQo+ID4gPiAtCXVzZV9tcGxsYSA9IGludGVs
X2MyMF91c2VfbXBsbGEobXBsbF9od19zdGF0ZS0+Y2xvY2spOw0KPiA+ID4gKwl1c2VfbXBsbGEg
PSBpbnRlbF9jMjBfdXNlX21wbGxhKGh3X2Nsb2NrKTsNCj4gPg0KPiA+IEl0J3MgbXBsbF9od19z
dGF0ZS0+dHhbMF0gQzIwX1BIWV9VU0VfTVBMTEIgd2hpY2ggdGVsbHMgdGhlIEhXIHdoaWNoDQo+
ID4gY29udGV4dCB0byB1c2UsIHNvIEkgdGhpbmsgaXQncyBiZXR0ZXIgdG8gdXNlIHRoZSBzYW1l
IGNvbmRpdGlvbiBoZXJlLg0KDQpNYXliZSBJIHdpbGwgZGl0Y2ggdGhlIHVzZV9tcGxsYSBjb21w
bGV0ZWx5IGFuZCBnbyBkaXJlY3RseSB3aXRoDQoNCmlmIChtcGxsX2h3X3N0YXRlLT50eF0wXSAm
IEMyMF9QSFlfVVNFX01QTExCKSB7IC4uIH0NCg0KaW5zdGVhZD8NCg0KPiANCj4gWW91IGNvdWxk
IGFsc28gYWRkIGEgY2hlY2sgaW50ZWxfYzIwX3VzZV9tcGxsYShjbG9jaykgbWF0Y2hlcyB0aGUg
YWJvdmUgZmxhZy4NCj4gDQo+ID4NCj4gPiA+ICAJaWYgKHVzZV9tcGxsYSkgew0KPiA+ID4gIAkJ
Zm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUobXBsbF9zd19zdGF0ZS0+bXBsbGEpOyBpKyspIHsN
Cj4gPiA+ICAJCQlJOTE1X1NUQVRFX1dBUk4oaTkxNSwgbXBsbF9od19zdGF0ZS0+bXBsbGFbaV0g
IT0NCj4gPiA+IG1wbGxfc3dfc3RhdGUtPm1wbGxhW2ldLCBAQCAtMzExMCw2ICszMTExLDExIEBA
IHN0YXRpYyB2b2lkIGludGVsX2MyMHBsbF9zdGF0ZV92ZXJpZnkoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gIAkJCQljcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMt
PmJhc2UubmFtZSwgaSwNCj4gPiA+ICAJCQkJbXBsbF9zd19zdGF0ZS0+Y21uW2ldLCBtcGxsX2h3
X3N0YXRlLT5jbW5baV0pOw0KPiA+ID4gIAl9DQo+ID4gPiArDQo+ID4gPiArCUk5MTVfU1RBVEVf
V0FSTihpOTE1LCBod19jbG9jayAhPSBtcGxsX3N3X3N0YXRlLT5jbG9jaywNCj4gPiA+ICsJCQki
W0NSVEM6JWQ6JXNdIG1pc21hdGNoIGluIEMyMDogUmVnaXN0ZXIgQ0xPQ0sgKGV4cGVjdGVkICVk
LCBmb3VuZCAlZCkiLA0KPiA+ID4gKwkJCWNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5u
YW1lLA0KPiA+ID4gKwkJCW1wbGxfc3dfc3RhdGUtPmNsb2NrLCBod19jbG9jayk7DQo+ID4NCj4g
PiBJIHRoaW5rIHRoZSBpbnRlbF9jcnRjX3N0YXRlOjpwb3J0X2Nsb2NrIFNXL0hXIHN0YXRlIHZl
cmlmaWNhdGlvbiBpcw0KPiA+IGVxdWl2YWxlbnQgdG8gdGhlIGFib3ZlLCBidXQgaXQncyBnb29k
IHRvIHZlcmlmeSBpdCBoZXJlIGFzIHdlbGwuIEkNCj4gPiB3b3VsZCBzdG9yZSBod19jbG9jayB0
byBtcGxsX2h3X3N0YXRlLT5jbG9jayBpbg0KPiA+IGludGVsX2MyMHBsbF9yZWFkb3V0X2h3X3N0
YXRlKCkgdGhvdWdoLg0KV2VsbCwgY2xvY2sgaXMgcGFydCBvZiBwbGwgc3RydWN0dXJlIGFueXdh
eSwgc28gaXQgbWlnaHQgYXMgd2VsbCBiZSBjaGVja2VkIGhlcmUgdG9vLg0KDQpJIHdpbGwgc3Rv
cmUgaHcgY2xvY2sgdG9vIGluIGludGVsX2MyMHBsbF9yZWFkb3V0X2h3X3N0YXRlKCkNCg0KVGhh
bmtzIQ0KTWlrYSAgDQoNCj4gPg0KPiA+ID4gIH0NCj4gPiA+DQo+ID4gPiAgdm9pZCBpbnRlbF9j
eDBwbGxfc3RhdGVfdmVyaWZ5KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+
ID4gLS0NCj4gPiA+IDIuMzQuMQ0KPiA+ID4NCg==
