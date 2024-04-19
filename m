Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7467A8AA8AF
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 08:54:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEEA710E569;
	Fri, 19 Apr 2024 06:54:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IKTgjHQr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4218610F020
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713509673; x=1745045673;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2TT5G4J2QfdFwIFBWNgawfN0Tmj7fhMagKloDUVotm8=;
 b=IKTgjHQrrh2l0165r+61/Zh0/fGuqw5aNIrCczG9cjpFJHmp3/vyX7j0
 7gKLVmHk5e8XGIHnnEIAAGEaFqC88RBGXpWFWct/72kHy2PleMjbZPb0y
 W2lSvvjwVDhRweKqGfKVgjMYGTN9evfezUVQnZdFsOxiI8BG3GoZdgdp+
 FBT7zsL5O4pNj29Spn7OOdj6Ghxbt2H5nJc3+yXT0HFvKn5G+Ml4Q6a7x
 9OH5dS3u8SYVw6w+3nmAwEteMYE6BIepFzMb9r9nAMiXPi8CFX/+GjMUf
 N4W1esOCL8EGct7VSirBPn7VQOLOuODZQzzgFwdjXVzfeaee8W5dmpQ+m g==;
X-CSE-ConnectionGUID: GzD2796jS7GLWeUmGAWe1g==
X-CSE-MsgGUID: vGmL4ajKTmS4FvVdmGob7A==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9321897"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9321897"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 23:54:32 -0700
X-CSE-ConnectionGUID: hHoE0PeaSSiwWeIYHaFa6Q==
X-CSE-MsgGUID: JXyvIm/BSim8Kzav94Rf1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="27692446"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 23:54:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 23:54:32 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 23:54:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 23:54:31 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 23:54:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VkjnclYxOQPn7QuBEumTrh+wBlXkRZVIMms1NrmU9bWCwLK08xLFVOM7NEBhhIRs9jAPRLJpRK0buRCEuI93jo6VefSvfS2ewDGwjC1hNkg2uAsD2pA8eN/YHk75mZkSmEVpCMazLgdZSA//a3V+vnVLm9QlMdHO3YLoaiXT4/vLX6YCrf5j4SJ/H+w87N1CH0UsdvF3X6oTICtzi6e0RBmd/GBbuWDU7k2D1YLIarKWsLxE4Kn0q8j+DMETa0o+vODqSTIXaApR+2MFGJlZA+A5Aa17ZTZdypqCYB7ZgvcVQx25lYfz6lS6TQokXJCblrDGdNomLaDNdve+GgkXKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2TT5G4J2QfdFwIFBWNgawfN0Tmj7fhMagKloDUVotm8=;
 b=a1rRiB3i0e57Rbzmn13U1Q+zfqlRsmglMQawCtTk5IOYHl1Vrnqe81kX5350sjiSQRoajnOBuyA2aDUD/iWwyl+qTDOapQkaqmOAuekOWiuPugslerrEmXOoL+W7pNyG1+v1oep0slJ/6tfQf3j6XtT727hyFYiy+JSPmCAFGCJjvjBTcun4t5XJeAAetUklo0TroG5ZT1qH7M7qEK51thaJaTAvHXl/09DlRwrqEUh/P1HrbCpNeW4t2kq7RUQmSp2efXkK92h0NuDoksJzh1lu+B1y6U7E5XcptXrov8J/iIVNYX/mSYmTBl2gibivcDxiA9+hs+WQlypCW0Y66Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY8PR11MB6820.namprd11.prod.outlook.com (2603:10b6:930:60::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.39; Fri, 19 Apr
 2024 06:54:30 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7472.037; Fri, 19 Apr 2024
 06:54:29 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 6/6] drm/i915: Extract ilk_must_disable_lp_wm()
