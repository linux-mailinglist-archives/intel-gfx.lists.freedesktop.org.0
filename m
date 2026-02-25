Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLneMVIjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 660BA19AA09
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C16610E7BE;
	Wed, 25 Feb 2026 16:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvBPVHnr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D595F10E7BE;
 Wed, 25 Feb 2026 16:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036942; x=1803572942;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=TfrfFe5ggRX7rlJWZ/rvTRJcr4TL5yDJ2nMWvZlCoqg=;
 b=HvBPVHnrxpjyykox7Et4NicQtBT2M9xkLzB6mg53RZn3P3h9xAQe09GD
 JHr81Bis75Nn20+QtkkOvxakTDpo0KffxsQuIEmnD64/1iKqRGguKvq2g
 EiWbQ+T1OfSGNsETsB1aLzHOaBENFK4hTXdU62rLdwqxFuTFHZ81C3tNM
 /5PMCQpY/djdfzmbz+MESV2hcqBFev755shNywYTTDWvfb+zhCPfb+/2e
 MWumLNaIrHucF4A1CxptsjVqQGsCY88bP6ZPrHvhjABTZr4iKqvr2L+yR
 ONTuAN9RnAv1B4qh3i1wcc5gHqYkAzufzIDyREMbCxT4cg006S6f68xZS A==;
X-CSE-ConnectionGUID: pdN+PyDaR+K107g4u5jrZg==
X-CSE-MsgGUID: HNTpVB/2RbOXV/Ge/QqDZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84175887"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84175887"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:02 -0800
X-CSE-ConnectionGUID: xEYkhxfVT+iN5frLN1hFBw==
X-CSE-MsgGUID: jlkAMUO2SvOgjVTfXQbT5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216425912"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:02 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:01 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:29:01 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.70) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f10Jl0PYprKl0lbQxYf9mHt10dk9Tb1camHpGbbVdXqQ/ka/Km17IemPyxmEmsx5LuXx4zkvMTbg/zqeHccybzQYXbvnPtemTjz3p0Dfjgrl6UysJ937IvFHgt5MVx2GDUGf5aRit5GFp7sFCKfnmX40ws3wJouVfRWBo7QPJLLNUQdXvbaWfq6r0sl0jcqL/88B8d3RJYgTUFD0Q5IcXFQPMcalQ6eKctoz5DvbcFfmj3/h4+0Az/E/cFVx80Pb2O1EwbG4Cyw5y6rjSvMR6Ze++QOn/EFvFWfR6a0q42aMhXt32V/UXMy2DTY101ZqolnzIuuGf/MjZDCom9uVDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OU89MjRbg3HF1SpJKpX7Wgm+bW3lbQL62uK4M1A2Q7A=;
 b=CEB2MJjdKMt9ORapZTbXgSQZNGu9Vk15XxvvQQC+1fiXP9DqWDARKQzfymBS6tlCO/b+Yvso5BGKHtk9sDeimTcdMEFb/yBIQB9MS3wLKfC0SBS/HGzZY2cgODzUEFHS/fd69SUc4lo5fM7J1ay4tfbCWrIkX0amzNqXlS8s6F0vNotGVOjtMd45f+96hj3k3hfE8cm1amuIAXecsYJA2ONAVcLQoFuR3D+A4ipR0yxtB6QTi9trfc0dg3nqy9VGbVuQi7BVrc6EmYvFGUnUx370OLQL/70WCHnWz9LK6pJJ4IpDnYnxr07qLK+LO6T30G6jrMG79LqQ2dJ3qMf1tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:58 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 14/20] drm/i915/dp: Return early if getting/acking link
 service IRQs fails
