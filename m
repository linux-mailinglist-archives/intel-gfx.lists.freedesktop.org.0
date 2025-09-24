Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90954B9A260
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 16:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1091B10E23A;
	Wed, 24 Sep 2025 14:04:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QOqN0u9k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D208710E1AE;
 Wed, 24 Sep 2025 14:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758722695; x=1790258695;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v3dg/dzZxwvAou6cf9CcB15Vt2coT1UOiNQekFhQRrc=;
 b=QOqN0u9ka2DX9hKLr9nGX/WkuZZiqbsEQb8DDLKRH9X4eBTTW+pFdNH0
 HetNDPGrTgXyjpvrv5eYLTeW8Twr6hs+ZUX3vwoi8hQEQo+xvjA1386O9
 cNdypO5UCa3AHD0cQUF9rwqJ/GYSY49HVts1+zyI2knpfgrlPZgAYM1h9
 Ru3CuJFCtq4yVy9flzHSthmeSprTrXHPqIdy85niWNHsx/sepqSRE9A8N
 M/1CPCvH8P2QA7iB/wuUCm7RjnI+H6qrTbZQ424a/rSEVnqo2BQyQHSZh
 Pq3EDibgIC/CIbRf4N3gj81+UWSf8uCqsgfkDPa79dS+sv99f0pNSbLdq Q==;
X-CSE-ConnectionGUID: DNlgw+9CRNya6Qk1ARmhSA==
X-CSE-MsgGUID: xlreD27cRWmVrOYHBKmn4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="72375798"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="72375798"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:04:54 -0700
X-CSE-ConnectionGUID: VHujfg/dSaqwDVVyNDaBGA==
X-CSE-MsgGUID: IwDPyp9tS3q1PJBCaleVuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="182211825"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:04:54 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 24 Sep 2025 07:04:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 24 Sep 2025 07:04:53 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 24 Sep 2025 07:04:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qfUJ8k4JamO42HwT8nf1sZbvw9yArgdMTHH3VU6vpfU5rvqF/TeKPMzkvDgknwOZSsNwDjgxnBjK5CnzkebQvXi5jvgIJrrZD5KDPvucjSsok6ReYdGoNrf4GkB++hZIw/5i5vq1eP+H9ayMgVAXx5PppJIkV5pyJ09kAdvVXHK7Alw5QhqF87paFjtWd0505nLJJwTEcskfIBtngp/8Pc5KC6w5GNnNyGJT9DCxn++N1pC59Il4b8GZIuN32BrYI/ooshRqI/J9f0HuR7sN1P1fxf6jU4Yyfr9EnnbAKH9lFV9E9C09ItdeRvnQ406Dddc0z1ZJCNcBh+AwBWfTrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=29HRUbzmkJBqCV70ZOR9P8G2Atis9UeG/BAPmFxqezA=;
 b=Vs3XvSPO/yzbunEfNBGhGrZg5TUEHN5dheoSrWpzrET2w6i/S9zxMl5KeIBZf3piWCJx/z6+cHkWcgiQQQJamHY5Z5JhIxut2SqdohHUEg16FPckXUrhLRH8/dIZftUDu3TQX+uSNDwzBrcNpo7vUhaiuaxjDFnlCQHo0SzhCrTurj/RDO3PgCz9oVgOK2zxAYqSMBwzmxH9ECYlDlSjaZCESxd8/DFRvZYtLBi9AnD6xOuw4pzc4z+Ac6hhAxKgFRTmLaAlUc9JoZGCnc7lpnD/32QHTe6TV2t5FjmQADMVn675e/Sqlyrg5on/i27QQbND8ArLg8O68/9aGgxqpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6699.namprd11.prod.outlook.com (2603:10b6:510:1ad::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Wed, 24 Sep
 2025 14:04:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.008; Wed, 24 Sep 2025
 14:04:42 +0000
Message-ID: <8c6353b5-6a3e-4e38-931b-a7d7dcd80d03@intel.com>
Date: Wed, 24 Sep 2025 19:34:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] drm/i915/display: Wait for scl start instead of
 dsb_wait_vblanks
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
 <20250924105129.2771196-7-ankit.k.nautiyal@intel.com>
 <aNPf_7jBUpQ6sI_x@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNPf_7jBUpQ6sI_x@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0106.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6699:EE_
