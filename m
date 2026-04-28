Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EF25Mxqu8GkfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F6C48548B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1813210EC59;
	Tue, 28 Apr 2026 12:54:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="et8VXj8m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4854710EC28;
 Tue, 28 Apr 2026 12:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380880; x=1808916880;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=DqGjSz3NO0tsARmSp1hO1hsv97WttbRAmYSrdn8Hvy0=;
 b=et8VXj8m/twLShl5t4O/hbNDzmuVbH3Q23Sq7e5IoJSQLhbOTNCmMiGr
 DFbwQj+cgw6fSCJReRhDqQTth7cRjyF6z8Hi+uQhI655zOP8VO98p1jCY
 hsb/5n82EOMarsdYt1lJmNmAGUVLWXukatNET/YfVzmxHtggJGG6iAf1Z
 YPaj1LHmqHT0dkn5hmMIH9HlBNOVv5gdA/d4E/u6lWvrwZdv/w9d89FK1
 B/xc1DRA9jGbGBlTCRqHm+YjXPebLTfiLOYFP2XoMxdNIYTRSr9I6nM92
 5JL6JkjqhUOzYjPv1LXsDBy+I8bs0fkmek2rxOig8uuWjysjuekmgAveu Q==;
X-CSE-ConnectionGUID: mOzv5qXOQZyOG0LRtKYGKA==
X-CSE-MsgGUID: zh+8xj9iSty6EmNaP7HtuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203213"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203213"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:40 -0700
X-CSE-ConnectionGUID: upnd7UaNRhi8aYMybnN0ng==
X-CSE-MsgGUID: 1N34KEhmQVWF/hIxIi+iMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244475"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:39 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R+OwDewedu97VwMWCT/HSN7Yll1y2y7UENyKkQglrEmLD2CctVd7FIcQbu0wY/SZ+2r6FEvWkUtVkd9F8YbRNwfh3yvscbz4qKeufPvtvZmObuBWgqbT1oinnnnvkYOxYD+09Z5RMJL91D3D03+mXVtXD1BBpDDwq+iC2JBdWCpiqiNnaPUMeK5brG7Eg3ulEkYEs/u0PdGbs1hrJzGCAXuRyjeYSL5naLUIk0CTqB6VBm7OdI0pI6gIpRr1y1tzmU1LQvp39xyUelTTe474vcctaMoMqe5PKLjufnEVVt0VvgMti26Tet+GDkxD36EVJhoQXRyEDCxMJ3+FN2AcTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ezlisQ7DeqZbDmpGElBA7tgoaWTgMviSt4+HaD60xsI=;
 b=Ll7d632+KszmhmxkMhK3JunLUTdDfiiF9jjH0ngYGfeexcFo2ZP9VF+v291HvWOkRJpzVZ5K2HPaGSXO7U9jV8OgO9Tz8zl9hLbdmZrOa4Eov4dOk2gXJG+ErKf0GsvzFnyfXE++AOtt0r7rfVfHRUxaL+OEBNry0G3qxPprx8ZDTFsTXMAXVfwlO3vq56L4QXPnq7YV8VO86wtpfY+zxzRJHHDOC0FDLXmvSz2VnDy33xLY9b3KSVr/W0wrkNBJjkAfG4oqEhp/AZUaMJ2pZiQ9/mQNW4ZgUYzqoctvCCyop4vI0rBnzarMHfYm6QnRvG22Tg9Q4uIgw69yirgEjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:30 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 058/108] drm/i915/dp_link_caps: Add link_caps prefix to common
 rate helpers
