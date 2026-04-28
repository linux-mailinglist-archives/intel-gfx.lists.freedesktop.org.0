Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKsxLmyu8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCA548562B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB45110ECBC;
	Tue, 28 Apr 2026 12:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ISSWkHp3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C4210ECD0;
 Tue, 28 Apr 2026 12:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380967; x=1808916967;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=In2Y9g5BM6SzwCXTsjRgzGumt+82JvNmBtmwOPdr5Oo=;
 b=ISSWkHp32Vfr3pz7E2Bl9GZv72R6AmNmWsk0BlebpGhrSLBpxhlMyQg2
 zmZOhIZK1yo4m6yFFMx45iF0BgxsOYDaqzl66ibKagW/2NS11U61kG9sG
 R6ypDy2od1P3h3wGHNGkda0QmmnxxINTMgftJIPyyrw6+OMFs7s8LN7mB
 UBNA0uyj9edhi7p0vforqKEOyQIXAjofwQ7BdW6aVi2QVw8wtMVblozSf
 aZRT2kSbk8W/mbqiD3kMnDru3Rn15C2h+rDOnZZX1hhS386TEq92UA4em
 tG2PJauLKsrFkexoQAYxy/BuszUtAA4hyaCyucphWozXiAjOHRgxi05HR g==;
X-CSE-ConnectionGUID: DCjPOhj7SbyVmDf3iGdaeA==
X-CSE-MsgGUID: pmC4ojufTQuUGecxdE9iRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88883738"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88883738"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:07 -0700
X-CSE-ConnectionGUID: Jq8cpobbQ4ixTKqfc9sRJg==
X-CSE-MsgGUID: LdDrjKT0TEyYydiP4qz/fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="230795278"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:06 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:05 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:56:05 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HabcO+gKf3CGi/zOFajm1wd0f5S7kxTDZm/DN7Z+yL2ST/TYimPEL74RRXHZd49LkDTAoLjOM/scmPxHIwlDi1KKOXzQzFnhlE7xC5cqKuJz+Ur/2Tsd4uv8FpYhVscd7Nan7c/tmGT76Nj2OsRmRSwgUh6refohVt6HjskQRjxwE50eiuPtVhzEKmEEKYq+poOo8tKFoMXUypBj3KJZ300nZgRe6zXeDpJ/4iZ4LtTsqnngeLAOAZoFlr76bpRSLgcDfXsZ3iXjdzrShwZuxx7NaL0a8YZuoRvESRJo98wMS4NGKP1xzElcFMCmIaMHHKERHqLnCwwB6ib8RbqpaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m/TG8szVyZJ1iB5/SFN6gHRNlO+6LZD+HVG+lg9ycQI=;
 b=LmY1uE6l6DH548I0vJIVwUDkJEsdS2zEhfhfPvqiOxw2FPS5ZGib/CZ4TlZK/bi8h2w8+2TVzTrKskLnDMuPWXd2Xe59OZ5xan4nLaHXCIplG6NzV6a+xtq86XJreVyIhIEV5ftIbXGUIXyeHBp6DxwxNWugdurk6KFSgRNXYugfKbTlvn625WzigaP1Lt5psEdaizPv2tHJZljEKH/0PfSZYiyUgupPt7X1MsuIPdLp567J7JTCPnfNNBHSuOk4s9Bsnmrw6zdDNRaR6NeLNa/9QK0vr2WTuOarauUFefQynCgeO20o6DW2/LqbnbyeD0K2WjFzMAWiubB0sTnxoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:56:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:56:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 102/108] drm/xe/kunit: Add display test config
