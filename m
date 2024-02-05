Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9081884930F
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 05:51:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D360112369;
	Mon,  5 Feb 2024 04:51:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jVdEYJTs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B63D112369
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 04:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707108666; x=1738644666;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0NdviF7UZQ+uWgGFkVfO7DGZUsNxPol/aSOtJjdSeUk=;
 b=jVdEYJTsa6Zuuf14OCBb3hRYpqhg1j9n/1aJiEh8rDJntf8Q5VVetBYK
 Ysy1jpnaPSD6/xbV2J4cCJvPex3cJaTK5EZuUWShvItHrT18yuGbNqJ0Q
 xUtAatCdULjYx79xxoMPiPpmV7Q/DV68L7XYg8wY2VPyGMwAYo1NRkjXE
 bS33tZV9bdrmiwC3c0ZOp3nkEiVUnltiXCg8iuN/6f8DSGXLiHBJjPrfG
 j8bhG0Jkn0bWJyuwFVaJT3XmUgN0XCGSFa/1QWpVmKdxtzmoMOpY+hJEe
 NqMaLAjsr92RtlmnBIpCTXtjRKc1EXKlF3bXih4bCledeyefjhuF7FEmw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="4246789"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="4246789"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 20:51:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="5223717"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2024 20:51:00 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 4 Feb 2024 20:50:59 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 4 Feb 2024 20:50:59 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 4 Feb 2024 20:50:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LZ4QjFtdlzWVMvhIqs4bvHiIMzyWwPns3tW61vBizKNFK26+l0+Jh7usBniDzzWq+QlRhd1kz+yD5m5ElYiIqFMn0RIpQYqvmdbNcHmIsx+W13wweiALgheq4eHiefEQw0OhAqj3YWh0GzrDP9P/7BBoKsH1AQZUMkmScMWELOLsex08NtqxXF43roBqC/LuKBERWMKlbYwQgjte+AddUhZCxku+r7HD8AFqY+4jgEj7wuIB7DaErXYpc6NGQtWZmqIPGsWFyAP75oqFZogd3QXeE0bGQRB9WTsObtMuREoxnWSVsCfazF95qrU1/dKF/CHMlztiDTI3AlK54ZDT+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0NdviF7UZQ+uWgGFkVfO7DGZUsNxPol/aSOtJjdSeUk=;
 b=IWTMo4OODCCUgpIBvq8fMZz5aWcHr4XUjX2dRMuLZoYx41xBgAesvXtLBdJBUQfOEm09MSYbQGQbHXa4iwr7E7a71RyLK/ZjxNBPsP8gvvMN/IvDUUTjMK6I2rBNwUj9TFwu3gJafwanpwahlovYno6AAa3PbkD9qQgjYKOYpmcNqYwp/qZpsVkgfeGL5KIPWkUlWwfYC8lLvGpwx5+XJtz7LHRDSAydg+t1QlkD7zhK7voTI+TfkQIqBSVBgr2wOv75plwXtYYlTJsxpMRTrUkksaI4jthTMnbgPe814cgQQ1uz8H6KzLT4lWGH5paeDmFt1dem+nSKXzPP6Z+Xcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB7596.namprd11.prod.outlook.com (2603:10b6:510:27e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 04:50:22 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 04:50:22 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 04/21] drm/i915/psr: Rename intel_psr_enabled
Thread-Topic: [PATCH v3 04/21] drm/i915/psr: Rename intel_psr_enabled
Thread-Index: AQHaSr/Oh4rAcED2CU6qlh1MjYdx1rD2vXgwgAAFFgCABIRkMA==
Date: Mon, 5 Feb 2024 04:50:22 +0000
Message-ID: <PH7PR11MB598110DE2F9FFBF9558432F0F9472@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-5-jouni.hogander@intel.com>
 <PH7PR11MB598157598A12DF5A023F23A3F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
 <2b47355d9c1e2e4037b295b50ea25ab4d65115ff.camel@intel.com>
