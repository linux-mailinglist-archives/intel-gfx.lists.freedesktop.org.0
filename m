Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEsMHa+t8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30D1485209
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82B7110EB8E;
	Tue, 28 Apr 2026 12:53:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nb70pMCj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9253E10EB8E;
 Tue, 28 Apr 2026 12:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380778; x=1808916778;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=YBpJQZDQdmui7UlWD3Dd1Re6lFr/edQQmi6awdufHPo=;
 b=nb70pMCj+YaTEIl+2e76PKoTf3M1OxVKtrEdZebtx+8OWnLpSK84z/rK
 Ad0Kqtmpd+iHAGmnUe0FIfjy5JVWERINOcJuuIZrq6gZAsrw/KiHpwWe4
 po7G91yMPqPLNYnzrEoahgTBZ7N1j4ltC9d8HzJ6qoq5uJPl2arOwI+8p
 rJ8Dl6vGzRlVkYvUD3YXhZ2mo45QilYa/S4LDXvqTZUxzIz3h8GyGmNjL
 45Sp10DzW9T7RRt/0zX7o4lGqxlIYABjb+KWkOpngJ1B0Pft19rPvSuHf
 tlgLUaCzZ9AYwQz8j/jkO5Xfl9L8xqJgaAXAfQhUkvFk/P+1Gt85r2lSY A==;
X-CSE-ConnectionGUID: zhoc5NavQCqeLayu2h9QmQ==
X-CSE-MsgGUID: DPbj6BQ4T+qsde7XzoEGCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398566"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398566"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:57 -0700
X-CSE-ConnectionGUID: aYuF9+/NQYiM9QQjOZxa7Q==
X-CSE-MsgGUID: 7wOT4bNoTqyQWKxkx4YoAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911280"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:56 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:52:56 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DEbtROB0pT7kU1kIkFlV0iQiaDyZFlaoZSzahINHdKROyxfVidO1BEb4Dt6LF2BmzFCJBkjY4Qq4V7IOJR1LdVuFj5L6TTUAgBYkDiCV3xHRCSVA7latjfDun1uZJJ5l2Owx43j22mGpgw0zYwh32o4Ry3gMWjsPE3QtAnPF/xZ/DGVgKLCrgHIEaAltBzQx4W6e9VmDmVS7FSQkry3WFIzZKxxixWVLQonO8FLmbnpUoxRYB8p8Bawu0TshOaAtAOIDBRD+JanU2yv9U0uF3zLR4uG1LsxZPkPq+HR0t1u421Ksmnmw3R1WszKl1rHz3JYVqh9IbLdbfP7OwcWjdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D5OpKDJy92yIhYCFqYFO0R0P8o12QG0ogPdcu/ZeNP0=;
 b=EbiFCsbqOhI+h5WDRWO7Gu4abp0BEoKJQnLgxEZjcJwoID4RuSwfnHq4A9b/FUmI0B89lg5LXoZxPT7RwuS79SACvsiWP5WysKQtK6lc3NoThUkZnoUb7kMdjFogQEZsltfSR7NcVPsEVhDXGaWqtDrC7h2Tx8ZvledUbP1ymafeqTjLozE0pUkEeSMEgKfxpXRSbiYCJnV/qjdO9bGQ+Ljy2eDIV7TJaSnR5ILKqG6QJjiZXmApnVobfv8di2OWl93s0oQ+9xsCtYrKecF3SanoJvpNqt7ROKa5e8sGPzalRTl6Zy0+VxISl8WChBEMHz8TX6Cs1Yka82pU2YAIVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:52:54 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:54 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 008/108] drm/i915/dp_link_training: Move link training helpers
 to link training code
