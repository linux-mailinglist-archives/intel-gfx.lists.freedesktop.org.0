Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id z7Z4KbE12GnhZwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 01:26:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E333D07BF
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 01:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8118110E02B;
	Thu,  9 Apr 2026 23:26:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D/9H/XEm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D610710E02B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 23:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775777197; x=1807313197;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=V8zWegymlN9QwwZEboIex61THDeNh0OLmaPiL4qFO/A=;
 b=D/9H/XEmTR4tGiBpMf6CxJuIUK1xL6SaWvhlonpyyWYTZgZqm4KVbrEG
 quBOC23NuUfjU3/tHGQUsMUWjXwgGEhzBUsOQNr32hNOviRmCkl6bktXU
 y/bHgP6i8PCvKxxuCYSH1MPDmA3qnDo9QIZt568+VwcY4FLtNQm7T401W
 vTi+mEUuxHG9PDtqojHEc+ve3nLaVz/X7z7i9UcR2PWWQ+CKE9LCtSAjR
 2D2JuutGmTKUKKtgjEVZTJq5MvHPWI/DyhLV2UaSmhxIQHGMZj+pua3sM
 3QKRgd7N+RQuoryi2rhJ5K+CW+l1OUOwngaPYCjcBRoZljqnQbvC1JA5t A==;
