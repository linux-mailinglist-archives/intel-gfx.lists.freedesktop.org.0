Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GVwEAG5VVmpH3gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 977667566C3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Z2JN+Zqh;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC21D10ED98;
	Tue, 14 Jul 2026 15:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D31FE10E96C;
 Tue, 14 Jul 2026 15:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784042857; x=1815578857;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=5ewM3UnpTGZZt89Wg8h0chw9gKRrbXKZnudfcOsTaNs=;
 b=Z2JN+ZqhwM/nfUyRLMdIi3TTRY4WM/r7QmSrx5mOQcPwqUEBYNYsh9zO
 GA96BrnTNmSXbr1zSxd0akDhon/K/CcQj2tpBNWiOCfDVjtsq2JkASLZO
 g/yLG6nYqlO5n9te9UINoD7d2k1ZOnI4Mi7AXJudKzy4mXqjpABP4v2qr
 AjFr61IdLL/aj9p2QcfOYP6FkzaxNpj3PnULGUf87d5bKvuvJ3VV5S+Aq
 1xJ3wrfU2DkA1uMGsGp8SauvxPCjwLx04HSAI8j28ZviBfEZdGTVs3tGX
 9svP6yJH40GQrcFvTmuxIyxhauZ+QCJQ4iP3pkkgBWAxRWd7MB/vQbZxi w==;
X-CSE-ConnectionGUID: 8SXQHmBLToGRKgcHmFYrtg==
X-CSE-MsgGUID: 9a3rRWW2Rr+c46nqSfwIAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84547996"
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="84547996"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:37 -0700
X-CSE-ConnectionGUID: jEWtmYxVRiOwzHoqmNrhEA==
X-CSE-MsgGUID: uZHkWe4rQOWSjay/VIJa2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="285962040"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 08:27:36 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.59) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cl5nl+pBW4WzeoMp/n1bri/XhK0snB26oqlq+oddsMTYmGtff/aU4LeRsJNPJCVdeS4nxyWE2FtAFBfsQ+nxJhqIJEpq5zdRraPM5aZh10NDKDDBgHuB03QsJm5mYKAl1+rY+PQUvSZlAd/Fdk81+exaXSB/fE4tEsvE8JFcAWKW2XeDHSPKqnyOCuVf/7huyyIXDhXZgyyho2UKgul94vE5IkWEeEJSfwepNY4a3fjL5V68Uf6hNMGnOOYWrBeWWJBA1CBjaDcnXTASLvKV9ZF7ckPj3Fi8iGM7zOeHk93fi/UZyspq2N3rNhRM83bPaG93/M047rgrw2PfDlSlAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6VrchEL88z19x3yK8HA/3JkveHtg2vfldjCFUSYsVN0=;
 b=S1AROSP1umoRcfXdxEHoaZaDWa7Zq/YivWA9rEU1gkwzToornSyMlCuCpzzx44ktlnRCJ2o5KlU0iMMOyN5Bzr4k+t27YAsZrurxtQHooEGGcv/zL/Ih4KBj74B+3jxBYaYpuFQ9X52fszjMKzGKSOVV6nBi/kARHxjf2jBzw0/QNwEoSDEt1GlzpyShQmaPTagMciP7XdIioL35fRblUL2vPxbCVMmACGsaqcV7lGzq4ZA/mDNDU/2ktV8vgj6LOPCBLsqQK8ipIINbuiSZqpOW6CHA3bMZPAF9oFKEegpL6EyqSCRNTOFfA32WUCE+2BeAzVFRtz80EAnmI4qYVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Tue, 14 Jul
 2026 15:27:31 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 15:27:31 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <dri-devel@lists.freedesktop.org>
