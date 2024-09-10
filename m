Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F25972858
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 06:33:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D3BC10E609;
	Tue, 10 Sep 2024 04:33:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LgUBryLP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D15F910E609
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 04:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725942825; x=1757478825;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cz7EDfD5GxQ6q3i8mRcaBeCR4QlTbytYuvFD789BNRE=;
 b=LgUBryLPrEejV0uVDpmq8PgmPXIXRyzvjVoTHOXHlMDE0uaV0cGpM8wD
 ezgsj3jixEzpHyXR4UnOOaOybY2B69Vo6MWhKDbvW1RzJQlY4RRON5ip8
 8q8yIhi+k9WejXKoB571utcD5/9MStYN+M0w6g5BjFlovVHf23hUC7ufB
 Af5yo0UITUzYdM2AYrfDHwgq2BaUsZAH8Lci307SxsoTSF6c79gDw/Exo
 oXpEdWasa6WyEuSiVDpWbKTvnol57NXNJ3cwd/YBa+g5iQMcr5TDWmfRQ
 m0+wry3hodnUshSstmhSs4ehbygtM48jZGnaA8iECwETYJqa931Fm+pLi w==;
X-CSE-ConnectionGUID: bOhV8WmNTFiwN7K7Fw7BFg==
X-CSE-MsgGUID: tu5jgF+YSzSaioz9h25shA==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24776651"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="24776651"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 21:33:45 -0700
X-CSE-ConnectionGUID: HzF/pWsYTrysz87gEKKyQw==
X-CSE-MsgGUID: 7p4t6L+vSIuXjyAVodRYKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="67191765"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 21:33:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 21:33:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 21:33:43 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 21:33:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OjMqQ20jzaXrJ4Qy/OVTMklnw/hslGuCKbwdUg80UgQ51mq1wnRsctEvZgvKG9kWNWtMVBG3oX87KBrYE8EDeQ0ynl3BWkXQb/PyyAYVK9YB3FkgJymUoxoT8LYnziJUroxaGqGw7xlmSPwnbALyK9zbNurUsPbsCEzC1XLRPUK8NZ+Bx9uwhQQe/3W1Q5fg+iUtfPQtWk5o7hXGeEgcZL796vdEXTxrWuFsToFF9r6dvOZtzzYD2NzuneTNXwAcDt2HEElBGydAn8baq4/RwB1/3tA1JtqWdj624a+klToWjFBk5VB49/8FrbuhQHyQRwfooUctn85DdOdH6Udw9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9ub2iuwVVQsFDkkfa+XxVw3TnuaAsEzKRXHTBUH/qsw=;
 b=Gk7o5h6F0XHNqqL8z4hc72oD0Rx20EBobKJwwKzI5eKG691xGAvezeCQNNpuPQrO4UuctIShqTnf95Qc4BHxuct1DVwRowYuFtyH0jXa0CMLfnqu2RyY574hACtQYA6HHBFAkDGBKAm+k4ft3g5olufZddslRwwflW+SUIApnfxroabysLJ/des2xZ58Lzv8Q48Xb2aLS4p94+G1a+lSd5fQdKnjZgRfo3SEiO5EqTFvYC7uMvax0nzUdrHHH+iJU8vEH2w2E+5RQh06xIn3qD5uZcv15JWJ++HxaOQpKqzv+f/kOCJWCwEa7TEBN4y7hdmcWM0IvkUCHfiCYIsgKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.28; Tue, 10 Sep
 2024 04:33:41 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%5]) with mapi id 15.20.7939.022; Tue, 10 Sep 2024
 04:33:41 +0000
Message-ID: <64e066c3-9684-4e2c-bc82-5e0c89255f7b@intel.com>
Date: Tue, 10 Sep 2024 10:03:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/i915/hwmon: expose package temperature
To: Raag Jadav <raag.jadav@intel.com>
CC: Anshuman Gupta <anshuman.gupta@intel.com>, <jani.nikula@linux.intel.com>, 
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <tursulin@ursulin.net>, <linux@roeck-us.net>, <andi.shyti@linux.intel.com>,
 <andriy.shevchenko@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <linux-hwmon@vger.kernel.org>, <riana.tauro@intel.com>,
 <ashutosh.dixit@intel.com>, <karthik.poosa@intel.com>
