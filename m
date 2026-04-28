Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOSHKhWu8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 407C84853E3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8F810EC19;
	Tue, 28 Apr 2026 12:54:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jwYy3A0/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37DA010EBF7;
 Tue, 28 Apr 2026 12:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380870; x=1808916870;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=H5H/gkL5fQJjp57KI1FAPKH2VnxX9M2UZNkkjiwNJZ4=;
 b=jwYy3A0//0M1ZLA8ZjU6AsIdD9lFoIKoQzFAceq6W1blaUznUCoHYXnD
 xLFvC05bXNqF9t5/2i6diS9N6QejNAx4ewkB7NqaFMpt5gcJj6iZKZ+UU
 kTmKxw2wgv913JnPeFitjX6OsVaMSaL1IE0KgtlCYzg1EYb6vlHrdsBD/
 Bi9gnQhFA0TnsWCVJHYEjcC/1hvLoq/1ApDLX9mRT9dC0E6qOoASa5kf7
 lLlpj2dBNxEfY4T8dDVoCjpNgREFnSqYJfflivEZR77ZLSMNLAYiHwZkv
 zNPkr14CcoHpsuWfdjv1u4+3hfKv9E/j688RZEkH4VUw+yg9GJjVPe4wC A==;
X-CSE-ConnectionGUID: 44+cEUzXRFWBUqa3cwQcgg==
X-CSE-MsgGUID: p6ObKPOOTWC5mqS9A13MyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893778"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893778"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:28 -0700
X-CSE-ConnectionGUID: ofLCbMz/Qs+slHlTn0gm8Q==
X-CSE-MsgGUID: NPsy6/yFS9aAKa2D6yK7rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083507"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:27 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZLez81dIItvY+lO33pv305dokchowJ0wRyjWcy61Z7xSkYYQ1RuiT+Hcfg9pVpk5mQmp6oxkBMrAepgZFdFUSzmJWhXZtWFsA05D6Xrn+HhfS1ExdJqw4Vd1bnwbxLimUuNz3StDn+Fz/J+pTuTb9t3UJcBO2G5neWCI99Y10id+YovvaYJq18KgNuLNc5zbfkJ9Ht6S7kcOX/Y62o/BAfK/hc++8ppd20CU+4B2V6a75mAujbf1WPXD4Jmi0YE+jI1HKMRmb5NbcS4ctrgMU3SjYAzPOqFTx3wF4jmcgEC13beeS9XzCwaDDRjjXJv8rapugSS97obyA6OZBgNKhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0jrK1Oe3WLW2zrgUJgddkfwzpsbpOSOQwLDjYqQi6k8=;
 b=FeFFzPZHXr5+TZ/aEfwztfLY5fMkaSp8LJgQz0eelrtb6SlnWYEcZrT+YnIKpVJuux/WUzKxVKrHvRyav8OO0cJ6sgIJy5LlPVU/hKMZRyTpgd5lrH/f3fNMpVlV8ciGBQnr6uT1O6UXMTh+ffSoIC08G853B5/qRq9EOiGqRWTgzI/p4YYxYjO4SVPcsyGW/6bYK9ZnnOEsoHoErpe48P9a4QZIWCXaTkvTft4wK2SE3NazxFmh2lW5fwO6XWjCJwSY+Lkz46zjQG0C4XPXmDTBfSplPOVNqX/ToPorK2czcaS0fyLGCvMBNoF9/3+GC3GPKCk81EVnZBtNnALG8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:18 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 041/108] drm/i915/dp_link_caps: Add helper to get all
 supported link rates
