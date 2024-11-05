Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2309BCCF9
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 13:45:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D5910E0EF;
	Tue,  5 Nov 2024 12:45:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EZ8J4Mak";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF44810E061;
 Tue,  5 Nov 2024 12:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730810710; x=1762346710;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=CWnVGJYtlDRktUaA2Su5AFYP4hPy7tO3jv7HokXaxic=;
 b=EZ8J4Mak6NBBr0Ats56dJWpSMuQNIZcVS87z+GefrE9YUBBKW5NR3yDO
 ZryyTh19VfRJzRQ8lJqBP8GfF4ltmQ3OSSZK58rUaPOOVnQzSPBi4B8R+
 k8/Puwpb6B50sDuDLhjUHLBliPMFMtMdeMb+UxAf+fRJvlYFqcJ/WTcJ1
 qR6B2SMymHa9NRGwKlkqdFNYvqqi26wMsXvmU12iHgNJZy8wRDSgN4Yub
 419gbDR0R3dKAeCXY/xbpJCWab85G0l9gwIpgbjEHCcvaVRILJEYWrHu9
 m21qNpYddHObZKNbMsM53fMPTomM/Jc5KboCcD2GDIElgJCr9uUEW5Rst Q==;
X-CSE-ConnectionGUID: 2kWKUGOBToqBcF4bCA5MHA==
X-CSE-MsgGUID: jYPOZxSaQ1+CUGq5E/QKrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="41926179"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="41926179"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 04:45:09 -0800
X-CSE-ConnectionGUID: zPIlGVbuQ56g2OluYv8A5Q==
X-CSE-MsgGUID: upbSPhrHSEasQf6oHMliyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="84827051"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 04:45:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 04:45:08 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 04:45:08 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 04:45:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VqUP7x0zRbvwiBaa3fEjsBkS6e+WvQmCcOez2ofTQsEc9YbdnfFo/ny8NRWZ11psaRW5z2QxWVKxfvik32VIT0i53EF0H1wDBvnniQFU399e0Nn++8DOof8xpKxdUEkGDMs8xxbVqggfPqcDF661vt56aNPL2GV7aLazYBz0fBxmDVsvD/hHkK0yzNZ18R84+q17l9eWvo3Puqq1XmvDqJ04Ppzm2d+4s4eXnYBlbQLQ+Lq6hgPavFm5ZxGKGspHMk3uEY+Wu2en2NshPamx9hcFzaJW7stAb16UTLP0ESiTmmQwkJa3GJ0b16DvGQ1fSZPn7lfKklckro6ONa2q1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sylidi19+7THZsYRCswFZmUVnyN7hHSPUVFW4U6HZpc=;
 b=faVCsJR1pxeOwr4wsZMbJuT5nZA80EnqJwhUoj37+utNENWQxVmFOUVODvdgxlRq2YKdbSvNB5Lp8PHl5w1tlgHQ0ThgNOU6uKWovR/Giu7PvyGxoOdQljbee8R5K91A1GVHcuZ8OQQ7vQTWl7R7VNQEhGISAY5Rfy/bRT67yIAUCd05f2+mBHJcds9O7eqj7eOD1EMChhypjH5VEqht6dxi6UZFjgXAhkCkJmvFwqUl7tRP8gQjfjEo/BGtwZ+ytfiSiwHeDDNFoyHgviO3IxXDlx4Ik35kNgnTv5P4R97x8ig1044HdEBECJN5ul7NBb4YcMtHkBRqGfxtjSio3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 12:45:03 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 12:45:03 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ac29b67d7e6db0f2900edf0e0cd40b1c5befb895.camel@coelho.fi>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-5-gustavo.sousa@intel.com>
 <ac29b67d7e6db0f2900edf0e0cd40b1c5befb895.camel@coelho.fi>
Subject: Re: [PATCH 04/13] drm/i915/dmc_wl: Get wakelock when disabling
 dynamic DC states
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 5 Nov 2024 09:44:58 -0300
Message-ID: <173081069857.2525.5073945892247170977@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0105.namprd03.prod.outlook.com
 (2603:10b6:303:b7::20) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7828:EE_