Subject: [PATCH 1/6] drm/dp_tunnel: Add UHBR tunneling support
Date: Tue, 14 Jul 2026 18:26:55 +0300
Message-ID: <20260714152700.555527-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260714152700.555527-1-imre.deak@intel.com>
References: <20260714152700.555527-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF00073CE8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1d1) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|IA0PR11MB7354:EE_
X-MS-Office365-Filtering-Correlation-Id: 987a0726-d37c-41d5-bc7e-08dee1bc6a02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|6133799003|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: a2vTGDDPEtsUrYKLYfvohQef218VWrIONKqA12Titcsfw3u0wz4H7Mbhj8IetIy2V0NV0TPc4E2p+NaYGaEtzUPF3atRnr3CZjAQ3HASleToS7bFmqoTxTdET01kfZsmVjyd4DYb9lCLCMIIMFb7e4OMFAh2ML6F/hx15HlxDRLutAhx08YzxU1bIfv3aXF+5YKsmiW5WfrQdO6vo9RoCWbhPqWL2SyDI76PA5yMMkaucTlbW6MC4gmMflziD0OW1FekKem4GqCWPLqrxnc8l3Zo/v4bjgOqxc4lPpM8G7+qeLpUNJnaPnsWMDdrgFnvEocC4l7WiqyS4djzCNP8t18mlfefipOvic07ZJJ2g40UBXGZNt6yjRqf1bYsHGIYjO9x094FC8O7rYdeZMVTbF4zzwLgy0jSpsH+fDZx+0zUwt682nQtxRmw6IXnCfCZeTQloUHxXzBxHrjKZelGKVMNbxU54nrKC7bkik5JgTyLsv0m5+67L9lz9IGwZek++IzCopUaa8HXq/kKPfv4OC5WIGWhARnzwdoquCrLwosZEgE8Da7+fngYF8viTaL/7wAIuPjg7V4aoXvmLTSl27hWAcFqvkUOyxO1DXcOtNbvWmlKsPC8Ry5S8aNL6uFiUEp1ZYeh7rs2NCB+mPv+BOL/J/gR+FIZCk5FeABR1ec=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(6133799003)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Zs/glShu1eKCAHhQTXOzeH+QlyW4DnUlKpKSyxABN5oMzoXtlIH35sbLTG2x?=
 =?us-ascii?Q?5O0ZJiwtk8UAsPSjw30zH1ORo+rN+vokBZCxsj7bDptDG2cgud8HEhncfOT9?=
 =?us-ascii?Q?7pZqdugwhbVFAdJaS+7UCkmzywc1R+oIQPFI/wBTOH98rmRb9kFFrvqtQoET?=
 =?us-ascii?Q?NM0MMY6mJcIpjJtxtOYZ+b/yA7bFxny0uhopJO/LNC2joFqAJ3gxvFpuHUmQ?=
 =?us-ascii?Q?XBi+4nuP/xT18W1cFur5gbG5HmrlzVFk1QeKIMjdXKnOuV9C8T+eUrspfdac?=
 =?us-ascii?Q?nxt2A62HgyZmXB61JoGWH7pbW3dBBbknhYYmAPnr1Viymm/9uz69uHur0+jI?=
 =?us-ascii?Q?Xe7mqT2TV/qefvOO/juoQIpj3HQ26CGpsFgiC2JANobyH7h3e3niSVgG1Bsq?=
 =?us-ascii?Q?THILimub7BF8X7xPs3qiW9G/Y+T8IY444Th3Kt124BtJoXMGkb9DAyB5KKUr?=
 =?us-ascii?Q?cVIuCSWC+3OsgMvM1PAyPyJSQ7zqig6n8UmZs0JjEvJ9IjneAIf7LpluIYIr?=
 =?us-ascii?Q?wCpX6wtixuOQDh3QALdQTIpvko9mjaahqlB5AGx9n3caJOsRVoEq8AKVAj0F?=
 =?us-ascii?Q?EmpU1YrE93Eop/Eh435WLABladUHvpV3sRgRpLWc9bj/qkzh71IUTz+WONy5?=
 =?us-ascii?Q?0NMo00rWt9zYi79alRBKCk3qVWXHDWCPu6k3uDDIqymypbO9HZmbsb3WLUtf?=
 =?us-ascii?Q?i9HT7umGuHH6WUS7fNt9JezhP4iAPFSuVs2NMlFNKTF5IDbEMbqvGopoCZMJ?=
 =?us-ascii?Q?AdVwsek1C/xbBgDX8QfsbyWRsAW7wBda9ZrkjbPeRLPNDYZGKPDmSuYfWTCx?=
 =?us-ascii?Q?2NwXYRz9J8OpybLQgQW8KcQOJQeOoojaUIuj/DOBAtr2Z0PPpet6TS1vZO3s?=
 =?us-ascii?Q?IwcFRUOXCbf8Is4q2RdwnoaiNNvVKVdmBGzjo5HUTOUq6lLp1XfxQGUz0/ME?=
 =?us-ascii?Q?3lAS4j7TtJ+LdcnDdPf91OU+gDDASJ/YgPcZ+buxQK12BMu+6yKhpdtIRsPY?=
 =?us-ascii?Q?lZZjzbcLjcjyPsaEWO0CP/peGJYolssbY6OQmdELaeqp3PQuwtp9U0mAZPjo?=
 =?us-ascii?Q?n2DHVf5zrRlB5pSIHHc306HX/lCM6gy+Tt0twqZZesX+0sOpXRUEphB5aXsP?=
 =?us-ascii?Q?rcPIhtLWsD5aWw+UAGV788rNVufa+Q1mALawSjKTR30KpyFBco3qQUV6XA7S?=
 =?us-ascii?Q?3moPiTskx5gPAsoP14ph26WW9IpQa/ZsRCGVxS5PXvBJ+HKaVneTiEjoilf2?=
 =?us-ascii?Q?onkYfeAaYaeMtiqtoCl+NyZTyL135ghxUBQdz8bO15JqUELCw1lDFvTUK2yr?=
 =?us-ascii?Q?uyqXdH28+oOK5SYFPeAABkxdtqILB/YjVLDA+rXAaFbF6Y3erCm3XYdjHtS1?=
 =?us-ascii?Q?UoBEv0wCb7XMRQDxRAruGAI+UkAjqcL6DAf0VZfAxRQyu21ixUHml/0dPP7E?=
 =?us-ascii?Q?hawqDniISWLkivUR/wtyT9JKEUEpOjTNTdIQ2sOxUVuhWWq4OnW8RVeMQUaY?=
 =?us-ascii?Q?QMOfw16ogJ3TQBp6YfvRo/gyA/h2zm8Ea95RwimOrpi1QSo7fZIuFfD0Rt0S?=
 =?us-ascii?Q?d5gZbWgVSV1j+BkrTPYwnmJVJGCi4BvOHoRVyWl+j0WLrH+V76cLBGfk0r8E?=
 =?us-ascii?Q?kDNjA5fh4+ed+8QhfdB0FgDr2y9HWISbJW1l6aAfpjSCwk9jBDnVpiMiRP+Y?=
 =?us-ascii?Q?aKaPSVnr91N8I1DlTD/vRN58CH5JPdJDG4hVw0PvwTPvjnyamBcKx05RMAaN?=
 =?us-ascii?Q?VKtES6GV5A=3D=3D?=
