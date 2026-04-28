Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CETcNkau8GkRXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D564855A6
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0488610ECAD;
	Tue, 28 Apr 2026 12:55:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dyo83G0Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 225AB10ECA6;
 Tue, 28 Apr 2026 12:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380928; x=1808916928;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=X2+w3wKqpOc5QL2MO9PfoRzpQcOpcxzmm0C7Hfr3F5Y=;
 b=Dyo83G0Zq4AKSI8auWAptSyjUTh0Hv09pUVg3m1POntTVFk3Ryic3qo8
 LfHIiQXH7QPRc3J7r3Ew6c4yYRr1r5Cg3anZGkOcNI0V+TD4ehbehYjie
 37XuIV66Tqsuv9v0BRyT9Nr5N3YxHmgeFsW8QDPXz2J9b760w1udV8mia
 jdfqzs42Re3fEFccMD2eeAzdj99VPnk4TCOvLlW8NUL3fpgkB6glMdQh7
 +bYusWPwyM7HhE5POXSzQswFmgo8DxRM24Ie6g5hznlX7rgIVVurqTFbu
 jeGD/KVPqyxemIi4HjTf5MObp3TeXkU91VXicXo+mvCn/s/gyKhpm3QX4 g==;
X-CSE-ConnectionGUID: IW2IF5hzSPysFC2D+vw3LQ==
X-CSE-MsgGUID: 0bYDXxgxS5OXGey4RetTZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318783"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318783"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:27 -0700
X-CSE-ConnectionGUID: cWBHLn+CTiqPqqPe2SAIbQ==
X-CSE-MsgGUID: 5NEkmnjITOyjFZXm9FVfgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818248"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:26 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.47)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fIo2K5ywUzN5+KQQKbkaBoZoNVyUo/8aWuPPjNhPmWoiN4NKd6buAe2c2RLldBgoD2HHY7uWUAIPLzbXAp17ENK+5yHKabQQaSk10UshVHcVJrqfeus4TO+RbuUATXdhLXrMTHyWSOwXySYzpbhIBAAdTskaJA79N4XgGBgyUTgv0ZY/VGOD1hXp9klF5QEq4RaDTwzORUs2pM2VypqDbckLm0Tp9SpVZukcWHA+FzEWJdoHyaOZr/4YtQ8FbCGx6F/YPaqLxgTa6aJjw+0F7AreRr2nArl1sqWSIgwxdI+bat2I3Nvx7XeWkmu4eOIsvhi5Wqt4EUEHi5YWx15u9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GKu8lUJ4u7LFVoyv87+DY42IsDdAKx59l3+lw2XcJkM=;
 b=Dw2IK2ioQMAdhquQxmIsMfL5mSw3I+cmu8vshrF9nxz8yKWiG2tnW0mol7oAtWoHYDNtcDrHnEivFXp4pyL6tOfXZcxzZo6QkrneeeiCvTzGUyiaZDn/26zv9P3LvIzr+8E9T/vJeBKzkYCpURBbhTuU/tE/05yfgxQMzd2lQM8h1J3MKJIz5HxRgY2pSWl2PKemlBi3taiIYuLLP4RcieoGnJREhiKoGkTUfbGz2WO4jAYhjE4KgvIE5GFSCiI4BXKSRWDYXIQ3i7HuUoOiXqtNwbBeKuaXNognRSHwglxcmTMarxHeaLmtqwGESn5f86925ik4Qt1PvDNFEpX5Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:22 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 092/108] drm/i915/dp: Iterate configurations via link_caps for
 SST DSC
