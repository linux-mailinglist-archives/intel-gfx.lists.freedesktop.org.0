Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E822B0779D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 16:08:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0375110E756;
	Wed, 16 Jul 2025 14:08:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JAcjo4OF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 794DE10E756
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 14:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752674880; x=1784210880;
 h=content-transfer-encoding:date:message-id:from:to:cc:
 subject:references:in-reply-to:mime-version;
 bh=SPdbGiubXb4Nh+vam4tyovMd9kS78X9c3T2lnQrBeNs=;
 b=JAcjo4OFlDpWqIxWuz4Sdr6xTwjHHwnewPHsezjtIl8z9nEjDosYIHWh
 W2B/+WVtFqDJeFO0V1V2SGxhdpFgp9gzfzTvoxiH9ZPKY5Av6Cdn+az1M
 E6H88ice1sLSNDmEjCx7Szt9xX+/WKVloRCbtuiaU6dlNoV+9Dd3Oy09d
 3YSE+EJgPrFgtXptQFJm39WW2htkEEyBughx5UQtYXF578scf8cghfDYT
 sFmrDt+cDkQyhDeQ1nqw+/hhs8ZnmD/JPOn+oyunEnnxQsdVJKoGs8Evd
 n4++HD0LCqCIcSQg4FH8ZSG0vbLsZWjG1bZJBbTVm2N8OWuFjXlMrqtly A==;
X-CSE-ConnectionGUID: ORp29KAdQYGn+MfSgBJMrQ==
X-CSE-MsgGUID: d6FBCjg4T72jGER71v4IDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="65491927"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="65491927"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:07:59 -0700
X-CSE-ConnectionGUID: nTs0yy/BRuCCQkIMM0MOyA==
X-CSE-MsgGUID: v4yAD0FaSGuq22FQFu2ysA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="188519364"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:07:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:07:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 07:07:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.70)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:07:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pfL3mkzVNzh/GwAoGrNsGH/O9r6jb6OjEBF7E/5YO0omPna17ag/3dlO3fhJGF268okD8WgihCiulICxqmQlu/kkRUlcatKTqzYBgWHt3sU6Xq1vh5SmC2mf0r++0a+QCumhaJbJIOATq+GakGTfKfJ2Pxkjwu+MyBqsfyDuCoq6xdghvI8uRT6JVnZMJg4XF8u5vjLAGiIV4Bo1bpH2OaPAj3X1MJ6gbPNYOc2OpktzJlkInUYasd0Ng3krPBXcalpNMAOB6I4lFrStpq7H5CFVSYF1FNoscF/OPrkvu+/bUt+7BMeHenJjVj8K9WT7kq6OVvTnEUM6btSlk0G+JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SPdbGiubXb4Nh+vam4tyovMd9kS78X9c3T2lnQrBeNs=;
 b=rRhma0umpCVEb1HEvgeN2Ouk2kYRSFbmVVRHPnp9tpSct4hhNo/C9Sg5fMrzTxShjGlUAIau07aWDY4XINPtRbJsUbg/5j/29nbX/6FQxomkGu1eulMLHcY5b9MsqO/gcNH7iRp7KAl2EOLZWZE5HH2IYy//2ug0bnkrTeEIQGe9nH6GsI1nTc79KPqeOPorhBjaoaWAqa4NlZWDa/jsw8kU1rCFaMcZkzxNfznnGkG/i7zfhLg2aXhigFM4Ge15YbohE4MltAarz9435O4rbRJbt4o+ia70m1zEnpCvscH2xmE6jmrOar25E+g86GGOQyf1oCK2V8CiRHa6KWTzkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by PH3PPFB9A266170.namprd11.prod.outlook.com (2603:10b6:518:1::d45)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Wed, 16 Jul
 2025 14:07:29 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Wed, 16 Jul 2025
 14:07:28 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 16 Jul 2025 14:07:24 +0000
Message-ID: <DBDJDOBE0J85.10OYYZC386V88@intel.com>
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>
Subject: Re: [PATCH 2/3] drm/i915: Add braces around the else block in
 clflush_write32()
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-3-sebastian.brzezinka@intel.com>
 <ngr4desu7xlkg5ja3vtvkwvdeznrhx7iej6wn2cx4c4lb3swt7@4yixyjhef4vq>
