Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c+LZOSgzRWpS8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 961B56EF467
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=klgutX2Y;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF36C10EB86;
	Wed,  1 Jul 2026 15:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A904F10ED7B;
 Wed,  1 Jul 2026 15:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919973; x=1814455973;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Ujli1T+xmBR6hZ0/w9x2k8VcRcCCGhcHhJ5tpbNIhDs=;
 b=klgutX2YeLTDIrZchZBQgDFOQieS6UTBeuyFv3VD6vjRE39zaSKWXVfx
 DjiFLSy3ITGeWNZ5NTS+eD3AhF1ccqgj9sQ4NPwCwijs7GcI1c7yyvKNP
 kruAirFPqkF1KrocHqTFW+5XdFbe5eVnmgZhQqMzkz/JicN1x+VuQdsnG
 teGNLkJGtzLLZHEtpDF98mO0kwcQsEHkTPy2wJcE7bE+kY4spoIdDSq1I
 9Ok0EVrQzNob7HhRj0G+WaPsW7uiWs6yArEfQ+wRzrQz//LY4JOI77MGA
 afBGwp5DEI+IVgBLtlQcWNESSZzitDLzf4RTm+5mY/1r/1L9Lrq6+jrzS A==;
X-CSE-ConnectionGUID: Ee3Ww+vESViwX8buCGqP1Q==
X-CSE-MsgGUID: fWPAE8lwThO5+U3U38neSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95040356"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95040356"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:52 -0700
X-CSE-ConnectionGUID: tyQWNCA3Th+AUsLklwFZ+A==
X-CSE-MsgGUID: 0r49UqmuQZOxdMBcgiiGYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="250880953"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:51 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:51 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.70) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rCDak9P8jWcVO4LMTs4iBLptMhoka2DS16NzN9VNgnaD083THGUMNDc9G/otcMaK9qXzAjQqbEhvM3eBjoF+ZOC6cS1WqgIIyi5hOBqTs+NmT+LeB/3wA6ZqVgUqSWaZiQVkomRgDb+0HEfDPfqUBnQF4xUBvTRZ46NozoowxYIiQBe+XuQFDthfylBhpIgHS1wj6L2QZXlajv62Sq5bhU/uCp2paU82gyuztRi9Vnjfpljb4soMFeEeI9DNbOrsY/YJBJFQKOKtTOQbIi/FfG4nf+ii3Wh5eit2MvT7GSH4E7aISaW+sLUZIye2+sFFPh8iUj3XqTU/hIZviyL1kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V5MRyw5AdEw6TyjRsnMQIC1x/4dfagDuVVgHcohUD/Y=;
 b=jKtxoMEuBrsdMB6jzAWgUqVcbDyhFvPltKuiksEiSc0DbD5cW/s0qZ+6Z5AVJWQmxBnULjWzZLe52nNVu2eYvszeVjrsTlutt8IbuF13ICBxBkaGSGyvkP5VfIji11Lw67Cy+Aee/mP5xueXcCVWhqzufXqKrKeIkvVqtLOimpWyP8+ESliVQqKbPH6C7V2W6h4OASCZ46ysKDPj7ZwspdMFsnHz4n+U3Q+pi4QSAV66iwEi0T9xUilePU2aw9ncjor5Rqn68FCrQjKeMh15X/c+/cL07nOqMDqze9EmuVGuLRl3mJyNeTWPEOK0T3I1YiD5NA3xrFxBGiblaW8jtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:49 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:49 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 10/34] drm/i915/dp_link_caps: Drop noupdate postfix from
 max link limit set helpers
