Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F007B91AD9D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 19:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7145410EAE8;
	Thu, 27 Jun 2024 17:12:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kfQ36EDC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AA5710EB05;
 Thu, 27 Jun 2024 17:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719508341; x=1751044341;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x775dgHrVPkEG4hGz3Joy8lAfzOxKbMtuWE3gpKgDTc=;
 b=kfQ36EDC3zAypmhEAZYoprXAE746xsJOpc/2gg/J1Q9Q6XxzEzUPLn1+
 wGRzFLU0xrjMvcU1oaMiF1teVMkqdX9+5Z08CsjJPN8so+thGmG/xaXzN
 N6DkeuNifiLWyqhxz5vaQ9l5idsCXFROHJpOelDKx2oz3flNHlTr+3ema
 Nkg/eMxJqh6YnqEu3mah/nkXaWL9ecIlUUoKUj+p1AsLT3aiZupl2S/Wr
 TL/MdIxoA5n2UK8xp7C8XiVXpuPdUU6WX67rUmZfb0ExR2GS1Ub5iyPIk
 LGj5Z6Bz7hWJnEpYlLFnZvhqLI+TZg4GAWVroiyZ7tGjq473BuBHwyb2K A==;
X-CSE-ConnectionGUID: d3SJsAuyRqqrNdyRavvo0w==
X-CSE-MsgGUID: jkd1zXPASFya2CNYiNyMFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="20477956"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="20477956"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 10:12:20 -0700
X-CSE-ConnectionGUID: 9elK+vysQcGLaSJAGvoU6g==
X-CSE-MsgGUID: Oldqm5PcRdalaQvvv7I7lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="44441321"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 10:12:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 10:12:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 10:12:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 10:12:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iB8PHWJxdEtkMumWnq5kgmtXW+TRAeOHWq2iFPoiyApgFO/LPBgS32F/OthTphPPvgbvq+nj35RLhOc7iBPw66RFqQz5vNqNhzs2HkyMxIF/V1gR5jvuuvK2evECHvw9Faps/Tyl4lu8+Dx0OC+1KelhRIX/rWvY7Ggk2nnfBlR+hUfpR1hyoLPqILD5pPLxweCv8AkmVj6WahhG8BmBTzpvQJiwpOyyNOiOrbluQWSUkjz6zxbAjVYaxKpWfwv5U+cYepfQVGsYOTk8gzLb6OtA+/22xtVuCfYNPmhfEnJ87wk2WQSrK17pVodXGH/vq+t+PkZEvRv5IGOH/TOXLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=16ubReM2AY2788gi96pzJem8BjXEFYl0BVFboRKUCMs=;
 b=IctLOPO+sP/2SFrs9n9bSfNHdA9T8wPqHbTEgqHzlR0G4kiF/8nKYesuJwLO6xIScYJ9q8S3lGKDy5BhGko5SGZFAwZhA53825ankePNQYYIz+GTxwhBGF8XdZvzxRlwVF5lf8leDFzBjJVZsBpWKYA7r9mFzSLWlMR9XnQpHa+4c/kjtw1Q997JqqTOFxBmnK8EnrZv6iy995ukAgnlJ/9i4iV6+T0+mqnvAVOaocO8pbE0W/0Vr0s5BTJE2cj4yHLqmKj+sskPp9QqtChbLwecJi8W55Pw6WzYux1q4xwqaK9Gur7RYOtPcqmtrN+Ue1ZWdQu6cfY4JhT5e9xPSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Thu, 27 Jun
 2024 17:12:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7698.033; Thu, 27 Jun 2024
 17:12:16 +0000
Message-ID: <4e6682fd-faa9-4d5f-9710-12f735c925ea@intel.com>
Date: Thu, 27 Jun 2024 22:42:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm/xe: Add intel_pll_algorithm in Makefile
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <mika.kahola@intel.com>,
 <matthew.d.roper@intel.com>
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
 <20240626050056.3996349-6-ankit.k.nautiyal@intel.com>
 <87o77oc8ra.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87o77oc8ra.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0161.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::31) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7540:EE_
