Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBwfONdghGng2gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:20:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E71F0885
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F0210E39C;
	Thu,  5 Feb 2026 09:20:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CniO8qze";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED50D10E132;
 Thu,  5 Feb 2026 09:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283218; x=1801819218;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6yqoVX+pZ8Tkvz6oo++CEtTAgBXkszMkXA2n5yFmJJA=;
 b=CniO8qzewFK+vbadraN2jnyhRm4hEcrPN4eF54ckfniyaw/LwVqKyUR6
 x0Ry7o7HbwMXKHZ9RRGTx12cZiyOVFxu0NozOnr4aCsPY68mx730dYsKG
 ErRw0HfO3ebTD2v8ZgwJyqvMD9j6ZmniXaNP8Z+6tiGJWHpIgVWhK5QoJ
 J4fgpIk++bnvdKfWfYxyMwt2wolGsICllPI7P/13QrmP7a7DENjADR/Uj
 KSemxxpwg6ZimQ/y8FqA4wKWVex/Diu0jgzQe0mxIETcBPjfdvx6BchVX
 YCHyXIq4I/+6aYntihCa9cxK66tKhvpJOn2EPfT4OTZv7cw4OEFO99xvj Q==;
X-CSE-ConnectionGUID: 2LZXFP28ShGDrFGMRwbg5w==
X-CSE-MsgGUID: 8ZRDoC56R1WInCWpMTNbbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="75097792"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="75097792"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:20:17 -0800
X-CSE-ConnectionGUID: TdpXBMZaTxKK03twRZAZSQ==
X-CSE-MsgGUID: 6fDMHAO6RjKp6x0XmyVCzw==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:20:17 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:20:16 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 01:20:16 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.7) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 01:20:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=epF5srFrPdQDZPQGBXT1F+/OgVzk5RhXKK9mxAHxc7EVjQsMitDC21NugGBVTg3tsL1dMwdOquK751FgFRI1xPxiSWUyXWbrYK0YEqs9edjtp9p/ghhYNu7mFFm5C7rRXSNwoZ7LqHTEZWpx9VN7V3tbMiNfHUiMVOgiEN8NC0y6AQL/NgPal3v51VBCy3FeSyRGyq3CnrjnQiA5HPbnBlSREvW+BWBJEjqqEOGJW0pWYiHqR3aq8RBeJFie70lpR0FjK7klqsTpC1wFaiAw4MtbeXxXEVUppS56rZEzkLWXgIpNA8wVuVtznf4fe5t4zwBzj4GdNy7ckLhYAUfPmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tquaED3lfSTE/qDSHXoccZI9HPmIBhwyATUHfhjkTRE=;
 b=wKfVh4ad9XIWg1xHHxOromth0bcCBpPeAMRkHbxVrj9Ay/2r/XuzPph+yMcCuCo444iMHJau0+EWsHSDzdsFBtCauilxYIL2iaaz3J6wN3mB4GwC3kYDE1mTORkanA7OmoNwoAySimgX/P6ObuHoci+YrRzMEQKHHnTBrqEg+lgI4r3NrZ6u3AV4UKFDG2FCUqMiHtf+PXVOsyxsdIbppo3SCFxkIJ2ge2Zo4pce3Vlh6Tek5AC4TvLpJkY8A7xpcZo9GU2iMLp4rvg9FesmkefJlm8/xjPVsv6hlHXAoa2lVwSwOpO5eG1oA9Nb3Ad5RMynj6CIFuCLRDOAwTdRNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB7542.namprd11.prod.outlook.com (2603:10b6:510:28b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Thu, 5 Feb
 2026 09:20:09 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 5 Feb 2026
 09:20:09 +0000
Message-ID: <6d5eef47-aa2a-48c8-b725-56d4d4d73048@intel.com>
Date: Thu, 5 Feb 2026 14:50:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND 0/5] LOBF fixes
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jouni.hogander@intel.com>, <ville.syrjala@linux.intel.com>,
 <animesh.manna@intel.com>, <michal.grzelak@intel.com>
