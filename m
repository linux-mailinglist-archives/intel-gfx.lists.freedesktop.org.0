Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1711E846E23
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 11:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E01610EFF6;
	Fri,  2 Feb 2024 10:42:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MVEqpn4z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB0D110EC42
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 10:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706870558; x=1738406558;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LNTIUS1IZM0nMofgXWHXXizJwV9BN+GkNt+89hSD5Rc=;
 b=MVEqpn4z+eCve/DF0TQRSSWVMfBOFZID3IqFIotBxW/FWD56tlYuwxhR
 04y5R1lqMuYWVQTsBMtUYcGFoKNmvaUNBEWbx1XLn/6DFOzeDzXvsdqec
 bi6EqYZBDuTEe8Z2XgQFyGmw6zbT65TuQq0YOaiGWaW5Ax5ShEChpz3DK
 9xwa4vqf7wqDglB8LGp8qd+KH39usLw5Yg25U6Kn01+QPNWk0r0aC6icN
 yMKi1ITTbIWth9yFiVHkirKLllGzaYM8EznnTvkCwYPEKzRQVIl11FSKI
 N49H18F/Vvqi+iNVIO0Y99UMLwSJGFbNZkeWclXtljfYsZl6GLFGi+2xf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="17661329"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="17661329"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 02:42:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="23334655"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 02:42:37 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 02:42:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 02:42:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 02:42:36 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 02:42:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hzOFo7QA68bEtZjf/uOvvZyYTSHANXc78VXAByoUvIRzo3scKH8/38Rx57aCRJ6lgz+F3GE9M+9NecbtRLFimxiXYfBVXBpJ2pLIKefEkQaW27mIEe1lCorMcDItrTqqMt8PG4haHDXe5ZrXtX0fLXjNVR2JAfEAUhV09j75lokj692TGMoYXcMpQqMAuq5Pmx/neCFlfuESv0VCVuIfTUByytn+C7ra94+JWd44vzuaP5ZQIVZxpEFUOybjN4RbfHeV+YbgVr6TN4JjzLNHDnqyfSLAjiS8XTl8rNUJ+Mnk4k387Vf0lTFHQBDrrD9oPAm3bhVx7InPzvHJWfK5oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LNTIUS1IZM0nMofgXWHXXizJwV9BN+GkNt+89hSD5Rc=;
 b=FJSLRHye1PVq083FQo8rGM8DjhTZECasuhbxxBdRZHk8/ADfNzYhJ0rD8sWsDlBQ7ZIw9RN8KAo9ZMvKe6Dsd4l2QQYHVHET2Dx6sVnT33Xce1fSf+5M+P2TKi/OyKaOYY17yvDvplbIpKIomj+buxlwpCZdWLg3EOEkGiw31TyfpFOV3ISrrjaho1U26BwDmigZocRoui4fcCSgSVRyG0fmrwGI57oHUhe4avI+v1FJtpY7Pr8sSeWtxQO8U/opwrXkJulMwubC6p4YvRrwJHnllgeHJWD3DMxNnKKXL/byvCrqYXXZiHodaV6QK43IcEjWY3YuFPv5P5rLWYywvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB6718.namprd11.prod.outlook.com (2603:10b6:a03:477::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.28; Fri, 2 Feb
 2024 10:42:33 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 10:42:33 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 07/21] drm/i915/psr: Do not write registers/bits not
 applicable for panel replay
Thread-Topic: [PATCH v3 07/21] drm/i915/psr: Do not write registers/bits not
 applicable for panel replay
