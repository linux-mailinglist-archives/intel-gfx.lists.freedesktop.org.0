Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC025C33EC4
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 05:19:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2518410E6AC;
	Wed,  5 Nov 2025 04:19:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DiTM/3WY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF0010E079;
 Wed,  5 Nov 2025 04:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762316385; x=1793852385;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7qvzG24hSlH49Ge4tWR5/AM0LIR8sSchtLgLlJmKe+o=;
 b=DiTM/3WY0/8E7dKS+C1uSJhlXL1tYVq6ctv/dCENT5MjeO57bMzSboxg
 EpXTuT6gl2k9YIKw8f9yVPyMexaKy+QZWaVSjkJfULa/hbpOZmsf/eBx7
 yCXVXp2TAtwdkTJV7CnFBUH4xpJQIsOIRsmop8KcIn5zKvLwGevgY4ZIv
 A4c+Rw/kxlvxMWeKM2wcI7GsGjEWIIjQHZUHZKD1iCJZJ4t+16YvyNu8x
 hL8ZgOf9l5fXb07D7/TZY0vTWCDd5lJC5KCV5OyTj4OExvI0yiTJb9d3P
 DdzCpL5CXaklWyYFZ1vhZnxf94ongaCK1GKj465fVuqc7eSjUhRT6RjDc w==;
