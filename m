Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1B74644D6
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 03:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD6E6E40A;
	Wed,  1 Dec 2021 02:20:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F88B6E40A;
 Wed,  1 Dec 2021 02:20:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223246439"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="223246439"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 18:20:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="595734530"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Nov 2021 18:20:16 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 18:20:16 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 30 Nov 2021 18:20:16 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 30 Nov 2021 18:20:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fn30fTL9c2YYryzlErlX7/JG18/kSv1EjRLD7bxH/Z6hkji8r9A1mz4PXiAX7Zgh3C9jLtwz/spVdOsM4UFFegVsQuYyQmjVc/6qPe7Ya4cG5H5Xa9vfOubgx8Do14VRijccNMgo4ZiOt4hckd/5N19EELD8BO5LTk4tCrMWe+9AEEzqsq9a15TU5JUTpH1ZYvaZ7I+kKeTJngJaHs2C8HdABm22rte0CQjbgfY+NghTOz1A47Pm7FT7iV8oYd2VqVvsCqfkeCCWGrp9eU0SYCnqaBXZmipGLsW90Gqd1bEdwZTNObY7vZvgCOouaer43hhGeP/vG+iDoU+0zlDwHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wpnwtpMJmUpjq8KQxXdavwoPNG1PqF9PsDhocyop5Do=;
 b=Ei748pwVll821JE3KBh8G5K+0qaQcYTuoytO7iggYdfInVtJbv3VjB+418p1sx5NpRNSOHj8LsIn1u/TznKlFTqjh9q2vfa3cTwH4neQgICDo16QL43F0h4vx+88uwFFDjFPbz4BNMNdCDMlXKZfKQpPpbVJWg+x7nJUJS73H7emtVNHrRoy7LNapcfSs0l0g+rFynOmdsk6PzV+qoajFpZ9om1dQTuMEBUzQshj+kvVpfznp5s9vVMrICi4djzOzdsphpAJEQcdLYFhXuFJl8WPqz7tRnsbQO49cycOraZRhTCobRFdR9k4nk4/d4DaqcCgyiF2nM7AO9F41F+PDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wpnwtpMJmUpjq8KQxXdavwoPNG1PqF9PsDhocyop5Do=;
 b=C5xi9O95pEYAVetMkIKPeNH8DqUc9LpNdJ582k9XRvQAJujATCahUOicg4nP6uEqcqIouzhNauNe4giyBiXozXEGg9Z/qhSKqsskGSCj0ikhdOpdZMlWyOfZTrYRgQa0Pq6GrD+Hxsq/Hb0XTLwCI1hOXOud4QGyH1i24nqwe+w=
Received: from MWHPR11MB1983.namprd11.prod.outlook.com (2603:10b6:300:112::15)
 by MW5PR11MB5881.namprd11.prod.outlook.com (2603:10b6:303:19d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Wed, 1 Dec
 2021 02:20:15 +0000
Received: from MWHPR11MB1983.namprd11.prod.outlook.com
 ([fe80::10ba:cee8:115e:39e4]) by MWHPR11MB1983.namprd11.prod.outlook.com
 ([fe80::10ba:cee8:115e:39e4%9]) with mapi id 15.20.4734.024; Wed, 1 Dec 2021
 02:20:15 +0000
From: "Rogozhkin, Dmitry V" <dmitry.v.rogozhkin@intel.com>
To: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [PATCH i-g-t 6/6] intel_gpu_top: Add a sanity check discovered
 busy metric is per engine
Thread-Index: AQHX3UV12evGXubrsEucGMcS5Fqo6awc+B+A
Date: Wed, 1 Dec 2021 02:20:14 +0000
Message-ID: <3894f6c21d51bdd4a188f077e146d36a3d6ddb71.camel@intel.com>
References: <20211119125945.55056-1-tvrtko.ursulin@linux.intel.com>
 <20211119125945.55056-6-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20211119125945.55056-6-tvrtko.ursulin@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-5.el7) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35c44447-d646-4c41-9b94-08d9b4711c6a
