Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 216E548C271
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 11:41:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C63D113C55;
	Wed, 12 Jan 2022 10:41:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D78B113C55
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 10:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641984077; x=1673520077;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version:content-transfer-encoding;
 bh=AJvWdS4lzorGnSqn/2TgCbSigiOsEJa5gr1dnRvDDw0=;
 b=emqlLDN1a66BFKDZNodCeI57KL1XZX147uFTBWYoVhPOLiacGpFQhYur
 8vS3RyKLEJONC/jpcJlEK/WS5Tq/ho/CS5xAEVVstgmBiSOhvz+0cP7o4
 KLSz+Nq/FJ2OdRGZuqa0ypfwUOcIi8CnTIn1o18HhnGbu2Myza6f9DYIU
 itZ2DnR4PzvWnjrNobcDekSbvMBgfnZEUrqi/+6bOOukNSd1phAxRmOxA
 5DROKOzo4zUlQEbaZsMpRaFvGMJl34pilV/5zM9BCc7ZO8Om/3/mt2Y89
 v1p6Kmn5L037yGQYbffMKcRMoDENWKuWk88WFnfyqoi9pajVaklZS/i4o g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="243504123"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="243504123"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 02:41:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="762840501"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 12 Jan 2022 02:41:16 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 02:41:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 12 Jan 2022 02:41:15 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 12 Jan 2022 02:41:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oB5SMxNsYlduDvmSJKtqcWRYaWgDTAqXySKagglN/lIGwwYflZZlQgm+L76CbNeG9np6IO0Xgn+0I1FrnU3Ls6kMR2UFEdiv+5xBZCW3MjrIIfh1dB/1RpB4OBhiMsCXbfhdqtQjG2yhl9C8yq7sklRSyRKZL4W5IIhyloejT2tHWw2c6s0DK9feRD/kqpL/C6CWIElZWtMf2HKBM/Uzi6jDEYgqHkdNbGzYWmv/PKMqTHtQmAbMHSQn0AjBV/jWsVbOduu2iKLnbqlMjsL6MX5J8Kn7Sdlwp44d+/XKjRGHkvw6G/Fmm6NnN22oTmwUB4hXyzIs/uzlS8te8xOaYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kaRZ/5blu2padHRw2WoP12vwt2vqIu1dRFqnrCEnfP8=;
 b=XGzOvymqFKVur//36EvkxOwnVtLXFVfM1YupQ7snv3GbLGCE+xSzhTd+VBKZswYQFhl0N/SqNtELN86CCN0jrubT4lwaJb/vOGUxSwFOx6QzAjPMDDrebSjwiaKvtBr6RCA+K28xmWGgs0j5M19AnNLhF7WsBalltzAX5pzmCGh/LFWs4srtEVPg3AHbvCRXij8OmuSX+BBbXGxPfRJq1e6RG1E0pZjU9qoWvAGzBLKg4z880q4X9aryizUKrVoF/LegWzYlw5jwPB/l0JlnR8lp2dLBQ5Zf9Y8VTy9GJ/RrEs4NsMzn1undrcg41S6gN2PNOmtC/gyMnxaQih8TWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA2PR11MB5116.namprd11.prod.outlook.com (2603:10b6:806:fa::9)
 by MW3PR11MB4650.namprd11.prod.outlook.com (2603:10b6:303:54::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.9; Wed, 12 Jan
 2022 10:41:14 +0000
Received: from SA2PR11MB5116.namprd11.prod.outlook.com
 ([fe80::806:68ad:f697:fd1c]) by SA2PR11MB5116.namprd11.prod.outlook.com
 ([fe80::806:68ad:f697:fd1c%7]) with mapi id 15.20.4888.009; Wed, 12 Jan 2022
 10:41:14 +0000
From: "Schweikhardt, Markus" <markus.schweikhardt@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [TGL-U][iGFX] Monitoring the freq of iGFX with
 kernel 5.10 on TGL-U i5-1145GRE
Thread-Index: AdgGUxtXZz9tUCvVRJq3zB2nXgiLNAARmy6AAEG5moA=
Date: Wed, 12 Jan 2022 10:40:52 +0000
Deferred-Delivery: Wed, 12 Jan 2022 10:40:25 +0000
Message-ID: <SA2PR11MB51160CF5A4555EECD4B0DE7CF1529@SA2PR11MB5116.namprd11.prod.outlook.com>
References: <SA2PR11MB5116DFF2C3A626027BF6E051F1509@SA2PR11MB5116.namprd11.prod.outlook.com>
 <5690be6ea6c58533d955b9d7533bdd8f0625e09b.camel@intel.com>
In-Reply-To: <5690be6ea6c58533d955b9d7533bdd8f0625e09b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34bafb71-a1f4-4704-00ac-08d9d5b80e74
x-ms-traffictypediagnostic: MW3PR11MB4650:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MW3PR11MB46500D44BBC821764662FAABF1529@MW3PR11MB4650.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZWD+FRY2WI49wzOHAGN7x6YiG/uenBl4g1qoohBkUmIs4WlI+DYOm4dXGv/u9BeqWoc/e4opyfmkJxzdN+bkeVqm7cjOBombMR1aT4Y88HShARCyXUSNL71GlSknDeiZpDnqKazBCocRsYFRLiBQYb0cH6Zr/XmtlLmZX/Rrw/LVYwkdsBNsz7hXEvZYh3HAld7Pkgx9Lbq+9mybmgFu1Lcg2BZfl0KEt0YHuEsB/BgPFwpx1u+Je4WajcbpuyegiNWQ5pFO+KdsCxVJpfK8cUmjP6CaFDxxyWZmzBwGckeYN8ftlC1iLJ4vQkq8lsdTGik6QVm816VuMIIoVs2iOLbisfi+Y4TvNjJpgrzgSVDTFsljT+OVJfg0Vbl5j6rdaCzhg7XyqaLSLOi18ZHd9rWEw6/42p+ej6b0RYa5CL50sl8W0SlpfpA4AkboT3nnpM6M3h7L0CaM91iRGplE74CfOM+pfuEcJA7gfGXLlpulX/NV/GOBDbPejlHZ4kFAfYDoJpCohHvKoTn756k+TqBAkef0WSpr2MH51lVb3Ya7VUUHkYuCT3h1U3sEEamSh5550CnlDnVhGItj5tqkr93fZI8CK+zZLQu6jgWZtx7knNlBrNjpRICRE0llNY5OWKlFmkQ7MaMw7EKPOCv3T2AMe8mqyQ+Py1JqGPelODTRFOPD7xNuYOf/1omrn062BW5J4lhGb0D9hTFm73e45/lU7rMqkKL9tih23AeyvS+Welr53QweIGp64JPfrIITM9shY4soEJjvdU0yAIvGtcuplBOP/NUkTTnmXNoFMwY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB5116.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(40140700001)(33656002)(122000001)(38100700002)(9686003)(71200400001)(55016003)(86362001)(6666004)(66446008)(8936002)(64756008)(52536014)(53546011)(76116006)(38070700005)(66946007)(186003)(5660300002)(26005)(66556008)(7696005)(110136005)(15974865002)(316002)(8676002)(66476007)(508600001)(6506007)(83380400001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WStyaHNUcGRGcFJMVnBMUFFIZDVvbHpPZDE1bXUwcEVpZkRaak5Lbzc2Qmll?=
 =?utf-8?B?WjhOcklpMmdMV2Z3am04T1QxSXVkM0c2V0tPdU9kcjN5aDl3RldBcElxVno4?=
 =?utf-8?B?Qk9nWHFkQUNwM1FtYUNMWFFIL2FTejZLSnhTYk5ZbTNJakZyOW0reG5ZUE1k?=
 =?utf-8?B?TnNNMkZGamtQMVZGTG5PVnFMYStxMHljY2tpVVR2VmNYVTh6UkwraGZGMFZw?=
 =?utf-8?B?aGVvRXREdFRnR3FpOUVaWm5hT3JZTXQweEtjMTIzcS8xZUNMRzJBb1h5UFo1?=
 =?utf-8?B?akI2RVlNWEY1di9EQi9PT29YRkxHT0dBdUN6SGVtb3A1VXA4c2pHbVBRQ3k2?=
 =?utf-8?B?RkszeStZZ3BrQTAydEpPU2I1SkIzWG1sa2FSenhncnJhZVloOWVwWDRNNGZD?=
 =?utf-8?B?TGNQcmZybTdDZXEybUtzL2M1WStUSmsyTWk4NHRReHY4dzlmcXpoeHp6RlVQ?=
 =?utf-8?B?YzgwMHZCdWJzYmd1eXRaUFB1ZTJZUkorcW95cGtzY2d1SWN1bHdabElHRk9j?=
 =?utf-8?B?NWorMVpSbjYzVUh0eUVzT3J3UUZsQXhmUkRaYUxSYXI4ZXdxQ2VON2dWZEtM?=
 =?utf-8?B?MThwdTdvWUZzS0UzTmNWSnBvdWd3a3pNOCtaYnFSNkdVN1FVRVQ4WWo4RzJm?=
 =?utf-8?B?YW1rbEN0blVHcGxFN0dSWkZ6d1pWWlF4WTBoalpEaFRONFRxbWlNNFBFVVZr?=
 =?utf-8?B?TTNIckloZTczSmhJdHh5TUZUcDVDQk5sSEJGNEZpSldldjJKTWxDN1VPM1c3?=
 =?utf-8?B?MGJhZjdTc1RBZHZiZFBMY0Y1MjlCY0ozSmJYaXVOZHpwY3o1dlAvTSt3WFIy?=
 =?utf-8?B?L01ZSzVDNTB2NnBET2dqQmxYazVvVWpTSzFETGViZWdjdU1FUm5OdzlZci9t?=
 =?utf-8?B?cUFOais2aXd2WHRIaFdjWU5hOXdaSkdoVUR1Z0tKM254a29FSU5IMmFPSVdv?=
 =?utf-8?B?UHFjRnQ3YWp4bVI2VTRVVCtQZW5wcXZSSitKR29Jb3gxUzFaZEphUTB2K1Vy?=
 =?utf-8?B?UVc1VUY0STlIQmowVGRFUlVEMzFGRDhHUXRmYnpiWUh2ODUwY3QrQkhjUFhL?=
 =?utf-8?B?VzhacjB2dSs2dEgyclR3Zld2citHWnpEa3JSR0g4Qmk3TDY2VzhDZ2djQ1lx?=
 =?utf-8?B?NVJkUG5qNlFTb0Zpc1NSblFrbVk1eGVrNEpVWEVSbjdyQkhHT25FWVN1dytF?=
 =?utf-8?B?a3FGZVVBMmhVdEdENEdzaDNBdGtSaVVDR2hySnlacUNJRUJ2Z1cvYktPWkFY?=
 =?utf-8?B?ZXBiZVBoMlFjcmdwMnBwbXBIV1lVelJ2ZTlndHVyT2dnWlRZRTZncVFoaDBs?=
 =?utf-8?B?MmpYdjhGenBPQXhXRG1yVWQ4Z1VkVDVTblZ6SURzUjFnNXR6TkpRQkkwOU5S?=
 =?utf-8?B?Y1E1a3N1Y0YvWDE2NzNqSkxNY05Qa1JRcW9COVdyRkNCZFI0OWdLWGs1WnJs?=
 =?utf-8?B?UmRxcm9KU3VhQ2xSdlJyN3NnVFdVU3RCQk95MlVqRkxwb1hCKzZoVEdBYXU5?=
 =?utf-8?B?b0lKNkFpSTJ4KzdseXh2YnhJbDhqTkIxclpBc3Y3M3NBa3lsbXdpMWJOTDF6?=
 =?utf-8?B?NlhVTERuOXdIVkh4L0k5Z0pXbXoreEpBNWhNQWFoKyswa1NIeW8yT0FFWDQ1?=
 =?utf-8?B?WndRM3pJNWNJUjROUlRGUUtpcWF1RndIeklGdWppSDVwendXRjd2RmY0RjA5?=
 =?utf-8?B?Y2hnZjZhTUd2V3NrQ1M2QkZIbnBBKyt0RDRJQVFRYkFaM2VwaWlmL29DQjQ5?=
 =?utf-8?B?K1MwaFRTOUdqcVBKZStOSlI0VFV3R01JWFRod3lnai85ZUQwSjExTy9IT1o4?=
 =?utf-8?B?SEJQRzdyajF4MS9mMTA3S1VoNlo1eFhIZy9LQ2tYbUNHd3lTd1hsRnlFL2N4?=
 =?utf-8?B?em5zbGFFbk0xYnZBTFRKUFoyRXVndW43WHZWRG0rRWtMaTNOdy9ETkFsUkZB?=
 =?utf-8?B?NFJyNWluY1NTV0wzaWVPUjIvZXNHeFdrTWFBNWNHUHlxb0Z1aW51UzRiMzYy?=
 =?utf-8?B?eStJVXNDQk5jMEcvZ1haVHg4enpCWFduOWpzcGd0OHh2dmRLd0FkblJ5a0xC?=
 =?utf-8?B?ODAzV2l5WnZzS1hQRUVIWCt4VUxocTVUbURzM0xjOWNwaVlKYUQ4RlFXOFV4?=
 =?utf-8?B?dWpYYUZCZ3VrWTdaRHU4Z2JFeDZVV3BJNGkwbDVkZE9BMUIraFc4R3FHVE1h?=
 =?utf-8?B?NVpUa0dxNWdlZ3VQaG9veGdKRmVramZ6YnBPbDExRU0zc1R2SjBacS9SU0po?=
 =?utf-8?B?Wm9kM0JtTFZkcC8rdjB0YStPWlh3PT0=?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5116.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34bafb71-a1f4-4704-00ac-08d9d5b80e74
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2022 10:41:14.2192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: enrowU2HPcs0oyTv3hrXhbEm9+hoqAdninBnc6W8jC3QpstJw6hX4NeGltYhTqODGx1uIrUKeajP6JINti4AoIMAQQiziuI4Pl9wQSSy68c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4650
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: base64
Subject: Re: [Intel-gfx] [TGL-U][iGFX] Monitoring the freq of iGFX with
 kernel 5.10 on TGL-U i5-1145GRE
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

SGkgSm9zZSwNCg0KV2hhdCBpcyB0aGUgZXhwZWN0ZWQgYmVoYXZpb3Igb2YgaW50ZWxfZ3B1X3Rv
cCBpZiBJIGxvY2sgdGhlIGZyZXF1ZW5jeSB0byBtaW4gZnJlcSwgc2hvdWxkIEkgYWx3YXlzIHJl
YWQgcmVxL2FjdCA9IDEwMC8xMDAgZXZlbiBpZiB0aGVyZSBpcyBubyBnZnggd29ya2xvYWQgcnVu
bmluZz8NCg0KLU1hcmt1cw0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogU291
emEsIEpvc2UgPGpvc2Uuc291emFAaW50ZWwuY29tPiANClNlbnQ6IE1vbmRheSwgSmFudWFyeSAx
MCwgMjAyMiA4OjE0IFBNDQpUbzogU2Nod2Vpa2hhcmR0LCBNYXJrdXMgPG1hcmt1cy5zY2h3ZWlr
aGFyZHRAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVj
dDogUmU6IFtJbnRlbC1nZnhdIFtUR0wtVV1baUdGWF0gTW9uaXRvcmluZyB0aGUgZnJlcSBvZiBp
R0ZYIHdpdGgga2VybmVsIDUuMTAgb24gVEdMLVUgaTUtMTE0NUdSRQ0KDQpPbiBNb24sIDIwMjIt
MDEtMTAgYXQgMTg6NTYgKzAwMDAsIFNjaHdlaWtoYXJkdCwgTWFya3VzIHdyb3RlOg0KPiBIaSBh
bGwsDQo+ICANCj4gSSB3b3VsZCBsaWtlIHRvIG1vbml0b3IgdGhlIGZyZXF1ZW5jeSBvZiB0aGUg
aUdQVSBvZiBteSBUR0wgcGxhdGZvcm0gDQo+IHdoaWxlIHJ1bm5pbmcgZ2xtYXJrMiBpbiBidXJz
dHMgd2hpY2ggbWVhbnMgZ2xtYXJrMiBpcyA1c2VjcnVubmluZyBhbmQgDQo+IDVzZWMgbm90IHJ1
bm5pbmcuSSBkaXNhYmxlZCBSQzYgYnkgZWNobyAwID4gDQo+IC9zeXMvY2xhc3MvZHJtL2NhcmQw
L2d0X3JjNl9lbmFibGUgZm9yIG15IHRlc3RzLiBGdXJ0aGVybW9yZSwgSSB0cmllZCANCj4gdG8g
bG9jayB0aGUgaUdQVSBmcmVxdWVuY3kgdG8gbWluLCBSUDAgb3INCj4gUlAxIGJ5IHNldHRpbmcg
ZS5nLiANCg0KTWF5YmUgaXMgYmVjYXVzZSB5b3UgYXJlIHJ1bm5pbmcgYSBvbGQga2VybmUgYnV0
IHJlY2VudCBvbmVzIGhhdmUgL3N5cy9jbGFzcy9kcm0vY2FyZDAvcG93ZXIvcmM2X2VuYWJsZSB0
aGF0IGlzIHJlYWQtb25seS4NClRoZXJlIGlzIG5vIHBhcmFtZXRlciB0byBkaXNhYmxlIFJDNiBi
dXQgeW91IGNhbiBjaGFuZ2UgdGhlIGk5MTUgY29kZSB0byBub3QgZW5hYmxlZCBpdCBhbmQgcnVu
IHlvdXIgdGVzdHMuDQoNCj4gZWNobyAxMzAwID4gL3N5cy9jbGFzcy9kcm0vY2FyZDAvZ3RfbWlu
X2ZyZXFfbWh6DQo+IGVjaG8gMTMwMCA+IC9zeXMvY2xhc3MvZHJtL2NhcmQwL2d0X21heF9mcmVx
X21oeg0KPiBlY2hvIDEzMDAgPiAvc3lzL2NsYXNzL2RybS9jYXJkMC9ndF9ib29zdF9mcmVxX21o
ei4NCj4gIA0KPiBGb3IgZnJlcXVlbmN5IG1vbml0b3JpbmcgSSBhbSB1c2luZyBpbnRlbF9ncHVf
dG9wIA0KPiBhbmQvc3lzL2NsYXNzL2RybS9jYXJkMC9ndF9jdXJfZnJlcV9taHouIEkgYW0gYSBi
aXQgY29uZnVzZWQgaWYgSSBjb21wYXJlIHRoZSBvdXRwdXQgYmVjYXVzZWludGVsX2dwdV90b3Ag
YW5kL3N5cy9jbGFzcy9kcm0vY2FyZDAvZ3RfY3VyX2ZyZXFfbWh6c2hvdyBkaWZmZXJlbnQgcmVz
dWx0cy4NCj4gVGhlc2UgYXJlIG15IHJlc3VsdHMgaWYgSSBsb2NrIGdwdSBGcmVxdWVuY3kgdG8g
MTMwME1Ieg0KPiAgDQo+ICMjIyAvc3lzL2NsYXNzL2RybS9jYXJkMC9ndF9jdXJfZnJlcV9taHoN
Cj4gRXZlcnkgMC4xczogY2F0DQo+IC9zeXMvY2xhc3MvZHJtL2NhcmQwL2d0X2N1cl9mcmVxX21o
eiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5vZGU0LQ0KPiB0
Z2x1LXJ2cDogTW9uIEphbiAxMCAyMDoyMjo1OSAyMDIyDQo+ICANCj4gMTMwMA0KPiAgDQo+ICMj
IyBpbnRlbF9ncHVfdG9wDQo+IHJvb3RAbm9kZTQtdGdsdS1ydnA6fi9mR3ZQT0MjIGludGVsX2dw
dV90b3AgLWwNCj4gRnJlcSBNSHogICAgICBJUlEgUkM2ICAgICAgICAgICBSQ1MvMCAgICAgICAg
ICAgQkNTLzAgICAgICAgICAgIFZDUy8wICAgICAgICAgICBWQ1MvMSAgICAgICAgICBWRUNTLzAN
Cj4gcmVxICBhY3QgICAgICAgL3MgICAlICAgICAgICUgIHNlICB3YSAgICAgICAlICBzZSAgd2Eg
ICAgICAgJSAgc2UgIHdhICAgICAgICUgIHNlICB3YSAgICAgICAlICBzZSAgd2ENCj4gICAgMCAg
ICAwICAgICAgIDE1IDEwMCAgICAwLjA4ICAgMCAgIDAgICAgMC4wMCAgIDAgICAwICAgIDAuMDAg
ICAwICAgMCAgICAwLjAwICAgMCAgIDAgICAgMC4wMCAgIDAgICAwDQo+ICAgIDAgICAgMCAgICAg
ICAxNiAxMDAgICAgMC4wOCAgIDAgICAwICAgIDAuMDAgICAwICAgMCAgICAwLjAwICAgMCAgIDAg
ICAgMC4wMCAgIDAgICAwICAgIDAuMDAgICAwICAgMA0KPiAgICAwICAgIDAgICAgICAgMTAgMTAw
ICAgIDAuMDUgICAwICAgMCAgICAwLjAwICAgMCAgIDAgICAgMC4wMCAgIDAgICAwICAgIDAuMDAg
ICAwICAgMCAgICAwLjAwICAgMCAgIDANCj4gMTg4ICAxNzIgICAgIDYwNDUgIDg2ICAgMTMuMjIg
ICAwICAgMCAgICAwLjAwICAgMCAgIDAgICAgMC4wMCAgIDAgICAwICAgIDAuMDAgICAwICAgMCAg
ICAwLjAwICAgMCAgIDANCj4gMTMwMCAxMTg5ICAgIDQ0OTA3ICAgMCAgIDk5LjI1ICAgMCAgIDAg
ICAgMC4wMCAgIDAgICAwICAgIDAuMDAgICAwICAgMCAgICAwLjAwICAgMCAgIDAgICAgMC4wMCAg
IDAgICAwDQo+IDEzMDAgMTIwMSAgICA0NDcwMiAgIDAgICA5OS4wNSAgIDAgICAwICAgIDAuMDAg
ICAwICAgMCAgICAwLjAwICAgMCAgIDAgICAgMC4wMCAgIDAgICAwICAgIDAuMDAgICAwICAgMA0K
PiAxMzAwIDExODIgICAgNDQ4NzMgICAwICAgOTkuMjMgICAwICAgMCAgICAwLjAwICAgMCAgIDAg
ICAgMC4wMCAgIDAgICAwICAgIDAuMDAgICAwICAgMCAgICAwLjAwICAgMCAgIDANCj4gMTMwMCAx
MTkzICAgIDQ0ODMwICAgMCAgIDk5LjA4ICAgMCAgIDAgICAgMC4wMCAgIDAgICAwICAgIDAuMDAg
ICAwICAgMCAgICAwLjAwICAgMCAgIDAgICAgMC4wMCAgIDAgICAwDQo+IDEwNjYgIDk4OCAgICAz
NjMzNiAgMTkgICA4MC4yNCAgIDAgICAwICAgIDAuMDAgICAwICAgMCAgICAwLjAwICAgMCAgIDAg
ICAgMC4wMCAgIDAgICAwICAgIDAuMDAgICAwICAgMA0KPiAgICA2ICAgIDYgICAgICAgMTAgMTAw
ICAgIDAuMDUgICAwICAgMCAgICAwLjAwICAgMCAgIDAgICAgMC4wMCAgIDAgICAwICAgIDAuMDAg
ICAwICAgMCAgICAwLjAwICAgMCAgIDANCj4gICAxMyAgIDEzICAgICAgIDE1IDEwMCAgICAwLjA4
ICAgMCAgIDAgICAgMC4wMCAgIDAgICAwICAgIDAuMDAgICAwICAgMCAgICAwLjAwICAgMCAgIDAg
ICAgMC4wMCAgIDAgICAwDQo+ICAgMTMgICAxMyAgICAgICAxNiAxMDAgICAgMC4wOCAgIDAgICAw
ICAgIDAuMDAgICAwICAgMCAgICAwLjAwICAgMCAgIDAgICAgMC4wMCAgIDAgICAwICAgIDAuMDAg
ICAwICAgMA0KPiAgICAwICAgIDAgICAgICAgMTMgMTAwICAgIDAuMDUgICAwICAgMCAgICAwLjAw
ICAgMCAgIDAgICAgMC4wMCAgIDAgICAwICAgIDAuMDAgICAwICAgMCAgICAwLjAwICAgMCAgIDAN
Cj4gIA0KPiBDYW4gc29tZW9uZSBoZWxwIG1lIHRvIHVuZGVyc3RhbmQgd2h5IA0KPiAvc3lzL2Ns
YXNzL2RybS9jYXJkMC9ndF9jdXJfZnJlcV9taHogYWx3YXlzIHNob3dzIDEzMDBNSHogYW5kIGlu
dGVsX2dwdV90b3AgKHJlcSBhbmQgYWN0KWlzIGRyb3BwaW5nIHRvIGFsbW9zdCAwSHogd2hlbiBn
bG1hcmsyIGlzIG5vdCBydW5uaW5nPw0KPiBNeSBmaW5hbCBnb2FsIGlzIHRvIGZpZ3VyZSBvdXQg
aWYgcmVuZGVyIHAtc3RhdGUgdHJhbnNpdGlvbnMgY2FuIGltcGFjdCB0aGUgdGltZWxpbmVzcyBv
ZiBteSByZWFsLXRpbWUgd29ya2xvYWQgcnVubmluZyBvbiBhIFJUIGNvcmUuDQo+ICANCj4gS2Vy
bmVsIEluZm86DQo+IExpbnV4IG5vZGU0LXRnbHUtcnZwIDUuMTAuNDEtcnQ0Mi1pbnRlbC1lc2Ut
c3RhbmRhcmQtbHRzLXJ0ICMxIFNNUCANCj4gUFJFRU1QVF9SVCBUaHUgU2VwIDIzIDEwOjIxOjM1
IFVUQyAyMDIxIHg4Nl82NCB4ODZfNjQgeDg2XzY0IEdOVS9MaW51eCANCj4gSW50ZWwgWW9jdG8g
QktDIE1SMw0KPiAgDQo+IFRoeCwgTWFya3VzDQo+IEludGVsIERldXRzY2hsYW5kIEdtYkgNCj4g
UmVnaXN0ZXJlZCBBZGRyZXNzOiBBbSBDYW1wZW9uIDEwLCA4NTU3OSBOZXViaWJlcmcsIEdlcm1h
bnkNCj4gVGVsOiArNDkgODkgOTkgODg1My0wLCB3d3cuaW50ZWwuZGUNCj4gTWFuYWdpbmcgRGly
ZWN0b3JzOiBDaHJpc3RpbiBFaXNlbnNjaG1pZCwgU2hhcm9uIEhlY2ssIFRpZmZhbnkgRG9vbiBT
aWx2YSAgIA0KPiBDaGFpcnBlcnNvbiBvZiB0aGUgU3VwZXJ2aXNvcnkgQm9hcmQ6IE5pY29sZSBM
YXUgUmVnaXN0ZXJlZCBPZmZpY2U6IA0KPiBNdW5pY2ggQ29tbWVyY2lhbCBSZWdpc3RlcjogQW10
c2dlcmljaHQgTXVlbmNoZW4gSFJCIDE4NjkyOA0KDQoNCkludGVsIERldXRzY2hsYW5kIEdtYkgK
UmVnaXN0ZXJlZCBBZGRyZXNzOiBBbSBDYW1wZW9uIDEwLCA4NTU3OSBOZXViaWJlcmcsIEdlcm1h
bnkKVGVsOiArNDkgODkgOTkgODg1My0wLCB3d3cuaW50ZWwuZGUgPGh0dHA6Ly93d3cuaW50ZWwu
ZGU+Ck1hbmFnaW5nIERpcmVjdG9yczogQ2hyaXN0aW4gRWlzZW5zY2htaWQsIFNoYXJvbiBIZWNr
LCBUaWZmYW55IERvb24gU2lsdmEgIApDaGFpcnBlcnNvbiBvZiB0aGUgU3VwZXJ2aXNvcnkgQm9h
cmQ6IE5pY29sZSBMYXUKUmVnaXN0ZXJlZCBPZmZpY2U6IE11bmljaApDb21tZXJjaWFsIFJlZ2lz
dGVyOiBBbXRzZ2VyaWNodCBNdWVuY2hlbiBIUkIgMTg2OTI4Cg==

