Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BA25F36F8
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 22:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A110A10E4D8;
	Mon,  3 Oct 2022 20:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF5110E4DE
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 20:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664828630; x=1696364630;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=heIz9VnmU2Ouak7cDgk66C8+o8tYCv5LKRgqKyGBmfY=;
 b=ATIDrermXJ+qu/j1o3yvynh9nmTmSn2t5/8tVZ0+2EZ8FXi5ksc6BNIz
 pVoXD4BoTdqaopF0Dm9t0lJHqCxGaxNmwwElUzSmNV5/rbWTqBJhRXhl4
 d9Fp6jF1aV7i8ts56eYyTMgD2Srtp+ekbAwyqQ/sfXimAZc949lpY10ll
 AGTyHPys2zZ/jlBzenxaDDKeP5nDYuB06Ww8v57TikgkQRxOElDspJTEA
 R3qPBxiI7P0cwuTLxli3YprL/avx3XQ+GnxxDlhQMqk/J2BBC+AcCfMm6
 ruwO5GGlTt3zk/UejAQn0rlNwZtqzODUCFSqzenB4HGCXg2GuVgBZUjXh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="300353645"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="300353645"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 13:23:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="623685667"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="623685667"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 03 Oct 2022 13:23:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 13:23:49 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 13:23:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 13:23:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 13:23:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YK7rbBatzZpmrm8Rhrb/BaCxTixNKwg/DWTnkXi3253NVQesuRVfeYKbZZREQCeJdFnJ1fHYtNcx9WV0Xd6olizi3vuRtvJaALAVYPmfNPaqFAHiWEZ8tVlgvVsky98glukcJxv2oA2pAB6RsC1PiiUsqofxy4sxH0ckNNdYHC3UY5SF1QRwj+9AQEQq5K2O7sWvmU9b2BkDcv2r95RYHFHJ2IJkX8tnC6brs60I7S1A8wupKen3b8ykCF4sZXXb8XozZZ5OM2uICdddV1KPGh/XMo7MrKXPg871bj8X+jp5FXBmPw9iP1Hw3Wo2GF2Li4faZ1y+O57lQNGA83ZM4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=heIz9VnmU2Ouak7cDgk66C8+o8tYCv5LKRgqKyGBmfY=;
 b=jDzBNRBUJCflRLjpNgsudH9nlh9CIBoDlS5NsRaduuN5R+c3w8JFNavQ3HaoPYg1LYg12IPVZ46qDDvcqFcMmPw17WKCNvIC9X/opBN43P9EqGY37hD2VKjntg2GX4qfl3+bYkAU7aC74B9WJgbZ9yFvDI5oc9s0B+DrJHFShhb2Y5Mnwf+dZKfhaXozJs8WdouJSbRA7uwnF9hz1r4FYDRqwXR0XS6xhvPHX/JlP5Vc16i1ZQ+8dR8qP7fQsoN+JBIyII/xdg0hLHwYcMZNRrVV+9Uf1wrhTHQPp2D+L6p5NkSHmHAOvAoWpJFtyPEuPqTdibdMVXr4q8M1worrKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BN9PR11MB5497.namprd11.prod.outlook.com (2603:10b6:408:102::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Mon, 3 Oct 2022 20:23:46 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5676.030; Mon, 3 Oct 2022
 20:23:46 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4IEd1Yy1FcnItQ2FwdHVy?=
 =?utf-8?Q?e_sizing_warning_(rev2)?=
Thread-Index: AQHY1dE0AM3js5Ox3EqIXVFDHzloM639IP+A
Date: Mon, 3 Oct 2022 20:23:46 +0000
Message-ID: <dcd7d5c8a5275499921de9c2290cbeb0e9432a54.camel@intel.com>
References: <20220930211836.148041-1-alan.previn.teres.alexis@intel.com>
 <166465472585.32392.3986505234853321470@emeril.freedesktop.org>
In-Reply-To: <166465472585.32392.3986505234853321470@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|BN9PR11MB5497:EE_
x-ms-office365-filtering-correlation-id: 9d319111-eb4e-4be7-9f98-08daa57d2c6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n5yPs5rIdvr8KbQYISEZgmSTp+CuCGRxCJ7+mFQz29xqY4nAoB9Tn2ydOP13zb2Uw0xsQjdf040k6y7l3VDFG/DZhuMBJNi3rBcNCO6T/zU3UKba7jRpl7+5KRGrl3fG2CV/gO07pez06bTgRp4ZGpTZg4p6qyLeaSmdmzVbOFmjwNV+2DLvbPJPiU2z2ZS7RJn8gQmMlhLOKdKbpJ8GPLYAwuPyf/3skzasrWuaVRINU/eAgEd2l0FN7blFe7AdoUnjw2XTGG/H0qSgM91r5zF2rr2rvFBogFpmfS4KY8gKDpOhnmLR/OsxLhEV8ZVk6vgKS3qefIurGtKXBOamOyoED8XGL45q8FOnF03w6s3AHM2swiUpeRQQqkfUXIbKxg2blppm/NmNLu7qLtnmOmmKyQX9L/X2FBltJODKywgQseV5qQEj0AD6F8n/1SqP1187amjR5Rk3BnaPwlk+szQKtJV7gAhe9CQUFXWbb+YTfbDqU+IKhZXu3YNcul0QrRwjg+o18+uUpC2o650IGe4FKFFoGMIcG4CTsDzW4bt7x2vi+dGyGpdhrcO6n3yT8V/uj9Fes6ILhgC5SBZAcqtE+ERSeEJmJIEdA+uiO7fNV8+Gv4QxtQmTwY1KncbvExDJ+h1scJh40x8K/duIL2YV3aGgvYrkmli+SgqjH5ocSBaMkfM2jzpLn3RdWlLvbWiAu+RwwMg5qr9DaFr2tU4aI5i3A+B79TvH8N1WLwmmLFI5HmYKECAWT5WdSkurQ8rEF8qeopT1+8Z+k3exRqWBYFRhDuzzdh1KOHq+utU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(396003)(136003)(366004)(451199015)(19627235002)(6916009)(66476007)(316002)(2906002)(6506007)(8936002)(2616005)(41300700001)(5660300002)(86362001)(83380400001)(36756003)(64756008)(66556008)(91956017)(76116006)(66946007)(66446008)(6512007)(26005)(186003)(38070700005)(122000001)(71200400001)(38100700002)(82960400001)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TE1NT3VJUWtQM3NVRjRWREZIYnFxWFJQSWllSjMrUmtKcmp1aGs5OWh2UjdR?=
 =?utf-8?B?SVNKNFliQ1dWQ1NHaFR4L1lMaHR3cnZMK0FiZVV2SGRKRWpyVUpkYWN0UmRl?=
 =?utf-8?B?VUdiWGQ2L2RYUE80WlVnaXBMQVpzZlRpdnpKNUVKeXErK2FCcU5JVkZxWGo1?=
 =?utf-8?B?dVZCVEtrNnE0SW45U1dSVFVSY1A0clMvNlJXMnNKTng5Yk1OTnVXR1dGWkhy?=
 =?utf-8?B?YW10UmgvTERkNTdmYTZHWXg1SlcyV2lITXpaTWFma3JaSjcvdzdxNW90Z0w5?=
 =?utf-8?B?NlYrdU90TjhmckVPOHd2ZXZBY2lBbU02UmJUSXlFNUdBQktmYVVuRFJ3eU9B?=
 =?utf-8?B?YlNsYnNjci9CMlRkQmV0b3crM2JqaGJ1UXRZWjJWZVA2cmZONE1tZzE0VUNY?=
 =?utf-8?B?V1BRblgxOTg4L2NqalZWb3p1Ykd6TkRwMzcvWWh3VHhuMXFSOUlaMHNzS1F1?=
 =?utf-8?B?Ti83cnMvL2VJUStUR3BYWUt1TXBPSVZNcC9HSWRGZnhKWGhrQlNOQ3ZObjZ3?=
 =?utf-8?B?amxEZkxCamhTbVNMbkhJeTRVeVpzcFJCZkt5eThrRkVJN2NUdXFlMFU5NERz?=
 =?utf-8?B?K1N1Y3h5NFlTVWZqb1FCdDhHMXR5WXVQeU9XTkF6QzNSSEg0MDJpRXkrZGxs?=
 =?utf-8?B?KzFtZlh3WFR6a0sxS1N3ZmFPVW9tWHpoRFlyT2JzOGx4R3Q5T21JYTBTSUds?=
 =?utf-8?B?djExSkx0YWlFRFNnZ2owc0xiSysvOFZwRHcvOFAvTHF2WnAwTXdUMmVTV1U4?=
 =?utf-8?B?dHJYc2dkc1VUOEFXYUFOd2JlMTFacFU0MmpmTmtycXM3eTg1a1FNOFg5bG4z?=
 =?utf-8?B?MExoVURVVC9BaGhoSjdJVDBTelRobTNyNFZWNm54MEl0dFlldk5qU3NVaG82?=
 =?utf-8?B?YWw5akd3Wk1rVkJtWUpXNHViK2REdVg0UFBMYUp0M3dIOEh0OHdsTFQ3Zm1H?=
 =?utf-8?B?ZlliR2RsazJUbFlaaXVNYUVGZ252STY1YWpIWCt6NWxMYVc4OFM3K1YydklO?=
 =?utf-8?B?WkRYTm5BTlhYbTNmQXhEOFZRYVRZUCt3STEyc01VRDBYMUtTTlRkUlFXRTNL?=
 =?utf-8?B?Sm0vSmFoZDFiSGpKcUxJamQvZVVyYXBGbzl5YkppWlppMFUra1FaZlhpL3Zx?=
 =?utf-8?B?cmI0NEZHRmxBZmhKcElRV1BQMkw3MFRhNmN5RVkrbkxSbGY1WGR1Y2JUZm5V?=
 =?utf-8?B?VEZmUDlMOUhuVWQ3Z0RRdVUrRGRncU5TQWsxU2hUWlNEZ2FpZGtWMmFiSDBm?=
 =?utf-8?B?cmFaZitZWEVwZ09DUGtZS3RxWXhBc2tiQ212UHFEam9ZSUFGeVM2bG5uUUto?=
 =?utf-8?B?OHNqMVBqWEZKKzEvWHdIcHB0TEtzVU1KUDFkWmJ6dkdTUTZLMnlIVVZ0YUhZ?=
 =?utf-8?B?dUVmdTUvUGV2V3pyZ0MxRzEydTFWOU9jZkNUcTBlK2diK0dBQTEwZEhPS3ov?=
 =?utf-8?B?Ykc3M2tmSkh6QlpTbkttSUxLNzFwUHVzeWx3a1RYQ0FXbTRCbHY1NVd2MTZq?=
 =?utf-8?B?S21oVTU3N0RTb29vREQ4NUo0RjJrWmNQUHNuT3FBNWpzWG4yb3d4UTVvOHZX?=
 =?utf-8?B?ZG5lb3JFTEJ2L2dDcmNlWlZzQ3ZJZHdGUWRhU0VoSHRlcXphWUZ5SEFUVlVR?=
 =?utf-8?B?TXUvSWZEL2lzOHhZWHFHMzNPL1NCQnBJenpQVUxkNjVZb3dQcU82V3gzTWJU?=
 =?utf-8?B?WHhVQXRYc2ZIV0V3WGhzZDQvYjEzMWJ1L3BVRk5SS29MMEJWVUtRejZwc2hK?=
 =?utf-8?B?OUZJTVd2VldUeVhyK1pQRjdMam02VmRkcmxOUi9CYkVvQm9Yb3hoeHlHdFFP?=
 =?utf-8?B?ZFhLUXVjbjZOanAwUndZdzZ6V0VOdjhXOE0zSS9qck8ySWJSRnk1SjB2S3Ur?=
 =?utf-8?B?Unhkd2JtZU85UUN3Ry84RTVlS0lOeVViSURwa2p5dHprZkZacm5YSHV5SnR1?=
 =?utf-8?B?VUI2bGp6RkRLUFBFM2l4YlF2ejFyZDV6czVjQWxNd1RLTUc5UitEc3loRmNU?=
 =?utf-8?B?ZUFucTJEdzMrNmRJcDFzRms5eEMrTmVSWENyd2RNQ2xJSnBwcXFmMzBlQTF6?=
 =?utf-8?B?blVGNm41cytXSmxGeWNBUXh0azJlS0ZJNGIrbGJLaDJGMDF6S1NFeDIzdGp0?=
 =?utf-8?B?VFYxY1AyREdyVzJYNzFnbEVaS3NaUkZSYWVQZVpvUjBxV0tUOWxNMnNKTlUv?=
 =?utf-8?Q?1Tmui4Mlfhg8oAOapLb2q+A=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6C02DEC8F912BF4FAFAAFE36EB0C51F2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d319111-eb4e-4be7-9f98-08daa57d2c6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2022 20:23:46.0532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pRcJtylqMF0CC3zK1KlTCjxSmEsgj6cXQozbEN/v3y4VGzh8Nwfji25Ujw1bst0w5LcF6UL7+Dq+BMNVqd5L0si45O5PAiGlx5Ddpt/jUR/Q76VQvJ711O5nvCKa5+HC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5497
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_Guc-Err-Capture_sizing_warning_=28rev2=29?=
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

Qm90aCBvZiBiZWxvdyBhcmUgbm90IHJlbGF0ZWQgdG8gR3VDOiBJQ0wgZGlkbid0IGhhdmUgR3VD
IHN1cHBvcnQgYW5kIFRHTCB3YXMgbm90IHVzaW5nIEd1Qy1zdWJtaXNzaW9uLg0KLi4uYWxhbg0K
DQoNCk9uIFNhdCwgMjAyMi0xMC0wMSBhdCAyMDowNSArMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0K
PiBQYXRjaCBEZXRhaWxzDQo+IFNlcmllczpGaXggR3VjLUVyci1DYXB0dXJlIHNpemluZyB3YXJu
aW5nIChyZXYyKVVSTDpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEw
OTI3Ni9TdGF0ZTpmYWlsdXJlDQo+IERldGFpbHM6aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTA5Mjc2djIvaW5kZXguaHRtbA0KPiBDSSBCdWcgTG9n
IC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xMjIwNF9mdWxsIC0+IFBhdGNod29ya18xMDkyNzZ2Ml9m
dWxsU3VtbWFyeUZBSUxVUkUNCj4gU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGgg
UGF0Y2h3b3JrXzEwOTI3NnYyX2Z1bGwgYWJzb2x1dGVseSBuZWVkIHRvIGJlDQo+IHZlcmlmaWVk
IG1hbnVhbGx5Lg0KPiBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3Ro
aW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTA5
Mjc2djJfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0NCj4g
dG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxz
ZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDkgLT4gOSlObyBjaGFu
Z2VzIGluIHBhcnRpY2lwYXRpbmcgaG9zdHMNCj4gUG9zc2libGUgbmV3IGlzc3Vlc0hlcmUgYXJl
IHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzEwOTI3NnYyX2Z1bGw6DQo+IElHVCBjaGFuZ2VzUG9zc2libGUgcmVncmVzc2lvbnMg
KiBpZ3RAaTkxNV9wbV9ycG1AbW9kZXNldC1scHNwLXN0cmVzczpzaGFyZC1pY2xiOiBQQVNTIC0+
IElOQ09NUExFVEUNCj4gICogaWd0QGttc19wc3JAY3Vyc29yX21tYXBfY3B1OnNoYXJkLXRnbGI6
IFBBU1MgLT4gSU5DT01QTEVURSArMSBzaW1pbGFyIGlzc3VlDQoNCg==
