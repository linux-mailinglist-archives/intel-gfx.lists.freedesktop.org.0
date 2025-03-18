Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82EAEA6745B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 13:54:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D4CA10E448;
	Tue, 18 Mar 2025 12:54:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="njMvfrP1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B760210E448
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Mar 2025 12:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742302460; x=1773838460;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GYerTw5ajng6dev3kewgenLbwayBfG91JDsVhlN+DnQ=;
 b=njMvfrP1QbcS5tA1nRdGIC+dKShyuA9iDUX8CMoIybj/+z+oD1Eer08p
 +O6UMFWrdwFz+YixwypyK9Yz8iNELsrNRaQlJ2ahmWARl2yW+2VWX5mea
 2eg23qkVQcnaJ0KRZP4ogKouJmHMBdKhBr/QIstz6GQWWC6f3e2m1DpCN
 +Rrh9pWxaMnphuswmiEh5o9fBaSpqjHjiww5oeJhB3EJTD9hgh+nG4lW/
 hGcaQ99NHkqroH77SNQkEyHRswFDmGpSfuC72JRrJUJgBFmd/Kx9P0Yy5
 hJB+hR/+ymUKki+bjkobSyTTmhNn7N2EhRFfuUuIHrRn3MJtUVI5VMTQb A==;
X-CSE-ConnectionGUID: oYJd/uvFTTmC88FBeDbnpQ==
X-CSE-MsgGUID: AWOVcpLtSSq/wmkhVHtBLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="31021987"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="31021987"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 05:54:16 -0700
X-CSE-ConnectionGUID: 5Wj48K8AQdGuowNPEEuF8g==
X-CSE-MsgGUID: Q8o5w1pBSgOVfGH0E/3Ukg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122410685"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 05:54:15 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 18 Mar 2025 05:54:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 18 Mar 2025 05:54:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 18 Mar 2025 05:54:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cPACIlzG6ecfpr3FDa3mzbAE8XltT5CUYfC+oDlVgGfRdlN3PH+/4n/Cfnh0mpojMDmGmM11jZbOoRCODRwUXK7MaMT5nWmgQQbn9E0fGSV4kZ0nIE3JiOs63fg/PpWjSmFC1hrcY7FuHfq7LjdttN4vpyCw4gtkLtxrBWce1kBjZ1oYzqNAXKQjWRFWMHTT3o1/y10foTVc3g1PXKSaA3SweKo6U4pFzze2vHl81CDX79rVtRoyv8kZ8oJSNDCj7lttkmolVnqrtCDBVDUHQiJS4cXed/hOXFETBhEsKotN25Ob3OhkrUlXyVdc9DpKXuSmabJ2J5KtV7VoI2KdMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0zOU7C90w4uAHVE6fXOumB3lIHvl1XS+45B1FMUI1IA=;
 b=t5glJ2dkXq5pT7+S6CMaiVQU+Y7gqIY86qU6vMIcG3hmcQCvB2Gw2iy17xHc7/prGE2abd5ywogi8qF07cJqoZel+LOYJ8lDVrldK0rNxXKOtKN0TKCJU5UdoiNVi+4Ue1VMVJMBZIKIweJSUYWjxlEAM8ac0HJrJCm94D8YZOH6zbnJ5GRaGtxltsKBWYG9r6EiUAWWnWcTlHWEG2XclR7dHxmuPZA8qZoWtuZTTbB9XMaY+egdvh1E3l5lFk3NRpJ2jhbtvDp32TX3AO6rMzU67DXEGWQk6ZcpzPsFPWJd3jywWisSaUlqioa2HSghVarmRRYwVUGn762IbX4meA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by SN7PR11MB7976.namprd11.prod.outlook.com (2603:10b6:806:2ec::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Tue, 18 Mar
 2025 12:54:11 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%6]) with mapi id 15.20.8534.031; Tue, 18 Mar 2025
 12:54:11 +0000
Date: Tue, 18 Mar 2025 13:54:03 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: Mikolaj Wasiak <mikolaj.wasiak@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@intel.com>
Subject: Re: [PATCH] drm/i915/selftest: allow larger memory allocation
Message-ID: <eljluyax3xeoxh475lmu6xqtyfd3b35l4ocpob5xy45vzqkfy3@r4io3gqfxd3c>
References: <wv4aw6syqjox52lpgkddxykr5namvan4eb7b4obj3rligwyp7m@33c3ko2mj7sp>
 <wf7iikxwpvqx77267aaxqhdtg5qjisdowuh5bnnv2o47jowzvb@avicp6k6yjtj>
 <qphk2egnvvuaavj3g34vdfkf64sahttxdwqpi7m2mbyneoyo4u@a23mww3t4o3d>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <qphk2egnvvuaavj3g34vdfkf64sahttxdwqpi7m2mbyneoyo4u@a23mww3t4o3d>
