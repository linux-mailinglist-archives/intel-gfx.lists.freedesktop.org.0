Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC67A1D28D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 09:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E93F10E4EB;
	Mon, 27 Jan 2025 08:53:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LXQDRxw9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E0F410E4E9;
 Mon, 27 Jan 2025 08:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737967996; x=1769503996;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p9k7WdcJ0CpBqpFX8m3zuqMuv5nRDksi62edIlwdQUA=;
 b=LXQDRxw9vIfzaZ7KZPccrB5RWooTbv86JN1qYJSfEDM79ai36IWi9zeJ
 rdwKoO+w+Ukkps8+zAjz2eaTb3qURFhZkltan3+baFFCfBL6MUpseh/uL
 6InGe45AIB+jCVNxBhH7Zu0AcC5uuFnO31Wbl830tuev0Xik02fBYdTp5
 v8QmXQRVrDmLVb2ivtuawFlvCziZv8fAxZEjBkKIXRTJDdVPhBOb5zKwk
 OMuJ4tkg70h5SPGTY9Wl+cVMeEl6vCuQwcI8OyCEIDIMle/Tj9AG3aSjM
 F9h3Mu1lGh2QKCK2kPI55ne5lAXWDh00pKYTrERZf1EsaNmsGJ6nJOelJ w==;
