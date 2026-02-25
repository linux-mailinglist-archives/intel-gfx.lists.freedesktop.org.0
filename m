Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIwVFoQnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B850B19AEAA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD7C810E809;
	Wed, 25 Feb 2026 16:46:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FxnpfUDF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 036EF10E7F1;
 Wed, 25 Feb 2026 16:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038015; x=1803574015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=m0E6VOb1g+uDm6jfL6cu2kMPy24VlahjO5+n+tyCqNU=;
 b=FxnpfUDFDI/uH3YzdJc5GzKJ4SERd47qjvE+ZiV5w6lIodU8yQ5cStfK
 7RbQxKnxufEent/aHk++FDQGqg7NDHBUA77YUr8JFvqRblzkGl2D9bUYr
 o7P0GemuLvz8cJdO70/UAUFieWSRFTnxM3oYRokQuM0lxNrBeoroZ7sDA
 EanH84rhaiNADurCUhdZfh612BRHLgOal8P+CUnr6uFFU1c3qOCRz/pkL
 4yINDcrZ+fXFrZiXsVUZXZFp19FIlxwUJEe3jA4Ija7gzGbOb8y32qtJq
 cqbytDQ8qovhcsKa/fbtmIBgmfT8mv4WfKDqX/9ZyG+DE/eFvzw7+E2ZC g==;
X-CSE-ConnectionGUID: yj54yELRQGCMsWN9JU/aPg==
X-CSE-MsgGUID: 4XDuWS82QQqnMfS+t/ZP3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73259830"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73259830"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:53 -0800
X-CSE-ConnectionGUID: 02NCVmd+RH28EH9mbDQAxA==
X-CSE-MsgGUID: NlAQeskVRRqbKDfE/Chc9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216433308"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:53 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:52 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:52 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.15) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G3Sdc9xCdIBLVWjTPeJ/WxTtNoUkSMoy1knc4L0ChGtE4cmsw2WemQD0sjSrxmF6AP9Jfh+Fy5GWeNNCFFu55y6iqOPMxL2aiSDouLLPUv763Svx/ZO/GI+hlkpXKpXoQh0N8jGLbhoXBAoJotGvH0c472g/lZWOwdmbLF6M8QeiEC6O7d6cNFljSr4R5cnNIdrKj/RIbxYfYeUAC6EMWTLWXNISHpSTizHtP9JC0pzdx/5jlp4QzWqqG635SjkE488XghoGA1zok2pGX/Py+U2Cl86Qm7kUd5R6XZBycGZmvFWUt6HlTCGyFitaeCasvxI+JIdG8Y4cYjpuHyDS4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lnr92tZhWCf4Hr+UY2wbgvL4mvhljvF1AW6Wkyc4e/8=;
 b=M2bthuoetmsGlOU/vuCZ3BlYvXQAQbOFJAIKVkFOoaz/qTt+3M8pYEMUkXvuI7oU62I67zDteg1edIcY8dCQqmqd4Splmt6068aZvk/kzv7c71myoLnZfof5qmtM/IuH0Ed6lcpK/pML//24/OcDwEHe4+R6le6ijXUmNfsfVzbW1oFXCwJQhJWXC0tBOGnXVG41eHTAPxK2qizrz/lE+4DV4WFK7nirdCVoWykirqtGcksCkIuD6pKvUhwGuWuNijP9aPmfxOTbcJllHW4jfYiy+IlZH1gAgrKBzH922CDi7sojrcRvUNCdefJk+EWEdiM6uqNGWsrRR+FCHfelCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:46:50 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:49 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 09/20] drm/i915/dp: Fix the device service IRQ DPCD_REV
 check
