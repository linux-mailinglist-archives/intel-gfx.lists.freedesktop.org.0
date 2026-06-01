Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wATPG1VTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD8761C9E4
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AFE81130D3;
	Mon,  1 Jun 2026 09:39:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XbH0Pf41";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B616C1130D2;
 Mon,  1 Jun 2026 09:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306768; x=1811842768;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=DIzgefDsrDtM9yAHDEFdA5yk4uZtLDw9MzYyLtQDAc4=;
 b=XbH0Pf417Hh7ejpM2oN1WEqf3xTPyuH4GUrMpvWHEds/6uYTKeOQSuw5
 KblZUaHUG4HBhZLzcHYGqC7imt50UjNuYynoKbfotuSTCk0OM8UyfofNS
 g4yvWgC1YAO+/DgF2dIT/6MzNXh9ID4sUOBKpl9kTyURZsI+BOQs8iFzw
 DLVLtz3VC7D0/O5anTKKSj+PZo2e9sGKg2gA3ynQfRmldxzqGacUWyUPj
 GJbh8OQ07wnD1jb1vtm2qKBY2tfnH+UK2sRefn7mIZg1VgHlrfafasadu
 suGwdtSTIJEXhSlbi91cY1CfnF1Vcv4CMTQkF63ybFl97EfhKXn8zH5WI Q==;
X-CSE-ConnectionGUID: EqnDTm7aR8eYwPxqi0BOMw==
X-CSE-MsgGUID: brrHWw02SdirAQVCzrQTiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094057"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094057"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:28 -0700
X-CSE-ConnectionGUID: iiaITIwWR7mFsj1jSOeEAA==
X-CSE-MsgGUID: WCRCJqPnSwSJwMCle+x3GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160620"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:28 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:28 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oVldXZtXfNqAarkNVtqsszsIw54dKKhpXFjOHw4uohUftPERLP0ebLAAZ2WnfLR/nTuWCAwDoigtCTRgk7jUHh0vOT5HRiUNexaqTWHVrdxHgJObT3cnHpBbozaxv+KRZot7zhRlfWcTDfGlh6Bt3h44qHYs684GEKtkLpWb73dH5l+F4aQftrB4iWrOo1nR45KtcEO6spNWL0n2wtlo47LuqndNcyKHdZMicRzeEtCNQv1H/MpcTsUDUCw16xUXtP26dshmk4hwJoOHf3x8DBmUoBadsFsJS1Cv1zM699Q5gKCqKXm6iXln/9FemjSXCkv6rnvBpTaffvsjZ62shw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yD6I/IqoxT/CcFJaZN1mTNVZmjigDsTfnZCpFe5DdPI=;
 b=fvOh62KKrkM2zvV8I3LWjaqoBGCCGoYo0TzGTpVeyrQq3VKaH7W+TimyYwFaUlnZThgriBQkPAkyIgk4xUEDEBs+RBwm+F0f4UzL1BY32WbqnnhP1H7FBFotzihnJYTuSslEoxRnNhtz88SHyRypyhNUmQQe23ScdGsqwT42cKa5q9rAqeEa2t65D5rNkqvEl8j8CrBYTRuHaNhbNY3wgZ7yVSVk3IItizaCC/vU/4mUxl/RuN9sTK8njEfSRr3rD7MmHmW5nvSVJteSfb5xjq/7/YnyiiT1AZmqemoLToniwz6eUVblYcuRVFftVQ/WV+lYbo+I7jBQQai0VuTXEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:17 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 17/22] drm/i915/display: Factor out a helper to modeset a
 pipe with atomic state
