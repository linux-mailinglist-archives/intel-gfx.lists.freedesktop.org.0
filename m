Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD007A0B536
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 12:14:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1C1110E650;
	Mon, 13 Jan 2025 11:14:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kx/SspC7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB7710E64E;
 Mon, 13 Jan 2025 11:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736766889; x=1768302889;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r/7fXU/LHUisK5MM5sqIOlM7+VjnT04Ei/WzhBbL03E=;
 b=kx/SspC7nn4Fl6awT542b9cl1Tp/ahbDKmHMVWotuGvixRJiJlhEBUk/
 6GRnut/6atdYy4c3v0cPi8PyOHXKSUTb5lq6InXOeEPy9PQwcGJstqbyo
 C5F7LiiaQA+9fKbRQdfDfAh1GbM26tm6UMEC1G7ZfifnSVbPyUa2RJ62s
 4Lr0x/x0oCUBHGL87BIhotdyP5v28YPUzIwE22uLMf6To5+B7PZCd9FQY
 b9uPWMQu2K5ojX9bJdAAFdnr31LGXn4/hE8wgA38ac6KQiMzWF8Fa3zpH
 csNaFHSZrnQosniEYltxmUZXCOU2iaLEkKtkDjDvaJqf0SMDnPrwutzE7 g==;
