Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBPiN+B+EGptYQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 18:05:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEBF5B7579
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 18:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1564910F6A5;
	Fri, 22 May 2026 16:05:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IOsrkuoQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD0910F699;
 Fri, 22 May 2026 16:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779465948; x=1811001948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=gDtqiwaZWMRrezPygBB0cN3X0ccOXnUmCLh0GieYY0Y=;
 b=IOsrkuoQ4SpJPL3B1tTyzqR8/mFlFdQQ+WbF23gdJnwtLUloTlRtzjsI
 6EUcBux35zhlxPnkEgbMDtJlrhtn5AhopvjGi02+lWiAWWTxdpYyOYA5e
 NsgluQKF80l5m9d7Q9fGiBvpUbKMAyNjdWSYTHwpbpCIV14feq8Bjq6fJ
 ka4Ir+D+Xdn0uOkvNDZ7hC1qSdLBP5mZY1/tJBdUypemZvjdX3hEM31ya
 orN4/OVQn8ot8Xrt4YJ2W8cT3JEqz7BhZW6rGv+9nLmp0Zeq3/XcDgGtJ
 td1j9abRgevGVNIKpKeODnNLqKj0HEgKAI1c1z61UhjfbXYm4P5SH1Fvp A==;
X-CSE-ConnectionGUID: 8KjHMGQdR3Kbv6z1kUu9uw==
X-CSE-MsgGUID: CHd8tFkpRBuCB2P2EJrU8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="79547855"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="79547855"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 09:05:47 -0700
X-CSE-ConnectionGUID: kXGjccgKRgCsCQgHWSm1DQ==
X-CSE-MsgGUID: vP0wuSanR8KXHbe0PG5sMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="264491730"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 09:05:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 09:05:46 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 09:05:46 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 09:05:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ia39lPlmR+GS1wMLImc9hF+LcQFyyfJCye0vBo0iV21TUdXcSiLNJ7pCSXMl0BaoRFFjnr1Mi85zC1WHkyi18d0ZK87jdQ0dGpNXJNvu6k7PQfYzVfetajMvExb/X7YdA7PhreUYgn8jOxO7T5t5R6M072TA3+Abae1LGOWEj8ashpXGjjL2FFn7g7v/FJW5ty9eOt0sITfSfLNnK6vDEEpMUdKKy94urtiVw7t+9TBlfWNxaXGl7kKorGzpsp7K9uAbDZ6vTQTwFUGRCFpVtX6UltafZ0Ug31CYWi1uqgi/fuK6ybfBgGCgLIohcjlqk/IlGmauvYyQ9DirWGIkjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cHFEecFjShv41pb5YiPi2E/DUaJz5mRJO46OJhbjiyo=;
 b=g+13bUa1SaH8/u3kldIaCCcb+3B7M80PJ34NN2336DLDAa98mLRkYKv8mXzJwGZYA2+MZ9NYybkzY1EuFhuaRiNY/KXmc2Zb5Kl2H8/0sYqEly0u31gPGhhU+6EqK7BtSUfT01UPDjHRTrfMTrgNa0yDDK4ZdWOX6yFC2XlAAcLBjTloBmryX419EU3fhbmZs6jYtupZPzvNNdpH1tmA6xZTwAaB13e0ajk8uKnNNj60szTToaeXOns0VGLQt+QL8juXH19WVuuOJ9kRLPZ5GL2PogZCkSa5QeLgZnMbShr1qaBr4YppiLb52Qt/vjiyTl9w43yPz0uOOW4YmKd1Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH3PR11MB8415.namprd11.prod.outlook.com (2603:10b6:610:17b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 16:05:42 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Fri, 22 May 2026
 16:05:42 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/4] drm/i915/dp: Cache max common lane count
