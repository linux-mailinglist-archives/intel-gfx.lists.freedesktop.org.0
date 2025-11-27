Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB3CC8FC3B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:50:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B986D10E844;
	Thu, 27 Nov 2025 17:50:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mtGiBZdm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5253710E772;
 Thu, 27 Nov 2025 17:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265851; x=1795801851;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Gn1ACZyu6jWecdzqcAjsy3Nla/FFYcmds5ciTvhsoBI=;
 b=mtGiBZdmpJiRqS71zoa8h9h4taFRhGmtWS1QiY3i0eneChX3aW9tCTct
 dXKfry9povNlZBpbgHVy3dGxwb6bE43/3wbc7nmxGvn9LVHvhh4eudyn/
 wCQe0dFsJxlkIDWy0fEirvYh/0qJPedczZfbe9C6PEIUOCMsFb7ZEezLh
 5Yul5xyL98csIrsLMYiD5sQ17Q3eDRGz1Y4FMsXZ0Ksk6ASX8h8POD0NV
 rxvPpUOu1cQhn09TLBj3ydVMTqMAXP4NmGEKUY6cMsV07Ygh/7CpO+43C
 Hg1aKqhz/k47SoWJi+VsweLq9ikU2jX8FgxDoIArow6nV2PiAQdV4v3Jj Q==;
X-CSE-ConnectionGUID: 8uQR+qAgRDWZHrG5+E7jhg==
X-CSE-MsgGUID: Yoe9pjA8R4iRldF2gDTOlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002933"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002933"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:50:51 -0800
X-CSE-ConnectionGUID: wrivZH7iRAqQRlwrAcRUdw==
X-CSE-MsgGUID: E/i3KQrjT4W7zS7S2TrTvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453488"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:50:51 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:50:50 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:50:50 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.63) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:50:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dTwZ2Vh1Ci3g8bxQbnAWnAOwZ84cEH8inQHiBtYlNXcNaFEeQqkj9ko+6eu9MTTE/vhAXJXgsoZLKkQGq4v3HPpwN93YbNQMTZ3P/K/XTnBXIEEJVOAXyrck6RNs71IXaSTCb6+Qo0zkO6i83NY5ZCaYMzIBLGX+Ewyup/GAqph1ST+i13a3N14mc/22/qqDJIAg6YZMD0XEmIqr4Jv3aYvthH0xWpndpbxBwvrfUTc48k80iAhjmW1ddpQf5Vi2v2L6W/rGfAKH3BU8dlFlLhRzpFUOd/D8jn3Z/60jfbmWAaPkdA5RpVywPyBR06YAIwFm6o+yuvBn/xlHIpkozw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=isy8QCtCOMNY06P/4kz8KNpBLKarFYw9jOeuYSkqNTY=;
 b=m08/R1P+Lu51UFi67Zn72s8r28YchKvhZzLBUdUD1BKwpn94CsG9sp7GsZd8AZ89oTFl9WooEpnm2CfuwNZJtM3h4oEMDLajFs0gFfnbX2/tRKP0pCzMhXP0QOK6Dlk4ppVp45vkV+0rzGcCg5Zs0LSelBno31ihhos7K1aqROuiaVnAuw6D4xedpCZ7g3yCQWFv4BYxPWqtk6K8e0Kdb8IQZb8NCEBBUtb4ywRtLwbHNj25meEHRg7t0zjQpgUgK2JO9k2b8Ph3Tx8doMq1HKoHR4F3pRXW35MFYRSUnR3FzLfDMgQjuji45U/rGC6K6e8CUoS71gWWj2F7LNuqZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB9035.namprd11.prod.outlook.com (2603:10b6:208:55e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.13; Thu, 27 Nov
 2025 17:50:48 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:50:48 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 00/50] drm/i915/dp: Clean up link BW/DSC slice config
 computation
