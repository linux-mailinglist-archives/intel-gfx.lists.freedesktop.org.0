Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNGCA6mt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B010C4851E0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F66D10EB82;
	Tue, 28 Apr 2026 12:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B6oVl4yJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBFA910EB72;
 Tue, 28 Apr 2026 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380774; x=1808916774;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=77lj6T4FC8lu8PnkVirUuy8WrIAjTDydd46onVAt6D8=;
 b=B6oVl4yJ+yh+qIiQfHCbtg3VdIIhyUnvsEDzRTjPr+x203aJea9IWh9Y
 484MHAm8UOW+ZnPPL9LFI07uCuDC61W+3qwQ4qMswNMqkkA6ai//MF9ht
 i3uY8j0Oj/cxLFEVOYKNcpERpJSIAboLSYOQY26yZWAx0I8lrSZMSVnAj
 dkRJsCeF1fZFy0PJvXLNRkE/l2lzQHx3n2vjzIUv6F2IFX+3BGXaM4wwF
 IBYMtLJXLgpy8m7oJAJnOoCoEYvaYdVTd+huM5d1fvSEM8ua9xEQa+Hv9
 NPXFoL1dOJcRCx+Yw/2uiyGZa/bLgl3mB+5LrEI8Sr/JydTLuhamRcilb w==;
X-CSE-ConnectionGUID: h4RFA5BMSf2fbc0W7YiWiw==
X-CSE-MsgGUID: HjtCF5MFRH2mTr46SYFY/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398560"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398560"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:54 -0700
X-CSE-ConnectionGUID: Ho3mWEcQRBSI/pqXDP/38Q==
X-CSE-MsgGUID: 7WBhlcHJTUSyrBpDVhfs4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911271"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:53 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:52:53 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WVYscrw5ipk1tsQx2kDdKiXD7rgMVhYIBj6q+gdFpDs0MWqluH/U/d34btYwQmlFm3/cabIvS2u4nVGDaVNY3vZiGmhEEu8dZ53YGL9TahPqTDx2PSEUZTEqCfitF4VqUUPmhkvQWLd961VP8w7mP+GjIMbDy9PmM2wn+lFD2aQpgcawqwpumF4owqBskL4LhJ6O4jK4zKN+mSXwTV+eCNFJaZtHdzOH/6WJ7Be0CvllIOI6qGlpQnDGTUKuBIctQR6oFoCwBCBTBAe5b/7tnj8Q+SGAEkpPHkxSxQmAYCO/YkV+Mz1GZKBumS+tubpDA7T7ya1PLhz6YjHC4b2Xtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FMsbQ0nzWLk+PDZnQNPAV79xmrLcLYddN+PNGVUS0cI=;
 b=YNTWM3eBw5WAexEdtz7tjomJ4nOjbiBYdo5nqL3aUhkSRoEEyl6tErYK4xZmlccS65YkplEtxK4z9YlzSh8KR0PGkRj5YX+4VZUJJV0kMf9/hcjy1XaKOD4TRLcesJ7bDlBvRfEQMcn8zXHuZge7c5xHlAOkOTpdQrGpwMgoaiLVOm21lD9CkjnekWiWN51UQ3a9HBcbV6ikDp+p/oAgyqK4RliLZn5bJUDVr9XUaY6hwXqsKfKJrb50Z7PVYJjenJFM8XaU/M8SAcrtt8/tvDpHbzXSbnqDOAMDlfJvHsDRCNLSH/p3zYM3B/RfAfePHBTDokGXfVhTiFkPv+l+GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:52:49 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:49 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 005/108] drm/i915/dp_link_training: Factor out link training
 state reset helper
