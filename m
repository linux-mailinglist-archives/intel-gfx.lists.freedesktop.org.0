Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 863B69B9093
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 12:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45BF010E9A7;
	Fri,  1 Nov 2024 11:47:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RH0ohe1R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0CF010E9AF
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 11:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730461663; x=1761997663;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TwMzMVQiKDKkQxXnOy9IA0EVTGQf5wKDV0eyOUoWdsA=;
 b=RH0ohe1Rv5nUyvYzYWAZ5EOe854I+oMCYwBUpOD6G62vM2zH84/iCHVa
 QefP5GGw03k5UgCmsgKFE7p+Itnscwpe3+a53QSTcbjB35FCxP5gcIN2l
 +ddY4OQuOH48rVRVBybVlmRFDhR/h4EiuH6k5gYBGgLhKpnAXujfKCtji
 7bVXfa+qqGGgJiCIEUPnfxY0zy6GUjJZ50oPlGkH2IlPPmcjy0dAlDh/0
 7uuB1E+lp9YzsuMBDOl5rhlCFbJWa7sVUlS11udfmrx+UatdomcTocFgv
 Xs52M1tSe7qyqVLeimfiecMTm4Idbx25afXYCHIHgsCZkdNa1VTpN7GiX Q==;
X-CSE-ConnectionGUID: Amdi7FDhQXetS59ByYspxA==
X-CSE-MsgGUID: rDUNDxlTRLyx4Ct6DPClEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="30337657"
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="30337657"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 04:47:42 -0700
X-CSE-ConnectionGUID: AoGmOU2MRzu2AXGz4SB+vg==
X-CSE-MsgGUID: 7NseIEznQ2++4r6bq/0zBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="86879728"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Nov 2024 04:47:42 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 1 Nov 2024 04:47:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 1 Nov 2024 04:47:41 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 1 Nov 2024 04:47:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eWGasz6fF9u/nY/DmLEXSz943nJvt0drw7cWtgEgwgu4ganlT+5rgGA04NBo5kAVl/fVADcnfeBTNaWKuTpAJU2Bc2el4ydUM6t7j0wm1lRdn40FfT7Oyxv7JSXBVSRBOwbpV36dVv3jc4CDw5A9jgzLRLc6NcpauTns+LzZL6px3oeWizLpVz98EMXPsD2Fvlb9LX30YlySgmDYUW+X6j7U2l9bASxLWgx3IKf92PvuSZI1VTkuRpzvQH65bZwAyuA1tHmZ3HXN2muk/bfN5oIRnFMAZRGyMLlTS1UIY1Eyx+Lb+aTgWLpbGClejp8f8M85ohusZ+s/QJEfbSnDQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TwMzMVQiKDKkQxXnOy9IA0EVTGQf5wKDV0eyOUoWdsA=;
 b=lvP5EZSmhbbtuKpWwp9+CI18+1VkWTd1i499V0hAQyopFQkI8uxDcfb/7S5EVKV35H5A0O2g9XUWIWPEGKRsV96H1S/0NOxjg2XWIoQ5fnhID2cx5UapCenI0Ixstrb5xREegmNS/ijPalKpXNvoC7Tn0OFHEY4duElScucmrQB8uj1ggHPCZ7hsl0WUQdZpaMxom9RKuWdrSmG/BWk0jpTb33naR8gqdNQ5/sOi4y5OBRbJUCjacrUdZXFFk8UAN6wXfI+XJJThJJ92bC7yngxrhlb1flKje+NL83vD7RWFoNHok3MHUfU0sqHYQAdLWEAfCtQ/sY6fNUVVco7Qfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.24; Fri, 1 Nov
 2024 11:47:39 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.027; Fri, 1 Nov 2024
 11:47:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Jadav, Raag" <raag.jadav@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v3 1/2] drm/i915/xe3lpd: Power request
 asserting/deasserting
Thread-Topic: [PATCH v3 1/2] drm/i915/xe3lpd: Power request
 asserting/deasserting
