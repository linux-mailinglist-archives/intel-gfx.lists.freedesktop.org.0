Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IcfDJd7HWrEbAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 14:31:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB3361F4A8
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 14:31:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D4D1132D2;
	Mon,  1 Jun 2026 12:31:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ALJCWSw2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F296A1132D0;
 Mon,  1 Jun 2026 12:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780317074; x=1811853074;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vPc5E/eQ5Y1Tmji+WI3lGu0PNCaaqtTJywu+BCz1Zcw=;
 b=ALJCWSw2iAAWgOR3Z4S5CxhKd6xNwHqCmhojRChrt5VJTOW7P4Z18LU2
 G0hSSoSJjKuW0gnMs430OpKG6VqQN0Kw3LXRoqOxiMqpfWIMHJ/+29/QT
 WwmJ2KibpJtPiGrbyqTJ0eakAfmop8wYGD1Tj3+gbNnjdT2+0tLOrHzeO
 0E3D9CR4sT1lOTd59MtdDQy1cMIENhU4y7ycHK4ibOUZTkDzjhDsLVnmD
 k7eI79lAxMH+FeKXAfk2wVEFUkjXEocJSFcCGFKiWBIZ5SPAhELnwZPEK
 LusAX099bNmMJvrdCyTc8rNlsuOnUjBvZ8SdT/t168MrLxbBv2SH7T20r A==;
X-CSE-ConnectionGUID: v2m8j1hqQvCX+GNMXIma/A==
X-CSE-MsgGUID: STjmVjh8TaqqIRenJnpTpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="103742675"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="103742675"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 05:31:12 -0700
X-CSE-ConnectionGUID: oSk0TcicRgCam2FyO9g7Ag==
X-CSE-MsgGUID: 6wAeXs0BSFyn5+3PXZSzUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="245390566"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 05:31:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 05:31:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 05:31:10 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.45) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 05:31:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gUe5acnOuGtqrjp7xkpEH4hTTr0ZIdB275gbcDnqU+yNhMPigp0Qh96hCqFxuPezf5OW3nbhL/QQp2xDsEXelagfc/RSiaHAy5tczszH9v0p4JjJ17tDEFgtH+dQfDi2Gaysfijpo7FRxIQemyUJ/qduEYfGuIICiPx9WB7GoUQSBvMwyU8K04kQlmzBB0K7nMUuYa0ikPpWdRQGnWZMh0Ne3Yr0d0mw94cyaCXTsKdEFJfutuFCsA53UYsqCnz/nopSZwGKclr9Uuf25QZUljAKLS9HNSxCvF5+UUb19cbcdGS3rc1iGpGXr3OJ1evV7gdIkiBg+UjIp1L8C9pSzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q60gZOTaPBI2CWRkGUaoxarnPelDViLKvfXi6noKOqE=;
 b=c7q1Thusv5iMspijGvgEvqkhdPmwE4EpiMfEX5iuK4YVAyNAGGSbRJEA8M58nQ4CBQFsN4T+o2SJfT0vWOa0Y0uxen6FY/iGOt5FOfV/3c4TMJWHDjyrnrZCDiEDT9pMmje3GKd+2sTVmJ03Zdx/z4vxDl6/THS5nOk/1ddrfXi7QREGuShcyx6/yGPNUuRqfPj5AT6IwRBo/5sOyRoBGUyKpLEyvL93fPFiTdC8zP/Tt+cgESQSYVCyHwWRRXQhHzTWyKM9cAJshQoUMWv9XjTuNAb1hIjkxn5M1cv7KBM6XGdKcJUHa2gYeC/juSt2HOg8m4NRSlpTiIGCdAfH/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DS7PR11MB9475.namprd11.prod.outlook.com (2603:10b6:8:26b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 12:31:07 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.014; Mon, 1 Jun 2026
 12:31:07 +0000
Message-ID: <724cec1e-d404-4194-8c44-86c940990064@intel.com>
Date: Mon, 1 Jun 2026 18:00:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/13] drm/i915/display: Add DC3CO DC_STATE
 enable/disable support
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-5-dibin.moolakadan.subrahmanian@intel.com>
 <DS0PR11MB8049E4F5077945466B39A870F9152@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS0PR11MB8049E4F5077945466B39A870F9152@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4P223CA0007.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::12) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DS7PR11MB9475:EE_
