Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id auBkFW45RWpe8woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:59:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DAF6EF6FF
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:59:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nPLd0vyw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B3510EF57;
	Wed,  1 Jul 2026 15:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1016C10EF57;
 Wed,  1 Jul 2026 15:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782921579; x=1814457579;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=3StqrQVwdtvePT24ic4ABnWwXkXaHy00o4lh6jVI9Go=;
 b=nPLd0vyw7iXB6mthey3YO3Aq1RCfm8ZReEHFN+6qDM+mDxxhMGmNYHFl
 53ygU59w4FDAHVzEA8anE290B+JUvASeuyIzPW+R8QDYGTjspNhwkRjf6
 LMbwcGFSbFJM/ofWaHtXAz+5RNHhXjqbDhlSbnv3dFWtuFsc7Sf/wAic2
 fzVlUy2vPQEE9+m55z1J131/Gm7bVs/m1AmoNba6ErJryh1YVSc5LUYvZ
 tzIYRR9Jh5ppvJuCGi+4OJ3bCwkkF+jaDydhYHOJItOhf2xcnGlPDgSCX
 ehxeBSZya/g2w4Mn/xyGWaa8d2musjVUTtXI3+lq2tlQrmxPHKMJBY8to w==;
X-CSE-ConnectionGUID: caOFuSn6Qa6FaBzCS6LnYg==
X-CSE-MsgGUID: Q0yfUAjRQeikMRkDdnU22w==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="71183831"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="71183831"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:59:27 -0700
X-CSE-ConnectionGUID: St5JCSbtTiy/nPwJRNKgeQ==
X-CSE-MsgGUID: xRSVgeVuRP64QAr2pngRQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256187658"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:59:26 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:48 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:48 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.39) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=azT5QZGDnoH1TszAl3pHIZBi/facnd/OBrz8aV69kqzYkge/lYBufcndMKANZ4Wb+vzi++uF5nlhxFQqF//A6I3o+BIIInqAQHgJoWR4iuoRFqIHs7pDad8BCldeXexXSW6Kej+jJufImygo1MliXfQd8KAxTlJsQhlW3YrDlHhkrIERvearLIgL0UFQmBrHkbzbmMVaIKAIlGC41Tz1uNd3si/XfmMCY/5SFBWVgWAjLbd19SpUCblpbZjBN2UQ2DDaOmTUqsNBgBQNM9w8Awx0wvmLVu+2qg3ZnBXxHaXfoQ6nbQNNjqAffV0XnTJqzOKkgPVjJfMJl6EBI0eQgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lLfN4hrHjMrN5qozc8gr+k2MWb2rpQvSp3Xd709eCws=;
 b=I00e3tK4eqWrGFvkqvFC0SRMAfpzFmU1SJu4jpQxWzbVBR2Z2HmsPcfvLQen6E/mMyZA3X+zeIu0cNwdrQ+aQQih8p+xBDFszn6aA3bxzrzlN18X2PpcxLmmfIHTaI2QK5fNrUtaRkGzUpuF6eDwA5SqnOwnIPepDl1aBWLvmY+mkPWMlDnq5OMZ9z9Hpb3OSjG1tif6CcPUpPaf48H1dr3wCqFKQ0kXsXOj+H2iHey3I13YZJaR+VF61S7Z1OMeU4R+eQrkQ85k4St63RN79uvqvOCDUX980bSO9B6ulHoXMCruJeJmGFMXbRf0ygdIqW5ygNqq/HzBu81ied0pGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:45 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:45 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 07/34] drm/i915/dp_link_caps: Add filter for enabled link
 configurations