Date: Tue, 28 Apr 2026 15:52:23 +0300
Message-ID: <20260428125233.1664668-103-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: f5683876-cecd-4abb-e3f0-08dea5256bba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 6h+trjI2KuTCxUrzBQaiuSKs4bE+odw7ZWqJ8zcNvZId//RXIUTiFi+T4/8vp3mYg0XV1G9povzfOGaySMtAJwNp6SLB5U7q/mV7/5H3TCMCXCksrHimJOPswGrFFwTukb2Oj8O+dK4Xr6KNVEDUYpWWwGalPjvTAT+OBx4a+VFUIAl2M9UCTN4Ps1gLjdhSCcE1wwReSEtUteKZ8xPlpUlBc8pTkpAnLIZRiX/4O0FViIRahtgcjUIDyQQyy0yCnK6QdfETf7i9AZw5877TNtOltYImwgRcD/hCIMDvsUnL4NdWQm21y302z4Lcy3267sr+jQM0GUu4HKbQvfZTb2H5qbuOfLa2TO2N3Rg0aHdko9XCBPVuipFCebanq2lR/FlAXfyKWRA/5VgosEfqsFf9CQLemtbPEEcDDHay6sMBTbZJutRPLtndvPzJFdx8xelRHQSZ1+9pSDGacx4NUQXnVPQz0n5QVvzZJc9O6WHBKUcsI9Goe8gSYHMajYIRbbPrg8wEwo+UtLs84UlShEJOuh8YgoL84ew+CzilASi+Pzqjxg7DqAp9AHglnV1OIxTLkIDGKCdrGGLZHtD6bhF3uYhDy4X1bg9cazGWHZjtwexw2LdEzzAMgTOloEROikSJ7RJf3lK07FDHZuhXycuMOKRtkulIchbgZRr6TDAOoJC0Xsj0GlOV1lgNOdBfJHN+wxF3G433nRfKrPuPOBk/aBjlDMWpaSybIm1GnM4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XqeihtSUhpCku10XF0piPOVxGA4HN7TAAga0+XoCDjkiRBU5NxJilJAu3nz3?=
 =?us-ascii?Q?blxy/yUX51amq9iFNaRr2VomsQGGzhGS4TkJ/UEbcO54hbPO+pp3U6GWQbMt?=
 =?us-ascii?Q?jDqsEiSvSYkfczpMXm6WavPRjt5aUthC4ceqvWa4Z0SM/XfR/ZGNlZf/cKvv?=
 =?us-ascii?Q?ftNOQDt6ALCC7MmerVB8ubCxwEaA8S1kqyM8qs0i2UdvvtD8egFebgmmMnS5?=
 =?us-ascii?Q?3yeF+3lXgY+GhzbaUjroUkjY2N4SC+uj0Dp+w36NQ6Ryqnz9w/WklHNqMgPY?=
 =?us-ascii?Q?cJbKDz/rtfwE22y/XW1zPOxU7n+A9OcSbPdUZA9oSUpnWSxT/30NkuPIljZF?=
 =?us-ascii?Q?hcbS1WoU2yaxBW8F13J2QLmsPbYeRLav99J+dzNBthKWCsWllnvYmtYmDiW4?=
 =?us-ascii?Q?Sx77alp7NdInikehfTueERaVh3/tJcaVzMO31uJtnC3tDF0pgOH7356JORfI?=
 =?us-ascii?Q?WKcp2fdn/HK2PXajZiliOVg6J6Qa3k+42cYjWClk3bxaaNBnaTDtHWkzT7Nc?=
 =?us-ascii?Q?lWSTy43W2iihUFEkF3TQJ48QzkWNGnyuZDS5iU1cEnAc2LdJ0tpM5ar4rQFi?=
 =?us-ascii?Q?Wb3kqQZ87EWiWLSKXJLr8epglkH8X0ucxj8X999PlfTXZZdUaZRN5z4MYPSt?=
 =?us-ascii?Q?sfsdD3Bg6Mfn944a+uppOnD5MeKxaXRdy3ICpWom2OM7fjf7Fv0qomC55cf1?=
 =?us-ascii?Q?Qs/iR+XGb8l5GctAN9B5x8eauiy+pln2QBTb9oCk96ByBEAB3LSVVJii0gCZ?=
 =?us-ascii?Q?euqG7GmjFCbx+tKrfCSv6IAocqmAyn89ZgJfw21v777lnCG3Zbey5F85S6DX?=
 =?us-ascii?Q?KiEf6C38qFnzDcMWdZnZzxEObXSrMjvOFeti242yyuzMvFnAvKMdgG0guaQQ?=
 =?us-ascii?Q?eSeRZ8zwUdmzHVAFwlVhR6pml9M5/XKWC/b+dZs/D7b0z8GxIpH0O1zrGyCB?=
 =?us-ascii?Q?IfObVZ3FCX/vWJ8GgnkKc9S/7VpXu0fAFaX2sV7e3RgjJtejc0XXtk3c3pBF?=
 =?us-ascii?Q?+PcOC6xtS+Mk7gU8BqGwF99e+8IC5DCmIiDAHF0FUN7jGxJvLxTFCpibQAZW?=
 =?us-ascii?Q?K1vl3f9SEZHrzycFknCrhe8VjRj6veylAyRaie8WnjIgaMV2CgB21EshM5z8?=
 =?us-ascii?Q?0dPd8oBueU5FdCJFHJydr2NwT+mrtMU4tU4UeaMt++NVXfPC2HFmUNLLZnIH?=
 =?us-ascii?Q?/kCRrxQ0m2hnB2o+CH4e6J9NYozzT5KoE3EtJr24C3+HIsaaNCieIUr4V5Eu?=
 =?us-ascii?Q?1bhohi6b3ksmwagC05VO0NnmiLdKhZgY9cecchQaMyUNUI7BEGXA/oDOox4J?=
 =?us-ascii?Q?tkHnfV5j7/Cx7TV+ImEZe1viHg9i6Eb+MoXdM+ppF2f+xFaw8z9P3u58cPmG?=
 =?us-ascii?Q?A0zSeOUakLpO+ID9/q7aeneiHa981CGTcWEnuMlRNk/FO7/0a6XX4D3MujJt?=
 =?us-ascii?Q?G7nK78jM65ms71F6r5v9OpyZIbPKwawQ27ZvOIyOezbVaLzungYXkVr85rD6?=
 =?us-ascii?Q?SnAv95JtIa2lK+x6b0JQNDXkj4gFVcm6UJGG3P+9pxHxDMCHqP/bRz6uUhJQ?=
 =?us-ascii?Q?NWQldIgyM+TxPs+Dc5HIYBrNnL87FfNQHyZrTbDgeL34iY/hmU4pNSUkpqgO?=
 =?us-ascii?Q?s+fqcSUy76DpzxpGllXl+djMTuyhQX6luNoXYpWS0dMMM7O5xfwqefNZ2NDR?=
 =?us-ascii?Q?XRWf/S0lm4K/Qqfa6IKAzJ+Pemlb59gT/DtQgYCiralzSdhR8/jZkso7cysr?=
 =?us-ascii?Q?ZP7zQpyvcg=3D=3D?=
