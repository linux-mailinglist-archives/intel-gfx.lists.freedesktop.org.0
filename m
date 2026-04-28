Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCqmIR2u8GkYXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 369DE4854E5
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D0B10EC71;
	Tue, 28 Apr 2026 12:54:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ftXCNx1K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99C0C10EC44;
 Tue, 28 Apr 2026 12:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380885; x=1808916885;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=2iUumiEWNGS8H546x+wug2KeaBNxDGzk50ztXls4RFE=;
 b=ftXCNx1Khr2IvkOUb4Zsnc9JaqBnLTKIfRN68rGRE0beORYMjOw6GMGZ
 uLBFv3FxucxUgR2G52+jkUeUnDGiHFvlNw0t1syhheWzvJ0y9tpHayebT
 +/3F6/clwM652DhQNh9qYnuFUsmBMpa61N/Qigv4WGkr810kMYg9H+vk1
 pTE9MwhKwZ+2oqvAcIBaPARRLMFDPvlS4TgUgdVaxZL43aRa3Q09a2n4N
 m/J6qUeJ3PPSPRz0vafEuak3QkMmesWkCETZr5H51s5Q8Yf1ZzQsFD6S1
 AQgZDzMEzzoQLZ8LRmy4cKwVJEN+RnGgV9lcju2oK67pf4A6BJLCu7qqH g==;
X-CSE-ConnectionGUID: CR7vP2TRT+WMy9wc8xnfkQ==
X-CSE-MsgGUID: rfWKZHSRS2CQfKrP/5Wlqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203227"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203227"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:45 -0700
X-CSE-ConnectionGUID: n0NxKsHJQ4atq0U1lZFx4A==
X-CSE-MsgGUID: 9pDIdsIYQhKWkl0MeLDl1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244508"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:44 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:44 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.57) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UwXozFhqgVS3h9nYJFmOn8qz3bspZ+v+6U7NJj/XyWZOBSFkeKZdV/ZQIYA0NvvpE9Zs7XsDADbf7map5l9z6aYytruDS1rayOOYimxIZJxHm1F9QI5H80edigJnjBePXfLIbpnVb/uqt/Eap0vs4+XB+xEW7n6tFRfue91eapIP5aZiBaHxe/RG5GkWp85oOfbx+zvxnJvOnulvtkvGYQXrh2gWKTF+5XuDkupo9oABuCDrt1Gou5ooNlcrhmaB76pYL5mkXHjI2Fri/345ehwQoG5HMdLG8KRB1/SJvw751eTug29ZxLt6mZtW13ZGUisrOXYC0BlFjsH9W66GkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0IbhyiW8hk8WkFsiQ0HC17WbJZhphDKCDg2vnysog/8=;
 b=BKpnWppWAySBZ9LTmSsOartDHQiKMKZh3beOmxNT+TgBEXr/xLGJLiGDEGNttkEGHCUL34ORsydVdJWC6UwltEBiWiux+dSfjXPBzNSk5mHI7CZKPqwKNIwOI4Kzpp5Rfqct8aeeHkFKa0LmlOK9x3DENQkCpOWvrYEhE1R4P8h7Aswb8gXzA/7d7orBsWEmqDGLZtfxWso0zRwSzC1dwvKYsFOIFPKI06theJB6BgpjAdJ7ET76oDiL4LXt2YM+etbuePgvJUlppF/xxQzP7jHqtlKnRFFwW4hpV/rpNBRrhhlyeIs1eG801V0K9nHfFjBFl04Djr2Cy9ELm4Jnjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:34 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 067/108] drm/i915/dp_link_caps: Move config table members to a
 substruct
