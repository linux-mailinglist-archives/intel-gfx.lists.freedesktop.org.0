Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 596E5846A2F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 09:10:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04A010E130;
	Fri,  2 Feb 2024 08:10:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f4r9gDmF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65CF510E130
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 08:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706861411; x=1738397411;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MfdbgaLsRENe5ii6GC+FvzQ3STBEoA6V8S4tWUZb2uw=;
 b=f4r9gDmFaK1jNTblgHd+jwtptukxfTxDe0uDQKeyJk4p5zmaXndTDjyJ
 Oeut7fHeVlQjAbzaUXlB0fCpXekqYWClyWT382erFE53UNPYqO8c4SRY4
 UisJazEPqScK65i/33zgv5QpLDxHgZqCUWwK4LN07IQf/nKflb1oZoLnj
 jFtPBWc0Aqpv2rfUD3/aAwgqpB4otyy11cdA0wLraBnljphknQYcs/Zhc
 gWDes4FmkJCQFzXLx8r/e3KRHvQhaGXA2JPh9lOR4XIzpoQtCmdROYrNY
 kg8Qo5MD/XFALOytkWQbkTlGkWtYnx0SI7UNOwNvXhaBz2UzW5K2i0mcP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="21169"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="21169"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 00:10:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="294183"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 00:10:10 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 00:10:08 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 00:10:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 00:10:08 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 00:10:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z8Cq9Up6PbPOJtxC5udWVL6nq6o/lCEEFyXXNpCyrgbc6NzlUhaV6YcBQKdX4IjbMIveqOZhL8iGgB8tis4tyHwoC1T0fqk/lh7wDVj0t1iN5uNer+0O007++e0RP9naXNauxSmATGAkAUDslhjTZeON6SlqdvsE2yuSVnA6aFaSc8iiwH+tU9BckULWhD03IU2ZnUuCvVfMvjIGrGX2p4tnLZ2d0JcoY+Jf4Gja6NnjdgM/B/TyozrgUXgt25dAslBgCQerUJ+KSd2bjxm8kLstsKHusA1phtvDVMTsJfOSjzL8IRMj7HkqA5mT+4K2m0iDFI+V3I5dOK96TKU5uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MfdbgaLsRENe5ii6GC+FvzQ3STBEoA6V8S4tWUZb2uw=;
 b=HOcvfLpk4p9IXajLfDzz/m22U0KLWaO2V8WVt2A0vMTJH8WNh+5YSCG18BIpL6Vkon9Bag7Von+qPPDmQd5aLi89nrVGOQH7ppP2iw1IS1VJWKLcidcuq9mGQ1qcnDuVnbztVKeo3LXZ2ylUPuEmY2ix03BMc0ckUhFR7wxMuCik+ON/tnLWns3PagrK8eqlbdUor1amHwDbjnRJ4D4jm0LWLqOpyo5ZWpq6URiic7mg95JpZWLiMhnLwuXc2X43F1TgWNSd/OwUMZ6djDOkkOuw9SIhkufA9xJnI3JUse9INHnsj91udWRblUVwXT4HXr0qo0u7WjDVwP1D6DWggQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SN7PR11MB7019.namprd11.prod.outlook.com (2603:10b6:806:2ae::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.30; Fri, 2 Feb
 2024 08:10:05 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 08:10:03 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 06/21] drm/i915/psr: Check possible errors for panel
 replay as well
Thread-Topic: [PATCH v3 06/21] drm/i915/psr: Check possible errors for panel
 replay as well
