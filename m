Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11ED59A40E5
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 16:16:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CCA310E938;
	Fri, 18 Oct 2024 14:16:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PFqRuX8x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E43FD10E14F;
 Fri, 18 Oct 2024 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729261014; x=1760797014;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2LWtRjEzfZEI5lmCzfsRflrXsjgdaQo/hJWadlpDh9c=;
 b=PFqRuX8xtC6jwA+UJ6PgwRm0kbvBhbakk7tcQtivY20Xv7fa6ku0DT0O
 Hf4i0om/TyKIPO26jyIACN5SVPPmVpxXMELQ8i+9PExMKpE5nWV8LOo+E
 MbkPrDjLxxCF/7gBT3FNQP7QMCrdbokGi4njCa5zNLG1/0i+UZ98tOhEq
 bBF4PnwDsZMSiTVzxI7EkILzzdDdlLCVXjnhGb1bBLHH6v7+dtibNZazN
 eU0SuedRWL9MMr2diyAdGNUCzDEsflScvf9eIaCnu8TLCbdNFGJfT9GAj
 2Ex/op7ss611hYMqLAR2dM9bUnBaTjsDah3AqbM3qjF7StVyTu0crHbYk g==;
X-CSE-ConnectionGUID: 0hB3kYQxSjGUVUmsELeGYw==
X-CSE-MsgGUID: w6rYzajrTQCLTjgfiCuvJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39923082"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39923082"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 07:16:54 -0700
X-CSE-ConnectionGUID: jBz+RhgXRP6+sofXciNjmQ==
X-CSE-MsgGUID: 5eOkPAQxSaOXqtDVt4xlcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="78836993"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 07:16:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 07:16:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 07:16:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 07:16:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mmbeo+wknWfkxtJMZSI6nVIJ/0lS7CIUnGJejxWR6/b7+oqeveKDb7NOhbRdbvPIlFBLFVgqjzL5Xhui841qE6TVD492RNcm7VaoCBNE18jsRFWkfJI8PlalBcmo+xQhv8Athraa4Qpa1K58lkOT5dn+IfaaiRBNUI+4jsuswhsY99hRY6Q7hd/uqrJMZ00ziHF/Uosot18pwTI4p9efiwmv3tpMqmQCpVSqXkk7rfaxhCsxcyjqYo2pc9Sv74Ft+91V0/bAHXPFoBGPkdvHHZ1+hM85cw8gNF6TlTFU9xpd7JQXrmtGrCWBUgmRZ8Hbhr9L74Ynrbv8Za6Vy0WCfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JhK/hcd5bLQfRUiWyQGUQtAMfFH+gmZzHWpWRlqynjY=;
 b=ANSv6v/Unh6WwZFyLo3seAxg4Evd5Y66hZZmEtyPeClpoizhz7CYhL5TwubxrCL6QNzuQG+UDmbQhH42dvdBG1V38jmDqXhw19qKPtibZbStOWp1D2tXnE91ysgAvXhY4/1cYD84qx+Wps3tbKhOcNXcHJtoDsNS9nrDMVaDEXURg4yKB9HYP8Vx3B5+9P5xLyfKRu69klaT6xDwmbpz9jBbpzStPjhUDy/M9Gnk3G12P+ArrH0Cw4SN0YxX7GtdWXkLn9S5ZgnSZHfUTxVm+m5odeiNr1bdAHDpY+x2SdVbC8v4TZHAi++qtgZUQA8cy4YfWYmwXoKcswzaWCh/jA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by CYXPR11MB8691.namprd11.prod.outlook.com (2603:10b6:930:d5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.23; Fri, 18 Oct
 2024 14:16:50 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%3]) with mapi id 15.20.8048.020; Fri, 18 Oct 2024
 14:16:50 +0000
