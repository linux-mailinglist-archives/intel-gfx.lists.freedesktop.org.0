Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F32ED8B7F4A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62857112DDA;
	Tue, 30 Apr 2024 17:57:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X+3DXokM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDCD2112DD9;
 Tue, 30 Apr 2024 17:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714499838; x=1746035838;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=R7S6GoQ2jmJKiKr8CaJxBFviukAUOTVumKuV6oLTVKY=;
 b=X+3DXokMWtRHHkJA7XUWEfkbB5L8+EFt/KKK6ElMLXN7Ro/dnETYFmDZ
 8pc+GVhkIFJ2xNYjPD6j0Icudg6osZP8MQv1R5cISaOGHFAgq+eTwvNEQ
 Nn0e3p5EzTIFlR/QZWVSSN3qGkHSWgpStpez+WpuXWBR+TFpCEeJeBkj3
 tm3twCIAt5wKw6nAxGVK29rDP9KQffLzRIjN87si2MGqFELZwOWH/HAx3
 6W8L6UUm77/07dXI9xPMWuIRR9rFlAdL1HK7hj1ogTANfx7xGCIF75dJG
 wPFnEJUInIQNS2mDwxNtjw/MPQ7hpM+hrwt27sRWfYYdMI7OXzL+DrMw5 A==;
X-CSE-ConnectionGUID: 4KOTmHvJSFG4/hmeOWlopA==
X-CSE-MsgGUID: 6ytewPS9TOaON44Dxc8Vbw==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="32726091"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="32726091"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:57:17 -0700
X-CSE-ConnectionGUID: A2hzAwY6TgWwWaEb/facFA==
X-CSE-MsgGUID: N4ZUy4aFRduXkpx1o/WSdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26539365"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 10:57:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 10:57:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 10:57:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 10:57:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 10:57:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CuigtEiPOVkdmT8EDEGlpXLBkHYUXNxZjIU3xBxbkjLsTpUOJ5XxIP27nssHEa6T8j/ZaXWscEp1dSsex+A0LNO7xE97VuOrOj5fugPo6vxPncTPijFCGslzpwEuxL96VcT9oRS5WMcU3C+vr4wTgihe6grY2Cg6TknElsRWZ4TB1InjYEFsiW7rU+D+DyeqStWgaUy/97DoyGB2HcDqy2s5zV4Q+J+OTYCQYr/RuO/FovYUuT+kesAbghLfJbiTEUG3CQxH3DBPHi343J9anO7utTl9fcc4W1jqHrtBCyyLx+dRT9LZqs+NQagAgQIMpbHeH65felyIqCkw+GiYcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O+EWfS8yv3jHI6XIoRIbSuNlNOM4eURYLvclAaI24bU=;
 b=RbLnSJi9BXvcYSA4aHrXZ7UkxSLlrN4OaqfY2KSUDzqtzPulSjYzdbnFP/oNswfQTUNBVGBGsUiU6Ds3+OVZG6aVSzjRI9RMbpymA16eqf7GUafOA/w363sWeFvZm6Jy1uih5vICEeGSMzwcU3fuSFhEjzZQnx5bJdgs98fjuwfuVs9hMmNYA5Y1ey+hPgndTWJsY6gb+0peGHS8uKfISaxy5aAdOKAMaahe099jHRKlSRr/Hk0/qkm7kRQsldMtsa5m3vmxeeLDiXrlcH+/YTHEMZ+XVg5kSWV/meRZSO5JS4h9QUVcD3757Oq767x/sEo2nc9Xg2+NtVwguTivsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB5774.namprd11.prod.outlook.com (2603:10b6:303:182::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Tue, 30 Apr
 2024 17:57:14 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9365:d8e6:4e8d:8711]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9365:d8e6:4e8d:8711%6]) with mapi id 15.20.7519.031; Tue, 30 Apr 2024
 17:57:14 +0000
Date: Tue, 30 Apr 2024 12:57:11 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Balasubramani Vivekanandan
 <balasubramani.vivekanandan@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH v3 18/19] drm/i915/display: perform transient flush
Message-ID: <sparzoimugmzfahevqqcf3j2qof5scvzzdlmek72t3wo7kij3l@o6omfqwcm2il>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
 <20240430172850.1881525-19-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240430172850.1881525-19-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: MW2PR2101CA0018.namprd21.prod.outlook.com
 (2603:10b6:302:1::31) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB5774:EE_
