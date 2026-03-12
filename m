Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGUaBZ1asmngLwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 07:18:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 223E126D8D9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 07:18:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CEB010E356;
	Thu, 12 Mar 2026 06:18:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KV/ECe9d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1463A10E34B;
 Thu, 12 Mar 2026 06:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773296279; x=1804832279;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WUf6zBbVrySAEZIxk+qrJZFajSfcZYWHeziBFh73AF8=;
 b=KV/ECe9dJoxxgpNoKCQu5aoeoqyS7q4b9BqPFpTPRRheuUpa8NcumY4c
 rhS9TUvTTLcGeJ/+QdtBaSaA1keqSxG4ouREGpi6Ae2CjBOYJG11w1e0g
 pu3oq+OH4Qnnf85MaW+Vv9tDT8rdtnrvszha/7tz+4V8FpU0fPbxVQp5e
 chmtwU7KUb7qwts2WQwfubGvwPWtUx07i3djCeGgSula2uDXBhq0j4tsi
 zVg4xezyoDmfsKHncDoqRzamnEsJCQ9Bc1Xz90NpWKZol3RnHAaSU6HbF
 /XGl2Db9YTwbVhV86swKaiggrJAPxM1mbTcl7a/YZF3X4yhp2S8JwShPr Q==;
X-CSE-ConnectionGUID: E6LuKfyHT1qeqFwhBJm36g==
X-CSE-MsgGUID: qkBIaI5eRu2DFx82/A6FAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="84697324"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="84697324"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 23:17:48 -0700
X-CSE-ConnectionGUID: s6xQi6sPShKr6JSuwG9bjw==
X-CSE-MsgGUID: 2ap5uOrmT+u6magAPijTvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="246155291"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 23:17:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 23:17:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 23:17:41 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.43) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 23:17:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R4+w/KmBknSXVHu07NBaFgvW7qs3V1AgBqhnDmo87rnynOdL4sKSvQhFOgwYmmks+w8XzU63tQduxqDz1j7YIEDNZDMpu/Bx15/qdwzjs1rnR6PYumpTMJbq9Vm+w3S14indocN8pi6AePmaV+9K4toAc84LInQsosOGtaIqL13STxvkxB8PJTtboVXW0+j6ZO8mWkdIlnLiQDkBtJpE9xOyPpFDkSOPLsSaLi8fcc0dgk///T5QZvzF0hZisH/JdRecPQB8mwAstQQYRDnO9JkRKLkRNe+mvzy1cmbpe/U7+oPblOHmwyoBoIzgPwTvP3E0uvRGqBoHwleZXpU5nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WUf6zBbVrySAEZIxk+qrJZFajSfcZYWHeziBFh73AF8=;
 b=GZ5BdhDAJvoWC25Dtg5kiIvenh2rs4a5jblCpxLWu+2PzWoGxzKOgvt9ZD9tXnvoT2NFsBeWefdYpu8CmhOQc8jfAd83hgMRhUFplZlk50ShMehA0exRwh77q1LFda2r+ADZt+7KBt88Vegt4qpQJm3NnTWBMCDhM2Mm3po5adwMrtcbH4wLfzjcYQvd4zePxIJgGatRosrwKFZgdrBBEMm6GAH1G9yoC6zsf3wkurzic+JMVi0Gn5ccx8N9pX7Np/W6N6mFNrE+/lE6C73kPCIvUU/zWRGHE8KpMKqKHsHYO7dYSUySNez9T0LGXB10jRarRsf+wVIwO73gBxqcNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CYXPR11MB8709.namprd11.prod.outlook.com (2603:10b6:930:dd::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.3; Thu, 12 Mar 2026 06:17:37 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9723.004; Thu, 12 Mar 2026
 06:17:37 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v7 3/3] drm/i915/display: Disable Panel Replay for
 DP-tunneling without optimization
