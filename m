Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QcPsGZqtMWoxpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9A6695181
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=DgOwy2AI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E5F810ED3A;
	Tue, 16 Jun 2026 20:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A06010ED2E;
 Tue, 16 Jun 2026 20:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640594; x=1813176594;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=HyK2gCwezowrr3ikJpBaJUmzqMzn+WKeJ7oCQNpXZKc=;
 b=DgOwy2AIGDGWDpSYSf+rJV3a9RFcK0GXG7szR/pwMNIxSVO5fHBvRV20
 0OwC3lUm0puC2Z7tMfi7jI7uugJTkdG/xIhgAJhgFuY6mpRQHPL8sJvM0
 x74saraYqngkOEL/f4pchssJCnBam4Urc3w0Q5+UfwR9OIIisADU0yRT/
 TYPjXooHVD0AEf8TfVevPWSvq8XlMmsTHJxZOmSEyxecZFMCWiLdR/NZw
 Su0/bb6KS9QC4Uqw+t7xHEz/PmvYaL1F4J0hFUxZ06raDSkZCE8XbTrTf
 a12IHjBDdhTfdwAPYwFNaLSprbjv8hcAQPkx2pyb4YDkTYWEHQH7ifbiT g==;
X-CSE-ConnectionGUID: CtT6u7PaRtaSVS7sRIHFeA==
X-CSE-MsgGUID: ErdJDfZkRLy/k06Gpui9jQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86255869"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86255869"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:54 -0700
X-CSE-ConnectionGUID: LlQryly4QW60yB9BIO+lwg==
X-CSE-MsgGUID: S5u/5WqTSFuD5Rr0gWxF2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271579822"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:49 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:49 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vftn8wzwuxLSJg8CnBl4AbxeatzihDnH5CEbz4znad8PDekWcF/pa94t7OKjGUNMGts5xt8J18Tme7zkt5vThstUikz9HKdWKwBgK5OIIYUS8t6p57EHeBNzZAqY7JtBOWQ00erYMgxV0vq/XahR54FODoTbHUDWZim9VqG/yaUejYB96dns1v+f/bZvvkaWKtAD7yLir6CNDOFumKur3Orvke8K+kmYZr/oBt8mwioJXBOHaSG8lTRn/L9d/GDB8zM4qL1XBR1GBCNBXR/DDlOk8rp38fw4cCeT43Qhpehcu6IVQs2dxVdAA0aeOvvFJCpuSpAaVEQFWza9coCFPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=agLn8nAohl/bT2EHk3J/UHcSZD2vvQC4KNlbNAYZ1zY=;
 b=Bj2pS2wR17WaHLXEdZRtM5pQGMdWOuJOqXK3Ce+eFEAlXzRaKYVTRvLD1nxiIbz/A7DRI3L6IgRFgymm4qWlJFM8WnM8XLkIvylk4k/1uv4dqVMO+YmsuS6sOV8oq9Zv321y0zwHdPRBauDHjDxQhLxV4S8bdjTHNmHX8JB3ZAQg4aTod3QMwbRaCAWJKOOfOXe+gKtKAPoHOXqP0gGgXM/qzSZHHGT4S7J+qEDGflH/wYA2TiXDvV7akQX++ReRVxkRNWiYaBfc/zl404VYpHc2h/Mynsyh74GvX/8Vt49XXLmfe0DTfNI6tVlYlDWT2p2rKfPweNO/G1ieoUZjMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:36 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:35 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 13/28] drm/i915/dp: Factor out helper to get link rate
 capabilities
