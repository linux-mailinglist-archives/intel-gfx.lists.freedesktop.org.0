Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 815BD97297D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 08:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A62E410E508;
	Tue, 10 Sep 2024 06:27:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SidVdeuT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD7B010E508
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725949654; x=1757485654;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xJ/H24w/Er0cZsm5j0u2iDC8IZG5dSsqD6GrrEfOB6s=;
 b=SidVdeuTADtRRPi0m8zqQnSMrSc+g95r2i9baHkNPwsm76ETB36vUYEb
 6ClZmpPnfACHb/t7LzaaG0EVv5WpKF3ui1IzCvFcu18OftUTtIiHXLXju
 SxEmXReAtavkRrt83AQPVWfcVCxV5mbYOJCFUEVNKUqIdrp1VWwUiF1EX
 VfiheyOTIMFd+Al77bFqqOhtWONXMZUsoe2ivI6pOZDjQKjBeZMwyi9pV
 IHkrFSMukQ+wf7GYqJJj05NoPozfK15LWO2w7DT4hdqXPSLpqN+mAn1jl
 P5kXzLV+HV0ZIoJYsLowOBC8f7t8ONFCsDCs7e2dZ0eIs9cli92doViur w==;
X-CSE-ConnectionGUID: Em/ZbVqdQhK0D3oeIm/cHA==
X-CSE-MsgGUID: jVU9Z4FOSLScb8Q0zkXl/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="36025519"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="36025519"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 23:27:34 -0700
X-CSE-ConnectionGUID: fZ/D+3iAQNytZhpesdcLsA==
X-CSE-MsgGUID: oZLA5egxRhyS7lbbyVONDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="71704630"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 23:27:33 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 23:27:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 23:27:32 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 23:27:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FAZv+Ty/B5luuPrRrXWkeS8F01C5ZhRYHTuZGd4w+PQIenBU+44be+AyN1MJrq7ln8DlsSbqizTPkPNnNP/94+BXVOjN7x4HSEQVbMV7wkDXq0+AUBSIS44fqAEzqvpRb4Ftlgj+T/bkw1HJag72/iJCad2tIe+fsxLmeO1v9fO37WrxARuP3FZ4LS+/UL2YoZ3F3Egmj1ZzIpvC5bOmBgxLGMvN4nF98q+eM/SzbyDKJPFQ0ySPrE1qxbVmI+/eRegGb4pb1Kc5ApGeUBT0HaTqNtIa7CqqXzqXwimrW7fz0yTqJEi8QK8KDdAFu/YJM/DfEkHx34XtWoq58r23wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gHCCPEACXbUHyp4p18WHsURUAmIsMSnvFzRnmmmw+hQ=;
 b=OWez2xHCDmmbud2Bo+TxxEFH+chH94wZoY0wTFOR7NJKV6tk4QWEQWIVTQBTgWSphDg0Y+HRPhhEdnoYxTet/GgfRTT3l+rtcaA1eVIo+ikd4b6D3gy+QBg2Rh5vRg104x/VjoogWIUQ4KG2RVomSA829cRF+SAVck9yV/v27wS5yXHldvmfncupqj9zMSn7tseWTaurpVwxe1QNbDLU6++qfpHnYGy4MkOxrxi3paRpPWLvtKYqVIHJGuVuzOdW5n89uzXhOZcIvDucXunX3hpH46Z2lQXSOojU8+hzw//z5bYs+kiMcAWxTvgkxXB9AJDPMafA7syBbiveMTIBzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH8PR11MB7095.namprd11.prod.outlook.com (2603:10b6:510:215::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 10 Sep
 2024 06:27:30 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%5]) with mapi id 15.20.7939.022; Tue, 10 Sep 2024
 06:27:30 +0000
