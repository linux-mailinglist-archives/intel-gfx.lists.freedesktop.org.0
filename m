Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7104CC8FC9F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86B810E89B;
	Thu, 27 Nov 2025 17:52:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jm/jBBgO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 371FE10E89B;
 Thu, 27 Nov 2025 17:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265923; x=1795801923;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=vLUnxaQimT4Mfg4t99qiN1JVb8GqXCexysB6uI4ucm4=;
 b=jm/jBBgOB0SBsAyT73yN43UurxXETKa0hD3hWYpMisibw7Lra6Rwzb1w
 fWjVaS7AtfNwthO8p1rWeyTNwKOnVoXkr9D6wgXRU2rBaB7HDpUYToxS3
 HsGkx2TdKse3CbopVo8Ziam6Sf9w3g0FbPmAdad4brlHZlugMuqOqr/hv
 jJUPB+ZoqJKFBBLKqKz3zttWvzAdx2gyLeEfNyY02P3jMaQ67rKWRQH7n
 vNiwDDEu6dN86e5LrkUPE8MfIPuQipxbOAum1GYSIjcWTwVSU0t9dVh1A
 aIbZlak9vw7L3tphXNJ6+kY7LOFNfu5q2hbBl5/4fwVN/GFxNYrRoV+QP w==;
X-CSE-ConnectionGUID: 6nd82qpaR5yqyOVo7Za0Kg==
X-CSE-MsgGUID: rGmmGh0PTXWbQ3GyGqaeYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="70174653"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="70174653"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:02 -0800
X-CSE-ConnectionGUID: ZO7KO60sSvy3Qww4QFlwcg==
X-CSE-MsgGUID: m3OQvCVKRYaF/hk2UFHBIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="192409401"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:02 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:00 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:00 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.8) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oX1ek4UiBakRwT8Mm8iRGYLBVclhoXUPovPU2k5i2axG+U9m5j9E+8vs9Hj4cnChRAxoI1U/LCbIJElw4+GwiVUCA0sq8gbvxEaVDFRyvRnSe2qCH4cQy7VIWDPIx0VGJYaVEXs1rrsR/Qa1p41POYwUjWLIo1gPEqz3uUQqeKdli/61Pkl6DABVr7CKVX3KiwJ6GBmJMIpvMeksJRV9C6PqR+ri4WAix5u+dJBPEg/NIbGzQuW1+1hO8wUwBcboZNr9v0VdWW4UmNLFyfqmwv3SvPlgn6Ih6M4t6cIz5hQHnJ51uxt/hiwOnVh/IQFIXfpGwfHDtywZsijCzPH9Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=csaxO6cWJ43pizDbtF/eMTGKHJ/wLLKXdoUiVkBn0Gc=;
 b=uBjcghUrR8Y20ai5qpRVwzo8gxYx1dvT+NzgWlXFMYmLCDqM0g/8idChZnJSS0FktV0Xy2N9+mn5yKyDRdOqumOhPZbOyjpDQ6SiBKtwxPydsOwhhaV6IUGsyNbGIFq1q9KWZmuBZFb/PjeXpqpWxqYXBqUVv+j/5gvajQbxZVXAPslFWbOBEspyj5HBL5RZHFCphAE1whf6155Z5ZVq2LhWx9iYYjw2YoEQgMYVIVdG1RBYQioFRdmCtd21OZHkes9tWbtoupNk0G0AHIND2B5kFIR1Gti2EFqPrw0pUqPIGqTwQG+nbn5RyfGvHE6fGcnzHrPNMo69xAGKz77/3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:51:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:58 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 31/50] drm/i915/dp: Simplify computing DSC BPPs for DP-SST
