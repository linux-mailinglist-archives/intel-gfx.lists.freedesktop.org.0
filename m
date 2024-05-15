Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1687A8C6769
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 15:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E85610E311;
	Wed, 15 May 2024 13:32:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KapdkKkb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E09B10E877
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 13:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715779946; x=1747315946;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=iDrfE1KY2yOeYjA2cHgRM1W2Fm4utISSUUXsUCiW3XQ=;
 b=KapdkKkblUz1KUA26Nel1SVtQk1r67K6U8xupu0Pb+TF4/wPhh9baBkj
 y6lSQ1rvkoJuLXw/K4St9pilAWuOJNTOsfNHifsYUs5oxG9WYPPCxaf9p
 4ojCIubxG86S56PxCMfpnsT0fxg/0FjZuDVWxUF0h0rpU+bC0vKPaOBk/
 4GbDNnS37ecoJOYAvvydYORrt8mH8Q9EXwYyki1H94V1EFuvCwuFNouiO
 otDRBeCprrV7ghXHx7AfuQgpgW1z/8Jlbjou6jBmoeOfSeuQHlu7nb5Wh
 Iv2o6KlRxOf1EP/iZT2UmAIddD+cZnA4Iphw09CT62X/0ciQlAPqd+UyM Q==;
X-CSE-ConnectionGUID: Rlps3qD3TIWG2j85o5KGWg==
X-CSE-MsgGUID: zeZMWQHrTFiZCvmrXorUGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="22969274"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="22969274"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 06:32:26 -0700
X-CSE-ConnectionGUID: oyaDfgV9SviNO270AiL7/g==
X-CSE-MsgGUID: X9NBIEuUSQqwiT+6xei3Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31149849"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 May 2024 06:32:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 15 May 2024 06:32:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 15 May 2024 06:32:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 15 May 2024 06:32:25 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 15 May 2024 06:32:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=au+9Jo/18X84N7oJ7DhjQEfh1zl8/BfKex0NlEcyt8N9aGUzGEZe3+IGgV9+gNFDjDcof6Q1N2JipVYpIqbe2LH/l9/jo6IGtDJXhYafARTQmf3nbj8tIzhbPhIKyt3Pr5N4VnRVkQ2yP5KqcAmq7sV44BIO0V467YWl3P5s6vOfOImzCWFJn71qQzk8Dd5Hq3S9TLRJSefCI4+cJJCTTMHiwVx82IhFV+UE1b9MYmv/RaiAVVaMc2mazPcJUNnHPhV8okEIWLsHeyWEbFU6p4OV66GJ5QptGbdQWh8HpSUANfipA8eHLEBbJEmPsqfkwibrS7dWQYhJr8DaGKE66Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q6H2lImL9nTJKA29f7tcekp8zjc5Z+bX9MFTjn2140Q=;
 b=brkYyDcol2zl0QJirDhgrv8VK1BxnhTKPoQ7apQ5CM2bkX4KDXTXFB3ndjBB/5ubEE7jnVh50iybFLOL0YjGQG6Qa/Lz0+1jnswTr+awUdY+E5TqSHE5/q+Lym37hhq+hPxpGB4MraJzQ4la+gQnZhLr2JcWWnTbAeWTJw1Dcjj03oet49UtLWcKIGMj3F+YyGBKrpY0OMqXVW3z4Y0XVOqVZuTW8HwdV+1TJlcZVs/tUM2uNgolvxNVGROrGLmWdeDj//tD+TWGFi3kLQGfrFd+Zk8N0RHK79tOBQtX5EOV+pL56SfxpkimuWE9rZ2DrQTucE0IVD9rdfyJ+nWfwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by BL3PR11MB6433.namprd11.prod.outlook.com (2603:10b6:208:3b9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Wed, 15 May
 2024 13:32:22 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7587.026; Wed, 15 May 2024
 13:32:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <171577943416.27300.8384710551224092618@gjsousa-mobl2>
References: <20240515064524.164137-1-mika.kahola@intel.com>
 <171577943416.27300.8384710551224092618@gjsousa-mobl2>