References: <20260204050250.762718-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260204050250.762718-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0183.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB7542:EE_
X-MS-Office365-Filtering-Correlation-Id: 94980fb0-f2af-4d92-11cf-08de6497c1ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NGtvRXZBaDNpVkxwTUpJYmZDekR4c1hqRi9DRnR6Y2hnbGhOV3RRQjJUYWRn?=
 =?utf-8?B?djJpN08rVXN5OU1YN0dCdWNUSldybGlUbm4xV3NMcU1raCtLMi9YcEpVT2pD?=
 =?utf-8?B?UVN0MUVpa1lhbEdnYzNlZFNwQW9jT2V6U2V4ZWRBTThWdlg3VUhnRkczL3Az?=
 =?utf-8?B?NXlnb3ZJYTVDYjU0NnRNb0EwTG9meW9KNU9sOXRCdDVjME92OVhaWjNaL0RE?=
 =?utf-8?B?MExrRE1zbDlBNkNTaDFYSlJ0UlFMR3FhdnlEN0pnNFFidG5oOGN0c2FjS1hl?=
 =?utf-8?B?VGhXaU82NXhheHo0UVdLaUNPR09EaXFqeVRPL0psOWpSM3hFT2VFYjNtUTYv?=
 =?utf-8?B?aWlJTjlBbFFkUFdlVlZEaEFaQlpDSnMvU0JSdzhBbU1KbTd0V0pvbmZYT1Fw?=
 =?utf-8?B?YnlzNUtRY1Q4NnFBWWNxd0FVVlU3MmtuK3lIK2dLZDNnQWxyUGFMU1dTdUFH?=
 =?utf-8?B?ckZEZlljZkNJc2c1QnY1VTBwMUlwc3YrcnoyZWFQOVFRY1FQRG1sa2NWTXdx?=
 =?utf-8?B?M1hTdldtSGtqK2dXcTVaWWZma3hCd3hQaHpod09JWGsvVmlVOUYwaVYxN0Z3?=
 =?utf-8?B?UGFRaUN3SEYzeWt6K2x6WTcwenAwWUN6RytHRlJQS2ZreTB1TTh2VTVvK1Jz?=
 =?utf-8?B?bXdKd2l6NGlWaTdUOUVZaGNwbHBOQU8yUWVFaHhZRGxRTE9aZkdMSTlEYkYw?=
 =?utf-8?B?WHh6QjQ1NDlqRVFyYmJyQmVFeXZPSnRXY1luVWFCek8rdHBpdEhJSWxhU2ow?=
 =?utf-8?B?VG12L2kyVG03UTdGK2JiK0Y1dmNDWDc3Zi9JSTVXc3VoeVFyVThPTlZpVVFG?=
 =?utf-8?B?NzdCT3VRRWZUYi9ESkh3Z2NCY01HbCsvdmJzMnZPZFlBZXR4SENESWhoZlA2?=
 =?utf-8?B?cHhXcHF4YXFyMlU0SythdkN6c3pHdXNGeWQ4MkpkaTZPTmN1KzRuMUtHZzJi?=
 =?utf-8?B?UEd1OEtLVnNZYXBrdnJnaFRUb2FVS2lScjhDRW8yeE1QM2cvcWtLS2d4Umxp?=
 =?utf-8?B?NHFwV1FXUURORW1ab2lYOEdRMEFvN1VKMU1kSUVrVTliRzdSRkVtZlpLeWt4?=
 =?utf-8?B?WkFaU0JEZzJuMVFMNS9qQlgrVnQxUWZ4VkhIZFV0bjJPUGdUdnVVYmJSeFlO?=
 =?utf-8?B?S2JmZTJMV1Z4WnE3aFMreTFHZG1udGZTY21GZHM3SXdTQ0N4YkxRa2ozN0F6?=
 =?utf-8?B?RTFxbFlDbFhCM1lhUmcxM3BmMlAwRlYwZDhsSW1pZmNERVRNY1BsMWVKam1u?=
 =?utf-8?B?Si9Cdm9VWFVmNjRiTXA0VlZRTEZ2c0Z3UTRUa29BWEpFOHluUXI5UWdTMUEz?=
 =?utf-8?B?MENaRFV6N09ZOTIzVXlDTnFVb01lb2kyQ2RicnN3TmhuZVV1bmlnanpNNEdi?=
 =?utf-8?B?U2FYYUpsMHR0d3MyaFJvdVRFZGJPRW5zbDB4cHpNdGlSRkljSm8zekIrWXhX?=
 =?utf-8?B?OUh1NkNhNXgwZ05GR1puYUxLZlZCNmZUaFE0UmRHN3lYWUl5ZGx6aDJMbGpE?=
 =?utf-8?B?MXdRT094Z01MbU82bUplbkVHRVB5VlB5dHJHZkZHem4yMXBtdjNOYWlyOTRT?=
 =?utf-8?B?QlRNOTZSdkpqVElsdEVndklPZ1VQRWZHcGc4N3lSRlZ3bUlLZzhmaXRIVkV2?=
 =?utf-8?B?cWM3b0g4cW9GT3JwbGgrQ3VaWWpjdlZUS3paZzlRaW1oeXZGQnlLNTBkVUMx?=
 =?utf-8?B?Ky9iNVd5Und6OEQxRlVEajVpMmtaa2lRZEJEV2YvLzNaVkhEYTNlZ2FCRnll?=
 =?utf-8?B?bk1JSUFNQ1BLbkNRRWhtQXp2WWR5VElLNk9Ick5JK2NGWms1bFZXUmxWMmUx?=
 =?utf-8?B?ZXpuZE9DOGhTN3FSd2FHMndFak1FVlJrYmZSV0J4TjdGYUhzQWxzT1hZSHFo?=
 =?utf-8?B?djI2MU16bklJelBkclVPdlZiNnN4K2cxdkRxOFk5TFJxc3JoNVhQanQyVEU2?=
 =?utf-8?B?SjM3dGw0a3h3dkZZcUFSU3VXeThkOHZNS1c4YndDRExqZ3ZsL0o0ZjVJV0dR?=
 =?utf-8?B?ME92WFBZaVF0WW9KblJlUTJjRnR3c3h6bUs2MkZFR0lMV2ZYcUw3K0JNaDhu?=
 =?utf-8?B?allWOEJNRFoyNW13YzlhQ1ZpWTdGOUF4S3hPeGJsWXQ4cnJyL3N1RllwUWd3?=
 =?utf-8?Q?w18c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVdoeGdVRnJIMC8rZ0FNQVczSm5GMHErTmxlOGZpSzFSSDJORi9lWno4eHJU?=
 =?utf-8?B?MGxadDRROWdSbDhCdlM3bnIrZzA1c2dyUUZFTGFoWHZIRkZWZndFaysrY1RE?=
 =?utf-8?B?YVZmNU91USt6M05pbk5uOEVhRWJBN0t2c2lFaWlTSjZ0Y3o0aCt5K2F4UTEv?=
 =?utf-8?B?WUw4K2dKcHRNMVlCN2VGL2lPdndNMWtodEVNcWhXc2tHbU1WT2ZaMGVYMXEz?=
 =?utf-8?B?UTlaa00wZnJLS3ZWYitCbjNhdTFYdDlxRC82cDdmdmJQamZkNENLMjlLbjJj?=
 =?utf-8?B?MHlVRlRMNGxUVnNyODBENzZKZ1VIRnRDTkxhbDRDMlo2bUxYdGczNUNxaXlX?=
 =?utf-8?B?TklpdURheVZGV2hENStJLzg1V3JZK05aL2hHYSthNFpWanBCdkswYzU0UzVy?=
 =?utf-8?B?blNPWTdiS0J6RlpkN0FkOEhMdjhodzc3U2dVZms2YnFpSVhtVDFXOElOMXVj?=
 =?utf-8?B?MXM0WFpNbUw2bFFleEVMb1BLV2VYYmpXS3NCTmNBNzlqSCsxNXI1R0c4cmIy?=
 =?utf-8?B?SkhDbjFJUTIzZG81Z0QvdS8waEcweGUxSmYzOXZXdi9VS2JITloxQmt3T3k5?=
 =?utf-8?B?ekF1b2NiS01DT2dVNFB0NzRkWU5OdzRCMkhkL2ZVMzVONFA3ZzBKVTIvT2Iv?=
 =?utf-8?B?YUd3MnozdFpnb01FbGNRclRKQ2VaVnljc1R4bmN2RHRBTmlUdUZwTVlHcFFJ?=
 =?utf-8?B?MlN1YWt4ODYzZEFHcjFjY25TUUdNSTVTaVlKeFFEd1dyQk92TkJ4MllobGNV?=
 =?utf-8?B?YU92UkFkNnFDN3k2NzBCdEpYa0R1c0Y0Y1lhMGxVanJxdDNNUUo0NTBLSHZU?=
 =?utf-8?B?MFJ5aXJMZStRbnpESlhPMzNQYWZYVVFLUS96OVMxRGFLV0RiYWtDc0ljVS9i?=
 =?utf-8?B?VEF3S1RSQVc2RlV0NWVnQUJnaVpHQTdqQ09Jb0R1d2MvbHRyaUhCakRjSE92?=
 =?utf-8?B?ZElmMFdtRTQrUEVURy9kTlpQRGsyUk51ekh0OFJzemc2eU44aDREcWdKT3hr?=
 =?utf-8?B?VFMweEpsc1BsV3NLVWtBbnFwdWNobVJ4WWVOZVFITzlRVVAwRTRmNUZoV0Nt?=
 =?utf-8?B?M3VqblliamxTK0ExM1A5a1FtdWxYVVp4ZjhBeFpndmZLczlydzhTK0pDelBu?=
 =?utf-8?B?MGtkaEZITUNVRGY0L1JwYVJ2aE5vdEVFS1JnMUhQbkhQS3JZdnN6eWlqc2xj?=
 =?utf-8?B?eGJhUW5RaVE2aS9wazEySmlxRFFGNWtJRWZMQ0pzQWdEVHBSTStqVU1jSmFk?=
 =?utf-8?B?OGtYN3ZpNllqRnVBT3ZiTGJ4V2ZQc282T3JROFNwcUo5d0FvL2NTYVUxKzMx?=
 =?utf-8?B?S2hiRk02VnFVdmwvOTIzcFI4elErY1Q4REhpdWNZdlFpaXM5NGx6WmhxTmNG?=
 =?utf-8?B?Ym50SkJ3SW9pOC95d2cvN3hlQXBZVENlYUowZk5TWnlvN2lMSWkzVkxuSk9q?=
 =?utf-8?B?eGZiZ0F6VStBV0pOQXFhcE55K0d5RU90OGNvSnVxa2F1cGRoSnEyTWd6alda?=
 =?utf-8?B?VkZqNVJ0dDdjQmh1dlpvVjBIc2VGUS9MWDhwTWVyYndCeDNMUXMxdVRpNjZS?=
 =?utf-8?B?Y29hNVlVcDJTeWh6OUJXcERNUWFIdjNwZE81UkMwUXpUQXhMTUg4bnBVYW9j?=
 =?utf-8?B?SCsrazZlTnhVS01UaTVhcFQ0Y3VCQ3d5Q2tIcHUvekFjNnpwTGI0UkpmY0pv?=
 =?utf-8?B?VXBzNGkxb1Rsbi9qVHNkaXJKdmRGcklESko1SGd6bDRoZWxuTWhMblVydFlD?=
 =?utf-8?B?TFIxZjlOdDRlNWxoMEdJL2VyRW1NOFYzblZUWjZ6SUdYaWpaOTJJRVM2cm1E?=
 =?utf-8?B?V0J1TFdNMC9JWUxTMGhaUGd4WXNNeTBGVTZ0WXlkdHpHUG83QUFDQ2hBRGFr?=
 =?utf-8?B?eVl5ejJXb2pENDcyVTFLWE9KUC8vVEQyZTZHMy9ZTkNreFYyUk5xK21LUjVv?=
 =?utf-8?B?U3pQNGUvSDBOTFgvdC9QVWE0SWRzZ0hYaDN2WTYxdWVzUnNVb0xBYWtVaCt3?=
 =?utf-8?B?QzRFOHc2dVE2L0VTVUluQ1V6WURQbWFsZGlnNkUyR1ZGV1hXdFhJd2VnNmdw?=
 =?utf-8?B?NkdFcUpQQTNUcHQzNHh6VmVERU4yQU5HSTFXZ1lVNUJ0TUtZTnpJNW12Vnht?=
 =?utf-8?B?L0tjcG1kL1p4eFh4aHdVb1Q2eEhHZThaQkdMdFFBVzEvTFZkVGE1RHNaOVVG?=
 =?utf-8?B?dFdOcUxBNDhBbU1SOU5hWDVVYUJtYjVYcVZXSjNvdkRVeGZYdGp4ZEVmc3hT?=
 =?utf-8?B?d0d4MlNiSEdhc0d1QXFod1V1WlVKVWZ1YWxsZ1NSRklKZ01ZaGQ1RXFRVnRz?=
 =?utf-8?B?Vm1tZDJIYUhhUlE5R3ZYNDlNRFVSeXlrd3oybnEzelE5Q0d0YjM0RVhMMlJI?=
 =?utf-8?Q?N4J+4aMQjzKz7ZAQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94980fb0-f2af-4d92-11cf-08de6497c1ea
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 09:20:09.4767 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mwjvl8dus1Yap5WCYr0kORJr9/4vcOVcGH3yPhRNlB/cTiWDhZeQGcSPKU1/FtfcQz15LgcPR6nEdo5dqKI6ebRHqppvrWM8Jr9HjCuh/aE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7542
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 36E71F0885
X-Rspamd-Action: no action


