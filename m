Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A21B3A32E0B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 19:00:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C30B110E950;
	Wed, 12 Feb 2025 18:00:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DhJCCQx3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D77C10E06A;
 Wed, 12 Feb 2025 18:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739383224; x=1770919224;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=zJ3JdNs7EpLXpabXaZXuhWJbXt36AbMOTWLj90DY3Jk=;
 b=DhJCCQx3lFBR9MiQZ9/j5x5CpLq4a5faRF+cad5w6PPSY2Tvp8/LJngm
 aYpD9+wm2z+YP3MNaxnsJ3fz2tUJBxe/WDHX67ohHFndIckSOhTvSlI2L
 I5PUkSo5vgIW8BPnGtvbkirmFJEsjZfzcXEq/cwIqoANEndQ/TBpE4EJR
 vdFhyQVr3FLrtvcA6MsNEuov1YBiDn7B19n5gxYpeyMnlrw/sC6o5phAp
 X9e490ESPTu5kZI5ZnhM1JCcg0zCUFLNZLf7t90R3YgMsaM7zaPIkVY1B
 jnIev36C1Cpt6njOjmck1rSa/Bj2NTf9Fdnbqaui3+Q/0ovv5pOFpD7Wx A==;
X-CSE-ConnectionGUID: JLh0nfbfQ8icCQDhEtldzA==
X-CSE-MsgGUID: hYg3EbiRShiMJtZjmTNtRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="51450246"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="51450246"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 10:00:22 -0800
X-CSE-ConnectionGUID: 5JZ1xEMjSjeeXf9+4+TWfg==
X-CSE-MsgGUID: vfuRjwCNTSKrfuTTwKY0rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113096669"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 10:00:20 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 12 Feb 2025 10:00:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 10:00:20 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 10:00:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uyfc6HMv123GLM10asx3cs4SF4MXc9IVI0Qm/AeXRZiqp6VmqzeytH1JlYVvzusV7gZ9PSaXFLcdXKET7IEEMJGozZVEZ24JvVbcs8FxmDuxOzy4l5hmYAAIcG50/5hFdj/J3yqyhEvbPDW4yixmlTtSuXKB7D1TJJuDugfcrFhhSeIvEhfYs0s6fKqBXKHLDqv5Ob3iLzLAhOsUZ6U/+ObTBlNdqVX4E6ufw7t6xXa7xjDlLI6/8pi5N38TT0/is3QlKqfYB59zRQJg/4m8hBuZxSZsl1sKXUwxohShYP6i/AOj9tPh9f1deZgGzS30KxCy8Bne3CV7ffLWVgrpbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aDq+aDH7BlDsAk8RFsIw8Hp42TuIILkXBGVqQftWHsc=;
 b=sOopeSUTbRAVHtvaczGgA2/A9Bm6c5k0j0G8sAQa4Id4XGOztj8zcYS+eWsGvmyN4qwJ2G1iGY5tWMryGClz5z1iTtluyVhq1A8otL0wYAds5vzLErLto+NXB5x2X1SS1gxFP9sJX+SsDSiRf9+tei1BhphioP79cAmxL71xJNezChv5ikv7/yxJfAb/doP9S8YXhIZcypghR61aEVZIKFtUkJ+oWv/dchrIGR1uPmIWef92jaNGHiCCe38UKb1uZmnyt+Ia4O/xRZTJXUL3nej+1AYdcEz1gx6kaSoDFBzj9ohMKDuUqeIOqxYUDn9D5Pgk1Zcmhpr7KctdBuZ3UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Wed, 12 Feb
 2025 17:59:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8445.008; Wed, 12 Feb 2025
 17:59:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z6zf00kDlmteGiIq@intel.com>
References: <20250212174333.371681-1-gustavo.sousa@intel.com>
 <20250212174333.371681-2-gustavo.sousa@intel.com>
 <Z6zf00kDlmteGiIq@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Use explicit cast in
 POWER_DOMAIN_*() macros
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 12 Feb 2025 14:59:28 -0300
Message-ID: <173938316839.145254.11637419535806568600@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0366.namprd04.prod.outlook.com
 (2603:10b6:303:81::11) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6557:EE_
