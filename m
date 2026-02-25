Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIZWGVEjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE4E19AA02
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF72710E7CB;
	Wed, 25 Feb 2026 16:29:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jw7SHKF/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B12010E7BE;
 Wed, 25 Feb 2026 16:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036938; x=1803572938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=w5Gvuo2hh1ok0Z20Y4DxbX43H0D1n7WVHL2NB8uStK4=;
 b=Jw7SHKF/JeDMTXajp5J9gspdQMhkIrB13vwihmYjU1cJ1q45+bkwo18T
 LXJ/wFRcTSB9YLTFjgUJhljSeg6V3cY4ckM/QRpJ1027bmjMifRVorDSQ
 cl12qjD19TQaA/Xzj+wncQButBItahWVDT5B3g1TMO7yNjuiu9tvpBium
 xA+0edW7rS04/5KbDGkmU8HLBm1WjjFreNb3ynH7dRu4W+2Qh18r7/Ei2
 VGsXDISeZOvsRVlsyV88lDv/C4BireRDSELj7RUr7TL+Ecu8J/Zhgur00
 drdhjBwVSp8zJGikcONJqc2d1bVQSFCVeQBP99b1Ce+oykxJx3ojcstpt g==;
X-CSE-ConnectionGUID: TrFsLNCYR0i/dSsQgBL1ig==
X-CSE-MsgGUID: roGPzEWCQ3WY6HkA1w8lkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72955433"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72955433"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:58 -0800
X-CSE-ConnectionGUID: NU6F00LiSYCllwU8mnPP7A==
X-CSE-MsgGUID: eu7MEdYWRROJqHYKGjIS6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220783785"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:58 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:57 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:57 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.66) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RWiOrXPTZ6OE0XrO07Ue0+D+9egDxQQDaZFGU8kxazS4dYTqycYuelJ5nvmd4/ZwvWh8oTQNRDk+nNZt47PKrfviYWfUnkBwoqJaob7Jd8Kn3X6OMfWpASXG31pBuwURHBbc6c4xT/lNnOgYEu4b4XvL/Uj7rxLdnnn/xhp4REtg/Kj/8n/aW6/p9jc2ItK1f3q7UQMMTFkxBJ6GB8bOrin6d7zeKZt6UfCqNSUPyOfQ5jZ1Euqzcj7RjeUKEj3Yxq8XirIOWlHR3+ayA5N8mNSau/h7rVO/Hwv1c02kjIQRd80xgMl6icJfs5ON+GVdUTeBH5FEs7/lN1Y6t2BzLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fwaYWCkpzK/iVgmoZ31KOCiFLtYgih9xb1zBRMSGEVw=;
 b=BBsUj+OHfOFPoBk1fjyjHSye+m/g2M+0qjGu1hpRQX49kP+iCXN1PUli1+tfHWCcD3w54htlc1uymR1vZ7wg0e5lBu42D7QQ26UYzH+eD6Pv/y5dmpeCOihTphVLbqRgxBI1TS+Fj6fRJ/DbfU4s/OMO0Kw0p7ztVZvvj4PDVmBD02gEDKmRBWzUAW+KxwQI3vqy0liOVbAu7Yteus95bzlZuXRFkmQfW0u4C0Ea+Lknk3w+dspAuwZJE6dsak1VmGYY4RIlVnDUtrli/xMArTF2NeRjAQvC3TaE7ssQaVVwe7m9PLbZjoKIJvIQb9tVzF6eWVXS4KRwYdqq0SJ9tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:54 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:54 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 12/20] drm/i915/dp: Reprobe connector if getting/acking
 link service IRQs fails
