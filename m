Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A18E768B9F
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 08:13:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E08910E1A7;
	Mon, 31 Jul 2023 06:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A893410E1A7
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 06:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690784008; x=1722320008;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4Dy+I07vgCp3Y81WK7EDPDPN/byEY/hxufbTm6YTTc4=;
 b=mMLH1uvC4NxvKlkotHCzsYvvtpI+e4zcgHowwgv05FGmS9HW1H/xgbEV
 lAZb6hF8mqeezu5d8w+ngRPyfM1FSemOV6P+v6bbgOraJAV4qBcsB8EBg
 lMhjpwqYrUcanJFmLkfzBhKsurivTQFCcXJPTOaosGLMUHd6JQEMqaQ5w
 ER8PIiM4ciFwdUWeXJPEtkAknlNNAAtBB3hg7Og64qgTz0Haimom7P/RN
 QkzdOwwwXxeT6fkakrvAn4/f59CkF4DEAYH9tu70QQVIwB2XuNC72FLZQ
 WxPqRp2DFyIt0A+mkWYKOQEF/PczfO9QId5OPuFfS5txi8nsd1rC9r1I7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="435230336"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="435230336"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2023 23:13:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="901983750"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="901983750"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 30 Jul 2023 23:13:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 30 Jul 2023 23:13:14 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 30 Jul 2023 23:13:14 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 30 Jul 2023 23:13:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YnqWiK/VGSqoFbdjJV1tX5g1b+o4v8bB0tle+9G7i07O65iPonEfi/mkwcF2Pr1WVGCC8HC9FlT8N6CrVUocAb0KFDfKlUO9puVhLBnwP9gQ/TQSVwJ6Yoo6UocWSPBchIPHWckjCXhiZ7/hEV3aF0j+oVftMcgoLwEqdqGVpQWZfv0P3LM969cneI7iCNZ9Vq+elWIZ05pFFHGLZ+k/nYJbM+k0cIo415Boa9Kg8Pb6eAucWjjODiMRZx0FrYB/EG3gBG3icMQEMqu4gsP2FkgZTvFNIPT2Sp9CQklFUakC110KoLjl38bQm9WbBCJEiBwVAQN/nZvx87h05KpeFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Dy+I07vgCp3Y81WK7EDPDPN/byEY/hxufbTm6YTTc4=;
 b=jgSL0xUCohUNJ9K3AmH7teeqyqPlKjlinn4Lyk8VQelpAOTMAaTGjOcE7eVZ1VqqaTZbUtfMQpgfULniTw+IIC8FjdtGpkCK4NQAu7qTpBo+jnhMxIU7qSaI3+5jRB7s180FO3eICTwt8zB+8qSJy4x5Xlr/oErk8JcLvLHwjK+pjJo6todWrPN4s5IYF6JV2aY4cCkIrKPKQ+9ofLbF9IOdRJ0PRZJSrLxQ/hV5TwqjgKGmCZEW5IY8QOn/bWmkrU56HSsZV09MWB+bqaHZqeDBbAoj0N3RuBkmUTtoCKyQw3leUtXLVObtnM86oxMXUbg4cdP54sZQCDGYswvpFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB6619.namprd11.prod.outlook.com (2603:10b6:303:1eb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.39; Mon, 31 Jul
 2023 06:13:12 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6631.043; Mon, 31 Jul 2023
 06:13:12 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 0/6] Panel replay phase1 implementation
