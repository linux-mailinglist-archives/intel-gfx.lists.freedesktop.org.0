Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGE7EFRTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A5361C9DD
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 250BF1130DA;
	Mon,  1 Jun 2026 09:39:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QAKLYZu9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 066D61130CE;
 Mon,  1 Jun 2026 09:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306767; x=1811842767;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=5h0igHARysdSFakWV5RmaScWpR5iVacoP30O2OENJLo=;
 b=QAKLYZu9x25GL08X0fsgOknj56RBtqZMdgCmYFYbrVTXmb+yig8/8HqR
 UZbGEEWRfn48FT0K2I/JWO1UKMbalOIdLefBIeCWGfYVHzkBzIOGtELuZ
 0o9UF/VdRJvBZSE3g+lhLI6APeOxQbPVaEybTjszSU1BwVBxzMcq0e65d
 TRW/25im+LC4ZePQsb74oq0Z6g+enTZnwMdDpur5foYB5O/AxQNO3PM2B
 TmA3yPbVpSvIuVfBcM9tJmdaT7DjICirPgGMKmGtSlamqR2knzjRGZDay
 JTAOY6VuwBfApmc+iaIKHsg/qX0mOU9lp7xvXLXzJTq8Yc4PgtnZxwVNU Q==;
X-CSE-ConnectionGUID: gWOUguuXSX29ggNWubqVew==
X-CSE-MsgGUID: ByXDEPb/T1C10O0wTRXTDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094055"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094055"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:27 -0700
X-CSE-ConnectionGUID: L52tyfb/R6qBt2il+pWqbw==
X-CSE-MsgGUID: IPsC8aryTW2f3kXnS1oPxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160616"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:26 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dnGEFobVW49idoyvamqlOF4z4+kcGo7ikPKGr4UTDRho5b/UFGr6Sna7CxPSza5L+VlM2QPh/R4bI1pO0dTDZC+dzXno3fo2gBOvD6E54Z7kY0t2a0PGCqvsgkJDAFklCvwn02bLqqyJgkPNqRh/DJZ5d1P9rM27cdzNpKiOSEePqO09fKaMYoA7jC/s3r7VCAQ4DjxZEICf9q2GNhtspF7GFRcNlX6jwcywI0ibnXKhjfEusXkROXiChMOYTlnuQgMdaVVimYoJo21UEs+v+ZdomzNSfQFSZlw1Je81hmH1V/29z/JPupXeMvTGG1obL2l8wvSL4jp2gjQkzLxT2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S53bP8EhrJj8zIpCAWvuznAZS2VrGpb0HV2dwpMCHf0=;
 b=aItdpigZBarbid7zK4FppRKn1dTpKxlepcfpbgwxJGf40vd5Kr6N3xjOg0/QfknhAno6vMAyXrf7k+z4dUBSeLpWdbZPZwgGZt+Kyt1Fxxg3+GEpzfMJAubyO5kTA+9UyzkoaBP3F5pWhgrB4zP8UURGqR6UXiFTdzKZCNkay5CBIbnyNrodH9X0MWMBdGL/lylPj1pThHJh+HeqUdRC4U8ntS0O3TtoJZpciVmefYdj5NYcLFXfYRC3S57OwNFzrhfU75VOSWs5QbmDv0xdWgHxpdorHKbRZt32CvkeM1XAz1Vt8vdpsw4pJsSQpq+2VT+Rv7Sxp1pqhPeB6IfLmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:16 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:16 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 16/22] drm/i915/dp_link_training: Add no-fallback link
 recovery state
