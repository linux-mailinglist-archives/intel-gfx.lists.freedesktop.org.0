Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FEA651A74
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 06:59:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F3610E055;
	Tue, 20 Dec 2022 05:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DD0510E051
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 05:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671515920; x=1703051920;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LqEdv+ROqDVg8g0qj2TCcmLz/FAjWPnL6zceCBCS9kI=;
 b=bwnYDw6D8y3t6jeRznHAIdFpwKtwDX0aptSejmfae5UHb3MNlx6zgJHB
 9t8h5mhNy6bWzQ/12yxuRN9H9Gh3fkE/1e0+uUf67n5pW1XxwzsFtkUW6
 BmDB0fVumW5V4oHbA4UEy0fLKk0CoyehwxiINjq/VEXeUxv4xo98aROTX
 Tx437e4w9LFNAbO4+4ICrdLtIBK+xPAi1yNmZJwb5SeM9ZvZMKLgjebRd
 J49e+LIc21XyrJdZsP15lffsT+c4txukLJGiiIjLWnV9Ddo/LlzFZB4W7
 H6mQ6RHuHYoOlH2Wu2kLhCQFRG0OuvxoZMlr0LAERzB4E1eGqPQdJEXYe A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="381761236"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="381761236"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 21:58:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="681505834"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="681505834"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 19 Dec 2022 21:58:38 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 21:58:38 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 21:58:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 19 Dec 2022 21:58:37 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 19 Dec 2022 21:58:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lxsKpzNZb5AcTCx42zbACL4tPUdF/q3vd+YGkFJIlQIatZsr2dITD8RJlMF7cwbo/82FHmPZ9rMuOQi8x1NjTG68tX42pNkVptyqsoEFxCeWCAkTd3denmZe+0zTbvflwFJ+mXJurM2TzASBWV836ZeAz6fEtEuwAHoyx/skKNocG8HvP+vykKaxV842e2vb5QkaEhr2GB4EirtCPIr6ZRgNf8hMMmqvX/9UckRopM4Os2HNu8tyL2ZBD5ORhq8WdibyCTdzJ5UhVHZvOq7YcHz/NwX0+ooY7FdGj9Zv+PVYSRl7OUZyTTnavTF6X/6UqVmWZ8aQZeD88v6efGKzJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LqEdv+ROqDVg8g0qj2TCcmLz/FAjWPnL6zceCBCS9kI=;
 b=O2NKTVMgkJZmxFmKXfdMuQPKSlqgRf3V5jSfqCo2E9cWqEu6cAoysJfZtrifL1OlQ7cWLcRerk3/UCij9rFl+0/JPVR4aRi+Mz1TvMag1iC4T9igS3gQ/MvpHSio+aIdbxcuRKYYzee2cjCUJQAu0MPbNsIiH9SCpXDVgtJ4ck4Sa8jjUZezzKOAboYYKRteByotcewSU48hzLtR/lMw2n8LpQUx2U4FiImcvctWMRik2wWca51qpsiyU0XqgRUokabJXtNTsVqS479U5jSGt1IZQ9c+fFRs0JPezVp/ETP4NzakGPDLR2kHJT6m+DVV9hfJ+C6zSk8j0Wt3sfthpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by PH0PR11MB5111.namprd11.prod.outlook.com (2603:10b6:510:3c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Tue, 20 Dec
 2022 05:58:35 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::5467:4b10:48ca:ca77%7]) with mapi id 15.20.5924.016; Tue, 20 Dec 2022
 05:58:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 1/7] drm/i915/gsc: Create GSC request submission
 mechanism
Thread-Index: AQHZD5u7wdp+rPIddkqErtq3rQwy+65vVYuAgAb4pTA=
Date: Tue, 20 Dec 2022 05:58:34 +0000
Message-ID: <MWHPR11MB17417BA768F433EC1F256F4EE3EA9@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
 <20221214090758.3040356-2-suraj.kandpal@intel.com>
 <29c51b99784f84c81e8155c6c7d35029c728dde8.camel@intel.com>
