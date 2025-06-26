Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FBAAEA642
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 21:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9BC10E8FA;
	Thu, 26 Jun 2025 19:19:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F0+QrNpQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F76B10E2F0;
 Thu, 26 Jun 2025 19:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750965539; x=1782501539;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ExYv98yMi/gUyM0ApMfE4wRU3loIoUL/5pVUAYuqbbs=;
 b=F0+QrNpQeMCcBN5FOqg2I/M+JyzFIMeikWlhMeHBJZPXf4q+qD0HwJA8
 bp3UAJ9oaU2BxHBD9azI+nECnTUTqEhZS0i/fvr5nsDY6Uakk2MN2s8D/
 xF8WL8txcB6TWLWoSzioN9G0saaEHkyerTdDH4UqnNx+fGGuwGazVt1WI
 LsOmA4ZtHwXaCML486GbFzMqjfzj9sJ/+DMPjCSgp20t68LDL0M87/3bz
 I/ORKS4Me4DPvgCXitOJFSC4e9txEMBBV4dhGENl6EtSIpy3mX6gXI4fS
 97RIWicZA9yXIVVhEMBQXYKUMsgBbcYB46cEu+8dRl95KNk6ZzVDoxQqW A==;
X-CSE-ConnectionGUID: NTgx8UmiRSi75Ue0GXRPAg==
X-CSE-MsgGUID: X+P1YG5uTuy6z2Wwc5cBpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53239931"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="53239931"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:18:59 -0700
X-CSE-ConnectionGUID: ILpxxDWDQi+J6fVHKEwwHw==
X-CSE-MsgGUID: BUG4wUyORYaQrUbjEocdlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; d="scan'208";a="156630898"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 12:18:58 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 12:18:58 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 12:18:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.47)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 12:18:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dq7tooxHOAhAelT7AEa414Tx8d8t+yDDErDPPi8912wF36ayj823mrrjgIoOymeGo2SUBBnsry1Urnakz0dXpDEGd2nowbKM42KF8HtqEtmU2cp1aSptf3X38wrt1KL8IYWwFE7Nm9+e/AfSSahRAaegejAKeFnQGfhaBDGY6BHLKmcb6/hc8fJpPGAu26qfWjIaX8G2Z1MrR97e0yFUTPgqiCDJOrTCeNdHHFK9XjryevttUs8m08CnR0mEDO+j/pMJTp+zEBNR8qRqqI5Etz2v8tNk04F6g88bpySlkdXzLM557fxLqcbIPCItcUvQpl1/m+Cuzs1U2FN18DWcHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7qTkZGvNOXW1cMOaAVl04R/9v4A7uPQENRpkv30B4SE=;
 b=rrRBIcAjwItkeYdiNPsmvqVHE3EVELasDkiRzVKJLqowsAHA9cL/Y0ItyQEiyGbQnILbSQ9LMnTDxW1RukbpZEOtYuJSr9HNM9gvKnso/TintG12sQfM2+8ZTiOsAoMgS6qKifzl3+ppuVAv2Aoih17WJvkTHCuWaVXsnkTtpJyt9gHSrKucu04E4DoqSpULPPVPBrR8VAFJ2wApNq4AhaY6qcspIDRFihUvQMjWRvZhlLovuqRChu7EbJ+IrydAQzwX8HUtsfaGzvoBWF08a9cnGb2lsyk53+Ib5QuIEbCsx2P9oPRB2HANc+qnLH4vBitH2Nkr7qO0rXROH/tcaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CO1PR11MB4802.namprd11.prod.outlook.com (2603:10b6:303:94::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Thu, 26 Jun
 2025 19:18:55 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.8857.022; Thu, 26 Jun 2025
 19:18:55 +0000
Date: Thu, 26 Jun 2025 14:18:52 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [CI 3/6] drm/xe/pcode: add struct drm_device based interface
Message-ID: <exfelb7sgxssbc7qaocwqw6or6bidlg7bbgkwgizimtujylzm3@nk64frkil7lw>
References: <cover.1750678991.git.jani.nikula@intel.com>
 <eeaa9cc8438caab2e22f9cb2142fbc18cc0fd861.1750678991.git.jani.nikula@intel.com>
 <gbisrh7ep2gn2fxv7xz4g4sy75qjpmcr5yqdx5atlab2oxevlx@j3zwx3k4o4x4>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <gbisrh7ep2gn2fxv7xz4g4sy75qjpmcr5yqdx5atlab2oxevlx@j3zwx3k4o4x4>
X-ClientProxiedBy: BYAPR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::26) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CO1PR11MB4802:EE_
X-MS-Office365-Filtering-Correlation-Id: d4f3983d-d76d-413e-4ebe-08ddb4e64b12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0cEcOormGjcZW2ODZ/0rudu3hPCL/6+7rQMcBJmy+lzFTyHNcoPuXlM3Fbub?=
 =?us-ascii?Q?niffwfmwcXew8w1G+JceiAYMSBTixqCzSYMB2e+wjF0VcaPL26LwcuTZa82S?=
 =?us-ascii?Q?tZCGXfABe74bsOTwrdSAGaS4yNDRslnrEIhU9q4hGdvY1ayKMFYRQyweFo4N?=
 =?us-ascii?Q?Eorpm6ttxIwuIlz4z1UlyTQul3Ni2yTrFzW9WzOlF5MT7gXf7HeNhNnPmjm0?=
 =?us-ascii?Q?UCIMD2C+gIPCNn74I7YMvI5PNUon1YsaAQ8q1lDJqrdVQg7562VYICWXMFra?=
 =?us-ascii?Q?1ne3O1QoA/wuUV9kU+2nq/9MrX+lS/bqkn/H2bVPAK9vmJV2yEmCAoTCazvu?=
 =?us-ascii?Q?VvHT7YkkZJZtUyOtvy6whD6tioUC1VYa1dMzNArBCBWYQwptLgUSbLhIAsts?=
 =?us-ascii?Q?R3IjHIVKQTEDJRfgAGTz48vlPphSy6PVhMcdwn3V06mx85C9mOTIAOUoWFpV?=
 =?us-ascii?Q?5gMzDw0r3x+sZONJeQ1tMZRTdo8IaUUPoO2scDa+A/RRXuluQFcJg2K/qZV7?=
 =?us-ascii?Q?w9vh3HRSJFrwmuJga+F3n1WrzFbnFBv2X07jlFI767TfLYtj77TGJSH3S3Zx?=
 =?us-ascii?Q?gTCThwsul2gG5Alky3nqw7j5maqCJL+U33j3it72H5dWZy/SfEOvf23s/xVc?=
 =?us-ascii?Q?YqqHKzPLgc1lVSFoVzVijWeONarN638OrPakVTdHL0+kr3i+2+zCBKEorfG/?=
 =?us-ascii?Q?N3b5hO0DYlbPYsDGRZxVEASOkO+VH+YycitTKNVFnS9eABPkGmZtMo8ST8na?=
 =?us-ascii?Q?g0eeBH6k1hX/MaoSGAf72YNXfKsjzbjkcz8b5NHZsvpZWLgaYtomQ9Uvxlet?=
 =?us-ascii?Q?Wqf3xlGTWdad9rs3+hVigxaPq2xkWbnv7tyOwodOFXd9WXeVeVim3AZ0MvTx?=
 =?us-ascii?Q?bQi64PywU+cNweV7jU912taQB/wdAlWZMsJ8MhNWdrpJ+nFPQL3plexKyvZW?=
 =?us-ascii?Q?UHBMQ7hqDAd5nqMYMQoAixjeHn6hsoaI0D3stmcl16OIllut9oHjKUww5s3b?=
 =?us-ascii?Q?b/M9+sr1LM6A8YRPDIU8YPd9cMnrj5tuwBEWvSQL4L4Tu2CUHZ6XHNms8aUA?=
 =?us-ascii?Q?Ry53Td4gZ3146BmsM2DLVidczc+ndvxlS2qAnnOjIr7bw4E8wSz7jOJE0Qen?=
 =?us-ascii?Q?7mHqOihftRcLwIx8d8Qnj2Rt80MdVKRi9YhvkGQVS5hoLNiLxiIz0lBLWTAw?=
 =?us-ascii?Q?IzZ5hDNqbucMDXSWCjdfJ0wgY28Qr7K5zEUi7E4RoBEF3aiNaI6dtSVF+ooT?=
 =?us-ascii?Q?8P81O2nuCSAIXlbv1fdU3BwJmOureBwafwa6faNWJ6+ysZSom6sK/AHwVuih?=
 =?us-ascii?Q?Jgva7YTnkbofzyOT9a+BR9FSS3ZGOnAZL50FTloAXUN+/V+WionfptO9e475?=
 =?us-ascii?Q?LshMAUsC0hMLSqqc8Anavih3rt5lcwV/Haw/xF1Ln6vWOmygFyFpKj0NrJez?=
 =?us-ascii?Q?BT2ZftWAuiI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+7qqxXXZln6xD2daCEcRqwTiZX+zNMD9WSfSpDU8RNtLtjQ1Az+PdTZUTDmf?=
 =?us-ascii?Q?ywtu6hsIVbwRwc+vFRkQfKoHDa4jbdEG7HaT/Ymtf7RDOIKfYB1gjNmsHynM?=
 =?us-ascii?Q?XNSFmfom3zLgGyoKoSg9MRHX4NJJ/K/33sCf5EK3S9zA9Yqg8JqsLuvGPWJT?=
 =?us-ascii?Q?d4KizMSM+SlT2Ww2bq0ASUj19HtL6v0IVKonstQ30DyzLWoVxIP7Kge50biD?=
 =?us-ascii?Q?vYILPwu5ncQ6rotzB3maP9bY2FsZUWr9+ySG/2gydp0bUsOo+yLfjvzRzMBx?=
 =?us-ascii?Q?teF26IacnMVT0KbPZ/07Upf16UsXt48+PVIxur09WCnzW+DMOkqucyVbWsCD?=
 =?us-ascii?Q?tifqAFGOjXKQ7/l8Y8GU/86mxxvYHQ9UsgJvu4U/okrV7yQ9k6+vHBFsEJ2N?=
 =?us-ascii?Q?LZ5AdGiCX7M4l2xdfv/EewHsbojIoZmtDTc6wrFDEd9Npfg2GQU/atyqTBBI?=
 =?us-ascii?Q?/6fMyN+I8zNe9Nfdmi1Pov8DLJWtkAt637fJ1H4nvw2YfDYEMyXs3+7WpKRu?=
 =?us-ascii?Q?WQugUC/9FbIyVOWnMZl9hxnmWdLGHZxKm2H7TGKBgYqVD37zJKEpJfOBbAgB?=
 =?us-ascii?Q?0tVcEIBrpcJc8w6PuzbBPmIiRoL+KkAxQip/+/sUeoCx5KgP08IYT1HHX+Nu?=
 =?us-ascii?Q?YR6bgJy7RdbBWEDDfJJm5ipvrPeH04j1LuDGIAu3DUu5sOEkJdhUsBgryRXh?=
 =?us-ascii?Q?Mzf8oAVjFvVPyKQWG8vi8OVAAAxnoK5vFm55mC3L3IrmaKzXn4+qiWaDRygp?=
 =?us-ascii?Q?Xdv0l2+YrYXRfodBzggnIy5J4MuaA57xGPTim7vv2y2bB+dAwAcBUwX9j+Ds?=
 =?us-ascii?Q?PnYJvud+oi9y8zXOyNIlMYPgh4YcVh6adiZbWr0akvCRfGjejHaymOsgOXXK?=
 =?us-ascii?Q?sYjgk0b38BXmzMIsxY33/pn57RcLWdcx3MoH+NmZ/jLPtRM9hvEPMCfqmeCn?=
 =?us-ascii?Q?e1j5APDS3WT+gPZfXo3FMvoyOmLGphf418ifERNa/ZPNv5V0Z60joaVlqG9M?=
 =?us-ascii?Q?H1FdCXRVOlF3VGPmW7F5CwM2mV4EL8HtufWd5SdQGeJS+4pbS/cZTxjXNX2D?=
 =?us-ascii?Q?fuYSLxGQ80t6seiyhFUkNJ8NNpUx6U58fMeeCmUE4oZxnPYUUVME35VH2Hjc?=
 =?us-ascii?Q?DHxDlSo6dvn2OX6+b302t9p6uCwzGr9RzLNuCAZCwn1kcfoo51stjccF99zf?=
 =?us-ascii?Q?EnoEzglCMVgO8JzUKeb6wBMs07exLo/9piGEMrGFwkL/S45kcq+six8Au3Cv?=
 =?us-ascii?Q?dknCKyth9bh9TXBIyMWNQ1VMXI3Eza0dkD6ltdbKdtgUBIQ/LAKM5HLi2/SW?=
 =?us-ascii?Q?gaaJhXbPnpbAhtAfqWP7gwPC9kX7lhk/S0IKJQqLqJvldLc7lKktsxgbkBF+?=
 =?us-ascii?Q?0uSK0e0BVDh0tUH2N0i0GLRygtrc2uI9FuYm2Qp3bubmf7bmhjewk1UHzW04?=
 =?us-ascii?Q?7m4rlc61cvTh/zIo9BAk0bpYEd483rIRfR9eEwbhZg25j9e6XddlZT9TJoa8?=
 =?us-ascii?Q?6u0ffy58ZiWXFVydkUrAu8ZGwkKVyFj3OkkDukIopxDvcna49G4mPPI2IbJy?=
 =?us-ascii?Q?0Qsd4m6c6IEzfaxsVEP3iiQDaLBRNCsbqu6YnFk8MEeydRrdiNoFkBvbXXTK?=
 =?us-ascii?Q?LQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4f3983d-d76d-413e-4ebe-08ddb4e64b12
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 19:18:55.2910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v2SzVTjOPAk0KntQK6hROV3g2bmYm9l8B0pJm+JCSIyAxAKXFhnFRsdxlALH9ZOOqC2dwi08WTqbDIJxXkPj9Nu12eSuVPABnxhhDeaDiYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4802
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

