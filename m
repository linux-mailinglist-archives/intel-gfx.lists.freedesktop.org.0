Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UVv1BzQzRWpZ8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 829436EF486
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LLI2+Z7N;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E173810EF4A;
	Wed,  1 Jul 2026 15:33:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 893C710EE55;
 Wed,  1 Jul 2026 15:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919985; x=1814455985;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ZH+RG7nIuxa0TK+/Mw3vCwDHCNEnKDjyqKu12ZMRBis=;
 b=LLI2+Z7NAgjRDSTmP2qBalpowoGGMW3tdNc00PMrArwE2+vqO2WPcHcv
 zIxsGsUsUU2VAEuQqHkHqMYhb+5QiMpYSA5uwMFLevPL8kNnWZb00Kqmo
 0BkExLe/h41+QaBBtS9sBDJ4RQrr+/iyoIeMNjx9FTycsYOXRaGqbfJdN
 f5HPxrTXu6+z72CPn4WAZaBJCuUVzcrrRJkVnINUojC615dPxwE8Ss34t
 AlsVKnXaBvN6wqhKcggj1XwJsdNUkQ6AzCRqlGdJgM4LKhU5h39JA/Y9M
 jEWUJ463aF3p5Y/CgDTf632/rvyTFkc7Y30d+iz+WLVtc5mlf4TaiSdBo w==;
X-CSE-ConnectionGUID: 8J244DnGSLSxbuMPocT0sw==
X-CSE-MsgGUID: YiTzzpmQSyawo28VN3etSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95159220"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95159220"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:04 -0700
X-CSE-ConnectionGUID: QmQg3LWNShObDdSrsMbNVA==
X-CSE-MsgGUID: SB40ih/gRzC5sQJOIU+c5g==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:03 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:03 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DjX8tQk/2pk+fwgiwqlHWp2L6lh4prylF1va2HaG2tdBxGFhPqBA++c805SVypZ++/6qRvbKjIepIRtRGAZMwtq2d9TYDiVc1CYkwZhkLBJGkLijLzTUcVCeqymH18m1oGiBVkkpzVz11myWV1fkgrte5Lktf43mdfkDU/A424uYVFYErBEY20+NTF1ARENyC8vFSTLeLb8K3qzmNTeqbRroE7n4UNw6UwMES79QBTMcGBLPGmbF9dhH5yLL8xkGfJrrLAYbM2tWwlwwJ5vwrygvao67CSzA/pfX9bwhbbOpIuYtA7qV0IpNzXXVOKCsarbBtoNdk35cupSbUrj8CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bB+H5tYV2WH5C8aFUYwdDlqLZfxl2hQ4nmzD03bX64A=;
 b=kvZ+KhXrP6mBRohOw69y82a+uY6Nz8UdDAHiyax1+vlJ0L2D/RhAzdM8+K+qhQ63d0LMO+iTjv87cy9gF/AVAYPYR3L/ejOm3A4iNes/B/7xtYYZN+Br7w5tYepbW6O6TgQJTfJNkP3gYSV85C6m9Nr5cliChNlJ5fm+zJhZKEN9s8kjLv6FHDeWbzY1qyeRGZvnVEp2jpGd6xRlDq3WwCkxlomProQySivyYVuYYQNe+XUULvVfUBdFfEGxxILcC1+vfy2jXVBzcw9YeorPl62S9Mw7fgKSU3R+PNjkiDxFRg/AZrbBZFvGzMiV9HeF+lq1oHN3cL2bMGSt6hF09g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:00 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 18/34] drm/i915/dp: Iterate configurations via link_caps
 for SST DSC
