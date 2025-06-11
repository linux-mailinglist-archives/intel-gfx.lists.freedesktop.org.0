Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C5EAD4D1F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 09:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D09E10E34D;
	Wed, 11 Jun 2025 07:39:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XasBs+oY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C6BD10E34D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jun 2025 07:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749627565; x=1781163565;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7q3GbK2ynWDqDQeKjlfdUWOkxPR+R4TpW/C+f1iZZLE=;
 b=XasBs+oYq+eV/Zq631dgQW4sLZYbX/427N68Rsi2DL7IwCq28MYYqJoV
 NfKjLcE6ultcQ7z0HR28YGrLF8a39Fvb5o340ZnUIe6kkf6c1k3aQpfyI
 /ngFgueHk9Oh8ObhezyXbjWktssKP3J/ecWLyfXg6W/UQJ6ojN+5qfMfr
 6IXnNXhP2hyV6AJ56vOE+AUaEA7GcmRXKyTONJhSulaobL6xSAjtdnYQw
 KN4Jwvh3yZ26iMbtv6zxC8ZpT7iFUZSNtCope6E/GWhUPJ68NYfF89Ddy
 LlJpQDXm8w6hN/dRsIju4PhMj/3kKunDZtIDIzSWq6mcQLQ8sPBii+Yih g==;
X-CSE-ConnectionGUID: c7qhZkUaTN63VzVw7mQ56g==
X-CSE-MsgGUID: 1owyoxrbQRqvYBOurIl4eA==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="55423808"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="55423808"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 00:39:24 -0700
X-CSE-ConnectionGUID: sB3rgFXxQxaZ9YOsWsvvTA==
X-CSE-MsgGUID: QLWflecDQ8e2rxzuXN2omA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="151888238"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 00:39:25 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 00:39:24 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 11 Jun 2025 00:39:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.84)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 00:39:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fw+UIZ0NE7xrEm7c1sZyJjugK2igyWMZi0XFsWrB0OA7zcLaX2MfpZpOPj/oQ7x4E7T9uu8kVk2JF1IWrcxndybCtEGkzXUlfJrA3JDNJWtW1N7rzeTmG1mD+r4cnI09v+ZUAeooAOWj2XDa73TrC9uYlN94LiVXk2vd7/ODDWfbhRUFlr6c/rY0npKRIjgTeQS2BOhSO6UAgISBtsg5gzDf3ym1IKtQ7ctXcOX0Z1o7fIjIVkZcDptYlHOHN5omZz9ByoHSoCYA48S6+0KI/voAPgRzyV5SibuuuNl3uZcIJi4VXBCwRMTE9UUDv+Kn4NQXcPdhqt2Aq+Cv3Vmo4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPYVWvBm5VBpyYTp/x7viy/GtMSbpLyOjXqM9gMCqeQ=;
 b=BnLi6G5RRKPUTM8o0w6nxUfi8I5a8bYiNkLuW3sapGkW6D2sc4TcSwBmPHDRWVS9nN0De8QSfYyq08kGC3weoa1dmWgM97Cce8BLBEoVjlg5VhXmNskYFbi9prEv5sAwQIiGT63lgGhlMgDv8YZmAzRZsOr0FgZx/A1zK6BC8zJn0CcJF5BhKCqmgq58iRqHk7XK9AweP7Nt+6R87wQlKclvCQ1/YLaCct2foqPxI2KWMSYa9urjIb2+Wje3xTwnTZYLKJSM4K9kihiPDtyXj0FJ/psyCr2IfjbtnBt09E8a/MaOJC/WjO4exghj2Ez7TP0kxhzPy7Ey/L908I3COA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB5200.namprd11.prod.outlook.com (2603:10b6:a03:2df::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Wed, 11 Jun
 2025 07:39:20 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%6]) with mapi id 15.20.8835.018; Wed, 11 Jun 2025
 07:39:20 +0000
Date: Wed, 11 Jun 2025 07:39:14 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>, 
 Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <hfu7gdo23at3xwmqjyii767xfxnu62eun5o7aelsqsd5dod5vv@auqyoavaerav>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n@rotnqdv2ori4>
 <DAIVAR1Z6FC9.3BFLJGCGDX1T3@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <DAIVAR1Z6FC9.3BFLJGCGDX1T3@intel.com>