On 2/4/2026 10:32 AM, Ankit Nautiyal wrote:
> Fix lobf to use computed guardband and set context latency.
> Also disable LOBF while switching to LRR/seamlessMN modes.
>
> Rev2:
>   - Use is_enabling/disabling macros for lobf checks and other suggested
>     changes from Ville.
>
> Rev3:
>   - Address comments from Michal.
>
> Rev4:
>   - Address comments from Jouni.
>
> Rev5:
>   - Rebase
>
> Ankit Nautiyal (5):
>    drm/i915/alpm: Compute LOBF late after guardband is already determined
>    drm/i915/alpm: Allow LOBF only if window1 > alpm check_entry lines
>    drm/i915/alpm: Allow LOBF only for platform that have Always on VRR TG
>    drm/i915/alpm: Simplify and align LOBF checks in pre/post plane update
>    drm/i915/alpm: Disable LOBF around transitioning for LRR/seamless MN


Thanks for the reviews and comments, pushed to drm-intel-next.

Regards,

Ankit

>
>   drivers/gpu/drm/i915/display/intel_alpm.c    | 144 ++++++++++++-------
>   drivers/gpu/drm/i915/display/intel_alpm.h    |   9 +-
>   drivers/gpu/drm/i915/display/intel_display.c |  29 +++-
>   drivers/gpu/drm/i915/display/intel_dp.c      |   2 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     |   2 +
>   5 files changed, 129 insertions(+), 57 deletions(-)
>
