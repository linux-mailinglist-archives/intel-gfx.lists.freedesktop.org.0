Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F06A29F8E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 05:13:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77FE010E048;
	Thu,  6 Feb 2025 04:13:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQq5b1wD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23ACD10E048;
 Thu,  6 Feb 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738815234; x=1770351234;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fhf0Wv8Y/a2wBa9mzHs9xKot+c4Kn9pMFn9it+yeXF8=;
 b=WQq5b1wDavY7cMOSJSHePRM7nOveY4Zsn5kBqdi3cQaQJnMzZ1jWTSrN
 YDhVMT15kRtiCgiRqzo9C8Xy3QJi8evJpa1nRMpO9MSt+36I7jVDFSWWo
 1eNGiQdeN5D34dQ71MiWIGVgkO9Pbg07xwiE6Ux6BrYbowh+/TUqEs6Fj
 ptDDMBvno1vOx9leT7OtEXORwROWapVpbbG+umpLq45WlwQyyaVuhFcfg
 HY03S+LAVtAJ6xxj9yVjdzW6y7CWYqO9gS+qnHBVC3ufjw7GhFTVlm/jM
 aMIbTc2Sl+Jraav/0ENJ8gd1eWw/5QJ6JzLCKqoX98beyRgjExzizk9pG g==;
