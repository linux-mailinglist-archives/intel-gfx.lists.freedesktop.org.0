Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D99E8CD15C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 13:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29FE10E291;
	Thu, 23 May 2024 11:38:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bXeL4pT1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 027F310E291
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 11:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716464333; x=1748000333;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8CE1zR8p4rJOGiVTY2lo8q031stpmwIOfAsshZjbiXE=;
 b=bXeL4pT10BCEFnIGLpRJEVEhLTplk6OSbCCbmXVKSiSc+1tsG3tcwWOF
 VHbk4dGNb+GM5V7dXzaXU4FIoYgeiksYL2bIHxvbe4ks7aXVXO6SqDr3/
 2KMe/1AlAdYKGZWqi21xN1ERFH0m/38fHU0MMWBHOO1Ms3VlTwK6BtzZ+
 hmjpjMwoxc8a1/uLpRG9LGFiLcjfNWYAtYfByhjuI2IBVPj+cy6KmHpYj
 SYer+QghqSi0+oPKt/f5Lsr/FD3+Nex5OdwD3Rlh8ITtRLM/n2NAxaVRZ
 WOL4TQ9Q62p9tUBUvLJJQL/axMw57RYvCeLg1NuEEMRsdz6nCA2my/uyr g==;
X-CSE-ConnectionGUID: 6YoZVmCHQcCKj5dfwy15eg==
X-CSE-MsgGUID: 6p+bN3f2Tjehxs23yd+lLA==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="16611895"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="16611895"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 04:38:52 -0700
X-CSE-ConnectionGUID: sI3aZjzSRqeg6iegt7X2yA==
X-CSE-MsgGUID: PPWIrU4qQdC/0cxkmhGhWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33710090"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 04:38:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 04:38:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 04:38:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 04:38:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QDJbM+Am8m1cX7YvygODDnPUaxxkgTy1JBMg4N8IDJ07DJK/B+FYVpuCUO/ehdioITj3saCmmU+5+KInh5YdJQl6OH/SjYrycuQVQwqUdzAX38XtuRAS1sXKj4R7iPkucS3L9T0yLq7DEa/RYVgrOj/b05mb/2K0AX01/JizwrRIDM0w04nqRHCIJL7VaN/3mCzz/tt+ytMDzh2IoRc42Fivzi4VF9kndeClCBVrH27lk6XKpvnXehMoIT4a8gopAqAnD7HrskniqGunfbMLsqDG6qI+mEO0Mn6BLa3lSAT3ZhvIiPHUGDQLKv+nGmJvkIRI7fE+HU+znK2UmSnftw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x2BbY2fn5G+nsPhKzT/IS8oESJTva6fU7CSzMzoEEOQ=;
 b=ZKIKf8BMu8RxwNSsji/U/s1Xl7kSbZYqDR+8Z7rC49E6wAzrNyOUgW7PFPmyVYPB6AvxFwIf5C5F2DLO2AvNnYPKkdHt6jJb4PvYLH20MhP2LvZdtol7Tg6jTCxOyCqekiBLd5aUV19UF9MziyxcmGKipWVFX5lZ1vYOMcqeC+63jyhp/qsqHsn0yD9ldhS4nAQDJ17GfUF07ka7ctlom2dywrOlVja3/Epvqptt2/o/Q+eQE87Rxbxj+qRuEgEtmmHwH2Y8DPV1/Xs8fc6l6lZ9RR4DoNGP7Nbsb1DUOs3PSrghqCetcgwBUkPzgPZkGhX8rMOrXdrfJbnTRgHYHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8382.namprd11.prod.outlook.com (2603:10b6:610:173::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.20; Thu, 23 May
 2024 11:38:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 11:38:45 +0000
Message-ID: <8b4840c1-15bb-4ef5-a843-dfb298ad9145@intel.com>
Date: Thu, 23 May 2024 17:08:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/7] drm/i915/display: Compute vrr vsync params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <jani.nikula@intel.com>
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240509075833.1858363-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240509075833.1858363-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0010.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8382:EE_
X-MS-Office365-Filtering-Correlation-Id: dd72a821-403b-4019-9d23-08dc7b1ce745
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWJJcHlLM3JoMjBlYTR3MmwxdXdrUFVwVytoWmZ0ZGRYTnowNkF6eFU5c0tN?=
 =?utf-8?B?OUpSVnFIQW8zZjBCaDRlalVBWjZWTys2cGRxN2FIY3ArNXhVcmppYWtIL0h5?=
 =?utf-8?B?Z0dteE1UZlhKZHR0cmcraDlLc09tZFZwa0ltV2FxT3Z0WXFHR3lyZGtnL1ph?=
 =?utf-8?B?dE9ENDZsekZ3WkNMSXo0cFNpdTVScHZxL01POW1QRVNWT0s1T2xGc2ZUSU45?=
 =?utf-8?B?MitDR2RVaEc0L3M3K1dVa0NUcnpPR0tDeTVDYkwzSzRkbUpvYk5UQTBYT25r?=
 =?utf-8?B?dVJjdXB3Z2NSSXJ2Um4rb1BlWEtEdnM5bjBhY0NqVWp5R09DclRnbmtxL0g1?=
 =?utf-8?B?OTJqeFR3VUpCRjdoTjBVNjNUUFkvUUtPYTBYcmtpSmJkTG0zMHJKNUF5RmN6?=
 =?utf-8?B?VG1QU0pnbkJRN3lOSzRDTEdZOW9CYkkvdjY4TXZRUGMrcE4wSTJKNmVkNnpt?=
 =?utf-8?B?RGYvZG9sRWMxaGszT1EzRGwzT2ZFSzRRVEVhRXB5QkVHM0xPN2E1Y0N4cFkx?=
 =?utf-8?B?dzc5cmpNNXp4N1ptY3FuSU9jME93RFRLWFdzKzFjWjlUTjB2dzBROUlWTFBV?=
 =?utf-8?B?TGF3MWl3VnI2ckxOTVkweDBjbG05Z2M2WVBseTBIT2h5T1JXNStiWDdRRVFI?=
 =?utf-8?B?YWQyNGpQNWh3ZEcySGhkRkZmRnhiUytsUXBGQlVjV2R1dXZNcVpLclhPcW0x?=
 =?utf-8?B?YVdydGFQRFZJdlJLMTVVYzVhZzZzRW9JMkkyZ0dNYkdhZ2VQOGd4dHJqM3k5?=
 =?utf-8?B?aDRlTkRqbGZWRVFlMzg4Q3M3ZzRxVG1xS21qTFd2VjBhaGVXc0x4YjlKamIy?=
 =?utf-8?B?YU5XeWhyS3hiS2JzQkhBZk9paE8zZkppOGpkcldreHk0NEU0LytiTFpHU0tn?=
 =?utf-8?B?SnRlOTJ4ajZhbHdZU21rNWN2elNzK1NveW1RWXNpN2tIV1F4MWxBNzBSYTFn?=
 =?utf-8?B?Rno1b0NzUEg5R0tYMHBIUHl4S3FwRTRyRjdOMkgwNFR4WStWWFBmZ2tFQ0ov?=
 =?utf-8?B?ZzVNODA3ZTFXNXlyY0krOXU2a2l2OHFDVXdSOXk1TEgzaG05TTAvdHdub1FW?=
 =?utf-8?B?WkhOS3dYNVNuYmhOYms0YllUb0JZdEd4WnBmRVBwRG13T2FOVXIvUkgzbEla?=
 =?utf-8?B?RzlQdUZkd2ZQZmhQNmhneGJNYnZNOVBGZXhCME1oWGZhclRSZ3VaU1FjMWk1?=
 =?utf-8?B?STRSWVE3ZHNBcVMwMU1xR2xJT09zQWxEOUZjVTZzK3crVFlNdjE3UHdjN2hm?=
 =?utf-8?B?NlI5cndJeGFXbFk4ZHdzVTRFN2Y5WmtWTUxFYW5yaGc1UUZGVGJPUE4xVWpy?=
 =?utf-8?B?aUZNejNoSDVEcnRZaXJUYndqZUJIWE9nSHVsblRvTW1aOVdpR2hjRGRkVXFQ?=
 =?utf-8?B?Qk1PMytJOVRhanpjTWpsK0NwTm4ySmR0amJBMGl6cUlJdUYvVjR0YnlRWmho?=
 =?utf-8?B?cmRnT2MvcFRjOEtQeFpNRDQ3a0c1M1JuZVQ4NVRHaWEvbUdIK3FGSzNyTkVr?=
 =?utf-8?B?a2lFUHh0V0lldk9ZVkRXUk1pRFFPV0N2TVpueEpWeXJJNFVUZXErZ00zUUZ1?=
 =?utf-8?B?WThGd0U1TjlraFgxR1lZWW9Jc2tLbTNmR0JsbnA1M2htVlRJdFN6TkRLS0RY?=
 =?utf-8?B?T3BlNXQwcDZzZVFoTFE0d3ZsQlZraDg4NmlCejF6SXNHOFBWM2pZMThXVUFt?=
 =?utf-8?B?aFAyYWVCdnM2ZTgvUFpFT2s4QnJLZ09qS09mZVVJNGg3OG43djN1SC9nPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1o2MlR2eFoxdjBOaUp1ek53SjAzNXpaUTlLbEkzK0FnaHVxZHJLVFRXTHpp?=
 =?utf-8?B?cC9lWVFwNmlrWThtbmlRclFRNU9DN2JsUzMyNFE4NXlzaFNrQ1RWV21xZjVO?=
 =?utf-8?B?K3BsbUNYYXdZNWFFOGd6QTRkVGRFdWxuenZNeFZMaUdtdiswOWpESWUxa2t6?=
 =?utf-8?B?Mk9ZL3pNWnhGSE1hTUxOOGJ2bURTcUNYNThMNlFmMnI3anNVTENKVTQ5eWFC?=
 =?utf-8?B?eHludmoxcis1Rk5XM0VsM0Y3Rmh5UjhpbUZOOU9UMmZZYWdxV1JjY1loYVdZ?=
 =?utf-8?B?UG9OT3pNK2JFSmRVaFI5ZkNjZnIxdTZRN1dNOEdIeGZTQk1mMVBUVU5OWDJR?=
 =?utf-8?B?c2tJdVlWbTFVYUF1ZXNRMUxOQ0tBaDRQR2IvK2Z4aFFEMHRENmJiSVRtaExt?=
 =?utf-8?B?R1MzZURwSkJHQkxyTUlMcGpOcHlGaDllMjI1RnZQQnR3OEV0Nm50Q2E2YzRt?=
 =?utf-8?B?Nm1yK0xtK0JOWXBDV1JXWW5nREw1L0RYeTdzdlRqZStMVnFwZWtNWGJwRnc0?=
 =?utf-8?B?YXZLTjVaYkhNRmZ0QjNXbU93b2ZIZUxDUjJSSmx6V0Y3RktKa3hUSWVQTjNO?=
 =?utf-8?B?ZmNBOUVTMGNXaDBGMFMxQmxmTitZZEZvZHRETW9mYUhWZGtWbmZOUUVxZG5y?=
 =?utf-8?B?MmUvZmRkb083TnI0cEdXa0Ewbm42ZVJiaDdTaENhQ1A2eWVxYmk0SlpydnNV?=
 =?utf-8?B?SCtZZVJld3k3WmVnK3JCeDVNcldVZEY0RkFuUFFST2E4UXp1aTJldWhrdlA1?=
 =?utf-8?B?SHIxNEEzRXoweXRRZjJvK1NpNDJ6aWtjNWRmY3BFZFF4M3FWYmt6cFlaUDIx?=
 =?utf-8?B?eGd3YkczRW1MdDZHZnJjaVJyQVRib0luY2hYaGI0MDVyMlJhb25MTGVaZk1W?=
 =?utf-8?B?a29VbVlOb3k3L2hIQy9jZ242YmNnUnQ3cEVZN1pRYlBBd2lpdmhkbFRXZEx6?=
 =?utf-8?B?S3F2bGw5Zld2SkVYdVFlYXdDb0xrRVMrOUYxUm51UGNRS2o2YjIzVG1xZjJU?=
 =?utf-8?B?eXVRdkpjb2lpZmQ2NzlwMHMvd0dTcHM5eVlKY1d4VU1LVXV6VW50c2F0VmpK?=
 =?utf-8?B?bHQvRzBqWmxTQjJqV21DZHBwR2FPRjFSTE1qV2pIU2xmdHVJV256QTUxWEo2?=
 =?utf-8?B?VlQzSTRlNUljL0xwVG9Cek9GRTR0RUMyanB2azZSOVVLekZnV1RySjBLZ0xB?=
 =?utf-8?B?SkRvTXloK2N4RG41STZaaWM2QTVVbVA0QmVEQlpva0c0VWJlbzFWeFd5eGRm?=
 =?utf-8?B?NlVzRHV4OEpoWDJHNFk0S3h6endWb29hMUlqNFlSRFpOSkw4TDluZ3hRL0Ry?=
 =?utf-8?B?dmdNbGRqUVpxd3pOWVZCMmVyejNrSFQxeXZCSHdPSFhvdy9vcVdmWU9LYnBT?=
 =?utf-8?B?am9nZVJRRzd5cGZSOXdKZksvMTRzZ2xLODBsT0dFaXpscjI5aDJQS21YRml4?=
 =?utf-8?B?dGg5KzlCTHFtdDdaQ2pESko4UytvUlU0N211NklheE9GUExwQ0l1bWFSNjJn?=
 =?utf-8?B?cHFRMkRxc1NvRWt4QWFFRlZsWUxNcGl0S0lEYzVoWFRPR21vWldCTE5uS0gv?=
 =?utf-8?B?L1Q0NlpoNTZ0Ylp3cHJBVlpOYjZTQkU2ZXhhTVI5SFR3NTYrQldndEdvOXlL?=
 =?utf-8?B?dmo3NEYyOHJnWTl4VzBCd2JBMVRUdEFUMC9heGZRNUZtNlZxYzkzMjlzbFpY?=
 =?utf-8?B?cDg4ZUE5UWJFRW5SUEJZdW1UWk9RVGx6enBTVWliaVN4TzBFUEhHUnh5WTVE?=
 =?utf-8?B?SjBjMXVLdU5EUG42ZVM0bkhTWFlnWWE1dGY4WXJEZjNQQXVveXBrNmxjeTFD?=
 =?utf-8?B?dG02WldQeUJMcUo4SGQ3TlYzWWVRcUV5NUNCd2t2ck1zcUJSaDRiamFiSjRO?=
 =?utf-8?B?M0RWWmh0cjVRelhVZENUVEVuNWs1Q2pEcWIwZWZMYWQyTkdHVUxFYitjVHRY?=
 =?utf-8?B?anlmcGFMNlg5SlV1SnpJQWczNjhJcW8xU3cwbUtVOVVYTHdvNTZBL2FWK2Iy?=
 =?utf-8?B?KzNuMXRPMUtTMDZqVlJHczgyKzVrRXJsckVUREdzVE5hQ3ZVcng5OFhuWVMz?=
 =?utf-8?B?N1ZzQVpnd3RQRGRVeUErK0xWMHVQY3JSOUc5YWpxb2JWNlJDdDRka2NGUCtu?=
 =?utf-8?B?eXdPUGMwMXNoY2NvanRFWFlCeFUyZ3V1VmVjQVFKbEJielZTc0NXNUh1eDlT?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd72a821-403b-4019-9d23-08dc7b1ce745
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 11:38:45.0090 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PZe3UQ7Lc8W5L+bJj3adz+MARmwdJqWLQmlrEZvWNf2KZKBZbogi0imBNUCJezHs+geDvMeyqmyTQ2P7L3YIqBD8SSwBz4prBgJurqxtj5w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8382
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


On 5/9/2024 1:28 PM, Mitul Golani wrote:
> Compute vrr vsync params in case of FAVT as well instead of
> only to AVT mode of operation.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index f5ba87fa00fe..3713e9b0829b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -239,6 +239,15 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   	}
>   
> +	if (intel_dp_as_sdp_supported(intel_dp)) {
> +		crtc_state->vrr.vsync_start =
> +			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> +			 crtc_state->hw.adjusted_mode.vsync_start);
> +		crtc_state->vrr.vsync_end =
> +			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> +			 crtc_state->hw.adjusted_mode.vsync_end);
> +	}
> +

These lines are duplicated earlier in the: if 
(crtc_state->uapi.vrr_enabled)  block.

So lets remove from there.

Also I think need to re-organize the series so as to have the patch that 
sets cmrr.enable as true is the last one.

Regards,

Ankit


>   	/*
>   	 * For XE_LPD+, we use guardband and pipeline override
>   	 * is deprecated.