X-MS-Office365-Filtering-Correlation-Id: 48b9e532-83e2-4072-d9f3-08debfd9a73f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|4143699003|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: dSRw1Y7y3Ut4F6u5XCtvnFQKi16aS4zIn4uI/OPI80mBeekvhpwsR09sWlpFVayxCYcT1JjfbQoXy9Qjy2NuV8d63bboaQXXNWqwSURPCTgmHphuah10Lr+nh4Z+xLNq5oDgshuDyHJKNL9n1PjI3s/wipParqoNX+ays2RyzKlvwrFGpmZRdcpLS70cRqiZx2oq9MVGQPZCcWC+c7EOONBDdkFX6oDGDBicshoJDtYVQgxJ260D2Gc6EdXOHdjxcI6qTEL4FI6UYTD3cXZA1Fd6MMSGmGRvWMRG87FtRbq45krXxEzDqzNztMm5BTq+4vpKi8tzqWIm1a5PDl/J0/41tMqDyH7AXjN2b1hcN2J8b8Moc/eXwuCFRm4yUcfEkIkwD21jDEBU7M3qquM0YUsAAy21ad+BYrajiwKt5L9GfpIVzENB3EGwgKvZVexUa3Tz8imEWwpVGxYAgt25JUOWFiLI5NoM9bQk2d2sU2ye+BPz6MI6Puv7XC3302dMvW3PaO0gLuPVvjtpiTmHR+rBwvFxL//7kr29KkhkFl6ddXr/a9EhsU/3AUlLV6NfGaNNp6Zjt4XxEUNgUeROw9WBXzzZfLMcmCwZEmJwy7m0hM7gUTf8+MwJtppk3cyEiRy3KN53pI037mKIzjzbjHC7QHDF5UXHpN9SMM5bypTSDKN5pKlmy36tuWIPYCJz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(4143699003)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MVRnTElXdy9KQWJ1WG0yRFNmTnFURDFleDlDaWlhSUdTNzIrUWZtUzN0QlNE?=
 =?utf-8?B?TURjRTRzQzI4UXRSa0lCRFdnYW5TZy81eENJV083b2RSTkFsZW9KNldlR2VV?=
 =?utf-8?B?SkRqTUlxQ1BwZHM5THdyRUZCWnM1eEtIY052MHZQd2R1ekRxQlpJbGowQjFk?=
 =?utf-8?B?L210eDdYQWZKbGdMSjE2V2JERXlQa09KOG1tcWtiQzZtazNqVDFCc0JPUkMv?=
 =?utf-8?B?VURnNWhCRll2bTVXTmdOT3NjRVhFNWdsQW9pd3BNYURDK2pKM2dOM3RScjM5?=
 =?utf-8?B?aVY0bDBTcHRBMXpvSjJPb3F3L3Q5STRHVnpzR0x5K09QR3EvQWQxeXUxczVU?=
 =?utf-8?B?TURuTVpDRllUUHE4ODJqYzdzZjY5ck50N3Y4VnhyTDN1VFZIQ0NwQUJ1YXR1?=
 =?utf-8?B?S3BmR3hBdm1LSkRTak5tWjZ1bjU0ODJwQ0I2di85S0M4cVloY2YvclRZTW1s?=
 =?utf-8?B?MUV0ZTdtcVZ2clIxYUhaRjZCVS9qYWkrNzZkYXRSM0VkcGd6bE9sU0RPV2Vv?=
 =?utf-8?B?cEJNUElyYnc5M0NXSWtsbHJMK2gxd3drd05rZ0NvWFVRZmFhYUNyRElvbDdu?=
 =?utf-8?B?ZjNOWXE0a0xUNnhaYllsaU93ZlEyY0c2RGhnRjJ2Szdtd1ZKT3JrUVRkUjU3?=
 =?utf-8?B?WFU3dVdWcHhLTlU0QlBXc2Q1RCtjbC9wZG9RUmtaZlVhbWhsOFhTRWk1WWxE?=
 =?utf-8?B?Z292NkJaUjR0Wk14YUFCZFRyQmNRbTNIZGFvTnNha1d2cFNvcDdoVGtYU3Fa?=
 =?utf-8?B?cEtOQ0hWdlNSdFppaGo4TGhscS92MStmYlRVWUI5aGFsRHJVa2poL3loTHhl?=
 =?utf-8?B?aFl2MXBONzUydHhyNFl1c01HYURDU0pBbjNVUk1ieDVPVjE3WkYyRk1LSWxz?=
 =?utf-8?B?ZFAyY3o4cmx1ZkRoS2FiTDVuYWhqbk9uVVVHYndlWHhyNnBFaWg5SWdJZWsy?=
 =?utf-8?B?bFVjczlGanJhWWt6L29ZRXVsZ1dqRFJUckhycTQ5dkVvVFgraXhFVWpFU3JJ?=
 =?utf-8?B?K0NyZFNZUTN5VVpGL3JCOWhBU0oxR0ZtZWhLYzFKRG5XWTUvWkJzMXBpM1Ex?=
 =?utf-8?B?dGt5TVhQYUdYQTVRbmJIVk9RdVRaVDRLc0sxVU9xMWg3a0F0Vkt6MjR2Zk1p?=
 =?utf-8?B?dFBIeGtNS0oyQWxkeUF6Z1ZkbVBsQmI2dzEvMDgvLzlPVkpuclhFM2lIMWZC?=
 =?utf-8?B?eTgrditJaFd4V1pTbUcvblo4Q0lHNXM3cEhLSkpJTmtaQXFKV2F3Ym5TMVNk?=
 =?utf-8?B?SjhwWEdjdjJLeTFKVitia0RXTGxVZnIxc1pqSVdGQkFZeUl5NGJneGdIVUQy?=
 =?utf-8?B?dzJuN0l4aW84aDd3UkxEUEdURmxrMWc2QytPSEpzeCs5R3pBN2RuTktRRXEw?=
 =?utf-8?B?TGpxMXJPWS82MlpZS0x2VW42ZDV5UGFUQkd4eW04SXR2c1g1ZGxsM0k5M0to?=
 =?utf-8?B?VTl4UWdNYXJrcExKWUlzb0V6N2JSOUdMY1A2K2lsTnE3QlBaOWZ4a0QyTU5k?=
 =?utf-8?B?aXJlS1RjT3lOdjFLT2RDWFBxNkhGWUEyOXlKekFCM09Pbzd3N2ZWdlpUTlRn?=
 =?utf-8?B?dWNTaUNJaXNMdDRuNHZqelFsZS8rL0gvZkt5b0R2bmFxSXFnWFBIMWZML0FM?=
 =?utf-8?B?RnhGZm9LcUNrcUxid2d2b2JxeVc2N0loUjByTnBxUU5wVzR3OE1tWkF5WXpo?=
 =?utf-8?B?alkwR1RFa0VPaUNZYmsvOC9pSHpCRWhNK2kxK3VGZjNTTzhjdVg4ZnVHTzlB?=
 =?utf-8?B?UjZPZGZYV3N0alJKZFF3ZlRwSDVESzgzc29IU3NML2d0QUlZYWdRZkNiY1VS?=
 =?utf-8?B?RVhJM3RobVM5K2NhMWFVMDgveHI3Q2pKOTR3VmZNanVzS1FueTFveWI4NnZ6?=
 =?utf-8?B?dFVaZUdnZ1ZlQnhrSUVCNUJGSlZHbGtKM2dFSjFXVVdYNVNXWUJ1V3BHc0tJ?=
 =?utf-8?B?K25vakdFRWJ0MlNKYVE3T1dJUXRrVG8vZGIzdGJKK1RWVjJydVRwakw4M0lw?=
 =?utf-8?B?SmJrKzdWMDhWZTFsZkNRcUU3NHQ1QXJqRmZSaU1xUEJvVFM3SlAyeEtmZ2pt?=
 =?utf-8?B?cVhLMWZJS25VRHcvdEZiakJENlhNSVBTaUoxd0V5OGtPTWt1dkUvTkgwZEtp?=
 =?utf-8?B?cGFIdUtBTXJxZWhTcWxHZmI2aW8yQW51TmtQWFIyeU4wTWhJVUI5QnFZc2wz?=
 =?utf-8?B?SG5FTldnbUdtVyt1dU9KWlp1Qk01Ly9WWUpRRUlZZ0ZERm1kYUwyV21ON2dw?=
 =?utf-8?B?aXNRZHZmdVNEdnVydi9WeUpGQUNUM1RUWVczMGI4TGZWRlp2cERCcWdwSzBm?=
 =?utf-8?B?TUVIc05IQWxxcVN4NUF2KzRpS2pNOUcwUEFWeG9HM3YvM0tGem1KZnQzMVVl?=
 =?utf-8?Q?5zIye2Xv1nM1O9XuxneuZhADFE4Qt8D+8RP87D7NekSBl?=