X-CSE-ConnectionGUID: 12CrebPFRiCL0yCKfULcQA==
X-CSE-MsgGUID: UyyrfYZvSGW7FeYbUUGVfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39537702"
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="39537702"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 20:13:54 -0800
X-CSE-ConnectionGUID: VaYCr28cSZqKHgFwCsAVPg==
X-CSE-MsgGUID: ld++j2ADTMi+mI0NN3lUWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="116048677"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 20:13:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 20:13:52 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 20:13:52 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 20:13:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hp+DlzyXssz4v+HfkTtrZ1cbMF+qPyU17iUd/5JlzutJXZUKAzYvVkTyg2bDd1ut5yna9nNobupzoz/1u43H31BlhEJXQ+3A5GrzBNX6VcJFZ8xDEMbnbh1mdchW2Dr3z/rQiwO3nxR+CTzutuN+hofuWVUZG9gUkQQ4OuDURYDp0f6oy1k0TrI397bM2hLgnbukptLcsEDgSCrgEDWNRDsmlVEEK8qLM4XBfOHnTJ+hUTqjFJDvZfK3OMgoQrUCXPR28Pf/IlCKzvPAJjevG+48QSY9zd7y+tUkvCwP/iw6+eOW2QJn+UUYBSuJfvg2qUy9SWF+B/c4iIMk0brExw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2w8S7lSkB/NgJsim8GKloDhXKnrnuajEKBJfYYQ2/Oc=;
 b=apPSKi556fwcxWtNTcwvAxVrbF8RcTvlhZIfXcFVZFTC6GELL1d+RfjWqiH+ceNVtLkcPzSTocG2H++j6gFl4uiX+5ljvvznWIyUr1uKCp8hjExf6HCQHvPeX0R+Ys1mPpu+FlSh20awOjZ1k8apRiigl9qAcFs/udB39MMsd0fxDlLra9HXCqAhZoLc/KHf+qKSDvlqhBMx6yX497MwM06PM1yLE9p9dUncQwzIKmwK28AYtLoJUVZFNv518a7d6cKhMNV5L0UlPfu+YUzD7xfjAYKsJoYKWw5zo3Cll0dYFXM+XUwwqDoxdmxm75utK6QyP8TpQvtEtpwakKgTNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV3PR11MB8507.namprd11.prod.outlook.com (2603:10b6:408:1b0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.11; Thu, 6 Feb
 2025 04:13:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.010; Thu, 6 Feb 2025
 04:13:50 +0000
Message-ID: <c82bfe3a-393d-4e40-8c3c-b52bab43f502@intel.com>
Date: Thu, 6 Feb 2025 09:43:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] drm/i915/display: Skip state checker for AS SDP
 infoframe enable
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
CC: <jouni.hogander@intel.com>
References: <20250204130638.2800372-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250204130638.2800372-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250204130638.2800372-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV3PR11MB8507:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a85debf-01a7-4e17-f693-08dd4664a8af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VG82bE5ZbnlRTnd1WmJUMHBWMmJpWWdNd1UwMHljU2lSK3FCVFRiZE92b242?=
 =?utf-8?B?cDlVMkVvWWsxS3J4dTRVeUU4NCtDcEJKdFFSNW1oanF5N0l4aWVHaFNkeHox?=
 =?utf-8?B?a2hiZHdZd0JBNW90TFRjbHQ3aEtpRlVNMS9VcStzcDdwdlVrd3dNd3lSQ0ZE?=
 =?utf-8?B?TGMybmZHZzc2clVjS054VGhLeTFDWk1mWjJLUm43aHgzU21kMEhhZDNIKzBw?=
 =?utf-8?B?dnJTekJhcHZ0QmhsekJWeDRYMHV4UUIxcE5QNENMMVN0YVdTTmNyL25ieS9n?=
 =?utf-8?B?VEhrOGM3a3JGbVhydzlNWmVIdkZSbzQ4YlpXY3cydlRiR0lUWkIxZE45azE0?=
 =?utf-8?B?UHoyeVdGT1JCelVuS3pKZFFaTVNwRWl2N1BLYlBhV3NpNXViak5XTUEwWHZw?=
 =?utf-8?B?aVNST1E5dWNUUXVKblZBMDRvNmFjRXozMXZVdGZtVWloOHVCay9BVHRMT1lh?=
 =?utf-8?B?cEJHcXF5eVgxUWFVcE9scDZUK3QyZTYrZm1ZVjBvNUJNZU01NmE2MTlpTGhi?=
 =?utf-8?B?TFQxek5sOVdZUVhTci9FUUxFS1hOZld1NW5vZVd1YXFmNy8xUFhRNmZGMVM3?=
 =?utf-8?B?bmFWelRBMmdIYnIwdnJJcW1ZSGRkaDdHNjJRNElPbk83blVBVDlONE5rcHBW?=
 =?utf-8?B?OGh6L2NhSkFwK1d3eW1BeVRFcHRWYkJsdEdnL0FzdFowdmdzbER1NzRqV2Ny?=
 =?utf-8?B?NFJZM2YzeWc4SGhyRHJiSDc3bXVoM2dxOExjSm1vQy9Xb1VBVjVuTnFLMEFp?=
 =?utf-8?B?b09RZkVkUkR5MFphRE0yS0lQalBTNS9wa0w2V1dSd2U3SzFuelZXVWNVa2dl?=
 =?utf-8?B?UVNwdHNkbVAvd2ZiallCTFpFQ0tOWTZTbDFQeHdiWmtQUWdNdDA5K1RLQVJ5?=
 =?utf-8?B?WHRoOXc3enZHUHpqNmdhUGlZNEsyLzJDdE1rUzRkT2dpQzlOWFFpVHQvb0cz?=
 =?utf-8?B?a1c5cjRyZFllMWFYZjltRmRIRG5aRGZZcGEvakJuQkp3ajA5REN5c3J5aHJB?=
 =?utf-8?B?QnA3YktUbHpyZDROb0NkcUQxUnM3aktuM0hLN09iT1l1UEZNUkFtaHArZXhw?=
 =?utf-8?B?RjB6bS8zT0VhSGs5UGNWL282U2dMM0NnbW5GLzNFMndaRnNxbUlydEU5Ti96?=
 =?utf-8?B?amVQZmRBd3pMWmJBS3R3TXlmT0NEWEhNc08vM0ZIQytoYm5yemordmJIeW9l?=
 =?utf-8?B?V05XUFQwTGJIU2d2bWxJaDRNcWtOYnpxVlUrL2djOWlPbmlDd3JOY1ZCbEo5?=
 =?utf-8?B?TWpiYWgyR3B3TlRBUEZGK2RrWEljdi9PWk5BbVV0QlhkR1YxVEQxVEFIOXpT?=
 =?utf-8?B?eStyWnJvajdsNkJCdkRYdEIzLzEzbnE2WXhhY1REaE53blcwSFJtNk9TVkpE?=
 =?utf-8?B?dWVJVUpKS3R3NWFaZWRTa3BXZ0hHck9HaWVXTG12L1FBWm1FUFloWm5zZVpz?=
 =?utf-8?B?NlJ4VkV1Yit0VWwvNERCTEoybXBKaUtmQ0hRMFExRmw0OGR1a29xbG1IWE9I?=
 =?utf-8?B?WGZubjM2ajk1VVg0dTdoYXNvVi9Jc0F2cHA1czZ3NXVjR2pEcER3ajBGUG9W?=
 =?utf-8?B?U1g0TGIrNjMyVGFXUi9FcjVyZ1ZlTGxpNU12bTMvS0pScGVGQ09ZMW9wdW1v?=
 =?utf-8?B?aTI2WGUyL1lITHRnQ3lkVDk3WmZsbm0wQ1ZTT0JVUU83eCtsb1pFeXpsSDNo?=
 =?utf-8?B?WDZpSlczM2dyaElrOUkwZmpZUnBGaUM2NUpzUndnRjRYbU50a2kzWmY2N0U3?=
 =?utf-8?B?UFBIdnBOV2diQWY4Wk41WDZsYjY1V1VFbVpQZU9sWE95blo0UTl0L3hHVlU3?=
 =?utf-8?B?YklnL0JmYVEzMU9pQWd2SW1pV3NqV2QvOHFLYXRFMXBnWnVRektMbVZBQW16?=
 =?utf-8?Q?fU7TIwWZWwrGI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkhaV1NuQ3RzTWYweis0UGpVQmx0Z0J0dkhQNElwVUpEWDh2blJZd0lQSmhv?=
 =?utf-8?B?VnZPMU1wUU12eTM3UFNGSWlRMWh6amhydE5YWVVxZytiYy9sV01LbGRMU2ht?=
 =?utf-8?B?NUxJVzRFMzVCcVVsZnRpc1lhZkhTQUczcnIrc3BFUDhtMnIvc2FXVUp6OURS?=
 =?utf-8?B?UkpsVWsxNmtwLzVoZW1nMHdtdTNaSS9yeW5Dam02UDFNY0xBamw3ajIzdjFk?=
 =?utf-8?B?U1lybER5Qy9jN01NTnhDMEVMT2VUUE4wczMxcnYvNjVGQVBaSDl5MmJ3UmhW?=
 =?utf-8?B?VmE0QXl0ZE9DN3NFbGRZZjJqT0lEVjFOUWkxQnB6WU8yZXdFdzdXdkMxZ2p2?=
 =?utf-8?B?T2R3eWRkM3NCVDJObzJoRHRBa3hzR1c5cUhWRllyTms4Z24xaG9hckVDSC9x?=
 =?utf-8?B?TnE3YkI4dDBLaThYS3VlSkVGeC9WNWVLRkJ0UnNmbm5sWDlscldOTnhOK2I5?=
 =?utf-8?B?RnNnaXlyVlNueFc1cVRLRzl3SUJydnVmNHcvR1c5SHhKdTBRb2p1aWlGZU1F?=
 =?utf-8?B?Q2V6MEw1dm03dFZTUnVXc1FPOFQzZkF4VlUwdHVzcnFHY1JReXo3WVFKbzlH?=
 =?utf-8?B?VzhCQlVmc3YveFBSMzRJZUZDL0tJc2ZKWm8zVTNmTnFWLzBlaEpUZDlESEZy?=
 =?utf-8?B?YTBwNjcyNXlxcS9vbThtVzdJVm9vWEpqRlhwZVNwL3hwcEpNRTNrYnhUajdS?=
 =?utf-8?B?ZGk2NUZ2My9HTU1HSFMrNDVBT25lMnM4aG1nVWNaak5WWWxXci85bWg2eW9y?=
 =?utf-8?B?dlFaeWV1NVhQUWJSaXFkekZRckNYZTE4V3NmNUhDSmI4RzJpNWcxN3FaVkJM?=
 =?utf-8?B?WGhjbCt3T2I3L1FkSWI0VW1obFk1YnJjbEJGeStZUVNUUkhwejkzL2ZZMnFD?=
 =?utf-8?B?MEI5K1ZrS3d0dnE1bjd2SmlLSG9mU3pJT1prRFFFemY1b20rWjVNc1Exa1Ay?=
 =?utf-8?B?cExRQTdnbDIyRHdmTUpOQ3NCamVJd1NoMzZDcys2NFlBK3JoSnY4MmdsNG5t?=
 =?utf-8?B?cmQwQmF0aUxrZit3dVRjTDl1UkZoLzY5UDJBN0FmKzRSNXUySEhLSjd6SU00?=
 =?utf-8?B?ZXpzLzNJQTF4ZFU0emN4MytQQmVyS0hJMVBQaUdOWUZHLzRJNmc5NVYraE85?=
 =?utf-8?B?eEFGZzZlcmlDd2l5b2ExVC8xRloyNW12aTBpNENDQ1FJaVgyNW1uRVZwUUVM?=
 =?utf-8?B?MjdDZUR2aS9GOVJnbnJIelhiUmxnalpwc2hHWGxyRmZ1bDFBU2lYY2U5Unpu?=
 =?utf-8?B?bklKcFBiVXVKTFJGQmxKR3lwOW1SbVNTRjJ1aW1kZFNLYVk1Z1Y1bWc0RFJB?=
 =?utf-8?B?R04yNmJHbTYzNWdrUmhCZnljbDVEZVhKcDlrQk5JNEY3T1IxNUlKbEZ2Njdj?=
 =?utf-8?B?ajBOdzArRmM1aTFiTjcxKzh0eVM1b2N6TlBLSVdaWjlMQXhWMTVXYXZydHRX?=
 =?utf-8?B?eGJ5RGNoaHVJSU8yeE5laHk5STkwbktKOUYyczFFT3A3V3Z1YmdiUGhQRjc1?=
 =?utf-8?B?YkVoOWYrczFpTVA2aXppeXQwUE13N3hXT3NvL2hidEVmM0lCd0ZTRHZwZEg4?=
 =?utf-8?B?S1BudWlLRFJDTjI4RmVwUTU4V3ozY2VwcFFCVklFRnNHNW1kSEUwN0xORHQr?=
 =?utf-8?B?TVRmRlJxKzdkRXBGZ01qc1hCYnExV25Mc1Z4TTV5R0FFSkhFZDhIZHVzMS9M?=
 =?utf-8?B?c2Z2bGQyUGhMSzZZQ0ZDMTNMZzhaU1BHd0VwektTRG1IbzE5Y1hranJoVHFH?=
 =?utf-8?B?VzYwOFZRblFJYkowbDRNYk5SSGhKQmZuRTVHZm92SDFuZUU4T2NGbXBnbEhL?=
 =?utf-8?B?ZDVLT3hYaUdTRm5sMEZSbndxSGhjYitGTkMzRHAzMDUrRlhEV2Y2R2FQT3Uv?=
 =?utf-8?B?ODNRcGlHa2YvUERTYnR3a2NWNzAzbGlNU3ArWjMwOTNvQ2hLM3Y0cjZVMWhj?=
 =?utf-8?B?a1l0RVpwTFdWNXNPa1dkNVJIOS9PNFFLRkhISjU0cnkvSnd1K0VBczhaNG5W?=
 =?utf-8?B?SGVrOFNTQTkzWTZlTXpNVG1hV3FsOG55TEpFOXErMjU3VDYxK3BRNlk0RGN3?=
 =?utf-8?B?UlFGVnJBdHdSKzVPcFRjK0ltYmpRVHB3ejZEcjVwdTRlMSt3am10SUFjMjJG?=
 =?utf-8?B?ZE5FRmpBNDEzeFhwWjJtTDhaNTYya0hEc0IyK01ka1lXSnRYZHdNNkdObUdk?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a85debf-01a7-4e17-f693-08dd4664a8af
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 04:13:50.0969 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SDXV+5wxOsUfvh5OWeZwNFPFagQsI4w8SHU4OtLPEpKmzsXByb7SUqTgaCk+LWXRr7cQuQBh0rd+b+6Hc9o5Q3Jazx3GY6i5YVrMaoWCXSA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8507
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


