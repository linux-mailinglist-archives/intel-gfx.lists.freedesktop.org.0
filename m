Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDjNEUGu8GkaXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEC7485557
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DBBC10EC8F;
	Tue, 28 Apr 2026 12:55:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lGBjahW0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9C2010EC79;
 Tue, 28 Apr 2026 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380924; x=1808916924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=yXGhDXAtghJVNQ/xvHznTfvTPG9zZ6OJYeRWZbBfsVc=;
 b=lGBjahW0x75TADMnTPIlsP7Q0fb4t/UMdcsBtqpFQnL2SwDPT8UQ75eG
 vZx+XrBR3e6mwQsRyO/SKT36aGCqOGyNwo0v8NGLYWLGy3729R8ryity2
 xfq+/se81r8j/ewN6LVTR9n4rFBIRdUaitt8wB9bHeT0vYc35Yn6b+hrk
 b6vCg0fRTgatWt2bUrYt0Uj93mOKTfxhRY6F7q1xgGd/YXc13vRyLKxFU
 we5diPBlBP9kgpxNkK1pHvFohsMlj6CqyYUvuLgWPb/WcF62UkI7NKF+Q
 3KxNi7Y7d//jFIDtiwZwS4tbOC6vn6tgyCwr74dnxuy/sNxfw46hgiQWj Q==;
X-CSE-ConnectionGUID: 7twMJiwiSSGsSCiUnW1pbg==
X-CSE-MsgGUID: r6QxnuO3T86As5q+2Dg2Cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203306"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203306"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:19 -0700
X-CSE-ConnectionGUID: 6uXwpdtMS4yqf2kx2Ugq8A==
X-CSE-MsgGUID: QV72dZyZQwy7FsKlwavDwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244808"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:19 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:18 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:18 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mkRh1lNtqzDPViPR7lUT13yAUToIK1VLaZSbVm+4pLhIOFt484TtYdozI8BPhxlnDcsWbdVE2AUcJwokpdfGn0gzfUKJY6+yYuE/3eWxYEgc+MkVmrRH5/LldtIA4JSO8b7pnaAtCkHboB7nXnKu9aW2URC0+6nSROlIrGPOiaBuVZBcuYfZTXUlmYD/zlg6CMsgAZghkGpWKY6fL4cPuDNUgF4lYEREzaZbdp2pmuTk2uwnYd3ndrJJOjHJLadnPmHHpqVjxUHNVOZeimx059pHtQeLfDhlLaILF1SSZkX8At64ib9RFhKEwM+kaXP4g2tOrHCn2gVCanjQmublYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cB5jOuqDm/h2ptXqZu+cB6dIp6qrj+EMymIvtIbO5LU=;
 b=RS/WKIjbK2NF7zY7bDD9737h6bF8dUssPiZcKtfm0Av1U6SM37GAJU4l6+9S8rdP159gotgNznun8iXyZ9GqpUTVyqC9doSex8xaxSrspxkF27uc+CFjBYrdvqOUcF6uU26Dr59BIdO2Y7NpLX+RA1V7a+jW82Nm4wd1vFCOIKGQmOtK/QCKLwYG8bHyCXzGtEpeYnslYt91iLzzVkXY0YExeV0jFbr+JMqMnUGN+vPJ9SDyan2v8FSEU28lDEVHa3rJq4upk2sBk08QkNQSSzAdj45yYOFqlaDY+rc3xNnvj4p0e48nQEOiD+5FtGQvaZujnmB4DumdB4ub9XXO0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:55:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:13 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 074/108] drm/i915/dp_link_training: Use config iterator for
 BW-order fallback