X-Exchange-RoutingPolicyChecked: TetP3WwOvDPq1iThJw3fyEZmNWjSKQkhArMrawOWNBzJvU9qBDCqFkNXWZCnJJLiD4ajag4yj1sMhsAHb7JvZNgZDhxMBk56/MfMZZpAZqvqTt3JaHPKTEBS+u7mCkspACs3FoAgVHDUW6HeLb6cvE/Kom+SE2oXzLeeHX5YQqVSjpeoUSy3MeJRUi1Dq5itX1TTSVD/h4Hl9zEBCzav53c0PQf95bSF2jdvCCPGVbKhqajL4pApW0UcGwoNJEHqJSYybDSiav6P0kdtXMZkDZLCpG9f6m8DGNvSALp/e+B2aBXcRxLfFT1QeG4zEABzHRfGQLGLKNghdOP0niNQ8Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 987a0726-d37c-41d5-bc7e-08dee1bc6a02
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 15:27:31.5731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mF59scI1KbKGOcvEHTjH0mKeHFCzsULBLpmEDOamKUZtt0ct61HIsY6wCX4gGBeN+xmlFAbAhcjuIM59QTRM5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 977667566C3

Add the DPCD registers and detection required to support UHBR link rates
over Thunderbolt tunnels.

Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/display/drm_dp_tunnel.c | 116 +++++++++++++++++++++++-
 include/drm/display/drm_dp.h            |  12 +++
 include/drm/display/drm_dp_tunnel.h     |  21 +++++
 3 files changed, 148 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/display/drm_dp_tunnel.c b/drivers/gpu/drm/display/drm_dp_tunnel.c
