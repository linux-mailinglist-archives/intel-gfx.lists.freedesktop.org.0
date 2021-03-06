Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 562AF32F8BC
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Mar 2021 08:19:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5CC6E12E;
	Sat,  6 Mar 2021 07:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D186A6E12E
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Mar 2021 07:19:47 +0000 (UTC)
IronPort-SDR: D5aUJowsY4jRgzQXZHRgNax1cveHMHGQneOip9SQB3Qhb5hom6OZx8zVZXWN/wGfsA2y5zhq3E
 BTfee2/n7BaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="167684627"
X-IronPort-AV: E=Sophos;i="5.81,227,1610438400"; d="scan'208";a="167684627"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 23:19:47 -0800
IronPort-SDR: yaSzlAwihfHNXMSluEOweEbYcL9H8pwlLMzHoeVV4/8iRA9I1atGlXxV1725U0fMNkvC1wMMw5
 mbEtB1VnpEMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,227,1610438400"; d="scan'208";a="375396977"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga007.fm.intel.com with ESMTP; 05 Mar 2021 23:19:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Mar 2021 23:19:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Mar 2021 23:19:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 5 Mar 2021 23:19:46 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 5 Mar 2021 23:19:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UnlrdvCl/4qxfIqvJIpPP69N5ITDn6M/VFxyFk3m9oeFhYmx9fQoNn02PFHtLuFpPAhXz6E66+nIbAqTcmvKHD5kEJZhNZ/v0/NI4lGC4LBN5c/e9I83zdsTXXIU6Hil7GQYqzX1ramTO1xxsq8VsFhqnHmRRnnZVg9E+Nyy6bhN0H9TPlB1IyLahIhV7UwPxIU+tXmZn0aPs3ZMAI4ICRW6CEIkQoq6vNfbA4LkdNyEvGXKy1Fgd89llMQRAuSVH+Tq12wxndfRWtYoqWYsAMRcE9+3StU/bZMmCplCg1VGg6Sldl2dwDdSGdBE8IF00gAsZi8J90kQPTWlMFmjig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cUGCJKnKWJHQC7LAWzEF7Xfaaog3FFjuFpL9PhVacvE=;
 b=B+NlPMajwoX7CxLzLE5vvXe0BrRhz+wHHkFzpkfs8nPaVmzeSOZtr+JnQNxJn5lJJDDdJ0YAQiPDCFJ1mLdabmX3+93DQ03F+VNjvQhJBfKuRPvvUoBuo9HNn++qPjxq8U6E4pCKbGIIVrX8CwBmmp/KWXzACd/HsuYQxQRtiUy6DJON8GQq3u8poWsg5YJ2hOAPZkzs/sEQcn20ve/PQkgCM6/ob/1n7pJZSJsYa03HXjg9KliAtyRu1hnKodLvyTqIXfLDqdQvs3Ej47ixmzmLWWxIJeM48tFh/TXiJxYAeD9HrIGNaQw01T7uVH0zY8MhGZxPfhrEvZZKUzALVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cUGCJKnKWJHQC7LAWzEF7Xfaaog3FFjuFpL9PhVacvE=;
 b=t2fSUG6Np9ioS9vnW7Pnkw+e/y5Eks+lIG46j51RAVjbKMClJzIxalf6WVWwhBKaeLd1XOaVXZopUdzSziDdC/x8gjj/mK5mxmR9XoZ1WiXY9nbwjWUOo6zZhM0fx6AT3MNNIOWw/n1rfRz541A7Y2CngOp0A2pc/CzzFqnFyXI=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SN6PR11MB3454.namprd11.prod.outlook.com (2603:10b6:805:c1::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.23; Sat, 6 Mar
 2021 07:19:45 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119%6]) with mapi id 15.20.3868.040; Sat, 6 Mar 2021
 07:19:45 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v5] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Thread-Index: AQHXEcGJyUOl5WJaWkGefsU/tiq3vqp2jqfg
Date: Sat, 6 Mar 2021 07:19:44 +0000
Message-ID: <626AB9AF-0562-4D7C-A688-DF67835BF322@intel.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>,
 <20210305125835.12207-1-cooper.chiou@intel.com>
