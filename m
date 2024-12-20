Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D8D9F8ED3
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 10:18:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4AD710E122;
	Fri, 20 Dec 2024 09:18:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kco8uvlQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 217B910E122
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 09:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734686326; x=1766222326;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=eVCosp6qUm20ntbjssJMosqZlIQkCHj1RSvTK8nHU4M=;
 b=Kco8uvlQtzr1RfnOSBqdMrMRKLxFCMQLiy+8tVS4ob9UBuBdvPD3G9XW
 uB8RFpBH8HI/PdHG5IDd7475vIW9GtK5pzhl9Rk7XRkHmnD7ZxKH53WVP
 fJA3qzPYt0+Hxp/ot0MufRqAlnv8v0DccciXZpUIqy3wEpuckphNAc7Y+
 WLxebSHEwHrG3ScKnHVCQ+zdyW1rcqi45MPC2LGeheBbX3tfmYe5AR7jR
 22uPW77YTyX9YdHI9DB7lafZUKd205Up46Tzp/12HI/FKRsMKDtNs2hKA
 A624hBIE7jT0ysXf+EAhxTzVRLeAxIsOJn08XD+a0GLqlHlH7/M8lVWPm Q==;
X-CSE-ConnectionGUID: dDerq5ZwRiKF2yE3xPD6fA==
X-CSE-MsgGUID: yx1wyPjRRau76GpF0Uu+FQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="45835811"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208,217";a="45835811"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 01:18:44 -0800
X-CSE-ConnectionGUID: NJclRhHhQAGpctl8zwzK3w==
X-CSE-MsgGUID: Ao6qSIHxQiGikG+ODX4YLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208,217";a="98660651"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 01:18:44 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 01:18:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 01:18:44 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 01:18:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NqHQxFGtQKu+zvSlAHKJU3tI7og85EsYIYh/16CLb01MHVQTCtJ6go6ubhpHLfaKSuMLXv4tGjp/huy8S2dYuJ8yYe2vtMsJKcSzq/8eh85cqDzYwYNdZeTb7DoFn7Vd3G+Ue3g6iyTpwk0iZzJx61gHmYQ8uOFm8J5B0HWXxsj8WplaLvDUScehVTZbI5v7Uiz1JH3Yr89tezqrnEUPnk7BFUiS2qwK4lAiR2mknNtgmARrFpSgdnvwBKR18cLruX99G5M/W7Wh05mU6iOa3OySpF3HmYKBDFG6GIfAPT/aKD2E6d3c953zoN+zLKiPTiQPgZzY1j4PaYBHoa2/dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HfFzi2GCChdxTsVxTSd72J7rA/mVjuW9Lic+xhC7ko8=;
 b=A8S04cSzGnvXsJvWHHlCYkOUMuqF0kYuBTkt/d2cjLNz3G4xhCZU+1BLgKecGLQ2Krm3OEsjy68kmn+J5XbYwrF6uSpoqOFuFXC46N1RqsSP9YpYQEDlPUO90jSQsDPP09zjqZTBC5P7Qwx1Jx4VEgb11iasocAmibM9yeM44ZLBYeENUQkQMxPImqTmZZShmZYjti49DeQ9dvvkvoWn/Y3ChsQhSSXg/S2OON5T2/iNcQ19AIOhyUN/f+MOD4jzwv3p8UJM51DEYydnbov80X+hOIjNj9TLBdaWUSOSFgQ3o7iaw4UPxcuGYB97XULsmcMX0W/J1jV8S+NjhU/v/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 CY5PR11MB6464.namprd11.prod.outlook.com (2603:10b6:930:30::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8272.16; Fri, 20 Dec 2024 09:18:37 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::1cb8:b80d:4cae:5b17%5]) with mapi id 15.20.8272.013; Fri, 20 Dec 2024
 09:18:37 +0000
Content-Type: multipart/alternative;
 boundary="------------J5g1M2Eo3D60xmPXSYrDx0nV"
Message-ID: <3f9774e9-a828-4d4a-b127-03fdc42f69d0@intel.com>
Date: Fri, 20 Dec 2024 14:48:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Taylor, Clinton A"
 <clinton.a.taylor@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
References: <20241219173636.3377955-1-ravi.kumar.vodapalli@intel.com>
 <CH0PR11MB5444AB9D2F1E7EFEF18AA892E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
 <20241219204931.GX3224633@mdroper-desk1.amr.corp.intel.com>
 <CH0PR11MB54449DD2692CDB9FFFF25D39E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
