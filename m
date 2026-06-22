Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q4lVBr5yOWq+tAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 19:37:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDD86B1843
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 19:37:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=kE+yuyPL;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C77F10E7B9;
	Mon, 22 Jun 2026 17:36:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2AF810E7B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2026 17:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782149819; x=1813685819;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Tpj7u20VUJOfN2416dNibqQaEkIajaTwVkrnxRRM2WM=;
 b=kE+yuyPLCdTnIAaksa6xw0ujAswVN7SxuDT2cH64ZdWTlnQOfs4pG7oi
 CCiU9Me1LFV2d2i2+cpuSoaZ6RNSnZxJ8Xwd9nqbXr2Lcyp3xhBFaZITf
 GpxbenIzvd5AFmSNJABcUrDmF1+CtZaCUo/L6cj5OE9Of3uUbotSf/erE
 kgBfWOh2ZYaPtAc8toKDuIYn2uq2D+Oad9E7tz/lLnoQ8HEQ98SATmlmP
 YJHzoCoapTo5TZXuw03/aRdt1/P7zt1w7BROsQwnwbisqgBd0gjKady66
 D5iMBsNGX7RQfIOujC2rBXnWLmDE6KkijoR2hsO1hdVPggCK7ETP9fh7X w==;
X-CSE-ConnectionGUID: h0RHcBB6QNaOAFfc5uRdtw==
X-CSE-MsgGUID: Q8tILqWRRrGx8nx7YbJ7Iw==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="94274981"
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="94274981"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 10:36:59 -0700
X-CSE-ConnectionGUID: 1z6lO6fxTcG/2G/jBuV5ZQ==
X-CSE-MsgGUID: McipNkUxT26m8O7M1IQ9Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="245149240"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 10:36:59 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 10:36:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 10:36:58 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.21) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 10:36:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bA1gPUG3ecparRTNHYkERzJlUdzoCIDmjaj10vZSlCxoHvXH+/SgzL+setZjE4hy9uUmGjtVHp2KIh85xrSGE0PLe77b1f/WDng7vwDBfNAIoR26Yeh6BJ1aIHNBQLFv+HeSqKPwK+8LkTbJkitipF49odLohfqgQ0X1sE2ZE5oswEpJS041Dy3s7ugq/mT/6kAzAa7iUARakHHKmqNYWLshTnY2DZJHnXBn0yCKbXTip4uxO3a2VISQcMyGAD5fxXoPEMc5PxOoNCKkdTanB/D835F1n9VHN7jroBaCLm/TeoWXqkDQZRO8YmLK1Pl1ulBiH7HlYBysveLeG5iNAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kQ05gs48h4mI2xu+cb2u4DwmquhAvqpbrBTeHJcIJWk=;
 b=qSYaPBduD2O3lymdumkzhVlDahpIFDtKW87Fc72OK/S041Y3PDVmc76/kJeFBqNp5acW3YGSHhnLktAqaPjUMsdFU3wtgbiHZba/oweKEpRwJt2EraL0+qHx8+VHSOfB4LHKhxzv3t95oAERhDiyLuxs4Ty1QENm+5ZL1XqQ1ho06406TQG3ppFDSrc/fTBDIFtSGPiMFR7ZOAcVOqz7a0RGtg0Zv7/xv5TT8SGT2jKM3tC2AjkXWG2CbyQPNvTZxkeds3UCnBqDJrZRuDq78365FPukttYBdc0zfopKKcj8IgDlBUY6PYhbQ9Tev2I3+pAu8xB2kjhbmb2Vk+lX9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by SJ0PR11MB4941.namprd11.prod.outlook.com (2603:10b6:a03:2d2::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Mon, 22 Jun
 2026 17:36:56 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0139.018; Mon, 22 Jun 2026
 17:36:56 +0000
Date: Mon, 22 Jun 2026 10:36:53 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>, Martin Hodo <martin.hodo@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Subject: Re: [PATCH] drm/i915/gem: Add missing nospec on parallel submit slot
Message-ID: <ajlytf69NQctYZoD@gsse-cloud1.jf.intel.com>
References: <20260622132539.165558-1-joonas.lahtinen@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260622132539.165558-1-joonas.lahtinen@linux.intel.com>
X-ClientProxiedBy: SJ2P220CA0008.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5da::18) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|SJ0PR11MB4941:EE_
X-MS-Office365-Filtering-Correlation-Id: 529ed814-7e48-4dd2-93e7-08ded084dabe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: 2P/O0t7EnoVbw1rJGpDumAewz0Th6b8ZlpRoDISOuzLqa+32a+unFmjYKmtekPrT/N4MiaAKmUwXaDQ2L9dHY1Qrppj5nVeoq3ZISO3M1dUg4I/PyqZHSUf/jck9brh1368BjacSzdVGMoRxdakAaNJhCMLRb2KRw5+UDpIVLhm2dsQUZPYCuTnouSQOnzDZvFSwkGlnNJPB3hZhwoXCRx82iC7fIV0JoV4vIZVh7wg4oW5Fl0hhEZGt+xfb0r0m/qmHctxu6EA/UQjIXSls4ttdYrP1zCsYPUNGrB/y5rBKiwMquEGpIpbYwcpDhEUGREJFKVaW9EaWxJHsXdCBImeYtrT+ogmki6h6fj9OEtHIFLaebE8SI5BWSSzjxdkHzdpGAJorWk/rnQmSx14L+mYKZ4lX3WAQrvAAE+KoH9/CcM5hy5QkYvxkuohVeq2UMNBTF3ofLhSYJdlciiLssgQrsDyccfKjGDAFpVf4PURixAHlgAG/4GPXbe+/HlOpM1M0xiXQoWr+6XL6qI43VQEGBhS4Pw3nemEY5I2CTeDmUON9SqcuYA1NNjDBnSOg2Cht1H4AiA0u1sheSYt97JcjaNL1YbF49T+O+AC+sLXpvEVSpG2TDV4Sf71Y34w7uPEh88grlvTFaDKh+lz09UXVqxEQ0cHdGqnjW97rgVs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VnvEhNlTXJzGBlRWrj6UibvA71w5y7m6TMAY51bKEsrX29S5z3xvXCRNBL+m?=
 =?us-ascii?Q?wOpNVI90EnBsuX5CLXOAI5+T4DhZpJIzKYCwnmYEC4ggeAWr17osAydGrIQo?=
 =?us-ascii?Q?eOV+PsLPaeqVX7v7dMv7bicpI1pZQgqV1bt0GIQO5o19Jb0VJziXjtMjKDAI?=
 =?us-ascii?Q?jPTj3ow2oB2zit+6gcWYX9l6IkFCTMYms8UFlRBGELl+owWYP01wPz1NUgPI?=
 =?us-ascii?Q?AKhCu7rMECStD8hW1JXgvJXHP8TnJRWdGjQ3zCtoL1FvpAwWz8G3z1wgOCtv?=
 =?us-ascii?Q?SxAqN6RMAPeF5yBypikqeHVPJ8KiYnfz8iwRFRR5eMigdu3oknD6smuDeseA?=
 =?us-ascii?Q?VeZxpcrYuMkiSpWC+y02A3tUuFf6ctba3sHgk6pnPKyttoYj35iiRSMcVY+j?=
 =?us-ascii?Q?MJWqGdiYs5OyeYAllspTK/TU/d1GCNKyZ8qbFxliVvlzp2jzicqyxMQ7l8Pp?=
 =?us-ascii?Q?HoeE7ACHSmsObf4QI4IHj9CuCDwmUsW1ZMRatIKRD1V+qF/yHRUXW1sCro/m?=
 =?us-ascii?Q?j0BTqNABYjNl76vR3DBaWQ8XHhiry5otyVMqsDHM7EzlnylWvea2jlXD6dyc?=
 =?us-ascii?Q?UMkhBcRS7wq/Gt3A1LE3Gvv0K80k2R0Kgi/vUY+mLMr1lIDS5tPxMzUD90Pz?=
 =?us-ascii?Q?CMJ6y3VlwLG9DCtYhRXVMIW8I8obrcseXsQvSbSuYTsn+f9d9g0QFSa/k5Wj?=
 =?us-ascii?Q?rPljJa7ai4xB4XqVxouRWeU5p8WXbQN5j87KxNxpowBHpJZpLrEWYV3FUShJ?=
 =?us-ascii?Q?A+muTsQSGjKeAq7zskCQRnFAEgK1oDVGW/J4qD5/HxlO+v+V7Wl7rlcV+CI7?=
 =?us-ascii?Q?YRViEUDBKyKQuaxKphNAU+ySQttAFiUgDzjCOXevXRWCoO+abRo4CFw46y48?=
 =?us-ascii?Q?XuJaAh6vsq2Mc3nrCoDAn3+rg5Z/TosbyXuLSw2UivEJ2lpILF8IX1F2sciO?=
 =?us-ascii?Q?y5OmxlGtYsTlHcjdy/Mmf2J4FGwV6Y9e84XmB369CpaJs1IigdUs32gWZhXX?=
 =?us-ascii?Q?J/9/4IQiSqqcqvkJIvAJPANYRSDocn1k1pf5hpDaGqVJKvsXMNTOQtS9hCnc?=
 =?us-ascii?Q?MbpiJi0pCdfv/MY1JI/M7vTEmc2pmhVriXDJ+xCvsbcKTqxh0srj2zsQm6DP?=
 =?us-ascii?Q?8crtP7MxLIyUGKrNIyqFOKKqpqH1B/Zbe5ScvfGLj4QblMVsq4XvxzoY3pQp?=
 =?us-ascii?Q?i1WHca5XWwjjGUbKIqP8CVTQIBR308YC4f1shOYyMlojkUj9DInMFzw2SSgT?=
 =?us-ascii?Q?Z+0FLrCdBJaW49zI6cmzL0rlk/L0N486UJPH+V9bzHgjebl2ULj9YWuSkqYN?=
 =?us-ascii?Q?dCMaTCJJM00CeAMqwtAYJ8UCDVMwG2576lBZHjSTb79cVx6URBSCuHM5DjkO?=
 =?us-ascii?Q?fpXo6gNJxxrfU2X+og7fZsV9ekz66r9AWPBFTFepJnvmw0bBvobFQ3nO/Wli?=
 =?us-ascii?Q?3HgtgtmnoQdF7AZ8m70yzVfru7Cj31zKjVEQ5S2Af79g8dV6n7+714PthnHj?=
 =?us-ascii?Q?xeuvyBbAEKQ5l/ak00V7QgkdlN5VoSR9YEDX5Qd25FCwILci7TXCcHz5saMj?=
 =?us-ascii?Q?oXy+mglPRlbZN9f2ZLHiDCQ6gpZFS/5MGmZV1yLsg1Ut61qqMH2cfTcR7LDe?=
 =?us-ascii?Q?HsjCujT3BSsPs8oleZaMMP21FRc60SJZcTRLi9KerZUhDGAos1+f4KPLOxNp?=
 =?us-ascii?Q?K5cP5QB8YI4CDyTYtOZ5vs1edBY8pd00PtoJoV2fGPkLhSR80tGOeTVdPXAz?=
 =?us-ascii?Q?3+uFsF6b8w=3D=3D?=