X-MS-Office365-Filtering-Correlation-Id: 222541a4-f196-4ed5-6c83-08ddfb734ef7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?LzBEb25yQ0RaWHpCODhrMmFIS1lSSTJpcWhLL2dRdW1YbzBWQ1JOMmVxSzNq?=
 =?utf-8?B?SEJFMlh0REFnVVFYdUluT3hBVFpyYXJWRlBnUm96SEVlc1pvZk9HZi9MRUtn?=
 =?utf-8?B?V01pUnFMbnlva3VXUlFBanlIck03YmlGaENiUXpGTFE5aExUME1mZy9pdnJQ?=
 =?utf-8?B?RmNlaDJvcnp2S2lNOW5FWEJ3cFBnS2dya05JMU1FRXpFWUlXVExFd0pOOE91?=
 =?utf-8?B?YjRLbk9JS0FPS3UxY0FvWXc5akdEakdqSC9PMkU3NGhwcC9HQ1l6cndqaFhI?=
 =?utf-8?B?Y0Voc2ZNUVkwY05QTHkvSzNac1ByRUVWd1NMM3FZcUFaUlJGdzZyQTFpb1dE?=
 =?utf-8?B?QmRBMDA4N3o0RDdZVXA0KytBSFRBdDJDcnJxOHFQbUdtT3QxVmU1M093N3BP?=
 =?utf-8?B?eGdIV2lKdjNFQzR2UWd1T3RZVk5FcGh6aTJpNUtlOW5DdGdsK1hQdDlsSU82?=
 =?utf-8?B?VkVzYlJGcTlvRHZHSTI3K1lKTlNreCt0UXhwL1BxMDRUbUpFZEdsYUNEWlAw?=
 =?utf-8?B?d29uRGllZHBaVFR4c0ZaY3BTKzFvWlFydUVrYW5aSHl3Zk9UbWVhejBPNHhE?=
 =?utf-8?B?VVNta0FmOWVYRUJWUkFMN3hjVXpRb1ZLd1dJR1c2Nk84Vkw5TlZBUVhNUlhL?=
 =?utf-8?B?SHgybm95K1V2NkpxZ0w2Vm5ZeFd0TTMrSTFjUStoVGE2ZEtQUnp6SlhVbnVm?=
 =?utf-8?B?TUVUQkVTZm5GU2h0R1RveGhHUUtHOGpaZXppQWZ2aGFuNDRKM0lrOFB5bjVW?=
 =?utf-8?B?dTJIZXRVYnRBM0JhMlNzalY5SHJVZnExYmVrUU5FSXZkZHY1ZWN5SmZnU2pw?=
 =?utf-8?B?RUYxY0pXWFpCOFNKQUZMeC9RQS9OZUJrT244UkxTK3JIdmhRMlZBcHAvTngy?=
 =?utf-8?B?allXc2FucU0zRzlXZDY3NkxHNUd3TUFJdzBlZEdyM3pnNm1nYWI0SHZpU2Yz?=
 =?utf-8?B?ZUJIdVdHdzhoV2FOdDFaZ0ZwRm9Ba1pVR1ZQcXE4VnMwUlF4bFY3OHQ1U1Rj?=
 =?utf-8?B?Um5rMGg4djNiKzBGeC9IbUUvM0FkUU4rU0EvbVhRUDQrQ0ZkQ0VaNTk3U1Mr?=
 =?utf-8?B?TWx0VWUzOWdBRVVCblltS3k4NCtmWFlSODBaeUtpdzVXVEhZMUIyYkkvT0tP?=
 =?utf-8?B?T3RZQjhDbGZWaUlBRHhSK2p2YzBETkhsdHpYbVZOcnhlZ3JxMzRZU0VicStC?=
 =?utf-8?B?YldZTnJuczZKVjRLa3BlSy9EaTloRFdIbEwwcDl4ZlhqVEQ1Zi9hdUJYaUJE?=
 =?utf-8?B?Z1hRQTRSS01UVFNHM3dmK2NZMExoL1dZK3NZOTB4NUxMVXdZWWMvekp6NzZh?=
 =?utf-8?B?NFZzZTVka1pGSGp2REVLY1dKZGtaQ1lvS1NPdmxWdnZqaWpPbzl6dEFIdWh1?=
 =?utf-8?B?SG9xWnVVTFdSdHM3bjhYRWowSTl4YnBKY1BBakV4NlFjSUMxei85MUxvckEx?=
 =?utf-8?B?V2lLalBQcUJHTXZYTlMvd01uQVlyRmZmdnFZc0h3dTZwajA4cCttOW5ZMnlC?=
 =?utf-8?B?SnNVMjF0YkUyWDJTUEZxM2ZvMFZPNWxqTVRJc3FUZ1ZPb1FZZzJ1bWV6WWgr?=
 =?utf-8?B?SldPRXZUWVNHb05IQVcxQ2VoMWJmWEhUMmRVcHpJRGxVY3g0R1NJZTk2REhZ?=
 =?utf-8?B?dUtHV2JuTmEwbVZGU2NieS9WOEgzb1JpenZ2UG1OQmNtWG1XSUtHMVZFbXRv?=
 =?utf-8?B?cjRuaWxvTGlNSFBFaXBOUjJrU1dKZnpzNEZZZmpKREIzSWplS1ZQYzNqMGRU?=
 =?utf-8?B?elhBU2lkUWw1MmxsSVg5RGMyN2pmNVpLUUZKcHE1M0lML0NJdkZkcWRUV1h1?=
 =?utf-8?B?UmdxUk9jd0RsakdPSFhCaGxIR21jM2NyMFhvMzdCMHFydEh6VUQxbTIwN0JH?=
 =?utf-8?B?TGtRMHpZaFZZeVpkTUFPQUc3bTJyVGRYZnpXRWpXYVBlS0UzZWtJMHBzQ2Q1?=
 =?utf-8?Q?eTPoxUAgvUQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2lLTjl2QmtBaVl3OTFPOG85dkxsMUpEUXoyczFGYWU1MURiK0RXVHdYRTBv?=
 =?utf-8?B?Qnp3UUVqWFhjZnNyS1BzYWhSTFRVaXY1MlJCeE00VXNFUXF4TTRHK0ZCWEg2?=
 =?utf-8?B?TGpaR2Q5UzRqejY2dGF1VWN3WUJZaTJwMHIxa0tzZjdIV09ielZlUXQxVjNt?=
 =?utf-8?B?T0xzdGE3WjA0azhnQXFhKzVZZlpYelZtZk5YL0VySmdiYXh5YVBEb0RTRW5I?=
 =?utf-8?B?dEVaU282a1JoSnVkSnhTUUZ1bzlWdmR5SFJwRkhkUVBLZXI2T3lxU0ZCVWVO?=
 =?utf-8?B?eHJxZ2xIcnNqRUlnM2k2WEtTWTdBRjlCTmNweUFqbmFVSEdEY1RRUUpZaTla?=
 =?utf-8?B?TSthQnd2MDRWOUVsWkhhSjZQOUJsYWFuM01iOHdFTDBibStrdEN3bmtoRTBQ?=
 =?utf-8?B?Z210T1pzUHg0RHJEeVBUVUZCcDhDeXVXVFBJZWZSZWp4eUhJaVRONFM0MkdF?=
 =?utf-8?B?N3VzTHhrSDR1aG5IdVJmTlBZWnJHTFJIYnRwYUlSVGtCSVBaOWxSZjBCUGlO?=
 =?utf-8?B?NnJ0THhxMVNGQ1hlRjF3Tkc5VzdIOVh5WTl6VTNERU9Ob2MrSmgxa3E4U1pL?=
 =?utf-8?B?ZmYybmppV1ZSc3JLbDJjdGZ4QVYwaGxTK3U1bThFcVVaVTMyQWgrZ1B2bllD?=
 =?utf-8?B?Z1h1RHBOYmZQWlpxNmRmN2dpR2FYMTAySmpyZyt1Smo1Vm81cFF6SFBHTFdG?=
 =?utf-8?B?cnA1R3lYMXJCQktUdGVIbk9vNlZ6N1p6S2UrWDNHZ2tTQk01TUFscExya3E0?=
 =?utf-8?B?bUMzbjFURUxIb0FXOGx0TitGaTZkeFNEOXBrN3MwQ1YyOVJneW9YdkhxVXhu?=
 =?utf-8?B?T1BGMGlkYWF0RTQ1anhCdllhK1UveDJ0SFVLSXpvbHdTK0ZJL0pUVWNwZHZ4?=
 =?utf-8?B?dkRXOFJ5Z0lpRmg2MVdwKy84WGU2OTM0M2NubVIyTkJISjVaSUZ6L05aYkNZ?=
 =?utf-8?B?K25KcjBwbmlZUEt6eXB3azJQMXQraVU3cnhsWEVEUnI1OHU5RVE5TytKRjFB?=
 =?utf-8?B?R0lwaWpxOWdFZGpqVnlnai9TWitrTXh3TzF0SUcvYklZQ1doK0syR3hpaHVv?=
 =?utf-8?B?MmVvaDh3aEhTY25xWWNQVnVqcUdWT2hKRDh2S3Rjb1llSmJ1dEhHUlllb2Ra?=
 =?utf-8?B?VXp4WncyVk9KWU9Fek9hOWhlRTVDL2NnWmRFdVhRMDVBOHVNaXJ2dzV4c01N?=
 =?utf-8?B?aGtpSFhqdTVYdWxWaXdaNUdlSWlSV290SnRCa0hJNUlFWXlnTlI1T0JCdWhG?=
 =?utf-8?B?MUlidDVMTTdxNERqTVFYcERPNW5tOExSTThFZ3Vwek92dFdyY3ZkMWgyY2lQ?=
 =?utf-8?B?YzA1bFVQSzJ2YkdxVWJwekd3ZTBESG1odUYreHFmQmNQaFR1VWQ3UStyU2s0?=
 =?utf-8?B?Y2dsMzVSbS9ESzdDRmxaTDh4R1lRSzIrZnNuL1NtdlBGZEdreFNJQ25yRy84?=
 =?utf-8?B?SnVoeS9UbGtMeU1nQkN5RDU0S2Z2QlhjSVhteGg4VEdEVWJNNjI4VmlQQ0t4?=
 =?utf-8?B?M3o4V2pDaDJ5anU5QnQyeFlvUWhXd3ZUemd3VUozelZpRXFFR2NYbUNvWmhO?=
 =?utf-8?B?aUROSXhDeDB4OWxMM2d5eGk0ZDZCK3FpUzdVTFFNcWo1RUxxNk1iUnVOSW1R?=
 =?utf-8?B?Tk53Wnk5RmN5SzdBd1dEdysrNTNsZjVhUU84U2ZZZElwNFh5ejNRTE1zZWg0?=
 =?utf-8?B?QnMwNkRTMTRkb2ptRTdrKy9TQk0xYVozM2JIVVBjVUNPQ3lNUmJwT3F6K3BH?=
 =?utf-8?B?ZWU3UUhldkhJQmU5MnVCK1VrSkZBOXlZbzdzNHNGaHhJRmNCK1VkN3QyTDdq?=
 =?utf-8?B?TkRmTlNpc1B0cGtyZ00zM3NOekVLRDl4ZFQ3dXVRNFAzOTJ1K2Eyczc0VlRy?=
 =?utf-8?B?UmtjZnViV2UxWjc0SnNGUFV1bXBmUEJ5enMyaTFXcC92SExCQStGYlFmZnBo?=
 =?utf-8?B?UkRqV3dOSVhUZ1ozb2h4SkEybG54Y1NmTjRZeHBSYVVpL1NPdGdobC96MHFT?=
 =?utf-8?B?T2ZDYXZ1N3JpUjZ3Wkw3QnNVWGQwUjYzbCsxbXhQVU9NMDR4emJacmNBR1h4?=
 =?utf-8?B?VXpuV1UyWXdjL0trTlNEayswM1VWdVpLZ0NaNzVRcVpsOFZTQjNYY0pmbVUv?=
 =?utf-8?B?bkhwcVUvUVAvQStpZ0pSUVdZTkVoeCtHMzZ3RUVOVGxZd25IOXdHWUhQSk4x?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 222541a4-f196-4ed5-6c83-08ddfb734ef7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 14:04:42.7058 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YNw6ATaKvgSGU0yyi/caAVz3jRHtv0F0145BNB8+JvJZct+NECES+Mt+2LcPBMhir14rsOgK5AKiy3xTUx5Dcqcc4S1viqzs8Xxag8CRLho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6699
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


