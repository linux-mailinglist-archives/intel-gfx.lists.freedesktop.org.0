Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9EAC8CEA3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 07:26:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE5D010E753;
	Thu, 27 Nov 2025 06:26:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GCiqXkM2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4224A10E6F7;
 Thu, 27 Nov 2025 06:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764224770; x=1795760770;
 h=message-id:date:from:subject:to:cc:
 content-transfer-encoding:mime-version;
 bh=qzBLvnhSMytwTJQOmSaIo0wz7lMYnTZbgu7FKzRVtQg=;
 b=GCiqXkM2TO7cl/xLu6eyoXwVPH+qj6+fT2r4wcKESuHYViz/DLoCzx7S
 rL6HwwQQUi2wzKzxU2NCR5cWldH/8lR5ZlrE9zU+dR2H4JUJtBFVRi8FG
 Ihf2t7MCdXPzPxxyzRw8XD9xG6JYqBInq9jfpHqTug8T/SfsV2MU55Vty
 +C0ePOhEJlrHn0zF17u8h/r3glvbbSSxTqAds3mDnQ0rhoySq59QfGevL
 SzbWbQdmTlPs61KyQAOnTvQoVhjm//xf733LPXAblqS0niJeypTJ7U6y9
 UnDxC2LYOQ8s1YIdP8AIdK8jM/0QisZk9e5eUQvWlM9O9d4yIwr8azE5o w==;
X-CSE-ConnectionGUID: oPegPsVGQmmzsvmpJOpebA==
X-CSE-MsgGUID: XRBV0HtJT9itKcq27uu/TA==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="68860362"
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="68860362"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 22:26:09 -0800
X-CSE-ConnectionGUID: 3XzMKlZ6RfKlKxludbHWmQ==
X-CSE-MsgGUID: HtiorqQDTzejTIaC/T7bfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,230,1758610800"; d="scan'208";a="197302946"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 22:26:10 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 22:26:09 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 22:26:09 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 22:26:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a3Vj/6Y2QEShpk2YJSnD0CdRwtnFV25V5bhOue6eTNg2bYkgvtC25fTwbu2QEQYIVDagf+YjLBMUQkmUHMYvaM8C8DIuF0qlApTH892nHrXwVzVIdduGfgbeQzBhv3ij9SVwQFwzTycBoEt1TeKeOxFWbzGF3hixZFYXo68wHGH1K5E3RG9axdcrq1ILDfgdwpFN1edhM0Hu8kmMMlAVMIh5RjbjtKvAfUqQ5477M8exNa0RFGLWF8N2JWWkq+E7Y+6tIH0GzYBnB1FCUPERLJXua8smknCuqoOUzIl9CUxVwyz0AKIoYcYMCkWoDC3txsDIacspXQrvkibv9SrGkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4uhN2GN4dYZDSpHYli343jQCrT6U9JQSPJ/Z40qTuwI=;
 b=ZrQJ/W2QKpJI6LVgkhF/NXEQ6ycA9K4ZwFc8F9yQC88DPBUe/ALV8H1o/K0kR9IFTtE4YjJtUGDMXibxcoQodx4KOVlLIeZY3DSpSBbf6NCKPE7AkkrvFHJKnOZYsO0VWBsqmUIVe6yLShy5aYV0aCxFKDzxdg6sAryIdUrrlDlJ5fgxQYrpnyvIPd3SvVZ8ZzVJMVcQEtMGIKt//zna/vMx1Sle7L/UTxj6WBWvA/LdRZzimXSdmQgyuDIDoAegjLaD72fQjZ9YgE/5P3Idxp9ccbXaTQN5WYxrEUoi0AXtEkSIwnnWyWkqb/jL3bqPG0G9EKE+hMGEennPAv7eyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH7PR11MB6032.namprd11.prod.outlook.com (2603:10b6:510:1d3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 06:26:01 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.9366.009; Thu, 27 Nov 2025
 06:26:01 +0000
