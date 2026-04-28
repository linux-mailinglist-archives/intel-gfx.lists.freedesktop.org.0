Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKnFKkGu8GkaXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C49485563
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4820910EC89;
	Tue, 28 Apr 2026 12:55:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JWqb0Ytx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D3D10EC66;
 Tue, 28 Apr 2026 12:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380923; x=1808916923;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=3Z7fUStsSj4dVmQXfZZWwksmllrCp0AXosQU7ls2W2Q=;
 b=JWqb0Ytx6xLyLMqAVKz3tq20LUd5Nqjv6bOcpqq4j9mALmTsvAaBOZMR
 VSIeDesrjWW/4aEyA/0j+iJ6C3BMZxXpAHX3cdnhyyPDghJjkYtbzxS8y
 iyIxNGR5r4CYErpZbm2p168n/PTZz3Wq/9aYOctmLvErTeFaoNcQKshry
 buxnrCK/BIgcuKPWhjb3i+mzdkaO8Q2Za/0csNz0mGuRCN3ckaxI2jdQJ
 yn5j4g5FRFPfqi3uxjV3/KgJ7tdUFbMWOVKER0Rm5PI3/Wiqp6fIUaPUe
 Q2wiNlzcw7ByB0yGgyWGHUfb+Ucd6FT27hyV6vBBvw0UffUiQ10hJuoN1 w==;
X-CSE-ConnectionGUID: 9Tdlgjg5QYuVWl5HqdVjHw==
X-CSE-MsgGUID: +gvRZjySSLaUTS6o54LDnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203298"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203298"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:16 -0700
X-CSE-ConnectionGUID: /L6MhAlYSuylx028GfPQcQ==
X-CSE-MsgGUID: aS618M41RIuhfgOwo0h4Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244780"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:15 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:15 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iDp7DiGXyb27UY0++OuJzD3IdCPgsU9phL/cxoAOQBTPfNamjJDjJ3Pce1rCRQX1X08rdwsLUoRUFYj/ZxjNMzm/bY5piP3V77NCkoSYJTWj5Ebfv9DnF8CGv7+sek71Zv8jYCMNYzUyuwYnQC+9Ogw7S6DEu60T5O0i69UNgO6/HNpUDe4bNkPo8SxWuwA0syzAOW8fcwrne4OT1SLTko63v8vi0AYsqnDCnEsJAVvF78yPzavMcJe3024dkDnHeHMWvGh2QBebSssg2mjpTys87lxHsyXxRIqxAUpYo9eBjvDY4kpV4mba/NrtTu2BeXFUU2lYFuhIoy9JdCX4qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BZC5bMGgVxq4qjjSAIobUJ1r6nOZdPISR5oKuIc/bDc=;
 b=DcPz3NK9aiPJKhCHWE4hA1t2Jt/fR2XaUgtdkLSGStYUFH//OSYr+DXwvEJ/lw5ER9d/CI7J9iGafg0BrnVTaNf9JZWQvLGdW/chopZiAraifwaIlJsakgK6cyqGlyz1MQ+1tJKRcA79O0ch2Hd/HvoNOCK1UeovbwzsCVYL/kuZxUr+gRPdMjdmP5ToIZV29JKcDHIUB1HoEpE/ltYgk144OiQKmDTLJSxVaaI8NkRFCzM5AQ0Zci/O8ExhS7Pcg9jdod6VpZxJfLpEP4fax7JWGDh6JynUaC+TJdclCxgEGpWWowV828k34SlWziR9xJIcZBhIMr0JWSXZrUCWdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:55:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 072/108] drm/i915/dp_link_caps: Add helper to find position of
 matching config
