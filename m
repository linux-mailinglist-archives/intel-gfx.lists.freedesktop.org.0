Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BAFC8FCAD
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C798610E8A7;
	Thu, 27 Nov 2025 17:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NQFR9WUL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B6FA10E8A6;
 Thu, 27 Nov 2025 17:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265926; x=1795801926;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=vEMF4U8iMlAD5qx+txkAoAyN7oD6T9e3dyMFwg3+2Zo=;
 b=NQFR9WULK+m5ZYbXr7+ZIFxYrTWn7TvJ6jSEURuWmSmclvk3M8FqZTkw
 g0ufLijI3G9OrONl/W6YQCPRoJr45c3bHDhBRPRBZbkzbQOk2MfpUt7QC
 kE1ZD5S7gYPssVac8hd4Cf5cH28uSoRcxbU4zj+CE8C4LQBJQcgY5z7dr
 37vz58sLRvUvYrDAu2XBhZv+XP4QwTchRZ02QFtWa5pUmpGp9iU9OrIHv
 OlKZ7XiXzyCZb7wS/BbEX5aDJdONNxUGk+zl5qCH1qKa4FCKG5P1Rj+l/
 vEaQ57cZAPtHp/s4AtZO46E9ZylVb8HcQqZTpC5Zz0dnjP1CFrqeOcTil A==;
X-CSE-ConnectionGUID: cxSn7SCjT/+mXFq9wVautg==
X-CSE-MsgGUID: dUjZH20tRNi0JmyUkfpWDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66204022"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66204022"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:06 -0800
X-CSE-ConnectionGUID: +15i9akkQo+ZdbnUCo+8jQ==
X-CSE-MsgGUID: kZkkE1I5QpGUUm28vKtlWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="198230512"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:04 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:03 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:03 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DbdEyAC1kSkMdDE+T96oCmLi6qNwub9UFibrLWAfBxXHxYouvnMBrPcHrEvcmoI3gFlBchlNQlocVNogW3TlbeDcp+k6gzSzVDrvlV+mt/hp/vCa+/mvCJu600cR6IzHPT+kRtRUwv5TlpHRhoQUQVjoGgNUCubERtrio6wDCtZPPdmH96lt4oFICuPF+ZvKSJqimUyrP+nczU2piegYbstknYhJiCCUb7dOUDKBI4KjiGiCzi7F5fcnZJc1RVaVipmdoSIBqhmNySkXy5FjYzsxPTbib9UgMOsUSDzCupf0x7LgtgdIYQnplh2wW73ZuzoEi193Fp2g93a46Zo8Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F7o5fbdSFEo/z6ZUPWRJl8xHxQzUpmebN4EvL69Nszs=;
 b=U8iiUlXLNNLqDLDDt8q4suDUQSAeDrGO507mlTSEb4CIZYeBlPVqspYj8oLIAkwWJddZPpXo2u5QZ9gjjaa568aZLq5Y0Jb3JNWGfuj+L+e2mvt1NBFCn/TE59iuUV8rZoq7lc3HWVi/nwnX0UbvzcW1htutzE0/P70PpbJF0gPEiga4UCa6+ozbYL28kL3GP5Id1K/cSzgu6VBviBWmAW4ik9PAG7evAhoRD0u/jk312iv03uWUY/1Wl/XM1IiH1o8Do6qQ50O9aSKJ6EnRzctE8kYOGHmASm6nrsehBcbMUe5tMux+YRYwFa0c9uneudS5WV17ktG0utHJeQ7wow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:51:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 35/50] drm/i915/dp: Simplify computing the DSC compressed BPP
 for DP-MST