In-Reply-To: <ngr4desu7xlkg5ja3vtvkwvdeznrhx7iej6wn2cx4c4lb3swt7@4yixyjhef4vq>
X-ClientProxiedBy: WA2P291CA0023.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::19) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|PH3PPFB9A266170:EE_
X-MS-Office365-Filtering-Correlation-Id: a758acf1-acce-479b-40c6-08ddc472195d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dFJRTmZ5NlA5NjFlSWQ5MVR4bU81ZkRXRmdjR1NTNS85OW8wVHlKUURxR2xE?=
 =?utf-8?B?cDIrd2lqSUp1UlB6Vnk1TEduSWJSd2lNcXl6WHFNaE5DVnFlcmhXTzdoM1Ro?=
 =?utf-8?B?QVBPK1BnYmJQSHl0ZGQxV0s4VXFPUnFpek42N053cDFIQTZ0dTdMcDRzSXhC?=
 =?utf-8?B?NGcwT3hvVW5yWVNsdG15bUsyeGZ6QXVYenU0Y3hFd01sVXNnWkpmM0ZuZW9a?=
 =?utf-8?B?RDJrVUVFZVFUSzl1QlRCRmdORE5tYmg4UHBNc0xxV0VSeEwvc2U2QmFsY0ly?=
 =?utf-8?B?YldzRTR4TmUxRXI5WEtkZ3BER0FKUHFtWitUTjJJaU8rSWFJUGZVT1kxdFI3?=
 =?utf-8?B?SXRhOEVYbStYS0JPb3RKc3NnTGh6NWJrM2hOQ2pvamZ5Y0lLNlByNEVRaXl3?=
 =?utf-8?B?L2FSSjZlQjJYZFVyNk4vcUV3ZUFOSklwZmdobENybzZ0dDhUT1lXc2lZNjFy?=
 =?utf-8?B?SURMZTN6ZjVTTHdjTGRMQWpnL1lhZnVKRjZTUzJtZThTMEREN0pyZ1p4VXJp?=
 =?utf-8?B?QVFZSkhYNXhmeElIbkZ0WmlId2hNUnlsVTFFTFVhS2wzV0kzVm5BcUc3L3FI?=
 =?utf-8?B?V1MxKzYyZUJDbWU0TWJLQy9Kb2xCWjh3Q0w1NjJZZWN5V2w2UllRRC9MWG9n?=
 =?utf-8?B?S0szUXJmZEFYNzJ0dnJRL1Y3REtnM1BGdkFObGY4K2Z2U0ZVRW5qSldsQTQx?=
 =?utf-8?B?WU9ZaVl1NjRoZDhKdFk5YlkyU3c2eXc0ak1mWU1xeEJCemZpN09xeEthaGJ3?=
 =?utf-8?B?ckNCTmRTSHhYclV1aUxYVXFCdERCT3dJZnM4cnNta2FBTVVKaXNEdER2bjMy?=
 =?utf-8?B?dTZGNmtxWHlncEdwbkViVGU0R3RkYjAvT3hqc2pkS0Vnek1hZFBYQkhzeWQ3?=
 =?utf-8?B?VGdKS2dFeGZTc0pCMEVoYktaeEN2VlpDTUY1cnc4ZlpYeXVMd3Y3ZXZJQjZG?=
 =?utf-8?B?Wkx5U0UvSElnRXFLM3VqNWtXdXZXTmJjWnlPR1FWSWdTaU9QOU5NK3RZRXFu?=
 =?utf-8?B?NytNdHc4SEx3VjNjMGZDZlhTalliTUpFaWlOcXhFWmR4T1lwUCtFSzZJQUZX?=
 =?utf-8?B?cm1CeFFHRGlZN2NiRFBaenBpM2pzOEdwTGhqY1ZNS2ZZUndici90djN3cHpM?=
 =?utf-8?B?dFNHbXZPSHJpZmIxcVFBWXJRSUpSemVtVWdwd01sanpOanNCR245djhvYXox?=
 =?utf-8?B?Mlp0NmFWMU5iek9LT0ZUajltYWszYjBjTUZLWHhWMzV0WkVNRU52M0ZaOW84?=
 =?utf-8?B?aHYyTVN2L0pta2Y2WkorUW9ENkI5dXh1Q3UzYlUvalFxNTgvR1E2cnBpeFZR?=
 =?utf-8?B?S3BRWUtqSXRnZ3RjNzlReVZlczZBL2duRy9TU1ZraUlFaFFFdWh6T2wzSVF5?=
 =?utf-8?B?TVRqRFhweXRaRmVFRzJkWkJnaHhnb3RzMTFCL0xTbDJzMkdYenowbXpuRGlM?=
 =?utf-8?B?djJSRFAxaTJsYnlUUXhqSVJRRE9zY0lPQU91ZlhWQUUwQ2tScVZ0Q01rUWZi?=
 =?utf-8?B?a1hZVDJPK1hpOGdoeE5FRzhhZk5JY04xQ0U2aUN6TmhLd3hKV05CcDkzMU9h?=
 =?utf-8?B?NGFmU1pxbjRJTndHNC8yNGVUQysybkF1NTlVS1lUWFhMbmxRZnYwWVZoK3RH?=
 =?utf-8?B?WDNqMzBWbklndXR5NFd3dyticmNuaU5ZcE5nUDlCS0o0bGRDWFRydW1qNXVz?=
 =?utf-8?B?WjNmbzE4VlpqQURPZDh4NktScVhuNXRzNkdDUXZPK01NK2s4dlZMTzM4K2k4?=
 =?utf-8?B?eXJUMTRRU3ZmaDdUT3FuTTRKQnBhV2FkQU96bUpMOXYvSVlPc0s4bmVaL3RH?=
 =?utf-8?B?NnpJSDJGNU1Yb3dSRHFLNmRmZXpTem1mMTVLQ2FUUVQ4UkNqTDNrRlAvcTFo?=
 =?utf-8?B?emV2VldUMFlzbXJCYWtWS2szbnNxMFI1QU56UXhKZDB6UUFobHZ1UUdjeG82?=
 =?utf-8?Q?EfFA6WBszUg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGExZ0ZGZjFXd0RBczJaTXhHbDlvTG1pVk1BeDQ3Y2w4M1V5eVZLaTNhT2Ji?=
 =?utf-8?B?emdoZGEzYVEyYlU4VG5pYkZhWUtTZTZ3ckdHTjhtWVdQbW9TUkphaFY3NFM5?=
 =?utf-8?B?WXBnZ2NYdUxqTXVHNk5JQjV5STRTdWdGU2FXc1QzZzhFNUhnMy9nVGs0SFNo?=
 =?utf-8?B?WXlnUE9uMVpTU00yU1poYXQ2d3dFdXE5dVNjRmVXSVdtKzRWbjJLODhGQkdK?=
 =?utf-8?B?Skt3U3VBT1VNU296N01VUENJdXYzYlJNSUs3V3llL1NuaGpTWVNYd0U0UzlV?=
 =?utf-8?B?S2hubVViOW1rbGw3TXJjSFJwRE1KZ2p0b3czNDFCMHZndTRWNmFOVTRxU1dF?=
 =?utf-8?B?allWU1orL1AyeUY1Zndza2UzQTRRaWdlU1daK3NSWjNCWkhoS21rdlVLNXQx?=
 =?utf-8?B?NzZod2hoTCtIdFlBY3ErWXRvRFo4OWVLREZOeWl2NjhCOXNMQUxZa0xGVGFN?=
 =?utf-8?B?bzNPemZjSE1UeXhaQmkxR2YrcUpsWjR1R1FMUkQwTGVPdUE4eDZUYTU1K2ZT?=
 =?utf-8?B?WlFUeGlzdXFIWFFTa2RaZmF3LytsaTFtdVVqd2dzcGdnek5nTjNtVVNSLzJw?=
 =?utf-8?B?RVVHMGkrRnJtang1UEwrKzAyblVIU09UREdMb3FXR3l0LzA0dHpDbGw1R1lk?=
 =?utf-8?B?cW5JZGkwZ3dmUDkrZUhsVllYNE84dXFtWEw2MUlTYUhOL1Z2NWphR3g0c005?=
 =?utf-8?B?dDZIQ0hBQ0lhWjlQZ1lLWVZqS2s1bEdhZEkwQWtHc0p3enc1T05IQ3RXeW42?=
 =?utf-8?B?b0dKMUlQRUhJeC9WR0RaSDdrclJMaVZ5Y0N6bFlCdHMzc2Q4RnBQaWJ1enBm?=
 =?utf-8?B?aXRuR0FMYXVKU2lVMHdVUFRDUjdJTUJLdEVTOWluREZvUWJzdDlrZVQ5MU91?=
 =?utf-8?B?S1A5Zy9heFduV29uV1d5RWlES3pxQUZnVXJ2dGVNM2x2QVZnRTI4akFTMWpq?=
 =?utf-8?B?YnBueFVYeng1TlhpM2VEWDlCNTVmWXF1YnRNUVRoc0NBN2NXY0RlTHRXVkdG?=
 =?utf-8?B?MVFLYllEUlk2b0ZxNnBXSmJjVW1KVXVTN0hVazlvT21Ucjh0Q0hMQ3BFRGJE?=
 =?utf-8?B?RnFUaXVwTytEZEFDaVVFZnExaHZpZENXTlFvOU5OSlpLdGZaZ3cwWkF3NjRi?=
 =?utf-8?B?MkE3b25xaGhCRk1XZWN4YkdzTUdVMm95SEhKdjBFRnZTVGxpaU9jRWxwSkJS?=
 =?utf-8?B?azRkcTlPYXkxMmRCSzAzZ29FbnErN2JwSDBMblZNYVl4RUQ1S3dNTGtWbldl?=
 =?utf-8?B?cDN3eDFQTFZQM3BNK0hSempnd05PV1dtNUtrR2xwSFZhVFZsS3I3YlpIOU5i?=
 =?utf-8?B?akkxWk5HekxUYVFJWElSQzVObEhJMm9uajN5R2paMzdyZ09EcERNSnBpQThD?=
 =?utf-8?B?WE9WRGpPY0hoWSs4TWI1ZXkwYXk2WmZXRC9FZDIySm5kM2RVNGFyTXRxTFRm?=
 =?utf-8?B?QTBIMW8xWFlVaFZjeEI3NTlheC9UR09wSUcyeHVHTitodWlWWFNZV0R3U3VE?=
 =?utf-8?B?Smhsc0N3ell4UVJlYk5SNVMzeTlzcWZYWDBaUTZ0VUhNME9aRkRDcGxtUzZ0?=
 =?utf-8?B?NWxHMkxCRTNZQ2tJcXBJOWpHK1pnNi9MTjByYndsMkRPNEd0bE5qWkVWOS8y?=
 =?utf-8?B?anFFQTIwUEZOU3ZlUHhGeWQ5Q1BwdWhjc1R1UkhEMVNRcVN4RjFiWmczS0xR?=
 =?utf-8?B?VnJpNjRPUFRhOWFlS2dZZlI0QXlka3VmSWJONC84VklxL2JPelJtSjNQU0d3?=
 =?utf-8?B?TEovSFlRcDE3aEx4dHZlczhVaGNtQm0weEJib09rQkVJK0JQZTM4N1B0MnJ5?=
 =?utf-8?B?d1JMMDE4VE96R2JQTlZqN2VQVS9HTlNkcWxhSFVMb1Rrb2N6SEZxZXR4Z2Y4?=
 =?utf-8?B?cWZDdFN0dmV3cmJxcGZSWXlRaUV6L0NlQzZzd2Ftb0dLSFlGR3NSQ3c2dXZG?=
 =?utf-8?B?aDdYeTByQmcralJrM1JRbXdXeWJrb2JuYW0yZHNEV1E0OHZqL3R2ZGtRTFhJ?=
 =?utf-8?B?TXFhQVM3MmloVnREbzVuUkR1eFpVUXdjRGFQUDlCTEwvMTJqSFo0SFc2VDU0?=
 =?utf-8?B?akM4azBLbCtpKzBJWnh3VDdRdnF5am1zQW9BYzFHSzFGRzBzb2MxNk0wMzlq?=
 =?utf-8?B?bkptMGtWQ0ZTaG53UEowUUpxcmZoU2gwQ2VkNVFacDQvSDBMdDJaNHNYWmFM?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a758acf1-acce-479b-40c6-08ddc472195d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 14:07:28.9013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AC/CTfzMHKFGgmXtxkmbfXObKhSPevHRMqfbg7JVQQ8o76LW/+lbYRfOtZje8cOvw2OP/sX2SE8eiTHGy+P2h86p9jU1LiRhwzCMa53BeDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFB9A266170
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

Hi Krzysztof

On Wed Jul 16, 2025 at 1:47 PM UTC, Krzysztof Karas wrote:
> Hi Sebastian,
>
> I think this patch could be dropped. The brackets do not improve
> readability in this case, because we deal with only a single
> line of code in the "else" block.

From: https://www.kernel.org/doc/html/v4.10/process/coding-style.html

>This does not apply if only one branch of a conditional statement is a
> single statement; in the latter case use braces in both branches:

--=20
Best regards,
Sebastian

