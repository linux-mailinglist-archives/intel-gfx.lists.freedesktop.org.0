Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDBC832577
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 09:12:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26E0310E96C;
	Fri, 19 Jan 2024 08:12:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 130BF10E0A9;
 Fri, 19 Jan 2024 08:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705651920; x=1737187920;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TchvUmgFo2iddDZ+Y9sIEHVrTDbGyWSvHWO4f+zAoKs=;
 b=UQy+PooouQqMsKtyHbEUCFFUT2EfelpAtEQB8N/Kls7LozvnuEOYQ1Ai
 4pzHka2jGQF8w4qGawEEWRhL/LZ6holeHB4OfGOf+GmyUV/YmTkrMNjeJ
 ZvHN64LyWNTG5cw8ds1vQSjC7oIN5VRvGjq0Z/ekz3thSVv6IG88uAe21
 QqPXmGqWYnQe//icvcf7G5ASblUSHmQz3qCnr9/LvA+CgZUtnrsplEXyd
 6jAWm42PXzFzG/TxLz1hqEo6EwuEy6S2oVFZx2wrqj1XG1efiHe8uzMWH
 d02yYmeSr5x+MaagHVyK6H6ouQrQQ3xbhYTpUKesg6JKPVNDKUWlIVkg1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="594027"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; 
   d="scan'208";a="594027"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 00:12:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="958068464"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="958068464"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jan 2024 00:11:59 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Jan 2024 00:11:58 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 19 Jan 2024 00:11:58 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 19 Jan 2024 00:11:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=khwSU8eCv3GnDi/7VQ9/e0ji4fBch/01L8ez99HpR6Cg2y2a/e5xLog99jCGfHdC1SvrDO2lpsL2negn/tZ5mK0Jws0dEH7Hb9BuhJIFFBm0NoLwCwECYmokq3tSt/CwzBoV0d6VtXq6EDljgb1PPI49p7s6UY6f7B7THxE5nhXhMfPorllS3p8u8uQmEda5jT/4K49+s+qB4gK6Zac13Td38EjQFuO/iC2nlZBjNJdHjZE+87/kqnd6CZeuRqwUKEBnbA1ZjogdAZb7BG8MjeY83HZ9GtTZNoNPIf4q8k1kkWCdyaI2jhl+lk31YAlgUP7e+dRipt9Qtd+6nmO5bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TchvUmgFo2iddDZ+Y9sIEHVrTDbGyWSvHWO4f+zAoKs=;
 b=DDb7e/FgMtVtKtWCg3rfmoDjygBW6p/RH124osz/9LlPPBU9m0gyOl2FuA2+blaVCexSQBnqlerN+kQQzsq1Q84KYsaZZhFWRLp7pFhV/TxiqY0pnGfqN2WO3E5c5RQ4BQ74Jpd7BOkVMH1KABH/09UrkbtuXLapQ4G5kS+HMNEvKpd3Tle9an1J/LjtJoXSbKD2QHAAxWchOu4GY+nnki0wjF5vImqGzTIwszcPQsx32SHQYXqLV2ecNX/38Z9anoH+6eFHuHaDtZX1SebYWaGIYYZnMyV7iyWUjwPB6Rsi03OcifnBPTiOYKwBUp4ZWUJ4teG9YgQSJ1i5r7JSTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 CY5PR11MB6092.namprd11.prod.outlook.com (2603:10b6:930:2c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7202.26; Fri, 19 Jan 2024 08:11:56 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::dde0:287b:4d5f:32b5]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::dde0:287b:4d5f:32b5%4]) with mapi id 15.20.7202.026; Fri, 19 Jan 2024
 08:11:55 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBDdXJz?=
 =?utf-8?Q?or_vblank_evasion?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEN1cnNvciB2?=
 =?utf-8?Q?blank_evasion?=
Thread-Index: AQHaLgiOFniAkE1kMU2V4tRlpzoce7Cu31rggDCOhACAAZO78A==
Date: Fri, 19 Jan 2024 08:11:55 +0000
Message-ID: <DM8PR11MB5655D27BE241638EF31EA88DE0702@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <170250169138.10264.10617046881352336732@emeril.freedesktop.org>
 <DM8PR11MB565510ABB7B4F9C3ED54A053E090A@DM8PR11MB5655.namprd11.prod.outlook.com>
 <PH8PR11MB6753D296B6F71ED45CA53198F2712@PH8PR11MB6753.namprd11.prod.outlook.com>
