Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIQ7B+E4/GmUMwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 09:01:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCCC4E3D30
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 09:01:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D9D110E210;
	Thu,  7 May 2026 07:01:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PDX31whm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D69A10E1B5;
 Thu,  7 May 2026 07:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778137308; x=1809673308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lASH6B/O4o1Ck2hOaYCZcPxSU2dP1z2verz2TiY9JHs=;
 b=PDX31whmFlGAkvTwE0HIv72O1s/KanhZ94QM0m2vmAaJNEK030+OLidw
 gVW9iwRAGSTXoM+7eAKH/xfEs9Imnposzd46s/G/UfccDwDHOYc5XhPJw
 KJfsFnGo9oQu4zPEicIRtVDrXH+ViiKWH/SJPsBKRDLGInfKuS5s3QMMn
 yjDOu/EwZZipwO6PUKTianXZuit/24z29ZSlzFmccKKtUnCj9PBkql6Uw
 0Fc9wYp9lry1emOWi8weZcz4o4igsNS7oAD4H/1N3GJf6hsxRiWiMtCU3
 mbf05AXSljE5nBAlMR29E9wJLgEsXndGMfVxNvZm1SVNwcPqxYC4w3MBe Q==;
X-CSE-ConnectionGUID: 34rYp+42RxaX9kOpPO+QKA==
X-CSE-MsgGUID: KTzCUVoFTdKpaLDpkn7cNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="90457808"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="90457808"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 00:01:48 -0700
X-CSE-ConnectionGUID: /yX+RVQjRQagBYET/1bUbg==
X-CSE-MsgGUID: hmMk19UPQuSBoubp4dp72w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="236640490"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 00:01:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 00:01:45 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 00:01:45 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.24) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 00:00:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W/WH7D5JX/BYjpYNbdj1SuI4naoQIo5h2wCduvGbFAkSZggMU8qh1ekr1U32E6fpc2RwYP9RVcAog2AqlA9rPwnAMZmcfEqfydj40mvlj5EpTgzWImzYfzb47LVLxl8w3K3XfsLcv2ZpwnNTA1yJZaflNa4sED+47aLEP6BPI1af4n5F8w61/pGGEuNtT3c63eNTClVaYX+rGJk9ctZdGMD2ML7A4haGbaMEM17TjR/kFLx2QtGIt1LumH6uuHlFdL41QiIAKQNfvWblnRvZ0CITsXmLsY0dCcm0mrjJdChEHRslD7sHuBcxcXJ2IRat2Uwa833gspFYBkfQ0kFORg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e1ZT0x0UNmG0mYo1XLCtS2FUuapO0VlF3cGLbZiewbA=;
 b=ZwInibaQY3gpSptCiEaa0A0S+e5k78eS89R81ta4YVRYbh81xFT7QbRT11w4nuKTLkb+ivCSiVYTGAgJp5ukiKvsMjlWK++2QGHUk+jUPrSdwWs8sWsAiSk48depNJA7fr2qFH9GtNKBVRR4SUWncSYK+x45mCVOYPfySugxW4FZ7FA0kuU06dkokJqGbhrbmCoWrGqKr+ns0k/NBAeeJI/N+puHqaDSV8QnSGS6Ep3oBCZVw1BbqbN80l+dgiX21LMP+2FI8GXgmTckdvsko0kN31JfVwxIidNZ7zPNTV7qipuCZnrTLOZeiOAUduuhYxOg4fdFxk6XQKgXX64WAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB6152.namprd11.prod.outlook.com (2603:10b6:8:9b::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.16; Thu, 7 May 2026 07:00:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9870.023; Thu, 7 May 2026
 07:00:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Sashiko <sashiko-bot@kernel.org>
Subject: [PATCH 2/2] drm/i915/ddi: Fix cleanup after HDMI connector init
 failure
Date: Thu, 7 May 2026 09:59:40 +0300
Message-ID: <20260507065940.2046690-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260507065940.2046690-1-imre.deak@intel.com>
References: <20260507065940.2046690-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0004F08C.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::634) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB6152:EE_
X-MS-Office365-Filtering-Correlation-Id: 922fc66d-dc34-41c2-41ba-08deac064bdd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003|3023799003;
X-Microsoft-Antispam-Message-Info: rKYZxL+xbUi9hWyx61XnLjCnehDZM/H0M2T58FL5EEk9n40E3F03csT8xiSSp97qHORBhSSJac6wTkeu9g1h4NQ9xkLkKz5ghG8+UpiNpMRYPcaDM7B8XSYKXpBqj2mDkI4nnvTZCvmdKGkEsHuvCEd6fZuto70ztKpB6jXshI8q74zIKrK085z+n1Gt+58zvNCenxKKpj4JjKjKJvtKZslAjzgxwEVZRGCV2qxRImQenbF+Ezl7THLVS+JbZG5Y4vZjp+fkp3PqvCwn7j0T1k3fqDKgLFHCbQbrJLq/4fMlHMnu7SX4JAJqCHshxErD044hnftgDyFi6fWRtmwvsNVq22VwbXhSs0QFd8hvNFqW11+80yhpdgDzy8LB5p6GPiE6sh30/NMfaJbnJxpe5OlozZ2tYjcTlLHh47qvHR0uIje+EsJZSiFP6/Bsd7eCV45SnZwbxvQasLOTeO5EhjCEqHMuEp3ff5Gzc2m0D6svAwupbYmnV8oaY+mJ55PK0mirbsPPHrrlOWSwCY0YfNsZD2KUbaEnk+HXctPlJdJ9rGw7rnvXx1iEQaAqFZXCV4I34sMw/rCTvgQ+DcZatYH8OKeqxpxdBM6XdlZ4CoCjH6LXfDZxTRhClLc1jFuPc7lJsFPhO1J8jxoFrhAggFzByg38lY09yOi+2D6U9I5zonWCokbp1iv+EFObbO5B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003)(3023799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S+vfiXn+edCDjCjd54CmITQ4l4aW4UEVOGZHMQ194lLNgY2lZYfwYTHk0y3I?=
 =?us-ascii?Q?rycK3NE40cg/zO83m9rlNmZVH8uuIdyC1qk8UQyBFzG1g5l5Ekk3NHFGVJrt?=
 =?us-ascii?Q?y5aGZhv0e9kqbNUIp+OGM8se78mawBk5z5Fy4SYYpWqxpjk23Nddq2gMOIp+?=
 =?us-ascii?Q?f11H7YPPBQkrJRvVERSD0f9471t5ONInjNiIWlxvqfGLwh0O08AYLDj5oFMQ?=
 =?us-ascii?Q?44NSlc8p9qOkJLDNfNKwBvQsBVUi4KFG0hTuNWqUkzVEBg1h7tSej7MZmGMm?=
 =?us-ascii?Q?eQ/klb9JfMwEtCLmrNNeZbVOCIOI+HuyQnIwFg+/VNmJ5aAYtjQT7scpnDrI?=
 =?us-ascii?Q?khHhrLQ9w/LXOl1/u+liucZz/Wt56YGbg/U4Px6N3PFq5f2zVTUjYOqlkw4I?=
 =?us-ascii?Q?8g/k1xjRjkCypG1hKPZVZUAIerpDf8aJvb5W39AEl9W1rx9Lc+4OCaLDxs/z?=
 =?us-ascii?Q?WHv22Mf61vnwv7b+LN7GfpFBoaWY/Rt/o6K0ibNuoKgn79aD/6AwnEvnLqOt?=
 =?us-ascii?Q?DnwjqX3nNTie90k32zHrl6n30iEOdGiXpJdXHOwIob/Tyj98IL75yQ7+nNW/?=
 =?us-ascii?Q?cPkGCpA5CMeFMDJQroC2400abqVIGNP2h5mTRvTD/FOawOP58m3qxDFmBv3/?=
 =?us-ascii?Q?IJ6c1rReRdadEj8gGuVsXuNZzmdqhsdiJ+GX6qP6RH7ddzg6r80j3lZyHVnj?=
 =?us-ascii?Q?+EIOqoXdOELa0U3Nq9ZXXrqfZXOOlfjB2gbA30+/5152IodiCV/7+L8ptkMu?=
 =?us-ascii?Q?7uzQpgiqEKaor7dnAEMr5bR3KHdHa3hn53TfzWCSNEqh5YLHVdFFCzJp/fPS?=
 =?us-ascii?Q?5WWxTXvbDbLJ3LtmXInRKvMbgNrkZ2exHUEgyxNvWwuuKC2uskncDfJO/ylA?=
 =?us-ascii?Q?cg4splTJ3QZApQC8cxBDZ6/soq6etKWDUrhp2CtOgBBqxPbHK4/3xMaVhvNe?=
 =?us-ascii?Q?DimrcMvoHszQOaPC4b5ek9EzkEPQDyE1u17jdNemJIl8/HmY9TlB9urHNhDP?=
 =?us-ascii?Q?x6g1avRIWTVbZW9GgQjNmeg2D2is0o3PK8KbdH41Io9QmTVJ8Vvv61XEqwQe?=
 =?us-ascii?Q?zPnKwCJQa3Gceq7QzTzrt28NybYz/H+IMuMmN7uPk/aTv+92+AvtdMgYWUTV?=
 =?us-ascii?Q?+V/9kGVE+SvKX9JqlAegrT5g43W0uleJAHtBIqzSsfLILyC1jb9L/DX5kTZg?=
 =?us-ascii?Q?RlUZptmrtDoRf1ZnuTrE/ROxvPtjjpriIeQBqaPnKHFoTUGabJG5zX9jw0IG?=
 =?us-ascii?Q?tzjraVqMUj1q3atNFFGwxobYjDhU+cRhGU4mf8hoZeKeJWhRJT7rwiHjKF2Y?=
 =?us-ascii?Q?8pqJRWp8Fc5LguzVKqiyF/EW+BRLIo0i72ynyvRuenUwXgZ0vv/c9oOR/MB8?=
 =?us-ascii?Q?0RTYeQpz1PoKU4z8QdTKW9BWNGRLIDW9EgJk3ehz2291cTscBQP1BALtHkRs?=
 =?us-ascii?Q?GpOev3McXfMabebEJMM2I6q9crlFHlXJgyqktyz5Tj9bY4qWmHXw4tGm7iQj?=
 =?us-ascii?Q?5rpoWrk57jUQTnW2qoRpGjOhx+Ct5zFVUztUTp/tHk5tJu+hI/JYyPboAOyz?=
 =?us-ascii?Q?3TSDmMgLsj8ePgZrwh3D38F6OYVyxGCePc/PHta/9AvLyvbXrtwatmxFGA5j?=
 =?us-ascii?Q?Sm8I8qaIECac66eUWuomoNyrLE29j2Ziq2Z9DXMCD0bHEw5MhlMy717/4act?=
 =?us-ascii?Q?bQT3uJfv5amQ08Ljaoh3l7s8MXVH5zUcs2nd2Z3uWOtflgI+V/X/pV39V6UJ?=
 =?us-ascii?Q?1SE9gH3SvA=3D=3D?=
X-Exchange-RoutingPolicyChecked: e1h62C25wGGXAmo+NagFmpt8Ddo21dzeRAh5CWvBf/vqTk4DNESugNvZ2tpuNfyme9AfEmujZqsxvVSqtIXwTCN5cnApQkfoV+3Lcsg8e5OKzPlMsogFeKqg5Y0JFBYOaD/rKmpJg0LzUuW6MJOcj+nTIYju7SvOt1/combpwIUut19oI0TOkr6g/SkC3rGrX9MFYR/uXZqmdx08cNRwv+py9vreVLuU/pLx2ABksn2sDIIklDdAdGbvfnp2KUiiq8IDAoeijdkFrbhO/ttwt86Lcq9PEv6SvotwB05gbzq4ZUhJnsWn+aJNg+s+304FzepesoK5sgmEhosJlZFUcw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 922fc66d-dc34-41c2-41ba-08deac064bdd
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 07:00:17.9504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SxiBmv/jXysTm6PZJrBxAePMQ+yW3c99tIxo9aYHC9/Y2NQGJU2b6m7vjpc/6MZsR1SlwVBLcae+fkULGt8U+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6152
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
X-Rspamd-Queue-Id: 5FCCC4E3D30
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Perform the missing DDI DP connector cleanup steps after HDMI connector
initialization failure during DDI encoder/connector initialization.

This fixes the leaked DP MST encoder, AUX state, and connector object.

Reported-by: Sashiko <sashiko-bot@kernel.org>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 14 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.c  | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  3 +++
 3 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e37cc32ee83ed..cd61ddb7f4696 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4729,6 +4729,15 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	return 0;
 }
 
