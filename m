Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6COzBHxucGkVXwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 07:13:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D66651ED2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 07:13:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF1BB10E6C1;
	Wed, 21 Jan 2026 06:13:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HWYCewIC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B3B10E6BF;
 Wed, 21 Jan 2026 06:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768975992; x=1800511992;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=ob2xov9+pqk3EIiu+vErWIE0pYvrcE7KklNoQwI3sio=;
 b=HWYCewICwfaygLkN34yQRuQ/X66gl/0AAv9yVaafp9esx0CjG2HqokYB
 2sFVjyi5+HcvWXn3oIyV1SanDaR1ZbMM8l/Q6Z6Z/P/lIlKfLTRR75EcW
 S9asAvco3RUfWNgpXX9qIwFfRQEjV98FHDk5ZozZMsXWWtAXmgMqnDfME
 e91vFUGI18u8+OXlQru3qcHc7bBrnHYgB8WedICwW7nLQUxV0KpVPn4rC
 VrAhvqrovj77M9j5GFiPBdbscjMAoqNk6RMKnuN+BBcLe5gamP+wqwrxS
 Lz/6ine5izHibT+e+BAY6tcpvQ+TaxiW62UkYHivVjCFhcl6BJkw279Pz Q==;
X-CSE-ConnectionGUID: OYFTpcaaSOijuqGHbHl0CQ==
X-CSE-MsgGUID: q3yGjamrRsqOrWgdkKoPYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="69925216"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208,217";a="69925216"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 22:13:12 -0800
X-CSE-ConnectionGUID: Cz0Pp2BeSLqNq2qzxLBxAA==
X-CSE-MsgGUID: nf0WEqfTTTWrNsOWBAnf2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; 
 d="scan'208,217";a="210854470"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 22:13:13 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 22:13:11 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 22:13:11 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.40)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 22:13:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YzuiRGgnyc1YLwUU9Y0G1eOPvIP1g1+X4D/CQGrbHPbr9hrUJNuhM+YNPBOrmSWNbT9YIXZSTUbtxZvBLHfbbAh64OQzH/vwDUOSHAja8Ng08b3+Iy7ADTTx3Z8P3t7zYfXn9WZyY5qYzgFFp8TWiiz1pUxVF/PgzFeqzwAXid+KP2D08WMEMmIjF8UxDqtaxlXPeX4CweweVSUCrougFxJ8C5DP9K06Xa+MlJhyu8emtb83tecZxHUTzucr8na/eoe3p2zTT6mbepiKIBclDYUyTrajNIG3CtJyO2sxYau/X6kUJ2YmlAyu+C2EhsxaYNJUuKpoEHLKMZdlWkBqqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vFr0Z0Ewe1iuJ4YFqVRZM9qd9TWY+xMHEOQRFnoxAbw=;
 b=I332Ge1M/6kzGoXRQxc3pCOT7+8hjLst2Ea6Ky6eX9Vs1bBKFiXqoD83ge5e2298b2o/w1ddTknVSeDFOYk1Z+9i8PGDFVQko+cEwQd7CllSDxYspIoOqCCrIQ1VhAQvdC1WxEV/xwCTEALr7bJU4YV5IPHDndysTmJaX0vFN3eIoZBywLlkc9MKTe02x/ZX7Upz79EDK4dLYDh/zcZ0Ba+Pr24LiztRT50DdSVAEpqU74zZFzDOak11oA9iI4bFGmV7U9EofxXAX4BXgw2fIaZlbB4azGEbeYhnFv23D74wDZXdbwNLJ+bjy+usw2HonqrfwJDpbeqc6aDzLvvxIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DM4PR11MB7207.namprd11.prod.outlook.com (2603:10b6:8:111::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 06:13:09 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 06:13:09 +0000
Content-Type: multipart/alternative;
 boundary="------------nucvAUVh4044aagI9afl93Yu"
Message-ID: <f755d837-468d-45df-84dd-bffe99115160@intel.com>
Date: Wed, 21 Jan 2026 11:43:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] drm/i915/pps: Enable panel power earlier
To: Jani Nikula <jani.nikula@linux.intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, Mika Kahola <mika.kahola@intel.com>
References: <20260116085455.571766-1-suraj.kandpal@intel.com>
 <20260116085455.571766-2-suraj.kandpal@intel.com>
 <36f6ab153c13cf5bf0e4db6969a95db9c3eb6ddb@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <36f6ab153c13cf5bf0e4db6969a95db9c3eb6ddb@intel.com>
