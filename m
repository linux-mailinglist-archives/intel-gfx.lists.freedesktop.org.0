Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F8887A6F5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 12:15:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C113010F539;
	Wed, 13 Mar 2024 11:15:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OxhP4P8q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A940D10F539
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 11:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710328530; x=1741864530;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/4zs3O4ZzB5Q7c4OWd2N9tGHagFT34yaeNqhqP6c5Rs=;
 b=OxhP4P8qAn8Ldddm6O74j/dreBY+GsJJRrmDGcpEReRRhh9uvdKfsqRZ
 1WpvgekfoFTsB1klH8tE6qRACgdWY+45kA0btOneOGH61/YPPFzy1/04R
 AupYCA3tPJFt/QHuLo8AtdE/uex54eJsz7YgJdKa7yTmUnqrUockBTRn2
 k8tSeu0nAfEqAohu039G4htSnbLlMyNn8uN956V5ojWbXZJuVgyLf8sar
 84Ay8/OgRTOi7D0Utaem443d2dfUZsAjTvedhFcSGcmT1mRhJHKoHdOD0
 P0o5TAoIgQGlzUIlTwqGlUVIaSPKkRgyQ+6Hu4eXs/JEABZkh5njwZZJa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="5015513"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="5015513"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 04:15:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="42882259"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2024 04:15:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 04:15:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 04:15:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Mar 2024 04:15:25 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Mar 2024 04:14:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZsPNGHwKkkHkNgOaMnPg4M2D9RgjET/NUP4puEu+4cHdoI7J9yFn7eCzAwazwzs+SnbkcsmUjNIIJvgd0EEgOuZ3MBVA/kM5qGui7EmdPOIar3SLpGNWeCyPLGluQWbWMvm8JuxS+FBDKbHbEhentgwBjvzpF6nYof5/XWW+b/cuQeUdPWFMS4HANqLIW/VXh5uKME8glO9Uxs9hWe0EbLHsTLfXYSPy+7yF68CLv+Z3scxMR3GfLo7AJyGejd89Bw29iJllyypm1atDpi2SEArVn9SPd68/R1CGzyBlMR7vNERedVNiX+RzDMR++h0qA1vKbHnJOrpkEk5mRvWtSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/4zs3O4ZzB5Q7c4OWd2N9tGHagFT34yaeNqhqP6c5Rs=;
 b=Ju2jYCU+InP0b4VgWZ7qF84+XKgw1cbIf4bBdk/yd1ijYrr4qDlgPzU46EyRd4/pc2OelM6UsYbBlnvpjdl2bE6qM0Ye7KbrX9Cxc0eqh+x+mwDd+KMZd6+s11tgMW7vCZp9a4ZHI9ZR84Ow3Bq0ZgmyxLqoaygV1HN5zFBLRPdvnOLx2LnUyQOB7vLOSrDg5zixvDSppwRn9NeCwYqOZG0MDkE8a2xXDTFOyq26+TXuSdC6fkGYleeXcJcEvI3N5+5tDFR9qe+Vl1rpRODiZ0Jr6CyLFx9fSOIr50sbxNABCjj3Ed0zyA/9TVfA4tHm5WE0u5nYcLFXrvU1q7vHUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY5PR11MB6236.namprd11.prod.outlook.com (2603:10b6:930:23::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Wed, 13 Mar
 2024 11:14:56 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 11:14:56 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 3/6] drm/i915/psr: Calculate aux less wake time
Thread-Topic: [PATCH v3 3/6] drm/i915/psr: Calculate aux less wake time
Thread-Index: AQHab7NxHVksSb/gzk6lMNavTlMDN7E1i3WQ
Date: Wed, 13 Mar 2024 11:14:56 +0000
Message-ID: <PH7PR11MB5981117DD607E9FBCFC3ED17F92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
 <20240306104513.2129442-4-jouni.hogander@intel.com>