Date: Tue, 28 Apr 2026 15:52:13 +0300
Message-ID: <20260428125233.1664668-93-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: ce95c46e-fb73-499a-d0f4-08dea5256220
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: hZpKjyaIx6ZSL1pS2A70GISMDcXMVEgt/9dVUG76itbYNX/1z1LvxokeVsLfg6eUM/NkkxMKhu5sR6uQs880cNQ+z8IyZzUisTHNU2bwye6mNlAKE/OOr4Bf0Xz6caD3xTwUvovFXKSofIkghyBvmJ1PFqkhhlKIXhXvi29Wb66KG8hGEN+j3GAoj72sOj0lYQlvFgymfSPdkRxUqC2Dif5fodKBNhzepC0TnLHfu/YAlVr2JXqNWk4gwQPtMjd25ZQu4yj/NmpRxznvknkMCnbqaQG6thHUqKcoS5iLKevKvJ8X9vkm47/iZjgIXEFZ/PoMmarZtPD4CLXi2K4MeIYGP91WfEBi2f3hMAuOedltJ/wqx2x5I/nA+vZoUlkfare7crZA5xkWGKpASQxPMDm5duxEJ2nI5S5p/KVDBNcEedxks+tyg+AhFTo9WpxpTsPEK/9firST+p0pE1bnV9GSlHJQ2LjzVeAmF6JZECJXgS8Kxszi4I98NPdOHAdSr21Fpu1m3xbDIXrI6t5fgXJboaqS0b0ioAIzKeVu6C2WXYJjUkCCg7eeQV35RsJIjtep3DcZXNQ/DIwwDxTigdqpIaEZ157jncPpLPDSTJppqsl/Q3gNTSeyDiqFWlebZu7LIYbl1CgVb5z2DPj64YjLsbKza0lcukTSqXNbaT6QYPD2iELkjYgyKh4lUqFWEY/dM7zQ9FUHr29gM28mzBVWq1w/HjHQSu/TEtifbcQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+vl8LgzHBcsJVGxZajbwNHwHGhhqYNikGullc/qtFXA7TqwMvoOki7Ybhv23?=
 =?us-ascii?Q?OFX6V4S4n6U4VsiArL/FJ24dXehe8oqGgHQCDK5Sz2zIw2BTZJZ3e/xaCKN9?=
 =?us-ascii?Q?vVtLYV6JTS6ctigII/UAr/nZzLZqvGrT5Phh0aPTcxADO5YmS/HLvlAuPIEW?=
 =?us-ascii?Q?Fi6omiO9sQJbDHJf9WKJ0yagU3qpG5PdKLMN3ThJKzi+vn51bpWGUu4wjXKO?=
 =?us-ascii?Q?tPSdM4SwsawoYlikkXDGuGYFY9OXYaOEyzH7Bs0fpPKPgXUg0Zu4M9QEvWf2?=
 =?us-ascii?Q?7NdWveyj9c4+tmiE//1NXC1Rm854N4FwpEk6u+UnamIWjWGQlrxgtB/w1Yku?=
 =?us-ascii?Q?ScEQcMHvI4M/+GTH5H4YxzOByYW83gyMaLyiG/ic6kPfOyeQhjzEpmHkhDPG?=
 =?us-ascii?Q?xxALa6gowgofiH6biAO5Hu7lGEXG/ytJ2B2nEv10PSgIm1O01rhG37zRcmFb?=
 =?us-ascii?Q?IdYp/FU5U6oGX80RJ23V2HKcpl508JSQhCfuCXwzsavjudjuA+DmNiqXNLvf?=
 =?us-ascii?Q?xfGSGfII4GJqFg64qO9iKSMWAb4aktsakMcrEkz1qryTv/oSHZdv8AX1jEKE?=
 =?us-ascii?Q?rGQ1QvkPpwGz1W9edTczR60EYzszbSHn0BruI2LvS97yKDvbpKWbWDeNEjZ4?=
 =?us-ascii?Q?RK7jot0j70RR5lqvd+y54OUqKpgfgMvD+gLZd/zieTk5us0XvhN2M3oxm6UI?=
 =?us-ascii?Q?Obbw3DxbBo0fxBE6LBcBASJSC++yogzubGU9w2gLHj07cnpNp/DubM6DyYML?=
 =?us-ascii?Q?hC6gDZi6HkRqtSXEL6IpRZ6ckVL69jOZat8rBs15PlzZH2oQux/Xlf3XRhme?=
 =?us-ascii?Q?eGG9nMn/2GGG/5aZ+qrl+hcddtGPiB+nqOWd4NAcWDPtuRwBA422sNdrzKw9?=
 =?us-ascii?Q?cJF6kZGKAkKsd0oTwucMCuMJeZukVtApdbRKOcAGWIs6weXxqQbgCVLV4w5q?=
 =?us-ascii?Q?J0gvLvWWcSI1xG3sYsHmDv0j0Md435xLygFEtAKZhqaK/tk4vPeYVlrv3Cbo?=
 =?us-ascii?Q?7QYNYbAKNOZEOXDKbEA8LBPkaPzgxBBu0Oacql9YDHhVPLTrJvyZb+xdn7Co?=
 =?us-ascii?Q?T2RAT8pdyiVN2vxeV+Q7PKqxIf+TnA76Gi8+qO4v40RWgNisL8jdixfMgNhY?=
 =?us-ascii?Q?3oq0AOJUyKLH2xKxkWS/Lc0W5ydCCmOSNspeCc+V2Pbpv55g+xAIGgaJa1rY?=
 =?us-ascii?Q?ePej6RmpV62GPDDnDZnsvj2DiY7E3rOms2oH8JfjR4+7b0F/JFQ0zwF1JFfx?=
 =?us-ascii?Q?PG2IOCPcEjDY7lVeYtHv36V5sdZT24POLPGZLqgZ5O8fB70Ni2Wsd2zd4vxc?=
 =?us-ascii?Q?mouErBTcHA9LnKdVtoIZWahu/NxjRCH0fQO15XTHPU/MeJXsHE/xCm9V5xM+?=
 =?us-ascii?Q?QtAIsIHeEuSjnO+dWNcLyL7tiv8Y9de5mKHisclO7BPs6wxqbdX+rUMG3+1e?=
 =?us-ascii?Q?EBvUEdJYLrankLc6FIrovSM2pKcF4Q3qN6qw3gpAC+GtjKg8bFbKxEZXyTnC?=
 =?us-ascii?Q?2NdKK2u9faNdfzFLn2E+v1YClz4xZvIZp8YwbM94PpXiEBZhFaDJJglDPnsv?=
 =?us-ascii?Q?qICmXuVxOtvw+kZhzmw0ExzxPe7Uo84NGR0qlVrGGQRh5Oh4tq9kKnVWTLb1?=
 =?us-ascii?Q?s0frotcIUNzLsTaUp3LOtzgsMDMyD7dx0cYyKIC4DIjJ64L/a0a6H9FsURIH?=
 =?us-ascii?Q?+T1zHo0jBoEe0IXpsED3xpA9nXOEpr2RaglDBuwpns7oacRqrgQI5zGflppy?=
 =?us-ascii?Q?+A8wPBT/6g=3D=3D?=