+static void intel_ddi_cleanup_dp_connector(struct intel_digital_port *dig_port)
+{
+	struct intel_dp *intel_dp = &dig_port->dp;
+	struct intel_connector *connector = intel_dp->attached_connector;
+
+	intel_dp_cleanup_connector(dig_port, connector);
+	kfree(connector);
+}
+
 static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 				 struct drm_modeset_acquire_ctx *ctx)
 {
@@ -5492,11 +5501,14 @@ void intel_ddi_init(struct intel_display *display,
 	 */
 	if (encoder->type != INTEL_OUTPUT_EDP && init_hdmi) {
 		if (intel_ddi_init_hdmi_connector(dig_port))
-			goto err_dp_connector_init;
+			goto err_hdmi_connector_init;
 	}
 
 	return;
 
+err_hdmi_connector_init:
+	if (init_dp)
+		intel_ddi_cleanup_dp_connector(dig_port);
 err_dp_connector_init:
 	if (intel_encoder_is_tc(encoder))
 		intel_tc_port_cleanup(dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 86123614b7bae..97c572e5a5710 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7346,6 +7346,19 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	return false;
 }
 
+void intel_dp_cleanup_connector(struct intel_digital_port *dig_port,
+				struct intel_connector *connector)
+{
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = &dig_port->dp;
+
+	intel_display_power_flush_work(display);
+
+	intel_dp_mst_encoder_cleanup(dig_port);
+	intel_dp_aux_fini(intel_dp);
+	drm_connector_cleanup(&connector->base);
+}
+
 void intel_dp_mst_suspend(struct intel_display *display)
 {
 	struct intel_encoder *encoder;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 2849b9ecdc71a..f41480d247142 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -48,6 +48,9 @@ intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
 				      const struct intel_crtc_state *crtc_state);
 bool intel_dp_init_connector(struct intel_digital_port *dig_port,
 			     struct intel_connector *intel_connector);
+void intel_dp_cleanup_connector(struct intel_digital_port *dig_port,
+				struct intel_connector *connector);
+
 void intel_dp_connector_sync_state(struct intel_connector *connector,
 				   const struct intel_crtc_state *crtc_state);
 void intel_dp_set_link_params(struct intel_dp *intel_dp,
-- 
2.49.1

