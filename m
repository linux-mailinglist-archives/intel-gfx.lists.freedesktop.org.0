Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F67822BD0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 12:08:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004A610E147;
	Wed,  3 Jan 2024 11:08:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C96A510E147
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 11:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704280106; x=1735816106;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=aOHW+h8Q31KTkS2JyJNOeJ7iUON9QJ9An7+TOATOV+8=;
 b=DOwPGBPe0JxKP4iw9GRbpWUZBMwQ4YVCFjTbbZNMBuxSG9qK3iqODd2+
 X+ZMS9jLBwjSqJiUtOE7rEK3sCCkHuvc6Jw3gpT8YpVtFoJmf48CqI386
 ZbzUTvwj58pVacJVreuTTYQtBYAAkFcdFDoEU3FSuHicr2uC/gUHZnUdv
 sH6pu+kpBq3a0db5wRFzlMpbVWh4J5SgWcrGsxRSHAvBXKS7h2FWMt5QG
 1E6YNHAYA5GTwUMi6SSxSzGLQTywct5gy9Tq0jOa+SC01gp9fTwbuFOaw
 XvZ7CFUAOm56X0ithvkGJuTR5fG4aVCqNSLEbK9SDrw1wI7HvSRgGmWQo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="10600998"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="10600998"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 03:08:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="1027045432"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="1027045432"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 03:08:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 03:08:25 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 03:08:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 03:08:20 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 03:08:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iO4pnAcQj7l5v59DOZVtKs8ZsgbVvYNv4gXJscPLu1K6Ua1Wby9wcgrFIUoqpeGABbN970GxAc/ED9J7lPlPR3OGUJ9Fk2T6B52r1J/Ck6KjP0r5lw6SwawVNTShpZp2qAtCDWVa34juaITmI+yFpdbz8rE7fD5Q2TXBg01wNvvCN1jxavPhMjsoa0GTaybHfQK54W7aX4qMbepTBDoDo0qsXPfF4+uKeyDMAdGPLxsTl+Jcwqv6Rsroq+I7wANKlrJBbtLqtD4FPmruK9LwQe7QLgH7LCeghVSKCcQBW9/+abJcADR/30S8IDMmzbMGq4oLLNzfnQAda5sgPkGTZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aOHW+h8Q31KTkS2JyJNOeJ7iUON9QJ9An7+TOATOV+8=;
 b=b9LqjsT0yxfq0QP9JLA9E54Wz5j1oFUX9RMPxxkKjI+QD3ehanBC3KEdoyX4pzP7gWIiEYh7HZzg1zpu0vt5+9Tm3ARt/Wt+dbzKaVOPm1O4VxA7/1A/37Gvl78GszbTdoa5zB7DKK+cM/PE4xmipZN3QNWAWRsFcnHH8PK5KNhtA1vz0pjA3TtkbaywcMnWoFF5rmvp0+/nRFgCrw0bqy3Qon+Cl7J0jOgG0pHNQJGVtn/NxRtHCYJz1zBFdb1vk8Z0GYGTfOhMXM1wO3Dg/p6eEemF4a0qalbeKR4l3L2tN/VBRgMPy16y67k5LoGwLKGnyLxsip2aUkxBSZjufA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7786.namprd11.prod.outlook.com (2603:10b6:8:f2::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7135.25; Wed, 3 Jan 2024 11:08:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7135.023; Wed, 3 Jan 2024
 11:08:06 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fix the PSR debugfs entries wrt. MST
 connectors
Thread-Topic: [PATCH] drm/i915/dp: Fix the PSR debugfs entries wrt. MST
 connectors
Thread-Index: AQHaPjQi0w812XLjtkCHy0lr/oonxbDH7dYA
Date: Wed, 3 Jan 2024 11:08:05 +0000
Message-ID: <8c206b5963fa88890a62db33a5d4a34513025a1f.camel@intel.com>
References: <20240103110029.2408342-1-imre.deak@intel.com>
In-Reply-To: <20240103110029.2408342-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7786:EE_
x-ms-office365-filtering-correlation-id: f1ca6e80-8d57-4108-1c5e-08dc0c4c42e7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EeDxcStz9OT4PfAlFmopeSToESNAAtQDasicxfHIXIaImJYbbFu9gLccbfoc7tuO+GokdOiSsQy1WJWXL/QmlCNMDOAFyR+pSoBacGyG6e3RHLKkSK1rh9xePUYmWRBYGSKI3qTPhi76G47i3OftZkfrRy8W91Rw2NfUaPJ4xIdk8rwYuRXjz7ADGS79gHi3CvYfXo9z6hc6zfJIOWcUjuAaNiRn0WUEUCQmAPNXo7gnf0gPs3nKY9k2+FFPGWB73oZ+xCGXqh6NJStLBfOEqF5tUUyLQaYjGe3+GI8bC0bWlef9PZ8TBhAjVrE1ta5vtdcRlj5yufwflciiO6i3Q8KHlsYkQnEAwhQpDC0EbXrtmnOT5m/zf7gHDjawWTS9Ugz9Ur1XcV5tZx/xf5CW3A80XjfJbiyfRJPo0/cbqEmCC/AoZNx4eySnvoROZcTlX/DGCHhR6xECRHPdAKLLQhNltFB5vVgtbEOuVLDzvzRQ14jN7mPcaN5H1t4P83k2nPbFbcOn0NgyuDzzL9xIZ7St5jOEkIiPMqzkwZ86KsDoe4zl2aTtdtpn1waPLu3w5/bmhoEHAyGdw4GTfp50G7gd1M0ZZESwZU+bfkXbhks=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(346002)(396003)(136003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(6506007)(26005)(2616005)(83380400001)(66574015)(107886003)(6512007)(71200400001)(91956017)(76116006)(5660300002)(4326008)(41300700001)(478600001)(6486002)(66946007)(6636002)(966005)(2906002)(316002)(8676002)(8936002)(64756008)(66446008)(66476007)(122000001)(66556008)(110136005)(82960400001)(86362001)(38100700002)(36756003)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y01acUNkNmRZejM2R0xrYWFOQkREYTh2TEV4YW5acHFRbmVxR1c3RGlrVG9Q?=
 =?utf-8?B?YlZ6S0ZmMjE1K2lReFlLQjNPRUNBZDFtM0pESGZ4SG5hbTdpajMrckR2T0M2?=
 =?utf-8?B?SWZmZEJRa1NBdnI3WWxTU0pZRDFnWEp6RU1lb3dZT1NIMzdYS1huNmJiZTdt?=
 =?utf-8?B?Y2Rpa2NxR3dKZmlQWHV6a0VkZlBXb1ZzRElNL1hIbllhZENhQjh0VUZEYzll?=
 =?utf-8?B?Ym1ZdlErNk5PMmliQnZkNGlwa05BSElDeXpUYlYwT2NNZkphTWt6RVNEQzFR?=
 =?utf-8?B?ZGlWeno4UmU5WDl6bDV3NGsxQUVWbk1Fazh6OFFtL3FQUm1aNVJrV3JQOWoy?=
 =?utf-8?B?L3ExYlF3Uzh5SlAvYyt0cU1nMVB4TDAyMkJLVVZkY0lYYVhOVUExU1Uwdjcx?=
 =?utf-8?B?VUlXYVVTb0hsYjltOFFFOUdhZEdUKzBzMk5PMWNtY0ZJc0FIUHJXbkF2TE8v?=
 =?utf-8?B?VGZDU2k1SDk3c3pOYW1tMEdaNDNXUmovVVpJZFlYeW1RMUhoZ1ZOWWYrbTNK?=
 =?utf-8?B?NGg4NFlJWkVBa3puZkdvbEU3ZmwzNW50amM0a0M2Y2s4YjJUSHJNYjRtd21v?=
 =?utf-8?B?bXZxOEhIRUZpNE8zOWg5bWx5NlB4N2tqc0RxNE50bGlOcFlwOU0vWkR6NGEw?=
 =?utf-8?B?cWJCTjBsNTA4OXVLeVlsbmFNdysxS0FtYU0yV2tGWi9OZUdLNU5PV3Fndm5p?=
 =?utf-8?B?L25UWWhZSmJPNTF3akIzamlqZVAwZ2pENmJlaHIvZG4zRlMvdThxbnFaUEF2?=
 =?utf-8?B?TkNXTDZuYkhUU3plUWFWMzdLMjdlZjE3Q0dzcDBNK0xPVFhtZExrMjlUaHVW?=
 =?utf-8?B?bVlkZ1I1R0dvdDZ5OUxqQ0Vyc2paVXBkc0VyTTBwZUpQTkM2c05Zek5MRlZm?=
 =?utf-8?B?Y3hHcFd6NUc5UDdEVERnUFluem9kN0pOeGtmWU9YR0xlNkhxdjhlYnB4TFlj?=
 =?utf-8?B?RHI1c3I1MGsrMWFHMDdVc29CcFY5QjVDVWdYVWVaZlJQRndBRVZjbU0wOUpq?=
 =?utf-8?B?ckVnZVNuOGdDUHA3UStMYW5PWVovSkNaRE9LejlCS2VLVWRRd2FNVHR4bkxl?=
 =?utf-8?B?eHh4RXpZWDJrcTJQWHkvUnFpWml0UmlCS0MxeFRBcEUwM3dmMFpYbkoreTBU?=
 =?utf-8?B?NTRocUo0ZTVxbTlXdUFudjZzYWRyVzdtVmZRU2pPQ3drck52YXBNVVRyWXBG?=
 =?utf-8?B?NkVSaURqeU0yZVFvNWZBd3JCUlJnOHViMS9hRWRDdGZ6MldZb3BtZHdmSEFz?=
 =?utf-8?B?bXg2Sk8xeHRWNGZBRmlqTWhUUUlrNEdUVlRCTlVNSnRqdnJHTGUwemM0Rysr?=
 =?utf-8?B?U3ZEQ0Z1TGRtczlRQTlFekh4eG5GYmJGMVZ4Y2ZNQ3lsTS9aaG9LY2l0VXgz?=
 =?utf-8?B?VmJWakpkK21lNitrV3ZLTnhVU1BFK0NXclZLTGg3SDd3RVFzM21WNVFZb2RW?=
 =?utf-8?B?TU1tL0dzV2tmSFlka3EvbXEvb3dGSWY5M21raEc2cjZkMkRBdkNCVU9jclFz?=
 =?utf-8?B?STZNOFRKOUVCbG9Kamo2ZXJNZ0J0Qmd5QVJlanVEenR1OG5oVGpOcldtb0Vt?=
 =?utf-8?B?bFJJY1Vncmo5eXhNc1Fvb1ZFSTJBeS9QRGU0U3RYUE1HSXV4WmZPOE5YajRt?=
 =?utf-8?B?RmZDMW9MT3NnbVlWV2RweXhtRkpzRUxYbU9mK0ZHV2xrRUExeGVPcUcvQndN?=
 =?utf-8?B?VjdnZ3krc29jcWRBWkNtbzkxYkVicFRLTmtRVjZjS09DK015S2IyVzVNUlR3?=
 =?utf-8?B?NHdwa2x4djJ2V2E0amZPTGpoY1JPUlV0Y2tyV2V2OENsYW8vNzdhZnhlN0ZE?=
 =?utf-8?B?QnlQQnBHMnVuanpiODh6Y0JBdWdTZU9meEhmRGh3NSswY1lxc3lha3RFbjVi?=
 =?utf-8?B?a1VsZnhJUS9qci85VkZSd3lqOVdVY1BjM25SRkc4Z1d2YkZVR0hpc1dJcHhv?=
 =?utf-8?B?L28zdmFsMnNySVphdVgwWjBEdVZTWCt4TUQxaUpqZ2NBK1JPZWZwa1hFRThX?=
 =?utf-8?B?S01nSFVQb1l3TCtlSlRSQjU4RGc3d2hDanIxVEVJZmh6Rk40VHFpRUdtcWZP?=
 =?utf-8?B?TzdDanRFS3BPKy9XckxpQjdzWWluanBTM3NvR3dWbXI0SlBweGd6dEpTZ3J2?=
 =?utf-8?B?SzdneEoyTWtqQXhOSkx0dS81SmdZOWdBR0NCOFFJQ05zWDUycy9LT0hZSlZ4?=
 =?utf-8?B?cFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3DFA5C446948C94589D2D9F4070C6360@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1ca6e80-8d57-4108-1c5e-08dc0c4c42e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2024 11:08:05.8979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d5KBFP56ZE1Q+ieItG0Nua5oZyQ5iMfkkoAlAqNdo3Mwmi/Gl0qQsHrrB1QFzakUOZdAy9VupqxIuoFf+LpIGe+iSkq3Pf5m0Vg432IaG8M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7786
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

T24gV2VkLCAyMDI0LTAxLTAzIGF0IDEzOjAwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE1T
VCBjb25uZWN0b3JzIGRvbid0IGhhdmUgYSBzdGF0aWMgYXR0YWNoZWQgZW5jb2RlciwgYXMgdGhl
aXIgZW5jb2Rlcg0KPiBjYW4gY2hhbmdlIGRlcGVuZGluZyBvbiB0aGUgcGlwZSB0aGV5IHVzZTsg
c28gdGhlIGVuY29kZXIgZm9yIGFuIE1TVA0KPiBjb25uZWN0b3IgY2FuJ3QgYmUgcmV0cmlldmVk
IHVzaW5nIGludGVsX2RwX2F0dGFjaGVkX2VuY29kZXIoKSAod2hpY2gNCj4gbWF5IHJldHVybiBO
VUxMIGZvciBNU1QpLiBNb3N0IG9mIHRoZSBQU1IgZGVidWdmcyBlbnRyaWVzIGRlcGVuZCBvbiBh
DQo+IHN0YXRpYyBjb25uZWN0b3IgLT4gZW5jb2RlciBtYXBwaW5nIHdoaWNoIGlzIG9ubHkgdHJ1
ZSBmb3IgZURQIGFuZA0KPiBTU1QNCj4gRFAgY29ubmVjdG9ycyBhbmQgbm90IGZvciBNU1QuIFRo
ZXNlIGRlYnVnZnMgZW50cmllcyB3ZXJlIGVuYWJsZWQgZm9yDQo+IE1TVCBjb25uZWN0b3JzIGFz
IHdlbGwgcmVjZW50bHkgdG8gcHJvdmlkZSBQUiBpbmZvcm1hdGlvbiBmb3IgdGhlbSwNCj4gYnV0
DQo+IGhhbmRsaW5nIE1TVCBjb25uZWN0b3JzIG5lZWRzIG1vcmUgY2hhbmdlcy4gRml4IHRoaXMg
YnkgcmUtZGlzYWJsaW5nDQo+IGZvcg0KPiBub3cgdGhlIFBTUiBlbnRyaWVzIG9uIE1TVCBjb25u
ZWN0b3JzLg0KPiANCj4gRml4ZXM6IGVmNzVjMjVlOGZlZCAoImRybS9pOTE1L3BhbmVscmVwbGF5
OiBEZWJ1Z2ZzIHN1cHBvcnQgZm9yIHBhbmVsDQo+IHJlcGxheSIpDQo+IENsb3NlczogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy85ODUwDQo+IENjOiBB
bmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gQ2M6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA3ICsrLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDQ5NGQwODgxN2Q3MWUuLmI1YjkzNDBlNTA1
ZTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBA
QCAtMzMxMCwxMSArMzMxMCw4IEBAIHZvaWQgaW50ZWxfcHNyX2Nvbm5lY3Rvcl9kZWJ1Z2ZzX2Fk
ZChzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+IMKgwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY29ubmVjdG9yLT5iYXNl
LmRldik7DQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZGVudHJ5ICpyb290ID0gY29ubmVjdG9y
LT5iYXNlLmRlYnVnZnNfZW50cnk7DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGlmIChjb25uZWN0
b3ItPmJhc2UuY29ubmVjdG9yX3R5cGUgIT0gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkNCj4gew0K
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCEoSEFTX0RQMjAoaTkxNSkgJiYN
Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29ubmVjdG9yLT5i
YXNlLmNvbm5lY3Rvcl90eXBlID09DQo+IERSTV9NT0RFX0NPTk5FQ1RPUl9EaXNwbGF5UG9ydCkp
DQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
Ow0KPiAtwqDCoMKgwqDCoMKgwqB9DQo+ICvCoMKgwqDCoMKgwqDCoGlmIChjb25uZWN0b3ItPmJh
c2UuY29ubmVjdG9yX3R5cGUgIT0gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkNCj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCg0KV291bGQgaXQgYmUgcG9zc2libGUgdG8g
ZGlzYWJsZSBpdCBvbmx5IGZvciBNU1QgY29ubmVjdG9yPyBJIHRoaW5rIHRoaXMNCmlzIGRpc2Fi
bGluZyBpdCBhbHNvIGZvciBEUCBTU1QsIG5vPw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQo+
IMKgDQo+IMKgwqDCoMKgwqDCoMKgwqBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X3Bzcl9zaW5r
X3N0YXR1cyIsIDA0NDQsIHJvb3QsDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25uZWN0b3IsICZpOTE1X3Bzcl9zaW5rX3N0YXR1c19m
b3BzKTsNCg0K
