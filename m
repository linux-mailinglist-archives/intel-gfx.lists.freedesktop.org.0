Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F2A99D7C5
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 21:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F9710E244;
	Mon, 14 Oct 2024 19:53:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MqNVu6/K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BC2010E244
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 19:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728935583; x=1760471583;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=8gSXoT6fhHv4v8Galq531qFw+O4+gTchnH4jeYleYWw=;
 b=MqNVu6/KhniiCMcxiXEEsVQDgEzDC5iRECxGNiA32t1+uKMM2Uu6FTIv
 DJ7gzIJp5kUjmHMCEL+kTkKHFaJmV1sBRTkd9luIaUbrJIeHRtjmnZxTS
 mBfan4IqyqNM3KTGnLiLfRoNrKVbCLBoJA5/2NXgRCnoT8aoBwb1Qq0X+
 QZHg6Nt3getbvFW6kCxioymOKxxlTh6Je94uG5gbISL0aTK1rQqJDFrVt
 Et+tg5VZ2QUZc+xIBHdsWLDcTnYK1yDe6Y7WD/KI9amN+PhAhlhD59ZpS
 eGmvdJve6FSHdhPTPy9UzKC4owRbZhInfyEDhfOFSul3a7WFxKEBtLK3l A==;
X-CSE-ConnectionGUID: tucjtNY7S8qYKZSQ2jkzdg==
X-CSE-MsgGUID: MZtFRPooSnWmSvJpgET60Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="27751482"
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208,217";a="27751482"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 12:53:03 -0700
X-CSE-ConnectionGUID: 8FEUoDJDQeKxtJeJKpq4EA==
X-CSE-MsgGUID: WvQzKGRzRRqz1CaZurItUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208,217";a="82458031"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2024 12:53:03 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 12:53:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 14 Oct 2024 12:53:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 14 Oct 2024 12:53:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pEN9A6Ybq1ExpzgMY7AFSu6NbSD+8hPQw9BCoEhNpjz73C2OWZXUSwTmADi0JpOjWbW1HwEp0edgr5M6ib6MZYhmRJfYd6fUjq0uFcp48Zke3LplRDXia4CpYAyN1XVLXeqJ1N3FACeaGDALKFUYX+I9CJxU/4prVPLJCTkZg19xTQcyNAwVRRDweq+dgng3pxlhOaU+sqDeECmVZYjOmbVFA6dhTfbXbjpG0mZ8kGHvULH88oRCnH77ET4UIfwok3bRPnM9g0+035qz95eDhX/uusXzrnt/c+fAPH9Jl8LjGgRMa0NhmE8JxKe3dCrIJ8myasuucHnr/+Ufm3uQOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I8GPx7wcntSdL34qNxXhC6mvY5folbrljZ8pIIwQjuA=;
 b=lXHZKv/YNLV1rXEF9cguCS3Q9mewnoMwyNJbHcA5qQY7YQWE/5ix/YkCOr5PYmSyt8gqIXwePZhkurfFjvdn5fVpkDaRbHfURdlGdtIcouk6Z2O7O9462bV//tzjQpSUk9JkM0jj3BHDvJbWqy851aoMqvABUAqokYIkQWbvTxlmjKLWWlLArS0JUuzZ08OZIDJo1eLmx0ply5DE/3jq4R5dsA0iTTC4ho9spvYc8dNGo8FTy4Z9y4fTNWC7/C5ffSneGfVUOzp29tESPl3Vi2cRdZcmxde5WxAGDcKcQgaX+PorEvYN0kFvGOzHXyxFQin5a3pTyDG2MCSMIsUFCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by SA1PR11MB6968.namprd11.prod.outlook.com (2603:10b6:806:2be::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Mon, 14 Oct
 2024 19:52:56 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%3]) with mapi id 15.20.8048.017; Mon, 14 Oct 2024
 19:52:56 +0000
Content-Type: multipart/alternative;
 boundary="------------AcfDm4tFB7w0TPSaTsQD0la6"
Message-ID: <16aa526a-67c2-43e9-ba4e-2e3bd5d312eb@intel.com>
Date: Mon, 14 Oct 2024 12:52:54 -0700
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/guc?=
 =?UTF-8?Q?=3A_Enable_PXP_GuC_autoteardown_flow_=28rev3=29?=
