Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FpILxWu8GntXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F594853EA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2726910EBF7;
	Tue, 28 Apr 2026 12:54:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PNZllwjG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BFAC10EBF7;
 Tue, 28 Apr 2026 12:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380870; x=1808916870;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=tU0HTVg3WhzBMbMLMWoV+IoGUGb/WAQljdNXf4KBEwY=;
 b=PNZllwjGt9vmFdT4Ptjs9ucGhHFPfbF/X9VRnPrqxNmO9iSG6JLNERRK
 Hlvkn5xq81bMRw9zmdL+Yf3v0VJAKpZiQs9MmsunXOfsn9vrYbD7Yk0LO
 Vx8enjoj88URNzwYHCtd6gM09HGgjv4p23YsSg/PdARyrOWjUGPu3ROV9
 6t7LyLyWsusHzh17bRK0E5W1oSzXYPH3F5M4UA+pHM9krW4tzAvnqXZVB
 GdBTrQewNu5zZyMMXnNV+OKGpvv5QS0jAZdFMtu1Rd4QPlBaCuDQrDMZk
 ALz2sdq0SiEZvGsfFkf0Gjxq//MDnjqiBKDqp/HmUm84/2gynk8RDkE9H Q==;
X-CSE-ConnectionGUID: Cc27UR2kQiepeLSFxnNOCg==
X-CSE-MsgGUID: wsgoHZLqTHasLBTgfRLnWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893780"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893780"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:30 -0700
X-CSE-ConnectionGUID: t3tt7JFEShSgW2bcVVgfdQ==
X-CSE-MsgGUID: eB10+3rYQ6+tdxlqeT7gsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083513"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:29 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dGX1lEdGq0Qtm5JkOTxlLC/T2xO8Txa/GDNU2oIu2rhfDGsY8YiVzAONytyO1kICx6n4cHWZYCSV/Lk8eZ4+TrJfxq6LZ4UMN/9n+H9bKQEHWZ8R1NABa/dUAgCIA3nk1yRluUVugccEB0c5OhiQNDV2TtIZDEXu0aJ7IWVNQcM2l644np6xjyvepxY5WFUdSSkE1qFq4Ux05iZsL+TeSu/O7d29clP/KWo2Uls4AajUnModESIcQO+bL9xhD1nbf8RDPcZwlEbtWEZKSRn5A/jNbL2AfHenQnS39DckCiQysnlQx8IgbMbfg0/Ee6wWA3KyzAlwzqO/+Xtn4csYqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5BtywoEqflZ0P4SkSYkCo+UB1peQont4d0CkTknSva4=;
 b=KLwgt/YIlQU5iplUCzGN9phBArFFGqeo14Ui2+S6Es6QWuSCa8Y1nSOjht1UsuqV5xFSQbx51wMr3GAHwtVWo5a8w4EsptxR7epEYagT14jZ12HEmKGndT0bhBWboE2Gx0xnRqWR8LWp2LTluUNNA7sLAxuTsGozlEp07oQDlxislj+eA4bSDjBthuwvgu6Y1x0/YrVJ9Bf/FAMZvyU8pyH3zl07tydBdt2sYpsYQ565HE7UX9o24hp8JqFLeD6C7NyedanqLn1YnQhIMBsgUP/+CRLx0bR7cJyjHXVvvo6OWDBPoD/guFWW01WZo5TQz8E+ym0yWyOo2yxEX8ri4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:18 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 042/108] drm/i915/dp_link_caps: Add helper to get the number
 of supported link rates