In-Reply-To: <PH8PR11MB6753D296B6F71ED45CA53198F2712@PH8PR11MB6753.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ville.syrjala@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|CY5PR11MB6092:EE_
x-ms-office365-filtering-correlation-id: 5e1c2e24-35ab-457c-f49e-08dc18c64d4d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Bnmr/iV03ZuORTk9bD202NfWShjBUtzfCIjAgoWNKuYyZRUzKpJlrBoP5/+Jkx30OpQopch0bDM+aNT3iiVo/tEnQtFzAC6eqJGw8CTbxvOd8tyQpzCi+nQvpt4WhDOA4q+kUEO4kGFZauDhZC9fgS4CIjzwSsDqlPNnqAhE7aRqgYMFJsSGw5Ubrj8Wwz4FIw9ik+nBr/L673eQEaqJVBv7WO3lzHaKdVAuzVY2hYUD5O0oKzzYv0P+Ygx+4aSYgmBg5VO0Q9QHmMyUK2nj4c6+XVXhuR3UeMRj/ygr2JPjf3Lm6Ly/yLTRB3M19mcADhAmFUAxHj8okkEvirFXR9VIWBZL5dbNithYIZErNyD9yeBQojcPADPKNvHJMtVTAnljNdl9oS89KFLAyfROK6wbn0ME4Cwm3dNwJ0xDoHdzqYnuLwiE0H28VFddQj6oymyj4kh+WjmDHo+eexnMKdLCuMIOp+SEKmTWRRx75wWU3RCBEbViqaO3XKh15rnhY2CML7G07zDHYZx6kvTgF7/C/R1o9wHpImK5M7e/3MhYbx2QMXX6amubHsKwWITb0hH1ZtSnHWIgCshQHrdidn5wGj+P+8e4WCkx5zTGtpIvbKLlG8Mu4BFbS3YFl5N9ifTjehiawXA0ajx48YldHpn0CkARZVgFq1ZnojCCbck=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(376002)(366004)(396003)(230273577357003)(230922051799003)(230173577357003)(186009)(1800799012)(451199024)(64100799003)(26005)(66574015)(6506007)(7696005)(71200400001)(9686003)(53546011)(83380400001)(5660300002)(2906002)(52536014)(41300700001)(478600001)(966005)(110136005)(8936002)(66446008)(66476007)(66556008)(66946007)(76116006)(64756008)(316002)(82960400001)(33656002)(86362001)(38100700002)(122000001)(38070700009)(55016003)(84970400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?alpwdk5EYVo5MWwvdnZQY0RBMW1rd2RMOHhvT21uSXEyWW5iUDlaNzVSS1Zx?=
 =?utf-8?B?aUE3RU43d2hWSU10eGppWnhoWlBYK0F1dzFnbTdvUWdMNzJwRUZyaS92MVU1?=
 =?utf-8?B?VHdSbmJWQWlGOW5QNWlqRURQWDFzVUxvUk1vcTlIaGJYNlhSQXBVL0Y0OXl1?=
 =?utf-8?B?RGdaaWt0dFJUdW9lQXJrVUJjT0F4VGswSzIrMVhjQnZvK0d0NGpHV1p2dXRi?=
 =?utf-8?B?bFBkUWFRUEFNUHlhc0hkQVc5OXdIWE5aaXpDaHFsMWlMNEc3WEtlNHdldnUw?=
 =?utf-8?B?TzlhRkFHcDJyRXo0bTFCYVoydjJIS3ExRWlkTDlVVmpDYTd3cjQ5Q2p4ZWFW?=
 =?utf-8?B?eEFlMHJIQ01hdy9ROEpkVWdmMFpCNlB2MUc3VFdTRWtudGFOY3pUaklQaUx3?=
 =?utf-8?B?d2JmMFJTRjQzcVJsa0RGY3hVYUtTS2t4V0oxSXF4Wnp3MUdqYjdnMTIvT2p5?=
 =?utf-8?B?L3pMK3B0bVZpeDd6N1BhNTI1b1ViaUdLTXZGQU9MSy9uaGVhalpoUXZPdU9k?=
 =?utf-8?B?TUx5R3dBMW1KaWRIdlZoZEY3MDlVNWhVWk83eFFNOHlDdGo0UFRDaWhBd0l1?=
 =?utf-8?B?V3h3SFpwMS9VdVJWRW94T2JWOENQRitULzdmTmh6eW1zblV4Rk4rMFlPSGtH?=
 =?utf-8?B?dXJDaDNqY2tJT3pKTlY1YlhlOVByd1FsRW5NOWozL215U2xtSGtJdFZYTWw1?=
 =?utf-8?B?QlM1SWN0Wi9HS01HWThIRVZQbEVVRjFqV1BwanhveVFUd1NROXpMOW10b1ZG?=
 =?utf-8?B?K3EwbFZMUzA5U1oxWDNMcjU4TUIvTUQ4TWIyQzVXVnJIQVA5L0JNRnh5dld3?=
 =?utf-8?B?VGgvVHhQcHdnZ1gySkcvSGNTRXFXWFpJOTFzaXVITzZmQ2xLQlcxZlFuRzlC?=
 =?utf-8?B?dzlnZ1E4N25DMlRFQnIxZU9KZjhjMy9ZaEU2akJ1UmtXejFyZW9ma1J1d0NW?=
 =?utf-8?B?K3pMSE9ZS2lCSjQ1YTc0aTNVVlZaalJQVDJnVi8vbVBFemFqUXZTN3lNL3d6?=
 =?utf-8?B?SVRab1VrOFV0TERIRVg2S1IxRmI0WnNlWVMwbEQ0QlRXWWJPMmZtTkY3ZDBi?=
 =?utf-8?B?OGFiVUVibmZwdEk2NHB6T3MxU2p2UC8vMm9GdmJ5ZEovNVNHSzdtNXNOWjUy?=
 =?utf-8?B?ZkczeUJpRkZ4OXRxTGoxNEpKZXc4SHo1OTdkZ243MVVxRWFGUnR4dTQ1ZG1l?=
 =?utf-8?B?NEhucmRBVmhMOHRVUEp2Sml5YXFSRDVray9sRFRmdW9VNmdnZEI5MUdhbnUw?=
 =?utf-8?B?a1BLVXlCMmxjdzhXYXFRTlhVZTFENnZKcFJWSkVac0hRenZrQmNKUmhBME1V?=
 =?utf-8?B?aU5Ndk1QR3RqREF3bjQ4cmhBRWtuQjJ0cTRzajhiNFAycExweU9YTGFHLzVY?=
 =?utf-8?B?TXlydTI0cithbXA4U1F4eGtZMDNKaG9ZVzFtVlE1MVczOHhXUVNOVjNnYjZ2?=
 =?utf-8?B?V0s0aFFTdHBDcE9nMXpUOUxRVTBDWTBDZTFGeFFwd0l3UWk3K0JwN1hOTTl4?=
 =?utf-8?B?SkhNUnVWWk13dVh3S2hMT3Z3d25XQzh5MTRxejY4VTBkWWNheCtvY1BrRkxx?=
 =?utf-8?B?SkRlT0hLTmcyMWlvKzNiaEJpSlg5VXZKODExR2Vma0E4UXRBSUxVaytzK0ov?=
 =?utf-8?B?RHZQMVlBRjgrSkZ4WUdMS01VOGlaK0ZCVGwzNnIzQVoyTVFUUFFUZlhFREFU?=
 =?utf-8?B?THhyRi81NkU0blpDTjJIdFg5YkxwMC9hbnVXTnZnN1RmUjNCNm5KYlJwNUhv?=
 =?utf-8?B?MWJvUlBOT1NwTUFCbi9aMnc2NjdRWXVFUlZ2LzlNc1VYakg3Y1dFSlFnUHJD?=
 =?utf-8?B?UHVMRFFnWUYrY3NMOGQrUHdBNXlUODFwOElFVEJyT2U5QkY1UGovaXVPN21V?=
 =?utf-8?B?eTlieDlWeGJZeStoeXl6TlQxWXJCSi9CRlhOa2ZOdnIxZUJET1I2R3M0am5J?=
 =?utf-8?B?elVjbWRuZVVmMkRpNXdsSDZyQjlMS0x6NEU4RDdRc0dvQ25lNVB4cHNHSnVF?=
 =?utf-8?B?ZHRZL0FiMncrb0lUY2YreEZhTWlGUHJYRlFzQTUraWh1SWJmQmtQZUt1bFVh?=
 =?utf-8?B?bkc2OStFaEFEd2oyYTNMUmNXYUk2bnl6ZEQwcVFIeVRUWU9jWWJiYStXbHk2?=
 =?utf-8?Q?07F4A3ae3JeL51ZdTbPYXjzI+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e1c2e24-35ab-457c-f49e-08dc18c64d4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2024 08:11:55.8804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n47F3supapyFTFHgzlUTk14Ejs+CGDDVFNf+qHncXOTvg4wLcjD90pRs3iRMin+3CqSdFR4cmvuBlnJpbCTM0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6092
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

SGksDQoNCldoaWxlIHJlLXJlcG9ydGluZyAsIHBsZWFzZSBwYXkgYXR0ZW50aW9uIHdlIGFyZSBu
b3QgcmUtcmVwb3J0aW5nIHNvbWV0aGluZyB3ZSBzaG91bGQgbm90LiBFZyB0aGlzIHJlcXVlc3Qg
d2FzIGZyb20gDQoiU2VudDogTW9uZGF5LCBEZWNlbWJlciAxOCwgMjAyMyA0OjA1IFBNIiAgLi4u
c28gbW9udGggb2xkLiANCg0KQFZpbGxlIFN5cmrDpGzDpCwgRG8geW91IHNlZSB0aGlzIGFzIG9u
IGlzc3VlIG5vdz8gDQoNCkJyLA0KSmFuaQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+IEZyb206IElsbGlwaWxsaSwgVGVqYXNyZWVYIDx0ZWphc3JlZXguaWxsaXBpbGxpQGludGVs
LmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEphbnVhcnkgMTgsIDIwMjQgMTA6MDUgQU0NCj4gVG86
IFNhYXJpbmVuLCBKYW5pIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7DQo+IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+OyBJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJq
ZWN0OiBSRTog4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEN1cnNvciB2Ymxh
bmsgZXZhc2lvbg0KPiANCj4gSGksDQo+IA0KPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvc2VyaWVzLzEyNzc0NC8gLSBSZS1yZXBvcnRlZC4NCj4gDQo+IFRoYW5rcywNCj4gVGVq
YXNyZWUNCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEk5MTUtY2kt
aW5mcmEgPGk5MTUtY2ktaW5mcmEtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJl
aGFsZiBPZg0KPiBTYWFyaW5lbiwgSmFuaQ0KPiBTZW50OiBNb25kYXksIERlY2VtYmVyIDE4LCAy
MDIzIDQ6MDUgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ow0KPiBJOTE1LWNpLWlu
ZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSRTog4pyXIEZpLkNJLkJBVDog
ZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEN1cnNvciB2YmxhbmsgZXZhc2lvbg0KPiANCj4gSGksDQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+ID4gUGF0
Y2h3b3JrDQo+ID4gU2VudDogV2VkbmVzZGF5LCBEZWNlbWJlciAxMywgMjAyMyAxMTowOCBQTQ0K
PiA+IFRvOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gU3ViamVjdDog4pyX
IEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEN1cnNvciB2YmxhbmsgZXZhc2lvbg0K
PiA+DQo+ID4gUGF0Y2ggRGV0YWlscw0KPiA+IFNlcmllczoJZHJtL2k5MTU6IEN1cnNvciB2Ymxh
bmsgZXZhc2lvbg0KPiA+IFVSTDoJaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy8xMjc3NDQvDQo+ID4gU3RhdGU6CWZhaWx1cmUNCj4gPiBEZXRhaWxzOglodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvaW5k
ZXguaHRtbA0KPiA+DQo+ID4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTQwMTcg
LT4gUGF0Y2h3b3JrXzEyNzc0NHYxDQo+ID4NCj4gPg0KPiA+IFN1bW1hcnkNCj4gPg0KPiA+DQo+
ID4gRkFJTFVSRQ0KPiA+DQo+ID4gU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGgg
UGF0Y2h3b3JrXzEyNzc0NHYxIGFic29sdXRlbHkgbmVlZA0KPiA+IHRvIGJlIHZlcmlmaWVkIG1h
bnVhbGx5Lg0KPiA+DQo+ID4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUg
bm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+ID4gaW50cm9kdWNlZCBpbiBQYXRjaHdv
cmtfMTI3NzQ0djEsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbQ0KPiA+IChJOTE1LWNpLQ0K
PiA+IGluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbSB0byBkb2N1bWVu
dCB0aGlzIG5ldw0KPiA+IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9z
aXRpdmVzIGluIENJLg0KPiA+DQo+ID4gRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tDQo+ID4gdGlwL1BhdGNod29ya18xMjc3NDR2MS9pbmRleC5odG1s
DQo+ID4NCj4gPg0KPiA+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDM3IC0+IDM3KQ0KPiA+DQo+ID4N
Cj4gPiBBZGRpdGlvbmFsICgxKTogYmF0LXJwbHMtMg0KPiA+IE1pc3NpbmcgKDEpOiBmaS1zbmIt
MjUyMG0NCj4gPg0KPiA+DQo+ID4gUG9zc2libGUgbmV3IGlzc3Vlcw0KPiA+DQo+ID4NCj4gPiBI
ZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2Vk
IGluDQo+ID4gUGF0Y2h3b3JrXzEyNzc0NHYxOg0KPiA+DQo+ID4NCj4gPiBJR1QgY2hhbmdlcw0K
PiA+DQo+ID4NCj4gPiBQb3NzaWJsZSByZWdyZXNzaW9ucw0KPiA+DQo+ID4NCj4gPiAqCWlndEBr
bXNfcG1fcnBtQGJhc2ljLXJ0ZToNCj4gPg0KPiA+IAkqCWJhdC1ycGxzLTI6IE5PVFJVTiAtPiBB
Qk9SVCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+ID4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTI3NzQ0djEvYmF0LXJwbHMtMi9pZ3RAa21zX3BtX3JwbUBiYQ0KPiA+IHNpYy0NCj4g
PiBydGUuaHRtbD4NCj4gVW5yZWxhdGVkLiBQbGVhc2UgcmUtcmVwb3J0DQo+ID4NCj4gPg0KPiA+
IEtub3duIGlzc3Vlcw0KPiA+DQo+ID4NCj4gPiBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBp
biBQYXRjaHdvcmtfMTI3NzQ0djEgdGhhdCBjb21lIGZyb20ga25vd24NCj4gaXNzdWVzOg0KPiA+
DQo+ID4NCj4gPiBDSSBjaGFuZ2VzDQo+ID4NCj4gPg0KPiA+IElzc3VlcyBoaXQNCj4gPg0KPiA+
DQo+ID4gKglib290Og0KPiA+DQo+ID4gCSoJYmF0LWpzbC0xOiBQQVNTIDxodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+ID4gdGlwL0NJX0RSTV8xNDAxNy9iYXQtanNsLTEv
Ym9vdC5odG1sPiAgLT4gRkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+ID4gY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvYmF0LWpzbC0xL2Jvb3QuaHRtbD4NCj4gPiAo
aTkxNSM4MjkzIDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vl
cy84MjkzPiApDQo+ID4NCj4gPg0KPiA+IElHVCBjaGFuZ2VzDQo+ID4NCj4gPg0KPiA+IElzc3Vl
cyBoaXQNCj4gPg0KPiA+DQo+ID4gKglpZ3RAZGVidWdmc190ZXN0QGJhc2ljLWh3bW9uOg0KPiA+
DQo+ID4gCSoJYmF0LXJwbHMtMjogTk9UUlVOIC0+IFNLSVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0K
PiBjaS4wMS5vcmcvdHJlZS9kcm0tDQo+ID4gdGlwL1BhdGNod29ya18xMjc3NDR2MS9iYXQtcnBs
cy0yL2lndEBkZWJ1Z2ZzX3Rlc3RAYmFzaWMtaHdtb24uaHRtbD4NCj4gPiAoaTkxNSM5MzE4IDxo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy85MzE4PiApDQo+
ID4NCj4gPiAqCWlndEBnZW1fdGlsZWRfcHJlYWRfYmFzaWM6DQo+ID4NCj4gPiAJKgliYXQtcnBs
cy0yOiBOT1RSVU4gLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVl
L2RybS0NCj4gPiB0aXAvUGF0Y2h3b3JrXzEyNzc0NHYxL2JhdC1ycGxzLTIvaWd0QGdlbV90aWxl
ZF9wcmVhZF9iYXNpYy5odG1sPg0KPiA+IChpOTE1IzMyODIgPGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzMyODI+ICkNCj4gPg0KPiA+ICoJaWd0QGttc19j
dXJzb3JfbGVnYWN5QGJhc2ljLWJ1c3ktZmxpcC1iZWZvcmUtY3Vyc29yLWxlZ2FjeToNCj4gPg0K
PiA+IAkqCWJhdC1ycGxzLTI6IE5PVFJVTiAtPiBTS0lQIDxodHRwczovL2ludGVsLWdmeC0NCj4g
Y2kuMDEub3JnL3RyZWUvZHJtLQ0KPiA+IHRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvYmF0LXJwbHMt
Mi9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFzaWMtYnVzeS1mbGkNCj4gPiBwLSBiZWZvcmUtY3Vy
c29yLWxlZ2FjeS5odG1sPiAgKGk5MTUjNDEwMw0KPiA+IDxodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy80MTAzPiApICsxIG90aGVyIHRlc3QNCj4gPiBza2lw
DQo+ID4NCj4gPiAqCWlndEBrbXNfZHNjQGRzYy1iYXNpYzoNCj4gPg0KPiA+IAkqCWJhdC1ycGxz
LTI6IE5PVFJVTiAtPiBTS0lQIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUv
ZHJtLQ0KPiA+IHRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvYmF0LXJwbHMtMi9pZ3RAa21zX2RzY0Bk
c2MtYmFzaWMuaHRtbD4NCj4gPiAoaTkxNSMzNTU1IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8zNTU1PiAgLw0KPiA+IGk5MTUjMzg0MCA8aHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMzg0MD4gKQ0KPiA+DQo+ID4g
KglpZ3RAa21zX2ZvcmNlX2Nvbm5lY3Rvcl9iYXNpY0Bmb3JjZS1sb2FkLWRldGVjdDoNCj4gPg0K
PiA+IAkqCWJhdC1ycGxzLTI6IE5PVFJVTiAtPiBTS0lQIDxodHRwczovL2ludGVsLWdmeC0NCj4g
Y2kuMDEub3JnL3RyZWUvZHJtLQ0KPiA+IHRpcC9QYXRjaHdvcmtfMTI3NzQ0djEvYmF0LXJwbHMt
Mi9pZ3RAa21zX2ZvcmNlX2Nvbm5lY3Rvcl9iYXNpY0Bmb3JjZS0NCj4gPiBsb2FkLQ0KPiA+IGRl
dGVjdC5odG1sPiAgKGZkbyMxMDkyODUNCj4gPiA8aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9y
Zy9zaG93X2J1Zy5jZ2k/aWQ9MTA5Mjg1PiApDQo+ID4NCj4gPiAqCWlndEBrbXNfcGlwZV9jcmNf
YmFzaWNAcmVhZC1jcmMtZnJhbWUtc2VxdWVuY2VAcGlwZS1kLWVkcC0xOg0KPiA+DQo+ID4gCSoJ
YmF0LXJwbHAtMTogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0K
PiA+IHRpcC9DSV9EUk1fMTQwMTcvYmF0LXJwbHAtMS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJl
YWQtY3JjLWZyYW1lLQ0KPiA+IHNlcXVlbmNlQHBpcGUtZC1lZHAtMS5odG1sPiAgLT4gQUJPUlQN
Cj4gPiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiA+IHRpcC9QYXRj
aHdvcmtfMTI3NzQ0djEvYmF0LXJwbHAtMS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHJlYWQtY3Jj
LWZyYW0NCj4gPiBlLSBzZXF1ZW5jZUBwaXBlLWQtZWRwLTEuaHRtbD4gIChpOTE1Izg2NjgNCj4g
PiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvODY2OD4g
KQ0KPiA+DQo+ID4gKglpZ3RAa21zX3BtX2JhY2tsaWdodEBiYXNpYy1icmlnaHRuZXNzOg0KPiA+
DQo+ID4gCSoJYmF0LXJwbHMtMjogTk9UUlVOIC0+IFNLSVAgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0K
PiBjaS4wMS5vcmcvdHJlZS9kcm0tDQo+ID4gdGlwL1BhdGNod29ya18xMjc3NDR2MS9iYXQtcnBs
cy0yL2lndEBrbXNfcG1fYmFja2xpZ2h0QGJhc2ljLQ0KPiA+IGJyaWdodG5lc3MuaHRtbD4gIChp
OTE1IzUzNTQNCj4gPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9p
c3N1ZXMvNTM1ND4gKQ0KPiA+DQo+ID4ge25hbWV9OiBUaGlzIGVsZW1lbnQgaXMgc3VwcHJlc3Nl
ZC4gVGhpcyBtZWFucyBpdCBpcyBpZ25vcmVkIHdoZW4NCj4gPiBjb21wdXRpbmcgdGhlIHN0YXR1
cyBvZiB0aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuDQo+ID4N
Cj4gPg0KPiA+IEJ1aWxkIGNoYW5nZXMNCj4gPg0KPiA+DQo+ID4gKglMaW51eDogQ0lfRFJNXzE0
MDE3IC0+IFBhdGNod29ya18xMjc3NDR2MQ0KPiA+DQo+ID4gQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5
DQo+ID4gQ0lfRFJNXzE0MDE3OiA1OGFjNGZmYzc1YjYyZTYwMDdlODVhZTY3Nzc4MjBlNzdjMTEz
YjAxIEANCj4gPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4g
PiBJR1RfNzYzOTogMThhZmMwOWUzNjJiNjA1YTNjODhjMDAwMzMxNzA4ZjEwNWQyYzIzYSBADQo+
ID4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0K
PiA+IFBhdGNod29ya18xMjc3NDR2MTogNThhYzRmZmM3NWI2MmU2MDA3ZTg1YWU2Nzc3ODIwZTc3
YzExM2IwMSBADQo+ID4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4
DQo+ID4NCj4gPg0KPiA+IExpbnV4IGNvbW1pdHMNCj4gPg0KPiA+DQo+ID4gZTFjMjc3ZjlhZTU1
IFJldmVydCAiZHJtL2k5MTUveGUybHBkOiBUcmVhdCBjdXJzb3IgcGxhbmUgYXMgcmVndWxhcg0K
PiA+IHBsYW5lIGZvciBEREIgYWxsb2NhdGlvbiINCj4gPiBiNzI2NzVjMjhiMDUgZHJtL2k5MTU6
IFBlcmZvcm0gdmJsYW5rIGV2YXNpb24gYXJvdW5kIGxlZ2FjeSBjdXJzb3INCj4gPiB1cGRhdGVz
DQo+ID4gM2FhZjgwYjU5MzM0IGRybS9pOTE1OiBNb3ZlIGludGVsX3ZibGFua19ldmFkZSgpICYg
Y28uIGludG8NCj4gPiBpbnRlbF92YmxhbmsuYw0KPiA+IDFmMTgzZmUwOTJiNiBkcm0vaTkxNTog
TW92ZSB0aGUgbWluL21heCBzY2FubGluZSBzYW5pdHkgY2hlY2sgaW50bw0KPiA+IGludGVsX3Zi
bGFua19ldmFkZSgpDQo+ID4gMmFmNWQwYmRjYzM0IGRybS9pOTE1OiBFeHRyYWN0IGludGVsX3Zi
bGFua19ldmFkZSgpIGZhNTgzZjkwMzJlZg0KPiA+IGRybS9pOTE1OiBJbmNsdWRlIG5lZWRfdmx2
X2RzaV93YSBpbiBpbnRlbF92YmxhbmtfZXZhZGVfY3R4DQo+ID4gMjM1NzcwZThhYjNhIGRybS9p
OTE1OiBJbnRyb2R1Y2Ugc3RydWN0IGludGVsX3ZibGFua19ldmFkZV9jdHgNCj4gPiA3NGRlYjc2
MjQxNzUgZHJtL2k5MTU6IFJlb3JkZXIgZHJtX3ZibGFua19wdXQoKSB2cy4gbmVlZF92bHZfZHNp
X3dhDQo+ID4gYjI4NTllMmQ1NzE0IGRybS9pOTE1OiBEZWNvdXBsZSBpbnRlbF9jcnRjX3ZibGFu
a19ldmFkZV9zY2FubGluZXMoKQ0KPiA+IGZyb20gYXRvbWljIGNvbW1pdHMNCg0K
