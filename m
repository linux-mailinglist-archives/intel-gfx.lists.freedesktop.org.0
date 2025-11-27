Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F45DC8FCC3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291E710E8BA;
	Thu, 27 Nov 2025 17:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mWkmA8pJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECF1610E8AE;
 Thu, 27 Nov 2025 17:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265930; x=1795801930;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=s8LrbLuwckXhDln6wjRZJTtD5hqU6RW7oO3J4CYxFGc=;
 b=mWkmA8pJGkbqVe+jsGxzqPzuZbblJhICU+alLEAUH1rSJqMHH0OmNsvn
 h5YezUp1Wo7o2gVwKqFeP19pdtQiVd0OAhUHMN5FfOcKaNiuVncLsp60T
 iuBI5DNB8+TLCBgWuLZq4bAg9ek42vzzdC4GgxPUm2uJ6TtkLt8ABnxuT
 jMLKsBt6CPuugFyLijqiCbTcSApMJJqK503Jn2gAnAtmUoubNjYNxzcGk
 wzlFfRH2mixlpRY8PBXDCUYL6dyDQpl5k+L6kWoIsFfxyt72kzxdSUqcn
 k3N3NuAgAGIcela2neZz65c6BDEO7c/9LlT8ex7B0bK8Lcdu246Mik6/F g==;
X-CSE-ConnectionGUID: 4+iBVAjiQDiYww+Jxxe+BA==
X-CSE-MsgGUID: 9uKYSS4cTCaRCL9NyxnQQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66276804"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66276804"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:10 -0800
X-CSE-ConnectionGUID: /a9UW722TmSqy+QxzfiozA==
X-CSE-MsgGUID: Ulvjdnz5TQ2uMhfqhQ+hkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="230562139"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:10 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:09 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:09 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nUn7s54BIMnr3wrLAJy3DNus1Pn8ptounbv2qV6/wV+mjAdm85c5qyz3hM9IfBFzxb0G2QgnPG84xD3HeNlQbQOJAL54bEjsaJFDmP13IEl8b+6DXgCCZpsN+2MjBucVqfcYA8M8+gElciD7ULEZAmzofdz+TwNhD6clY/T/MfHcVErBvypPFUGjXiCn9ZUMhQsIHU+frQdDba+0wCHsiz3CYShASVS8GR8g0xvn7A0lZpg3QSXVyBNeKInAmKencuw3YQL2gIKBMjDHMgBF25p2W/X4pIuA2lXImhtea1PTxtDJdKld9sGCw9eDMU5PfEqjujIVurDnZck6ayIFcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pdyohMxS9f10fG6UG0Zy/yokypmSff+VQr0CsW0cyAI=;
 b=vL9pEvq8iLTuRmuP0JbXuS0MB4Zv1nofU3n7aeyBUOrZQJyDp04FPJc8fJwyobtIZ5R+zk1ZHPlCXThL8Vcdi1h0A0xGc5VIUFBd1TddxN+lgVPquWYlQxG6KWJOnBEqN1Jia/iqol8iARn7sSxjobf/PB1Sh74F3Co+0iXC1msD6L8O2KjwZajr80pz/u6pPOiO3i8FTRhE26jIXFB1Ikv1BUPQUejO+U2KV5YCrOGYJxBCHzRhvvVE1GZPk/4PJHHnFFCKBsRNXDWpTZuj2I3vuqt9NJ3fpCyRlAA+h/Yc1n2eTpZhqKs1Y2ndNse4JY7siOZoJtyQ/x9W6fJbZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB7887.namprd11.prod.outlook.com (2603:10b6:8:e2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 17:52:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 49/50] drm/i915/dp: Add intel_dp_dsc_get_slice_config()