In-Reply-To: <20210305125835.12207-1-cooper.chiou@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [2402:7500:4d0:21d4:d999:2a9a:23c4:a12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2d9322ce-7762-47c8-9978-08d8e07037d2
x-ms-traffictypediagnostic: SN6PR11MB3454:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB34543C780449F8FD5318F6E59D959@SN6PR11MB3454.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MuAzI7X6JnJPXBxjybFiKvABcOGzeOsr2+5V3JTGWQiEPQjb7pcBBve2NF0DOEJoP3uOXKI+HIONcgRlD0bX2JVs4/7yOrDZXa6h/zFhNNr+JEomNfUY+tl/zeoJvmdYnWGb5JgChEEw9BFo8PaD+ZFsyPRc7a3V8YvhquEO1p5V1ayR1vYz19hAiyl/JmLID52EibSEU0k3cO2oJBDebinY4DAjtw+FjCNfzYdggNFwbmbOSDG+bSHmd302EhhSSyjJ576h9PbWRW3jU74wZFiTSLlfXz5FbeKeaP51FHD7RZnc38ACFICxXF9hn5H0AqdAjIwaW2uh5jVEaecYRh895XJLs3Gx+c7b9PtIAEFdXa3+MRivLlIJ0h5UdP3AyIGMIm2deJfzCW3bBCeSr2oXbHNM/fL2R0BwSxy+08kmY2ZDTKMznCiAP/Sk/QldO75b/4j28/NzlaQm8kUfy9oQfjZs3LQcA38qHcs8bXJ16GbCOHutFRAxa7r4szJFIgZQ+7fMU46D4pMKzYf51dZoUKtYUrDM8WkvyIn8QEOYFsw7W09+O57wqfOHXx+kUEmdQ1yxcsU1f/ekd4hoMh7xDSwe7NuZua2KTGmbGp0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(396003)(366004)(39860400002)(136003)(346002)(376002)(2906002)(8676002)(8936002)(66556008)(6506007)(5660300002)(64756008)(33656002)(4326008)(6486002)(316002)(66476007)(71200400001)(186003)(2616005)(66446008)(558084003)(76116006)(86362001)(54906003)(6916009)(91956017)(66946007)(6512007)(36756003)(478600001)(213903007)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?bTY1VUxqT2Q4bXl0dDA4V2FpTnNGREl2KzhEZktOVkJqK0tvL2xxRW53b1pG?=
 =?utf-8?B?V0tzMm0zK2hEYVpiM1hyU0R3Z2lDc1BiSm52VFF3Qi9uSGszZnVab1pyS2dB?=
 =?utf-8?B?K1FlNEpINngxY01XQkxRZHNVOExuYndSQjM2ZytXeDF3OThkVEh6NU11WXNZ?=
 =?utf-8?B?RHMrT080b0pjNjdrcjdmamo3Q1FlcGE0NEQrQVRGdlZidkFtRFJWcGRONjJx?=
 =?utf-8?B?QzZrN0Q1b0lOL0VxSTBIS1MvaFJCUzJ0TytHam9oQm9PYXY4SzNEOUI0OS9P?=
 =?utf-8?B?bW0zaXNzNmFoQ0J4eFA3dXB0TzBsV0xGUUlETzVNZmM5ZUNDK1NJYjJKald1?=
 =?utf-8?B?N0orL2tuVUt1eTBzemorY01ITjZzOHZpWUFFcFE1MStPUkxTSkkreG1Vby9Y?=
 =?utf-8?B?akt3SHRIOE9pVzdVVkhjUU1BNEozckJNeFBuUHp6WDBZU3pSa09BeVV0emlN?=
 =?utf-8?B?SzdFNVZvOFE1ZCtYTmZzME1QSUl5b0JpVkdlSGJ6V2g2Ri9Ibitia21wUmFP?=
 =?utf-8?B?VjEvWm5Lak9sSzdhcERtQTAwS2QwNVFrakZlUXJJS0ZCNjZJc3QwM0YyWFlw?=
 =?utf-8?B?cjFtbXpoQ3dqMGJPOHZDeHU4N3VUeUtzM2svbFBFYThETE1ZYU9xK09vUzNJ?=
 =?utf-8?B?N1hBSzZzYlFYTTBoK1YvT1RSSzBYN1FhbTdpaCtHekc3TWhqdHdIMnB2S2Vv?=
 =?utf-8?B?ZGpSVlV0eWxUcFRYa2UwT1NlNkZ6N1RSWnQ5SlFFSTRodXBQRlN2bm52eHlx?=
 =?utf-8?B?RHNQQm1XOWVJTUZJUGJPU1JkODZ0NFhIUmJGazJpZHVvMXpHSWNhamJlL09N?=
 =?utf-8?B?TjdGME1OTldkaHJPV1pOYjl2Tmg3N01XOFgvOCthQW4vSXhGbUpjL0R3Ukhm?=
 =?utf-8?B?dFV5S1lUUktiTE4vdkpKVDFPaG81VTdjQUgvS0dGblFyaHhtMXl0MmkvVnNp?=
 =?utf-8?B?OTk4Uk1wQ0ljTm5NMEZQZGdmK3FhQVpmNU5DRFp3cVlEc01DbVdKVnM4dCtG?=
 =?utf-8?B?eE9IeWx5OW9ob2pXVlMxMTZhZDNaSm5QRU4wTVUxYWx5UnJYS2lIQ2lIWnA0?=
 =?utf-8?B?Y3RNSTh6TmRHTmVLTDJGVERYQkowNmZzV1c3a1BnM2hqS2xCTGhDUy94bzBN?=
 =?utf-8?B?SWNyNE9nMGo5c3hncUgwRm4yVWZGMnJGVW92VHNuWExLUkJyMnZDQ0VDUzRz?=
 =?utf-8?B?bEhabFVtc0ZzRFllSkF4Rld3OWU0WGpJaTE4TVpRR2lWRUNTUGlMc1hXL0VE?=
 =?utf-8?B?UHdKU3JxSXZ4eFRyRUtLTW1IWGltOWcweDI2KzhYNVl3bmRSRXQ3bmNydUZ3?=
 =?utf-8?B?M1JJNk1aalVIUlJNYWhPUmJwWFMzNnZHTlRwSTBhK2RMN2ZSUHZ2VVNYMmxi?=
 =?utf-8?B?cjBmLzIrVklkUnk0WVY4YjJlOEt6SElHNmhvZ3kwcTEvWDJqMGdSdEhIUGN6?=
 =?utf-8?B?OHNUYWlvSFl5ZlFIMUdRdUdKRFNSanFzeVpWMDE2U2o1aFRVTDA1T1VUYUQw?=
 =?utf-8?B?SW92NjVxVWVLNngyZS8zVk84NUZtdWZTTWVZaS9yODBwMEtKMUJtRWltdWNm?=
 =?utf-8?B?R2NaZVkwcTBQTUJpaXA3Vi8wRmE0LzNUT1pNTVJVRFRvZjlaTEI3WjVFcHZr?=
 =?utf-8?B?TFN2VUYzUTIycFFSZUtacUtZSUFjTkVxdlJiUWFiSnlzR1FFVGtUTGdUUlJO?=
 =?utf-8?B?ZlFyd1lscHhUaVpRZFpwd1B1WXVQYkJDWXBWd29Qc1VNeThqZ3F5WEVBNnVx?=
 =?utf-8?B?WDFlNHBycFRuYXZWbllON2lFTEVhcFJlOXF2dEFmN3dxcEJkS0Q4VHpPdUxy?=
 =?utf-8?B?SUVjam9OZDM5dDZzR1N6STBLcWJFTmtvZ1FlcERsbTFtbHVYMENwRDdTbEJl?=
 =?utf-8?Q?Nr+JB34PfG0Ii?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d9322ce-7762-47c8-9978-08d8e07037d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2021 07:19:44.8959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +RTte91hdsILG2x5Xp9baKgAP5DB/i+lUr/XH4fK1Uqn69Yh0vHDur02mAOnC1vUXEAtFSGzbEHc7B8C6i8aEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3454
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: "Tseng, William" <william.tseng@intel.com>, "Chen,
 Rong A" <rong.a.chen@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgUm9uZywNClBsZWFzZSBoZWxwIHRvIHRyaWdnZXIgM0QgcGVyZm9ybWFuY2UgdGVzdCBvbiBz
ZXZlcmFsIEdlbjkgQ0kgdGVzdCBib3hlcyB3aGljaCBkaWZmZXJlbnQgZnVzaW5nIHNrdSB3aXRo
L3dpdGhvdXQg4oCccGF0Y2ggdjXigJ0sIGFuZCBzaGFyZSB0aGUgcmVzdWx0cy4gVGhhbmtzLA0K
DQpCZXN0IFJlZ2FyZHMsDQpDb29wZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
