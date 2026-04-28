Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BR5Mmuu8GkWXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAAE485616
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0331410ECC6;
	Tue, 28 Apr 2026 12:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lvAIWeAT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F9010ECE1;
 Tue, 28 Apr 2026 12:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380969; x=1808916969;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=cx+a52WUxNRlfnGCEX2aCgOo9CuHBgDN37bqIRrQcMY=;
 b=lvAIWeATA5p7/xgRfl8f17Wt7ZDPabMIN4WUNTQpx6x+Q7MzSBa8JLPj
 wxZIEj8MHeBcz6E9cP4ePlSpPz5z2NRo778rXf1kHstBTtgybZAJ/6Ivw
 FxZaLgswblgZUQDSIhH3oObbheFdZBWns1wv1D2fd0TN5m5NsG0Df8Bdq
 czuyBIunU4s8AXvsF177wUNb3EethkyfJVHWVdNeyTAEClnxCdwwNdKRP
 CzcUuSLFmK7l42suoAChdAzrFLYC/ypMU1Y+/UGogBmNh5etwkI+VQf88
 2XMW6acHRzdCl8cCzABXnECV4X5ncuZiSVi0kWmgNHz72Fj10cyA1sKB6 g==;
X-CSE-ConnectionGUID: J3P4nNgkSe2RsirMBr9A1w==
X-CSE-MsgGUID: gTP7mZVeSWWQ3Iwr0GQjeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203399"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203399"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:09 -0700
X-CSE-ConnectionGUID: rmNUPzA3TU+P378WJBbItw==
X-CSE-MsgGUID: GeEnrTY/SHujdnrPD6zUgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234245183"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:09 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:08 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:56:08 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y54MIAa06WKRVLT5JpCCz5TLJWUGH58NxTpE8CM0lROrp6flpWEiKLEZTuscOTgjL8l+hS60RMJ4UELmaMR/lelt5E0Y5iaLaWnqkdqST7gzVRqkRhXtSs6QAHWE0TQIbtSNV56o+1hGfj6c5zs7fH6ZEzeU4w4GCXEgcXRVWYoekgORUD6EJhnsUuIlx+FGfPGaJShoCuGRnV7otcJsA6aeFSZJGTCIey/tSN+Z31F973CkYzcdSpSPooZY2t51+UJnszRxJs3PQYrY+3nikavWBf1LLX4T3ore9MJCqbCO8Ximw3OJC9qctCyspk7D0nP4+W+a5EyGDqWAPyWUdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Dk0P85WmL+fy8ylex12STHM/Agi3b3w5lSoY2CqhUY=;
 b=KQvJeHc9eGD9dvxWqbxIZZ1zUMJcHE+Gpi4cE90Xq/TfRhl5Kdl2ZIJqAeISMdcSKHON35jn/Csd6lY9mzzMF1lklmqsaesyw65WtT7po8x6AZiKlBVS+xOQy9rOBtKRkvBt8RahEOz7ZP0QwGHT8g6p/1+hLhVAF5O4vpJRDpOuEF8YlrVrVMTkYe30Q+Hwoqck50YCDIQNbRwhmECVLG+y0sGfsCai6oG+Q+V1k80viftQEnGr56eitVA9ab2FLi9AtCbYmtOYzw2Mp1AmcB/ymHIKkNt8ZbqZzmPVfoIN3tpgqKql2dUslFq4u5RXnzopefY5QQeZRT74qgC0EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:56:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:56:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 105/108] drm/i915/kunit: Export link training and caps funcs
 for testing
