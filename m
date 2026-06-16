Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LtSrOX2tMWofpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94769695144
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="S8+VF0//";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4332410ED1B;
	Tue, 16 Jun 2026 20:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 762C310ED12;
 Tue, 16 Jun 2026 20:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640570; x=1813176570;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=F24QK+RXsDm9ou19TmcqMSS3EOzlQifPJizM6a3W6Hw=;
 b=S8+VF0//ODdrJXLKa5620+LP5OR1Ze6hzNRKSXcFNs1vqvXO7jDXKDC3
 mYUjgwy8WYT2z6LMTPhsPSu6GNlJY8Q9UwohLa2DIfXRMEeuH69InupoY
 RShsrWp7RgUupgwUuJcWUx6C+Tri2jSqiw0djIyO45/YyL4WC6MVGQ4U1
 v937hhJgHhLg9pbCNJoFEqmHQNVCaQRYETrL+IDQbgNPYm9rRi6FRwVcG
 eHdFwcXY3roL/3Cl+9MtjaxgyC74zxMs0x6No9lcYLzT315eG+J6o/pBq
 SZQ+0A2OmDUPVhhvs9lYNxQDKm0ErwD24wtj07uh9qLJE2m0yU0MLkZsh w==;
X-CSE-ConnectionGUID: fi//ZnLSSQGRFpTM97aMzw==
X-CSE-MsgGUID: lP3n2w9wR5K4dB6nQQwq8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82618622"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="82618622"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:30 -0700
X-CSE-ConnectionGUID: UF8BHSF7T2KLyQBqWMrlug==
X-CSE-MsgGUID: L6BzJtKKRkSGQhqoz5CAAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="241515515"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:28 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:28 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JL1TMkLV4vIn79VRyaSM3lSbuxsFvZe9s2Prj2P8b1TBCcPVB3EsjfZSA0dzT4TrK3I35hJGW10RVc+LlKacFkSEjpv1NKVp72dv8uTOBT5dSl8E1iK2xpjehcYUE0YveUAgfPXgAUSUG4+ZF95yLr8Z12TlJGpvEGPZzxBgGQkD52ygi+DudkFb7aNTxJtp1Xnu6bvlP0UtCWfUxw+xK1tc8jnSQ/sCRRRv1ywnKQZL5L2C9fJ19fYMrJ48s6YD/f/56UOIEwy/h7cBnHbApIUKIRQEwYx5YSz5U0co31s5CWIBalMQAtzZFOiJ9vXh6qim4qtDxBeGy3kxqITF4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TzLG+z7MGGY5l0StZ5tiBOii3IrRvRnERKkYm3XRvxg=;
 b=qKW5vHnk9nxJ61Ai4lxsIQRLcIif+YI0W8uvtWvDu442UZ6TtM35q5HDFGkf8KnQ48NMYHPhw2pTFCb6JG9zVw66SbXAz+CJr5ggx7bqtmaxK9tSfxyNq+A5PUS2WzXezAUbY7dA9La9Cv7S/PkXYTWS5HBdHnenhhhAvTuwhfrTSqP0M4/sxvGVgOyY71Vth+7XWD0sev+fF4cVObbhykYYp4lPvaM4T72WlsDR4obP/uUqOK8Kb9/MSnvax7HKI43eaYbCef58XntfyJGR1p5K3jqAOL15j1oH8JMamYpiRuZXVxImAbguwa5n2KCLhP536dzVrph6ERUMJSsdeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:26 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:26 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 06/28] drm/i915/dp: Simplify querying of forced link
 parameters
