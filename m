Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D50873653
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 13:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E530E10F12E;
	Wed,  6 Mar 2024 12:29:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kajo9J65";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01EE10F12E
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 12:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709728165; x=1741264165;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dIPHxqF8rFWlUfI6D9DlnIiaXPJ72rK73yPZreaFG20=;
 b=kajo9J65xiRL3o30wTC1YRrAhkTIus00oTs+/lTv4IBM6iinE74ODt9n
 gQvYNNBWEq5NZvDXErnXqD0ZwXrmdoH89tnYkDKpkeBGJhoPWFbM2fJKa
 hDVnzSVYq01rlSkjOG0iZAfUdYwm+s1bX5kKRN2gtPe+2ovsS3BC0EVxl
 7U3IjIU9i+jWrt2TlV+g0nZ0GtkqGVY8xsxBTK1KD0radFRpazBSe4jXc
 1HIGPAU9dFBZbcv1MtysU2xzS4GXV0+ObJPvb2DstxF9SPL+f4D/KC50z
 SeX2PwaWnBfUW1Gxpj4dI8yRukNe4/BkdTULzqi+AyQoa8RAt9exMs/oo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="15479799"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="15479799"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:29:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="9621594"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 04:29:24 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 04:29:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 04:29:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 04:29:23 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 04:29:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JarW7sl4Lc2m85oMDb2Bomxwv+/t389EsOECT01ZgZLpBpSQvQowWteNfDQzLwkJ60o9Tf8MED6zyoQS7LJTYPT3ZE2t0qVXVj1D6W4DePpjgveJA20u7QLlQBHxl1MsWKk6wCabtpcfkVgVCZTBxa+ms0JCJByWQX09/hRgOpkjrm23OpiF7e2iixoieBzH2KNA9UgiFQYPee49dhxIluDKJ7hQq6AUlDBLWowTW49oinmL8nx2XfF637suXGttZ7Sr0Gl2NmmqZc9Pe6QsPEjobe3p2u8W6yloNHkSOO38ZzmUQnZb45scHGSld2MQKdSe9rCBcLNv0pbf/2+vYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dIPHxqF8rFWlUfI6D9DlnIiaXPJ72rK73yPZreaFG20=;
 b=Oz3OD7m73oAyDenP40sYsOe3Fm4YdpcZvkZxmpMpS+TC4FpOYZYKyk3pEWK+8s7uMa8Rpwd7uF7HuO3voFEjMZ9UoKGj+6S9NgjvKVKZLg1RClpfMsPY/QBwr60WrHAXq5BSqeS1cyYATiRwd2LrkuQIJ3dTHXHvwglR3RRHfbMlSVNleeZTaSZlXEzlKOMo2CIrOHk6wIb4rNA2VnlVk+AOBzbh0nPbvfFrQNZ5p9YVreVYL5B7AE5qZ0UdkMPLpxPu23Y39w09bFo3p74zCHOdlmfqFEhSiGuJ7hzg2gWi+nIah8RPibOwhey+rOg0gOoqoUkoAItCOJUstrEuVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by IA0PR11MB8302.namprd11.prod.outlook.com (2603:10b6:208:482::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Wed, 6 Mar
 2024 12:29:20 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 12:29:20 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/3] drm/i915/dsb: Always set DSB_SKIP_WAITS_EN
Thread-Topic: [PATCH 3/3] drm/i915/dsb: Always set DSB_SKIP_WAITS_EN
Thread-Index: AQHab3v0kxATY6g8lU2N5d0/IJI0+bEqpJBw
Date: Wed, 6 Mar 2024 12:29:19 +0000
Message-ID: <PH7PR11MB5981AE7757D7E94DC14307D5F9212@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240306040806.21697-1-ville.syrjala@linux.intel.com>
 <20240306040806.21697-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20240306040806.21697-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|IA0PR11MB8302:EE_
