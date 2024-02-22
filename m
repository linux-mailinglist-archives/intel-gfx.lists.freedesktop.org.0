Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E165C85F325
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 09:39:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5020610E615;
	Thu, 22 Feb 2024 08:39:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dHXGm+fB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF3BF10E615
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 08:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708591177; x=1740127177;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=EonVIVkt+x1KVOi3eoV2vbj220YTfM5tgoI/qb061KM=;
 b=dHXGm+fB3oXVinnYXxWTXo1ptPh6cIjuM0tGbdsaedP2V2PxIqdui6kj
 VmVzYvBxcAWlLEppZHZk1FNlfPY1Jpkgn8TeVXKf+3vQn5CRfxiTWEOdC
 Eq5gG3LPCH1vylQMN9P/RzSbO461OWtk8Ja7TALs6tfvTxomS2iCIUV0Y
 nIBpGoQzMexivR8R4qghXNT28yiG3R2pI86fjwq/HVBiWBRJqJDDEubjO
 pATucqIAr3T85zI3M6lmgvWsh8UcXzgPDCFtSLZTVmPLc7aBl7JD7RzD+
 FKV2ui8HDHGQObopbpalv/35v9YtP6c71DIXWbfm5eiyY3Xv2negCu1Eh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="20353366"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="20353366"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 00:39:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="10110973"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 00:39:36 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 00:39:34 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 00:39:34 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 00:39:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C8cbtnhLpUyulHgUFo2IUu2SqvnDQnpGBsehZFLgMlIWFzllOhbZHigpqsrOYVpwxqpwhitg+6VytHQG/nPsS9NBl/jJlnsYn4etco+Ne6St1rpCN2P/ujva+tHomut4CXBAArWiA2/ovIsTdSXXexL8ihXzB2oD/PMgFY+yrkiVrUGlFf7KoV+dLpztsJH43FzmB1NCBFA0Pqba963IeGGXEOQq7PKopWqlqnuYndOZSVFzHuFw6+bc/Kv1ZdML0myIVhiSLIOHQb1lBj/ZTx+xNW0oM+RdesLiNlKO9lzSzts1Nbyae4UtAMMzsZurGPvJldgmN/bbLV0CNGpJaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EonVIVkt+x1KVOi3eoV2vbj220YTfM5tgoI/qb061KM=;
 b=ob6nt4xUP83ikxlksfy7ijPJIsjXSoFwiiappFk5Ej+2FgFDxh6+YzAYc6hVcF8Kxe3TmHUkpx9W0/AIsT0+RrIxUNbZnCHtBztfUk39v03ZIEsWDfJo71LmWTVLIFRl8M50yFO2xxE53y1pnDBf6T78pAQY5ylRJ0AmIOY9+VversEB10iAfXoloeCKTvWCYadMP9VKZHZi16A4yC306vzWP/7FVtrC+sPoMjAGDC7iJIQ1gMbglckDZVEQFEnzEjrghmI09BxDhlIKdjB9ylwb9KqUvebWbqKH2QFn1vf/8dZCGK5sHyEDirSbkN4L5Ue6ZeYqK6TPQgBT3+yVoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB8526.namprd11.prod.outlook.com (2603:10b6:510:30a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Thu, 22 Feb
 2024 08:39:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3418:ecc7:297e:ff6f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3418:ecc7:297e:ff6f%6]) with mapi id 15.20.7316.023; Thu, 22 Feb 2024
 08:39:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/i915/psr: Improve fast and IO wake lines
 calculation
Thread-Topic: [PATCH 2/3] drm/i915/psr: Improve fast and IO wake lines
 calculation
Thread-Index: AQHaZJsgJCI1NUjJUkimhCCNlxfnsbEVKLmAgADjXYA=
Date: Thu, 22 Feb 2024 08:39:32 +0000
Message-ID: <a3635096e204e4451d70cb604442450ae07e14b2.camel@intel.com>
References: <20240221075322.2764209-1-jouni.hogander@intel.com>
 <20240221075322.2764209-3-jouni.hogander@intel.com>
 <ZdZJh86BvrrAazou@intel.com>
