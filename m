Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOaLMWHdr2kzdAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 09:59:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E53247C60
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 09:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E3110E69A;
	Tue, 10 Mar 2026 08:59:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VlrlkCxv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0BA410E699;
 Tue, 10 Mar 2026 08:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773133149; x=1804669149;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=USwiRCdO0VD22T6I1t4JGcJAjy/1/uUwykAV4I9iR5w=;
 b=VlrlkCxvnUykbmcK9XZeoCfBW+hnPA0Q7G4AMTZ/3BU0QoeQyUp4WF28
 04ho+5idirXv6HqksaJ3ScR+ZGVVzCTcfA4vfy5LSGpDjW3lE+jahkwIe
 WJpLGC2nqc0Td76EE+qiXoc1P3zFy+ptFv0U4UDqrMLxlFqJH77zMekM5
 SW9jmlkRL4DJmqf0ZnGooD46jsQmF603B4CStc/sv/A+I2R0EeMAC8n0h
 UcScdmULNeARR+Jta82JxXrqpVr26SCy1tF48Lcd+GHT4DGqwXTbliAiK
 HXGpQP9SApFPydYS3CQ5hiUAdy7kpCSJnZVPGLAb1f+AidJ9pOqA1aw7d A==;
X-CSE-ConnectionGUID: Ae2ArqysSMeY9NvKJGaRVA==
X-CSE-MsgGUID: 2JbqvRrdQ86AXk4d+VeEPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="73872780"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="73872780"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 01:58:28 -0700
X-CSE-ConnectionGUID: 3wNtKRfMTIewc7WsQ4kk8w==
X-CSE-MsgGUID: EZiJeURXT+WWHE891n0CrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="257956856"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 01:58:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 01:58:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 01:58:27 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.42) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 01:58:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZPYt33JauSwmZvJrZAE4rWp/jYD9lkwn76ZbpTgcKTYZePLtSc5ly51Od7K62Qr8Kb5OLiQqXWW+ODUmgEogQKo6c8OPS88qDUoUriCHw/AJ0Ub4er1imXLxgn42oBHABlWylJ+MYlAJsSSWT78wzxf8F8Mqtrl+GeDVEnyQQQUX+IRO6zOu3QUdPXgbdPw/eZlut0GUGIqsCPDX1jAunxSFakDm71fWgDFRXZ0hOt8x6mu/8bdXxZMRgGp1br73nezRdQH/eJaDLzh+/4kXETPy89oIBn3ttRj2/uyk6CwpqmZmC24jBCCQKMTNHA9nzvNv3Thz51nRAxYWahoPAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sUyVM3FMH+treYttOOAXXp8//g/9M9WwZ7/2owByBMw=;
 b=bIRNCK2SdOdFPMzkRJtNo1VqmbVLDSoXVftq2AqC8XCW4t//Ztqqwn4AcpUnGneKMRh2brozwjObKfcPFb2laxK0UaNMLnAkn6hjOnu8TWJ/AjOHbA1CFYGMp3c/WkDocxldThqQeI7k9sQA5Pe4wBcVkMT0cdzdOkYK0du8WM4j8S5wFjQMZ7zcqZDwdE/7u/VFKzubYOz+5SbjP7UBLCgLIcmrtY5GCppBkT8LTwDopK1rEsjA6v0vRBROsIZ/ao9G+4rZ7ecCXK8i4YhAtZT4kE+1QpvwTWctGLrA0ltILAOrNK4I8NUJ/oOcep58ivt1YOrjF9cIt6NGhLlNhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MW4PR11MB7078.namprd11.prod.outlook.com (2603:10b6:303:219::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 08:58:24 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 08:58:24 +0000
Message-ID: <0c432d87-4916-4ab0-8472-64d4a399face@intel.com>
Date: Tue, 10 Mar 2026 14:28:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/4] DP: Read LTTPR caps followed by DPRX caps
To: <imre.deak@intel.com>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260305-dp_aux-v1-0-54ee0b5f5158@intel.com>
 <aamrRxXwBxzt6s4F@ideak-desk.lan>
 <8e862ee8-34e2-4330-a9ae-e5b97ef3beae@intel.com>
 <aaqibzXw-QK4mrHR@ideak-desk.lan>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <aaqibzXw-QK4mrHR@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0218.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b4::17) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|MW4PR11MB7078:EE_
