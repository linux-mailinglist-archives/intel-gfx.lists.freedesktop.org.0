Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1302BD299A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 12:45:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE25210E421;
	Mon, 13 Oct 2025 10:45:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B6StakBi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF1310E425;
 Mon, 13 Oct 2025 10:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760352312; x=1791888312;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=H3ldf1pcCFYLqW53Cfnaw/38a5ZR7J0nnve8OMgJamU=;
 b=B6StakBikZHmnh8AYn04xLzuCYCl1P+lKqBNLnjNGAXy3ROOcZVoFSdN
 y1bA0Ebdxqsa6SLNuZv9VXj7BJ1qM9uO/QRax9zpfimZaycNq1KUHMTyE
 dDdlMP/lfwNyGN7IifFx/32+yRsJKe6gPDMn425JLChyU/XxLSNaZiu3V
 kO7FE5nZFnWEORuxCYQL/kfo1P4hkNnJDT1w0uojiuGyi3ESjaxzB9oyZ
 PsUL28FDC4cJPvv/AHy0eG/D2ebGhzimyb9meac0NgvqCJMasqDtp6LXk
 loxNkooj06HdXAO0HrxEkOT2kH3k+vNrpSoF1kcyFm+yERPqMCaPq0psd Q==;
X-CSE-ConnectionGUID: BTXOGzUsRDeGG8EUfU3RMg==
X-CSE-MsgGUID: KRqQJwkES++o+mzo6E05iQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="61526566"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="61526566"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 03:45:12 -0700
X-CSE-ConnectionGUID: M0+pKI5wTUGjbd/C6/hW0w==
X-CSE-MsgGUID: kAtbTN1iRTKnUIi5yrhBxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="180810464"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 03:45:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 03:45:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 03:45:10 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.48) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 03:45:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mt6/MVTJCQyiUNSm3Q6LIruw0THCIxBiHipTQyzWh/Wzz5hDOipjHmKGTmJqra2X4npejTGtFPfP7CmPtQdH5d/n8HUG9VZadYp5aMw0hBkl89IAT5rcaAkEM58lGNWwmZtcjYZmIC8pqbGmGx8AFypR0ub+vpjMGXAUifuP6Gw1tZsihob9J1JxrWSbV54SQz4kDRM0vxpU+UA7jxRNBd2TqO/yHRP1W4Uw3SycXf4Q3IrUfLFV6K4mYwIAeNVWHj05/TcI+iEqdVWhUdfvXFF7hLm18QZE5cTLMZuf8kSUEvHvsAT4787v2lvFnKRRDm3lyDdojphjpyXZdSrNFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tj1oASs9WA5rtguAsob8acODJfVK4tYaSvEK0xIItnM=;
 b=ZV6KBlrtSY+5Wi/vlbKVU8QPp60W+4093/VnjT1SD37ZOiLvwGMLAzg2feLc5C2IVOiwseTDZ1aubFZQVJTw/tLxd7a5mqqgrDh7Yp96JCGtKHiYU6LI7eJ+SW1sBbzjrCI0TKuI5/YCQdN55M5p7FrAsm6CqcI5xvLfv/c+++eSiXPAlFo0mSwv+RE8BdwjCiRTBsQORlqqUCgNknvgvfx4w37K+HJSITANRh0ZBqTmvd6L2GgnsAQcN4vGDzcpUdllZDqRBGLBx4S4FPismhU6vxoAiVtYO9+kuKXbtYVEmrco+SNmIoaLCm0QkUGmKqaxK+1xPSRjNSFCuJja7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA4PR11MB9106.namprd11.prod.outlook.com (2603:10b6:208:55f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Mon, 13 Oct
 2025 10:45:04 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%7]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 10:45:03 +0000
Message-ID: <1b409d97-4367-4368-9b05-da5c611750d6@intel.com>
Date: Mon, 13 Oct 2025 16:14:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [core-for-CI] KVM: x86/pmu: Don't try to get perf capabilities
 for hybrid CPUs
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
References: <20251013055515.4105002-1-chaitanya.kumar.borah@intel.com>
 <ca8fc27adb327a7ed198154511b66c648bfee592@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <ca8fc27adb327a7ed198154511b66c648bfee592@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0118.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d0::11) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA4PR11MB9106:EE_