X-MS-Office365-Filtering-Correlation-Id: 7920cedf-c01b-476d-e755-08dc693ef76c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?cQYar1tRheTXNGC8uHm/bax1QVv7+mLoJpOokcbwIxSLMZX7bxpPRAmzhh?=
 =?iso-8859-1?Q?vWiXLBK4APE8rg8HjZxzaVrIRQS1dZvyif5iGy1GgL3tfo7Po66NRW31TP?=
 =?iso-8859-1?Q?MTagg9fYECAgDCOfWRBsYZdxqQ/cIJ47RVrA6DYIphklTAMCT054aWECl/?=
 =?iso-8859-1?Q?l7X/gL7IAkz5EV7O/bFGYaFsv7BYOr6+WTG2Z7hwJZHFkjSc8/I640g6aT?=
 =?iso-8859-1?Q?QUCYL2YiXxYLpFGZDXklNGVoB9os5R5slXFiVMa2XgBol+c+B94tr2rcvQ?=
 =?iso-8859-1?Q?7LMr2W3M3IXqrf1B9+Qo/5aUARNMFxCqCcjMbZ/4PrRnf8tRWguXlIyTPb?=
 =?iso-8859-1?Q?67g1NjneCCKCAWRYPKfU/kaFXUZN7+PLTnlwBHwCGrfyTbaGt4tXr2TgHA?=
 =?iso-8859-1?Q?62FhOXvnUqYa+GeXNIjlmeRkcSvKeXUMVbDHezHutO5cybzFKk7Wyow8qG?=
 =?iso-8859-1?Q?S2AvxWo2hcZ9K+LoioeVAuy786x5SRII15IFju35R0SN2L0qNfLxGCBXa6?=
 =?iso-8859-1?Q?N02fA9KxcZn976JyVELtDAcTVAz1NyQUa5SbXN05hZoW8SE+yNxepQmHJ3?=
 =?iso-8859-1?Q?jY9TC2OZO47EZjmqAA9+P+pKnS5eRxd5gmw0TTB6p0Pw9ZyIVzA787BcL4?=
 =?iso-8859-1?Q?G1KTo6/J2O93hJt9IMk+AJQGsncZqDsM3sRHJJB3Um8rghi4aayQP5Uank?=
 =?iso-8859-1?Q?FejighTiiIta0DqoOTkTutpxMqnop9/XfqGZezZoatVFwEFsVlgb3olTzW?=
 =?iso-8859-1?Q?6kAuc9PKjwqVxfe+e/L3vMldhHNVDJLcsDZkbfIGGE0CY5ItawORFtIulR?=
 =?iso-8859-1?Q?wW3JCRepZj1KseHCigsyHv2XH96DcI0r7QWJoWAxeeBYXCcR6mDDMa6jHK?=
 =?iso-8859-1?Q?NC5ZhSt0h5Yg1vMpYWQ+CvgVR39n1EisaD8rbhiglqrS1p0rlr1/llyJYN?=
 =?iso-8859-1?Q?Myg3HZoWIT5ZnfM9L1XXJAIHaGLSlBvUSSOgX20SqL4r6vk1BEMOq5FrWP?=
 =?iso-8859-1?Q?W3fiaGt1NH/6TjmWFQag69q13lbOHD/pk3UXMDeZU6412MvOXyinhGkl7D?=
 =?iso-8859-1?Q?qIgctwHrfs8p4byRxxr7xBYGM6QIXbDjAVTIHOn8lgnNmRbx23dLvucCWN?=
 =?iso-8859-1?Q?on0XXQJolQQYezkxH8sms+9RUv9ZQxyoJlA7+XV0TpfeK10wg9eEig+rsL?=
 =?iso-8859-1?Q?a1HPx0IRfMZdd3mVqvGEU1oxnndxwsrDNmVDFCqs6qrNz3jUZqhxRC/neS?=
 =?iso-8859-1?Q?nBmIXZruyT1HFyL73F6oJLTEIskIGXdMu2ZQOBy8kcSkmGXa1cV8H9ZU99?=
 =?iso-8859-1?Q?V6LorfGwWHKsNh1aneTanTepaQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?wK1FLAbfDhfgsRTJaZN8fpuGnP7kCt+hju66gDO9ZiyiMkHc5b7kKtSi8R?=
 =?iso-8859-1?Q?DNIlY8NfAp4TFsTnMjeZ5MpAc6F+SsoNY/dpgY5EC8EZjHo35Rrmp+4AkD?=
 =?iso-8859-1?Q?cDYh9zVAe4Ac6sFhoKRnyyp+RpVzxrwwbTkAeBXf6m1CZpxD8ajCgWsuxd?=
 =?iso-8859-1?Q?i8Q9ZZzrzKZbxFJEdybM/ZgcsqFq4JDjWof2jNsUa9gUZB9ICbqtoYNSEO?=
 =?iso-8859-1?Q?/PttXVRmUJ7AjjCxSGVW22ix/2AvZO86YKp5kJrJwaQ4KDZ3g14rWv13DZ?=
 =?iso-8859-1?Q?Ph9S3STlQH5jlhmLm4iULH8V/m03ySjCrPdJmdBbtc4IfMIPxU3Vcbuv8f?=
 =?iso-8859-1?Q?sEKtt8TuC+J02e2EaMg7l3jSriRmnYSLFAxtPbmQssFxiT+L6D55ib3FhS?=
 =?iso-8859-1?Q?Ds6UYJB5A3QpujhQUNTagu2XHKStSb/rG4OHi95/l4EnQT8O0q8MttY9LK?=
 =?iso-8859-1?Q?M4XAtx58CrLfvj3NiLl62PGZ+Fz3vGGtPTMGJNYg+t2tNxBabXxMwwXsuf?=
 =?iso-8859-1?Q?ipKJatu84Py1Qt5D5bbjYL8PlcH0HFoYRPQUp3hR+UUyjdrIyrjHMAeWp8?=
 =?iso-8859-1?Q?Sq9r7HGF85M4fBDgGv4ReX7xqH/qkazYsPCnt90ZPLM1x6v7TaEAE+WHnZ?=
 =?iso-8859-1?Q?WJwdPHiZtJnYULldksnjVigaTNKKSN7fK5slgYqDZX+Uc3/5NMDcIExZ41?=
 =?iso-8859-1?Q?nkTGk32yDqPz2z4PsBvVIFL4MyH0wdkYLJ0By99oGcYDUGpZXAlGfKLxzI?=
 =?iso-8859-1?Q?AL/BHrEQnWj5a6vK+rTKaF9pbtRZJ6hDV41iqKbeTiRlisZ54dTC4SEt5r?=
 =?iso-8859-1?Q?yBebEDVFTKceswETLqoIHWl52usDj5JJBwFzh51GEkyRmaCpQj1YKgHNc/?=
 =?iso-8859-1?Q?iVvl18Gtq5p6K6neGb26iaPp3jjfNLKsetIuCK00YHmtp+SkNjlA+DHDTb?=
 =?iso-8859-1?Q?pmV2ORjF0JepgDK6tDpjiJufGhnaHltqReeuSgnQi4xHUwjjpUFwVqhBFg?=
 =?iso-8859-1?Q?zRl+Q/U87tshSqwyeo/U0/tEMosQYvCpF2+OjO1vvy5I4TBrp+xXDeqsEU?=
 =?iso-8859-1?Q?Ujc7zsrxYbUwJPBpy9lMqbwKwD12UsfM4+jCgqaCUk++2g4/keuygAmpW8?=
 =?iso-8859-1?Q?utBb5c3jZ7Kd1uD0xlnW7acJiX1a7SVKyZCzHrVuwZqykrqTX2wygp7fCf?=
 =?iso-8859-1?Q?AHIeg4dwKjhaY0Y6gTfppPOgz9MHv2Ld7OpsZlhEwi5gwsRV/AM3NpOLE4?=
 =?iso-8859-1?Q?Buv1RPX/h/xQMkxBnHsOKlATYIAlD4kg2Txz+h+hKUXjXENtoVWT11S+/b?=
 =?iso-8859-1?Q?MACIlEbTH2m7r38Tj1IUhaWQrobHNYBlK8b0gqKOHu6dma4POPKYMqclAZ?=
 =?iso-8859-1?Q?CoAK9TtwjqWSNUec8Kg/Y+GSVNrqVV1PQlUTp09b1rNqXaD/CsgN2zOQMq?=
 =?iso-8859-1?Q?EWVNAE0DM2ijdw0i0BwCDD8mpefFuEPKBMBp9ujHUQI0XxRTHICchAPClu?=
 =?iso-8859-1?Q?3e0+99Z4rcNLR2NsoFDQgVa+xxJEFGo32I0jC9LiWt9LdB3Zfg0FpkDoY7?=
 =?iso-8859-1?Q?vN9J71R9mEaVnhEFiKmxPVoMcxRNOoTkYVp1kTLDEKD2BU5HEQpFudadTn?=
 =?iso-8859-1?Q?zNEiyLX/vrhY7DLhIuo3FzjuUTmehJmzFGF2dNyFPT15Gd88R0w6RQGw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7920cedf-c01b-476d-e755-08dc693ef76c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2024 17:57:14.2197 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c+qw65TbNVmTAszla0BgaMpo3AUqAktJSmjdb4Im/gbi7hQCnN3g5bw5MF2u4i+6ynFXbne2HAbZPGOaeVNGmtqvb3eIelDoX3Ybkb0ZxGo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5774
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