Message-ID: <03c013c0-be12-42ab-91d1-f87395c890e3@intel.com>
Date: Thu, 27 Nov 2025 11:55:54 +0530
User-Agent: Mozilla Thunderbird
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: REGRESSION on drm-tip
Content-Language: en-GB
To: <brauner@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Saarinen, 
 Jani" <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0068.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::16) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|PH7PR11MB6032:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b9ad230-5b0d-48ec-1d2b-08de2d7dd5cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T0tmbGl6UEZJRXMxdWUyTEh4TDdySi81VnZGZ2N4eEdBMnQ1WDVqd1BzbHhT?=
 =?utf-8?B?NjlrSHBmSjlxVmFORXFzVHlTUzIrOElJN29qd0tZb1JhYlZZWWhBS3k3WUxm?=
 =?utf-8?B?STdvOTFSTlZQMTZLbHNWWWNMUzE5ckw3bFBuVDBha3lUbHI2QW9JR2d3TkpQ?=
 =?utf-8?B?WEJKTjlXU0k1bXpmNmMvNDZlYThPdmRzL05Hc1ZuSDduVTVwcEZEb08vWms2?=
 =?utf-8?B?VTh1b1FCcGExd3JVcWg2Vnk2WVFkSkMzTjIyTTdIU2ROcTkwbGFmQStGS2du?=
 =?utf-8?B?TGtOUnFjM3BXalhRYmp3Q0VIeThlMHh6UjJ3OE00bk1nQnA2a2ZuYmtZdGxN?=
 =?utf-8?B?RC9ueXZhUDQ2MERpWnhWK1hKUVRqYWlBZVlOMER5SVJOVWdJU0dIQWVjWnVR?=
 =?utf-8?B?VTkzMDlrMDZFY2lVN3FZb3NKN0k2NVIxaDdSVXYwMU1xMXVNS2RkYjY3cGZB?=
 =?utf-8?B?cUFVZ09iS1pmSGlTMEZZT1BBWTJnaGhTdzBxOUJCMVhWMUhJOTRxZkJYa3Zw?=
 =?utf-8?B?aDVEV3JjNDBuWGRIYUJJL1RoWEtBT3dNUHNWNUZHcDRwOTZZQjFobys2SEhU?=
 =?utf-8?B?eE9hZFptMGpYbjRSaFNocU01TmFORU9MRysybmlIWjZxU3RTelpweVViV1Bn?=
 =?utf-8?B?ZWhKZWR5UFMvaU15R3VJOUlaTklSNUVRM2pJRFBzcHoxSGZ5b0VuNldIS0Ns?=
 =?utf-8?B?eXZGT3RTVnAxbERXMnBMYjFHQUZEOW1yMDJsSXVwVkJDanRkSENaU2duREY0?=
 =?utf-8?B?UnRLRW9OcWtGRGJwTnk1bmd3c2Q5TExkeElwWFA5cEhYRVIyai83NzlveGto?=
 =?utf-8?B?dmZQd0ltNkFydFlFbW5TVXN5VTgrZVNoUE9DbEdHNmV3dGxlaUVVSVA5WUpQ?=
 =?utf-8?B?ZWpwMGlVVUYzMUtvbmh3b0hJZHpZb214L2NrMDd5Tk1uUnhhUi94TGUwbytI?=
 =?utf-8?B?ZHp0RWk1NmNpOElodjZHVDV2Smp4TzdWNVZoTDlNQit6Vk5MUFlpWU15WXRL?=
 =?utf-8?B?MkQ4bEM3cGNVYnc2aWtlNnpFK28vNktFdlpuUzRHWFZ6V0lTTmQrMVU1ZHJG?=
 =?utf-8?B?L3kxd3JWNXY3elVXbXJvdmFLc0FJK1g2ci9OVHFFamxsOUdFV1NwR0h5bTFv?=
 =?utf-8?B?WHM3azRMc0lKVGE5VjNiWlhvZ2haSEFiMFRnZjAxMlBNcjR3TXF4aWJzY3R1?=
 =?utf-8?B?U3BuK0dzWFhJWTVMa2RSMFNzcWg5Nk9WWUsxSGlsUU5XTHF5Vklwck83QjdH?=
 =?utf-8?B?Uy8rTWhEZVlpRGt0VFNaN0FEY09DYmZtVThJbGpuSmhzRFM5ZnVOQmFnN3o1?=
 =?utf-8?B?U3BmL05kTWs1ejNmODhuQlpyWU9veVlNbzlDK2UvVjhuVVVwRG1kaHRZaHZ1?=
 =?utf-8?B?aUNZRkltazVDRkpreFNiVE9xOVdlNnpUUTJ5MVhPQ0lDaHcxaSszY0ZDRjZF?=
 =?utf-8?B?Tjd1SDFhTU1JbEErMjdHNjN0aHJtSjFDNmtDOVNnaWdESzdkSURtNzVGT2k2?=
 =?utf-8?B?V1hhY2c4clVrcnRONEZ0dVBoREdreHRvb3N1WG1rSW14N0F3V0FCMjliVmdB?=
 =?utf-8?B?UVZFTEVmOTRWMDNKUFhWTTFyVm5KU3BLWExkdmgyVE5HWnhzeCs5TVArWFIv?=
 =?utf-8?B?WnpGSDkzcitJSXA5VkxvZnBzSWZTL1FPSEM2RlRRZklIYVJXQjMyKzU0NEs1?=
 =?utf-8?B?cVM5bXFLWnN1bS9YRUV4VjFIY2JvNmlrQlpra1BEWEt5MVFXWnZ1eGFKV0Vp?=
 =?utf-8?B?QVFUeDd2MVFHVXNTQTVxRUprVDJWZTV4L0JPeDJaWUxtd0laWjF1MDlUYTAv?=
 =?utf-8?B?bWI2YU1CcDlIOTNBMG9rMWhsdzM5VUJKTWFWNFRweUc4OE5NUVBuZFJydzgx?=
 =?utf-8?B?ZGIvbmY5Y3VwNTJ2MnpZMTM5QWMxazdYY0lDSFpMQlRLNzRFalNTcE9ZME9l?=
 =?utf-8?B?YkVwWG9HOS9NZlh3VEJCZlFjUmJMSXpJd1hEOFlqZ2ZDOE1NY2E1VDBtancv?=
 =?utf-8?B?anFkcGtybkhBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEF3SGtQOVZvNDNUdmt5c21Scm5sdVVDcUZRelBzQjNvT2VKWk4ydmIxMitt?=
 =?utf-8?B?c08wdjhTSkpsVWNIQVNYeDEyL0hoUzhWUXg4Slk3RXdiTmlHZCtFMzd0Tlp1?=
 =?utf-8?B?SDg0VEhkMG5BMnZQdjBLY29kYmZYOE4xbWlhRXdYcFNveDZnbENXbHNxcFBz?=
 =?utf-8?B?WGpEMUZqazVib09TeExyZlRMbnU3OG90U1lPMW0reDhGZVUyb2FYNmNvK0Rx?=
 =?utf-8?B?SWxPV0g0Y1pEU0taOUJuQ1JuUStuSWpzVFB2dERKVTd3MWZKbmdBdXhwR2tC?=
 =?utf-8?B?QTNuOWQwNVlGTXN3UnRoOFRhOWtRVE9GbzNaWlBzN0E0dGEyS1I0NUhaSG5O?=
 =?utf-8?B?OWlOR2lLZEw3Mm5ReVQ0aGNCVGl0UWI5RGVRRzhwVEcwWENwYUo4ZFc4am52?=
 =?utf-8?B?UDFjL2VSd3FOM0VjWExtVFM3aC8xTUVmNHc0OE1vRmI5MllSbmV6alcrZlNt?=
 =?utf-8?B?bWZJU3R3ek02bWFQbk1TbTJ3RjRmYkVXNUFPUnVXMGNUNVFvU2Jib25TNWZS?=
 =?utf-8?B?MXJyNXlKRi9GdjBLTFhlUlIrSmxsSG5UeGJoNHlZbTdkSjVjZjNUZitwTmRt?=
 =?utf-8?B?djJ5d1FRZnhFSnFOSjZIdGcwYUhxd2ZFbFFHZEkrTmxLczdiZGZDQ2JPR1dU?=
 =?utf-8?B?U2F6M1dmNDcxc3llMjNwUUR1WHJLVjhucnRqSGloTFp3bVhneFBFMUhQS3lz?=
 =?utf-8?B?bHUyTWNYRTFYTXRSK1RFYnZZYzRnemlNMDc3bVlCT1o4aTFScEpzK0k3eXJs?=
 =?utf-8?B?bkRVaGs4bnA2OWVrT2M5OGU1TXYvdVZ1Q2YrRGhadE1vKzJwbnpJTncxMHYy?=
 =?utf-8?B?ajV6a3AzR0NxT0RyU1NCdFNNVldOc0E5UE9zd21HSjFrc3JsK1NXWmdSWERG?=
 =?utf-8?B?QloxUkFUcytiemlsM1BCYm9OQ2pLOWtLVG96eGpJL0RNanJvVi9kL1R6M0R2?=
 =?utf-8?B?MGNEc0doVGppOTBlemRJNUdIcFRGa0p5dGwzdGxLUXZ6VW0vMjAvVkVlTG9w?=
 =?utf-8?B?Q2VYMkVYYzNLR2xFRG5CMmJIR0FjcG1UVHh1NCtNOU0vNVM1bEdYbThKaUlD?=
 =?utf-8?B?Q1dvSUN4V2t3WDhwUVNFVDFWdVFiUDNESHBkcVZqMG5MY0wzMmdNSGZlQ1Fu?=
 =?utf-8?B?SDNWQjZGSlYvb2dwNzVJM3Z1MEdBQmZSekF0RFlMWkVoTnBVY044amxyallC?=
 =?utf-8?B?NUprcHpVLy8vclRDMnI1TWpmaHhidnJITHZ5UGZLZmJZcFp6TUFvcFg0L2ZR?=
 =?utf-8?B?c1BJMkFCd01CMDZ5dWlsTXROUWt2L1Nza2tHWFBsdGU1MVJOVGtGMG02Uncz?=
 =?utf-8?B?WmNTWWNxSEc0R0ZHdkVUSU9VM0U5REtwNjF2bVpGS012azlXV0lMZkY1Rmxi?=
 =?utf-8?B?c3cwVFFsc2UvNU4zN2hOSTNlSDc2amYvTjNoaWh0d29FcCswa2hmNDhPbk9J?=
 =?utf-8?B?T1NXbU1XV2FaVWErVkdkSWR6c24wRXBaQWtLSW1wWVFHcDBpcVMxT2VjUjMw?=
 =?utf-8?B?aEc2blRhK1dLWHB5WU1KMVdsVTFBTE16SzRSQVVkWngydTV0emo4MWgxY1lN?=
 =?utf-8?B?QVBWVG1VSURtalV6c1hoRVFlU0xvKzBsaHJvY0ExOHNHY3hWOXFMTWd3b2tC?=
 =?utf-8?B?dEl1b21uR1VGY2tzSzIybC9GMnR4NE1uRGhHVDk1ZFcyZnpVdlBheFRrT1Bz?=
 =?utf-8?B?aFRId1grZHY5OXU0SjlTbXNWaUYvNnB1LzJzTm9FY3k4ZWVPTE4vZ0ZiK0kx?=
 =?utf-8?B?R1BONU8rYlRWR3FWZkkrVk1YNy9uMGdCejJhT21yUG1FbDFWQUVSK2RIYXRK?=
 =?utf-8?B?RHJLSFI4cVRFZm1RcGllZkNPM3laU3BaWUpDdUttTDRNT0hoYmVkRUNwN3Q5?=
 =?utf-8?B?cTkvVm5ueGlubmZwNEpxWVBRTkY2OG5YditQaWdsK2JJaXpFcmFxVUc5aWxi?=
 =?utf-8?B?L3BCN1NQUjBVV1JpZExiallXWFVYRXpHcWhmVmt0a2VFWm1xbkVvZ0dOMTJ4?=
 =?utf-8?B?OCtYcS9UMDBtZGxFZnZCSzNQekhzOFZKK0lwakR4NmVsa0MrSHlGU2JrZUw0?=
 =?utf-8?B?a3IwaFZMWG5NeGhTOE5Nb0ZjS1N3NFVRU2dyZXI5cmp4amZDYnJLSFFoUnpw?=
 =?utf-8?B?Q1pybmY5VS93U2Q2Z2F5WjgvNzJVQUtEMllieUFmazZPY1V3ancxS0dxcTF4?=
 =?utf-8?Q?9j7XNvTJHeiaR6a7u8xvTQg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b9ad230-5b0d-48ec-1d2b-08de2d7dd5cb
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 06:26:01.7155 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tOaa2nZr5N7AahkTcMzIb2wdIH/v/WskgQaFdAc4rkcitohW0w2OH5r+l7VZ49QPiPIUJhkrn1za55AviCQZp+vXtC6g039C67LwaFo9pqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6032
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