Date: Tue, 28 Apr 2026 15:51:39 +0300
Message-ID: <20260428125233.1664668-59-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: aae1d93d-df02-44cb-572b-08dea52540d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: xHCk278jB6ziSY0EsA/y0K+kWa6VNUWif8hRUf6VPAbpVhhTa/XSLjfkZ3763v4w0x9Zf334myeP+xw6VeCbwpyoi103lFh9KRpOQ4OFqIrFbZeVOsN/82mAxzf9tF8bk2dO3yWkQ6tf71XQNRjlE2WVEG8STQ0E6ah8/8YELGnR4MUIJ7BRYMA+lYI0f6wxR2tBUldYPCPp4oPMAOKFnkUJFacHMBFcPIDlTNvQg+PYG0DMWVoUiUjUwLMStQ++8iif7ZQMFvQh8vhveWXClWDQ9bBLGmv9DsRTyEG4Dfyof1OSZ7bCf3E5o1Lx1hhA49B8F+nxZd05cp1bpMsUhp4rZ4LLPla6w1TAdg3u/Uew7zfo3yRhqdeWmdFTPPBu24+mzjmPA3N/WJN7ADNoKMMmQDLu0SSbzlxOHYfRypLjeqRMaqsTEawrhacOJBb9XF7wd/GkQb35zGQskRab2XqtEubj7lFa3ByosDRgUo1mJ601O6jAUX+8aCyQ3FpvnJj3ytdXLS2gey9Lxk6jGeDv77fuIAQGzA7NqSMGJpQLhd7U3R9LDOlC5LvdrAOb7Kl8ogwqFyeyLx7UiKOb0IwTZZs0U+1zTqrd4VlgaKWrYE4e/2XF8uwRCSj8JJtbps09O33dKU83k6SDcjQDwwOFVmyLyjyjhu/dD1K+bWRvjDFCHLhL5ObVEXzCR1w1Mmykp/6LBW9FqDcdjymcHGxQVUuRhF8thEgZs4gamhA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZeQJ86cW6F30huz0GuLF0Ik2akv1yJV7sw3ubPfsLHIpooNO5Nm3OumbaxXK?=
 =?us-ascii?Q?tJeF2lZyt0/wJr1beWBR70w0QsE0OKk6S91rBj4Eu45okZaCcSM/Oa6QKDzE?=
 =?us-ascii?Q?g8IvffZmuGve32eamuEjWfWTb0pi5IYHefxrUm+OFMZmIeDc3NVWtAc03RA2?=
 =?us-ascii?Q?Xm6IpcpkXswCDTzQXIdqQ/TXdTdybrmX+Mf9Uzud6ORsMnUqurHhAmGLnvfJ?=
 =?us-ascii?Q?r+9KAGcoFprTDB/68S2Jmo1amr1gTB3g7ePNSyZNWXxh+CpVTwbVfWGhAQ6t?=
 =?us-ascii?Q?9mPOtnGlTx/JXnXxUuVV2hz2E8Fp//EEd2c16jCrOQ6aDLSnIxiQgIHAoBp2?=
 =?us-ascii?Q?2QFO4ov0Fz8ygli4WZTWqZ8Ik22bh+DXp1AuKXiLf8gSVFegogiVaPtdYXLy?=
 =?us-ascii?Q?G+lvRpybkbuvoX2/VSKcSFSaGseCg288LYaMsb20atgGuGUPH3BnI59q8Uk3?=
 =?us-ascii?Q?rpDJPyX7kxAuCea8m/LDNH3+lTY51HegZl1EWLKR+b1zr2M4wVeP38vDVRDj?=
 =?us-ascii?Q?GXxtCimqJ9rt017Z1A7NKmpFwR6f7RTNh1knjlHuTsB/tbcc/fQFCPFrHQzC?=
 =?us-ascii?Q?cvQY2FeC7PVKhag3PyY5qWZXhybJayqmH32IsyN9Uorv6iuIiv0riW+DTqTr?=
 =?us-ascii?Q?AQXDYt7xClZqvzLSJHArgRuXvB6l9azF5DAj7hEOLWWNPB9VL/7FjmDPJXo/?=
 =?us-ascii?Q?jXI2dEdM+hfY7vUypZGX9RnZ72ZndpyAFPdEaYmaLEzud1j/PjraXrqifypk?=
 =?us-ascii?Q?3nnxERsUHtuNUNWdV6Uv8Z2tFhACVixorsVv7YVR7cfCSnYjBCdmCnazxVTh?=
 =?us-ascii?Q?MUOi/WCFVA251nn3rijNXQWeVQiZt2l7XjK273xPsDRmGVc3nQvJFb3mQKcq?=
 =?us-ascii?Q?OeEKneYalVGcfL6tcbSjoKyfm6mBASW48+HuJhcgEn4gZ2BXiQPYSP2Ml0iZ?=
 =?us-ascii?Q?+OPGTn2aDoRnEVXinL02tVkfJXr3gQg6K0NT5kro8D2XEZRM8rh2jYDqZXsl?=
 =?us-ascii?Q?umMXX7VAoqb8Hsl1EwZPKAGnIFlNdl+yfeQ4mX3KvjbY74CStMBp1r/03/1z?=
 =?us-ascii?Q?MLZ08A1N38Py8YVpo6nd80l4Ihp+MwzoFq5EYgjbTENqU7nXkq/AaRWUI2xL?=
 =?us-ascii?Q?Vb7vlQC8tIjFWUMsB0N+nRX3SPf9QbWowKaLfUb48LVwwG/1ItYgJMZ8+fQ4?=
 =?us-ascii?Q?DqPkj9PzDaTk6IWLS5PKWfztzPc9XCOQnL0FNiPM1c4xL94jNLknkUN+p/GI?=
 =?us-ascii?Q?aLgSrOE12VgLUfI2IshSIBJa/e08wQeMQ/y7nTGBmslgrju4sc87iEkPAGq4?=
 =?us-ascii?Q?or0P1mbJuWuIrnOOenf+AMczQh0cVJAOh2vXGRjzHpHuvxXVLLvnF8onNAIp?=
 =?us-ascii?Q?L7BlcBqSa+1xVN9xRm+yG8qMXojRCE9AeaWkmvRjy08wQyuI9SjoW++vqIGW?=
 =?us-ascii?Q?1Yvz/DCHQjWsJOMl/I1IsYmQR9nNchhMpxXGiRD1u+S2nR4kZ+bByVoBK9jp?=
 =?us-ascii?Q?MfwrSjZ27EsEdlA36VE+zDckCpi23YtNh8OUzNsSmkMU3LBW1ppTMV8TRLdY?=
 =?us-ascii?Q?CpgSY/GKoJ0gNHSmXJW47A3acOPQKAGXBtGPQfhZIBonhGdtAdRWoci+oGal?=
 =?us-ascii?Q?d8aj67f+MNqfk+B2Swsopu0vf30NWP/FNnUSqOmMZpMcZDIYo1S55E1dGDnc?=
 =?us-ascii?Q?b1Tv6Pj5Gn7r6d+oC4wBDpsVtyZLpoK4IqzAEl8qHHLo3HemPgK87SN4Sicq?=
 =?us-ascii?Q?Iz1dWQ21bQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: PhPPXomVwYLBBwuPPzBOt4KsAsZdcYUBL8uvG/+GTbUgWcpJtv3WZO39JQU5leRmjwZoYt39rnYc/WFaPOekdzQFsv8CI/pXBAx2b73My8Xmyy3oA7XuQyv7EHRczbUssHrTyKykb1+X2CelNKVyiPr0Wqh4KEMU5CHpHM2f/AOE8OmPPaynJLbjnhDZQWlQfEpFKsOjkR9UaAjW4Favl6mHe5zl1MzjtlXqDSy4bfthgUnHH8fkNl+ODcZ06cIx7JlmBfKP5os110L4i/WN6bcWFfkGivfarFBRoq6b/NF2ZMbRQeG4Q2DQHrpLi+1r8iQoH0zJcoWYub49TxOEaw==
