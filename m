Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F6346CDCA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 07:31:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16AD26E1E8;
	Wed,  8 Dec 2021 06:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C8EE6E1E8
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 06:31:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="236505642"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="236505642"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 22:31:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="679776820"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 07 Dec 2021 22:31:28 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 22:31:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 7 Dec 2021 22:31:27 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 7 Dec 2021 22:31:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eVSc4S6mXn1QPvks1o1yOTXI9X+jLZjJdAGZ3CaIBaesXE722PAyltCqC/O5Gtx5wMMbougNhXnN64ksqf34VJbBOsR6i1DOnhYlWqIKV6/efxnZ4p9FrXsQeMsNrnWtRZqJRla9gMiJX9waADujK51rIJ/bKnv/85LCI/CrMBYjujzwFAbzziIWoKBXv/hRB/LvFHXBu1/FZLQb0YGxvz+LMtAYOs8MeCtmFvCDLl0wvbTm6cBSGTOC3/OFPRGB9LXDlVl1DwTDS/Vvb7L/K392CmWYKBg5QXltR7dn5Qx7TwxC56p+vb16GtD91Zff4Nj4mEkAnKdZ5MwlrGebhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lbbNiNjTjm2wn4iZ/lIH5N09NyRPQCXhxTwSNA5mftQ=;
 b=MhnG9s7JRJHl3STfs4X9XlENRG7eHzblwrSWZjkxmDRrY9RlPkpalIGOAfhi+l0YaT99kul9aucpML3CG7fYhtJ2KKN/zAvvOzbdSfKp01juGspCpdeFCrFPchXWAJRDLlxWgnCFFXtErs5fl3wDasLO24wOsyVjXIV04yztPiS0uISYdi5w32wQiZjxFxh/7dp/lsyajyPLpdE/cnCoLxaGadLPDIzdvNRMlzUQ4wpq2mGnsFDAV3RKcVqwy6gw/Hh09g4hg1yIG/89ySZTORbNtxsUh5mCZ1RfVpynsBGhy6LosYi+2uS1TDiy1h7VyRuNJenigBEx78urwHhIZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lbbNiNjTjm2wn4iZ/lIH5N09NyRPQCXhxTwSNA5mftQ=;
 b=iflGqZYn/Khmq7teBYPZEFXbNUkUa7pM8jUHbK+aifxJowqMkIxYdQ0ITbQ0Oyo4cxg3hI7q+a8XRP8FgGRWgpeiVUkqo7WWN0kYPLWRdWrwJgqVXBMvc5scqpRmTLqt3RMuBgytXdzTx9FqO/5yxgsy5+zlztJ2YxKLrLz6S9I=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BYAPR11MB3174.namprd11.prod.outlook.com (2603:10b6:a03:76::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Wed, 8 Dec
 2021 06:31:26 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14%6]) with mapi id 15.20.4755.022; Wed, 8 Dec 2021
 06:31:26 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
Thread-Index: AQHX3/Ueewn73SRF5061jq6P87GJy6wn02QAgABnhAA=
Date: Wed, 8 Dec 2021 06:31:26 +0000
Message-ID: <bf9b1af14a700959ca58e615d7d15cb9300ab56f.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
 <20211208002215.GA17960@jons-linux-dev-box>
