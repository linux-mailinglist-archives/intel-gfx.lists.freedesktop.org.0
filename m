Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E0AA0AF9E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 08:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61D1B10E240;
	Mon, 13 Jan 2025 07:09:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iPQd0p0L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC6BB10E240
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 07:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736752182; x=1768288182;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kLHvcfanAriWq/HbcZDJyjKCuZ47KNg5gTBa/96GK6c=;
 b=iPQd0p0LSOn6x0ow3WtxTsMCv7f1oZ9N7fw0nUEtIUOTHLFsI5XgCJyR
 ny3AlyDlEcDdaenPilmhusTQj4xmJMLZQM3fHpqkJqHeMoohJz9HOuSYF
 UwFHRqpPjLmo32MxwNTA8XyTQdQkpRXKgAsIBoMFytCb1+it+GtVQWa5w
 bjgjGULgyQJuK1CGy5L+8maifyN3i90fzgse4MaX9A43LRa6YRjqpXpMj
 hDZx520elRjYCVQY7JalqFdzoAM/IBJ1pAnQ45VrwOv8SDpKRWbA449CA
 J7WXKkOcwKxofukYTGpVC3zulXwtLpMO/G93TlBeHGJDBZNLz1ZHIPYHE g==;
X-CSE-ConnectionGUID: OlUAr138Sh6ORUKWTCba6w==
X-CSE-MsgGUID: kkWo0WiNQYWJ1qTkwltN9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="37225845"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37225845"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2025 23:09:41 -0800
X-CSE-ConnectionGUID: s+0gmZFuS0uKEOlNGdWnhA==
X-CSE-MsgGUID: +0ZRPF0kQjmJcGoUDVr28Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="104173222"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2025 23:09:41 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sun, 12 Jan 2025 23:09:40 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sun, 12 Jan 2025 23:09:40 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 12 Jan 2025 23:09:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z6JTLgBz8vMJ4S8Xrbs8+g0vO5XD+cmU1H69pI0El9ppTAfoEdRo9QYUiGmOrcYlKpi3dVx7V9cCRhFjdllqmfqYn8UQsIuJdtHFg+HWwGFxChnAYVmKgThkTSoHJ3upTmgxsxUPVZrFRceuLLtUJCKfI3dc4m2ErP0Pr5zQrdikfCi6xKGqiCJNLGRp5XawPjAat522NFgmX9JhK1ZvZ5874bFcd5H00XgtoSLbFre+Bja9al1VJUrCGWxOgfa0iCmMFUa+u75TCmd9MtTUxiapECfvTo2FimQqx0wx4a3ppxetX7eloH2mdR7qaRqvNVdUOOZUfHLttYpWhwdn2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ixT5rJlwlWyAz943KALM4hmifDGht8cDQ9S3uBQlV9o=;
 b=vgBV0IM941wP6JtSmEcL8ftf1HHQ8uEm78cYSJxmvueP7Prn/NgOV8aHJPcFXe6GHLqx9vdecT1bCmhJHBRZ0danhXWcKhUf49exAv0DiCQC1bLQw1r57FWr50nz6TGjqQHSDLmqHL4I5/9ZZy37Pprpizu8Ou8gE7QKFIB1FctAfyvUlAXyrVs/Tl8EC2g3oXCwmaHmg93MK1YNGO9J+w8xvrN47WIbAT6IFusl5+jwPDwjmSzrh7IY8TPERabiZEqICXWaRezg1cna5Vt++Loz/PznhGPoqdurVYLv6Yzu0XnWSHBTPUWZY7iDbLB0VvMkLbDQULFJvbhKWZd+UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 SJ0PR11MB5120.namprd11.prod.outlook.com (2603:10b6:a03:2d1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 07:08:57 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca%3]) with mapi id 15.20.8335.015; Mon, 13 Jan 2025
 07:08:57 +0000
Message-ID: <71aaad10-abe8-4642-90fb-1a5c19dd3231@intel.com>
Date: Mon, 13 Jan 2025 12:38:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/selftests: Correct frequency handling in RPS
 power measurement
