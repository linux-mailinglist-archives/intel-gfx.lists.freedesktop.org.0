Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA84B44DDD
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 08:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BE3510E2BE;
	Fri,  5 Sep 2025 06:18:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DQX5TCo7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C7CF10E2BE;
 Fri,  5 Sep 2025 06:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757053118; x=1788589118;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4eQF1qA0E44VekTrvpiOSkyXd6AWEmJhzqRmy5FS+Mk=;
 b=DQX5TCo7pCCHZbjv3hwuy91bdhQMvG7HGCOO2uVHPklJko8Qo7dcCUrJ
 6t2+iqKhTlXkGk2USMT8a6F+FOqNOhqmJBt8t0c0PsqJ8LaigChw20D4V
 gifqLB2wS/mEBVXCbTfWmsQYBCHRFJQSvF11Zv6HIsYfo6RFxjqfCaM0k
 DLylanBFpx+UufEi5b+2FQTzghMvdj2jnV9tCEDK9YhHO1adjV+oGa9/8
 HayV46zzPY6WUIIu3D1TI9AATUMQeXHq2yesMKivypgOd4Tyt/4yoyF6w
 pEiKj8R5wF3QJ9xTGio2rEdP5156XwIfaVuiZwbLMgSrY3mFJVVsMSebE A==;
X-CSE-ConnectionGUID: ySNcUYETSR+ceUV1D1l1Pw==
X-CSE-MsgGUID: ccfQE6KjQWmLL61GCmoSGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="70104999"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="70104999"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 23:18:37 -0700
X-CSE-ConnectionGUID: dQ0wKmgtSUykzrBEH1X18A==
X-CSE-MsgGUID: nU2ImyLHRaSFkG9y/D8yPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="202910723"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 23:18:38 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 23:18:36 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 23:18:36 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.56) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 23:18:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S9QdMoSDwOCXoWsDiZ9pb7+cv3Q9To7Hjy7QjveALQwOnBMANe/FP9PiTBeJV/dxQax90uHSq45bcqNh7ucEc8fQKcEb4nACjJszH6xCgh4f8uNTjaYjGtkX8K9rT4yEntRS4cz4OX6BDbcyJNcoT0Y6IsBWV66kJ9RpuKmV4hD5rWrtia59BCqhMfFZqMPJswahWBrzCSVLOJJpPtUprjVh0P/Fdzxdcleq8iLtYXuQelMOMcOBN2+itw14V3cxr+LFa+Wrl97LDEyiC5NByCP8HkDiL98HMnWCaXG2yTAx5vEqFLIxrv9YVwvBEpfCtjXP6U1sZKEGb906jSlZ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4eQF1qA0E44VekTrvpiOSkyXd6AWEmJhzqRmy5FS+Mk=;
 b=Ar2HiGHvvHidzg470bLjG0l9s+sSz0YKe1xVf1rsTfU+yJGrF8ldY51IPWStXT8o4smIjLiQZDaayY0u6g50TG8YJJWO4NB4x0BHP28VGCW/zJKwd1EqIuboxkohYYJ0/0hzXvTumnrtYW4xdzE28kS80KCbcwNeMfOKy8pZWEZ6FVY36ET8lkFW9WD5Mm+UmEUlCUMmnSXghosNoxwLz6F7wc2LZ+PTdDE07prARLQkA15gHgocn7nXmo6suxx2VnqihzxywKdnKBR2R5EoKMNqyq4YHAfrmzQcy6fhzgiiJilSNrhYTWKUPa/5RvUUb2VMbpfkvCkPhywDEEF+aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV3PR11MB8602.namprd11.prod.outlook.com (2603:10b6:408:1b3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Fri, 5 Sep
 2025 06:18:33 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.018; Fri, 5 Sep 2025
 06:18:33 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH v2 0/4] ALPM LFPS and silence period calculation
