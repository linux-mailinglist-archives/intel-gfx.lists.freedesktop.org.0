Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A338492F8
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 05:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7F9112357;
	Mon,  5 Feb 2024 04:40:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VFbTjWgc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A885A112357
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 04:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707108045; x=1738644045;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nndHomd2mtOLqsUUrvG3DFDXlCqSZvnn9yfcDQ7FCiA=;
 b=VFbTjWgcrNDWfLnc+VrSHomFlR7iW9oW8VTq9Hjhh3azzMcFUqfn/lDo
 9pQJoT1o7L5eSX0mYAxsoGYSI5AD/KYsZ+Q1BbKy9Tfz+PJRtFyZCuneJ
 z2NFvQi2q3YlgbbMr49lWgjHfn34oumMhq4493uqh5KgpNWfV9QVO6E0o
 MnfuJyT6h82AbHhq66sHS5r3eMXgmErSSSnLDCzvlcWLYxRujHnY3JAnZ
 Z1Jo0hgjq315CV0FraH5+YpXOpO1pMSx4SEiSs9kZpGw26ueF4/dQInBm
 pb3/tu28L+1773UBWdt4D8TgdbaircqPn0balwEJTjQy9TQn8QoQvMq4R w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="601634"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="601634"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 20:40:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="615158"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2024 20:40:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 4 Feb 2024 20:40:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 4 Feb 2024 20:40:43 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 4 Feb 2024 20:40:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dG9GgrcyvpvQXxd3IHN1fvdfj8XuFdst5wTtEgPvrrLeBPRnJ4f2kQRc2bCsKaeo0FKJrzD2S09BARcz75IjoScbGwMSk6Lp7mDNBaFXxqqesWFAq/ejYrDfGjG55EofrJx3c435bTO120CeSkOxJ8zZqbAv9pVWwyz0crz+FrmNT+EbZOPIWq3IdSPXzt8kTbPljH5/CPA04o/SQC8iQJwlXT6f3hl9YeS8zS8frWg/bzbgYrLUjQ6UHTv5C0rn2EmaVecIyzp0BXtIM3Pn1HHJH/lRNUBw4P9JAb06uc58tUHkZ+It/ipasE9TiA9SWkvwh9rCuXHoHK3k2u02pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nndHomd2mtOLqsUUrvG3DFDXlCqSZvnn9yfcDQ7FCiA=;
 b=UchYHMDIr6SQlk5UfKxxq1cFhiAGDSgp8TD8N5AMXFDadOaI00+YbVzXuLmrW5CNIyooE/nHzQP88EzKK2jyBFXkriGurlYG/CPkRKG7OrhxeXTcf3L4a7Ts1C2IxDKF3xbvDIl4eqs3Ub9IlgaYXhlVp+HxTaAW0U0HeiEBhXMEOK4+fbqG1+RwvTWztBWr0lSKrU9qn3SJCyFm0QGGo++ocLRdPC2532dDPyrzqxaWcIp0JRBR9kMvfJdzw+8kvUgAaWL0zQzNfhDZ9UMOWuxS0zthxARkuZfpyZtQc7BA8WWzuSgQDJ+us5PpC+jli0yMkVG7dhUoZqN7v9+szQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by LV3PR11MB8741.namprd11.prod.outlook.com (2603:10b6:408:21d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 04:40:40 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 04:40:40 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 16/21] drm/i915/psr: Ensure early transport is not
 enabled for panel replay
Thread-Topic: [PATCH v3 16/21] drm/i915/psr: Ensure early transport is not
 enabled for panel replay