References: <20240828044512.2710381-1-raag.jadav@intel.com>
 <07c01d49-aa9c-429e-bd4d-65cf2648329e@intel.com>
 <Ztlx-xAd2JSpolZA@black.fi.intel.com>
 <56zmt55kfwgeq3bsbci7ghooe4qv3nqxulbaipceng2jqb6dtl@hxvgnwznnzpy>
 <ZtoD-SoxljuJQuj9@black.fi.intel.com>
 <2kraxnckxoucjzdpxx2qqfu4dymegudms7qwdqfmsn2mqofxam@6sr7ymprietf>
 <22c3a070-f09d-423d-970e-9422d7021879@intel.com>
 <Ztw2nw5gCINySnau@black.fi.intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <Ztw2nw5gCINySnau@black.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0032.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::19) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|CY5PR11MB6257:EE_
X-MS-Office365-Filtering-Correlation-Id: e671e718-22d8-4552-3d94-08dcd151bf24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NzlHRGwxT1pZTGNJRFFHck1PSGNDbzAwckZQRWNIZVRPdlo5WHZNZ01HKzRr?=
 =?utf-8?B?THRINklrWnRTQktKREJoR2U5ZklFdENOUnprdDhDV2g5T3V2WEVUQ202NVJl?=
 =?utf-8?B?WFpLeXFpOWRudzJXMjVoa0o4YjR0T0g0cUwvMXl4a2REbC9EK3FkeHBBUXhj?=
 =?utf-8?B?U1hKTkZXSFVlbGtOREVJM0JYK1J5N0tNUGZ4SXVKYkV3NWxsNFYveHBnWjI5?=
 =?utf-8?B?eVFvQWJaR0ppUTZiYjVMaEZVeDVCZzFqdjIyVlFEM3FIbUJ4ZGFHYnU5eXZZ?=
 =?utf-8?B?ZWFoZjVqWU5YbDhEWnpORHR4T0N0TXAzVFJCQ3V6THQzd2UwOVNHSlZsM1hC?=
 =?utf-8?B?S0twdnV3TEkyblpaaWpqaG9jYVNhSXUzbjdBbmNVZ1hiaUE0c0cwK2FmTkVB?=
 =?utf-8?B?dW94YmplT0hKdUcrcHozRDRlMi83Z0xrdDV6NGMrMk52aWlmVlpRUERqQ0F4?=
 =?utf-8?B?bHlNUU5CckxxMWRqSWE1YWpVVmdlWVVCTjlGV3cvODRlaWdRQXdiT29tVFNj?=
 =?utf-8?B?UlZFMFBzbjlJTWZEZmZlYTVDS1JHcWJ5Y3dJMysreFhNaFh4SEJOMVpoZDVi?=
 =?utf-8?B?R1NXaWVzNXo4Qkc2cTZOLzlleUZPMXk1bHA2d09lQVhOUVRlcnB5VWpEQWNH?=
 =?utf-8?B?MjQ1dHVwNnNGbW5UdmdPNnNaYjVCZzZGcWtaTVU5dndzNy9RRnRtWVFQUUZo?=
 =?utf-8?B?QWsxZk1HN1AvYTcyOWNndlQwZUxKUVFhTnRXSDVWRDZtclcwdFk4VVh5djhn?=
 =?utf-8?B?UGRWVHRaQmZjSWhNOW9hdFYxU0oya0hISnlrdHQ2ZzExM2RNZ3kvY01haVlS?=
 =?utf-8?B?eXFHMWdTM2NtZi96SG9weUJicjRkbGNrazBjNzkybGh0ZUJCRHdKS0ptMmpQ?=
 =?utf-8?B?RVJ1bmpPVG45QThWaitmUFNVWjZPQ0xDZTcrSjlzNFZ1R29nQVcxRFdjUlZp?=
 =?utf-8?B?RU9pMCsxbjdkQmRqK1A3OEpucC9NeThTSWhqb0ZaVXRrR1puRFFyOUhZSURM?=
 =?utf-8?B?MmV1MUZBWTVTL2E3VW1yVG5iSzBTOGZOQnVUT1p3UVdQcEJwc1JiaWxYd3JI?=
 =?utf-8?B?T3RDcEliL3J3czFuYjN3emsxRmpleGRZQ0lrMmlUMkVTQ1ZOSUxESWNGVmVV?=
 =?utf-8?B?WEdtaGd3cHVGakJkZUxrY295YlV0eDAzUFFrR2RCK0c2YVFLamdnMGhCb0Vs?=
 =?utf-8?B?ekYvZEFTay85cHRVQktxQksxM2hCQjBES29lNWt1bXcrdGRkZWxKd3NSS2NW?=
 =?utf-8?B?SGp0ZE5NME5ZNjFXMkY0WEhJZFVYQ0xDUjQ3c2xQRUJ2OHlpZEFWSkNNMHZl?=
 =?utf-8?B?Z0NkWXFKOHNmSXJnd3pva1FYdE50eHVIcEpDcFFJNHdMLys5VmN6bmpqZ2ov?=
 =?utf-8?B?ZUM4SmFtZzRZNjNGbGMyRkY3a1h5MWt0d2JyZmgzYkgzRUMyZTh6VGRlL2I5?=
 =?utf-8?B?eWlpaGJCVGRpeEtGRllUYU9ReTNpa1FIVXVXbFZMUkNLQlBXUk1YZXRVcEIv?=
 =?utf-8?B?RXJIRHJZdDROTDJqTzcxSTRxT2RZQWRSbjRIcytKMlRYVVNKd2Y2WjF4WlFW?=
 =?utf-8?B?cmJYVkRNTE8za3N1NW9uQ2NFeGdKWUVpNDgya0thTFppOW1wcS9KTlNleXlr?=
 =?utf-8?B?VUhzcHVMcVpUdWo4QkN5MEpOd0FlZlBtaUFOQVNBTFdLc0JaQTdCNkUreDJi?=
 =?utf-8?B?RWxBWGdicjY2TmdhM21mREtjSUpWUkMwNjAvb1Ezck1JSFBKMnNPK0dqbnBT?=
 =?utf-8?Q?GcLznlFSdTup9zbU6Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnhGODdtdkQ3TTkxbnVNVnJRTVdHY3hGSm4zNU9wNzg5QUhpT2F0TEtWMXRw?=
 =?utf-8?B?Wjk1RjVNaTg4WWFUS2lIN2Z2Z0x2OHhLQVBMaVd5dUVzSmpiWW1KVVFWU2gx?=
 =?utf-8?B?SHNSOUIzYVU1K3Vvb0tRdm4ySDJGUTBKenU1OFNxcEw4KzlUc015M0VhSW02?=
 =?utf-8?B?azdqRExlWWhDL0NNQ3dHTWM4VUFVTHIwUHRINlk3VTRVQTJmMkQxRUh1TkRn?=
 =?utf-8?B?MENDWXZKd3IyUmhlaDBjU0FVU05ZQkZIckNBbmJwaGVpRjAyWlc5ZDcybnpT?=
 =?utf-8?B?cTR6djVqUDlBNlFBVXhIKzRLNGJGdXZ5TkQvRnVKZkxXSDVxMHdYQWRVRTVI?=
 =?utf-8?B?MGMzYTNIVWpTOTFVNDBJVmt4OFNnUURpcTlBY1UwTFdRb2hQdW1SU0ZhWFpM?=
 =?utf-8?B?RGNpVlBJMjRDM3ZtY2pFVndxYjQ3TGVERVQyM3VhZjQ3cDFIUmlIYmtydDAr?=
 =?utf-8?B?Rm1oalpSaGhmREoyaEJWbzFxcnpjQlQzaStsY24vOHF0NmNIcUpQbmtQdGJW?=
 =?utf-8?B?Ri94ZnpJd2JKM29zc0F3eHo3bE5tQitBb2wvZDN4blVPM2hjNUc5NWxhNkxP?=
 =?utf-8?B?dWtIYnJmMXp4Wko3STRyTkd0RVJrNC9udDZlR1RrNmdCZkovQ2VhZkk2YWcr?=
 =?utf-8?B?Q0dtcyt2YUJQV25qbmFJb0hJbzUrUEFmMWJWQXNwbmRFN0JOamZaVEpRdUV3?=
 =?utf-8?B?ckpyNHQ3UUJYeHR2TjlMeU9NeUw3TDdaaldoQWVoK0hMLzVwZzhCTm1zRDkx?=
 =?utf-8?B?VTk5dWlOSGwrOUljVTJ5UVZnMmNFaE9LalFEcCtZYzN4UWNMelFzV2NWc2pL?=
 =?utf-8?B?YjlBbUcrMXRCM0RSUnREMHFIY3FGQVRWc0E0dTRtTTRrVTFYVnRvWmFnSE16?=
 =?utf-8?B?MFk1SXZYcHVJV2Zlb3ZFTllkaE1XbTUzaTJIUmhrMEpsL1V1dHNXVDgrQ1RW?=
 =?utf-8?B?cnNabWVhTkxTYzdpendDa3BrQUlWUk9JSTM3WTZ1OGN0bDVlTWFyS0IrWjhl?=
 =?utf-8?B?UFR6SmRIT2lsbzQ3aSszcXNDVERHd1cyZXFFNjlSdUE4eEtwQU03M3JzQ2hx?=
 =?utf-8?B?RmdRS3R6OUVESEJMRmYrR1JKdE92b0FTSlFmYlhUL0RyMkg2Y0x4NWppVmtG?=
 =?utf-8?B?K0FiZkdQa1dvZUtaT0lzSk1VVzRlZURZaHQ0blpOaDNoRlNNR0NEMWtRcUpR?=
 =?utf-8?B?WC9GNm9JekdTRUJLUE9WcjdFN1pjTFh6WERMT25QQmZmYThVWkNWT0I0bE1W?=
 =?utf-8?B?dWVmbnBOYllQY1lETVBsYnBMNk9lenp6NmRtQkJUTlR2dFlmSS9nK1NJSldx?=
 =?utf-8?B?S1R4TXZNRit2T2MzTncrUjhpQmtRTCtHUys2K25uY0NPcmxZYWRmVHhkQUV0?=
 =?utf-8?B?eUVOMER2TUtWWmdNMlA0SndUY1RlZVgwWXpHS2dLRlFYQy9BZDZ2Qyt3SkpU?=
 =?utf-8?B?dzFyZlVPY3cxcXFsWWpVQ1E2TDNwM284MFBjUjJTeFMwMy9JTkM1TE9hM0JT?=
 =?utf-8?B?Yk5TYmtSSVZYUGU2U0xvZ294VVFNam5CY0MvRTA3LzkzODc0R0dPUmFJckZI?=
 =?utf-8?B?V01CRVM2bC9Yc2ZhZ2U5S1VxSURyR0hweGFMaHRxRDI1YXNWaFJMQXpxOWFo?=
 =?utf-8?B?NlI3OUVKc2JsVkNpMkh5OHY4OWdZbEdYZEFnVWJSWXBZcHBDWkRFRXNJb1ZQ?=
 =?utf-8?B?RjVyamlJbVh5cXlZR2cxcytoS00xVjNRcW5TeVNPTDJ6NVI2NHZGelgrRnh2?=
 =?utf-8?B?UEJrVFZZTVdSeVJoN2R1WDE5R1VLSUxVa1dlV1hLM2o1bjlzbTBVbUQrV3BX?=
 =?utf-8?B?UElwSmh0Mk1xMDFnUVVHeFk0aHh5Tkt4dVBBY1N2M3JoVW9YdXBYeStJOXJ0?=
 =?utf-8?B?WDVKVTZVWW1hMWg0eUZ6OVdEWUZmUldGVUpJOXIwemJ4VTNIeGFmUmtNbkx0?=
 =?utf-8?B?N0E3MEw5eU9BSHhJeUlrTUtoR0EzNnBRYnZxeU5mUS9hM1kzSTBicms3OXp5?=
 =?utf-8?B?aTZJdUNobEZMWnd5ZkhhWjJTb0pkK2hjT0o5ZDVWc29qWGE2M1BHcWxxSGk4?=
 =?utf-8?B?aC83dXdQcGFBTkhBTkdRUDZpdHhIZWRNdDRwL2cyLzNaTWtBWTNrWWhMZkFG?=
 =?utf-8?B?bzhvOVpXa3pjdGczUUU2TWgwRVdvbXBGdTdXU3FlakNuZ1BPM2tlTnVtV05y?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e671e718-22d8-4552-3d94-08dcd151bf24
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 04:33:41.2291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: flk7Pz43pgCWHQ5NiwP/G2bm4R5/TnnYhsNtFRwrNhRPYZqXB1MTSGOr7b1+ohs40n9W9krIM4isDUmhpjLQPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
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



