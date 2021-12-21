Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A0247C668
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Dec 2021 19:21:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D8310E9B8;
	Tue, 21 Dec 2021 18:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9EF610F645
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Dec 2021 18:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640110904; x=1671646904;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/ZxllW5QGfqBq4wYh2AJpZWvwkzdn5ySERfoCi8eSJs=;
 b=FSEgOhYrc93tbMWDSZwpis9EnZaiA9Xs4GemiFdcp9oDVntmm4fgNBom
 5mJ2UotaKR/4wqy6MQmXuagpsZrEDSwYxFRG0P3k//NJlhA/C8m12/B1z
 0DrFlAxP305M70H3VP0rWbGd5Tuy5PnLHaPhCOgYfqI95C3Qo1CR8K3X1
 /8qUbj5+bTNVRJrzXndrXaO1krs75CDopNCa1C863ODIT/FkU/dtNrLVh
 gjwIq+dAJ84Ij9fv8GxNmX51nGHnv54tsPW2Sw/PAt/U3WAS2xkLk7gBm
 QPb75HoWULaP4W9mGRunM+WyQM64mQj0A97fA2aPxLOFdAvOsTBgVnZlU Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="220476806"
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="220476806"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 10:21:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="570305925"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2021 10:21:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 10:21:27 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 21 Dec 2021 10:21:27 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 21 Dec 2021 10:21:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EmQwSet0k9bjGAZSfjocxqfS+FiojNIMj5SNO1uw1OJjfqOgKZcMkmw57FJRwN535lgMqxCz9nTiy5vVcBw/yNLjP5VnZbKXhi6wPfAdyvmHHkLgULJ0xqRK7nADYEcyFxqOe/aQvltIJJWWWk/SyUy1aqUTql6FMAherUS3e/4o+RV/9btQIYJodYfKXF4Bf9P+73G47joPoZKKFykdGeK0MnO9GjqOjG8c5A7d9025EsuA5WHKEsCunWMcoI6nbu9AmAp3pSzePvv81eIm5aG5Y9dhAMHM24EoQlqDWJvn5AFHyJ79pApu4ZFvldFrl4qa6UrXVPlBvdXoLvzLJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ZxllW5QGfqBq4wYh2AJpZWvwkzdn5ySERfoCi8eSJs=;
 b=iGy2lep2UosEGru+3riGb3dwjH/mKm3SCYXFfiDa8WU+Fnzo5Y7Bo5flxKiyHF5fM41sqv+kivSLSdF6nda7gQqwzSCtpen0LiqCH/H5R3l1j7ZvgvkK2SIQcjUcue8IUVjYXQKkQbGfU4yAJbAMN0lVvu7+9O0iezjuz9qAEOkVAPYBwyi/YNpm+h22He7WrWTPE0vzDAUbEUOrOXP0AT9UMjUWac97zshuSTX13c/FsRrsT7E7sEVP4WlR/mWKv6uh8MlC3qn74jphyeCniiBCCaDfaqUrrVS87Ato9uqkx85xp5SjA/mQHwTAhchPoYsRKyvbCUdJQ5fJzVty0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4833.namprd11.prod.outlook.com (2603:10b6:303:99::13)
 by MWHPR1101MB2269.namprd11.prod.outlook.com (2603:10b6:301:4d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.20; Tue, 21 Dec
 2021 18:21:25 +0000
Received: from CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::f54e:df24:9e8a:1c5f]) by CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::f54e:df24:9e8a:1c5f%8]) with mapi id 15.20.4801.022; Tue, 21 Dec 2021
 18:21:25 +0000
From: "Li, Juston" <juston.li@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/pxp: Hold RPM wakelock during PXP
 unbind
Thread-Index: AQHX9eHedZ7VGhpyiE2R0rkwgrxhuKw9DZ2AgAA1vgA=
Date: Tue, 21 Dec 2021 18:21:24 +0000
Message-ID: <0feec7013dec965946a88bf90d264bfa90857a71.camel@intel.com>
References: <20211220204023.8304-1-juston.li@intel.com>
 <bfe543bc-5ada-cc3f-a872-1750d810f5ab@intel.com>
