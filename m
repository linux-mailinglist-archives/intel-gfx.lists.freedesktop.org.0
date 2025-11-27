Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A71EC8FCD8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E0910E8C6;
	Thu, 27 Nov 2025 17:52:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cQ5/yMW1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7740710E8AB;
 Thu, 27 Nov 2025 17:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265931; x=1795801931;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=F0o/Mq+pXNsIhllhzHi03deSnM0uDN9je2j5WIJtGpk=;
 b=cQ5/yMW1GTWbTU6eUxgAtggT8Vrnq4WX60fB320KnznftmlalLMF113j
 1AjK5xH7/cdJx0iYLVFZt1rUpINcoCNxFZPQsAxm2+/nRdRbzKIjHeUB7
 dJPXpjTMW1QHAknzAxItm6zzb3VdNzfYpT5XE/s0NJEmGwOcu/rJJEH+e
 9JVF1Qf8V9Xb3qqg77o9NQjOA8J3VaIybn0WB00XIe4u1dGhwA7qgEEgz
 PRD1yh+3353FUqHupUNIQ5eLeOrnJnHgdZma3ee1AyRMniyLwIPwwFBCn
 BNvQWFltRVcEJUxuaJUMtc7Zp2xowNWNOkwLsOk3YsN4uCMfLUacgjhM3 Q==;
X-CSE-ConnectionGUID: TV1UeOJ9RCix2aa5qqhE8g==
X-CSE-MsgGUID: LcydCDlOSFyIxaeyv+t6RQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77003052"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77003052"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:10 -0800
X-CSE-ConnectionGUID: +1H2fj2wQBiY6AA6l59gUQ==
X-CSE-MsgGUID: 0VMcmN/TQL6P7OH6gzjNYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453741"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:11 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:09 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:09 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LCXPizVdDYudi3yKkxyNPg9tWN2P6z4nqUSrU+o5kIx/ktzQu3ZHbNW8tKdRSy6Cq4Cj2gMlsxhtDjMn2XORBX8ONJsVw1E94dKekXjsYehZOTotsjwVKE1tp1JeqpTGpVyIoeqZD6Y/viZ0wHw0UpdlHkdZVGpV3MSU9QX6V92tE1MKCpVRSPHNmVouZR4Y1HpNmZngSNNl8KY/XdzBOSlnDZM76o6fgK3g89oNVPdu4o8vMLqOrKOWOqKuiy7OFEio4Zk5gzNfJmFo+y2gxWxEvNf49jPUmqRjWrvauor+KIb7Xxlkgm4pNof8fSNRTNhvdGUGEJEF8A0OhUUSbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P1EacCCLV+UYQzQ4+mpz/8NV0UBSHv5vy6I0ERczL2c=;
 b=ySc8PuSufbRIWFkH7kjM3phBbyWXcgkdV0MF0MQpuBjl7qctSK8yQS7QV2fi08G07D3k5f0KaPT9kVUTK5BkE3YQnupY3Wd64ijAfFU1UjCaRRBcnG17AE7e9mvagHPZeIFGUuExBgmC5laSuWxrnN2ZWwkDo+/U48aQjGljdWJgC5zzHXT4D/8hzXcnDL1UI5KDiqnxTdyXRFbioHXq3YzUGNFIB5Wqud9kE4QcL4dILUNk651Sf201ZYDWy/028W9KWvW5uD9DprQmFhOajvVtuH+ENSUbdcyuIxmrsVv8SF4CK30jG35mkv4rfFjrya3oIeS7ne9wNKgFgOsp5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB7887.namprd11.prod.outlook.com (2603:10b6:8:e2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 17:52:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 50/50] drm/i915/dp: Use intel_dp_dsc_get_slice_config()