Date: Mon, 1 Jun 2026 12:38:29 +0300
Message-ID: <20260601093836.3057345-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: 51ba14bc-3b5c-4358-d574-08debfc1a5b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|6133799003|56012099006|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: xEu8d4N1FdcJgzFMYkrGq4GPqFa/+D912FAEqt4534aU2rO/sC92pAcPudGAEQNzQqAe43bD6DEUnVQ/kLqxhDxINXuKDbh25fdz+2vysNo/4l/mQDnfmY2/pSHHnYYk+3HiHVgeFa742qkWpHNCH9NrUhZ5hfREXZhkQ8n3hQaj6d8E5eb3V6LdFwCGo5W8unuFcV8fT63c5AM1p5gQF8ouwQ1cnEpueKmdfNDn5aWQJsCw+o0mv0olh+U1JjOxpR7qFMGBCEtAG1YJM09zslK2AzsXjA7MU2gPeX8FijcFdU8ovtHP1JLAOg+XQ7+7VIyVAGDwl9m2SrpphP29RqyTom2UKfxBR342+mDMGRjtj1gGjYvz8GPkxk9TU/BrKTi1jETf6ehmlRXluohHNel3iDvrAf5Psdp/wxEufyLsksFWHorJWKC7nSlWDEnlm4I6qg665IczxeQ4wwlJnw17U7gROnu0L3JCEA4D2XD6syHfQq2nsaqe/d9RQZabRoFd2JXEXXwCDu7N7FTvExW1ROJISoRUQQHjHzxGWzBq9TT3KYSjQbTrZ2SiC+52/RAI4+Moy8ex5q2kRGQMehDtR4Sm8RMsgE8FWiSF2vMuPqfzjj/AthiCCyJPlxNaGlhTcg0nt39kQXE1Bc67xghiWSVfAZotObspqLu73tACcejgX3m6ziuLZM8p4tMx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(6133799003)(56012099006)(3023799007)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?irzEf7zt3kWfy5Zs/M6FM5Mu7OsYrCHS48+1GTkcBlAb+Sr7OSXPDCqXsWys?=
 =?us-ascii?Q?MshMbml0SSCUkeV9t/vAzHtttzgIE/wQmnK57bUnQtC7l/EBx51d5cbuSxdA?=
 =?us-ascii?Q?1zUzn871GdQ8UnTTsYYEnwE0xNcaBo3q8QxOEVSPwdJ9NPDw8a2zJZiZZwhp?=
 =?us-ascii?Q?cTsoe29uGYanePELWPqcV8uI6+RCC5ys2qkUStQInhBTxh+fZaYYOHl4NAIi?=
 =?us-ascii?Q?oA/fOaKMSo5arScPyXgSHwtjnDhZZrho2NByWGQ0HtW4pPpoBIxcVTDmUkNL?=
 =?us-ascii?Q?St9wkHnWDso/tuzJ/JIbRc9iYXN6vjWGRrKsOoFWVUy/yU4ArIoPiVSNV+jE?=
 =?us-ascii?Q?/pCVKC1ZBj2UT5kRYFAc8TzZf5F/xWTqV54bYv57EYf9T8wdPDIyxxqIjlmq?=
 =?us-ascii?Q?haQLjxvDVh7nYZb7gTR5Vog8Wc+DtQxwPo7QBqIlc78vYfA1jGYCuYLoMqUv?=
 =?us-ascii?Q?Lx4ReYit9USVnxkMUoQe3k3X/BlXj/kkPUPTVFNbES3jYfhkzgDkteQD/kfg?=
 =?us-ascii?Q?cpOpBexYz5fWR6KDXDr3YCQ0IcxOX3WFNr1eAAUfElQ7zSgnDGoXF1CUFPxo?=
 =?us-ascii?Q?S1/w9sxOXx4mFNVHTdcGiQBpet1/A2ABYx62L+1Qc56MwN1fJ9YVoQIBqRUd?=
 =?us-ascii?Q?pwpmfVHmOrVCiT/pAKSeHmm7C6/Lag/W+O8llhAbmag8LXMzOsytoQr7wqr3?=
 =?us-ascii?Q?lEQW45UZg6x3x8D9qQ0TeWkq1wv80Iwy9+Hbp479BM0cOiJaWlqVrZIIbyHF?=
 =?us-ascii?Q?Rd3tM0LFf8gJ5qxNM2pvn+0p1kEN6Z/foaH7oMv9pAMooyLQNTAb/EaIerQH?=
 =?us-ascii?Q?cTbZY5elNStO97Gj3dpcTmp3V2LWZ7LepEoCqpNva0lGFv+/YucLAEC6k8Uu?=
 =?us-ascii?Q?ZBoG883nIz1CKf51D+82lSLESlr1N0apbm5X3uXdS2D25j9G7bU8XQvtwiYg?=
 =?us-ascii?Q?ZnZ5wMrsU5lR64SmergBFI6Hl2aKa7eC+hC6i8Rsk9CMqgFfulvvEptWsSaY?=
 =?us-ascii?Q?PR2BYYMKl4YH55K/A1LSgQ9OHjrH9aVERE2yiOJwT+BN34AVAzGaKrcUJSQq?=
 =?us-ascii?Q?vcdgu5wH6t79V368c8Bd/22oQvg+LVZrq6ZHfD+7sd7n/Wz4Vcwrsi0DT1AS?=
 =?us-ascii?Q?Nxj+cN3gBVOFTKCjwIbYwdybwOiITHQRMDAeM/1BTaymuXniXF9urC2qZV1t?=
 =?us-ascii?Q?O3ca4xAx/heGwJSm2EbXhmzWkD06CVfVcKoDZL6tUZKtVqHFbIW7Cuy79nzL?=
 =?us-ascii?Q?06IMLrTAkqLCF+7I8gi/oGtieoy3jl2wISCRuWvUAgpj0SOw9vgb0XLEIlIp?=
 =?us-ascii?Q?eXehKAzFfnHUPOfTxpMJqsOOPJKFNHNGv7RUD0/MIxEDyvnk0NsK2ozTV8TE?=
 =?us-ascii?Q?Pl7UIAq5tEkeyoPhra4Q4K4OdixyKNTmVYAHN2CVxRk24ThT0RvERJ8YZOhZ?=
 =?us-ascii?Q?92mpwvSnCv3r4bE0yDsiTqwk8bYOfg2LPhKvl+k9GGIqN194DdXwuuGCjxn8?=
 =?us-ascii?Q?7lF9CtO81Q4LiIAbgEq+9XWbcUvqB7m4R5gJmqVBmy0pSFpIVYWKGheDF9jw?=
 =?us-ascii?Q?+8Cck/+ONNeF0nN7YHhnzAK7T3NM0ApIw81zlW8dPuAy/pBll/QtHf9m00Nd?=
 =?us-ascii?Q?/RZMQtrGzdfLe5KS4baVPWRVgFcxFw3G7MBReYyuj1/Y8bwrn2Q43nT8WKX8?=
 =?us-ascii?Q?9cad74fzp7csifIwfBMQf/E3t81n25jBDNagsaVRIHmIlaVxFifNqpKOaa3Q?=
 =?us-ascii?Q?AKaPxoxoYQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: jSVNZ2bhuO+ZWN8FtiM/mW5iNEGDz6K3qRGBiPRLJ92Lg12/GBxZ12okpu532Bszc1E4LcVN0zuaTHj/IsD3QuTudMf9plFoCdYlPkfukCfO4sfhNu6V6J7Duq6p4srval5mfaYnyhZS/UaxH6hPciCXUUPXuXHcL/Tnb9UsO6VrIDwQrcMGTTz98DkvJwFtgQYAd3xRVj9WwnsIic6cfWzQOk7TehGTKPXXBZAb+VjjIlAOLhtp/UrBXB7mgxSLuZUgs0dQSxZFH/uQKwPK2j33mep60Xaj3FCknPsELGNQRkucmNjXYMdHWZ9goLhISpefIx7LX44V2zOuSOeh7w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 51ba14bc-3b5c-4358-d574-08debfc1a5b3
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:16.4624 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WSCLowLYBPwLkwer43v6fRuTwb75vkwRbjzOg6GLPk+EEfPqZYirRYw3ctH/858Gc6J5L4cxKuWItmhIS+zIgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E6A5361C9DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace the misnamed retrain_disabled flag with a dedicated link
recovery state indicating that no fallback link configurations remain.

