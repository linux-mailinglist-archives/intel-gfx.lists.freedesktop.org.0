Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13345629175
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 06:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0CF010E363;
	Tue, 15 Nov 2022 05:26:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3909510E363
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 05:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668489997; x=1700025997;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=AhWz1ePbPw2sjveOOTowje8akLp/rsVnz/J90JR02cE=;
 b=njEd3TXEbPVu6V74GZJUrX5T0wtWNiVLQdh0GPfN4qwRRZalZUBwMmE2
 aYrjN0xIwYhoErgfFmFRfW9lbBRl9Xeqvh9Y0WyuaCefsea2Mm8GRHlb/
 7MgECirtPJSkJyCEJUgaUp27bCgeKUAS7RidowUimDMiPbx41l3z4Rvcx
 oVH4BCmV4hxNv6UtoqBfs9AJU8IVYJSVxGFeXZ3CIJO5rIxZ9oxPw+N7a
 QY/prExd+04N+iiiypZzc6WNScPHLrJJ7CNkFJyF3XdvweWHkZITK8GNp
 zwWBRFnNmvT8bL2b8mgRqFFP/6ZooalNZfSdBBa/OVWpX2t9Jg/ZGx27N A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="310875236"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="310875236"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 21:26:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="763794071"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="763794071"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 14 Nov 2022 21:26:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 21:26:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 21:26:35 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 21:26:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C9gU1/iU8odeTZih8FhXlY5fdduqjGIAAlOuBTQ8m3o80dbEuTwVzIHHxFKg96qiCbhot6AGqvaUd7K+lBIqlzjyh4wcoe7mQoBZAH06sGTcfd920YVmivE6BIzPh2+Q08/+AZywUnPb3n/GJwb9JpV0Rub7C5koA1jtlKGpO58P2Cu8RaQcXtyWgMJT+Hf3pciNh3aYFSM+MX+hRi9Cn51r0felxdJKUUamql7Ul4YPokwwYZl9sFjLpZYgTFHI2iDuVu7T3XgdzPg8jiXEaNUn1Vz4kYvp9SrZiVYo75T8ot7k7b0mFAqrIrBOKXWR1/h3+6aHkRae/bZvjMnO3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AhWz1ePbPw2sjveOOTowje8akLp/rsVnz/J90JR02cE=;
 b=oUatvYY+NNvsrZ+XKYhlMeSAexi/uBHTuMbKUtkvgocTiPnbo/wFLGk5hQBxCLkslAwmL7+kN4YG281ebreZwtaS4+Zcm6XjwpJfXNzZZ6G/p7lMmKSisI1LnaVg4v86PQaJiLLiFX1t1i+K3OEKK798GJ/ElbTDHu9/8qMxpjFQ8u1n0LItbmexKlz2fUs3kzMH4IfsUArygpuO+bWctK2MC37fQhpq/iVk8Y+bvZr7n/3n0xB2IAZ+c2JB4mECwG19SCy5fZvroHy+weCYdurzHHnqXZUWdmZTPoS9Bj6ZR0TNMGnAqrleLym32//zqy3y8pWgOXqw+uAuE0QsmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 IA1PR11MB6322.namprd11.prod.outlook.com (2603:10b6:208:38a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 05:26:26 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%9]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 05:26:26 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 3/6] drm/i915/pxp: Make
 intel_pxp_is_active implicitly sort PXP-owning-GT
Thread-Index: AQHY5XPjipaQgJqeEk6A7YvwWJb2Ga4/h4gAgAAT3QA=
Date: Tue, 15 Nov 2022 05:26:26 +0000
Message-ID: <37e9b522dd247271e152ad10dde3e31dbf5ac492.camel@intel.com>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
 <20221021173946.366210-4-alan.previn.teres.alexis@intel.com>
 <52dcfbbc-763f-fec2-8c35-9fdb5df1e8e7@intel.com>