Date: Thu, 27 Nov 2025 19:50:08 +0200
Message-ID: <20251127175023.1522538-36-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: cd0fbe7f-daf3-48f2-3691-08de2ddd9aea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tKbGQJg14TQZMTZFQyhcsSexYd9V7M+wNnlkTB8KMKghHNgt8uATXz0YAHv2?=
 =?us-ascii?Q?ke3gR8DS/Gtv+dHKWriD6NRSkqTvL/2Bi7BUOq1PGuPHUXlRpg91zf14jbXL?=
 =?us-ascii?Q?BAfyupz2vR07IXW+w7iNtvxYff1u7E3rrHIuex8ld10DdG0pwc/2SSRcFBij?=
 =?us-ascii?Q?7L8LqzTuOuEZHWRDgzvIyBrsRdDyXBvZ7wZr2O+XjC+XazV2DuYJoqISIUE2?=
 =?us-ascii?Q?1VAS4ENvg8DPqljtcGeIhTNtjfWtCq4K9Oci14JVwfzS/QcOpdiU//kBvDEj?=
 =?us-ascii?Q?rWN8/i9zNn9mFdqRy3GWL4SnWdE7+EXQKvlSCYKIpqn60NaMUm7kEyDrJ3Ki?=
 =?us-ascii?Q?xmNgL7sLwTAE0HRUxXs4PDY5C9CC3gKkdZPcm96Ei21kRyTVBtwmZ9pRlhIG?=
 =?us-ascii?Q?252Wo59mD47374jlO/Ss5QGfyhXOPFqHoqG4ChkQ0gR0Y6FcGKv1mMQkPUOa?=
 =?us-ascii?Q?qAXeWxNjpWNu3BHaNER6zCA+1OX4kAnbktGvYtH7pXe/+I7DbJTciq5u2nO5?=
 =?us-ascii?Q?zbIGHgzdXQgtfvK7Ur4un/HOexKP1V2QXyb7poJybuUFwiK49RX0QoBoPk7X?=
 =?us-ascii?Q?ZbVzGLa2slcVZKU+V+0Acv2LrqNndSGev1xK7UO1OzunMYcX0NzIs3pFEMHQ?=
 =?us-ascii?Q?z4cpqEmh8o3Xgar5oegi83G/xNTeIQFr4L9FiWq9YfhYvZAvAkP2k4Tr7agz?=
 =?us-ascii?Q?+PuFMtQIE59FpJUsFnOv2EvKlW21oGpCFtnyP2GkmA6XqG6iS0Jibp114lmZ?=
 =?us-ascii?Q?1smS3L0QbHOCmnx/UfuG29Daa+A2I/ZfuOJuPaN3SGakSUhiYKmwZKj0jgJl?=
 =?us-ascii?Q?krtjvXy3wDcMVlSWNbtSvr0IPKhlCjwTWFRkf1uiV47aF2Jt2DRzCkCfDPhN?=
 =?us-ascii?Q?aGnSBgtYEK31yNCxVN/Ezu2AmwFfCD8bK7psq97rl7ZbYF6pTvYKcJhktDkf?=
 =?us-ascii?Q?PDSo60HQg6ylQqec/rG5RxPLLJaxyWsnNyLI0zI21VuPo6PVP4Gnmpc812MX?=
 =?us-ascii?Q?6a1lfsF+fnz4KcY/0rYzZsvzeyAENFD8TpvaTbZCt7ZB5zaYiYJIkgM7qhB9?=
 =?us-ascii?Q?vkBa93OZ6rgX5BDGSbXONiGaklPi7BGN/wHF5qq4AdM3obXPQPV36g8Tct0W?=
 =?us-ascii?Q?uYZ1j2XIVvottbXofusFT57J0yK3TsAaY7e3CI8f4UzRca9UMfggG6E6GrjQ?=
 =?us-ascii?Q?tuQWp9tsHmls64V5VBLMJNwnQiO7FUZMXmvx0DDCC3Xl0asktTS5GJXI+buU?=
 =?us-ascii?Q?UnFP2hSqwcNIS4hUnVvXDWWZ3IvuZMpmnbjSsBx0xCQ0LqJQYbt7YHxbyfML?=
 =?us-ascii?Q?9JB2UKnf7jBtuF1jrL+7cpbmoQUjHzcWSF8zGc8CkUrgDTmzR3RnlZOhIeVZ?=
 =?us-ascii?Q?89tNUQDsmH/CsI9O2yAyANv7Nsmvtna77nJy5ktN7sxgCHj0yNunSXL9kfav?=
 =?us-ascii?Q?DDoDfZ4nxrdJAc/L5pJsZNHkRwHvieh7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nESJepChiIikJDrTSWWOKg63NDxBA3y+BCQn+nK6XBkvm4E9/Z+MjUTsn/p9?=
 =?us-ascii?Q?PGvaDS6YAiCSVvaCqqTDnPI28ZB/WpY999hU836kxf+VU6IoUj+W2V9WbBSZ?=
 =?us-ascii?Q?161aFPZujZYFvGkvqyCJXrEm955n/fYRevWB4stuz6qOJdoDAOVIRWQat66C?=
 =?us-ascii?Q?96N+rSr8DWP3SBhZtxz0gxIKmJ4/wa869iG3zw6ZtGpsS4AT0JDREB5seqGc?=
 =?us-ascii?Q?p7xeam5Il4r6t2mQ8NXAGs4RFzII2xqgliwA8NjGiCFYO0/5SdNGEoU4CaLO?=
 =?us-ascii?Q?uETf/GBBUrvySNpWwc0tfbAlnX4mizgfIlinQ5sg1+lREFkED1al17aRndQV?=
 =?us-ascii?Q?SDATOlIvRm3ZIB4Il10fMVhWoVyabcDi2yrf0MmPiWMN92L9VSvebQaDkpH+?=
 =?us-ascii?Q?znBPNBtk2EgHxCnX6Dv8krzkz38SgTjLulcPbmD5YHxQ0Epjt9rlKZ84kde8?=
 =?us-ascii?Q?ITmqRLb1G/9cbPsntZgx5JvSSNGZVCMqC4NxmvWjZIN8Jg/cjfPBF3XT8lO+?=
 =?us-ascii?Q?8n4uZh1JTg89mERxut53LHX+rtBse85AvF4AHfcLRgs3o9E07RxN2e3KOyxi?=
 =?us-ascii?Q?3rlliFO8tnG0rmdeMlVhLWasNFxHijZuIQClzR+ztDRZ6eC4kNO+fvlNruVR?=
 =?us-ascii?Q?psq291lBGXPlDBot2unz2NYX/dTmMlKpepiUvavErvtfjMJPWmnKwGj3T5T9?=
 =?us-ascii?Q?DVbIKxao8olli/InP9EVwLF1sUXtgN2Azidvvq8P+wCwusyJ/2BEx5/z7exd?=
 =?us-ascii?Q?WlLrIqd9FZ9EkqccvhoCSXteMGB1eSnnVzLe4lby1NXFqvPvPPfynYLqn9Am?=
 =?us-ascii?Q?3sN0WFbShLgRXsltl9L9E1fjDyFqgoQ5QJq94LT5aiboxEYRVQSLuFlBq0Co?=
 =?us-ascii?Q?Qa2sms6vF+bOV/NGqpsO79zFtRQG3E4ne5f/lf5PVrzniqQuBcYdMQnGIGAV?=
 =?us-ascii?Q?doMWgcg41SCVYOwlSY1lH1Lds4u07rUchq9hV9r5FsmC8M5Go9GrJkgYKvpk?=
 =?us-ascii?Q?U/9QeGPELSPgp1j2Ro1PJXuYd+4Q8fNLF6IgLINhKlCWFbq8mFvl/3iF6puP?=
 =?us-ascii?Q?TwyUzdiGSI3guQzw4BV58YXJUkLkemNKUzNyzW41V+DT+A0gtYkAoGMDcK9Z?=
 =?us-ascii?Q?Qh4Fuu549FlWNgdAQKeGaDB2HW+PkzfxgJXwRyx8AQMa3TjEe7/peXm7VrXa?=
 =?us-ascii?Q?UXpNmXcuRcBtDYTc4KbZ18M0aCpiyu7cHr62IPZwkkab/VJA8iFbBxp45+tL?=
 =?us-ascii?Q?q0TsZfgPdU4CfBSVrTS1DWIxm6TZSuZyertAfoIsZaIJl/v9MdTzSs/O+cUm?=
 =?us-ascii?Q?KUHiZf5f6GwVoMQH7H1GQybNQx39i35cUym7YeOEkFg/6ZLV8vrGNP6MVPhL?=
 =?us-ascii?Q?4uxdfcjKyT0aXKkdm/GQTfc6AWCpkcstpOMuW2A1T9dJQ34vSEI2rF+zrlJG?=
 =?us-ascii?Q?Pd9QmMVdSPv/WTjyANOzANPE05p89oN0//FgoigfuFMGwLkvOCTy95RTPsW0?=
 =?us-ascii?Q?dOObQ541I17AwFuZECwkMMjmQ8DHKlkOC2VgYFG1nCp5zAYSiui8KReXgfYz?=
 =?us-ascii?Q?7K8qpIFatxOb8Q33Z0GVLjX6tTqDP92pfCBxsm52/94G7ZSE/8A1yJ4s54de?=
 =?us-ascii?Q?Rsa86l260wRbDmjjj6Xegw3Incb5/ZhLxT9o2zgczzWZ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd0fbe7f-daf3-48f2-3691-08de2ddd9aea
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:34.4525 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LFzMdVEzrVRXAOY/5O4H3N5B277z1CdORoRdp5mz5W0VG0Gkls5YJ+fL4pLH4FvFKH0AlFeGNkZZuhGpX8BiUQ==
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

