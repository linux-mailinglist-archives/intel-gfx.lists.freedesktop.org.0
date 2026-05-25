Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CwYA9tGFGrQLwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 14:55:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F105CACA5
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 14:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C015210E313;
	Mon, 25 May 2026 12:55:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pc1z+hPQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7DD010E313;
 Mon, 25 May 2026 12:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779713751; x=1811249751;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=CFQVAVn+B3gG3TM4VRpbtFaX64PrULOZ/9qQ+DgbBBU=;
 b=Pc1z+hPQ9UpiHU6hVKf9cejkQT9N0PCotOD0DBMRL6oW5yXqMhJbOLs3
 xAqUui8SZP6wLuCPe26KR1tfesWILibbN+8mFNOJqIbh/G+YDNBei2uRs
 Np5aAE72a8MukWQG9ZMjhLodmRAgARZKLGJ5KdOqCLDdMfGmCQ6MazfJv
 2/2aGjfMYVJmK5KEOwJGgQ4QcOCFV6mf2V+ZBQGqAqie6bx1ryiSWsury
 5Xwy0elQu4Mapa/U2woLHnzgMBRKwsh/odlV9Jr8cGK84xVziooSWz1UE
 eGrQ9ZepimlTjrZYPk5ftx3RjSE4lDsrZ8pz+L0bAFIg47eUNoSSqrNvw A==;