Date: Thu, 27 Nov 2025 19:50:23 +0200
Message-ID: <20251127175023.1522538-51-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB7887:EE_
X-MS-Office365-Filtering-Correlation-Id: ed97285d-4685-4c4e-c8d9-08de2ddda5b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SUc932gLRNrkh38dRGmxo/4pZWWIA69PjiG52acdjBLDcMUuhq6fX1cY1iuZ?=
 =?us-ascii?Q?VxvyF5aNlNgXWxZZY5cq+imhY95N+tEPP99CZpkILWc81S++FGOoMDzdm21W?=
 =?us-ascii?Q?dEyQE7OXOojqkZFGljjxw+ORwa2fngk9pHmQ2FJIAIT/2sJnLsaIZ4nk8nMA?=
 =?us-ascii?Q?oIeEVre/QaF78RozIbywgkftDAyfxrecaZc52wamxS/Rovr+5FBA/VkFS1JQ?=
 =?us-ascii?Q?wlrEuSnxepK2hc03n6DW+KDXvdsEuXbugyLbyOQHoTH6i1EcohYszFc7ykPB?=
 =?us-ascii?Q?l+uyPTDGOtoxgVZro9pNjdmgh3CF87dnq9IfvuUj3qff7WxOdeRZWYyJkcxH?=
 =?us-ascii?Q?kQrnxMidneQp66U0tT79WsftfZprHT9FnHDNhfRbCR5NH/RiT/FnPe63QLr7?=
 =?us-ascii?Q?SgkC3e+VhUFHIcAyuRqVBGqahvcqJO2cR5Uoyp39ynZ+lA8aP1sFR+ugd8l1?=
 =?us-ascii?Q?SEzNl1i7r3EvTpjP8h8mbp3TG2Ha3IGq+i5yvdxwxq2zwH2GUWwhwlbFFsoT?=
 =?us-ascii?Q?CbP6tYI2coKnVTQIvnY7PwFlFchwnqzQwyi//ZPVCl6B6sz8th3wJ2f8QJU5?=
 =?us-ascii?Q?6C4rR/zWMtVsqqfu3UIyqIfZNqcMeO/cWX11luoNg3TataVrqrJkXziG3sHv?=
 =?us-ascii?Q?8aWaBUbKsthdgfOyAGyBogHiDnnG1riDTQDcw8aDtppqG9Pf9+EgNFau0kST?=
 =?us-ascii?Q?+G1d6aNwM7OBP9JxbhseT2cJRXLt42TnbrEhPlIOX7H5mbTVw4bH8EwraH3H?=
 =?us-ascii?Q?fezbXd+xBwvLPnlUMLgx8WrqfD9qU9i6yQjSgSF3A22QSWVAao0GV1H4DomH?=
 =?us-ascii?Q?PjUs5JpN/5BLy2wF6jXQGfcdNxF9Njz/6eZilyymtS3Zx+EXKq9c+pVHVHgq?=
 =?us-ascii?Q?0TUSJmm/8sBIDCuYw7ghU3zOWxIY/dSxqagIC11HCJ3vSmagXZKaTzPm2Pw1?=
 =?us-ascii?Q?RWpfbwcLfZ3cBw2BnNSnRVliBSis9v8dtbNwHy4BRmGIQl+rVEHqhoNYNf0Y?=
 =?us-ascii?Q?a3XSW1kNX7KQJ4UmEZPZGMh1Boe/EvKePq/OstM+qeEDVqTFJ/tuYJ1xOGJn?=
 =?us-ascii?Q?MruHeQs0gSnvOe0/I0QPOWaAXdavCAdeuhMGUUaUGG1ldx8gKMK6QegVez/p?=
 =?us-ascii?Q?WtCRfkhmnXC/vklWcm6Tl9RuSE6cG7GB16q1tDQCHr11xYZBo1eAyfKBO53u?=
 =?us-ascii?Q?XxMrDYSHNVcDPChOoikkbw/oxwTWNWjY8O+17E9U0js91GloH+1aF1ggWy4e?=
 =?us-ascii?Q?Isv/8BTa9Htx57HG/gLbVpUf1QFfQtLWY/zPPrmJhPh67cllFFxw6FH+Ifwx?=
 =?us-ascii?Q?gYHeSl73fAuRT9t7vpnjeMrwYz9u6B+0hYKSPzOlyNpuN4fmN00mNTpsFkmH?=
 =?us-ascii?Q?7TMTt/EHoqG/toGPpxDdmhoJwnG+diwzvgbt8iDK1uT9zqWUJvRoibQrYmBP?=
 =?us-ascii?Q?hemixvDjBMQ5mrhgXaMfRamDlLTfJw2m?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?17GOynxEtxMCckQsqJ8DY/A9EB6vSon3/t947WeZjkZeU8iyPw7nf5aPfjWR?=
 =?us-ascii?Q?4FwZ0UU3dhVax42Mu52OqP1VcXPfsIGSxOPCM2oqnbosCvNDgdP7PIpa2v7Y?=
 =?us-ascii?Q?FtiZvcsJDooQjQTuc7VlWljnXW620mRzkDxxooMYSSTqae91sMAbKEsksybB?=
 =?us-ascii?Q?f/KYcJ8NDVkpPTQxrgC5fcqE47mGVae227D4Op5wiHNFnIj4BX2doW78rPWL?=
 =?us-ascii?Q?1y5fUy/iZGJWvetpVo6EvCuQ1/JtUR1GEaOyt0a6UCySlMLrBYSE3R1MPzFj?=
 =?us-ascii?Q?Nlcnjrxuv4RA+NiXF9JUPkozuzCEHtjjrgniLdtMc/wjOLNjCqGzWfFmhT/J?=
 =?us-ascii?Q?sNJ6Dp+oIZQdevFIBJCGJBWPALaRPIzz9VXjgBEnyEIQNKtisgTBzydJs45a?=
 =?us-ascii?Q?hvZb5pQQk0+ajjEnihyiHWKzWicROHwrGy015Mdngq412vIU2hOAy0TGSWao?=
 =?us-ascii?Q?ltDvrDYAEEXw/DqyQEmxdnQ9TuUxWxeuYA4ZC5dGad1s4BMuqrIrmYPzQrZh?=
 =?us-ascii?Q?aMvLS4nFBJnkJS/aNfD2yTfXGXO31+aprhhl+1d2VqwTxQfy46bAnhjexYT7?=
 =?us-ascii?Q?460W7dOZYKAy4eF9+VZUbwxYzTxz/i/VLZtFPkUJgd8hWukbNrLpXXwrFIXW?=
 =?us-ascii?Q?D9WcREDS5DFmgoZ61U/pAB7GlSZj7yIfwiBrJK5mL6BqczsKQp/5hcRcWv1K?=
 =?us-ascii?Q?wlUVL8etdrOVjcHkc0R8xptn9JpX5iMb9yVUI/NaKpQYhGyZopXv4B/f21pk?=
 =?us-ascii?Q?683gSStkgXpXGLnKGiNut2Yn2ZnQZJh9wAPKmW2pekP4F+U4NjUdEJEm3SZM?=
 =?us-ascii?Q?LIHA5nQ18pU24Nh56gik1AmTexMU3qAFUFfIHHrufAOaAg33pX4NkMnepKSA?=
 =?us-ascii?Q?t7l1npi+giIuYi0Y+wlMlEOLbdEYDDHg2Rq6mMwxNqrUVREcfktp1CguRiLp?=
 =?us-ascii?Q?a/kNhi3FeVkEKZdPx7uQscUGuojxhPeCqqOxAG4T69WVqkvWlLVMKxbZRXEc?=
 =?us-ascii?Q?32vRM+oJgt6kGe2SVVlHZuUbuv9aDnAnK4wuSCCABUUyo/NyO5N64+st2Xbo?=
 =?us-ascii?Q?a5Gwj8QFFxugOupH2UcigeRu90hP2HK+X+yaHYRd/wPyN8sv0LYlbESZhLlO?=
 =?us-ascii?Q?Z2PriQJ9koF701IkpM1aA4mwQD1KI95fSNZ00WPZC4LyJA/9rWga1pXEmmEr?=
 =?us-ascii?Q?yl8eNLNhRmKU0FtBB5byNgqSRNKM1CZ+apA9LnlqI83piptKTpq58Q0YURmr?=
 =?us-ascii?Q?1EllmXuxJAr75CGga2HzMVcpXQjM2Mzc6oUZpnTLhpmI7a1oJcT7PDhJ7NvQ?=
 =?us-ascii?Q?n02G4h2ouHmEoUYdC0+kw/UwNZXe53HI1SDFQJoYGVCvQDckMjh1WePfkB0h?=
 =?us-ascii?Q?OvROKmuZ1TRh4dL9e8IrKbmfX1oRhDLukv1kCEjvT2hbndtSNcfX57UT6q3+?=
 =?us-ascii?Q?I5Lr8DphTdJX58Uuw/ilLxCz5tdLql34r+pBnAUbTtAw627wdSdb6G/zuYMO?=
 =?us-ascii?Q?FVzEigZTgj0ZkUxZce2hQXmttyZWAx7ijOELU9VPJcMVENiC9WPIxqJ4Htw4?=
 =?us-ascii?Q?ccDcpNmrYms+yxAkZdQRDOklKiGdWIA/x6nPw2WoN6s7soSynmeKaoVxknwj?=
 =?us-ascii?Q?RSYgUB9KYcmOYdiInsCk3hVo1CzDUjBDkVVWNz1eznCo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed97285d-4685-4c4e-c8d9-08de2ddda5b4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:52.5147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lMSqjo8nVKMEYWhYGlHdSzxyOoB/uFt7cBBwL69Esy+6ssHJoVWak9g326ppo6OSgq4/QLMt0D1wKnhEzKwhfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7887
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

