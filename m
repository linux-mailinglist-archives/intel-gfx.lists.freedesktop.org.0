Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D302FBFFA35
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 09:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3179410E8A0;
	Thu, 23 Oct 2025 07:36:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mVBXGdWR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0578010E89F;
 Thu, 23 Oct 2025 07:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761204982; x=1792740982;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1GesMU2aG+TKeGTCQAYB2AkLm7EmLB/B1S2xam230OQ=;
 b=mVBXGdWRFj0cpOoaZCModnbYO9yKZeiPnyipkErlaWP/vOWfMQDYKXZQ
 pCAi7w8Q2uSFyetm9q2cLnvCK8/SXteawe4C5a4XFWnWAed447XfyjXDt
 5rGJ2wY+5KmlIvAl9flQseruLokjDWwNI+rCoPwKG/rJgWoZnax+S/AYC
 kFS7G/qXFZo+YlOb3D8jVT/RqSfCXKNKN9dQB42jdZWuezxwttbbPLzPg
 xlZOT5Q0L6JuufKrzsnSWhGM5sAg3yAS5tdfRpi0E3zGuIX2uINzh5So3
 oBCSPclwEh1KARgfsCAWtar3LdGhSN5m7i6BtpjcxHoo/w+Zq2KruwbVq A==;
X-CSE-ConnectionGUID: OnYmqUz3RxafGiD+Qb+jsA==
X-CSE-MsgGUID: TxGi5bELQSSwqt+eQ91K+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74484643"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="74484643"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:36:21 -0700
X-CSE-ConnectionGUID: Xrq3ruKfQNWb0/IEuW6h2g==
X-CSE-MsgGUID: GOC1J9PCRbmeZxhHJautRg==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:36:21 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:36:21 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 00:36:21 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.38) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:36:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KiqZ+O7Q2czuuOweAPH1dn085Sw5QrGCFKi6qq/VulOQQAKzj8Pm1UTbgoGAyw+QGO0EghThMYqAqkqiv3TDTTMh5oqvN5xcYFIpo7gBg1ICrCJKvuwA1CC/6UHkXyjOmrLV/1veKS0jpyOTFIaI17bsLWLMT2Tto0Uc4Ms+iNaefNLXQQSu3bUNGuTIwBpqlhYAneGJfmZgR5w9ion9NdhvduszeykS6DQmNCH4Ztti+iCFf5RwGK29g5uy9MnB5hBWR8L/w1S7rm2RzFlkRNe+j7qhg4YeLjJeqhTumo8+mBQJeuYIw57FhbIBk1+ztjhXsuzgfOsYTdeumVumSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=74dn1+E9quLthgpliIA7SJV/Uh3d2tt89kxoPCxrvuM=;
 b=nKpLWkH4uYym1QaF0yBn1KFXiHERphQ1hwNy5sk/CdUMY7Aku3g6GSAgvsCHUhrzlhkIcK9736vkp0ZYXGMm//MNcn6SuDglr3nTaUVhRVhY74n29ORy3LfLNwah3E9XNamPy4EZDRSm/d+AIjF6lBeNFFgXs9jot7GIrhyMgFDfxybQ1QFxZ9Tid9vtY+EERly37x9fausk7QIEyWtxjfQRRnExL2yxt8+329qKWqJqHDilRHoGCXszpoNpeO2dZYtMSEfQ4D1rG6gv8e2kTTjK86jmA22hzagUD3iD552NpG203sPViSb3yG4KX/FZCWg+wi9q6nkXvvujsetWnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 07:36:17 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 07:36:17 +0000