Date: Tue, 28 Apr 2026 15:51:48 +0300
Message-ID: <20260428125233.1664668-68-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c42984d-88e2-4c84-deaa-08dea5254988
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 9y3jw2b4lPVe03SmutotoLYmL7CVcWt2pSgddL/GscvGjw2M7EKWXR6WF7CvNHmfwD+bHf06v3bQiMauy12IrvmeoHPEVZYF7UArXDoBXXTLx3KwYjKLrM0sZJwlReTNOoDMRk+2dC8zWPMhrmcON0qU/QUz4CiS6wIZHNkFMWpyEFLSj5E3mHe8vHG7j8b0AEfr2OmCMGOW2Efu8fhP/mVQe3WkjazJciJMx2SQUrwEUSUMqdvM041WWbl/Q+OoV/P1hAaKsoeIJuVFNm3XwGj593SHg+5K48pUl2X/9/NhPE6A/y0iaYqFio4vDV/DGTS51SsfIM91SOOj83LpuYIZfG3L0VibSDdamSXlLWHfatjhND5p+SMzPbwyHDwrJXGPMnII1y/QgC5MrXLJyruIapNF7ogBpYoDJeZVzsNQBBr5+olGA4EGOYbKRqQIkuh0w6WrLU/r2ZfX37nvOCakcxC2jGGS5zKQSTDOMKqRwRGJEbzLfwJRcMnsrANx9DMh0UDonAXzNKNO6KR8UAwcF/osmdW/7uKA2WLzfX0yifHF7TPjh9tT++VJvrp9EPfaYyPN4kttQ3GG/X0sbHPZavySFr6U3bYWROKAhh4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BNFvMtPG5vpp6LrwBsHZS0644Sqa3by2TSkgiLAPHNda4YwR2iQfWZv67C5g?=
 =?us-ascii?Q?X7UHv1dCK1v95TXGPkhDoNYmS1WFSrH3pVOIi6ykJioLRhPphMTQ3I54B6VS?=
 =?us-ascii?Q?A2t17cq7roKzOzGNwDk1OqSgBbvJwwbjp9JTusfLJJ3OIXYv43CVgZxK8gvx?=
 =?us-ascii?Q?xYQIVH9UFy/+K8CFHiNAy2XTAFeS6bVj3K+u77qbe7r5AQD0uLnYH0lHjRtx?=
 =?us-ascii?Q?UhcWeyLB1OZUCKhmOzh0UCQw8xJol5ZEsOkieAciFDD+3vatYkAKUwZM3dxe?=
 =?us-ascii?Q?JDpiwYeOtBCgCOos0YUgVFLJXFov5fB3qurCGkr3zuSL98m1zh+JFXs4vLE0?=
 =?us-ascii?Q?P/pWiVaa5Ip0XCdYjkbYumoEhwrlNC7S+VCkZr2HUb1v4C+selz4VdC+3iHh?=
 =?us-ascii?Q?I+xLameENBuZ6bAqC8E7wl+EutYquiNoaw455tumM+NLM1o0TmcWgrbd8uSZ?=
 =?us-ascii?Q?yFMu1IaLs/GIVXbiwZuxI9e3wxCjpWKgirTk8TTAPrLlxOC82D3z97vK976B?=
 =?us-ascii?Q?TpZcXMtmDHFqgFzNTyT9PhUmfFbBInXVC1OiKMddkyVf5NLbpcWh/2LPWULH?=
 =?us-ascii?Q?4UdMTo/FBe3GA2ljh+khC7C5qjVA3p5GgRMDY0L1qmMpIDHZdz0wrhgduPpe?=
 =?us-ascii?Q?EOrHvrz0Gr65mXdhBlkAOSYZl682XZTtgU0ud9xDp/cC/pl7qnDJYEi/jdDI?=
 =?us-ascii?Q?V2lITnQUMOEo6YkdrBcNNUIbYpsnzkmRYvtfvLGIdrdJhgoo+dRtDOFhRpAY?=
 =?us-ascii?Q?XI7fPAlSyms19FjLyFNqtDkQptR6/t64F8T4SkI6BA2737bX/5LT6Z5x/Akk?=
 =?us-ascii?Q?uQhs1lO5NsmI0ldR0kVNRLuG0/ie+H9v/YuvRGPP457JK4QEke49QE6wz/mA?=
 =?us-ascii?Q?5UiIqr0QTUCMkzMxzAc8Wl0usK+q4qoIgplE/y6I8De+WpWtfncs1a2R4Tfh?=
 =?us-ascii?Q?BIySr1ehhMSJWNx7mBZyMN6ghGX0jf2Lxn4fL8XbhZAiT3O2bDcqi3cZ4/tT?=
 =?us-ascii?Q?am6rnIV/oPfJtiDs4ppdqX6a1bN4+zXOdJg6Tj9ipkOOa929wlCqcjTJ3zDl?=
 =?us-ascii?Q?KXl1KR+mN07hzzJ3NEd4Je4o7sN2HLLL6Ruu+y16WVZYSVE0tb+DwebZ140e?=
 =?us-ascii?Q?NhtYz6wBVlh08UmU/iAaXKGrD6rUoUA8ikfIIQdDdX3IsrefNuCPrr4ywK9K?=
 =?us-ascii?Q?4AakRReE/P/YayPA7BCSJAWbgiN2c99JPUnn7lpX6pHVqh+nDBK+mZaHRD7T?=
 =?us-ascii?Q?1UGLysREZLagf34I8Q0QPpzARMBSiAlk5ekXeA6jfgCfj2hygshctGS1EDp4?=
 =?us-ascii?Q?XO/bSbNax0A1btUdD32Qzd4WIohm5tS44muItQ7XBaZBm0VlB0Krte7Yy7Y5?=
 =?us-ascii?Q?tA7AJZwVb4mF9612Wg/7J08mrzKsBJqsFmCGTUMnKE1OnbgOStv3Lix98+44?=
 =?us-ascii?Q?9ThZKYrcB9WW6sKfUQLB/kdwcVwLFKtO/iI7XEOBmfZNNIaFQXqaWTLhzLOm?=
 =?us-ascii?Q?dpVM2JGdvopeAXKp3n9yV9K8uMacyaa1rY+wXwwNmelq7iibCflcdwm137rd?=
 =?us-ascii?Q?kPfornvlXwqGNhkhQhFBBFdViCNtH66PC0vyYIKJghc+sGjJh99a/8PIdZ8H?=
 =?us-ascii?Q?0RS7lWEscIu00HlF9YOEH+SO9zUWhDTAc0lOfnnCw+z3W9gXXl7klDhrTgDd?=
 =?us-ascii?Q?UP/IIiquGaFZLYHYkJdsS/7dOM8vWCy7+5bh46E50QlYpbwodtqqw7YzTVec?=
 =?us-ascii?Q?RwnH0C54nQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: hrJzWKOyOJZ9KWPw4LVIUJKyAoiMur274Is/QcpkuO6inzIIfjEVP1UdAhaElC7gq6n7T0b6RTAjIruTCkF8iamqVs95Gm7+zL3ReQvVNBh2syps9lYgBsic85H+M+EWt7NXwxTHFlubCNkx8p3Kvfa78euaUGEffvvnbak5f0oUH6RXzNuFM7C0jaIVoLm9aVUIjKqVAxby1kutbhCBt7s7Ej8OdA3vr3i3ZCHZlDo1rvSxd2jQnACOmIlADOfBOcNNbG8iJMCWCuAVrrMPdY0AD4OZdpNzjaadK50GRCiiktpYmvEsyNS6MNkuwL7f96q0kV2doic/wFPKmkZgKw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c42984d-88e2-4c84-deaa-08dea5254988
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:30.1936 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l0lTs7YkcayT5Hqm8xJzandEBgaUT529UPBODyTVjmVi+6HPQMc4VBbwpnrsXt6HOHOwb0P4smG76sS450yyJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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
X-Rspamd-Queue-Id: 369DE4854E5
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

