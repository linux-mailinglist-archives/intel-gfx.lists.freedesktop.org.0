Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fOtoHwCA6mmN0AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 22:24:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F0D45741D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 22:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065AD10F248;
	Thu, 23 Apr 2026 20:24:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="frF8QbT3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E9D10F248;
 Thu, 23 Apr 2026 20:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776975869; x=1808511869;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aBOgjxSKxsyUHzUjeCK64ehmdBv0zAnI7ABqLLhNnQg=;
 b=frF8QbT3clBsLyYN6+fQZOpwXkNq/DYHMq+KiIqIVeUAL+u5u4sYI9VF
 s/rzPZN73GwQ2nbLzE49Vy6DH3Bp1Xdh1VJbmnB7o39kvVauIRmB5ZpX1
 c6ZPxH91FgPCOtWOv3J6Qvzp9mHZIjPNu8qnEYiRdiYac0dQESqQrUkRo
 ye6DN17LbqccnAFev5QuePHJEborv4y8Hbi+RXYe9BnDjcHwTcbbiGYj+
 T9PYio/CYEHXz147cSS4B1vQUPuoZL8RCYnwrwtzxhaCYkRA0cKpuHyHR
 NagZzwY2PoN4LZxlTMD8XgilA9dNoiDx4Ko+8JOkWjwH44AzgHe/AfA+b Q==;
X-CSE-ConnectionGUID: SztryfIySUibB1PRnlTQBA==
X-CSE-MsgGUID: UvPWnA0QSt6oj2zeHm4Sug==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="89419723"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="89419723"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 13:24:28 -0700
X-CSE-ConnectionGUID: SzxMmRGVR9Otj79qK3NFdA==
X-CSE-MsgGUID: DP8nCorvTQCqdmSHiHepuw==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 13:24:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 13:24:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 23 Apr 2026 13:24:27 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.54)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 23 Apr 2026 13:24:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XwYw3ZMz0HrAx0EcjrpSvmPsIGjb43FSINp1pJ4UAISjbQ/givP5lmbugl3ALVRrbsf/yZV2sT3dZs/uLW72dtnfO0Q6DXOU2HrXu4Ytu8lv+0db0tMwdBksN5KdkAq7UQ/VD44homuzr3PLBB0L7TikNn1HuRqDWXw4z4CRwulBwqO6hc4PuvssV24MWUyeVD6UHWxO5BIG6UB1ffWegbrHeZKwl0ycSKdet9OyLnGou3L2nrMxgscVNosa4WU8Q78hJhRtBjHhmtJoT3OfqfN0xTrErSmCuqmTyMEl1SICdR4Yly5ZoB/ba7wklPH7LMdYSLx5zQBJsDCh1PZNnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hus5qTmzelwzp6JnzntHOwTTiKtj/5LBCSFnFYEYZQc=;
 b=ZfQ+iKHvlQsj32b7vWgle6ye0lkTykXnGjTY21DlEqwji980u9eR4321ssr2nqeYJw4qj5mi+guWAl2XnmLv4GtCxVZTHlzXnkKu8r/B9Pk9IP//7E17B8YPnilynRoPQ5a2SKx27C9LaUAJ8ijrjSHWQmVmoUq/OjLLZ5Oz0I3AHeoM/LCNg6k7ZtXIG6XR6B4oNO/Ay4hYrejsAJZXDE/cnsMqi8h63vhYvqfzqIvgE5N1cJ3oOQyIlXWzHrfUDKVPzxhC4EuoZ+1TbsoJDBxJGXUH7biaPcyawUkGMd5dP0EEgC/WqYPkskeTXT16WmQdhfEIhxnUGg0ejub32Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CY8PR11MB7195.namprd11.prod.outlook.com (2603:10b6:930:93::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Thu, 23 Apr
 2026 20:24:18 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9846.021; Thu, 23 Apr 2026
 20:24:18 +0000
Date: Thu, 23 Apr 2026 13:24:15 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, Jani Nikula
 <jani.nikula@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/display: enable ccs modifiers on dg2
