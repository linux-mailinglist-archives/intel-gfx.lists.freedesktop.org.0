Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sND3GDwjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F13ED19A9BB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46D5610E7B0;
	Wed, 25 Feb 2026 16:28:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FHedvtxq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7050810E7B0;
 Wed, 25 Feb 2026 16:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036921; x=1803572921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Hr5rRglCTcYZ447gcBw2JVG43BiiozFrktL/CoNhpZw=;
 b=FHedvtxqzsdKSUqQYiABtBg2Ce6DHW8BrNOtQ+CTY+SwbVnVot1vjvGk
 sborQ/VCgzvFLPKMmoe89G/5zhn+laAm14ekoazOgLBrjUKxf+wdN/Xl7
 6fikMd2BoOH18e+emlp96SQzrNDJjeft5McN4oM6nigs7PxL/hXg3hC1q
 HtLZ3mM9+YqP1XqSVBroHcUfTw73wmOiHasLsgvtI4gKRpPDZa3R35sCO
 v6e4lSqNZ6xpyTWBJPboGh/MJ/6N+ob+ZsP3B6znFmzBmD0FC8ilTWfiG
 vKrYhq2TOHaa92/aRgZs81DkuA+W8+m1mXGE80ji70cYOm/Ae4HnwnRvp A==;
X-CSE-ConnectionGUID: AdwhccC4SHuZmeD43a1eBg==
X-CSE-MsgGUID: WnSvYa/0QMm2HPlZUNwPog==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73151323"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73151323"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:41 -0800
X-CSE-ConnectionGUID: 7djdyLleQxmwmGD7DrwJeg==
X-CSE-MsgGUID: MbZs4aVtSXW4hdRODNgiuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="215054386"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:41 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:40 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:40 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cSfdjO0xd4eNn695jkdomsDCSamGZgYL3MkbeC1UQ44bvRR/NmpI742uXMKXnwmamxTz8BiCNYbjxXx2fLkVNTECXAGSsAARfChx0IYKrEkRGWVO/Dr4T6VAdaFRnYwZiWP2eqX+W77cFUEPivwCJ9mblv2EQG1sJaa5j72meyX0kYlj6nnTkaOMOmylNLN7ITdoU/dd1nMwhofVzFiP5MKI2/5xUsQjB8TBKcGsk+v5SL5R8X9qeN0Q8AlQSP/L5D42dLpo2zte8sk3PBUOCw4LrguktV9qcZbITrOZS3xX2M5k9FJNNJKE2oOQ3OR3/PQYgMg3h96n27s5OaRv+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O3PKFJef94bd+iw0VGxa0HMMkkRFLYjn+ReLJzZwHBY=;
 b=rbp0j7iZU0WKtl2kCxNpnsyhhzuDPi3s4YYlMnXhJkp3cj3OjNy2DGT4VEdDFT/0MHSQBKFF1VO5EiOxQtk9MizSihclSUYEudpCt45Eg6ud/MgBdk2SvRdf1cAe9pa4WonFc8+jPZMaUQFxBWNwBsmtLeek9ygX2R3UdGt3HotdyX78kLcg6AhDbKeMEW6ugojfO53CQFxarD+gWKyOv2nU2bzLhEFU63MUWF6d4UAZqhHiQJKBGsGQdXcqPmYOx8geWHdoEDvfosATlDogqrmVsNWnK+BolRArHraHiRenIHM00puEiHCKiX4il3EbDO8YDeomdmUQ+HgbaQLhkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:37 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 03/20] drm/i915/dp_mst: Reuse intel_dp_check_link_state()
 in the HPD IRQ handler
