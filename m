Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iODrIxyu8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E464854D0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC5110EC65;
	Tue, 28 Apr 2026 12:54:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l+EOas/n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9153110EC2B;
 Tue, 28 Apr 2026 12:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380884; x=1808916884;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=fySC6loqss5kfbkhaQsBVvjBXYfnKtHmRJ+S/X9qdHA=;
 b=l+EOas/nL2N6Y6yuAz/GoMxEun5RVCrmgR9hHmrZpUEuD7vmnVvJzrFO
 V48451zXFN3gJzVp4NgJq4n0BrObOYQMJ/8b3dney7AnD+UE1kuC5nQhU
 r8xV2NRSySD4l3W6+2/VEWOG797brRDHjk8yp9S+4ysIjiousf3S7BrXP
 DgKlfuGaKmKdSu0xa8cfrkrna2nKCtmY1cbfqJEB8BYGnU+v8fhRfJlLs
 nCU/AR3vYGJ/eGwsPRMO4oCVMBYf+yKWr7tyDPeVIPe7/22dgNT5tYkqR
 xBM5+D6Jr1kw9UDcUWaekgU2CwHgO9iHFh0WVvbhpz0ZAheerGq1N/CkR Q==;
X-CSE-ConnectionGUID: INJeZkcQRCaj0fKKBz70Ow==
X-CSE-MsgGUID: XtbCc65bQo+qmG9duGJJjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100945320"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100945320"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:43 -0700
X-CSE-ConnectionGUID: ZsowR3bYRp2/DB7BbP/97Q==
X-CSE-MsgGUID: bB8v+DpARdGrcnRCxQwtAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229377764"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:38 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:37 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nj1wJHypc7mILLa3QGPnJSb/TdFJTCUfMpnCBDvg3pkqUAL2vlKstqD6pyLbTqowbrGXkKL4ffRdXWO/qQS4+KdZMTKPkY98pzfeVOQ3EJNiSseZ8K+oaF8ebjPHpeN11rBIFUA0Zd2sRmcFQlWbihXssIPEorpw4yyUjO57YFwH9FS6L79DwN63XnscJ2bmWrT6CKTz4zzB6HL4xiEb8XDQwv/eCgorocq3uWyXyeV8d1+vviBQ5B6tjnOe7+CHw+co2wldo4WHwQfhg0XEhqMXa1ObwxvurKGrymeDyGBQSCmjebjFFKpLpVfkzu5tjNWx1YzEsAeT0yXpwro1Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bbyfEj4cPaK5A6yKb+ZpLYOIIRf0t/b4OEhJynwmE3E=;
 b=iHt3aAXrojj/0ikTioCwn80OGJzEoK3cQFqRu80PBpEjFQwuws3fPwt90KLuEtRsHnc8DvYQ8Lkk1oohgewtBpdr8++1Up/yr1sbS6BPJi5AEntuBMSEyGVE3UnSz5KsT97suwt+9VR212HTKFiSRT9eCWtNDYZsIbt9pRirKSR5vDuVALCvbIz83t31UkFnY9r10qkXwULMscrY5Rl363IMGlfNaXmBIOmTn9Tm6+dvJJ6/hJCTKWxRncd6RTwBU28yHjT6sRthlz/M49VQHEOU36cEm6FLz2umn5apJlDC0xrbgpvyZccl+LYxuxU4SgIN8PIfzimFV+6qtXtd4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:24 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:24 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 052/108] drm/i915/dp_link_caps: Add helper to reset max link
 limits
