Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BF2C3266D
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 18:41:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929BE10E296;
	Tue,  4 Nov 2025 17:41:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XdU2ojai";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D08810E296
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 17:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762278067; x=1793814067;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Osq9Bn/zjRz+MaNls5mH5q/Jh4eNYBMycgKKKO7TYOU=;
 b=XdU2ojaiBNEJMZRjlJuipoQK/1XvW6krVBL5FScLVrb0nqxo6cvyTqTj
 Bg4JktpVzjxqRkTeC5M4T3JGmVC1St5p46b4kgV7qJJG8gglgNwzHsbns
 /O1AYw9ALwJ2wVPwhMWSyuhmT/kaYWGUtnsq7pYsTXP+bGUeli0GDbVXk
 mm/4Wk3320R4mxec+//E/0dC6iqeLiv9tCyzSm7XRU+sMb0aDgeY0gTnQ
 mKLVirW/7ThaLjVA0k0KIvxEwoFX029pueScJ6RiILLimHbsmCcNWgX+7
 ZmHuiUD8sK5syhaYFvz67ikT9wKOS+jCPKtZgZW3doSrqCzv/bd/SGZEq A==;
X-CSE-ConnectionGUID: fS67AWSXTQqx0ifjkP5+Ig==
X-CSE-MsgGUID: S3/jUjonR8u+9BHU+v0s3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="75492243"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="75492243"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 09:41:06 -0800
X-CSE-ConnectionGUID: VspwiXisQ129n21DVFcylA==
X-CSE-MsgGUID: +U4QLBauS+S3aGmckrPhiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="191313786"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 09:41:06 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 09:41:05 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 09:41:05 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.9) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 09:41:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M+5h4mM6M0+BwMsye1ijZaUSbEevT7uTnR3WOzArguJEl3I6W8i32gTSeGjToN02MkT5uRIPpjp9uZjN1qlfavx9W+0hKPwcsQAcxl0SgBAvuk3I57CF/DMlPs3TgtUWnBZvoQa4SxVScA6+IZ3h0n2nvdK0N9gcYcGRB07RxW+/lxnecI4YU7FKuH9eBGo0olblcDuzNKlCOmWVudDb6D0P/VdGahw4oABJj78D18dr8fYvKP7XqM9GlG0yUk4vbNLWR3BCcPkZJS5kDL1sVudBfG3EpvutdfmEPqvveh7rbMs1l1edGoPvTSZwWyGIt3zAgWOf5vB6xLVXpoxAfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D1B4XStIPV5R0MmhigwlASFWSSrXRBYdAI2Q8YY3yTc=;
 b=jfrritFOa12tG+ijUJ5w7crEGQc7dZqscuM9EeT8lMcJaHxDoW9ej8LqxHtOj4fCREV6FvD2cmbZIxwgas68a9Q0MYu0fFk5yAkCBi7VlvP0ObEGu7DWe3qRNvR7eFBwvuhQglKzv6g/IqMWPXWwZOuJKUTUOClF5Smi0+OnhHH0BL/eMlmVDVP4wlbJ7//GUjzt+Lecuquq43sFYJu0zx3TnxPI4/pvdiThV4B0tgMw/NeutxIAg3dp2PvH7pT8XgkbRiKN33qO3LkyjbRKobe7A7h1Dm1F1bI6jtrfEuR8HwygGWahsbzHk9f9Td+k9E2ItVnwUXoQQjxRG+MzDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 SN7PR11MB7468.namprd11.prod.outlook.com (2603:10b6:806:329::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 17:41:03 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17%5]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 17:41:03 +0000
Message-ID: <ca374e6b-7a93-4657-a8af-bcc81923e6d5@intel.com>
Date: Tue, 4 Nov 2025 23:10:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/pmu: Use raw_spin_lock where ever needed in i915
 pmu
To: <intel-gfx@lists.freedesktop.org>
CC: <balasubramani.vivekanandan@intel.com>, <matthew.d.roper@intel.com>,
 <lucas.demarchi@intel.com>, <gustavo.sousa@intel.com>,
 <clinton.a.taylor@intel.com>, <matthew.s.atwood@intel.com>,
 <dnyaneshwar.bhadane@intel.com>, <shekhar.chauhan@intel.com>