In-Reply-To: <ZdZJh86BvrrAazou@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB8526:EE_
x-ms-office365-filtering-correlation-id: d9cff68a-3800-4e9c-3e81-08dc3381ca7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xJ78XGmYB4a7XnZkcdF2G/adLmuwd/IzM4znAp0WmFK3o5ZhZZO5kJ8/Vp64IzpMlvr+dB432+HFhomNZ8O1j7qFgFYVEGNJkm4aAEehcO/J8qRpMJRFdg89VT/2sM6fpw4g0eCHHYPIo3OCPNO/P7geeokbRLmhCZf6IqxtLvHZFtLyS9jBCgGAWPVtKgKi+Fpbqa32IQTYXcSnj6yiI4KC/N8zTUTb6vW/RGkh+sw6LNEGkIfCIDaIg86YP33Z/7mHvqxISxpnVaB4JRQgUBiecUxjPZwHfs0uaEe0pZWKa6/cGp5bGZXG/uU3szB2skNGzK1kwN6aqVszzUGjN9tNAdoqkU44pnMdQucYVtxneQEAXkvdWRQlisY96APj3IowI1qI1zmZxyDeBHVXKmYiKDleXOnH3MbG6PVfbxVZhNMcsIli3HxLfPZLDOAcn09O81HyW8Y1xjJsfiSWx5GnTZBpnNXxKI3dgpDBWXGo0mk0PSo6SWI3bE1LVqyuX2QPQOzdoczXlSANnr8iZpypRqOYrhu/O2dByuO9MvtD/1krj+0PqJiNnPwvbbLeCt4hxtLCeAMjigfuVwAFqabWEdhvuXpnuBflFsdR/NObjiAeWZdQXqDzz4pajF5d
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WkJNK3JTMzFCNXZIdWxzdXZCTElRTkVKRW9SR21pNEVUdjZXSkxCY3lKZzhR?=
 =?utf-8?B?a2V1bU95TTBqTEsrQmYwUjVEMk00NVdIUHpkcWdtSkd5a3JzZ1B4dWZHaXdQ?=
 =?utf-8?B?T01OZ3c4WEdNMU1CMjNnWGFqLzRYRVllMUtCejBtKzNPZnZld0hzQ1pOdW5z?=
 =?utf-8?B?SmpDcmFsVG9jZFVKMTZ3V2hnT2xjd0p6dzh0YXBzc3JIeE9lNHVvZHVMZnFM?=
 =?utf-8?B?MXFVU1VBakFGcEZ4VHJrcysyQ004TFpXNmovQjJSMjRQNGVPUW9ZYnNTbVNO?=
 =?utf-8?B?TmtoUm9ZTHZnR3pVcXpXWnhDYmRzVCs5NEN4WEt6cGpDSDhGSHc0Z0s4VW4v?=
 =?utf-8?B?L3RvQ1AyQXFrSFdlYVh2clltOFE3ZkxqZzFiRzNHMjdDYnB2Z2RHSkpMaHg1?=
 =?utf-8?B?SXJYZ3dFdStvc2dNa1dPYXZhTHpaWkxXRWVnd0x1NHpFVU52bkszSm0xc1l4?=
 =?utf-8?B?YUZ5eWxkOHZEMzhkdXFzU3JYaFpVNXNYazRKWmc0ZXhkU0YvOTlhWDU3emk5?=
 =?utf-8?B?U0R2UmtpMnlCYngwRFp3dmprUTZYM0pEUXFVdjhPV0NzbWtvem1HQWEvcVQ1?=
 =?utf-8?B?YW1xRjJoZWk1cm5CQTR6UXYwOERLV0hmUW9yZWNqM1B3cklSY1pMS2N5eC9x?=
 =?utf-8?B?NHEyS0RIWjlTcmpEVWNidVFveXliRlBLeFFwWjhEVWFSL0w2UzZheERlYlFw?=
 =?utf-8?B?MGR5cU05ZlNkTlhTZDhHZE8vTXB6YmQwSlZ6ZDBoV2JjZ3dxZnp0UUM4TUVh?=
 =?utf-8?B?WSs0MzFRQllZVzFPK09hcjR3T3RCQXFvc3NsK2N4UzF2cVlzNWRqM2kvTUlM?=
 =?utf-8?B?cDVwZUtQVnUxc3NNUUxLWkdqcXR2UXQxOXpNeHR3SDNLQnFKS1cyM3ZqVWtw?=
 =?utf-8?B?aWcrdndXTnFwWE1NS0RMNUdLeEs3MzZQSkc0L0lUb0R4R2c1Y04vc0tjYVhw?=
 =?utf-8?B?WWRhSi9LdXhDR0RpOGhHYlBVOUQzMHZUcy9pZmFZUGVxN2ZJMTAyVmtnVUl2?=
 =?utf-8?B?ZnBqR3BOdjVwaHFHVFE5SHpWZ29ud3BHOTh5ZExtbFQ2amZJVFh5cWZqdU1R?=
 =?utf-8?B?T1c1ekdOMktocFVSR00xQ29YYmU1d0VoUy82U2JQVS85N0JvT0x0aTJLaXlC?=
 =?utf-8?B?WXFJMUN1SVBUeFZvU29wNXhydDdiNjVZNCtnbm10RkZjVGRTN2FnM2pGOUEy?=
 =?utf-8?B?TU93M2RmTm1BMlNlaWdZVHQ1a3U5SlJiUzZmNFBFaVlISERBQUtCMUliT0Rv?=
 =?utf-8?B?bERjeFk0WUtuem04bFN1OW1jSHVXUVpvbWdJVjcwSVc2dGc2SC9PMHh6TmJU?=
 =?utf-8?B?UHlSdzl2Y3dJYzBBT254eDgyUFAveGlQcGJWdlJXVWgvdUJ1THRZSnh0SHlD?=
 =?utf-8?B?cFRodVoydnMxRUJHak1kU1cvd1FJRjZXbzhKL3JRTmFJQm91R3ZTTzRvNnpW?=
 =?utf-8?B?Ynpvdm9VTHJ0SG9lSmZtSDUyU1RHTmVQbTJwODRzZ1Q0citxRHd4a3U3aEZq?=
 =?utf-8?B?bFB3Njkxd3dhZmVtZUx6TVQ4ejY5ZEoxdVVqM3BpVHRidEQ5Smd6cjdlRFA3?=
 =?utf-8?B?bDRpYXcvQ2NvOUd5aTFmZ2JjT0R0T0Q0NHFvcVVVVEZPak9oUzNVY3BDeU9P?=
 =?utf-8?B?dnMwbG1Objh1SVcrQ2ZVZUlRK3lpaWVqKzhXTWpEWXlxVGtRdGtWNm90N3J3?=
 =?utf-8?B?OVlWWUJva2NqMmN4RDlDaWo3b0ppSGZWN1VNZkw1WmlFODRQL2ZZemtuRlRv?=
 =?utf-8?B?d0hLbTQva2hjK3hFLzl5QnZ3dnF6ZE5tV0dBSEdWWE00OUx3OFBGc2J4MlE1?=
 =?utf-8?B?ZytTdURMSXZjdzg1Ylo4TFVvbkZlSDlZRUl1MTJSQnZodlZrcG1RTEluS1VP?=
 =?utf-8?B?MEdjTFBBUi9wUHA2OElZSjlNZHNRckdKZHJHSndBNnRHa3hvOWRnellwNE9s?=
 =?utf-8?B?elA1TEJobU8ycjl0SGdtTklib29GOTVYdGs3ajRjTW51OXFLMEVVYzVPK0ow?=
 =?utf-8?B?SEQzdE1KaVdKNHFMWGMwc3NDUWdlSDZSU2hCOVJKNHorL2xHYWJGbVhYVnli?=
 =?utf-8?B?enl2bDdJZE1QYmR4YmxPUHFYTDdEL2xFUGRzTnhSVHVoRzRCNzlPLy9ybnRy?=
 =?utf-8?B?dnZUbHhMNERlVVc2Y0w0Z1ZuWnk1NmxGYnplczZIS0JTV29DU0R2cklkNWdv?=
 =?utf-8?B?eVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F50DF6CF5BB69E408ED5F07E2F3FF404@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9cff68a-3800-4e9c-3e81-08dc3381ca7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 08:39:32.0245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hM/lfSfw8MvjVO1ST8uG5dc8/GhJ4B1QpaWd/emhgwh5jQtL5Mf/j8ncGhR9KN8gzrYmIJCiSuwcL8u3S/AUApipT//hXmkfPSueXVvQ7bI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8526
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