Thread-Topic: [PATCH v7 3/3] drm/i915/display: Disable Panel Replay for
 DP-tunneling without optimization
Thread-Index: AQHcseFvcqcWYygKc0GO0JsKLYQshLWqbBKA
Date: Thu, 12 Mar 2026 06:17:36 +0000
Message-ID: <22f4f23f363fcfd24114f46aeb113edb7bba7f77.camel@intel.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
 <20260312050035.3493690-4-animesh.manna@intel.com>
In-Reply-To: <20260312050035.3493690-4-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CYXPR11MB8709:EE_
x-ms-office365-filtering-correlation-id: d23be2ed-8dc2-4015-9a26-08de7fff0e7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: 9kj+0XvU28vv3kwPrJiz4aOm0SKolkhEuSrM/4vpogfw+NnXOtFs3w/87MFIi3jmr3xvPzLgeS/mww1LaNfF/5Qnf0RcBqa08Bz/89xirXXGoLme26FiDEpH2nN22H0yvlGWXviB3Yk03/0J1PGKzrPy5t0MeQae18VN876RcujNo19iOM05tP1flQkDFN2t6eAIh+NPwQe5De9mZJPQUQ8PWqQyQvp8p8tgUj6PwWdoywY5B3MEcZN8sSz17MJAzBxmMssXLoviGIo28axse+WhcQV3SWFk4vrR2f+eIGx6LnSaz/B1k3liKDxl0jhnIou2JO1yueTc85kNHGz8iOUJVEneqln9Sj3zCvnH6pIdz0O2FmNu4ozecEaEd7WzTYkckv/Df5icpnE2UVRmhwpbtMoJFqNRmTS2YXV0hC4cuLjWCz63OKIyW13oH+1nMi5SpMQ2/xeizH8u8D7R7OivMMvcs2o4gDMlT7ORjZRWqxrCm3Z5ahLraQ2G1PdFI9wI8HHZqYiwLjKlNqy9YoA22xx57GSdZihW/3ls639mJ5IFigBvcadgx1AaDhdvjYhSBABZSxrs5EjiaOo0raNlKuVERpcr/I5YAbvvTKbSTHSgWFV3/11vglhoOQyBKHrSr33DdAW68ItCWFcH7P8G3rlMD0VymDpFkt8Dju1jggXuxqjVc+TxxARdTn34SxeAwpyVnBhmzCcP0CfpTaP/6Nb1+wwBpf7kf0QbNwripThrzQoAPxObQrhN+p1OPDgE3JZzcPRyzXzAF6dz5FoH2eJMfWZ8ZUi0L1DvTtw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b01pVXpsUzhEOHVnUmNMQ05WL2Nzd0M3REhUUEMybnNWUXZrK0t3MTljNURG?=
 =?utf-8?B?NWExa3dzNnBuZGlTZk80TFVZdm1MeTFCTzNWYndsdjVEa0cydFFkMGw1TjF1?=
 =?utf-8?B?VDJyRXluT3ZQUzVMeEYyTW5GYWpTcnhQSGtCc2o5ZnRUNFY2cWdDYnd2TEpK?=
 =?utf-8?B?L0hpcmYyK1B5Ty9HbHVZdXpHTTBTbDBPbG1jK1pGbE5oZExCUFF2VkRUTXJQ?=
 =?utf-8?B?VjYxN3NILzlPUzB0MWExalhaTk1TVFVvZTJEUnptSngrS01PVHJEU0tUMXBo?=
 =?utf-8?B?V29lWjlLdkZsekYxNXJCUG5SNkptcU8yZ3lZUEhwWG5jajB0aFJRVDV0QjM4?=
 =?utf-8?B?V290WTNyNGpvdktuNHRwMnZzMTdaV0JXNjVTK0dON2FUd0JvTXFEM24ySWN1?=
 =?utf-8?B?YnBsUWJ0eFFUcUg5L3pCelNsN0VrbWs3VVMrbkpha0JEZXZ1RDhjZjJ0S2Vi?=
 =?utf-8?B?WDZiTWlmUnV4K0kzTGY5K094ZGRMV0FUNjlVOWdURkdYQ3k3V3dvcDZLemlq?=
 =?utf-8?B?WnlaUW1vMnl6TjVwTUd0VkV1c21USXJKQWdpTkFkS3hQQVVpUllQL3kzYmht?=
 =?utf-8?B?NlREZXF2cXM4R3JIRDhzb3R1SnpudGhJT2pjd3BLV0s4Y0tTQXZwNmloeHZ3?=
 =?utf-8?B?U2d0K0RvelUySGVIdVF0REpQQnJLSFZVNE9zUkhNTnhPUUZlWitvK05WejYz?=
 =?utf-8?B?Y2dPendZNmNEcVRMZjBPQnFITXIrLzNDOCtrQWtIODZMT1V4UWdoNGVJNGFo?=
 =?utf-8?B?cDBSMFBGTUhaTnVKLzZzOTU5QXZDbEpDUHErdUk4MU8yWExPOFhiTC9DVWEz?=
 =?utf-8?B?TUV2bnppRlBBT0F6bTllZ0txenRETGVyTDIyaWRZOWZ1Uy9IaEYwaWZyc0JL?=
 =?utf-8?B?SFRtQlBBaCt1TE5haExPbzFFSGVmdEpWOHZKY0xSeFBFZ0toOUZqdTBjSHoz?=
 =?utf-8?B?SDdkU2IyMFltdVpkSWN3QU5DczFRSFBnbUErdEYyVnpvdTdmY0Vtc2FhWkN0?=
 =?utf-8?B?T1M0aUIrSUdUS2dHYVBJK2lOeTlkMENJc1Zrd0RwMjc5NW1WK2Rpc2lLZ3Vn?=
 =?utf-8?B?Wmtqb3dEUTM2dmhXYnQvbURnWFlhQ3JWVytLcldjc0hxRFAreUZuNUI5Y3gx?=
 =?utf-8?B?Q3VYUWErKzBWTEhUTkdYOXhmWkU1OC9XMStPdkdOSWlmK0pWY3ZUKzBWVzlk?=
 =?utf-8?B?bHFIdzNxcW1xVTRpSGZ6SG9UVWZWbWtiMkJYdEZpZzFtbk9peUZzNGFqYmhR?=
 =?utf-8?B?bnBLYU1HSlpsSGg5Sm1mRVFtWks3cFZiUmZDcWFqTWVFRSt4SVZTdFg2bGVR?=
 =?utf-8?B?c0NyNFl6THlmMTZmU2dsN0xYTmZWRFRQajAzSkQ2cTdBOXgxOHZyZkNpaTEw?=
 =?utf-8?B?ZXcyYXpIeWZNN0gvRWVRUkZrRUhsaElnTmtOQzNjUTRDR0xvUDhGU2ZGMXp3?=
 =?utf-8?B?aUFNbm5TVzZFTDdJZHR1aWdVbm13OFdBUy9sUlRZbDQ0clZiWFZId2M1eG9S?=
 =?utf-8?B?VmtCR1dXUEt5VGdOVkM3aVZPVmFhL2lBVFBUQnZIaXd0aTBlV2puZjd2RzBu?=
 =?utf-8?B?YzdOUzVkWWlSS0Z0d2lRR0lEWGE2TWVCOFBidGd1YVhjQnJqVUQ4SXNOaTlJ?=
 =?utf-8?B?cDhYSjFXVEsrQytodkU0ZXZQQWZBdWJmalNQb01IWkdtczhwdWxjUmJ0Vk5D?=
 =?utf-8?B?TWRaT1BTVWFvc1Nya0s1TW1IeUUyeis4b2pwdnYxUk9iSGtLMnlLc0VNbVVv?=
 =?utf-8?B?aFVkN0MvYUI2Q2FiL2JscHhqQ3dDa05vUjQwS1pyNVlnR3RmOTJMZDFidUR2?=
 =?utf-8?B?ZFIrRTcrTTFGaEdnSzY0T0tycmZnTG5ORlExKzZuY1BCMmRzdXJPQTNaSmVj?=
 =?utf-8?B?VlNOaUxOMVNvaFBkWElrU0UzSGdJekZZZUJTVU9UcU1PSmM0Q2htbnNkbVVY?=
 =?utf-8?B?d0pwL0RkcWF4UUJwMG9YemY5WDRNQTl5TTBDTnpqME9PMlIxY0o2ckwzSUNF?=
 =?utf-8?B?MW1FTlFBS29mVlVrSDhTOUc4OTU0MXA3cFkvRVNRS1I5KzhOaisvdGY4UGsr?=
 =?utf-8?B?ZC9NUjFyZW1TMUZyL3Vad0kwdnA0WDVDNzlJSEJ1ckt6Yk0vWFQ2VCtrWWNC?=
 =?utf-8?B?cGdLVXJEbEhYQWRSTnB1S0RkdWJ5cENFekNrY21pRlJmVkxTN3NWcEZpZFBT?=
 =?utf-8?B?cVdmZ0RlRUIvQ0FqNnhGUnVEclBrSS9KM0k0NmxyWFdDUlpFNnd6RER4TnI5?=
 =?utf-8?B?QTRaUVJqb2pVL1lZZTVlV2NXa1RrNTBKeDhkYjZvZTJHVE5QVmxJWWljMk84?=
 =?utf-8?B?Q253cWt6RzN2SjA2SFBJL0Q3WmxPNXgzQ2lPbnV5UzdlSmhZVmVtdlViZWhR?=
 =?utf-8?Q?ousShYhtOLInLRGZYUxRaMbAqCGTZP+3G3WFdSfSx5drd?=
