Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMV0C0JTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B758A61C965
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C977B1130BA;
	Mon,  1 Jun 2026 09:39:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G6sZI+ix";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D4021130B7;
 Mon,  1 Jun 2026 09:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306750; x=1811842750;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=/8aqSs7mlOmiutPyMsXhWGqWjKQyLpTwTNFwdjHSQ/Q=;
 b=G6sZI+ix8ys/JSi3+uwmFe5pG76oGGqL00Baf9ZTUm6thOVjQm4SUQlh
 25X1DK4DfHVnuViHEciU/oOuSMngaBuWYDU8K7inwVsWdD+bhLknUv7jV
 p7ktdMKGtzO4RFdkY/LWcwj/Rt4PMy/m0uPjeEwt7ZQWY6xkLOGpNj+i8
 RwjzW7mymoVpf8RpsANzX5Imuf62sIjgrMcJhxSfOaZzxatVZQ9u47GrK
 BahRH3IpuXm7bbGRsCxALfrIDuGMp3QSKveGGNh+tPyaCPMpQ2//n/gXc
 z7/7o/NSOSJ0hZ4lQnel6DtnTe9MiWB5lBCWNkeo2QaQaTq/AqK4QHR1A Q==;
X-CSE-ConnectionGUID: e3Lq2IG2SuuYPaKzLwxa6g==
X-CSE-MsgGUID: 7cC3GxFvRxK9HXwk6l14Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="84688035"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="84688035"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:09 -0700
X-CSE-ConnectionGUID: eA67nuk0RKS3Yz8QArO00Q==
X-CSE-MsgGUID: 3cxh6150Qb6AunNDznLsXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="241010680"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:07 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:07 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ExoCvjBh1hH+E8FRNEKWF9yO89Iqv+q87wypNeu9BZoaSG84g7KKzAV31WUXFf31azndAP6+jr1ML2dNKm0anTsIMcPA9am8uPzlEY4ihiXjTtgUL0pPPJQORm/MgMcxQv4N2RcvC7CvP/i8OSr4Wgw1p+8eESwRbVLzyouyTbYL5mmAHnLw0w3Rv/wwhPff1HmqX0/Dxouq05ovflUt6S22cwzunGdWCFUyUemExlDBdB+s3d2NRGgiBKBRgcqFVgYooWuSbPAF6GS3wzQOAaNnkpG02eb7QcffrMOiIDQi5plEN+5+qH/zOMTSWVnpYqHDcrpXSZKIOpFrUv2ooQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hpFzIwtyiAnVhFP4w4rCy3twA8oMqiya4qRvRy80AsA=;
 b=O6e+3F+rFdSaMVnQ7hEX/tBiqw7JObL4B2fxm/dn0kii+sw1Y3yCmGLMLIMjdWa4hqvoLPGIvJKPCDBttYLJBnwyRwnu33b4F2DLEmuxmGTgjEVeTd7xeyC3asqgKeroz4sEiUd3dxixXLHjOS/4zS1LCy1weokYHIKNMZgrWGa402OzRQNLZX0NdaKm9YTqHaCczxNJf17BTX4rHhf+MPXc5g1z0yiKB+a+A7cNSF9oO3oa5jvoMi24naCJzfemX86UUyTd4WONFH9fySRuoasAv/Zdbk4rtTCJ9ccVBpAt9J6Wx7Door6DTH1iuDRwEv9Sv7cM7cx9uCwpujeANQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MW4PR11MB5891.namprd11.prod.outlook.com (2603:10b6:303:169::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 09:38:54 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:38:54 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?=
 <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 00/22] drm/dp/i915: drm/i915/dp_link: Refactor DP link
 recovery logic
