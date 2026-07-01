Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LaEFIiYzRWpP8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E866EF45E
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="OW0O0/yO";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907C710ED2A;
	Wed,  1 Jul 2026 15:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7412A10EA40;
 Wed,  1 Jul 2026 15:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919968; x=1814455968;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=T0Hq4t6qwZxvumDxRob6Y9JJ7IPixtlj0RhmDJJWa3c=;
 b=OW0O0/yOTadPlNiAuINyNwhtRM85PSJhaNOtQykyjs7xLpQIuqWfosq7
 UYC/Ud2qk+LBqZ6REm+Sng9caYZQvA/dAaLthmM59iWMTr6i6l7PSULcZ
 C3bIKrY+kH8whbV4gIv6HYSRCTlBV0Zmu6YeAOC0516OuuGHbLsRXePVq
 5BcBJBzpZ+etooBVPT6+O3i0NDSLXyjs1WEkFK3m/2rGNPkNljGzECflf
 6OR4yb+eo0WJQ/cyz3emKE6FxmlFJKb3lICdjIkfB/Y3RTO3ZHNIprTVc
 WLjdrJDQGuDVxK2rxsFAZp9pMwsIvMmVDF9NAQYCBYxfMvlcXP2+6uY+9 g==;
X-CSE-ConnectionGUID: rYTKMUPBR0SAUiuCNKpReg==
X-CSE-MsgGUID: Ze1AT4XZSbOtNu/U8vckxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310054"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310054"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:47 -0700
X-CSE-ConnectionGUID: ALTu7YqqRxaZSi2xQVcJ/g==
X-CSE-MsgGUID: e3aA0ORWQ8Ss+18lgNcmOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515574"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:46 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.38) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q+j8KLFwm+0z/dV0+IQQ96WdTYRKwLjBO678NifJZ8fLXH6I+1s0sIKkaLlPrgoa71H7th6f6AcGItYl/Z42Wz+sl28Hd7EHvV5xAd24mOhK8AgN3mJxATK3lpdDKL93LmY5XuYasS7pnISdDYCl0HbwM7/pBji8k73g4RqopClrnyl+LBeNiaWVlihAUu7OxJQ2AZTJDQDrvrD/VUNoksgwLRCzhXyeR0Rz0rdeoYXmOylDPET/6zqJUBSjypdkiTJOTByjPN9zlO/g2DPu0QtVU7N0Lz/2Fcp97pb7EyYIDyKAJ5LYaeALoWMH/JduOOTdUfg1HWL06zxLZD+P+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hvyLAq6T7M7OpsJtUa0lx7LQhgsmewNiHG/QcVlMohI=;
 b=cPx6BKSwTUoPVHzOp3lJYJE/KEFqXlu7P7vk5VWLE69tRt4fkjy4LzPNLlv7XYfFlNCFoHHh+XunXPUUMtEqoDyEOcIBAyJUymEO5/4kk3FQMZSEdYnfDoeJy/xRMMR4MVbSAugzED0rLeTGHP7U7BLSUi0C/utXpjJ+8Qf2zNGl96uiZJ9MCZnikcY4qK4e8XRLdQ8EUXQ9ep1LFy+H0wZt6fi23J1pQJgOXOserad3OOQ7I4PdVfLdDVq8SIhhAdLtRZAyC1TXZ+ubPLkuyBZt2MYsDNJV6+bBiA1ZXGU87pr1YOekn0eXgxjbp35eZgm5pkAS46A2fReWRgxQ3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:40 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:40 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 03/34] drm/i915/dp_link_caps: Add support for link rate,
 lane count iteration orders