x-ms-exchange-antispam-messagedata-1: sAUilayBgsQZMowbvKT2qMUQ4l4Bvw1QQIw=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BF67AFD91752AE4EB6B12BB8078EA45A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Sg1PGXXv/SD6zZYD/aIJgnMdOg62VK00xxSt9rJl2m2vfvbrgvOoSXnMdQgufbl+47Fh7ZqeFHyNBSkKAwcYjV+3+eU9CgPeIXl+nrYNMsF6mPcMggrsdOKGHGS2L6GKhwtDbUW6LEId91as8W98wvdY/f85apmWuDmlElPTNsoClCfMzZeUrpGmLFIOlstJQjSMUvgVLmgo4aZBjc7w/yTwtU+zDrpC+1jkye/Ixn9uIAqU66h+JIjDAiTJsqTB8IX8eajphyg8eCDrjec0GZIHhryipPXvMyWBwUILaOVGuoO9qjqXWfbbTWoRZUSgATXJyuWB6VaMuiK8huaYHg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d23be2ed-8dc2-4015-9a26-08de7fff0e7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 06:17:36.9597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2ZypYVFJz1XAVPbDj7VqDDKGxTwOKc2n41GrCLurfvcwzIwSVb1Pe8WuLuQrKfTwdEs30dgjJzL9+MA2I4sCGwFjIgQMWMu+fs8+ndNhGbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8709
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 223E126D8D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI2LTAzLTEyIGF0IDEwOjMwICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBBcyBwZXIgRFAgc3BlY2lmaWNhdGlvbiwNCj4gwqDCoMKgIFRoZSBEUCBTb3VyY2UgZGV2aWNl
IG1heSBvcHRpb25hbGx5IGVuYWJsZSBQUiBvcHRpbWl6YXRpb24NCj4gwqDCoMKgIHdpdGggRFAg
dHVubmVsaW5nLiBUaGUgZGV2aWNlIHNoYWxsIHF1ZXJ5IHRoZSBUdW5uZWxpbmcgQnJpZGdl4oCZ
cw0KPiDCoMKgwqAgUFIgdHVubmVsaW5nIG9wdGltaXphdGlvbiBjYXBhYmlsaXR5IGJ5IHdheSBv
ZiB0aGUNCj4gwqDCoMKgIFBhbmVsX1JlcGxheV9UdW5uZWxpbmdfT3B0aW1pemF0aW9uX1N1cHBv
cnQgYml0IGluIHRoZQ0KPiDCoMKgwqAgRFBfVFVOTkVMSU5HX0NBUEFCSUxJVElFUyByZWdpc3Rl
ciAoRFBDRCBFMDAwRGhbNl0pLCBhbmQgdGhlbg0KPiBlbmFibGUgUFINCj4gwqDCoMKgIG9ubHkg
d2hlbiB0aGUgVHVubmVsaW5nIEJyaWRnZSBpcyBjYXBhYmxlLg0KPiANCj4gVGhlcmVmb3JlLCBk
byBub3QgZW5hYmxlIFBhbmVsIFJlcGxheSBmb3IgRFAgdHVubmVsaW5nIHdoZW4NCj4gb3B0aW1p
emF0aW9uDQo+IHN1cHBvcnQgaXMgbm90IGF2YWlsYWJsZS4NCj4gDQo+IFN1Z2dlc3RlZC1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYt
Ynk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNyArKysrKysrDQo+IMKg
MSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDYzMjUyN2VkZTI5Zi4uM2VjNDA3YTgw
MWIxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
QEAgLTE3OTYsNiArMTc5NiwxMyBAQCBzdGF0aWMgYm9vbA0KPiBfcGFuZWxfcmVwbGF5X2NvbXB1
dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiDCoAljcnRj
X3N0YXRlLT5saW5rX29mZl9hZnRlcl9hc19zZHBfd2hlbl9wcl9hY3RpdmUgPQ0KPiBjb21wdXRl
X2xpbmtfb2ZmX2FmdGVyX2FzX3NkcF93aGVuX3ByX2FjdGl2ZShjb25uZWN0b3IpOw0KPiDCoAlj
cnRjX3N0YXRlLT5kaXNhYmxlX2FzX3NkcF93aGVuX3ByX2FjdGl2ZSA9DQo+IGNvbXB1dGVfZGlz
YWJsZV9hc19zZHBfd2hlbl9wcl9hY3RpdmUoY29ubmVjdG9yKTsNCj4gwqANCj4gKwlpZiAoaW50
ZWxfZHBfdHVubmVsX2J3X2FsbG9jX2lzX2VuYWJsZWQoaW50ZWxfZHApICYmDQo+ICsJwqDCoMKg
ICFpbnRlbF9kcF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZChpbnRlbF9kcCkpIHsN
Cj4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiArCQkJwqDCoMKgICJQYW5lbCBSZXBs
YXkgaXMgZGlzYWJsZWQgYXMgRFANCj4gdHVuZWxsaW5nIGVuYWJsZWQgd2l0aG91dA0KDQp0eXBv
IHR1bmVsbGluZyB2cy4gdHVubmVsaW5nLiBIb3cgYWJvdXQ6DQoNCiJQYW5lbCBSZXBsYXkgaXMg
ZGlzYWJsZWQgYXMgRFAgdHVubmVsbGluZyBQUiBvcHRpbWl6YXRpb24gbm90DQpzdXBwb3J0ZWQu
Ig0KDQo/DQoNCkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gb3B0aW1pemF0aW9uXG4iKTsNCj4g
KwkJcmV0dXJuIGZhbHNlOw0KPiArCX0NCj4gKw0KPiDCoAlpZiAoIWludGVsX2RwX2lzX2VkcChp
bnRlbF9kcCkpDQo+IMKgCQlyZXR1cm4gdHJ1ZTsNCj4gwqANCg0K