X-CSE-ConnectionGUID: lM2tXGfYTKeSeKc40dzS7g==
X-CSE-MsgGUID: KxpC1MQBRCaJRC/BXXsHLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="36930189"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="36930189"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 03:14:49 -0800
X-CSE-ConnectionGUID: o0Nk85yESn+8ZCLqlY3Wvg==
X-CSE-MsgGUID: IU0/piLsSBuzWa10FHZ81w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108507858"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 03:14:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 03:14:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 03:14:48 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 03:14:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DXrpkGimIJJYyuqOaF0l4qGme2mQG5HfW89cwzflLHfQXXTYc5ZdBTFV4rHFWWTbZglXz5rmr3JCcI6oXc0x3pnuYirFTkzhWs57qHhjWZXl/pb3E3axBJiALwx166PU+Gsx9xiDQkjYfJf/KZvLsD31tu4d/UPFaL2+KaDIW1GyD4DUQisKsUhddW7kC7Le4ANr+pP6e9l1JtA0a13oN4UTCx1Qd7ikfjrnYEnNvdr333Rw6kh+DgKjFGfpbMc0waR3moUsWBhYIcnghUwQzF+B7LcbfeAkpyAE07YL1n3jTpHPtNbXWGntJmrYtgZwjFyZa++lBmwku60VKoQIOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yoOEZtUO5q4cZpDwmpgg2SC3BoxqFPShPVtbgUBHrnI=;
 b=Pw1oiS6aV/yV1Gmv9taLhcc1WbWt2CArsu0l0xoJdW26GseugbRsG/OOM6vAGzmdv+xAEJOcs8xoK/J3pfEui88iJd+mvprPAvyrizTFB0wAnpoxRMWS1gvLgkN+fBcPhD9KH440BdjovR230gFF/GwPHNxSYgMwZ+UzaijECnb8ttwAnrsV/xJ7vvjvWgMtTHvVy1ItKQxYWltj/X1AKeXt0h+MItihjlXR08hRBNEamtUaKPh6T6pkl5H+MxSCfjRinlJVwBIr3RYhxJvO4gnfClEtz8ZDG2eRDFVdb655M+7DgoKea4exr5ut5DER5vAsVLe2j3UxpOYk38QklQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6831.namprd11.prod.outlook.com (2603:10b6:510:22d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 11:14:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 11:14:02 +0000
Message-ID: <10a4a32d-1a5e-483d-9f73-3887fb5a1864@intel.com>
Date: Mon, 13 Jan 2025 16:43:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/7] drm/i915/dsc: Check if vblank is sufficient for
 dsc prefill
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250108123541.2101643-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250108123541.2101643-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0002.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4f::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6831:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ab21b00-30d6-4103-a65a-08dd33c36273
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?djBKM0JyMzd6Y3I2SFE1VHg4RHhqbzZHYmRGZVdqcVdrR0NsZXBoazNOYmZO?=
 =?utf-8?B?Y0hueGlGSTNERGxLL3QvMnhjYUNRaFNrOU5FdkhVUmJEOStCc2kxTE0vZkY2?=
 =?utf-8?B?UXVwbFdBSHhxNWViTnFWbnA1Z295eEJuRVBzWFRGd3AreDZPYXU1RzgyNjZi?=
 =?utf-8?B?Z2hQVzV3YlBQMEltRzZqTjBtU3VoWUJyaExiOGNxSU4rY0ZHYWVod1ljeUJB?=
 =?utf-8?B?RUYxSm5SV0krQlMvZkhuSkRhSlEreDVzbkZLdkRVcUpSb0VyTk9sM3ZkNkZ2?=
 =?utf-8?B?WmozVGJuNU9qaFZoeGlWMjhGa1F5aFFJUjBrT0kwZEl2V3FXY29vQmZmL0o3?=
 =?utf-8?B?SkRYZmZRQkpReGtQQnFlZjkreG5La1crZTZXQWVYcGhrVm5IdTZTdlVFWVBu?=
 =?utf-8?B?d1oxNnNlWjRJZEVEU2YyR0JTb1RJZ0lTa2p0R1RnRStTSi84VVlHSk1mVjRl?=
 =?utf-8?B?MDRSbGN1dHZPK2Vkd2s2ZVQwMThBNnhMWG5wUXZKQ3U2VHM2dXhnN3JQQ0pL?=
 =?utf-8?B?SGIrWXhoYjByOWJjY1h1VWVrQ1FhTm1rS2oyWWhSWmR6WjRWOGRHenhRaHJa?=
 =?utf-8?B?SDRLWmMreUtWWVJhMFkveW9leE1pS2FOR05YQWFSdmI4K1NQRzlIK3pqL3g3?=
 =?utf-8?B?RFBKUEpvc1BCZTYrWlJseUoyUEE4K1BrbnVLUStlQXNrQnBTaDFJbVpsVWNr?=
 =?utf-8?B?eGNMTVdLK2FYNFYwK0ZOVmpiUmJKNmw1VTIzbTVNRGY0b2c4QTlTaFhUdlM3?=
 =?utf-8?B?NXBBaWlBK0htdWltYlo4NEZGSVZqaTk3TFFUcDBQSXNrdWlHaGtJK2R5RnE5?=
 =?utf-8?B?aFVJbkt0elZZaWh5UmI0S09VUnNiakdPMXluZjlzRlJzSVllYWN0TTFYUHNt?=
 =?utf-8?B?MG9qRm1pRDZNY2tZY2wrdnJpcGpMVDN0azJ3ZkF2WUROU0VqcTlhMWJqSmNE?=
 =?utf-8?B?V3Vpbk9qMXl4S1VVZG1XVnVZcCs5TGhlUFF3UDdXU0hUTHdjdUM5ek9MbHU4?=
 =?utf-8?B?RlV4SFNJTkZYQk5vczFxaGlCM082VjMxb0U3NStaVGV3RlZOZlRwdkZCeEt2?=
 =?utf-8?B?cWRNb2Q5UDNkSU8wL0VZSXBwbnQwcHVPU3VnNXlZaUJIM0RaNnRjVjFNTWFH?=
 =?utf-8?B?UCtrQUh2WS8vV0kvKzFWenI4dWFSVmZsRVZqRktsRHYreTVzN1ZrYWRqcnF5?=
 =?utf-8?B?TFVqbkNyRWNpOFVjZ2ZGZ0NRZlJYdUE5T01oZ1hMZXlxc2ZVU0ZjZC83cm9M?=
 =?utf-8?B?MStUazFwajl0K1FrVU4zWmZqWWFJb01TTVAvMHFPOFpjSHE0aHByMFAwRmp3?=
 =?utf-8?B?KzJiQU1DUXQyZWVBQUtVTThhLzJ3UVdNclZ1c0tsSHdpZGcrb1EzNldLdk9m?=
 =?utf-8?B?Y05PVjgrQjZYNjM4eU16OWNDRFhKcG9CMWFDWmNnNDJjZjdodXVTVzlxcExH?=
 =?utf-8?B?RDRMSyszdE4vMnNyNkdCa21TenhOOFM4QzFJN2d4N0tVMHd1WkJvdTZUSENV?=
 =?utf-8?B?NkdMcEx1Z1ZkcXVkQlh2ZHdKM01tZWJDZ2p0bnRkZGFvT0N3Sld0NUVINVlr?=
 =?utf-8?B?bWx5Y0lVTWl0QU0rMWNVMHVEaFZhNG8wM3hCakFmamhkQi95ZXVuT3dBOHRD?=
 =?utf-8?B?M2pIWWFXOWdMaEFIMTNtRWJIL2pXWEk2Vk5oZ0JvdTdMNnpRc0NxWlZBTFZj?=
 =?utf-8?B?VnlqWDVDTHM0aEZ2UE44N25HVktxc3FlRXJMRHpWVk9kYS9lZnY0M2JsaDZ4?=
 =?utf-8?B?QXV1OUF2MStqNDlCbk9peWdYUFhRc3IxOSs4c2IrUVpMQXg3clhjUHhacnJo?=
 =?utf-8?B?YzNlRWtQcFJMSE9zOWdEcnV5RzQ1VUgrdXphbm1USGJhNFBrR0cycHVudm1N?=
 =?utf-8?Q?xBXclF6/3pa/U?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1RzNkdad1BqMlVZdlF4SkVFeGpISTNYTkk2MXo5RXJJVmZBcU1NL1BpT1FL?=
 =?utf-8?B?a1JySUtadEh4RnMzaUd5ajRhUExBbmRrYi9wZEs2c0dHWk9iOTJXQnFMQS9l?=
 =?utf-8?B?aHFPQThEVjVleTRMWUZwU055SnBzTWNJaXJuU3YvaTZXWEQwaVFjRlNjOTJ4?=
 =?utf-8?B?QWRUSlVmblhGbWJyT2hZNTJnK2RtQWE4SW94OVJXZzZFMU1vcjd6L3h1V1Zp?=
 =?utf-8?B?UXBITnM2NzNYRjJ6OEp2QnNkSHovWlhzZDFlR09SNzM2Ums3YkdFUHRualdV?=
 =?utf-8?B?Sk9VSTZ6YmVPTThWQ29LMk9YU3ZDZzJNK0pSZVU1MllLWGRDN3M0eGIvZTdY?=
 =?utf-8?B?QnVxdkFEYXloYm5WQmcwdUtscjJSbVRTdysyUmw3YkNXNkpGU2NhVmVMUkJH?=
 =?utf-8?B?dUtPa0dQYjV3QXZOSFRZaEtnUUR0NXV5OHZ1SC85Qk05VFdCSmp1a0t3dlBW?=
 =?utf-8?B?K0tvbHJkYnhkakMxdDZLY0lsNXMwVndyUTVBVHRqTU94enprYWxveTZyWFVv?=
 =?utf-8?B?bmdOOFlGVVYzK2ZjbC9vNXZNQnRqU0NGcEhETi90dHA1S1pNM2FWS2ZadWx4?=
 =?utf-8?B?WnV3QkNmOVJmdzdLcEJqUlpmYTFLNkRnMElUNWg1VUM5OFFTUkxOZWJ5SzVG?=
 =?utf-8?B?OWJuOHo4dU1JdE9UWjFVUERaMGVFQVdJUThnQzZScjZaOXgxSVFobGZjcElx?=
 =?utf-8?B?ZFZZNVVMTGt5cExGUktWYURUc0RQSnVaNDl6eDVEazFveWloVzV4WDZ4VVJz?=
 =?utf-8?B?QTc0bVVhL0pSWVQyODBoTW9zQnl3K0FRWkNFQVo3QUMzS2JKTWZTTGNZL1VT?=
 =?utf-8?B?ajhIa2tQeU0wNVdRYll5bUNWcEVWa1lMQWxFN3lXaDc0UjZ4N2pUNHdTbFBD?=
 =?utf-8?B?am52a0hpd0daYWxHYWhvd2ZPaGNlS3IvKzI1WkcyaklTNm85b3B6TUR0dXRv?=
 =?utf-8?B?VWJSRUUrTzIyQTJTb2MrQnRWbTBWWStPc3hiekJRZ3ArVVBZZFJmczFWMUQx?=
 =?utf-8?B?Nzd3Mkp0Q3Y0SVpiVlR2MmdTUUtQbkM3amF4bEJ2ZFhZUExZMHVHRHoxV09R?=
 =?utf-8?B?QnUxbTNEenZ6aEJhS3RyMEFtM2hqc2xJS1c5TmdMeDFQVFliclE1QjAxNXAv?=
 =?utf-8?B?ZXYxeWRvb0wrNzdYbEI2ZUs1ZHZ6R09GM2FHYjZzL1VIdXhmTHQvNGVUMWdl?=
 =?utf-8?B?WTRYaVNVa0s3WUNYZ0hOTnk3Zlp2UnBjREdZbGJGV1BoMFFpbEx5ZS9rQTBn?=
 =?utf-8?B?OVozSjRIc0VxcnpISGZvQVVONEREZnEyeTU0d2UzeGJWYjhyMmg2MExqUXlY?=
 =?utf-8?B?K2d1enk1ZmtXaGtHdDNjdTRKYmw2dkdnTjlWbjRBMUJYb3BKZTg0aTdwVFls?=
 =?utf-8?B?K2pOcjhjMStrOU5MNFduODgxL0phWE5ZaDhGR1F6TitWOUJRU251YS9JL0pF?=
 =?utf-8?B?ZHJhWk9qNFZwaGtyaldHY2NRTUltOTZPWlR1MUdDUnhHS2ZFRTlUS2tzYW9v?=
 =?utf-8?B?NmZ2QU83Qm9ieVUxSkljR1NtS3F4TXVNYzByRHZqT0N4UWpOYW9RRjVBYVdk?=
 =?utf-8?B?VTBwTFM5MjA5cGVhekk0UzRmSjh2NEhiWmhJWUphcUxKMDQwZWVFazN4bSto?=
 =?utf-8?B?bVFpT3BOTU9OcFcxOVRxelJOK3dRU3FqbHQxeEk4aGNON0ZUcHJOR3FHRHdr?=
 =?utf-8?B?cXNrV1dKbUkrckVDSDhMVFMrQ0Vab3EwQnU1a2FDODEySVNYcGtLVXhIY2dZ?=
 =?utf-8?B?U3haNmcxcTlVaXUzb1JtVDdZemNvWTJJUEFFL3p3eVhqS1NJNmt1d0NldGc4?=
 =?utf-8?B?azgyOEVoWFhIVWxZa05LdDZXSVZkR3dkLzZReUVvRU12T1ZqVFMrbEVYaEMw?=
 =?utf-8?B?MGNUSDZWUkV2MTVVemFTRmtTRlVFNHpxQUlVaDRDWmVOWGdrbUtqdjRFM2RV?=
 =?utf-8?B?bDJiS1VwUGx6UjJFT0RIc1d0RlBzdEpoVXFaM204c250NVU5dm9PU3BLWktt?=
 =?utf-8?B?ZmE1azdRdXN3cWZRUURsK2ROQVM3UmFWRXpEQWNDSHJVN2Jqa1dISC9jbnpV?=
 =?utf-8?B?dXdQT0lVRkVFaGJwRzcrUGN6QnZEaGNLSTFPS1A1WGt1ZGVUN3hhUk5SNmxY?=
 =?utf-8?B?T2pwZ3ZNWkp4WG9hY2xCbUpsQVZ3MWYzS1VHV0FveFVEczY1ZUc1eVJxSXhn?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ab21b00-30d6-4103-a65a-08dd33c36273
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 11:14:02.3588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sAHodEtjFoRA6BNFWfzy8/pEX+UYgQ4jtkMmQE25E5X5K4rW+HoCeQNLe/7ljA9sTiMaihOMFyJy/+cGzHq4Dia6aLMYoGp2uZOKRKimJEA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6831
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


