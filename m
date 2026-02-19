Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GE9sBNBel2m2xQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 20:04:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC4C161D97
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 20:04:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F72810E32F;
	Thu, 19 Feb 2026 19:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cFdDbZBb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5BA510E32F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Feb 2026 19:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771527884; x=1803063884;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VGwRh2jrx8yYHqepxZuc7D+Ix6TwjqVlWoe34xVDWbY=;
 b=cFdDbZBbzNI6ZlgBSOw/OlCqHx5oYTM/KGx6zBuFbKkrOAmhhpFYkztl
 1gttTVE2UUa01UHn/4APTMSUcoCHT+Fbf/R40ImRbkam3Xd71YuKUkK4/
 q60PGJzlbH4SUk0hG4uHp4hKFkm7DrT5Yztrkc/b9fASM/8IMvfHnbebI
 2cX/hG1Vnsgql/MReV3w+10ss7UTN2hxB7BRrWrsYhK6a6yPwAt5tSF7M
 j41yhB8wGsZNUBwrt5mlknx8PAGc07xQnisfAtJHHcp60PuUekmdHNaYz
 sKQGcu5tJ3Ulb8mn1dt//Dq6rxUgUKRJdDhVRMEfT9C5QUb4Fn6BdECad A==;
X-CSE-ConnectionGUID: u3acMJEaSrqTq9oAVaNrvA==
X-CSE-MsgGUID: AvPdYbZ8QGqIkmaAKSB47A==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="76462140"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="76462140"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 11:04:44 -0800
X-CSE-ConnectionGUID: szBgGx4bQOWAHJqK4j1k7w==
X-CSE-MsgGUID: P8xteZsAQq+ikKDmoJGVnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="213857725"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 11:04:44 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 11:04:43 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 11:04:43 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 11:04:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vlJRjEzBWWWBdY7GHVi2aDOzpkCoFmp1X8xR840kNxTd3kv+c6h8OfGxOMWkyQ7EOaYiAhIUZYG5NEEJo9ky0FHg3PgBGVcxL/McSzhCVNZFAlHNsrNjO8xbBQWnL+Hen5tGnNDDyv9jl4RCoyCWO1WDFhv3R9oTxhbchnAswHiaqJA8rURiAC/kMNfwmoGAQJvfiRCOku1Au8yM2gmfkz5n9aQntVGy8E0ez9p6YIGOzDAOkDmHr9Qzs0ZbTnrDwM7m7w9UKF7RRyvwwGSq8R3v4gNAWhSPTQ5NCodr6clWcwafOc2SoiVL060CQ61y7dT64hJQ9TbTi91HsxHhxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mGxSu/bNv67DMFNDRFM8enRfTp7o151EnVXxw/w1kUE=;
 b=iN/AUc8rrMb7OOLS2X04bLSFv4dYIKz8mpEEaAY/ogDnDxRZjGhBpH5C+/T1ADwS2TrC3pF3C2u2v+u8D3B9nRVNSnIw21RzuG5n1s7NOZ9Et5sUo1u/Y0P/AlNa5zRyi4xW/jy+LTwroYsMMdgj1v7lhhkY9FIqWdSyg4fYwrp1O/ABMcVteIaDFNRlImzGrMJnpTPM8ZDCW7+TAvbZaa/X+NKG9IDJhND0GXK0a6weF7vGRywbQzwx/LbLpT3SXh9iK/BhLwTcLXuW9e8QGy4efuNpgyXN2KX/uF7bnosxOf4k3ib6nS4nHyz4lR9sg2FTtZMXqlP8W7LyJWFWXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by PH0PR11MB4966.namprd11.prod.outlook.com (2603:10b6:510:42::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Thu, 19 Feb
 2026 19:04:37 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87%4]) with mapi id 15.20.9632.010; Thu, 19 Feb 2026
 19:04:37 +0000
