Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOHxDoEy2GkWZwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 01:13:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BB93D0729
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 01:13:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6724110E04E;
	Thu,  9 Apr 2026 23:13:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Exux2qbp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881F510E04E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 23:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775776382; x=1807312382;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=g5nSOEmy7Vh187wD97oE8UjsnEpy3BWi6rHlTHaF5eY=;
 b=Exux2qbpILW4SzALNZmlFvakQr43V0N/wwWpe68TuTcvcaHRzZ48m3eq
 sRNQREniomqkU2hMjkdMss4XRcjWTHPhQadiqAWs6TYJDuYTcoIEyg0aT
 kmvx/mO9XewcQPTpTk5h3u0CMxUK699OJzI2OT/N3PWX4a6Q8HWSbzv/m
 zFHTwD7XTzRLjU1qX6+rfb0gzUfsOHXnUhWL5EdffNMhrjYa0HzVUmWFC
 esjWA2P4gwzZYCfidApPtakxxGKuKyUkGaR3DUh+DS65yWp1PxmSUPGnN
 Tn99ZIEhPH3ZV5XoU48u4OGagm8nan9fLmPDMg5s+DoOR3GxaLcXiZIdY A==;
X-CSE-ConnectionGUID: cQY9/2X3QEyeYiBimqL6FQ==
X-CSE-MsgGUID: jOJtVjEGRGGsi90XmRXrfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="88236399"
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="88236399"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 16:13:01 -0700
X-CSE-ConnectionGUID: 4yZAxO0hRReOo1xvSKJwJg==
X-CSE-MsgGUID: FY6hX3ELR7iUuhNlynPNkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="259394187"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 16:13:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 16:13:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 16:13:00 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.24) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 16:13:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XrRCla+HdBgZFM5krvQdULw1iXE1vr7MgYwUQD1yfwvk+Qjo9bFjBgHwJLxPu2aK1WfR1yNyEFAdrPUiqVFDqKTYYvcVkJTGGgnte4lSCRsbuhGlgsWKjzVi44WTU0P0riETDDZO4+ZHoI3cDRUxgeBUmO+sPqxIGUWhfPIOcRTGQKhU5CEc41p9AxSvf6U6Z/4/F/mSTBzcppqR3ubILqnOVF4WxhEpZzO/mgfGwdoHClHfF2sUOhIq1dtGhqThp/apCTNkDoN2mCDKWLdZip8Bj5HKG4qZogNuaveh1/UEywZjYByfOlHAOz+6izjoU8O+dXr/Yu9t+uCEskHWvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EMR7ZiirWKfGYgBagJ91ZmFcXwYpmBQi5QPP0PojZpY=;
 b=gIpD2scoq6XNsa+uHWKmA6EoTlkckqa0tOFInj/qlM7U/UuW8M1VrKh2ECfE/FHEwWwfKSpE/5l3QDRPJ1KRu5Jyk6qwPWwJXCmZ2oaeZDO2Z0Kh1FCH5NC3lHx1nccXBA1fL5KfA3w92dtP83BUSSIH6ne6mzzw4fUIZB+5zDYMQkqkIPrHuWeVfV69B8lqta9JlH1dawkip8RIK/YDmuN/J7l1ydHs1iQ23kBpAHQc/rpZjqeHKiL73mivo/rJ+6iqxcBdgAYIFZG6RwfefYTFb//w24nyy9uF+DIo/Gvwgfz7a/nH0SsxDqFzl5b9u4nb3UDMUS7pxGVIFMZSXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB9875.namprd11.prod.outlook.com (2603:10b6:806:4da::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9791.33; Thu, 9 Apr
 2026 23:12:58 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9769.041; Thu, 9 Apr 2026
 23:12:58 +0000
Date: Thu, 9 Apr 2026 16:12:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] drm/i915/bw: Extract platform-specific parameters
Message-ID: <20260409231256.GB6301@mdroper-desk1.amr.corp.intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-1-23c53afa7db0@intel.com>
 <5a2fefe3f3d7ee92d3cc1bca1ffe88370d54c822@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5a2fefe3f3d7ee92d3cc1bca1ffe88370d54c822@intel.com>
X-ClientProxiedBy: BY3PR04CA0024.namprd04.prod.outlook.com
 (2603:10b6:a03:217::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB9875:EE_
X-MS-Office365-Filtering-Correlation-Id: 88f90bee-147b-4cdd-f3be-08de968d8a0d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: QRm2ivrifOy4qkwQ2BHCeM1KqW9vyfUpVmn+zJH/Dw6dmZiLyuAJm98JOlVtauIhcqdCFgjk6Q7ozvAZPAZoo79XqAYkj30TlVBilXwiUxWpXDbj7NyaJjHLqOo/TX4VgMjIy+s/MB0TYRXppkT76bOXpcwoEzupPfv9DXhatP1ChN6TqUW1hHCX6LMNdRC2Bu60T71ETorFLyG0Mt7idF9wT1SnBM0c8NlJa3WBSf2Qbq7QHoziwJXfVABb4FxT6tFOA3F6M7+mDN1XHsqmCdvi41sF1NKRZRjT/f9NTvC8Qdfe53xxsCEs1n7AdTefGxMh2SIQ/DfnGVyj8ZZduUrZZXx1ekrWJmsNmj6BAcXzag2B9aHw5L83NgAOJggcZNjgxTaN+E0KNY2jZo30i8hL4lYvedVgdoKGeEc0DtnW6hGrixBl6r7nd6yHRpaBGP/pIKvSK9pypz7RpIxrQhWFSGwyxqhOtO1HswCeiZ1eNkYD6DIh4RPeLlgf+uwlr22BbvjA0O1Zo1sXxPmD6srA/BwFGaA1Q8YT73y5BzgYlzr9HnnshNQFvdbxXE/wg/vHxIQyfBqcUj9LBLkKAf/l59bUXXb8Sd8PIZu3BOXCunHhBN/dNk7m6WnOCyOma8pPgOk4XrNOBoNYpmnbIIl3BzEvkmUrYDM5zPpyZMRUM6u72f8iP6dkfkmZzZNGhDp6I+GydtOaaUFjTssorPkYaukrSvNUkwwm4c7JLMM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FDGpM8hOQtwIs3k+bFrlIIJ/8pISPJP9QeleIV4OQy6z9Y7D/8nhZXDg7ubE?=
 =?us-ascii?Q?IdRwiWNtF8KRl7GRFQms0keuRGtcImBD8lk32Bc/kn0Qtv6CIiJy+FHDSr7a?=
 =?us-ascii?Q?vtMega/0gd01vtZpRToK2w4jouVVHQs6E3YawLPuJ3NW1FSrb3j3FpQnCB3M?=
 =?us-ascii?Q?NiJBN0SDOeFIFpflmXwN5IKCpwtk5bLnOCQEd3jmIQnj8lC7u2jtSqhODfB7?=
 =?us-ascii?Q?FhVRQrEUJQ8jpOuByN+RgchORhcXbLq6UeLhAcQpa6Q7U5wTSJDNsHr7TE4o?=
 =?us-ascii?Q?4dVZEJ++7oan/C/+sRpq/FUF50G8868DCgEiqVi+p0WU54U1etVa9YHXEFiV?=
 =?us-ascii?Q?u+7eXqKdq8hTczPqDvxtMtHLrbcow3vaC4bo65gy637zkvxx2Vhdb2Xf2vIh?=
 =?us-ascii?Q?coV7VpamzsfQ2v6gRtknmEZtn/J5ObF2c54sBK+MJKL4q6UT/wLgCLeUmO/D?=
 =?us-ascii?Q?lfXMJ8p+pcrKJzbW86iOZtIJTvdka2HvxOgLUOHxejaVarCZE4dgcZXNOcvT?=
 =?us-ascii?Q?aHGA51AuRM1a3sZgbp1mFK+BXKp2S17B5K1btvVQEZYfAC0hPR8/ZFoZw72I?=
 =?us-ascii?Q?G3ZY3J6yv1BacPT31IBWnpDYma2xabpvqYOcWCK50vJYNjozOHCy2tK9S06X?=
 =?us-ascii?Q?JdqqzVPqLy7FiT93GrAF8TvYgBjBz+WIol+OkrMkKuVgayXnpFs0bljRhFTu?=
 =?us-ascii?Q?OsTb6hxP5Ya3tZ136T0KThOCpnWzR73aOY27tY0dE4qqiD0lb2UpOFtKBB4X?=
 =?us-ascii?Q?INkcPJ93E7378HIhPfQjWB12R4Jrf9UVG9RyN2sTbenGM0mDq3V/5NJS88Ic?=
 =?us-ascii?Q?Roixnk4D0MIvhQO/EDGkgEHNSrXG85XmG4+iK71PtKTMjOGSXeUt9Rq32+Zs?=
 =?us-ascii?Q?r8VCg+GxMDwEoSrx7TbqfnXKWid5g2WLxEndwoHcFa4YwOt6WIkv7jUcTtVk?=
 =?us-ascii?Q?Oyy+uYiZYVee8S2QuZCaE8P6iGb5md922fIAfHTPy+1JcG/5TIx1OtrxRoQ7?=
 =?us-ascii?Q?x5P/fOj+5ewxi3aKcUyrItbjYQqYCYym3DoeH7+95KuB3xjM/iZT+9Gu+Ziz?=
 =?us-ascii?Q?XtHzn3KQw0Ru/bY3pLfvC50gp/ZU4Jvd18+hCpXhuRfaQQQrT2AbTi6BPCg/?=
 =?us-ascii?Q?OfQqrZsDAe3K/AtPeY8424Civ1ln80TPEApbfqNSOtKWqzRzgSIhuagzPFMT?=
 =?us-ascii?Q?YuPvxsggAxkBqw+3jrXMv65OdTbzs3cWq9FfHHjWpPjLLjhVbqMVEPrg7kTX?=
 =?us-ascii?Q?9YEZdo4V3wWlx9aLDtQJkHyq9HwNylXtouc1/R2N7k5Tn4T7CDH4H7IDQj2r?=
 =?us-ascii?Q?Gok3grWE7XAiu4QI/UaSsZvxHr1XtXVJ+U62Lh0ehtnwZ/GxK6VU1O2Wg+QQ?=
 =?us-ascii?Q?rIc7DmmqkdbyUFt0f3+VC9mUs/ArFzLct+WIvK4SdpkvZaMGDvDgFOxhDAoF?=
 =?us-ascii?Q?6XVfhlmWLN7s2Lf+Utk2jmllw9sE1hRh04dNiVbStBBPKBTOE1+SYQTuDBi5?=
 =?us-ascii?Q?yN4uDPFdKXGmeNftgK/h8zwJXX+gO5e4o8H4ao47XRdyuzJk1N+FfkXBdk6y?=
 =?us-ascii?Q?ByKcz0wPzTVVceDx6U24EmuMOuUadOhJK42JQrQuvkdVrcbIc7EcP38npTcw?=
 =?us-ascii?Q?YoBEOpD+hFYTihuhbAPyfMmwepKkNYi5ni2R39UYof5QNBht4HAu3IGNuEJK?=
 =?us-ascii?Q?6MFSsbo6FDGu3OQpZ8M38i/mfxycdUgXo5b2+KToeSlrsUO1OQnHLeFaP2jz?=
 =?us-ascii?Q?BLjo6Zt5c/USXnMtaCO9nPVpQSASdDc=3D?=
X-Exchange-RoutingPolicyChecked: ZQ533kVsMiyEMuE/IQBLrn8LCYQ0M7SNmgieH8BLuXWxu520fPZ4o7PI+2a5pqTNt8fINcERQRfWDp3z15Ok+HvyG6er1GD7gMRPJW01OztOB370L8GRQ0vfU7OQe6/GXrbC+A3K8JgYGhL6N8DtR+Lue6tHnYQm2PYh4Q04KPI1UEbt0pXIdzrzzCZ5M2tKywrXMkGG7mKg9kJCcpehZFQn3gryiSJksohstEq2WKwvGfl+98uvr6VMvJfsftL4CklzgdZwx2Dce1OafWLC/nVnEf921u3kSlR54FdAP6Em9AIavQdnkEps1jp6iZUmzGdANb4zYquur0N4pOs3KQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 88f90bee-147b-4cdd-f3be-08de968d8a0d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 23:12:58.5605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dM12rjMwX/01UpT07ky+EhSaIzcj3cDD1XIA8oes3S6y4pfGwaayyD+sBeqLCvQz7DT7asBb/cvQDDWZFw+OQMpBUktV928HdhWe6sugidA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9875
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,mdroper-desk1.amr.corp.intel.com:mid];
	FORGED_SENDER(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:gustavo.sousa@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 92BB93D0729
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 10:16:42PM +0300, Jani Nikula wrote:
> On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > We got confirmation from the hardware team that the bandwidth parameters
> > deprogbwlimit and derating are platform-specific and not tied to the
> > display IP.  As such, let's make sure that we use platform checks for
> > those.
> >
> > The rest of the members of struct intel_sa_info are tied to the display
> > IP and we will deal with them as a follow-up.
> >
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c | 174 ++++++++++++++++++++++++--------
> >  1 file changed, 133 insertions(+), 41 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 474438fc1ebc..ed840b592eff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -375,77 +375,170 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
> >  	return dclk;
> >  }
> >  
> > +struct intel_platform_bw_params {
> > +	u8 deprogbwlimit;
> > +	u8 derating;
> > +};
> > +
> > +static const struct intel_platform_bw_params icl_plat_bw_params = {
> > +	.deprogbwlimit = 25,
> > +	.derating = 10,
> > +};
> > +
> > +static const struct intel_platform_bw_params tgl_plat_bw_params = {
> > +	.deprogbwlimit = 34,
> > +	.derating = 10,
> > +};
> > +
> > +static const struct intel_platform_bw_params rkl_plat_bw_params = {
> > +	.deprogbwlimit = 20,
> > +	.derating = 10,
> > +};
> > +
> > +static const struct intel_platform_bw_params adl_s_plat_bw_params = {
> > +	.deprogbwlimit = 38,
> > +	.derating = 10,
> > +};
> > +
> > +static const struct intel_platform_bw_params adl_p_plat_bw_params = {
> > +	.deprogbwlimit = 38,
> > +	.derating = 20,
> > +};
> > +
> > +static const struct intel_platform_bw_params bmg_plat_bw_params = {
> > +	.deprogbwlimit = 53,
> > +	.derating = 30,
> > +};
> > +
> > +static const struct intel_platform_bw_params bmg_ecc_plat_bw_params = {
> > +	.deprogbwlimit = 53,
> > +	.derating = 45,
> > +};
> > +
> > +static const struct intel_platform_bw_params ptl_plat_bw_params = {
> > +	.deprogbwlimit = 65,
> > +	.derating = 10,
> > +};
> > +
> > +static const struct intel_platform_bw_params wcl_plat_bw_params = {
> > +	.deprogbwlimit = 22,
> > +	.derating = 10,
> > +};
> 
> In the above, "plat" feels like tautology, since they're all prefixed by
> platform acronyms.

