Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 830C4925603
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 10:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41FEF10E143;
	Wed,  3 Jul 2024 08:59:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HBDe7YJe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD6410E10E
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 08:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719997165; x=1751533165;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o2JUsrgY6OTlNlz4OLgtlZr7oXkyTdMmfi4Qk6i5BIE=;
 b=HBDe7YJeiUBnSenjtMCtEXF7fG7h2fHhdzHvT+ZEoaSjFhC57l+Z2p/J
 WBAssZBSoXmdXZJwOYjLLfhoFJ4b4H/gBJDDUq2lDMiRUA1zUmRUcqTI1
 Qnj21eU+UVJfvRV6dB821CuuxD/nCs4xk7nACZ7OFqPGuPTuxaks6G7YU
 V6/hh8sBx2Gt7pZmuuHTYkhNKMr8l7Pfm/Z8R1LNn2OAb0wlFmyJm/8L/
 IcNGPytYmlb6Dvc12AFQYg1k2vTAWGQMXhk1jZxUc50pa4QNp0oXZUTqj
 E38rI/C4UUAADE8Rlqby9g/Uw+jFP73AfCpDJdGaKafQCYUqieC8lyXQS Q==;
X-CSE-ConnectionGUID: dOQQlQ6SQjqqSMJJ+9E3uw==
X-CSE-MsgGUID: /aYsyyVoScGBCD/J2fG7Jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="28609819"
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="28609819"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 01:59:25 -0700
X-CSE-ConnectionGUID: yJCoLNDOSUidVkSOq3ByEw==
X-CSE-MsgGUID: 3KE/GuS9Ql2hEGa5fvPI3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="50799803"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jul 2024 01:59:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 3 Jul 2024 01:59:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 3 Jul 2024 01:59:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 3 Jul 2024 01:59:24 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 3 Jul 2024 01:59:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WEbDC2eEFdjnNpnYYTXtdTTXGJqH0Px3mZIh4cSIGddPO93u+lUWgUZJPt9qV070f2d38fYmxGHXxuOdFIgZad1njnM39nxJdX98WQzHCUhsM/l/Ak7ZlA0xSLfWbDwq/LLGSFCa5M58kAvgbHo5J9cZDpwp/FJOVc7LX2ZSY21LSwWM//FVkatJWd8FNSmDAmgJKgDlFxHchphVDKmekfVNtRMFdD4r5aQGmjliyXGZzIUJWPi8KGqE2FCHFYTq1qjlhzHlJD41ZKwZyk6t/amTTv9Cw8FJg8yB9jSYaBp44KjE21fEMdbF0vZ9xuczzBtCwMWg9Vz78gZ+7OeSsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bxJnQN9jXteC5N9BEEdPtEINn48YC0AGfiyRi/GbI3c=;
 b=aLX/jzxVTBa5Xz2roY2uJf7gaaIkARWdqZR0ACOyWn9gqbhekrrfPHJYcY2vQG3Vqu4rZAB31uvYCxebNjsORMxcFXRdtBuzZYlkQEsKBHthZGZixxchSALjCL7w5EpwD/qAjRqUISM2eKjiZFWzUhl9X/JM9FsWE70SeGBkyzQKp/jcjjb0errHq88DyeSLs8A9I65HslXzIZrpxwdTo7DlZxv5Bg+3Q03qRaqQQwCRkzjwJ1A25PLZ5gnzPSHheO8OEjXUw+MDI6AbWz/NiXF1a+yaEIpdVBS4OUx4VBYMfrq5FWlW6YY/xKnzOagrddqcTWmGV5IJFVh01k/Hrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.25; Wed, 3 Jul
 2024 08:59:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7719.036; Wed, 3 Jul 2024
 08:59:21 +0000
Message-ID: <76ca61df-8cfd-4b7b-b418-f5c2ed92b61b@intel.com>
Date: Wed, 3 Jul 2024 14:29:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/i915: Compute config and mode valid changes for
 ultrajoiner
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <jani.saarinen@intel.com>, <ville.syrjala@linux.intel.com>
References: <20240626081842.10614-1-stanislav.lisovskiy@intel.com>
 <20240626081842.10614-4-stanislav.lisovskiy@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240626081842.10614-4-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0022.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::34) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5183:EE_