On Thu, Jun 26, 2025 at 01:56:23PM -0500, Lucas De Marchi wrote:
>On Mon, Jun 23, 2025 at 02:43:46PM +0300, Jani Nikula wrote:
>>In preparation for dropping the dependency on struct intel_uncore or
>>struct xe_tile from display code, add a struct drm_device based
>>interface to pcode.
>>
>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>
>
>So now we define intel_pcode_read() in both xe.ko and i915.ko.
>
>And intel_pcode is only called from display or
>drivers/gpu/drm/i915/soc/intel_dram.c (which afair xe is concerned is
>built under XE_DISPLAY only).
>
>We used to allow both i915 and xe as built-in as long as XE_DISPLAY is
>not set, but with this patch this is now broken.
>
>I think we have a few possible ways to handle it.
>
>1) Revert. See https://lore.kernel.org/intel-xe/3667a992-a24b-4e49-aab2-5ca73f2c0a56@infradead.org/

nah... too much

>2) Move the common symbols to a separate module. We can name the module
>xe-i915-common or intel-display or something else. Then we keep moving
>symbols there until we can move the entire display. From the module
>point of view it's just another dependency that will get loaded.
>However, looking at the implementation, they are actually helpers that
>depend on the driver backing that device so it's not very
>straightforward at this point.
>
>3) Forbid DRM_XE=y && DRM_I915=y (rather than based on DRM_XE_DISPLAY)