In-Reply-To: <20240306104513.2129442-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY5PR11MB6236:EE_
x-ms-office365-filtering-correlation-id: 28b597a0-4096-4519-4376-08dc434ed0a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A/uCbISpLu09sXf143V59CSqNzs3WfmABijGXBTg1I/MBEJQ0lhFArG28oqM/yy/CCZyGmx6+1uG3jK6dFlWaHXgddoiF8kcIGqi2I29pyIMLoOxUSi+AZy+izcjahUX/o9Luv56vuOrZdOOSeokxpBLDgu2l7wX9UI4v5rww2KT5HJ2Rp1malz7fwsgpcQeQOQGHIhUhIVTGyKKOp52wdUnvFWWBCYU2dGk6cDenB34AlR75sHmEcIKTrGrYvdRerBHBq+vIkjK4ZOH7dOFcgJ4dZ/3n/H79/+KcjqmI/nRd88lrBadFZBJ6JO2SQ3QZN6LL7f8cvyUUsiz0ufCNfv7kWV2DYjdhbC3vetIUiABQrF95GYcao2zwWz8/LnTeVKW7kA4Q3fxNHN/L3j1HvYpqfusv5baXHH1u+epJEL0+MNBaoRF9rdxbzjlpNLhBBc3P+E4KM54YF2ViriMLNmyS4Ai5+x2F/odQfCHzFzaqc3iTwGgKRwUFbP8tMSlxje3cSr+uJPeIQlJuCSUu7w9YPwzFvaCzAKaTo+nTijB6XhB81FgAs6XLqN0hOKsfr/qCHuU0U/r86L12mPiddjWhStxUY9MQBUvfE6IG/fEu35eSKqxrBeEljv1/EwyHvfT1hOM1on/7ZShFq45MpUw7rDKBQQPwcg9p8Awc2U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dk1IWnhIVll5NlRGU09xWWRZMFhuTWJCemVDTTVPQWFaaUJOR05vcUpvUmZJ?=
 =?utf-8?B?NmRSZUIvOXBya1E5eDJaQlBzVzJBb0lDTUJ2bytySHdaRlNZaXhpQlNLU0F6?=
 =?utf-8?B?WkhOUGxIQk8xdmVtTWdYdC9WZHQya0U3QWVyRXhtanQ4Y1Z1WThmbFp0K0NN?=
 =?utf-8?B?dW81NU5ldzRNM0tvZllHcDdxbGFBbTRndFZ4VThObG1WWEhCQVRXb2ZKQ2Jw?=
 =?utf-8?B?cTNicHcwM1IvUlh2b3ZaVUtJVFU1NVh3bS9QM0tBSWpqcGpYKzhDTERLWS9O?=
 =?utf-8?B?TnF1aHhwUXM1enFBM0p1N3dpVHhCR25CSEFlTjM1Tk9GVGgzQWgydE1mT3Na?=
 =?utf-8?B?L3F3cnhvcFl2Z1BQL1BSbFRHRG9XSE9qM0V4TE85VEFEdDhvbXpwcDZSVXR5?=
 =?utf-8?B?N0JDLzBJWCs1K3BaaVJWeDVHZzRWSUFIc24vREdmM1NxQnV0QnFEU1h1YnJw?=
 =?utf-8?B?K3NHOXF3S3hHdm0rUStXOEh5dDhTeHAwK2dCT0hNTGJwcHBqVkFzeU85MFRI?=
 =?utf-8?B?ODVqMHlQTzZwUUNvUFNINGVBWk15d2RoYllYdzNjTy9KdXdJbkdEYTF6eUVk?=
 =?utf-8?B?M3FrNHlwREoweWZobzdTRy9nRHdxYkFBTklqQjVmY21ZVDRaMlljdWZZSktM?=
 =?utf-8?B?bUZJcnJ4RkIyTDRpNmhIajc5Y2pBRWVtekJmc3VZQVFSS3RncTQ5dG9hTXhC?=
 =?utf-8?B?dStRY1FoRTdFejd5K0ZtYmRISWNpNjNBN1lWQlpZVWo4RDBEYlpTcWNyblhP?=
 =?utf-8?B?aEFERWs1akY2ZFFJMU5VOWlkenh6V1cxNGFaaXVOenlBYVo0aVhhTzRkM0Yy?=
 =?utf-8?B?STAwaDl0SWx0Tmc0RW5LdUdLaFhHbDBQalJ0a0hoeGJzeWV3end5NjgxWVpO?=
 =?utf-8?B?ZWVmK09jdDRmaUloWkhBSnBaT1daVWFuWUpCbGVKZ0IwajcyRDVxNjB5Syto?=
 =?utf-8?B?RWRZSVErWlJzQ0NqTy85b1Uvd3VQVG5SbDdnVzhWd0VyYmtYZlNPb1ZzOWs5?=
 =?utf-8?B?QzV4MU9PUjV2clk4TnlNWlczcXgvWUQvMXdqczU0NnFSNW44V3lMUk11QU8y?=
 =?utf-8?B?bWppc290cVhwbnU2d1NMbXNVWWltc2czREFHNXJJQVVONGhTQ2x1eDBXZXNM?=
 =?utf-8?B?RGlkcmxHUnZlQTZxcDl0Z2RZdHFoSWY0THJuemJ1QVU5eDdJbk5xL1I3bXlT?=
 =?utf-8?B?L05aeTBlcTdseStLbjhPTDdQaHNFWU1tSzV3TWRzSGcyUEQwbnJzenZaYitn?=
 =?utf-8?B?NjFnMStzUkZ5SElLaFJGSjBXUE1JN1BZVCtIOWt5ZktDcVB0L2hRaGJzbC84?=
 =?utf-8?B?aktUUi8zbWVxNjJvNU85eVM0K01hUFJlN0F5NVBKT0szOXlnRldvQnROcU5O?=
 =?utf-8?B?eE9LcklVNktlN3JWT3FwTkJWQjFFSTRxODd1K1B2ck5wU2k4TWljb2tUZkFh?=
 =?utf-8?B?WlZleEhlUzhmZzdmZGliZy9OcnNUeE9OdStiN3JtR1RlUDFyOWd1YkhXczRo?=
 =?utf-8?B?SGZ5MFNScW1wVmtkSXJqSmt1RmZkNVlpb2VYMHQrS3JCdGxDSFFVRkMvMkUv?=
 =?utf-8?B?VVNzWjBpci84bFNBcXFGRHRQaUdSWVBERE1DSnNaVUttcnhNVWlrbWVkMDBv?=
 =?utf-8?B?ZVoxOEZKU2JscDI1WnV6RWd1ajdqenVnNHhNamtMU2NxM1dYUzJCOFBHQmU0?=
 =?utf-8?B?NnNqeUdwaXhQejFnZjBvbkdTQUV1QWdGUFlmNGIrSlhCSnFzRWJQdzZLNXRD?=
 =?utf-8?B?V3pBdTM0VE03SEx0REhmU0ZNZlBJL2ZqQmxER3Z6ZDA2OUNOY0srWGt3UFl6?=
 =?utf-8?B?R1BSalllMllpdUlwVVhKb2VkRUVlMkVtNC93UnJjcVJESVlTSFBBZHJjN3JV?=
 =?utf-8?B?eUd1S3Jrc0ZLUVRxSHBsdjNqeDJJOWJyeTIyLzBUS1l3b1dXeTZPUi9uR3Z0?=
 =?utf-8?B?QllQclMvdjVTWURkZFkzVGhhUFdKcCtERkFlK3NxRlZxemNKM3h5R0R3SUZY?=
 =?utf-8?B?UXZoS2YwcmdleDdrOHU3TmZzc1gzOUlYb3kyenpranA2Wm1rQStKZkUwWi9o?=
 =?utf-8?B?MDNqdmt5MkVSZTZxeXhReFBQYWk4TytrNVlVRVpkYXh6VHdXWTJYSjlGdXp6?=
 =?utf-8?Q?uYmHdqWtDQjVjoc23PxW+wqqD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28b597a0-4096-4519-4376-08dc434ed0a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 11:14:56.5994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c5/nAhdBBrVt+imioDmPPw3DWxRcaJIWDeot28vElHqDzXVMds/cZa16toUbCf4Tw0l6WFcZ0QO40xIRBCZ8wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6236
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggNiwg
MjAyNCA0OjE1IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgTWFubmEs
IEFuaW1lc2gNCj4gPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgTXVydGh5LCBBcnVuIFIgPGFy
dW4uci5tdXJ0aHlAaW50ZWwuY29tPjsNCj4gSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAzLzZdIGRybS9pOTE1L3BzcjogQ2Fs
Y3VsYXRlIGF1eCBsZXNzIHdha2UgdGltZQ0KPiANCj4gQ2FsY3VsYXRlIGF1eCBsZXNzIHdha2Ug
dGltZSBhbmQgc3RvcmUgaXQgaW50byBhbHBtX3BhcmFtcyBzdHJ1Y3QNCj4gDQo+IEJzcGVjOiA3
MTQ3Nw0KPiANCj4gdjM6DQo+ICAgLSB1c2UgQUxQTV9DVExfQVVYX0xFU1NfV0FLRV9USU1FX01B
U0sgaW5zdGVhZCBvZiB2YWx1ZSA2Mw0KPiB2MjoNCj4gICAtIHVzZSB2YXJpYWJsZXMgaW5zdGVh
ZCBvZiB2YWx1ZXMgZGlyZWN0bHkNCj4gICAtIGZpeCBtYXggdmFsdWUNCj4gICAtIG1vdmUgY29u
dmVydGluZyBwb3J0IGNsb2NrIHRvIE1oeiBpbnRvDQo+IF9sbmxfY29tcHV0ZV9hdXhfbGVzc193
YWtlX3RpbWUNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaCAgICB8ICAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgICAgICB8IDYwICsrKysrKysrKysrKysrKysrKysNCj4gIDIgZmlsZXMgY2hh
bmdlZCwgNjEgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggZTY3Y2Q1YjAyZTg0
Li45MjgzMTdhY2MxYmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xNzM3LDYgKzE3MzcsNyBAQCBzdHJ1
Y3QgaW50ZWxfcHNyIHsNCj4gDQo+ICAJCS8qIExOTCBhbmQgYmV5b25kICovDQo+ICAJCXU4IGNo
ZWNrX2VudHJ5X2xpbmVzOw0KPiArCQl1OCBhdXhfbGVzc193YWtlX2xpbmVzOw0KDQpBcyBhdXgt
d2FrZSBvciBhdXgtbGVzcyBpcyBtdXR1YWxseSBleGNsdXNpdmUgY2FuIHdlIHVzZSBleGlzdGlu
ZyB3YWtlLWxpbmUgdmFyaWFibGUgZm9yIGF1eC1sZXNzIGFzIHdlbGwuDQoNClJlZ2FyZHMsDQpB
bmltZXNoDQoNCj4gIAl9IGFscG1fcGFyYW1ldGVyczsNCj4gDQo+ICAJa3RpbWVfdCBsYXN0X2Vu
dHJ5X2F0dGVtcHQ7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiBpbmRleCA2OTI3Nzg1ZmQ2ZmYuLmM1NDVlZTIyOTY4NCAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xMTI2LDYgKzExMjYsNjMgQEAg
c3RhdGljIGJvb2wNCj4gX2NvbXB1dGVfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmVfaW5kaWNhdGlv
bihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2QNCj4gIAlyZXR1cm4gdHJ1ZTsNCj4gIH0NCj4gDQo+
ICsvKg0KPiArICogQVVYLUxlc3MgV2FrZSBUaW1lID0gQ0VJTElORyggKChQSFkgUDIgdG8gUDAp
ICsgdExGUFNfUGVyaW9kLCBNYXgrDQo+ICsgKiB0U2lsZW5jZSwgTWF4KyB0UEhZIEVzdGFibGlz
aG1lbnQgKyB0Q0RTKSAvIHRsaW5lKQ0KPiArICogRm9yIHRoZSAiUEhZIFAyIHRvIFAwIiBsYXRl
bmN5IHNlZSB0aGUgUEhZIFBvd2VyIENvbnRyb2wgcGFnZQ0KPiArICogKFBIWSBQMiB0byBQMCkg
Og0KPiAraHR0cHM6Ly9nZnhzcGVjcy5pbnRlbC5jb20vUHJlZGF0b3IvSG9tZS9JbmRleC82ODk2
NQ0KPiArICogOiAxMiB1cw0KPiArICogVGhlIHRMRlBTX1BlcmlvZCwgTWF4IHRlcm0gaXMgODAw
bnMNCj4gKyAqIFRoZSB0U2lsZW5jZSwgTWF4IHRlcm0gaXMgMTgwbnMNCj4gKyAqIFRoZSB0UEhZ
IEVzdGFibGlzaG1lbnQgKGEuay5hLiB0MSkgdGVybSBpcyA1MHVzDQo+ICsgKiBUaGUgdENEUyB0
ZXJtIGlzIDEgb3IgMiB0aW1lcyB0Mg0KPiArICogdDIgPSBOdW1iZXIgTUxfUEhZX0xPQ0sgKiB0
TUxfUEhZX0xPQ0sNCj4gKyAqIE51bWJlciBNTF9QSFlfTE9DSyA9ICggNyArIENFSUxJTkcoIDYu
NXVzIC8gdE1MX1BIWV9MT0NLICkgKyAxKQ0KPiArICogUm91bmRpbmcgdXAgdGhlIDYuNXVzIHBh
ZGRpbmcgdG8gdGhlIG5leHQgTUxfUEhZX0xPQ0sgYm91bmRhcnkgYW5kDQo+ICsgKiBhZGRpbmcg
dGhlICIrIDEiIHRlcm0gZW5zdXJlcyBhbGwgTUxfUEhZX0xPQ0sgc2VxdWVuY2VzIHRoYXQgc3Rh
cnQNCj4gKyAqIHdpdGhpbiB0aGUgQ0RTIHBlcmlvZCBjb21wbGV0ZSB3aXRoaW4gdGhlIENEUyBw
ZXJpb2QgcmVnYXJkbGVzcyBvZg0KPiArICogZW50cnkgaW50byB0aGUgcGVyaW9kDQo+ICsgKiB0
TUxfUEhZX0xPQ0sgPSBUUFM0IExlbmd0aCAqICggMTAgLyAoTGluayBSYXRlIGluIE1IeikgKQ0K
PiArICogVFBTNCBMZW5ndGggPSAyNTIgU3ltYm9scw0KPiArICovDQo+ICtzdGF0aWMgaW50IF9s
bmxfY29tcHV0ZV9hdXhfbGVzc193YWtlX3RpbWUoaW50IHBvcnRfY2xvY2spIHsNCj4gKwlpbnQg
dHBoeTJfcDJfdG9fcDAgPSAxMiAqIDEwMDA7DQo+ICsJaW50IHRsZnBzX3BlcmlvZF9tYXggPSA4
MDA7DQo+ICsJaW50IHRzaWxlbmNlX21heCA9IDE4MDsNCj4gKwlpbnQgdDEgPSA1MCAqIDEwMDA7
DQo+ICsJaW50IHRwczQgPSAyNTI7DQo+ICsJaW50IHRtbF9waHlfbG9jayA9IDEwMDAgKiAxMDAw
ICogdHBzNCAqIDEwIC8gcG9ydF9jbG9jazsNCj4gKwlpbnQgbnVtX21sX3BoeV9sb2NrID0gNyAr
IERJVl9ST1VORF9VUCg2NTAwLCB0bWxfcGh5X2xvY2spICsgMTsNCj4gKwlpbnQgdDIgPSBudW1f
bWxfcGh5X2xvY2sgKiB0bWxfcGh5X2xvY2s7DQo+ICsJaW50IHRjZHMgPSAxICogdDI7DQo+ICsN
Cj4gKwlyZXR1cm4gRElWX1JPVU5EX1VQKHRwaHkyX3AyX3RvX3AwICsgdGxmcHNfcGVyaW9kX21h
eCArDQo+IHRzaWxlbmNlX21heCArDQo+ICsJCQkgICAgdDEgKyB0Y2RzLCAxMDAwKTsNCj4gK30N
Cj4gKw0KPiArc3RhdGljIGludCBfbG5sX2NvbXB1dGVfYXV4X2xlc3NfYWxwbV9wYXJhbXMoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gKwkJCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkNCj4gew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ICsJaW50IGF1eF9sZXNzX3dha2VfdGltZSwgYXV4
X2xlc3Nfd2FrZV9saW5lczsNCj4gKw0KPiArCWF1eF9sZXNzX3dha2VfdGltZSA9DQo+ICsJCV9s
bmxfY29tcHV0ZV9hdXhfbGVzc193YWtlX3RpbWUoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayk7DQo+
ICsJYXV4X2xlc3Nfd2FrZV9saW5lcyA9IGludGVsX3VzZWNzX3RvX3NjYW5saW5lcygmY3J0Y19z
dGF0ZS0NCj4gPmh3LmFkanVzdGVkX21vZGUsDQo+ICsJCQkJCQkgICAgICAgYXV4X2xlc3Nfd2Fr
ZV90aW1lKTsNCj4gKw0KPiArCWlmIChhdXhfbGVzc193YWtlX2xpbmVzID4gQUxQTV9DVExfQVVY
X0xFU1NfV0FLRV9USU1FX01BU0spDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiArCWlmIChp
OTE1LT5kaXNwbGF5LnBhcmFtcy5wc3Jfc2FmZXN0X3BhcmFtcykNCj4gKwkJYXV4X2xlc3Nfd2Fr
ZV9saW5lcyA9IDYzOw0KPiArDQo+ICsJaW50ZWxfZHAtPnBzci5hbHBtX3BhcmFtZXRlcnMuYXV4
X2xlc3Nfd2FrZV9saW5lcyA9DQo+ICthdXhfbGVzc193YWtlX2xpbmVzOw0KPiArDQo+ICsJcmV0
dXJuIHRydWU7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBib29sIF9sbmxfY29tcHV0ZV9hbHBtX3Bh
cmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJCSAgICAgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpICB7IEBAIC0NCj4gMTE0Miw2ICsxMTk5LDkgQEAgc3Rh
dGljIGJvb2wgX2xubF9jb21wdXRlX2FscG1fcGFyYW1zKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50
ZWxfZHAsDQo+ICAJaWYgKGNoZWNrX2VudHJ5X2xpbmVzID4gMTUpDQo+ICAJCXJldHVybiBmYWxz
ZTsNCj4gDQo+ICsJaWYgKCFfbG5sX2NvbXB1dGVfYXV4X2xlc3NfYWxwbV9wYXJhbXMoaW50ZWxf
ZHAsIGNydGNfc3RhdGUpKQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gIAlpZiAoaTkxNS0+
ZGlzcGxheS5wYXJhbXMucHNyX3NhZmVzdF9wYXJhbXMpDQo+ICAJCWNoZWNrX2VudHJ5X2xpbmVz
ID0gMTU7DQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
