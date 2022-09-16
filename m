Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 084045BAE05
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 15:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A54A610E411;
	Fri, 16 Sep 2022 13:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6233110E411
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 13:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663334575; x=1694870575;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=1ar0Uu/vsiMWU76b5tmFlS+FbiZcimFuqNaVdB0V6+Q=;
 b=aWDldP0REwJpq3MmIfuR7YU4GZqwdLSdhUZ1M8tXsDkb8vvJq9sknjYR
 olduakJl1VAVgD697gzPcd5eeBs3mproZf5hzyFyF6em3JAADEzBOvd9M
 1ZirLkJ20XQ78T8oJ03mXx9LrcxlyE/PmprCsStwCiafVbAosqbEC3REq
 HV8Vv7lheQNDqzzCdu4O54wtSRz18K7xlyVE2ZiaY3EAHVIJSQBgaXZaO
 exjXhNi+1ETcrVB0lLkvk/IaxUJNcJlIAc18NkidWV67OSEUKOGNmIVVc
 vkWr5wtWLbCKfdJ+o310eHHfprLvuwVg67crCkg8+dSsyj+WOCdzTPS2W A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="299812043"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="299812043"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 06:22:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="617669531"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 16 Sep 2022 06:22:54 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 06:22:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 06:22:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 06:22:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TafRUKeDc/m0GhhxS1/0YXlfBtd/YI0QgJiGDCs5KUIO3hbzdzzoogpSLtXcvg6QDry+duOiphn7gZRc9s+NCQiC2Tf0Mtj931+yTsclnG+3gfSgwq8oZDCOUZvJe5lNrKIQXn/alIA+m9pzYmxMKRNnf9ImFhlIEDCWLtr2PGsQIfV77ilWzZ6mGIHBLVgwqLoV96RQ0+JyoEzG1GRMwsGR2Il/EF3LnN/PmRXuAxaVbxSc/w+IiW5oQDPJ2RLA8gAnhr94fC30VolnP0hiGHNALJ3KQcogqRhZjQQx/5aDHm7Pz/VR/Lj2wufdxA9DUfziWmNoXeiiHOzL14wmvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ar0Uu/vsiMWU76b5tmFlS+FbiZcimFuqNaVdB0V6+Q=;
 b=h19wv4ZUBZ9CGN7hmEIZu6xbIfFn3kDdbB7MyuHwfd4myfUjwRXL0wYjYDi/EkrZYTeHJX26Eysb0Q39mvw232EFStHzS3AJ6lbLZk5ZcEOl8pTahvotkJ0B6YVF0Yi/ynIVwetNjCCYeYQ0dDDi4v/kxX+sXEglayKDxQ/gjAkw3/IbC6pNgz01O7tYEV/E3vqGYssMnoOFy9jU1/S0GjghGZL5qbJWKjM33Ro4bCuyh28e6hoKpkettVQIbHOkzV7iZnc9MVag4qrolWbWvW6XexVSejJgUXpIgzkq9DaCEwP54lLbUUgEL1/de1pG2QSCToBfZVpE7uFzppoDPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by PH8PR11MB6780.namprd11.prod.outlook.com (2603:10b6:510:1cb::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Fri, 16 Sep
 2022 13:22:53 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::b072:c2bb:5d3f:a667]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::b072:c2bb:5d3f:a667%9]) with mapi id 15.20.5632.015; Fri, 16 Sep 2022
 13:22:52 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Do not re-activate PSR if there was a PSR
 aux error