X-MS-Office365-Filtering-Correlation-Id: d9f9105a-a88e-4c91-e676-08dcfd97aadc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUpBZ000WUVyRnQ2RmNNMjFQeEx2a2lQeGM3ZTV4dWxZeElEOUNEWCtXS0VT?=
 =?utf-8?B?cC9jV0tsQ0JJQ3UrK2N6blRFeVVFaVdqc3MrVkJYajhqcXJ5aEs5RkMvaFhK?=
 =?utf-8?B?WEpFN2NFTjlodU9hYjZ1czd1RURhOUZYLzNWb2FlK2pyZzI2aHpEcGZNRUR1?=
 =?utf-8?B?MDRaVkt5WDRBMmRFWUUvOE0vaFcrSXJnbW1wVS8wK0hHcEVoWHZoOXRqR1di?=
 =?utf-8?B?bUdEa05xbDJGSTdUQTBHNXZHVE9semJTRk0xSk9qL1B2UVkyYXA3ejl0eHJs?=
 =?utf-8?B?L09MdkZXMjd2Zlc2RnhlR1VxZWRHQTNkdHdTai8wdFVhV3R2SUcwNkZFcVVY?=
 =?utf-8?B?ME9ENUk4S1Y1WDZqMjZtQXhMenM5S2s3K1kxVHptYlF4S21kOFY2Z0RtcUlQ?=
 =?utf-8?B?S1c5RjI0cGF0aUVJSzBHam9zL0ZUY01FTzZiTmZwaEdmc1M0eVdkSTIrR2tD?=
 =?utf-8?B?UWRodTRzVkZ6OWxWZEp0aWlYck84MTRWaTM1Z3REZExubktrNzRHc3htenR2?=
 =?utf-8?B?aFZ4VVpVSWFXVnJ3YmNsQ3pwMEp5dzBSU0ZwRzU1Q3dSN1Y2QXdRVkxIQ2Fr?=
 =?utf-8?B?WG15MkJuTzF4WENlMTYzS3VaVjllZCtZdWREek14VkxvQ3ZUdkF0eXdWOEhO?=
 =?utf-8?B?aE9PWURXaFdSWXJ0ZktUeHNKc1JyZjQwdFRBVUN4dW9ldWJFLzhXYVhxdkRj?=
 =?utf-8?B?VkpySmdScDVYRmx2MW8yYllpRzlvS1g1ZjlHd3YrazhYWjVBYlQ5aUxqenQ0?=
 =?utf-8?B?MWlBY0FnTEkxdVVjdXdGNGF5QzM3WU9oMG1laWoxeFdWNDYxNEV4VUNyemk1?=
 =?utf-8?B?bk9aMWN1eFJXdGZWdTdXRFk0TzE0aWREVGRiOUFOOVdLYlR0bkt5Yjh2L040?=
 =?utf-8?B?eDI5dFpEQlRXZmVDYS9FSHhqcXNST0NoSGZyODQ5Q1BHSmJJSkl3a2VIUkww?=
 =?utf-8?B?Y1hCc00rVUVhY0ZSOURXT21pUFVpUjI2bFlaZjc3eVBuRnJtRDB1aFl6S1ow?=
 =?utf-8?B?alM1VU1PUEZJYnpJUExERGVCVVFYZ1kvOXpZWnV3WHM3OTl1aVg5Z0xkMWNU?=
 =?utf-8?B?bkh1N3RUZDh2NXduT0lKc3Z0bVA5M3JOc08zWEFWMmIvL1ZLd3ByV1JxaHdQ?=
 =?utf-8?B?aFJ4ajRicVl0R1ZIOHFzVCs2U0c2WGorYXBhQlBCdm9tZzJZUmtxa050WFd1?=
 =?utf-8?B?SDFZYzdac3JLQ3B0WmFCT3oyWHR4MkhDRytEWlEyNDBCeTVUMzEvWk84MWpT?=
 =?utf-8?B?WFJQZkJ6K1A1WGtzcmhwM2c2SjRiMW9XamZqNWRTb0lrRVdWVXp4OWVWby9J?=
 =?utf-8?B?MG9YNHRJMmV1RE9NcEE4VXdxN09DcTV4SUV0dTArTEVPdEhWTHFzaDdIRGdB?=
 =?utf-8?B?MWd2U3c1SlZXOVhoOWJ2RzRPNm4wbG9UeGdXa3JJc0I2RTJIU2R4anlaKzFj?=
 =?utf-8?B?SzdPSEMvV2JOMnJGNGZRYXBqeWkwZzR6b3pReS9nWnVhQ2dIT3FidFRyeHdY?=
 =?utf-8?B?dUNvVXNIQkF6emNNRGpxSWExb1BHNDNjQnlhbTZqeHBxVWRMRWsxdU95UGdr?=
 =?utf-8?B?aWRsd3FQLy9pbmcvZ1FWZlN5R3VYUFdZTUg1QTBhSTI4cnMxajhweVhQYnNu?=
 =?utf-8?B?blBQZUs1UmNFRzRYbnR3S1pycG5xek9hRGdGa3BSZVdQOGJmSWN5anZMN1Zn?=
 =?utf-8?B?cDVxcjN3MjUzdUgyaE55bjg5R3hoN2d5TWZJRXhjUk5oWVdQbUxZelI1VXh0?=
 =?utf-8?Q?snH7z2N8ge3pl0c9ERUzjyQLFrhKg3fIecaouGj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWcwdWhkdjUzKzlPOWdxMjQwS0kvMURTTDdlaVliUG9DMFZ2VForS3Bqa2k4?=
 =?utf-8?B?RVpMd2EwRytOdWVLYk9rRm0yYXpiQ1lRdVV4aU9IVi96MlFEV0Z3RXVWOVVY?=
 =?utf-8?B?MDJBWHQ5SFlMK3VhSzhvWXVtSzJacWVMSThhTCt0MnM5aHhEMnNSaFR3SXJG?=
 =?utf-8?B?aUZXSW0vaGhhZWhYMFpDRjR4bzFGTFNkMDN3cEROdVVZYTlqS2QrUngzaXBv?=
 =?utf-8?B?TnhYRHhQUnhrZVg5c3Y2OXBUVWxLTXVhNXY2a1VWRkg0Ym5sa3Z4eXgwWWlq?=
 =?utf-8?B?OUVGeDNXMERBUEFZU1A1anB1eEliaVVwUmNWaHhtZzZEMk91V2hFaGtNWWpj?=
 =?utf-8?B?SWIwZTVSc3owbjM0VjNSQVJwcnFOeFFqQVhaS0tOZm1JUTNiQjVBY3pMdzJP?=
 =?utf-8?B?ZjBTOVFIeHpac0ZpVHJyWjVrZXFDYUc0UUJLUHI1dkpxZmY1VGU2OWZOZkxB?=
 =?utf-8?B?Um9vZzJtbWRRUTNOL3FMUDEzMTVwUDU0OVRvNFVwQXRyZ0d1Rnd1eUlnNnpp?=
 =?utf-8?B?OXErZTkwbU5NU1NOZVdkNXRuSnNWZ252SHYvbFZDZ2JaSmVGWHp5eThkd09l?=
 =?utf-8?B?N2JVZkRoZFdMTFJwdGcrYnZla0hpdDRwRjcvMDk0S3FVWkUrNE9WSHkxT2lC?=
 =?utf-8?B?ZTBiZ1Fwa2ExbXl2L1c0eXliWG9sZ1BLNnNYakxKN2VOUlZMQWdqZlFNMTVZ?=
 =?utf-8?B?UEl5WE8wdWJkdkoyK0lJTmFiUU9lUjJMMW5yWFB3SHpMU2pyNTBIK3VYQzB5?=
 =?utf-8?B?cC9lcW1UVzdUZHZmcWQxd2dSdkdXaEQ2N3ZVckJjYVpjYWVCSlkzMjZxSXJV?=
 =?utf-8?B?c2RHa0F0NjBNQWRVcjVVT0ZnZENKS0l4T2JOQkN1bWMwMFo1YnRwaUloS3Np?=
 =?utf-8?B?c0hDUGdiU1JXUm0vZ0RjZmxtRDdHMGtVK0VINE84QkFnWGpLT2d0MnBHZmZh?=
 =?utf-8?B?MUkxZzRDVDYxUjFiY1BSSTZXa3RWY2h4ZmpJQUN5bHg4UG4rOXpYc1UwQWFn?=
 =?utf-8?B?MWxyU1FhcDhXeFdMdllRMFlpZ01aNjRia0plMzd1QTNBYXVMT3Q4Ym5oTXI3?=
 =?utf-8?B?MXMyekZheUNzcXlkOHJtZjUxUENnMGdJNWlKVjUyeUxuSFB3V0IyRG5vdHZG?=
 =?utf-8?B?cFRaRGk1SFpVSUpWem1PUWJnS3pQem82VFF2ZVlXditqaWQ5blFpbDU1MGtz?=
 =?utf-8?B?UjBLTHZwTlF0TkUxcmd1dityWGIyQWVZNGl4UFRVZWd2anBiQ3dOOFp1THNL?=
 =?utf-8?B?UlJ5OTlkKzh5UUc4dnpHckVDZk5yS056SW5xWjczdTRlNER1d1F1NzNkWnRU?=
 =?utf-8?B?MjlXMFRjcG1SY1ozRG5GSUpETm5mZGlWb2haMkMzY1VsZEtvdzdGYjNEaFY0?=
 =?utf-8?B?MFhlRXkydmpGZHg2YWs0OHppditSOTVHaWhwYTRXUmF4Z2RMV3d4S1JtSk1w?=
 =?utf-8?B?L0RFd3JXc25zMEtTMXhrU0ZVSml6ZFFQZGlMbm92dXNZeFRhL0pSa2V2Wkpm?=
 =?utf-8?B?clovMVB2VE8xUmJuakpoa0pQcGNiRjR6Y2ViMkJka2VRN2gyb3orTndNTHBl?=
 =?utf-8?B?dktxQzVITUZMZmFCME0rQmI1Y3ZyMWZRNkFFWjV4aEt6NkZiR2FJdUEvcUI0?=
 =?utf-8?B?ZFFKbUpoQktNN1NNWXJTSlhzNFo2MDNETGoxbTJWM2FNODZRZ0xlMUpkQkta?=
 =?utf-8?B?SDJ3bWlWc0M5N0JmL0YwazFibFV0TDdYN3QrVk1JQkJucHpiZVRncTVwTmNW?=
 =?utf-8?B?Zi9kSVhyZ1p3TGJzMDJkVDIxdjI3K0pSWGpOR0hPRk5CQmFLSmZXSnpHQnQw?=
 =?utf-8?B?V2k0ZThTdytuejAvQnhBRTgwd2dkb0N5U3RxVnE4eVFLcWhmSDBEWTFqaDhD?=
 =?utf-8?B?Y0hld0JvOEhZUDZSOXBuMXRsMDZIT2pKVjBhdmlLMk1rRU81N0Q0S0xKZnRp?=
 =?utf-8?B?MEFZVXNtdGhVNDZ3Y2NrdFM0Z0dJbmF0VHFIN1R5aTJsTUtib05mK3V4QVJs?=
 =?utf-8?B?ZytzMEMrZnFwQlpOWUU3TnN0M1NpTHJCeFNCSWR6TXphcWc3TzVIWFNmeGls?=
 =?utf-8?B?dnB4MHJQMFFXajM2NmE5NXI5emJJeGt5Vmtpdnp1RGZKNkU2WXQ0SkpUSyt5?=
 =?utf-8?B?TUNJS09GT0xhaldqRG5SV0p3L080RHdLMXo3MWhCenY3R2hnUU9EWDN5VHo4?=
 =?utf-8?B?MXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9f9105a-a88e-4c91-e676-08dcfd97aadc
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 12:45:02.9437 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GodpvPYEZNcNWoXaS5Ljgh4vb4pbPqkUC459NZx4kk3oz5S40bq1AObnei1uU6HJFcTYNiAwTgS1d1SxG+DvAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7828
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

