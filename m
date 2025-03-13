Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10097A5F5FA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 14:31:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52AF010E88D;
	Thu, 13 Mar 2025 13:31:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fbdfq99M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E683810E87F;
 Thu, 13 Mar 2025 13:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741872693; x=1773408693;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aWdaqYK1A++muerW57Vu6WXkBU9dmhfAKWari5V9Zgo=;
 b=Fbdfq99Mojdsq+Q0aFL9hobXhzleXDFIAjWFBBWHxS84qzbW7nj6qi4+
 D1lm4ikU+Eu+QJH1MTEzsymcuaYyv8a1HtVBDJ3MxazuCb6kXhtqLsq+x
 NWm6UoGpN4oMXou2OFZwlPLDsapyqD/08Jh1Io8n8CmsB4ujYTVAAJTS4
 5S0+A0Lpb/4wHA6bZNJaGy5LsmJgaY7jAcPf1Fcc4P1gS30F6jacjrV/y
 uP1KpovVL5eJxfraSptzMfFuqODmkZu7T3AIoy/lF9brki0lXY7pUUtIt
 33PLGwN7dEv569Mfg2u4ns33HZc8R49QN43+5dek622LGp9nX4Z0cC4e8 Q==;
X-CSE-ConnectionGUID: 6DwMPDRGRziorb/1LZDY7w==
X-CSE-MsgGUID: f003qkajTxyF4crMqbsFiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="43119478"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="43119478"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 06:31:30 -0700
X-CSE-ConnectionGUID: Lk7DcbYESX65g6ZONg/iSg==
X-CSE-MsgGUID: fkX/JYMFQbu5cyft4iOHrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="120669974"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 06:31:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 13 Mar 2025 06:31:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Mar 2025 06:31:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Mar 2025 06:31:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cs1rzpL2bqfhPLjCU+8iM0X3p3AlmuqADpu5ldkidVr9q9mcRhZJ33HaGMnJMwjzh10gM2Zv1QUsFAvVAw/OnapnlpsyvcblSyCFomtl/oiXuxMyXaKcJAhNaLWcJV/uoi+oLAarz19ULgQVqCJQyAllglF/BzRetW0kEr/S9b1kJ7Lyi3bWZIl1359m1Tz4Xipg9ZviadiVcBqj+7flasamyLMaUWhr7YCQzrmZyvwyXcpil9eC1HKA/RnGPWbu+ld+BQ1XZivaMYksIXKpOaS3/mfXTUERQocxPRumoflaCoBfaibcz/kI5R5g7Ht7W+YoTU34eTyNDofX4Rnasg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vs41u84PiOCUxDJuP74RPEgLsLWreQR+qcSn1LgcvW8=;
 b=triZXMemTwDkXB6DEE7AsASbS9fMteVfcWCE4VGJrXxfI9/XydNwITppAVdtbN5Kc5FPqyq0zoXuJ8WqVtp0H/2ZXypoFYuOrTdsQ2da36S5JvIEabBGkzYg8ZWWRlBOFhCcytvUOSGp6LvbnxYo7a8FWdCwSdYvnQF0jnNgUeo5vcuH5HD0lfJz5adI99vlic1JlkctD8xvNqdGrH93ErmW8hvDM6yhwWjKiHpko+P+PFcJ90MCegH5TB03ePravDLiBpSAH9lJIWCud5gEk4xP06/TuYXle20znxccl5MsOa2pP3A5o0PyMmBCcK9N+jwbfwEFCMLTdCXBLGSeZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5808.namprd11.prod.outlook.com (2603:10b6:510:129::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Thu, 13 Mar
 2025 13:31:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Thu, 13 Mar 2025
 13:31:25 +0000
Message-ID: <19fe5ae0-5873-43a9-9a3d-b13adc8eb708@intel.com>
Date: Thu, 13 Mar 2025 19:01:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH 0/8] VRR Refactor
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <ville.syrjala@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250311093751.1329043-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20250311093751.1329043-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0102.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5808:EE_
X-MS-Office365-Filtering-Correlation-Id: d36be3ad-9dba-4594-84fa-08dd62335a55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L1dyajlmZTI1UkdyVHJGVnJSV3ZxMnB1OW1nYUd3OEd6cWNadmdPdUJ1Ujkv?=
 =?utf-8?B?VGFDYThORDlqU3NsbUFsRW0za0J0QW4xdFRnd1ZBYnczeXZTNTZSNkRwYXp1?=
 =?utf-8?B?TjdrWGV5N3ZORC9zSStBQ1AzZVoyYXBmYVZ3c21jcHFDcjFxVUF1SCt4VUE4?=
 =?utf-8?B?UHd1OGxZY045a2llTWlRQXFRbHllcDhCVnlKRzZkNnVPcS9pU005QldRWWt2?=
 =?utf-8?B?ditXZzYwWm1mUTVTSkYyN0lDRHk1K3A0SXV6cmdCenRJek1TaEVGSmVEME9Z?=
 =?utf-8?B?YVE5THptaEJzNld3TGhwNVBxaWJJeDZWOWRyem85Zkh0Q0gvcWNrc1NMTjVT?=
 =?utf-8?B?NkZuMGowNEFLbDJRdUZCN3doQzJDR1MwUVNlYXc3Si82KzZ2cElRZ2VSUmRY?=
 =?utf-8?B?ZzkxbGFlNmkrZTczSnJjY05Pem56MGlLelF5MVpGS3U4c3lvUWJEQUxlTVJ0?=
 =?utf-8?B?VkJldVU5R2xrQUtDbU1FTEc3T2FlUUdaRE1JSDIzUHgrU0E3Qy9RbVFHeVJh?=
 =?utf-8?B?cHo5dWhMeUhLWHRPaTBJM1I4c0dMdFhENm94a2doQW9jdG9mazUvWU9uZVZu?=
 =?utf-8?B?QTZ4ampmNmtJMU5Dam01aXdDK1pjWDB1MU8vc0hDb2lXL3NkWlZhY1c2V3E0?=
 =?utf-8?B?blN0bUNBMG5ldnhHRHNrcHZQWE5pQXo1Y214Tm1aRzE3WnlpOS9Na1ZVbGZ3?=
 =?utf-8?B?ZU9qNWc1eWZ3UHJmZmo0akpmcWt3YS9DSkxjMnoyRWNsdy95VXptdWUwSkhY?=
 =?utf-8?B?M0FyWDV3bldQL1VjRmxWbVRPZDFMYWpKdXVPMncyNnZTeU9zOEtNQXRYVDg0?=
 =?utf-8?B?L1hKWXp2cXhpMmd6RTloaFRTWCsyZzcxTU9PbkNDalYxcVJVc2k2SFpJcyth?=
 =?utf-8?B?WjcvcWo2UjU1VUhJR1dENURHc05idStxd1NEZWJKY09sSmxxM3ptRFdua1Ri?=
 =?utf-8?B?UGN5OFJjblhTZ0hXWmxkLzlOdTJjMU85eU5RWi85VnNsRkhvN2NmQVVhOHBN?=
 =?utf-8?B?ZnBMV0RXcE1rcFRQNDBlbVoraGJ0MjZQbnBmeUpkbUZhSDdIaWxYZDlLTERm?=
 =?utf-8?B?TWhua05DZ212R09qWmx0NU9tdWY2K1FsazdlNGNqMDNkSTU3b3BaUVp2RWpy?=
 =?utf-8?B?S244SktiMzVUZWtzVklmUS9ROTlub2xHUlQrR2xRR3hXODJkQWpUUFoxbHdi?=
 =?utf-8?B?b2RzVFVWQkJ0Vm40QXAwWWhzY3dCVmtrNzdqV2RPK1gzZ01KdXhhajJKOUxh?=
 =?utf-8?B?N0w3NzQxWlZTTTAyWGFQRXVrNE5mNjVXajc1azY3UHFDSDYyc05vMmdzZCs0?=
 =?utf-8?B?QjFNOTRoOTAwcExnam5yQ2FRRjBic1ZHcW90a2wzbVBzQzlraVF6NmFSYnVS?=
 =?utf-8?B?YmdhcTNadGc0K2NjUXhza0lKcU5YMFdtaFlQSVlLNlE2bWNEdWJJOWo2YUsy?=
 =?utf-8?B?bGVGVEdYRHU1M1gzQkpKcVpTeHdOL2lzV2ExcG01d2tCZC9TdThCUGhqZnVB?=
 =?utf-8?B?dWdPMmxONW9qUmZuNlBabEZuTGFHcFE1R0xEcS9nN3F0TzFzT1ZOenZIWWRa?=
 =?utf-8?B?eCtEQXNpd3RHeUFGek42TVYrckpOb3dvekVqU1BrV3FrSnJ4SUxYei9DVTJL?=
 =?utf-8?B?VnZDTTJNaHVaTWxUc3lmV2FZeXFrNzFKR2VWQ0pyYVptME5LVVhSaFl5ODNT?=
 =?utf-8?B?amd6SnhEMS94SWh6YjRJWGRnN1VWMDY4Q2RTcCsxY3JiRWJVZ3kvanJvNHNn?=
 =?utf-8?Q?lpTpQJAhTqtxr2fgQsf4hJBWSVrpGbJ8AiQBsmK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STAvKy9SOW56WUNDN1J2SWRtNkVnODUrb3l6MkRQRFlIdkp2VDRNRjdLalZn?=
 =?utf-8?B?ZWs3Vmh2ajRBbGtvZzhTMVlNK2RjTVliZldIVTNocm9VSFRvOVNVMlM3eUFS?=
 =?utf-8?B?UXdYMThKbGJLOUxPelpOVzFCd0gzQWZkV3FjS2RLeGFEUmFMZFEvTHRSeUN6?=
 =?utf-8?B?VU1jK3YxNHlPT2Y0c2tHSXFGeFJPNS95YkpmN09OZXBsa0IreWVqRjIrTXpB?=
 =?utf-8?B?RVZweHFTVXlDY01aQUUrK1BYVnFybVhPU1IzN3I1Q0twWUU0ZmhEekZRQ1Qx?=
 =?utf-8?B?Z1pMOE93R3cxMG1IVkVHU1AzRFh0Y0ZCTHJJVGduL0dYUzFFcms1OEtZVGtB?=
 =?utf-8?B?WHRyZS82QzJFNWFPVDlFWExFVW9HYU9NdC9HYkQ4dWtqbnZCZnloTWxiV0dk?=
 =?utf-8?B?VTBtWUc3L3IrSWFXditLSzQ0Lys4YjUyR2hXSGZrdWEwaHlpdGRDL1pYS0JH?=
 =?utf-8?B?NnR5OGV6OXVVRGxHa2F2d1NZUkM4N1dNRk54Y0VGQ2NhR0VmT0xrVk5SWUtX?=
 =?utf-8?B?TkdJMzF6SC8xODYwUTFKUlp4ek5mdkZGa2c4UlBUM3BQZmp6aGZ0YjRxRFlp?=
 =?utf-8?B?dUR6UEpRUFNTS0x2WUNpR1hhVmpyWkpPOG9JeEVIZCttRkFJNUJmQndRSU9k?=
 =?utf-8?B?S3NVME5peVZnbGttb3F2Y1dlMU9xQmkzSEo5M0dDbHRYbzRkQmxzQjhCbUpM?=
 =?utf-8?B?YStDUzF1Q2VZZU50N1o3eGtMSi9HMGlMVjAzWkg1MlRBZnRtNGpZQ2hsbXcw?=
 =?utf-8?B?aERXbU5zSTMxUTA3dWEyb050ZDBoZnZxaDRQRkxmeGdHbWk1SHp6b2drb0hr?=
 =?utf-8?B?bmRjNno2am5rU08zRERPQnk2UXYzeUlLQm53MlZhTFVPK2VRZTk1WmZQeEtW?=
 =?utf-8?B?TytQZUtSSm9JdW8rSTFvNFBFay91YlZsWVNwNDQwdVlBYVhCRHRRdDg5ZHNF?=
 =?utf-8?B?UEV4RFBBdVlkN2E1Q2FsR0JzWVhyU3ZNMjV6UDBFdkd5NERCQjAwZkNnWFI0?=
 =?utf-8?B?YjNxMnp0NWg3cjhhTG9TSkZkR0pyYlhtVXdOVHVoN2d5d1hrbDRkVXlucGFJ?=
 =?utf-8?B?b1VEdHJyU1M3dHJkNldPQnFKa2R4ZGJFVDNDYWlhNGlYbSt5SVpwYUZJeHJR?=
 =?utf-8?B?Y3kzQmhVREtiaXBvaUQvVlUyN1FLU3ZxeXpHekY4aTI4NXVxNjhpNUErWnZO?=
 =?utf-8?B?R1REZVVWV1Z6RGtnbGU5eEFIQW1nT3NUblB6T2hlSVNHYm5pUGxKTUFXSmlF?=
 =?utf-8?B?S3haZzNad2NDTWNySzFRY2Z4ZnduellxS2g1ODJyVFpiSkhWazcrUHNCaCtm?=
 =?utf-8?B?TjZYOW9rTXJQUVI0elJWMnUvSjc4cWpUYkEyWVgzVUJEY3Z5VVl4ZWhKTVFC?=
 =?utf-8?B?ZUZsWHJyUHc3ZXk0dGV0NE9qYWxYdzJCQVhkdmxjVnZjRFRsMjBYR1p1N2pC?=
 =?utf-8?B?WXBwRjBZNjdhcWtrcmNtbUplLzM0cUVpRHIyVDJHZXFrMGNHbHRWaHdlSlps?=
 =?utf-8?B?UE53ZkJsL2FPckJGUFVLTmpCVmkyVVE2R0pRWEN6MzZuVmdTOWllMnpDQ0ox?=
 =?utf-8?B?Z0pURWFnMFEvQlpUemY4UUVVSnpUb3NYVGltS0Q2cER1TU5MNFBSTkx4YTJC?=
 =?utf-8?B?UE9SUGJzVW05b2pIU0lsbjV0cis4c1QzUCs0bnVjTmhhSnNzMDRUSjE2c0p1?=
 =?utf-8?B?QWo4VTUxUG5Qd3RDc0grbnRIQnFPdFF3eENuWXZvKzkxYmJrR3ZQd2lsOXk3?=
 =?utf-8?B?ZjZxK04vVDAxell0UmNSMUpIbHE1N3c4dktRM0R5Z0RvWG1WeE00MmpUVXBu?=
 =?utf-8?B?ZWcwRFhETlErdXdobUpSMDhjbXBqRU1XWGZzZHFtRm5LdlprcC92SUUxdlh5?=
 =?utf-8?B?MktWOWFHZU1RSTI2d2w2MXpZUlZUZUh3ZTNXOFh5VWNhWlVZaFA2UEVvOGFl?=
 =?utf-8?B?QmxPMHBKUElWSVhzT09JSWVueGwrMmlkTnFrT1dYWkk4bk0yNW1PMDh3RTAr?=
 =?utf-8?B?eFg2Yzh0ZlRPazFTRWw0VmdBbUZDcFdzYkJRZ0gwUzNWTkFEL3FsdmtLcjhP?=
 =?utf-8?B?VHFWNFhZUlhjTGtnYXdMZ2dNMUdGd0VuL011Skd4aHMvV0JPZ1VmOWxUQnFE?=
 =?utf-8?B?dC9ZYkMwblpYdkNMT3ZrMVhXSG5KSWQ0UmpNdGxGTUdtMndWMGx5cHZSYm0v?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d36be3ad-9dba-4594-84fa-08dd62335a55
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2025 13:31:25.8931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: faR3eTOAR5jLgadX4fjQD5HOeSy5V3f/HDIL6ExiiDErEFqW8Z74b9hGS/DTjpaiYKDU5bjrdMs5xpmRw9qgITLzFAhOM/NawmtWiUr5OBE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5808
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


On 3/11/2025 3:07 PM, Ankit Nautiyal wrote:
> To move away from legacy timing generator and always use VRR timing
> generator, some refactoring is required in existing VRR code.
>
> This series is a spinoff from the original series [1], tackling only VRR
> refactoring patches from the main series.
>
> [1] https://patchwork.freedesktop.org/series/141152/


Thanks for the reviews, merged to drm-intel-next.

Regards,

Ankit

>
> Ankit Nautiyal (8):
>    drm/i915/vrr: Remove unwanted comment
>    drm/i915:vrr: Separate out functions to compute vmin and vmax
>    drm/i915/vrr: Make helpers for cmrr and vrr timings
>    drm/i915/vrr: Disable CMRR
>    drm/i915/vrr: Track vrr.enable only for variable timing
>    drm/i915/vrr: Use crtc_vtotal for vmin
>    drm/i915/vrr: Prepare for fixed refresh rate timings
>    drm/i915/display: Enable MSA Ignore Timing PAR only when in not
>      fixed_rr mode
>
>   .../drm/i915/display/intel_dp_link_training.c |  15 +-
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 185 ++++++++++++++----
>   2 files changed, 166 insertions(+), 34 deletions(-)
>