Date: Thu, 27 Nov 2025 19:50:22 +0200
Message-ID: <20251127175023.1522538-50-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: fe22f4b8-2c86-46fe-94be-08de2ddda4f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?p68yEV+mdWRAdl6H/fjQmugZqwyEzRJHTZo0lUGNfI7rRhN1QPsiVIwQ4zap?=
 =?us-ascii?Q?zff+7s50b+eHoN4m5Cq5rUI/nGWNBCOSAMbJHZktENeVgi9ACJxMQRWYyWVz?=
 =?us-ascii?Q?NyrZLRplRBKNaWR96pyTAmJE7K7fR7mLuILDo/wBrVTlP/Pg2a8IiA2ojv0P?=
 =?us-ascii?Q?Gux+HEnYKhU2eg+TsiGvlK91BILBcpN/jRz2ZdrcOOaVcsVEJxjlY1bymuSb?=
 =?us-ascii?Q?XIBDB15dmffZh6KHJUUKolrOkpInyGTMHihQYtrq+cWud7tkA5URzAnWzKPt?=
 =?us-ascii?Q?RN0+Ahpcpi1eRdkR4lD43mMjQNl4cx7LPqkiTXEk4udogcXmKnieuf+ywiDq?=
 =?us-ascii?Q?e0f4JWiOmmD432znEtUR1HZcbkTl2RkTX7VlBLpdh8hFpmC48Ude7JPa+sDz?=
 =?us-ascii?Q?F8lpKjELw6ATT1KIVZZ4JA08spbD0et1VDYy0XGw3Lhm7hotkWJ4MXxezvKZ?=
 =?us-ascii?Q?9VYUrfeMC7tcERO6w7WGvk2BhWZKjVzHSRcp8yMhYL+iAD5grT/YkaPVCx0m?=
 =?us-ascii?Q?1DRZIz3qj45wTou7Z6woM8UX0Jtxg2uA5pHG+9tsJjRR3wCmP+mGelOMNB2Y?=
 =?us-ascii?Q?Wm1P7+CwKRgOX3LoaGsJdhIl15aL3I24ePLss4JdpfHS9XIZsrzZComkyKL9?=
 =?us-ascii?Q?esmFlAflLjqJvEK97Ak2MYul0Yk/2jhDPqg3bXN2jK3WmK5TxvGTeiTFp9q/?=
 =?us-ascii?Q?9Nugob+XFsjvPakJnwd5wNw4y3S7oieJl8Mofd+gLPWsAYuwFjQBeelt03fw?=
 =?us-ascii?Q?XhfdJ2cSPQUQ1vKp1RGw+hkYGTDvIugGvTH3wk8vdnmthYE4UfqWwGixiem2?=
 =?us-ascii?Q?pD/tumTQ1Qj2zAQmC3IDOXA3yROo6RzIjLyXh2EWUEFQ2IYD32YUOG7782O+?=
 =?us-ascii?Q?YqKU7P0c3/Cc3bq4P2b0fsfFceTbq6pwRa1zaVUgOc5CCsyh4LFf/WiItxeJ?=
 =?us-ascii?Q?WA+bYUMROFrtS+uVhx0sVt1vWx8H0vWT6ZeVAV7zt33rC9f/yzq2WQfBhVFV?=
 =?us-ascii?Q?SxgH/NrR8POwVCAy0rt5LwhR5yEFgEHY0wtLOMG6lIhdtCDmgQjNVAg2g36A?=
 =?us-ascii?Q?TQYMJ62/iJxIz9BdFgm8l4xR5FdVMAbK1mFi9Hnpl+zwEFIZhRZcFxER8dIY?=
 =?us-ascii?Q?q6M3xTSRgwBD7FFWoxaZAYpUmfwkG5TG/JCOa+Ti7rBstOZpr2el1aMbKo3k?=
 =?us-ascii?Q?AatKlHlKGSFX/wMlvJT1Xe41YK4Yz35B7cLX859LS+hWrjHIn9Zpb22/jnSO?=
 =?us-ascii?Q?pdeDB1A7v3QnZomUPdxvIze813SsFTC+y1YZCERukUMjvkcVY42fC12M+A49?=
 =?us-ascii?Q?IbHqfTsrE7+BV4NHg4cSgUq2OpRVTMtlDkpgvTKoLA5aRzo9nxq0wWE5wGv7?=
 =?us-ascii?Q?Y8qqEfVlfZiXbtd4esXpCCd1KjTuVsNIwwoxLVRdEbJmQTD0yYJooapWXcEz?=
 =?us-ascii?Q?SoiET4M/4TNGbGpaU9yaUBvH82Hf8vxF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WecOpzU2smx6ZfV5BzhJ3qaf6p5/iZiqA59sP2WNj7qSgd5UVJQ70gbsBOrx?=
 =?us-ascii?Q?0TQYNQh8Exz4hE0Lttwh++ho7oK5FUGnHpWprfseyEbaLcHsZ/Qo84yhosrm?=
 =?us-ascii?Q?XiFvKHrYRZm2PLAK5Zs3H2B/58DHLU9J183o816XJfpGfTts6yKjaRmDxwQX?=
 =?us-ascii?Q?roRhlzuK8y772t87fcl3SBSIfqRYVHPPRmBDupRvFXTa+yuW3zW7kTHi0hzd?=
 =?us-ascii?Q?4l4C2nry0AOdYrfYk4LruV4wfKy8iVNTLMq7FdN/Q1efbLd2xatRyzh3OGEh?=
 =?us-ascii?Q?z4B7D0qzD00vPKLnj/nxQNVVW/FuX+UjmKMYp6MB48lKM6XpTfqdzTnV3c+k?=
 =?us-ascii?Q?dq1LZbLWCpdw/k1+B03DM3W7ciI0ZOv3IrafyFHuMxlV0giTdaKmkuy+ZEnq?=
 =?us-ascii?Q?LGFzZ83XJuT/HYbi5iEEwy7X5Q8ajYErWRV5uIjcJAU7kWZKtjWD2dn6Dd/R?=
 =?us-ascii?Q?ik0SB3r+o8yMZ5xdaJI2Mx2VUa8rszlIXjZoxG9f97gZLIUdTHUDmwKCckp5?=
 =?us-ascii?Q?lBwhs0yTdIfjI8ka5T7offvydv1kqYQ+xc3tTHmGNzywkp6aJkv2hSq8n/AH?=
 =?us-ascii?Q?bQNtIbrdvSXXtWwecQzKC1Tk4AstGeNSog2oZWlPlrPvJou/H+40fSyB+Vqx?=
 =?us-ascii?Q?QR6/ajjtSCE8TQEZYOOVu4KcMutg8TWB7yxPJwGFSfygUJF9f4zPGV7zslwL?=
 =?us-ascii?Q?qnyWjvvTjAIwNNzY9+DaozChD9QkljjqjQHEQ157i60T7wyrQmj/cezUR4s6?=
 =?us-ascii?Q?5N6Q9yNNck1sl6etFmRlnEnby+mpJrrlMaxK05/qroTvlpVXRglKUW0rMYL2?=
 =?us-ascii?Q?f79Rr503fDDnwux2vRu8BydJFLnQbC25C2FPDhpis67QOb9aXJ/tqut0KkSE?=
 =?us-ascii?Q?ApoT3e4G0LT1kMSdRFmRPP6s65zGDb/YFWevwHeCTSJDmUtXERI3qlVI9IWr?=
 =?us-ascii?Q?15AP74KiX4+TGonbSI0QhH2FPUk8O5mS7tXXBmJH1DN1DWNQa/gvupDCaJcb?=
 =?us-ascii?Q?SW+8sPQjl3nqtD0rwlwoCO72TYv3tFOHsO7tnlQDYxkf7W/Oc29angRu6HkJ?=
 =?us-ascii?Q?wPrYySBWbCdoMkPq0wU8RWrG7NVg98X5WjHP7hExGJHFatOEHTXTRbSrMFQ2?=
 =?us-ascii?Q?ca1hKge5UmRgIibxEWNpjh/kUusolP8RZM/0mT00GyyGWGpu3nFQ1DIC0Vt9?=
 =?us-ascii?Q?F7oXFLHt2VMJpYqMBsBvdK2CXATzTPFLmyf0Xt1ZqPrGxGnp2suisZ6ATrxu?=
 =?us-ascii?Q?TsSjZUB6EI8Y5KYm+o5K8aFSUlbm9MNSMXYkTds84ICWIHX9AJxSbqTc54Px?=
 =?us-ascii?Q?KnW+ib5COlfOiTxut87It5IMy7wvVUdekWtO0MhXO5LNU7T9auI5nFZ5hWqw?=
 =?us-ascii?Q?jx85mhwdR2Ml6BYhdCAf2aXfw9vRMeFsO/X7igcqY2663WZkMQGmok1dMFwK?=
 =?us-ascii?Q?ZQz00QGZnrw0skx6bq4AqcOVzMWYTnhlVJqtA/cuGkMgVfpm9PLvwoMlcTK/?=
 =?us-ascii?Q?Tu118Fs7oevOLEb2l2vvyiozYGATinAPvFYvHkAJ12zCuYIeVL720fV2OJTM?=
 =?us-ascii?Q?lDhr0wcqC/jolpZwhfmyLCvyEwspF4XgvdBlY9JJUqamRQc6fft44PjExGDk?=
 =?us-ascii?Q?bfBiCwRJp73/5sCX+fb+fMs4Kr2/SE9uHtzavP0exI64?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe22f4b8-2c86-46fe-94be-08de2ddda4f5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:51.3779 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SYsN/Thj6z47ALf5UmkcA6CoLO6r/qJZQJqfUvJJhDY47I35J4plkjbhtWsHQIxF0q1wV6BHkD41RetJw1J0Ew==
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