Message-ID: <20260423202415.GE2131374@mdroper-desk1.amr.corp.intel.com>
References: <20260423141148.3145665-1-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260423141148.3145665-1-juhapekka.heikkila@gmail.com>
X-ClientProxiedBy: BYAPR01CA0055.prod.exchangelabs.com (2603:10b6:a03:94::32)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CY8PR11MB7195:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e0c9126-ec98-415b-24e1-08dea1764bc6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: QVCEo2u4n5TLvLnFRJ0PwPTnRAwSuvYC1zOJgaX69k2g5ZHmEzG0AvQPn8S8EhivA9L7UOLHwfP90pHjwkaSyjzeyVLRLjbzHE7LrrzrBSLmKSwArgVRj8+tRAZ7f8gg7uip3xni7BExAFrI36PUFCVO9FFOTpTI4pzMFLEFLBF9xJfhPnCTairwbTusJSan1TTLX+4iMkXbhczu530bbureyEXrN6J5BkPik5cYR81G1Igprg26s2nd2rbUpfTAr87BJbPvnSXsSxcXaRDvbkfjw53CwLuh7CGAU1ZS/0vm4PaLc7Bli9qC0onMoOANw8EgR4xxtJnNs/O5z0wkYbE3y6I20yLougvuY4hg+EKjeoxCthvkyIItpjgPLOOF1wEIKf0bE+5zA186JBvbMm59HAyevODNIMVg0PU3gEsWSDyEOWzt79aSs4kTVsNadVk7VzWh4uXXCzaFrycbF7G+7gqinTphurYCe0GnU1sjKbMe8vHsLpY8OxMJaJJ7gQGPGKXugiUBr+AEPZ2jRg/j1ysuL0JZeGU+WvaR9mM+7YXv1z7mYMM4kpMb/YaWqk9ONXeWFGZsyZ7jB3Je6nKwVM5BBypvZ0GVwPIlXt45cOV7O6E17WJOVvfOuYQCp8KBkurKWrkYBd2DLx4zkgJwhNgJ6pF3Br8avufROc9Ff7vUkC5vSf7rRmcyl55AjJhJKKuolIaPLXqrXnYlhM9Ms23vFiSeAC370IBM4VQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1QoniQUTEK1+zYl0683+EJPTOJ5ECH8/QDLYesPDD21S+mjQU2OOaa49s7g/?=
 =?us-ascii?Q?MKmDAyHmJXjk+13yCAFW5CbtkLy30rQ0ssa0gRdoIBwN/vGK0JaVU4NwrS+K?=
 =?us-ascii?Q?zRGDG349nduGOlSqeIkYNKCuMKx2AmzLRW8PwQECO8antTXXHfbOLT7zz2Yj?=
 =?us-ascii?Q?U3BgrMEWXMQgngkiRZpWNJpHIMRVZeQWYLMfNXUMCmdZ8bYpXcGBpHCc10Nk?=
 =?us-ascii?Q?CRjG5uRxee6wBQvMj6rEp8F1oqQgBd2Eie1zR1aQrr6s4jPNFH/d/9vMhMo1?=
 =?us-ascii?Q?thv+8zSjJj4NZ5MzlnRqSVPKnlnvJucqoFB7SE9CR3GcBCIwW2+KH4JUQV5d?=
 =?us-ascii?Q?0xnzWkfu8kbHOEQrHI69HKk4dd6epugfR+qtr8+6HdCVi8FCcuo61JSKtHdk?=
 =?us-ascii?Q?0D1IdneuLZ1hMYD2yfJqFWG8BRTo+iO6+zbYKDQQAz/D/MvGhzYZRbybtFJr?=
 =?us-ascii?Q?DiF2x1TkMoA3PaybNan9nn8iG9060zrZTAOsx/GI2qGq5DxgBKqq/nPuBPLN?=
 =?us-ascii?Q?b27VHlkEEx/dcNhTNUK1hZqT1N2AWOX03BfelsbClfS2HQYKIZD5IVkm7woe?=
 =?us-ascii?Q?xsmB9tE62JY0N/bcIfBrW7B7tMOeJ9Pake3BYsQYJoQjMGTQtTAxeQCA7jO4?=
 =?us-ascii?Q?AUSU0KwYltdoeSpYRN276/a7Leo75XoMj1Npx0Mzp+XpDd02fAVvqSmNphHy?=
 =?us-ascii?Q?Pyy9NQFbk5WpyQSMLGmjIXqHNFilfkpreRuhb2m96pPgLkaHjftVRjNVTQW1?=
 =?us-ascii?Q?oQw5W57IKOzpCD9FIqhHZTdtpEPaBSW75SDcOpZK4FkDYDrMuyWOurQn3yzy?=
 =?us-ascii?Q?zhIFZh6AYp0cvHnk9Uw4joiWEWChtQOiW6ekFO8ppdMfEWzoJ6TdCvxPda0Q?=
 =?us-ascii?Q?maLO4V3DBTLWM4FlPHvdK6aqivYQ+OQNKePC6RImNXnMC8Er6SzYylP5mJ7E?=
 =?us-ascii?Q?uhUlCkGarcvBZnMpSLyz04UtDoh4z1K4mqkj3PxM14MqmDr9UuobTjC0f2It?=
 =?us-ascii?Q?E7nGTWV91TvOPNLSI01m0L9Gj4Kz3QD3sj1RG81Ni5GYF92aRwFV3oHftiku?=
 =?us-ascii?Q?I1yWvJ+sF83DZDriJVEnzrT3BX1iyMgSWg1hvlJm5GZBwsrMfWAK0UrqVmRp?=
 =?us-ascii?Q?1cudVBLFSHFYXNXc7rPRTIfHJ0MW8/X/TCnnwDomeBwefmngvC70pAUHfjZH?=
 =?us-ascii?Q?U1LRHp9xkuV9BtyxUm4ea6lL4SKPNEYQ6n0TK3Bhh18NtARMTlINqIy+kr2R?=
 =?us-ascii?Q?5oUTM6eYIS8JByrbcaUzNdrTXIy5CcE0zUiPG2vyzr51UDUsMIVMkBxZRQ/W?=
 =?us-ascii?Q?etgNGJUhafdXG0C/Xc5CzcHNhzJ3eQg/iw5yGMx/1HoZ1z/gYnN3DdwXLiTb?=
 =?us-ascii?Q?hTb8KCAzD6udFY7YYskC2QXGVsIykrMvZLXDZkkrYlDVEgIhfI9hzcHT5xJZ?=
 =?us-ascii?Q?DxytD/GJGL+ZAj+HOjYfS8yiONHg3vlL3SQ3El8zlor5l4iXg7qCwpr4fQO6?=
 =?us-ascii?Q?xSODWkjXBUNg4u86UglFCppggVFyMYGbNoPqwxIN6nB/HdrD562OXMXPezi2?=
 =?us-ascii?Q?3GieS7ePAuykLhJU0KwmZ/PQOOEDJzRwoi+iOSqoZmGlsHHe3c2Nq1XFJHEK?=
 =?us-ascii?Q?602vlxLKCBnHpL8PMEDdcQJ9tAZ7HHYPWAbZZzSrcDo3wG8HVI3075+srBZD?=
 =?us-ascii?Q?8/8tgWsLIWCyQxhhq5iTOUXcbDZnvMoYsnlWF8cGCJ0peXj+9dEx1EfV64aI?=
 =?us-ascii?Q?tMBMMtbI6wPggDkVDfJreS2gnXXZLdc=3D?=
