Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEDC899B84
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 13:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7A910E36C;
	Fri,  5 Apr 2024 11:03:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jCNBz/r8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDB4210E36C
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Apr 2024 11:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712315025; x=1743851025;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PG+nI63LpUVajDJTmUhhrIvovI/gpDHOg/lO7nksuj4=;
 b=jCNBz/r8YgKxXhKNOVX1Ep77HhLv59mtI/oyYzP4BT4hF96fNClit5Z7
 ocTIcRHhv1ZY+mH9nobCFZFAmiHPJRmy1KvzzOMUaDWD4cgOCswaVGv1B
 +fnvjjDvKodhdYxvQYwNfSuAIj4guJ572vT9FXRpilW+TJ/rgxXEHUlJC
 iCyXjrbPM6rfi131aN6ttuxWSlVXU1V38zCpcUWcCXqQVxIF9C6qBc9PB
 bgeY8w3lAu6NRNsGeiyz5nO7ANv5WsimfmDiZTRRrJp5jmDH+5OFXLPk1
 z8va6oZz4OybqRtXsO8w5L56iZ3qhOWPO0pnOfmu401ay6uISJKJ9yb8F g==;
X-CSE-ConnectionGUID: lNorUEe2QsO1Tf7oiDMFWA==
X-CSE-MsgGUID: WWxrPY+/QZOiCyzEVC2vcg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7501073"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7501073"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 04:03:44 -0700
X-CSE-ConnectionGUID: yQrYzBfRSIqf1KX2NiWR0Q==
X-CSE-MsgGUID: wn9KQZINTqmeu0aX0gtkMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="23849740"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 04:03:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 04:03:43 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 04:03:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 04:03:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 04:03:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cjDz9i4u0pIw7pkwnT6G8vSQPDlHgrd8Es2yv6YAQn6gFwxYiT5i4UH6dT+72kg+VLrdrwmJGvM8gyphsM0ejZE3NDpMdYp5UnDyevTkuU6elEKh1C3R3QGAaLOZB1EYUbqHh/hZ9WHTAjqm2nmieTFTVtvXJCKEkVSFV/dBIZLnkYrRhqazr8n7ZlbVe66jrpPZc9Mu+sdHjSMW9kZmsPIaq/2sgNdSX4oVK+nFEb9n4F3TsYLxMLYrzhrGR1XCAWG71trGI+4pdZhjBQZIVLk5NmXY3NFxhmCbZSEoGG9SdQ+oE9sryn9z3eYC1fSEi8FHufJH40qxS1QixzIIVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PG+nI63LpUVajDJTmUhhrIvovI/gpDHOg/lO7nksuj4=;
 b=E+MYH+TP4/G9iFYAAsYqM0v2sRqeXbhnYZFh3+M3Ls8JMG9Bto1oyxDhQo3PphCiTvEu2HEkIHpvYAL6lXyE2k0Ycu6943FXb9qdgd8ket3rzNshEJfYy1DclmWOo2Th7IsuEXiFcq6A0RTjhMeaZa57YNESZ2t8Gmks9irtvEuKHAz+lCdnuP6GiqBEmxxCs4lJ3roIuCw6lwMIJTcfHlbssKOlKbKRVm9B2RYyQyzOkw5LPaRRthxUARDcOHCJoMlcOg4rse9dYmyvmhq3Oc4renKjGEQSRPSpNGiqVIzO5OFkisN+ZtbayMUx73l8IwNNtqEbuiFBNVRjLlJWFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB6574.namprd11.prod.outlook.com (2603:10b6:a03:44e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Fri, 5 Apr
 2024 11:03:30 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 11:03:30 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v5 06/19] drm/i915/psr: Do not write registers/bits not
 applicable for panel replay
Thread-Topic: [PATCH v5 06/19] drm/i915/psr: Do not write registers/bits not
 applicable for panel replay
Thread-Index: AQHahaV5/DnWCg2ZMUa1Vir/cOw6pLFZhfLQ
Date: Fri, 5 Apr 2024 11:03:30 +0000
Message-ID: <PH7PR11MB59811C6CC9C7EABA7C6B6587F9032@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240403090013.54296-1-jouni.hogander@intel.com>
 <20240403090013.54296-7-jouni.hogander@intel.com>