On 2/4/2025 6:36 PM, Mitul Golani wrote:
> Avoid full modeset by skipping infoframe.enable check when toggling
> AS SDP while enabling VRR, preventing full modeset while pipe
> config changes.
>
> --v2:
> - Add check for exclude_infoframe. (Ankit)
> - Update commit message. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a6383ddde871..b35fb6d37640 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5388,6 +5388,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   	struct drm_i915_private *dev_priv = to_i915(current_config->uapi.crtc->dev);
>   	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>   	struct drm_printer p;
> +	u32 exclude_infoframes = 0;
>   	bool ret = true;
>   
>   	if (fastset)
> @@ -5743,8 +5744,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   	PIPE_CONF_CHECK_I(min_voltage_level);
>   
>   	if (current_config->has_psr || pipe_config->has_psr)
> -		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
> -					    ~intel_hdmi_infoframe_enable(DP_SDP_VSC));
> +		exclude_infoframes |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
> +
> +	if (current_config->vrr.enable || pipe_config->vrr.enable)
> +		exclude_infoframes |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> +
> +	if (exclude_infoframes)
> +		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable, ~exclude_infoframes);
>   	else
>   		PIPE_CONF_CHECK_X(infoframes.enable);

This can simply be:

PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable, ~exclude_infoframes);

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Regards,
Ankit

>   
