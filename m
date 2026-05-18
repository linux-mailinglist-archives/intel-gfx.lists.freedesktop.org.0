Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PwmIAX3CmpZ+QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:24:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B847456B7B8
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE86710E324;
	Mon, 18 May 2026 11:24:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YMu1sx5d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE48610E078;
 Mon, 18 May 2026 11:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779103490; x=1810639490;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=7+/Fps0ljCNUoe+XVmkSzyMLwK35SLTJS/M/JR1pFsg=;
 b=YMu1sx5dwFKRPyXvI8rVElKHTt64ek8an0qN2YQPB15gWnnXECfi87Tv
 r7PddzY2KDraT392URz9/N2vT/KHFY2CSJ84GOunhkIAjVaOMBTL2MweV
 pX64elwPLhlKX7aU0dIBhczQA2q+ZMfNUqfq56/xz08Qx0RvH8sOy+Buz
 ysBBAAIZjHxFkDTzexlLSGZp+chgTYi0MdOwruTIa7akaPzVvN13AQV06
 crgkk9ESPLFNRolSr7Td7MLVjMdKvBbuOnRv1eqhCghPZlegkdVKlu1fN
 hWJdk0M/T4EFbM+gzmlvpqDr4BnE5c6bwA2ijc0H3ZLPF4oc1mx8+4yI6 Q==;
X-CSE-ConnectionGUID: mwsyY+fJRnqY3MjgI8VcPg==
X-CSE-MsgGUID: Ae5mQeZjSwWRD13wWAeFQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="67481826"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="67481826"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:24:49 -0700
X-CSE-ConnectionGUID: WPeWWVxgT+aRraWcY3NPgw==
X-CSE-MsgGUID: oZFVBqRASbSEXLDNJvuD+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="269739357"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:24:50 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 04:24:49 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C48vBqOmuXLJNz4XWhOOHmQYJfOVs7ocEbikmownlzXaPkHjRVJQu+OlxDYaUT5QqBQuOX5JSMevi7gCImJzQq8W4qrtod8HjksrMIxbO2VAOPxP9w+IZL3DVHvnf6SnuQqCebKkf9Ru5Mrm0WqcjkKiVaJFisybBIgGxJPIwzrjO/tf4PGRRfjT6qowfdDOZp+LSBmEdi5OsQwKzLT/eZEPl4x+QkQe/dirkdiVQ7tf1XjEPvpY8GOITb063wr3A218xE9Bn0xcYdnTiJT5R7PcAW+Z5XpZOMlyfp+FCL9Twgn0ctM/lkztEKeWtBEvbz+15ZJ2erAtX7Sy4mdA/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XJLAN1GIJ8bUc94mCHMd9U0uNFq1z1lVqGAqSuTZstk=;
 b=UMcnUUvz0IdRrsv/G+chs5fIyS/9hyYkS7qkX7b+T4Pho9YJuG5wzJo4FgdylTV/2qL/r+LNTMUazvz1gszeIL/qzC3BXYavTJl8F4KYBb+Nj1UTn15cKYaU9y7WQJ4yOv8nxNz7QyDubuUkkq3sGK4SZV1WQdrFQAH5tcySWs7pvGBJX2258UjfaDSC06wfRMgwpvDGc4EduAAGOJVlCl4KkRxcC4yI8RXtV+r552ChL0C7LpYG5z8RoXOFTKJfJxt77077mrHgr9eAG7uNzKMqRm+/PQXIIKLjolk/pmJZPDsCFTwSjnGyYEBmYH1TLnwcIpXdLwnqllIDHXK2IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH8PR11MB9508.namprd11.prod.outlook.com (2603:10b6:610:2bc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Mon, 18 May
 2026 11:24:45 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 11:24:45 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 0/5] drm/i915/dp: Sanitize link capability change handling