Thread-Index: AQHbK4rwFb3jKXhIhEOpDuXThCMgYbKg0SOAgAAaEyCAAAYXgIAABlOAgAFYNRA=
Date: Fri, 1 Nov 2024 11:47:39 +0000
Message-ID: <MW4PR11MB7054CAC819E588F984978C9EEF562@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241031114027.225217-1-mika.kahola@intel.com>
 <20241031114027.225217-2-mika.kahola@intel.com>
 <ZyN-K6kvCJdri7Lj@black.fi.intel.com>
 <MW4PR11MB70547BFB1F1942AAA3E94889EF552@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZyOZJ-hDIpT7G91_@black.fi.intel.com> <ZyOedbhfZlSldnaZ@black.fi.intel.com>
In-Reply-To: <ZyOedbhfZlSldnaZ@black.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA0PR11MB7354:EE_
x-ms-office365-filtering-correlation-id: eb210596-d41f-41b8-1a38-08dcfa6afccc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UVZ1Y0FocTVKZTNjcGxkTWFLZDNCQktWR1dRQ0UrbUhGbFRydkExTGpxYWpa?=
 =?utf-8?B?K0I1OC9WUm1UMzBna2llZ0FDQm0rMi8zSVZkNHpJaUtUS2dwQlZoaFBGUmhG?=
 =?utf-8?B?OEs2RG1XTTVhRTRveTIvOGM1VXBocTRnMmdtVlZqK01yZzNaclY3UXpxcmFo?=
 =?utf-8?B?Q01ZWjRDUzcyWGlzYUs2RmVDN0ZhclI2ZXBncnB4ZStJSDUyVUR0dzlHb3Fi?=
 =?utf-8?B?Z1dxeDNRYkZPTXdBaVk4VmtuRG5YQkszbStVZTNmcm5FN20zbG1GTTVyYU9s?=
 =?utf-8?B?dE9UMytGZkpkZk5uNEFabjcvSW9LTENRSjZ2eTMwWmtJQm1PY1kxUWVuYlFM?=
 =?utf-8?B?b3VvMk1KcDJvVGFLTGV6emhIYWlzT0c0SWQ1NWJBTXRCcnBreTVVTUhUSTlF?=
 =?utf-8?B?eDFzQ3pXV0oxZkoyVmJQeUNxUU5OemFnZXpFZko3S2tQYkJuUndPU0hQdVAr?=
 =?utf-8?B?ZitUVEFZN2l2UHYra3hMa1B6WWJhU2dqNGRlaWVkU3dTNlluRm5iT2dhVHVP?=
 =?utf-8?B?OUU0NXk3cE9hSitxREhtTzR1cElDbWNJNnJ1aWwrUUZJTlZJaXdPd3JMdmZT?=
 =?utf-8?B?WkIzQ05xOStXMlJKdUpnYzB2b3NjYi9BcTMzallpay9vK0d3bkdzSTJ2eFI5?=
 =?utf-8?B?QmRla3pLaXRHME85cTZRZElJeDZvVXJiR2pWZDVyK1YyOEs5Qjd1Z3p5R0or?=
 =?utf-8?B?UUlaQThzY2pWeHVpQy9yNnlpQlFUcW0rZVJDV3lGY2ZaM2tTcE12eHNFTm9n?=
 =?utf-8?B?V09VMzJaTlMvbm5kWklWNk0zenFuaVlqUUowbDZTdGtvT0pyTXlGOGtTRkJG?=
 =?utf-8?B?ci9Ud1RLUUNycmUwV0Z4WSsraUM5a09VRldhUXAxOWVQZUpTaFhUZm1tc1N5?=
 =?utf-8?B?Q3drall4TjJnRis1T0dvdzFSVmxQZDJxcS9FS1BpcnJJai8wREV1WEV5aDJh?=
 =?utf-8?B?NDlVbWN2dGNkYW04SkpxNXJQNEdtYkoweFZmenJCcTl4dEJ5cVdqZ0ljTkZP?=
 =?utf-8?B?MzBabFZkMGRPMUFiaCtEQnVMZjB3OGV4QkFoT3VFVFozdHV2WXZLaFhKVmgr?=
 =?utf-8?B?K2RrUDZNd0Juc1dVQk5hcFVOMnFnRmZJM3VXOHQxV2l3dWRRQW5tTUhTNVAw?=
 =?utf-8?B?RHJDM2hpSW1wdkxQdjFqWjV0c2UwUmxOMGl2RFdPWERkUkI4eDlJOFBIaWFC?=
 =?utf-8?B?NS9raW1xUG1jUXlmUzJJQ2NmMTNpY0RTS0hyQkFtWU5TZ1BydSt2TVQzVDNq?=
 =?utf-8?B?T1poZU1wN1pLZjhoZGEySDJKQ0g2NlZlR0trV295aE0yL1dpM1I4TVBBZEE4?=
 =?utf-8?B?SkhSb3hHd1pGcjMwUnhwS0NWOEQ5aUxILzJwRHpUSVN6QmlKQ3g1VVhsVFhm?=
 =?utf-8?B?dGJUb29lWHRZOFdFdEczeGU1ME9IeWo5aURGbUdtY21DVDRYcU91a045enFF?=
 =?utf-8?B?WXlpZjJHRGcyRU9iSWIzMkNaZmRhaXBWNXdKNlJJRk5XS2JpREx3VG9KZzZZ?=
 =?utf-8?B?dnNnYncvK1IvZHA1TFN2cHRwZk1Iczh5SytGN2hCeTNQZmdBNTZvOXpCeCtL?=
 =?utf-8?B?cG5xbzJjdmlPUmRKWUc5NzEzMmJBeWtQL1FlSjN1dFpQMjNtSCt5a20yWGcw?=
 =?utf-8?B?eHNMRlp4WEZtdjZqY1EwcS9yYVdDVDNMVEduUDNlaFB5c3ptaDlKY1dHaXYw?=
 =?utf-8?B?ZkZXeGxFSitzWEdIUGpjeU1QWEhxckc2eEdPdk81VTEwbzY5YVRRV1dCQVM0?=
 =?utf-8?B?d1VxcFd2bERnRGpTM0x3d1Z1SktsM1BOOHBqdmdsVzh5TWNBbzR2K3B0U2N1?=
 =?utf-8?Q?Ku7auD13THYgKY34RYJsSypdBKccrQEB9dwzk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L1VTMGYzSkxBdkdPWVB0aSsxOEk4azJibG52b0t1MkNYNTFHUlVZVTZTWkJF?=
 =?utf-8?B?ZklUZm91Z1JpNDRLU1k2aHh1RiswRi9BcWtFMjUrL0JNb1VQMDI3NHBCRnRY?=
 =?utf-8?B?MnBrT0h5OEtHMHFGRlY4YVBWYXE0bXM3a2Nnd0Z1RDJCOEhkUEhQcW9rODhk?=
 =?utf-8?B?anFkaTBBeFFMUWJKTFBqdmFONDBhMHJnY0NnT3VyNGlDSHRkZE9kU1RrV1lx?=
 =?utf-8?B?UHVRT2x6TDhzQnpqdkxLQ0ZaaWJkRkFrQVlYWXFqalFmVXJqNkt1Mks5bFRT?=
 =?utf-8?B?QkkzTmx4M2VxbnY4c0dnZzAxQ1VjdzlUaGkrT1hMUHVrV1NEbnl6NWpJVXZ0?=
 =?utf-8?B?VWhmRXJwODhJWFpXSkdiVUVlZk9ERW9OOWE3Y2UvcWZCd1NzOTd6UUloY3p5?=
 =?utf-8?B?WllSM3B3Uytzd2s2SGZQZE5aRTdoOGVtd2VpUG9DVERmbk5WVis4VFpmZWJl?=
 =?utf-8?B?NGpvcXZwdUE2WmR3WE9SOFhYNVFkb3VPM0d2YXVQMHU4Z00zdC8zUklhT0dK?=
 =?utf-8?B?WnQ1Z29rdlEvWWkwMGpWUnc1QkNxd25jVFJJRFhHOGtrcUk1Y2krUm9pVVZ2?=
 =?utf-8?B?Zm1ZTCt1OW4rZHh0bjVaSEcvSzZmMDRzK255MGoxaTNseDU4M2IyQ0ZHODZG?=
 =?utf-8?B?NGhEMkNtMWFyV2VyazZmMjJHWWVrU1oyaWNqY0tSQnpHWlVZa1RTcVkzbmdn?=
 =?utf-8?B?Sk9QT1RlekRqek1Vazc3SUhDdlkzd0JZeklFMTZXNzlXS2xUcHpxemxXNDBT?=
 =?utf-8?B?QS9BUCtWSXNJV0ZHMWpoOWZLNWtndDA0bmdIaGYwTXlwb283YnRaZnFyNzVG?=
 =?utf-8?B?T0wvRU4xa0wyUDJLUW9aZWIvaS9QWEoweFJhQVVJU0dicGRPMDAwOWtRb0hE?=
 =?utf-8?B?N3B5TG4rWHNvWXNka3NIOStBSlg5TEp5TjZaWUR4aTNvTnBvRFJEaVdMTk5Q?=
 =?utf-8?B?WitJblI3YjVJdDNibkJNRzBXNHVVcDkvZ09VL2ZxRHlMMFRxVVdNU3p2WTVE?=
 =?utf-8?B?ZW5RVjJJN05IcFAyV21QS3dqVWpZdlN0N0NsUnBBY3VGTk4rY3JMNm5VVHFH?=
 =?utf-8?B?aWNyQ3ZHZklMWkQzSEhZcnZEN3RxNkpQWWJ1WmtKMHFGQWlUdHZySHBBZmk3?=
 =?utf-8?B?b1ZDdVhaOW5xdkdRYjhtbHduSS9XSzVUWmlFY09IYitEa2ZRU01QRDRHUDNJ?=
 =?utf-8?B?UTdoL1ZER2o5K1QwR2JVTVFhWVZ6UU0wbWRVaUNUbjZ2akdsS0t5NG5hRGlo?=
 =?utf-8?B?VTZCcUlkdVhDZnY2ZTgzd3JhTTVEVDgvNE95SWZ3Z2NldS9kNGFnL1pvdXps?=
 =?utf-8?B?ZytQd2RLMWcvQlo1ZFlvSWFhWHJjZzhrM21CYXZzOW1tU3Q2aldBaVBOWHlS?=
 =?utf-8?B?ZFYrTG1mOGh0dGU0dU9rSEIvRkwzSGJXd3ZMaVZyTXRkejRpV1Q5K1lNRU8w?=
 =?utf-8?B?RXpkcGI2MUdOY1BoaFpCMUU2ZzNJZTRURnZydGt2QzJRYUwyRHM3dDBQcmJq?=
 =?utf-8?B?Wng0UXNTMmRWZWlrZWxKK0dlZHRvNGY0dnpGNmJBQU5OMnhWU29FT3NPMUhk?=
 =?utf-8?B?L210STJWcVo2N0xvNk5sMVBHVGsxS2NFMnk0Rm90enBySmFKM2FHZ01HdXBV?=
 =?utf-8?B?eFc2MG5yLzBCdm9wSk5MRkhJYlI1RzZsYnQweWdCNzI3ZUllMHFJTktXOGJr?=
 =?utf-8?B?YTdIc0VyLzN4TXI2MTEyczhlR2VGQWFUckRNVTNLUktTQ3pMMW5uVFJVbC9u?=
 =?utf-8?B?UHZsTUtNT1UxZlVjRStSbWFHR1AzWUo5SHRVMm9QOVlnY2lka3VnQjhkL3Nk?=
 =?utf-8?B?eXZKWHJVbEQrRXg1YldaZHlBbmx3ZUQ2TFRiR3hybHZaeWNWNEZDZ0xucHNx?=
 =?utf-8?B?ZmlPSXRGRjZpMWdLU0NSZm5URTlwNmF1ZlFHdDV4SVBEa29BQ2k3UHhwUXJE?=
 =?utf-8?B?RS8xVmhmS09CbC9kck1maGx3NHEvRHRQazFmNndxRHJ2U1d1YjJjckRTZndE?=
 =?utf-8?B?TUVLKyt1ZHdBUmJwNGNnSDllOXNkYUx0VVNtOFRITVhDdkNzVjFsOHdlNEN0?=
 =?utf-8?B?UEJtOXJEaEVXVURleDNYZkVsZjZRbytQL05rbUN6VEhZTmR4L0NwMG0zZEdm?=
 =?utf-8?Q?YXwNlWQAj/f3MTAibLjn3Yq7w?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb210596-d41f-41b8-1a38-08dcfa6afccc
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2024 11:47:39.4302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZcIO1ngEwmgthGZf8Zv+rvRetaBKeFbioo4nYgKcWh8Rr7yG0pCaj/aW7t9VUIdfrUcfzSKd71mr2vWUO3VqBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYWRhdiwgUmFhZyA8cmFhZy5q
YWRhdkBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAzMSBPY3RvYmVyIDIwMjQgMTcuMTMN
Cj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FA
aW50ZWwuY29tPjsNCj4gamFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tDQo+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggdjMgMS8yXSBkcm0vaTkxNS94ZTNscGQ6IFBvd2VyIHJlcXVlc3QNCj4gYXNzZXJ0
aW5nL2RlYXNzZXJ0aW5nDQo+IA0KPiBPbiBUaHUsIE9jdCAzMSwgMjAyNCBhdCAwNDo1MDoyMFBN
ICswMjAwLCBSYWFnIEphZGF2IHdyb3RlOg0KPiA+IE9uIFRodSwgT2N0IDMxLCAyMDI0IGF0IDA3
OjU5OjE2UE0gKzA1MzAsIEthaG9sYSwgTWlrYSB3cm90ZToNCj4gPg0KPiA+IC4uLg0KPiA+DQo+
ID4gPiA+ID4gK3N0YXRpYyB2b2lkIHdhXzE0MDIwOTA4NTkwKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5LA0KPiA+ID4gPiA+ICsJCQkgICBib29sIGVuYWJsZSkNCj4gPiA+ID4NCj4gPiA+
ID4gQ2FuIGJlIG9uZSBsaW5lPw0KPiA+ID4NCj4gPiA+IENvdWxkIGJlLiBUaGlzIHNob3VsZCBm
aXQgd2l0aGluIGV4cGVjdGVkIGxpbmUgbGVuZ3RoLg0KPiA+DQo+ID4gV2l0aCB0aGF0LA0KPiA+
DQo+ID4gUmV2aWV3ZWQtYnk6IFJhYWcgSmFkYXYgPHJhYWcuamFkYXZAaW50ZWwuY29tPg0KPiAN
Cj4gQnR3LCB0aGlzIGxvb2tzIGxpa2UgYSB2NCB3aXRoIG1pc3NpbmcgY2hhbmdlbG9ncy4NCj4g
U28gbWFrZSBzdXJlIHRvIHVwZGF0ZSBpdCB0b28uDQoNClJpZ2h0LiBJIGZvcmdvdCB0byBhZGQg
dGhhdC4gSSB3aWxsIHVwZGF0ZSB0aGUgY2hhbmdlcyBhbmQgbWF5YmUgc2VuZCB0byBvbmNlIGFn
YWluIHRvIHRoZSBtYWlsaW5nIGxpc3Qgc28gQ0kgY2FuIHJ1biBpdCBvbmNlIG1vcmUuDQoNCj4g
DQo+IFJhYWcNCg==
