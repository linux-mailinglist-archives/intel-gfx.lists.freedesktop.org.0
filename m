Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dXHCHXIzRWp38goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:34:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7806EF4C9
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:34:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ERIkC6+K;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E3B10F002;
	Wed,  1 Jul 2026 15:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D584D10EFF7;
 Wed,  1 Jul 2026 15:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782920045; x=1814456045;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=dSWDQXu0armiGwSuQiHOM5ohnAE5usUBijjoB5aMDj0=;
 b=ERIkC6+KQf51W3gOSK+ZMROV0b8RgIIHLgRX2aNWI0o0vHakDx6DACSX
 SGy4p258ttfiatU09tVR26+p0JjQwYj8geqtCkBh1tIEQYSM2OQg+DjGw
 u8y9uH3cc+OFCeGakaLiu3LTZJSneZiMK19E2FzNJskTjqNUyIy3rgqJm
 tnlDwVQk6pD89tBmpxKXZdZMLUyrWOXVQBM1zu1oeyYemzLh9ZMGY+DJh
 2afKZB4kvJBgkLrZyXUkX2L2rA0JYl08vAygVZnBWDrroU9Pfx1odp2vA
 +9jOFK6RIZX69eqNI17nnJ7cYycgyj2EZoia+5yMcBhI06VUIPnpc36OY g==;
X-CSE-ConnectionGUID: T2PtH1VLRfKb/kdsW3U9Tg==
X-CSE-MsgGUID: bL6/7SNZSfWubKb36RZVSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95159358"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95159358"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:34:03 -0700
X-CSE-ConnectionGUID: Bg0mAEXCSq6lMgxutZlxcQ==
X-CSE-MsgGUID: HnRn3C43TCS9SnhEnvNBbA==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:34:03 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:34:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:34:02 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.33) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:34:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CKKPG/VLCDdAndkKf1sLK7DlRa/ZoT1WZ8AUPsA474pgThbU+DgOIFpwR0j3eFryf67uvdv3tO/EOqi+x1b1mnY98ozBA/f4c1bpClp4YHYu046qA9qO1Vz8AtXxcac0Xf83lsO7awr5CHlAxq9/IY5kAHLww4VsIexnP69c2aUNJaRx1h8TEVobCFdIO2d7zauuxLA0z4kPo6N8yKKDTODLKGjBV3a0XIoIB+fXHrnHv6R3kedTUjPuI5MXx3TIR0NtJXEj3VNgmYdgnWWdaEhrwfAcAFY4z+2x/rKtEINBy7uZ2uRAV2dcluQ7ZGJtJ0u0EriNJ8vtfHcxGq69+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fvVgF6KbW9jdOlyS//iCnmqc2XcChUhrypmVeV/DHxg=;
 b=rpsNeux6Fz/rpDVO7Gdd4MW13Iqg+6aJndos4/3oQj69IFcRYEg7MuDL0WRRUdNMVSyNvbXWi+BmHChPlACLkzLJYCVgpW6T9ox6M/1HDCW4jV0VJ39bMp3BDTls82s8UL8XG8br0E+jBkJ1Rb6Uh1c18aI9307VxVDP/HuLamyuRz7ZXCibg0HDchcUmoGvc4DLs8eqYFLUvss04diiZO382ajRQKGyyU1CDmEuOz8MmvdgqENpoReFSxjahNXB3kSF1lce+lMMY1s9eFoGVFo/wRAPepdzEHPFL6VgR1jWYWbMnm9lDuSzmU83pVAzfTMSOyY4cNbSPjsuj9KHnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:50 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:50 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 30/34] drm/i915/kunit: Setup DP link test context
