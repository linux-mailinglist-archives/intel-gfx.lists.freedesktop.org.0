Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6250F8388B1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 09:17:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41D810E150;
	Tue, 23 Jan 2024 08:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B26E210E6E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 08:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705997863; x=1737533863;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=cXBD8+5tG8N7yBozrM6xyOa5CoFFcQ5WwuRo+53mXlg=;
 b=EkHTMD5tBPMjeCs/sXW6j4HVoLrS4txtky0GkAmk3Lfhp4eAijL3b33f
 UdwlSx9TMPiK58AFQ8dCDwJy6fdQMvDken8pAfEL4RHiHWDAx6TOH6SfK
 TrnTggttq5riHGpVDbSteI34VzDwg3LcpmDYiPK3ngT12BND+VPfYdHPf
 J6KC+PYblIDmzTRSFEcOyLEcpIslcj/dN4wnrRtVxjBuNNEpaL+cflTug
 JwRj59Scbth7LsGnZiROEAjgG91IxHqynSwNRUf9ua1FAvemdrGYV1O8Z
 OvYC3/Z1HSQgAuG4lLluxLExIXKH4n/Worwf68VWeNTb88fJmdGca5nP+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="405208907"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="405208907"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 00:17:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="929264845"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="929264845"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2024 00:17:40 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 23 Jan 2024 00:17:40 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 23 Jan 2024 00:17:40 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 23 Jan 2024 00:17:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P9lqFQ0Z4+7Z5baKQqXtT6hzp7LYNOAYXQYC+77X/ZXmLr5gVMPxYpBPsQxLugvxvIEnEZD6dpR7895x8EOyvqH7iUzbXwd1U71aGhyXy1jW8rmOQbg0nhynslihBUbAw6tAuN3Pm3NDgptmVcPLa5RnlbKCcXkLY6jHHENIpJQizLn8GvxuAEjJiPqIRtKf5qTCvE4wHhssTqwQFNXnwy2wSMO11Je6UULeIV/Cswp531VjUrVvxFlSP0H7E2+GG/+S3vDf9bzOpG8LATz7JWAe8hTrruAgTrEx7IFfJY2iH7f8FGyLayvQ9M4BANP9JgLxMChW/d5/R2dEXmuyqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cXBD8+5tG8N7yBozrM6xyOa5CoFFcQ5WwuRo+53mXlg=;
 b=FmZLmE41gYjn115QCNjQVUvuqJQoSv81GxpDTnfxQWHyTTEgIi8gjic4OF/NNwrNrfJz1E5jCWCsPgxZZfUUIfDxtnzIi7zqVs8Yv3Bcqj/p/wnwPoylTKWcRE1/RS+l/cNgtkd4iNgzpTsctuAeuSHKPZYZS0FcpltTluI7BAgYQibmHRTETAyyy6Lu0mq1Xd6FhulBPQAGRHKX6oNKKe8FuL7KshsNqeTl0gZxGdJYCwK7XdN/HJG+L7b/Nh8qVl4d4JuYzmj+ogvLw7Tfh/ZnQFa25ETZTfHG8Ea/lWNf2k5euSZaB/k83Q9M/TQGGQgOGekzlDQJOL4nV1qqGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5928.namprd11.prod.outlook.com (2603:10b6:510:144::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.37; Tue, 23 Jan
 2024 08:17:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7202.031; Tue, 23 Jan 2024
 08:17:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/psr: Request modeset on initial commit to
 compute PSR state
Thread-Topic: [PATCH] drm/i915/psr: Request modeset on initial commit to
 compute PSR state
Thread-Index: AQHaTctiyfWjVarGx0OullqjlacorLDnA42AgAAEV4CAAALNAIAAAvWA
Date: Tue, 23 Jan 2024 08:17:36 +0000
Message-ID: <22080480081e00b383f48a6c2f6caf755734683e.camel@intel.com>
References: <20240123071103.2147760-1-jouni.hogander@intel.com>
 <Za9tpxLhbrexGEDG@intel.com>
 <83b0e2b52e2bc8ab1f1ba7f296d7d3b08a0be249.camel@intel.com>
 <Za9zpJKDG_EMfROZ@intel.com>
In-Reply-To: <Za9zpJKDG_EMfROZ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5928:EE_
x-ms-office365-filtering-correlation-id: 805d1557-6e5f-4a5a-24d5-08dc1bebc209
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CuY6S2b6S4vNm+oCYu5CO1AUywKiW3wYmCctBrqdA4/QBVJb/IvuEU0YhdOBXL4i9lyNyzj1YUTrLL9HBETDVigPy38Uj7F6Wkxg5DQSRuasEtwaT0D/WmmK8IhBmCDUxHvvzjGz6M7+7YMPSosblVe6LgLu5+sc3Mp+afYs9Ds5wmiw/23iRhe4JhdwwElQ53S4X0t/hqW7TrD5QXW2Yi1OS0Vm1HuS8epN/GiZE7UPLxrH94BgA9jDC58Kj2q/geK1S2ZX4O1Q8ASt1k6BK3eDjnTy1HJWdlSb0FRatEI6RYYO+BZK8zftjg3y4+bedlU7ljziWGbY2gAqutBTWh/w3wRoBI2XaBey7ezEeTLAsVekU0B5RTL+PGIf76uUdq++2MgrsUNl1gN0TcozMwOffnt3OL9dq3Wr9mtEZNr41pEbsoyo7L5OxXGEvzZTcksKpwEgzVt8WXVDQTrTo1Mg33R4SqpY1vL3LQ7qfnntxxBCrFsNSxP/i2MnN3+6tXo2pEba8xH2kh7OiZbv6yy7E9MklQH80tqShIiKLSH/bEP4xxkRwEjavjPr6/9Xj7qrelSz5zb9kIlSo87dJ0kSO3Ccpn4GVaZra/l3AzBjZUtnW2UW67e3haw8Mk9LhrT2TgCae14bZoJeL8UiXw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(136003)(346002)(396003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(66574015)(2616005)(6512007)(6506007)(71200400001)(26005)(122000001)(83380400001)(5660300002)(4326008)(8676002)(8936002)(41300700001)(2906002)(966005)(6486002)(6916009)(316002)(478600001)(91956017)(66556008)(66946007)(66446008)(64756008)(66476007)(76116006)(36756003)(82960400001)(86362001)(38100700002)(38070700009)(66899024);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WHh5QzNvTGtFV05JbjBXOXdvYXlDMEtobzhSQ2xxKzM1UVZYK3hNNVcwWDZq?=
 =?utf-8?B?QmV4RjI1RG41OWEvWDFLUXlYWVhBRGRiSm92eTRpNmE4U3hVOUdaOVBKMUFx?=
 =?utf-8?B?SUNnNlAweDQ5T1RDVHQzNmxTaHdDNG8rOWtrRUFrZlNjTEFjeWJ5QStLbytV?=
 =?utf-8?B?VTdQVjJxN0k0NUk0OFVZMGhMaVRyWGl5OU1Qd1dGcWt2a2ZTT1RjbWpyVXV5?=
 =?utf-8?B?bUs1NGFGUTZzbFZzL2xEOEpBRXJaeUJqRmYwNE1tcERuSWxCRDRoSnVzYUls?=
 =?utf-8?B?U0NYK3lPRnZVV05NVzliR3hlUUtVSGN4WGFYQkxrR2lDWmUwc2wyalRQM0Fy?=
 =?utf-8?B?NVlaNXBLOFVma3QrOEk1Q1RaQ3FCa0Y0T0VFYWN4K25OOTdoRlptQktnalpC?=
 =?utf-8?B?ZVhabEpkbHhHN0UyYkJkREdxVHFxSnhjR05YM3NKT05pVmdVOEs0THBmVVh6?=
 =?utf-8?B?alM0L0Y5ckFnRTVjRU1WZlU1cVVLVldvMVY3eGttcVFOMVVQSy9RMzY3blFU?=
 =?utf-8?B?a1BjZG5IdGJRZFN3bE1VK1FhYitlOGl6UlluVWd5M1dJeVFtUGFSazdORDk2?=
 =?utf-8?B?TlJ4VUY3WVg4bVpWdktvLzIvT3l3b0pGeWNqakxjYU4rUGJ0Y2d4YXpHR1do?=
 =?utf-8?B?TFhtUGI1Nm5HNFovL2xNeWVLRFdhSXZZWTBPTHZPTXpEaUZMVEhGUDdnVHEy?=
 =?utf-8?B?bHdLOGpJOWk5MXpEaWJMeTMyeDhGQjBUY2RtUkRtV1FVWmtXeXdPSDFUWHkz?=
 =?utf-8?B?cTliWEo0c3Y4d2c2czVqNWFkaHY0NGp2YTRnMmdOS1BUdXRIT25vKzVSTXAw?=
 =?utf-8?B?UXlHeFFoWTJGdTB4eS9ydVpjN1FFeERXZzU4b0laNjYyWTA1aEMzMkp2R1Fq?=
 =?utf-8?B?TTM2bzFBZGdVNmp4RVp4OXBtY0c0Z1RXYWtTTG9PQ0pzWW9rVytKUkNtS3Ri?=
 =?utf-8?B?cEdTOW8xUVVPT0d3NGVGWEZ0YitscE9JeFE5L2xLTHVZZ0FDcTFFcUhWVGlY?=
 =?utf-8?B?aDRVeGRFRDZwdFBLc1AwMnJ1RnFaOVhTZXVBZHVPS3JRVnIzVlJLMEU4UHJT?=
 =?utf-8?B?MGtKaE9pcDdWRWY4NjZ1S0VWUDl2ek9McjhScVhsTFNEL0hOZHhKODhJdGpy?=
 =?utf-8?B?OXJ6UFlKdk5VSnA2cDZoU0tpNWovNituNjJ3Vkg3b1NjNHNqeEpuSno1d2NG?=
 =?utf-8?B?eHVNMm9Pd0poWVRGMWJBQmtOSXpkOUpmd2djQTVvZEtUSkdPQVZPbVQzYUxw?=
 =?utf-8?B?ZWhveEtyeTBtb0dBK0JabUJiRndSQzZEZFpIY0tqLy8xVHlHbkZnM29zY29a?=
 =?utf-8?B?MHQzTm9QR2Fsa04rejRTa3JQeEw4dGlmaEhvZDdzdzc2U3FwMzhnRG1pM3JN?=
 =?utf-8?B?QjNiT0V1Y2o5WWx6bWhVWlF1OUNYTU5oRHlBMVc5emEzQzJuUm9OM1pKWi9J?=
 =?utf-8?B?OFpIUC9Mc3hzSHRlMHRJMk9PWW5GZXNSN0FRcjRXekZPQUZIcGZTQUZva2Fn?=
 =?utf-8?B?dHRGSm1JNXZSU2c2bGk2Z1lFVVA4OVJHZ1N4UEo2d2llTHVtQ01QRHhpTmUv?=
 =?utf-8?B?ZWhtY0grdTBYSjBqRitUWnhEeEhKV0F0K0NMakhVVUdqYVRscW45TXFsVVNM?=
 =?utf-8?B?NGNRRVNEQlRLZE02OWU4cDhnWEZqeDBORk51Z0hnWlE4dElRY01EOXBqNXM1?=
 =?utf-8?B?dE1wZGFmT0hFYmxxSXN0b3AwK1hvTWFMcC8yY0pncnNLamhrTXBmbkZ0ZW81?=
 =?utf-8?B?STNEellTSUJhVHMxZm1CVTVSRjlkYi83N3ZWZFBseVZza3ducm0yVVBFU3N5?=
 =?utf-8?B?bi9vR2ttMSs1WEI5QTZNMExZaWZIMHBCVzdVVnd0V0xySm5rbGs4Mms0ckhs?=
 =?utf-8?B?QlBJQXI1aitFQk55SGNHSWNuSnpjbmpPUDJkZjEzVHZPVEhqWC81S09sM25D?=
 =?utf-8?B?OG9nQ0tjRkNUQ1RIWndWRUZhSTFHakMvVmI4MUxTb25ycmNESmdZNStoamFQ?=
 =?utf-8?B?ODFjS0UrRlRDUy9qdFoxZ3YzZHc2VnczYXFUMi8zVFNlT0drQzdnOFUrTjVD?=
 =?utf-8?B?QmdWUmZXOEVnMmxwV0ZJMnpKSXY5blh5SFlRWmJwYTNCc1RDU2VNeTlnb0Vw?=
 =?utf-8?B?M2YzdUZ6TGhENFlMTllTS0ZFQmkvSmg3WU5VT2pIQlZpa2c4bmJUd1VtbnFQ?=
 =?utf-8?B?cVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <40D62A48ED36F447A185C85DD70F7B28@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 805d1557-6e5f-4a5a-24d5-08dc1bebc209
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2024 08:17:36.6265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aSm5HOeVFhlZF5L9nUzW7y8hqBwxWdrfSfXpc/LgGT1REYcesnGLoZKGvyVyIOHmcOf4eACLdDGrPNB8/QVw4xWSepiwYgEF3qTWguNVCOc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5928
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDI0LTAxLTIzIGF0IDEwOjA3ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSmFuIDIzLCAyMDI0IGF0IDA3OjU3OjAwQU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBUdWUsIDIwMjQtMDEtMjMgYXQgMDk6NDEgKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgSmFuIDIzLCAyMDI0IGF0IDA5OjExOjAz
QU0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gV2Ugd2FudCB0byByZXF1
ZXN0IGZ1bGwgbW9kZXNldCBpbiBpbml0aWFsIGZhc3QgY2hlY2sgdG8gZm9yY2UNCj4gPiA+ID4g
UFNSDQo+ID4gPiA+IHN0YXRlDQo+ID4gPiA+IGNvbXB1dGF0aW9uLiBPdGhlcndpc2UgUFNSIGlz
IG5vdCBlbmFibGVkIG9uIGluaXRpYWwgY29tbWl0IGJ1dA0KPiA+ID4gPiBvbg0KPiA+ID4gPiBm
aXJzdA0KPiA+ID4gPiBjb21taXQgd2l0aCBtb2Rlc2V0IG9yIGZhc3RzZXQuIFdpdGggdGhpcyBj
aGFuZ2UgSW5pdGlhbCBjb21taXQNCj4gPiA+ID4gd2lsbCBzdGlsbA0KPiA+ID4gPiBlbmQgdXAg
dXNpbmcgZmFzdHNldCAodW5sZXNzIHNvbWV0aGluZyBlbHNlIHJlcXVpcmVzIGZ1bGwNCj4gPiA+
ID4gbW9kZXNldCkNCj4gPiA+ID4gYXMgUFNSDQo+ID4gPiA+IHBhcmFtZXRlcnMgYXJlIG5vdCBh
bnltb3JlIHBhcnQgb2YgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZS4NCj4gPiA+IA0KPiA+ID4g
SSB0aGluayBJJ2QgcHJlZmVyIHRvIGdvIHRoZSBvcHBvc3RpZSBkaXJlY3Rpb24gYW5kIHRyeSB0
byBnZXQNCj4gPiA+IGFsbA0KPiA+ID4gdGhlIGZ1bGwgbW9kZXNldCBzdHVmZiBvdXQgZnJvbSB0
aGUgaW5pdGlhbCBjb21taXQuIFRoZSBvbmx5DQo+ID4gPiByZWFzb24NCj4gPiA+IHRoZSBpbml0
aWFsIGNvbW1pdCB3YXMgaW50cm9kdWNlZCB3YXMgdG8gY29tcHV0ZSB0aGUgcGxhbmUgc3RhdGVz
DQo+ID4gPiBkdWUgdG8gbGFjayBvZiByZWFkb3V0LCBhbmQgdGhlbiBpdCBnb3QgZXh0ZW5kZWQg
ZHVlIHRvIHZhcmlvdXMNCj4gPiA+IG90aGVyDQo+ID4gPiBoYWNrcy4gT3VyIGdvYWwgaXMgdG8g
aW5oZXJpdCB0aGUgc3RhdGUgZnJvbSB0aGUgQklPUyBzbyBpZGVhbGx5DQo+ID4gPiB0aGUgd2hv
bGUgaW5pdGlhbF9jb21taXQgdGhpbmcgd291bGRuJ3QgZXZlbiBleGlzdC4NCj4gPiANCj4gPiBC
aW9zIGRvZXNuJ3QgZW5hYmxlIFBTUi4gRG8geW91IHRoaW5rIHRoaXMgd291bGQgYmUgYmV0dGVy
IGFwcHJvYWNoDQo+ID4gPzoNCj4gPiANCj4gPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3Rv
cC5vcmcvcGF0Y2gvNTc1MzY4Lz9zZXJpZXM9MTI5MDIzJnJldj0xDQo+ID4gDQo+ID4gV2hhdCB3
ZSBqdXN0IG5lZWQgaXMgc29tZXRoaW5nIHRyaWdnZXJpbmcgaW50ZWxfcHNyX2NvbXB1dGVfY29u
ZmlnDQo+ID4gKw0KPiA+IHBzciBlbmFibGUuIE1heWJlIHRoYXQgY291bGQgYmUgc2VwYXJhdGUg
ZnVuY3Rpb24gZG9pbmcgYm90aCBhbmQNCj4gPiBjYWxsDQo+ID4gdGhhdCBmcm9tIGludGVsX2lu
aXRpYWxfY29tbWl0LiBJZi93aGVuIHdlIGdldCByaWQgb2YgdGhhdA0KPiA+IGludGVsX2luaXRp
YWxfY29tbWl0OiB0aGlzIGZ1bmN0aW9uIHdvdWxkIGJlIGNhbGxlZCBieSB0aGF0IG5ldw0KPiA+
IHRoaW5nLg0KPiANCj4gSSBkb24ndCB0aGluayB3ZSBzaG91bGQgZG8gYW55dGhpbmcgYXQgYWxs
LiBQU1Igd2lsbCBnZXQgZW5hYmxlZCBieQ0KPiB0aGUNCj4gZmlyc3QgcHJvcGVyIGNvbW1pdCwg
aWYgcG9zc2libGUuDQoNClRoYXQgbWVhbnMgUFNSIGlzIGRpc2FibGVkIHVudGlsIHRoZXJlIGlz
IGZhc3RzZXQgb3IgZnVsbCBtb2Rlc2V0LiBJcw0KdGhhdCBvaz8gSS5lLiBpcyB0aGVyZSBzb21l
IHVzZWNhc2Ugd2hlcmUgZWl0aGVyIG9mIHRoZXNlIGRvZXNuJ3QNCmhhcHBlbj8NCg0KUGFuZWwg
cmVwbGF5IGlzIGFsc28gbm93IGNvbWluZyB0byBwaWN0dXJlIGFzIGl0IHJlcXVpcmVzIHNpbmsg
c2lkZQ0KYmVpbmcgZW5hYmxlZCBiZWZvcmUgbGluayB0cmFpbmluZy4gTWF5YmUgeW91IGhhdmUg
c29tZSBhZHZpY2Ugb24gdGhlc2UNCmFzIHdlbGw6DQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVk
ZXNrdG9wLm9yZy9wYXRjaC81NzQ5NjYvP3Nlcmllcz0xMjgxNTYmcmV2PTUNCmh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC81NzQ5NzkvP3Nlcmllcz0xMjgxNTYmcmV2PTUN
Cg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQoNCj4gDQo+ID4gDQo+ID4gQlIsDQo+ID4gDQo+
ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gDQo+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+IENjOiBT
dGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gPiA+
ID4gDQo+ID4gPiA+IEZpeGVzOiBhNDgwZGQ1OWZlMjUgKCJkcm0vaTkxNS9kaXNwbGF5OiBObyBu
ZWVkIGZvciBmdWxsDQo+ID4gPiA+IG1vZGVzZXQNCj4gPiA+ID4gZHVlIHRvIHBzciIpDQo+ID4g
PiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmPCoCB8IDggKysrKysrKysNCj4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMyAtLS0NCj4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oIHwgMyArKysNCj4gPiA+ID4gwqAzIGZpbGVzIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4g
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiA+IGlu
ZGV4IGFiNDE1ZjQxOTI0ZC4uMTQzOTgxYjkxZThiIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiA+IEBAIC0zMzI2LDYgKzMz
MjYsMTQgQEAgYm9vbA0KPiA+ID4gPiBpbnRlbF9kcF9pbml0aWFsX2Zhc3RzZXRfY2hlY2soc3Ry
dWN0DQo+ID4gPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZmFzdHNldCA9IGZhbHNlOw0KPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgfQ0KPiA+ID4gPiDCoA0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAoQ0FOX1BTUihp
bnRlbF9kcCkpIHsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9k
Ymdfa21zKCZpOTE1LT5kcm0sICJbRU5DT0RFUjolZDolc10NCj4gPiA+ID4gRm9yY2luZw0KPiA+
ID4gPiBmdWxsIG1vZGVzZXQgdG8gY29tcHV0ZSBQU1Igc3RhdGVcDQo+ID4gPiA+ICtuIiwNCj4g
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZW5jb2Rlci0+YmFzZS5iYXNlLmlkLCBlbmNvZGVyLQ0KPiA+ID4gPiA+IGJhc2UubmFtZSk7
DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT51YXBp
Lm1vZGVfY2hhbmdlZCA9IHRydWU7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBmYXN0c2V0ID0gZmFsc2U7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoH0NCj4gPiA+ID4g
Kw0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhc3RzZXQ7DQo+ID4gPiA+IMKgfQ0K
PiA+ID4gPiDCoA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiA+ID4gaW5kZXggMTAxMGI4YzQwNWRmLi5iNmRiN2RiZmFmMWEgMTAw
NjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+ID4gPiBAQCAtMTczLDkgKzE3Myw2IEBADQo+ID4gPiA+IMKgICogaXJyZWxldmFudCBm
b3Igbm9ybWFsIG9wZXJhdGlvbi4NCj4gPiA+ID4gwqAgKi8NCj4gPiA+ID4gwqANCj4gPiA+ID4g
LSNkZWZpbmUgQ0FOX1BTUihpbnRlbF9kcCkgKChpbnRlbF9kcCktPnBzci5zaW5rX3N1cHBvcnQg
JiYgXA0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgKGludGVsX2RwKS0+cHNyLnNvdXJjZV9zdXBwb3J0KQ0KPiA+ID4gPiAtDQo+ID4g
PiA+IMKgI2RlZmluZSBDQU5fUEFORUxfUkVQTEFZKGludGVsX2RwKSAoKGludGVsX2RwKS0NCj4g
PiA+ID4gPiBwc3Iuc2lua19wYW5lbF9yZXBsYXlfc3VwcG9ydCAmJiBcDQo+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgKGludGVsX2RwKS0NCj4gPiA+ID4gPiBwc3Iuc291cmNlX3BhbmVsX3JlcGxheV9z
dXBwb3J0KQ0KPiA+ID4gPiDCoA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiA+ID4gaW5kZXggY2RlNzgxZGY4NGQ1Li4zZDk5MjBl
YmFmYWIgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmgNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuaA0KPiA+ID4gPiBAQCAtMjEsNiArMjEsOSBAQCBzdHJ1Y3QgaW50ZWxfZW5jb2Rl
cjsNCj4gPiA+ID4gwqBzdHJ1Y3QgaW50ZWxfcGxhbmU7DQo+ID4gPiA+IMKgc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlOw0KPiA+ID4gPiDCoA0KPiA+ID4gPiArI2RlZmluZSBDQU5fUFNSKGludGVs
X2RwKSAoKGludGVsX2RwKS0+cHNyLnNpbmtfc3VwcG9ydCAmJiBcDQo+ID4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoaW50ZWxfZHApLT5w
c3Iuc291cmNlX3N1cHBvcnQpDQo+ID4gPiA+ICsNCj4gPiA+ID4gwqBib29sIGludGVsX2VuY29k
ZXJfY2FuX3BzcihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcik7DQo+ID4gPiA+IMKgdm9p
ZCBpbnRlbF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiA+ID4g
PiDCoHZvaWQgaW50ZWxfcHNyX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZQ0KPiA+ID4gPiAqc3RhdGUsDQo+ID4gPiA+IC0tIA0KPiA+ID4gPiAyLjM0LjENCj4gPiA+
IA0KPiA+IA0KPiANCg0K
