Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JAPKRWu8GnwXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE9D4853DC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A15DB10EC01;
	Tue, 28 Apr 2026 12:54:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LTLmXi7b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF6610EBFD;
 Tue, 28 Apr 2026 12:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380872; x=1808916872;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=gbpmVDxg55guS6F/jOeSe56db7vyHpKujTkI3lhXkOw=;
 b=LTLmXi7bVDaraPKIEfkLwg+4u9I+Yf4md4xvUp+8DN5m3bca6Ta6SZ7I
 EIb72w/b2GrRpkVh9xsTbLNqE0Tfu3WLII1RL10Vm5u+VY2748NjnZZGI
 wjqfow+7+tKUui46cLJDpiRywhkcK5BmQV4OfjSNQpAtDWdeXIFRyKtRB
 7xbrutKvDqUMDkxyIYJXZsP5llv2jRYlKnXQ3lAjImiH/mRjLiZ/1ck27
 X03wfB6xTLbe6M7VZ76gL/RydKsNZQUCvem3WOcHM29ekHka9R6JVgR7D
 5esi+2LrqTGkrBShieFlxhgNUQC/orLnYsiZpjTxu2GmkMBumnJMqbrqo w==;
X-CSE-ConnectionGUID: pDnf11RnTlWMTAf97Xl+AA==
X-CSE-MsgGUID: jhNUZkz6Rj2rIOEIEYcTOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100945227"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100945227"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:32 -0700
X-CSE-ConnectionGUID: x0SYBm0KSfuluAYEsxpu/A==
X-CSE-MsgGUID: WsvdQJz3QK2/S7Ifp5bPxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229377728"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:30 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ltw4SOqWcQC9s160AKcprgilXnx+v0uSE69mt/fUMJvGX+T9lNwxgMEw8TDOUSB3H49ly7nxIfP8fg/yEc8p0XKlIkEv5gaBZ7Hf15JepEtTVJ8SEPIj4ssqZfk/FsHZqU+SilCb+UGculupexmGyKCaDEYXMk1sMEtkoucoHkuCuhHVcpmNTu6UVSv8XiE0p0iW35/dN8VoMVF7VpRghAmU5OB9Rhcl242WXv5dUEZgXCUato0uMyo2YjiFhh2tlViKIsIjbFU8H8W+YHhsWd4ljEQRdmuKHjZajYt49E/vPo3qqGqN4/sqPF959XCYY87nF5BWXbnbUwlZXvHgIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wA7KFGXHssPol9ojRGi16qGwkEvghUUadiLzfqADFB4=;
 b=YnwvQA83vR8Dn1N/SALGB33JDGvbjIBmcai+c/ARMNcs4rGwW8gpyzt9C88y8gkjxA2UHp60XrPTeV1NcbmG7LaQPE57c/jMJETe5cFouZxyIAXPd1BThuMeZI/eNPaJONwXbZQ5BqneAXJJbTMJC7zHqzRkVOLNUv1pWiNoPPMOHy32KOetImK6maOMzCUyTFJOOep9Y19CQs7CxWW5Iqnu3HlwnH06ItIX8D2jJ5Oqlh3INqBIaJRHMvaIsFoflsxnJRN7WOv6JZBgIPCykIIy1UaRZOSZuSyyylWOtPrGUiEgomic0xstV81ZA3mUs63FQgDNB6iHwxK9NsSYFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:21 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 046/108] drm/i915/dp_link_caps: Move max lane count change
 detection to link_caps
