Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB3F4C4034
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 09:37:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B684E10E212;
	Fri, 25 Feb 2022 08:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7841810E212
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 08:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645778231; x=1677314231;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LkCrrqeylLiZ9LaEHwRXEP773ckTuXBxVOCEu2JXvNg=;
 b=j04zjuZkwFVLxQQndr+vmPYQMLF07jXkC/4Sox4JMPbuupn8zP9TV5lt
 S+EZsnwuXvzchvigIP3J/hiArIkGuLhqIYJxlndPLDHtifvp6wSVWoruF
 UUMR/HYB2z3j1MbXJAphbUvDUUzDoe8CIE8fZcz17KIwpoQ0ee4W0XB33
 vVy7NXXLz316FFO4Bplfz1ug/W+PGbS2ZU5BIIIl7pyntDmZa973hlLU2
 A5losYsYY3cUcJxHJDd8/2qyYN34VRrZl9/MBX0GcawLUegwcV6qt2keV
 m4lAbKmM2gVQQkH7I+HV3MKxrc4aooHgNqcTcfc97kc10aMJDpcWn3yN2 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="313171572"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="313171572"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 00:37:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="790753317"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 25 Feb 2022 00:37:03 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 00:37:03 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 25 Feb 2022 00:37:02 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Fri, 25 Feb 2022 00:37:02 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 25 Feb 2022 00:37:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E4sBjAaFmB6Frj1kPyICFVp5ZUFt7iJ4YiLpJAxz/+K9aWdXHkgb6PNbelH8ZzH8cECTDwhzdFCbgooL36Di4UYLZ3SnYzLFAilF8UqxNKCsL2TD9dCee3aGG3ocNjeeEBW761WDWIICjX89CbwX9RiKfO9Yi7hzxsniyq+j7QwUxkmMkeWCyuCmqWdOjObYyw1JMXuuNpvexbeHgnse1UTR4fRPTUSB4EytK7SFOJoOjE8wPyBnK5u6dfRbksKcddUbLbUSyimKxZBbNjRwfQvKCSXm3lTx/dnpTaUVPlgH0XMMiuMu3tcUYi88k5itAEXzcqrMnZ84/Fi9m/O+3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LkCrrqeylLiZ9LaEHwRXEP773ckTuXBxVOCEu2JXvNg=;
 b=kjy7xNn6lHOcdLW/Fw8/05NATTO8aa3gJooI7T0S8wN0AJaOlw4cONo6nbsbqbv5VG6A//DBla0iQRkh5jrTXPOp6icBHcowswNzRI8H4yuSHjm6DUadiPRbgr2dT1F/wadutsMNTp5iEXMXgHYHspsxamgoEfnIJsPKc+l2XdMdncXe1MyFB9zaxI/TttSbeb2tkAPWMG38QecJR48CZ4Wd2lZrkDDDMViEVyTQJxkrIx0xne0arIg5/DpuxQDUg8InL9OVzS/7ceLX8/IsaKbEEauYTEZU1BwCXuKfiAD/VPCBO2PzJEOMLyouNnImRzQagp7Niv/MJufT53Jmvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5636.namprd11.prod.outlook.com (2603:10b6:5:357::21)
 by DM5PR11MB1580.namprd11.prod.outlook.com (2603:10b6:4:10::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Fri, 25 Feb
 2022 08:36:59 +0000
Received: from CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::98c9:45f1:1018:4fce]) by CO6PR11MB5636.namprd11.prod.outlook.com
 ([fe80::98c9:45f1:1018:4fce%9]) with mapi id 15.20.5017.026; Fri, 25 Feb 2022
 08:36:59 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>, "Navare, Manasi D"
 <manasi.d.navare@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlzcGxheS92?=
 =?utf-8?B?cnI6IFJlc2V0IFZSUiBjYXBhYmxlIHByb3BlcnR5IG9uIGEgbG9uZyBocGQg?=
 =?utf-8?Q?(rev4)?=