In-Reply-To: <20211208002215.GA17960@jons-linux-dev-box>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68d17fe1-39a7-4467-58a0-08d9ba145c76
x-ms-traffictypediagnostic: BYAPR11MB3174:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB3174DDB69E075191CA9134258A6F9@BYAPR11MB3174.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:22;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p2h6hOTB/7PYW7OB+fT6AaLpj08yHm9eadg8qRkrqlJyRFBugD1t5nsw48ogVWS4fHPtsy2tYCIkKXGavhnV1W8fSHbF/PYBhyOfSSnjnsAvJ78ENmGPUPAT22gOrTTS2jzFzcV0PvuuO1BnFCoi/X42VBYVwRpgQmIBajwYl9OUymChivWCkym5vHZ3QaYPWXUW1sF+GWwB+RPY8owRXxyVJ8ScUv6zX/FSIAgRZfauCItEMUOwQrfJTjjlIodLORLxK+TwUfrgZk2jpYZJF5DtwJSOiX0G8eQpA9O4GM+5BBZhRiEUIDV/9lFRwcdrsGSWWW754T6lFaiI5118ppiKLBzLxUKO8tLumVYFaPP9ZGuaX1Fig8LUmFbtWqAghhwWhttM3IO3fdTOft1uETx+amHmFHOo7KgAkEobIBMrr9tePS2qArFpSQS4jvPwmkWiedqJzPcN/OAUtROLyZCOP1Q6iLjvuODvEoU/nGgAdIzAEX3J9KL9F2rtNPS13vvuM0Kily9xKcwnogZNukORRtPAG/vZnPhVuMHZu7v2K1wTPAMWl2X8bQTitMt7elHo8IDVy2VWRDxussS5cWWuxzgVySmciTECezcgU3XskHZJNYHSmRdGekrPbY+NiQvGPzItBtjRJ7ADZAXocbgt2Ef5HuPLs+vBkuw+zIWDbIsaiK+8T2WAIhxHftoS9s6sO0Pj0w2K/IaaqXi9TA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(6862004)(508600001)(6506007)(8676002)(6512007)(2906002)(6636002)(38100700002)(38070700005)(26005)(186003)(76116006)(316002)(37006003)(66556008)(82960400001)(122000001)(6486002)(64756008)(66446008)(66476007)(4326008)(71200400001)(66946007)(4744005)(2616005)(36756003)(5660300002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QWd6SEY2WForMi82NEhSMmd0WHo5eTNQc1ZaVzJmZzFESjZWMTdsQ2dlMUY1?=
 =?utf-8?B?aVZEa3ZQNDluekttYjhxZ01jT2hQZ29YVWZ6c2FEVmNuWkJKVHRjQ09aYm5D?=
 =?utf-8?B?YVp1WWU0THRhcVVNdTg1b0xxUE0vdnRiNnNwcU5tREVWWlZSQU04eFNZczMz?=
 =?utf-8?B?TWpiVXduamRPZW5abXE3SXJwUkFFWUlRdmJoRU1nWEpQU0wvSmpHQmIxK2Vh?=
 =?utf-8?B?c3h1Tm82ekQ2ajFNZCtGWG5sa3c1ZnRwb09nOEtRNUJvUVJkVHoybDlZSkJE?=
 =?utf-8?B?b2JPSzIvVWQ3OTg5QXlLcitTcU1hTFA2dFhINFBTVVJFbi9XYzl4NjAwWUxB?=
 =?utf-8?B?RHo2L3RhQmtlalN5ZHhNMzFFTlBGYm1WWEhSalM1cE5MRjFLU0J5MitXeVQx?=
 =?utf-8?B?M3FMc0Q3QUlFai8xRTZVQlhXRDVhWURLSnNQS3p3NTBLaWdGSXRPazltNHZC?=
 =?utf-8?B?ZDB0bmRXek5BWFVTVU5ZajNMQUlKSFN2Nlc0TlJoellQQ0FwRnRKMnN4bHRr?=
 =?utf-8?B?V3FCVkhoaHpVUjdlVVBFNTY0ZWNiOWNTc0pDYjU1T0s0Sm1pbDEzOGFzbmdH?=
 =?utf-8?B?dEh6cStaWUtsaHlRK3B6MmhabjNDYnZjeE9OclBGOTd3Q1ZiTHVvQkQzcndI?=
 =?utf-8?B?K2RqdDk0WEZxT1NzQ0RraDJVbmVhRWpEL3VLY3NPYnRlUWFTSkNlQ1ZXRER4?=
 =?utf-8?B?QXlCTjBmeER5TU45Y0xwME1tQnJyRUhqVi92RFg0UVJydHJYSms2NUpmRlF0?=
 =?utf-8?B?OG0wY0lCNSt6MlFyOXZNRTRJVWVEZGRFSlI2QnNLckRxWFFaSmphTU0rRzFR?=
 =?utf-8?B?OWFLWjMwSlVHTXVTaExuL0lWcE9tZmhsekZjZWl0K2wxREtVb213Ykw3RFJ0?=
 =?utf-8?B?bVR6aHFaNmNwd3hZT1RSblVjUTRKZWE4ZkljemQ1MGI4VjBoWkg4Vmdaak51?=
 =?utf-8?B?eWJJUVVSWmFIclJNK1oxZnA3a1JBbVlkcVlqeFJnUURvUFQ3ejFrV0prYThv?=
 =?utf-8?B?U3VTLzNRSjZySUsrbWF0eWVaVTI3ZVNreG16NnozTW9NOUpFbVAxelVvcGFx?=
 =?utf-8?B?Vm54THh4WC9jd0dJRzFNTVgwdVc3Z3AyTlNhZWNzZDlIdlBpNWJ0bGNXMHU0?=
 =?utf-8?B?aHBKdTNxdWZTZVJ5ZHlkUytOYWc4dDNTcWszZExTODZCRVBnTnBGMzdHVSs1?=
 =?utf-8?B?bnB6MmY1S1MvbHF3MlloZWV6eVpVQkdxVkJoSWNmcUJpb0s3OERwK2RNMFlu?=
 =?utf-8?B?bWt2VkZRbU1TZVZJWE81WWJ1bnVpNmNEYzFWeWRva2ZjcjFCZUJrVURvbWxq?=
 =?utf-8?B?SnlhSHhvSEpFRHNvRXNtVitUeGVscmZXZzVjeDl1dWFFM2JXL2xhZk5IbDBP?=
 =?utf-8?B?MGRzelBQYnI0MGxSQUgzZTBYV0JmRTkxV01XVEJJWnRrbG9sMHJRZi9LK1lj?=
 =?utf-8?B?eUZxYWZxdjRYVEhZRkFCQi94ZTFiWXZuSWVMbmNEYTFac3ZDaEgrUVl6eHBu?=
 =?utf-8?B?UUpiZGtJQzRUSFdncXphd2Yra050MXh1VnpsajJIb1dWYU9lV213UG93T2RB?=
 =?utf-8?B?Qmx2UDRscFdvNjFyam1kTWZBWVR6cmZjR25BYXdCK2NuczlNQWtUaFNKWktJ?=
 =?utf-8?B?dGZqbUxHWVM3MzNkM2JGMXBQbWlHOW9qQ2ZTRmhyYjIrTU15Mkhab0hQa2ZN?=
 =?utf-8?B?Z1ZHS1Y4dnJrUnhWbU44TU5kK1NLMW53Mkw2RWlNei9RdDFKVjlpbXYwejc2?=
 =?utf-8?B?aml4a01nbTFHR0FTQ2NNMklmQjlkbGNyWEl5bFNaSUlwRzkyaGllNVlxRDlI?=
 =?utf-8?B?YmpWZ3VaNi84d1FLRDBLeGlidFN2SDBoVk5kSWlVMXdld3M5VnNDUm1GcEJG?=
 =?utf-8?B?VU40Uk5RMEk5L3IxVXZqcjVSRDFqZHliRGE0QWtRV3pPMkwvbWxlSkZhRG1W?=
 =?utf-8?B?enFLT2tWbWNTVFdNSTVvYnIxeVo4RkRCajBiRTZOMk5KT2IxOFRiaWh5ZTJE?=
 =?utf-8?B?TVVqRDN3d2F0aEVXMU5qODd2b3VGOXU2RDkzd1ZkMzdVUUVCK21aZG5jbkhj?=
 =?utf-8?B?N3V4SDEyUnR1NGhZRDZURVdjcjdwTDBDTHdONTlzVjZMMER2YXpESCtkb3Vq?=
 =?utf-8?B?YkdmWHZtVnEyNWpvZkhqU0ZaVkxmQVBrNGF6ckxTcDFsQkVuRkFWNGlBVFhn?=
 =?utf-8?B?dkZJd1BxM0syRDJuOHVDUmI1cHNqdDd3c2g2U0ppVjNCbTlLb1F6QjJBWk1q?=
 =?utf-8?B?b1VaV2dtUEovZXNjbnJmck51NGZDaXZHcEgxaEx1SzhLWEcrQldpZVlVYUJ1?=
 =?utf-8?B?Q0lEYi9MSGZ3UTE4SlhxQnZiRGZ1MUJqRmJhelJTNGt6UEZOVHdLUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <334E9C1525C9814597ED165890442A0D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68d17fe1-39a7-4467-58a0-08d9ba145c76
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 06:31:26.2338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bMawmDeZWsStf/ErjLgc5BFuCTnRYz4V4WKJ/a9vq/N0dkfwovE591ZCAkuLg56Mm8teJ3IYijDW85RdKnFpbN/EhdBLN3EzAakff4Ep8pJbg+bnqNplKTCegN5tEhjn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3174
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
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

VGhhbmtzIGFnYWluIGZvciB0aGUgZGV0YWlsZWQgcmV2aWV3IGhlcmUuDQpXaWxsIGZpeCBhbGwg
dGhlIHJlc3Qgb24gbmV4dCByZXYuDQpPbmUgc3BlY2lhbCByZXNwb25zZSBmb3IgdGhpcyBvbmU6
DQoNCg0KT24gVHVlLCAyMDIxLTEyLTA3IGF0IDE2OjIyIC0wODAwLCBNYXR0aGV3IEJyb3N0IHdy
b3RlOg0KPiBPbiBNb24sIE5vdiAyMiwgMjAyMSBhdCAwMzowNDowMlBNIC0wODAwLCBBbGFuIFBy
ZXZpbiB3cm90ZToNCj4gPiArCQkJaWYgKGRhdGF0eXBlID09IEdVQ19DQVBUVVJFX0xJU1RfVFlQ
RV9FTkdJTkVfSU5TVEFOQ0UpIHsNCj4gPiArCQkJCUdDQVBfUFJJTlRfR1VDX0lOU1RfSU5GTyhp
OTE1LCBlYnVmLCBkYXRhKTsNCj4gPiArCQkJCWVuZ19pbnN0ID0gRklFTERfR0VUKEdVQ19DQVBU
VVJFX0RBVEFIRFJfU1JDX0lOU1RBTkNFLCBkYXRhLmluZm8pOw0KPiA+ICsJCQkJZW5nID0gZ3Vj
X2xvb2t1cF9lbmdpbmUoZ3VjLCBlbmdpbmVjbGFzcywgZW5nX2luc3QpOw0KPiA+ICsJCQkJaWYg
KGVuZykgew0KPiA+ICsJCQkJCUdDQVBfUFJJTlRfSU5URUxfRU5HX0lORk8oaTkxNSwgZWJ1Ziwg
ZW5nKTsNCj4gPiArCQkJCX0gZWxzZSB7DQo+ID4gKwkJCQkJUFJJTlQoJmk5MTUtPmRybSwgZWJ1
ZiwgIiAgICBpOTE1LUVuZy1Mb29rdXAgRmFpbCFcbiIpOw0KPiA+ICsJCQkJfQ0KPiA+ICsJCQkJ
Y2UgPSBndWNfY29udGV4dF9sb29rdXAoZ3VjLCBkYXRhLmd1Y19jdHhfaWQpOw0KPiANCj4gWW91
IGFyZSBnb2luZyB0byBuZWVkIHRvIHJlZmVyZW5jZSBjb3VudCB0aGUgJ2NlJyBoZXJlLiBTZWUN
Cj4gaW50ZWxfZ3VjX2NvbnRleHRfcmVzZXRfcHJvY2Vzc19tc2cgZm9yIGFuIGV4YW1wbGUuIA0K
PiANCg0KT2ggY3JhcCAtIGkgbWlzc2VkIHRoaXMgb25lIC0gd2hpY2ggeW91IGhhZCBleHBsaWNp
dGx5IG1lbnRpb25lZCBvZmZsaW5lIHdoZW4gaSB3YXMgZG9pbmcgdGhlDQpkZXZlbG9wbWVudC4g
U29ycnkgYWJvdXQgdGhhdCBpIGp1c3QgdG90YWxseSBtaXNzZWQgaXQgZnJvbSBteSB0b2RvLW5v
dGVzLg0KDQouLi5hbGFuDQo=
