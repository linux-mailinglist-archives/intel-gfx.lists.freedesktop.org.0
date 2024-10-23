Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D7D9AD5A2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 22:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 594EA10E85C;
	Wed, 23 Oct 2024 20:39:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ys+qxJ40";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A880710E386;
 Wed, 23 Oct 2024 20:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729715995; x=1761251995;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=Wf+0GywMCn7bH9N5us6pVa+1LRWLLvH0QmUzzDoLuH8=;
 b=Ys+qxJ40AJxkxMsVeHP4VXoYE3RlstN+cVHzv3BsfBtHavHU2r0F/S3G
 iAmtvFtXZzyMwhI+YVB50mdlCVdRJ2As8y0Ic1i/0QvO1M15MuUkgYP/U
 qvLs0R9OUtRZ3ejUbSMvlLCmu0TDGmX1l/tEI01ySylqmtUgNr/hbLptB
 WN40IwQO6w0hQ3n/4kS30Q9D7h1vMbyHhuHylwXkaYIPfaTB0CV5Tgg2O
 HEv8gicedIIdypPlbYwGKKUZew92Pu+k/HOjbOXMayfXJ+hXuBRsI8Bfj
 0olNDhs8PcMK73etuVYFsGXD0FqKAIiV2qWID+eycnwrUHPc7+77Vhk1v w==;
