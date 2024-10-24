Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9597C9ADBD9
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 08:14:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 309FC10E8B2;
	Thu, 24 Oct 2024 06:14:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PMNdKRSu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE30010E8B1;
 Thu, 24 Oct 2024 06:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729750484; x=1761286484;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Uc4lM2p3ahr/pHvGu6BUAuoIw2TO6XSEj6dh8Uovuz8=;
 b=PMNdKRSu10O2cukxSvMEZ0pUG/Ua2DpLRQuBTPGpCEdXqK2SrXMuYfll
 mrD5SLcU4w95ppSXiUhfTyhlyT9syIypWLvUuXAa8N/tMoUjIb6sO+ASk
 HjnTeVzGyzwDkADNgtwH6C18YzCjmpKhGU9mgCEjFoelMOBAdawywtjuo
 Xj2rgsVAbGU8cjh8ZuGigOeGFaHkKOYlpovHmpO+WPz7Y/d2r9C6naCnG
 83tTxONjaGypaURD7xY4bUZ0lruSm+tOgad7Eq0W9Yi30AvNQZt339BTP
 JntWgCUCfd6lstPg0g2t5cG9a+DqoCgw2+yuGru/fvvpRcC7unvqfuY8O A==;
X-CSE-ConnectionGUID: 0iyJWYfaQNCUfZL4Ab5GYA==
X-CSE-MsgGUID: UPkV2fbFT3OIbyKdmH0U3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40480799"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40480799"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 23:14:44 -0700
X-CSE-ConnectionGUID: iRt2CiV9SnGYzZc+d2zU2Q==
X-CSE-MsgGUID: YfzAj1QuSmKtFFwtwr2XOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="80903164"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 23:14:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 23:14:43 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 23:14:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 23:14:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RKy1QVAMvNYJm+40cDto724FPhjNWoc3jVi4+QgxgMyCI1sR5prSj+WaG1WlVXwHFdKyC7dhdPeTX0k5q1K3xSouBrBdBxjsUOl7N9a9wIMoHCZ+ZvVNm3L0XAscgnHNbNneykNCYBK5wOKpWSmYRkE6jCO6kD6oRoMYFJnksMIYyv5L4p/Mb+9CMpPgjK3SMnwW+uS25wRXTVcMUFkhYRSC3HJpmycf65D5jtdZzXfUdy34MRctcQEz05LCYCZBithbbUn0X4miJ1uQQ1Im/6q4gXsoKAkGGn8I8wzps5YPdm0UGN+vTM5pKLnToUR4/gM1zihWi7Jtre8WEm8ERg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pbqN09rEj27eG0forLeSotu2ofsblmx8Fu3KEyeb2zY=;
 b=SbUMLmOkumZSl5cit2rgJQ3353F0liQHcgjSckcwglkMOzy1SQEL1biXV/Pt5OXlkwmSY3n3/HPbCK8l4Jb2P0MOUKhbutc1rfZqxKqv8A3HWKArzqVZb+IO6wFIGNcZyqUi9XF2/Pmd5F1No+yEh6QClPBVg4gtpsyGXzXCwjFwMZV2VwnZdY5lPrKCKIb9QtnlD+IhxYUlHjWv9T6JDdF9uY4/njCMb+PrkQMH80ktJHA024/ZwDsshi01MFd361+/HcSDUcmOzaF+jrkR6q84PhZCyBx4icY5PjRbZL3kmardGAysIFIURCFIp5qPbldgWar7P21h/T2OYJuFXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by DS0PR11MB7190.namprd11.prod.outlook.com (2603:10b6:8:132::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Thu, 24 Oct
 2024 06:14:35 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::55b1:592:df13:a9f3%3]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 06:14:35 +0000
