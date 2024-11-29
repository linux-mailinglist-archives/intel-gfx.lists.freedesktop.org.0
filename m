Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB8F9DBEBB
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 03:32:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D48E10E44A;
	Fri, 29 Nov 2024 02:32:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mYx1KU47";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC21B10E44A
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2024 02:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732847554; x=1764383554;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zZu7Wff5YrFxmm+ryqpFVRW49uT8+7r9cENLDxECkvg=;
 b=mYx1KU47Ed7Fn9ulJZEmWXoVQJtYjUzsPPMnd2GAigwsCl4w7mZcdvtU
 4pue7tmQemBHpeqtKcvJgKo6fNFtJ9t/mC+H6C//2mXuiMvzlADYOIjAF
 eBVUJFbYMxe7rTVeszWSydXJPGMqVQM3H2loH4psGpq8abmv+JS0ZgXTY
 iG9k4tSpGZcOjlyiWNCQ/bTmClbQZ7CFuXlh5JVXaZ6bS9SmvShVlvK2G
 3rxlfwNPUemn4LnF7wBvZ+47b7NBwS7O0vehGEoWdPAyrCPCqU7rxXkEn
 Dgkjq4zRe9T+8QAf4e0oYB+A7vTecTWJS5LRf72rE58x3vZfKKpBSrQp9 Q==;
X-CSE-ConnectionGUID: 48/xXV6jRFu5cid2s/5rgw==
X-CSE-MsgGUID: SfZgUYCYR52l2mimlTuHfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="33014417"
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="33014417"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 18:32:34 -0800
X-CSE-ConnectionGUID: zx41Bk2hQz67WzvGAmYfpg==
X-CSE-MsgGUID: ebY5T06WSEuoX6+aq6IVMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="92473113"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2024 18:32:33 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 28 Nov 2024 18:32:32 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 28 Nov 2024 18:32:32 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 28 Nov 2024 18:32:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MiucYXMTnZO68xyUskvptAORs8nhQKi8BGICwH2VHAYqOiv2MKsefGm+/coqWWux3/q3P1zrBpGYvRP/oYlm5i9OBSt7PnZPT0Hrt95i635LJerrvp/GNISmPS7+yqNzrIk6v4ax+GzrdsBHMJuX2eprmfpnc7B5mA4r0Z0zMiBpkzSaswvqeuD1a0dLnMfcB3lwnrjKSEOY0SNgTyyYoIITWHvuVTUtBliaPExGHZlxZzObQwMKgp+pT3593iPbs6h8h98t6ERFsURZf//g/7ANGDTiSTkafx9EQHVL1NsyocWh8Q3GKgv8ZhXjsNaPDDHeHmT2ZL7WWX+l/IYC/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/hLsoAlwcIO6BMTMVq1P/Nx5A2AiJIuXGHaAX+nadeM=;
 b=XdX5fgz0srXge36SRjsWeaSPVCYE06Mow333cVKZTCinpDEcmP6U3ihD8xJ1zr1y4mlarOuirP/GfGe/ekjb4FO3d5cCMI6WcurCXH96wlp1Xe4RSKsa8r8FAeBWoNiLjpXmCdKO8DEZExvpqrNjr1NDxoUOeIqmm7DlxE4sFVbIfVr5JIIb5o/bpGGi1XlYim/n1Hoh8Z45xYTQj+rKtLo9jgks3E5fi/KWrdGJ26M82mvOyHEpQDuT/cR29PDN2dvO7lUf+m9YfNCoTHDzJwkQ23dy3JfBxPuoTne/NRnLmpLhmahOsuMIPFSO0RrWame4ULGULIkHDwIqR20GQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by MN2PR11MB4616.namprd11.prod.outlook.com (2603:10b6:208:26f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.15; Fri, 29 Nov
 2024 02:32:30 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%4]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 02:32:30 +0000
Message-ID: <c74dd6ad-e9b4-41c7-a93f-c08370360fd3@intel.com>
Date: Thu, 28 Nov 2024 18:32:28 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] drm/i915: Fix NULL pointer dereference in
 capture_engine
To: Eugene Kobyak <eugene.kobyak@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>, <jani.nikula@linux.intel.com>
References: <sspixcrejd5nbhijuo7o3z5agbgyq637wc7gph7ajrs3lnls6g@5ljanfmvccyf>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <sspixcrejd5nbhijuo7o3z5agbgyq637wc7gph7ajrs3lnls6g@5ljanfmvccyf>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0167.namprd03.prod.outlook.com
 (2603:10b6:303:8d::22) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|MN2PR11MB4616:EE_