x-ms-office365-filtering-correlation-id: 27bde052-ab4f-4052-bfc8-08dc3dd90bd6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8ocnuh4udjTFzp3fkMKpqVwJp2WMSYxzTPQlUmAiLR6QsXawqx4ebjka8cU2IflEpv0ReevJJBNPehu8+Gpr8VNo73VR2sVXAOgG8pwJcXJ74g0dRqq6OqsRgL+ZxutIUzba+kMgOtvVLkuN+19UdzJ8FVfFnGvBmYUHg2U8DQEHDHYkKPzSY6IWN/6brC7wzUMTskFwKfnHIt18M18AMZnyxEBI5bMWRcJujFTZYRHXxsSYED9hDySa61wBXBFqKe+E81j93+lbdDeEpGD1ZBrfgvqDT6oRc/Rex69CHyhol8Or0U28jrBpnkwdQpfP0zxy/du9H3mRuNDgRR4eHmUtw2rIHcjNdCGKFp3CZtIJcPZ9fPUIyyRyBRUsLHa6XCpufg0XC14UpWdTMSD4/FPjj8sF5FhJG/yXOpljysgxUmk4RFlx4bXumPQdLsoCH5fh0ypOX1W2dImGpKto9AVEeFnyN1TwUzIXJdAln9gmAnV5oIMqiaJ+BOJWvi62VOd3AQZEggXXC4qP0FGvrgchMXp8Zj64j2seKaTdRXZsVWTskP609fUZJqX96A1IoU8bRl7NH4f+1Z7biHbx3G3C7Twsybg2gSNOK3fSXaGMO/C53GaLrVQrcaQh4wbBJ2HMb0hEuwD99NJSrZ3g91nBMmyDS3F8C9CsWn2XyfwDUQWLPZJXLtzgHyGcbldzYAhhJiQT1IXUdA757fMMf78kGcCZXJCmPtKCxTLTaJ0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RWozU1lSZUJsbFgxd1JmYzF6bE4zQndscGZrYnFyMUN0NWovQUdUek9PcnN4?=
 =?utf-8?B?c3NYdnN5ZW96dURhWkVlNmJveEFkb0F5WExMVGVvSzczWkQySVN1ejE1V05L?=
 =?utf-8?B?ZUk3OVVncks0bXZ0dm1yVkZNWk1IdWdlL0tjL3IzM1lrblRCOUlhRTk4aVZ3?=
 =?utf-8?B?SW9uUGxBdVNvWjJkNmlJbVN2WVdpVGRKeHc5TnRraDQwZytuOWx4eFZFN1Ur?=
 =?utf-8?B?bDRid3VCUEFZaThRc0J2d0ZURElUckZCSWpTbFBqWHpYMS9ockpWQ3FaQnBu?=
 =?utf-8?B?SGFPNCt6amk2TFhkdlU0bVZIaFppemMwVURJZzFGNUI4cUQ2aGIwaGh3UzQ1?=
 =?utf-8?B?SUJnQWVmalBxQU9NaDN2c2JmRkhHOXdUMlhiTG5yaFBaeUtoQm9ISnZHN2w2?=
 =?utf-8?B?Zi9aL1JYZTlIR3VoYVR5Y2w2NFlWU212UytNWEI3NEc4QkcrN2RLQkV1eTlj?=
 =?utf-8?B?VWZiRnNZZVVWU2tpSUhtNTdHVUZyRFdNUWw1NU0zVTI2Z3NEay9VUksrYUlO?=
 =?utf-8?B?SmRZWG40MlgraEI0Nk5Edk5oNUc0eG9GTnM2bTdPdEh0L21pWDNJVWJlVWpK?=
 =?utf-8?B?YnArUVJBY1VTMHFKblRLWkxKVkVkSTVvbW5BSkhGdDFtbklKQWhiajI4b0hN?=
 =?utf-8?B?dG5LT0pUUUR6ZzdpOGV6ZUxWZVBMUkhsTkNJN3d1dlFpNHM2dmhIUHRzZERW?=
 =?utf-8?B?cHhBK2dCUWdXdFFFUGsyRTBBZ1Q1VDVvUDJlWUdDTGR5NnZvanp5ZFdxc0xo?=
 =?utf-8?B?Z1drbVJnUUplTEc5VkdYRjdOUUpEdkdveXgzaDJUYWpFSXdlVWNmVXZ5S2hi?=
 =?utf-8?B?Qjh3TEExS2ZlcEtiSXNZZWdyZEtCS0cwMmc4eVhhdXB2dXh6UEhRdTJtMHBS?=
 =?utf-8?B?Qm1XTGVVREFVLzkxMGxGb2R4c25YLzZUdzNRV3ZjMHkzditKWko2NitFeFkr?=
 =?utf-8?B?Wm1IRXN3S0tFVGxJVEZWQzN3RmZNdjB6T0tjMXVlVSs1Z2ppeEFBRE9FZnpH?=
 =?utf-8?B?SWt1Z09CSzlIQUdNbXpiakRPelN6Wmgxc2h0UlVkK3FLem4rODNyK0Jidy9S?=
 =?utf-8?B?dTA2bERpNmw2dEFBRTZEaDhBVjJHUzFQRWpDMHRkT1habjZJSzRqZ2NWb2Y5?=
 =?utf-8?B?c0habVZjQU1MeHNheGRNM08rYzhPNFRHNXlDbEhWNlNTSEo3YmFyeHZqVUpV?=
 =?utf-8?B?elRtN1BrNXFnMDdOYy9RTFc1ZUZBb2RGUFdqeEtzdmJUU2dQb0RaMkhPSEZ5?=
 =?utf-8?B?Y0lVcVM1WHVteml5alkyZTNRSzR5SDAxT0hCRCt6L1VoMnVFSUlUQmFVQWVi?=
 =?utf-8?B?TWJqR1FrM1p1dGRiZHl3dnZ2dXFNZy9mODd6UU9DZHVodGtvbGVBeUNPZHYy?=
 =?utf-8?B?SUd2K0ZOQjVaVk4yZnBZdlcxakNscmF4WGlWbEpzMHMreXRULzFrT3NzQVd0?=
 =?utf-8?B?elc5VmZ1TzRqVjZMUHdOUnFNcFdZeThNRDEwYTR6ZjRGanlqRGNHRHJzYlJM?=
 =?utf-8?B?NnMxSDRDK0pOTU5sZXQ3Z0ZHTXZBdWNsN096UFBKNHZOenFJNW9kZjRkRGZB?=
 =?utf-8?B?SlphQUNpUUhBUFRoRG5nNEtFUFgxUm1lMTZpRWVoVUQwMTVkYUpBK0ZQamNN?=
 =?utf-8?B?TlFPbzJRdkVHNFRSdVZCdW1id3UvVmdFcFdhc1JuQnd2dDBCQ3l3K29LaTVH?=
 =?utf-8?B?a3BqNFR6WFd2SmU1NFZTOEZsRlFwTjQ5aUtDNzBwR3l2ZVFCUlB1UmxEYTdN?=
 =?utf-8?B?T0pYbGJwWkw2anpSMU9vd1NlQmlLbktGam5QRUp6bWlQVE9pMFd4UE91ZC9K?=
 =?utf-8?B?V1lycTVERUVMVXpZTGdubTF3bDdQZ25EQUpBSVIwYnhwZi8zekxNOUtnUlpH?=
 =?utf-8?B?MDkzNWtKZXB6cHNjVnJSMTRweThWZXdyT1MyM3BMU2FUM29JK1pGaFlKRmxv?=
 =?utf-8?B?WmtRRm9tYVNEanVxc3hqOTlkdlRwS1lmNGhkUVgwcll5bDBWUnBIcW5jRjZz?=
 =?utf-8?B?Z0lPL3NUT1FSc1BwanJXSlNBaFkrUVIwN09pb2d1V3p3UEJ6ZFZwZnd5SWxY?=
 =?utf-8?B?d2lUS0xxMFh4Y3lGSUZ2ZTVxaytyWWRUMGRmWTVUcFJEYTZDYk9mYnQva0Zu?=
 =?utf-8?Q?gC2XWFzXKSoxgeVrcoqW3xfAc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27bde052-ab4f-4052-bfc8-08dc3dd90bd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 12:29:19.5021 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E9x0bYI1XhVa4ur0/EfMolPzT2C8gGwo1fULFzP+N8DUTUSw6vhlBQsXmogBIM9lWrHCJs1rcv9bkj6zmuru0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8302
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggNiwgMjAyNCA5OjM4IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAzLzNd
IGRybS9pOTE1L2RzYjogQWx3YXlzIHNldCBEU0JfU0tJUF9XQUlUU19FTg0KPiANCj4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEJz
cGVjIGFza3MgdXMgdG8gYWx3YXlzIHNldCB0aGUgRFNCX1NLSVBfV0FJVFNfRU4gYml0IGluIERT
Ql9DSElDS0VOLg0KPiBUaGlzIHNlZW1zIHRvIGluc3RydWN0IERTQiB0byBza2lwIHZibGFuayBh
bmQgc2NhbmxpbmUgd2FpdHMgd2hlbiBQU1IgaXMNCj4gZW50ZXJlZC4NCj4gDQo+IEkgZG9uJ3Qg
dGhpbmsgd2UgaGF2ZSBhbnkgY2FzZXMgY3VycmVudGx5IHdoZXJlIHdlIHdvdWxkIHdhbnQgdG8g
ZW50ZXIgUFNSDQo+IHdoaWxlIERTQiBpcyB3YWl0aW5nIGZvciBzb21ldGhpbmcsIGJ1dCBsZXQn
cyBzZXQgdGhlIGJpdCBhbnl3YXkgdG8gYWxpZ24gd2l0aA0KPiBCc3BlYydzIHdpc2hlcy4NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGlu
dGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMgfCA1ICsrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jDQo+IGluZGV4IGU0NTE1YmY5MjAzOC4uNGJhYWE5MmNlYWVjIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAgLTM0MywxMiArMzQzLDEzIEBA
IHN0YXRpYyBpbnQgaW50ZWxfZHNiX2Rld2FrZV9zY2FubGluZShjb25zdCBzdHJ1Y3QNCj4gaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHN0YXRpYyB1MzIgZHNiX2NoaWNrZW4oc3RydWN0
IGludGVsX2NydGMgKmNydGMpICB7DQo+ICAJaWYgKGNydGMtPm1vZGVfZmxhZ3MgJiBJOTE1X01P
REVfRkxBR19WUlIpDQo+IC0JCXJldHVybiBEU0JfQ1RSTF9XQUlUX1NBRkVfV0lORE9XIHwNCj4g
KwkJcmV0dXJuIERTQl9TS0lQX1dBSVRTX0VOIHwNCj4gKwkJCURTQl9DVFJMX1dBSVRfU0FGRV9X
SU5ET1cgfA0KPiAgCQkJRFNCX0NUUkxfTk9fV0FJVF9WQkxBTksgfA0KPiAgCQkJRFNCX0lOU1Rf
V0FJVF9TQUZFX1dJTkRPVyB8DQo+ICAJCQlEU0JfSU5TVF9OT19XQUlUX1ZCTEFOSzsNCj4gIAll
bHNlDQo+IC0JCXJldHVybiAwOw0KPiArCQlyZXR1cm4gRFNCX1NLSVBfV0FJVFNfRU47DQo+ICB9
DQo+IA0KPiAgc3RhdGljIHZvaWQgX2ludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAq
ZHNiLCB1MzIgY3RybCwNCj4gLS0NCj4gMi40My4wDQoNCg==