Date: Tue, 28 Apr 2026 15:51:22 +0300
Message-ID: <20260428125233.1664668-42-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 6f869417-896f-45b3-b516-08dea5253095
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: C+X7BVlU8xpBIoq/psAnVk14IyH5TPB1lmxZL9a2e+8pMJ0cmqBiXKNcjgRd9+84AxsfUnePZuPGICEoZDHi85/sREOUQ4xN1XB3XXI9k3Pz11giWjdqCyiguFrud4NxE5rs3nddLmY/JtQA0mfgCsc8Xk0ee74UY2odzqw3CRiqMVlskgnlMoGS2Ud7s+v/NZRH4nLj4amcZh6MO6Gp1g/VoR4YjdNNdkmWbnESYDpFFBbZX/Xdci2mZdpKcPtxCtjpXlJeFI3oF3k3lT9cYhXHGEQCzGcNWNjgUUtBfaFIX2JaM6hKwpkNYYBmudUROJp9ZRqGh3aXueXD4E7cedt76Nxiwtw4fKgpV4q15UcmKNWRpiu4Bsgh69CFZNWvQKcSPfkqa9ZCMEpnNOS7wxgAYvsKUx3S92e8hXnaBYWw4IgeFr+zJP+jrHQUSzDf3sILjVzFSIkoBTrcPvCuEbOutNFy7FlTfSSx/GUWmuxTe3EB2n9k7QiBEaWq1smTGrhPlG61lJp7ZRNP/AStB38r2lTji0UE70l1RVX8yFj+kUHn1W+I7ypr3xIgHx0oanG3bMHbw6A3VFgjt4MimnrNJ53HcX9VeA9RGEaQYpp1iHv7VrXjVmqOMTFWIhlgEfinLe45hb50l7mnSrP5omYEMsEJd7dy8E3NFBJjVfPaptMWSBE8bHUsHgsw6Ty9QP1Ic2h2xhQxSjNhhWcOkzHJD52bd/A9RROUwOPkyBw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5jvId9zYEh4E+ZgfLS7U2J2i+5w2HwrkznSZzK3ZjqVz08gtF40fr8MUeUxP?=
 =?us-ascii?Q?MOhMHpTccA/C+2+uTSWXmGB0hK5/rFDria1BgM/74Sx1Dt6iwJJpVbXHMD8g?=
 =?us-ascii?Q?1vcYrHbcuZhT/+uLO2M4yPiiWE6lTFJD6HobmmKairZILSDrdA5ERKSyo5BP?=
 =?us-ascii?Q?rPd1S2bzdauohGI2fru9FBfZcu6HQ7g/c/cifpQVDtsMzj38ByMCmiAkYCkE?=
 =?us-ascii?Q?nFnkGdFPyiHU61+AYW6brY+ocos8+BZ7VsFHYa3bInIyYFunuuuu3pAmwYNq?=
 =?us-ascii?Q?AdDS/T8x2Kry4HUyzqi83LBgxaiYNnmVWY8hme65CDRWtKh499qbs3tALtbl?=
 =?us-ascii?Q?DnUBx5RHg6JdfD0399Zk/qoXDQ0VaITT2pN4owSnJ+8/cNA+eQwuYL8r5aNk?=
 =?us-ascii?Q?Ys3oFvHaDfX3eDFu/rh7PuuMF7WY0Rmp/QWNGNzkHStUxN64RCNOKwcko+YR?=
 =?us-ascii?Q?DUpdq3S+LIKWXnLVg3Y+ddh5UvUdj2BqqVPGMdui23SY6Ufyccgfra9xos19?=
 =?us-ascii?Q?PnZlD1kXcugumrCi1UDouKYlFAPYc2+YgvwCJ+66NXCVYgNbFxzg8B6Sj0xz?=
 =?us-ascii?Q?/IvaoXenifzcZBgshTYKHtLArvWSJFV08h20BTt9NagPS0ElMNYH2TviW1bg?=
 =?us-ascii?Q?QpsdjKeK7aIMaaF7KjVbkce2ptrdebKEB7WTk/mEw+W3dlnE85UGPqdFEsLZ?=
 =?us-ascii?Q?F5/gsft8iarHFA5SS4LCj5QAdA9hwDk9HCMLDalSFXdXyOw8kP4eVuIy3gBw?=
 =?us-ascii?Q?uV71t/774JBJ9gagEfzTfyjypujPln8JtKyT/ijwVzLQp24U+uhBIMLMLsGv?=
 =?us-ascii?Q?7upO1kCgiGE3cjqEFw3Bq5/34cPDLa/kPr66eORLOMC3MZr2McZZ67oub4Tx?=
 =?us-ascii?Q?vdwC6auWtin+K8WVTHnHcaRjqenQDMajDWsaUvLHj3Fwpmt5wo+IOWhg93AG?=
 =?us-ascii?Q?gBAfiqLcOasXDGd0dLFNUVUs3Qncx6GRtXZ0mcpgXiBGVoTUgH9+EyF2iYSe?=
 =?us-ascii?Q?C4AS9ZLmtf3XkBPxW8sQfgzzjpi1GsPoX9W8M7hlgau95j51Dqh1JUspEe44?=
 =?us-ascii?Q?bRrC8l+M/Esq3fQReTt2mHkcDeztoEYt9xb66JIGKCnDcJGBLP5F90LtwBaW?=
 =?us-ascii?Q?SJeIy7idF3Ouj+rbRNgnf5L24/kkUW2HbJQUnN729c3Zn40nXaLOxxZVrk4t?=
 =?us-ascii?Q?JPnhJ4bZtGdDqeeMc/xD0Nn1tKyMLtTWWMwvCITfT/DlhzFfJi2ElvhJoq+T?=
 =?us-ascii?Q?QSlnh7x0eOJmlVTwHsVbBouZVxP3S2Awtuby3qrIZeEhXeCDo1rgyajLxPAK?=
 =?us-ascii?Q?NgSlqmZNgX23C9y42BchUDDmSFaHurv5TCqIynqKyXtk4bwjM/S08UcsfUOq?=
 =?us-ascii?Q?5wIZD8F3S6F967DOm7smnnSM5fED5sBOdvFyss4b0O1Eus1VsN0MntwNSH7W?=
 =?us-ascii?Q?er5b186LR08740HE22AgTrMMK+ZIL0DsDR8AkTq5W6j2jh8oVd0+VwxE3t0M?=
 =?us-ascii?Q?8H8bZ+EkFcHNFWA5IcFGt8rjx5P11TsoJoYAqQlIEX4lcbJjYpcxtWLaY+GQ?=
 =?us-ascii?Q?7bAVVFPHjLfdFCHo/qTJZMgLSTofoL2+fypKPlAaLxQ+BUIjVa/LLoNOYkPJ?=
 =?us-ascii?Q?T+3jBIiUdQ06wtA3H+l/sBJIS53Jg36lIE+vPigDYmiDI5wbQ8hn8T8G4vR7?=
 =?us-ascii?Q?+xHY2XH8cNqOMoiP8tKEPfcnkNbntsGgBqcmBVcQUpnjWsjhQmWyHBMV9/Wv?=
 =?us-ascii?Q?/zt4wWhiJw=3D=3D?=