Message-ID: <6683448a-aeb4-4ab1-9520-c83f70100583@intel.com>
Date: Tue, 10 Sep 2024 11:57:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/hwmon: expose package temperature
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, Andi Shyti
 <andi.shyti@kernel.org>, "Jadav, Raag" <raag.jadav@intel.com>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "tursulin@ursulin.net"
 <tursulin@ursulin.net>, "linux@roeck-us.net" <linux@roeck-us.net>,
 "andi.shyti@linux.intel.com" <andi.shyti@linux.intel.com>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>, "Tauro, Riana"
 <riana.tauro@intel.com>, "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "Poosa, Karthik" <karthik.poosa@intel.com>
References: <20240906093118.3068732-1-raag.jadav@intel.com>
 <sd5g4sj6t373wu5jfdfaujh73t4uehcri4aqtu7dln4p4huyoh@sa4nivkflc47>
 <CY5PR11MB6211D25D522F6044554B84F7959A2@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <CY5PR11MB6211D25D522F6044554B84F7959A2@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0033.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::15) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH8PR11MB7095:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d1cc31b-38eb-4e49-aa2e-08dcd161a5af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cld3K0lZQjJ0WEdzN0JYakthOG5ZMjAwYnFDQ2ZxdVMrZ0ZGOXpKeC84eEFa?=
 =?utf-8?B?NWdpWGVVdVhEMFBORER1ZVVXbmtEVVFMZTZwVkFkSy9qbE0xQWRqZVdLc28z?=
 =?utf-8?B?N2ZPNW5OVEJlbE5qVkJqSkRyZlNDdGxvYnBuMC9WdHZvVVZkbURBTmNJM0dh?=
 =?utf-8?B?RmU3ZjZmRFNyQ0NqQ0JjcTVvRWdzRVg2Nkkrb3oyblVUY1NxdC93aGVoOEM4?=
 =?utf-8?B?K0F1SXN2YW4vYUlEKzlsc3kyVWw3eGdGQ1Y2M0J5cm9tRWplaGlYNSsycHFT?=
 =?utf-8?B?R3M0WDE3Zkl4ODNBVjdrdkpFemI2RVlWenEwUzlIRThnT1h2cUFzKzQ2TnBs?=
 =?utf-8?B?dnhtajNMQXV1S2JKV0diSjlHNW16Z1QvRzJDekdIc2FzVUJkblh3YS9kcHpX?=
 =?utf-8?B?dFdDczJjWjI5VTdkbEF1RUU1ZVQ5VFUvc2JoZW5lUVIwK1EyeDhDRDVVd0p4?=
 =?utf-8?B?R1ovQVBFZmc2dHdQZ2R1MlRQWlF5OGNKTXBzVlVMUFVIMWJLdUpNS3lESm9M?=
 =?utf-8?B?ZkNpc3VXOTBUTXRxR3ZtY2NEaFZEWU5SWXBPaGpxV0RZSG1nOENSSXdIUmE4?=
 =?utf-8?B?dkFWbXVOR2ErSURkVEpBRTZnWEJTRlUxWlRBcFE3SVNCd3loTEU1cUVRUmFB?=
 =?utf-8?B?M0g0OWRaMlVZZCtJS2lxUmRMeU5YWjNITlIvOUFSRC9PL2JsQWpQbkovdG40?=
 =?utf-8?B?YUwvbTR6YWEzSGtQRmlpTTB5VjJQQ3dsNGMvQ0VtenVSKzQwS2ROZlNzektD?=
 =?utf-8?B?K0p5eTRUQWd5QVdzbUhtSjZCZXkzMnRqekkzL1ZEWUFFT3NYOENwRzhCVmZI?=
 =?utf-8?B?NVZvOFpnUTBMcEFXd1Y5VXdlMllxeEdZd2NnOTRZRW1DQkQwMWg4RVhyWlZl?=
 =?utf-8?B?TCsvUTMrNUZsaml0bjF4TDZtWW9La1ZtWGVOS0RwZG5VVm1wS3VUUFljWE1o?=
 =?utf-8?B?c2dNNnBISHErWXVNd2dhS1ZZdmZRUHRkS2d1dGdFR2FyNS9Ya1QvKzhyMUFh?=
 =?utf-8?B?d0kwL0NoeEZIaEllSlgwT3NpbHAyQ2xtS3Fpa3AyZ29ZTFRoYXRXbFlnbEZH?=
 =?utf-8?B?dWdWK21JS01uRThJWGZJQkJFZXUxWGQ1b1k3RmVLTTNxSDNvYzM4bm51dThy?=
 =?utf-8?B?SDFhdWE5L3E5TDRQTHcvYW5sMUQyR09pSXUzZTFNdG5rMUtZTHluQnNPaDZo?=
 =?utf-8?B?OEQ3ZWcwcisxQkxwMnFSaG5EdkU3WUM1endXKzIxM1NNbXkxTE4zVVEzcFRQ?=
 =?utf-8?B?ZWRnRkZFdmVkR3VROExLWXUzVW9VN1F0WHVTeXpkaWJ6eVQ5WkFaN1l6aS8v?=
 =?utf-8?B?SzEyeWFraXlOS2I3MkcybDdqempKYUszcERNbGp2RFhwV0Jzc015SHFUbGRP?=
 =?utf-8?B?UW9GZDlIQVdOZGNXV3pna3Uvclo5cGxic2RkSG9LMjJUZEpsTVZjRmcyR0d1?=
 =?utf-8?B?Ti9MaEZrak5FOUFLQm4rVHQyTVNVSXQxMU9uK05OQVJiTW92TG5wNkdvZkRs?=
 =?utf-8?B?aUFGQUtrWTU3aDJiL2YvTzBCY05ESnlTZ0F4K0F4QjFjVEhHN0ZWNmpXZzFa?=
 =?utf-8?B?VlBWcmFUaHZiQWpzU0Q3WmpYQzFmcnNLdFNIblhxY3JZNnJmZnNaYlFDdUtw?=
 =?utf-8?B?WkZsWER6YzNHU0dGMUJYWTRpbUVudURQMmNid1VxRjE1Z2FiblRBalExcUhj?=
 =?utf-8?B?NWl6VTBRaDhQQURIZUhNYWJaUXg2ZjFhV1M5NGNQVU83VVZEK1NyWmdIU2xY?=
 =?utf-8?B?T0hsS3A2eW9xWWN5eC93NThGNityNjJ5dVZRMnBud2JCZmJqTXdPRFRRQ1Ez?=
 =?utf-8?B?TGxhbkp1dXdKeFU3THNXQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qk9wU1RhZm50VnFxZ1E2M2tVR2dNTmhHck11Rm1KUmszK2VDSkZGNGwyMnFo?=
 =?utf-8?B?R01xVDRTTHRaQkY0cDZpbUpYN0J0REludFRLZkQ4cmpYcnEzRVpESzFGTFNZ?=
 =?utf-8?B?YVN6VXR1dDVnOTVOTXRmRjlDNDJ6VmVFYithbVlSRURBeFRCM1dGdnpENHM0?=
 =?utf-8?B?U1Z3WFBaejRsWjFJRUxUM3BRSFBJWWhmRnZwZXZwNld1clEyVm50QzkwRFMz?=
 =?utf-8?B?ZXNLZTVEaE5KWHlyd01qSkZVNlFGNjNHVlV2bHQ0aERNUHR6UVFFclJJeThY?=
 =?utf-8?B?RDRSU1FUSG9RbHowOVR0MjNUOFBEaFNhQ2R6dXVDVHNXcGVnTE8yQXZxc0FM?=
 =?utf-8?B?TjloYnpZRDk4RUpFbVo0ZlNsaGQrRmpuUHNDbXhnMWRWczEzVCsyN2hYeEQw?=
 =?utf-8?B?QW5JWHl0WkJzNTM1bmFEOE5pQkRjbUZ3bWNDN21Ud1JlVHZoQzF5K0l6Wk5P?=
 =?utf-8?B?WDd2QUcrMlVaZjNXcHdDMnVReUdHRTlwRTU0eHgrcWRJZDJkSTI2Sk5wbGto?=
 =?utf-8?B?dkl6ZElHb25ZT3hjd3V3K1lwblptaGluWEdENzU4b2huMXB2Mi9EZTQ4S3M1?=
 =?utf-8?B?cEFGS0FyNzdsYzM0UGdjR2RnS3FiRlFQbmtKQ3ZYSkpsM0QrVGE3cStPaXlj?=
 =?utf-8?B?d2tJQzZSQmRYYjVRdlRJQWViaDJzYk50blZVaW1KMi9sTVQxT1pFNGZQV2hr?=
 =?utf-8?B?SDVINDVMci9kRVVWK2pKNlJOQXZFK3dlWUxLaDR0dkZueUJSSTRkbThqL3FQ?=
 =?utf-8?B?c051VnQ5bHdLNmpNdXdqQkNBY1dxUTNiVlJPbk9YVzRETU1sb2NLSGZFclNi?=
 =?utf-8?B?dnVjRk15Wks1WDJsbSs4U0pPcmY4bWR2aFllNitSNnkwem8rd0RJTkF1OHQ3?=
 =?utf-8?B?dmZpTzJKL2lSbDJuRzZnckNoOFQvczYrUFQyVzlqMW01djh2K2ZETzVnNVNm?=
 =?utf-8?B?WjNMNTNJeC9hcFAwSDZWRU9FWUIvK1FUOHphNS9FaThiUkZjTVhnSC9YT1BE?=
 =?utf-8?B?UjZmS2wxMmJqU0JSQ3djSFNmUUpNa2Q0M1B4cG5HMUtUczJmWHRGdHA3QWhP?=
 =?utf-8?B?QnBhMW5zQ3Y3VUlHRVpiZWhqaFoyMFhsaU9SL3Z0WHRVdTBnL0FndzFYNW1n?=
 =?utf-8?B?NUpmN3ptTmVYSHpWWkNkNVU5czg1NFN0Ti9VSXZ0Z3EyOEhGdUlYajdvc2hj?=
 =?utf-8?B?U3NxbkhwUU1iNFFtQitlMktlQ3c2UEc2MXNOdjQ2YisrSEErSUR0MCtPVGtW?=
 =?utf-8?B?QmYxdzNkOG9DTGlyeGtWSUpiU2lYcEVFdDAxb2tHdHlBeWpJcDNrZjNSTDlD?=
 =?utf-8?B?d0ZzTzRUeldxMXN6aHpOM256alViaHRkQ29oSE1zNVFFYW5NSGdjMk1CZGF4?=
 =?utf-8?B?ZUplaTNaanlEOENSYnJSdUlEV0tQdWNTSFRGN3lJUUpkNkQ0aXJZcjhNTWNC?=
 =?utf-8?B?UFBHcXZXd1ljS0tLT28ySmkxS3psckg1TFkrOXB2aVBucG10N0VieFRmS1Fy?=
 =?utf-8?B?TDczQVN6Nlk3N1BoV05xR2lxZllMZ0t2WVI1TXRYSFQ4RlVVd04zWXMybE4w?=
 =?utf-8?B?Q2wrZVdHdHpNMVczbC85S2lxQjdobTcycndNSnNxMzAyTGVPTXhHZ2hhU1ZK?=
 =?utf-8?B?V2Rqdmw0RHdKNTU0MkJIQVcrNmxQSG1oQ2ZDQy9HUFpxNnhMSjh2b1BuRkNq?=
 =?utf-8?B?UWFNQmJLSHNOSVFaVTlGRXRLb253UGpSOTBUWG1OZ2J1MnhLSm1hMnFKVVha?=
 =?utf-8?B?OTdldXhqYTJxQlg2RkFvY2UrTUlTRmRkMktlSmo3QWhJbmRWOHlJa0dLdVlo?=
 =?utf-8?B?KzRDQ09FZVNMTmkybmxXeWg0TEpiVnNYMEw2aFo0LzRJQ05RUzdaOE1wNXVq?=
 =?utf-8?B?b3FoMlN2bmlla3pNN0cwWWRBQ29QVm8yQTFXNGNsKys0SDlxTXJiQzIyYkh5?=
 =?utf-8?B?a1FuK3g1Vy9PYWpYaFRRc2RoZUQxaG52N1ZQeTJPdDN0UHJIZGI0dlJXNzJY?=
 =?utf-8?B?d2EvZ2RCWkQrQUV6M0g4NFZyOGlNelRZWEJueXcrN2FqelgwN3NDa2wwR1ph?=
 =?utf-8?B?RXltWk5MNER6RGFpK1VoOVNJbDdITDlpS3I1ZzIwcTliYVRXVndzVlp6enVU?=
 =?utf-8?B?b2UwNzY4UGc3aHdJUGducGdlSFNremtmTmhSaENDVTR1Vnh1VXlMNDNpN1Vx?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d1cc31b-38eb-4e49-aa2e-08dcd161a5af
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 06:27:30.4704 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZH/pT4LdExmaC3taFTMFMNundIb3A6M9glNIavOvrwqoNaIPaxIVUM5uLxddzAG7surYl4ZMUQ+jpAyZ9DlbrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7095
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



