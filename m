Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 813E69B06FE
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 17:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A7C310E3E2;
	Fri, 25 Oct 2024 15:05:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="irByHWO8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 504C610E0B1;
 Fri, 25 Oct 2024 15:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729868704; x=1761404704;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/7dX+G9b1pc/76d9vm2CTVPnA2JddrfBIrx6X7Bg8eY=;
 b=irByHWO834ir7CvlfvDJ4qnBO7C335wQVOlVbQDSBn4yK79Uqik7ESEr
 2ZV0QdMVh9Ouh8qMBfBthS0zMQBuzP+ze+EIcike1S5pWriNSFyubMQ0Q
 1/hnatOpwVqaXEHSnylfRV+HBOtARp02U77VjVpqd+RLweDezKbG6y7u0
 NmxBfwqxW4tjyt8gpurUTGYjZZzSYignwZaB4hOj+s/Jv7kFDeOSI17sf
 vhySSvPGdtWooDXmIrfO/TO+TDDlOFK5HaRKgOMwyPzBVa+aO4ts3k9Ov
 NOU8SM8F+e0vXii9/kFl2w/Hzg+QU7kyYBg9/frBQYjoYk86dnMQRdBNK g==;
X-CSE-ConnectionGUID: J5GF3ZMxSSCJH610IwxMhA==
X-CSE-MsgGUID: YWF+7akPRM20G7lmAvPuew==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="17172826"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="17172826"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 08:05:03 -0700
X-CSE-ConnectionGUID: jY0/dZDzRx2w9KXqWqzLjw==
X-CSE-MsgGUID: T81mR/gKRR+NZl4lOhjDUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="85521768"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 08:05:03 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 08:05:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 08:05:03 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 08:05:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RtNpSz/PaGfdpay9WTyeQeTGdfxxKYHzIqwGMhDX/jYCT26pz02L/waGTN+GvU2qWiONQb+5Cy23tRPIsTN3f+8Oj+OaWsf4/TX4coTECHEIlgmXaGCAFRp8VqC5Te8eGh595mwLiGodEEd4nYJlGLzqUaeVdEA7UqLnWI3a7LcLFq4MJXC4eSQOYCsPjpsNB6ofOAj9kuneie043v6tT682xwbkHDOb0JdR2PSpkQFNZwVKy5eOB77T3S2kLTEdvgf+n7JQ7dGumQCpY/sD8Dy+S1vCA2+ZIKUATrAHVFqnLaEpfKYuWdPj/CxQequwtSnsZeBdJtercS0L2pn+Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5vKzlUV9HHZpHgOivpk1sQsxFzblIKkxrARuKHNzraQ=;
 b=e5ZT7pdaNofrVhvDfsLn2Kazq71hnH06+VSG8ZnoDwvbufndsakKuMFTaNDONADkErDyNgjgDgQOb/AWYv08zdK1yfoQkMYVrcTDotejD/wqwTb5oV11IBxEZtnxs+3jX7qp0w9Gy7uzZCRvWMGVGH538g01h//SFG2e+Jm+kK9KjakBQM8Rn0f/ryfGXX4+cN2ZkO6DPc27GBdpmcu/zd6Y/OqqEpaK7j9qSFAAbz1Dy8GU1kIWqa/C3maP7c1QJhAxkTbYFdwgq9YUF1LQiKCUu3+lRPS1xJ2DWZaZYPMp6S5g2O2/xdWjGheVSMS08BblcYvFeXLDvMctQ3Cmeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by CY8PR11MB7900.namprd11.prod.outlook.com (2603:10b6:930:7a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.19; Fri, 25 Oct
 2024 15:05:00 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 15:04:59 +0000