Thread-Topic: [PATCH 6/6] drm/i915: Extract ilk_must_disable_lp_wm()
Thread-Index: AQHaeuBd+OdlSDlCl0Wz2Ev0zGdHw7FvVNtw
Date: Fri, 19 Apr 2024 06:54:29 +0000
Message-ID: <IA0PR11MB73073797F50428C2F3DB504DBA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20240320160424.700-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CY8PR11MB6820:EE_
x-ms-office365-filtering-correlation-id: 3bfb96ef-0c48-494c-eef2-08dc603d8f91
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U73KW+zJSiTKfJcFgGNUCEhonzVWgBAaeiLQQ9VO5AcM2C+2SeF8J/VkirIa3dMUpPapfAXA6/MRn5RCeKH+yZniwBrUTzs68+mRrreOg6ljwoT3n94Rvo4bZyzQcZGTFULK3oRpGJ09TegpxWcxWayHaq9aN0Fhp8CpM1T/6hnYh/CLgwUxY59YyGGMxSFaWtGFK49kz29ZGghBRJA4MhJUm0RAMj7CsNyMBUvw7gxyHEccQoO5lwAZqyvmg+Of8WljW8kF+Ffm2GzevYax6NhksOHSj6IJKa27fpPI7GBblLcu+3ZHYZSArUdblE46H8r8DO27bezx0dA8FoR0u2AhJcHRsIx156M706WLBAfjc3GzGnh+EjYxQ4irqvu3lW7Uh08FJ91GglMtsZWbIlilttd0YIoNuT2963/H9GHPHSor1EmaIceUp6Nb2X381jx5/RcV/+wBcCCDgNEKnObi6lMOCsaR/THPN/soEdhhnltp//QXzKLKNv4Jz7l+2SiTBnrz9fWNYZ1sNZeqtwkTBV80cq4LYWxah+wL4dSgE1xZoBGYIG5c0wtjqZxAjIEq4snsbCySgjKZqfa5R9zXdzp32m6YPt3uBQ8H49t/+1qQcTkFzLkHJ27OfG388u4egFj0AfLTwztiuJgFvI2ZWLfxpcPlURgIQd+Hl04iUwzqsKRIk/1PxzbpA+DrGE7WcLteM5oftQAaJELUd4dL3/1zgepgwYhrYm1BYXI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U3ZDSEMzbHhsMHdTNWp3YTlZYUgvV3lxYUw3V2lGb2RORjgxNXIzMGtnc1pB?=
 =?utf-8?B?aDNGeXBQT0lncjFHVEJpNWxmb01vWFl4cUpIa2loQlRjWmYrMndYZDNsK2ZX?=
 =?utf-8?B?RWlmVkdZc2lxbER1YkM1cFFkQW5QeXE5eHRNa25BMHBqRndxSk1aV0k1RUZ6?=
 =?utf-8?B?UUhHcjJuekp5VWJ3UzgvZUR6M3hmTW5ML05lNUVST3k3d3pxb2g2SHpiRnRr?=
 =?utf-8?B?V001NHJENTNFZ1hsay9PdGtGaE92UnppWnkrN000UTZtWlU0UDloWHdCM3lp?=
 =?utf-8?B?aEdTT3JEQnhBQ2NYOS9KV3g3OW9wM1B0WlJhLzFJN29IVktkZEprWHhzRE5N?=
 =?utf-8?B?a1ZodDI4WnBpOXp3MnUzSWFwNVBITGx5SVRteGREYlliRC9jZWxnUnJ3SHpL?=
 =?utf-8?B?OG1UU2ZERnI0cXg3MHlvTG1yMldKTGg0dkxsQ1pqRGR5L3dyWHhVSDNhM1pP?=
 =?utf-8?B?dC81bzc1aGkzS21ZRU9PdS9LUkM4MXR5TDhyc0o3MFhiRDZvakEyRzIvWUhB?=
 =?utf-8?B?TWVLd01FbmZ3dHVxZlpDUTR4SEtJeGJZSXkrcGV0ejFCcTEzaHZnbm5XUVVw?=
 =?utf-8?B?YzBCTEdwcVhrbkpoRm9TVmFDdE8rMU1udXMyZU9IdEhneEg1N2kzbnZZL0hs?=
 =?utf-8?B?YkdtZmxVWk5lRVY4MUNKazV6ZTVhUk5BSUsreGJ1NEZvekNQSzNaK0t3cyt4?=
 =?utf-8?B?M3VYaHAxRHhaT1dudlRDQXpzcU5HL2hnSkdabHJBUmNWQ2JLRWVRK2dlOVA2?=
 =?utf-8?B?b2Fqb21rOEZVMWlYcmFOdUZMNHBrSWgwTUxubHRzZytERVRNK05rWmF2eXY3?=
 =?utf-8?B?SXFPZFpUcURtS0k1bVdUbFVrQ0lzbGlTSXlWc2FycUlZQThnQlB0WGo0YnVE?=
 =?utf-8?B?MEdpbk5UdnFnUWpobTZ6OEFnNDNpcTBWSFVBOUc1clBRU2V5Smtrdi9DNUtZ?=
 =?utf-8?B?azBsY0l4c0ExQjdZZFJhNXpCNm96RWNxWXVHc20zbldIN2JXSjFISGxqTEVE?=
 =?utf-8?B?Yk4ya3hIenZKTWtoRGI0bHNKcnI1Y2VpNXE2bHVMNXkxamEzcmVydVlvVFRE?=
 =?utf-8?B?L3ljNkFmZnNrdVMyc05qVFNrV3hNTG81OGhSWUliU1YzbEpLMGhHQ2RjSWtN?=
 =?utf-8?B?dU95QVNjd2FubkE4K3gvTUk0SzR5Tm56NDZjOEhKZ1pZZlI3YlZweG1HUEox?=
 =?utf-8?B?NmlFTXEyUm5EWHBNTDVzdE92eDlRRDdnbk9qYm1oNTYrUUEyZk5hK0dPVGVB?=
 =?utf-8?B?ZGhQNFBLUFU1UE1rRWNTZlJXUENQYWhUU2NoekF5T3VEd3ZSM3d0NXdVMTV3?=
 =?utf-8?B?M1Ewd0hSbkl3ZlRQVTBzcC9EQ2NQRm1OQkxtb2tCQkwxazZmbVJPL05RcVlM?=
 =?utf-8?B?c08yaUJZVlhZVjhpRDBlczRDV1NwdE1UMzRoNFNVZUtzNFFvK2hGRS9xN1o2?=
 =?utf-8?B?bnhkekU0aFREZ0ExODRaNEJNUk9WRzB5dVF4NXdBTUhKbVZNd3dGSStPRGk3?=
 =?utf-8?B?MnFUNWl3dVlzR29GMk9tSVJ6Z1RCUEtXK29xVWJNaVVMbE4yRTYyUThRWTNl?=
 =?utf-8?B?R1c5RlVWZnFqN01EZEVmZXFRTnZZTG01clpUekM1T0wrS1pZMkRiTXZ5UzlK?=
 =?utf-8?B?NVZPSzlkaFdZTUE1MXZlRnlxQnlGWW9LUGxJOUVWYWlGZVdnTnFOa1NoUysx?=
 =?utf-8?B?c2I2enJ6ZmJlTnNFNU1YWUtPaDlkVDEwRlMrdW8vQWtVUnlISmd3c2RPSHd6?=
 =?utf-8?B?aUVkVDNBQW5CSzk0VmlPNmc5TVZuaHJ2T01wclN0eDBtcS9sL3pycEpJaDdj?=
 =?utf-8?B?eVlJTEJwTGQ4NWczL1pjVHdrQnB3cUxkZzZ5QWhBN0s4M3pBMFNZd25wTFFt?=
 =?utf-8?B?OXhQa3BzZDZ0V29UeG8xak5nTTlQdUdpMURLZHZiSnJIYjFXUjdXQUxiMDNs?=
 =?utf-8?B?VzJoNVZmWVp2eSt4TDNsVHZHL2NKREo1eDc4SlRDOWFhemhwZ2ZkMDQ0cjB5?=
 =?utf-8?B?SHJQZEhkSEhLVjB0V1VuaTRCSGFJdGxWdlp3VHVzUmF1MHA1UTQ1bzhZK1ox?=
 =?utf-8?B?WWdtV1YyM3ZKVjZuRzJzQTFialdBVlNtemhER3prQ29iWU45WUVxckQrRjBm?=
 =?utf-8?B?dVYxYmFlWnB0NkNoOWNOUU0wNGxnSEtDNTg2czNRZk5LOVRhaENxSWx2ZEpi?=
 =?utf-8?Q?GGu1hDtXbu4k8uvolw5hlnkH6IJDRr8K3v5zZM//Tj9c?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bfb96ef-0c48-494c-eef2-08dc603d8f91
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 06:54:29.7274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KXix6ADMD98eR3gUVI8sR8/G4Zagl/Cx6rd+RiTcYnE0CuPFJwZqiGLXgOO1dkVNZ/dXWlTP1jDamG1+R9dj0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6820
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDIwLCAyMDI0IDk6MzQgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDYvNl0g
ZHJtL2k5MTU6IEV4dHJhY3QgaWxrX211c3RfZGlzYWJsZV9scF93bSgpDQo+IA0KPiBGcm9tOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gUHVs
bCB0aGUgaWxrL3NuYi9pdmIgTFAgd2F0ZXJtYXJrIGRpc2FibGUgY2hlY2tzIGludG8gYSBzZXBh
cmF0ZSBmdW5jdGlvbiBzaW1pbGFyDQo+IHRvIHRoZSBnbWNoIGNvdW50ZXJwYXJ0IChpOXh4X211
c3RfZGlzYWJsZV9jeHNyKCkpLg0KPiBSZWR1Y2VzIHRoZSBjbHV0dGVyIGluIGludGVsX3BsYW5l
X2F0b21pY19jYWxjX2NoYW5nZXMoKSBzaWduaWZpY2FudGx5Lg0KPiANCkxvb2tzIGdvb2QgdG8g
bWUuDQpDYW4gdGhpcyBwYXRjaCBiZSB0YWtlbiBvdXQgb2YgdGhpcyBzZXJpZXMgYXMgaXQgaGFz
IG5vIGNsb3NlIHJlbGF0aW9uIHdpdGggYXN5bmMuDQpXaXRoIHRha2luZyB0aGlzIHBhdGNoIHNl
cGFyYXRlbHkNClJldmlld2VkLWJ5OiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVs
LmNvbT4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0t
LS0tLS0tLQ0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2F0b21pY19wbGFuZS5jIHwgOTUgKysrKysrKysrKystLS0tLS0tLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDU3IGluc2VydGlvbnMoKyksIDM4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jDQo+IGlu
ZGV4IGIwODNiOTg1ZDE3MC4uMTliY2Y1NzU0ZWUyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMNCj4gQEAgLTQ4Miw2ICs0
ODIsNjEgQEAgc3RhdGljIGJvb2wgaTl4eF9tdXN0X2Rpc2FibGVfY3hzcihjb25zdCBzdHJ1Y3QN
Cj4gaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUNCj4gIAlyZXR1cm4gb2xkX2N0bCAh
PSBuZXdfY3RsOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyBib29sIGlsa19tdXN0X2Rpc2FibGVfbHBf
d20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKm5ld19jcnRjX3N0YXRlLA0KPiAr
CQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZQ0KPiAqb2xkX3BsYW5lX3N0YXRl
LA0KPiArCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZQ0KPiAqbmV3X3BsYW5l
X3N0YXRlKSB7DQo+ICsJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSA9IHRvX2ludGVsX3BsYW5l
KG5ld19wbGFuZV9zdGF0ZS0NCj4gPnVhcGkucGxhbmUpOw0KPiArCWJvb2wgb2xkX3Zpc2libGUg
PSBvbGRfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZTsNCj4gKwlib29sIG5ld192aXNpYmxlID0g
bmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGU7DQo+ICsJYm9vbCBtb2Rlc2V0LCB0dXJuX29u
Ow0KPiArDQo+ICsJaWYgKHBsYW5lLT5pZCA9PSBQTEFORV9DVVJTT1IpDQo+ICsJCXJldHVybiBm
YWxzZTsNCj4gKw0KPiArCW1vZGVzZXQgPSBpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2Ny
dGNfc3RhdGUpOw0KPiArCXR1cm5fb24gPSBuZXdfdmlzaWJsZSAmJiAoIW9sZF92aXNpYmxlIHx8
IG1vZGVzZXQpOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBJTEsvU05CIERWU0FDTlRSL1Nwcml0ZSBF
bmFibGUNCj4gKwkgKiBJVkIgU1BSX0NUTC9TcHJpdGUgRW5hYmxlDQo+ICsJICogIldoZW4gaW4g
U2VsZiBSZWZyZXNoIEJpZyBGSUZPIG1vZGUsIGEgd3JpdGUgdG8gZW5hYmxlIHRoZQ0KPiArCSAq
ICBwbGFuZSB3aWxsIGJlIGludGVybmFsbHkgYnVmZmVyZWQgYW5kIGRlbGF5ZWQgd2hpbGUgQmln
IEZJRk8NCj4gKwkgKiAgbW9kZSBpcyBleGl0aW5nLiINCj4gKwkgKg0KPiArCSAqIFdoaWNoIG1l
YW5zIHRoYXQgZW5hYmxpbmcgdGhlIHNwcml0ZSBjYW4gdGFrZSBhbiBleHRyYSBmcmFtZQ0KPiAr
CSAqIHdoZW4gd2Ugc3RhcnQgaW4gYmlnIEZJRk8gbW9kZSAoTFAxKykuIFRodXMgd2UgbmVlZCB0
byBkcm9wDQo+ICsJICogZG93biB0byBMUDAgYW5kIHdhaXQgZm9yIHZibGFuayBpbiBvcmRlciB0
byBtYWtlIHN1cmUgdGhlDQo+ICsJICogc3ByaXRlIGdldHMgZW5hYmxlZCBvbiB0aGUgbmV4dCB2
YmxhbmsgYWZ0ZXIgdGhlIHJlZ2lzdGVyIHdyaXRlLg0KPiArCSAqIERvaW5nIG90aGVyd2lzZSB3
b3VsZCByaXNrIGVuYWJsaW5nIHRoZSBzcHJpdGUgb25lIGZyYW1lIGFmdGVyDQo+ICsJICogd2Un
dmUgYWxyZWFkeSBzaWduYWxsZWQgZmxpcCBjb21wbGV0aW9uLiBXZSBjYW4gcmVzdW1lIExQMSsN
Cj4gKwkgKiBvbmNlIHRoZSBzcHJpdGUgaGFzIGJlZW4gZW5hYmxlZC4NCj4gKwkgKg0KPiArCSAq
IFdpdGggZXhwZXJpbWVudGFsIHJlc3VsdHMgc2VlbXMgdGhpcyBpcyBuZWVkZWQgYWxzbyBmb3Ig
cHJpbWFyeQ0KPiArCSAqIHBsYW5lLCBub3Qgb25seSBzcHJpdGUgcGxhbmUuDQo+ICsJICovDQo+
ICsJaWYgKHR1cm5fb24pDQo+ICsJCXJldHVybiB0cnVlOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBX
YUN4U1JEaXNhYmxlZEZvclNwcml0ZVNjYWxpbmc6aXZiDQo+ICsJICogSVZCIFNQUl9TQ0FMRS9T
Y2FsaW5nIEVuYWJsZQ0KPiArCSAqICJMb3cgUG93ZXIgd2F0ZXJtYXJrcyBtdXN0IGJlIGRpc2Fi
bGVkIGZvciBhdCBsZWFzdCBvbmUNCj4gKwkgKiAgZnJhbWUgYmVmb3JlIGVuYWJsaW5nIHNwcml0
ZSBzY2FsaW5nLCBhbmQga2VwdCBkaXNhYmxlZA0KPiArCSAqICB1bnRpbCBzcHJpdGUgc2NhbGlu
ZyBpcyBkaXNhYmxlZC4iDQo+ICsJICoNCj4gKwkgKiBJTEsvU05CIERWU0FTQ0FMRS9TY2FsaW5n
IEVuYWJsZQ0KPiArCSAqICJXaGVuIGluIFNlbGYgUmVmcmVzaCBCaWcgRklGTyBtb2RlLCBzY2Fs
aW5nIGVuYWJsZSB3aWxsIGJlDQo+ICsJICogIG1hc2tlZCBvZmYgd2hpbGUgQmlnIEZJRk8gbW9k
ZSBpcyBleGl0aW5nLiINCj4gKwkgKg0KPiArCSAqIERlc3BpdGUgdGhlIHcvYSBvbmx5IGJlaW5n
IGxpc3RlZCBmb3IgSVZCIHdlIGFzc3VtZSB0aGF0DQo+ICsJICogdGhlIElMSy9TTkIgbm90ZSBo
YXMgc2ltaWxhciByYW1pZmljYXRpb25zLCBoZW5jZSB3ZSBhcHBseQ0KPiArCSAqIHRoZSB3L2Eg
b24gYWxsIHRocmVlIHBsYXRmb3Jtcy4NCj4gKwkgKi8NCj4gKwlyZXR1cm4gIWludGVsX3BsYW5l
X2lzX3NjYWxlZChvbGRfcGxhbmVfc3RhdGUpICYmDQo+ICsJCWludGVsX3BsYW5lX2lzX3NjYWxl
ZChuZXdfcGxhbmVfc3RhdGUpOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgaW50IGludGVsX3BsYW5l
X2F0b21pY19jYWxjX2NoYW5nZXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKm9s
ZF9jcnRjX3N0YXRlLA0KPiAgCQkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3
X2NydGNfc3RhdGUsDQo+ICAJCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZQ0K
PiAqb2xkX3BsYW5lX3N0YXRlLCBAQCAtNTU3LDQ0ICs2MTIsOCBAQCBzdGF0aWMgaW50DQo+IGlu
dGVsX3BsYW5lX2F0b21pY19jYWxjX2NoYW5nZXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKm9sZF9jcg0KPiAgCSAgICBpOXh4X211c3RfZGlzYWJsZV9jeHNyKG5ld19jcnRjX3N0YXRl
LCBvbGRfcGxhbmVfc3RhdGUsDQo+IG5ld19wbGFuZV9zdGF0ZSkpDQo+ICAJCW5ld19jcnRjX3N0
YXRlLT5kaXNhYmxlX2N4c3IgPSB0cnVlOw0KPiANCj4gLQkvKg0KPiAtCSAqIElMSy9TTkIgRFZT
QUNOVFIvU3ByaXRlIEVuYWJsZQ0KPiAtCSAqIElWQiBTUFJfQ1RML1Nwcml0ZSBFbmFibGUNCj4g
LQkgKiAiV2hlbiBpbiBTZWxmIFJlZnJlc2ggQmlnIEZJRk8gbW9kZSwgYSB3cml0ZSB0byBlbmFi
bGUgdGhlDQo+IC0JICogIHBsYW5lIHdpbGwgYmUgaW50ZXJuYWxseSBidWZmZXJlZCBhbmQgZGVs
YXllZCB3aGlsZSBCaWcgRklGTw0KPiAtCSAqICBtb2RlIGlzIGV4aXRpbmcuIg0KPiAtCSAqDQo+
IC0JICogV2hpY2ggbWVhbnMgdGhhdCBlbmFibGluZyB0aGUgc3ByaXRlIGNhbiB0YWtlIGFuIGV4
dHJhIGZyYW1lDQo+IC0JICogd2hlbiB3ZSBzdGFydCBpbiBiaWcgRklGTyBtb2RlIChMUDErKS4g
VGh1cyB3ZSBuZWVkIHRvIGRyb3ANCj4gLQkgKiBkb3duIHRvIExQMCBhbmQgd2FpdCBmb3IgdmJs
YW5rIGluIG9yZGVyIHRvIG1ha2Ugc3VyZSB0aGUNCj4gLQkgKiBzcHJpdGUgZ2V0cyBlbmFibGVk
IG9uIHRoZSBuZXh0IHZibGFuayBhZnRlciB0aGUgcmVnaXN0ZXIgd3JpdGUuDQo+IC0JICogRG9p
bmcgb3RoZXJ3aXNlIHdvdWxkIHJpc2sgZW5hYmxpbmcgdGhlIHNwcml0ZSBvbmUgZnJhbWUgYWZ0
ZXINCj4gLQkgKiB3ZSd2ZSBhbHJlYWR5IHNpZ25hbGxlZCBmbGlwIGNvbXBsZXRpb24uIFdlIGNh
biByZXN1bWUgTFAxKw0KPiAtCSAqIG9uY2UgdGhlIHNwcml0ZSBoYXMgYmVlbiBlbmFibGVkLg0K
PiAtCSAqDQo+IC0JICoNCj4gLQkgKiBXYUN4U1JEaXNhYmxlZEZvclNwcml0ZVNjYWxpbmc6aXZi
DQo+IC0JICogSVZCIFNQUl9TQ0FMRS9TY2FsaW5nIEVuYWJsZQ0KPiAtCSAqICJMb3cgUG93ZXIg
d2F0ZXJtYXJrcyBtdXN0IGJlIGRpc2FibGVkIGZvciBhdCBsZWFzdCBvbmUNCj4gLQkgKiAgZnJh
bWUgYmVmb3JlIGVuYWJsaW5nIHNwcml0ZSBzY2FsaW5nLCBhbmQga2VwdCBkaXNhYmxlZA0KPiAt
CSAqICB1bnRpbCBzcHJpdGUgc2NhbGluZyBpcyBkaXNhYmxlZC4iDQo+IC0JICoNCj4gLQkgKiBJ
TEsvU05CIERWU0FTQ0FMRS9TY2FsaW5nIEVuYWJsZQ0KPiAtCSAqICJXaGVuIGluIFNlbGYgUmVm
cmVzaCBCaWcgRklGTyBtb2RlLCBzY2FsaW5nIGVuYWJsZSB3aWxsIGJlDQo+IC0JICogIG1hc2tl
ZCBvZmYgd2hpbGUgQmlnIEZJRk8gbW9kZSBpcyBleGl0aW5nLiINCj4gLQkgKg0KPiAtCSAqIERl
c3BpdGUgdGhlIHcvYSBvbmx5IGJlaW5nIGxpc3RlZCBmb3IgSVZCIHdlIGFzc3VtZSB0aGF0DQo+
IC0JICogdGhlIElMSy9TTkIgbm90ZSBoYXMgc2ltaWxhciByYW1pZmljYXRpb25zLCBoZW5jZSB3
ZSBhcHBseQ0KPiAtCSAqIHRoZSB3L2Egb24gYWxsIHRocmVlIHBsYXRmb3Jtcy4NCj4gLQkgKg0K
PiAtCSAqIFdpdGggZXhwZXJpbWVudGFsIHJlc3VsdHMgc2VlbXMgdGhpcyBpcyBuZWVkZWQgYWxz
byBmb3IgcHJpbWFyeQ0KPiAtCSAqIHBsYW5lLCBub3Qgb25seSBzcHJpdGUgcGxhbmUuDQo+IC0J
ICovDQo+IC0JaWYgKHBsYW5lLT5pZCAhPSBQTEFORV9DVVJTT1IgJiYNCj4gLQkgICAgKElTX0lS
T05MQUtFKGRldl9wcml2KSB8fCBJU19TQU5EWUJSSURHRShkZXZfcHJpdikgfHwNCj4gLQkgICAg
IElTX0lWWUJSSURHRShkZXZfcHJpdikpICYmDQo+IC0JICAgICh0dXJuX29uIHx8ICghaW50ZWxf
cGxhbmVfaXNfc2NhbGVkKG9sZF9wbGFuZV9zdGF0ZSkgJiYNCj4gLQkJCSBpbnRlbF9wbGFuZV9p
c19zY2FsZWQobmV3X3BsYW5lX3N0YXRlKSkpKQ0KPiArCWlmICgoSVNfSVJPTkxBS0UoZGV2X3By
aXYpIHx8IElTX1NBTkRZQlJJREdFKGRldl9wcml2KSB8fA0KPiBJU19JVllCUklER0UoZGV2X3By
aXYpKSAmJg0KPiArCSAgICBpbGtfbXVzdF9kaXNhYmxlX2xwX3dtKG5ld19jcnRjX3N0YXRlLCBv
bGRfcGxhbmVfc3RhdGUsDQo+ICtuZXdfcGxhbmVfc3RhdGUpKQ0KPiAgCQluZXdfY3J0Y19zdGF0
ZS0+ZGlzYWJsZV9scF93bSA9IHRydWU7DQo+IA0KPiAgCWlmIChpbnRlbF9wbGFuZV9kb19hc3lu
Y19mbGlwKHBsYW5lLCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUpKSB7DQo+IC0tDQo+
IDIuNDMuMg0KDQo=