Thread-Index: AQHaSr/U4/A/Pemiw0m60oPVTUHCFbD28x0g
Date: Fri, 2 Feb 2024 10:42:33 +0000
Message-ID: <PH7PR11MB598164C39DA94CEFB48BA613F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-8-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-8-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB6718:EE_
x-ms-office365-filtering-correlation-id: 32bb9bef-7ba2-4fc8-325c-08dc23dba9c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eIYNMDWzPjtEwhK4dPYMdilC8EeRf5FmTl6rGnGCpWm+AOExefXL3+jLNxLjyIQ8GXl5xFWx/R2eOyCBw3BEDqRJMBj+FIkySyL8kczL+lat1kLBoI4J4ONUu2C+i5/4iGcAxYKAR4mkTAnEIhwyve767HnVTPHbc6MHqIVtQMW8LnDuTw+KaUFnnvB2VQRx0BK4YzX0xb32J+vd0OmkE5Si8sPE5ACqycA2ZHZzcb/3Aw7Wb2KLpUUY7f8p5ZFAdgZdfdOVtrw7xOApswluNB86XFOM+bWZi1w3q8pxTjH+Po81VvZRULBOW8gf23KtcJh75w68xrQXIlq3i5Abje2HsrlXKJnXp6zOiz6+oFJ8Wr92DBGZnvucmgA8tKnSpqGHySp2ZvVpGAdrnQ7xkYWs55cPw6Rn3MOku3SBIR4rvyHZxzAOEgebucgTNPq3jOfchJLFXg0S3B7x+GE4gFxO3dtneOg3DDfGSf8oafTBGsMEiwEUHJe1bhiOo55fXYqDcfOamt99NQ2JMHXSdPcvzBncWBMX+a5nnvMQzUiExiIbaU5Ro2BObn27ebwYrVa+RYr8mOjN02LM4yvtVRkdSb3aPdMnh/ip3ZDTCIFUr6bPQvInKODLRSRcsC5y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(346002)(376002)(396003)(39860400002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(83380400001)(26005)(9686003)(122000001)(38100700002)(8936002)(52536014)(5660300002)(66476007)(8676002)(478600001)(71200400001)(53546011)(2906002)(7696005)(6506007)(110136005)(316002)(66446008)(66556008)(64756008)(66946007)(76116006)(38070700009)(41300700001)(33656002)(82960400001)(86362001)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R3g1UUFrRDRHbDBtMllUZUd5eGFYclFIeEQxcDdVc21weXkrT2tBZHdIQXFG?=
 =?utf-8?B?TUNhazhMYkhhNExLYzI1ZHVGajBXQ05IT3hPdkh6VndKZHAzUm4wTXVPZWkx?=
 =?utf-8?B?Qzlhb1ZNRzFUWk9nMU0rK0c2eExRb0pwQ1A0RTIvcDVJM2tCaERGTG5pSzNB?=
 =?utf-8?B?bkpMQUJrMk5RclpxZTZUdzZmRXBBVXNuY0taWm5yZzl3TDUzZWdZTm82SzI4?=
 =?utf-8?B?czI4RFpYYjd1MkV4eTNvRnZ5VkIxa2JzNm15YUJPTE9JRHZjVWprZ2VZRTZY?=
 =?utf-8?B?RlhUWEJuV1RkNzZxeHlpZDZ3UkY5VkNocDhwYStIVkNERVh4QVQyd3FKZnV3?=
 =?utf-8?B?dEw5UWwzOXBzN3RQaG1wenRCTEcwRFgrUEpPSzRrUnppVHZRUm96eW1JL1l2?=
 =?utf-8?B?NGxocG92R0s5dXo4cnJUaC9HU2ZWZnZ0M0RObmxKRWIzZVhSUWRkaDVGOHRW?=
 =?utf-8?B?NDRsaWF6TWkrYWEzT0t4MTE5SWt5eDZ0SWUxdlZzKzZPcXhtSDZOTHNoQjRE?=
 =?utf-8?B?eFMrQWFKQU1VcFlqTGsrV0xZbXFPU2gwMExEZk8yNGRacVFMUE1pQUVnK1pQ?=
 =?utf-8?B?eVhtanBkUkYyMGpQRE9mcHVYZjhsSjZ5V3UvajQrSDk4Q0p3NGErL2ZCZGRt?=
 =?utf-8?B?cnh4VXNXZHNLZk9mdnVaZU84RnlNMnVIS2JrbnVRbnkrdW9BTk1pN3JEVEJT?=
 =?utf-8?B?WVhHR3JEMi9nMlZBVFVKSmM1MkVSc0JWQjJLeXI1Tm0ydHpESEMvYzFjRU9M?=
 =?utf-8?B?ZGRnYU9OU3VENVhqMHJKL1hidUZEN3B5WllBSjBEdjZlUzRNNVpZQ2Ivd1Fq?=
 =?utf-8?B?ZTlJdUt5OVJNZktBUHJXNHEyazVzUUdsRTZKa1UvSjcySEZLNVVsVGpmTW1M?=
 =?utf-8?B?b1k1c0ZDWlV0RWhZWFdYSHFqeWlBTHZmQXp3dXIrUUREMkFkTnlKMlgxWVFF?=
 =?utf-8?B?cUtvQUZKRW50ODlRbWlKTWJHVGh6KzRGUFMwZlNrR1NQcFhRWHlvTEVEVGNu?=
 =?utf-8?B?dW5LRkY1N1ZCY0k2STFyTUhEK3Z2OGZncmNscGxyRHYrZkxSN21XRlNXbGpI?=
 =?utf-8?B?M25VMjBkSFJTOTF2Q1FkclFTSUcxSTFJTXloaUlXQTBJTkwvUDNpQkJ2c3BJ?=
 =?utf-8?B?VnVicGw5TDRnVHo5bW10WWh6cHBGcUxNalJJRTA1UitsVVVRNHI3bE15RG50?=
 =?utf-8?B?K3gzTDJEenE4cTNQT1E0U3FsUlhVVXhMdmt2bFkyZFVNZWJXZGtKa3I1Vzlo?=
 =?utf-8?B?amRGK3NWczRZZGtJcmNVUGp0MHZ3MnRDOXVzN1pSOVRBWG9uUnJOenRQVUlr?=
 =?utf-8?B?UzhHWi81dXdjUkF3ZzVBRGZvWDFjcnhlcEFhZGE4b0xtSnhkR00zendHRndp?=
 =?utf-8?B?Q3dpNVJCdlhEd2dUZ2tUYVgxUThxMkZMWm1yTU41ME5kUkl3eWRIU2lZSHV0?=
 =?utf-8?B?UWpVWnVWVzUzQmRiQTVPRGVMdWt3ZU8vZWdXdmVnSDVHTDBVejRBVW9iNW0y?=
 =?utf-8?B?dS9SRWh1UDlZeDVtYXJUZS8vUVBjSmFwVktrSHJ4azBBSlN0azBUMnRJd3lX?=
 =?utf-8?B?ZlFrNlVsUjQyMDVKRVJUVFUvRVZzSVpMTkpKR1BIZlE2NFQwVDl1Zi8ranhY?=
 =?utf-8?B?Tlpya1BNbjZxSHh4Z1V6WGFLY05DYmI1RjBnbWVsWjFrYUg0L2dpWmVYc0gy?=
 =?utf-8?B?eER0ckl5bzcvaSt0VEprV2Q1WlhDVGJiemZqcUMzN2N6NVI3N004SlRySjQv?=
 =?utf-8?B?cGVjT2NKU09teDJGc1lhcUZxUmxsQ3hSaVRxbC9DVFJxWjNQRUwxNXh2M2ZI?=
 =?utf-8?B?YVhWN1lvcGdIRFhlaDJrUlN5aVZHMVRGb0s2WjlsblBXUkwzc2phaWtiNFZi?=
 =?utf-8?B?WmdxU0NMT1p3NlJHVS9QeG5zak0xa1hsM2R1MGVwRmhZZ2FGY3gzWENiUGZL?=
 =?utf-8?B?b3h2UHhoM1NlYmN1ZENlcDdxbVYvSElRYVlGL0lOTk1xbDhFSVJSTUdmR3JJ?=
 =?utf-8?B?UkFCN2VJV3p1dkNVclBEbDZ4YVRIR1BlWHkyUHNwM2YycjZsY0IvRnEyYkhv?=
 =?utf-8?B?WVh1TEh1ODZRYmhVRVZGQ1creHA4Ly8wV3VGajZidGVudWJhRnc5WmoyejZS?=
 =?utf-8?Q?VNR8ANUhZeimTn8qHDOBveAD0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32bb9bef-7ba2-4fc8-325c-08dc23dba9c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 10:42:33.2169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xio70Uv36QTQaUbuMe2AmzErgGxzEZ7G+3GTjcSC4OphC2H4wKWKSFR+6Gr63yTPj6KwFSv1UZK5hXEEVs6cyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6718
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDA3
LzIxXSBkcm0vaTkxNS9wc3I6IERvIG5vdCB3cml0ZSByZWdpc3RlcnMvYml0cyBub3QNCj4gYXBw
bGljYWJsZSBmb3IgcGFuZWwgcmVwbGF5DQo+IA0KPiBGcm9tIGJzcGVjOg0KPiANCj4gQWRkaXRp
b25hbCBwcm9ncmFtbWluZyBjb25zaWRlcmF0aW9ucyAocmVwdXJwb3NlZCBlRFAgcmVnaXN0ZXJz
KQ0KPiANCj4gbWFzayByZWdpc3RlcjogT25seSBQU1JfTUFTS1tNYXNrIEZCQyBtb2RpZnldIGFu
ZCBQU1JfTUFTS1tNYXNrDQo+IEhvdHBsdWddIGFyZSB1c2VkIGluIHBhbmVsIHJlcGxheSBtb2Rl
Lg0KPiANCj4gU3RhdHVzIHJlZ2lzdGVyOiBPbmx5IFNSRF9TVEFUVVNbU1JEIHN0YXRlXSBmaWVs
ZCBpcyB1c2VkIGluIHBhbmVsIHJlcGxheQ0KPiBtb2RlLg0KPiANCj4gRHVlIHRvIHRoaXMgc3Rv
cCB3cml0aW5nIGFuZCByZWFkaW5nIHJlZ2lzdGVycyBhbmQgYml0cyBub3QgdXNlZCBieSBwYW5l
bA0KPiByZXBsYXkgaWYgcGFuZWwgcmVwbGF5IGlzIHVzZWQuDQo+IA0KPiBCc3BlYzogNTMzNzAN
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFu
bmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyB8IDIzICsrKysrKysrKysrKysrKysrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTggaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA2ZDdlZjc0MjAxZDIuLjJkNWQx
YzJjZTI0NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IEBAIC0zNDYsNiArMzQ2LDkgQEAgc3RhdGljIHZvaWQgcHNyX2lycV9jb250cm9sKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVy
ID0gaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyOw0KPiAgCXUzMiBtYXNrOw0KPiANCj4gKwlpZiAo
aW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gKwkJcmV0dXJuOw0KPiArDQo+
ICAJbWFzayA9IHBzcl9pcnFfcHNyX2Vycm9yX2JpdF9nZXQoaW50ZWxfZHApOw0KPiAgCWlmIChp
bnRlbF9kcC0+cHNyLmRlYnVnICYgSTkxNV9QU1JfREVCVUdfSVJRKQ0KPiAgCQltYXNrIHw9IHBz
cl9pcnFfcG9zdF9leGl0X2JpdF9nZXQoaW50ZWxfZHApIHwgQEAgLTE1NTksMTMNCj4gKzE1NjIs
MTkgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwNCj4gIAkgKiBtYXNrIExQU1AgdG8gYXZvaWQgZGVwZW5kZW5jeSBvbiBvdGhl
ciBkcml2ZXJzIHRoYXQgbWlnaHQgYmxvY2sNCj4gIAkgKiBydW50aW1lX3BtIGJlc2lkZXMgcHJl
dmVudGluZyAgb3RoZXIgaHcgdHJhY2tpbmcgaXNzdWVzIG5vdyB3ZQ0KPiAgCSAqIGNhbiByZWx5
IG9uIGZyb250YnVmZmVyIHRyYWNraW5nLg0KPiArCSAqDQo+ICsJICogRnJvbSBic3BlYzogT25s
eSBQU1JfTUFTS1tNYXNrIEZCQyBtb2RpZnldIGFuZA0KPiBQU1JfTUFTS1tNYXNrIEhvdHBsdWdd
DQo+ICsJICogYXJlIHVzZWQgaW4gcGFuZWwgcmVwbGF5IG1vZGUuDQo+ICAJICovDQo+IC0JbWFz
ayA9IEVEUF9QU1JfREVCVUdfTUFTS19NRU1VUCB8DQo+IC0JICAgICAgIEVEUF9QU1JfREVCVUdf
TUFTS19IUEQgfA0KPiAtCSAgICAgICBFRFBfUFNSX0RFQlVHX01BU0tfTFBTUDsNCj4gKwltYXNr
ID0gRURQX1BTUl9ERUJVR19NQVNLX0hQRDsNCj4gDQo+IC0JaWYgKERJU1BMQVlfVkVSKGRldl9w
cml2KSA8IDIwKQ0KPiAtCQltYXNrIHw9IEVEUF9QU1JfREVCVUdfTUFTS19NQVhfU0xFRVA7DQo+
ICsJaWYgKCFpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkKSB7DQo+ICsJCW1hc2sg
fD0gRURQX1BTUl9ERUJVR19NQVNLX01FTVVQIHwNCj4gKwkJCUVEUF9QU1JfREVCVUdfTUFTS19M
UFNQOw0KPiArDQo+ICsJCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAyMCkNCj4gKwkJCW1h
c2sgfD0gRURQX1BTUl9ERUJVR19NQVNLX01BWF9TTEVFUDsNCj4gKwl9DQo+IA0KPiAgCS8qDQo+
ICAJICogTm8gc2VwYXJhdGUgcGlwZSByZWcgd3JpdGUgbWFzayBvbiBoc3cvYmR3LCBzbyBoYXZl
IHRvIHVubWFzaw0KPiBhbGwgQEAgLTE2MzQsNiArMTY0Myw5IEBAIHN0YXRpYyBib29sIHBzcl9p
bnRlcnJ1cHRfZXJyb3JfY2hlY2soc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAll
bnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7
DQo+ICAJdTMyIHZhbDsNCj4gDQo+ICsJaWYgKGludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2Vu
YWJsZWQpDQo+ICsJCWdvdG8gbm9fZXJyOw0KPiArDQo+ICAJLyoNCj4gIAkgKiBJZiBhIFBTUiBl
cnJvciBoYXBwZW5lZCBhbmQgdGhlIGRyaXZlciBpcyByZWxvYWRlZCwgdGhlDQo+IEVEUF9QU1Jf
SUlSDQo+ICAJICogd2lsbCBzdGlsbCBrZWVwIHRoZSBlcnJvciBzZXQgZXZlbiBhZnRlciB0aGUg
cmVzZXQgZG9uZSBpbiB0aGUgQEAgLQ0KPiAxNjUxLDYgKzE2NjMsNyBAQCBzdGF0aWMgYm9vbCBw
c3JfaW50ZXJydXB0X2Vycm9yX2NoZWNrKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+
ICAJCXJldHVybiBmYWxzZTsNCj4gIAl9DQo+IA0KPiArbm9fZXJyOg0KPiAgCXJldHVybiB0cnVl
Ow0KPiAgfQ0KPiANCj4gLS0NCj4gMi4zNC4xDQoNCg==