To: <intel-gfx@lists.freedesktop.org>
References: <20240906174038.1468026-1-John.C.Harrison@Intel.com>
 <172740208413.1109466.6705877213663706829@2413ebb6fbb6>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <172740208413.1109466.6705877213663706829@2413ebb6fbb6>
X-ClientProxiedBy: MW4PR03CA0333.namprd03.prod.outlook.com
 (2603:10b6:303:dc::8) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|SA1PR11MB6968:EE_
X-MS-Office365-Filtering-Correlation-Id: 4765a35c-bea7-4b2f-2843-08dcec89cc90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NlVtZ1JCSFgwY3lKWEl5V3JDcjZJaXNJNjAyaEZyYnlzNG5zMGtoTDNsTUpN?=
 =?utf-8?B?alJxQ2lxYzJ1YVJlNVdBSnVFOTVUazVQRnUxKzRwOGpzcllHYXZOTEJVZ2hR?=
 =?utf-8?B?SmpjZGZaVGZmeXI5b2hrbk0zeGVKYi9kWWN2RFRzNHMxQ1QzTUFjSDJXbTUv?=
 =?utf-8?B?eUY0NjV4b0VzMWkvd1dUdWQ1ajM4QWxQclgxakZkVEltS2VJVkZyY25NMVJL?=
 =?utf-8?B?VURQMUNoYjliaDN5WllwRkNjOVFUUDRIY3o1ZkxEZTY4a085WTRVMkNwQ1BT?=
 =?utf-8?B?SG1NTDZtL3lSRHp3Ni9BTnhTTzVaSFRiWWhEekFFaFlUenNmbFpSMHFqSUdt?=
 =?utf-8?B?WEhKWS82bzVjOEVGWk9pZ0hOaHZwS0k0Y2dwODI2eUY4RFdsQlNiMTduRnht?=
 =?utf-8?B?MkJ1NGUzOHR0bElTN2trZExqY1NiYjZsdDJOd0pRd0FXSjNpL25hN00xcnZM?=
 =?utf-8?B?QkRBamJhTHM0eTd1VW81dUlTeXJ1bmdqWStlU1hyZGZnRFRhV1lMZjFiK0Ew?=
 =?utf-8?B?SGgzR1RkeE1ndGpjS1pidEczdXNuamhpQ2J3NnpLSzBCU1JPVDl4R0FXdlp5?=
 =?utf-8?B?TW9SYTY1UU1IT3VoRTdydm93NzJZUThvcFROcFJZOG9mRHVheGNjZWZ3N2VW?=
 =?utf-8?B?dHdqeXJCK2NiMHIzcThUODlKQ0RVU09LdElkQnFoOWwrSHJ5YnkySU5mQlNO?=
 =?utf-8?B?Z0t1Z0srY1dXT1BoMDZlaWg4TUpjZTVJUk5RM1dFelMwVkVWT24yV2xSZWU1?=
 =?utf-8?B?eW9DQ0srOWJMbzdFRXFBK2xPMWdrWVdjNlN0QjNxNEN4Y0ZTVWVmbUZKOXRC?=
 =?utf-8?B?dkZBdHltVUh0dlZxNTNEMDFnTmUzL3dXS1l0ckJrbzZFb3h1OEZDa0RDUkVT?=
 =?utf-8?B?LzdybzdNUzFlZGliWFRvcldkTVlFMytiWGNKZXFobG04SGhSMk9IWWtlOVQ1?=
 =?utf-8?B?aDVaeTkvVjdzVXZVb0NLaTc0NzdRdGdKbDF6ZXdncnRpeGUrTWp5VGh4VDVa?=
 =?utf-8?B?U1hRZXJmT242a1dOeWI4ejZRY0h2dmZNcmRIVHlOb3c4b05kdjNER3dXR0RR?=
 =?utf-8?B?WTBxaDBReVR2dTNhRHVReWZMdnVaUVlMcjlnMU5iYzBtKzFNZW1HTzQ4S2JD?=
 =?utf-8?B?NlFUVFgyNkRBVUxMZm9HMXZ6ZE1FRWhCRG1jemo0aTBKUnNPTGhDdVdFcXZW?=
 =?utf-8?B?U3pEZm02c2ppMXNBelNjZEhFQmRKRXZKdzlhSTkxcVdmQytBY01TNTA0MlI4?=
 =?utf-8?B?ZWRyZFZYMW16eVNsSSt5NXJkb2VHMG5oZTRDS0dCYURub0w1ZmlubVBNRkZk?=
 =?utf-8?B?d3U4amFkbnFZQVJNLzJVT2IyQzdoZ0JEQXB6Q0VhRVJ4SktBREVaa3Fydllm?=
 =?utf-8?B?RE9KazRLQUE0V1hZNkg4UU5HTHpiWWpjMGx3blhkSmRJR0xhRzhVRmt1bTJ3?=
 =?utf-8?B?ZXhuUW5GWWVDeHN4anFrWmY0cnlWSGRkSktCM2xXK1V5UHdEQi84OWlCSGR3?=
 =?utf-8?B?ZGFhYjdIYzZHVWEvNlpxa2tnSkxxTEQ0Nm52bEVTelFNV3BvSXhiRHJuNks5?=
 =?utf-8?B?TDgxaGZGdWw3V3ZoNnRjNXJycUdIVnltMTVOV2FqZmhoTFFkOGVsSG5SRmxD?=
 =?utf-8?Q?VtB/D75bYYvfobjCXD8LbdtJ8C7YfpO3C/4vOns0IyPE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkIwYVBub3FIZXoxRjJ3UDNxbWVKOHpBK2VIa0pxNVQ2M2ZkbEVTZmFzMVFx?=
 =?utf-8?B?NG9JaXNPRDB0azJnYmRMSk1NVVNYOCtmY2VGMHgyVTJDNDFWN05YcnEwczh4?=
 =?utf-8?B?RkN1Yk05TVl4aXhSSEpZL2dKbU83clFuSDEyOFhyMUZoRUtSeTgva2s0cjYv?=
 =?utf-8?B?Q3RqRmZRYUtnMUJZYmtacmMzWjJyVGE5c0ZUUEQ3aEJ1SDVHb2dta1RsYVN5?=
 =?utf-8?B?UGhQekZkZ3dONFlSSTI0RjVyY2F4aDBXelBxYVBES2ozY25qeStZRTJ2K3Np?=
 =?utf-8?B?akhlbUJiYVRiTzVrZ1l3TWpiN2hOY3BHUUgwNGp0VjNFQmswRTN4K092cU9i?=
 =?utf-8?B?eGxvVFdDTTgvL05YdGNCSGplckdjdFBjRnRobVlsclJqQ2c1RzhFZ3ZJRkVo?=
 =?utf-8?B?NVBhM2hvM2lUU0tENjJweWlUYnM4ZnF0UGFGeFBHZ3o5QWVlWmtTQ3MwV3Bs?=
 =?utf-8?B?QlZwOHRYdlU2M1p4eVd6UU5oeWM3WmVXd3I4czZuN3VNajVGUVlFb051UUE1?=
 =?utf-8?B?VDR2WExCOWFzd1k1VmcxNFd6YzNHUlB6UWZocm5SVmJEcFJ6SEVuK1FITkJ4?=
 =?utf-8?B?TVRQb2o2MTlLMHIvZS83d1RueUJSbWgyUXBzcFlmN3ZIbWMwT1BITHVOcS9q?=
 =?utf-8?B?c0oxc0lrYlliWW9DdkwrRWQyRUpXemRSb3VqMVdkRnZGSVJGeDg3ODhoOE9v?=
 =?utf-8?B?VVgyZ09sdVVmaTkzaXFmWWlHNGYvNFFFOUxyUk9EaVdxMk9HWVEwZEpPenYy?=
 =?utf-8?B?enp5VFhXUmRmY3VXc1RzcGNtSSs2dlFhRFJxWTY5UEdGbG1mU3BDT0pzbHJR?=
 =?utf-8?B?UkFKRTFmL3ZySHBkekJxdnNuaUgrdUd0ZmpaYXB2SU1yV1EramtnWVRrall4?=
 =?utf-8?B?UHZNWThDRHMxQ2lMOGFUSm1EL2xWY1FObEtPcW1vWURiR24xMWVqb0U2cVZB?=
 =?utf-8?B?VGJQNm1QN1FrdHB2UWxtOUZ2VHJzNUZRT2FYdnNkMERsSzA5UlR3c1NyQ2tH?=
 =?utf-8?B?eWYwRjFCQzZvUStsMm4ram9xVkRGMVFua240U00xdnJKN290NzJXTy82TFBm?=
 =?utf-8?B?SXFaTHhoOFVoaVhLTE5Hd05OaHprbVhaT2tYSXR3N3hFWDA3djdBdk5yOFBG?=
 =?utf-8?B?UE5hYnNCMVRjNW5wUTk2cXVRdDNYNzQxT1p4UW0rd2NHcnBqR3NDWEN1aEk0?=
 =?utf-8?B?SXJLTysvOStQSkJhUjZyNWhwSHFwQW1GWFFjTkc0bnpGVFJUZytEVEIxZXFF?=
 =?utf-8?B?UWlHS1EyODlycGZPWS9oZitGK1ZqUGtMQzl3V1FWTWhLNUNGcFFZZUp0c0pZ?=
 =?utf-8?B?NjJCMS9nalozaksySXZoT0k5S0RDQWtXZVh0S1V3VlJaMWpyUGV0VnFaeFhX?=
 =?utf-8?B?NmZrYXlPZExqdlQwaU80M2tYODhHL0t0VG5SMUdKckI1YW5HQkhHY1R6cGRp?=
 =?utf-8?B?QjR5N2hHTG5sL0wxaUJHNTlYQmZDRkxRekM4dU5Bd3NtTTZXWWJPcmprUFg1?=
 =?utf-8?B?MnQvM0NxUzZXaUlpMDRJOG1aSi96azcxK0wwZHBoc0U5Q2NaVE1IQUdQRTRN?=
 =?utf-8?B?QXlVOU5jSEJObXhYSFFOYlJWU0ZoS0wzamhCT09XVzJVY1JYQTVQOUJuclpq?=
 =?utf-8?B?WlVuTWw4VjljQ1Z0NFplQ2JYaThhaUZRYUdnSUJidjlJbEJsN3FhVXVjU213?=
 =?utf-8?B?bFIvUHhEa0syeDk5VVhtT0lvZloxWEVUT1RFNHdXRzlaN2lVRE4rYzNKU0Vj?=
 =?utf-8?B?VVplbjZMblo2bStTczlkSjVSY3NoWHVrRUE5eUd6andvRW5iSlVGNUdDNGJl?=
 =?utf-8?B?L2NJS1RRZDBCUHRybHYvSnZpM3BGU0VPKzJKQXc2ODFrblo2aWs4OWFmcEti?=
 =?utf-8?B?eGM5Vmk1YTd0YUhLLzUvNDFnZlczTG55NkhCNlpFY0ZuNnYvS1krTEM5eFJq?=
 =?utf-8?B?V05wVlVqTzFWVE0yRkxFMWFJRlE3U29TWXFvY0VHL2RlbTFPUWxtUkdVZjRk?=
 =?utf-8?B?Vkd5UXB2NVpPWmVBU1RNbmpodUt5ZUdZSXVuc3VSYUpIVkxsMU5Ra2hlS3dL?=
 =?utf-8?B?a1pOSjJUUjBmait6Mk5TbDJHT1N1VS9scHZUK01laGhXMkM1blBmcTJUVDdr?=
 =?utf-8?B?clV6M21WclZRMUJVTWhEU1ZlZ0s1Q1QyLzJYNVB6RlFaQ2NpL0J0citaTmp6?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4765a35c-bea7-4b2f-2843-08dcec89cc90
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 19:52:56.7721 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1H+y8GDtk1JSLr8ep6vid0WpdJ4I0pW4jfcoxApncnvZ3lsXCay0JQyMi7nLiyDR0zjvglJlUllsqtcOJhM/t0CYED+qDv2QepMONJXZ8NA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6968
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

