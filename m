Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yH56L5gDF2qz0wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:45:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0335E622E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:45:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D891510E0E5;
	Wed, 27 May 2026 14:45:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lcrpJ2ug";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFAD10E0E5;
 Wed, 27 May 2026 14:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779893140; x=1811429140;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=BlLPYS2a+FFRsaHSTsKr1wGwR6/ONblZhqUJqqcXevw=;
 b=lcrpJ2ugtXDMRv1w6v6gir0NvDs2xnxl6gPSS5ZhEFzQIa59NtrMHx06
 pLCH7dtTkoWLUXdw3NG+D0DS+hir30K07XlFC8XpmvaamY82vsRlbsl+3
 L7oxTqN5pPKCAv61pb7zaXdi2Mawn0pC4F7krV5Sql1nHqNGDtcHEBPsp
 FZ5ZNvxCtBdI6Bfb1NZ449kbRAXF1ks3Nj0Oiww7tISu+XmIAPhn8/Nii
 QHgOMi+lmaGl5Rk45o81MeKB92GMQdfLc453JMcNH2lvLWWisAlmUHLYd
 nfjXLgTKELraRfGYDhcS3u1hp3rNHA1BEH0c9gNg9xpJknxZ/JP3QBfkm A==;
X-CSE-ConnectionGUID: zNw8x8stQN+UCh2KuQgqZA==
X-CSE-MsgGUID: VpD80lItQP23IKyYbg+J8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80783068"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80783068"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:45:38 -0700
X-CSE-ConnectionGUID: Q4ciItWISR2AedHJnqjAaA==
X-CSE-MsgGUID: qFBAMDjxSNWiRt3tyi9CWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="247212310"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:45:38 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 07:45:37 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 07:45:37 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.45) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 07:45:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jupkh9wGWEfYqHhy0z/hy7fwLG762SO2/vrhKb+3NdxOxXkseAc/yregLw/rwMoEwlyJ4xvtOdZvANomUslyFvEmd3T55WurrW9h8/TO9x0HVmu91kxSP0kROQjPAHK18/7X3GY18qXbehicHLh/j14qVrXCnrsOhvISfdqevcIViFGymAdPRGqU8pnCVOePADz65QI1xd+msYfquUmM3tw095twumj2CY7lQF5/dfctey4NNjrUi/q+PpkAq0JSbKPkuXcd5QQHTUNflONs9Gd087EjTgEwJsWGxBoFCifngIK3qwShC1DlnuysI5WZzuFuyneOSAGALGR+SGQCVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eEJWiFzV/AUkgn2JYwWChmIoV3rNIZ3g6OF5UEZSZqg=;
 b=pKV+xmMAERlxqs667WZFMQKMPMWkZYgBFP7iho6DCAwfaR/SLPoQg8VUYhKTBHxpIUQfNAIyvdIlVmiG1Kx/v6mcKF+WH+SSEcIWC81KwDeQYCxGOrXdu9VnCUK9lHbmF+NQIMMXnmMVRbRX0TSmdF2jwtCLcHXGuctxcTROmRivUG4xENxFxxpdJ0lYdl7Io2nJG2kSxd7bMaZgcuv642JKCS97oZi/bXCXjC/H/RCdroJH23F1De5sfBWZ3/BphX6M+oAzN3pEXpQzhprS5/ql4cgdBMmKD+9ZvqkdPR5T0f6ihgSRzlnIK3Xb+1v/IAsZjJT97p6g7js2Hw5E+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by IA1PR11MB7919.namprd11.prod.outlook.com (2603:10b6:208:3fa::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Wed, 27 May
 2026 14:45:33 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0071.011; Wed, 27 May 2026
 14:45:32 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 "Michal Wajdeczko" <michal.wajdeczko@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>
Subject: [PATCH] drm/xe/ggtt: use full-range drm_mm with reserved nodes on PF
Date: Wed, 27 May 2026 10:45:28 -0400
Message-ID: <20260527144527.3701844-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.54.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::22) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|IA1PR11MB7919:EE_
X-MS-Office365-Filtering-Correlation-Id: 97755151-8eb0-4607-1a8b-08debbfe9a9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|6133799003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: KeT0BQySUDsFZyxcWj6LyHcgB+aqeLPKFW2Ro6aTTLm5hSPZ60TffOrfyrcdPxIGwd/4h3vlPxhtMlfwUxfzzeHJGz2w8aKDUspAACldvAC0V2oQlTygtW40XJpZboFWp3xJAfzIj5c8GSEkw38RIr/Rzb6HmlEU+ifEfm29p0zEW44F9ttBMBti2eXL+YBQfpEqUHjsTh2pHIrqdJGHfjG+2ZyDOxJYS5gxOyTFIN5T1ynNvsj3+pciRdiSMHBkWJMspXupzxabJT7uC628Ga1IiVXZPbKRtmxZq4jfeUYP2749GojmaGzQOsZUEYrq7q9FQKMRaCweLKNes+LaWXCSnR3FOHQbbPMssDMp5Ni+vw/vs6Wb4Jcdj9xQL+HFmx0GTR/A+VaUfzoJ2s0Oq1p7i/aO+EEGmowsU3hXAbRXz+tJ97RvfjIwItth0eIvpkP5N0ALB2RUum4gmHo6hLkjM80Wl+6TWIfGArCLMUKw2lExKOzKmFBV+biNPYkId/UYvnyav5bRD80V3/KxN1tBDjsni6Qj8KZv2HeMalBcyPR0QCXz6XHy9OTaEIuanIJDgNLd89Vw3+Rze8PvCva6wPzmglU0Dj89++8zbGxNZnzUlQ10Su0GOohzigIDBY+fxzwdQ5QrAHgmE4VQoLV8M1/l+OLgmVmDUtpa9xa5ZlRhblTxIWMCAYYn8hZp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWFWbXBxbGpyVmU0RHFsODQ3dG56VVJ3OFZnSjQ5L0ppV0t2NklkYTVTV2ZP?=
 =?utf-8?B?WmtWQ0dqQ2xsWUI2T3J3T2pHN3Y4OHN2TSt4WXNLOTZpd1gyeXhTMzZRbjBi?=
 =?utf-8?B?eWUyaFRtYzJsUHdHa3RiTU1EYS9UYjhVUE9EOEdlWlN3bHJkbWV0ajhpZXZR?=
 =?utf-8?B?NS8zSTQ1b1RyY0hEWUxOczZUNVNkTk5MbEk5WVArZjJnRkZEZFgvN2Y0UjJV?=
 =?utf-8?B?dm1QNy9kSzRnQ1Fzb3RiQkIwRlJRNXFtVk8wdVN1S2NyRTJSTFJZZGdKV1Ay?=
 =?utf-8?B?UVpEeEJTdWpQMjNpOWtBcHkyUXZ1UlBqSG1DdjBia0YwKzNmSjgxcENJdG40?=
 =?utf-8?B?Mlpoa2hLcHhKUnRCNnFBYk5aUmQyMkdtZjhsVnh4NGNLWFBrbW5jQUVJNU1s?=
 =?utf-8?B?WlNiWWdUUHBXN0FNdEFtNldHMXhoYlJxeTZ1cGNFK2I4Nk5XNGIySm9ZdGRU?=
 =?utf-8?B?UTVDZjc2TjRvQ09POHcxbThZdnBRZVB3OTVyVnNsWlBCN1hFa1Q4Y21pTkdH?=
 =?utf-8?B?VmxueTZhUXloc1hKdnlhazRCbm41b1ZPdE8wVzdUb25jSzdhVnc3cElwVWxt?=
 =?utf-8?B?WjNXVmYycitxZm5GQ2FGMlhKUVlnU0R0QnFJWUF5RGtHdkgxYXdhZEdncmVN?=
 =?utf-8?B?a3RCV1lLUDcwSFo0a3dBS2ZYZzVQT1hPVlNWNU95TzFWOEdHSm0zT1FFeWsv?=
 =?utf-8?B?M3QxTTVqN01aTFNnaVR2MGw2RmNoOGh3YmYwYzNlQURQNXFtdkUrZWlRMWNG?=
 =?utf-8?B?dElmMCtvYld4RXNGREd3ZUFieEo0VDVEUjk4OVhZdWZMa0lQQVdoUGQveHp3?=
 =?utf-8?B?ZjNROFVPQTRVeittNUFQb2lhTXlHRElQWUZDVnlLUzNGTTFpUDVKSGNvV0tu?=
 =?utf-8?B?bGdiWDlQNjlOZHErUjk4bHAxcVNCK1o1R1R4ZnJPdEVGOXU5V3lFVVlZV0NZ?=
 =?utf-8?B?R0VtYzRVMkRaTURyYUp5U3lvc0l6R2kweUh4TjlaR0hyTnhXTnpsdmQvQjEw?=
 =?utf-8?B?U3RRQ1BkZFdDMmNuUkUrdDFrTVl3eE9TYUlrSVNCdGpiYm1hY0R3RTJEU1lz?=
 =?utf-8?B?RjhHRkNwR1ZJalY3WUVxVnFaaFQ2WEtkS2dsVXJMcEt2QWN2bjJhRkZBVEdm?=
 =?utf-8?B?UnJlbXV1dEY1WDZURGplYVg5UVBabDdWY2JCU3dqMnZ5Q3R5VnhpZ2NVaGJW?=
 =?utf-8?B?Y091ckJIcWhWVUJsWWJPdGxXaXVEenVqR0hWNjZXMjErTUExbnlTSFByNGRS?=
 =?utf-8?B?eENseFVWMXJDK21JcUo1SHVzNkQ3cElPNHJTbnAvRnpLZUZyVmJBSFlhMGlR?=
 =?utf-8?B?TGRRUjY5TmtzQ0MyWE5XZHBIRE4zNjZBN3FtN1NaK0lRanB3U0o5VFFqUmhu?=
 =?utf-8?B?MDU2d0ZvWkpHQXZjMUozeWVEU0VIR0krWDhlM253U3RYVUYzbkxwUTlYT1ht?=
 =?utf-8?B?ZDdJOTBwbGpKZmZpVkIwTEhKY20vQ0NWa0FPN0FSek9NQ05iR2tCQU4xd3Qv?=
 =?utf-8?B?Tlh0a3ByS1ZpSTZaVm4ybzVUbnVQbVVMdVZkVG1vZU01SllXVGpOViszcVQ5?=
 =?utf-8?B?b2wrRjN3dnpxMWVCeVdMWE5sSmpEYUdjMjE4Rkp4YkFCMVBKNGxET3BNMEN6?=
 =?utf-8?B?WDdDM29pcTZkNzgrQjFjd0RGam5yTUJBU3BoQUlJUmN2ZE1nYVVaTWNLdXps?=
 =?utf-8?B?eXBZZGFiNUgvQ0NvUy9DSWtBOWljOHE1cUVYWDZFVWlaYlpKWHF2cUpvUGo3?=
 =?utf-8?B?Q09ZcWxYNE5BelpjYUFkMUhOYjZiaHBjSGoxQjVGalROSHhQVlpiK2FRby84?=
 =?utf-8?B?MzI0cXVEbUJ0Z203VGhqM2U5ekJUWlkvejZwUVNJaTNWOUZHb0VmcXJpSzAy?=
 =?utf-8?B?cmVYZ0dEYUtsdlhXY0ltUUd1bFlrdTBwSWN1UER6RmszRWhuY0ZSOTRCL2hu?=
 =?utf-8?B?OC9JNXp3Y1FRbktOUnVlb3RjVEl0c3NTZ1JRVXBLWUdQeEMvUjBXOXRSMi9z?=
 =?utf-8?B?YkZZZkUxSW1vNGtPZFVPL3VaSXBFc1Yvcmk5c0NiMWVYMG8vQ2ZEby9PTzM2?=
 =?utf-8?B?YkNIallmNzdSUE9iNC82K2xlOFhFVlRMMDNWSzZpWnFFdXV1emM3RHJuelBH?=
 =?utf-8?B?Z2V2QWVSeGh4MUd1RXMzWTNZRzdETDhJM0c2Y3p4SzVIUThha1FtWDRPbjg1?=
 =?utf-8?B?ampsZ25RZVhOMzluL1k1ZnlKaisyR21TMmE5b3dpZjRhMUthS2VtSDZHbGFV?=
 =?utf-8?B?TWE1akNOWTRwZHZxWUtvSDVNNFZFek1jMEk2Z1NEb2xKMmFDN0lzdER5dnNI?=
 =?utf-8?B?dE9tZFF6L2Rad1NJR25iY0dLd3diTjVvTWVURWlVU1RvYm8wL1pZdz09?=