References: <20251103185141.854074-1-ravi.kumar.vodapalli@intel.com>
Content-Language: en-US
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20251103185141.854074-1-ravi.kumar.vodapalli@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0171.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::12) To DM8PR11MB5624.namprd11.prod.outlook.com
 (2603:10b6:8:35::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5624:EE_|SN7PR11MB7468:EE_
X-MS-Office365-Filtering-Correlation-Id: 04183df8-07b3-4f33-9a8f-08de1bc95314
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rm9RVjZwa3ljTldZWFhPWW9obWk2MEx6cjNMNkxOY1MvclIxWUJDNEhZKzhG?=
 =?utf-8?B?VGFTbTBtTVZwQ0xRcXp2cUYyQk1YcG1zbVhKcENOYkdsRWZOWEQrTTdHaVdK?=
 =?utf-8?B?OTZRY09hMG5BOEFXTVBadDNYT1pJSisrc3dOVlRRK1QwL21nRjljaFZSaFA0?=
 =?utf-8?B?Vnd4cTdNcmZKY01YUXo3aU5Pd0hTOEdCYTJmemVNNEhaRytjTVMxWUZUbFYy?=
 =?utf-8?B?U2dzRTZyUXA1V2xkNUhhUXV2WDFGdCs1WU1oN2lBc0t1Y2JzRzhHYkh2SHgx?=
 =?utf-8?B?dGtlK1pQYmN0bEtwZVV2bS9lRTFtYVdSckNwQm9iWVB4MWJDYlJwRlBTK05F?=
 =?utf-8?B?L3ByQlkxeDZtQmRXMkZIRjk3SlNyN1FNZ1NQaTJKbU1adVNVUkozTTNSb0wx?=
 =?utf-8?B?dWg0dGZkeVJRS1NSS2hqTzlMYkVzTU9RT3BXQ203NThCdkZGYzh2bFpNS01K?=
 =?utf-8?B?UXlpdGxHcmxSU1hTdk00Y0NoUks2QVJjWWNzZUEzOVpxVm1ucVUzcXAyQzEy?=
 =?utf-8?B?K2s4R29XZy9mSTJDeUJ5KzEzSUhPWVZVZG93TDMxS2c1Tk9xS2FISjFtaHlG?=
 =?utf-8?B?SVlEV1VZNGd4VkEwb2FzWE9xdnNZUDlmYWMzY3hTWjRjT05yNmlaOHhZV3FK?=
 =?utf-8?B?SDdONkxnVXFFZWVxS0JHTlVYbU9ydS9rNG8yM1oxb2lPeGhnRFJsUkVmVkFy?=
 =?utf-8?B?cVNUNG1TMmwyNHJQc2NranBiTUc1VENMaFU0WlZ0T0d2U3BuSWlrSkJRUUpD?=
 =?utf-8?B?RWlYdVY2djlmQlVnTWhOcmFRSThpdkFYSnlYd1JUVU0ya0xqYzVQQ1QrcGFx?=
 =?utf-8?B?UFJIbjlFazFmUEUxR28vcnJnWXNienhUUjRzQ0JRSDFFOXc2RDFjdFI2Wllo?=
 =?utf-8?B?cmJkYUJudFY2ZXBOREQzMHhyZ1VsTytPVzJxU2MxTVo4bFN5RG9HS0ZPZ05x?=
 =?utf-8?B?bHBteVpMeVBSR25ScnYrT1dkbWVuTFZPeENQWkhzMG5lNU81VHA4WVhsMGtn?=
 =?utf-8?B?MkliVm1GcHBBUXBQUnBtZmZUMHh4WWtNSXFYTGlaUHJtaituUG9QWDZ1bEU5?=
 =?utf-8?B?L1ZWSHBEQXFSU1hVZnhqMTJPYURvRTQ5andNNVMyZzJOOUN2MDRxRlhza2Y5?=
 =?utf-8?B?OTZKbEIrTWROZnJtTzIwdDMraXJiRkh1ZHdraDNMUXRlNDhhUmFnMHRmamhr?=
 =?utf-8?B?dU0vRnJVclZKTlBaOFZMTWRYcTJQVTkyaDJJRmR3NWVuL3RLVVNPSk9HMzFM?=
 =?utf-8?B?U2NPaFRFVWJtU2NPK2t2VlRpWG0rQ1hKREMydms1RU9US1JuMEN5YmN5U2ZU?=
 =?utf-8?B?N29MSks4QWZya202disxSFhYSjdXbjRQSzV5OFYzU3Q0NngyMGwyV1RsZ2Uw?=
 =?utf-8?B?bTBlSkkvRjhFOUJhZ3Y1QWF4VnBXRVZRdDYrQkNTcmNnZ1JtZWMwMWw1YlBi?=
 =?utf-8?B?eWIrdkpyK2IyZHloelAyYXk2OXU3T0twUEplWEM2eHBJUG1VSFhEbXBUa3hW?=
 =?utf-8?B?UHBQV1JDR21TMDFWWkZaQmprODR4cDcvLzR5d3pNQnY4ZllUQ1UyOXpPZDN2?=
 =?utf-8?B?QTRZanpVU3ovazk3NERJc2Z4M0REL2l1NUZOR1FOMXhPVk1zb1UvTStwNm93?=
 =?utf-8?B?Vktsa2NZRkl2TFNDb0YzRXdDaitjVnVwTFNmNno0UEFFcWs0SGZMM1BxOVZ2?=
 =?utf-8?B?WTlmY1JFSW9sSk1jS2tnV3lWcjJDbHJUbHRMMjFEMTNjZFV5NVY0bmx4dU1i?=
 =?utf-8?B?RC9qeVhpTXJaTTBpRkhxTWt2SXQ2NTdUNmk0TUUxZFFWZjBOSitLVURabFFu?=
 =?utf-8?B?UkdRVEl2MjczQjZzV1FyRzVteWN5NDA0ckVHR1RxSDhxNk53QVlrWENCbWVn?=
 =?utf-8?B?S3hxWU1lNEtNSXdKd04ydy9nY3o3UlM3TzZrMGNHUXRjWXBEL1hYOHFNK2Qz?=
 =?utf-8?Q?F1nQICfSE8Apqy5YNxIiZp0STnxGjtDI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzlLWGxOYjc5S2s1MEM0enJHaTAyUmM2TmxvRjdqa3l0OVgyK0pqQ2ZoL2tM?=
 =?utf-8?B?Si93N2Y0b2M1UG8ySGw1NDZ2dzIwQTdtZmZKK01wY0s2bkJBR3ZMMURZZVgr?=
 =?utf-8?B?Y1NNZ3FyOVpoZ1BpQzdGZnJjZkZzRXRYRkdXTi9VeFVjNVk3VzEvVWl0VXp5?=
 =?utf-8?B?N2dWMUxpZnBheFJmQXBENHFIK0QwT0dXWnBIQjYweDYxMFBERlhhcURJNDhz?=
 =?utf-8?B?MStZaXluL3I5VVIvNzZNZnZXT01TdDBFazUxVjV4RXFBcGxDa0h3NHIyM2hu?=
 =?utf-8?B?ZEFiazAvb0RzQi9uMURBeXFKUWo5YUJySElPT2FMZ2ZFN2VlZW1CWFB2Q0NN?=
 =?utf-8?B?YzIvd0h1NnJIbFpFU0RmNjR5T1RsNUJ2ZXQxTTZJOGJxWi92NHE3NWorS3dX?=
 =?utf-8?B?R0ZnL0hCb2lDcC9YOEQ2MnJNYzRHRVZnWTlDaURxUnhNTGFmazRkV3RJNksw?=
 =?utf-8?B?Q0ZWRjRvN3J2VW9iZ25DSU1PcDd1WGNiZWw1MWdIQlRrS3dpQk9IZlhqM296?=
 =?utf-8?B?azF0Z1Ira09yVUg5TWNMSEh3MFIxbGwyRzFmSjJRZGY1R0F5VjJuSXZKU1lS?=
 =?utf-8?B?Z1JOVmhXMmNNckJoeDVkYjFlVUpEOG56RTY5bTRBMlRGWVk3b2ozQSt6T2NH?=
 =?utf-8?B?NEx0NXJ3VnRWcndseTdHdW4yOURMQkpjcVBJeFJCcEZWekdxbDNwOXZMK0Jp?=
 =?utf-8?B?UjdJWTJuK0FYV1pUVSsyLzVmT3gyMmttZXFoY3lnZmdZV2VsUUFRWHJkVXha?=
 =?utf-8?B?RzNiVFZhMnZSTFRqRFU3Vnh3VENyWW56amZKWVU1UXJHWFhaVEhTa3ZqQ3JH?=
 =?utf-8?B?S2o4cXRjTVZ0dDZPMTg5ZEZsY0U5eXRwdzRsNjdDVGw2T0xYMUpraDIrZ2xw?=
 =?utf-8?B?Z0NYSlU0ei83YVdONURQNDJya1JaZjIzZEdkNklaNVI1TjBrNXBwS3NkcDNk?=
 =?utf-8?B?dlQ0TGxEV2tDRHZ4ZEdwK1k4cEtTS20xcGhIV3Z5QkkvdTlZNjRtWWhqN3k2?=
 =?utf-8?B?M3BJcUdFc3ppQmovTjlRYnpCQlY0UHZhWFAybmt1N1dMQkdmdDltbmh3SzR2?=
 =?utf-8?B?RWRGeFJjS21hNElaTmlLQjc0ckkyYkFzUlFrekFEU2FEMmpDdnNYUGoyTm4r?=
 =?utf-8?B?WEM3RUxBdHExN2ZFTTY5MHB2VXJhTER5dG5BNkxDSVhVU0hVM3h3N2VLQU56?=
 =?utf-8?B?b3dOaExKNkptM2dtdnNMMElCeTBoNjR2NURES3FGaTdoSU01MFZNVDRvaUdz?=
 =?utf-8?B?YWkxUXNWbnFGRU1VL0UyejV3VytPVWtqdThQZVJnS1hYYm9hMHhHSVhvM0Vo?=
 =?utf-8?B?R1V0WnpYTmNEMGdhRUwvbDU2d3ZldUdZVG93UmUybXZ1RkdLZy9Fb0JiWlRz?=
 =?utf-8?B?d2lLSGZDRDRsVGFjbW10SG9hZGdsUEZHUFRxUURaSVdEWkluNTYyaENoREJW?=
 =?utf-8?B?S0lSZDZDVEIxRzlMS2llU1ByeUJMZnhUcVdNc2xmSm1MSktmQzEyVWkwT1px?=
 =?utf-8?B?aEwvQy9CT3VFUEZaM2Z5VGo0eUh0c1JodkxHbjBUbnRHejhSaXJoS1B2WkZr?=
 =?utf-8?B?VlFnN2hlZFhwdGJBL0tDWGRwL00zbnFSM08xa1g4ajdFdnQrL3ZWTzNPL1dO?=
 =?utf-8?B?aEVDMTE0Y0xUTm5WeG9ucmZhMytFVWZGRzVNSHZEOEtaWTJUK0p5Snp3REw1?=
 =?utf-8?B?MnhkWVdhY3JjV2l4Q1J1bFB3c3l1Q1pUZmRoaWI1a1o1SGFuR0IvajZmaEdi?=
 =?utf-8?B?Rk9LanVhcWc3Y1lyN2orNnZSTi8ycDJZY1BBMXc3OGhiWSthU2E4R2MyTGpw?=
 =?utf-8?B?RFZ2OFFIbEtobXpzK0txTnhJUXF6WEZzOU5nOUJBUTQ0aVA5YysxaXFIazI4?=
 =?utf-8?B?U1NxUjkwVHMyU1NIQTIxMGxCMlovbCtRalRpRGx0c1p2QitRamZKLzhtK2VW?=
 =?utf-8?B?Tm1iK3VIa0dwQndlNHJhTElaYk4zOHloTnRsc1FYdWdZd1pVcTRCN0Jvc2cr?=
 =?utf-8?B?UURrUFhDT2NUUENKSG9KWEJvQUFuMTZzMVZxb0FVbnVra3RHQjVXQ1NQaXFI?=
 =?utf-8?B?QkpveGVZYjlyMjBwaEszbXhiWlVpRU5Rb3ZDNmJlL1BsZVhYM0tSa205VndS?=
 =?utf-8?B?TnFjZ2pkRWZucHRabTlyRU51OHQwejBpVkg0T3M1d1ZFQTF5Ulg4ZjcxRDAv?=
 =?utf-8?Q?Js5GPYHH2qJEAyrsrMgv1UM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04183df8-07b3-4f33-9a8f-08de1bc95314
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 17:41:03.3041 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qawmeoluOPV8pCQyQ3SRmaeGECvesYmX6FjSYTECvLgIPPwu6Ax23xQ0ccedNA6cic8jG4XmYpZJTwnIlNUSNsXBrrxocJAso2hUb115krk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7468
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



On 11/4/2025 12:21 AM, Ravi Kumar Vodapalli wrote:
> Currently i915 pmu driver gets registered with linux perf
> subsystem with its callback functions implemented, it is
> using spin_lock for synchronization where ever is needed.
> linux perf subsystem in some instance is using raw_spin_locks
> for synchronization and calls the i915 pmu callback functions with
> raw_spin_lock held.
>
> The issue is
> When PREEMPT_RT is configured in kernel config the normal spin_lock
> behaves as mutex lock and when these are called with raw_spin_lock
> held race condition can occur.So in the path of the raw_spin_lock
> held convert spin_lock into raw_spin_lock where ever is needed.
Here one more spin_lock is there in path of raw_spin_lock
in drivers/gpu/drm/i915/i915_pmu.c
__i915_pmu_event_read()--> get_rc6()-->__get_rc6()-->
intel_rc6_residency_ns()-->spin_lock_irqsave(&uncore->lock, flags);

Here spin lock is taken with "uncore->lock" variable, converting this 
lock to
raw_spin_lock is not straight forward because at many places in code this
lock is used

drivers/gpu/drm/i915/gt/intel_rc6.c
drivers/gpu/drm/i915/gt/intel_workarounds.c
drivers/gpu/drm/i915/intel_uncore.

Thanks,
Ravi Kumar V
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 22 +++++++++++-----------
>   1 file changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 5bc696bfbb0f..d760ec44a98c 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -230,7 +230,7 @@ static u64 get_rc6(struct intel_gt *gt)
>   		intel_gt_pm_put_async(gt, wakeref);
>   	}
>   
> -	spin_lock_irqsave(&pmu->lock, flags);
> +	raw_spin_lock_irqsave(&pmu->lock, flags);
>   
>   	if (wakeref) {
>   		store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
> @@ -251,7 +251,7 @@ static u64 get_rc6(struct intel_gt *gt)
>   	else
>   		store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED, val);
>   
> -	spin_unlock_irqrestore(&pmu->lock, flags);
> +	raw_spin_unlock_irqrestore(&pmu->lock, flags);
>   
>   	return val;
>   }
> @@ -302,7 +302,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
>   	if (!pmu->registered)
>   		return;
>   
> -	spin_lock_irq(&pmu->lock);
> +	raw_spin_lock_irq(&pmu->lock);
>   
>   	park_rc6(gt);
>   
> @@ -314,7 +314,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
>   	if (pmu->unparked == 0)
>   		pmu->timer_enabled = false;
>   
> -	spin_unlock_irq(&pmu->lock);
> +	raw_spin_unlock_irq(&pmu->lock);
>   }
>   
>   void i915_pmu_gt_unparked(struct intel_gt *gt)
> @@ -324,7 +324,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
>   	if (!pmu->registered)
>   		return;
>   
> -	spin_lock_irq(&pmu->lock);
> +	raw_spin_lock_irq(&pmu->lock);
>   
>   	/*
>   	 * Re-enable sampling timer when GPU goes active.
> @@ -334,7 +334,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
>   
>   	pmu->unparked |= BIT(gt->info.id);
>   
> -	spin_unlock_irq(&pmu->lock);
> +	raw_spin_unlock_irq(&pmu->lock);
>   }
>   
>   static void
> @@ -740,7 +740,7 @@ static void i915_pmu_enable(struct perf_event *event)
>   	if (bit == -1)
>   		goto update;
>   
> -	spin_lock_irqsave(&pmu->lock, flags);
> +	raw_spin_lock_irqsave(&pmu->lock, flags);
>   
>   	/*
>   	 * Update the bitmask of enabled events and increment
> @@ -782,7 +782,7 @@ static void i915_pmu_enable(struct perf_event *event)
>   		engine->pmu.enable_count[sample]++;
>   	}
>   
> -	spin_unlock_irqrestore(&pmu->lock, flags);
> +	raw_spin_unlock_irqrestore(&pmu->lock, flags);
>   
>   update:
>   	/*
> @@ -803,7 +803,7 @@ static void i915_pmu_disable(struct perf_event *event)
>   	if (bit == -1)
>   		return;
>   
> -	spin_lock_irqsave(&pmu->lock, flags);
> +	raw_spin_lock_irqsave(&pmu->lock, flags);
>   
>   	if (is_engine_event(event)) {
>   		u8 sample = engine_event_sample(event);
> @@ -836,7 +836,7 @@ static void i915_pmu_disable(struct perf_event *event)
>   		pmu->timer_enabled &= pmu_needs_timer(pmu);
>   	}
>   
> -	spin_unlock_irqrestore(&pmu->lock, flags);
> +	raw_spin_unlock_irqrestore(&pmu->lock, flags);
>   }
>   
>   static void i915_pmu_event_start(struct perf_event *event, int flags)
> @@ -1154,7 +1154,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
>   	};
>   	int ret = -ENOMEM;
>   
> -	spin_lock_init(&pmu->lock);
> +	raw_spin_lock_init(&pmu->lock);
>   	hrtimer_setup(&pmu->timer, i915_sample, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>   	init_rc6(pmu);
>   