In-Reply-To: <20240403090013.54296-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB6574:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ON1PWa3ThwG328pnnJniwNX6xkig+ae2QjGX12YMCqNu6ekKVlAeszR3HLvM2/mJ9NvZoT7y1QrVhKaav+oqYZ8GI43paFgktQPq87Y1SKLk6ngP/Uw6PtSCecntZCY54S7YHZbnZWrY6S1lMSgYXu/SAPxpPBBhepupfx3keCpL0hIjN8JAYr0IMtLdvvKl59cGYTd9YVJ+OCDRS5I7A2SEGe+7ivLMoALgaLKlFtdD65Mh9JkQ/ZqUCsghsgtzTH5AEqhARtvyF5absUHA9e1OyuAetvkkwke/ug9cXBdjDkmhBO/ractpQPyQCiJPYUkzlM1UkczZ661uIKPxYRFn/UP6TvCu4ZkAs7GQBX9DHfQ48YjJTJyEMpyg1tYN2DxUVYJyGRg4wvh8n2e+NZ/Tme6qr7d9nt+opGHRoKPmi+ZxixIwUlyyoxfWCa3LUmMeuZs/GBw63YjcgbmT4mW61FPL8iaDko4I3K2u7wEKfh+emqsRGCb1yAQo5KzVBLq8vxbHSMl9smXngdnJOlffgFFmAus1d0JCAjbD60KZ0PfV9kDrDW/iv9TEI/N/y6Y1F2JgC2/+Ry0Y0tbHVWspyIhKiRlUpiWmnKLdEU3PSGhSRzey52Xx84+VCgyT0ZJcuIl1rCUz4WtyHXYPqA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bmUzWFl5anRZNzc5aHUrS0Y4U2k2UDNsSmpvQjMvdkV0WEg2bW40MTFaZElK?=
 =?utf-8?B?Tnk0cFhtcDlvV0g3d2ovbUZWQlRwckpHRTU0dnVtR3BlRXRFNVNSWDBGb1ho?=
 =?utf-8?B?TW1NR0MrVklod0FvanRtUzg0SitjWGFIMmdRMjJnNFduNzB5OHUvZnU4bGQ1?=
 =?utf-8?B?VzNybVplTGVJdElUeldwTXRlQ0VTSy9BK2FZKysrT1BGK3g1Ym5iZk1CaU9z?=
 =?utf-8?B?ckQ3OGwrQS9VUTkzL2Q2MWdwZkowVUJwWHkrb2ptMUcycEJzMmZodVk1cExa?=
 =?utf-8?B?WndMMjVwdmZMdCtTa1NwSktDYnA1VFpvQXF5Q0xWUlhlYi82bTQ3Nno1TC84?=
 =?utf-8?B?VXBBdkVhTVB5NXhoM1lZTnN0RWZzeDB0OVZCOTZlaU1POTd5RW5sQUJJdUFz?=
 =?utf-8?B?TVNkMXNQbkxBRWc1N2JBRys5aDQyN3lYOFJzT1grdDFkWWV3YmEzTE5mb0Ri?=
 =?utf-8?B?K2g5VTVQUVVsclZ2T01QSFJvdE9nVW9BUStmS3ZaUW9hbkZkQ2NkTWF1Y01u?=
 =?utf-8?B?Z0VvbjhkRmVuUkZvOUhzZU1vNXZvLzhhQ1F1Wi9LaElKd3d5SGxIZjQ2ZCsz?=
 =?utf-8?B?R1YydHllYStiVVdodlp4bU02ZUlyZWdIVU5EMkxKYjNFUnRXSFE2MWw1Tjdh?=
 =?utf-8?B?bVhDUVF4cFlXNU1kMFVoNWxTb1RXaWlRbUtDVUxRZFBUK1dQTWdDZ2Q3dVRs?=
 =?utf-8?B?cjBaYWp4MzdiSlpNUkVveDlReWFTR3hmdnBacEpLRzBOc3hkWTB0QnNJNlNC?=
 =?utf-8?B?MStQdmI4V3V6ZGVuTWJKTU1TOEJsTTFaYVJQbHpWc2pacnVwMnMxUXM5LzlS?=
 =?utf-8?B?Ny9hWDJFS0xoczYyUkh4cEdoV0tqSXU4R1pQdW5va0duVGxDRldWWTZKSTVi?=
 =?utf-8?B?NGlpaTdjU2FFVW5qaDV6SWxqTElPaFBuVlBKS2RoZUMwd2pobXFUcXhkSEpz?=
 =?utf-8?B?RnBLTGExVGwxS1Z5dVRmZ3p5S2VCL0dHNzJ3MUd5d1FYRXZjRWNoWDBLa1VU?=
 =?utf-8?B?enZpdTFzNGZVZnRKaEVCSFoxdjdpQVYrd1JneUFsYjRDVlZJZEpDVFRGb2pk?=
 =?utf-8?B?WHFoSCtiVWtqZWFRM0VKaEdjNk1JSzNzTUN6cWRZdUhrTExIazFqeHJlcGVi?=
 =?utf-8?B?bUhzWlN4c1JiSGRUekJhT0l6dmQrUHBOd1BYcG4xYm1kcWVyVHZXYzZRS29w?=
 =?utf-8?B?QVpQOVJnQXp4NGtwWHhtdm51OWRqcWVYN0N3OGg4QUdVZlVQTFQ0MEdYc3ZQ?=
 =?utf-8?B?eHJ5WUlsTEk1c2ROTlhVV3V1TGdraUJ3TytxVTg3Zmc4VGFmNmk4Q3crajEz?=
 =?utf-8?B?MXdOcnJ0d3hxeFF2R05SajY4aUR6K21RVmZ6RnRYSkU3cWdGNC93WERTd051?=
 =?utf-8?B?eDhoT3JmWGZmZlBGUGpWYWJ6NkIxbzBrd0RPcW4ySjNhQTZMS3JmQmg3YlpY?=
 =?utf-8?B?UTZRSVg3UEl5U2VmYnpJMmFNQ2VpVHFUYXBoZkpRb1pjcWptdVk0b0oyM1kv?=
 =?utf-8?B?WTRRdElBZkVFcEt3YnNKRXNJOTd2Z2lTTklaZWhYYXhWV2lEZ014WXlXM1R5?=
 =?utf-8?B?WCtQNlBmK1ROTVEyRU1PV2xFSVNlMC84TnF3d1JnUVY3eWpqUG94WWFmeFVS?=
 =?utf-8?B?VWhON0xHMzYxYXJiRVFzc0Y3YmNsSklmTkFCYnp0VjBNNjMxblA5TlQwUzNo?=
 =?utf-8?B?QytZelBwWk50ZEhEd2xTRitOQ0JRY1JXYXRQOWg2TXlvcC9CRkZJTUtoY3lL?=
 =?utf-8?B?M0lpcTB4ZDM5d2NCUENxVlhqOERLUmhsdk5BS09mQkNYU3RNSjdoRGY1d0Zr?=
 =?utf-8?B?UmdxTDM5c1NieFp5MjV0ZkdoUDgwOHJTdFV5bDJXQkJYK1dSMnRWcEtRWWZ1?=
 =?utf-8?B?ejhoRC9uSWZhN096KzlodXJMRTRGUGovTlFKVVdaVDB3dHl1TFhSeVI1N0VN?=
 =?utf-8?B?QXJKUmgzb3hJUnFBdytHMFFPZ0RmWUhqeGxpeHJHNmZlVS9JckhOMjhVVEdU?=
 =?utf-8?B?RjFOZVJLRU5jOTEyMXVKMFFqQm52WVMzanNJYlFvWWI3L3VZQlBrQWo5bWN5?=
 =?utf-8?B?U2FiVnM5OEN0emRpb1pQOHNUWTF5bUM4N29SVVNXZy9LbGhlSkFLVnFZYmk4?=
 =?utf-8?Q?owqOyUy44BkcYjcU7SiCJsSr8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d76072e1-ed08-467e-a068-08dc556006ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2024 11:03:30.0950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GyYyBubSNO/CBraebIKuUpf+3hEjuyTG1WkE62tmKlh2aThKBa0QqStlFuF91T/H5zxR/F7LFDnehCFZuGJWvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6574
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXByaWwgMywg
MjAyNCAyOjMwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHY1IDA2
LzE5XSBkcm0vaTkxNS9wc3I6IERvIG5vdCB3cml0ZSByZWdpc3RlcnMvYml0cyBub3QNCj4gYXBw
bGljYWJsZSBmb3IgcGFuZWwgcmVwbGF5DQo+IA0KPiBCc3BlYyBpcyBzYXlpbmcgdGhpcw0KPiBt
YXNrIHJlZ2lzdGVyOiBPbmx5IFBTUl9NQVNLW01hc2sgRkJDIG1vZGlmeV0gYW5kIFBTUl9NQVNL
W01hc2sNCj4gSG90cGx1Z10gYXJlIHVzZWQgaW4gcGFuZWwgcmVwbGF5IG1vZGUuDQo+IA0KPiBT
dGF0dXMgcmVnaXN0ZXI6IE9ubHkgU1JEX1NUQVRVU1tTUkQgc3RhdGVdIGZpZWxkIGlzIHVzZWQg
aW4gcGFuZWwgcmVwbGF5DQo+IG1vZGUuDQo+IA0KPiBEdWUgdG8gdGhpcyBzdG9wIHdyaXRpbmcg
YW5kIHJlYWRpbmcgcmVnaXN0ZXJzIGFuZCBiaXRzIG5vdCB1c2VkIGJ5IHBhbmVsDQo+IHJlcGxh
eSBpZiBwYW5lbCByZXBsYXkgaXMgdXNlZC4NCj4gDQo+IEJzcGVjOiA1MzM3MCwgNjg5MjANCj4g
DQo+IHYyOg0KPiAgIC0gdXNlIGludGVsX2RwX2lzX2VkcCB3aXRoIFBTUl9NQVNLIHJlZ2lzdGVy
DQo+ICAgLSBoYW5kbGUgTHVuYXJMYWtlIGFzIHdlbGwNCj4gICAtIGhhbmxlIEFMUE0gY29uZmln
dXJhdGlvbiBhcyB3ZWxsDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFu
aW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyB8IDcwICsrKysrKysrKysrKysrKy0tLS0tLS0tLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDI1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGQ3NTQ3ZWVm
YzJmYS4uYjc1MzhhNDQwNWI4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gQEAgLTM0Niw2ICszNDYsOSBAQCBzdGF0aWMgdm9pZCBwc3JfaXJxX2Nv
bnRyb2woc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAllbnVtIHRyYW5zY29kZXIgY3B1
X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7DQo+ICAJdTMyIG1hc2s7DQo+
IA0KPiArCWlmIChpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkKQ0KPiArCQlyZXR1
cm47DQo+ICsNCj4gIAltYXNrID0gcHNyX2lycV9wc3JfZXJyb3JfYml0X2dldChpbnRlbF9kcCk7
DQo+ICAJaWYgKGludGVsX2RwLT5wc3IuZGVidWcgJiBJOTE1X1BTUl9ERUJVR19JUlEpDQo+ICAJ
CW1hc2sgfD0gcHNyX2lycV9wb3N0X2V4aXRfYml0X2dldChpbnRlbF9kcCkgfCBAQCAtMTc4Myw3
DQo+ICsxNzg2LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gIAllbnVtIHRyYW5zY29kZXIgY3B1X3Ry
YW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7DQo+IC0JdTMyIG1hc2s7DQo+ICsJ
dTMyIG1hc2sgPSAwOw0KPiANCj4gIAkvKg0KPiAgCSAqIE9ubHkgSFNXIGFuZCBCRFcgaGF2ZSBQ
U1IgQVVYIHJlZ2lzdGVycyB0aGF0IG5lZWQgdG8gYmUgc2V0dXAuDQo+IEBAIC0xNzk3LDM0ICsx
ODAwLDQ2IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdA0KPiBp
bnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJICogbWFzayBMUFNQIHRvIGF2b2lkIGRlcGVuZGVuY3kg
b24gb3RoZXIgZHJpdmVycyB0aGF0IG1pZ2h0IGJsb2NrDQo+ICAJICogcnVudGltZV9wbSBiZXNp
ZGVzIHByZXZlbnRpbmcgIG90aGVyIGh3IHRyYWNraW5nIGlzc3VlcyBub3cgd2UNCj4gIAkgKiBj
YW4gcmVseSBvbiBmcm9udGJ1ZmZlciB0cmFja2luZy4NCj4gKwkgKg0KPiArCSAqIEZyb20gYnNw
ZWMgcHJpb3IgTHVuYXJMYWtlOg0KPiArCSAqIE9ubHkgUFNSX01BU0tbTWFzayBGQkMgbW9kaWZ5
XSBhbmQgUFNSX01BU0tbTWFzayBIb3RwbHVnXQ0KPiBhcmUgdXNlZCBpbg0KPiArCSAqIHBhbmVs
IHJlcGxheSBtb2RlLg0KPiArCSAqDQo+ICsJICogRnJvbSBic3BlYyBiZXlvZCBMdW5hckxha2U6
DQo+ICsJICogUGFuZWwgUmVwbGF5IG9uIERQOiBObyBiaXRzIGFyZSBhcHBsaWNhYmxlDQo+ICsJ
ICogUGFuZWwgUmVwbGF5IG9uIGVEUDogQWxsIGJpdHMgYXJlIGFwcGxpY2FibGUNCj4gIAkgKi8N
Cj4gLQltYXNrID0gRURQX1BTUl9ERUJVR19NQVNLX01FTVVQIHwNCj4gLQkgICAgICAgRURQX1BT
Ul9ERUJVR19NQVNLX0hQRDsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMjAgfHwg
aW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gKwkJbWFzayA9IEVEUF9QU1JfREVCVUdfTUFT
S19IUEQ7DQo+IA0KPiAtCS8qDQo+IC0JICogRm9yIHNvbWUgdW5rbm93biByZWFzb24gb24gSFNX
IG5vbi1VTFQgKG9yIGF0IGxlYXN0IG9uDQo+IC0JICogRGVsbCBMYXRpdHVkZSBFNjU0MCkgZXh0
ZXJuYWwgZGlzcGxheXMgc3RhcnQgdG8gZmxpY2tlcg0KPiAtCSAqIHdoZW4gUFNSIGlzIGVuYWJs
ZWQgb24gdGhlIGVEUC4gU1IvUEM2IHJlc2lkZW5jeSBpcyBtdWNoDQo+IC0JICogaGlnaGVyIHRo
YW4gc2hvdWxkIGJlIHBvc3NpYmxlIHdpdGggYW4gZXh0ZXJuYWwgZGlzcGxheS4NCj4gLQkgKiBB
cyBhIHdvcmthcm91bmQgbGVhdmUgTFBTUCB1bm1hc2tlZCB0byBwcmV2ZW50IFBTUiBlbnRyeQ0K
PiAtCSAqIHdoZW4gZXh0ZXJuYWwgZGlzcGxheXMgYXJlIGFjdGl2ZS4NCj4gLQkgKi8NCj4gLQlp
ZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDggfHwgSVNfSEFTV0VMTF9VTFQoZGV2X3ByaXYp
KQ0KPiAtCQltYXNrIHw9IEVEUF9QU1JfREVCVUdfTUFTS19MUFNQOw0KPiArCWlmIChpbnRlbF9k
cF9pc19lZHAoaW50ZWxfZHApKSB7DQo+ICsJCW1hc2sgfD0gRURQX1BTUl9ERUJVR19NQVNLX01F
TVVQOw0KPiANCj4gLQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMjApDQo+IC0JCW1hc2sg
fD0gRURQX1BTUl9ERUJVR19NQVNLX01BWF9TTEVFUDsNCj4gKwkJLyoNCj4gKwkJICogRm9yIHNv
bWUgdW5rbm93biByZWFzb24gb24gSFNXIG5vbi1VTFQgKG9yIGF0IGxlYXN0IG9uDQo+ICsJCSAq
IERlbGwgTGF0aXR1ZGUgRTY1NDApIGV4dGVybmFsIGRpc3BsYXlzIHN0YXJ0IHRvIGZsaWNrZXIN
Cj4gKwkJICogd2hlbiBQU1IgaXMgZW5hYmxlZCBvbiB0aGUgZURQLiBTUi9QQzYgcmVzaWRlbmN5
IGlzIG11Y2gNCj4gKwkJICogaGlnaGVyIHRoYW4gc2hvdWxkIGJlIHBvc3NpYmxlIHdpdGggYW4g
ZXh0ZXJuYWwgZGlzcGxheS4NCj4gKwkJICogQXMgYSB3b3JrYXJvdW5kIGxlYXZlIExQU1AgdW5t
YXNrZWQgdG8gcHJldmVudCBQU1INCj4gZW50cnkNCj4gKwkJICogd2hlbiBleHRlcm5hbCBkaXNw
bGF5cyBhcmUgYWN0aXZlLg0KPiArCQkgKi8NCj4gKwkJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA+PSA4IHx8DQo+IElTX0hBU1dFTExfVUxUKGRldl9wcml2KSkNCj4gKwkJCW1hc2sgfD0gRURQ
X1BTUl9ERUJVR19NQVNLX0xQU1A7DQo+IA0KPiAtCS8qDQo+IC0JICogTm8gc2VwYXJhdGUgcGlw
ZSByZWcgd3JpdGUgbWFzayBvbiBoc3cvYmR3LCBzbyBoYXZlIHRvIHVubWFzaw0KPiBhbGwNCj4g
LQkgKiByZWdpc3RlcnMgaW4gb3JkZXIgdG8ga2VlcCB0aGUgQ1VSU1VSRkxJVkUgdHJpY2tzIHdv
cmtpbmcgOigNCj4gLQkgKi8NCj4gLQlpZiAoSVNfRElTUExBWV9WRVIoZGV2X3ByaXYsIDksIDEw
KSkNCj4gLQkJbWFzayB8PSBFRFBfUFNSX0RFQlVHX01BU0tfRElTUF9SRUdfV1JJVEU7DQo+ICsJ
CWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAyMCkNCj4gKwkJCW1hc2sgfD0gRURQX1BTUl9E
RUJVR19NQVNLX01BWF9TTEVFUDsNCj4gDQo+IC0JLyogYWxsb3cgUFNSIHdpdGggc3ByaXRlIGVu
YWJsZWQgKi8NCj4gLQlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikpDQo+IC0JCW1hc2sgfD0gRURQ
X1BTUl9ERUJVR19NQVNLX1NQUklURV9FTkFCTEU7DQo+ICsJCS8qDQo+ICsJCSAqIE5vIHNlcGFy
YXRlIHBpcGUgcmVnIHdyaXRlIG1hc2sgb24gaHN3L2Jkdywgc28gaGF2ZSB0bw0KPiB1bm1hc2sg
YWxsDQo+ICsJCSAqIHJlZ2lzdGVycyBpbiBvcmRlciB0byBrZWVwIHRoZSBDVVJTVVJGTElWRSB0
cmlja3Mgd29ya2luZw0KPiA6KA0KPiArCQkgKi8NCj4gKwkJaWYgKElTX0RJU1BMQVlfVkVSKGRl
dl9wcml2LCA5LCAxMCkpDQo+ICsJCQltYXNrIHw9IEVEUF9QU1JfREVCVUdfTUFTS19ESVNQX1JF
R19XUklURTsNCj4gKw0KPiArCQkvKiBhbGxvdyBQU1Igd2l0aCBzcHJpdGUgZW5hYmxlZCAqLw0K
PiArCQlpZiAoSVNfSEFTV0VMTChkZXZfcHJpdikpDQo+ICsJCQltYXNrIHw9IEVEUF9QU1JfREVC
VUdfTUFTS19TUFJJVEVfRU5BQkxFOw0KPiArCX0NCj4gDQo+ICAJaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIHBzcl9kZWJ1Z19yZWcoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyKSwNCj4gbWFzayk7
DQo+IA0KPiBAQCAtMTg0Myw3ICsxODU4LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJs
ZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAkJCSAgICAgaW50ZWxf
ZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkID8NCj4gIAkJCSAgICAgSUdOT1JFX1BTUjJf
SFdfVFJBQ0tJTkcgOiAwKTsNCj4gDQo+IC0JbG5sX2FscG1fY29uZmlndXJlKGludGVsX2RwKTsN
Cj4gKwlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gKwkJbG5sX2FscG1fY29uZmln
dXJlKGludGVsX2RwKTsNCj4gDQo+ICAJLyoNCj4gIAkgKiBXYV8xNjAxMzgzNTQ2OA0KPiBAQCAt
MTg4NCw2ICsxOTAwLDkgQEAgc3RhdGljIGJvb2wgcHNyX2ludGVycnVwdF9lcnJvcl9jaGVjayhz
dHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWVudW0gdHJhbnNjb2RlciBjcHVfdHJh
bnNjb2RlciA9IGludGVsX2RwLT5wc3IudHJhbnNjb2RlcjsNCj4gIAl1MzIgdmFsOw0KPiANCj4g
KwlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gKwkJZ290byBub19l
cnI7DQo+ICsNCj4gIAkvKg0KPiAgCSAqIElmIGEgUFNSIGVycm9yIGhhcHBlbmVkIGFuZCB0aGUg
ZHJpdmVyIGlzIHJlbG9hZGVkLCB0aGUNCj4gRURQX1BTUl9JSVINCj4gIAkgKiB3aWxsIHN0aWxs
IGtlZXAgdGhlIGVycm9yIHNldCBldmVuIGFmdGVyIHRoZSByZXNldCBkb25lIGluIHRoZSBAQCAt
DQo+IDE5MDEsNiArMTkyMCw3IEBAIHN0YXRpYyBib29sIHBzcl9pbnRlcnJ1cHRfZXJyb3JfY2hl
Y2soc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAg
CX0NCj4gDQo+ICtub19lcnI6DQo+ICAJcmV0dXJuIHRydWU7DQo+ICB9DQo+IA0KPiAtLQ0KPiAy
LjM0LjENCg0K
