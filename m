Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2YAZF08zRWpy8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D546EF4B6
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GLnP9Xo+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6423010EFE9;
	Wed,  1 Jul 2026 15:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE8010EFE8;
 Wed,  1 Jul 2026 15:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782920012; x=1814456012;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=In2Y9g5BM6SzwCXTsjRgzGumt+82JvNmBtmwOPdr5Oo=;
 b=GLnP9Xo+K2xGvLA4qwxTPccgodGyZ9OeSjJkOn39v3Ck08Lv0ruxZFxP
 fqW+lRF9zfYUXmtZk8hHwrgdqxd0P0W0CGQDJAlTeyT3GGFOPN77K+KYm
 0ai5CsdstaP6Di2R3TxDPC8LRRyzS3PpktWf1futlkBbxguKndKFiv5Fe
 tZTRTPPyqI2H4cb2g9L14VvyCblUTbDCmPlQWkx0UjKfcQZrOze9K+bP7
 09KGJOwHH9F1R+YhLJjl+sut17fpcp6BJ85yjT1VMp3bx61ISl2DEdurj
 Cr2JwyVaLND9VleH2SUC+9vXJNSv5PY8JLUNQeKkdAMdVgS7Ds2oqwrcw g==;
X-CSE-ConnectionGUID: 52zoT6F8Tia3YP7leJlVfQ==
X-CSE-MsgGUID: yfC3j61BSA+X1TWwzNHlBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95159284"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95159284"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:30 -0700
X-CSE-ConnectionGUID: YHNzdsAYSYGq4veFAPR6gg==
X-CSE-MsgGUID: opvGvQi3TdqKz1uhLirAkA==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:28 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:28 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.66) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I8hlvcqG9vFkKPkoUo15MzDfGyOWeEqvXCRIPcnTAREMoq7R9GAtBMsqboXiZQE4+fBosFoN+tJdrLQe4wCQbDcx74+9JLmhQpXt4qR6bIvKA4GKqC4reFTIL6qS+mAUTZcK7MJud8M9iTR5c86LnIua/uHTHX631DgsXuvzblO4RNRoGflYY9CySP4V3EFb0VuHWW+gL81Bs36U8cpOL4cMvnTiK9Xl2/kIzh8Jv2olUDKgCH1b1djIVPvSJpMGa2CaDFqhbNQmZTpdGUoo3u2+Sbx5MTveVC4hr8LWbMHQU84y7OqLwM5bkJEdVHKE0g3IrLQhlhkInJ6DKDWXzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m/TG8szVyZJ1iB5/SFN6gHRNlO+6LZD+HVG+lg9ycQI=;
 b=hPM+5jksifrSO1tRxx4WA+TBe8sF3e2GHA442cF7d67QJ4CNA7wKUSwFQv9vHI5SqhZ5mKU0dbGsymSMMAhg5vKGK1I3qKcpV4WxPz9mhPKTnBcZK1QafJ6e7Crsp+dDz3oGDqy+NxeHzHKlq44gc7Ffo8+rYlsMAK/kY6+5OoLp04BlEy5Inn/TJqnwKmIgHxPGFy1wWtFbNn+gaw3bXHp3mpJrqUBSXBohKiVXs3JeSnKMkHWphTPj/vX526HuCZn2MC9jdk6wfVx4sy2Bf/P26R95HjhSb2fEVUR4K+lJq4lj3QQcrshjKxuZ0ywjg91Xe26JrcZDia0eXiDttA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:12 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 28/34] drm/xe/kunit: Add display test config