X-Exchange-RoutingPolicyChecked: agthxNzIg2tOFmCPhjdj64Njt8s8HJ8eZDe3XgB+TsxQZc+fiW3Wbvz9zdxFk99rDK1QDyBNnl7iUizsN2tGt7rqtEZIO1wOWyWB87uIlzAwcHkhYPZs4IbT0x9QJOzbHMrC5gvAMnlDtcq1Fq4E+bYz4oZTrQLkhJ5dvApDPNNqKqIwC/bTgwgQqv0mV/3yZNh8xxvWYwTCg4jahWQzupItwoPEITS32p6daZu2S7YWoeCdj6uUKNPUyq2rWKupUxmRpi7Gy+nd7M/yPxb/V3WWT0oppK7hBOH4d7+0GOU8JLdePBHWLnvLnLHIk6ARyQPG0S1Zr8xih7uVmITqSg==
X-MS-Exchange-CrossTenant-Network-Message-Id: ce95c46e-fb73-499a-d0f4-08dea5256220
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:11.4171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d6j0qv+QxR4qzkCbc8DHu3iULFKOo9Apxw5lCCqVWNobUMHNWRlwuomWhmlD0KncSRPmRdw6qUWb/HsXb31uRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: 79D564855A6
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

Use the link caps configuration iterator for DP SST link configuration
computation for DSC mode. This is a step towards unifying configuration
selection and iteration across connector types and between compute and
fallback paths.

The iteration preserves the DP SST connector rate/lane ordering used by
the current code.

This also allows removing the now unused common rate count helper.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 90 +++++++++----------
 .../gpu/drm/i915/display/intel_dp_link_caps.c |  5 --
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  1 -
 3 files changed, 42 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bec78ddad7f09..62fed6de83b12 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1990,60 +1990,54 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   const struct link_config_limits *limits,
 				   int dsc_bpp_x16)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	int link_rate, lane_count;