X-MS-Office365-Filtering-Correlation-Id: c995188a-123b-4212-4303-08de7e832f92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: pt8HC+EpABG6r6W+vy8PrVrUrLeN/vwtW6KUfxhfbzBgjoJQiu/keHmEkwOKEJKzmCS7MncXOXNgCSGHHt9j1L3sN7mxANVp1qt42gIjBJQg90vCnaJOanfN3fzCjhwQs95LJQ/8ZDUE6Vsh+VLCMwCRSRBiN0pyAnGr1VlAoiWKTxW7JKsASaZvWoSGiuFd+Puj9Y7ULVqDXGGsJvQZsKwjqFVQUAuV0TItpA4smF6UDr7t6yX18BmuEj3Cd/hAQXGBs8tfliU4+FTArCxg9+mG/ba0M1bUGDoSfb0h0FuH4uuagnoQc9Xk3ulRtHNAlTpaK4seEej2vRhAI1WLyYvt450y/5jsTL5Pp1HD46PAv/SHkUwBwVkRdLPsvKTlwRbS1YP3/NvzZxUYU0CRfWKkh/XV5NaslM4Z0YtKm+pVi+D/gh8JN9Cp8Bx9KUqIeNuw7JwitQruL4yIoFFS9B+xLM3TDIvaVMD23blUrDQmToT/mOHG/ekrwfK0NMX7WmSpMo/h2wvqYm/SPsWmSvUMlj4AE2i6I0pDo/HzDfDk5zO7qSKyQJI08RbtPIYxsPHd9LXpOhSov3I1AkA5Fn9rjj+PnXSv2ES+Dg8biudd/8EXiM2Efe1RvNh950htYMjbwoZ2bvUGIQR1SvhvFaLNne6E5AvTl7XlqygJiS5rQia64c++a3erxlMyjJAQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHR2OEF4MGdkbnprTjRYNFZTd1F6SW9CZE90WUNuNmZuMUlsMmFwS0dFR1dl?=
 =?utf-8?B?ZTdUMDdpRzQ5WHZxYzk3YzhNZU9TbHUyOGFRT0xCaDhUeHA1WCtxcVZQYWhQ?=
 =?utf-8?B?a2dqL0hrNlUwK09lbGIwVWZLdmplOFAwdWE5Ukp1blFJVnFZZ01pR05tZzlm?=
 =?utf-8?B?UTlCT3Q4MWtNOVRiWDZaV2tsd2pROXRqcjlLVHJIOFNBVzZlUlNSMFQrZExK?=
 =?utf-8?B?dGNrYkQ5Q3htYXMyL2xhU0pPTjkrNkVjMFYxWjR0eGRtb3dVdlVXTE96UkN5?=
 =?utf-8?B?V0k2SzNVK05pZGs1aFpJOXFseEFnbk5PWmNPS0piTHFvVU1sb2sxUGxPTHFP?=
 =?utf-8?B?Njg4UENBZXpVOGROSmVQZUk1R0JXdjg4OFpQTkdvSnFKclpnSm9Fb05qOUdW?=
 =?utf-8?B?cVFmeElkdlpXcEJwZ2tGTDFDWlBsbExRc3pJSEU0Q0ZTZ0xLbkRUWmxTOWlk?=
 =?utf-8?B?eUh2SFRzejdmeEhoTnNqY1VEUkgrTlI2VEVhdTFmUStNYWNaMWdnc08renhu?=
 =?utf-8?B?cHJIRVAzc05xamNySUR4UGpOUVExb28xeXM2UzhYb3NDQmRoTDJRLzFHQkdZ?=
 =?utf-8?B?NmNuOVArb2xkTFpTb2t2cmN6Y2xSakdCYjFJYVdmbWIxM2Rwd3BzOEoxSWty?=
 =?utf-8?B?WTNkY2RvRHcvMUZkbk1BU09SK2dkMHo1dXhZQmJqUnBtRVZxb0NObEgwNlNW?=
 =?utf-8?B?S0kzdm11SURrOVJHMXoxaWVpcFA3RFJCaTNHUmE3NVBiZEp1L21FcTV3N1VS?=
 =?utf-8?B?bEEzcHFQQ2tzZERYWElPa1BFYzRyZXRZMWhsNmU5UVFobFJEL1pBYitFRTlN?=
 =?utf-8?B?dk5ibytoVmtkaVRYaTBQU3RUZXhGaGpZak1xQjI3R3RCTTJOV3JCMnpRb1dF?=
 =?utf-8?B?T0tIM1ZSZklBOFdyOEtBUG4xbzh3eGpKY0IvampLTlNXUUhmNjVORnlkc1JK?=
 =?utf-8?B?djNLVDVoVzc1VHh3Wld0dllZcTl5WWJjQkdLdXQzaG45bEhXN2toeVJwUFJI?=
 =?utf-8?B?NllHa0UwbG9ackJHWTMrbTRYYmVKSkphbk00aG5NSTJrMDYySTBYWUsvSE9J?=
 =?utf-8?B?a0tISWl4MjUzZ2hoQVdTb1k5bCtlM1ZQdEJRWGc1Q2gxM1lLWHl6d2dxQ291?=
 =?utf-8?B?SGt2Z0RrdkNnOGo0VjJCUEd5cUhuMGsyNGc1bnI4VjY5OGRlcG5uY01Md2Ji?=
 =?utf-8?B?YkJjK2VnOVdjdlJzalcrOFAzYVFDVG5DWHpYTjNvTW5OZlFBakUrdWdUT0tB?=
 =?utf-8?B?RXZaa3dCZUxSaWt3eEQrTUlZMzdzNklPMjhySDFyZnZxdTFOR1cvKzZNTVI1?=
 =?utf-8?B?YkJiTjcxc3FzMjdUb2p0NjNuODBwSDZxRzlINE10cjQ1REJOdHkvVHM0QXpj?=
 =?utf-8?B?ZWFySllMbGR2WC9GVmtmVmRqTzlSYmZiMmVwMWxkTXhMbmtVTEUxTUlFWGY2?=
 =?utf-8?B?enNDTjNWNlpHc3pHelFIZUZEVkpKaHBOVU5rS081eGlleHlFeDRTWW5TR1Ix?=
 =?utf-8?B?TkJnUWZqM095eE1Ddjc2ZzZ3dE05cWxYMU5lQnowUkxIZWV0OEc3dzlGRGl2?=
 =?utf-8?B?TjRkYVdxQjdMUndwZWNGMWwzL2tKMkxxRkxCZVdkY29sWnFYWnk3Ni8yTjNI?=
 =?utf-8?B?SDFhdEVhTW5YclZ2TzRsaE1NRXJYTmZ3TGliaEZYTWFNUG1nNVRuSVJaS1hU?=
 =?utf-8?B?YzB0cmdxdEx2R1BUYlp5c084bXkvTytWQWo2dHRCalpyeGRQa2NVa1gxTEZq?=
 =?utf-8?B?a3hWK201S0RFZ05YQmgydEJvMjhmTTV0WGFvalR4T3lybm1Mby9XNHNheUZK?=
 =?utf-8?B?WStSTHJxT1pzRG5ldng2b3RscFVYOXE1NC8rOVFhM1liOHRsZFJrR2VKRXVQ?=
 =?utf-8?B?YnhiR0lhaEI2cnYyQW9TY2NERzdOSjJ0TFFpVjJLSjBacE1YK0gxQWFtbVN0?=
 =?utf-8?B?a1JCc1BPVVRjV3BBSHUvZWVTV2oxUnV1VnN5ZkhVaXFXeDZrbVViS21UdUIy?=
 =?utf-8?B?eVhZTWlINmVDQm9pNi9zd0MyTXNzQlN6MEZVMi9KN2U1enphQnpQVW1NZWp4?=
 =?utf-8?B?U2ZZMllCcjVORVcyUjJMV3FaRjM0V25rdzRiajVnczY1dkpRVm9NSWZIbXZW?=
 =?utf-8?B?WnVKUE13ckpoVTNxNVoyT3dzRkZIb1QrL2ZOaDU4SWtJa3dsZXZOUUR0Zzc0?=
 =?utf-8?B?NkdTMWowcmNTWXBCM25rTXI5bmRVVHZpK3VUd2tsQkhkVGROTFBHeDNGR0ht?=
 =?utf-8?B?RVRYbkNCeENrdTdBM1ZmejVJc1pzdERUQVpYOUFlK3R2S1ppRkg5cGRDSkxj?=
 =?utf-8?B?cmh6RWlhODFLeDMxZWg0YUdOSTdHTEJvYXhhV0FYaExwSC9hd3VFaTJGd21E?=
 =?utf-8?Q?m4wnzGiyKBvbvcYE=3D?=