Date: Tue, 28 Apr 2026 15:51:53 +0300
Message-ID: <20260428125233.1664668-73-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: bc754bf4-1112-40ce-ccd6-08dea5254e7e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 7NPt3wdKNyTJqpD6dfsopAJ7Oe9f2XF4DFC5o8LZtwlLci9O3zJm9HepUdUbnSxlN9iy7IX/oXbCjeENvrNo/3Wyih0vouM+2vEIigjjQGf/AEQmGWgzjQI1toaqiGkVLmiFS1lWavxuZOJcV+8t1ZSxjvSkHY13vOmlUmVbpyz3eMgNyNm2PAO6h0L1NJcySgbKzO7i7JOWz5aTSCj4gcL2a4oiZqW/MRl8DcOABAPZYAj86B0n1SeuFG1XzKm/fbmb8f7ZOdPMX5c9Q+f4gdODiclVQQrqkbZRlqDyHl3FSg7+6wU3RkkInrRa/eoenWTitCRnRR4aW32664mkbRa6D0qk39mdfNZIjRQHo+Gr/GljIy6NXXqzpXbHht4086rv2akIRv5Oc3LgQAutgo10HUiEhevHv94C1wKfg1g1ibc2LEj8ZZB6TN1hoVKvkELnVmPt3mtVggEo04KYq18blLPINj7IkRoas/Ia8SHVldDTYSn/ZlhV7ATpDn9OWqrfQI086x2wltHynvu02Tgzy7PixiAW2IBvivHX195IhHJq5E3fbqN+WWYDeYzppVDktaPK1/8oXE57rmmIFSrDvJmgwHzdM6U0KmlLCpzGBB3D3bMyJBDutI2ExnQ8U0An3ZqAB05QGha+9kZ4IXU2wJzKHa55Maqf2tQ9sFGFjxY9SNeedIw8AquOS4IxcBS5KoAQOIHdY9RIjz3wcalJP+qBv5KUUnlJuHJFlQk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?G00L89QuLuHFTdiRSpSAdA5beHQ3NIWZ1U8K7ERz6bone4UKxZVuaz6U5NQV?=
 =?us-ascii?Q?rfMVmQm+WG3w4jjv0442/FrmrG14mx2u28Lp7SSHZfQcwWq90CNonHH2Zqdv?=
 =?us-ascii?Q?P8HRrkoHioSyT83Qf/xYuglR4JIQfWYJKV+o9vQkfcYFxGO2691xOkqqoSFg?=
 =?us-ascii?Q?ZxinLg8ZuXYmYmFeJs4ugfho6E7gufHS3xgUDqomXcZPsAWAKW5XG8/cOmT7?=
 =?us-ascii?Q?B/K30fWBfbiTHYNlcnTCRUpnHXBDCY9R/hzbBjqrDBXVp7dWUuryCgywi16M?=
 =?us-ascii?Q?FWURb4eFr8VF9uz1//CgsP7JAgKxyL1YPoyKgtBo9f7lXwH/W4tRemAGc5TD?=
 =?us-ascii?Q?3JzGgr7Gi4MJs2jr9PH6lECSxEdiv9NPQhQdMBbbMCkLx6IaakbsTprZv3YJ?=
 =?us-ascii?Q?vHNBPCHU01nRdoEYiUDzjshreD/fQMhIntnod9+Zp2190u+Mh2ev5tkDs4w7?=
 =?us-ascii?Q?ovr/Zyt8/ke+oidaLVimNA6e4ofE+U88qqqoGLeS229ZciTevrFuYxcwSYba?=
 =?us-ascii?Q?OZhdv1wWFtWw84oyOb+sAxctIdq3odHMMdY4+xXJdycFcAwSGM7WszOJ34L0?=
 =?us-ascii?Q?Eg6evZU+0GCSdxwUQJhkdhv3YM161vixLJvF/iv2lHDYx+bmDJEAV6STpLtf?=
 =?us-ascii?Q?XBkKGJUssigDA5LodCP55jrFX1zTb05Rl2yj5Ky+X/5JocGTahbI/taVng6I?=
 =?us-ascii?Q?QanRrcBaRJqdQ4W2bKUhJHd/RqpxEP9Qe9fBeUCkTLM/B6JuxAD38WD8OPwP?=
 =?us-ascii?Q?btgSmEfEBMtCta3Fqpr810u99Jg0KXx+aPVnnitRHfVcw/yZuS4THI1u6q9j?=
 =?us-ascii?Q?v3CKftQCNmGoV+/u77/DSLDbRZoIiRJDk3HycI2fCEQowd9K6MDvYYQ1C5MO?=
 =?us-ascii?Q?8z7Cv0usdMjaKSwNfp7Hm/ij4BT9ugqAhPMBA91uaQr6X2Z/R2oZd1zRqUIN?=
 =?us-ascii?Q?yYWl1PP5tI8tNLKzpxpltPBQoIw/A6oTZTicmTnZuzMa2DJGBEEpfF5v8u4/?=
 =?us-ascii?Q?7lf87xIIdON3/5C33F6S0hOWZ/X6xHJ2TyQv0FqLrgHHWXSgcMl0exjFxzen?=
 =?us-ascii?Q?gaiY6Zo6DFK6TjdMECovygIcOANb6CmTPbI+LSL4w8eDy4tys0agM78rffWC?=
 =?us-ascii?Q?RoFBjjzMos6jo2bpMlyJbxFabOyDkpIhRV3Evf+D/2HXSlg7Pb41OOQjHYLn?=
 =?us-ascii?Q?qhcyChrCRaauRMh3X0GHC9yytmDzzNPqv7nFJVJEpvvXVwDjh5Y9hiKi2gXJ?=
 =?us-ascii?Q?jvBgDepNlxHZCMRMVN9q659ZDa3dMZGRcdYai/vIC6EDwKskFoB+liew97xt?=
 =?us-ascii?Q?BV9jqFXL3RBiguKdP0Yl0d3oDtj36WQa7Cam5bGUm+9iuiPZXq/r75tuittV?=
 =?us-ascii?Q?ovlr3gIN32wRqb+d9NYFdtlpQgmKfwct+WEyEEqeMlJfHNqO+FoJER1VyUf1?=
 =?us-ascii?Q?dKSG1xc27zmERSCTxAjWOVaPSh/NTAYaexwrH9a+SXTEDpqVvj9z7Mw6SwWf?=
 =?us-ascii?Q?ona1FLUQLNfuv7Nu7Ttq97elPn/HKo8sFvpKwAzWgm4DvfNocOWMPqg7WqdG?=
 =?us-ascii?Q?hfMMLW9mZV+oxXpmWTkQ1lKp0o6o782KaHonod/coNlVsjSzNsrL+MNB/vxI?=
 =?us-ascii?Q?gqMgT0r76Tx5RComEstK01ytWOjC6/HyOk0U92MgnRy8nl0zjlRYUD5P4Sk9?=
 =?us-ascii?Q?yLJDxWnK5qO3zEBrTRbYivmjIPs4Qkb1c+UMFHDOkxITOYAQG4MqDa/i3PpD?=
 =?us-ascii?Q?qJHTVt66Kg=3D=3D?=
