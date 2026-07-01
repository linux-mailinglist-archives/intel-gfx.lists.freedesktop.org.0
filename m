Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LYQbLU8zRWpz8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C346EF4B8
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ma+Fm520;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C2510EFEB;
	Wed,  1 Jul 2026 15:33:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E491C10EFE7;
 Wed,  1 Jul 2026 15:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782920012; x=1814456012;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=/qfyI4Kkm/lE/R04j6CmOdwclocuPkxesZPWRrbXdo0=;
 b=ma+Fm520g7Cexha1kFNB0E6HtKlhzEFO9c9SI35dL3xbZMJTspwGxMFz
 9xgKt2DCgmYDR8OgrlEB5QBFU8yxLWzcJ/7fFxorj0BvLZPkUC28fI4eE
 g1TPQbuo05nPMKuGdIocyjHOXwZhkoOFu2sE2eE4kR7PdD/tSs5SgIUmO
 saVKZLvPyPi1LTxqhT2kfNEXcFPUhXFoIe9Rh0t94lbxyDXqwuMqkhb7X
 Ac/5T7CqEr/ocdeH/FQX2GDciJDhhJHDPUabDfupVPQrGR54EqJ/FUtmB
 WiZNpe7/AjZsdcrrNKQ5N2BENF9mZCl9dcqUVPHcGtNcatKHMdSjUMWY5 g==;
X-CSE-ConnectionGUID: uQX60bx1TEKche8DYJlLOQ==
X-CSE-MsgGUID: gNhhjfcmTUGHGODBFBAE8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95159282"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95159282"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:29 -0700
X-CSE-ConnectionGUID: 7hoJOkxLSoi9ti/6T3Eb4Q==
X-CSE-MsgGUID: 7pTwu1NURYWcMSuDp229+g==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:27 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.66) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XnVSbdawrYdeAXtUV5ZIRN0xKYwPYTRo4GfbFlvcC5dju4YvzqrJ7CmTGLNf39kjmD926aUAHYfVYP6y8rL621UaN4XTFW+Ti+hCV4JAXIL24cozzu5DYrDcblcsiIw2QqRF3SoaWJmHvxv3BzIQDTlq8JHlQ8O4omJOjbjOr2WRyZjy9ILkdwjwJHzhyf6914Z0r6GQVFd43ulbZaWdOxZKBkAzU7Y494mC/lRSISVUz/s4YHNATssElchnskt9bwo6D0EIjzl0DHas7DiURtN70WYIc3Ae5DsuMkK5ewiTEyIqZny3kyHteIKb+iqChKC/70NCMlYAKaXTKvxvUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OMPyR5EyRP8GpwHTQqpjoza0Tv44YggLJ3kOKOvWh7Q=;
 b=xapOyQmhwyae1LfvbQtHP3oiGmhQKo+/+0/gxZqM48hnaa6oDB0tTeNGNEf4HEn5ERx+NT8HHc8MRph7kjjmprmdipcPYC9FcFEUUo89JOXxsvrzwyg/y9gDi6wVxDgl2TVnUO8dMKYmzeaKImnuLLsrlgGNGtQbgXIIiFNAUk17Hmuk+kpYGgpGzjBopIu72MYR/PpAwA6/DyvqqurbMGFBfvtBiHuaqfSu2fdQB0CH/Pr+/e9cTuJPnAHq3yhV3778fcM3a3XO0SJiGN6SFXcak9UiMzZEdhhxV3SR1ufMbKqeJZUY9n9au3m4eNoA2fDm8bn9fIDFSJUmUZUWAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:20 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:20 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 29/34] drm/xe/kunit: Build DP link display tests