Message-ID: <875e6df7-b016-430c-8da0-a059ac34522f@intel.com>
Date: Thu, 19 Feb 2026 11:04:35 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/guc: Fail immediately on GuC load error
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20260219003821.1219962-2-daniele.ceraolospurio@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20260219003821.1219962-2-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0211.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::6) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|PH0PR11MB4966:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a3b0a57-8a5f-4c70-4fb7-08de6fe9b9b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WTlSZGc3SGNycno0WEFnaThkWGxVRUJ4OGM0MlpuL0dUbUx1SzZoVkJrY0xO?=
 =?utf-8?B?U1NyNmF2NFdFUzJvV1JjSFdpaGZDMTNDbE9Qc3VySFU4dXIrcXk4WVZLaFhv?=
 =?utf-8?B?UVpGRDFqK3F3NldFZ3BaNnRZc1NFK1o1ejk3MnN0TCtXLzBKRms1bFpOeW5R?=
 =?utf-8?B?bVVNUlJ3SWw3YzVsWUl0dS9aeFlqV3cxc3dVcEFlK0l3eFRpSUN4OEo4b21G?=
 =?utf-8?B?d0F5U1FOMGZKK2IzaXdWYm9GQmlIeXlSaDgxYWVmd25YdzVOSzQ0NVFXMnk5?=
 =?utf-8?B?VmZOWm0wSFl1dzV4UDNpdUpyWlpMTk1tUjk5ZExtMlVFVUpvOW9CbW5qWlJW?=
 =?utf-8?B?N3ZrdTkxeUErU1ZkTkVZSDJBblFZQ3FEWkRGRmRNcCt2R2hXUEhUOXpiU002?=
 =?utf-8?B?OVp1M3hXUGp2S3BkV3doWW5teUtwdnJWTXR2ZDhod3lwNHNxNm5zYUY3Mzlh?=
 =?utf-8?B?NWRmUUQ2bDEyUVhNaWhQMEt6QnNuZ3NTZzlaODltcm9BNXpCYTd6ZjFpcVNs?=
 =?utf-8?B?VTRQV2hKYlhSZDZ1SEVMRDdRR0p0UHB1VU5HdEc2TEdXcHhYZWxpZkY0ZGRQ?=
 =?utf-8?B?WGxsT25tT0QxdVNQVGZvKy8zM3pMck15RkRGbmNmOW53M28rTFZxbVA5VWw0?=
 =?utf-8?B?VGVqL0J3MnVreG5uUkttY21JRGlTcDFhMURXUjVnUjFYVDY2YUVkNENmMUpx?=
 =?utf-8?B?d0RkeTFjQWVsWUxWeXQ1VmRNaTNPRHVkWHh0cWxLbkpaZEhUNy9kMjg1QlpB?=
 =?utf-8?B?YkFXR3BuOXlOMGNQRlJyR1AydU9rMTRQaU0vMkp6OXhQK1hmVEc4bXM0Wjha?=
 =?utf-8?B?ZUNleEZnem0xdjdsTlM3TEJBU3plMFM0NWNSZzY0N3ZlTzE4eG5CUkJUZXJ1?=
 =?utf-8?B?RWRvL204RStnbVRCSk03azBIKzJmam1lejJoMDFKQmJJM3RQU1Avak41TVFI?=
 =?utf-8?B?M2hGajM5MGNnWFNxT0hleWdLOFNRaXpIQXh1QmtsRW9qazdIc3VUUk52dUEz?=
 =?utf-8?B?Mm5CQjRydXk0K2RKczlrLzhFV2hKSWdTb2RMRXFFTGVXUlQzMHo4WllVOFBa?=
 =?utf-8?B?aHU5cDdnQTI5NjFmaXZCRjI2WGpUMkc4N1ozdVpWOE5FQXlEVVg2aERTUWEr?=
 =?utf-8?B?M21Cd3NFSC9tdmRkZUFxNXZMRjEyb3AyQnltbjNxOC9YaFFVeFZ0YzAxY3pi?=
 =?utf-8?B?aWpMcUNwUk10VWY5eFBuZm54VFVJV0hjQUk3VlBlcmlraGRyQ2x1QnpkWU5Y?=
 =?utf-8?B?U1M0NTErK01NckwxVXdLajBpS3MwOW5TQTIvaDVlTFBaZWJGWW9TWElJT0Jx?=
 =?utf-8?B?SXN1WDFGV1dpZFFkYjN6ZDRIVXhvTzFTYTZVZHBmMXA3MGRZYUZxbU1SRng5?=
 =?utf-8?B?UmRGT0ZYbnNXWGdIQ0RmSnNHeXhIMGJFbDJRbGhZY0dHUU40VVE0N3FuZkRq?=
 =?utf-8?B?cGd3TzkzMHNhWVhOeFdrQmZIWU95UFg1ZkZRR2pJUit1Yk82bHA2ODVsOVJ5?=
 =?utf-8?B?TkRpWGhYZE5PZ0krNTQ3Qy84N2J0MGEwQTNoaTRPTG9NaTJQR0xZMUZiK2Nt?=
 =?utf-8?B?c2xqb1dTVU4zNFozbW1DcXFXVG5zeXFTV0c3Zld2VVlVWXBJRDlPdlVBSmxz?=
 =?utf-8?B?UnpoL282RExuZXp3N0MrU2RVazRlRXhTMmpzM2piMVlXRWpMWk9DMVV4eFpG?=
 =?utf-8?B?MVV6amVrdklvTWdFcDNrdGRhMVV5V1BLeGk2dU9DVlY5UUkwMm9LNUZOS3BI?=
 =?utf-8?B?UGMyaTJsNURTcE9tekI0eDBsL3NHY012d004aVM2dUlvMXJOVTBaOVpEOHVE?=
 =?utf-8?B?UFRUcWJiTUhvQW10dEU1WnhBeExhM2FEUjlCZFpPcmJBS0dTN1VScDRoMXBu?=
 =?utf-8?B?NzJBQkVROGx1YjVxOGdMRDNGaGw2alhpTXBlY29jR3BSWXlJekxLMjNZRzJa?=
 =?utf-8?B?WS8yaXB2ZkVxZ0lMUTVGemE5UW1CakMzUWlXUUlnODFoMUhMejZnQklaV2Nr?=
 =?utf-8?B?RXVCelZRemorY1NDUXlyNnBjbTFDR2cxNWx4SHh6YU5jN04yVVl4cVBMVFZF?=
 =?utf-8?B?NFlUU2RiWU5sWHFOYWEraGg5ZDhjN2Y2SXlBcGsyMFdEaWdMNndwL3cwQ1Vt?=
 =?utf-8?Q?vnaE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODJNQlNzUGd0NHorV1RHMnY3VmJ1YlZtK1JwY3dIMm95NWhQSUVPcWFmdHRV?=
 =?utf-8?B?RTgyNnJIbi8vV3dXR2tjUjdCcFFCZnlrSHV3RXdnY3Vib013T0IrV1pHVUw4?=
 =?utf-8?B?Ky9MYUxReFRKK1VzTi9JNXAyRzdkQmp1V3pIc2NJOWtVRFFLUGw0NjFyVXd1?=
 =?utf-8?B?TDJRa2tBM2ZnckpCS1MwMWNpOWJWaTlLekhoMEtBSiswdC83L1ovUUxCZEVC?=
 =?utf-8?B?dHBNLzRuaGZsS3ZFVjIyOEhkemFReE1QRHB1SVk4bzVXTkFrMFpOMTl5bDNx?=
 =?utf-8?B?dDUwZC9OazB2SndIUVBCZ0RNVmRHNTNVRTBoaDNSL2EzamdXSGRQVGNsMGVV?=
 =?utf-8?B?R3FVN3pqbkdOY0dvK1pwbXJoYlhYVzdPSzFZcE10ajZ0enRXZHUvUDNOTWsx?=
 =?utf-8?B?L1FXMXJQQVN3OGlVWVFCM1pOd3RpK2E5L3dTRWtvRzFDc2ZJdEtDMkFvR0Rv?=
 =?utf-8?B?RDlQSWZHY01ad043NUtVQy94bi9kWHRsNldsemF3c0dVcE9BUjhiZVFWZUtC?=
 =?utf-8?B?cHNkSTdsL2ZtSnNCY3BKZVdxZWJaKzZRL0pHczdHek1pbTh5blNIME9vMjNt?=
 =?utf-8?B?L3BHNGRWZDI0eFM2QUxpemZJTGJjYkpBRTduMHQ4TWxyWVh5T1E0MVJvS2xy?=
 =?utf-8?B?OHFBYm81WGNaWFlIdjNpQTgzVDFod0ZzMm0zVHgxNGZieXJzU0lkWXdEd28y?=
 =?utf-8?B?YTEzRkRlMjB5a0EzV2ZnS0tsZHdPMFA2elV2MkswcjUwTGczM2Q2ZHNCWXYr?=
 =?utf-8?B?WGZlbDBFdGFMcXVBcFI3OEJ4SDUwbSs2dWxBbXNkNFhGcFhLaUF3Ym9PRm5z?=
 =?utf-8?B?UzdQa1NNWHhHS1E0Z3o4dkJLdnk0eFl3L2hVaVlEYWlCTkU4NXVJS3lKVFk0?=
 =?utf-8?B?K3V6Q2V3c2tBVXM5eFpCL1JRL0YrOVlKcFNyWWg4QVpMTzJ2dHVlR0xMWkR3?=
 =?utf-8?B?S25OOW80T3JNc2o2ZWdIVE5lTnBPNnNCVjAxVlo4UlorZ0VncGlGczExRDNm?=
 =?utf-8?B?dis4T1FOdmxaU3ZscnNzR0ZQRWJIaUkzalpFaXZIK08wNkVzZ1pTRU1KZlMy?=
 =?utf-8?B?aDBVaVFnbk03OXg3WmdxSElxRW1nZ25kdDlBN2duWS90aHdQeVpYZkpNWGQy?=
 =?utf-8?B?c3dhN09qcTV0NmM2WGNJZmtkQjVWeVp1bGExcVJkK1NWWW40MHFrUmxnL1FJ?=
 =?utf-8?B?VkZacDgySnlyR0pTeFVqV3NWZDB5UmxJZnpZT3N4L3Uyb0hhOVRIRGNZbmZy?=
 =?utf-8?B?aFBjSTdRZHJXazc3a2lFd0FQYXNONWVCYjNyNG9QT0J1aU5vRHFsTkI3ajhN?=
 =?utf-8?B?ME1MSVVEUkNwdDdBeDZtUGxMMjlSV1dweEpyTERycThWdThJaStNTlNtaW5r?=
 =?utf-8?B?S3VkdjhhRjFwMllKQVluN2crSFQyaU8yM1h6akpsZjFLSDhSVkZGTHVrc2FX?=
 =?utf-8?B?S1p5WFBxMUhiZm5jNVpXWGdoV3E2di9CL3V3Ymplc0Jya0pUR2RhQzR5aDMy?=
 =?utf-8?B?eUFrMFRtMW1zcGdqcmI4bmhMVXo0WkU1RzV2dnJwVlJGbURjakhiYmhLSXc0?=
 =?utf-8?B?UlZvVmFWV3IyWmxNWU5NK0RVWnpLbXhRNVpIV3pocStJQ3RON3BGdmZxb29r?=
 =?utf-8?B?UGFMcmRmalU5Qkw0RWI5NU1WekR6aHRPemR0YWEwNVlSNTNwNzVnSitoVlJv?=
 =?utf-8?B?NGxlVlMxTU1lRVorWjlBVU9LVXA2cHVqVzVBTmlCeWtjQzgwK3lLYkN2a01S?=
 =?utf-8?B?R0VUZzFsbXFITUpTdGFjc0k4WU9FcjVBcFNQakRpdnIwdFZ2VzRKZm0yRnVu?=
 =?utf-8?B?UStJQi9Yakd0cW1rdWtvNjFGOTZCaDVGMjduS1VDbUJDUEhFOXRoeWZkK2F4?=
 =?utf-8?B?Y09ueXlKRnZkcnNTelA5b1ZwdHNaZlpOVC82aFc2NXVYVU9LaTI4OW4wSU5I?=
 =?utf-8?B?R1ZrVUxSdnlLb3luTHNqb2h1Y3JjQU9XSDBZUFBTRElWT0xOVXZGZ2FqZGd0?=
 =?utf-8?B?NlczejA4OG1ob2Z2cUEraCtobC9ybkVqYVptNXhTenZIcC9ZTm43U0xMZ2U5?=
 =?utf-8?B?SndLK1J2VE5SSkV6c2lzMnFNRXBIVm5zZ3Nic3hEVDB4dEY5RFhIZXZPVnN2?=
 =?utf-8?B?MEFUMDNqeHVicUM0azBsa2dUQlpLMWsvT1dGeENWZ1RHM2xrVzNGVjFYcUVO?=
 =?utf-8?B?SGNBbmEwUjl5ZXhkTGVDdlpsV0ptaER1WXlmU2c0RWZHRkpGcVhGYkVWb3hO?=
 =?utf-8?B?bFdjTEZQKzlpaVJJNDRmcWJLTVRRejhDQWJURytNQVN1NjcxN3Btdm1FN0dL?=
 =?utf-8?B?dTB3MDB5N3E0YlF1aEVzT0xYeERIeXpBUFl3SVVnemNCZ1BPVFgxQTdtRFNY?=
 =?utf-8?Q?KZsSFvUIcDXl5itw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a3b0a57-8a5f-4c70-4fb7-08de6fe9b9b5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 19:04:36.9093 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4dgEieK4oWA3NxZt3CIBz60W7KaeShVyyk9DySdrpFmiP/PLbBzfunPz+uUxUSNrj6Y1bRl8J6nwBfTxLG4uy/oLA+xr/11QHHyRdzefNAo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4966
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[daniele.ceraolospurio@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5BC4C161D97
X-Rspamd-Action: no action

oops, wrong ML. Will re-send to the Xe one.

Daniele

On 2/18/2026 4:38 PM, Daniele Ceraolo Spurio wrote:
> By using the same variable for both the return of poll_timeout_us and
> the return of the polled function guc_wait_ucode, the return value of
> the latter is overwritten and lost after exiting the polling loop. Since
> guc_wait_ucode returns -1 on GuC load failure, we lose that information
> and always continue as if the GuC had been loaded correctly.
>
> This is fixed by simply using 2 separate variables.
>
> Fixes: a4916b4da448 ("drm/xe/guc: Refactor GuC load to use poll_timeout_us()")
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>   drivers/gpu/drm/xe/xe_guc.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/xe_guc.c b/drivers/gpu/drm/xe/xe_guc.c
> index cbbb4d665b8f..aacf77f09522 100644
> --- a/drivers/gpu/drm/xe/xe_guc.c
> +++ b/drivers/gpu/drm/xe/xe_guc.c
> @@ -1179,6 +1179,7 @@ static int guc_wait_ucode(struct xe_guc *guc)
>   	struct xe_guc_pc *guc_pc = &gt->uc.guc.pc;
>   	u32 before_freq, act_freq, cur_freq;
>   	u32 status = 0, tries = 0;
> +	int load_result;
>   	ktime_t before;
>   	u64 delta_ms;
>   	int ret;
> @@ -1186,7 +1187,7 @@ static int guc_wait_ucode(struct xe_guc *guc)
>   	before_freq = xe_guc_pc_get_act_freq(guc_pc);
>   	before = ktime_get();
>   
> -	ret = poll_timeout_us(ret = guc_load_done(gt, &status, &tries), ret,
> +	ret = poll_timeout_us(load_result = guc_load_done(gt, &status, &tries), load_result,
>   			      10 * USEC_PER_MSEC,
>   			      GUC_LOAD_TIMEOUT_SEC * USEC_PER_SEC, false);
>   
> @@ -1194,7 +1195,7 @@ static int guc_wait_ucode(struct xe_guc *guc)
>   	act_freq = xe_guc_pc_get_act_freq(guc_pc);
>   	cur_freq = xe_guc_pc_get_cur_freq_fw(guc_pc);
>   
> -	if (ret) {
> +	if (ret || load_result <= 0) {
>   		xe_gt_err(gt, "load failed: status = 0x%08X, time = %lldms, freq = %dMHz (req %dMHz)\n",
>   			  status, delta_ms, xe_guc_pc_get_act_freq(guc_pc),
>   			  xe_guc_pc_get_cur_freq_fw(guc_pc));