Quoting Luca Coelho (2024-11-01 09:24:08-03:00)
>On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
>> Bspec says that disabling dynamic DC states require taking the DMC
>> wakelock to cause an DC exit before writing to DC_STATE_EN. Implement
>> that.
>>=20
>> In fact, testing on PTL revealed we end up failing to exit DC5/6 without
>> this step.
>>=20
>> Bspec: 71583
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_power_well.c    | 10 +++++++---
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c        | 14 ++++++++++++--
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.h        |  2 ++
>>  3 files changed, 21 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/d=
rivers/gpu/drm/i915/display/intel_display_power_well.c
>> index adaf7cf3a33b..e8946ce86aaa 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -987,10 +987,14 @@ void gen9_disable_dc_states(struct intel_display *=
display)
>>                  return;
>>          }
>> =20
>> -        gen9_set_dc_state(display, DC_STATE_DISABLE);
>> -
>> -        if (!HAS_DISPLAY(display))
>> +        if (HAS_DISPLAY(display)) {
>> +                intel_dmc_wl_get_noreg(display);
>> +                gen9_set_dc_state(display, DC_STATE_DISABLE);
>> +                intel_dmc_wl_put_noreg(display);
>> +        } else {
>> +                gen9_set_dc_state(display, DC_STATE_DISABLE);
>>                  return;
>> +        }
>
>I think intel_dmc_get/put() already protect indirectly on
>HAS_DISPLAY(), doesn't it? If that's the case, then the if here is
>unnecessary.

Actually, intel_dmc_wl_init() gets called only when HAS_DISPLAY() is
true, so I think using intel_dmc_wl_{get,put}_noreg() for the
!HAS_DISPLAY() case would not be right, at least not with the current
state of the code.

--
Gustavo Sousa