x-ms-traffictypediagnostic: MW5PR11MB5881:
x-microsoft-antispam-prvs: <MW5PR11MB5881E76C0D873EB118409710CD689@MW5PR11MB5881.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QJl+YqavlfPmv2GPXRcmdJq73v9daq8kkCzHcbyTB9x5kFEoSg4t7oM/97YiBgx8YUZKthcSUTGUQV997nb0FrPxQ2GldQUD2V+ht8YX0jVvjVg+BDWTWuxihjLwi0tYjQHDOG0FUJChV6RDYyMueO2SvNymxr39vS/P6oT27HQFgrtCwx5Ku7MPGakvLAsg+ObK3ygNr4H0r6ppp2e61cSfEY0c8FePSOeoT+nzkNcIhFqIEt8GjYERt7vF8I69Rj025HlwA3hUKiXlmKWQkDLDobDbU1GoFVLhegiO7oq3Q+7S6W/+MRxU0LqOAV9Ph1iiZ9SzZYnmjFqKQWrbBmR5zM7109UmB7qRqkq6smA3RMYptef2C62TcrZB7BTgcsz0g917eDjhQFbu0Ei2WqdZUJEfKqkPYS180wJo3Cw6gmDXHYwmiCOOaudr6cDuGov+LRIpfnw1IXRr6Yk8SnTmo2+1cGWO67/4RNtjvZzqDUsG6EOLnlqLp6YF2X2r+srNB1/F/Kv1FeZsgqPmRgpke88vI87dq/Y0nanHJyD22qlmpCMIjpInFt2SXKwZ1a9vW1aAo124dD3/FKnXC85KPNXQ8Xq+RsOjbsUzixAIIa06f0MVaQp429fS3dVpiMwUBZgrrHken05KaebU/rJntM5bFmKzSgFE1G+SxbNvo7iz9wHh+BqR05/QyB3Z9m2Sr0yw3EQiS/zNc8C3wi7wk995OPc/Y2iN1TJ+GAw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1983.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2616005)(82960400001)(8936002)(36756003)(110136005)(38070700005)(76116006)(71200400001)(6512007)(6506007)(4001150100001)(5660300002)(4326008)(66476007)(38100700002)(6486002)(54906003)(66556008)(66446008)(64756008)(122000001)(2906002)(86362001)(26005)(8676002)(316002)(186003)(66946007)(508600001)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TEdKZzZRRWdzVm1qekNvSmNuOHJoVkR6ODZDYW1HNTZMMFRURldiVkRZQUIr?=
 =?utf-8?B?eFp0OE96RkRxYnhmeG9IbEdUNFZHMElvZEtMT3d6M200a1JHalB2aklUMTRH?=
 =?utf-8?B?b1l2YVNXbjEvVk5ZQ3RHMHpjVXZQRU1Kak1NV1o4RVRoQjVPdDhSZm54ZU5N?=
 =?utf-8?B?MTJ0cEUzU1I3NVRaQVV6ai9mK3RyNWIwdDNOckFwOGdSQUNVY3ZiWE1hTWY0?=
 =?utf-8?B?OVR1T0xyQW81S25NMS9FbzZtak1oSHBRYmNVb0dWNk9FK3dBdTVzbFkxYStT?=
 =?utf-8?B?bEdrRXg5SGdnSHVTNXIzK2EvYVF0dC9DeDZIN3pkNHRJZnVDclJMQ21ybWVD?=
 =?utf-8?B?eElRek4xTVRiVzNQSTBmaHRzNmZBcm9pejdBem9RMy90QUw0L3FIcWEvUWlm?=
 =?utf-8?B?TUhUVmZvTHNSQkQ3SGQySjhoVERqS0VUNll5Vk0vYjh4Vnlwclo5bFl6Unc5?=
 =?utf-8?B?aEpkZk5oMzRuU3VmSE5jZnExbHNaTHJIdDZwRHIxZGE3ek5WdytVR0pqNEEx?=
 =?utf-8?B?R25MZmt2cGRxYWdMZ3N5QXdYbXMzMkErZ0psS2VuMm5jZ3FRc3EvN1NVWnpk?=
 =?utf-8?B?Zm1wRjJvMXI3MTNLUlovZ1NCczB1aDVVSnUxYXgvUFB6OS9HdmJwb0VLY3d6?=
 =?utf-8?B?R1pSMGJOemxLUlZrVEFnSzQxYjNQM1RkNyszd1Vob1FEejZVOFZkQkJaOVlh?=
 =?utf-8?B?L0xJNFFtcW92cDN2ckZxZmMxTDczUExkcFdJdWtiT1NTL2k5bGRhYnhXOHlv?=
 =?utf-8?B?VTVrYnBuUGNaMzZyM2JhbjRteU9nWFcwT2J0UXJZbnZBdzZRdGRtUVY3eTVL?=
 =?utf-8?B?Q012amYwZ2ZhVHE3cXdwVkxVY201V3hQYnFFUVcxTnF4bmNIZVc2V21OUTZS?=
 =?utf-8?B?VWxnMjBzLzBaSjM4WXFMSjBCZkxiQW1kOTNSMTRRUTdwN0VCNGJ5MVhWQW1C?=
 =?utf-8?B?aHI2c0hPd0kvRXY1Wk1RMGl4Tm9tdS9YZzZObEJ6ODRWM3NFaVZ0ZHIya3du?=
 =?utf-8?B?cEl5czRkTjIxTHN0cjVvNHZvTW44bU84MElOMXdhaWNJMzZnOE1MMDc4Q25T?=
 =?utf-8?B?aE5Vb1pnWnBLZ0ZITUlWZ3cxZjJoY2dNMkR2QmlZTmtQRkMyaWI1RFhFV2RQ?=
 =?utf-8?B?NW5lK0pGcWRHK3lFL3Nyd3VLQjBJbFk0ai9FSWpqeVExbzlueFE3a21rWnBi?=
 =?utf-8?B?ckExeHpoZXh3OW1URXhRWDNwR1lvZ1YrWFZZVEtOd0E4alpJbnRTNWlJMHpD?=
 =?utf-8?B?MVI3VXVFbVRMMFM5YWV4MG0ycG9leEdOTlE4WHFod2l2TktRWHdUYmw0c1FM?=
 =?utf-8?B?UjIzakJVRVRGM2lMNHcvcEhqR0RuTkMzM1dCcGpNcGFoczBobkZtMGhjY1Zh?=
 =?utf-8?B?OExaQzZNb3lUWE84SnhDR3lGUDNMRTZOekFYY2NFbWE4K1JpeCtDNW9zcGxO?=
 =?utf-8?B?VGJQNG1WbXVJZ1ZtVUVMNXRwZnMwQmxxalNFVzNyL3VvcVJyZ1NtY2pTK0x1?=
 =?utf-8?B?UVUwTU1neEoyd1J6VkFjYWwrUWY0VDBqOTBCQ3dqNldLd2tLWDNRaTA4N2F1?=
 =?utf-8?B?aHJJMGRYbFFXTTdRMGRRdEEyMXByME9HT0pndHlwSWMvc3FsTlAyeWtYUU1G?=
 =?utf-8?B?Y292WWNDZG9JOVNmZFZXOTJXSVgwVHU0V0lUbFZLcWd3WndDMWh0SGRRUjR1?=
 =?utf-8?B?ZVo3Y2tCTUcwNSt3aEtsWkE0ZWtGVHdXTk5zc2lraWJqTHZ6M3d3ekYwK1dl?=
 =?utf-8?B?ZldLTWc2REVZTjJvU09sSEJTNitDTnJ1U1VkRHhSSzNaYWZhUHBNYlArcHdP?=
 =?utf-8?B?UkRGQW9BSi9ac0FlY3FtNWdVWkJLcm5sMmc4eStKNEc2UkNUR1FhTFVxV0ZV?=
 =?utf-8?B?b0tYT1FRRVRNVDdlOGlhSVc2TWU4WHVPU0Q1WDBVVWlTVEUwWkExV1JCanRO?=
 =?utf-8?B?U25pUFIyUkhNUUg0ZU5CYS9sQlJvR3AyT0J6LytjWjA1Q0pXY1UyOVFvYWMx?=
 =?utf-8?B?MFF2NXk0ZGt1NjNZbG5kMGUzVFlwSmcrS2VYcld6TVg5TGhqRGZMWUhJT281?=
 =?utf-8?B?b1JVVkMvcGV1bGt3OVYvczFlZ1Q4b1g4NXYvckVIVFdpWjhvNVA1NkVMd1JJ?=
 =?utf-8?B?TFJEWm54Ync5c0l4bEgxWGhjcjFHZlBHVjFDeWhTWjdFcmVzcnBzQm9RL1l6?=
 =?utf-8?B?WVhKK051bmhDN2pCQ1BPRHIzT1hoeW1wbVBuS2FRbVFXdUM0ZTJDamR0SVJP?=
 =?utf-8?Q?IiGCbc0grgcZezGgdWjdqJ1TgiUgi6f7yYdHn4Mclw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D6A783E88596CE45B947583CFF6DA486@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1983.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35c44447-d646-4c41-9b94-08d9b4711c6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2021 02:20:14.8769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I4y5+I8rLRH17lrx4EZpRZXPRG8xt1pS7wNgPREdaD0UZ1lnxyI6tTYdJ3nAMGP/O6Vyw/GgBy8xEZI/lNlItseIKYtwWized84fvWhQBLQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5881
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 6/6] intel_gpu_top: Add a sanity check
 discovered busy metric is per engine
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTExLTE5IGF0IDEyOjU5ICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4NCj4gDQo+
IEFkZGluZyBhIGNyb3NzLWNoZWNrIHdpdGggQUJJIGNvbmZpZyBuYW1lIHNwYWNlIGFuZCBub3Qg
anVzdCByZWx5aW5nDQo+IG9uDQo+IHN5c2ZzIG5hbWVzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4NCj4gQ2M6IERtaXRyeSBS
b2dvemhraW4gPGRtaXRyeS52LnJvZ296aGtpbkBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgdG9vbHMv
aW50ZWxfZ3B1X3RvcC5jIHwgNiArKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS90b29scy9pbnRlbF9ncHVfdG9wLmMgYi90b29scy9p
bnRlbF9ncHVfdG9wLmMNCj4gaW5kZXggNDFjNTlhNzJjMDlkLi44MWM3MjRkMWZlMWMgMTAwNjQ0
DQo+IC0tLSBhL3Rvb2xzL2ludGVsX2dwdV90b3AuYw0KPiArKysgYi90b29scy9pbnRlbF9ncHVf
dG9wLmMNCj4gQEAgLTM3Niw2ICszNzYsMTIgQEAgc3RhdGljIHN0cnVjdCBlbmdpbmVzICpkaXNj
b3Zlcl9lbmdpbmVzKGNoYXINCj4gKmRldmljZSkNCj4gIAkJCWJyZWFrOw0KPiAgCQl9DQo+ICAN
Cj4gKwkJLyogRG91YmxlIGNoZWNrIGNvbmZpZyBpcyBhbiBlbmdpbmUgY29uZmlnLiAqLw0KPiAr
CQlpZiAoZW5naW5lLT5idXN5LmNvbmZpZyA+PSBfX0k5MTVfUE1VX09USEVSKDApKSB7DQo+ICsJ
CQlmcmVlKCh2b2lkICopZW5naW5lLT5uYW1lKTsNCj4gKwkJCWNvbnRpbnVlOw0KPiArCQl9DQo+
ICsNCj4gIAkJZW5naW5lLT5jbGFzcyA9IChlbmdpbmUtPmJ1c3kuY29uZmlnICYNCj4gIAkJCQkg
KF9fSTkxNV9QTVVfT1RIRVIoMCkgLSAxKSkgPj4NCj4gIAkJCQlJOTE1X1BNVV9DTEFTU19TSElG
VDsNCg0KVGhpcyB3b3JrcyBmb3IgbWUuDQpBY2tlZC1ieTogRG1pdHJ5IFJvZ296aGtpbiA8ZG1p
dHJ5LnYucm9nb3poa2luQGludGVsLmNvbT4NCg0KSG93ZXZlciwgbG9va2luZyB0byB0aGUgZXhp
c3RpbmcgY29kZSBkb3duIGJlbG93IHRoZSBwbGFjZSB3aGVyZSB5b3UndmUNCmFkZGVkIGEgZml4
LCBpdCBzZWVtcyB0byBtZSB0aGF0ICdmcmVlKCh2b2lkICopZW5naW5lLT5uYW1lKScgbWlnaHQg
YmUNCm1pc3Npbmcgb24gYSBudW1iZXIgb2Ygb3RoZXIgZXJyb3IgcGF0aHMgYW5kIG9uIG5vbi1l
cnJvciBleGl0IHBhdGggYXMNCndlbGwuDQoNCg==