On 9/24/2025 5:41 PM, Ville Syrjälä wrote:
> On Wed, Sep 24, 2025 at 04:21:26PM +0530, Ankit Nautiyal wrote:
>> Until LNL, intel_dsb_wait_vblanks() used to wait for the undelayed vblank
>> start. However, from PTL onwards, it waits for the start of the
>> safe-window defined by the number of lines programmed in the register
>> TRANS_SET_CONTEXT_LATENCY. This change was introduced to move the SCL
>> window out of the vblank region, supporting modes with higher refresh
>> rates and smaller vblanks. This change introduces a "safe window" a
>> scanline range from (undelayed vblank - SCL) to (delayed vblank - SCL).
>>
>> As a result, on PTL+ platforms, the DSB wait for vblank completes exactly
>> SCL lines earlier than the undelayed vblank start (safe window start).
>> If the flip occurs in the active region and the push happens before the
>> vmin decision boundary, the DSB wait fires early, and the push is sent
>> inside this safe window. In such cases, the push bit is cleared at the
>> delayed vblank, but our wait logic does not account for the early trigger,
>> leading to DSB poll errors.
>>
>> To fix this, we add an explicit wait for the end of the safe window i.e.,
>> the scanline range from (undelayed vblank - SCL) to (delayed vblank - SCL).
>> Once past this window, we are exactly SCL lines away from the delayed
>> vblank, and our existing wait logic works as intended.
>>
>> This additional wait is only effective if the push occurs before the vmin
>> decision boundary. If the push happens after the boundary, the hardware
>> already guarantees we're SCL lines away from the delayed vblank, and the
>> extra wait becomes a no-op.
>>
>> v2:
>> - Use helpers for safe window start/end. (Ville)
>> - Move the extra wait inside the helper to wait for delayed vblank. (Ville)
>> - Update the commit message.
>>
>> v3:
>> - Add more documentation for explanation for the wait. (Ville)
>> - Rename intel_vrr_vmin_safe_window_start/end as this is vmin safe
>>    window. (Ville)
>> - Minor refactoring to align with the code. (Ville)
>> - Update the commit message for more clarity.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dsb.c | 16 ++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 17 +++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_vrr.h |  2 ++
>>   3 files changed, 35 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>> index 135d40852e4c..3cb4c9be146f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> @@ -824,6 +824,22 @@ void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
>>   	int usecs = intel_scanlines_to_usecs(&crtc_state->hw.adjusted_mode,
>>   					     dsb_vblank_delay(state, crtc));
>>   
>> +	/*
>> +	 * If the push happened before the vmin decision boundary
>> +	 * we don't know how far we are from the undelayed vblank.
>> +	 * Wait until we're past the vmin safe window, at which
>> +	 * point we're SCL lines away from the delayed vblank.
>> +	 *
>> +	 * If the push happened after the vmin decision boundary
>> +	 * the hardware itself guarantees that we're SCL lines
>> +	 * away from the delayed vblank, and we won't be inside
>> +	 * the vmin safe window so this extra wait does nothing.
>> +	 */
>> +	if (pre_commit_is_vrr_active(state, crtc))
>> +		intel_dsb_wait_scanline_out(state, dsb,
>> +					    intel_vrr_vmin_safe_window_start(crtc_state),
>> +					    intel_vrr_vmin_safe_window_end(crtc_state));
> Hmm, I thought we already had a 'if (vrr)' check here. But I guess that
> was in dsb_vblank_delay(). Hmm, yeah I think what you did here is fine
> for the moment.
>
> I'm thinking we should follow up with inlining dsb_vblank_delay()
> directly into intel_dsb_wait_for_delayed_vblank(), just to keep all
> the VRR related wait magic in one place. I don't think there are any
> other users of dsb_vblank_delay().

