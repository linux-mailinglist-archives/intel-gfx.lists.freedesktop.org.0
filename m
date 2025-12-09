Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF2ACB0696
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 16:34:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBA710E538;
	Tue,  9 Dec 2025 15:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YFjG1fjX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4737110E538;
 Tue,  9 Dec 2025 15:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765294469; x=1796830469;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=snBFciMN0v1C0dneYidDKSVPep0fRAz/TwaFvAOmF58=;
 b=YFjG1fjXYYUVsm72yPUICDEjK7wKM2X88bxEsiI749kermbXB8R5fEqo
 4ZKTbO2x0TN2nT3oH8hmzGsHqnB9HkzOFX8WxX/B0NLLplS1/+BSgO/bA
 fvioeucgL+OtVdEhxTdYfxoQtutOlW8S1uKF2Ig/BIZuZqDhx4WpEiyxu
 lA2VM/N9Mh08mNkkfzaI2ob/U94T1rl+cPrvHOuMNVcDEubqnM7FQr6uh
 nKYAzIjrS9Zr4hzwfJfkaCy/OUnVZdOL+bwHFPP/o4f8gsRppQWSaqBok
 DSgV0ClW0p/TCIpDG0BZ2SdBpreHMpBDZ0m0BJYCWyj54NIFAHcUJXV2e Q==;
X-CSE-ConnectionGUID: eyqAu/UdT3quWbmr2QYAMg==
X-CSE-MsgGUID: tkeUSU4MQbu/6mI2SnMv3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="78369439"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78369439"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 07:34:28 -0800
X-CSE-ConnectionGUID: 8NpPSh98SXiCy68LiDembA==
X-CSE-MsgGUID: EtltoLlPRVmx5UFwpVPYcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196310915"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 07:34:28 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 07:34:27 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 07:34:27 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.41)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 07:34:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yQAFBK3Vl1Zbiw2qblhWuz3oqSpvxt4KyK3kiUKdMpUuJ1+/0VsNe1wfKFXlU/yXK6tN9BSXG9EoCx/C7GT8JVVDPDr13r6xurDMeFcAE7rcevMquLWxLTNtN58w0DlGVexzlBp6rGvb7CZ7K5BojoQH6KFqRu18TSyPrvdeenxULam3bI8DRDuZQ+EGiV23EjNOvSP+VhhEwXIlpkZLcneNl0xvS/HdcplOLIHMzsyR6bsiuaCk6K63rWfSx9EADYwVwNneHEYB3M6MmABpJLRvSlydGjr4gl2qhL7yxE/PTC7GATbNUAnndFt0DkDnbEJWyU3oO3yc8AT/NpX4ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/v9hTr2B0ImjZRNq8JAkU/uB02kFqnDrpEpAEFiVOPc=;
 b=PCFNXX10wjy4jr3UF+cM674a33Yu9YAa0yPLs+jMKPmjGr1qvTNrFg7/mSJfWFWrGuzQ69swvuw2pPTC5X2OplTaHXiC1zAq9GfbiXw63LHy/RPriQzGvj1+abbt0OFF1JSbO6QM+GeS+zSq6ejV4g9aAn3XHQ34R5RL3eJB+Su5ZSuF7amHCNdJ/ZJYt6/scfY9Woj2QMp896Ksral8KSfHs9SGUwMYAifDt5LrTV/LkZQXtx89TSVy2c1BmeVfadCV29TWlTUYNehfFzuGQ5BhhkDhNIw4I2OiTmMBoIbbB2cx5RxvZwgBW4McMRgGYoa/NoMVrO+AIMvRP+C8tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7346.namprd11.prod.outlook.com (2603:10b6:610:152::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 15:34:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 15:34:24 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2] drm/i915/cx0: Convert C10 PHY PLL SSC state mismatch WARN
 to a debug message