Date: Tue, 28 Apr 2026 15:51:55 +0300
Message-ID: <20260428125233.1664668-75-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 74362438-91bc-43cc-173c-08dea5255068
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 3DB/E8c9lygszL8C8J9uUy8utGDyW7GKBBmAA2hiUh4OM2L/c2b6X6PD9zB2pJFNOgFvP71m5t4jxM9uhyO2C/DKphEJwuDNNr6gcV/A2ul1c5RtcU38YKYWkUnFR4qQHkbebO7xjSgcTUTEBtLIrjs1d4WFlmfAqxMFrTkbKRVaSAY8zFIsp/3sTCwck0m+sFJNbVeu+fw2PJjGtATsDGOwVSgk3Cfxcii6ukjvCIYKRKmSllbiubhqDl8+ffYDxFWtwgUYxYZGD4zYR1c0T0KyRNRSqyc64BY2wklErqmdQjhwp2FpWWG3YWkAxqnZDsAkDeC4HObLCycbxewpOVbbkX21vtsRhIUgvZs600scqs2nL0yeAeVIYqPudv5FTdgRwdNN2IruZFEeZSirO0dRvftsdHyIFttckcy4FA8v6HI1R+b0QFaCz4SyP8sZwe5qXlF6KwD+DRmy4pwrOD+rmlyD/VTFCrKgG2H2Jq6X6gjMMemyGOxX47zvcm0XBK/TH8+a9z/BvbEb+RuqtgPmQXwnnNh9b33Vj+ZzdAh5l++yX6QuQ5+C4ElCU+NEpLeecYlK9PhA7hBuv/pYCf5Up08dLQtS+c0X+LMCeuN0LLreSF4UPyB4vZWWuinwMvvGIWizjMUXMyUMlWpC2pQ9iYLFR9EbbeDYFFa9Ki5gLjKNx8df+LilPwTu0z4bahILok6Hea5jD+/z6HrbQe66bVaCGWnsZuL/9v/IfI0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KE0cVy6MjeQ7Nlvs5pQ+AkV+HVvqER3PpqP+5DB+y/pb30kd1Js1zPnwJVEQ?=
 =?us-ascii?Q?zW44tFObUNhbQ9eVHlrIr7NQICTTre4CsD56MLxhiLJnaFZdV7X0hVwKM1GV?=
 =?us-ascii?Q?i/fxczYkt3aieX4vZaTcCURa2fwlfDuliaS24ub1HPCOcfzbzNohTdUAWWvM?=
 =?us-ascii?Q?nVr+Sy/1jUi4XJ7dL/4ogf9uiXRUJPSJreSgh6M+67SdiatWN+I19OgKo0SJ?=
 =?us-ascii?Q?wiZp0QyF+UGlvoB5Q9YF+AYwDEQDdEQifEIPsDIa7finNoKFygb4F0LXbcBt?=
 =?us-ascii?Q?s94ZtSoLsuOq7iwvJ2gPD9ym9vMTr4UIlC2wBr1C8XzesmH2hJVoMBrefJy+?=
 =?us-ascii?Q?Gq5D8kkNgYy7i2te7KZ0CqK6dMc8lY0I7pBVh1+lhVQ52tqN6ZKGFbZVnIzY?=
 =?us-ascii?Q?PHF1i2pFhZ0SdTkIXt+MaEEJQxunAqgYU58CymDMv/PS9LHW3571PbgQaMQj?=
 =?us-ascii?Q?sxaDQxBeca0GFdUKyy0nR+S+IqOcB+gXsTyXd+gZFjyFngJXsTA+c4QcWrRI?=
 =?us-ascii?Q?5Bv/viPsrsSJAYOYstkf84zlcWxieUgpBehRPKeabGBhtbIrIV4lcTmW0glo?=
 =?us-ascii?Q?JgcRIBAjzVzs7j+/z9GfG9urQtaOq2ld0OIcPm6MRF38uQHhskEY9YNkpG0g?=
 =?us-ascii?Q?DemX2YkZv+R4wGcjczN37O6noYjQZZyxs0s9UiReFPFS9NpWBWw6bNOcc86e?=
 =?us-ascii?Q?x6EDdjd10uFaBiaPtx405wONWxGQ8X4FSAZPFgSqXWriyYazWS0W7mjurQAC?=
 =?us-ascii?Q?PRMDJoJMEr8w2OLmDpYrmq24Qc+UHSNvm8+eTMWC32Wel2npzo1eOVjGVwi+?=
 =?us-ascii?Q?2qhd3Y8Gns1jfxBbWH51vwGhfWrEd1AulMDng+BNqdybV+6PzEdSwf/94qvS?=
 =?us-ascii?Q?0jgvBOsvOkEdlUh8IecSuYBWfsXbXkN3kShnAF8g72eCfjWuwDd85Q9EJsyE?=
 =?us-ascii?Q?FL2eE1sLk0coIL+32sSm1AGUJyVxaIZOkuP/xjvmotDWyq0Y07f0/9x6XEWc?=
 =?us-ascii?Q?zeox4DEC6IPfSaRky4z5o0sVb5hNKJYGF6K+5wxgxMsWO+w6yx/WwRcFmJNL?=
 =?us-ascii?Q?KDNWy/xBT0uKbYBuffzC1ky1WucZl+Pv34yD5AHlnBC5pIHDxwwYXCRuqMn3?=
 =?us-ascii?Q?IX4p3x9zuYJttrYiL+uS5HXCjGLIfnKZkCmj4IhgQ0iYp7hjpAVCK+U5iXTk?=
 =?us-ascii?Q?x1D1Re7/BfB9I43csDoeXkWjFFkPemrnR8VKStTW4cNs6C+HXA8dyY4iKMsS?=
 =?us-ascii?Q?o713STO4MBxVQ8GrnobE5MKh+PR/ovBGVL4eH/TVD1a5BYdzR3KBBBDRzTCG?=
 =?us-ascii?Q?mEJ657L1vRNJ+VStZMkXh0j13m3kzQJqNNFDG9QR1MzJQ4OlH7TNfA1J64eo?=
 =?us-ascii?Q?1102HfBaUyjMWJOyKjTbD6lqHxCowS4DCIHAb5RFgIfFgJlOJGTx00e2Ij3j?=
 =?us-ascii?Q?u3Anz8I+Liilt0d41BlTrUex/WT4u8bEGW8twFCKs+qU2pNUi9UlueZ7lZVM?=
 =?us-ascii?Q?qvSxWPpx9Ti4Poj5MRAUZZeoX3JQgMBLoIDFQk53edFNWZUTwO1YXtDDfGFU?=
 =?us-ascii?Q?MQVT9dscI73H8m6ymkf37Sodp0+RdlBgSfaDZzx7OzIoQLlQuwtatD5+eOb1?=
 =?us-ascii?Q?UUHzrDVWQsjBA1RLWQ72rSHJ7p9Nn31GOgPD86rmEFUFjtaCx88+cSi1b3U3?=
 =?us-ascii?Q?ss7HHYKnHglinAOzHy34Aze6hB4jATkc0KF26EYX0WMe2D7/vdECPnwRa06U?=
 =?us-ascii?Q?eejDxQ6fYQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: wOKpM5j0L+Dd7UtsvYp809V6NZbqHpWUJtIC3p7Eh7xaV2ngEWVa6XZUA2kjUH9F8ylLAxeDqWwpA8EAvXEvAIjDDQKSNr9hNPqZDG3t+Y8UWFAR99uxpqyw7e8hfpXndzvhcfMnQqmIC+6+JHCIAx0tQLEYRUaC1yPMhWNpu8Zzgf6ONtYzYzFSc/fdOruPH+6BQAUEZDhOHYp7dyoibci09mbYItYAT9kJWWmkgkYRH6bwO7t4A0VnaAtz1LR+OTRWQBqsnMY9jaQfnNmet65YtIwa8fyyRQnsS505hAWIhRV12L5fgc7Gi9fWoCAlMHlM+AKwqjKtjWS5v+286Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 74362438-91bc-43cc-173c-08dea5255068
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:41.6400 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8p06eI3FRJuUMPryWMVwNjlUWOickY1+GkCm/2I3pJFX8zQJ9FLSws+WOlYzenSp6S66H5SUTwrlNiloPyWAiw==
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
X-Rspamd-Queue-Id: EBEC7485557
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