Date: Thu, 27 Nov 2025 19:49:33 +0200
Message-ID: <20251127175023.1522538-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB9035:EE_
X-MS-Office365-Filtering-Correlation-Id: 646e73fa-7886-40cb-5049-08de2ddd7f3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?v9fWMrhAYDa7BmdrChoyU5xPpzyCYXul4MZnwUXeVoHgvZOL2jBwVu0FDvhX?=
 =?us-ascii?Q?FaTEzU/Dr62wtlT9FyYMfccCuf7s21fa7y/iZEjXvEZSlNWAUpoABqJxCDHv?=
 =?us-ascii?Q?y8HmCmBWrBfXXIuXj5OoD6hm3UWAnndAX/sVcfGoC2gZhRedlMBmWp5Vcu5Y?=
 =?us-ascii?Q?YARqVBWm+vrzjZff76xFKs5AhXZ9hrq/luF6rucB2Z4MMzbYjlOMjMjyHY+i?=
 =?us-ascii?Q?F9/B+oYrSZS+jMxccoOEl6xnTLqP+zOqxbI/RGr48zi1r2zsv5YtGA22mRyp?=
 =?us-ascii?Q?eJQIoegriB7AZWujFjhGdoNMVj+W+bMGNYi23M1iorM5BWm0yUBeXRl7yLvW?=
 =?us-ascii?Q?Jyo9va8qO99oQdzloPEHzTEMxebMWKOP/T7JOakytN5ClHjDf5sprPNey8FU?=
 =?us-ascii?Q?S9BrYAd8gJdckvj358ZoZAaSP3AxLVxLkB1HK+9i1UVfUGSr5l83+mW5A8+b?=
 =?us-ascii?Q?NWtGrafJH12UXx8VLHXgHd1Dj0o8oxQBGyZsUEmBcB0hhxHjpuhCn6d4YYZB?=
 =?us-ascii?Q?hH9hdbN7rzjsPWXi9N/aXZcPAzA2ewgTIRmv6aodJsVonC/8WA+MZITIlCPN?=
 =?us-ascii?Q?NYvWi6kXZ2gxtTGoUOrZ5vhYWHtyLZRc3GHZU6vxVlLg4vAgkAAhLzxMz7LC?=
 =?us-ascii?Q?/5O48EZ7EAid5HJDVt2ZnPa1itXlbjANmrOsNWRHJaRQcpdtXMuzntBsuvKd?=
 =?us-ascii?Q?Pel73+wy5aBxDLVzmEcrvfTUXPEjMgHxQ2ZZ7yI4eqjdJc1a7WxJ3trkl7wo?=
 =?us-ascii?Q?S9xbDRxiHtLWNCKkH0CtSzItfYGw4KkHltf9q/0Yg8+gUN+hpKChPdLLsHpd?=
 =?us-ascii?Q?oQmQ06SryHkAwqRkt6LbY4W3Pw/QCDetUl10zOqoLarUjvk9ZgfQw5QUweHR?=
 =?us-ascii?Q?AdUSKIrVZU4n8+f5X3lwlcvio04aJAY73JzId/ESbcy5ZwKONdkvXRzLppCv?=
 =?us-ascii?Q?xdPVHGsTARXXNwdCC1Ag2pWtGmzejzRU8+uI+A9GrJ6I6SWwr+oOj3LrdNL5?=
 =?us-ascii?Q?mpjHpco6vb/SUKNhTUvmdmMHwAQXKiiAELj0I8XZ0/JL7+w9r3rLYXp1ybGL?=
 =?us-ascii?Q?/E6FVpJ5E41O3Qb35w0J9k0d63E07OG4IMWrcrnk3hCc7cmkRNzwD9iGNAG4?=
 =?us-ascii?Q?P3djHKoeyoKNK9skmwccDAPiGb9uetm15Nc0aqxK8Ww8MG7TLWxRosEgIhRr?=
 =?us-ascii?Q?VbVs9WnvqmdqYnVWiWDQ7TT0K8/Lp9nKeKo8Py+4dUeG2KL6i/s/2JDgI6sR?=
 =?us-ascii?Q?lFVVd6VDXzcFrR+7zFkeOGNHJiw+XL3DbGBcGH46Fwg84ZS1KVKB63AFYhXG?=
 =?us-ascii?Q?4FSaSkXbUBswscv6kcvPpcZZ1tvYpQ6Upnbr/F9KzNvX5gGKpAbUEY5C9zzU?=
 =?us-ascii?Q?wvSj0XeYFVexguxdl0+O8aEEnX6eokG8gS9DxoKkiWQ52LKES+fNeAHAQgOa?=
 =?us-ascii?Q?jkqN9mHgaeuBOdu0jTygBtnz2ZMc4z9l?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oF+GVCpLbKWv5xexbx7USvcEguIxJtsESL9O78lQAPQPa5I/0qqLQ+V4mnt+?=
 =?us-ascii?Q?710HsnOLxzNoexwtvbWK5Hy6GAq7UaABBloLqa2LPtAtBvQv84zkVkkfhZE7?=
 =?us-ascii?Q?0qvsANO7hJVuRuYc8c+B6UYO7eYid3L88wX/8d8Ds7WNWlc6OtWAjGPKzskR?=
 =?us-ascii?Q?WcjwICiJlOYj9XrHVim8OzlQW3OGP1yIG8X/mcytL0DSpcfwas8g/QO/i7m8?=
 =?us-ascii?Q?/5tMRTIzthVKJcFwiCrWIYoQfDGGSF4zKpwqYa6dYx4cgFJC6TnaXvhXRykp?=
 =?us-ascii?Q?uaesVE1rSEoa+rlKlC1i4LqgyisVFNXa75j5emQ3k1LOmyKxg8Jl7H1uCdGP?=
 =?us-ascii?Q?Iox7+BOzP3bG4zxvtbQ6neEMBfnO6CzNuH5hXxf5iUJG00UjEj3GlKN+GpD3?=
 =?us-ascii?Q?9gTn1u54+ZrizPWO75YKPaoTq24luuragoTvd/TUlDHiSnqZPyEgWafdXkkk?=
 =?us-ascii?Q?f1OUStXdk/SeDxsQFtnEyG50XHCOLj/r6s/2KoFO76LY00bRrlwb2bOHEqiV?=
 =?us-ascii?Q?9dWiCNzZZEhEEUIxUQgoqLNT0GIkStIPquGBWEVrQhg4O94BrDbZcfA2zC4k?=
 =?us-ascii?Q?hXaimSMQus9bmyp4giCTHGvpZHLxOlBIL87iLs6kk+xGl0DvtD6k0lA1T71h?=
 =?us-ascii?Q?+wq8r53HaRuQ/slvntkMOD8dAdRBadoDX9qqjAYWLcb7sPpZmbqkiL1besv9?=
 =?us-ascii?Q?wRXf+MBJgjpFqs7BWFs1y6KPByDoYyO14N5/OQLbKPcxoUljTBwFHUFloXVp?=
 =?us-ascii?Q?tBvxmqCMmShA68Cva+hrj6wkPIUohbuXBngmX5awMpNRdamjWFEkuzCcxzJr?=
 =?us-ascii?Q?o9XZUKJL77qwxz9B3vFQenkFRfBamcAnmzHf4ob3MSsQiZnNKDP/tnT479IF?=
 =?us-ascii?Q?cQysvP2ZOVjcU73dCVSeFgJVnFqzDlYe+M4KCLjOOVF7QTn9LYVdjRAgWsst?=
 =?us-ascii?Q?aRGoz60ZSCI3ed3ssaPqqcaaEwkd1ko2zBtnRmq47Un99d0Do5Gg3KE1Y7Qk?=
 =?us-ascii?Q?PO9PojPFL/Fx97efRZKOVhAZRD8LioOS3jJPx6lVqMzNZXQd5+72/h8b56GU?=
 =?us-ascii?Q?Ft40lkiRBB3E+aUEGHdamBI57JlMdOIchtuIXVFwZg8+ZP/xWt19wpQeJj6K?=
 =?us-ascii?Q?wZqBil8kwYbI8NlG7P+t12dsptBO1IIvhZNP7n2tLlzOLhxQGPBgEus1548M?=
 =?us-ascii?Q?9ITrYbDwEWhGqpppkeBHYviEIif+WrSvnKSdLl+/MxrATHz1PefvKIPPptsZ?=
 =?us-ascii?Q?J4Eo5frhGrKTVw4uQNhLr+jBoJl8AslvJMZ7NPRNEgzkP9G/8eFzCzQw1Zga?=
 =?us-ascii?Q?kAkZc+ImMTh4ZhFIJO83JLIeHdSTAPMNSS44LGnf2HU2eCtpRS5LwEjb0NCk?=
 =?us-ascii?Q?Ve4u02wETZTAsGSPCuCgVFh5wuT6s8hAcehkKGxFOIk4FEZjQCUPG4hUw8VO?=
 =?us-ascii?Q?xiXfdgiBuA/jywpYUYcqmUo7vGZJvwne6zr8DQQEJFO3lCjK2CdugJ6P+e9V?=
 =?us-ascii?Q?OuIZtALoOASFUfjLRBj0DQxg3CbSdq6A9AVCymee5A9oKXPap2ujzYIONXOR?=
 =?us-ascii?Q?0rjnuFdi5+YO4bOc/G5UZAUwKgohakJf8oh9zgoBxcoI4jiQAMEO/gEinzuD?=
 =?us-ascii?Q?e8U5ciR/BM786KhRqIvPCN/OPZcEhcjN3OeAmAp2mjW0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 646e73fa-7886-40cb-5049-08de2ddd7f3b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:50:48.1655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J26KgcV2o/qt1wO4TQp3zLyzbyf4DY/yQVFTC0nX7HKK5RzLozGYe2TaQzkK2RBRdvUjomCS5rCBVVzkD7HgWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9035
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