-	int i;
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_caps_config_order order =
+		intel_dp_link_caps_config_order_for_connector(connector);
+	struct intel_dp_link_config link_config;
 
-	for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-		link_rate = intel_dp_link_caps_common_rate(link_caps, i);
-		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
-			continue;
+	for_each_dp_link_config(link_caps, order, limits->link_config_mask, &link_config) {
+		/*
+		 * FIXME: intel_dp_mtp_tu_compute_config() requires
+		 * ->lane_count and ->port_clock set before we know
+		 * they'll work. If we end up failing altogether,
+		 * they'll remain in crtc state. This shouldn't matter,
+		 * as we'd then bail out from compute config, but it's
+		 * just ugly.
+		 */
+		pipe_config->lane_count = link_config.lane_count;
+		pipe_config->port_clock = link_config.rate;
 
-		for (lane_count = limits->min_lane_count;
-		     lane_count <= limits->max_lane_count;
-		     lane_count <<= 1) {
+		if (drm_dp_is_uhbr_rate(link_config.rate)) {
+			int ret;
 
-			/*
-			 * FIXME: intel_dp_mtp_tu_compute_config() requires
-			 * ->lane_count and ->port_clock set before we know
-			 * they'll work. If we end up failing altogether,
-			 * they'll remain in crtc state. This shouldn't matter,
-			 * as we'd then bail out from compute config, but it's
-			 * just ugly.
-			 */
-			pipe_config->lane_count = lane_count;
-			pipe_config->port_clock = link_rate;
+			ret = intel_dp_mtp_tu_compute_config(intel_dp,
+							     pipe_config,
+							     conn_state,
+							     dsc_bpp_x16,
+							     dsc_bpp_x16,
+							     0, true);
+			if (ret)
+				continue;
+		} else {
+			unsigned long bw_overhead_flags =
+				pipe_config->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
+			int line_slice_count =
+				intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
 
-			if (drm_dp_is_uhbr_rate(link_rate)) {
-				int ret;
-
-				ret = intel_dp_mtp_tu_compute_config(intel_dp,
-								     pipe_config,
-								     conn_state,
-								     dsc_bpp_x16,
-								     dsc_bpp_x16,
-								     0, true);
-				if (ret)
-					continue;
-			} else {
-				unsigned long bw_overhead_flags =
-					pipe_config->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
-				int line_slice_count =
-					intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
-
-				if (!is_bw_sufficient_for_dsc_config(intel_dp,
-								     link_rate, lane_count,
-								     adjusted_mode->crtc_clock,
-								     adjusted_mode->hdisplay,
-								     line_slice_count,
-								     dsc_bpp_x16,
-								     bw_overhead_flags))
-					continue;
-			}
-
-			return 0;
+			if (!is_bw_sufficient_for_dsc_config(intel_dp,
+							     link_config.rate,
+							     link_config.lane_count,
+							     adjusted_mode->crtc_clock,
+							     adjusted_mode->hdisplay,
+							     line_slice_count,
+							     dsc_bpp_x16,
+							     bw_overhead_flags))
+				continue;
 		}
+
+		return 0;
 	}
 
 	return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 70f72a32a9a7a..2ec55856636f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -331,11 +331,6 @@ int intel_dp_link_caps_max_common_rate(struct intel_dp_link_caps *link_caps)
 	return intel_dp_link_caps_common_rate(link_caps, table->num_rates - 1);
 }
 
-int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
-{
-	return link_caps->config_table.num_rates;
-}
-
 /**
  * intel_dp_link_caps_all_common_rates - get all common link rates
  * @link_caps: link capabilities state
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 1dfd66380a96f..a907b99cd4cf9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -173,7 +173,6 @@ intel_dp_link_caps_config_order_for_connector(struct intel_connector *connector)
 int intel_dp_link_caps_common_rate(struct intel_dp_link_caps *link_caps, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_link_caps_max_common_rate(struct intel_dp_link_caps *link_caps);
-int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
 					 const int **rates, int *num_rates);
 
-- 
2.49.1