Date: Tue, 28 Apr 2026 15:52:26 +0300
Message-ID: <20260428125233.1664668-106-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: 32e0823e-f04e-4ed8-26bd-08dea5256eb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: Ze+B9Ov4Olrry4eb3LAEqCRviWEbRv9PyAuliGvEOYv/QhJazEe4bp5/ykTi/UmbwpR9lf7Oi2DLdY2n8QOEiQg3EoKOa4KrolCLZJUls/l2cd+9WgribJUzTaECM4zXbDk58b2zxnULtjmLH9STQFalXbuyw4V+LvExUgN/EV6OscdSWVwhFow/6dcf7CT3aLN4XwERmcedAEqkelB6Yi7wuyEWnjYD9whWeBOWq+VLBa5DqiGID3OCnpEm2w8/i1TulR0bvZyR5e16ZfpHtFGm5NRCfhRc8Mv51G2+B7zWTI1GWgg4NfdNnrPU+sRriDG1yLQPI70Jtu2F9WfXBwnctQoRT/S/WNq+FDB3/zbur6PQa3xpAsKQgvrSkhc3MPWh1MlUiGLYgAwRtz8Wcwj1xOJPEq1ucg7lx5MStGpk0sKpeC4i9VV/bOO78tukcLt/dbHWRwZ2IpbwzCIkPcC8sJ6gUfbFUxqWsRpGQGTJRGeWbcDzuIQwhlesxF64CUP4xIp8DpVr2xmhBlicSJ1cR2DpQyBCG/OM72ydtT5hCvJlkn1q5gBeSfEHpSwMaQQZh/5k/8iJ5E6dOX6AHs1dDL6+w8mUxTjJEpgqB53tRW56S7Mr29y11znTbZZP51TTAo43VJLqpLdAQ1P5ikRbXFesVh/1wXwfXyF3yufjkhVerMZJjZQtQHRdalwx7c+eEhatCxwxU0RkLZaePfRSOgOTtiLl2glWjrlZJQ0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qMtu1c1CetJNt8BN4H8czrKVyMqVRVj3hKT09trK3e/UuojgqZ7Q6woVCCyv?=
 =?us-ascii?Q?o6kE1NytkPRS3rc5un6Ib1kuqY8hRbls13Ya40mOolT1+w6kuZ8Irb9zZwR2?=
 =?us-ascii?Q?DTDAzUM5JxgAr2pffdA/uMQlAUk81W2a7x7jjadqLoAhkuvdE0pOKmxSdsqM?=
 =?us-ascii?Q?4pkkHZi4NPqJzgpMxF0f/gpgid0Rjts0urv/F1qVvmFcZT53kofTQazTFhVj?=
 =?us-ascii?Q?8Dq0RJyQ6FgJjTAuUW7E1yXVGapqxELk1e7afgwJVrKQ7CDoTbyDLuNBgE5T?=
 =?us-ascii?Q?jZ5NwqLY5XNsJ3RXm5AbcejkHnleIbc7XX5yaig/zemLMf2kKy5YAnSLdc3+?=
 =?us-ascii?Q?7U9BSseHo0/4SyfCcA5vVbPODWCURMfBI3A3gEfiqBtBn6vvgsRaXWhbEMU6?=
 =?us-ascii?Q?o4S+3F3fuS27F95Tgwz8ofBE+MDDtsks3EIW9jnAOde6psqhN7bIcgl9buDM?=
 =?us-ascii?Q?sr/oNhq6Hsk9TCvrwJIftLX8wYl8spkIB+4leMdZ4hUXzQlaS5Od3vpLJD/J?=
 =?us-ascii?Q?M+eYkZGseVMAFNqRVhyrOE7Ra7b6L4Mow8k1MWA0cO1Qnb+aHNIHJwKBCGg/?=
 =?us-ascii?Q?NDCdQ/pNGU0vwpR8JM1O20rT+wVMQ7h4UorkiQsFdkshCL+JnhjpuJ5EHsgo?=
 =?us-ascii?Q?sv7JeV/Pp06TU3CcByDcO0mI7+5RNIpu1FtTKJqaQ/6wTqoaPmpar0j/wNlA?=
 =?us-ascii?Q?z4F5EQoFglmP56lWXwYGGHUGLFeZXsAYrDC1k0wq6gSJyXqqxQMNev/lRyY+?=
 =?us-ascii?Q?bseJFlK6w6kid+0m1zTbps/ClNpfy8wibbmoaOK8AaIM3ugceZh3wOL9gvDH?=
 =?us-ascii?Q?OmE3FOoE1elRRpjRhQcHV2kT/Y5s1sCzSBm8bcP5QqS/p+NhS4osLsjAzv7J?=
 =?us-ascii?Q?Xkd8LRniNAxgPxKpv35GJxbccU1VcOluZuPRkDwxYL1DK/AJIMmjtyazH0tI?=
 =?us-ascii?Q?lwqLoOV61YFnLH1qGHT0d3xsSD5aob+1bPSRUlYwwEHYSWjmdLtLeqVU3IYW?=
 =?us-ascii?Q?rQ1S6VPCe+IG93EJR4i/DEmeCTuzHFaIwkQyhaRI99RVHfZxFMrFDfkRAgmV?=
 =?us-ascii?Q?naQ3CremOrWvFJc1Iq7B812RP1cib7hDABQE5dYnQ7E9cMbW/62tmXPHm8jd?=
 =?us-ascii?Q?eA8DUcicGs2gDB/aMNHc4zJfRhCjOF0HeCE07qbgJ0Xc6C8OfpUYvQEExntg?=
 =?us-ascii?Q?f+9wNOS3uZITR7ATB3yZ4ld+etcC/mNel/2dVcZI6ZmkmkxStVVhdxHTSPaA?=
 =?us-ascii?Q?sPKbyiGxDM6u0Xdt3405MKwXqgooFcxNm7AvipdUdiB2T9rxy2vh7x75jFSg?=
 =?us-ascii?Q?lTxjTP6YBPH2uYWjsbJGjZb1PV12F4IjDkiAFiVWcnTkgGVVy4ITEX9npz/l?=
 =?us-ascii?Q?8a5U7q1qO+PFQDp0ZB848Oi6ad9yX4m6R3rCZNaldaC2nSHjWUUIg3C1N0mh?=
 =?us-ascii?Q?1OhneVbgel8BNA+GVfld1FU6J6icjVNlO4IFgmXBQnaGOhRQyaSII/a/3u+6?=
 =?us-ascii?Q?/MV2xRnqhQplp30bpaJPYBg/XrhMBm1Uatj7wqBKYduHn9WzOblVyWFsrWhg?=
 =?us-ascii?Q?AAYA9vq3a6ZegcKX2wiM2uyghjjPrYznjd/945ifPZCp/n98MeXPrP9Gk1YP?=
 =?us-ascii?Q?8MYDBER0TnNFvvW01XB/DjyJ5qy8AKWN+KDQPcma/SVeuarL9CKEnHu6cInW?=
 =?us-ascii?Q?1ha7VA5YyPZF26HLKBiDtQK4jP43lXwyvnmjNyyetgPhJhjF+KpAcnHdp6Gw?=
 =?us-ascii?Q?ZXQUaGJDgA=3D=3D?=
