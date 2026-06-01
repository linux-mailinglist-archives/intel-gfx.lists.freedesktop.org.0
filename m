Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNlQAlZTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB0861C9EC
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBEA71130DD;
	Mon,  1 Jun 2026 09:39:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="COAle+3v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C92C1130D5;
 Mon,  1 Jun 2026 09:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306769; x=1811842769;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=XJcOFtAoROiLoW+nBs+lAWIBvga33X6aUY334j81UqA=;
 b=COAle+3vHmagVG585hfvEtuU4rc49GnJjo1dXYRwvUDYzHzozFbrwpb7
 +tHwpoIZHJdtWfP9gzAlf1BS7rUL8YzbbAAc0U4Cx7lkgCOFbTmGZUNbr
 GofQbG8VrRk+Gv833ntrPwG39L2ReS/4WFZ7LKn2MskjwrYhoyemO1696
 QSC5pEDHQLqyRHxbrdbjV5Tmb0DH1HcGMcwexFUAI++v3kdl10nOKNz0y
 J7UbeXLDVO7B71du141udC6uyvr/iCG5hJmbRA4/VI72Rker3GynwRVxy
 ouIPZvaJMIkCk8dxndGy7DJ1JefJjKeU+M4FeTgv0jLsf34Zi3irhkYwH Q==;
X-CSE-ConnectionGUID: nQ9yGDcvSoKVTbty49yaAA==
X-CSE-MsgGUID: fN0TgF+IQ+KZ8PcACxgGag==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80200599"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80200599"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:29 -0700
X-CSE-ConnectionGUID: /HSDObqWQQSD0uQVfnEgjw==
X-CSE-MsgGUID: PVinPiB9Rfy2K7eLsNUm+g==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:28 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.59)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s+UyRTko4i6j/tFB5Xf20n/jIbBUwFXvaSX7S6FQL503sfBE6uEjWOwMb/8C/uLa83urrzoCbXmslyRn76WYmsUqin5EeojPTZdjm5h1h7hlOh1XjuYgxicuEWhhcLYpi+7fBDmXxT07SwwaJHyXW5EADOkGqny7Fk0OCporg8qMkCIKVP+0CdeSTRgq5mnQvNs3G3L1hGe3nxc8HDSQIvGdEkxKfgGd9J4goI3ABa0P+e+AfrvbY6hwBO5ZwhkGcs+TGlUbAqbXgzjFNgKDtrnW4VSy7cCDbyVP3/7b+L8uBk1Efx5+7M731dFY0JWO12txf+h1sXOwI4zOrNUazg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dgb0tpWGx3HtICvO3KLBXOhOtOtXLFyMltzVOLvtOLA=;
 b=H5zkh9Df6AhrLdbQMdEUsWQcR1gabbmjAJWwKOIcYZvp/lMrG6VnoPBSVYlQ6XtTKpQSEeshZsnCYup5zD6HfuveeqxRjBMO4mXAFhYbqZ6k/P1uMqftilYCkf6Ae5EY21AQENtdwNk0mPdpjS7Ovj+O62cQB4Ar2LGlBjMr6WCVBuUj2a8G36SQqhImD132yaBVKxdyZ7BV+ZqICjKBkIlItlyx/3NxtIujOMvJPpVztmqchLBNTipBce7/Jl38vptRoXLzRaiJcrLf4gKm/Uo16S65X3FI+gZ1Zva0oOSbKPsjr7NXOyVd8qx9HAgSNxWm+8uwDLHVHEszrw5cbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:21 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:21 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 20/22] drm/i915/dp_link_training: Disallow autoretrains
 after failed modeset
