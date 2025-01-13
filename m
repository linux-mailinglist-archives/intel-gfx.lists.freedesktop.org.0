Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D3EA0C58C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 00:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D4A10E43C;
	Mon, 13 Jan 2025 23:19:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XBwl6tqj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B32110E43C;
 Mon, 13 Jan 2025 23:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736810359; x=1768346359;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9C4nAkHkR1Y9LZiNtL6QjnnBVH8qVu3j5B4Ebw0Lddg=;
 b=XBwl6tqjyWk7jex4vxyK9kDw4TXdJ7D3YKs6TSVUnsmGYEa233fcwoXK
 0b8K1MzjpKuoBhXi3KeJwUDYNBoTnYpdIgZ3k6lCc0h4ruIKXBgB2BDyY
 UBQ0j8aGfasSyMFsq8R4VmnhbE4IzVseFFfWr24cqcPXUDc+1dKMcjva6
 6l/CNpwJlfHhGUtCND8yfchD/seZ9VVrofxkt51XkuPwQPeamn5PWrYty
 ohjwPWFenarm4or+Y0znTXOLcAuyqMrLly44Zixbj7R22LV5uHqnBvVCi
 ylWLSY3n61qhkmgYS9b8TaGlC85vP4U/tCcvCdxb4lNcsSZzsTm0LKe5U A==;
X-CSE-ConnectionGUID: 24S9xqmtRo2WioN7PO6jxQ==
X-CSE-MsgGUID: rRx080EJS9CtKaGzG0BauQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="36782005"
X-IronPort-AV: E=Sophos;i="6.12,312,1728975600"; d="scan'208";a="36782005"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 15:19:18 -0800
X-CSE-ConnectionGUID: rFkuJdegQOq3qZdIqBtu5A==
X-CSE-MsgGUID: aGJmglR0T+yYUmeLHznxRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="109647608"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 15:19:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 15:19:17 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 15:19:17 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 15:19:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n5D1vMtDswLbTWDV1TYSaOptdgsB7eE9op9KUNGohdwjRl+JHmaeKjjB6EhkKONqE76pQ/ebnse3aSdJ58UblWvguqwgp7oSIuB3tJ8Rt0h0tEIbE1xwTPo0EDq2UTMRMocB0icdUM6Ihds7wnLwsgPDfFEqm7sTOh5GSeztg8BSEjeu9YLu04OqAB77wlTSFVD25kTbxx5TlO9+Vxz8tItQH/GvB/uc5Oy89Ny2ih7y45A0w7B+YbIztO3zpdLDN/4osk/ma++Zci7IYou+Rm6KhUzF9b4nFAti4CbRKwvJWIwReap2NV1Ke5F4QA1KAe4YPwZNPbt2taMrWhZtVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N1bjYYzZg9YjCxpLOLvA2Kcg+1zZYL3VYcL3KK/mlGI=;
 b=frdkhJirDWaybG5IEn/t/UNqeTw2v6SH6YVHQ0dv/s7RYwoDc4QMBgyAsKb7rl1GYoW9nb49bFtzKwksttzs3VDQvfMsVNTLUc4Z7WTFRFjE6vc7NAtVPAOmj0lcfmClnqLDtie/nWdVlexFB8+xPCY4HJbIttXkjmfh7YJgf1SAkaszTsx1bGZR0F91ynww/oq+MAjqu0cVc4V/+1LgNkt3KR/vLwWjmHR3fttUl8PlMRcxbwAhG90OL+afRyRW8+OWcZwbxZMfdJ89+cON/Hb6v1rCDaELQvQqRqiJ8b0IlIyg+emKgT3ycRYvk/3ECHJ1zeaKmMpSwoaT6uBCsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.17; Mon, 13 Jan
 2025 23:19:08 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%4]) with mapi id 15.20.8335.015; Mon, 13 Jan 2025
 23:19:08 +0000
Message-ID: <6910c498-6e69-4734-9075-442c26ef89d9@intel.com>
Date: Mon, 13 Jan 2025 15:19:05 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v2 0/4] tools/gputop: Add PMU stats
To: Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
CC: Tvrtko Ursulin <tursulin@ursulin.net>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <igt-dev@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>
References: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
 <7d77e830-54c1-42c0-9402-16937697d2bb@ursulin.net>
 <Z2XB1jhvfreb3kME@intel.com>
 <vpa2hxt64wyt3og363grrorkdebintntwrtsv5uvgxput3m3oj@t7yldrdsv7ca>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <vpa2hxt64wyt3og363grrorkdebintntwrtsv5uvgxput3m3oj@t7yldrdsv7ca>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0385.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::30) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|CO1PR11MB5028:EE_
