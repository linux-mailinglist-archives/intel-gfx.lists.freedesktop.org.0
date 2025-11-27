Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F43C8FCC9
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 064EF10E8B7;
	Thu, 27 Nov 2025 17:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RovZj28W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BB7B10E8A9;
 Thu, 27 Nov 2025 17:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265929; x=1795801929;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=GFPD5OCXEJXPXC91bTVa/XDIWLWBiWkon1u23PCrvfs=;
 b=RovZj28Wlmw3p/95l1Wejpt8oVMsOVgtjj8vvVCNk3VBMk9Edkgbak1b
 OZ8jxS2NMKqMBlVNQo9Dvdsr0vl3tnZFiC714GQOFyi2PVgMhoglTHHpY
 jiZjwdRmvxqdrFqpT1Lq8VQGFTjtJnAAkSANzpBskNRjxGcqWvvPku4mO
 1MBTN/vWQU2NUIQUcRVEBWXtOm1Sr9RnfkwfI2Q5LFunlJmIWr4mF88dd
 +Spy//wMI9gevbTOjTCtppJiPdsH3l/3SV/MPM+9IAk1H72/2MdXRGO7B
 24Glv2o+DbOUVdwK5OCMwALwmEuLEhmMLCXnyJ9pUGuHx0xfX6Ch229IT w==;
X-CSE-ConnectionGUID: FeT/Wi9GRNSAu+Q9bStPaQ==
X-CSE-MsgGUID: E85OB6yqRNGutLCx/cTUkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="70174655"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="70174655"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:05 -0800
X-CSE-ConnectionGUID: YWn7VBDgQj645xrjL2mxjg==
X-CSE-MsgGUID: y3/t1GSQRa2JQEa/+B6v7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="192409419"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:06 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:04 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:04 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h5leLXftbirOzVsdkb5Zo+p4BxMBPmZzW5SBTBwAVsbcyXQhVtEMc9MdFPTQ+SuaoJJcKYPckwvGgz9TO+2KuFDySOWse9M/i9VxF5hVDh7O1opNDpZXupnVBz9UHO6m2KqgFOSIOiHe5yz0zo++/7+W0osy0wfgM9UQrMMh3rfPbSvuJuCoZIA1jr4JnNzoyr4disTiS1iYkXy563yJ+EXeQ7I5allbdctFcwfUI/2pA0YACaMPh57wibIIJAhOx8G893BPZH9hRWlfYXNNWGvB9VxLRCeX2tr+T7T8Uq8qwDtjyh3CLvyWHKaJo/8COdCyOdWlDW4LVdxI/UVVHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yXLEMRFlPyiLIensuMabLgsrLt9bfM+Kg/olWaGUKdU=;
 b=adNQLYeZCfHkqNSWc9c4EfGb8swPoZgsTg4xBsrB2OgVmiTbtOnoz+gCZS1tjm2KUhyS2orJiFWHzMn6VnE23T/bmDJ2CPxoP91CNzSn5xDP1nkjJ0jg3Ltr5WEqXJmiuo7ib2fTRBBtpbMKBk8pym+JurITrOdH/JI+JJAxTytSaK1OBXSnCQ80g/aW99dc+MBJeBV7pPM6GB6QokoQGPiV9rZcO6lzWI+70dBT6BTXq/gsKBnV+Idvxpn/7Z9Y9Ic6a6mDc2HFrdO4g9k4tNdNxbSj+aIvJ4Q5WIFJTA6sZEyh/wZzjtWUx/gqcuAFOTqedoOSxIEILZC58rCQUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:52:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 38/50] drm/i915/dsi: Move initialization of DSI DSC
 streams-per-pipe to fill_dsc()