X-CSE-ConnectionGUID: /tZRg0LDQNmG2Efzb8QQ0A==
X-CSE-MsgGUID: lk3giem2S8iMT0MQJTRlTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="88237344"
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="88237344"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 16:26:37 -0700
X-CSE-ConnectionGUID: imoezuW/TlO5zERgObNtDQ==
X-CSE-MsgGUID: AOzVobCARPilcu6Fgx8v+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="259396671"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 16:26:37 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 16:26:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 16:26:36 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.59)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 16:26:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IDa/tIXAieyYzSoyfWWEDuGurxhJgzvjCvbnmQi8pZ6csUnFFK+ZU4MAkhCcd37VGH1biclFbHESamgobFlG9Bm7nusfoeuMK9Kdb05USDWxwbwrk6cU0C2L6gw0keM7uK5JP+n1m3M9azVsJf6UIATlFp6xhHDygX6nFQNZi3Cz/8SNKHAj/5N4MoOrp7fFXvk9WTgplCcF3RTKf2MEyJNQ/hU+f75Xpvgy7XYUsP7EITnzPkAJxCMNSy7xhb62Cu00iaYp/df5nQvPBbonbF8TwbVAYIPvjtGE5xrVLuzADJoxcilfXAfGbKECi79WgDATUU6mRrUrRaqoWgN7eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6PXbxgZAR5BIwRH5gWoy/X+PjJJPJ1dhr6ppzwEBne8=;
 b=lVfAOlcFFL+mHXJuT292MQQr72+Y5vcUEAVK93ZlPeoVaucHAlmGC9r5erd9m0I6ytxLcUch2jR8Y3hDdG+b1h8mVthq1i+XaeQTE1WtfsunhxOfQQ7ckfRs+0qPc0lVFj2DAWtuMBR4dFtM/+awcXs/Z/hwBCUt+TVOTn/fu/QYXnN2MwFQyHBGJdkQ7hV26tDVASM4aL0AgA9qhxRXXu+/c201z3t4ouLhyrvVP4XX/a8Ii3yJ94xfZrHlfVkwZLRldmVKKKeTY6Gp9OvvqOLeqzH0sWzT3Yjg+t2iFgzk47pe5irnBakn8h8fdBlT10hFgTrij7D/6Zjqvn/eFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ0PR11MB5770.namprd11.prod.outlook.com (2603:10b6:a03:421::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.20; Thu, 9 Apr
 2026 23:26:33 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9769.041; Thu, 9 Apr 2026
 23:26:32 +0000
Date: Thu, 9 Apr 2026 16:26:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/bw: Deduplicate intel_sa_info instances
Message-ID: <20260409232630.GC6301@mdroper-desk1.amr.corp.intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-2-23c53afa7db0@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-2-23c53afa7db0@intel.com>
X-ClientProxiedBy: SJ0PR03CA0094.namprd03.prod.outlook.com
 (2603:10b6:a03:333::9) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ0PR11MB5770:EE_
X-MS-Office365-Filtering-Correlation-Id: 73b619b2-edeb-4821-b132-08de968f6f63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: A+c9XhlW5KGz9yYrNDesgz9IJGNOmLBMVsAfSWr6dpdaXMe1eH04EPBUe13980hC7soxkmD2wia6IGHCosB8PDEil2Ibpc8jIljREl4aNurUITdV/WDHRzGnahyAH56qGn1Sve/gA2n77AznVXhIC8ZKXcIc3DbjLP6sc+jb+ztZcrCGBvKJaElSGjjUgPgXIehL2+eXmY+KRru76pXewtkibzt3Gan3f6jfD/rr0hWVesxU8iX+Dtbkv/jawZcPgCv2OOQJkhVFNQ/jJBIJzsa7vNGCG7BkdgrDbyZ6yc6o2nUTC/XcfzLEYG/tfA4Gcz/hPc6/eQOg+D48vAmswoF01K0BMZQsFnuafJz7+75T+aH9lTI2sfyRGwkulXiZ0h0W3c8ZR3Bik5mPLckS+vi6UvKJzp8zwZbKBZ5klSYI5hzpxe3OK4zbXPTZkqNq3Je+R+jvPVarU9xIUUB5gt0o7x7kABcIIFAyhTrrNGPNnDfe28lOm/5wTMwoxEDHchonnTKIPzpn08F5PbA+Wed1jOFGOh/y466BJdLdEry+hsagg/Q2imNlshtQ+62haHjVjuo7BBXe1CyUZ7+TrepOWcGuVEXCELYzETENXITN/isCul5vKyKb5aow6wFiDOmSW59jKBC8c1Hp+E6PHZoNlX4JGJbJ5HAw3ZwZW8rjRxXOsoQxqNn/PdZUou3djvKWe6e1xSqllsEFK0WUAhnbKi4Pte7+vfubLHH2AKs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?11Ttlk+MRrtlswVFQg8/HHpIvM1596k33Ktq9BFKECxYCG+qrUAoRAznpenQ?=
 =?us-ascii?Q?eBn5/DXk7/efkzWOZV9WEb7GS4KB3YzbESyArasMbOHYTWlNTTJ0lFopbcIs?=
 =?us-ascii?Q?O7pfuralOTkpnccr6wwrQFhqKXhLtmWWKuZDj/pCMfPQu3qjautIYy2NIUHw?=
 =?us-ascii?Q?5BJiOodMB/m7mYPtx1Hj9qC8/KDucwPReW+xEXKZryAIw4AtXcFWgh9ADFZL?=
 =?us-ascii?Q?/77Cc6Ur00/EuatS2GU9z4L93r11YbG3CpkL/rxGj5x7x3xBrm0/wv6+gvWC?=
 =?us-ascii?Q?sbBQdK06ll8yQMTBsX5taoS4hanaJGx/gxaahIaMBSD22NYuwpPT7rk9BADQ?=
 =?us-ascii?Q?dafeP4vZ3CWtOcZfucf70nGsG/OsRiaWq/DC/4vdoLnv3B6C54ELHVHtAiIE?=
 =?us-ascii?Q?opv498eFoaKK1BIrv7x3CWgcr6rMEXSgPJej9HK1uBunsEioHUsJ++k/J/KC?=
 =?us-ascii?Q?kTiIIn3HmfXtBh5+er641plnWzPb79kgB9te9ydUmckCLFL5NlCnKjTa1T1i?=
 =?us-ascii?Q?z1oc3BhKilOHufNm0Ri4ICfIvI6cBwLmyvANE41oXZaoQIvUcmwdDbEBdTu0?=
 =?us-ascii?Q?4pTtVGzvDLe0lSAnPELHMhrhTqKMCFptFkT7j3OAcTPYAmsbWhMMuHqjVSVH?=
 =?us-ascii?Q?R1uFU+M8WWnrl3LLg3JN2SbmgsGhzRIGcIamhOI13H/xxvDIz3nRHHjx0uMG?=
 =?us-ascii?Q?ByUTm3u916kLA2q0ATOJ8tpSnzATz0T9WK3/HPAqnKQb4JMaklQSqnLyTCK9?=
 =?us-ascii?Q?nM/x8x+4uxQ+da3qJ8xPXGZXyf8CG9vabk2RR3nwJUwDoCVGyiejlsC0WFoo?=
 =?us-ascii?Q?sXmAuIc5ZeEClzYT3HRVe69GwFeL0BofSYpV7BEtKMzmw+FJBk9wOqhHz7ZG?=
 =?us-ascii?Q?eiQXxjeon2qJIAb8BioQyZBBXegHnXWv1ey8GJEzxFsUvoD9Sitxbh32i3ZN?=
 =?us-ascii?Q?QLcuyPRdEhBtyp/viElZZdAZ06aFpAHidk3UYxDzviNfQid1Vx9YWyUSRfcZ?=
 =?us-ascii?Q?J4sObAV+3HkvAP4BjEnI0iO64/wmhQCpuWcCX9HCfzvJqC1pUfua7zWzB093?=
 =?us-ascii?Q?Pv7SsgeYgoAB0Wwk4V0Rr5C4vjNakPkMwoGoAMfliU03g2brJmszhHflqUvM?=
 =?us-ascii?Q?soCKVTjXpkIF/N1U0d5z6KwcNg69oZ1Bksx2IqcaGg2HuwjCWa07Tdk7Z8IY?=
 =?us-ascii?Q?XqcIsBAVNwq9h4zjxUpQp5AG1z8CsTbHubRFYEKeA5/AJj5FAN0yMs80cJiz?=
 =?us-ascii?Q?/wXh/QXyzhRjr4l18hIIyRJP/ZaYydSd7XAhLehsJmAOs8w216vPD6O8gcgB?=
 =?us-ascii?Q?0tUKvYXMOY/PQcON14yqEUmaxMVa3I90Qhg3vB1r8sVEtW2VlVSjnwMKhqK4?=
 =?us-ascii?Q?UYXlb8+XKvtsprbEphE9lWZBKW6y4Aqnn/t5N+cb9UT/qTTWhErT1+QC6jMK?=
 =?us-ascii?Q?ZsLIU84MSPw7T4ORUr2mHpNGouVzLXI61PRSm6U0moWm4aXMFwoZKCoxpcMC?=
 =?us-ascii?Q?ysPTxz7otS3J4H8l4/QwsiaZ6y92rJuFUKSVn4iJrcaa+vmKQmZVgVthXfv3?=
 =?us-ascii?Q?sWe4DPiXFiycoAsz7+iRzq9O26JnViI+RJW7wb4e9vpHOw0dLthSbTXULYsX?=
 =?us-ascii?Q?lYleQwTJeuhaeWuwuFpIt5rpROg76UmmES+HwfPVUZrXSVBKsLUdFe2iRYV6?=
 =?us-ascii?Q?uCaPqBnh0k5tUZuEqvjqAeIqXEb5yptauNAXe2fQCZcre+lONNS7ywbCQ7+y?=
 =?us-ascii?Q?qfawnUmA8csNUc+pQn5PPH/ro2XHbd8=3D?=
X-Exchange-RoutingPolicyChecked: GKZeXCqKNvpjRM2KnkeLwWweaJo6zPGKc2HexuEQ+S6IpO9yyyjMlY0LkkBIWUz8wY9rQhmdx8QCmP39qNQ7pZ57U76BZupLx24NkSe1g/nUJtdr342vG6om0j1Yck+5Fz6HkuytWIarntFm1oqbrZUmaVddYRMnY6oaNww1DTv7oiKttmi0xJxjbIt8UQUAOOk0gKB39RoQuFj1Sja6idn3tDwC6CnZSPCN5mTYFGTvyNFLxlyx8sEQdb5Z2WeOmCl8wpjUSK0qFdOVq19ZNbsba3y+1aC5okIYPNMePG3z/Eusqwis2t/jIxSNoZefBwFpOp338r9PuqDdPX73rg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 73b619b2-edeb-4821-b132-08de968f6f63
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 23:26:32.7499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9cf08yekgwHvmrSWX7+DFdeeZSrh5+97dL0zp9QRu86v+cMb0/fOtqqv0dWu1xsUuPyC+BdDx7rp0oUBi0mbjmMuGBHICZ5tptMNMu3gmrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5770
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gustavo.sousa@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F2E333D07BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 03:53:00PM -0300, Gustavo Sousa wrote:
> Now that intel_sa_info contains bandwidth parameters specific to the
> display IP, we can drop many duplicates and reuse from previous
> releases.
> 
> Let's do that and also simplify intel_bw_init_hw() while at it.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 44 ++++++---------------------------
>  1 file changed, 8 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index ed840b592eff..654876215ace 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -516,27 +516,7 @@ static const struct intel_sa_info rkl_sa_info = {
>  	.displayrtids = 128,
>  };
>  
> -static const struct intel_sa_info adls_sa_info = {
> -	.deburst = 16,
> -	.displayrtids = 256,
> -};
> -
> -static const struct intel_sa_info adlp_sa_info = {
> -	.deburst = 16,
> -	.displayrtids = 256,
> -};
> -
> -static const struct intel_sa_info mtl_sa_info = {
> -	.deburst = 32,
> -	.displayrtids = 256,
> -};
> -
> -static const struct intel_sa_info xe3lpd_sa_info = {
> -	.deburst = 32,
> -	.displayrtids = 256,
> -};
> -
> -static const struct intel_sa_info xe3lpd_3002_sa_info = {
> +static const struct intel_sa_info xelpdp_sa_info = {
>  	.deburst = 32,
>  	.displayrtids = 256,
>  };
> @@ -903,25 +883,17 @@ void intel_bw_init_hw(struct intel_display *display)
>  	if (DISPLAY_VER(display) >= 35)
>  		drm_WARN_ON(display->drm, dram_info->ecc_impacting_de_bw);
>  
> -	if (DISPLAY_VER(display) >= 30) {
> -		if (DISPLAY_VERx100(display) == 3002)
> -			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
> -		else
> -			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> -	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> +	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>  		xe2_hpd_get_bw_info(display, dram_info);
>  	} else if (DISPLAY_VER(display) >= 14) {
> -		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
> +		tgl_get_bw_info(display, dram_info, &xelpdp_sa_info);
>  	} else if (display->platform.dg2) {
>  		dg2_get_bw_info(display);
> -	} else if (display->platform.alderlake_p) {
> -		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
> -	} else if (display->platform.alderlake_s) {
> -		tgl_get_bw_info(display, dram_info, &adls_sa_info);
> -	} else if (display->platform.rocketlake) {
> -		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
> -	} else if (DISPLAY_VER(display) == 12) {
> -		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
> +	} else if (DISPLAY_VER(display) >= 12) {
> +		if (display->platform.rocketlake)
> +			tgl_get_bw_info(display, dram_info, &rkl_sa_info);
> +		else
> +			tgl_get_bw_info(display, dram_info, &tgl_sa_info);

It seems strange to need to need to drop back to a platform check here
on something that's supposed to be tied to IP version.  But if I recall
correctly, RKL was a bit of a strange frankenstein platform where TGL's
"gen12" IP got backported onto an ICL-style chassis, which caused it to
inherit various ICL traits despite the new IP.  It might actually be
more clear to just re-use the icl_sa_info for that one and leave a
comment admitting that yeah, RKL was an oddball platform that didn't
really follow the rules.

We might also want to rename tgl_sa_info to "gen12_sa_info" since that's
a more accurate description (and is the last version where we're allowed
to use the "gen" terminology rather than the new marketing names for the
IP).  By similar logic, "icl_sa_info" should become "gen11_sa_info"
since it does indeed get used on the other gen11 platforms too
(jsl/ehl).


Matt

>  	} else if (DISPLAY_VER(display) == 11) {
>  		icl_get_bw_info(display, dram_info, &icl_sa_info);
>  	}
> 
> -- 
> 2.53.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
