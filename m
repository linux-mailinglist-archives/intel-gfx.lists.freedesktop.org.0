Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cF3oCMqt8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C564F485270
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 249B410EBB2;
	Tue, 28 Apr 2026 12:53:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ed7NZ9YL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D8FA10EBA4;
 Tue, 28 Apr 2026 12:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380801; x=1808916801;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ACqefB8GEB19qZcAMwD7wue2Y+iZGQZ2MBxkbbZiqpk=;
 b=Ed7NZ9YLAck6G+kEyrSldjPf1nFnxyUbvzbgnfAVJVAreJj+K1F8KZxt
 9tuel5+2o5qTv0memzi+g4uy4CTXhuewCDuTku6phbWNVDVJ4hb0U/G06
 Pt6u9vJrZY3U4CUl1LLYLp6t3p4HwxHVlNmKkTpb1PBOlJyG8hBx5u0Rk
 ZaeEAaXi1SfX4slPJzq5ldu/6RaSLaVlXpgPoNG3nl6+H/cI9haajKfMP
 MUgvgd7uPQzRbAOa25rC6u4in4Q1v6xn/fib2/MSx+5JM9MaPkRibybBj
 Ho/QwFDVaqvkYJucyhqrozn4qZgeo+a6NFx5vzB9pZEFbvfjrOxxHZsq+ Q==;
X-CSE-ConnectionGUID: bz59cl94SnCuG5TDoJYQQg==
X-CSE-MsgGUID: M4KsyEnFTTS4lfzpjFtS5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203068"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203068"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:21 -0700
X-CSE-ConnectionGUID: YTQ08Pc3RHWFH+VOWFwDsg==
X-CSE-MsgGUID: VlPbQZGCSgSx+O+tTjvypQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244058"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:21 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:20 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:20 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gr2ITezXkCIOohBoMbrjMo+cgJJxCvw3AqGDcOxzq08nK3p5oZFTTsuVzDr+eeYC1WmN9TtlhpU9y9EpgUSDqFJwlDRx/CPWw2pixysnhDilwIuvbWXFvhaPGEDFR/AtOMmknaDxUd6Xz1nrMGvP9TwewRWLNgVKDUkSF/wW70CbbGX22+J9PIPUSVxU9TnC8TRAJ37p+RafN/1kUr7Wsx3f3KRN079jjMPX1yKU92W/PYLC/ZjOiYDes9MeAtZOUpHLF6/coz7G3pe1ImHdLiy8STN/dc9i9wDcueePSs3xniKpD8HZw6P+FsFoSpHY5xBC+i6QHsZ6kmkBO3u90g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b1hjrFRlPHb0uiSxou6aKl7I9BoyD/LbpkeB6RVQiko=;
 b=NF8Kf7ezNu8bg5iDxV5o8JU5h2NRg8Tvxac55sRwEXfimhxBtbtyn/Q61anR/ZUbXeowg2dGkdq1Y7PcevX+oUsog5EHi0j1Eu3j7K4xILNGeDpJHClHHrVT3JefYE9PS72uTfbK+YRq0HTjyNmNKoKzBgYtZSDcFs0Nuy+wYeHB2QguqQmhtnlEW8oIYqKl3/+0uA4YOhdAVRFkby3tZ4wtyY0vxxp52+/CKt0xdMmnwO7syB2X5QGGpJOUn90gs6kD/78D2Chi+kJ9lLXZFR11YdcICQ1303r9Qera9mu7rqVIshP15ZGUNWEc8ryfOLujJP/aGliRYlh/N+BpsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 019/108] drm/i915/dp_link_training: Track link recovery state
 with an enum