X-MS-Office365-Filtering-Correlation-Id: a63977df-67f5-495d-1065-08dc9b3e6d61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cEVlc2xqZ3dDMU1zeVl0emdRTTN4MFdjaXpESXluQVlWUy8rVFM3SjE4dTFz?=
 =?utf-8?B?SGhyT3BXNzZpV01TNFVLS3VwckhRSjNvYnJXeFlpeFBLalVxMzFiRDk4N0JT?=
 =?utf-8?B?YlNTY3AwcVlMRWpRcUkwSDBjK1ZpWWx2cm9VVDhsUEJ6OXdHeXliV2RtQmNQ?=
 =?utf-8?B?QTVvblVkdUJpd2Q5TkxCaHdHNWdsKzJIZHVtRHBiYzNSaCtuNGdHL1NrNHhV?=
 =?utf-8?B?cXNtOEhlZUZMR002cnJUOTMvNGQ0SUVjWk5XS1UvQ2tOT2RZOWY3YTNZOFhi?=
 =?utf-8?B?aTlsbGxPRHRqNGRoaktBa1A3TkdIbDJIYStuWWUzMW1kWmp2ajJIdEFOaXVR?=
 =?utf-8?B?cmFFZXlvVXN5UUhCWUE4R1VBM0lONEZKN3ZJVVRCZ1lUdkRDRmlWMFZBdElw?=
 =?utf-8?B?Smc4aXM3Rld1R0tiVEtQV01sVTZRbXpqU2ZydUtHNnhDNHRleUtvR2h0Rm8y?=
 =?utf-8?B?c0w5V0JoTW4weTNtOXF2RGkyRTY0NHgrZ203MGVIbkxGZ0wwbFNRK2xFTXE5?=
 =?utf-8?B?L2MrTFhyOXN5ZEczRmFCSXp4RjRINU0wUjNpVzBJanZUTVpTbFJDK09SY2Nr?=
 =?utf-8?B?NjBjc2laOHVzb1lldWM2SEcvejh3ZUwrekVOZE44dE1GQ2NhUmxhcEt4UC9s?=
 =?utf-8?B?MUFIbkJvWTZDdi94alMzaGdIc2xZTkV6amNxZnlrT3dZQ20zMDA0b2E0VjhG?=
 =?utf-8?B?VmhNbElHNmVqbmFranc4ZEs4ODE2SkxSbERYdDVneHlnK1ZIczZKVXVPK1JE?=
 =?utf-8?B?YjlXRFRUWFl6aXQ3ZkpQanRQUE9RVHVhb1N4MEhRbTRHR0U2UTJWNjVCSjY4?=
 =?utf-8?B?UzgyWTk0YldGUU5HWlB2TG1CSmEzblBjQnhCQ0FhODRsQjgzWFFlK0R1ZXhs?=
 =?utf-8?B?S3VEZ3d3K2ovNHhzVC8yRXl2YzBWOGNIeEVvYWxVbkxUZGkzdkpsMTJHUXpu?=
 =?utf-8?B?b2VaOUdic05zenlicDhZUmVyMU1IcXk4M3ZTQ2h0cWJUVkhZWURKYVpRd3hv?=
 =?utf-8?B?S09YRjRjREU1b3dwY0M0MURaamViTiswVW9XK21xU3owM0wrZGNoeUdwdC9G?=
 =?utf-8?B?eEJtYi9GcG1CS2V3RTVMS2RWcFpzZnl6d3FQQ2tqeGhKS1pEWEYvbEFITEQ3?=
 =?utf-8?B?Sk0wdFNVZnlyU0x0OURCbEh5bVRxRzEvQ1lhS01YMVVRRzZpY1RDYVZFN0VM?=
 =?utf-8?B?ZkRuVjNibFFPcnI3RTJUNzNhRmhzaFRVNkVLUVc1d2hBNnhqWnI3U3FEd0dy?=
 =?utf-8?B?VnVITUJXd3FoSDJZV1NkR2JCZ3U1UHlxbkREMEd1WEcrZ0RqNEJkaVpVRmlK?=
 =?utf-8?B?WE1ibUgzSTg1cnhMRHlRS0VIajdyYzNHSFowdlV2TWZ1dkJVbklyQ25NNDNU?=
 =?utf-8?B?T2ZydlhDK3MxRWcrS2NyNTRPV3c3OGlqcjVTN2lnTzdUNjJScXB3NS9ZZDBH?=
 =?utf-8?B?MXEvZDNxcjJ4czBxTXJSaVYzWi8yOVNiMGdWUG5WajJNUkdYNFV2Ny9GUTNX?=
 =?utf-8?B?MGpIOEtWUDBUTDI4ZjJNZWFGUUJETllqV0UvWmJFT2V2SGsxY29EOUFDaWh0?=
 =?utf-8?B?aWxrUnRxeGFwOUJSN0RNTHB2Qi9rVGJBeGxRRTRTazN2aytYZXBvRlJKZXVo?=
 =?utf-8?B?N1NBRHhKTDJUNXo4THkxRnBmZ3M4ODRJRUppVyswWENWVVpwZW5RUVozVTEy?=
 =?utf-8?B?ZVREakc3bklncDg5RVhuMHJZQjBTZ1ZvelhkMjlPUllsM1N4QWdhWHp1Z21M?=
 =?utf-8?B?Ukh5YlpKUThZMVdCQU8waTVWY2ZSenQxSUJDSEVSeVBvYzZZazdLU25XYmky?=
 =?utf-8?B?eFNoVlljWFkrQ3dKNlhRQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0J2YzRqUlp3Y3JneDRjUDBHOHRuU3JXRWI0OHkvZzBnYkI5djlPbzF1bmtp?=
 =?utf-8?B?SzNxbml4eFk5bVhLMFZKbCtML29UYXRjem9EUFFid2pRUXl2Wk41N213ODRz?=
 =?utf-8?B?VTF3UTY4QjdCeXA4aHpWSXFqZ1c0U05xd1B0alpYdHpMM1JJMXZRV2Y4Q3N6?=
 =?utf-8?B?RnRkTGY2bHFjRUpKY1BYbTkwYnMzNHZ3Y0ZYZnBXa2tGdHNieCtPRWVkL0Nx?=
 =?utf-8?B?Z2xmeFp0L2J4aUhMSmhMVEp4M3kvTkU0SFAzVFZ3b3lueE9rd3NxRXMzU0Vo?=
 =?utf-8?B?TVZEUThaelh0RkJjYm1XVy8vWStjVVZ6cGVlT3FMWU8rNjZBcHNtUEdkMXR6?=
 =?utf-8?B?UnpVblhYTktickRJdXM2YW1MYjJEdHBCVHhPYW9DK3M2Z1R3Z3FiUmRFSFF2?=
 =?utf-8?B?bjJ1TWpla2M2SWtIenV1V2FuRnVPSmxRQ2V6ditoajFIYk1teUwvaEgrRVJq?=
 =?utf-8?B?UnFGMFlmZDdGM1l5NWY2K28waWxiRzZJejNhQ0ZuaGwrNllZTVJXek9jRVN4?=
 =?utf-8?B?UFdXOG5sOHhTVmt4ajVmZ1NONytuaEVwWnE3dGgrbVdWcGlKc3YzSytYek9U?=
 =?utf-8?B?RmMvQlJuZ1IvVlQ1UHhhZk4yZ3VrQ214MVdZZjM3UEZvZnRKd0V3UFc0Rlli?=
 =?utf-8?B?YVlDWmFyUGt6VlNiUHZvYkk0Y0RBdDcwa1N5dlVFT2NGOHpGN3FZeDMvNXh2?=
 =?utf-8?B?aW1aeVdwVWVibU93YXFPRmJpWTJIVXUyK1ArMFhtbndvRjdjVXVqd0tmNDRx?=
 =?utf-8?B?YU9ZbUwvNWQ2NEg2MjlUK0pwOERIK1FITnY1ZlhwcVZKT1BNT21kQTYzU3VO?=
 =?utf-8?B?S256TFZ2U1E0Z0t2aHo1STFRK3dnd1ViaDBINXgvb1RpN0FYRjY2QkNBajJF?=
 =?utf-8?B?N3ZrS0VNZzNNUlBDVFpxYzhmS3JhVndTL3IxZng4WHlYdGw4Z1FhbU9PLzZC?=
 =?utf-8?B?cVhGbHc1aEJFbWxTY3Zsa3RmY0FBckJySUdESTg3RVVWc09iV1hkL2VaOER6?=
 =?utf-8?B?dEN1YVRDRlZpbnJwbUJ0aFRoMDB5VytTd04yaXk1MUxJVlJtcC9RTy9OYng1?=
 =?utf-8?B?TlVOeVBxaDZZQnh2dU4zM0dxdFN1MS9XbXJPbEd2cERMVXhOT0VoaW9VTHB4?=
 =?utf-8?B?YnNBMmsxdndlV0Q4UWlLZElTd05ST0tzUm9meFdicHlnV0xKbmpML2N0RjJR?=
 =?utf-8?B?dzJxekw0U2xiU09SemdtN1ZYL3krZW9oNE1lVzNvaStQM0RVZ2RKU2dRb3Zr?=
 =?utf-8?B?TllIOXR2YkRzdVhPYzRGd3NmdXRxazZ1cjEyTVF0bUljT3Q1UjdRajg2bnlX?=
 =?utf-8?B?RHNVN0p0Rlk5d3lOZjZ2bTd5eC9ieTQzcUNHd2ZXdTJOZ1Jidm1TeUw4ZU5X?=
 =?utf-8?B?VTErUzFJaE1RTGlrak5nWVB3ajIyamxYYUs1Qmo1OG1tSEVPWEp6MG80dWJm?=
 =?utf-8?B?QWdPVTZSbGpZeVVBUUJ2eVVqcERURUlKeU82ZFhRRzI1aEJ4d3BRSW1DSFpD?=
 =?utf-8?B?VzNaT2VxQVJ0ckhZekwzUzhpU2toQ29STzNXaUVuNW9tWUc4dmVFVVU2dC9B?=
 =?utf-8?B?bHNyT3dNNjYra3BvLzNwbW4xNVkxbGYxTUtsNE82Vm5YWmRlQ2tWS0pNTXFt?=
 =?utf-8?B?R0ZoMzJETTRzRjZWUVovaEZ2d1VPRzhGdEQvMlNpUVJBZTdNSUxJTXRUVUx3?=
 =?utf-8?B?a2I5czZ6bG5ML2tKUEsrQnpJS3hXQkVLckFpSDg2RGJSa2FMMGllZ0VZZFFI?=
 =?utf-8?B?cE5QTlcwajdIUnVsOFROZ25JNjVOb1RuRW1KV3dJMG1BOStIMmsyYzc2aU8x?=
 =?utf-8?B?eXVMcFpTSm1iSXBmeThyTlpxWEhSdlZmWVJIRnRyOUVtNHJkVGNDdHAwb1VJ?=
 =?utf-8?B?ZDZidzBpS0VON1ZybDJQdG9ITmdQNlZ2NndQOENBQUhRanFTSFVSbm5PV1R5?=
 =?utf-8?B?UFhpR2Rhbk9kVDQrZnNleksveUVKRHhwM21PR0QzdTZrSEFxNXZjMS9ReVRH?=
 =?utf-8?B?YmNyLzIzZWhMRUwxenRTMDRGZEduNFZHWFhEcDZFUWd6eUczOXBVZVF0SDNv?=
 =?utf-8?B?cjNkSGxxOVRUSlNqZWRkOExzK1NCdFhQNFpWMWNDc2RQdUphWGtiUXFaTEtN?=
 =?utf-8?B?NEMxTkR4aURERFpyMVR5SS9HL3hrUmZzVUhZc0VQYkRtNU53SnM5NHVxZk4z?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a63977df-67f5-495d-1065-08dc9b3e6d61
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2024 08:59:21.6750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0kjPeJc4FpTOyMqNoc0j1R4GSSfmRaReQ+41bz6XyMDtE5jkdTA+V+51CWgod+oz5AQ0cMk9szUGn6rEX6NU+wnezqfUAJk2stFeIYqNnyw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
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