X-Exchange-RoutingPolicyChecked: AtJ4A6dLWwyOgv4fZV6I2jrzhAPdm+/lLEPsLxkGTF+c4JuYpNfVPe3S1EW6hahly6qHbBiUXzjFH0RLq1JS9bihMCEeXY/Su17djIAN0AR8CoOdXx5BhSY/+VFWJWwAfbI0jNFlePBPfBcY+YEuRR4XPliKSAeTYl68Ivmcp5XpUUwauN/i3g8GsbTg+M2sFFiMzkpDPBpDK2jCT7WBoLEPvpiu2mpBn7kQhh+GShFQfYYSkWnCgWPU9TMnpS591RG6in1GTdeZ5S/NlWho1Zvo5vIdZi6/R2M/qAPeEGr///h9zJwewMf0GqGdqbO5Dga7NybJUN++Vjo2+8rXgQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 32e0823e-f04e-4ed8-26bd-08dea5256eb6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:32.5162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HNTaQerlKqvG3cs5qC7fqSt2VQvQu4NGqxuQTRLxbuxoX1WuJoxz9UOgLSMCFxkjxiRE2HuJcTbV11l5uZNiYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
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
X-Rspamd-Queue-Id: 7AAAE485616
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Export the link caps and link training helpers needed by the DP link
KUnit tests.

Use test ops tables instead of exporting the helpers directly, avoiding
symbol name collisions between the i915 and xe builds of the shared
display code.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 29 +++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h | 36 +++++++++++++++++++
 .../drm/i915/display/intel_dp_link_training.c | 36 +++++++++++++++++--
 .../drm/i915/display/intel_dp_link_training.h | 29 +++++++++++++++
 .../i915/display/tests/intel_dp_link_test.c   | 17 +++++++++
 5 files changed, 145 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index e7f3d40c5ec08..b2a6c9a0d981b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -1721,3 +1721,32 @@ void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps)
 {
 	kfree(link_caps);
 }