Message-ID: <57bc4ca5-31b2-4c56-a3be-6e098a3d67c6@intel.com>
Date: Thu, 24 Oct 2024 11:44:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/12] drm/i915/xe3lpd: Move async flip bit to
 PLANE_SURF register
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-9-clinton.a.taylor@intel.com>
Content-Language: en-US
From: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
In-Reply-To: <20241023214701.963830-9-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0005.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::17) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|DS0PR11MB7190:EE_
X-MS-Office365-Filtering-Correlation-Id: 24ca2f33-41a6-46aa-f222-08dcf3f321df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bzU2Y3N2bXZqajl4M3V0TWxsbS9kaWtVeWJ3Z0JhcEVTVTJNOS9jWE1CL1pG?=
 =?utf-8?B?bEIxWFZFSlk5ZDNRcWZ1TkNFODMralRLaHk3Rmt1aUlnQkh4SFZMZHdaODc0?=
 =?utf-8?B?YmhWdndEaXU4Rkx0NzVRTytDOEV4Z3ZKcVlmVUJqbHBteSs1UC9KYWEyVlkv?=
 =?utf-8?B?UTB3RmJGeG5kY1hHN1oxbkZFMC9ZcXlDWGd3MFN2SEFwWkhjUHJMRExpUDA0?=
 =?utf-8?B?Zi93T0VxbGpUcEM1alZZODFjc0lucjBpVVJ6YkZoWkxZMWxmVVFoQUF6NjNZ?=
 =?utf-8?B?cDcvU1ppL0ZIbUNQZXArL0NaVmpEYzlUUk1nam9iTEJVSE4yV3RvU1lJTTlJ?=
 =?utf-8?B?akZkQUVmOTNybEpmK2JkOEZRYlJLVTlaOURzM2ErRGluOGdlVnp0OXpNOXVW?=
 =?utf-8?B?MkxWY1pTY1JnWVoveHFSM254OFBSU2xsRUwzVktlTzVOelMrOTkrTlk1ZTRH?=
 =?utf-8?B?K2c1RUdTSTA2MzlUdjNPbDhzQitpZlFhMTREZVRtdVpXVDhSOVE4ZTBRTVV4?=
 =?utf-8?B?dUZNbC9oU0JBbElKa2g1VlRCR2MrcVQ2cXRuQm05ZUczSHRSK2FpaEExUDFq?=
 =?utf-8?B?R0RpWmoxV3U2ZmdYYTJXMm9ib3NDS255cWdheVVRZVNJMDRIQjBrY2dmM0Jq?=
 =?utf-8?B?cU1lT1Q5U0pBa2p0VTlrZ1lJTGFWb3ZaZFl1WkY0MTJTb2pidEJXdGNsbTZu?=
 =?utf-8?B?eVZRZEowR1E5YlVYUWdqK2lSQ29zWldZYTBqZE1pRnBmR2psSEFmM21Hd0tJ?=
 =?utf-8?B?VFg1ZzgwZEdBcmtyTVljclVLaTNKSEw4UTlCN1NQWnRDNEtWY2EzRUM3d1oy?=
 =?utf-8?B?a014ajJ0ZkdkeXBiZnhsWSt0alJFUkdFeTdoVDJKb0wzV29BOWFVcmkrSFpD?=
 =?utf-8?B?MlJoZVp4WjZwanV6clFqb2x2RkpmOVNKVDlHWVY4VUx4T0tQb3ZyckhpYVpO?=
 =?utf-8?B?T2ErY3pDSksxZnBzVEZiYmZpNzA5MUYzS3ZKK1QrYU1LUzZ1VSs5Y01oQVpM?=
 =?utf-8?B?ekczUU5DenUzRkdjWXJFMWt3WU5kUFdKUkJUWldJcnJMNDIzS05zVmVEYlBH?=
 =?utf-8?B?QTRlQWdwbWRNNGd1WVBnajBHVHRZbFA5aWUveml0VEdRMHNVb3lDeW9zalRO?=
 =?utf-8?B?bEk4aEhtNjhXQ1lQdzhtZEk5WkVWbmVhd3RzYm9MdUdINFl1WDVMVmdFZlhG?=
 =?utf-8?B?b05wWUNFVGswbDFJcXFHWHFRQTdXRFpkNzY1Y2xDbFZhZ0RqVDB0VHBPaWNt?=
 =?utf-8?B?c2gzc25iQm1kRWtXK2I1emJJSWZCRWlLcUFPekpYYndLc0ozWWVKMnhmVEdr?=
 =?utf-8?B?MXlnSnlFRVc0RnR6WE1HbW5MYTFYOFpYUTZieUFVSjR4OFhHK082eXBud0xD?=
 =?utf-8?B?cytleVBjU1gvVkZ4LzN5a0c0S3ZwSXUvaHRlanZBbGRNb2o5VFhEZnh3VlBz?=
 =?utf-8?B?dE1OS1BaTVJNaXVZMzA1a2t4UTMyd3NpalJ3TS9LNDFnLy8zcFdQT0JSSjU5?=
 =?utf-8?B?MTI5RENKalNQeDE0cytneFRnN29OUXV2V2JzL3lYYmNUcVZ6cjRSc2pPbFl6?=
 =?utf-8?B?a0ozOVJkaCt3Ti9LNm5kT1dTL21yVkZveUtzdTJXVTZJeUcvWGYydVFyTC8r?=
 =?utf-8?B?SVRBU2lvM2E2VVVHN0MwL096U0pXQkpjZlIvOGsyRUREN3NQM3cyRGZJaC9B?=
 =?utf-8?B?RENhSUpUS2s3SUJXcE5HWmlpeEk4YXZyVnZ2ODJFcHhvTG16TFAzV0dRL3I3?=
 =?utf-8?Q?3C43cWgOgsqIlIvAce5vgoY+g7/FeOuaipnDrkP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlU1eU1SZzRlbGdHUzlwcHNPSllvYkcxdngvTklNNDMwM0VWMW5taUpoVXFy?=
 =?utf-8?B?clFDUzArRTlENHU0WDJGL3UwYklhVmlETzUrR09FanJ6MDZnc2lUZ0J0NG9H?=
 =?utf-8?B?MmJxUFNxbDNBYjFCRG1OU1dJWFFCSU5ISnZuU01rcERtaXJtaWQrdTJNMm9N?=
 =?utf-8?B?bXBCdzh6VjBnMkpnUWM0eVVNZ0ludFMzVHZHL3N1aDdwMUYwMFZRY3YzUTJK?=
 =?utf-8?B?VXlXS0lTR0Y4YWI2dFBqNW4vV3ZFcTZCdGx6aVY2N25zNGZ3L2tDTHdvZ004?=
 =?utf-8?B?cWsxVXpyYnpTWUdzRTF1MWd4NkpNUVVPejZ1b3JTSEJLTmFJRXNsYTdZbXVz?=
 =?utf-8?B?bDFCUkVXNjhOU0cyMFdjbUtVWDd5SUNrRysvcGJjbVRiTlhNR0RzY3dReHNB?=
 =?utf-8?B?ZVZ2b0VoMGhUQlFuV1VKR2VEUFloalJuZU5QNnQ1THNEYWN6akVkQllZTnpN?=
 =?utf-8?B?Vk9jMXdQRVBnU2pnNysvUm0wRFZBOGhDK2JCNjJ6dUNkeVViVlBkczFSQTYr?=
 =?utf-8?B?NUF3SDl4SjBJZGFRZENxbGxQWGVkZElyWWxXcXY4aVZTdkcwZzNISE8xUmNF?=
 =?utf-8?B?K1VIRE9nMzJHbkRxYUN4TjM0eWdySDh0ZnREcFVkb1NuNU53ZWgrS2lkaUFy?=
 =?utf-8?B?NGUzbHVKRXg2UWI3SzZVc3hVQTM0K3lQdWF3QW9pL2pZMGdhOExTMHV3LzFE?=
 =?utf-8?B?dnlJazVVK09Idm9jTFBWWW9ZZXNCTTk3eFZwcHBaMlNCdEE4VjVuOVQ5WWJK?=
 =?utf-8?B?NnFvcS8yaGR1aWdmK0xXQzFlQ2t6UHVHS1Z3OWZSQ3NoT3FyRENaaTJ2WGg2?=
 =?utf-8?B?a1B6aWt6S3JkMmRkOFZ0UHk2MkdybzVBREs4cmxMU2hudzhhTnpIRStYRll2?=
 =?utf-8?B?UENVa3QyTmdsL2tJN1Arb1VsdmNCWEFYR0xTcDA2S3oxZDZ4bGZQYllNRDR3?=
 =?utf-8?B?aWt0dlg3dEZadmVVTGh0UE9UdkViMkU5ZjM3MVNaaTNHT2x3TFdlMTlTcVd4?=
 =?utf-8?B?WGIzOGFrdWZHNmZRVVpuUXd2WVRXeFBjUjFJWk9qcVo0Q2ozVmRYcEZZeG5n?=
 =?utf-8?B?K2VoYmlYVHNoeGZYWXc1ZW0xTkxRQ2s3UC84bWUvdkxuc214RGlZTTVyRXJ5?=
 =?utf-8?B?ajdtWWxRQTIwMGhiSnFiSVN4eXBydmZhZmJIdVRHc1hTNVNZRkFQRGErdXZT?=
 =?utf-8?B?RFNrUmZySEg1VFh1RVNrM0pQdGpNOElIT1VVMUx4b3J2YWg2RFRRTW1lOFQ0?=
 =?utf-8?B?T1Jzdmg4bitrSU1mQklIdmZYbVB5YmxIdW50dHJ3c2J0Ky96akdqc1dLRFIw?=
 =?utf-8?B?WmJjblVIcFUzSSsyMFV4RTRPa25IRmpDSnFSVTlnd2FJcGlMQkFFckFGVloy?=
 =?utf-8?B?aWE0WWRrWHZvS1d5V0k2UU9Kc29ObENKblhpbTExNEhlMnZ5QUc5TlBnck9O?=
 =?utf-8?B?bTAyVEgxZkNORCt4VmdSUklsSWZVcllzRkpNajR6S0hZVWJUTG1tQzZRZjBr?=
 =?utf-8?B?djgvVityU2lrRnoyOXNtemxBd1BGRmpPME5VT1poREpKUDloOUc4Qk00Tk5s?=
 =?utf-8?B?KzEzQjczOHJFNzRqSTNyTTQ2N0VKK25UVHRiVzlzWHM2bUY0ejR1bHNuTHdu?=
 =?utf-8?B?N25hZUlsN3RJamwzaml5SWNnRFR5Ri9LWnZCTXd4c0dISTJzU3BaTHdjaW5E?=
 =?utf-8?B?M1hTUWRRNXROazl6dXhOeW4rLy9KOXNlK2JRb0FXOHFBSzQrQjBxUXFOQWFi?=
 =?utf-8?B?RzV4NXBVdkhVR3lVMitsNzMrWllZN3lTYnA4ZWZTYld1dHUvcHowendrNFBx?=
 =?utf-8?B?VEtPa1pHU3VDMnEvSS80UmJtUjNaT1lpSm1JbW1tUzZZV2NiSGx5amhTanhy?=
 =?utf-8?B?WVF1VE5vcENkRXRWUHJnWkFhNW1XZ1NVRGhZN3ZqMGVONzFzYXA3a3dIZFJU?=
 =?utf-8?B?b1hvbC9IcDRyN3RJOVQxZ0VUR3FEYUg4ZThvUllnbXFBTWZCQ3JSaDBHdGMy?=
 =?utf-8?B?SUNqMVdod3FpV3JHVmhVemZUdHEyZFZxdmdOU3VYdUVodml6a1VpMm5xamlo?=
 =?utf-8?B?dnFiUGpiZ3dBbGw4dHVKbDA2bG5ZalpYeE56RjdKS1NHUEZNcHNYUmVjY1J0?=
 =?utf-8?B?V2ZMTWZmTWM2SVQwWjRMcFdHOGRYZEw2VE85L0I5ak03cE1qRWZ4NU5hMzB5?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24ca2f33-41a6-46aa-f222-08dcf3f321df
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 06:14:35.3714 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6gdM99cvqdHailPBxB+OsJ+ujSXuqiLevyB7mm0jdNudgOQwMEYQ5CXuo4w3VCSJcKkSEKaD6pQ2hASuoUdxMEFgSvb1/ykiilQp0ihhXLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7190
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