This clarifies the meaning of the state: it has always represented the
situation where no further fallback link configurations are available.

While at it, add a TODO comment to the debugfs entry, to expose this
state via a more appropriately named entry.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 28 ++++++++++++++++---
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a326e9803f2c8..ad67f9df46d7b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -85,13 +85,21 @@
  *   failures trigger further fallback selections and userspace
  *   notifications.
  *
+ * @INTEL_DP_LINK_RECOVERY_NO_FALLBACK:
+ *   Fallback selection is no longer possible, as no usable fallback link
+ *   configurations remain. Recovery must proceed via userspace modesets
+ *   using the remaining allowed link configuration. Userspace continues
+ *   to be notified of subsequent link training failures.
+ *
  * Describes the link recovery state used by the Intel DP link recovery
  * logic.
  *
  * See also:
  *   - link_recovery_autoretrain_pending()
  *   - link_recovery_autoretrain_allowed()
+ *   - link_recovery_has_no_fallback()
  *   - link_recovery_mark_train_failure()
+ *   - link_recovery_mark_no_fallback()
  *   - link_recovery_reset()
  */
 enum intel_dp_link_recovery_state {
@@ -102,6 +110,7 @@ enum intel_dp_link_recovery_state {
 	INTEL_DP_LINK_RECOVERY_IDLE,
 	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING,
 	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED,
+	INTEL_DP_LINK_RECOVERY_NO_FALLBACK,
 };
 
 struct intel_dp_link_training {
@@ -109,7 +118,6 @@ struct intel_dp_link_training {
 
 	enum intel_dp_link_recovery_state recovery_state;
 
-	bool retrain_disabled;
 	int force_train_failure;
 	bool force_retrain;
 };
@@ -1338,6 +1346,12 @@ link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
 	}
 }
 
+static bool
+link_recovery_has_no_fallback(struct intel_dp_link_training *link_training)
+{
+	return link_training->recovery_state == INTEL_DP_LINK_RECOVERY_NO_FALLBACK;
+}
+
 /*
  * Record a link training failure and advance the recovery state to
  * indicate the next required recovery step.
@@ -1367,6 +1381,12 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
 	return link_recovery_autoretrain_allowed(link_training);
 }
 
+/* Record that no more link fallback configuration is available. */
+static void
+link_recovery_mark_no_fallback(struct intel_dp_link_training *link_training)
+{
+	link_training->recovery_state = INTEL_DP_LINK_RECOVERY_NO_FALLBACK;
+}
 
 /**
  * link_recovery_reset - reset the link recovery state
@@ -1973,7 +1993,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
 		return;
 
-	link_training->retrain_disabled = true;
+	link_recovery_mark_no_fallback(link_training);
 
 	if (!passed)
 		lt_err(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after failure\n");
@@ -2568,7 +2588,8 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 
 	intel_dp_flush_connector_commits(connector);
 
-	seq_printf(m, "%s\n", str_yes_no(link_training->retrain_disabled));
+	/* TODO: Expose this via a debugfs entry reflecting what the state represents. */
+	seq_printf(m, "%s\n", str_yes_no(link_recovery_has_no_fallback(link_training)));
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -2608,7 +2629,6 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 void intel_dp_link_training_reset(struct intel_dp_link_training *link_training)
 {
-	link_training->retrain_disabled = false;
 	link_recovery_reset(link_training);
 }
 
-- 
2.49.1