X-ClientProxiedBy: MI1P293CA0004.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::13) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|SN7PR11MB7976:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e2f65cf-3345-49ff-ab82-08dd661bfaae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0ZNQzJGdXVHdVQ1Z21UOVB4bHUrSm9pZXp0REQ0ZFhBVWhjSTV2eWF2SU5i?=
 =?utf-8?B?RGlVTnpWenkraVhVWXp2NVNMNTZZYUxLakhLY2tPQXV5ajRidGhIeTJnTy81?=
 =?utf-8?B?Ym1ia2dyODFnOElvRU5XZ0tibVlkT1lOQkFHVDJ6Sk04R2FGQ294Q2pmOGlL?=
 =?utf-8?B?S0ZOMnVCVDJOTE53Y1B5VGRuYWlCTHU0WFcxM2N5RVBaRzFhTEh2c2xmalJD?=
 =?utf-8?B?cHViVXdCOEpFUXFMbnQ4V3FSMkpvY3B0SDB5VnBVektMK2lDNGh5eGxTeXJO?=
 =?utf-8?B?ZE44Wjg0TjU5c2RDdjFsdnducy8vcU11NUJzUm1xandWdDhpZlAwNVBQV3NW?=
 =?utf-8?B?M2lyNFh3Z2FCWEhTendYeUtOL1hKS0M4a1FHWmxabDV1Qm81Yk9pc3c0T1dF?=
 =?utf-8?B?MTR3V0laamEwQmR2VkFrTzhDQU4vdHc0Ny9HbGpEUm5WM25SUXljWVdJVDdv?=
 =?utf-8?B?QzF1VFFEVmJYS2hvalBORkxiemdPVXhrOVAzRVZOcytUdzA4UXE5MHhjQnFN?=
 =?utf-8?B?Q2EydXlibzVpRnR3K3pVWHZPdVRXdXVOSk9kQzBNTUZQdm5DZDFkMnZQakZT?=
 =?utf-8?B?UFVlTk9sRkx5UTJDbEllK05xamJFOU1sSm4xaW5nLzJ6K0ZubStSU1ZPVEgx?=
 =?utf-8?B?RTZHcFN1R0txMjJXR29ucmFjY2diZnJmVFl3RTBiSFJ4NkhScEgvR0NxdUsx?=
 =?utf-8?B?Z2JPc2ZwS2VnTkpZOC9qRXJZVXlnbE1UNmU5NXVla1plQXNiNG4yWE5abUJ1?=
 =?utf-8?B?UlYySDFJVDdWRHFsTUtUQnd1UHRFQWpGZDMyUXRiTG1rZjZrbGIzcUlRWDMy?=
 =?utf-8?B?cVpiMHNqWUVnZTliWW1HRVorcjh5NlZyRnJZZURWNWpLM29hd1VJR04wVnoz?=
 =?utf-8?B?dkJIU1RQdHo5eE56THBGd2puRnFZaDJNQjlwNkpqcnJiNEdHdFF0RzhmeEI2?=
 =?utf-8?B?aU5KWTMvKzhHZysxclRrVk5oSmRvOVlHZmlrL2F2MkEwbEgxeUk4ZGs3NTZT?=
 =?utf-8?B?cWYrdXBnUUxEOXQ5UG51QnU4UTZUTzliSHdMQU5NT3JxM1dEcDdlenJnTDN6?=
 =?utf-8?B?SnNGSEliN09YbnI4SnZSdzVQM3VBdUF2MzU5WUR1Mng2VXFGUGhVeXdpYVpX?=
 =?utf-8?B?N1lFZ0hOdjVYZ3gxczdKbU1veGRha3hDZkVaYU1XMHorUmJzbUtESGR4elo2?=
 =?utf-8?B?bkFmZHJWdDE2SlhobCtIUjFzdHpwRUZ2cjBjRFZWVmczQnBuNldKY0lqT3ho?=
 =?utf-8?B?dHc5OHJHSkR0Q05ENmdoeXA3b1YwZExFTEFLNGVzUUpxVTFHSEZjY3VMd3g2?=
 =?utf-8?B?OHZXQzFheXlDNWZzSzEvMEJ0YTJBK0JkclEySkk1Nk1QWGdmVnJudEtMck5W?=
 =?utf-8?B?NkY0SlQzT2ZjMytMYVMxTHhTOHc5cDlUcitjcHhZeHFpZjE0MjcxSnNUS2oz?=
 =?utf-8?B?bTlpMlcrZ2lpcTdXR1gva0UxUE9aalBKRWEwOUVEWVpnSmJtRFJvN1lCZkRV?=
 =?utf-8?B?LzByYnFyM1lkK1g0ajVsMUtKd3B4Um9ZQW5PZFBhUGFJNWVackhvQnl2VVlp?=
 =?utf-8?B?MlZ2cnAvUkFLb1hhTS9lTjdJT3l0RTRSNHN1QTQxa2d6OVlDUDA2WkpNemsy?=
 =?utf-8?B?eFB2Y3NqSVVUNWErMktiOWlIYmZvVWdnNmRnQmdyNm9SWmthb0M0UnJqWUNt?=
 =?utf-8?B?eHR1VkJIWVBidjNNMVV4UURSSmlZK0c4Mmd6Z3ZoVkhpdEdYKzZCWFBCRmJK?=
 =?utf-8?B?TzdFVlZWQ1lJR01ycnRldXZXL2plM0FTMlV3NTdUQ3NLZjhDWlZnNzl1MWhz?=
 =?utf-8?B?V1ovVkZmWEl4VTloMWRzbzFST081VmkyODZFYTZvMmo3NUpPZ3J4K1JMVlVj?=
 =?utf-8?Q?xfH/Qign+rmFi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajBqWFBONndvZDB3RDRyaEc2WTRVdzV5V0gxUHh2WXc3dDdZVEtUWlRXa2Qx?=
 =?utf-8?B?bzcxaENKcytGZStOeUVVN0tMNHRlV2dnZFR0ellkZTFLRkoyZkFNZTZIYUJ6?=
 =?utf-8?B?eWpCZ0lXTDdQT0grdGhFa2FLVmkvNVR0enMzUCtjNWRKQ3dtM0RMUEhBRkZ0?=
 =?utf-8?B?SW43RmFucU9FMlppUDdxdXhDclkxZGpSeFFGMHdYNWxkNGp2VFB6aVROQjNF?=
 =?utf-8?B?MkV2eHdKL1lTd0ZmRktKVStCS3FpaDIyYUNMTW02cGxDa2R2TnNFU2N2ell3?=
 =?utf-8?B?WldDUzFjU1YrZ1o3OS9uemw1UnREb2tJNkZDV1FKTkpRaVFvTlVxZ25NWDN2?=
 =?utf-8?B?SHRZWWxxeW9mam9qbGdYRDh4SnpTUElyd3k0UXNlMlEvamZNMkhFZ1FxYko3?=
 =?utf-8?B?YkJqcHZWZzd4dkJKNjQ0Y3JiVC9NdXQ3Y2RiK0tjMnE3dmlxNnd5UFFSWUhk?=
 =?utf-8?B?c2RvOWFwZWZvT0dhRDZpUjRyVWw0aUtzemZLcFFUQVdXdEhlS0I1cTRFZGI4?=
 =?utf-8?B?RmxQbVNpc3FnS1NweHQ4OWtJOGd3UjJ3bGRXR2ExZUwwbEs4MnA4YXlodEVk?=
 =?utf-8?B?b3duSkZRbDhSYW5TSXIyWklrU3NIZS9xWkhQckZjOVZLVTNoL0pKd3d4WmE5?=
 =?utf-8?B?a0tUUWNBRjBlSjhhbEFQOUFxQTlFY3didXRaRnV2c045S0VwZ29yRzI2azJy?=
 =?utf-8?B?NnlYUHM0YVFhNVJWdXF4TXRkMTJWaWkyU25semQvaFhDemdib3doTVczOFRY?=
 =?utf-8?B?MEs0MFFMZHZuWjhCbHRUZWRiQ3ZpbWlvWFhTMHo2eU1wajM1U05FQ2VhZWgv?=
 =?utf-8?B?N05OTGFnM0c0M0lTWVJnbUEvdWNoS1NOWGNMOTMveHJHZzUvYVpxbzd5Qks5?=
 =?utf-8?B?VHROUVlWUVBsdkVoWVpLSkQ2RzJVVkRqaElJRnZnUXFGc1B1REdXYlFyY3lh?=
 =?utf-8?B?d3QrMjd3dUNVZitqUlNDaWdVZW9TZXpyTStMUnN3MG9pMDJ1R3BpUDk1em9u?=
 =?utf-8?B?ekkyVEx6Zng5T1FSUEFEVU96OGQ4dHlzVElEZUVGcUFkaElUaDhDU2JkVDZp?=
 =?utf-8?B?YWpjN2lQaWRUY0ZibVhuWjBpSDlVK0gxemVDV1RTV2VzVUlnQ1Q1SVphMVIw?=
 =?utf-8?B?S1dJRnJ2SnoyczJranFQUm1COUVVdXh2WDNWVm94NFoxOGE0ejVvQjlQakJ6?=
 =?utf-8?B?VjBMeFpEMDNaVzlxUVAvdGt0Y2ErT0drMjZtbUpBSFNGWHR3Ylg1WEkxQnNI?=
 =?utf-8?B?c3BrUldKTGNrQTlqcWJGQytLZlBEVVpmTHNTSStDSDNOT0dsRDZKV1FjUy9a?=
 =?utf-8?B?bW43cFhpdmJaQVlGeUovYkdaWTloNkoxdUcrV3lZd01OUk55WHJZQ3FNRXY4?=
 =?utf-8?B?NkdPZlpuOHdNWHF3VXhQYllaamxESDlhNGo0RXVSY3NkOW1ZS29WSXdKd3FJ?=
 =?utf-8?B?R1BwZkMxL055R2taaG9ENjVGRlQ0UU10cDZvbWVwWWMyd3dFdmhwL1JDTFRi?=
 =?utf-8?B?MWlvU1o5WXRVTzRNRUVva09aQUlPbE94THh6bWJUWmJFd2d0T2pBZnhsTTQx?=
 =?utf-8?B?V2JVc2NIT3Q0YnpuMlhjemVHZmROY2xFejArWVV5QnpLODcrbTBycDJEakRF?=
 =?utf-8?B?a3JndXZzRjlYazVtZGtGTWdZc01zTVNhYkJuUHZVejVvaTgybTR2eG1VcHM5?=
 =?utf-8?B?V21vbHNnMlZNN2ErNEZ1Nm10UkhqNWhvUnBjYmYvcGdNMlVNSHdNcU5NR1Jm?=
 =?utf-8?B?WWNBMmRIOERuTFBBQS9HRjZKYjhpd1JGK3R5WUx6T01seFNLblZtNkhJWloz?=
 =?utf-8?B?OVhxMXpiQ0t1dDZPSTZRc1B4d1ZXdFlmUTNzMkJNdVpZNStKeFNGVzlZY3E0?=
 =?utf-8?B?RHpmTlIyMS9md2tEVjV4NWV6T29tL2tCMTFtOTd0ejhSWUVWc0JSN1NCcFl3?=
 =?utf-8?B?bWNaRzUrK0xZS3M4REducFhQd2J4QlFzNmI3b1VLaGpxZTNSZksrSTlYNTk3?=
 =?utf-8?B?RkZjcWE5RjJYb1h0V1hucHpGRTFrZHEwUnBKellRWDN3emxPZVlXTXJhRE5k?=
 =?utf-8?B?Nnp4REU0cytzWXVQQmR1N251eVBkcEN3L0JSVTByVmFEV0lhZXJOUHdEWnVQ?=
 =?utf-8?B?YS95U3drdnJQeXErS01TUmxIL0Fmd3JUOThjZWZLd2loRGVKZC8vRmhFTTMv?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e2f65cf-3345-49ff-ab82-08dd661bfaae
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2025 12:54:11.5046 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3dJcXBKfQd2l3eZtteXvctNzwGXk9T8ZtfneMnzpnbTB1P1NQrJhtF1b9FcEaZtAWc0fq1aXUZfxAVjuLEnzVhM9blHMvDaPSQ1KN0YCTt8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7976
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