Thread-Index: AQHaSr/TTGKvHcIFFUuFxXyaLpxalLD2xd1g
Date: Fri, 2 Feb 2024 08:10:03 +0000
Message-ID: <PH7PR11MB5981C75A1E5E64B3FC5C5374F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-7-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SN7PR11MB7019:EE_
x-ms-office365-filtering-correlation-id: db27552b-1b55-4df1-f045-08dc23c65c1c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: enBy8IanUvoJZsGQ6CJMsbBmQMwZWy8FxZLtqdfMyrcWH2TEJC099NBvGIlmabMRKPAlkPNNhpMPLBPtApZiKbEZ2SGQYgTwwCaNVS4qwjnqeTYa1HG50s4epjVFc8o7vqyEOr8NaGa2bUB8rZOAtnRT4X7ov9bw/lJOcn8jTQV0blP3pEvVw0psjs2uNwWFR/dh0b7Ax6HGQnI+3oaso2htrMduN8u3Cfft8cVelFfTvXS5PM+Wk+yQwbUL+bbCs0mC5SIarNj10+k9Hkon1iVsDBelNwTBQZ+GNlZgTMFNOSdcf/1IrEoY3Dv38dWfCuhPEyJCVM7S3DrYI50Ck+RftQ0CrsKA2+rmeraqnFIRz6Iscwc6CY4JL4XkybbKXOrSYmtnYqjzjztQADrDqnjGbCGExNwHnLOWFKnwsxnUUFIYGbsYS34Pj9He4l/lAX38TjtfOh16ff5/xgH9dG8939fi4sgjvTlEa1S8ilRScFz8hnWiAHHDQeBmdxjRaim8S0EvdDSCioRMNB2WGiU8AlOqNmot76tuhRUGauheihu5Bjg9VYQedf42dxWmFvsqibCIgjXH2JU70qncXjDOGEpr+IdJu00aeeh7XBtYdtVu4I/hSRGwLlCx9gb0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(366004)(376002)(136003)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(66446008)(66946007)(66574015)(122000001)(41300700001)(82960400001)(86362001)(83380400001)(38100700002)(478600001)(33656002)(71200400001)(2906002)(66476007)(26005)(9686003)(110136005)(64756008)(76116006)(66556008)(316002)(5660300002)(7696005)(8936002)(8676002)(6506007)(52536014)(53546011)(38070700009)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VVlCMFRtLzBoNWkxemdkWWs1ZzZUbUFCUU5hOW1VcUlLNm16YjVFZlRkV1Jm?=
 =?utf-8?B?emo2M0R0YTJJcysyY1UxcXNld3ZaMkJPVm5hbCtOWUVXeFczanZpWksydzFE?=
 =?utf-8?B?SFVJd1IwKzJNNldEZDRXKzhGQVk0Mzl4cmFydTE1akFTd2w4OVhieWRGNjNG?=
 =?utf-8?B?Mi9rVU9mRzlJYTRoZkZXcWpaMkIrOTFWWVZwNVl5dEhwVWpWdHBTUjJpdkV0?=
 =?utf-8?B?VkZyZDh6Q0JGelFPUHNPcldONGoyRlhVMWVqOE9KTHhsQVZ1b1NDYXoya1JP?=
 =?utf-8?B?OWN2SGFBZFdNcTlCeURsSnEzcmI4dWNDZU1zTDlETGxBNWJlUzdNYzRwNGFw?=
 =?utf-8?B?YU1nUmpjbWwwL0ZrRG1rajVvY2E1elRHTHZXdGRLUFJjTnBiSm9oY2F4QlVo?=
 =?utf-8?B?Y0tXZCtkdFBTNU5DMllwdlRaMFRVamtHcUJTNVY5Q3BHeFI0ZFM0bFBhNnNz?=
 =?utf-8?B?SEVac3o2QmdPZlc2SXc1MlJHOFIvOXBtS25OYlltVHZZdkZZQXd5SkZsa2VH?=
 =?utf-8?B?ejIwdkZ2M0ZlcG05WFZFa2txNGYyRFVIbmtHNGlqTVFJZGhJdXgxSVU1ODM1?=
 =?utf-8?B?UDFSYk16MXlRRklvcmYyVDFwVGQ2djZSNUZheEJjY3BkNE5wZ0t5eDFrVzVP?=
 =?utf-8?B?bU10bXhZOG1acGlTWDN4V25SRHVwU2lVSHAxT1kzZUVKc2ppSjVWMEJUbkxr?=
 =?utf-8?B?OEVKTnB4ZWtKMFo2YTNNSzJvbllFMmdZb1pyZnRjbzZkdm4vekUwKzJML3NP?=
 =?utf-8?B?dUNkaTFJTHVuaS94U2NJQU9jU1JSc3lUcnREbWxaYUhtSHNOc0wrZWNMRVhN?=
 =?utf-8?B?ZlVtS1VrN1Z4U2VEM2I0aVZTY0xLT0RUSlR6bnpSdjlZTTlRa2xPVnptTFpy?=
 =?utf-8?B?NGFHSUpxSWRmZm5iM252dkpMR3ViVDNtVW5rRm5yQ1hRSlI2cEd1ODJVa3pM?=
 =?utf-8?B?U090WVp0R1luSDQ4Y3JuT1JralVOSjFIRUZDR1dZOTZtcWVYbS9CVG1GQVNw?=
 =?utf-8?B?R2ZXbkNrK2g3QjBWV3A5bG5KU1pYRUxrK2dmdjRIS2p5b0I3bWFNME9HUzQy?=
 =?utf-8?B?cjRiY0RKL0lLZVAyRnFzOG4vdmZuWm5TSkJGUlJBNnc3V1VuSEJNdUhjY3B4?=
 =?utf-8?B?azFOQnR0NUk4L0N0blY3d001elRxQkZadHFVV2ttTHVZSStpeUtWLzR5TmN0?=
 =?utf-8?B?dXVXT3lKWVVBS0IxcldpejJQL214UFdUTmdiSytMb1hUWnB6UnpLelo1dTdo?=
 =?utf-8?B?dWNnSi81N3BCd2pvc0lpR3pYcWN2c09UZUZZUng1SnBtZGp5aW1IQXRHM1Mv?=
 =?utf-8?B?d2hJY0VrcjNRUlYvL0ZvN2xlcFk5SDByNVg2U2loTXB1eUYwdVpNQ2hUeTNG?=
 =?utf-8?B?YTlhWllwdUZETEhhUWhJZXpQbmNudHZveHVYc0NPQkNhY0xWb3BXM0M2QU8w?=
 =?utf-8?B?dzJiZWt6MGNuOUdiN3ZBbXNnYjZFTGE1d3pxT2QyZGl1Q2lxT05abXFNZzlD?=
 =?utf-8?B?N0x2L2UzdWt1TkpIaUVDMVdlNWppUEYxeDFmMjNxSjNZeUZzNWFuRjdjZHhW?=
 =?utf-8?B?ekV0blFtTzBYUlRRQkFQYVREWG82SXA5dzVYbFNxOU9MdUR1ZmgyOXRtazdG?=
 =?utf-8?B?ZDJCLzBwbjRqSjZKN3p2YW9CR01lTEZwY2dONmpuWjZqZkJyY1NEQ0l1LzNa?=
 =?utf-8?B?OFZBZHJ6ZG9wdTBhcmtKWGNHTWNPZE1EenFDWmY4SkFPYkpNMHN0bVhDR0hU?=
 =?utf-8?B?VnBIM1Y4SlFJWXdzWGE0MlV1ZEVKRVkzYUw3M0lWVnF2VEpMajk1WUFVTlhl?=
 =?utf-8?B?YmxaZERtbXBIekVucHp1KzJ2Z25tY2tITzRWTlZCNWVuNFcyKy84N0hZc2Fp?=
 =?utf-8?B?cmpNQk1hVTJrOUFrZzU2NDZERmF1VGFVdm1wbWIzUGthKzBLcTl2a0F3SlZa?=
 =?utf-8?B?RWFXSGc3RWlBNWxqSlN4Mnk0NkJ6bGVNRVJkbGxHQ21KL0QwK3FWTXFsQWZu?=
 =?utf-8?B?cEpFbFZjWjZDcnpFNTNrS0RDQUwvNEg5cm02QklCaVRRNDZaRzRyTURaVUg1?=
 =?utf-8?B?WUJJOWVEVFB3U256WnAyUnJRc0hDRVN1UmdSTm9rNXFndmIvTFJxSFVBbDBH?=
 =?utf-8?Q?KKyCby8IJ3Wk2ZL2GvgmcuBL9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db27552b-1b55-4df1-f045-08dc23c65c1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 08:10:03.5282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: svgeE8k4C20KqJyEP3ARoLmiIyEMoSPjl1XHRBWv6b1aE7Gza2G0laV5fYg8joCwGdQ+Mg70dnx93iONKAdVcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7019
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
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDA2
LzIxXSBkcm0vaTkxNS9wc3I6IENoZWNrIHBvc3NpYmxlIGVycm9ycyBmb3IgcGFuZWwNCj4gcmVw
bGF5IGFzIHdlbGwNCj4gDQo+IE9uIEhQRCBpbnRlcnJ1cHQgd2Ugd2FudCB0byBjaGVjayBpZiB0
aGUgcmVhc29uIGZvciBIUEQgd2FzIHNvbWUgcGFuZWwNCj4gcmVwbGF5IGVycm9yIGRldGVjdGVk
IGJ5IG1vbml0b3IvcGFuZWwuIFRoaXMgaXMgYWxyZWFkeSBkb25lIGZvciBQU1IuIFdlDQo+IHdh
bnQgdG8gZG8gdGhpcyBmb3IgcGFuZWwgcmVwbGF5IGFzIHdlbGwuIE1vZGlmeSBpbnRlbF9wc3Jf
c2hvcnRfcHVsc2UgdG8NCj4gc3VwcG9ydCBwYW5lbCByZXBsYXkgYXMgd2VsbC4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAyMSAr
KysrKysrKysrKysrKysrLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IGluZGV4IDg5M2M3MmVhOGNmMS4uNmQ3ZWY3NDIwMWQyIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTI5NTksNiArMjk1
OSwxMyBAQCBzdGF0aWMgdm9pZCBwc3JfY2FwYWJpbGl0eV9jaGFuZ2VkX2NoZWNrKHN0cnVjdA0K
PiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJfQ0KPiAgfQ0KPiANCj4gKy8qDQo+ICsgKiBPbiBj
b21tb24gYml0czoNCj4gKyAqIERQX1BTUl9SRkJfU1RPUkFHRV9FUlJPUiA9PQ0KPiBEUF9QQU5F
TF9SRVBMQVlfUkZCX1NUT1JBR0VfRVJST1INCj4gKyAqIERQX1BTUl9WU0NfU0RQX1VOQ09SUkVD
VEFCTEVfRVJST1IgPT0NCj4gK0RQX1BBTkVMX1JFUExBWV9WU0NfU0RQX1VOQ09SUkVDVEFCTEVf
RVJST1INCj4gKyAqIERQX1BTUl9MSU5LX0NSQ19FUlJPUiA9PSBEUF9QQU5FTF9SRVBMQVlfTElO
S19DUkNfRVJST1INCj4gKyAqIHRoaXMgZnVuY3Rpb24gaXMgcmVseWluZyBvbiBQU1IgZGVmaW5p
dGlvbnMgICovDQo+ICB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKSAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRw
X3RvX2k5MTUoaW50ZWxfZHApOyBAQCAtDQo+IDI5NjgsNyArMjk3NSw3IEBAIHZvaWQgaW50ZWxf
cHNyX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJCQkgIERQX1BT
Ul9WU0NfU0RQX1VOQ09SUkVDVEFCTEVfRVJST1IgfA0KPiAgCQkJICBEUF9QU1JfTElOS19DUkNf
RVJST1I7DQo+IA0KPiAtCWlmICghQ0FOX1BTUihpbnRlbF9kcCkpDQo+ICsJaWYgKCFDQU5fUFNS
KGludGVsX2RwKSAmJiAhQ0FOX1BBTkVMX1JFUExBWShpbnRlbF9kcCkpDQoNCkkgZmVlbCBoZXJl
IHRoZSBjb25kaXRpb24gY2hlY2sgd291bGQgYmU6DQoJaWYgKCEoQ0FOX1BTUihpbnRlbF9kcCkg
fHwgQ0FOX1BBTkVMX1JFUExBWShpbnRlbF9kcCkpKQ0KIA0KPiAgCQlyZXR1cm47DQo+IA0KPiAg
CW11dGV4X2xvY2soJnBzci0+bG9jayk7DQo+IEBAIC0yOTgyLDEyICsyOTg5LDE0IEBAIHZvaWQg
aW50ZWxfcHNyX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+ICAJ
CWdvdG8gZXhpdDsNCj4gIAl9DQo+IA0KPiAtCWlmIChzdGF0dXMgPT0gRFBfUFNSX1NJTktfSU5U
RVJOQUxfRVJST1IgfHwgKGVycm9yX3N0YXR1cyAmDQo+IGVycm9ycykpIHsNCj4gKwlpZiAoKCFw
c3ItPnBhbmVsX3JlcGxheV9lbmFibGVkICYmIHN0YXR1cyA9PQ0KPiBEUF9QU1JfU0lOS19JTlRF
Uk5BTF9FUlJPUikgfHwNCj4gKwkgICAgKGVycm9yX3N0YXR1cyAmIGVycm9ycykpIHsNCg0KVGhp
cyB3aWxsIGNoZWNrIG9ubHkgZm9yIHBzciwgcnQ/IC4uIFRoZSBmbGFnIHBhbmVsX3JlcGxheV9l
bmFibGVkIHdpbGwgYmUgdHJ1ZSBhbmQgd2lsbCBub3QgY2hlY2sgZm9yIGVycm9yIHN0YXR1cyBm
b3IgcGFuZWwtcmVwbGF5Lg0KDQo+ICAJCWludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChpbnRlbF9k
cCk7DQo+ICAJCXBzci0+c2lua19ub3RfcmVsaWFibGUgPSB0cnVlOw0KPiAgCX0NCj4gDQo+IC0J
aWYgKHN0YXR1cyA9PSBEUF9QU1JfU0lOS19JTlRFUk5BTF9FUlJPUiAmJiAhZXJyb3Jfc3RhdHVz
KQ0KPiArCWlmICghcHNyLT5wYW5lbF9yZXBsYXlfZW5hYmxlZCAmJiBzdGF0dXMgPT0NCj4gRFBf
UFNSX1NJTktfSU5URVJOQUxfRVJST1IgJiYNCj4gKwkgICAgIWVycm9yX3N0YXR1cykNCg0KU2Ft
ZSBkb3VidCBhcyBhYm92ZS4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiAgCQlkcm1fZGJnX2tt
cygmZGV2X3ByaXYtPmRybSwNCj4gIAkJCSAgICAiUFNSIHNpbmsgaW50ZXJuYWwgZXJyb3IsIGRp
c2FibGluZyBQU1JcbiIpOw0KPiAgCWlmIChlcnJvcl9zdGF0dXMgJiBEUF9QU1JfUkZCX1NUT1JB
R0VfRVJST1IpIEBAIC0zMDA3LDgNCj4gKzMwMTYsMTAgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRf
cHVsc2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAkvKiBjbGVhciBzdGF0dXMgcmVn
aXN0ZXIgKi8NCj4gIAlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9F
UlJPUl9TVEFUVVMsDQo+IGVycm9yX3N0YXR1cyk7DQo+IA0KPiAtCXBzcl9hbHBtX2NoZWNrKGlu
dGVsX2RwKTsNCj4gLQlwc3JfY2FwYWJpbGl0eV9jaGFuZ2VkX2NoZWNrKGludGVsX2RwKTsNCj4g
KwlpZiAoIXBzci0+cGFuZWxfcmVwbGF5X2VuYWJsZWQpIHsNCj4gKwkJcHNyX2FscG1fY2hlY2so
aW50ZWxfZHApOw0KPiArCQlwc3JfY2FwYWJpbGl0eV9jaGFuZ2VkX2NoZWNrKGludGVsX2RwKTsN
Cj4gKwl9DQo+IA0KPiAgZXhpdDoNCj4gIAltdXRleF91bmxvY2soJnBzci0+bG9jayk7DQo+IC0t
DQo+IDIuMzQuMQ0KDQo=