X-Exchange-RoutingPolicyChecked: fgE3RAd7Vn353qdLJOsaVRBfoUyvon9vddeu9glE7UqSFoQu6OO2Pw9kwzxNR7SjrH0a/g7PfmUOCRq+EIfB7TteVk06zQOojqbNMq+p9+ra7q+6w/hkDCX2W7QvgAU+FsE4HVVmgtU0LKqoogRji/ZXfUwQzQahIu2rUZQMUkRaf+LQLUKBMUuIvyxLWLjuxjQrK8TiRsICTxRPWuqsjSbokIidSQvp/bwqerBnHXlFuIGsmwW91WW3Y4l7GjHpndiYC5Z9VT/IVbcAUKriMc947pxWgPAozcNq6SC9FRuwqQp6OYg1E5vDlPY1msa7cSb7fsoVolihfG1QQD3hNQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: c995188a-123b-4212-4303-08de7e832f92
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 08:58:24.1551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZIMkpUgicB20SKftSNq5cCL/plXU8fyE31/UXc5k7DoJzwIAl+rrhUQ8haWNV0csXUV/pjpnmw8j8BDyV2b4oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7078
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
X-Rspamd-Queue-Id: 77E53247C60
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

I understand that with race conditions from user get_connector it still 
cannot guarantee that lttpr caps are read first, dropping this patch for 
now!