X-CSE-ConnectionGUID: j1y7sT8vRSyBHYJzKmcgUA==
X-CSE-MsgGUID: CIJiTjRCRtqb4nyCv88zrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="80718901"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="80718901"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 05:55:51 -0700
X-CSE-ConnectionGUID: LzqYbJ0CRG+V29E7ZC+aIQ==
X-CSE-MsgGUID: lVVEbLQYSNGlOUp90bgBYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="279709499"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 05:55:50 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 05:55:49 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 05:55:49 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 05:55:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aKvnINGJ0otZDjd4Xwf6In+T3ppuhWht4YsHQFdvzkEeD0+5KmkTHuJycTxmT+lnvwsCRtjDUZprthd/o4A6zBS+ZzFXekiq9+6kp9DftoAodH9qL/t4TWIODQ95eZjsQf/QZ0aG6w2KsR89r7JobZT9WZ3gAb1cgkvU8k0TccDFr+jfe8JlrOtcBrpqhDMFmY7YXebPqdm0YZbDmL7i8Mo9HKn9hELTj8luGB0S0cDpJrKWVgouOCJNMIMWWraO7u/o3UTE0RFWiUhVtMCV/8qhuk9/y41fUuC+0XWc0kZVqov7LpKvru0zBTl6hpBRorBWbVSFgJOjznMYz3xJ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hj71ksdFD+19wwzPAXIwRPdb2f2iGzlM95apkR2FNPQ=;
 b=gpY1naOyUUE01MGSWexgf8nvFbplOvqOuFroHleLWp4bm+7ImqPQuFuX4MmZO5PQskwICyIkjO/URXQSH9uSf78hm7LbdLzGX2/x/6+G2uGYN9/+c7EpK60bKHJ4vuWn8FLxGENKO+Fg3bG6QoBIvQswLLtdvZ66Qslrwk1HGYwgyeXqjYvx2UgSTndS411tVJK72Jznn+6DSAfrfWNd0TfWvDn8J8h7d5HTUtT/crQ1/WpwaxUjjjU65hdhoXH2fuB8q/MbnH5bjwkGV18kXQZ+3vZwDaxhFNKV+it6e82NbWqMiml6fjN9ENdVPNoTu7C1lTY0/Y9DqPc9R7t9Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by BY1PR11MB8078.namprd11.prod.outlook.com (2603:10b6:a03:52a::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Mon, 25 May
 2026 12:55:45 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0048.016; Mon, 25 May 2026
 12:55:44 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>
CC: Lyude Paul <lyude@redhat.com>, Shawn C Lee <shawn.c.lee@intel.com>
Subject: [PATCH] drm/dp: Add DSC virtual DPCD quirk for Realtek MST branch
 device
Date: Mon, 25 May 2026 15:55:16 +0300
Message-ID: <20260525125516.2794636-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF0001DC08.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::276) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|BY1PR11MB8078:EE_
X-MS-Office365-Filtering-Correlation-Id: 70dff7b4-1168-45cf-fbf2-08deba5cef37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|11063799006|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: pQH2JzRMt60wPcOP0J6w2agvG7bcRI+6OHDDMfIzzNe7BOD8RfbWdIJIGXvXUVp8tyrjVhwZ+uq+ruZUNTE254OvArWHDOQTFRtsAMZZ0/h+Un8tCl2wGc4VGfcwOtPhv20mPaohgL+v9HcN6ziiJFP6qclSvBfxocAFHMVdvpWDjPCNwcl5H8vlFvfKsfNt5gBt8O/WXkgDAQP8I+9KUdUWi3Z40j5FKzhYEeQGSnh3NSd6CiBf/ZEra7lpQSoQuU4KDP4FOffW1s13cepXbpn+nZpJFhhWZfhj20GNlTcIZ5eN65ZdS3xERRarF5ETKF6rRObNPljrCJbHyp08deW6tjRcpz1J7DgFSiLMIw0hQiLU89Pf9QLknwAsaPJSMrmpo5jXBIohK/K+jO9sKOfdE060I4yLL7p9j8ZWccQVbvxkPAvpfOtdeXxas5HFUqFCn9S2lSVKJx8cB6JRiPtKJ7OEU7ntyqL6hL986rQnS0vcIe6jhS05ogL8CwPHF/TQzYDAvBKKVPupTKwsbv5MJ1gLm5GsvvcVRDgoVx8AJ+EpBWj3A+FcOHB5RPREj4w4rNkfF8fhNqJfSQy4PJgEnR9/pmcgrwjuynleIEoqamnH1xlqPn88VmzbX8RYS81GpSzKIADKQtrdupzWREoqQKDCsVRsd7CoMybyTuouh4FfzwKZv0MZ2GivYhKQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(11063799006)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Gi5efTl25jJblKxZa8gEYl+imffUK3AmYS3G20oaQ9I05GgNxj5xRh317Cdj?=
 =?us-ascii?Q?8X7vyRfVSicINAW5TYuvou6Hx6vnXTkR9Att0G/+IE1GG3LysK1r32k6wgDI?=
 =?us-ascii?Q?+I7IKfzr1IffN4vP2VdDRNAqk5N6AteJ+2YKS6PBCQ/8oWJwiYJjkwwiWf4/?=
 =?us-ascii?Q?1AOazt9zQhUuFhxudO+vKQkl5lIosDFtvFiZkBw1eRmcK9Kbxsmns3LTM4Yw?=
 =?us-ascii?Q?LVa7BPdN2snnM5acuion8I7K5QYm3LuGgJqzJf0RgIoWdXYtf4EP2E6hJ73/?=
 =?us-ascii?Q?aJOy4iYXvkcU+c0dZ3i9XF+gJz1cB7c3saElkz5A/MmyTClZ6/2tVvhezZvi?=
 =?us-ascii?Q?IWHbV9BEINQ9VoisWuVgzkCThzPCACuEPCuZV+KmcWOVWgvZcS/V+Ci4S1bA?=
 =?us-ascii?Q?0PqFL8aM8azOMEcmC3CFPHrrZwS5LOKkxHHuLMYp9UPpYn4NDWnzNpHAU8Mk?=
 =?us-ascii?Q?adplT/SoK6c3wFqnGgVjLpdKEowNS4IlYB4CZljewfYF7BOS4RKrg+l8SSMp?=
 =?us-ascii?Q?Iy0c19Mz+XxgAbace4T/NU+QlOMb0NKaFrPfdNUVG3VQ+c8FBB1tyvJtjJYT?=
 =?us-ascii?Q?IZQYQfQyDVr/sElRwmRWtZW8/jj49OHuNznkH8G5I/CKniCxaE0r8YQtL12I?=
 =?us-ascii?Q?pQT7CCdAAPd/tk0MNY0A7RJjBhICcbF57fd4vvyN96lmZBsOa9h9bgD81hqi?=
 =?us-ascii?Q?ejXZDCWpQKDC6ElWnmD6dZuTRwpld4GGT0X5vBiO1G2IA5HlDPHrvmyVgNgX?=
 =?us-ascii?Q?GflXQP1JXJOC2ZY+ToRYRX2+lLvWxCf8NDRRkomE047cCy2/RMt9KEtu57+x?=
 =?us-ascii?Q?nHwL81SmkBakvS8AR49rZ41mXLXAEZg3izwhjj6yea749fRft/HRNFgPmP9h?=
 =?us-ascii?Q?5MufRsCG3cVwh1DfWasg2AQgINzPXnSeCAlvQFwVwpZFvG1cwLg7PV6N/oge?=
 =?us-ascii?Q?kihLV3kXDgDxEekcToHNc5qOrLJYhnKmSUmHrR9JN+zvEB8Xs6jn57+klPL/?=
 =?us-ascii?Q?kPcoLgZKT/dbJxaaNARbM/UVoEpMM6vpucLtQaRQX2zsNqC99qje4QXRiYl8?=
 =?us-ascii?Q?bBGRsNkblzLsdzWdtaWLVa2jVOzc9RAOnyQvzZ3JyA+pHxGVFLpqcZVb10EW?=
 =?us-ascii?Q?dY+hgP5GU2iVhsK3CXOZF/x/JZ9NGsfb1eLdeCbjTC6Z4JX0X7Tcz+UhCn0E?=
 =?us-ascii?Q?8DmM+ZkuDVCmeh0dIwRqaAfs8xVcpNubuu2Ld6VD/VvZKph7IL9EjjONStMJ?=
 =?us-ascii?Q?/a3VEyGt6wk1e+FccPNjc2qJxmZkjgblB3h+OWENXw33EhPpt7gK+QkPieNN?=
 =?us-ascii?Q?GifH3V84ZCJUgzpV/CC4dlxh75NPdGxxoxACvwKhScL5ECoCN37zsAyVegjO?=
 =?us-ascii?Q?Lhj4rvrIEISooCLKTSjSCt7w6gcqdwkwGxGtQd/RBxD9uwHx0vU/YFqEiOoR?=
 =?us-ascii?Q?5rsypR/jbB2MK49bsYpTUny4yqWbSpxVezpHsSYyE+JFygsxQ4LuGaKbjsMT?=
 =?us-ascii?Q?JdcS5VGT8FAfsE71Jx41wXmK1KwR/mxDmNNQXdohDseEg3GDEKYmTRAwXfzK?=
 =?us-ascii?Q?bOjNb6bekcrAoRPvpcGPZLZgGJpkeLl3UYk33r4hs/EdMZmVTaxZ4THE3PPP?=
 =?us-ascii?Q?4Z3q1uAB19nFH55NKPH8oqWonb1COa0eoWacKActPYryP6h6xnkPyBDebx36?=
 =?us-ascii?Q?cL1GcO/eI60IFPdVIKVQ+Qc3sZAUej2wEorkpp31FM1kdq7Z16S4aRlP0l86?=
 =?us-ascii?Q?xH/AJnKeWw=3D=3D?=