X-MS-Office365-Filtering-Correlation-Id: 38d02bfd-22ca-4592-1278-08de0a459104
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QWwwVzVkSmNQL0tBazdGUXM3cHAxZDczSzNDTitrVjNmeU8rczh3YUVZdFpw?=
 =?utf-8?B?cDdDQll6dmdkbGZEM3lueWg3ZEduQkpmakJua3lta2dWVGs2NDVvZHl2eFVP?=
 =?utf-8?B?SCszS0FVVGN1OHN6Q1RCVm5HOWJPTFFwS2VMNDRSWU5XZHRmMVNYeEJqTlhu?=
 =?utf-8?B?SUNEa0ZLelcrRy9BZURMdXRoNkpCWURzUVhpZlI1d2k1dFI2NTk3Q3N0NytU?=
 =?utf-8?B?YVQyb3lidm1lcFJuR0p2N2RSMWJDYlI0Z1NmeU5WU0l3WTljaWdVbFlDWEJa?=
 =?utf-8?B?WWdPbEtWd2JEQ00zdFpINlJ1Qlh3cXJIUmNQdWhTY1ZiOG9YKzl0aW5pT3FG?=
 =?utf-8?B?SWl0Q1FBWmoxTkJDRU94R01Vc1NLVWVOUlVhS3Z0ZFY4S2V2NFkwNFZZSkZI?=
 =?utf-8?B?L01MKzZuRFVZVFk1WDIvSEJRRUJheG9ZZ21mTjQ1UFhHR0psSjVTcytXbEdU?=
 =?utf-8?B?RUFGZWw3aXc3bjFEd1lsMFlUSW9ZaytVOWlMdm9jeUMzRnMrMlliaHBXRXJs?=
 =?utf-8?B?VGZSczNtSFNwUlRPQ25BY3o4SUlUU0grRS9ueEJ6eURONWN2WEFQZktnTVFM?=
 =?utf-8?B?cXAwWGRqMmlLcnFEMEs5VGJuUWJCaTFTbmloeDlTUTdLaUJtMWNybTg5N3BH?=
 =?utf-8?B?MHU2dUVQY0FkSHYvOWpTUk1UeXkvZ1B5L25HTzU5eUd5eUx1dUx0U1dDVXox?=
 =?utf-8?B?eTRKRTJJSFdsU0xxM1FUeWVBSEpHM3gxd3JkMUNoRmhOZEpoZ09aOWNkbVdK?=
 =?utf-8?B?UDl3SFdyMHl3eUtPMVBhTzV1ZjVQZnhINDVmdU1mUzBCYzEzazNUS1Z0QTdW?=
 =?utf-8?B?djJWQUF0aCtTVUt5bHZac0dlN1dZUVdzUXRhMGtzVkl4dlRwQ0NCVzdiUWp1?=
 =?utf-8?B?ZEMrbkVQT3p5MXN1RVhkSG1vbm5aS3JWN2xoeDNpNkF1Tmp1RzI0N3BhQ3lP?=
 =?utf-8?B?RGFZbDAyU01kaEFxMkxhdDFKaDVKSnJkK1lTc01uQVBSbUxoVGpWdlBsN05z?=
 =?utf-8?B?Wnp0UFNqN0YvMlJ5TU5GVUNkQTlqaUppRlVveWQvRGlvOXhYZitnVnZ0NnI3?=
 =?utf-8?B?TldpZzczUzNEU05KQmJYVTlhR3VQM1lQVC9XTkpJQ1llalpSZ2VSNUQ0WnYw?=
 =?utf-8?B?QlJqVzQ5cVNONjJvMW9kVU50V0ZYNXlVeTJNS3RGb3FaYk4zMEJrc0o2NmJi?=
 =?utf-8?B?bytvNUtlVFdCWVZvU2hIT3FHeVlUMDRxSG5kU3ZGS3JhYnp2Y24rUkF4bWU1?=
 =?utf-8?B?QSt3ZUZZMUVZSzZIWGY4a2swSXpRUll3UE1FdFh6dlFJVytOckFGam8yV0do?=
 =?utf-8?B?VGx3M05ERG1xVGVrNVVVSllURkpDZUVySkYwR0tva1l1WktYQ05HaVJlWjRu?=
 =?utf-8?B?K2NpUWV6dyszQnp1VkJXT1h5dDJySGhodlk3ajAzNmdvd0lYbXZxeFFSOWxp?=
 =?utf-8?B?NDJndjlKV2dlTUtJcTZ2aDJUVGE0M2M1Mm0zZzExOGRPTHZBc2xvVWNIUWVt?=
 =?utf-8?B?cmNaWm1lTWFUM3hkWVZoVC8vamJjV2FkZDVXWUllVW4xU0I2S0ZWd0xaakk5?=
 =?utf-8?B?OWV3dkxCbmxBZ3ZBQW1XMml6eWxlaE5ETFMvSGFlUnR1aHRZSG1QVUczNlEv?=
 =?utf-8?B?LzkrTDlyT0NsSTdkbjEreHVQdTM2UEdjNmFjaXJFNHpzZXVJem1GQnlyQW5h?=
 =?utf-8?B?T1I3by9iZXRBekFnT3NuVXRaV3FSSFAzZ0VQRTRHcWl2Ymo3T21qNjNBT0tp?=
 =?utf-8?B?UHFZMTlhRVBKZDhRbHZ1c3ZWVTJSc01FQnJ0Z3FQWkI5REFCaDJXMzZiQmN3?=
 =?utf-8?B?QzN5NzVIZDRSeHZvT0FPWEdtMS9BTnJaNEFqQkdsVkEvMjN2YkZ5R29GRWsw?=
 =?utf-8?B?QytqR3U5MjJKMU9qVndTbWJsbWlMZGExdmlJL1dueFNJdlE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEhlLzlGb3hiaWs2QUlwQ01HL0N1U2NLU3Q1cHk2ZnhmTzhkOTJDK1BFNWhS?=
 =?utf-8?B?cVovZWtQaDVqMWxPSHBkbDBtOHNXZ2dIUkt3WnE3azdRZ1o5VTVDeGJ3VmVZ?=
 =?utf-8?B?aVdPRG5UbWdacWJXeklGNnZnS2NGb3pDckpFV1VlSCtwOExJOFducWllZVhq?=
 =?utf-8?B?UGNBM3NxVGRVYmQwOE9GRXg3U2l4RDFRTEdKaDVlYmdpMkM3K1JFWjFYTkRV?=
 =?utf-8?B?TkpxQVNUcEZ3SkNPL2p6Z0FIM2Q0TnYxamx1ZHpmYTVyOWlzOHdFaW53TjNu?=
 =?utf-8?B?dzVvN202bFRwa3kvckpkSENmd1lDb256WHl3YUhxZjV2YWJLeFJjbGVlTGlM?=
 =?utf-8?B?azV0aGhkWUxHM0FvY1VsSTBNc1cwMVpMY0M0dE0vYm5tazl2bGlhWXdZZEdj?=
 =?utf-8?B?cEI1azJPc3YvMktreE10VW1hVG1RNGwwbS9JQlkyY1ZRaUI2bGFRY09NRHll?=
 =?utf-8?B?bmU4S05JSTd2WjY5N0sxT0Iyc1ltRVpPbFM4Tk9HdDZEcXJTb3RNNjBzQkVS?=
 =?utf-8?B?NVFCWE5EalZrZFJwUU9hQkNBRXhOQ0Y5cGx1VTBqSnNTOFZHNWF1QS9qZTNp?=
 =?utf-8?B?TXYrZDVBemxHbWJOVlJCZEgxa2FSTmVha2trTUp6dlUwZmU4eTJONk5pNnhU?=
 =?utf-8?B?UFRTUlNrRllsMGRTWHlIY2dBRzV2WjJEb0xlL1AzalhKODFHZGRtdE9scTNa?=
 =?utf-8?B?MnpRM09KcGZwaXZ6bWZkdTNsUDQ0T3U2R09GYlNtcTUxL01JRlVvT1ZTZjNm?=
 =?utf-8?B?UUZMbCtrNGRGRys0WWloZlhFeGt4ZFY4MmZ2MWU5TTZUZElVUXc2Sk5iSm5U?=
 =?utf-8?B?V2hobXFuSExsaEN1ZVBubDNuYTJrR1Rad3lPeUlEVFBYSDNaTXdVanlXaTVL?=
 =?utf-8?B?R3djbXFYN2VURVR5UXVVb2dvNFBNWU4xVVhqTDdwRlNZaGJIbDh1NndSVXRL?=
 =?utf-8?B?R3REZFJNR0xBcXRIR3lBNjBNSERxcXJNSWtZQzlRd1lGdFJ1eXZmRGNiMWhj?=
 =?utf-8?B?TlFlbXVlMURnb2NKa1VlWm5jenNNNzBLL1NZVVN2YlBUQUVPN0pLaFNBN3ll?=
 =?utf-8?B?bW12b0ZweDZMYlYxS040S1RNanF6RXJSeEczSGlRUUxtYnNJVjFxOUZHRWl3?=
 =?utf-8?B?eHpWL2RkeW16bHVqMU9hT3IrTWRkMnJaK3d6N2NmZEF1bVRueDlNMVlJWEp1?=
 =?utf-8?B?OFB5bFhPMnVYZFJtQjdaYlRscGp1dkRzV0VzVVhYNXEzTGp1dS9lQUxLdnM4?=
 =?utf-8?B?S1hFSUlka0ZzQWFlWTl3bVc3a2NsYktwM296SS83L3U4cmRTVUh5R1ZEcGl5?=
 =?utf-8?B?ajZJTGxkeXRyS2NnQlZLV09YQTZYaXRPS3lTY1lmM3VjQ3B5VXRqWHl5ZTVx?=
 =?utf-8?B?a3VwVlN6ZHZrMTBCSzA2cUFSRjhDcFlzeWhRZ3l6eFhwMlZqbGh2M2hmQnl2?=
 =?utf-8?B?M3oxaGVLem4zY3ZYeEdCZmxrVW5EeGRkRkxoN3VaV2tIZWJkbjZ0bTNuVnVt?=
 =?utf-8?B?OXlYU2hBOWlCaEtvR0UyUi81QWhaalJtRGhqUXBrbjdkZnpjTXFTTHlnMXM5?=
 =?utf-8?B?dFVWaEwxanpMYXBtYmdpRGp6a1R6c2xJUW82UmxlVkRjSkFMVkp0N1dqQ2g2?=
 =?utf-8?B?ZTBuU2NHNDhjVDJLb1RFU2lJRzE0YU5DYlVTaGJtYlJ4ckNVaWEyUUhpYkV1?=
 =?utf-8?B?ZUpNZllSZEIwYmhocE5OOWp6NllkVUZQTE9IWWl6bCtpR212QUdJZUtEY2FF?=
 =?utf-8?B?ZDZpWFNUU2NtcGhxVEp6VEpQTCsyLzF1eHFWajJCSVdFSUNkSUQ1dkhrVktv?=
 =?utf-8?B?TndBNDEwWUN0ZVNKcnJvRmhaNExNS3R4RThpYkhZcG8xRmRCKzY1N2VCWk1L?=
 =?utf-8?B?UHVWN2hKNEZFQTBjNW0xaUpTZFh1UUhYSTRWVkZTNkorWDZRTmFmRUdZdjF2?=
 =?utf-8?B?Y0d5MWY3cWNpSXptb1drQjlCblVNdmlTQkVLMmtpdjJhMXZKTFhjdmZhVHo4?=
 =?utf-8?B?MHdRcHhEcG8yVDhmV0FSZlVOR1RVSU14TW50VExHdy9jYjhSTVQwNzQ4Qmkw?=
 =?utf-8?B?WlBZa1NtdWtjdy9kVDBaV3BLdmU2L2o5SytqbnRqakdKaWg0NjkrTGFwNG5j?=
 =?utf-8?B?bkNMRmZxNUJzNXhnQ1lPSXhzZlRsZ1JYekVpQyt5Nll1WUIyb3d1WnExQXZN?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38d02bfd-22ca-4592-1278-08de0a459104
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2025 10:45:03.8476 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pxE8ICE+wLxTKfu4+cNwrYhx7peYnrNw2y9ElLhdHNGB3vFn1QSB0MqVGa+Qs+HUohGrpTLt1+4Wj1tiWaHq726aCblXYsccJa/B4nZlTQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9106
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