Date: Wed, 1 Jul 2026 18:31:57 +0300
Message-ID: <20260701153204.4124150-29-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 4ba3ab1b-f955-4336-1861-08ded7860fe0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: gVo+YXhfXDysK3N9K1JJI6yyxp4LpmGSaQ2HuDc4/Go5hbeUm7VqnLBmdKFuReFF31wRbWsy5PPvlsYbbOy5KTtik1GNunxLz2nVW9Zth8Os6k1ZdOttizXQ8Dngg8VJkJwZ5M47DiH5BWC6eDdtgzfAo+GQwgC+9EGxdlGEMbEcPX+G5Gp/aqfuet0Z8Vuk7PXxeFC8WY5GHG9RwuyKSHE/YC57LW/4Q2VZ6SRiZtPSsxe+rPSAf+0zvBW6b8dpqsux3goL7dTs5bMIhOLpf6R4pzHmAwcZDebvZ4bT2hLP/PuRxGdu6O4lI2cNRd8sDRjXJPCB1c+xrPS3ZNTJ+zlvlm5j2GZAMgwMkxqEaMDj96pXiYntcSxfqo5ASSmghRndaclVX2j62BzMOYDNii/N9vpGeUJ13BD10cJsz9ttsoqveVwxqfGqZUXBG56zfy+oec7jOwYwAFIevbebtc998vi2jb0MgT0ba47TJ63Q6azZW7wBMDBpQCy6vSIfQR3Wtht7qdqE+TuuRAjZbEIgOY4m82XJwhbtUussP2GfQKx7LjOSGsiK+omGSAFTj2Sd2gALza9DeULzGrPOhTMtwvAGP99yxys5eiyPCkqYskzrQHXz93DyLe0o1gJ4DcoccCjurIHkJLDvLZ7odVpjjdEqRl4JCoHQmcs4WVY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XG8p1ItvBhhbKOKIAkepKGGUvm00GYP3YJwZKxPqfl62mynC2oHRvqIfZ7YR?=
 =?us-ascii?Q?Sw7DXmLEfcb41uLlbu8ejWf743lXBlwrNNmjGG2GjMWhW+5QqS79bElH8zya?=
 =?us-ascii?Q?pDWGJIGeSFwFxUf9qBrBw5MRHwcvkWBe6EhLKxqlRqxqPs+p4GbfIu8PpzAD?=
 =?us-ascii?Q?nbji6oly3lL8hQ+pwBe4zeX0aDlj25AWvJxtaV5tZVw3qwmotPSapPt+vgWY?=
 =?us-ascii?Q?foKYv2MrWRDi6EyBQazEKbduVFl7D5NfGDnVkSf7Iu3Qqh0sgLDwO/OWmJy/?=
 =?us-ascii?Q?gM7b/Q2UPPcmc1KMoy3qqYqRJd1Uhu2X0hMyUXJqEkf4UiItDEl4cQrcDD4r?=
 =?us-ascii?Q?MxY9slpXklJbsOtQTdgHyozuHyMdLRigM2bvYw+bdiIFNp4y5IAk98LUnC7+?=
 =?us-ascii?Q?p5/W38k0NByrN6TQVDYzshtzvzOPs7bTyoCJWsw3rrmYQS7f6A6BJSPyXPvq?=
 =?us-ascii?Q?AwExtYYzv3D9AQ42whi8UVhzLP486+V9J3JNJ4FK1Gpt2/Klzl4E7S945IwI?=
 =?us-ascii?Q?2jfo80xALqQxpa7l05uGzTa0a0IZMeyhetXq5bT5zEOWf/I9VAmbFONQjEI1?=
 =?us-ascii?Q?tftumAO4/G/If5QtMd4UX0k3QooG6cmded2xG+ghPFZhyOnI3hQr7FcpY1gn?=
 =?us-ascii?Q?6R089ERofOlePFCbEn6ofQsR2fOhT6eP4wDb9kbxfGErWd7yGe53YardrqO2?=
 =?us-ascii?Q?r7LQKU7xU7uZRukegHF/Fb5orQgReeF8CxjV2CESBCDHu+98XIQuY4E6MFbE?=
 =?us-ascii?Q?oeQuDgP3ltKA6QCvt/QH1lOEBnqgzzFKAw8QiizRT1ujZyARRkVed+2BpoAQ?=
 =?us-ascii?Q?lDGSi6uryNRPaZZHJ2/r/9RFNCfYNFdLvScBZJu6M3sjhYaqTwzNwFqVQD+z?=
 =?us-ascii?Q?ge/nW6kLwmCuCxlr2A17r2vo1Ng6SrKZUYLUM+wJnQIacsUa/fF0ZRPjhSdA?=
 =?us-ascii?Q?UI3avr7xkapsd2VqGehn+d6Nv1iF/pQ/KD9/3FPzWYEnwNU9RVu9HClz7xhv?=
 =?us-ascii?Q?IybbpAmrREeaDvGgGAnCoqk3dBO9VRpI24OgdkM9DcdHcI7HMiqoRw3UUCDk?=
 =?us-ascii?Q?YL+jTsW5ODKKbKgfyPlUGN25Vjag3KvkisxtLNYvS6gpig23D3G963V1i51g?=
 =?us-ascii?Q?wPSS+OB3HUZIyuoy2UCake7vfpUMXXYH/2M0fWxjI9kXCeh0vbLJ4rVzngA2?=
 =?us-ascii?Q?Sxeh0xivy7l0qcO+HN4JBdxBI4JrJkh4nR3U4Hw8KGgdf051k0Ept3xImYGR?=
 =?us-ascii?Q?XuurABouqAjxLP43VG73A8PNkB00ose0QWh+IdT9sWMwNnagIda1ebtS6Ww7?=
 =?us-ascii?Q?TZp3UFGdoTyiltMoyiD6IXEZDitwN5sC0HzoYqnSGNmzwfC5LKJq1tUqGFro?=
 =?us-ascii?Q?ZvFADyEJaK54L5AorElM0dBd4pAQronwXD7Ctc4aN71/avYXtrwnS+88SCI4?=
 =?us-ascii?Q?4pN0FePCaY9/F6hPiSTtj4q6kw/s09zKDi6DNeW24766H9pz7tSIHYvqqJvk?=
 =?us-ascii?Q?SdotctdvCO3aexPwCmTOvXLCCeQRmnHSsfOFw0ZJdknM8nJDczqtP07/ES/s?=
 =?us-ascii?Q?dILiKvv0lx10OAZY10F5LeLCPBtHyrVpB9k4qTNxzh4+5kGJqRinE0WVtwD3?=
 =?us-ascii?Q?41csWOX6BlF5i6gG7K45HR0kROplBLk9WJIfqjAVacdkGW2ypJRdz2yuxfd6?=
 =?us-ascii?Q?xE+Ann38GPt9gOyMujdxrSJkcn42NpsaipSgUlL07pF4aJ/7vOWj7oMKq4dr?=
 =?us-ascii?Q?japoRT+8AQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: aTWS0CryH1Y81BEdVnLOXu4DLJyXCNIehCifP7lSK9WjIVfYYnSqlbCmystE0MTrmFU5gmqTZx5+OBPhmmtbHE1rq5OKCLOIETbQSFmmiRy0IlvteWwPZy9JHwMrx4jHR4WLUHed8VR0JeveFCdnh6uWl68jVDwSxsOzp7I5prgwnMSzzJitJalZ7O4NrsqeseHdoyPgZPA+mbdxZEpNgyyAGyFxx/lCj1MwfWcXpqHuEjFHpxVRwfmu3IUZEnjSaky+EMEG1Erv6gK9y07E4JB9AfTpKaJxph2O7tYqD6XjKNP7ZpreAZpSfajw9Q4735eMpF/6PV8uC9JdS1yNFw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ba3ab1b-f955-4336-1861-08ded7860fe0
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:12.7138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rf30OJgWmGtuoXA2e4+sItfnv4HTkBMbsQ64jZ3iFHoOUyCN59F433oM3ELkUeY9nJZ+SC7eOA9Kha3b8NTi5g==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 08D546EF4B6