X-ClientProxiedBy: MA5PR01CA0040.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d6::6) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DM4PR11MB7207:EE_
X-MS-Office365-Filtering-Correlation-Id: f031c97e-91a2-401c-5c8c-08de58b42659
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NkkwWEpFNWxlemtMT2E3endWRUJyanY4Z1M4cHkzVnlBWURMWUsvVThZaFlh?=
 =?utf-8?B?NzBLY0ZMMG9zRkpSdmxGalNYY3hWTHVYbjJ3ZzI5RUxET3owcXMyWFpVN2NY?=
 =?utf-8?B?TEFvcG51ckxyM0VCOE5vek1YSDZ1ZkR1MSsvTGdYUlN4cnFaT29ZejM0WXRO?=
 =?utf-8?B?RDB0N2s4VW1HNkRhRjVSbXhtOG9pOXVjclFQbEJzaW5OSjMrNURsOUIzWk1D?=
 =?utf-8?B?NXhBamdtWlcvbWNNMjlJVGc1ek91VnYwWGhMTkdlOHdrTVc2ZTlDUHpVYjAw?=
 =?utf-8?B?ZHRVZTQvalBhakU3bHNyZTBkMlRLc2JlbFdOV1QrU0dBWmh5U295ckE0cExM?=
 =?utf-8?B?Uy9NK1JnUDZmeGVoQ3JSL2N0NnlZdHBjU2hJZHpuRlNkZlVSLzEvejlPN0tW?=
 =?utf-8?B?S3dvT0wxZEpKV1Z2bm14b0dQMWJmSXE0QUJqK0dtS1hvQmVGQlgvTXFLM3g0?=
 =?utf-8?B?aDFueGszU1BKUU5kQXVjYUVvZnp5emdNa0Z6Q1B6REZhYUhkU09LSTJWeTVV?=
 =?utf-8?B?bXkrQXhXV2hzL0ZqZGdaTUxPR3RtaDQ5QVM5cDdSbHRPeGUwSS9iNTRqRzlT?=
 =?utf-8?B?VlZIQXFFeDkrdG5ycmdrZHhuYjlTMWpBSWtYNktXbk10M1ExSmd3aFRTYTYv?=
 =?utf-8?B?UGE5dUU4S1Vrdmg0TjV4dWVHOXlld3oyUU12cHR2WTQxb3VTcFRrNVd0T1p5?=
 =?utf-8?B?Tkx1QXJIc1pnTEZqNzZjdTdOYWl1SVo0WFl3b1haeVB1S1dlQ1U4OUF0K1dm?=
 =?utf-8?B?STU5MXcxL3FmTlRpdzhLTVpOWVRERnZSbEM4dE9hWG85c2ZkeEUrVHV6NmRr?=
 =?utf-8?B?NW5CWVRWUUY2RTBmTjFPcFlWeEJ2bSsrWUFEWTVkV0FNY2FDaGlveTBVNVBp?=
 =?utf-8?B?UGFIejNyMHU4NjcvNXNieDUvREk0QjV3b3NhVHY2cEhhUjk2VFpudmQwL001?=
 =?utf-8?B?akQ1ZnFpUjZjMTRHTy9xdXQ1ZHhSTVpDNzZYdFBXNzBJaDJYZndCMW1paUJi?=
 =?utf-8?B?UHFpekNuY2M4YzVPZ1JHNys5Q3BZeFE0NS96eUVGOUtEcU04cEZDMnU4R1RM?=
 =?utf-8?B?M0RYNzNtQWhOWDJuWXRxMDZDWVgzVStyVkZUTVpsRG1KTVVaRkpQYUdRckhk?=
 =?utf-8?B?RnNJTWNuUlJRTlRXNmNCVm9rTnRlVHE5NnJYWnhwRDRzR0hQQ1BsYnZGN3lQ?=
 =?utf-8?B?eFE5ZTQxUmw4L3ViWERNektsWXIyNExzTy9ocnFUcVdVc0xzMGJjaUtTQ2pM?=
 =?utf-8?B?YWY5NUtxcFJ2SGwyM3RzNWpVT2dlMjh5RWNpQUR2VFFISHJNbUREWTFQc1N4?=
 =?utf-8?B?VzcrQUJYMVM1R0xrU0FLUjgrWHpjRUNkUkxYSDZGUGZGYjFiMjJtejZYV3Vp?=
 =?utf-8?B?Tlg3VmZKdUJHcVgyRi9xN0dMWnFVWHRTY1grNWlKSWpCaXYwbzhtTVVSbHhQ?=
 =?utf-8?B?QXNiQ1paVUh5L3BZbUo1SHBxODFsOFpETE5nNzVYM2J2RzhxeWJwQ3lVMUF4?=
 =?utf-8?B?c09BUFVuRFFib2NrL1NGeDRWZlhVMGFOMzFtS3dINExuWHhPL2ptMnBIY1pO?=
 =?utf-8?B?SEo1Nmk4cE9IcThQYXhpL0NwaTdnMG1aOENnb3piTk1ySjdTVVltOUpmRnNv?=
 =?utf-8?B?bVZ0ckxYMm1hTnVVZXZRSzFrM3d1STh6VWh6SlVKMTZHZ1ZkcXVFSEdwVzdk?=
 =?utf-8?B?UUl2VHdvZ1VGcDVxQmk2OUhpZnh2bSt3c1NwS0d6bUoyWjg5QUVNcnJvMHZp?=
 =?utf-8?B?eW5xem1FdGtUNk5uOGNCQWh6UGhTaW9MVFRvbitWc0hXbVJlbGVaZnllMlQ4?=
 =?utf-8?B?Y3hXRno5ZnhvYXFsblNrSkF5TWNOdW5oNHhadEUrbEpuMWdEeW5iTmhCcDVp?=
 =?utf-8?B?N05QTTFmUStUanhNOVF2YWU2SWd2d1RybjhpZHhqR2Q3UmRiczRNVmxyeWlX?=
 =?utf-8?B?YkQ3U1VzdkNGSlZ6cjB6Tk9lZmFHNktUQjRBcy9mVmJFLzBUY2JrVFBKNHY4?=
 =?utf-8?B?blJ4cGNaMisxWnhpVDNVQ25kdXptWEZZUGpzMm81SGVDZEZjQmRoSURteG51?=
 =?utf-8?B?S0UrUnIydnBLbUh4a0xXWnNQL2VzNjRoK2FxK3ZQMnRuTEdCelhvWmtpNERB?=
 =?utf-8?Q?XAlg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3FDeElRc082aEQveVRjMERUaURhUGw5blh3N0prbUF1YmRsd2o5ajJyN2M4?=
 =?utf-8?B?S3F2eitDVmxCYnBUNjNocUlSWWFHWTlMRXpwY0cxSXhYdUU2Y0VCbVFrUkRX?=
 =?utf-8?B?bUZmL1BicFJtY1FrRkJFcUo5ZFJzOEFvby9zSTVaK3hoV05JMEIwZk0zbmN1?=
 =?utf-8?B?SjBRckVVeEx0Y1JuWmFSZWhQQ1p2eldITThoS250SjVqT2pMY3BuZGpjQzRp?=
 =?utf-8?B?Q2c1RXlESjdxRHhBTkx3ME9qNURwWXFweFU4bG8yWGZmLzE2WUg3NS8zTDBn?=
 =?utf-8?B?MFg4aWxNZ2p0OHRwQldET05Kc1A5cEV1L25XSE1ZVnkyZlFFZU1xVkpaNi9K?=
 =?utf-8?B?RGhOY2t6K1ovQW1uY2tQZWs2dUhib09oN1UrdktGQzdvbE5LMklaamNiQ3Ex?=
 =?utf-8?B?SjFDQ3hyZ2ExeGcreC9uZmQ0NXNvaVlqK2NBeXp6RzhqenhmZmRCU3FUNHdt?=
 =?utf-8?B?eWhLbmpTSHB2Y1U4SG1DclZJYm1OTUJVNjZ1YjMyaG1Kbm9LYURHWnhPaEFN?=
 =?utf-8?B?d2JrRUJqM2srblpwcWZIZVFSMWVJamdPemlMdDZpUXhFUkphd2M1akUvcllo?=
 =?utf-8?B?S2VLOURnMHYwNHdCN3ZONzEwTXdFVlpRaHdJVFpURXFOZSs0STVIRXUzamZJ?=
 =?utf-8?B?dmhmRys5L0ViaTJFT1FYN0FLVko2YUZVeWFxSWNVTE11dzVnSFQzeE42Zzk1?=
 =?utf-8?B?SkJhcXBvUVo0bU9PVnNtQllHK012bStSZkpHVy9VZFJwSlA0OXFGRm1JNHpJ?=
 =?utf-8?B?UWVhVWltaisrTHJTVXNxcVFtM2F6aGE2OFp0ZUdyeXZnZzlNRkZDaUJBRWpq?=
 =?utf-8?B?QTRTc3UraDlDMllEK2k3bnd5STZTMVdwSGtuNENvRDhSMWk2emN2K2hKL04z?=
 =?utf-8?B?K1J0TGtlZ05wdjBRT240TU9OVVBuR21rOElWUHp0SFpXNlUxWUMrdHJGcGFl?=
 =?utf-8?B?SUY2R2E3cThEbzIxYWdYYTN3aDJTZ3BxWVZPZnM1RnpVenNVbWtCZ2g0Y01U?=
 =?utf-8?B?QXpmZE4veWlDQzZ5Kzd0WnZ1RkpLYnJIdWo2YXVBS3ZGTFdxNjhpUVgveEhF?=
 =?utf-8?B?dWQvTGxhME5ZYVVmZFF3dUZXbnM5TnpzbFF6ZlM4RktnL3JKQmFHUWRNTWN5?=
 =?utf-8?B?QWdadzNiU0VmOUNEdVJ5dkVoNWwyUmtRUWVGdjdBNEFKbVlzdVlPT29TSzVD?=
 =?utf-8?B?a2s0TjIyNGxkTDJESmNKL3VzVDJLNWN3RlpqNFdwSVVraGdTa2pYZjl5UUxY?=
 =?utf-8?B?bkVWSWhXeFVuN3NUNThlY3RySWFRdEI1MCtyN2lzMnJsMFlQbThab3c3ZTQ3?=
 =?utf-8?B?MHJHcmp2MTg4UWNhVklQR1RhcmJYMHVPbEZUNzNmNVgyUjZlMDFvTkdTOWdm?=
 =?utf-8?B?aHNDOVQwY3FrQ1A0QTN3NmJyalh2RWlsUmYxQ3FBd0cxckRSamMxN2M5ZTRT?=
 =?utf-8?B?VWhTbm1vZE8vMGREL0puOUcyQXV5MTZBbEgvNWxWT3FXUnhITUJmMExPOEtm?=
 =?utf-8?B?alR0TEQrTy9HNktZRE54ekVyZ25qS2pGdy93a3NlaktvYmdTTEluTTh5N1ly?=
 =?utf-8?B?RmZ3Ky8rclJvNlZtMi9Tdld4NTZUKzlnUW9nUGxxWEJhVWh3eFluNTJCb0Fu?=
 =?utf-8?B?T2gzR0t4Vkw1ZDhWNllGRjU5b0FYR05xOHFZY25Jc2lyMEZnZ01oY0hWRkgy?=
 =?utf-8?B?TVZadkU1UGMrQ2RleDVteFVuN1B0SGQ4SkhRd3lpYmZtOVJNVndGNVM1QWFY?=
 =?utf-8?B?MDl6dkhwMStjY3UrMkxyL1VzNmtJUlJlWnJGeUJ5NDJMS2NrN3Vpb1RaUlRo?=
 =?utf-8?B?VGF0ZkpPV2kyUXM5MmY0VjdYUmtaVW84M3lEYlZjUE1vWVNzdGZpSkJJVWhx?=
 =?utf-8?B?UGF5Sk1NUUlBNldqNklnbnBnemFCb2tzZEpFeDhXWk9FVElRT2tDa1huQ2xB?=
 =?utf-8?B?RUJjakFGZDdIVmdiT3BTMmNCRkRsTC9kd2k2czRRNWluRnYvRGgvdmJGczd2?=
 =?utf-8?B?Z3F0US94aFhVcVRHeVdCNEllaEIvY1R4K2RDUUZSY3lkb1o4Mm9WK3RqT1V4?=
 =?utf-8?B?U0V3T0U2UkJLMjZVd0lLSSt3K0RPSWVYeTN0MWhJbTM3TnZweTljTWpYelZm?=
 =?utf-8?B?TUtkSkwyRFpOOEhwampMUTMwUVBBY2FhUXdlUTVUdE1peVRiWW9xc0J3VXlP?=
 =?utf-8?B?KzNyeUltTGZVQ3ZnNThxWWJQckVYU1paOE1CUUFsQ2hDbUtCMXZ4YVRPdzEz?=
 =?utf-8?B?N0hWOHFKSGsxT0RyU0U4OFkrWGRHMFdrQUJPajhVREdsck1EKzVzMWpycmdH?=
 =?utf-8?B?R0t0dXJBUDYraE0wUER3TmJrclFnRVk4a2Vmei9pK3M0NkN5TmtUcU04MThU?=
 =?utf-8?Q?BjOq7C2viQuNQvBgSO1jNg+YM4rZ8BS1c1zjG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f031c97e-91a2-401c-5c8c-08de58b42659
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 06:13:09.7389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NKB/9uQOfiTovXSPr4JYq9GPTLBpLAb6BUlfTQxJDGDUQ4bUHsVpjrM6Mi+qK85PNSIFm4iJp7o79h4WZDucSbQwQ9K0hhuQPEDkFKzCjZDmIL/MiPLZv98g+tDA4AtF
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7207
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 6D66651ED2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--------------nucvAUVh4044aagI9afl93Yu
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 20-01-2026 19:27, Jani Nikula wrote:
> On Fri, 16 Jan 2026, Suraj Kandpal<suraj.kandpal@intel.com> wrote:
>> From: Mika Kahola<mika.kahola@intel.com>
>>
>> Move intel_pps_on() to intel_dpll_mgr PLL enabling
>> .enable function hook to enable panel power earlier.
>> We need to do this to make sure we are following the
>> modeset sequences of Bspec. This had changed when we
>> moved the PLL PHY enablement for CX0 from .enable_clock
>> to dpll.enable hook
> So I really hate this.
>
> Yeah, maybe it follows the spec now, but what connection does the DPLL
> manager have with the panel power sequencing?
>
> Absolutely nothing.
>
> The DPLL manager has no business calling PPS functions.
>
> Currently only the g4x and DDI encoder code does PPS power calls, and
> they're the only ones who should manage PPS.
>
>> Signed-off-by: Mika Kahola<mika.kahola@intel.com>
>> Signed-off-by: Suraj Kandpal<suraj.kandpal@intel.com>
>> ---
>>
>> v2 -> v3:
>> - Rather than splitting the PHY enablement sequence, enable PPS
>> earlier (Imre)
> Please point me at the review comment. I couldn't find anything that
> would suggest moving the PPS calls to the DPLL manager.
>
> Please let's not do this.
>
> BR,
> Jani.
>
>
>>    
>>   drivers/gpu/drm/i915/display/intel_ddi.c      | 6 ++++--
>>   drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 5 +++++
>>   2 files changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index cb91d07cdaa6..1784fa687c03 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2653,8 +2653,10 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>>   	/* 3. Select Thunderbolt */
>>   	mtl_port_buf_ctl_io_selection(encoder);
>>   
>> -	/* 4. Enable Panel Power if PPS is required */
>> -	intel_pps_on(intel_dp);
>> +	/*
>> +	 * 4. Enable Panel Power if PPS is required
>> +	 *    moved to intel_dpll_mgr .enable hook
>> +	 */

