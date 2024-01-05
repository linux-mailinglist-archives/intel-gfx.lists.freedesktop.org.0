Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0938254DA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 15:07:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC2810E619;
	Fri,  5 Jan 2024 14:07:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0931D10E619
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 14:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704463658; x=1735999658;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+/Wgw97o/sVlf7IOcCgid333Wo/cZZ97T/PxpMQhkpM=;
 b=XUhkIPAXCfQxmpoTBkx+ZDJ8dUqvhUNffQYIqUAxRRpiqO1N28EzHLSH
 jljD1Zog/E1VcRUsNh+VZPvLbh13P77aGVF3B6oAtbsBV6zMBDns9EIr/
 KqDg9DRBa7eXLsDmuP45PImip+Q9VtOGDa+A+OfdU7X6FB/vIvJ1HYkgZ
 oIduFGngqH52hFMLzaTYehzPti0Z8i5dCEa0LoU+3zb2/qIl650cW6Yfh
 B+kHhBWfoPQs+ARG3Zd4xGaFnouJov/fhm8799XHmh88zqcKVFmwb9sRh
 Y1nKQwWwbpo+lPbGES02f1Cv1nfCx+AW2tkSYFXs5yBh8ErUVyz32zoMe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10944"; a="4878899"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; 
   d="scan'208";a="4878899"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 06:07:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="22503639"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2024 06:07:34 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 06:07:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Jan 2024 06:07:33 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Jan 2024 06:07:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WHQ5Jg7UmAlDVafWZTZ4Y+ryHKFtTf7EagT4vfUsYJ4N4RBVWfPGANaLX8y7TFZnJeVKBd+9n3NPTJ2piynTO5R8ZkipAaJwbNQ9lZLtxDGEeXytTpaLq4JvglXPyKQu7L5/K4CRZhgIh1DggP3WQpd2CEDPGL2zNKWfCSnDS4gLSo3nIHM8XacNhkcnyLIRjAxWjtygSOhH78+yYyRs/AW9TRl4+IiDTz9t87V9f12DTdrdTYs5F5euNqaMWjA0fm22OkUh9quTzhJiYbqo+/bNCnL/5pSYFnq7qCiucBGwiX0OsOSeBGjZFWihXZv/wz9tTjuk3VKJSZPzxkrL9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+/Wgw97o/sVlf7IOcCgid333Wo/cZZ97T/PxpMQhkpM=;
 b=F2ZGxtXaD6L2UobTGS7i3j2hPeVg9+DXQo0/jtdG4K/GWejAEYGNtWeNZNKISoGYfPmwjn3aGBM8DhjPSKJH61rUctpLPDs3R19G0EHLNgrFYeE7gK7DaVuYAbn5qaB87cfwMA2OHltR/2Cra4c2+XWArFzbn+nUaYBqOAWuTIE50NgVT88GEyOiaC8lsdD9wEXx3buV5KC9BYCOpft+dA0OcJJ1RR89AwuyYmL2Rw3V946jHlMBveo/Uc4fjYvbCyaCrmlBCcniWu9BfAVtBquyxHduqZgDYYMxL/wQYM36qNhlQuEXOMLfDvjJmokwSDxO40wTs9USwsKvjHqZWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SJ2PR11MB8346.namprd11.prod.outlook.com (2603:10b6:a03:536::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.13; Fri, 5 Jan
 2024 14:07:31 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7159.015; Fri, 5 Jan 2024
 14:07:31 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/7] drm/i915/psr: Extend SU area to cover cursor fully if
 needed
Thread-Topic: [PATCH 2/7] drm/i915/psr: Extend SU area to cover cursor fully
 if needed
Thread-Index: AQHaMeBYnzYrH2pfIUSnBJK4EDXYIbDLXR/w
Date: Fri, 5 Jan 2024 14:07:31 +0000
Message-ID: <MW4PR11MB7054FA275FA66881494F5110EF662@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
 <20231218175004.52875-3-jouni.hogander@intel.com>