Hi Krzysztof,


On 2025-03-18 at 10:39:41 GMT, Krzysztof Karas wrote:
> Hi Krzysztof,
> 
> > > -	/*
> > > -	 * While we should be able allocate everything without any flag
> > > -	 * restrictions, if we consider I915_BO_ALLOC_CONTIGUOUS then we are
> > > -	 * actually limited to the largest power-of-two for the region size i.e
> > > -	 * max_order, due to the inner workings of the buddy allocator. So make
> > > -	 * sure that does indeed hold true.
> > > -	 */
> > > -
> > >  	obj = igt_object_create(mem, &objects, size, I915_BO_ALLOC_CONTIGUOUS);
> > > -	if (!IS_ERR(obj)) {
> > > -		pr_err("%s too large contiguous allocation was not rejected\n",
> > > +	if (!IS_ERR(obj) && !is_contiguous(obj)) {
> > > +		pr_err("%s large allocation was not contiguous\n",
> > >  		       __func__);
> > >  		err = -EINVAL;
> > >  		goto out_close;
> > >  	}
> > >  
> > 
> > If I understand the test correctly, the goal of the part that you're
> > changing is to see if an attempt at allocating more memory than
> > max_order is properly rejected. Since the allocations are more granular
> > now (not only limited to powers of two), and size doesn't get rounded up
> > to the higher power of two, we should be able to allocate 'size'
> > exactly. Meaning we lose the intended functionality of the test (check
> > if we can't allocate too big of an object), because we're not allocating
> > too big of an object anymore.
> 
> Since the allocator is a lot more lenient now, we could focus on
> getting a contiguous object instead.
> 

I don't think it was the intention of that part of the test, but that's
a valid thing to test against nonetheless.

> > I guess a check for contiguousness does not hurt, but the test behavior
> > is fundamentally different here. Maybe manually rounding size up to the
> > nearest larger power of two would be a better idea here?
> 
> Before changes were made to the allocator we knew that there
> was a corner case with rounding size to the power of two. Now,
> we know that the allocator will take in any appropriate size and
> give us a valid object (correct me if I'm wrong here) - if that
> is the case, then this should just be a check if we fail on a
> size that is too large (unless this is covered by some other
> test).
> 

That's what I meant with rounding up to the power of two - make an
object intentionally larger than we can accomodate so we can check if
that gets rejected. I suggested using that rounding up so we replicate
the previous behavior, but I guess it could as well be size + 1 or size
* 2 or any larger value; the point is to verify that the driver doesn't
allow allocs larger than expected.

> > 
> > > +	if (!IS_ERR(obj))
> > > +		close_objects(mem, &objects);
> > > +
> 
> This code would obfuscate the original purpose of this test and
> just pass regardless of successful or failed object allocation.
> 

(that's a part of the original patch not my reply)

If this part of the test will morph into a contiguousness check, we need
to deallocate for the other check, so those two lines must stay. If that
part keeps being a rejection check, just tweaked to comply with the new
allocator behavior, then the deallocation will be in the error path like
before the change.

> > >  	obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
> > >  				I915_BO_ALLOC_CONTIGUOUS);
> > >  	if (IS_ERR(obj)) {
> > 
> > I'll paste some more lines from that test here:
> > 
> >         obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
> >                                 I915_BO_ALLOC_CONTIGUOUS);
> >         if (IS_ERR(obj)) {
> >                 pr_err("%s largest possible contiguous allocation failed\n",
> >                        __func__);
> >                 err = PTR_ERR(obj);
> >                 goto out_close;
> >         }
> > 
> > This is the next check - we see if the largest possible allocation
> > (according to the old logic, it would be 'size' rounded down to the
> > largest smaller or equal power of two) _does_ go through. The success of
> > this particular check isn't affected by the allocator changes, but since
> > rounddown_pow_of_two(size) is not the largest possible allocation
> > anymore, maybe it's better to change this too (e.g. drop the rounddown
> > function). This way we keep the intended test behavior here as well.
> > I suppose this is still in scope of the patch.
> 
> Yes, this would be a bit different than the original behavior,
> but we'd be sure to fail object allocation. If no other test
> checks this condition then this test could do that here.
> 

I mean, if this test was doing that, I don't think we should patch that
out for no reason.

IMO we need to tweak those two checks to check for the same thing
functionally but keep the new allocator behavior in mind. Then
contiguousness is a good thing to check, but I think it should be added
as a third check so we don't lose either of the other two.

Thanks
Krzysztof

> Best Regards,
> Krzysztof