Date: Wed, 25 Feb 2026 18:46:07 +0200
Message-ID: <20260225164618.1261368-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225164618.1261368-1-imre.deak@intel.com>
References: <20260225164618.1261368-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV1PR11MB8790:EE_
X-MS-Office365-Filtering-Correlation-Id: b6ff5ce7-701f-4154-65b0-08de748d789f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 20nk0JMqYPgJgkf4xvdZz6uOAFBtyNXJcA5gZLwoUquCI5aNdIs3SlDb07j3vGPXU/oT54/IqswaGDLfGjct9SkTf/kdzR8tkueJGElObgUdk0lOACTmEnESLqjo4hIGWiCHGDh31J2qrZ5Cjd02hT8/n/an9g7zBkIFi1HC/jDyyH2pGscxjVQvN8G61+LXF7CelP/q/q1tyV5KGNjJIMuvg3NQqOKFqZIliuOwq9hccTkOnKfoCK6xkfW70ZRqQzLTurqmDF8JjgECnnt8w8ecq0b6L014S3PGghnrJG/fovjxC2BLTeuvKYj3Dl4NLuHkjPSJJ0fBS+UPG+DbniFpO3VoPaepbwuaW7I4I4Nj29vnYo5jWzM2xXqBH9xpXv/bug9el/r4OGYB5DmOgWKeJJwipXEJOeXL+3bl/BinRG3ZiIS2DC/VsEDyjG7q0zPaLWnHCKbjq6YXNTzBcboTB7XMilwOpqJ5GxgM9rRHCuTi/gB5ksD04hoHFbksus9K0+LUyq+77cfoFPPrGe+R3U+W0VG32+n0UGtf9XJDc4UEypQ4kANT4LHXtV9YSp1b/wQiNCDGWojYP4+B8g9SHXSJJiBn/T7sB6jSfrlwzESzn+WjetsyexASKVFTdBas9bVhy0cvKIeH/oGJxSoTqQrAUgIXrkzG69xwivsGs6IXPPZMVg8S1GeSY20lkN690f8M3QbcHgtm0ONOyvTV3T+4E10S+V/OjITU7H0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZKZbsvg0JwJiZQE/MbvT9ytJQ4jQ9Dv3mAyuNdjHpzd8s6cVIqHkK2NlNNHl?=
 =?us-ascii?Q?PE3+SX1V6VOtIUyTqmC7Hf7z7mXRxtpvuP2bdtGjwPgB8Buf4+pqXb+HEmh9?=
 =?us-ascii?Q?RZmfvSvC2bHwhrPr5GWyQc4pY1KRZFghIB3smgdFcm1jqwpH+yKkiAMiIJBz?=
 =?us-ascii?Q?mWB4ie8csOSvWV6fKmgHCcWkp/psJs6CAQHPkE8AqQCftv9ZpqMvHOwNYRYW?=
 =?us-ascii?Q?RK9+8/eKoIwtaRRNl29S0h+3AGV2qu2hhjKGkf9XV85A3o0q291YyRuYQMZo?=
 =?us-ascii?Q?sXJLxWFpBNNnEZ4UpvCeAf1rHZ4fdw817S5QC+kiLj4uNcPqu027aZHwG7Ht?=
 =?us-ascii?Q?KG+kd3Ktlo2TFdg/9UD8901UisrLY2eaS6Sdf5jDl48MQKahJbTzviXtDayg?=
 =?us-ascii?Q?twGeoQksVpx3PzH0GK81yJn9qDOQjifxnoFk4gr6x/gq0J2EVZf0QBNTXaAW?=
 =?us-ascii?Q?06u+FSFtMQsY4X4+Lgixs2z6Uxpqe4Ds2NZ5XI/75fg+3SESRD3knyyaqNP1?=
 =?us-ascii?Q?ttwVVoJ0+llemQcIjiaWPR/0r2CAvPZW79S2Jfusy6wmhmR71h09/fZHrKNC?=
 =?us-ascii?Q?wbuN6z2nhmtWnuCJK6zzHiWIAvTQiLrpmcahdQ84teC0UZiPcuwBjcxuoW1P?=
 =?us-ascii?Q?+GteMP3foEEEMfI0TmF0FRu/TTWtOgnw/GE8EW1Z+uozusvxN3S6Efm4LnYv?=
 =?us-ascii?Q?7kox2pjKUSOCAumerP8PFbLTsoisMtb3kD2r1FBzkUCU4H069qcA7/Af5iNU?=
 =?us-ascii?Q?M1V/COsqMilihPqKPCDDbPfLJj27v1H2YtRH62qwIpxK/wg+hIKdyjiuQ7Qm?=
 =?us-ascii?Q?Kwq41BARSyd0jrgJbDY7Ubgf2VcD1B/bS8e6hL0/T7m0iZmI1MysjoVC/z8g?=
 =?us-ascii?Q?YtNLyPahhCXMpupZa0tgKl6VfKJb2JWVG9GPzsaJ8ngqGToJLVufg3IkjoXr?=
 =?us-ascii?Q?pH/fiC8zeIiI6u/9gtDKM6MAGCpWJW/701EBLaj+US8dk0T7t3UXJdrz0Pjb?=
 =?us-ascii?Q?/Z07epDHGEdHn/NSKakObBiRRYHy+1YXpuFNPwo4MxBJFDoN8NS+QS9uUXHz?=
 =?us-ascii?Q?ojfuWoDnY3awPBzKlcK1RZx4kE9/TkkoSWNIeTtwqVcoQ33NSpzcBebysUiA?=
 =?us-ascii?Q?YzMCTiVeIW2EaX7TCU2LwX/Q7o9WxAjqHh1+qNt0Da/ox5q5Cz8FMs1tqcfA?=
 =?us-ascii?Q?YHBppU3VSIEgsWBnunQk2WuK5r+fT9j4F8L1jAFDx2MXXtNIDP2LHAKfZ+do?=
 =?us-ascii?Q?pfLUs5oWB0TMZT3fC/vkf5nxf0/zSxPsSZiL6+z9+TxWSjzzbH3GmESZp69r?=
 =?us-ascii?Q?kq6yR13nOHoafxrqBnhYYuf6JkwBbUwf8IAhVDGHpLPSr67a1ljf3qctTlSp?=
 =?us-ascii?Q?z0lO1o3bRDP8Az9p8VB3CaStdHtDLKa950oWUJp//donjJtv0jVJgqnlvFbS?=
 =?us-ascii?Q?c+2dNLCmMnt0K35cELVgXzcDsR4i+TjwhBgR5KZFvbuzDLbMpd+9eh/375M/?=
 =?us-ascii?Q?qpf8MHlHCLYHbyE694p2Dzl8ZW/Ms8UNd2XSJtIWgeaBALH0jx0zn+CDuWdo?=
 =?us-ascii?Q?KVXV7y/9axzsrPjRY7athR6GOM4gsA2Ain/9Sr/U4a3hXwo0SeNXe+cPAnm4?=
 =?us-ascii?Q?SHrf1mb48iQBcWmaBH+SNdohaj0rlU8EppC4ZL6kR1s7q0J9UuhP4Zg3zHVA?=
 =?us-ascii?Q?Ko/rYTiX0m/fztGSrVEFe5bGJR8OwTmmd6+Nn67lV/pA8YLt6d/qa104LhKu?=
 =?us-ascii?Q?wIMlAOC40w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6ff5ce7-701f-4154-65b0-08de748d789f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:49.8870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HduVTYJTJJcf3kUvBwd+c6dBYPjQB7p+cd2Y7KyGFbR40xVm8jd+sguXoVlQmmyRW4iAniugx8jTL+UhZ+80Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8790
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B850B19AEAA
X-Rspamd-Action: no action

The DP_DEVICE_SERVICE_IRQ_VECTOR DPCD register is supported since DPCD
REV 1.0, so read it out always. Flags added only by later DPCD revisions
are defined as reserved/must-be-zero by earlier DP Standard versions.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1fab6ad42d02b..88be5a03af912 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5777,9 +5777,6 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	u8 val;
 
-	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
-		return;
-
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
 		return;
-- 
2.49.1