X-Exchange-RoutingPolicyChecked: VEPcA4Susj3zTSYKtl3+68Y0LI28R0RJHxfgLUTQGnYXgpo429xwtg6o++wQFloNb20uW8QkhA5iHhdpWWG0gPWgIjmYtNEeP0WIVj9Z1OW+BaSEpEHFOmCU/11mFm0/1H9H4MwMraH/ow5yjIgRyjg6qWdlImsv9T6+FklmXJMKZOFW1b59HM1Ts79k4luS6mvsDv5zNsb0RVo/ugbTxvIgkSrLDbXfMwzQqaNAObpmIT/p7Ci5T25SXY4SooPWzYrsNKCi0QirODz/WHzFcv955UsJ/WDteiX1G4fq51GA002DP3UKJFo7159zvGK2jIb1/du1gfi+dAOYuG/Y9Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 97755151-8eb0-4607-1a8b-08debbfe9a9e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2026 14:45:32.9437 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cOHhH3DRz6hFgWNJiAvXDip/aWv3XpLci3re5BYDIX62YJD6d3gn+ywaCOQXf062aBivJdCoAoZ1fS2ZIWLJuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7919
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1D0335E622E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The PF GGTT allocator was initialised over a relative [0, usable_size)
range, with ggtt->start added on every address conversion to get the
actual hardware address.  Two consequences of that model were considered
"horrible hacks":

  - ggtt->start (the WOPCM offset) had to be carried around and added
    to every drm_mm result.
  - The GUC_GGTT_TOP ceiling silently truncated the GGTT range instead
    of being made explicit, leaving PTEs in [GUC_GGTT_TOP, total_size)
    untouched during the initial clear.