X-Exchange-RoutingPolicyChecked: SY7y/TvsgpdpDSbPyn8cMX0UxQhWPNMl0R8uiheHSTgX2KTTUYMkuLY//ZhcbZkrplH9bIwG8zajqXOKWVWiWHnY/lQ94UyfwKQDHrXSYT9c2KvGPzko/AvCNASL8eIbWucbNgMf96y1aoYr68eoOjZWDqEiFbykk5MF0C/PrRGZj09wVQoNpIYFqT8f6K5E7P4Fb8DtHgROLGr/D94XMWkCAQdQ57Z4AzX0NoZxx8BW7eygDXP1NXRI8UOKvAcdWbjGs1sBwdyhIkl3Qei9b7ANKOw4av6zDbj1K+ERks9nttpWG8cErhVDK8nErxK7t0AnOEkucF2rJkXc4A6Xqg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 70dff7b4-1168-45cf-fbf2-08deba5cef37
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2026 12:55:44.8238 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wxlLhGnwbe0VzkApzrmb86ZJRQM6WobahAcfLb8etp+knIJXwRzwx4oZVdyXwVUTQUZKUtdS0nHq7NGaM8UxzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8078
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
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D2F105CACA5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The ASUS DC301 USB-C dock containing a Realtek MST branch device
supports the DSC decompression functionality on each of the dock's
downstream connectors, even though there is no discoverable peer-to-peer
virtual device in the MST topology (which the DP Standard
requires/suggests to control the DSC functionality on a per-DFP basis).
Add the DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD quirk for this branch
device as well to enable the DSC decompression functionality on all DFP
connectors of the dock, similarly to how this is done for dock's
containing older Synaptics branch devices.

Cc: Lyude Paul <lyude@redhat.com>
Reported-and-tested-by: Shawn C Lee <shawn.c.lee@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index a6067471dd563..9c31e14cc413b 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -2546,6 +2546,8 @@ static const struct dpcd_quirk dpcd_quirk_list[] = {
 	{ OUI(0x00, 0x00, 0x00), DEVICE_ID('C', 'H', '7', '5', '1', '1'), false, BIT(DP_DPCD_QUIRK_NO_SINK_COUNT) },
 	/* Synaptics DP1.4 MST hubs can support DSC without virtual DPCD */
 	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) },
+	/* Realtek DP1.4 MST hubs can support DSC without virtual DPCD */
+	{ OUI(0x00, 0xe0, 0x4c), DEVICE_ID('D', 'p', '1', '.', '4', 0), true, BIT(DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) },
 	/* Synaptics DP1.4 MST hubs require DSC for some modes on which it applies HBLANK expansion. */
 	{ OUI(0x90, 0xCC, 0x24), DEVICE_ID_ANY, true, BIT(DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC) },
 	/* MediaTek panels (at least in U3224KBA) require DSC for modes with a short HBLANK on UHBR links. */
-- 
2.49.1