Date: Tue, 28 Apr 2026 15:51:23 +0300
Message-ID: <20260428125233.1664668-43-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 7947f6f1-73c9-4616-6bae-08dea5253183
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: V6DH1whkbWdj3KFxgMPNCLmzOEfT9At8cm0PKCQBDkXprtuCW+4DRpI2PTjNl4aWsRXPY4rdrmQW6bU3tsyJDTxbbxLNCdQogAWHKfJSxPRQQpCbEJJ5mZgf2/i8IlTjU6lxAkfwEsX/E21mu1o0+qoezJ1PB0D3i9+exKs3THq3nP9dFTsR58ORiccWLb8Tb3RJyDKPzCSfqEhw9jGmSQCxZw+0ahpV/uCAIHfjAAPni7rsgZTQdTQuDt5fF0eeKge6xGaDDkuPqN8ZNihIgXvhIJtOCdw3c6VVqnP5cmcvCeMUV0cJNwZlWlwOO/zXQrKX35FoxoaigaWNhA6gPRwlOBy6pCJ+ilce4IShdD9yElWEWQMNX1LTj3hnaGnI3fIvRKHVRmoN3sMTJ2BKxDDwTLOR8C0uVsxtjsWs2JOQPaeYZ5Lx80qcx8uwmc7+WQakp4jc17hYualuB+IuxHdH6vOn4u1BhTH+S7w5MH6UZcNo4XFQ5viihMcYlQAH8abVPO/MgQxG+Av4dLT0U+2c8YMu85YjaVRVUEgVRs21gox/o0AEr90ed5DE71o1/hmcA5eTqc8rK7KIF2TqMjl8zHFbTSKMzYJDn/5Eisn8lF4Ev93r5Ze81YOKqa3YXCVrimrOjr3GUZ2Wqggtya9FFdxd72mqMpLLI1954xvRPoA/318ppFSr11c4eIVUHxvKQMggYBeiGM6sXQ6mIo7PC8b70XYFcerWJEDvKig=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jSjIPzuya3RyWt7xmAV3XBVzxDrN5o3ox3E3csWqte+vo/MvDoDccFiI75Pz?=
 =?us-ascii?Q?HsnsD2DxqNSNROzbNMtWgwVXuFs6zMdw5FNPAExOzvdwMyY/qGBzHRj3WEho?=
 =?us-ascii?Q?v3NdlECpGjwOUunuN/otjyRBjgN/1o4Y9KQJJ4aqJk2tBTlZNsviKvBdCPSb?=
 =?us-ascii?Q?U5VvBE5FyETdhuc3605Mqtsna3jxrJ43UCJvoyJs0mX2EpFRLa+Y0LHQLnKM?=
 =?us-ascii?Q?eyPoPyEA4uZt5G3zs31ldjKo8N/TjFLV5EyKLApXBEJ6CvjHS+ZtOpR94GkU?=
 =?us-ascii?Q?8MMmrur0YB2OMkozFL2yGiJfuE7aseZFW9xDu1be+yykXcFb7vuF6SljNJ4s?=
 =?us-ascii?Q?02lYt4YkUn7nk7DB7ljsf0P+p4ctrxyxgIN+ppJVF6tiCREMunl79yk4rlmX?=
 =?us-ascii?Q?hl+G8haOVtCgxK8IwoH/uFSj1LdBq3xNZgh+VohR+EuzzCcuPLEq01/Yun08?=
 =?us-ascii?Q?Zqzhm1qm/Y9s4GY1v6MFULpKvPb45aCva8voYOpHlYLD6nHEoFM8bZpn3W+S?=
 =?us-ascii?Q?bbw5TNpZshwMJ+d7bZqojHIdHdLjZMdIQPhHRBeYMf23zSgPqazBXBG1uArJ?=
 =?us-ascii?Q?RHiu2EAJdm1yyQV4jlkppgYS+tC9WQctQrI4t9snde8Ny9xRwTIdGbgAgFOk?=
 =?us-ascii?Q?XqrDLjCI2SdgXuybb5j+q4WtJxCVJL8aG20TmtdUJ1N+Da05aJ9n0dS1THnc?=
 =?us-ascii?Q?i/cDFAQG98i/gLlhhgittrzjD7XHdTiUfWJbYSMcz5XRj6bEM+6pA3mDooTy?=
 =?us-ascii?Q?qWhoYhYKeTEEZZxha/4sayzii9A/ADzcG2YSAWKX+Zm+mtEStb5BGa/ZAVjh?=
 =?us-ascii?Q?4E2MZIaiWz1nq1tRhhuVpirxU+tKig2eNBrxletahDAEiAMcAeXf8JszfbN/?=
 =?us-ascii?Q?poO0eXfViscmauAb/SICIu6WnJE0C1oiRSkxp5pNbFaZRD5Z4EQOb9wzWotD?=
 =?us-ascii?Q?dg2BpTQz7IHznpRmsB04RR0fEPCM/zi/z/H7o5jcmOdfZ69k3VwDDT/PmH19?=
 =?us-ascii?Q?iOkBpwqFpp+vaqws+AmwfF1VusvQu0wLtDh8Dw5N6osCHGbeAncN0bIdqUEj?=
 =?us-ascii?Q?o5GEI254c/CAaDgM9APNtop2Cz4vjQ86EIwQ5Oi0NoSgHOTQpz02Cdb0MYas?=
 =?us-ascii?Q?Jn8598m8WnEjOR3E8iMVtmOFAMD8h5Px3ynQWDXNSTgxDPm6urGqTwU6f77q?=
 =?us-ascii?Q?+kLuvroTz6UiY6MFh5pqhDJHsCnaPAVlsV0Ja0000lLLfVahIYE7K0YvdNgl?=
 =?us-ascii?Q?QLqCMORqeS52AvWvWJM5GnRvKxyPxwXe3KJN7VZ8jeclcFSDcGz8C1hteyRX?=
 =?us-ascii?Q?iUqM6xnPBPw/K2Be/jnFOcBHyOtXUb8cNAVRNnT7iq/3V1TZSWiWJ5r6amuZ?=
 =?us-ascii?Q?TJOXzihXzqhwKPRHFnEW76BHbnh4X6maBg4efB06w9l1VxPVpzvMTJy5skAP?=
 =?us-ascii?Q?q6v7gjI0bHwa8tEMufW/SdngZLMr0Ni8blnCPYkytB83Bj3Bnvo/84Go+9RV?=
 =?us-ascii?Q?99yBd5RgZ4eTlr5zEx+7Hj4Agrdxllr+OBVjKBtv1/vMy7tj/noaxiF8pFni?=
 =?us-ascii?Q?umm2Dz2Eh/Av4EirNtjYieNr+lEGL1/2q/aoW69rDGmaViiJ/b/0jf/2nEob?=
 =?us-ascii?Q?gDmJedC7isaDoyhHu+M36Ug4eqxF0aDTVPWM8/ORM5B2kg29G0s96qwEHg3k?=
 =?us-ascii?Q?FKVX1RuaPfP0mCA/06MqX6ikIhKFnDXtzkiqkScloXn/sY0vQQXTr7aXVxZn?=
 =?us-ascii?Q?/eJFkU7tag=3D=3D?=