Date: Mon, 1 Jun 2026 12:38:33 +0300
Message-ID: <20260601093836.3057345-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d1d3721-5eeb-4518-e716-08debfc1a89d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|6133799003|56012099006|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: vjwfhEPRYNqVjJzlvzCH1N4VCPwozbvuRnoH7Vm6d3KqCw1c5YfNBtx3iUqUEHHsx4S1ZKso6ZFt8JOv1Pul7CskzBSRsV2rBisfdm9LFaXNdnUwSOzT3xISL2qdZ09uvSneJboKpCOx0wfMo7rkwCSYjQZOmfMZMCw2WEINQfmSAnqEAm8NKjs8ez/PClnpOw35a3tNp7gg5llD/s3swafZgOMTKqDww9thvjFUXjlQiTPWxbyK3BMG6KGtzpBq1IgJhoGWO1s+fNTidXYuTQSN5wLZ7hAtBtETOVDgskRBev7LeOJwl2GFKZu7X8g4JkyfnDT+nQyngnJ6X2qQZSP8tBvYoFVXzQBHPvYPc4aOQ0wa0F1m/6+aLrNQoSKONv8zaYumwEWpWjg0bmkaxRbVwBfoVtK2N6rtsX/H3s0SQuUuAAwCN19ydAlQRF5bNc//smsCA/VYS1+ugf1LDnr4LEETWs6un4ELlgr4FCijx5xWp3hz/GgE1KzuyStYxAS4k/KN1A0WKsvAZlUt0Sf/CVpE8/e87+lK7BByrDZmUtfWUz8ImMcnOKgD8ON7vTFXaxJpgIf7Pk7zpK50sGc6YUS/e1Irs7qin4G8Mmrj02LkKKYiVlFk32cPNICkbyCXuBBmJjY6dq7Jfnq1cNmU74/4H7U2ouD7MrAci23igOq8NDI9vnG+Qv4+IxR/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(6133799003)(56012099006)(3023799007)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wGVDUk3vU7q/VwZsdihu6skOWE02cLgxRlYeHF4GUbOfpIr742EmemKZjYb+?=
 =?us-ascii?Q?yMU+7A1aOqFYaHGDDbGsJu46V2ZlMs2pzxZLz0TfnPM0ROiluAeF8Kzd2ihB?=
 =?us-ascii?Q?eAq6EAIHR41TnNKGDa5iBaQ7ZJBqXY4EUKz4fff+G2S0eyQepAkz1kZmNmWu?=
 =?us-ascii?Q?6OQ3SyP6tuZgRbDN6eKVZeBoj/15vSYNuuBXTyq+Gh47e8YC2PekXqY8FN5t?=
 =?us-ascii?Q?z3ieKzyPuoXqu2I6uvWkEwXnyIvfKJlZC2VWU7aSUk2IeLSkpG38VdDaRHnf?=
 =?us-ascii?Q?pEAKQon0EwSeHjIfwY7FKJh5qH0mKvN0BF5mtRNr3rRqZ5ct7BX1MwLS30N6?=
 =?us-ascii?Q?jcEbm4CdojduwHEL0RPsc/7Sxwn1LiGARUe7oibFJmYMqBwj6yaW4Ay5jhjk?=
 =?us-ascii?Q?aMT8aOnG2d7DbW1qvuBvr1eWgIjIEViN/b8MNfR+FmU8/x1YIdCx0cBhXgFD?=
 =?us-ascii?Q?nnGFGwDFou5yQyqCQb4ZW9NT3S0yLeiScrWaAiN0KyirAgrWtnOBQQzZiV22?=
 =?us-ascii?Q?bwF0PRlTjYAUeJZs75AHhFzAK746IKczI9It6f7J7/RMA2vmprwceD5hkUQW?=
 =?us-ascii?Q?59Y+9WBWrIP0EMXj8h82MZTx4/k2AtuorKSpVLUF+ColqdtlYSzP/ei0qk20?=
 =?us-ascii?Q?u7giGme5ayBkTLdH2a0cPNFIHL9iW5XmFXLwJWaLxQzS2xDR1NFqvjvFsOqZ?=
 =?us-ascii?Q?LBz7DUOozRmm6pd8+z4bepSAKtAuQYgcbZpc2cFN1T6q2GljrGXoA85Vf6+a?=
 =?us-ascii?Q?BL102g/el7AJYmb6Pk2Db/uz/dEvXb7mh+C+bzPqe3gfj8MmVLlBrW6TmlnG?=
 =?us-ascii?Q?4Sgh+XBhW4ffNjvTV2CIzX9oSLtoi3eUnAll0goZ5ua5sE+hMAS5ZKToLLxm?=
 =?us-ascii?Q?CSEtzX+GFfyI9eUplf9dvYtd9Qlh1p0JjyGtROyU4Asa5OoSsxvR7F3w9lSz?=
 =?us-ascii?Q?LeHjDolUEAoX//SE5BYc6x/c4NpiWUdvJH3bSeyE2sxBklgZDXTwetrvpZNp?=
 =?us-ascii?Q?Swtl+JEpUvICkAQg5Ffxur4XLNsLYpR9Qs0yivNgiOdVi46JVkiWwCE9DF42?=
 =?us-ascii?Q?torVoNvE2WNLqsN7EhxVFoGK8BKV6GYKjOaNwPqUoEL0KdHQ3IOirKOvbz0K?=
 =?us-ascii?Q?SFOXec64fBqnbKTtJ/40FdZX0HhF35dFOVcneoCCGQjpKk6KN8tY2mw5kcfg?=
 =?us-ascii?Q?pVMra/nn/6EiDF17rGzXHkruYu+gXCIFb+I3ADveDIzxiecji8SkyWmtUdwy?=
 =?us-ascii?Q?KX2vUk3lfevb1znSqXwJFnm22JkY63Cn3QqRFkmxFfeHznjI7W8NwkOAgNTw?=
 =?us-ascii?Q?Fy/uCFTgahPWtoVuuXIV+9XoQ5i9utLdFsld/de/PaYiV82Veulo2wfB8y09?=
 =?us-ascii?Q?TE6C8KNPnP0C9wNqPoFF1/U4ZOSfRacUdFfFnkoIW0I2NsdgsG9bpebqqmqL?=
 =?us-ascii?Q?AYetaP4b6igoZBrYiO3XWhyI8JyTJwnmytcRWwpJbZafD8DEFgMCy2fY8ACq?=
 =?us-ascii?Q?yxEYqszCc2q1SOw6sWIgQsPV59p2Mi0MuBwQDRxsex4oBCxxs6rYjyQCY/Hz?=
 =?us-ascii?Q?te1OpSh8+LTIXYMS4BznhXWgv7O7EibeyKQluiI3CekYAtUjXxkuv54yF8kh?=
 =?us-ascii?Q?H1HTiCgtmB2wwHamaxlT0Lw6tmyaqehFeUyctTD7KvJ25UWI9xenzSoghbSi?=
 =?us-ascii?Q?wWiVlCfoSttKfBWoeNPY6hFJStDrWO9Yi4+HdJQtFT39HYWfWGkOqG/4QyOd?=
 =?us-ascii?Q?EsQR0FYfKQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: RD56SChF+QZtUvlnBQ95jTFwLQ/4vpx5eXKi8NEBrTg+B8j1vp6ue6vDz4js5D+4LeAWaiviSlFK5U4uvV6KK87kYLinIkq43Pzh81O7SQ5CZIvtcJ9pcqLrkl+uDtKvOFWZbI5fuy/1+kGobF9IiK2yFQ4p86/P3IjDS5JdHD+2BcDwToSkI9D3yKPhJs7c6KGlpZbVTCZQA71BhuWpJ8rxAtdCM+p6fJh+5p7C40bNq+dH7CrEfb3oJO5lV9kAx7XDpjmG/GenlYI3Rm+VG7LuUpN2iZzKSeBtGzScz9eARGkXgnfitqvrfHpvhUUxc7q9Kw7wijOqPPuKU+Mv9A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d1d3721-5eeb-4518-e716-08debfc1a89d
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:21.3251 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Uzub7uY2JnFsXo4glyhk5euz6CRpQzmcoSqSW3SzIxeG5XPZIwFPlA82ELc777wkYoAHlzdH6ssAgmiYIJhEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AAB0861C9EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