Date: Mon, 1 Jun 2026 12:38:30 +0300
Message-ID: <20260601093836.3057345-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ebe9d09-1f0c-4be9-7080-08debfc1a670
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: I0NBWGWkotLwZrOxbjgFa/mQHqxZov3NFD2vGd6Arcn5tMq5O56Np3PH8e7C3n7ena/Ol/xE3yqguk+8IWCBksmfpTDxxMGVN5s9SvKxP6DezemZU1YOy7zf5Eh+/w+wISztFEnkm8SqyFEsRgO6g3/nWaIc0rW7IHiEmFJF4esYW84ybBQJuqxcFdq1akkgCDvsrUwNiRAVwF+JpGEDOIxTon26y7ty4T9rzxYrabBSUgD56powrkAx98TpbD6Aa2Oz9HBKmvy0ZlND66cpsfLfLfyzOXMKT9gd2KuoVJKmXDi9ZQa4ykSkQBHGdRX2ndyJIYQXu6hDTyFwJtBpf7b+mkDQPkYdzX/Susp1JM3XM2AwZRDvackAZF3nBJUGp7+zS9jLuiGFNNUU06vdFRgism8aSYP1ufBWgUhDLM/Jioe1lcLNB7u+pVzKBqlhXMYENs2iNDYYUdnHdBykkPcOzgBzsnoVVpeeGrL5aPAQ1MraFAjh1bZJ1Jyl2BWloqrKDwAdeXq0o8gneTU21nYtHPGQC2NN78aopdSVu3iiEDmTmiqz8wz+PvDcpdri2kp7CXWsj60CwKEXfISlrgMii+By3cACrPbUARMd+SwC/uTCrCPa6NniWc1oi8LjzVEb+yuMXKhBds2RxVmoDeL8OW+zRFvq12BEoNeO4LtTWSW/Ll6nAGkJ1VvusZvi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?APXigK6iIlA5vNTHBpVuHcczzHF73xhDOzhi3/F69iKetpMCjxOiw+j6aSGX?=
 =?us-ascii?Q?Mp5W8T4J7SxyddEquS7lKyTZTc0iM27G/LPNl4EPCqugNbTrfdJKwxHN3lyt?=
 =?us-ascii?Q?tK0Kr2N5DuJy/+pBnvtTOvfILVWyGxq7iYI2G4ued4I0/FPVDNvMRoMuBG+X?=
 =?us-ascii?Q?wlpxDDbP2Lb20qAZGAh7Dv4Jde/IUwp40mrseEiW+pZ45i6fvcbK8vqhAksJ?=
 =?us-ascii?Q?RYJMO7jzAn0EdA5T9VR6MbTGSaKOVMV2sUeVTJ9bbnFqzIqQwqIwXcWMysNA?=
 =?us-ascii?Q?KR2dRcQCObOts/GBA/Mp5wUDdKSqgNgNO4zogMpgaESrkYkmeXvG+SOQMC9Y?=
 =?us-ascii?Q?E2WzR0JWTqP9Plg0KHUG4We8WCYEA5INyLisE0KdqzIs8DJ6kuf+S07tb/+x?=
 =?us-ascii?Q?gQSwAprAWu2KikRKlN4QNZZdFvMtdIhWvW2sZiBOx6d3lrz0+EqrhrWPOhND?=
 =?us-ascii?Q?NjKZAbslOyMGrNmW41XbtLCRWb8tli7NnNEz8wRyZK4GMTWAX/hkamoz1iaw?=
 =?us-ascii?Q?9kTt2qkk5DheGZKHf6dPnEgTvftVcF8pyJ7n8pP1rXlf/9rpdqEQFww2LCDz?=
 =?us-ascii?Q?3unDWTFiW6KCf5cmDNiOz6J9BIZENdRvQmubt8OK/ZSb40/wSrp/vJlQgpod?=
 =?us-ascii?Q?/I+D++DmQLawx6JTJU2GrUakpPe/L8p5UWb9IQ/kZQApe9Y+ESG4wAY33rjF?=
 =?us-ascii?Q?RrBoYvmKa8Z64RlR+dRfveslbAopTtcnEksza3fw9zpsB2WZGftZEKOH0e1t?=
 =?us-ascii?Q?xu9jbaUIWIF9BBbZva6igB+kqov9xR6+ix5UGRt7CeXVU18wN9oq/k3+o3J1?=
 =?us-ascii?Q?jZ0HyXRJ0aCbmvb0RKaGny9tIGyLb0LQ/ABWk7pQ8R/3znDCTVvfHHNYifOD?=
 =?us-ascii?Q?CgIDaPo7uO5IPB+PwNjqMC5BjxTjvxOblevXNiHf5Dpyl2Gr2Nkdv1I359Kh?=
 =?us-ascii?Q?4rnewDKXah2AG8tNlVLUWnsZp8fqOTezcYipB/put1JJO0vgIHoInSwfb9vb?=
 =?us-ascii?Q?NA6yY7aO/IzdbFzWu4/kXsbkaI4x8yCkqElSvpd0bZkg3Dw7HW8J69/Oak1w?=
 =?us-ascii?Q?ahCzI1N1Lwnk4+kbOtxBDpoHsKY/Hgt8Dqcd3IodFLqdR70No62e5cFLWKsE?=
 =?us-ascii?Q?lpu9Q7L92xULTjm/Q4J10B2K7NWp9ixSMI0RNyVEDOblxo/bKTTFEMG2F2GU?=
 =?us-ascii?Q?Fd6FJcSWMaMAT1ShQUOL1DXIWDJhxPon/2QIelSaADOQTfIieefLFx2/9dkm?=
 =?us-ascii?Q?iqKvLs9mAo4Xo/hVVA2/J52Vf7F1RSq8uS1SHNZEE7+bJZEsi6VNOHVeaWHT?=
 =?us-ascii?Q?fjZ6ll1ufRDVmnBDgJPecG4G1dK95ALcSm7l4a3sN5p0YHywikE1xM2YMkWr?=
 =?us-ascii?Q?+vxZKnO/TH2b5in5zzxYYrqUeyWoAn3VUSNV14pqIaKECO/28NqkIIqEl44G?=
 =?us-ascii?Q?QNRV5xYBtgd5IsvrTHlkvRmc8Fjh1G03OQzJEz+QWurauPiCbWbzReyyGUtu?=
 =?us-ascii?Q?mdT373G1D0ge0tV4MewNSQx0wxbu83fMS8e3RFvojtUTvvwaWF7Xb/JmwC0H?=
 =?us-ascii?Q?vk+ICWcibsp9um1ZKO34J0esz0MfX5t7n5scF+GBsR9NUyvlWwk2SFLEQHFw?=
 =?us-ascii?Q?rnHpPDewXkPnV+ltrMiRMW+tYp58/pqVi5YanEQ2xMX3o2UzLpY1Pebhz8h3?=
 =?us-ascii?Q?FmdSXkstFO0mPZImOW7Bzxo0pI+xLwUsL0FgttjzZxWVJM6oJfv2NqHv8N4z?=
 =?us-ascii?Q?qov1IP7ACw=3D=3D?=
