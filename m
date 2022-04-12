Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE90A4FCD68
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Apr 2022 06:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 837D510FD52;
	Tue, 12 Apr 2022 04:04:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B392510FB7B;
 Tue, 12 Apr 2022 04:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649736251; x=1681272251;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wfY2dtJBvDxkL037Adkk9JEwiOOYkOYtJpWCBV4I/8U=;
 b=JN1kZ0qQuzk6pUhuRTxTFKK94eF7j1kaSNizvsed19kVJZlqKCf7TXkE
 jRmmMEhTqbrnByPBVN6BsxoPQpbZxbTjaQbzefpJdasyXMqsfXXFA8YoH
 uDLt9g20J85l4uQLmm3TG2vgGUBAsq9OtFDV1aRyk3SutglQUIFyoHNV2
 uEzsEg5mKzovdEv+8VSgy15J2HQ/8fjQNFyJOTcU9yvv30P60oyELLZ6u
 bsW9EoUr0wU2wXQ9zmY40RQ1kwY7XKkLediGfCafpLJhN3Shz7N4Dm85A
 6b3o57RHa0VdAr83qM7PH032w5dM6abYtquookKecqQjyfs9GtJ78+e37 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="287284181"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="287284181"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 21:04:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="590157643"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga001.jf.intel.com with ESMTP; 11 Apr 2022 21:04:10 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Apr 2022 21:04:10 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Apr 2022 21:04:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Apr 2022 21:04:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Apr 2022 21:04:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kOWf75WzS/xQ8JRUTm4gUJB4ZYksW+yNZvVEFJeabUi2+HglzqPzVigrLS/b3TV/J+qk4Eq50Ub+AE8wrImdfjZTL6vx19DLGR5wvqHUPpGIJSdYuQWSdiBaJfriIMtZxABE/rDY0QgqGIXx3rwot0IjiJ4+0eRVJz7yAtSgghmzn9d1vp4mipwBNRhASYOMXkjHH4S5Lb5vfqDmdzKUqTVoR65oG+EMRnJOCss1fYYyWcjM6Gok8mtUXxGDQtGP09/Q588hfaqxbUC7j7bzqOoQobt1hkH6H3imgo0MCb/m6EBMU3oLb55JpPa2zILvZVbNaL05opqk+X6pyLknlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yDUBAf/XY+pFmzn9JEa4QT3Umup5/Vm2E7NhzhDrbIk=;
 b=hb2SYBXcOmyP/rhUQz7ZgagUp1zt2rZhQ/qlTwaKMYZnb9/jq5qRBiwpLBwGPrw4Ua3ae68GyFMcAJeee6ZQ2fRgvKAj42/3H0LB4/rBPXaSk1cVQhIZGLKLxoVgpPVmCTd7N9tCeBucPOohGZ74BEukqNQsEpS21HBeoT8ySgkpWzSDZSDYUpuutYNDTDxeGfPMoQ/Tf38nV7+40ik9ydy+EgmDByaJ5YBMYLaqB7zdhuEBFufySlbOe/FG2xmLp5oEy6LpnTYCZtiQqSQU3M6Cs0xkrsjtA4xYMcshI4McNlcubVHBvCNxF3ZtsoLLf4fJVrfRTgV6zKDulHVlpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5719.namprd11.prod.outlook.com (2603:10b6:8:10::6) by
 BL0PR11MB3218.namprd11.prod.outlook.com (2603:10b6:208:60::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5144.29; Tue, 12 Apr 2022 04:04:08 +0000
Received: from DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::905:c4c3:7416:d3e9]) by DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::905:c4c3:7416:d3e9%7]) with mapi id 15.20.5144.029; Tue, 12 Apr 2022
 04:04:07 +0000
