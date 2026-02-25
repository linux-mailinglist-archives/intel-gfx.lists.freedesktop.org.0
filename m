Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qN0mElcjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCFF19AA35
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35F8710E7D8;
	Wed, 25 Feb 2026 16:29:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FQc8wPkF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2442E10E7D7;
 Wed, 25 Feb 2026 16:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036948; x=1803572948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=VXurkCCKAKGVVywh1LwN59M2l566IzdsMsxSmqQSRIs=;
 b=FQc8wPkFdvDIKVguFory+FQP02iM7AGGCFXxh+FG4FFRLwBjb5lXf505
 h+x2y9q2eGLjjOf7V5J3f8GPqjtp5CvArsPRZWiIA/0vkpIz8X4oR3MmG
 QULINs7cIH5vOnnVYR5PZHPd5tKXZh3T9PAjSgTLqDS/5a84/mf4rOOVh
 hia7hD2Iw2PH7+LAmOk5wOeBOnTuX/dLRE9ZRj5UdoU2774H7Q6h16KA1
 af401YBn3GWHMpqJVOXMzLkQLbWGVJTcy/sd2JHyfT9vXsCVgWlaCBlSs
 LtEkExqG1xUMxJPhlabnf2/Nt5Ev8/DmZ0rJsZtwMIDy4D8tld2Yx5TLY w==;
X-CSE-ConnectionGUID: P8gtOHMMSOCOiG0ikGcAqQ==
X-CSE-MsgGUID: uqo3fnqvQsu2Nhx/GgbUqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84175900"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84175900"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:08 -0800
X-CSE-ConnectionGUID: mG87TkLTSV6+/w4LY4f/lA==
X-CSE-MsgGUID: Lt5AAqCLSkirDuDjWmvwjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216425977"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:08 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:06 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:29:06 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O/BYG2592RIzKkasP9QYrb0BfzwCr88SxH0ToNisQfKH0U7Sdvpra4+iBJ18jHTRuc/GQ2Sr6ZXOh/LBGDtUPvHgc14Awe5nDb/TyqCaWslr115ScaG71fHmtDyRJ6BrAzoNTQSh9fIEknnvd9sxt7XdDPI9kcdO4OGkQ6xCgqmBFdsyEQriQIrJaLQ90KR2QCSR7lOmXrEM/ysXTL+5pwD2uX7R8Gc61oC1RY3zaD03zXAs6xHx+6IWY8im4UiDAq6KTl5119ZvSjEAgUZA/UPqh0hH5Y0n55CPTnNgvokW0Z6FX9fr0M/LKEF29jrOxwwXVzf5YfJ1LUB8xw9gAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9mKzlxKvwsuQv0hni1J59Iv5s+7Rd8opZR2+PyvNeKw=;
 b=zA1Yafz4wCXEEmDE3Ij8BwtNJmid+DQH/i6fGdijcTeb59Uyg+M/+RJFDYWj7Lp+pz6DxxkSEHbXUSuUDHrgeMa+d3jAP8QI8ETk7ZqdUGcnVKNTIXsBWUcE1oHx+Tf9iNsbY7FZ4CU+axJMemT8w1DalWBBaN29lce1qqA3EPmONqdzZ5sEV68Ciz5Sysu6Whw9GCSZtPzPhPAaF5dkWqLTlQQpJnZXMrqJTvOYQOGYeBEEr+2TaoarfbPUOSQ2NtSjiRoWYKPvFI9it2CD9eV9Zzcp/qPDCEhwssufvW3pXN8hvMNgOy9z+S2zf5qdp5Vf2tUWyJem+QSJkGMjyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:29:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:29:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 16/20] drm/i915/dp: Print debug message for a sink
 connected off request