In-Reply-To: <bfe543bc-5ada-cc3f-a872-1750d810f5ab@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.4 (3.38.4-1.fc33) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d2e4719-ee34-4da3-1ed2-08d9c4aeb2a9
x-ms-traffictypediagnostic: MWHPR1101MB2269:EE_
x-microsoft-antispam-prvs: <MWHPR1101MB226937360A9E7C679E70159FFD7C9@MWHPR1101MB2269.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FlTJouDqetlzcn8Wi1HIzum4HrN1I5uhyfhvTDAtT4HFBBrJLjoHN3pwDjytC77dgdTr71/JU9SqSfdLJ3hm0AgALwbDk5UmxBimuoxvOo/V2VHmIYPOXpkzPwkx/EZ4fGgY1wXR0HP56Y2MANEa/ovXWlk1JNgxcFaRasaAMqn7exi5LFXYw6sQ1g2FkIUvgkE5VHH/ayMqiUAQyVfUG5H7yBgp++qwRQMDKCXk3Yd9H3QqSAeW7zxV2gv+yWhFe5WW1DIAXnA6jPLWgupTTUz8/R6BwBGg1sa+E/RXFTJW/jhRMHl0X1v5PMTHIcfx54tbmIMc5sZBXXP1Pz2DlVMbkTIXmD7WL6x+TGAVQUFZKq5km3f+7gndhgtoT0Z2sLjBc3VSBMMyaF4hP2VtM/kj4Tx66VU5BnoGyBcuc2p0+jutM5/PYKQgIerpQ2YufNcfWGcIknXnAdaEGST48ZKP0ovF0CjndX8Lw4T+80PITok0+KTGs/r33YQ1DI3ayPmYp2KdEG470V9eaUk7ysjHLTYppmm7lf0ZPOSvZJf7NQ2BhFUOuYDdVJCO16Co4qIbFN5ZccqfM4O6fuUyHKUyzvwNoIBNZMkdLs3fPneugBJ/rDsrbL5IRlknmnIyZNX2gWIsU8TCO8M+LqTACcYMPw5acf71DQeOhT4EKFL9FMpdqmTSy4wkQNxlplVSjT/D/Mxvjr0riLWGzHRvqQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4833.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6486002)(6512007)(82960400001)(4001150100001)(316002)(508600001)(45080400002)(110136005)(54906003)(38070700005)(86362001)(66476007)(53546011)(8676002)(6506007)(26005)(2906002)(8936002)(186003)(5660300002)(66556008)(66946007)(64756008)(2616005)(66446008)(71200400001)(76116006)(107886003)(83380400001)(4326008)(38100700002)(122000001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ny9vTU9qN1drNGRiVlVVTzJYNEdJd1k4SVlGNnFuNjJNanlIZmtmSDdsQ0Fr?=
 =?utf-8?B?cCt5c2ptZEFCcHVYWG9YS0x4YlAwYVFzZDZZVDErTys4TWxrd2xyQ3BYYlND?=
 =?utf-8?B?d1dOWXMrbjZ0Z1FnRFNqVGJTYTdwa1pMTWd4Q3htODk1SDVyU3krWkFZNVFB?=
 =?utf-8?B?UENITm56OGUwdXA5RzRiUEhPNHJia3FPSitNOVlIWUhOeGdvenBjM2tjRmNM?=
 =?utf-8?B?dTBxdHNhVkt6SW5WbmRsOGtCWG03K0dscW5PQVRpd2k0Vkh6c05TWnRsTmFE?=
 =?utf-8?B?RVMwZU1jMUxodVZzb3BTV0g0c2VnaElGSVQ4Z2JlQ1lWb2VFWEh2TUJPMUpE?=
 =?utf-8?B?TmxRTVV1aVliRktSMVZrYmd5M2FNdnFhUnB6ME4rRzI5OW51ejZCT2lib2dD?=
 =?utf-8?B?RG9od1FpS3BTSnNCaDRnbkV4NS81MXltQWh0WGJ2SWR1cmwvdTdVNE5UK1Zv?=
 =?utf-8?B?VDllbFhvTEp2Y0xSN2tma3hlZ0w5eFBTTEpmeWtvS1FDcHFPUHF2aUdSRDEv?=
 =?utf-8?B?MVhzZjZiRHFIOUkwSllrd3p4WUFTRG9QQmpiMU8vbkdsWFpPa1pSSFJGYThS?=
 =?utf-8?B?Ui90a2ZQMmoyUzJDKzRLbllLMVdUV0lwTVpCeE5YL1lnNml6bnFIVWE4Z3Vy?=
 =?utf-8?B?U2IwbDVDNW1adkZmSDVFUCtPZFVFbzhoQ2M1Zjh5RXptTmhhUkRsRkNjdWx3?=
 =?utf-8?B?Y1JHT3JmMHcwellrYk5tZjNBNU0yQnlXS0xvMk5tclZrcWxzTjFZSGZCMmxX?=
 =?utf-8?B?ZGpVT281QmRQRzJzK2l0WDJ4a0lldDNmUEloRmZQRHlFR0RyY3BtbDZINkpK?=
 =?utf-8?B?V2pwOTVXcUgwcmRqT01wNDJHTkV3dFVDTmRtcnVHOVdyZTYyV1J2MXkwTGc3?=
 =?utf-8?B?N1Nqak4zZjlxSUZzL3JwekEyNDBoU1lFZjVUSThjRGlHeERzRm1kckkveGp6?=
 =?utf-8?B?NzdrbjNXV3hyRTVxWmhUcXZ1MXBSa2VLZWhYbkpaUEJBQVA3VndOVDB5c1hW?=
 =?utf-8?B?YW9vRUVGRGZFaUpUeWc3ZzBEbVh6YXp2dG9McDhURjU1WkI4WlZjd3M3ZUp6?=
 =?utf-8?B?QzQrbnByNUp0TmtzeGtHK3I5aXhXeTZyd1BkcTdFYnJwWFlIWWVnMUxzWFNj?=
 =?utf-8?B?NmVWT0JkQW04ZW80Qk53Tnd5R1VLcHJDdkFKRTBkbTlGVVRIMm54bUFNb2Jv?=
 =?utf-8?B?dGx3WUR3RTRTMUNDaXZlMTVIUlRrQVloNlZHU0pCOWsvaCtKNjdQRFNUSXJj?=
 =?utf-8?B?M3craGM0MDUyV1hxVGcrQ3Z6Y2hkdVQ1a2NIdWQvODFaclYvVmZ4YlVYSFNs?=
 =?utf-8?B?QUptTmE3a3RFbFhnbTNTZitVbm00QWM1NkFrcU5pcDFTNnM1UUU4Ukp3NThN?=
 =?utf-8?B?VytKRkZqSjRwc3hoWkRUK0JhRTh1bGpNdEluekZFa1pNbTFMQ3AwWmRrbjFD?=
 =?utf-8?B?akdSL0E3azd0elFrZGMydFBEZHBLU1FHRVh2cG85WU0vRGFTWmZMWU5XQ29J?=
 =?utf-8?B?OHNZM2MveDFwUml3NjUyN0k4eStJclNEYVVZY3hpOXFsY0V2YWh0ZVd6NDNX?=
 =?utf-8?B?SC9tYkthWGtWZ21rSk40UmpBU2JwUzkzUFZnOU9tVE5IRUlKUTZYZUlqQ29t?=
 =?utf-8?B?bDB5bHZVaFFTK3dFU2JDcTdXV00zejZJTmNOcjlZWnRmQUdaRDRKcWpKaEty?=
 =?utf-8?B?bVQzZEFxZHVMRlRsRnMrNFg0eU1QZUd3Ry9sZTIyNXN1TW9TU2JrUXZ0T2lF?=
 =?utf-8?B?NS9GSDFiV1BkOW9CWkRwSlNpak02UEpubUU4ODhBNHhJdCtXWHl0OE1FdHFt?=
 =?utf-8?B?S2xDL050am5tb2czZEVkTjJkbE12VDcrc2lWa3Z0MTVUNk1qK201Z1orcjNp?=
 =?utf-8?B?V3Z5N1dLYTFzMGJVQjJEenVNSTJkdXVNNkJPOWZtVHpDcGh4R2dzeWsvVW5T?=
 =?utf-8?B?U1BOdWp4cnlsbGFSbng5VzRyaGlpcFl5K1N5SjFwTGZCT1hjdW5wNmYzaldp?=
 =?utf-8?B?STZvSjhYR25hOVNEaFQrdUJOejNKdExqRE4ycDFNcDVmVXFmSk1NK1I2UThl?=
 =?utf-8?B?bU1BS2tiT3hielVNRFI1WDZXRTcwRllyK1EzdEhGVGZES29wQTJjWnFCQmZY?=
 =?utf-8?B?VG5GOEY3bU9aSm9vZm9kMDRpVnBiamZyak93VmgxaXljNFVabFNPYjR4QUsr?=
 =?utf-8?Q?BsqpTMKupBizO3naoMYtzGc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BF3D7D92F1288F4C885E1C03624FBF0F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4833.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d2e4719-ee34-4da3-1ed2-08d9c4aeb2a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2021 18:21:24.9142 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aysBD4ekhCh2SlCbNjz168cOb+jOwemtRueJnZlHRJncv13fkrTmOKqckWO6aEl15C2oLo0DL6OLbJWj98Ngmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2269
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pxp: Hold RPM wakelock during PXP
 unbind
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
Cc: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTEyLTIxIGF0IDA3OjA5IC0wODAwLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlv
IHdyb3RlOg0KPiANCj4gDQo+IE9uIDEyLzIwLzIwMjEgMTI6NDAgUE0sIEp1c3RvbiBMaSB3cm90
ZToNCj4gPiBTaW1pbGFyIHRvIGNvbW1pdCBiOGQ4NDM2ODQwY2EgKCJkcm0vaTkxNS9ndDogSG9s
ZCBSUE0gd2FrZWxvY2sNCj4gPiBkdXJpbmcNCj4gPiBQWFAgc3VzcGVuZCIpIGJ1dCB0byBmaXgg
dGhlIHNhbWUgd2FybmluZyBmb3IgdW5iaW5kIGR1cmluZw0KPiA+IHNodXRkb3duOg0KPiA+IA0K
PiA+IC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQ0KPiA+IFJQTSB3YWtlbG9j
ayByZWYgbm90IGhlbGQgZHVyaW5nIEhXIGFjY2Vzcw0KPiA+IFdBUk5JTkc6IENQVTogMCBQSUQ6
IDQxMzkgYXQNCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmg6MTE1
DQo+ID4gZ2VuMTJfZnd0YWJsZV93cml0ZTMyKzB4MWI3LzANCj4gPiBNb2R1bGVzIGxpbmtlZCBp
bjogODAyMXEgY2NtIHJmY29tbSBjbWFjIGFsZ2lmX2hhc2ggYWxnaWZfc2tjaXBoZXINCj4gPiBh
Zl9hbGcgdWlucHV0IHNuZF9oZGFfY29kZWNfaGRtaSB2ZiBpbmR1c3RyaWFsaW8gaXdsNzAwMF9t
YWM4MDIxMQ0KPiA+IGNyb3NfZWNfc2Vuc29yaHViIGx6b19ybGUgbHpvX2NvbXByZXNzIHpyYW0g
aXdsd2lmaSBjZmc4MDIxMSBqb3lkZXYNCj4gPiBDUFU6IDAgUElEOiA0MTM5IENvbW06IGhhbHQg
VGFpbnRlZDogR8KgwqDCoMKgIFXCoCBXDQo+ID4gNS4xMC44NCAjMTMgMzQ0ZTExZTA3OWM0YTAz
OTQwZDk0OWU1MzdlYWI2NDVmNg0KPiA+IFJJUDogMDAxMDpnZW4xMl9md3RhYmxlX3dyaXRlMzIr
MHgxYjcvMHgyMDANCj4gPiBDb2RlOiA0OCBjNyBjNyBmYyBiMyBiNSA4OSAzMSBjMCBlOCAyYyBm
MyBhZCBmZiAwZiAwYiBlOSAwNCBmZiBmZg0KPiA+IGZmIGM2DQo+ID4gMDUgNzEgZTkgMWQgMDEg
MDEgNDggYzcgYzcgZDY3DQo+ID4gUlNQOiAwMDE4OmZmZmZhMDllYzBiYjNiYjAgRUZMQUdTOiAw
MDAxMDI0Ng0KPiA+IFJBWDogMTJkZGU5N2JiZDI2MDMwMCBSQlg6IDAwMDAwMDAwMDAwMzIwZjAg
UkNYOiBmZmZmZmZmZjg5ZTYwZWEwDQo+ID4gUkRYOiAwMDAwMDAwMDAwMDAwMDAwIFJTSTogMDAw
MDAwMDBmZmZmZGZmZiBSREk6IGZmZmZmZmZmODllNjBlNzANCj4gPiBSQlA6IGZmZmZhMDllYzBi
YjNiZDggUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIwOTogZmZmZmEwOWVjMGJiMzk1MA0KPiA+IFIx
MDogMDAwMDAwMDBmZmZmZGZmZiBSMTE6IGZmZmZmZmZmODllOTExNjAgUjEyOiAwMDAwMDAwMDAw
MDAwMDAwDQo+ID4gUjEzOiAwMDAwMDAwMDI4MTIxOTY5IFIxNDogZmZmZjk1MTVjMzJmMDk5MCBS
MTU6IDAwMDAwMDAwNDAwMDAwMDANCj4gPiBGUzrCoCAwMDAwNzkwZGNmMjI1NzQwKDAwMDApIEdT
OmZmZmY5NTE3Mzc4MDAwMDAoMDAwMCkNCj4gPiBrbmxHUzowMDAwMDAwMDAwMDAwMDAwDQo+ID4g
Q1M6wqAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMNCj4gPiBD
UjI6IDAwMDA1OGIyNWVmYWUxNDcgQ1IzOiAwMDAwMDAwMTMzZWE2MDAxIENSNDogMDAwMDAwMDAw
MDc3MGVmMA0KPiA+IERSMDogMDAwMDAwMDAwMDAwMDAwMCBEUjE6IDAwMDAwMDAwMDAwMDAwMDAg
RFIyOiAwMDAwMDAwMDAwMDAwMDAwDQo+ID4gRFIzOiAwMDAwMDAwMDAwMDAwMDAwIERSNjogMDAw
MDAwMDBmZmZmMDdmMCBEUjc6IDAwMDAwMDAwMDAwMDA0MDANCj4gPiBQS1JVOiA1NTU1NTU1NA0K
PiA+IENhbGwgVHJhY2U6DQo+ID4gwqAgaW50ZWxfcHhwX2ZpbmlfaHcrMHgyZi8weDM5DQo+ID4g
wqAgaTkxNV9weHBfdGVlX2NvbXBvbmVudF91bmJpbmQrMHgxYy8weDQyDQo+ID4gwqAgY29tcG9u
ZW50X3VuYmluZCsweDMyLzB4NDgNCj4gPiDCoCBjb21wb25lbnRfdW5iaW5kX2FsbCsweDgwLzB4
OWQNCj4gPiDCoCB0YWtlX2Rvd25fbWFzdGVyKzB4MjQvMHgzNg0KPiA+IMKgIGNvbXBvbmVudF9t
YXN0ZXJfZGVsKzB4NTYvMHg3MA0KPiA+IMKgIG1laV9weHBfcmVtb3ZlKzB4MmMvMHg2OA0KPiA+
IMKgIG1laV9jbF9kZXZpY2VfcmVtb3ZlKzB4MzUvMHg2OA0KPiA+IMKgIGRldmljZV9yZWxlYXNl
X2RyaXZlcl9pbnRlcm5hbCsweDEwMC8weDFhMQ0KPiA+IMKgIG1laV9jbF9idXNfcmVtb3ZlX2Rl
dmljZSsweDIxLzB4NzkNCj4gPiDCoCBtZWlfY2xfYnVzX3JlbW92ZV9kZXZpY2VzKzB4M2IvMHg1
MQ0KPiA+IMKgIG1laV9zdG9wKzB4M2IvMHhhZQ0KPiA+IMKgIG1laV9tZV9zaHV0ZG93bisweDIz
LzB4NTgNCj4gPiDCoCBkZXZpY2Vfc2h1dGRvd24rMHgxNDQvMHgxZDMNCj4gPiDCoCBrZXJuZWxf
cG93ZXJfb2ZmKzB4MTMvMHg0Yw0KPiA+IMKgIF9fc2Vfc3lzX3JlYm9vdCsweDFkNC8weDFlOQ0K
PiA+IMKgIGRvX3N5c2NhbGxfNjQrMHg0My8weDU1DQo+ID4gwqAgZW50cnlfU1lTQ0FMTF82NF9h
ZnRlcl9od2ZyYW1lKzB4NDQvMHhhOQ0KPiA+IFJJUDogMDAzMzoweDc5MGRjZjMxNjI3Mw0KPiA+
IENvZGU6IDY0IDg5IDAxIDQ4IDgzIGM4IGZmIGMzIDY2IDJlIDBmIDFmIDg0IDAwIDAwIDAwIDAw
IDAwIDBmIDFmDQo+ID4gNDQgMDANCj4gPiAwMCA4OSBmYSBiZSA2OSAxOSAxMiAyOCBiZiBhZDgN
Cj4gPiBSU1A6IDAwMmI6MDAwMDdmZmNhMGRmOTE5OCBFRkxBR1M6IDAwMDAwMjAyIE9SSUdfUkFY
Og0KPiA+IDAwMDAwMDAwMDAwMDAwYTkNCj4gPiBSQVg6IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAw
MDAwMDAwMDQzMjFmZWRjIFJDWDogMDAwMDc5MGRjZjMxNjI3Mw0KPiA+IFJEWDogMDAwMDAwMDA0
MzIxZmVkYyBSU0k6IDAwMDAwMDAwMjgxMjE5NjkgUkRJOiAwMDAwMDAwMGZlZTFkZWFkDQo+ID4g
UkJQOiAwMDAwN2ZmY2EwZGY5MjAwIFIwODogMDAwMDAwMDAwMDAwMDAwNyBSMDk6IDAwMDA1NjNj
ZThjZDg5NzANCj4gPiBSMTA6IDAwMDAwMDAwMDAwMDAwMDAgUjExOiAwMDAwMDAwMDAwMDAwMjAy
IFIxMjogMDAwMDdmZmNhMGRmOTMwOA0KPiA+IFIxMzogMDAwMDAwMDAwMDAwMDAwMSBSMTQ6IDAw
MDAwMDAwMDAwMDAwMDAgUjE1OiAwMDAwMDAwMDAwMDAwMDAzDQo+ID4gLS0tWyBlbmQgdHJhY2Ug
MmY1MDFiMDFiMzQ4ZjExNCBdLS0tDQo+ID4gQUNQSTogUHJlcGFyaW5nIHRvIGVudGVyIHN5c3Rl
bSBzbGVlcCBzdGF0ZSBTNQ0KPiA+IHJlYm9vdDogUG93ZXIgZG93bg0KPiA+IA0KPiA+IEZpeGVz
OiAwY2ZhYjRjYjNjNGUgKCJkcm0vaTkxNS9weHA6IEVuYWJsZSBQWFAgcG93ZXIgbWFuYWdlbWVu
dCIpDQo+ID4gU3VnZ2VzdGVkLWJ5OiBMZWUgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50ZWwuY29t
Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IEp1c3RvbiBMaSA8anVzdG9uLmxpQGludGVsLmNvbT4NCj4g
DQo+IFJldmlld2VkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPg0KPiANCj4gQ2FuIHlvdSBzZW5kIGl0IHRvIHRyeWJvdCANCj4gKGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4LXRy
eWJvdCkNCj4gd2l0aCANCj4gYW4gYWRkZWQgY2hhbmdlIHRvIHR1cm4gb24gdGhlIFBYUCBjb25m
aWcgKHNlZSBiZWxvdyksIHNvIHdlIGNhbiBnZXQNCj4gYSANCj4gQ0kgcnVuIG9uIGl0IHdpdGgg
UFhQIGVuYWJsZWQ/DQoNClNlbnQsIHRoYW5rcyENCg0KPiANCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvS2NvbmZpZy5kZWJ1Zw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29u
ZmlnLmRlYnVnDQo+IEBAIC00OCw2ICs0OCw4IEBAwqAgY29uZmlnIERSTV9JOTE1X0RFQlVHDQo+
IMKgwqDCoMKgwqAgc2VsZWN0IERSTV9JOTE1X0RFQlVHX1JVTlRJTUVfUE0NCj4gwqDCoMKgwqDC
oCBzZWxlY3QgRFJNX0k5MTVfU1dfRkVOQ0VfREVCVUdfT0JKRUNUUw0KPiDCoMKgwqDCoMKgIHNl
bGVjdCBEUk1fSTkxNV9TRUxGVEVTVA0KPiArwqDCoMKgIHNlbGVjdCBJTlRFTF9NRUlfUFhQDQo+
ICvCoMKgwqAgc2VsZWN0IERSTV9JOTE1X1BYUA0KPiDCoMKgwqDCoMKgIHNlbGVjdCBCUk9LRU4g
IyBmb3IgcHJvdG90eXBlIHVBUEkNCj4gwqDCoMKgwqDCoCBkZWZhdWx0IG4NCj4gwqDCoMKgwqDC
oCBoZWxwDQo+IA0KPiBUaGFua3MsDQo+IERhbmllbGUNCj4gDQo+ID4gLS0tDQo+ID4gwqAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuYyB8IDUgKysrKy0NCj4gPiDCoCAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmMNCj4gPiBpbmRleCA0
OTUwOGYzMWRjYjcuLmQyOTgwMzcwZDkyOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvcHhwL2ludGVsX3B4cF90ZWUuYw0KPiA+IEBAIC0xMDMsOSArMTAzLDEyIEBAIHN0YXRpYyBp
bnQgaTkxNV9weHBfdGVlX2NvbXBvbmVudF9iaW5kKHN0cnVjdA0KPiA+IGRldmljZSAqaTkxNV9r
ZGV2LA0KPiA+IMKgIHN0YXRpYyB2b2lkIGk5MTVfcHhwX3RlZV9jb21wb25lbnRfdW5iaW5kKHN0
cnVjdCBkZXZpY2UNCj4gPiAqaTkxNV9rZGV2LA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGRldmljZSAqdGVlX2tkZXYsDQo+ID4gdm9pZCAqZGF0YSkNCj4gPiDCoCB7DQo+
ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBrZGV2X3Rv
X2k5MTUoaTkxNV9rZGV2KTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3B4cCAq
cHhwID0gaTkxNV9kZXZfdG9fcHhwKGk5MTVfa2Rldik7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50
ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+ID4gwqAgDQo+ID4gLcKgwqDCoMKgwqDCoMKgaW50ZWxf
cHhwX2ZpbmlfaHcocHhwKTsNCj4gPiArwqDCoMKgwqDCoMKgwqB3aXRoX2ludGVsX3J1bnRpbWVf
cG1faWZfaW5fdXNlKCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKQ0KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9weHBfZmluaV9odyhweHApOw0KPiA+IMKgIA0KPiA+
IMKgwqDCoMKgwqDCoMKgwqBtdXRleF9sb2NrKCZweHAtPnRlZV9tdXRleCk7DQo+ID4gwqDCoMKg
wqDCoMKgwqDCoHB4cC0+cHhwX2NvbXBvbmVudCA9IE5VTEw7DQo+IA0KDQo=