Date: Tue, 28 Apr 2026 15:51:33 +0300
Message-ID: <20260428125233.1664668-53-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 3372ee46-5768-46c1-47ae-08dea5253b1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 2QKveEHgZcGQYdcrFioBKfyDB92drx1IkST+sq+vcT+416NXhQhrtf8kGEw/3CqqC1yzDZLF0KS/pXv6/q0uCSk+x5UTxLZgBi7LlZwqcTDA5QIyZHsYx25goAHKU24+zNbZRG5jmN/SrrqpluPGdXePc2gjeSuiHlfrNssAShhDQBaMKV6qsGBkiocSSF/9GkSjUzk4fxJ5qjkzH/B/W4bHdiD8V8JdDtJg6fwgX4HkHdiSCoXBYn6XxYTWzXOXvmWzrSnNpb06+rx5+gobVVCjSy7B2Xok1qAdU2c5Lf4UNWmd/oLagtIGN3NjvqRSw6AQVo8OOS/tl8ZjCZiOnvgrXD8zGiHzODEyiJcQ0duu8rNULSbPB8GgBPNop3lzGYNwEkgWGzyDpcA+PAVRYZFoVupuRE/tlRPxuzmgGg4n0o9gYaigrY8eZv4JpmijQ9vsyN+senOJMW+eEitUutHB9p8ORxQEKE+f1fZlu4IMa262dky48bor6OwEBF6GTBa6aanYKU16xlpxdeGFmaj2f54usKmMPQyMQ3W1DBoPpAa3CyJWTfgN7IYVAVaQ2HmVNi+4K0gs+HAJ2TulFfS4u2nT3zJG3Me/l01Inteoq8JJWIohQg0mxF4RFeoP4xcEA09rX2Oku25UGUOQ8YAHtcvei5tlmcG7RMNGfohOvBjXjKChNfK6WBJGqsYg7qgnIhNYhArS53NC++vpULBUMk5BwhDVCqbB4EWASec=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?j5jMnuFq2R0K+49BS4PvDIbeP8pQwOQQxgd8D4/XrncyrZ1SGxQyOUWgwROo?=
 =?us-ascii?Q?3eG+IvORSYKnI4yLYhWitdYA3/iiVWU61fWrihTXnGYHx1YxM4KUZm09IQq8?=
 =?us-ascii?Q?2dI+97gGUtnB2B2GFPP/WpK2liznlDDHqIC2sfkHM4MhBxcqY63EQReuOZhX?=
 =?us-ascii?Q?6bvDro76nGq4mZwLq2nsWJlxtud81HLu/G/eUY27tu9sQ+1SjxSIjX86pQm+?=
 =?us-ascii?Q?U55P750tLeVw+aT5olbbRmiFpDdrJi9bivJHxnqEAxz8qF/jjNhQJvv8wK2M?=
 =?us-ascii?Q?kJBtyxPoqG/lSzJcuC8Y0ZYM76Cis5iKZ+0n+azEgHUT44XlyVr2pJx2NP5+?=
 =?us-ascii?Q?da4vR3ZqjWG4pg5j9PHFzFKDTt3EmSNzkBcNAUATKurWe4Ux8leoF4bZQ7fb?=
 =?us-ascii?Q?j7VclmDpMG+xYbK8zVDI4IVN/DMM/f9DkCCMsBzHIvx0qIJmk/kA28Vmup74?=
 =?us-ascii?Q?1WOTb7HsH0gsy8Guu63aBiaEVEjhtKiW+vIiQOW5SSzjteEmRc6mguURqEFF?=
 =?us-ascii?Q?bt7BRQRGBFA4kQ21fqxfpQtYCL3LZXfNWyD9EoZkKDVwTwT0TDC2yMF5KjNo?=
 =?us-ascii?Q?SE2Uf9sfPuAdbBTLePlxsuOfMLs74ZBQOmswXAugWb/gDKuWJR8r+IsYUcr5?=
 =?us-ascii?Q?synZm+JmVDBHmLRH5/Pxjp8MSX9/dcoVsfd/yLSADHvWQZU6HafeMEYNEVhc?=
 =?us-ascii?Q?phuBxoP94ew2MViJK9T/8Xc36mJkhsuMEXR1TaM+DavjUV45Z0U7VcuuAhxk?=
 =?us-ascii?Q?VL9hO45eqyP6TfRraXaGH5PFF6nm7ExlSj1em/32mfak06vlE1JQH9HbxlPe?=
 =?us-ascii?Q?ZJ1vur8OqfUPsIN88thmt/6XBfQOFGkecpbfDhu2UMIwaHN6Eq4a4lNqUWLV?=
 =?us-ascii?Q?8YTkO2dwdkFjdoUIqYQlR929rhobV99ZWdWB5PnVO9ZcUuWswIMb/I7DUuG6?=
 =?us-ascii?Q?hRKUQSJogBQ6OjRdNwDAlbQPrZo63ibUv5sSYC7ohfOVoq2e59XZTodjQtQJ?=
 =?us-ascii?Q?pxYHCA4dzAlKJYtEscF+jcS7FtZzOxP53ypMf9Bixf37rQIT2Ll+wg4P35kr?=
 =?us-ascii?Q?wnC8cQvZT3TvgN+xI+LqXVNfVwlERkG9QZKkHImaq2XTfqT/wKFp38dIQE+3?=
 =?us-ascii?Q?m0A0uHrTklvg4vPdf/yvscxpCQyqXVKPh8dpXjFfX1VBIPKjoFRa+yD0JIT9?=
 =?us-ascii?Q?B69PgiilM1ULWZi1eeo9x74aLZBAcnxnxn5UCkRLPjT/5XJBxT3vYMuA1uqa?=
 =?us-ascii?Q?MTFtTgp1IhsVdEgi1pL67HwBc9ncMTaIbJrq6E+ue0HKPxfzgaXxmeMH6ssm?=
 =?us-ascii?Q?AAWsB7fo6fvPEN03y4Ov/mHxUAdiCYKUsGH3SZxaGakHoPHjj4PklwSjHPv2?=
 =?us-ascii?Q?gOcpPna0QskGDbq1eOp6xmf6g3j2LZyQRZ8J3Pmbe9PFP7acjMgW13e26Fqr?=
 =?us-ascii?Q?oeGWPU/L9iGiJvP1Z/HtJksA/sRCMb4AvQT4w8bg0EGfoyGCrUV0tRXnSKIt?=
 =?us-ascii?Q?jN9uC1IcAD5F2jKT9sj9P1A/GfKgIKBwvlBnZKBKzLHMlFCez23v1psaUX1o?=
 =?us-ascii?Q?FZQ31HzXeIU82jsXKu9C/Hc26RWjd5FrNL2LCwraaNU99WKtvNCXwFCypEVZ?=
 =?us-ascii?Q?Rml4hcIJ2HWIu2S99yrtoSm2wzepZfRd1Xw5jSX8h1psu1DuDqoxUCgdVGf+?=
 =?us-ascii?Q?S7juCdToboRUgmyYQtkacrqQNNrcYr7HuA/r0aiYJY8kM0YAn7p1BBOWi41g?=
 =?us-ascii?Q?oBLkf/81Xg=3D=3D?=