X-CSE-ConnectionGUID: 2doshniHTsyz+Z33pa+0nQ==
X-CSE-MsgGUID: J/6jJwHCTYaEonyKFvmq1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11327"; a="38310454"
X-IronPort-AV: E=Sophos;i="6.13,237,1732608000"; d="scan'208";a="38310454"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 00:53:10 -0800
X-CSE-ConnectionGUID: 75aCyMOLTR+rjFygSpLNng==
X-CSE-MsgGUID: 8lElUZ3WScKFp7j6GtCKQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="145601105"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 00:53:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 00:53:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 00:53:09 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 00:53:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xb+ZCY6GGBCn3UYiTF9UHcrw6DCCMoQAl20zKSQDUaeSHt/zCA2g3Ka/pKWC5w6Kp48GNcq+mJq2XcLOm0sEwCkqlU6SoJJlDjyKJS8vPvGpwiZgMhcb8XGxfdhBBSGvugu289bJlhn912Jk+e3WQRcRFxUyo0HuZOzXzqZJqqo6LBbBdrk0g6FIHxlN7rGx1bJHhf8tx6Nxr6/UjKrMu4f3Nj4+uJIxQVdfgAtLN8FIN0OD0xTJiByqqnHX+li2n1lzal8iOTC4pdoAvJAg2N3pojn5YmAUMfYx28wr53n+pOWwtw9snOtA68YjPbdD/rB8Mxfzt1JBqq6peeg9+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZvxYxQea3OAsyj/70lXw8/hthzj8TQOsInWXevL6p8c=;
 b=eXlbXjYDpXuOeW/JK8TtFNqbpdpo1yf4s44w4UbF6deXlFt/L9+0rqd8oowSw9MKpDtXqHXUMetGmSzSz7pyF9vbUB4UH5d7SJlSm3G+uA6NQdylFGbLV6qhag1ndw8oU23W7UWeb9dEjYXcpUZTL4AIdjUkZiMouUaJ4LOdZMmQE6p80aBwTbg2fQdoXXtc30E8FG/nYOTQarQmj2yQYEVVb/EilCwxyiqgGlbDdCQDqIDZfd0KAS2QdGHNWtdGQ0wC5KXNmqjVBsFnEhEJuSwi/DvfxypmMWiRykZhxaUzdVue3efUrniqX5N1mYW95izEjSHJUaXsvxoHcRfuyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7955.namprd11.prod.outlook.com (2603:10b6:208:3dd::6)
 by MW6PR11MB8437.namprd11.prod.outlook.com (2603:10b6:303:249::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 08:52:53 +0000
Received: from IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::7265:46ae:19a8:b31d]) by IA0PR11MB7955.namprd11.prod.outlook.com
 ([fe80::7265:46ae:19a8:b31d%4]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 08:52:53 +0000
Message-ID: <c8daf6e7-e050-4228-ae9d-5ceb0ab9ca0d@intel.com>
Date: Mon, 27 Jan 2025 14:22:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v4 1/2] lib/igt_perf: Add utils to extract PMU event
 info
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250127081402.2587605-1-vinay.belgaumkar@intel.com>
 <20250127081402.2587605-2-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20250127081402.2587605-2-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0189.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::10) To IA0PR11MB7955.namprd11.prod.outlook.com
 (2603:10b6:208:3dd::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7955:EE_|MW6PR11MB8437:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cb91c5a-eddc-4d06-c200-08dd3eaffc67
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q3RXYTYrNVgybnhaQi9GS3BsaWUreXM0czhScll2VVozdkI0Q1NZREpXcE15?=
 =?utf-8?B?cnh4dTZ0Y3BOTVhvekJISFNLWXY5TSs3SHpHaGF3d3NxMWx0ejloZEU3N0Yy?=
 =?utf-8?B?S3ZYNXprSE9SY0hxTlgyTmZ5Yk9qYWFnaE8xcW9xRGphNzlsY1IvOUtVcUd3?=
 =?utf-8?B?dm5YSDF1eGJMQzNXM3BweTdxVEpJM2IvcWhIUVk3WHU1VEw2Z2VyRmJqQUE0?=
 =?utf-8?B?dERFVzdmeml1dUEzQnNkaG5mNDJkenhweVdsTmJzMyt6SmlYek9yWk5zc2FW?=
 =?utf-8?B?YWZhNS9mdjY5WjlIZlRkbDNRUzBrc2daUTlKaEU1ZEwvSjJBVFl5MXA0U21Y?=
 =?utf-8?B?ZDJHSGczM3A5YTAvVkxaWG5mT1hXcEpNQk1VY2pFa0JlUDZNNHkrRElsYlZk?=
 =?utf-8?B?NHJUKzRISmhVZ0lscXpDaTN5L2cycXZZdTJlZUlOektkUm0zUW92QlpUUDF5?=
 =?utf-8?B?SloraUd5ODZKYjV2elEyeWhNVC8yNGNVSzlCakgzczJ0KytCdVgzejZRT0Ix?=
 =?utf-8?B?ZGtPV0ZaOVdseFExT2c5MkpKQ1NRejFvL0NpeGRtSmh3OFl2cTNrRlRTVkR0?=
 =?utf-8?B?b0EwT0lCUFBIRlJYY3A5RmJabS90dEIzZXVTSVZuM0J0T0pWdkVqUFFzKzVu?=
 =?utf-8?B?ckZ1Q2pGa1BFWm5TODlRYnYxQk4yc3F5ejNna1h0dWdCTnFhMDlMaXNid2NJ?=
 =?utf-8?B?Zmg2MnpkZitrWDdOVkUyVXZNait1K0tyT2tIRG0xTVpEWWtWbzZUV1JjZUFZ?=
 =?utf-8?B?dmtBNkpteWhGcHlielVzSXRkdFcxajFIK0VBMWxiNlRRaDFFN1oyYTkxMVYx?=
 =?utf-8?B?V1F2OTRLeHltTW5VNkpzeVdyNms1YTN1MXd4aHYwaDAzZ3BnTHRZSU5KZ2R5?=
 =?utf-8?B?QnVvNWtGc1F3aFp0UHZySHZtMEtNVzFIUk1ib0E3dkxKTVZjUVJqNlFDSkgx?=
 =?utf-8?B?WHlObzF1Q3VGK05ZcEJEM0h4RmcxK1o3WHVqaDdVb0pKUFlBVTRudFdKUnZm?=
 =?utf-8?B?L1QyekdCY1NNdmdXcWZPTVFyMHVQekJ0MlhlY3pESlpOSmlRVmMvWjF0cjBY?=
 =?utf-8?B?aVRGZVpQZDlKdGVmL0RtWFgrUm9LTlBMbEFzNWJlbjdyVGN1V0YyblJ2U0ZX?=
 =?utf-8?B?Uk9yaFhWanpZdHl2ODdaeHFSM1JNaHdGZElIV0QzbzlFTHZqWWlKeU50bmk1?=
 =?utf-8?B?RG5wQmwvVjNtWGRWb1hJZ0V0NHA0M3M2dUswb3YyNFNoNE81Mm9tclFkRXlz?=
 =?utf-8?B?WHVTVUtFcXhwV1FvRW40VWU1WUxlcWRyVzVCTzhvWHMvWVJOYW9HTjltM20x?=
 =?utf-8?B?ZGZXQ0pnMGFKdi9FRlpXOStuaVJxcGFDWHhXbEx6TTJTR2tzTXpQVlUvOGhU?=
 =?utf-8?B?eTExbnh4cFVBd1VIN0VqczFGVnRwMU0xQzhaVjRyTGE5NTREaUlnM1BBM1hq?=
 =?utf-8?B?cStjcXJsTmNFSHhCUXlrdnNDQnVlWlpRWWFJWmxRb3NPY0FVbHEzclBOSkNO?=
 =?utf-8?B?dEJ0Vm9VSk81ODIyODVkK3FUeVlHUCtEYU5TZmNHLzVIR1dnekVJc0lPMVEx?=
 =?utf-8?B?VnRzWmNsMnI5Nkd5YUNKMmpxRGwyb210Rm5yWHdkc05aZW1tK01nUGR6WUlF?=
 =?utf-8?B?a3N4NWRNa1FtekVTQW91ZzRMY3NXQzlMVUpvWFNXaiswNGhCdUc3aGJ2ZEZz?=
 =?utf-8?B?KzZsYXVWZ0l2V3E2OG5nRzZYc09YeG5IQlAzRmtsMkk5QXU3Y2tIaUNWNW5r?=
 =?utf-8?B?SHhJcXZ0ODZYcGV1Kzd5Zk8vZlFNVW50OUQ1TDE3dUVqMkRsK20xbGRoNXFB?=
 =?utf-8?B?Nk16RDk1b0lJZWtHbURKaWFXQUtPT3JTdndPbmNqV0JyVDNRQ1dQOTRrQk90?=
 =?utf-8?Q?FoRuKFmXJb1RV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7955.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFg2ck84bXgzaUJpYUwxUFZSZUsvai9kRmZqTVltTjhXTHZyMk1CeTB6dDNo?=
 =?utf-8?B?QXBoQXZzaGRucGFRS0VXL1dab2xlZkRJM2I0ZjlMeWtsQ0dTejRJcTJSMWpP?=
 =?utf-8?B?K2RwKzQ4OFRFQkNoUFpyVTI2QXEvNXJsaVdKRjVCV3ZrQVlaTnFIUkZwMjRM?=
 =?utf-8?B?d1hhSVhWNDRtT2Vla05xa3oxZCtqUnJqZHN2TG1HYUpuNmQxRGRFa2lISkpo?=
 =?utf-8?B?THFZYngySHRncFo4TGlUS3JZWlZKRjdnYzB1a1ZLZ2lnb0hPWU5kTmQwRnoz?=
 =?utf-8?B?MDBWVW5pVGkzWmVwNUZmRldPaXVyTk5TVWVNdUwwVHcrcU1yUlhHa2ZUNkND?=
 =?utf-8?B?cExVNnpMVFN2c3J5VDBoajdLMmwyQXFMME5CL2g2OGMwMW1UNzBMWXRZZzNt?=
 =?utf-8?B?NnRKNFBSWTliSlM5MWNvR1NxdFc1ZlRwS1ZNRStuMTljL1ZJbVdKc0d6cDVF?=
 =?utf-8?B?NW9mQWwyTzJieFJISHFXb29CTExzR2hHay9iYTNMZVlOSTNLL0VoTi9zYmFB?=
 =?utf-8?B?MWttOFBTenJBRHUrUVZYakhNNVdLcytKTnNsdFllZ3IzTTVkZXZIcDhtdm8y?=
 =?utf-8?B?eTRtUE15UmF0MWhLVjVRRlhtMG5qWXYzSThZcGpZWkRhc1oydHVRVnB0TkNj?=
 =?utf-8?B?MWIwTXRNME1yaTB6TFZEMDA4ek1xMWc0c3M4NmErd3YxOUlYakxvT2lxaXFt?=
 =?utf-8?B?bGJyTHdjTmpTUnIvNlZHMmIxQmhqQ2V6UURSbnRPZEtJS3dPWW8zV2UwYStj?=
 =?utf-8?B?SDNzQXV1TDQxcFo2bUJ3eEd3WERWM1RtbFdCMUVVUWFJU1hLVXo5MTUzWVlJ?=
 =?utf-8?B?aUNLbXk5Rm1jdVpSQUhiYzcxQ2VLZlhXSHl0NSt5dW54Yml3c1AxMWUxNzhG?=
 =?utf-8?B?WVZIQTRCVkxnODlZb05FcmQzb3Y0TzZQczlmb3VwRkRjcDEyczd5UXdSMTFG?=
 =?utf-8?B?VjZjeHJTMXpJb0k1amJpbG8vczEvSFlZdThWUTlyaGVXQ1RDRlYxK3Ixd1B3?=
 =?utf-8?B?SzRiVXYrOHQrQ1A3QlhDb2NhV0tnbm5MZjBGVThnM1c4eDVSOW1tek04ZXhR?=
 =?utf-8?B?QVV0REdwZCtGNUpaa25vbUF6bm44bmYreDk2QUkwa3RjVzlDanBSNFJkeXg0?=
 =?utf-8?B?dkpXczQ2aUhkbVBwMkN1bEYxZVMvN09BMEY4NzlSQW8zMVVDYU4xLy9WTE9L?=
 =?utf-8?B?NVByVUdGbzliRmN4UDFGd1Y1Smh5WnpFWHFCZDBuVzl3YVhFZ3NaaDE4ZzUv?=
 =?utf-8?B?N3VGVVlkNDREUCs4OWxpWUdWVEs5dDRIZ2FlL0lMMkhpYjBBRzVGT1ZFUTdu?=
 =?utf-8?B?MERLRTFLRCtRWC9ZZU5XY3JKNkF5Zk5JckN6bXRsaDhWdnVabFJ1MnFtTS9P?=
 =?utf-8?B?TFNub3BmN2VGa2Q5RWliVEhrWGJIUXFJZ3NKNGg5TGQrcmEyRjZhQ0xvMHd4?=
 =?utf-8?B?OEJPdjNmWWk5Sk1OallPMG0wazNQNW9TcmJEblZUTlNTRUhRSm8xd0EwVkhr?=
 =?utf-8?B?U3FMOGdmTFBGMnUzRXJHVzZGMFI1RTRFU0V2NU1TVElEd0VGd05GcGlkUVVr?=
 =?utf-8?B?VGxlMmZVM3M0UGpTVnJvc05xRGFJTFNFTVlNSVVJN1RreUErdFNpUlFwRC9k?=
 =?utf-8?B?VXFEcW9Zb0FCNmRkNjZ3TWExQ3dodHlGZ0lKRG1zb2haeUhBWmFmbkF5YnEv?=
 =?utf-8?B?bmVSYVVoRHc0dEdXMGNiVmZlTEY3SlF5QUZrbEtJamFDa3BsNy90VURUSXVO?=
 =?utf-8?B?YjhZTGR3cTZSZlVaSEhFTlNPSFU2cEZLUUhSTElrZzNXay9EZHdSTXpsOS9H?=
 =?utf-8?B?UkNQbzNZVm9JMEF0U0ZDNGJrLzJ2QytFSHBRZy9MM3NMUDVoS2hjc0duSG9z?=
 =?utf-8?B?VGtxWWJLUENWZEtubjIzK2llVTBnMHVqTmNuQlVoU0l2NnRFMVFYWnBzSjVy?=
 =?utf-8?B?WmNJdUdlSG1LSjJnUG5iY1V2TWpyVTZtQUlHNUJ5SXZGdi9yUitYZWNxbnF1?=
 =?utf-8?B?TVlvOExBUDRWNW1SMHRVYVp5LzJlUHRmR0V1T0UxVFFNT29MMXRNN0JlNVJG?=
 =?utf-8?B?VjhJbVp2ZGlBWThvNUcvNlJsOXBYcE9SWExEc2VmbWJwVnUwaGpDWkNqNFlB?=
 =?utf-8?Q?lCAGgjPoYQd6acpzBQHhBbsys?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cb91c5a-eddc-4d06-c200-08dd3eaffc67
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7955.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 08:52:53.4301 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vzAree7IwKJxEZi41hnUnr4wJTn6NPwr3RikCEA4sGHCg7oW+a+IARZDR6XHyTWc3ayWFloDtqxrSbikDSqK7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8437
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

Hi Vinay

On 1/27/2025 1:44 PM, Vinay Belgaumkar wrote:
> Functions to parse event ID and GT bit shift for PMU events.
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   lib/igt_perf.c | 68 ++++++++++++++++++++++++++++++++++++++++++++++++++
>   lib/igt_perf.h |  2 ++
>   2 files changed, 70 insertions(+)
> 
> diff --git a/lib/igt_perf.c b/lib/igt_perf.c
> index 3866c6d77..e333744bb 100644
> --- a/lib/igt_perf.c
> +++ b/lib/igt_perf.c
> @@ -92,6 +92,74 @@ const char *xe_perf_device(int xe, char *buf, int buflen)
>   	return buf;
>   }
>   
> +/**
> + * perf_xe_event_format_gt: Returns the start position of GT id in the event format
> + * @device: Device string in driver:pci format
> + * Returns: Start bit for GT id
> + *
> + */
> +int perf_xe_event_format_gt(const char *device)
Can remove xe prefix if we have name as parameter
> +{
> +	char buf[150];
%s/150/NAME_MAX
> +	ssize_t ret;
> +	int fd, start, end;
> +
> +	snprintf(buf, sizeof(buf),
> +		 "/sys/bus/event_source/devices/%s/format/gt",
> +		 device);
Can we pass the name as the parameter for this function?
Can be re-used for all formats
> +
> +	fd = open(buf, O_RDONLY);
> +	if (fd < 0)
> +		return -EINVAL;
> +
> +	ret = read(fd, buf, sizeof(buf) - 1);
> +	close(fd);
> +	if (ret < 1)
> +		return ret;
> +
> +	buf[ret] = '\0';
> +	ret = sscanf(buf, "config:%d-%d", &start, &end);
> +	if (ret != 2)
> +		return -EINVAL;
> +
> +	return start;
> +}
> +
> +/**
> + * perf_xe_event_config:
> + * @device: Device string in driver:pci format
> + * @event: The event name
> + * @config: Pointer to the config
> + * Returns: 0 for success, negative value on error
> + */
> +int perf_xe_event_config(const char *device, const char *event, uint64_t *config)
xe prefix can be removed here
> +{
> +	char buf[150];
> +	ssize_t ret;
> +	int fd;
> +
> +	snprintf(buf, sizeof(buf),
> +		 "/sys/bus/event_source/devices/%s/events/%s",
> +		 device,
> +		 event);
> +
> +	fd = open(buf, O_RDONLY);
> +	if (fd < 0)
> +		return -EINVAL;
> +
> +	ret = read(fd, buf, sizeof(buf) - 1);
> +	close(fd);
> +	if (ret < 1)
> +		return ret;
> +
> +	buf[ret] = '\0';
> +	ret = sscanf(buf, "config=0x%lx", config);
%s/config/event

Thanks
Riana
> +	if (ret != 1)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
>   uint64_t xe_perf_type_id(int xe)
>   {
>   	char buf[80];
> diff --git a/lib/igt_perf.h b/lib/igt_perf.h
> index 3d9ba2917..f51c44bb2 100644
> --- a/lib/igt_perf.h
> +++ b/lib/igt_perf.h
> @@ -71,5 +71,7 @@ int perf_i915_open(int i915, uint64_t config);
>   int perf_i915_open_group(int i915, uint64_t config, int group);
>   
>   int perf_xe_open(int xe, uint64_t config);
> +int perf_xe_event_config(const char *device, const char *event, uint64_t *config);
> +int perf_xe_event_format_gt(const char *device);
>   
>   #endif /* I915_PERF_H */