In-Reply-To: <CH0PR11MB54449DD2692CDB9FFFF25D39E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
X-ClientProxiedBy: PN3PR01CA0080.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::22) To DM8PR11MB5624.namprd11.prod.outlook.com
 (2603:10b6:8:35::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5624:EE_|CY5PR11MB6464:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bfcec62-bb54-4899-f89e-08dd20d7491d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|8096899003|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SGJFdm05eVB4dW01N1NmNlFYTDJTd0dOZ2h3b3hobFphbjZMVXR1ZFIyRVlV?=
 =?utf-8?B?MytDL05WaGQ1NEhsS200OTNGaDh5RzVPWlRVelFyMjBwK0dkK0UvSDEvaTZI?=
 =?utf-8?B?TjlFdzhycW9XaUJDQURiUTdXb3Erc3RqNTcrSC91bEFPREs3QXNZMVhiazlU?=
 =?utf-8?B?ZjFSd1dTSGo5VTUzdG9KTjl5OG13STA4Lzd3TFhDL2F6T0ROZG5rdGRSVlJk?=
 =?utf-8?B?NWdwR2FvQmhMaThIZmpteWYwZFRVSFRudHhSZTQ0bmh2ZFJ2OEZDdG1FNXdO?=
 =?utf-8?B?ZlpZaWV0Qi9vMDNETStQT0RTazlocUNFS1ZnWkpKS21ieGlqZENuNExCVlRv?=
 =?utf-8?B?dW9IVWhyQ2Z6Z0lJLzEzS2F2NWxqZXlaNlJQelF5WlVVM2xqMnhpaTNDNlg3?=
 =?utf-8?B?WGIyZ21PMXJHQnN1V1V0R05yRFBsZkh1dlBCQ2lBYnVyMXBHUmw3bWx0UDV3?=
 =?utf-8?B?b29MbGxCU09zNGJ5M05QbWx5OTkraXZJRVJXNGMyNzc2bFZSZmJHRGxYN1ht?=
 =?utf-8?B?dDRHWmNaZVU0SDIrOWFQbG5KenN0TVlRTyswNnNtSHRkTDd3T1NaQWJNS2lN?=
 =?utf-8?B?cjYxaldnb1ZiWnFnbllmQVVzZHNXajNsQkt6UUFjRXFWRk1wam1TQ0s0L012?=
 =?utf-8?B?ck5ZMDY2UlJEWWNTRjl6TWRoa1VUajFRUkRZd2IxampuTXIyaUYzVk14aXhX?=
 =?utf-8?B?a2pUNjVEcDFYdE1yaDhzaVNSVDFlaEFLYm5ITmFkWEJMM1pVOUl2WkRnM0pQ?=
 =?utf-8?B?TGtBdTVDNzZ1dUtYVHJlWWNWbTNNLzE0a1hRVWVqeXM2N1hmL2dDSEtXQllN?=
 =?utf-8?B?ZHByUzI0STRyZHVUYXFPbHU5cXN6Z1E2QmoxWXFNQXlXd2pxeDBwdEFUM2lZ?=
 =?utf-8?B?dHlqZTJPYVlFSmE0TjlXSXU4Vnhjd3ZMM1JFV01yM3kwaVdsRmR3cUluNE03?=
 =?utf-8?B?Nk8yeHZuVmQ4cnRab21ZcWJIYURoUjRRQkJpWWJKeDlSUDI3SmZ6d1RGanZJ?=
 =?utf-8?B?TVpBRW5zMFN0VzNYbG13aks5d0htTzBBZHhKeTdlVmdjRXMxUEt6azYycitW?=
 =?utf-8?B?NVhGRlBUMVk3cWZVajVDa1RUM0dUemtIQzhEcnZKNG93TjhxZUU3TE9sYkhS?=
 =?utf-8?B?ODdtcGpiS2hkVjRvbGRwUVBlMldIYkc0cS82b2xPQzlFMjRDME4vbzJTMU95?=
 =?utf-8?B?aWFIWlVnbWg3QlFXUXZ4VmN4RC9sUDRVY1Z2Wk1ScFdIUk8wODBCZjliQW1Y?=
 =?utf-8?B?TUJLaXdIM28rRVlDNGZWa0M5c2YvYU96N0Mxbktmc01hOXNKRlIyVDY2MmdY?=
 =?utf-8?B?TUExTWdPaE5ZL3ZTdlA5eks3aG5PeS9BUVJxRmxPMDJrRFYrU21OUkIzb0Mv?=
 =?utf-8?B?LzdZdzF0ekNFNXdWWDRVTEtHZXBtQ3Z5N28xMUxFMWZxT0Q5V2lNY3g2NnM5?=
 =?utf-8?B?eTQ0ZzJzVFJPbXhGeVdGWEFSbFcwblkyRjdPbCtJdnRDSzdDSEYwOUFCY0ZB?=
 =?utf-8?B?YmNqd29FR0VOSTlsTEZxVituTUZsMU9yVms3VmZZRTU5dDF3S3BNYUZSMzls?=
 =?utf-8?B?NmxoQVRoVHdtaER6UUpWWTQzN3ppWXNHUXJDbHkyMms3RVNIOEZhZnVYcDBH?=
 =?utf-8?B?dlZGUEg4VFRnK2xiNzB0dnU2TG1rMVh0bmNPclM0RzY0d3BBTTNVZ0FDUnlZ?=
 =?utf-8?B?YndYV3psOEtMcHZhSWF6MEtZUG0vdE1HY0drL084T3JacDVYWUhwWDF2M0Fa?=
 =?utf-8?B?RjdPOGtUbEwzQ3FsWUIyN3hQUk1USUNJdVZwcXdUSTMvUWpFWjVnczh0MnJ3?=
 =?utf-8?B?TFJSaTM2YWMwOU1lQnVPNTVvalk3MzVLN0VicUFpTlZCS1RRQUc4VHEzQy9U?=
 =?utf-8?Q?ysSOaU0ovSOHw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(8096899003)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnVLbDg3dXJhbmtuRlhrc2p5MFFFb2ZPREN4eUgxQVBtOWltZUV0aGIrZXA4?=
 =?utf-8?B?WnA2bDdIRUlCTmJrNUhhd2ZhOUZ1bFBzajJsMmZBYnI1TFlmdXVCQk52ekN1?=
 =?utf-8?B?Vk03ZTM1ck5lSGRPWmpGcStzVHlOUi8vWXJvUFhQMks2SjBKenFJWU9DbkhP?=
 =?utf-8?B?R0E5K2ZNK0UzOC9MVTZWSzRkODBhUEg5STErbGNwUGMrSmRCUTRZdTlPYUpi?=
 =?utf-8?B?TytSSkswcUYrdWEraVRnTkNlS3F6RUl4b0JIQW0yVUxuNjdEUEF5UGxYaEFi?=
 =?utf-8?B?Q1BrZ1J4eldQTEN1bHdWZDR3RkY3ZWUxMDVvWWlkSEo1WVY1bHBzSUR0OEpx?=
 =?utf-8?B?VkpJNXNncGJXWFc3N25GR0J5NUxyb3h5bVJuSEZ3akNUVUp3amlZdzY3cFgw?=
 =?utf-8?B?NWJEOFBaMkNOUEI0MitPektaWWwrcnNDNUVSVkhYenlmNkplRTRxSWlnNDlX?=
 =?utf-8?B?cVJ5VjNUbmIyd0puNmM3OUNlTXNoMlZQRXUzNXRhVG5VVTRsSjhyc3ZDejQw?=
 =?utf-8?B?ZlRwekZETnJ0T3liSWMrYnpHL0xqRWdyYzE2OSs1Zmk2MzNDWW9veXdKWFJn?=
 =?utf-8?B?czc4dlJNeHQ3aklRUDBrVHlKOTAvNWRNelRVY2RsV2VtMGw3Y2RMTHJkVG1l?=
 =?utf-8?B?WUhHenFZUys2Y2F0bmMzUitZOE8yeUpORjJrdlhlWmtyMDUwNWkzeUdHSjRD?=
 =?utf-8?B?WTRXRWtkNnNYOUp0ODF0K1QxUmY3Qk4zNDE5bit5bWJVMFhwRW9qZ3picU1H?=
 =?utf-8?B?SjliR3hZcVVTK3JKbEU1eDBac2QrOU9sTkVRc0JlUnc2djlRMjdDWXJWYWZi?=
 =?utf-8?B?aHZ2REQ1NjZjaTkxa2lKRUhOeE1jSzZETTR4ZzFNQXhpc3RVTlgyQ1VMWjVN?=
 =?utf-8?B?OG9oMldyYXI2WG8xcmx1U1B5UDZqZ0QvczNmbzhVdXZuOG1SbFl3djY2bS85?=
 =?utf-8?B?dWxoRytqdTlrOXV5SzFtSmRzdzZnTUZCQllCTzl1QnkydkF0a3Q4UnVwL3ha?=
 =?utf-8?B?bzJQdVNsVVprZ01NVjRYWlAzTFBwNG1uRVpqN1Yzc0FyYzRFbVpsTm5EdWpT?=
 =?utf-8?B?dHdNa1lkV2VoZWlWT3JmZ0pXWmZ2Q0pGRVVDWUN6RlRWQWJFdEdZbzU1ZWwr?=
 =?utf-8?B?NWE5UW4yL0FKczBuZVA1Z1hxK3g5eUlyOFQrZmF0cTgzK01XcnhOb2lkeG1l?=
 =?utf-8?B?N0RuSGR0TTZteU1XTEROMTBkNC9POW1DSlZrU0NZWXZ3TVdZRmZtbi9qMUM2?=
 =?utf-8?B?UDhwa1FOMjRqRXNDWG1EMjB5ajRFcXBxM2tnL3lyU2pUMzQ5ZW1mZXBrSDJa?=
 =?utf-8?B?aGlQZkdQWlBoNlFXZmRITjQzbG54STkxL2dLZ0ZML0Y4V0JyZ2duTEt4M25V?=
 =?utf-8?B?SjNQT0kyWko5Qk40VDNtaGYxMFhUSUw4UC93T0l2QWQvTVZuNGtOd25SOC95?=
 =?utf-8?B?a2QxTUdOTUJsejFObG1zc3ZGWldEVlYzaFhzc0M2c0t2dFdrclQ2cnRwSHRi?=
 =?utf-8?B?d1A3RktNWFdCeS9DczJOSXpXWjZvZ2JBMG16QXM0WFgzRU9Lc3A4SlUwRkZ0?=
 =?utf-8?B?ek9KWGl6TVhUZ2dPSTRWOXVXdUlaQ3RWSk5GM21PdXMrenYwd2V3Q3lxWFVC?=
 =?utf-8?B?dVplUGQvUXhEVkpVTzVzVFhSZ21PcVNodHNTSDhHR1NlSXdIQUhieTFIdUw1?=
 =?utf-8?B?dnc0SEUzanVHS0ZYSEtOZFVqVGpyaGx0ZFl2dDhGWng3ZnRrS0xPelhJUVJw?=
 =?utf-8?B?ZG5kNCtMRXVwd01nUjFRSTU2WS9nVFB0ZEZmN01lTUlaRnFBRlpVdnZkUFBZ?=
 =?utf-8?B?MCtPOThuajRKZUZkNGZRb2xWNEdZd0I0c2VBalNIaGFzc09zUzVGTUluaTFp?=
 =?utf-8?B?OWp4ZUpKUWd3a0xicHdGZTYrWTFiMVR6MExLTzZIOXNOL05vQW5FYXAyWG9n?=
 =?utf-8?B?SlU2VzhjbjlidHB3SUlhMmhGMUMyT2pwMmhUMUJDMU1FbXpCTWphUDExdmdm?=
 =?utf-8?B?WUpXbjg2cU91UENydVZzaEs3K09zbVlSNW00SlVFRnJlQ3VXUWpSaUZSUWcv?=
 =?utf-8?B?d1kvQlRlVzlwQ3pKelYzNVNPZUxXWW91bGZESEswbVpnVzR3Y1RVNlAzOHMv?=
 =?utf-8?B?L2xOcnp2eklPc0VLOWxzVTFEdEd5ZWZlOUpZV1VJWFhsaWplTkg4UkZYWDVa?=
 =?utf-8?Q?475mpbGCKcetHvX0IllRwaA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bfcec62-bb54-4899-f89e-08dd20d7491d
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 09:18:37.6906 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: imyke+TdLXepxKm839iOTPSV0zNHDmM8aOdxkfdTn6GShUkBRdzT5jgBkTX+4rOXnxsgGPgst+l3/WbSScED/HyJiKpjD00aR16WNpKxnIE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6464
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

--------------J5g1M2Eo3D60xmPXSYrDx0nV
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit




On 12/20/2024 2:49 AM, Cavitt, Jonathan wrote:
> -----Original Message-----
>> From: Roper, Matthew D<matthew.d.roper@intel.com> 
>> Sent: Thursday, December 19, 2024 12:50 PM
>> To: Cavitt, Jonathan<jonathan.cavitt@intel.com>
>> Cc: Vodapalli, Ravi Kumar<ravi.kumar.vodapalli@intel.com>;intel-gfx@lists.freedesktop.org; Vivekanandan, Balasubramani<balasubramani.vivekanandan@intel.com>; De Marchi, Lucas<lucas.demarchi@intel.com>; Sousa, Gustavo<gustavo.sousa@intel.com>; Taylor, Clinton A<clinton.a.taylor@intel.com>; Atwood, Matthew S<matthew.s.atwood@intel.com>; Bhadane, Dnyaneshwar<dnyaneshwar.bhadane@intel.com>; Kalvala, Haridhar<haridhar.kalvala@intel.com>; Chauhan, Shekhar<shekhar.chauhan@intel.com>
>> Subject: Re: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state service
>>
>> On Thu, Dec 19, 2024 at 11:39:07AM -0800, Cavitt, Jonathan wrote:
>>> -----Original Message-----
>>> From: Intel-gfx<intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ravi Kumar Vodapalli
>>> Sent: Thursday, December 19, 2024 9:37 AM
>>> To:intel-gfx@lists.freedesktop.org
>>> Cc: Vivekanandan, Balasubramani<balasubramani.vivekanandan@intel.com>; Roper, Matthew D<matthew.d.roper@intel.com>; De Marchi, Lucas<lucas.demarchi@intel.com>; Sousa, Gustavo<gustavo.sousa@intel.com>; Taylor, Clinton A<clinton.a.taylor@intel.com>; Atwood, Matthew S<matthew.s.atwood@intel.com>; Bhadane, Dnyaneshwar<dnyaneshwar.bhadane@intel.com>; Kalvala, Haridhar<haridhar.kalvala@intel.com>; Chauhan, Shekhar<shekhar.chauhan@intel.com>
>>> Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state service
>>>> While display initialization along with MBUS credits programming
>>>> DBUF_CTL register is also programmed, as a part of it the tracker
>>>> state service field is also set to 0x8 value when default value is
>>>> other than 0x8 which are for platforms past display version 13.
>>>> For remaining platforms the default value is already 0x8 so don't
>>>> program them.
>>> This could use some rewording.  Perhaps:
>>> """
>>> For platforms past display version 13, during display initialization along
>>> with MBUS credits and DBUF_CTL register programming, the tracker state
>>> service field is set to a value of 0x8, which is not the default value for
>>> these platforms.  All other platforms use 0x8 as the default value and thus
>>> do not need to be overwritten.
>>> """
>>>
>>> Or maybe:
>>> """
>>> During display initialization and MBUS credits programming, the
>>> DBUF_CTL register is also programmed.  Specifically, when
>>> programming DBUF_CTL, the tracker state service field is set to the
>>> value 0x8.  However, this is already the default value for platforms
>>> using display versions 13 and prior, so we do not need to program
>>> the DBUF_CTL register on those platforms.
>>> """
>> I think these are still missing the point a bit.  The key is that the
>> bspec asks us to program non-default values _only_ on certain platforms.
>> For all other platforms (both earlier and later), the expectation
>> is that the hardware's default settings (whatever they happen to be for
>> a given platform) are already correct and should not be adjusted.
>>
>> The code here was originally written back during gen12 development
>> following the standard "assume driver changes will apply to all future
>> platforms too until we know otherwise" design, so the original test was
>> written as ">= 12."  It looks like DG2 (one display version 13 platform)
>> still needed the programming, but ADL-P (the other display version 13
>> platform) did not.  From version 14 onward, no platforms need it.  So
>> the correct condition to match the hardware/bspec's rules would be:
>>
>>      if (DISPLAY_VER(display) == 12 || display->platform.dg2)