VGhhbmsgeW91IFZpbGxlIGZvciBjaGVja2luZyBteSBwYXRjaC4gUGxlYXNlIHNlZSBteSByZXNw
b25zZXMgaW5saW5lCmJlbG93LgoKT24gV2VkLCAyMDI0LTAyLTIxIGF0IDIxOjA1ICswMjAwLCBW
aWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gT24gV2VkLCBGZWIgMjEsIDIwMjQgYXQgMDk6NTM6MjFB
TSArMDIwMCwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOgo+ID4gQ3VycmVudCBmYXN0IGFuZCBJTyB3
YWtlIGxpbmVzIGNhbGN1bGF0aW9uIGlzIGFzc3VtaW5nIGZhc3Qgd2FrZQo+ID4gc3luYwo+ID4g
bGVuZ3RoIGlzIDE4IHB1bHNlcy4gTGV0J3MgaW1wcm92ZSB0aGlzIGJ5IGNoZWNraW5nIHRoZSBh
Y3R1YWwKPiA+IGxlbmd0aC4KPiA+IAo+ID4gQWxzbyAxMCB1cyBJTyBidWZmZXIgd2FrZSB0aW1l
IGlzIGN1cnJlbnRseSBhc3N1bWVkLiBUaGlzIGlzIG5vdAo+ID4gdGhlIGNhc2UKPiA+IHdpdGgg
THVuYXJMYWtlIGFuZCBiZXlvbmQuIEZpeCB0aGlzIGJ5IGFkZGluZyBnZXR0ZXIgZm9yIElPIHdh
a2UKPiA+IHRpbWUgYW5kCj4gPiByZXR1cm4gdmFsdWVzIHRoZXJlIGFjY29yZGluZyB0byBCc3Bl
Yy4KPiA+IAo+ID4gQnNwZWM6IDY1NDUwCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA0MCArKysrKysrKysrKysrKysrKysr
LQo+ID4gLS0tLQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYwo+ID4gaW5kZXggNzJjYWRhZDA5ZGI1Li40YTFlMDc0MTE3MTYgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiBAQCAtMTE1MCw2ICsxMTUw
LDI4IEBAIHN0YXRpYyBib29sIF9sbmxfY29tcHV0ZV9hbHBtX3BhcmFtcyhzdHJ1Y3QKPiA+IGlu
dGVsX2RwICppbnRlbF9kcCwKPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiA+IMKg
fQo+ID4gwqAKPiA+ICsvKgo+ID4gKyAqIEZyb20gQnNwZWM6Cj4gPiArICoKPiA+ICsgKiBGb3Ig
WGUyIGFuZCBiZXlvbmQKPiA+ICsgKiBSQlIgMTV1cywgSEJSMSAxMXVzLCBoaWdoZXIgcmF0ZXMg
MTB1cwo+ID4gKyAqCj4gPiArICogRm9yIHByZS1YZTIKPiA+ICsgKiAxMCB1cwo+ID4gKyAqLwo+
ID4gK3N0YXRpYyBpbnQgZ2V0X2lvX3dha2VfdGltZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LAo+IAo+IE5vIHBvaW50IGluIHBhc3NpbmcgdGhhdC4gWW91IGNhbiBkaWcgb3V0IHRoZSBpOTE1
IGZyb20gdGhlIGNydGMKPiBzdGF0ZS4KCkZpeGVkLgoKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCj4gCj4gY29uc3QKPiAKPiA+ICt7Cj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+ID4gKwo+ID4gK8Kg
wqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpIDwgMjAgfHwgY3J0Y19zdGF0ZS0+cG9y
dF9jbG9jayA+Cj4gPiAyNzAwMDApCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIDEwOwo+ID4gK8KgwqDCoMKgwqDCoMKgZWxzZSBpZiAoY3J0Y19zdGF0ZS0+cG9ydF9j
bG9jayA+IDE2MjAwMCkKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
MTE7Cj4gPiArwqDCoMKgwqDCoMKgwqBlbHNlCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIDE1Owo+IAo+IFRoZSBuZXcgcmF0ZSBkZXBlbmRlbnQgc3R1ZmYgc2hvdWxk
IGJlIGEgc2VwYXJhdGUgcGF0Y2guCj4gCj4gQW5kIGxvb2tzIGxpa2UgdGhlIDEwIHVzZWMgd2ls
bCBnaXZlIHVzIDQ0IHVzZWMgaW8gd2FrZSB0aW1lLCBzbwo+IHRoYXQgc2hvdWxkIHByb2JhYmx5
IGJlIGEgc2VwYXJhdGUgcGF0Y2ggYXMgd2VsbCwgdG8gYXZvaWQKPiBhbnkgZnVuY3Rpb25hbCBj
aGFuZ2VzIHdoZW4gd2UgaW50cm9kdWNlIHRoZSBmb3JtdWxhLgoKTm8gaXQgd2lsbCBlbmQgdXAg
YXMgNDIgYXMgaXQgd2FzIG9yaWdpbmFsbHkuCgo+IAo+ID4gK30KPiA+ICsKPiA+IMKgc3RhdGlj
IGJvb2wgX2NvbXB1dGVfYWxwbV9wYXJhbXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUKPiA+ICpjcnRjX3N0YXRlKQo+ID4gwqB7
Cj4gPiBAQCAtMTE1NywxMyArMTE3OSwxNyBAQCBzdGF0aWMgYm9vbCBfY29tcHV0ZV9hbHBtX3Bh
cmFtcyhzdHJ1Y3QKPiA+IGludGVsX2RwICppbnRlbF9kcCwKPiA+IMKgwqDCoMKgwqDCoMKgwqBp
bnQgaW9fd2FrZV9saW5lcywgaW9fd2FrZV90aW1lLCBmYXN0X3dha2VfbGluZXMsCj4gPiBmYXN0
X3dha2VfdGltZTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBtYXhfd2FrZV9saW5lczsKPiA+IMKg
Cj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTIpIHsKPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpb193YWtlX3RpbWUgPSA0MjsKPiA+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKgo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAqIEFjY29yZGluZyB0byBCc3BlYyBpdCdzIDQydXMsIGJ1dCBiYXNlZCBvbgo+ID4g
dGVzdGluZwo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGl0IGlzIG5vdCBl
bm91Z2ggLT4gdXNlIDQ1IHVzLgo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAq
Lwo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZhc3Rfd2FrZV90aW1lID0gNDU7
Cj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPmdldF9hdXhfZndfc3luY19sZW4pIHsK
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnQgaW9fd2FrZV90aW1lID0gZ2V0
X2lvX3dha2VfdGltZShpbnRlbF9kcCwKPiA+IGNydGNfc3RhdGUpOwo+IAo+IExvb2tzIGxpa2Ug
dGhpcyB3aWxsIHNoYWRvdyB0aGUgdmFyaWFibGUgeW91J3JlIHRyeWluZyB0byBjaGFuZ2UuCj4g
RG9lcyB0aGUgY29tcGlsZXIgbm90IGNvbXBsYWluIGFib3V0IHRoaXM/CgpGaXhlZC4KCj4gCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50IHRmd19leGl0X2xhdGVuY3kgPSAy
MDsgLyogZURQIHNwZWMgKi8KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnQg
cGh5X3dha2UgPSA0O8KgwqDCoMKgwqDCoMKgwqDCoCAvKiBlRFAgc3BlYyAqLwo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludCBwcmVhbWJsZSA9IDg7wqDCoMKgwqDCoMKgwqDC
oMKgIC8qIGVEUCBzcGVjICovCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50
IHByZWNoYXJnZSA9IGludGVsX2RwLT5nZXRfYXV4X2Z3X3N5bmNfbGVuKCkgLQo+ID4gcHJlYW1i
bGU7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW9fd2FrZV90aW1l
ID0gbWF4KHByZWNoYXJnZSwgaW9fd2FrZV90aW1lKSArCj4gPiBwcmVhbWJsZSArCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBoeV93YWtlICsgdGZ3
X2V4aXRfbGF0ZW5jeTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmYXN0X3dh
a2VfdGltZSA9IHByZWNoYXJnZSArIHByZWFtYmxlICsgcGh5X3dha2UgKwo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0ZndfZXhpdF9sYXRlbmN5Owo+
ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogVE9ETzogQ2hlY2sg
aG93IHdlIGNhbiB1c2UgQUxQTV9DVEwgZmFzdCB3YWtlCj4gPiBleHRlbmRlZCBmaWVsZCAqLwo+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfd2FrZV9saW5lcyA9IDEyOwo+
IAo+IEkgd291bGQgYWxzbyBjb252ZXJ0IHRoZSBvbGRlciBwbGF0Zm9ybXMgdG8gdXNlIHRoZSBm
b3JtdWxhLgo+IFdlIGRvIG5lZWQgdG8gcmV2ZXJzZSBjYWxjdWxhdGUgdGhlIGlvIGJ1ZmZlciBv
biBsYXRlbmN5IHNpbmNlCj4gQUZBSUNTIGl0J3Mgbm90IGRpcmVjdGx5IHNwZWNpZmllZCBpbiBi
c3BlYy4gQnV0IEkgdGhpbmsKPiB0aGF0J3MgYmV0dGVyIHRoYW4gbm90IGNvbnZlcnRpbmcgaXQg
c2luY2Ugd2l0aCB0aGUgZm9ybXVsYSB3ZQo+IGNhbid0IHRvdGFsbHkgc2NyZXcgdGhpbmdzIHVw
IHdoZW4gZWcuIGNoYW5naW5nIHRoZSBwcmVjaGFyZ2UKPiBsZW5ndGguCj4gCgpJIHdpbGwgYWRk
IHRoaXMgaW4gbmV4dCB2ZXJzaW9uLgoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIK
