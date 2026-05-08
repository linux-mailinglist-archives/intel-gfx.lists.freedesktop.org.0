Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mC91Ez7+/Wl2lgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 17:16:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1224F8858
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 17:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FDB410E327;
	Fri,  8 May 2026 15:16:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jLbWcHt3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A726710E327;
 Fri,  8 May 2026 15:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778253371; x=1809789371;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=5IQuhThHpaG3s54J2cwiLo30JMtTj1vMFjVr1eNYQpo=;
 b=jLbWcHt3bQu617WOfcLZWI19QzJXi4GwSMd6UA7pyZesSusXN4pGteqx
 5Hx3NUddOcJxrLQ75dFPaZPJgu6xbQwC0If+no+VZBzesCe6X0S6Qra1m
 ot4L4XNshesLCnfBg7zcrCErxaMRFpFogZEkSXIGyHbmE+NtEXokJuBHE
 T0rUPZ8x3XSB79N/KNyWOvj985m2/X2H8nnpoKNtevRucM0IDICGnNN3Z
 yrmBVDNLZ7Z7+HgCf0wNQ5EB5YXtywYhiD4V04yWG2mUCQRBojw+akO4F
 BIpS6dq0g52msZyVvipFZoWMvU54VUPTEEm9lstQyVRYvCwmHRL45V/G6 w==;
X-CSE-ConnectionGUID: SXMkCIYORlKjpZvTLB6Lbw==
X-CSE-MsgGUID: g4AxzScPQUO/YRNI3I8VTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="66752013"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="66752013"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:16:11 -0700
X-CSE-ConnectionGUID: PYh9XWOsSc+tm1GV4DZGkA==
X-CSE-MsgGUID: pPFxhN6BR7iIOvYxNtm+Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="274906121"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:16:11 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:16:10 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:16:10 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.11) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:16:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h6vlSpsmknAVAyy3q1tvmitK8s3wtDLzTym+JP1H1zqdWwVG/s1uriOLvisZJ2LKNO+4VzyeqWY+23vLc90yJ/Mm+yWk1gRauwNC1NMW1qiI9VmrCWmv1nGYAgX6thla8QFvL6NYLpYnovKdc5yEBTuzP/aWgJjjcF5qqCsFBm6gzkpLdPwhQyWjIo75Ox/hCyrWlM8Ch15vI8uzN9Cmklg4YTz3L9aUD99Z8dS6oAt/K/NCAFsM79SOI15cHfI/hJAOKwENaQW5NP02HrLMtyUmq1ANTCLjFCo3gyW5bxdnBP9If5W+ESS4Zdde578fGexKgPNh2BQ9FiH4epM6TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0hhalUu1U5Fd9dMsfCOfSsGA/MD0iX0rG6EQIElNCek=;
 b=VrLas7BDe2awM8U42Qwu/b5F6BayT4H6IJdZVnJuDpQDHgngwM3AmqfTQ5YLE2HSWEtIQcK6xO6Urg+7aHQTqu7WMTzISi2VLFJTYnoCi2I5PSN0xj2E0mM/Pj8Hrjq5vQJxvCAgVT13abpI17r6UEB3Qtrz2SIwDKvGBOsKcDBiWPzjDyl/ZLjZNc1ij2att74wtd2ineTocMqUXTrT6IkdCFb3c4JeewDNO+17pDocmCGXS5V6NwSf2vdCCRlw3Nr+GKXDePxzcWXpfoEHcQ2S1cHulmUzPFRsqbc7RfcZQzlsX2qj67hpvTI0Zs3fC9wtX1n3TYX8H0LcFmYY+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB8176.namprd11.prod.outlook.com (2603:10b6:208:452::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.16; Fri, 8 May
 2026 15:16:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 15:16:06 +0000
Date: Fri, 8 May 2026 18:16:00 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 018/108] drm/i915/dp_link_training: Add helper to reset
 link recovery state
Message-ID: <af3-MNqFGY8UYcsv@ideak-desk.lan>
References: <20260428125233.1664668-1-imre.deak@intel.com>
 <20260428125233.1664668-19-imre.deak@intel.com>
 <e0b92259bf47d8dec0f8d35dd8c7def1d5fd6e17@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e0b92259bf47d8dec0f8d35dd8c7def1d5fd6e17@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF0001A326.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::68f) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB8176:EE_
X-MS-Office365-Filtering-Correlation-Id: 33cd9efd-bfd4-4d03-ea3c-08dead14b9a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: V+rz3DMNRn9kXwWrUlEM3Y5hJJHy9lChWQVnfLNAVJ55O9jQ9OP4KRaM47TcbecYLuZqdGD2Lx32OgoaMJDVcEvlckQ2Hh4nDyD+w2RrICgemEGcNqYiHLffaV7D1rMmSEfpTN/9h6jTKe1eiVE9uAwXJv/C/BlVUpz9f4HB26GX3ez28mrM4EQ4yf1EaDEJWNJXECQUxLzIaINI0tRmrHEyDp38CWN7Er9IBDjco9VEa6i3DY0vD7/OgQcF3WEgfRPnKzMhLIyKMNCOwqDhvysS4iiaQuiyjiv9+/qbTE4gPqJQ0zC5YR3ksUlMrn8P5YxK3TrlvzZYXwwMId4LmXwWn8lQUVc8t9vQWOLWUgo079eXZerZnxMsgx1jLXF01lTLU5htYrL8LaxbOXmUWch7J2lOHvEnZgecUnPV06M5X2POPlryIxwW4MIYT1q990CPBhixG5R5m0+2vM1lsZOpDs2gI14VpEvjznts8QWKlW3xhmZKQ4zHMcpkVL/V2T4gSMLrXCC6hyjpbBGBMkeAIcL1m9bVAaoUnp9Arm4V5qZmFsJiry7kbmoeKgt/uq+WsqNBaMkwVb1BvXf3AWW+Mx+VpCZ2HrYyFv17TR2/a9rWn2l5xm2DZMCSwV+jS4eVTTzKM3O0YnIRR4U4R+BPqvO45IOauuV2gLdlvwfW9G4sOyBDVtAZLPgns/5s
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6BKRuboY+gfRpmAQahUoJsdqiN97Dib9ZToHU3/0urQtLI1w2dKrY/tRiY3A?=
 =?us-ascii?Q?3nArsBkkSf0zrW0M6f0nXa0BcvENYIOocmNDpUaBO2HCAx6J1JnH8BuXCbiP?=
 =?us-ascii?Q?MEW/RETKX1LK6ZDDcHHusldArhC1JgHZoq4/cmw9K3uV0/uB+99Z15oxE3sp?=
 =?us-ascii?Q?O5CSdXqTsyre0rKtm+v4YqDP2GFT4lgABkycx4E/Ajp4aD1C1flkIGOt+CpS?=
 =?us-ascii?Q?SkH+LkE1TuswMNINMxWza/R6vSkg4LjPVW5yy2YKqnKF+47icD9UZwBb7rg6?=
 =?us-ascii?Q?p6+i2iGcQrXUUWANZuCpVBz/9zTaLOtsHWRb9cKjTj3XYfMBMhTtpUZ1fjrL?=
 =?us-ascii?Q?VeLlyv8VkIqHsu72m6XuTNU2APReT1G3UooVbgxRI5jnuTTLLRZ+jGhsGy4V?=
 =?us-ascii?Q?u51HnyNTiIQPACwoK7+yf6SlTrdyEbHzO2YZqDDAJ3TUQiIytIK+ipxN+t1c?=
 =?us-ascii?Q?VUcu8HxvbLE7xQ+b/BRRFlfvWg73Xavxxfmep6BaT8w1Lh5jx62x0POaWQMZ?=
 =?us-ascii?Q?3K6cF/1wylZJiDrgbit07HOmv+TzExFOfgq7EIHiQDgV5jMg2RVg8od4rGDZ?=
 =?us-ascii?Q?6NiirGFvQofUAjQdUVzRyM6GLFfXro3mK3v5BvE2xfHKfhrWA8+syK60tFeY?=
 =?us-ascii?Q?BwQOdiOCOTS2IPUOTRltvOrvILpDn9AxneCt+EylB02ZE2hBdFjwafGlte3I?=
 =?us-ascii?Q?dfXfNM53PFl0QPLCHgYF5A9h5eecfYAuTacBvse+DHfrAOK5niCLWJRtmpjF?=
 =?us-ascii?Q?u6bQqdRWOTnD6wKb3kjZCAf2F0A4TJZEZW69wU3zhE091lEatK/RvB6+LWKW?=
 =?us-ascii?Q?CHnVBPH2Q+USfgaiBIudKAhQgSQAqx8RsO2EHqU0tISh4XhH6Z4OpB/wDakG?=
 =?us-ascii?Q?RNzS4lKE29HIBywKSQYGDcuCUP6Z4soAtJTXENeOmzCR5TSirux5/nZUIlML?=
 =?us-ascii?Q?yguPX45vNhFQ1DPPu9NXT+uvoYkbfGWuLy5fqdSnML/YfdPPNN8gzb49B+i5?=
 =?us-ascii?Q?5lzmQMfdVzHoXuFyVDrzDZtcDfRwUp3v8ZoZRKohVTMfr079NEU9VwWYFMNP?=
 =?us-ascii?Q?rEBtpG1eoRfLDXZZe7XG4krijKlWqKzatiteaK87Tddgt5uKLZEmwnqxYCwA?=
 =?us-ascii?Q?S3Kuc1MfIANvEh49Kgw6SOU6PGx8D5rOwQ44c5xylBbFLapKHmVLuFluirHT?=
 =?us-ascii?Q?9Sv+CdLBwgl++9WuT7tCM/yNZ8L7fSKim1Z7fwme3kqKmp5nVCT1xBQa11/h?=
 =?us-ascii?Q?ednQpK09VTYOKmvtQvVcwKDSfpyhSsxKDk4z68OYnukVbEauu9hVfNO25u0g?=
 =?us-ascii?Q?ZnmpUgkMeb0+aSy+sCAYLaLdJIWp/KmRtR+3GNzEAXo4CAIXxV9NAPIi8Yg+?=
 =?us-ascii?Q?IXdWyJpXvjVQ7PlA4fm0iLcYNTFC5/sLCCWLtg4kmhA8oRKuDBcueErhlmKa?=
 =?us-ascii?Q?+9rA4oWLw5Nx0/xaTg9et8kWMVqmL6dXh/D24/YG5krTyPLn7gFRqByVlN+2?=
 =?us-ascii?Q?XOKMBIVuyUwaUw48q0kyqGZ0kUgT3haNE3OWmuo+V2YplQz+REx11P30ZLfZ?=
 =?us-ascii?Q?ALwSoLWhZFHi0EdfOnLOBOCq3BJUE2qxcL3R259EnMIU9jSBW9UPda7BJDge?=
 =?us-ascii?Q?YW9gY0XA27c8X99jKsawM35nRF/RWKI63IMwbHUr1TQjvzSk24W8Ns+5gbsl?=
 =?us-ascii?Q?dy+PL7TquluXRaW1g3pENkgaa7jsVrtjthROEEKEZLv+Bgn7wtGRb8lNrFNo?=
 =?us-ascii?Q?Ox0Xjv/Z9Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: jG3dS4OdJgPgikIezlMPEFjlDJiSQnMWNVu8LA737xHkHL6EEoT6P/RwNjslNOQZXzUFxafJlDUMUIQFjtKokaGiV3CibWqd2LGHswz4op8HrcnfEzQJWjzp9t6KKziJ+a4RPu3llEQxEsYEvSK9dadli9yNGZJT2L6UhV1GRe0QN71T4GeBn9duieBos/Zn/efgIRaTwWXe2/ScII4qrwm/dy853DRoLTqsMwYEAvqmgpOGFgd/IZY+vDbi0OvZngReqmxdbWQI8Aj+ez0a8Vv4Ud9Yq6MRQ7aF4gjh/aI293+hBgw2BlGtiJq+p/ybDv6aTRfXswnc/KfyB3+9Og==
X-MS-Exchange-CrossTenant-Network-Message-Id: 33cd9efd-bfd4-4d03-ea3c-08dead14b9a8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 15:16:06.0004 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BL0BhjX5Vrt+iGWmKt8iCFVvUzAx6UB5c7l6I7qyReJjo8RAsIZ6ubpz1NVOLxAlryPMQh394udx8idLZHcwAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8176
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: AC1224F8858
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:replyto,ideak-desk.lan:mid];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	NEURAL_HAM(-0.00)[-0.995];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 05:44:21PM +0300, Jani Nikula wrote:
> On Tue, 28 Apr 2026, Imre Deak <imre.deak@intel.com> wrote:
> > Add link_recovery_reset() to make it explicit when link recovery is no
> > longer needed and the recovery state can be cleared.
> >
> > This also prepares for replacing the sequential link training failure
> > counter with an enum in a follow-up change.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_dp_link_training.c    | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index eb922dca69c5b..90bd1b0f1ab7d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1304,6 +1304,18 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
> >  	return link_recovery_autoretrain_allowed(link_training);
> >  }
> >  
> > +/**
> > + * link_recovery_reset - reset the link recovery state
> > + * @link_training: link training state
> > + *
> > + * Reset the link recovery state to indicate that no link recovery is
> > + * required.
> 
> What's link recovery? Same as autoretrain? Different?

Link recovery is the mechanism to recover the DP link after a link
training failure, either via the driver's autoretrain or if that's not
possbile via userspace modesets. This should be also explained in detail
in the link recovery DOC.

> It operates on the > same variable as autoretrain. Confused.

The seq_train_failure counter is converted later to an enum, to better
express what it actaully is: it's indicating the current state in the
link recovery sequence. The sequence should be also explained in detail
by the link recovery DOC and the new enum's documentation.

> 
> BR,
> Jani.
> 
> > + */
> > +static void link_recovery_reset(struct intel_dp_link_training *link_training)
> > +{
> > +	link_training->seq_train_failures = 0;
> > +}
> > +
> >  /**
> >   * intel_dp_stop_link_train - stop link training
> >   * @intel_dp: DP struct
> > @@ -1868,7 +1880,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
> >  		link_training->force_train_failure--;
> >  		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
> >  	} else if (passed) {
> > -		link_training->seq_train_failures = 0;
> > +		link_recovery_reset(link_training);
> >  		return;
> >  	}
> >  
> > @@ -2538,7 +2550,7 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
> >  void intel_dp_link_training_reset(struct intel_dp_link_training *link_training)
> >  {
> >  	link_training->retrain_disabled = false;
> > -	link_training->seq_train_failures = 0;
> > +	link_recovery_reset(link_training);
> >  }
> >  
> >  /**
> 
> -- 
> Jani Nikula, Intel