X-Exchange-RoutingPolicyChecked: ILs47zmb33H11dzHQocd+gEil9Gh9rKGEhtqQ35m5zq8thQFVOwLH2awFN9mXuMO3e4of97ldBOqGAqOq2JZe138OKxaH2QAb2+gPGu+GrMS9SOZRVW+9YL33ZGV32v4WRj9DEFnqQ90W2x2Z8xnVQEwJx67M8m2PwA2Se7VTrX+ADkPjBM4OV2ZQS4+4RIK4X3ng4ZwRQAb6dqCFPXAaGZ0zERBHU8isNDzIU5HCnc5jlYKc5XRVBIRnXx8AwBZ+UKehzZPm2b8za5njtA4xOl6r9mRvh7hu47ojzsH7CxhTmMGr9SGx/mOPDnLjOYSk+Zz4HPh3JEUe6KcfMAwIw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ebe9d09-1f0c-4be9-7080-08debfc1a670
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:17.6860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tet3oNCwKuH72LNnGVu1bv44jE/hwu1x1TGY0nsyTYRI+mW1g367Vl0eXbSiXukV6so64rwHs2+1yUnzBoiknw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
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
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0CD8761C9E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Factor out a helper modesetting a pipe that accepts an existing atomic
state. This prepares for a follow-up change that needs to allocate its
own atomic state.

v2: Rebase on upstream drm_atomic_state -> drm_atomic_commit rename.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 30 ++++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 2 files changed, 25 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8e269b71f18e4..b15c28675d288 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5658,18 +5658,15 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 	return 0;
 }
 
-int intel_modeset_commit_pipes(struct intel_display *display,
-			       u8 pipe_mask,
-			       struct drm_modeset_acquire_ctx *ctx)
+int intel_modeset_commit_pipes_for_atomic_state(struct intel_atomic_state *intel_state,
+						u8 pipe_mask,
+						struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_atomic_commit *state;
+	struct drm_atomic_commit *state = &intel_state->base;
+	struct intel_display *display = to_intel_display(intel_state);
 	struct intel_crtc *crtc;
 	int ret;
 
-	state = drm_atomic_commit_alloc(display->drm);
-	if (!state)
-		return -ENOMEM;
-
 	state->acquire_ctx = ctx;
 	to_intel_atomic_state(state)->internal = true;
 
@@ -5687,6 +5684,23 @@ int intel_modeset_commit_pipes(struct intel_display *display,
 
 	ret = drm_atomic_commit(state);
 out:
+	return ret;
+}
+
+int intel_modeset_commit_pipes(struct intel_display *display,
+			       u8 pipe_mask,
+			       struct drm_modeset_acquire_ctx *ctx)
+{
+	struct drm_atomic_commit *state;
+	int ret;
+
+	state = drm_atomic_commit_alloc(display->drm);
+	if (!state)
+		return -ENOMEM;
+
+	ret = intel_modeset_commit_pipes_for_atomic_state(to_intel_atomic_state(state),
+							  pipe_mask, ctx);
+
 	drm_atomic_commit_put(state);
 
 	return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 1963dbc802217..98b589e8360d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -474,6 +474,9 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 				      const char *reason, u8 pipe_mask);
 int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
 				 const char *reason);
+int intel_modeset_commit_pipes_for_atomic_state(struct intel_atomic_state *state,
+						u8 pipe_mask,
+						struct drm_modeset_acquire_ctx *ctx);
 int intel_modeset_commit_pipes(struct intel_display *display,
 			       u8 pipe_mask,
 			       struct drm_modeset_acquire_ctx *ctx);
-- 
2.49.1

