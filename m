Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2141D9EC41A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 05:49:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 226A110E5ED;
	Wed, 11 Dec 2024 04:49:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KyHYfQFE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EEE710E1AD;
 Wed, 11 Dec 2024 04:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733892583; x=1765428583;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lbm2DuKgmYsu8wkvc4/oiD6eCwzAAfC0YArrOma1OOU=;
 b=KyHYfQFEqhev8FM69/PxU9Fugo8IHtf6eM0uHrrfurnBdRJOZQCCjFX/
 5NOVji3AzFBC1YuwzQpf4004g2sOja9P3R+hFR0hzHcjB1YHIpCNu2AWJ
 2XMUx/8Z1DtXmWe85AQCG3d4mf3xkmVcJuRMEon5S5WAKbcywyPOpIDPy
 cqdbVUUBSnTVPazGI69OB8RrEF1/lDxoJN44vPlMUDdRSp64ggkj6WG4p
 Ajn9uOBGoHOUTyeUVckNc0thYMeC/l2fa2si85H0pdZQb3MAvZhe9KIZy
 79HmMK/TETR1Sz4+fEHrx7WdDll3sB0GWSU2Op0wq35oY0mdm0GzQ/zAC g==;
X-CSE-ConnectionGUID: 4DHepbmXT4CkVDtBQ037AA==
X-CSE-MsgGUID: vsbFlq3nQg+/SW5znOYpMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="34505628"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="34505628"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 20:49:42 -0800
X-CSE-ConnectionGUID: shY233mfTo2QGrxXbniuJw==
X-CSE-MsgGUID: PJHiSrWpRpet6y2utGtajg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96104195"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Dec 2024 20:49:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Dec 2024 20:49:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Dec 2024 20:49:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Dec 2024 20:49:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oF7B7c3DxWJijDmLjbKVfCJFWpDMo2WkUh2f5OyqsGGCRjvZTI53CVqzocW5POG0HOyX6rx296uy5o7yEu8Un870SJCTOxseJMX8n5lCNmwXvFeiVfwN8aF2RSDUtIfUPiUzxP1xNJ4PUBsMhHZfIb/LMCNB+pC9vleGyuD7bQue65hX+sB7318YeXjXUv3+tstUdSHhGz4g0JnCSfomNhOoRDjCv93u9BLMQZ7smLMVmYh0w3r6pDq45/XlSnrA6htDdEH0x92JNvnxn2RzSnvMiw8VW6lujQ8Wqsp7DY20Jbgmrp1bs968hu7Ute4AhT8sjtIT1DB00Q5L88vhiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EaYq2t9nkZodf8watBpP/tY8yVd+VlWt3H7ylvIiqxo=;
 b=udvL8aKnONUNMSCYlYYXT51OLiqIA8B5gV0h/8EmMu1nAi/Z5CgAc+8uiTlGt6UdWpwo9Z7sSzpJrkxtpwSgSGi1tcdupnGa8r93qb+VPn3ilItXErCniDh9Wno/7u8JZS9O6xiBW9vmA/EI4ENW4Y1KXnVIKNEi+F92VE8/1ujGoFbKMFoWu3kCTMihBpWnrwCMFHOY+9M83iVeG45ybdgSNDLgKIFHXyQP+Bf0lzT2gtjOooaiGPNbiUF2tdPYRVoMDjZuMzeDcYG8W890XzEWtTd3IiT+Jm/yTPCbkJDTMGUWaDMGN1c8Dh+1d8T1savsYfzVKPFhXjead011DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB7890.namprd11.prod.outlook.com (2603:10b6:208:3ff::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Wed, 11 Dec
 2024 04:49:38 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.020; Wed, 11 Dec 2024
 04:49:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 14/14] drm/i915/dp: Set the DSC link limits
 intel_dp_compute_config_link_bpp_limits
Thread-Topic: [PATCH 14/14] drm/i915/dp: Set the DSC link limits
 intel_dp_compute_config_link_bpp_limits
Thread-Index: AQHbRi5WQMcvG4wJWUqyPj04Rk6mebLgg67g
Date: Wed, 11 Dec 2024 04:49:38 +0000
Message-ID: <SN7PR11MB67501B77352B1C8B7D1A2FC5E33E2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
 <20241204092642.1835807-15-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241204092642.1835807-15-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB7890:EE_
