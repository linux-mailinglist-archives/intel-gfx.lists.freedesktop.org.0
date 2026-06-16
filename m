Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oAKdIXatMWoTpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFED695125
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=c0GbEjrl;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23DD110E28C;
	Tue, 16 Jun 2026 20:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090ED10E28C;
 Tue, 16 Jun 2026 20:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640564; x=1813176564;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=32R8xeSIJyeOvtsahZTVyNM8pqffmMi9cgmIA3XlDu0=;
 b=c0GbEjrllDFmIMQucCcEPyE64RImIyjzXFqlC+JvfMjLkXVoTNU0mGG/
 er4lLsIuBIhdgqSjXiA+FtztW24jpARraFzopta2ijsCEKc1AQqNhZ9JP
 8KGnOm05MM1yqCl6Cv3+zDek3UooNmUohbBUhe+E5hEztJMuOOrkWl0KR
 lITAO9LzVu+1n/bvTNYDekPhtg7gJGoI42OJSQYZjVlZWS1mZL4cUig0x
 tTRcgvSQOgmoOhgKQYUFUVkNm4/P6LJH9D1fUizOG5dDgzyGFaJbCLUjv
 hDJM52YDDz3TA5nGjjShC5Pw9cDe/dq3W96em8dF7xSkoDm74+jDi9EXY Q==;
X-CSE-ConnectionGUID: qDCXA5OsRx2L4fsi5pZHcg==
X-CSE-MsgGUID: gi6OuQoNRCuOxSN/8By9Tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86061096"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86061096"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:23 -0700
X-CSE-ConnectionGUID: fly5HpyVS6eLnAQbCmlbOg==
X-CSE-MsgGUID: EGvW97jZT3qea7Xz0O2/qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244977626"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:22 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:21 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.29) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XDS7/31Zd/rz7r32ksttw3NZRvOAc0vy2Nf2F32J/LLHs07IJcHwvPXunTDKwDQ2liHysu3AXRZm6r8QYlhyGHSJ0ZYYrbW6aO5Yno8bmi2FlZkc7GsG1ZlJ4QAmxjgeSD51zLkT8Ms+eJBWD2cis5+fuEcqUwg4LaPcUfwEsrz7dn6Fo2qLqwshDVwy72WzOKKxWJMl8rqHkBz+ZxSI4JfcUMx+4p8lB3d018aThrxhSp9IC+tTKzyMCTi686M3VbfJcDRSmGEzE7EnFKuaKtY0K3tEFnyoCqBnEech+D3XhEm5P3Ix+o8tmjYn4BYVqtZuTvtP9FDm5U2yCe0rOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DEwcH4CIWtHqBWKGJlhJAua0sSsmracpd4H4CizgQxc=;
 b=Z03IlE1Rbtupmx3QpVybj/ECfHQ/Dc51yTE2KRyim87BuUeg3HDyyg9TzX3eV7PLQVL1WQlQF9O98n3rusG5jaRsPJBtkN+1XBg/03j4/O5pqkuBqbUKTilccNGOLUceqzEDqy52l48+fUOU90+14+DxjFWrjrLZ+p+Gwh96Idul57QNIowvHycLLgXHifTkbixo+f0PK6AGPmIHVb67ZVyLU+3Pur+MJyhKIGWBUmlqTXbb9XFhg4aqfhjjuamXzu+NEuZ2L3mtO8SqyQLNKNBHcLB4dyjghJKtr8CSJ2meeZ9OtNPxvQGiuJfw/vjYUBqk9H2PkYGBA2Bt0fJyfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH3PPFE994B740C.namprd11.prod.outlook.com (2603:10b6:518:1::d5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:18 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:18 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 01/28] drm/i915/dp: Rename intel_dp_link_config to
 intel_dp_link_config_entry
