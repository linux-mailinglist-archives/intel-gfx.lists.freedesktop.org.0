Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6AE9D3B27
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 236A910E762;
	Wed, 20 Nov 2024 12:55:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y0rNxJX2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C92F810E763
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 12:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732107358; x=1763643358;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o0Ykdoo4GJJYW0ou0EWz5a1eNv0sMA5B0JUUcbWXvzQ=;
 b=Y0rNxJX2l+cPkti6kuLBOuAeYHx4LC4C9Bi/AjGY5mp3g+ewyqxKfj4g
 fhDc/5MO6C/D4Iqvxyp0VS2gwGNSlO+e/3n5bc9ekuKAgCK4V3ySQheyU
 lwXO05W58wk0dCyDmfguGDkmGvdi6OytWX0N4uit/4wjN29fzjnhrHnKi
 cKIDeFhMENnDDHSl+2uHF6DmQnWNQoeyKWgURet2IGA9G+qTCXE+a/2id
 go2LM+TQJDsAm4BUAgZVcbJzPNr4kCHjYCzHB/W2qLCzZh7GUIbfymPXE
 iNy9BGwVmRK87pCa49AGq0WxZCOChmRdp7rMQfsrl1BytZmAYMnEcDI2P Q==;
X-CSE-ConnectionGUID: s4wRiuG0TuWEOvtoZKZ/Yw==
X-CSE-MsgGUID: JN0uYD6tQYa2FiEM9UmATw==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="36070719"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="36070719"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:55:57 -0800
X-CSE-ConnectionGUID: 4d1oONg3SJSkLUeQSMKTQw==
X-CSE-MsgGUID: ZhSC/0QDSXWRfmMpEmFpJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90312306"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 04:55:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 04:55:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 04:55:56 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 04:55:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tjTvtaF1+2zR3oTzYWyjYjSBAWMSirs36k/cCUfV+qg3IJ+cjB229zJTVce6EsUcfdgkSTDrTUqSZZm7vHzlf6V+EaZcAtRaRGkTFNoCoAYVZbn0ReIC5aDNkMfExbivHmah4yMEI30HSCAXfRyj5g5KgIXzFB/SJiSu01QnqpImeKs+2g24PxaZ1l3iMRVShzvNULJvksrOcXR3Sm/giEnSY5DlfLIDc+fHiXm1jp0oDs6jRmnKxgs/fTwE/+4uH0DS52H/ofqeU7Va+4m/HUCaFZaWksYrKL2iG+s3gegn/bstrDWVHk3PFtQo9GVWDs1q8zCJq/n1PGWPRK4UKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=623NrgTkKRPT/Y8MO9TvMgcv1qjCl2d4bm57+n0cm4U=;
 b=H43IBNy3j6HcQbzp4ci0mazgt7HEDbwPaQIjlNCRyOVvXBCDIeiUeKfV1h5/i0a9+7L+ncLDrb9RXHfSr/Ol3CAG4KD6uhT9h+JVGq2bIHrCYhqblocYAEZKe5LH+e+ebKQCZeYkOwTB/6b0QB0Nq6LC7DtbE9jgZq53ECJ52rJOjdZ8enXdz0ipryMJF5F0qa49tgtaWgvqOhD47wmwp4QgmL2Uwz4rDUqHm9P0S6mEUiYKU6m2NhAKSquaCDq8/aXvaYPP3xpnm0oL1jMTlEmkoonlALtNI0lBq0QfaDEmscMsARM0RDlhq/TCgv7dlSosxOLm4Vc1RNZnhSdeEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4666.namprd11.prod.outlook.com (2603:10b6:303:56::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Wed, 20 Nov
 2024 12:55:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 12:55:54 +0000
Message-ID: <c979bf9f-9541-4878-9a55-2eab02b80c95@intel.com>
Date: Wed, 20 Nov 2024 18:25:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] drm/i915/vrr: Update vrr.vsync_{start, end}
 computation
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <jani.nikula@intel.com>
References: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241120084948.1834306-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241120084948.1834306-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0238.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4666:EE_
X-MS-Office365-Filtering-Correlation-Id: c4d9a1bc-ecd5-4165-feec-08dd0962ab18
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2R5UHp3dUFZU1RnZ2IzTEhQR2Y3KzNSQTJDZ2NjSG1od2o4QkxxVDhTTjJo?=
 =?utf-8?B?MmEyem5yZWhDV1g0K0FWL3NTbU5JY3M3VWR5VEUxRFVVcXgxalM1cjNKY3Z4?=
 =?utf-8?B?K0pmVVY1Ym4wRmV2YW5rb2FQVnN5QVhwcUxubmY5ZFVtbEZKSWZndWFGaEk2?=
 =?utf-8?B?T1NlOXk2eTJSRDhQQlRIVmNHMnFZQUFqK1RHYzJrN0MwMHViWXhlRlc4bmQ3?=
 =?utf-8?B?Q1ptU3pQVXl5a00vRHozbTV1U2RKcHBoWmZFOHF5NlZVTnBiRE5pVGRNRk1S?=
 =?utf-8?B?MStmWVhueGdOQmR6RDlHdXl0ZlZXUDdSZmE3ZXdtZjE5WlNNdnE3L0Z0Q2hy?=
 =?utf-8?B?ckQrRnd6K1ZTbFViNG1XUVJYNTRCNUx1MWw1aHAxeVBjbVZhd3FRaDdQbHZm?=
 =?utf-8?B?bFliSzlRbjl0Nmh5ZzlhQy9PdEE2V25ERzJHbWZNcmlsS2NXT1ZuNW9tUFdM?=
 =?utf-8?B?c2EwVlZpYjBCQjg3eEd0Z0tPK1A5TWZCcjN0TndZVkF0c3czVm9LazlWZzln?=
 =?utf-8?B?WStFWVBieWxEd0FYKzcrMzdDblQzWnpQdmJ6Zi9XTGp6Um5wY25ENXhhQUF3?=
 =?utf-8?B?d0FzSjBvZXpNaWFweXo3YkE2L2dOTS9YK1kwcUtlUElGRkdOZUZnenZZR3Vy?=
 =?utf-8?B?Mnd1TW12alU3RzkzQnVXdForeHBjbGlFZHZhdTZxNzlNVmY2UUVrQ1d0bzB2?=
 =?utf-8?B?a1JsWHZsNTdiODVJWjBGSklNeUgvRCtkNkFvRTZGTk9SSVhVcEZVeS9qQjln?=
 =?utf-8?B?N1YwMlBZeSt6bVppN2pIQ1BlQys4VlU5NVBOMDNsb0ljekRhS1NwOVViUUJs?=
 =?utf-8?B?a3ByKzJoZUNmaVVUTy80SzBxcER3dldabUJYelFZdzgwNE9lQ3JadEduOHBU?=
 =?utf-8?B?ay9URDRzM3A1Sy9QLzlmd1lnYUdSaW81M1JneWdXSHU3RENwUEdDKzhtRG9O?=
 =?utf-8?B?WCtWODQ5UG52alZaVzRqaXJYT1Mvcmc1ZkNQR1ByVXBRbUtRMkVzdVRRU2Fh?=
 =?utf-8?B?YnZaR00zbEN2NXQ4cmZ6bVpvNGp6UnR2c0RPTmhuMTBUT3NsaDNkSlNDN052?=
 =?utf-8?B?S0liR3VhZHZMVkI5QTh2eFRnWk5oV2puT1JYcUNndVNtY1JnYXUvTUNhOWls?=
 =?utf-8?B?cnJuM2tZais4TGZNU1lDc2xoQXhZK1BubHFMUmNaZ2lZTU5UenF5ZWNER2VS?=
 =?utf-8?B?SFlHdkljRHE0RjBOWmMzdThTRzdBSE9zdjhldUJFLzhOc1FPd3kzTHBBU21H?=
 =?utf-8?B?VFd4SWQ5a3lQNVhQWWJjYjk0ZWMxMXM1VFRnTDIxSjAvUE5aQ2tzdFlRdnV1?=
 =?utf-8?B?aXVSZTBJdGpzaUp2Sjh3bDdvNWhYV3hsQWl0bWdNSlB1Zm4wMDdtdTgxVllu?=
 =?utf-8?B?cEEwb3RkT3RQR1JDNCtrNFZmNWptcGRQb1hsd3B3dnNYanpzVUw4NzBiaEtQ?=
 =?utf-8?B?WG5Jc3BRa2VZTE9uMDB5WWxXdTc1MUsya0tWSzZaMld6YzJaWk9SaENKNUVZ?=
 =?utf-8?B?bkdTeG40cXdueFBJa3JyNjdXVVpCbWpQOFY2d2pvRDlGaTF3UklMbkNvS1FV?=
 =?utf-8?B?ODh5MVIyNmd5MnF0VWF6eUhPVnhDei9tUjdDbHRpUXVjaUtwTW1MNkt0S0JG?=
 =?utf-8?B?OWl3eXB1SklrWTNlYmIvdHV2NVZHa2l4NWZvaWc2TVVUR2JiTTlDejF4Titx?=
 =?utf-8?B?bVBjNHM4SnUyVEVUNW1jSmpBeCtzQklOanRsanJLbVhwVEhZTXdYek1kWGxV?=
 =?utf-8?Q?9E9wL/UsJuiEMtuhiw2Nm51FIJVn485ijXyB9b+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MVQ1bDg3TjNyWnVHaS9ST2ZWSHVYdEdpZEdORmp4VUxCOVVVVmxEZUhSOTJn?=
 =?utf-8?B?WUxzMnVxeEt0a1ljam43V1hxZXBsWmNCUmFsRkxOdGxrV3A2K2kxV0lYVCtC?=
 =?utf-8?B?MFBPK09iRjJmWFlIM2xJaC9hUjQzYlBKVGI5MjlCOWJrZm4zSU5rbDBkZnI0?=
 =?utf-8?B?QkFaUDlVVVJRMHRaNHhTd2ZYK1VhbkxBUFN1UmJBMEdDWWdLVjIrMGtNSCtM?=
 =?utf-8?B?MUs2cjR1SjNNWEU2eDRKTU5KYk94T1RBeGkvbHh0YzNGNkpQTnhyMC9jbHZZ?=
 =?utf-8?B?YWo3WlVxWUNEUCtPZzUxN3Z4MFRXRlF0ZGI4ZW1haTk4c2JSK05raGhYS2xK?=
 =?utf-8?B?M0t4MlU2eDVyUVExcm94TlBWUjFlOHg5dWxUeERFYzFiVWtaZy9vQmtZQXpo?=
 =?utf-8?B?bUFmdFpRWXVaNi9tZE50dEh3OWlsLzl0TFk2Q2dLZ2NlanliRHA5K2Y4bGNK?=
 =?utf-8?B?ZXNTeitvM2xMSTFMMVBRNUdxMktxY3V2VitReDdxQWNIQzUxZDFNUkFtbktZ?=
 =?utf-8?B?R3VQR25yUVRPb1d1OTcwNVdURjRCMy9TcnJMak1Wcm5ieHRQbXh1M2hwRmRX?=
 =?utf-8?B?NnMzcWhLd2VUa1JtYllzclBsWm4xajgwNzRqWGU0Z2RoNStEcUh3UDdIVlhu?=
 =?utf-8?B?OHp5bEdpNFpyZ3R4cG5FUWhJOXBrTERGYTdaaFdyQlhyS2xwWElpdllXb2RT?=
 =?utf-8?B?VWc1WHdiUXFjWnVoOUgzZ0hNNlhRdGI3d0tBS1ZXQyt1Z2lLOFpmckVZVFdV?=
 =?utf-8?B?V1o3MERiWnBGYlFyZDRocnR1Y3ZyRFp1SDJCQVovNy95L3ZRa1ljbXRWeVEw?=
 =?utf-8?B?aW1ZV3NJOE5CdVRqUW9nTk9yVnpWb1pHaVdWQUo0T3ZOb3RlRW1OVW13TmRj?=
 =?utf-8?B?OVRacUNlUXhtb3lQRFMrY0srT01tR0FwK3lSVmJoK3c3R3ZFdVJINURNT1NM?=
 =?utf-8?B?WWJheXdJK0UzWDVlcEdpS3pXTHUvN2xERUpNZDZIRHNMRVZoVTBJdFJWaFlo?=
 =?utf-8?B?Rk5rTFphdEx0Z1ZpTXBVYzZkSzFCVE5OYUVCTm8zZFhCSW9PSWlmOTh0TTNV?=
 =?utf-8?B?RXNEbmt0V3M5RnFJdFhGbDZrOW94VEZIN1VFR3QvNDVJVW92bWhHRU8wNXJi?=
 =?utf-8?B?Q20yYXA5REQvbWhaZGJ4NnRSRzdPTWdYamF1OWxFUlk3VDl0dG5JeXNwSHdi?=
 =?utf-8?B?V010TFdjcjIyamUxNGxEdmN1OHMxOE53N0FwK0NSNzdSbWNpR3kyTmNjOXJ5?=
 =?utf-8?B?SmhubzBpdUFNanFBMXJNRitPNXVKT3JYaEkxSytOMTZoY0FlUHQ0bzArdHNm?=
 =?utf-8?B?UE5SQjA1eFE5N3ZaaGJlQmVnWFcyWFF3d3JWNGlrdUJHYTZobzBZd2hjREJn?=
 =?utf-8?B?NVlmSHlnVzFlUDdoZUVacldVNHUxZXNXOXdpa3dQUWcrcmtpeCtSeHpQMzIw?=
 =?utf-8?B?a3VNcS91dWxzZFFRRUd2c0hoL3p1b1FDL2FLNzR3QnVVbDRtUE4zRHU5Qm5p?=
 =?utf-8?B?b1FOTjRWSEJwU29mOG1WQ2xqanAyUmxHSmNxVWxLNDUrV2dlUzlPbzhlOUw0?=
 =?utf-8?B?MW8xdU1HWUpHa3VZcGlxc1FuVC9KSmQ3L1ZtQVAvMGpBWUFhNTFtcnV2Wk0x?=
 =?utf-8?B?LzBXWjMxRUFsNFRIbFI1cW9uWkZVOFN2SXgvQS9Ic1UzeWZZbTV4LzNuaEdh?=
 =?utf-8?B?NnBTelY1bFVWd0s3Tzc4N1FiYW4rNjFFbnRYSTJLRXNVeS80eUhEcW04WmRy?=
 =?utf-8?B?M2E2TlMxL0djQWpMOWw4RlhpbjAxaXE3elIwSW9JMzZEdzN5L25rYnErZ2Mv?=
 =?utf-8?B?ZitkTEU1UHNTU1J3YW9Pei9TQ2t2TFNLSjdPTXdFbWNPRnZIdUtzam8wbUlv?=
 =?utf-8?B?MnhRWFc1dGMxcVJHRHcvNThkTjVqZkVvWkc1U0I0Y1prc2VNUk4rK2EraTZK?=
 =?utf-8?B?SzdJaGR6YTV1S2phd2hCRUJtMjgweVJjUURQWFZKNlQwYTlOZnpyY056d1dC?=
 =?utf-8?B?SWZQSER0TGRhSlpLcHY0Mk5yWEZIQkZ0OFh6YUF5cHNQak9EK25LQ1h3WnZv?=
 =?utf-8?B?NHFzY1NyUHQreUZCcE5DYzRJR2ZjR1V2WlQzczZUZ1ZuSHlHclF3cm5vSnVn?=
 =?utf-8?B?bGdtdTE0MjZpU3lMaFg5UWp1ZUFVRitoSXYvajQrQU5IRVZCZVFURnExNE0v?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4d9a1bc-ecd5-4165-feec-08dd0962ab18
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 12:55:54.1705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LSbKrfi3Y5pF9GPKiFKRaRCbpSFpvy61L3OrJ5xPGWsdY5IyGC1Bq1HdJ3rBtvSBsQsLOfyyUjBW3AQ0YgJDq+l0B80Fs1PIJhI8/qyYV0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4666
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


