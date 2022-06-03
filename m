Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DCB53CA83
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 15:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44E310E02D;
	Fri,  3 Jun 2022 13:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7690110E02D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 13:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654262072; x=1685798072;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=UuePbANrr722+wNrJNRW3dWNy6ZEccw09C9ymV2tALc=;
 b=hXf+MEYWi1kOfXhXX40d6G0/fNisp2w/z8qnLOST9gzeiSdTvU9mnUCi
 XsS1j1bZNkARxUS0z8LhRjVSH06ullBUZNmgXVejBxi7m+tR0yZw/LyTW
 cTg6nqgSnHacQiL4Kcaa9naRR+fjH3XnKlL9GlqHW8+fDJ6G6PjHkIkip
 q1Keib0DS4Ml3BLLZhloGSYirkIkXcVMvPXyU17hZSJ1eoXJU7gHd9bHa
 wf9CCO+DRXyFT+mhH9aKNgct7hwnOdKS0CSyziHaSCFspZn1YCNWjDgxY
 4MekyhAToIhVUY3dCsIQZO7IHR5eYXJPlVQhGXEyc4PTw3yluv2YSc1Z6 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="362617034"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="362617034"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:14:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="646451020"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2022 06:14:32 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 3 Jun 2022 06:14:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 3 Jun 2022 06:14:31 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 3 Jun 2022 06:14:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RXlzt8DHUS+HYWTpRP5lVN0dr3h1FbN8vkUA+OI+P305w6t0XY1zu7DV6YS8Vkj/FFo6uRQ4BUjiIpP+/QWiPZIF8J2NryRADTCJRmIAFZplr5PYxTHyEa15sPlsF1tPrIz64+DoFgOibHFrv5vK55b7ujcJK3MNTtMvGI53QcleGZzwq6cTw+2vEKvsJfuaaLXPW04IoRVrruJXZSWLKAKg7k67KRj1WrRfDtp0nwrAEd73d/fP5VyK0PY6HV+UOCuRQ4Iw0qk4Po/Jg4UURdXmehv0Dvk/3gRotfDoMp/H8JV9/Ne8IZHMlV45qH+UkO0YqFjqgRaHFchSvJLtHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UuePbANrr722+wNrJNRW3dWNy6ZEccw09C9ymV2tALc=;
 b=S/n81joIsNKLlk1rB0yvyYp5RAhzQ7VpCneWt2dnWPGyYczwkUi4zsnV79X1wEq5tZlG3Xc04kjerLCjQJjiar3hFcp44EqgczihRDajeMNeBfvJYk5L0BdCqLCk3shAxE9bDieAXABycLGqy6wIArDPUrcrqvB++15ZWlMzs7DSnjv2e33ZtTboALg5MScsP3efatJ6cxr8EgkYeXq8CdXatdadYzdplNZkKzDFTpBVzM8WgtFWZZ1vXgeFch3Cb9fjpX2nFyKXcQbNBziZ+0wq/2P3pUxfZR78GbetHoj8BR1XwD3hsDs7xPjhD9bY+iRj6QGTf1IOaniYsB9iqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN2PR11MB4127.namprd11.prod.outlook.com (2603:10b6:208:13e::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Fri, 3 Jun
 2022 13:14:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::7022:bb20:699a:1ef2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::7022:bb20:699a:1ef2%8]) with mapi id 15.20.5314.012; Fri, 3 Jun 2022
 13:14:29 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to check
 if headless sku
Thread-Index: AQHYdzK5I5Fh8Y/l3EawA39lhGFtWq09oLGAgAAIngA=
Date: Fri, 3 Jun 2022 13:14:28 +0000
Message-ID: <eeac0a25543a75cbeb39eaa61a1abbfdcfb94a6f.camel@intel.com>
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
 <20220603101411.3087789-2-jouni.hogander@intel.com>
 <87k09xor2e.fsf@intel.com>