Switch the BW-order fallback loop to look up an allowed configuration by
its iteration position rather than by its configuration index. Currently
the index and iteration position match for BW-order used by the
fallback, but future changes will make iteration positions key- and
direction-specific. For now, use the BW / ascending iteration order so
iteration positions match the config index as expected by the current
code.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 17 -----------
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  2 --
 .../drm/i915/display/intel_dp_link_training.c | 29 ++++++++++++++++++-
 3 files changed, 28 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 284d28f9d98d7..103490eec3d23 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -878,23 +878,6 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	return link_params_changed;
 }
 
-void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
-			      int idx, int *link_rate, int *lane_count)
-{
-	struct intel_display *display = to_intel_display(link_caps->dp);
-	const struct intel_dp_link_caps_config_table *table =
-		&link_caps->config_table;
-	struct intel_dp_link_config config;
-
-	if (drm_WARN_ON(display->drm, idx < 0 || idx >= table->num_configs))
-		idx = 0;
-
-	to_intel_dp_link_config(table, idx, &config);
-
-	*link_rate = config.rate;
-	*lane_count = config.lane_count;
-}
-
 int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
 			       int link_rate, int lane_count)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index cacdda15a36af..b380beedd8990 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -107,8 +107,6 @@ intel_dp_link_caps_get_config_by_pos(struct intel_dp_link_caps *link_caps,
 				     struct intel_dp_link_caps_config_order config_order,
 				     int iter_pos,
 				     struct intel_dp_link_config *config, int *config_idx);
-void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
-			      int idx, int *link_rate, int *lane_count);
 int intel_dp_link_caps_find_allowed_config_pos(struct intel_dp_link_caps *link_caps,
 					       struct intel_dp_link_caps_config_order order,
 					       enum intel_dp_link_caps_config_match_type match_type,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 69396dbb94b2e..9dd302bb4968b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1760,10 +1760,20 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state,
 					   int *new_link_rate, int *new_lane_count)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_caps_config_order bw_asc_order = {
+		.key = INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW,
+		.dir = INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC,
+	};
+	struct intel_dp_link_config link_config = {
+		.rate = crtc_state->port_clock,
+		.lane_count = crtc_state->lane_count,
+	};
 	struct intel_dp_link_config forced_params;
 	int forced_lane_count;
 	int forced_rate;
+	int link_config_idx;
 	int link_rate;
 	int lane_count;
 	int i;
@@ -1775,7 +1785,24 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 	i = intel_dp_link_config_index(intel_dp->link.caps,
 				       crtc_state->port_clock, crtc_state->lane_count);
 	for (i--; i >= 0; i--) {
-		intel_dp_link_config_get(intel_dp->link.caps, i, &link_rate, &lane_count);
+		bool config_found;
+
+		config_found = intel_dp_link_caps_get_config_by_pos(link_caps,
+								    bw_asc_order, i,
+								    &link_config,
+								    &link_config_idx);
+		if (drm_WARN_ON(display->drm, !config_found))
+			return false;
+
+		/*
+		 * Atm, the index of the configuration must match its
+		 * iteration position.
+		 */
+		if (drm_WARN_ON(display->drm, link_config_idx != i))
+			return false;
+
+		link_rate = link_config.rate;
+		lane_count = link_config.lane_count;
 
 		if ((forced_rate &&
 		     forced_rate != link_rate) ||
-- 
2.49.1