X-Exchange-RoutingPolicyChecked: t9Zp0wXO1oBHMmHH8vDSzfLimhJJj4viGOBMxk6Rruzth2zpaFMpqlqnUYoxVGYdoMMJYD1M7BruVfC+3vIi7sSSdf49kmHM1hKYIIfaxuztgcVizWWGPEtg4IlJPgNkFL+gYmdVRbDEFRRIRCxPhHMQ603uLulCTLL1aiGlbni7t1Y4uxLkfnw47FIIj8MYqf7y0IAIjUvVndh6QbscES1UqcgV3uo9cNL/kngxdnt6mptzMYAtSScajyP0ueb0tojylZmsv9v42r/xyJHOlHx3ADJi3ZAwpZXCHXZ2m93UFQDNxD59Xdvazjfmhi0zochchuwRLUYUYEof7V/p9Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f869417-896f-45b3-b516-08dea5253095
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:48.2764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pUSs/Sy44mdoL1xvQSMNjnXgwduFiHbhwIF7U3EJVOKWSazTm9+ECKORilBG/V3G1JsJg7j06RPEceJpPPLJGw==
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
X-Rspamd-Queue-Id: 407C84853E3
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

Add intel_dp_link_caps_all_common_rates() to return all supported link
rates tracked by the link_caps module. This prepares for tracking
these capabilities internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  6 ++++-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 23 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  2 ++
 3 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index febcf413bb63b..d92160c522f93 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1531,6 +1531,8 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	DECLARE_SEQ_BUF(s, 128); /* FIXME: too big for stack? */
+	const int *common_rates;
+	int num_common_rates;
 
 	if (!drm_debug_enabled(DRM_UT_KMS))
 		return;
@@ -1543,7 +1545,9 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
 	drm_dbg_kms(display->drm, "sink rates: %s\n", seq_buf_str(&s));
 
 	seq_buf_clear(&s);
-	seq_buf_print_array(&s, intel_dp->common_rates, intel_dp->num_common_rates);
+	intel_dp_link_caps_all_common_rates(intel_dp->link.caps,
+					    &common_rates, &num_common_rates);
+	seq_buf_print_array(&s, common_rates, num_common_rates);
 	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 9f8b7da98305f..94a643b6e68b6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -66,6 +66,29 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
 }
 
+/**
+ * intel_dp_link_caps_all_common_rates - get all common link rates
+ * @link_caps: link capabilities state
+ * @rates: returned pointer to the common rate array
+ * @num_rates: returned number of entries in @rates
+ *
+ * Return all link rates through @rates and @num_rates that are currently
+ * supported by @link_caps, common to both the source and the sink. The
+ * returned array is owned by @link_caps.
+ *
+ * Besides the usual locking requirement for API access, the caller must
+ * also serialize any dereference of the returned array against concurrent
+ * updates to @link_caps.
+ */
+void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
+					 const int **rates, int *num_rates)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+
+	*rates = intel_dp->common_rates;
+	*num_rates = intel_dp->num_common_rates;
+}
+
 static int forced_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 09e580bc5c9b3..636a1d16dbb47 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -15,6 +15,8 @@ int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				   int max_rate);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
+void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
+					 const int **rates, int *num_rates);
 
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
-- 
2.49.1