Date: Tue, 28 Apr 2026 15:51:00 +0300
Message-ID: <20260428125233.1664668-20-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: cbbebd70-161e-4b6d-c08a-08dea5251afd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 3rPxOp+A+7k2b2zru6onx2P/uodm4560iW0NS5RgeQ0uZJ3zUhR8gj1x3BVGAo19mz/OJPz4C05AsfCnMhz8XI/6jYkVC6E/xN4tIwXpxIxwiuXI2i97kJ0o6qWNnsaQfjovLleWa5Ub8qsG+/hBJ1wHKY02R361yWfW4h3c3ESucejMyndne8fAflNBS/tl5MZ27+/UIhqFvExmqcZy4c7pYQ3+yQh30Hdp3BEUf3+2QjmVjM57u71eBqaql4sEmoE5hj+ET8+h1hDDn/3d0ShdXmDj0cAwxI+r4JDUed8PPUs1oNIs3nzJVgFfzjxQwkn180v5R/7/IXD++N96nBjdQ2Hh8ReOpTpauVm4qKR05srTdz8VLN9BTHFbZOjL590wCK9vtfxwB97rBPURk2yH77aZm7CYoC/ezyfIxmpSLSXG4U9kC+IwLJDEnQLC6RhtL/L/w6sY69NfeXso2KgGGTgFPcE3Lc/ESIZxl9oWpP4Z4guy8esYBSULGGdvS6xTZxpwKsD7dteWfsfhMxIen5snUpKc+mfUkT4Vl5z8ts39WG73y+hVxFLzzWtYjnoYa8aKXt0IGsbBskaaChZYMv1WKfqJYPpqEneI8XWato3QvRQV+CEymk13d5KrH7iGvRL0pt72dM3omL3FZtktmWY6UYjtDDqqo97B4lx7N7xzLB1Scfs0i7koY7Xy/gnOxtpfD4snbRCXGREHi64uBBAwTiOas/5q4YKMflY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R7pZK0bFTpAH4jVNhvzTg4OjX1ARH5YptsHQbeUs4aambWygZKyYerSsw7IV?=
 =?us-ascii?Q?peO7+OBkLa+1fdQTRztPJbqyONMw69OlwkFZexPptlK3SCfp9QI7ECBBuZne?=
 =?us-ascii?Q?kg5VPWsl55nRL43gb8IaarAIoFGXlBGn3DCtwCstLQLTysZu3O7HDuqlSmm3?=
 =?us-ascii?Q?TVBCYZLOZxTz3o2HAoRCsoiIMTmN/LEVETY0lx2RtKWaf/iL8J0SGYass5UN?=
 =?us-ascii?Q?PnHNEPXppRc2b/1tLtQ9yFDeuARFyycHbNdf7Iw924NsOthrMBsD14bBBlpg?=
 =?us-ascii?Q?5YEnaVl/rFqVYwB5ONYGflKbJdS2EflITleyl3YypBfc8shgp7vvZzphaNHP?=
 =?us-ascii?Q?FrnfJ3UbGkHVUiPFirKEcCRkSkGdQZyknvl/1S8J4nc0hFFmyMDSlV5o+nQi?=
 =?us-ascii?Q?6whQDS7KaIupsqHLPbc1zIu/QUyEYushkEcbSBT52j1GoX2emsB44iCXCs2n?=
 =?us-ascii?Q?RRaowZQNeWZh5vZ2cqb5kPze6EVhfXKzxMzGw2+NwOSEq2ym24OgF3HSsZQ1?=
 =?us-ascii?Q?twofsAYp0zXU+dgCL4693qQdpZ9rJ01okvY0pGIWEjmoqPjfGF4I5fa9Ng0e?=
 =?us-ascii?Q?M33t/uU6AxIVkR6XglGdKCdn+YuXA+gykkPfMQMBipUdE5pKihnLZFhdPG77?=
 =?us-ascii?Q?PQoRn1LD+NIGSmgWPrhSCXQ3lKQmAkCC0Wm6xiwFPXGwdtX/KmoryltCp9+i?=
 =?us-ascii?Q?FSZptyKYuQtqMEaDNfYOTiDU0qCx+3NACtnmBno9wCwcuiHwPUDzqe357gFQ?=
 =?us-ascii?Q?0dIwsnjvsmZcpGCE+5zIeHwd13OqTwT91c2IgzvCAGl7AcH5C5Jt6aLNCMum?=
 =?us-ascii?Q?fPYHxdOPG4qzYbDiqvkcxSNLUuTp1dxqnFbo0p9TdNd1YzzMXzlp5flWu5Ry?=
 =?us-ascii?Q?BWeghy3k2K1MhGnrxxOJl/fafsa0nJ9omkOk1qSE285GBDhcOvDCMV6uBNIx?=
 =?us-ascii?Q?QdTGudsOYhIDeD3ftHyhJFrQQW4NVIbOKTkz+SuxeEyrEbdszTVLPQ+Zmyfw?=
 =?us-ascii?Q?pGLJHa9QiIkbgRrQRw8TrLzbn0JKL9W9sqykTGgJUvfORlqpaOMCQioi6NQh?=
 =?us-ascii?Q?EieG/19fMWCZQcVd6gAS37Fq2ZOHF63QKaFFMbhXFRSndl67Qvq28VkCW1fn?=
 =?us-ascii?Q?a0Dtt4+601HBZ8DzCZFp/WWd6HIOlH88wAJcHbhSnLhYhJYFCXV+aFTxgnO8?=
 =?us-ascii?Q?QTspjHe+GX9eYgHobi/veJj/fU/uhURtD3G/YVeVe2ubAyvTZrSg3pVyVLhD?=
 =?us-ascii?Q?IVC6okP6g//vik9EjajMAZ9MuY9eie/kdj7gNK4Te3DDUmuDIKZsnusIdhB2?=
 =?us-ascii?Q?eucBlpq+5Qawgu26R4eI9ljbgaRfTsJfwH1l3go8aAvOHluTXDOcXi/H7kZy?=
 =?us-ascii?Q?t0Giy12g8F1Z8jb+naicJjV/GjvmoQeDAkBlqdQAUFvdYQ+ANtMB7y+DdaBj?=
 =?us-ascii?Q?7758uzNJy6+FZJSrPTL1duafRMy14lLqnqSHQbzE6NUoLg+JYyPJGbVwKWsj?=
 =?us-ascii?Q?Rrgx+UL8Z8Iunl4VC9dwcwJXdcmCMeuay9UkTVwT81I48eL7Rb87dMKSDGQt?=
 =?us-ascii?Q?APUi3dGzANFB5DFRYd4OemgjoEOm1/ZPqN2m1KGX2mMsQyeZAuJmQOeSAnex?=
 =?us-ascii?Q?n9lFTOyzQ96YT1UO3hRm8Ylk3FYyOuNph63qEyA5/zEcSxTbbXYoBr6K92cb?=
 =?us-ascii?Q?kSOs799kgXvBiHUy+YZKz+NfDqDFAbDAAGlMXVvhe2EMbQuYHffCYIg4MIzT?=
 =?us-ascii?Q?abBZvqCoBw=3D=3D?=