Date: Wed, 1 Jul 2026 18:31:36 +0300
Message-ID: <20260701153204.4124150-8-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 82d4d66f-d99c-4545-4971-08ded785ffc5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|3023799007|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: 5UN+8/5XqtticK6bgzCvi4emReS5GL6eO6Z0555bFQ69ZHAMtX7owpQA/kWIWWonCsWuGhD0XP2jO5I5g4nE2OK2RK430S5NKfEFNKKBKDfsZUvfJ7poCl2CAqtUY39n0h41pIsM0LJBnlZgWkaTojURjvu/UGOvon3q0+aeHWXIxsnhJbPW1kD2/XiQXCd2x6nuoWHXs1O9KWhLdDBWuemRFSM+igP8Ayo6xBS+VRBLhb2wXN9NDM7MC/ny+qX0SRdElGHZYbBbpeW1V9hRReeCxFOi8SYn7RIGbEzi24fI8JKodlRaul5ZD5rWyyf89wY6Taf36SOm0xvUQudOlcMJ9XrBffImZa7efajXoiFJYnueOuWiB6YtdtZp1jz4QvtcufX7FJDFYWtDe3SWxYYHNmecm9uy0Ub/q/M3iV3Z/6tIGe0Mwr5m4XpacqXtbASaIg2g9+NdvPlc277UuepAoqXOtL7MwaAXxQIuD9MYlxePWHEWUDCI09PeiF2XjPZTame5GZPkSFGAKQOaWKMdrDTeKYdsJkaKxq6WlKhPMqBGfHhVCyi8TxqstNGCVTwzk/mi8iVLDved6OMktaYx2E+QuC1NTr8LQsonTGuQ5dK6gw3hh6TkzymROgc7I/y3B0QVztl4nhc72dsI8QCSO7GTilvrpx8NlGe50JQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(3023799007)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TkpdpO1sP0WDEGpQX/1iyIy6E4EYVuDjW3W0Tln+Zk9BmlA+9zYXkOM8C70S?=
 =?us-ascii?Q?CGOjbUE7FV9gO6nJIUXJaAS2OsMwhWjmlJYQXW/k5jB069hOlh0QeIEtKjBL?=
 =?us-ascii?Q?1v9wK2bydUPkjyotRa3BhZ/yq7T17VMGl/Y8BkFTYItNTDYmD4SduW3HKo9k?=
 =?us-ascii?Q?Le//dBKuPL6HUx0NeyenNZKv3/c3neeiRUVckLinlFARj/VnBO+5d5OJr4Ls?=
 =?us-ascii?Q?DQGDpop4JcD1SSLkQeQqsnmyyT/aDyTnxd3GKmBB4jQzeMSzRJA8RNM6CGgl?=
 =?us-ascii?Q?2h0L51894oRIW4A72jGIisIsugyoqvw98rYorKMGP1deDq0kIMtmmVeTwJqy?=
 =?us-ascii?Q?NeRrTkk01pAafRqwkcHA1R1+NJBbOXIpyyo2m4URaSxFS32ekQvrXn5CrrXc?=
 =?us-ascii?Q?XyQRagHR62RV00FPteFlNx5qB8BnnhRug7bsfcEqjeTbvrVk8O9nfBgDkFhQ?=
 =?us-ascii?Q?NrU9Xs6iGiMeWTb7uM206UwvtY85poogBA0tG3Kce6RNeIvzT8StmpvCqoOQ?=
 =?us-ascii?Q?vMHNMBzE73E3VUNFHbavlwbcW/SuJL41+VgzFmNcFtxFuUi33BD70A+pKsat?=
 =?us-ascii?Q?9qP+cagMbjeUU/tsRZ7faoatUNJCm1084ezEIBK8N7aYHeC2SDx6GPiYptTe?=
 =?us-ascii?Q?93OQdIisMyPpKF5Z0d4c/3baYOqenJAlJK6WDsR0hGpHdwhrc2julC8Y3V9c?=
 =?us-ascii?Q?vkIw+wkW8QFfhLy45lrn9Au60zQBy3YNwDDkY/JtyDZVe8MfO/0zyK54u39k?=
 =?us-ascii?Q?bxyWAipOhvr5Ze5+4TfSl1aMrL4JmTu5Y9n5XpCqiOJQxrRYXf37GhdNNA/F?=
 =?us-ascii?Q?oIZKTKY6j0JB9RcrSqByLHIrqiQkf0vpW7ZJZRpgczT3UTg9Lxt4Y8dCfuyV?=
 =?us-ascii?Q?d0e86cJUZXTJjbO6YLuyFe9x8p7uge5WSl1L9KuMAcnPiNdkvmieEzcLlAP4?=
 =?us-ascii?Q?bv8Uq2Drxb0sXod8jsLguyTVbGNceuBS+CJxbwaviEEydSk1Sk3BV0IrpKln?=
 =?us-ascii?Q?wweXv4RYLLUdYhWfnOTlzbfDBraZkN2i2QaJ+NAs867MvWBQbO31THAXqLls?=
 =?us-ascii?Q?pj5xKeV94ZA0uLM92g5Wd9jooPLYuDRp2o9bjpg0oFFHCGqbTzlkNRU2eU7g?=
 =?us-ascii?Q?clpA8hduWke704jYceZ/65qT0+SufWO4z6uakMCfjfnj5CGwim4Sn3Eqmf2E?=
 =?us-ascii?Q?GxhIvqDn847rhJhwYXeJeDRYvRLB2JCYcZSLfeWZvyi6KAPFbLUK8WlAdE2E?=
 =?us-ascii?Q?xiPpoDL8FIxwnEIbNMvB9udEIS1cbTeVObNAKNsqfCSJmShdhp6TJXQ5t2yQ?=
 =?us-ascii?Q?WaJ7aiPaaBErT6DyoTyEILSgyFzW4xqJ19qyVvdmLr8iwykSWtjEDyj9MPgX?=
 =?us-ascii?Q?tPlTU/adiNRPyQLadONyZRWWT9/TXzGonuQbJ/9VU7vbtkBIxL1ezYYTk8rd?=
 =?us-ascii?Q?6TnHA4srIb80nxkxt4MYkWCuTzBcTJ79GWEys/ZY5WYKZPsmTcWhzpCtpNai?=
 =?us-ascii?Q?5PSpjBkHAWNr4Ksws5pyUjvXuO/R+KHeNb2oq08Kcs7WjKlGUq7C7SpTx15M?=
 =?us-ascii?Q?BjPFZWszsdHjKXk9y3lZVHfMeLvUrAUuUiv8yyXR04hIR7lR8a0AAupP9LhJ?=
 =?us-ascii?Q?jUPN0ykDajDk22OlGmzowvLNfqBdHm4p926Uyje2XF1P4JbzKQMS3T1yswmH?=
 =?us-ascii?Q?fQJOwXp9qPeiRK6ivdrV/YMyy54og0yuS+AIqsBqZlDpxBU+fxFbdbX1qQxy?=
 =?us-ascii?Q?HNjrrmwnIg=3D=3D?=