On 10-09-2024 10:07, Gupta, Anshuman wrote:
> 
> 
>> -----Original Message-----
>> From: Andi Shyti <andi.shyti@kernel.org>
>> Sent: Tuesday, September 10, 2024 3:54 AM
>> To: Jadav, Raag <raag.jadav@intel.com>
>> Cc: jani.nikula@linux.intel.com; joonas.lahtinen@linux.intel.com; Vivi,
>> Rodrigo <rodrigo.vivi@intel.com>; tursulin@ursulin.net; linux@roeck-us.net;
>> andi.shyti@linux.intel.com; andriy.shevchenko@linux.intel.com; intel-
>> gfx@lists.freedesktop.org; linux-hwmon@vger.kernel.org; Gupta, Anshuman
>> <anshuman.gupta@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
>> Tauro, Riana <riana.tauro@intel.com>; Dixit, Ashutosh
>> <ashutosh.dixit@intel.com>; Poosa, Karthik <karthik.poosa@intel.com>
>> Subject: Re: [PATCH v2] drm/i915/hwmon: expose package temperature
>>
>> Hi Raag,
>>
>> ...
>>
>>> +static int
>>> +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val) {
>>> +	struct i915_hwmon *hwmon = ddat->hwmon;
>>> +	intel_wakeref_t wakeref;
>>> +	u32 reg_val;
>>> +
>>> +	switch (attr) {
>>> +	case hwmon_temp_input:
>>> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
>>> +			reg_val = intel_uncore_read(ddat->uncore, hwmon-
>>> rg.pkg_temp);
>>> +
>>> +		/* HW register value is in degrees, convert to millidegrees. */
>>> +		*val = REG_FIELD_GET(TEMP_MASK, reg_val) *
>> MILLIDEGREE_PER_DEGREE;
>>> +		return 0;
>>> +	default:
>>> +		return -EOPNOTSUPP;
>>> +	}
>>
>> I don't understand this love for single case switches.
> IMHO this is kept to keep symmetry in this file to make it more readable.
> Also it readable to return error using default case, which is followed in this entire file.
I agree on this. Let’s stick to file-wide approach and ensure it is 
applied to the fan_input attribute as well.

Regards,
Badal

> Thanks,
> Anshuman.
>>
>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>
>> Thanks,
>> Andi
