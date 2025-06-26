Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F4EAE9809
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4043910E83C;
	Thu, 26 Jun 2025 08:21:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kD9FpBl6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5F0910E042;
 Thu, 26 Jun 2025 08:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926071; x=1782462071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=/KYChAJvcgGHA0oUq7+b/AvbkVhWhXP1qbJmuLnaDgU=;
 b=kD9FpBl6r9GzbhRA+zB52dqATK3lxWImjVptA5LUFoOiisX1Zm9bSCUh
 MHGqHulpN+7Gsf47eAjlGpjMi9OX2P9ydc5Chf0A5nZUV+ECGjkTnHtL7
 5PJBPqSxYeayuhpTc0a8P+xXfBJH4lQTR46sVTczG8qxOkoKgHSvAYdpk
 we/c+Z8ZZd1vsGVyknZpBKBXf+KLjicHzoaQZHZTFLxls7L+Jq+vawPG5
 E8UjijeZ98x3o7KFR6xv7vSufbTgsdX3S4MO76P2329mMdAU6CNZgG59d
 S23EW6Wk38LmEEVAUtqi+IskdkqYw9VZoo8D6Ajr4o2tWXfYNuTCesVFL g==;
X-CSE-ConnectionGUID: yB1rzqPGS5StFDTN7vyaaA==
X-CSE-MsgGUID: 67YST39DTAiP+bPpAEAtIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019326"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019326"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:11 -0700
X-CSE-ConnectionGUID: CSkrI/PqR26yuK70tl4lRQ==
X-CSE-MsgGUID: uEG0OmAaTJisMTZC+O6DSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152069925"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:11 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:11 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x6cPXqjnuuSvWP9IbONfN7xgE3zbb/jzWEQOsfRQewJ6F2KhVOecCCsmYNgXmTSCcTqsT6by5aiT6RzHf0u1S+hlM1SiRi0El6x6V2jupZxr9vAsvZE/abNc8xqQKZllXz4vM/cvsOroMIrLlN5jjBknhTGDWfCjeA8B8Huo2UPMGdeFMJ2ygUrnrX1MD/MAiOS5bkSaFuwSsM6F6G1qJcODUa6bl3sqcKq4c8Y1+kSQLtwrgd/65oD9PL0IKadLH8+ZIl3LYBON4HjmhEBR9g+Jx9FVLwie1iTm556uPgMHk3hUMTYJg6oTyZNU9gfPvWdM45emUL/Ysn5gEQYopQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jom4bwe5Z3l6612krS4Vu4RDuN0trZwN5LeVM/gNBCo=;
 b=UQ/TEjEywVo0XRhL2mduE6TvulINiAOzqD4uHYgIGMwac36c/fQ851g8L2LtEjDY17xGF5Z+KM8yrjUg7rPmNfWJy3M0I/panqGkh7PBrtqfAf04nEAkSaAji4P3MH9DBy7nnjhmTBtjyciAtBA7aS4jj3pf9pmJOMtWJG0XGxHtQr+GuFvhl2c1dpmGoAzc3R+ePjcb8gsnJIgp/bLG9+R4vePUSGG096reucWgiMMBlRxLfceJWPpKFl0wUbhlXhNrC9LOz461+u+WVCxUyPyaD4RC80zOvd6OtQkenjM6zzKAESqjmSLlTPHv636JGsCZyjHZFpnXjMfI+a1IYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 03/20] drm/i915/dp_mst: Reuse intel_dp_check_link_state() in
 the HPD IRQ handler