Date: Wed, 1 Jul 2026 18:31:32 +0300
Message-ID: <20260701153204.4124150-4-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MW3PR11MB4699:EE_
X-MS-Office365-Filtering-Correlation-Id: 289a7c6a-ebf7-43ce-80cd-08ded785fcac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|11063799006|56012099006|6133799003|3023799007|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: fZeOKbqBW+JlyEWmBge+BuIX9xxB/MuYSmOoVnJ6rIvtYNhs3d3MyHcllwPCBZLNSg8+7Jd4BhF81C9GxN1BIXTCgmRynXukaJNMERflYGq3Y6lw36v28307R9Y2L8afP18dCJeqCoAG8Fqt5RG5bMocVYlHBd39phwDqOuiF1R4ccqMi25Av4B+ru6f6/Cziq4+HRPmzhnv7WtsvRJAKG2nvurG2l3cRS9nDnJwaO36RuS5V4hc2zHjVSqCdxW1p/0e7I9A4Lk6LPKdkgP6Ju4+8YZsCjq29Pb0gTjzonocN2zbWOxSgNG1y+trSooNuy+o3ZAyWNGySqht/EOHrzB5bH9lM0npK+ZMgw8I1zasPmBbQUNCUl4zdrwrLGfa3+J5KsdN4wp1UBczfdrvjkeFaM0kYiPcWLToJL/nQ5ESewCYEmm1UZD0d1stg6DzihFuJmr0us9v9aTR6nwQbQa4Wj9QlfES/QpqEpDNg2zAtRETZaq76kA6qci2ZnfZ7Egr8EjxTppP7iYjbdYRhS+HskiUGtUJIOJDBijw4v98vwxmQ4MFqtn6tTtTc1ipzH0DQido2V4m0cQ/tVewLu9SRf4UyuPgd+LXBP5V4vhom0Xoaur/z62X1Jkb4svwYBp/qAFPVbF/qhun3FeeDDVyEr8ZHXPUAHauXlF9gdw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(11063799006)(56012099006)(6133799003)(3023799007)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?frr5ngwGr0Xx3w2MMpzwrCeds3kXVsljuGk/gXJDftNZO/4KtqqQzSWnClae?=
 =?us-ascii?Q?Tun87pf6VhZdF/hMWLd53PK3oqJ3iMezJIidsqYjc4thBxHXeOP1ik4Irt7/?=
 =?us-ascii?Q?wqfWB3lAtxTFHvk7qlKabuYkiwqGllk+8bh9CtP3ElqMNaQeoXwRH06xL27S?=
 =?us-ascii?Q?pHl9kjCvGNZuV9UsrfcTwYE83gPOWZN+U5PGGdDDiJU3a5xB8D6n8YomlzZT?=
 =?us-ascii?Q?wGZ30CvXVJqcHHf5CY3CElwIBFL9XPKS9Lx8hNu3zbJm19ZYwzLkATdSjeIp?=
 =?us-ascii?Q?V6+26m8SjGfHhS3RJV30YhcmBppzBqXyEeDN09+yGbIJbTs+gF1gKP6v9Rbd?=
 =?us-ascii?Q?hVTc7JTYJ6FquZVcCfwb+bePZnkUiHFearhpUWJJ4HkzKmpwCKDu1Uc8FKTC?=
 =?us-ascii?Q?NG1GS1nrXueID70FmIqoSP8fsP/hKmpgrr/BvxNdUEuq1B8FU1QIl/lk4i6c?=
 =?us-ascii?Q?et8LEIAk6GxgdiVhjgvOuqh8k7/NKo4ppMTbyghJsJ3icTyHJrnsjUtSWCzb?=
 =?us-ascii?Q?HChWI6NNHz/ryqdV248ns5H7tnpbJSbzJfitoV3hXXwMDZayXoBO1MGNIpuW?=
 =?us-ascii?Q?W/O9R5BgSD+Pgm7/rLVIgAJ4sGl8c4t2H/8teclyE+3724IUrvem9kElF30k?=
 =?us-ascii?Q?r1ibUXtWCp2rWWajYUMi1MTZFyKSf64JRay+pmHtmYMRdst5WwkWcuoxUyIO?=
 =?us-ascii?Q?78w9Vh3jtS+Krn+uCn8cs+/BLAuj49ua0DussUnTP5CnzsfE3vI8NBP4nG5u?=
 =?us-ascii?Q?8nMvG3qydf/z5M7csSR2RYu3VnGZ9dKteBYpuMI4Sm/OjeCiGCzOL8ZymoES?=
 =?us-ascii?Q?/ErXn4BNrxUPPnoiUkexlKtAUqd8UA11yM9fBolrUdTU8BWy+1BXGIbf5DCd?=
 =?us-ascii?Q?77Ec282qKOK/9jnqfYFr+Me41hQoWapdd9fgWGcIvX1Ni2cmC3BMvf6BX15l?=
 =?us-ascii?Q?ewqMHHcSoOe7lHerqgxMDx5tnPgRJVdfVmQLHjRtUu9VimzSeL0mitWuiNKE?=
 =?us-ascii?Q?B3pzKoh9wDC9WTjtoK0SHOMzCO12jJyd1t9Esr/DjyXatF+ShhXLUGOo+lEO?=
 =?us-ascii?Q?nXkjXIpIroGKbdAoK/InB1tnqf7PwDGycGSCeW/W9siNWX59wB7779vxMd70?=
 =?us-ascii?Q?m9LJqwNgEv/svRKZdzKD0+0X3Ee06hYHFFCKdBU7khY2GgG6kDhslAAU7bq4?=
 =?us-ascii?Q?AyiSjiFB117z6FY2dbCYdCVH0qys+Ad0JSoRVscpXnPC9elfSJXsibIQSaFd?=
 =?us-ascii?Q?fvsvSuiSc4Rr5H27glWDAv/3Dnksd/nFCrc8GOIaXMDsQWqB7tl+4y9lSmEl?=
 =?us-ascii?Q?TT9BrKpDl+SMdtpcIsOGnoOyEmsgAKz0ijbT2rsIlRzyNTvyrLgNiFa58YO8?=
 =?us-ascii?Q?hCZhUDDutrOx02CnibwRMaCoYXCDbIWWLPCA3AMW1r4fwRsath9uOaoHnWgg?=
 =?us-ascii?Q?ro9qZefJhpw4ExrXDFXKYi/Y3vOJovFRDDkC2KV6shRYXD1ymXW+7nIBC+OF?=
 =?us-ascii?Q?YN650tEfcj7Z4j+Yf0cUZYhFiBur+ZBllrlt4Y/dL566vixI7a5OplZF7TVR?=
 =?us-ascii?Q?5n94p/0zBP74aVSMW2JliFAIdJfsTewUHhFNb2EwI5wGkZivf1rSB+Rp/tUO?=
 =?us-ascii?Q?iVPnn+SAo0RkQhl0R3h1RgO93HEWyMpyvxyGmSYXdC2bS8HPMnlLMpWYwjUz?=
 =?us-ascii?Q?5QKSrYF1pjhpMmPOlrMjupWhkdLCqO07+9RrWzommqmZBtVd8APiXmsOLjFc?=
 =?us-ascii?Q?ryWFNWlMZQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: sKCPUXG2dGnGEI+NnL3xfjsGe6LGuJAQKEZzXaL4L5bZq3iWdGkiVLOwfFAl5fetdhwgVcMx22WF8m1RfAXekeL9UjHqpRNNEBUXFhuEXEZqiXg5XnotKc6sfxBLImv0QPNnOrrt2L2R9YIUgq4G8XO9ppptGKJUtMNwitmdqBilunomc4sF9mr4vE26slKxEzCY8xeNcDVqOewXfCVOs76RNIMgUI1wA5YBZCD7fxqTP44j/aYDoG0ND9zpfHR+J/7KSGAIiS7p7wcjLVJB7l0SzKT13HpfjFGIyv1pVQx3qN2BOgNiDs35xzcJdj/QNBFb0jelec+R5yjr/B0RXw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 289a7c6a-ebf7-43ce-80cd-08ded785fcac
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:40.5247 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: roZBwQSeCj/2jLgO5/DCLrBMjsyhKtP/KJlsjzbM/WQ2cuOqfZZEzC7XZrsgRAIUWT0Ofs3NBfpErxgGGp6x4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 36E866EF45E

