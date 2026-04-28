Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HYJLbmt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0D4485235
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E0310EB7A;
	Tue, 28 Apr 2026 12:53:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y6brJKEN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7200810EB9C;
 Tue, 28 Apr 2026 12:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380790; x=1808916790;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=NzbTTMZFy2Isaryi3QfJw4u6jVgvpAPAqWi4Ikf0c8s=;
 b=Y6brJKENzTV0QQou7haHKp9tw69Xloq3p7YazAHr8phmTc3rRSGB9nLs
 ILb3UBOwOA8GqqTfaemZfL+ypxW5/gBmJpS4kuvAT5wtUl/yuV2QUCb3I
 jr/Akecb4xWYHKRtUfOGybZcbcDbPakt0OcxlKKmQ81jK4xHblNyG0R5g
 70HzvIibktf8OnhVEugREYmvcT0VxgrIgYpkJM0qM5yZsVOILwuKWMf58
 wlqzXE2nGT55J27ggl9yrvnbvqJWGUxlRFjzoZI6Iem0flmSyuH3MuucK
 Gtb9uqWuVq4hHvacclGTR69LCa5t73glV/wVNZELdiTz8fi1cQzBI32aO g==;
X-CSE-ConnectionGUID: 9PNnhnpiSHiEhh4YhiJZmg==
X-CSE-MsgGUID: rlM3L1ofSCeeSMChZE7fUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203055"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203055"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:10 -0700
X-CSE-ConnectionGUID: LNKsOxxXQtSKM4Gs0D9jGg==
X-CSE-MsgGUID: LcXWZZE0TiKIfs2iw9LCzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234243963"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:09 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:09 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.31) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P1tCfGaSsyWQgnuu9PuboC5tTy1zFEHF9dMMrnSVcDuD/xR4e4+e9qDkes7C2EEiJI+JNkRP+JpyXVpk3q0/4phbxuKsDKRfXK0Zdc3YGp0/ie0Ug2XM2Apr07sNR6VqyI7FIsy3pjGbZeWPzMz0TtUZ/VtXUsxtDi/FUeBb3PU60rEqx+19ThvjR9I85X4ksMUxF8OvnSsfKd1tTDeSGlzUOil6Y8FfVKPPqhBPj9HgIDgYMOSJnzJqSmJ7f2rz8rbtx2egz2q0nsSKfoBStxOrA656uU59GBUX0q53i3mJsbN8r8z0bvHPLuPdL05rQOE1n2EzFGC5VqwrECa8dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6XdXyG8edKhwjaH/UNPd5ybNR54PW7DsPIMwoDk1y/w=;
 b=ak2EJ3uinhRKzW+m2x2CBXbaNgIOHPNXvFuD8k1SU/GqoyiFCtTE62SiLVrxybFsvICuq32t+qvE8PpqCDV/Gvlqe+17yzI/JLi0c1AEblthmXUAx5K52sC6faTiHq/fMF8Tk+LGYVE72p+L3N+AgHx3oCXPJtpdodX1qZvjG7sTFD1ng8sDkYprPaDH6cqQpz3j3kpmcg3XoO9KCYnd/+z3uFlsWIw1ykVt/OOZQhbMawf1N0u+WeVPl4IArE2vzWHF4+CTXKhlDUcD/p972DYcaAUykudkFv3uLlXT6nLKfiTQwXVQKheqMZRTXwgVtCrPVZZ+K1gSt30ooUAMew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:53:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:05 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 015/108] drm/i915/dp_link_training: Add helper to query
 pending autoretrain