Thread-Index: AQHYKa6ej/pGoKZHc0GzdOm1t9l6o6yjDWrAgAAQkYCAANPYMA==
Date: Fri, 25 Feb 2022 08:36:59 +0000
Message-ID: <CO6PR11MB563641CD927437310E2F951FDE3E9@CO6PR11MB5636.namprd11.prod.outlook.com>
References: <20220223221453.26274-1-manasi.d.navare@intel.com>
 <164572828646.32675.16216405999006999887@emeril.freedesktop.org>
 <ad720c43e70648409a06071c5c986357@intel.com>
 <SJ0PR11MB5664F397F0D3B09CF90D218BE03D9@SJ0PR11MB5664.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB5664F397F0D3B09CF90D218BE03D9@SJ0PR11MB5664.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39317042-825d-4ebc-abb0-08d9f839fd47
x-ms-traffictypediagnostic: DM5PR11MB1580:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR11MB1580C37D76D72C7D3CBB7C2FDE3E9@DM5PR11MB1580.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F8xi2p8m8Zva5CoA5JfBTWNd4umrX+e4sxODv2iyyR3h8mJIVroehuOR8xd54nZDSbU6FxstwduoFrjj+GoT45axJDVZgFIcHj6XoLTDdASqtFp2hr08ttHxG91CB3CGqnO7OHsrppIYG19rbyfCxt7bmtXQ5Qp5fyzrBg334xOZRwrCkBPOZAm8nFJw5Bq0OlCuP2+eQpDbsJtb0ubuymrT7ZKTjwc0OGqlpgiy3vQ7N6K1opAh+jtEbR1hIvAwfaXhE5nQiGVQ2/EyffgRgOqFVaCnkLoopK4SOlDG4sIMBqrHbZmZEkpZX9nwz0OrnK2DttD+Bm0Hmi4IXRJx7F9KGJxyu/bdz8BYOkU/Z1AxwEefWmDUDZmbZ6EvD3XUak7BmGKL2O7lScRUC05+uZOSMQHO6dzmnbqN6c5XeQAU2CAT/1d82cRHuOwZ74AKjPyaLCwWrsIhRS5QUr8BcjIOPHl15cph8Vp2q6U4rjDTOUlibePPfgTGu1Hm1xzfhtHU0KhoTOAvB5mt9vx+YsVn8ITjFbvyEm96RXMRDanHFKslUrpADFlUaC4QjNjnmh6roQ1k8YUxKbNvecjSGzhLlV29Q9kyfpYzmq5vcOrKYPC5CtD+W8vlZ1sfqvj9L1+NOhUE0CrjRskVclzFOztfixrfc1vfjreKp9TlKpayFx9svfziKgb6TvSn/TZl4rJ+Vkdeumm0n8zcqyIpSpHkPBruYmT0j/9+2lezit5tKK/iOtgK48+YaOYszfZW+6NhZ+yCBrD6h4RiO4BmrMOF2hqglXJ3i6nyF0bobV7QH3zdSKMZOcpdv1uY23OyQKMp6DE2Gt6/HTLiM/2N3Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(2906002)(8936002)(26005)(966005)(110136005)(107886003)(9686003)(86362001)(38100700002)(33656002)(54906003)(52536014)(55016003)(316002)(53546011)(38070700005)(508600001)(84970400001)(71200400001)(82960400001)(186003)(122000001)(4326008)(64756008)(7696005)(66446008)(66476007)(66556008)(83380400001)(76116006)(66946007)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3FmamU0blQrbEpyelhtV0gzSHVjQnNtNk1SYlNTSk1jNEt2YWpGRlhFQWJx?=
 =?utf-8?B?SVhoa3BLTk51ODUxMzltUDMydFoxdUFwRHJqdUM3STZpRGh4SlQ2TWY1ZGJ2?=
 =?utf-8?B?RWk1T2c1cjVCd0ZzOFE1bWZoWHoxanAyRWxVMllPTy84VXBsUWdRN0ZONmpH?=
 =?utf-8?B?NGE4QVdGOUxVSDVuK0YzOWptUDJsSmJrMk1oVURDMlhkWHV1MDRFK0h4bG5T?=
 =?utf-8?B?WVJoOXFNbzJtRHIvdlM3c1JSSW1kR2E3L3E3c3FxOWczbnZnNThqT0NqcEk2?=
 =?utf-8?B?MDJTRmJaVE5CQ2lHSXJMeW9EcUpGLzlza1VxQjRmcDZzejc0cWx1d0dadmN2?=
 =?utf-8?B?aU0vQTczZWZkK2ZMNDEySmNDMTFiQVNIV1llRUdEUzJ2Uld3aWdnTk5MaFZP?=
 =?utf-8?B?T2NubnNjaUVqeUZ3VHZOZmttaFlTOVFxbENTQ3JlbGZyOEQ0YTZzL3h2ay9t?=
 =?utf-8?B?Qnl4bFpaMW5yOVBqangxZnNjV3BxenJwV3FTZ21KR3k5TzJ0Nm5rUDZ4VCtO?=
 =?utf-8?B?ZHhWeGp5U1U5TDB6OW9BZkFPazVad00zbm5BL1lmUG90R0VaaTVLOXAvL1Nh?=
 =?utf-8?B?RHV1M3ZBSW8zdWI4ODJFZDUySE02bzJIaUczeDFWTzBsZEQ5bFZkVEQ2bFVk?=
 =?utf-8?B?SEFJY0JFODI0SjRSNU5Fc0YvRnJEMTY5L1oxaDBUVjMzRFhwbU9LNVF0b2lP?=
 =?utf-8?B?STRTaFZKR1pQM3pOVllXYTE2d21UUVU1cjlLK0p4cG93QjZtYlRnaURvd3VS?=
 =?utf-8?B?by9LckVIQnd4VkVRTnc2UThTb3lsVlVuS0VlUU8waUxJbm0zMTJVK2N2SU9s?=
 =?utf-8?B?anFEOG85UEtYQTRrUWNkOUJNdlUrbVRkalMzRGpZS1BLcWJNTG9qVTVNNHhV?=
 =?utf-8?B?VUhEdGs1cXoxNm9YTlBFaDFpRDc2TndQU25UdTg2ejFUN3d1RE5jTnJDUEtM?=
 =?utf-8?B?b2dNcytVWWtNWXVIR0E2Z0dvVkhJaFBNUUZ0QW1DNUVsN2x6Y09kbjYxczhD?=
 =?utf-8?B?RHkwcUFKM1p1RlJ2MVFpcVVvNW5qNkRkRDJtV2FmU3lEWGhPRDBNWG5vWDFV?=
 =?utf-8?B?SzFtcGJjWDNML1JIMUNiUFJSVWVQYUU0ODNOZGF4NlVmcTZaZ0pWbVpDeVVV?=
 =?utf-8?B?cU42cExyb3lzeEJmNjFUNUV6eWhiQ3lrdGxxamF0ZDV3Y0R2Y3pDN3laWTlV?=
 =?utf-8?B?b1VlZ25TOUw4alhodWxTZExaem5vM2c0aDJuL1NEZVhGOE4wY3RQcEZlN2Jl?=
 =?utf-8?B?M1RTOUx5azRjckpPb3JRMGtWODdmdVdlRDIrR2gxNlBNZXM3bzVPVU5GWkh4?=
 =?utf-8?B?SGY4ek9MY1dHQVFDYi9uSTBuVDBMRHo2UkkwSUswRVhRTnp1cnI0Znh2cFBR?=
 =?utf-8?B?RHIxVm5Wc3I0Mk5tc3o4MVdnYldPMFJBeEJ6dFkzRXFzT3BuSG1XbmFrMnFV?=
 =?utf-8?B?ZHI1dkFjOCtFMm5Vd2RhVWFNUVhqVHV5OE92VEhncTVxSEpzUFhLenFGcU9V?=
 =?utf-8?B?QkpCMjlSNkJxNnZvQWR1MEZkRnd6NWxud0NWQVpmanZSQUpHbTV3RUhLWVhh?=
 =?utf-8?B?WFp5M0xLMXJUMUZXd2dSTVNrVDFQVEpna2k5V0ZLTEw5RHN5ZXNmTFFZMkEv?=
 =?utf-8?B?N3JlREJmNHRZNHg1OVJ4RFc1ZlQrUzJRaUtsSjErTnFDd0l3dmk4Vld1ZUI5?=
 =?utf-8?B?bG4rSFRYWXROZVRtd0kyaC9qM1dwWGg5VDBpbG1ua0dHaVhDeHlXN1RWTGRP?=
 =?utf-8?B?ZitzQThkdEdpODYxTEcyc2VKSDYyelI0NGNPSUNQWFhDWlh0bk45cGsxMzBw?=
 =?utf-8?B?VmtiR29sa2lDRkFpb0ZMVGtaSVFsbHdsU1VvUTJONFhwT2NjdUN5dGoxQU9L?=
 =?utf-8?B?LzhRNEQzQnJNSFc1WSsxaCtGbWxRcTcybDZUbEpUbEZONEQwMWRRWjFUd2ZG?=
 =?utf-8?B?dEdZYmYvU2ZxWnI3aThncWcvS1N4K2pHbldTazllOUFvUzNzbU4wMm1JbXdr?=
 =?utf-8?B?ZDJYQWtYYVdXUlpyMnR3dytLczJJelltN2UvdXJ6VEdNZEhjYlo5a3Y2STh3?=
 =?utf-8?B?U0xWU0hPajV0OTcrRkpuTHl1MEJ5VWJoVWpHRiszeklDUitoWTZ4anRyU1Zl?=
 =?utf-8?B?SkxkdStjc3ZpOENxVW5RT3hyNVNia3lra3pQVXNCNi85QmZqUFVjaGtZV3BV?=
 =?utf-8?B?WllvOXpoODM0VUN5d2VXakdXekVubHZnV3NYc3NmVEJjUjBzbzhCaitQYjlN?=
 =?utf-8?B?N1gxeEhaaUNIRzFRdno2VFRWZFlRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39317042-825d-4ebc-abb0-08d9f839fd47
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2022 08:36:59.5324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4zTpYEiFRAQK+8xchkGOsqKl2Ka+GGWaLOB4672Z9yS4MayZgqOO+WSJe8RPvYQ8rgDqIO6pFCloHRUiJXzkUFQMgR77SS6WmNhcJ1KxRr8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1580
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/vrr=3A_Reset_VRR_capable_property_on_a_long_hpd_?=
 =?utf-8?b?KHJldjQp?=
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiBGcm9tOiBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+DQo+ID4gRnJv
bTogTmF2YXJlLCBNYW5hc2kgRCA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4NCj4gPiBTdWJq
ZWN0OiBSRTog4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlzcGxheS92cnI6
IFJlc2V0IFZSUg0KPiBjYXBhYmxlDQo+ID4gcHJvcGVydHkgb24gYSBsb25nIGhwZCAocmV2NCkN
Cj4gPg0KPiA+IEhpLA0KPiA+DQo+ID4NCj4gPg0KPiA+IEkgZml4ZWQgdGhlIHJlZ3Jlc3Npb24g
aW4gdGhpcyBwYXRjaCBhbmQgcmVzZW50IGl0LCBpdCBzdGlsbCBoYXMgQkFUIGZhaWx1cmVzLCBJ
DQo+IHdhbnRlZA0KPiA+IHRvIHVuZGVyc3RhbmQgaWYgaXQgZmFpbGVkIHRvIGJvb3Qgc29tZSBv
ZiB0aGUgbWFjaGluZXMgYWdhaW4gb3IgdGhlIGVycm9ycw0KPiBmbGFnZ2VkDQo+ID4gaGVyZSBh
cmUgdGhlIGtub3duIGVycm9ycy4NCj4gPg0KPiA+DQo+ID4NCj4gPiBSZWdhcmRzDQo+ID4NCj4g
PiBNYW5hc2kNCj4gPg0KPiA+DQo+ID4NCj4gPiBGcm9tOiBQYXRjaHdvcmsgPHBhdGNod29ya0Bl
bWVyaWwuZnJlZWRlc2t0b3Aub3JnPg0KPiA+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAyNCwg
MjAyMiAxMDo0NSBBTQ0KPiA+IFRvOiBOYXZhcmUsIE1hbmFzaSBEIDxtYW5hc2kuZC5uYXZhcmVA
aW50ZWwuY29tPg0KPiA+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4g
U3ViamVjdDog4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlzcGxheS92cnI6
IFJlc2V0IFZSUiBjYXBhYmxlDQo+IHByb3BlcnR5DQo+ID4gb24gYSBsb25nIGhwZCAocmV2NCkN
Cj4gPg0KPiA+DQo+ID4NCj4gPiBQYXRjaCBEZXRhaWxzDQo+ID4NCj4gPiBTZXJpZXM6DQo+ID4N
Cj4gPiBkcm0vaTkxNS9kaXNwbGF5L3ZycjogUmVzZXQgVlJSIGNhcGFibGUgcHJvcGVydHkgb24g
YSBsb25nIGhwZCAocmV2NCkNCj4gPg0KPiA+IFVSTDoNCj4gPg0KPiA+IGh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvOTg4MDEvDQo+ID4NCj4gPiBTdGF0ZToNCj4gPg0K
PiA+IGZhaWx1cmUNCj4gPg0KPiA+IERldGFpbHM6DQo+ID4NCj4gPiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18yMjM5NC9pbmRleC5odG1sDQo+ID4N
Cj4gPg0KPiA+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzExMjc5IC0+IFBhdGNo
d29ya18yMjM5NA0KPiA+DQo+ID4NCj4gPiBTdW1tYXJ5DQo+ID4NCj4gPg0KPiA+IEZBSUxVUkUN
Cj4gPg0KPiA+IFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18y
MjM5NCBhYnNvbHV0ZWx5IG5lZWQNCj4gdG8gYmUNCj4gPiB2ZXJpZmllZCBtYW51YWxseS4NCj4g
Pg0KPiA+IElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8g
ZG8gd2l0aCB0aGUgY2hhbmdlcw0KPiA+IGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzIyMzk0LCBw
bGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhlbQ0KPiB0bw0KPiA+IGRvY3Vt
ZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRp
dmVzIGluIENJLg0KPiA+DQo+ID4gRXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tDQo+ID4gdGlwL1BhdGNod29ya18yMjM5NC9pbmRleC5odG1sDQo+ID4N
Cj4gPg0KPiA+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDQzIC0+IDMyKQ0KPiA+DQo+ID4NCj4gPiBN
aXNzaW5nICgxMSk6IGZpLWtibC1zb3Jha2EgZmktY21sLXUyIGZpLWJzdy1jeWFuIGZpLWlsay02
NTAgZmktYXBsLWd1YyBmaS1rYmwtDQo+IDc1MDB1IGZpLQ0KPiA+IGtibC14MTI3NSBmaS1jZmwt
ODEwOXUgZmktYnN3LWtlZmthIGZpLWJkdy1zYW11cyBmaS1za2wtNjYwMHUNCj4gV291bGQgYmUg
Z29vZCB0byB1bmRlcnN0YW5kIHdoeSB0aGVyZSBpcyB0aGlzIG1hbnkgc3lzdGVtcyBkb3duIHN0
aWxsLiBBbHNvDQo+IGFyZSB0aGVzZSBzYW1lIHRoYW4gb24gcHJldmlvdXMgc2VyaWVzLi4uDQo+
IFByZXZpb3VzIHdhcyBtaXNzaW5nOg0KPiAtLQ0KPiBNaXNzaW5nICgyOSk6IGZpLWtibC1zb3Jh
a2EgZmktYmR3LWd2dGR2bSBmaS1hcGwtZ3VjIGZpLXNuYi0yNTIwbSBmaS1za2wtNjYwMHUNCj4g
Zmktc25iLTI2MDAgZmktY21sLXUyIGZpLWJ4dC1kc2kgZmktYmR3LTU1NTd1IHNoYXJkLXRnbHUg
ZmktYnN3LW4zMDUwIGZpLWdsay1kc2kNCj4gZmktaWxrLTY1MCBmaS1rYmwtNzUwMHUgZmktaHN3
LTQ3NzAgZmktaXZiLTM3NzAgZmktZWxrLWU3NTAwIGZpLWJzdy1uaWNrIGZpLXNrbC0NCj4gNjcw
MGsyIGZpLWtibC03NTY3dSBmaS1za2wtZ3VjIGZpLWNmbC04NzAwayBmaS1ic3ctY3lhbiBmaS1j
ZmwtZ3VjIGZpLWtibC1ndWMgZmktDQo+IGtibC14MTI3NSBmaS1jZmwtODEwOXUgZmkta2JsLTg4
MDlnIGZpLWJzdy1rZWZrYQ0KPiAtLQ0KPiBTbyB0aGVyZSBhcmUgc2FtZSBzeXN0ZW1zLiBUb21p
LCB3aGF0IGlzIHRocmVzaG9sZCBob3cgbWFueSBzeXN0ZW1zIG5lZWQNCj4gdG8gaGF2ZSBib290
IGlzc3VlcyBhbmQgaGF2aW5nDQo+IEp1c3QgbG9va2luZyBzb21lIHNhbWUgc3lzdGVtcyBvbiBi
b3RoLi4uOg0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18yMjM5NC9maWxlbGlzdC5odG1sDQo+IGVnLiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18yMjM5NC9maS1rYmwtDQo+IHNvcmFrYS9ydW4wLnR4
dA0KPiBhbmQgaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMjIzOTQvZmkta2JsLQ0KPiA3NTAwdS9ydW4wLnR4dCAsIHRoZXJlIGlzIGFsc28gb29wcyBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMjIz
OTQvZmkta2JsLTc1MDB1L3BzdG9yZTAtMTY0NTcyNjU2Nl9Pb3BzXzEudHh0DQo+IEkgd291bGQg
c2F5IG5vdCBjbGVhbiByZWFsbHkgeWV0Li4uLg0KDQpUaGUgdGhyZXNob2xkIGlzIDUwJSBvZiBo
b3N0cy4gQ291cGxlIG9mIHRob3NlIG5vdyBtaXNzaW5nIGFyZSBwcm9ibGVtDQpjaGlsZHJlbiwg
YnV0IHRoZXJlJ3MgYWxzbyBzb21lIHRoYXQgc2hvdWxkIG5vdCBiZSBkb3duLg0KDQpQbGVhc2Ug
cmUtdGVzdCB0aGUgc2VyaWVzLCBhbmQgaWYgdGhlIHJlc3VsdCBsb29rcyB0aGUgc2FtZSwgdGhl
biB0aGVyZQ0KaXMgcHJvYmFibHkgcmVhbCBpc3N1ZSB3aXRoIHRoZSBwYXRjaC4NCg0KVG9taQ0K
DQoNCj4gDQo+IA0KPiA+DQo+ID4NCj4gPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+ID4NCj4gPg0K
PiA+IEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJv
ZHVjZWQgaW4NCj4gPiBQYXRjaHdvcmtfMjIzOTQ6DQo+ID4NCj4gPg0KPiA+IElHVCBjaGFuZ2Vz
DQo+ID4NCj4gPg0KPiA+IFBvc3NpYmxlIHJlZ3Jlc3Npb25zDQo+ID4NCj4gPg0KPiA+ICoJaWd0
QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtczBAc21lbToNCj4gPg0KPiA+IAkqCWZpLXNrbC02NzAw
azI6IFBBU1MgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tDQo+ID4g
dGlwL0NJX0RSTV8xMTI3OS9maS1za2wtNjcwMGsyL2lndEBnZW1fZXhlY19zdXNwZW5kQGJhc2lj
LQ0KPiA+IHMwQHNtZW0uaHRtbD4gIC0+IERNRVNHLVdBUk4gPGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS0NCj4gPiB0aXAvUGF0Y2h3b3JrXzIyMzk0L2ZpLXNrbC02NzAwazIv
aWd0QGdlbV9leGVjX3N1c3BlbmRAYmFzaWMtDQo+ID4gczBAc21lbS5odG1sPg0KPiA+DQo+ID4N
Cj4gPiBLbm93biBpc3N1ZXMNCj4gPg0KPiA+DQo+ID4gSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91
bmQgaW4gUGF0Y2h3b3JrXzIyMzk0IHRoYXQgY29tZSBmcm9tIGtub3duDQo+IGlzc3VlczoNCj4g
Pg0KPiA+DQo+ID4gSUdUIGNoYW5nZXMNCj4gPg0KPiA+DQo+ID4gSXNzdWVzIGhpdA0KPiA+DQo+
ID4NCj4gPiAqCWlndEBhbWRncHUvYW1kX2Jhc2ljQGNzLW11bHRpLWZlbmNlOg0KPiA+DQo+ID4g
CSoJZmktYmxiLWU2ODUwOiBOT1RSVU4gLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+ID4g
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjIzOTQvZmktYmxiLQ0KPiA+IGU2ODUw
L2lndEBhbWRncHUvYW1kX2Jhc2ljQGNzLW11bHRpLWZlbmNlLmh0bWw+ICAoZmRvIzEwOTI3MQ0K
PiA+IDxodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDkyNzE+
ICkgKzE3IHNpbWlsYXINCj4gaXNzdWVzDQo+ID4NCj4gPiAqCWlndEBydW5uZXJAYWJvcnRlZDoN
Cj4gPg0KPiA+IAkqCWZpLXNrbC02NzAwazI6IE5PVFJVTiAtPiBGQUlMIDxodHRwczovL2ludGVs
LQ0KPiBnZngtDQo+ID4gY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjIzOTQvZmkt
c2tsLQ0KPiA+IDY3MDBrMi9pZ3RAcnVubmVyQGFib3J0ZWQuaHRtbD4gIChpOTE1IzQzMTINCj4g
PiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNDMxMj4g
KQ0KPiA+DQo+ID4NCj4gPiBQb3NzaWJsZSBmaXhlcw0KPiA+DQo+ID4NCj4gPiAqCWlndEBpOTE1
X3NlbGZ0ZXN0QGxpdmVAaGFuZ2NoZWNrOg0KPiA+DQo+ID4gCSoJYmF0LWRnMS02OiBETUVTRy1G
QUlMIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiA+IHRpcC9D
SV9EUk1fMTEyNzkvYmF0LWRnMS02L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaGFuZ2NoZWNrLmh0
bWw+DQo+ID4gKGk5MTUjNDQ5NCA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9p
bnRlbC9pc3N1ZXMvNDQ5ND4gIC8NCj4gaTkxNSM0OTU3DQo+ID4gPGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzQ5NTc+ICkgLT4gUEFTUw0KPiA8aHR0cHM6
Ly9pbnRlbC0NCj4gPiBnZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjIzOTQv
YmF0LWRnMS0NCj4gPiA2L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAaGFuZ2NoZWNrLmh0bWw+DQo+
ID4NCj4gPiAqCWlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAcmVxdWVzdHM6DQo+ID4NCj4gPiAJKglm
aS1ibGItZTY4NTA6IERNRVNHLUZBSUwgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcv
dHJlZS9kcm0tDQo+ID4gdGlwL0NJX0RSTV8xMTI3OS9maS1ibGItZTY4NTAvaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUByZXF1ZXN0cy5odG1sPg0KPiA+IChpOTE1IzUwMjYgPGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzUwMjY+ICkgLT4NCj4gUEFTUw0KPiA+
IDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18yMjM5
NC9maS1ibGItDQo+ID4gZTY4NTAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUByZXF1ZXN0cy5odG1s
Pg0KPiA+DQo+ID4gKglpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0KPiA+DQo+
ID4gCSoJe2JhdC1hZGxwLTZ9OiBETUVTRy1XQVJOIDxodHRwczovL2ludGVsLWdmeC0NCj4gPiBj
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMTI3OS9iYXQtYWRscC0NCj4gPiA2L2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbD4gIChpOTE1IzUwNjgNCj4gPiA8aHR0
cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTA2OD4gKSAtPiBQ
QVNTDQo+IDxodHRwczovL2ludGVsLQ0KPiA+IGdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18yMjM5NC9iYXQtYWRscC0NCj4gPiA2L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29y
a2Fyb3VuZHMuaHRtbD4NCj4gPg0KPiA+ICoJaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtbW9k
ZXNldEBhLWVkcDE6DQo+ID4NCj4gPiAJKgl7YmF0LWFkbHAtNn06IERNRVNHLVdBUk4gPGh0dHBz
Oi8vaW50ZWwtZ2Z4LQ0KPiA+IGNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzExMjc5L2Jh
dC1hZGxwLTYvaWd0QGttc19mbGlwQGJhc2ljLQ0KPiBmbGlwLXZzLQ0KPiA+IG1vZGVzZXRAYS1l
ZHAxLmh0bWw+ICAoaTkxNSMzNTc2DQo+ID4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaW50ZWwvaXNzdWVzLzM1NzY+ICkgLT4gUEFTUw0KPiA8aHR0cHM6Ly9pbnRlbC0NCj4g
PiBnZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjIzOTQvYmF0LWFkbHAtDQo+
IDYvaWd0QGttc19mbGlwQGJhc2ljLQ0KPiA+IGZsaXAtdnMtbW9kZXNldEBhLWVkcDEuaHRtbD4N
Cj4gPg0KPiA+IHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMg
aXQgaXMgaWdub3JlZCB3aGVuDQo+IGNvbXB1dGluZyB0aGUNCj4gPiBzdGF0dXMgb2YgdGhlIGRp
ZmZlcmVuY2UgKFNVQ0NFU1MsIFdBUk5JTkcsIG9yIEZBSUxVUkUpLg0KPiA+DQo+ID4NCj4gPiBC
dWlsZCBjaGFuZ2VzDQo+ID4NCj4gPg0KPiA+ICoJTGludXg6IENJX0RSTV8xMTI3OSAtPiBQYXRj
aHdvcmtfMjIzOTQNCj4gPg0KPiA+IENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiA+IENJX0RSTV8x
MTI3OTogNTMwMWNjODViM2NjMGVhYTM3NDA1YTExN2M3N2EzNWRiN2Y0YTc2ZCBADQo+ID4gZ2l0
Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ID4gSUdUXzYzNTY6IGI0
MDNkOGU3M2M2ODg4NTYxZWFlYzk3ODM1Njg4MzEzYjA3NjNjZTkgQA0KPiA+IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaWd0LWdwdS10b29scy5naXQNCj4gPiBQYXRjaHdvcmtf
MjIzOTQ6IDI0NGYzNmU1MTkwYzE3NmJlM2VjMmZiYzlmYzE4YzYzYjgzODM2MjEgQA0KPiA+IGdp
dDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiA+DQo+ID4gPT0gTGlu
dXggY29tbWl0cyA9PQ0KPiA+DQo+ID4gMjQ0ZjM2ZTUxOTBjIGRybS9pOTE1L2Rpc3BsYXkvdnJy
OiBSZXNldCBWUlIgY2FwYWJsZSBwcm9wZXJ0eSBvbiBhIGxvbmcNCj4gaHBkDQoNCg==