In-Reply-To: <20231218175004.52875-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SJ2PR11MB8346:EE_
x-ms-office365-filtering-correlation-id: 883c6d23-a46f-4453-b99e-08dc0df7a859
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gNLSY/jF3LqFFOXr+9j98O6GdnUut9XiMuNMVAbbJ4fp40SjkKvJlEdxF7uz9HxgQrU+6FaDBLHhB/JLJtuSvb6u0oqObfgi6JT51NU5ty9VUp+k1/EWZgU3eLiz2AbW6JFRCNIUWnDQ786zhz/pPYky8F2yuW3qtwvCOyZdPLi7IBvTMr1KxCvXN04Tj9ABqt6JzdGmIcRlJgDWwwVr0zIUCGyt+ZMXb8mYpoKmtLlrPk+0OBY2w54NaFBnjQbevTGyUemfrnb0qQlRm1klYEeSks952ahqGj0WtwEnDG7TVnCfxxfobcy80MZVjFdCyjvG7YznIsKIstEjZADOGZKzOtU/U7fEyuecRxnVH+5CUF5dczAx+djq239hYWIi4hi/mUqaE7oXNJ36jacHGu3qcyiCpyh7oBBtHRlUSpgnzdOGCQCU7dEcYfi6kHdA6V9Vcf3rn5dPmdIrfnyjhYPmEgz/fL0CQWbrP6qpzsAvJs5i42YWMr8q62BwteT8dYdayRlklgFMlAMGF3EMbh4pwkxhldcSqJkB8VYbel5jhiTScHfxwX1WjANN3r/7vTCiW25a1Tmz3GGVVjCjqWaIlAWMaw8z8sq+DTNvKDN42PhXfOd2+qdJUux+AH7v
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(396003)(346002)(366004)(39860400002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(2906002)(38100700002)(82960400001)(86362001)(38070700009)(33656002)(66574015)(55016003)(8676002)(8936002)(71200400001)(66556008)(66476007)(83380400001)(64756008)(7696005)(66446008)(110136005)(316002)(26005)(76116006)(41300700001)(478600001)(5660300002)(52536014)(122000001)(66946007)(9686003)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHZXbjJiZHkvTXhQNjgzNG8vS1hSdWpCck5oekdCZUhndnRQODFrZ2RwRFJt?=
 =?utf-8?B?dUVLdFBON1JqbVdHa2hLazZNb2V6SGJoZjlJbVdlZFpsY2lYTksxUUtoazJM?=
 =?utf-8?B?OCt6elI5aWo5NGZ5MGZSeUUzRmNweVpsTzBQdHdyTGN0UXpoYld4eXR6UnBQ?=
 =?utf-8?B?VVgrdHJPQVZhT3ozRGo1bVltVmJkOXRFc3pUcEk1Z2lSUm5Nc0RYd003Nk1u?=
 =?utf-8?B?bzNWSzZsNFU5NzZoVEFPY1cyNmZlZTB1bUlFWFhhVU1SVTZxZlVNMC9MVGpk?=
 =?utf-8?B?Mzd3THplWTlKQkFkTGNnM25wYUV1bjJOb1NQeG1nWFl3OGFkalJ5Y2NzeS9o?=
 =?utf-8?B?eUFaN3E2MmlSd0Y3NUdiYjhMYWloalFKcEFDcys0TktHNkc2NWo2bFhaRUJa?=
 =?utf-8?B?SzI1Q1J5RUFCUWY4ZHRTK09uc0g5a0RkaTI5WHU1bTI2M09RVE1SMDZzSjVy?=
 =?utf-8?B?NXRCMHFSOEI4UldCYTlpZTBlU2VWMXByRWdNV1AxSGVhTm1GYWdZNXBYd0NN?=
 =?utf-8?B?dU9NWGM1M0U1Qzg4LytYc2ZRaVE1cUpxeFJaelp4SUlWaFd6WGg5RVlTQitX?=
 =?utf-8?B?NjJSUU1DOEFLYng0OHY0QktoVS9CcnBSN3RWNXRjeEJydG5YL0crQlZzWXo5?=
 =?utf-8?B?NXp6SlM0Tm5pU3VQMmxCbW5hYncwTjJORXNCei9kZGRXd0JJOTZNQjBTcjVI?=
 =?utf-8?B?dGpsK21tR1E3UXdyclFQTG83TWdVdDB3VnhIc256dDNCM2F6ZXhqSUxERzcz?=
 =?utf-8?B?M0ZGaGdod1Rvc0ZJOENpc1F0bEREdTZ1cTZWTUlwVlRhMFBPbHFqeDNkZnZk?=
 =?utf-8?B?Rnd1UUxoVjJ4ZXY4c2Rxcnp5VXVUQ1BvL1Y0cHpoQ0lENnFQRGRuaERtU1Vu?=
 =?utf-8?B?VXhudkVLZHk2N0owc1JRd1YxRWVjRkF6MU84VzdjcC8wOXJmSmlKVm55UjFm?=
 =?utf-8?B?VmJHeUY0MGJmdUZLQWN1Q1lvTklCWmJBQ0p1OGF5VGtJamlxOWcrL1o2emVv?=
 =?utf-8?B?bGtZQ0xPR2puRE1HdjVsSnU0K1pBZ0I5Y29ROFIwa3BvalFUc01hdU9sUlRP?=
 =?utf-8?B?VkJHT2NxaVNnWGsxTnlmSGFNRWtWZFFtVXdSVjFGTnQyVEJKZm1lZkR5QmUr?=
 =?utf-8?B?NXRBMGlTQmpTZWx1UmE3S2t5YmNIMCsrSFFuTm8rZ05yN2R6U0ZNQjhhOTZl?=
 =?utf-8?B?RmJhRnJWZ1VhMGN6amprL2EwSWw3Q2o0MHpFSGdBTEltVVgybkd2YnptNDZu?=
 =?utf-8?B?M3B4bW15QXp0ZmRLN2d2TTVZVnlpZ3Y1a3RqdHFQbzB1RHVSM0JWQnFwVno5?=
 =?utf-8?B?Q3J2TmVKaWpZcGJmRDkxbWhVcXR6SFFUM3BNVmNMaVpva2srVXMxWWxueUFo?=
 =?utf-8?B?Q3FYU2Y0RTdHQktWdGlVMnlEQWJ0T041MXZ1a1kzdnZvVU1TOFc2R3Bvaklo?=
 =?utf-8?B?QlQ4Z0gwendTL0VNNVpjZEEwa0llN2Zxakt5Zy81ait1SmFqT0dPYnplb293?=
 =?utf-8?B?Rm5JQlNJRjBuSXVQbTkyMk1vdmxHci9jL0JxcUczYnU2aEVQRWo3QnZxTU9z?=
 =?utf-8?B?S1ZUa2tOQmpnZGhBWjRzaUxvMGd1SUZkZjVNUGRVVEV6RUhTL3d0MHZ1NzQ4?=
 =?utf-8?B?a2tualVtdUlheEMwZG1KWkgyYkJHVDM1dS9qLzlZL3pDcjFNT3pxeVp2VjM0?=
 =?utf-8?B?Y3p1dlVZaTAwWWI0K3p2eXN6YjlLUVlHK1B0VHkxSFZsWGJrZ0V1NndIMFRk?=
 =?utf-8?B?K2FQSEM2QUEwT0FKeUR2dHREZFVpTy8vTFdIc0xJdm5BTnZJR0pFb0pTaHAz?=
 =?utf-8?B?aWt0YzVQWFM2ell5QlZib1RSTnBxd2dWeW5zdE51azZlWW4wWHBQT254VDNx?=
 =?utf-8?B?VjBZZGttUGRzeDErM0JSUWlrRG0vUjB0YUE0aFhtWVJLTFVzaGh2LzhYbHg1?=
 =?utf-8?B?bm1JMTFYMnNaV0pTUnFyUU9DdzBTV2hHQk8zUE5QUVBybkpSck5JSHJoOWFZ?=
 =?utf-8?B?YXdqM3BDa2sxOVNSdFlyTytjYkZSbmM1ajdWTW1aOXJkQkRndXhlbFU0QXNV?=
 =?utf-8?B?a3AyWlJraWI3eTQ1YTFOaGxyQ2podFVYb1YwbnppOWJRMHNPTGp5eTlkVkEw?=
 =?utf-8?Q?bR+UcyJ/sDpRwyj+43mwRR3//?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 883c6d23-a46f-4453-b99e-08dc0df7a859
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2024 14:07:31.2154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BYn4qQPMCFG5KmOFRCWpLlJOUzbRUmb0li9YKVPpuH5zo6O/kwZU3Aj3JqYHfYWV/TpeI9nwVA8mduoQliljmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8346
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBNb25kYXksIERlY2VtYmVyIDE4LCAyMDIzIDc6NTAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDIvN10gZHJt
L2k5MTUvcHNyOiBFeHRlbmQgU1UgYXJlYSB0byBjb3ZlciBjdXJzb3IgZnVsbHkgaWYgbmVlZGVk
DQo+IA0KPiBJbiBjYXNlIGVhcmx5IHRyYW5zcG9ydCBpcyBlbmFibGVkIFNVIGFyZWEgbmVlZHMg
dG8gYmUgZXh0ZW5kZWQgdG8gY292ZXIgY3Vyc29yIGFyZWEgZnVsbHkgd2hlbiBjdXJzb3IgaXMg
aW4gU1UgYXJlYS4NCj4gDQo+IEJzcGVjOiA2ODkyNw0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2Eg
S2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDM4ICsrKysrKysrKysrKysrKysrKysr
KysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBi
NmUyZTcwZTEyOTAuLjhhMzUwYjllMzNjZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yMDExLDYgKzIwMTEsMjkgQEAgc3RhdGljIHZvaWQg
aW50ZWxfcHNyMl9zZWxfZmV0Y2hfcGlwZV9hbGlnbm1lbnQoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmMNCj4gIAkJcGlwZV9jbGlwLT55MiA9ICgocGlwZV9jbGlwLT55MiAvIHlfYWxp
Z25tZW50KSArIDEpICogeV9hbGlnbm1lbnQ7ICB9DQo+IA0KPiArLyoNCj4gKyAqIFdoZW4gZWFy
bHkgdHJhbnNwb3J0IGlzIGluIHVzZSB3ZSBuZWVkIHRvIGV4dGVuZCBTVSBhcmVhIHRvIGNvdmVy
DQo+ICsgKiBjdXJzb3IgZnVsbHkgd2hlbiBjdXJzb3IgaXMgaW4gU1UgYXJlYS4NCj4gKyAqLw0K
PiArc3RhdGljIHZvaWQNCj4gK2ludGVsX3BzcjJfc2VsX2ZldGNoX2V0X2FsaWdubWVudChzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJCQkgIHN0cnVjdCBpbnRlbF9w
bGFuZV9zdGF0ZSAqY3Vyc29yX3N0YXRlLA0KPiArCQkJCSAgc3RydWN0IGRybV9yZWN0ICpwaXBl
X2NsaXApDQo+ICt7DQo+ICsJc3RydWN0IGRybV9yZWN0IGludGVyOw0KPiArDQo+ICsJaWYgKCFj
cnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQgfHwNCj4gKwkgICAgIWN1cnNvcl9z
dGF0ZS0+dWFwaS52aXNpYmxlKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlpbnRlciA9ICpwaXBl
X2NsaXA7DQo+ICsJaWYgKCFkcm1fcmVjdF9pbnRlcnNlY3QoJmludGVyLCAmY3Vyc29yX3N0YXRl
LT51YXBpLmRzdCkpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWNsaXBfYXJlYV91cGRhdGUocGlw
ZV9jbGlwLCAmY3Vyc29yX3N0YXRlLT51YXBpLmRzdCwNCj4gKwkJCSAmY3J0Y19zdGF0ZS0+cGlw
ZV9zcmMpOw0KPiArfQ0KPiArDQo+ICAvKg0KPiAgICogVE9ETzogTm90IGNsZWFyIGhvdyB0byBo
YW5kbGUgcGxhbmVzIHdpdGggbmVnYXRpdmUgcG9zaXRpb24sDQo+ICAgKiBhbHNvIHBsYW5lcyBh
cmUgbm90IHVwZGF0ZWQgaWYgdGhleSBoYXZlIGEgbmVnYXRpdmUgWCBAQCAtMjA1Miw3ICsyMDc1
LDggQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7DQo+ICAJc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRj
KTsNCj4gIAlzdHJ1Y3QgZHJtX3JlY3QgcGlwZV9jbGlwID0geyAueDEgPSAwLCAueTEgPSAtMSwg
LngyID0gSU5UX01BWCwgLnkyID0gLTEgfTsNCj4gLQlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUg
Km5ld19wbGFuZV9zdGF0ZSwgKm9sZF9wbGFuZV9zdGF0ZTsNCj4gKwlzdHJ1Y3QgaW50ZWxfcGxh
bmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZSwgKm9sZF9wbGFuZV9zdGF0ZSwNCj4gKwkJKmN1cnNv
cl9wbGFuZV9zdGF0ZSA9IE5VTEw7DQo+ICAJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsNCj4g
IAlib29sIGZ1bGxfdXBkYXRlID0gZmFsc2U7DQo+ICAJaW50IGksIHJldDsNCj4gQEAgLTIxMzIs
NiArMjE1NiwxMyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQlkYW1hZ2VkX2FyZWEueDIgKz0gbmV3X3BsYW5l
X3N0YXRlLT51YXBpLmRzdC54MSAtIHNyYy54MTsNCj4gDQo+ICAJCWNsaXBfYXJlYV91cGRhdGUo
JnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSwgJmNydGNfc3RhdGUtPnBpcGVfc3JjKTsNCj4gKw0K
PiArCQkvKg0KPiArCQkgKiBDdXJzb3IgcGxhbmUgbmV3IHN0YXRlIGlzIHN0b3JlZCB0byBhZGp1
c3Qgc3UgYXJlYSB0byBjb3Zlcg0KPiArCQkgKiBjdXJzb3IgYXJlIGZ1bGx5Lg0KPiArCQkgKi8N
Cj4gKwkJaWYgKHBsYW5lLT5pZCA9PSBQTEFORV9DVVJTT1IpDQo+ICsJCQljdXJzb3JfcGxhbmVf
c3RhdGUgPSBuZXdfcGxhbmVfc3RhdGU7DQo+ICAJfQ0KPiANCj4gIAkvKg0KPiBAQCAtMjE2MCw2
ICsyMTkxLDExIEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJaWYgKHJldCkNCj4gIAkJcmV0dXJuIHJldDsNCj4g
DQo+ICsJLyogQWRqdXN0IHN1IGFyZWEgdG8gY292ZXIgY3Vyc29yIGZ1bGx5IGFzIG5lY2Vzc2Fy
eSAqLw0KPiArCWlmIChjdXJzb3JfcGxhbmVfc3RhdGUpDQo+ICsJCWludGVsX3BzcjJfc2VsX2Zl
dGNoX2V0X2FsaWdubWVudChjcnRjX3N0YXRlLCBjdXJzb3JfcGxhbmVfc3RhdGUsDQo+ICsJCQkJ
CQkgICZwaXBlX2NsaXApOw0KPiArDQo+ICAJaW50ZWxfcHNyMl9zZWxfZmV0Y2hfcGlwZV9hbGln
bm1lbnQoY3J0Y19zdGF0ZSwgJnBpcGVfY2xpcCk7DQo+IA0KPiAgCS8qDQo+IC0tDQo+IDIuMzQu
MQ0KDQo=