Date: Wed, 1 Jul 2026 18:31:47 +0300
Message-ID: <20260701153204.4124150-19-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 4ad8d5a8-732d-4bec-3dba-08ded786083c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: bpJbHgzWVNU+Av198X/NFuJs6KtMdjCU4AYKnBmtnqgsDMWzCTs/4dZJZuUL3OgwNaF+gHZC9O/wDXH3Cthk8+nHfZ441b2qEkyXe4NBmJmPctFtluNWWJoMg9klwR6Icbdn3WnbFL3ixlL02R7ZY2236MWIiFQSDYncMo8D44yp1sS1Tl76vPZaJHzKjylRNjzUHPjD0TUQ9bOVKI4mG2nvrlsOlcYdDwVpOrl8s/phLaXQsaDKIFEblUYqFtiKQKUvLDTixCoB3ucfI2SrPZxywiDrtIV2JHMXgdBzHCp/bcQAs5+FsQOgrgMc8B7D0mFtMOmW3MXn/Oz4PFJByLDBW45kP3mc4U04EAHulSrDRLka3QCUOwqZ/4wg4cS00hQzmnUAjxKe/I6q/XZ4Namabo/Pr8FY+tRXKeHF3EcjMruUwgZKaFNsvbSmfZQXQkYdxOI+yj8BysLVHLki/LaRj5JN8X+BrF+qPrCovotXOXBMfdtICqqt3oOh1FNUOKG3Ro5r9EOzc/kgzJ8l4gCcvXOzIQTwCumaJ0tmeg5ORa76jUrVCtaCMpVSjx+Vj/FVH7nz4odErhJ2vIUnN6/0Bl8YgBIO34NOJzQS5s4Mgx+ij0nrybU4ldSlE9mBP6impANto43umF6h2ZPxXKjNHgJ6DojT3CMGDn746Jk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SXr77yFhb9SmFkyNiCm9Nj1m6ChgzQXWCJL1z3MQu8rCf5x3PE2CwEIyouNh?=
 =?us-ascii?Q?oPtliBwME8//jZtMLcwTximNO1iUhzAGFuv5yuoou5Ldp+oMONmpWHu+Xsri?=
 =?us-ascii?Q?aLtv8K0/5m4Y+8336ujBI8JdklLknl5i7v+dd/VnSgBkpzKRBWy8JSdWvPei?=
 =?us-ascii?Q?4XBQle8WLxQmngR6QtQlAssT0dhXNC0FeaDfmLwFG8slPM3VJMh1Xba1VisN?=
 =?us-ascii?Q?3sr0+It1OThVv+6MY7eOqymxxvSpdSO9i39esFFji9PltaD1OKhhPdWFBV4+?=
 =?us-ascii?Q?iro7PgBUyeJ+U9uD9BaIS+QOCYBqcEKNTlbwuDeUGkAUUapv/cxOk/oPL2bP?=
 =?us-ascii?Q?RRmGIG8FVDVd7UcGffojniftTKqkJn01TW6MhK//Gua8XB3Xbw/pRQntcilI?=
 =?us-ascii?Q?3P6e5RXOeJoK6SFtLKhR4gH6IbRAm23Ae5m9/LcWgZ6qgjrc1+1pjD4UyF8v?=
 =?us-ascii?Q?JxvvOryWxDwgFh1FAixL2U4nOTGO4Y71XDazNdgJGvHIMW42XNv1F7UOdT53?=
 =?us-ascii?Q?z2ZnKNPMSotIFq5dCVJZYHaNIZ0f8qWxwW27/d8x8L2ZN6B3gxx+me60VlkY?=
 =?us-ascii?Q?CON800ILkIYrOGSllKDk6EBjXmWLQ0gOUqC2ha9BE2n2OPgKe5R+s1A7PnjU?=
 =?us-ascii?Q?m1ouOwUP3YPUo6v+lK9OLBHwZzDZcFRjQTTc2VZeP4KG/z7KoRsULbolcLG4?=
 =?us-ascii?Q?IxTkdj4vK7+dyEhZ5RxqeNzwK0+DiH5fex/rw63e82cfk6O6ovk3szJnwS6o?=
 =?us-ascii?Q?i+9V6bhjyifDXD4Sb5Gq0Adhp0pN++VeHwDOIRcup7TMnxcIL3NckSZdNJqw?=
 =?us-ascii?Q?gZOA/5iX527GUX+B7aKptSljV/zqXHaDEVmrqkDq1hMkavlYiY4mQ17CMfxp?=
 =?us-ascii?Q?OK6b2WLFdcpYzXkyLcren2KNfMMVpWcTcqGixgyIW2xkvp4HvnR2JQgHNPSd?=
 =?us-ascii?Q?p68/nOhnQ4Oo0HEFNRCLlUZ3VyRe2lY0VDl91poKpB6pkQNj7+5PvA5i/m/a?=
 =?us-ascii?Q?U7CjdIqgV1xWw5DguGD2jst+3WDE80FhuJm54DATnDhB6amKyoR4LDyv4aeV?=
 =?us-ascii?Q?qD9JxCi4OfH8AJ6lyJstkKTGzldM5R03XwoHmqeudMR8trvZPVfqRpbc0ldc?=
 =?us-ascii?Q?T9aVQGc6qdt8lVv5AoksnZgjsS+hJkXQiI+eC4xMBYgk1OaOz67B6r+OUl+4?=
 =?us-ascii?Q?7EOPBTCRoPYAJ1RbCXy7BY6ZRcnJ2jYFbcKq5JbMo7chXarqpjXUCGvlG4Wv?=
 =?us-ascii?Q?Vtir4AtiKlJYyN/w9yNC3RbVUjduETVGQWw9MCBDHoV8HqsR5cwXMokcZVT0?=
 =?us-ascii?Q?Nm9TElPPkh53vKldukk42hKEZmPZ+P3Pw6MzH1SfOv/sgXahmnM6JubCdTdC?=
 =?us-ascii?Q?HSMi16cf9MMX3YBXxzoBbfcLz9J73oVJgitjt+nOBgs4s/R10sVK3+arBlv8?=
 =?us-ascii?Q?prWR2NA3K0o/ZtnxOe/MBrVANlM9MYKzZjpEjZpP6daHXFtRgRw0+A0RNFYs?=
 =?us-ascii?Q?KrsTKanaT5WBLeJBeu96otbWwkLWROBAZEgUJsBz5uX9c8gLCBBzmkn4g2yF?=
 =?us-ascii?Q?sNU6T4unNtBb4ITcKQ0YNZZbr5tNjmg5BDHM0airi7wU8S9/pmdlAGCRFiat?=
 =?us-ascii?Q?Y9rzZC9PaeZgKKrfJWLBUaoH+6sqbul6+XB9M/L9KpK96tTbWjNCZxFWtO53?=
 =?us-ascii?Q?EcqZNO/aMnSTzderLFr+3sSa9rf2gIULwVUp2u1aCDmy4ESFHLgVOUigy1nw?=
 =?us-ascii?Q?YhyfsBljXQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: SIJVq73uTpbKbC2fpFCzSJ9KFlAOaaxfvuEy7yDsXwhBYSReDgxkjJUCvv1lZMaSOlA5U9/uD/IViC6VjkzDqYORenFZ6+qkBPTsYTvXzy2S0EeiybonMRnD17mBtOZ1M1g5+k01SIVxiWT0GMmT5bxOL/tp9wvldsgUjFe5Z7SNQjWjY4jzCNK5ZuVr92w+VO325PPgX/7kuFDkP51F8Z/lbH9NIGnX5XjwuOMw1E1OrLFS2uvG42BcX5ps8aMAUpdrUy0Wqm+wK9P78739CYyvRqqrTI1rYsL/7wXP6O6ikweBJioBhbc198achoSJyrDmH7qCDKZTxgbGp6XaRQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ad8d5a8-732d-4bec-3dba-08ded786083c
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:59.8993 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6cPhJWHABtoQXVXLrdVeydZ4QEEeIUgZGAGfFvNQ4IMbEi1UBmK4Wp2sqRAL6yWT0+5qJfQNcA8SPxxjikOTgw==
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
X-Rspamd-Queue-Id: 829436EF486

