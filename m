Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F204CBDFEBA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 19:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6ACE10E8A2;
	Wed, 15 Oct 2025 17:43:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WCYXckcc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9134A10E8A2;
 Wed, 15 Oct 2025 17:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760550238; x=1792086238;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iAO0bMhuLxmSXlPWvWvBrnCGId83N3LKUSKlXYYeFyM=;
 b=WCYXckcc5A9MBbLWe2u+RMhMb0aJqdwqHTKDJZgoOVnbkRt+jyMRnvMr
 JfyXV76WaaNzWzIr8kaJVdytzRUp7pmosejkzDaF5HzzaOt6IvzS1VwKR
 ziUQ52so4Xcn+iL8o6PlPLYA/ySgvpHhbIAOb8WjeRR2oXQb0fBXi8Gub
 2XdXQrkOvVaAqi/wXSR1/LqcMJP4o0tpz0RscXVtjIQe7FHG3eOukI9F0
 AjuCwKBEfZGuhQJPj0B7eDRS4XmUhk9nJOQ74xGiQ8J/Ca7GplXQ6DaiN
 7eMGSUFVzpovKUUOoxhDLasJs2CpnFVVKGlWoVIXJ3qiC0HtmjKvjSmOz w==;
X-CSE-ConnectionGUID: tIuGdYssSoms9kaykchn3Q==
X-CSE-MsgGUID: HnpwNi2AQHWEDdthqfnCIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="50301188"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="50301188"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:43:57 -0700
X-CSE-ConnectionGUID: pJyVq8CLQeyczovG5Jtpcw==
X-CSE-MsgGUID: vGL30zhySQWM+cIMvWaqew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205936725"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:43:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:43:56 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 10:43:56 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.64) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:43:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tkMyXBCpYu54WVH1kuoXVXMHAShd5thAGSMHloPZOqZy7+OyZeUjFPWsBVPL7h6UEMBvhvAboBPVX49ijfRZ6fecsrbfCbPNWLEWeNZOPf4tujbQrOfEJCcR2g7lUYfrhUU08ALv4jjlBE2xyce8mDGt71Tkn3I18sbEQqzdBBpJFlU+ivuHyN3/EQTlGLO5mhHesRfUmmq6d4LKjf8e9a7fhdu/U+l5gTQq2NyRja2vz58epAzrRknx8IcMGsJYMDKUVw/6n3k7yHaoHJQAocupNl03iULxiI06zZAdkxUXJzWlJRmPcgPSURNf2hKBWsmQakXy80IXzPhtKgN+4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=duzUrC6Rv+FUqxRgYiF/Obvw/vhEnSE7EV3Pciufjro=;
 b=zOYPdi+2iBp4alS46jcEd+Z0o8nWXXjxCV6u1CgtrGnOWn5adybPYBzNj9QyRO/vQ55QUtq2Ke7ttNvull1VmhvckvuXC4J8cskNErjZgE8Soq1WgZWS/amvf3DUeu2WMU3IQeyc77MrNo1IaDFjM2wI5xrph6/oxWwLJtYeOgOE+J94toiJzQ4017gD7wJtVqbCCOZ4gRES83UjDmvNRuL7jYguTHArgVM/39nAL8Dku+nPnIsEOwsWEvSWkz3TOo6zY703vdH4BgOU6/9r7+zeN70TOZi+R5f8YnevUVJ8QsQihcPW713pzd96l2bVjz1+XXA/wEq4NP3gu/u2og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by CH3PR11MB7819.namprd11.prod.outlook.com
 (2603:10b6:610:125::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 17:43:54 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 17:43:54 +0000
Date: Wed, 15 Oct 2025 10:43:48 -0700
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
Subject: Re: [PATCH 16/32] drm/i915/xe3p_lpd: Add CDCLK table
Message-ID: <aO_dVHO48Jup9vTi@msatwood-mobl>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-16-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-16-d2d1e26520aa@intel.com>
X-ClientProxiedBy: MW4PR04CA0232.namprd04.prod.outlook.com
 (2603:10b6:303:87::27) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|CH3PR11MB7819:EE_
X-MS-Office365-Filtering-Correlation-Id: 2699818d-56a4-4225-0d50-08de0c12691d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZUcxMS9yZDlOZ3M0QUMyYnJBL1dPVjhSenZpRDRJNW90aXlYRmtqWDB1bnlR?=
 =?utf-8?B?QVVKcjBLSExSZnZ6VTg4cThVUEs2K040WUFlNzYzdDJCTW1NSkI2OVVUT3M4?=
 =?utf-8?B?ck93MFBmKzY5cTRKT3g5a1RBc1dObFNLY3ZVdjNzRDVkM3lyemxGdkFOOWNC?=
 =?utf-8?B?YmJsSVBZWmc5bjV0VkxZYmJqdkNjNHNBdFg0eUZUblFrdkkxOEovZWliR0Y2?=
 =?utf-8?B?bmE1eVNLdXE1Wi9PS3NGb0VRcitMT3hnV08zaDdMQk1rS3gzR09qcUFRdVFW?=
 =?utf-8?B?eHJGMlczWThCNUM2R05iYWN0RDhLUzJmM2NIbTJPRHlzT3ZyQ0RVaWE5SG5M?=
 =?utf-8?B?eVg3d2hLTUZhZWxONGFXYldwWlhQakFTRFZRK1phWmNza284VkwyVGRWU2cv?=
 =?utf-8?B?UzA2U0g0YXRKRjZsUEFYVk51L1hDWHczb3laeTB3Yk1UVFdsbWhId3ZRZkI4?=
 =?utf-8?B?U0QzVzNNMXludGNPRkVLNG8wL1ViVXI3NExnUmw1aTVXMzhjTUcyMFczREVh?=
 =?utf-8?B?R0N2K0cycmFtMVRzdjRoc0dFdjlFSktJSGZDL0lLcGpUZXArRy9uTTJaZkVQ?=
 =?utf-8?B?K00xUFhOKzlGNlg1djUzZ2FCSFoyYmw2Qzg2OTR2bjZ5SnhrbDMwM3Fzdmww?=
 =?utf-8?B?TXY3MzR4eHVEdDZHQVVoRU53L0FOeEV4TmpIQTNtalJqMzNUWFlOZzlWTXFs?=
 =?utf-8?B?UDU0NnR4YnZLT29yNkFobWZpYk1MQ1RJenBWMjJTMXhoUGQ3L29GeWU4bng2?=
 =?utf-8?B?WnA2WDZMTjk0UjhQdThHc0tqQjJiOWZNTlM5R2ZoSFlyZXJKckRlL1J6eUNa?=
 =?utf-8?B?RHhoZHZ2dkI4emR5clJjVTFjWjA4UVpwMFFreGl6V2lCRTIwandWL0NTczZl?=
 =?utf-8?B?MG96eUdiWWkzaFR6MGVEOEZBRXZnV0NYRGRmbzRPTWg3OGxUeFJDRWxVbDVN?=
 =?utf-8?B?bk9LY2R6Unk1RDNoT1ZCUlhkUjR6bTVEWDRUUGVTZW1ESjRWLzJLT2RrZm41?=
 =?utf-8?B?SFBYYkpocHlaTFhiNlVVcmNaRDVndHhvODJUQVpxdGRGTFNZZGlaSVhHMExr?=
 =?utf-8?B?VzlnaURJd28zQjFwRklsRy9kRkxZVjFhWkM5dTQyY0RIa3NBKzlLOWFPNGhr?=
 =?utf-8?B?MjZSQ3hpbHhJTHIrOEVGUUhSTUp0cmhLU3QrcFRkYzZ1WW02VDhsSkpUNmRa?=
 =?utf-8?B?bGZGY2s0SWs0M09udXkyK3BQMVpuQ0ZiR1N5VTM0Y0hjSjRuL1ZaMW9lNS9B?=
 =?utf-8?B?UGFrRllPdFpHQ0lxY1g2WXpyUjR4UGhmMkt3S1ZRR01WVnIyOTNvdEZZek51?=
 =?utf-8?B?RFRZYzcyZDJMT2lUL0RwS2RzSFZ4dks2RFJFTUFiQ0Rycmk4Ym5CeXhobVgv?=
 =?utf-8?B?RUVoUnRhVHNNSjhPd1NFcnNpejFKM3AydmkyT1Erd2RVaGpiOS9JaDdOWmdR?=
 =?utf-8?B?ZDE1bFJFVmpyYXlKZFRUdzhlNTV5czdoUVhEZjZvbVFCWk55cjdXMDV4cjZM?=
 =?utf-8?B?ZE1vY0xsbUlDd3dxYklMbjRHcmpRMjdGYkhZWStLZzZzejd3ajVxZm0rQ0Mx?=
 =?utf-8?B?QkdVUVdoM0JTODdBMHE5OTg4d05aZEUxQmtySklsaUhQWExmWFZYZmhhRmZU?=
 =?utf-8?B?UXpwRU5pQS9vNnpjc01mMXJId0pSUENGTmRtQWFwdHRHYTZvQzlmZnFGSEVC?=
 =?utf-8?B?T3EvblFmb0w5ampqd1VUTmJNVU9QYWJPN2pWWEExdEFkeEVNaU9TdHhhOW5n?=
 =?utf-8?B?QUE3eXd2bTB3ZEE4ZW5CM3ZVb2NvdWlvcTcvbHNja2k1emp2WkNtTzJySzQ4?=
 =?utf-8?B?Z1pZbXFPMkRCNE9ERkFxOVRYc0xnZ3l6NmJ3WHFxQ3VYc2hnRUF3OUhna0tx?=
 =?utf-8?B?a2E4SGxaTFRoSVg4elVCQ2xpSk9ZZU9zZ2xIZFh6Q0lVdzNPa2MvYXAyWTE4?=
 =?utf-8?Q?LvK8zLuJnRkg7rW63AVzW1CT37VKn5oJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWdkalFVNkxoV0NvaE1zMzEweGJreVhJcTBnMEJwY2xyVlZFanpzeFFNOThT?=
 =?utf-8?B?WDJXUUgyNDJ2b3pRakVmNEx1a2ZSZFJsNk9Kei94b0dCRVV5eHc0U043dVNs?=
 =?utf-8?B?TGd0TTdUTUlqcXgrdjFaQjR2emNONkMvdjBmTmZQb3p5djBONnNJMThjZmpK?=
 =?utf-8?B?dlNJWGVFcW9LT3gwblVnSTUvcnpUekpRT2E5dy9UTTBJUlN0UktHSzBpWUMr?=
 =?utf-8?B?Zm1XeC92MExWOUVTUjZLSm5XMmx1bGlaK21EVUlGQ01uL05nd2F5QWtDaGdp?=
 =?utf-8?B?RWd2QytQWVJEUENINlJtY3Zpai91T1lkWTR0emREaVIwcWJMS3JqdkdaSlpH?=
 =?utf-8?B?TXZ1bC9PMmtrZzRkNUs4dHQ2WjRKSzlySGVaaXhURklsZDRLN1RWVHp2YnRY?=
 =?utf-8?B?U1N0V3B5ZlNaMWxLTm1xYkdYdWthUWQ1YitmRlEyYVZyeHZKcFJBTTVYbFYr?=
 =?utf-8?B?QVcrL2RyK1dwQnNEWUtEMENFTy9RZ1N1V1dicTRkMytxbnlrVCtBUVFMRzdh?=
 =?utf-8?B?YXFoUW9EcVhLeWM4MXJUUi9YR3lFMnArWTVjZWJkaXVmYU1waWF6aEhGM21h?=
 =?utf-8?B?L0pJMndCRDkwRmRPV29Tb2RPdU5NVW5rcHZjVVVRN3lnM1FQVENKMUtGUXBS?=
 =?utf-8?B?QzNCbDE2RDRSTW5tVmh3RjU0aitqY3NFTVRYckFCTUFpQ25SU3Q4endWamk3?=
 =?utf-8?B?aWJHcXdFcElxNThlU3hTWjRoYVJmMGxBYll5YlV3VXVxcEI2S3ZZUXRlZ3FS?=
 =?utf-8?B?bmJ0ZnF6V2FvUWlrbTRwWSs4S24vN2JDRGt0WTA4c3NMbWFzNlZDRXU5UzlY?=
 =?utf-8?B?UFRmcW1oK0Fwck5vRUVRQmJoRWZteUFoUWNMY2piK0xlcmlVd2sxUzRGU3VF?=
 =?utf-8?B?U2IvSFh0RVQyU1JjcEd2dEhYcEZGaG9pM3JwWjUwT0hNMFpUOGJ2c1lyb0lT?=
 =?utf-8?B?NEwxcU9KMVZpUXE1Snp4d1hVTk41aytuQ0M3eU5tMktmSmt0em1CdEFRTkNM?=
 =?utf-8?B?azJUNlJsMEFidk5sYWdVT2RwU2RxSVIveEUvbVdaWmoxcnpHVnlXRk8yNERV?=
 =?utf-8?B?YTdRRjhKS2dYZVN0cnJrRlNjczkySjYvSkJ4Tjl2QkN5TGppOUhOVHVGdmhY?=
 =?utf-8?B?ZTBqakRLR3J5RUc4M2NwakFwdVIyWWVnbldJc1ZhMXZTWWc2T2dqZHVGSzRl?=
 =?utf-8?B?aVR0NDl3anNXYnUxc3JJK3pQcFVpUVJQL0JTeXBZZzJCV2hkWHNxR2tYdkxq?=
 =?utf-8?B?VXRsejNuc08yaHQ4elllU0dxYkNhZlB1bHBlVEUrSXpXUkRlc3Rsb2xRN2ZC?=
 =?utf-8?B?QkZEcU9iMG1SUk45Z3dHUnJrdHhSU3JMa2RZQkJwKzFvRTBxNExaRS9uYmdl?=
 =?utf-8?B?Wk1KMk9TdzE5aWxHWnZyRlFxWCtPYXZoZE1tRjdLRVFLQWoxUFNBR0k2U2dp?=
 =?utf-8?B?WkFsdjRnMHMzZnV0VThJaU9zcGFBaVY5RlhZbTZyaFpXeEhsWG42ZUhlY0R0?=
 =?utf-8?B?TnNmdmJLZ0MxdHhZYkN6WFB0U2E1SVRTNWRsSDYzazY5cWJSSUhiV3N0bmRl?=
 =?utf-8?B?SGRUMWlvRGlyUmV3dnh4R2FZVW1EZC9EaTRkZkhNSXBnTlFUUlF3UkNpWlU4?=
 =?utf-8?B?ZWRwOUNZK2lQL3hSeXV2TTk2ejFPR0hwTjZvVmdsU1d0U3huY1hxRC9INGxW?=
 =?utf-8?B?UzJqeXVaTXBEV2NFL0M4SXIrbnNWQjZuK1lGVTZxNmxCZVdaMldZamo5R0wr?=
 =?utf-8?B?VjNsYUpuVko1VkZBTlc5TzdFcmJLUGswdXhzYU9NTW5qLzBSdExjbnByUXE5?=
 =?utf-8?B?Mjh5N25lVTBabmtERnJrdUhSTVhRaXFMNFlZY05KbHdHcTlMZWIyQ3dMbEQy?=
 =?utf-8?B?RlJPQ1N6L0FLTGFtN0x4b1UxMTNGQjl5Q2ZJSVpOcXUwNU1nUVlEUUNIRW1u?=
 =?utf-8?B?bk9wUS9yVTdUMDVmWjVSWE1HZWpiSldJaWRsV2ZacjV0elhjS2pBODZQSG56?=
 =?utf-8?B?Z3doSmhWaE8wNWdlMU1BcHRYWUVocnVhc09jL2tadFpRQUJKSFpPZ2Z6REVO?=
 =?utf-8?B?bmhOTGg3Z1hTQjJiVXZnZTA3MU5IVUtNbFVUenI4Y3hHU2kyblNmTkthaXI0?=
 =?utf-8?B?b3VSMHVPUnNDdkVYalhYMzFTMzRBTXEvQ3JrSlJkUFBRS1VKaFlPWVQwUEJQ?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2699818d-56a4-4225-0d50-08de0c12691d
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 17:43:54.7448 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YzBhljQ/vxpC8G26HZ4+ynnG6anyNLU+BoGUFP8FXiSAyQfh5OKSIkJQ6FkflBWiqD5GPSBEEPUgxsAeYMi96+Az5/gdjsKYliM5M2lLDK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7819
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

On Wed, Oct 15, 2025 at 12:15:16AM -0300, Gustavo Sousa wrote:
> Add CDCLK table for Xe3p_LPD.
> 
> Just as with Xe3_LPD, we don't need to send voltage index info in the
> PMDemand message, so we are able to re-use xe3lpd_cdclk_funcs.
> 
> With the new CDCLK table, we also need to update the maximum CDCLK value
> returned by intel_update_max_cdclk().
> 
> Bspec: 68861, 68863
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 44 ++++++++++++++++++++++++++++--
>  1 file changed, 42 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index f2e092f89ddd..ffd8cab2d565 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1534,6 +1534,41 @@ static const struct intel_cdclk_vals xe3lpd_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals xe3p_lpd_cdclk_table[] = {
> +	{ .refclk = 38400, .cdclk = 151200, .ratio = 21, .waveform = 0xa4a4 },
> +	{ .refclk = 38400, .cdclk = 176400, .ratio = 21, .waveform = 0xaa54 },
> +	{ .refclk = 38400, .cdclk = 201600, .ratio = 21, .waveform = 0xaaaa },
> +	{ .refclk = 38400, .cdclk = 226800, .ratio = 21, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 252000, .ratio = 21, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 277200, .ratio = 21, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 302400, .ratio = 21, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 327600, .ratio = 21, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 352800, .ratio = 21, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 378000, .ratio = 21, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 403200, .ratio = 21, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 422400, .ratio = 22, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 441600, .ratio = 23, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 460800, .ratio = 24, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 499200, .ratio = 26, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 518400, .ratio = 27, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 537600, .ratio = 28, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 576000, .ratio = 30, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 595200, .ratio = 31, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 614400, .ratio = 32, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 633600, .ratio = 33, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 672000, .ratio = 35, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 691200, .ratio = 36, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 710400, .ratio = 37, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 729600, .ratio = 38, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 748800, .ratio = 39, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 768000, .ratio = 40, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 787200, .ratio = 41, .waveform = 0xffff },
> +	{}
> +};
> +
>  static const int cdclk_squash_len = 16;
>  
>  static int cdclk_squash_divider(u16 waveform)
> @@ -3555,7 +3590,9 @@ static int intel_compute_max_dotclk(struct intel_display *display)
>   */
>  void intel_update_max_cdclk(struct intel_display *display)
>  {
> -	if (DISPLAY_VERx100(display) >= 3002) {
> +	if (DISPLAY_VER(display) >= 35) {
> +		display->cdclk.max_cdclk_freq = 787200;
> +	} else if (DISPLAY_VERx100(display) >= 3002) {
>  		display->cdclk.max_cdclk_freq = 480000;
>  	} else if (DISPLAY_VER(display) >= 30) {
>  		display->cdclk.max_cdclk_freq = 691200;
> @@ -3906,7 +3943,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
>   */
>  void intel_init_cdclk_hooks(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(display) >= 30) {
> +	if (DISPLAY_VER(display) >= 35) {
> +		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
> +		display->cdclk.table = xe3p_lpd_cdclk_table;
> +	} else if (DISPLAY_VER(display) >= 30) {
>  		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
>  		display->cdclk.table = xe3lpd_cdclk_table;
>  	} else if (DISPLAY_VER(display) >= 20) {
> 
> -- 
> 2.51.0
> 
