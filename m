Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A59A97B643
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 01:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AFE110E505;
	Tue, 17 Sep 2024 23:49:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iRyE53QZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1854710E505
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 23:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726616970; x=1758152970;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Kv6396BBKkqqsrVYCvu5tMLy9wXFTVhapwy9LDoR+x0=;
 b=iRyE53QZzwxtG+sAhXznSlhKnF7AKfDKHRaxEefL0IpQUIiLEoNpGLG5
 0AOc0kOzxg7sNJk5ezcA4MWT1OhkOkW3LlojkA2b8B0nzouIdzgRcaPyu
 bOxafdX9eJvMhnoGPyDz1t2uDslqtZV4seLn/XYw3gUbriL0lM1ogdbTU
 y3FstLi5/QtuPJdPF1+lz23GkQ8Tc3XpR0+CxhgYapT6fX78wR8sSLnBZ
 +nyQDnRvwXvWwKjEGsVjLMeVtrokFDtFuZV71VVcwa1NG4W9V9gvo1lIH
 GK++eNDquImt4EHbciIaWC7Bx8Tj+0swcK2pJ+j0uRhhbeybNOpakgmdf Q==;
X-CSE-ConnectionGUID: nkGxTcHoTBC4b9jBQ83pow==
X-CSE-MsgGUID: wLqbfQFGQCWn4umRRoIHZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25039954"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25039954"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 16:49:15 -0700
X-CSE-ConnectionGUID: KjhPHFpYTh6CEWLzAfW36g==
X-CSE-MsgGUID: CivrAhIhRgWCyLLiVi29Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69584082"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 16:49:15 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 16:49:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 16:49:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 16:49:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S5urljC980b6TmaXMTFKipPAwaZ4EoH3hrgo9i8JEpLGEALhoSeIfJKWpnD90gXQWVyEZi9FLvZp5D3OFhnDnEIuQhG1zqgA+m9q9XRWOOMbu3KZKosPaG5idzsAqgt+jdZ8y1yFpMa3FTUPvsf6s5p/Ika6bHU9vmppVn9DdDRs3j5JJjnicL+xEFlCSbsX13ClOEZ1DIAw6kKFDYv/48cE2DPxDG6Hrkpr8dHgeVuOA36jF1Tbvoy9G752s1EXMdOtVUGXhXE0qY9gKO3MLoZ8EoBqj4h94UbGo0JD9j44lxctLgSMCjio7UGZt20VpMfEDmj6A5S/uHsVFMBzDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X2nWPj3wZrzx8uwzG0JCY0pY87mDbf6QYimn7krBpOw=;
 b=Y0APCSEZlRiiSmMhNF4Qi8wQEj4/r+yzIRHgj00v2DtCa1WVxX/PeMv3m8Wb+Lh6W7twQYs5bQ3ciC+K6GG/PcEPMA12tJpeBQw7oLXf3Tpg2q1PGJ9R4Fw+kuFpT+vVrXL9Kt5uUhHnEomRkfLx87WmBJLhLbp7fiZSWCvfWuRKPj9r+52GyC4NH8Ag/J4SvNU4XqBhgcv0l+2pmUzRMN0jI4V7U/aKExMlAn5THmycIbr5pVGe2dSjlY7/B1fXGr4HlpyOUlhbwp73b7Aq+0LExB3cvHr5+pZIcNZ+NHA57++kxIh5OPqLYw6n+XjI4fQuBSkayeK1bssvTzOa5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS7PR11MB5989.namprd11.prod.outlook.com (2603:10b6:8:70::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.16; Tue, 17 Sep
 2024 23:49:08 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 17 Sep 2024
 23:49:07 +0000
Date: Tue, 17 Sep 2024 19:49:04 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915/irq: Uninstall should be called just once
Message-ID: <ZuoVcAUxs3G649y5@intel.com>
References: <20240916161937.537334-1-rodrigo.vivi@intel.com>
 <172656814869.1021276.9122856940821234289@2413ebb6fbb6>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <172656814869.1021276.9122856940821234289@2413ebb6fbb6>
X-ClientProxiedBy: MW4PR03CA0214.namprd03.prod.outlook.com
 (2603:10b6:303:b9::9) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS7PR11MB5989:EE_
X-MS-Office365-Filtering-Correlation-Id: 85f3745f-5f55-4865-25e0-08dcd77351b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dXBqUWxpN0c3eWtkVnhRRGpiWXpvN0hKS2tsMXlvK1hSVVg5YjZyZ3R2V0hJ?=
 =?utf-8?B?NzJCWDdBMWQyZFhCcHMrMXFFY245a2xWVlEwZlBSWFZaZW41eFd2a1EzN280?=
 =?utf-8?B?S0pWU3dSYmZkVDRYRkp3a21rbFNLYWJMVHZTSFMrVnBXcmxkYTZ6S1VaVDhk?=
 =?utf-8?B?NUVFd0ZlMmVFaHh2d2ZlSDMzTnlEZjBhVFUvR2ZCSVU3MGRYbzJncFVndy9W?=
 =?utf-8?B?QTZuTDJoUUs2M3h3WjdRdno2N1FubjZmbmdZN0szVVJ5Mm9oRVZWMjhWTDhx?=
 =?utf-8?B?M29GeldCMjJwVVBTYnJXVmp0eDJIMktnZkkzR1FJbTdEbFNjUEloWTk3WGpT?=
 =?utf-8?B?cmZtS0c1Mzcva3ZEYngrK0N6RDFuTDA1YVhoVjNKVXhVRXNLSVRZYm9rc3dM?=
 =?utf-8?B?YUl6eUZJU0NTclNwdkg3YXpjaFd3bDVmQkpjbWdkclkvWjUzVTVjRkkvVnFX?=
 =?utf-8?B?eXJScnZRaEkyMXNldElsczdqeUFiS2NiU3d3bGh0SDlFckgvMWlEZ2w3RjRs?=
 =?utf-8?B?Z1pvK3ZrZ3UxQ09QcFlsRlJWdlFRMGpPa3o2RWkxRml6V3VQcnRRcGZOSkMr?=
 =?utf-8?B?YWp5bWZxc2Vyak1BK3FHWWZCNmhKemZPbCtTaFRUSVpIdXR2UGhxUk9NL3ZM?=
 =?utf-8?B?aHoweWRTNG1MTjlCcy9qdGJSZkRWVHU5b2g5eW5Dc21UM3dqbVBoRno4K0lx?=
 =?utf-8?B?SUI5YWl6NWgyd2xtNTdNZjdxcW43ZEd1c1pRaktIRDF1eTF3M2xpOXFoS0hh?=
 =?utf-8?B?NFFvRCttRmFiZ1A0UWpzZkVBdGUvZllvMnlERk01eHBlb0p1UmFyYUNMOEtD?=
 =?utf-8?B?Wm16MURTdC92bWtFU0RVQU5yOGNhSG1pMEJhbm9GdHlwRDgxRlk0REd1RTlF?=
 =?utf-8?B?dlFuLzZtcit3a2J0RENBbzM4U3BGOVJvWURlS1lJdHZHL1hFTkVaaVFJUWsv?=
 =?utf-8?B?U2xPanBCUjQzQ09SRTg0MjQ0M1ZlYnRJcnkvNWljOXpvNks5K2h3Vm9lTm1v?=
 =?utf-8?B?RGVuT21RYWh0RUJmdlJSME5BWWlQQ1VlMmlxRER1emNhZmJiM3JOTW02WS81?=
 =?utf-8?B?UXA2YzBteUhzeDlGUGpjdXFaN2xIRy9PTWN3aDRRaEF6K0U1ZXFRdjZMeFhP?=
 =?utf-8?B?dkcvaEFFek1ySGlhK0wwWWhmMnJXTjdpNlVOREJaUnZKUStOU2xJYTBBeWZ0?=
 =?utf-8?B?M0NwT3FLVTIzS3RUcGhzMXQ0TG9ncUZ3SGI5bXJ1b3lpandSZjRDbmc2NUEr?=
 =?utf-8?B?cE5WcEVVc09HdkJRcjJZaDA5dEFoZUI0ZlZEZFZYZllPNml4aXFudDhxcDNr?=
 =?utf-8?B?anhYc2ZjcmhvR2xMY3JJWnVlNXBqYXhYNytWVXZDb3NVdU1oenFBMVVvSGQx?=
 =?utf-8?B?V21LNVJpYVlPbWFMZjRIRG9MMzNOTTVNL3RVYThLTHJJYlAvSEw5Mll3cjRU?=
 =?utf-8?B?ZWhEL1k2YkREb0ZBMEJBZGxXYTdCMXhKbjN0TnM3VXhKcnVJdVVHR0tmSHNY?=
 =?utf-8?B?aG9IU2YwekFpV1NhWitib3YvcnppY2lzQzhXZTBnTi9mOHJycm5PcHdmUkhX?=
 =?utf-8?B?OTJwcEZXZHRPL2VPYTVwc2tyU09yLzJ3dld1aFZhV3Q4TDVRdkhpVFlCSnZY?=
 =?utf-8?B?d1RzbVhzYk5XYWFKSC81QVpUSXNkcWUzNzNDTEJha3NnRnVnUFZvQSswK3J3?=
 =?utf-8?B?SGlZbVhoeVBQMlMzK2g1VFB3d0hqdTJNWkNRNy82TVlsSW5JOHduRnpYd2lE?=
 =?utf-8?Q?wUgcRjAroCSOw6cckQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVcvcWh6VlcxVU85SW5xRXVwbGZqRE5JWTlYUkNkeEp1Z3ArZ29Vem01NDll?=
 =?utf-8?B?Z1VYN3ljT3FYUnljSzZzR0lrVG9EWGJCWEh2SXhJZ2dUc09zK0VCME9zNUxm?=
 =?utf-8?B?Y2dNcjhHUjFCZVQzWDI1UFROaDh6WWRsL2dweGgvaHNIbmV5SkI0aVVFRnRU?=
 =?utf-8?B?bzRmV21kNXNQK2VJVlprbmlzOFZGVGpKQ3hHR1lMV3ZOVnp0VlBiRnlMVXZy?=
 =?utf-8?B?QnFEd3FNWjJRa29vUmpLL2ZlUktReUNuUzFPMGlWekt6dFJiVkZDZnNMT1Br?=
 =?utf-8?B?Um1JbG1TbGVFVDIzekhHand3d2Fzc3o1Uyt1UXE0ZUFwUThOaVJqcXYzMm5T?=
 =?utf-8?B?SmlSWVUyVnJCalBPQ3pLR2NyelhUeGFEcWFiVHhacVpCY21GYUViNGVoZ1Rj?=
 =?utf-8?B?QmFkUFNOKzhwNjVHZW1CL2Y2SzlnTW9XYUJSMitTWXFnUmZxRDRJN0ZLZkMw?=
 =?utf-8?B?ZU1QZVk0WTZsdUJEYXA4QXZuUW01RXl0eEpVSVdNeHBhMjZWVWdrYWpjWFd6?=
 =?utf-8?B?WTVaMFdMUzlsNUxobGF5Ymg0WVNGSFdiWU0rMUJ1RWc1UUEzZHYxTXpEZmts?=
 =?utf-8?B?WDZwK0xZNE5YRmxRZE9xdnFjTGVWOU1wd0hSd2tzR3kxS1h1Q2JUSi81ME1h?=
 =?utf-8?B?ZGNkbmtvTzlkSUZlQXE1NzhPNVYvYnNnaFVVVmp2cjRJbm9mTWdYVTJaSlov?=
 =?utf-8?B?VDg0dXUxbFNoK0Q0a1loenl6ODVCbFV2d2EydEpGV25EcUZpbkpweGtFNWls?=
 =?utf-8?B?ek5Xa1ZmWUlNSVVKMDI1Y0FpMnJhMEJVUDI2RTVLNHU2ZmZXZ2NrWlZVMmJW?=
 =?utf-8?B?Z2I2dWdmbTBBTVNIYUFZa3VSNmlER0tzV2xFNWxTMklwOG5mR21hdy9TQmkv?=
 =?utf-8?B?d3pPVzlKT2hnTjNkS2h3c0w1WTQ1c0ZuaDJPNm96akNoYjhBNjdFVDFKdXJV?=
 =?utf-8?B?U0VNM3NiYkYwc090T0ZOeDdOUTlETU9uZVJ2em51VFYxVWhTWTg5S0JHM3pw?=
 =?utf-8?B?d2hITDQvTm5pYitXRDlQSDV6WGd4SEUrZXdXME51SFJMZDZtQ2s1R3dxTXlr?=
 =?utf-8?B?OUJWTDB0ZFVXL0U2ajcxbmNXMlRsaUFDUzVtTTQ5cTZlTCt4QUFxYTlQUUNv?=
 =?utf-8?B?Wm9QL3JybEwzNXdjdW4rdnRNNkVRUStwYmFheWo2bFBCalRpakFJRGo1MnJI?=
 =?utf-8?B?REUxREVDV1oybGh6RlI4RVFjS2pQeDhSZUtHa0ZhNDBxaERXdlpCY3RzY2Vh?=
 =?utf-8?B?VlF5cUliM2N3WXVnb0NYd05oRkNOMHYxczlvTG1GNnlzZXhJMFM2VzArZUp5?=
 =?utf-8?B?TXVjQ0thQ1Z1bWJVd1hyNTRVSklQTVgzM3I1R05UVHFTMDVMUkp0dkZCUThx?=
 =?utf-8?B?ZnY0VWVoalE5K3dWMnhLdWw1Z1lsUzlXK2V5Nm9sdVhCekM2aGR0SjNlRTgz?=
 =?utf-8?B?YWtlYyt0Nklpa3VYbCtiQ0ZVaW9XSy9Fcm5ZSnluS1pTSXNtcFZtU3ZjWHVk?=
 =?utf-8?B?YkNVQVdGdk5JblpCcnlhc1hXT3MxVWE5aW5aTUxqV0NDYkpEYlYrTktTOUZq?=
 =?utf-8?B?SkM2Vm0wbEhKQWNwd3JmWHRDTE4xa25uZTBhV0YwaENMb2VhU0d0Wmozam9J?=
 =?utf-8?B?b3g5TnRRUXBCWHRqaW5kaDk4UUtvMUFuSElSNHlVeXIyUVYrSE5FUldkZHFp?=
 =?utf-8?B?SlpZUm51dVpYSUhLS01iOG5mRXFBdnZkVzlIL0JOYnNxaWxvVWZ4ajhsRUNT?=
 =?utf-8?B?VW9oSmJQTndiT043QktGY3VITVNJNTdlcjhQVHM1UVhnNDhIM2VHK2ZHeDAy?=
 =?utf-8?B?aUl1MFZNelhuU1NWQjQybE10elFnWisvTFI0c2xyS1FxZmNvVFArMVNaOTVi?=
 =?utf-8?B?dWR2ZmFYWTYrWVpPRzcrVmJuaWZDZDRRNnN5WFhhSFFlOE8wK2YzSGhJNC83?=
 =?utf-8?B?RnBkTXBLRFR2ODlydUFsNFBDYTk3RnRUSFRtdHlyVWV4d0JPeS9GZXRNSys5?=
 =?utf-8?B?ajY2d3FQd2lqQ0xYT2VlbGY3NmY3TGpGeWZaT21pazA4WW80c1g5Ny9mT084?=
 =?utf-8?B?d20rYzIxbklxZmMwYXd5TzZWSVF6K21kL2dDSWdYQW8yMSttSUR3UU9zUVd6?=
 =?utf-8?B?QjU0QW9tVHZ5Y0Z0aEtQL3VmYXVhWVorWTljRjMxSHhTeWp2OWNqSS9zY3Nh?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85f3745f-5f55-4865-25e0-08dcd77351b4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2024 23:49:07.7243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5jnt++0/Ee9fyznf8Wl7Q6xu9In6Y5KVXboxlqicu/AHArYvnJg+B9R/xS5KyDMnB9/uRK7PuU326kVmLZ2OwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5989
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

On Tue, Sep 17, 2024 at 10:15:48AM +0000, Patchwork wrote:
>    Patch Details                                                                
>                                                                                 
> Series:  drm/i915/irq: Uninstall should be called just once                       
> URL:     [1]https://patchwork.freedesktop.org/series/138728/                      
> State:   failure                                                                  
> Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/index.html
>                                                                                 
>      CI Bug Log - changes from CI_DRM_15425_full -> Patchwork_138728v1_full     
>                                                                                 
> Summary                                                                         
>                                                                                 
>    FAILURE                                                                      
>                                                                                 
>    Serious unknown changes coming with Patchwork_138728v1_full absolutely       
>    need to be                                                                   
>    verified manually.                                                           
>                                                                                 
>    If you think the reported changes have nothing to do with the changes        
>    introduced in Patchwork_138728v1_full, please notify your bug team           
>    (I915-ci-infra@lists.freedesktop.org) to allow them                          
>    to document this new failure mode, which will reduce false positives in      
>    CI.                                                                          
>                                                                                 
> Participating hosts (9 -> 9)                                                    
>                                                                                 
>    No changes in participating hosts                                            
>                                                                                 
> Possible new issues                                                             
>                                                                                 
>    Here are the unknown changes that may have been introduced in                
>    Patchwork_138728v1_full:                                                     
>                                                                                 
>   IGT changes                                                                   
>                                                                                 
>     Possible regressions                                                        
>                                                                                 
>      • igt@gem_exec_fair@basic-none:                                            
>                                                                                 
>           • shard-glk: NOTRUN -> [3]INCOMPLETE +1 other test incomplete         
>      • igt@gem_exec_parallel@engines@userptr:                                   
>                                                                                 
>           • shard-dg2: [4]PASS -> [5]INCOMPLETE +1 other test incomplete        
>      • igt@i915_selftest@live@workarounds:                                      
>                                                                                 
>           • shard-mtlp: [6]PASS -> [7]INCOMPLETE                                

nothing that could be related to this patch...

>                                                                                 
> Known issues                                                                    
>                                                                                 
>    Here are the changes found in Patchwork_138728v1_full that come from known   
>    issues:                                                                      
>                                                                                 
>   IGT changes                                                                   
>                                                                                 
>     Issues hit                                                                  
>                                                                                 
>      • igt@api_intel_bb@blit-reloc-purge-cache:                                 
>                                                                                 
>           • shard-dg1: NOTRUN -> [8]SKIP ([9]i915#8411) +1 other test skip      
>      • igt@api_intel_bb@crc32:                                                  
>                                                                                 
>           • shard-rkl: NOTRUN -> [10]SKIP ([11]i915#6230)                       
>      • igt@device_reset@unbind-cold-reset-rebind:                               
>                                                                                 
>           • shard-rkl: NOTRUN -> [12]SKIP ([13]i915#11078) +1 other test skip   
>           • shard-dg1: NOTRUN -> [14]SKIP ([15]i915#11078)                      
>           • shard-tglu: NOTRUN -> [16]SKIP ([17]i915#11078)                     
>      • igt@device_reset@unbind-reset-rebind:                                    
>                                                                                 
>           • shard-dg2: [18]PASS -> [19]ABORT ([20]i915#5507)                    
>           • shard-dg1: NOTRUN -> [21]ABORT ([22]i915#11814 / [23]i915#11815)    
>      • igt@drm_fdinfo@busy-check-all@bcs0:                                      
>                                                                                 
>           • shard-dg1: NOTRUN -> [24]SKIP ([25]i915#8414) +12 other tests       
>             skip                                                                
>      • igt@drm_fdinfo@busy-idle@bcs0:                                           
>                                                                                 
>           • shard-dg2: NOTRUN -> [26]SKIP ([27]i915#8414) +6 other tests skip   
>      • igt@drm_fdinfo@most-busy-idle-check-all:                                 
>                                                                                 
>           • shard-rkl: NOTRUN -> [28]FAIL ([29]i915#12179)                      
>      • igt@drm_fdinfo@most-busy-idle-check-all@rcs0:                            
>                                                                                 
>           • shard-rkl: NOTRUN -> [30]FAIL ([31]i915#7742)                       
>      • igt@drm_fdinfo@virtual-busy-idle-all:                                    
>                                                                                 
>           • shard-mtlp: NOTRUN -> [32]SKIP ([33]i915#8414)                      
>      • igt@gem_busy@semaphore:                                                  
>                                                                                 
>           • shard-dg1: NOTRUN -> [34]SKIP ([35]i915#3936)                       
>      • igt@gem_caching@writes:                                                  
>                                                                                 
>           • shard-mtlp: NOTRUN -> [36]SKIP ([37]i915#4873)                      
>      • igt@gem_ccs@block-copy-compressed:                                       
>                                                                                 
>           • shard-mtlp: NOTRUN -> [38]SKIP ([39]i915#3555 / [40]i915#9323)      
>      • igt@gem_ccs@ctrl-surf-copy:                                              
>                                                                                 
>           • shard-rkl: NOTRUN -> [41]SKIP ([42]i915#3555 / [43]i915#9323) +1    
>             other test skip                                                     
>      • igt@gem_ccs@ctrl-surf-copy-new-ctx:                                      
>                                                                                 
>           • shard-dg1: NOTRUN -> [44]SKIP ([45]i915#9323)                       
>      • igt@gem_ctx_engines@invalid-engines:                                     
>                                                                                 
>           • shard-tglu: [46]PASS -> [47]FAIL ([48]i915#12027)                   
>      • igt@gem_ctx_persistence@hang:                                            
>                                                                                 
>           • shard-mtlp: NOTRUN -> [49]SKIP ([50]i915#8555)                      
>      • igt@gem_ctx_persistence@heartbeat-stop:                                  
>                                                                                 
>           • shard-dg1: NOTRUN -> [51]SKIP ([52]i915#8555)                       
>      • igt@gem_ctx_persistence@hostile:                                         
>                                                                                 
>           • shard-dg1: NOTRUN -> [53]FAIL ([54]i915#11980)                      
>      • igt@gem_ctx_sseu@invalid-sseu:                                           
>                                                                                 
>           • shard-dg1: NOTRUN -> [55]SKIP ([56]i915#280)                        
>      • igt@gem_eio@hibernate:                                                   
>                                                                                 
>           • shard-rkl: NOTRUN -> [57]ABORT ([58]i915#7975 / [59]i915#8213)      
>      • igt@gem_eio@unwedge-stress:                                              
>                                                                                 
>           • shard-dg1: [60]PASS -> [61]FAIL ([62]i915#5784)                     
>      • igt@gem_exec_big@single:                                                 
>                                                                                 
>           • shard-tglu: [63]PASS -> [64]ABORT ([65]i915#11713)                  
>      • igt@gem_exec_capture@capture-invisible@smem0:                            
>                                                                                 
>           • shard-glk: NOTRUN -> [66]SKIP ([67]i915#6334) +1 other test skip    
>      • igt@gem_exec_fair@basic-none:                                            
>                                                                                 
>           • shard-dg2: NOTRUN -> [68]SKIP ([69]i915#3539 / [70]i915#4852)       
>      • igt@gem_exec_fair@basic-none-share:                                      
>                                                                                 
>           • shard-rkl: [71]PASS -> [72]FAIL ([73]i915#2842) +4 other tests      
>             fail                                                                
>      • igt@gem_exec_fair@basic-pace-share:                                      
>                                                                                 
>           • shard-tglu: [74]PASS -> [75]FAIL ([76]i915#2842) +1 other test      
>             fail                                                                
>      • igt@gem_exec_fair@basic-pace-solo:                                       
>                                                                                 
>           • shard-dg1: NOTRUN -> [77]SKIP ([78]i915#3539)                       
>      • igt@gem_exec_fair@basic-throttle@rcs0:                                   
>                                                                                 
>           • shard-glk: NOTRUN -> [79]FAIL ([80]i915#2842) +2 other tests fail   
>      • igt@gem_exec_flush@basic-uc-rw-default:                                  
>                                                                                 
>           • shard-dg1: NOTRUN -> [81]SKIP ([82]i915#3539 / [83]i915#4852) +4    
>             other tests skip                                                    
>      • igt@gem_exec_reloc@basic-range-active:                                   
>                                                                                 
>           • shard-mtlp: NOTRUN -> [84]SKIP ([85]i915#3281) +5 other tests       
>             skip                                                                
>      • igt@gem_exec_reloc@basic-wc-read:                                        
>                                                                                 
>           • shard-dg1: NOTRUN -> [86]SKIP ([87]i915#3281) +15 other tests       
>             skip                                                                
>      • igt@gem_exec_reloc@basic-wc-read-noreloc:                                
>                                                                                 
>           • shard-rkl: NOTRUN -> [88]SKIP ([89]i915#3281) +12 other tests       
>             skip                                                                
>      • igt@gem_exec_reloc@basic-write-read:                                     
>                                                                                 
>           • shard-dg2: NOTRUN -> [90]SKIP ([91]i915#3281)                       
>      • igt@gem_exec_schedule@preempt-queue:                                     
>                                                                                 
>           • shard-dg1: NOTRUN -> [92]SKIP ([93]i915#4812) +4 other tests skip   
>      • igt@gem_exec_schedule@preempt-queue-contexts:                            
>                                                                                 
>           • shard-mtlp: NOTRUN -> [94]SKIP ([95]i915#4537 / [96]i915#4812)      
>      • igt@gem_fenced_exec_thrash@no-spare-fences:                              
>                                                                                 
>           • shard-dg1: NOTRUN -> [97]SKIP ([98]i915#4860)                       
>      • igt@gem_fenced_exec_thrash@no-spare-fences-busy:                         
>                                                                                 
>           • shard-mtlp: NOTRUN -> [99]SKIP ([100]i915#4860)                     
>      • igt@gem_lmem_evict@dontneed-evict-race:                                  
>                                                                                 
>           • shard-rkl: NOTRUN -> [101]SKIP ([102]i915#4613 / [103]i915#7582)    
>      • igt@gem_lmem_swapping@heavy-verify-multi-ccs:                            
>                                                                                 
>           • shard-glk: NOTRUN -> [104]SKIP ([105]i915#4613) +5 other tests      
>             skip                                                                
>      • igt@gem_lmem_swapping@parallel-multi:                                    
>                                                                                 
>           • shard-mtlp: NOTRUN -> [106]SKIP ([107]i915#4613) +1 other test      
>             skip                                                                
>      • igt@gem_lmem_swapping@parallel-random-engines:                           
>                                                                                 
>           • shard-rkl: NOTRUN -> [108]SKIP ([109]i915#4613) +3 other tests      
>             skip                                                                
>      • igt@gem_lmem_swapping@smem-oom@lmem0:                                    
>                                                                                 
>           • shard-dg1: NOTRUN -> [110]TIMEOUT ([111]i915#5493) +1 other test    
>             timeout                                                             
>      • igt@gem_media_vme:                                                       
>                                                                                 
>           • shard-rkl: NOTRUN -> [112]SKIP ([113]i915#284)                      
>      • igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:                            
>                                                                                 
>           • shard-dg1: NOTRUN -> [114]SKIP ([115]i915#4077) +10 other tests     
>             skip                                                                
>      • igt@gem_mmap_gtt@ptrace:                                                 
>                                                                                 
>           • shard-mtlp: NOTRUN -> [116]SKIP ([117]i915#4077)                    
>      • igt@gem_mmap_wc@write-gtt-read-wc:                                       
>                                                                                 
>           • shard-mtlp: NOTRUN -> [118]SKIP ([119]i915#4083)                    
>      • igt@gem_mmap_wc@write-read-distinct:                                     
>                                                                                 
>           • shard-dg1: NOTRUN -> [120]SKIP ([121]i915#4083) +4 other tests      
>             skip                                                                
>      • igt@gem_partial_pwrite_pread@reads-snoop:                                
>                                                                                 
>           • shard-dg1: NOTRUN -> [122]SKIP ([123]i915#3282) +10 other tests     
>             skip                                                                
>      • igt@gem_partial_pwrite_pread@writes-after-reads-snoop:                   
>                                                                                 
>           • shard-dg2: NOTRUN -> [124]SKIP ([125]i915#3282)                     
>      • igt@gem_pread@display:                                                   
>                                                                                 
>           • shard-mtlp: NOTRUN -> [126]SKIP ([127]i915#3282)                    
>      • igt@gem_pread@exhaustion:                                                
>                                                                                 
>           • shard-glk: NOTRUN -> [128]WARN ([129]i915#2658)                     
>      • igt@gem_pwrite@basic-random:                                             
>                                                                                 
>           • shard-rkl: NOTRUN -> [130]SKIP ([131]i915#3282) +7 other tests      
>             skip                                                                
>      • igt@gem_pxp@create-regular-context-2:                                    
>                                                                                 
>           • shard-mtlp: NOTRUN -> [132]SKIP ([133]i915#4270) +1 other test      
>             skip                                                                
>      • igt@gem_pxp@fail-invalid-protected-context:                              
>                                                                                 
>           • shard-dg2: NOTRUN -> [134]SKIP ([135]i915#4270) +1 other test       
>             skip                                                                
>      • igt@gem_pxp@reject-modify-context-protection-off-3:                      
>                                                                                 
>           • shard-dg1: NOTRUN -> [136]SKIP ([137]i915#4270) +4 other tests      
>             skip                                                                
>      • igt@gem_pxp@reject-modify-context-protection-on:                         
>                                                                                 
>           • shard-rkl: NOTRUN -> [138]SKIP ([139]i915#4270) +4 other tests      
>             skip                                                                
>      • igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:                           
>                                                                                 
>           • shard-dg2: NOTRUN -> [140]SKIP ([141]i915#5190 / [142]i915#8428)    
>      • igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:                           
>                                                                                 
>           • shard-mtlp: NOTRUN -> [143]SKIP ([144]i915#8428) +1 other test      
>             skip                                                                
>      • igt@gem_set_tiling_vs_blt@tiled-to-untiled:                              
>                                                                                 
>           • shard-rkl: NOTRUN -> [145]SKIP ([146]i915#8411) +1 other test       
>             skip                                                                
>      • igt@gem_set_tiling_vs_gtt:                                               
>                                                                                 
>           • shard-dg1: NOTRUN -> [147]SKIP ([148]i915#4079) +1 other test       
>             skip                                                                
>      • igt@gem_userptr_blits@forbidden-operations:                              
>                                                                                 
>           • shard-dg1: NOTRUN -> [149]SKIP ([150]i915#3282 / [151]i915#3297)    
>      • igt@gem_userptr_blits@invalid-mmap-offset-unsync:                        
>                                                                                 
>           • shard-mtlp: NOTRUN -> [152]SKIP ([153]i915#3297) +4 other tests     
>             skip                                                                
>      • igt@gem_userptr_blits@map-fixed-invalidate-busy:                         
>                                                                                 
>           • shard-dg1: NOTRUN -> [154]SKIP ([155]i915#3297 / [156]i915#4880)    
>      • igt@gem_userptr_blits@relocations:                                       
>                                                                                 
>           • shard-mtlp: NOTRUN -> [157]SKIP ([158]i915#3281 / [159]i915#3297)   
>           • shard-rkl: NOTRUN -> [160]SKIP ([161]i915#3281 / [162]i915#3297)    
>      • igt@gem_userptr_blits@unsync-unmap-cycles:                               
>                                                                                 
>           • shard-rkl: NOTRUN -> [163]SKIP ([164]i915#3297) +5 other tests      
>             skip                                                                
>      • igt@gen3_render_tiledy_blits:                                            
>                                                                                 
>           • shard-mtlp: NOTRUN -> [165]SKIP +10 other tests skip                
>      • igt@gen9_exec_parse@bb-chained:                                          
>                                                                                 
>           • shard-rkl: NOTRUN -> [166]SKIP ([167]i915#2527) +5 other tests      
>             skip                                                                
>      • igt@gen9_exec_parse@bb-secure:                                           
>                                                                                 
>           • shard-dg1: NOTRUN -> [168]SKIP ([169]i915#2527) +3 other tests      
>             skip                                                                
>      • igt@gen9_exec_parse@bb-start-out:                                        
>                                                                                 
>           • shard-mtlp: NOTRUN -> [170]SKIP ([171]i915#2856)                    
>      • igt@i915_module_load@load:                                               
>                                                                                 
>           • shard-dg1: NOTRUN -> [172]SKIP ([173]i915#6227)                     
>      • igt@i915_module_load@reload-with-fault-injection:                        
>                                                                                 
>           • shard-rkl: [174]PASS -> [175]ABORT ([176]i915#9820)                 
>           • shard-dg1: [177]PASS -> [178]ABORT ([179]i915#9820)                 
>      • igt@i915_module_load@resize-bar:                                         
>                                                                                 
>           • shard-rkl: NOTRUN -> [180]SKIP ([181]i915#6412)                     
>      • igt@i915_pm_freq_api@freq-reset:                                         
>                                                                                 
>           • shard-rkl: NOTRUN -> [182]SKIP ([183]i915#8399)                     
>      • igt@i915_pm_freq_mult@media-freq@gt0:                                    
>                                                                                 
>           • shard-rkl: NOTRUN -> [184]SKIP ([185]i915#6590) +1 other test       
>             skip                                                                
>           • shard-dg1: NOTRUN -> [186]SKIP ([187]i915#6590) +1 other test       
>             skip                                                                
>           • shard-tglu: NOTRUN -> [188]SKIP ([189]i915#6590) +1 other test      
>             skip                                                                
>      • igt@i915_pm_sseu@full-enable:                                            
>                                                                                 
>           • shard-rkl: NOTRUN -> [190]SKIP ([191]i915#4387)                     
>           • shard-dg1: NOTRUN -> [192]SKIP ([193]i915#4387)                     
>           • shard-tglu: NOTRUN -> [194]SKIP ([195]i915#4387)                    
>      • igt@i915_power@sanity:                                                   
>                                                                                 
>           • shard-mtlp: [196]PASS -> [197]SKIP ([198]i915#7984)                 
>      • igt@i915_selftest@live:                                                  
>                                                                                 
>           • shard-mtlp: [199]PASS -> [200]INCOMPLETE ([201]i915#10341)          
>      • igt@i915_selftest@mock:                                                  
>                                                                                 
>           • shard-dg1: NOTRUN -> [202]DMESG-WARN ([203]i915#1982 /              
>             [204]i915#9311)                                                     
>      • igt@i915_selftest@mock@memory_region:                                    
>                                                                                 
>           • shard-dg1: NOTRUN -> [205]DMESG-WARN ([206]i915#9311)               
>      • igt@i915_suspend@basic-s3-without-i915:                                  
>                                                                                 
>           • shard-tglu: NOTRUN -> [207]INCOMPLETE ([208]i915#7443)              
>      • igt@kms_addfb_basic@basic-x-tiled-legacy:                                
>                                                                                 
>           • shard-dg2: NOTRUN -> [209]SKIP ([210]i915#4212)                     
>      • igt@kms_addfb_basic@basic-y-tiled-legacy:                                
>                                                                                 
>           • shard-dg1: NOTRUN -> [211]SKIP ([212]i915#4215)                     
>      • igt@kms_addfb_basic@framebuffer-vs-set-tiling:                           
>                                                                                 
>           • shard-dg1: NOTRUN -> [213]SKIP ([214]i915#4212) +3 other tests      
>             skip                                                                
>      • igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>                                                                                 
>           • shard-rkl: NOTRUN -> [215]SKIP ([216]i915#8709) +3 other tests      
>             skip                                                                
>      • igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc:
>                                                                                 
>           • shard-dg2: NOTRUN -> [217]SKIP ([218]i915#8709) +11 other tests     
>             skip                                                                
>      • igt@kms_atomic_transition@modeset-transition-fencing:                    
>                                                                                 
>           • shard-glk: [219]PASS -> [220]FAIL ([221]i915#12238)                 
>      • igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:         
>                                                                                 
>           • shard-glk: [222]PASS -> [223]FAIL ([224]i915#11859)                 
>      • igt@kms_atomic_transition@plane-all-modeset-transition-fencing:          
>                                                                                 
>           • shard-snb: [225]PASS -> [226]FAIL ([227]i915#5956) +1 other test    
>             fail                                                                
>      • igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:  
>                                                                                 
>           • shard-glk: NOTRUN -> [228]SKIP ([229]i915#1769)                     
>      • igt@kms_big_fb@4-tiled-64bpp-rotate-0:                                   
>                                                                                 
>           • shard-tglu: NOTRUN -> [230]SKIP ([231]i915#5286)                    
>      • igt@kms_big_fb@4-tiled-64bpp-rotate-90:                                  
>                                                                                 
>           • shard-dg1: NOTRUN -> [232]SKIP ([233]i915#4538 / [234]i915#5286)    
>             +6 other tests skip                                                 
>      • igt@kms_big_fb@4-tiled-8bpp-rotate-90:                                   
>                                                                                 
>           • shard-rkl: NOTRUN -> [235]SKIP ([236]i915#5286) +6 other tests      
>             skip                                                                
>      • igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:                       
>                                                                                 
>           • shard-dg1: NOTRUN -> [237]SKIP ([238]i915#5286)                     
>      • igt@kms_big_fb@x-tiled-32bpp-rotate-270:                                 
>                                                                                 
>           • shard-dg2: NOTRUN -> [239]SKIP +1 other test skip                   
>      • igt@kms_big_fb@y-tiled-64bpp-rotate-270:                                 
>                                                                                 
>           • shard-rkl: NOTRUN -> [240]SKIP ([241]i915#3638) +6 other tests      
>             skip                                                                
>      • igt@kms_big_fb@y-tiled-64bpp-rotate-90:                                  
>                                                                                 
>           • shard-dg1: NOTRUN -> [242]SKIP ([243]i915#3638) +3 other tests      
>             skip                                                                
>      • igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:                      
>                                                                                 
>           • shard-dg1: NOTRUN -> [244]SKIP +57 other tests skip                 
>      • igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:   
>                                                                                 
>           • shard-dg1: NOTRUN -> [245]SKIP ([246]i915#4538) +5 other tests      
>             skip                                                                
>      • igt@kms_big_joiner@invalid-modeset:                                      
>                                                                                 
>           • shard-dg1: NOTRUN -> [247]SKIP ([248]i915#10656) +2 other tests     
>             skip                                                                
>           • shard-rkl: NOTRUN -> [249]SKIP ([250]i915#10656)                    
>      • igt@kms_big_joiner@invalid-modeset-force-joiner:                         
>                                                                                 
>           • shard-dg2: [251]PASS -> [252]SKIP ([253]i915#10656)                 
>      • igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:         
>                                                                                 
>           • shard-dg2: NOTRUN -> [254]SKIP ([255]i915#10307 / [256]i915#10434   
>             / [257]i915#6095) +7 other tests skip                               
>      • igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:                             
>                                                                                 
>           • shard-mtlp: NOTRUN -> [258]SKIP ([259]i915#12042)                   
>      • igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:                                
>                                                                                 
>           • shard-mtlp: NOTRUN -> [260]SKIP ([261]i915#6095) +19 other tests    
>             skip                                                                
>      • igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:        
>                                                                                 
>           • shard-glk: NOTRUN -> [262]SKIP +446 other tests skip                
>      • igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:        
>                                                                                 
>           • shard-dg2: NOTRUN -> [263]SKIP ([264]i915#10307 / [265]i915#6095)   
>             +167 other tests skip                                               
>      • igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:     
>                                                                                 
>           • shard-tglu: NOTRUN -> [266]SKIP ([267]i915#6095) +9 other tests     
>             skip                                                                
>      • igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:                     
>                                                                                 
>           • shard-dg1: NOTRUN -> [268]SKIP ([269]i915#12042) +1 other test      
>             skip                                                                
>      • igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:  
>                                                                                 
>           • shard-dg1: NOTRUN -> [270]SKIP ([271]i915#6095) +92 other tests     
>             skip                                                                
>      • igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:          
>                                                                                 
>           • shard-rkl: NOTRUN -> [272]SKIP ([273]i915#6095) +115 other tests    
>             skip                                                                
>      • igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:                           
>                                                                                 
>           • shard-dg2: NOTRUN -> [274]SKIP ([275]i915#7213) +3 other tests      
>             skip                                                                
>      • igt@kms_cdclk@plane-scaling:                                             
>                                                                                 
>           • shard-dg1: NOTRUN -> [276]SKIP ([277]i915#3742)                     
>      • igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:                  
>                                                                                 
>           • shard-mtlp: NOTRUN -> [278]SKIP ([279]i915#7828) +3 other tests     
>             skip                                                                
>      • igt@kms_chamelium_hpd@dp-hpd:                                            
>                                                                                 
>           • shard-rkl: NOTRUN -> [280]SKIP ([281]i915#7828) +9 other tests      
>             skip                                                                
>      • igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:                            
>                                                                                 
>           • shard-dg1: NOTRUN -> [282]SKIP ([283]i915#7828) +10 other tests     
>             skip                                                                
>      • igt@kms_content_protection@atomic@pipe-a-dp-4:                           
>                                                                                 
>           • shard-dg2: NOTRUN -> [284]TIMEOUT ([285]i915#7173)                  
>      • igt@kms_content_protection@content-type-change:                          
>                                                                                 
>           • shard-dg1: NOTRUN -> [286]SKIP ([287]i915#9424)                     
>      • igt@kms_content_protection@dp-mst-type-0:                                
>                                                                                 
>           • shard-dg1: NOTRUN -> [288]SKIP ([289]i915#3299)                     
>      • igt@kms_content_protection@lic-type-0:                                   
>                                                                                 
>           • shard-mtlp: NOTRUN -> [290]SKIP ([291]i915#6944 / [292]i915#9424)   
>           • shard-rkl: NOTRUN -> [293]SKIP ([294]i915#9424) +1 other test       
>             skip                                                                
>      • igt@kms_cursor_crc@cursor-offscreen-512x170:                             
>                                                                                 
>           • shard-dg1: NOTRUN -> [295]SKIP ([296]i915#11453)                    
>      • igt@kms_cursor_crc@cursor-random-32x10:                                  
>                                                                                 
>           • shard-mtlp: NOTRUN -> [297]SKIP ([298]i915#3555 / [299]i915#8814)   
>      • igt@kms_cursor_crc@cursor-random-32x32:                                  
>                                                                                 
>           • shard-dg1: NOTRUN -> [300]SKIP ([301]i915#3555) +6 other tests      
>             skip                                                                
>      • igt@kms_cursor_crc@cursor-random-512x512:                                
>                                                                                 
>           • shard-rkl: NOTRUN -> [302]SKIP ([303]i915#11453)                    
>      • igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:                          
>                                                                                 
>           • shard-rkl: NOTRUN -> [304]SKIP +31 other tests skip                 
>      • igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:  
>                                                                                 
>           • shard-mtlp: NOTRUN -> [305]SKIP ([306]i915#9809) +1 other test      
>             skip                                                                
>      • igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:                     
>                                                                                 
>           • shard-rkl: NOTRUN -> [307]SKIP ([308]i915#9067)                     
>      • igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:              
>                                                                                 
>           • shard-rkl: NOTRUN -> [309]SKIP ([310]i915#4103)                     
>      • igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:       
>                                                                                 
>           • shard-dg1: NOTRUN -> [311]DMESG-WARN ([312]i915#4423)               
>      • igt@kms_dirtyfb@drrs-dirtyfb-ioctl:                                      
>                                                                                 
>           • shard-dg1: NOTRUN -> [313]SKIP ([314]i915#9723)                     
>      • igt@kms_display_modes@extended-mode-basic:                               
>                                                                                 
>           • shard-dg2: NOTRUN -> [315]SKIP ([316]i915#3555) +2 other tests      
>             skip                                                                
>      • igt@kms_dsc@dsc-basic:                                                   
>                                                                                 
>           • shard-dg1: NOTRUN -> [317]SKIP ([318]i915#3555 / [319]i915#3840)    
>      • igt@kms_dsc@dsc-fractional-bpp-with-bpc:                                 
>                                                                                 
>           • shard-rkl: NOTRUN -> [320]SKIP ([321]i915#3840)                     
>           • shard-mtlp: NOTRUN -> [322]SKIP ([323]i915#3840)                    
>      • igt@kms_dsc@dsc-with-output-formats-with-bpc:                            
>                                                                                 
>           • shard-rkl: NOTRUN -> [324]SKIP ([325]i915#3840 / [326]i915#9053)    
>      • igt@kms_fbcon_fbt@psr-suspend:                                           
>                                                                                 
>           • shard-dg1: NOTRUN -> [327]SKIP ([328]i915#3469)                     
>      • igt@kms_feature_discovery@chamelium:                                     
>                                                                                 
>           • shard-dg1: NOTRUN -> [329]SKIP ([330]i915#4854)                     
>      • igt@kms_feature_discovery@display-2x:                                    
>                                                                                 
>           • shard-rkl: NOTRUN -> [331]SKIP ([332]i915#1839)                     
>      • igt@kms_feature_discovery@dp-mst:                                        
>                                                                                 
>           • shard-dg1: NOTRUN -> [333]SKIP ([334]i915#9337)                     
>      • igt@kms_feature_discovery@psr1:                                          
>                                                                                 
>           • shard-rkl: NOTRUN -> [335]SKIP ([336]i915#658)                      
>           • shard-dg1: NOTRUN -> [337]SKIP ([338]i915#658)                      
>      • igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:               
>                                                                                 
>           • shard-mtlp: NOTRUN -> [339]SKIP ([340]i915#3637)                    
>      • igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:               
>                                                                                 
>           • shard-glk: NOTRUN -> [341]FAIL ([342]i915#79) +1 other test fail    
>      • igt@kms_flip@2x-modeset-vs-vblank-race:                                  
>                                                                                 
>           • shard-dg1: NOTRUN -> [343]SKIP ([344]i915#9934) +5 other tests      
>             skip                                                                
>      • igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:     
>                                                                                 
>           • shard-mtlp: NOTRUN -> [345]SKIP ([346]i915#2672 / [347]i915#3555    
>             / [348]i915#8813) +1 other test skip                                
>      • igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>                                                                                 
>           • shard-rkl: NOTRUN -> [349]SKIP ([350]i915#2672) +4 other tests      
>             skip                                                                
>      • igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:    
>                                                                                 
>           • shard-dg1: NOTRUN -> [351]SKIP ([352]i915#2587 / [353]i915#2672 /   
>             [354]i915#3555) +1 other test skip                                  
>      • igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:       
>                                                                                 
>           • shard-dg1: NOTRUN -> [355]SKIP ([356]i915#2672 / [357]i915#3555)    
>             +2 other tests skip                                                 
>      • igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
>                                                                                 
>           • shard-dg1: NOTRUN -> [358]SKIP ([359]i915#2587 / [360]i915#2672)    
>             +4 other tests skip                                                 
>      • igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>                                                                                 
>           • shard-rkl: NOTRUN -> [361]SKIP ([362]i915#2672 / [363]i915#3555)    
>             +4 other tests skip                                                 
>      • igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>                                                                                 
>           • shard-mtlp: NOTRUN -> [364]SKIP ([365]i915#2672) +1 other test      
>             skip                                                                
>      • igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:             
>                                                                                 
>           • shard-mtlp: NOTRUN -> [366]SKIP ([367]i915#1825) +7 other tests     
>             skip                                                                
>      • igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:     
>                                                                                 
>           • shard-rkl: NOTRUN -> [368]SKIP ([369]i915#1825) +41 other tests     
>             skip                                                                
>      • igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:          
>                                                                                 
>           • shard-tglu: NOTRUN -> [370]SKIP +4 other tests skip                 
>      • igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:  
>                                                                                 
>           • shard-dg2: NOTRUN -> [371]SKIP ([372]i915#8708)                     
>      • igt@kms_frontbuffer_tracking@fbcpsr-2p-rte:                              
>                                                                                 
>           • shard-dg2: NOTRUN -> [373]SKIP ([374]i915#5354) +2 other tests      
>             skip                                                                
>      • igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:                  
>                                                                                 
>           • shard-dg1: NOTRUN -> [375]SKIP ([376]i915#3458) +23 other tests     
>             skip                                                                
>      • igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:                            
>                                                                                 
>           • shard-rkl: NOTRUN -> [377]SKIP ([378]i915#5439)                     
>           • shard-dg1: NOTRUN -> [379]SKIP ([380]i915#5439)                     
>      • igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:    
>                                                                                 
>           • shard-mtlp: NOTRUN -> [381]SKIP ([382]i915#8708)                    
>      • igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:    
>                                                                                 
>           • shard-dg1: NOTRUN -> [383]SKIP ([384]i915#8708) +19 other tests     
>             skip                                                                
>      • igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:      
>                                                                                 
>           • shard-dg2: NOTRUN -> [385]SKIP ([386]i915#3458)                     
>      • igt@kms_frontbuffer_tracking@psr-modesetfrombusy:                        
>                                                                                 
>           • shard-rkl: NOTRUN -> [387]SKIP ([388]i915#3023) +23 other tests     
>             skip                                                                
>      • igt@kms_hdmi_inject@inject-audio:                                        
>                                                                                 
>           • shard-dg1: NOTRUN -> [389]SKIP ([390]i915#433)                      
>      • igt@kms_hdr@bpc-switch-dpms:                                             
>                                                                                 
>           • shard-dg1: NOTRUN -> [391]SKIP ([392]i915#3555 / [393]i915#8228)    
>      • igt@kms_hdr@invalid-metadata-sizes:                                      
>                                                                                 
>           • shard-rkl: NOTRUN -> [394]SKIP ([395]i915#3555 / [396]i915#8228)    
>             +1 other test skip                                                  
>      • igt@kms_hdr@static-toggle-dpms:                                          
>                                                                                 
>           • shard-dg2: [397]PASS -> [398]SKIP ([399]i915#3555 /                 
>             [400]i915#8228)                                                     
>      • igt@kms_multipipe_modeset@basic-max-pipe-crc-check:                      
>                                                                                 
>           • shard-dg1: NOTRUN -> [401]SKIP ([402]i915#1839) +1 other test       
>             skip                                                                
>      • igt@kms_panel_fitting@atomic-fastset:                                    
>                                                                                 
>           • shard-dg1: NOTRUN -> [403]SKIP ([404]i915#6301)                     
>      • igt@kms_plane_lowres@tiling-yf:                                          
>                                                                                 
>           • shard-rkl: NOTRUN -> [405]SKIP ([406]i915#3555) +3 other tests      
>             skip                                                                
>      • igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:                
>                                                                                 
>           • shard-rkl: NOTRUN -> [407]FAIL ([408]i915#8292) +1 other test       
>             fail                                                                
>      • igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a:   
>                                                                                 
>           • shard-rkl: NOTRUN -> [409]SKIP ([410]i915#12247) +2 other tests     
>             skip                                                                
>      • igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d: 
>                                                                                 
>           • shard-dg1: NOTRUN -> [411]SKIP ([412]i915#12247) +4 other tests     
>             skip                                                                
>      • igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:         
>                                                                                 
>           • shard-mtlp: NOTRUN -> [413]SKIP ([414]i915#6953)                    
>      • igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a:  
>                                                                                 
>           • shard-mtlp: NOTRUN -> [415]SKIP ([416]i915#12247) +8 other tests    
>             skip                                                                
>      • igt@kms_pm_backlight@basic-brightness:                                   
>                                                                                 
>           • shard-dg1: NOTRUN -> [417]SKIP ([418]i915#5354)                     
>      • igt@kms_pm_backlight@fade-with-dpms:                                     
>                                                                                 
>           • shard-rkl: NOTRUN -> [419]SKIP ([420]i915#5354)                     
>      • igt@kms_pm_dc@dc3co-vpb-simulation:                                      
>                                                                                 
>           • shard-dg1: NOTRUN -> [421]SKIP ([422]i915#9685)                     
>      • igt@kms_pm_dc@dc5-psr:                                                   
>                                                                                 
>           • shard-rkl: NOTRUN -> [423]SKIP ([424]i915#9685) +1 other test       
>             skip                                                                
>      • igt@kms_pm_dc@dc6-dpms:                                                  
>                                                                                 
>           • shard-tglu: [425]PASS -> [426]FAIL ([427]i915#9295)                 
>      • igt@kms_pm_lpsp@kms-lpsp:                                                
>                                                                                 
>           • shard-rkl: [428]PASS -> [429]SKIP ([430]i915#9340)                  
>      • igt@kms_pm_lpsp@screens-disabled:                                        
>                                                                                 
>           • shard-dg1: NOTRUN -> [431]SKIP ([432]i915#8430)                     
>      • igt@kms_pm_rpm@dpms-lpsp:                                                
>                                                                                 
>           • shard-rkl: [433]PASS -> [434]SKIP ([435]i915#9519) +1 other test    
>             skip                                                                
>      • igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:                                 
>                                                                                 
>           • shard-rkl: NOTRUN -> [436]SKIP ([437]i915#9519)                     
>           • shard-tglu: NOTRUN -> [438]SKIP ([439]i915#9519)                    
>      • igt@kms_pm_rpm@modeset-non-lpsp-stress:                                  
>                                                                                 
>           • shard-dg2: [440]PASS -> [441]SKIP ([442]i915#9519) +1 other test    
>             skip                                                                
>      • igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf:              
>                                                                                 
>           • shard-rkl: NOTRUN -> [443]SKIP ([444]i915#11520) +3 other tests     
>             skip                                                                
>      • igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-sf@psr2-pipe-b-edp-1:   
>                                                                                 
>           • shard-mtlp: NOTRUN -> [445]SKIP ([446]i915#9808) +2 other tests     
>             skip                                                                
>      • igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf:       
>                                                                                 
>           • shard-dg2: NOTRUN -> [447]SKIP ([448]i915#11520)                    
>      • igt@kms_psr2_sf@overlay-plane-move-continuous-sf:                        
>                                                                                 
>           • shard-dg1: NOTRUN -> [449]SKIP ([450]i915#11520) +5 other tests     
>             skip                                                                
>      • igt@kms_psr2_su@page_flip-nv12:                                          
>                                                                                 
>           • shard-rkl: NOTRUN -> [451]SKIP ([452]i915#9683)                     
>      • igt@kms_psr2_su@page_flip-xrgb8888:                                      
>                                                                                 
>           • shard-dg1: NOTRUN -> [453]SKIP ([454]i915#9683)                     
>      • igt@kms_psr@fbc-psr2-sprite-plane-move:                                  
>                                                                                 
>           • shard-mtlp: NOTRUN -> [455]SKIP ([456]i915#9688) +4 other tests     
>             skip                                                                
>      • igt@kms_psr@psr2-cursor-mmap-gtt:                                        
>                                                                                 
>           • shard-rkl: NOTRUN -> [457]SKIP ([458]i915#1072 / [459]i915#9732)    
>             +23 other tests skip                                                
>           • shard-tglu: NOTRUN -> [460]SKIP ([461]i915#9732) +2 other tests     
>             skip                                                                
>      • igt@kms_psr@psr2-sprite-mmap-gtt:                                        
>                                                                                 
>           • shard-dg1: NOTRUN -> [462]SKIP ([463]i915#1072 / [464]i915#9732)    
>             +25 other tests skip                                                
>      • igt@kms_rotation_crc@primary-rotation-270:                               
>                                                                                 
>           • shard-mtlp: NOTRUN -> [465]SKIP ([466]i915#4235)                    
>      • igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:                      
>                                                                                 
>           • shard-dg1: NOTRUN -> [467]SKIP ([468]i915#5289) +2 other tests      
>             skip                                                                
>      • igt@kms_tiled_display@basic-test-pattern:                                
>                                                                                 
>           • shard-rkl: NOTRUN -> [469]SKIP ([470]i915#8623)                     
>      • igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:                  
>                                                                                 
>           • shard-snb: [471]PASS -> [472]FAIL ([473]i915#9196) +1 other test    
>             fail                                                                
>      • igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:                  
>                                                                                 
>           • shard-tglu: [474]PASS -> [475]FAIL ([476]i915#9196)                 
>      • igt@kms_vrr@lobf:                                                        
>                                                                                 
>           • shard-mtlp: NOTRUN -> [477]SKIP ([478]i915#11920)                   
>      • igt@kms_vrr@seamless-rr-switch-drrs:                                     
>                                                                                 
>           • shard-rkl: NOTRUN -> [479]SKIP ([480]i915#9906)                     
>      • igt@kms_writeback@writeback-check-output:                                
>                                                                                 
>           • shard-dg1: NOTRUN -> [481]SKIP ([482]i915#2437)                     
>           • shard-glk: NOTRUN -> [483]SKIP ([484]i915#2437)                     
>      • igt@kms_writeback@writeback-check-output-xrgb2101010:                    
>                                                                                 
>           • shard-dg1: NOTRUN -> [485]SKIP ([486]i915#2437 / [487]i915#9412)    
>      • igt@kms_writeback@writeback-fb-id-xrgb2101010:                           
>                                                                                 
>           • shard-rkl: NOTRUN -> [488]SKIP ([489]i915#2437 / [490]i915#9412)    
>           • shard-mtlp: NOTRUN -> [491]SKIP ([492]i915#2437 / [493]i915#9412)   
>      • igt@perf@unprivileged-single-ctx-counters:                               
>                                                                                 
>           • shard-rkl: NOTRUN -> [494]SKIP ([495]i915#2433)                     
>      • igt@perf_pmu@busy-double-start:                                          
>                                                                                 
>           • shard-mtlp: NOTRUN -> [496]FAIL ([497]i915#4349) +2 other tests     
>             fail                                                                
>      • igt@perf_pmu@cpu-hotplug:                                                
>                                                                                 
>           • shard-rkl: NOTRUN -> [498]SKIP ([499]i915#8850)                     
>           • shard-dg1: NOTRUN -> [500]SKIP ([501]i915#8850)                     
>      • igt@prime_vgem@basic-fence-flip:                                         
>                                                                                 
>           • shard-dg1: NOTRUN -> [502]SKIP ([503]i915#3708) +2 other tests      
>             skip                                                                
>      • igt@prime_vgem@basic-write:                                              
>                                                                                 
>           • shard-rkl: NOTRUN -> [504]SKIP ([505]i915#3291 / [506]i915#3708)    
>      • igt@prime_vgem@coherency-gtt:                                            
>                                                                                 
>           • shard-rkl: NOTRUN -> [507]SKIP ([508]i915#3708) +1 other test       
>             skip                                                                
>           • shard-dg1: NOTRUN -> [509]SKIP ([510]i915#3708 / [511]i915#4077)    
>      • igt@sriov_basic@bind-unbind-vf:                                          
>                                                                                 
>           • shard-rkl: NOTRUN -> [512]SKIP ([513]i915#9917)                     
>      • igt@sriov_basic@enable-vfs-autoprobe-off:                                
>                                                                                 
>           • shard-dg1: NOTRUN -> [514]SKIP ([515]i915#9917)                     
>                                                                                 
>     Possible fixes                                                              
>                                                                                 
>      • igt@gem_barrier_race@remote-request:                                     
>                                                                                 
>           • shard-glk: [516]ABORT -> [517]PASS                                  
>      • igt@gem_barrier_race@remote-request@rcs0:                                
>                                                                                 
>           • shard-glk: [518]ABORT ([519]i915#8190) -> [520]PASS                 
>      • igt@gem_exec_fair@basic-pace@vcs0:                                       
>                                                                                 
>           • shard-rkl: [521]FAIL ([522]i915#2842) -> [523]PASS                  
>      • igt@gem_exec_suspend@basic-s3:                                           
>                                                                                 
>           • shard-dg2: [524]SKIP ([525]i915#2575) -> [526]PASS +13 other        
>             tests pass                                                          
>      • igt@gem_mmap_offset@clear:                                               
>                                                                                 
>           • shard-mtlp: [527]ABORT ([528]i915#10729) -> [529]PASS               
>      • igt@gem_mmap_offset@clear@smem0:                                         
>                                                                                 
>           • shard-mtlp: [530]ABORT ([531]i915#10029 / [532]i915#10729) ->       
>             [533]PASS                                                           
>      • igt@i915_module_load@reload-with-fault-injection:                        
>                                                                                 
>           • shard-dg2: [534]ABORT ([535]i915#9820) -> [536]PASS                 
>      • igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:  
>                                                                                 
>           • shard-tglu: [537]FAIL ([538]i915#11808) -> [539]PASS +1 other       
>             test pass                                                           
>      • igt@kms_big_fb@linear-64bpp-rotate-0:                                    
>                                                                                 
>           • shard-dg2: [540]SKIP -> [541]PASS +2 other tests pass               
>      • igt@kms_color@deep-color:                                                
>                                                                                 
>           • shard-dg2: [542]SKIP ([543]i915#3555) -> [544]PASS                  
>      • igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:                     
>                                                                                 
>           • shard-glk: [545]FAIL ([546]i915#72) -> [547]PASS                    
>      • igt@kms_dp_aux_dev:                                                      
>                                                                                 
>           • shard-dg2: [548]SKIP ([549]i915#1257) -> [550]PASS                  
>      • igt@kms_hdr@static-toggle:                                               
>                                                                                 
>           • shard-dg2: [551]SKIP ([552]i915#3555 / [553]i915#8228) ->           
>             [554]PASS                                                           
>      • igt@kms_pm_dc@dc9-dpms:                                                  
>                                                                                 
>           • shard-tglu: [555]SKIP ([556]i915#4281) -> [557]PASS                 
>      • igt@kms_pm_lpsp@kms-lpsp:                                                
>                                                                                 
>           • shard-dg2: [558]SKIP ([559]i915#9340) -> [560]PASS                  
>      • igt@kms_pm_rpm@modeset-lpsp:                                             
>                                                                                 
>           • shard-dg2: [561]SKIP ([562]i915#9519) -> [563]PASS                  
>      • igt@kms_pm_rpm@modeset-non-lpsp:                                         
>                                                                                 
>           • shard-rkl: [564]SKIP ([565]i915#9519) -> [566]PASS                  
>      • igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:                  
>                                                                                 
>           • shard-tglu: [567]FAIL ([568]i915#9196) -> [569]PASS                 
>      • igt@sysfs_timeslice_duration@duration@rcs0:                              
>                                                                                 
>           • shard-dg2: [570]INCOMPLETE -> [571]PASS +1 other test pass          
>                                                                                 
>     Warnings                                                                    
>                                                                                 
>      • igt@drm_fdinfo@busy-idle:                                                
>                                                                                 
>           • shard-dg2: [572]SKIP ([573]i915#11692) -> [574]SKIP                 
>             ([575]i915#8414)                                                    
>      • igt@gem_ctx_engines@invalid-engines:                                     
>                                                                                 
>           • shard-rkl: [576]FAIL ([577]i915#12065) -> [578]FAIL                 
>             ([579]i915#12027)                                                   
>      • igt@gem_exec_fair@basic-pace@rcs0:                                       
>                                                                                 
>           • shard-tglu: [580]FAIL ([581]i915#2842) -> [582]FAIL                 
>             ([583]i915#2876)                                                    
>      • igt@gem_fence_thrash@bo-copy:                                            
>                                                                                 
>           • shard-dg2: [584]SKIP ([585]i915#2575) -> [586]SKIP                  
>             ([587]i915#4860)                                                    
>      • igt@gem_mmap_gtt@basic-read:                                             
>                                                                                 
>           • shard-dg2: [588]SKIP ([589]i915#2575) -> [590]SKIP                  
>             ([591]i915#4077) +1 other test skip                                 
>      • igt@gem_mmap_wc@write-cpu-read-wc-unflushed:                             
>                                                                                 
>           • shard-dg2: [592]SKIP ([593]i915#2575) -> [594]SKIP                  
>             ([595]i915#4083)                                                    
>      • igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:                      
>                                                                                 
>           • shard-dg2: [596]SKIP ([597]i915#2575 / [598]i915#5190) ->           
>             [599]SKIP ([600]i915#5190 / [601]i915#8428)                         
>      • igt@gem_set_tiling_vs_blt@tiled-to-tiled:                                
>                                                                                 
>           • shard-dg2: [602]SKIP ([603]i915#2575) -> [604]SKIP                  
>             ([605]i915#4079)                                                    
>      • igt@gen9_exec_parse@bb-oversize:                                         
>                                                                                 
>           • shard-dg2: [606]SKIP ([607]i915#2575) -> [608]SKIP                  
>             ([609]i915#2856)                                                    
>      • igt@i915_module_load@reload-with-fault-injection:                        
>                                                                                 
>           • shard-tglu: [610]ABORT ([611]i915#10887 / [612]i915#9820) ->        
>             [613]ABORT ([614]i915#9820)                                         
>           • shard-mtlp: [615]ABORT ([616]i915#10131 / [617]i915#9697) ->        
>             [618]ABORT ([619]i915#10131 / [620]i915#10887 / [621]i915#9820)     
>      • igt@i915_selftest@mock:                                                  
>                                                                                 
>           • shard-glk: [622]DMESG-WARN ([623]i915#9311) -> [624]DMESG-WARN      
>             ([625]i915#1982 / [626]i915#9311)                                   
>           • shard-rkl: [627]DMESG-WARN ([628]i915#1982 / [629]i915#9311) ->     
>             [630]DMESG-WARN ([631]i915#9311)                                    
>      • igt@kms_addfb_basic@tile-pitch-mismatch:                                 
>                                                                                 
>           • shard-dg2: [632]SKIP ([633]i915#2575) -> [634]SKIP                  
>             ([635]i915#4212)                                                    
>      • igt@kms_big_fb@y-tiled-32bpp-rotate-270:                                 
>                                                                                 
>           • shard-dg2: [636]SKIP ([637]i915#5190) -> [638]SKIP                  
>             ([639]i915#4538 / [640]i915#5190) +1 other test skip                
>      • igt@kms_chamelium_edid@dp-edid-read:                                     
>                                                                                 
>           • shard-dg2: [641]SKIP ([642]i915#2575) -> [643]SKIP                  
>             ([644]i915#7828)                                                    
>      • igt@kms_content_protection@atomic:                                       
>                                                                                 
>           • shard-dg2: [645]SKIP ([646]i915#7118 / [647]i915#9424) ->           
>             [648]TIMEOUT ([649]i915#7173)                                       
>      • igt@kms_content_protection@type1:                                        
>                                                                                 
>           • shard-dg2: [650]SKIP ([651]i915#2575) -> [652]SKIP                  
>             ([653]i915#7118 / [654]i915#9424)                                   
>      • igt@kms_cursor_crc@cursor-onscreen-512x512:                              
>                                                                                 
>           • shard-dg2: [655]SKIP ([656]i915#11453 / [657]i915#3359) ->          
>             [658]SKIP ([659]i915#11453) +2 other tests skip                     
>      • igt@kms_cursor_crc@cursor-random-512x512:                                
>                                                                                 
>           • shard-dg2: [660]SKIP ([661]i915#11453) -> [662]SKIP                 
>             ([663]i915#11453 / [664]i915#3359)                                  
>      • igt@kms_cursor_crc@cursor-sliding-512x170:                               
>                                                                                 
>           • shard-dg2: [665]SKIP ([666]i915#2575) -> [667]SKIP                  
>             ([668]i915#11453)                                                   
>      • igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:                           
>                                                                                 
>           • shard-dg2: [669]SKIP ([670]i915#2575) -> [671]SKIP                  
>             ([672]i915#5354) +1 other test skip                                 
>      • igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:   
>                                                                                 
>           • shard-dg2: [673]SKIP ([674]i915#10433 / [675]i915#3458) ->          
>             [676]SKIP ([677]i915#3458) +3 other tests skip                      
>      • igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:   
>                                                                                 
>           • shard-dg2: [678]SKIP -> [679]SKIP ([680]i915#5354) +1 other test    
>             skip                                                                
>      • igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:                  
>                                                                                 
>           • shard-dg2: [681]SKIP -> [682]SKIP ([683]i915#3458)                  
>      • igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:             
>                                                                                 
>           • shard-dg2: [684]SKIP ([685]i915#3458) -> [686]SKIP                  
>             ([687]i915#10433 / [688]i915#3458) +1 other test skip               
>      • igt@kms_hdr@static-toggle-suspend:                                       
>                                                                                 
>           • shard-dg2: [689]SKIP ([690]i915#2575) -> [691]SKIP                  
>             ([692]i915#3555 / [693]i915#8228)                                   
>      • igt@kms_multipipe_modeset@basic-max-pipe-crc-check:                      
>                                                                                 
>           • shard-rkl: [694]SKIP ([695]i915#4070 / [696]i915#4816) ->           
>             [697]SKIP ([698]i915#4816)                                          
>      • igt@kms_pm_dc@dc6-dpms:                                                  
>                                                                                 
>           • shard-dg2: [699]SKIP -> [700]SKIP ([701]i915#5978)                  
>           • shard-rkl: [702]FAIL ([703]i915#9295) -> [704]SKIP                  
>             ([705]i915#3361)                                                    
>      • igt@kms_psr@fbc-pr-sprite-blt:                                           
>                                                                                 
>           • shard-dg2: [706]SKIP ([707]i915#1072 / [708]i915#9732) ->           
>             [709]SKIP ([710]i915#1072 / [711]i915#9673 / [712]i915#9732) +15    
>             other tests skip                                                    
>      • igt@kms_psr@psr-cursor-render:                                           
>                                                                                 
>           • shard-dg2: [713]SKIP -> [714]SKIP ([715]i915#1072 /                 
>             [716]i915#9732) +3 other tests skip                                 
>      • igt@kms_psr@psr2-cursor-blt:                                             
>                                                                                 
>           • shard-dg2: [717]SKIP ([718]i915#1072 / [719]i915#9673 /             
>             [720]i915#9732) -> [721]SKIP ([722]i915#1072 / [723]i915#9732)      
>             +14 other tests skip                                                
>      • igt@kms_setmode@invalid-clone-single-crtc:                               
>                                                                                 
>           • shard-dg2: [724]SKIP ([725]i915#2575) -> [726]SKIP                  
>             ([727]i915#3555)                                                    
>      • igt@sriov_basic@enable-vfs-autoprobe-on:                                 
>                                                                                 
>           • shard-dg2: [728]SKIP ([729]i915#2575) -> [730]SKIP                  
>             ([731]i915#9917)                                                    
>                                                                                 
> Build changes                                                                   
>                                                                                 
>      • Linux: CI_DRM_15425 -> Patchwork_138728v1                                
>                                                                                 
>    CI-20190529: 20190529                                                        
>    CI_DRM_15425: 0440590819320d59fd156cfa567eeeab08c2da1d @                     
>    git://anongit.freedesktop.org/gfx-ci/linux                                   
>    IGT_8020: 7860f9a9394da0a18fc0bf0223a79b533e569f95 @                         
>    https://gitlab.freedesktop.org/drm/igt-gpu-tools.git                         
>    Patchwork_138728v1: 0440590819320d59fd156cfa567eeeab08c2da1d @               
>    git://anongit.freedesktop.org/gfx-ci/linux                                   
>    piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @                      
>    git://anongit.freedesktop.org/piglit                                         
> 
> References
> 
>    Visible links
>    1. https://patchwork.freedesktop.org/series/138728/
>    2. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/index.html
>    3. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk2/igt@gem_exec_fair@basic-none.html
>    4. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-6/igt@gem_exec_parallel@engines@userptr.html
>    5. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-11/igt@gem_exec_parallel@engines@userptr.html
>    6. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
>    7. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-3/igt@i915_selftest@live@workarounds.html
>    8. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@api_intel_bb@blit-reloc-purge-cache.html
>    9. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   10. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@api_intel_bb@crc32.html
>   11. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   12. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@device_reset@unbind-cold-reset-rebind.html
>   13. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   14. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@device_reset@unbind-cold-reset-rebind.html
>   15. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   16. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-10/igt@device_reset@unbind-cold-reset-rebind.html
>   17. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   18. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-6/igt@device_reset@unbind-reset-rebind.html
>   19. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-11/igt@device_reset@unbind-reset-rebind.html
>   20. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5507
>   21. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-17/igt@device_reset@unbind-reset-rebind.html
>   22. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11814
>   23. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11815
>   24. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@drm_fdinfo@busy-check-all@bcs0.html
>   25. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   26. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@drm_fdinfo@busy-idle@bcs0.html
>   27. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   28. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html
>   29. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12179
>   30. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>   31. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   32. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@drm_fdinfo@virtual-busy-idle-all.html
>   33. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   34. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@gem_busy@semaphore.html
>   35. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
>   36. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-7/igt@gem_caching@writes.html
>   37. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873
>   38. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_ccs@block-copy-compressed.html
>   39. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   40. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   41. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy.html
>   42. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   43. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   44. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>   45. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   46. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-tglu-10/igt@gem_ctx_engines@invalid-engines.html
>   47. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-5/igt@gem_ctx_engines@invalid-engines.html
>   48. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
>   49. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_ctx_persistence@hang.html
>   50. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   51. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@gem_ctx_persistence@heartbeat-stop.html
>   52. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   53. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@gem_ctx_persistence@hostile.html
>   54. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
>   55. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@gem_ctx_sseu@invalid-sseu.html
>   56. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   57. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@gem_eio@hibernate.html
>   58. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   59. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   60. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg1-13/igt@gem_eio@unwedge-stress.html
>   61. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@gem_eio@unwedge-stress.html
>   62. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   63. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-tglu-9/igt@gem_exec_big@single.html
>   64. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-5/igt@gem_exec_big@single.html
>   65. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>   66. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk8/igt@gem_exec_capture@capture-invisible@smem0.html
>   67. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   68. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-1/igt@gem_exec_fair@basic-none.html
>   69. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   70. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   71. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-rkl-4/igt@gem_exec_fair@basic-none-share.html
>   72. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-5/igt@gem_exec_fair@basic-none-share.html
>   73. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   74. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-tglu-3/igt@gem_exec_fair@basic-pace-share.html
>   75. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-8/igt@gem_exec_fair@basic-pace-share.html
>   76. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   77. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@gem_exec_fair@basic-pace-solo.html
>   78. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   79. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html
>   80. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   81. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@gem_exec_flush@basic-uc-rw-default.html
>   82. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   83. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   84. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_exec_reloc@basic-range-active.html
>   85. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   86. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@gem_exec_reloc@basic-wc-read.html
>   87. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   88. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@gem_exec_reloc@basic-wc-read-noreloc.html
>   89. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   90. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-1/igt@gem_exec_reloc@basic-write-read.html
>   91. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   92. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@gem_exec_schedule@preempt-queue.html
>   93. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   94. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-queue-contexts.html
>   95. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   96. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   97. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@gem_fenced_exec_thrash@no-spare-fences.html
>   98. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   99. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
>  100. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>  101. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@gem_lmem_evict@dontneed-evict-race.html
>  102. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>  103. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>  104. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk3/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>  105. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>  106. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_lmem_swapping@parallel-multi.html
>  107. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>  108. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-engines.html
>  109. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>  110. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
>  111. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>  112. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@gem_media_vme.html
>  113. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>  114. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
>  115. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>  116. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_mmap_gtt@ptrace.html
>  117. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>  118. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_mmap_wc@write-gtt-read-wc.html
>  119. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>  120. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@gem_mmap_wc@write-read-distinct.html
>  121. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>  122. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@gem_partial_pwrite_pread@reads-snoop.html
>  123. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>  124. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
>  125. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>  126. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_pread@display.html
>  127. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>  128. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk3/igt@gem_pread@exhaustion.html
>  129. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>  130. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@gem_pwrite@basic-random.html
>  131. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>  132. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_pxp@create-regular-context-2.html
>  133. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>  134. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-1/igt@gem_pxp@fail-invalid-protected-context.html
>  135. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>  136. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@gem_pxp@reject-modify-context-protection-off-3.html
>  137. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>  138. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-on.html
>  139. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>  140. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-1/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
>  141. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>  142. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>  143. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
>  144. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>  145. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
>  146. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>  147. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@gem_set_tiling_vs_gtt.html
>  148. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>  149. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@gem_userptr_blits@forbidden-operations.html
>  150. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>  151. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>  152. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
>  153. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>  154. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
>  155. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>  156. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>  157. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gem_userptr_blits@relocations.html
>  158. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>  159. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>  160. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@gem_userptr_blits@relocations.html
>  161. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>  162. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>  163. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@gem_userptr_blits@unsync-unmap-cycles.html
>  164. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>  165. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gen3_render_tiledy_blits.html
>  166. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@gen9_exec_parse@bb-chained.html
>  167. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>  168. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@gen9_exec_parse@bb-secure.html
>  169. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>  170. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@gen9_exec_parse@bb-start-out.html
>  171. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>  172. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@i915_module_load@load.html
>  173. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227
>  174. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html
>  175. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>  176. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>  177. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
>  178. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
>  179. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>  180. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@i915_module_load@resize-bar.html
>  181. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>  182. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@i915_pm_freq_api@freq-reset.html
>  183. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>  184. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@i915_pm_freq_mult@media-freq@gt0.html
>  185. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>  186. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@i915_pm_freq_mult@media-freq@gt0.html
>  187. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>  188. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-10/igt@i915_pm_freq_mult@media-freq@gt0.html
>  189. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>  190. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
>  191. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>  192. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@i915_pm_sseu@full-enable.html
>  193. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>  194. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-10/igt@i915_pm_sseu@full-enable.html
>  195. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>  196. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-mtlp-5/igt@i915_power@sanity.html
>  197. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-7/igt@i915_power@sanity.html
>  198. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>  199. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-mtlp-6/igt@i915_selftest@live.html
>  200. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-3/igt@i915_selftest@live.html
>  201. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
>  202. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@i915_selftest@mock.html
>  203. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>  204. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>  205. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@i915_selftest@mock@memory_region.html
>  206. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>  207. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-10/igt@i915_suspend@basic-s3-without-i915.html
>  208. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>  209. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html
>  210. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>  211. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>  212. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>  213. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
>  214. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>  215. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
>  216. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>  217. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc.html
>  218. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>  219. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-glk5/igt@kms_atomic_transition@modeset-transition-fencing.html
>  220. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing.html
>  221. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
>  222. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-glk5/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
>  223. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html
>  224. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>  225. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>  226. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-snb2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>  227. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>  228. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>  229. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>  230. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-10/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>  231. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>  232. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
>  233. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>  234. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>  235. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
>  236. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>  237. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
>  238. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>  239. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-1/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
>  240. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>  241. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>  242. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
>  243. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>  244. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
>  245. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
>  246. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>  247. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@kms_big_joiner@invalid-modeset.html
>  248. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>  249. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@kms_big_joiner@invalid-modeset.html
>  250. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>  251. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_big_joiner@invalid-modeset-force-joiner.html
>  252. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.html
>  253. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>  254. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
>  255. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>  256. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>  257. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>  258. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
>  259. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042
>  260. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-7/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html
>  261. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>  262. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
>  263. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-10/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
>  264. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>  265. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>  266. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-10/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html
>  267. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>  268. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
>  269. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042
>  270. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html
>  271. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>  272. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>  273. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>  274. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-5/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
>  275. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>  276. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@kms_cdclk@plane-scaling.html
>  277. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>  278. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
>  279. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>  280. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd.html
>  281. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>  282. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
>  283. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>  284. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html
>  285. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>  286. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@kms_content_protection@content-type-change.html
>  287. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>  288. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@kms_content_protection@dp-mst-type-0.html
>  289. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>  290. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_content_protection@lic-type-0.html
>  291. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>  292. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>  293. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_content_protection@lic-type-0.html
>  294. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>  295. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>  296. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>  297. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-32x10.html
>  298. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  299. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>  300. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@kms_cursor_crc@cursor-random-32x32.html
>  301. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  302. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
>  303. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>  304. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>  305. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
>  306. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>  307. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>  308. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>  309. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>  310. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>  311. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions.html
>  312. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>  313. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>  314. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>  315. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-1/igt@kms_display_modes@extended-mode-basic.html
>  316. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  317. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_dsc@dsc-basic.html
>  318. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  319. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>  320. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>  321. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>  322. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>  323. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>  324. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>  325. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>  326. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>  327. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_fbcon_fbt@psr-suspend.html
>  328. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>  329. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-17/igt@kms_feature_discovery@chamelium.html
>  330. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>  331. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@kms_feature_discovery@display-2x.html
>  332. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>  333. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@kms_feature_discovery@dp-mst.html
>  334. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>  335. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@kms_feature_discovery@psr1.html
>  336. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>  337. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@kms_feature_discovery@psr1.html
>  338. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>  339. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-7/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
>  340. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>  341. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>  342. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/79
>  343. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_flip@2x-modeset-vs-vblank-race.html
>  344. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
>  345. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
>  346. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>  347. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  348. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>  349. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
>  350. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>  351. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>  352. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>  353. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>  354. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  355. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
>  356. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>  357. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  358. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html
>  359. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>  360. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>  361. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>  362. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>  363. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  364. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
>  365. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>  366. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
>  367. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>  368. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
>  369. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>  370. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
>  371. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html
>  372. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>  373. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-rte.html
>  374. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>  375. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
>  376. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>  377. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>  378. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>  379. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>  380. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>  381. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
>  382. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>  383. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
>  384. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>  385. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
>  386. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>  387. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
>  388. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>  389. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@kms_hdmi_inject@inject-audio.html
>  390. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/433
>  391. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@kms_hdr@bpc-switch-dpms.html
>  392. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  393. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>  394. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html
>  395. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  396. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>  397. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html
>  398. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-8/igt@kms_hdr@static-toggle-dpms.html
>  399. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  400. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>  401. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>  402. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>  403. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_panel_fitting@atomic-fastset.html
>  404. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>  405. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html
>  406. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  407. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
>  408. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>  409. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html
>  410. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>  411. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html
>  412. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>  413. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
>  414. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>  415. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a.html
>  416. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>  417. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-17/igt@kms_pm_backlight@basic-brightness.html
>  418. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>  419. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
>  420. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>  421. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_pm_dc@dc3co-vpb-simulation.html
>  422. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>  423. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_pm_dc@dc5-psr.html
>  424. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>  425. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html
>  426. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
>  427. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>  428. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
>  429. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html
>  430. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>  431. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@kms_pm_lpsp@screens-disabled.html
>  432. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>  433. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html
>  434. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html
>  435. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>  436. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>  437. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>  438. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>  439. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>  440. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>  441. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>  442. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>  443. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf.html
>  444. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>  445. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-sf@psr2-pipe-b-edp-1.html
>  446. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>  447. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-1/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf.html
>  448. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>  449. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-17/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
>  450. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>  451. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_psr2_su@page_flip-nv12.html
>  452. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>  453. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@kms_psr2_su@page_flip-xrgb8888.html
>  454. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>  455. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_psr@fbc-psr2-sprite-plane-move.html
>  456. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>  457. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@kms_psr@psr2-cursor-mmap-gtt.html
>  458. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>  459. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>  460. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-10/igt@kms_psr@psr2-cursor-mmap-gtt.html
>  461. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>  462. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@kms_psr@psr2-sprite-mmap-gtt.html
>  463. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>  464. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>  465. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_rotation_crc@primary-rotation-270.html
>  466. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>  467. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
>  468. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>  469. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern.html
>  470. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>  471. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-snb1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>  472. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>  473. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>  474. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>  475. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>  476. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>  477. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-7/igt@kms_vrr@lobf.html
>  478. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>  479. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
>  480. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>  481. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-14/igt@kms_writeback@writeback-check-output.html
>  482. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>  483. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk8/igt@kms_writeback@writeback-check-output.html
>  484. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>  485. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@kms_writeback@writeback-check-output-xrgb2101010.html
>  486. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>  487. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>  488. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>  489. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>  490. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>  491. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>  492. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>  493. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>  494. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html
>  495. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>  496. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-4/igt@perf_pmu@busy-double-start.html
>  497. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>  498. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@perf_pmu@cpu-hotplug.html
>  499. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>  500. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@perf_pmu@cpu-hotplug.html
>  501. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>  502. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-15/igt@prime_vgem@basic-fence-flip.html
>  503. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>  504. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@prime_vgem@basic-write.html
>  505. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>  506. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>  507. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-2/igt@prime_vgem@coherency-gtt.html
>  508. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>  509. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-16/igt@prime_vgem@coherency-gtt.html
>  510. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>  511. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>  512. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html
>  513. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>  514. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg1-13/igt@sriov_basic@enable-vfs-autoprobe-off.html
>  515. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>  516. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-glk5/igt@gem_barrier_race@remote-request.html
>  517. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk8/igt@gem_barrier_race@remote-request.html
>  518. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-glk5/igt@gem_barrier_race@remote-request@rcs0.html
>  519. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8190
>  520. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk8/igt@gem_barrier_race@remote-request@rcs0.html
>  521. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-rkl-3/igt@gem_exec_fair@basic-pace@vcs0.html
>  522. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>  523. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vcs0.html
>  524. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@gem_exec_suspend@basic-s3.html
>  525. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  526. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@gem_exec_suspend@basic-s3.html
>  527. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-mtlp-1/igt@gem_mmap_offset@clear.html
>  528. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10729
>  529. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-7/igt@gem_mmap_offset@clear.html
>  530. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html
>  531. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10029
>  532. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10729
>  533. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html
>  534. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
>  535. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>  536. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
>  537. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
>  538. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>  539. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
>  540. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_big_fb@linear-64bpp-rotate-0.html
>  541. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_big_fb@linear-64bpp-rotate-0.html
>  542. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-6/igt@kms_color@deep-color.html
>  543. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  544. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-11/igt@kms_color@deep-color.html
>  545. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>  546. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/72
>  547. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>  548. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-6/igt@kms_dp_aux_dev.html
>  549. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>  550. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-11/igt@kms_dp_aux_dev.html
>  551. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-4/igt@kms_hdr@static-toggle.html
>  552. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  553. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>  554. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-11/igt@kms_hdr@static-toggle.html
>  555. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
>  556. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>  557. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
>  558. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-6/igt@kms_pm_lpsp@kms-lpsp.html
>  559. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>  560. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html
>  561. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html
>  562. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>  563. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html
>  564. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
>  565. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>  566. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
>  567. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>  568. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>  569. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>  570. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-1/igt@sysfs_timeslice_duration@duration@rcs0.html
>  571. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-5/igt@sysfs_timeslice_duration@duration@rcs0.html
>  572. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@drm_fdinfo@busy-idle.html
>  573. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11692
>  574. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@drm_fdinfo@busy-idle.html
>  575. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>  576. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html
>  577. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12065
>  578. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html
>  579. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
>  580. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html
>  581. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>  582. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html
>  583. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
>  584. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html
>  585. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  586. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@gem_fence_thrash@bo-copy.html
>  587. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>  588. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@gem_mmap_gtt@basic-read.html
>  589. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  590. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@gem_mmap_gtt@basic-read.html
>  591. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>  592. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
>  593. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  594. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
>  595. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>  596. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
>  597. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  598. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>  599. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
>  600. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>  601. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>  602. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
>  603. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  604. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
>  605. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>  606. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@gen9_exec_parse@bb-oversize.html
>  607. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  608. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@gen9_exec_parse@bb-oversize.html
>  609. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>  610. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
>  611. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>  612. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>  613. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
>  614. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>  615. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
>  616. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>  617. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697
>  618. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
>  619. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>  620. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>  621. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>  622. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-glk8/igt@i915_selftest@mock.html
>  623. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>  624. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-glk5/igt@i915_selftest@mock.html
>  625. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>  626. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>  627. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-rkl-5/igt@i915_selftest@mock.html
>  628. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>  629. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>  630. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-3/igt@i915_selftest@mock.html
>  631. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>  632. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_addfb_basic@tile-pitch-mismatch.html
>  633. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  634. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_addfb_basic@tile-pitch-mismatch.html
>  635. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>  636. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
>  637. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>  638. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
>  639. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>  640. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>  641. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-read.html
>  642. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  643. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_chamelium_edid@dp-edid-read.html
>  644. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>  645. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-6/igt@kms_content_protection@atomic.html
>  646. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>  647. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>  648. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-11/igt@kms_content_protection@atomic.html
>  649. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>  650. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_content_protection@type1.html
>  651. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  652. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_content_protection@type1.html
>  653. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>  654. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>  655. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>  656. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>  657. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>  658. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>  659. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>  660. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x512.html
>  661. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>  662. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x512.html
>  663. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>  664. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>  665. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html
>  666. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  667. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-512x170.html
>  668. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>  669. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>  670. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  671. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>  672. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>  673. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
>  674. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>  675. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>  676. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
>  677. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>  678. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html
>  679. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html
>  680. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>  681. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
>  682. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
>  683. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>  684. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>  685. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>  686. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>  687. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>  688. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>  689. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
>  690. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  691. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html
>  692. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  693. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>  694. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>  695. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>  696. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>  697. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>  698. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>  699. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_pm_dc@dc6-dpms.html
>  700. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_pm_dc@dc6-dpms.html
>  701. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5978
>  702. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
>  703. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>  704. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html
>  705. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>  706. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-6/igt@kms_psr@fbc-pr-sprite-blt.html
>  707. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>  708. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>  709. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-11/igt@kms_psr@fbc-pr-sprite-blt.html
>  710. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>  711. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>  712. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>  713. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_psr@psr-cursor-render.html
>  714. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_psr@psr-cursor-render.html
>  715. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>  716. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>  717. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_psr@psr2-cursor-blt.html
>  718. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>  719. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>  720. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>  721. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-8/igt@kms_psr@psr2-cursor-blt.html
>  722. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>  723. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>  724. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@kms_setmode@invalid-clone-single-crtc.html
>  725. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  726. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@kms_setmode@invalid-clone-single-crtc.html
>  727. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>  728. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15425/shard-dg2-11/igt@sriov_basic@enable-vfs-autoprobe-on.html
>  729. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>  730. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138728v1/shard-dg2-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
>  731. https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