X-MS-Office365-Filtering-Correlation-Id: c658d17e-0cce-4f7d-d198-08dc96cc4b64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a0o1R2RzK1FGYi9wb0x2bUVDblNBY2VjVkpSL2N0SlRKQTJCZFMrY3lXNTVr?=
 =?utf-8?B?UkhsU0o2N2pPR1Z3cXJNWEgySkp3VE5iNWVWRkpweDNLbWF1elFPV0FHZGdG?=
 =?utf-8?B?ajQxZHJTTjhwdDBCcGNQSHA5VkU4aHpyMklxWFFBRzVrNi9rVG5KbXFvL1Qw?=
 =?utf-8?B?TUdURlV4a0VDN1dlNDdHRTM3YUdwUERLQjJIU2lLMzNOdGRLWUlZbUpld0Ns?=
 =?utf-8?B?YWVHL2x3TWRxT0Z6MVVHS254b0U4M2x0V1hhSEpoN1oxR2t6SU9DL3RDTVNt?=
 =?utf-8?B?OGJCOTVhNmo3VFMvR1hTVlFRVC9aa2k4bW9GeWVOSHdOOHZUeDZIVXBnTlc2?=
 =?utf-8?B?T0orSWw4Z3hQTHh0MXMyVlBUeFhEMUdQLzlmRWRQZm03SmVuMHlyaUFsWkta?=
 =?utf-8?B?RjlRUmNsLzB2ZnhZaGlHNUJjZ0RNQXJpQmpRaW8xSFROUnZaMkJubHRaYTJ2?=
 =?utf-8?B?SndSNlZyQTVqUTVqQkJqTEhFWnpJZ3h1dldaSHRpWEY0MitvMXdWOTNTamZ5?=
 =?utf-8?B?a3IwS3F1WGlXUVAzTjVKcFgrTG0weGgyYU1LUVpHbVJBRUtUeUFHQmlaNnNV?=
 =?utf-8?B?SWl2TkdqTnFMWW1GcERCa1BsY3FpSXlZWTdhQ3NwSzdHTUp2bG40Rlg1bXZB?=
 =?utf-8?B?Smd5ZE1VZ1V0dUlNWXRjOU15Ri82Nk9CaDZIYU4vMENoMVNpUjcwLzJRQnFx?=
 =?utf-8?B?bVVrVGZVYTdsKzFVV2ptQUVLMElnazdNL29lWGkxUHI1dzNkOWhXYlNzZ3Z4?=
 =?utf-8?B?citPZ0hUckFGN3d1d3Y2c3Zjb0hRaTU5eFBCWGZIYTF1clBLN3o2Wm5ncGZV?=
 =?utf-8?B?RkdERVFzTzduODhUSzJmOVUvRTlNc293VTJUbjJyVDFzT3J1eVY1cktabVM3?=
 =?utf-8?B?dHNveWdnYzBiSHVwdGNhcHZaTTdneXdrSjR5UVRRS3BHYmZaeEp0ekppWElq?=
 =?utf-8?B?azRiMDZZbC93ME5mOEFFUGxzZzNyZWRDT2hDc1J6NkJrbXNmR1lrMGowa3VQ?=
 =?utf-8?B?UmNadmVBZG5vSmZaSzNaMGZkK04wMVUrUkNpVWpQeTRhTTZUWUZCSXdWcVJZ?=
 =?utf-8?B?ckpScDdwZFdGNHV4RWxUVFpFd2JoNU9kZEcrUFQwZWIvZXJGeWprQVFmcGpw?=
 =?utf-8?B?WHMrUm5kamJtYVRqZ1dCTkVrMktrZjJSaUN2ay9lbHorYm5QU1J5aU9yTVk4?=
 =?utf-8?B?UHRjd0FIMlI3aERDSjh5OWRJWkQ1ZHpsMlltVXRyakJPc3Y3SFpUVDRXUkxp?=
 =?utf-8?B?eDBldzZZZ1BFRUE5eDFwVk5hZ2JBMm5aMUprRkVWUzc1OHVyR0dRQkkraDZu?=
 =?utf-8?B?dmtzM0xTVzFNSUZzZkFKZTd6TzJzSW91NXVmSTJvM2Q1TTFZS2REWXNwa0kx?=
 =?utf-8?B?RGR3K3dLTHh6cVNiaE4zL3BHSUMrZFM4eG0zVjlPRG4xbFRxci9sOHQ2d3I1?=
 =?utf-8?B?d3pjUjlvWEdBV0tyd3lxMjVEMDhMNzVZUmZkRFYrcFRZdlorNjIvY1UraHps?=
 =?utf-8?B?YkxwY01HNnF4emdGSWcwaVdWSmJFdHNYRWJtWFBiZXdRb2dGVVgrMWMxM2hh?=
 =?utf-8?B?dVFMUzEwQnN4YkR5bUNHbkt3UnFwM2JyNXU1cUZoTUdBUzA0VStmamVvL0NS?=
 =?utf-8?B?WlhRQzhRYityZ2pxSVFwenNnRkJodjdWUG9QMlJnRE9RYkNNbjk3SXNJd003?=
 =?utf-8?B?UktBcUlPNHArU2x0VDF3ckphZ1IxdHVLMHQrVVlmejZHNFRKR1MyNlJycmpy?=
 =?utf-8?B?a01STmxERnlRb0hRYVFPUUJpaS9iRVozZ3BtY01udGIrMXFsMkZTK3FtSDVr?=
 =?utf-8?B?ZUtLZDN2cHJXbVlONTI3QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3lJZWpjNEgwQitPU01zUnU5MnZuV3dkT1hqZTVmd1lCbkw2alhOeGJwU21M?=
 =?utf-8?B?eUd0ODB3UktyUGUzY2hjVEErbWhWelUxOXc5dUZsZElvUVYyVWVXVllqa3ZI?=
 =?utf-8?B?amorRmM3SHhPa3NyeUE2ZHhYVkk2VFd0VjQ1anZYVDU5WlBsUUVSMFFHRXk5?=
 =?utf-8?B?NmxaYml6MmxnOEtWZUZhSXhGQnBobnoyak1FYU1XRU9xTFl6OUVJcXhQSFR2?=
 =?utf-8?B?NjkyTzhEMURQc3VnNUxxRnNTWnVzcytLdU9HdFJ4LzR6S3VNWEV5VGthNDJn?=
 =?utf-8?B?L3dMazJOWUZHOUhpajRaTFQ2dnp4a3BNek4rbm5IcmNxOG1LcG5oa1JBalk5?=
 =?utf-8?B?Nm9ETGJzL0hGWjF4Zzd0allWTHd0ZVF3aXJMVi84UzQ3SVVpd2ZrdFc2N0k1?=
 =?utf-8?B?SjNkWVNFNUtEaHFTYnlYSEsxeGlZMTl3SmhTaXJlNlVENjJNellqNExVZEY3?=
 =?utf-8?B?VmNsMnNvODRNSStHK3J5ak1UN1lWWldBK0NKbnhHbk9iRitYbDVvS3JMVmRQ?=
 =?utf-8?B?RnVGeSswQUhnaFFaRHRwa3o2WFp2TVdtdGw3Q3RjV2ZqL3ZOKzZLUURPenVR?=
 =?utf-8?B?STR1K0RVRVhlVlhncnYwb1RnTk5uZzRzUi9MRkZVK0pWRFRqM2hrK2xEMjZY?=
 =?utf-8?B?VzN1QWQxdTdZYml4YmhsYkVCUHp0Qy8xTDRLc2NIWk1RaUJBQ3JtRXVtQURX?=
 =?utf-8?B?aEFRRkI2YndvMTBGRHhzSWk5SkN3TFhMNFlpbHYxZFJJMXdBR0RMc3pXZUpF?=
 =?utf-8?B?OGNRdUZTY3pYdzBRUmNNOVFiOUVyRzVNd1VDbmNldUYzblFLSTlOdXBVV2Vk?=
 =?utf-8?B?Yk1vRzNvTDhRUEhqUDNjNDE1UEdZVUxHL0JjVTVRVk15ekJoT1pJeDZGc1Qx?=
 =?utf-8?B?WFl2Wmg3MTEwOWVocjQyVkw3R0g3RVE4NVRkOC8yWWR1YWYwN3ZXNHk2K1RS?=
 =?utf-8?B?ZThlSnN4VCtlbFE3S2h4bVY2eFdGWG1JRVI2V3JQVVlFWk1rR3dPSWlILzVN?=
 =?utf-8?B?THVuYU9KYVh0YUl5SnpZTXVkOFh4d0hXMVNwRTEydkdaaWRFaVU4MDFYMDYx?=
 =?utf-8?B?ZkRDcDBadURDQ1ZaY3A4M0JjeVVPbmE0c3ZuNkFnQmRSTnNhc1p4OFIzT2Vp?=
 =?utf-8?B?SE1QVzdCNU5tTjBpRzc4YWlTdFR0RzNOWjRuQ2xQOWJOaDNrWkljTHY2MVVE?=
 =?utf-8?B?aUZIb1JjeG1CK2Uvb0ZTTzZwU0xCL1NISlpnM25ycitzYUN1M0VRb085WmZM?=
 =?utf-8?B?ekgvZE9tbkZlYVdwMVFCaE9haXBKVG4waDhObFZ5Wk1xdTNCSXRMaWtGTUlV?=
 =?utf-8?B?NDZmV0hyaHhPNnFWNm8vaW9SSjV6VjJueWtkN1Q3MEUwdWhVNGV0WWpGWEZI?=
 =?utf-8?B?M2loMVBXakpwRlN2elBZdHBLUURteDhuN0NqSnZrQUZiazJFRS85aWpmemxU?=
 =?utf-8?B?Z0dhOHA2ZzBvY0RhczlhM2lYanZ3VGpTbWhSZEl0a1V5NVZ2T3FUYzU1Y1ZJ?=
 =?utf-8?B?RlhPQ1VXa1l2N0VhcDVUOUJxSjhWT0Y1YWozcVJoZmFxMmlNR0NWcHJQR1Nn?=
 =?utf-8?B?dkxzZVpXMHlkaTNmQ3hhUUF3MXZpNG8rbGwxdGdNaGk1c21sTFFrR094bGFL?=
 =?utf-8?B?eW1RbVd0MjdkbG1Ed0ZPWkREN2dqdkUyNDdabVhQcHZvM2d2Vm9zTnJERi9q?=
 =?utf-8?B?M0lpdzZ1UTQ3WjZEY2Rqam5MSURYY2NzQkFFZjVrSG5LeDJjNFNCbHFaZDIx?=
 =?utf-8?B?NWpXKzNwd2xBWTRTMzVjODBWdXI1SkZQbFd6M0RlWWNiUW9RSER3S1ZNQ2pK?=
 =?utf-8?B?NXhjRTY4Vm9LWExMZHh5dm1CS2taRTNvdXJFdmJRRWhndlR0Q21MbFl1dExw?=
 =?utf-8?B?SUljK0Q1K2xieklGUm04RGtwTXdqeW9YSlZLV3pOQ3JTUzVkN3RMVkw5eStK?=
 =?utf-8?B?WUUzQkROaGs1R3ZzM3gzMjgvbDBHeS9XTzJ2ckEwQmhiaXI0NlU4Tk5oRWkw?=
 =?utf-8?B?Q0c3TUNQQytPR3pleE1IMWlrd2xncDVHVm9reDlhTEw4aFVhVExicS9ELzNs?=
 =?utf-8?B?UUtCakxLN2F5RGRrU1JIVGZjOXNIN3A1MnI4N3F3VFFtbDVINHdsdGdNQzRV?=
 =?utf-8?B?Nk1udDlxNjU1YktOOXJ5VkVaN1B3c3U0SDhNbEJjOFZJQktwR3puUTJVam9T?=
 =?utf-8?B?Z2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c658d17e-0cce-4f7d-d198-08dc96cc4b64
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 17:12:16.3056 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KxzQzsN+yINhysaaBmvwDlZqEq73VO7l53sCMYgdzLVIY2mGAnR20L7MKJF3bgsu/6FIzaBhQlrjK8WDGNXo0zVLvQvz1gYo7YMXSQ+qtBU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7540
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


On 6/26/2024 3:42 PM, Jani Nikula wrote:
> On Wed, 26 Jun 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Include the intel_pll_algorithm for xe driver.
> Not how this works. Please build every commit before submitting and
> you'll see the build is broken at patch 2.
>
> git rebase -i $tip -x make
>
> BR,
> Jani.

Apologies for this, will move this earlier in the series.

Thanks & Regards,

Ankit


>
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/xe/Makefile | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> index 478acc94a71c..30b63c2eadd0 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -261,6 +261,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>>   	i915-display/intel_modeset_setup.o \
>>   	i915-display/intel_modeset_verify.o \
>>   	i915-display/intel_panel.o \
>> +	i915-display/intel_pll_algorithm.o \
>>   	i915-display/intel_pmdemand.o \
>>   	i915-display/intel_pps.o \
>>   	i915-display/intel_psr.o \
