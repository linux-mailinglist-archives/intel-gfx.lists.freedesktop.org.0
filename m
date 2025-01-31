Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90894A23A66
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 09:02:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AFC310EA30;
	Fri, 31 Jan 2025 08:02:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kc9ui2uT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 768CA10EA30;
 Fri, 31 Jan 2025 08:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738310525; x=1769846525;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=79JTAaJ041zZDhhmNW+2kuViPuOG2bPBwoxJ3BcXu0c=;
 b=kc9ui2uT8FwXZgTJgowlsJBjjQjHWBs3fN8UzpljaoseGyvdzqylSX/x
 CYjOI/Hc2FbA+4HOgEcwkEiDVLoRCtGTVxgLXv2gF6bjkQ7M+Sfyw5/yY
 +3BpOOuQseH48NauDKUA4oVV9VemwMl/GR802bwYYZNy1sJeEMq9CGG1O
 11zJsLp5Pwrmkz4QtfXG4PfQmLv8flmuZAP3AsYQPvMaUKQRI32n1EwU7
 brtININWWsPED26esLDZEDusQtr54Dykpu4HbhK1xpyACr3qrbD0/xyh2
 wij0otAxHhRQkx8SmUWpMn3RnxcqDwXuvLmHIHkYoCZrdDJJ6qYcPiYcC A==;
X-CSE-ConnectionGUID: rwRKNopoQYmaJwQEG75W+A==
X-CSE-MsgGUID: H9QCJ7tATq+2qDeb2ENE7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="49473592"
X-IronPort-AV: E=Sophos;i="6.13,247,1732608000"; d="scan'208";a="49473592"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 00:02:04 -0800
X-CSE-ConnectionGUID: LIfSw2yCR1qac5Xe1WeMdw==
X-CSE-MsgGUID: hOHYZ4JtQJOmPUcBORPVyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,247,1732608000"; d="scan'208";a="109350688"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2025 00:02:04 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 31 Jan 2025 00:02:00 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 31 Jan 2025 00:02:00 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 31 Jan 2025 00:01:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gXgYc0dscv2GU1XFyUrpr1mGJ8OJcpkmwXgUJxCznU5C0OVqbcIj8HscTFoK1yf6FajmkAXs4HJ/AEOLPgU28yhc/iUuY7Vnaqkzv0+8GX5wcc0Bfcofoj8DOOBZJmHduBBxby3KmwSHIu74sK9Jcffx3kU/Lo1tTffhEe+30/uW+bGCP+9k/nXD0xZp7WzqKB9hsCTpdQ1sCH2Sw8OZy9i3857yCNbNcXiFI3xY2lA6N9KDHfFMmo9cIgAHVafrI5XWyPYmcuNvHI3Oeo3av3j1sg47U2c4sX2fLUDCab5K70d4uRZNC1pMhMoFHq6Shf5jLLb4a8PdcFRJ+gGaqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I5j0w/4lElakUDQaWTm0yVF6NBUmE7c17xFIJMzQx5I=;
 b=aZbWXT1m91Tn/jQI1pLO4Ic9vs2msn33Nb8ncJ+KaXIs4/RqEbaYvUZzW+0zQK67fFwZd7eTxxP4PukRIjmD9wZ1GO9DYMesE64BaRZG/TQbxtMxvKN7mbejBNQbcG5IWo9nGhu18fWzQNCapTCs9MNNA6SgsdICvPRG/gSXe6aYRcQqaVQe964jV/PLRKSHk5cv/VAuLN9JbXgUxRcz/cfSEyja2TY2IEX4UavLKvggvD1RAfYQtdJY2XX5tlqSzIuCCx6mBuIMCMZOgW5yPTqODmUWLa20LVMZ0owqmDwn8DMSUqCZ5womiALsCxwJPIMK7DyLkDZq+/R4kvxoqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 PH7PR11MB8009.namprd11.prod.outlook.com (2603:10b6:510:248::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Fri, 31 Jan
 2025 08:01:08 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca%4]) with mapi id 15.20.8398.018; Fri, 31 Jan 2025
 08:01:08 +0000