Date: Tue, 28 Apr 2026 15:50:46 +0300
Message-ID: <20260428125233.1664668-6-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB8156:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bb67a8b-33a3-44cf-6850-08dea5250d52
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: wQlZk9yE8V2I0rVn678TGI0M2eHVpWhxfPwqnw9RSpumatOGXwSNANSncs0/f1jFYsNmp1hB4SPLZMABnkq+KQ7wCRiKw2xDle7nn+jvDcv8w38n+N8qMd/8G/2GmZlV3fKvfL75EsXrZQ2kc0MzYi2qyk4Eo8ACojm0mCvyex3EudBseQQ1IQYpnf7//0OMS0Qti/R2FH7N/9kGeezEsMJVU5yKxFcSntnmR/AmK4F+i1GwKuN5COd1Dn80YAbvEsrmUd5bWY8Nwy9fCzwrmqCmZPxdEr1HUnAWueBj4+M6Axewsb9rUKW2DEEw9W2mYIVLDDZlMhEsLelSapL41OA1kbOL78hhbBoh8nysoeub/sIFsZCXGSGPPynPx4ANQntTGKiONT94PP7wXlPlW017x2QHWIaEtodx3CpJCVdNqqx+2gp0RmbDjo7/Vez941dHcmJLhr5QrFYnSG3aKZJlA35QZ7iRBU+9INb8usV53e13cHb8FOW8SkDvAiwJUURWWgPe5IAE9CyRibGuwgs9WTvNBcysxAuOLRvF3UI8FQPuF9VxHo3m4Z1xR9wEuxyfu5fwnWHaW7w7uL2b/GyEFv7gUYhwRtr7gDDLZZPxSRyF7XtBGQnaskMhUF7RfxZ/5XWzLcHZkEZWoJAcHB5iyxgPI3IJylUx0JePf15d7RsOwOxuq4oqB+D6hbVf+zP/yHnsNYhL/BlGjKzLVRUKjv6mDDWoZQHV5x8XEj0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bRYCjrBjP+JiatvxVEgcAslyZ+POR9/RkCTA9Gpp5Svc0ws/DLXjiiky83Q0?=
 =?us-ascii?Q?B1FV0KnNvTZ2wPZPM3LCqeG+GNLDyh5MLOXNHoRRjhFrnjWfXM2QwspS7ksA?=
 =?us-ascii?Q?flka3Zafqr8KsaBhc6bLSM5YTd34laPgVyccnlRPr0BnxiV/YK6d9I5Jlx9B?=
 =?us-ascii?Q?zEYWecteoAz2B4vPmR6MHCe/vZvjnwGOVnU1fueIQ0OPXdn4qT4bBIHx/xr1?=
 =?us-ascii?Q?52BxllV+fpcPl12mRoz2Q7gqQgV2SI816AMpA6205Hga2usSdgE1DuM0GEiO?=
 =?us-ascii?Q?e0aWPvporUVoycn5bLT6SIHkAjzGumRC8YqrR0H6HTwcZnIs0+RLho/37fHZ?=
 =?us-ascii?Q?djBsgOOxDASQRA0oUPcjBcN0v7g3zyFaAnQblg94EOZaxLvOi1BvtkpMCMLc?=
 =?us-ascii?Q?UdvKGiXWvGe0BlfyV3fsf1rFwrjgoHCS7SxMCzzJV2S1U02LkhOn/IfUYPtd?=
 =?us-ascii?Q?5dehQuIsAZc5Hi6iQ1a/pH8J+Jxeouxttkj3022iCAiMKXB7EjoIvJrhBZai?=
 =?us-ascii?Q?0KHllumnZSr2lx9n0UtnzU2n5cj+vvf8OZ8J0f9X8oSQqqLhFPEDcYv97cTm?=
 =?us-ascii?Q?RrKBQI8n+egtCqIx9OtwBxfLGKJUFKh5UobfXzizsiChWPTBtluRQ8/tr0Bo?=
 =?us-ascii?Q?h8BfG2KiZy+cJVPeRKWn7ENndV1Is+1Ui1XrkDiONH1upImt4Rl+R563+LaT?=
 =?us-ascii?Q?lWy7vFHS9NyCtHQSkF/KtRagP79f+sPaq8X2NuM5rILRymh3y/lW4cn2t/Un?=
 =?us-ascii?Q?G4stsEsmXcyqotRM9DyWyz1mboCA/X5OqdLmgShCubCKtKZ3hvhaST0bjY7u?=
 =?us-ascii?Q?5NziGEnK1JBGq/0+qmQqJtH+f/rt8ABB8DwkvAdktGCAUcN92kiPKU3Uvo1K?=
 =?us-ascii?Q?qZmRMIs+PIE+lbUFCQh6Xa49A0oPRz3hGer93qcdB09qlJQBKgQ8Z3NWsII5?=
 =?us-ascii?Q?/RMHYKN+jC3UUwgdGI39hU9ZuK5BfcdcCcg7YKhrdf8cCZtEyAQzuUedDH9w?=
 =?us-ascii?Q?x53dF4NDdhSDH/JVDJY+zEovUVUCW6kgy9AmS/Zk/bJrj/IIFrZqwKlQnQRK?=
 =?us-ascii?Q?vi04RGojxv2tSG6HBBlKqEXKiXV4QoqQ5mXKc6Sgdev9nk4KEzrqmrd0bnaf?=
 =?us-ascii?Q?FAzEAFmRDtzSX7+WHpHh99FIIYNv6vp+wprBnxBm+RCnUdRnR23zdB2lCpVg?=
 =?us-ascii?Q?vXBN6moLVb5E+bFwYY9ro/EvootFj4bWxgwHh4wtoNgp/VT3ridssGngoI3B?=
 =?us-ascii?Q?GvhGNP2/QMs03RLMhkETGhiHAwi7xZSkLxjs71wI8RihEt/+65orrh3MWRYf?=
 =?us-ascii?Q?K/zUIOMZcvMgofd8IL2zdA6e/p2+NICviCGlPxOdzo09b/ObD2ZePkUiDDfd?=
 =?us-ascii?Q?Nwnwq9/vNlsDVvIbZBEEDPXgStz2rVGiQP1IKudJ/pM+v04Kl8hkhniKI9a7?=
 =?us-ascii?Q?7p9wPAIwaLY4IXQLh3H8dZKp1JlkQNDFM4psCslzrv9j2n1eVgyQWg61cApT?=
 =?us-ascii?Q?ph/Ww7CIJ9E1BP0Po93EAC67F7COVPLTXAU08aNlkL1HrKj0ys7wIxwem2Rq?=
 =?us-ascii?Q?b02+nV6YQgMVrMNLG8mDMXK8JmtQem4uUiYLp7XXLw2kbmyFSz0y6O2UUNt9?=
 =?us-ascii?Q?jIYl6GWrhdqgdmwSON2DxYpKQQlK+EmPdK+0RRbOtxptJm9cwgSah38jtgc+?=
 =?us-ascii?Q?8Eel0MCueNe+13ZuwqILMK8U0mTATNgS221DDaL8R6dvafw8mak9SJetxOe8?=
 =?us-ascii?Q?G5dzg8fyfQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: nxGjpHIbE8mu+0+nRRR+8w9cCL8/umQ3j2y0ZUdgvIaeDZ+DUfFxHQx8EvttTnQCx5lg5/xXM+VB7dcMMiwIMrqjiiwSRC5JhZLpg/8sFK7MnbUHtk3xAUzuHISYDFXtCJ2B3a4sVnfbcYI3l9qDyO/PjBLnEcA++ofqzunly5xNHwyacxXmrIkTaLZrPZMNGkmznK4BbCcKDCABU+kj5BxigRjQAANNuXFc8MqWJHnTbEV94kQp8Fp4ExXMXlIRSIMzATqF/bTt4exsPCTr/BfecclBM5HhtILqyHV7Z9r5Sa+2+eX0OQ6bKpCGJLH0fQApkAn3Td7iKVJkYTEZtQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bb67a8b-33a3-44cf-6850-08dea5250d52
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:49.1331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gxvJJKE1v8GbQG5OhGd8XJbPv2p/WLPr+CzgJnIR3A1X0OQ2JwfqL1XBMIoDkmwuWH5U1i7p01n209F6/f/URw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8156
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
X-Rspamd-Queue-Id: B010C4851E0
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