Date: Mon, 1 Jun 2026 12:38:13 +0300
Message-ID: <20260601093836.3057345-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MW4PR11MB5891:EE_
X-MS-Office365-Filtering-Correlation-Id: d21858ea-f3dc-4a15-6fa7-08debfc19873
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|6133799003|18002099003|11063799006|5023799004|56012099006;
X-Microsoft-Antispam-Message-Info: vxcgwzV2fIUbSAg3EqzXJEZDdn2qgqH1XYaiE5YuPm2H5stLEde1wXpnMHpMSuTeaPgKKcGPm1N1lnC+dxMf5MLPAMKkpVXDvRgjiXcILat2OBk4v+Jf/nH2iwsT+wOuEbZUt03E5XSEuN3/Co4yTzOx/TgByLwjUWtIWiqHpaaWmRE1TwvswJMfFThgb9InDbQM/AlG10mcKW8/A1Fd1wqNlJRxVgOYr4Aj2qwfrinq5pKl3HXTYqJu60vYvZcrNXVfg7uflEC0r4FCCzNQ3M+Plf8zAF6HXvvMm76V+14JV/fJaKtkz11Lx5UA+FmgFLaGCxm8Wy87cTU6pqRgrG1akNr8xA2j3yE9jL9SEHc//tQKfTsvoPN3Zr2sA6yMKbzxUaxvGjDZr6gTpULtqYZDxQuwPjgX4bnxPN/b2rG8YtaKkWVln2okAvhcYQXIRkmh4Vtr2dzQ6hvQWzrE6ryhtJpL56G+nP0emn3FJ6trbb6jUpcCVIRxeAceFRQsjthjUvVXm/v3irAwQuUMoQ/JNxEvrwFlDQMlcJSGtyY21s+EysEvl2Jc8P551qxkV5gMdrYb0d+P4KhQNvnZSiIHbqqucklE9mz2h9aV+YfnWVl9adzuWNCFoGhYBolFFYJWUVD6ZWtadOSFPM+GgZF7iqPaacFMnXG+vn+GIx1oNwh9/JBQgU8PkO4Cx3bkWIK1d6zz3lvBUUupxiuUTQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(6133799003)(18002099003)(11063799006)(5023799004)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1Y2RU9ZL1BrMW1EUS9iMEtXWkNud3VnTW5HVlBpdzhrRFRKdzNnT040R2F3?=
 =?utf-8?B?MTlINVM3N0ZpRUdTdDlhLzhacGJBWmVEYlFidm9FcGhpa3VaSTZ6M1FPbHEx?=
 =?utf-8?B?VGVNK0FXcnpqZnhIdk1XazM3dGVkM1N0cGR6Z0VGQ2xVK1FMMkRBa3ZIdEZH?=
 =?utf-8?B?dDMvTnF3dXpvVWx1djZseFBUUWJoSTQ1MC9QK2JsTzRnS0pJLzlCYnRrOUpD?=
 =?utf-8?B?aVgrVmFXQStKUXFBWjFIQ2lpN0luL1FjMTBYWkk1YTlvMkxjRXRrY01BMW5F?=
 =?utf-8?B?dEFrK1RzM21wNkJNSUpJaWJWVWRJM3cwN3pqL1VBaGRBdkk4clpYa2xaRkNJ?=
 =?utf-8?B?aEd5Z2o1SEV1VzhhL3lYNTNSWWVreGJZbURJS0lCdDRCS3NpbEkwVkNXZHov?=
 =?utf-8?B?UTFYd1psdjdaMFpVWE9uV2NvdTcrWXNGa2JPMHN1NWNRK1ZVMG01QUxRNHls?=
 =?utf-8?B?Sk8zMHp5RUp6Z2RjL1UwRlhhU0ZkTWlZakEybmp4RGkwQTR0M0FUVEsrbFdk?=
 =?utf-8?B?RGxvZjYxVnZkcGh2TDlQTjIwRlM3dDMzaXovdmZoeVdyMU96NUgvWTNXb0xC?=
 =?utf-8?B?akpZekVnblArV01CNVR6eXlHOGxFQXVPdno5WUhKaUw2T0pZaE1NY1JyWXJa?=
 =?utf-8?B?TkdNRTg0c3RQS2U4a3lpZDZMUWFFdXI5YlU0MjdJYVBsUDZYL00xZW8xdGVD?=
 =?utf-8?B?U0pkUzZ2SHk5YjVyeDhuU0x6R2pwTXNlOU01R2svS0pNTnNmS1VBaUtqNzZ3?=
 =?utf-8?B?cUsxc1NBVEU0UkVCUlllN0dtZWxrQzJISkNsci91aTMzMzlPQTdwM3o5OW1X?=
 =?utf-8?B?YlZEMi81S01EL0ppMHAvN0dSblpTQXNlMVMrMFpLM0RYK0pSdWRwSFhsTytY?=
 =?utf-8?B?UFdHaVBDT0lDVlIwM1FSSElpbjVZZ2JjQ09sWW41YzRDTEljdjRGVUQ0Tm5K?=
 =?utf-8?B?Z1NpSU9PY2xpbG83UW40cTA5ZGhBNGhOMGxnMnV2aUh4R09ZSjVGaWNnWFFo?=
 =?utf-8?B?THN5bHdQTEk1T3Jwb1lxdW91NjVlS1RaZkhici9Jd1pwbHljQW9DTzc2aUE2?=
 =?utf-8?B?TEVzWHhJaTdITWdVMy8xSkM3ZmVtK2xHUE1Ea01jbkl2YmN6RW4zSFFIcWhH?=
 =?utf-8?B?Mm1nNFhWMktjT1VyVUpROVJzY3U4SWZJSGhOa3hjbDhFQ2hEdmVrWUtzc0J2?=
 =?utf-8?B?Q0hJL09MWU5zQWxtR1dEcGhrMVJDSURuRkplYUtMRXI3UFJQNHFCZTJNN2lr?=
 =?utf-8?B?RWtXanZSRDRmY0xMWDhGaEgrYkdXckZRMUsxQURLdU1DblFObkJzaklKNnpN?=
 =?utf-8?B?K0l3dUt6TEdaTk02WmdWNFo2UXRWVFBuemZxajluOU5wVEZ4YTdNTUdEK3cx?=
 =?utf-8?B?RmFoOXZwaHg1YjBVM29xQ0k4bW9rR3ZMZVdlbVU1TkxwL3BwTlZwVGEvOHpN?=
 =?utf-8?B?R3k4UnNWKzgrUWJna3NpMU9obEZRbC9BdkJsKzhDeU5iNjB1VFNEZk1Ha29k?=
 =?utf-8?B?ck5XVTlqT0dVcWVvb2QveFVtRFNNakYwa2I0U3R6NkVJOS80bUIvUDVXMTFh?=
 =?utf-8?B?WDZBOU1IRnVxK3RmaXp3SlZTUVZLZFRMa2g1UzNNd0lQVFNzVHoyeGdXTlpD?=
 =?utf-8?B?WllQSUtVMG1IbFFaNUJpOXZRUVZJODczdm44bE5NODJONHJ5eW1jVCt3eVRM?=
 =?utf-8?B?cU4xd3hwT0REYStZYUtsWCs1aEVVSjhsQXZoaytRcXNoaU51OVBtSmhuVzNJ?=
 =?utf-8?B?R0tqNm9CQzgydE11MEhSU0xWa1lyNFlsbHFRbXY1WHh1bUI5ejMyc3VBVlVi?=
 =?utf-8?B?TVY1dEpIS0VoS2dORjNQcEFwMnI2dGRydno3NFUrKzM1bk0rd2lWdUg2dXZj?=
 =?utf-8?B?SVhLVlFSZlBHMG52YTZiUWYzRGJRa2RwZjZMUEdTMUx4YWk0ZUF6ci9xN2pM?=
 =?utf-8?B?STFGa0NTSFl1MFlRdVdNT0NmSlZhREVNZEZ6eWI4TUZnVUY5N0wzWS95eUNi?=
 =?utf-8?B?SGxQYVN4Rk9JWjgyOGZRQnRTdldvTnFWS0d1YUhQSzZIa2lyc2RUV1pCTkdI?=
 =?utf-8?B?MWE5RU43U25uVTdCcktwUG5ZV3BzSkhyaTlWKzhuY3o5em9Hemo3MkVvSTlq?=
 =?utf-8?B?ZWpxYjF6VVFuK3gvdTlhVmp1c3V6eFFyYXE4TlpvYm5DUGZpVW13MC9Uc3gv?=
 =?utf-8?B?UEg5UDR4NVNiSFB3b2VJVVNIOTdtNVJWaHA0S09NeG1ob2RoTUNQYmpVWFZT?=
 =?utf-8?B?WjliNzY5eUNyc2NsOWVzZUFlbnYvU3pHNW1BMWNuN1F1RHYzUWVSWCtIQUFx?=
 =?utf-8?B?dmF3cjJjeldIWWRrOVlWdVFSKy9UdWxGZXMxeXBqTzc5dmZocDMyZz09?=