On 6/26/2024 1:48 PM, Stanislav Lisovskiy wrote:
> Implement required changes for mode validation and compute config,
> to support Ultrajoiner.
> This also includes required DSC changes and checks.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c |   5 +-
>   drivers/gpu/drm/i915/display/intel_display.h |   3 +-
>   drivers/gpu/drm/i915/display/intel_dp.c      | 117 ++++++++++++++-----
>   drivers/gpu/drm/i915/display/intel_dp.h      |  18 ++-
>   drivers/gpu/drm/i915/display/intel_dp_mst.c  |  35 +++---
>   drivers/gpu/drm/i915/display/intel_dsi.c     |   2 +-
>   drivers/gpu/drm/i915/display/intel_hdmi.c    |  14 ++-
>   drivers/gpu/drm/i915/display/intel_vdsc.c    |  25 +++-
>   8 files changed, 164 insertions(+), 55 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f702ead9b5f3..4c934f07ead7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8246,7 +8246,8 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
>   enum drm_mode_status
>   intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>   				const struct drm_display_mode *mode,
> -				bool joiner)
> +				bool bigjoiner,
> +				bool ultrajoiner)
>   {
>   	int plane_width_max, plane_height_max;
>   
> @@ -8263,7 +8264,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>   	 * too big for that.
>   	 */
>   	if (DISPLAY_VER(dev_priv) >= 11) {
> -		plane_width_max = 5120 << joiner;
> +		plane_width_max = (5120 << bigjoiner) << ultrajoiner;
>   		plane_height_max = 4320;
>   	} else {
>   		plane_width_max = 5120;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index bac81b7ab764..0a51f24af405 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -415,7 +415,8 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>   enum drm_mode_status
>   intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>   				const struct drm_display_mode *mode,
> -				bool joiner);
> +				bool bigjoiner,
> +				bool ultrajoiner);
>   enum drm_mode_status
>   intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
>   				const struct drm_display_mode *mode);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3903f6ead6e6..1ea1e89d8f45 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -760,33 +760,41 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>   static
>   u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>   				       u32 mode_clock, u32 mode_hdisplay,
> -				       bool bigjoiner)
> +				       bool bigjoiner, bool ultrajoiner)
>   {
>   	u32 max_bpp_small_joiner_ram;
> +	u32 max_bpp_joiner;
>   
>   	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
> -	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
> +	max_bpp_joiner = max_bpp_small_joiner_ram =
> +		small_joiner_ram_size_bits(i915) / mode_hdisplay;
>   
> -	if (bigjoiner) {
> -		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> -		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
> +	/* if ultra joiner is enabled, we have 2 bigjoiners enabled */
> +	if (bigjoiner || ultrajoiner) {
> +		int joiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> +		/* With joiner multiple dsc engines are used in parallel so PPC is 2 */
>   		int ppc = 2;
> -		u32 max_bpp_bigjoiner =
> -			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
> +		max_bpp_joiner =
> +			i915->display.cdclk.max_cdclk_freq * ppc * joiner_interface_bits /
>   			intel_dp_mode_to_fec_clock(mode_clock);
>   
>   		max_bpp_small_joiner_ram *= 2;
> +	}
>   
> -		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
> +	if (ultrajoiner) {
> +		/* both get multiplied by 2, because ram bits/ppc now doubled */
> +		max_bpp_small_joiner_ram *= 2;
> +		max_bpp_joiner *= 2;
>   	}
>   
> -	return max_bpp_small_joiner_ram;
> +	return min(max_bpp_small_joiner_ram, max_bpp_joiner);
>   }
>   
>   u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>   					u32 link_clock, u32 lane_count,
>   					u32 mode_clock, u32 mode_hdisplay,
>   					bool bigjoiner,
> +					bool ultrajoiner,
>   					enum intel_output_format output_format,
>   					u32 pipe_bpp,
>   					u32 timeslots)
> @@ -832,7 +840,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>   				intel_dp_mode_to_fec_clock(mode_clock));
>   
>   	joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, mode_clock,
> -							    mode_hdisplay, bigjoiner);
> +							    mode_hdisplay, bigjoiner, ultrajoiner);
>   	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
>   
>   	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel, pipe_bpp);
> @@ -842,7 +850,8 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>   
>   u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>   				int mode_clock, int mode_hdisplay,
> -				bool bigjoiner)
> +				bool bigjoiner,
> +				bool ultrajoiner)
>   {
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>   	u8 min_slice_count, i;
> @@ -876,7 +885,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>   
>   	/* Find the closest match to the valid slice count values */
>   	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
> -		u8 test_slice_count = valid_dsc_slicecount[i] << bigjoiner;
> +		u8 test_slice_count = (valid_dsc_slicecount[i] << bigjoiner) << ultrajoiner;
>   
>   		if (test_slice_count >
>   		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
> @@ -886,6 +895,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>   		if (bigjoiner && test_slice_count < 4)
>   			continue;
>   
> +		/* ultrajoiner needs 2 bigjoiners to be enabled */
> +		if (ultrajoiner && test_slice_count < 8)
> +			continue;
> +
>   		if (min_slice_count <= test_slice_count)
>   			return test_slice_count;
>   	}
> @@ -1162,9 +1175,9 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   	return MODE_OK;
>   }
>   
> -bool intel_dp_need_joiner(struct intel_dp *intel_dp,
> -			  struct intel_connector *connector,
> -			  int hdisplay, int clock)
> +bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> +			     struct intel_connector *connector,
> +			     int hdisplay, int clock)
>   {
>   	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>   
> @@ -1195,6 +1208,35 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>   	return true;
>   }
>   
> +static
> +bool intel_can_ultrajoiner(const struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +
> +	return IS_DGFX(i915) && DISPLAY_VER(i915) >= 14;
> +}
> +
> +bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock)
> +{
> +	const struct intel_encoder *encoder = &dp_to_dig_port(dp)->base;
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +
> +	if (!intel_can_ultrajoiner(encoder))
> +		return false;
> +
> +	return clock > (i915->display.cdclk.max_dotclk_freq * 2);
> +}
> +
> +bool intel_is_bigjoiner(const struct intel_crtc_state *pipe_config)
> +{
> +	return hweight8(pipe_config->joiner_pipes) == 2;
> +}
> +
> +bool intel_is_ultrajoiner(const struct intel_crtc_state *pipe_config)
> +{
> +	return hweight8(pipe_config->joiner_pipes) == 4;
> +}
> +
>   static enum drm_mode_status
>   intel_dp_mode_valid(struct drm_connector *_connector,
>   		    struct drm_display_mode *mode)
> @@ -1209,7 +1251,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   	u16 dsc_max_compressed_bpp = 0;
>   	u8 dsc_slice_count = 0;
>   	enum drm_mode_status status;
> -	bool dsc = false, joiner = false;
> +	bool dsc = false, bigjoiner = false, ultrajoiner = false;
>   
>   	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
>   	if (status != MODE_OK)
> @@ -1230,11 +1272,16 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   		target_clock = fixed_mode->clock;
>   	}
>   
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 mode->hdisplay, target_clock)) {
> -		joiner = true;
> +	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
> +		ultrajoiner = true;
> +		max_dotclk *= 4;
> +	}
> +	else if (intel_dp_need_bigjoiner(intel_dp, connector,
> +				    mode->hdisplay, target_clock)) {
> +		bigjoiner = true;
>   		max_dotclk *= 2;
>   	}
> +
>   	if (target_clock > max_dotclk)
>   		return MODE_CLOCK_HIGH;
>   
> @@ -1278,20 +1325,22 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   								    max_lanes,
>   								    target_clock,
>   								    mode->hdisplay,
> -								    joiner,
> +								    bigjoiner,
> +								    ultrajoiner,
>   								    output_format,
>   								    pipe_bpp, 64);
>   			dsc_slice_count =
>   				intel_dp_dsc_get_slice_count(connector,
>   							     target_clock,
>   							     mode->hdisplay,
> -							     joiner);
> +							     bigjoiner,
> +							     ultrajoiner);
>   		}
>   
>   		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>   	}
>   
> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
> +	if (intel_dp_joiner_needs_dsc(dev_priv, bigjoiner, ultrajoiner) && !dsc)
>   		return MODE_CLOCK_HIGH;
>   
>   	if (mode_rate > max_rate && !dsc)
> @@ -1301,7 +1350,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   	if (status != MODE_OK)
>   		return status;
>   
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner, ultrajoiner);
>   }
>   
>   bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
> @@ -2015,7 +2064,8 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>   
>   	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
>   								adjusted_mode->hdisplay,
> -								pipe_config->joiner_pipes);
> +								intel_is_bigjoiner(pipe_config),
> +								intel_is_ultrajoiner(pipe_config));
>   	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
>   	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
>   
> @@ -2249,7 +2299,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   			intel_dp_dsc_get_slice_count(connector,
>   						     adjusted_mode->crtc_clock,
>   						     adjusted_mode->crtc_hdisplay,
> -						     pipe_config->joiner_pipes);
> +						     intel_is_bigjoiner(pipe_config),
> +						     intel_is_ultrajoiner(pipe_config));
>   		if (!dsc_dp_slice_count) {
>   			drm_dbg_kms(&dev_priv->drm,
>   				    "Compressed Slice Count not supported\n");
> @@ -2399,14 +2450,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
>   	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
>   }
>   
> -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool bigjoiner, bool ultrajoiner)
>   {
>   	/*
>   	 * Pipe joiner needs compression up to display 12 due to bandwidth
>   	 * limitation. DG2 onwards pipe joiner can be enabled without
>   	 * compression.
> +	 * Ultrajoiner always needs compression.
>   	 */
> -	return DISPLAY_VER(i915) < 13 && use_joiner;
> +	return (DISPLAY_VER(i915) < 13 && bigjoiner) || ultrajoiner;
>   }
>   
>   static int
> @@ -2424,18 +2476,21 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>   	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>   	struct link_config_limits limits;
>   	bool dsc_needed, joiner_needs_dsc;
> +	bool bigjoiner = false, ultrajoiner = false;
>   	int ret = 0;
>   
>   	if (pipe_config->fec_enable &&
>   	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
>   		return -EINVAL;
>   
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_clock))
> +	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
> +		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
> +	else if (intel_dp_need_bigjoiner(intel_dp, connector,
> +					 adjusted_mode->crtc_hdisplay,
> +					 adjusted_mode->crtc_clock))
>   		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
>   
> -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
> +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, bigjoiner, ultrajoiner);
>   
>   	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
>   		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index a0f990a95ecc..6a3615757c95 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -122,7 +122,7 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
>   				 int bw_overhead);
>   int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
>   				int max_dprx_rate, int max_dprx_lanes);
> -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner);
> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_bigjoiner, bool use_ultrajoiner);
>   bool intel_dp_has_joiner(struct intel_dp *intel_dp);
>   bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
>   			    const struct drm_connector_state *conn_state);
> @@ -142,6 +142,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>   					u32 link_clock, u32 lane_count,
>   					u32 mode_clock, u32 mode_hdisplay,
>   					bool bigjoiner,
> +					bool ultrajoiner,
>   					enum intel_output_format output_format,
>   					u32 pipe_bpp,
>   					u32 timeslots);
> @@ -151,10 +152,17 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
>   					 int bpc);
>   u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>   				int mode_clock, int mode_hdisplay,
> -				bool bigjoiner);
> -bool intel_dp_need_joiner(struct intel_dp *intel_dp,
> -			  struct intel_connector *connector,
> -			  int hdisplay, int clock);
> +				bool bigjoiner, bool ultrajoiner);
> +bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> +			     struct intel_connector *connector,
> +			     int hdisplay, int clock);
> +bool intel_dp_need_ultrajoiner(struct intel_dp *intel_dp, int clock);
> +bool intel_is_bigjoiner(const struct intel_crtc_state *pipe_config);
> +bool intel_is_ultrajoiner(const struct intel_crtc_state *pipe_config);
> +bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_joiner_primary_master(const struct intel_crtc_state *crtc_state);
> +enum pipe intel_crtc_master_pipe(const struct intel_crtc_state *crtc_state);
>   
>   static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 27ce5c3f5951..13828c011d9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -105,7 +105,8 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
>   		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
>   							       adjusted_mode->clock,
>   							       adjusted_mode->hdisplay,
> -							       crtc_state->joiner_pipes);
> +							       intel_is_bigjoiner(crtc_state),
> +							       intel_is_ultrajoiner(crtc_state));
>   	}
>   
>   	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
> @@ -576,16 +577,19 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>   	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>   		return -EINVAL;
>   
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_clock))
> +	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
> +		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
> +	else if (intel_dp_need_bigjoiner(intel_dp, connector,
> +				    adjusted_mode->crtc_hdisplay,
> +				    adjusted_mode->crtc_clock))
>   		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
>   
>   	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>   	pipe_config->has_pch_encoder = false;
>   
> -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->joiner_pipes);
> +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, intel_is_bigjoiner(pipe_config),
> +						     intel_is_ultrajoiner(pipe_config));
>   
>   	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
>   		     !intel_dp_mst_compute_config_limits(intel_dp,
> @@ -1388,7 +1392,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>   	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
>   	int max_rate, mode_rate, max_lanes, max_link_clock;
>   	int ret;
> -	bool dsc = false, joiner = false;
> +	bool dsc = false, bigjoiner = false, ultrajoiner = false;
>   	u16 dsc_max_compressed_bpp = 0;
>   	u8 dsc_slice_count = 0;
>   	int target_clock = mode->clock;
> @@ -1431,9 +1435,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>   	 *   corresponding link capabilities of the sink) in case the
>   	 *   stream is uncompressed for it by the last branch device.
>   	 */
> -	if (intel_dp_need_joiner(intel_dp, intel_connector,
> -				 mode->hdisplay, target_clock)) {
> -		joiner = true;
> +	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
> +		ultrajoiner = true;
> +		max_dotclk *= 4;
> +	} else if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
> +					   mode->hdisplay, target_clock)) {
> +		bigjoiner = true;
>   		max_dotclk *= 2;
>   	}
>   
> @@ -1461,20 +1468,22 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>   								    max_lanes,
>   								    target_clock,
>   								    mode->hdisplay,
> -								    joiner,
> +								    bigjoiner,
> +								    ultrajoiner,
>   								    INTEL_OUTPUT_FORMAT_RGB,
>   								    pipe_bpp, 64);
>   			dsc_slice_count =
>   				intel_dp_dsc_get_slice_count(intel_connector,
>   							     target_clock,
>   							     mode->hdisplay,
> -							     joiner);
> +							     bigjoiner,
> +							     ultrajoiner);
>   		}
>   
>   		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>   	}
>   
> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc) {
> +	if (intel_dp_joiner_needs_dsc(dev_priv, bigjoiner, ultrajoiner) && !dsc) {
>   		*status = MODE_CLOCK_HIGH;
>   		return 0;
>   	}
> @@ -1484,7 +1493,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>   		return 0;
>   	}
>   
> -	*status = intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
> +	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner, ultrajoiner);
>   	return 0;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
> index bd5888ce4852..1a7e9a56fccd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -76,7 +76,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
>   	if (fixed_mode->clock > max_dotclk)
>   		return MODE_CLOCK_HIGH;
>   
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, false, false);
>   }
>   
>   struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 19498ee455fa..35be89050512 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2048,7 +2048,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>   			return status;
>   	}
>   
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, false, false);
>   }
>   
>   bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
> @@ -2341,6 +2341,18 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>   		return ret;
>   	}
>   
> +	if (adjusted_mode->crtc_clock > dev_priv->display.cdclk.max_dotclk_freq ||
> +	    pipe_config->joiner_pipes) {
> +		if (pipe_config->dsc.slice_count < 2) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "Cannot split stream to use 2 VDSC instances\n");
> +			return -EINVAL;
> +		}
> +
> +		pipe_config->dsc.dsc_split = true;
> +	}
> +