Date: Mon, 18 May 2026 14:24:21 +0300
Message-ID: <20260518112427.2460725-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GV2PEPF00023A11.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::214) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH8PR11MB9508:EE_
X-MS-Office365-Filtering-Correlation-Id: fd334419-692c-4d66-e12d-08deb4d01000
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|3023799003|11063799003;
X-Microsoft-Antispam-Message-Info: /Zz948Hue2a9wl66BypRrtwa94T6pQdLCCBmX+PBit9v/lMgfSk/Ds5t5YZBWRm/kgdp+avT3ZoJNMoHMRnkMH1zwl7BG1zacDcXf5Qod0IJkQcqt1VY6HnS1e+RXe3ZyPLAqOEiV6SoiwLkGJVGEpgOAP1Yw14FVkcVa6ckFrUEr35at/p9s2cR/7Dj+cU61SFBTqgnP8oJ3JY50fxia9aClWn1kRqHhFR4lu2qS7/6pIJ7KgvpLcy/a/YmHaE128V4cb3yMbxHaFvxLA7pzFKMpWmAePJidJMUcV64/PSPw31wEM7GhholNW5yHLD+sCFOumBO/ciEodQl5S99OzGSAyxyc1SN+fn/713pNXmrtuMEFTsKXf9K5iKOoMPxfeM9RV/1qq/weeBxUAoGfHc41BMirH0xOEEzah5767Sbyl60tJu5kPkLNQI6MagHedBlfAbX1D/TvFzzSe1tsLq6ikr5yUE1n4a9QPbfu1+dClrNOze9e5Nsl+konIXAfROTNMekuVbCxdp+i7JLumTWaj0UpVnZJmZimjheW4WUT8WEBbpfilUa2INnfqyhv0bNk/VcBDl99h0nqLFdnVyq7151ZF6v4TxgMLYp2nlgFaSvY2EXX77vTNT/WLMs1qSbBre1wmgAynQ2hTRVXWnhksUXKBQ3tiSCawNbfO9SEcl6416/mugArE91nSFiUBKMuedZlrG4a9x7glJdUA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YU9GTEhQdEZyaFpPbGRoaVpkTzJnNmZ1d3ROYWx2Z0Q0SVB3ZnBwTmVZWEoz?=
 =?utf-8?B?TGl6cVFwWGZvT2VsQ0tCTlJHNjVWUGJZbTJjMjhUQ2RSWE1xT3JkNDRvYnZQ?=
 =?utf-8?B?SUtiUE50ZkN0a1BUK1VmYUhrdFVndXpzeDA5Wi9IV0RiS0R6K2lnN3hyRDlO?=
 =?utf-8?B?dlBnSDZIT1pKclA4OENFb2ZXOWI4Z0ZzZzhuSFdOTTZWUTRSaUtvMmo2aFk2?=
 =?utf-8?B?NzFEaW5Vb2FFWVprQ2xQQTRnTVZJOURBelNCYkN5M3pBcXdqUmV2NGh0YkQ4?=
 =?utf-8?B?NW9iNDBkNndacXVtbEhaU2NjNitrelcvcVlrbUNxY2Z0MUJCQkEzMkRLY2tk?=
 =?utf-8?B?RkxZdFIvc25JWDI4a1hjZjl4V1dRTmNteGlMYUdUdzd1NURjeDVYSTE1VGgx?=
 =?utf-8?B?NVp1bEdSYi9mcEdhV2plS092OXc5dXJQN1d5bEJYUTNOM2VEWWlTOVg4VXlw?=
 =?utf-8?B?U3M3RFlkVkhaUFlaN2NEelRFTFRlM0tyVnVsdWhlejRwT0M1enJGNUtZRER5?=
 =?utf-8?B?angrMTBubm5EdUp3VVg5aFF4T2VaenpNYTVBNzVuTmFackJTYWxRQXJKQ29J?=
 =?utf-8?B?Q2J5RE5uT3BtektEZmhMdkIwYUV4RlI0ak5MeGJMWUE5K2g3RlN1eXlnZ0VE?=
 =?utf-8?B?R2htODNJUXM3eG5MSmQ0M3I5NUM4U3QzcDAzSkcyM05nSHBLUTJjb0VGdU9h?=
 =?utf-8?B?YUp0MWZob0JxMnhjQWI0SW42N05rYStkRmgrb2Nwd2J4K1RwUk1DTXNjL2xt?=
 =?utf-8?B?a041eVc4T2VjbGh6akxHVE51dlBERUNHMEVDa2tpQ2hIeVJkRHlrelMxTVFm?=
 =?utf-8?B?ZERrYWUrdWRpZVBXSURlUXVnL080S2JSVTVsbktoWGNiU2hicVFpZnJ0SGxy?=
 =?utf-8?B?NmFxaUNldmtQOURhZHdQVFFmSFFDRkJQcUJNMENadFBxZW5GTjhIVVNnQnR6?=
 =?utf-8?B?UDJYQmRNeWNiSlR0WmFlcFZ1R012RWp6WCtYWURBM0ZRZ2FpVXBhSUwzVVBZ?=
 =?utf-8?B?eDc5SkwybXlSeUoyR0JhMUtBc0l5WkpyeC91SjNFTTdXVWN5VTJJd2pZQi9G?=
 =?utf-8?B?MG1nK3pVcXZ5OHo1N2xXSnRKaytNQUhQQkJUSEdRMGVMOUNTS0Znb0hzVjZ3?=
 =?utf-8?B?ekxaWjVEV2ZJTTdlYVorODBlOU5mNkxteDZSQ3hmRUFBekNaUFoyYUVZTkNZ?=
 =?utf-8?B?aGNsU3ZoSndQTEp5MlEvT2kxcS80dVdDdmhuckpjQ2ZQYmdkS3BMV3dqVHRx?=
 =?utf-8?B?YXo2TEMybnhLT0xtRC9sVks4WEg2N2lmdVB3MWxkMy9jbFBlSkFIbksrcnha?=
 =?utf-8?B?bE9YeUlNVGJvUWpkd2hjQzBhUk9iV08xbjVhUTlKbURXWjBzNVFkOUV4YUVU?=
 =?utf-8?B?Wk5mK0tKancvZjFsdHBWRTFMSTRhU2pWeVBZenpYZzF0Tjd0NzdrVFNwQU5Z?=
 =?utf-8?B?QXV2UHVrVS9VaUFTdHM0V1FTeGZEUEE3S3BQMjlacE5ZWGZjVmVtYjRTT0NB?=
 =?utf-8?B?VXpsalY3SlhFNThscXZiTkZHTnozYXNVQjExQm03YTRreHZETDlORUh4TDF4?=
 =?utf-8?B?aFByUGJpd3RZU01XRUtHM083SE9NR2lSbWxVWnY4ckV3cDNtL085RDVSVVFI?=
 =?utf-8?B?c1Zoenp2WExCUXcyTFB6TFUzY0pIcFFDL2dLc1VkZTRqNzUwTUhTOTZsYmIw?=
 =?utf-8?B?S0NXMmQ3MHBqRGtBTmU2VkZFVXRjd29zRnltUHhtWWgwZE9QNHR3MS8xM3B2?=
 =?utf-8?B?YUYzcllrRE5LcFlYeTdMbjc1UHJMQStMWW1kZEo4ZVFMZkRBOGg3V09HWkVk?=
 =?utf-8?B?YUxCOTZ5TTcyOEdpcWt1RVlibGdsaHpLVG1weFpvSDU2c2lnSGRrcjdTOXFt?=
 =?utf-8?B?eHNUc3RHcGhRa3AyYndmeGtENklENEtKRWhCSTRsZHNOd2N0ZDJiU2pMd0JL?=
 =?utf-8?B?YjBjem5vV0hMOXhNQlgwSndVOTdzNTlpOUlPVnFUK3ZlMGlKeW1tWHNVcFQ3?=
 =?utf-8?B?NXdDbUxDMm1lbjJhRXYyVUgxQUdjQTBHZkpiR3V4SzZWU041bVIrODVRVzdy?=
 =?utf-8?B?SjFhUGlhcVFxSk1NNlh1TFN5MzAvbUQxbEROZi9DTEVWRFlpMVQzTjBncERp?=
 =?utf-8?B?WkRSeXFjMXVKVWNaTFE3ZTBjZng2NDI0ZkYxUWVWWmtKVU5DUmdKYXB5c2dp?=
 =?utf-8?B?MGMrN3RUVGYvcDZUcjBwMjJXRUFQL01JOE93ZEc5aFg1V2lsYktPUFRjVXVt?=
 =?utf-8?B?S21lQnJxdVQzT0h0QThoSllPWW1zVHhtNk9nRmtUanpleVJ3bDJIRld4dFBN?=
 =?utf-8?B?UUxOQVRxQXdJMnVDUzZoK1lCZlVJWFkzRGRSQW9jblNacmt5NU14QT09?=
