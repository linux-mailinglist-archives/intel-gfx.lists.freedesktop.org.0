Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0B36343FE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 19:50:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFE8B10E439;
	Tue, 22 Nov 2022 18:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59BD10E439
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 18:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669143017; x=1700679017;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZCtDuSPdkC55n5uQRRmPQ7PfiL1iRT/ory0oC6SRbmE=;
 b=fRt/G5kCnG+Q289MXTNf2eylf/y11SrrPJPRhlWVniHbYgar1LGsAo9h
 8qRGWWO+aoaxMKB90QcCZUvCq6GdRVeLdjkfqeONLZy7j6/qctFYeojGA
 B0DHOnvj1Yh8tMck1GssYlg2PD16SwRBwMA12BEgBJu6A+n7L3BUDspNw
 ZrVK3L9TB7/OX9/oTQKm8h91YeRDiB1V4OZ00ay1Q0zO+ehG/RulI+1tb
 qw4SCIkvOsDU5QmnsmI36VFBXpzleopO1S05mToc+eaJU+U+oQnI/uSOC
 Ko1S5n11UQ95QPBaf7rz33FFhVhs+0qi++jE3A5va177XtWUSJKHh/9jd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="315040823"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="315040823"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 10:50:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="592241054"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="592241054"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 22 Nov 2022 10:50:17 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 10:50:16 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 10:50:16 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 10:50:16 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 10:50:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a/Ff0TTZ1Pysunfor7nGFgvPUWEO3mExUcsZb/6eDI1xgSHbjG3RATtuEe+sjAHXNhxMs9/1SV2EM388ezY11AxHu8NuiWVZwBVZb0FlhiLoNmCIoIxYWXl45AcK9PlJgC10fm9q06bgo0fWLEupqSIlBGS/jkJ7N2zynyIwPQGIa6WjHYtNloc6m/Ca/cBJCYXGFo9BZwaQqbct8UQXpArcrXrr2Mk3pBcfMUtMpp3EW2vpxM5QQlIssxGlZKkZC46ybnv6A0uYrzYgBMl16Oc0dxb8axU/gPPYIItcKT8PETiAi4Vs3lVAByYdMR8VvL7HDk82fHxHGrquilfhCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZCtDuSPdkC55n5uQRRmPQ7PfiL1iRT/ory0oC6SRbmE=;
 b=O8wWb5HfC99HVvFbg9cl/pUrC67siO3uXL7y9awCBVgvwYK2nbcjiWvmmTH/Y+Y9RJxTD64LTl0BdcUPG1rWt9N2M6vL14PoqE5LBg+ILHfPdzlaeec3yQ7H31KgQOqamerkHeN6qtDlLzbQiEYJauIYxdMGu9/Pcpk/qd0Gg6/sunN/74Oj2R/eHP79YP0XUTW5EPQw83tFAGjp7YqANaX3pojBclPKuN8Nh90yOLBj4hL9b5C5Ene71+SVZEzBvLtwTk4yJFMiVY7kcGbQw051LLCxs+VwVDOSOwdcjAbqgCoOKTZ0LIzSf6NhHPWpniI0FkAb8BBzqdVfbJ36iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CY5PR11MB6116.namprd11.prod.outlook.com (2603:10b6:930:2b::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5834.15; Tue, 22 Nov 2022 18:50:14 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%8]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 18:50:14 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
Thread-Index: AQHY+huC07hRuiUUpkeQbbJYwqcxJq5DR+AAgABuNACABZGagIAAKSCAgAA/eYCAAZM/AIAAD3YA
Date: Tue, 22 Nov 2022 18:50:14 +0000
Message-ID: <9cd96cddf9904ec14cdf42ed17352a1a712abbd1.camel@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
 <Y3ZbLA2nenwp29u/@intel.com>
 <0067b884a5787ea4fbf5d6dffc5e7d4219a23585.camel@intel.com>
 <6e6219c3-8d9d-6033-5f23-6008c66ac9fa@linux.intel.com>
 <6d2a56e248730f4489ba8615843ce5b9fc36279b.camel@intel.com>
 <d40a8d45a3486208b52e55384d2f5220213523d7.camel@intel.com>
 <Y30NguDBLK1eoroO@intel.com>