Add intel_dp_dsc_get_slice_config() to compute the detailed slice
configuration and determine the slices-per-line value (returned by
intel_dp_dsc_get_slice_count()) using this function.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 37 +++++++++++++++++++------
 1 file changed, 28 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0db401ec0156f..003f4b18c1175 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -971,10 +971,10 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 	 */
 	if (mode_clock > max(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
 			     connector->dp.dsc_branch_caps.overall_throughput.yuv422_420))
-		return 0;
+		return false;
 
 	if (mode_hdisplay > connector->dp.dsc_branch_caps.max_line_width)
-		return 0;
+		return false;
 
 	/*
 	 * TODO: Pass the total pixel rate of all the streams transferred to
@@ -1009,7 +1009,7 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 		drm_dbg_kms(display->drm,
 			    "Unsupported slice width %d by DP DSC Sink device\n",
 			    max_slice_width);
-		return 0;
+		return false;
 	}
 	/* Also take into account max slice width */
 	min_slice_count = max(min_slice_count,
@@ -1018,9 +1018,11 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 	return min_slice_count;
 }
 
-u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
-				int mode_clock, int mode_hdisplay,
-				int num_joined_pipes)
+static bool
+intel_dp_dsc_get_slice_config(const struct intel_connector *connector,
+			      int mode_clock, int mode_hdisplay,
+			      int num_joined_pipes,
+			      struct intel_dsc_slice_config *config_ret)
 {
 	struct intel_display *display = to_intel_display(connector);
 	int min_slice_count =
@@ -1057,8 +1059,11 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (mode_hdisplay % slices_per_line)
 			continue;
 
-		if (min_slice_count <= slices_per_line)
-			return slices_per_line;
+		if (min_slice_count <= slices_per_line) {
+			*config_ret = config;
+
+			return true;
+		}
 	}
 
 	/* Print slice count 1,2,4,..24 if bit#0,1,3,..23 is set in the mask. */
@@ -1069,7 +1074,21 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		    min_slice_count,
 		    (int)BITS_PER_TYPE(sink_slice_count_mask), &sink_slice_count_mask);
 
-	return 0;
+	return false;
+}
+
+u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
+				int mode_clock, int mode_hdisplay,
+				int num_joined_pipes)
+{
+	struct intel_dsc_slice_config config;
+
+	if (!intel_dp_dsc_get_slice_config(connector,
+					   mode_clock, mode_hdisplay,
+					   num_joined_pipes, &config))
+		return 0;
+
+	return intel_dsc_line_slice_count(&config);
 }
 
 static bool source_can_output(struct intel_dp *intel_dp,
-- 
2.49.1