Date: Wed, 1 Jul 2026 18:31:39 +0300
Message-ID: <20260701153204.4124150-11-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MN2PR11MB4598:EE_
X-MS-Office365-Filtering-Correlation-Id: da2d8c85-f9ea-458d-0d98-08ded7860219
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: brHsnhmKG7quRwjZq1jzY7R7KyzncZjNB5caFJwoJ47az/0MhpDYHPcUzA9VHDLMUHikV5d9BV1c+9Vc2Fi4lgAeqvZ4DZAODyImQ1dEuJoZn39mWMq+Ajpy/DcFLasxk7+S1d76TJyZ+rgGQe+tfNIN7PcDyEI1h5sjrroLqVSq3Y36HYMQLqXR5U1hj3co+76j3bA6Edb+q83fgj1FIlzokl0cqeUnXkPNsM7V3b/BYxi1y4ZXVK3q76qfobsN+lVqg119jUwWPRVIAoEdG3atXZX5pBPLTo3bdF36uWSMnIGaaNCjbI0HfZFu4J68POvnvIwugOOrsZ+agbijG94ok0w7ukkzN2yZHxrQYu5E1oO5c/vZmzg/V+jwXZpAHoNKjqJpgBibm4YHZwCiPra6YUNaV31Kn7uYbUwFR1lvM6Tkd7UjQWuWE4pjyZia7Uwd7G3x60C0ECc1/HA7sLff6dYN2MxVMAGVDLmbmd/t7G7FKzKBvwCG0Zpsn2JLOS00rJOHW+zei7JImxq/B/I83qNyHw0rrBQwq6DHHgnt2mCkaxA4uzzsYE0S7ldoQEXptIhiGJtKotfOgPJENTVW5Xy8VcigJRCyaz+bi1fHDFbtfAOzl0Vg+XO+fOZN/kJ04Vm7viKq5jPYpP2n6GFhzbLEHhXeCyr1FToTTsk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Qqu3NH3RmJxbZGFEMwLcFvwYJDw2H6/CBeJt3+p2vffmYz/nD9UtnlrT8S4D?=
 =?us-ascii?Q?dX3ZSyErx/mlF5JsdKqB1x7FIGx38Ld7YbwRbjcP8SKpLaroYMc3KbCdODXR?=
 =?us-ascii?Q?ELdzqI1L5AIJRzLIxTJYXrL0/cUJWUzZRy1qW5C4xcLCffKxPtmZ0EtV4+do?=
 =?us-ascii?Q?WBU6//okD8Sc0AHagMh+g+lA6Jhm8YUTvlDSzLjTcgO9/Rqh0Bj0nKugXuB1?=
 =?us-ascii?Q?xxqxZZjSU2t5BLPgRcREnv6GEoBm4MUqghv6esUIq4wgGYzDgsd+ocG9F0Fd?=
 =?us-ascii?Q?tw0l5gMCIYwQHAKMFVV9CK8+G4DbyE+1o4B49j66XeGjubAXobhY0MIsGj0n?=
 =?us-ascii?Q?6Co7ap/1zfoQPxWBwnvQMUAlW246F0uMet0GwLUzakS0g//tF3DqqIoLiwCj?=
 =?us-ascii?Q?qjgdzCXRpENIyHVuqy/jIxfoCcoAIqzWvsIZuMSZWDaEWAvoDZZn1GG8hAT4?=
 =?us-ascii?Q?fBVGSGFVC1+mQ7RXwFfTfOrlAuOvy3mgsb2DP4sc9SGh0kEMjv+kbYDSVJgg?=
 =?us-ascii?Q?9GEmf5lJqZGwHTtYgMlsxb67w4kICSTAuCSz+z/jPL4WwvEP144F8tHJBSnq?=
 =?us-ascii?Q?g+MllRErM1jfxvivQR5VDesjMlOFsZcSs4+WYd0wcVCJgY6ITYMsrDMcB75U?=
 =?us-ascii?Q?oo4ebtez6XE+3jtL0U0rLKmuVKr1RPTs5ytiLn6QFpNe0cD7ja+X887osCha?=
 =?us-ascii?Q?r5xiKAsGkbUD6m1jrtJVIHiO0Oueo+KR8qVjqExm278iLLoAuGCEmPx+tbyI?=
 =?us-ascii?Q?LmnTeu+61ff7mpOtnAGTYMmLkCOTQktiNBv4R+VIxqHMmE4Zu0oeF18xcbqq?=
 =?us-ascii?Q?iOH4+SKygA1CnmOTtimsQS6TEDgIFw7WfuTufCWYpB9Gyz4vP5zsEtfC2HKo?=
 =?us-ascii?Q?Ueud/sCslvQcM33Z8c9AJ6tgazC0MxOOiRRqzparG8Bz1o5YOInUI3bUq4fi?=
 =?us-ascii?Q?h8AbEyukW520CUDinPjSlY+Klwyey590W2RVFaa91xxl73GG1/EZIjeJTyRH?=
 =?us-ascii?Q?yBSPzOjl0riX2Ss6eWk0n1I6GCJ6M3LlhYoPZjPFxrzl5C6Mbmj9sMiFXiIR?=
 =?us-ascii?Q?cqIaBmEt5mBqMsyLh4Y5tt0mf/hccDJd3Eg4D8olgIavjdY09KpPGAY2F+Id?=
 =?us-ascii?Q?XVk8Madp4qrolVXPjzsNhUto1l+AUKEM916Any7hMBTWT4LQHfxrBgZhvGZQ?=
 =?us-ascii?Q?ebiiMacRMwuBvqUe1OsgUw7fBqCvvCHx13vVnZ/uvqnzMuchSaFuorUtgnuc?=
 =?us-ascii?Q?zBGgGkEBFougcTTxjyPa2kH7LMCPotOqk6y8eSL0Hmra+8mpLnEmJaQR+IFE?=
 =?us-ascii?Q?BGth9x85vqaMLma6sYff7A+tq7FhSZO+LiaZFbduNQDIWzDzP3/2isD03+LE?=
 =?us-ascii?Q?tKTLAbTK+8w5gXG04CE9yqFaeTcM1MZoIl+qWv0uY4yfCtX7WHePc9KL1Opf?=
 =?us-ascii?Q?x1SEO5mc7ECdJYRMyxq2Mhp70/OQpRqOu6D0aq/PJVa/Xe1kUShR9RWGIVWE?=
 =?us-ascii?Q?x1+R270JCQy4qAVL31j8jADCL/b73cAonRnO5O+SblC5kpb/gjnkdqczlxmv?=
 =?us-ascii?Q?3Z0XGnhVDo51A8qvG5/W3i9rJOLg2iaWrWY7ogbC56IjONhfByBuxIw6aC2d?=
 =?us-ascii?Q?R6cBwY5Go89QAQQP6ec1KEEqdW2P95sezsriVTwPQv6whMcAQsiqOYEACKvA?=
 =?us-ascii?Q?GROe6jWhfa6DTCTvIkPfaNUp/AoUaEnx9MzybaJ8e7n1w7ADmQvg515Yoe3Z?=
 =?us-ascii?Q?s3nRjmQFJg=3D=3D?=