X-MS-Office365-Filtering-Correlation-Id: 47c430f3-a082-49a2-d21d-08dd101e1266
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dXVxSFpDSXRQb2tWbzhjbW5CUFRHTVZHRzJNa0R1UlJ0THp0cGk0Q2JtRTZB?=
 =?utf-8?B?YWdEMWs2UEtKV2RQWmYzeVlRcmwzSC84NlFaMzl5ejQ4OUM5a3hGZEpGa3Ro?=
 =?utf-8?B?ekRoSnpOVDVESDZGVC9QaUdYQjZmT08yMnJOdkRkUEhkQkI0OFVETGpSdzZF?=
 =?utf-8?B?TU4zcjEwYzFncllHWlFldVBQKzVaZ3F1UkJyY1dUUDZYbDk3ZHFGdGcrYnFX?=
 =?utf-8?B?Z2trak91YWlsVXEyK2dWNjk0emN5Z2dWcTJXMDlSaUgwZlQ0eG54UFYyZi94?=
 =?utf-8?B?eVdYZEhQa1dJSWQ3NjJ0UFNYM1JWeFZEVkFqNmhCV1U0RHBML2ZzK3JZelNE?=
 =?utf-8?B?Z0RRVW5Mck9sL0x3QkhHV0RQTWNMNFp1NXNLWFlqTUZMOU5hbXF5VE40QmdD?=
 =?utf-8?B?c0lOWHRQT3d1S1NJS2NVckxuOXR6eXcvRFhYaCtrWlUybDJwZmtQRzdXK1V5?=
 =?utf-8?B?WlRQOTE5SjgxZk9CMjJTVkovVkwxMVVlTkFZbVRvN1kzNlRESGU5TGFEUm01?=
 =?utf-8?B?dlgrVjZRSS9oZk1hQ2V0NTNYV0xYSmJvUDl2TUR5RitpSDFrQllLQ3FKZFFw?=
 =?utf-8?B?ZkN0b3lJb3NZelhzRU5NNGN0dlJNb0cxVlljVEdxOFNSNkxKd2ZPQ0FpUlMz?=
 =?utf-8?B?Z0pnL3g0THkwWlhqTW1hWkZpcFhyWU1HbExnRzJuaEJZYThtckw1b2s2Mk4v?=
 =?utf-8?B?WFhMY1RaNStaZEx4QmpleHFqZ3IrZFYzUnRzMm9zT3U4MzE1cTBHYlJqRURC?=
 =?utf-8?B?TjZFYzdBanJ3eXRMMW1wd1NRbk8wcm5JcWcyajM2a2NseG8vaHA3RVdXcE1o?=
 =?utf-8?B?ajB1RTl6QmU4ZUx4bGdyUDV3SW5vZUpqRmUvWWd2cFRsK01PWm9tSUlUMW1j?=
 =?utf-8?B?TkJRbU15ZEJQdGRBR1ViNm95U0dhMUFvVHhxZUNlL3JjWERIUXJrUVZMK3BP?=
 =?utf-8?B?NTJOSVRmL09vMEFweVlsNnZVTlJ2RE1md3cwbkhldWN2RlJzcGZzY25CNHFi?=
 =?utf-8?B?U1NlUUEyYURFdjZJSlkzaFAyOXR6cEpqb1A0ZXdjSnQzWGlrMmVIZjZ5bjdK?=
 =?utf-8?B?UHB0bU0yQnhoTThPRVg0cjJ0U2FhdWpKSysrZGlQWVBjSGdhQVlWQmNRSytu?=
 =?utf-8?B?UFNWeGIrMGZtV3BCM2tSSWJzVkVFSHFSNDFDb0VtcGhzV3krZXROWjJTUndS?=
 =?utf-8?B?aWxUUSttM29qdG1NRDZMcVh4UnNwSVJsbmxzTDlPMC9RTnppb2cwS0h1MUIx?=
 =?utf-8?B?YzBvMGxNUnVFeVppSDdxVUlRQVhhTko4OXV2TGYydXBnTXlCckVwcDdnZkVr?=
 =?utf-8?B?dkYwcnc3cUFvTm4vYW1jWEhnMllvTlZXT1pjVXJKMXFEZHA5U3Q2a1dqbWo2?=
 =?utf-8?B?eEhJL2NQdUtwY3pUM1dtRXFOV243TVlNRTJGRS9xeFNIQklvVVVVVVhHQTFy?=
 =?utf-8?B?MUFqM0Fwekh3dzZXS2NseVJWSUl3NHBLRmdlbll6YjZ1Rm40emU5YzJ0bm9z?=
 =?utf-8?B?OGVNRWtLc0VKbHJTT2x3ODViR29iV1dOcXp5VHZ1M1FzZEZEVU41Q0QwdjNO?=
 =?utf-8?B?K1liZmhwbHo5WGxQUy96K3F5OUI1ZUZZdXU4Y0RTVngzSVh2NlVwZ1cveVBU?=
 =?utf-8?B?Qmlzb2FmNEtBMThGRW1aSnBzTEVUZUdLaDJVZUx2bkhqR0VWUDlaT0xVUmo0?=
 =?utf-8?B?UzdkdWNTWHRpTXJ5akQ2N0ZBc2c2amtrdFo5M3BIdTlvamJEV1JScmM4WE13?=
 =?utf-8?Q?Ku4b00njLARzUjYD7A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVBVRi94ZE41L0dkTU50M2EzT2ltUTlhU1FHTU1hcDBXZUNTWFh3MDJzd1pM?=
 =?utf-8?B?RlNYTTRleVlPbEZyaGg4NEMvbWt2RldPOFJTQXY5VGlUQUtYUEJBSTBzb044?=
 =?utf-8?B?RWNBbG1aVkdYQnJyU2dlQWZXaDVmLzlmNDBJVVV3TWZ2MHBoME0vbkNVT25i?=
 =?utf-8?B?Wm9yQ0JMSVNhZmdMYmg5MEZ2NHlLSWkyeGpJTm1NSTZJNjdmRkJwNmYrd0Fz?=
 =?utf-8?B?dzI2MkVCUHZUVTc0RlIwTjlKcjhHc1lwRHZRZDh2WE1pa1JmS1lxWXA0bEtM?=
 =?utf-8?B?Z1A0WXVmNm5DNjdYRWs0VHVkQzF1TmlwbzNWYVh2T1lwMWo5ZE5DdVhYN042?=
 =?utf-8?B?WmJVdVZYdEdCYjNCTnZselk4SEsvaThPSWpUQS9IenJka3VDYVZ2L1p0RmRt?=
 =?utf-8?B?ekNiQzFqWjNsSW0wMVdhY3VVUFk2eTJJRjlxTUxpQ2tFajRPcWQ1eVhubDYw?=
 =?utf-8?B?cWZ0aXB4ZkpmWFRxV1pYeFh5cVRrNElpVVNYYWZpd2lqUlRtZWZ0QWxadkdi?=
 =?utf-8?B?NkhXNHNmZXZ1SERKdjJMTmJhK0NucytQZG5lQU5udDdnRmZTVTNQWWh5L1dE?=
 =?utf-8?B?NytKMURkdU5IOVFaaGMxSVZHRXJwREx6djdZS3JxZHUyaTVoRERTSDdxU1JM?=
 =?utf-8?B?ekZ1Y0N3aDdtSGUwYVZ1cElwN0lmd1M3SVZjRDZ6OXBSUzZWcU4vZ09QSzdr?=
 =?utf-8?B?STNyeFJhaHBnSWJvOHRnN1lqai9NYkxYUTBLYk50ckRrdlE3VkJaVDBnTjNG?=
 =?utf-8?B?NnY3MWRZTjZjbHhWd0lWcGRzR2NYR05DNURCYXlFK2MzdTFFVktsVURFVEZI?=
 =?utf-8?B?Yk8xOUtNUGVMT1UrQTd2Y3hoT2YybDNCbVIyWW1HL0pORUdxam5kRzIyUzFU?=
 =?utf-8?B?Q1VRRzhzTFRZU0dyOTY2WDE0c3VaNndPUzQ5bFJIVWQ1ODBTUlNYeStIRTZM?=
 =?utf-8?B?R2NHdCtiOHlQSy9sT09wN0txZXpnOFhaZkFsZzRYZ3dHVHFLM0tlOGdiYTFO?=
 =?utf-8?B?bHJBTEVmU3ordHpuOUUxT1ZtaFQxU0ZKekhOOFZDdUptaHZZUGd6VkdPUlNr?=
 =?utf-8?B?aDc3R21PVVJML3dmbUgrQW9tRHI5UWN6YTJ0OHcvc2VzVGhJaGwwc3dLZHJj?=
 =?utf-8?B?WUhZaFJMOE9tUVdqWUtRM0o3NVdoR0FJdTFPNXk4dDBQVFVBNWJsSktSSzBH?=
 =?utf-8?B?OVhIMXpOSDRyL1JCQzJZVjVKNktDemowUHhITWR2UGVISFpnbWhkSVZsTFJV?=
 =?utf-8?B?WkhveDRoNi9HdXRRZ3pyZnJWWXA0Wkp3MWdtYjlCb3BtSjl3TVByN0tDTVZR?=
 =?utf-8?B?R1ZocDZvQVFBZEFiRG02VXhQM0lDYXJvYXRlRHR0OE1DWFFWMDBtY3F6MXhV?=
 =?utf-8?B?dnUzOThwRUovWHE1bzhjN1BSTUJBVDlEcUYzaVliOGs1QXQ1TVN5UjloY2Jp?=
 =?utf-8?B?aGFvZUJuWnQ1WXliSGpXVmZoQzE5dGxnLzZPaEt1bHkvVzAzdjlseEtKQk9J?=
 =?utf-8?B?VEN0RFpaYXU1ZTdXN0N4RUliVmRZK1E5VjZuQloyMDJFeTZ6QktpWU9Ic2NE?=
 =?utf-8?B?SDZMS0w3WG05NW5SYUI2TmI1WDU4aU52dGJvU2Q0RW8xWjJzZFcyV0o2TGc4?=
 =?utf-8?B?RE5WVkZ0VGk1QnFudWdKeUlHcHZ3MHFGdlpQZGNtVHJNamtuSzJkeGloSWE4?=
 =?utf-8?B?MjQ1WTJ2NTNReHowNWFBMjIwN0ttREt1M0hhRWdaby80SnBYNTQrVXRoR1BU?=
 =?utf-8?B?RXRZRGRyTjN1ak9yWklOTE0vNGh4QnU1U1lIdFJ3SzNOVFlHVlNNNWt2Zm5z?=
 =?utf-8?B?WmJ6Nml4K2ZLdVpsYS9WbTJIcnkvM1dqVms4WTdKRUtTOHdiTlp1djcvZ3FG?=
 =?utf-8?B?elkzRncxbTlWUVhkRVlPNk81NFZyRmQ1TURvbDd2R1pMdHFoVVN4eFQzdDBM?=
 =?utf-8?B?NVByMUs2cCtXVjRkaWw4QmF2eWdkZ0RuNStvLzg3UCtpamVSRzc4OFJSVitE?=
 =?utf-8?B?YnI5U2tzdUZNUEdibjlmM3NjZVVKSk5PWkVINHY3SFk0WmFLVkh3U3JYSUNZ?=
 =?utf-8?B?dVRRdk9oTmFkMmlwQ1FqNU1lam9DVmVVWGpuMVAzaVY1L2tQZ1BPdU0rMWl0?=
 =?utf-8?B?emg3SVFYdGxrZmNVWGp5c3V6ZVY1OThKb2RiY1E0bHlkRHlrejZJYi85UWxi?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47c430f3-a082-49a2-d21d-08dd101e1266
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 02:32:30.1988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oy9Omb/Bzc8th9CLPJvKbpDL9rrDtTiNUzxIH9FxhOXoF6I75RZemVLcqoK9X5bdINStHehrx1qjUpZWXaLCZ+0THZBlFdrT9xflYiF7keo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4616
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

On 11/28/2024 13:28, Eugene Kobyak wrote:
> When the intel_context structure contains NULL,
> it raises a NULL pointer dereference error in drm_info().
>
> Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: <stable@vger.kernel.org> # v6.3+
> Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
> ---
> v2:
>    - return drm_info to separate condition
> v3:
>    - create separate condition which generate string if intel_context exist
> v4:
>    - rollback and add check intel_context in log condition
>   drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 135ded17334e..56f05a18870c 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1643,7 +1643,7 @@ capture_engine(struct intel_engine_cs *engine,
>   		return NULL;
>   
>   	intel_engine_get_hung_entity(engine, &ce, &rq);
> -	if (rq && !i915_request_started(rq))
> +	if (rq && !i915_request_started(rq) && ce)
>   		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
>   			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
>   
But now you don't get a message when there is a request without the 
context pointer. Which can clearly happen because otherwise you wouldn't 
have hit a null pointer dereference in the first place.

John.