In-Reply-To: <Y30NguDBLK1eoroO@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CY5PR11MB6116:EE_
x-ms-office365-filtering-correlation-id: c5825d0c-91db-47e5-5464-08daccba6414
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8x7SH9pPbXRAudSqgJIEtUMz2CDUS1fAtK7hhmVC8jqpfaFfc1Sdzdhcil4T3XYMMdyYQt0nwW7SfgaaRZ9ZA3sxq4N/c6q1CtWZ6R9ulw3UIZeCLn/Z2PVhHvPAlLjYE1D3qJLEJUBEdaI47MVCICYHZPKZJDrsVTAp97UvdwBHqGMGlLXAx6vYgvNqi2cEnm1FFym2bZMnVMPwpavQC2nXsmEBEby8i6PM2JjkXFJXFrXZC5qpSk99MGyZA1zmmMMV2AN6xMK15ffzwVq9ffR2AGINQPXuZG8RK/0QCIdWCkc0z73tPnrHXFZZJWa6pTtW0aQGF+EXgUiyhSo6++v53LOwyz81fLPwwYJwXdGaw+Na/W6YRhzUCZ7gvy8oXnQPi6l1rtQzTkI59pkWfR+AV7NlIubU6/+00y3fl8DSibaC9MS/DnB0kj37tTjJbb/8QdgyUnsZVmDc+5uMiXW/rhjNVNOp6p5HJfQlH9xoFK4600b6BhxAjt47jHNsVfVFEWMrlM1bijC9001fiBsPis4DQZVu6W4pLwygRRZyiCbLKgUKDfXHj9pxOXXRgC2cJS3KN08dMpkZKzdekRSfxTbmjxOmqhjCa+6bH7ZetJYu/1EQJh6e13DdtinXtNFDxXSoB38xKJ836/CA9FhLImnM3St6Rqo7YAVyDsJIqWoq9fwFLlgwdCEWvxDg39KcCKZslqp8AC3rqM4+fQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(396003)(136003)(366004)(451199015)(478600001)(6486002)(38070700005)(36756003)(83380400001)(2616005)(186003)(71200400001)(26005)(5660300002)(86362001)(6506007)(6512007)(8936002)(66899015)(4001150100001)(41300700001)(2906002)(82960400001)(38100700002)(122000001)(91956017)(37006003)(6862004)(54906003)(66476007)(76116006)(4326008)(64756008)(8676002)(66446008)(66556008)(66946007)(6636002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SHRCdXRCU0J2Z3RsbGp1cmYvRHBtWnZHNlBCemFOY0M5VWtoMmhuU2lOZXZ2?=
 =?utf-8?B?c3NENURncnArb2NuaXo5STdzdGg4cDZJUFY4YUdua1pQc0VkVDlYOVQvMzBa?=
 =?utf-8?B?U3NHMUVmdU9OeEVEZG0zN1I5d1V5OU8zSFFPL1pJdWRRKzZjNmVyVExsUUpw?=
 =?utf-8?B?L0lOYlhYWFh2V3FkdWtZc2R0djdmWGZuN1JkUGVTSXlTSGd2RTdJeVR0U00z?=
 =?utf-8?B?K0FKOFRHME5oYWxFUnIzbXdRNk5RekVOdjZEeWNuMFNkdlpZRHJaVFphZEdi?=
 =?utf-8?B?YmptQmhqMktWYzBwbDhMNXdVbFNBbEVuRWg3WHdVeExCY2doSWs0KzNaNjYz?=
 =?utf-8?B?LzlHZUZpR1owTHpYZlBLYys4V3hrZDk3KzhkVE1VdUZqRTNaaG45Y3paT0Fq?=
 =?utf-8?B?TVowRVN0dklqbmpmZVdrUFFDbGI4YzFtYjVpeExkYXR2dFBZaU9aTTdCNHFF?=
 =?utf-8?B?b2kvaEtKcTZva2R4VmRiSVpBYkJ5NVd5MGZqTkZLVGVpY3p5czFQTVU2V3lP?=
 =?utf-8?B?VzBvdGxZMG5zcmFGODcrL1drZWRYeEg1K25LRkdKTW1ZbUhnWUFUeHozMEsx?=
 =?utf-8?B?ZWE4Z2lXYjljNldVK3UrblIrVkhvUzN0cUVJeVd1QmlaaDBIOGxiUGFZZUlq?=
 =?utf-8?B?dXh5c2tGZ0ZCczNQZUVyVWpjeGNzU0xnWEdvNE1EcEkrQTdFcVhYRWd2WkVu?=
 =?utf-8?B?NktPb1FuYVBtODZSTVk0R1p0SnpsUFhoWnR2L2kzN05CQTAzZHJmb2ZaU1F5?=
 =?utf-8?B?QnlsQzQvbWpTN21NcnJqOTcxZ2VDMnRCN1VidXdDeG15S09NVVZDRHdiNHVP?=
 =?utf-8?B?YUszbStKUTFaZHZsT3ZTT0xWZUh1dU53MHk2UFJ0L1lBVnNEMUI0a3V1Y2dx?=
 =?utf-8?B?cFpPVWEvNlNHeTVDSE82bFg1WWxzSUtITUttMFZxZXR5QXlnTzV4NXJCeWtT?=
 =?utf-8?B?ZjJTWXJleEp0ODV2TGg4SnpBQWR3L2NsL1hTUTdKYXYrdHlud2xxcDJ0elhi?=
 =?utf-8?B?ZHJRSnlJcmp6ZWY3Vy9kRit5V2dzZmp4NFQwRWdaTmErNW9uemgzazJ0Sktz?=
 =?utf-8?B?bEN0cEJBQXpyQm53ZGFTWHF1bEE3dzNMdjFFdFBLc01DMGRBZSt0Y21iS05T?=
 =?utf-8?B?ck10M0c2VXJQYVZZVU04WXlqNWp0SStwRXIxZlBtMWtJeWtyNy9mTUQ4Y254?=
 =?utf-8?B?TkRkUGZQb0xHWjJwUVd5Snl6QkxKMW5pOU9GMU52RUt5SXZwNjFjS2QwK3hG?=
 =?utf-8?B?RnFlLzZ5VW5FTUtKa09jU2lxUkljOGxwUjBETnd5QzE3RDROc2ZNSGx2bTNQ?=
 =?utf-8?B?QTIrRVdnMXpkTC9VWTl5cU1YTlE0OTlMSVhSb05mMlRySmRJVjAxVFpvWlRN?=
 =?utf-8?B?TlM4ZERCMnFCSUVQOGFrV3hHQWFmWjZkSXVKR21RUUtaMDE3MFFoS0F3MlMr?=
 =?utf-8?B?MndBWSs5MlZOaGxkNkpHVW1yNzBpZEpXRThVZHVOSy9nZkI4T04rNmY3WUR2?=
 =?utf-8?B?bDJQMnIwbHhUeGtLWERzYnlTT2I3a1Y2VnN4N1lISXBUSHgwaUgzcGs3WGhJ?=
 =?utf-8?B?L0lQTXFDdFExamJPWkZFaE0xZkdRSU1mdVpLNzZuU01lWm5pZ3BkQSs3VllW?=
 =?utf-8?B?Z0ducXA1Um9kTTUrcWFhL0JSb3RKTVQwbjZFZDNmYVV2Um84Qjd3REdJLzZH?=
 =?utf-8?B?Zjd1RitUWEMzOUhrZHhrVU1HbkdWQ1Jtc21rbXE4Yjc5dlhRbGh5cEE1bHZM?=
 =?utf-8?B?eWF5Si92MEtZeDJLS28rYWF2dkVLeW1iNjVzL2JpR2ozTS8xWm1lK1RDSlFL?=
 =?utf-8?B?RmtVS3FBb0JWNWhxVnFSejFRK0dZKzQ1OEw1ZlhmRlRXNWZCUEVmU0M3cG5w?=
 =?utf-8?B?Nk1rTWNTTmlCdG9zVFpkRldFZ1F3WWYwdThBK1ZuVVUxTnFEMHpZazgvRjVN?=
 =?utf-8?B?cjNaODZMb0hRYXlkMHRPbnlCcjRoOWRONWhQZnJPcTBob2doT282bkwvb3ZQ?=
 =?utf-8?B?WjlNQ1NLd1hVR2FFbEU1SFNjVUVSU1lZZmZ6eWdlcEVMWWdsQjVML3RwN2hE?=
 =?utf-8?B?U3pRcWllWTMvTzlGbkdMY1l1MVQyRDU3b0NaNzFTaHZGNVRPRFM4VXpWMWtZ?=
 =?utf-8?B?ZFlrRVVBditnRklpdXd4L2dLZ0ZGVk03d3dmcmZFR2t4U1haM1d2OGJuZjVV?=
 =?utf-8?Q?Ve2DGdbEvPbGBuCkApCc7xQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C910750D1BBCD745BB29632DA4D47661@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5825d0c-91db-47e5-5464-08daccba6414
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2022 18:50:14.0915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h9d5tWmLr9+4OeOTXiy4pPHERm2IOfdU6Prn338U4al4GJ+UX0easaYYQY5ffSaM9xOZcfpZeWBzWunSprj0gxiA+kh4wk6nsRoCh96V5lGanaGO6UZxwDZ0NPALU78v
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6116
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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

DQoNCk9uIFR1ZSwgMjAyMi0xMS0yMiBhdCAxMjo1NyAtMDUwMCwgVml2aSwgUm9kcmlnbyB3cm90
ZToNCj4gDQo+IA0KW0FsYW46c25pcF0NCg0KPiBBcyBJIGhhZCB0b2xkIEkgZG9uJ3QgaGF2ZSBh
IHN0cm9uZyBwcmVmZXJlbmNlLCBhcyBsb25nIGFzIGl0IGtlZXAgY2xlYW4NCj4gYW5kIHdpdGhv
dXQgdGhlc2UgbWFueSBoZWxwZXJzIG9mIHNvbWV0aGluZyAib25fZ3QiLi4uDQo+IA0KPiBJZiB0
aGlzIHN0YXlzIGluc2lkZSB0aGUgZ3QsIGp1c3QgbWFrZSBzdXJlIHRoYXQgeW91IGNhbGwgZm9y
IGFsbCB0aGUgZ3RzLA0KPiBidXQgdGhlbiB5b3UgaW5zaWRlIHRoZSBmdW5jdGlvbnMgeW91IGNh
biBza2lwIGlmIHB4cCBub3QgZW5hYmxlZC4uLiB3aXRob3V0DQo+IGFza2luZyBpZiBlbmFibGVk
IG9uX2d0Li4uIA0KPiANCkkgdGhpbmsgd2UgaGF2ZSBoZXJlIGNvbmZsaWN0aW5nIHJlcXVlc3Rz
LiBUaGUgImNvbnN1bWVycyIgb2YgcHhwIGZlYXR1cmUgYXJlIGdlbS1leGVjYnVmLCBnZW0tY29u
dGV4dCwgZ2VtLWNyZWF0ZSAoYW5kDQpldmVuIGRpc3BsYXksIGZvciBjaGVja2luZykuIEFyZSB3
ZSBva2F5IHdpdGggbWFraW5nIHRoZXNlIGNhbGxlcnMgYmUgYXdhcmUgb2YgImlmIG10bCwgZW5z
dXJlIGkgY2FsbCBpbnRlbF9weHBfZm9vIHdpdGgNCnRoZSBtZWRpYS10aWxlJ3MgcHhwLCBhZ25v
c3RpYyB0byB0aGUgcmVxdWVzdCwgY29udGV4dCBvciBidWZmZXIgaSBhbSBkZWFsaW5nIHdpdGgg
bm93Ii4gSWYgeW91IGFyZSBva2F5IHdpdGggdGhpcywgdGhlbg0Kd2UgY2FuIG1ha2UgdGhpcyBz
dGF5IGluc2lkZSBndCB3aXRob3V0ICJlbmFibGVkIG9uX2d0IiBmdW5jdGlvbnMuIEJ1dCBpZiBk
b250IHdhbnQgdG8gcG9sdXRlIHN1Y2ggbG93IGxldmVsIGJhY2tlbmQNCmF3YXJlbmVzcyBpbnRv
IHRob3NlIHVwcGVyIGxheWVycywgd2UgbmVlZCB0aGVtIHRvIGNhbGwgc29tZXRoaW5nIG1vcmUg
Z2xvYmFsIGxpa2UgImludGVsX2dwdV9oYXNfcHhwX2VuYWJsZWQiIG9yDQoiaW50ZWxfZ3B1X2hh
c19weHBfc3RhcnRlZCIgYXQgdGhlIGxlYXN0IHdpdGggYW4gaTkxNSBwYXJhbS4gU28gdGhhdCB0
aGVzZSBjYWxsZXJzIGRvbnQgbmVlZCB0byB3b3JyeSBhYm91dCBpdC4gT3INCmludGVsX3B4cF9l
bmFibGVkIGhhcyB0byBpbnRlcm5hbGx5IGNoZWNrIHdpdGggZ3Qgd2UgYXJlIGJlaW5nIHBhc3Nl
ZCB3aXRoIGFuZCB2ZXJpZnkgd2UgYXJlIG9uIHRoZSBjb3JyZWN0IGd0IHRvIC0gYnV0DQp5b3Ug
c2FpZCB5b3UgZG9udCB3YW50IHRvIGhhdmUgYW4gImVuYWJsZWQgb25fZ3QiIGluc2lkZSB0aGUg
cHhwIGZvbGRlciBzaW5jZSBweHAgaXMgYSBzdWJzZXQgb2YgZ3QuIFRoZSBvbmx5IHRoaW5nIGkN
CmNhbiB0aGluayBvZiBpcyBqdXN0IGEgcmVuYW1lICAtIGkuZS4gaW5zdGVhZCBvZiAiaW50ZWxf
cHhwX2VuYWJsZWRfb25fZ3QiLCBoYXZlIGEgImludGVsX2dwdV9oYXNfcHhwX2VuYWJsZWQoaTkx
NSkiIC0NCmJ1dCBpdCB3b3VsZCByZXNpZGUgaW4gdGhlIHB4cCBmb2xkZXIuIFdvdWxkIHRoaXMg
d29yaz8NCg0KPiA+IA0KPiA+IC4uLmFsYW4NCg0K