In-Reply-To: <52dcfbbc-763f-fec2-8c35-9fdb5df1e8e7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|IA1PR11MB6322:EE_
x-ms-office365-filtering-correlation-id: 651ef559-ee97-4660-48ca-08dac6c9f105
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yr7FuwwLvmpgAwP94ckbQfwuPQbM7JCs+jKmLdPqAxDWCGlAwsF6dbWZVTww0ClmBwQnvzdF5nVCIJDSvadE3yY6faVXQIaJTy4WKrncDFyg+fuwd3xcys6vlz6HBGOanQeiYVNIpJSZ5qjjgLtaLp28HEY06tSt7qH2MlKfJlcJ5IoF3etnNiFZ2y/lkyOezBDsQBh05Ur9QNktGXwkKd8rBYG8dNMrABny6N8npuexVCChu5glgIehTdmPtFl4gKcWrgLAxbr7qy1Ha+ekMAOoAUV+S5tFxO3eXD8bbhfv2e/TxfL51KJB1CHJpC2Gwa8K32+dBfWX6DjMlIKyFfh3/cEnLHMcpxM6pHniQ1QAGnUTrMNwSYaiusLEgUrcpTXdT6P0wwfc0Bk06au0SrOwRK5ZOwv4Ut4SKTuYHyudXfAzWkLhwq3Ze8j7rNYo9hfVXrKXjsaVTvYO7zJrn5ZpL60PVP/bjhfJiHz8HW/EIeO1lCpirNfaXaVZSNJngyG9IpORVaRh0vt9AT+D30t+rfOiZVkmIElU1Tes8+xRLNHjHGzHehvIEGzo2CzaWlzd6JggmXOdImexLRSuCScqbOFGE3lsA6AlgFP1Qk5o/yEdQEpKuHFVUG0vLsKBnpTc1Ub7q62e+NqmSTKx/Ar0biFKQ7WH5868HLydWXMI+m9rSoUfsGfikMG5UEMvWkpzgjoNeF5ix3H3piPgK4i70eYner8PSLnpXeC1G0MkSKxbrzd4uL9ap/CI18LBmX5eTAeIpcXZ0CcJos01HA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(376002)(346002)(396003)(366004)(451199015)(41300700001)(6512007)(478600001)(6506007)(86362001)(26005)(2906002)(186003)(316002)(83380400001)(5660300002)(38100700002)(8936002)(38070700005)(4001150100001)(71200400001)(64756008)(122000001)(66556008)(8676002)(66946007)(91956017)(66446008)(110136005)(82960400001)(66476007)(6486002)(2616005)(76116006)(53546011)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YlFmRGYxUThLSGdYeG9sd29WOVNwNjdMN0FVTVIrb3Z6T0pZRGx0blJKMzRo?=
 =?utf-8?B?bGNFUWZ2aStYa09oNnlEQTBCUnFCejBPMG1EanVJMUI5dGZlbElyeWkxS0VV?=
 =?utf-8?B?dEJWNGdTc2hOUTllK1A0d1Rad3lSM3NHN2JPcVZ2ei8wYUFBVzBTMm1oRWto?=
 =?utf-8?B?ZDRkalhBa0hmcUpKRnhpdE1xR1JRVmJtdTNVQWlia2djMW5RL0E4VXUwK3N3?=
 =?utf-8?B?Y1A5eFVvVE51alJBYjdIVFI1a3dwODBZamxBOVFiMmQ5azRwa0ZEKzdZOXlM?=
 =?utf-8?B?NEsybXZ2SGxxR3lrUTA3ZWFoM29ERU91eEVRQ1hlMTFhVG1rT2dlQXQxL1h3?=
 =?utf-8?B?YkhPeTNGYmt0cE1hQWMrc01Yc1lFb29DQXI2QW9mRHJGUUFma3lSSnlVeHpP?=
 =?utf-8?B?OXh4VEtiTXFWWWlNQ0NEcExwRHhFZkJ6aXdESjBDVitNQUp6OTM3RFRHMk9X?=
 =?utf-8?B?OHY5V0JOUDdQUVFsUEo1dkVjemJNanhKTXNyUExiNWp6L3RGQWY3ZFVQM3Vj?=
 =?utf-8?B?WHhNb3pGYmJNYnJkakYrYUdGeUV1dW1kU1BCeE9peUpSOUhvejVOUm1iV01H?=
 =?utf-8?B?RC96SXRHVC9pQnRnUnAxbTBTT0FtaUZFa0tXYlZrNEx5M081OEgvNUlSQmtH?=
 =?utf-8?B?QXppRldhVndvbHI3YURSUWRmeFJMdDBoTVRyaysyVnU0VE84SUVvTUJST3J6?=
 =?utf-8?B?MlFoZEdaZ0dRV3paem5XS2lMSWNiVGpkRDZYSE1tK1hoZFNqUW9ESm9LMmFT?=
 =?utf-8?B?UWwzTTRKZExBOHp3OVF5V2RCeWtZNDcwejVzOXNXcVZ6WVZycGU3TE1pTXh2?=
 =?utf-8?B?Y2FBSkpQeXBRT1lEQzd3cHYwTzdJM1NLRlVKbE8veEFETlhtUURBV0FFMitk?=
 =?utf-8?B?SndEenVYYkZ6bHBvRXNMK0QzUEpjOUlxRk1NTGJJSVhwcmdQZWRWQXVUNzlD?=
 =?utf-8?B?UDlZS0xoSVVUbkd3OXArTDg0azBJVEZlczZzVkx6enh1OHhWTk9LdlBUcS83?=
 =?utf-8?B?SUkrejRod201QU9jMkkreTVSVW00NENPUkFUR3dZU1hidkY0RGZwVkJxOG5j?=
 =?utf-8?B?Rk9VRm9iZkpjcWNsSi83aG9HVG5kQTc1Y2N5b0hKZHRyelIvWUliUXBsVTJ6?=
 =?utf-8?B?RDJNNmV3Vk84cDVCaFZOZWJsb1RIYkVGdzVHaW9BRlRJbzNCSnVBQjhCenZL?=
 =?utf-8?B?RVNzQnFFelRYT1F2L2Jsa25SWGFnT3pqcFlXcUNMdTJaWDgySFYwN20xZWlD?=
 =?utf-8?B?VDZVK1lxMnNpclg1RXp1UE5nMzZKWUxHeDdlREtUY3NrNVBYTVdDYmpjYzJJ?=
 =?utf-8?B?SFExZHZNb0lJUWc1NnZYQW1OUkN0VVFJbXhoZVlsQlhBS1ZWRFQyUXdXZ1pk?=
 =?utf-8?B?TzFtd05rVEk2VnQ4VU1ZT2hWbWliMTEyVXcvajduam1idlJpN0FVNlgwbEll?=
 =?utf-8?B?RkkrWG5XM1o2a2l6bkw2WjJCcnJnU2J5dkNhS2xJOTB1TWxtTkJ3dVVSUkFq?=
 =?utf-8?B?OURaZUFVbFV3VGlHMi9PTG5zTm1ER3BGVWNQeTl4MlR5d3c3dHZlYUc3VFgv?=
 =?utf-8?B?b0tqY2RBR0hXNStBTmprVE1jUHhxV0kxdFVyTVRkSFlrTW4zMjlVYjFGZnl0?=
 =?utf-8?B?N2J6U0pZdlN1YnlKRmw0dWZiTkh5cTVJSTE0MUZkaHhVNWJnd0oveXJtZnhW?=
 =?utf-8?B?a2NwZEJnTWwvME12dUY5WUFDdjQ4dTc0Tm9lYlRHb1I4MEk4bEhiMVJ5aHRF?=
 =?utf-8?B?WjVESnhhRjJURUxWSnI4MmRGQTRERUJEaDJvTUk4aFpOejJVMmNJUEFDRXZS?=
 =?utf-8?B?Qmhzek5aY0NTZlJkd0FrUk1DQUJWZkhUYjkzQWFoSGUyUDRrN3hESzMyUitH?=
 =?utf-8?B?REZ1d3BLMDNlV0M3bDV4c0RZNFhTaE5jSTRWeTd0N2tBTTUrVFczWEx6aTNU?=
 =?utf-8?B?S2RWUFlpZ1JzYk9PTWllbmdRMnVLTWc2N1Q0VTIxeFVJYTBJYVNkclIrT2Vk?=
 =?utf-8?B?MGVJcndFOHlrNzl6SUpzaHZlOTZlanZGVWU2VmZEMks2dUJ6LzNxSlhodEpo?=
 =?utf-8?B?Zm5qU1hlQ2l6TCswOEMvamFBd2lZa1NueG5oT3BXVXlaNHJRdEtuUzdkdHJz?=
 =?utf-8?B?TjMxSzErT2Y4TisvQXg3TXdjTkVvMFhYTFVVRmJYZW90V1lVeUo2NW1ZRGJ5?=
 =?utf-8?Q?HyHPpWihH6ATk7ykagEhQD0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AA9EA5AE1D9C6540B574A7BE2FE3FA27@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 651ef559-ee97-4660-48ca-08dac6c9f105
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2022 05:26:26.0572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /OYlFhGwqcLQAX5XuF4Xy/mepiIF51RTdPHDfaE16sP9gE+nH/IVUbmJskgQv1y2SxIUa6HAXL8N3D21wEHkVbGXi17A2mE1KRWK62YoNT/fN1Br/n+2uqgRBZ4oeP7d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6322
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/6] drm/i915/pxp: Make
 intel_pxp_is_active implicitly sort PXP-owning-GT
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