Message-ID: <1ff860c8-474f-4f4d-afe8-edd1dd8046fb@intel.com>
Date: Fri, 31 Jan 2025 13:31:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v7 2/3] lib/igt_perf: Add utils to extract PMU event
 info
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250130213028.3852086-1-vinay.belgaumkar@intel.com>
 <20250130213028.3852086-3-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20250130213028.3852086-3-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0069.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::12) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|PH7PR11MB8009:EE_
X-MS-Office365-Filtering-Correlation-Id: cb890e33-49b3-472d-311f-08dd41cd6b37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MkJRTWxFODkwV202b1VmZDBMenNINmZ0OHNwYUdwZGNiWnBTRVhPVHd5TDYr?=
 =?utf-8?B?dlhVZkVkYmJ2VEc2aUhnYzFsT3BvNHkxN3d6Z1NWNGlCSHd1TVl6UnFRTnJQ?=
 =?utf-8?B?U00xaGp6dDFSUDcwUU1SRkpXbHJsUkN4OWRRVFlMOEh0UWljVEpqSm9wRTc3?=
 =?utf-8?B?QURvZWZqbUtqT29MMi96QkcvNlVlSlhOdXdFOWI2VWtMS2VnUENsVm52NnFl?=
 =?utf-8?B?dCt5UnQ0eit4VmN0dml5Ti9kNytOUWw0NnhWLzhVRTB2NFowZDFnbXA3UlNT?=
 =?utf-8?B?ZndOT2xhTjNvbGp6L0ZHQm5TZHZaMVBtODRFV09DaEVPVjRab3RZZm9JeUlz?=
 =?utf-8?B?QVB5WVRUalI4R3dTaXpETFpsSFgrUFo5bnFrOUZTUStuL1VyMmxzVWJSaDZ0?=
 =?utf-8?B?ZnpFdUdyNXlUSnpnbmJEMjBOamV0ZDFBUHBOY1lFNWdHQVdibDUvTTF3bWkv?=
 =?utf-8?B?MTZzallSNWd1ZGZWbjNuck9GVy9yS08zd3ZhZVFzaVJYd3FKa09uTTJmZEpq?=
 =?utf-8?B?a3VKYUtIZTVpbENDNWhkVGs3cWhYOFFCV241bXphTkpIMEJUemZURzhtYThn?=
 =?utf-8?B?RjFBbytDV0g5NlNibjFSTWxKbmJkM2YwUkZMYnVTTllOOEVPT004SmZwS0x1?=
 =?utf-8?B?L1J6VjZYY3FYUGhBNjRFS1BYRWxzWEs2RWtacklsUFdVeTNhZHBHR1pFUkRY?=
 =?utf-8?B?K2F1LzJxR0ZXRy9nYTJKMXVQZmZCaWJZcVFuWnQ3NEJsZGZlNXNEaGZlM2p1?=
 =?utf-8?B?Y2JCS2tGaGNjMnA1NDFpT25FS3lMOEJpZCtuRVU3TTdiOXI1TDZUVjFLME96?=
 =?utf-8?B?bGxSZEdkUVZDWlhGaWUvREJSTFJOYVVFM0VSc0o2a2hWUVVSOFNSVVBoN0pL?=
 =?utf-8?B?U1ozNithbHBZcnlYRFd3UnBxOEhNd3lyZ3hZOFpPWkIrcXZJNjJiNVd3aDZS?=
 =?utf-8?B?M3JPaVVmUDhLU0tLUFVmVit6UTFaZHBDTkZ1TTF6dVJXcVo5MHJxdTFSMkNI?=
 =?utf-8?B?TnFpamZoM1gyeE5Fd1YwMGg4NUJvRmU3Z25MUmMzYkF0bkNKMjNONWFGdHhM?=
 =?utf-8?B?NmlXWFBsODZKdlN6eDlnWlRlaW0vQXhlT2NZTEExdy9PM2poVWdNTGpKSXpo?=
 =?utf-8?B?WmhhcW8rODNUYXhDeHlMa0w1bU9hZWtLTy9HYjRNemZWQUZ5cnJDcVZkL0VY?=
 =?utf-8?B?UVZ0NG5ZWmdwMUs3MEM5Q0dFYlQ5RnVicUxZaW9kb3ZndHFWR2pocW9ROGVz?=
 =?utf-8?B?b0FBUnBkMW50OHdVQzNUbys0Uk9Qak53OHJnN0dRZ1BkNnRqbCsyaDhGaDEy?=
 =?utf-8?B?b3FsZEhMd0hEZjd0ZmdnVHVjU0dhQ0pyMnJiRGdDVGh0MWd2QjlnU1I2ZTQr?=
 =?utf-8?B?RFRyS0xXTVpsQ0pRWFV1aWxGcGJiYkdFTTNlQUM3ZWU4THMrS0hWTVg4dlVi?=
 =?utf-8?B?V1FVQ2YzSWQzQVhLRzJlZWJsYVlqaUJVRkZ4akswUTVCS3pEeWp1cTExWUFj?=
 =?utf-8?B?bEdZTVIxZUlrc0V5Q1VXdndZRUJvR1ZOZzZ1bno0alpZVm1jR001SFVMQUR5?=
 =?utf-8?B?cytxekhwM2paZ3Qybnp2SklhazJXRHBYL0tpYXZPcHVoY3IvanFvQWpiTDFQ?=
 =?utf-8?B?THFuY1pxc2pyVit1V29Icm9jVGhjektncW5GaXljNmxwT2xvSHFFYXM4V3hm?=
 =?utf-8?B?WXhqTGxZdjNDVFBDaVlIenJnWk5WdkZOMmJOZVRjYXFud01uNHJKL1N5Kytn?=
 =?utf-8?B?d2g5WWJDZGR3N2lWY2haUUZTNWxPWVllOVBvODZheWJESUpGSlJjbnFJcW14?=
 =?utf-8?B?ekYyeGh2b0tUNmNGdU5LVDZudlFCZ3JVUU5ySGtmK1REQ2NIZldtQzVFWDJz?=
 =?utf-8?Q?4RQ0WX8DVr3Gh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0V5N21FUjlEYUs2TmVUUlY1Ry9Bc1lPdmNvcEVqd3oyVmhKaUdXYVpoN1ky?=
 =?utf-8?B?TUoyUkw0a2ZCamNycjgwVFlSaEQrRTVxL09vaGNHT3A5RmY4QXFDV1lteWxW?=
 =?utf-8?B?bXNTamJqSGhoTWlyR25BZDJpajNSc0VNZklpN1BITGp4dk9qVzl2cUVjRm1j?=
 =?utf-8?B?S2VONHdzMXEzZzJpZmF1cHQrT3A1Z3RhZ25XbFdVMHBFcW1rUmxkZlJ2dWpr?=
 =?utf-8?B?SnNXQzZwM05jRW1DMWFoM09nWWxGanVBYkU4K1FtTjJDZUI0WVN1d05KY0p1?=
 =?utf-8?B?eVNQODRXeUdnM3hhV2tDNkgrZDYrVmZJMHB5em41SUc0Yi9BeXJFMFhzbFcv?=
 =?utf-8?B?UHZVQkZ6S0VjVFNlQTZnS0xGWlFCbkhmWFFGSStDWWIyaEV2ekZ4UVpXSXVE?=
 =?utf-8?B?YU9EZDJQcU5RcnBiWk02Y3NJZ3pXcHBld3EwOWlEQ3RZaFRLb25sV1IybElx?=
 =?utf-8?B?WjZvSnpCdlQ3WFQ5SVJOdnNjMElNSDAyMG5td0RLY3c4b0FsK3NrcXNwa0xm?=
 =?utf-8?B?Vk16V21Wb01XOWc2cWRzUWwzb2U5WVRYRVh3YlBoRkpUUUpRTU9qL3k4Q1Ev?=
 =?utf-8?B?elNJNFhpaW1SbkRpYkNsRHU0S0VVWTBtM1FqbU1iQWk3VGFlSVBSNUxWNi9P?=
 =?utf-8?B?d0ttSVlORmNuL3BHNTJmOGVOb0RkbC9pVGMrd1JVRFI2dWd4K1lRcUNxQ0dl?=
 =?utf-8?B?amhrSm5HNFpXVEF0ZmNqRk5OUGFjMDNyZUJUOUJ4QW1mbGtHaEFBeUJPWHhW?=
 =?utf-8?B?Zm1FcEFoaGpwSXZIY0kyV25WM1BmTFdZd1N3aThIMWt0NlNQelY4eTcwSFFm?=
 =?utf-8?B?V0xCU0tlZFlZK2pHSVRHNWFnanBOdlB3QStyeTN4ZW5EMyt4dGxDRVBMaGRt?=
 =?utf-8?B?bE1SeUVRa3FObU04RTZRbm9Od3FkNWc0ZC9tQnNEaWpwRUxPZUtiVnJWS0Rw?=
 =?utf-8?B?by9TbDhWMncvNGV6OGZOaWk1R09qeWo3S1J1eTJWZzBRSysvOFR3N05qcUJl?=
 =?utf-8?B?K0IrRjNTY2NoalBMc1ZMN2d6bk5PTVV5czUrOE5xaUtUNWFyUk9Nb3ZYbDlm?=
 =?utf-8?B?NkJTZG5GWkx3eCswaHFUOE0vSDJmZ2dqTExlOWdZQy9qNU5FTFJJNlNGYUl3?=
 =?utf-8?B?Nm5sK2NTb0FLVUYrcUNCYncyUWVjdU53dmV6STFkMHJ2UEFXMGpGT2VNZGMw?=
 =?utf-8?B?SU5ZaElVR2EvVGI1ZzJzTklBWWt0ekNTRy84cUVGWXFrNVVLempLdUtLc2Qy?=
 =?utf-8?B?TkdGb2hOQ0RYVjRSbkl4UTB0SUZaTitocnRHUHJJK2hlbjFwdyt6N0gxNXZE?=
 =?utf-8?B?cE1BM3RsWkZVdWJPcEhmblhhN25LQ1FtalExZWwrcmhUQnk1c3pxckVhZGJP?=
 =?utf-8?B?ZE1LQm1WUGZFV25mamcvWEZnRk9CQmwrRzJnbVgwVTZ0bEJkZmRqcGhLanVk?=
 =?utf-8?B?RGtEdTFkNHlrcXIwTE5Nb1lDREpHY0J5WU10Zmd4RkJjZG5KcGg2OGc5TGlx?=
 =?utf-8?B?ZjJRU01qa09FZUdFb2U5TjNXL0taTDR3MDZEc253T1hDNU9JZEVoUTVpNFhs?=
 =?utf-8?B?WVY2K21WeU9SL3pWVlkyLzlBMzNYQWVMcHpnMnYrL20vSkZucDM5UnplTDBT?=
 =?utf-8?B?M1ZWaVJTYndraW5zbjZnMnptUjArZ0NmUVRmRjBhSjNXelBhSGRkMTUyZHNR?=
 =?utf-8?B?QkxlTURBbmpXNEs3TEdQdHhLMlVlL0RJVmd0ZzA0cEpRbHNidXFybERxdzR5?=
 =?utf-8?B?bXJwZzNvaE8yeHczbTFHRnlpSlJSbU1SampsVVBydVM0K3I5N0IzaEI4aUt3?=
 =?utf-8?B?UEx6UDFyWmRmV25sdTZQTnFGM3FBNTB1ckpHVENuUEJKVTFYWlNxaFR6ckJq?=
 =?utf-8?B?NEowVWsxdGh2bk0rSDY3R1d1ZFZ5S0JtL0lGLzNkY0lMeW9KYzdSRjM3akFr?=
 =?utf-8?B?SVdQU3hqd1BaTzZJVDNEVDZ1MGJkZVkva1JDNEVhdkE0b2ZSOXdtNXdvNkJq?=
 =?utf-8?B?emk0Um5WOGEzVG9oa2J0YWczY212U25uc3NOaGoybU9kQ09xSzNML2JhUGlo?=
 =?utf-8?B?Rm1hNHJuUzN2dWs0V0lVbFdZdDFTNi95cmNmMWxNTk5FUTNyOUlBSmxTREp3?=
 =?utf-8?Q?hcxR2Vhfz98NfTddMzAf4tlpM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb890e33-49b3-472d-311f-08dd41cd6b37
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2025 08:01:08.1024 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EL+nx3TCdvFg9hdracIMlATgFWGy/eEfrzwFkcb3IwYXPviantcdTuynec9ERLrRlikYHzAgcc88MEGTW4ylDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8009
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