Date: Tue, 28 Apr 2026 15:50:49 +0300
Message-ID: <20260428125233.1664668-9-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB8156:EE_
X-MS-Office365-Filtering-Correlation-Id: 48fc6bb3-775c-44de-e1e6-08dea525102d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: YcrxyNOacig23WLVk+WGTcmMLrKe2zOuDCe9NswtEPWttqciG7b/VI3lxjY7mNZVYyI9UZ4bOZl7+ksOjoK0F3mX0sjH6I0xc7HnTnSKk9gw02vsslTg4Tu963aT8m/wX0OM7VylF0KthOq03cQUNQSp+EpeTGlR2xSV9vhcnsvR3m1rZQ/9FiOw8qK6ZFtIEYH2Emg1XUMj3W6RvnyOy/el9G3nnNQXjDqj3wgQxFJP0KOm+lhKgAmDdCsKkGSWX86pM4RLg84SRVRr3I0Laaqzq2TGQsx/vpulUKag1XyXsFUT8c3bO2TKhkX6A6tCc5Fud6gFMTI9cTVe1G7tr5ibUCPhosnQ6ssE2z4kZvmJZzwxAITBkF5NZOCdBUWpR7ERkTzRQuRKPN1Nrx23bJ9rVWyW2r5AtZcvFNzldg/vlpNwdsuD8IOK5//RHcvvXfbzbqDOrWEMjufpkek63ZoqeV52qEh8yrOSmAyg1/wdoq7Yi+bOV8YttbsK2USxcvZBNlwdMAXh9q66gA4LI+7ndBFz20m0bdO016j//90bk6EMeD/cA/KSNhnJiz65UPCPRHqTMnqQu8jdarUkex+BPn4GZpPdDDeyLfdCpAngKECDP7ZY2B0yypg48a9Ynq5lX31jg2hwUKV9Img/8hYWUBRS/OP4RIuTBqWOGcntVt+565tO6t8GpdC2vtiEgmNPGSVICAOxeVBXvOQjdnfFaVGRiL8aKP5iYwgxOWc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YoBS6BM2qETLca4+kle97jkVGf+IoKepbnE3BITKE2D6sXXNvnbCPf3hY4t1?=
 =?us-ascii?Q?odwCk0FQnBM9ajfi0cIn7Z4Xy6U9iwIJk4q5NnpK4MYIwuDfR45wI0Ya0a0I?=
 =?us-ascii?Q?COvAr1ReirO32RQc+EoOLdApxcOYcR9HfNWTJ85oatt423YLK96ZPd3NQqpW?=
 =?us-ascii?Q?NIcAIFHmtMavyGOAlAluyt4sd/6ruBIo9otsenRaYC3/L76QGoJF9VYtCCS5?=
 =?us-ascii?Q?EADcb4yqJs5DkrkAkhp1AGS20SCrwyr5OKGer0cg9GufMzM6SLoZ2ymfZUAK?=
 =?us-ascii?Q?ebkjfAy491396HyLlPHLi3XliFHDuNe7pakjeOIa/rIjovNHFIfzyK5j5Ool?=
 =?us-ascii?Q?u0jof+b/CnvPJA4UjifHGoO4RmE4TPewZcbs/EZkbfaeT53UCVHtS9QWwPUi?=
 =?us-ascii?Q?XPOHPJUad0iu7SrEqYuZbm6d3AgD2Miq+SThWbwbDkbTsQ1QagowHcEuP5V+?=
 =?us-ascii?Q?QilLkjZSI3HzOgop3FWanL79/ULeFchzujdDs642bMf5rZCjOnO+R9n2V6dZ?=
 =?us-ascii?Q?WRJu8r2AIkJNB33yuKjtxLbccWQ/eNJ16Lu4dGY9hf5h+PUeBQ3+jFfi6IHx?=
 =?us-ascii?Q?74BfhoFm3UKHTgFCG4IQEdsFUD7r7MCDmFSy+0fW9VcdIggCifRRT7g/eXcJ?=
 =?us-ascii?Q?QTe5WoJfbLketzO5+MocNxvcH2CCZ2XwL6LllozOCBmdqFUTfLNGfXwm2F/r?=
 =?us-ascii?Q?kqF7DLIVZUUoovod0InV8Yb6MboCOMzGlkzlb42SuOyjTtWz4wk/TEEaxrp7?=
 =?us-ascii?Q?qqdz+oFpHvScuHX+mQrisPwxq1SNhifhz/breEYFXi9h0k/WOzYi/TcbV9V4?=
 =?us-ascii?Q?DFCNDJWWvO3SzSj/ECdIouvtzGw8wrGC6N7ZQTzPagSlebSTB8Ib3Q5zYE+9?=
 =?us-ascii?Q?WGFgKfEf+y/yQYo3FRoMFMege3IzkdNDyyb16w0QmUn3Qa6ednGoAGO+JBxq?=
 =?us-ascii?Q?SHDWk56p3dAJ3iXhWMoEPrbZ+2Vd6srDDvor8i9PIddbSaBrRTW8zNPbsZf/?=
 =?us-ascii?Q?9YI0242MD2UX/hv+yIYhF0gJfgwqAxt9ovr0kq8mE0HvnA70jItx8kTRQ2MG?=
 =?us-ascii?Q?CFp8sR4qYv6RTEAH4Cddh9hgBg/PIRjKxSrypmzTXhbKL7nBl9CD58pol/cW?=
 =?us-ascii?Q?FB0JCNjhyRGq4VQVvxcEC84V8b+eJC/o4JHTLmnfqxIlwR3dKhqvDAROWVYY?=
 =?us-ascii?Q?+048CVfx3YbzL+wuj4VG+rcT0xbnPUK3JA5ZOjp+eT93N1cD1m23GboFLrdn?=
 =?us-ascii?Q?DQQ9hgVnnemMouYN2aAi3F1x4Wz5xCqpuaxA4Hpzt9xX5vofkPilAqji0zBo?=
 =?us-ascii?Q?SWDWX0LP7y6ceF1HSKal/doYZRlhXLR72Q42+a1OvCmU4+AaiBOFyEmyoNv0?=
 =?us-ascii?Q?fWAlmgZQ2xkV0YIZloS9ZYoDkw6s5ju3rSDCT8LOwkbyJEvmwt2FpW81h/Ty?=
 =?us-ascii?Q?dD3BoCuVtqjNV6zr1b3mOWGMAdNBBxTkPsQ5a/z74s5h5ODvCx0UlDxDHYA1?=
 =?us-ascii?Q?PP56C8YpyL141+CsR5/srP5QOgjPJdWt+4eDC4+C4YwSr2JEL0GTnEyNSBZu?=
 =?us-ascii?Q?6bCfe49KWM7cIQXnW8jfZWLTvXG6wr1OaeYNZxsD8hfEtjjnoHNv/ayOIS2y?=
 =?us-ascii?Q?zOGs9GNC/+jtKdJSbGewiDTC5iXu084Hr0uP/CSPkCJg34G/RvEkTiYMi+VK?=
 =?us-ascii?Q?Zc4gime69sIeRQujvWCCQpGAuJWmEumoxDU8ct+4VAVekSpHNs+cVqAu8XPE?=
 =?us-ascii?Q?cEHIjXbgUA=3D=3D?=