On 10/13/2025 4:07 PM, Jani Nikula wrote:
> On Mon, 13 Oct 2025, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
>> From: Dapeng Mi <dapeng1.mi@linux.intel.com>
>>
>> Explicitly zero kvm_host_pmu instead of attempting to get the perf PMU
>> capabilities when running on a hybrid CPU to avoid running afoul of perf's
>> sanity check.
>>
>>    ------------[ cut here ]------------
>>    WARNING: arch/x86/events/core.c:3089 at perf_get_x86_pmu_capability+0xd/0xc0,
>>    Call Trace:
>>     <TASK>
>>     kvm_x86_vendor_init+0x1b0/0x1a40 [kvm]
>>     vmx_init+0xdb/0x260 [kvm_intel]
>>     vt_init+0x12/0x9d0 [kvm_intel]
>>     do_one_initcall+0x60/0x3f0
>>     do_init_module+0x97/0x2b0
>>     load_module+0x2d08/0x2e30
>>     init_module_from_file+0x96/0xe0
>>     idempotent_init_module+0x117/0x330
>>     __x64_sys_finit_module+0x73/0xe0
>>
>> Always read the capabilities for non-hybrid CPUs, i.e. don't entirely
>> revert to reading capabilities if and only if KVM wants to use a PMU, as
>> it may be useful to have the host PMU capabilities available, e.g. if only
>> or debug.
>>
>> Reported-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> Closes: https://lore.kernel.org/all/70b64347-2aca-4511-af78-a767d5fa8226@intel.com/
>> Fixes: 51f34b1e650f ("KVM: x86/pmu: Snapshot host (i.e. perf's) reported PMU capabilities")
>> Suggested-by: Sean Christopherson <seanjc@google.com>
>> Signed-off-by: Dapeng Mi <dapeng1.mi@linux.intel.com>
>> Link: https://lore.kernel.org/r/20251010005239.146953-1-dapeng1.mi@linux.intel.com
>> [sean: rework changelog, call out hybrid CPUs in shortlog]
>> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15122
>> Signed-off-by: Sean Christopherson <seanjc@google.com>
> 
> Chaitanya, please reply with your Signed-off-by, otherwise I can't merge
> this. You *must* add your Signed-off-by even when sending someone else's
> work unmodified.
> 