Date: Wed, 25 Feb 2026 18:27:43 +0200
Message-ID: <20260225162751.1255913-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225162751.1255913-1-imre.deak@intel.com>
References: <20260225162751.1255913-1-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 17a0f441-4eae-4b48-a01e-08de748af7d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: lc4rLDGBrt0twfWCGujRHoffn1LYCnAwsQBy1bG+2XSBFr4jNaCCItW7JGchGpVd/f2TYHQCdMzxQekmXhK9SJayPkZHWX4hxAtsTHIyjeGksebzob3Z9MR4ZnIq22unKSqcMw/tmOcEjsqh3UdUCnnl8zsKruRZsRw29/0YP1b7U76GiXv4KUqoOmKN2HYYrWfnEUSExZIXFQtmrBI7MYEZRrrguxSo4SVSSZp+b1gfxI98WuQNKF7q0TZHNCA+ZIaHdnuydM5+0ny4svwGGM2NwkEu2LMOFCF2YOjXLdDL3rrfeZsAwz5ZQeHBxQdtXMVgsON5kaCuh47+hbnR6fO5xdXPoGX9lMyyp7hD1fG3atEDEfKdj4FG0pApQM30hHNw9EcR8mle3JCpkWNzJGi0lDB213Y6ytRvXPcY2Vh0GbPqtpZxN0OkRN1ZGCAyoG8evVtraRM9u5TzrWNSsw4q7Hmx0SBrU2dVgOlxBHA07aGJANt1ui7U3qSPuSQ3oUyCh2jcEjDr1BLC6skdaSCAEFXJwdBXu90cTPQxNbOHleEo3buuylhrzLPXHOapQhrDYl3zzzpr1Pp9KIQ65jAWYGJdxGe+KwlD0TYgV0Yr/0z1rOFxxODlyFMRc0XRDTYQ3lTi1VQah+56wezKwVCCBBszC+ztxTLDlpyYMrCkR0z1/Azp6oX1SnYNcX6NtwXRB9V5I3zmRdruWtBhlt3R4CIT7G4zbsJQRZB29Tg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OJE8wgDGnT96JntI9F/08gARpMlsa1PvXbGlLO5a8kVxW7kPi1I6ylnjkb5Q?=
 =?us-ascii?Q?S9jBPNz4AytKZvqOs6PGKv9fF2OwDeFJ7yIL2Kjs07Zj4Mbv4iQevFrfDvGN?=
 =?us-ascii?Q?MW0+gPVzedDeXtFKp3CWmED+iVV6r7m5yjO33Rm2Ybdtb/c8Me8V84w9a2X9?=
 =?us-ascii?Q?CXLC7/54FfSToigjMBgQpreogfErL6eC4zKbCssYwe8DKiE0B0+TfspuLwmc?=
 =?us-ascii?Q?JGEr0S1zfYde0jSU8job8mMiPY6Op3RF8fWyXvPVIVt3qynKnj15jkK+99Vm?=
 =?us-ascii?Q?T3h/SCFfi/BBp1pWil9u2MpR/Idv2MKJD57UDTmhSLb/WOgg9nRDXnz7kat9?=
 =?us-ascii?Q?hseFW+ZV4vuQHLls5IhEfxYpiyXk76yZrus5cGaEZWBIfR0hf0TXBpBuXr1s?=
 =?us-ascii?Q?yWX2T1Xv9NhyqY8TP9Fp8jSEvtytWSdtXL8TKDpNxsGVbZYY4JHwdsk/BCIM?=
 =?us-ascii?Q?SL6Xz49IJmoTSnen/RAjxAwYSfBqfS9k602++Jp6pkkI7OWeWcRfkueZmkcF?=
 =?us-ascii?Q?KvrzJWNMLP9X+39aBtpnQYom97MOEHCHvi/3+bIQaEaFCrejTz4mfa6KPX78?=
 =?us-ascii?Q?+UTmIIWaux+TYnUQqmkxyFu9DN28vMqgaj6wTQtaekByFxqS843aDL65od2p?=
 =?us-ascii?Q?9ZzwNIokwN6WOcxRNiHnqze2lWC/OYoRWdy9cH9iMfKB7DrQxqXmwyj6uUVb?=
 =?us-ascii?Q?9nULd6i84rdfJl41tukEHqYJqVYa6mWgThm3brwT7iWkd+/d/2RalloGBNZL?=
 =?us-ascii?Q?WQp5uM2rJfXF4xYpsI2cG0yi3Fs9L1A0qUlK82nQAZbNlsS4PkJGswNatopk?=
 =?us-ascii?Q?3A/+neuy7WbMCM28dcRjb8ScPsuQ2mJaqWhRtwcXlbdCCMpu1hYsgmvmdLDK?=
 =?us-ascii?Q?yOP+uqnK8HztPpOKydrBP2MEIpeFlE/kUZYdZ55oOVTzpKnQFYE4ni7+D7Fa?=
 =?us-ascii?Q?TfsGFK7ghqyH0WlnLyFlmgedjuPNe7TMMfPhk/2K3dR5kOC5xClflJp/di0t?=
 =?us-ascii?Q?o36hPyQR5+3+iK3UPKOoRX7T9piQUDDTLuOH8sZ3TvKHcw8fm30TcewlCYq8?=
 =?us-ascii?Q?9SYECmwSzb5Dhq4G4b3iKXhxTcSevKJNCumkqqH/VMhQ99K30Njlhw26vgR1?=
 =?us-ascii?Q?qN1UB9EwqRoaYF75N5q6+pImz7k+uO45M7ZBCKOQf82n9PkKiAztIeuLHnvH?=
 =?us-ascii?Q?89LfXXARqF4sB83TawKDTn+uscoZmwQt3XosuJCcBECkclB6Fbvb6hgbSUNx?=
 =?us-ascii?Q?+XUtXBIxlfAao/lej/Zfti11HgkpcGqMmWgv31nTkFoscT0lOOrtcwdf1iax?=
 =?us-ascii?Q?G0bI40uhcqbDo2dluOf6HvV3yQlZdAhwo1gzyh3q2mgKUBgutR4fiR3rlg3x?=
 =?us-ascii?Q?bdHLQsL8JXYEB+gSVcbLL/993XCIyXHn07Ur8Q8PsMsAbUvt09QG8U8zIpcw?=
 =?us-ascii?Q?daYwMui+wZIrzBs4303bOIn7fVJCjt0SFtHm4Y6eAayuySacv5HI8Bexx7G5?=
 =?us-ascii?Q?W59RvcWXi3bcWD+ycgsQJFrCsXgMr4gh3bDFqTM3GeXpcjsiZISdDBiOxWNC?=
 =?us-ascii?Q?CRnkr15Qv8dv1z4kWXcdPfJXOOHgZmvhJPapgESn/6vGSJ8VnQpY4RaMufk+?=
 =?us-ascii?Q?Vyn/0LP0nAXB+UAs/U/UOINYjh7ZwDEJvnxHwbgRv0HoOpaS8VyqGaLDDnz0?=
 =?us-ascii?Q?enfgP8RjHmBjooN2BtZORvb1yEpMm+UFXQOez539jLYr3ZL6VGX+PtbJLH3y?=
 =?us-ascii?Q?tJoOxrsTmw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17a0f441-4eae-4b48-a01e-08de748af7d5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:54.8693 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ELhGgQAPpNmYuAvj/NzRpBz4gXZ90gvbw9mqiN1m32kRoKsBX2AGCYUu7a0u8azKhCrhV0LOVczgp8FmSQVxlQ==
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BEE4E19AA02
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

An AUX access failure during HPD IRQ handling should be handled by
falling back to a full connector detection, ensure that if the failure
happens while reading/acking a link service IRQ.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 613fb0cd08b78..208b1027aeca8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5809,12 +5809,15 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 		return false;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val)
+			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1)
+		return true;
+
+	if (!val)
 		return false;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
-		return false;
+		return true;
 
 	if (val & RX_CAP_CHANGED)
 		reprobe_needed = true;
-- 
2.49.1