Date: Tue, 16 Jun 2026 23:08:26 +0300
Message-ID: <20260616200849.3534628-7-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 621392bd-31a8-4362-6377-08decbe32a1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: wj7pxtFI0taKy6LbmP+39LjLJjLC/2/3Dpu5tYSdkQc71D0IBGUFbQiRjNZQh+6quHCIavBWshjPQ+w1eATYN/RhaO9PVVOPyE49HL9TvhPq2SqmGhak+QJ00v0XliXkSzBFAqn+3M9XbkCgTLaxVbV1pIxduGjQxq/L2EE5+Q9thWsEhNLeMhtvyDAo+/6Co2azxEDyVhdux7E9JYbKpbE2Jazovz3kTchpEFcFbYFeJs75wsw6Zgdr/kyd53yvSAC6k/YSKBSlAFI+nOXyRWof1opnB7dnue5CDha+7wOTwkPmWR147p0ZxqJz7LKyuwmjq20pUn1j8uf5xd0E2WlnVt5gwfjS/+8T6Su2kIU+1CS0MWhgG6wwsnLrsXjFuFsa1RWZSYzXvbCqtU47/oLtSjqjOXvOeBsSaVP+Ib6EQT39szcTjZnvIXJbja+8XuUYg6cR1OL9kAJFGV2mCoBq1Q/uZLrq+EpVUSJCjL8laGjs47YlMHACt4JHg/+4BJtFs9aPt4CMjUhpML1OZCaWM4fVhDeRK2DuUAxF0msIsxeOdtQrNyhJ78mijgcn8ZJGPWsYbutYI+D7vekJzJgv04yaKeFNhu+Kf7waf9PKDYuphCbMVnDObvhUlmo4sr5Ka1cWknpxV9CT8Tq5Zz6awRb3Lsqw/es3P9KTDKvLN1Jw+5ba0C9UN4cbG8mK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LfELRqKzZCD7A4Jd3c/hgeRuy6nhjkKIlWl3P6iTWN8RY+s4M82pxxKCdiC7?=
 =?us-ascii?Q?1RuOt8212dqw6wuvwoeeqfm1x2gF8n5GIHU2SM/g+dwzIg2oxMhBKWij8GyU?=
 =?us-ascii?Q?AXqPROfG5co9Yxcxd+ukrrsOr6hCr6J47N6pUOj8L8dCbGJaqLQ1nqjSQXQC?=
 =?us-ascii?Q?aoRld7AfXz1ItI6Wd5EyoNERqfhL+1dAvkd3vOGpd+Jixa9XgnU1+hwVdkzT?=
 =?us-ascii?Q?OzLSIAA3givBj+bxudstp9AZw6EUCOMMI9hB8wKrbJa/xxgc707HM8LGVC+Q?=
 =?us-ascii?Q?QqFT+KCfpduVywtrp3gcjme0hWgK9xAjMqTR8J9dFysjJbM3+ViMEhHzYn+e?=
 =?us-ascii?Q?WK+CIVlIxUXaMp1jSp0/TieaJtGEXXttLyPzob/efZOYFjCiRw7ztDR19NpZ?=
 =?us-ascii?Q?b4/A1FfqQT2Y+SVaDIN858i77A84elBGQM3ZvRTcT5QV0BmjqHgxwj5HCMMl?=
 =?us-ascii?Q?F2Jb2uUlH1RlHza2yN29Z+NIUQzslNCisr43T1nQauhRKX4I39hT+DugDUOv?=
 =?us-ascii?Q?GY7Y9G0Dp7gGmOhapBJjUt4BE+Z100Hz/IO7X+Hb30mya0b5an5P8mMd6t+S?=
 =?us-ascii?Q?etuxmDCKOq8D3i2knghR4YgrtkPAxNgqhgpsaAnElBjSk2GfoU7r/Ow51LSh?=
 =?us-ascii?Q?SmOpupVwUsiZx0O7jSLx68/DUTipIMFKe9fDAbSO+oi8UAJmjv0AZbk7QCZY?=
 =?us-ascii?Q?BkuVz/BOu7C09lC3DiTaACKGs/XuD2pztwNuTUlzj4/UX/WRxBjkcrF1SBNu?=
 =?us-ascii?Q?pLUWT9PXeLxZDuz7+PZYnbcq7HJ7Ay5tqxXvQVEIsmyftM+yjoC84E9kr33f?=
 =?us-ascii?Q?wAlVOgu1zfSDr2LhWmbfoYUP/SU/B7JFnl76dbyq7pWeenutItLX9XJMXX4y?=
 =?us-ascii?Q?w56/uxDuo0MQiAoi3Fn5IIqCxyjhyue1qtVxa0yz+fRnTmoIEiA0MQ0UAoMB?=
 =?us-ascii?Q?VMFGyVDmGQbCf3IPZm9zaUt8oq2r43voUkEdG3/x60e/4MA7hbmjmvyXSvJI?=
 =?us-ascii?Q?MHhX2QBEdfRzZIgXa3VpNyiWDb7taf2TYRP/RPVn5qqTTLqGq685pjVbJptM?=
 =?us-ascii?Q?TYQd3IRqkO/tx5NVBloBBQVsD2dVkt9vBTNQ1NKv2nvIRvCU7f3kkxzLJduU?=
 =?us-ascii?Q?QeZLNWopRLfHFU/0chWz/f1HlTiyGhWDmnKDsoZF7dZUMSc9SL3FB3HtrPH8?=
 =?us-ascii?Q?xXNxry43bJgPT/b7C+KHL1afVYGGDZrJnMLqWIgVaksP7d1rgIVWU2me8Gu9?=
 =?us-ascii?Q?YqurltVGheyt3sFFFX7q3vTk52RLWIOtioS/39wzoF8Q0pPHpxEIrxFaadTf?=
 =?us-ascii?Q?U5IKQ8O2NR83YS7GEdQKWyArZmwOVxaqKSRwEsz1TEybFgxmameZoYAi911Z?=
 =?us-ascii?Q?OVYJgZp6QZ0ggfp2b6bWIuHW6fHo4g9P6tD9j75A2vyO1wzyWgxO4sX+w7cS?=
 =?us-ascii?Q?6RBE9ISWbxTqZCEy8zT6H9pqpNSTQjfbHpcxf0IklXAy8+3NVXnlU0PJ+lcX?=
 =?us-ascii?Q?Ut37LPM2AMWLz1Kpc3P6SAowvKC9frCD79vUBf74H54Gx8MFEnLI9Uku1Ayq?=
 =?us-ascii?Q?MbGUyBMStiK6RpVskZcuefszJNVM7akABNRMNslrGTPCvf39DsLX1tUmTakl?=
 =?us-ascii?Q?vZjL/rrnI9d1c7PKYElakUSFLj83F+MkOEAjz4k1TGWxBhYmSjTDojl9bJun?=
 =?us-ascii?Q?yrk5BM0uJ2XdJQcXrnz3d9Ug4F4ywTPiV4S3GNF3tMAEXVHlbswJ4vZSBa+V?=
 =?us-ascii?Q?gd7zLrmWNg=3D=3D?=
