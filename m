Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19477BE577D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 22:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E48310E353;
	Thu, 16 Oct 2025 20:53:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HfcMZ4qU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 117B510E349;
 Thu, 16 Oct 2025 20:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760648020; x=1792184020;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SOFCBSMjsAqjgTNXxPDsIJLhaMub4ZlTTbra/N79ZCg=;
 b=HfcMZ4qUvYRgTdIdk6xoneF3lYhcBDlJyghcwo+S+oZtL6xemyio0nbe
 QwhFwA7q5jSoveBEs5qtffet2XVBao7cHtidrUuqT1VWJjB4PKXHls/e1
 bLuLVh/zYm3OVs9iPuHNRU8m/am/HZrTQf4zUAfkoOanyVJq9kYPXN+/9
 6/JHSAaORY9UFtVAqYIVSP/oj2Phz3hukZxFFri9TWRvkhgK+UA5a+hRr
 X4m3+iGeiZIjz4q+QMpP+vEkF3n1cj6KP4iNRlSYEU3UrAK4h1ouGm9jn
 FYfb1KmNaHfCX6y/R6WOjNH1aWhhjf44WD2BZgafXvwpYuRcAQqyu0BYD A==;
X-CSE-ConnectionGUID: yKy0/+QkQBG8H4epdxSkWg==
X-CSE-MsgGUID: ZpGrKy4bRXiJM9RFhHvYoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73458307"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="73458307"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 13:53:37 -0700
X-CSE-ConnectionGUID: ptP+XbmXTum6JFbv3uMVIw==
X-CSE-MsgGUID: ZevknP3XRRyAqopIkMW61A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182541513"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 13:53:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 13:53:35 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 13:53:35 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.60) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 13:53:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MfUYlMASsXbbCES9SpgeUrJMDuyFvnwgf++ze/vQfEFEB3x/LES2V7AxMw+QsLebNkW/CM80yEOXElL5id1nfDUDgmkj57rpyB+ccDMwMCAlGbzuFb2iIbJtKmDha+oAsJH4ebrHtOpUQIgNi8uXSIxTlitk99mgqgczjfJw2e/9Li4dZ4EssEk61WzWyxmFSI1MnDNEgsAtxWGKq3QufyYESmnnDXWV+N+zT56G/Br8c4tjISQAkSIEs9jVi9S5IwB/4Yudmko2tWHHaSW/nV9p7MV7UAWuDmy4Zv4p9B7Fp6Yt7WSwqmwR5XouAItN0O+KbIRY45tX1jsaeEQ5XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qdW5HEj3H+hUU28luIO3sdabMK2eq+hy1/GkrICLG34=;
 b=V7epg7oDwnjkFb/AxNRCjXLpy9nsW+RkO6FmAgdKFkZ1t6WwUSpaZVh8Blg8O+LKtBtT4lP0LSJFxwe73I+IfpUVw4rz52b5OPW1nB+HbIzhRtts1W8xn3Q124csg5Q8/xYtuodgJ04H5OphzWovOcdUmaI8tn2uJIEXBlHuvIR6tgGOKStE4MzvL96MVnZ/25YP4GRVVIlKd7xFjbyTuOeKD58VD0bbevF4xrqjvJFXgVHDq9UU7L3J8tUtS2P3ApReUmYFtlGle7W2Q2v8IW/ga1ToLzIMposUDt9mg3slvxCftHarR+J5iTz0G5Q/x8fVlklwBuT2wg4fJQJftw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by IA3PR11MB9016.namprd11.prod.outlook.com
 (2603:10b6:208:582::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Thu, 16 Oct
 2025 20:53:32 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 20:53:32 +0000
Date: Thu, 16 Oct 2025 13:53:28 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?B?SMO2Z2FuZGVy?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 15/32] drm/i915/xe3p_lpd: Always apply level-0 watermark
 adjustment
