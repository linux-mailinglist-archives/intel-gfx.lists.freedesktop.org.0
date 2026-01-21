Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIhEKGK2cGndZAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 12:20:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE3555E83
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 12:20:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07EE910E74D;
	Wed, 21 Jan 2026 11:20:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TqCl9tHm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DD9810E0D0;
 Wed, 21 Jan 2026 11:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768994399; x=1800530399;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZiHFgxUdlzxOmhy1ToEV6LtgMWECjgMjjdRkHp58KFY=;
 b=TqCl9tHmNltDjM0bu5GQLqdtywtYMaBDARIgBDGuft2Tmi2mURsNHsW9
 CM6wbNeBgxCFbLCLLraiIO9rdbN24x/MiUrE/0U8xkNEOEM659k0yUoEr
 GBTbXCFSKyL3t6bn1YD57z1HmY/+v6q2jI4Lt4oPtx89EGIChd6dTtGNz
 70kKqqXNMcMQFZzqGXsGwKTOtz3RBjJcLLeq7o5FGXX2FQRgh/Se9ENto
 NJodcF7h+tNLLeM49fF9i/O4eu7We6q+iTAXBOB3sBXHRvi1lF3URk3h9
 cZHtykcbtF1t6s1tQJF+FA6GE5CTl6P+yUCQeOc4WX3uPsSbE++NeijgM A==;