X-CSE-ConnectionGUID: uVLRjvj4Qx21t0WhMpbFuw==
X-CSE-MsgGUID: glm1UdN0RyK1HEFIp+D1PQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="28783589"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="28783589"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 13:39:55 -0700
X-CSE-ConnectionGUID: ni4ClECkQ+6rX99t9wJCiA==
X-CSE-MsgGUID: vFSffXeMSPmaerRcPjiQhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="85163750"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 13:39:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 13:39:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 13:39:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 13:39:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V/xucRBqW6r6PYIHoyvJfD8F7MRvMdLL8+g0JOyCS7Z5gu+3oZjPxMfiEUaOfsJ+a8g9Ly+vYW+5/4MfqvaEV0RS7my+3cBB0EbNg4QI//6oA7iv4aLTuy/14IBpyvAcpfCsVHgogdUkysi1vbDOjAv8wTlhC5oR6iIiT6uk/HfZ0tX4WZA2L+rw/XvHibeC+8+P10gLHrftmk3ElwVthUjhn/70uQUJCfK/MG5TCNyebpB9ZoJhL+qA5gaCykp+22arTVDjRd844k2p2PpvcbOqvJf55rn8vQ+9ZJpQxpM0w4ZUSMRcgWIfgkD2OsmSmSFmGNcUi7CcfJwxq473zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PDCKeOXAgmJtF7nLn+jlK1spsS3MMCZUtyX3FL1lbeU=;
 b=Z5yc1wAR1ONVKyvpBCs74IWfj7EF4uJKMoQCMigdPZL67WOuVYm1MiRFlr0Lg/325O6klaONY9l92d/q4TbE7xa2+DQ3HWAIfI+yqrFlpJBWaNKUac+GtE9MWCAAXSbtldg7J4xGLHrzGi/ZBHenaZHHUteYVJHEZq4XT7QsvOgr4QbwTwLaJy5OYpLu0M1otxiHNoRxIHDlp6YAdnGldGyHwcEhSBcWh8TY1rewQ8uD1Bd6TAXl1OzoWK/rMr3ALM4iEEra/whCcj5cMyjAmDjCPSP529D/Z5uonL67cIYK4vkY7cgxWU6bbC2C44eowbpQo/SxxvWoLEChlp5bMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MN0PR11MB6280.namprd11.prod.outlook.com (2603:10b6:208:3c0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Wed, 23 Oct
 2024 20:39:51 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 20:39:51 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241018204941.73473-13-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-13-matthew.s.atwood@intel.com>
Subject: Re: [PATCH 12/12] drm/i915/xe3lpd: Power request asserting/deasserting
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Clint Taylor <clinton.a.taylor@intel.com>
Date: Wed, 23 Oct 2024 17:39:45 -0300
Message-ID: <172971598550.4179.5229191852079806030@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0073.namprd04.prod.outlook.com
 (2603:10b6:303:6b::18) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MN0PR11MB6280:EE_
X-MS-Office365-Filtering-Correlation-Id: cda19231-0ebc-48e7-252f-08dcf3a2d7f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MXliUEJNY1NTWEphTkZaeTNabzFLUUdyUHVkejh3Ry9BNDlrcFduVFMraXQy?=
 =?utf-8?B?Z0YxQ0xwcmVWUVBRSnlBU0toQzN0NkZlUlZKZjhlRm1vSi94Q29GTEtxcmVW?=
 =?utf-8?B?eVZKS1U5bnBQVlFyc0hPNmt0U3dtTmdTNlFJb1U3QzFBQTkvWEFBaEpoUHhC?=
 =?utf-8?B?SGNLVm5JMVgrcDRtbnRzRTRxQTZHRHlUSUtEZlpJREZNRThXS1I4MldwcXJn?=
 =?utf-8?B?UFZkWG5YdUJ6bk90NmoxT3k0OWVuUUlQTVhkQ243Zk50ei9tYzNZOXQ0WHBD?=
 =?utf-8?B?RDJxamh6R2VxNXBRbjVyeVNKRGNlcFhSTEo3eHJmT292MklRbTV0UkhjbExX?=
 =?utf-8?B?RW44MElvcVB1T3M2MUplejZlWUlIMTNtdHVka0ZUdm1BSitPeHBQV2d5N1ps?=
 =?utf-8?B?ekdWd2R0UDZGZFNIVFlCQ1JaUGpXSWVadHJwU0tSdVNsQ3lrZS9uaGt5bjFX?=
 =?utf-8?B?cG5UdGc2cHhSSkNFVm1FeXZjM0JzVGZ0dlNEZDFSc053UXVHQ3B6Q2FSbGVj?=
 =?utf-8?B?MlBSZTcwUWM5aU40RVRMSWx3Z2tJeW9hY1ZPeUpFZFE3Q3BMVGpnaWhQRFVK?=
 =?utf-8?B?Z2E0VUdPbi9zSmJVbTdObVBzV3A3d1RkUUpteHAvUjJSZXlDSkFuellIN2ww?=
 =?utf-8?B?akxidDVsdk5qNUZoTENyV1dEM3RZR2R3ajFDUHFTOWRwb1NXWmVQZzNvaFFp?=
 =?utf-8?B?ZTdKb0o4LzNzdU9MYVhhK1NJWWdXVXliRURPYjlFa1VJMXB1RVFjdHpvZjcv?=
 =?utf-8?B?ZmM4VkRNU3VtdHJLeVBqZDJFTVZGN0JWUHRTM0JuZTRkVVRpOGhJck5EMHpC?=
 =?utf-8?B?MTBLWWV3cFBmQ3Z2S3pmZmsrS0pMbFloSFZoUU9MY1psL2xjMExqamo1ZFR6?=
 =?utf-8?B?czZnOFNhOWlSdDAvUUNGSG4vK0FRdUpQTWRoM080SFJwaUlXQ2tpSWwzYnJz?=
 =?utf-8?B?M2ZkWjJKMndRY2IrbUhZcFRjWHlucGxPRHhnY0FYTEJiYXN4aHdwODVuY3Iv?=
 =?utf-8?B?RmNpT2RycE82TWtaNzJuaEZhKzRpb0c4bEdRK1E3NEY5UVV4L1pGeDEwdG4y?=
 =?utf-8?B?S3pQRTV4ZkF1MjlKcmloeWdmL2RraGlNdnY2Wit1bDIyLzBlM3F5RmJ6MkxZ?=
 =?utf-8?B?NlI2dVJKU1I3RTdSNGovenpPWHN2V0NKaVgrbUNtK0VrWHAyb3ZxYnIzUzMr?=
 =?utf-8?B?VHBOVC9lSnBhUTVURlFkTGN1anNlQmg3QmIzaTByU2VpdGg0YWR4RFc4MzBr?=
 =?utf-8?B?NFpmRGZDSDBidkROcXBZWjB4RFcxcmRlbDNZR1BmcHpka0N1K2I1K2NKcSt5?=
 =?utf-8?B?alkyMFE5N2RockRZdHZzU1J2VDZwRXV6bGRxdUVCZHlSODhINUlXVU1BTGVs?=
 =?utf-8?B?TUthaTI5MEJvQ0l6b2RLM2ZtMldMT0dheGVoYkpVcVdCM21ZYjU2U2tnWlZO?=
 =?utf-8?B?Nm03NXdPdnhxNFBDTDkxRjVnTWFPU3piRC9uYTd3NTlSRldVanlINjZySml3?=
 =?utf-8?B?OHZaUnRaVHl0ZDFzZTQzelZqKzhteThqcFEzUUFJRGhDVWxRNnZlcS85WmRh?=
 =?utf-8?B?Y0tCNGNaQjFLR0dvalBic2RrcUZKaDVKbEZ2UmNDVDJCcFljMzFKMkpjS0U2?=
 =?utf-8?B?bDAxcklEay9NUHkzcEdieFY5bzNHTkZuNGN1Y0gyUmxRWjdQejlhRlUxcWlw?=
 =?utf-8?B?UFlUdHN1RE9teTkxdUlDR2xZOHNBOExWbTdtWVBhVWZ3S1N6N1NnRlppKzhm?=
 =?utf-8?Q?A6Psap6emhVuNnz9/I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzk2MWxkNU0xRmZQZWJXZEZCYzZaWVMwK1FsMnlsd2FSZnIwdzZEQnZ2a2Fr?=
 =?utf-8?B?WUtaL3p0SVdTdUpFa1VtcElsYTZsNDJ1YVJkUTlRTXEvcXg0dERpVWRESncw?=
 =?utf-8?B?QTQ4VGpwU1pIMXhYaGxzNjF5V0Q2b2VTUUJaQTVKVC9nWTkrVFpMS1ptSDNo?=
 =?utf-8?B?NklBMGZaUUxmSzM3NnlYUnJudmV2dWRpY1Y0eWRKazNtOUhnVDRxeFdadTZI?=
 =?utf-8?B?K1VzZVN4OUFYT2k5b3ZZcjA5SzFFSW82bGRXa2RQWnFudUhHa3ZVOWNiU1NK?=
 =?utf-8?B?eW9uRWJFQTM5bk16Y2NsVTNhUEh6TU9VdEh3QmxzTjFrU2Z4bUdTOFhyVkR2?=
 =?utf-8?B?SDBFVHVSSGROQnlHeEVZa0RSK1plejJleUd0dWVXeEFVZnRZdkgrUndncFBk?=
 =?utf-8?B?a1FsQjd0TTNzVWE3a0kwMUZQLys0OHIyOE90SVdwZTVPRCtMNnljd215UElo?=
 =?utf-8?B?UzdwMUxUdW1wS3dtcnhEMDhjUkhMOU1HblFuZklIeDNzeDZlOXJUR2JBcStw?=
 =?utf-8?B?Q2hNSFBzTDNzSDYwWEdGUUdjckZMWERienFPbDQ5ZXd0MmE0RlBSb2FnS21n?=
 =?utf-8?B?QmF3SFBHazV2U3ZxTjQzWEMxOWIzcnlOZzR4MXhoaHJPSG1kR1RwOGhkblY2?=
 =?utf-8?B?YmJOSVBhYmwrSlpnR0g0dmZ1RkRwbkd3MDZ2bGN0U2dHTjVMUVMySUlvSEMx?=
 =?utf-8?B?K1dmU2l1cVFyaEp4WTkzUWNUN3p0enh1TFVJTWU2bFFIZkZxbmhDWk1Cbjk4?=
 =?utf-8?B?L2dZc3hEMXdmYjI0QzN2bis3aHdiclBkbDNqSU11UTVRaVI3c0RuOHNxK2M2?=
 =?utf-8?B?VUg5K29lWVFqL20yN0NkUk9iWUdOajMreHF5VFVkWWVQOUxEV1pjRWxUaU9k?=
 =?utf-8?B?bDlVcmdJamN5eGw0UHB2NmJvT3dVbTAxZTcwa3RpNDJlTTJ2SHZRYWxDdE5h?=
 =?utf-8?B?MGRVNzZRZjVzNnVRRzVxOHNHT2tpN3FZbnZxTEFtTXNBM1pOYy9tMmM2YUVU?=
 =?utf-8?B?WVEwZnZaNzFEWmx0Q1dISDM5cTBsU3k5TllqZkd6UEUyL1N2aHdLMWdiWGFU?=
 =?utf-8?B?Q2RSVTBTMnl6M29JTzFDYW5ncWN2Y0hSb1VZakJoL2N1SzZBV2p4ektVZE5F?=
 =?utf-8?B?TkdVN2xhS0ZxNjJpTHMyQ3hiVkJzNSs3L2NrU3dnbDJBRkdjWURKZklCVHY3?=
 =?utf-8?B?d3lhY0tsQnkxZy9QclhSWDNKMWFBeTQ4YnMyNDlYOGxDcTRTYXdTSnJ5eFVJ?=
 =?utf-8?B?bXhoRytkZ1k5KzM4aFBOdGdsSXJuVzZ0WE0xcWJ4ZnorOFprSHhSTTA0RTZK?=
 =?utf-8?B?WEJHdUwvN2dqc3RhamhGL1dHZ2xmR0RLU2w3WDRFWms1dGlnTlNiL0g0eG9O?=
 =?utf-8?B?dzNXRmo4M2NmUUpBQjljZ1ZwYUpzRzJBQkpEelJEdUhHbHNFOU5KZnBkaC8z?=
 =?utf-8?B?SGIyVTRiWW5LTzdlNjVSSjJpVzBVQ1N4Yy9yYkZLTGxUUTFCMFdFS3VsQ1Jx?=
 =?utf-8?B?dmpPazVwOXdOdFgyb0docFZySlNqTnhQM0x3N0pzNnBET04xRWtRM1piUWRH?=
 =?utf-8?B?dFZXdktMTDY3WWRFNWEvK0VtZU8xZ2J4L2duSGNjUmxmQ2ZGRW40bStkMHFG?=
 =?utf-8?B?UlNDQXFDNXRFbmNYZzZFSTZMSlNQM01ucGJXUkJLUzc4eStyYnZxVEVKV3FR?=
 =?utf-8?B?NE1GbjZnbzBqY05hVnJ5RGZGVmVwZzU0YUdSQXF4R1gvdzlFYTA1NzF1dnMy?=
 =?utf-8?B?MlFxSXhROGFLZ2dpV3JtejNXWElhMVZWOHV2WEpnZDd3Y3dDMlk0VTFia1ZR?=
 =?utf-8?B?NStUcmxvV2dteHJqa0tUT0dDV0NQTWxiaFFvWFR2Z1ZsbmhjWWpNVjJOMiti?=
 =?utf-8?B?aUpLK3ZvaTNMMlFUZFVrSWQ0ZHN2Y0hUeUtnUEV2VmdGb1FZL1pXWnFlTWJ5?=
 =?utf-8?B?UWNwR1lteEpRWFBWVGMrY2FpRHZ6ZHJKYVlueVFhNHhsZGlOZGVvdXl0TUo3?=
 =?utf-8?B?bDdFdkJkd0d6bUpHZXcxTGQ1OE8xWkhzSmkyTHBBdy96TkpqQk9XM0JtSXN2?=
 =?utf-8?B?cDNpUTFkOVdsN0s4TWcrcElLdjhiVjNUTGZTTlBhd3RLVG1YMkd1d3FsWDk1?=
 =?utf-8?B?eEJPcFJmdGFyZGNEU2VXcmIyMzZURDlmbVZtSjM0eVN6T0hWd2g3cFViZnJJ?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cda19231-0ebc-48e7-252f-08dcf3a2d7f3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 20:39:51.6675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aA6mJ5KIDJX3j4KT7SqwN1lYGYu0nVKxQesBieAvfvO5hRgoVrhZ1iNfGPrzDdmhRmX4ODi+FMntw7HNaWQL5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6280
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

Quoting Matt Atwood (2024-10-18 17:49:41-03:00)
>From: Mika Kahola <mika.kahola@intel.com>
>
>There is a HW issue that arises when there are race conditions
>between TCSS entering/exiting TC7 or TC10 states while the
>driver is asserting/deasserting TCSS power request. As a
>workaround, Display driver will implement a mailbox sequence
>to ensure that the TCSS is in TC0 when TCSS power request is
>asserted/deasserted.
>
>The sequence is the following
>
>1. Read mailbox command status and wait until run/busy bit is
>   clear
>2. Write mailbox data value '1' for power request asserting
>   and '0' for power request deasserting
>3. Write mailbox command run/busy bit and command value with 0x1
>4. Read mailbox command and wait until run/busy bit is clear
>   before continuing power request.
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_tc.c | 40 +++++++++++++++++++++++++
> drivers/gpu/drm/i915/i915_reg.h         |  7 +++++
> 2 files changed, 47 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i91=
5/display/intel_tc.c
>index 6f2ee7dbc43b..7d9f87db381c 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -1013,6 +1013,39 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_p=
ort *tc, bool enabled)
>         return true;
> }
>=20
>+static bool xelpdp_tc_phy_wait_for_tcss_ready(struct drm_i915_private *i9=
15,

I think xelpdp_ is not right here as this does not apply to Xe_LPD+. I
think we could simply use the workaround lineage number for the name of
this function. Something like wa_14020908590().

>+                                              bool enable)
>+{
>+        if (DISPLAY_VER(i915) < 30)

The description of the internal ticket that resulted in this workaround
makes me wonder if this is actually an issue associated to the SoC
instead of display or PICA IP. However the ticket metadata indicates the
PICA IP as the one affected. It would be good to confirm the correct
association here.

In any case, this seems not really related to the display IP, so
checking DISPLAY_VER(i915) seems not very precise here.

If it turns out that this is a SoC-related issue, it would be better to
check if the platform is PTL.

Now, if this is indeed an issue associated to the PICA IP, then I see
the following alternatives:

 - add an earlier patch to detect the PICA IP and add that info to
   intel_display_runtime_info. Then, here we use that info in the
   condition for this workaround;

 - at least add a comment here that we are checking the display version
   because we do not have PICA IP detection in the driver yet. In this
   case.

I tend to think that checking version equality would make more sense
(assuming the issue would not be seen in a future platform).

>+                return true;
>+
>+        /* check if mailbox is running busy */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "timeout waiting for TCSS mailbox run/busy bi=
t to clear\n");
>+                return false;
>+        }
>+
>+        if (enable)
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
>+        else
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);
>+
>+        intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                       TCSS_DISP_MAILBOX_IN_CMD_DATA(1));