Date: Thu, 27 Nov 2025 19:50:11 +0200
Message-ID: <20251127175023.1522538-39-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 86fe38ae-5b2a-4088-f900-08de2ddd9d1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Mfa+3xfX33W1NYZB7IwQsgkyY4wR+aSQGcfMMWkCcsF4Awe+Vfil6J31DoKv?=
 =?us-ascii?Q?f+knhE7zU93dAKBTY27FPI21/KNzRbeoBMpSHgnkCUrs5IEjAvDoFDN9vNu+?=
 =?us-ascii?Q?XzzQ+vWaIi9QNP/jVs502mSaM9ENOK3laTeKyPwOKg8eHTEAiCNDdqiQHxBB?=
 =?us-ascii?Q?tsv9R4KMdhj4jz7QuosqsJ2mLxbwHPcTIdqbz03BDTXhiKRnA5kXKPdwWhHj?=
 =?us-ascii?Q?mGxDk3Blt5XmuUA9MHQ8lhCXBcg6pV+SPJxROjl7TZ0b74eCfWLIiMpJh3Zu?=
 =?us-ascii?Q?mRVyX0/qXjcpL8uqXgnx3P1/sipqZ2xw9gr0ym7RcFvl8kplcRH7iNC00gGi?=
 =?us-ascii?Q?MfHpOQrlpye/grk5qxWoEP2ljC9Jy5PN9n3d31oCROIUthI5w+hj7uTblWYG?=
 =?us-ascii?Q?uToEYWKgwr3P9CaeVnd0VKE3/zdK96XBDNm8iBRFJSCinUAy/pkJumTjEWIb?=
 =?us-ascii?Q?b0DlWv/B/3OADfmd1JGF+JZY29dRSEWboggnDyT3fPE34AZHJmAhmOsio6KX?=
 =?us-ascii?Q?2Oz8KOknnOELmGal4LQPg09Hetdef45hWFgd79B293vUDLUUabb42FMFMSRu?=
 =?us-ascii?Q?wFW54I8cRbKF54QAQvlWci4xnHDUa8RFvzNAztJ8xpdPua+Z5y2ihPM/9wF5?=
 =?us-ascii?Q?mOheeiuAzPCYKpWJ4upgR5dCADW8Trt3fFT32R9A0FZgcODasR8hU0v966L2?=
 =?us-ascii?Q?K/xZ/kISbqiY5Bxu2pCAduyEXYsDlO7adsOQryXYKw56u3qK+0HTBGgYNWGk?=
 =?us-ascii?Q?T9inWqtJIhhbbm0D0obAbskEjrTWgHJyHN9RhAATtDb1A1ezLGfuiDpjSPd9?=
 =?us-ascii?Q?e1iUbwpOcexX6I9DHb5AMpBrV4PZNF5zWj287jmlNm4S9utVIcblJvNku1mf?=
 =?us-ascii?Q?mG7aglUET1Rk9BkgmWY242jZypH6AxZrL9DsswTWpkKiSDoLBXeV3F8YHfDn?=
 =?us-ascii?Q?8b2hBk5JHdiUbk72nZDc9PNcaaBjFEdmBO+PXOOneTzBxdnMZMRuCFoSkzJw?=
 =?us-ascii?Q?oPYAeB58orPYS0867zATKhFhPGZiCzeDPTpba9RmxWOdQXwb9/wNI7IAX83v?=
 =?us-ascii?Q?ZjD5TnS1f5F1h4lbvbka+qVZymxNcgZWGkWJpgl14p9+xT9LuddKyVry7n7K?=
 =?us-ascii?Q?jzEqq6LlcyPjksIWsRNisihife0ipYla2UqIuI1+cWkXdzf/GbKxpkso9gwu?=
 =?us-ascii?Q?JC313dPEw1USvWqlPyIu6H2PGFb6IcIca7SZOaDJRZFZ+b8YseTDKr+PvJdW?=
 =?us-ascii?Q?UZAJIue0WOB1ThbYnh7Wk+t2EwqWtOzL0K+3x/q//f3QXWfbbDz01VyzDfLJ?=
 =?us-ascii?Q?UOdMUt2Otrq4qqUXnRnPrWnKFOG4MHuA9jbYF3iBk/uYuwUHROvc7QbfEOFR?=
 =?us-ascii?Q?c8HePFJs8ymyNu3A+l1mSdnP5UfVGcFkf+zJOvGcXg694FWQ2/emKOLW9Z+6?=
 =?us-ascii?Q?2cs6aENP+9GYNuk5RjyJmkndR88XYgvY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vTQ2IkPS1Fiqc60N+Xy4KjqYlrGe8SXUsCuWzJcIuREkw0Ngs9oCF79BuTut?=
 =?us-ascii?Q?tQcEOlGFwrz1IPhGpOCW3WJUzbW/VGKwmHhPVOm4wW1mgUdmXW57yZquLs3K?=
 =?us-ascii?Q?Ohiuymdd6UsNQfWjsaKH+/2DwVuaXZwl9yy7lpVfdwMQa8DuFgfe3I4VW25F?=
 =?us-ascii?Q?lOBmjdLJXGwEipsMCiMro4CCJTV8ZUJz37RJkF3IkgQ+6O9GvhDk4gRJzEZu?=
 =?us-ascii?Q?ZG5XbEWT62oSlOwtrrwLjXDWUadITwAywIGpQIOdEHAISTG0Ue8dTPpsBfCF?=
 =?us-ascii?Q?a70ZEt5goNqzJaXSQAP7vpy9zHuRBBZGKDZrnhcrk3zxFvmtN/g0yuyjG7Hx?=
 =?us-ascii?Q?+Ep3v4u6EK6mtOuXK7Vg0cRMT1ar8jujAOfRHyLHBzyBBGrctC9W10zJdaDl?=
 =?us-ascii?Q?Y9h/Q+7G5/+tHzgqkBA9zyZ4KMWcvXjI8r3+L34Yny9bp2IpCE4cQDkp9cRx?=
 =?us-ascii?Q?mpll5kgi80KrszbHjNrGN951gsDGklSndtSQq86qJXvmASH3IAs8yuugjFwD?=
 =?us-ascii?Q?P4tKFEneo1IHuRil4GsqK6KJn/nJmKNQ/7NXD1QZ1DsJqwVbd8AY2NiOJ2lw?=
 =?us-ascii?Q?bH5YhrzrpIZwvws0Hlt7Oo0eJCXS347VwrqsN5EuPtb2CBNnnTZQr3GGSisg?=
 =?us-ascii?Q?Z0g31hkYN7OQMa1pboGZL3dLIg6E6fRaXrI/xMJC3+VzzPQoaCl+W9E63MtP?=
 =?us-ascii?Q?m+92t1r9rIS4Q7bTI4yTomRzb8K0IesJKJK2TQXIRprbfpUwaeJDZAVfgcvh?=
 =?us-ascii?Q?chCU4OQ/VdI3xLZvOLI6ZP98YqImt01WveFPlKzv7ILgSy+78ZEQbpKsVDVg?=
 =?us-ascii?Q?2WcaWbmLVV4xvtWUaT0nROwwSY3KM3NaTeVL96uo+I8iz56cAy8jwKxUGYJM?=
 =?us-ascii?Q?7ogHvnVIb8H35PG02Psk/FlwoSfwhFgYoJXbw/JoEcjJAhXouCN7lCQnfOo1?=
 =?us-ascii?Q?IGAhJQDPzup2WpfcT2Lq8J0DyR1AkdoT3qTseQAdzRGBx35uBdwXcEGzFm8V?=
 =?us-ascii?Q?V8JnTuancxqZszYMQXp5BV/G9oFeoc2rRx/BG844yrwPj54A+HCZCuf52sin?=
 =?us-ascii?Q?rM2PXs3cSzurIHordZK1lpjavMVgJu6ZFXr+3gwuipNldxkm5HemWuXty6lc?=
 =?us-ascii?Q?+TzZeWPF713uVLIEEZ1aG774uWU7w94Dkq4K9llLw29Vy1ZaswUGfLbk9yvT?=
 =?us-ascii?Q?DfqCTbD0Ye+i2Naext3gkwM10T7Z5UVbiw83gdX3uKA4gtue7z8j0UTDZNZk?=
 =?us-ascii?Q?POKH0eUQ4ldjbcYqvtjKrKi+p91OpZQ/S9rv95BHmlKDAmdYCc/Q3oYVPDhh?=
 =?us-ascii?Q?lFxA/GaM4P9wgdrHE4Cgbv05bhvbSyNmgut2LPzfNTngyznAVFngA6FC4hs7?=
 =?us-ascii?Q?aAggquBF63wiM8bHmeyXH4MUfBAk5CXlH5WY3EaqKemoSSYLEfBiXgNQR6VY?=
 =?us-ascii?Q?VIiM73tDTBCjzVRxL0e7przDWgITxlmzOcRt4xNfWFhuikMsFjhP8ua4wIOs?=
 =?us-ascii?Q?XV6tbBNLWUAfRNs/myNeru82YwaBfqJmgG6Pva87MP1kN5lxut76X/dORd42?=
 =?us-ascii?Q?yun09Zs0G2tMWYTOMOeKiixiJ8zIajKNygm/rRZxesqBqMCDTkBdjM1zJYdQ?=
 =?us-ascii?Q?3RizV8e7qE/1/nTHCcsyLLyqhDN+6CHDxJlRTDRA1q9x?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86fe38ae-5b2a-4088-f900-08de2ddd9d1d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:38.1345 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pCn43n0bL6dBJnnUVhuHup2Ufc76bJ9n4lrwF+/u+oKA34HA4V/JMYWRc8zzIOpLY84Ox2yPdA6Em7R14uHExA==
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