Date: Tue, 28 Apr 2026 15:50:56 +0300
Message-ID: <20260428125233.1664668-16-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: e092838b-ad83-4902-93f7-08dea5251717
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: NnVYLdagL7sHnCj/uCLdJuF0OTHX/GXHlvAA6VdamH9x/ttrJ3WkRzwaHIT22IHctSV756h8futBeOMbtlgePiq9BquCm+Pr/1Iu4n3RJftIGVSDu1yV+JQd1YUH5HcQOD+yNOvKIXT3c4gFZwgzUCksN88Ex4nQGwZ9/RhcGqfwC7J+DG5/BQU5B0SFbdgofpUUaoPCLpcWUVlraE3Pxg3/l1YMLsECagbNOc+/aj3UhzVRkaLsAq3SF0pZsM75ly04Bn77cewzHxK9JcFURf0UEuW5b3FfXIlR+aq3sTyKRk0nZxCKIzjnWasDPnnfJ+n9cND7pmpECDpcK0gr/zL9atFkI5jE75hSFaR5oo6sypQ+9IUZQArOJbPjwtBOqE5h2UDnizWnBOtmcgnlPcLpBL2Gr+VfpJv3RTuCQOrQ1tDmpGTe8Z0yadvXC7Z8tdvPatAbBm09W0V/VwuKMjGAdW4L1s9t2YRu6zX1NoRKL13ngyREsddYISLcbd0F+bAyYg3fNjURrnXM1PLVERRfOLteiIeFaPiVM+gOL5ynDs41t3IRydxE3Ax6PdWR1zk0s8gbBBUJPuFJrv2mBx34OjRPJkUe8um+dVi4tAaJhfmljw+xjT8y1Y+HOxhT1+RgqK79+d57cmscI1yDkQ8l9sqeyg5T58UImr37Ga4U6A7dUgAvz/tX4objoUb77XMqvsFEsNI3w01aLgKhzEcdCWWoZzuwqDi90sKx6ns=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LBHdJEu1RrKC6tFH0aXjQ1RGRta5VgVfAkRBAFEP8ZTg5YC84AMa+/C713FQ?=
 =?us-ascii?Q?y4573T9MKa0HRanH2PbVdQ3ZyULpAWPw9eRTjv7LuSACmfXTzplwBobaCjMq?=
 =?us-ascii?Q?AL7Q07ikqhpWXrcfXqERotXJWOcMWockqgeQrJBmIbkTcPBAPGGu9AMkSyeN?=
 =?us-ascii?Q?ZPZeGQVCTJPSTlXq/AJzYXVINKuh+78pIbgYazW+Fzf1kjvpsCBaYiQ+JUYG?=
 =?us-ascii?Q?9bocxAILXP3PxBpa/S6RRk/yNIVCuXd1ridJsnL/VC73APaCpEn2f9dKIHc/?=
 =?us-ascii?Q?T5574ZeYXrqxvSJYtS0d3vNaG6iVSSd+dhHnelsLGDQPVn5ZQAdNfql0Htom?=
 =?us-ascii?Q?VUH1NQrZZnlW6WpCGtwFM/biSu92Jymtx78eetNCsCxexxjilryZr/H+77xb?=
 =?us-ascii?Q?5dnZJD+VxsTMyvI64nZTVyrj5ebR8Q7eXGtaLCzNXA8PRgGH6s/hdYOwHg4X?=
 =?us-ascii?Q?YUQc7YpbPaiv0WRQ9TDYxmnzt/8M8D5eU+o9SfJJ9+jBeJGMjJdObKkBIyrz?=
 =?us-ascii?Q?kOnCi6hjQNxkz2vP7FfwF4TJ41uPa2+nucyMiMR6qlyjK0ZVmbJVGEvYfc+L?=
 =?us-ascii?Q?w+AlnkKidQ+hK/a6aR4bnJVej3mBjeJdAjrgyMOqnqsmf0LThsSr9OPiVSbv?=
 =?us-ascii?Q?s0Nc91Ss6OrTYone+6mMqwWLWldrd21um17ugpp1BEAfm1OUuUj5M8IJGfni?=
 =?us-ascii?Q?rM5dLuxtl0sBeocMgWq8sFpyynizHhGaJuW40kw80GuH/PeGQ98ALzXUSi+g?=
 =?us-ascii?Q?lFQ/QyoFWYu5cpoebWltAsEvnxniwyF1qTBuYabWuQUxcsLEWgvvuoVQaQpQ?=
 =?us-ascii?Q?lTlFjCAGOP6cDNF90dQlwbKe21Jm4/uUTjga+RBx4wXpN80CKi3X4wdlfWF/?=
 =?us-ascii?Q?VboeUp26/WeGtrkM5FIrVRV/6IYhbVDcw4EuTCD4WG1RuDqzJHrD2ugGXUP3?=
 =?us-ascii?Q?e8gI+xgapdzJ6nkKuxSCmKvSqV4+OxQove+BnZfv5yXtNL55KGLR6Hc7KXLa?=
 =?us-ascii?Q?3cvIjBjqx1psiMuaom7Begub3MjxVR/TB7S8DYauJt462wBqxX8K2x6OL7w3?=
 =?us-ascii?Q?t9R2pKfIh/+GIbov/ytu5RkAyNTc4c8XG2aqigw2xleTq+ipS9FvUMP6mUti?=
 =?us-ascii?Q?NMJFXshbaL2ZDbpjSYd0g+FQy1YPQmi6vqODoJ6ixC531b1UbzdBWjm+uO4p?=
 =?us-ascii?Q?YvsXnbfC9qydx2Rg/UfX1hBlWL5dJewG0gK/7aojXPDg8T44NPD+/34MJqn7?=
 =?us-ascii?Q?jnoZDbnoC+sHaLlVjcdEDqGLag8u9XSdppIBJUNWXkeTwKBInAijC8QNWggx?=
 =?us-ascii?Q?sSPO8VXAIhpcPYK5aZ+063xif+PuZI5YAAfQ402vt2p8CaBahrwaJVwDaFk7?=
 =?us-ascii?Q?1d8RVnPYkIFgz0T/A6Z8o4Io1YKImgSGMh2LZG+ZRbfHZrJF7C6Q4/IOnQKk?=
 =?us-ascii?Q?zIdb2QqA3Qfh1pXnvkz6K1RdSLYu8obix26Qj1RJKir6ZAslTiV3XtZ6hw6j?=
 =?us-ascii?Q?yYJEnYAKEroSvoof+z3i7w2CiAa1yHHEFhsIGbRGzX6jSTjrXm+yrlUHpkBX?=
 =?us-ascii?Q?2u+TqXc9GkGOADvUGlgJ847Cu2SKa24B3SMX52usVa8Q3QtLyv6VgKhfJqgf?=
 =?us-ascii?Q?9Pb1fJuD/HDhNmxDXVH84/BJohQdPSOJ0+cLqAc6JUM2UTY2aLj0ZZ6Asl89?=
 =?us-ascii?Q?HssjgLjPapYDRohFwnfbiRGkxulvK+fbNG+JYqIhFYB3kyXo7a7pqJraGOdD?=
 =?us-ascii?Q?xXKsMypuXA=3D=3D?=
