Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJFRMJTH1GlbxQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 11:00:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 251263ABA9E
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 11:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0E2F10E37A;
	Tue,  7 Apr 2026 09:00:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ePhkC21D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3891510E37E;
 Tue,  7 Apr 2026 09:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775552400; x=1807088400;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZocP3f8KbF0YNr2LcPg4HdHqIMAakVtuSPvtrjkMf4o=;
 b=ePhkC21DUOnsCRdCYfjTqfD1D914I88lllHdVwRbc9gQTyerOZ8E56FI
 Y/VyGkhFd+gPmCFP+aN536wvSiBEq2QcJdB5hOtBDeLTD45KWDhwSeTkn
 cWG2SMkW0ivt3YTE1HGTWw23cZL3XpJraK3ypBf55sA/Tcnw3OYn/17kN
 MJknn/H+3LnuGlh9AWIcALMz0NCTFhY+FkjpCkPWlDm2Zc5Om2xrAej2o
 DwblPvW0tj6MoBnIJHXWsrTqk+bhUH2JShi7dxe99J/9nGysWnpluQiqg
 QdYgEsBRrV+rehEruaO+OYFN4YEBQd3N63WWQoDg3G4jSTuxSIL9vcNiP g==;
X-CSE-ConnectionGUID: wt62bmO/Qp2jukhvCHDGxg==
X-CSE-MsgGUID: z6r5eTnMSIW27H2LIF+zHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="93901510"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="93901510"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 02:00:00 -0700
X-CSE-ConnectionGUID: p3oxlTHPQbyaQJRI51eaXw==
X-CSE-MsgGUID: ebbIPaCJS1GFODe6SmZclw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="227118484"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 02:00:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 01:59:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 01:59:59 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.10) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 01:59:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KZbmOo50IvAVdbDmOEshjcArmZ7tXKs6DT7iWiYG6ZOeQHuHZHzh9EvA2kOyJTCzBnZ12ykQF3xeeY9m8bi9iEe+Uh1iSwQFpyFco15qO6vZSiVLoIX0/O4JxXQGWiWujt4tN1WaeofJHQRrwVdTH+/6B4bNZHPq3TmwHAKky1wAOaoILNaIBi+DI/Fbmw1AWbYv0icz7pyhYqGDvqA/pc+Lc+ZMB7rfk7rf6V5W07uSgPjiM8y7Gi5Tk85X76P/eyhi8tn7o+gwlVJW4Qupet3QRJT8r+eOsZ0P26yosiKnkAJtqpM0PibhfTJlqaE8ma9WhSTKTmUoigilHaTfgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hSHUMdbQQyw2DqTjB9lhUJzxjnH/z5BffgwX7nH9x7E=;
 b=Bx7ZhMcj+VKMb392chLUhDDPEDXRJupCUpLBGnF3zGqZk7tKdIF0tmsDm7Ca9m6GWQZ2hAyVYA2bauZAfb/yTWYmcflac0pSZcFIzrzemp+fImfKUyfFIBCxdk2/D9sae4db3OVQpnpJ/pZKVyogefwEJCs+5i5w8bIAADqFLDQZwfUqV86uyW2olnbVevSp8xmpSeuZApJ7m49YZhXYJ5pmqcRGGYtXJRTQTD85u/Ooymh9e0ittVF4xo+7U7yGMqdw1j2e8f0/2GPFf+wb7/9jnxFDBc/QT0k4xnYz42i01y2vBhxLdSMc1JtBOABAeBa+EuJtQ1YcDee6Ya9jyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH7PR11MB8454.namprd11.prod.outlook.com (2603:10b6:510:30c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 7 Apr
 2026 08:59:57 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9769.016; Tue, 7 Apr 2026
 08:59:57 +0000
Message-ID: <41346fec-0935-4be3-8069-924aded3e650@intel.com>
Date: Tue, 7 Apr 2026 14:29:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/12] drm/i915/cmtg: add is_enable_allowed() for cmtg
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>
References: <20260313153300.3530695-1-animesh.manna@intel.com>
 <20260313153300.3530695-2-animesh.manna@intel.com>
 <DM4PR11MB636036CB7922982F875E3C91F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB636036CB7922982F875E3C91F45DA@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0020.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::8) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH7PR11MB8454:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b85e557-d48c-4b2f-bd22-08de94840aae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: rbAClAHpNJNMrePunui8+U+6Y+pqEN0eK6hND60Sm85UQtfke5iHOrqEwGFM7uxTsKxk28rz/8rfKWPcISoUUotpxTbRK3yzHqP4CwybHLfYihi34jnJzlQvVjsoBzgVu97hyHhqewNiHf3oyX5NF2rdtf5xERQajcPy9YEW6EH8AYvidy9VXdBZViVQw3aIZ3eGAIIa/J8hTSNfxs9KgTv6mAdD7q59CrIjPqgAJKKIFr7Ma56RQgMQzyfM6GhzrPd767/XOpm3R7M7b1sYVTa7OI77g7AHJJB06pJZ5j60NFms9z+qWEUJdFwxCcJf9Brb/B52mJcng/lVFgAyy2/zmONnSfOnlbqRD8y34oHLMfzJ/STgoZK6rXwSCJImlQI9448lZSm3ZSmyegcJhwEQFX0fE+6biYWOHZIFAmWliQRcHfJxBTmHrcwMbjNN4DPkngKlPsc8L91FTu3Hi5rhWmko+a02C6F2PDBpXBbS0h43bdNZwTYDm9rKlhzXyUYUQ7tZ3GwaQKq0Q8YWrsnT5enmpDLs7nBvvyhpGXFSi1ZsuBCZCo8hZRh0Oa9aEk0zXuFm7zWczc6MTlx60qtBxSiZdOGciqHO4e2iS4UxgzoepGWFhf+NPEvSAooNxBOvOfQF6bUGHteuvtfrkpVcIMxs08rqWqtjtGvbV1d0JICQ+ZN5IHtny/KNQf/mwp0VE7hvP/3KpmsBKHYESUgAwzEdE2g2QpJZGe9DaB4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlIzL2tndC96djNwV2pxOUxDQ1E0Z1Y4UW9uWUhxdEpmOC9iRDlHUzlCeTFM?=
 =?utf-8?B?Z3krakJoWWkwemtZckZRQVRpUkJ6QkR6aXV5SENuOWxwRlA5aXdXVit1MVBJ?=
 =?utf-8?B?SUhoRXlqbmhBSUdvTGZpRW10VWE1dGZFWHVyMEZZS0dlSHJDaW8wemZEb29M?=
 =?utf-8?B?dVJWYitjMTlUb2ZheG96RmlUOG5hdnRrRmVEbXBuOVZPbzBFTDJXUTBucERW?=
 =?utf-8?B?bHZGZ24xTWFwM0lmN2FRYjFyUThsR0FnYUVIb0gxZ1Y1M3Q3N0hleWE3dXNp?=
 =?utf-8?B?NUxQS2JTejdwSTg1QzZxcWhLdVg1S05sNDhTTitjOFhDTGRhcmo2T0ZsakdH?=
 =?utf-8?B?ZUV6YmVJUlFpMEZYNXdmUlNVSmpHMjNOZXVhRUlmUGZycm5pT09sVDd0dzB4?=
 =?utf-8?B?eno1TUhmbHlCODJvaklVTmpVR3VZUndqV0Zwc1E0bzZFZldHcFQvMmhEUDZ5?=
 =?utf-8?B?MzZBSXMydnRibEdycHBZcGZyVklHV3RISjUya3ZQY2FHcE5LSlVnd1ltRXZX?=
 =?utf-8?B?T0ZhUHk1S1lPQkl5TVpLeTBENUtuR3ZMckd2SVYxUHlEYzJKb0tXdjZkZHN2?=
 =?utf-8?B?RWZHTzZQV2c0Sm1ucHpOSHZwa2dBY0Eva05kWU04OUd2aFB4dDdNMmp0TERh?=
 =?utf-8?B?U1YxN09kaTBtVUs4c0phd3ZGKzh2UW9pV3pzLzJsTWt4dDM0c1ozUW1HSHpW?=
 =?utf-8?B?TjQxbVgxMFRqWldFUWdNWGxyWEtraytVN0o4YlFLendzMUVqQk9aUkpXQTRS?=
 =?utf-8?B?SXdtWEg3aVZINjhienhWT2JpWFZHbXBrMldUNWdCRFJYS0dZVmp1L2c2T1ZY?=
 =?utf-8?B?dkU0NVByazFTa0kydG5zWVBsWVpFREVlaEtLMC9mQTM2dTNXR3o1NkI0WVY4?=
 =?utf-8?B?UTQwWHZaWDhaRDd0OC9NYnJqNFFzVTFZQ29sQitkV2RzY2VYNUpWUnlBcENT?=
 =?utf-8?B?cGtOWDZzbU9HVnQ2LzV6ems0Nkd2Vi9LUy9YS1ZXZ2RLMTdQdDdZc2FsdFRU?=
 =?utf-8?B?d3I2dHAvMVhnb2E0KzcvQnpDbEVkWlVFTEZ6enlNVjNDUXZRcnhIMWd0eHlw?=
 =?utf-8?B?SnRIUHd6d0FyZ0JqU3I4bFp1eUl2TkdzNnhCOTZSSVRLK3ZKVmNJMHl5K0lW?=
 =?utf-8?B?NElFRXcyT0RURHdRZW5JQlhYQkFjclRmdlo0ZnQwRnZxY3RVdHhNMTFRZGU4?=
 =?utf-8?B?OWtETWp6dUxVOWJoRTVKODZJYkJuQysrSThTQUtNUHhVU0pncXhobUNhWWRt?=
 =?utf-8?B?S3hqVTB5Z3VGQWkxYmN6cnI1cEpqNmRSQ3RxUmx2UHNSMlZFUUQ0ang0TGRE?=
 =?utf-8?B?OTB1bEt3WTR3VFExNUx3bGhKNUFwYzRLdndKakFldDBrS1RKSFkzS3R5cGth?=
 =?utf-8?B?VXhtTWdWaWdZZ2pVakdxdkUyYlEzenpwTVhHakVPTGZJS1o3c3FmaWVGYjBT?=
 =?utf-8?B?OWRXZkhHM0xuQkJma1JHazFRYzFsMktPSk9GVjlaaGFsd2M3aFUrUW8xTjQw?=
 =?utf-8?B?UEk5Z1E3MFFGYTRqZXRoc0VEWW1WTEFNM3MwUk5MMjRCaHd2UkhMT2VDVDV5?=
 =?utf-8?B?ODdmVGdqOWQ3Sm1ZYWdjaGxVZUF4RGJpS2cvbklsTUxxMUN5YlQzZDNBajdW?=
 =?utf-8?B?YXBMc1FhTkVReUdnWXd5aC85VFNsdUM0Y25DaU5WcjNRdHo4b1RkWDg5dmhZ?=
 =?utf-8?B?WFB0bklxSXhGYklKby82TnNDVWVuNERJUHozSnNmSG8ya29MaUloMG5uMVQ5?=
 =?utf-8?B?M1BmaUhNdkFQMlhERXRCUE0yUDQ2OVlPZ2J5a0xqMEhJUS9zNjA4elJGbnBT?=
 =?utf-8?B?K2VadVRHNEw3RG9YQ2pVYXVjeWNQL3B5ckkweHgycHhrUEZXeXppUXdtVlZU?=
 =?utf-8?B?WklIei9OajJrSE1hV0lKc0oyUUxxck53OEFjYnlsSU5iU0I0dy9wL0hCZVZU?=
 =?utf-8?B?Rm1WdVhkck9tMThQblFLVzlLTldjQW1UcWdBWk9nVUFpTkY5UTBpMVFjOFFn?=
 =?utf-8?B?dkphWDdNMmNVWUlKckRIcHBEbGxMVCtEazJteXlROCthcVBDaVdoalVUTTNI?=
 =?utf-8?B?WXBqRWhoTXowYm1PMEhlVkxGYk5CUlVML3dINkwyUGY2ZVZuRENxSzFrN0w5?=
 =?utf-8?B?dlplbW9HUWZpUkhHRzZUTDJqcVRuZklJZXNOeUorTHpGRHBESzYzeUhHOWJY?=
 =?utf-8?B?bytrZWlqUnRBVjZENUZ6aHo2VjNxTnd5bTRqOHR3RnIvYytKTEhDSmgzZkZW?=
 =?utf-8?B?ZDNXUEhJTUZyOEZ5UGxGNTNmN0hWQXFjaFVQMWRNU01WMXdNWWEwandMZEYv?=
 =?utf-8?B?VThtNHh4R1RJTGcwRVZsMVN6Q3Y1c3g2MVVKbTNjV09EOFBOcW5tMmFBTjNI?=
 =?utf-8?Q?Pv2rl0E61KFrUDFa95so/kcAnR62y/k56T8B1a/KEPw61?=