X-Exchange-RoutingPolicyChecked: iOZ15NPBIWlxsHKmQdFrzy9hL7e2CRE9wIA9m32Q5Pj1f2nuiTvk5ZCuc53sEX7GcVOFqxm71lQNupvxFgq2DMRAnxQtg5ZG3mYlHKjJQfS5usPx0R1vrAvdFhghWvd1e1GIin+URawm2f35q+ZwKt/aDGMIb/7mokJHwiAxPzPMBVceeqy7Y5wBp2DzmkDykKyoEYsv/BI7lUiTEIlP2PxxC7kHpDUPCPwj3RqF6jr+WHf42JLaReLoVH1FNv3SPws8lxjDqh4jIIWvt8js2u1JXldxL5s710sxtao0KJiFOORAFZ01GUnzAwkG6L6ygMq2pHdLhYDR4OtpWw1u/g==
X-MS-Exchange-CrossTenant-Network-Message-Id: d21858ea-f3dc-4a15-6fa7-08debfc19873
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:38:54.2748 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xeHNU/ukdSyLC6Dka3ex0UMxW6KzpRBnPgwktE1m0dvRmFaLfDKaT0EKl6fLpDyfoljdByPNXnhXYD9ng7DMfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5891
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B758A61C965
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is v2 of the first part of [1] refactoring the DP link recovery
logic in patches 1-26 of [1]. For the rationale please refer to the link
recovery parts in the cover letter of [1].

