Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F54BE3DBB
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 16:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E1E610E9F1;
	Thu, 16 Oct 2025 14:15:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DU9hiFeU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D403210E9F6;
 Thu, 16 Oct 2025 14:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760624147; x=1792160147;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FsUC8vgdrKPDB8xl+gWOEKHBIF2CpuveOjm0ytjJIfQ=;
 b=DU9hiFeUDopPRTeDPOd954WSGNdNtxzWcFKlL12Wu48ilrbgmr9c28eT
 81zsTFNlX4mHL7PBTw34csKtSLud159R6gDfhK1UczlxbtQ+6hPtNvCS/
 dC5Ap90uwMyqQlmMGVF21S/fs9+mnGvHjf0RiHrjRXxKUNOSwEAGfhQDt
 wxSDhFv2hkqCzm6TZJBkTtx/tjX9aEuXKnih7yK/6NfdKm/8KvoK6vB5E
 ryBhXvGmUU8YUkx7T8NZ9f9LNSXd2kN+odit1J7IXIlO2nUSOvyL9mOp9
 R0yxaHizf3maRv0PjWkJ+ybMI4IXpz3CiH1cT8NPV78vUGPSt20g8WGqx w==;
X-CSE-ConnectionGUID: xWFS8ak6R7WF1e58fU1hDQ==
X-CSE-MsgGUID: e7hde6wvSfqE5Q2PsIdaiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73930220"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="73930220"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 07:15:46 -0700
X-CSE-ConnectionGUID: qjQWRKhdTOWP2Q7n0rzJIQ==
X-CSE-MsgGUID: n8DFWP+LSWyq7moWroQwIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182143296"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 07:15:46 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 07:15:45 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 07:15:45 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.71)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 07:15:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U2JIniHygkFX5QwldBH0Rlv3tVKzXcDpUU+yjpWXfxwM+2zndRR+6j6H2E6+hizEfYzXhKwviNLHnHN2zkm7vaRSoa7Gu0s+i4bBQPcTh5hBGKd8/Lvi1pJlHKaNWwMFE/DKInwuzxbGo8L5C5f5RZeJDffzOujCQRFlANBbDBjxOnSvQ1OHOUq8viMw7A+OAc/A+g7E6313GY2YCYyN1lWJG064sNsUFC7+2Iu65tOP7/Q0YLvbIXToqA5UpiqU12+wkfD0QrCLrWZpSA3+Jmj0YWJMw6VUHjFvGVj1PPPQfBjNxhwdPCHlMMJd3CsF0KDeFH0/APWo4Orm3Q9H0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DJ1OSBl9N8JyDrrgfjdL2ViEWkH/nPL/sukznvDS5GM=;
 b=eGDd01Y3QPI2KdxBw+EzRIdbXn5LGyldRgOQKr9KBnv68ZYdk6XyPN1Q9I4yfsUfyNgqAIcU2RN8xTk6maYYM1ztGo9vsp4jWo1V1B5nqhLXzIBmkMcqbkqmqoEj4UkobmVNPl2la8oVJU4d7RGGwpO3vskBuTmouZf9/b9dckHoK2xddB5v2TyS+2mlI0C/f7ij6Jk0ZxmXURGwUBZm0wS+AzX7nWSgAr8Z1kaf2OY5W5hXDSpEqMd9o98V2cwLpVWnYhYvvtaUvaWIw5TwkaHs0YjvRbq1PIsQner41BkjC6BCCw7pGOTRQ5b9SfYNekNDdGettrN3EaQ8yLHYOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6043.namprd11.prod.outlook.com (2603:10b6:8:62::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.11; Thu, 16 Oct 2025 14:15:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Thu, 16 Oct 2025
 14:15:43 +0000
Message-ID: <fa65055e-b70c-4b9c-90af-e49db9172dbf@intel.com>
Date: Thu, 16 Oct 2025 19:45:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/10] Preparatory patches for guardband optimization
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <jouni.hogander@intel.com>,
 <animesh.manna@intel.com>, Uma Shankar <uma.shankar@intel.com>
