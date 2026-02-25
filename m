Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yObQAjgjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA2A19A9AC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E4510E7A1;
	Wed, 25 Feb 2026 16:28:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CWyhJH6n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6EE10E7A1;
 Wed, 25 Feb 2026 16:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036916; x=1803572916;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=H+2qFCbkXnEd4rKWPmOi6tDtjWq59+5hXUVjWsqTGPg=;
 b=CWyhJH6nzT31a1VHCSOzulHmXWKBV6lfibxaR8i+LtFeTmLjSYm+YAoN
 PNL6HFiKLMcHCbY44kcHP2JU4O3DokVKJUcC1gzjAcg1EcUlnAHG5yGJE
 stuxuu/ntsz39S0THF+XnFlXWo3tDRU7mij4JxHlzWbaZRc63Lw3mK+DJ
 ne4SjN3lPOgwFmvBpl3VVfCbeZb2Nwy61Abz3Eh4CuXIELFxoJPQcUFcs
 nA8h1cb8SdmQgH8VzKcfOs6Yw32BAwqFBC9KTUqhSnBwDpL+XS0FbFKRi
 T8W1m0ew6Ho5bwsBBFnrLsLW8W7bBT/biLAvdrxa+BVBtbb8w2hs4SHU3 w==;
X-CSE-ConnectionGUID: nnW7iE3FQ0mjp7WiHWWsBQ==
X-CSE-MsgGUID: T/Mm7qTQRK205Qc6+VAkAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84175840"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84175840"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:35 -0800
X-CSE-ConnectionGUID: iophQiWvR9KdweJENooNqw==
X-CSE-MsgGUID: +80mrIBhT6SYLgW31jaFHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216425747"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:36 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:34 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:34 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.21) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nrv+0/kVmP2Utrnvp3U0kxLKESqMldJNsHA8gEDNeLcEzBoVRQplP1IDP8rXNMccJTEk73wx2hd8SLW5AJ6eHfjBn4EfIQZSVvsrV5BenNAURDaPQye89csxUhQxElTTmyJm8Lpm+COeJavDoNNgE1CBvJidL7jLkmOU3VZwcDvomnNAkxhIXJhfH00qHVsnTppgkR7+53Tlghpm2jBnm+EoeQ+Rr8Ss/jjPk25rWolpPlsreeLalwdftZ5hB7FDPQOzU469lfFQt7NHwjgHxXX9bbEW2gHJmElO+ZzvAX+6i3qt9iefXWeD8zbou5k/CNEq4xqB4HNlfFv7K8qXMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1SF1BE3dou75SQgslTRklfdyT88UoF6u3fUBNoLHbeg=;
 b=c7ik6KOq8HsGo5l3Sosg1fxhNP+6o1TsPfrVp160bC4lxFfRTBWckoGx1Shs9kfFkGo1aoyzlmCjGxKE2Ex2kbc6L+zLrKAH5yDsNn25zKEank2iQF/Hr48AGuW48zuNNyFuq57CU5ekoM0AHd3+fbr1ahHIxp2oHc0GPQRh3krKdD8TzlJ5Sj+Q2s9RjodTMdNBneY22lI8jV31GNnnkNy7lcghKhhPAV1yT/qcWw/KMFYgmQ0vrbHGCXdNFmH2UjoLvT8svUZdxZBWqVciH13N3s3HFee/qMZgHRQI7ym5EFYyrBcW7CgXAPIHl+EZ8TORIfbxE3vj2jVQBLSkhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:32 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:32 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 00/20] drm/i915/dp: Fix few SST HPD IRQ handling issues