Date: Wed, 1 Jul 2026 18:31:58 +0300
Message-ID: <20260701153204.4124150-30-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 561cbc0b-2d31-4d46-28a3-08ded78610b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: qsPO+UL6ngaxG6oEMDQDem7FycP1gfAoLz1GOunoLak8uEfGolhkTZgvnlKGpwW1/LwemO7sXayA6rqWTC5szsiaF9WZMJCCWp86eI+z4oUyErGVOGu8EXxrjA/UdtDGM+MhvcM13vAuEsggIxp8W+Qw6MLnpOgYFgWbJJpZc4cqdLpMN0VnzzFdVhm4yuar/VXbie/ffn1WjuOAJSLCkM4tbH/77QekXCtg2R6srORuUWhdGqcgm/LuKhT1OOInHIZegfsMS/QU1hYYjGwbyWVdN7nQUUfB1cjJiQwjNFOVAm65iVF9FGRsq7hjFsknwbEHXtEM82QSTTHAgizqf/2+iKoQQauV0yfigBDvybS53UawNZ650nLzpFlLyeAgR3B6FSxtJpaHKlRbzKN9yQmKsHIanM3KgtK/SZoKkZOcGpRua06R4baNMCHTB+5pEr27VMYEd99ZX5tcOUt8l1+qKSY372vC45f0JpOWqQT5jzurH8Pco+4dgiqFrx2vyoK+/PkRJJfqPp9PeB/g6BZH/QEaMHIvwca4CWNsFlXXTVF3hrcEcmowc0p2Cs6PJYt4Lo1d1YeQXB5d3O6VpJdKxHnNRWjdTSGvernntT3Xc9xaXRqVi6owIRGPvl6IGixJeVjkt8UagT+b5vbJm61UBKnTUYzdcf8n+m5ZK8k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IozkqAmHWvVaNgQgu/Wj9Nlg7ThlbJ7ogxCQ4Ze4Z4Y/qg57PkKamQIUWcql?=
 =?us-ascii?Q?+/rrK69zvqLU0mjJprhDKPVjaULTTGzGECJGSsYy01j3MBqCEO5EmlXni/I4?=
 =?us-ascii?Q?QyZLzgSmncB/ddL1D+DImdMVaKP9BQQquQB25eNyO8u76LHsRjmTKBNEQzF4?=
 =?us-ascii?Q?haQUs7Nr6uHsDkrb7lmVQEHT7rui8xBSuwWLzHZilHJ27mvPmtKI6CMVRLmz?=
 =?us-ascii?Q?ZKLf9PPclPLv1gHiDF+j0A8XotKbyvkI+Vh22dU3l6sMFeNl+GczYLmWA3vn?=
 =?us-ascii?Q?937qCp++33Gx8l6WqK3j2Qzf+fiW9a3kuy6tYS8uTbwTxoxj9CgrlcEthCCq?=
 =?us-ascii?Q?SuLf85uMZXBv2adqkn0BSEpf7vSHsa+jy49iasPbQjVHMCAFawRgJvDr8yfC?=
 =?us-ascii?Q?+xv4kZDL8Cymtl5iSnwA2gbISHUu/hqfOc4VyM6u7mHIt68e3PY4PJzqHUAA?=
 =?us-ascii?Q?JmKUJsxJTvIulbpQcxee3Ux3FZNi1KO3C9u7iFxxual4247kpnueBJ7L8O0Q?=
 =?us-ascii?Q?aUdPPSlgn+F0VJH0gyv0T/aeiPF4Hk3QexOIQVIEMhZQeYKXOtmwGkj7bpZ+?=
 =?us-ascii?Q?XbPTnB5UZz/VoIvU6qWFCnZCHL5qv0rUj+yK5ljGY2w96UpkVYS2qo9sALXS?=
 =?us-ascii?Q?p/UXIgmEphClPkbxWrz+1XoubC0bZDKMA84d8638R1sDvqGV7E0g9/OA2i76?=
 =?us-ascii?Q?ekSOk/cpA0Kse90nv9QEpdFQIKGsReDUTvFy4BTkVI+wozVOEPIaXV47Pavy?=
 =?us-ascii?Q?vUiVgNWuR+zze3FE8t59gQyIjn9F5Y+W0NPODgJ6TrFF+a1enurYirAWdsNd?=
 =?us-ascii?Q?4szsDKgELDBZDsygis2FC1leB3xpbVw+sAqf6jt/ar4taRk/6M/yLzzru6IY?=
 =?us-ascii?Q?I+Q21z7LlWKadePasfGc0a2JRRuMhJAzbRTBxmDisYESONhoUbBgNTjkCoCo?=
 =?us-ascii?Q?W0lScGtujWztFiMP2QhTa76OJi4r0+8vegImomw2fKAaST0LSDKFaXws6ImL?=
 =?us-ascii?Q?VB084yvjsCpXDaqaGOeZ7fJ6nCNdlvxVv3UEU4PyGURifDwTNsp85YVI0j6p?=
 =?us-ascii?Q?GxMuMAY+upjgCierxeq7iG5z742UxpndaKL15K8W1aM2dAiPkAHeCSRIVw60?=
 =?us-ascii?Q?EzzOR6RIIFWWMC4GN2ksaAYfpP2BUODizKvKItnx6psJaIKdurTdu+f5YL4Q?=
 =?us-ascii?Q?WwM4cyRKVN87AO29CECuLgiYHIEJ41QQBpXnKCXgLxWj0BHpJuVvqsICa43E?=
 =?us-ascii?Q?KAyhOQ8SE7Rd2BP52B5/ngbAjZ4RI8p5f2h5De5J73YmzMA/j/LLgTn/IVgp?=
 =?us-ascii?Q?y/SiioiOm1HPxkporl2zjqRP1GlJz4hXQ9LZKelHaCcVeNCeqUmoCini3C+t?=
 =?us-ascii?Q?JiPLh6dcB16RE4ZcQVOkLeWmVWuuDaFPrGvZhBn7bEkFufT9ZGpt97ABQlnq?=
 =?us-ascii?Q?Cj7TnDlZdS+VN7jqZ2jgNXErc8/4vWcXkSBrJ4GeSjHorQ1/raCokNOSepjP?=
 =?us-ascii?Q?y7ge/JL0whh3FMpgC50OC7Qr6bm6bTnlx5bakaz8i/AhLzMwTyjFG71gnfnb?=
 =?us-ascii?Q?ao9DnIo2G9F7AzBQRTNQnbcMLXT7KfS0+u/+/d5opnesVmIPeCkKPaDE3fUQ?=
 =?us-ascii?Q?WO4r08EVsiJnxL5PUOXf3J+i1/2JQW5npe8UcddDFw2pA6nWR+mccv/weM0t?=
 =?us-ascii?Q?JvkNolDK6j2Py5TCmHkRk/9nmBCE2UeWIl8lNzheMpQfyn09SmWw6KDY+vWi?=
 =?us-ascii?Q?EAMedwya/A=3D=3D?=