Date: Tue, 16 Jun 2026 23:08:21 +0300
Message-ID: <20260616200849.3534628-2-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH3PPFE994B740C:EE_
X-MS-Office365-Filtering-Correlation-Id: 523130b2-374c-41d5-b82d-08decbe3259c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 3PeB1c9XewOsT03crjkKmw0LTeuxKXqXhnpOVSCc1PrOHqcbHWm4GxB7u0iNOnlOJEqirZAOjZnH4VNdRmH+JErTuokVTJEhnzyM9Aq3N8L/w3H8GXRI5YK0YRy2ASNEXbAa952kpKb1Ae3rTF82iKOV0lOJ7jUMMRH1/4v6ElBCjZoAv3dNb0iNh70t+5HPwrY+3ndoeTRkThDV4FLe7ukzJDeKYjtzNTezaIl48K7+6BFLooXFd8p2IhQS+DJ44aY3k92ZTktdHDWSwKyB5wI4WxnVLKMdb9Ej+tuEijlBNyFJYBUycZwiJt6w0MlisUvZfu5NNascflwg7aTRXcTtaEIzzUaxOB8rwQfuW0SOWQjtymmKSzWhfxDL44ZlFxPnCd6B6+YS2k62Woj0zoscDeKdOX58kPwyMQnU+11yl/YbjbE88hSuoqYkNzs2GVCPvYFbQm42hBX5EqaA2Pe5VdjiqfeZF1UahSN2VUwNE6aHlVScL6QHTRnuMc8FyCiADdCvlCY3epy2ynu9tEDFl75FOiOSGkUgILYjzGLjUul35c4vnRc1AF8kR/zWu4I6YkwXAq9JmTi6Ey4m2Z1cjNUh9AxKN1zdsdwqSFivE5vuyuOeMkxigWBNXtYjzfHVsFwEBp/69eIRSZE4yPCRLo7bNJgYUKQtHbytOz5dVZJ+tPOQeFeh3ZPdCv/Y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KGQxDPitz9FxTgfAj3itzKS6MXzQCAbSwHfOqgbsjHagXsDChopJoAyDAKx1?=
 =?us-ascii?Q?mzTTAeMgr54G/X1AsUiwen05W/MXLefs8G/wiuUi6D8IqflalDy1kC6m1czU?=
 =?us-ascii?Q?lBsBWSxzNsMdL1pvYaRiYL0150HNPU+Fa2eI+LZ3lfPFTGd99loESr/HgmEn?=
 =?us-ascii?Q?IkHfcOBrZYV4wJcN2hTDe6iyT/Q71SEJfk6IG1+iWI3bkb/6hMwZ4t9K5b/H?=
 =?us-ascii?Q?y8zpnfWKT+KJMhv7uzXVegqEsw+tt9twfsE0eyGave6Vh4KqJGPdguTQbr3i?=
 =?us-ascii?Q?vjPNAOW2KqIGRD3HanTahYfO81pzFhbiZqfsXRSxN44GygMA+747Iyw8ouUQ?=
 =?us-ascii?Q?jhSq+mdVIrKmYXhJOOGNrwZ7hnXI9z9P7JYrGCy1ZqnQ/ugtcp8PhxX/U4At?=
 =?us-ascii?Q?e9d0RpnT5JnRYvNemeGEdVZFiKCmiLnS+QxiyOoazDzP4QqvY0ZdT/3SQP9I?=
 =?us-ascii?Q?3usyXaqqb3CPR/obdcobZGgLypwbJdOZsFCY8OIgFYTk0C6wT2LNgaHpAS+n?=
 =?us-ascii?Q?llGOOzh6GFYWmonBiBt0Ee50GIJGsm6Q+EZVtHxIZJWCjvWRfpLeqnSdBYZF?=
 =?us-ascii?Q?x5s10T48fcsHvgGrBCoVrJTI9laBeJtJCyJSaFFUqu31UK3I90h59pXq8AaC?=
 =?us-ascii?Q?Yw3WBRgvydA0bCD9FjENAGBgb/2QyYzEkqbPc0ClSfPvbi4iY+v4LkF9XBfB?=
 =?us-ascii?Q?D9Uo19RPsIL5M2cMC/xUtJLc/HxW5TMHYyTes1gT9L9KyXG4Efrrlte/viIp?=
 =?us-ascii?Q?Ek4vPGgWbaiK4nXMNT+EjDB9Qw9qclzMR96D6SvgqPsG5xWmOzXT6kKh0JHW?=
 =?us-ascii?Q?YbTYgwOD6CgVbf6dHMj5LMmVicOYK87UJ0UK8ulmgVy62lUl/H8tKNAv55X0?=
 =?us-ascii?Q?76ZARmxGkxmptbFrM+h/FW/HUE3QJpBut1ZSGKyvpzej5ifavXNoBN5oXIVg?=
 =?us-ascii?Q?S1SK7gkvAH1pZj3VkrbEgbP/AlsHwpLsvxV42OP24nGEEzYgYNx07GX1C8KX?=
 =?us-ascii?Q?g2e+P4u2JaXIowWqIjPmjKRgPqY8IDjTr7FmPXzfOomMeIlc3rdmLhn+yWbR?=
 =?us-ascii?Q?fjLCSLzU8+LE9uSQGJalNyxWTMaVw7aJF8xNbDH2OKSDI+gsiTrzk2egv8cL?=
 =?us-ascii?Q?/bPDecYRjh4dBcBZiZsy56Qi69eOTV5buZvZD/hHtWTlmLYLFTKs9vKED3UN?=
 =?us-ascii?Q?vkCnHOxUDLD+sj4RSSBL8hx2+ZJzAze6/i5vs0S1J3onMuYYqnhiEQW7c3P5?=
 =?us-ascii?Q?SDAZ5tbng9JVzrc1fniWyfLVtgLl8uKIY32RY2yCFCHi7X67WKwcYn80vPc3?=
 =?us-ascii?Q?dSuzCXnFOfib0fVUHjVBQuBMOucmjO8eG4s62wDXEQvRVpuD4rWQb5ImUhK9?=
 =?us-ascii?Q?nJ8OZBw6ei+zaWxJARph5ndtFwhgspQutIiFwWfkIJ7htBWTfM+gFaGusiEx?=
 =?us-ascii?Q?gCExLkopFK/Wr3XRaXiV8K84vB6jYYJvawEJId+VkQf1IxNq/w0DLCO3iEY8?=
 =?us-ascii?Q?RnzwXR4jwgxhpPQCgz7oeFjvN/TEfwam0q39q8PGQsHJxUbRqT9PWoDZ+x+G?=
 =?us-ascii?Q?sNilJTsXGh24s5xyZ08+6l63RoOhMB1nYmOO+EZgEGj6XvVWjc6sQQVSWSnJ?=
 =?us-ascii?Q?SBLIIISGdo0oB9HUsBqAgjUcN/Wyib6HcUsh88wGfmYZFTNtROlm0s80Hk7b?=
 =?us-ascii?Q?zGyIFCoycuMy/RDgco1jbOQgAKvQ9NwXFjv9RRQOk6gd96n9Bs9wlUtV4LZQ?=
 =?us-ascii?Q?i3pu1yrrUQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: U8MW3iJ3Y0l/Ileoix2s0NPMerAXkXnJxrNPbXkc0TWeGYxj8Eo1hADS/uwxYGG9zESblcUF48hP+R5hF0441zLTdtLUrRu/FIkJONWGqZyL/znYIaSSPSP4MZqNho8+PN2GplRtmZunXZO48hZNkF7N4Dz8NFxrOXVxPUdNLhpmymkrV8Op8lqHPQ5EQBWWQvVC8qVmVT6711eVLI46DSjgB3Ax9cZbm8H8i1qXiuw7KD9Pev455PYGL0N4Zzmcr+SqvlMe0qNw+mS+qNOXzZz3Xb/XPPP9RBNI+MSInjDqio3jhg9AifmFB4z2uePcRgGKbZtoe5ABmQFfCpzGkQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 523130b2-374c-41d5-b82d-08decbe3259c
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:18.4342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: psn66G53VmQ+1fMgHITHxpEIaGw3zvm6h+RjMQbRF+KG85Weg2oXbF5XLrzD68vmrTUM0a48kO+IK51UPvU4Sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE994B740C
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9CFED695125