X-MS-Exchange-AntiSpam-MessageData-1: fJhjQ/kW0Rvhqg==
X-Exchange-RoutingPolicyChecked: OTwgjhLVB66sPzB/2HhPNLrxBB4F5LluuG7f9/zCKZWlR4glaQhYkx+ZZ32eM2GrACJwPDbll2QszVQmvxxV+rg7D96s/CeB/izVFzcaAeT1n5Gx79U/g8LNnL/ydKsXAgnllcTE5TXzDt7AA/Brh9YOII/wVQGozMdwEzrLUStd36yvaJS/7Dapi7RksDmp3HIpfFiDRMBZbizf5ywwzLpg6PByC5MqsTcazL6FCy/fnkNDAZ+DeTiob2oqnk+JzJqDMHVhfUkMfIe/OAmTgrvumzKT4gvQwQRf0kV9QpCQH3QbIpP5YbX+pE+LMKibaB378+kxgxg7gfpnLC+x6g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b85e557-d48c-4b2f-bd22-08de94840aae
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2026 08:59:57.2845 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cwQpA7FhCsLY6BLGSIkeYkdW46y/qubWI9ufh7BUq5F4mVreOHgDgd3lYxOmPgNmLOb5w/RcP69WbnwLh0Qc/JskBYQ3vs70D6gGt64tTwNU1A6uvEsq3M9GEOXHT++h
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8454
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 251263ABA9E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 07-04-2026 00:18, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Manna, Animesh <animesh.manna@intel.com>
>> Sent: Friday, March 13, 2026 9:03 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>; Manna, Animesh
>> <animesh.manna@intel.com>
>> Subject: [PATCH v3 01/12] drm/i915/cmtg: add is_enable_allowed() for cmtg
> Nit: Name here in subject doesn't match the actual function. Better to use exact same name.
>
>> Introduce a flag for DC3co. CMTG will be enabled only with DC3co so add a
>> separate function is_allowed() for cmtg. DC3co flag will be enabled in a separate
>> patch.
>>
>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_cmtg.c          | 14 ++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_cmtg.h          |  2 ++
>>   .../gpu/drm/i915/display/intel_display_device.h    |  1 +
>>   drivers/gpu/drm/i915/display/intel_display_types.h |  4 ++++
>>   4 files changed, 21 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
>> b/drivers/gpu/drm/i915/display/intel_cmtg.c
>> index e1fdc6fe9762..024d753eca55 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
>> @@ -16,6 +16,7 @@
>>   #include "intel_display_device.h"
>>   #include "intel_display_power.h"
>>   #include "intel_display_regs.h"
>> +#include "intel_display_types.h"
>>
>>   /**
>>    * DOC: Common Primary Timing Generator (CMTG) @@ -185,3 +186,16 @@
>> void intel_cmtg_sanitize(struct intel_display *display)
>>
>>   	intel_cmtg_disable(display, &cmtg_config);  }
>> +
>> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state) {
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	if ((cpu_transcoder == TRANSCODER_A || cpu_transcoder ==
>> TRANSCODER_B) &&
>> +	    HAS_DC3CO(display) && intel_crtc_has_type(crtc_state,
>> INTEL_OUTPUT_EDP) &&
>> +	    crtc_state->dc3co.enable)
> Don't think we need both HAS_DC3CO and dc3co.enable here. Later should never be set if HAS_DC3CO
> not true.
>
>> +		return true;
>> +
>> +	return false;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
>> b/drivers/gpu/drm/i915/display/intel_cmtg.h
>> index ba62199adaa2..7692cc98cf87 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
>> @@ -7,7 +7,9 @@
>>   #define __INTEL_CMTG_H__
>>
>>   struct intel_display;
>> +struct intel_crtc_state;
>>
>>   void intel_cmtg_sanitize(struct intel_display *display);
>> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
>>
>>   #endif /* __INTEL_CMTG_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
>> b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index e84c190dcc4f..35e06fcf794d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -189,6 +189,7 @@ struct intel_display_platforms {
>>   #define HAS_LRR(__display)		(DISPLAY_VER(__display) >= 12)
>>   #define HAS_LSPCON(__display)		(IS_DISPLAY_VER(__display, 9,
>> 10))
>>   #define HAS_LT_PHY(__display)		((__display)->platform.novalake)
>> +#define HAS_DC3CO(__display)		((__display)->platform.novalake)
>>   #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p
>> || DISPLAY_VER(__display) >= 14)
>>   #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
>>   #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)-
>>> has_overlay)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index e189f8c39ccb..8a92ea4f1438 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1434,6 +1434,10 @@ struct intel_crtc_state {
>>
>>   	/* to track changes in plane color blocks */
>>   	bool plane_color_changed;
>> +
>> +	struct {
>> +		bool enable;
>> +	} dc3co;
>>   };

DC3CO shouldn’t be part of struct intel_crtc_state.
It’s a global display power feature, not per-CRTC state.
struct intel_atomic_state would be a more appropriate place to track this.

>>   enum intel_pipe_crc_source {
>> --
>> 2.29.0