Date: Thu, 27 Nov 2025 19:50:04 +0200
Message-ID: <20251127175023.1522538-32-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: e93b53d1-8a25-4ac5-7c7d-08de2ddd97f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vlZclL3S4J7VHC7v2cw2S/Z3OC8eeweRdtTYmUu4ysYt74tAPKnDKV14qhrM?=
 =?us-ascii?Q?eQ8NbKiMm85U1M/bNyd/hVODen8C37ertJLzs6AGXWaJ/2J+38aUPyQekVvL?=
 =?us-ascii?Q?U6j524bIgY//jg0LYx/Erae0Y3O7pDTZi4Edechf5jSYEQdCWjxunzFRcHc3?=
 =?us-ascii?Q?6mevf5BFtErcsC/YIRDRXQKNPpqIGxB4LNO0K68+TM/eBFbVYI5S9+RlEDGW?=
 =?us-ascii?Q?f6wml50+yL8X2LpFTMGVg9klzTZLmC80gce4TOmgBUezYtgwR4CkcSZYOC9C?=
 =?us-ascii?Q?CVWGBJnEJZXloLHotHyNstx2qXnmbhbxVHFiZCTmFtin6cg7y4VoBgVY/f0e?=
 =?us-ascii?Q?RmivRxKMNQyV1R5x/Pl+xnf0bRTnntU8bBDfU3Fj/FWTVB9JjX2K+k0QMrV0?=
 =?us-ascii?Q?T3XIXR4e+OhqM77Jd0cPuM5jb4FagvqeamLzExy/A4XHsGMxbZ0P/iQ1RTqA?=
 =?us-ascii?Q?aM1/G/MtjjLoy6Ys4DAdKAY4ZDeH1qxVtfkdJY57YY1svoNQ46YyFMyI/z7W?=
 =?us-ascii?Q?LATjd91pIrZINM5sblB8MxGZcipkuTrRyjBTCD3I0LOk+adqbDQ1+9wv6QlD?=
 =?us-ascii?Q?dJEweEMhR22mlCm34zXMJaxWhSX+9f3qoVBD7GBBJQ4yXM+gaIjnkvfCrdEZ?=
 =?us-ascii?Q?PGWYpceQirsBGS9sTcFH0gEhuftwEBEbV6y8EbWQ27I51+/FD4goSmb22xga?=
 =?us-ascii?Q?Rw3xegKdvTQiOfBaWylhdlrern5nNUHgA1lFT+AmNy8A7k0VmAE1Xod6TMuJ?=
 =?us-ascii?Q?aXwypsSZZLQQ/AOPbM7MolS8d0KurPcT+mU9yQwJUqsaJn1UJfnd7KX7c4d5?=
 =?us-ascii?Q?UyxYDQ8tczWb7Wio0eUZi5riS9O0Dd01l2VkxwWf1mnylFzcHdPlD2dJzmNt?=
 =?us-ascii?Q?4BDXcps4pa0pjDBEG1kYcVlhkxM4zZ83vBrsjOk/k+QLtQiwLBKrZwvDprPJ?=
 =?us-ascii?Q?X0Reqgkz5FRJGCrkLO2V+aEhKbuXEtIbI2ID3O+yPuveDds53YgkGRnTfMTA?=
 =?us-ascii?Q?i2Hh/yP7m579fevtK5eeDwHZ3QOw9yy70Ydj8DWCDIj/KTDrD3fF5WMwtuy8?=
 =?us-ascii?Q?/W2PlCqiiO3Pe1j5wXlVBbKvb59ohg4SEqyBoPGW5MmKIAI54ArOredEbAms?=
 =?us-ascii?Q?mvo6akVMmgiObLkBMMQJ92JWjQcAPZlY94iNrL9L1yPUr0GeqjKkbmDr+O9s?=
 =?us-ascii?Q?q0Hkp1YSpNxeXMTe0Ik67Duuz7LqnsBhGJatgpZKGlxjq1tVEoyPJdu7ycC2?=
 =?us-ascii?Q?5mo+7dcZWYBbNp2egQLYoJNLh2FLIogwtIIzFm8VQg0nt50RnaiPUshCrGWH?=
 =?us-ascii?Q?xeofNvvr0+UZShB6ZDn2wr62edjcIOm0fYsB9AeDTscD9PW+Y9Bc/wMmDldb?=
 =?us-ascii?Q?WbAOeWLQnIemDfml4Ki4XA2Uhcab0lFwCSGZCekXaxTHbPiZFSkdZTKfWYVn?=
 =?us-ascii?Q?8E4bjc1kwi3Mkwjrgrw5H45XybylMOWk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KCqEbVAf+aLKe9BowKd6Xlsb1DeXVeCfPqLdLnsA2CrfFJM1RIjvL26ef2rL?=
 =?us-ascii?Q?0AEYet9+tQQ/qcTrtcXWnHvUR87g6b9gGGQUZ87Geeklke2Ddz5e6rU+kjEE?=
 =?us-ascii?Q?EA0Gcp3zIEhPFsXbidyiNc75NMeZDlf8amCSHjnNesjmPq5JJZ/1WqzV9LU+?=
 =?us-ascii?Q?dRV6eN3CgSrngu5E+VlJ5LxgFKcoG16Wj/I0twaXFd7nEyvtP5617M0aFVz8?=
 =?us-ascii?Q?r1xp+gI2w07rCvQN1cwXneqcmhaNn1MGG/xiNK9dmrr6ch3wxIAEwI/mEwxL?=
 =?us-ascii?Q?y+GcrZUAJGGQQgT1UESL0sksqnQvde2fekKJTXcIIpv6ufnLrhcgYnS6sZlm?=
 =?us-ascii?Q?buEp9iAIekak946ppDUgmdDI/7i383FKyROUwaCIbC58GeIZtEPLhE7h8W+F?=
 =?us-ascii?Q?8YpkntamBLOg9cgQMp76A8jQD9IBafrfxNw1ZZ50iH+iyqmqXB2mE6Jg6Gve?=
 =?us-ascii?Q?P+tkjS0P0Bqlmjb8L5Lcz6Cv7Hws7umRAjSWl95AP4hBSFUryS5q0xc82vVg?=
 =?us-ascii?Q?I9wP3XKRnDXgB+aTe+LabDIi/HxlEXBJXGC01rlLI2fPSqzQpkY+RciWoy8w?=
 =?us-ascii?Q?GZ3lVHTu9B0E5AuDKdAOslNTp4c1oacZcxcLQvkzM1roTbRqeShR6HFF7LX0?=
 =?us-ascii?Q?snkAovMkUgTG0E+zX653blijwmoqxekuazmVMC8VUrMC9mhiPtmUGw9BXFHN?=
 =?us-ascii?Q?1Wsu5UG90xiDXpvsOc3K3LLKSOJ7UOmkZvRpHRyiDMykHr8P886JsmJ5ga1J?=
 =?us-ascii?Q?4W7NJEsjf61OL2cbzhGFZ5lYYDB+tv/jXTzqy0Yz0++tj/4M4egKFOXBi948?=
 =?us-ascii?Q?ijs3OAmv83ZBCzOyJhIQuTqMDrIEKZ8agoCf53glHIbdGtSV/CTudIDBb0MW?=
 =?us-ascii?Q?S91QNY5CzFyw6PEHLDSWiuDYcfXKQmrO1KLxA8pV32g2bBWYrJ/qUw+nb8Fw?=
 =?us-ascii?Q?oT35hb3nPdxkM1V2oWBQAr5H0SPAhMoFFAqp7JBqnlTXP9pO5EF8GAlrLzWJ?=
 =?us-ascii?Q?RQRavw6iKepVxFKWkl9tgrX3WlRUqnqMBa0oXQAABocfKFNce1bjXG08zWIQ?=
 =?us-ascii?Q?K+GTinVfvRblbbWI+lkWEhdHhk7zl+YkGx7rVkIWRhpPnG3T4sJGdonHjBze?=
 =?us-ascii?Q?EXubxJA+mK4x7IbWW7hW+G6hhb3s/8IsG8o6pNEe7vL+4E99iYkGZ1X+SSyw?=
 =?us-ascii?Q?9V3haT6hkBv38KsDiUpfcbtN2d5m80XALHgPXcnyYqJM9SVW/vHnv5CiT4cI?=
 =?us-ascii?Q?SAgaYmo3EjSZrZAyWyF/KqkFobm0ltK3MBpF73WWPFvTdClUipQ3VgVbfvs0?=
 =?us-ascii?Q?0Tx+zPHtPUUhSx7gsCId+3aGm6s2rtUqG/AnAJiGcRLgZcfRZ/BayZbjf2Go?=
 =?us-ascii?Q?i4935DwNCJyLlY1la1CQcH94PkU0y9ZmhcQQoTKq0xvl1ixDb0Sd+SvYV36+?=
 =?us-ascii?Q?mt6NaOHxgiN8qYvDFrvoaCvwU+PLdseQ9hxptEJORSQVIL+n4VDdppOCg/n9?=
 =?us-ascii?Q?kffZBoTzh2j8Mwk0H2vfdFPc/c1vGSs0CYYRDW1v0HWeEbs3zt8UmBfhPIvx?=
 =?us-ascii?Q?9Zk19KSurz7tc1AsDe/R+XuG18Ex77kP/Ca59pwbjdz6GoejOSLRq8pfH2rB?=
 =?us-ascii?Q?KmDUgE9tnq6SLKc62Ls7DxHAG4QMsqPzI/ucQKgMJq0g?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e93b53d1-8a25-4ac5-7c7d-08de2ddd97f6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:29.5645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Cx294BpOJfrdnG6vUOusbHgfU0yhcL57r6FiXmiHgsYBt1iX7wL02LNN0M4qxx89CUKB4PsDIT1nJ9u2LpbqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

