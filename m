Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AtFLCDIzRWpY8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C057C6EF483
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TcQTweIe;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3529510EE5B;
	Wed,  1 Jul 2026 15:33:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ECFD10E0FB;
 Wed,  1 Jul 2026 15:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919983; x=1814455983;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=tvQBow547yT6EzM8aOOTMavroGiZjU98cHx0lqVUvQk=;
 b=TcQTweIeqVWiNzTdwsi5zImwPoGfU0YGfv8I9jvYvteq8yC8J1RVPB8o
 gBC5IvhtaJxT949zHVK8XXaXA8X/PCbU3BV8ElFuRN4f3T0/S7SnmCOqZ
 BPihrm1cPzE0Z4twN2xHAhePwTZsV46v/gyRRX8ZI1ilwySjoOtWWFjov
 SKpq5n7keC6tssOOLmoOOLqTw1e/BuqfPKDtH8PrOx4avUWUZYkAHg4+Z
 r6TVLKwJK2zmgMkOFO7jKkkQXUuObugjdgEZrrbGkcvB6uaIozMKdi5lU
 RD4S8oygS17Otj+xb8LGSjoBOARolU+jT5YwdKZ9usmk9Hr9x/eJYGu6I Q==;
X-CSE-ConnectionGUID: Br52CMR8QBCeujibxO5Zeg==
X-CSE-MsgGUID: xAPSFo5XRzCRiYEVqEKQpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310104"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310104"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:03 -0700
X-CSE-ConnectionGUID: OmMAaAmZQwi+R60TQJ2A0g==
X-CSE-MsgGUID: PBhUA6COT8SXDEqV680/lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515621"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:02 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:02 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JXY2fpOFPAI9O5UaRN+sK1rvhhAXRxl8UwrZk9ywp1Eh1+7yeWTydT8fU6mg89x31FowJg7EkbLlsNvg0FvoHbCiTabACTf/1cFes/wsWEd/GfwBo0w53bfBzM7EP0d+VdILZTNOVcOQ7VotEaqO18K6zhXZtMzhhppoyPp3HCRzkdlTJhppgO+hby5cWw/almem7+ngggESPxsNZbR+2AvngUdtgELGSY7jBqxRj0nzaXUOqBIWVgQ/fRU1rfZ0FjFmTK2c74jTYBoCO5C7c7MZvugGF3V2bweImjZUZxO8W3F+dK77yM9MiWWDTSWW44gDNJSxOh/B8/80sKZixA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6An/NMmK80hD7cyfIr1YfHYyHxzsJWde6vj4UFaOqGQ=;
 b=TCC9+CG0VXaytqo7FcyT5iXgiWmxzkPfI58JjS1T5xBLyidq85BtgFAfh9DQoPvTMhlO8n4LQ9Z9m/nAEi4vevtIENC7bV5X5JK6NWFngZAGfGd9IufG+z+HPIXTJ60u+nm78xbo6UVGZGdy3tWTKzMZlzZLGUASTMEtd27LK9Jwy6ulFm/zxQuyaFJ4y3kxidKbNst+mRSY0mXm5ydnia5bZb3sNosUUwySH4cu2tmTREys9afOIn7TestoQ+4aY8dLyISxWtu8PI+Ne8nYQfZcSXmQTtYffUTRXJrzED8M3gAi+KeLzQMdgJkQrZUDHZpbjOqUA10AL0eDfSGXXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:59 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 17/34] drm/i915/dp: Iterate configurations via link_caps
 for SST non-DSC