X-Exchange-RoutingPolicyChecked: oMnSWBUb9GpmqlD7CDakOB+4nsoQKgprcRsZ9s462gf8/GNfcQEKXP+beMAA5nID2r5JrIcBGv+ihEneq1hDRFvwFlN2cV0uCZ06RYG89BB/4FnNBIT27nAIBuZLHFITWm/44rePTj3cTXyMs9Qm66MpcSM3UeBD13q8O6DFDfQSA2tpBtvJS/pLFqO6IPgvJ058/u7NFsRMErPNiKoKaiL9RUdT9HemEfGshAr8ue5TaBs7ggXUDaLOppO+OXXU+fFcc75nuzQ4B67L1hwwRUd8uLejqkfzmh43nTfpgFL3ACvrueI839ZsVye6Pa0D9nPRPyENcFaDl3GwmtMvBQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e0c9126-ec98-415b-24e1-08dea1764bc6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2026 20:24:18.4952 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UFmeElSB4J3eYQxTSPuo9t0ZaXI2NtMZj52QYXtL7jFq6ECY8JlLQVBQdZhDm4ay3Bqq9fZ8YnkvfsbO9kByZ/Jjy8UmnM5yQPOTMKPQTuo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7195
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D3F0D45741D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 23, 2026 at 05:11:48PM +0300, Juha-Pekka Heikkila wrote:
> Since Xe driver aux ccs enablement dg2 ccs modifiers have been
> disabled on both Xe and i915 drivers. Here allow dg2 to use
> ccs again for framebuffers.
> 
> Fixes: 6a99e91a6ca8fec5882450128fb128265f86b32a ("drm/i915/display: Detect AuxCCS support via display parent interface")
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index d31819758f3d..a4bd4f8e18b2 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -750,9 +750,8 @@ static bool has_auxccs(struct drm_device *drm)
>  {
>  	struct drm_i915_private *i915 = to_i915(drm);
>  
> -	return IS_GRAPHICS_VER(i915, 9, 12) ||

The commit message doesn't seem super clear to me.  But it looks like
the bug here was that graphics version got confused with display
version.  We have display version 13 on DG2/ADL-P and version 14 on MTL,
but all of those platforms still have a graphics version of 12.xx.  The
ADL-P and MTL cases are harmless since those platforms were already
included in the condition, but inclusion of DG2 here causes incorrect
expectations about aux vs flat CCS.

I think a few years ago we were trying to avoid assuming that !aux_ccs
implies flat_ccs and vice versa at various places in the driver because
at the time we supported PVC which had neither type of compression.  But
PVC is gone from i915 at this point, so I don't think we need to worry
about that anymore.


Matt

> -	       IS_ALDERLAKE_P(i915) ||
> -	       IS_METEORLAKE(i915);
> +	return IS_GRAPHICS_VER(i915, 9, 12) &&
> +		!HAS_FLAT_CCS(i915);
>  }
>  
>  static bool has_fenced_regions(struct drm_device *drm)
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
