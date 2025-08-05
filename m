Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE16DB1AF5A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024A410E5FD;
	Tue,  5 Aug 2025 07:37:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PZn7AfS/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C6DD10E5F8;
 Tue,  5 Aug 2025 07:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379433; x=1785915433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ArI9Ay2YKqSQa6gvzysUvsJN9Omv2WTqXIzZ9ZEdg1I=;
 b=PZn7AfS/em8uV2L8hM9OkoemXytOPZIYQhsk0XaqECr2GFEQljefQ5Wf
 fcWgiaLWEV6wIhSaPWag3xq6nJoNQYNl3iYf3oCTWhQPqF2ymSvW1S3NJ
 bXUpR8z3bU1uw05LlIgpKfnliGHle31/ZW/bxPVlS1ZxHIzFAQA6/6utr
 hIYVeXI3CXEoYbJrymNNhNirBb0elFTvBLByyud+fjMI/2/615+fT5T/R
 R8p+wk8r1whwVZMv3jjcy2qtuGlULiFWiAhPBCihHc4VZ0lMULja/6R+S
 xLJ1uPaqajqVKWESzx2UxtTS61WWAcSd4NkyTU2JrV7Vu3PddDysojDHB Q==;
X-CSE-ConnectionGUID: nAZATsAiQMKbcPqUvy8sHg==
X-CSE-MsgGUID: yZQHeU0jS1mgx6Fv8wsxcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="79217767"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="79217767"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:12 -0700
X-CSE-ConnectionGUID: 3V2ie34mQGywzeuQ2gkKLQ==
X-CSE-MsgGUID: iLvn9IwWSguSHSVHgDm3Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163668471"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:11 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.84)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oj8jZ+Z9jOfbf7+O9qd/Ka+VTt49a6Wz9Y3eJuwHa5XB6k11GT7hg3YUb/9aD5fRITK1wOjSg2JXyWA7xjwX+6gDpB9eziQMFbbBvYgx/yT6B7twIoBOqMgXwx7QS/RUStB3bez5puAjJp5tva2CUiwwB+0OnO6MHLUeawwNNoI/HdjncqhRMBZmn/ki1Zf8gT/wL+dvp8mBGrfALhvq2wRsZ8x5eKtMoQmiOQlcTlAOVuVJtGwAxdR5BEQ+TtIwjzx4JVO4JLt2vwkyYE+e62FJBhqg98RsWCcuBkaFLaQksYbZz1/ZOZDRmZnifkiYko/R7JylSUHCbTpF43uOuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pz7fKy5OVpSbJtk6WK3scae7adg9aJzLy2JiVTKApUk=;
 b=IiUgOB2zeZZCIfz7RYUY+Lk+BnXdktR4sfvuA9cSYz0m3d6n6YJJgTTetwK99fNG8SqzLfAnsPptlmyA23QyL9V28UhGpZrm+3aMc9vodQxzuvLuQSpNSCBN5OeMUb7uL3ji1UKAeSk0jzFPCutMc0aGzrIxWgVln8sFF+dD776eQdfB5utl4Wy9Z71ekIr0tq9dwg/MjlRxShAS9sM5gLJBNaYJJaJ+VoqeZkGMhqHIJBeypekjvrldVq0T9rm9R+VRkeerTp7iZMOahibq+G3d4fZ5vNMwFbZsHYti5nE445ZukKJpjfQy/v8KruIhy2861z3/Wudi4goaRIYkGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:10 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>