"soc" might be more consistent with what we (and various hardware docs)
do to refer to "stuff that's outside the graphics/media/display IP and
doesn't relate to GMD_ID version numbers."  Technically "soc" is a bit
of a misnomer too since a lot of our recent platforms are multi-chip and
not truly SoC's anymore, but the intent is still understandable.

> 
> > +
> > +static const struct intel_platform_bw_params *get_platform_bw_params(struct intel_display *display)
> > +{
> > +	const struct intel_platform_bw_params *ret;
> > +
> > +	if (display->platform.dgfx)
> > +		goto dgfx;
> > +
> > +	ret = &icl_plat_bw_params;
> > +	if (display->platform.icelake ||
> > +	    display->platform.jasperlake ||
> > +	    display->platform.elkhartlake)
> > +		return ret;
> 
> What's the point of assigning and returning ret?
> 
> Why not just return &icl_plat_bw_params; directly?
> 

It looks like the intent might have been to let people keep copy/pasting
the same pattern and have the fallback at the end always default back to
whatever the "newest" one was if a proper match wasn't found.  But I
agree that the handling here feels awkward and a simple if/else ladder
would be preferable.


Matt

> > +
> > +	ret = &tgl_plat_bw_params;
> > +	if (display->platform.tigerlake)
> > +		return ret;
> > +
> > +	ret = &rkl_plat_bw_params;
> > +	if (display->platform.rocketlake)
> > +		return ret;
> > +
> > +	ret = &adl_s_plat_bw_params;
> > +	if (display->platform.alderlake_s)
> > +		return ret;
> > +
> > +	ret = &adl_p_plat_bw_params;
> > +	if (display->platform.alderlake_p)
> > +		return ret;
> > +
> > +	ret = &adl_s_plat_bw_params;
> > +	if (display->platform.meteorlake ||
> > +	    display->platform.lunarlake)
> > +		return ret;
> > +
> > +	ret = &ptl_plat_bw_params;
> > +	if (display->platform.pantherlake ||
> > +	    display->platform.novalake) {
> > +		if (display->platform.pantherlake_wildcatlake)
> > +			ret = &wcl_plat_bw_params;
> > +
> > +		return ret;
> > +	}
> > +
> > +	goto missing;
> > +
> > +dgfx:
> > +	ret = &tgl_plat_bw_params;
> > +	if (display->platform.dg1)
> > +		return ret;
> > +
> > +	ret = &bmg_plat_bw_params;
> > +	if (display->platform.battlemage) {
> > +		const struct dram_info *dram_info = intel_dram_info(display);
> > +
> > +		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> > +			ret = &bmg_ecc_plat_bw_params;
> > +
> > +		return ret;
> > +	}
> > +
> > +missing:
> > +	/*
> > +	 * Use parameters from the most recent platform,
> > +	 * but raise a warning.
> > +	 */
> > +	drm_WARN(display->drm, 1,
> > +		 "Platform-specific bandwidth parameters not found, using possibly incompatible default values\n");
> > +
> > +	return ret;
> 
> I don't understand at all why the function is written the way it
> is. Seems like it should be a regular if-ladder like we have, with zero
> gotos.
> 
> > +}
> > +
> >  struct intel_sa_info {
> >  	u16 displayrtids;
> > -	u8 deburst, deprogbwlimit, derating;
> > +	u8 deburst;
> >  };
> >  
> >  static const struct intel_sa_info icl_sa_info = {
> >  	.deburst = 8,
> > -	.deprogbwlimit = 25, /* GB/s */
> >  	.displayrtids = 128,
> > -	.derating = 10,
> >  };
> >  
> >  static const struct intel_sa_info tgl_sa_info = {
> >  	.deburst = 16,
> > -	.deprogbwlimit = 34, /* GB/s */
> >  	.displayrtids = 256,
> > -	.derating = 10,
> >  };
> >  
> >  static const struct intel_sa_info rkl_sa_info = {
> >  	.deburst = 8,
> > -	.deprogbwlimit = 20, /* GB/s */
> >  	.displayrtids = 128,
> > -	.derating = 10,
> >  };
> >  
> >  static const struct intel_sa_info adls_sa_info = {
> >  	.deburst = 16,
> > -	.deprogbwlimit = 38, /* GB/s */
> >  	.displayrtids = 256,
> > -	.derating = 10,
> >  };
> >  
> >  static const struct intel_sa_info adlp_sa_info = {
> >  	.deburst = 16,
> > -	.deprogbwlimit = 38, /* GB/s */
> >  	.displayrtids = 256,
> > -	.derating = 20,
> >  };
> >  
> >  static const struct intel_sa_info mtl_sa_info = {
> >  	.deburst = 32,
> > -	.deprogbwlimit = 38, /* GB/s */
> >  	.displayrtids = 256,
> > -	.derating = 10,
> > -};
> > -
> > -static const struct intel_sa_info xe2_hpd_sa_info = {
> > -	.derating = 30,
> > -	.deprogbwlimit = 53,
> > -	/* Other values not used by simplified algorithm */
> > -};
> > -
> > -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
> > -	.derating = 45,
> > -	.deprogbwlimit = 53,
> > -	/* Other values not used by simplified algorithm */
> >  };
> >  
> >  static const struct intel_sa_info xe3lpd_sa_info = {
> >  	.deburst = 32,
> > -	.deprogbwlimit = 65, /* GB/s */
> >  	.displayrtids = 256,
> > -	.derating = 10,
> >  };
> >  
> >  static const struct intel_sa_info xe3lpd_3002_sa_info = {
> >  	.deburst = 32,
> > -	.deprogbwlimit = 22, /* GB/s */
> >  	.displayrtids = 256,
> > -	.derating = 10,
> >  };
> >  
> >  static int icl_get_bw_info(struct intel_display *display,
> > @@ -453,6 +546,7 @@ static int icl_get_bw_info(struct intel_display *display,
> >  			   const struct intel_sa_info *sa)
> >  {
> >  	struct intel_qgv_info qi = {};
> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> 
> Perhaps it would be better to pass this in instead of every function
> having the call.
> 
> Nitpick, "plat" is not an abbreviation I'm fond of.
> 
> >  	bool is_y_tile = true; /* assume y tile may be used */
> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
> >  	int ipqdepth, ipqdepthpch = 16;
> > @@ -469,7 +563,7 @@ static int icl_get_bw_info(struct intel_display *display,
> >  	}
> >  
> >  	dclk_max = icl_sagv_max_dclk(&qi);
> > -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> >  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
> >  
> > @@ -499,7 +593,7 @@ static int icl_get_bw_info(struct intel_display *display,
> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
> >  
> >  			bi->deratedbw[j] = min(maxdebw,
> > -					       bw * (100 - sa->derating) / 100);
> > +					       bw * (100 - plat_bw_params->derating) / 100);
> >  
> >  			drm_dbg_kms(display->drm,
> >  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
> > @@ -524,6 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> >  			   const struct intel_sa_info *sa)
> >  {
> >  	struct intel_qgv_info qi = {};
> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> >  	bool is_y_tile = true; /* assume y tile may be used */
> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
> >  	int ipqdepth, ipqdepthpch = 16;
> > @@ -557,7 +652,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> >  	dclk_max = icl_sagv_max_dclk(&qi);
> >  
> >  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
> >  
> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
> >  	/*
> > @@ -602,7 +697,7 @@ static int tgl_get_bw_info(struct intel_display *display,
> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
> >  
> >  			bi->deratedbw[j] = min(maxdebw,
> > -					       bw * (100 - sa->derating) / 100);
> > +					       bw * (100 - plat_bw_params->derating) / 100);
> >  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
> >  							  num_channels *
> >  							  qi.channel_width, 8);
> > @@ -663,10 +758,10 @@ static void dg2_get_bw_info(struct intel_display *display)
> >  }
> >  
> >  static int xe2_hpd_get_bw_info(struct intel_display *display,
> > -			       const struct dram_info *dram_info,
> > -			       const struct intel_sa_info *sa)
> > +			       const struct dram_info *dram_info)
> >  {
> >  	struct intel_qgv_info qi = {};
> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
> >  	int num_channels = dram_info->num_channels;
> >  	int peakbw, maxdebw;
> >  	int ret, i;
> > @@ -679,14 +774,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
> >  	}
> >  
> >  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
> >  
> >  	for (i = 0; i < qi.num_points; i++) {
> >  		const struct intel_qgv_point *point = &qi.points[i];
> >  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
> >  
> >  		display->bw.max[0].deratedbw[i] =
> > -			min(maxdebw, (100 - sa->derating) * bw / 100);
> > +			min(maxdebw, (100 - plat_bw_params->derating) * bw / 100);
> >  		display->bw.max[0].peakbw[i] = bw;
> >  
> >  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
> > @@ -814,10 +909,7 @@ void intel_bw_init_hw(struct intel_display *display)
> >  		else
> >  			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> >  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> > -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
> > -		else
> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
> > +		xe2_hpd_get_bw_info(display, dram_info);
> >  	} else if (DISPLAY_VER(display) >= 14) {
> >  		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
> >  	} else if (display->platform.dg2) {
> 
> -- 
> Jani Nikula, Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