Yes makes sense, can add a patch at last to clean this up.


>
>> +
>>   	intel_dsb_wait_usec(dsb, usecs);
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 1bb9db06f43d..26c5c32a9a58 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -800,3 +800,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   	if (crtc_state->vrr.enable)
>>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   }
>> +
>> +int intel_vrr_vmin_safe_window_start(const struct intel_crtc_state *crtc_state)
> I only wanted you to rename the safe_window_end(). The safe window
> start doesn't change for vmin/vmax/etc. So should drop the "vmin"
> again from this one.

Oh alright, will drop vmin here.

Regards,

Ankit

>
> With that
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +
>> +	if (DISPLAY_VER(display) >= 30)
>> +		return crtc_state->hw.adjusted_mode.crtc_vdisplay -
>> +		       crtc_state->set_context_latency;
>> +	else
>> +		return crtc_state->hw.adjusted_mode.crtc_vdisplay;
>> +}
>> +
>> +int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state)
>> +{
>> +	return intel_vrr_vmin_vblank_start(crtc_state) -
>> +	       crtc_state->set_context_latency;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 38bf9996b883..239e4f94725c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -41,5 +41,7 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>> +int intel_vrr_vmin_safe_window_start(const struct intel_crtc_state *crtc_state);
>> +int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_VRR_H__ */
>> -- 
>> 2.45.2