On 10/24/2024 3:16, Clint Taylor wrote:
> From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>
> The async flip moved from PLANE_CTL to PLANE_SURF for Xe3_LPD.
Can we have an empty line here to consider BSpec as part of the git 
trailer.
Other than this,
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Bspec: 69853,69878
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_universal_plane.c  | 13 +++++++++----
>   .../gpu/drm/i915/display/skl_universal_plane_regs.h |  1 +
>   2 files changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index a0a7ed01415a..60ca4f8c4a3c 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1567,17 +1567,22 @@ skl_plane_async_flip(struct intel_dsb *dsb,
>   	struct intel_display *display = to_intel_display(plane->base.dev);
>   	enum plane_id plane_id = plane->id;
>   	enum pipe pipe = plane->pipe;
> -	u32 plane_ctl = plane_state->ctl;
> +	u32 plane_ctl = plane_state->ctl, plane_surf;
>   
>   	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
> +	plane_surf = skl_plane_surf(plane_state, 0);
>   
> -	if (async_flip)
> -		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
> +	if (async_flip) {
> +		if (DISPLAY_VER(display) >= 30)
> +			plane_surf |= PLANE_SURF_ASYNC_UPDATE;
> +		else
> +			plane_ctl |= PLANE_CTL_ASYNC_FLIP;
> +	}
>   
>   	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
>   			   plane_ctl);
>   	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
> -			   skl_plane_surf(plane_state, 0));
> +			   plane_surf);
>   }
>   
>   static bool intel_format_is_p01x(u32 format)
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 4ddcd7d46bbd..ff31a00d511e 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -159,6 +159,7 @@
>   							_PLANE_SURF_2_A, _PLANE_SURF_2_B)
>   #define   PLANE_SURF_ADDR_MASK			REG_GENMASK(31, 12)
>   #define   PLANE_SURF_DECRYPT			REG_BIT(2)
> +#define   PLANE_SURF_ASYNC_UPDATE		REG_BIT(0)
>   
>   #define _PLANE_KEYMAX_1_A			0x701a0
>   #define _PLANE_KEYMAX_2_A			0x702a0

-- 
-shekhar