X-Exchange-RoutingPolicyChecked: jX3a+Xr/pNgTt3uxjApQCViFrlisKhHOEfrrak+qT+S/dItFRYI9Qqp4Ou9h/qtRoZ0EWMHd1xGK14JgLEpbXBA6GZpVoG9gFeWSR73PXMzlTeiaI8q5YScu0ZLbgHhV1SYRQ8tsc5qckcTq+VcBOexkzKUDymxOATEwEguGkUrTyTw2WutinwZvwvj46PxA7sIDeup+yYl//bANq261OcPu5pvFuCQRWaGa49EsZoMDQ2ahwhQNIJ2NEdQswMCV4xpxJh0jCWtgpjfSSSFoVyszdo5Rr6sr1191Jui2/JVtZhmvsuY9qF84w0qaCXrvnja3hFquI9bm7EVc11FhQw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3372ee46-5768-46c1-47ae-08dea5253b1f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:05.8494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cGyiXZ5dJJStR7w6Ag70zCP5wzJy360i87tMKMw2wyvcv+QOl8EMZwcxQ/oNI3iMDzd0GzwbFIcc7JON1TPucw==
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
X-Rspamd-Queue-Id: 40E464854D0
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

Add a helper to reset the link_caps::max_limits max link limits to the
maximum common supported rate and lane count.

This is needed by a follow-up change in the link training fallback code,
which temporarily resets max_limits before searching for a fallback
configuration.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 22 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 90cbbe32f180b..e23793ffde58c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -232,6 +232,16 @@ static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 	intel_dp->link.max_lane_count = max_link_limits->lane_count;
 }
 
+static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps)
+{
+	struct intel_dp_link_config max_link_limits = {
+		.rate = intel_dp_max_common_rate(link_caps->dp),
+		.lane_count = intel_dp_link_caps_max_common_lane_count(link_caps),
+	};
+
+	set_max_link_limits_no_update(link_caps, &max_link_limits);
+}
+
 /**
  * intel_dp_link_caps_get_max_limits - get the current maximum link limits
  * @link_caps: link capabilities state
@@ -308,6 +318,18 @@ bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 	return true;
 }
 
+/**
+ * intel_dp_link_caps_reset_max_limits - reset the current maximum link limits
+ * @link_caps: link capabilities state
+ *
+ * Reset the current maximum link limits to the maximum supported common link
+ * rate and lane count.
+ */
+void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
+{
+	reset_max_link_limits_no_update(link_caps);
+}
+
 static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
 				   const struct intel_dp_link_config_entry *lc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index ed053d9c81380..c7ea40b1714d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -29,6 +29,7 @@ void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
 bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 				       const struct intel_dp_link_config *max_link_limits);
+void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps);
 
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 			       const int *rates, int num_rates, int max_lane_count);
-- 
2.49.1