I think we can skip the HDMI part, since we are not supporting 
bigjoiner/dsc yet.

Regards,

Ankit


> +
>   	if (intel_hdmi_is_ycbcr420(pipe_config)) {
>   		ret = intel_panel_fitting(pipe_config, conn_state);
>   		if (ret)
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 11058bb37d5a..206b3e77e0d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -13,6 +13,7 @@
>   #include "intel_crtc.h"
>   #include "intel_de.h"
>   #include "intel_display_types.h"
> +#include "intel_dp.h"
>   #include "intel_dsi.h"
>   #include "intel_qp_tables.h"
>   #include "intel_vdsc.h"
> @@ -379,7 +380,9 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>   {
>   	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
>   
> -	if (crtc_state->joiner_pipes)
> +	if (intel_is_ultrajoiner(crtc_state))
> +		num_vdsc_instances *= 4;
> +	else if (intel_is_bigjoiner(crtc_state))
>   		num_vdsc_instances *= 2;
>   
>   	return num_vdsc_instances;
> @@ -770,6 +773,13 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>   	}
>   }
>   
> +static bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	return intel_is_ultrajoiner(crtc_state) && crtc->pipe != PIPE_D;
> +}
> +
>   void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -788,8 +798,21 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>   		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
>   		dss_ctl1_val |= JOINER_ENABLE;
>   	}
> +
>   	if (crtc_state->joiner_pipes) {
> +		/*
> +		 * This bit doesn't seem to follow master/slave logic or
> +		 * any other logic, so lets just add helper function to
> +		 * at least hide this hassle..
> +		 */
> +		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
> +			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
> +
> +		if (intel_crtc_is_ultrajoiner_primary(crtc_state))
> +			dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;;
> +
>   		dss_ctl1_val |= BIG_JOINER_ENABLE;
> +
>   		if (intel_crtc_is_bigjoiner_primary(crtc_state))
>   			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
>   	}