Message-ID: <906191eb-f17d-4a89-ac63-aec08fb1f66e@intel.com>
Date: Fri, 25 Oct 2024 08:04:57 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Ghimiray, Himal Prasad"
 <himal.prasad.ghimiray@intel.com>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <20241022072920.102033-1-suraj.kandpal@intel.com>
 <5a48a3f3-bda0-45a2-98e1-068165f8e772@intel.com>
 <SN7PR11MB67501BD53C3641C4BB1E9E58E34F2@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <SN7PR11MB67501BD53C3641C4BB1E9E58E34F2@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0198.namprd05.prod.outlook.com
 (2603:10b6:a03:330::23) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|CY8PR11MB7900:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a0130e6-52ba-4532-61a3-08dcf5066516
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SE9Za0xmOEtBeC9ncVNCcW5UQ21HY2dNUDkrVkVtV2R3MGo4YnRrL1JndEo2?=
 =?utf-8?B?cHNUcUdTcmZrQVlTdDFQU1Yzc0ZaemJqaEJiWDg2bDUwWGJ0aGc4dXVmQmxI?=
 =?utf-8?B?Zmx6OU4yYXBwdkt1ckwxUElNd1hJTmpvZEw0cTBYT0duRVdhcXFFQnB6NEJY?=
 =?utf-8?B?cC9SNHkzTFVDYzhYTkFIQ0FEZ2NXR0NjSVIrVXlJMW9UREQzNUlKcEdwRVlJ?=
 =?utf-8?B?UW9uUm5jVkM1dUYwbGdrQmxWQjRsQUNHZ3ZzUk5FSnRqYkN5L0hHNzJtSzNM?=
 =?utf-8?B?SXVwbThyRS9QUm14UUZ5NWJlemJpQmJIY3RrTVVCUHVHQ1RLbXRmSWVQQ0VE?=
 =?utf-8?B?cFBoQy84dE9QTHc5RHh4c1ljQW9hN1BEc21SeWNQZ3FvWS8vV2c2N2pRQUds?=
 =?utf-8?B?ek9UMzFNR0xDNzdROUtFWmN4WWlWMExmbjZyVXVKNGdZaXhxVTIxdHpxRGp2?=
 =?utf-8?B?bmxqUDlMS0tSWnRqbHFSK2tPRncwaXg3STRNWnV1RXRJOW9NS1BqbHpRdFJW?=
 =?utf-8?B?WFlZL1RFeklnTkUrUDBEbDJYTDhIM3JzNnZXVzE3QzBBS3E1SE5qMit1ZnJs?=
 =?utf-8?B?UUFjczUrd28vSFhPV0dpMEFPRW1Rb3BJYmE5clFNNS80OUJRNjNxcWxtbFNi?=
 =?utf-8?B?d0YvN28yczVhS1RSQk1Nc0l3OWhvSEZJVlkxdVdSQlVGVW9idCtUcENOYjJN?=
 =?utf-8?B?ZUZ1ZFBpN0l5YkRUM01POVpBbWdBRVBpS2NyU0Nwb3RITkJUemtoYVpRNGsx?=
 =?utf-8?B?R2QraHo2aDM2WXRiY2xKWmhhQjA2V1dicVNGMTk1RU9ia1RlYVJlck41RHFo?=
 =?utf-8?B?MnpQc0tZbnNMN3M2MEFhRzVKNXdzQXkrMWJqc0hobFc4TGNEVStHenlkNzVp?=
 =?utf-8?B?Uzd6Y05MeUIzYVhkR3RrK2lXbXhlUG9TTm9kUzY3ZWMydmY4THhCS0VKa1hw?=
 =?utf-8?B?Z1FXSEw3ODI4TnRXeEZyZ2hvY1B6cXRyc0JPL0tPSlJhQkhZWkNoR2phZGs2?=
 =?utf-8?B?dGN3WFVOWEdja2tUZDRUd0x0Vit6b0FLbjNsRE1yWm0zNUppT3haTVZNYmhG?=
 =?utf-8?B?ektmR20yYzUwelE2VWkrU0VYejRyVmJQc3hxeFJId2NBZ1V5cUpRdlltRHBw?=
 =?utf-8?B?a3lOempBOUNJUWFCZm9nekszVjJXS3B2U2pKVnU2SjNKZStseCt4TlpXL2o4?=
 =?utf-8?B?d3haVTQ4R1pJbzRiK0lrOThqYlNTSVdEMCtVMnJ5STRZY1F3ZmRVcGNsL1F6?=
 =?utf-8?B?blpYdEN6RmN5NmlwMXA0MDQwQm8zRHZvQ3ljSEZMR0JBWlpSbGpUVElTNUdC?=
 =?utf-8?B?TVJQSUhQYWltdGhyNmRiSEU2VFJsT2lrd2dmNjJ2bmZHakJRa2cxRDIwNFVt?=
 =?utf-8?B?ZHR2T3hJdWlGNE9wWkIzZXBJelBzUVFRRXpiN3h4OUhURmZRMUp1QVY4QWZ4?=
 =?utf-8?B?NHRGQ29hbS9wQVplYzU3aHFZaUJZbHY5MFpXdndtMll6eDVNYUxaaFM5U2gr?=
 =?utf-8?B?NE5YaVE5aEkzNzRXd2JJYnp3S0dqaVlKZHFETStlZFp5OEpmaDBvbXNFSHdq?=
 =?utf-8?B?QS9KemNNbnp5MXIyNTljU2FhUHhsc1VldDgvcHJqRDB3ZGdremptaUhieVFQ?=
 =?utf-8?B?dFRFS1NYNnViMEV5bnA3TjdJTWNTOFcxWlpydjZqazNvdGVlaENXenhibUdH?=
 =?utf-8?B?eGRlUDFJeEV3R2U5ZDRtWURFMzdZM0pnQVExUjR4enNQQW5FWHFYamFnY2ZZ?=
 =?utf-8?Q?6fc+2G9vWfzxiWdKtI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTgyWEkyT1ROaUl1dENxUjZmeGthTzc5MHJ3a1dxcVJpNU1vRHpJYlFlUTRv?=
 =?utf-8?B?YWxQdDBNMmlEK1Z4TkpPL3hIWituMFVXRkhQREh5NERjUFBlcW9malZvbmh5?=
 =?utf-8?B?VkdtWmozQmJCSDFpQngwTm9XR2srMTdJZmpmN2taaWhNNlZlTjN1QWRUZjhS?=
 =?utf-8?B?K1V4SklXajRjZXp2NnNRbVltOXJhT04wSVhCMGFaOGFHZzdjRVNNNXhPZmJX?=
 =?utf-8?B?Vi9NMGJrWXQ2VWZ2aGZON0VBbEIya01CZW9lTnhXOERsUmJsT2pHRmdLZ3FN?=
 =?utf-8?B?VU1mc0c0ZnRUL1VLaU1lS0FHR3J0Z2xZSzRBYktjKzNQb2VwRGpINzRLMi9w?=
 =?utf-8?B?OW45YWNUNHhQMDcxR0E4cFdrS0Q4eEx1OGNhaU1ZM0lJc0hlZjlpWlhPUElG?=
 =?utf-8?B?WnFjUVMzdS9RZTZmUTd4OHJ6cVFrSWZBblZteGVlZzNnU0hqME15MXpNMDA2?=
 =?utf-8?B?ODlaTVZIbnZzVnIyWkdxbmdmRjRoWXlESGVlWWpIVktHL2V4eGxBd01oS09z?=
 =?utf-8?B?c0lkOFNjbmlXKzRmRTErOGt5M0tiRFZWbDIrVlU4OFVIY3FId0VDdFhJYzdj?=
 =?utf-8?B?UC94b1FhZXlGbVlBdDQrN2tWeHVzeEx1R1NYaGRYeXJnS2dWNkFVSHpoTm1V?=
 =?utf-8?B?QnltWWNJM1JaZ1RrdkRudmZIbW0vYm4wcGZhVGpjd3FWSDNRK0ZoTVRPdk1O?=
 =?utf-8?B?bTdBbHFTSzFSRnZBRVUvUE02RTlkdWZvaVVOdW9ucUZFOHRvdGNXbXFzTWZH?=
 =?utf-8?B?NGljaG1wSUZmT1BjYktoc1YwODN2aE9idnpkcGpvMFRjU05pQU9iVnNET1Za?=
 =?utf-8?B?eE9rZkdYRWRHRTdKUkhRdVlJZk5aaG5LVVZrZVczam52VG1TQXZTeXVkRUtU?=
 =?utf-8?B?aHp3UkNrZDV4ZUtEaVBIOW91K3ZEbWJxT1ltRVYwMWt6NE9Zcm5HS1JWL3BD?=
 =?utf-8?B?MTVRcG04Um1KeGRvWGtVc2JnQUtEcjhIaHMyL3lnWWlGOG96SDZLb1F6Tlky?=
 =?utf-8?B?dE84WE5CMDhOdzhVMTNXRkc2N2ZVVUZ4SlVsNDNyUWx0TDFUNU9KRCtiUnVZ?=
 =?utf-8?B?cFhzdmhaaFFhdkJ6TUttTHdxM2pUWi9NSVdjcjJrL3M2NFRUZHVGZmQycTdw?=
 =?utf-8?B?QUtiK3l3d3NmRDZmVGlrZ2VJb1hpTXVudCs2aWJTSWpVbXdGYXU5MjF0WWdI?=
 =?utf-8?B?WDBodFc4ZHp3NXlIRCtmbDYyOXlwTExaZlRWcms2d0hFdmF4YkVaeFl3emVY?=
 =?utf-8?B?M3FUT1A1VTFZbHYzdGtFd1YyL1JTZHhOdWd1ektsWEd3b3dsTytUeU5MTHgr?=
 =?utf-8?B?Y3E3ZERsamFudVBUYVp2WHYxWDRTdTlhT0NpWlVjMTZhTW1JTDlJUkhZRnNo?=
 =?utf-8?B?Q3FMdndPS0Q2UVZBNU5FLy9HRHRkSXhOemVDSGNTRVZ1ektOTWpHM0tSeWM1?=
 =?utf-8?B?M2JORDNhUlp0QkpaMVdhbHVEbzlkSkVpUzlwdW5QM1Vxd1g2WW5EeUljS2VJ?=
 =?utf-8?B?NkhBTWQzblRWMWNnS3pTMDl4NEJkVldHNlo1a2Z3bGYrUXVPMXVjRnNYNE5z?=
 =?utf-8?B?QzV2UFRLV1VBZVkvcy9GMFFFVWM1bUZnWGhlSDNnMzFPOXhRTjFhTnIxYWVz?=
 =?utf-8?B?T0hrZENncFdRZ3UzTjZGR3pESml0dmFXVUt1S0NLeE5keFdvOCtqdmUvRkVv?=
 =?utf-8?B?S1RKeFg1R3Z5ZG96L3J2bExWb3pMbm9PaGo4Uk80U1NFV09RMVlWNDlmYzhB?=
 =?utf-8?B?bVlYS0l3d3VXS2wrUVlPN0NEUEszdXh6YnYzM1FoNXJwZVNpKy9XZnFBQUFy?=
 =?utf-8?B?dldMbDBDNi9lRjZoajZCb29DVzNDTnpmQmZLTnZXUE5MbTEwUThCenQyRFEz?=
 =?utf-8?B?SWVTT1h4QzJXN0NsMzBWZVlnMlhXclhxV1phb1ZJZkNCUjliZ1BIUi84RlFD?=
 =?utf-8?B?NjlmcVR4WjEvdG91cWU4Y05tM3VBRGZZSzFsMXhwQWJpem1qL0tHbzk2NnJk?=
 =?utf-8?B?dnJNTWhGbE9rUE5sNHgwT05DZk9rd29JTWNUdmdQZy9pbzlWU0V3c1g0TkNJ?=
 =?utf-8?B?YzJtSDZNTVg0SG1NUmV1Mys4TjZwZTBMdm1KUkpqR1dncFkzb1lUdlBySjFw?=
 =?utf-8?B?ZGdHWnZmdURKL1dOS1NWV1lXMmtka2Uxa0tEd294MUdLWUtJTk03dGxZd3BQ?=
 =?utf-8?Q?Qb/JjvhL79k+lJ3GMcwBjTc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a0130e6-52ba-4532-61a3-08dcf5066516
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 15:04:59.6438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kVbmJn0A6vz68BjG9YEcg/mAmNRu35jAumsCE98mxavgHUFC7sanGTTrn9JyHeKrXuzS8XA5b8j7493TUKoWLD7fwI0Dajc5lH+aIHO0fn4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7900
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