Thread-Topic: [PATCH v2 0/4] ALPM LFPS and silence period calculation
Thread-Index: AQHcGKdbPruBTaSMREGu8qZFYtzXH7SEKH8A
Date: Fri, 5 Sep 2025 06:18:33 +0000
Message-ID: <a225ab8f6777715d3f53c9811b6df8da163c3989.camel@intel.com>
References: <20250829053929.3585636-1-jouni.hogander@intel.com>
In-Reply-To: <20250829053929.3585636-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV3PR11MB8602:EE_
x-ms-office365-filtering-correlation-id: 12264575-a2e4-4af8-4fbc-08ddec440aba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Zk1hSWl2MWpPd0VPYTBaRmY1akxHL09UOXBDR3k5amtxRUQySmhoRXpxYk5M?=
 =?utf-8?B?MkZCeXc1ZklpR3JUekcvT1NBL0JkTTd1dkRBaFFhRHptOFR3cjJ5TGJNcld6?=
 =?utf-8?B?WFg1UDd1VUwyalVjYzZ3Z3NIRUxES3hOejF0dENkZS84NUlSK25NRkd4eE5Z?=
 =?utf-8?B?QXgwWWJKczNVdklHZDRFWnVNaTFtOFM3M2VQN01CaGhEem5FV0NjeXJEL2pM?=
 =?utf-8?B?MDVXOUFnUTljTDY1S2ZhSHFxZUhUSWZES0RhVWV3cElIdmNqUkFqZFZiSXVX?=
 =?utf-8?B?VU83WXZvMEJwY0dkZW5wZm1YZE9sMHZ3UGQ0UTBFdSt6bzJDUXBlQWJxcDJC?=
 =?utf-8?B?QWRZVWdlY3F4S3ZPcVVsVmdCMWx6M08ySUdvajlPSk5PWmtVallnS3c4aUIx?=
 =?utf-8?B?U1gzRXJzVzdRcW50b1M2THd1RDdhNFVMdGxDblM1Vjhva1lMM1R0YzZNVXVl?=
 =?utf-8?B?Q20vY29zczE5QXJtUDNNZ1VvS2VEeDJNMGVaMExMdXVPcGg5Y3M0eFBISUR5?=
 =?utf-8?B?UnVpNlZTYTFuK0M1MkY4NFlYSklnc2haZG03TitOblpaZnNuL3Z3M1daWjh0?=
 =?utf-8?B?WDlWaDRTQklkMitIOUdyeS8yaFVSeFhpclFJdXFYZUl2a05aYzEwUE52clRl?=
 =?utf-8?B?Tnp4YWEySktSWWZlcDZ3K2czOTUyVDc0dFRMZk40aGw0T3o3eUZJQjdBTFVt?=
 =?utf-8?B?bS9UWjlTeVd4ZzZEakUxVk5yZEJZODF5STlHYlBSdEdFZWdyaHlPUTZ0bGRG?=
 =?utf-8?B?bGhreUdzUVNJWWZoY21ZbGhOMzU0cnNuNjhWcit1YWlpYWZjeUJoQXNGdUhy?=
 =?utf-8?B?M0QydFpRd3hGSjM0WEVRTU1wNkFEaVVTZHJUdjRYamtmVit0R2dJS3pScWhq?=
 =?utf-8?B?Q25WQmhKUDBTKzhnTXJya3lRbGJqTnQzK2pRQUVUQzlaVFJoN09ZRmw0aGJ0?=
 =?utf-8?B?d1Zxd3BqbDlPVnJVWGVrYjVvcXlwTXFpSFNRd2JaOW9PeW1ub2Y1djI3bkxk?=
 =?utf-8?B?NW9YU3BpOHhWc1BhTWMzYzNIcHZrRzVBUEZlQlNaVko2eTJoaWZRdXpMbmJD?=
 =?utf-8?B?Mm1OUzZZYktQaFlxMTYyWVFyM3hLOEp1ei9yZVBKSGRycEExdVFCK1FiZkM0?=
 =?utf-8?B?VHlBaVI1M1VjNVRYL2luY00zd3BzUHhYNTFIYW5MUC9rMG91V25raXVzUEZr?=
 =?utf-8?B?MjhwaEROU05DTDAzVjI4eGhRdGVsVjdHT3ZHdmJtcEc2aVE5VHdYeDFjK0s4?=
 =?utf-8?B?VDhJNHpsWVhrU3dIeUxlb0JlREV5UVBhWGN6QUpudVVBclRiNzRKaUhWNnBr?=
 =?utf-8?B?U1dxTWhheDYxL05Yby9uUjJXY01UWEErcVM1c0VxZjJUNXhFbnUxajIxZ0c0?=
 =?utf-8?B?eUJHVUk2aHY4dDRTNzlQaWVGam1jeHNxOFFTMHVlVUFmZFdjQlRpL1IxTG9u?=
 =?utf-8?B?YzlGYWRXd2xrcmlZaEtmM25tSnFOODA1anEzZVFVWjl0MXUzKzNhckkvTWJi?=
 =?utf-8?B?bWR4Tmw3aFg4ZFhrN0lRdDBOYS9mOS9vVGxiU1BlS1d6KzQra1JhQno5NGQr?=
 =?utf-8?B?c0JkM0FSYlphLysxNHprMjE0NEZNVjZ1ZFFJTmZqTGRnMDhYWnNQQXpKR3VJ?=
 =?utf-8?B?aVJTeVVmTU1oRHcrVjNFUzMwcnlGY01tL3F2bmtESTdoTXptYjdjOVZ6Rm4x?=
 =?utf-8?B?RUlXSW9GV0pLaDF4ZUJwcXNqeXZvazMyYjI4OTVvNnY3SlhUWUtKeWsrY0ly?=
 =?utf-8?B?VkIvRGFjR1Uzb2RKQnVSYlREaENEY3hmY0xXbXVYbHAyYUpUdnNBRVZmWFgz?=
 =?utf-8?B?UUszdVdQeGJFNldyVE9wU1pQZXk2VTU2TmpDd3dQK2JpZWlwY2s5Ym5CL0lx?=
 =?utf-8?B?M3JzTDBVanlDbk1SYU82Smx3ZDYxc2tQOXpXN1NHK2orbVdNUkZjY0FNZmNu?=
 =?utf-8?B?Nmp0MzlJVmYyRS84T2ozL3oyQlkzbTdkcjUyaGF3Yk8veUpSdzhOSlo3OUh3?=
 =?utf-8?B?TmlrNVFJZExRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGJlSEc1TVFWdFBtTnZldFkwWDFoRnBMc0FUUGRFdGpSbFdBZHIwSXpvbWVu?=
 =?utf-8?B?OG8wSnpFTWoxaHZ6Vno4Mk5Ma3RsMUpza3lOZTh0MEQvaVRHUzROM0dYQWRS?=
 =?utf-8?B?bFFZVHJHYTJCcHFLTDE3RFNLME9HdTVDRTIwaytVU0c1Wkk5N1Mzb3FUekNR?=
 =?utf-8?B?S3ppTHZsNFBRS2wxZHJWako3M3VjajdIVjNUOXBTaU12MnFnOCt3ck1HU3kx?=
 =?utf-8?B?TXZ5VzJzSXBOdnlhVXZvbEpsSmFTQUoyemc5R1hJUUdBNWFoN2xPblY5RmFI?=
 =?utf-8?B?SEZlWERZdGtVbUVnVzJYNHYzbkdDRGF2aGVxWGlMZFZvZmcwbWpDUmUzVUZC?=
 =?utf-8?B?N3laY1lqSEpybW9pTW5SUHBvNWVJcllTd0VnZ3lsSzNlaUJEbk54L1QrcXFw?=
 =?utf-8?B?enF0TUd3cXJucFFJRitnVG5Vd3ZNekQrZTRKUDFxdldTamRTN1BkNXhrNEVY?=
 =?utf-8?B?eTJFZWl6U0dPVnR0cDhxdEM2YXV5VTNzd2NaaSswcE9iVzcva2xnaFhxQnlK?=
 =?utf-8?B?ZFhMVmt3bWFtajVXNlB1eFlxNWRQWlpONHBwdGw5YmFtZ25RRmFYRmh3akJx?=
 =?utf-8?B?QU1DZzZUSVlMZ3V4R3ZONEZPcVQ3OGtWak90NG5oYmVXbDdyRG04TFdERXpw?=
 =?utf-8?B?bzNzNVlnUGRtRXBlaitNU3JyMklnSG4rUGJxUk1Xb2xlQmRyRHNhOCtLWEgx?=
 =?utf-8?B?Mk9QVG01SFpMcklDUGFxMVN6bmNqUCtUVU00OVp3QlBMVG5oaXU0eCtCdG4x?=
 =?utf-8?B?YkR5S2lkOUtoQ0NDbEdsaFFDSXNoQmJvQVJ2ZUticDNEN29wS2kvMjlLOEVt?=
 =?utf-8?B?USt6UjJGOGh2djFpam1nUVFjUVN4cCtKclNIc2Y4eklPVnFsUlprQjhNOUE1?=
 =?utf-8?B?bS9kMUNmNlU1Ymg0ZXNCSXhVVU5HWGZpWklzYVowZmpMNWF3MFZKbEhQWUhK?=
 =?utf-8?B?TlFpNVdvYU01VjMxa1hyMHRXSGJRSjk2aWMzd2x6RXQxWkNZL0N2cUlBL1By?=
 =?utf-8?B?Z3NneDFiamp1L0liNWE2S0RKcyt6WHFoeE9UeG9tQ1ZpcnVqcjJham1GS04x?=
 =?utf-8?B?Nk4zQ3RlUVAzcytBSytuS2g1WEJxWHNLdEFJaW1KR3pVOFRPeWNjS3NKMGJN?=
 =?utf-8?B?Y0dKbDJQc2tJVnNZVnBEeUVJb1hxT25uSXVmTksvdUwxbnNhOW9EK251SGFQ?=
 =?utf-8?B?cFhyblZFY3E5Y1hiaEJIUGtDQ2s3WTVFbHhFbDYrak4wbTVha3hyV0ZVblNk?=
 =?utf-8?B?UDEyeVhqMzl3MVcxNnBvdGUycUtSQ0h3QUtFZElQSnN3TE11UlZKUWpMdHAv?=
 =?utf-8?B?VSttZjJzTk53MXRXL0JaU2FTajM0QzM3Mm8yc3BRR0s1bW1xN3RjUElFZmVS?=
 =?utf-8?B?dmpGWFJ3bStqUThPbEVWTTIzMXg2RVhtRmdiM1FSaGxyUTI5QTh1WldSNlUy?=
 =?utf-8?B?Z1RwT0lDejlhZFloMXNGMllsb1czempzOG5JTENzd00xRkMzNWlueGdTbTJX?=
 =?utf-8?B?NFF3QlpjcGNKdXNTRHpwdjF5VGxDUTFsaG5DY05WeTJsa3ZFMDJNL1RpbE95?=
 =?utf-8?B?ald6Y3kzMlZNZERvcGtRaGhKMTROdDZtcmN2TFU5R3JyTnBLbFNRMWYvZ2s4?=
 =?utf-8?B?Vm1vb1VKRDVKRFpWeVJFU2Z0RmNxYlVTRDYrSDkvU0Q3REIzTnFsM2xxdFMw?=
 =?utf-8?B?YmR0V0tiOEpheStncWlXMVJKclRXeUNvSGZPWjg4Ly9pZmpHQTJ1UWxuQjNO?=
 =?utf-8?B?NVVqRmo1ZjByOFVJaTBHQXByOTlnQlpuVzE2c1d4L3RoUXloTDB3MkRUWHNH?=
 =?utf-8?B?V2VNQk1oT1VBbUxiWm9ob0kvRUQyRC9hR1lBakFBaXhoaldsNmtJWjg3YzI2?=
 =?utf-8?B?ZnZIUUQ2QVRhMFhrNUFUMUFud3hVU0tZWGlJK3R0TS8rSm1ESUt6aTl6NURC?=
 =?utf-8?B?TWlpWHNuMHFlUUtTb2JZOTlWMHZzdEhiZkMvSFBMcURTMUthL1JYNUgxdWVJ?=
 =?utf-8?B?aitUdER0aU11R04rOVpsOTRIbVlKU3A1MWpxTXZySkpDMTJBZURSeUlBZERp?=
 =?utf-8?B?VGk5ZmIvdk9EOFE4QkhzMkRRSER6RXRNYnBoLzMzWEg5QXRrQ2FpNWx1dnhv?=
 =?utf-8?B?RzBYZGlKVjkyT1Uxb0FRZ2F3ZWliMDZmSDJibThucW1saXdoZnVNTDdsUkpa?=
 =?utf-8?B?ZU93SktvblBFRFYzZW9kSS9vU0xoMlBVa3ptUHhMZlRKeGRpZzdxNVpRdHEz?=
 =?utf-8?B?djMrOHRGNTRoUEx2OGZOSW9XY293PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <50CC744C3838F94FA1BA7E0F70B4254E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12264575-a2e4-4af8-4fbc-08ddec440aba
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 06:18:33.8048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k1uId5DICHZRqboqCfBx/5vWu1RD6nEOqLpJ7Ktk/BBkuT6U0pxiAQCfvtcZpDCIKHGN990k4Xja8PiBXD56exwWZORwLm8o2/9n1mgC9so=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8602
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