Subject: Re: [PATCH 1/2] drm/i915/display: Move port clock calculation
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 May 2024 10:32:18 -0300
Message-ID: <171577993817.27300.2440039459653683149@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0174.namprd03.prod.outlook.com
 (2603:10b6:a03:338::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|BL3PR11MB6433:EE_
X-MS-Office365-Filtering-Correlation-Id: 21c206ff-ed74-4b7e-7a67-08dc74e37347
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230031|1800799015|366007|376005|16122699003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SUhFSlZCY3IxcEZLdHAvV04wTjQ0TGdpc1RkWE54OUJSeHd5VXVFakJadUZ0?=
 =?utf-8?B?Z0ZnZWZuMWpXMHlBSlhLZEVyTi80bFlMczk0VVMrdjRKYlladGx6a0tuRGZJ?=
 =?utf-8?B?Mm5idUNTK2M3Q2IrUll3cDU5YmpzOEo3bEpIM3dib3B6WVhrS3ZDY2d3T3RC?=
 =?utf-8?B?TDljZ0dOcWk4MzFyci9tWmNoUUtUdVJJMTVUWGRkdERycUdFYnJ5RTltQ05j?=
 =?utf-8?B?L2I5Q2lXdDI3Mld3Ri94S29HQWpFV1JkaE5hUWhzS1ZVY1VLWTM2TG9vc0Ro?=
 =?utf-8?B?dEZUcXhVSGp4L0pzRkhYeThiZjlBa3FOMVl4VUZ6VWhsMzYzZTJYR1lNamN2?=
 =?utf-8?B?dWl5ZzNIcjhBOUJVYURmQUhHRU5CSWh3VDVoUGNvUmdTWEVUbHc3eU9mR3lG?=
 =?utf-8?B?eWR6TDRsQjJNcHIrS01KSUhhcFk1WVdkdXJDLzFBeEhoNzBsYzV3eHZpRHNU?=
 =?utf-8?B?S1IxbjA2cGQrYUljSXd5TkdkUkh2MGN0VGRMd3AyWDdTRExteExGbHI0OEIv?=
 =?utf-8?B?WEsxei9taityNVJ6bnBmWmc5OHhUQ2p5cEp4MTVNM3JBRWVVZTdOZDE0a3R3?=
 =?utf-8?B?dk9ieXVFUVRXeU90RWpzcWlxK0pnQzJueUF4bk80MEx3ZTZwTjZ3Myt1eVVX?=
 =?utf-8?B?ajF2WHBnems1SEtEQksrT2JTcWM2WWhkWE9Ldzd1bElDbzdHUTV6L0lEM2V2?=
 =?utf-8?B?RXIzVjNNZGdBeGhyU0FKSkJNdjBmUXpyWlNhMld5UFJVNTR1UG5kWDM4ZU5r?=
 =?utf-8?B?ZlVZdlNYUGY3YkE5aHNEVXFUSlhHQThoV2t2U2R4YzVuOWwzSkw3RGd0eE43?=
 =?utf-8?B?MlNWMzZVT1JwNmpCbm51dzZqc3lXcGNITVBPTllUOWJTWkFEWEhnMVNRQkF3?=
 =?utf-8?B?aWlMTE9JMUpva3gvcXNmbXZjTm00V05KQS9rVWN6ZHNQSFA0MVZZczNuUWhR?=
 =?utf-8?B?ZlZwNExIcEZYMWI3TklmbVh4ZldJdDUvYWc2d2RNWnZTMlh1VUNCNWR5TERQ?=
 =?utf-8?B?TnQreERBL1B1dHBRbGtmL1lqanAwRnBhRExoczNjRkhzbExobS9IcnRxSEI4?=
 =?utf-8?B?Tytzam1TZ254UnVMcDhZVmNiZXdGNUFqVWVLZmNyeXJlRG5BQWNkdXRMK0E5?=
 =?utf-8?B?MHFBOVg4bHZtRFBJdFFHanhJck9qRGF3OXYwaWU0WEdiOFFNaHRVcCtNY0Jh?=
 =?utf-8?B?QzdRd05UY2o1ZG00VzAvTU5sVmU0OFY0UytIcGRoRmprelRGYkdKbXQ2OTAw?=
 =?utf-8?B?dVczbzZ2SWNGaEFFQzcycnE5bUZVZGphZmMweTJsL09kZ0RwOE5rNFpmYXR1?=
 =?utf-8?B?Zk0ybnVENE81cmFyRWJZcC84dFdDNTdXVXJuYWhJWWdhMC9jYUQ3dFlUV1pS?=
 =?utf-8?B?c2xpRGlEQ3VXYThjNnhORUhiNlJQc2NQSGZ4OUhPSGVodUJrcEh3WGI2NWxX?=
 =?utf-8?B?czA5K1dvYmI3S2tndHhueC8ramhMWEhwcHBjUXhEVnpmY1luU01PUVMxSGNJ?=
 =?utf-8?B?WmRSMitsUThLb0dZYTBKR1o3SFpKZjFkYlZ3b3Z2TmRMTkw5WFBFYzVBcHBr?=
 =?utf-8?B?OXRod1pjVFh1YTI5b3NWK0paVVZ0SFZQQ0kyMHJ5R29LN01uZWpuVGEwbUVQ?=
 =?utf-8?B?YnBGQjA1YlVSUXdDUVNBWWZZYncrWG9lSi85S0FGaXY4Tld4a2hySVh2ejBG?=
 =?utf-8?B?VUVkUjFEajNtZGx6b0tRdTNldk01bUN2TGZpYXhrbjcwa0J6dUpGSEhMYzZi?=
 =?utf-8?B?b29uTURuc043enNYWUlFY0J5M09tVTJUblNNUUczbmtHU0lkL2FTYlRjY25p?=
 =?utf-8?B?RzIvY05BR3VpREMzRW52Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(16122699003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTJUZFJBU1puZDhNQnloS3FzTnBUekxhZzhBYTVlaUhYaWJydFYwV2ZzK01W?=
 =?utf-8?B?d2RNWUpUVUFXVW9DMEJqdWpuYXBZT3REUTd1YkNhc1g2ZWNQcFRDUkRuTEJ0?=
 =?utf-8?B?eGdHSnFoS1ZXVmRqZ1l4dDI4N2pzV3hSODhhS0YxeG9ITURDWUVwZExNTHA1?=
 =?utf-8?B?ZmtyNEErSm5FcXQzUmlxbUNuNUdqT0tzUnAyNFk4Sld4SGxNRmhpNXRaWmJT?=
 =?utf-8?B?NG5vTEhIMVNBRlh1cnR5b2JtMThObkR6K0pIb0UrbjhYYWFSY2p6YW9VblpQ?=
 =?utf-8?B?b1E5Q3BHZlFLWkhQZk9TWW5pV2RHeTlGOFlIT2w2VUV3MFNDeVdIK3JoM3J1?=
 =?utf-8?B?bURrbUZYNFlBN2lUbmk0VkdibytkU3RKQUppTHdjYU85SlNtMUdIY2pJa2p1?=
 =?utf-8?B?SG9hRnJMbnYxb2lKd0N6VUJkejh2bDU5b1o2N0RCbW9HRlNnZDN2aUM2N0li?=
 =?utf-8?B?T2JiNXZpSS9VcDcxT0VGUEVUYmQyRjgrcUVEbWNVSjcvRXk3VUNkbk9Cb3Ft?=
 =?utf-8?B?VWt5TXdkcjJDbElTTW53Rk5OQUlNdWxucG0waCs3WlhCZkJ3VEM0U3lFdVdy?=
 =?utf-8?B?di84eFFSNWRFZlJRU2lHRDlrdFA5Z2w3ZjJGU0lmSm05eFVYZXI4U2lhcW1n?=
 =?utf-8?B?M0xSZkNDa1NHZ29RUEFXTWZlNklxaWUyU3FBakdGNXJ4dXR0UE9zVVVyRTFz?=
 =?utf-8?B?QitjdG9zODJ2eUcrYUtPd21rUEY3UmhEVmhSRU0vUDBCdmpkUDNxMEk4bWJm?=
 =?utf-8?B?aHJUUXNMQjVWcFFOUUlTT3R6dS90TnBGclNBa25SdldFOGpnTmhIT2I0RlBh?=
 =?utf-8?B?ZGFuK1dvS0lCZy9xbUdKbDRDaVZlOWlBMm9KdlBIei9jREdtTTVId0JxeVhQ?=
 =?utf-8?B?S3hqZ2ptU3hrNlBsZFVsRC9oWm0rZnlFUXJkMUxGYWZnUUVvSzNKeGh0YlJK?=
 =?utf-8?B?bStHQWRnZW0xYmY4cmhBb3lMZC8yOUhCRnBBTUY0Z3lmMXA1SC9Ta0s3UW9l?=
 =?utf-8?B?R0NnU2doeHI1elVjZHMvcmszeDk0QllEcHZzRzUvRlppWklONmJjYStyL29N?=
 =?utf-8?B?cjFoOXN4aER3bjB2QW4vREltNzF5Qlk3WWo4WEVBK0ZKMU5YMDNUQlcxZjlU?=
 =?utf-8?B?bVhOZDM4byszU01STHhkUmlpcy8ya2d5dEdONGJyOFFFTUFYcGpQWFEyVnps?=
 =?utf-8?B?OTlKYnNQZHQrL0FQenltV0RiSmJQUGtCNU1NNk1EeTB3YUtuM1RaSHVUZnda?=
 =?utf-8?B?RmdMZUpSczFWbWo2ckhreTg5ZkpWWThxNmFBVXdHbmsvVTZDR1ZJTndPYmhC?=
 =?utf-8?B?TUdTMGN2QmhKUmVvRjczaUhISVFJN3hocytkNU1iRVN6ZkhhK0swSGNkQlpU?=
 =?utf-8?B?Z2VMVXNZdHFTM0M2SjMvMEJVcFFkS25xYS9aYjgyMFNWam9lUzBzeG8wTWg1?=
 =?utf-8?B?R0FCd1RnYWdTUGwzU2ZiaUV4NkdMcWd3eWFlSlhBb2NKb3dMTzlQbS9oWUg1?=
 =?utf-8?B?TE1lT1hmbEVOc2FSZTB6YXVJSk9FYXEwL1VicUl0L0hyR012TXlvSytMYW05?=
 =?utf-8?B?cnFGUWZVckFpMjRsQ0xWMDdFcnVHVUJmTitIWlJLM3I0UUxGd084NEh2MlpV?=
 =?utf-8?B?KzcxSlBiZXlMZVpTa052WmNsaUNISnIrVTVySzFyNkY0V0NMWWFzUUVBYkpV?=
 =?utf-8?B?aHYzRHdya0hCL05NeFJUbVU1S1NJWXpJa3JzbUdLdkFJN3huYlhqeFRqeDVa?=
 =?utf-8?B?bU9wQ1l5dzFZLzRoU2lLVm5iMkVMNUNaRGMyTGgyVFF4Q1NMZXNYeElZWGtj?=
 =?utf-8?B?SllaUFAzRGVFdm9KZ0hSS3dqS1prYzd1YkFvM2E5VGUwUlpOakhFL0xWWTdZ?=
 =?utf-8?B?bjRCSFlYZ2ZFSXRPT1ZTb0EyN1NCMzE1ZXowRHFQbENvMllMWEUyaUhrdExX?=
 =?utf-8?B?a2lZUXE1WC9tdWNSd3pNQkwzbVlMKzlaU1cvRzNhR1c1VGFRR2E0aHg1bnpC?=
 =?utf-8?B?ZnBDVXBYQXk4M0I2UE05SnNCUW0zQVE0UUpxNlZXMnBFNmNQNjFWM0F6RnVV?=
 =?utf-8?B?RGJFb0UzTisxN0NoQlcyUFFtSnd2TTZGelRLbTdDYzdYbDZ5NDIxM3Azb0x4?=
 =?utf-8?B?d1VzbU1xMVAxRnFRMHF6dVMvYnoxK1BrN2tFZkt3MzJkRGV3dk8yQml1UC8z?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21c206ff-ed74-4b7e-7a67-08dc74e37347
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 13:32:22.1141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8NWqtGtTwZPtK+QeT9d5yCBqYiGKlIPd9dMp+IuAhM3wC+UZguJU+b346b1OF39DUE2lRAjsMHvqEwb5c2w99w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6433
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

Quoting Gustavo Sousa (2024-05-15 10:23:54-03:00)
>Quoting Mika Kahola (2024-05-15 03:45:23-03:00)
>>As a preparation to remove .clock member from pll state
>>structure, let's move the port clock calculation on better
>>location

Ah... Also, I noticed that we are not simply moving the implementation
of port calculation functions with this patch. We are also replacing
usage of the "clock" members with function calls. I think the message
subject and body should be reworded.

--
Gustavo Sousa

>>
>>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 176 ++++++++++---------
>> 1 file changed, 91 insertions(+), 85 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
>>index 1b1ebafa49e8..9f860a05e623 100644
>>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>@@ -1970,13 +1970,92 @@ static const struct intel_c20pll_state * const mt=
l_c20_hdmi_tables[] =3D {
>>         NULL,
>> };
>>=20
>>-static int intel_c10_phy_check_hdmi_link_rate(int clock)
>>+static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>>+                                        const struct intel_c10pll_state =
*pll_state)
>>+{
>>+        unsigned int frac_quot =3D 0, frac_rem =3D 0, frac_den =3D 1;
>>+        unsigned int multiplier, tx_clk_div, hdmi_div, refclk =3D 38400;
>>+        int tmpclk =3D 0;
>>+
>>+        if (pll_state->pll[0] & C10_PLL0_FRACEN) {
>>+                frac_quot =3D pll_state->pll[12] << 8 | pll_state->pll[1=
1];
>>+                frac_rem =3D  pll_state->pll[14] << 8 | pll_state->pll[1=
3];
>>+                frac_den =3D  pll_state->pll[10] << 8 | pll_state->pll[9=
];
>>+        }
>>+
>>+        multiplier =3D (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_st=
ate->pll[3]) << 8 |
>>+                      pll_state->pll[2]) / 2 + 16;
>>+
>>+        tx_clk_div =3D REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state=
->pll[15]);
>>+        hdmi_div =3D REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->p=
ll[15]);
>>+
>>+        tmpclk =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier=
 << 16) + frac_quot) +