x-ms-office365-filtering-correlation-id: f819965c-5d05-41d6-c2da-08dd199f3810
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?EQJvkEDQWelLNP6kYHeYoust+Klx6wVgFEQittqYmKjcpL/4/upd5+4abfzc?=
 =?us-ascii?Q?unCKdCspdGunNU/Ml0qFqW3h+8j0cAwWxBYPqjS0IMQYjSeRzefoMCc/Kjbw?=
 =?us-ascii?Q?W+Ol6gfgCLu9GGoJ4OTKtlVZBbC81TcRuUeS4CfokvQpf4+o825usF+0wo53?=
 =?us-ascii?Q?KLTNT7UszP2XBjzcLu59J1MvYqzVCEiujkjdtFG74dGAdcOOLajERyH3Q1gu?=
 =?us-ascii?Q?lxvId62HFVb07BrVKdarOUv89O5q79Y0nfS8soH9PhgS3pLPZDHE7PUtX33L?=
 =?us-ascii?Q?LNOWURtpy0IJL6MwesTDjpVDvp+vaXClncsr4m1AFdHWzTj2iwcKjaQG0ZG8?=
 =?us-ascii?Q?sjRP0iaLqIV2idykStcpeMPyMxdfd6/sPgTeMx/fEyEcWKvfToHeP0jcEYGT?=
 =?us-ascii?Q?mracSXHdkafTMlfrevsgHQkINLOdc2tgbUnezjMJDo2hAyRzhVforD7y6Iff?=
 =?us-ascii?Q?Vih4mehSt3haUxCTtDq9Be0ByM6XbtFFNhu2EpSjLggBmIhgTWY9LB5yqgod?=
 =?us-ascii?Q?TTTgHFttnb6CDKl/reokKKivOCpjXhjb9xZ52T1Pad/pRY6s32IWfHK/Afrw?=
 =?us-ascii?Q?6XevBqJG+K1XCQZpbr0Xx6IxlDaJUXjo05+SN0pwoJNHL4bEqmybOZvZyJWf?=
 =?us-ascii?Q?LjdmO59L12GeV4imyELu6/xNJFp+1iKTJHb7I31rYA6NwAMsog4GVeYSgqMB?=
 =?us-ascii?Q?Tqf5ALdqGTqI54UaFSmzpZMRMtHEZFESzz8PyXa6Y4Dp4yOiPbBNr7GykkFg?=
 =?us-ascii?Q?a9KHiMXZOxSUH1MEpm3PNfwv88PKGgq+xyA+7KaVLncK94mIEUPRC+Jl2YW7?=
 =?us-ascii?Q?1teXvfxfsG03UDQjal7p8Q6HPqjaHLo7ULZTfLiZ4aU9zqPFCOM9JWC+HWpz?=
 =?us-ascii?Q?8ZmRtDqvjd/+Sef3VrDADFJceSusIJpESmg3XYSFpUNUeSQOdVFIzXm3b6p2?=
 =?us-ascii?Q?g/jOcIbG9KyhsHcmP3LeRDHG+ej9OMHeOrvkUQTUvWmdq8v7GujMw60H9QvO?=
 =?us-ascii?Q?C8t++E6xmSAGhmEM9y7noM5b1TyxlbGVy3dvnFcD/NovigtZvla/VNkqXQHG?=
 =?us-ascii?Q?8O10ZhQeEfzNYMTTNJl6id8LH/F6lcM2awx0j3LaZjPkLwXhZAHJ9XRCuxkS?=
 =?us-ascii?Q?H8sxyM0+Ml7eqwhLw4TZMaBK66OkHln4I7bwH/o3pW+Cb1Es8GV2KSAisAPp?=
 =?us-ascii?Q?MVJPmznKjcAFnfkf2iZPKvjcE8rAwbR25kc+sBES8ZU6Sduy6Tv1sQm65SBB?=
 =?us-ascii?Q?ez8I77orD9q1TPHu/Ybr1cYZ3hYL4lhY4ZyuOBwmjkHqKJiLMV7ukwPHGCb5?=
 =?us-ascii?Q?iLxNgKguPsVWppntC5cJ1oD/MrF6hqqbgUrX5+ghnlgmd6RuBe5WFbO2oUbK?=
 =?us-ascii?Q?daUivxfymVPMVBLquiyoLsKid0m6eAuHATh9RRw0OPk0/1qn/w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Rhd4nR0M9JdHGBuyTx2ruQ0C0E7lJmZJ5Fh3ugVQivlRZmtSRWAdnSEXYUCr?=
 =?us-ascii?Q?g/wmFmHXLZI6lFyjMuxwvkyOEhnpk6S1uuujVv/Ue/hFHXmDg8QQVrYDAPSl?=
 =?us-ascii?Q?JZC2RQjlbDrdXbtxqRfKP94OXW5qqgNVw0tOKVQZMJ3buoyf6kvOJ5lSVfKo?=
 =?us-ascii?Q?vC7cl0v87bCHVSFH9xcL+deSpM679dY9KKFvckB2R5c6oRGjL2oRSOECg+mv?=
 =?us-ascii?Q?XuLItIVjS8d1vQQo/uPoLdahFKJy4slrXhWKI2nlYWElCmSvqAkmiPXP4cQ8?=
 =?us-ascii?Q?CPTApfite2mNne7ajMDe5ugyzuku1rZapdzwJt8qvzbjvxxUz2NvE4lvbzXx?=
 =?us-ascii?Q?C6iyt3Jfx5bPhTCDdqducKdRj42qK6tanGeldf1p5AOIXgoDxiJtzBwcqKow?=
 =?us-ascii?Q?i8KJpU4mwLanYUn5RUqChVa0P2ngKwjBtevfS+qTrTGcXgRC+MjoyfUn7uas?=
 =?us-ascii?Q?aG+uio5mcFtPcfjhL0uCndn0PcUfTiZOfmmq/djyAOIma3G4Vwmq+ds9SdkB?=
 =?us-ascii?Q?1CZ18mRTsSau6LSp/v3lPxqePWLDPh7pobzrKQJDgeGcZSxAAO0mK+vOHID6?=
 =?us-ascii?Q?qbNhyii1Vfm3KPmLixLtwU75p30aOaigwAzUx264sM8AfmE69k69Z3TF07A+?=
 =?us-ascii?Q?ap9T808+TNCwNotFDZDxqPd3t7fO/k4yMOibkRZOA+zGVKe9kI/UD4KdLfRp?=
 =?us-ascii?Q?XQe6BRPqPKs0rOUYErueCaf4aItsl1OIss1/30+RcwGVx9Sfh+PKMuEcpnUB?=
 =?us-ascii?Q?OGpT/8vMysuGXiFknj3bhvqjap8LBSvRnjDrN9vMO7wMIgNb3748tZdhpAXI?=
 =?us-ascii?Q?tnHxUI0lBrw2Om10O+tALpPhRapXXB/h961P4i1psbrUDoMkAQ0DWiCVU2ry?=
 =?us-ascii?Q?CnG6Y0+bFkrqvcNqzYzwMUDebRUVqYZqnijQrrxPsPWtplrOhQefe+tP7FD5?=
 =?us-ascii?Q?8KNLRpaDmY51drbgp6tmfS49vIZTfc611fC1ZPOAWogSlz9KpUhloTQYpqMz?=
 =?us-ascii?Q?JOVX5NG2kriodG0HoPqwzWMx2zThM3EqZe5MAByfpGXs/cG1Rmx5gnN8T/CN?=
 =?us-ascii?Q?M0JJGOvViG4G1aFL38iLHcv+NQOfeZ3xYWFWmb7j1aiZ03VyBoPJ7LebUJv9?=
 =?us-ascii?Q?6JoWRthC9aEkFSvpkaJPydp9MFTGKy45CoeNZA4aUNbBVwWLMLRMg2moJ2IO?=
 =?us-ascii?Q?+H61HD5fYuYS/rXvulSz5gv+9ztXfnjP1yWNFesqHePjl9q8x5q05uS8kYM/?=
 =?us-ascii?Q?RJNNtEmgCXpvpGc7BlWAfE+NYFQ2FFbE/18292Szg1EI93oOzReqw3yQVOoy?=
 =?us-ascii?Q?wF0AqV5d/m0vGnt9qru/bH8YoiFLn8nW7k2MAvgBsTSZ5hWUp8MCdihTnGjA?=
 =?us-ascii?Q?dlCwJiBZLs6102BsWLI3EoLhZkrCPtazc/u9msr+zpB8e+qgcttoG5P8idFW?=
 =?us-ascii?Q?SQ4YSknt4Sna6X9Z7D4fTDm3pQDJYdrpSmG/Hm5sR2zx3dKqV/M7uiCxGQDY?=
 =?us-ascii?Q?2twa/MrrlFcrNePrJuDdsCo1iurmMBcp+KKWWbvlSBo7oGA9+iNpWk2EqjIb?=
 =?us-ascii?Q?EloeQhwTnfrogQvQEMYX4uwcTY+0SJOWmYJqYvYs?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f819965c-5d05-41d6-c2da-08dd199f3810
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2024 04:49:38.7004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3qVoln0ntWkR5TGx4pc+hSAUq+xGoa8zBD68dXIAoFDF2NdEzZ3Hm23PI0bZ44bL89Sfct0m2EUHLQVGhL2hxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7890
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, December 4, 2024 2:57 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 14/14] drm/i915/dp: Set the DSC link limits
> intel_dp_compute_config_link_bpp_limits
>=20
> The helper intel_dp_compute_config_link_bpp_limits is the correct place t=
o
> set the DSC link limits. Move the code to this function and remove the #T=
ODO
> item.
>=20
> v2: Add argument intel_connector to the helper to get correct connector f=
or
> DP MST. (Imre)
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 60 +++++++++++----------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  1 +
>  3 files changed, 34 insertions(+), 28 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 60693c301c3d..1500b99ddb95 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2153,21 +2153,16 @@ static int dsc_compute_compressed_bpp(struct
> intel_dp *intel_dp,  {
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> -	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
> -	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> +	int dsc_min_bpp;
> +	int dsc_max_bpp;
>  	int dsc_joiner_max_bpp;
>  	int num_joined_pipes =3D intel_crtc_num_joined_pipes(pipe_config);
>=20
> -	dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
> -	dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
> -	dsc_min_bpp =3D max(dsc_src_min_bpp, dsc_sink_min_bpp);
> -	dsc_min_bpp =3D max(dsc_min_bpp, fxp_q4_to_int_roundup(limits-
> >link.min_bpp_x16));
> +	dsc_min_bpp =3D fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
>=20
> -	dsc_src_max_bpp =3D dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> -								pipe_config,
> -								pipe_bpp / 3);
> -	dsc_max_bpp =3D dsc_sink_max_bpp ? min(dsc_sink_max_bpp,
> dsc_src_max_bpp) : dsc_src_max_bpp;
> +	dsc_max_bpp =3D intel_dp_dsc_sink_max_compressed_bpp(connector,
> +							   pipe_config,
> +							   pipe_bpp / 3);
>=20
>  	dsc_joiner_max_bpp =3D get_max_compressed_bpp_with_joiner(i915,
> adjusted_mode->clock,
>=20
> 	adjusted_mode->hdisplay,
> @@ -2278,8 +2273,8 @@ static int intel_edp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>  	struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
>  	int pipe_bpp, forced_bpp;
> -	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
> -	int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> +	int dsc_min_bpp;
> +	int dsc_max_bpp;
>=20
>  	forced_bpp =3D intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
>=20
> @@ -2299,16 +2294,12 @@ static int
> intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	pipe_config->port_clock =3D limits->max_rate;
>  	pipe_config->lane_count =3D limits->max_lane_count;
>=20
> -	dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
> -	dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
> -	dsc_min_bpp =3D max(dsc_src_min_bpp, dsc_sink_min_bpp);
> -	dsc_min_bpp =3D max(dsc_min_bpp, fxp_q4_to_int_roundup(limits-
> >link.min_bpp_x16));
> +	dsc_min_bpp =3D fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
> +
> +	dsc_max_bpp =3D intel_dp_dsc_sink_max_compressed_bpp(connector,
> +							   pipe_config,
> +							   pipe_bpp / 3);
>=20
> -	dsc_src_max_bpp =3D dsc_src_max_compressed_bpp(intel_dp);
> -	dsc_sink_max_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> -								pipe_config,
> -								pipe_bpp / 3);
> -	dsc_max_bpp =3D dsc_sink_max_bpp ? min(dsc_sink_max_bpp,
> dsc_src_max_bpp) : dsc_src_max_bpp;
>  	dsc_max_bpp =3D min(dsc_max_bpp, fxp_q4_to_int(limits-
> >link.max_bpp_x16));
>=20
>  	/* Compressed BPP should be less than the Input DSC bpp */ @@ -
> 2447,6 +2438,7 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  /**
>   * intel_dp_compute_config_link_bpp_limits - compute output link bpp lim=
its
>   * @intel_dp: intel DP
> + * @connector: intel connector
>   * @crtc_state: crtc state
>   * @dsc: DSC compression mode
>   * @limits: link configuration limits
> @@ -2458,6 +2450,7 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>   */
>  bool
>  intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
> +					const struct intel_connector
> *connector,
>  					const struct intel_crtc_state
> *crtc_state,
>  					bool dsc,
>  					struct link_config_limits *limits) @@ -
> 2480,12 +2473,22 @@ intel_dp_compute_config_link_bpp_limits(struct
> intel_dp *intel_dp,
>=20
>  		limits->link.min_bpp_x16 =3D fxp_q4_from_int(limits-
> >pipe.min_bpp);
>  	} else {
> -		/*
> -		 * TODO: set the DSC link limits already here, atm these are
> -		 * initialized only later in intel_edp_dsc_compute_pipe_bpp()
> /
> -		 * intel_dp_dsc_compute_pipe_bpp()
> -		 */
> -		limits->link.min_bpp_x16 =3D 0;
> +		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
> +		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
> +
> +		dsc_src_min_bpp =3D dsc_src_min_compressed_bpp();
> +		dsc_sink_min_bpp =3D
> intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
> +		dsc_min_bpp =3D max(dsc_src_min_bpp, dsc_sink_min_bpp);
> +		limits->link.min_bpp_x16 =3D fxp_q4_from_int(dsc_min_bpp);
> +
> +		dsc_src_max_bpp =3D dsc_src_max_compressed_bpp(intel_dp);
> +		dsc_sink_max_bpp =3D
> intel_dp_dsc_sink_max_compressed_bpp(connector,
> +
> 	crtc_state,
> +									limits-
> >pipe.max_bpp / 3);
> +		dsc_max_bpp =3D dsc_sink_max_bpp ?
> +			      min(dsc_sink_max_bpp, dsc_src_max_bpp) :
> dsc_src_max_bpp;
> +
> +		max_link_bpp_x16 =3D min(max_link_bpp_x16,
> +fxp_q4_from_int(dsc_max_bpp));
>  	}
>=20
>  	limits->link.max_bpp_x16 =3D max_link_bpp_x16; @@ -2558,6 +2561,7
> @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>  	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
>=20
>  	return intel_dp_compute_config_link_bpp_limits(intel_dp,
> +						       intel_dp-
> >attached_connector,
>  						       crtc_state,
>  						       dsc,
>  						       limits);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 1488e18ea8b0..90e8b8672ce0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -197,6 +197,7 @@ int intel_dp_output_bpp(enum intel_output_format
> output_format, int bpp);
>=20
>  bool
>  intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
> +					const struct intel_connector
> *connector,
>  					const struct intel_crtc_state
> *crtc_state,
>  					bool dsc,
>  					struct link_config_limits *limits); diff --
> git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 667006918bfd..47eed76b136f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -574,6 +574,7 @@ mst_stream_compute_config_limits(struct intel_dp
> *intel_dp,
>  		intel_dp_dsc_compute_pipe_bpp_limits(intel_dp, limits);
>=20
>  	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
> +						     connector,
>  						     crtc_state,
>  						     dsc,
>  						     limits))
> --
> 2.45.2