Message-ID: <a50ca05a-8625-4a82-8c11-2fa2be67cffd@intel.com>
Date: Thu, 23 Oct 2025 13:06:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/25] drm/i915/ltphy: Add LT Phy Programming recipe tables
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-8-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-8-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0168.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::10) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|SA1PR11MB8280:EE_
X-MS-Office365-Filtering-Correlation-Id: af4a7f34-5f66-4304-60df-08de1206da1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aDJDWFZIdUlRTFJCUlBhNlBwU3pZWlFWcVB2VXpGQ3pyNVNPaWFmZzRURWpv?=
 =?utf-8?B?S0lJb0w1Z3BNZTNuNFVCSjcyNGQyK3JQNkRlSVFOaUpwN0IxK3dWODZLR1I5?=
 =?utf-8?B?QXI0S0pub2ZtTHlvTXZIcTFlWE5EdVpKR2k4d25lb3BMUndsRnBiT0wxQm12?=
 =?utf-8?B?MUs4cFl4aHgxc0hCRkRMZk54eDg5WjJ4eWdWb24xL0Q3RFRkdkh4YnMrbDVW?=
 =?utf-8?B?cHNyQldJQ0tqSEc5OWsvV0J5ZEFFRUptZzZYM0prRkk4SWJyQnhmcVBqRnhR?=
 =?utf-8?B?b296cjZhNWlFYWFleTFEN3FSNk5neWZURVA1dzgxKzdvOGtRSFNvUENCVDA5?=
 =?utf-8?B?MWR5Q2hEMXIvVHVvSWtRYmJ5VEZZb2JCbjZCU2NDbmxzb3ZibUZQeDlKQW5Q?=
 =?utf-8?B?eEtSQ0JRYXdKWVV1UFhvRXgyYkJPUlZ6RWZOSDdNSE9KRUlvVUtvMk5QU21i?=
 =?utf-8?B?WWtnN0lacVI3d3V5cjVXcklud0dGLzRPdStCNURPWkxxMFlsVWwzV3IvMldS?=
 =?utf-8?B?dnFZYjhuc1BYQ0VSZmRmdVMvd3A2UTRZTUdrbWpnUGI0L2xLSnZhaXdOcE41?=
 =?utf-8?B?eXoyY3F2YkkwbWJXd2taN0hDQUhXZ2JqdXphUW80REY2WnUxNnY3a2J5S2Y3?=
 =?utf-8?B?RlZ2NnMrM3hxNDZrQ01RZ041RGQwK0w5QWNKSEpCSkVuRTR1WGZhQkg3L2Jv?=
 =?utf-8?B?NVZReE5jak5KSFo4VGVSYThaQVZTcHRDMmg2WlF4TkVpUFFxaVRrVkdobWZZ?=
 =?utf-8?B?MjNXRXR4Q1hoMWlsVkZNN3ltK1VKajZoUnR5S0puVUVSeW55NTUvQWY5ZCtZ?=
 =?utf-8?B?LzJYYWlJYjl6a2pFL1JWT0Y2L2k0clZveGsxMTZQNE1VTmd0V0pKN2JEeS9y?=
 =?utf-8?B?Z3I3TjZJRmYxbFNxaEZtSWNwUlVJYkYvZ2Z5ZTFCWEhpL1JUSjN0UUhYT2pT?=
 =?utf-8?B?bWlBVENSSzQ1N3hPWXpVU2R5ZkxpL3JTZEE0RUN1RVJieXhQRUZkckRtQXow?=
 =?utf-8?B?NUFCcThWdDRKcXNZRi93SkxZZ1hmQVNPbW5Wb3BaWU1HZHhFRXMxblE4SlVG?=
 =?utf-8?B?eFR0QUZYV2g5NWpXMk1YS001SStyL0pLWTkrOUtqdlM4RG9TQk5ibDZSMXdC?=
 =?utf-8?B?T3p5OXFDam94TXhnUzVhczViVWgyRFpqZVRjeUs5N2EvK3lXbkp0d1krRGFr?=
 =?utf-8?B?KytyOTJNTFhaZmhZYW9qNlowMVFFVzFhWkF3b2hBTkpPUzJwMzM2RG9YQXkx?=
 =?utf-8?B?S21lK2F3ZGk0aGNGdFhuWGdobWYrTjR4UDNXSm9pL3VYYkdpelJFY1FlYnQ1?=
 =?utf-8?B?cEozS0Ywa1BuNnJvc2tIdTV3S2tKVTdkUm5MaFRRd1VQcU5NT0d0dmJvdTVq?=
 =?utf-8?B?YWs0MVJxWFpna1d4aC82cHg2WnVjTnp1dnRkM2VZSHpZSzRLSFF3Q3N5RWxu?=
 =?utf-8?B?MTIveS9jMFMrSlphb1d6blpPWkNDOGt5THRYTVBydjBhRDlnTm1GWmZwWktS?=
 =?utf-8?B?Z3owc2I1bHcxNGw3QkdKekl1SlV1WkcvUkVIQnlvM1BpYTBhTHc2bHBkVUtP?=
 =?utf-8?B?eVovb1BkRVo2YmVwMlBpT3dVbWRCM2hobnY3TC8xSi9ERDhIbTYyUmpNRDdD?=
 =?utf-8?B?a2NBUytrclhrQ0xoTUQwNG9UOGRIUmNJZEx0MkZzZzBxZThVWloxMThVQ3ZE?=
 =?utf-8?B?V2x5OWtPdUZRTGcydy94M2tvc1B5VUk4SjBad1UwUEF5cTdMWE01OWg1cDRP?=
 =?utf-8?B?djdnK21pZVZMbCt1N3lDYWRDZ3VTNzloSWEzWGl5SDhETi9PcEs5OXhOYjRE?=
 =?utf-8?B?aTgrY095V2xLeFJWNFlRcVpsa2xIZVRSVFlURlk3UXN3RGZKbmh2Zy9mN01I?=
 =?utf-8?B?cHlxbnRCUS9ZWFRHWVFOdWFidjJhTVVNb285d0JVTFdXZmN0RXBGdDRsYXlR?=
 =?utf-8?Q?KdggPeRY7mV6CLt0GooazcalBhQH4kVg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnhQWHMxZ1BBekU3V1NGRExOUDRLVkxHT1NVTGdlUjV3WURVY013VFNwbzdz?=
 =?utf-8?B?UXpLMWJFN1FLVnpCeVFoNks0dGRMS0hIcWVMSzlsR0c5V29KK01DUjJSOGw5?=
 =?utf-8?B?ZTErSnRFWHVNZ2VlTGJHRWxOdTZVUFY5M2ZrVXpKczJBV2ZJTHhlZ2c0L3Ev?=
 =?utf-8?B?Z0dya0J3TktxNU5weHNNaDR4cWR5K1NxeTkyQy9WK1FTOFRoRU1DcHovWVdj?=
 =?utf-8?B?ODdlMSsrNDZVTFdyRnY5ZGNyaTRaMlpVbWd1K1o5eXNYdDErcGFOZXVZdDlO?=
 =?utf-8?B?QkJpYTBndjVmZ2lKcERJT0F1WklmOFhONVl1RCtETVRMNlNlSnE1TWhrVmJP?=
 =?utf-8?B?SnN6WXRwTUFTTE1rdUFMbitSWWUwZThGQ2I1ZUk0bHFSdVJUWk1FeCtxTFcz?=
 =?utf-8?B?emVtQWFrSG5mRW5WdEhqaW9zTmdIbGtFYzZHTnN0TElYNmV6V1RmMHlNUTlS?=
 =?utf-8?B?UmZlYWhrTGY1cFZPWnA4TzV1L0NxdmZleTZyUENlcWx3ZmJTc042VlpDajZE?=
 =?utf-8?B?NUROSmIyaUd3eUdsL0ZoODUyTjZHamtoR0dqZVVab0N0a1VuR2dnS1I0dnZo?=
 =?utf-8?B?cVYyRW5QT2FodkZucE9UQkdWOTlwT3RpUUY0M1JZVEJIVzhpbERVQ0w3Vll5?=
 =?utf-8?B?aDZpVU01UC9TZ2d6T0pyaEdrbWphOUl0eE1EeTVxOTA2OUZWR2R0cHVCeXBV?=
 =?utf-8?B?RGxPSWVOemhWRnVCL09keW1kN1M4MHRuQ0YyS245NUZPbTRIR3NQbGZGMzdv?=
 =?utf-8?B?clQrZkdBWnQ0MGRiWjlLU0tIN0VYODhXTFcxblhHaDNFam5kWGhJSzhUdjFy?=
 =?utf-8?B?NFgxNVBQbWUyR0J5UW5zQXJwNEkvT2FvcFRySVZNMkNLV2dycllaNzF3eTlS?=
 =?utf-8?B?SmY4RzVDak1QKzhORE9kOS8xOFc5N3kxTUNtamdyaDJweXVLYWhsZzJmZ2Ju?=
 =?utf-8?B?YjlpY2tiM3VnT2FTWDFXUjNrejhVVFgxOEtPd2N3d2lJTlV0SUs2UkhtMFAz?=
 =?utf-8?B?VVk4YktuL2tocGhUQVAxU1BOdUdyVjJSZFNidG9XSWlvSFhPdGh3cEJqcjVS?=
 =?utf-8?B?ajdXd3pwK2FQMU5XbG9yVTRMamdCelhON3ZlKzFZWGIwV2xCdENWUGt0cFlj?=
 =?utf-8?B?MCtwb0w0OTF2d0JVb1ZBNG55V0NWY0IySFlHbmVhaHM1bEMwQUxERHRCanR1?=
 =?utf-8?B?ZWlYcnBtTlJrc3RyUmd1ekxXbVF3Y3RsaDlNMjkyWHovRFJScFBNQ0FJbm1G?=
 =?utf-8?B?cFlwd1hTSFQybjJ0MXlHZ1ZXK21wbVhQVC82SmtmTW4wYjI4VklsNjZoWG52?=
 =?utf-8?B?cGI1QUd4NThVWFBWdG9FMFFDR1B4UTNSWkljVDdvRm5zT2IwRXJVZ01WM3lQ?=
 =?utf-8?B?eDFUamNaM1o3ekhWcmMwV2RPWWpWK3ZKZU05TzRVS09IOENhMFFjN0huVDla?=
 =?utf-8?B?VkZnajFCQUpJTVh1eXVibEJGaUNDckw2VVdOaXZjbDAreWFNRVdqa3g5dEY2?=
 =?utf-8?B?MTdwUlcyOFk1OENEWGZCWnRRTVdRQ0JqMXJoakNCVGdmeXVIMzc2SXRoSUtR?=
 =?utf-8?B?QnBkbVM0b1Q0NENqV3pHNkJMVFFEOWQyRm1va1gxM1ltMk5VT0d2Vmp2TEt1?=
 =?utf-8?B?djJRV3MxQzQrZ1pWUk1TQS9RdHByN240UEsyMmFGaGRaY3Q3ZjRxR1ladU5Y?=
 =?utf-8?B?azU3NVVncGFTem9ZWmROTW5DR0g5YzcyL1dnRXIvbzBwZHcweUtpWXVhdzZZ?=
 =?utf-8?B?UEk2MGhOZkVKMU9scy9VMXF3YzZoWDFWb1RBMzBybklpd0I1QWE5VGxvMnZh?=
 =?utf-8?B?WG9KSjdYd2t5Q0kwRzMrcGNzdTR1ZlVhZS8rdnRiS2E2ZTZPYUthc01ZSWhi?=
 =?utf-8?B?VGZEVDFEMWpqbXdzOFVpcStEU2tqbnoyTE1BTlplUmEwNTQwWDNTZkRzVm1P?=
 =?utf-8?B?alRoa0UrT2xVVTB2dHVFd0VBbHNIVUtJaG1NSVJLRTJ6LzBwUzZ1SnFKNG85?=
 =?utf-8?B?cXRWTCthSisvKzBURnp1bGdXZ1FXZUUzOUVhdUNOY2w4ZVRHL2FWNGx1Vmw2?=
 =?utf-8?B?dTYyajd6SndZaFBlQXdiZU5SbE9STjl0Ky9OMld2M3dqZEtXWG1kWXNZc0M1?=
 =?utf-8?B?akplWi9vU0hEQUdvMUhpRXVrOVZIR1p6dU9WRWhoMHpQYzBJaTY2VTNNci9L?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af4a7f34-5f66-4304-60df-08de1206da1c
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 07:36:17.5290 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DS3extB6DGDcFSOGjj+OjisamrqpShOpnzRZmT3KMltAsjndkA6UT1v+Hy7jgBKj1l62fCPMOwDuELMErmWing==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8280
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