On 10/24/2024 6:21 PM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>
>> Sent: Thursday, October 24, 2024 9:03 PM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.org;
>> intel-gfx@lists.freedesktop.org
>> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Ghimiray, Himal Prasad
>> <himal.prasad.ghimiray@intel.com>
>> Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
>>
>>
>>
>>
>> On 10/22/2024 12:29 AM, Suraj Kandpal wrote:
>>> Add check to remove HDCP2 compatibility from BMG as it does not have
>>> GSC which ends up causing warning when we try to get reference of GSC
>>> FW.
>>>
>>> Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs
>>> requirement")
>>> Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
>>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
>>>    drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 4 +++-
>>>    2 files changed, 5 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>>> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>>> index 55965844d829..2c1d0ee8cec2 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>>> @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
>>>
>>>    bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>>>    {
>>> -	return DISPLAY_VER(display) >= 14;
>>> +	return DISPLAY_VER(display) >= 14 &&
>>> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>>>    }
>>>
>>>    bool intel_hdcp_gsc_check_status(struct intel_display *display) diff
>>> --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> index 231677129a35..efa3441c249c 100644
>>> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>>> @@ -8,6 +8,7 @@
>>>    #include <linux/delay.h>
>>>
>>>    #include "abi/gsc_command_header_abi.h"
>>> +#include "i915_drv.h"
>>>    #include "intel_hdcp_gsc.h"
>>>    #include "intel_hdcp_gsc_message.h"
>>>    #include "xe_bo.h"
>>> @@ -32,7 +33,8 @@ struct intel_hdcp_gsc_message {
>>>
>>>    bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>>>    {
>>> -	return DISPLAY_VER(display) >= 14;
>>> +	return DISPLAY_VER(display) >= 14 &&
>>> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>> I don't think this is the correct check or the correct location. BMG does
>> require the GSC for HDCP, so intel_hdcp_gsc_cs_required() should still return
>> true; it's just that we've decided not to support GSC FW loading on the
>> platform, so we can't support HDCP2.x. Also note that the this might change
>> and/or it might apply to other platform in the future, so any check needs to
>> be done based on GSC support and not platform/display ID.
>>
>> IMO when intel_hdcp_gsc_cs_required() returns true, the caller should check
>> if the GSC FW is defined (or if the GSCCS is available) and if it is not return
>> that hdcp2 is not supported due to unmet prerequsites and fallback to 1.4
>> without printing any errors.
>>
> Here is the thing before this I thought that should have worked too but after hdcp_gsc_cs_required()
> We call intel_hdcp_gsc_check_status() which has the following check
>
> if (!gsc && !xe_uc_fw_is_enabled(&gsc->fw)) {

This check seems incorrect to me. Shouldn't it be an OR instead of an 
AND? It is an OR in the i915 code.

>                  drm_dbg_kms(&xe->drm,
>                              "GSC Components not ready for HDCP2.x\n");
>                  return false;
>   }
>
> And this should have returned from here but it does not it goes ahead and tries to get a xe_pm_runtime()
> Which causes it to shout out loud which is currently causing a lot of noise in CI

See comment above about possible issue. But even if that is not the bug, 
if this function should return and it is not then we should fix this, 
not hack the intel_hdcp_gsc_cs_required() function.

Daniele

>
> Regards,
> Suraj Kandpal
>
>> Daniele
>>
>>>    }
>>>
>>>    bool intel_hdcp_gsc_check_status(struct intel_display *display)