X-CSE-ConnectionGUID: fOuge6bKRUa3mrMKWszOPg==
X-CSE-MsgGUID: aQUjr7nLQ+S6D3nht0Jymw==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64338456"
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="64338456"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:19:45 -0800
X-CSE-ConnectionGUID: 0tAAy5sgSE6DXFouRixMqw==
X-CSE-MsgGUID: 744jhWy6QYqEssaGteGyDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,280,1754982000"; d="scan'208";a="187031602"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:19:44 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:19:44 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 20:19:44 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:19:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MvqXuh9mbImpatQhnyUpWvtRs6k8CslV8xmgLlBVZASfr8XSlTLjWKzEuef8NqP3XApW+Jfc2RpqC1wbTDbUw1LOwkzIgspVN4aP8X9QHqLWf9y2Jvj+DAe8EOPi/GpQz/3XvjqLKzpp92h6cEHD1si0ned7fWcJMklEYcHc8RfzP28f8725njfRM4QBG0vZhlhWE/83DF79y7BEj5DZyJY66kTXwd1hmGmsNRd9bzDUhVM/+4kKuTl5vlqC9hZXHRPhd1gnUgM6L3NegHcC4xfETITIRzqYzEHc4rgPcifh6/hPhAS7njOnYL4vltWR4cjJV2XQDg2GcZ3lLX2iKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t8GTREoBVjDLXbS8BVAiFv1hTjTO4Dn2E8AQcs0JR+s=;
 b=KVy+KHzJle8NsD1BE64K8FqVs8yCfaqgOHUMg6bVaKwa7p4Y1Qdyv+Kq7+DpumHp0lnzkt0mrZCEQv8JNSyJpvBU4/akML0LNkEpnfCZD0HWyy+N7I0qbozybDKT38yX4wqdAJ40VaTN29y3P+dl1CznvEajZkKmYUyWJyC2Awsuu2k298ESBHgRt3WWSEzE1Fes1u6tHihi6MgQM+SOqGuoGomLZWRqbeATIwG9daReSf28d4A9EpQ087OwkFomZsD3iN2BEMsF062ckeC5Tpk1GmY7fGzW13CKxmHdrspbSCENsK5rT13fnMWjeEyuGY6RODNhsK2XC/+ZaRaLKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7556.namprd11.prod.outlook.com (2603:10b6:806:31f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 04:19:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 04:19:42 +0000
Message-ID: <08b53254-a364-4c5c-a472-d2f4cd3b25cb@intel.com>
Date: Wed, 5 Nov 2025 09:49:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 03/22] drm/i915/vrr: Add VRR DC balance registers
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0251.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7556:EE_
X-MS-Office365-Filtering-Correlation-Id: c4144400-c584-474c-64ee-08de1c228b3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZDFKMG5VaXlXblExalRVejRVVjB2MmpKbHkwWmV4Y1BXV09TbzQ0M3lGb09u?=
 =?utf-8?B?YVV4N2ZFY0JPTnlEbm1rUVlUSFB4OW8vTndvUGN5c0hwRUlxWVdlOE9XOWlx?=
 =?utf-8?B?RVJYLytQVWVrQnJhQ1ZGLytvZEdBS0Mya05ndU5ORW9ZUTNQdmVrUm5RTTdj?=
 =?utf-8?B?T2NKQlcwVnd6Mjlkc2NpdUp4VHg0THFuQkc4aHlWZkhReVY3bkhidzJiampB?=
 =?utf-8?B?RFltN1JyVlUzeHY4OUlNellDRzNLcEFCQ0d2Kzh0RXQzTStwcW9idWkrTlhL?=
 =?utf-8?B?N2NKVldYSEVYeWdLOUt5N3pzTnQ2eElpL3BTam1DUFV4QVJvMkJabWwzSk1s?=
 =?utf-8?B?V2R0SUJaNWlFK1ZyRG0yYkZIT2RzR3d1SEpqZ2t0WDZCeExSMjRyc3VzMkNZ?=
 =?utf-8?B?STgyWHNjeW1La0NsOHh1cERSQVNsWUJHMXBiM3pTa3c3UExoa3JSOXI5V2ZO?=
 =?utf-8?B?V3VCMkJaeTk5dEt1eTVPbXByOVdpOFdWNlZsUGkyNUJySlN2Mm5FazhZQ3Bt?=
 =?utf-8?B?NHJoeHNCV0FXWktUSFNrdjJVaDdzVkFhUEtlVVZJUmRBVXh3bTVEZCs2NjFa?=
 =?utf-8?B?d0duelcxQWV1ZzBKeno1S3ozMlU3MHIrcWpId2xJa0x0NmJya1hYR3BqSlY5?=
 =?utf-8?B?UXdkdzRDZFNxOWZCMFB0amV3ck1yKzBrdFF4cWNBNjR5Njd0R2IzU3FYY0tF?=
 =?utf-8?B?bGJSZ0FpVHBOU1Y1Z294ZW81RXBIT25MUjl2UmJCTkZabmRkK3J6VTYrQlBL?=
 =?utf-8?B?UGpIZGFnUXd4NDdEOS9EWmtLNG5lT21OVi8raWJjejIzc0ZBZHRKSEYrc2pF?=
 =?utf-8?B?SDRnVmtXbDVReGFmVkc0VVdxc0ltT29OZU5BdVhWM3JGaklzeGVSSDZkY1hs?=
 =?utf-8?B?VENUWUJyOXJXQzZaVmJST2dNZE9pRkhYaHhDK2lHbWtrdDFQYWR4S0srWkxn?=
 =?utf-8?B?eEVSLytOcGtvRkNyeTMySlR5bVRaQ1JaVEhHMFVTRTl4U1Fma2FwY2NQL0Fo?=
 =?utf-8?B?NXpRK3FzbnRxbGErUFJRTUpJbWN1TTU1S2NrNkFLdFRlWnNPeUhTVVI4THMy?=
 =?utf-8?B?eDdGelJ1emgvSGJPVDc0MGt2blV1bEdrWC9qOC9GWUxDOExpeThKY0ZEMS9s?=
 =?utf-8?B?OTRWMm14NTZuZmRYTUM1Ym11dXB0ODhjSlI3cmFNTDZ3Y1FPckptd2dQaldX?=
 =?utf-8?B?cTVTUmIrcXBMM3VKNG9ud2hwbS9Ub283cm5aZkdFNFVFZHlyL3VBUkZPc1oz?=
 =?utf-8?B?Q1B5cG5URGNDVDN6R2lSV1YzRWg3SVBXTGlZV05tNHJkQm9XcnYwYTVlQzBq?=
 =?utf-8?B?NE1DcXJiTk1HT0pzSG1pL3J1aWdmQjBiRllKOFBQQ1RiYkU3ZzFIUDV6ZEZX?=
 =?utf-8?B?MEc2TDhMSXhuQVhCN0tBcSs2U2ZnVXFlOHU0d2JweGtaOUpTTzBXTml2T1FW?=
 =?utf-8?B?TGdobTdld3YxUDc2aURJTnVoTHFPMkd1R3FSOTBKWnU4Z3o5b24vMHlia2Fj?=
 =?utf-8?B?ZkhQL0lqcExkRDZDa2dMcnhMM2pBeTZva0ZnZ2tMTXZKMWNBU1gvVC9mUWxp?=
 =?utf-8?B?UHRQTVl4aUtCdmZkcktYeVlSemJxbmhyV25IME9JbFFueFA2WDQ0UU1NS1o1?=
 =?utf-8?B?SCtvR0pHVFdSZlR6Tzk3Y00zRjB0bTd5TXlvSXoxRXdkSXFiWlNvcHBFY1gw?=
 =?utf-8?B?ZjE5cEdYZ2pVWXd2Z0xTaDBjSVFnSzFOU2NyeFIxZFZObUVpNitSRFVwYmdh?=
 =?utf-8?B?Ly9RaEdTWER4bE9KK09nVWRtMzVBaE9qbXkwZmlZbDNvTWVOeDlTSldDZWs4?=
 =?utf-8?B?QVNGSGFvbSsySFYraU1LUGRFVmo1L3FZM0t1TnhGVGRGaXBUYjlZVk1sRGV2?=
 =?utf-8?B?b09jUE1uYUpaMk13UHpJS0xYcHcwNDNzVWMyVHNqL0JrNXJvR3RCVFhPNU9t?=
 =?utf-8?Q?yhokPa1nYwITLhm7xwCB9/GqZmN1ASPF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THhxUjRSMnNuZFVFQTNwWjQ1MkhhWDU4cnN3b0RYUzNtb2FTSEhYZ3Q0UFdK?=
 =?utf-8?B?aWxPWXdsNXZUTXRKczBSUGxmaGZwYkppWEtsZ2x3SmFHZThLWDZVVGR4Tnp4?=
 =?utf-8?B?djhVZkdScVBZbWpzOFhpMDE3MktLaWU1clNJRnFhOS8rTHltTWI5bkJsdW84?=
 =?utf-8?B?alMzUDBRZDBFTHNIaWdOM0k2Zm9TVklOV0xlWkhZeHo1eTJpRVBFQnhNelM5?=
 =?utf-8?B?LzcwK2NCRFJUNExXWDdrSW5OSW4wNkFFSjAvd0FIR3ZRaWVYcXFpL09JU1pV?=
 =?utf-8?B?bGdKYXEvcVN0NmllK3FQSEswT2JmY3RXSGk0ekx1OXBISG9nRnlWUEExbVdu?=
 =?utf-8?B?bGcwSHBVT1NLWWpMUUhNU1N5SE0reDVaRytNR1NXdnF5STAwUUVMK3pWMTUx?=
 =?utf-8?B?L2M0TVo5bzRUWlNNQm15WmtaRk9SNFZLcnpvZWl2R0NJbkhmdFpWbkF4cks1?=
 =?utf-8?B?ZHNqb2FGRHpQVkRsR3ZRRVVxSkp6UmdNM3VCcHlnSkFJTnR3NGYzTG9TZG9n?=
 =?utf-8?B?NXJ6N2M1U1d0YytuU1Q1NHdLdmMwK2drN2RkeVgzMDlxdzl1T0JSNDJFeE5G?=
 =?utf-8?B?TnRyZnZFVFErTWdTdmVja3Fmd2hzbDFVT2tWN1hXVythcnhYeEd0Z0pYbEd1?=
 =?utf-8?B?SkxhWmF2U3E5bGpGSEhUMUVXeElrQ05qbW9DY0cxSy81Q0syUS83TUpoS2tW?=
 =?utf-8?B?YkxwbFZ5WG5OdTUrdDZpRnkyRUl1c2E4STF3cEpjemVGUk5hQklUdlNWVkp0?=
 =?utf-8?B?Z09PNTQ3ZzVHUTArV0Y3ZjVMNGo4OUo2TEFqd25Bc0hhRDJSZGpxNTZRRmpD?=
 =?utf-8?B?T2ZURlJFMWo3SUQrck94a1AwZWljQjVpbUFOMTNaSE9WT0pKd09wTlRjYk9Y?=
 =?utf-8?B?Q3pyTXFTUG9MdkFDVEtQcUhQNVYvcTRyb0RHNXRrSUduTTh3MTVsMXowbyt2?=
 =?utf-8?B?dytaZjdtOHJHdkhCMk9ZTWxZUmRnQUExbWhzcWYzRTlLeVJLaDVXdktJa0Nu?=
 =?utf-8?B?VWRXSlJXc3Irejg0R3NBNUZXRnVmREdjM3FZMW05YXJiRW5wYXBoOE51bWJk?=
 =?utf-8?B?NUo3MHErRTZHUkpEa1dEWWgrQWhtUHVBZEJ1UEFNM0M2em9BTlA5RUpENmdD?=
 =?utf-8?B?Z01xa1Y3M05ocTBmRkJzSUpCVHllWnRmZzhkTG9PQ2lPWTJCMHFnUjhWYUlR?=
 =?utf-8?B?dUZYUlc0NFl3SVV0MWZ6RGRPOGNYM29Xcm5ZMDlaNjJPUEdUa204Y25xL2Jy?=
 =?utf-8?B?Y0R4QzNDZE9GclNySnpaMGR3ZU4zWWNvSFphVjZGeW1QZDFtcGZra0xwdFEy?=
 =?utf-8?B?eVhXMkQ4YlFCNlcvWEFoNmFPaFlyeWd3MzB5NDgvS2diL2QvVmdhUkFYQUZE?=
 =?utf-8?B?Y2N0cjV5UVJwUVZpRkUveEUzNW42SkpRYlhOUTRydWRHa0NPdGYrRXE0SXdT?=
 =?utf-8?B?Q2hvVVV4ZkZtN1J0NEJzZEJVVzE2NWdzazZiazhGemtPUC9Vbmp1VzB3RUFo?=
 =?utf-8?B?bElHTElEMzkvSHplNzkrYTlkZzdqa25EUkY4REVqU2dEN2RCSG1xQmxzSGpz?=
 =?utf-8?B?QmJDalZaY25ncFZtN3J5QUZNM1laYlB6NEZ5aitRQ0pnZFM2a0prQ0t0MUdt?=
 =?utf-8?B?SlpzcVhPanppL0RpYUhjeW9YKzBOc0JYY0tLYXBuMUlXRk9nQzd0ZnlXYUV1?=
 =?utf-8?B?RTlFaWI3b21PV28rVHg1VXJLdkovUEJxMnRaU2s5NjdBUVJxQWVyV28yaFZR?=
 =?utf-8?B?c0crT1hQNVhEdmFJb3ZMQjdiWTlsNFpGZWptbmxlQThmZkdDRi9YZlo0aVBw?=
 =?utf-8?B?Mnd4THRtK0dZeVFnLy9oNVYwYWZDYWhlVXZnZWsvSTM2MWVkRkU1YWtNaTlH?=
 =?utf-8?B?SFA3RjI4TE1xWFlLbjhYRXBoZ3pXcnBpZUdhMDVTWFY0MHE2U0NLQ0FZWkJU?=
 =?utf-8?B?cWVvSGFIc2FpMlE4WEhLcTVKVUEzYmdmS0pJOGNlYy9BV1I0cnlITzRQYk1J?=
 =?utf-8?B?c0tHekRnVXlVOGVSSjlhb2pqWHFFcFE5S21nSGZSQm8xV04vOGJjcm1MVU9t?=
 =?utf-8?B?MEVtVXAwMDhIRXgxODBKdmdHK0hpcUFqSm1udGVmSHdKYUw2WGpxWWgxOTRX?=
 =?utf-8?B?amRhalV4RVhVajdjc0tONnRjL1JCcVBUZGkvSFZ6OElkRnluUFQ1QWNDL0pN?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4144400-c584-474c-64ee-08de1c228b3e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 04:19:42.7132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kk85DJn0sfaQTUrgB2ft8mPVOQ83QdbXMGPb0AQ6uOHDm2gWRCuqXWJEZpmctReGBlX5tvol05qBlldf1AmEfgPhXi01zOcqqvxKUPrwWK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7556
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> Add VRR register offsets and bits to access DC Balance configuration.
>
> --v2:
> - Separate register definitions. (Ankit)
> - Remove usage of dev_priv. (Jani, Nikula)
>
> --v3:
> - Convert register address offset, from capital to small. (Ankit)
> - Move mask bits near to register offsets. (Ankit)
>
> --v4:
> - Use _MMIO_TRANS wherever possible. (Jani)
>
> --v5:
> - Added LIVE Value registers for VMAX and FLIPLINE as provided by DMC fw
> - For pipe B it is temporary and expected to change later once finalised.
>
> --v6:
> - Add live value registers for DCB VMAX/FLIPLINE.
>
> --v7:
> - Correct commit message file. (Jani Nikula)
> - Add bits in highest to lowest order. (Jani Nikula)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 69 +++++++++++++++++++
>   1 file changed, 69 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index ba9b9215dc11..f828db55d9b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -8,6 +8,74 @@
>   
>   #include "intel_display_reg_defs.h"
>   
> +/* VRR registers */
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A	0x604d4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B	0x614d4
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A, \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B)
> +
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_A  0x90700
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_B  0x98700
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(trans) \
> +	_MMIO_TRANS(trans, \
> +		    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_A, \
> +		    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_B)