Ack, please consider it

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thank you for pointing it out.
> BR,
> Jani.
> 
> 
>> ---
>>   arch/x86/kvm/pmu.c | 8 +++++---
>>   1 file changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/x86/kvm/pmu.c b/arch/x86/kvm/pmu.c
>> index 40ac4cb44ed2..487ad19a236e 100644
>> --- a/arch/x86/kvm/pmu.c
>> +++ b/arch/x86/kvm/pmu.c
>> @@ -108,16 +108,18 @@ void kvm_init_pmu_capability(const struct kvm_pmu_ops *pmu_ops)
>>   	bool is_intel = boot_cpu_data.x86_vendor == X86_VENDOR_INTEL;
>>   	int min_nr_gp_ctrs = pmu_ops->MIN_NR_GP_COUNTERS;
>>   
>> -	perf_get_x86_pmu_capability(&kvm_host_pmu);
>> -
>>   	/*
>>   	 * Hybrid PMUs don't play nice with virtualization without careful
>>   	 * configuration by userspace, and KVM's APIs for reporting supported
>>   	 * vPMU features do not account for hybrid PMUs.  Disable vPMU support
>>   	 * for hybrid PMUs until KVM gains a way to let userspace opt-in.
>>   	 */
>> -	if (cpu_feature_enabled(X86_FEATURE_HYBRID_CPU))
>> +	if (cpu_feature_enabled(X86_FEATURE_HYBRID_CPU)) {
>>   		enable_pmu = false;
>> +		memset(&kvm_host_pmu, 0, sizeof(kvm_host_pmu));
>> +	} else {
>> +		perf_get_x86_pmu_capability(&kvm_host_pmu);
>> +	}
>>   
>>   	if (enable_pmu) {
>>   		/*
> 