Fix this for the PF case by initialising drm_mm over the full hardware
GGTT range [0, total_size) and permanently reserving the two forbidden
zones:

  - [0, wopcm)           — inaccessible below WOPCM
  - [GUC_GGTT_TOP, total_size) — inaccessible above GUC_GGTT_TOP

A new mm_offset field (zero for PF) carries the base offset used in
address conversions, unifying the existing VF relative model (where
mm_offset == vf_base) with the new PF absolute model.  The public
xe_ggtt_start() / xe_ggtt_size() API continues to return the usable
[wopcm, GUC_GGTT_TOP) boundaries, so callers such as the SR-IOV PF
config code are unaffected.

xe_ggtt_shift_nodes() now updates both ggtt->start and ggtt->mm_offset
so the VF recovery path remains a single O(1) WRITE_ONCE pair.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Assisted-by: GitHub-Copilot:claude-sonnet-4.6
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_ggtt.c | 123 ++++++++++++++++++++++++++++-------
 1 file changed, 101 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
index a351c578b170..00a6cd2b8a51 100644
--- a/drivers/gpu/drm/xe/xe_ggtt.c
+++ b/drivers/gpu/drm/xe/xe_ggtt.c
@@ -137,6 +137,17 @@ struct xe_ggtt {
 	const struct xe_ggtt_pt_ops *pt_ops;
 	/** @mm: The memory manager used to manage individual GGTT allocations */
 	struct drm_mm mm;
+	/**
+	 * @mm_offset: base offset added to drm_mm node addresses to obtain hardware
+	 * GGTT addresses. For PF this is 0 (drm_mm uses absolute hardware addresses).
+	 * For VF this equals @start (drm_mm uses relative addresses from VF base).
+	 * Updated atomically by xe_ggtt_shift_nodes() during VF recovery.
+	 */
+	u64 mm_offset;
+	/** @reserved_bottom: permanently reserved [0, WOPCM) drm_mm node for PF */
+	struct drm_mm_node reserved_bottom;
+	/** @reserved_top: permanently reserved [GUC_GGTT_TOP, total) drm_mm node for PF */
+	struct drm_mm_node reserved_top;
 	/** @access_count: counts GGTT writes */
 	unsigned int access_count;
 	/** @wq: Dedicated unordered work queue to process node removals */
@@ -318,6 +329,10 @@ static void ggtt_fini_early(struct drm_device *drm, void *arg)
 {
 	struct xe_ggtt *ggtt = arg;
 
+	if (drm_mm_node_allocated(&ggtt->reserved_top))
+		drm_mm_remove_node(&ggtt->reserved_top);
+	if (drm_mm_node_allocated(&ggtt->reserved_bottom))
+		drm_mm_remove_node(&ggtt->reserved_bottom);
 	destroy_workqueue(ggtt->wq);
 	drm_mm_takedown(&ggtt->mm);
 }
@@ -354,16 +369,66 @@ static const struct xe_ggtt_pt_ops xelpg_pt_wa_ops = {
 	.ggtt_get_pte = xe_ggtt_get_pte,
 };
 
-static void __xe_ggtt_init_early(struct xe_ggtt *ggtt, u64 start, u64 size)
+/*
+ * __xe_ggtt_init_early - Generic drm_mm initialisation for both PF and VF.
+ *
+ * @start and @size define the usable GGTT range exposed through the public API.
+ * @mm_offset is added to every drm_mm node address to obtain the hardware
+ * address (0 for PF where the drm_mm spans real addresses; @start for VF).
+ * @mm_size is the total span passed to drm_mm_init() (equals @size for VF;
+ * equals the full hardware GGTT size for PF).
+ */
+static void __xe_ggtt_init_early(struct xe_ggtt *ggtt, u64 start, u64 size,
+				 u64 mm_offset, u64 mm_size)
 {
 	ggtt->start = start;
 	ggtt->size = size;
-	drm_mm_init(&ggtt->mm, 0, size);
+	ggtt->mm_offset = mm_offset;
+	drm_mm_init(&ggtt->mm, 0, mm_size);
+}
+
+/*
+ * __xe_ggtt_reserve_pf_nodes - Permanently reserve the forbidden GGTT zones.
+ *
+ * Must be called after __xe_ggtt_init_early() for the PF case.  Reserves
+ * [0, @wopcm) and [@guc_top, @total_size) so the allocator never hands them
+ * out.  On failure the drm_mm is torn down and the error is returned.
+ */
+static int __xe_ggtt_reserve_pf_nodes(struct xe_ggtt *ggtt, u64 wopcm,
+				      u64 guc_top, u64 total_size)
+{
+	int err;
+
+	/* Reserve [0, wopcm) — GuC cannot access below WOPCM */
+	if (wopcm > 0) {
+		ggtt->reserved_bottom.start = 0;
+		ggtt->reserved_bottom.size = wopcm;
+		err = drm_mm_reserve_node(&ggtt->mm, &ggtt->reserved_bottom);
+		if (WARN_ON(err))
+			goto err_takedown;
+	}
+
+	/* Reserve [guc_top, total_size) — GuC cannot access above GUC_GGTT_TOP */
+	if (guc_top < total_size) {
+		ggtt->reserved_top.start = guc_top;
+		ggtt->reserved_top.size = total_size - guc_top;
+		err = drm_mm_reserve_node(&ggtt->mm, &ggtt->reserved_top);
+		if (WARN_ON(err))
+			goto err_remove_bottom;
+	}
+
+	return 0;
+
+err_remove_bottom:
+	drm_mm_remove_node(&ggtt->reserved_bottom);
+err_takedown:
+	drm_mm_takedown(&ggtt->mm);
+	return err;
 }
 
 int xe_ggtt_init_kunit(struct xe_ggtt *ggtt, u32 start, u32 size)
 {
-	__xe_ggtt_init_early(ggtt, start, size);
+	__xe_ggtt_init_early(ggtt, start, size, start, size);
 	return 0;
 }
 EXPORT_SYMBOL_IF_KUNIT(xe_ggtt_init_kunit);
@@ -405,8 +470,13 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
 			xe_tile_err(ggtt->tile, "Hardware reported no preallocated GSM\n");
 			return -ENOMEM;
 		}