+Jani

On Tue, Apr 30, 2024 at 10:28:49AM GMT, Radhakrishna Sripada wrote:
>From: Matthew Auld <matthew.auld@intel.com>
>
>Perform manual transient cache flush prior to flip and at the end of
>frontbuffer_flush. This is needed to ensure display engine doesn't see
>garbage if the surface is L3:XD dirty.
>
>Testcase: igt@xe-pat@display-vs-wb-transient
>Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>Acked-by: Nirmoy Das <nirmoy.das@intel.com>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display.c  |  3 +++
> .../gpu/drm/i915/display/intel_frontbuffer.c  |  2 ++
> drivers/gpu/drm/i915/display/intel_tdf.h      | 25 +++++++++++++++++++
> drivers/gpu/drm/xe/Makefile                   |  3 ++-
> drivers/gpu/drm/xe/display/xe_tdf.c           | 13 ++++++++++
> 5 files changed, 45 insertions(+), 1 deletion(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_tdf.h
> create mode 100644 drivers/gpu/drm/xe/display/xe_tdf.c
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>index 00e583fc2a8c..294539b4ca99 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -109,6 +109,7 @@
> #include "intel_sdvo.h"
> #include "intel_snps_phy.h"
> #include "intel_tc.h"
>+#include "intel_tdf.h"
> #include "intel_tv.h"
> #include "intel_vblank.h"
> #include "intel_vdsc.h"
>@@ -7225,6 +7226,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>
> 	intel_atomic_commit_fence_wait(state);
>
>+	intel_td_flush(dev_priv);
>+
> 	drm_atomic_helper_wait_for_dependencies(&state->base);
> 	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
> 	intel_atomic_global_state_wait_for_dependencies(state);
>diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>index 2ea37c0414a9..4923c340a0b6 100644
>--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
>@@ -65,6 +65,7 @@
> #include "intel_fbc.h"
> #include "intel_frontbuffer.h"
> #include "intel_psr.h"
>+#include "intel_tdf.h"
>
> /**
>  * frontbuffer_flush - flush frontbuffer
>@@ -93,6 +94,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
> 	trace_intel_frontbuffer_flush(i915, frontbuffer_bits, origin);
>
> 	might_sleep();
>+	intel_td_flush(i915);
> 	intel_drrs_flush(i915, frontbuffer_bits);
> 	intel_psr_flush(i915, frontbuffer_bits, origin);
> 	intel_fbc_flush(i915, frontbuffer_bits, origin);
>diff --git a/drivers/gpu/drm/i915/display/intel_tdf.h b/drivers/gpu/drm/i915/display/intel_tdf.h
>new file mode 100644
>index 000000000000..353cde21f6c2
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_tdf.h
>@@ -0,0 +1,25 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright © 2024 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_TDF_H__
>+#define __INTEL_TDF_H__
>+
>+/*
>+ * TDF (Transient-Data-Flush) is needed for Xe2+ where special L3:XD caching can
>+ * be enabled through various PAT index modes. Idea is to use this caching mode
>+ * when for example rendering onto the display surface, with the promise that
>+ * KMD will ensure transient cache entries are always flushed by the time we do
>+ * the display flip, since display engine is never coherent with CPU/GPU caches.
>+ */
>+
>+struct drm_i915_private;
>+
>+#ifdef I915
>+static inline void intel_td_flush(struct drm_i915_private *i915) {}
>+#else
>+void intel_td_flush(struct drm_i915_private *i915);
>+#endif
>+
>+#endif
>diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>index a67977edff5b..b620389761d5 100644
>--- a/drivers/gpu/drm/xe/Makefile
>+++ b/drivers/gpu/drm/xe/Makefile
>@@ -206,7 +206,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> 	display/xe_dsb_buffer.o \
> 	display/xe_fb_pin.o \
> 	display/xe_hdcp_gsc.o \
>-	display/xe_plane_initial.o
>+	display/xe_plane_initial.o \
>+	display/xe_tdf.o
>
> # SOC code shared with i915
> xe-$(CONFIG_DRM_XE_DISPLAY) += \
>diff --git a/drivers/gpu/drm/xe/display/xe_tdf.c b/drivers/gpu/drm/xe/display/xe_tdf.c
>new file mode 100644
>index 000000000000..2c0d4e144e09
>--- /dev/null
>+++ b/drivers/gpu/drm/xe/display/xe_tdf.c
>@@ -0,0 +1,13 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright © 2024 Intel Corporation
>+ */
>+
>+#include "xe_device.h"
>+#include "intel_display_types.h"
>+#include "intel_tdf.h"
>+
>+void intel_td_flush(struct drm_i915_private *i915)
>+{
>+	xe_device_td_flush(i915);

this would be the display side "calling back onto xe". I think it's ok
given the current status quo, but Cc'ing Jani.

This also needs the previous 2 patches, which I'm ok with merging
through drm-intel-next if this user here is the correct way to
implement.

Lucas De Marchi

>+}
>-- 
>2.34.1
>