Factor out the link training state reset into a helper in
intel_dp_link_training.c to prepare for isolating the link training state
from the generic DP code.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c               | 3 +--
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_dp_link_training.h | 2 ++
 3 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 442610054d7f7..ef7d5e55cc468 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3728,8 +3728,7 @@ void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
 	intel_dp->link.mst_probed_lane_count = 0;
 	intel_dp->link.mst_probed_rate = 0;
-	intel_dp->link.retrain_disabled = false;
-	intel_dp->link.seq_train_failures = 0;
+	intel_dp_link_training_reset(intel_dp->link.training);
 }
 
 /* Enable backlight PWM and backlight PP control. */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index c4e461d24e2ed..653b974e925c2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -2222,6 +2222,14 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 			    connector, &i915_dp_link_retrain_disabled_fops);
 }
 
+void intel_dp_link_training_reset(struct intel_dp_link_training *link_training)
+{
+	struct intel_dp *intel_dp = link_training->dp;
+
+	intel_dp->link.retrain_disabled = false;
+	intel_dp->link.seq_train_failures = 0;
+}
+
 /**
  * intel_dp_link_training_init - allocate and initialize link training state
  * @intel_dp: DP encoder state
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index e68d51bcb42e1..6c0c74e31a3c5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -56,6 +56,8 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector);
 
+void intel_dp_link_training_reset(struct intel_dp_link_training *link_training);
+
 struct intel_dp_link_training *intel_dp_link_training_init(struct intel_dp *intel_dp);
 void intel_dp_link_training_cleanup(struct intel_dp_link_training *link_training);
 
-- 
2.49.1