+		/*
+		 * For PF, ggtt_size holds the full hardware GGTT size. The
+		 * WOPCM and GUC_GGTT_TOP limits are enforced via permanently
+		 * reserved drm_mm nodes rather than by capping the range.
+		 */
 		ggtt_start = wopcm;
-		ggtt_size = (gsm_size / 8) * (u64)XE_PAGE_SIZE - ggtt_start;
+		ggtt_size = (gsm_size / 8) * (u64)XE_PAGE_SIZE;
 	} else {
 		ggtt_start = xe_tile_sriov_vf_ggtt_base(ggtt->tile);
 		ggtt_size = xe_tile_sriov_vf_ggtt(ggtt->tile);
@@ -423,9 +493,6 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
 	if (IS_DGFX(xe) && xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K)
 		ggtt->flags |= XE_GGTT_FLAGS_64K;
 
-	if (ggtt_size + ggtt_start > GUC_GGTT_TOP)
-		ggtt_size = GUC_GGTT_TOP - ggtt_start;
-
 	if (GRAPHICS_VERx100(xe) >= 1270)
 		ggtt->pt_ops =
 			(ggtt->tile->media_gt && XE_GT_WA(ggtt->tile->media_gt, 22019338487)) ||
@@ -438,7 +505,19 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
 	if (!ggtt->wq)
 		return -ENOMEM;
 
-	__xe_ggtt_init_early(ggtt, ggtt_start, ggtt_size);
+	if (!IS_SRIOV_VF(xe)) {
+		__xe_ggtt_init_early(ggtt, ggtt_start, GUC_GGTT_TOP - ggtt_start,
+				     0, ggtt_size);
+		err = __xe_ggtt_reserve_pf_nodes(ggtt, ggtt_start, GUC_GGTT_TOP,
+						 ggtt_size);
+		if (err) {
+			destroy_workqueue(ggtt->wq);
+			return err;
+		}
+	} else {
+		__xe_ggtt_init_early(ggtt, ggtt_start, ggtt_size,
+				     ggtt_start, ggtt_size);
+	}
 
 	err = drmm_add_action_or_reset(&xe->drm, ggtt_fini_early, ggtt);
 	if (err)
@@ -459,7 +538,7 @@ static void xe_ggtt_initial_clear(struct xe_ggtt *ggtt)
 	/* Display may have allocated inside ggtt, so be careful with clearing here */
 	mutex_lock(&ggtt->lock);
 	drm_mm_for_each_hole(hole, &ggtt->mm, start, end)
-		xe_ggtt_clear(ggtt, ggtt->start + start, end - start);
+		xe_ggtt_clear(ggtt, ggtt->mm_offset + start, end - start);
 
 	xe_ggtt_invalidate(ggtt);
 	mutex_unlock(&ggtt->lock);
@@ -613,6 +692,7 @@ void xe_ggtt_shift_nodes(struct xe_ggtt *ggtt, u64 new_start)
 
 	/* pairs with READ_ONCE in xe_ggtt_node_addr() */
 	WRITE_ONCE(ggtt->start, new_start);
+	WRITE_ONCE(ggtt->mm_offset, new_start);
 }
 
 static int xe_ggtt_insert_node_locked(struct xe_ggtt_node *node,
@@ -815,20 +895,19 @@ static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggtt, struct xe_bo *bo,
 
 	mutex_lock(&ggtt->lock);
 	/*
-	 * When inheriting the initial framebuffer, the framebuffer is
-	 * physically located at VRAM address 0, and usually at GGTT address 0 too.
-	 *
-	 * The display code will ask for a GGTT allocation between end of BO and
-	 * remainder of GGTT, unaware that the start is reserved by WOPCM.
+	 * Convert caller-supplied hardware GGTT addresses to drm_mm-relative
+	 * coordinates. For PF mm_offset is 0 so this is a no-op; callers pass
+	 * real addresses and the reserved_bottom/top nodes prevent allocations
+	 * in the forbidden regions. For VF, mm_offset equals the VF base so
+	 * we convert to relative drm_mm space.
 	 */
-	if (start >= ggtt->start)
-		start -= ggtt->start;
+	if (start >= ggtt->mm_offset)
+		start -= ggtt->mm_offset;
 	else
 		start = 0;
 
-	/* Should never happen, but since we handle start, fail graciously for end */
-	if (end >= ggtt->start)
-		end -= ggtt->start;
+	if (end >= ggtt->mm_offset)
+		end -= ggtt->mm_offset;
 	else
 		end = 0;
 
@@ -923,7 +1002,7 @@ u64 xe_ggtt_largest_hole(struct xe_ggtt *ggtt, u64 alignment, u64 *spare)
 
 	mutex_lock(&ggtt->lock);
 	drm_mm_for_each_hole(entry, mm, hole_start, hole_end) {
-		hole_start = max(hole_start, ggtt->start);
+		hole_start = max(hole_start, ggtt->mm_offset);
 		hole_start = ALIGN(hole_start, alignment);
 		hole_end = ALIGN_DOWN(hole_end, alignment);
 		if (hole_start >= hole_end)
@@ -1098,7 +1177,7 @@ u64 xe_ggtt_print_holes(struct xe_ggtt *ggtt, u64 alignment, struct drm_printer
 
 	mutex_lock(&ggtt->lock);
 	drm_mm_for_each_hole(entry, mm, hole_start, hole_end) {
-		hole_start = max(hole_start, ggtt->start);
+		hole_start = max(hole_start, ggtt->mm_offset);
 		hole_start = ALIGN(hole_start, alignment);
 		hole_end = ALIGN_DOWN(hole_end, alignment);
 		if (hole_start >= hole_end)
@@ -1152,7 +1231,7 @@ u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset)
 u64 xe_ggtt_node_addr(const struct xe_ggtt_node *node)
 {
 	/* pairs with WRITE_ONCE in xe_ggtt_shift_nodes() */
-	return node->base.start + READ_ONCE(node->ggtt->start);
+	return node->base.start + READ_ONCE(node->ggtt->mm_offset);
 }
 
 /**
-- 
2.54.0