X-MS-Office365-Filtering-Correlation-Id: c0d5362d-e4f1-44a1-06a9-08dd3428ae2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cE9remtLdWFrclV1Z0N5T2JpQ2RicEhyL0h3bkZ6T2dFWFYyYjNWdXNYV2xE?=
 =?utf-8?B?Z29walVoQUtTNlVEMlRzVlFiaXVIU3ZZQy92U2hKYzgzRzJMOUZmNTFweG1L?=
 =?utf-8?B?WTZEMTMwUHRnZWFLRmpXL1IvTHhhSHd3dXhHbmtiem84Si9ycXVLQkEzc0Y1?=
 =?utf-8?B?eFRJTFhCOUVQekNib3ZjZTJ1cExFRnFFMVBVSjd0K3U3d1pNZkJjYkphamM0?=
 =?utf-8?B?b21oU1A3dXhaaHhxQ0MyenMxeWV4NmxYZ2dadE5nY2ZQcldzUk5mUCs2ZUwy?=
 =?utf-8?B?QnZLSGtCcERZeWJJMUNIcU5SbVd3UkZjUjA4RC9TZzc3YkpsRHg2Njg2NU11?=
 =?utf-8?B?RjJCOEUyRHRLSE1CczRDWEN2ZS9zazlQSUxaM0RYbnlCVlA5bnRCMEUzeUpx?=
 =?utf-8?B?RHVsOFpYYUxiODA2Qm8wN1RWTWNoclVSK0Z5OVdUZmR5a3IwRVE1NjBlcnlH?=
 =?utf-8?B?SllSL1FHdkZkRENDdmtWTmw0bCtUWDhoRDh0WDAxak4wS0x4bFppcmJYS3pL?=
 =?utf-8?B?RmNpbDZnR2xuZmZOcy9QRU9mZjF5TGpVdWVPdjN2aVBDL0llMW4rd24vSUp6?=
 =?utf-8?B?RDRUVW1TdlMzdjlPaDZUeVhKV0hreDIyMWgyTWhtN2xXN3A4c3ZtWnhjTG5w?=
 =?utf-8?B?dUhBRm53bjd1NXMyekZGdVQ4WUN5N3g0S3hWdi9Qd2YzTWVQSlRDS3gyK0ZC?=
 =?utf-8?B?dTVFNkJWbFR6QUtDemo1SUJ6dGJnMnJBSVlFTjhiaEpOSzhCRFdyWk9ic0du?=
 =?utf-8?B?T3k4L1JxUkx1L2xpcEp2ZjBWNXljZlhKMDFIQmN2RnlQb3B2U0pIR1BRQURG?=
 =?utf-8?B?Ly9wNDFTUFlEd0RSdSs1cmRicy9RN2ZNMjZIUTg0RmJCTEU5M2U4UmVYZmIr?=
 =?utf-8?B?R3p0dE9iMWIwTzQ5YU43eXJla2RsQUJsc01DcGxhNUl1SzNIU2ZUOFo5NFJl?=
 =?utf-8?B?RTl4c0tBbmlGdFZTU2RKemw3cVZsMWtMT2V2cE1GS3BFWkNWdG1KeVlKQ0Zp?=
 =?utf-8?B?YzBERWJwdS9MQlFuUGRKeE0ySzB6RFQ0RnhyaUNwd0NDSVRFOWJjaTVUc0tG?=
 =?utf-8?B?WEM3Y1lzdWNRUDVBL1lXaE1oVVo5cnZlaHVteXM3VEY4WG9Fa2R0RmpleFBq?=
 =?utf-8?B?bndjaTJRaUticG0rNU1KdURBODFCNldKRFhZQkk4YitkNTRPcCtUMmI0QTQw?=
 =?utf-8?B?cUExd0VEaXp5VGlRNnUxQ3NLTzJleTdNeVhleFVNQ0lOMVhpVDRscGZUMGla?=
 =?utf-8?B?dXY5VlkwTXJtT1VwckV1RFp0T1JHZHZuQStwd0poendIZmhsbTJmOFNDMDJX?=
 =?utf-8?B?c2IzMEtCZCsxZ0thV084c1BFSDdHOWZIaG80ajZiZkp6dnp3R0psY3E1dG01?=
 =?utf-8?B?YzBPYU83R0laaUlsT0JtVXYyRjFGRGQ5dVUyUEtCSUdRMStSWmNwb1FkOU14?=
 =?utf-8?B?NkZsZGZYYk9Mckl3WG05Q09JYjA5dmFXbHM4dE96RUFOMWhhajNhK0FhWm5n?=
 =?utf-8?B?dUVRNFVXL1JUeXBGTnhTUDdMWStsMUEwTzhZV0JNYldjaHRnYmxNVjZrTWNP?=
 =?utf-8?B?cFdTQzFXU3NHZ3pGVTVxWGlBMlFMQVBEcmhBWDNhS1Q0WElpRkd2Nno5enJm?=
 =?utf-8?B?aGpQSTFMcDFPckNSK09QQ2xvdTNxUTBubXMwUmpEUVFFUFJXcHNNeStsSTJp?=
 =?utf-8?B?dm9GRzVkMDlYU1NXMU53VlB1dUFZak90dHZ1VUlmQjNhbFRJTEtrTTNpM2U0?=
 =?utf-8?B?YkNSenhLd0xSYm5CUy8ybnpLY2NxU21Xa29WbVJlSDRqTzNZZmNlQy9pb2xR?=
 =?utf-8?B?M3pmQXpHdFdsMmNUOCtjUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmNyREQzWHg3Zk1KR2pRcmdqeVB6S1F3d3JGZmUxeFN5WWhTUHV5ZEVlblVs?=
 =?utf-8?B?RGJEMmZUVUFqaFFwZnFsaFhVS0gveFFWcFk0Tm0rb0FkZW40d2NpVk9vRDd1?=
 =?utf-8?B?ZkVrQThuSGEvSDA0Tzd2aENsbUVPYUdkSDZyZmhGV2MyM2hrTlJwcm16Mzdr?=
 =?utf-8?B?TW9KdUQ1S2J3WllWcUN5aGdmdU11SUtQdUtjT2hXbWdJcVFjNGVXQmM5cCtP?=
 =?utf-8?B?QWZTOVVQellYMGswVkxCSkZIa3huZ2JXeWN5L3BMNE8xVUlheEhWSExnR1pi?=
 =?utf-8?B?eGFuM3BoU0xIUTIzZHV1MjE0NmVvZkY5SDBBMDNoSFg1N3dxbzlkcmdpWG1H?=
 =?utf-8?B?OHpaV084VDZES1RraUJIT2xMTGFJTUVoSjJDTVY4SHc1SGVKN3lyaVI5UDZ2?=
 =?utf-8?B?Q3p0WTB1QWZhMXl0d2lDUk5GK0dLOTJObmk2Z3FVd0VFRDNmWTBrOTRqUkV3?=
 =?utf-8?B?NjFiMzNleEhWemVKNWQzblRNbTkybGdSdlFTc0ZIY1MrdCtyLytkc0Ixemxt?=
 =?utf-8?B?dWNwSEFSWSs3REFNWjJkbjJaL1dTY3Zrb0cyVTg1S2IwWUZCaEpTSDJTQ2Fx?=
 =?utf-8?B?SWpJK3JJRHpqbHNPUFEzZmo4dDlqSm41Qkt5dFo0SklzdGg3UUNhRkE1VzBS?=
 =?utf-8?B?d0ZBNjhTZ1QwYWZEeTZidG15MDhMQmZqQzhXMzFkWkxMbmViNlpsbkNpbko0?=
 =?utf-8?B?a0VDazByUWZuZUE2ZmlOY2tpMno5cXdUZkxRTWxsZWxtQStSWDZsVkZHWlpT?=
 =?utf-8?B?NVJlSUg1QXVxZzNObnExeHh4T1ErOGpnNFZ1T3J1cUk1S3MxMWhpTFRIdUFO?=
 =?utf-8?B?REVyQ0FtOXE5SHRHZmdtUWJOWjZQaWxmMXJCQ0xLbXIyR3BBdzdqMmZWWlNU?=
 =?utf-8?B?elJEYy9IVDY3RDRCSlQvd09LRWxRanNRWWtPTk9YTWticXNYVDNRVjl0bFBD?=
 =?utf-8?B?Ym13ZmttRGdYTGlxTmwrY2Y0RXJwUTB5V1ltMmFuRW5HenRxcFRkWmYyMUVr?=
 =?utf-8?B?NjJzTzBrUnR3VC9WS0tTVFZzcW1YcHFIZVJNQWMyVDFhME1qbGJ6TnQyeTVG?=
 =?utf-8?B?YkRiWEo5a3R5Y3MxUFZKeC9QT0FHZ1VkN0kwVVpFcFF1aGE0MktGMWJVVFU0?=
 =?utf-8?B?ZEw0Z0xwcnkrVlV1TDR6cS9lblN6Z1FOV3RlZlhFMHFUQk51VTJSaDFaNFEv?=
 =?utf-8?B?YmJsSzkydnlndjlpdUJ0MTlzNXpaK3pPam45NnpZVG1VbVdjWC96MFlkb056?=
 =?utf-8?B?Vi94Z1Z5MnVFbVNPWXQzaWhEb1lrOGVORmtwc1F2UnVjKzBPbmhMYzM5WEVU?=
 =?utf-8?B?dnpHRXZwWFJHdU01WXR6ZXpTK2V1NXNVNEVXTERGbWg3TTQyRnk5UW1NbFJP?=
 =?utf-8?B?UEFLSHVZMnhEVDhTaUVmUjZRZkxmaEFQU3ZFOVFvaDAyOXdFc1RPS1FrMjR5?=
 =?utf-8?B?NlFFUFBLYTl2S2tLS0gvbkN0Zk1MV1ZsT29TM3NXWU5TaThWbHByUDBSK3dR?=
 =?utf-8?B?bDQ2QkpoWGVNSzRMbUR0eVZYS2x4dCtsaWVVMTdTZExtMEdKM2YxdVdtQmtK?=
 =?utf-8?B?K0x4SkpFWUxDYTFtbW5VNUp1ZlJNWTFOQWdldUNOcVFFRWdWWEJxMDhXSGJz?=
 =?utf-8?B?SjB3eWpsczhqL2JOWll6aldTVnZwdHdtMFYrMkR1SlNJOU05UlN4UkdNUGNr?=
 =?utf-8?B?cHJvWmNmUGRBdTU2alRnQjdZZlM3dnRrODBuM0RzYkZLdVJ3WUFyRnV1ZHBS?=
 =?utf-8?B?NVZ5QndhU2I3cGgrWE1DRE9wd2JMdDg5WlZtUjhlZHVCNENmNVNsZFh2NkNP?=
 =?utf-8?B?eUJoT3Q1Rm1BdlVLVE1kTC8rdDNJSzNZTjgrK1FQT21hSmpJeThwZ0F5WnI4?=
 =?utf-8?B?OVhlQ2p0MEZ0ZnF4cTNFSUQ3aGE1Sy8rQnVjdGQ5ZjZhU3RUdGVjZjBubzAy?=
 =?utf-8?B?VEE4azBWTFV3ME1NMnpsQWpEZ2hRYmltdG44VnJQS2NFa2lhb1Q0QXF0c3k3?=
 =?utf-8?B?OVlLYTJKQXFmOGk0ZkgxWnVTc3A1QjFOclZNb0s4UHE0R0hObVVlS0tUb0U4?=
 =?utf-8?B?NGJuZFk3aTBwR3dIWFppSTRzeVpOMjVPaUM5R1Z6SmtNSm1FQnB6cTZoY2Qr?=
 =?utf-8?B?SHJIalRFQy8wWlgvSnZKclVhL1oxZkYydGNsUEI5VHl1UE1mMXdJL2pNQldt?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0d5362d-e4f1-44a1-06a9-08dd3428ae2a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 23:19:08.3430 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vdRhYWWb48Z1+cGe9+hrgUvajGcJBzk6jSQgYwPoKHGHorqu0XYmj7fom+jL+nA5Dw5Pqbwc5T2ImfHSPHmVlMtc0ddr7jKLckvmQ9kzwRk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5028
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


