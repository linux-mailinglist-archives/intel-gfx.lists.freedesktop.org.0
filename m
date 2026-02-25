Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGDrJzkjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A67119A9B4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4265110E7B6;
	Wed, 25 Feb 2026 16:28:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h9SbgmQJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 983A310E7B0;
 Wed, 25 Feb 2026 16:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036918; x=1803572918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=gefo5Mbh8x6sgaj/1c8gue9/HhXXSB+nCM7kxr+kHCI=;
 b=h9SbgmQJTxD2r6HYo+Q0umTrJ1PN82NvVUMk272Le9uFcfXict2hPVwk
 WeJRh7vTIvVwdGggXTKH1x5JkT/J5ukeGigmVuY83YxrOcqSdLalsbvTH
 5tSzjGnqdIci8uiwcgVUdKCO9/fP6K1Qt8Q9O3o9BJ2SV//U+TUDOhSbt
 qZQZMRWq/OXrZxE3hkVplnlYB7XQReaImtBIruyR0CxDLE4Oq2QgB/JfN
 ARyO8w5Xv0ZbbCz2Orv9Ms8FafHoye8r5KVduambe3s0V6SyKrvpABAHi
 OZMHmDXS+l0LepQGKxNfsXM6aG98A3gKYGIJ1N7DyFgDcyhk3o9Fkweox w==;
X-CSE-ConnectionGUID: IG6m+jAGTZeSDPVxhe+NAg==
X-CSE-MsgGUID: NDjm7XwcT128ZgZ8aDgPMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72955340"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72955340"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:37 -0800
X-CSE-ConnectionGUID: poiuMxP0QyKavN0UYn1y8w==
X-CSE-MsgGUID: WSm1iechTT6RBQ9wNjw5xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220783568"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:37 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:36 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:36 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.18) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KXrA9Jev1/HiPn7Hwxg7+AVBd9LAlh5rl/gxNktdhrzFRM8AQvopMCOtoOfOpvCWj00iXYWRuZTKN9ckNiPBoef9hwUmIRPvyoEfljgYax+6pGs5duv3NIhYMZ2Ay4DlhlPHlzWHS+Pvy4Y4T7SNy4z+e2KYYuetdWgCKD7TbEn+xuZD0EZkNDSzLSNtSZGmf+3l/KPDOqgqBpZ394StLK04iI8GqPVnLqCI91p+t3k+q5SJCNuGcbK8q0SsZbiCq/USpTTVbJP3SkFR2+cu9hgsOvOPZk8+W/AxE/csjHrpqi8m4b05I5hd+WO6Qb9mtfX/gfeJC0N+FTUPQKggUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SofibowntIwE2VH7+nvoE8jCGPEpIlI5yYCE3YzzcfQ=;
 b=hHcAlkE5d85yHaM3bWeh/ivOdc76hOZzibYiZwrI08VsVoQSzqv5/CpvQlZiffzi/xmikfslYPSSuIL/WRiE33oPvjXUYm5Gj7SxrKVR/KEsvwg+IvcHG9Ggr0pruKv4/RZcl2vVgzzho0/VzjnU+BAlG/cdlC7qrE2zvsEsAxxV9Iluo5++aFbPIumnuhh2jcHfT4JZ4QnYM4gIZo+Url2+IiaLmnpcqrCOuMwqazwVfy6jAoH4/EGwE8YbUFl6XsZ7VHLW1HD9Sk9GrVNKeSZEaSdxhtmMqWhHQtcWKEYFvaRNkTylgCylBUAj8nUJ1cgWVvl+Q+0k6rcOptbJ6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:34 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 01/20] drm/i915/dp_mst: Reprobe connector if the IRQ ESI
 read failed