Date: Tue, 28 Apr 2026 15:51:27 +0300
Message-ID: <20260428125233.1664668-47-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 602d2dbb-543c-43be-1f9c-08dea525355e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: Zv4cVetKJH4cN69o3YjpqaNmq/M2+3XDT0HQah8gS6Apfh9sf5H8dOTvDbGNyrIzRxKI13P/74k1k3erTWkIo8/quoluOSjzdubmfi13V5OeDTZB9aW7C3FWwL4eWCM3mneMJ9OGYJaG8gfp8nBxnpY4rOGe/Y53at1pWuemjYfhlm15acGjQ1AZY8LTIwfDrzrSE6bTewJB+t+BqdQ7cy4xVvkYUjUptaOnXUWolZMZ84BWaLWmqoUV7e37tgwQ0pmWrRlsnoIHlPQIVRmp0GlrD03ZRU8/HQWyPcBDKgk7fcYkjaYXtl0+9eP/W8bv5BXR87BQBubnXMNrl2XI/C0D+HqFLMtG/jO94/Zl0LmuA3mJh9qLWLeF5pxDM5v3s9zl7OHpZ+1IAlKBhqHjAslfc9/Z+MCwVUp7nfpveas6jt4k4Y6C/uif4eaz3P+WyQynpjCBHbj8d3tAeOedkbL9CZyynlFr93pXd8eO9Rbot90qVHi4snKgkgV+yV01qT6ZcOxab/I1//52LWL5QyjeyRt/vB385AuqU0M09n2OHaNUgzJTdWV7U3yu2gWXtx+1+UbvzpoyVx6gPdNRlsiYuVRJVTTurWliOtpgJMYjL9chwhkAEKmVNMQnaonaH1vF9UQFwhl7u1DLf1oMxucwa3RZxgRpvm0CUpmgovF6tbceZnjFyT+dIuyz2gRvQjXtX+l3bHSaVVGXyedkisI/Iqn9v2CThwo1Gfrzq5I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fp62FBnr5P2ca6WrDfL4oa1LFP4fo85oyD4oIJy6qV56SnWwJlovHkeLkoJG?=
 =?us-ascii?Q?ZQ8bUR5mVO0TJ9O2AmNWdM4Ot0Syj7vQ7Lnmm/BjwZuRwibMSfxjLVRLO3Qg?=
 =?us-ascii?Q?ZzRrP5RtWjd6G7RyvTB70Uos9bXDNrTJ4fmutwB71ROqA+t8r4WW56AXTYWf?=
 =?us-ascii?Q?Ht0heyh7D1n2caLRnD029BEig1JWAW0nfbNS5fVRODJKCFk687K9X/Rr4M+j?=
 =?us-ascii?Q?1Zr/RuRMn5378F8PzIn45U1CB9New32s1mKVpxb1xTYaSgVZJSF3dXF0x+CN?=
 =?us-ascii?Q?VwhZls39Pw0m0ExIgdgvAffY4qmXfq1K/xh8Eu9ZEriivl4vEbLW2OIJqjhM?=
 =?us-ascii?Q?PNIvW8czQBVjY8oQYW2sr+EIRQCib3CfMqfxIzJtwbf+cmwglF/sVFh52Hqk?=
 =?us-ascii?Q?0NfzZQd25gL/H7WPPMB6zZC1D3XD/0vOo4rmSzErriNdiQLw0vb5PWeTGaTL?=
 =?us-ascii?Q?YBo0kW3mDvbuhXTaBrgNaaqznkguYM7x8Rw30669ohCgwkklS7SUPeFF+rk8?=
 =?us-ascii?Q?A3u3U64oJgmoQmp2HOjUalg2Xs1Dxcm2vkTJmxQkFwReGIYPEW/Km8a81Dr+?=
 =?us-ascii?Q?wU4GbNt6ank8Lb5tNVQdcYXM5NbMnTVwDme/+6rajWahgWlG7pSL7Hmk/wPx?=
 =?us-ascii?Q?UxRbYd2i/0/XphRixjLyq0huram1R66zBOfrcacDN5eqiT8VRJTcr1aMblC/?=
 =?us-ascii?Q?2yrpGOwjNlkGyczoLqK7p6EbZEajK5fPKJa6XEzqkF3HXo+ItTNeKUCs5KRa?=
 =?us-ascii?Q?J9txnJCsFBhHZFpFO9uydIhPS2LyRKJGOVslEFbHC9XwKPWhKUSw72WLrUX6?=
 =?us-ascii?Q?5r3dB8OKk6pWMX+ctXq774vhpfbqVuK9R9Hf3rU1J1Gcjg3rMA1AAt2NcNgI?=
 =?us-ascii?Q?prLa3HO3Gnl8cUsKDrZ/OUper5Ewn/6xr8IfOZm0pQtby4G/9luN+4U/LCG8?=
 =?us-ascii?Q?+1MxyfoyA3murKB1x6r4IUwRpHPBz1Hv+GnuqgnMKuwlIqmqKP7wowFZ0JhT?=
 =?us-ascii?Q?/QtwMwpCVlEJsVPs0O15TmcG7v/KYmDhMcpnyxRUUkgAYmTIDxfOsT0/YHod?=
 =?us-ascii?Q?+74yrPEVYNr+D/jSaVbYC4qfU6GVc6NZuWGdUTqcUFJ1PWn6FPGM1ZTmNMPc?=
 =?us-ascii?Q?/fyOsjBD/JoDx4SP0WLnZ6oj3pzddHKO874XHtla+L04/kyeLZZ6fO9W/Fje?=
 =?us-ascii?Q?d3h2e12K82UgkOL0DNFKjJEO036krQX3TMZ3K/IXO4/Zmy6HzKMs3bRd7oJI?=
 =?us-ascii?Q?5bVS//GNl7IZ5XhvPsMqElB8SPvlMVjS7O9HlLBwki/FakYbX8p6mEadkNGL?=
 =?us-ascii?Q?UHa5m3P3CSMPh2eSK9qQGTHC4haDJT4uCu683ZBmf5oEeBFg9PKQPl6tDOUU?=
 =?us-ascii?Q?CSeJN8nmgEwh80WVeMbS13N2K02lZY2OvPk9HeaM6sguJ3XfP+1hbAYfvmd3?=
 =?us-ascii?Q?g+KP6Y7UYnGAMe5HCFIEwff7XLzpSXJFS0XbKE5PlB9xeHXubr4UO2cbih9t?=
 =?us-ascii?Q?kBnnjP9zrXlFSO9roV9mTndZ22lYgrMS9rlhPqYiX3y6r/YgdyvbdcmMqOtw?=
 =?us-ascii?Q?jsgokJB+UhSDQQyRWCOGOOKckS0BzGyzgK/DtaXQiZGqee3gcyGxdmr+/aaW?=
 =?us-ascii?Q?ZIsivJfpCxb6h0VojTnhMmj3io24m5u4LpULgZ5vGKISY0+o+3bvQDYHJTx/?=
 =?us-ascii?Q?AgLJfva+6IeXPkOXNz3wh/yD/bnvAdI88Em+iELaMfSWCxiL8cHEflj5BDs/?=
 =?us-ascii?Q?cKZc0m6Jpg=3D=3D?=