X-Exchange-RoutingPolicyChecked: WzRuWOFK4N5krYvT4mV9ULta44vQqxkG+pXchwS2/dQQk9IHe7/S2R6xm00PYR2xjTtGcJ3JQfsrSqJCU2sLT8y45PPvzopXWlGNELDDB1Meh13lBjXXGJ3579HRrBLV/lABielPY4s+wb2g83glSHAUng1HkFac3PGsE0jimpDjoWEk8Q84sdQJZSxLAMC0ptkJY/TmIZ/ffFWSbx0N+jTBy5KJluFptI0LM7ho7aGe+TRKkCGIjpHd9Yv4pZQPtwLYCcaK9PHRRFO15KXaznxEjvznccL/qD2FJLREBftAIa/qMhVtz0j6aY8+ndaZ33apRDoiizCnddhKeV7ZJw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 48fc6bb3-775c-44de-e1e6-08dea525102d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:53.9880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: neRnXJRxA+EJ9p1wOsmlOS1tIBpNAEjBRVBSf9M/apLeOEtxgunSupHzDDjjEqwSsEBM9/Xnrtol6DDCKzddVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8156
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
X-Rspamd-Queue-Id: F30D1485209
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

Move the link retraining helpers to intel_dp_link_training.c, next to the
other link training helpers.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 197 -----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |   4 -
 .../drm/i915/display/intel_dp_link_training.c | 200 ++++++++++++++++++
 .../drm/i915/display/intel_dp_link_training.h |   7 +
 4 files changed, 207 insertions(+), 201 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d7c8ace38a01c..3821686484483 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -845,25 +845,6 @@ static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
 	return link_params_changed;
 }
 
-bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
-				u8 lane_count)
-{
-	/*
-	 * FIXME: we need to synchronize the current link parameters with
-	 * hardware readout. Currently fast link training doesn't work on
-	 * boot-up.
-	 */
-	if (link_rate == 0 ||
-	    link_rate > intel_dp->link.max_rate)
-		return false;
-
-	if (lane_count == 0 ||
-	    lane_count > intel_dp_max_lane_count(intel_dp))
-		return false;
-
-	return true;
-}
-
 u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
 {
 	return div_u64(mul_u32_u32(mode_clock, DP_DSC_FEC_OVERHEAD_FACTOR),
@@ -5626,32 +5607,6 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 	}
 }
 