Subject: [PATCH 02/19] drm/i915/icl+/tc: Cache the max lane count value
Date: Tue, 5 Aug 2025 10:36:43 +0300
Message-ID: <20250805073700.642107-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-1-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: 2981e13f-4c42-4d7f-a60d-08ddd3f2e2c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/saB+gUSOdN3hQaVp8LUJsEqayRxe+O1SZWFcdw78dp1aDt8yEe+gjtiap0N?=
 =?us-ascii?Q?h7WWZGVqC/nZ0kp5YBCkZ7ITLHwlUTvpsR8nvuNshd/PNB6nIiV7EBmFWA3W?=
 =?us-ascii?Q?4HAdUjNs+5zk3+OVLi9W8kGXPOuE9GRrJa7JKyEobGVo5sCflzFjBK8L671g?=
 =?us-ascii?Q?JPKOkmmxqNGoqCnM2GVyr4RbHYjjetAlpzIeeDo0l1/1flMaRFJ5pVQunbSr?=
 =?us-ascii?Q?d0yB9YWH+0lTNow7ZT4gnO5yqoVBb77xGHl82M+TYcYZaErjDG1tAs8Ul9Wq?=
 =?us-ascii?Q?Ze3ibIJoRJQiH8HZjCC4sD2Ya/P6romPDXjghTpDaQAIk+97mfC8tjUVsAWM?=
 =?us-ascii?Q?q81yY/PwEu7Miw+IPaJUA1BaSvIjIKFBmXiNbyv9DPSfcr6a2mLRi5c0Hjcd?=
 =?us-ascii?Q?t/t6YsWfR2GzowgfD9NUGGaouJ6gyVeZDjHoXSAWfbNYQAsvfDXbAMVKzDiz?=
 =?us-ascii?Q?TL+e5l6hrJtWyEdx2N7dAP6XPmVA5NC68gDrk3AllVZG/wkr3Bxuh4AfVKfp?=
 =?us-ascii?Q?+Cr3YiOTEn2AFMF9t9v5dnjaBlvzS5JF4maV1idSBu6RTyD8RrLbPRxUHLWR?=
 =?us-ascii?Q?Pn+TMbuvLiME7Fyzt7ZtnuKqMVp6F6E2qa2wKpTCVe9yc998Stx/lRBlE1Cv?=
 =?us-ascii?Q?UH2PmJBd5RRpy4exqk8E8stKdSV+X5lbljExj5WHSZ6GI0efOEGJhohi2XdM?=
 =?us-ascii?Q?Evm8cb8nzD45fUjE3UIHAWNbHemTI0pmPfVBBQ66bQ7deiiwfnuCv8dITGBk?=
 =?us-ascii?Q?WSlByLIerzk8xcto7B4F7q+RvjtdPtHXoCmaajDw9wOa+DSm8lKamRtg/bLQ?=
 =?us-ascii?Q?hKE3tIap0GK+f/XjufS3N2PDlTW0CdD959ki6wZyO6M5MM/n4TCZJ5WBxwuf?=
 =?us-ascii?Q?HQfkrUZsxX4KCooBoKLQ4t12SBR6ckSbH/TtOIw9/tW//4AKiGc6v8E+SmCM?=
 =?us-ascii?Q?QNy5ZiUz5crpbd038m8kSeV9DBQUDmVIrbi/2UdnWCJ8S6ulBwwWUYCwE4xL?=
 =?us-ascii?Q?VPi8WF0ebwU3K08l2mg5oJpcz1JKYEYlNPVt/M8iWjXgI/NI0QcmDAmf9qER?=
 =?us-ascii?Q?k4i934JtCIF7H/lNfqlPAKp/ZXoI66Hgg3nmxmyFT5LeNDm3VYh9s2hVfTHw?=
 =?us-ascii?Q?p3gPhic/3ci99KUzSWt34EzSXsQkCcV4XcenqvPCn63w+S/PK92XPbsEgTSs?=
 =?us-ascii?Q?23TV9irPn4u/gSvBBnx00Uw3UXLgoFEfme+BW09dYDvrfyrFsevZZOMQEjpk?=
 =?us-ascii?Q?gkjI84cnbabka6yHFKUoaK30ZT8oB+l7/GQQn73yQlyzgU4ylx4GxbSVShGf?=
 =?us-ascii?Q?3T9HtGbYtKcL5VJCZ9yAVIDHYa/cqsP7IXnffFFkM95dZzpMRuPbhtn12H9s?=
 =?us-ascii?Q?stGymGpHAHySSnSPfbOkjTYDKIW7mmq7XVko/Vl8miMVYqhWkP4UVWmoWb9M?=
 =?us-ascii?Q?DNYfTHgwK0M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FoanZkVSMM+wv8bLLbhY3VNNhTJXj7GlkieVh8x5RdMw7kBbGtZjMlAm1MwS?=
 =?us-ascii?Q?meAWte8fnKGY3Yfbd/yat9AIcIHTcrRfNqhCC+ns3ypfMw1KJ4EYRUAIRMu1?=
 =?us-ascii?Q?mzmnhdSirYd189i/dC9YmOWQnJQT0xdgdJGmE0wHbzdhbU56GOmsKwqj88VG?=
 =?us-ascii?Q?zT1SwhmIlEgjQY1cwOeDZfOLQ2uIpAcSPSZ9flGlHwGygiVkgvYpirKRvxfj?=
 =?us-ascii?Q?g29KBB/hw1y/MAd9AR/39rMRkO5R02oMS6XZUIzvzv8cRZcJ48SoWcbMEF4n?=
 =?us-ascii?Q?zprP9q4E+/1eZdWx+UwDjTmGj4gLlnYGxHyXebGUc84rypwQMz1tnHseJk+4?=
 =?us-ascii?Q?7oDlKoSGVKOMwMgwWld06LtM+dOdaC2y0WzK69ZSBSHEzle7iPofJwWKW0v1?=
 =?us-ascii?Q?mu3JyT7M3Cc2QGtIgO+/lVaVA48ezgXXxVe4QD1I/AhZuXTfVkA4D+Mjfi2R?=
 =?us-ascii?Q?WsAliBU5iprFtoiRMIoBWLvVlnDI4ijk1YYFK6Ue5prLW0y9esvOAaoyOlL2?=
 =?us-ascii?Q?lNxUtAjykGZz67OC12V/qmUaMpiVusVICXZwCtdTraJnwIf7PL+rpxeSH4uy?=
 =?us-ascii?Q?cnLxAoiZiiiN1M4uV3Dl61OWSR3kwnQA3Le9QZizR+ITVbK+SN8CRq8WNEMD?=
 =?us-ascii?Q?alJ7fhXVc9wPUIOH+AaNQ7vE/p5H3cI2R1tmPUvUT9/FhZIhla6ZO1WdFxyO?=
 =?us-ascii?Q?YtRzFM8OsPI32IspPQXDw8TVL/YP3RkL0nANdYZEBWOk0+3ArLpfIUhg9tZf?=
 =?us-ascii?Q?vydVnE9rlWgnYbwvkutOq91JgveOgH0Ud/UWnVW4X0c8s7ebRN5EUjO3AQqk?=
 =?us-ascii?Q?3M3tUAKRrkcyuFsLmsL+KgY9OMQnmZzZPbKGvNb9sIdF0XB6M1X6Z811MnHz?=
 =?us-ascii?Q?whPPN5S+hmsoE3ZYRLb38eRRfMAbh4PiVetPKLgz3trZU3oF5+4/q4719DmE?=
 =?us-ascii?Q?6YWTgTy1JZX6wRJo2vX1Hr10+v/rm+wa9YHbwSFttfix2Ek9ZC18BS0K6S64?=
 =?us-ascii?Q?FTYOnwq0nkPAm5rCNWrSjQvP2j13q+GKXB0xjOP61GbUmKxa3SoifRnlN8kC?=
 =?us-ascii?Q?KMn1KRL6hJLgDpCacV/Ev7XgDoa03++efb0lju9+VRuq7x2I8lNizv2LxeXK?=
 =?us-ascii?Q?3WoAhp/wmNr3YLvnZ/YIwU/p9wOj2x9MO41GKABHFrN5YLuA0PZzFjro6Ur7?=
 =?us-ascii?Q?Xiq/bc1txFTjnOgfTe+SrLNrgUKPgACHleInbv3vXh9bwuzou/Akt4PetjPF?=
 =?us-ascii?Q?9qZ7fCtMIJzc0iT0KWvbsz2FW21wHuXCI3SfWeL6eQUrr02HBngsZNiYl1CK?=
 =?us-ascii?Q?b5UB10Wxfiu4OakI20t3i++rSqnaHvO5Nyz78dIx6167db43T0VlWGzBFvvM?=
 =?us-ascii?Q?w23Q9CV0ErxYJuJ4x0xVcMMajD4fUvymJmcBnUkMIN3NDABQEejs6MzSeHaj?=
 =?us-ascii?Q?RIuyEBjuChZdzXZy2tLIVK6MBjwVHpjti2emTJR5bq92X1W40623Vpe6dWzS?=
 =?us-ascii?Q?7LKmL6bO2OoJMr4m4DKLTUpEOrsIR/wkEvF2UTskpBVD3hmUleLBKNUY7esW?=
 =?us-ascii?Q?mQd5r/3PnMTw7e7WmhHKg1zHqodyyWYBL3v/wT8DU+QoBqXpSsPTrj4hyRpn?=
 =?us-ascii?Q?9g98UVfFmYvmSTbRFfUQbI5mDYmSluYIQqDSJMdIljAN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2981e13f-4c42-4d7f-a60d-08ddd3f2e2c1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:10.1469 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V6z6KvTnMbfmPUaiqeK69pMTTtIGZcf8nPCY3eeNbZy735jlHOaWDyJlsJBxEFKP1VdGpJJCD7riYpjRhrd0Fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