In-Reply-To: <87k09xor2e.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ed2a62e-7405-432e-f627-08da4562fd93
x-ms-traffictypediagnostic: MN2PR11MB4127:EE_
x-microsoft-antispam-prvs: <MN2PR11MB4127F84CC892EFA9C8B75FA38AA19@MN2PR11MB4127.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AxT56nXzbgOhptCc02SexoFscb724xUWu8qPNKwcIBexhUa7iylgsHKRMgolrs/xzyTM0kUCqejhy0PAVRGmjs32Rn+e8nCl/q4DpZeNE1Wccr7ilal9uoxpPzWTSIt6Pm7yP48l5Bgm63/M5AGJEI5ERPetVp5GEC3P/s62zmkUyWVR3ondiIs9fdfR5MSIm06tPvxIv+HdqG9K2jht6wSbFyH5z/s2+NiwcTbtu1uPO+7mpraqmww6bU3XfZuV3phE6gzNykTC28Z+/Cx0+1ryqrj7BF5w9vl6VrtD7XLUeOeISpB9LNh0QGhlmd9xkqxUh4b6amxKatVnyH7P90/VtgxGEaE3sbURfDPyyoxEGyQpzhCuJO/XqW6+LBHVsvSr2LMJQxMZCmpcStFPcGyyFL9JrtIDbdnhjpYLfBSHJiJ7/8Rk8ePwp6QcP1DK0hNtiLNIzXvU6WlLpUykdhKb7/2tYO75s3WJweKCBlTXzJhJt5bbewAfWqUJEZOVzqO5y9n43QA0G1V5WiB1aBvYO9ViDS96iW7Rw9kziVKtMQ8UYPIHgGK0zXPn/rOm+mFIa8Wb4a6DktzsxkPVmE7keOGHwcqHk6ChDQmXeObc7xkk9vWIB6NtmShJgq+Wd3QO2lVqbuJTXMSwayOb2wrIt53DYe/gEKoyMjCcpUt6jhA0tGnvAzp8qY0GSPxGVLVFMBxxPV+wZbRr73utZg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(36756003)(8676002)(86362001)(2616005)(66574015)(66476007)(66946007)(66556008)(66446008)(64756008)(76116006)(6506007)(38070700005)(91956017)(4326008)(5660300002)(83380400001)(508600001)(82960400001)(6512007)(26005)(71200400001)(316002)(2906002)(122000001)(8936002)(186003)(110136005)(38100700002)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bnhFSE5kaEJOTUM3ZFhkbmtqY0RkRVUrdnJaT0Q1UDJMdmltVTRqeURPWWxY?=
 =?utf-8?B?c0JtTXdQTFZqWXFCdXFXNDNpMFo4UEJub01ZWFVPajAycXhCVVpNNUR1T1Zp?=
 =?utf-8?B?SHZacTQwT2hqcVA5SSt2dlp0aFErVzd2MmFmWjBRSWdxVnArUmpJQXovSFQ4?=
 =?utf-8?B?VDVIY2hyWUVudDhtTEdDU09ySWNJL2g0Wm9nQzRQc2MyUDVHazZFOHZ1Ui9I?=
 =?utf-8?B?TE1aKzZBVVNGb1RuRHVxTmdlOU5rcnBUamhFTWRVSHBkeVpDSkFIbk9PYmIy?=
 =?utf-8?B?TDhvTUJ6ZmpJeVdUL0RPc205TWFvYzM3OUk3dU14RWZHdE9uQkdEZWhDekND?=
 =?utf-8?B?a1o1aFZFRlpFQmhFNnlaeXQwYUgxWjZlaGJzK2J6NjdkZDFFN2VDd296dVV1?=
 =?utf-8?B?SlA4WUIrdWNyeldNc2dnSnVha3RPK0gxQmxqcWNUcDZva25iUlAyMnZIZ21B?=
 =?utf-8?B?Z0RwL3F1UStDWmZMUmRmQ1g3Y0g1MW83amFKYktlcWRxVyt4VzViUER3ZEIw?=
 =?utf-8?B?bzVYaWVMRXZMbEozOHpsSGVYT2NuZFQ2VUdNSnUxQm1NMDlpcGlsKytRd2NI?=
 =?utf-8?B?ZXlURTBxdlBCa1N0N0k3QnRyL21ZUUJTdmcxNUZvU0NoSmoxcGpmeFBOdkNt?=
 =?utf-8?B?c3VNVmRkYW1MSG1BQlVOaFFDeGd4eTRxSGh6SW01eUk0cmp1Tm5FVm42L1Zh?=
 =?utf-8?B?amkycS9LbVRYeklmYXg4aUV5cklhZlBMakVITEZuYi9raUpsQnNhbHJheFdl?=
 =?utf-8?B?K0l5S2NWdzJqWVB6ZkNpb0FWdVhZY0JnVU5kT2FCUERXUi9PckpFZG1US0to?=
 =?utf-8?B?OU9aYjRXa1JSQ2VHbzR3dFlVRkdSQjQwbW1hZ3I0dmppTWhtTk1SZm5FWTBD?=
 =?utf-8?B?aVRZTHg3WkFaaStDdXRNcE5BcUZxWUtnS0JKUHpMaHIwdm5tdEw5VUN2bUFt?=
 =?utf-8?B?L0UwMFVLUms4WitHZSt0ZGJTMVg1aDM1SitEZnoyQTZwTkY4eDV3K3JRNStN?=
 =?utf-8?B?WWtWODRMeXhsVWYreUlBR1ZEWGZTKzdJZHo4dUpydTFvYXhaVFkrSjFjeDRa?=
 =?utf-8?B?TFovVVZUcmZSSHg4QzF0VHFxYWdXRTh6blNtMEZneHpkVi92c0EyWWhEeEkv?=
 =?utf-8?B?NU9mVy9tV2lyVDlGbXM4bEJGOEsyUFhjYmc5Z0NBU1VBRWtQNTlwc3k0bG9V?=
 =?utf-8?B?MzRQcWdPNWxpeUpVMUJxY1hDSWRUVE9WcENOZzVXTktwT2hTVXZvUGdxa0Rs?=
 =?utf-8?B?MnpRNWQvZU5pdGhOSTUwbVRQRnhlbVdmQ3p2VWNGQTdHQUhiMWVGRkhBaWpL?=
 =?utf-8?B?UGpscTVZK0pQdGFjcS8zN2N1QkJRTC8vNjQ0WWxKZ3JNS3M5bllramJrVEl5?=
 =?utf-8?B?dFF3VXVQM0YyaXFDMTdBNG05QkxwM0hjNWxrMHgwOGV3Um9jZjE0WG5GQTJu?=
 =?utf-8?B?bHhTVjliY2h3MVlNaU82U29obUc3NlJHZWFRbkdoZnJrY0wyamZEd2J6MUg4?=
 =?utf-8?B?U0M0VDFkNEJmVldUTEsyWUVMbVRhVGt1MzJBalJqcXkzRjhQeldvQW1IUjVv?=
 =?utf-8?B?bDVZVjBmZG9TN3pORVRBRGZYdnJpWkRXVmIzR1I4UHgwNVh0b2tSQTU3WW8w?=
 =?utf-8?B?ejMxV0x6VU50TnVreFFlb2RGUFdNNi9taFFIMlpPbXdTcGorTXo5elFsMk1X?=
 =?utf-8?B?Nk45MFBralBOZ3VmZW9CL2pMSmJZOC9qUXpGMjZBMXBKZGQrTFJCN0ZkbE00?=
 =?utf-8?B?c2w3MC9EUlNYTmpCWTZnTlp1dXlrQzVJRHRBZFdSYXVHeml5REgySzJTc2kz?=
 =?utf-8?B?OXFEK2ZzMys3cnM5OFpmbnV5WlBuMVpiU2pjUndsbWF3bnNiRzkzSzMzRnZK?=
 =?utf-8?B?MVRWeHcxZnVzNXdEZVFMOG5wcWh4alRFM2V0SS85akI3NWZLczd0ZlhLdS8y?=
 =?utf-8?B?QUVlbzRFOGVlN3FmckpRNWdrUmtPdzlIamx4RVBHdU1JNk14MW54Yzh0RTBv?=
 =?utf-8?B?YTd2QUx0NjFvNlBpMENEcVRUMHZTdnQ0eThVMTRicTNGVU5PUWEySG1mWlZ6?=
 =?utf-8?B?ZHg5NVRuVWxzVkxGc01oNzBjRHYybE9BUkRzQXY4cWNJTnBWbHUyY2thVUxO?=
 =?utf-8?B?NjhwdFNMY054d2JNbng1UHN6dXBLc3A0d04zdE16YWZiclJ1TmEwK1hxOHY1?=
 =?utf-8?B?cGdPZzFud0JGc2FGbDFwWmRENEQ4TmU0My9SenphelB2bU9xRVdyU09wOEhn?=
 =?utf-8?B?aGkvYitFUDcveGNuVjJBVmRjRmpteVF3NGREUDBVdVd5M3VRWVYrVmZobVI1?=
 =?utf-8?B?OFVaSU02Q0xxb3NHSUY5aWtXeDIyOSs4ekpmYWlRcVhEQS9QdGJPWjdzeDdY?=
 =?utf-8?Q?6dGVOlAStj17ePsECO89qC4Uvs1Wj/REh4RLI?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A76FB2D3710F2D4A888F218EF49C5084@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ed2a62e-7405-432e-f627-08da4562fd93
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2022 13:14:28.9634 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kFtNcerdamIrcbkfJsVjYQUjUUVifxOhjfGgXIvW1b8cmF+yFcOgLYWaf08s9Zhj5tRtJN7Z6VUpKGFcmctI5MRFaaJVJ5hXQqv3D+m6UjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4127
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to
 check if headless sku
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