index 76c6bc84a806f..d29ad4116e641 100644
--- a/drivers/gpu/drm/display/drm_dp_tunnel.c
+++ b/drivers/gpu/drm/display/drm_dp_tunnel.c
@@ -111,6 +111,8 @@
 	DPTUN_REG(DP_ALLOCATED_BW) | \
 	DPTUN_REG(DP_TUNNELING_MAX_LINK_RATE) | \
 	DPTUN_REG(DP_TUNNELING_MAX_LANE_COUNT) | \
+	DPTUN_REG(DP_TUNNELING_MAIN_LINK_CHANNEL_CODING) | \
+	DPTUN_REG(DP_TUNNELING_128B132B_LINK_RATE) | \
 	DPTUN_REG(DP_DPTX_BW_ALLOCATION_MODE_CONTROL))
 
 static const DECLARE_BITMAP(dptun_info_regs, 64) = {
@@ -140,11 +142,14 @@ struct drm_dp_tunnel {
 	int estimated_bw;
 	int allocated_bw;
 
+	u8 dprx_128b132b_rates;
 	int max_dprx_rate;
 	u8 max_dprx_lane_count;
 
 	u8 adapter_id;
 
+	bool dprx_128b132b_support:1;
+	bool dprx_128b132b_lane0_mapping_support:1;
 	bool bw_alloc_supported:1;
 	bool bw_alloc_enabled:1;
 	bool has_io_error:1;
@@ -260,9 +265,46 @@ static int tunnel_reg_bw_granularity(const struct drm_dp_tunnel_regs *regs)
 	return (250000 << gr) / 8;
 }
 
+static bool tunnel_reg_dprx_128b132b_support(const struct drm_dp_tunnel_regs *regs)
+{
+	return tunnel_reg(regs, DP_TUNNELING_MAIN_LINK_CHANNEL_CODING) & DP_128B132B_DP_SUPPORTED;
+}
+
+static bool tunnel_reg_dprx_128b132b_lane0_mapping_support(const struct drm_dp_tunnel_regs *regs)
+{
+	return tunnel_reg(regs, DP_TUNNELING_128B132B_LINK_RATE) &
+	       DP_TUNNELING_128B132B_LL_LANE0_MAPPING_SUPPORT;
+}
+
+static u8 tunnel_reg_dprx_128b132b_rates(const struct drm_dp_tunnel_regs *regs)
+{
+	if (!tunnel_reg_dprx_128b132b_support(regs))
+		return 0;
+
+	return tunnel_reg(regs, DP_TUNNELING_128B132B_LINK_RATE) &
+	       DP_TUNNELING_128B132B_LINK_RATE_MASK;
+}
+
+static u8 max_128b132b_rate(u8 rates)
+{
+	if (rates & DP_TUNNELING_20GBPS_PER_LANE_SUPPORT)
+		return DP_TUNNELING_20GBPS_PER_LANE_SUPPORT;
+	else if (rates & DP_TUNNELING_13_5GBPS_PER_LANE_SUPPORT)
+		return DP_TUNNELING_13_5GBPS_PER_LANE_SUPPORT;
+	else if (rates & DP_TUNNELING_10GBPS_PER_LANE_SUPPORT)
+		return DP_TUNNELING_10GBPS_PER_LANE_SUPPORT;
+
+	WARN_ON(rates);
+
+	return 0;
+}
+
 static int tunnel_reg_max_dprx_rate(const struct drm_dp_tunnel_regs *regs)
 {
-	u8 bw_code = tunnel_reg(regs, DP_TUNNELING_MAX_LINK_RATE);
+	u8 bw_code = max_128b132b_rate(tunnel_reg_dprx_128b132b_rates(regs));
+
+	if (!bw_code)
+		bw_code = tunnel_reg(regs, DP_TUNNELING_MAX_LINK_RATE);
 
 	return drm_dp_bw_code_to_link_rate(bw_code);
 }
@@ -706,6 +748,23 @@ static bool update_dprx_caps(struct drm_dp_tunnel *tunnel, const struct drm_dp_t
 {
 	bool changed = false;
 
+	if (tunnel_reg_dprx_128b132b_support(regs) != tunnel->dprx_128b132b_support) {
+		tunnel->dprx_128b132b_support = tunnel_reg_dprx_128b132b_support(regs);
+		changed = true;
+	}
+
+	if (tunnel_reg_dprx_128b132b_lane0_mapping_support(regs) !=
+	    tunnel->dprx_128b132b_lane0_mapping_support) {
+		tunnel->dprx_128b132b_lane0_mapping_support =
+			tunnel_reg_dprx_128b132b_lane0_mapping_support(regs);
+		changed = true;
+	}
+
+	if (tunnel_reg_dprx_128b132b_rates(regs) != tunnel->dprx_128b132b_rates) {
+		tunnel->dprx_128b132b_rates = tunnel_reg_dprx_128b132b_rates(regs);
+		changed = true;
+	}
+
 	if (tunnel_reg_max_dprx_rate(regs) != tunnel->max_dprx_rate) {
 		tunnel->max_dprx_rate = tunnel_reg_max_dprx_rate(regs);
 		changed = true;
@@ -1331,6 +1390,61 @@ int drm_dp_tunnel_handle_irq(struct drm_dp_tunnel_mgr *mgr, struct drm_dp_aux *a
 }
 EXPORT_SYMBOL(drm_dp_tunnel_handle_irq);
 
+/**
+ * drm_dp_tunnel_128b132b_supported - Query if 128b132b is supported by the tunnel's DPRX
+ * @tunnel: Tunnel object
+ *
+ * The function is used to query if 128b132b is supported by the DPRX connected
+ * to @tunnel.
+ *
+ * Returns %true if 128b132b is supported by the DPRX.
+ */
+bool drm_dp_tunnel_128b132b_supported(const struct drm_dp_tunnel *tunnel)
+{
+	return tunnel->dprx_128b132b_support;
+}
+EXPORT_SYMBOL(drm_dp_tunnel_128b132b_supported);
+
+/**
+ * drm_dp_tunnel_128b132b_lane0_mapping_supported - Check 128b/132b lane 0 mapping support
+ * @tunnel: Tunnel object
+ *
+ * Check whether the DP-out adapter always maps lane 0 as expected by the
+ * DPRX on a tunneled 128b/132b link. If the function returns %true, one- and
+ * two-lane configurations with UHBR link rates can always be used. If it
+ * returns %false, using one or two lanes with UHBR link rates may cause a
+ * lane-count conversion failure in the DPRX, requiring corrective action by
+ * the source during link training. See DP Standard v2.1b, section
+ * 3.5.2.16.3, 128b/132b DPRX Lane Count Conversion Failure Indication and
+ * Corrective Action.
+ *
+ * A four-lane configuration can always be used, provided that the DPRX
+ * supports it, regardless of the function's return value.
+ *
+ * Returns %true if the DP-out adapter supports the 128b/132b lane 0 mapping.
+ */
+bool drm_dp_tunnel_128b132b_lane0_mapping_supported(const struct drm_dp_tunnel *tunnel)
+{
+	return tunnel->dprx_128b132b_lane0_mapping_support;
+}
+EXPORT_SYMBOL(drm_dp_tunnel_128b132b_lane0_mapping_supported);
+
+/**
+ * drm_dp_tunnel_128b132b_dprx_rates - Query the supported 128b132b rates of the tunnel's DPRX
+ * @tunnel: Tunnel object
+ *
+ * The function is used to query the supported 128b132b rates of the DPRX connected
+ * to @tunnel. Note that the related DP_128B132B_SUPPROTED_LINK_RATES DPCD
+ * register will indicate no supported 128B132B rates for a tunneled DPRX.
+ *
+ * Returns the mask of supported 128b132b rates.
+ */
+u8 drm_dp_tunnel_128b132b_dprx_rates(const struct drm_dp_tunnel *tunnel)
+{
+	return tunnel->dprx_128b132b_rates;
+}
+EXPORT_SYMBOL(drm_dp_tunnel_128b132b_dprx_rates);
+
 /**
  * drm_dp_tunnel_max_dprx_rate - Query the maximum rate of the tunnel's DPRX
  * @tunnel: Tunnel object
diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 7154216e0aff9..8b0ca36083dd1 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -1506,6 +1506,18 @@
 #define DP_TUNNELING_MAX_LANE_COUNT			0xe0029
 #define  DP_TUNNELING_MAX_LANE_COUNT_MASK		0x1f
 
+#define DP_TUNNELING_MAIN_LINK_CHANNEL_CODING		0xe002b
+#define  DP_128B132B_DP_SUPPORTED			(1 << 0)
+
+#define DP_TUNNELING_128B132B_LINK_RATE			0xe002c
+#define  DP_TUNNELING_13_5GBPS_PER_LANE_SUPPORT		(1 << 2)
+#define  DP_TUNNELING_20GBPS_PER_LANE_SUPPORT		(1 << 1)
+#define  DP_TUNNELING_10GBPS_PER_LANE_SUPPORT		(1 << 0)
+#define  DP_TUNNELING_128B132B_LINK_RATE_MASK		(DP_TUNNELING_10GBPS_PER_LANE_SUPPORT | \
+							 DP_TUNNELING_13_5GBPS_PER_LANE_SUPPORT | \
+							 DP_TUNNELING_20GBPS_PER_LANE_SUPPORT)
+#define  DP_TUNNELING_128B132B_LL_LANE0_MAPPING_SUPPORT	(1 << 7)
+
 #define DP_DPTX_BW_ALLOCATION_MODE_CONTROL		0xe0030
 #define  DP_DISPLAY_DRIVER_BW_ALLOCATION_MODE_ENABLE	(1 << 7)
 #define  DP_UNMASK_BW_ALLOCATION_IRQ			(1 << 6)
diff --git a/include/drm/display/drm_dp_tunnel.h b/include/drm/display/drm_dp_tunnel.h
index 57f5e90ba8fda..b5e665560a47e 100644
--- a/include/drm/display/drm_dp_tunnel.h
+++ b/include/drm/display/drm_dp_tunnel.h
@@ -63,6 +63,9 @@ void drm_dp_tunnel_set_io_error(struct drm_dp_tunnel *tunnel);
 int drm_dp_tunnel_handle_irq(struct drm_dp_tunnel_mgr *mgr,
 			     struct drm_dp_aux *aux);
 
+bool drm_dp_tunnel_128b132b_supported(const struct drm_dp_tunnel *tunnel);
+bool drm_dp_tunnel_128b132b_lane0_mapping_supported(const struct drm_dp_tunnel *tunnel);
+u8 drm_dp_tunnel_128b132b_dprx_rates(const struct drm_dp_tunnel *tunnel);
 int drm_dp_tunnel_max_dprx_rate(const struct drm_dp_tunnel *tunnel);
 int drm_dp_tunnel_max_dprx_lane_count(const struct drm_dp_tunnel *tunnel);
 int drm_dp_tunnel_available_bw(const struct drm_dp_tunnel *tunnel);
@@ -173,6 +176,24 @@ drm_dp_tunnel_handle_irq(struct drm_dp_tunnel_mgr *mgr,
 	return -EOPNOTSUPP;
 }
 
+static inline bool
+drm_dp_tunnel_128b132b_supported(const struct drm_dp_tunnel *tunnel)
+{
+	return false;
+}
+
+static inline bool
+drm_dp_tunnel_128b132b_lane0_mapping_supported(const struct drm_dp_tunnel *tunnel)
+{
+	return false;
+}
+
+static inline u8
+drm_dp_tunnel_128b132b_dprx_rates(const struct drm_dp_tunnel *tunnel)
+{
+	return 0;
+}
+
 static inline int
 drm_dp_tunnel_max_dprx_rate(const struct drm_dp_tunnel *tunnel)
 {
-- 
2.49.1