Here since DG2 check is also coming into picture which is display 
version 13 we have to roll back
to previous code, because the higher display versions than 12 should be 
handled in gen12_dbuf_slices_config() function and implement check for 
dg2 in that function

if (DISPLAY_VER(display) >= 12)
	 gen12_dbuf_slices_config(display);


Ravi Kumar V
>> (I think on an earlier review of this I said it should be just
>> "DISPLAY_VER(display) == 12" but I overlooked that DG2 is indeed
>> included in the list of platforms on bspec page 49213).
>>
>> Once later platforms like ADL-P, MTL, etc. rolled around, it turned out
>> that explicit programming was actually not expected to carry forward,
>> and we should have adjusted the condition to just 12+DG2 at that time,
>> but it was overlooked.  That was technically a bug, but it turned out to
>> be harmless because the explicit value we were programming (8) happened
>> to match the new hardware defaults on display version 13.  However we
>> shouldn't count on it staying harmless forever --- if the hardware
>> default ever changes to something else in the future, then it can cause
>> problems if we're still explicitly programming it to "8" by accident;
>> this patch is addressing that earlier oversight.
>>
>>>> Bspec: 49213
>>>> Signed-off-by: Ravi Kumar Vodapalli<ravi.kumar.vodapalli@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
>>>>   1 file changed, 1 insertion(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>>>> index 34465d56def0..98db721cba33 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>>>> @@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
>>>>   {
>>>>   	enum dbuf_slice slice;
>>>>   
>>>> -	if (display->platform.alderlake_p)
>>>> -		return;
>>>> -
>>> I take it we're removing this condition because we no longer expect this code to run
>>> on alderlake_p anyways?
>> There's a platform/version check at the callsite and another here inside
>> the function.  We only need to do the check at one place or the other;
>> that's somewhat independent of fixing the check(s) themselves to match
>> the right platforms.
>>
>>>>   	for_each_dbuf_slice(display, slice)
>>>>   		intel_de_rmw(display, DBUF_CTL_S(slice),
>>>>   			     DBUF_TRACKER_STATE_SERVICE_MASK,
>>>> @@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_display *display,
>>>>   	/* 4. Enable CDCLK. */
>>>>   	intel_cdclk_init_hw(display);
>>>>   
>>>> -	if (DISPLAY_VER(display) >= 12)
>>>> +	if (DISPLAY_VER(display) == 12)
>>> If I'm understanding the purpose of this patch correctly (which I'm probably not),
>>> shouldn't this be "if (DISPLAY_VER(display) > 13)"?
>>> We only want to overwrite the tracker state service field on platforms after display version 13,
>>> and it seems like gen12_dbuf_slices_config overwrites the tracker state service field.
>> No, this change here is [mostly] correct; explicit driver programming at
>> display init time should only happen on 12 and DG2.  The DG2 condition
>> is missing (probably because I overlooked it and misspoke in an earlier
>> code review).  For all other platforms (both earlier and later versions)
>> we should leave the MBUF_CTL registers at their hardware defaults and
>> not touch them here.
>>
>> Also, don't confuse the code here (which adjusts the register at display
>> init time) with the other (re)programming of these values that happens
>> at runtime during modeset (adjusting based on how many pipes are
>> active).  There are separate rules later in the bspec page and separate
>> code that handles that (correctly I believe); the patch here is just
>> addressing the specific stanza of the bspec page that says "The MBus
>> credits should be setup once with the following default values during
>> the display initialization," and that block only applies to the various
>> platforms that user display version 12, and then also to DG2.
>>
> Thank you to both @Roper, Matthew D and @Sousa, Gustavo for your input here.
>
> Perhaps this would be a better revision to the commit message in that case?
> """
> Only the following platforms mandate updating
> DBUF_TRACKER_STATE_SERVICE during display initialization:
> 1. All platforms that use display version 12
> 2. DG2
>
> All other platforms should use their default values unless stated
> otherwise, so update the display initialization code to reflect this
> requirement.
> """
> -Jonathan Cavitt
>
>> Matt
>>
>>> -Jonathan Cavitt
>>>
>>>>   		gen12_dbuf_slices_config(display);
>>>>   
>>>>   	/* 5. Enable DBUF. */
>>>> -- 
>>>> 2.25.1
>>>>
>>>>
>> -- 
>> Matt Roper
>> Graphics Software Engineer
>> Linux GPU Platform Enablement
>> Intel Corporation
>>

--------------J5g1M2Eo3D60xmPXSYrDx0nV
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <br>
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On 12/20/2024 2:49 AM, Cavitt, Jonathan
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CH0PR11MB54449DD2692CDB9FFFF25D39=
E5062@CH0PR11MB5444.namprd11.prod.outlook.com">
      <pre wrap=3D"" class=3D"moz-quote-pre">-----Original Message-----
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">From: Roper, Matthew D <a cl=
ass=3D"moz-txt-link-rfc2396E" href=3D"mailto:matthew.d.roper@intel.com">&lt=
;matthew.d.roper@intel.com&gt;</a>=20
Sent: Thursday, December 19, 2024 12:50 PM
To: Cavitt, Jonathan <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jona=
than.cavitt@intel.com">&lt;jonathan.cavitt@intel.com&gt;</a>
Cc: Vodapalli, Ravi Kumar <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto=
:ravi.kumar.vodapalli@intel.com">&lt;ravi.kumar.vodapalli@intel.com&gt;</a>=
; <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:intel-gfx@lists.free=
desktop.org">intel-gfx@lists.freedesktop.org</a>; Vivekanandan, Balasubrama=
ni <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:balasubramani.vivekana=
ndan@intel.com">&lt;balasubramani.vivekanandan@intel.com&gt;</a>; De Marchi=
, Lucas <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:lucas.demarchi@in=
tel.com">&lt;lucas.demarchi@intel.com&gt;</a>; Sousa, Gustavo <a class=3D"m=
oz-txt-link-rfc2396E" href=3D"mailto:gustavo.sousa@intel.com">&lt;gustavo.s=
ousa@intel.com&gt;</a>; Taylor, Clinton A <a class=3D"moz-txt-link-rfc2396E=
" href=3D"mailto:clinton.a.taylor@intel.com">&lt;clinton.a.taylor@intel.com=
&gt;</a>; Atwood, Matthew S <a class=3D"moz-txt-link-rfc2396E" href=3D"mail=
to:matthew.s.atwood@intel.com">&lt;matthew.s.atwood@intel.com&gt;</a>; Bhad=
ane, Dnyaneshwar <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:dnyanesh=
war.bhadane@intel.com">&lt;dnyaneshwar.bhadane@intel.com&gt;</a>; Kalvala, =
Haridhar <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:haridhar.kalvala=
@intel.com">&lt;haridhar.kalvala@intel.com&gt;</a>; Chauhan, Shekhar <a cla=
ss=3D"moz-txt-link-rfc2396E" href=3D"mailto:shekhar.chauhan@intel.com">&lt;=
shekhar.chauhan@intel.com&gt;</a>
Subject: Re: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state=
 service

On Thu, Dec 19, 2024 at 11:39:07AM -0800, Cavitt, Jonathan wrote:
</pre>
        <blockquote type=3D"cite">
          <pre wrap=3D"" class=3D"moz-quote-pre">-----Original Message-----
From: Intel-gfx <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:intel-gfx=
-bounces@lists.freedesktop.org">&lt;intel-gfx-bounces@lists.freedesktop.org=
&gt;</a> On Behalf Of Ravi Kumar Vodapalli
Sent: Thursday, December 19, 2024 9:37 AM
To: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:intel-gfx@lists.fr=
eedesktop.org">intel-gfx@lists.freedesktop.org</a>
Cc: Vivekanandan, Balasubramani <a class=3D"moz-txt-link-rfc2396E" href=3D"=
mailto:balasubramani.vivekanandan@intel.com">&lt;balasubramani.vivekanandan=
@intel.com&gt;</a>; Roper, Matthew D <a class=3D"moz-txt-link-rfc2396E" hre=
f=3D"mailto:matthew.d.roper@intel.com">&lt;matthew.d.roper@intel.com&gt;</a=
>; De Marchi, Lucas <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:lucas=
.demarchi@intel.com">&lt;lucas.demarchi@intel.com&gt;</a>; Sousa, Gustavo <=
a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:gustavo.sousa@intel.com">&=
lt;gustavo.sousa@intel.com&gt;</a>; Taylor, Clinton A <a class=3D"moz-txt-l=
ink-rfc2396E" href=3D"mailto:clinton.a.taylor@intel.com">&lt;clinton.a.tayl=
or@intel.com&gt;</a>; Atwood, Matthew S <a class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:matthew.s.atwood@intel.com">&lt;matthew.s.atwood@intel.com&g=
t;</a>; Bhadane, Dnyaneshwar <a class=3D"moz-txt-link-rfc2396E" href=3D"mai=
lto:dnyaneshwar.bhadane@intel.com">&lt;dnyaneshwar.bhadane@intel.com&gt;</a=
>; Kalvala, Haridhar <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:hari=
dhar.kalvala@intel.com">&lt;haridhar.kalvala@intel.com&gt;</a>; Chauhan, Sh=
ekhar <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:shekhar.chauhan@int=
el.com">&lt;shekhar.chauhan@intel.com&gt;</a>
Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state ser=
vice
</pre>
          <blockquote type=3D"cite">
            <pre wrap=3D"" class=3D"moz-quote-pre">
While display initialization along with MBUS credits programming
DBUF_CTL register is also programmed, as a part of it the tracker
state service field is also set to 0x8 value when default value is
other than 0x8 which are for platforms past display version 13.
For remaining platforms the default value is already 0x8 so don't
program them.
</pre>
          </blockquote>
          <pre wrap=3D"" class=3D"moz-quote-pre">
This could use some rewording.  Perhaps:
&quot;&quot;&quot;
For platforms past display version 13, during display initialization along
with MBUS credits and DBUF_CTL register programming, the tracker state
service field is set to a value of 0x8, which is not the default value for
these platforms.  All other platforms use 0x8 as the default value and thus
do not need to be overwritten.
&quot;&quot;&quot;

Or maybe:
&quot;&quot;&quot;
During display initialization and MBUS credits programming, the
DBUF_CTL register is also programmed.  Specifically, when
programming DBUF_CTL, the tracker state service field is set to the
value 0x8.  However, this is already the default value for platforms
using display versions 13 and prior, so we do not need to program
the DBUF_CTL register on those platforms.
&quot;&quot;&quot;
</pre>
        </blockquote>
        <pre wrap=3D"" class=3D"moz-quote-pre">
I think these are still missing the point a bit.  The key is that the
bspec asks us to program non-default values _only_ on certain platforms.
For all other platforms (both earlier and later), the expectation
is that the hardware's default settings (whatever they happen to be for
a given platform) are already correct and should not be adjusted.