X-Exchange-RoutingPolicyChecked: m+TjgHCceTCTeQx6McFlH9ags7C94s7LQvDVxVCw975TRZu/ome1AMonymhqUZQUU+O0uwDcV1hTcpiPn8lscfDvZTHn+jWWJumBt8YBZWAmzUpT/M8ddlWjWfV5rirKxwtX+2V7B/Hp2qARwtrSbCOYZxMl40DeurFFyuOkqcAacCFCTUucG1EkDBPZNpGnBR8jjoTeZ1iamIaHxgpi2bbZw5mqjRyh1tgdS/QrSGStpo6KjBZXZPbEiJaiqynL2NyLq92YKNTXl+7Sk1CelL7f0AqENblN2prMj1+YYvad8TSOZBRDPeWwrlX+92RAwpgJjOZCGSx5GNFti33k5g==
X-MS-Exchange-CrossTenant-Network-Message-Id: fd334419-692c-4d66-e12d-08deb4d01000
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 11:24:45.1918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Th21JEZYbPKVphW0+hEWQQPu6EfEgfPcgxUKGMV8RybqvWH0SubhW0dn5fG54ByT1m6lLSsG3HZbx5yGiqtXzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9508
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
X-Rspamd-Queue-Id: B847456B7B8
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Sanitize link capability change handling via long HPD pulse /
RX_CAP_CHANGED HPD IRQ events and the connector detect paths by making
all of them consistently reset the link training/recovery and MST link
probe state after a link capability change.

This also prepares for the refactoring of the DP link capability logic
in patch [1], simplifying the handling of link capability changes in
that patchset based on the above.

[1] https://lore.kernel.org/all/20260428125233.1664668-1-imre.deak@intel.com

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

Imre Deak (5):
  drm/i915/dp: Add helpers to reset link params
  drm/i915/dp: Reset link params after a DPRX capability change
  drm/i915/dp: Add helper to set common link params
  drm/i915/dp: Cache max common lane count
  drm/i915/dp: Detect changes in common link parameters

 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 103 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.h       |   3 +-
 .../drm/i915/display/intel_dp_link_training.c |   4 +-
 6 files changed, 94 insertions(+), 21 deletions(-)

-- 
2.49.1

