Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD148C64E27
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 16:33:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76CD010E3D6;
	Mon, 17 Nov 2025 15:33:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FQfPTv22";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 499F910E3D6;
 Mon, 17 Nov 2025 15:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763393601; x=1794929601;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=SVN5QcJd5vSBiODFM0WYKdr5D6keFJGrTvuMn4GAxFY=;
 b=FQfPTv22zOjvjTp7RpOC00R0QnVtRT5pOaiyy2HK0HtV2pmvandJAyEL
 uGKW5pu2ERmjXFgo8PmtyFxZPhsxL7lkQdqBS5y2VM+QmlrJqyzbV0Lhh
 BRr2/aok3dE8zuroYCvsdUGovWNG/iyGjw5Nj8J92/W5SEmI5+WhiZTUa
 mBKbfG4fyLMg9r6Y5LoNO5cQV+RxlKy4EuOj3CafJMz7Tj6ORukxOEhMJ
 TwWQOMYokAkUm9v4PRj/X9nRS4+SHnBSbZF7904PQvTfIXm/WMlHRjXy6
 2Cl+EwblvyWNiBpRxmJSzAf/juzocdKltjLqEQa180fOrgVtowWKZKI69 g==;
X-CSE-ConnectionGUID: ds4gxFYgSnyd/xjfJwQ/5Q==
X-CSE-MsgGUID: 93yx1tKbRC+xvz90gAqTlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65329245"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="65329245"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:33:12 -0800
X-CSE-ConnectionGUID: WQIbYU/5R/aU2XfJYCDAEw==
X-CSE-MsgGUID: ZOTtIXdMQwip0n4prX7PUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="190640144"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:33:12 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 07:33:11 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 07:33:11 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.13) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 07:33:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XL4MYvC3h26AmQCAAtLo6hoEH1VPhpqd7KulmfAHxGCnSVf/apw8EhaS9mK5DXrXUjIufXKe+xq5D+wf9st3xwMnVSJmdHs4BzN8r4/AXAaxK/zQ4pue28vWvURzijI6xRsQKZVaTZtIjw/ukyhOZxPgu1j++bhDWu3FBLG6awcqGHmnMsUo0wLrGB2ciEPKnU8/2AmRSdyO/y60k/1bva/jDsxrYJ/a9kxidLr1XlM6uDGrUVsm/5zCD3d2q9jF4/sSIAMB0m2ULMUBtsP3Oh/xbRfp3yVVbThMhXSbyI6W+UZOopJ1dftKj9zWXUN7J1XmSTeeLETd769DG+XVMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L8SFIhAfSoveyslZ9Co5xyX4RDRMgQjhkkx5BXwoHf4=;
 b=WJmuSkm9/zxeFEpL1rmynUcsieCA5fDA5y9c5PA9152M23WY/fvYnNYuIOyEJLzZwTJPLTD0Irhi+r/tQPJNMxvtvGfCx8ky5YVEf19P7NebCtdlkgtPGvFMHDYPePUSDJuAu3UyY8rTUfazYGuNJW0EwyyDlxCbO+Pbuydr/Fbjevxup9bTDdaxlg/BRElpGB5q5lxhwxE27MYLVl+rIrlCw+CI8Ha6+eicIhlQB63Y1Pdyht2Tsyj/f6arVJaEDzlifgrdsd+xc1t9KAGabCYvsQR11abdswv+4hlGv+rY7ykldpEML4t9MPq7yYGpab4/xfvSMvqA2NshqMnB/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7661.namprd11.prod.outlook.com (2603:10b6:510:27b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.20; Mon, 17 Nov
 2025 15:33:06 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9320.019; Mon, 17 Nov 2025
 15:33:06 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aRfL-CWPYR6gC6F6@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-7-ab3367f65f15@intel.com>
 <aRTJq2h7ic7EcpL6@ideak-desk>
 <176314958906.3698.11640605946760436324@intel.com>
 <aRfL-CWPYR6gC6F6@ideak-desk>
Subject: Re: [PATCH v4 07/11] drm/i915/xe3p_lpd: Extend Type-C flow for static
 DDI allocation
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Imre Deak <imre.deak@intel.com>
Date: Mon, 17 Nov 2025 12:33:02 -0300
Message-ID: <176339358223.5989.12199179619494954075@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0203.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7661:EE_
X-MS-Office365-Filtering-Correlation-Id: b42d9c02-c576-4c5c-fe2e-08de25ee9aab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VlEvZmNrMzNzd2xQTG5ETTFlMzdVLzFFQW9jcUZodm9CWldDdXVaK3dkVWRK?=
 =?utf-8?B?UXN5T2tGMzgvZkFXc1MrNlBHQ1NPdS83eW5FRDBKOThFK0h5Y2lFYjk1TFEr?=
 =?utf-8?B?UDM0eC92MWpXTWg3MktWTExlNEo3alBqTy9McjFqdWQ0czA0MnpudTl1U2xN?=
 =?utf-8?B?b3N0Y2xQcFA0dldHM2dCeGx5UTVkbkxnT0dYZy84VjU3a2phZWZ6ekpDY0hD?=
 =?utf-8?B?Y1Vsd3RBalFldmVtUk1pWTJ6dXoxNW1pMXcrVFo2VnljdzdwNE12eVhjd25t?=
 =?utf-8?B?YWV3d2JXcGdtRTdsUFdybFkvM0h1UzllRWpZbTRLK1J3cWdRbW9hUkZzQ1Mr?=
 =?utf-8?B?bnJWTEFhem9oYm4vTnFFRUQ4QzVLdDhqY3Mvd1ZpNk9TZDJrK3Y4QVNMWGYy?=
 =?utf-8?B?cTBkTGxMb3p0TjJiNDkyWHBMQWREelFjeHRXYWFkaCtKL1ZDRzZTb3Y0aXl2?=
 =?utf-8?B?YVVDRWVLKzZ3b3Q3UktYSzIzZmhzMmdHZ2hocEJjV1MwaGl6MEtZakkzVXJm?=
 =?utf-8?B?aWVmVUx4czJ5Wk1TVTgzZWl2a3ZFSVBrQ2R3VkZpVDlDaXhxS1ZFN0o2Nnkz?=
 =?utf-8?B?UU16cXhxdisvZG5PbkliWWhlNDlwYkZ0QU56NTVMMXV0a2JpRXU1anhGUXgv?=
 =?utf-8?B?SVBFeW5FZGZkenc0RXpsaHVNRUEzMll1aHQ1aUI2QnB3MjdvampwZmxMWTQv?=
 =?utf-8?B?ZkZUK0dETlJZbUFHdFJDSXdlNm5KVVNuN0F3aEJvL1ZKTDZlYS9lVEtmZWpL?=
 =?utf-8?B?S1V1WWpzUmRKN3ErZkJIUHR0TXhTNGdRUXA2VUF4czd5eUFHRzZ2Ni80dnhi?=
 =?utf-8?B?Y25tMjZ6SHprQitoQk45K2xza1NrdDJacldQeFlCWVprSllXcXpHaDUzSWxy?=
 =?utf-8?B?azZjdmh6N0kvRjgrWXdoTlhMU2M5K1c3aXJOUkhuVmtTYmt0bmZzRFA5RXhI?=
 =?utf-8?B?bldZQkwzZWJvaU16SkV3WHBLRVViMVVuTy9PQ0pkTVpjKzZvNUtZQ0c2dlNw?=
 =?utf-8?B?MDNmejhqZTk3RHNQeGVqdzl6aUM5b0dWUkJOUnZCT3lSME93eXNYZUFQQTZn?=
 =?utf-8?B?QW4rK0J0OGQ0TEtzWnRmbFo3SlZaTlh4dEhUdlZ4UUVjbUs0WkFXQzI4VXZZ?=
 =?utf-8?B?UndsbWNQS2tjQ1ZoT0hVNmVGVTV6VThiZFhFa2c1ckF3M2xqVG5meWR5cWxK?=
 =?utf-8?B?OEx0c09IaE9ybk00ckdMV0t1MjdxTXNTOFllbFVnL05hTFQvWUxMeTBZZm0z?=
 =?utf-8?B?eGZNYW9KSXYrb1drb3pwZkJoMmhKNHJRL2c3a2t3SVhGQVZLMkczckF0NFpw?=
 =?utf-8?B?aExXcEkyRndhQktnck8rZW5QeVFMNTlGRi9zWmlianVHZjQybUs5ZUc3RmhS?=
 =?utf-8?B?VC90QWFXZXFBTlpZWnlScGJDcC9kQ0hYRTdqL1BNYk81RWNwNklkdWUxK1dv?=
 =?utf-8?B?RXV5TU52ZFhDaVphYzlqbTQ3d0JLWkN3U0xFNGRJcnlrMDJlRkRNZzZYeDEx?=
 =?utf-8?B?WW9hUzlVNmVJRm94cnRzZlArYnVnaXVOTDAyaU1PbjJ3cjYzYytnNG0zTS8y?=
 =?utf-8?B?UURhbk9seHN4S3oyUTJzYnJNU05MWGdpUkNPYng2NzJIOWRrcnZkMktiSEpo?=
 =?utf-8?B?Ry94a2E5TUYxZ05WRjJVbGpDclpWOENjRnE0UkZqMG9QMmdjK1ZLbEpWME1h?=
 =?utf-8?B?MXJKWFVQS085SlZEMHR2cGh1WnJXUlVXbnNVbXo1em51V3hzRnVWSXJ0Zk54?=
 =?utf-8?B?bkpJL04xc3BTc0lsYUhQemtCSVYzNTF2WUdPWDQwSXlPRjkzMEZlbDh4amR3?=
 =?utf-8?B?eHYzRGZWcXI2cUNKOENGbElLNXNqQ0hraVN6emM3UTFkeUorb2NoRkZqQnFG?=
 =?utf-8?B?V2srbkNEcEdWbkhCa0xwLzdjR1NWYzZLZjJVVkxnK01GaVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WS8zNVV1dWlsQmxRMEQ1cHVpMEpYVGg4aW0rQ2VVYzgrN3BXbXRZbUwyY09J?=
 =?utf-8?B?Q2NjTGc0dmRLb0V6VVAzUVE3NHNMbTdyd04xWlI4TGI3aEVEK2N3TFFpbWdN?=
 =?utf-8?B?bUFPZ1RpSXZ0aFV2K2gzc2xWR3E3bUYwNGQ4VzNsZGcwVU1WT0FlTDAxaTBi?=
 =?utf-8?B?ZjJoZkk5N241ZjF5Vk12ZkJvc1p4VG1Jclp4LzQ0TDFYYUI1TkFGZVA2Qy9j?=
 =?utf-8?B?Y1VHRUJmd3gyZDNscHVtYmN6bVRPQWo3UUdrTVo5My83QnIvN1c4OVpCcEFm?=
 =?utf-8?B?cjNUQTVnYVpPZlRydlY5Rno3K3NkU01UbXBweThDTmZadXBBckFvVDBFZFFK?=
 =?utf-8?B?Wm9FNTdsM3pDU3lQK1hOekZaS0NTSlkvUzJPc0VJUHB4V1RONm9RblByaXBD?=
 =?utf-8?B?RjVnNXdHYlVxdlYxSkJXM0FKMUFHdzZlbUpUN05kRkRLS2xSSmpKT2IzMGNs?=
 =?utf-8?B?U0JtdFhEMm5oNXo5MS80VEpndnhXcU02TFdrejZTcWkwM0ZIY3pnRnlZQUVY?=
 =?utf-8?B?WEN6RGxtdjRBc21WVFgvQkRXZys0WHUvUnE1SW9xWWZzWXNiLytLZ1V3ZERQ?=
 =?utf-8?B?a1ljSmdiMHhNQkxRdTJXVGpqY1VQaFc2ZWhFbWpIVFpjWFlGTlJLdldDMzYw?=
 =?utf-8?B?dllGWmdBQUh1RkQ1Q0Z4MitsTE8rNXN5R2xIZUcxM1ViQ0dmWnE5aUlZOTlV?=
 =?utf-8?B?S0t2dkE3YUxsL3BzVUtLNzg5NGsrRFJQaFYyRXBKUUYrM1lRa3JKeHdQZytF?=
 =?utf-8?B?QmNjVS9UL2JNQStRKy9DdHliaFgyTEl0R0xQZi9tSTVwd2JjZ1ZuVllHREta?=
 =?utf-8?B?T2JPa3RnQmU5aEMvRTQ0cjgwcDlUd1dRdHRvc2wrbzErOWlXSWY4SERWam5S?=
 =?utf-8?B?Y2FIajdUQllXcDN6Um52emZRV2hDQnYyUi9ESE5nVTU5aUZzY1VNY2poV3Iy?=
 =?utf-8?B?dDFwWGpSRUovcDEramJaaldYc1BjaXpESEhiaG5uY0NmUzZDcXowYmtuTTJK?=
 =?utf-8?B?VmN0bEsyL3IyY3RrZGhPVTdaY3Z3SnF0N0g4TVVxaFVzSjE5MXV3aTdvMWRT?=
 =?utf-8?B?MHp4SmQ1TXMyUElPd2NZSUxlRXhxNVFmSVY3YkNCQ0ZiZnVoZWpCMXN5UE1T?=
 =?utf-8?B?NEFIS3FSalFsOHdkYjE5NE9LcTgzWDhwN3pNNWlBcHBXVkZNblhIRGlSWmQw?=
 =?utf-8?B?MHNFOGZPdmlON0VBNmxQbEZLaWx5dW4raUg0ckJpMThWdHM0WXhpQWF2aEVn?=
 =?utf-8?B?ZExYTFZZNzZVR1NZclhTMW9Id3NmUmxVanNKakhxcU1ocCswMlIxaXY0TGto?=
 =?utf-8?B?cFBsYWlXMVdQd3Frem5OSFhQdUJNL0FublVyT0V3MHpuQ3JQSEJDWVpMWkEv?=
 =?utf-8?B?NlZvMUc4bjZYV2NnRVBleGRsSXY1N09namtURUhYbHhqTGRZUTNiZjBMNEFa?=
 =?utf-8?B?cDNZR3FPdVRVQ3RuaUI1cnFPVW1GOVNCSERxSmVPdVBITEZJNTNIazhxZU9o?=
 =?utf-8?B?aldMczNrMDh4QnNFRkIxQUhpdGMveFdScXorNjdDZVFjVEVESzJTWDdhd2I1?=
 =?utf-8?B?b0xReUZ1dEJrNHdUd0hTa3BWU25kbStFQXFUV3FiVExqd1BHcklOVFFwenc5?=
 =?utf-8?B?cUlsTWg1UWJKeXkvMXlxVVhTVURIeHlkKzEwZ1FPZ1RDU3k3Q0tCOXIyZVk1?=
 =?utf-8?B?RHVBbnFsdkM3aGwzY3Nja09UR3lTVFlEQnZ1MjJwMkVqMXBKbnFoak1YOUhk?=
 =?utf-8?B?Znhybnlid2lEb0MydHhvdXlVbkIweHc0dkUxdlVSMHhuc3hnbkZERVNRR0E1?=
 =?utf-8?B?N2p5bGFyUlQ3Umx3M1ozellucEsxbjJsWVRWL2JMdDB6NTFHaXMraWhhRWVB?=
 =?utf-8?B?YldLWFo4dU0zVWtPOUhXQVEwWlVLOFRPNmdWeklWQnVETmh2R2tCWk80ajhW?=
 =?utf-8?B?cmZzbU9Dd21FS01RVSs3ZTZZYi81SHk0ZmRrR1NaSm9CWjRzTzdGVm9RTkFL?=
 =?utf-8?B?Qzd5UnAzaExnVW5qZEp6eHlYQnFtWnFqUFJyYTk2SlVrNzMwa3JMRUhvb2lV?=
 =?utf-8?B?eWtDdU9zMWh2N0czR0pFRFVhaFAxVmFaWmpzTHpWdWJTQkdzMGEyaFB4UVA2?=
 =?utf-8?B?L0ZmTDhYMDBEL1dmcTZkTUxQamRCa3VSejNSRy84cmpqcWsyS09rbFQ4YnFB?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b42d9c02-c576-4c5c-fe2e-08de25ee9aab
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 15:33:06.3862 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /hPn1SUT5mU55wlTQiPo35EsUyDxmPSoOUnkdOHDaf1SdLtcmxMQfw0Na0gn3niDEqngnYBu7K9LXNXqQqYLew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7661
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

Quoting Imre Deak (2025-11-14 21:40:24-03:00)
>On Fri, Nov 14, 2025 at 04:46:29PM -0300, Gustavo Sousa wrote:
>> Quoting Imre Deak (2025-11-12 14:53:47-03:00)
>> >On Fri, Nov 07, 2025 at 09:05:40PM -0300, Gustavo Sousa wrote:
>> >> Xe3p_LPD has a new feature that allows the driver to allocate at runt=
ime
>> >> the DDI (TC ones) port to drive a legacy connection on the Type-C
>> >> subsystem.  This allows better resource utilization, because now ther=
e
>> >> is no need to statically reserve ports for legacy connectors on the
>> >> Type-C subsystem.
>> >>=20
>> >> That said, our driver is not yet ready for the dynamic allocation.
>> >> Thus, as an incremental step, let's add the logic containing the
>> >> required programming sequence for the allocation, but, instead of
>> >> selecting the first available port, we try so use the 1:1 mapping
>> >> expected by the driver today.
>> >>=20
>> >> Bspec: 68954
>> >> Co-developed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>> >> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> ---
>> >>=20
>> >> NOTE: This patch is still a WIP. There are some opens to resolve here=
.
>> >> Nevertheless, I'm sending it here for early feedback.
>> >>=20
>> >> For the HIP-index stuff, I have a local refactor started and need to
>> >> finish it up and send it.
>> >>=20
>> >> The other open is about concurrent calls to iom_dp_resource_lock().  =
It
>> >> is likely that we need to have a software lock to prevent concurrent
>> >> access to IOM_DP_HW_RESOURCE_SEMAPHORE from our driver.
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_display_regs.h |  20 ++-
>> >>  drivers/gpu/drm/i915/display/intel_tc.c           | 151 ++++++++++++=
+++++++++-
>> >>  2 files changed, 169 insertions(+), 2 deletions(-)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/driv=
ers/gpu/drm/i915/display/intel_display_regs.h
>> >> index 89ea0156ee06..0cf7d43ce210 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> >> @@ -2908,6 +2908,25 @@ enum skl_power_gate {
>> >>  #define   DP_PIN_ASSIGNMENT(idx, x)                ((x) << ((idx) * =
4))
>> >>  /* See enum intel_tc_pin_assignment for the pin assignment field val=
ues. */
>> >> =20
>> >> +/*
>> >> + * FIXME: There is also a definition for this register in intel_dkl_=
phy_regs.h.
>> >> + * We need to consolidate the definitions.
>> >> + */
>> >> +#define HIP_INDEX_REG0                                _MMIO(0x1010a0=
)
>> >> +#define   HIP_168_INDEX_MASK                        REG_GENMASK(3, 0=
)
>> >> +#define   HIP_168_IOM_RES_MGMT                        REG_FIELD_PREP=
(HIP_168_INDEX_MASK, 0x1)
>> >> +
>> >> +#define IOM_DP_HW_RESOURCE_SEMAPHORE                _MMIO(0x168038)
>> >> +#define   IOM_DP_HW_SEMLOCK                        REG_BIT(31)
>> >> +#define   IOM_REQUESTOR_ID_MASK                        REG_GENMASK(3=
, 0)
>> >> +#define   IOM_REQUESTOR_ID_DISPLAY_ENGINE        REG_FIELD_PREP(IOM_=
REQUESTOR_ID_MASK, 0x4)
>> >> +
>> >> +#define IOM_DP_RESOURCE_MNG                        _MMIO(0x16802c)
>> >> +#define   IOM_DDI_CONSUMER_SHIFT(tc_port)        ((tc_port) * 4)
>> >> +#define   IOM_DDI_CONSUMER_MASK(tc_port)        (0xf << IOM_DDI_CONS=
UMER_SHIFT(tc_port))
>> >> +#define   IOM_DDI_CONSUMER(tc_port, x)                ((x) << IOM_DD=
I_CONSUMER_SHIFT(tc_port))
>> >> +#define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        IOM_DDI_CONSUME=
R(tc_port, 0x8 + (tc_port))
>> >
>> >It would be simpler to define the above without the shift, i.e. as 8 +
>> >tc_port.
>>=20
>> You mean something like this?
>>=20
>> #define   IOM_DDI_CONSUMER_STATIC_TC(tc_port)        (0x8 + (tc_port))
>>=20
>> ?
>>=20
>> Yeah... Looking at the code, we wouldn't need to shift back when
>> defining expected_consumer.
>
>Yes.
>
>>=20
>> >
>> >> +
>> >>  #define _TCSS_DDI_STATUS_1                        0x161500
>> >>  #define _TCSS_DDI_STATUS_2                        0x161504
>> >>  #define TCSS_DDI_STATUS(tc)                        _MMIO(_PICK_EVEN(=
tc, \
>> >> @@ -2946,5 +2965,4 @@ enum skl_power_gate {
>> >>  #define   MTL_TRDPRE_MASK                REG_GENMASK(7, 0)
>> >> =20
>> >> =20
>> >> -
>> >>  #endif /* __INTEL_DISPLAY_REGS_H__ */
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/dr=
m/i915/display/intel_tc.c
>> >> index 7e17ca018748..3c333999bbe4 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> >> @@ -9,6 +9,7 @@
>> >> =20
>> >>  #include "i915_reg.h"
>> >>  #include "intel_atomic.h"
>> >> +#include "intel_bios.h"
>> >>  #include "intel_cx0_phy_regs.h"
>> >>  #include "intel_ddi.h"
>> >>  #include "intel_de.h"
>> >> @@ -25,6 +26,9 @@
>> >>  #include "intel_modeset_lock.h"
>> >>  #include "intel_tc.h"
>> >> =20
>> >> +#define IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US        10
>> >> +#define IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US        10000
>> >
>> >The above param names should make it clear how poll_timeout_us() uses
>> >them (i.e. stg like sleep vs. timeout instead of lock_timeout vs.
>> >retry_timeout), but probably even clearer to just drop the defines and
>> >inline the values in the call.
>>=20
>> Ack.  I going with the latter.
>>=20
>> >
>> >> +
>> >>  enum tc_port_mode {
>> >>          TC_PORT_DISCONNECTED,
>> >>          TC_PORT_TBT_ALT,
>> >> @@ -1200,6 +1204,143 @@ static void xelpdp_tc_phy_get_hw_state(struct=
 intel_tc_port *tc)
>> >>          __tc_cold_unblock(tc, domain, tc_cold_wref);
>> >>  }
>> >> =20
>> >> +static void iom_res_mgmt_prepare_reg_access(struct intel_display *di=
splay)
>> >> +{
>> >> +        /*
>> >> +         * IOM resource management registers live in the 2nd 4KB pag=
e of IOM
>> >> +         * address space. So we need to configure HIP_INDEX_REG0 wit=
h the
>> >> +         * correct index.
>> >> +         *
>> >> +         * FIXME: We need to have this and dekel PHY implementation =
using a
>> >> +         * common abstraction to access registers on the HIP-indexed=
 ranges, and
>> >> +         * this function would then be dropped.
>> >> +         */
>> >> +        intel_de_rmw(display, HIP_INDEX_REG0,
>> >> +                     HIP_168_INDEX_MASK, HIP_168_IOM_RES_MGMT);
>> >
>> >This matches what intel_dkl_phy.c does, that one also taking the
>> >required lock around the access. At one point the intel_dkl_phy
>> >file/interface could be renamed to intel_tc_reg or similar accordingly.
>>=20
>> I have already started a local series that introduces the "HIP-index
>> based registers" abstraction.  I need to go back to finish it up.
>>=20
>> The basic idea is that both intel_dkl_phy.c and this IOM stuff would use
>> functions specific to accessing registers behind the HIP-based ranges.
>
>Using intel_hip_reg instead of intel_tc_reg is probably better, but I
>still think the current interface should be just renamed, instead of
>adding a new interface and making the current
>intel_dkl_phy_read/write/rmw() use that new interface.
>
>I went ahead and put the above together now:
>https://github.com/ideak/linux/commits/hip-reg

I didn't take a look yet; will do later.  But, since we are sharing,
here is a squashed and untested version of what I have in my local WIP:

https://gitlab.freedesktop.org/gustavo/kernel/-/commit/25d16a7302d9b1e9b214=
ccd26943fd7903d4ea11

--
Gustavo Sousa

>
>>=20
>> To give an idea, here is a copy/paste of the kerneldoc I currently have
>> in that WIP series:
>>=20
>>   | diff --git a/drivers/gpu/drm/i915/display/intel_hip_idx.c b/drivers/=
gpu/drm/i915/display/intel_hip_idx.c
>>   | new file mode 100644
>>   | index 000000000000..ff2492b8275d
>>   | --- /dev/null
>>   | +++ b/drivers/gpu/drm/i915/display/intel_hip_idx.c
>>   | @@ -0,0 +1,110 @@
>>   | +// SPDX-License-Identifier: MIT
>>   | +/*
>>   | + * Copyright (C) 2025 Intel Corporation
>>   | + */
>>   | +
>>   | +/**
>>   | + * DOC: Display HIP-indexed register access
>>   | + *
>>   | + * Display MMIO mapping for offsets in [0x168000,0x16ffff] are gove=
rned by
>>   | + * configurations in the HIP_INDEX registers provided by the hardwa=
re.
>>   | + *
>>   | + * Usually each of the valid 4KB range in that space will be mapped=
 to some IP
>>   | + * block, providing access to registers of that IP. The HIP_INDEX r=
egisters
>>   | + * expose an 8-bit index value for each 4KB range. Those indices pr=
ovide a way
>>   | + * to access data that is beyond the initial 4KB block provided by =
the target
>>   | + * IP.
>>   | + *
>>   | + * As an example, say that the range [0x16a000,0x16afff] is mapped =
to some
>>   | + * sub-IP that contains a 8KB register file. To access the initial =
4KB of that
>>   | + * register file, we would need to set the index respective to
>>   | + * [0x16a000,0x16afff] in HIP_INDEX to 0; to access data in the sec=
ond 4KB
>>   | + * window, we would need to set the index to 1.
>>   | + *
>>   | + * For simple read, write or rmw operations on a single register, t=
he
>>   | + * functions intel_hip_idx_reg_read(), intel_hip_idx_reg_write() an=
d
>>   | + * intel_hip_idx_reg_rmw() can be used, which will call intel_hip_i=
dx_lock()
>>   | + * and intel_hip_idx_unlock() internally.
>>   | + *
>>   | + * For other scenarios, then it is necessary to wrap the register a=
ccesses
>>   | + * with explicit calls to intel_hip_idx_lock() and intel_hip_idx_un=
lock(), and
>>   | + * use the MMIO functions provided by intel_de.h. For the latter, t=
he function
>>   | + * intel_hip_idx_reg_to_i915_reg() needs to be used in order to pro=
vide the
>>   | + * correct reg argument to those functions.
>>   | + */
>>   | (...)
>>=20
>> >
>> >> +}
>> >> +
>> >> +/*
>> >> + * FIXME: This function also needs to avoid concurrent accesses from=
 the driver
>> >> + * itself, possibly via a software lock.
>> >> + */
>> >> +static int iom_dp_resource_lock(struct intel_tc_port *tc)
>> >> +{
>> >> +        struct intel_display *display =3D to_intel_display(tc->dig_p=
ort);
>> >> +        u32 val =3D IOM_DP_HW_SEMLOCK | IOM_REQUESTOR_ID_DISPLAY_ENG=
INE;
>> >> +        int ret;
>> >> +
>> >> +        iom_res_mgmt_prepare_reg_access(display);
>> >> +        ret =3D poll_timeout_us(intel_de_write(display, IOM_DP_HW_RE=
SOURCE_SEMAPHORE, val),
>> >> +                              (intel_de_read(display, IOM_DP_HW_RESO=
URCE_SEMAPHORE) & val) =3D=3D val,
>> >
>> >This happens to work, but it's more future proof/bspec conformant to
>> >properly mask the requestor ID field when reading it back.
>>=20
>> Agreed.
>>=20
>> >
>> >> +                              IOM_DP_RES_SEMAPHORE_LOCK_TIMEOUT_US,
>> >> +                              IOM_DP_RES_SEMAPHORE_RETRY_TIMEOUT_US,=
 false);
>> >> +
>> >> +        if (ret)
>> >> +                drm_err(display->drm, "Port %s: timeout trying to lo=
ck IOM semaphore\n",
>> >> +                        tc->port_name);
>> >> +
>> >> +        return ret;
>> >> +}
>> >> +
>> >> +static void iom_dp_resource_unlock(struct intel_tc_port *tc)
>> >> +{
>> >> +        struct intel_display *display =3D to_intel_display(tc->dig_p=
ort);
>> >> +
>> >> +        iom_res_mgmt_prepare_reg_access(display);
>> >> +        intel_de_write(display, IOM_DP_HW_RESOURCE_SEMAPHORE, IOM_RE=
QUESTOR_ID_DISPLAY_ENGINE);
>> >> +}
>> >> +
>> >> +static bool xe3p_tc_iom_allocate_ddi(struct intel_tc_port *tc, bool =
allocate)
>> >> +{
>> >> +        struct intel_display *display =3D to_intel_display(tc->dig_p=
ort);
>> >> +        struct intel_digital_port *dig_port =3D tc->dig_port;
>> >> +        enum tc_port tc_port =3D intel_encoder_to_tc(&dig_port->base=
);
>> >> +        u32 val;
>> >> +        u32 consumer;
>> >> +        u32 expected_consumer;
>> >> +        bool ret;
>> >> +
>> >> +        if (DISPLAY_VER(display) < 35)
>> >> +                return true;
>> >> +
>> >> +        if (tc->mode !=3D TC_PORT_LEGACY)
>> >> +                return true;
>> >> +
>> >> +        if (!intel_bios_encoder_supports_dyn_port_over_tc(dig_port->=
base.devdata))
>> >
>> >dedicated_external is stored separately in dig_port, why the "related"
>> >dyn_port_over_tc flag isn't?
>>=20
>> The only reason dedicated_external is stored is because VBT data is
>> already freed by the time intel_encoder_is_tc() is called in the driver
>> unbind path.  In the future we should fix the VBT lifetime issue in
>> order to be able to drop the dedicated_external member of dig_port.
>>=20
>> >
>> >> +                return true;
>> >> +
>> >> +        if (iom_dp_resource_lock(tc))
>> >> +                return false;
>> >> +
>> >> +        val =3D intel_de_read(display, IOM_DP_RESOURCE_MNG);
>> >> +
>> >> +        consumer =3D val & IOM_DDI_CONSUMER_MASK(tc_port);
>> >> +        consumer >>=3D IOM_DDI_CONSUMER_SHIFT(tc_port);
>> >> +
>> >> +        /*
>> >> +         * Bspec instructs to select first available DDI, but our dr=
iver is not
>> >> +         * ready for such dynamic allocation yet. For now, we force =
a "static"
>> >> +         * allocation: map the physical port (where HPD happens) to =
the
>> >> +         * encoder's DDI (logical TC port, represented by tc_port).
>> >> +         */
>> >> +        expected_consumer =3D IOM_DDI_CONSUMER_STATIC_TC(tc_port);
>> >> +        expected_consumer >>=3D IOM_DDI_CONSUMER_SHIFT(tc_port);
>
>One more thing occured to me: why can't this allocate any free DDI? IOW
>does the address of DDI_BUF_CTL (aka DDI_CTL_DE) used for tc_port depend
>on which DDI gets allocated (or is there any other dependency on which
>DDI got allocated)? AFAICS there is no such dependency and the above
>address would be DDI_BUF_CTL(encoder->port) regardless of the allocated
>DDI. In that case any free DDI could be allocated here.
>
>> >> +
>> >> +        if (allocate) {
>> >> +                struct intel_encoder *other_encoder;
>> >> +
>> >> +                /*
>> >> +                 * Check if this encoder's DDI is already allocated =
for another
>> >> +                 * physical port, which could have happened prior to=
 the driver
>> >> +                 * taking over (e.g. GOP).
>> >> +                 */
>> >> +                for_each_intel_encoder(display->drm, other_encoder) =
{
>> >> +                        enum tc_port other_tc_port =3D intel_encoder=
_to_tc(other_encoder);
>> >> +                        u32 other_consumer;
>> >> +
>> >> +                        if (tc_port =3D=3D TC_PORT_NONE || other_tc_=
port =3D=3D tc_port)
>> >> +                                continue;
>> >> +
>> >> +                        other_consumer =3D val & IOM_DDI_CONSUMER_MA=
SK(other_tc_port);
>> >> +                        other_consumer >>=3D IOM_DDI_CONSUMER_SHIFT(=
other_tc_port);
>> >> +                        if (other_consumer =3D=3D expected_consumer)=
 {
>> >> +                                drm_err(display->drm, "Port %s: expe=
cted consumer %u already allocated another DDI; IOM_DP_RESOURCE_MNG=3D0x%08=
x\n",
>> >> +                                        tc->port_name, expected_cons=
umer, val);
>> >> +                                ret =3D false;
>> >> +                                goto out_resource_unlock;
>> >> +                        }
>> >> +                }
>> >> +
>> >> +                if (consumer =3D=3D 0) {
>> >> +                        /* DDI is free to use, let's allocate it. */
>> >> +                        val &=3D ~IOM_DDI_CONSUMER_MASK(tc_port);
>> >> +                        val |=3D IOM_DDI_CONSUMER(tc_port, expected_=
consumer);
>> >> +                        intel_de_write(display, IOM_DP_RESOURCE_MNG,=
 val);
>> >> +                        ret =3D true;
>> >> +                } else if (consumer =3D=3D expected_consumer) {
>> >> +                        /*
>> >> +                         * Nothing to do, as the expected "static" D=
DI allocation is
>> >> +                         * already in place.
>> >> +                         */
>> >> +                        ret =3D true;
>> >> +                } else {
>> >> +                        drm_err(display->drm, "Port %s: DDI already =
allocated for consumer %u; IOM_DP_RESOURCE_MNG=3D0x%08x\n",
>> >> +                                tc->port_name, consumer, val);
>> >> +                        ret =3D false;
>> >> +                }
>> >> +        } else {
>> >> +                drm_WARN_ON(display->drm, consumer !=3D expected_con=
sumer);
>> >> +                val &=3D ~IOM_DDI_CONSUMER_MASK(tc_port);
>> >> +                intel_de_write(display, IOM_DP_RESOURCE_MNG, val);
>> >> +                ret =3D true;
>> >> +        }
>> >> +
>> >> +out_resource_unlock:
>> >> +        iom_dp_resource_unlock(tc);
>> >> +
>> >> +        return ret;
>> >> +}
>> >> +
>> >>  static bool xelpdp_tc_phy_connect(struct intel_tc_port *tc, int requ=
ired_lanes)
>> >>  {
>> >>          tc->lock_wakeref =3D tc_cold_block(tc);
>> >> @@ -1210,9 +1351,12 @@ static bool xelpdp_tc_phy_connect(struct intel=
_tc_port *tc, int required_lanes)
>> >>                  return true;
>> >>          }
>> >> =20
>> >> -        if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
>> >> +        if (!xe3p_tc_iom_allocate_ddi(tc, true))
>> >
>> >This doesn't work. A connector registered to userspace must be always
>> >functional (except for MST connectors which are dynamically registered)=
.
>> >So the DDI allocation and with that connecting the PHY cannot fail here
>> >for a legacy connector/PHY. Instead of this the allocation could be
>> >moved to happen already in intel_tc_phy_ops::init for now, allocating a
>> >DDI for a legacy PHY (intel_tc_port::legacy_port =3D=3D true) and if th=
at
>> >fails also fail the corresponding connector/encoder registration in
>> >intel_ddi_init(). The DDI would need to be released by
>> >intel_tc_port_cleanup().
>>=20
>> Ah, I see.  Well, I guess for legacy connections, doing your suggestion
>> seems fine.
>>=20
>> Is there any power management aspect that we should be aware here? Like,
>> some power well being disabled and causing the allocation to be "lost"
>> somehow.  Since this thing is in the TCSS, I think no display power
>> wells could cause that, right?
>
>It would make sense to me that the allocations are preserved by the
>HW/FW across power transitions. If that's not the case then they should
>be restored by the driver.
>
>> By the way, I wonder how we would handle things in the future when/if we
>> enable the dynamic DDI allocation thing.
>
>In case of a DDI allocation failure, the modeset will still succeed, but
>the corresponding port/pipe will not get enabled.
>
>> --
>> Gustavo Sousa
>>=20
>> >
>> >>                  goto out_unblock_tccold;
>> >> =20
>> >> +        if (!xelpdp_tc_phy_enable_tcss_power(tc, true))
>> >> +                goto out_deallocate_ddi;
>> >> +
>> >>          xelpdp_tc_phy_take_ownership(tc, true);
>> >> =20
>> >>          read_pin_configuration(tc);
>> >> @@ -1226,6 +1370,9 @@ static bool xelpdp_tc_phy_connect(struct intel_=
tc_port *tc, int required_lanes)
>> >>          xelpdp_tc_phy_take_ownership(tc, false);
>> >>          xelpdp_tc_phy_wait_for_tcss_power(tc, false);
>> >> =20
>> >> +out_deallocate_ddi:
>> >> +        xe3p_tc_iom_allocate_ddi(tc, false);
>> >> +
>> >>  out_unblock_tccold:
>> >>          tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
>> >> =20
>> >> @@ -1236,6 +1383,8 @@ static void xelpdp_tc_phy_disconnect(struct int=
el_tc_port *tc)
>> >>  {
>> >>          switch (tc->mode) {
>> >>          case TC_PORT_LEGACY:
>> >> +                xe3p_tc_iom_allocate_ddi(tc, false);
>> >> +                fallthrough;
>> >>          case TC_PORT_DP_ALT:
>> >>                  xelpdp_tc_phy_take_ownership(tc, false);
>> >>                  xelpdp_tc_phy_enable_tcss_power(tc, false);
>> >>=20
>> >> --=20
>> >> 2.51.0
>> >>