--------------AcfDm4tFB7w0TPSaTsQD0la6
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 9/26/2024 18:54, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/guc: Enable PXP GuC autoteardown flow (rev3)
> *URL:* 	https://patchwork.freedesktop.org/series/138337/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/index.html
>
>
>   CI Bug Log - changes from CI_DRM_15449_full -> Patchwork_138337v3_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_138337v3_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_138337v3_full, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (8 -> 8)
>
> Additional (1): shard-tglu-1
> Missing (1): shard-snb-0
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_138337v3_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@gem_exec_balancer@waits:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-glk8/igt@gem_exec_balancer@waits.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-glk3/igt@gem_exec_balancer@waits.html>
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-512x512:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html>
>         +26 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html>
>         +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html>
>         +3 other tests skip
>  *
>
>     igt@kms_pipe_crc_basic@disable-crc-after-crtc:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_pipe_crc_basic@disable-crc-after-crtc.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_pipe_crc_basic@disable-crc-after-crtc.html>
>         +14 other tests skip
>  *
>
>     igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-rkl-4/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html>
>         +4 other tests skip
>
>
>         Warnings
>
>  *
>
>     igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html>
>         (i915#1769
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html>
>  *
>
>     igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html>
>         +1 other test skip
>  *
>
>     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html>
>         +1 other test skip
>  *
>
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html>
>         (i915#12042
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html>
>  *
>
>     igt@kms_content_protection@lic-type-1:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_content_protection@lic-type-1.html>
>         (i915#6944
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_content_protection@lic-type-1.html>
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-32x32:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-32x32.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html>
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html>
>  *
>
>     igt@kms_vrr@lobf:
>
>       o shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_vrr@lobf.html>
>         (i915#11920
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_vrr@lobf.html>
>
This is a MTL/ARL only change which means no effect on any of the above 
systems.

John.

--------------AcfDm4tFB7w0TPSaTsQD0la6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 9/26/2024 18:54, Patchwork wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:172740208413.1109466.6705877213663706829@2413ebb6fbb6">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/guc: Enable PXP GuC autoteardown flow (rev3)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/138337/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/138337/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_15449_full -&gt;
        Patchwork_138337v3_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_138337v3_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_138337v3_full, please notify your bug
        team (<a class="moz-txt-link-abbreviated" href="mailto:I915-ci-infra@lists.freedesktop.org">I915-ci-infra@lists.freedesktop.org</a>) to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (8 -&gt; 8)</h2>
      <p>Additional (1): shard-tglu-1 <br>
        Missing (1): shard-snb-0 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_138337v3_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@waits:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-glk8/igt@gem_exec_balancer@waits.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-glk3/igt@gem_exec_balancer@waits.html" moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html" moz-do-not-send="true">SKIP</a> +26 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html" moz-do-not-send="true">SKIP</a> +2 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html" moz-do-not-send="true">SKIP</a> +3 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@disable-crc-after-crtc:</p>
          <ul>
            <li>shard-tglu: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_pipe_crc_basic@disable-crc-after-crtc.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_pipe_crc_basic@disable-crc-after-crtc.html" moz-do-not-send="true">SKIP</a> +14 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-rkl-4/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html" moz-do-not-send="true">SKIP</a> +4 other tests skip</li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
          <ul>
            <li>shard-tglu: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769" moz-do-not-send="true">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html" moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
          <ul>
            <li>shard-tglu: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286" moz-do-not-send="true">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html" moz-do-not-send="true">SKIP</a> +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:</p>
          <ul>
            <li>shard-tglu: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095" moz-do-not-send="true">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html" moz-do-not-send="true">SKIP</a> +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
          <ul>
            <li>shard-tglu: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042" moz-do-not-send="true">i915#12042</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html" moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic-type-1:</p>
          <ul>
            <li>shard-tglu: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_content_protection@lic-type-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944" moz-do-not-send="true">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424" moz-do-not-send="true">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_content_protection@lic-type-1.html" moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
          <ul>
            <li>shard-tglu: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-32x32.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555" moz-do-not-send="true">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html" moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-dg2: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354" moz-do-not-send="true">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html" moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vrr@lobf:</p>
          <ul>
            <li>shard-tglu: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15449/shard-tglu-3/igt@kms_vrr@lobf.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920" moz-do-not-send="true">i915#11920</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v3/shard-tglu-8/igt@kms_vrr@lobf.html" moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    This is a MTL/ARL only change which means no effect on any of the
    above systems.<br>
    <br>
    John.<br>
    <br>
  </body>
</html>

--------------AcfDm4tFB7w0TPSaTsQD0la6--