The code here was originally written back during gen12 development
following the standard &quot;assume driver changes will apply to all future
platforms too until we know otherwise&quot; design, so the original test wa=
s
written as &quot;&gt;=3D 12.&quot;  It looks like DG2 (one display version =
13 platform)
still needed the programming, but ADL-P (the other display version 13
platform) did not.  From version 14 onward, no platforms need it.  So
the correct condition to match the hardware/bspec's rules would be:

    if (DISPLAY_VER(display) =3D=3D 12 || display-&gt;platform.dg2)
</pre>
      </blockquote>
    </blockquote>
    <br>
    Here since DG2 check is also coming into picture which is display
    version 13 we have to roll back <br>
    to previous code, because the higher display versions than 12 should
    be handled in <span style=3D"white-space: pre-wrap">
gen12_dbuf_slices_config() function and implement check for dg2 in that fun=
ction
</span>
    <pre wrap=3D"" class=3D"moz-quote-pre">if (DISPLAY_VER(display) &gt;=3D=
 12)
	 gen12_dbuf_slices_config(display);
</pre>
    <br>
    Ravi Kumar V<br>
    <blockquote type=3D"cite" cite=3D"mid:CH0PR11MB54449DD2692CDB9FFFF25D39=
E5062@CH0PR11MB5444.namprd11.prod.outlook.com">
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">
(I think on an earlier review of this I said it should be just
&quot;DISPLAY_VER(display) =3D=3D 12&quot; but I overlooked that DG2 is ind=
eed
included in the list of platforms on bspec page 49213).