X-Exchange-RoutingPolicyChecked: Fhiv3ue1GoH+kKV14HvKRvS6Zs+pdv2FOwvTa+rYWZqVIBmRibdNtPWsI6GTX1ytDM/tfnWnAqDN/Qm17E6i89g0Mon3Tz3waUvFUXSTPSg1RVkG59V/g2spJ2fG8KYcTsRGkqBhuGJT8lFq6hYURXV5klcyBeaHZOeUY2AQA/4y5au2BUdu1YSFa+bFTEmQuXiFH5kXkjyr+YOnguD1z724vop8aFo1oSSiCH2KTY01t7MCsKeBXfBy9joeuAENJfgQaPZFQw39ktQ5KqibvTdir1ncbkUjuvpNj0g4QyaVKVXmR2wFg7klhwnOqmQrrEhmpjSE6rQ3lJyy0yxUYQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 561cbc0b-2d31-4d46-28a3-08ded78610b4
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:14.0007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G4wK6o7+24MVYM8B2x+mHMx6ct5tPNJc4BzGQqwyPF44depgxqJj2CcvJtxPsXA43tZpYG3BcVcTLPv/ov6gKA==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 61C346EF4B8

Hook the shared i915 display DP link KUnit tests into the xe display
test build.

Build the shared display test source from the i915 display test directory
when xe display support is enabled.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/xe/Makefile               |  3 +++
 drivers/gpu/drm/xe/display/tests/Makefile | 11 +++++++++++
 2 files changed, 14 insertions(+)
 create mode 100644 drivers/gpu/drm/xe/display/tests/Makefile

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index e5a04253e73bf..3ff58186c7678 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -373,6 +373,9 @@ xe-$(CONFIG_DRM_XE_DP_TUNNEL) += \
 
 obj-$(CONFIG_DRM_XE) += xe.o
 obj-$(CONFIG_DRM_XE_KUNIT_TEST) += tests/
+ifeq ($(CONFIG_DRM_XE_DISPLAY),y)
+	obj-$(CONFIG_DRM_XE_KUNIT_TEST) += display/tests/
+endif
 
 # header test
 hdrtest_find_args := -not -path xe_rtp_helpers.h
diff --git a/drivers/gpu/drm/xe/display/tests/Makefile b/drivers/gpu/drm/xe/display/tests/Makefile
new file mode 100644
index 0000000000000..1a582febe17a6
--- /dev/null
+++ b/drivers/gpu/drm/xe/display/tests/Makefile
@@ -0,0 +1,11 @@
+subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
+	-I$(srctree)/drivers/gpu/drm/i915/display/
+
+# Rule to build display code shared with i915
+$(obj)/i915-display/tests/%.o: $(srctree)/drivers/gpu/drm/i915/display/tests/%.c FORCE
+	$(call cmd,force_checksrc)
+	$(call if_changed_rule,cc_o_c)
+
+obj-$(CONFIG_DRM_XE_KUNIT_TEST) += xe_display_test.o
+xe_display_test-y = \
+		i915-display/tests/intel_dp_link_test.o
-- 
2.49.1