In-Reply-To: <2b47355d9c1e2e4037b295b50ea25ab4d65115ff.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB7596:EE_
x-ms-office365-filtering-correlation-id: 684190a1-f79c-4f04-8cf1-08dc2605f634
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5dog7zAygiA+D9Z1ENI40bCOMyRBthSgy3tw7Ys9U5Ac8CZlvfFOTIg0+qvdDGDjk+XbzH67yt0xbSrJXy93688anYN5SPzcr3nMY1zP62181Wv1/NYUTtASho5zkZzBrW4Dox58lYjhNbUhE/lkjGsx9SQ4r+LDWoOYqvSGlubo6mTJ8ZJxjN7Vd3wisre3Q2pD6W3tnFr+A7LaWlrGc5zCE8mjQCIcpv8ixpUDjIn0FbZi1CGIsNVeXwZtuDDl6NsD+ysD2khOX1R+6tFZ1OgMp4oA9Ofgfb4uGweEzqCJbmiPLZDGaDFEIteeKQDVLAoUSyeCFR/fp2KgmgUNJtfS5/jzuleqgS4V82VVV1Prb83+8QbWd/mi42Q0EvzFsS+ZuR3aKf4fdEeHv9bNC1g0CSFoPtm1jM0w2VMdyKJU3g64mFNJNFEvfxreFzn8h7RcXdcNSM+rhPHR8M4pn9ayKB2q3QCCoOx+IEsjaF3xtc5oCsEBnvkMbXyf+oRdTiWOs5DvIFbR6UM8PmmC5Df9JrnVG97P/KuUKx+RmPh1vFva8IYs1UdjfMzLilL2W+Wu4+g0IOWbvSrO2bemgb6F1kC0t1k/Cv2mZqR/aypJI2memXuuwy2CcL+zsZ4O
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(136003)(366004)(396003)(376002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(38070700009)(41300700001)(55016003)(316002)(110136005)(52536014)(66946007)(64756008)(76116006)(66476007)(66446008)(66556008)(5660300002)(8936002)(8676002)(478600001)(82960400001)(33656002)(86362001)(66574015)(38100700002)(2906002)(6506007)(71200400001)(83380400001)(53546011)(7696005)(122000001)(9686003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a01heXN0NXZHOHhobi90dXNIVllvZDVPdzFtcVM1bjZiZDRtdDVHYU1HQ1Z5?=
 =?utf-8?B?cHpmZmRoMmxPTEFpc1F4VzRuc2Mzc1Y3dk50dE82czIvVGxtME0raVRaUlJM?=
 =?utf-8?B?MXRyWWNVZ0NTVGR5Q2Z0aSt0cTdMSWhpSHhjMlViSmVCcUo5N2dCdVd0Tm9W?=
 =?utf-8?B?SEpLVVVCcFo5MnR0c1MyQXFRWk1acGdCcmVRTklUSkM4V1pRMFFEQm9UNmZ4?=
 =?utf-8?B?Q3pWRmxuZXE2ZjJmS2NpQ2lOcWQ5SUpXaGpUZW1ZYTFSM1JvYmlFd0FCWHNa?=
 =?utf-8?B?ZnhIQzRVZFNtYWpiYjVwWVRuTGVsazExRFhvTElPOHloS1UvSzI0SzU3TjR2?=
 =?utf-8?B?OU5EZU5Ra3JhQU5SUGt1S2M0L0NDbFN4V0xrdXZraWJrejVTTnR3WHczR1ky?=
 =?utf-8?B?QWhONmMwbTJRTFNjUlNjeGkrZ1V4NFF5cVdDKzRMSGJnTDhpa0hSbkRISFpy?=
 =?utf-8?B?N2NuUjd0V0VxbjlEUWZOaEhBaEM2a2ZsMzNPUkFWTGJWUXZUcWpyclI0RzlO?=
 =?utf-8?B?VmZqOWlQeEhRRFJLUUc3RlorQ0pyYU0yaXVTSXJmZmFrYTBvTUx4US9hRGJq?=
 =?utf-8?B?TjA5ZlNjdk81NTBlbjFmek91MFFyc2NwYTlsTVpacVJVbFJVYkE2WlE3eXdn?=
 =?utf-8?B?bG92VmhiMjhzUG5VSVU5Zy9wTjhkSGJ4MWtHa1A3WWxhYzh1ZVVWK2pBNnU4?=
 =?utf-8?B?eTBPUWFoV28rdjZ0STZJTEsrRzg3L2lDR0Z2dmZVakNDQlUwM0VLMGs3YVIr?=
 =?utf-8?B?L3B2R0JBZDg0SjFBTHpYN0xUMmFVbmVBQ3ZkamF6UVhSVCs3Tk9TaWNBWllN?=
 =?utf-8?B?b1FwQmU2Q2RiRUNKTWFWbFZPV083QVpycHlmR044cWIvM2RpMUZoUlQ0aEdB?=
 =?utf-8?B?SWxNakV6M3d0QzZOenlCT0RJMXo0Z0RjSTB3UWV1cFZUdWxHbzRGaEVnMGR0?=
 =?utf-8?B?ZFZkRGdhZGJBWmdabktsNEFBeXpYSUJHTzZWS3J3QTNlbUJWNDhGOVkzMzhZ?=
 =?utf-8?B?WSsxVEhDeU0yTStZN2UyQ0prYlJ4NHdlVW9wVFJOWDJPNGRIc0t1enFqRUlD?=
 =?utf-8?B?dDJlVzFnOER2MXRva1I0T1dWTkZrL3ZhTk5qNHRsb2JIYzlQTy9zdy95SFQ4?=
 =?utf-8?B?Um1sYk5WaDFlOHZOZ203ZEt4Wkt1d0sveTdUcFNhS3hQa05Wa3o3QzlwdkFM?=
 =?utf-8?B?VFR2MHBkc3oyVTMvYStDS25qTWRnQUIwVFJiYmhJV2tPcWxFS2ZuR3VIVkly?=
 =?utf-8?B?Y0FvenZPYVFXRndHS3BWN3hoRlhzWlcxbXJLWEJ4QXcxQWh6SEI2RDZxSHAw?=
 =?utf-8?B?emUveEhISlByZ1RSTzkyZTRNSkFGc2xYaXlUUU4vWU44Y04vamZWSDJNWm1J?=
 =?utf-8?B?ZzRQU1IvQ1dVV2ZkR3BpQTZuQnp6YVpRREJ4T0orNUVkN0dNMHB3SnhVMjBS?=
 =?utf-8?B?RWVoTWR6cGdqcmNaMzlERlA2SEcvVUl6YnRBSFRKSTh2RUdmNUpxN0JpZ3Vs?=
 =?utf-8?B?cDJZTCt0SERnZ3d0ekJTcUNPd1FzaUdobDJjR2N2bTVvTkJtQW1zc1RrcUgz?=
 =?utf-8?B?MU5ranFOZnhrbG82anlwSUtIam9iK1EzdTFuWFlSSGlHYzNyZGE4aytuaWda?=
 =?utf-8?B?dWVuTThFL3hkakVzSUVjQVdFampwVzdNL3FuYVBVMHVEcVlPQjVpSm9ncHdr?=
 =?utf-8?B?WUFSU0tGS3NiSGFIZXBXczVQcStkZzZRcEhkVnFjelFxekRUdUFiSlRXb3dN?=
 =?utf-8?B?QnVnK1BsUzBPZEI1K2RHZnNPVlhYbHhJWUYzcnhBc01NdGZDWmEwQnZnYXdH?=
 =?utf-8?B?SENIVkFEL3o2aVBQeHRUeXh1UlhHYy82bWNDKytscHlWZ0ZVQlc0eGRaK2VR?=
 =?utf-8?B?TS9xcStGNFQ0RjVucnVndWZyMzFRSUdDSU0wUGN6MHduc05CMnhoT2lsbEZv?=
 =?utf-8?B?a0xIbzRaSkkvN0JPN1QzWVhLV2Y3WkhUZVhwL0V4Z3ZhNkpFUWlGekRXWmJl?=
 =?utf-8?B?TVFWQXhDS2lYVTRQbm4wMXNlMTlpOEwxR0pnWHNpWW1MbE1uSC9iYXdjdG91?=
 =?utf-8?B?Sjdja01DK2diaDFRNEh6eklybk5Yeng4Vlg5bTdidVJnejNPcEQ2N1lHWFdo?=
 =?utf-8?B?VU5xMjZlcGpOMVlEK3pyZEhRMEl5NHlEekZCNERGUFUvelJKRDBvdGNqbFdm?=
 =?utf-8?Q?3LH1yGhY8NgVjwmMzxN0KNdHtYf+6Exg83jNJ8LtGzuy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 684190a1-f79c-4f04-8cf1-08dc2605f634
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 04:50:22.6763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3AWgPJpDVl3qkRAu64TVltp1ctAgWImNEBrWA34kluj0gE4//rw7ygTaZNCs6CCUFWZ5Bif84eT2vs38NmUZ2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7596
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgRmVicnVhcnkgMiwg
MjAyNCAxOjE3IFBNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTog
W1BBVENIIHYzIDA0LzIxXSBkcm0vaTkxNS9wc3I6IFJlbmFtZSBpbnRlbF9wc3JfZW5hYmxlZA0K
PiANCj4gT24gRnJpLCAyMDI0LTAyLTAyIGF0IDA3OjM0ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3
cm90ZToNCj4gPg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4g
RnJvbTogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiBT
ZW50OiBGcmlkYXksIEphbnVhcnkgMTksIDIwMjQgMzo0MCBQTQ0KPiA+ID4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVz
aC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkNCj4gPiA+IDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+ID4gPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDQvMjFdIGRybS9pOTE1L3Bz
cjogUmVuYW1lIGludGVsX3Bzcl9lbmFibGVkDQo+ID4gPg0KPiA+ID4gSW50ZWxfcHNyX2VuYWJs
ZWQgaXMgbm93IG1pc2xlYWRpbmcgbmFtZSBhcyB3ZSBhcmUgdXNpbmcgbWFpbiBsaW5rDQo+ID4g
PiBvbiB3aXRoIHBhbmVsIHJlcGxheS4gSS5lLiBsaW5rIHJldHJhaW5pbmcgaXMgbm90IGNvbnRy
b2xsZWQgYnkNCj4gPiA+IGhhcmR3YXJlLg0KPiA+ID4gUmVuYW1lDQo+ID4gPiBpbnRlbF9wc3Jf
ZW5hYmxlZCBhcyBpbnRlbF9wc3JfaHdfY29udHJvbHNfbGlua19yZXRyYWluLg0KPiA+ID4NCj4g
PiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuY8KgIHwgMiArLQ0KPiA+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyB8IDIgKy0NCj4gPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmggfCAyICstDQo+ID4gPiDCoDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+ID4gPiBpbmRleCBhYjQxNWY0MTkyNGQuLmU3Y2RhMzE2MmVhMiAx
MDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Yw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+
ID4gPiBAQCAtNDk1MSw3ICs0OTUxLDcgQEAgaW50ZWxfZHBfbmVlZHNfbGlua19yZXRyYWluKHN0
cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2RwKQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAq
IEFsc28gd2hlbiBleGl0aW5nIFBTUiwgSFcgd2lsbCByZXRyYWluIHRoZSBsaW5rIGFueXdheXMN
Cj4gPiA+IGZpeGluZw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIGFueSBsaW5rIHN0YXR1cyBl
cnJvci4NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiA+IC3CoMKgwqDCoMKgwqDCoGlm
IChpbnRlbF9wc3JfZW5hYmxlZChpbnRlbF9kcCkpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAo
aW50ZWxfcHNyX2h3X2NvbnRyb2xzX2xpbmtfcmV0cmFpbihpbnRlbF9kcCkpDQo+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiA+DQo+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgaWYgKGRybV9kcF9kcGNkX3JlYWRfcGh5X2xpbmtfc3RhdHVzKCZpbnRl
bF9kcC0+YXV4LA0KPiA+ID4gRFBfUEhZX0RQUlgsIGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGluZGV4IGQxMWY4ZWE2ZTBhOS4uN2IzMjkwZjRl
MGI0IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+ID4gQEAgLTMwMTEsNyArMzAxMSw3IEBAIHZvaWQgaW50ZWxfcHNyX3Nob3J0X3B1
bHNlKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2RwKQ0KPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoG11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gPiA+IMKgfQ0KPiA+ID4NCj4gPiA+IC1i
b29sIGludGVsX3Bzcl9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gPiAr
Ym9vbCBpbnRlbF9wc3JfaHdfY29udHJvbHNfbGlua19yZXRyYWluKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApDQo+ID4NCj4gPiBCYXNlZCBvbiBDQU5fUFNSKCkgY2hlY2sgdGhlIGZ1bmN0aW9u
IHdpbGwgcmV0dXJuIGVhcmx5IGFuZCBvbmx5IGdldA0KPiA+IGV4ZWN1dGVkIGZvciBwc3IuIE5v
IHN1cmUgc3RpbGwgZG8gd2UgbmVlZCB0byByZW5hbWUgaXQ/DQo+IA0KPiBPay4gRm9yIG1lIGl0
IHdhcyBqdXN0IHN1cnByaWNlIHdoYXQgaXQgZG9lcyBhbmQgd2h5IHRoaXMgZnVuY3Rpb24gZXhp
c3RzLCB0aHVzDQo+IHJlbmFtaW5nLiBNdWNoIG1vcmUgZGVzY3JpcHRpdmUuIEFsc28gd2Ugd2ls
bCBzb29uIGhhdmUgbWFpbiBsaW5rIG9mZiB3aXRoDQo+IFBhbmVsIFJlcGxheSBhcyB3ZWxsIHRo
ZW4gdGhpcyBpcyBub3QgYWJvdXQgaGF2aW5nIFBTUiBvciBQYW5lbCBSZXBsYXkNCj4gZW5hYmxl
ZCwgYnV0IEhXIGNvbnRyb2xsaW5nIGxpbmsgcmV0cmFpbmluZy4NCj4gDQo+IEknbSBmaW5lIHdp
dGggZHJvcHBpbmcgdGhlIHBhdGNoIGlmIHlvdSBoYXZlIHN0cm9uZyBvcGluaW9uIG9uIHRoaXMu
DQoNCkRvIG5vdCBzZWUgYW55IHZhbHVlIGFkZGl0aW9uLCB0aG91Z2ggbm8gc3Ryb25nIG9iamVj
dGlvbi4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2Fu
ZGVyDQo+IA0KPiA+DQo+ID4gUmVnYXJkcywNCj4gPiBBbmltZXNoDQo+ID4gPiDCoHsNCj4gPiA+
IMKgwqDCoMKgwqDCoMKgwqBib29sIHJldDsNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ID4gPiBpbmRleCBjZGU3ODFkZjg0ZDUu
LmY3YzVjYzA3ODY0ZiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmgNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmgNCj4gPiA+IEBAIC00NSw3ICs0NSw3IEBAIHZvaWQgaW50ZWxfcHNyX2dl
dF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXINCj4gPiA+ICplbmNvZGVyLMKgIHZvaWQgaW50
ZWxfcHNyX2lycV9oYW5kbGVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiB1MzIg
cHNyX2lpcik7DQo+ID4gPiB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKTvCoCB2b2lkDQo+ID4gPiBpbnRlbF9wc3Jfd2FpdF9mb3JfaWRsZV9sb2Nr
ZWQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ICpuZXdfY3J0Y19zdGF0ZSk7
IC1ib29sIGludGVsX3Bzcl9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2Rw
KTsNCj4gPiA+ICtib29sIGludGVsX3Bzcl9od19jb250cm9sc19saW5rX3JldHJhaW4oc3RydWN0
IGludGVsX2RwDQo+ID4gPiAqaW50ZWxfZHApOw0KPiA+ID4gwqBpbnQgaW50ZWxfcHNyMl9zZWxf
ZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gPiA+IMKgdm9pZCBpbnRlbF9wc3IyX3By
b2dyYW1fdHJhbnNfbWFuX3Rya19jdGwoY29uc3Qgc3RydWN0DQo+ID4gPiBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKTsNCj4gPiA+IC0tDQo+ID4gPiAyLjM0LjENCj4gPg0KDQo=