Date: Wed, 25 Feb 2026 18:27:34 +0200
Message-ID: <20260225162751.1255913-4-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 1a849327-9d5d-4523-5efe-08de748aed90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: RpJNJ0rgKwlR1+xJnkcHVafhkxwNxcaUuK7DI1K8L3d8CGCKAKUgxSIULXyoZ1ARqZraZV0JqElzmRz8418uGAa8aa4Ch5UUPycw5M23ZW5eVjEiErAM7AjipY//IVHG6/jc3YyjbCLHJcaDi7fp5sR0pgeVJLLAmE7LYedvi72PQGVY1epK4cMiDJe6Ghwx/qAUHvXORumprjqn9P+iKnDEPKX+nD/wamI7g0Xg6Bk2yw5lCH6DCeU/FeJYbOD5c5e4bbZzRqAENwCbZnR9IZzHZy7/qYN3f2gNiEeZZynCjrSh+MONBxXWrigBb7mAG7O53ey6rLVwpBSXzFpJ3fQg37LBYlzaCFV+fMN3cUydwFniK3MlmfwyIzRI5KSjn/j76OUGtP96x7Om+KXpcfZ9nFxzRwFeTFn7XzyEqTIs95MbBoZhw755TjCHdrZ2wXydx8vcO9IIXHGIAC/MAGVNpvbuqEVk9CTaNYrS606CZW/quT1yUbrqszqF9bKrsu0ZTIlvriHP4tmyqqyVQS9DKBjXIX/bpF9UO2dRAqLKW8tE/knz6gkY+MaVHvznG/HoKiaHnp0dteJC0rneVu9pSe3hGxX0qnN/hsJIhvHISpQ5ftpZXPP/SXdCD+j6pSaqzu8irLFotcX+uYuBk17BJsf2KD7j2cvNiQmDixYG5Km42lxx+0ys0rAZTBnC/HObLu3U1z/vkpYzTjyrC8Kjaa/09it8cI8t4drNxiw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ztjKtM3IgWtztHtKFANqzWlgqBCZtxRpCIJAHLp5m/lwqyhm/J7zJ9M/hot1?=
 =?us-ascii?Q?AdZH2EQi9pa9q8ohTWycF1McOaONgGDFypk2E45It5BfqLEI2vy2SVrZP3e5?=
 =?us-ascii?Q?Rir6DTYz5ispaToei1TWoDIzCWYrsqyZb7JTCQKn7064JBPQCdBhiaymRFiG?=
 =?us-ascii?Q?gaYB3Ncoy/HTxa/I828CGx5j/nhshPsPXlr3wB8vMFVRSN2eL6YJfXJ5mAuz?=
 =?us-ascii?Q?bHi8m+5Bg9kfGuhYu4GJcP40WiENCZjEfQHUZtvsqOGlB+rGo5EBioYG2rZl?=
 =?us-ascii?Q?6qfg9mHAHN1Og2+P+5LcAXpHnZdMVM7syBIsNWBVfhNNiblek6F9MnUYoYQ2?=
 =?us-ascii?Q?ozcgQW5coCLHBfP5oZ4l+iwmHCRBefHUIrvRWcUFTpoQWKsj+1I/qL33p55R?=
 =?us-ascii?Q?mNULjj6P6uSv/I3Sr4h2hIHCRFptRfqS6duq6dsY4tP7GLj1o0PLvRcDjqxI?=
 =?us-ascii?Q?JuvfqTmtWGcgH2e/YroxWD5uebUkP2wtwi8HjWG6RvBqb1kdCFjfHpMTG5ev?=
 =?us-ascii?Q?YujdQHCfJnCxtepxMNq8/kEovHFqN4ycaAHFzdbGM0II6PbrxzjNuNlsf2+m?=
 =?us-ascii?Q?Q/7HudfgRJ/ccFiCx1fmRpZbqRadYWXRNNHWrzOxxtr6uwMRpZ9pxZzMGde8?=
 =?us-ascii?Q?FO40RXsZkbzllDojAJjyIi86G4xx2p0IeqcLsI9lQ4pG0n5/kd4z/GB18GoU?=
 =?us-ascii?Q?zK/7XAkZHbXkuHZiwemAHoeGc5B6fLN1ugb5QuSs+fFc211WHtTbGlrgQCfE?=
 =?us-ascii?Q?6uEBEDI3ovfe+hDSchwTZ3MYJNRdEpjVGigLY567IOwL7SB3NS3wjdXYgkZ7?=
 =?us-ascii?Q?P8pCtaLkLlCGGSrc9mqrv2YDSfE9ZvzMkIcRAPVbmbcLrV3tT7ufNGRSIGV3?=
 =?us-ascii?Q?z6EA5G2MjYJ+LHvAd/FjJM4WE0L2p+i1o6fPCu659G4t35QP3L33TN75sg0z?=
 =?us-ascii?Q?EHQqL2p3Vuex0lacoSHVf8i10K6eHqijJLFWRFV4FQmjXB9LdQJufAIgZQt9?=
 =?us-ascii?Q?1TtKZqRSZgSAqXgO4S/Lu78jZ/Vu0DhJnJFcXCwA6NFo03FJa6QWPpiTeFBZ?=
 =?us-ascii?Q?ngkFHGVdcivXR1hdnyla+JAOV0qX+Dypv8jm1c6GmfGu3rvzxE8QVi94Z0DW?=
 =?us-ascii?Q?2XxDE78wrBh77Q8EPRO/GgDFAcgOJqPxYWNJ62I7M0hZe8Ckpe4rkzQ8zo1A?=
 =?us-ascii?Q?/kcfpTjRjgdWUdVEBclw0lKiebqaUdyYFhGeTNP3LKUfz2Mrj9EaC1x3zZgI?=
 =?us-ascii?Q?XXqRVbUaqK5cvxBRws7nCamCN8duXbwwZ1955TIYqjjM038yzgXCrW6LqlIP?=
 =?us-ascii?Q?9fDVO5am04iYyJ7oAK0HbUhFzdscJQ4g+R45ht3LQtaxEniwgw4CEXhdlAE8?=
 =?us-ascii?Q?2ITVExuklU2ep12T2rYo3x2UGAZHAoJCblEw5qZ3v+t29g7nsF/tHp+43s/u?=
 =?us-ascii?Q?weF3OhAgW01va+tNpI6AGMOfFd/6g9LEFI/VqURnORAClk62DAy8fIbh4EL7?=
 =?us-ascii?Q?wC/BhhVbf04gZtvL6JxEJxv5n/cHh8PI0DHVR6x6QhH0YicugKPrsSffo78I?=
 =?us-ascii?Q?xYi8SdoSuKwYVUsrmDsKVXBhqI/v3ZxnYyQagklZld1XHpe+sW5Ywsr6IWVc?=
 =?us-ascii?Q?MNgh+Xap/ifqT+R7yIf9G0ShOar5LHtNkqxAap7B7AYCG/fXKayUk81pE1B7?=
 =?us-ascii?Q?5NndWzSnN5C2p6NAThE8BW8OcL/zBkEPd3LR6SlnNwo0O3DdlWCcqT2vi3vX?=
 =?us-ascii?Q?q8VIfnChlA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a849327-9d5d-4523-5efe-08de748aed90
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:37.6245 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NhknH3SQAy/gzm72tTR+UHX4+YNgdSsnkpVFSWMlWLsQGlYUbF7ugxBzwkXoyHNPjKK6Rf1O33vR7F/GPdvoUA==
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
X-Rspamd-Queue-Id: F13ED19A9BB
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

