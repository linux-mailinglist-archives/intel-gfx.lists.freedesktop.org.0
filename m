Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B859BCFBF61
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 05:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBD5410E011;
	Wed,  7 Jan 2026 04:30:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DQ7NV1lI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9891610E011;
 Wed,  7 Jan 2026 04:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767760235; x=1799296235;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=w9VOIs0LI8KW50/+9FB4Urn83mp4iuTvGqzZAxXmE+c=;
 b=DQ7NV1lIaZc/2Fyi9xmaaqFLX1Do99eYMlA0ZiJ3aqLISXnpRC77A+HV
 CJld87ABRI10zwRSEF/7RkbgEUdfn2JIONiMabqjMGp8YYYlb3LMca7QD
 Y6oty/fUmw5v8NggO3axcFoCIovMJM8SnQB88961rGiudUXYcw+VIT7+P
 5EZVUtLwDAdOID37p2Y5ESWzWt2E7IMb4p6g4DsCsi7xVGxBZCywcWo0w
 hBySkywTMY2x4vhF1loPF1agML7lrIQfqy5T9IclBNoZzjGgXRBZqibRs
 RtQW+42MjwauREFza8GcR+acpaU7VNWozcjgT7qlBg2jIpJGhvhidAvYM g==;
X-CSE-ConnectionGUID: cAM/1POQQ0imOJ3NfLCLng==
X-CSE-MsgGUID: JW28RyQFQN2m6SDNCqc3og==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="71701786"
X-IronPort-AV: E=Sophos;i="6.21,207,1763452800"; d="scan'208";a="71701786"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 20:30:35 -0800
X-CSE-ConnectionGUID: fTCq681CTUum4Qlc7uJeng==
X-CSE-MsgGUID: 1yCJO7WtRUuJJRjXqK1ObA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,207,1763452800"; d="scan'208";a="207881628"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 20:30:35 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 20:30:34 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 6 Jan 2026 20:30:34 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 20:30:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kE3/CSKlwoLe+dQGXB64gx72ldDfp4n+zgkW74aKFPSUvprt13NzB2lCJinhCRAxFUX6r5qF2kocu4AM1x8OPEOmro9Qi41fK2xnLrZooBk8PAPNH3I6nVp71NHrQjne0+OR1Ovhste0T7X+d2wX51LPE1fGrnMTzw3rlFgJ4ub2eRv5bzNrV2BhJoAlcPQ/LHDqGohNRiXv8pAaKh37EohgxwRAE2o/wy7Jz6MZgrL5J6w5X4myUXMfjp2T6CDMybOkNAw3iqSOwafkt5DoKUQD02XoXOeHl/+blODAxcKJdMRzeNcJ7PV4CJBHdOlvnLwLD+uNB3O5RuovV0ZFaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2zbt5IS3VRcgWSKBudJ0buzuT9HG0lvbkWQmclI00y8=;
 b=WXnLsDuhr+qRJGtM5NmH/AD4GtL61gVJDcYNYqTSr1GrwacS9kAtJIYl/djy74Vo69Q2KGSb5lBZKUFJ37Q6YN3wFAfHo5E2CF95Nlh760OXzg60jGzayRVjhDIW/FyHBamnCCH2CPxzdwwyu7ygBj9Ck+VLYZLiiMqENwB9LaMnjEzXbcpLPHyRlNt2V6vUea2wAHD2kygejFPTpoXUrzrKWZiAqHy0KIWs2aPoSx2tWnKiXwgCv+0dzU27HTBrcGfCte3WADj5UiiH03K6MQavi2vo6DDm/y4LfhJVO9n7/TirCbcy5nGW7EvdTJT4GZl0HG4dA2lTLYAITh4+hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7877.namprd11.prod.outlook.com (2603:10b6:8:f4::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1; Wed, 7 Jan 2026 04:30:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9478.004; Wed, 7 Jan 2026
 04:30:27 +0000
Message-ID: <fafbb453-8c9b-44d6-b502-a94641410ec9@intel.com>
Date: Wed, 7 Jan 2026 10:00:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] drm/i915/display: Fix the SPDX license identifier for
 C headers
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260105113544.574323-1-ankit.k.nautiyal@intel.com>
 <29065e980dbc049422c07f9466c241a0505dfb29@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <29065e980dbc049422c07f9466c241a0505dfb29@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0014.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7877:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ab6b5be-5265-4f05-11e9-08de4da57b6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MXVhaUp6SU1aUjNFdFlQWG1Uai8yQVljTnlwdHNSYUJmS1N3QitpQ1JZdE1z?=
 =?utf-8?B?RDBrV0cvZ0xqTGRIM2pPcnVwUTk3WnVnNzdMOUFZZE03RXVRSGhYN1dMcERr?=
 =?utf-8?B?dWtSdzRqQVhKVVRIZHVyU3ZCZ1NlV21xVE8zcXdZd3A5dUgvRUZMTHpBRTBo?=
 =?utf-8?B?VzRDcjNDTHJlZFovU1A3OEloaXlLbTZNQmFqakc1a3kxSDRUTDc3K3c2empO?=
 =?utf-8?B?anMxT25SNjVrd09TaDhDZHZiaG1sbGd2WHJWZ0ZIaEV1ckFtdXRRYi9EWEtt?=
 =?utf-8?B?SkgwblFpWDFMMXZ6cWpGczZSTHM4by9wejlib0dpdEs2MnVNZ1FRbDE5NGVX?=
 =?utf-8?B?djgzcDBEQjd4Rk5DazhYZ1d4b3FyNEkxVTFzY2FSYTcyNGVZblQ4SHNtSzhO?=
 =?utf-8?B?aGRQSm9NQlpWcEc5UWZCMy9qU3lZbVdtRG9kNFJyZlplTEhYamtFVVl0UVkr?=
 =?utf-8?B?ck1lSlkvSkR5aUxuTTdDVmIwbUxLR01TZ0J2cVo3bkd4c2lIeFFKN0xZN0FU?=
 =?utf-8?B?eWJSRVFVY3I1T0cvY245c1pSUzlHVE5QOGcyRG9uejlzbDlVUkI5akhSNFpi?=
 =?utf-8?B?ZWcwcUR0SmtzWUFGbE9DSVB1dkRaa1FKQWdNR092TWFXK2xuWXM3TTBXcW0z?=
 =?utf-8?B?NmpsZVZwMlN1aGloUU5FQUFaS3I5N0FXSzRZZi9rT2JqMHd1c0FMWHRDVVVI?=
 =?utf-8?B?dXltbERyZjMwNjlHZlYyaHdNZVlFWUs2cTdPVzZtSkZuN1RqQTNBdi84cHdi?=
 =?utf-8?B?aVU1VmsxUHM5eXY4bmR1YUh5SllpQ0tEazg1N3YzclZORHdWMGhJSUlYbzJF?=
 =?utf-8?B?VFFrdnpyMjVlV01FcFdVZHRrOTdGeHNjTDdKclR3RTBQVVE0cE9uazRhMThq?=
 =?utf-8?B?SlZ1WkpCYWp2eTBQTE5NNklObHFYN205dURBbnlDL0lVTWszbDFkbUFzQ1hK?=
 =?utf-8?B?VEpBcWU3R1NKbk9ibnkrVzhFamswakRXbDVLZ2dRMkFjc0hMWXFmekRQbndL?=
 =?utf-8?B?bTdEWmxIcktkMzlvL2tLUG9MQTJIbHhLL1VGc2pyUXRZMHQzdEVoU3VBY210?=
 =?utf-8?B?VmY1bTNCeWhJaVFpRzIwZU0xdi8vTnBXQ1RCR1dxenVkQW5wZU5NMGluQWtP?=
 =?utf-8?B?cEtlR2hVYkRKL0svOEdEQ0xMTXU4MkNIa1BiemVxa0Z3WEdmaktSa0djblNy?=
 =?utf-8?B?ci9YRy9Db3FzMW1BVXNGSjN0NzFPUkQwWGd0ODFXNGxnTk9tTXlwemFDWi9h?=
 =?utf-8?B?NjNzQVN6eFVybGgrbUdJRWRXZmdhWjBuTmdiSGR5cDdOc1U1QnBzekg4ODh0?=
 =?utf-8?B?L00rQWpHVDVveTNlMXZYQ0kvYWZ5Tzh4VERXN1ZxelpzN3orWWcxS0Q5d3dN?=
 =?utf-8?B?VmZPcys1VzJscEhyR1M2Mjd5YW1GeUc3ajhoTzJOWlhvcDJPV0hHV3hJNU9Y?=
 =?utf-8?B?QXIzYnFqdkRuMlgyYzJEUlF6WDkza1YxWmpUampiaVdmc1A1OXVOS21hNE5X?=
 =?utf-8?B?K255em02SndrSHQ2aWwyTHdUck1mR0ZhZWFCVlBjbS9wdzhYWHNpZWtOZ0lC?=
 =?utf-8?B?Qmx1a2Z4VFRRKzZOM0wxdnpZT29RMS9qenA2V2xXVHlPUjNicE0zYjRLV0Q1?=
 =?utf-8?B?OCt1djkxRkJEdDcxRnFtYVdMK3NRQVc4THpRSVROVFFVSnJCN0lxYi9jSmpI?=
 =?utf-8?B?am9YUjJPZU9VZlEzWXVvc2gvelBuRlNmRXJLZ1RXcTBsTWs3YkJKYXRGajNj?=
 =?utf-8?B?N1I5YVd1TGxEdTdodzdLNy9KbUM4VFVqeldsQWpYOEZpMHZGYTl1OUJvVGZq?=
 =?utf-8?B?bm93N25QKzVLVTlzMnJVb0xWaDNDb012Y1lOMHBacEtaU1RqZm5EN0MrczUr?=
 =?utf-8?B?UE1rd3BDb3NITzBMV1A4dXFWODVFQlVaUW5NRDZjNDNOWFRGdVp6aGVqdFZq?=
 =?utf-8?B?T01SYmsraDgrclZCUDRudWh1ak1PWjdoc0RoU0FJNnltVE5QcWFwQzB3d2Nh?=
 =?utf-8?B?TktkOEpaUTV3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEViNVE1Qzk0M0J6U2RwUDBDUjgrVTV5WnRUcGd1cWpjeDUrUGFXclIzaXgv?=
 =?utf-8?B?VXpKTE1wbjVVZ1dJTXNrZG9uTDdDZTJ4VmVtN1VpaUszYW1hUS9VVWdraFZV?=
 =?utf-8?B?WnRmbUhuOXZlWXZQMC9EQUZjWUJjK01YUXdmV3hKRzRQZFpyd1JObXNVM0pJ?=
 =?utf-8?B?bU96emJXRVg0NmpwMFZyNlkra29hTHJ0WStNZXZ1N0hLQjQyZWF0dHJtSFZC?=
 =?utf-8?B?UDJiaE50YmNTMzVBNHZiRWhDNUM0bU1zN2YyTVlzRUQzNmFycUgzWVAzd0Ro?=
 =?utf-8?B?VmovYXZrMUUwc0hlMlo4RTZ1aVYwN2VzT3dmRmtYR2YyZFovdkFwdW8vYWQv?=
 =?utf-8?B?bW9Gcnc5Wk44bmJjdUR3NUw2T0JJeXRvdGZTei8vWC9mQzhCL3JpZXFGZTBQ?=
 =?utf-8?B?WXM1cFdDWFkzR0oyVnRJQmp4QzR5SFFRODl5L0NTNVI3MUh2cUk5cEJTbnFI?=
 =?utf-8?B?c2Z5ZmRjbGdOU2VZWDFtOGJkQTNrcW5Zam5aVmYyQ2RhbGdjTnEwNWN5cVl6?=
 =?utf-8?B?TjhPMHhUWG9EWGZlUDlMUzFNYWFXeVhmeGdGZDFha2F4dFpWWFRET2V2K3lI?=
 =?utf-8?B?MEJubUZINlZiOWVMMGJEZGFtdFVidTJhNEJacHgwUm9pZlVJQ3l3K1pZMGlY?=
 =?utf-8?B?SHJYYWprenFLdE1uTGNUR3lUaGdFVXZ6bHRjeFhwQ2RYVWN3N0Q5QWdGVFUy?=
 =?utf-8?B?RmRwUm45N0RCYVJoWTBkdzR6TXVCbHBPUlJIK0I2YmJVU2lISHdvWFh2NkZ4?=
 =?utf-8?B?aktQenVjMGdud1lRQ3JZVmd0VVVGSThXaE0wWmNWRjR6MmkyTHc2TWpyRkRF?=
 =?utf-8?B?LzVJS3ExbzZNWER4bWdZM0pTODJhOExtTVVXNmlDcTdUbXZDVGtoZ3phSE0x?=
 =?utf-8?B?ZWFnL0RFTU9uOCs5cTlsVEg0YWFlV3ZLMy9IOTlsZENocEtUTHRMQ2c2MElq?=
 =?utf-8?B?OGMvSEhsd3I3SmxTam4vOVVGOFNyT3ZhVWRKU3RzcUp4ckFsemQ1TXpXNlJj?=
 =?utf-8?B?NFg1MUVZaUpWUTYzcXRYZ3JsSkhFZUwzcVJpMXpJandURi9keFY4djluV2RF?=
 =?utf-8?B?bG9jWWRZWlBUMlJwNDFTVng0aUtRNkUySU5BbjEyeVJxTW1EWk9zTDUrMG9q?=
 =?utf-8?B?UVRCc2JhT25NV0xLY2hyZGJvMVdzTzMvcDNPaFQzRnRvck1uYWlRWlBEVEd2?=
 =?utf-8?B?MURPTHVKcCtMdEl6aHJrM1Y4b3VkUVg0SjhxYzN1aUhVRHJJQ2dPZituZ1pB?=
 =?utf-8?B?Q2hvUURqOHY4WmFIem9nUERYci8xSzM3WTRxZ2xlL0UyL2F2RjhZSERTd1VK?=
 =?utf-8?B?UWpoTlZucW9wbTNRYjN2U3pDZTY5YzZPUktNYW9YQkhONmVWbDNBanI3L3RZ?=
 =?utf-8?B?VlZFejdObnk5QVNpSkx3bGVxM0VkUDhXVDJrMnVtNEMzYm5rQ0x4N0RLYXRI?=
 =?utf-8?B?cmtDMDhUZElDWHRhU3FFTmdzNndKNENqZ3JSblcxc1BEaEtoL0h4bWVCZmVO?=
 =?utf-8?B?R1NFYXh4MTZFbVdnRkVjTjNCS054dGx2UmlaTE9CNVJicnZMVmFEQ0RheC9Z?=
 =?utf-8?B?MDJPQW5QNEV3djJMRHpCcnpCQ1JGM0E1MUxIRFJ5bVZZdXkzU3VjcWNtbVpM?=
 =?utf-8?B?UWZBYU5TYjhZTW1UeW9wTzJkc1VMVVY1NWRXSzFpTFFySys1aGNpOVgvV2pF?=
 =?utf-8?B?d3FMakNvTVpMNWt6ZStoQjQ1ODNSRFRmaFBvMk5LSTFacVRiK1J2dW1XdWV4?=
 =?utf-8?B?NUJIakIva1dWT21sWCtYdGgzUXVzK09idGRGa2N1SUpDYXM3cktlK2Z2Q2hE?=
 =?utf-8?B?VUtkMWFyWnNYeklwdDFvNm9jUlY0TmQ5L3p3a3hLUVFSTW1NUENLUHpJRTRT?=
 =?utf-8?B?aDFzbnB3clhhV3Q2bStkN2lyeGM1SkFkWktDUWRaVk5DZEExODRUWTRsZWpt?=
 =?utf-8?B?OFQ0S0x3Z1ZBQmd2dVBZSWdrV2tpNnkxOXJLWENJRXJoNVc2N0g5cGFQT3NN?=
 =?utf-8?B?eU1udmo4dVJ2YmZ5UFdUdWNTVERVTjVOaStYOE1WNjVXMDhNUE13K2o2SGNk?=
 =?utf-8?B?TFhMY3NQNm8xT1ByMWt4OFcxRjdXWVJuci8xVC9ONk1DSHZISlpJZVNTbm1Z?=
 =?utf-8?B?MEtBdmdXOHArS1AzK0pWMGt2clJsZGVpV2ozbXAyS1ZJNGpMeEcwME5jcjFB?=
 =?utf-8?B?RmVZMzFNYzhQVTZVMVRsK2dOaGVLWTlpYkY2b3BRTDEweUFaRFVCTzlFN2Rl?=
 =?utf-8?B?WjMvbmNPUTh5S3pBdU9vd2ErMkV6NXVMdHM4RXQrNTF4RjBEVm5CVXptbXVZ?=
 =?utf-8?B?QXMrUkI4Q1lkU0t6WlhZRlNVYmU0a3VzM3R3Yk9MQ2RUbFpITUxBTjNYZ1E4?=
 =?utf-8?Q?8Sz9B0bC+7nnNTOQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ab6b5be-5265-4f05-11e9-08de4da57b6c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 04:30:27.2887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y62OkmBh2t378pMhjQUkdkehfDjYt7tSKS9FSafCBGWxAu9GJH1H0h9/0E3/SoVEJi01fcVqgiKKFe0DSHtIEa12VX7WhwpIFfp6Q5WuwKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7877
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