On 11/20/2024 2:19 PM, Mitul Golani wrote:
> vrr.vsync_{start,end} computation should not depend on
> crtc_state->vrr.enable. Also add them to state dump.

Need to update the commit message.

Also need to send to intel-xe@lists.freedesktop.org.

Regards,

Ankit

>
> --v1:
>   - Explain commit message more clearly [Jani]
>   - Instead of tweaking to fastset use vrr.flipline while computing AS_SDP.
> --v2:
>   - Correct computation of vrr.vsync_start/end should not depend on
>     vrr.enable.[ville]
>   - vrr enable disable requirement should not obstruct by SDP enable
>     disable requirements. [Ville]
> --v3:
>   - Create separate patch for crtc_state_dump [Ankit].
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 25 ++++++++++--------------
>   1 file changed, 10 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b386e62d1664..c395af419ce3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -236,7 +236,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   	}
>   
> -	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
> +	if (HAS_AS_SDP(display)) {
>   		crtc_state->vrr.vsync_start =
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   			 crtc_state->hw.adjusted_mode.vsync_start);
> @@ -316,6 +316,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   		       trans_vrr_ctl(crtc_state));
>   	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>   		       crtc_state->vrr.flipline - 1);
> +
> +	if (HAS_AS_SDP(display))
> +		intel_de_write(display,
> +			       TRANS_VRR_VSYNC(display, cpu_transcoder),
> +			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> +			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>   }
>   
>   void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
> @@ -352,12 +358,6 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>   		       TRANS_PUSH_EN);
>   
> -	if (HAS_AS_SDP(display))
> -		intel_de_write(display,
> -			       TRANS_VRR_VSYNC(display, cpu_transcoder),
> -			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> -			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
> -
>   	if (crtc_state->cmrr.enable) {
>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> @@ -382,10 +382,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   				TRANS_VRR_STATUS(display, cpu_transcoder),
>   				VRR_STATUS_VRR_EN_LIVE, 1000);
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> -
> -	if (HAS_AS_SDP(display))
> -		intel_de_write(display,
> -			       TRANS_VRR_VSYNC(display, cpu_transcoder), 0);
>   }
>   
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> @@ -425,10 +421,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
>   		crtc_state->vrr.vmin = intel_de_read(display,
>   						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> -	}
> -
> -	if (crtc_state->vrr.enable) {
> -		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   
>   		if (HAS_AS_SDP(display)) {
>   			trans_vrr_vsync =
> @@ -440,4 +432,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
>   		}
>   	}
> +
> +	if (crtc_state->vrr.enable)
> +		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