X-Exchange-RoutingPolicyChecked: BYSXdbGlw5W2iGgmSGgrUX83RIRvXjjD3ZO0ZIzOiQEKxJ+ASKPgUqNHDzBw7XGwuwGrbSFDXgnwSFS5QcJFqWlydcDLTb4x0vse0b7GLl5uWfv+2WN8ihRpUO1/fniLsLEySu6/d0GKVIyg/xsSbODnaVlv1fsgz24GXZDt1PURe1jf6rNXN9mma3aAAVICtfCvBkEMZh4mrFktSpLYdEKU2bcAU9KPAoKaKajxLEyimve1wpGDMHNh0bzONMtvf9WMq0il6YkeZl5pKHV1tx/uxN9ItI0X2J+VWpm4buO1GB11/SbXcuHCzGyygVgvgzwekJD9bWPqFJ01QXU0WA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 621392bd-31a8-4362-6377-08decbe32a1b
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:25.9583 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fNkjVscS0CuBc79GkwYfpPFKPqowz6zaEi1KBXzc3QWWte7x9k6/d1vY4fKhTVzEhyvt/oB62LdZ0kRlik1r6Q==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 94769695144

Simplify querying the forced link rate and lane count by
performing the zero checks inside the helpers, allowing callers
to use the returned values directly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 9 ++++++++-
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7643fe079e15b..c4ad386acc6db 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -372,7 +372,7 @@ int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
-	if (intel_dp->link.force_lane_count)
+	if (forced_params.lane_count)
 		lane_count = forced_params.lane_count;
 	else
 		lane_count = intel_dp->link.max_lane_count;
@@ -394,7 +394,7 @@ static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
 
-	if (intel_dp->link.force_lane_count)
+	if (forced_params.lane_count)
 		return forced_params.lane_count;
 
 	return 1;
@@ -1667,7 +1667,7 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
-	if (intel_dp->link.force_rate)
+	if (forced_params.rate)
 		return forced_params.rate;
 
 	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
@@ -1682,7 +1682,7 @@ intel_dp_min_link_rate(struct intel_dp *intel_dp)
 
 	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
 
-	if (intel_dp->link.force_rate)
+	if (forced_params.rate)
 		return forced_params.rate;
 
 	return intel_dp_common_rate(intel_dp, 0);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 1d3a3ff007a03..e39e6c99ec25f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -43,13 +43,20 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 
 static int forced_lane_count(struct intel_dp *intel_dp)
 {
+	if (!intel_dp->link.force_lane_count)
+		return 0;
+
 	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
 }
 
 static int forced_link_rate(struct intel_dp *intel_dp)
 {
-	int len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
+	int len;
 
+	if (!intel_dp->link.force_rate)
+		return 0;
+
+	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
 	if (len == 0)
 		return intel_dp_common_rate(intel_dp, 0);
 
-- 
2.49.1