SGVsbG8sDQoNClRoYW5rIHlvdSBBbmltZXNoIGZvciBjaGVja2luZyBteSBwYXRjaGVzLiBUaGVz
ZSBhcmUgbm93IHB1c2hlZCB0byBkcm0tDQppbnRlbC1uZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2
Z2FuZGVyDQoNCk9uIEZyaSwgMjAyNS0wOC0yOSBhdCAwODozOSArMDMwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOg0KPiBDdXJyZW50bHkgQUxQTSBMRlBTIGFuZCBzaWxlbmNlIHBlcmlvZCBhcmUg
aGFyZGNvZGVkIGZvciBkaWZmZXJlbnQNCj4gbGluayByYXRlcy4gVGhpcyBwYXRjaCBzZXQgaW1w
bGVtZW50cyBjYWxjdWxhdGlvbiBmb3IgdGhlc2UNCj4gcGFyYW1ldGVycy4NCj4gDQo+IEFsc28g
QVVYTGVzcyB3YWtlIHRpbWUgaXMgb3B0aW1pemVkIGJ5IHVzaW5nIGFjdHVhbCBMRlBTIGN5Y2xl
cyBhbmQNCj4gc2lsZW5jZSBwZXJpb2QgaW5zdGVhZCBvZiBtYXhpbXVtIHZhbHVlcy4NCj4gDQo+
IHYyOiByZXBsYWNlIGhhcmRjb2RlZCAyMCB3aXRoIDIgKiBMRlBTX0NZQ0xFX0NPVU5UDQo+IA0K
PiBKb3VuaSBIw7ZnYW5kZXIgKDQpOg0KPiDCoCBkcm0vaTkxNS9hbHBtOiBDYWxjdWxhdGUgc2ls
ZW5jZSBwZXJpb2QNCj4gwqAgZHJtL2k5MTUvYWxwbTogQWRkIG93biBkZWZpbmUgZm9yIExGUFMg
Y291bnQNCj4gwqAgZHJtL2k5MTUvYWxwbTogUmVwbGFjZSBoYXJkY29kZWQgTEZQUyBjeWNsZSB3
aXRoIHByb3BlciBjYWxjdWxhdGlvbg0KPiDCoCBkcm0vaTkxNS9hbHBtOiBVc2UgYWN0dWFsIGxm
cHMgY3ljbGUgYW5kIHNpbGVuY2UgcGVyaW9kcyBpbiB3YWtlDQo+IHRpbWUNCj4gDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMgfCAxMzMgKysrKysrKysrKy0t
LS0tLS0tLS0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNTggaW5zZXJ0aW9ucygrKSwgNzUg
ZGVsZXRpb25zKC0pDQo+IA0KDQo=