X-Exchange-RoutingPolicyChecked: XhrbpO2QwGIMK85qU0EpkcPPTBWlXjwD6f9UUotxyoD1T9ROSXRq5HR7rh8IDq+gqFNghoPxnQ8eTuv7zu1h6W98Z5oq8+7O/5agDo6hyu0msVIPF1ZtFa9E0okQSnInf1vbYz5K4y4/jjqKGyZIEPoAv72O1imC+BbembmxbBv+T51fA/Gm7sTw+usOQbK5yATjez4Su+18Z5KdpOsgxP5ZFNFeYKiaNKrM6AejYsKM/hW8ukAPcPvgSxYMI7a4GznuZJU3OhK+y+8BxrHxo03eBVD0wX780wkNEvg9rPSV/IQ/um8blxLc+rz1vNDc0JcG66zH7cFa9xK9HL9KbA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 602d2dbb-543c-43be-1f9c-08dea525355e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:56.3416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GIBKzowZBfKu95BE43/BZECGzM3AsproxV0L0uM24NrLBj4xqqaZfoWqNtxeejGJ7qxTUK0Ty2QaoQhj0rSogw==
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
X-Rspamd-Queue-Id: 3AE9D4853DC
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Move detection of changes to the maximum common lane count to
intel_dp_link_caps_update(), alongside detection of changes to the
supported link rates.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           |  4 ----
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 14 +++++++++++---
 2 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ef980ab274e34..4e20e1fb20512 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4738,7 +4738,6 @@ intel_dp_has_sink_count(struct intel_dp *intel_dp)
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 {
 	struct intel_connector *connector = intel_dp->attached_connector;
-	int old_max_common_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	int old_max_lane_count_limit = intel_dp->link.max_lane_count;
 	int current_max_common_lane_count;
 	bool link_params_changed = false;
@@ -4749,9 +4748,6 @@ void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 		link_params_changed = true;
 
 	current_max_common_lane_count = intel_dp_max_common_lane_count(intel_dp);
-	if (current_max_common_lane_count != old_max_common_lane_count)
-		link_params_changed = true;
-
 	intel_dp->link.max_lane_count = min(intel_dp->link.max_lane_count,
 					    current_max_common_lane_count);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 214974658b343..a250d7ee06ebb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -193,14 +193,19 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 }
 
 static bool current_common_caps_match(struct intel_dp_link_caps *link_caps,
-				      const int *rates, int num_rates)
+				      const int *rates, int num_rates,
+				      int old_max_lane_count)
 {
+	int current_max_lane_count = link_caps->max_lane_count;
 	const int *current_rates = link_caps->rates;
 	int num_current_rates = link_caps->num_rates;
 
 	if (num_current_rates != num_rates)
 		return false;
 
+	if (current_max_lane_count != old_max_lane_count)
+		return false;
+
 	if (memcmp(current_rates, rates, num_rates * sizeof(rates[0])))
 		return false;
 
@@ -217,6 +222,7 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	struct intel_dp_link_config_entry *lc;
 	bool link_params_changed = false;
 	int num_common_lane_configs;
+	int old_max_lane_count;
 	int num_old_rates;
 	int i;
 	int j;
@@ -235,6 +241,7 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 
 	num_old_rates = link_caps->num_rates;
 	memcpy(old_rates, link_caps->rates, num_old_rates * sizeof(old_rates[0]));
+	old_max_lane_count = link_caps->max_lane_count;
 
 	memcpy(link_caps->rates, rates, num_rates * sizeof(rates[0]));
 	link_caps->num_rates = num_rates;
@@ -257,10 +264,11 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	       link_config_cmp_by_bw, NULL,
 	       intel_dp);
 
-	if (!current_common_caps_match(link_caps, old_rates, num_old_rates))
+	if (!current_common_caps_match(link_caps, old_rates, num_old_rates,
+				       old_max_lane_count))
 		link_params_changed = true;
 
-	/* TODO: Also detect a change in the max lane count and max link limits. */
+	/* TODO: Also detect a change in the max link limits. */
 	return link_params_changed;
 }
 
-- 
2.49.1