Message-ID: <864c8944-6cca-4cb8-b02a-19cd4d172081@intel.com>
Date: Fri, 18 Oct 2024 19:46:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to
 include tx_misc
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20241017205444.102979-2-gustavo.sousa@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20241017205444.102979-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0117.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::35) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|CYXPR11MB8691:EE_
X-MS-Office365-Filtering-Correlation-Id: f2af50b8-97ee-4c30-af5e-08dcef7f81f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?akFNcmJpQWdNSWoweUl3ZU5xZUUvVnh2S1ppWlpidFVGamZUOU50V0lYSnBa?=
 =?utf-8?B?bEtuVmxITUxTVHJhN3RuMjU5STFIY1VsSVFOeXpMVFYwSEh5Q1dtOHpGS1FC?=
 =?utf-8?B?S3VsQ2RVak9udHd1SWxtOFVkQnBXemlkakhEdUdWRFpHdW44ZG5lbzV4eXVv?=
 =?utf-8?B?QjlSeEpmSHh6cjhKY0QxSXRmanVGY0o2ZjVoeXhFSW9WRGVWZlVCWWo0WU92?=
 =?utf-8?B?U0hqSmhCQVFKYTU1TUFZejBNc2pteGZsK0FleVRFQlovbXFRUVdRNm1tUjRo?=
 =?utf-8?B?ZU5NajVUQ1kvajlqUFV3RkcxWkRqVnFkb1NZdUp2NDRYNm8xaXhZdVhpZnEw?=
 =?utf-8?B?cWd5RGNwS09PV3h1aUFZcXJBVnJaMnI4a0VESUVSSVZpeVBLS0N3blBLRVdC?=
 =?utf-8?B?dTZ4WVU5TFhJeEdoTDhHZE5KcXFWb29VbEs5U0FxS2c3R1R1cmxXQXExN3VM?=
 =?utf-8?B?ZHFCM0JPWWNtUXBxekREOFIxTUZPSFNONkIxQ2l2QkF6U2xybW9uUGUzTDlm?=
 =?utf-8?B?MTFocHpteldpVlkyQWZscE5xV2c1STdFU2FLM0FIMnpEYWdZVnNkVmcwREhU?=
 =?utf-8?B?cU9oZ1VsWndEMEVvMThzZkw0QUxPdzVQQjRnNVROQTNMY1dFTGRwQzQ3R0hB?=
 =?utf-8?B?cE0wRzV4OEk3dnkweW9OakJEc1ZNUHoyRmNka3Bkb0c5bmRZL2I3U045NEVr?=
 =?utf-8?B?MzNmeVd2MllXWGxyZFp4YVh0Rkl0WEFDa3ZJb1d5K2RMUG9PbCsxUUg2OTZF?=
 =?utf-8?B?aW5UQ2RHMFpTR2V4bHU4MkpSNTBqVU4wSGIxVUJjOXVwc01yNDRuM2dLQ1dS?=
 =?utf-8?B?Ylg5OUEybzh1YXd4YWlXUnNmNzVJSWE0R1VPNmJmai9OTkhwdGp4N2EveHVY?=
 =?utf-8?B?QU04MElDcStzbEJCN2U5OVlmKzc1Q1RBamphRHh3RndEcWw4SHZ5Nm8vVlVa?=
 =?utf-8?B?dWg5SWJwaWRncCs3ZXhHYnlvcWgvSWRTSUhrWDZuT2xLVGFaeStrbDM4ZXNv?=
 =?utf-8?B?aE5BQ1FhdUtNR3FHTXFNYkVGZU8zUENvdWNHN3lvS2IveVZGNUpKSnU5aWJj?=
 =?utf-8?B?WnVtdEJGcFVoalFXT3U1aW1wOFZyNG1SOFdrNmI2WHFkdWdSTUVLbkZNOFpy?=
 =?utf-8?B?T0c4aFdqb2tndTZ0M2dkTXRvTzNOWUhlcUpKMCt3bFh5WUtGTVdUTGtQQTdh?=
 =?utf-8?B?MDhqaGU4MHhFYmFwM29rLzhSTlNOSldFYktHTEJOSDJZYmhCZm84N01LUmIy?=
 =?utf-8?B?OWMycEdNMURPRUN5ckltcmFHWkJqQ1JEMzZJd3ZQanBZTmdJSlB0UVZVN2tG?=
 =?utf-8?B?QWtsWGorcWQvZmpWcHB6MXk1SjBObTF1aC9nNWFaTXlTTjdUOGY3MDIvbnM0?=
 =?utf-8?B?aVE2V2duMlg0dWFMVEtFQXZudVA4ay9oWUNxODcyMDVIQXhsdDdYVGFmK3pF?=
 =?utf-8?B?RU5YamJHMXdXWEJzSllLK2l5Tk1GYWhRY3JmWEhIQVg0dU9CTVM2YXpHNDVp?=
 =?utf-8?B?aDc1akY0L2IrS3pSTWJpZXBzZzZwT1Y3VUJqbGdXL2ZHZ0huZU4wckxGUis4?=
 =?utf-8?B?SHRDS0VLNE52dXY0RE9IUlJRMWVYTlY2ejI0UkJ3UXBXK0xXakdta29jK3V6?=
 =?utf-8?B?YTRwSWppZmhwN1JPQTRrUjhESkVrVk9HU3FPM3ZRdHduYUxMUDZ3OFN6enh6?=
 =?utf-8?B?eXR3U3RZMkJmRHlyN2laRWt3MEhWWmdaeTBjNzZtT0dRMjVHMVVpdUNIUi80?=
 =?utf-8?Q?4TOZf4EDZViSiRz32y6jABjHVblDurQqEj5M3Lh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2NtemltNkFGdytKVktPU0dpZUtlNnMxcFVRWm1KQk5LR0l3dG1JUXRTZy9y?=
 =?utf-8?B?VTc2RnRKa1RjZVlzUStyblVFSU9jbVpod2x5eDBLNmJJTVRWZFRYaXBPVCs0?=
 =?utf-8?B?Q2t3a1kvMHB3U2M2MENYaWg3ZGVRald5WTV5VzErZVA0WUVPVy9YbURad2Rv?=
 =?utf-8?B?aE5xaDNKNjRWTTZUamxLcFJmNzMzR0ZEcFlySGVMRmRhcTBrcWZPc2pwaDVB?=
 =?utf-8?B?cytscjJ2KzJvSjBQTWlmelc4U2pCTVArcmF3UWk0MllseER2eXdwMlNWRnZz?=
 =?utf-8?B?WE9MckJlOWZBcHpMZGFyZCsxRTRZVnRZZnpmV3BOdWF5WW8vWnFDRk0zR0xa?=
 =?utf-8?B?R0VsN0MvVDc1aHRsclBGVmNlUU9IQ1JGbkRlUDlWandvL1hrbWxvRDZPUEhs?=
 =?utf-8?B?N3A4cy9PV1FoR0g5d3RySkJGeUZrOFpmYVJpRDRPdXB1NGs1enVJZUtYTmg4?=
 =?utf-8?B?SEsyWVdvd3Yrd1VoNGVnR1pDTlFpdFRLV1RzdVk2OGhBbFQ0cXZSelB2VlhT?=
 =?utf-8?B?bFNFckxsSEJmWFM1Z0xPdGxjRWtpUHdmcmRmRmt4VW9xM05WeDE0ZzZKTXdY?=
 =?utf-8?B?OTZIejZVNkh1TlBJdENvM0R6WmdnQ3Z5c3R3bWhNZURMbzF1blh1cXE2aHYr?=
 =?utf-8?B?VUh1WDZiRk1zbVQzOVIvZU1kNThXaHhGTS9LRVZIOTM3OTF3eWRUSng4YUdH?=
 =?utf-8?B?OUtQSWZEeEp1WG9QTEtjeW1DZkc3L2JvRklFVU45VDNuQkVwM3VoUU5MTytv?=
 =?utf-8?B?VXZ2VnFWeS9XWXJjdWJ4K3RsNzJHUEZsLy9DZ3UzRU5GVGdQay9hUEZhZmFE?=
 =?utf-8?B?ZGdCMVU5b0ZDVmhJOSs2dUtZT0JXVFRRbW83Tmg4YnJwSjRjM2RRU095SEtj?=
 =?utf-8?B?eUwxRjd4cXZtNDhOKzgrVERodHdKeGxSczM3T3pqcUpIUFpMbDJwelA2aURV?=
 =?utf-8?B?QVF0dzhva2wzZHJLeUswSkpCajFES2NlM1o0Z2tLOUdxQWVlZmJCMFR2elFD?=
 =?utf-8?B?dDJqclBlLzBVN3FOWFlKN0p2RTAvUGsrODdSK0srV1ZNZm0rV1JINXdYcldx?=
 =?utf-8?B?TkZnSDB4WkdPYXhSQnpQaCtWcTFDUUNnYTZBSjBESUpTTTEzUGxxRlQ2T3Fo?=
 =?utf-8?B?Zi9jaWVCa1VpNGNMNmJzT09EVzFvY25jM2h2WUlaeGxoQmo4VXZjU09RVkFH?=
 =?utf-8?B?Y0FZTXNxUDZvUFF5NXRLU25wclZaVkVGdmxoTGJJUitjRklzOXl1bVg5VTRP?=
 =?utf-8?B?MFBiTWtkTHVlaS8vblg0UDdDamg5cDc3TVlWZzRicjV6TWxnNFRINGU4NnBQ?=
 =?utf-8?B?OVlNNlp6VUd4bmJUYXo4VkRuZFdkQk40bE12S2U3Z3oxa2FpcDVMSGFJL24v?=
 =?utf-8?B?SnYyRXE1ZkdIWjFzMnA1S3dzVGthRFhhZ2hJRGNoWEZDS095dUVOV3ZSTTdJ?=
 =?utf-8?B?elpzY1hRaUdha0M4RU5LbDZEazllbkZMeXdVYmlBTFFrMER4aWJzVVZWL1Vo?=
 =?utf-8?B?Rko2T0pMaUFpa0EvOWhTb0J0R2J3RHZjTU5WTlFRMGN3azBtcDFGYWVUWlVV?=
 =?utf-8?B?K29WY3FoWitLc1dtZURaRVZtc3gxT2Jlb2NDY29OYnZpK3RlWk1sOGUvVXA3?=
 =?utf-8?B?VXpsdWxCQWgydzlqQ0R5WHNFZlB2SHVaZm5OYWI5dStYdkFqSE1zamlnTkFk?=
 =?utf-8?B?eStaOWw5Qk1XLzNrLzNNOUtVajVKYzVHMGpYdGJ5UlFDSGxEbWVGenMyZnRI?=
 =?utf-8?B?QlpZRnQ0cTZsNmxjMlV4bnZVRHI4QitnTEM5VDBYK1c2eTBHRHBjdnpvNUtL?=
 =?utf-8?B?dklDNXYzM2paSnFrRUszOXhtNHRkS1FKVWswa04xRzY0YUpNbEZVRTZDdnJk?=
 =?utf-8?B?WEdyREFidFZpUXRTR3kxaVhLUC92OTZjNXlYbUZDOHEvZXN2aWpMOFI5T202?=
 =?utf-8?B?WENCd1VQdHY2aU00NW9rUGtHS2RjTW1QOG5GSnBSV25zeGxzamJHUktoZm5I?=
 =?utf-8?B?cE5YNjNaZEliVG1ROC9UcHV1RFA4Z2FrOHRkbDhiUHhBVXZ2NmFCdHozQk8v?=
 =?utf-8?B?aVFuZGM1SUdRVjVqV0xkazBZOXhmeTd1ZjV1KzFERDdIYmlXWHl2TzF4bzhn?=
 =?utf-8?B?dHdmTTY0TDRYTEZkcmdQWGtsK3V4Y1RZOGF2S0VTWnIvN09EdXlNZ3FlVEF0?=
 =?utf-8?B?SWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2af50b8-97ee-4c30-af5e-08dcef7f81f5
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 14:16:50.3109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jUVAt291qnuRhmKwic2psEE4II3BDruOT26SadBeBXE+F/KHblP8dnN9U7RDG3+ULfSL3s1AXxYCVdAhH6Y2bp1Jq9VK24yra4vYDlaSffI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8691
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