X-Exchange-RoutingPolicyChecked: Kw8KrGC5lHy3Ylnr5bTXQILh6aUhK0LobK3UDB/A9W0zun2RiyeDXwpNuzWvfgBxMMjSv/G4ShZwBBtSrjlMSfbyy1dxCgV28FL7uIbadqWoMsGF2fHNmdu2qs79pUXef3KTHZ91ZDanmmiWsusjlwdyimV2451WqZ9Vx2PWzsBxYlOu9qHuI26Yyj4OnYDp7QBhZLd6AAcc02Q7SysghwPyDWK9R/OPnzL6QKlUpR6QeoCTI8eRpaa7ybySnV5UL5p7RPvg/etdy9qvaB20l8Pvbtjab4dGazl0FnbjBdgY8DLP6t2Uf1AyfqngX6kx7iQKj/bbivD9NPj9FzHlBw==
X-MS-Exchange-CrossTenant-Network-Message-Id: da2d8c85-f9ea-458d-0d98-08ded7860219
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:49.5973 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NGpBXyae/EHoBzxVa/kvVELme6jPsDVpzd/+sdWdTqaCxzHYB7/CRDxGRYqthQNmonB1pcUvgA/hVUdxSSqYyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4598
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
X-Rspamd-Queue-Id: 961B56EF467

There is no need to update any maximum link information when updating
the max link limits, so drop the related noupdate postfix from the
helpers setting the max link limits.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index de520bd423d59..3ef678d47c71b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -545,26 +545,26 @@ bool intel_dp_link_caps_filter_add(struct intel_dp_link_caps *link_caps,
 	return true;
 }
 
-static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
-					  const struct intel_dp_link_config *max_link_limits)
+static void set_max_link_limits(struct intel_dp_link_caps *link_caps,
+				const struct intel_dp_link_config *max_link_limits)
 {
 	link_caps->max_limits = *max_link_limits;
 }
 
-static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps)
+static void reset_max_link_limits(struct intel_dp_link_caps *link_caps)
 {
 	struct intel_dp_link_config max_link_limits = {
 		.rate = intel_dp_max_common_rate(link_caps),
 		.lane_count = intel_dp_link_caps_max_common_lane_count(link_caps),
 	};
 
-	set_max_link_limits_no_update(link_caps, &max_link_limits);
+	set_max_link_limits(link_caps, &max_link_limits);
 }
 
 static void reset_max_link_limits_reenable_all(struct intel_dp_link_caps *link_caps)
 {
 	link_caps->enabled_configs = INTEL_DP_LINK_CAPS_FILTER_ALL;
-	reset_max_link_limits_no_update(link_caps);
+	reset_max_link_limits(link_caps);
 }
 
 /**
@@ -640,7 +640,7 @@ bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 	if (!max_link_limits_valid(link_caps, max_link_limits))
 		return false;
 
-	set_max_link_limits_no_update(link_caps, max_link_limits);
+	set_max_link_limits(link_caps, max_link_limits);
 
 	return true;
 }
@@ -654,7 +654,7 @@ bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
  */
 void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 {
-	reset_max_link_limits_no_update(link_caps);
+	reset_max_link_limits(link_caps);
 }
 
 static int intel_dp_link_config_bw(struct intel_dp_link_caps *link_caps,
@@ -860,7 +860,6 @@ int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
  */
 void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps)
 {
-	/* TODO: Update the maximum link information. */
 	reset_max_link_limits_reenable_all(link_caps);
 }
 
-- 
2.49.1