-static bool intel_dp_link_ok(struct intel_dp *intel_dp,
-			     u8 link_status[DP_LINK_STATUS_SIZE])
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	bool uhbr = intel_dp->link_rate >= 1000000;
-	bool ok;
-
-	if (uhbr)
-		ok = drm_dp_128b132b_lane_channel_eq_done(link_status,
-							  intel_dp->lane_count);
-	else
-		ok = drm_dp_channel_eq_ok(link_status, intel_dp->lane_count);
-
-	if (ok)
-		return true;
-
-	intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
-	drm_dbg_kms(display->drm,
-		    "[ENCODER:%d:%s] %s link not ok, retraining\n",
-		    encoder->base.base.id, encoder->base.name,
-		    uhbr ? "128b/132b" : "8b/10b");
-
-	return false;
-}
-
 static void
 intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
 {
@@ -5758,78 +5713,6 @@ intel_dp_handle_hdmi_link_status_change(struct intel_dp *intel_dp)
 	}
 }
 
-static int
-intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
-{
-	int err;
-
-	memset(link_status, 0, DP_LINK_STATUS_SIZE);
-
-	if (intel_dp_mst_active_streams(intel_dp) > 0)
-		err = drm_dp_dpcd_read_data(&intel_dp->aux, DP_LANE0_1_STATUS_ESI,
-					    link_status, DP_LINK_STATUS_SIZE - 2);
-	else
-		err = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
-						       link_status);
-
-	if (err)
-		return err;
-
-	if (link_status[DP_LANE_ALIGN_STATUS_UPDATED - DP_LANE0_1_STATUS] &
-	    DP_DOWNSTREAM_PORT_STATUS_CHANGED)
-		WRITE_ONCE(intel_dp->downstream_port_changed, true);
-
-	return 0;
-}
-
-static bool
-intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
-{
-	u8 link_status[DP_LINK_STATUS_SIZE];
-
-	if (!intel_dp->link.active)
-		return false;
-
-	/*
-	 * While PSR source HW is enabled, it will control main-link sending
-	 * frames, enabling and disabling it so trying to do a retrain will fail
-	 * as the link would or not be on or it could mix training patterns
-	 * and frame data at the same time causing retrain to fail.
-	 * Also when exiting PSR, HW will retrain the link anyways fixing
-	 * any link status error.
-	 */
-	if (intel_psr_enabled(intel_dp))
-		return false;
-
-	if (intel_dp->link.force_retrain)
-		return true;
-
-	if (intel_dp_read_link_status(intel_dp, link_status) < 0)
-		return false;
-
-	/*
-	 * Validate the cached values of intel_dp->link_rate and
-	 * intel_dp->lane_count before attempting to retrain.
-	 *
-	 * FIXME would be nice to user the crtc state here, but since
-	 * we need to call this from the short HPD handler that seems
-	 * a bit hard.
-	 */
-	if (!intel_dp_link_params_valid(intel_dp, intel_dp->link_rate,
-					intel_dp->lane_count))
-		return false;
-
-	if (intel_dp->link.retrain_disabled)
-		return false;
-
-	if (intel_dp->link.seq_train_failures)
-		return true;
-
-	/* Retrain if link not ok */
-	return !intel_dp_link_ok(intel_dp, link_status) &&
-		!intel_psr_link_ok(intel_dp);
-}
-
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state)
 {
@@ -5921,86 +5804,6 @@ void intel_dp_flush_connector_commits(struct intel_connector *connector)
 	wait_for_connector_hw_done(connector->base.state);
 }
 