Moving pps on alone wont help here,
as new sequence will be 6 -> 4 -> 5.

Regards,
Dibin

>>   
>>   	/* 5. Enable the port PLL */
>>   	intel_ddi_enable_clock(encoder, crtc_state);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> index 9aa84a430f09..b5655c734c53 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> @@ -40,6 +40,7 @@
>>   #include "intel_hti.h"
>>   #include "intel_mg_phy_regs.h"
>>   #include "intel_pch_refclk.h"
>> +#include "intel_pps.h"
>>   #include "intel_step.h"
>>   #include "intel_tc.h"
>>   
>> @@ -4401,6 +4402,10 @@ static void mtl_pll_enable(struct intel_display *display,
>>   	if (drm_WARN_ON(display->drm, !encoder))
>>   		return;
>>   
>> +	/* Enable Panel Power if PPS is required */
>> +	if (intel_encoder_is_dp(encoder))
>> +		intel_pps_on(enc_to_intel_dp(encoder));
>> +
>>   	intel_mtl_pll_enable(encoder, pll, dpll_hw_state);
>>   }
--------------nucvAUVh4044aagI9afl93Yu
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 20-01-2026 19:27, Jani Nikula wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:36f6ab153c13cf5bf0e4db6969a95db9c3eb6ddb@intel.com">
      <pre wrap="" class="moz-quote-pre">On Fri, 16 Jan 2026, Suraj Kandpal <a class="moz-txt-link-rfc2396E" href="mailto:suraj.kandpal@intel.com">&lt;suraj.kandpal@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">From: Mika Kahola <a class="moz-txt-link-rfc2396E" href="mailto:mika.kahola@intel.com">&lt;mika.kahola@intel.com&gt;</a>