This is a bit awkward to read, can we have this in same line. I 
understand this will be more than 100 chars but IMO that should be alright.


Regards,

Ankit


> +#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_ADJ_FLIPLINE_MASK, \
> +							       (flipline))
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A		0x604d8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B		0x614d8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_A, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_B)
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_A	0x906F8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_B	0x986F8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_A, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_B)
> +#define VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_ADJ_VMAX_MASK, (vmax))
> +
> +#define _TRANS_VRR_DCB_FLIPLINE_A		0x60418
> +#define _TRANS_VRR_DCB_FLIPLINE_B		0x61418
> +#define TRANS_VRR_DCB_FLIPLINE(trans)		_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_FLIPLINE_A, \
> +							    _TRANS_VRR_DCB_FLIPLINE_B)
> +
> +#define _TRANS_VRR_DCB_FLIPLINE_LIVE_A		0x906FC
> +#define _TRANS_VRR_DCB_FLIPLINE_LIVE_B		0x986FC
> +#define TRANS_VRR_DCB_FLIPLINE_LIVE(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_FLIPLINE_LIVE_A, \
> +							    _TRANS_VRR_DCB_FLIPLINE_LIVE_B)
> +#define VRR_DCB_FLIPLINE_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_FLIPLINE_MASK, \
> +							       (flipline))
> +
> +#define _TRANS_VRR_DCB_VMAX_A			0x60414
> +#define _TRANS_VRR_DCB_VMAX_B			0x61414
> +#define TRANS_VRR_DCB_VMAX(trans)		_MMIO_TRANS(trans, \
> +							     _TRANS_VRR_DCB_VMAX_A, \
> +							     _TRANS_VRR_DCB_VMAX_B)
> +#define _TRANS_VRR_DCB_VMAX_LIVE_A		0x906F4
> +#define _TRANS_VRR_DCB_VMAX_LIVE_B		0x986F4
> +#define TRANS_VRR_DCB_VMAX_LIVE(trans)		_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_VMAX_LIVE_A, \
> +							    _TRANS_VRR_DCB_VMAX_LIVE_B)
> +#define VRR_DCB_VMAX_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_VMAX_MASK, (vmax))
> +
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A		0x604c0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B		0x614c0
> +#define TRANS_ADAPTIVE_SYNC_DCB_CTL(trans)	_MMIO_TRANS(trans, \
> +							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A, \
> +							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_B)
> +#define ADAPTIVE_SYNC_COUNTER_EN		REG_BIT(31)
> +
>   #define _TRANS_VRR_CTL_A			0x60420
>   #define _TRANS_VRR_CTL_B			0x61420
>   #define _TRANS_VRR_CTL_C			0x62420
> @@ -19,6 +87,7 @@
>   #define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
>   #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>   #define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
> +#define   VRR_CTL_DCB_ADJ_ENABLE		REG_BIT(28)
>   #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
>   #define   XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
>   #define   XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
