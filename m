Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FCFC9212D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 14:10:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2374B10E123;
	Fri, 28 Nov 2025 13:10:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RuArV7qF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9BFC10E123;
 Fri, 28 Nov 2025 13:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764335418; x=1795871418;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6S3cUzrBGi8ioSJHZCqIyCEvvU9xWDcahWmaSB7NzT4=;
 b=RuArV7qFxNeIRIujJFU3Gt9jYHW3ya1mi+3wQw5gxO7W6629d3OYH0Qu
 MLNgw70SNoOCO03x6Lk9plyvTNI4v/tuksZemQhq8/WGez0zpVwkA1nfW
 553hUXlbnCBA/QJMTZY48TtDEv8HFbu4FsuyKh92+93gBuH/6KtuRAia+
 10KtyB5tMZrCUbkBU/9+k9IXUOD64cpPLfMGEvFmp6xC1fslqd+lfNLCm
 jRNTyhkuTB3OrfPaGRNKc080PAftOOBkgccDNNosOG83Z2evw0qz3SEss
 ywjIdSqBBdc7W60LPDodt4R1FGtRzoaQDXjNJve/11rvjgnsjf29XqQPZ Q==;
X-CSE-ConnectionGUID: HvUB4cqxQx+NJVH5tSHuaA==
X-CSE-MsgGUID: Q+VnGKA1TYuHOrbeJ1p2Cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66315358"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="66315358"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:10:17 -0800
X-CSE-ConnectionGUID: xvbtJTrfT2+TqKZw7imxKg==
X-CSE-MsgGUID: TCLMh7S4SlO7W2Ak/nuWSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="193462096"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:10:18 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:10:17 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 05:10:17 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.55) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:10:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gqldyA1pn9E7agsINzRwACZDyi2aKMC4pul+2oeIDcrIEJ4+BYvt4W+KfrGL88iLdhbZ0HfiOcp4h4N2ybnS1ArUaTNPpjF0JAoNzys2M8koNy1KFUzx3zUmyCOUuebcqERUsJ8o39ADRflbtx022pdbHpBwlmHA62QftIdoaIIaWwuqN3CB7M2w4WmIiHhaZ9alSf6qpwhQioEvkhoPTEMLCb0tqA/4TzQXtwuHpeNqbWv4InXZNv9p2KQN+KMJns0xpTT0F2uusyY1jr/+j+e7YLP/aqsj5+EMD+8batYaLy2NhArSSYdwXZJ4xLW93OpBLRgnR3fyeBJaMpUzfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ATddF+M019oJNUrIq3bkqSuKhl1wtj4kjoufEIod/M=;
 b=wZqc8cIgIlisWKYcVexAb8V0r47PmqbiU2dgd4+xXGIVnziwDnGw4wiYE9wiP2TTkbZUz6+WJSiUTCKdP0OxxfPscE96XrJZN8dv6c3dapQQnsNyUGbi9Upw9d+DLLy4Nz6N9CAClqa3owuso4pmG20ax/oyYnLQ+URF6fCKzHYMT8NxQXg3qThXS0OeZtt4N5raiM6jnfTOjl3FR93K20+lOIvOdtegMFFFzW0r6BRCcnc7U3gb1GnI1a0SZ4CY0ul1MrZBFitHhYC6EpVPXPVSgV2Eh05Nni0BD8inpoy0lYwtNokVYRvfYdENQkqv3scsceQL+haQuT8m4mWAFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB4733.namprd11.prod.outlook.com (2603:10b6:806:9a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.16; Fri, 28 Nov
 2025 13:10:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 13:10:14 +0000
Message-ID: <15ccb5b6-2e28-4b93-a907-0eb314cb5a1f@intel.com>
Date: Fri, 28 Nov 2025 18:40:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 07/17] drm/i915/vrr: Add compute config for DC Balance
 params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251127091614.648791-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0163.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB4733:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d255797-c851-4365-ec02-08de2e7f781e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M24yT0pkbGhnaGFObjVsdmdjei9VWGVGK29FRmRBWmV0ZklBejhyWmxUWC85?=
 =?utf-8?B?enl2QXJWS0ZMNHN1cjdXcWxoTVlqT09zc3Z0MlptWW5iR3dma2loNGdyU1E2?=
 =?utf-8?B?WFp3dFZKdWJPNFBjQ1B3MU90Q3MvdzAxaVNYQkNHVTZ6ZGQ3Y21YMVhNT0hh?=
 =?utf-8?B?Mjhod0xwK3p0OEUrS0ZIRVNId2E0Q0FzQ2dZRWQ3TkxWa25GbTBXaWEyaXBO?=
 =?utf-8?B?cVozZ0pMWTVmZnJKdTFKV2tVK3cvWkQ0enhiT1lSMTh2aW9HcUNlVlB1Vzdh?=
 =?utf-8?B?a3h2d1lDcnZlYytLSllZTDViTlFZVysybjhxNW9Ha3hFdERaVlYyenVtWGtt?=
 =?utf-8?B?UUxWNkkreFljSmtESlNwOE5yenA5ZFdKcjZ6VWtkaUwxc09vTXRUUnZndnBp?=
 =?utf-8?B?UUs4a3lSQ1h6NTVDSGQ3V0tUMHgxWkwwcTJSU3VTaEt5TUxQWllrYlRzOUcz?=
 =?utf-8?B?cjY2aFFLeWxsT0Yzc1FxSFFHcHBsSEdZSW0xSXI1bTZZVThPRWlRbE0ybGhE?=
 =?utf-8?B?SmxTUS9BV0V1Zy9pM2Rtdm14bTJjSXpyRnFFZUhGUVE5cndOS2VzSHRlWHgr?=
 =?utf-8?B?NlVzelpLKytDTEJzcDFia3R4UUd6L0t4ZDZuV29KcVdwK0M2ajRISStvNFlH?=
 =?utf-8?B?ZWpLMFpwZlJYblFSLzlCamRERmJkQ3BkVEVRSWhOaWh0dWNqODZtVDhiUUdY?=
 =?utf-8?B?UHRjcDBqQVFEM1d1Zm1FQWZaNzk1SUZUQi9MVHZCeXhETmRCK3BuYUV3KzRi?=
 =?utf-8?B?V0VmQWJiWEc2N0NkNnpWZU0rZjY2UWJ1RjNmcXJURVZpN2xFMWV4aW0ycmlM?=
 =?utf-8?B?eFp3SWt0cVFycFFuR3pNMFptQWhaYzRRcDJWNm43Z28rYW1WUW9sZGRRMEJx?=
 =?utf-8?B?WTFSQzJvV0RuR1NWRjIwNS9USS9abmovdUkxQU5ubUpteVdtL1JSSG05TWlP?=
 =?utf-8?B?ZTFZSXN3YUljU1dWUU5KOHIydG5KWU4waVcyRmRwRFNhRjB6d0g5VFErYmFP?=
 =?utf-8?B?SUNqeitFSlhIU0dtZ2RvQVdmY2RhRHVOYmI4VkdyY1AzbGV0UVlnZE1Xd09L?=
 =?utf-8?B?R2IwVS9zL3U1KzlMczcybm16cGxsVEpCc3VlWDFBSGNPeWxZLzNFN040U3dU?=
 =?utf-8?B?d2JiRHJYQUIwQzRtOFZ6ekVmL01BOWxlczdvczVyTDFWSDFWLytJNUt1WEEz?=
 =?utf-8?B?b1RtMDByODJwQzN3dzdIODB4ell3aTU5WXNPUTZnOWQrWFlNQ0xPdEZPVExy?=
 =?utf-8?B?VWozYjV2SjFpVnZtdmpwWG5BVE9UQkhEQUk4SUE5SnVTa05iV2l1aTMzdUox?=
 =?utf-8?B?OUZJdHRTN2xqQm1FWUlUUkxCZFg0VWRpQkl3WTQ2SnJmUTZLdlBIZWpoSU5T?=
 =?utf-8?B?M2dKNEpuOUl6VEQwY25mSEttQmdWaUR5aHIvbUJMcW5WNTdoakxqVmRGajBC?=
 =?utf-8?B?azJEajRMWjZGbGFucEZXUFYxS0VGQnF5QWZjVExScVptVmw1S3NRaDJLSUp2?=
 =?utf-8?B?RVNKb0ZqYThpcTBrNXVTMnNQUmJuT2o2U1FiQ1ZiNEN2TlZ3ajlvOVVSY0pF?=
 =?utf-8?B?MkxwQVpkeDlpeGNXQW9UbXNyM2VCQmwxMzhUVTROc1liM1FzMk5CSlYvZVhi?=
 =?utf-8?B?UWhWSXJJRWYrWVdlWkQrcW1PMndSMFp3TXp0QTJpeTV6L1dnN2o3SUEwTDlo?=
 =?utf-8?B?NE9kSjl4VWdwKzhmWWxWMTdGbXRaa2NWMzh0aXVLQk42aG9GcW1IVzE4a3NI?=
 =?utf-8?B?bWg5NHVrdVJnVmRLWWZPbUp0bHdiSkhLUmlJWkVzVTVDTk9zMnNmdGViVkp0?=
 =?utf-8?B?czJZTGQzZklvTmZsUTB2S3RzYnFObUVlZWVIY0g5QTlEOU1hbElzTUJwRDZN?=
 =?utf-8?B?STBRcXN6V1A5dzQ2d0FiUkQ0d3IvVHlHd2RKbklTYWs5UkxtYkZ3a24wT1lP?=
 =?utf-8?Q?usuiLAwHrt0yiLw8qD2TIFPT8ZqIn1Sa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NHIrM0FiQnVsTnZmanRkdWpPMGtXUDNVeVR6bXh4aFcvUDJ1d2tZNmlVZ1Zs?=
 =?utf-8?B?VGUySkhiZ2M0VHpqbHVvdHV1UE5qenlIcGtwOWJQenozZENyajFKeHI5d2g0?=
 =?utf-8?B?U09xdXYwWGg5dmxkeFViMmtrd21RUE5ZczlmOXh1bk1qYytUdDBWWDE3R0ZY?=
 =?utf-8?B?UTRoRndTT3VPK2ZzQ1Vmb2xiSGRlZ3UyMDNUTnpCZXFzcE1kcVNqcDl5cWVr?=
 =?utf-8?B?UHlZTEcydGlKRDg0WFlhb002a3U2am4vRllPc3hScnZsUzcyWHhURzR0bjg0?=
 =?utf-8?B?ejVMWDFxZXBSejhUZi83VDZJMG5iVjRxbzQ3ZnlxSFVJV014eUt1a2w1VC8v?=
 =?utf-8?B?M3FmOHY1WU9yUFBhVk5tdEM3Y0ZlaE81N1VHUzhwTE5ncGtRbG9yaGtLTTI3?=
 =?utf-8?B?RzdHN1NUdU9xZmQxaGs3TmZ5eVFES3ByK2RBNG8rbE1uVEczZXc2MGZSU1Br?=
 =?utf-8?B?UlFOdlJaSkQ1cDB2a2FrSXUwZEJ1aFRmQkZpeFlJN0szbzYvQkRpZ0p3Z0dt?=
 =?utf-8?B?SUs5Q1ZaVXdOVms0TEdwR1RNTXB2dXRwMVB1K29JSFNSRSswZWErNGQ1UUlM?=
 =?utf-8?B?MVdwUkJOWi8yZFRpaW9EZG5oc0xjM2U5UlNtUGtDakplQlZsV2hzQmpjY1Zh?=
 =?utf-8?B?eE5WL0dZTm9VRlpiaU1seE80eHJHeVBHMWNubktORjlIaXlIYVByZnE3NXV3?=
 =?utf-8?B?Y0RQdnFRK1VaSDROVU9ORFVRRjdnN2U3dFpDMCtkVWozaWZsOVBqK2Q3cldY?=
 =?utf-8?B?ZFZoKzh2QitZeWdpMGk0QTZUNlB3S0pFeWJNc2lmSzlTR3ZGa0JqeFNNY2lt?=
 =?utf-8?B?ZFRQS1VoUEFpRlp3UlNIenpwNkQzOTZPOUM0WXB3U0gvR01VN0tkdWFoZjhs?=
 =?utf-8?B?VVFGbWlhdXQ0REJCMVBpb1gvdUcydnREOGNPVmlnVVhaaWRqZzBZVmNJM1p4?=
 =?utf-8?B?V1RReUdXMlJxRU9yODBJWGxESE1xL2V0QnF0dEs0WUwwZ1NQbEY3ZTZ1aDFI?=
 =?utf-8?B?aXpiU21Ta05Da1pIRU5lNndsd0ZERThpdHlCU01Bb1J3STdYV3QvZklXVjZO?=
 =?utf-8?B?YXpyL2dQakVybkZmQ3hCOWhla1p4QWR3UExlUVRvaXZaMUlUelp5OVlFV0Ru?=
 =?utf-8?B?QXNoakZyWHVSTngrM0o2dk5qbzgwcjBzVkw5SUl6cEFTZW5RbVQzSGwzUk5t?=
 =?utf-8?B?SE9mVjhVem1KVEFQaHN5eW5Sb2lLdy95S3JzNm1SQVlhR0lleUxBSTFSSlVQ?=
 =?utf-8?B?RHlaMmFLTE4rVWdtU08ybWtGem1oYmFWcFB0eWx2eFY2UFVSd2tkUjlkR1JF?=
 =?utf-8?B?Y3VKMlNwb3hQOUFXK3NhQm5KVzlnU3E1b1RhdlY0RmNuLzFRSU1wVDlsNUhi?=
 =?utf-8?B?Z0hVSkxpOGJMVm5id3V6N3Z1ZWlhcWlvYUhkTHNDeTI2RWNvR0NaMWQzaWVT?=
 =?utf-8?B?THVsM3lOZkt3Vjh3d2hwNVgrdTg5dWsxc2hWaVNsRE1LVERGTnF4YlJkSWdu?=
 =?utf-8?B?Qkc1RU5JUUc4d0M5QVA1eEVJMDZoTzBNYXVBbFpud2ZXTWwyN1RTTGRtTXZE?=
 =?utf-8?B?LzdwVHNQKzdRcUtKdE1ZcUl2WWxVcUJhZmxaWW51WHNhVzZmcVFCdFBUZEJN?=
 =?utf-8?B?OERqRVFSZHgyY0JBK09ZaXhlaG5QMnZuZ1RnYXhuWG9SZjZzZUw0YVdOMUdU?=
 =?utf-8?B?TFBrQ1FkREhQNkpET3luNGhXWW5hN21pVzM4cG1QK0dkUFB4NDAwSXMxNTYz?=
 =?utf-8?B?ZXp2SU5Hdm5ualZZU0xGUWJIZmJJSkNZSVpDenJjdHFodUtlZFhldlhPdmZT?=
 =?utf-8?B?YldCZ3paRnl3VUlieUNERjJWekJaSS8rZFkvQzBnVWt2OTk0WGFXa0kvVjFP?=
 =?utf-8?B?Y0JTbG9FU0pNQ2U5a1dYczZycnIvSGk4V29OTlZtRFVLMThSL0o0OXRWQXdZ?=
 =?utf-8?B?MnBYNGNsNHN4Yi9WSkxzSHM4NUJRempIL0JLVUd5N0ptMkJxcGJLbVNBak5R?=
 =?utf-8?B?cHV0WUJZUkI5TUIwOWpOMXU0N1BtZUo2Z0xnYllQYWVGMm1oKzBydHBiNFcw?=
 =?utf-8?B?T2E5aS94SlBBb084aEhUKzYvbWlWL2tMeVpPbjBLb2l1ODFvdkY4MmYrUWxi?=
 =?utf-8?B?SDdzSCtBQzZzaVdDUzQybGp0QTV3bmc5VG41R05rMzBXbTlWRSs0djNQcmRP?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d255797-c851-4365-ec02-08de2e7f781e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 13:10:14.5987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hJvV3ara+IQRd2XzVr/C8vnmfE5g/+M2Uayg9c8xLcdJ2nhPOzlGjP63o7DHbEpd5FiWlh51VfTJfkuqrsPlchq6y8Pwb/QLe+I8bvFSDCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4733
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