X-Exchange-RoutingPolicyChecked: UE6PIWDCNvBeLPBabO+wOcav8wtMraSQR7KDi116vHE5wM/5swTCedE4Xo4ulnsHi9XEeLkLF1hmWlqKJFfaDy+7ZtslHFNqzjjkCv9ES4YOCqHawX2O+Q7krJFO/oHdnajhEacNKaLJK74fAcXw5ry6z0ZPsN3ZRZ6XHKnB0+fMNyPOpVJq8ReSscVp56lSLrxUxlMiHnYxavAbRlYQIcZyDGlufSbDGLwbeL4MWaQ743+2IpHFdOXXwcevV207njYHQTtt5HT+qxtvbkgLWyZpp2+fi3cxGc9R+y6u6CHZuUQoDbiCYNWQUg0FEAFxLWeri5O8NitA0VhbMKrCoA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 529ed814-7e48-4dd2-93e7-08ded084dabe
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2026 17:36:55.9693 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nZl/J7CFWjASsI9BdJ/XFFRlFK7oR2NcJNHEIVgIkfxDiW6qz4jLjohbRTeVyD6jHwvYD6ak2NAzpj0I2WF03w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4941
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:martin.hodo@intel.com,m:tvrtko.ursulin@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3FDD86B1843

On Mon, Jun 22, 2026 at 04:25:39PM +0300, Joonas Lahtinen wrote:
> Add missing Spectre mitigation for userspace controlled parallel
> submission slot.
> 
> Discovered using AI-assisted static analysis confirmed by Intel
> Product Security.
> 
> Reported-by: Martin Hodo <martin.hodo@intel.com>
> Fixes: e5e32171a2cf ("drm/i915/guc: Connect UAPI to GuC multi-lrc interface")
> Cc: Matthew Brost <matthew.brost@intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 6ac0f23570f3..aeafe1742d30 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -613,6 +613,7 @@ set_proto_ctx_engines_parallel_submit(struct i915_user_extension __user *base,
>  		return -EINVAL;
>  	}
>  
> +	slot = array_index_nospec(slot, set->num_engines);
>  	if (set->engines[slot].type != I915_GEM_ENGINE_TYPE_INVALID) {
>  		drm_dbg(&i915->drm,
>  			"Invalid placement[%d], already occupied\n", slot);
> -- 
> 2.54.0
> 