Add a separate xe KUnit config for display tests.

The existing xe .kunitconfig builds xe statically, which is suitable for
non-display xe tests. The display code can only be enabled for xe when
xe is built as a module, so add a separate display config with DRM_XE=m
and DRM_XE_DISPLAY=y.

This can be folded back into the main xe KUnit config once the display
code becomes a separate module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/xe/.gitignore           |  1 +
 drivers/gpu/drm/xe/.kunitconfig-display | 11 +++++++++++
 2 files changed, 12 insertions(+)
 create mode 100644 drivers/gpu/drm/xe/.kunitconfig-display

diff --git a/drivers/gpu/drm/xe/.gitignore b/drivers/gpu/drm/xe/.gitignore
index 8778bf132674d..6dad8a5a21355 100644
--- a/drivers/gpu/drm/xe/.gitignore
+++ b/drivers/gpu/drm/xe/.gitignore
@@ -2,3 +2,4 @@
 *.hdrtest
 /generated
 /xe_gen_wa_oob
+!.kunitconfig-display
diff --git a/drivers/gpu/drm/xe/.kunitconfig-display b/drivers/gpu/drm/xe/.kunitconfig-display
new file mode 100644
index 0000000000000..17020aa4ded3a
--- /dev/null
+++ b/drivers/gpu/drm/xe/.kunitconfig-display
@@ -0,0 +1,11 @@
+CONFIG_EXPERT=y
+CONFIG_MODULES=y
+CONFIG_KUNIT=y
+CONFIG_PCI=y
+CONFIG_DEBUG_FS=y
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_MAGIC_SYSRQ=y
+CONFIG_DRM=m
+CONFIG_DRM_XE=m
+CONFIG_DRM_XE_DISPLAY=y
+CONFIG_DRM_XE_KUNIT_TEST=m
-- 
2.49.1