Date: Tue, 16 Jun 2026 23:08:33 +0300
Message-ID: <20260616200849.3534628-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: b7b4ec85-8061-44b2-4896-08decbe32fae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: ObCUnEdhHPUyVtC0v0g0BQtpUJNWS+Mk5NyONUBjK77qdV6snBcGs7NqUzRPxTHiVzICdTfzhtOUkb6BGA1VhUwBMDZRQmuRkDhfa94rDUALror//NpoaF5H02aFxNwwYqtQBTegvnpGoD3PHkGJZi0DGA6lR20HdKDFjNn93kCjpjLsc0a4LdtOk0j3fUr/2E3NRMgEfcCQ06789B0HQ+hhBAcl1uz9ex33vqp0RhlQhMke5ZIwWUZyDsJwnT54fan3gWMklp+aImeA6syb5j/rO6GhpLLPeQ6xYWLMuFBronm4SZ3GIoK6YxkDonV84c9WsLxKCfBaqn7WuEyZHxih5NBqG3oxM2LLI5+GzKlmlYh6wz/oRv9z9oHS6Q2LAbfkmpnwpAFKWZddpSrBnMWyD6OknMxtPFL+5TSC6iFxOcjGKWGjjTRfF3MmgKK0xgaY1jJ6YajaN+0E+ye9ZGg6yOx7k8dFlFKntu0vTgXS6UX/zlV2EFt3QvoDKDj+heewD86U66d3MjvioahWvHfYfk1Q79pu0MjbdM1U4rHNMCcUB8rHxpSkMTTyygFYRBO+lXlkNmQ88JLtQQAicQtkWmHUSCRbGtB+TWcjMlrASwaceiow4J0MEVaf6JLwhRKspczrj0MHIqcyBAB3P0Ghd1V+pmG0dSuqSQDf0I1mjVuXk81tClPdAsh9Z66L
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XFh4OXT4sViEFvIkJp1JSYKFws4qeQnpHU1Otzq8OrUKiXc6szQncyy1mLu3?=
 =?us-ascii?Q?PXib7e5OS8sBsJ/PWZjelqknR4z5hbRtozcd/Netz7JYoB40ku8kzT0igp78?=
 =?us-ascii?Q?Jo6pbH6t2YGTCu2uhp90+RHHpCpSuyn+/Y/pyWdtY8A3/il76Q+rgaYw3xDP?=
 =?us-ascii?Q?dy+hwnDDja/o/uMGUOR/ZuQorpLDP1TSVW3sqXDOfpK9xDWp5WxrGPkG9wPe?=
 =?us-ascii?Q?X3M3QPfN+cG3vBYWFyOQb58Gc4LY7HJBwviF6XsKJ1fcKdnSmfYmacZG+/AM?=
 =?us-ascii?Q?0wHfXUugPykjkC7S8v6SaNuH11SgsdtV+edpseiM3APY7InJgRdCTpZCNvTN?=
 =?us-ascii?Q?3vSqmDis+8sqVY76lkO2XePDX8e8he+CQ598yo5bk701czl5/sT7ie10YBQS?=
 =?us-ascii?Q?OxrRC35uQ6OeTR1tqOCueGgIpxqFP3Nw4RtvjPxJlsmmnIwt+H8L3czdP70q?=
 =?us-ascii?Q?AovGbwiTjQMlYtRYT6oj5EY6RPVmTv32ZYifsB7QWwnUnO2lfSfmS/wPgO9A?=
 =?us-ascii?Q?67C1odmn0hx4jDPLlEh6WXmmWZUwfvtUK/HJsCXAJLoHZ1M+o2Z12crAmn1s?=
 =?us-ascii?Q?Iexo20WjkR+K5drz5uFCMo2x703885xydVPOsbe7BvrfYS0M5X52Og3ey3Tc?=
 =?us-ascii?Q?M9ga+6io26HuNgN0R5ZnW4Y5+SxiflmJGFY6R5vKhB70xRyoXdDMl7sufjOJ?=
 =?us-ascii?Q?xQGd4Nmq6lWpndikvvXGyJy3xKmcK+hkAUsmTfga4C/7IKcefUuGCoCu/O91?=
 =?us-ascii?Q?qgw9BhlWkuHukZsEWAdJNeXOpvPNWzqTNjI+mSOd1NgBeLcZovm6KIVPbJkU?=
 =?us-ascii?Q?Ox1PruQ5GGd/VRkBy74LgnMX2FSA2KcOuzmtb77Udb4OcTg38C4KhaKG5tba?=
 =?us-ascii?Q?y2igBkPB1DVJzxJ7qxBYKo+XOJo/hAYJA19lo5vd2O+fILa6fyRFJSyqyCns?=
 =?us-ascii?Q?VbLp1R4Ak0N1EBdhOjNLHSxOn7pO4nUItmcZ4Hz+3C/cW/mMblINDeUcE5vZ?=
 =?us-ascii?Q?inijyhZEOL7AmUfvWvL3e7NRjf7ks6150Ue6v1xx6ng+R0oNEw+GT+RG+2il?=
 =?us-ascii?Q?+M7bzmd4PP+C+NGM/L2Ws6EmkKFEP0IyUwYJhSCqF7gimpPDGKpfr/z2WuwU?=
 =?us-ascii?Q?o1lPn0LuIDqUT+lnsS4CZpAqbx/2D20r+H1Er3aLc7Fi0bcHEWu9Q39GjZl4?=
 =?us-ascii?Q?WDN17/JxR2FheEtNQbydoFjVwP0cCJiD2lU1vCLjgFRKY1aV8xYqaQvaR5Rg?=
 =?us-ascii?Q?5Z+bkRhWMWoosWDow+EGr3BIg8FbmMRECe/iQbfpmz8utIEMJlfht4ULCTcl?=
 =?us-ascii?Q?aqI8nrppVE+sRQj8f+zyW6VT2iARsGYAtBUdBDXlrPbaIQeIo6UstsHdduhk?=
 =?us-ascii?Q?xVHT82Nnb6EMhbxXLbGHE38g0vO3n7+FE0wc/tyIkRm3oluhr5RlZSgkDERr?=
 =?us-ascii?Q?TqU40esWigDpXRfVO8/444egj5LHKYMQd6moGO1ZaLXqrDvxRco/FhZ+rGrR?=
 =?us-ascii?Q?j7+Qz6YIxHfaVkVkI7BWo1ZWMtZY1GQIqektNXfl0y8HxB1B3784NRubg1+u?=
 =?us-ascii?Q?fanvBWkV08OVCBJaIayNPwU2oKAXxjOid/BuviFIvTEPmLwFNgISwMVtpQpm?=
 =?us-ascii?Q?G53JU6MncdaQVVJPIVycpvdL0M+xFUUB1emckbEEn1zjvOMXttsZDJBjNDMr?=
 =?us-ascii?Q?XRIXrLOBU7vzhrbiFUQ5gPHTt2E7llciY3RLbTyNuWb4ZykrRvU46bOqBMAg?=
 =?us-ascii?Q?kwScsyazpg=3D=3D?=