DQoNCk9uIE1vbiwgMjAyMi0xMS0xNCBhdCAyMDoxNyAtMDgwMCwgQ2VyYW9sbyBTcHVyaW8sIERh
bmllbGUgd3JvdGU6DQo+IA0KPiBPbiAxMC8yMS8yMDIyIDEwOjM5IEFNLCBBbGFuIFByZXZpbiB3
cm90ZToNCj4gPiBNYWtlIGludGVsX3B4cF9pc19hY3RpdmUgYSBnbG9iYWwgY2hlY2sgYW5kIGlt
cGxpY2l0bHkgZmluZA0KPiA+IHRoZSBQWFAtb3duaW5nLUdULg0KPiA+IA0KPiA+IEFzIHBlciBw
cmlvciB0d28gcGF0Y2hlcywgY2FsbGVycyBvZiB0aGlzIGZ1bmN0aW9uIHNoYWxsIG5vdw0KPiA+
IHBhc3MgaW4gaTkxNSBzaW5jZSBQWFAgaXMgYSBnbG9iYWwgR1BVIGZlYXR1cmUuIE1ha2UNCj4g
PiBpbnRlbF9weHBfaXNfYWN0aXZlIGltcGxpY2l0bHkgZmluZCB0aGUgcmlnaHQgZ3Qgc28gaXQn
cyB0cmFuc3BhcmVudA0KPiA+IGZvciBnbG9iYWwgdmlldyBjYWxsZXJzIChsaWtlIGRpc3BsYXkg
b3IgZ2VtLWV4ZWMpLg0KPiA+IA0KPiA+IEhvd2V2ZXIgd2UgYWxzbyBuZWVkIHRvIGV4cG9zZSB0
aGUgcGVyLWd0IHZhcmlhdGlvbiBvZiB0aGlzIGZvciBpbnRlcm5hbA0KPiA+IHB4cCBmaWxlcyB0
byB1c2UgKGxpa2Ugd2hhdCBpbnRlbF9weHBfaXNfYWN0aXZlIHdhcyBwcmlvcikgc28gYWxzbyBl
eHBvc2UNCj4gPiBhIG5ldyBpbnRlbF9ndHB4cF9pc19hY3RpdmUgZnVuY3Rpb24gZm9yIHJlcGxh
Y2VtZW50Lg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZp
bi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgfCAgMiArLQ0KPiA+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jICAgICAgICAgfCAxNCArKysrKysrKysrKystLQ0KPiA+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5oICAgICAgICAgfCAgMyArKy0N
Cj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfZGVidWdmcy5jIHwgIDQg
KystLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF9pcnEuYyAgICAg
fCAgMiArLQ0KPiA+ICAgNSBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA3IGRlbGV0
aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuYw0KPiA+IGluZGV4IDcyZjQ3ZWJkYTc1Zi4uNzk4ZTc3Mzk4YWNjIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jDQo+ID4gQEAg
LTI3MSw3ICsyNzEsNyBAQCBzdGF0aWMgaW50IHByb3RvX2NvbnRleHRfc2V0X3Byb3RlY3RlZChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiAgIAkJICovDQo+ID4gICAJCXBjLT5w
eHBfd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1lX3BtKTsNCj4g
PiAgIA0KPiA+IC0JCWlmICghaW50ZWxfcHhwX2lzX2FjdGl2ZSgmdG9fZ3QoaTkxNSktPnB4cCkp
DQo+ID4gKwkJaWYgKCFpbnRlbF9weHBfaXNfYWN0aXZlKGk5MTUpKQ0KPiA+ICAgCQkJcmV0ID0g
aW50ZWxfcHhwX3N0YXJ0KCZ0b19ndChpOTE1KS0+cHhwKTsNCj4gPiAgIAl9DQo+ID4gICANCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jDQo+ID4gaW5kZXggZjdjOTA5ZmNlOTdj
Li4xNWY3OTgzZjZkYTggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhw
L2ludGVsX3B4cC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4
cC5jDQo+ID4gQEAgLTk3LDExICs5NywyMSBAQCBib29sIGludGVsX3B4cF9pc19lbmFibGVkKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ICAgCXJldHVybiBpbnRlbF9ndHB4cF9p
c19lbmFibGVkKCZndC0+cHhwKTsNCj4gPiAgIH0NCj4gPiAgIA0KPiA+IC1ib29sIGludGVsX3B4
cF9pc19hY3RpdmUoY29uc3Qgc3RydWN0IGludGVsX3B4cCAqcHhwKQ0KPiA+ICtib29sIGludGVs
X2d0cHhwX2lzX2FjdGl2ZShjb25zdCBzdHJ1Y3QgaW50ZWxfcHhwICpweHApDQo+ID4gICB7DQo+
ID4gICAJcmV0dXJuIHB4cC0+YXJiX2lzX3ZhbGlkOw0KPiA+ICAgfQ0KPiA+ICAgDQo+ID4gK2Jv
b2wgaW50ZWxfcHhwX2lzX2FjdGl2ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4g
DQo+IGFnYWluIEknZCBzdWdnZXN0IGEgZGlmZmVyZW50IG5hbWUgdG8gZGlmZmVyZW50aWF0ZSB0
aGUgMiBjaGVja2Vycy4gDQo+IENvbnNpZGVyaW5nIHRoZSBvbmx5IGNhbGxpbmcgb2YgdGhpcyBp
cyBmcm9tIG91dHNpZGUgdGhlIFBYUCBjb2RlIGlzIHRvIA0KPiBkZWNpZGUgd2hldGhlciB0byBz
dGFydCB0aGUgYXJiIHNlc3Npb24gb3Igbm90LCBtYXliZSByZW5hbWUgdGhpcyB0byANCj4gaW50
ZWxfcHhwX2hhc19zdGFydGVkIG9yIGludGVsX3B4cF9pc19ydW5uaW5nIGFuZCBsZWF2ZSB0aGUg
b2xkIA0KPiBpbnRlbF9weHBfaXNfYWN0aXZlIGFzLWlzPw0KPiANCkFnYWluLCBpIGh1bWJseSBk
aXNhZ3JlZSAtIGlmIG9uZSBpcyBhIHdyYXBwZXIgYXJvdW5kIHRoZSBvdGhlciwgaSByYXRoZXIg
a2VlcCB0aGUgYWN0aW9uIHNwZWNpZmljIHBhcnQgb2YgdGhlIGZ1bmN0aW9uDQpuYW1lIHRvIGJl
IGV4YWN0bHkgY29uc2lzdGVudC4gUGVyaGFwcyBsaWtlIGVhcmxpZXIsIHdlIGNhbiBtYWtlIGlu
dGVsX3B4cF9pc19hY3RpdmUgYXMgYSB3cmFwcGVyIHJvdW5kDQppbnRlbF9ndF9oYXNfYWN0aXZl
X3B4cC4gQnV0IGkgd2FudCB0byBtYWludGFpbiB0aGUgImFjdGl2ZSIga2V5IHdvcmQgdG8gZW5m
b3JjZSB0aGF0IHN5bW1ldHJ5IGFuZCBub3QgZGVjb3VwbGUgdGhlbQ0KKHNpbmNlIGl0cyBhIHdy
YXBwZXIgcmVsYXRpb25zaGlwKS4NCg0KPiBEYW5pZWxlDQo+IA0KPiANCg0K