Date: Thu, 26 Jun 2025 11:20:36 +0300
Message-ID: <20250626082053.219514-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8EC896901:EE_
X-MS-Office365-Filtering-Correlation-Id: 53487db9-af6e-4556-2982-08ddb48a643b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?E7K7IICTLYcBZUidDK6FVkEeHhhkBJy/LHkpUrYp2LEuspZZuYQw7PB0H3eJ?=
 =?us-ascii?Q?bjR4kFcK28NEnIYohN5hcv9ApxTPIQFjgTqiUTloZWyn+5eipo3OkSS5/hXH?=
 =?us-ascii?Q?+0xn3Gzz9UdtKi5UZVZCuUGguuwU1a9iQzWMrS20VVz9cpADNCDN2ijxDlj9?=
 =?us-ascii?Q?HBwzmb49zEvxuTEG8e4pNbdXlJ4dmMWpREon/bhBmepYHmltC9EA1QBeU6VZ?=
 =?us-ascii?Q?tYBRNR6ozn6cDAB0jYUK4VOXO8QVmvkn9f02pKrwvKavN+/CVUjzKsAVsoAW?=
 =?us-ascii?Q?Zhmn3BpApFMVy7kMrxxuWF8Y35tFcdEsaKv53Ng1Y6FcejwsnRG4F/0zvMLh?=
 =?us-ascii?Q?djXiwCBQaqNABLpGmbJkOlVLCWohaDWBFn9LeMJvoynAKeGaKuiZlwnstICq?=
 =?us-ascii?Q?Qn+jQEBjhWswV120o8YyNsMBSI5HEPlHRRxvbOmL9d04fNbE+3nn7t/qUDc0?=
 =?us-ascii?Q?Sgx4+ZP68/5FdBumrioUuaYbEwqU5oPpL5pK6FZXBjlXMH9N741G2Prvn6xq?=
 =?us-ascii?Q?tjOKQHmTEK2+2uUoyIyxBFjzJWDnBqeMGGFaLZchwVJLf64AOvl4dtH3dBL6?=
 =?us-ascii?Q?5jbcUgnJzOvI2gkUuTdvQBQk1O/tNvIV3lqGFT+y205A6pkO4ppu8vJZ0aSd?=
 =?us-ascii?Q?s654qrjVFk2bNatjwHcV9Ibq/xg0LuoxRQX5KiYaDGedB7CXwVyR7q7udqxd?=
 =?us-ascii?Q?ZendpPjxum4r5YxBJK5ULUKrrhKU7ZepnsR/Xxqcu5pnEmOVnJ0gnStIAybu?=
 =?us-ascii?Q?m63Q9tmnuXa3dMghZlTzRsVF5TMD2uhpZWzbgIEGzIbseOBEVJeJHyc208ZE?=
 =?us-ascii?Q?Y578kGk/xd+Ga0ORukEBoLEJmf6ZHarokWEDi/Ca08jEYOlBav0XFYhtLu0V?=
 =?us-ascii?Q?BSt3TAEqbHi8+Ed1/ec0aTIOe0QQVJb6aqXYuFi9Sdere1EACIlcJlziiKVB?=
 =?us-ascii?Q?WEZMhA4XWMk9EOj0oQ82A3GoYQXLmONZ/3tYztpPa6IDfvVOzNLkU3A2SzKz?=
 =?us-ascii?Q?CB94froWpdJgu8ayKqQMP3siEQx9MbApnRHxsqcFL1vy5ltV+tSnJuobk+rU?=
 =?us-ascii?Q?K3wpkDgMvFf9C16sGB/GtNZESLhNJ18lF8i5jOw6QXIIpye0G5jT+o2PvVlu?=
 =?us-ascii?Q?q/ajuKGi7VPud4SJfqPsm2FL7Fy94DTzpvtDtBXzlQBPYbbx8xLyFHDWkEuI?=
 =?us-ascii?Q?Fz2hnIHiyhiMFgyWixEn7HQKEEBpqG2f9JRhoTADXdKWDzgZNRWcdIB45f52?=
 =?us-ascii?Q?gBo9bRUFdUk6goGm/DDgt9BmnbjqKgCXRyWRnGXDTITCHD+hisPwW+0ZC2Wi?=
 =?us-ascii?Q?fKOcktXCYCQ1LNQHUgLrVobh/qGIfvMbuGL64q9c8YXvYNxvmda1+4/dKt9Q?=
 =?us-ascii?Q?dRHw/V26haqZnflht3v0ozI9s9EnyuBERMK77WsguuOAphcHMw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XMBSyJCncucjruLWzIrkzioYxTZGAazuWpQmaYNiDeuzSE66IKFGikRSJ6WO?=
 =?us-ascii?Q?Gx+9mYI484DQkF7q7vFIDe23rco9ZqI9+XcRy0b90EETSyPeLlDCX7zyV5FC?=
 =?us-ascii?Q?Upp0YRMDSJnh0dbw46tL+gExoS+/BBFj4YJ5cSpEipiEbJLtZ824X1+IkToc?=
 =?us-ascii?Q?sFpWiD+KJNZRwyyeJYyqGtMst9GjkXFQop05xc4fNU596UNfpt3611K9IVZJ?=
 =?us-ascii?Q?jHLUd60ZolcDTWVolq2iZf3SzWyyKOnrEN9xpVkghfKjB0GQ37FsQ2sjY09O?=
 =?us-ascii?Q?PpDj/VIqPSD8BXg4wy5SfKG7A8PtgWqHRDHVn+uuVvRmYaIpeYXMV7Xiti6a?=
 =?us-ascii?Q?kWTFBI8KhUkN/k3hlay33TJbpvrtL1xuhIZewsNxcL5OFIlSwGJZCYkCFsPq?=
 =?us-ascii?Q?09MJqlHIBPgSJO5XwAcO2o7Nr8XqZN9YVjl0apj5vFz0ajQtepi12VGUZvTj?=
 =?us-ascii?Q?9odP6Ui39Cu11oNSltKUfc8RQoS2ZMofwyghexvVfSU2gDfMhNgue860pC/3?=
 =?us-ascii?Q?f7taEXX+S0Tfv8wu7byFRqsdUxgDbu9BM3klPZ2veOsj27w8WpU0nKktJeh+?=
 =?us-ascii?Q?0vUnq6M6UIJck8E9R5V4eLyp+h1ynbyDFsKI3+nL4VxAO/aDK0rN9IAQ2TL6?=
 =?us-ascii?Q?IHBBl15aQo08WQccs1UaxlY0p+XpCdOAhUETFKS4KIEHayXmXQRk0JP+X3/Q?=
 =?us-ascii?Q?taGB49/BZQwyG2kV/e2hX/B4EzDRsE1Ymx0ITVpEXzEAXggRKCFFEl639y6M?=
 =?us-ascii?Q?DWs/W2/adocTP67cdz2tkv3q1yAX+yKXbCm1DhtuJL/u1vFsEpwp76SWmjTv?=
 =?us-ascii?Q?ToxrC4dex98fm7Rzhbg+K2tHRruzWIVydbJ02ziX/ad+2WDHpoZhnPEKYL67?=
 =?us-ascii?Q?oOdFF3yVjeHocAMuuVdLseYVtfoQD0hLOZCn27JMWc7/P8DerKW3knldmDLn?=
 =?us-ascii?Q?HzPjAL3Qcgisie/YHnKPPmEzyeHI77bebuv82sXlmGLzaCumSQiYdsxXwV/x?=
 =?us-ascii?Q?1pvtUUfZ251Q7tBj4os2XxG/nrp4+aqXtCzwFRlFsYSIeK+GzDa3eFPEIW5o?=
 =?us-ascii?Q?KoYKx9el1j1sCdja1So4LOXDO/U5PxHy5m5xeFL8YVh88ZnwsLr9EK3HBz22?=
 =?us-ascii?Q?mlBPy2nDFCTAqHtXCxim2mrsRi3hPe8MgrlKMe8mu1gb9vEeUwL8Fm7CUJM+?=
 =?us-ascii?Q?kJjyPjx9XHWIYn8wC4HqboEGxOH5ffAMSKaMNpdm13c/dA57w5sTvUmfaNVQ?=
 =?us-ascii?Q?ij5r4giDu6DnPcXqGhzhREYZNaTTBjz+Rua7Myv7X3079a9d85PC+k5SM0ef?=
 =?us-ascii?Q?Ms2DZXi/ATqZ33zbGA0q4KCsk2DgYUGTa6QYan5PzFg6/+onCvZUVUBh7S9W?=
 =?us-ascii?Q?saGWeB2Kd2ZvjwaV13LNJLCYBYbIT8O9ljO4Z1S9QgKg4YxCVhcGQ/eFfeYN?=
 =?us-ascii?Q?VNBLpHo0Eh5E2v1wtMIHgK9BJJNsxRe6mxmomDPQRntQ+7ebDOu4vThvhqkt?=
 =?us-ascii?Q?3i+EcfcZmBKsZ6Skot/nnPXTM6wYCru6lMn1/shQ1072iMT6CH7153e25Kq+?=
 =?us-ascii?Q?HffHy5sBV6Swj2zJqg9nvKBaaY9EuaxeY82OswTS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53487db9-af6e-4556-2982-08ddb48a643b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:03.9049 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SnEWNRFlp58d5sNnAm+Jt8eJMj+8k75vlQBTRSirt+T2YcsR2NEYavG6AY9oy5EHLpcpktpQ2Aok1MSn/bs+kA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8EC896901
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

From: Imre Deak <imre.deak@gmail.com>

Use intel_dp_check_link_state() in the MST HPD IRQ handler instead of
open-coding it.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 34 +++----------------------
 1 file changed, 4 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ac7e08f485309..285cd9a5d4a7b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5065,24 +5065,6 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
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
@@ -5101,9 +5083,6 @@ static bool
 intel_dp_check_mst_status(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *encoder = &dig_port->base;
-	bool link_ok = true;
 	bool reprobe_needed = false;
 
 	for (;;) {
@@ -5120,12 +5099,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		if (intel_dp_mst_active_streams(intel_dp) > 0 && link_ok &&
-		    esi[3] & LINK_STATUS_CHANGED) {
-			if (!intel_dp_mst_link_status(intel_dp))
-				link_ok = false;
-			ack[3] |= LINK_STATUS_CHANGED;
-		}
+		ack[3] |= esi[3] & LINK_STATUS_CHANGED;
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
@@ -5144,10 +5118,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
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
2.44.2