Message-ID: <a53c017e-01e1-c642-fe2d-68d6f3f51f9e@intel.com>
Date: Tue, 12 Apr 2022 09:33:45 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "harry.wentland@amd.com" <harry.wentland@amd.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>
References: <20220411095129.1652096-1-bhanuprakash.modem@intel.com>
 <20220411095129.1652096-2-bhanuprakash.modem@intel.com>
 <DM6PR11MB31775291823E7A58E16096D7BAED9@DM6PR11MB3177.namprd11.prod.outlook.com>
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
Organization: Intel
In-Reply-To: <DM6PR11MB31775291823E7A58E16096D7BAED9@DM6PR11MB3177.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0035.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::10) To DM8PR11MB5719.namprd11.prod.outlook.com
 (2603:10b6:8:10::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fef27c30-bc10-440c-270c-08da1c397da0
X-MS-TrafficTypeDiagnostic: BL0PR11MB3218:EE_
X-Microsoft-Antispam-PRVS: <BL0PR11MB3218FB42D887FBF2DA105B478DED9@BL0PR11MB3218.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H2C6Z8LslILc8CU5+lds3rod9nT20wGkCWa3szdVPhe7WHJlt9HoKYlvGLKy+nE2Gg+gZlriFDwofnGcskX1S3oowC+tgi6UU1d5RJMYK1wOK56IcWR/STGTfVLqTsw9PkKvB01HJgz8VP4nvjaRTusMAWXDKinKp6MHsQGgq0ddzgedL/nZl90DkRZ3g5sIHnxuWCG6LPw4LaokAzLim+J7d0RYwW09du4+7CsM3zc1mx3eRpJWBvVCn1IwCAKtp6XUobYN6sT2R5pQxQloJl4ZK2EZu6FiNDHAZDPhiXaDvWEMZOd5f/luD7AkMspahO0pua2LYh7bATkgDm9hQCmqGyoJT4ciPHJ3AoYfJ4nE7Quh0klyXcQHTb8y5ilxLu6EAOHgJFdPT9vAwPVm66FHC9cf8Z+UrFm/CrZz+EywW0z8YjbnVkEDykEYmf9fRBGdXNuExkeKZrDGBdrJ3V7kNdHUpi+8cQUjtOWPr4JT72jgLxk+bik2/FmjCcZl8iVa94RPh8MqGtFOS12b1f7UgA6VX8VmobZaRvRA1SfHxw37HZZBCMowtSN+lUs2x011fbGqTTiHJoHiDvOf9IOOwkjbkuqcWmBcJArwAYOlxKqiPgHkxliSE26XZpNvGqV8XImOHEeHHGRTHpF4ldxkk3GAIvnff5MlHJMpJ8h32z3PBmm8vqiWw4165O9gX2891S1Ig9knup0o02CRMZ0lqD2KLJ8ZewOBAVhA0AaxBMdMmf7FRYFRDyNW6TEk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5719.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(36916002)(921005)(6506007)(6486002)(5660300002)(82960400001)(6512007)(508600001)(4744005)(6666004)(2906002)(31696002)(186003)(86362001)(26005)(2616005)(6636002)(31686004)(8676002)(66476007)(66946007)(66556008)(36756003)(316002)(8936002)(110136005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGlvZUdsaERoWVFSWnFnMi82Ni9XdlBEMm9JcVBnRXp3cDBFb0NiNG9oYjJX?=
 =?utf-8?B?WmFabnNXdVpjbjRLVDJjVUxNdkFDdEE4Q3d0MGRwZE5mbUxoVE9Wc1VsNjVJ?=
 =?utf-8?B?S1pZUnQ0bFY0d0gxWmlnRG91OXc3VS9uQzJEODZYZkFzamt2QlFOT3ZrOTNX?=
 =?utf-8?B?OUtaVCtCV2xQUENiK05iWjhhakV4MjF4RXpVa05tbEswVnBueTZxMjAyellm?=
 =?utf-8?B?S0dWQ1dkT0EvZ3ErUDYxTUx5K0lncFB3Mm44NldKcUxCZUhsdys0RWxWbGRI?=
 =?utf-8?B?OXZSRGR2Unp3b2pPSlJIZzRDdXI4dlZJTnEzcTYzU1pkZy94L3U4UjMvVVVy?=
 =?utf-8?B?Ynlva3ZqeCtWeS9qaDJxZ3VsL0wvMTdhUHJ3OGpBR2dZYUNvUnV3MnJiTkd2?=
 =?utf-8?B?SDJsT2QrMjdTZDdwTC9ET0hvS3JvczVWTWJMaXNmM1QxNmhkSjdLbFFRbTZZ?=
 =?utf-8?B?dUpIT3JVVy9KempkTVFsQ3F0UUE5cDZjVHRucHZKUU9hYXYxUUZ1blZuZHpo?=
 =?utf-8?B?RnlJQXhscmh6a1pxUk80VnZ6Mnpvb2FpWWExa2tCVW5GYzdBWXBQbGMxUERF?=
 =?utf-8?B?MGZHSlpUUHFiOVE4Q0g0TlBlNGZBWmlwNGdseDJ6eC9hWnBZMnI3YytSWjRu?=
 =?utf-8?B?aDhFWXVmL2RmaUhLeDVoRGIvdGpJdlEvc3JnTWFWSkorT3NKTllnSHU5aDdn?=
 =?utf-8?B?YjVEWG1QWHRkQ0JmcmFYRUxoWE5MOU15YTVxOVQ3d25GS2QwUkViYVMwTXBu?=
 =?utf-8?B?WlJ2Y3YrRXE0NUFKbzNUMGMyU1RqYzRFc2daRFZESHpiT1lCYWN3eDFhbWt2?=
 =?utf-8?B?QkpqbHAwSVBFWDRwZDkrTERJakJKZ0RuK1o1ajlESUNyMUxwb3ZMcHhUak1B?=
 =?utf-8?B?Y3VKT1JOdGN0aU5SaGp5cWY4MmRrMHZmY3hzcGFnWndEOVhGUWdFOEFTZmhr?=
 =?utf-8?B?SEcvSjFlektxeVBYKzFlZ3E5eEF3Z0ZWL2docnkwTDFoaENtRmxVRWt0OVc1?=
 =?utf-8?B?UFd2UkNqMUI5QWxsVFp5R2w1WWtxc0F6ZENzV2VVTVdvZytxYnByVk1Nc1o0?=
 =?utf-8?B?WHU2emI2V0o5cjVnNTVRclNJMVJ4VDA3U0RRdmlIa0dCVllpSEE3eEcvOU9G?=
 =?utf-8?B?RUN3UmgxN3VDWk4vTEJmZG9LV044d3lGYklwUXNabW5hRjNiTGIwTEVoenU4?=
 =?utf-8?B?cXNDTHRRZEwxbG1MazZaNm9SY0ljRlpEanZXRzBsVzVQL3gvakxMUUZyY1Az?=
 =?utf-8?B?ZnRsVUxmblFHamwzblpYL3J5eEQ4UGYwQ2Fxdi8raGxaVlRKWENHWi91djFj?=
 =?utf-8?B?U1pkWWVPSHJaNzIyMFpOaWdIZEhIVFBFWG5RLzJkMVJEcEhJTGhPN29wUDV4?=
 =?utf-8?B?dDBtMlk5Y3FrazQ0NS9tZzd4VHZ2MU9FQTBUSzNIZnBNdFhFRG0zellIYlNJ?=
 =?utf-8?B?YklpallUeURvUUkvbHhrcUxza25RKzBpb0FyRVRaL1A0K0U0SGd4QnBkRmtM?=
 =?utf-8?B?MkZkcHZsS1pFUlZmM0taenNDYkh1dWszS3QyV3hhNjI0OVR0Z1IyNXpDbVp1?=
 =?utf-8?B?bDBtd3RyRjJaalU2U2o2N3RiY3RWYWtac2Z3Z2VWYjcrU2lTcER5eklsazdQ?=
 =?utf-8?B?M25zR21FdHNZRXE1enBCSUJ5eEJ1QnlFVjVVdjUvb3haaTBiTGhKYXM2NnNp?=
 =?utf-8?B?Sy9xbjZvNDlaQTVXTk9wZXlxRHVUNmlBRmxPU0xuZkI3ZDdRRjN0N0NLQ0ly?=
 =?utf-8?B?TTRoRTU2cUN3MUk4VVp5a01OMnBvOWFqc3hzQWJFUDVzb0N1VnB4b2FybkxT?=
 =?utf-8?B?dmtjdDZiRWxFU0NNS1BkUThpOGtOTWg4ejdkV1hzZEpFbXVRang1dkZYSDVt?=
 =?utf-8?B?emp3NXpmRHFmWHcwOU0rNmtaU3FJYnhNaTYvdGZNR1lON28zb1BPaDhiNEtS?=
 =?utf-8?B?NEdjeVlpekg0UlQ4cEp1L0NsdCtORWRua2k1OVBMOVFHbyttTEJiSDNIOVV4?=
 =?utf-8?B?Vy9GTXhLcG5Zd3cyZW1RK1dtMmludkhicWNJaDg1eSs4YnVLMFFnem9iSlNH?=
 =?utf-8?B?RGhETGRaSVFYaVpseFVGRkhTL2JUZTZsM3kwMElONE1ocFhoVXpKRU90SEhn?=
 =?utf-8?B?N0piL1c4a3N2ZER5TCt0SGRuL1FwT1p0MThTMDlETzVsd1ROdkJ4M01Qa2d2?=
 =?utf-8?B?N2NXK01PbHRNT1lta29BcktqdHI3QlBZMjltTjdqQXF1eE9sV3VmRitpSXF3?=
 =?utf-8?B?endwdmJrN0oxZXRHN0prZFRwRHE1VGhJRXVUODZYS0J5dy9iRDRvQ21vc2J6?=
 =?utf-8?B?OE13SHAyenZHWVJIM0txcE5pYWVIL2FsT1FNNkh4NXpKdHNOemdvR1A3TG1q?=
 =?utf-8?Q?RV6HPL0rujiidzgk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fef27c30-bc10-440c-270c-08da1c397da0
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2022 04:04:07.5987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y3uVgzp+7csNJwJxTovk0PaO2ldTEIbw7yHkjK9PwKMwYzmeqnHEGFS6IGGPUOs+ReKtsHfrzPuLVEW52h88Q4dUzUJvk1XSYVKlDvjlnqg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3218
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [V2 1/3] drm/debug: Expose connector's max
 supported bpc via debugfs
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

On Tue-12-04-2022 08:37 am, Murthy, Arun R wrote:
>> +static int output_bpc_show(struct seq_file *m, void *data) {
> 
> Would it be better to have this function name as drm_output_bpc_show()

As we are using DEFINE_SHOW_ATTRIBUTE() to define file_operations, this 
function name must be <debugfs name>_show(). Otherwise, either we need 
to define new file_operations to use the suggested name or rename the 
debugfs name to "drm_output_bpc"

Also, to align/maintain uniform with other debugfs, I think it's ok to 
use output_bpc_show().

- Bhanu

> 
> Thanks and Regards,
> Arun R Murthy
> --------------------