Date: Fri, 22 May 2026 19:05:13 +0300
Message-ID: <20260522160514.2628249-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260522160514.2628249-1-imre.deak@intel.com>
References: <20260522160514.2628249-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F70D.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::38e) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH3PR11MB8415:EE_
X-MS-Office365-Filtering-Correlation-Id: abadba41-ea61-49d0-b243-08deb81bf93d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003|11063799006|3023799007|6133799003;
X-Microsoft-Antispam-Message-Info: QwpDkSMWjU5E4Sk16WjOlGNefMUCWZI6FiqW/357Pa+1nZKelbTDuhW/dAv+dxbW3rJl1nqKnaZLHGgZXmX+VmCVkwcHAUUZxP+UyjCOmpnzIgS03og6+pllrQ2V0WMjvcCvq7QpgI8awlC4HASS5Dvaa3azIGrVNalSs9mwvXM9X+qhphevkhbKpLKLqOjvKqTFkmrbBmT76ek/3bP6sQA8j4cFYnydzGUKSJL88I3h8eIGTpqhGdYVIOX3AJjE0qLhExftkflF5dE2IXJM+bCCBAxNIsDEBpTH7qz6ERgJ6jfZaoaBLZabwzjmEkPpJIyW14V4bQ+A0itLG0gE/17hnqU4Ntep4pi60mHDrhUnBF3NsXYZQaqwm2hRbxIEcVOjXx5c78Pn+lXgm8I9AV1BbVCtiklR1dKiLF+1DKPcEpIu0+7okU3nGJgMs4jLkVfxodZtfU9zyvCyJMtBldDLCJEdTmMieuRZlc/QQbb8eFywMyGA3TDcGEE8kDoxfgPBelccJ/3Dge4ikQ4cUvX7pZX3o9yWIL/IDTt/xFCj4GFalX7yf/Ef6vJqli0smzzwpYexXKBTN4eIshYmecVklT+MWgPRoy6rYzoWRg5VFo9MSeSmRW+pl/NzM8IP2mSvtw1fnHN0vp6+eUAPuKcG8yMEZGZoG25Qd18Y7CSExZiX0ra0xdPc2p14AB3q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003)(11063799006)(3023799007)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFRwNU05Kzl6dDJrdnFmcDJjeXRCYnZ5VjBvbVJVelRCL1RkTks5YkY3WDhY?=
 =?utf-8?B?R1UwQ1UwY3UyeDZhWXpPK05MN0NxQm9Qc0RNaTgwcVZOUzhYeWxrY2xtQjhF?=
 =?utf-8?B?ZityRmxhL0o2K2xGam9lNFJOM2h6SFNPSVpSQkttL0xtVi83ZVVud0FzY1lT?=
 =?utf-8?B?bkJYSzJkZ1BZY2pKVENpVlVxN3lIb1ZySFhTbTQxRG50bTFad0JxV1VHTVFG?=
 =?utf-8?B?V01qV0hIajBMRXF0UVVmdUhxOFlEOVRMMXlKT3F1VWMwVEYxcXNXbU94UFJB?=
 =?utf-8?B?dWM1QXVaQXlaRURQRVVpbTJNM3VKS0xab3Vwb3FQcVY5M2dCa1E1T25TSXp3?=
 =?utf-8?B?MWF2VEZtOVF1K1RUdlFua2Y2N3JXVExBV1liVkZvekVCY0d6LzBEUVJOeDV3?=
 =?utf-8?B?dzlqV2IxZGpTRHNMaFhvUk9Pc0xzRGxJRzRJeEt4VCtzQkFjVVFCWWYxY3FT?=
 =?utf-8?B?R3dNeEpLTGtrSjBvV3FNVGcwclBIZGw5a2ViVUVXUE1wOEk1REx4UmsreFJo?=
 =?utf-8?B?cUFOQ3orR25LcVE3RTdwRzZaWHBUS3ZYVG5uZTYwS25iYVY2R3J4eDhhN3FB?=
 =?utf-8?B?RC9oeUpmb2l1d2ZQSzlPK1A4cDdEN0xRc2Q1ejA5QkxYd3B6Y2dhYXFKWUxh?=
 =?utf-8?B?REtnamNaNzMxWXlPQ3AwaDg4a09US01zQWp4Z1RjVWZxN0ppTlFjeUI5V0VX?=
 =?utf-8?B?RFRMNDB2QzJzS2ExWFBhQi9MTWZlWkNrc2lIS2FSSjl1ZURjYWVJQ1g3eUhQ?=
 =?utf-8?B?ZGhGZE5tYlJHTW1CWEtPMTlON1o3alpGeFozV3dxQzd4czRZU2tBTk5mNXlz?=
 =?utf-8?B?QVpObEdOaUZMMy93VUVhS2liVnpjOEdqejAwZFp4djVVOUZRWlZJVEU4QUJJ?=
 =?utf-8?B?WktLSi9MUjI0M3Y1ZytFR2xpcEc5UTdjaG4wVENHS1pJVTRxNTZZMi9TbGJU?=
 =?utf-8?B?YzdPMVYzd1hhUTNyZHk1OXJlMFIrL09TNktYRkdMUUtneUVqMDlpNVY4ODBj?=
 =?utf-8?B?c3dTcnYrTWZldVFQWWZpTHJ5cUloOHNqeUIxSjU1Y3MzVTJDaTdSQk92KzFh?=
 =?utf-8?B?NHlVVG81dmRRb3pJeDg0dGNKemhPMjhqN1IzZ0xJL0M2QWZ2Y1QrTS83cFZ5?=
 =?utf-8?B?TmxoRy92Q3Brd1RtSEhDMmVCWlpnRmpYMXllcGdRUW5mV3h4cjk1dnRzbVEw?=
 =?utf-8?B?cVN1SklKNW41SHNhbDdWTmJlcS8wM3hrbzRwcTlDR1NFK2tUOTdsY21sSHEx?=
 =?utf-8?B?YzR1NXVmdmZoalN0cDNZd1Y1d2J4blU3dTU5TGhmcVJBNWkwWW5vTDhSVXQ4?=
 =?utf-8?B?VW5US0hMU3JzYk9xWGJDeDltOW1mUEhKdG1wbnJ3ZDZZK251U2dTNXEwY1ky?=
 =?utf-8?B?YU4rUVhuSlNPOFpFL1lvS0UyYXNBMEJab3M5SC9hN05jVE1UWm1JbUVtTFYv?=
 =?utf-8?B?M0hTQkxkNjBrd2tXblV6dGdjK3kyVEJQYmZVMkNmY3BQeWdmNVJkU01TL25W?=
 =?utf-8?B?SDRGNlJXaGJ4SzBpZFJMWjl5SWdQSWRCc3NuUzdyZDZySmNvK1hzT3ZTdmJU?=
 =?utf-8?B?bGFJRkhQRzJwOUpxc0xvODVBWXFFNEhYVURqY0NSYkxuMVlpS28xbkwyV1oz?=
 =?utf-8?B?Qm9hRllGSUdTbG1FeDVLVUNabnl1VWxSQlNicGpYcVoxU0VPelRqUE45dlo3?=
 =?utf-8?B?MDdWNmJoWEdHa3VZYmpOaDB5V0YyeVU4RWg0SzJ1dnJGdmlwUEFmajBKV1dw?=
 =?utf-8?B?Q0licExBOEpISU1wQ09aSWFUU0VuNkgvdVloYkl4K2FhYVFQN2FGQXJSaHVv?=
 =?utf-8?B?a3JrNG5jcmkvNDNaRmZ1NDBINHBOdzNVdmtvTEx3U1NDUFA1OXBLTWF4blNQ?=
 =?utf-8?B?cUg1UGlzS0VsWkVJUk51aG1XQkcycnpMMHYwUWVkbzJSTFFvYktlUGM5cDVt?=
 =?utf-8?B?OVRuVm9aMlh3ZFI1QytwWFl3RTRDVUZaUWl3eTBBNFcxYVRBU002a3JGczJI?=
 =?utf-8?B?dFY4QjJEZDVwNE05S3BRRWM1VHRCb1BwaURqenFtdVhwbHNlTWpFMFFSaVl0?=
 =?utf-8?B?YnRCMjhscWdONk53cmNEbnhmUitNcVdHTG9zclM1RktyaVBqbm5ZZ05XdHBK?=
 =?utf-8?B?Z1RUNjRENDB1UCtkcnJtUjVsRWVpTitmTEMyZjdObHp1ejlPaEpyQTNNYStY?=
 =?utf-8?B?UEtlZjFGY1V0dlhjK2xBNmJ6bnRwRktmc2MvMXludjhOa3Q2SU1PakFKenQ3?=
 =?utf-8?B?T2pwY0hJM01kTDJGSURkTGdvallQSUFvd2VvNllhUmJjQ0lZemdMb3pNcVdU?=
 =?utf-8?B?alBwNEFGdWI0SDJrSUdFQWZTSGM4YjZIb0gwblpxbU03VzJkSUREZz09?=