Use the link caps configuration iterator for DP SST link configuration
computation for DSC mode. This is a step towards unifying configuration
selection and iteration across connector types and between compute and
fallback paths.

The iteration preserves the DP SST connector rate/lane ordering used by
the current code.

This also allows removing the now unused common rate count helper.

v2:
- Rebase on changes using a filter object instead of a mask of
  configuration indices.
- Rebase on changes using an iteration object.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 92 +++++++++----------
 .../gpu/drm/i915/display/intel_dp_link_caps.c |  5 -
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  1 -
 3 files changed, 44 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 108298186d121..c6920afb50902 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1988,60 +1988,56 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   const struct link_config_limits *limits,
 				   int dsc_bpp_x16)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	int link_rate, lane_count;
-	int i;
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_caps_order order =
+		intel_dp_link_caps_connector_compute_order(connector);
+	struct intel_dp_link_config link_config;
+	struct intel_dp_link_caps_iter iter;
 
-	for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-		link_rate = intel_dp_common_rate(link_caps, i);
-		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
-			continue;
+	intel_dp_link_caps_iter_start(&iter, link_caps, order, limits->link_config_filter);
+	for_each_dp_link_config(&iter, &link_config) {
+		/*
+		 * FIXME: intel_dp_mtp_tu_compute_config() requires
+		 * ->lane_count and ->port_clock set before we know
+		 * they'll work. If we end up failing altogether,
+		 * they'll remain in crtc state. This shouldn't matter,
+		 * as we'd then bail out from compute config, but it's
+		 * just ugly.
+		 */
+		pipe_config->lane_count = link_config.lane_count;
+		pipe_config->port_clock = link_config.rate;
 
-		for (lane_count = limits->min_lane_count;
-		     lane_count <= limits->max_lane_count;
-		     lane_count <<= 1) {
+		if (drm_dp_is_uhbr_rate(link_config.rate)) {
+			int ret;
 
-			/*
-			 * FIXME: intel_dp_mtp_tu_compute_config() requires
-			 * ->lane_count and ->port_clock set before we know
-			 * they'll work. If we end up failing altogether,
-			 * they'll remain in crtc state. This shouldn't matter,
-			 * as we'd then bail out from compute config, but it's
-			 * just ugly.
-			 */
-			pipe_config->lane_count = lane_count;
-			pipe_config->port_clock = link_rate;
+			ret = intel_dp_mtp_tu_compute_config(intel_dp,
+							     pipe_config,
+							     conn_state,
+							     dsc_bpp_x16,
+							     dsc_bpp_x16,
+							     0, true);
+			if (ret)
+				continue;
+		} else {
+			unsigned long bw_overhead_flags =
+				pipe_config->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
+			int line_slice_count =
+				intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
 
-			if (drm_dp_is_uhbr_rate(link_rate)) {
-				int ret;
-
-				ret = intel_dp_mtp_tu_compute_config(intel_dp,
-								     pipe_config,
-								     conn_state,
-								     dsc_bpp_x16,
-								     dsc_bpp_x16,
-								     0, true);
-				if (ret)
-					continue;
-			} else {
-				unsigned long bw_overhead_flags =
-					pipe_config->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
-				int line_slice_count =
-					intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
-
-				if (!is_bw_sufficient_for_dsc_config(intel_dp,
-								     link_rate, lane_count,
-								     adjusted_mode->crtc_clock,
-								     adjusted_mode->hdisplay,
-								     line_slice_count,
-								     dsc_bpp_x16,
-								     bw_overhead_flags))
-					continue;
-			}
-
-			return 0;
+			if (!is_bw_sufficient_for_dsc_config(intel_dp,
+							     link_config.rate,
+							     link_config.lane_count,
+							     adjusted_mode->crtc_clock,
+							     adjusted_mode->hdisplay,
+							     line_slice_count,
+							     dsc_bpp_x16,
+							     bw_overhead_flags))
+				continue;
 		}
+
+		return 0;
 	}
 
 	return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 8dfb7f4f703bc..4ce35b76afee6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -273,11 +273,6 @@ int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps)
 	return intel_dp_common_rate(link_caps, link_caps->num_rates - 1);
 }
 
-int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
-{
-	return link_caps->num_rates;
-}
-
 void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps)
 {
 	struct intel_display *display = to_intel_display(link_caps->dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 07002d745d384..3c7e6c8d1ab1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -124,7 +124,6 @@ int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps);
-int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps);
 
-- 
2.49.1