The minimum/maximum DSC input (i.e. pipe) and compressed (i.e. link) BPP
limits are computed already in intel_dp_compute_config_limits(), so
there is no need to do this again in
mst_stream_dsc_compute_link_config() called later. Remove the
corresponding alignments from the latter function and use the
precomputed (aligned and within bounds) maximum pipe BPP and the min/max
compressed BPP values instead as-is.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 48 +++------------------
 1 file changed, 6 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e3f8679e95252..24f8e60df9ac1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -463,57 +463,21 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	int num_bpc;
-	u8 dsc_bpc[3] = {};
-	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	int min_compressed_bpp_x16, max_compressed_bpp_x16;
-	int bpp_step_x16;
 
-	max_bpp = limits->pipe.max_bpp;
-	min_bpp = limits->pipe.min_bpp;
-
-	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
-						       dsc_bpc);
-
-	drm_dbg_kms(display->drm, "DSC Source supported min bpp %d max bpp %d\n",
-		    min_bpp, max_bpp);
-
-	sink_min_bpp = min_array(dsc_bpc, num_bpc) * 3;
-	sink_max_bpp = max_array(dsc_bpc, num_bpc) * 3;
-
-	drm_dbg_kms(display->drm, "DSC Sink supported min bpp %d max bpp %d\n",
-		    sink_min_bpp, sink_max_bpp);
-
-	if (min_bpp < sink_min_bpp)
-		min_bpp = sink_min_bpp;
-
-	if (max_bpp > sink_max_bpp)
-		max_bpp = sink_max_bpp;
-
-	crtc_state->pipe_bpp = max_bpp;
-
-	min_compressed_bpp_x16 = limits->link.min_bpp_x16;
-	max_compressed_bpp_x16 = limits->link.max_bpp_x16;
+	crtc_state->pipe_bpp = limits->pipe.max_bpp;
 
 	drm_dbg_kms(display->drm,
 		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",
-		    FXP_Q4_ARGS(min_compressed_bpp_x16), FXP_Q4_ARGS(max_compressed_bpp_x16));
-
-	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
-
-	max_compressed_bpp_x16 = min(max_compressed_bpp_x16, fxp_q4_from_int(crtc_state->pipe_bpp) - bpp_step_x16);
-
-	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
-	min_compressed_bpp_x16 = round_up(min_compressed_bpp_x16, bpp_step_x16);
-	max_compressed_bpp_x16 = round_down(max_compressed_bpp_x16, bpp_step_x16);
+		    FXP_Q4_ARGS(limits->link.min_bpp_x16), FXP_Q4_ARGS(limits->link.max_bpp_x16));
 
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
 
 	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
-					      min_compressed_bpp_x16,
-					      max_compressed_bpp_x16,
-					      bpp_step_x16, true);
+					      limits->link.min_bpp_x16,
+					      limits->link.max_bpp_x16,
+					      intel_dp_dsc_bpp_step_x16(connector),
+					      true);
 }
 
 static int mode_hblank_period_ns(const struct drm_display_mode *mode)
-- 
2.49.1