X-Exchange-RoutingPolicyChecked: nNUel1rL0UXRuEtq7G6p7bnQdzLeYDtB+HLlrALEUgLGV+mKe2lhWIKReiypCFfO/kmtO44XoNQB/EQuX4MPIUXPBj4X+K66msXLfrahnbtlpifMB6RQBQO2Crfy81imAeqmsapwFP7Hy+QRQry3Tr+K0ec345N36FxGm0YPM9yw4TrIY30KI0mvZ5ShuwAg2a2/IKkXBzCJ98kPbXVeGwYg/r0fdUKU5dU5iDEgGZjp8O2Vdov8F9QAKS6WXz4K1b9/D/NOEfpj7kRp+GSDefXkd4IP6JsQxgdtIGymfJEBNF+hIQbLLn/s6rMYVcW/4HCVjl/+fFE6Vj2kyp5yfQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: abadba41-ea61-49d0-b243-08deb81bf93d
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 16:05:42.0705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2iF5eoI+Ek9x8U+usJyfseRmJDkei9tc2g+oQ5tFUyZ8b58tox5xUUd1F7AQsZWHySdU6Qx41NbeL7soNGZA7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8415
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8AEBF5B7579
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Cache the maximum common lane count together with the common link
rates.

This is safe because the cached value is updated:
- during driver probe, before the connector is registered and can be
  used for mode validation or modesetting