References: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251016055415.2101347-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0080.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d8::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6043:EE_
X-MS-Office365-Filtering-Correlation-Id: 38319ef3-c473-44a0-7890-08de0cbe7dd1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ejFodjE5cTNYTVRzZEZBdStsSHE3aXhMbkFscmo1MWlQcy9ybGN6VjI4UHQ3?=
 =?utf-8?B?UTdnU2RSb0tleFRQM1EzbENQWWxaSU1LdWRYUXZQY1ZPWWFlRFBSNFoyRXln?=
 =?utf-8?B?emJRdjlpUHp1ZThjVm51ci9EUnpxeWxqMWlmaEp4cGd2dDZpa2R3VGhJMllv?=
 =?utf-8?B?UHpvMkJvdDY2Wk9wUFBhVEY5SmxCbXNvOTJtRFhYeXRPeUI1UU1ZWFFGUVFt?=
 =?utf-8?B?dFBLR0ZTOXlBVmkwNlB6YU1NaFM0WWtMdk9mSjFHZzVoYlk0KzZBWGI2U2NS?=
 =?utf-8?B?QUZlaHZqRFFydzdzS05KZVZsYzMxTXNobEVkQ0lhZG8wUWJ3K01LQi9JNlYy?=
 =?utf-8?B?ZzVlbUFzR0c0dkFydHZmeHZVU0hmL3VtVmNtVFc1M1d4WElWdjFpK3dMano5?=
 =?utf-8?B?bGhzR1R0RDIvSW90d1pRSUF0bUtTcnRUcGtNaU1MRUxlYjVsZnBPNVJkRmdX?=
 =?utf-8?B?RVJ4YmtrWUtWbUkwVjRkQ3V4cDVrcCt6MXlqeGFqaTJ5OHlrbWZWZmsxdG5F?=
 =?utf-8?B?WWJITEJqZitSS1JsdDZnQ0hHY095UlFZZkJxTUFKUWVmc1Z4MUVLN0FkdFVk?=
 =?utf-8?B?N2FNWm5Wa25OVFBwU01uL2JOcWwvck9xK0QxdGVuKzM3eGFLZTVlTjV3WDlY?=
 =?utf-8?B?OWhnbTFGRmozbHVKZ3psTGt6RXk2dW4yanU0cnhUd2J6SFkyTk9wWjVlRTRH?=
 =?utf-8?B?WUREWXgza1dBYlNJcW1tOUs3Zkh1MjFMeWVlYWhDZW1jM29pN1pIdjhLWExX?=
 =?utf-8?B?VFk3cDczWm9SV2lXVCtqSURXWUZwYnJBWlArUUw1K3ZhQllRNE93UERiZDlH?=
 =?utf-8?B?NG9CeXcvcXgvdDhXMElRNE45L203ajBHVHVtaTZXU1RKR014anRCc1VyWGVq?=
 =?utf-8?B?Sm8vcStVc05QWERRSWZqejk0bU5hcW5pS05WbWNmQzNJck1WT1RjVGtFNlU1?=
 =?utf-8?B?Rnp0alVBSzI5RmlaWlE2blo4aTMwbmlRQWRzQUt1ZG5EeDRZcDlISXp2RXho?=
 =?utf-8?B?QUhhbWZPMmRENFhoUWhkYWFBUUg5cEVReUJWVkY0eFZDN3hZZzJldkFoMFZG?=
 =?utf-8?B?NkVxbmNxY0szTm1NbGRMdmU1LzZwQitJT3Y1bEdjM3ozUy96K0tMeTVXaXpZ?=
 =?utf-8?B?NTV2U1pMOTNDVVp6MGk2LzA3NFJLMnUzaE5xOWE3SmRLRitpb3hicE90YUc0?=
 =?utf-8?B?Tk44RWcyb2lvaHJBOHVwczhrRjNYM0haUW04TGFJZnZETlcxWGRvaStxUFc4?=
 =?utf-8?B?aGlZVndxbDBrek9WcmFPTUNBRlFiZHJoRFZqMnJkR1FjRWx3QW41V0ljck5u?=
 =?utf-8?B?RklUZ216aHpUZ1E2SHRZWU1QL0pRRi9SUTdEc0xDdUxQOXl3aG5XU0FZUVpq?=
 =?utf-8?B?MlF6WlZseEQ5MkltME9CVjZUcmZrc0xKQ1dRZCtHQUtEejMreHU1SlZsK3gz?=
 =?utf-8?B?NnhCRDM4NVhNaHUySXdzbzNsWno0aHFzOWhIb1ZQTnZDYVQzZExTU3pDYVEz?=
 =?utf-8?B?RnNyS2pRRTVRY01mQ3NsRmE2SzBWRzlJRFVNbDV1OU1JS1JKQ1FoOUJKQy8y?=
 =?utf-8?B?OGpvdVlUN0VTSHVPb3RtTWkrZTh2OTBFTS9NbVZuS05PaXVNOWlNbHZWM0JL?=
 =?utf-8?B?SUJUakZWMXE1WVJZVlpoQ0dFVnJnVFpFTlhmaHlsK0lUQ1gxdC9BaFlJZHNm?=
 =?utf-8?B?Q0VpTFZKaUw5ditkOVh1cUlWSXhoTGw4QmFBdHYyaWRZSnNjajI0dnJxWXI5?=
 =?utf-8?B?UGNRSVhIR3FVS2VmcXJKU3c4UmsxVUNpaXdYK1p6dVlGcGFhUS9vZkpCZnFP?=
 =?utf-8?B?MEpzRmNaM0YwNlJ0Rk1vMHZZZ2JtT25aQlJITGJnWWhCb3dwb2NUNnNUcncv?=
 =?utf-8?B?MkdDWVdYdUJvUGp6YnYxY1BwSEx6Y0krR3psYlczQW9zUHJIMG11dVZhY0JD?=
 =?utf-8?Q?EqBXR81SYQsI8ytDvUZSr5xCrQMuCX2D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1c1SDE1K0t3WFB3OHdFdEg1SEp2MHdKWmxsTEhYTDg3ekpQN0ZFUmxPWlFV?=
 =?utf-8?B?bWEyYUZ6eUUra1NWMzNZUGRVVk9oNVJwY3VZQUo2cndnaVJzbytwZEs4UVQw?=
 =?utf-8?B?R3RMSjJ3NmVhNU1lcnZSTlhkT09yNDVxNkNpdFNBTmk4MXllQUN3T0lDdFhu?=
 =?utf-8?B?MGFxMUw2YkM1SDVaYXdmZVVMNVY0SXEvbGM4czJDZjRwQXE2anFVZVkxR3ZE?=
 =?utf-8?B?MkhpcXJoVzJpaWtaVXRmKzdUeHo5dDVMcFJRRHg0RkRSb2pJRzN0VEcvZytr?=
 =?utf-8?B?R2d2RFhyWG5OYWQ2WTN1UkI5TEV4Tm9obFYvM1JidmJUVmhyZWJFQ2dPeHdQ?=
 =?utf-8?B?NFhIbVRvNkM0bHgrYlY2ckl2RHY3ejFydjVSdVdtWlY4MllRSHgvY3d1OFph?=
 =?utf-8?B?Si95SnBtbVhxY29pbU5sTThzeWNMQXkvV3VWWDI0NEp6M1c4RDFIdTNxdmxr?=
 =?utf-8?B?cWwvTS9zWi9vWThUdlZoc0o1UFJVNCthUE9ESkNtT3F0ZjM1ckx0VWlrZmlk?=
 =?utf-8?B?c3ZoRXNKa3RoMytRMEdaalNSZVFkSytnaU5DM21pbCs2YnFxcTF1TithdlVM?=
 =?utf-8?B?dWtScWRzdDV6T3ZSTjdQb1EyRHl1OUxvRFY2RUVpTkhLK2d3b1lVZ3dvZit4?=
 =?utf-8?B?WXBFVld0SGZSUS9RNldXRXQwdjdIQlFCRUd6Rm1jb2NvdGdXRjh4Q0ZEMWpp?=
 =?utf-8?B?TDRISkRiT2hndHJZYmZtVzE0eUNXSkQ1ZzNJZG9oR1o2KzByUk5WL1JZNzZR?=
 =?utf-8?B?RkoxZ3M2MUxTd2VHNFRXQ3N6a0p4NjZWNnVnemRQRkZsWHBSOXNOdHhiWG1j?=
 =?utf-8?B?d3pSVVd5NGRGT3ppUWw3aVh6TlhmSHgyUzRnNmdLdHpQbVViTFpjZDE5T0xt?=
 =?utf-8?B?eElQSm16dU81d2FDNkowendWR0tsQXd1cW1YSDVrUTVPM1c5Uko2SlprUzBs?=
 =?utf-8?B?NWFGQ3hBZm1UVTRUZ0YvUHN2SjZpY3JuaDc5ZWlyS21pS3pGU0Z4dHZsZkdj?=
 =?utf-8?B?MUwxeHJ6UnA4WHA5SVdkYzJMaFNTRG1udVBFY3k4eGxnL25telMrODlHRklk?=
 =?utf-8?B?Z3d0Ukw2aHRYUW5PaDV3Qit4MW9rK3grdjcvam1QTzFCTnNrenBQNnhvdHpi?=
 =?utf-8?B?cmdXUXdpZGJSU09aMHJrNU52QWtGSlpQeXRscndrK0tXaDRlUWgxQXRVT2p2?=
 =?utf-8?B?L1BCMEREY0RONzh5WjhISW9tSVNNUDdwWGd2Vk03WVlEOVYxWE9odnNLSWtk?=
 =?utf-8?B?Q3d1d2tOM3hsS1Mvek9jNWpGZ0d0OFlYdmlPcXRmd3h2ZkRTSU1YaGtWeFZQ?=
 =?utf-8?B?K2crTXM0aHpNR0VGc1UyajljL0xIYlBCeWc2R05MRVlWK1JBdU9nZ0pHWjJN?=
 =?utf-8?B?NUdMbzNBclJVeUFyUUxwVnlrbmI1QlhneXdFekxJVUNFMnZYZ0xIeHpFWE1w?=
 =?utf-8?B?dzd2NWRQSXJNY3ZDRE9CWm1XRHRTY2NmV3NtdGpJRDhhT0JYUjFpVkhDRCts?=
 =?utf-8?B?OC9mOWRUUXo1djBrWDlueW9hT1U1SVliWU5XbDJnVi9IcG5TVU1iSW82QXJZ?=
 =?utf-8?B?OE9qZmUzNHBoSWdwbmdjQW5UMGpjYzBOa0Y1cGxvOWhsb3BHcUl3bnlBVi95?=
 =?utf-8?B?bUk2K1dVUTNkRGREU1lIMzJGZHZtSmwzM2lOWnpLQmxpOFhNQVNtQ0Q3T3RO?=
 =?utf-8?B?VmRzWnk4T0NiQUR2bGRGeUxXWW12WGJ1cjlONExtei9DQ1FNNDEydmtjcXh3?=
 =?utf-8?B?YlJXMlQxWGV3bW9iVndETjl1UlpDU0tHN2VjN2dUK3pyQm9pZExMeFRIc3hr?=
 =?utf-8?B?Z01MeGpNSUxkNUtoU3NvemRSV2lpSURIS0xBUkhqWDJKZnpmSTk2b2Y2UUsv?=
 =?utf-8?B?M0E2b3l3VWRFQTd6ckhhTkkwRjVlTU9sVWk0c2pmbUlYTVZEeGVxOEcrWDFs?=
 =?utf-8?B?dXJNajgvb3hQbXJNbjFaODB5bVpMbjE2WFBPUERpZzk4Q1ExTGJrMjFaM1Va?=
 =?utf-8?B?bksrYXl2aFVXMjdqU1IwVEtSMXpTQWRCcDR4VkVObkNteHhUanRHcHhQZnNU?=
 =?utf-8?B?SkdDd28rZWVaUW9TR0Y3K3BZV3czK3RxMG1MblV2bllhcVJSMlhrWTdOU2sr?=
 =?utf-8?B?NDZORHZLanBOdlg3MmR1SXFobkMrVUJ4SGpWaTI5TW8wSllSbVZFRmVDZ0RG?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38319ef3-c473-44a0-7890-08de0cbe7dd1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 14:15:43.5506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vl+xWhLkK7ukQW9RHDfNNzI6nTFiZj8cWjpYA6OQj1+wZxG2mabUyMLGbuRM81c+U1/8o555uDvjythjeLnVnMJQn9npyqjcpA/t8NpdYGs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6043
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