Move the initialization of the DSI DSC streams-per-pipe value to
fill_dsc() next to where the corresponding (per-line) slice_count value
is initialized. This allows converting the initialization to use the
detailed slice configuration state in follow-up changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c    | 6 ------
 drivers/gpu/drm/i915/display/intel_bios.c | 5 +++++
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 90076839e7152..9aba3d813daae 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1624,12 +1624,6 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 	if (crtc_state->pipe_bpp < 8 * 3)
 		return -EINVAL;
 
-	/* FIXME: split only when necessary */
-	if (crtc_state->dsc.slice_count > 1)
-		crtc_state->dsc.slice_config.streams_per_pipe = 2;
-	else
-		crtc_state->dsc.slice_config.streams_per_pipe = 1;
-
 	/* FIXME: initialize from VBT */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
 
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a639c5eb32459..e69fac4f5bdfe 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3516,10 +3516,14 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	 * throughput etc. into account.
 	 *
 	 * Also, per spec DSI supports 1, 2, 3 or 4 horizontal slices.
+	 *
+	 * FIXME: split only when necessary
 	 */
 	if (dsc->slices_per_line & BIT(2)) {
+		crtc_state->dsc.slice_config.streams_per_pipe = 2;
 		crtc_state->dsc.slice_count = 4;
 	} else if (dsc->slices_per_line & BIT(1)) {
+		crtc_state->dsc.slice_config.streams_per_pipe = 2;
 		crtc_state->dsc.slice_count = 2;
 	} else {
 		/* FIXME */
@@ -3527,6 +3531,7 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 			drm_dbg_kms(display->drm,
 				    "VBT: Unsupported DSC slice count for DSI\n");
 
+		crtc_state->dsc.slice_config.streams_per_pipe = 1;
 		crtc_state->dsc.slice_count = 1;
 	}
 
-- 
2.49.1