In-Reply-To: <29c51b99784f84c81e8155c6c7d35029c728dde8.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|PH0PR11MB5111:EE_
x-ms-office365-filtering-correlation-id: ee87154c-26d4-46af-649f-08dae24f3b07
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wVdRv3ok7/K/qtU+2DsKFRNi7BJPStn1Za9N5AAY/D5TRt33jyRrNrKHYkcuQDtFs9O9GRjr6r22X9ltVUU+mWN3BfDFud3X+qpoFBcK7ltnrojAL1h7b0VLybgili/T85h2EjCrIisoXXs6eZEg+a/NeVgTzPA+Zx+uFUa+kwA5BA2YJ8jPn8cLsYKsX4eqQDMASCKmPDBow3IMIb1Jy9LMreZljfohGq3hF9GLtvKSlV34tIWoFY+DEDVXofwvbTAqg2cgQwF3qxf9HZXvB5jJq9r8knWSpAYtUJJz1UpxlAiDCV/88iwhX8AGYt/O1sK3Iw3FHDB6/FyJh6XHghVa8FXZQtBrEVf6uZxD/1IUihIS/mseISla6rYGthOGJowrjE0yns4T8SCIR710Cau3lkLD8mo2V6l+hIq0sZEYK7VELIlfdIgobFbdwzD/Gi8dzlfpts35JPJQ85AWwGq0Cgn7XG4utnx5jUihAYJbYS7KLmejD+tQy3GNRaRa5222730ytOpr/62bF8gR+JQ7B+f361W5zpJzmvjs180VCIak0HmhxwSFsHyLIwmLLNi+IoZGL/Qoua8FzQ8OJKDE+TfhL/3HT6aYBFUkHHe9j8mhXe3PCh+J7BgGlfjfyji1UEOYKsLeDN2Qvcva5uyNrN8LHIZCJp87CD0cgINKye35T2/Ie1Teikr4iFPbwB/Yg6OwkjdgwMQ9y7E9zw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(376002)(396003)(366004)(39860400002)(451199015)(7696005)(8936002)(6506007)(122000001)(52536014)(107886003)(186003)(71200400001)(478600001)(26005)(38070700005)(86362001)(9686003)(110136005)(316002)(66946007)(82960400001)(66556008)(38100700002)(66476007)(54906003)(8676002)(64756008)(76116006)(66446008)(4326008)(41300700001)(33656002)(4001150100001)(2906002)(55016003)(83380400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUo1TTBPaVdxYlhFa2w4TGVRRGR4L2Jvc1lZTVp5OHkrOTFka25FVUF3Mktx?=
 =?utf-8?B?TkRzUStpOXp1SGM3VnMwV3BudG96RzNsVkphK0VVaGhkS2xiYUZrQnBhejJX?=
 =?utf-8?B?L0NicjVmbUZTTE5QazNNcmVTU3lqS1RYSjJDam5od0JnL0tCZEYxS2ZhcEZq?=
 =?utf-8?B?YjA1c0s5bjJlQlNsdVRDZUdZVGZQMlBRdUVmc0RnWlEzMkVkM2ZMSjNRVG1F?=
 =?utf-8?B?SlNDZ2NOY3h4UFdmNCtwWjRvSGpDOHhUQzBZV01CaGliUUFMY0ROZHhHYi85?=
 =?utf-8?B?QW80S3lLcHl2YjVvb0FBUDZGcEp1TjNpaHBkVGZydlV1UklTRzVwR2UwbFVH?=
 =?utf-8?B?Q0JoNlJrSUdBOVZpYWQ2NzBrZUZ4cjVLNFNnL1BUOUZUUTlETGpZa0V0VHZr?=
 =?utf-8?B?MUxxbERQZzRLUjkzWGNFTDJ3MHV6Nno1RmZpOHk3N0hhdmxmbUZoc0xaeGNZ?=
 =?utf-8?B?TG1vUmxaUm1sclpzcW9hTVA0YjV1K3RVRnlOK0VVQ2RYQTJiREZHWHZKRURp?=
 =?utf-8?B?VE1xbDhwMS9FOGhWbllDQnB6bDEyd29LYnNGNjRsbng1QjVnbFNSWGt4bXc0?=
 =?utf-8?B?ZVJoL09Oa2ZHaEN6UHJ4YWdTeDV3d3k1NFNrZy9CcXdtTlhJdnM5SjZSdklI?=
 =?utf-8?B?K1ByWnFES3pXNGNpS2NCaWx4Y0dsTmRicFcvY3dpTzVUT0Y1UFhzMU01eG9z?=
 =?utf-8?B?a2VYYkE2K0trUFVDSFpON3pBcFE3bVlSOENKZTZ1eE1lY01NbHc3QVNhMXVp?=
 =?utf-8?B?S2NMaFduMTlOY3c1d1I1OGdYaWtQbFUrdWxlY0xRUmxncS9GOUhHNUYrOEhi?=
 =?utf-8?B?TXZldDZrMlFSS0tSNU1objVBWFp5Nk9GMjFScHhZMHlRUlRYU0h1V0NVdVFW?=
 =?utf-8?B?Z0JPM2hDK2w3TTlha1BoUzBISVBkUWRab2pYRXQ2R0FMNVF0Z3VGM1orQ01K?=
 =?utf-8?B?aGlJQWxlQ081OHU0ZVRSeXJpZVZaQkp6UFI2N282QTdwMDlNRXFZTmYrZTNV?=
 =?utf-8?B?QjBuckVZWFZDdllValFyb0JpQnArdzRZNGJRdXFxcUNCOWJaZGs1TkgvbTZq?=
 =?utf-8?B?MWh2OHExN0MwdldTVnc4TDRPc2RWV2wvejkwNnR1bGlMRVVuL3RxVmRMWW81?=
 =?utf-8?B?eGRJR0hIVDY2ZlFDY2lDeDBXSFVma3pVN0tvdFlYWHE4M1ZDMlFjMENkbGtZ?=
 =?utf-8?B?REMwRENpSElkWm9FL1JFZWpPamxZaE5NN1VKbVplNEZPeVBTczM1UmFoN2lj?=
 =?utf-8?B?QkhvclB1bDlKRUZNd1ZGdTF1OWZPRDVsOWI5TGlENzZHNU5vRTg0K1Y1c3RI?=
 =?utf-8?B?cFFzdDExWmVOYlJTL2JYeFd5QWh0bEV0OVRwWXB2UmZvd1g2Z3AwSGp3NWh4?=
 =?utf-8?B?bHM1Y2JaU3RYOXJzOTNtN1psTnhWMFluRTlvOUt4QVR3QkVnNXBjWUROeGVp?=
 =?utf-8?B?TFBnUmgrSHg2QjVMQjZyZjhsRUhUcTl6Tnl5aDY3bEVIczAyU2RFQnRhR2lQ?=
 =?utf-8?B?bFQxSVRuWnpRSWUxcGR3Zk93N1MremdxLzFuVm84LzRHT1V3dm56UlFaQjdL?=
 =?utf-8?B?VnUyL1VaUzVkR0p2TE5Wcks3Rkp2OFdIemhXUEwzN2IvVW5IUVl5bjU0dW82?=
 =?utf-8?B?UnU4dXV3QldFenJ3UTBURXQzVjNPL21yTnRvdXA2a1pYb3FhR3BhOWcrbitq?=
 =?utf-8?B?M3R0WlVUbFJ6YldjZmxQQ0tWb2dsQXltYU5XN3FnZ3VycVByZnVVOHRUWW45?=
 =?utf-8?B?WGtHcnhCajMvdnBIS3FmV1psQUZVUFJhUGg4NXlITThlWHVuVEhwTGtyU2JG?=
 =?utf-8?B?WXpHT3pTVDhId25XTjdpUW1MNk1TSmpab1ZaTTZqelpHL2E4c1hZWTdoT3hm?=
 =?utf-8?B?MnBVNW93RFkvU0RTU2xvMVhZL1JPNE10dmp3NG1RSDZaWFN5RDI0UnVxdDU1?=
 =?utf-8?B?VUE5cStRd3czN0orTmhWUCtHRVpwTCtmUkY3WnZQWnZCZXRuNUV4ZGJNeVlJ?=
 =?utf-8?B?cVFhSjJoNFErTWRkODJiNlpTNjFaWjR1Vi84OXRmUzFzTjBuVmZUTTZoTTd3?=
 =?utf-8?B?TDlUTkhMYWtsaDgxZ1hQbGVqdzUzUXZuZlJybWtHVGtyZ3dRSWVoaGI2bWth?=
 =?utf-8?Q?8hkGRnhf2JFaA8/Vx1/abmQC7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee87154c-26d4-46af-649f-08dae24f3b07
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2022 05:58:34.6355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n9pPVd7d+gHe7SAIzA+xU1JIWs7nIY020ZW6JP45Ef5wpky5owan0SJFwQ9ee2L88OWCiS7+h/Oy4x52+HTW2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5111
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/7] drm/i915/gsc: Create GSC request
 submission mechanism
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