On 12/20/2024 11:32 AM, Lucas De Marchi wrote:
> On Fri, Dec 20, 2024 at 02:13:26PM -0500, Rodrigo Vivi wrote:
>> On Fri, Dec 20, 2024 at 10:15:04AM +0000, Tvrtko Ursulin wrote:
>>>
>>> On 20/12/2024 00:37, Vinay Belgaumkar wrote:
>>> > Use the PMU support being added in
>>> > https://patchwork.freedesktop.org/series/139121/ to add freq/c6 
>>> stats.
>>>
>>> Brace yourself for the customary "why". So yes, why?
>>>
>>> Gputop so far was a reference showcase for DRM fdinfo, nothing more. 
>>> Why add
>>> a _subset_ of PMU stats to it? Any other drivers could be wired up? 
>>> How far
>>> do people intend to grow it, considering alternatives with nicer UI 
>>> and more
>>> featureful exist?
>>
>> Well, currently intel_gpu_top doesn't support Xe and we really don't
>> have any intention to add xe support there.
>>
>> We don't believe it is a better UI and more features.
>>
>> Hopefully someday we can get qmassa [1] part of the distros and make 
>> that to
>> be our default to use the uapis that we add in Xe.
>>
>> But for now we were in the hope that we could use gputop for that 
>> which is
>> the current tool that supports Xe metrics. But well, I just noticed that
>> at least in Fedora it is not packaged :/
>>
>> $ rpm -ql igt-gpu-tools-1.27.1-0.4.20230215git45da871.fc40.x86_64 | 
>> grep top
>> /usr/bin/intel_gpu_top
>> /usr/share/man/man1/intel_gpu_top.1.gz
>>
>> [1] - https://github.com/ulissesf/qmassa
>>
>> So, our options are:
>>
>> 1. Add all the Xe support in intel_gpu_top
>> 2. Convince distros to build and package gputop along with 
>> intel_gpu_top in igt
>> 3. Convince distros to adopt qmaasa
>
>
> I think we should handle gputop as a reference implementation for a
> "top-like implementation for GPU".  I think end users have tools with
> better UIs like qmassa, or nvtop, or htop or other graphical
> applications and we shouldn't try to block that - doing something
> beautiful in gputop would be a lot of effort for little benefit if end
> users are already served by other tools.  Letting gputop as a reference
> impl for these tools to borrow code or consult, would be ideal IMO.
>
>
> As Tvrtko said, currently gputop is a reference showcase for DRM fdinfo.
> I think it can grow some capabilities and be a reference
> implementation for top-like application. If that means adding pmu, then
> be it.  However the pmu support needs to be added in a proper way so
> the tool always continue to be vendor-agnostic and that it's easy to
> add support for events from other vendors. That probably means that
> adding pmu-related things in the fdinfo or drm-client libs are probably
> not the way to go as a) it's crossing unrelated abstraction and b)
> breaking the vendor-agnostic nature of the tool.