T24gRnJpLCAyMDIyLTA2LTAzIGF0IDE1OjQzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAwMyBKdW4gMjAyMiwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEV4cG9ydCBoZWFkbGVzcyBza3UgYml0IChiaXQgMTMpIGZyb20g
b3ByZWdpb24tPmhlYWRlci0+cGNvbiBhcyBhbg0KPiA+IGludGVyZmFjZSB0byBjaGVjayBpZiBv
dXIgZGV2aWNlIGlzIGhlYWRsZXNzIGNvbmZpZ3VyYXRpb24uDQo+ID4gDQo+ID4gQnNwZWM6IDUz
NDQxDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfb3ByZWdpb24uYyB8IDEyICsrKysrKysrKysrKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmggfCAgNyArKysrKysrDQo+ID4gIDIgZmlsZXMgY2hh
bmdlZCwgMTkgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYw0KPiA+IGluZGV4IGYzMWU4YzNmOGNlMC4u
ZWFiM2YyZTZiNzg2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfb3ByZWdpb24uYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfb3ByZWdpb24uYw0KPiA+IEBAIC01Myw2ICs1Myw4IEBADQo+ID4gICNkZWZpbmUg
TUJPWF9BU0xFX0VYVAkJQklUKDQpCS8qIE1haWxib3ggIzUgKi8NCj4gPiAgI2RlZmluZSBNQk9Y
X0JBQ0tMSUdIVAkJQklUKDUpCS8qIE1haWxib3ggIzINCj4gPiAodmFsaWQgZnJvbSB2My54KSAq
Lw0KPiA+ICANCj4gPiArI2RlZmluZSBQQ09OX0hFQURMRVNTX1NLVQlCSVQoMTMpDQo+IA0KPiBI
ZXJlIHdlIGdvIGFnYWluLg0KPiANCj4gV2hhdCBkb2VzIGhlYWRsZXNzIG1lYW4gaGVyZT8gVGhl
IHNwZWMgZG9lcyBub3Qgc2F5LiBEb2VzIGl0IGhhdmUNCj4gZGlzcGxheSBoYXJkd2FyZT8gQXBw
YXJlbnRseSB5ZXMsIHNpbmNlIG90aGVyd2lzZSB3ZSB3b3VsZG4ndCBiZQ0KPiBoZXJlLg0KDQpU
aGlzIGlzIGZvciBoeWJyaWQgc2V0dXAgd2l0aCBzZXZlcmFsIGRpc3BsYXkgaHcgYW5kIHRoZSBw
YW5lbCB3b250IGJlDQpjb25uZWN0ZWQgaW50byBkZXZpY2UgZHJpdmVuIGJ5IGk5MTUgZHJpdmVy
Lg0KDQo+IFdlIGhhdmUgSU5URUxfRElTUExBWV9FTkFCTEVEKCkgd2hpY2ggc2hvdWxkIGRvIHRo
ZSByaWdodCB0aGluZyB3aGVuDQo+IHlvdQ0KPiBkbyBoYXZlIGRpc3BsYXkgaGFyZHdhcmUgYW5k
IGhhdmUgZG9uZSBvdXRwdXQgc2V0dXAgZXRjLiBidXQgd2FudCB0bw0KPiBmb3JjZSB0aGVtIGRp
c2Nvbm5lY3RlZCwgaS5lLiB5b3UgdGFrZSB0aGUgaGFyZHdhcmUgb3ZlciBwcm9wZXJseSwNCj4g
YnV0DQo+IHB1dCBpdCB0byBzbGVlcCBmb3IgcG93ZXIgc2F2aW5ncy4NCj4gDQo+IE1heWJlIHdl
IHNob3VsZCBib2x0IHRoaXMgb3ByZWdpb24gY2hlY2sgaW4gdGhhdCBtYWNybz8NCj4gDQo+IE1h
eWJlIHdlIG5lZWQgdG8gdXNlIElOVEVMX0RJU1BMQVlfRU5BQkxFRCgpIGFsc28gdG8gcHJldmVu
dCBwb2xsaW5nLg0KDQpUaGFuayB5b3UgZm9yIHBvaW50aW5nIHRoaXMgb3V0LiBIQVNfRElTUExB
WSBJIGFscmVhZHkgbm90aWNlIGFuZCBpdCdzDQpub3Qgc3VpdGFibGUgZm9yIHdoYXQgd2Ugd2Fu
dCBoZXJlLiBJIHRoaW5rIGJvbHRpbmcgdGhpcyBjaGVjayBpbnRvDQpJTlRFTF9ESVNQTEFZX0VO
QUJMRUQgYXMgeW91IHN1Z2dlc3RlZCBpcyBlbm91Z2guIFRoYXQgd2lsbCBwcmV2ZW50DQp3YWtp
bmcgdXAgdGhlIGh3IGludG8gRDAgc3RhdGUgZm9yIHBvbGxpbmcuDQoNCj4gDQo+IEkgY2VydGFp
bmx5IHdvdWxkIG5vdCB3YW50IHRvIGFkZCBhbm90aGVyIG1vZGUgdGhhdCdzIHNlcGFyYXRlIGZy
b20NCj4gSEFTX0RJU1BMQVkoKSBhbmQgSU5URUxfRElTUExBWV9FTkFCTEVEKCkuDQoNCk5vIG5l
ZWQgZm9yIHRoaXMuIEkgdGhpbmsgd2UgY2FuIGdvIHdpdGggSU5URUxfRElTUExBWV9FTkFCTEVE
Lg0KPiANCj4gPiArDQo+ID4gIHN0cnVjdCBvcHJlZ2lvbl9oZWFkZXIgew0KPiA+ICAJdTggc2ln
bmF0dXJlWzE2XTsNCj4gPiAgCXUzMiBzaXplOw0KPiA+IEBAIC0xMTM1LDYgKzExMzcsMTYgQEAg
c3RydWN0IGVkaWQgKmludGVsX29wcmVnaW9uX2dldF9lZGlkKHN0cnVjdA0KPiA+IGludGVsX2Nv
bm5lY3RvciAqaW50ZWxfY29ubmVjdG9yKQ0KPiA+ICAJcmV0dXJuIG5ld19lZGlkOw0KPiA+ICB9
DQo+ID4gIA0KPiA+ICtib29sIGludGVsX29wcmVnaW9uX2hlYWRsZXNzX3NrdShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGludGVsX29wcmVnaW9u
ICpvcHJlZ2lvbiA9ICZpOTE1LT5vcHJlZ2lvbjsNCj4gPiArDQo+ID4gKwlpZiAoIW9wcmVnaW9u
LT5oZWFkZXIpDQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsNCj4gPiArCXJldHVybiBvcHJl
Z2lvbi0+aGVhZGVyLT5wY29uICYgUENPTl9IRUFETEVTU19TS1U7DQo+IA0KPiBXZSBzaG91bGQg
cHJvYmFibHkgc3RhcnQgY2hlY2tpbmcgZm9yIG9wcmVnaW9uIHZlcnNpb24gZm9yIHRoaXMgc3R1
ZmYNCj4gdG9vLg0KPiANCg0KWWVzLCBJIHdpbGwgZG8gdGhpcyBjaGFuZ2UuDQoNCj4gDQo+IEJS
LA0KPiBKYW5pLg0KPiANCj4gPiArfQ0KPiA+ICsNCj4gPiAgdm9pZCBpbnRlbF9vcHJlZ2lvbl9y
ZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPiAgew0KPiA+ICAJc3Ry
dWN0IGludGVsX29wcmVnaW9uICpvcHJlZ2lvbiA9ICZpOTE1LT5vcHJlZ2lvbjsNCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5oDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmgNCj4gPiBp
bmRleCA4MmNjMGJhMzRhZjcuLjVhZDk2ZTFkODI3OCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmgNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmgNCj4gPiBAQCAtNzYsNiArNzYs
OCBAQCBpbnQgaW50ZWxfb3ByZWdpb25fbm90aWZ5X2FkYXB0ZXIoc3RydWN0DQo+ID4gZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIGludCBpbnRlbF9vcHJlZ2lvbl9nZXRfcGFuZWxf
dHlwZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdik7DQo+ID4gIHN0cnVj
dCBlZGlkICppbnRlbF9vcHJlZ2lvbl9nZXRfZWRpZChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+
ID4gKmNvbm5lY3Rvcik7DQo+ID4gIA0KPiA+ICtib29sIGludGVsX29wcmVnaW9uX2hlYWRsZXNz
X3NrdShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+ID4gKw0KPiA+ICAjZWxzZSAv
KiBDT05GSUdfQUNQSSovDQo+ID4gIA0KPiA+ICBzdGF0aWMgaW5saW5lIGludCBpbnRlbF9vcHJl
Z2lvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ICpkZXZfcHJpdikNCj4gPiBA
QCAtMTI3LDYgKzEyOSwxMSBAQCBpbnRlbF9vcHJlZ2lvbl9nZXRfZWRpZChzdHJ1Y3QgaW50ZWxf
Y29ubmVjdG9yDQo+ID4gKmNvbm5lY3RvcikNCj4gPiAgCXJldHVybiBOVUxMOw0KPiA+ICB9DQo+
ID4gIA0KPiA+ICtib29sIGludGVsX29wcmVnaW9uX2hlYWRsZXNzX3NrdShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPiArew0KPiA+ICsJcmV0dXJuIGZhbHNlOw0KPiA+ICt9DQo+
ID4gKw0KPiA+ICAjZW5kaWYgLyogQ09ORklHX0FDUEkgKi8NCj4gPiAgDQo+ID4gICNlbmRpZg0K
DQo=
