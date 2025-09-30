Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE64BADFF4
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Sep 2025 18:02:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196DC10E5A6;
	Tue, 30 Sep 2025 16:02:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IzWiFAMA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A29A310E5A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Sep 2025 16:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759248162; x=1790784162;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kfMmIo0SR9r1t8eWnA0Ec0uv5Dt127JVM4DPSa1UlpE=;
 b=IzWiFAMAtDtqkfmMPMLC0xEALpPaz+wyHYOjC9vQn7Kti4uKjCpAzZ7t
 yr1OvTUoQHiwVoxTwv4PXWiYaCqdjb4zjozZ9ITooCbbYbFQwdHPzWXLF
 xRsvZ+yzZ+QiZfVHqsidbuOE4PwEmwDfC5yoni89eFHml9NSjDpuHoIH2
 FX/hTzjpSLu+tOE2f78zLiqbwYVVGELGHZwA0S6UZ08bbYpqVp6q/+WiP
 jmhK05/dF1cElYPl+BrLW6ohaXdYtTFJxCoUwOp7JU+hrxhGpRWke2f99
 KJXWMe4A+EJPXOCN4bcGHIMZX2KEPrQXeJHMaIEpqJzKlsvhKhJwDox1K w==;
X-CSE-ConnectionGUID: JOkHwq29QLCoF2qVMnfSJA==
X-CSE-MsgGUID: iVR3Lz3XRbamlhzTmuQg3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61676814"
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="61676814"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 09:02:42 -0700
X-CSE-ConnectionGUID: gH0bqVITTCuYedLzVAaaVQ==
X-CSE-MsgGUID: rZlLKPj1TF2HPvDgngGEbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,304,1751266800"; d="scan'208";a="182578985"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 09:02:42 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 09:02:41 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 30 Sep 2025 09:02:41 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.2) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 09:02:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TldpfH5mP3s5ru/EdK87ZCVhE0Q7iRHPddTXQipxKUVkhc54FiMMcUq6K8mZCkkdqByKWmO00q63sXwejfB1BoAnOH4y+5UY1zPCifMQDrTz6fJ/8IKhrU8sBCi4tQnGFDqMOWR8XT6cCyFlqoq5mNX7QPOTA+AkYwUD/1CaJI9sETgcX0qhFfNm4lbhyvybzWaRQcrnQOfFPuwWfgKmqCo28IJUgdBfXQ6llnnudcHX0sJFqmx1jqxSB/RknTuRJSO3gPiXptgI26raccfJPyZ+2gyN3l1Vyd4TTGX6F/Eokxk2Erzv8/PbGwXvnxWBZCtq8o9FMUX84NOmHjXPaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GbEI1xgG7v2+PolvvFJ0E/IahGKECQpa/10E4f/aGa4=;
 b=nXsUGk6aw1EuWWlwO8kXdb5PuX7WOQ28H9oXm6D0X6OXlG5Qk2GzYbPw3+/AnjQ44vDcEvBAYR8RD4Mz5rWuBZ/OBe+qsc8gSuLjdXj8y7mr6ctEWp26byHJr7IH0OyQ0eONScMrsMFsyzlPhLh+LBVesfkKG2OtRSy64ciNojyYjBbr7GiQbHa3uS+Y+QBja2cwGlDz9yTIU26TOi9shOGe8CCFrimi7SgPleO8POmLkK7fERW2roufJXP5qYH7WxHTp1i5xlfBgHHiL3KlK0U7qRM3nsz8APTPrT5a3qW/gmXZ+VxcGGPBEWiG3BMMmA/02DZKW5EGC7MmFiiJeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB8200.namprd11.prod.outlook.com (2603:10b6:208:454::6)
 by CH3PR11MB7372.namprd11.prod.outlook.com (2603:10b6:610:145::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Tue, 30 Sep
 2025 16:02:04 +0000
Received: from IA1PR11MB8200.namprd11.prod.outlook.com
 ([fe80::b6d:5228:91bf:469e]) by IA1PR11MB8200.namprd11.prod.outlook.com
 ([fe80::b6d:5228:91bf:469e%4]) with mapi id 15.20.9160.015; Tue, 30 Sep 2025
 16:02:04 +0000
Message-ID: <b6f47593-13b1-4620-b8df-f5ffe0ac609b@intel.com>
Date: Tue, 30 Sep 2025 12:02:01 -0400
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/?=
 =?UTF-8?Q?guc=3A_Skip_communication_warning_on_reset_in_progress_=28rev3=29?=
To: <intel-gfx@lists.freedesktop.org>
References: <20250929152904.269776-1-zhanjun.dong@intel.com>
 <175917865436.376946.17384722696148381943@1538d3639d33>
Content-Language: en-US
From: "Dong, Zhanjun" <zhanjun.dong@intel.com>
In-Reply-To: <175917865436.376946.17384722696148381943@1538d3639d33>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0230.namprd03.prod.outlook.com
 (2603:10b6:303:b9::25) To IA1PR11MB8200.namprd11.prod.outlook.com
 (2603:10b6:208:454::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB8200:EE_|CH3PR11MB7372:EE_
X-MS-Office365-Filtering-Correlation-Id: b8940b98-da6d-4596-78f0-08de003ab282
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ei90THpES2pQbjdPczQyNG9ndXQ2TUw4UlpFWXc3K0YrVnI2YXYzUHJkVUU0?=
 =?utf-8?B?RHVOV2NkMUtNU3YvcXJldmh2Z1NUU2hWa0FOdXJicXZra21mZUI2dUo4ckEz?=
 =?utf-8?B?dnRIVjN6OWt5Y3M3enRqYmFRcDRnVVpEYTB6VnlTZGhEYlhaNmUwQVoramwv?=
 =?utf-8?B?ZnpFMHU3K2JUQWRiZy9ac0ZBWUM2bHBtdVRhUkNGR0U0TThYM3JBYWI3cUNz?=
 =?utf-8?B?Z0poRW5hZDMxeWxiTlQxSXI4UitDdFBESGlVbitzYVg1T1o0OWZiMTYvYW94?=
 =?utf-8?B?djFLMjF4OEhYNWNLbGszRUh5MHowU0VBSVpUd2FiT2ZSb2FhVCtxQUhVdnZo?=
 =?utf-8?B?K1g4QzMrTi9TYVllYk1qbGtTR1BNUDRXM3RrLzVmWHNETjJCSVl2Zjk1RXNN?=
 =?utf-8?B?N0NLQUhpOEt3QnFYdVF4ODhPUVFSTCtWNXp1R0ZTd2FsbGQ3WmU0aHozU1Jo?=
 =?utf-8?B?SnlRb1pzbmw4bkRBNFNZaU1HQmI2NTc5Y3NobStxUHQzVXJjd3ZjMG90YWE1?=
 =?utf-8?B?WWhMbmhzS2srMEVWUE9OZ1JsdjkwWSt3bDFMZktZVlRTdndYZHVuWCtZMzhN?=
 =?utf-8?B?dTRVaWJpSVJPbTc2T0hLd25xZ1hjSjhGTWRuTXdpNE82QzNXRzNrV2F3cCtR?=
 =?utf-8?B?clBkdmJqazZxaUl4UVN5dEhGRVpzS3V4NlI2UkFSdlkyUUhnMURrREk3U0V3?=
 =?utf-8?B?Y254b3VMR2VNS2ZOeTRYUXY2a0dTNWZBallJS0ZSUlA5Y3lJTWRvUm5KRWdz?=
 =?utf-8?B?QzRjWC9sV3dldW9LWmJtY2R4T2d3cCthZEh4eVcrNWxQQWpBS29ObHg4Z0c4?=
 =?utf-8?B?SStTVmVKVkwzYlRSNitEVGxDL29PY2w0VFFya2FIdFZ6anhxazBWb0NYdkl6?=
 =?utf-8?B?YmtYOERpazVhdVEydTZYQ3BQQmQ5bzd1Rjh0ZU5rK2ZYYUN1Z1BMWmV6WHF3?=
 =?utf-8?B?VGRUQ3ZHeWx0aURrOFVsaUcrQTdGemVYWE5Ic1lkRjk4alRJNzBmYTJ3ZEIy?=
 =?utf-8?B?WmxMOTJrNEMycjF1cTF6NXhIZDJsemdIZ1RnUWV5bnAvdGZ0V2U5dUdtYWoy?=
 =?utf-8?B?cGc1WXhFQTVxMUVFZ3NUTmNIcUtUaWlQT3RyMmVMczV5K1FlWjVFVFVJTk5k?=
 =?utf-8?B?ZmNoMGVDSjRqK0RkREZ2dnlTeFFoaUZZR2xnVDBTMlQyQlRGWXl2RUtERmFs?=
 =?utf-8?B?N2RBb2pFNG5wOHlkcFF3eng2YUY3bHlkdDZMaTBpeFROMUdMallUczBtYjR1?=
 =?utf-8?B?Vkg0dHpYVVowSEI0Z3A4NDRSeHU4SlVOY1kxWVNXa0U2QzFSbzRzZGlOb2lX?=
 =?utf-8?B?WGYvNlVJSnk5b2ZtN0FYWW4wQWwwTWxLY1N2ZVF2eTl2eXBkZGUxdUxWOFVF?=
 =?utf-8?B?SXlKZEp4VlIvVVRFTUNDTEM4SDBsNjNHRzZUeU1ITGQ5WFRlVXlnb3l1SjBW?=
 =?utf-8?B?cHp1UUJsTHJNeWhMUG45THNpdUJ6cS9MOEU0dTdETDNSRm40d3grTHo4NzFQ?=
 =?utf-8?B?TWFlR2dvWHhjZ3NkV1poNWF3WVhDTThtUG5SYWhVOXhSajRIS3V4OHl4cUdy?=
 =?utf-8?B?cjNWeUJhUmN4QUNtbXFGeXVWUUcyTFNhVEQ2NzFBNHB5SjBQZmFvVm5BVEtR?=
 =?utf-8?B?QkhmWWRxZmkrQ2JDS0J3MjBQejkrT3ppSjFHampvTDQ5bmhsTTdSR21leHRa?=
 =?utf-8?B?R2o4YXhJVXpaRDEzZGFlVTU0Nm1HVEpHRkNETkU5dlZzNVZwaE9sUng2ODNo?=
 =?utf-8?B?KzhwOEg1VlNwNkpaMUN2RkVtcWd0bW1xVmpmeG0wZUZZZEZNc3NaODcvengx?=
 =?utf-8?B?Sk4yYW4vRFdnR2NXNE1zVCtER0tJbnI1WkZtR2xaMFRrUTRPaFRWei9wcXFU?=
 =?utf-8?B?dVRBelYzQ3FyMjZkRENoTndQOUZvSFh5TWJDeHF5ODNxRlE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB8200.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bG02Yzh0OU1HWEtPRkZydG1IaGkxT1g5emxnTkptSStMbGZGMTJQOEI5eW9m?=
 =?utf-8?B?OWpwOFlsclowRGU1c2dUcURDaGZ4dU9kdXU2KzVDS28vZUJYTTZLeHAzV1Nn?=
 =?utf-8?B?TTFTVU5KSmh4Y0xGbkcybmFWZGJMRDJTWmRMZDBESU43Zmo0TUdMSnB4bC8y?=
 =?utf-8?B?MllNL3FzdUROZG9RVU5JaHlwYjJVTXV6UHBrc2ptN2RSRFUySDBMYW1XRzhk?=
 =?utf-8?B?a1hvMmxUK2kvdXhhblhsMWlyb2liRWV2OWxHZk9VaXd4T1ptRzNtN21SOFln?=
 =?utf-8?B?T3BuZDBURVZNT3FOOW5rS0VxbTJGTkxQVEY1NkxpaDJ4YWNOS0hydE9xM2VZ?=
 =?utf-8?B?MmF0MkpsNFByM0V5bFp2bXZBZWduMlJ4VEg1SkFXTEFCS3lIbnhCZE9tczE3?=
 =?utf-8?B?Tld3YXM1dndiL3Jpanp5QktubjNXUlRKa3VqM0dmY2xGQ2ZSZjJ4TzR1bmtT?=
 =?utf-8?B?dXhWREM2SlhOL2lRY1NwWndnaEJIMlpzNDlGRDVUYWFyWE1kaTdKNE5Qemsv?=
 =?utf-8?B?MXVkVUdaV3ZHa3BiRjNOK1FsZDFjTUpnOTZoY3FBRG5vd0Q3NlIzaTQyODZ6?=
 =?utf-8?B?OUhPQmJURGY5MW1WaWlTbzBhdlJ0QVZpRzVzQWkwRDJqYkdSL21uRklISDZx?=
 =?utf-8?B?bXZEUzdiOFoxaEZXQnpKRncwdStXVVlqNkg5VHBCS21ZOWJjMmNSREdOeFpz?=
 =?utf-8?B?Y2hkL2hqWjE3WmFnMHdmeEZEWWhzYXQyN2xVRCtyejhTNHZNUndaRGFVeDNE?=
 =?utf-8?B?bk9GMjRwNlc1MTJtNCtDZEJWNEVEZU9QS2dlNWkyU3ZrMkFhSjJIRHYrVUZE?=
 =?utf-8?B?Tk9kNGhaeXZhK0NOMHNTNVk3dCtmZmZaK3Z6clQvVWUvbzhTa3VwSkdIcmp4?=
 =?utf-8?B?WkVCdkg2VHNEeFovVmdSV3g0MzFtc2dBdWxMcVVWUkJTdkxTWFZKNHRtY0g0?=
 =?utf-8?B?dHJ6T1AranlXVzhKTzByVm1TRGxNRisrSDlNa1llMGQwMmVpQTJWR0Z3RE1R?=
 =?utf-8?B?TXl3WDZNeDJGMW93bVp3T2laWVR5MFpFMHpsd3RSUG0xSGV5U29Hb200d1pn?=
 =?utf-8?B?OVY1cXVjQXpxS3l4UUtNWm5yZTFsNm5MUmtEYmZjaGRXcWgrdTl0VTZhM2s1?=
 =?utf-8?B?bm1GOEhmY1UxejkyQ1M3L0JlckVBaHF6eXVhUEd1Vk5Hd1JhM3RuM1VuWktQ?=
 =?utf-8?B?REYxb2QvT3BQR0dEM1QySExXUFA4d2pod3ZUTitPdEM1c21tZzIrUUJ1L3oy?=
 =?utf-8?B?R1NCOVJibXEvWCttem9sSWJWcGYvQ09vT3RTK2FDclBvZFl5UlZ1QnpJcVhW?=
 =?utf-8?B?OFNaL0h6bEJSMEhka1Q3bFVoZDNIbGF4MmV3dlZXOFU1eE55alBwZThEVmZu?=
 =?utf-8?B?YXVhaWJEaXlsNXZMR2ZkcG5YWkhRTFVoRVRsZnA5Tlp6WTJiS05sYkxxZW51?=
 =?utf-8?B?VkNtSHhIT0pzM2lVeGw4ckxFa0pWWU5EODFXSUZkRnkxM1BDV3kvTlY5eEpp?=
 =?utf-8?B?eFdaR3hDTTB3K3k3dEtEMERXSThWT1NBSUMxbTk0ekViU1JjZitlbjh0dGRC?=
 =?utf-8?B?UUorZndQNUhtMTdyeVJwZ2FKTk5HOXJWZWovQUM0MURCR1VXNnNKVVZpU3pt?=
 =?utf-8?B?RTJXTVJTSk42dUlqRTMwMmlNZ21DOTRGVmhUMnlWOGdBSldtSWNsRENZRERB?=
 =?utf-8?B?UVQ3eDlSNjg0T3h5UTJtcmJmaER1cTQ4N0owZnZaNStWbk96ek5zcGZ0Vmxt?=
 =?utf-8?B?OTRYVzEyQzMzNDJvZktHTkd4bEpza3dINjBTdUpxMXNqSlY2eEd3MkZpNHZV?=
 =?utf-8?B?d3crblgvZTRjaXA2NWVGamthd1NmWWJXbkk3MlA4TWVKUUJDMFdrYndYbEcx?=
 =?utf-8?B?ZzhUa0E4MjZQV1h4SkloakhjMk4wT2UzK3hGRG0raVI2d0t6em5RbmEvN1o2?=
 =?utf-8?B?Z3dPQjVXUzRGQmRYL01KazdEbnJmRkhYL3VsUXE0L2hURitmNndId2VqV0hJ?=
 =?utf-8?B?T1lCNXNqSnRvYU5veGtCUTNYNkxsdmY1bGtnTlFCWEEyUC9tVVBxcFluek9I?=
 =?utf-8?B?TmJJcDVuVGxYMXA4MjlpLy91VmlpYTRmSi95S3JaeWF5MkFKbDNLY3pKc25K?=
 =?utf-8?B?NDZLbDh6Z2NpVzc3cVBmM0JJNHpsYml5OHg1Y2FjbS9jTXhSaUhnRjJLQ3RH?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8940b98-da6d-4596-78f0-08de003ab282
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB8200.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2025 16:02:04.0622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v4/cwaQNn9RDMwhbV7MpLbw0wZ9q1sAvX30pVb5rv6pVtJozPQwQK7XFNLPU369JaIOHQVZws9LEQGhaS7IVJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7372
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



On 2025-09-29 4:44 p.m., Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/guc: Skip communication warning on reset in progress 
> (rev3)
> *URL:*	https://patchwork.freedesktop.org/series/154423/ <https:// 
> patchwork.freedesktop.org/series/154423/>
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/ 
> index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/ 
> index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_17280_full -> Patchwork_154423v3_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_154423v3_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_154423v3_full, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (12 -> 11)
> 
> Missing (1): shard-dg2-set2
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_154423v3_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@gem_mmap_gtt@hang:
> 
>       o shard-snb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-snb4/igt@gem_mmap_gtt@hang.html> ->
>         INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-snb6/igt@gem_mmap_gtt@hang.html>
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-tglu-1: NOTRUN -> ABORT <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_fbcon_fbt@fbc-
>         suspend.html>
The 2 failures above is not related to this patch.

Regards,
Zhanjun Dong>
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_17280_full and 
> Patchwork_154423v3_full:
> 
> 
>       New IGT tests (9)
> 
>   *
> 
>     igt@kms_lease@lease-invalid-crtc@pipe-a-dp-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_lease@lease-invalid-crtc@pipe-b-dp-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_lease@lease-invalid-crtc@pipe-c-dp-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_lease@lease-invalid-crtc@pipe-d-dp-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_lease@lease-invalid-plane@pipe-d-hdmi-a-2:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_lease@page-flip-implicit-plane@pipe-a-dp-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.40] s
>   *
> 
>     igt@kms_lease@page-flip-implicit-plane@pipe-b-dp-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.32] s
>   *
> 
>     igt@kms_lease@page-flip-implicit-plane@pipe-c-dp-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.32] s
>   *
> 
>     igt@kms_lease@page-flip-implicit-plane@pipe-d-dp-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.33] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_154423v3_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@device_reset@unbind-cold-reset-rebind:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/igt@device_reset@unbind-cold-
>         reset-rebind.html> (i915#11078 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/11078>)
>   *
> 
>     igt@fbdev@eof:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@fbdev@eof.html> -> SKIP <https://
>         intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@fbdev@eof.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#2582 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582>)
>   *
> 
>     igt@gem_busy@semaphore:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@gem_busy@semaphore.html>
>         (i915#3936 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3936>)
>   *
> 
>     igt@gem_ccs@block-multicopy-compressed:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@gem_ccs@block-
>         multicopy-compressed.html> (i915#9323 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>   *
> 
>     igt@gem_ccs@block-multicopy-inplace:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/igt@gem_ccs@block-multicopy-
>         inplace.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#9323 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>   *
> 
>     igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
> 
>       o shard-dg2: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-dg2-10/
>         igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-
>         lmem0.html> (i915#12392 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12392> / i915#13356 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>)
>   *
> 
>     igt@gem_close_race@multigpu-basic-process:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@gem_close_race@multigpu-basic-process.html> (i915#7697
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
>   *
> 
>     igt@gem_close_race@multigpu-basic-threads:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@gem_close_race@multigpu-basic-threads.html> (i915#7697
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
>   *
> 
>     igt@gem_ctx_freq@sysfs:
> 
>       o shard-dg2-9: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@gem_ctx_freq@sysfs.html> (i915#9561 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561>) +1 other
>         test fail
>   *
> 
>     igt@gem_ctx_persistence@heartbeat-hostile:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@gem_ctx_persistence@heartbeat-hostile.html> (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>   *
> 
>     igt@gem_ctx_sseu@invalid-args:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@gem_ctx_sseu@invalid-
>         args.html> (i915#280 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/280>)
>   *
> 
>     igt@gem_ctx_sseu@mmap-args:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@gem_ctx_sseu@mmap-
>         args.html> (i915#280 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/280>) +1 other test skip
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@gem_ctx_sseu@mmap-
>         args.html> (i915#280 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/280>) +1 other test skip
>   *
> 
>     igt@gem_exec_capture@capture-invisible@smem0:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk5/igt@gem_exec_capture@capture-
>         invisible@smem0.html> (i915#6334 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334>) +1 other
>         test skip
>   *
> 
>     igt@gem_exec_fence@concurrent:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@gem_exec_fence@concurrent.html> (i915#4812 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>) +1 other
>         test skip
>   *
> 
>     igt@gem_exec_flush@basic-batch-kernel-default-wb:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@gem_exec_flush@basic-
>         batch-kernel-default-wb.html> (i915#3539 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539> /
>         i915#4852 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4852>)
>   *
> 
>     igt@gem_exec_flush@basic-wb-rw-before-default:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@gem_exec_flush@basic-wb-
>         rw-before-default.html> (i915#3539 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539> /
>         i915#4852 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4852>)
>   *
> 
>     igt@gem_exec_params@invalid-fence-in:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@gem_exec_params@invalid-fence-
>         in.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-6/igt@gem_exec_params@invalid-
>         fence-in.html> (i915#12964 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12964>) +6 other tests dmesg-warn
>   *
> 
>     igt@gem_exec_params@secure-non-master:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/igt@gem_exec_params@secure-
>         non-master.html>
>   *
> 
>     igt@gem_exec_reloc@basic-write-gtt:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@gem_exec_reloc@basic-
>         write-gtt.html> (i915#3281 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3281>) +7 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-read-active:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@gem_exec_reloc@basic-
>         write-read-active.html> (i915#3281 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +5 other
>         tests skip
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@gem_exec_reloc@basic-
>         write-read-active.html> (i915#3281 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +4 other
>         tests skip
>   *
> 
>     igt@gem_exec_schedule@preempt-queue-contexts-chain:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@gem_exec_schedule@preempt-queue-contexts-chain.html>
>         (i915#4537 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4537> / i915#4812 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4812>)
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@gem_exec_schedule@preempt-queue-contexts-chain.html>
>         (i915#4812 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4812>)
>   *
> 
>     igt@gem_fence_thrash@bo-write-verify-threaded-none:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@gem_fence_thrash@bo-
>         write-verify-threaded-none.html> (i915#4860 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>   *
> 
>     igt@gem_fenced_exec_thrash@no-spare-fences:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@gem_fenced_exec_thrash@no-spare-fences.html> (i915#4860
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>         +1 other test skip
>   *
> 
>     igt@gem_gtt_cpu_tlb:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@gem_gtt_cpu_tlb.html>
>         (i915#4077 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4077>) +1 other test skip
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk8/igt@gem_huc_copy@huc-
>         copy.html> (i915#2190 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-multi-ccs:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk1/igt@gem_lmem_swapping@heavy-
>         verify-multi-ccs.html> (i915#4613 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) +4 other
>         tests skip
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-verify-ccs:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@gem_lmem_swapping@parallel-random-verify-ccs.html>
>         (i915#12193 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12193>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html>
>         (i915#4565 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4565>)
>   *
> 
>     igt@gem_lmem_swapping@verify-ccs:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@gem_lmem_swapping@verify-ccs.html> (i915#4613 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@verify-random-ccs:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-5/
>         igt@gem_lmem_swapping@verify-random-ccs.html> (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +1 other test skip
>   *
> 
>     igt@gem_madvise@dontneed-before-exec:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@gem_madvise@dontneed-
>         before-exec.html> (i915#3282 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3282>) +2 other tests skip
>   *
> 
>     igt@gem_mmap_gtt@basic-small-bo-tiledy:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@gem_mmap_gtt@basic-
>         small-bo-tiledy.html> (i915#4077 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>) +6 other
>         tests skip
>   *
> 
>     igt@gem_mmap_wc@read:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@gem_mmap_wc@read.html> (i915#4083 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>) +1 other
>         test skip
>   *
> 
>     igt@gem_partial_pwrite_pread@write-display:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@gem_partial_pwrite_pread@write-display.html> (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +1 other test skip
>   *
> 
>     igt@gem_partial_pwrite_pread@write-snoop:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@gem_partial_pwrite_pread@write-snoop.html> (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>   *
> 
>     igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@gem_pxp@dmabuf-
>         shared-protected-dst-is-context-refcounted.html> (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>         +1 other test skip
>   *
> 
>     igt@gem_pxp@hw-rejects-pxp-buffer:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@gem_pxp@hw-rejects-
>         pxp-buffer.html> (i915#13398 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/13398>)
>   *
> 
>     igt@gem_pxp@regular-baseline-src-copy-readible:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@gem_pxp@regular-baseline-
>         src-copy-readible.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>) +1 other
>         test skip
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@gem_pxp@regular-
>         baseline-src-copy-readible.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>   *
> 
>     igt@gem_pxp@reject-modify-context-protection-on:
> 
>       o shard-rkl: NOTRUN -> TIMEOUT <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-rkl-5/igt@gem_pxp@reject-
>         modify-context-protection-on.html> (i915#12917 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917> /
>         i915#12964 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12964>)
>   *
> 
>     igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-
>         suspend-resume.html> -> TIMEOUT <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-7/igt@gem_pxp@verify-
>         pxp-execution-after-suspend-resume.html> (i915#12917 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917> /
>         i915#12964 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12964>) +1 other test timeout
>   *
> 
>     igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@gem_render_copy@y-
>         tiled-ccs-to-yf-tiled.html> (i915#5190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190> /
>         i915#8428 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8428>) +1 other test skip
>   *
> 
>     igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@gem_render_copy@yf-tiled-
>         to-vebox-y-tiled.html> (i915#5190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190> /
>         i915#8428 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8428>) +4 other tests skip
>   *
> 
>     igt@gem_set_tiling_vs_blt@tiled-to-tiled:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@gem_set_tiling_vs_blt@tiled-to-tiled.html> (i915#4079
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079>)
>   *
> 
>     igt@gem_softpin@evict-snoop:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@gem_softpin@evict-
>         snoop.html> (i915#4885 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/4885>)
>   *
> 
>     igt@gem_tiled_pread_basic:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@gem_tiled_pread_basic.html> (i915#4079 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079>)
>   *
> 
>     igt@gem_userptr_blits@create-destroy-unsync:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@gem_userptr_blits@create-
>         destroy-unsync.html> (i915#3297 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3297>) +1 other test skip
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@gem_userptr_blits@create-destroy-unsync.html> (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>         +1 other test skip
>   *
> 
>     igt@gem_userptr_blits@map-fixed-invalidate-overlap:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@gem_userptr_blits@map-
>         fixed-invalidate-overlap.html> (i915#3297 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297> /
>         i915#4880 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4880>)
>   *
> 
>     igt@gem_userptr_blits@readonly-unsync:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@gem_userptr_blits@readonly-unsync.html> (i915#3297 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) +1 other
>         test skip
>   *
> 
>     igt@gem_userptr_blits@sd-probe:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@gem_userptr_blits@sd-
>         probe.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3297> / i915#4958 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958>)
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap-after-close:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/
>         igt@gem_userptr_blits@unsync-unmap-after-close.html> (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>   *
> 
>     igt@gen7_exec_parse@load-register-reg:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@gen7_exec_parse@load-
>         register-reg.html> +4 other tests skip
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@gen9_exec_parse@allowed-all.html> (i915#2527 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527> /
>         i915#2856 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2856>) +1 other test skip
>   *
> 
>     igt@gen9_exec_parse@batch-zero-length:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@gen9_exec_parse@batch-zero-length.html> (i915#2856 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@secure-batches:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@gen9_exec_parse@secure-
>         batches.html> (i915#2856 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@unaligned-jump:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/
>         igt@gen9_exec_parse@unaligned-jump.html> (i915#2527 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527> /
>         i915#2856 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2856>) +1 other test skip
>   *
> 
>     igt@i915_drm_fdinfo@busy-check-all@bcs0:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@i915_drm_fdinfo@busy-
>         check-all@bcs0.html> (i915#11527 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527>) +7 other
>         tests skip
>   *
> 
>     igt@i915_drm_fdinfo@busy@rcs0:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@i915_drm_fdinfo@busy@rcs0.html> (i915#14073 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073>) +11
>         other tests skip
>   *
> 
>     igt@i915_drm_fdinfo@busy@vecs1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@i915_drm_fdinfo@busy@vecs1.html> (i915#14073 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073>) +15
>         other tests skip
>   *
> 
>     igt@i915_drm_fdinfo@virtual-busy:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@i915_drm_fdinfo@virtual-busy.html> (i915#14118 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118>)
>   *
> 
>     igt@i915_fb_tiling@basic-x-tiling:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@i915_fb_tiling@basic-
>         x-tiling.html> (i915#13786 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/13786>)
>   *
> 
>     igt@i915_pm_freq_api@freq-basic-api:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@i915_pm_freq_api@freq-basic-api.html> (i915#8399 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>)
>   *
> 
>     igt@i915_pm_freq_api@freq-reset:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/
>         igt@i915_pm_freq_api@freq-reset.html> (i915#8399 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>)
>   *
> 
>     igt@i915_pm_freq_api@freq-suspend@gt0:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-7/igt@i915_pm_freq_api@freq-
>         suspend@gt0.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-dg2-4/
>         igt@i915_pm_freq_api@freq-suspend@gt0.html> (i915#13356
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/13356> / i915#13820 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/13820>) +1 other test incomplete
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/
>         igt@i915_pm_rc6_residency@rc6-idle.html> (i915#14498 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498>)
>   *
> 
>     igt@i915_pm_rpm@gem-evict-pwrite:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@i915_pm_rpm@gem-evict-
>         pwrite.html> (i915#4077 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4077>) +5 other tests skip
>   *
> 
>     igt@i915_pm_rpm@system-suspend-execbuf:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-glk8/
>         igt@i915_pm_rpm@system-suspend-execbuf.html> (i915#13356
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>)
>   *
> 
>     igt@i915_pm_rps@thresholds-park:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@i915_pm_rps@thresholds-park.html> (i915#11681 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681>) +1 other
>         test skip
>   *
> 
>     igt@i915_pm_sseu@full-enable:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/igt@i915_pm_sseu@full-
>         enable.html> (i915#4387 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4387>)
>   *
> 
>     igt@i915_query@test-query-geometry-subslices:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-5/igt@i915_query@test-
>         query-geometry-subslices.html> (i915#5723 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723>)
>   *
> 
>     igt@i915_selftest@live@workarounds:
> 
>       o shard-dg2: NOTRUN -> DMESG-FAIL <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-dg2-7/
>         igt@i915_selftest@live@workarounds.html> (i915#12061 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061>) +1 other
>         test dmesg-fail
>   *
> 
>     igt@i915_suspend@fence-restore-untiled:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-8/igt@i915_suspend@fence-restore-
>         untiled.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-rkl-2/igt@i915_suspend@fence-
>         restore-untiled.html> (i915#4817 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817>)
>   *
> 
>     igt@i915_suspend@forcewake:
> 
>       o shard-glk10: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-glk10/
>         igt@i915_suspend@forcewake.html> (i915#4817 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817>)
>   *
> 
>     igt@intel_hwmon@hwmon-read:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/igt@intel_hwmon@hwmon-
>         read.html> (i915#7707 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/7707>)
>   *
> 
>     igt@intel_hwmon@hwmon-write:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@intel_hwmon@hwmon-
>         write.html> (i915#7707 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/7707>)
>   *
> 
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4215
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>)
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
> 
>       o shard-tglu: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-tglu-7/igt@kms_atomic_transition@plane-all-
>         modeset-transition-fencing.html> -> FAIL <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-tglu-7/
>         igt@kms_atomic_transition@plane-all-modeset-transition-
>         fencing.html> (i915#14857 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14857>) +1 other test fail
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-fencing-
>     internal-panels:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk9/
>         igt@kms_atomic_transition@plane-all-modeset-transition-fencing-
>         internal-panels.html> (i915#1769 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769>) +1 other
>         test skip
>   *
> 
>     igt@kms_big_fb@4-tiled-addfb-size-overflow:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-
>         size-overflow.html> (i915#5286 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/5286>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/igt@kms_big_fb@4-tiled-
>         max-hw-stride-32bpp-rotate-180.html> (i915#5286 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +2 other
>         tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_big_fb@4-tiled-
>         max-hw-stride-64bpp-rotate-180-async-flip.html> (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +1 other test skip
>   *
> 
>     igt@kms_big_fb@x-tiled-8bpp-rotate-270:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@kms_big_fb@x-tiled-8bpp-
>         rotate-270.html> (i915#3638 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3638>)
>   *
> 
>     igt@kms_big_fb@y-tiled-addfb:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_big_fb@y-tiled-
>         addfb.html> (i915#5190 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/5190>)
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_big_fb@y-tiled-max-
>         hw-stride-64bpp-rotate-0-async-flip.html> (i915#4538 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>) +4 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@kms_big_fb@yf-
>         tiled-16bpp-rotate-90.html> (i915#4538 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_big_fb@yf-tiled-
>         max-hw-stride-32bpp-rotate-180-async-flip.html> (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>) +4 other tests skip
>   *
> 
>     igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@kms_ccs@bad-aux-
>         stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +172 other tests skip
>   *
> 
>     igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_ccs@bad-pixel-
>         format-yf-tiled-ccs@pipe-c-hdmi-a-2.html> (i915#10307 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6095>) +29 other tests skip
>   *
> 
>     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-8/igt@kms_ccs@bad-
>         rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +51 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_ccs@crc-primary-
>         rotation-180-4-tiled-bmg-ccs.html> (i915#12313 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>) +1 other
>         test skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-6/igt@kms_ccs@crc-primary-
>         rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html>
>         (i915#10307 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10307> / i915#6095 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6095>) +133 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/igt@kms_ccs@crc-primary-
>         rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html>
>         (i915#14098 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14098> / i915#6095 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6095>) +45 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_ccs@crc-primary-
>         suspend-4-tiled-dg2-mc-ccs.html> (i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +44 other
>         tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-6/igt@kms_ccs@crc-primary-
>         suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +16 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-glk1/igt@kms_ccs@crc-
>         primary-suspend-y-tiled-ccs.html> (i915#12796 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796> /
>         i915#14694 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14694>) +1 other test incomplete
>   *
> 
>     igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-5/igt@kms_ccs@missing-ccs-
>         buffer-y-tiled-gen12-mc-ccs.html> (i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +29 other
>         tests skip
>   *
> 
>     igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_ccs@random-ccs-
>         data-4-tiled-lnl-ccs.html> (i915#12313 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>) +1 other
>         test skip
>   *
> 
>     igt@kms_cdclk@mode-transition:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk5/igt@kms_cdclk@mode-
>         transition.html> +398 other tests skip
>   *
> 
>     igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-6/igt@kms_cdclk@mode-
>         transition@pipe-d-hdmi-a-3.html> (i915#13781 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781>) +3 other
>         tests skip
>   *
> 
>     igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-3/igt@kms_cdclk@plane-
>         scaling@pipe-c-hdmi-a-3.html> (i915#13783 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783>) +3 other
>         tests skip
>   *
> 
>     igt@kms_chamelium_audio@hdmi-audio-edid:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/
>         igt@kms_chamelium_audio@hdmi-audio-edid.html> (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/11151> / i915#7828 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7828>) +3 other tests skip
>   *
> 
>     igt@kms_chamelium_edid@hdmi-mode-timings:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/igt@kms_chamelium_edid@hdmi-
>         mode-timings.html> (i915#11151 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/11151> / i915#7828 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_chamelium_hpd@dp-
>         hpd-with-enabled-mode.html> (i915#11151 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> /
>         i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7828>) +4 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@hdmi-hpd-fast:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_chamelium_hpd@hdmi-
>         hpd-fast.html> (i915#11151 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/11151> / i915#7828 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +3 other
>         tests skip
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@kms_chamelium_hpd@hdmi-
>         hpd-fast.html> (i915#11151 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/11151> / i915#7828 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +1 other
>         test skip
>   *
> 
>     igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html>
>         (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/11151> / i915#7828 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7828>) +4 other tests skip
>   *
> 
>     igt@kms_color@ctm-0-25:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_color@ctm-0-25.html> -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_color@ctm-0-25.html> (i915#12655 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) +1 other test skip
>   *
> 
>     igt@kms_color@deep-color:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_color@deep-
>         color.html> (i915#12655 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12655> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_color@legacy-gamma:
> 
>       o shard-dg1: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg1-18/igt@kms_color@legacy-gamma.html> ->
>         DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-dg1-14/igt@kms_color@legacy-gamma.html>
>         (i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4423>) +2 other tests dmesg-warn
>   *
> 
>     igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
> 
>       o shard-dg2: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-11/
>         igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html>
>         (i915#7173 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7173>) +1 other test fail
>   *
> 
>     igt@kms_content_protection@dp-mst-type-1:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_content_protection@dp-mst-type-1.html> (i915#3116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116> /
>         i915#3299 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3299>)
>   *
> 
>     igt@kms_content_protection@legacy:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_content_protection@legacy.html> (i915#6944 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944> /
>         i915#7116 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7116> / i915#7118 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7118> / i915#9424 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>   *
> 
>     igt@kms_content_protection@lic-type-0:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@kms_content_protection@lic-type-0.html> (i915#9424 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@kms_content_protection@lic-type-0.html> (i915#9424 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>   *
> 
>     igt@kms_content_protection@mei-interface:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_content_protection@mei-interface.html> (i915#6944
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944> /
>         i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9424>)
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@kms_content_protection@srm.html> (i915#7118 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>)
>   *
> 
>     igt@kms_content_protection@uevent:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_content_protection@uevent.html> (i915#7118 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118> /
>         i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9424>)
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-32x10:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_cursor_crc@cursor-offscreen-32x10.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-512x512:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/
>         igt@kms_cursor_crc@cursor-offscreen-512x512.html> (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-512x512:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_cursor_crc@cursor-
>         onscreen-512x512.html> (i915#13049 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-2/igt@kms_cursor_crc@cursor-
>         random-128x42@pipe-a-hdmi-a-1.html> (i915#13566 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-64x21:
> 
>       o shard-tglu: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-tglu-3/igt@kms_cursor_crc@cursor-
>         random-64x21.html> -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-4/
>         igt@kms_cursor_crc@cursor-random-64x21.html> (i915#13566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>         +1 other test fail
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-128x128:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-
>         movement-128x128.html> -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_cursor_crc@cursor-rapid-movement-128x128.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) +37 other tests skip
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-512x512:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_cursor_crc@cursor-sliding-512x512.html> (i915#13049
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>   *
> 
>     igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4:
> 
>       o shard-dg1: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-dg1-14/
>         igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html>
>         (i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4423>)
>   *
> 
>     igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-
>         before-cursor-varying-size.html> -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_cursor_legacy@basic-flip-before-cursor-varying-
>         size.html> (i915#11190 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/11190> / i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-
>         varying-size.html> (i915#13046 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/13046> / i915#5354 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html>
>         (i915#13046 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/13046> / i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html>
>         (i915#4103 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4103>)
>   *
> 
>     igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_dirtyfb@drrs-
>         dirtyfb-ioctl.html> (i915#9833 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9833>)
>   *
> 
>     igt@kms_dp_link_training@non-uhbr-mst:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_dp_link_training@non-uhbr-mst.html> (i915#13749
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749>)
>   *
> 
>     igt@kms_dp_linktrain_fallback@dp-fallback:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_dp_linktrain_fallback@dp-fallback.html> (i915#13707
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707>)
>   *
> 
>     igt@kms_draw_crc@draw-method-mmap-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_draw_crc@draw-method-
>         mmap-wc.html> (i915#8812 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8812>)
>   *
> 
>     igt@kms_dsc@dsc-with-formats:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_dsc@dsc-with-
>         formats.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-with-output-formats:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_dsc@dsc-with-
>         output-formats.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555> / i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_fbcon_fbt@fbc:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_fbcon_fbt@fbc.html> -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_fbcon_fbt@fbc.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#14561 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14561>)
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-8/igt@kms_fbcon_fbt@fbc-suspend.html> ->
>         INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-7/igt@kms_fbcon_fbt@fbc-
>         suspend.html> (i915#9878 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9878>)
>   *
> 
>     igt@kms_feature_discovery@chamelium:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_feature_discovery@chamelium.html> (i915#2065 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065> /
>         i915#4854 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4854>)
>   *
> 
>     igt@kms_feature_discovery@display-4x:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_feature_discovery@display-4x.html> (i915#1839 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839>)
>   *
> 
>     igt@kms_flip@2x-blocking-wf_vblank:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_flip@2x-blocking-
>         wf_vblank.html> (i915#9934 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9934>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
> 
>       o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-glk6/igt@kms_flip@2x-flip-vs-absolute-
>         wf_vblank.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk8/igt@kms_flip@2x-flip-vs-
>         absolute-wf_vblank.html>
>   *
> 
>     igt@kms_flip@2x-plain-flip:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_flip@2x-plain-
>         flip.html> (i915#3637 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3637> / i915#9934 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +3 other
>         tests skip
>   *
> 
>     igt@kms_flip@2x-plain-flip-ts-check:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_flip@2x-plain-flip-
>         ts-check.html> (i915#9934 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9934>) +1 other test skip
>   *
> 
>     igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/igt@kms_flip@2x-
>         wf_vblank-ts-check-interruptible.html> (i915#3637 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637> /
>         i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9934>) +2 other tests skip
>   *
> 
>     igt@kms_flip@basic-flip-vs-dpms:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_flip@basic-flip-vs-dpms.html> -
>          > SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/igt@kms_flip@basic-flip-vs-
>         dpms.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544> / i915#3637 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>) +7 other
>         tests skip
>   *
> 
>     igt@kms_flip@dpms-off-confusion@a-hdmi-a1:
> 
>       o shard-rkl: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-7/igt@kms_flip@dpms-
>         off-confusion@a-hdmi-a1.html> (i915#12964 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>) +4 other
>         tests dmesg-warn
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-
>         upscaling@pipe-a-valid-mode.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +1 other
>         test skip
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-
>         upscaling@pipe-a-valid-mode.html> (i915#2587 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2672>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-
>         upscaling@pipe-a-valid-mode.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +2 other
>         tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-
>         ytile-to-64bpp-ytile-upscaling.html> -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-
>         upscaling.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +3 other
>         tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-5/
>         igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-
>         downscaling.html> (i915#2672 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +2 other
>         tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-
>     downscaling@pipe-a-valid-mode:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-5/
>         igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-
>         downscaling@pipe-a-valid-mode.html> (i915#2587 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2672>) +2 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-
>         upscaling@pipe-a-valid-mode.html> (i915#2587 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2672>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>         upscaling@pipe-a-valid-mode.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +1 other
>         test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-
>         primscrn-spr-indfb-draw-mmap-gtt.html> -> SKIP <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-
>         mmap-gtt.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#1849 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849> /
>         i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5354>) +8 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-
>         mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8708>) +6 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-suspend:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-glk6/
>         igt@kms_frontbuffer_tracking@fbc-suspend.html> (i915#10056
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
> 
>       o shard-glk10: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-glk10/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-
>         pwrite.html> +165 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-
>         blt.html> (i915#3023 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3023>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-
>         mmap-cpu.html> (i915#3458 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3458>) +7 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-
>         blt.html> (i915#3458 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3458>) +12 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-
>         move.html> (i915#5354 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/5354>) +12 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-
>         mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8708>) +7 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-
>         blt.html> +48 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html>
>         (i915#8708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8708>) +4 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-
>         render.html> (i915#3458 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3458>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/
>         igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-
>         pwrite.html> (i915#1825 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1825>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-
>         render.html> (i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) +13 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/
>         igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html> +41
>         other tests skip
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/igt@kms_hdr@bpc-switch-
>         dpms.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@invalid-metadata-sizes:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-5/igt@kms_hdr@invalid-
>         metadata-sizes.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@static-toggle:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-11/igt@kms_hdr@static-toggle.html> ->
>         SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-dg2-6/igt@kms_hdr@static-toggle.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8228>) +2 other tests skip
>   *
> 
>     igt@kms_hdr@static-toggle-dpms:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_hdr@static-
>         toggle-dpms.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@static-toggle-suspend:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_hdr@static-toggle-
>         suspend.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_invalid_mode@int-max-clock:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_invalid_mode@int-max-
>         clock.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/igt@kms_invalid_mode@int-max-
>         clock.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#8826 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8826>) +1 other test skip
>   *
> 
>     igt@kms_joiner@basic-big-joiner:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_joiner@basic-
>         big-joiner.html> (i915#10656 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/10656>)
>   *
> 
>     igt@kms_joiner@invalid-modeset-ultra-joiner:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_joiner@invalid-
>         modeset-ultra-joiner.html> (i915#12339 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339>)
>   *
> 
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4816 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4816>)
>   *
> 
>     igt@kms_panel_fitting@atomic-fastset:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_panel_fitting@atomic-
>         fastset.html> (i915#6301 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6301>)
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@kms_panel_fitting@atomic-fastset.html> (i915#6301 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc-frame-sequence:
> 
>       o shard-glk10: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-glk10/
>         igt@kms_pipe_crc_basic@read-crc-frame-sequence.html> (i915#11190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190>)
>         +1 other test skip
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc:
> 
>       o shard-rkl: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-5/
>         igt@kms_pipe_crc_basic@suspend-read-crc.html> (i915#13476
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476>)
>         +1 other test incomplete
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-glk5/
>         igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html>
>         (i915#12756 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12756> / i915#13409 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/13409> / i915#13476 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476>) +1 other
>         test incomplete
>   *
> 
>     igt@kms_plane_alpha_blend@alpha-basic:
> 
>       o shard-glk: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk9/
>         igt@kms_plane_alpha_blend@alpha-basic.html> (i915#12178
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178>)
>   *
> 
>     igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:
> 
>       o shard-glk: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk9/
>         igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html>
>         (i915#7862 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7862>) +1 other test fail
>   *
> 
>     igt@kms_plane_alpha_blend@constant-alpha-max:
> 
>       o shard-glk: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk8/
>         igt@kms_plane_alpha_blend@constant-alpha-max.html> (i915#10647
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10647> / i915#12169 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12169>)
>   *
> 
>     igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-2:
> 
>       o shard-glk: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk8/
>         igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-
>         a-2.html> (i915#10647 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/10647>) +1 other test fail
>   *
> 
>     igt@kms_plane_multiple@2x-tiling-4:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_plane_multiple@2x-
>         tiling-4.html> (i915#13958 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/13958>)
>   *
> 
>     igt@kms_plane_multiple@2x-tiling-x:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_plane_multiple@2x-tiling-x.html> (i915#13958 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>) +1 other
>         test skip
>   *
> 
>     igt@kms_plane_scaling@intel-max-src-size:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_plane_scaling@intel-max-src-size.html> (i915#6953
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953> /
>         i915#9423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9423>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/
>         igt@kms_plane_scaling@plane-downscale-factor-0-5-with-
>         rotation@pipe-c.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) +4 other
>         tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-
>         factor-0-75-with-modifiers.html> -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_plane_scaling@plane-downscale-factor-0-75-with-
>         modifiers.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#8152 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152>) +1 other
>         test skip
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-
>         a.html> (i915#12247 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/12247>) +4 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-
>         factor-0-75-upscale-factor-0-25.html> -> SKIP <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-
>         factor-0-25.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#6953 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953> /
>         i915#8152 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8152>)
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-
>     factor-0-25@pipe-a:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-
>         factor-0-75-upscale-factor-0-25@pipe-a.html> -> SKIP <https://
>         intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-
>         factor-0-25@pipe-a.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) +1 other test skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-
>     factor-0-25@pipe-b:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-
>         factor-0-75-upscale-factor-0-25@pipe-b.html> -> SKIP <https://
>         intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-
>         factor-0-25@pipe-b.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152>) +1 other test skip
>   *
> 
>     igt@kms_pm_backlight@brightness-with-dpms:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/
>         igt@kms_pm_backlight@brightness-with-dpms.html> (i915#12343
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343>)
>   *
> 
>     igt@kms_pm_backlight@fade:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_pm_backlight@fade.html> (i915#9812 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812>)
>   *
> 
>     igt@kms_pm_dc@dc5-dpms-negative:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_pm_dc@dc5-dpms-negative.html> -
>          > SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-
>         negative.html> (i915#13441 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/13441> / i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_pm_dc@dc5-psr:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_pm_dc@dc5-
>         psr.html> (i915#9685 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9685>)
>   *
> 
>     igt@kms_pm_dc@dc6-psr:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_pm_dc@dc6-
>         psr.html> (i915#9685 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9685>)
>   *
> 
>     igt@kms_pm_lpsp@kms-lpsp:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/igt@kms_pm_lpsp@kms-
>         lpsp.html> (i915#3828 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3828>)
>   *
> 
>     igt@kms_pm_rpm@fences-dpms:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_pm_rpm@fences-dpms.html> ->
>         SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#1849 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1849>) +1 other test skip
>   *
> 
>     igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-
>         wait.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-
>         stress-no-wait.html> (i915#9519 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9519>)
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp.html> -
>          > SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-dg2-4/igt@kms_pm_rpm@modeset-non-
>         lpsp.html> (i915#9519 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9519>) +1 other test skip
>   *
> 
>     igt@kms_prime@basic-modeset-hybrid:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-5/igt@kms_prime@basic-
>         modeset-hybrid.html> (i915#6524 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/6524>)
>   *
> 
>     igt@kms_prime@d3hot:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_prime@d3hot.html> (i915#6524 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-5/igt@kms_psr2_sf@fbc-pr-
>         cursor-plane-update-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +3 other
>         tests skip
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-
>         overlay-plane-move-continuous-exceed-sf.html> (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +2 other tests skip
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk6/igt@kms_psr2_sf@fbc-pr-plane-
>         move-sf-dmg-area.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +13
>         other tests skip
>   *
> 
>     igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_psr2_sf@pr-
>         overlay-primary-update-sf-dmg-area.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +3 other
>         tests skip
>   *
> 
>     igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
> 
>       o shard-glk10: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-glk10/igt@kms_psr2_sf@pr-
>         primary-plane-update-sf-dmg-area.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +2 other
>         tests skip
>   *
> 
>     igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/igt@kms_psr2_sf@psr2-cursor-
>         plane-move-continuous-exceed-fully-sf.html> (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>   *
> 
>     igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_psr2_sf@psr2-cursor-
>         plane-move-continuous-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +3 other
>         tests skip
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@kms_psr2_sf@psr2-cursor-
>         plane-move-continuous-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +1 other
>         test skip
>   *
> 
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_psr2_su@frontbuffer-xrgb8888.html> (i915#9683 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>   *
> 
>     igt@kms_psr@fbc-pr-sprite-render:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_psr@fbc-pr-
>         sprite-render.html> (i915#9732 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9732>) +13 other tests skip
>   *
> 
>     igt@kms_psr@fbc-psr-cursor-mmap-cpu:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/igt@kms_psr@fbc-psr-cursor-
>         mmap-cpu.html> (i915#1072 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +1 other
>         test skip
>   *
> 
>     igt@kms_psr@fbc-psr-cursor-plane-move:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_psr@fbc-psr-cursor-
>         plane-move.html> (i915#1072 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +10 other
>         tests skip
>   *
> 
>     igt@kms_psr@fbc-psr2-suspend:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_psr@fbc-psr2-
>         suspend.html> (i915#1072 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +9 other
>         tests skip
>   *
> 
>     igt@kms_psr@pr-cursor-plane-onoff:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@kms_psr@pr-cursor-plane-
>         onoff.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +4 other
>         tests skip
>   *
> 
>     igt@kms_psr@pr-dpms:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/igt@kms_psr@pr-
>         dpms.html> (i915#9732 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9732>) +9 other tests skip
>   *
> 
>     igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/
>         igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html>
>         (i915#5289 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5289>)
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html>
>         (i915#5289 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5289>)
>   *
> 
>     igt@kms_rotation_crc@sprite-rotation-90:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_rotation_crc@sprite-
>         rotation-90.html> (i915#12755 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12755>)
>   *
> 
>     igt@kms_scaling_modes@scaling-mode-full:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/
>         igt@kms_scaling_modes@scaling-mode-full.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_scaling_modes@scaling-mode-none:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@kms_scaling_modes@scaling-mode-none.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_selftest@drm_framebuffer:
> 
>       o shard-tglu-1: NOTRUN -> ABORT <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_selftest@drm_framebuffer.html> (i915#13179 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179>) +1 other
>         test abort
>       o shard-glk10: NOTRUN -> ABORT <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-glk10/
>         igt@kms_selftest@drm_framebuffer.html> (i915#13179 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179>) +1 other
>         test abort
>   *
> 
>     igt@kms_vrr@flip-basic-fastset:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_vrr@flip-basic-
>         fastset.html> (i915#9906 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9906>)
>   *
> 
>     igt@kms_vrr@flip-suspend:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-10/igt@kms_vrr@flip-
>         suspend.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555>) +2 other tests skip
>   *
> 
>     igt@kms_vrr@lobf:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/igt@kms_vrr@lobf.html>
>         (i915#11920 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/11920>)
>   *
> 
>     igt@kms_vrr@negative-basic:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-11/igt@kms_vrr@negative-basic.html> ->
>         SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-dg2-6/igt@kms_vrr@negative-basic.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#9906 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9906>)
>   *
> 
>     igt@kms_vrr@seamless-rr-switch-virtual:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@kms_vrr@seamless-rr-
>         switch-virtual.html> (i915#9906 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9906>)
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@kms_writeback@writeback-
>         check-output.html> (i915#2437 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2437>)
>   *
> 
>     igt@kms_writeback@writeback-check-output-xrgb2101010:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-glk5/igt@kms_writeback@writeback-
>         check-output-xrgb2101010.html> (i915#2437 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>) +1 other
>         test skip
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-5/igt@kms_writeback@writeback-
>         check-output-xrgb2101010.html> (i915#2437 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437> /
>         i915#9412 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9412>)
>   *
> 
>     igt@kms_writeback@writeback-fb-id:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-tglu-1/
>         igt@kms_writeback@writeback-fb-id.html> (i915#2437 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>   *
> 
>     igt@perf@global-sseu-config:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@perf@global-sseu-
>         config.html> (i915#7387 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7387>)
>   *
> 
>     igt@perf_pmu@rc6-all-gts:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@perf_pmu@rc6-all-
>         gts.html> (i915#8516 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/8516>)
>   *
> 
>     igt@perf_pmu@rc6-suspend:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@perf_pmu@rc6-suspend.html> ->
>         INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-3/igt@perf_pmu@rc6-suspend.html>
>         (i915#13520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/13520>)
>   *
> 
>     igt@perf_pmu@semaphore-busy@vecs1:
> 
>       o shard-dg2-9: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@perf_pmu@semaphore-
>         busy@vecs1.html> (i915#4349 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4349>) +5 other tests fail
>   *
> 
>     igt@prime_mmap@test_aperture_limit:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/
>         igt@prime_mmap@test_aperture_limit.html> (i915#14121 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14121>) +1 other
>         test skip
>   *
> 
>     igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/
>         igt@prime_mmap@test_aperture_limit@test_aperture_limit-
>         smem.html> (i915#14121 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14121>) +1 other test skip
>   *
> 
>     igt@prime_udl:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@prime_udl.html> +12 other
>         tests skip
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg1-18/igt@prime_udl.html> +4 other
>         tests skip
>   *
> 
>     igt@prime_vgem@basic-write:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-dg2-7/igt@prime_vgem@basic-
>         write.html> (i915#3291 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3291> / i915#3708 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>   *
> 
>     igt@sriov_basic@bind-unbind-vf:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg2-9/igt@sriov_basic@bind-
>         unbind-vf.html> (i915#9917 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9917>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
> 
>       o shard-dg2: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-
>         compressed-compfmt0-smem-lmem0.html> (i915#13356 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-
>         compfmt0-smem-lmem0.html>
>   *
> 
>     igt@gem_lmem_swapping@smem-oom@lmem0:
> 
>       o shard-dg2: TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-1/igt@gem_lmem_swapping@smem-
>         oom@lmem0.html> (i915#5493 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5493>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-dg2-4/
>         igt@gem_lmem_swapping@smem-oom@lmem0.html> +1 other test pass
>       o shard-dg1: TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg1-16/igt@gem_lmem_swapping@smem-
>         oom@lmem0.html> (i915#5493 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5493>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-dg1-15/
>         igt@gem_lmem_swapping@smem-oom@lmem0.html> +1 other test pass
>   *
> 
>     igt@gem_pxp@create-valid-protected-context:
> 
>       o shard-rkl: TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@gem_pxp@create-valid-protected-
>         context.html> (i915#12964 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12964>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@gem_pxp@create-valid-protected-context.html>
>   *
> 
>     igt@gem_pxp@reject-modify-context-protection-off-1:
> 
>       o shard-rkl: TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@gem_pxp@reject-modify-context-
>         protection-off-1.html> (i915#12917 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917> /
>         i915#12964 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12964>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-8/igt@gem_pxp@reject-modify-
>         context-protection-off-1.html> +3 other tests pass
>   *
> 
>     igt@i915_suspend@fence-restore-tiled2untiled:
> 
>       o shard-glk: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-glk8/igt@i915_suspend@fence-restore-
>         tiled2untiled.html> (i915#4817 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4817>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-glk9/
>         igt@i915_suspend@fence-restore-tiled2untiled.html>
>   *
> 
>     igt@kms_atomic_transition@modeset-transition-fencing:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_atomic_transition@modeset-
>         transition-fencing.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@kms_atomic_transition@modeset-transition-
>         fencing.html> +35 other tests pass
>   *
> 
>     igt@kms_atomic_transition@plane-all-transition:
> 
>       o shard-rkl: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_atomic_transition@plane-all-
>         transition.html> (i915#12964 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12964>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_atomic_transition@plane-all-transition.html> +13 other
>         tests pass
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
> 
>       o shard-rkl: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-y-
>         tiled-gen12-rc-ccs-cc.html> (i915#12796 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-
>         ccs-cc.html> +1 other test pass
>   *
> 
>     igt@kms_color@gamma:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_color@gamma.html> (i915#12655
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12655> / i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_color@gamma.html> +1 other test pass
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-256x85:
> 
>       o shard-tglu: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-tglu-8/igt@kms_cursor_crc@cursor-
>         sliding-256x85.html> (i915#13566 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-256x85.html> +1
>         other test pass
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-glk: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-
>         atomic-transitions.html> (i915#2346 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-
>         transitions.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-toggle:
> 
>       o shard-tglu: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-tglu-5/igt@kms_cursor_legacy@flip-vs-cursor-
>         toggle.html> (i915#2346 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2346>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-tglu-9/
>         igt@kms_cursor_legacy@flip-vs-cursor-toggle.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
> 
>       o shard-dg1: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg1-16/igt@kms_cursor_legacy@flip-vs-cursor-
>         varying-size.html> -> PASS <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v3/shard-dg1-18/
>         igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>   *
> 
>     igt@kms_dp_aux_dev:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-7/igt@kms_dp_aux_dev.html> (i915#1257
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>)
>         -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-dg2-11/igt@kms_dp_aux_dev.html>
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-mtlp: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-mtlp-6/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#4767 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4767>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-mtlp-3/igt@kms_fbcon_fbt@psr-suspend.html>
>   *
> 
>     igt@kms_flip@plain-flip-interruptible:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_flip@plain-flip-
>         interruptible.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#3637 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-8/igt@kms_flip@plain-flip-interruptible.html> +1 other
>         test pass
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-
>         ytile-to-32bpp-ytile-downscaling.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-8/
>         igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-
>         downscaling.html> +1 other test pass
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-
>         primscrn-cur-indfb-draw-mmap-wc.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1849> / i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-
>         mmap-wc.html> +8 other tests pass
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
> 
>       o shard-glk: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-
>         scndscrn-pri-indfb-draw-mmap-cpu.html> -> PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-glk9/
>         igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-
>         mmap-cpu.html> +3 other tests pass
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-7/igt@kms_hdr@static-swap.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8228>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-dg2-11/
>         igt@kms_hdr@static-swap.html> +1 other test pass
>   *
> 
>     igt@kms_invalid_mode@bad-htotal:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#8826 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@kms_invalid_mode@bad-htotal.html> +1 other test pass
>   *
> 
>     igt@kms_joiner@basic-force-big-joiner:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-5/igt@kms_joiner@basic-force-big-
>         joiner.html> (i915#12388 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12388>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-dg2-11/
>         igt@kms_joiner@basic-force-big-joiner.html>
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc.html>
>         (i915#11190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/11190> / i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_pipe_crc_basic@read-crc.html>
>   *
> 
>     igt@kms_plane_alpha_blend@coverage-7efc:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/
>         igt@kms_plane_alpha_blend@coverage-7efc.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#7294 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7294>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_plane_alpha_blend@coverage-7efc.html>
>   *
> 
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-
>         with-clipping-clamping-modifiers.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-
>         modifiers.html>
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-5:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-
>         factor-0-5.html> (i915#12247 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12247> / i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#6953 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6953> / i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_plane_scaling@planes-downscale-factor-0-5.html>
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-
>         factor-0-5-upscale-20x20.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_plane_scaling@planes-downscale-factor-0-5-
>         upscale-20x20.html> +4 other tests pass
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-
>         factor-0-5@pipe-a.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-2/igt@kms_plane_scaling@planes-
>         downscale-factor-0-5@pipe-a.html> +3 other tests pass
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-20x20:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_plane_scaling@planes-
>         upscale-20x20.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#6953 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953> /
>         i915#8152 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8152>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-2/igt@kms_plane_scaling@planes-
>         upscale-20x20.html>
>   *
> 
>     igt@kms_pm_rpm@cursor-dpms:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#1849 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1849>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_pm_rpm@cursor-dpms.html>
>   *
> 
>     igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-
>         lpsp.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544> / i915#9519 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html>
>   *
> 
>     igt@kms_pm_rpm@modeset-lpsp-stress:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-
>         stress.html> (i915#9519 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9519>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-7/
>         igt@kms_pm_rpm@modeset-lpsp-stress.html> +1 other test pass
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp-stress:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-
>         stress.html> (i915#9519 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9519>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-dg2-11/
>         igt@kms_pm_rpm@modeset-non-lpsp-stress.html>
>   *
> 
>     igt@kms_pm_rpm@system-suspend-modeset:
> 
>       o shard-dg1: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg1-12/igt@kms_pm_rpm@system-suspend-
>         modeset.html> (i915#4423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4423>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-dg1-14/
>         igt@kms_pm_rpm@system-suspend-modeset.html>
>   *
> 
>     igt@kms_vrr@negative-basic:
> 
>       o shard-mtlp: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-mtlp-4/igt@kms_vrr@negative-basic.html>
>         (i915#10393 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10393>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-mtlp-5/igt@kms_vrr@negative-
>         basic.html> +1 other test pass
>   *
> 
>     igt@perf_pmu@most-busy-idle-check-all:
> 
>       o shard-rkl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@perf_pmu@most-busy-idle-check-
>         all.html> (i915#4349 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/4349>) -> PASS <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-8/igt@perf_pmu@most-
>         busy-idle-check-all.html> +1 other test pass
> 
> 
>         Warnings
> 
>   *
> 
>     igt@api_intel_bb@crc32:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@api_intel_bb@crc32.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#6230 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6230>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@api_intel_bb@crc32.html> (i915#6230 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230>)
>   *
> 
>     igt@gem_ccs@block-multicopy-compressed:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@gem_ccs@block-multicopy-
>         compressed.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#9323 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html>
>         (i915#9323 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9323>)
>   *
> 
>     igt@gem_create@create-ext-cpu-access-sanity-check:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@gem_create@create-ext-cpu-access-
>         sanity-check.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#6335 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-
>         check.html> (i915#6335 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/6335>) +1 other test skip
>   *
> 
>     igt@gem_ctx_sseu@invalid-sseu:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#280 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/280>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@gem_ctx_sseu@invalid-sseu.html> (i915#280 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>) +2 other
>         tests skip
>   *
> 
>     igt@gem_exec_balancer@parallel-balancer:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@gem_exec_balancer@parallel-
>         balancer.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#4525 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@gem_exec_balancer@parallel-balancer.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4525>)
>   *
> 
>     igt@gem_exec_capture@capture-recoverable:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@gem_exec_capture@capture-
>         recoverable.html> (i915#6344 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/6344>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@gem_exec_capture@capture-recoverable.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#6344 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6344>)
>   *
> 
>     igt@gem_exec_reloc@basic-cpu-gtt:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@gem_exec_reloc@basic-cpu-gtt.html>
>         (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3281>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-
>         gtt.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544> / i915#3281 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +3 other
>         tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-read-noreloc:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-
>         noreloc.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#3281 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html>
>         (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3281>) +9 other tests skip
>   *
> 
>     igt@gem_exec_schedule@semaphore-power:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@gem_exec_schedule@semaphore-
>         power.html> (i915#7276 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/7276>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@gem_exec_schedule@semaphore-power.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#7276 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7276>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-engines:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-
>         engines.html> (i915#4613 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4613>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@gem_lmem_swapping@parallel-random-engines.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#4613 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4613>) +1 other test skip
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-verify-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-
>         verify-ccs.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#4613 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-
>         ccs.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/4613>) +1 other test skip
>   *
> 
>     igt@gem_partial_pwrite_pread@writes-after-reads-display:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-
>         after-reads-display.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3282>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-8/
>         igt@gem_partial_pwrite_pread@writes-after-reads-display.html>
>         (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3282>) +6 other tests skip
>   *
> 
>     igt@gem_pxp@hw-rejects-pxp-buffer:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-buffer.html>
>         (i915#13717 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/13717>) -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-
>         buffer.html> (i915#12917 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12917> / i915#12964 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>   *
> 
>     igt@gem_pxp@regular-baseline-src-copy-readible:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@gem_pxp@regular-baseline-src-copy-
>         readible.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>) ->
>         TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-2/igt@gem_pxp@regular-baseline-src-
>         copy-readible.html> (i915#12964 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12964>)
>   *
> 
>     igt@gem_set_tiling_vs_blt@tiled-to-tiled:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-
>         tiled.html> (i915#8411 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/8411>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@gem_set_tiling_vs_blt@tiled-to-tiled.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8411 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8411>)
>   *
> 
>     igt@gem_set_tiling_vs_pwrite:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@gem_set_tiling_vs_pwrite.html>
>         (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3282>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/
>         igt@gem_set_tiling_vs_pwrite.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3282>) +3 other tests skip
>   *
> 
>     igt@gem_userptr_blits@access-control:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@gem_userptr_blits@access-
>         control.html> (i915#3297 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3297>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@gem_userptr_blits@access-control.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3297>)
>   *
> 
>     igt@gem_userptr_blits@create-destroy-unsync:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@gem_userptr_blits@create-destroy-
>         unsync.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#3297 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@gem_userptr_blits@create-destroy-unsync.html>
>         (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3297>) +2 other tests skip
>   *
> 
>     igt@gem_userptr_blits@dmabuf-sync:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#3297 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3297> / i915#3323 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@gem_userptr_blits@dmabuf-sync.html> (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297> /
>         i915#3323 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3323>)
>   *
> 
>     igt@gen9_exec_parse@secure-batches:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@gen9_exec_parse@secure-
>         batches.html> (i915#2527 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2527>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@gen9_exec_parse@secure-batches.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2527>) +3 other tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-16bpp-rotate-90:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-
>         rotate-90.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_big_fb@4-tiled-16bpp-rotate-90.html> (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-
>         stride-64bpp-rotate-180.html> (i915#5286 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-
>         rotate-180.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544>) +3 other tests skip
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-270:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-
>         rotate-270.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_big_fb@x-tiled-16bpp-rotate-270.html> (i915#3638
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
>         +3 other tests skip
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-90:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-
>         rotate-90.html> (i915#3638 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3638>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_big_fb@x-tiled-16bpp-rotate-90.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>         +3 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-
>         rotate-270.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html> +8 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-
>         rotate-90.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-6/igt@kms_big_fb@yf-
>         tiled-64bpp-rotate-90.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) +14
>         other tests skip
>   *
> 
>     igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-hdmi-a-2:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_ccs@bad-aux-stride-yf-tiled-
>         ccs@pipe-b-hdmi-a-2.html> (i915#14098 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6095>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-8/igt@kms_ccs@bad-aux-stride-yf-
>         tiled-ccs@pipe-b-hdmi-a-2.html> (i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +4 other
>         tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-
>         bmg-ccs.html> (i915#12313 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12313>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-
>         tiled-dg2-mc-ccs.html> (i915#14098 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6095>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/igt@kms_ccs@crc-primary-
>         rotation-180-4-tiled-dg2-mc-ccs.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) +11
>         other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg1-18/igt@kms_ccs@crc-primary-
>         rotation-180-4-tiled-dg2-rc-ccs.html> (i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-
>         rc-ccs.html> (i915#4423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4423> / i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +1 other
>         test skip
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-
>         tiled-ccs.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html> (i915#14098
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14098> / i915#6095 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6095>) +12 other tests skip
>   *
> 
>     igt@kms_chamelium_edid@hdmi-edid-read:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-
>         read.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/11151> / i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7828>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-8/igt@kms_chamelium_edid@hdmi-edid-
>         read.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/11151> / i915#7828 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +4 other
>         tests skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_chamelium_hpd@dp-hpd-enable-
>         disable-mode.html> (i915#11151 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/11151> / i915#7828 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-
>         mode.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/11151> / i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7828>) +3 other tests skip
>   *
> 
>     igt@kms_content_protection@atomic:
> 
>       o shard-dg2: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-11/
>         igt@kms_content_protection@atomic.html> (i915#7173 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-dg2-6/igt@kms_content_protection@atomic.html> (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118> /
>         i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9424>)
>   *
> 
>     igt@kms_content_protection@atomic-dpms:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-7/igt@kms_content_protection@atomic-
>         dpms.html> (i915#7118 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/7118> / i915#9424 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-dg2-11/igt@kms_content_protection@atomic-dpms.html>
>         (i915#7173 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7173>) +1 other test fail
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-1:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-
>         type-1.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_content_protection@dp-mst-lic-type-1.html> (i915#3116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116>)
>   *
> 
>     igt@kms_content_protection@mei-interface:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_content_protection@mei-
>         interface.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_content_protection@mei-interface.html> (i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>         +1 other test skip
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg1-16/igt@kms_content_protection@mei-
>         interface.html> (i915#9424 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9424>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-dg1-12/
>         igt@kms_content_protection@mei-interface.html> (i915#9433
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433>)
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_content_protection@srm.html>
>         (i915#7118 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7118>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/
>         igt@kms_content_protection@srm.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_content_protection@type1:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_content_protection@type1.html>
>         (i915#7118 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7118> / i915#9424 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9424>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_content_protection@type1.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-128x42:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_cursor_crc@cursor-
>         random-128x42.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544>) -> FAIL <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_cursor_crc@cursor-random-128x42.html> (i915#13566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-512x512:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_cursor_crc@cursor-
>         random-512x512.html> (i915#13049 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-random-64x21:
> 
>       o shard-rkl: DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_cursor_crc@cursor-
>         random-64x21.html> (i915#12964 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12964>) -> FAIL <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_cursor_crc@cursor-random-64x21.html> (i915#13566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-32x32:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_cursor_crc@cursor-
>         sliding-32x32.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_cursor_crc@cursor-sliding-32x32.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-
>         before-cursor-legacy.html> (i915#11190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-8/igt@kms_cursor_legacy@basic-
>         busy-flip-before-cursor-legacy.html> (i915#4103 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-rkl: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-
>         atomic-transitions-varying-size.html> (i915#12964 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-
>         transitions-varying-size.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) +4 other
>         tests skip
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-
>     transitions-varying-size:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-
>         before-cursor-atomic-transitions-varying-size.html> (i915#4103
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
>         -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/igt@kms_cursor_legacy@short-busy-
>         flip-before-cursor-atomic-transitions-varying-size.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>)
>   *
> 
>     igt@kms_dsc@dsc-with-bpc:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-8/igt@kms_dsc@dsc-with-
>         bpc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3555> / i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-with-bpc-formats:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg1-18/igt@kms_dsc@dsc-with-bpc-formats.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3840>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-dg1-14/
>         igt@kms_dsc@dsc-with-bpc-formats.html> (i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#3840 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3840> / i915#4423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_dsc@dsc-with-formats:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3840>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_dsc@dsc-with-formats.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg1-17/igt@kms_dsc@dsc-with-formats.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3840> / i915#4423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-dg1-13/igt@kms_dsc@dsc-with-formats.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#3840 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-with-output-formats-with-bpc:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-
>         with-bpc.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_dsc@dsc-with-output-formats-with-bpc.html> (i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840> /
>         i915#9053 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9053>)
>   *
> 
>     igt@kms_fbcon_fbt@psr:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_fbcon_fbt@psr.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#3955 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3955>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_fbcon_fbt@psr.html> (i915#3955 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955>)
>   *
> 
>     igt@kms_feature_discovery@psr1:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_feature_discovery@psr1.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/658>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/
>         igt@kms_feature_discovery@psr1.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#658 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/658>) +1 other test skip
>   *
> 
>     igt@kms_flip@2x-flip-vs-fences:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#9934 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9934>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_flip@2x-flip-vs-fences.html> (i915#9934 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +2 other
>         tests skip
>   *
> 
>     igt@kms_flip@2x-plain-flip-ts-check:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_flip@2x-plain-flip-ts-
>         check.html> (i915#9934 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9934>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-6/igt@kms_flip@2x-
>         plain-flip-ts-check.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9934>) +5 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/
>         igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-
>         upscaling.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-
>         to-32bpp-4tile-upscaling.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>) +2 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-
>         yftile-to-16bpp-yftile-upscaling.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>         upscaling.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-
>         primscrn-cur-indfb-draw-mmap-cpu.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1849> / i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-
>         mmap-cpu.html> (i915#3023 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3023>) +13 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-
>         indfb-fliptrack-mmap-gtt.html> -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-
>         gtt.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544> / i915#1849 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849> /
>         i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5354>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-
>         scndscrn-shrfb-pgflip-blt.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1849> / i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-
>         blt.html> (i915#1825 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/1825>) +22 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-
>         farfromfence-mmap-gtt.html> (i915#3023 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-
>         mmap-gtt.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#1849 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849> /
>         i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5354>) +16 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-suspend:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-
>         suspend.html> (i915#3458 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3458>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-dg2-4/
>         igt@kms_frontbuffer_tracking@fbcpsr-suspend.html> (i915#10433
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10433> / i915#3458 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3458>) +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-
>         scndscrn-indfb-msflip-blt.html> (i915#1825 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-
>         msflip-blt.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#1849 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849> /
>         i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5354>) +24 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-
>         scaledprimary.html> (i915#10433 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/10433> / i915#3458 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-
>         scaledprimary.html> (i915#3458 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3458>) +2 other tests skip
>   *
> 
>     igt@kms_hdr@brightness-with-hdr:
> 
>       o shard-mtlp: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html>
>         (i915#1187 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1187> / i915#12713 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12713>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-mtlp-2/
>         igt@kms_hdr@brightness-with-hdr.html> (i915#12713 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>)
>   *
> 
>     igt@kms_hdr@static-toggle-suspend:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_hdr@static-toggle-suspend.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8228>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_hdr@static-toggle-suspend.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_joiner@basic-big-joiner:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html>
>         (i915#10656 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10656> / i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_joiner@basic-big-joiner.html> (i915#10656 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>)
>   *
> 
>     igt@kms_joiner@invalid-modeset-force-big-joiner:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-dg1-18/igt@kms_joiner@invalid-modeset-force-
>         big-joiner.html> (i915#12388 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12388>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-dg1-14/
>         igt@kms_joiner@invalid-modeset-force-big-joiner.html>
>         (i915#12388 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12388> / i915#4423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_panel_fitting@atomic-fastset:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_panel_fitting@atomic-
>         fastset.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_panel_fitting@atomic-fastset.html> (i915#6301 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
>   *
> 
>     igt@kms_plane_multiple@2x-tiling-4:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_plane_multiple@2x-
>         tiling-4.html> (i915#13958 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/13958>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_plane_multiple@2x-tiling-4.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_plane_multiple@tiling-yf:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_plane_multiple@tiling-yf.html>
>         (i915#14259 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14259>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_plane_multiple@tiling-yf.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) +1 other
>         test skip
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-
>         factor-0-75-with-rotation@pipe-a.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-
>         with-rotation@pipe-a.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-
>         factor-0-75-with-rotation@pipe-b.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-
>         with-rotation@pipe-b.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152>) +1 other test skip
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_plane_scaling@plane-
>         upscale-20x20-with-rotation@pipe-a.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v3/shard-rkl-2/igt@kms_plane_scaling@plane-
>         upscale-20x20-with-rotation@pipe-a.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_plane_scaling@plane-
>         upscale-20x20-with-rotation@pipe-b.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-
>         b.html> (i915#12247 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/12247>) +1 other test skip
>   *
> 
>     igt@kms_pm_backlight@basic-brightness:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_pm_backlight@basic-
>         brightness.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#5354 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-8/igt@kms_pm_backlight@basic-brightness.html>
>         (i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5354>)
>   *
> 
>     igt@kms_pm_backlight@fade-with-dpms:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_pm_backlight@fade-with-
>         dpms.html> (i915#5354 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/5354>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_pm_backlight@fade-with-dpms.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5354>)
>   *
> 
>     igt@kms_pm_rpm@i2c:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_pm_rpm@i2c.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>         -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-2/igt@kms_pm_rpm@i2c.html>
>         (i915#12964 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12964>)
>   *
> 
>     igt@kms_prime@basic-crc-hybrid:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#6524 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6524>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_prime@basic-crc-hybrid.html> (i915#6524 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-primary-plane-
>         update-sf-dmg-area.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-
>         area.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/11520> / i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) +6 other
>         tests skip
>   *
> 
>     igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_psr2_sf@psr2-cursor-plane-move-
>         continuous-sf.html> (i915#11520 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/11520> / i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-
>         sf.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/11520>) +3 other tests skip
>   *
> 
>     igt@kms_psr2_su@page_flip-p010:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#9683 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9683>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@kms_psr2_su@page_flip-p010.html> (i915#9683 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>   *
> 
>     igt@kms_psr2_su@page_flip-xrgb8888:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_psr2_su@page_flip-
>         xrgb8888.html> (i915#9683 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9683>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_psr2_su@page_flip-xrgb8888.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#9683 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9683>)
>   *
> 
>     igt@kms_psr@pr-cursor-plane-onoff:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_psr@pr-cursor-plane-onoff.html>
>         (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1072> / i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-2/igt@kms_psr@pr-cursor-plane-onoff.html> (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> /
>         i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9732>) +12 other tests skip
>   *
> 
>     igt@kms_psr@psr2-sprite-mmap-cpu:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_psr@psr2-sprite-mmap-cpu.html>
>         (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9732>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_psr@psr2-sprite-mmap-cpu.html> (i915#1072 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#9732 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9732>) +14 other tests skip
>   *
> 
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_psr_stress_test@invalidate-
>         primary-flip-overlay.html> (i915#9685 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v3/
>         shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-
>         overlay.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#9685 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>)
>   *
> 
>     igt@kms_scaling_modes@scaling-mode-none:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-
>         none.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_scaling_modes@scaling-mode-none.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_setmode@invalid-clone-single-crtc-stealing:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@kms_setmode@invalid-clone-single-
>         crtc-stealing.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_setmode@invalid-clone-single-crtc-stealing.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_vrr@max-min:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-3/igt@kms_vrr@max-min.html> (i915#9906
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>         -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/igt@kms_vrr@max-min.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>)
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@kms_writeback@writeback-check-
>         output.html> (i915#2437 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2437>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@kms_writeback@writeback-check-output.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#2437 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2437>)
>   *
> 
>     igt@kms_writeback@writeback-fb-id:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@kms_writeback@writeback-fb-id.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#2437 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2437>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-2/
>         igt@kms_writeback@writeback-fb-id.html> (i915#2437 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>   *
> 
>     igt@perf@mi-rpc:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@perf@mi-rpc.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#2434 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2434>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-8/
>         igt@perf@mi-rpc.html> (i915#2434 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434>)
>   *
> 
>     igt@perf@per-context-mode-unprivileged:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@perf@per-context-mode-
>         unprivileged.html> (i915#2435 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2435>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@perf@per-context-mode-unprivileged.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#2435 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2435>)
>   *
> 
>     igt@perf_pmu@rc6-all-gts:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@perf_pmu@rc6-all-gts.html>
>         (i915#8516 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8516>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8516 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8516>)
>   *
> 
>     igt@prime_vgem@basic-write:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-7/igt@prime_vgem@basic-write.html>
>         (i915#3291 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3291> / i915#3708 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3708>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@prime_vgem@basic-write.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#3291 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3291> / i915#3708 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3708>)
>   *
> 
>     igt@sriov_basic@enable-vfs-bind-unbind-each:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-5/igt@sriov_basic@enable-vfs-bind-unbind-
>         each.html> (i915#9917 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9917>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v3/shard-rkl-6/
>         igt@sriov_basic@enable-vfs-bind-unbind-each.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#9917 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9917>)
>   *
> 
>     igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17280/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-
>         each-numvfs-all.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#9917 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9917>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v3/shard-rkl-8/igt@sriov_basic@enable-vfs-bind-
>         unbind-each-numvfs-all.html> (i915#9917 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_17280 -> Patchwork_154423v3
> 
> CI-20190529: 20190529
> CI_DRM_17280: cf30ff531bfd0e8ac184b81b410b0c1dda703f74 @ git:// 
> anongit.freedesktop.org/gfx-ci/linux
> IGT_8556: e5eda2a187432a54f5e6fada18e4187e5175a10c @ https:// 
> gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_154423v3: cf30ff531bfd0e8ac184b81b410b0c1dda703f74 @ git:// 
> anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git:// 
> anongit.freedesktop.org/piglit
> 