-static bool intel_dp_is_connected(struct intel_dp *intel_dp)
-{
-	struct intel_connector *connector = intel_dp->attached_connector;
-
-	return connector->base.status == connector_status_connected ||
-		intel_dp->is_mst;
-}
-
-static int intel_dp_retrain_link(struct intel_encoder *encoder,
-				 struct drm_modeset_acquire_ctx *ctx)
-{
-	struct intel_display *display = to_intel_display(encoder);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	u8 pipe_mask;
-	int ret;
-
-	if (!intel_dp_is_connected(intel_dp))
-		return 0;
-
-	ret = drm_modeset_lock(&display->drm->mode_config.connection_mutex,
-			       ctx);
-	if (ret)
-		return ret;
-
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		return 0;
-
-	ret = intel_dp_get_active_pipes(intel_dp, ctx, &pipe_mask);
-	if (ret)
-		return ret;
-
-	if (pipe_mask == 0)
-		return 0;
-
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		return 0;
-
-	drm_dbg_kms(display->drm,
-		    "[ENCODER:%d:%s] retraining link (forced %s)\n",
-		    encoder->base.base.id, encoder->base.name,
-		    str_yes_no(intel_dp->link.force_retrain));
-
-	ret = intel_modeset_commit_pipes(display, pipe_mask, ctx);
-	if (ret == -EDEADLK)
-		return ret;
-
-	intel_dp->link.force_retrain = false;
-
-	if (ret)
-		drm_dbg_kms(display->drm,
-			    "[ENCODER:%d:%s] link retraining failed: %pe\n",
-			    encoder->base.base.id, encoder->base.name,
-			    ERR_PTR(ret));
-
-	return ret;
-}
-
-void intel_dp_link_check(struct intel_encoder *encoder)
-{
-	struct drm_modeset_acquire_ctx ctx;
-	int ret;
-
-	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
-		ret = intel_dp_retrain_link(encoder, &ctx);
-}
-
-void intel_dp_check_link_state(struct intel_dp *intel_dp)
-{
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *encoder = &dig_port->base;
-
-	if (!intel_dp_is_connected(intel_dp))
-		return;
-
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		return;
-
-	intel_encoder_link_check_queue_work(encoder, 0);
-}
-
 static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index f2abd6059a22a..3c0d229eb1f55 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -56,8 +56,6 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      struct drm_modeset_acquire_ctx *ctx,
 			      u8 *pipe_mask);
 void intel_dp_flush_connector_commits(struct intel_connector *connector);
-void intel_dp_link_check(struct intel_encoder *encoder);
-void intel_dp_check_link_state(struct intel_dp *intel_dp);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
 void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state);
@@ -206,8 +204,6 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 			       struct intel_connector *connector);
 bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
 
-bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
-				u8 lane_count);
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
 int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6dfb6b8db235e..c2f9af251b6a9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -33,9 +33,12 @@
 #include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
+#include "intel_dp_mst.h"
 #include "intel_encoder.h"
 #include "intel_hotplug.h"
+#include "intel_modeset_lock.h"
 #include "intel_panel.h"
+#include "intel_psr.h"
 
 #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
 #define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
@@ -1852,6 +1855,203 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b enabled\n");
 }
 
+bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
+				u8 lane_count)
+{
+	/*
+	 * FIXME: we need to synchronize the current link parameters with
+	 * hardware readout. Currently fast link training doesn't work on
+	 * boot-up.
+	 */
+	if (link_rate == 0 ||
+	    link_rate > intel_dp->link.max_rate)
+		return false;
+
+	if (lane_count == 0 ||
+	    lane_count > intel_dp_max_lane_count(intel_dp))
+		return false;
+
+	return true;
+}
+
+static bool intel_dp_link_ok(struct intel_dp *intel_dp,
+			     u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	bool uhbr = intel_dp->link_rate >= 1000000;
+	bool ok;
+
+	if (uhbr)
+		ok = drm_dp_128b132b_lane_channel_eq_done(link_status,
+							  intel_dp->lane_count);
+	else
+		ok = drm_dp_channel_eq_ok(link_status, intel_dp->lane_count);
+
+	if (ok)
+		return true;
+
+	intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] %s link not ok, retraining\n",
+		    encoder->base.base.id, encoder->base.name,
+		    uhbr ? "128b/132b" : "8b/10b");
+
+	return false;
+}
+
+static int
+intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	int err;
+
+	memset(link_status, 0, DP_LINK_STATUS_SIZE);
+
+	if (intel_dp_mst_active_streams(intel_dp) > 0)
+		err = drm_dp_dpcd_read_data(&intel_dp->aux, DP_LANE0_1_STATUS_ESI,
+					    link_status, DP_LINK_STATUS_SIZE - 2);
+	else
+		err = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
+						       link_status);
+
+	if (err)
+		return err;
+
+	if (link_status[DP_LANE_ALIGN_STATUS_UPDATED - DP_LANE0_1_STATUS] &
+	    DP_DOWNSTREAM_PORT_STATUS_CHANGED)
+		WRITE_ONCE(intel_dp->downstream_port_changed, true);
+
+	return 0;
+}
+
+static bool
+intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
+{
+	u8 link_status[DP_LINK_STATUS_SIZE];
+
+	if (!intel_dp->link.active)
+		return false;
+
+	/*
+	 * While PSR source HW is enabled, it will control main-link sending
+	 * frames, enabling and disabling it so trying to do a retrain will fail
+	 * as the link would or not be on or it could mix training patterns
+	 * and frame data at the same time causing retrain to fail.
+	 * Also when exiting PSR, HW will retrain the link anyways fixing
+	 * any link status error.
+	 */
+	if (intel_psr_enabled(intel_dp))
+		return false;
+
+	if (intel_dp->link.force_retrain)
+		return true;
+
+	if (intel_dp_read_link_status(intel_dp, link_status) < 0)
+		return false;
+
+	/*
+	 * Validate the cached values of intel_dp->link_rate and
+	 * intel_dp->lane_count before attempting to retrain.
+	 *
+	 * FIXME would be nice to user the crtc state here, but since
+	 * we need to call this from the short HPD handler that seems
+	 * a bit hard.
+	 */
+	if (!intel_dp_link_params_valid(intel_dp, intel_dp->link_rate,
+					intel_dp->lane_count))
+		return false;
+
+	if (intel_dp->link.retrain_disabled)
+		return false;
+
+	if (intel_dp->link.seq_train_failures)
+		return true;
+
+	/* Retrain if link not ok */
+	return !intel_dp_link_ok(intel_dp, link_status) &&
+		!intel_psr_link_ok(intel_dp);
+}
+
+static bool intel_dp_is_connected(struct intel_dp *intel_dp)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+
+	return connector->base.status == connector_status_connected ||
+		intel_dp->is_mst;
+}
+
+static int intel_dp_retrain_link(struct intel_encoder *encoder,
+				 struct drm_modeset_acquire_ctx *ctx)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	u8 pipe_mask;
+	int ret;
+
+	if (!intel_dp_is_connected(intel_dp))
+		return 0;
+
+	ret = drm_modeset_lock(&display->drm->mode_config.connection_mutex,
+			       ctx);
+	if (ret)
+		return ret;
+
+	if (!intel_dp_needs_link_retrain(intel_dp))
+		return 0;
+
+	ret = intel_dp_get_active_pipes(intel_dp, ctx, &pipe_mask);
+	if (ret)
+		return ret;
+
+	if (pipe_mask == 0)
+		return 0;
+
+	if (!intel_dp_needs_link_retrain(intel_dp))
+		return 0;
+
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] retraining link (forced %s)\n",
+		    encoder->base.base.id, encoder->base.name,
+		    str_yes_no(intel_dp->link.force_retrain));
+
+	ret = intel_modeset_commit_pipes(display, pipe_mask, ctx);
+	if (ret == -EDEADLK)
+		return ret;
+
+	intel_dp->link.force_retrain = false;
+
+	if (ret)
+		drm_dbg_kms(display->drm,
+			    "[ENCODER:%d:%s] link retraining failed: %pe\n",
+			    encoder->base.base.id, encoder->base.name,
+			    ERR_PTR(ret));
+
+	return ret;
+}
+
+void intel_dp_link_check(struct intel_encoder *encoder)
+{
+	struct drm_modeset_acquire_ctx ctx;
+	int ret;
+
+	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
+		ret = intel_dp_retrain_link(encoder, &ctx);
+}
+
+void intel_dp_check_link_state(struct intel_dp *intel_dp)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
+
+	if (!intel_dp_is_connected(intel_dp))
+		return;
+
+	if (!intel_dp_needs_link_retrain(intel_dp))
+		return;
+
+	intel_encoder_link_check_queue_work(encoder, 0);
+}
+
 static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 6c0c74e31a3c5..c1e57c6aa3a7d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -13,6 +13,7 @@ struct intel_connector;
 struct intel_crtc_state;
 struct intel_dp;
 struct intel_dp_link_training;
+struct intel_encoder;
 
 int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_SIZE]);
 int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
@@ -54,6 +55,12 @@ static inline u8 intel_dp_training_pattern_symbol(u8 pattern)
 void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
 
+bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
+				u8 lane_count);
+
+void intel_dp_link_check(struct intel_encoder *encoder);
+void intel_dp_check_link_state(struct intel_dp *intel_dp);
+
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector);
 
 void intel_dp_link_training_reset(struct intel_dp_link_training *link_training);
-- 
2.49.1