On 1/31/2025 3:00 AM, Vinay Belgaumkar wrote:
> Functions to parse event ID and GT bit shift for PMU events.
> 
> v2: Review comments (Riana)
> v3: Review comments (Lucas)
> 
> Cc: Riana Tauro <riana.tauro@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Looks good to me

Reviewed-by: Riana Tauro <riana.tauro@intel.com>
> ---
>   lib/igt_perf.c | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++
>   lib/igt_perf.h |  2 ++
>   2 files changed, 72 insertions(+)
> 
> diff --git a/lib/igt_perf.c b/lib/igt_perf.c
> index 3866c6d77..f021fc3ec 100644
> --- a/lib/igt_perf.c
> +++ b/lib/igt_perf.c
> @@ -92,6 +92,76 @@ const char *xe_perf_device(int xe, char *buf, int buflen)
>   	return buf;
>   }
>   
> +/**
> + * perf_event_format: Returns the start/end positions of an event format param
> + * @device: PMU device
> + * @param: Parameter for which you need the format start/end bits
> + * Returns: 0 on success or negative error code
> + */
> +int perf_event_format(const char *device, const char *param, uint32_t *start, uint32_t *end)
> +{
> +	char buf[NAME_MAX];
> +	ssize_t bytes;
> +	int ret;
> +	int fd;
> +
> +	snprintf(buf, sizeof(buf),
> +		 "/sys/bus/event_source/devices/%s/format/%s",
> +		 device, param);
> +
> +	fd = open(buf, O_RDONLY | O_CLOEXEC);
> +	if (fd < 0)
> +		return -EINVAL;
> +
> +	bytes = read(fd, buf, sizeof(buf) - 1);
> +	close(fd);
> +	if (bytes < 1)
> +		return -EINVAL;
> +
> +	buf[bytes] = '\0';
> +	ret = sscanf(buf, "config:%u-%u", start, end);
> +	if (ret != 2)
> +		return -EINVAL;
> +
> +	return ret;
> +}
> +
> +/**
> + * perf_event_config:
> + * @device: Device string in driver:pci format
> + * @event: The event name
> + * @config: Pointer to the config
> + * Returns: 0 for success, negative value on error
> + */
> +int perf_event_config(const char *device, const char *event, uint64_t *config)
> +{
> +	char buf[NAME_MAX];
> +	ssize_t bytes;
> +	int ret;
> +	int fd;
> +
> +	snprintf(buf, sizeof(buf),
> +		 "/sys/bus/event_source/devices/%s/events/%s",
> +		 device,
> +		 event);
> +
> +	fd = open(buf, O_RDONLY);
> +	if (fd < 0)
> +		return -EINVAL;
> +
> +	bytes = read(fd, buf, sizeof(buf) - 1);
> +	close(fd);
> +	if (bytes < 1)
> +		return ret;
> +
> +	buf[bytes] = '\0';
> +	ret = sscanf(buf, "event=0x%lx", config);
> +	if (ret != 1)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
>   uint64_t xe_perf_type_id(int xe)
>   {
>   	char buf[80];
> diff --git a/lib/igt_perf.h b/lib/igt_perf.h
> index 3d9ba2917..69f7a3d74 100644
> --- a/lib/igt_perf.h
> +++ b/lib/igt_perf.h
> @@ -71,5 +71,7 @@ int perf_i915_open(int i915, uint64_t config);
>   int perf_i915_open_group(int i915, uint64_t config, int group);
>   
>   int perf_xe_open(int xe, uint64_t config);
> +int perf_event_config(const char *device, const char *event, uint64_t *config);
> +int perf_event_format(const char *device, const char *param, uint32_t *start, uint32_t *end);
>   
>   #endif /* I915_PERF_H */