This patchset cleans up the DP link BW and the DSC slice config
computation with the following aims:

- Fix the BW calculation taking into account all the MST,DSC,SSC,FEC
  related overhead and use the proper UHBR/non-UHBR BW utilization
  factor (which depends on the symbol size vs. effective data size
  ratio).
- Unify the BW calculation during mode validation and state computation.
- Unify the BW calculation for eDP / DP-SST / DP-MST.
- Compute the DSC slice configuration in a way better reflecting the
  pipe/DSC stream engine/slice parameters of the config.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Imre Deak (50):
  drm/dp: Parse all DSC slice count caps for eDP 1.5
  drm/dp: Add drm_dp_dsc_sink_slice_count_mask()
  drm/i915/dp: Fix DSC sink's slice count capability check
  drm/i915/dp: Return a fixed point BPP value from intel_dp_output_bpp()
  drm/i915/dp: Use a mode's crtc_clock vs. clock during state
    computation
  drm/i915/dp: Factor out intel_dp_link_bw_overhead()
  drm/i915/dp: Fix BW check in is_bw_sufficient_for_dsc_config()
  drm/i915/dp: Use the effective data rate for DP BW calculation
  drm/i915/dp: Use the effective data rate for DP compressed BW
    calculation
  drm/i915/dp: Account with MST,SSC BW overhead for uncompressed DP-MST
    stream BW
  drm/i915/dp: Account with DSC BW overhead for compressed DP-SST stream
    BW
  drm/i915/dp: Account with pipe joiner max compressed BPP limit for
    DP-MST and eDP
  drm/i915/dp: Drop unused timeslots param from
    dsc_compute_link_config()
  drm/i915/dp: Factor out align_max_sink_dsc_input_bpp()
  drm/i915/dp: Factor out align_max_vesa_compressed_bpp_x16()
  drm/i915/dp: Fail state computation for invalid min/max link BPP
    values
  drm/i915/dp: Fail state computation for invalid max throughput BPP
    value
  drm/i915/dp: Fail state computation for invalid max sink compressed
    BPP value
  drm/i915/dp: Fail state computation for invalid DSC source input BPP
    values
  drm/i915/dp: Align min/max DSC input BPPs to sink caps
  drm/i915/dp: Align min/max compressed BPPs when calculating BPP limits
  drm/i915/dp: Drop intel_dp parameter from
    intel_dp_compute_config_link_bpp_limits()
  drm/i915/dp: Pass intel_output_format to
    intel_dp_dsc_sink_{min_max}_compressed_bpp()
  drm/i915/dp: Pass mode clock to dsc_throughput_quirk_max_bpp_x16()
  drm/i915/dp: Factor out compute_min_compressed_bpp_x16()
  drm/i915/dp: Factor out compute_max_compressed_bpp_x16()
  drm/i915/dp: Add intel_dp_mode_valid_with_dsc()
  drm/i915/dp: Unify detect and compute time DSC mode BW validation
  drm/i915/dp: Use helpers to align min/max compressed BPPs
  drm/i915/dp: Simplify computing DSC BPPs for eDP
  drm/i915/dp: Simplify computing DSC BPPs for DP-SST
  drm/i915/dp: Simplify computing forced DSC BPP for DP-SST
  drm/i915/dp: Unify computing compressed BPP for DP-SST and eDP
  drm/i915/dp: Simplify eDP vs. DP compressed BPP computation
  drm/i915/dp: Simplify computing the DSC compressed BPP for DP-MST
  drm/i915/dsc: Track the detaild DSC slice configuration
  drm/i915/dsc: Track the DSC stream count in the DSC slice config state
  drm/i915/dsi: Move initialization of DSI DSC streams-per-pipe to
    fill_dsc()
  drm/i915/dsi: Track the detailed DSC slice configuration
  drm/i915/dp: Track the detailed DSC slice configuration
  drm/i915/dsc: Switch to using intel_dsc_line_slice_count()
  drm/i915/dp: Factor out intel_dp_dsc_min_slice_count()
  drm/i915/dp: Use int for DSC slice count variables
  drm/i915/dp: Rename test_slice_count to slices_per_line
  drm/i915/dp: Simplify the DSC slice config loop's slices-per-pipe
    iteration
  drm/i915/dsc: Add intel_dsc_get_slice_config()
  drm/i915/dsi: Use intel_dsc_get_slice_config()
  drm/i915/dp: Unify DP and eDP slice count computation
  drm/i915/dp: Add intel_dp_dsc_get_slice_config()
  drm/i915/dp: Use intel_dp_dsc_get_slice_config()

 drivers/gpu/drm/display/drm_dp_helper.c       | 103 ++-
 drivers/gpu/drm/i915/display/icl_dsi.c        |   6 -
 drivers/gpu/drm/i915/display/intel_bios.c     |  27 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   7 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 868 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |  26 +-
 .../drm/i915/display/intel_dp_link_training.c |   4 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 110 +--
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  71 +-
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   6 +
 include/drm/display/drm_dp_helper.h           |   3 +
 12 files changed, 658 insertions(+), 575 deletions(-)

-- 
2.49.1