Date: Wed, 25 Feb 2026 18:27:47 +0200
Message-ID: <20260225162751.1255913-17-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 81ced55b-3818-4254-f0f6-08de748afc50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: c6d1aWFmiSz55x5ynPbI13Pu2d+ie5MD7AqlFln381iDxaOcY65F+ESiet0nRii/1TW0lIGDLXwY/kpOghuWAPeTLBstffWHnH9+c3PU4g5uX1fJXPLFW1d9CZZJ6oVCScngywgqrLxAS25xJdkFT6NHx454LSjJ322tnkjKx8irKpYMbDQyDsaTLXKn0VNxH252lrDUFkq71ytYvfan9/l0DA/4IOzq3ovJg5oEko5IKJU8DLaHX4ryKosayebpejpCgh6wa8hoVLCqzFEycOzGkd8FjNqfaUNgnmhIzzFfSQcH/L0eQhbOv3sIqFxJlIK8n0NvBsv4muR24oJ+JDQWjDCSSNDYKv9NE0iaBhJuZT9uQAA7r+j1anSfarUeKBEdF+4IQLjaONXkIPIj1LsHnkbcVNoXarDhb4kdyw0nqu58bkRn1uDYKa53Et0IQhgc22HRdPpopThUE/U7+c2rG6IFyS6efMEuv+aAdoIztq/QqNKO0/mkp33+xyaTDdctZcasux9iMUDU0sHKow/mco0xyU2ViUUsTZCV1ABiHeYqA6UzzX31VDM0FEKnX2dj5HO0d8Uj7au/ZUV5LigppZ9M2AmRH9WEeQRnGMfe06SwZB+9r10/MT/sXcqya1Org2HS0U1vgchzzDgctgCqvvzVvYRYOdLgSY5d3cxm/+4RDIeQJSpLze9L5C5E8Z1/xt+/EG8p89DAuXidikZwdFK+dqWJM1+s8bSbU1A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?E2ziHmQfvticZ5y5J98AnHkg6eWkOnb66WFQ0T7ZOkeC4bBPvm0oa9LBB32Y?=
 =?us-ascii?Q?mGDYryQ/aqu5jdvqPfORZcYeokEd9fRk/TCWcI/JmrMA7MmEvCAbO9+iN0Ud?=
 =?us-ascii?Q?yWQmjh0qjd9502ZHsirJ0I+lps6Tx/wi20nW0mnFN3/YqPSnijiADRFQnlNh?=
 =?us-ascii?Q?+IPkCvqBhq+M7cTtlyE9m032DrP12pJ/msfl6+gKsilYMXoKBqdA5/5LZO6W?=
 =?us-ascii?Q?Us78Kw3lhxsskdGewzz5tLzlTaTsr32fxyatG6gAvjwTwNYoqLRhSn1cca2X?=
 =?us-ascii?Q?OipAvQ/JikJq7oCKZ6d88NNv9MfKARdEK6Lqoj5NN1ieVXzRbMUiNpzsEc7p?=
 =?us-ascii?Q?j0dGPQrKuulKoCdPMNQ+iPqTw+L7hJjIZOOI7C444N6ocGIyD5O9VHU+OSaP?=
 =?us-ascii?Q?u+mqEw4A7/WIZBKmG6Nt6QIOhHYChgGx39KZ7MkdJkj4DQPXayBoHic5ZT3z?=
 =?us-ascii?Q?iWG4aoz5JxLd7dopdRz0E7z1yKVvKZ2tEakyxNGq1hpPDMh4yF/bTfXQPwvx?=
 =?us-ascii?Q?W6c+Yrc6HsPWLvbsJknzySEquP8Q02mOIS8d9jyfQCN7/vgb7XQ3sNd9bLPg?=
 =?us-ascii?Q?U6Svn8flIJb6zXhJAS2SyrY8/gkH1Y4yBPNsjUVQ7PkvfPMyHM+odYe2mLPI?=
 =?us-ascii?Q?7J1EP3BJrYlKsTKAZxtUo34c8uY+Kff6qSIsJ+E0o+yPzy+05PLZuzNKRnq6?=
 =?us-ascii?Q?mDupQ2hPhhkdXsuv1I9bjflOlCJKWO5T0Qyswppb/9cjBiMh6jIuJhH404U8?=
 =?us-ascii?Q?LGddOO5vsdorYr4BD3S+ckeXo5KVNNM2BxdU5Hp/MXnOT8lk8CgIrCw8IHS5?=
 =?us-ascii?Q?66RHUP0rMvi9+hl/nMyRfZi5vEu3jQ0CpFW+/savuFTEesTUINo6Fvur+Ldq?=
 =?us-ascii?Q?Ja0McBy7aJfYE86q/QSybccGzskDoBDvHGH0+OG1g6E9pNkY/JOCFJ7WFN2O?=
 =?us-ascii?Q?VKbk8+ryjycBunp6BjQpCkDm+tf1LatyXyeaNhmnXwIbcl6zwXgtToWdulp0?=
 =?us-ascii?Q?JvbmAH9rcV+sNr1OSaRYs/Gm5KLSmEm0iiXfLZlLr6BvFPhbfw+lvekSXDd4?=
 =?us-ascii?Q?uG82495oyDi8rVlasxTnT2tvsM4RnSLdFf1rGXNef5rztZ4MCpf8dl/ZeK9V?=
 =?us-ascii?Q?sLt1MxFB7K0TZlLGnhZmqadSt4s1FNIKKEl1Hf38tCvKmdjJV5zGAzIWBHkt?=
 =?us-ascii?Q?TNsATLJhNW89zGRnZuaLuAokWVpVqob9pDwom3bvZSefTYBbtBe+fBJcKC7o?=
 =?us-ascii?Q?nQ8ODaI/tGs08+M5xNLVwRBfSFximGJvg/HYYWXLjaiB/YuCGSkaIi0v+12i?=
 =?us-ascii?Q?KU1X3lqx6ewy/lPyMfjh/k2Yv/foiepVmb0AK07QQVwgwp68zR4e6lMB4cE3?=
 =?us-ascii?Q?Zw6k0f/Bz47vMBf5PQvF2PDIMFmUdY62VM0GVy6XnlRcKunEhA7I/o7mDdL1?=
 =?us-ascii?Q?iniH5gUcKw2W7oibhIlb6SCSNT0rWthlqkHC5iS/5IDoAjr7XlCMJ6VgEeLr?=
 =?us-ascii?Q?HnaJQd2uLHxTQwwhchfHspwDhhrvswky1a+jdgoPLQGZUGwvc+f1JYXP72D/?=
 =?us-ascii?Q?ddqVvVGl6wGZzH+9jQYwZZDjEfmwP7u1lRQeWeIMEO49iQ15FVJ25Hg2o+v5?=
 =?us-ascii?Q?5Timv4XaJ6IotkL1r7A1YDc8LW7Lk69hjJY62j5AVdQUQg9OuaufJ+BFCmDe?=
 =?us-ascii?Q?QMKyNASWkWnLVQVPQAgokxy2BvfRuPIj98sZlqoEM2766CvBGI4PbIXC6fNk?=
 =?us-ascii?Q?/OIZ59F7Ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81ced55b-3818-4254-f0f6-08de748afc50
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:29:02.3988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lw8yqLGYwPqeaNsd65gatw1cBFc9v5vp4QmPapy3xV05JhTaevEWZAGmoB5o0BkbODXZ3ftnM3OIyZJC3hyobw==
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
X-Rspamd-Queue-Id: DCCFF19AA35
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

So far the CONNECTED_OFF_ENTRY_REQUESTED request was accepted only
implicitly, by acking all the IRQs raised by the sink. Make this
explicit by printing a debug message.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 749bcb4dfe4e7..a3bcc5de37442 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5853,6 +5853,8 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool reprobe_needed = false;
 
 	if (irq_mask & RX_CAP_CHANGED)
@@ -5861,6 +5863,12 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
+	if (irq_mask & CONNECTED_OFF_ENTRY_REQUESTED)
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s][ENCODER:%d:%s] Allowing connected off request\n",
+			    connector->base.base.id, connector->base.name,
+			    encoder->base.base.id, encoder->base.name);
+
 	if ((irq_mask & DP_TUNNELING_IRQ) &&
 	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
 				     &intel_dp->aux))
-- 
2.49.1