X-Exchange-RoutingPolicyChecked: BisLhChQskf39H/bx4QJBSBGuCH3XqUZXbMSGYOkaMllnD3+5f4IooZrNhICDLXoBo4thXFimLvjERNrgni1ada0GOErCNTefmgZ/LKGaU+SRS7LFcFxgGfb4biu0gxWfjejp0TjdLOJCV+vynEHGNu4DIfWFVzRmJ87VJyjw5hK0r5ITCR7uAKmBL/NHB7l7xaJ3v8cIIYif+X0idJNbEtlTtDui9GFsVhgL1b0y4pVGA/IniVhUvvDLHKg+3u0JVlZZLxcgcXtPYLGmH4jbKulMhZndbQpTPDG8OJOP/bHfZKXS4Ps6XXOEl1MPQofW3PN8GLNLAP7/olZahEDuQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 82d4d66f-d99c-4545-4971-08ded785ffc5
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:45.7156 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KE6DGwVaLR9HAAn21L5Uxp2XPfy2LWDXjXPs5kdo1+u7pWKpV0r8+SfZurSxc9W1d8RTyWwSb5p+AXP2jU6/wA==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C2DAF6EF6FF

Add a filter for enabled link configurations to the link capability
state.

This allows fallback code to disable only the configuration that failed
link training, instead of constraining later modesets via maximum link
rate or lane count. The code only needs to exclude the failed
configuration from the allowed set; all other supported configurations
remain available.

Use the filter when computing the allowed configuration set and when
validating maximum link limits.

Follow-up changes will switch the fallback code to disable individual
configurations through this filter.

v2:
- Rebase on changes using a filter object instead of a mask of
  configuration indices.
- Track the enabled configurations instead of the disabled ones.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 38 +++++++++++++++++--
 1 file changed, 34 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 5976e85bb2729..03e40e8d24fb6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -130,6 +130,37 @@ struct intel_dp_link_caps {
 	u8 rate_lane_map[INTEL_DP_MAX_LINK_CONFIGS];
 	u8 lane_rate_map[INTEL_DP_MAX_LINK_CONFIGS];
 
+	/*
+	 * Filter of configurations enabled for the current sink
+	 * connection.
+	 *
+	 * Each bit in the filter's configuration mask corresponds to a
+	 * configuration index in the intel_dp_link_caps::configs[] array.
+	 *
+	 * All configurations start out enabled in the filter after a
+	 * new sink is connected. Users disable configurations afterwards
+	 * via the link caps API. All configurations get re-enabled
+	 * internally in the following cases:
+	 * - when forcing a link rate or lane count
+	 * - when intel_dp_link_caps_update(reset=true) is called after
+	 *   a new sink is connected
+	 * - when intel_dp_link_caps_update(reset=false) with changed
+	 *   link capabilities is called
+	 * - when intel_dp_link_caps_reset() is called after a new sink
+	 *   is connected
+	 */
+	struct intel_dp_link_caps_filter enabled_configs;
+
+	/*
+	 * Allowed configurations are the supported configurations defined by
+	 * config_table.rates and config_table.max_lane_count, constrained by
+	 * config_table.enabled_configs and the forced_params and
+	 * max_limits values below.
+	 *
+	 * See get_allowed_config_filter() for the filter of these
+	 * configurations.
+	 */
+
 	/*
 	 * Forced parameters requested via debugfs. Remains set across sink
 	 * disconnects.
@@ -454,8 +485,7 @@ get_allowed_config_filter(struct intel_dp_link_caps *link_caps)
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
-	/* TODO: Get filter for enabled configs. */
-	return calc_allowed_config_filter(link_caps, INTEL_DP_LINK_CAPS_FILTER_ALL,
+	return calc_allowed_config_filter(link_caps, link_caps->enabled_configs,
 					  &link_caps->max_limits, &forced_params);
 }
 
@@ -571,8 +601,7 @@ static bool max_link_limits_valid(struct intel_dp_link_caps *link_caps,
 	/* TODO: Validate max_link_limits->rate against the source supported rates. */
 
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
-	/* TODO: Get filter for enabled configs. */
-	allowed_configs = calc_allowed_config_filter(link_caps, INTEL_DP_LINK_CAPS_FILTER_ALL,
+	allowed_configs = calc_allowed_config_filter(link_caps, link_caps->enabled_configs,
 						     max_link_limits, &forced_params);
 
 	return allowed_configs.config_mask != 0;
@@ -1095,6 +1124,7 @@ struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp)
 		return NULL;
 
 	link_caps->dp = intel_dp;
+	link_caps->enabled_configs = INTEL_DP_LINK_CAPS_FILTER_ALL;
 
 	return link_caps;
 }
-- 
2.49.1