Use intel_dp_check_link_state() in the MST HPD IRQ handler instead of
open-coding it.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 34 +++----------------------
 1 file changed, 4 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7cd4fb130a7cd..9c7359057fc8b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5444,24 +5444,6 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
 	}
 }
 
-static bool intel_dp_mst_link_status(struct intel_dp *intel_dp)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	u8 link_status[DP_LINK_STATUS_SIZE] = {};
-	const size_t esi_link_status_size = DP_LINK_STATUS_SIZE - 2;
-
-	if (drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS_ESI, link_status,
-			     esi_link_status_size) != esi_link_status_size) {
-		drm_err(display->drm,
-			"[ENCODER:%d:%s] Failed to read link status\n",
-			encoder->base.base.id, encoder->base.name);
-		return false;
-	}
-
-	return intel_dp_link_ok(intel_dp, link_status);
-}
-
 /**
  * intel_dp_check_mst_status - service any pending MST interrupts, check link status
  * @intel_dp: Intel DP struct
@@ -5480,9 +5462,6 @@ static bool
 intel_dp_check_mst_status(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *encoder = &dig_port->base;
-	bool link_ok = true;
 	bool reprobe_needed = false;
 
 	for (;;) {
@@ -5499,12 +5478,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		if (intel_dp_mst_active_streams(intel_dp) > 0 && link_ok &&
-		    esi[3] & LINK_STATUS_CHANGED) {
-			if (!intel_dp_mst_link_status(intel_dp))
-				link_ok = false;
-			ack[3] |= LINK_STATUS_CHANGED;
-		}
+		ack[3] |= esi[3] & LINK_STATUS_CHANGED;
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
@@ -5523,10 +5497,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
-	}
 
-	if (!link_ok || intel_dp->link.force_retrain)
-		intel_encoder_link_check_queue_work(encoder, 0);
+		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
+			intel_dp_check_link_state(intel_dp);
+	}
 
 	return !reprobe_needed;
 }
-- 
2.49.1