X-MS-Exchange-CrossTenant-Network-Message-Id: aae1d93d-df02-44cb-572b-08dea52540d2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:15.5000 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q07NAcchf6jSu27NNUIZcL+QdAOpQ12ByFBAn7AthqQwgzKXvKAZE3ODY8uY1SEFvUduJezYMm57gMqwNmvEDQ==
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
X-Rspamd-Queue-Id: 80F6C48548B
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

Rename the common rate helpers in intel_dp_link_caps.c to use the
intel_dp_link_caps_ prefix, matching the other exported functions in
the file.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  6 ++---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 24 +++++++++----------
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  4 ++--
 .../drm/i915/display/intel_dp_link_training.c |  4 ++--
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  2 +-
 5 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 57f5c73f4c249..88154352e1faa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1573,7 +1573,7 @@ intel_dp_min_link_rate(struct intel_dp *intel_dp)
 	if (forced_params.rate)
 		return forced_params.rate;
 
-	return intel_dp_common_rate(link_caps, 0);
+	return intel_dp_link_caps_common_rate(link_caps, 0);
 }
 
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
@@ -1768,7 +1768,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
 
 		for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-			link_rate = intel_dp_common_rate(link_caps, i);
+			link_rate = intel_dp_link_caps_common_rate(link_caps, i);
 			if (link_rate < limits->min_rate ||
 			    link_rate > limits->max_rate)
 				continue;
@@ -1998,7 +1998,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 	int i;
 
 	for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-		link_rate = intel_dp_common_rate(link_caps, i);
+		link_rate = intel_dp_link_caps_common_rate(link_caps, i);
 		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 4250cdc7af702..529cb702c99eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -78,14 +78,14 @@ struct intel_dp_link_caps {
 };
 
 /* Get length of common rates array potentially limited by max_rate. */
-static int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
-					  int max_rate)
+static int intel_dp_link_caps_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
+						    int max_rate)
 {
 	return intel_dp_rate_limit_len(link_caps->rates,
 				       link_caps->num_rates, max_rate);
 }
 