Move intel_pps_on() to intel_dpll_mgr PLL enabling
.enable function hook to enable panel power earlier.
We need to do this to make sure we are following the
modeset sequences of Bspec. This had changed when we
moved the PLL PHY enablement for CX0 from .enable_clock
to dpll.enable hook
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
So I really hate this.

Yeah, maybe it follows the spec now, but what connection does the DPLL
manager have with the panel power sequencing?

Absolutely nothing.

The DPLL manager has no business calling PPS functions.

Currently only the g4x and DDI encoder code does PPS power calls, and
they're the only ones who should manage PPS.

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
Signed-off-by: Mika Kahola <a class="moz-txt-link-rfc2396E" href="mailto:mika.kahola@intel.com">&lt;mika.kahola@intel.com&gt;</a>
Signed-off-by: Suraj Kandpal <a class="moz-txt-link-rfc2396E" href="mailto:suraj.kandpal@intel.com">&lt;suraj.kandpal@intel.com&gt;</a>
---

v2 -&gt; v3: 
- Rather than splitting the PHY enablement sequence, enable PPS
earlier (Imre)
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Please point me at the review comment. I couldn't find anything that
would suggest moving the PPS calls to the DPLL manager.

Please let's not do this.

BR,
Jani.


</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">  
 drivers/gpu/drm/i915/display/intel_ddi.c      | 6 ++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 5 +++++
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cb91d07cdaa6..1784fa687c03 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2653,8 +2653,10 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 3. Select Thunderbolt */
 	mtl_port_buf_ctl_io_selection(encoder);
 