IA0KPiBPbiBXZWQsIDIwMjItMTItMTQgYXQgMTQ6MzcgKzA1MzAsIEthbmRwYWwsIFN1cmFqIHdy
b3RlOg0KPiA+IEhEQ1AgYW5kIFBYUCB3aWxsIHJlcXVpcmUgYSBjb21tb24gZnVuY3Rpb24gdG8g
YWxsb3cgaXQgdG8gc3VibWl0DQo+ID4gY29tbWFuZHMgdG8gdGhlIGdzYyBjcy4gQWxzbyBhZGRp
bmcgdGhlIGdzYyBtdGwgaGVhZGVyIHRoYXQgbmVlZHMgdG8NCj4gPiBiZSBhZGRlZCBvbiB0byB0
aGUgZXhpc3RpbmcgcGF5bG9hZHMgb2YgSERDUCBhbmQgUFhQLg0KPiA+DQo+ID4gQ2M6IERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+ID4g
Q2M6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWw8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+
ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5o
IHwgIDIgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfZncuYyAg
ICB8IDYyICsrKysrKysrKysrKysrKysrKystDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2dzY19mdy5oICAgIHwgIDMgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9nc2NfZndpZi5oICB8IDQxICsrKysrKysrKysrKysNCj4gPiAgNCBmaWxlcyBj
aGFuZ2VkLCAxMDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkgIGNyZWF0ZSBtb2RlDQo+
ID4gMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2dzY19md2lmLmgNCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29t
bWFuZHMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRz
LmgNCj4gPiBpbmRleCAyYWYxYWUzODMxZGYuLjQ1NDE3OTg4NDgwMSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaA0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oDQo+ID4gQEAgLTQz
OSw2ICs0MzksOCBAQA0KPiA+ICAjZGVmaW5lIEdTQ19GV19MT0FEIEdTQ19JTlNUUigxLCAwLCAy
KQ0KPiA+ICAjZGVmaW5lICAgSEVDSTFfRldfTElNSVRfVkFMSUQgKDEgPDwgMzEpDQo+ID4NCj4g
PiArI2RlZmluZSBHU0NfSEVDSV9DTURfUEtUIEdTQ19JTlNUUigwLCAwLCA2KQ0KPiA+ICsNCj4g
PiAgLyoNCj4gPiAgICogVXNlZCB0byBjb252ZXJ0IGFueSBhZGRyZXNzIHRvIGNhbm9uaWNhbCBm
b3JtLg0KPiA+ICAgKiBTdGFydGluZyBmcm9tIGdlbjgsIHNvbWUgY29tbWFuZHMgKGUuZy4gU1RB
VEVfQkFTRV9BRERSRVNTLCBkaWZmDQo+ID4gLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9nc2NfZncuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3NjX2Z3LmMNCj4gPiBpbmRleCBlNzNkNDQ0MGM1ZTguLmYwMGU4OGZkYjVkMiAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfZncuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2dzY19mdy5jDQo+ID4gQEAg
LTMwLDYgKzMwLDM1IEBAIGJvb2wgaW50ZWxfZ3NjX3VjX2Z3X2luaXRfZG9uZShzdHJ1Y3QgaW50
ZWxfZ3NjX3VjDQo+ICpnc2MpDQo+ID4gIAlyZXR1cm4gZndfc3RhdHVzICYgR1NDX0ZXX0lOSVRf
Q09NUExFVEVfQklUOyAgfQ0KPiA+DQo+IEFsYW46W3NuaXBdDQo+IA0KPiANCj4gPiBAQCAtNDks
NyArNzgsMTIgQEAgc3RhdGljIGludCBlbWl0X2dzY19md19sb2FkKHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxLA0KPiBzdHJ1Y3QgaW50ZWxfZ3NjX3VjICpnc2MpDQo+ID4gIAlyZXR1cm4gMDsNCj4g
PiAgfQ0KPiA+DQo+ID4gLXN0YXRpYyBpbnQgZ3NjX2Z3X2xvYWQoc3RydWN0IGludGVsX2dzY191
YyAqZ3NjKQ0KPiA+ICsvKg0KPiA+ICsgKiBPdXIgc3VibWlzc2lvbnMgdG8gR1NDIGFyZSBnb2lu
ZyB0byBiZSBlaXRoZXIgYSBGVyBsb2FkIG9yIGFuIGhlY2kNCj4gPiArcGt0LCBidXQNCj4gPiAr
ICogYWxsIHRoZSByZXF1ZXN0IGVtaXNzaW9uIGxvZ2ljIGlzIHRoZSBzYW1lIHNvIHdlIGNhbiB1
c2UgYSBjb21tb24NCj4gPiArZnVuYyBhbmQNCj4gPiArICoganVzdCBhZGQgdGhlIGNvcnJlY3Qg
Y21kDQo+ID4gKyAqLw0KPiA+ICtzdGF0aWMgaW50IHN1Ym1pdF90b19nc2NfZncoc3RydWN0IGlu
dGVsX2dzY191YyAqZ3NjLCBzdHJ1Y3QNCj4gPiArZ3NjX2hlY2lfcGt0ICpwa3QpDQo+ID4gIHsN
Cj4gPiAgCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9IGdzYy0+Y2U7DQo+ID4gIAlzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycTsNCj4gPiBAQCAtNjgsNyArMTAyLDExIEBAIHN0YXRpYyBpbnQgZ3Nj
X2Z3X2xvYWQoc3RydWN0IGludGVsX2dzY191YyAqZ3NjKQ0KPiA+ICAJCQlnb3RvIG91dF9ycTsN
Cj4gPiAgCX0NCj4gPg0KPiA+IC0JZXJyID0gZW1pdF9nc2NfZndfbG9hZChycSwgZ3NjKTsNCj4g
PiArCWlmIChwa3QpDQo+ID4gKwkJZXJyID0gZW1pdF9nc2NfaGVjaV9wa3QocnEsIHBrdCk7DQo+
ID4gKwllbHNlDQo+ID4gKwkJZXJyID0gZW1pdF9nc2NfZndfbG9hZChycSwgZ3NjKTsNCj4gPiAr
DQo+IEFsYW46IFRvIGJlIGhvbmVzdCwgY29kZSBmdW5jdGlvbiBuYW1lcyArIHJlc3BvbnNpYmls
aXRpZXMgbGFjayBwcm9wZXIgaGllcmFyY2h5IC0NCj4gZG9lbnMndCBsb29rIHF1aXRlIHJpZ2h0
IGZyb20gbXkgcGVyc3BlY3RpdmUgZm9yIHJlYWRhYmlsaXR5IC8gc2NhbGFiaWxpdHkuDQo+IElu
IG15IG9waW5pb24sIHdlIGNyZWF0ZSBhIHNlcGFyYXRlIGZ1bmN0aW9ucyBmb3IgbG9hZF9mdyB2
cyBoZWNpX3BhY2tldC4gQnV0DQo+IGhhdmUgYSBjb21tb24gdXRpbGl0eSBmdW5jdGlvbiBmb3Ig
dGhlIGFjdHVhbCBzZW5kaW5nIHRvIEhXIChlbmdpbmUtDQo+ID5lbWl0X2ZsdXNoKSBhbmQgd2Fp
dGluZyB3aXRoIGEgdGltZW91dCAoaTkxNV9yZXF1ZXN0X3dhaXQpLiBXZSBrbm93DQo+IGhlY2lf
cGFja2V0IHdpbGwgaW4gZnV0dXJlIGJlIHVzZWQgYnkgUFhQIGFuZCBwb3RlbnRpYWxseSBhY3Jv
c3MgYm90aA0KPiBjb25jdXJyZW50bHkuDQo+IA0KDQpXb3VsZG7igJl0IHRoYXQgYmUgYSBsb3Qg
b2YgcmVwZWF0ZWQgY29kZSBqdXN0IHRvIGhhdmUgYSBsaXR0bGUgbW9yZSByZWFkYWJpbGl0eS4N
Ck1heWJlIGp1c3QgYWRkIHNvbWUgY29tbWVudHMgYXMgdG8gd2hhdCB0aGUgZnVuY3Rpb25zIGRv
IHRoYXQgc2hvdWxkIGF2b2lkDQpUaGUgY29uZnVzaW9uLg0KDQo+IA0KPiBUaGVuIHdlIG1pcnJv
ciB0aGUgc2FtZSB0aGluZyBmb3IgZ2VuZXJhbCBoZWNpIGxvYWQgKHRodXMgYWxzbyBhbGxvd2lu
Zw0KPiBkaWZmZXJlbnRpYXRlZCBkZWJ1ZyBtZXNzYWdlcyk6DQo+IA0KPiAgICAgICAgIGludGVs
X2dzY19lbmdpbmVfc2VuZF9sb2FkZncNCj4gCQl8ICAgICAoYWxsb2NhdGUgdGhlIHJlcXVlc3Qs
IHVzZSB0aGUgZ3NjLWNlKS4NCj4gICAgICAgICAgICAgICAgIHwtLS0+IGVtaXRfZ3NjX2hlY2lf
cGt0IChmaWxsIHVwIHRoZSBzZW5kLWhlY2ktcGt0IGNtZCkNCj4gICAgICAgICAgICAgICAgIHwt
LS0+IHN1Ym1pdF90b19nc2NfZncocmVxLCAuLi4gdGltZW91dCkNCj4gDQo+ICAgICAgICAgaW50
ZWxfZ3NjX2VuZ2luZV9zZW5kX2hlY2lwa3QNCj4gCQl8ICAgICAoYWxsb2NhdGUgdGhlIHJlcXVl
c3QsIHVzZSB0aGUgZ3NjLWNlKS4NCj4gCQl8ICAgICAod2UgY291bGQgZXZlbiBwb3RlbnRpYWxs
eSBjcmVhdGUgdGhlIE1UTCBDUyBIRUFERVIgaGVyZQ0KPiBpdHNlbGYNCj4gICAgICAgICAgICAg
ICAgIHwgICAgICBzaW5jZSB0aGUgR1NDLUNTIG1lbW9yeSBoZWFkZXIgaXNudCBhbiBlbnRpdHkg
b2YgdGhlIGNhbGxlcg0KPiAgICAgICAgICAgICAgICAgfCAgICAgIHN1YnN5c3RlbSBzdWNoIGFz
IGhkY3Agb3IgcHhwLCBidXQgcmF0aGVyIGlzIHRoZSBlbnRpdHkgb2YgdGhlDQo+ICAgICAgICAg
ICAgICAgICB8ICAgICAgKEdTQykgY29tbWFuZC1zdHJlYW1lciBwYXJhbSwgc28gYnJpbmcgaXQg
aW50byBpbnRlbF9nc2NfZncgZmlsZSkNCj4gICAgICAgICAgICAgICAgIHwtLS0+IGVtaXRfZ3Nj
X2Z3X2xvYWQgKGZpbGwgdXAgdGhlIGZ3IGxvYWQgY21kKQ0KPiAgICAgICAgICAgICAgICAgfC0t
LT4gc3VibWl0X3RvX2dzY19mdyhyZXEsIC4uLiB0aW1lb3V0KQ0KPiANCj4gICAgICAgICAgICog
aW50ZWxfZ3NjX2VuZ2luZV9zZW5kX2hlY2lwa3QgY29tbW9uIHRvID4xIGNhbGxlci1zdWJzeXN0
ZW1zDQo+IA0KDQpJZGsgaWYgZmlsbGluZyB0aGUgaGVhZGVyIGluIHRoaXMgZnVuY3Rpb24gaXRz
ZWxmIHdvdWxkIGJlIHRoZSBiZXN0LCB3ZSBjYW4gaGF2ZSBhIGNvbW1vbiBmdW5jdGlvbiBkZWZp
bmVkIGhlcmUNCklmIHJlcXVpcmVkIHRvIGZpbGwgdGhlIGhlYWRlciBidXQgSSB3b3VsZCBsaWtl
IHRvIGdpdmUgYm90aCBoZGNwIHB4cCBhIGxpdHRsZSBmcmVlZG9tIGFzIHRvIHdoZW4gdGhleSBm
aWxsDQp0aGlzIHVwLg0KDQo+IA0KPiBBZGRpdGlvbmFsbHksIG9uZSBsYXN0IHRoaW5nIG1pZ2h0
IGJlIHRvIG1vdmUgb25seSBzZXRzIG9mIGZ1bmN0aW9ucyBpbnRvIHNlcGFyYXRlDQo+IGZpbGVz
IHdpdGggY29tbW9uIGhlbHBlcnM6DQo+IGludGVsX2dzY19mdy5jIDogYWxsIHRoZSBmaXJtd2Fy
ZSBsb2FkaW5nIHJlbGF0ZWQgZnVuY3Rpb25zIGludGVsX2dzY19oZWNpLmMgOiBhbGwgdGhlDQo+
IGhlY2kgY29tbWFuZCBwYWNrZXQgc2VuZGluZyByZWxhdGVkIGZ1bmN0aW9ucyAoaGVyZSBpcyB3
aGVyZSB3ZSBjYW4gYWRkIHRoZQ0KPiBHU0MtQ1MgbWVtb3J5IGhlYWRlciBwb3B1bGF0aW9uIGFu
ZCBpbiBmdXR1cmUsIHRoZSBob3N0LXNlc3Npb24taWQgYWxsb2NhdGlvbg0KPiBmb3IgUFhQKS4N
Cj4gaW50ZWxfZ3NjX2NzX2hlbHBlciA6IGZvciB0aGUgc3VibWl0X3RvX2dzY19mdyBhbmQgb3Ro
ZXIgY29tbW9uIGZ1bmN0aW9ucyB0bw0KPiBib3RoIGZ3LWxvYWRpbmcgYW5kIGhlY2ktcGFja2V0
IHNlbmRpbmcuDQo+IA0KPiANCj4gQWxhbjpbc25pcF0NCj4gDQo+IA0KPiA+ICsJdTggZ3NjX2Fk
ZHJlc3M7DQo+ID4gKyNkZWZpbmUgSEVDSV9NRUFERFJFU1NfUFhQIDE3DQo+ID4gKyNkZWZpbmUg
SEVDSV9NRUFERFJFU1NfSERDUCAxOA0KPiA+ICsNCj4gPiArCXU4IHJlc2VydmVkMTsNCj4gPiAr
DQo+ID4gKwl1MTYgaGVhZGVyX3ZlcnNpb247DQo+ID4gKyNkZWZpbmUgTVRMX0dTQ19IRUFERVJf
VkVSU0lPTiAxDQo+ID4gKw0KPiA+ICsJdTY0IGhvc3Rfc2Vzc2lvbl9oYW5kbGU7DQo+ID4gKwl1
NjQgZ3NjX21lc3NhZ2VfaGFuZGxlOw0KPiA+ICsNCj4gPiArCXUzMiBtZXNzYWdlX3NpemU7IC8q
IGxvd2VyIDIwIGJpdHMgb25seSwgdXBwZXIgMTIgYXJlIHJlc2VydmVkICovDQo+ID4gKw0KPiA+
ICsJLyoNCj4gPiArCSAqIEZsYWdzIG1hc2s6DQo+ID4gKwkgKiBCaXQgMDogUGVuZGluZw0KPiA+
ICsJICogQml0IDE6IFNlc3Npb24gQ2xlYW51cDsNCj4gPiArCSAqIEJpdHMgMi0xNTogRmxhZ3MN
Cj4gPiArCSAqIEJpdHMgMTYtMzE6IEV4dGVuc2lvbiBTaXplDQo+ID4gKwkgKi8NCj4gPiArCXUz
MiBmbGFnczsNCj4gPiArDQo+ID4gKwl1MzIgc3RhdHVzOw0KPiA+ICt9IF9fcGFja2VkOw0KPiA+
ICsNCj4gPiArI2VuZGlmDQo+ID4gLS0NCj4gPiAyLjI1LjENCj4gPg0KDQo=