Thread-Index: AQHYybzJeHkn35kTBE+aAaJmckLJ8K3iC1wA
Date: Fri, 16 Sep 2022 13:22:52 +0000
Message-ID: <651a0f14baeaa338738015d02927db86bcb07acd.camel@intel.com>
References: <20220916110804.233449-1-jouni.hogander@intel.com>
In-Reply-To: <20220916110804.233449-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|PH8PR11MB6780:EE_
x-ms-office365-filtering-correlation-id: d8bf6888-48be-4b3d-3ada-08da97e68f38
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xz3iqijC/ifFeGtWI08eFD32zA8ZC+xdr1UnGIxhD5HOiyyK9K+PqbY5oMyxDIlWC9gOKp11XhBc+4Cqyf72fDT6kApJJgfTs5nvdQNWOc6FtslUBDzBYBLBD4TptfOV8qfqNBPxiJXNIVtk3DVbdn1YVO8BCJ7RrfQqAi9uov1VqB9nHf3Bv0WNY8Ttgk/se7od/2CkCdOHOrONhBzwZAH0hcISz6zplGJ8G8mGb+Cjkgj85iVEfz0Z7oOf9G/UCmMzKT7urRaOuQbExr/xp9Ev06gX6qOdM868G4dSy4JCG0pKSfNJLvEt33BINgS3Z2Zhk0H0Ndkoz2MXQDx8t8iHt+34BdlRn+PWFJ0Temdg4tI0XUGR0QZgC3IPIs+1DdIcvWRp8fneh6AlntzRtVB6xeFrpHoq//4+cJ64SlgQg1BNF0LNi7wFtip3iZUyfs8VnI8BHS2JwGB0sX6sT3Gteickz8me/qPkbs5NM9wE2x1oF7Mn3UmRI0wJlCETue5vkiGkntOXgXUTbuPjCvYTJHE8vMdzj4n7tyqczqGUe3yiva04my7IrosRonsquAjZEB1sgDeatfv0z39kqYFn/HeCXFHB+rWzxaqu4Rr4soyoPsTGK6P73E9gZR9pCXBk2osKCAezoaqT8xyGYLkLLfivwYuZfveadJZHtsJR9nBQ4CQhQx9mld3V5oOye9csX+cSYFcJo8j76YqeU5QtbFCtSp8K0e4IocIr9cQfRWExQdHcxNb2YbcLqnRwQ3EOY3TEQfqEts8Ygz7D2g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(396003)(366004)(39860400002)(376002)(451199015)(91956017)(478600001)(4326008)(107886003)(6486002)(66446008)(86362001)(110136005)(41300700001)(5660300002)(64756008)(66476007)(8676002)(316002)(2906002)(26005)(71200400001)(8936002)(6506007)(83380400001)(122000001)(2616005)(6636002)(66574015)(54906003)(38100700002)(36756003)(76116006)(6512007)(186003)(66556008)(38070700005)(82960400001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFJ2Zm8rb2ZkTzF4dzFjZ01lRW1FSmpXcEpDMXFXQzJlV2xXZHpFNldydUNm?=
 =?utf-8?B?SktuQVN2UmJXZjBmUksyTVFybk8rc2E2emkyc3VIVjJDcXZnbkdDa01IaHdn?=
 =?utf-8?B?bnl1dlBoTUd3NTc0cG1JVHFVY2lTMHNTWTBtaXBwclJzK1FqQ2pyckR2OWVV?=
 =?utf-8?B?ZXFjR3NlamhEbGxaN2tia3pDYmNnN09jbkxJeVJGZVJMbGU4Tks2cm9KVVFJ?=
 =?utf-8?B?bkNhdFJNb0I4N3VkU1ZEcko3YlIvU01BNE5TenhVbUZxK2dTRU0rZnFSTitp?=
 =?utf-8?B?WHRMenNGWEVwLzlCZmQvZ2E2ME54dFpVaWp2R3ViY3N6MWlPZjhSbnlwRlBE?=
 =?utf-8?B?TDVoZ0RyVERQQklhMEowSmR4cmFYR2V5aGJKL3FkYWE4VmJCQkhNNjVnSlBP?=
 =?utf-8?B?TkhBeVR3emFVT2VLbkplS2VBS2REeXpWN0ZFRkxkbU0zQm5JK2V0YVBkdTFq?=
 =?utf-8?B?QnBWVVBnc0toV2s1eDBYY294aldQeG5pZFd4K3hUeVc3WTFtNldXcWc0eHFq?=
 =?utf-8?B?OUw3RlR5SDhUTlJmbldqZUxpR2d0b0U5d0tVTDduSVNXRnlRQ3ZXdEJnOFli?=
 =?utf-8?B?dE1FQ0k0R1NkQ3h0QSsvYlhMek1UMFBrTFl2RjdUN1V3Uk5UVDhzNXFvcEJa?=
 =?utf-8?B?NlpWbnExNitUc1d5QUhNejRVQjcySEpod2tkRytsQ0RYR0xsem4vNk1FSkJ2?=
 =?utf-8?B?Nmdmb2RhaTEwVzZUemlqSUlOUjhkY3pRSHNZdHNmMGtUM2hONUphUVA1cmpU?=
 =?utf-8?B?SXhPcVI3cnE1cTVvcE9ISno3N1duSm5tUlZralRINk9obEJRVFE1eUtrU0pV?=
 =?utf-8?B?dldJVkV1czRBbGJuUkRQRUVGMm9qQjhOdi96YzlDN20vcVJ2TTdPdE5vNDZn?=
 =?utf-8?B?K0N2NWZLem9yWjJBb21TYnBKaDBmMWFmKzI3M3p5b21LKzVFSm5hMnQ4M3Vk?=
 =?utf-8?B?blpQQ25DUWRPRnAvNE9UVkRxb1JsYUdaVEVoQ3NPcGMrVitSVHRkemNCcVdV?=
 =?utf-8?B?ODJFWXVqTEpOUkd3OU93dDJ0TXBIN0J2SWFXczJNcGowbVRqMkp2dzNsa2VU?=
 =?utf-8?B?d1paTWJIZE5Xb0I5OCsrREtrbUFtSUNoc0t2bHcyZnJYcnZYQjVCWGV0Wjdh?=
 =?utf-8?B?NDZXN1FBTExnMnN6YXh4eVp6Ny9IdllsQ1d1VGJXWUs4UEpzVnl6TjUrUVQ1?=
 =?utf-8?B?aTlNSUozdnhoYUx4cE9IUEM5YWdOVnRmMkllMmNpZDBxTStPZUdHamF4NEoy?=
 =?utf-8?B?azdQWXdUYTJDOE5TQWdWRWxIR2ZRK0RlbGI3NU52eEtENjM4MFBmSHg1ekpP?=
 =?utf-8?B?dTB3dzZIS3VodXRSZHBYRTJYVVA2RW9Sb0U3cWdRU3MwemdqNU84RlpOenpU?=
 =?utf-8?B?emM5QnFIeWRONzdEdHZiYWxzS1JrMjJSWWRLc1hTd2Zubm1NcTkzcTJkcG8r?=
 =?utf-8?B?aHhQM1crbWtZL0RuampubEwycmtvUFVXa09oUTN6STFOcmxHV3BwRlNWUzdk?=
 =?utf-8?B?STZ3K1l6T3JsUjJMSjE4ZTIrRUs1NE50bmxyeStmVGxRVG1qRGZySUNraGg2?=
 =?utf-8?B?ZnVWakNKN1M2Rjd6dXpLUDdQQlJGWEdxbFR4RnNobHdRWHYzR0VzYjVycWRX?=
 =?utf-8?B?ZVZIemJCUE0wZGw2OHhrTDhETG5DY1BKOHMxaWRWR0xnVmNvYmVRUjI3RVhP?=
 =?utf-8?B?S1JBVUpkWDBsRWp3OEVJODlHS2VzWG5SRTE4LzZGSTlORU9zL2tpSHlyUXZQ?=
 =?utf-8?B?Q2RKYWRVc1V2bUxjYWgzM2xTcU5iVUJjaU55U0l3UDhzU0Vhb1RQZ3hyK1Bn?=
 =?utf-8?B?bTFzekh3VFoxVVZ2VVdteDJxRXJCWFEzKzVFQ3M3Y3NGWG50aTBlYnVjVEE1?=
 =?utf-8?B?d3VRVVRzcVhVWW1EcUhKaXdmVENBRDZQUWs4L09aZUl5Y1BMQWhUN09jMDVV?=
 =?utf-8?B?TE1UTW01cTJtNE1iV3oyYVh5NXNXWDJoN0pWdXdBWDJkYTZOK0FscDZORmh5?=
 =?utf-8?B?WVRkamxJVTYzbWN1UW92b1QwRVRWR0grVU1Ha2VvT05ZbDQ1dkFOWGx4THRv?=
 =?utf-8?B?U29uUHUrRlJQa2xZY3VEN0hZMEw1bkVlWmswM05qQ1NKYWMycktJeDl6MzFL?=
 =?utf-8?Q?BBGzzcv9ELQevlG4W0F2fIv8+?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E38213937BA014ABB3B1171CBFDC1A0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8bf6888-48be-4b3d-3ada-08da97e68f38
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2022 13:22:52.7133 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wtBDriFqc3NakemelCPF56PzguFS3GOSLZzRj0Z9O6wA1dBnGEX9LjaRbqTQOKSfxGspCW6DLktz8xI3GJjBiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6780
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Do not re-activate PSR if
 there was a PSR aux error
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
Cc: "Lin, Charlton" <charlton.lin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA5LTE2IGF0IDE0OjA4ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IElmIHRoZXJlIGlzIGEgUFNSIGF1eCBlcnJvciBzaW5rIGlzIG1hcmtlZCBhcyBub3QgcmVs
aWFibGUNCj4gYW5kIFBTUiBpcyBwZXJtYW50ZW50bHkgZGlzYWJsZWQuDQo+IA0KPiBDdXJyZW50
IGNvZGUgaXMgYWN0aXZhdGluZyBQU1IgYWdhaW4gZXZlbiB0aGVyZSB3YXMgUFNSIGF1eCBlcnJv
ci4NCj4gRml4IHRoaXMgYnkgc2tpcHBpbmcgaW50ZWxfcHNyX2FjdGl2YXRlIHdoZW4gUFNSIGF1
eCBlcnJvciBpcw0KPiBkZXRlY3RlZC4NCj4gDQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhv
bGFAaW50ZWwuY29tPg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+DQo+IA0KPiBSZXBvcnRlZC1ieTogQ2hhcmx0b24gTGluIDxjaGFybHRvbi5saW5A
aW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jIHwgNCArKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gaW5kZXggOWRlZjhkOWZhZGU2Li40MjM5MDIwM2FkMTkgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMjE1Myw4ICsyMTUzLDEwIEBA
IHN0YXRpYyB2b2lkIGludGVsX3Bzcl93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4g
IAlpZiAoIWludGVsX2RwLT5wc3IuZW5hYmxlZCkNCj4gIAkJZ290byB1bmxvY2s7DQo+ICANCj4g
LQlpZiAoUkVBRF9PTkNFKGludGVsX2RwLT5wc3IuaXJxX2F1eF9lcnJvcikpDQo+ICsJaWYgKFJF
QURfT05DRShpbnRlbF9kcC0+cHNyLmlycV9hdXhfZXJyb3IpKSB7DQo+ICAJCWludGVsX3Bzcl9o
YW5kbGVfaXJxKGludGVsX2RwKTsNCj4gKwkJZ290byB1bmxvY2s7DQo+ICsJfQ0KDQpBbHJlYWR5
IGhhbmRsZWQuDQpfX3Bzcl93YWl0X2Zvcl9pZGxlX2xvY2tlZA0KCQlpZiAoIWludGVsX2RwLT5w
c3IuZW5hYmxlZCkNCgkJCXJldHVybiBmYWxzZTsNCg0KPiAgDQo+ICAJLyoNCj4gIAkgKiBXZSBo
YXZlIHRvIG1ha2Ugc3VyZSBQU1IgaXMgcmVhZHkgZm9yIHJlLWVuYWJsZQ0KDQo=