On 15-10-2025 09:37, Suraj Kandpal wrote:
> Add the LT Phy programming recipe tables for eDP, DP & HDMI and a
> function to use the correct table.
>
> Bspec: 74667
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Look good!
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------
> ---
>   drivers/gpu/drm/i915/display/intel_dpll.c     |  29 +-
>   drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  11 +
>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 992 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.h   |   5 +
>   4 files changed, 1036 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index f969c5399a51..8c3ef5867a12 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -17,6 +17,7 @@
>   #include "intel_display_types.h"
>   #include "intel_dpio_phy.h"
>   #include "intel_dpll.h"
> +#include "intel_lt_phy.h"
>   #include "intel_lvds.h"
>   #include "intel_lvds_regs.h"
>   #include "intel_panel.h"
> @@ -1232,6 +1233,26 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
>   	return 0;
>   }
>   
> +static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
> +				      struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_encoder *encoder =
> +		intel_get_crtc_new_encoder(state, crtc_state);
> +	int ret;
> +
> +	ret = intel_lt_phy_pll_calc_state(crtc_state, encoder);
> +	if (ret)
> +		return ret;
> +
> +	/* TODO: Do the readback via intel_compute_shared_dplls() */
> +
> +	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
> +
> +	return 0;
> +}
> +
>   static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> @@ -1691,6 +1712,10 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
>   	return 0;
>   }
>   
> +static const struct intel_dpll_global_funcs xe3plpd_dpll_funcs = {
> +	.crtc_compute_clock = xe3plpd_crtc_compute_clock,
> +};
> +
>   static const struct intel_dpll_global_funcs mtl_dpll_funcs = {
>   	.crtc_compute_clock = mtl_crtc_compute_clock,
>   };
> @@ -1789,7 +1814,9 @@ int intel_dpll_crtc_get_dpll(struct intel_atomic_state *state,
>   void
>   intel_dpll_init_clock_hook(struct intel_display *display)
>   {
> -	if (DISPLAY_VER(display) >= 14)
> +	if (HAS_LT_PHY(display))
> +		display->funcs.dpll = &xe3plpd_dpll_funcs;
> +	else if (DISPLAY_VER(display) >= 14)
>   		display->funcs.dpll = &mtl_dpll_funcs;
>   	else if (display->platform.dg2)
>   		display->funcs.dpll = &dg2_dpll_funcs;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index f131bdd1c975..6183da90b28d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -267,6 +267,16 @@ struct intel_cx0pll_state {
>   	bool tbt_mode;
>   };
>   
> +struct intel_lt_phy_pll_state {
> +	u32 clock; /* in kHz */
> +	u8 addr_msb[13];
> +	u8 addr_lsb[13];
> +	u8 data[13][4];
> +	u8 config[3];
> +	bool ssc_enabled;
> +	bool tbt_mode;
> +};
> +
>   struct intel_dpll_hw_state {
>   	union {
>   		struct i9xx_dpll_hw_state i9xx;
> @@ -276,6 +286,7 @@ struct intel_dpll_hw_state {
>   		struct icl_dpll_hw_state icl;
>   		struct intel_mpllb_state mpllb;
>   		struct intel_cx0pll_state cx0pll;
> +		struct intel_lt_phy_pll_state ltpll;
>   	};
>   };
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index c2d5e4b82db5..c8910262efb6 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -12,6 +12,7 @@
>   #include "intel_de.h"
>   #include "intel_display.h"
>   #include "intel_display_types.h"
> +#include "intel_dpll_mgr.h"
>   #include "intel_lt_phy.h"
>   #include "intel_lt_phy_regs.h"
>   #include "intel_psr.h"
> @@ -23,6 +24,957 @@
>   					 INTEL_LT_PHY_LANE0)
>   #define MODE_DP				3
>   
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr = {
> +	.clock = 162000,
> +	.config = {
> +		0x83,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x5,  0xa,  0x2a, 0x20 },
> +		{ 0x80, 0x0,  0x0,  0x0  },
> +		{ 0x4,  0x4,  0x82, 0x28 },
> +		{ 0xfa, 0x16, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x5,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x4b, 0x48, 0x0,  0x0  },
> +		{ 0x27, 0x8,  0x0,  0x0  },
> +		{ 0x5a, 0x13, 0x29, 0x13 },
> +		{ 0x0,  0x5b, 0xe0, 0x0a },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr1 = {
> +	.clock = 270000,
> +	.config = {
> +		0x8b,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x3,  0xca, 0x34, 0xa0 },
> +		{ 0xe0, 0x0,  0x0,  0x0  },
> +		{ 0x5,  0x4,  0x81, 0xad },
> +		{ 0xfa, 0x11, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x7,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x43, 0x48, 0x0,  0x0  },
> +		{ 0x27, 0x8,  0x0,  0x0  },
> +		{ 0x5a, 0x13, 0x29, 0x13 },
> +		{ 0x0,  0x5b, 0xe0, 0x0d },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr2 = {
> +	.clock = 540000,
> +	.config = {
> +		0x93,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x1,  0x4d, 0x34, 0xa0 },
> +		{ 0xe0, 0x0,  0x0,  0x0  },
> +		{ 0xa,  0x4,  0x81, 0xda },
> +		{ 0xfa, 0x11, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x7,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x43, 0x48, 0x0,  0x0  },
> +		{ 0x27, 0x8,  0x0,  0x0  },
> +		{ 0x5a, 0x13, 0x29, 0x13 },
> +		{ 0x0,  0x5b, 0xe0, 0x0d },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr3 = {
> +	.clock = 810000,
> +	.config = {
> +		0x9b,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x1,  0x4a, 0x34, 0xa0 },
> +		{ 0xe0, 0x0,  0x0,  0x0  },
> +		{ 0x5,  0x4,  0x80, 0xa8 },
> +		{ 0xfa, 0x11, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x7,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x43, 0x48, 0x0,  0x0  },
> +		{ 0x27, 0x8,  0x0,  0x0  },
> +		{ 0x5a, 0x13, 0x29, 0x13 },
> +		{ 0x0,  0x5b, 0xe0, 0x0d },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr10 = {
> +	.clock = 1000000,
> +	.config = {
> +		0x43,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x85,
> +		0x85,
> +		0x85,
> +		0x85,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x1,  0xa,  0x20, 0x80 },
> +		{ 0x6a, 0xaa, 0xaa, 0xab },
> +		{ 0x0,  0x3,  0x4,  0x94 },
> +		{ 0xfa, 0x1c, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x4,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x45, 0x48, 0x0,  0x0  },
> +		{ 0x27, 0x8,  0x0,  0x0  },
> +		{ 0x5a, 0x14, 0x2a, 0x14 },
> +		{ 0x0,  0x5b, 0xe0, 0x8  },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr13_5 = {
> +	.clock = 1350000,
> +	.config = {
> +		0xcb,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x2,  0x9,  0x2b, 0xe0 },
> +		{ 0x90, 0x0,  0x0,  0x0  },
> +		{ 0x8,  0x4,  0x80, 0xe0 },
> +		{ 0xfa, 0x15, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x6,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x49, 0x48, 0x0,  0x0  },
> +		{ 0x27, 0x8,  0x0,  0x0  },
> +		{ 0x5a, 0x13, 0x29, 0x13 },
> +		{ 0x0,  0x57, 0xe0, 0x0c },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr20 = {
> +	.clock = 2000000,
> +	.config = {
> +		0x53,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x85,
> +		0x85,
> +		0x85,
> +		0x85,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +		0x86,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x1,  0xa,  0x20, 0x80 },
> +		{ 0x6a, 0xaa, 0xaa, 0xab },
> +		{ 0x0,  0x3,  0x4,  0x94 },
> +		{ 0xfa, 0x1c, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x4,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x45, 0x48, 0x0,  0x0  },
> +		{ 0x27, 0x8,  0x0,  0x0  },
> +		{ 0x5a, 0x14, 0x2a, 0x14 },
> +		{ 0x0,  0x5b, 0xe0, 0x8  },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state * const xe3plpd_lt_dp_tables[] = {
> +	&xe3plpd_lt_dp_rbr,
> +	&xe3plpd_lt_dp_hbr1,
> +	&xe3plpd_lt_dp_hbr2,
> +	&xe3plpd_lt_dp_hbr3,
> +	&xe3plpd_lt_dp_uhbr10,
> +	&xe3plpd_lt_dp_uhbr13_5,
> +	&xe3plpd_lt_dp_uhbr20,
> +	NULL,
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 = {
> +	.clock = 216000,
> +	.config = {
> +		0xa3,
> +		0x2d,
> +		0x1,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x3,  0xca, 0x2a, 0x20 },
> +		{ 0x80, 0x0,  0x0,  0x0  },
> +		{ 0x6,  0x4,  0x81, 0xbc },
> +		{ 0xfa, 0x16, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x5,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x4b, 0x48, 0x0,  0x0  },
> +		{ 0x27, 0x8,  0x0,  0x0  },
> +		{ 0x5a, 0x13, 0x29, 0x13 },
> +		{ 0x0,  0x5b, 0xe0, 0x0a },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_43 = {
> +	.clock = 243000,
> +	.config = {
> +		0xab,
> +		0x2d,
> +		0x1,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x3,  0xca, 0x2f, 0x60 },
> +		{ 0xb0, 0x0,  0x0,  0x0  },
> +		{ 0x6,  0x4,  0x81, 0xbc },
> +		{ 0xfa, 0x13, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x6,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x47, 0x48, 0x0,  0x0  },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +		{ 0x5a, 0x13, 0x29, 0x13 },
> +		{ 0x0,  0x5b, 0xe0, 0x0c },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_3_24 = {
> +	.clock = 324000,
> +	.config = {
> +		0xb3,
> +		0x2d,
> +		0x1,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x2,  0x8a, 0x2a, 0x20 },
> +		{ 0x80, 0x0,  0x0,  0x0  },
> +		{ 0x6,  0x4,  0x81, 0x28 },
> +		{ 0xfa, 0x16, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x5,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x4b, 0x48, 0x0,  0x0  },
> +		{ 0x27, 0x8,  0x0,  0x0  },
> +		{ 0x5a, 0x13, 0x29, 0x13 },
> +		{ 0x0,  0x5b, 0xe0, 0x0a },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_4_32 = {
> +	.clock = 432000,
> +	.config = {
> +		0xbb,
> +		0x2d,
> +		0x1,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x1,  0x4d, 0x2a, 0x20 },
> +		{ 0x80, 0x0,  0x0,  0x0  },
> +		{ 0xc,  0x4,  0x81, 0xbc },
> +		{ 0xfa, 0x16, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x5,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x4b, 0x48, 0x0,  0x0  },
> +		{ 0x27, 0x8,  0x0,  0x0  },
> +		{ 0x5a, 0x13, 0x29, 0x13 },
> +		{ 0x0,  0x5b, 0xe0, 0x0a },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_6_75 = {
> +	.clock = 675000,
> +	.config = {
> +		0xdb,
> +		0x2d,
> +		0x1,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x1,  0x4a, 0x2b, 0xe0 },
> +		{ 0x90, 0x0,  0x0,  0x0  },
> +		{ 0x6,  0x4,  0x80, 0xa8 },
> +		{ 0xfa, 0x15, 0x83, 0x11 },
> +		{ 0x80, 0x0f, 0xf9, 0x53 },
> +		{ 0x84, 0x26, 0x6,  0x4  },
> +		{ 0x0,  0xe0, 0x1,  0x0  },
> +		{ 0x49, 0x48, 0x0,  0x0  },
> +		{ 0x27, 0x8,  0x0,  0x0  },
> +		{ 0x5a, 0x13, 0x29, 0x13 },
> +		{ 0x0,  0x57, 0xe0, 0x0c },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state * const xe3plpd_lt_edp_tables[] = {
> +	&xe3plpd_lt_dp_rbr,
> +	&xe3plpd_lt_edp_2_16,
> +	&xe3plpd_lt_edp_2_43,
> +	&xe3plpd_lt_dp_hbr1,
> +	&xe3plpd_lt_edp_3_24,
> +	&xe3plpd_lt_edp_4_32,
> +	&xe3plpd_lt_dp_hbr2,
> +	&xe3plpd_lt_edp_6_75,
> +	&xe3plpd_lt_dp_hbr3,
> +	NULL,
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 = {
> +	.clock = 25200,
> +	.config = {
> +		0x84,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x0c, 0x15, 0x27, 0x60 },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +		{ 0x8,  0x4,  0x98, 0x28 },
> +		{ 0x42, 0x0,  0x84, 0x10 },
> +		{ 0x80, 0x0f, 0xd9, 0xb5 },
> +		{ 0x86, 0x0,  0x0,  0x0  },
> +		{ 0x1,  0xa0, 0x1,  0x0  },
> +		{ 0x4b, 0x0,  0x0,  0x0  },
> +		{ 0x28, 0x0,  0x0,  0x0  },
> +		{ 0x0,  0x14, 0x2a, 0x14 },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_272 = {
> +	.clock = 27200,
> +	.config = {
> +		0x84,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x0b, 0x15, 0x26, 0xa0 },
> +		{ 0x60, 0x0,  0x0,  0x0  },
> +		{ 0x8,  0x4,  0x96, 0x28 },
> +		{ 0xfa, 0x0c, 0x84, 0x11 },
> +		{ 0x80, 0x0f, 0xd9, 0x53 },
> +		{ 0x86, 0x0,  0x0,  0x0  },
> +		{ 0x1,  0xa0, 0x1,  0x0  },
> +		{ 0x4b, 0x0,  0x0,  0x0  },
> +		{ 0x28, 0x0,  0x0,  0x0  },
> +		{ 0x0,  0x14, 0x2a, 0x14 },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_742p5 = {
> +	.clock = 74250,
> +	.config = {
> +		0x84,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x4,  0x15, 0x26, 0xa0 },
> +		{ 0x60, 0x0,  0x0,  0x0  },
> +		{ 0x8,  0x4,  0x88, 0x28 },
> +		{ 0xfa, 0x0c, 0x84, 0x11 },
> +		{ 0x80, 0x0f, 0xd9, 0x53 },
> +		{ 0x86, 0x0,  0x0,  0x0  },
> +		{ 0x1,  0xa0, 0x1,  0x0  },
> +		{ 0x4b, 0x0,  0x0,  0x0  },
> +		{ 0x28, 0x0,  0x0,  0x0  },
> +		{ 0x0,  0x14, 0x2a, 0x14 },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_1p485 = {
> +	.clock = 148500,
> +	.config = {
> +		0x84,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x2,  0x15, 0x26, 0xa0 },
> +		{ 0x60, 0x0,  0x0,  0x0  },
> +		{ 0x8,  0x4,  0x84, 0x28 },
> +		{ 0xfa, 0x0c, 0x84, 0x11 },
> +		{ 0x80, 0x0f, 0xd9, 0x53 },
> +		{ 0x86, 0x0,  0x0,  0x0  },
> +		{ 0x1,  0xa0, 0x1,  0x0  },
> +		{ 0x4b, 0x0,  0x0,  0x0  },
> +		{ 0x28, 0x0,  0x0,  0x0  },
> +		{ 0x0,  0x14, 0x2a, 0x14 },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 = {
> +	.clock = 594000,
> +	.config = {
> +		0x84,
> +		0x2d,
> +		0x0,
> +	},
> +	.addr_msb = {
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x87,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +		0x88,
> +	},
> +	.addr_lsb = {
> +		0x10,
> +		0x0c,
> +		0x14,
> +		0xe4,
> +		0x0c,
> +		0x10,
> +		0x14,
> +		0x18,
> +		0x48,
> +		0x40,
> +		0x4c,
> +		0x24,
> +		0x44,
> +	},
> +	.data = {
> +		{ 0x0,  0x4c, 0x2,  0x0  },
> +		{ 0x0,  0x95, 0x26, 0xa0 },
> +		{ 0x60, 0x0,  0x0,  0x0  },
> +		{ 0x8,  0x4,  0x81, 0x28 },
> +		{ 0xfa, 0x0c, 0x84, 0x11 },
> +		{ 0x80, 0x0f, 0xd9, 0x53 },
> +		{ 0x86, 0x0,  0x0,  0x0  },
> +		{ 0x1,  0xa0, 0x1,  0x0  },
> +		{ 0x4b, 0x0,  0x0,  0x0  },
> +		{ 0x28, 0x0,  0x0,  0x0  },
> +		{ 0x0,  0x14, 0x2a, 0x14 },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +		{ 0x0,  0x0,  0x0,  0x0  },
> +	},
> +};
> +
> +static const struct intel_lt_phy_pll_state * const xe3plpd_lt_hdmi_tables[] = {
> +	&xe3plpd_lt_hdmi_252,
> +	&xe3plpd_lt_hdmi_272,
> +	&xe3plpd_lt_hdmi_742p5,
> +	&xe3plpd_lt_hdmi_1p485,
> +	&xe3plpd_lt_hdmi_5p94,
> +	NULL,
> +};
> +
>   static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder)
>   {
>   	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> @@ -237,6 +1189,46 @@ static void intel_lt_phy_transaction_end(struct intel_encoder *encoder, intel_wa
>   	intel_display_power_put(display, POWER_DOMAIN_DC_OFF, wakeref);
>   }
>   
> +static const struct intel_lt_phy_pll_state * const *
> +intel_lt_phy_pll_tables_get(struct intel_crtc_state *crtc_state,
> +			    struct intel_encoder *encoder)
> +{
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +			return xe3plpd_lt_edp_tables;
> +
> +		return xe3plpd_lt_dp_tables;
> +	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		return xe3plpd_lt_hdmi_tables;
> +	}
> +
> +	MISSING_CASE(encoder->type);
> +	return NULL;
> +}
> +
> +int
> +intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
> +			    struct intel_encoder *encoder)
> +{
> +	const struct intel_lt_phy_pll_state * const *tables;
> +	int i;
> +
> +	tables = intel_lt_phy_pll_tables_get(crtc_state, encoder);
> +	if (!tables)
> +		return -EINVAL;
> +
> +	for (i = 0; tables[i]; i++) {
> +		if (crtc_state->port_clock == tables[i]->clock) {
> +			crtc_state->dpll_hw_state.ltpll = *tables[i];
> +			return 0;
> +		}
> +	}
> +
> +	/* TODO: Add a function to compute the data for HDMI TMDS*/
> +
> +	return -EINVAL;
> +}
> +
>   void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index bd3ff3007e1d..3f255c9b0f96 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -13,5 +13,10 @@ struct intel_crtc_state;
>   
>   void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state);
> +int
> +intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
> +			    struct intel_encoder *encoder);
> +
> +#define HAS_LT_PHY(display) (DISPLAY_VER(display) >= 35)
>   
>   #endif /* __INTEL_LT_PHY_H__ */