On 10/16/2025 11:24 AM, Ankit Nautiyal wrote:
> Handle few cases which will need changes when guardband will no longer
> be matched to vblank length.
> - Fix the vblank_start evaluation.
> - Fix PSR wake latency checks wrt to guradband.
>
> Rev 2: PSR went through some changes recently, rebase the patches on latest
> PSR changes.
>
> Rev 3: Address comments from Ville and Jouni:
> - Add a patch to move intel_dpll_crtc_compute_clock() early in the
>    function.
> - Merge patch to adjust vblank_start and the readout changes.
> - Fix agument to alpm_config_valid()
> - Add documentation for retionale behind PSR late-stage configuration.
>
> Rev 4:
> - Update pipe_mode->vblank_start and actually merge patch to adjust
>    vblank_start and readout changes.
>
> Rev 5:
> - Reset other psr flags based on features that are dropped.
>
> Rev 6:
> - Make the order of panel_replay/sel_update flags consistent in Patch#5
> - Add a patch to have separate function for
>    intel_psr_set_non_psr_pipes()
> - Split patch to introduce intel_psr_compute_config_late() from patch to
>    check final vblank. Move Wa_18037818876 and
>    intel_psr_set_non_psr_pipes() to intel_psr_compute_config_late().
>
> Rev 7:
> - Address comments from Jouni on Patch#8
>
> Rev8:
> - Update the return type for intel_dp_compute_config_late() in patch#7
> - Add comments about pipe_mode update in patch#9