Nitpick: I would prefer a more explicit version of this. Something like:

    intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
                   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY |
                   TCSS_DISP_MAILBOX_IN_CMD_CMD(0x1));

With the current version, I had to go and check that
TCSS_DISP_MAILBOX_IN_CMD_DATA() also includes the run/busy bit.

>+
>+        /* wait to clear mailbox running busy bit before continuing */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "timeout waiting for TCSS mailbox run/busy bi=
t to clear\n");

I think would be good to have different timeout messages so that it is
easy to differentiate whether we timed out while waiting for our turn to
use the mailbox or while waiting for our command to be handled.

>+                return false;
>+        }
>+
>+        return true;
>+}
>+
> static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, b=
ool enable)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>@@ -1022,6 +1055,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struc=
t intel_tc_port *tc, bool ena
>=20
>         assert_tc_cold_blocked(tc);
>=20
>+        /*
>+         * Gfx driver workaround for PTL tcss_rxdetect_clkswb_req/ack han=
dshake
>+         * violation when pwwreq=3D 0->1 during TC7/10 entry
>+         */
>+        drm_WARN_ON(&i915->drm,
>+                    !xelpdp_tc_phy_wait_for_tcss_ready(i915, enable));
>+
>         val =3D intel_de_read(i915, reg);
>         if (enable)
>                 val |=3D XELPDP_TCSS_POWER_REQUEST;
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 2743a2dd0a3d..d2775a32bf18 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h