Thread-Index: AQHaSr/dBFM5wSuckkm4cEFadF5lzLD7Q8ow
Date: Mon, 5 Feb 2024 04:40:40 +0000
Message-ID: <PH7PR11MB5981BE43A4F4CEA2F899F700F9472@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-17-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-17-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|LV3PR11MB8741:EE_
x-ms-office365-filtering-correlation-id: 257abc5e-3cd4-423c-b9f6-08dc26049b35
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j2z6u6MGx4y+h3TLX2J2hU5jKwsa1+TnGlHDYkk5COWnMJEA/kbFcmDpEM/286jUbPu0W5E92jRxb6ufM2k3YfcNJ4wr16MwPkKz8M54ZoZIIRVRCOdwexB+PPJmX2YPoDpOSoAqiAwVTDCc8/UrKLOZguQio6I5WSm2XzyvxwlbIzmcKQrn7pw2ELg15I552TZhMNGgsSS10heERItv2WqSfu0v6HJKo92BO0dDW0kWDx+vqBAyklEM/9Q5zFhyMzzPDi20MII27B4K2w0lGOjCsFdDS6n7mjTi0y8zvmeEvlwybbHzF5pF8LIDk7yE3d/+iVQ5z/VVhHtyDUpzpVbSaj6bqzCaFop9HB4XnDiRjRoLWTL5f0WXaNZoKQPotIQP5378DuSlkor3dF+BpwzSuXueaN49VMIJi+pYdZuiyhhTWUYfUjd1ljHy4aQBfuR12bDhAwcvQRSlmMz8c25x/BfDgrkjYEAIav8kfxB2PkF9lY/jNESBHhwyVJyYWhBfrgh6aPaIIBfnqrftTEcOLxtynpI8XCmKHuwvxSbJrlqz3Lcpo9LbsQJSZvfacUzaob4cYqA2a/I6bTWcftUFQ33MP007sk3v4Hmps9E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(366004)(396003)(39860400002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(38100700002)(82960400001)(122000001)(55016003)(2906002)(52536014)(83380400001)(86362001)(66574015)(6506007)(71200400001)(33656002)(53546011)(478600001)(9686003)(7696005)(66946007)(66556008)(76116006)(66446008)(66476007)(110136005)(64756008)(316002)(38070700009)(41300700001)(8676002)(8936002)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WU5HSVVpRnhmdElHd3RZVUxjTUdaSGxSR2hNcmdYY0gyZkg1MjVkclJOK01S?=
 =?utf-8?B?MnlrVm1ndTYvQTlzTG5CSTFSMGxrdTlOYXBEWVpEbUJCNnptMFgzd0s3MVY0?=
 =?utf-8?B?djFmYjl2K0J4cVRPQ2VOOEo2MW9lZ3NycDRrRldoNUxoZ3E2UVl4NVFBaUk2?=
 =?utf-8?B?VGprV2NXSnpJUnMwNG5GVGJKdmVrYjFQZEx3b0JxVWNJZWwxWTdRcUhXQTl0?=
 =?utf-8?B?VnVweXU0OTNmYVJHYUM3aXZvekdUclRpSHc1Y2FISlh0YTVlWHl6ZFpLVnhx?=
 =?utf-8?B?NUFWS3ZuWVEvN3Y4eFBBL1RJRW9mVllsbEd2c2F3RFpLSXZSVW0vbHRBWHRJ?=
 =?utf-8?B?U0NnZFlhR2taM3dPbDhtKytycHE5bnEzSEQ1WXE5TGhWbHNRYVNqL0ZIZTNh?=
 =?utf-8?B?VE5CRmRRNlgwN3VDUjFMSUt0WmxaaUVlRjBXbWZQWVUvUE1sNnh2TVRCMWVa?=
 =?utf-8?B?TUpWRG1tUHgvMDRuZEtpQys1QVYyZEFJb0JYS3R0TUVuOGVTZFh1ZVFwQkRV?=
 =?utf-8?B?cGVPSHBCay9PV244elY0UitURHVqbkJXVWxDYWVCWTg0Z1lNSGY1RDR4c0FI?=
 =?utf-8?B?K0ZvbnBoTmF4Vk1jRTQ0UzByTXN1Y2RoUUFMSDhpZzBCUzRsZk5kTnc1a09Y?=
 =?utf-8?B?UVFEVTVNY2pvcnFxSjh3V0VVNDc4ZnZVVXRqK3Fjdk1QMUZGbTdWVUpKTkVs?=
 =?utf-8?B?c3RpNzlsSkJJNXZtZGhkdFVQMHZQdXRxeFozZVd1UnpsVG8zeGpuSm9VOGpp?=
 =?utf-8?B?aG8zSjN0OVBCVEFkSk51QkxUeG5rSkU5YWJRVnZwMVVWZlpnNnlrQURLMDM2?=
 =?utf-8?B?ZFltaWgrT1cvWkVPb0UzdFgxWkdxcGZubit2QmJoTGh6NFZhNU5CUmtKejZ6?=
 =?utf-8?B?K0JiTFhtZStSdHU4aXBCci91WDBGNnEzdEF1cWpNNkpzZC9MaFhjS3ZJRzYw?=
 =?utf-8?B?c3FJaDFacVE1U3ZNQk8vbUY1UDZhVFBBYXJIcytrejhmbUUwSklUVVp4NTBp?=
 =?utf-8?B?dENWdlFFNUdOaTd6TTJmRVQ0WmIyK01lajZIdDN5RzdVcDE5ZVpHQTFNeGk3?=
 =?utf-8?B?Nk5tYjl4TUZmMnVSR3cyUFEzeDBVQ3l4azM1cWJ3dTlYc3RpNmtEaXN6bmdF?=
 =?utf-8?B?NXlEbnNjNkFHaUhOSkpsc2pxbmllaXFXblhjaGRjOEZHT3VxZVFSQTlRUWlY?=
 =?utf-8?B?dmVtZUVGcUJlSlNPSmlQMU0zZFFoQlVISjRiWlZHZnlYMzVPTDZNVGZzdVIy?=
 =?utf-8?B?Q3NwdlJBeDkyYmRmYjd1YkloNlZ0TFRYN3NpbDBqOTAzSEUwS1VVanluTU03?=
 =?utf-8?B?M0VBZ2IzeDY2RnhUWWhadjN3dmUvd2JwY0FUMHBxWERyTlZHMG5oVm02dVYx?=
 =?utf-8?B?aERCU1dwakxNUUNKSTFIWlpDLzMwZkVVNHNUL0VNWDZRbnRLTXQ1ME5SRXNU?=
 =?utf-8?B?MWQwaHVxL3FjMjYzNmpCV2lXdmd5K2hnSE00RkxvOUpKRSt5Z2tjRWg4amRs?=
 =?utf-8?B?cWx1Mm9ia0tyM0hUU1RGVFBrbjVQeTF3WFlRckdHMm9WWHJCNmdFNHlKSm4x?=
 =?utf-8?B?SEpqZldjYk96UW9CRWN6dG51akVmYzhoVjdJaFh1U1U3dWgwY05jeUUybjVw?=
 =?utf-8?B?ZjUxYmRkd1kyR1AyRnQ3dURTSXlhclcybzU1alg3bThzdlNJaXo2bS9vU3ZK?=
 =?utf-8?B?VzY2SFV2azZRMlFlRE9BcU1XUG5Ncm9LQVVTeUJVOFlld3BReEw1UTNPSWRI?=
 =?utf-8?B?R2RzWXhoU2RQMS9RNjZzYUlLNUNGZXI0STRzS1ZxYVJ4Q0NqQW93NzVWQWxi?=
 =?utf-8?B?cTd4NmVvM0ZERVBvYkg2WE5sQS9zYmxMK0FrR2NBYVplT3hFNHdxd01NQWF6?=
 =?utf-8?B?SlBxMGl3YlBzb1Zuc1hvek1uQjFxdFMrNDdTL1orR1JRdkJkQUdhQ2VIRGRw?=
 =?utf-8?B?dFRjdDh5bkJHSElkVXcxQjdrbUhUV1VGbWEwL2J2dXAwWEVXdk9paFM0bGhF?=
 =?utf-8?B?VEl2RWZPMUZ0YWZuSUN0Y2lJZDJMQVpvTE5iR09QMm52dlAweUNSM1RwSkJY?=
 =?utf-8?B?ZCtFWVpLcDNYd1hCbTRsQ0pDVk9hWHkxUVJNY0VOOWVCMlpwQldqb09BaDZk?=
 =?utf-8?B?MmxwYUFYQnd4aWFpR253aFVjRktaTEM5Mit6cWhkRzJnSEp3M1JQRTdZTkx1?=
 =?utf-8?Q?UPZ+cqyOlTYkHa64ktKo+d8RGqmr95BuRwXUGFoezkQn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 257abc5e-3cd4-423c-b9f6-08dc26049b35
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 04:40:40.5265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TFWh1PneQYL2Xyh1tsNSkbUusnna+/Fd9TuNlBz8uLax6ySf/JXQJVs619lnyB37hniOU6mJcR9q434L51R2RA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8741
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
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDE2
LzIxXSBkcm0vaTkxNS9wc3I6IEVuc3VyZSBlYXJseSB0cmFuc3BvcnQgaXMgbm90DQo+IGVuYWJs
ZWQgZm9yIHBhbmVsIHJlcGxheQ0KPiANCj4gRWFybHkgdHJhbnNwb3J0IGlzIG5vdCBzdXBwb3J0
ZWQgYnkgRFAyLjAuIEVuc3VyZSBlYXJseSB0cmFuc3BvcnQgaXMga2VwdA0KPiBkaXNhYmxlZCBm
b3IgcGFuZWwgcmVwbGF5IHNlbGVjdGl2ZSB1cGRhdGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBK
b3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4v
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDEgKw0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgICAgICB8IDE1ICsr
KysrKysrKysrLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggMWM4NzBmZjhiMjdlLi44Mjc2Nzc1MWM2
NzQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xNzA2LDYgKzE3MDYsNyBAQCBzdHJ1Y3QgaW50ZWxfcHNy
IHsNCj4gIAlib29sIHNpbmtfcHNyMl9zdXBwb3J0Ow0KPiAgCWJvb2wgbGlua19zdGFuZGJ5Ow0K
PiAgCWJvb2wgc2VsX3VwZGF0ZV9lbmFibGVkOw0KPiArCWJvb2wgc2VsX3VwZGF0ZV9ldF9lbmFi
bGVkOw0KPiAgCWJvb2wgcHNyMl9zZWxfZmV0Y2hfZW5hYmxlZDsNCj4gIAlib29sIHBzcjJfc2Vs
X2ZldGNoX2NmZl9lbmFibGVkOw0KPiAgCWJvb2wgcmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5l
Ow0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXgg
YjgzNjdmYjhiM2Q0Li42MTdmZmQxODU0ZGMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtNjc3LDE1ICs2NzcsMjAgQEAgc3RhdGljIHZvaWQg
aHN3X3Bzcl9zZXR1cF9hdXgoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAkJICAg
ICAgIGF1eF9jdGwpOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyBib29sIHBzcjJfc3VfcmVnaW9uX2V0
X3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICtzdGF0aWMgYm9vbCBwc3IyX3N1
X3JlZ2lvbl9ldF92YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJCSAgICBj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIHsNCj4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiANCj4g
KwlpZiAoY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSkNCj4gKwkJZ290byB1bnN1cHBvcnRl
ZDsNCj4gKw0KPiAgCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCAmJg0KPiAgCSAgICBpbnRl
bF9kcC0+cHNyX2RwY2RbMF0gPT0NCj4gRFBfUFNSMl9XSVRIX1lfQ09PUkRfRVRfU1VQUE9SVEVE
ICYmDQo+ICAJICAgICEoaW50ZWxfZHAtPnBzci5kZWJ1ZyAmDQo+IEk5MTVfUFNSX0RFQlVHX1NV
X1JFR0lPTl9FVF9ESVNBQkxFKSkNCj4gIAkJcmV0dXJuIHRydWU7DQo+IA0KPiArdW5zdXBwb3J0
ZWQ6DQo+ICAJcmV0dXJuIGZhbHNlOw0KPiAgfQ0KPiANCj4gQEAgLTcxNCw3ICs3MTksNyBAQCB2
b2lkIGludGVsX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAN
Cj4gRFBfQUxQTV9MT0NLX0VSUk9SX0lSUV9IUERfRU5BQkxFKTsNCj4gDQo+ICAJCWRwY2RfdmFs
IHw9IERQX1BTUl9FTkFCTEVfUFNSMiB8DQo+IERQX1BTUl9JUlFfSFBEX1dJVEhfQ1JDX0VSUk9S
UzsNCj4gLQkJaWYgKHBzcjJfc3VfcmVnaW9uX2V0X3ZhbGlkKGludGVsX2RwKSkNCj4gKwkJaWYg
KGNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCkNCj4gIAkJCWRwY2RfdmFsIHw9
IERQX1BTUl9FTkFCTEVfU1VfUkVHSU9OX0VUOw0KPiAgCX0gZWxzZSB7DQo+ICAJCWlmIChpbnRl
bF9kcC0+cHNyLmxpbmtfc3RhbmRieSkNCj4gQEAgLTk3Myw3ICs5NzgsNyBAQCBzdGF0aWMgdm9p
ZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCQlp
bnRlbF9kZV93cml0ZShkZXZfcHJpdiwNCj4gUFNSMl9NQU5fVFJLX0NUTChjcHVfdHJhbnNjb2Rl
ciksIDApOw0KPiAgCX0NCj4gDQo+IC0JaWYgKHBzcjJfc3VfcmVnaW9uX2V0X3ZhbGlkKGludGVs
X2RwKSkNCj4gKwlpZiAoaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2V0X2VuYWJsZWQpDQoNCkFG
SUNVIHRoaXMgaXMgdGhlIG9ubHkgcGxhY2Ugd2hlcmUgdGhlIHNlbF91cGRhdGVfZXRfZW5hYmxl
ZCB2YXJpYWJsZSBpcyB1c2VkIGFuZCBjYWxsaW5nIHRoZSBmdW5jdGlvbiBwc3IyX3N1X3JlZ2lv
bl9ldF92YWxpZCgpIHZzIGFkZGluZyBhIHZhcmlhYmxlIGluIGludGVsX3BzciBzdHJ1Y3R1cmUs
IA0KSSBmZWVsIGdvb2QgdG8gZ28gd2l0aCBjYWxsIHRoZSBmdW5jdGlvbiBvbmNlLg0KDQpSZWdh
cmRzLA0KQW5pbWVzaA0KDQo+ICAJCXZhbCB8PSBMTkxfRURQX1BTUjJfU1VfUkVHSU9OX0VUX0VO
QUJMRTsNCj4gDQo+ICAJLyoNCj4gQEAgLTExMzgsNyArMTE0Myw3IEBAIHN0YXRpYyBib29sIGlu
dGVsX3BzcjJfc2VsX2ZldGNoX2NvbmZpZ192YWxpZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVs
X2RwLA0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICAJfQ0KPiANCj4gLQlpZiAocHNyMl9zdV9yZWdp
b25fZXRfdmFsaWQoaW50ZWxfZHApKQ0KPiArCWlmIChwc3IyX3N1X3JlZ2lvbl9ldF92YWxpZChp
bnRlbF9kcCwgY3J0Y19zdGF0ZSkpDQo+ICAJCWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3Jl
Z2lvbl9ldCA9IHRydWU7DQo+IA0KPiAgCXJldHVybiBjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9z
ZWxfZmV0Y2ggPSB0cnVlOyBAQCAtMTc0Niw2DQo+ICsxNzUxLDcgQEAgc3RhdGljIHZvaWQgaW50
ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAlkcm1f
V0FSTl9PTigmZGV2X3ByaXYtPmRybSwgaW50ZWxfZHAtPnBzci5lbmFibGVkKTsNCj4gDQo+ICAJ
aW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQgPSBjcnRjX3N0YXRlLT5oYXNfc2VsX3Vw
ZGF0ZTsNCj4gKwlpbnRlbF9kcC0+cHNyLnNlbF91cGRhdGVfZXRfZW5hYmxlZCA9DQo+ICtjcnRj
X3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQ7DQo+ICAJaW50ZWxfZHAtPnBzci5wYW5l
bF9yZXBsYXlfZW5hYmxlZCA9IGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXk7DQo+ICAJaW50
ZWxfZHAtPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMgPSAwOw0KPiAgCWludGVsX2RwLT5wc3Iu
cGlwZSA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKS0+cGlwZTsNCj4gQEAg
LTE4OTYsNiArMTkwMiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChz
dHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCWludGVsX2RwLT5wc3IuZW5hYmxlZCA9
IGZhbHNlOw0KPiAgCWludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQgPSBmYWxzZTsN
Cj4gIAlpbnRlbF9kcC0+cHNyLnNlbF91cGRhdGVfZW5hYmxlZCA9IGZhbHNlOw0KPiArCWludGVs
X2RwLT5wc3Iuc2VsX3VwZGF0ZV9ldF9lbmFibGVkID0gZmFsc2U7DQo+ICAJaW50ZWxfZHAtPnBz
ci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkID0gZmFsc2U7DQo+ICAJaW50ZWxfZHAtPnBzci5wc3Iy
X3NlbF9mZXRjaF9jZmZfZW5hYmxlZCA9IGZhbHNlOyAgfQ0KPiAtLQ0KPiAyLjM0LjENCg0K