Date: Wed, 25 Feb 2026 18:27:45 +0200
Message-ID: <20260225162751.1255913-15-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 6323d000-e656-4292-245d-08de748afa09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: C75XSYfrjqmB3CmsY3MHtYCQWk6crbEifhUprWIrLqJJiGpFmIkngR6GeyV+a4FhQZPUGracmABtWg1zk6ryohymqycKRQg48LIbQcqgh0APb1uwM0uBPnEnmcfnPM4PrdPVV0v7lgEdTU7TkefLrhOkxAL+q3Ck1PHEahHsp1jTIICp+k7L2CQHwvMW0ytI6RrBfy27KnlUYIYYbP865vCQilVcr7uoJ7VZBzACGXfCN6Nyz3JojVlgtkl2i6h7Lz9ns64/0njjcwBGY0T9wzFBVwPXIsWG4CLguW2XzRNFFE/BZsq0igpMu4zuMgrLgOcCN7IOVasLX47xVflw3a+SMhlAzwFG3SJc0mIkQl4/wWlR5QlnJSfFkqRDATIQIpieTDGcI2G0b/VV82waPEvrEGWsIbR387oPTGdw0isnLiMIqH3W+g99yoDnn87goS1Geum0M7SN7XUKkEyAzmNsGpmQuNJPFQBPWWVYnqtTjaxcpFaxYea6HsFcL42KtlkWcn5kmC0GM0iVTHS798JIg3zMXouAJpBUhGctifDMviabuFEzC7UwCw3NTm7SZ52pqImjdEtl7YmZR3cRcPujRHgSgAysPPVyP/mb/6+1MDtwt6VBHrE6m4Yr7K+cUgSy43sejhIns6l6XNbBXd5wX6JXcA/1XgyBMAg1Vbz2gsbFugd/fP40zpmQzWGmcSv/0dfFej3WTkLGJc2G1r0JktJLFvItHbPKeKDqq4Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?97ixQXFHAw5tf8ESf/zC7UayAg2JCsU+ORgO+3HSaGjXvGkwElugw7fAFosF?=
 =?us-ascii?Q?s1DiXRH+Y5d3yTRI3CNvlXgtwhJxglUS6YQg6FyuDJXZ7fG3eVVNQIsBw1Ht?=
 =?us-ascii?Q?r3z/kLiHIX/1r2Vkmu6Hc2s7mPPK/zX8QgRZux6cBBge1Bt5ZLXKCQgJu30I?=
 =?us-ascii?Q?yW2AzhP50sPA6adShJFq0oYiwal4jcvVr6aYFAsU6isagWTzYwhBEroDiRXa?=
 =?us-ascii?Q?Nb/9hcBr0ghrQKn0pRlUIU/rwx4UsIxLouCfWJDTqm7MrWtjLoyfQgt02YLn?=
 =?us-ascii?Q?Fkk7dccXP43sCxB+6vKIEy7XQQ70IKW8aNow5SrPs6fBtteWGzoftbGzpI0R?=
 =?us-ascii?Q?wDwE6fFp9qcX0sI/PkCPWyzseSxPlNGAgocdeqg25k1PNMz6HvRst/8LGlxB?=
 =?us-ascii?Q?sJRFHtub/T0IVX7P3ZeER9rsYuom/9SFFAGBRHFjgOcjnUbGKVS7pDDl7Ncd?=
 =?us-ascii?Q?i9CXZEBJI0azzs6oqqSfdP0AKi1xVfqcjg3HYF+NqkN6v6p+481HvuNy1tCD?=
 =?us-ascii?Q?nIKQYASeHfTDW17yCAnezEBWZX5XkzzWZYq1/tcMx97BrWYacyINfpSK4oL4?=
 =?us-ascii?Q?YBP3P2r61jQdodtZ2W2Zl3DSYgkiejTM1pwVI917VatX4x0TLgVrpu58iWum?=
 =?us-ascii?Q?ZUiGbr1+cjbyT1bfiMihV7owcOT5m2lbYik+dV5AhjL2x7Tfva1xuRtAz37N?=
 =?us-ascii?Q?ocO2yS18oZbx+DDFrHOaB9peSW6PICdIGHB0bMPxbwPv1xm2z9aF6Sy7dPRO?=
 =?us-ascii?Q?HeRqt+4d/zuf3abK2HX0c4/4CJ39XUWyNlJIaoDQkeNak/WEQh82V6gqlZ/l?=
 =?us-ascii?Q?dfXH+29ty1RPUTJd9/FFyXWCyfV8fkiPZYZy4AGg2SjkKBCekiBGre6x4KfC?=
 =?us-ascii?Q?vknyKadwq5xDrA5o27Mcvh65k+0EPmIfph5pz2uoeDpYq9+uDLg+nVo2zXOn?=
 =?us-ascii?Q?GnqHMgk0Af5CyVF+M4l3N/0Dws9yHU2cwX6QbZb0XVg2wgK2Rm1VSl4dFm9w?=
 =?us-ascii?Q?TO9ChK+ZKC0pOd5Vz+BoJbYeF5u8kn7Ni47d7pFpA0jAfDpKWf+VU+dpKpK0?=
 =?us-ascii?Q?vhREO1N+9jVtUIZIsqawLY7d7lTWyG8qoYB6T4W5psXh1ElQ5eg1+NsJuDM0?=
 =?us-ascii?Q?IGDyzTo/OXQsslAWc6MBFC4ayre39cmhLE1+SRdDOcYNp7yB4e2YBQ8qIMub?=
 =?us-ascii?Q?AuF94QEh2JA6DRIq4gJ3lnCsVR7FPmPOLAgAsfI5zh/irDcDP1Z/sV6N3XrE?=
 =?us-ascii?Q?iGwcMteCxZ1El0+FtS55HKpA/GddMYw3QqcNwPoYYTH9lI1tiw8bNXe3lcMo?=
 =?us-ascii?Q?uMN+eIw2/DGsc5BpHxGSScY9muMke0YF5xUw/siwjLswiNVKIwnsICmlNfK6?=
 =?us-ascii?Q?pZlsHeVnKA2ZZ3MaMJuGiwAcuiNPCekDgPYPW/m9tAfEgkKtsQVQTJa7MVjt?=
 =?us-ascii?Q?/30HYjIq0MPEwOpBcODU7mI94KTIOJtyHR4MieffrBkXkdxk1GELXF1sn9bm?=
 =?us-ascii?Q?HMlAFVxoxKne361l/GLsDX/fhGrgDeN84nfDAgRybgdTeqbxi7pwwzIHa6zi?=
 =?us-ascii?Q?z1Av2mfQSu2aiNgfKpwRrBtOuettE4INQ72wSgFIrfUUaOSqSz1gTO0aUxos?=
 =?us-ascii?Q?tMj29oUADVrMhPQuAmIdgxXRlUltcGUdGWHlzjyn5veFzNEUEwq7kroQyXSB?=
 =?us-ascii?Q?L+nfYsLz/fGqCxvrA5Ujb1rnbOjmjAxa2Kz4AyVEySmMmZM4FeZ/8ouTOFuZ?=
 =?us-ascii?Q?aGK32poA4Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6323d000-e656-4292-245d-08de748afa09
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:58.4196 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BXdj30YZl6nuIsto7UfQVpovqnkP/iKRXgywP+9Vrj1EMJGfIgjq9DSa4Ne7BdO0J9YdQaBkDJMUJV98/hbRIw==
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
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
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
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 660BA19AA09
X-Rspamd-Action: no action