Thanks for the reviews. Pushed to drm-intel-next.

Regards,

Ankit

>
> Ankit Nautiyal (10):
>    drm/i915/vrr: Use crtc_vsync_start/end for computing
>      vrr.vsync_start/end
>    drm/i915/display: Move intel_dpll_crtc_compute_clock early
>    drm/i915/vrr:
>      s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
>    drm/i915/vblank: Add helper to get correct vblank length
>    drm/i915/psr: Consider SCL lines when validating vblank for wake
>      latency
>    drm/i915/psr: Introduce helper intel_psr_set_non_psr_pipes()
>    drm/i915/display: Introduce dp/psr_compute_config_late()
>    drm/i915/psr: Check if final vblank is sufficient for PSR features
>    drm/i915/display: Add vblank_start adjustment logic for always-on VRR
>      TG
>    drm/i915/display: Prepare for vblank_delay for LRR
>
>   drivers/gpu/drm/i915/display/intel_ddi.c     |   7 +
>   drivers/gpu/drm/i915/display/intel_display.c |  18 +-
>   drivers/gpu/drm/i915/display/intel_dp.c      |  11 +
>   drivers/gpu/drm/i915/display/intel_dp.h      |   3 +
>   drivers/gpu/drm/i915/display/intel_psr.c     | 244 +++++++++++++------
>   drivers/gpu/drm/i915/display/intel_psr.h     |   2 +
>   drivers/gpu/drm/i915/display/intel_vblank.c  |  10 +
>   drivers/gpu/drm/i915/display/intel_vblank.h  |   2 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     |  33 ++-
>   drivers/gpu/drm/i915/display/intel_vrr.h     |   2 +-
>   drivers/gpu/drm/i915/display/skl_watermark.c |   3 +-
>   11 files changed, 246 insertions(+), 89 deletions(-)
>