X-Exchange-RoutingPolicyChecked: nxxCfPEKo1cO5Z7+rosXhWwDf3eFv6MY93SOPLRUVtzQEWBme+WONDLvXFyrT6c3TfGwH5/8lWRif8GaIeeyVlUIOMI/x0S9aYWpooa1baOJ4kU9G8pJa4WGrYhisZhl4LVJvbfmNHt+C50vRutNnkTxzCfG5ApSgrO9DhTI4qJjslOnMCRirWMruc+fhm8Clw9jEJAZEUYc0ngL87WtklUnHr66ycFTHgTm/ZMcgMYcLWFMv7TDU8msAVrkp2x7MICIq/Llufi1shHVwzSsqqyPglYSXz+tYEVLFk/h8ZD2B3qWVXF+a2v4GCXBKPa9XkT++uv/qHmvcU2wbuocvQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7947f6f1-73c9-4616-6bae-08dea5253183
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:49.9189 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FKYX5T8us0P64+nmq7simGO+T7hcFFzfELyMqIW+kkYFb2voB/QZlQ3mWA0JLaH4qAo0QcZnEa7i4xc6Ves5LQ==
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
X-Rspamd-Queue-Id: 48F594853EA
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add intel_dp_link_caps_num_common_rates() to return the number of
supported link rates tracked by the link_caps module. This prepares for
tracking these capabilities internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h | 1 +
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d92160c522f93..666bb8e51f59e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1768,7 +1768,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 		int link_bpp_x16 =
 			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
 
-		for (i = 0; i < intel_dp->num_common_rates; i++) {
+		for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
 			link_rate = intel_dp_common_rate(intel_dp, i);
 			if (link_rate < limits->min_rate ||
 			    link_rate > limits->max_rate)
@@ -1997,7 +1997,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 	int link_rate, lane_count;
 	int i;
 
-	for (i = 0; i < intel_dp->num_common_rates; i++) {
+	for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
 		link_rate = intel_dp_common_rate(intel_dp, i);
 		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
 			continue;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 94a643b6e68b6..b1b78e7cda897 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -66,6 +66,11 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
 }
 
+int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
+{
+	return link_caps->dp->num_common_rates;
+}
+
 /**
  * intel_dp_link_caps_all_common_rates - get all common link rates
  * @link_caps: link capabilities state
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 636a1d16dbb47..b2eb61272652e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -15,6 +15,7 @@ int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				   int max_rate);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
+int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
 					 const int **rates, int *num_rates);
 
-- 
2.49.1