Message-ID: <aPFbSBLQ4NWaMRHo@msatwood-mobl>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-15-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-15-d2d1e26520aa@intel.com>
X-ClientProxiedBy: MW4PR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:303:8e::25) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|IA3PR11MB9016:EE_
X-MS-Office365-Filtering-Correlation-Id: a140d86d-46ab-4fac-49d0-08de0cf610a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2J1TUZQRGJhMzZBemlWZG04WktrTzByYXJsVHQzU2J2d1lCc0FyUDF0UXhs?=
 =?utf-8?B?dnEwZ3Y1TVhLa210RzA4dDA3bUtyeDQwQk84VkowM2ZJWHB2aGJUTndteEcw?=
 =?utf-8?B?eDR0ZmZ1U0FSVnI4eFZlV0JHNm5STm50cHF1WG9qOTNwZTdSL0JYSDkvbVpX?=
 =?utf-8?B?ek85KzBLMEtCR0tSMkVyR0hyeUo1bWFtQkc0OEhDK2FUeVZQOFY3MFRPQUl6?=
 =?utf-8?B?UlF2d2tMeVVmZTBIdk5lR2NST1dCMU1Xa3NibG80NDZOWVp3T05QdVJTNzZ3?=
 =?utf-8?B?Nk9uYlFsVjQxR3k1N3duMGxxdnhzdHcvZnVnQmxKaXlEZEM0dUhRQmFhTEhJ?=
 =?utf-8?B?L3dYVTlSemJMbFRnSUtlcW82aWI0dzBudVh0UUI0N1BQVnZjTm1BNkN0eUYx?=
 =?utf-8?B?UWdRYlliTkRTNkY2ZFB0NGxVdDNXa2NOYnlTWi92enRTT0EzR0R4OVNtUDIy?=
 =?utf-8?B?M2ptRCtTd2E2c0dCVjVrSEtlRkJyMzljRXNxUGFuUUtERjZxTjRteVB6WU0y?=
 =?utf-8?B?QlREczRQMFIyUmJyRVNxRHJtS3Y1TzdFa0J1TFJnMHlhMHZ1d2U5RXlWYzJl?=
 =?utf-8?B?NHN2MGI0eWFtSWJVbVRTQWRPOWtMaFA3NUNIYzJKeWJmeGh3R3lXTEhGWjdQ?=
 =?utf-8?B?OWtWd3FYMzNsVitLdGh4TmJBQmxzaFprbTAzUElzczFkK3VxdXRzR2VJbkow?=
 =?utf-8?B?SGEyeUhrY2gyU3A3d0ViQm9UaXhXakJzVlk4cVVIQWNmZW9uKzlDL2dZNzJs?=
 =?utf-8?B?VlFpZzJVT1EraDY4MDBSSzROeUtuZjA0c3ZPK1c1OTJVdXdCSVEvY2Zpck43?=
 =?utf-8?B?djZBZ3hOVWVlcVJsU1VVQUZUWmR5M0lSelJ1eHBJeS9DMUczUGlEVjJaS1pj?=
 =?utf-8?B?VVptR0FTZzJETXFrNXpPMEJaOVo3M09iYWdMeGIzMWlJVGQrbU5GVTRMUVJF?=
 =?utf-8?B?aG1wMkFwNWMwWmlrWkk4ODRDb1h0STYyd0J6NmlCUE1Cd1p0OUxiKzBpTHJX?=
 =?utf-8?B?S3NjSTh0K0tIeHhBaEtsdE5GZy9HWnE5R0xBSk9rc2RIRDFZSTJTV1kvVkVW?=
 =?utf-8?B?YXZFVllrZG1kSGl5Rk9wNWJCbGtDVDJYZXpmUGtaYVNFVVFLVzZRV2NLVlRz?=
 =?utf-8?B?QnJNRm1wMDlabHZkbk95S3c0S05sZHdiaXl0dmx2K3FONkVQRkduOG4yb0lT?=
 =?utf-8?B?NVA0OWZRTFdhRzFGQzlnYmpobEZoMTJvV3VLNXNBU2NVQ3NDM1ZLYlFFRCtv?=
 =?utf-8?B?VWJwL05hdU9JWkYzUTFFODNCUkhLNmRkY2U3VkU1RVlQSVlNRjU4YmM1SmYw?=
 =?utf-8?B?YzBTa3dHZHc1V213ZFE0d2puMnNzb01IMWxZUUtPUjFsTTd4L2lxNGlrZGhp?=
 =?utf-8?B?QzQzUkVxY2NLVy9RWWVocG9SbGtSa3R6NGp1QjRaakM3ZXRLZWdWaXdJbytX?=
 =?utf-8?B?N0FIU3ZCL3pIdWRTbmJIZFVsMldZUnV5TEFrZEo4UDc3UEdsTnIvTGlDQktH?=
 =?utf-8?B?ai9HZC8wUnh5OWlFdjg0NXhjWVN6WWZrMEZ1VXFVREcxdWNPMzBrTERKOWJY?=
 =?utf-8?B?cnNhMkxIb0c2RVBVMDNQejk2Y3QyQ3FWQXBOaCtJMlNQRHd1TTVkSzdlZGxv?=
 =?utf-8?B?Q2RNYXJNU0VHZC9nUEJYNFVpWHBPOC9zcytjMXJtTnNDZDNDK2F0c2hGUEE1?=
 =?utf-8?B?eHY0RTlWVml5dWJWQ1dxbk9rcFNlNnJ4bDZDc0dQa2pNNmhmN1g0K1VkWlVw?=
 =?utf-8?B?czhOdXprL3BHZEoxSjQyY0NuTUxPSUxHaWRiMEEwRDlvdGM2U3BMUEZJZWVB?=
 =?utf-8?B?QnNBMjhXNGhmUnZvbjE4bW1uNi84NmMxc3RwWUxJN2lWK1VvWkxPRnc3cjVI?=
 =?utf-8?B?RmNwRWpUYjg5dHpCcE42cjhFWEtCaGtxVFdFYStCdFZhenFuWGdPS3FZWWN0?=
 =?utf-8?Q?gKk25GoIRo+ReqsVEzrmYqEfPiDLuqSW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M05wS2lQb0NZQXhROVZobzF4Snd1NENRNkFVSkRjRmJ6UmJtTFl5eDV1YTEw?=
 =?utf-8?B?QzFaR0ZXd1kxMC9jQndkbEdkOGlkcXh3SElFZUxJZWZqajZuanBLWVlwWlFv?=
 =?utf-8?B?ZXVxcUlBUmptNEpCbFI0YitSOVBkL25rYWQvSmlpZFNReW9GY1JwYjlPcjkv?=
 =?utf-8?B?b0tKcm05YTdrTWVGRzNmc1lTK1NTZStNdU0wT1ZhRjZDUHpQbFFTdHFJSWZZ?=
 =?utf-8?B?T0dNc0RFY0FKdjRuSmVmZWZjTmszdkFYcTA0WEhIMFhNWjlXaFMrZVVrSnQ2?=
 =?utf-8?B?VmJpeUdMekgxU2xrZlZ2S2EzVTJRVWVnOWplc3FLeEpyZHQ0MVpDcWdxbU56?=
 =?utf-8?B?NGdxUGRDSkQ4SUpGaHJkOFhYM1dRZThSMno5ZXZSYkpvNTkxMGZGL3dZSnA0?=
 =?utf-8?B?ekVxUWlqc1ZncjZ5N3VLdDlDUjM0Z29UNS9tcU03RnRuNTZ6eHBVc00zWjFx?=
 =?utf-8?B?STRRMjFSOXZCYm9tbWNiT0pGNEhDMlVvdi9oQXhOQmFLb2dyNExsU0VSbGJn?=
 =?utf-8?B?aXhoeGhEUTA4QmhOS3I5UTFVWjVCSmIwYk55QzNiMVVuM0QxWWwvRjRiZEYv?=
 =?utf-8?B?a0ZvckdqTXpGaklDNFpkTmExSC9FdzFZVFhUbnpIY2ZCZTFXc2tLdGJxcFV5?=
 =?utf-8?B?NzRtNHNTNGk2SGlrTm1qRVE3Q3ZjOE9TLzBIb3RYWnBZYXN6VmZwanV6eUtN?=
 =?utf-8?B?Y2ZhZ2tKLzJ1cWdkanVVZnFEZWVzVWtWL3RvTklQaHAwMGtBdFliTzRVbllo?=
 =?utf-8?B?dURDSGE5K0F6dUw2dFpqU3RxQ21meGFGeWpiTmorWTAycFJDMzRnclhka2RQ?=
 =?utf-8?B?TmNPUk1ZQ1g1aWh0cExJMWRpU2ZObWVhSkhDdkgyM0w3WEdHKzFHdEwvVnhL?=
 =?utf-8?B?NGlXNGMrWHE0dURQMEl3YUxNaHlrY0FSNldGeXpnU1NqL1BmTkdEZ0JFSm5J?=
 =?utf-8?B?dUFEdnkveSsvTXE1WmtZR1NLd1U3Y3BITktLMjZ1R2tOZGlmQXUzbEtOVVB3?=
 =?utf-8?B?TzhWaTZ3bTlWY3NYZVR6REx6YnlFc250LzhBQ1JMWE01RnBsM0RCOHdkSDUz?=
 =?utf-8?B?R2RnK0pkeUFGMEN6T0lrcU42SUYvTEc0dXBCc1dBN2xSTGtFNlNKNEd4NTYw?=
 =?utf-8?B?N3hJekVoMXdyS3RjdEt5RFdPNzN3QnVOWTRmUHBrazVEaWRLdGFCMlgwNmQy?=
 =?utf-8?B?dGl3SWpDTzkxUnVJYk5NY3N4Z3VNY1AveU41V0VIRUVLNXVoL3JTbXRFTkly?=
 =?utf-8?B?cTNXTkFNd3RvSlIyRjlTWUZraTUyeHhwVVcyaEZQa24xRXV4empSeG1Fd1ox?=
 =?utf-8?B?ZUQ5VktyQkhkQklObmp6TWFYbnhPeGQ1aWJ0MlJtdTlzeTdjQnJ2bDUxa1BT?=
 =?utf-8?B?bCttMnJ6cGhQTzdRVnRoQ0lXVTFkY1FmL21zY3FlMlMwbVZsbzMyYzlMbXBJ?=
 =?utf-8?B?WFBER2RHNmhJS2RKdkFSRzhRSnBETUpwSzVVWVpBUk5SOU04YmNZdjdzMjNm?=
 =?utf-8?B?SlZZWXNiOWRhazdUNVk2YVJhcEhrWXpwRVdubmg4ZlNEQnNSM25QT2lwbXRW?=
 =?utf-8?B?a291ajV5V25DU2RPeGhpdk9mVTdDelQ5TnBBdW5IYXVWQm55MzJJUzFXV1JK?=
 =?utf-8?B?cFk3WXYvRWVzZThnYkdhQjloWTVtbVVwajkrWGY1VS92ZFFISHViejUydHRR?=
 =?utf-8?B?QUNmcVA2MTI4aEc3TnA5K3FoMW9LNDZ3SWRlTW1mRXljQnpVaTk4ckJOb1B4?=
 =?utf-8?B?ZkZtZWVaYUhkYXZoNlJ2Tm5VNk4rdlNFRjhQQm5Gd21YVkdkVFBXRWsyNURM?=
 =?utf-8?B?OXFPamhyNFRFYklvVkVPZFNmL1k1QklrRXRNK1dvbkFSZzdKWFpSMjVBSCtS?=
 =?utf-8?B?emljUnVIVDhneDRUSFBGVW94WXpJVldwRXZaOStOdGVBaWZpVTZDRTF1eXd5?=
 =?utf-8?B?UmF2T25HeFFpampMZ3B4SlpCK1NiZUxHSEJ2bWh0ZWpxbldOWkUyVzl4ZDJs?=
 =?utf-8?B?Sml2K1hHUkw3YW1JdjJxanhtVUJoWGRlV2hjcnBoMi95SE94OUdEQ01zM2ti?=
 =?utf-8?B?cG9mSjdiZExCSVQvZTVyWTNNZzZHdzNSRDVhZG5kenl3VnQwVHMxRm92dndP?=
 =?utf-8?B?UnpsM0owSGxLSnFwREpaZlEyeU1jU1c4cnJTaFUvcXdMcCtZaFRqYTM2cGlB?=
 =?utf-8?B?Q0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a140d86d-46ab-4fac-49d0-08de0cf610a3
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 20:53:31.6200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nqxwsGIW/BrzeIQhcXiut5hIvJpIB+K6EI8idcCyNukkyGT4pNrGREtTo8ZFAgW9IFyR8r+neKYA9UkZQe+NlJhgXkSOd5mzRMRpdNDet+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9016
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

On Wed, Oct 15, 2025 at 12:15:15AM -0300, Gustavo Sousa wrote:
> When reading memory latencies for watermark calculations, previous
> display releases instructed to apply an adjustment of adding a certain
> value (e.g. 6us) to all levels when the level 0's memory latency read
> from hardware was zero.
> 
> For Xe3p_LPD, the instruction is to always use 6us for level 0 and to
> add that value to the other levels.  Update adjust_wm_latency()
> accordingly.
> 
> Bspec: 68986, 69126
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 41f64e347436..88342d07727f 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3249,6 +3249,13 @@ adjust_wm_latency(struct intel_display *display)
>  
>  	make_wm_latency_monotonic(display);
>  
> +	/*
> +	 * Xe3p asks to ignore wm[0] read from the register and always
> +	 * use the adjustment done with read_latency.
> +	 */
> +	if (DISPLAY_VER(display) >= 35)
> +		wm[0] = 0;
> +
>  	/*
>  	 * WaWmMemoryReadLatency
>  	 *
> 
> -- 
> 2.51.0
> 