+
+#if IS_ENABLED(CONFIG_KUNIT)
+
+#define __INIT_MEMBER(__name, __fn) \
+	.__name = __fn,
+
+#define INTEL_DP_LINK_CAPS_TEST_OPS_INIT \
+	INTEL_DP_LINK_CAPS_TEST_OPS_MEMBERS(__INIT_MEMBER)
+
+#ifdef I915
+
+const struct intel_dp_link_caps_test_ops i915_display_dp_link_caps_test_ops = {
+	INTEL_DP_LINK_CAPS_TEST_OPS_INIT
+};
+EXPORT_SYMBOL(i915_display_dp_link_caps_test_ops);
+
+#else
+
+const struct intel_dp_link_caps_test_ops intel_display_dp_link_caps_test_ops = {
+	INTEL_DP_LINK_CAPS_TEST_OPS_INIT
+};
+EXPORT_SYMBOL(intel_display_dp_link_caps_test_ops);
+
+#endif	/* I915 */
+
+#undef INTEL_DP_LINK_CAPS_TEST_OPS_INIT
+#undef __INIT_MEMBER
+
+#endif	/* CONFIG_KUNIT */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index da2eb1f7453a0..892559484fdca 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -223,4 +223,40 @@ void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
 void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
 
+#if IS_ENABLED(CONFIG_KUNIT)
+
+#define INTEL_DP_LINK_CAPS_TEST_OPS_MEMBERS(__X) \
+	__X(config_order_for_connector,	intel_dp_link_caps_config_order_for_connector) \
+	__X(get_config_by_pos,		intel_dp_link_caps_get_config_by_pos) \
+	__X(get_allowed_config_mask,	intel_dp_link_caps_get_allowed_config_mask) \
+	__X(find_allowed_config_idx,	intel_dp_link_caps_find_allowed_config_idx) \
+	__X(set_max_limits,		intel_dp_link_caps_set_max_limits) \
+	__X(get_max_limits,		intel_dp_link_caps_get_max_limits) \
+	__X(reset_max_limits,		intel_dp_link_caps_reset_max_limits) \
+	__X(disable_config,		intel_dp_link_caps_disable_config) \
+	__X(update,			intel_dp_link_caps_update) \
+	__X(init,			intel_dp_link_caps_init) \
+	__X(cleanup,			intel_dp_link_caps_cleanup)
+
+#define __DECLARE_MEMBER(__name, __fn) \
+	typeof(__fn) *__name;
+
+#define INTEL_DP_LINK_CAPS_TEST_OPS_DECLARE \
+	INTEL_DP_LINK_CAPS_TEST_OPS_MEMBERS(__DECLARE_MEMBER)
+
+struct intel_dp_link_caps_test_ops {
+	INTEL_DP_LINK_CAPS_TEST_OPS_DECLARE
+};
+
+#undef INTEL_DP_LINK_CAPS_TEST_OPS_DECLARE
+#undef __DECLARE_MEMBER
+
+#ifdef I915
+extern const struct intel_dp_link_caps_test_ops i915_display_dp_link_caps_test_ops;
+#else
+extern const struct intel_dp_link_caps_test_ops intel_display_dp_link_caps_test_ops;
+#endif	/* I915 */
+
+#endif	/* CONFIG_KUNIT */
+
 #endif /* __INTEL_DP_LINK_CAPS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index c47d2bc84460a..fd249e4ebd1ce 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -21,6 +21,8 @@
  * IN THE SOFTWARE.
  */
 
+#include <kunit/visibility.h>
+
 #include <linux/debugfs.h>
 #include <linux/iopoll.h>
 
@@ -1948,8 +1950,9 @@ static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crt
 							     new_link_rate, new_lane_count);
 }
 