Date: Tue, 9 Dec 2025 17:34:07 +0200
Message-ID: <20251209153407.1791839-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251205122902.1724498-1-imre.deak@intel.com>
References: <20251205122902.1724498-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0511.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7346:EE_
X-MS-Office365-Filtering-Correlation-Id: 814bb056-9ba0-495f-f36d-08de37386e7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|10070799003|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jzxF7i20AOGXfbaYCHsTSx55VzanFktNJ54hb8p4sy/PNZp3cRbx1kprkxK3?=
 =?us-ascii?Q?eKzxsvhsaf4RkUAKBLqtVcuOLplTbbPGcNy+YhyS4l4NzttgZx8zK1PQFj6U?=
 =?us-ascii?Q?mCXcadf/4Tl3AgAbLFaKfoP6yMTxCXBgbggiXgBam/Ny+4GGvouA3TPIaQrM?=
 =?us-ascii?Q?1ziuV831iDPA+oLTP+7Ce5B/cntlrwo2MvNduOMx/fFDhgf7sSNOHt11nP/j?=
 =?us-ascii?Q?uAemn/PVSaXOPf5lFmiTSBzU8vK3T6qS/Xx039GWJEev0oNsAfQldblhpcHU?=
 =?us-ascii?Q?+DQnOwpK6zFuH/DqsCAXU8MvtvjVmB23fH6/bIvIqiaNoxM2Ms3eiWq3836U?=
 =?us-ascii?Q?eiJ5nCp9R6tGvSIjZTQsrr+QINQ/6NfP4I16FTb/MfWMWvsaUZp3NLhpNdn5?=
 =?us-ascii?Q?6oOfevm9Jxh9wdUBTe7RT6XlJC5aSkloXj80USXe1wcJ6NVumMKHkxjvZhN4?=
 =?us-ascii?Q?seRxoP27n8j3M0M/NWPJlVA1/1fMoVAderMUTxjwPJBwvihhGlDoLo7ZLSYR?=
 =?us-ascii?Q?vKLDssQdEuxyOw5v/C1iPzAk0ou3K4UnHYqzH9uKWtnsPLs82oolvsoo+EdE?=
 =?us-ascii?Q?HdXTtrRuCLgeadXwl5bABaGt7QV6bVFIP96k1pbevOFNYVR8I9XAHeMuB7eB?=
 =?us-ascii?Q?Wgwx+s5XedVGCyRzaF0JWPz/3qANv7s8Id1u6MZwRhymAi4/K0kaYY4W9rRW?=
 =?us-ascii?Q?UlzfGXGrXnIdBViaH9UQAQdNxjdkShrAkfCdQRArsLOrpFiPwnJI0AkJhK/N?=
 =?us-ascii?Q?c+sXBZkOsxotgMc7kg5JUU4GT0fvJc0Y6gDUDALzKMR6pJ4HANO9kGVx9BfC?=
 =?us-ascii?Q?5mGTfmwTp+ANCyTeWpnwMkHjF05+ZKLZLUg3vubeJWEcEsu4jFFFfrMUGmh1?=
 =?us-ascii?Q?rMAVcN3bS3Ec3hsCMGIiB9MZqKek0kjwGPvCalxEbTZfnwFVEKFYSUbvfN80?=
 =?us-ascii?Q?ahmFTEqgNvGhcqJ3tMOS9yuTU6OP9QrEIZ/3FUPJ+NLB+vSn69cArM9PYdz/?=
 =?us-ascii?Q?qbzZAAJ6f3/k/nkwktWQAs74AUUcz9GWVtF+HlE31R4rUSl+oWnVA8YV5o7N?=
 =?us-ascii?Q?YGa7RD8m4CjeohQTixJUvO+XmDnBI75+F5t04eh3zQIeebR1vumg6ilXMaeo?=
 =?us-ascii?Q?/ZviqQ8Xmw1JLosYNT7uTaRyww7kouAhyWmxUMHvzhc0H4G/Mf0/cV2qE7OJ?=
 =?us-ascii?Q?TuJuZDETeZ13n+UOfxq56YCkbtPfhhldBOqhiiFx7afNRAMtikY272I/oyBO?=
 =?us-ascii?Q?GKItayyI4HY2ePeUuLx1BEoMgvMG1TW1knpEoZUcOQAk1s6OpiU0xKmeCD5U?=
 =?us-ascii?Q?kziUwYQDCsq/9UO7Tmc4m96+Kol4LXIV3d1H3mlQWtWmp50gMQIxt1t01GVS?=
 =?us-ascii?Q?tMmfr8HcniCL3br2LFb2aMfGc9iDLLCrTIB6hyOrMkX2ELwhHZnGsJT+kg5C?=
 =?us-ascii?Q?XivhFXfp1KdiiLlN6VM60EAlKNYrZskj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?u815eghWbbtrWnf/5EtIGV7n71FRMMhDG9jVnEs1nzPfZw567M/lvT3fY4b2?=
 =?us-ascii?Q?zckZibcgl/LJTZvM1zFNMFl6t4joy/TP2J7L/AhHd1tK7zM8yU+5TrrD9lxO?=
 =?us-ascii?Q?U8jkkXDjei1+0L8ioj8wnDt7amXOmPDondqXk1qTc/VBZyErgTvXZNbVQmKt?=
 =?us-ascii?Q?H/2pAFjJ16JpZMMCxfsnu4OJ+ASdJNIYwmrOR1x555zDfVD0hcuqZvtzmXCV?=
 =?us-ascii?Q?u0qTQAu/GMXWJh6xYoSjwRAdrqH1q2DaE2Bsat9GMb/uxE+bAvqmVdcV9tg7?=
 =?us-ascii?Q?OhSS8KCYlIj5kG7UIvLOya9jWJEPfMpTjqLMUjYx+GJ+/9+eEd33b79jv7H8?=
 =?us-ascii?Q?ub02zfr4iO6qGy4AuteQTIGPvXtY5GD0jOEQDN5nnpbepW85RR5jf8GtRcJx?=
 =?us-ascii?Q?f2Ro5nz2bc705qajcMmTVbNPeK5cY3meI8bKFzIwjgEa5orw2WL38KuiakTU?=
 =?us-ascii?Q?KIxuNjoCxlGZ9HeMXqGvl4Jh8c2tRICvk51D9rgq8Vde+9nCYsuYti+8UWJw?=
 =?us-ascii?Q?tc2IoAWqeQ9HOrvmoB2rYwVQurcex9Ijc7vUu3fllBN5gxdOhvwr5bRS2gDc?=
 =?us-ascii?Q?oqHEZ3bIjrcAbp63HWiAPTXwq02TPW6QKySmn/OlKy6ot6OIn79aWCCyGze1?=
 =?us-ascii?Q?RsPH0rpSY2LvJ+bWET9/T8WcaZxVBrvgoUrKfo+sFmw2q+622y3uZJXT/NHU?=
 =?us-ascii?Q?8S2OTgHt2Lmmz5orsjQovf1a0jnaBaDOm53EFjIc3OsgGMz3o0xnc6Z5F6FT?=
 =?us-ascii?Q?tXYQTR1LFVGAdK+2Vuu8BykB0nB58uUVtfjaV6gtQ4wDJwNT2IDd0hbDrbvD?=
 =?us-ascii?Q?kXzDAOHWEyQiQPm5z+onqtuJocIbxLw6mGXxXfdwWDsMTNqGLRuLAVdRr0Th?=
 =?us-ascii?Q?htQhLR1QXe3axrnJu3Kj02AwxdJ56VYcx17L6XqlnGA0mbN8EpSfsSUTSTNK?=
 =?us-ascii?Q?FayFf3GEuO4aqwx50PkNXPv4XD5GPUfTW0oowhwleuqMgPf3vqm1pyxphtPr?=
 =?us-ascii?Q?V9Qo27yeCwJlQEyZtqNEuLbfOJgDxqctf3LZERJEyY3YYhsh1TxgTxBhpB9P?=
 =?us-ascii?Q?Y58zAIzpcFRtH2/LROrvPJ4jMtxYTv1+iosmgM5UllFBeHRKTcAiqGOnD87N?=
 =?us-ascii?Q?28QYMH90uyF9rTChXNjPRZ0k8qktqr3/RFQZrhbCBX32UDphQM84Xl6cONCd?=
 =?us-ascii?Q?I80PkjY+Wmy+fUtGjQsIX5HG/uvsHFWtO1r634bebbgJRcIbDuJ+TGG5Ekqa?=
 =?us-ascii?Q?FMoh9LTOCZb89kJ74pFGmq0YEgYAZUzJpIa8B+kfZ/tYcBNHR+3FYZyZUMIh?=
 =?us-ascii?Q?/08X0kc9C9PPzxuBnY3hbtfH5i3A17hD3DsYwzwNZjV11JD22gTOXhqTFHyx?=
 =?us-ascii?Q?n6HF5UY+L6YOTQbyM5uOlbYmQQSSlmr/5gI7ZhUfuFYOzASSoXHTH2T/ZE+J?=
 =?us-ascii?Q?uz73l5paCE6oU0Y53uPDWZYoGjfpUM88fAiA0mkpgc8BrCeh/X450pmczENS?=
 =?us-ascii?Q?miZoK4x9Br1InwhoY2QeZoZ5sDWBGrXtuWkXVo2ZTGZvscmx8+PYNZMuDfyD?=
 =?us-ascii?Q?b9zwcigQPS9qKogiglMEN/vfGb1A6KZcX253oMG0FNiXux4zPb3HeWG99V1h?=
 =?us-ascii?Q?na85xO/5wF6doYxtH5BJHrDkNimumkbAd3IAJtQJ9893?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 814bb056-9ba0-495f-f36d-08de37386e7a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 15:34:24.8009 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nqavknISPPPyQEwXtVOL5cmZ1fbCe57XrWp1BRTcAHlRMI6zfu42s6KKNk3mw7F7/EdzVKhr8k+IjHinJ5D8hQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7346
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