X-Exchange-RoutingPolicyChecked: KnWZjrLBay+JPQGhcKVW+2Jf+lOH8xz9i/SOFvHLmKbCMQk6W4uruvoy/FCIJ41uI+Gy06uDYK7J5O33riWamXdyhIh+s3v+iwfr1ME9Zyfhg29Edp2y6Z7V0/dy3YTzXxenxtAJQHFrsvQvTsLYzxxJRqgx3YIIFdB6ECdV8LWTdzH8pt0c/lt9/iAWwniER/3QJwhNYgxfy/xdluefhQu7u+sqhbV3cX3KFGgpWe/OsBACikkVLxSQ+1WV4lYMVWYKtPfo4B/lT774Gg3kuQlGZxFd/zD1u2UbMRpLcilQG/73lp2v3T7ti1iczDEEg9JU7c4M+TH6ex8Dj+B3ow==
X-MS-Exchange-CrossTenant-Network-Message-Id: e092838b-ad83-4902-93f7-08dea5251717
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:05.5304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fqfP5p2Z3MRu9ScxZzUc6B0uhsrUhckUDukwZkGPXc8iDDKZeAbV1ihBOFlebRXfD+P3xJfiQKu8mmRLGLIrZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
X-Rspamd-Queue-Id: 5C0D4485235
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

Add link_recovery_autoretrain_pending() to make it clearer what the
condition is about at its callers: an autoretrain work has been queued.

This also prepares for replacing the sequential link training failure
counter with an enum in a follow-up change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c  | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 0c5b7816dfff9..77697a7619812 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1249,6 +1249,20 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 	return sink_status & DP_INTRA_HOP_AUX_REPLY_INDICATION ? 1 : 0;
 }
 
+/**
+ * link_recovery_autoretrain_pending - check for a pending automatic retraining
+ * @link_training: link training state
+ *
+ * Return:
+ * - %true  if automatic retraining is pending.
+ * - %false otherwise.
+ */
+static bool
+link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
+{
+	return link_training->seq_train_failures == 1;
+}
+
 /**
  * intel_dp_stop_link_train - stop link training
  * @intel_dp: DP struct
@@ -1290,7 +1304,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 
 	if (!display->hotplug.ignore_long_hpd &&
 	    link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
-		int delay_ms = link_training->seq_train_failures == 1 ? 0 : 2000;
+		int delay_ms = link_recovery_autoretrain_pending(link_training) ? 0 : 2000;
 
 		intel_encoder_link_check_queue_work(encoder, delay_ms);
 	}
@@ -1991,7 +2005,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (link_training->seq_train_failures >= MAX_SEQ_TRAIN_FAILURES)
 		return false;
 
-	if (link_training->seq_train_failures == 1)
+	if (link_recovery_autoretrain_pending(link_training))
 		return true;
 
 	/* Retrain if link not ok */
-- 
2.49.1