Simplify things by computing the detailed slice configuration using
intel_dp_dsc_get_slice_config(), instead of open-coding the same.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 35 +++----------------------
 1 file changed, 3 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 003f4b18c1175..d41c75c6f7831 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2387,7 +2387,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		&pipe_config->hw.adjusted_mode;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	bool is_mst = intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST);
-	int slices_per_line;
 	int ret;
 
 	/*
@@ -2413,39 +2412,11 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		}
 	}
 
-	/* Calculate Slice count */
-	slices_per_line = intel_dp_dsc_get_slice_count(connector,
-						       adjusted_mode->crtc_clock,
-						       adjusted_mode->crtc_hdisplay,
-						       num_joined_pipes);
-	if (!slices_per_line)
+	if (!intel_dp_dsc_get_slice_config(connector, adjusted_mode->crtc_clock,
+					   adjusted_mode->crtc_hdisplay, num_joined_pipes,
+					   &pipe_config->dsc.slice_config))
 		return -EINVAL;
 
-	/*
-	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
-	 * is greater than the maximum Cdclock and if slice count is even
-	 * then we need to use 2 VDSC instances.
-	 * In case of Ultrajoiner along with 12 slices we need to use 3
-	 * VDSC instances.
-	 */
-	pipe_config->dsc.slice_config.pipes_per_line = num_joined_pipes;
-
-	if (pipe_config->joiner_pipes && num_joined_pipes == 4 &&
-	    slices_per_line == 12)
-		pipe_config->dsc.slice_config.streams_per_pipe = 3;
-	else if (pipe_config->joiner_pipes || slices_per_line > 1)
-		pipe_config->dsc.slice_config.streams_per_pipe = 2;
-	else
-		pipe_config->dsc.slice_config.streams_per_pipe = 1;
-
-	pipe_config->dsc.slice_config.slices_per_stream =
-		slices_per_line /
-		pipe_config->dsc.slice_config.pipes_per_line /
-		pipe_config->dsc.slice_config.streams_per_pipe;
-
-	drm_WARN_ON(display->drm,
-		    intel_dsc_line_slice_count(&pipe_config->dsc.slice_config) != slices_per_line);
-
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
 		drm_dbg_kms(display->drm,
-- 
2.49.1