Thread-Index: AQHZwVLsDyfRyNV6SEi8eKst/UPD1q/TaYSA
Date: Mon, 31 Jul 2023 06:13:12 +0000
Message-ID: <4b28c4fc9f2f3507987c360eb9aede976491f8e1.camel@intel.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
In-Reply-To: <20230728124609.2911830-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB6619:EE_
x-ms-office365-filtering-correlation-id: 7ef163f0-8f22-484b-189b-08db918d388b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MF5XR1NdltW4quISGRfMV4kS1PihFaSySHEDn6rW73vqwZCp6rC0o1JUFQ8MCifPyFeViaTzR9zh/a4k5aJed6//0XOMlwgqVdnfKIE2T/3GOoHDrkxmskr1PgZe3rxxNB7oJgeCMkbJmjaW9v/y19x96+e09C2qAOUUFSIrA7L3XiE/ASsukBagofVj4aT6HJ2U74UmzrSyzliZdOOM8Y9dwGFaYeOujgxrp3ULneFUCtpl1KvZaVjIL+FMo1QRrFBN6bjdlKCX+umMv3yoflmFSbXY7aTorFIkAK1bNtQGPnyE2dCcqeWw3Rt9lpoadWFn+hl69R5n5r3eoThCt5nP35joxw92X6d6oxEWb/2YFZemy/59926QyLB79nw/dnM57oPKk/3lfSGeWzGN5/nOxOjEfiyE68W9/y8jMUsnSfrRdy2VYsqkUUC0AQmDQgqvs8gPIFXFfJdiQ/WWXQ9d6BBrNa7vzPZSopnIRI14aVrOSlGxFHOm3p+Xg5EVlOlnsZ4vdQ/t8FrIpC9TpvKZC/SJs1jfzkT3/D16lH79gjLtcwPrNTVGOa65/UIFwYMjNXBO/b2d28F4pvxhAiArsCgj3YjJ16XAJG4DU+4v2O2Oc3Z9T7AA5y5+LcLp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(396003)(376002)(136003)(451199021)(5660300002)(64756008)(66446008)(2906002)(66476007)(66556008)(66946007)(4326008)(76116006)(91956017)(316002)(110136005)(41300700001)(2616005)(71200400001)(6486002)(8676002)(8936002)(26005)(6506007)(186003)(107886003)(66574015)(83380400001)(478600001)(82960400001)(122000001)(38100700002)(36756003)(38070700005)(6512007)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WjJ2VHhMTW1FaXRpSlRtYk83dk1xVnU4TG5BWTJHYm1OTzBuelcyVHk4c3Fx?=
 =?utf-8?B?b2g4TThiektuczJqQzJUQzkxcDNBdWVhaTc5Y29raFA4MjF3eUlhOXNjeXFs?=
 =?utf-8?B?WkdHd1p1djVqbHY1NzF5c1lZS0VEM3hBblpCODFRNnVpenR6VTFLMlhPUmpB?=
 =?utf-8?B?cjRUU2dic1lGSmdoeXR2YjJqVWtLa1B3UFhDd21vWStNR01wdTZhZGpVNnV6?=
 =?utf-8?B?QzVQUDdCWU8xbHpJZjhoWmk1OE1jNVdxbDJJWDN3WnQzTCtBSGoxM0pqV3lG?=
 =?utf-8?B?V2FDRFBTZmdsWXNRVFIrOVhaT2Z1Z2NKZmhFd2o5eWYwUEVrRTdPQ3BMZ3BU?=
 =?utf-8?B?N09tQXZVanZZL2g2aHF4UkNWSUpZY0JpWlduRWU1OFpGaHFaR0h5TDFjOXgy?=
 =?utf-8?B?UlRSbW9uVk42Y21KZ3lGRUFxMGhPY2wxTVZSakVXWWh4NFhMdElOTE05M3dD?=
 =?utf-8?B?NExFT3hrbjZUNWJhVnZJODRZcG0vaWFTaXNDdHc3amRDNEJJVy9nYnFIK1Fh?=
 =?utf-8?B?NGQ4MzBwbDFzODRpa0ZUeVI0R2dqOFB3dXlWRVRVb3cyaXRVeGNUdDdTZmhq?=
 =?utf-8?B?M2pmcC94bCtJVnFRTkR3M05NV3BmbUNjUm02WEl3ZjVtRVEvaGlNcDJVWWlS?=
 =?utf-8?B?QktiaEFHbTdhbzZBaWl0bVV4aE1KVHF3Wk1ZQ0wvSzBseWx3SEw4V0hFODZF?=
 =?utf-8?B?cHdSSWN6NHllMTd4cjdSV1hBZWtHNThycjkwaTY2am9QTUV1cUFyTi9Ha0Fs?=
 =?utf-8?B?WGZiUHpwU1QzRUNKZEtzWWZQdVV1S01GNXUvMEpIbXNnNlo2dVhkNmQ0ZXlX?=
 =?utf-8?B?bExEOFV6a3dReHZrekgyaWJkMkQ1MWZxT1BObWIwYWI4Q2dMd045Z3M3bS9n?=
 =?utf-8?B?bHJBNTRTY0ZWMVdjUklTSExVNmJBakVNU0hMMm1kK0VEZFY3VUNidmJ4dU5o?=
 =?utf-8?B?c2RHZGY2Yjg5UlpBSVNSOVpOSVNheE5pNmIvNmJ2V29iUEJzdnN6eGUrL2JP?=
 =?utf-8?B?dENxSnA5SjRZazVhNDhUUkpNaWRwVCtiQ2k1Wjk2cDFwZ0V2U3VzR2YwZ21n?=
 =?utf-8?B?TnNTRUUzd3BxVU1tS0hLdjBldW9YalZsbmhqVDU5cU1WczF6OWNWdU1nMlhK?=
 =?utf-8?B?K1N4VXRqOGlkZjdUbjAvRzZCV2RtRlE2T21xVW1HeFlRc2cvTTZhalk0eWRO?=
 =?utf-8?B?Zk5hQ0xLdGtBem9GZ1BvTEErNlZtYUs2ZWlNaDh6WENBRGUvcXMwMHRTOWp0?=
 =?utf-8?B?SFhFZzZQL2RIT3czM3hOVGJwajNyN0Iwa09NSEhidURHejBBQWFJTHhIdjJJ?=
 =?utf-8?B?ckUrdHFBRUJ1RnM1ZnhSZ2tUNUJTRG5Cb1h2enNPdWUrRUVPajNDYk1NQWNp?=
 =?utf-8?B?ZXBTMVVTamVLSG0ybCtaZ1ZpTVhJVVFMd2ZsSmJEZXlxUElFTE5URENoSk1a?=
 =?utf-8?B?dmVWSXFUYVJUbEE5MVF5bWdTRHFCcmdiS3hDMGhCNlhqNjVGQzh0Wm83Y2JB?=
 =?utf-8?B?dUlYa3cwVnE2dTd2cWF2d055VFVhSmd6SkVHaUpaQTN5N1UzaVp6UU5tQ241?=
 =?utf-8?B?cElJWFAzaFozK0lOdWtEU3ViUlFLdTFoWlJEMlY3eE0zbm1mSWJIemJweWdB?=
 =?utf-8?B?L21RZEdobTU1NFRXdXRFL2ZxUTJoS2JMYktKY0RGY0U3Q3phV1M5ZFZEY05n?=
 =?utf-8?B?QW52NDk2TGdCYzl0ZGhUVWZ4OWY5NTVnbkpVRlVQd29lSDlrOGhBOGkzKzRJ?=
 =?utf-8?B?WWRocTgyQVRmZUxLRDhmaWpMdTV5SERnaWhidk04V0xvWU5vNTVDNC9PV25U?=
 =?utf-8?B?VVJVYzFielM0UkhRMEhXc3p4U3hVVzczbkJYVXk1aGlwWGRJM0pNT3VuYTRl?=
 =?utf-8?B?SXp1c3ltNlVIejFhdVZOWS85ZmRqOFlLMFJNL3hwKy9JOXFST0piR004RzFq?=
 =?utf-8?B?REFwL0RqMDZERHRHMTNPMXA2eGRmL1pqa2YxMTFrL3JydytKM25WRFZtMXB6?=
 =?utf-8?B?c2lvSTgzc1M2bVdCWkMxK3c3eWp6Vld5L0Q3Z0FnVG5WV2syYzBqQk0zRmV6?=
 =?utf-8?B?L3JCREsyNGhObzBxekNBN1A1eVFPMG9aRm5aOTNTNDRUc0o5dXJBOE9jRjIy?=
 =?utf-8?B?U2VJcXZrYTdobGh5b1B0QlI3TjJYOTVnaGdmcnFFVGJaZnhTU1F5Q3lhSEF6?=
 =?utf-8?B?UlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <91778DCF82648940879F629A2D6FAC27@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ef163f0-8f22-484b-189b-08db918d388b
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 06:13:12.7574 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: adnArLT7emEA4nTkLc3LmChcmBapaeTuP+Xl7x/jpQqWtAW28n6NUtFz90rnPs2kfM0jbB+TkYjLVuVvCM9GQWawgvZjjUClMSasWyeMLxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6619
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 0/6] Panel replay phase1 implementation
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