On 1/5/2026 5:48 PM, Jani Nikula wrote:
> On Mon, 05 Jan 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> As per the Linux kernel licensing rules [1], the SPDX license identifier
>> comment style for a C header file should be:
>> /* SPDX-License-Identifier: <SPDX License Expression> */
> With the extra blank line removed in patch 8, the series is
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>

Thanks for the reviews.

I have fixed patch#8 as suggested, and pushed the patches to drm-intel-next.


Regards,

Ankit

>> This series fixes the SPDX identifier comments in the header files under
>> drm/i915/display to align with these rules.
>>
>> Note : There are some older files that do not have the SPDX license
>> identifiers at all. Perhaps those can be addressed separately in a future
>> cleanup series.
>>
>> [1] https://www.kernel.org/doc/html/latest/process/license-rules.html
>>
>> Ankit Nautiyal (9):
>>    drm/i915/intel_alpm: Fix the SPDX identifier comment
>>    drm/i915/intel_cx0_phy: Fix the SPDX identifier comment
>>    drm/i915/intel_cx0_phy_regs: Fix the SPDX identifier comment
>>    drm/i915/intel_display_params: Fix the SPDX identifier comment
>>    drm/i915/intel_dsb: Fix the SPDX identifier comment
>>    drm/i915/intel_dsb_buffer: Fix the SPDX identifier comment
>>    drm/i915/intel_gvt_api: Fix the SPDX identifier comment
>>    drm/i915/intel_lt_phy: Fix the SPDX identifier comment
>>    drm/i915/lt_phy_regs: Fix the SPDX identifier comment
>>
>>   drivers/gpu/drm/i915/display/intel_alpm.h           | 4 ++--
>>   drivers/gpu/drm/i915/display/intel_cx0_phy.h        | 2 +-
>>   drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h   | 4 ++--
>>   drivers/gpu/drm/i915/display/intel_display_params.h | 2 +-
>>   drivers/gpu/drm/i915/display/intel_dsb.h            | 4 ++--
>>   drivers/gpu/drm/i915/display/intel_dsb_buffer.h     | 4 ++--
>>   drivers/gpu/drm/i915/display/intel_gvt_api.h        | 4 ++--
>>   drivers/gpu/drm/i915/display/intel_lt_phy.h         | 3 ++-
>>   drivers/gpu/drm/i915/display/intel_lt_phy_regs.h    | 4 ++--
>>   9 files changed, 16 insertions(+), 15 deletions(-)