The pmu_info added to drm_client in these patches is just a void pointer 
to the info. So, if a client doesn't support it, the freq/c6 stuff will 
not get displayed. Tool should still work in that case.

Thanks,

Vinay.

>
>>
>> Meanwhile our PMU are blocked...
>
> I don't think they should be blocked. The kernel impl was blocked for a
> long time in other things, not having PMU included somewhere like
> gputop.  If you want to read pmu, the #1 application is perf
>
> I think we can add pmu in gputop as a reference. If someone can grow
> gputop to have all the intel_gpu_top capabilities, but doing it in a
> proper vendor-agnostic way, awesome. At that time we may then retire
> intel_gpu_top and only use gputop as reference.
>
> Lucas De Marchi
>
>>
>> Lucas, Thomas, thoughts?
>>
>>>
>>> Or in case the conclusion ends up being "yes", then lets at least 
>>> share some
>>> more code between intel_gpu_top and this work. Ie. make it in a way 
>>> gputop
>>> completely subsumes and replaces intel_gpu_top might be an idea.
>>
>> with this I agree as well.
>>
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> > Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>>> > Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>> >
>>> > Vinay Belgaumkar (4):
>>> >    tools/gputop: Define data structs for PMU stats
>>> >    lib/igt_drm_clients: Add pdev and driver info
>>> >    lib/igt_perf: Add utils to extract PMU event info
>>> >    tools/gputop: Add GT freq and c6 stats
>>> >
>>> >   lib/igt_drm_clients.c |   6 ++
>>> >   lib/igt_drm_clients.h |   4 +
>>> >   lib/igt_perf.c        |  68 +++++++++++++
>>> >   lib/igt_perf.h        |   2 +
>>> >   tools/gputop.c        | 225 
>>> ++++++++++++++++++++++++++++++++++++++++++
>>> >   tools/meson.build     |   2 +-
>>> >   6 files changed, 306 insertions(+), 1 deletion(-)
>>> >