intel_dp_check_link_state() and intel_dp_link_params_valid() perform
only a coarse validation of the link configuration used by the active
mode against the available configurations (as constrained by the link
training fallback code after a previous LT failure). Even if these
coarse checks find a seemingly usable configuration, the modeset check,
which performs full verification, may still fail.

Disallow further autoretrain attempts if an autoretrain modeset fails.
Further attempts would just reuse the same modeset parameters and fail
in the same way. Autoretrain will be reallowed unconditionally when the
sink reports a change in its capabilities. This allows an autoretrain to
proceed once both the link validation and modeset checks confirm a
usable configuration.

Also clarify in intel_dp_check_link_state() and
intel_dp_link_params_valid() that these checks are coarse and that a
full validation is only performed by the subsequent atomic modeset
check.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 95 ++++++++++++++++++-
 1 file changed, 94 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 0231ca0cea30c..77e7beb65cdd5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -100,6 +100,7 @@
  *   - link_recovery_autoretrain_allowed()
  *   - link_recovery_has_no_fallback()
  *   - link_recovery_mark_train_failure()
+ *   - link_recovery_mark_autoretrain_modeset_failure()
  *   - link_recovery_mark_no_fallback()
  *   - link_recovery_reset()
  */
@@ -1362,6 +1363,13 @@ link_recovery_has_no_fallback(struct intel_dp_link_training *link_training)
  * is no longer possible, via userspace modesets after fallback
  * selection.
  *
+ * Note that the error reported via this function is the error seen by
+ * the link training failure handler proper after an actual link
+ * training failure indicated by the sink device, and so the error and
+ * corresponding actions required are distinct from an autoretrain
+ * modeset failure. See link_recovery_mark_autoretrain_modeset_failure() to
+ * report a modeset failure.
+ *
  * See also:
  *   - DOC: DisplayPort link training
  */