-static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
-						   const struct intel_crtc_state *crtc_state)
+VISIBLE_IF_KUNIT
+int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
+					    const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
@@ -2906,3 +2909,32 @@ void intel_dp_link_training_cleanup(struct intel_dp_link_training *link_training
 {
 	kfree(link_training);
 }
+
+#if IS_ENABLED(CONFIG_KUNIT)
+
+#define __INIT_MEMBER(__name, __fn) \
+	.__name = __fn,
+
+#define INTEL_DP_LINK_TRAINING_TEST_OPS_INIT \
+	INTEL_DP_LINK_TRAINING_TEST_OPS_MEMBERS(__INIT_MEMBER)
+
+#ifdef I915
+
+const struct intel_dp_link_training_test_ops i915_display_dp_link_training_test_ops = {
+	INTEL_DP_LINK_TRAINING_TEST_OPS_INIT
+};
+EXPORT_SYMBOL(i915_display_dp_link_training_test_ops);
+
+#else
+
+const struct intel_dp_link_training_test_ops intel_display_dp_link_training_test_ops = {
+	INTEL_DP_LINK_TRAINING_TEST_OPS_INIT
+};
+EXPORT_SYMBOL(intel_display_dp_link_training_test_ops);
+
+#endif	/* I915 */
+
+#undef INTEL_DP_LINK_TRAINING_TEST_OPS_INIT
+#undef __INIT_MEMBER
+
+#endif	/* CONFIG_KUNIT */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index f80e979f7436c..f4c758b8c71e1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -70,4 +70,33 @@ void intel_dp_link_training_reset(struct intel_dp_link_training *link_training);
 struct intel_dp_link_training *intel_dp_link_training_init(struct intel_dp *intel_dp);
 void intel_dp_link_training_cleanup(struct intel_dp_link_training *link_training);
 
+#if IS_ENABLED(CONFIG_KUNIT)
+
+int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
+					    const struct intel_crtc_state *crtc_state);
+
+#define INTEL_DP_LINK_TRAINING_TEST_OPS_MEMBERS(__X) \
+	__X(get_fallback_values,	intel_dp_get_link_train_fallback_values)
+
+#define __DECLARE_MEMBER(__name, __fn) \
+	typeof(__fn) *__name;
+
+#define INTEL_DP_LINK_TRAINING_TEST_OPS_DECLARE \
+	INTEL_DP_LINK_TRAINING_TEST_OPS_MEMBERS(__DECLARE_MEMBER)
+
+struct intel_dp_link_training_test_ops {
+	INTEL_DP_LINK_TRAINING_TEST_OPS_DECLARE
+};
+
+#undef INTEL_DP_LINK_TRAINING_TEST_OPS_DECLARE
+#undef __DECLARE_MEMBER
+
+#ifdef I915
+extern const struct intel_dp_link_training_test_ops i915_display_dp_link_training_test_ops;
+#else
+extern const struct intel_dp_link_training_test_ops intel_display_dp_link_training_test_ops;
+#endif	/* I915 */
+
+#endif	/* CONFIG_KUNIT */
+
 #endif /* __INTEL_DP_LINK_TRAINING_H__ */
diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index 83f09d8cc4aeb..15179b4d08d1a 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -17,6 +17,8 @@
 #include "intel_connector.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
+#include "intel_dp_link_caps.h"
+#include "intel_dp_link_training.h"
 
 struct test_ctx {
 	struct {
@@ -30,6 +32,9 @@ struct test_ctx {
 		struct intel_crtc_state crtc_state;
 	} dev;
 
+	const struct intel_dp_link_caps_test_ops *link_caps_ops;
+	const struct intel_dp_link_training_test_ops *link_training_ops;
+
 	struct rnd_state rnd;
 };
 
@@ -61,6 +66,8 @@ static int intel_dp_link_test_init(struct kunit *test)
 	test_ctx.dev.connector.encoder = encoder;
 	test_ctx.dev.dp.attached_connector = &test_ctx.dev.connector;
 
+	test_ctx.dev.dp.link.caps = test_ctx.link_caps_ops->init(&test_ctx.dev.dp);
+
 	test->priv = &test_ctx;
 
 	return 0;
@@ -68,10 +75,20 @@ static int intel_dp_link_test_init(struct kunit *test)
 
 static void intel_dp_link_test_exit(struct kunit *test)
 {
+	struct test_ctx *ctx = test->priv;
+
+	ctx->link_caps_ops->cleanup(ctx->dev.dp.link.caps);
 }
 
 static int intel_dp_link_test_suite_init(struct kunit_suite *test_suite)
 {
+#ifdef I915
+	test_ctx.link_caps_ops = &i915_display_dp_link_caps_test_ops;
+	test_ctx.link_training_ops = &i915_display_dp_link_training_test_ops;
+#else
+	test_ctx.link_caps_ops = &intel_display_dp_link_caps_test_ops;
+	test_ctx.link_training_ops = &intel_display_dp_link_training_test_ops;
+#endif
 	prandom_seed_state(&test_ctx.rnd, 0);
 
 	return 0;
-- 
2.49.1