I have another patch applied so this doesn't apply as is, but should be
something like this:

diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
index 2e198536e59a0..529e6792d2497 100644
--- a/drivers/gpu/drm/xe/Kconfig
+++ b/drivers/gpu/drm/xe/Kconfig
@@ -4,6 +4,9 @@ config DRM_XE
         depends on DRM && PCI
         depends on KUNIT || !KUNIT
         depends on INTEL_VSEC || !INTEL_VSEC
+       # currently not allowed as there would be duplicate display symbols.
+       # TODO: drop once display is in its own module
+       depends on m || DRM_I915!=y
         depends on X86_PLATFORM_DEVICES || !(X86 && ACPI)
         select INTERVAL_TREE
         # we need shmfs for the swappable backing store, and in particular
@@ -53,7 +56,7 @@ config DRM_XE
  
  config DRM_XE_DISPLAY
         bool "Enable display support"
-       depends on DRM_XE && DRM_XE=m && HAS_IOPORT
+       depends on DRM_XE && HAS_IOPORT
         select FB_IOMEM_HELPERS if DRM_FBDEV_EMULATION
         select I2C
         select I2C_ALGOBIT

>
>4) ifdef the helpers based on XE_DISPLAY... because if XE_DISPLAY is
>set, then XE can't be built-in.

This was easy too:

diff --git a/drivers/gpu/drm/xe/xe_pcode.c b/drivers/gpu/drm/xe/xe_pcode.c
index 87323ad0cbbb2..08aee78ff08ed 100644
--- a/drivers/gpu/drm/xe/xe_pcode.c
+++ b/drivers/gpu/drm/xe/xe_pcode.c
@@ -337,7 +337,10 @@ int xe_pcode_probe_early(struct xe_device *xe)
  }
  ALLOW_ERROR_INJECTION(xe_pcode_probe_early, ERRNO); /* See xe_pci_probe */
  
-/* Helpers with drm device */
+
+/* Helpers with drm device. These should only be called by the display side */
+#if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
+
  int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
  {
         struct xe_device *xe = to_xe_device(drm);
@@ -362,3 +365,5 @@ int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
  
         return xe_pcode_request(tile, mbox, request, reply_mask, reply, timeout_base_ms);
  }
+
+#endif

Let me know what you think

Lucas De Marchi

>
>I have (3) ready based on an earlier patch and (4) is pretty easy. But
>I'd prefer (2) to move things forward. Or maybe you already have
>something else? Thoughts?
>
>thanks
>Lucas De Marchi