On 1/8/2025 6:05 PM, Mitul Golani wrote:
> Check if vblank is sufficient for dsc prefill latency.
>
> --v2:
> - Consider chroma downscaling factor in latency calculation. [Ankit]
> - Replace with appropriate function name.
>
> --v3:
> - Remove FIXME tag.[Ankit]
> - Replace Ycbcr444 to Ycbcr420.[Anit]
> - Correct precision. [Ankit]
> - Use some local valiables like linetime_factor and latency to
> adjust precision.
> - Declare latency to 0 initially to avoid returning any garbage values.
> - Account for second scaler downscaling factor as well. [Ankit]
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 37 ++++++++++++++++++++
>   1 file changed, 37 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index fe91854e456c..d275ec687748 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,42 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>   	return 0;
>   }
>   
> +static int
> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +						&crtc_state->scaler_state;
> +	int latency = 0;
> +	int count = hweight32(scaler_state->scaler_users);
> +	long long hscale_k[2] = {1, 1};
> +	long long vscale_k[2] = {1, 1};
> +
> +	if (!crtc_state->dsc.compression_enable)
> +		return latency;
> +
> +	for (int i = 0; i < count; i++) {
> +		hscale_k[i] = mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16;
> +		vscale_k[i] = mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16;
> +	}
> +
> +	if (count) {
> +		int chroma_downscaling_factor =
> +			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +		long long total_scaling_factor;
> +		int linetime_factor = DIV_ROUND_UP(15 * crtc_state->linetime, 10);
> +
> +		total_scaling_factor  = DIV_ROUND_UP_ULL(hscale_k[0] * vscale_k[0], 1000000);

I think this might end up being 0.

Consider hscale and vscale to be 0.5 each. hscale_k and vscale_k will be 
500 each.

total_scaling_factor will become 500*500/ 10,00,000 or 2,50,000 
/10,00,000 = 0.

I think you should compute latency for scaler 0 and then if there is 
another scaler, multiply it with the total scaling factor for scaler 1.

Regards,

Ankit


> +
> +		if (count > 1)
> +			total_scaling_factor *= DIV_ROUND_UP_ULL(hscale_k[1] * vscale_k[1],
> +								 1000000);
> +
> +		latency = total_scaling_factor * linetime_factor * chroma_downscaling_factor;
> +	}
> +
> +	return latency;
> +}
> +
>   static int
>   scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
>   {
> @@ -2333,6 +2369,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
>   		scaler_prefill_latency(crtc_state) +
> +		dsc_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