X-Exchange-RoutingPolicyChecked: lK0fMZhrtZzLpU+pJvA4yLLxhxGvAQsqP73x4TspIRVFcnFDitUW3hdXBS3Q7t81Fk9ISVPHUty66NKPieLqeHXOxpINRJgiz2wNJ3G8SlkJvlK51Xrf0MxahLgqdifeWh/hpb96ghOdnqYhAliSJq1y5TR9gh3ZWKzITyDC0TWE6uri2q5RFXAQmZ1XrvZSTZhReWGKQOx4CfC5kOnxLbFEdouj2nC8h7QpB0QeZ90xy0Yx/Xs7XyYwvcq4CVGMyWSF4MM8DK/G9wjgKYrO2M7ShuA9EBTWZeGyuPvWrnBiKGDKEaASNtXcuvOy4uKlXxgrTZufEx1d9enHTETfnw==
X-MS-Exchange-CrossTenant-Network-Message-Id: f5683876-cecd-4abb-e3f0-08dea5256bba
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:27.6195 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9F3Xlxs0OVRBAr2gx1I3YiZIeK1yYONxo79l4DqqNNIoMNjLFm+liL0xM9ONgg3KRDAgKvfz9OwyiQumpBTmGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
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
X-Rspamd-Queue-Id: 6BCA548562B
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

Add a separate xe KUnit config for display tests.

The existing xe .kunitconfig builds xe statically, which is suitable for
non-display xe tests. The display code can only be enabled for xe when
xe is built as a module, so add a separate display config with DRM_XE=m
and DRM_XE_DISPLAY=y.

This can be folded back into the main xe KUnit config once the display
code becomes a separate module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/xe/.gitignore           |  1 +
 drivers/gpu/drm/xe/.kunitconfig-display | 11 +++++++++++
 2 files changed, 12 insertions(+)
 create mode 100644 drivers/gpu/drm/xe/.kunitconfig-display

diff --git a/drivers/gpu/drm/xe/.gitignore b/drivers/gpu/drm/xe/.gitignore
index 8778bf132674d..6dad8a5a21355 100644
--- a/drivers/gpu/drm/xe/.gitignore
+++ b/drivers/gpu/drm/xe/.gitignore
@@ -2,3 +2,4 @@
 *.hdrtest
 /generated
 /xe_gen_wa_oob
+!.kunitconfig-display
diff --git a/drivers/gpu/drm/xe/.kunitconfig-display b/drivers/gpu/drm/xe/.kunitconfig-display
new file mode 100644
index 0000000000000..17020aa4ded3a
--- /dev/null
+++ b/drivers/gpu/drm/xe/.kunitconfig-display
@@ -0,0 +1,11 @@
+CONFIG_EXPERT=y
+CONFIG_MODULES=y
+CONFIG_KUNIT=y
+CONFIG_PCI=y
+CONFIG_DEBUG_FS=y
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_MAGIC_SYSRQ=y
+CONFIG_DRM=m
+CONFIG_DRM_XE=m
+CONFIG_DRM_XE_DISPLAY=y
+CONFIG_DRM_XE_KUNIT_TEST=m
-- 
2.49.1