The maximum pipe BPP value (used as the DSC input BPP) has been aligned
already to the corresponding source/sink input BPP capabilities in
intel_dp_compute_config_limits(). So it isn't needed to perform the same
alignment again in intel_dp_dsc_compute_pipe_bpp() called later, this
function can simply use the already aligned maximum pipe BPP value, do
that.

Also, there is no point in trying pipe BPP values lower than the
maximum: this would only make dsc_compute_compressed_bpp() start with a
lower _compressed_ BPP value, but this lower compressed BPP value has
been tried already when dsc_compute_compressed_bpp() was called with the
higher pipe BPP value (i.e. the first dsc_compute_compressed_bpp() call
tries already all the possible compressed BPP values which are all below
the pipe BPP value passed to it). Simplify the function accordingly
trying only the maximum pipe BPP value.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 29 +++++++------------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ee33759a2f5d7..902f3a054a971 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2294,11 +2294,8 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 struct drm_connector_state *conn_state,
 					 const struct link_config_limits *limits)
 {
-	const struct intel_connector *connector =
-		to_intel_connector(conn_state->connector);
-	u8 dsc_bpc[3] = {};
 	int forced_bpp, pipe_bpp;
-	int num_bpc, i, ret;
+	int ret;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 
@@ -2311,25 +2308,15 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
-	/*
-	 * Get the maximum DSC bpc that will be supported by any valid
-	 * link configuration and compressed bpp.
-	 */
-	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd, dsc_bpc);
-	for (i = 0; i < num_bpc; i++) {
-		pipe_bpp = dsc_bpc[i] * 3;
-		if (pipe_bpp < limits->pipe.min_bpp || pipe_bpp > limits->pipe.max_bpp)
-			continue;
+	pipe_bpp = limits->pipe.max_bpp;
+	ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
+					 limits, pipe_bpp);
+	if (ret)
+		return -EINVAL;
 
-		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
-						 limits, pipe_bpp);
-		if (ret == 0) {
-			pipe_config->pipe_bpp = pipe_bpp;
-			return 0;
-		}
-	}
+	pipe_config->pipe_bpp = pipe_bpp;
 
-	return -EINVAL;
+	return 0;
 }
 
 static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
-- 
2.49.1