To: "Anirban, Sk" <sk.anirban@intel.com>, "Nilawar, Badal"
 <badal.nilawar@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <karthik.poosa@intel.com>
References: <20250109093010.3879245-1-sk.anirban@intel.com>
 <f3c92a31-37d1-423e-a578-b8d91f17a48d@intel.com>
 <66cfa40b-cc9b-432f-9a86-4eaa42f72fc8@intel.com>
 <0155609b-b3ef-456b-a838-37e5fcf8bf88@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <0155609b-b3ef-456b-a838-37e5fcf8bf88@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0102.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::23) To IA0PR11MB7955.namprd11.prod.outlook.com
 (2603:10b6:208:3dd::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|SJ0PR11MB5120:EE_
X-MS-Office365-Filtering-Correlation-Id: fe7dbd25-6685-4dfa-a926-08dd33a125ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S1psSjVaajlFeFl5RFB5bjgxS3RLRHd1SmhpQzNraGY4SVBMMHM0b1dqSFNP?=
 =?utf-8?B?MldmZnI5SGRUdFFuU2xaUERCNlVCNjk3VDQvSktna3ZFbEV2L0NoRmg2MjRm?=
 =?utf-8?B?NUEwZjlVa2UxT3ZOeTdKRkJtKzc2TmhrNnpHZDlOVXlUaWZOdkZoQk94REhj?=
 =?utf-8?B?dzI0Q2FDUFEwVm1kaVQ3VnNNcGRBdmVIYVdrdHhtYU0yYlgzNlB3RXNyYTZs?=
 =?utf-8?B?NzNVRkVKelFuRkcwdmUyZ3VDeCtnSmwwRjdqelNidnF2RjRxYUtPeHpsL3Q4?=
 =?utf-8?B?ekJ3cndTaUEwM3plVDRkaWNGczZPMWpKNU82WURXcmlNaVNCM3h3Q3BiQ3dE?=
 =?utf-8?B?a0lXR3M4U2dNaHAwR290d1ZPdUhOZ3hwOTd2YXZCMXZLYzlvNTJvYkJXU3N0?=
 =?utf-8?B?VFJFdTVadW94Wlk2ZWMzUytUUE9NM0FaVi9IMGwwNklXRjVpQzhaMTB3eVdt?=
 =?utf-8?B?Z2FFL0tiSklVTEpWT1JLa2FXQlhmZ2lYajFYZW10OTQ4ZzlDRFlISlQveEx3?=
 =?utf-8?B?QWRUbmcxQ0NDSzFGQmhWQ1MrVmtiUG0xMm9GV2pESnRGQU11QmRyYW5aSFdq?=
 =?utf-8?B?OFhIeVZMWHBtREovbWwrQ3RNaFVFUFJGVHZuYkszN0x2aDVTdGc2eGMxZkQz?=
 =?utf-8?B?cGRNb0lncXdxY0xya3lwMCt5S1plakFRWmF4UDdXVHlzeFc2TVd2Y0R0c0Js?=
 =?utf-8?B?VERqMmwzWFNJczkrd1FucG42NFluYjRtZFNheHBPZjN2RVdjWXJnMjFKSHhm?=
 =?utf-8?B?aXh5OHhiMThJZ0FsNWxmeENnQ294M0FhbitjVmF6YjFRUmg4NEl5T04zejdP?=
 =?utf-8?B?eVY0dUc3T09PeE15cHJ2Q3YrUDlwNzdrclBjRkZVcVgrczUzajl1dFB3bFZ0?=
 =?utf-8?B?SEJuVWJKbmN5WlFpdi9QcTRzK214QmR3QlBuaTI0UnMrcXVLR0FweGExMDd1?=
 =?utf-8?B?YlYwSnVEOGF1RWtUWklxT1FKNWhOZEl1M0QrODVvRHdHM1JUUlhxcnlBcW9O?=
 =?utf-8?B?YVZkWmphSVZaMUlVQnI5by9GNld0SU5ZajFSU1ltR1l4c3FKQnlhLzBNSHd4?=
 =?utf-8?B?Z094OU4xTVJoSlNPeVZrcHRlbzV1NG40ZVZMU0d2NHdOVGcrbThBa1JudFNJ?=
 =?utf-8?B?NGFINHVjL1FWU2JwK1d0ZCsyeXRHd1pGalduZTFYNHorL2NaV29XUWFwbFpD?=
 =?utf-8?B?S05ML1laVnVKekJJUWhqK0thb0NHMUJ0Mm9MNWEyalRWWTNDUFFFWjhkNC9a?=
 =?utf-8?B?SXJkWlZxSG9WVmxQUVIyNk9TVDZXUStvd2JPY1hYU3Fxb2liTERaTHovbDhn?=
 =?utf-8?B?aFVLMzBXZmdUdmRRTGtIVUhDMjUxdlhPU0w4WE8zSk13WmtZNDU3ZkV1MHpS?=
 =?utf-8?B?ZWJUZDc1Rk9PQUxETUVLUVByajU1Qi9sQjRxMG1ESUpxN3ZNNEE0b3dRYUlJ?=
 =?utf-8?B?QkN5WEtnZ2t4UlZ4L0IrTE9CSFZ5bUljbzgyZUU1MlJubWhSMk1qdjhMU25p?=
 =?utf-8?B?QkRvd1VzVEVGSU5XMHVnQ1ZYWUhuQTQ4cEJTWS9GYUlicmd5blVXRlZxQ1l3?=
 =?utf-8?B?MWJBTWcyRFpTL3cxZkFIYzlETkxBWXVCRHFVcU1JbXE1R1BwRUhMazhBTGtj?=
 =?utf-8?B?L3ZZZm5rRDdFUmxhRFZncTgrYXFzWmRpcTE4alJoZml3L1BZSzlmNTRERlBp?=
 =?utf-8?B?RVNQTjZzSFdBOTlDdTZ0OWQ4UEdrTnk1LzdWbERDcXNIVzAvU1NJUzJoeEFQ?=
 =?utf-8?B?UmRjVGFTc2hja0x0bDBtMHMxZENUMnJWNVo2Q3lZSzNVOFpGdS9TMVZUeXR3?=
 =?utf-8?B?dG91MW16TTRibDNhbllyNHBUQlBTUlBaSjd1b2pjNGp5UjhScndiWGFQOFB1?=
 =?utf-8?Q?iWt2MdZpUaFQ+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZTNsMTV0SFppKzdOc2Z1Zm1NOEY1M0M1dnA3cUxUdVE5dVZ6cWQvTXp3ZkJz?=
 =?utf-8?B?QVlub1AvblgwK0crSHdaZFNTTE5FYk1wVkFiWGJqOFRLVElkZjBLUTlUSVRZ?=
 =?utf-8?B?M0xyRmZsSGpjaXBETllyS0FtajNmZGRaOUh2WjNpdmhzdE1sOWRBRnJMWC9G?=
 =?utf-8?B?cUJlNWV6bTk0TjFCTHg4c2I0bFUzWHdPL0xSdmt1N3hPcGRlQ1RCd2hNUUdP?=
 =?utf-8?B?ZHR3SmtiaVA3TFFaUDNkZlZRcVhsek1YS1JnQS84YVZCdWQ1ZWpTUHRTSExG?=
 =?utf-8?B?ZlJ4RHZuaFhQcjZwYjNFcWRSb0kxdlJmMVYvNFFXby8zUUxCS0RYbHV6ckt5?=
 =?utf-8?B?emNiYWhxUCthTU5hYTMrb1l0MHVZZERWRnlwa0hWd2Q1L1lYUEo2T3BDbEx3?=
 =?utf-8?B?RllNREdqdkF5OFNTbG4yR012ekxrSWRPTXRsdmpHdEc2Tk9oZ3JKVnhQejVI?=
 =?utf-8?B?SHlQR1Rid2thSDhVak5DMW1GVWRFeEo3aFhUbTh4Tk9SQzljV2t6RHFXbkQw?=
 =?utf-8?B?TTh3UFNLUlI0NVFtcldvOVhra3FTanU0blIzT0JMTlJlcWwxOTF0bTl3dWFD?=
 =?utf-8?B?SEhwQkdZNFhZbWNKQ1pFcW42eUtNMkcyNDdFUnBWWW1zWWdzNFNNS093bWtP?=
 =?utf-8?B?MlJjQ21vSWd3RkMwS3dsRWwrS2ZCM0RXaEFCVHp4L1V6ZVNjU0RQeVlVM29J?=
 =?utf-8?B?VXpDTWJtQnBBS3hhLzlBK084VVR0WkQ1U2R2ZmFhT0xiZklDRmFWRjQ4TTJI?=
 =?utf-8?B?RWNGZFVUb1pjVFFpQURVckZuSDBXdm5JRHErQkVGVmZrZEdUaXoxZFhLM3c1?=
 =?utf-8?B?cWErQ25TWGJLcFF5TWpxd0tqWWlIazY2dVRTWjcwdmlhRHUrQjhZTTlPcDd0?=
 =?utf-8?B?aGtKS3htcFdIT05FUGZWSG0rNWxGZGU5cVJqcjR5U0tGQzRhTURrM0JFR0tr?=
 =?utf-8?B?bE9Dck5sc1FkUEpDeEMvQVphREI0c1d6TVJ5RGpCNjlpR2k1andwb1JLanUy?=
 =?utf-8?B?cy9DV3lzbk1LZ1BpSGRacm0rZTNUQVBEaG12bHc3bHFQNHlHOFpCVGJ2aEYy?=
 =?utf-8?B?SGg4UmdnQlB6ZWEydnJTbjZ1eVVsNWV2Y3lFR2xrZ0JOL2lEU0tiSjE0RHZG?=
 =?utf-8?B?clJCcE15SFp6bWdrTkJMeHZzT0lId05wOEV4VzRYTzA1WGdzWXdtdHhpeUQx?=
 =?utf-8?B?T1NNU3BEOEUwOGNLNHpEZUlyZkYxT2FQczVYR1dGRlpIMW9YdTJBaEtKRDhP?=
 =?utf-8?B?YldmREtKdG5SRlM0Z1FFYkFPelJKY2o0OGZ2QmFjSHUvaFlkNlI1NXQ2bEpT?=
 =?utf-8?B?ZG9ya0k2Z0dEeVZFeTZ3SVZlb0p0dXR0QjFsUGZRS0lNZmpGekNGSkxkS2tV?=
 =?utf-8?B?NTJaL0kxb1F0b0ljUExTajI1MmNnVnYybmhWRmZzSzlQbGNZbS9EeGJ6ckNE?=
 =?utf-8?B?S1gyYjN2aU9HR3UyYmMzWHdWQVQvcGFzRjBFUHZ3Rmt6NjNVWklzdVFIc1pk?=
 =?utf-8?B?MnBKNWR6bmJMQlV6dDluY1pvSVp1bnY2UjY3eUJBd00zRVgrQWU3M2NvT2Jw?=
 =?utf-8?B?UU0wdjU5VVNyYzRSQXR1QXdlS2JRTjlIZi9PS3VJUVJJN0dKUDlGNlIvOUg4?=
 =?utf-8?B?TGovQzh4d3pTeVVRY200NldmRnBVRTV5N1UxWGdJWXVBL0JTM201UUYvV3Ar?=
 =?utf-8?B?UmtVMllCZ3JwbFZlR29CMjBSMXpyQndJOGZhQzJKR3BQeElHT3I0Nk1GMHoy?=
 =?utf-8?B?dDVpS0QwZ0N4ajFjeXZwUi8xRFZMRHB0OXBsQ0FUeHFsUnJNYXBTQkIzeEJL?=
 =?utf-8?B?OHkrdFcyK2lzdlFHVHcyS2NqUTB4THhGMzdKL094TFp6UGFvNXNkOVpWYkxa?=
 =?utf-8?B?cHVUTDVPdXVERkd1aTZMTCtBMThLblAyZVJ2d01xZXhmN2kvVDlhc2cvUkpv?=
 =?utf-8?B?TUJzMmM5TXhHeVp2TnNCOGNpaElXMnFxZ2F0VlQ2UUFtUWFvempURmMzblp1?=
 =?utf-8?B?UnMzY0xhVU81eXJlaFpOOFcvMVQ2QTc5WVlzMXZxckcreFkyM1p2aW9uVCt6?=
 =?utf-8?B?cHFkZ2VqOGpqMVJaL3paUEY0L2JnOHVqV2llTlhET1gyQWlhQXJmeGlNamND?=
 =?utf-8?Q?yOsGn/mZaCRpNY19TMZmtEd4k?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe7dbd25-6685-4dfa-a926-08dd33a125ac
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7955.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 07:08:57.8379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gc2Ki+y5U3LGatipCk0sQLYi+OBpbY1HbZaSue++H1OciDHyZMH/CRiCOmgFU1FYH3MNBs1GOCPcchNCqXJpCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5120
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

Hi Anirban

On 1/10/2025 8:42 PM, Anirban, Sk wrote:
> 
> 
> 
> On 09-01-2025 16:45, Nilawar, Badal wrote:
>>
>>
>> On 09-01-2025 15:50, Nilawar, Badal wrote:
>>>
>>>
>>> On 09-01-2025 15:00, sk.anirban@intel.com wrote:
>>>> From: Sk Anirban<sk.anirban@intel.com>
>>>>
>>>> Fix the frequency calculation by ensuring it is adjusted
>>>> only once during power measurement. Update live_rps_power test
>>>> to use the correct frequency values for logging and comparison.
>>>>
>>>> v2:
>>>>    - Improved frequency logging (Riana)
>>>>
>>>> Signed-off-by: Sk Anirban<sk.anirban@intel.com>
>>>> Reviewed-by: Riana Tauro<riana.tauro@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
>>>>   1 file changed, 6 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/ 
>>>> drm/i915/gt/selftest_rps.c
>>>> index c207a4fb03bf..e515d7eb628a 100644
>>>> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
>>>> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
>>>> @@ -1126,6 +1126,7 @@ static u64 measure_power_at(struct intel_rps 
>>>> *rps, int *freq)
>>>>   {
>>>>       *freq = rps_set_check(rps, *freq);
>>>>       msleep(100);
>>>> +    *freq = intel_gpu_freq(rps, *freq);
>>> I am seeingrps_set_check will wait till act freq become desired freq, 
>>> in case of timeout act freq could be different. I think it would be 
>>> good to check freq returned by rps_set_check is expected freq if not 
>>> then read freq again after msleep.
>>
>> Please ignore above comments, I got your code. You are applying freq 
>> multiplier before passing to measure_power. While this approach works 
>> fine, I recommend fixing measure_power() by using read_cagf() instead 
>> of intel_rps_read_actual_frequency().
>> Add Fixes: ac4e8560248f ("drm/i915/selftests: Add helper function 
>> measure_power") in commit message.
>>
>> Regards,
>> Badal
>>
> The measure_power() function is being used by slpc also, as slpc is not 
> passing the raw frequency it may cause issue. So the plan is to create 
> independent function to measure power for slpc, and for rps I will be 
> using read_cagf() to calculate the avg.

Are you planning to re-work this patch? In that case use read_cagf for 
SLPC as well, wouldn't that work?
> 
> Regards,
> Anirban
>>
>>> Regards, Badal
>>>
>>>>       return measure_power(rps, freq);
>>>>   }
>>>> @@ -1202,13 +1203,13 @@ int live_rps_power(void *arg)
>>>>           pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
>>>>               engine->name,
>>>> -            min.power, intel_gpu_freq(rps, min.freq),
>>>> -            max.power, intel_gpu_freq(rps, max.freq));
>>>> +            min.power, min.freq,
>>>> +            max.power, max.freq);
>>>>           if (10 * min.freq >= 9 * max.freq) {
>>>> -            pr_notice("Could not control frequency, ran at [%d: 
>>>> %uMHz, %d:%uMhz]\n",
>>>> -                  min.freq, intel_gpu_freq(rps, min.freq),
>>>> -                  max.freq, intel_gpu_freq(rps, max.freq));
>>>> +            pr_notice("Could not control frequency, ran at [%uMHz, 
>>>> %uMhz]\n",
>>>> +                  min.freq,
>>>> +                  max.freq);
>>>>               continue;
>>>>           }
> 

