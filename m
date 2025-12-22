Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E85CD6910
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F2F10E6D1;
	Mon, 22 Dec 2025 15:36:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XLtNEooH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1AF110E6D1;
 Mon, 22 Dec 2025 15:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417773; x=1797953773;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=dnLixuwFcyPuoeM2jZ8JJ7svJKNwMkfkfyYLyLwyf0M=;
 b=XLtNEooHZmmfJKFER3MdkdhhbWTBvRzQsR33UZEOD4O1nM72j05W0qYo
 c2fbN6lTY4BCNSq3OEFgKC6bF+c+oiiW9tlf3L+2s9FSRTb7+xE4o+mJR
 nGwldIAJ9Gx1taGjN6gVQAF0kkeaZHDaKKLLp2psR90JY4u/7KM6Zouxx
 MEzvIPprdFHXBUucQlt7koamHSFme69C/ueqywTXYdkJrwKnbgosDdSb4
 IWsgH4z5sGJWO287yD6fCWUgB7BIWJcGSg0dUhdC2+oVhvi3guR3yrVrk
 1f+5cLZipgAP3+aOGo7+HFRolLLn7bs//NTNxd3hiin7YEB2YAcIl45b7 w==;
X-CSE-ConnectionGUID: 5QcdJiChRmK6x6z1BsfORg==
X-CSE-MsgGUID: EFEVXdDdSVSSH4mIJy4sgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68316250"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="68316250"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:12 -0800
X-CSE-ConnectionGUID: lL1tuTvfTk6NGWuLksXkKw==
X-CSE-MsgGUID: wc9JkRVWRNKwZOGjR+GHrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="198692320"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:13 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:12 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:12 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JWwAq4xP2X7Wm/Pt1mBtTIsboSFlJ+npL4AmcO1bL8peuHwEiu5LIRuDvNUL/mslbrMQbgwxjvJa/LFe5A1muh1IBeoCbGisncNoS8/5EvgX4MwWNUVwpdI9KqPCA4FrBxCTlVlhhnEqNmr9Vi99v2QfdoSCnqm1peKAUMviCSRK8UtRxHVPfaVCiM3wVMx3Vh32Hzt8KzQWfgG8Npd9zquPWQilF2d/S7s9zMizP2k5ekh/skJq/SDogYhiIk2H76GtsoqyG/tejgGmLgxMVe5MsDnAADlQyeSDAiPT3Jt0M+IbBUx/gkvclaU1gBLW5QRnOT6SoEhI2XTqI0C5cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7v7E40kSIy9V0TrJQSFXX7Gay29vRoSnES6ZRAWg2jY=;
 b=Jow93/tYsPO+Db9MEddXTTkgiRWSkWlyh+oOXidoloGD/8s6cpGNkTGecLmamS/stL4vcizitOK1APEpwhZGrtBWPkyE9zRPlAa5Suh3kACcLaKrRa0rpw/BGVR95cjQlpvMulxQXeSyCseTQq7gE5O3L5SjoJOFFRGwpbfSTHKXeJ/i4CuFeL0jQd/aKrFa7Nd+PnVmbY0B9++ubSLcnpT0/F40nAxzmLr+3DFRpYWmh1BPBp0/0yDEbchbluyYywKORwp20OcaSP+NyfalpPuDWnF0oUkaLm9YaaHpx4DLJ/TFfIFNUogbTXHs7KORO0jzaeYFifteedAC1Jf2vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB6602.namprd11.prod.outlook.com (2603:10b6:806:272::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.8; Mon, 22 Dec
 2025 15:36:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:05 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, =?UTF-8?q?Jouni=20H=C3=B6gander?=
 <jouni.hogander@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: [PATCH 00/19] rm/i915/dp: Clean up link BW/DSC slice config
 computation (link BW)
Date: Mon, 22 Dec 2025 17:35:27 +0200
Message-ID: <20251222153547.713360-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB6602:EE_
X-MS-Office365-Filtering-Correlation-Id: d983c0e0-007d-4b79-8830-08de416fd1c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|10070799003|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bllnSE90eE1ReGVnakc5YXc0NlpDRUp4cHhjcVh6VUFMaFJuVGRhNTQyaS82?=
 =?utf-8?B?SzJNQXZ4RjBqc1JBM2NuZjJIMWI0RVcrVFJSYytZckc5RW1sdmlZR0haT2RV?=
 =?utf-8?B?VkpMK3JrekJrUTBYWVVoaTY5Vm9sOGhvOGdRcHY4NFNxSXB3U3RGUnhBMzcw?=
 =?utf-8?B?Q2pIZ3hoQ0RvVlh6UmFyUXBoRWIrWWo5bGdPMHMrcDhoWm5SM3BwdmJjRk96?=
 =?utf-8?B?TmhaYWlqeFlsUDluYVV1U01YdVYvUllSR1k1YmdoZWt2a1l4TU40VEZYWHFo?=
 =?utf-8?B?YzB3TzByYlp1d2ZGa3BkYmtXREpGUzJXekRmeHhnVWUvRFRlMjNVU1VhQWk3?=
 =?utf-8?B?cTdsRGp6K3JMMlZUT3BuRW4zWXE0STM4UkU4N1dNRnNqUVRQSGw4K0M4dUVr?=
 =?utf-8?B?d3RsY3JiQzJlRjJYaU1xNW1naUZmVkdnb0llMUw1M2NsSlBCbDd5cDdjTFBp?=
 =?utf-8?B?akpKVVhQY3hwS2NjUUx1TXdydzFFYjRYaU96YnBRU04yVmNVL1hRSWxiL1Bh?=
 =?utf-8?B?L2JNbG5LeWNIWmdyeWV6d094dExvN0VhM0RIZkJwdWIwNDdOai9JUjdyZm1B?=
 =?utf-8?B?TlpwRGR2dk9zR3FhS3ZzWjFJNjJ2TldSNDV6N3BSTDRkcExhRHJKRDZXeFlh?=
 =?utf-8?B?QXplQnBITFBUaTVqUENSVWU1cmRYbDNDa3ZidnoyeVZmNldQbFdwSk8vN3Jx?=
 =?utf-8?B?QnpnNDdTK0dGTFFhT25CTUxZa1JnYXE3LzltNVVJa05nbCsrcEJLSExJaDFK?=
 =?utf-8?B?ZGZPRjdFNzZJOGFLLzdYdzVtRHVSVVBEUWVyd09sK2hqNnU5QnRZYm9rNEpq?=
 =?utf-8?B?TExNR2NrL2k1Q0dudzdWOFR6Q0VWQ1B6UFZxU3NKWk41L2g4eGVPbzRSVWV6?=
 =?utf-8?B?UENQcks5TUNUQXpMQ3NPU042UDdUWjlPUExEZXJKWFpucWRaSm5BUEpybktj?=
 =?utf-8?B?UmpsTWx1b1hOZmZoaHdKeVZsdlpNL240RmNzYzBCcnRCWmIzdER6VGlVWnlB?=
 =?utf-8?B?bGxRaU5UVUdCYmk1bGVXVkxRWERTY2xERWEwZDk5UzRXcVE2TE9NdldyTExM?=
 =?utf-8?B?Y1dTaTdRMjlwdG5IN1hUbm9XcTBqQVprUDdhcmNBcVZ4UEhZOE5aZUVRamlw?=
 =?utf-8?B?K250MlhUSUxUQ29WM1oyOTJycXhmRTgzYkt2YTZZcy9zdWl0WEJ1NWljY2xZ?=
 =?utf-8?B?bUVZL245MlhLTkdGbjhvR2wrQkNubzRycGtXSmFPbWJPZzF0aUtHTzlBdU9K?=
 =?utf-8?B?OThPdFJSQU5CcDdRaVJwcm9VbC9GNHV4cTI2VmNSNldaOXVkaWxva2puSFIv?=
 =?utf-8?B?Q2lEbysvV0QzWUh0WFM5aVJQQkplcHpHZFZURnhCc2kvY1FGL2gvM1ZIQkln?=
 =?utf-8?B?U0s2ZklnZnowUWtIeEhrejNsdzVmRGZlSWR5Z1RvVXBjbFN1T2xuNzV3UWgz?=
 =?utf-8?B?a0pBVm11cUtSWHoxVGNwQ2x3Y0FoU3hPeTdXaktYUzByeGdwSXJRVFBvNU9U?=
 =?utf-8?B?aitzL1NrN2VPNE9MVlY1L2F5VityUHFQdWtJcWRtRnMySHBMb2xHVVU2aDNv?=
 =?utf-8?B?Vmk1c2MrNWFnV3ZvSDVxMXBpWkFwbGM5Wk82UTZjQ0MwdVJXdFJzcTJLV2hu?=
 =?utf-8?B?TlFxTzBCVEFWU0FHSHpOQWpqbEVLSDlQam13NzM4eFdvc2UrM1drQ3NRRWhR?=
 =?utf-8?B?ajlaQ0tGRmh3STNTRnl4cVRhZ2V1MGdHV2NSUUJQVlFYaXdMWGZxOXFaMVBy?=
 =?utf-8?B?UzkvalR6VjNudHB4blRXbnlJcFo5anRBc1ZKN3VBaitldGJMOWVKdnZpWnpl?=
 =?utf-8?B?NjR6MDA1YmQ3aFdjY3UwQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkVHSERBY2p4UjBOcC9OUEJIYm9zd0lrT1d5Y2RyMlgxQ1FaVW9waFFUU2Rm?=
 =?utf-8?B?cTJFZ0JQSGNWVkx5MUR3UWdEaXdlbWhxaDNOVllUaFlFVVRkVTZ5N1dUc2Ji?=
 =?utf-8?B?OWttTG1jdExDKzRoSXJqTHBkVmphb29udnpXSzVrRTE0MkhtM1ByK2xhT1dF?=
 =?utf-8?B?RzBqT3V2NTY5OFpNSUxzUUc4TCs1MllpNkFkUjhkL1FNOXpwaTZReS9rSy9w?=
 =?utf-8?B?QzVXZGxaSnNrNHVUNE5CV0tQM000b2d3alBQVVJ2MjgzamRHNjZ4VExQWDZP?=
 =?utf-8?B?akd1dnpBUjNMQ3hNSjNBL1diRmNFTDB1Sy91ZUFGOG1xdmxMeXQ2QjZLcndy?=
 =?utf-8?B?Q05mSitCYkdMZ0FmdlQ3cUd3dnFHdXZ5dVBWS21IUU1jWUkrOUgwYnk2Rk05?=
 =?utf-8?B?SHZpU2NWTERWbFhTK1Z1RERtRVhxTnVZZjdzSlVVZVkyNEIyZ0NORDI3YnBS?=
 =?utf-8?B?TTNKWGYrZW5jTWdsMitVRFQ3NlNLTElKTUZuNFVmK0N5QnVGL3ZKcEZMOEw2?=
 =?utf-8?B?WlVTV3F3TGYwUlZpQ0s1MDNSQ3p4OURQNStFNmRFbzRkMkw2ZjAyYUdxYUlP?=
 =?utf-8?B?U0xoamdZSmRyeitPZVNkamZwZlBjWExDSGlZQTVLblhISDRVU1htZExxaW9N?=
 =?utf-8?B?NXg2RXNONlZnbjUxaVAwUTNiWjNWS2p3V0N5dkl6OUJMRllHMjNHV1BlV3F2?=
 =?utf-8?B?Y2ZDdEQ0cDhLcEppclJBUHJrdmMxaUV1ckNNaWdPV1ljMDg5aHg2eks3K3p4?=
 =?utf-8?B?ODBXQkVKVXdCL2tLdUIxUHpWMkdIUDRBN3dPcEtvMzllcEUxU3o0OVY5b0NR?=
 =?utf-8?B?aDZoYlZZY2h2bEFsNVdadjl6OGxWKy9JTDdzamx2ak5RNEZmMUdnd2F5Rk5C?=
 =?utf-8?B?aVRUSTZDdG5YVXYySzhEczNYM0xteTdPK1B4MlEzdEFTYWF4MVZBTEVIZXpz?=
 =?utf-8?B?MTltU0pydFVLNDlLVWw0R0pXOTM1MmdTVlVSaWQ0dXlieEVTZ1RZWVV1SUNi?=
 =?utf-8?B?TU9EUzNlL0k2M0hQV0ZwaExiZjZMZzNEUmQxSjFuWkRaMHFTcDdYY3BCczRT?=
 =?utf-8?B?clZhNkIzbWFTSVVUNkhJRG1ROW4vb1RsdkNEbUlCVWl6Q0lORU9icndILzYr?=
 =?utf-8?B?L1BaZnpYamthVVF3MGxMakxGT09IODhvL0Jub1ZVbUg2eTJPOTBtVit3VUw4?=
 =?utf-8?B?UTNGOERHdm1Td2VLd29namZTNWJFaVNTaHBUUlV4aDBqWFJrbjU4VUNQSm5S?=
 =?utf-8?B?MW9hdDMrUlBlV0V3UDdZMVZjQ2MzZ1o5TzUwZ3RaSHlLK0kvcWRWVnNsVnh6?=
 =?utf-8?B?aXdYOXpXT1JFSG1NQzFCK0g1M052SXlRaDI1ZTZaR1JNZjRrVXc2SkNlZGZS?=
 =?utf-8?B?bXAwRWFKenhLMnZNL0VyWWk1K1pqdnhWUnBuYjZ3anBzNVBoQm8rbXJPcVQv?=
 =?utf-8?B?dHc1d3M1ZkFMdHFLVGY1VXRHaXg3THl2MkRJSWhGTVJzejZRYmFyR0xxRUVJ?=
 =?utf-8?B?VDVHdzQxWEZhZmhQc2dURUZEYTRUbzBJOStGVjJXUHVaZFkxY0tqSE5qZHNi?=
 =?utf-8?B?OWNmdXNOQm1aZzV1UVBiWktvZ1VFUTY0eDhxZHVkTEdTSGpzbzdySXdkVDZ1?=
 =?utf-8?B?V0ZyNzhhZEhDeFQ3c0RhUUk2ak5GTE8vdStlNkV5ODZMdHZFR2lnTTZwUmtt?=
 =?utf-8?B?TC9xQWE4TzNIdXNyUzI0RU5OTGdibmpSSzJCTnVhM1NDb0hPWHpjZDB0Unlo?=
 =?utf-8?B?TmoxVXU2d2pLMFFNQUZmNGRrQStROVRrTzhwQTZhSUNPbE41UVpPOEE1RnpN?=
 =?utf-8?B?Yy8xZkovNGxFbVhGQ0VuaUJHTGcxVVhEUTkrS1RTbVlLK2JvbXlnU2M4Y1JC?=
 =?utf-8?B?M05sL1BRajljVEhxVysvQ2VjbGZlcnlScUVSTjJZVEZmaXdZaXhqeHA5TWpT?=
 =?utf-8?B?cnI2UE1OUnIxUE5neFArYlBMY3R0WFl4R2g5NFlaVzJDSGlrTDdpWTl2WWFj?=
 =?utf-8?B?eDFwSGxTYVp5K2QzTTArNDFWdjRmanF5d1F4dVZMWnUxeXh6UTB1TlZxaWE4?=
 =?utf-8?B?VzEvQTAzZU43VUtjVEZyTmJQZ3FyNG1xVElQMWRLR3VVNUxuRndUaTYxTVJ0?=
 =?utf-8?B?cVZ4Unc2U2xTQUU4OVN2Q2N5L0dxakNrbERCbU5oazMzRXA2U01FaDhUd25w?=
 =?utf-8?B?ZDJOejg3ZUEvZ083UUpQd1FBZWxKY2RKSkl5MlFqR2t4SVN0Q2tsaEc2TVp5?=
 =?utf-8?B?ZU9wK0VNV3FocmNPU1IrbzRib1B5NHZUSmxLWFN2UFJsUW1aZ2tZTzBrOVcv?=
 =?utf-8?B?R1ZMRXdSdXNUQmhsRmNxaHhyWWF2MnV3OUxmMGt5Q1B2TWJUaFRlbG5zMllR?=
 =?utf-8?Q?L89ZcvNhrC+hPidkvRducQiKXhk7F41cneyTAAbLPUxqP?=
X-MS-Exchange-AntiSpam-MessageData-1: WEmagiMV1iHPUQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: d983c0e0-007d-4b79-8830-08de416fd1c5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:05.1341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WNDYfc8njtsy9uGOq9QAFIO69LAbU5687wG4rCm7zorzo/XKIuv9resaSxa0MRTmQRf3lQ0W+swsZTp9mu1GCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6602
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

This is the second part of patchset [1] containing the refactoring
(patches 13-15, 20-35) of the link BW computation to simplify it. The
first part of [1] containing fixes is merged now to drm-tip, see [2],
the third part of [1] refactoring the DSC slice computation is to be
sent as a follow-up to this patchset.

[1] https://lore.kernel.org/all/20251127175023.1522538-1-imre.deak@intel.com
[2] https://lore.kernel.org/all/20251215192357.172201-1-imre.deak@intel.com

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>

Imre Deak (19):
  drm/i915/dp: Drop unused timeslots param from
    dsc_compute_link_config()
  drm/i915/dp: Factor out align_max_sink_dsc_input_bpp()
  drm/i915/dp: Factor out align_max_vesa_compressed_bpp_x16()
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

 drivers/gpu/drm/i915/display/intel_dp.c     | 515 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_dp.h     |  17 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  77 +--
 3 files changed, 263 insertions(+), 346 deletions(-)

-- 
2.49.1

