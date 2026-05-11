Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCoqCAZdAmosrgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 00:49:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9024A51714F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 00:49:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 205F710E906;
	Mon, 11 May 2026 22:49:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XrCCo3f1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C074310E1E3;
 Mon, 11 May 2026 22:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778539779; x=1810075779;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hLDJ8S+lrSXN3P1RV2xc8bf12gdhlCIqJGlX0/MEV5U=;
 b=XrCCo3f115YVlqDBz1Y2VejX6Iwl+KrkrhgDDX60ApLG3Wi4g6oGt6OS
 4qTNM3XLfYo3MLbPxVOVhtQL8z5xt5tsnUZKjNfdq9+2KqWq9U/hNgyQa
 B2E+I13whawg4LJ3W+aTRP/2eJxifGZ0O78wSXY8zhq74hnigJaJLpyec
 ujdU0O4mdmcoGdSgoxYlKWWAwJ7LAvYw3FXODgebQccXjdBVtNSG5jI8P
 nLiHUsLiOVUsGyaj0idf7a8jiKvrNN4QQRC+CN8RtmHHJvtZqs7Etm/VO
 GCBRhfe3bLuSVVcoZkInlK0uhEv16GheJoj5cK4vU7TAaC1vak4IM+p01 g==;
X-CSE-ConnectionGUID: JFZ7R5RVSv6VOwhAvr8i9g==
X-CSE-MsgGUID: URejlLRnQbm6J3b19NyiVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79160078"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79160078"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:49:39 -0700
X-CSE-ConnectionGUID: 4p9Hw5prS5eFzC62S2v9sA==
X-CSE-MsgGUID: T9iiKlVaTZaWpLRoNgVUyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="234534295"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 15:49:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:49:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 15:49:37 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.25) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 15:49:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OYVQ37Z8dlz3G8xjZp1Yr/e10p4AMiuZCcgfhEklFlwmIdFJsM3+hbkWuPcLCdHrMEgcJnq4reOUOlhv5RQS/6hN9NKvfTA9rfsgumWBhTAJ5dyk4jxfj6pTujnw/Y0GQKNhlsN5S04oaEPYpW1BDxXb7iMsmq8+iEQ6Ws9dYBngo5uktzmK6+wL0ZtKB0y/6ch16sskTn0Lnpf+SaQqgcM32Ka/J+xbFkXtYg86M3UojSsqXI91oJeEMUXjMluguP1EIi4AuCQ4V35QdIQtSDy1vEo/jzbT8rijk8PpErIfjK78D6w3YCduZV8e1Hhd4cpYJAV3s3/lDWAXsP97qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wRlSXx7GUmVEWkbN8zt179zIMATo13VTrNabBiqIi5E=;
 b=Jnglf2Z4EekioiFLCz7NsCTteSBS+6Gm0LV2lzweH1JpF4wmA/HPFqcdBPGbu4S7HPb9+w3IA1oIv6q9CdQ+utrn6mXCUCmi6pl1k2W4HY8U7t3CE20h6y6tTyNGNYHJOYIs2Nn7TO8Ssjj7eD1DJLOSgGY/XqJlMa4WlZoMH+cZcE/aldIFfi6pKC5SQruCcZgSv1vp+IPCGikJ6m8LA8E21b0ZB6/DVVM+SzU2NdHwFCONT+MvFElz9PAz4quiBWBlbWh56jCEJ0rdqF7mmpzJOYQD++t+obn8/9f2TQspMBR0TqKaRc4zH+e136ZacX6zcvzN3ZtNE4/AwwiRog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ0PR11MB6766.namprd11.prod.outlook.com (2603:10b6:a03:47c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.27; Mon, 11 May
 2026 22:49:26 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 22:49:25 +0000
Date: Mon, 11 May 2026 15:49:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
Subject: Re: [PATCH v2 4/4] drm/i915/bw: Extract get_display_bw_params()
Message-ID: <20260511224923.GB2131374@mdroper-desk1.amr.corp.intel.com>
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
 <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-4-e762cb8662da@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-4-e762cb8662da@intel.com>
X-ClientProxiedBy: BYAPR11CA0044.namprd11.prod.outlook.com
 (2603:10b6:a03:80::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ0PR11MB6766:EE_
X-MS-Office365-Filtering-Correlation-Id: 8233c6b1-500e-4372-0388-08deafaf8d2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|3023799003|56012099003|22082099003|18002099003|11063799003;
X-Microsoft-Antispam-Message-Info: usYNtKpZ8xIO31K3Jlqdt/ASiAWiRNo0d3dM5EDRdjyXZ3aQSN9YHBdS53IPu5iJcULR5OcQ6Is4zbDWSBMtyb3Xv2+8fCUYkjZQeprvOR+qELVtOY2nXoXdf/sKIILRNeKoZzZrqTRTEO7SFSFIrTfLXrE/BK8HRfEKbpPU0PNC4DT1cvd7THyt2rYxBcbJSpesgu6pzjlqxW7rGAJYqQoeOo8RRVoB77fNi9M3+db9YKx3x0iFNoVFg7NWS6DsONdu+aXE62+nYB5y0e15w7EEpqQ4oEiauujayq4veQ5U4kyDHi/Gb0LCCB1qk217fNnKqGfYCPQToTcQYUv9/K/RrCZh+xN0UPCGVi8hPCrhZKyO3L0zz0QVIPj/OdH7SfEfCw68vOgV8EubzfFTjQrcH/g7tDE9hvAhhkQdzvGUwIXmNZNcZ4f9jHCVM+kNV1KM/I6j88ECoaubv5t2ex4SvWdnob/HY6vyMAkPJHM8ahfzJqwcoWJmQha5J8bdu7qDhzWBIvYMOjbJl4CTSScG8CpA7SYwKMo/CKEMlHBlHoTDVcUmVnKOqf4zhxgiuQP/529t7asNXy2hrwMJHmBd5cfmVUL+eLiicNEogvGdkQcVWDt3ZwA9hOsDpGZlCRzyjSPNNmAuKPUNtg/zepUPrEW1Dhz+d9o2ok2g24kuEd9AZoCGJlBbuBYukdIR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(3023799003)(56012099003)(22082099003)(18002099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?F2s7OKybgrMmZohE69hwOX5YpzuvvDsru2mY5okuQ5HN9a5tmJU5i/zo9Q7h?=
 =?us-ascii?Q?6LfhEuNwi6OUXWjxipj9U6pL7M8ORnYjBjlHdWH5+ZOlb4c6+OoZmw7tyKi+?=
 =?us-ascii?Q?UyPi7zUCOYON0u5TPRt+DBcuDOQ97tz1UZ5g8Y3Gu2xbBSrwWdnddIp7r4vD?=
 =?us-ascii?Q?AL3kJB8+qrEFIhqdccgkOCAUsN9jT1TOElJkcWOhi5xe/H99RYDSLWnygNJU?=
 =?us-ascii?Q?t08qiF7nSz1vb+DasMMeHzcFLVp9jpMlPruahq08FnyPQhN6TVFNTv65FGG7?=
 =?us-ascii?Q?NXQleb5+02gjGI4JQmvrrKfv7nf3UUO+6zHdAKFgmIR8hcNsCyPN7knwnVCg?=
 =?us-ascii?Q?X/VYXu62xgdNrdpG7Cj07c7N74z2IT0IEzPx7cJ1No0JD/pNWbL2+2uDqyKt?=
 =?us-ascii?Q?ZMV5bPv+KDVOdFUOTpncUgRgh/ptcwMBvkoM2kETpBcunFuSMbz3bUStRF8b?=
 =?us-ascii?Q?l/fg1ATxeupd9UKhgFZYyQRrQlKDSPGXbPHsVDOLYNMmrs9ABKxudWLUgwtf?=
 =?us-ascii?Q?OoqzWkIrk/DmLYMGi2yuVh1/e9TliJ4ASiYeOshyxnoVBs56qU+Ic2tT94TE?=
 =?us-ascii?Q?C0zsBVfxyCFfXykOT8Wi+ka06m/uMRYkQxKSHCqJ0RKzaBXw+cTjz8/aLYn9?=
 =?us-ascii?Q?OO7ItD+CTgcGS8c6Y1vOtYA2ZNfB/+4ZfO47QyhKPHBCbPovybEOFQJqQW9k?=
 =?us-ascii?Q?5g+JaqNBhLiBXX3bqb/zCLeB1FgUm1rcUPfPS0qbrzB4xIyNUPbL2BC2HHqD?=
 =?us-ascii?Q?V9vAx2mvZG5Zlw6aUvGsZ5qTwadRsq4LV6x3Qw3HIDTrgC009vE22JnuCWj/?=
 =?us-ascii?Q?TcIfbVXftioXe/Id8oUBVhLWJO2q5H92/+sYIVwfBhq6MHx6ruQnxL74/C9n?=
 =?us-ascii?Q?N+9C6HGH7pIOi2o4o2xyUZLFbqKuagZNnil0EOFUQp14xnNauJeLoc6ZeMP0?=
 =?us-ascii?Q?7JI1BHA3ZQGqqIz9Pr124LkCd6erFKg4GnHryyrPxeuqrmKpcdOzc3++jhUh?=
 =?us-ascii?Q?nSAZ66LBV1SV7dwYz7FaA90igG8bu6r9zEyj17Je0kzoUg7e5xX/2EKU4vA9?=
 =?us-ascii?Q?9YgUyIC5gbtGwHWssNSl9FOd8OPb6sOOtQNwYsm/suQCy99Wz9fIqsC2Xokk?=
 =?us-ascii?Q?GNbNXPsH+Na3k0IrX1smYv5uXx6MxJfAYNaaAIljeY7I7gqbKrS8QEuaSDsZ?=
 =?us-ascii?Q?OfoJ9J6A2+hrUDnINDPztELexJC40MKcfzANLULSgFhXmhs3X+iiN6rnrZBc?=
 =?us-ascii?Q?BwTiK8WmIk7TCLg9UvvCMMLloKLx7RMcX7XVYyDiIAJMqAYTUqJMsdBXwoBI?=
 =?us-ascii?Q?mi7t895yULd+khPNj394Z7SARnNs61dQBlGOnq0bE3ESdNBP363YV3UOS6ON?=
 =?us-ascii?Q?K9tN4qCTnX211sNKCzBRiz60qp0nnyXIJyMyS05BFJ0Thw46aRiAaLsQDjrK?=
 =?us-ascii?Q?RY/Jfjy68qJCmoj1feBJG4rXTiNuDudmGMYVLfI3zC72r5rFSRWWow1kPUdr?=
 =?us-ascii?Q?wZPaVaa7rttChfkUCk/PpK+9S7T6EoinEHXj/DKhwoFjS6bQx9zinKvXzCIC?=
 =?us-ascii?Q?5tkZheklTXYvLb4mWJ9M1dUGarthGJGJRWtEkmEI6DzxVFI1LTVaVVnUNO3s?=
 =?us-ascii?Q?rC3gCNJmJM8sXZYaaVT3X9Xxp8NeaPBN1w9M5Tt2mPIedeffIIQIKWeP6Z5x?=
 =?us-ascii?Q?3RHRJaKbPI4wviUVNMu4pgVLXs7b76nN2Pq2v+Q8Md6B2NnPZPWbQ5uJEmVo?=
 =?us-ascii?Q?Q9aXjmwlrbsM4jhWxCbygb07Z0RpbXo=3D?=
X-Exchange-RoutingPolicyChecked: hoxqULtvSK5uLx00mC94zq52mIycwsZS7DmwVW6gzOvEs0WeU9632MGTey0caC0JNrV6vTDUkdLqDtG+i4VjzU7JijMEhCy/wuvJ0cQWZEJ6SafialZM+LvEYPYNJlcACrHXcGMg88JsBiTbiP1aENg+dYmEpAmakYJ4cNSA2w3g/7oZCCYgBKnUzrT6UV+6PSlUA37Dr5t/GZyMliqVGWLJg1+gpEUv3LYK4RkA5+6XoxBoR4RAYH/8ARL2mzyuFkm07gpNvShBcgg1l5CuXxxTpBfLsAHGJezJZGIfvxCVNc0w3+Zpq7sCa0u3iKHkgc6C8N/XSdpp+ftMLBk0zA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8233c6b1-500e-4372-0388-08deafaf8d2f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 22:49:25.7925 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WNWtvQGMl2CGOg2jvtNxdTRPbAXxMxVHk6o/qtZZ52SInqCt/ClWJvcqPmbfsLh8DEYj9pJSK7mV+AJS5HfjTyLLlQvkwVrqsoe4aAEnxSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6766
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
X-Rspamd-Queue-Id: 9024A51714F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,mdroper-desk1.amr.corp.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 01:30:59PM -0300, Gustavo Sousa wrote:
> Just like it is done for the platform-specific bandwidth parameters, use
> a separate function named get_display_bw_params() to return the display
> IP-specific parameters.  This simplifies intel_bw_init_hw() by having
> just one call for each of the *_get_bw_info() functions.
> 
> v2:
>   - Prefer to call get_display_bw_params() only once in
>     intel_bw_init_hw() instead of having multiple calls in each of the
>     affected *_get_bw_info() functions. (Jani)
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 36 +++++++++++++++++++++------------
>  1 file changed, 23 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index c01356d38e64..acd1b6901b46 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -493,6 +493,26 @@ static const struct intel_display_bw_params xelpdp_bw_params = {
>  	.displayrtids = 256,
>  };
>  
> +static const struct intel_display_bw_params *get_display_bw_params(struct intel_display *display)
> +{
> +	if (DISPLAY_VER(display) >= 14) {
> +		return &xelpdp_bw_params;
> +	} else if (DISPLAY_VER(display) >= 12) {
> +		/*
> +		 * RKL's SoC was based on ICL and the display, even though being
> +		 * gen12, had changes to the memory interface to match gen11's,
> +		 * consequently inheriting gen11's display-specific bandwidth
> +		 * parameters.
> +		 */
> +		if (display->platform.rocketlake)
> +			return &gen11_bw_params;
> +		else
> +			return &gen12_bw_params;
> +	} else {
> +		return &gen11_bw_params;

It doesn't really matter, but this is technically going to assign gen11
parameters for all the pre-gen11 platforms that call through here on
i915.  If we never use the values it probably doesn't hurt anything, but
it might be best to make this a condition on gen11 rather than an 'else'
just to avoid any confusion.


Matt

> +	}
> +}
> +
>  static int icl_get_bw_info(struct intel_display *display,
>  			   const struct dram_info *dram_info,
>  			   const struct intel_soc_bw_params *soc_bw_params,
> @@ -843,6 +863,7 @@ void intel_bw_init_hw(struct intel_display *display)
>  {
>  	const struct dram_info *dram_info = intel_dram_info(display);
>  	const struct intel_soc_bw_params *soc_bw_params = get_soc_bw_params(display);
> +	const struct intel_display_bw_params *display_bw_params = get_display_bw_params(display);
>  
>  	if (!HAS_DISPLAY(display))
>  		return;
> @@ -858,23 +879,12 @@ void intel_bw_init_hw(struct intel_display *display)
>  
>  	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>  		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
> -	} else if (DISPLAY_VER(display) >= 14) {
> -		tgl_get_bw_info(display, dram_info, soc_bw_params, &xelpdp_bw_params);
>  	} else if (display->platform.dg2) {
>  		dg2_get_bw_info(display);
>  	} else if (DISPLAY_VER(display) >= 12) {
> -		/*
> -		 * RKL's SoC was based on ICL and the display, even though being
> -		 * gen12, had changes to the memory interface to match gen11's,
> -		 * consequently inheriting gen11's display-specific bandwidth
> -		 * parameters.
> -		 */
> -		if (display->platform.rocketlake)
> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
> -		else
> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen12_bw_params);
> +		tgl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
>  	} else if (DISPLAY_VER(display) == 11) {
> -		icl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
> +		icl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
>  	}
>  }
>  
> 
> -- 
> 2.53.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