X-ClientProxiedBy: WA2P291CA0047.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::16) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB5200:EE_
X-MS-Office365-Filtering-Correlation-Id: bb36841a-d3c4-4a23-85e6-08dda8bb140d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y3k4Y3UxWkpZMkRaeWxIbmZoQUZOWlpQb3JQWHpQYlR1YUExTDdTSnkyMXF6?=
 =?utf-8?B?ZGFLc0xYaGQ0NitDK1ZOYzV5elA2S0o5T09UR2FYVzF5SHV4UUVPR2FsaDdm?=
 =?utf-8?B?YVNuUm9rdExMcG5sYUZ5OXBlV0EyZVBjVXR6a3EzLzFQWTdpaDkzSGpRNlA3?=
 =?utf-8?B?REVub0IwNGhvdktTV1RhZGNGcHZ6R2djalhubGt2ZVFjS1g3dHIxRUgvUVhO?=
 =?utf-8?B?anpXaHNIOEpBMURka2dwc1NuK0FjNmJsejlHbUo0cEY3bjYxTmlhZlh5OEpP?=
 =?utf-8?B?Q1dmN3djdzByOUVkK2F2STljSW9zNVVCVG1WRDNTVTh2eklQZVBlVjByTFpw?=
 =?utf-8?B?L0tuY1EwOUZGQTBIL1dXbFlRN3pGNmJIdXBWQ3U1clFuN2UzSVRCa3k1V0cv?=
 =?utf-8?B?Umh1TUdrQVZXeUVKOVJYbUpWVTVBWXNOVTZ4eDZ5dHJqU3ZlQ3ArTzV2cThL?=
 =?utf-8?B?NE1xWERsbG45SGszNXAxb213czNlMWJsZE5nQVNDUlpBNmhOSDFlV0JLT2xs?=
 =?utf-8?B?L0o5ZWZqRy91eXI4TVVMVThvc1lkcFBZVFUxcGkwOWQvT2xNd1M0TGxrVm5F?=
 =?utf-8?B?U0l1MW1KaDQvUFB5MW50NmlpRC9xTkNUM2xHbnFwcUxCbWhvSVJpTE1ZSk5t?=
 =?utf-8?B?K1MrdHlqRUtsaUJUbHQ0TldCNnRBUUcreFlqT2s1b2dsR0lYQi8rc2pLeGtN?=
 =?utf-8?B?L0FET2ZCZVRMaUhOMU9SU0drSUhSNHhsWFA3N0xPQXBFS2ZmcjdCRmgxNVZP?=
 =?utf-8?B?bFdUYS9zR3Nkb1B5ZnBkWTFwQ1J6c2h3a1A2TFdnYzJDUzI2VUhDZ0VSZzRt?=
 =?utf-8?B?ZXdhSFhPSEtRdUVGaEQwa01OdUNBTlBILzNoRm1SOGdod25nemlNSFJ3L1g4?=
 =?utf-8?B?MnNTdWVlMEVCRDYzU2RvaWlKWnpvVVc0MEpqQjBVNUVSUHdSN2FhNDFKWFNB?=
 =?utf-8?B?dm5YVC9QVEVGV3Z2b0Yyd2ZqYmhsSHRSeENHM0VYN2xyOUNHaXZxOFlWL3Zo?=
 =?utf-8?B?ZnpWWExrdHJJam5iMS9KVktQVHNNUXpwTUV0RzFIVGMzREdTUGJyZlJ5L0R3?=
 =?utf-8?B?M095Ri9EZGhXajlwZEErNHVwTW1iaDl1eXoxR3VqYjQxVVNRRkNWUjVsTnFR?=
 =?utf-8?B?bWdMOFV2WmZEaDdBU1NvdlNmNG1kWGFGOVNEMXlscTVBQmxybGdHamZBd2cx?=
 =?utf-8?B?NEM2WnlSZml1NVM3d2k2NXdzSmlmNUNmRk5CcmRtUGZ6K2E0TnptYkZPWVdO?=
 =?utf-8?B?elNrRFgvUEY1Tm1HYjNvc3VITzNjd3JOdDkvaUlDTW1mSE9DTlNUZE9HZnJV?=
 =?utf-8?B?cElWM1JRWXc2L2ptWUJnR3BGYnVnc2V4cGFyVE5aazFNenRlWGRpaEpSWXFP?=
 =?utf-8?B?cGNkKzA1d3lwa2F3dlFXTk45WStjb2VWbmpYcGV3dWczdVFIL2xnQXhlaVFu?=
 =?utf-8?B?V0trMXdyd2lEdGhiVTNJUFZaTGFERXRUZkRWaU5TMnVJWGdxamw2V0dJV0g2?=
 =?utf-8?B?YU90Rys1dEFvQXpRKyt4Q0hoQkxla3dqc09RbUFxdzRnVGp0alFWN3Z3cE83?=
 =?utf-8?B?d2h5SURyZ28zWFJhb0gyN01kTVVQOWQ4QlRmQ05nbCt0blJEMVlrMS9Vejgr?=
 =?utf-8?B?ZmpVSXhoVmpqanNCVkNza0VWWWdjVk51bzVEMzVnMkoyRjdQSVBGMllnT0Zn?=
 =?utf-8?B?MXpBb3lSU2t6RjA4R0hydjM0U2lwQVRSWGNFbTV4djJvb0hlN0VHMGxxOURk?=
 =?utf-8?B?cTdRMWNEanI5OTZncURPMzRiZHlqbFZTYWg2ODNyTlErRUdjaFEvY0ZaSS9w?=
 =?utf-8?B?dFdJbW1CVlZOVEtHZWhLVXdyUHR0cEpLUnhZRGgrQ0xWcDQ5RkVaOVBiSkxI?=
 =?utf-8?B?Qi94Z1N1cDBIZzRRcWVuTTJhMnNibEZvNlFYcVUvYXE0WDVmdFlOTUd0aE5L?=
 =?utf-8?B?SVZNZFduOVhrV2N6SHdNM0ZMUWtScTZKR2ZPR3g4NzlEbDRoOWgrY2J4TkJl?=
 =?utf-8?B?SGJqWGFIc0hnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SFdHNzRGTGc2a3ZpMTB6M0VhWHVKQXBsempkdU5uOWVHTTVOdGJDU1FhZjhk?=
 =?utf-8?B?OFNGMWp4MjlkSmwrcHZSZmNmTGVJVnZJaXhjM3JwQXc2bERpbGRYN1ZiSHFq?=
 =?utf-8?B?aHZOMEFQYnNlTWtGcXN0TEJ6WmtrVmFZMTZGN1QwcXVFMmdaMlRBdkZaZVly?=
 =?utf-8?B?Slkvbk5aL243RUVsVk5pYUZHZ1FNVExNWjM1TXZSYWU1emtRRFlzelk0b3Ju?=
 =?utf-8?B?bWxWL2ptS1ZHN25QY1lFUlk4VHdTWDRya0h4aHA2cGNkOTAxNFhCT0VTQUF5?=
 =?utf-8?B?WGtwdHhXZmhVTGRWaDBlbE1PZEttTTJaam1CZGxtNnJiMDIyL0RqUmZHeXhD?=
 =?utf-8?B?RHRFQVUwV2RiK3BtSWIrbXBNSnM2Qk05MW1ONHNsRzFHODg2YnJkQTh6eHBI?=
 =?utf-8?B?Y1R3dE0vdHRpb2NPZGJRcE0vTEpKeTUwc3R5bGIxNEVaTFJkYUdOKzM2VWY2?=
 =?utf-8?B?NXpWRzc1N2V0cEdIdHU1NnRCclVKRzhUOWRLbnRuWG05aEZ1d1FFRXJnSDh0?=
 =?utf-8?B?WnJEVVBkQ1ZFek5iYi91MmltY2tQOGlJMWtyZmF4NGhOemFIem50TDd6aHBQ?=
 =?utf-8?B?VEV5aktpei9iaW9rb2diSE40MXFremd3blV1L0xtWHpYUXdFZVBHYnRhVDRR?=
 =?utf-8?B?MzFyMVRnSFltN2QxdHo1V2NUSGQ1ZURmOFBxUlhISUcvbkN2aG1vQnRMd2J2?=
 =?utf-8?B?RDE0YzhGWHcrbWthZVF5bHVFNklydEVaYjFkR3RkTkdlQ2U1a2lNcU5mT0xS?=
 =?utf-8?B?T2NBNmx0QlFoNGx1dlg1ZVUraHIyMzZFUE9XaDhnUTNTUk1CU0pydVJUeWhJ?=
 =?utf-8?B?Tk1HMGljK0ZzamV6Q3VickJoZ0NqTVhNZkk0dGdETEp6Ym1TSHJZcEFHL0J2?=
 =?utf-8?B?QVQ3YThqUDhvcVBTb3RVbE8yRVBZYUFOcHJzc0NGdUladURNa25QcXlubFNj?=
 =?utf-8?B?SHJIbzdOc281cW5mOHlBUEE5dExuQ3F4TjMxU1ZqdzRLSDh0RkxhSk5raUhQ?=
 =?utf-8?B?UnJyZzVoUTllYWNkdVRsbEF5VWR1dlNaMEVuOTRTUFRkYythZm80MVpHV2hu?=
 =?utf-8?B?eTFSSXJEMml6OGFkR0VscDFSZDRKRE5EeWVWZWhjSzRIMjN4SzJYVHlSZ0dv?=
 =?utf-8?B?bVptVWZwZkphandPNkE0NEJnektzTHlpSXdvRkNNd01DV2lYRDRTOTEza3p4?=
 =?utf-8?B?aDVYclJGV1BaNDB5aXNUWnNMVGtRdHpsQU5pblM1WThUMGhTbWVDTHpUbWl5?=
 =?utf-8?B?b3U5Q3NNMXlDUVNrNktVeFMzS3IySHhTLzE4UlFtMlZVT2dFdUhjTVZabkJ4?=
 =?utf-8?B?MzJFVFVRREtqR3Z2dnZ3ZGQzbWVOdlhoOEtFUHFLT0JwUTYrZEJKb0J5TGw3?=
 =?utf-8?B?ZVNEWTZIbDVwV0xsTWZVRHcrR20xZHlZaUpVWXBmM2FjWnRZTTJSaEFhLzIx?=
 =?utf-8?B?YTBjaU1Pb2U0UHcxNVZ4YzU3NjFXV2trT3VXRURtbTJCUGphWUU0K2htQWt6?=
 =?utf-8?B?MFdzOHpjdWJzalRJd1ZsTGQxVVdMV1dudnBMckI1T1pxL0g3aVJmbFo5cE82?=
 =?utf-8?B?MXRBWUhVdTZNSWtyV1IwTnN2YUxtRTlFRzVKMXh3cGxzbVZCazNycEFTYkJi?=
 =?utf-8?B?LzdUVDBoVFBOWjNnMnp4bTZZRFpYTnVPdmFEbDAvandMUUxVRm5tejJYWGFK?=
 =?utf-8?B?Smp5R0hSOEg0bHdhMGgwcUFvcjNzblhacnJNUU5scHpSNnIyTksvMjhGbVR1?=
 =?utf-8?B?algraEVsZktmb21GQ2lVcDZqUjIwSi9PZjRhbkN3Uk1kalJWajRUNWRMYXp0?=
 =?utf-8?B?N1pia2crbDN3Q0VhKzYvdy9hVDdpOExtT1NWc3EvRGNOb0ZIdDFsRE5iZEo1?=
 =?utf-8?B?NGRtdk4yRzd6SEZhdlA3NVE4VnQwYXJRMWN5QnVlRTc0TjAveEZ6Z1JiQlJQ?=
 =?utf-8?B?SE9IcFlzNlp6blZWdUs5MEJRT2F5QWE5ZXF5bkJJTHUvZFcyQ29RbzZDamNt?=
 =?utf-8?B?ZUc3V3lkTjlsVkpPeHFueFJhdGt3WnFaTFJsWjlhQzUvT1FtTEFibzdDNVNP?=
 =?utf-8?B?NGFORk4rcGUzMmwwc0ExbG1iRTdPN3k3N1cwd3cwcCtwRHRVQUpEQmlSUjgy?=
 =?utf-8?B?bEV6RTBGUFVoRFpFWFNLckdsclUwWkcwVEJUVDMrN0drbUw5aHNjaEpqUFFo?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb36841a-d3c4-4a23-85e6-08dda8bb140d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2025 07:39:20.7109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mg6RVrJ6mKYVimlJ3tCAN/ToPkDhmNEEO5vqFFoOfQBXAl6mayA9eFT6LgFCB/n7JjNERw2phl+D+NfQA3gT4OrySK+w5U2FWAb+C6Ndoi8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5200
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

Hi Sebastian,

[...]
> >  	if (err) {
> > -		addr = err;
> > -		goto out_file;
> > +		fput(*file);
> I'll try to avoid calling fput() here and instead handle it where the
> file is created. This will simplify tracking the file's lifecycle.
>
Yup, you are right, I should do that instead.

Best Regards,
Krzysztof