Date: Wed, 25 Feb 2026 18:27:31 +0200
Message-ID: <20260225162751.1255913-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF0001DC1A.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::26a) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6365:EE_
X-MS-Office365-Filtering-Correlation-Id: d6c31de0-ceaa-43e9-32a4-08de748aea1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 4i9eEjvUaMDBtot/ES3z10UZa2b+H31/hNShlbV5D6nMuvjBeMgRkX965SRdqeA2w8jGuDuEimpKpbAX3nKXPB9feDQ+ZIfcorhaAAapz3C0UwgMBZee9MA1Px0bNgZNoDbRnjeb6emZIe71zpUPiCK+lirkCYectIIxdnRWazpVLDxLBx0Eyfjrh2EkRHRdlACyqTlsgEsPLJ0varnZAKkqrDt98iYixP4miBMQWlWOmufEZ+MSnpOjZ1qvX0XA8W1+J4q5KjlfTHguZjzSAD9obNjgzXEt+Z7YbKWBqIkmRuzMuIDfHK9BJ5/AlJXTAt5GzN8kUa5X9ZXx/HAJEjbzhM4wCEaevU4wtETYD2OMsFULf+5CR+fBZoTgpiI0yh2UeWFuuyCcMDPEQqqTHBBcH7bmnt3O1Un55DKN5BeMq8rHlGk6qgDKmJIsoYMXMpMEdIQeup3eWgyIIDu2XtCCZW8vlwT04mfnI+WsioQ3bGmlxzjdrUtZWcL7GrbyElJvgK6V0KpwgGVGEDVLrD84EAtArj7PqvBnzcdg7cOuzh3ifRYexlvuj678EMq5QuarA86gU6jGAGtk022imwy4h1Za4/aLJPMB8DvythWR5GqPgp7Eins/CQN2DWtkbkR17RB1iYGe3vo8kaiWskZLkTLwGmlrOvdbvm3+RGpRH/wUsfE4tcnZR7Px2KHs5oB7sTLuEgqX6YPd2KkWyJZkyhvE8/FOT4h2FtiCTuU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?E8zb3NwcBquBTV1SjGiwytyQxZdPIYG2wLm7HkyaHnpBg275zDha+CVfBWPh?=
 =?us-ascii?Q?lSz9Gb+8QO9dZKH6CkU7tJ7tJdDY126CkR707nSBscAUHZwI1P2DmwGTfN3o?=
 =?us-ascii?Q?8jSktK7QWLpe/bnlBCsqanFpCPxp0TnlvIPswNHX28b635wYUFY6sl+Dyz/3?=
 =?us-ascii?Q?i+zHSVFjNq2DD4BlqlX5PFAecDmiqYKURNIkTI9yPc9FJ2RIW1qkuagtME//?=
 =?us-ascii?Q?ovbnnkFNAQJwcWiGKVtYFjRl/UE6a8LR6fcG1AVZ1YHP169H3apRbV/MfwoV?=
 =?us-ascii?Q?aKcH4IXjtaOiU/rC4X1jLbybYA0ETlF0WW8Qe3/pLnOuXnwCoCwmCDwPit+0?=
 =?us-ascii?Q?9yxZDepNgT2ljrJ9UZyd1nColgee5f/k03QJ1lFIYTRL/R9hDZzKxFxhDBAm?=
 =?us-ascii?Q?2HUloyqdxa0nkRoN94vcrShoR6pqEPpPTTXWlh66AUjkRNrmzJVNC1mF/lVt?=
 =?us-ascii?Q?ZN2eZwJNsrnXdefjtujtllSs5m7IJfbrvsI88yl6jM7NM3PosJRi+K1SKgWv?=
 =?us-ascii?Q?PBl0O0oPQ5qKOjb1wee/deblivV8DmWrBJNmBmGSzOn1uYDGlxlv6z2EV9SA?=
 =?us-ascii?Q?HHXb9FgCgD7EndOjm5yyFSAiQ7HPJkmXW8hEYMi9Y7g7WZa4aS4WhqT6as8b?=
 =?us-ascii?Q?8MyVHxOL9KapxG5n7f4bBNkXNyo3FIDdhPOwLdkLJ3DS3KE54Ad0OUQgVq6E?=
 =?us-ascii?Q?0kxK6pvJVaQ9iWhNGAEWEaLciv88qWRbt296aBjbPe8kYXppVHlTCxRvP75a?=
 =?us-ascii?Q?XLPsYkTjy2C/pzZojisUKBcOR/WXlsqvzNHFoyvBHESujGzLE4qiC5wpS1dl?=
 =?us-ascii?Q?5qls5UJK0zrS/HPbkKgxvp2g0sd/xFsATl6wxdH0d/LPh5dyO8YxwUDdzJa+?=
 =?us-ascii?Q?YotCLssZyssHbe39aoBEOmWIBgVk1VQUGtJwOOCI2P+DIQffWJXUtB95acJa?=
 =?us-ascii?Q?XO+zYIMCnsjJY8JspczFaTpBRmFY4dssA0CyTicnGVb8AwdXh+ZcuyBEnjvQ?=
 =?us-ascii?Q?zeEg8/Pf+lZ9MbiDVZQTOYoXZeZGdNYUGytkxqC/BxVWVNkdoDeZUJNgy37a?=
 =?us-ascii?Q?6LnkkaFc5Fh7Va4p353zQyEHokkF/OpMjP4r0cenrtFij6xhlebqAuJkux1f?=
 =?us-ascii?Q?bybo+MJ8OtXhFdXMxf7x4C4ija4LztGlanMEKXK0XZP40QU609DfbTqQQm70?=
 =?us-ascii?Q?LC4WcBodjXtQ5YEEOe9As7tkQvKM4ASvlfmSCsihs5sUI1qyhqTNW1g+XCB4?=
 =?us-ascii?Q?EeQcTBno/P5h103wQchyhUrE5BiR9tj8cDFk7Hgei5BaoHqw9vRcOQ2qIMOC?=
 =?us-ascii?Q?V8skXVauD35FYY4p7pNiJxYZ3idwqI3Euy3XlU6ggfqPt9mMhNMKQHnncUCh?=
 =?us-ascii?Q?jy4wNMUm4vozL04B9M/DyRdVEfXBrLW/OehmPn+QOGicZyxvS0M92U2J6Iml?=
 =?us-ascii?Q?Q9FndSbHjxSvkS3t/y3lcenA0A2WJZz8pyUeycKnKUgTyoRvuz11nhcIbB/g?=
 =?us-ascii?Q?N8pKa6OgEAhe6f9NISAdbgEDx7VPBEwqB70IicImSJYHKo5Ne9txUZc5sQvZ?=
 =?us-ascii?Q?IiZRyV2SNsteiEt23Jqh201T5ptRWg7ZYFHkwv4q/4nB2RkCFamCWzs65jdq?=
 =?us-ascii?Q?Z2X4wa+9Wh3wIa/Ic3hUPqLgeSU9tx3+wr3olb52HOxkJfDDkqzcfJzUR8OW?=
 =?us-ascii?Q?HampwZQYOuKKuro9DaY+LPb8cBunyk0R0QDqZP0muUicPw5fWfuCplql9mZk?=
 =?us-ascii?Q?g1hyyU6BvA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6c31de0-ceaa-43e9-32a4-08de748aea1e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:32.0247 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MxAg8EjbyTrVSKmX83bxmOima0lFE73iBL/U/V47xS0g3EGVyS7K7hlK/eneL93TKc8W+5ABbp73KTUAI99ocA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6365
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5BA2A19A9AC
X-Rspamd-Action: no action