On C10 PHY PLLs the SSC is enabled by programming the
XELPDP_PORT_CLOCK_CTL / XELPDP_SSC_ENABLE_PLLB flag and the
PHY_C10_VDR_PLL 4..8 registers:

- If SSC is enabled XELPDP_SSC_ENABLE_PLLB is set and the
  PHY_C10_VDR_PLL registers are programmed to non-zero values.
- If SSC is disabled XELPDP_SSC_ENABLE_PLLB is cleared and the
  PHY_C10_VDR_PLL registers are programmed to zeroed-out values.

The driver's state checker verifies if the above settings are consistent,
i.e. if XELPDP_SSC_ENABLE_PLLB being set corresponds to the
PHY_C10_VDR_PLL registers being zeroed-out or not.

On WCL the BIOS programs non-zero values to the PHY_C10_VDR_PLL 4..8
registers, but does not set the XELPDP_SSC_ENABLE_PLLB flag. This will
trigger the following PLL state check warning during driver loading:

<4>[   44.457809] xe 0000:00:02.0: [drm] PHY B: SSC enabled state (no), doesn't match PLL configuration (SSC-enabled)
<4>[   44.457833] WARNING: CPU: 4 PID: 298 at drivers/gpu/drm/i915/display/intel_cx0_phy.c:2281 intel_cx0pll_readout_hw_state+0x221/0x620 [xe]