X-CSE-ConnectionGUID: 8NRYncZOSAu6mekVS0Gayg==
X-CSE-MsgGUID: y2Ona8EOQ6GZCuQLT4M7Lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="95690899"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="95690899"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 03:19:58 -0800
X-CSE-ConnectionGUID: qvR52Ut4SBOKyBu3dIlCrQ==
X-CSE-MsgGUID: e2RARZpdQMew3C2vz/Y9BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="243991064"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 03:19:58 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 03:19:57 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 03:19:57 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.15) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 03:19:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q0IIh4AIa9Uk//jcnLe/6vOu6ApUdHnAhL9lm8s2dSnNPphE09h3heZEgtEn9YyQdsy2y2qV0mb36Up/rUd2BaPTXwPsaN6P1BEfUxSgs0WIIp9tbgpWpxFHRtEBcfaJztOFd7vEYFjYtwj/sEy75mdThu5fQOw7REJGG6S184A0zZVcQzAfqB7MDi7Sh14ZZnoHe/fxUGbfYo9IaW8a8ho8H9Ac8HTmi/y6G0jWDPaOLC1Ax9/zL7TDv2uvBq6vMx+4Y1534WsjpLIepcpwXV7tg9T98JmqaU81Gk58/gQIUeW3IMHGH14AIUjjFjZtW+/ZUY/lH363GcdST2sOWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xmWEPXJtBP4GVYmXtnhKDrA7Eb8qSKd9smAEhW4/8Ps=;
 b=ApwSSR60ztkZNvEBA5BZIK95migKvQzoUazJEj6ofmB59QXHv1NRsoJU2SLrUhU5XIPzENjNnKsQJvMdWXhBxGmsnGw0IJO6FTlYBMYT0yLj2mBHPDbsaJOJS/wp27eVRekJPFCeYOarMbkE6bL565LDZaBu2g6/27PmW9Vhga9PgBWINFdTOKZARiaa+GVc+OccRznuwo7Ju6tWTMqH1EmpLbd6JVnQZCDgNxKbO6WIIbRSx5eYEJqSvCvvVEj1yr7wYmEMCo3YBxuVBEAUq1RiBldMGSHKvO4WS7PPXBYVpe4jDcJ2skf8X7BEEiMpxUi4uXORrkJtmOBTXzl+OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB7158.namprd11.prod.outlook.com (2603:10b6:806:24b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 11:19:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.009; Wed, 21 Jan 2026
 11:19:53 +0000
Message-ID: <8e26e8cf-5893-409d-9e17-74d8f072cafc@intel.com>
Date: Wed, 21 Jan 2026 16:49:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/14] drm/i915/dp: Rework pipe joiner logic in mode_valid
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
 <20260121035330.2793386-5-ankit.k.nautiyal@intel.com>
 <746b08e5d92c4c734011868711da53eda8883a12@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <746b08e5d92c4c734011868711da53eda8883a12@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0103.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d1::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB7158:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e9aa85f-0e37-4d39-1e40-08de58deffa2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0svZmdudEVFMWUxdTZnRnFVSXE0MjBzRDdCM0FKTUVOTEFzTDA0S1FzSGxY?=
 =?utf-8?B?dEh2STRIbkpMTDIxa2lYSnJlb0lXcWxRK2JYZ0pKaC8vdVJCYWs0QTV1a1di?=
 =?utf-8?B?RDZCRXo2NWpiZ2l5eUVIVk5Ib0VkRTBJSUU5NzMvakwwb3dENncxcVFmalJ6?=
 =?utf-8?B?bE1mM1NZZzBodkliQXJDOUpTNHgzd1krWnVqOVNtNFptK2VBL2RtczE5bHZR?=
 =?utf-8?B?dlZqU1hxWUYrU1c2SFZicGpHTEltTWZoS09JbStleHZQdVMwTWU1Unk2VlBQ?=
 =?utf-8?B?akh1aXdOMVZuWVBvUldSMjNvWGpEeUUrbWhlUUNvekhUOGlNeHBZK0pnZGFT?=
 =?utf-8?B?VloxVkJhWkdNSk9pbE92UlNSYm9scWppM1VYdkduZmtMcElncU9TbnJJLzRH?=
 =?utf-8?B?OE4yK0s1dW4zUVVQZ3pZa2JUaVFPRTJUeGEwVFBiRUlxOStibzNNNmRqREpZ?=
 =?utf-8?B?TDhpZEVmZlN5TXkvdlc3SUpGY25aWFVodFV0VXZmSUt4UUpxNlByMDQzclU0?=
 =?utf-8?B?aXJZdXY3eW9Pa2tVRmdzZFRLTi9kMG5uT1F1Qm9ZZ04rY2FnUC8xQmJFYVdn?=
 =?utf-8?B?cTZGdVNzaVpVaXVlaUxtQkFTS0N5cnV1QjRkK1dqbU12OCtnWXNQZWRlWEJ6?=
 =?utf-8?B?aXZLUStHWSs2WEtNT08zWG9XKzU2YSt2SzdpQ1poYTdJdzdmYVNSb25BQTA0?=
 =?utf-8?B?bG5meGR6UkpHVjFHTUVVTUlzSWdDb3JxTkdHazI2RDhpeHhHd1dkYy9aZURI?=
 =?utf-8?B?NVJ2V2R6aXdwNWxJZGFqK0NLZ0J5SnlDSHdGcENnWEEvSi9ZcVV0ZGs0RkZ2?=
 =?utf-8?B?OHVqSXVBai9SRFdTN0VCTmpLZlAzaVFuUFgyb3ovU3QrQ3oyK3RqeTBqcFN5?=
 =?utf-8?B?VGt6ZGNjeTI2YTNHTWlQZDFYRU9LekIva1h4Mkg3ZXNCUFd1VktYcjUrQVlr?=
 =?utf-8?B?U3NucVR2Tk9JMEpreGdiUjlNYmxsUHFmRkR2NTlCR284eE5zYXI1RVQrdEcv?=
 =?utf-8?B?UDBxT3VuUDJnSTFTd2g0aUREZHhRY3NOL2RCWS9MUlFIOCt5eU9VMFJBd0FY?=
 =?utf-8?B?L0dIWUs0ZzNXa0NsdzhvTGErcm1RSEZtK2l4ZkJjaXJvTXdlUEp2ZU1zSUVz?=
 =?utf-8?B?NmdXaGI0TkU2MWtnSVVuSDJacnJXbnFjVzI2LytibDVaL2tNb2pXaFRXMkoy?=
 =?utf-8?B?Y01sSnlyQkVOTEhwdGNPVzVWYTVGazhoWHM2Q2Rsa2xlUmpGYlppc0ZkdDNY?=
 =?utf-8?B?d2dEQlFGOE5rNXRvRGNKQ3QzaHBwYlRhNXgxUW5LdzMrOVRYRXBlVmJpZVlm?=
 =?utf-8?B?cEErUEVlU1dyeUNUY2VZV2x4cDZNeFUyM0dzcEJLTWl5TVM3OUlQV1dlSnFu?=
 =?utf-8?B?TnpKaGFxN3hMSWhQLzdWMXRjUHZ1Wk5YNnJLTXlOUVpOekpSRU1Jb296QURL?=
 =?utf-8?B?Y3pUdXFiOWxRbzRmMjh3d1JOWmFsZlN5aUVwUUNQVXdiYnJ1c3FsOTJKUi8x?=
 =?utf-8?B?bitSNlBMNFh1d0ZuSldhNWdONGRaa1RocjQwdkpwVWNweFAzSjFYcWFKY2t4?=
 =?utf-8?B?QVZlUXlGUno1eEFiMnhrNGJWSnJURHQ5M2RHMzV6ZFpCZlBHRWdSUkpxS0Ri?=
 =?utf-8?B?dWNuQksvZFg4MjZYaUNtR0xUYlUwTFBvVlkrSzJ3dldlU3pseUFkaGdlNWpF?=
 =?utf-8?B?UkhxMFRjcGxMUHVVUzZtaUREeEVXSk1yeUoxTWFSQmJVcnRqcjJYMHJLOSth?=
 =?utf-8?B?a3FaREJsUk1kcW54VkFYa2RLQ294WGlaUlFCMVdIbDlES3ZKTkFMRzYxdzJi?=
 =?utf-8?B?WmhZSzI2NE1yQUw1Ykk4N001cVFXZDFES21XUWFwN1YvMm84dmM2M3E5d2NF?=
 =?utf-8?B?bExYQUQwcHorVW1iZGF4T0VCaDN3NEdFY2tEdlQ0ejNEOHhCcVN4YzhROEdP?=
 =?utf-8?B?SG53OCtlamNTdjV4OUlWUEt2M2pjNFB6czJWcy9TYThYaHgrZmdQVXlVRDBk?=
 =?utf-8?B?eDlZMDRYUFhCTlFlaFNncWJOcE9YdWhvbVNtQmZoSFJJRHF6NDdJVFc0S09N?=
 =?utf-8?B?eHlnV3FWaVVsTjVKUnBwV010L2hiMm5pMm5Jbk9BVGljU3I3b1Q3cjJuSlZJ?=
 =?utf-8?Q?UAiI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVk4WjRrQUVpVFhwY3ozVlNxOHh4RkN3d2x3a05EMVQxTUI1dG80KzZQcHp4?=
 =?utf-8?B?cXVNQ2c3OXFwakFpMnZ0ZXljNDVZcy9hdG5XSTB3Z3pvdDQ4dHptWjQvWFJ6?=
 =?utf-8?B?Z1VGQ2ZJaDBLbUxsMisvRlB3azdEWVNVNVFiS0FSVld6Q0QrWFNPSjN3MTFj?=
 =?utf-8?B?T2JKcU1pa2pHTGtsNmFBdVQ3VmNWUG9qdWtadStDVHVOeFdweC9rY3N6QUp5?=
 =?utf-8?B?ejRqMDMwSTJkaXY2d0Y0L0dvOVNybmczV2hrbGJnNzduRmY5SitPd1k2dVpy?=
 =?utf-8?B?eGZDMWQ2WjJkUE1SVG5BckpQVG9nMFRyNzN2dVhTcStZcEs0UWtuZlJsc3pu?=
 =?utf-8?B?RExmVk9wTXg2ZmNuYThNZUJEaGIxUFZXczRTWU8rZU1od2xoMEQ1bXNpNnAz?=
 =?utf-8?B?VVh1Z1Y1RUhjWThNU2wxOTFvQW5oR1VpQVA2VHlJbG9rb2kxQml3Uk1uSzIx?=
 =?utf-8?B?cnpuVXVlalQxMU15OWhqVjlUODV0d0h0MlR0MVlQNU5IcTk4TmdzTDdrZksx?=
 =?utf-8?B?VnA1bmpKVGtqOUNVZ2hRbXpCbkkvQVZ3K2E5R2ZqMEdOaGN5THBxcUVTamsy?=
 =?utf-8?B?NDRnN2ZPQ2FGSkY2TjYxOGJBamx3OGZCcHF6UTF4ejlOamk4TjQ2MmYzcWFo?=
 =?utf-8?B?ZUhYbjh5QlpXbE1vOWdlQ3NuaEdRcFhuYW41NU5uSTdmWXpDVzR2T1ppMWpq?=
 =?utf-8?B?WE1OUW5GM1BGLzV1cklmNk4wZWNYelpCdWxHZHFqS09YZVErN3NyUUdWc05s?=
 =?utf-8?B?QmxNYXRRQTUyaFk5U1pkbUl1R2U2aktQbXZ3clBFdHlaRXdvM21wc1IzM3VR?=
 =?utf-8?B?eEFLclNlbyt6azVpaHp5ejhTWHZBUTJTUjBYN0ZxNmtDaTUwaHdScDlzYXpy?=
 =?utf-8?B?d0hCM1NNZm8rTitLdktncXZDUUJCTkxuWm5vZVUzSGROdXpsVVBwMGdmaW5J?=
 =?utf-8?B?NFJYRzVCd2ROd3VURmFjVzVxUElnSmNMM3VYSHJmM2grZGlWdVhUditHK2xm?=
 =?utf-8?B?K2l5SmZBZUZKZ0NtUHNINXpOWWx4SmdIYy83bUlGQU1kcWFOd1gxdVpMY09x?=
 =?utf-8?B?VVdTNldCcmtFSmF1T0t4R2UzLzMybWgvQ0tXZW9wYjFVUnFFZFhsSUpGWitt?=
 =?utf-8?B?QXgrSDA3M2JqY1dURkhnYm0zdmw3OVlnUVp1cy95RStOSFRjRmpJUytVK0ZM?=
 =?utf-8?B?OVpRekM2aG1OS0RLYjc1aWNCQnJDSHVhOVZ5UDVqZXRpOFBzVjM4b3BrUzEx?=
 =?utf-8?B?OUc3S3ZjU3A0bEVhVjBwZ0psZndxM2QwSkpMK1ZEWGorV0NWdUFwUVU4N21T?=
 =?utf-8?B?Q2cwbGdRdDA1RFZyR3dYdjZjMXYwTnkrWjNrampDNmZOOHJkeERhdTBmZDZh?=
 =?utf-8?B?bWZ5YzBzQnBaS0k1eEd1bkZlYlVOMDVudzloZDEzREswaWNsQk9Gb05ocXhC?=
 =?utf-8?B?UStNVjVNQUxVbkVSUVdIM2ZaQ05qOEFvL29JaUZWakdhV3ZRQjJwR0VNWnJ4?=
 =?utf-8?B?WWpaN3NZbjVmblhYQ2JHVmpSZEMvS0tadkp4K0V6cnNMQkExWXN4QUFoUzhv?=
 =?utf-8?B?aGVGRUhhYUdhUWsrT2xDbC9xSklESk94NThKc0xyRTVha0EraHBneG1SSEh5?=
 =?utf-8?B?SmN2NjRGbzFIa1l1M3UraWtTZGRxM3VwVjFhblNCZ1h5T0x0a1RTTWk0QUNF?=
 =?utf-8?B?aWgrUmVzanJEbmtYKzM2TmE1RWlTVDlvbkFUcUNmd0V2K3F6RFhjWVlydGJp?=
 =?utf-8?B?alpUWWdJNmdzTmE5QlB5Q3FtSVYrUmNhalRBOTF3RzRmb09qLy9lZHpXRzk0?=
 =?utf-8?B?cnZZeUpQTWtEbGljMlBsMEhubWhKUWFvKzJUUnc0ZEZXanlmY3ovaEVFRlFB?=
 =?utf-8?B?dkhzLzA1akdpazY3cXN0TTJKdWp4RmJ5TS9VQmd6cU53a1hKQzNPcFJidWVN?=
 =?utf-8?B?cElOc25yTzlyam5Xa1ZNRUYrc2dRbUhNSiszYmtGMFYvZ3JGaTBrekQ1bXdB?=
 =?utf-8?B?eURWRXlJVTQ1eUtSZG1hUlN4RWZGMzVqWGVCajNackl5M0NqVWtIN21OZSth?=
 =?utf-8?B?dkRqc24vQXZxamg3bDhkdm9pUndNVXBzQ1ZNM0s3dURnakRVamJ0M1FxcGJQ?=
 =?utf-8?B?UWhqS3UwczNFZnpMMEM3M0pRdzBsbi9qQ01Od2tLWEJwazVTa3p3SGIvOGM1?=
 =?utf-8?B?V3cvZzdVZzVlbG4rSXgxTDE2WEtIWmxqaG03dkpIWThuYVZCRExLeWtIZ0tR?=
 =?utf-8?B?SmVvNnJXbDJzUm5maTJSZUpOTmlUc3BQeGRPSWNHSEg0UHJOeUViYXZuWXh2?=
 =?utf-8?B?K2t6T0ZuK2s5ZXdNbkovZCsrQmd2S1U5TFhjb3pycFVCcFg5ZSt3T042TzBK?=
 =?utf-8?Q?tAQSTa/+VUxOEfkg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e9aa85f-0e37-4d39-1e40-08de58deffa2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 11:19:53.1745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9oUXUu5VIpkAxtzuMA8lGo8VD9uCydpZFdtZR/lNNGq/cdPAO1jd1PCZmoVfgAyhZfaqywE4wVv3DHDE/njZzW3N+/bh2ble4/vW5JFvSvI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB7158
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: DEE3555E83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 1/21/2026 4:24 PM, Jani Nikula wrote:
> On Wed, 21 Jan 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Currently in intel_dp_mode_valid(), we compute the number of joined pipes
>> required before deciding whether DSC is needed. This ordering prevents us
>> from accounting for DSC-related overhead when determining pipe
>> requirements.
>>
>> Refactor the logic to start with a single pipe and incrementally try
>> additional pipes only if needed. While DSC overhead is not yet computed
>> here, this restructuring prepares the code to support that in a follow-up
>> changes.
>>
>> Additionally, if a forced joiner configuration is present, we first check
>> whether it satisfies the bandwidth and timing constraints. If it does not,
>> we fall back to evaluating configurations with 1, 2, or 4 pipes joined
>> and prune or keep the mode accordingly.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 144 +++++++++++++++---------
>>   drivers/gpu/drm/i915/display/intel_dp.h |   7 ++
>>   2 files changed, 96 insertions(+), 55 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index fc7d48460a52..02381f84fa58 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -107,6 +107,13 @@
>>   /* Constants for DP DSC configurations */
>>   static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
>>   
>> +static const enum joiner_type joiner_candidates[] = {
>> +	FORCED_JOINER,
>> +	NO_JOINER,
>> +	BIG_JOINER,
>> +	ULTRA_JOINER,
>> +};
>> +
>>   /**
>>    * intel_dp_is_edp - is the given port attached to an eDP panel (either CPU or PCH)
>>    * @intel_dp: DP struct
>> @@ -1445,13 +1452,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   	const struct drm_display_mode *fixed_mode;
>>   	int target_clock = mode->clock;
>>   	int max_rate, mode_rate, max_lanes, max_link_clock;
>> -	int max_dotclk = display->cdclk.max_dotclk_freq;
>>   	u16 dsc_max_compressed_bpp = 0;
>>   	u8 dsc_slice_count = 0;
>>   	enum drm_mode_status status;
>>   	bool dsc = false;
>>   	int num_joined_pipes;
>>   	int link_bpp_x16;
>> +	int i;
>>   
>>   	status = intel_cpu_transcoder_mode_valid(display, mode);
>>   	if (status != MODE_OK)
>> @@ -1488,67 +1495,94 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   					   target_clock, mode->hdisplay,
>>   					   link_bpp_x16, 0);
>>   
>> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
>> -						     mode->hdisplay, target_clock);
>> -	max_dotclk *= num_joined_pipes;
>> -
>> -	if (target_clock > max_dotclk)
>> -		return MODE_CLOCK_HIGH;
>> -
>> -	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
>> -	if (status != MODE_OK)
>> -		return status;
>> -
>> -	if (intel_dp_has_dsc(connector)) {
>> -		int pipe_bpp;
>> -
>> -		/*
>> -		 * TBD pass the connector BPC,
>> -		 * for now U8_MAX so that max BPC on that platform would be picked
>> -		 */
>> -		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>> -
>> -		/*
>> -		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>> -		 * integer value since we support only integer values of bpp.
>> -		 */
>> -		if (intel_dp_is_edp(intel_dp)) {
>> -			dsc_max_compressed_bpp =
>> -				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>> -
>> -			dsc_slice_count =
>> -				intel_dp_dsc_get_slice_count(connector,
>> -							     target_clock,
>> -							     mode->hdisplay,
>> -							     num_joined_pipes);
>> -
>> -			dsc = dsc_max_compressed_bpp && dsc_slice_count;
>> -		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>> -			unsigned long bw_overhead_flags = 0;
>> -
>> -			if (!drm_dp_is_uhbr_rate(max_link_clock))
>> -				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>> -
>> -			dsc = intel_dp_mode_valid_with_dsc(connector,
>> -							   max_link_clock, max_lanes,
>> -							   target_clock, mode->hdisplay,
>> -							   num_joined_pipes,
>> -							   output_format, pipe_bpp,
>> -							   bw_overhead_flags);
>> +	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
>> +		int max_dotclk = display->cdclk.max_dotclk_freq;
>> +		enum joiner_type joiner = joiner_candidates[i];
>> +
>> +		status = MODE_CLOCK_HIGH;
>> +
>> +		if (joiner == FORCED_JOINER) {
>> +			if (!connector->force_joined_pipes)
>> +				continue;
>> +			num_joined_pipes = connector->force_joined_pipes;
>> +		} else {
>> +			num_joined_pipes = 1 << joiner;
>> +		}
>> +
>> +		if ((joiner >= NO_JOINER && !intel_dp_has_joiner(intel_dp)) ||
>> +		    (joiner == BIG_JOINER && !HAS_BIGJOINER(display)) ||
>> +		    (joiner == ULTRA_JOINER && !HAS_ULTRAJOINER(display)))
> There's a bunch of superfluous braces in there.
>
> Anyway, this makes me think if we should reconsider the HAS_BIGJOINER()
> and HAS_ULTRAJOINER() naming, and the enum thing here.
>
> We're adding a bunch of logic to enumerate combos, and to check those
> against joiner availability. But really, we could have a HAS_JOINER(num)
> which says whether we can join that many pipes. Maybe even have the
> compression as parameter.
>
> I know the spec talks about big/ultra joiner, but for the more casual
> reader of the code, you really want to know how many pipes you're
> talking about joining, not the *name* of the thing.
>
> If we had that in place, we could turn the whole joiner loop here from
> enumerating the enums to enumerating the number of joined pipes. and
> whether we can join them. No need for the enum at all, and I think the
> code might end up cleaner too.

Oh yes you are right! It will indeed be more intuitive to iterate over 
number of pipes we want to join rather than iterating over the joiner type.

Still need that weird force joiner index though.

Also realized check for NO_JOINER should have been (joiner > NO_JOINER ...)

This explains the BAT issues. (With above suggestion this will be not be 
needed).

>
>
>> +			break;
>> +
>> +		if (mode->hdisplay > num_joined_pipes * intel_dp_hdisplay_limit(display))
>> +			continue;
>> +
>> +		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
>> +		if (status != MODE_OK)
>> +			continue;
>> +
>> +		if (intel_dp_has_dsc(connector)) {
>> +			int pipe_bpp;
>> +
>> +			/*
>> +			 * TBD pass the connector BPC,
>> +			 * for now U8_MAX so that max BPC on that platform would be picked
>> +			 */
>> +			pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>> +
>> +			/*
>> +			 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>> +			 * integer value since we support only integer values of bpp.
>> +			 */
>> +			if (intel_dp_is_edp(intel_dp)) {
>> +				dsc_max_compressed_bpp =
>> +					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>> +
>> +				dsc_slice_count =
>> +					intel_dp_dsc_get_slice_count(connector,
>> +								     target_clock,
>> +								     mode->hdisplay,
>> +								     num_joined_pipes);
>> +
>> +				dsc = dsc_max_compressed_bpp && dsc_slice_count;
>> +			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>> +				unsigned long bw_overhead_flags = 0;
>> +
>> +				if (!drm_dp_is_uhbr_rate(max_link_clock))
>> +					bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>> +
>> +				dsc = intel_dp_mode_valid_with_dsc(connector,
>> +								   max_link_clock, max_lanes,
>> +								   target_clock, mode->hdisplay,
>> +								   num_joined_pipes,
>> +								   output_format, pipe_bpp,
>> +								   bw_overhead_flags);
>> +			}
>> +		}
>> +
>> +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
>> +			continue;
>> +
>> +		if (mode_rate > max_rate && !dsc)
>> +			continue;
>> +
>> +		status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>> +		if (status != MODE_OK)
>> +			continue;
>> +
>> +		max_dotclk *= num_joined_pipes;
>> +
>> +		if (target_clock <= max_dotclk) {
>> +			status = MODE_OK;
>> +			break;
>>   		}
>>   	}
>>   
>> -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
>> -		return MODE_CLOCK_HIGH;
>> -
>> -	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>>   	if (status != MODE_OK)
>>   		return status;
>>   
>> -	if (mode_rate > max_rate && !dsc)
>> -		return MODE_CLOCK_HIGH;
>> -
>>   	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
>> +
>>   }
>>   
>>   bool intel_dp_source_supports_tps3(struct intel_display *display)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 25bfbfd291b0..a27e3b5829bd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -24,6 +24,13 @@ struct intel_display;
>>   struct intel_dp;
>>   struct intel_encoder;
>>   
>> +enum joiner_type {
> I wrote the below *before* I wrote the comment above, which makes all of
> this moot, but here goes anyway:
>
> "joiner_type" is too generic, it needs a prefix.
>
>> +	FORCED_JOINER = -1,
>> +	NO_JOINER = 0,		/* 1 pipe */
>> +	BIG_JOINER = 1,		/* 2 pipes */
>> +	ULTRA_JOINER = 2,	/* 4 pipes */
> Ditto for the enumerations. Why are you explicitly initializing the
> values, are they somehow meaningful?

The idea was to shift 1 << joiner_type to get number of pipes that are used.

Wanted to check for forced joiner first that we get from the debugfs, if 
the value provided can be supported well and good but if it cannot be 
supported, we do our default thing from next iteration onward.


>
>> +};
> The enum is about the joiner, not about DP. intel_dp.h doesn't have
> anything that requires the joiner type.

Agreed. This is more of a DSS CTL thing.


Regards,

Ankit

>
>> +
>>   struct link_config_limits {
>>   	int min_rate, max_rate;
>>   	int min_lane_count, max_lane_count;