This is v2 of [1], addressing the review comments related to bool vs.
error code function return values from Luca and Jani in patches 2, 11,
12, 15 and adding R-bs.

The patchset also prepares for the upcoming UHBR DP tunnel support
changes.

Cc: Luca Coelho <luciano.coelho@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

[1] https://lore.kernel.org/all/20250626082053.219514-1-imre.deak@intel.com

Imre Deak (20):
  drm/i915/dp_mst: Reprobe connector if the IRQ ESI read failed
  drm/i915/dp_mst: Verify the link status always the same way
  drm/i915/dp_mst: Reuse intel_dp_check_link_state() in the HPD IRQ
    handler
  drm/i915/dp: Handle a tunneling IRQ after acking it
  drm/i915/dp: Handle the RX_CAP_CHANGED HPD IRQ
  drm/i915/dp: Handle the DOWNSTREAM_PORT_STATUS_CHANGED event
  drm/i915/dp: Don't clobber the encoder state in the HPD IRQ handler
  drm/i915/dp: Remove the device service IRQ handling from connector
    detect
  drm/i915/dp: Fix the device service IRQ DPCD_REV check
  drm/i915/dp: Fix the link service IRQ DPCD_REV check
  drm/i915/dp: Reprobe connector if getting/acking device IRQs fails
  drm/i915/dp: Reprobe connector if getting/acking link service IRQs
    fails
  drm/i915/dp: Return early if getting/acking device service IRQs fails
  drm/i915/dp: Return early if getting/acking link service IRQs fails
  drm/i915/dp: Read/ack sink count and sink IRQs for SST as it's done
    for MST
  drm/i915/dp: Print debug message for a sink connected off request
  drm/i915/dp: Check SST link status while handling link service IRQs
  drm/i915/dp_mst: Reuse intel_dp_handle_link_service_irq()
  drm/i915/dp: Ack only the handled device service IRQs
  drm/i915/dp: Ack only the handled link service IRQs

 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 253 ++++++++++++------
 2 files changed, 171 insertions(+), 83 deletions(-)

-- 
2.49.1