X-Exchange-RoutingPolicyChecked: KSInT33zk0ZYY+KtuzP+/Dw0czxRoNil5KLtyVGMeE0HxMIkuf4Ow3V83n/uHykMAXC6tvP7L9uri4KA20ZgEE1IhqYcLw9GkrEIEBxchiD6kWtFkdTxO5AoAGG0N0FYFKSge4mQyeFkuz9gLLHmoRvAZC8TtBSwubZ7SG0Xka0yKhWkyftR+L0Jas8CQrrDppqRnwOZVaUBf1USdtkJ8i2j6XsPwNptET58wgm1qNtzGVtnPfBZzPKLeFArFqfapWYl7mfh0TLRgzDZVjpIy6LSUI89Y6F4ts9M3du8miRfP0GvtGZ8jlZgPRqzSWQJKdDRgnmTlu8kw/ZqL1EMTQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: bc754bf4-1112-40ce-ccd6-08dea5254e7e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:38.4693 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 72DcC7zAZbyYu2HauFdo3lkRY4zDNJNBp9B+mYbXpVyyct7LXDYE4ykjZ45TO+b8pUMHBlMjRb1Yq0iXIvHKlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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
X-Rspamd-Queue-Id: 57C49485563
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

Add a helper to find the iteration position of a given link
configuration within a specified iteration order over the currently
allowed configurations. The rate being looked up may differ from the
nominal rate tracked for allowed configurations due to platform-specific
PLL divider restrictions. Fuzzy matching allows selecting the closest
supported rate.

This is needed by a follow-up change replacing the exact-rate look up in
the fallback code (intel_dp_link_config_index()) with the helper added
here.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 88 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h | 24 +++++
 2 files changed, 112 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 48b57aea557ca..284d28f9d98d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -6,6 +6,7 @@
 #include <linux/bitops.h>
 #include <linux/debugfs.h>
 #include <linux/log2.h>
+#include <linux/math.h>
 #include <linux/slab.h>
 #include <linux/sort.h>
 #include <linux/string.h>
@@ -443,6 +444,93 @@ bool intel_dp_link_caps_get_config_by_pos(struct intel_dp_link_caps *link_caps,
 				       config, config_idx);
 }
 