>>+                                     DIV_ROUND_CLOSEST(refclk * frac_rem=
, frac_den),
>>+                                     10 << (tx_clk_div + 16));
>>+        tmpclk *=3D (hdmi_div ? 2 : 1);
>>+
>>+        return tmpclk;
>>+}
>>+
>>+static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *stat=
e)
>>+{
>>+        return state->tx[0] & C20_PHY_USE_MPLLB;
>>+}
>>+
>>+static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
>
>While at it, also remove the unused "encoder" parameter?
>
>Also, note that there are legitimate checkpatch issues reported for
>this patch, with those addressed:
>
>    Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>>+                                        const struct intel_c20pll_state =
*pll_state)
>>+{
>>+        unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
>>+        unsigned int multiplier, refclk =3D 38400;
>>+        unsigned int tx_clk_div;
>>+        unsigned int ref_clk_mpllb_div;
>>+        unsigned int fb_clk_div4_en;
>>+        unsigned int ref, vco;
>>+        unsigned int tx_rate_mult;
>>+        unsigned int tx_rate =3D REG_FIELD_GET(C20_PHY_TX_RATE, pll_stat=
e->tx[0]);
>>+
>>+        if (intel_c20phy_use_mpllb(pll_state)) {
>>+                tx_rate_mult =3D 1;
>>+                frac_en =3D REG_FIELD_GET(C20_MPLLB_FRACEN, pll_state->m=
pllb[6]);
>>+                frac_quot =3D pll_state->mpllb[8];
>>+                frac_rem =3D  pll_state->mpllb[9];
>>+                frac_den =3D  pll_state->mpllb[7];
>>+                multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_st=
ate->mpllb[0]);
>>+                tx_clk_div =3D REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK, =
pll_state->mpllb[0]);
>>+                ref_clk_mpllb_div =3D REG_FIELD_GET(C20_REF_CLK_MPLLB_DI=
V_MASK, pll_state->mpllb[6]);
>>+                fb_clk_div4_en =3D 0;
>>+        } else {
>>+                tx_rate_mult =3D 2;
>>+                frac_en =3D REG_FIELD_GET(C20_MPLLA_FRACEN, pll_state->m=
plla[6]);
>>+                frac_quot =3D pll_state->mplla[8];
>>+                frac_rem =3D  pll_state->mplla[9];
>>+                frac_den =3D  pll_state->mplla[7];
>>+                multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_st=
ate->mplla[0]);
>>+                tx_clk_div =3D REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK, =
pll_state->mplla[1]);
>>+                ref_clk_mpllb_div =3D REG_FIELD_GET(C20_REF_CLK_MPLLB_DI=
V_MASK, pll_state->mplla[6]);
>>+                fb_clk_div4_en =3D REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll=
_state->mplla[0]);
>>+        }
>>+
>>+        if (frac_en)
>>+                frac =3D frac_quot + DIV_ROUND_CLOSEST(frac_rem, frac_de=
n);
>>+        else
>>+                frac =3D 0;
>>+
>>+        ref =3D DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), =
1 << ref_clk_mpllb_div);
>>+        vco =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(ref, (multiplier << (1=
7 - 2)) + frac) >> 17, 10);
>>+
>>+        return vco << tx_rate_mult >> tx_clk_div >> tx_rate;
>>+}
>>+
>>+static int intel_c10_phy_check_hdmi_link_rate(struct intel_encoder *enco=
der,
>>+                                              int clock)
>> {
>>         const struct intel_c10pll_state * const *tables =3D mtl_c10_hdmi=
_tables;
>>         int i;
>>=20
>>         for (i =3D 0; tables[i]; i++) {
>>-                if (clock =3D=3D tables[i]->clock)
>>+                int port_clock =3D intel_c10pll_calc_port_clock(encoder,=
 tables[i]);
>>+                if (clock =3D=3D port_clock)
>>                         return MODE_OK;
>>         }
>>=20
>>@@ -2035,7 +2114,8 @@ static int intel_c10pll_calc_state(struct intel_crt=
c_state *crtc_state,
>>                 return -EINVAL;
>>=20
>>         for (i =3D 0; tables[i]; i++) {
>>-                if (crtc_state->port_clock =3D=3D tables[i]->clock) {
>>+                int port_clock =3D intel_c10pll_calc_port_clock(encoder,=
 tables[i]);
>>+                if (crtc_state->port_clock =3D=3D port_clock) {
>>                         crtc_state->dpll_hw_state.cx0pll.c10 =3D *tables=
[i];
>>                         intel_c10pll_update_pll(crtc_state, encoder);
>>=20
>>@@ -2209,13 +2289,15 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pi=
xel_clock, struct intel_c20pll_
>>         return 0;
>> }
>>=20
>>-static int intel_c20_phy_check_hdmi_link_rate(int clock)
>>+static int intel_c20_phy_check_hdmi_link_rate(struct intel_encoder *enco=
der,
>>+                                              int clock)
>> {
>>         const struct intel_c20pll_state * const *tables =3D mtl_c20_hdmi=
_tables;
>>         int i;
>>=20
>>         for (i =3D 0; tables[i]; i++) {
>>-                if (clock =3D=3D tables[i]->clock)
>>+                int port_clock =3D intel_c20pll_calc_port_clock(encoder,=
 tables[i]);
>>+                if (clock =3D=3D port_clock)
>>                         return MODE_OK;
>>         }
>>=20
>>@@ -2230,8 +2312,8 @@ int intel_cx0_phy_check_hdmi_link_rate(struct intel=
_hdmi *hdmi, int clock)
>>         struct intel_digital_port *dig_port =3D hdmi_to_dig_port(hdmi);
>>=20
>>         if (intel_encoder_is_c10phy(&dig_port->base))
>>-                return intel_c10_phy_check_hdmi_link_rate(clock);
>>-        return intel_c20_phy_check_hdmi_link_rate(clock);
>>+                return intel_c10_phy_check_hdmi_link_rate(hdmi->attached=
_connector->encoder, clock);
>>+        return intel_c20_phy_check_hdmi_link_rate(hdmi->attached_connect=
or->encoder, clock);
>> }
>>=20
>> static const struct intel_c20pll_state * const *
>>@@ -2275,7 +2357,8 @@ static int intel_c20pll_calc_state(struct intel_crt=
c_state *crtc_state,
>>                 return -EINVAL;
>>=20
>>         for (i =3D 0; tables[i]; i++) {
>>-                if (crtc_state->port_clock =3D=3D tables[i]->clock) {
>>+                int port_clock =3D intel_c20pll_calc_port_clock(encoder,=
 tables[i]);
>>+                if (crtc_state->port_clock =3D=3D port_clock) {
>>                         crtc_state->dpll_hw_state.cx0pll.c20 =3D *tables=
[i];
>>                         return 0;
>>                 }
>>@@ -2292,56 +2375,6 @@ int intel_cx0pll_calc_state(struct intel_crtc_stat=
e *crtc_state,
>>         return intel_c20pll_calc_state(crtc_state, encoder);
>> }
>>=20
>>-static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *stat=
e)
>>-{
>>-        return state->tx[0] & C20_PHY_USE_MPLLB;
>>-}
>>-
>>-static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
>>-                                        const struct intel_c20pll_state =
*pll_state)
>>-{
>>-        unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
>>-        unsigned int multiplier, refclk =3D 38400;
>>-        unsigned int tx_clk_div;
>>-        unsigned int ref_clk_mpllb_div;
>>-        unsigned int fb_clk_div4_en;
>>-        unsigned int ref, vco;
>>-        unsigned int tx_rate_mult;
>>-        unsigned int tx_rate =3D REG_FIELD_GET(C20_PHY_TX_RATE, pll_stat=
e->tx[0]);
>>-
>>-        if (intel_c20phy_use_mpllb(pll_state)) {
>>-                tx_rate_mult =3D 1;
>>-                frac_en =3D REG_FIELD_GET(C20_MPLLB_FRACEN, pll_state->m=
pllb[6]);
>>-                frac_quot =3D pll_state->mpllb[8];
>>-                frac_rem =3D  pll_state->mpllb[9];
>>-                frac_den =3D  pll_state->mpllb[7];
>>-                multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_st=
ate->mpllb[0]);
>>-                tx_clk_div =3D REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK, =
pll_state->mpllb[0]);
>>-                ref_clk_mpllb_div =3D REG_FIELD_GET(C20_REF_CLK_MPLLB_DI=
V_MASK, pll_state->mpllb[6]);
>>-                fb_clk_div4_en =3D 0;
>>-        } else {
>>-                tx_rate_mult =3D 2;
>>-                frac_en =3D REG_FIELD_GET(C20_MPLLA_FRACEN, pll_state->m=
plla[6]);
>>-                frac_quot =3D pll_state->mplla[8];
>>-                frac_rem =3D  pll_state->mplla[9];
>>-                frac_den =3D  pll_state->mplla[7];
>>-                multiplier =3D REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_st=
ate->mplla[0]);
>>-                tx_clk_div =3D REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK, =
pll_state->mplla[1]);
>>-                ref_clk_mpllb_div =3D REG_FIELD_GET(C20_REF_CLK_MPLLB_DI=
V_MASK, pll_state->mplla[6]);
>>-                fb_clk_div4_en =3D REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll=
_state->mplla[0]);
>>-        }
>>-
>>-        if (frac_en)
>>-                frac =3D frac_quot + DIV_ROUND_CLOSEST(frac_rem, frac_de=
n);
>>-        else
>>-                frac =3D 0;
>>-
>>-        ref =3D DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), =
1 << ref_clk_mpllb_div);
>>-        vco =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(ref, (multiplier << (1=
7 - 2)) + frac) >> 17, 10);
>>-
>>-        return vco << tx_rate_mult >> tx_clk_div >> tx_rate;
>>-}
>>-
>> static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>>                                           struct intel_c20pll_state *pll=
_state)
>> {
>>@@ -2636,33 +2669,6 @@ static void intel_c20_pll_program(struct drm_i915_=
private *i915,
>>                       BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
>> }
>>=20
>>-static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>>-                                        const struct intel_c10pll_state =
*pll_state)
>>-{
>>-        unsigned int frac_quot =3D 0, frac_rem =3D 0, frac_den =3D 1;
>>-        unsigned int multiplier, tx_clk_div, hdmi_div, refclk =3D 38400;
>>-        int tmpclk =3D 0;
>>-
>>-        if (pll_state->pll[0] & C10_PLL0_FRACEN) {
>>-                frac_quot =3D pll_state->pll[12] << 8 | pll_state->pll[1=
1];
>>-                frac_rem =3D  pll_state->pll[14] << 8 | pll_state->pll[1=
3];
>>-                frac_den =3D  pll_state->pll[10] << 8 | pll_state->pll[9=
];
>>-        }
>>-
>>-        multiplier =3D (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_st=
ate->pll[3]) << 8 |
>>-                      pll_state->pll[2]) / 2 + 16;
>>-
>>-        tx_clk_div =3D REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state=
->pll[15]);
>>-        hdmi_div =3D REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->p=
ll[15]);
>>-
>>-        tmpclk =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier=
 << 16) + frac_quot) +
>>-                                     DIV_ROUND_CLOSEST(refclk * frac_rem=
, frac_den),
>>-                                     10 << (tx_clk_div + 16));
>>-        tmpclk *=3D (hdmi_div ? 2 : 1);
>>-
>>-        return tmpclk;
>>-}
>>-
>> static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>>                                          const struct intel_crtc_state *=
crtc_state,
>>                                          bool lane_reversal)
>>--=20
>>2.34.1
>>