-int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index)
+int intel_dp_link_caps_common_rate(struct intel_dp_link_caps *link_caps, int index)
 {
 	struct intel_dp *intel_dp = link_caps->dp;
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -121,9 +121,9 @@ int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int
 }
 
 /* Theoretical max between source and sink */
-int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps)
+int intel_dp_link_caps_max_common_rate(struct intel_dp_link_caps *link_caps)
 {
-	return intel_dp_common_rate(link_caps, link_caps->num_rates - 1);
+	return intel_dp_link_caps_common_rate(link_caps, link_caps->num_rates - 1);
 }
 
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
@@ -173,11 +173,11 @@ static int forced_link_rate(struct intel_dp_link_caps *link_caps)
 	if (!link_caps->forced_params.rate)
 		return 0;
 
-	len = intel_dp_common_len_rate_limit(link_caps, link_caps->forced_params.rate);
+	len = intel_dp_link_caps_common_len_rate_limit(link_caps, link_caps->forced_params.rate);
 	if (len == 0)
-		return intel_dp_common_rate(link_caps, 0);
+		return intel_dp_link_caps_common_rate(link_caps, 0);
 
-	return intel_dp_common_rate(link_caps, len - 1);
+	return intel_dp_link_caps_common_rate(link_caps, len - 1);
 }
 
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
@@ -190,7 +190,7 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 static int intel_dp_link_config_rate(struct intel_dp_link_caps *link_caps,
 				     const struct intel_dp_link_config_entry *lc)
 {
-	return intel_dp_common_rate(link_caps, lc->link_rate_idx);
+	return intel_dp_link_caps_common_rate(link_caps, lc->link_rate_idx);
 }
 
 static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
@@ -253,7 +253,7 @@ static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps)
 {
 	struct intel_dp_link_config max_link_limits = {
-		.rate = intel_dp_max_common_rate(link_caps),
+		.rate = intel_dp_link_caps_max_common_rate(link_caps),
 		.lane_count = intel_dp_link_caps_max_common_lane_count(link_caps),
 	};
 
@@ -449,9 +449,9 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 		link_params_changed = true;
 
 	/* TODO: Update these as part of the rest of max param updates. */
-	len = intel_dp_common_len_rate_limit(link_caps, link_caps->max_limits.rate);
+	len = intel_dp_link_caps_common_len_rate_limit(link_caps, link_caps->max_limits.rate);
 	if (len > 0)
-		link_caps->max_limits.rate = intel_dp_common_rate(link_caps, len - 1);
+		link_caps->max_limits.rate = intel_dp_link_caps_common_rate(link_caps, len - 1);
 
 	if (link_caps->max_limits.rate != old_max_limits.rate)
 		link_params_changed = true;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index db17f7ba19954..2afc47c6b7e68 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -11,9 +11,9 @@ struct intel_dp;
 struct intel_dp_link_caps;
 struct intel_dp_link_config;
 
-int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index);
+int intel_dp_link_caps_common_rate(struct intel_dp_link_caps *link_caps, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
-int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps);
+int intel_dp_link_caps_max_common_rate(struct intel_dp_link_caps *link_caps);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
 					 const int **rates, int *num_rates);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a89f9161b8329..b7645bcbe0c2b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1812,7 +1812,7 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 	if (rate_index <= 0)
 		return -1;
 
-	new_rate = intel_dp_common_rate(link_caps, rate_index - 1);
+	new_rate = intel_dp_link_caps_common_rate(link_caps, rate_index - 1);
 
 	/* TODO: Make switching from UHBR to non-UHBR rates work. */
 	if (drm_dp_is_uhbr_rate(current_rate) != drm_dp_is_uhbr_rate(new_rate))
@@ -1847,7 +1847,7 @@ static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
 	link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
 	if (link_rate < 0) {
 		lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
-		link_rate = intel_dp_max_common_rate(link_caps);
+		link_rate = intel_dp_link_caps_max_common_rate(link_caps);
 	}
 
 	if (lane_count < 0)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index bccd3bfe32a2c..52f5c88f7e09c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -58,7 +58,7 @@ static int kbytes_to_mbits(int kbytes)
 static int get_current_link_bw(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int rate = intel_dp_max_common_rate(link_caps);
+	int rate = intel_dp_link_caps_max_common_rate(link_caps);
 	int lane_count = intel_dp_link_caps_max_common_lane_count(link_caps);
 
 	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
-- 
2.49.1