The PHY's pin assignment value in the TCSS_DDI_STATUS register - as set
by the HW/FW based on the connected DP-alt sink's TypeC/PD pin
assignment negotiation - gets cleared by the HW/FW on LNL+ as soon as
the sink gets disconnected, even if the PHY ownership got acquired
already by the driver (and hence the PHY itself is still connected and
used by the display). This is similar to how the PHY Ready flag gets
cleared on LNL+ in the same register.

To be able to query the max lane count value on LNL+ - which is based on
the above pin assignment - at all times even after the sink gets
disconnected, the max lane count must be determined and cached during
the PHY's HW readout and connect sequences. Do that here, leaving the
actual use of the cached value to a follow-up change.

Cc: stable@vger.kernel.org # v6.8+
Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 48 +++++++++++++++++++++----
 1 file changed, 42 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 73a08bd84a70a..ea6c73af683a0 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -66,6 +66,7 @@ struct intel_tc_port {
 	enum tc_port_mode init_mode;
 	enum phy_fia phy_fia;
 	u8 phy_fia_idx;
+	u8 max_lane_count;
 };
 
 static enum intel_display_power_domain
@@ -365,12 +366,12 @@ static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	}
 }
 
-int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
+static int get_max_lane_count(struct intel_tc_port *tc)
 {
-	struct intel_display *display = to_intel_display(dig_port);
-	struct intel_tc_port *tc = to_tc_port(dig_port);
+	struct intel_display *display = to_intel_display(tc->dig_port);
+	struct intel_digital_port *dig_port = tc->dig_port;
 
-	if (!intel_encoder_is_tc(&dig_port->base) || tc->mode != TC_PORT_DP_ALT)
+	if (tc->mode != TC_PORT_DP_ALT)
 		return 4;
 
 	assert_tc_cold_blocked(tc);
@@ -384,6 +385,21 @@ int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 	return intel_tc_port_get_max_lane_count(dig_port);
 }
 