Date: Wed, 1 Jul 2026 18:31:46 +0300
Message-ID: <20260701153204.4124150-18-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 64826fb2-f8f8-44d7-9435-08ded786077a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|3023799007|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: LfNZuqQFORcMfGccu5z2ekQ/itzHfX2812wVPa1sz+I/4qp087qiNLEX1iyEpZM4DV8dubTKlOHkDld5Hj45ovbNpb0+WDDK7hp9jOKW09Vxhx2DC2nYGX998pf6v5kfM/l6LhcWyM8RU8/e7Tp0kjHg9ey9/CU5Bb0N0FvWQ62TK1AWkXIUzZ9gqyWXCZhGxCv0IwToMreBHp93FACtF8PXGXl6UAPqmL4hp2Bpo8UxH5/dkFss9n5ufqs/v/lJ1CyUdxHZCTG5vV+ftBwS+IbtXgrO0kHBIoTddsO97oykE9hdwnQYI729lw36ed+Spx5YEb/Cwp2pxV625qNA/hQPXP18cyKSAW50E0X64IGiksNNrDFYLlbd+x8YhA0MqsSy/F6XKOZF9ErfTyJAyKecLkIR81veskfeNZTwGSe4wBiD0Ef44EDcGiCoFe7w4z9Ccbq1FPq0CJaD4uu2rMsFma3qIaIceK19wD74NIep3fuCO/rB7FUPqnBItA7LozQEWme2Bp3zMCezKF3HH2XtnbY8AgvtlRgraFlQVFzQm5aKALIoEZSl8Imi13V4kRzlHn1rbq07f/EFmgrEWLriu039sHQncbIUHiRKNxkEnIV18rUV24HQO1/e98rzQO1MNf39nCM1UKYeV+NmBf58/zxo/0MfDn3Oc0Hob2s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(3023799007)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+C0xJCax6VTR2ueQWRr+4c6I+hlWQT929PmW6zJA03HRRdLjxBtlIhZ58nPi?=
 =?us-ascii?Q?JeRhk9EAuyOU8E73P9rA6tpJpaiNcnXu9n+4KNv1XLRyGYqc/BOyPSLPRDoz?=
 =?us-ascii?Q?23k2YduXjYfDyIXRftdSqgYwrGMu51MtTzG3Renaci7bYqivDnQNl6IxM2gD?=
 =?us-ascii?Q?vFKn9NLphFpkOlvUUVEbTvQV9X6RLv+rrhIWFnwp0S3aYbkReW5RA40J0hH8?=
 =?us-ascii?Q?haVl57RunlD3Dy6XjbEc71juXvhoKjDuKdGQ0DQjf6ayL+BDTO8KNRhAeEkZ?=
 =?us-ascii?Q?+cPIdcCnm402/VPJz7aCLoeZLct+mt4D8vMzI8UQsfJI09OuWqEnEZ2Fuyfr?=
 =?us-ascii?Q?Q5hASch5poRLqhlcUH9n4Kp9FBr7y7OBLPywQsye0/tqlt30jxflAwtZlLPD?=
 =?us-ascii?Q?LE6RHERdfAdAKt6GOt80xGoZV0K6lFrNCHZF5eQXL/i8dTIuBQBwuR6v33/y?=
 =?us-ascii?Q?Dr0L1xgpf0dc7ZwMy17rpZWni0ISQx4mYvpI6Bc2IHTilyuZtDsTY5qwRfSm?=
 =?us-ascii?Q?+rvN3L8EYh0Jvy9pkRZa8QdWPrfgmyREl/v3xsaALA0Xnr+H3UxV0Vxn9VWT?=
 =?us-ascii?Q?1qZoNP3OUhsWrf8riI66CxyW2/WoON6hPIrRYhADsVCCcSz1JQTT16edq/ll?=
 =?us-ascii?Q?V/dC1+wlynP5uX/jiF4TkXdZlBA3CuXG7VKQwjw2Aifw1C2hzMr8qG7KLIEX?=
 =?us-ascii?Q?uLWVedS/Y8QW4u562JrzoUq2lq9YzcVsgZwKCIDVly85951Ef8Cb2B1AzobO?=
 =?us-ascii?Q?pbq6NqriMIip+hgp51bgO1XYmi2bYg8Pa3xrrCQTstu8pDkmiaIrTgYsW+SM?=
 =?us-ascii?Q?VJe1byoSDrJE+bgf+QTNAyhgiqLQAObbienqgA+q559l1fa60z7s7WHmz5EI?=
 =?us-ascii?Q?Vw4tuAO5cBSepyX/wNfFVH6WHZADjBWAhAzblo9zawy/Ej7XNm+1Jaer1emr?=
 =?us-ascii?Q?bKE9+n/i3rCczTrzeLVIcirv/4f+/o+whgCUPGFJCaWEHHUBc08+0DS9SnvR?=
 =?us-ascii?Q?2WoBZkaBC6BPuRh5RrtDha+pJo1Zs4Ie444f5+8SCL1JYwg/8awlv+Gz36QW?=
 =?us-ascii?Q?xXnNTa5At2w455Csb7blH3HBOTeJfDZFhBLmRBS+aPvqEkKeN6RTDOtGt6Zg?=
 =?us-ascii?Q?Z19NB+Jv2tCXikRfwIBHHloCsHBSExbYTdd9Yjl0lyVKgNLeXNtEqrRMiVmO?=
 =?us-ascii?Q?IiiMlU/WOxrNrpf/4qanaoGo32kvChKjwOCDxgL4p3mY+fEKIVKvX/kBRnQH?=
 =?us-ascii?Q?C/wcCGUdb2e3/gA9rSqb39SazYDzNXekDX+ptcdPLo+5ugSgBq4NJemZdKzi?=
 =?us-ascii?Q?tBaYvGGpcYZOL8sGftQP1SdLQXpnevsQCeD2Ce46rVNxfNxstkmYHQDigHsG?=
 =?us-ascii?Q?gC5XyJCCH85q3HvcTnJ5CN5XtoKHortwcpezW3XaMLo3ns/mYH1/OcnSG4YB?=
 =?us-ascii?Q?SPN0mFeLiLdNyPRgz77SegSq5YpwU7N5pVtpfNU3nj6rktkB+iVuq5F9oJUu?=
 =?us-ascii?Q?Y7bDwhtCw9RTm6FZktEKO3wAx3JnqJ+Yd62dnAqHIJ4b+VR2lcKkWboku2Vt?=
 =?us-ascii?Q?kYypeCcSId8/4K6NvJVxc4VWPXeyQskzKXsWNbXyl3jxGiAqu8SBbVPuhw0M?=
 =?us-ascii?Q?7+CtR/74o3WFpEx6Oro/RTIxxE25BM991mZ7ey4ydr0qJWZ3HDKK+rn48P+K?=
 =?us-ascii?Q?DEFtRsDmjsIbntg/XON0zBc11mw06dnPYU01HmupBKoVTNgM9QVLWoXw83cV?=
 =?us-ascii?Q?2CSGWmdOAw=3D=3D?=