Group the rate/lane configuration members (rates array, max lane count,
and config entries) into a substruct within intel_dp_link_caps. This
provides a clearer view of the related information and prepares for a
follow-up change that will precompute the table before committing it to
link_caps.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 112 ++++++++++--------
 1 file changed, 63 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 01eba9fb0b887..81c36e3326bb9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -81,24 +81,26 @@
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 
-	/* Rate, lane count caps common to source and sink. */
-	int num_rates;
-	int rates[DP_MAX_SUPPORTED_RATES];
-	int max_lane_count;
+	struct intel_dp_link_caps_config_table {
+		/* Rate, lane count caps common to source and sink. */
+		int num_rates;
+		int rates[DP_MAX_SUPPORTED_RATES];
+		int max_lane_count;
 
-	/* common rate,lane_count configs in bw order */
-	int num_configs;
+		/* common rate,lane_count configs in bw order */
+		int num_configs;
 #define INTEL_DP_MAX_LANE_COUNT			4
 #define INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS	(ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)
 #define INTEL_DP_LANE_COUNT_EXP_BITS		order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
 #define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
 #define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
 						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-	struct intel_dp_link_config_entry {
-		/* index into rates[] */
-		u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
-		u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
-	} configs[INTEL_DP_MAX_LINK_CONFIGS];
+		struct intel_dp_link_config_entry {
+			/* index into rates[] */
+			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
+			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
+		} configs[INTEL_DP_MAX_LINK_CONFIGS];
+	} config_table;
 
 	/*
 	 * Forced parameters requested via debugfs. Remains set across sink
@@ -141,8 +143,9 @@ struct intel_dp_link_caps {
 static int intel_dp_link_caps_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 						    int max_rate)
 {
-	return intel_dp_rate_limit_len(link_caps->rates,
-				       link_caps->num_rates, max_rate);
+	const struct intel_dp_link_caps_config_table *table = &link_caps->config_table;
+
+	return intel_dp_rate_limit_len(table->rates, table->num_rates, max_rate);
 }
 
 /**
@@ -163,10 +166,10 @@ int intel_dp_link_caps_common_rate(struct intel_dp_link_caps *link_caps, int ind
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (drm_WARN_ON(display->drm,
-			index < 0 || index >= link_caps->num_rates))
+			index < 0 || index >= link_caps->config_table.num_rates))
 		return 162000;
 
-	return link_caps->rates[index];
+	return link_caps->config_table.rates[index];
 }
 
 /**
@@ -187,9 +190,9 @@ int intel_dp_link_caps_common_rate(struct intel_dp_link_caps *link_caps, int ind
  */
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate)
 {
-	return intel_dp_rate_index(link_caps->rates,
-				   link_caps->num_rates,
-				   rate);
+	const struct intel_dp_link_caps_config_table *table = &link_caps->config_table;
+
+	return intel_dp_rate_index(table->rates, table->num_rates, rate);
 }
 
 /**
@@ -202,12 +205,14 @@ int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int
  */
 int intel_dp_link_caps_max_common_rate(struct intel_dp_link_caps *link_caps)
 {
-	return intel_dp_link_caps_common_rate(link_caps, link_caps->num_rates - 1);
+	const struct intel_dp_link_caps_config_table *table = &link_caps->config_table;
+
+	return intel_dp_link_caps_common_rate(link_caps, table->num_rates - 1);
 }
 
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
 {
-	return link_caps->num_rates;
+	return link_caps->config_table.num_rates;
 }
 
 /**
@@ -227,13 +232,15 @@ int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
 void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
 					 const int **rates, int *num_rates)
 {
-	*rates = link_caps->rates;
-	*num_rates = link_caps->num_rates;
+	const struct intel_dp_link_caps_config_table *table = &link_caps->config_table;
+
+	*rates = table->rates;
+	*num_rates = table->num_rates;
 }
 
 static int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps)
 {
-	return link_caps->max_lane_count;
+	return link_caps->config_table.max_lane_count;
 }
 
 static int forced_lane_count(struct intel_dp_link_caps *link_caps)
@@ -291,12 +298,13 @@ static u32 calc_allowed_config_mask(struct intel_dp_link_caps *link_caps,
 				    const struct intel_dp_link_config *max_limits,
 				    const struct intel_dp_link_config *forced_params)
 {
+	struct intel_dp_link_caps_config_table *table = &link_caps->config_table;
 	struct intel_dp_link_config config;
 	u32 allowed_mask = 0;
 	int config_idx;
 
-	for (config_idx = 0; config_idx < link_caps->num_configs; config_idx++) {
-		const struct intel_dp_link_config_entry *lc = &link_caps->configs[config_idx];
+	for (config_idx = 0; config_idx < table->num_configs; config_idx++) {
+		const struct intel_dp_link_config_entry *lc = &table->configs[config_idx];
 
 		if (BIT(config_idx) & disabled_config_mask)
 			continue;
@@ -382,13 +390,14 @@ static void reset_all_restrictions_no_update(struct intel_dp_link_caps *link_cap
 static void compute_max_link_limits(struct intel_dp_link_caps *link_caps,
 				    struct intel_dp_link_config *max_link_limits)
 {
+	struct intel_dp_link_caps_config_table *table = &link_caps->config_table;
 	u32 allowed_mask = intel_dp_link_caps_get_allowed_config_mask(link_caps);
 	struct intel_dp_link_config max_config = {};
 	struct intel_dp_link_config link_config;
 	int config_idx;
 
-	for (config_idx = 0; config_idx < link_caps->num_configs; config_idx++) {
-		const struct intel_dp_link_config_entry *lc = &link_caps->configs[config_idx];
+	for (config_idx = 0; config_idx < table->num_configs; config_idx++) {
+		const struct intel_dp_link_config_entry *lc = &table->configs[config_idx];
 
 		if (!(BIT(config_idx) & allowed_mask))
 			continue;
@@ -573,13 +582,13 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 	       intel_dp_link_config_rate(link_caps, lc_b);
 }
 
-static bool current_common_caps_match(struct intel_dp_link_caps *link_caps,
+static bool current_common_caps_match(struct intel_dp_link_caps_config_table *table,
 				      const int *rates, int num_rates,
 				      int old_max_lane_count)
 {
-	int current_max_lane_count = link_caps->max_lane_count;
-	const int *current_rates = link_caps->rates;
-	int num_current_rates = link_caps->num_rates;
+	int current_max_lane_count = table->max_lane_count;
+	const int *current_rates = table->rates;
+	int num_current_rates = table->num_rates;
 
 	if (num_current_rates != num_rates)
 		return false;
@@ -626,6 +635,8 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 {
 	struct intel_dp *intel_dp = link_caps->dp;
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_dp_link_caps_config_table *table =
+		&link_caps->config_table;
 	struct intel_dp_link_config old_max_limits =
 		link_caps->max_limits;
 	int old_rates[DP_MAX_SUPPORTED_RATES];
@@ -640,26 +651,26 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	if (drm_WARN_ON(display->drm, !is_power_of_2(max_lane_count)))
 		return false;
 
-	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(link_caps->rates)))
+	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(table->rates)))
 		return false;
 
 	num_common_lane_configs = ilog2(max_lane_count) + 1;
 
 	if (drm_WARN_ON(display->drm, num_rates * num_common_lane_configs >
-				    ARRAY_SIZE(link_caps->configs)))
+				    ARRAY_SIZE(table->configs)))
 		return false;
 
-	num_old_rates = link_caps->num_rates;
-	memcpy(old_rates, link_caps->rates, num_old_rates * sizeof(old_rates[0]));
-	old_max_lane_count = link_caps->max_lane_count;
+	num_old_rates = table->num_rates;
+	memcpy(old_rates, table->rates, num_old_rates * sizeof(old_rates[0]));
+	old_max_lane_count = table->max_lane_count;
 
-	memcpy(link_caps->rates, rates, num_rates * sizeof(rates[0]));
-	link_caps->num_rates = num_rates;
-	link_caps->max_lane_count = max_lane_count;
+	memcpy(table->rates, rates, num_rates * sizeof(rates[0]));
+	table->num_rates = num_rates;
+	table->max_lane_count = max_lane_count;
 
-	link_caps->num_configs = num_rates * num_common_lane_configs;
+	table->num_configs = num_rates * num_common_lane_configs;
 
-	lc = &link_caps->configs[0];
+	lc = &table->configs[0];
 	for (i = 0; i < num_rates; i++) {
 		for (j = 0; j < num_common_lane_configs; j++) {
 			lc->lane_count_exp = j;
@@ -669,12 +680,12 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 		}
 	}
 
-	sort_r(link_caps->configs, link_caps->num_configs,
-	       sizeof(link_caps->configs[0]),
+	sort_r(table->configs, table->num_configs,
+	       sizeof(table->configs[0]),
 	       link_config_cmp_by_bw, NULL,
 	       intel_dp);
 
-	if (!current_common_caps_match(link_caps, old_rates, num_old_rates,
+	if (!current_common_caps_match(table, old_rates, num_old_rates,
 				       old_max_lane_count))
 		link_params_changed = true;
 
@@ -698,12 +709,14 @@ void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
 			      int idx, int *link_rate, int *lane_count)
 {
 	struct intel_display *display = to_intel_display(link_caps->dp);
+	const struct intel_dp_link_caps_config_table *table =
+		&link_caps->config_table;
 	const struct intel_dp_link_config_entry *lc;
 
-	if (drm_WARN_ON(display->drm, idx < 0 || idx >= link_caps->num_configs))
+	if (drm_WARN_ON(display->drm, idx < 0 || idx >= table->num_configs))
 		idx = 0;
 
-	lc = &link_caps->configs[idx];
+	lc = &table->configs[idx];
 
 	*link_rate = intel_dp_link_config_rate(link_caps, lc);
 	*lane_count = intel_dp_link_config_lane_count(lc);
@@ -712,13 +725,14 @@ void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
 int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
 			       int link_rate, int lane_count)
 {
-	int link_rate_idx = intel_dp_rate_index(link_caps->rates, link_caps->num_rates,
+	const struct intel_dp_link_caps_config_table *table = &link_caps->config_table;
+	int link_rate_idx = intel_dp_rate_index(table->rates, table->num_rates,
 						link_rate);
 	int lane_count_exp = ilog2(lane_count);
 	int i;
 
-	for (i = 0; i < link_caps->num_configs; i++) {
-		const struct intel_dp_link_config_entry *lc = &link_caps->configs[i];
+	for (i = 0; i < table->num_configs; i++) {
+		const struct intel_dp_link_config_entry *lc = &table->configs[i];
 
 		if (lc->lane_count_exp == lane_count_exp &&
 		    lc->link_rate_idx == link_rate_idx)
-- 
2.49.1