Once later platforms like ADL-P, MTL, etc. rolled around, it turned out
that explicit programming was actually not expected to carry forward,
and we should have adjusted the condition to just 12+DG2 at that time,
but it was overlooked.  That was technically a bug, but it turned out to
be harmless because the explicit value we were programming (8) happened
to match the new hardware defaults on display version 13.  However we
shouldn't count on it staying harmless forever --- if the hardware
default ever changes to something else in the future, then it can cause
problems if we're still explicitly programming it to &quot;8&quot; by accid=
ent;
this patch is addressing that earlier oversight.

</pre>
        <blockquote type=3D"cite">
          <pre wrap=3D"" class=3D"moz-quote-pre">
</pre>
          <blockquote type=3D"cite">
            <pre wrap=3D"" class=3D"moz-quote-pre">
Bspec: 49213
Signed-off-by: Ravi Kumar Vodapalli <a class=3D"moz-txt-link-rfc2396E" href=
=3D"mailto:ravi.kumar.vodapalli@intel.com">&lt;ravi.kumar.vodapalli@intel.c=
om&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/g=
pu/drm/i915/display/intel_display_power.c
index 34465d56def0..98db721cba33 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_dis=
play *display)
 {
 	enum dbuf_slice slice;
=20
-	if (display-&gt;platform.alderlake_p)
-		return;
-
</pre>
          </blockquote>
          <pre wrap=3D"" class=3D"moz-quote-pre">
I take it we're removing this condition because we no longer expect this co=
de to run
on alderlake_p anyways?
</pre>
        </blockquote>
        <pre wrap=3D"" class=3D"moz-quote-pre">
There's a platform/version check at the callsite and another here inside
the function.  We only need to do the check at one place or the other;
that's somewhat independent of fixing the check(s) themselves to match
the right platforms.

</pre>
        <blockquote type=3D"cite">
          <pre wrap=3D"" class=3D"moz-quote-pre">
</pre>
          <blockquote type=3D"cite">
            <pre wrap=3D"" class=3D"moz-quote-pre"> 	for_each_dbuf_slice(di=
splay, slice)
 		intel_de_rmw(display, DBUF_CTL_S(slice),
 			     DBUF_TRACKER_STATE_SERVICE_MASK,
@@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_displa=
y *display,
 	/* 4. Enable CDCLK. */
 	intel_cdclk_init_hw(display);
=20
-	if (DISPLAY_VER(display) &gt;=3D 12)
+	if (DISPLAY_VER(display) =3D=3D 12)
</pre>
          </blockquote>
          <pre wrap=3D"" class=3D"moz-quote-pre">
If I'm understanding the purpose of this patch correctly (which I'm probabl=
y not),
shouldn't this be &quot;if (DISPLAY_VER(display) &gt; 13)&quot;?
We only want to overwrite the tracker state service field on platforms afte=
r display version 13,
and it seems like gen12_dbuf_slices_config overwrites the tracker state ser=
vice field.
</pre>
        </blockquote>
        <pre wrap=3D"" class=3D"moz-quote-pre">
No, this change here is [mostly] correct; explicit driver programming at
display init time should only happen on 12 and DG2.  The DG2 condition
is missing (probably because I overlooked it and misspoke in an earlier
code review).  For all other platforms (both earlier and later versions)
we should leave the MBUF_CTL registers at their hardware defaults and
not touch them here.

Also, don't confuse the code here (which adjusts the register at display
init time) with the other (re)programming of these values that happens
at runtime during modeset (adjusting based on how many pipes are
active).  There are separate rules later in the bspec page and separate
code that handles that (correctly I believe); the patch here is just
addressing the specific stanza of the bspec page that says &quot;The MBus
credits should be setup once with the following default values during
the display initialization,&quot; and that block only applies to the variou=
s
platforms that user display version 12, and then also to DG2.

</pre>
      </blockquote>
      <pre wrap=3D"" class=3D"moz-quote-pre">
Thank you to both @Roper, Matthew D and @Sousa, Gustavo for your input here=
.

Perhaps this would be a better revision to the commit message in that case?
&quot;&quot;&quot;
Only the following platforms mandate updating
DBUF_TRACKER_STATE_SERVICE during display initialization:
1. All platforms that use display version 12
2. DG2

All other platforms should use their default values unless stated
otherwise, so update the display initialization code to reflect this
requirement.
&quot;&quot;&quot;
-Jonathan Cavitt

</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"" class=3D"moz-quote-pre">
Matt

</pre>
        <blockquote type=3D"cite">
          <pre wrap=3D"" class=3D"moz-quote-pre">
-Jonathan Cavitt

</pre>
          <blockquote type=3D"cite">
            <pre wrap=3D"" class=3D"moz-quote-pre"> 		gen12_dbuf_slices_con=
fig(display);
=20
 	/* 5. Enable DBUF. */
--=20
2.25.1


</pre>
          </blockquote>
        </blockquote>
        <pre wrap=3D"" class=3D"moz-quote-pre">
--=20
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation

</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------J5g1M2Eo3D60xmPXSYrDx0nV--