Thanks and Regards,
Arun R Murthy
-------------------

On 06-03-2026 15:16, Imre Deak wrote:
> On Fri, Mar 06, 2026 at 09:59:10AM +0530, Murthy, Arun R wrote:
>> On 05-03-2026 21:41, Imre Deak wrote:
>>> On Thu, Mar 05, 2026 at 01:48:10PM +0530, Arun R Murthy wrote:
>>>> As per the spec  DP2.1 section 3.6.8.6.1, section 2.12.1,
>>>> section 2.12.3 (Link Policy) the LTTPR caps is to be read first
>>>> followed by the DPRX capability.
>>> Not exactly. The Standard requires reading the DPRX capabilities after
>>> the LTTPR caps are read.
>> I also mean the same, sorry if my wordings were complex.
>>
>>> The driver does read the DPRX caps after
>>> reading the LTTPR caps.
>> In intel_dp_link_training.c function intel_dp_init_lttpr_and_dprx_caps()
>>
>> int err = intel_dp_read_dprx_caps()
>> if (err != 0)
>>      return err;
>> lttpr_count = intel_dp_init_lttpr()
>>
>> Here we are reading dprx caps and then passing this dprx caps to the the
>> func intel_dp_init_lttpr(). I think this will be a deviation of the spec.
> No, it's not a deviation of the spec, because the spec does not forbid
> reading the DPCD_REV or other DPCD registers before reading the LTTPR
> capability registers and it cannot really forbid this as I explained.
>
> What the spec requires is reading the DPRX capabilities after the LTTPR
> capabilities were read out, which the driver does: after the above lines
> there is also:
>
>          /*
>           * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>           * it here.
>           */
>          if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd)) ...
>
>>> The DP Standard does not mandate that the first read after a sink is
>>> connected (i.e. after the HPD signal of the sink is asserted) must
>>> be an LTTPR capability read and cannot be any other DPCD register
>>> read. In fact this would be impossible to guarantee, a DPRX
>>> capability read - or any DPCD register read for that matter - could
>>> happen at any point and so it could happen right after the HPD
>>> signal got asserted.
>> Spec DP2.1 Section 3.6.8.6.1 LTTPR Recognition After HPD is propagated
>> from the DPRX to the DPTX, a DP Source device with a DPTX shall read
>> specific registers within the DPCD LTTPR Capability and ID Field (DPCD
>> F0000h through F0009h; see Section 3.6.5) After LTTPR recognition, a
>> DP Source device with a DPTX shall read the DP Sink device with a
>> DPRX’s capability by reading the DisplayID or legacy EDID and the
>> DPRX’s Receiver Capability field (DPCD 00000h through 000FFh; see
>> Table 2-232).
> The above does not prohibit reading non-LTTPR DPCD registers before
> reading F0000h - F0009h, and it cannot forbid this as explained above.
>
>>>> Git log shows that initially drm dp helper exposed function to read
>>>> lttpr caps. Driver reads the lttpr caps and then the dprx caps.
>>>> For a particular issue
>>>> https://gitlab.freedesktop.org/drm/intel/-/issues/3415
>>>> as a workaround reading dprx caps was done first to know if the panel is
>>>> < DP1.4 and then read 1 block at a time for lttpr caps.
>>>>
>>>> This can be handled in a better way and two such ways is what I see.
>>>> 1. Read LTTPR caps followed by DPRX caps as per the spec. Then on
>>>> reading dprx caps if revision < 1.4 then re-read the lttpr caps one
>>>> block at a time.
>>>>
>>>> 2. Read LTTPR caps and if 8b/10b check for correctness of the link rate
>>>> supported(lttpr caps 0xf0001), if some corrupted value is read then read
>>>> one block at a time.
>>> The driver does read the DPRX capabilities after reading the LTTPR
>>> capabilities. This is what the standard mandates.
>> Yes but before reading the LTTPR capabilities also DPRX capabilities is
>> read. Have added ref to the code snipped above.
> This is not forbidden by the specification.
>
>> Please let me know if my understanding is wrong.
>>
>>> The workaround for issues/3415 depends on the DPCD_REV value, so this is
>>> read separately before reading the LTTPR caps. I don't see a better way
>>> to implement the workaround and such read is not prohibited by the DP
>>> Standard either. So I don't see the point of the changes in this
>>> patchset.
>> As Jani pointed this can be added as a quirk for that particular panel
>> instead of mandating this kind of reading dprx caps first and then reading
>> the lttpr caps for all the monitors.
> There is already a quirk in the driver - to read out the LTTPR
> capabilities 1 byte at a time - and the quirk is applied based on the
> DPCD_REV register value of the monitor.
>
>> Thanks and Regards,
>> Arun R Murthy
>> -------------------
>>
>>>> I am open for either of the two or you have any other options as well I
>>>> am open.
>>>>
>>>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>>>> ---
>>>> Arun R Murthy (4):
>>>>         drm/display/dp: Read LTTPR caps without DPRX caps
>>>>         drm/i915/dp: Read LTTPR caps followed by DPRX caps
>>>>         drm/i915/dp: On HPD read LTTPR caps followed by DPRX caps
>>>>         drm/i915/dp: DPRX/LTTPR caps for DP should be read once
>>>>
>>>>    drivers/gpu/drm/display/drm_dp_helper.c            | 63 ++++++++++++++++++++++
>>>>    drivers/gpu/drm/i915/display/intel_dp.c            |  3 +-
>>>>    .../gpu/drm/i915/display/intel_dp_link_training.c  | 40 +++++++-------
>>>>    .../gpu/drm/i915/display/intel_dp_link_training.h  |  1 -
>>>>    drivers/gpu/drm/i915/display/intel_dp_tunnel.c     |  3 +-
>>>>    include/drm/display/drm_dp_helper.h                |  2 +
>>>>    6 files changed, 86 insertions(+), 26 deletions(-)
>>>> ---
>>>> base-commit: cfc20c776480fda8c1b0517b187bb71ec0781cd4
>>>> change-id: 20260305-dp_aux-1e27599e06c8
>>>>
>>>> Best regards,
>>>> -- 
>>>> Arun R Murthy <arun.r.murthy@intel.com>
>>>>