Date: Wed, 25 Feb 2026 18:27:32 +0200
Message-ID: <20260225162751.1255913-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225162751.1255913-1-imre.deak@intel.com>
References: <20260225162751.1255913-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF0001DC1A.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::26a) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6365:EE_
X-MS-Office365-Filtering-Correlation-Id: f780e017-14e4-4fe2-4f9c-08de748aeb59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: LO9gaVBRVCbD+YPjLWPFUijkVKAyUgNZJxpz9XDHwMsrvt0odq+QSP0ZgPR5CQOjdkxmf98MWrXu9t4n67LkrozhlO08oeSlFI3MEUVDFH9NF7/4AXJPMtc2tJ3Xt/XOt90aWEGCEWuVF8kfbyOnFlkUnNwwT+L0CVUZDwuIVIPjzGMLBTrZkRmbTYx94oWL50fmqPA4j7lg6Wy4lwzqG6/Ao6lEoF1zA5SWHbnwQbRX0vzDCk1DULsu7WZo2IAm0+MebCCLBO/6Nv2YQc4kOsf0zA70vhhxguHeA18m99mlZZmOKQbl2AZs4l5WV4786wu+216qJcEa0lTonhqZMHpd2TKqCg8BOHEapZK83DgFUWdj3ltJBvOJlkFaoeXmLDcfy5ANVc5R+QrUpT36gTWH2BRZITTi6ZGhpNUyNAAcLAHS7p6owRtEZt+n+XeNNqnBQZ7Cd+wHZIJXVGjgV41OYXBnCM2MZognVQsuhPwJL9nUYSJ5CY+TZN0rFLhwuw0oxyCSq4Lko5D7jfR6aFZfAEkQQlM/dlapfNWnDgL5e+7hJ3nFhBu0UTPYFAw153ZbFQxskeRpPaL5Ai807wtB2S7Ekggtnh3D1vROMdtWYOouHg42CC8OxybkRcjZLlHOWltfk8Dxn8OxQlVJ5duHHOPg3Xpkl32gV4pl3Ist0Ds/aP37xz2SN5sI6DbCyQ4PDsM9jfxrDAD0kg81pdzeZCfW3UdOn072kA5TDO4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zInoeTSPI1HeszV7omDD6LeclTqUj18p9k4R/1g58R5TtQaGFlvECNVMYTGt?=
 =?us-ascii?Q?7EDAJAlCeqQBhBEmS+qXzYpXaZNIP3rUSZJcsQPbojR8XQqYfXM+xEXLdXyD?=
 =?us-ascii?Q?+GOdxbDfrAIJ92TxyD9n1UmIU3PwppSbIzk/Il4TMkymUKnPyJYtyOZWL0Q9?=
 =?us-ascii?Q?wIaSK3sfUMkSTTJM3M4j/vRqgPzC5Dz+3RKk4CF+8dJaf7QU5/+zqcxgdiVq?=
 =?us-ascii?Q?nDFtsikKdi4Njo6ddARgZ7wSOgVupMy0wkqS6jjMKFTxRghBqOKQLPq78vfx?=
 =?us-ascii?Q?hxyZFmyNfzd/K022m2n2y8gRz+nDcaoolkFdVAh+sEjieYXhL6z2nAd9WE1O?=
 =?us-ascii?Q?Z+jUpA7kqL5VvogQPRaQvjg8fawcaVmGcpclRsYO+NFgxMgXc3kQ62Rr56bR?=
 =?us-ascii?Q?HWCNvdtpPnA6vGZPJpBAQCWvDyGnkALkURjkN3++TsuIq3w09UJ4NxFsyO5D?=
 =?us-ascii?Q?FwwDVJ08otsTKuiOBteX5/J29e5d6Lfilxz5fJhegG7Z7UpCYqmXtl6s/qe4?=
 =?us-ascii?Q?p5nWnva8Mki/O/4S253T2nDMRfYD5vbzslQ/gjvOSSBbPOWs7/RQDEZy2BZZ?=
 =?us-ascii?Q?35b4m318K5b2Ag4rwxrLu/wuX2usCC8X3ge0mi/F9ItyOKKzu1Fha7wfdy+b?=
 =?us-ascii?Q?x6w7ttLBrWfQ9cTQXqZ94o13vns663SHInquaapP2tMkqB+W0DTs4WSciZyi?=
 =?us-ascii?Q?FzJzjClG/BnYJbjb+Lq3PahVb16T/pIBYjr6yscLJr8W2yLhHBLywJqKN62+?=
 =?us-ascii?Q?VRnhwf4x6gso2k2DtHNDSyS93x8yFkPZ4pqqYwBNE2kxK6q2DoZPNa86MZxf?=
 =?us-ascii?Q?AEwWQt5QVKRic+cs/FuCIatwZLv67y2ZLpdLet5u0iGPHbLX0rzignGrggrz?=
 =?us-ascii?Q?C39Z7LsYKGtShkJV9TU23syDZnRWwogQ8Eu9HAeAJjTlPrP7Qxs1abCe9nJl?=
 =?us-ascii?Q?EcNGHqBWUjsTLLot6AUHYuwOsfWhrJJJvAF53QIC8ir1oR4JQjS0MeP6S1uM?=
 =?us-ascii?Q?yH28gRNxog/NtI0Vm52TJO0SOdjifLZ8hZkqf0R6m9Sh2xKNXl3DaY+aft6+?=
 =?us-ascii?Q?PAMW1ElrvS8BVC6MBS7ovaYO+IyQnDBQL7CLS+6M6/H0n27xWjo2ZvCy0dO4?=
 =?us-ascii?Q?nsHyaxQYQT+HNywENSHbolXumwbfqTBcC/7rzH05RDIEeEtoEqVN3Av7rrMr?=
 =?us-ascii?Q?iOVMOe0qFr5iY6SAK+HgzoCjKLdI68toHygXbbrzsxswMT5NWDyNEwJsKJKH?=
 =?us-ascii?Q?BAcGSL9YNCm/0J/lzBkhzjE0oato5bgMI5kzRoilP5upFQG3vZicAV67b1Uh?=
 =?us-ascii?Q?2gLuA7akt1VwCZuCTilFakZeDe5x9bUePhyn9XLJMf5wPUElxM8yf2Z9DKoO?=
 =?us-ascii?Q?PnVVwcWpyc4cFIbKWZC8V0Wdpm3HOg6nT4vWxWHVgdyANtOiKwcwR11jJRNl?=
 =?us-ascii?Q?N14cbNHnMtk9bgY9uT3ZEfSdrmPABZA5YeokzHCqXJMMFeDF1JQnFRSjmxxN?=
 =?us-ascii?Q?3NKE0TNWlTsIQdSFZGUym//o4fWCFITpFzxjL7K/ocbppJPHPROu8vGrM2vi?=
 =?us-ascii?Q?bfMLgCdOdJAucgG8riKoog6W4ocG9hWsxuEesnoTZigW8PudsFvY11P6gO7T?=
 =?us-ascii?Q?kSI3Lw+RsEVRJLREmvmaqkcE5RXmaY5CoAZdu9UoqL4ZwhGsqpXPdv11wBy9?=
 =?us-ascii?Q?Lq9ACuwiskR2CO0s7ReTzkXbCheUClTMboWuIJKX/bJL8kcxkPnHtYBNu/He?=
 =?us-ascii?Q?47rWTHxEkQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f780e017-14e4-4fe2-4f9c-08de748aeb59
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:33.9154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xNbOrgq2MY/nvjm43wGXWPpFPTKV2sml8ZLfVwg6+p9AZsXLrIp4/mUXYZNRyvwQZgz+LikIwYadjAeymWJEHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6365
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2A67119A9B4
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

An AUX access failure during HPD IRQ handling should be handled by
falling back to a full connector detection, do so.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 025e906b63a97..eb4a1c5c55714 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5492,7 +5492,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
 			drm_dbg_kms(display->drm,
 				    "failed to get ESI - device may have failed\n");
-			link_ok = false;
+			reprobe_needed = true;
 
 			break;
 		}
-- 
2.49.1