Rename intel_dp_link_config to intel_dp_link_config_entry to prepare
for tracking a link configuration in both an internal packed and a
public unpacked format. A follow-up change will add
struct intel_dp_link_config representing the public unpacked format.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6cd102a3b610c..c71edea145878 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1840,7 +1840,7 @@ struct intel_dp {
 #define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
 #define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
 						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-		struct intel_dp_link_config {
+		struct intel_dp_link_config_entry {
 			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
 			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
 		} configs[INTEL_DP_MAX_LINK_CONFIGS];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3569e61e7feea..00eb3f5103383 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -699,18 +699,18 @@ int intel_dp_rate_index(const int *rates, int len, int rate)
 }
 
 static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
-				     const struct intel_dp_link_config *lc)
+				     const struct intel_dp_link_config_entry *lc)
 {
 	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
 }
 
-static int intel_dp_link_config_lane_count(const struct intel_dp_link_config *lc)
+static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
 {
 	return 1 << lc->lane_count_exp;
 }
 
 static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
-				   const struct intel_dp_link_config *lc)
+				   const struct intel_dp_link_config_entry *lc)
 {
 	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
 					 intel_dp_link_config_lane_count(lc));
@@ -719,8 +719,8 @@ static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
 static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 {
 	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
-	const struct intel_dp_link_config *lc_a = a;
-	const struct intel_dp_link_config *lc_b = b;
+	const struct intel_dp_link_config_entry *lc_a = a;
+	const struct intel_dp_link_config_entry *lc_b = b;
 	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
 	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
 
@@ -734,7 +734,7 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 static void intel_dp_link_config_init(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_dp_link_config *lc;
+	struct intel_dp_link_config_entry *lc;
 	int num_common_lane_configs;
 	int i;
 	int j;
@@ -769,7 +769,7 @@ static void intel_dp_link_config_init(struct intel_dp *intel_dp)
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	const struct intel_dp_link_config *lc;
+	const struct intel_dp_link_config_entry *lc;
 
 	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
 		idx = 0;
@@ -788,7 +788,7 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 	int i;
 
 	for (i = 0; i < intel_dp->link.num_configs; i++) {
-		const struct intel_dp_link_config *lc = &intel_dp->link.configs[i];
+		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
 
 		if (lc->lane_count_exp == lane_count_exp &&
 		    lc->link_rate_idx == link_rate_idx)
-- 
2.49.1