On 07-09-2024 16:48, Raag Jadav wrote:
> On Fri, Sep 06, 2024 at 04:33:12PM +0530, Nilawar, Badal wrote:
>> On 06-09-2024 11:56, Anshuman Gupta wrote:
>>> On 2024-09-05 at 22:18:17 +0300, Raag Jadav wrote:
>>>> On Thu, Sep 05, 2024 at 07:39:31PM +0530, Anshuman Gupta wrote:
>>>>> On 2024-09-05 at 11:55:23 +0300, Raag Jadav wrote:
>>>>>> On Thu, Sep 05, 2024 at 11:56:15AM +0530, Nilawar, Badal wrote:
>>>>>>>
>>>>>>>
>>>>>>> On 28-08-2024 10:15, Raag Jadav wrote:
>>>>>>>> Add hwmon support for temp1_input attribute, which will expose package
>>>>>>>> temperature in millidegree Celsius. With this in place we can monitor
>>>>>>>> package temperature using lm-sensors tool.
>>>>>>>>
>>>>>>>> $ sensors
>>>>>>>> i915-pci-0300
>>>>>>>> Adapter: PCI adapter
>>>>>>>> in0:         990.00 mV
>>>>>>>> fan1:        1260 RPM
>>>>>>>> temp1:        +45.0°C
>>>>>>>> power1:           N/A  (max =  35.00 W)
>>>>>>>> energy1:      12.62 kJ
>>>>>>>>
>>>>>>>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11276
>>>>>>>> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
>>>>>>>> ---
>>>>>>>>     .../ABI/testing/sysfs-driver-intel-i915-hwmon |  8 ++++
>>>>>>>>     drivers/gpu/drm/i915/i915_hwmon.c             | 39 +++++++++++++++++++
>>>>>>>>     drivers/gpu/drm/i915/intel_mchbar_regs.h      |  4 ++
>>>>>>>>     3 files changed, 51 insertions(+)
>>>>>>>>
>>>>>>>> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>>>>>>>> index be4141a7522f..a885e5316d02 100644
>>>>>>>> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>>>>>>>> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>>>>>>>> @@ -83,3 +83,11 @@ Contact:	intel-gfx@lists.freedesktop.org
>>>>>>>>     Description:	RO. Fan speed of device in RPM.
>>>>>>>>     		Only supported for particular Intel i915 graphics platforms.
>>>>>>>> +
>>>>>>>> +What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/temp1_input
>>>>>>>> +Date:		November 2024
>>>>>>>> +KernelVersion:	6.12
>>>>>>>> +Contact:	intel-gfx@lists.freedesktop.org
>>>>>>>> +Description:	RO. GPU package temperature in millidegree Celsius.
>>>>>>>> +
>>>>>>>> +		Only supported for particular Intel i915 graphics platforms.
>>>>>>>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
>>>>>>>> index 17d30f6b84b0..9f1a2300510b 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/i915_hwmon.c
>>>>>>>> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
>>>>>>>> @@ -7,6 +7,7 @@
>>>>>>>>     #include <linux/hwmon-sysfs.h>
>>>>>>>>     #include <linux/jiffies.h>
>>>>>>>>     #include <linux/types.h>
>>>>>>>> +#include <linux/units.h>
>>>>>>>>     #include "i915_drv.h"
>>>>>>>>     #include "i915_hwmon.h"
>>>>>>>> @@ -32,6 +33,7 @@
>>>>>>>>     struct hwm_reg {
>>>>>>>>     	i915_reg_t gt_perf_status;
>>>>>>>> +	i915_reg_t pkg_temp;
>>>>>>>>     	i915_reg_t pkg_power_sku_unit;
>>>>>>>>     	i915_reg_t pkg_power_sku;
>>>>>>>>     	i915_reg_t pkg_rapl_limit;
>>>>>>>> @@ -280,6 +282,7 @@ static const struct attribute_group *hwm_groups[] = {
>>>>>>>>     };
>>>>>>>>     static const struct hwmon_channel_info * const hwm_info[] = {
>>>>>>>> +	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
>>>>>>>>     	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
>>>>>>>>     	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
>>>>>>>>     	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
>>>>>>>> @@ -310,6 +313,36 @@ static int hwm_pcode_write_i1(struct drm_i915_private *i915, u32 uval)
>>>>>>>>     				  POWER_SETUP_SUBCOMMAND_WRITE_I1, 0, uval);
>>>>>>>>     }
>>>>>>>> +static umode_t
>>>>>>>> +hwm_temp_is_visible(const struct hwm_drvdata *ddat, u32 attr)
>>>>>>>> +{
>>>>>>>> +	struct i915_hwmon *hwmon = ddat->hwmon;
>>>>>>>> +
>>>>>>>> +	if (attr == hwmon_temp_input && i915_mmio_reg_valid(hwmon->rg.pkg_temp))
>>>>>>>> +		return 0444;
>>>>>>>> +
>>>>>>>> +	return 0;
>>>>>>>> +}
>>>>>>>> +
>>>>>>>> +static int
>>>>>>>> +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val)
>>>>>>>> +{
>>>>>>>> +	struct i915_hwmon *hwmon = ddat->hwmon;
>>>>>>>> +	intel_wakeref_t wakeref;
>>>>>>>> +	u32 reg_val;
>>>>>>>> +
>>>>>>>> +	if (attr == hwmon_temp_input) {
>>>>>>>> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
>>>>>>>> +			reg_val = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_temp);
>>>>>>>> +
>>>>>>>> +		/* HW register value is in degrees, convert to millidegrees. */
>>>>>>>> +		*val = REG_FIELD_GET(TEMP_MASK, reg_val) * MILLIDEGREE_PER_DEGREE;
>>>>>>>> +		return 0;
>>>>>>>> +	}
>>>>>>>> +
>>>>>>>> +	return -EOPNOTSUPP;
>>>>>>>> +}
>>>>>>> Let's try to have synergy between previous attribute, such as hwm_fan_input,
>>>>>>> and this one.
>>>>>>
>>>>>> This one's simple enough to be inline IMHO.
>>>>>> Besides, it's already in synergy with hwm_in_read() which has similar
>>>>>> implementation.
>>>>> Agree this is pretty simple to have an any helper but IMO it would have been cleaner to have a switch
>>>>> like hwm_in_read() to return -EOPNOTSUPP in default case. i think that was reason switch case was
>>>>> used in entire file.
>>>>
>>>> Extending on the simplicity argument above, if() makes more sense for a single case.
>>> IMO lets prefer the style which was used in this entire file,
>>> that is more readable along with other attributes.
>>> Idea behind switch was scalable attribute for future.
>>> It is something related to individual preference therefore
>>>    let's prefer the symmetry with other hwmon attributes.
>> I agree with this, but even if this approach is used file-wide, there were
>> concerns about using a switch case for a single case while implementing the
>> fan_input attribute.
>> https://patchwork.freedesktop.org/patch/607642/?series=136036&rev=4"
>> So I suggested to implement temp_input the way fan_input is implemented, at
>> least we should follow this approach to maintain symmetry with new
>> attributes. But in case if there is agreement to use file wide approach then
>> please follow that approach for fan_input as well.
> 
> Let's try to keep it simple and use whatever works for the case.
> I'm sure the driver is much easier to maintain with a few less lines.
Let's not break symmetry, whichever approach is being followed please 
maintain it file wide.

Regards,
Badal
> 
> Raag