T24gRnJpLCAyMDIzLTA3LTI4IGF0IDE4OjE2ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiA+IFBhbmVsIFJlcGxheSBpcyBhIHBvd2VyIHNhdmluZyBmZWF0dXJlIGZvciBEUCAyLjAgbW9u
aXRvciBhbmQNCj4gPiBzaW1pbGFyDQo+ID4gdG8gUFNSIG9uIEVEUC4NCj4gPiANCj4gPiBUaGVz
ZSBwYXRjaGVzIGFyZSBiYXNpYyBlbmFibGVtZW50IHBhdGNoZXMgYWRkZWQgb24gdG9wIG9mDQo+
ID4gZXhpc3RpbmcgcHNyIGZyYW1ld29yayB0byBlbmFibGUgZnVsbC1zY3JlZW4gbGl2ZSBhY3Rp
dmUgZnJhbWUNCj4gPiB1cGRhdGUgbW9kZSBvZiBwYW5lbCByZXBsYXkuIFBhbmVsIHJlcGxheSBh
bHNvIGNhbiBiZSBlbmFibGVkDQo+ID4gaW4gc2VsZWN0aXZlIHVwZGF0ZSBtb2RlIHdoaWNoIHdp
bGwgYmUgZW5hYmxlZCBpbiBhIGluY3JlbWVudGFsDQo+ID4gYXBwcm9hY2guDQo+ID4gDQo+ID4g
QXMgcGVyIGN1cnJlbnQgZGVzaWduIHBhbmVsIHJlcGxheSBwcmlvcml0eSBpcyBoaWdoZXIgdGhh
biBwc3IuDQo+ID4gaW50ZWxfZHAtPnBzci5wcl9lbmFibGVkIGZsYWcgaW5kaWNhdGUgcGFuZWwg
cmVwbGF5IGlzIGVuYWJsZWQuDQo+ID4gaW50ZWxfZHAtPnBzci5wcl9lbmFibGVkICsgaW50ZWxf
ZHAtPnBzci5wc3IyX2VuYWJsZWQgaW5kaWNhdGVzDQo+ID4gcGFuZWwgcmVwbGF5IGlzIGVuYWJs
ZWQgaW4gc2VsZWN0aXZlIHVwZGF0ZSBtb2RlLg0KPiA+IGludGVsX2RwLT5wc3IucHJfZW5hYmxl
ZCArIGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkICsNCj4gPiBpbnRlbF9wc3Iuc2VsZWN0aXZl
X2ZldGNoIGVuYWJsZWQgaW5kaWNhdGVzIHBhbmVsIHJlcGxheSBpcw0KPiA+IGVuYWJsZWQgaW4g
c2VsZWN0aXZlIHVwZGF0ZSBtb2RlIHdpdGggc2VsZWN0aXZlIGZldGNoLg0KPiA+IFBTUiByZXBs
YXRlZCBmbGFncyByZW1haW4gc2FtZSBsaWtlIGJlZm9yZS4NCj4gPiANCj4gPiBOb3RlOiBUaGUg
cGF0Y2hlcyBhcmUgbm90IHRlc3RlZCBkdWUgdG8gdW5hdmFpbGFiaWxpdHkgb2YgbW9uaXRvci4N
Cg0KQ291cGxlIG9mIGdlbmVyaWMgY29tbWVudCBjb25jZXJuaW5nIHRoZSB3aG9sZSBzZXQ6DQoN
Ckkgc2VlIGJvdGggUFIgYW5kIFBBTkVMX1JFUExBWSBiZWluZyB1c2VkIGluIHlvdXIgcGF0Y2hl
cy4gSSB3b3VsZA0KY2hvb3NlIGVpdGhlciBQUiBvciBQQU5FTF9SRVBMQVkgLiBTYW1lIHRob3Vn
aHQgb24gU1UgYW5kDQpTRUxFQ1RJVkVfVURBVEUuIEFzIFBBTkVMX1NFTEZfUkVGUkVTSCBpcyBQ
U1IgSSBkb24ndCBzZWUgd2h5IFBSIHNob3VsZA0KYmUgUEFORUxfUkVQTEFZLiBBbHNvIFNVIGlz
IHdpZGVseSBhbHJlYWR5IHVzZWQgaW4gcHNyIGRlZmluaXRpb25zIEkNCndvdWxkIHVzZSBpdCBm
b3IgcGFuZWwgcmVwbGF5IGRlZmluaXRpb25zIGFzIHdlbGwuDQoNCkJSLA0KDQpKb3VuaSBIw7Zn
YW5kZXINCg0KPiA+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4NCj4gPiANCj4gPiBBbmltZXNoIE1hbm5hICg1KToNCj4gPiDCoCBkcm0vcGFuZWxyZXBs
YXk6IGRwY2QgcmVnaXN0ZXIgZGVmaW5pdGlvbiBmb3IgcGFuZWxyZXBsYXkNCj4gPiDCoCBkcm0v
aTkxNS9wYW5lbHJlcGxheTogQWRkZWQgSEFTX1BBTkVMX1JFUExBWSgpIG1hY3JvDQo+ID4gwqAg
ZHJtL2k5MTUvcGFuZWxyZXBsYXk6IEluaXRpYWxpemF0b24gYW5kIGNvbXB1dGUgY29uZmlnIGZv
ciBwYW5lbA0KPiA+IMKgwqDCoCByZXBsYXkNCj4gPiDCoCBkcm0vaTkxNS9wYW5lbHJlcGxheTog
RW5hYmxlIHBhbmVsIHJlcGxheSBkcGNkIGluaXRpYWxpemF0aW9uIGZvcg0KPiA+ID4gRFANCj4g
PiDCoCBkcm0vaTkxNS9wYW5lbHJlcGxheTogZW5hYmxlL2Rpc2FibGUgcGFuZWwgcmVwbGF5DQo+
ID4gDQo+ID4gSm91bmkgSMO2Z2FuZGVyICgxKToNCj4gPiDCoCBkcm0vaTkxNS9wc3I6IE1vdmUg
cHNyIHNwZWNpZmljIGRwY2QgaW5pdCBpbnRvIG93biBmdW5jdGlvbg0KPiA+IA0KPiA+IMKgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaMKgwqAgfMKgwqAgMSArDQo+
ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKg
wqAgOSArLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jwqDC
oMKgwqDCoMKgIHzCoCA0NCArKysrLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAxNTggPg0KPiA+ICsrKysrKysrKysrKystLS0tLQ0K
PiA+IMKgaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfMKgIDExICsrDQo+ID4gwqA1IGZpbGVzIGNoYW5nZWQsIDE2OCBpbnNlcnRp
b25zKCspLCA1NSBkZWxldGlvbnMoLSkNCj4gPiANCg0KDQo=