On 11/27/2025 2:46 PM, Mitul Golani wrote:
> Compute DC Balance parameters and tunable params based on
> experiments.
>
> --v2:
> - Document tunable params. (Ankit)
>
> --v3:
> - Add line spaces to compute config. (Ankit)
> - Remove redundancy checks.
>
> --v4:
> - Separate out conpute config to separate function.
> - As all the valuse are being computed in scanlines, and slope
> is still in usec, convert and store it to scanlines.
>
> --v5:
> - Update and add comments for slope calculation. (Ankit)
> - Update early return conditions for dc balance compute. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 46 ++++++++++++++++++++++++
>   1 file changed, 46 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 650077eb280f..45e632e8a981 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -6,6 +6,7 @@
>   
>   #include <drm/drm_print.h>
>   
> +#include "intel_crtc.h"
>   #include "intel_de.h"
>   #include "intel_display_regs.h"
>   #include "intel_display_types.h"
> @@ -20,6 +21,14 @@
>   #define FIXED_POINT_PRECISION		100
>   #define CMRR_PRECISION_TOLERANCE	10
>   
> +/*
> + * Tunable parameters for DC Balance correction.
> + * These are captured based on experimentations.
> + */
> +#define DCB_CORRECTION_SENSITIVITY	30
> +#define DCB_CORRECTION_AGGRESSIVENESS	1000
> +#define DCB_BLANK_TARGET		50
> +
>   bool intel_vrr_is_capable(struct intel_connector *connector)
>   {
>   	struct intel_display *display = to_intel_display(connector);
> @@ -342,6 +351,41 @@ int intel_vrr_compute_vmax(struct intel_connector *connector,
>   	return vmax;
>   }
>   
> +static void
> +intel_vrr_dc_balance_compute_config(struct intel_crtc_state *crtc_state)
> +{
> +	int guardband_usec, adjustment_usec;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	if (!(HAS_VRR_DC_BALANCE(display) && crtc_state->vrr.enable))
> +		return;

Can simplify to:

if (!HAS_VRR_DC_BALANCE(display) || !crtc_state->vrr.enable)

     return;

IMO, if (notA or not B) is more readable than: if not (A and B)


> +
> +	crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
> +	crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
> +	crtc_state->vrr.dc_balance.max_increase =
> +		crtc_state->vrr.vmax - crtc_state->vrr.vmin;
> +	crtc_state->vrr.dc_balance.max_decrease =
> +		crtc_state->vrr.vmax - crtc_state->vrr.vmin;
> +	crtc_state->vrr.dc_balance.guardband =
> +		DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax *
> +			     DCB_CORRECTION_SENSITIVITY, 100);
> +	guardband_usec =
> +		intel_scanlines_to_usecs(adjusted_mode,
> +					 crtc_state->vrr.dc_balance.guardband);
> +	/*
> +	 *  The correction_aggressiveness/100 is the number of milliseconds to
> +	 *  adjust by when the balance is at twice the guardband.
> +	 *  guardband_slope = correction_aggressiveness / (guardband * 100)
> +	 */
> +	adjustment_usec = DCB_CORRECTION_AGGRESSIVENESS * 10;

The current value represents milliseconds x 100, so 10 msecs becomes 1000.
This scaling can be confusing compared to working directly with 
microseconds or milliseconds.
IMO ideally we could define the correction aggressiveness in either 
usecs or msecs for clarity, but that might make it harder to match 
values from the spec.
If this factor changes in the future (e.g., to 400 or 1400 based on 
experimentation), we might need to recalculate if we switch to pure 
msecs or usecs.

However, I think it would still be clearer if we rename the macro to:
#define DCB_CORRECTION_AGGRESSIVENESS_msecs_X100 1000

Then, when we use:
adjustment_usec = DCB_CORRECTION_AGGRESSIVENESS_msecs_X100 * 10;

it becomes more intuitive because we can see the conversion: msecs x 100 
x 10 -> usecs


Regards,

Ankit

> +	crtc_state->vrr.dc_balance.slope =
> +		DIV_ROUND_UP(adjustment_usec, guardband_usec);
> +	crtc_state->vrr.dc_balance.vblank_target =
> +		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
> +			     DCB_BLANK_TARGET, 100);
> +}
> +
>   void
>   intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   			 struct drm_connector_state *conn_state)
> @@ -399,6 +443,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
>   	}
> +
> +	intel_vrr_dc_balance_compute_config(crtc_state);
>   }
>   
>   static int