This v2 version has the following changes:

- Address the review comments from Jani:
  - Remove unneeded kernel-doc documentation.
  - Explicitly compare against and set recovery state enum values.
  - Expand the high-level documentation adding recovery flowcharts.

- Simplify resetting the recovery state as suggested by Ville after the
  sink/link capabilities change without an HPD pulse (i.e. without any
  signaling or via an RX_CAP_CHANGED signal), effectively rebasing patches
  1-26 in [1] on top of [2], which also resulted in dropping patches 1-3
  and 6 from [1]-

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

[1] https://lore.kernel.org/all/20260428125233.1664668-1-imre.deak@intel.com
[2] https://lore.kernel.org/all/20260522160514.2628249-1-imre.deak@intel.com

Imre Deak (22):
  drm/i915/dp_link_training: Introduce link training state struct
  drm/i915/dp_link_training: Factor out link training state reset helper
  drm/i915/dp_link_training: Flush commits in debugfs entries
  drm/i915/dp_link_training: Move link training helpers to link training
    code
  drm/i915/dp_link_training: Use link_training as base pointer in
    debugfs
  drm/i915/dp_link_training: Add helpers to access force retrain state
  drm/i915/dp_link_training: Move link recovery/debug state to
    link_training
  drm/i915/dp_link_training: Prevent repeated autoretrain attempts
  drm/i915/dp_link_training: Clamp sequential link training failure
    counter
  drm/i915/dp_link_training: Check for pending autoretrain explicitly
  drm/i915/dp_link_training: Add helper to query pending autoretrain
  drm/i915/dp_link_training: Add helper to query allowed autoretrain
  drm/i915/dp_link_training: Add helper to mark link training failure
  drm/i915/dp_link_training: Add helper to reset link recovery state
  drm/i915/dp_link_training: Track link recovery state with an enum
  drm/i915/dp_link_training: Add no-fallback link recovery state
  drm/i915/display: Factor out a helper to modeset a pipe with atomic
    state
  drm/i915/display: Simplify
    intel_modeset_commit_pipes_for_atomic_state()
  drm/i915/dp_link_training: Allocate atomic state for autoretrain
    modeset
  drm/i915/dp_link_training: Disallow autoretrains after failed modeset
  drm/i915/dp_link_training: Fix kernel-doc of
    intel_dp_init_lttpr_and_dprx_caps()
  drm/i915/dp_link_training: Document DP link recovery logic

 .../gpu/intel-display/dp-link-training.rst    |   8 +
 Documentation/gpu/intel-display/index.rst     |   1 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |  10 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  42 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +
 .../drm/i915/display/intel_display_types.h    |   7 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 218 +----
 drivers/gpu/drm/i915/display/intel_dp.h       |   7 +-
 .../drm/i915/display/intel_dp_link_training.c | 891 +++++++++++++++++-
 .../drm/i915/display/intel_dp_link_training.h |  15 +
 11 files changed, 967 insertions(+), 254 deletions(-)
 create mode 100644 Documentation/gpu/intel-display/dp-link-training.rst

-- 
2.49.1