If getting/acking the link service IRQs fail, the short HPD handler
should bail out, falling back to a full connector detection as in case
of any AUX access failures during the HPD handling. Do this by
separating the getting/acking and handling steps of the IRQs.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 35 +++++++++++++++++--------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0b57d90604198..6156fd91b13c5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5807,33 +5807,43 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
 }
 
-static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
+static bool intel_dp_get_and_ack_link_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
-	bool reprobe_needed = false;
 	u8 val;
 
+	*irq_mask = 0;
+
 	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
-		return false;
+		return true;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1)
-		return true;
+		return false;
 
 	if (!val)
-		return false;
+		return true;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
-		return true;
+		return false;
 
-	if (val & RX_CAP_CHANGED)
+	*irq_mask = val;
+
+	return true;
+}
+
+static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	bool reprobe_needed = false;
+
+	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
-	if (val & HDMI_LINK_STATUS_CHANGED)
+	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
-	if ((val & DP_TUNNELING_IRQ) &&
+	if ((irq_mask & DP_TUNNELING_IRQ) &&
 	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
 				     &intel_dp->aux))
 		reprobe_needed = true;
@@ -5878,7 +5888,10 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_dp_handle_device_service_irq(intel_dp, irq_mask);
 
-	if (intel_dp_check_link_service_irq(intel_dp))
+	if (!intel_dp_get_and_ack_link_service_irq(intel_dp, &irq_mask))
+		return false;
+
+	if (intel_dp_handle_link_service_irq(intel_dp, irq_mask))
 		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
-- 
2.49.1