X-Exchange-RoutingPolicyChecked: Z9a2ipKl25rG73sTy969WlxVdB/HJnXktYuUsnY/BJT1RFZL/kYlpIsB+bxT9Gn2DrvB5nqCZ9ONwUF0rutinaSZw2tx/GwhB/B1kpriwwF9KKVNH6cnMEtigg2XQfW4Wngm8DvJJi760FOSrlWciVZ44qVHwir1YiWoEKk/ALW4NbF6SvUU29HKh7ZC6RHkfdzlbRPxOYJQvnxaNy1jFI+ouewUAsvZQpE1Q8AZUHX05euG53FG2wj483LpU69N5182W87yF/2P2gykrvfnVVObwP3xpQnMi+U9wfevOJRY742nYiQGl4LmmJgr3+kmvGnFg7tNt8jlWZ0LA+NNfA==
X-MS-Exchange-CrossTenant-Network-Message-Id: cbbebd70-161e-4b6d-c08a-08dea5251afd
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:12.1138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z6rzcwyFx1ym/rOFhe4FrWq6e/rTxz/GEeNwPNhLsxYjdiBzhAtQ9XJjab79PQr8Mgr6o7xkEXCRXCsI459JkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: C564F485270
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

Replace the sequential link training failure counter with an explicit
link recovery state enum.