Add support for iterating configurations in either link rate/lane count
or lane count/link rate order. Both orders are required for DP SST
connector types: the former for computing the connector state during a
modeset, and the latter for selecting a fallback configuration after a
link training failure.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index d0a863b00b458..fe5a11efbe67b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -122,6 +122,13 @@ struct intel_dp_link_caps {
 		u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
 	} configs[INTEL_DP_MAX_LINK_CONFIGS];
 
+	/*
+	 * Indices to intel_dp_link_caps::configs[] in rate/lane count,
+	 * lane_count/rate order.
+	 */
+	u8 rate_lane_map[INTEL_DP_MAX_LINK_CONFIGS];
+	u8 lane_rate_map[INTEL_DP_MAX_LINK_CONFIGS];
+
 	/*
 	 * Forced parameters requested via debugfs. Remains set across sink
 	 * disconnects.
@@ -350,6 +357,34 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 	       intel_dp_link_config_rate(link_caps, lce_b);
 }
 
+static int link_config_cmp_by_rate_lane(const void *a, const void *b, const void *p)
+{
+	const struct intel_dp_link_caps *link_caps = p;
+	u8 *lce_a_idx = (u8 *)a;
+	u8 *lce_b_idx = (u8 *)b;
+	const struct intel_dp_link_config_entry *lce_a = &link_caps->configs[*lce_a_idx];
+	const struct intel_dp_link_config_entry *lce_b = &link_caps->configs[*lce_b_idx];
+
+	if (lce_a->link_rate_idx != lce_b->link_rate_idx)
+		return lce_a->link_rate_idx - lce_b->link_rate_idx;
+
+	return lce_a->lane_count_exp - lce_b->lane_count_exp;
+}
+
+static int link_config_cmp_by_lane_rate(const void *a, const void *b, const void *p)
+{
+	const struct intel_dp_link_caps *link_caps = p;
+	u8 *lce_a_idx = (u8 *)a;
+	u8 *lce_b_idx = (u8 *)b;
+	const struct intel_dp_link_config_entry *lce_a = &link_caps->configs[*lce_a_idx];
+	const struct intel_dp_link_config_entry *lce_b = &link_caps->configs[*lce_b_idx];
+
+	if (lce_a->lane_count_exp != lce_b->lane_count_exp)
+		return lce_a->lane_count_exp - lce_b->lane_count_exp;
+
+	return lce_a->link_rate_idx - lce_b->link_rate_idx;
+}
+
 /* Return %true if the supported link parameters have changed. */
 bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 			       const int *rates, int num_rates, int max_lane_count)
@@ -404,6 +439,21 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	       link_config_cmp_by_bw, NULL,
 	       intel_dp);
 
+	for (i = 0; i < link_caps->num_configs; i++) {
+		link_caps->rate_lane_map[i] = i;
+		link_caps->lane_rate_map[i] = i;
+	}
+
+	sort_r(link_caps->rate_lane_map, link_caps->num_configs,
+	       sizeof(link_caps->rate_lane_map[0]),
+	       link_config_cmp_by_rate_lane, NULL,
+	       link_caps);
+
+	sort_r(link_caps->lane_rate_map, link_caps->num_configs,
+	       sizeof(link_caps->lane_rate_map[0]),
+	       link_config_cmp_by_lane_rate, NULL,
+	       link_caps);
+
 	return link_params_changed;
 }
 
-- 
2.49.1