@@ -1382,6 +1390,29 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
 	return link_recovery_autoretrain_allowed(link_training);
 }
 
+/*
+ * Record a failure of the autoretrain modeset before link training
+ * itself could run.
+ *
+ * Note that the error reported via this function and the corresponding
+ * expected actions are distinct from an actual link training failure:
+ * the modeset failed before a link training attempt could be performed.
+ * See link_recovery_mark_train_failure() to report an actual link
+ * training failure.
+ *
+ * Update the state to indicate that further recovery is to be delegated to
+ * userspace via a regular modeset.
+ *
+ * See also:
+ *   - DOC: DisplayPort link training
+ */
+static void
+link_recovery_mark_autoretrain_modeset_failure(struct intel_dp_link_training *link_training)
+{
+	if (link_recovery_autoretrain_allowed(link_training))
+		link_training->recovery_state = INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED;
+}
+
 /* Record that no more link fallback configuration is available. */
 static void
 link_recovery_mark_no_fallback(struct intel_dp_link_training *link_training)
@@ -2029,6 +2060,23 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 	 * FIXME: we need to synchronize the current link parameters with
 	 * hardware readout. Currently fast link training doesn't work on
 	 * boot-up.
+	 *
+	 * NOTE:
+	 * This may be called from both serialized (locked and synced against
+	 * async commit tails) and unserialized (e.g. HPD IRQ) contexts. It
+	 * uses the current max link limits as upper bounds to reject
+	 * obviously bogus values, even if those bounds may be observed in a
+	 * transient or slightly stale state.
+	 *
+	 * This is not a full validation of the link configuration. Even in
+	 * serialized contexts, additional constraints (e.g. source limitations,
+	 * bandwidth checks, and other atomic state dependencies) are only
+	 * verified during the atomic check of the subsequent commit.
+	 *
+	 * max_link_limits only provides independent upper bounds for rate and
+	 * lane count. Callers must not assume it is itself an allowed link
+	 * configuration. Although that happens to be true for now, it will
+	 * stop being guaranteed once fallback depends only on disabled configs.
 	 */
 	if (link_rate == 0 ||
 	    link_rate > intel_dp->link.max_rate)
@@ -2159,6 +2207,21 @@ static bool intel_dp_is_connected(struct intel_dp *intel_dp)
 		intel_dp->is_mst;
 }
 
+static void queue_modeset_retry_for_links_in_state(struct intel_atomic_state *state,
+						   struct intel_encoder *encoder,
+						   u8 pipe_mask)
+{
+	const struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state) {
+		if (!(BIT(crtc->pipe) & pipe_mask))
+			continue;
+
+		intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
+	}
+}
+
 static int intel_dp_retrain_link(struct intel_encoder *encoder,
 				 struct drm_modeset_acquire_ctx *ctx)
 {
@@ -2209,11 +2272,23 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 
 	intel_dp_link_training_set_force_retrain(link_training, false);
 
-	if (ret)
+	if (ret) {
 		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] link retraining failed: %pe\n",
 			    encoder->base.base.id, encoder->base.name,
 			    ERR_PTR(ret));
+		/*
+		 * intel_dp_needs_link_retrain() only performs a coarse check of
+		 * retrainability, so the modeset commit may still fail. Disable
+		 * further auto-retrain attempts in that case.
+		 *
+		 * A sink capability change may restore the retrainable state (see
+		 * intel_dp_update_sink_caps(), intel_dp_reset_link_params()),
+		 * allowing retraining to be attempted again.
+		 */
+		link_recovery_mark_autoretrain_modeset_failure(link_training);
+		queue_modeset_retry_for_links_in_state(state, encoder, pipe_mask);
+	}
 out:
 	drm_atomic_commit_put(&state->base);
 
@@ -2237,6 +2312,24 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	if (!intel_dp_is_connected(intel_dp))
 		return;
 
+	/*
+	 * NOTE:
+	 * This may race with an ongoing modeset updating the max link limits
+	 * and, with that, the link's retrainability, so
+	 * intel_dp_needs_link_retrain() may observe stale state.
+	 *
+	 * This is harmless: stale params captured as valid may spuriously
+	 * allow retraining here, but the decision is rechecked later in a
+	 * properly serialized context.
+	 *
+	 * Conversely, stale params captured as invalid may skip retraining,
+	 * but that can only happen before the modeset has completed its own
+	 * link training for the new, valid configuration, after which the
+	 * link state is rechecked.
+	 *
+	 * See intel_dp_link_params_valid() for capturing and validating the
+	 * params.
+	 */
 	if (!intel_dp_needs_link_retrain(intel_dp))
 		return;
 
-- 
2.49.1