Date: Wed, 1 Jul 2026 18:31:59 +0300
Message-ID: <20260701153204.4124150-31-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CY8PR11MB7826:EE_
X-MS-Office365-Filtering-Correlation-Id: 83183b16-2b64-4ffb-5d60-08ded7861170
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: 4xJ8GfMBm0R0u9jXru1VjKMEwFbFuPfspR/IX4zQj6Eu6zHZaw8nqQ/5TPkIUErrArYzKzN4HGQTZ0YgYG1oq12taaRbZ2IWPpnF9Vmy4wknnbImP32JXpLGb3JO6ZEqqhzNlNwRMEKIqfx4llF1bU1u/0t4O//FTmimQnsrQ/exeD8RIz6eahBgYgiktLAusYa1rShqAW3qlQ/ke2VzgLqVUFj/BboiNPfC8m10BuYQGeA1YzOcC65uuIbLqOciiWFSlBYz07hBoCm/CFf7QZ7A2+RjL+CFDZ3m/0xI2FdjI9CbuEbfbv/zf3kaR9UDohMuZytdaV0yWXm2AcFZxB39VIUvvpsETQlUYvm9pfuUrVSzWCLggsxN6GwXu3mzvj/MWlxsr4j9JH7A+Bg7UXbu61VOZDPOKpj7B1oJ3p/oP6OL8fPNNF+CBNgQBDkER8jBKlt6klaHRj/4r3jNqp/JKWjcJCc/pVGk2myLPIlAAUB4U3Tq3ibYvWqpSqBhad2Wgm8o6JpH2OKyjlVA9D5GtjpS5m9R2ctBl6EB7XV4oDv4O6Ri1gSrJm2grHJ7wS7EWKXT4GOcXQ6Ipr4yyLC+Y5LBTp8sjvO3ej3pjEC436yPhWv2Me+bgBnc63eeqHAPDbMNo4kObY97J90XKvckTymcxbz9JEIgeT+Btl8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9GtmTunI0a3nJrjLGePFsWCxc6oSMmU5zMB0GF+EROLJGeeSdqQPtVUyjR2u?=
 =?us-ascii?Q?sGXPipZP7MsTOYMc9W4niaj4s+fDPak4RRXtFJwoXde01vgbNOwdIFh2B2qX?=
 =?us-ascii?Q?bDoEYkoAfdMVMNejEICuNWDijYDMdlbc9gffRdJtpepTesq2/DwVQNUH6vix?=
 =?us-ascii?Q?L/DB8Ta7rErT/kfV95CX0NwoneAvd+ZFWuBfzMh8FJbllNMTYys9ehQBe2dK?=
 =?us-ascii?Q?nWiBYly36Rz9mflgI3wS7tfCmWYPvyh178Fp7xf4gconjRd0oeof3wImDwzz?=
 =?us-ascii?Q?NMQVU+C7ZFVQoxsdy13vRh7IE51ptfSIv9y2XLIktrb5zkXAlxHzKahbWdvY?=
 =?us-ascii?Q?6bAcS5zoxafNjjH8AqEcKoXEszp5cJuEMJiwuSnX5OJBQq4IzqcXRKl730yK?=
 =?us-ascii?Q?l6J6gX3nQsfnEeJk2j8A+vkGei6b1wFk57PWd39QaCrMyd0Ek6etSgT2NypB?=
 =?us-ascii?Q?L/PIspY1Vky3Id3Go1lf+PLPLfaTFZUgmWHrJ0/b+kvNp1GnBZYg6zl9e/lG?=
 =?us-ascii?Q?tBtjG/+7JOfiWA30JQUozZycuc+PpfmkoLJB2tJy1o1Ms0cH+uwNOX8MT+9W?=
 =?us-ascii?Q?vbHw9j+GIyUFFqj5Pn/uIWPE1xJ30x74ALNdqoqwY7PjpdKS+zKsQkUEX3kg?=
 =?us-ascii?Q?52EvIbOPYhAVWjNYEOvOnlekDrOJKx+6PCUREoidfjb6GXrVIY40YXUA8VhI?=
 =?us-ascii?Q?IbtqXKoWBPPCE0AN1GG1RLVz8alS3uwFzJDqSheNYbvTJefRI5ncZlqeB2wj?=
 =?us-ascii?Q?LgZUHd5IKvMhyDcnTv6FVP3W13CIG5/mw4gQzp3IE4KtPteozwXsztpOv1L3?=
 =?us-ascii?Q?hXV4W2DMB31cWCTzcXBHFROfrS4J0Zot4Zg5CJTzGeadZOfeOR4hw2VsE+Zp?=
 =?us-ascii?Q?la0+bPIhU20hdJf8kirugxdrnYuTn4EyzWwRMOrnrtnp3xfhJ265onAqNJCk?=
 =?us-ascii?Q?WzjWvz3r533UiOeVtvsqq6kH4wKf212/CJfjGPoSc3FkQOgCS+t0uOn++XLZ?=
 =?us-ascii?Q?J8MuGtdc1cp1pkvW1D9J1Fq2VgyNkrfZ07m5I3wNs0DPNTGgIc/kQRnGrgaq?=
 =?us-ascii?Q?UkdvPlmc/8No4rQtDMmClHtaQX7KFrpJlP1j3bo8rUY5xsHcRYBLXWOuqELO?=
 =?us-ascii?Q?uAD0W0GF5WHrtcz96vwGbrTN0tw2COpMNsHw9kCjjiArHMxl9FbnbAeJoBsG?=
 =?us-ascii?Q?Kyc6ulFKQ6gviKM6Zl74JZiNCyueHKEh2zcOMzUHkrZFePiU04DFQI7HFy8R?=
 =?us-ascii?Q?9bqK6xdosmxkCg0ovkZkC2M/gsvA5CabIDv+XFsluI7c1yKO5lQtwZWL4IBQ?=
 =?us-ascii?Q?gwdge0JxXwkV0Ki1PsnCnn3IaS3EtSnU/UVRyrpBYDY87aLTZtB9VHeqJazZ?=
 =?us-ascii?Q?tIGZRl1+/M4ysbCdb826Obf1cDdFoW355s4D78DOu1RYghc9BQCG7U4x3xiY?=
 =?us-ascii?Q?ZBB+8itjEr+faRZTmAcHNKBXEjh2GASpn8xB43P5bJGrsKjm0GYQh2XFV7gP?=
 =?us-ascii?Q?UZt8Lu7CKyivrHLjowbrHldfoFFFMaxCr4oARyK54W7oolLwxPBPG95fZpTd?=
 =?us-ascii?Q?RJcc3mw9cu/lkL09XZqSNgUUGLGJ5YWCNtX3oTMl+Cd+iHJHqdxS+JoOJuLg?=
 =?us-ascii?Q?3gAlqxKd1GV72gE3J6L9usJuuVoF+S++DmzngdV5Eh04UcD1ZT4YqHpp3Q6G?=
 =?us-ascii?Q?dV71K4fyKOlO1hvMwRqciiut38SYETuUpqRZMSM2staHu/RM0W0W9TM+WO7/?=
 =?us-ascii?Q?fasp0339Ug=3D=3D?=