+static void read_pin_configuration(struct intel_tc_port *tc)
+{
+	tc->max_lane_count = get_max_lane_count(tc);
+}
+
+int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
+{
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	if (!intel_encoder_is_tc(&dig_port->base))
+		return 4;
+
+	return get_max_lane_count(tc);
+}
+
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes)
 {
@@ -599,6 +615,8 @@ static void icl_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	if (tc->mode != TC_PORT_DISCONNECTED)
 		tc->lock_wakeref = tc_cold_block(tc);
 
+	read_pin_configuration(tc);
+
 	__tc_cold_unblock(tc, domain, tc_cold_wref);
 }
 
@@ -656,8 +674,11 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 
 	tc->lock_wakeref = tc_cold_block(tc);
 
-	if (tc->mode == TC_PORT_TBT_ALT)
+	if (tc->mode == TC_PORT_TBT_ALT) {
+		read_pin_configuration(tc);
+
 		return true;
+	}
 
 	if ((!tc_phy_is_ready(tc) ||
 	     !icl_tc_phy_take_ownership(tc, true)) &&
@@ -668,6 +689,7 @@ static bool icl_tc_phy_connect(struct intel_tc_port *tc,
 		goto out_unblock_tc_cold;
 	}
 
+	read_pin_configuration(tc);
 
 	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
 		goto out_release_phy;
@@ -861,6 +883,8 @@ static void adlp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	if (tc->mode != TC_PORT_DISCONNECTED)
 		tc->lock_wakeref = tc_cold_block(tc);
 
+	read_pin_configuration(tc);
+
 	intel_display_power_put(display, port_power_domain, port_wakeref);
 }
 
@@ -873,6 +897,9 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 
 	if (tc->mode == TC_PORT_TBT_ALT) {
 		tc->lock_wakeref = tc_cold_block(tc);
+
+		read_pin_configuration(tc);
+
 		return true;
 	}
 
@@ -894,6 +921,8 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 
 	tc->lock_wakeref = tc_cold_block(tc);
 
+	read_pin_configuration(tc);
+
 	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
 		goto out_unblock_tc_cold;
 
@@ -1127,6 +1156,8 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	if (tc->mode != TC_PORT_DISCONNECTED)
 		tc->lock_wakeref = tc_cold_block(tc);
 
+	read_pin_configuration(tc);
+
 	drm_WARN_ON(display->drm,
 		    (tc->mode == TC_PORT_DP_ALT || tc->mode == TC_PORT_LEGACY) &&
 		    !xelpdp_tc_phy_tcss_power_is_enabled(tc));
@@ -1138,14 +1169,19 @@ static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 {
 	tc->lock_wakeref = tc_cold_block(tc);
 
-	if (tc->mode == TC_PORT_TBT_ALT)
+	if (tc->mode == TC_PORT_TBT_ALT) {
+		read_pin_configuration(tc);
+
 		return true;
+	}
 
 	if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
 		goto out_unblock_tccold;
 
 	xelpdp_tc_phy_take_ownership(tc, true);
 
+	read_pin_configuration(tc);
+
 	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
 		goto out_release_phy;
 
-- 
2.49.1