Maybe intel_cx0_phy_regs.h would be a better home for the mailbox
registers, since it is where XELPDP_PORT_BUF_CTL1 and
XELPDP_TCSS_POWER_{REQUEST,STATE} are defined?

Not the perfect place, but at least we would not add new definitions to
i915_reg.h and add to the work of separating display code from i915.

>@@ -4539,6 +4539,13 @@ enum skl_power_gate {
> #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT        REG_BIT(1)
> #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT        REG_BIT(0)
>=20
>+#define TCSS_DISP_MAILBOX_IN_CMD                _MMIO(0x161300)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY        REG_BIT(31)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK        REG_GENMASK(7, 0)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(x)        TCSS_DISP_MAILBOX_IN_CM=
D_RUN_BUSY | \
>+                                                REG_FIELD_PREP(TCSS_DISP_=
MAILBOX_IN_CMD_CMD_MASK, (x))

Missing a blank line here.

--
Gustavo Sousa

>+#define TCSS_DISP_MAILBOX_IN_DATA                _MMIO(0x161304)
>+
> #define PRIMARY_SPI_TRIGGER                        _MMIO(0x102040)
> #define PRIMARY_SPI_ADDRESS                        _MMIO(0x102080)
> #define PRIMARY_SPI_REGIONID                        _MMIO(0x102084)
>--=20
>2.45.0
>