X-Exchange-RoutingPolicyChecked: JippqO4asFGnEZDOsFG0W4J4gWB0ZgiwJzt+ElxfZAae7YPKwVZtrJdGHUp0Vs7aRGFpmu7v9QJhQk6p7uiGYhKIJ9GGz+ZQKx50g2TkvLvdWh6VNsZ2XgFPS3HaVVScBk0vjtPSr8GPzS+Z0tptgjuKk50fQvCf4jmEoXSOiUE8XEL47ix6M7pxpeZJocQz6jGtGRBC+p27c9hMFuEBnaBOX7FWfRukOx/pdrevIoSaJDG37J+QNtGAYlfHg/YNaH7d97qdf5ACVrEejcZZX96XMRljeJkXV313SW6/KyeIuQZR2GvqKA2H8HhDzvXIE+T2EjG3Vtcq0Ekkj1n+WQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: b7b4ec85-8061-44b2-4896-08decbe32fae
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:35.3428 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MNxG+u3Dvd6iM+GrHFczul6NRt5XmFkl4q42qsAJqqkaWUCoiZpEjARkO/kyqGGiZiDx1UVsv34Lnt7rNBOMrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
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
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E9A6695181

Factor out a helper to get the supported link rates. This allows to
gather all the link capabilities and pass these to the link capability
module from a single place. A follow-up change will extend this to
gather and pass the maximum lane count capability in the same way.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 37 +++++++++++++++----------
 1 file changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 65a13b2f7584d..635e3ede0d41e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -676,33 +676,40 @@ int intel_dp_rate_index(const int *rates, int len, int rate)
 	return -1;
 }
 
-/* Return %true if the common rates changed. */
-static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
+static void intel_dp_get_common_rates(struct intel_dp *intel_dp,
+				      int common_rates[DP_MAX_SUPPORTED_RATES],
+				      int *num_common_rates)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	int num_old_common_rates = intel_dp->num_common_rates;
-	int old_common_rates[DP_MAX_SUPPORTED_RATES];
 
 	drm_WARN_ON(display->drm,
 		    !intel_dp->num_source_rates || !intel_dp->num_sink_rates);
 
+	*num_common_rates = intersect_rates(intel_dp->source_rates,
+					    intel_dp->num_source_rates,
+					    intel_dp->sink_rates,
+					    intel_dp->num_sink_rates,
+					    common_rates);
+
+	/* Paranoia, there should always be something in common. */
+	if (drm_WARN_ON(display->drm, *num_common_rates == 0)) {
+		common_rates[0] = 162000;
+		*num_common_rates = 1;
+	}
+}
+
+static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
+{
+	int num_old_common_rates = intel_dp->num_common_rates;
+	int old_common_rates[DP_MAX_SUPPORTED_RATES];
+
 	/* TODO: Add a struct containing both rates and number of rates. */
 	static_assert(__same_type(old_common_rates[0], intel_dp->common_rates[0]) &&
 		      sizeof(old_common_rates) == sizeof(intel_dp->common_rates));
 	memcpy(old_common_rates, intel_dp->common_rates,
 	       num_old_common_rates * sizeof(old_common_rates[0]));
 
-	intel_dp->num_common_rates = intersect_rates(intel_dp->source_rates,
-						     intel_dp->num_source_rates,
-						     intel_dp->sink_rates,
-						     intel_dp->num_sink_rates,
-						     intel_dp->common_rates);
-
-	/* Paranoia, there should always be something in common. */
-	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates == 0)) {
-		intel_dp->common_rates[0] = 162000;
-		intel_dp->num_common_rates = 1;
-	}
+	intel_dp_get_common_rates(intel_dp, intel_dp->common_rates, &intel_dp->num_common_rates);
 
 	return num_old_common_rates != intel_dp->num_common_rates ||
 	       memcmp(old_common_rates, intel_dp->common_rates,
-- 
2.49.1