- during resume, before output HW state readout can query it
- during connector detection, right after updating the sink/link
  capabilities

Caching the value allows detecting max common lane count changes in
a follow-up change and keeps the tracking of max common lane count
aligned with that of common rates.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 10 ++++++++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f44be5c689aef..c3811242310c8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1820,6 +1820,7 @@ struct intel_dp {
 	/* intersection of source and sink rates */
 	int num_common_rates;
 	int common_rates[DP_MAX_SUPPORTED_RATES];
+	int max_common_lane_count;
 	struct {
 		/* TODO: move the rest of link specific fields to here */
 		bool active;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e9eee452dc36f..1a6d00852eb13 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -363,7 +363,7 @@ int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
 }
 
 /* Theoretical max between source and sink */
-int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
+static void intel_dp_set_max_common_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int source_max = intel_dp_max_source_lane_count(dig_port);
@@ -374,7 +374,12 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	if (lttpr_max)
 		sink_max = min(sink_max, lttpr_max);
 
-	return min3(source_max, sink_max, lane_max);
+	intel_dp->max_common_lane_count = min3(source_max, sink_max, lane_max);
+}
+
+int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
+{
+	return intel_dp->max_common_lane_count;
 }
 
 static int forced_lane_count(struct intel_dp *intel_dp)
@@ -810,6 +815,7 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 static void intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 {
 	intel_dp_set_common_rates(intel_dp);
+	intel_dp_set_max_common_lane_count(intel_dp);
 	intel_dp_link_config_init(intel_dp);
 }
 
-- 
2.49.1