On 18-10-2024 02:23, Gustavo Sousa wrote:
> There has been an update to the Bspec in which we need to set
> tx_misc=0x5 field for C20 TX Context programming for HDMI TMDS for
> Xe2_LPD and newer. That field is mapped to the bits 7:0 of
> SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, which in turn translates to tx[1] of
> our state struct. Update the algorithm to reflect this change.
>
> Bspec: 74489
Nit: Would 74491 be a better Bspec here?
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c    | 17 ++++++++++++++---
>   .../gpu/drm/i915/display/intel_cx0_phy_regs.h   |  2 ++
>   2 files changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f73d576fd99e..22184b2d5a11 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2142,8 +2142,12 @@ static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
>   			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>   }
>   
> -static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_state *pll_state)
> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_encoder *encoder,
> +					   u64 pixel_clock,
> +					   struct intel_c20pll_state *pll_state)
>   {
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +
>   	u64 datarate;
>   	u64 mpll_tx_clk_div;
>   	u64 vco_freq_shift;
> @@ -2154,6 +2158,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>   	u64 mpll_fracn_rem;
>   	u8  mpllb_ana_freq_vco;
>   	u8  mpll_div_multiplier;
> +	u16  tx_misc;
>   
>   	if (pixel_clock < 25175 || pixel_clock > 600000)
>   		return -EINVAL;
> @@ -2171,6 +2176,11 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>   	mpll_div_multiplier = min_t(u8, div64_u64((vco_freq * 16 + (datarate >> 1)),
>   						  datarate), 255);
>   
> +	if (DISPLAY_VER(i915) >= 20)
> +		tx_misc = 0x5;
> +	else
> +		tx_misc = 0x0;
Looks like tx_misc changed from 0x1 to 0x5 and not from 0x0.

Thanks
Sai Teja
> +
>   	if (vco_freq <= DATARATE_3000000000)
>   		mpllb_ana_freq_vco = MPLLB_ANA_FREQ_VCO_3;
>   	else if (vco_freq <= DATARATE_3500000000)
> @@ -2182,7 +2192,7 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
>   
>   	pll_state->clock	= pixel_clock;
>   	pll_state->tx[0]	= 0xbe88;
> -	pll_state->tx[1]	= 0x9800;
> +	pll_state->tx[1]	= 0x9800 | C20_PHY_TX_MISC(tx_misc);
>   	pll_state->tx[2]	= 0x0000;
>   	pll_state->cmn[0]	= 0x0500;
>   	pll_state->cmn[1]	= 0x0005;
> @@ -2266,7 +2276,8 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
>   
>   	/* try computed C20 HDMI tables before using consolidated tables */
>   	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> -		if (intel_c20_compute_hdmi_tmds_pll(crtc_state->port_clock,
> +		if (intel_c20_compute_hdmi_tmds_pll(encoder,
> +						    crtc_state->port_clock,
>   						    &crtc_state->dpll_hw_state.cx0pll.c20) == 0)
>   			return 0;
>   	}
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index ab3ae110b68f..c1949aa1b909 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -280,6 +280,8 @@
>   #define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
>   		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _MTL_C20_B_TX_CNTX_CFG) - (idx))
>   #define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
> +#define   C20_PHY_TX_MISC_MASK		REG_GENMASK(7, 0)
> +#define   C20_PHY_TX_MISC(val)		REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
>   
>   #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
>   		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))