+static bool is_within_percent(int actual, int nominal, int percent)
+{
+	int diff = abs(actual - nominal);
+
+	if (WARN_ON(percent == 0 ||
+		    diff > INT_MAX / 100 || nominal > INT_MAX / percent))
+		return false;
+
+	return diff * 100 <= nominal * percent;
+}
+
+static int
+find_config_table_entry_pos(const struct intel_dp_link_caps_config_table *config_table,
+			    struct intel_dp_link_caps_config_order config_order, u32 config_mask,
+			    enum intel_dp_link_caps_config_match_type match_type,
+			    const struct intel_dp_link_config *link_config)
+{
+	struct intel_dp_link_config iter_config;
+	int iter_config_idx;
+	int iter_pos;
+
+	for (iter_pos = 0;
+	     get_table_config_by_pos(config_table, config_order, iter_pos,
+				     &iter_config, &iter_config_idx);
+	     iter_pos++) {
+		if (!(BIT(iter_config_idx) & config_mask))
+			continue;
+
+		if (iter_config.lane_count != link_config->lane_count)
+			continue;
+
+		/*
+		 * link_config->rate may be platform-derived rather than the nominal
+		 * supported link rate.
+		 *
+		 * When the caller requests fuzzy rate matching, accept a nominal rate
+		 * within 1 percent of the requested rate.
+		 *
+		 * The DP spec seems to allow at most 300 ppm of symbol clock tolerance,
+		 * excluding SSC. However, at least on g4x, the 2.7 Gbps rate exceeds
+		 * that (~5000ppm); see intel_dp_compute_rate(). So allow 10000 ppm, or
+		 * a 1 percent difference.
+		 *
+		 * The first match is also the best one, since nominal rates are guaranteed
+		 * to be spaced much farther apart than 1 percent.
+		 *
+		 * TODO: Track the nominal link rate separately, pass it here, and require
+		 * an exact match.
+		 */
+		if (iter_config.rate != link_config->rate &&
+		    (match_type == INTEL_DP_LINK_CAPS_CONFIG_MATCH_EXACT ||
+		     !is_within_percent(link_config->rate, iter_config.rate, 1)))
+			continue;
+
+		return iter_pos;
+	}
+
+	return -1;
+}
+
+/**
+ * intel_dp_link_caps_find_allowed_config_pos - find matching allowed config position
+ * @link_caps: link capabilities state
+ * @config_order: iteration order
+ * @match_type: requested match type
+ * @link_config: link configuration to match
+ *
+ * Search the currently allowed link configurations for a match to
+ * @link_config.
+ *
+ * Return:
+ * - The position of the first matching allowed configuration in the
+ *   @config_order iteration.
+ * - %-1 if no allowed configuration matches.
+ */
+int intel_dp_link_caps_find_allowed_config_pos(struct intel_dp_link_caps *link_caps,
+					       struct intel_dp_link_caps_config_order config_order,
+					       enum intel_dp_link_caps_config_match_type match_type,
+					       const struct intel_dp_link_config *link_config)
+{
+	u32 allowed_config_mask = intel_dp_link_caps_get_allowed_config_mask(link_caps);
+
+	return find_config_table_entry_pos(&link_caps->config_table, config_order,
+					   allowed_config_mask, match_type,
+					   link_config);
+}
+
 static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 					  const struct intel_dp_link_config *max_link_limits)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 79cd50db90ba6..cacdda15a36af 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -69,6 +69,26 @@ struct intel_dp_link_caps_config_order {
 	enum intel_dp_link_caps_config_order_direction dir;
 };
 
+/**
+ * enum intel_dp_link_caps_config_match_type - configuration match semantics
+ * @INTEL_DP_LINK_CAPS_CONFIG_MATCH_EXACT:
+ *   Require an exact nominal link rate match and an
+ *   exact lane count match.
+ * @INTEL_DP_LINK_CAPS_CONFIG_MATCH_FUZZY_RATE:
+ *   Require an exact lane count match, but allow the
+ *   requested link rate to match approximately to a
+ *   supported nominal link rate.
+ *
+ * Selects how
+ * intel_dp_link_caps_find_allowed_config_pos() matches
+ * the requested &struct intel_dp_link_config against the currently
+ * allowed configurations.
+ */
+enum intel_dp_link_caps_config_match_type {
+	INTEL_DP_LINK_CAPS_CONFIG_MATCH_EXACT,
+	INTEL_DP_LINK_CAPS_CONFIG_MATCH_FUZZY_RATE,
+};
+
 int intel_dp_link_caps_common_rate(struct intel_dp_link_caps *link_caps, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_link_caps_max_common_rate(struct intel_dp_link_caps *link_caps);
@@ -89,6 +109,10 @@ intel_dp_link_caps_get_config_by_pos(struct intel_dp_link_caps *link_caps,
 				     struct intel_dp_link_config *config, int *config_idx);
 void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
 			      int idx, int *link_rate, int *lane_count);
+int intel_dp_link_caps_find_allowed_config_pos(struct intel_dp_link_caps *link_caps,
+					       struct intel_dp_link_caps_config_order order,
+					       enum intel_dp_link_caps_config_match_type match_type,
+					       const struct intel_dp_link_config *config);
 
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
-- 
2.49.1