X-Exchange-RoutingPolicyChecked: onX5D1JX4ZseupAABQKPPAhCuGt+E4Udgp/odyvRnsMShUOVG7PwdyiyKrW67wfX3yS/28btKxjFoSaB9F3Fkx1dlBprlfrZeiUXmDJJhnejnUau/wj1rMNoV3M9XDEF2urfQHUyD7DMk81PxeHQxgUa+RRDsYiciiX87SD157NIChUtBR/F5y0H+UXDHB67FV+WHIk3biRFEdGKh7Mw7gfzYjUiseBTxper5YQA1and49xv6oxAiGUyt9hu6BCp+cDgciJ3WcUqpsU9Uq0vQ0XUlA9Y3l10R/N+IDuCppb2iy/4bwMZTwQajs45xdRO/kH5p/8KaZ0pNa0kvuBHjw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 83183b16-2b64-4ffb-5d60-08ded7861170
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:15.3404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J0bRp/EqBqkXoeq8fH4MrGlwSrpgz+ugEVQoob8S4t5GaYJosoBXUb1yUoIx4N7eXJ7diT1tRL5zB3ZbKkP/yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7826
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,test_ctx.dev:url,drm.dev:url];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BD7806EF4C9

Initialize a reusable test context for DP link KUnit tests. Sets up
minimal device, connector, encoder, and DP structures, and seeds the
pseudo-random generator for deterministic test runs.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/tests/intel_dp_link_test.c   | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index 62e1844605ac5..aa5358c94839f 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -5,7 +5,32 @@
 
 #include <kunit/test.h>
 
+#include <linux/compiler.h>
+#include <linux/device.h>
+#include <linux/prandom.h>
+#include <linux/random.h>
+
+#include <drm/display/drm_dp_helper.h>
+
+#include <drm/intel/display_member.h>
+
+#include "intel_connector.h"
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+
 struct test_ctx {
+	struct {
+		struct intel_display display;
+		struct device device;
+		struct __intel_generic_device generic_device;
+
+		struct intel_connector connector;
+		struct intel_digital_port dig_port;
+
+		struct intel_crtc_state crtc_state;
+	} dev;
+
+	struct rnd_state rnd;
 };
 
 static struct kunit_case intel_dp_link_test_cases[] = {
@@ -16,6 +41,29 @@ static struct test_ctx test_ctx;
 
 static int intel_dp_link_test_init(struct kunit *test)
 {
+	struct intel_digital_port *dig_port;
+	struct intel_encoder *encoder;
+	struct intel_dp *intel_dp;
+
+	/* Reset the dev state for each test. */
+	memset(&test_ctx.dev, 0, sizeof(test_ctx.dev));
+
+	test_ctx.dev.generic_device.drm.dev = &test_ctx.dev.device;
+
+	test_ctx.dev.display.drm = &test_ctx.dev.generic_device.drm;
+	test_ctx.dev.generic_device.display = &test_ctx.dev.display;
+
+	encoder = &test_ctx.dev.dig_port.base;
+	encoder->base.dev = &test_ctx.dev.generic_device.drm;
+
+	dig_port = &test_ctx.dev.dig_port;
+	dig_port->base.type = INTEL_OUTPUT_DP;
+
+	test_ctx.dev.connector.encoder = encoder;
+
+	intel_dp = &dig_port->dp;
+	intel_dp->attached_connector = &test_ctx.dev.connector;
+
 	test->priv = &test_ctx;
 
 	return 0;
@@ -27,6 +75,8 @@ static void intel_dp_link_test_exit(struct kunit *test)
 
 static int intel_dp_link_test_suite_init(struct kunit_suite *test_suite)
 {
+	prandom_seed_state(&test_ctx.rnd, 0);
+
 	return 0;
 }
 
-- 
2.49.1

