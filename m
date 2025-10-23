Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B89BFF4C4
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 08:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B613C10E881;
	Thu, 23 Oct 2025 06:05:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WoYrkWCc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B93F10E87C;
 Thu, 23 Oct 2025 06:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761199539; x=1792735539;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=z4c3HlxjJ9U2Kq54p6gqrGlcnI8RiNalJ+zNklPB6vQ=;
 b=WoYrkWCcBwMr22xmyIYQrjHHPfwhGTej8UtKa3Axng9w5+l2zH+fVb0w
 cudCjNhUcFO6NTqEXcwv7QFvmJL4uORz5cb9H6hGjSzZnEGwV0z+vMmZt
 zZneLmqvgEzbnDz/PgqHIiHty2fGefOzpdQqYEeVBjyGaZ/7QRAtywKeq
 ipgWSdug7N9ZexpDb1XOXxXEjvSUwE8SKYRvjM9hUKdzShqd5V+lKqUSg
 bzutEhUYMuVzu7mQEVCNLpD4/jMGftxRtXIyeoL+1oGptCpjfnk5VUHES
 dnlB7a9UdQu8BWWAe7faKGojIg8BhjmD4UUWlV7rP4H0AatsxhIpPfy2S g==;
X-CSE-ConnectionGUID: 9yMV6u2zSOGmy6rTyTYOAA==
X-CSE-MsgGUID: i6z13lqDQ1GJufE6ycp/KA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63262256"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63262256"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 23:05:39 -0700
X-CSE-ConnectionGUID: d7QaoBM9S7SpWcnozLsvRw==
X-CSE-MsgGUID: 4zTyyW4HQ2ysRgaMZ20GXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,248,1754982000"; d="scan'208";a="188117664"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 23:05:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 23:05:38 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 23:05:38 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 23:05:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wRBVY4N5/lRYH9h/m42y/o5ylqLIr4+yZd1jDfpM8OQxtGk2m8Bmd4/5WObQvUUnBboJPd+LjjbYOOxwVoF4wyz4aZ4wammQIyW8l5iWZJJuDGfnZ2svVeKp/eovHopUzszCtDFhAFZh8Oqk0qgPr3tC5TIuZe7r3wAlDA9NDv3DNV9E2dWu1wuaFKTY5D2AklTc4P4NuNtkCFcAGH+DiEL3NdiNS39cSHYg7zPpnxqoIi8fVwy9Sl4Zjo6zC4bgdopl1QuNoizkJcfbjwFvKjK1ewtNpDd9U7iJ5I06Ooj0ZZYqxLor88/dtB/Gz9UIHUlQMKwkwmoOq6qXRWe1qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z4c3HlxjJ9U2Kq54p6gqrGlcnI8RiNalJ+zNklPB6vQ=;
 b=T3rRJTEKvq83n5ikqAi4gykd0dmlIGtyGL5uFLZJ5ssGHj33pLq2TW6iuG6EbUj3f5kiwuTCKTkCym5/ifbm6HNHlb9viZ1RpK+w0A8T4Nn9zjcDratn4NKc5xNbWWKmGULK5/cPp/kFhTiZk8IcPMNzJvFK3xTKsRJ0OxlSIu0IYlI7OCy0U5UdCUmU/D97vvpPpNszhqbzE7WFmY/ho69/AAqeGBJXaEvHL3G2U/KEc2jqnqG+Hy84Qzo2KZlmQy8h1lTgcNI/oGONxKJT8+GP9YePJ5/GKGsUu5aAwH73h/MbYGyAg8Vs8cRBUmzkxANwMQ+FOhNacg0uVofpSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6157.namprd11.prod.outlook.com (2603:10b6:208:3cb::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Thu, 23 Oct
 2025 06:05:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 06:05:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Thread-Topic: [PATCH] drm/i915/display: Take into account AS SDP in
 intel_dp_sdp_min_guardband
Thread-Index: AQHcQ08VQazebzb2NUetBIrKpSGW7rTOTN4AgAAIx4CAAOnTAA==
Date: Thu, 23 Oct 2025 06:05:36 +0000
Message-ID: <1b8c6c6de1e5fe0db83e6ae942dfee7e6f950767.camel@intel.com>
References: <20251022122552.890090-1-jouni.hogander@intel.com>
 <aPj6LCMluIBg5J1W@intel.com>
 <de1cdae9a3695ac130bcd913ebe6c1e78d49f96d.camel@intel.com>
In-Reply-To: <de1cdae9a3695ac130bcd913ebe6c1e78d49f96d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6157:EE_
x-ms-office365-filtering-correlation-id: f1ffb8c3-fa54-494d-4fae-08de11fa2f2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?am1LR2FKNTVuTzJoTzhhU1N0OU9zRmpvOUMyWWoycW9VLzdTb3prTzI0alBP?=
 =?utf-8?B?OElXZEt2YllXeGxTRGE1NWU0WUIvRmJXQnFzME4wUG16K0szT0V5OURuMERh?=
 =?utf-8?B?VGNKZXl1SUtrRkRxdnV5Z2dXTDdHbzZmTGpRSWVJcENYYUpXUUtzVnNKZDZD?=
 =?utf-8?B?ZkFzeVFpM1JaT2pneFZMZmRSRzVDM1FKOXBBSzIxeloramx3L1A3cXpoU2xs?=
 =?utf-8?B?clVVcUVRVElhdVNMZzFkRTVDakwrNFJoMlp3Tm5aSjkvcjVFREJ4U1VFdldz?=
 =?utf-8?B?c2tBV2tuRXZScURwb3p6VjB6QklCUTErOWFzRDVmK2lEY1hzMnBjdlpXdDk5?=
 =?utf-8?B?SmJxZGdObW82Z1BET3d5M2FycHByOHlGRXROUUJKUVZZa1UzV2RXeEh0VDRJ?=
 =?utf-8?B?dERFbzl2MHpUeW1MU09WVHpUV0JRSi9tUnV1cnJiNGxKelJRZG54RTFnZWdC?=
 =?utf-8?B?bmhtWVRFWVZhOHhTNEdPQkg3WEcrMW1NNUtnMFBhMHluN1NlSVh4dHhYM2FG?=
 =?utf-8?B?Yld4NUF3SkZCSGdGakZ5MFJGMi94SUoycnVOSkVHMzlVMXBraXVqYzRodWx6?=
 =?utf-8?B?ZGFOWU5FVDgvUkxMd2ZVS3FCcnVxY1JjeG4zNnRPdmtMV1JqKzVyYXA5VUt5?=
 =?utf-8?B?RFZ3S1Y4SmNWZnhndkZVVXBFTXBnY28zck5tNktoK2lyRkd5eS9NT1JJakJs?=
 =?utf-8?B?aW1DWXhnYTZiL081b2ZCK09aMVpqcVRZSjZuMWsxZ1ZoZ3FqL2JZOHU0eXcv?=
 =?utf-8?B?ZWxWbUtFS2dpOUgyeHg4NWpkQzc1clhUNjVqVTEvay9oNFMrNjNVanUzWGMy?=
 =?utf-8?B?QmhFSUFtZFFEd1N2ekRNbVR2UFFCKy9Kd2ZpUDEvRGNkNGEzSDNsTkpZYkRF?=
 =?utf-8?B?OWVQaWFJWmF3cWxkWmJEYW1pMS9SZFpoWUZHNXFLMDhHcHY5TGpvWFhsWWxL?=
 =?utf-8?B?WnpOcmE0alo5UXhxK3RvVDhDT3IrUlBlZ1A5SDhVS1B6OUt5cTluRnBUUjBj?=
 =?utf-8?B?QTJjZ1crK0k4TU1SaG1hNjAxMG9zV1JlNnBWN0dxRzZuMUt4RkdmVWVwUHF4?=
 =?utf-8?B?UnFLOHdjcHQvWUtJSnN3eDVaNnJqRlNzWTJ2b3R6MS9IRk5XSWxSTWttaUg1?=
 =?utf-8?B?c2RyNWxraGVPOVhGM1lvbXNRT0RkTThHOXlNbTNUWHhJbVVydVpJdllUdnQr?=
 =?utf-8?B?aFdQZE9MelNFTmpCVUFldUNUTWNNVFo2akZQVXFYQUdBTXRLOUVFeVovQlNN?=
 =?utf-8?B?Q1l1WnZDSVkyMGZiN2xDSitHZ3o4K2JrVmdXUU1DQVN2emdrbDFxRzhodXFY?=
 =?utf-8?B?dXFZWUEzWGtqcTkvcDhWVVNTY1B2amI3ckk0dkJzSytQcUc0T2ZFSXkrSjln?=
 =?utf-8?B?OFV5YldNenRueUs4aVNocy91RDVOOHdmUzR3VWRMdFZUaVhUaVRkYXM3Q0kr?=
 =?utf-8?B?NmlkMzlSZEF4aGpQQ1l6dXlKSUpKSGYrMUp2a0RMN1ozVUhQSklaMnAwOEZr?=
 =?utf-8?B?R2VHUzdRMDEzV3hhZ1hBdXZzV0ZpYVBUVWFJdlMva04waGJqZFhyUmdlTjZZ?=
 =?utf-8?B?SDRMbnpOR3NDUHgwdjRNYkJrZzNXT29WQTA1eUFvcGptd3VUSG90TWs5WXdD?=
 =?utf-8?B?ZEQrUGllVzZmTmdacERMaDhMb0Y2ckU3VnVXZW82b2Mwc3pTcXIydHJtMURE?=
 =?utf-8?B?NS9sQmhzQy8ySlBnR3hmWnc2WExIajZFWi9CUGVuWjZXZGo3WXVSRm1hMGkw?=
 =?utf-8?B?Q3VFQ2V1MlVOeWtTNm9oa25vUUpnTlpEL056anNaSEo1T3JXcFBQcDlTNkhr?=
 =?utf-8?B?Umdrd2hqRHV5NUIwQmZnanMzVjVXeGl5UVVDOVphd3FrUEViTVBIMmk4TUlN?=
 =?utf-8?B?NXA1Ny9PeVF0SktMb3NOMXowU1k1K0YrWkdXNXE1b1FUVXBpcmgzWlBidHF4?=
 =?utf-8?B?WkpXNkNwVHdWMmlWcDZjT3JReU8vcHV3aVorSWtiTlVJUlAvNitkbWlLQldT?=
 =?utf-8?B?VnE0b1BHVEJ3ajdyTVB1eFI4Sm5NUTBWa2pRVzB1dlREcGFLdUFMZ3B1THZv?=
 =?utf-8?Q?Y6OXIv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TEVzdC9hQnZ4Q1NxRzhHQXRWcXI4RE9IWUVLbmc0OU9DMnZaalhPWGVzN0Fj?=
 =?utf-8?B?cDdacHZCRzl2aFVmWGxGNU5GbGRXenhxa3lCVjdFaVA4Yjg2L3NIY053VHEx?=
 =?utf-8?B?NmZ3bStSNkRmTlVTbnFrOEpmM04ycldRdHF3Y3lwWWpwQVhZdkJyeVMza1ND?=
 =?utf-8?B?SUlBV3ppNkppd2FMSHJxaTA5cTl1K0ZrNWw5Smc5V3pZenVjVkpzNWlHMGlq?=
 =?utf-8?B?NUpORVpvWkxyUlE2SHRsVjZTbE1GSk52Q2Y1STBpOGIyVmtYZ3JSd0s1bWhL?=
 =?utf-8?B?N0p4QWE5NDA4MTlTN2NNV2xjVzNpeXNSUlpRd3RvZkFKU0d3NVRwbFpxY0xR?=
 =?utf-8?B?RWxiMTdBenBjOVpER3ZuUW1VYzA0bVhaUVppU0lZams5dE1QYy9DVmJKNkdL?=
 =?utf-8?B?V0s5enZzTHpFZklTcW1OanNOZVk4V2hYYVJDUFRsbUVMS01uUVNTWExwUWUz?=
 =?utf-8?B?bk91N2xUdVphdjlFeVcvTXBjMEY2RzV4TUJrWWdVQ1VJb21reUV5U08vakpN?=
 =?utf-8?B?aVV1YmtJaWRsT3ZJcTI1dmtreUx1VHdsVlNiTUpPV0dYcjdVNWRLOTBsWG1W?=
 =?utf-8?B?aTdFQWdRNUhuNzlValh1TXRFK20vY2JBbFJhMnk5dnR6UU5hNWl0VExJdjB0?=
 =?utf-8?B?Wkxmd1ZrRUN4dDFwTkNxSkdCNksyM0J0SGpPRXRtYkxnKzNxNm9lRDBmYzlm?=
 =?utf-8?B?ZjZwM052RUJUZnUybXZDN3didFVMWll4OTdkTTQxYVo2djFmSkFhQUdyMS9u?=
 =?utf-8?B?cGdXWWl5cmNqdGdLZE4rS1BjSjF0SHF6akE5bTNCckE1WVpoWHI5V1FEbGxB?=
 =?utf-8?B?V1ZPY3pkbWxWd0NjYWxyUWtOZEhpYnk2YUVHQVBEWWpCOUJDTWd6MFVwYm8r?=
 =?utf-8?B?ZGtmZWg4eFh4K3ZUd2JETWNqMURBS2pRcTluRmhtRjRCZC8wQVRKVmNTcVFY?=
 =?utf-8?B?TmpKMlQ4NTRVUTF0Q2tqdWdhMWNHeGYvWWVocUYrZEtocUJFVlJyN2ZBdlRl?=
 =?utf-8?B?akovSENmZUVhMGllMjJLeHdnZUZDeGltbXJ5M244azVIUmp6dk9Bb2ZuZEpT?=
 =?utf-8?B?T2RKY1I3elpDUklUbG1tQTFWNzVTWTYwTDYwNGpIN0xjd043QmZEdFNnZU13?=
 =?utf-8?B?S3VNUlFsUDZ5LzBFOGlpeGt3Nmd2UEEwSkdDN3I3RTBtOTQ3cW4yeXpCRUNL?=
 =?utf-8?B?VTNrcnQrZHRWWmhaalQ5STQ3ZXRkNlBUVG5Jbld5WnNKK1pzMHlzSGhUazB0?=
 =?utf-8?B?eU9taU95bUZHK1oyZVdaT3lyMlRwT0JyeW1abWhDSHJUc3lJNDlOUlhMTFlM?=
 =?utf-8?B?eU9TWWlUQW9YVFQwZlVCeklrbVpESGNNS2E1SVVDMHpQUlY3dlVHL2lDd2k4?=
 =?utf-8?B?OHlUUm1Zd0ZpbW0rNjB5a1hRc1J2MVNOaVVGVnZiNkRuaU5PWmRVTmRKT2ky?=
 =?utf-8?B?TjBhajRSeU42d0VCMU5iNTNyazExWGxKSWxORnc3YmE3UjlaQ0YxU1hjMHNt?=
 =?utf-8?B?VWRGeHhIdldFTEU2WWZwL3hsWnB4NC9sOE1jQXBwWnJ1ZFdLa3RJdENjelNo?=
 =?utf-8?B?bWhUcVBxYzdEZkgyOVc2ejg5Y3I5M3JnLzJnQTZQMzRXdncyY0pLeTJjWEkw?=
 =?utf-8?B?bzVlb0V3YTVvczVLZ2dXMWpiYVlJbUVMRERBcU9vNDJGQzhmREdEMjFobjd1?=
 =?utf-8?B?RlFKSFEyZXZNNnBLSjl6REpCS01jalVxL08wS2M3b0FCNG9yQ1oyMnNVWjJp?=
 =?utf-8?B?dC9MdEczWDlINTFGaDlxWktIaUExS0Y3dllFN1RvMzRRem9XLzdTa0htMFJa?=
 =?utf-8?B?T05JZldWT2F5aTBGYU5DbW54TDA5ei9sbWdPNEpLaFpTMmcyUHU5UVZPenlH?=
 =?utf-8?B?bnRoUGMxNkRvdGdjdjdvTzM5MWE4S0h1NytwQTdRaFY5THlhTmZoVnIvV2Zs?=
 =?utf-8?B?UzMvRW52dU42S2Q1cGZOUkd3SjNhMFc2UXNiSktvQ2pwT2s2Y3ZtL0pha3lQ?=
 =?utf-8?B?SWRBaENwbFhXT3pRb05yZFRjNDRjUnBmcmVyeFM5NGVTQzFpdTY2N3lXbmZG?=
 =?utf-8?B?NytKWlJQM0JOMkhPMzRoazhIMHBQZ1NqaCtTRnE4ZVdqcXpFZlpkUDJqMFlP?=
 =?utf-8?B?VDY4OURVSEFtZEI2MXF0SDZLODZRNExXQ1lJUSs2N1lRbVZLcVQwdHdNbFo5?=
 =?utf-8?B?VnBvRjhXSnZ5L3p2by9zdC91RUdGZEV5NDJXVmRteGtKbDNETzRFbnM0NDJY?=
 =?utf-8?B?YjV0V3hjVUlwdU1ubGZDZXpXNzl3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5D140047B46CFF428B8CD16F6C7B16BD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1ffb8c3-fa54-494d-4fae-08de11fa2f2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2025 06:05:36.3981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DdzBCIJTcFL2xQshLam90ZXJdmxIZIAi0qwGq0ZDUC0jlrUbHaBd7wqRhIhhxy1WN2+2zqfO/IjRcbVlDJex50UqQj8ntp0EWB39djdCd08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6157
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

T24gV2VkLCAyMDI1LTEwLTIyIGF0IDE5OjA4ICswMzAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFdlZCwgMjAyNS0xMC0yMiBhdCAxODozNyArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdy
b3RlOg0KPiA+IE9uIFdlZCwgT2N0IDIyLCAyMDI1IGF0IDAzOjI1OjUyUE0gKzAzMDAsIEpvdW5p
IEjDtmdhbmRlciB3cm90ZToNCj4gPiA+IFdlIHN0YXJ0ZWQgc2VlaW5nICJbZHJtXSAqRVJST1Iq
IFRpbWVkIG91dCB3YWl0aW5nIFBTUiBpZGxlDQo+ID4gPiBzdGF0ZSINCj4gPiA+IGFmdGVyDQo+
ID4gPiB0YWtpbmcgb3B0aW1pemVkIGd1YXJkYmFuZCBpbnRvIHVzZS4gVGhlc2UgYXJlIHNlZW4g
YmVjYXVzZSBWU0MNCj4gPiA+IFNEUHMgYXJlDQo+ID4gPiBzZW50IG9uIHNhbWUgbGluZSBhcyBB
UyBTRFBzIHdoZW4gQVMgU0RQIGlzIGVuYWJsZWQuIEFTIFNEUCBpcw0KPiA+ID4gc2VudA0KPiA+
ID4gb24gbGluZQ0KPiA+ID4gY29uZmlndXJlZCBpbiBFTVBfQVNfU0RQX1RMIHJlZ2lzdGVyLiBX
ZSBhcmUgY29uZmlndXJpbmcNCj4gPiA+IGNydGNfc3RhdGUtPnZyci52c3luY19zdGFydCBpbnRv
IHRoYXQgcmVnaXN0ZXIuDQo+ID4gPiANCj4gPiA+IEZpeCB0aGlzIGJ5IGVuc3VyaW5nIEFTIFNE
UCBpcyBzZW50IG9uIGxpbmUgd2hpY2ggaXMgd2l0aGluDQo+ID4gPiBndWFyZGJhbmQuIEZyb20g
dGhlIGJzcGVjOg0KPiA+ID4gDQo+ID4gPiBFTVBfQVNfU0RQX1RMIDwgU0NMICsgR3VhcmRiYW5k
DQo+ID4gPiANCj4gPiA+IEJzcGVjOiA3MTE5Nw0KPiA+ID4gDQo+ID4gPiBGaXhlczogNTJlY2Q0
OGI4ZDNmICgiZHJtL2k5MTUvZHA6IEFkZCBoZWxwZXIgdG8gZ2V0IG1pbiBzZHANCj4gPiA+IGd1
YXJkYmFuZCIpDQo+ID4gPiBDYzogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50
ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jIHwgMTUgKysrKysrKysrKysrLS0tDQo+ID4gPiDCoDEgZmlsZSBj
aGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gaW5kZXgg
YjBhZWI2YzJkZTg2Yy4uNTRiNWUwNjBiZTgyYSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiBAQCAtNzAyNiw3ICs3MDI2LDcgQEAg
aW50IGludGVsX2RwX2NvbXB1dGVfY29uZmlnX2xhdGUoc3RydWN0DQo+ID4gPiBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLA0KPiA+ID4gwqB9DQo+ID4gPiDCoA0KPiA+ID4gwqBzdGF0aWMNCj4gPiA+
IC1pbnQgaW50ZWxfZHBfZ2V0X2xpbmVzX2Zvcl9zZHAodTMyIHR5cGUpDQo+ID4gPiAraW50IGlu
dGVsX2RwX2dldF9saW5lc19mb3Jfc2RwKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+
ID4gPiAqY3J0Y19zdGF0ZSwgdTMyIHR5cGUpDQo+ID4gPiDCoHsNCj4gPiA+IMKgCXN3aXRjaCAo
dHlwZSkgew0KPiA+ID4gwqAJY2FzZSBEUF9TRFBfVlNDX0VYVF9WRVNBOg0KPiA+ID4gQEAgLTcw
MzYsNiArNzAzNiw4IEBAIGludCBpbnRlbF9kcF9nZXRfbGluZXNfZm9yX3NkcCh1MzIgdHlwZSkN
Cj4gPiA+IMKgCQlyZXR1cm4gODsNCj4gPiA+IMKgCWNhc2UgRFBfU0RQX1BQUzoNCj4gPiA+IMKg
CQlyZXR1cm4gNzsNCj4gPiA+ICsJY2FzZSBEUF9TRFBfQURBUFRJVkVfU1lOQzoNCj4gPiA+ICsJ
CXJldHVybiBjcnRjX3N0YXRlLT52cnIudnN5bmNfc3RhcnQgKyAxOw0KPiA+IA0KPiA+IElzIHRo
ZSArMSBhY3R1YWxseSBuZWVkZWQ/IEkgZ2V0IHRoZSBpbXByZXNzaW9uIHRoZSBic3BlYyBwYWdl
DQo+ID4gaXNuJ3QNCj4gPiBiZWluZyB2ZXJ5IGFjY3VyYXRlIHdpdGggdGhlICc8JyB1c2FnZS4N
Cj4gPiANCj4gPiBIbW0sIHRoZXJlIGlzIGFuIGV4dHJhIG5vdGUgaW4gdGhlIEVNUF9BU19TRFBf
VEwgcmVnaXN0ZXI6DQo+ID4gIkZvciBEUC9lRFAsIGlmIHRoZXJlIGlzIGEgc2V0IGNvbnRleHQg
bGF0ZW5jeSAoU0NMKSB3aW5kb3csIHRoZW4NCj4gPiBpdA0KPiA+IMKgY2Fubm90IGJlIHRoZSBm
aXJzdCBsaW5lIG9mIFNDTA0KPiA+IMKgRm9yIERQL2VEUCwgaWYgdGhlcmUgaXMgbm8gU0NMIHdp
bmRvdywgdGhlbiBpdCBjYW5ub3QgYmUgdGhlIGZpcnN0DQo+ID4gbGluZSANCj4gPiDCoG9mIHRo
ZSBEZWxheWVkIFYuIEJsYW5rIg0KPiA+IFNvIEkgZ3Vlc3MgdGhlcmUgbWlnaHQgYmUgYSByZWFs
IHJlYXNvbiBmb3IgdGhhdCBleHRyYSBsaW5lLg0KPiANCj4gSSBhY3R1YWxseSB0ZXN0ZWQgd2l0
aG91dCB0aGF0ICsxIGFuZCBJIHN0aWxsIHNhdyB0aG9zZSB0aW1lb3V0cy4gU28NCj4gdGhhdCBh
bHNvIHN1cHBvcnRzIHRoZSBpZGVhIHdlIG5lZWQgdGhhdC4NCj4gDQo+ID4gDQo+ID4gVGhvdWdo
IEknbSBwcmV0dHkgc3VyZSBubyBvbmUgaGFzIGV2ZW4gY29uZmlybWVkIHRoYXQgd2UgZG9uJ3Qg
aGF2ZQ0KPiA+IGFueQ0KPiA+IG9mZiBieSBvbmUgZXJyb3JzIGluIEVNUF9BU19TRFBfVEwvZXRj
LiBTaG91bGQgZG8gdGhhdCBhdCBzb21lDQo+ID4gcG9pbnQuLi4NCj4gPiANCj4gPiA+IMKgCWRl
ZmF1bHQ6DQo+ID4gPiDCoAkJYnJlYWs7DQo+ID4gPiDCoAl9DQo+ID4gPiBAQCAtNzA1MiwxMSAr
NzA1NCwxOCBAQCBpbnQgaW50ZWxfZHBfc2RwX21pbl9ndWFyZGJhbmQoY29uc3QNCj4gPiA+IHN0
cnVjdA0KPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiA+IMKgCcKgwqDC
oCBjcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmVuYWJsZSAmDQo+ID4gPiDCoAnCoMKgwqANCj4gPiA+
IGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFE
QVRBKSkNCj4gPiA+IMKgCQlzZHBfZ3VhcmRiYW5kID0gbWF4KHNkcF9ndWFyZGJhbmQsDQo+ID4g
PiAtCQkJCcKgwqDCoA0KPiA+ID4gaW50ZWxfZHBfZ2V0X2xpbmVzX2Zvcl9zZHAoSERNSV9QQUNL
RVRfVFlQRV9HQU1VVF9NRVRBREFUQSkpOw0KPiA+ID4gKwkJCQnCoMKgwqANCj4gPiA+IGludGVs
X2RwX2dldF9saW5lc19mb3Jfc2RwKGNydGNfc3RhdGUsDQo+ID4gPiArCQkJCQkJCcKgwqDCoMKg
wqDCoA0KPiA+ID4gSERNSV9QQUNLRVRfVFlQRV9HQU1VVF9NRVRBREFUQSkpOw0KPiA+ID4gwqAN
Cj4gPiA+IMKgCWlmIChhc3N1bWVfYWxsX2VuYWJsZWQgfHwNCj4gPiA+IMKgCcKgwqDCoCBjcnRj
X3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlKQ0KPiA+ID4gLQkJc2RwX2d1YXJkYmFuZCA9
IG1heChzZHBfZ3VhcmRiYW5kLA0KPiA+ID4gaW50ZWxfZHBfZ2V0X2xpbmVzX2Zvcl9zZHAoRFBf
U0RQX1BQUykpOw0KPiA+ID4gKwkJc2RwX2d1YXJkYmFuZCA9IG1heChzZHBfZ3VhcmRiYW5kLA0K
PiA+ID4gKwkJCQnCoMKgwqANCj4gPiA+IGludGVsX2RwX2dldF9saW5lc19mb3Jfc2RwKGNydGNf
c3RhdGUsIERQX1NEUF9QUFMpKTsNCj4gPiA+ICsNCj4gPiA+ICsJaWYgKGFzc3VtZV9hbGxfZW5h
YmxlZCB8fA0KPiA+IA0KPiA+IGFzc3VtZV9hbGxfZW5hYmxlICYmIEhBU19BU19TRFAoKSA/DQo+
IA0KPiBPaywgSSB3aWxsIGNoYW5nZSB0aGlzLg0KDQphIE5ldyB2ZXJzaW9uIHNlbnQuIFBsZWFz
ZSBjaGVjay4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBCUiwNCj4gDQo+IEpv
dW5pIEjDtmdhbmRlcg0KPiANCj4gPiANCj4gPiA+ICsJwqDCoMKgIGNydGNfc3RhdGUtPmluZm9m
cmFtZXMuZW5hYmxlICYNCj4gPiA+IGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShEUF9TRFBf
QURBUFRJVkVfU1lOQykpDQo+ID4gPiArCQlzZHBfZ3VhcmRiYW5kID0gbWF4KHNkcF9ndWFyZGJh
bmQsDQo+ID4gPiArCQkJCcKgwqDCoA0KPiA+ID4gaW50ZWxfZHBfZ2V0X2xpbmVzX2Zvcl9zZHAo
Y3J0Y19zdGF0ZSwgRFBfU0RQX0FEQVBUSVZFX1NZTkMpKTsNCj4gPiA+IMKgDQo+ID4gPiDCoAly
ZXR1cm4gc2RwX2d1YXJkYmFuZDsNCj4gPiA+IMKgfQ0KPiA+ID4gLS0gDQo+ID4gPiAyLjQzLjAN
Cj4gPiANCj4gDQoNCg==