Hello Christian,

This is Chaitanya (again!).

This mail is regarding another regression we are seeing in our CI 
runs[1] on drm-tip (with both xe and i915).

`````````````````````````````````````````````````````````````````````````````````
<4> [157.687644] ------------[ cut here ]------------
<4> [157.687768] WARNING: CPU: 5 PID: 2277 at kernel/freezer.c:139 
__set_task_frozen+0x7f/0xb0
...
<4> [157.687923] PKRU: 55555554
<4> [157.687924] Call Trace:
<4> [157.687925]  <TASK>
<4> [157.687926]  ? __pfx___set_task_frozen+0x10/0x10
<4> [157.687929]  task_call_func+0x6d/0x120
<4> [157.687932]  ? cgroup_freezing+0x89/0x200
<4> [157.687937]  freeze_task+0x98/0x100
<4> [157.687940]  try_to_freeze_tasks+0xd2/0x440
<4> [157.687946]  freeze_processes+0x56/0xd0
<4> [157.687948]  hibernate+0x129/0x4a0
<4> [157.687951]  state_store+0xd3/0xe0
<4> [157.687954]  kobj_attr_store+0x12/0x40
<4> [157.687959]  sysfs_kf_write+0x4d/0x80
<4> [157.687963]  kernfs_fop_write_iter+0x188/0x240
<4> [157.687967]  vfs_write+0x283/0x540
<4> [157.687969]  ? free_to_partial_list+0x46d/0x640
<4> [157.687976]  ksys_write+0x6f/0xf0
<4> [157.687980]  __x64_sys_write+0x19/0x30
<4> [157.687982]  x64_sys_call+0x79/0x26a0
<4> [157.687984]  do_syscall_64+0x93/0xd60
<4> [157.687987]  ? putname+0x65/0x90
<4> [157.687990]  ? kmem_cache_free+0x553/0x680
<4> [157.687995]  ? putname+0x65/0x90
<4> [157.687997]  ? putname+0x65/0x90
<4> [157.687999]  ? do_sys_openat2+0x8b/0xd0
<4> [157.688003]  ? __x64_sys_openat+0x54/0xa0
<4> [157.688007]  ? do_syscall_64+0x1b7/0xd60
<4> [157.688009]  ? __fput+0x1bf/0x2f0
<4> [157.688012]  ? fput_close_sync+0x3d/0xa0
<4> [157.688015]  ? __x64_sys_close+0x3e/0x90
<4> [157.688017]  ? do_syscall_64+0x1b7/0xd60
<4> [157.688019]  ? putname+0x65/0x90
<4> [157.688021]  ? putname+0x65/0x90
<4> [157.688023]  ? do_sys_openat2+0x8b/0xd0
<4> [157.688024]  ? __fput+0x1bf/0x2f0
<4> [157.688028]  ? __x64_sys_openat+0x54/0xa0
<4> [157.688032]  ? do_syscall_64+0x1b7/0xd60
<4> [157.688034]  ? do_syscall_64+0x1b7/0xd60
<4> [157.688036]  ? irqentry_exit+0x77/0xb0
<4> [157.688038]  ? exc_page_fault+0xbd/0x2c0
<4> [157.688042]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
<4> [157.688044] RIP: 0033:0x72523c91c574
`````````````````````````````````````````````````````````````````````````````````
Details log can be found in [2].

After bisecting the tree, the following patch [3] seems to be the first 
"bad" commit

`````````````````````````````````````````````````````````````````````````````````````````````````````````
commit a3f8f8662771285511ae26c4c8d3ba1cd22159b9
Author: Christian Brauner <brauner@kernel.org>
Date:   Wed Nov 5 14:39:45 2025 +0100

     power: always freeze efivarfs
`````````````````````````````````````````````````````````````````````````````````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide 
a fix if necessary?

Thank you.

Regards

Chaitanya

[1]
https://intel-gfx-ci.01.org/tree/drm-tip/index.html?testfilter=suspend
[2]
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17595/shard-mtlp-6/igt@gem_exec_suspend@basic-s4-devices.html
[3] 
https://gitlab.com/freedesktop-mirror/drm-tip/-/commit/a3f8f8662771285511ae26c4c8d3ba1cd22159b9