X-MS-Office365-Filtering-Correlation-Id: 924b3915-3b8b-41b5-2baf-08dd4b8f0115
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WVAyc29BaHh0YkpIemhtN21ORUp1dlRUTFVzRXM5ZkkzN21td2FBU2NvZVU3?=
 =?utf-8?B?UEx1SDdtWUNseFh0aGpiWlcwWFNaaHRqd3JPV01URklxcTRzVlArYjZmeTdm?=
 =?utf-8?B?eHJUSW1Mc2RKVjR5a2ordndMV090aE9hWTVROFVEZ2N3Z3F0RERWS2s0Wmla?=
 =?utf-8?B?VS83eGE2UnVjOFdOc01kOWYwaHdzRUpYb0c2R3NUa2JWeWpCdkh5WXp2cWl3?=
 =?utf-8?B?N2krcGo1RllCbEloM2NjRWVsNmpva0o0OHBhNmpXYTFWZXAvdktIdC9Tczdj?=
 =?utf-8?B?dlU5Uk14dEFESUNOeUJDY1Q3alFMTFdxNXEwQUlGVEY4TTl5dTdWdklxS3VS?=
 =?utf-8?B?MzRxa3k1ZzkwWGlNbHQ5b2pHVVhDWEdvN05kWk9KK3hldTVsZzRVTDl5ZjE3?=
 =?utf-8?B?T0pzMFlPWC9iRjhSRWpYdnBMcTExM2d2c0JSb2pMdXVUaTdMT1pNTkE4NHVV?=
 =?utf-8?B?RVJUY0YxTlAxMUdITXNJMTZ5NENlLzBINHU3MU5Wd28zaExKanRYSnBVNE9w?=
 =?utf-8?B?bDE1STJERHVnTXp1R1dHYTVFdHplanllMXhIU0JtRWxuVGxyVWtLR2Q4NE1H?=
 =?utf-8?B?MTJKRXBPcW5sam83SVBRR0ZSZHBrRGU0NUNuOThuQ2RiQngzdUl4eFdidWps?=
 =?utf-8?B?Q1VOaHhJTys5c2hmQjY2L2w2aEZLWlN5NjhoaDRSS2Q4MW5ucENRbFUycTNE?=
 =?utf-8?B?a00vdmZ3TkwvMW9FTTIvQURzaEQxOFRvM015RkVPdEpydUxKWUx3dW4xUEln?=
 =?utf-8?B?TnE4cFJTMUJORlVpaUtnZmszY0hPRnJpY2ZLUlNWUWpZNDl1NXFpZW5XUElw?=
 =?utf-8?B?UnhkNzNZeHk1NmU2SkJKUmNZWGp5NTVabTg3YWs0YXYwcTBoUUdhQmlKSmEv?=
 =?utf-8?B?OUVHNTVjUWVTN1R5bGtOSUZpVGo5RCtRaVRRb1BXakJhOUJKMEM3cnhDNit1?=
 =?utf-8?B?aWNSR0dMMGh4d2tzbkVoUlR3ZE5uVkVHcGtkeEc1WE1VZnd0Z2xNSEpKMnBu?=
 =?utf-8?B?TU9JZm1YY0tScldVQ1Q3djhTVFVjY1AzbnpoOCttNWJpUlVvQXBJdjVZOGlD?=
 =?utf-8?B?czlVQlZ0UVdvdzU2SURjS3dJSUl3KysvaDU4dTE4c09QMk1sYnovL0FiSGJs?=
 =?utf-8?B?MFg1ekZJNW04RTJoUHpEZndFQWhNL1MwTFNBUmVZYUE4dzREVHdrZjZTaXYy?=
 =?utf-8?B?VFAzN3V4WWk1MkRLWWJhUTM3RzlwLzcxNDI4N3pTK2t1NGs3ZXhodjdlc2dG?=
 =?utf-8?B?VW00VWRSNXJDS0JIZ1g2VlJ0VjdUSW9DQWhmOWR0QWJXRUhROUVJUlVWRHV2?=
 =?utf-8?B?T2tIZGlyWU5YU2ErTWVrd3lIZFJnUy9vR1d6YW5rS0lzRHI5SmcyUjl3aklz?=
 =?utf-8?B?VjM4Y3RmaHhtdnFweEFwR0xRYkdUbnVZRUpmMkxlV2VkYmN6OW9wdVpFeTZZ?=
 =?utf-8?B?enF6WlpqeHB5UnZ6NFVIbjBKVS9ZbXNHRWRJZW1GSWR0cW45K0M3c0dnWGFw?=
 =?utf-8?B?dEl5bWpEQTN2QVBFdkRYdysvOXRzeVl2MWZJeHJ4b0hrZ3BkMVBEbmo1Wm5h?=
 =?utf-8?B?aFhhUmVoUVBMdkRPRkFaaVJUQlhDb2tnc0NUL2k0YXBHbTM0bGdvQlBSd1BZ?=
 =?utf-8?B?V2pzNUJhN1lHYksyMGVROUFCWG52MnVsRnBrUE1VRnZyQVBuejRGTHFMRnlF?=
 =?utf-8?B?WDRHQTh0cGdQajcvMTJKcGRyb3R0NzAxaDR2UTByVUlPLzVwbThWbnZzU3hH?=
 =?utf-8?B?VjAyOVJPMDVoTDd6VnAyN0l3WDI3YVR6bThZay9WazEyNlUrWGNEWnh2UjZT?=
 =?utf-8?B?YzFkcWtKTUNOMEFiUithcGFYNEV6dGV4N1JhZm9iYWZBUWZTYlAxVldUTUdC?=
 =?utf-8?Q?emviSHPtx3Jk8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmYxbFNHNVE5dnJWRG45M3FZSHVzeWFwemluTFBqZWFjWi9sRVNmS3FzV3hv?=
 =?utf-8?B?d3RyZWJPeHliUm1aSjZLMy9wR2Z0MEpoNXk2ajg4RmFndEIrK3FHTlBTdnlD?=
 =?utf-8?B?YTEzVVNCS3B0VzNuaHZOUXlnUVRpNnRqWjNGRVIzd3pQc2NyYmJQVGhicHlO?=
 =?utf-8?B?OHpZTVN2YUVINzNkY0p2UHRtQmpxZHl4UkIvU2lkSlh4aFpHR3BKMWhjM1li?=
 =?utf-8?B?dHV5ZGw3RjVWRXNEcm5CajZRSlIwM3RJVU1qOThWTVVVMTJVcVVXMVlkQmI3?=
 =?utf-8?B?azEwR2JKZWUrVnZRWmgwc2l0RVhYVHhtK0w1ZXVKLzlLSHB0Y1JRTW5IdUd4?=
 =?utf-8?B?eUZCZTRyV0dOejh0WlBBb29zczJKWlcyV1ZxaUJYNmw3Um53QjE1dlJZNnBX?=
 =?utf-8?B?UWZkWFoyNG9VTFhrM1Q4SWFPakVjR1ZvcGlUL3lkOWxnYXFQRXYyQ2d2S2xk?=
 =?utf-8?B?QTlLOEZEN1VUcFljTzVRdlpoSG12cWZZNW1DeFAycFV0RStmM254WGFkbmp0?=
 =?utf-8?B?Y3cwMzhNVnBicDArV01CRCtlRTE1TFB2b3VwNVRnQzhYcnVGRzM3aDN3THB1?=
 =?utf-8?B?Ujh5dEVRWE5pNWZWWHc4VWJ2R3lDd0Z3Y3ByOHdkQWJFMjd0NHhJRGErcm1n?=
 =?utf-8?B?OXlpR284SFVRblhiak95MUl2eDdsVWhKdmVFWVhZaWZqbEozdXRYcFdyYlpU?=
 =?utf-8?B?ZGQ0N1dqbDlvTG00ZERwYTMzTytRT0lhbWl2aWQ0VUF6TktVNnErUVE2ckNP?=
 =?utf-8?B?UHdCWk12aVpxZW9zdlFuWEJoNUJNK096ZFhuREh2VC85TURKRm1hdjRmcG8z?=
 =?utf-8?B?SndlNkpaYURYdDZaQjFrcVo0VnhDTzRUQWhDUXFMZjRuSlBUY0hPcEQ2eFYy?=
 =?utf-8?B?akZid1d5THdOWENZQXMxdTJQK3UxVTV1TnpqTGJ4UVRDVnpFVEhYR3k3bGdm?=
 =?utf-8?B?blRYaVZVYkVFZU1sWm52ang2SnhWd29jbVZ6ZkN4YjMvblgxRDVGWkxDSktB?=
 =?utf-8?B?b2ZDY0NWQmtJRE1ndTV3cjd0NWtjY2lRRXBibHBJMzNDSWdaUHNSNmlxZ1Zq?=
 =?utf-8?B?UkF1a3VNZnBSYXRnMDByY24rT1pVc3oweWxabStEd1VIcUZ0V1lTOFo4aHgy?=
 =?utf-8?B?V01nZ0ZZa3pSbnlHeHp4OGhUbytlTUxxSHhid0tmWFhjbEN3N3BOM2ZkUHFn?=
 =?utf-8?B?RUxEYWd6V1VGNlpRL2prVG1MWVdIcTRJczVQelZqQW9ZcDFGRlpud3ZFSEpj?=
 =?utf-8?B?dlpna2ZGUklEd0ZuZU9sR2kydEsrWWNBTG5vaEppd2hNWGFKMG44a1pPUWts?=
 =?utf-8?B?S3BjeGF5b04wNG84OFNYaERVcnd6dTcrWlRkdmNMcE9oY0orbE9wUHp5Qk44?=
 =?utf-8?B?RERtSzR2MU54TlM4NVRNYm1uR0MwYXNRMGlLdTI3eG5CZndEVm16RTNFZGFz?=
 =?utf-8?B?VWRlRHdGQXUyUHVadTN3bGd6WVoybDlZRW4rQkRZWTdUdWhTVHlLM0pFZm5R?=
 =?utf-8?B?aFhoNmYwTDByT1Y2V1E5aWpERkxSZCs3N3RxRE8vdS81L0luSTNEWEdmMkZk?=
 =?utf-8?B?TXAwVkE3U0JSWHYxSUlnSEhjd2dZQndGNVAyL0cwMGJLYzJsZWkzOGJsRWRK?=
 =?utf-8?B?UDB4QlZRQzBaK0ZneDczN0xscnp1T0h1V1FPSDF5T2JhdzJRQ3BRSzJMVGlm?=
 =?utf-8?B?M1V2NGpmODkza1RuTGQrT3R3YUFTcGVHa3pPckhHRFhtcHlvV0V1K1k3aHVp?=
 =?utf-8?B?M082ZzVzSHRuKzJPUTVtVE5TRWhIQWJ1czExamFHNWdJTzNIdFVlcDB5WUVa?=
 =?utf-8?B?VW8zQ20yK3pSakRvRXVqaUEwUG9qcjVKalJxemF1NUkzbEVoaDQ4eHRxcXFX?=
 =?utf-8?B?NC9WWHgyYTR0dWhUdTZuRGM2V051V1JsclJYcTN2d2d1bFNWQUJxL1p1Qkth?=
 =?utf-8?B?OEdMVndQS2pnUU1MN1FhVmNMeGlLZEZDZDk1aGFEZHl0MlRoYkdGcjRJbWVz?=
 =?utf-8?B?L0N2RWIwbzFqVkJxVzg4Vmhyd1JzL3hoRTlTd0gvblM2ak9QWE9lbGxwdEFV?=
 =?utf-8?B?dVU4c3FDOXdQN3NyVWY5OXRqek9kNXRLSUpKZDhJdTUwVVl6TnhERlFkMzhY?=
 =?utf-8?B?WjdrYWw4djZWYnRBMFpmWFVObSsrQTN3NVZUZS9UazhxbFliVWdyMVhFQlp3?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 924b3915-3b8b-41b5-2baf-08dd4b8f0115
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 17:59:32.9588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4ZR9AQn1XEJ3cH5pkqP7j+X3t7QFjNu9nHL7DknSaU1gcacpEJ/EZh8vYLYWBBk2GPJ6w9JTGRCx/FkD8GK4Vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6557
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-02-12 14:52:19-03:00)
>On Wed, Feb 12, 2025 at 02:43:16PM -0300, Gustavo Sousa wrote:
>> Let the compiler know that we are intetionally using a different enum
>> type to perform arithmetic with enum intel_display_power_domain in the
>> POWER_DOMAIN_*(). Do that by explicitly casting the macro argument to
>> int.
>>=20
>> Reported-by: kernel test robot <lkp@intel.com>
>> Closes: https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@=
intel.com/
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.h | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/driver=
s/gpu/drm/i915/display/intel_display_power.h
>> index a3a5c1be8bab..3caa3f517a32 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -117,12 +117,12 @@ enum intel_display_power_domain {
>>          POWER_DOMAIN_INVALID =3D POWER_DOMAIN_NUM,
>>  };
>> =20
>> -#define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
>> +#define POWER_DOMAIN_PIPE(pipe) ((int)(pipe) + POWER_DOMAIN_PIPE_A)
>>  #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
>> -                ((pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
>> +                ((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
>>  #define POWER_DOMAIN_TRANSCODER(tran) \
>>          ((tran) =3D=3D TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
>> -         (tran) + POWER_DOMAIN_TRANSCODER_A)
>> +         (int)(tran) + POWER_DOMAIN_TRANSCODER_A)
>
>I've generally gone for the=20
>POWER_DOMAIN_TRANSCODER_A + (tran) - TRANSCODER_A
>form for such things, to also make sure it works
>even if TRANSCODER_A isn't 0 anymore.
>Does that avoid the warning as well?

Hm... That's a good idea; and I think it might avoid the warning indeed
(maybe we would need parentheses around (tran) - TRANSCODER_A).

>
>Maybe these should even be functions rather than macros?

Yeah. I actually considered this possibility, but went with the macros
to keep the change simple.

If that's welcome, I could go ahead with turning those macros into
static inline functions.

--
Gustavo Sousa

>
>> =20
>>  struct intel_power_domain_mask {
>>          DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>> --=20
>> 2.48.1
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