X-MS-Exchange-AntiSpam-MessageData-1: lw0A39SjY90FQA==
X-Exchange-RoutingPolicyChecked: akmT7WbvfxaobVdId2VTfpA9bgPMsY5APRY66uaV1kzwuWlNn5MQItvAwGx970E7mLk0WiLoSatBbCWOlaue4ifgGIAZcTWQerzx1NAbWnfUpc3AO7EOo0QmUmGK8rX0tYylrGHh/r/A75g23KuCgvmsN5s7CZC10JQrDjRk2b9n0JCez8uDXO+/x/IMMY3JS6UythB3n9E66YQOQH3CQsWcIkFa7LrVwxHNlhwBO0uGiKmfZNqWQ+GxgQVBhNfl72erkqEry0ueWWKIaz4mGFsm5xzw2MCvXY6tYEf/yr7BFp6/kkA7oICF21wFT7duXher6WomvpxU2sYCN61RsQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 48b9e532-83e2-4072-d9f3-08debfd9a73f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 12:31:07.1675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I+oK298wGe+aOJTos10PuSh5rj6NU5WXJSsczK2QZt5cj2kF2xKlkoMd72yVfiUBV89o/NRnBNKNKLSk1r4KGrXhk8NXb4b/vSHwRxerPFCbpefYLV4RjE1EkZCVJ4fN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9475
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8CB3361F4A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 01-06-2026 11:12, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Wednesday, May 27, 2026 12:48 AM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>
>> Subject: [PATCH v4 04/13] drm/i915/display: Add DC3CO DC_STATE
>> enable/disable support
>>
>> Add DC3CO handling to the dc_off power well sequencing and disable the
>> DMC wakelock when exiting DC3CO.
>>
>> BSpec: 75253
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_power_well.c  | 16 +++++++++++++++-
>>   1 file changed, 15 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 611f784d8a7a..3ea080d0e21e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -866,6 +866,13 @@ void gen9_set_dc_state(struct intel_display *display,
>> u32 state)
>>   	power_domains->dc_state = val & mask;
>>   }
>>
>> +static void xe3lpd_enable_dc3co(struct intel_display *display) {
> Better to add a assert_can_enable_dc3co() which is followed for other dc-state programming.
Thanks, I'll  add this check in the next revision.
>
> Regards,
> Animesh
>
>> +	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
>> +	intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC3CO);
>> +	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC3CO); }
>> +
>>   static void assert_can_enable_dc5(struct intel_display *display)  {
>>   	enum i915_power_well_id high_pg;
>> @@ -1054,9 +1061,13 @@ void gen9_disable_dc_states(struct intel_display
>> *display)
>>   	}
>>
>>   	if (old_state == DC_STATE_EN_UPTO_DC5 ||
>> -	    old_state == DC_STATE_EN_UPTO_DC6)
>> +	    old_state == DC_STATE_EN_UPTO_DC6 ||
>> +	    old_state == DC_STATE_EN_UPTO_DC3CO)
>>   		intel_dmc_wl_disable(display);
>>
>> +	if (old_state == DC_STATE_EN_UPTO_DC3CO)
>> +		return;
>> +
>>   	intel_cdclk_get_cdclk(display, &cdclk_config);
>>   	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
>>   	drm_WARN_ON(display->drm,
>> @@ -1092,6 +1103,9 @@ static void gen9_dc_off_power_well_disable(struct
>> intel_display *display,
>>   		return;
>>
>>   	switch (power_domains->target_dc_state) {
>> +	case DC_STATE_EN_UPTO_DC3CO:
>> +		xe3lpd_enable_dc3co(display);
>> +		break;
>>   	case DC_STATE_EN_UPTO_DC6:
>>   		skl_enable_dc6(display);
>>   		break;
>> --
>> 2.43.0