-	/* 4. Enable Panel Power if PPS is required */
-	intel_pps_on(intel_dp);
+	/*
+	 * 4. Enable Panel Power if PPS is required
+	 *    moved to intel_dpll_mgr .enable hook
+	 */</pre>
      </blockquote>
    </blockquote>
    <pre>Moving pps on alone wont help here, 
as new sequence will be 6 -&gt; 4 -&gt; 5.

Regards,
Dibin</pre>
    <blockquote type="cite" cite="mid:36f6ab153c13cf5bf0e4db6969a95db9c3eb6ddb@intel.com">
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
 
 	/* 5. Enable the port PLL */
 	intel_ddi_enable_clock(encoder, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9aa84a430f09..b5655c734c53 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -40,6 +40,7 @@
 #include &quot;intel_hti.h&quot;
 #include &quot;intel_mg_phy_regs.h&quot;
 #include &quot;intel_pch_refclk.h&quot;
+#include &quot;intel_pps.h&quot;
 #include &quot;intel_step.h&quot;
 #include &quot;intel_tc.h&quot;
 
@@ -4401,6 +4402,10 @@ static void mtl_pll_enable(struct intel_display *display,
 	if (drm_WARN_ON(display-&gt;drm, !encoder))
 		return;
 
+	/* Enable Panel Power if PPS is required */
+	if (intel_encoder_is_dp(encoder))
+		intel_pps_on(enc_to_intel_dp(encoder));
+
 	intel_mtl_pll_enable(encoder, pll, dpll_hw_state);
 }
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------nucvAUVh4044aagI9afl93Yu--