X-Exchange-RoutingPolicyChecked: CKeBrYIaEnDZNNsULqOOllIYXUz53Cz4Nj+pSJnyOTazHL74owNSWjT6EcGLAql1rzRNbY7WP8IzYSN/6qH+pBl7kNFTBknRN7pxYCz/ZRT4i/3gGTVENPTEbrrh1WsxpVv1DtGdhtludIjn+Lbylm/Nsiagz4x+PNKVAz81t+CXBYja6XFgpbuRyhLXQuPTb1ZG96S/dqY3/n1ARcwu4EqM6693xgVJvZh46LwGYqDIT2qNWXD9bsrXD3ApnAJBqkzQSr5Xw+QL18u8DQF3XW0zyqw4HAAFP2S3lxFHcsaVucpr7x8WGY7VbHSaD/B7I8ni+XF2FA8P1z1iMBPP1A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 64826fb2-f8f8-44d7-9435-08ded786077a
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:58.6033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DLQzocVorwV44Cy0ZrLNdZnXIEk8xPlgvP4TSL68fIJ/BChO2mRy6rfLLLfcBGKzphR+05+prxEqIAoceLejPw==
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
X-Rspamd-Queue-Id: C057C6EF483

Use the link caps configuration iterator for DP SST link configuration
computation for non-DSC mode. This is a step towards unifying
configuration selection and iteration across connector types and between
compute and fallback paths.

The iteration preserves the DP SST connector rate/lane ordering used by
the current code.

This also allows removing the now unused common rate count helper.

v2:
- Rebase on changes using a filter object instead of a mask of
  configuration indices.
- Rebase on changes using an iteration object.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++++++++++-------------
 1 file changed, 24 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 42bb1c7622525..108298186d121 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1754,43 +1754,42 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				  const struct drm_connector_state *conn_state,
 				  const struct link_config_limits *limits)
 {
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	int bpp, clock = intel_dp_mode_clock(pipe_config, conn_state);
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
-	int link_rate, link_avail;
+	struct intel_dp_link_caps_order order =
+		intel_dp_link_caps_connector_compute_order(connector);
+	int link_avail;
 
 	for (bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
 	     bpp >= fxp_q4_to_int(limits->link.min_bpp_x16);
 	     bpp -= 2 * 3) {
 		int link_bpp_x16 =
 			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
+		struct intel_dp_link_config link_config;
+		struct intel_dp_link_caps_iter iter;
 
-		for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-			link_rate = intel_dp_common_rate(link_caps, i);
-			if (link_rate < limits->min_rate ||
-			    link_rate > limits->max_rate)
-				continue;
-
-			for (lane_count = limits->min_lane_count;
-			     lane_count <= limits->max_lane_count;
-			     lane_count <<= 1) {
-				const struct drm_display_mode *adjusted_mode =
+		intel_dp_link_caps_iter_start(&iter, link_caps, order, limits->link_config_filter);
+		for_each_dp_link_config(&iter, &link_config) {
+			const struct drm_display_mode *adjusted_mode =
 					&pipe_config->hw.adjusted_mode;
-				int mode_rate =
-					intel_dp_link_required(link_rate, lane_count,
-							       clock, adjusted_mode->hdisplay,
-							       link_bpp_x16, 0);
+			int mode_rate;
 
-				link_avail = intel_dp_max_link_data_rate(intel_dp,
-									 link_rate,
-									 lane_count);
+			mode_rate = intel_dp_link_required(link_config.rate,
+							   link_config.lane_count,
+							   clock, adjusted_mode->hdisplay,
+							   link_bpp_x16, 0);
 
-				if (mode_rate <= link_avail) {
-					pipe_config->lane_count = lane_count;
-					pipe_config->pipe_bpp = bpp;
-					pipe_config->port_clock = link_rate;
+			link_avail = intel_dp_max_link_data_rate(intel_dp,
+								 link_config.rate,
+								 link_config.lane_count);
 
-					return 0;
-				}
+			if (mode_rate <= link_avail) {
+				pipe_config->lane_count = link_config.lane_count;
+				pipe_config->pipe_bpp = bpp;
+				pipe_config->port_clock = link_config.rate;
+
+				return 0;
 			}
 		}
 	}
-- 
2.49.1