It's not clear whether the HW uses the PHY_C10_VDR_PLL 4..8 register
values if the XELPDP_SSC_ENABLE_PLLB flag is cleared, or just ignores
them in this case. Since the driver always programs the register values
according to the above, it still makes sense to verify that the
programming happened correctly.

To avoid the state check WARN during driver loading due to the way BIOS
programs the registers, convert the WARN to a debug message.

While at it clarify the debug message.

v2: Clarify the debug message. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7bd17723e7abb..f6d69627154e5 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2278,11 +2278,13 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 	pll_state->clock = intel_c10pll_calc_port_clock(encoder, pll_state);
 
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, true);
-	drm_WARN(display->drm,
-		 cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state),
-		 "PHY %c: SSC enabled state (%s), doesn't match PLL configuration (%s)\n",
-		 phy_name(phy), str_yes_no(cx0pll_state->ssc_enabled),
-		 intel_c10pll_ssc_enabled(pll_state) ? "SSC-enabled" : "SSC-disabled");
+
+	if (cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state))
+		drm_dbg_kms(display->drm,
+			    "PHY %c: SSC state mismatch: port SSC is %s, PLL SSC is %s\n",
+			    phy_name(phy),
+			    str_enabled_disabled(cx0pll_state->ssc_enabled),
+			    str_enabled_disabled(intel_c10pll_ssc_enabled(pll_state)));
 }
 
 static void intel_c10_pll_program(struct intel_display *display,
-- 
2.49.1