This makes the recovery states and transitions clearer: idle, automatic
retraining pending, and automatic retraining disabled.

A follow-up change will also move the retrain_disabled flag into this
enum.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 55 ++++++++++++++++---
 1 file changed, 48 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 90bd1b0f1ab7d..c44416e0e328f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -61,14 +61,54 @@
 		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
 } while (0)
 
-#define MAX_SEQ_TRAIN_FAILURES 2
+/**
+ * enum intel_dp_link_recovery_state - LT recovery state
+ * @INTEL_DP_LINK_RECOVERY_IDLE:
+ *   No link training failure is currently tracked and no recovery is
+ *   in progress. This is the initial state after driver initialization,
+ *   power state transitions, sink (re-)connection, or after a successful
+ *   link training.
+ *
+ * @INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING:
+ *   A first link training failure has been observed and an automatic
+ *   retraining attempt with the same link parameters is pending. Exactly
+ *   one such attempt is allowed before switching to userspace-driven
+ *   recovery.
+ *
+ * @INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED:
+ *   Automatic retraining is no longer possible. At this point, a
+ *   fallback selection is made and userspace is notified to take over
+ *   recovery, performing modesets with parameters it determines are
+ *   required. The driver then selects a link configuration from the
+ *   remaining fallback configuration set. Subsequent link training
+ *   failures trigger further fallback selections and userspace
+ *   notifications.
+ *
+ * Describes the link recovery state used by the Intel DP link recovery
+ * logic.
+ *
+ * See also:
+ *   - link_recovery_autoretrain_pending()
+ *   - link_recovery_autoretrain_allowed()
+ *   - link_recovery_mark_train_failure()
+ *   - link_recovery_reset()
+ */
+enum intel_dp_link_recovery_state {
+	/*
+	 * Keep the enum values ordered from least to most severe
+	 * recovery state; helper logic relies on that ordering.
+	 */
+	INTEL_DP_LINK_RECOVERY_IDLE,
+	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING,
+	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED,
+};
 
 struct intel_dp_link_training {
 	struct intel_dp *dp;
 
+	enum intel_dp_link_recovery_state recovery_state;
+
 	bool retrain_disabled;
-	/* Sequential link training failures after a passing LT */
-	int seq_train_failures;
 	int force_train_failure;
 	bool force_retrain;
 };
@@ -1260,7 +1300,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 static bool
 link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
 {
-	return link_training->seq_train_failures == 1;
+	return link_training->recovery_state == INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING;
 }
 
 /**
@@ -1274,7 +1314,7 @@ link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
 static bool
 link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
 {
-	return link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES;
+	return link_training->recovery_state < INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED;
 }
 
 /**
@@ -1299,11 +1339,12 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
 {
 	if (link_recovery_autoretrain_allowed(link_training))
 		/* Move to autoretrain pending or autoretrain disabled state. */
-		link_training->seq_train_failures++;
+		link_training->recovery_state++;
 
 	return link_recovery_autoretrain_allowed(link_training);
 }
 
+
 /**
  * link_recovery_reset - reset the link recovery state
  * @link_training: link training state
@@ -1313,7 +1354,7 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
  */
 static void link_recovery_reset(struct intel_dp_link_training *link_training)
 {
-	link_training->seq_train_failures = 0;
+	link_training->recovery_state = INTEL_DP_LINK_RECOVERY_IDLE;
 }
 
 /**
-- 
2.49.1

