Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 196479FC26E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2024 22:02:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD2B10E2A6;
	Tue, 24 Dec 2024 21:02:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L+/cGS2n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F0A10E2A6;
 Tue, 24 Dec 2024 21:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735074121; x=1766610121;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=L22TDRBlogFMCiqH58bNhLuK1jm6bSnpwIno6FqMDB0=;
 b=L+/cGS2nlH29/tr136OOJ7paTKv8SZMSlq/viiyl/m/SPNku6jHROpr+
 cHy3/ziOIasl9ijUIR56EF8wwPhLjgkSbyk/Qtc5JLo9cPd3fRgwZ2QG6
 249CHoqL17Dhm8PqPIZp1DLolwwq1QH/RpLL543VFeadwW2Oy6GIEzXyu
 lzcCINN24LFpaZf+7ugBCCqgnxx3QFR5Q76IzkaF7qZa4IjQ+YbbhyHT4
 GfLfaVpErFU3o5kSP/ZVpoGBoNKQ1sBzBLjPDZ1Pdg4n3Li6jPD31YzvZ
 zrlCQvPQIpDFogurTHRM3yqMlszjEApBlSMFiGfBdNI44jVYuwb8o8qsD A==;
X-CSE-ConnectionGUID: rD/5Vm1rTLScqB2ECj0Y1A==
X-CSE-MsgGUID: do/hVqRbTN+pgKDY3MqHAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="23131712"
X-IronPort-AV: E=Sophos;i="6.12,261,1728975600"; d="scan'208";a="23131712"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2024 13:02:00 -0800
X-CSE-ConnectionGUID: 4xIpZCWjSoKEi9NwNSdsdQ==
X-CSE-MsgGUID: nur1XeplSK2D/9tQxNRh0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="104643947"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Dec 2024 13:02:00 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 24 Dec 2024 13:01:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 24 Dec 2024 13:01:59 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 24 Dec 2024 13:01:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IjFCVyoFCt0tPfaz3qt0FWtU0NqOo7xZlvQg/OFOlYa1R5TX1DZEVind3IO0TUTWb7QLDRdjoL4Wqggn9yicAZ6eA8zQU6mIxPZXuW5hVymyjvqE4Q8XXKDcFbLoEIRZdadEt0tZucnOXDpRZm3zXEQaM9SGgoJpspYdoZOgC7Oh0gXniSvdB/X6VoCm38DnJEVezs0LW8tjAV/kaYDjVmQSHLMjWtmXSHlSNuIfpu4FDdlcCMxIs7Y3SfGDza+eQBfblMuWWn3yLPe4xmrD1OCHQE5SHscT+xj214ZAy0W7opvegcd891LRB9TcAu2WHrvmjLbMdxmajypLhQ6SgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iKK/FmcW1OueXG9lZfNMwneHKN6MqyP24Df7MOC105Y=;
 b=Ivh63qPMaLfjU/jYX83BFtPTFFCxJQ+u+tfbNjpnERjttpodt3iH4VtgXuWpfZJKLiN8/LxgYxedciqaSoUMs/gbpoobMcinfEIVC0VTNswNfU3ZqmJEcPDVTjpfS1JMv1VCIk+v7cHDsk31wCZppxx/bE/ZKddOTW4ehJyW15fJIlyGfoqj+R99bwEwrYLLGkMz34vOxuub/UrnY5Vn6AS1rG0ixLakj9J4IWwGcpAtPr0i2yZCJeJL4YKO5ikbUS6hU9B6xFwY9azhSTkmuHtlcZAJeAVqisDR3NitRLRiSVc7l0uxkYfmMydPmbKA5mMgT84D+yZk6afcRCla4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB8803.namprd11.prod.outlook.com (2603:10b6:208:59a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.21; Tue, 24 Dec
 2024 21:01:53 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.013; Tue, 24 Dec 2024
 21:01:53 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z2LirmqeUmqLw17A@ideak-desk.fi.intel.com>
References: <20241217143440.572308-1-mika.kahola@intel.com>
 <Z2LirmqeUmqLw17A@ideak-desk.fi.intel.com>
Subject: Re: [PATCH v2] drm/i915/display: UHBR rates for Thunderbolt
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
To: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>
Date: Tue, 24 Dec 2024 18:01:48 -0300
Message-ID: <173507410892.1822.16575771169046539832@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW2PR16CA0041.namprd16.prod.outlook.com
 (2603:10b6:907:1::18) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB8803:EE_
X-MS-Office365-Filtering-Correlation-Id: aa0252ae-19cd-4059-0ecd-08dd245e31a5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OUpvTVBISW9mbVhwS25KS1JIS3RaVjZwOGtMMGhGN0tKUHh1RzM1Z3JFRGY0?=
 =?utf-8?B?akZMb3I4dDhjZDlhQTFXUVhzeWZ3cHRaZ3lGSnpWQ2Z5K21TNXRFTDdTcEp4?=
 =?utf-8?B?cTdJSmErZ1NEUEFxN2RNampMMXYwOUl3S3ZCeVdOM2ZtSWFsYlZoNk8wTTQz?=
 =?utf-8?B?ZEZyVDFkMTVYT3NtY01NSXRzdXFnWVBOdDNSWmZpK21iMTFnNjk5Nm8vb25L?=
 =?utf-8?B?SGtGdUxMaE9VR2tuOEdHTWd6QVJUVjc0UjNvUFFuRmNCTjVGUWh6dnlQWVhR?=
 =?utf-8?B?cklpUHlQTzFidnlBZjZiUHdRYUVqYkxqNTVFV3diOFM2UGdOVTAxSldENDdZ?=
 =?utf-8?B?S1VvaTJRaVB1eVBIWlNKVFhGUStDZmh4TzBOTlY2c2ZpdW5CTTlnUUdiTkhT?=
 =?utf-8?B?QUtxelpWUEtQTG5aOWp1T1VUVDRkdHV5dVVGTEwrQWRXZGlqdkVYYm9vMXpT?=
 =?utf-8?B?Qy9meFBjV25TVTBjandicWZNSjJkbTNGM2hoOUdGMG16VGZQL2ovSzVmRzU3?=
 =?utf-8?B?NnlYbXJIaUE2ajRMT3JUOWMydTZkRkcrK2wvQk9XNUIzUUx0OXVWeDY1OEtG?=
 =?utf-8?B?TjlvK2tIQTViVkhWbThERW9QcUJHbDMwMUN0NWgyRVN6bFBOUkNKbWE4RENY?=
 =?utf-8?B?MU1YZWx4RmxMeHhGaHBQb3lnSlNzT1QvREg3SWlqKzZhY0xXNEh1T0VYMFA2?=
 =?utf-8?B?YmhRNWIvNS9nQUdET2l5b0VhWU40K2o3UENsSDBrdUdYTmdhSHpyTlpnWnJU?=
 =?utf-8?B?TDZaRXZtSkxWSTdJbDl0c0U2YTBQajJrM2pIVDJGZm9BamY2RjQwSnBuaWNW?=
 =?utf-8?B?alJkdVNrdTVQTGpMOXUxdkUvbmppcXVXVm5Td3Uzb2tzMC9JYi82emZFcEZF?=
 =?utf-8?B?TlVvNkVXcG5VVTg5blJ1MVVOcDVkUE5zYm91L0FTVWJuVkxjMGpoL3gzTEVu?=
 =?utf-8?B?UmI3VDhNWEtMaGxIRW11ZHJLK2MweTVlcWFveW5oWFR6S2dxSlU5ZHkraEo3?=
 =?utf-8?B?SXYzcXZ0U3J1SUtaZWI5U2hwbFplQW1VZ3Nnem00cXNKeVhDUXMrbVB4NlNZ?=
 =?utf-8?B?akJHemNiRW04Yk0wTnJIcnlOc0xVcG5UT083K3VOVDBONlYrV3BUZEd6ZmRX?=
 =?utf-8?B?KzRVczB6UHpEaVZzbSs4N1NGTysvNGVUcHd1UWJCMm93YzFXYzZMYUZha1dX?=
 =?utf-8?B?eCtwODFJNm1pTFhUVHk4NGNzdUdGMnVoeGhtOUJGSlBzQzhIZ0hISXcyVmRQ?=
 =?utf-8?B?eGljSHZNeHFCWFVWeU9xNjNXdjBqRzBBVERkY0lnZEE3VyswQmZFaC92eGFK?=
 =?utf-8?B?bCtLTmJDZm95cXR4ekxyQ09nT2Q0ZEZ0R04wUjgvSkFubE1PL3JsMm0vVXp3?=
 =?utf-8?B?WjdTanduTENXRjZuaW9hempTc0VoV0tsYXBtaW9mUmtOeWVnSHBLYmN3T2RO?=
 =?utf-8?B?cjZyZkttQnB3K3Jtc21WN01ibVVtZFRaYzR6UU94M29iR1hKTDBwK0o5a1dC?=
 =?utf-8?B?cjRHVGtjbW5pR3JOdGdWT0F0KzV3dEdJMGRHUktLdkdhSVYydmNiNTlNcEFq?=
 =?utf-8?B?QkdWcU5Xd3BQNFk5M2o0ZkE3ZzlXdlJ1UUIzdkNOMklicyszaHpDdlduYk43?=
 =?utf-8?B?Zk5ybjRvMTVxK3dtK1BpcitUU3liOW5Xdm9ydWJKbGR3UEtrU2lkd0taTnMr?=
 =?utf-8?B?bzVhNHBvaUxZV1RlSE41NllqSms4QXRPNzc5MFNBMTY3M2pHbHUwNTFvalZJ?=
 =?utf-8?B?b0xGQmZiN0FVVVVTWCtweGVGYlIwdHRSc0JybTZzY3RkNkdMZnlRRmZSeFcr?=
 =?utf-8?B?Ry9uMU96enNhelcrYWZvUkQ2dS8rR0dTYS8xVW0yN255UlFxbDZBN0xEY0Rj?=
 =?utf-8?Q?n3PQaVYve5Aor?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVQyczl2aWh0cFZpK0hxVjNsR0RVMGs2clo0S0t4UHFhbUlETmdNTmNzdUVv?=
 =?utf-8?B?blJtZEhULzYxQzExMHpoTk9qZFpnQlJJVnBqS3dCR2s5clR2amt0em1nNy9w?=
 =?utf-8?B?OHdoTlllTlNoTUtyR2RZZ0xmSWlnYU5EOTdCaURKTWFnQXdqZk1NNHhCTlB3?=
 =?utf-8?B?akw3YlN0bWpLRCsvRzIxYVM1UHpJTm91Q2h3QzZWM0RIMjdPMlFFbzB0ZitJ?=
 =?utf-8?B?ektyd29YVWpBSTZPVGRJL3RFMzI5cHNXRmZ2UHoxUUJFWk5EaUljVlNQR1Bp?=
 =?utf-8?B?dlZQSjM1OW1IdDBLazlEcGcvZ2xZNVZ2ZjF0RmNIOXZoeFNxNnRoU1QvUlBC?=
 =?utf-8?B?UHIvLzFZRmIwWk9CZENWa2o5blF2dzhxbm5lOTFGajM0aHgyWDA3Q0FWbUcz?=
 =?utf-8?B?RjVJQk9rLzkrMzhQcy9mSk53bmdYNWZlM3FoWnFrK0wvU0s5aVFwZThoTmJM?=
 =?utf-8?B?N3FZQ2VOWHA3anZUSnFKUEJXeEY0M3VLUWR2czNrZDJST0hheGVUaUVycGdH?=
 =?utf-8?B?aU05dWo0cGxFS2E5blRwSjVHdFFibHNZR2xUemtxY09iT2pKVDk4RXQ5UDBW?=
 =?utf-8?B?MTlyMVcyUVJuYTJqeDRQV3hoL0pRcWxJeStBb1dJQ2kxQkNMMERjN3ZmZENr?=
 =?utf-8?B?SDExYlp0Wkg0d2VsVHJoZmtuUjdlWHlvS3ZScUhab3BZZjZ6TTZHS2RMYTZR?=
 =?utf-8?B?Rkt0RDNBUnBLeEZBQlRXR254WXNiZE5kZm8zb2VCdnhTT3BkNk82dDRuL3dq?=
 =?utf-8?B?OWtFbnpmWWJsTEFqM1MyVlZkWWl5Q3JWYnM4SnoxRlR0NkN2cFBHN2FxdWdF?=
 =?utf-8?B?SktETWVYWUhYejNORTBUdnNNZlJUK0F1V2hkekY0NWxCVWhpT09vdnFRQS9C?=
 =?utf-8?B?cHJZREVKODduSGRpZFJPY01KSWpIdVU2TUx2TFprSElyMTQ5cWhuWnVUN0xq?=
 =?utf-8?B?UGFuRUkxVFhUMm1jdzJkZ1NQcW1QU29mT0J6RzZvLzBnL202NS9jakprTHMr?=
 =?utf-8?B?RXdrQnErcTBDQ0QwanlIRnVyYUxGMUE1RlRURXNWZExUam5TbWhwUVZpeHN1?=
 =?utf-8?B?Wmh5dUtoSTFLdFNTL1BseHNqcXpXVmV4Mmd6VEtwcUtqdDRjQTBtOHhnbXZ1?=
 =?utf-8?B?VE5JSExNQXRFR0VVRExDaCtYQlVTbWJXZHJQRXJTUTMyMkNoMkNMWFhFS2hD?=
 =?utf-8?B?bGxuYW1DWms1Yk5GY3lQOWErdmRpaEFoM25DYkw4N0xkK042cGtqY3JjVG91?=
 =?utf-8?B?VVpkdjhWSXJiSmpJZFIyNjBjZk4zSUFVQ2tTU3ZvWjVNaDNKN0o2SEl2amQ1?=
 =?utf-8?B?OG5sSmUrNmJzTC9xaW1QeU95Q2NUU2JQVU9FbFVtRzNzcndhTGFvbzNxL2w5?=
 =?utf-8?B?M3BOVFBCMVlEaGNndUlvakUrakFCRXFDMmQyTFdwYTY4d1EwNmo1anA1L3hL?=
 =?utf-8?B?QzhlbGIyemFJUVZGdlNzaUVkVFNkRHRqNHRub2kxNTZXdTJBN3FlZy9VQ2tt?=
 =?utf-8?B?eWxNODBiNGdkallpeEIvWURSMHFZem1uOHdvUWdTMUhaOStmcmxWVTdmQnd0?=
 =?utf-8?B?emQxeGhHUFg1RnlCTTRwV3NLTEJoMVdjWHhpVmpDVkZDS3Q3a0pjbEh4R1Fm?=
 =?utf-8?B?N0U0T0cxOE05YjNBRmYrV3dvSzM0eWwzc3NxQ2FPam9GeVNHa2NQQTNLVnlu?=
 =?utf-8?B?aWw5RXFpSEpUdEVhVGpHL3lySm4vNjc1TUxUZHY1M0ZmMHduZkxESThBeTht?=
 =?utf-8?B?TGoyOEpjSDRTSUEzOUxsaUltcGxVVmwxOW1zNnhlSlJHUDhjQWxKZmN4NkZB?=
 =?utf-8?B?VDZuSjhWdks0S3hTWEdpWHJNcEhsc1hoZmxDLzQzNCtBMUVPNWFYdnlSU05o?=
 =?utf-8?B?VUR0eEc0L3lhc3JOdUFpeWJCdUJGYTR3c1BZNU5qNkVKQ2hWRFI2cjRjU3Jw?=
 =?utf-8?B?eS9id1hlZllablE1MXhPQWFmNy9CN25yemVsTnQzZGRFZzVKS3lSUkhvTXJY?=
 =?utf-8?B?ek5kMk1odzFiOHdWeHFYc1NST1V3WkQyVlh2M21udmowTm8wNVg3MlZUeVVO?=
 =?utf-8?B?alZFbDJzSGxqMnpRRFk4aVBodHlGc0JqOTN3MzlNSm5MZkJoQ0l1eEFDSlFV?=
 =?utf-8?B?RnVqZEhYVWs0SjlTaWJMK25TVlZjR3FBWXlXcVkrVTUrT3JCMk00enBCU3Jm?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa0252ae-19cd-4059-0ecd-08dd245e31a5
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2024 21:01:53.5809 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TYilmD9ysV72bjgazU1eYuCZ6fHRdktwqAnQXLACtiLqeaf6c4MTdt1hmZ7ONEggwm35O3X0SqoIfEPbb/aDvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8803
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

Quoting Imre Deak (2024-12-18 11:56:46-03:00)
>On Tue, Dec 17, 2024 at 04:34:40PM +0200, Mika Kahola wrote:
>> tbt-alt mode is missing uhbr rates 10G and 20G. This requires
>> requires pll clock rates 312.5 MHz and 625 MHz to be added,
>> respectively. The uhbr rates are supported only form PTL+
>> platforms.
>>=20
>> v2: Add drm_WARN_ON() to check if port clock is not supported by
>>     the platform (Imre)
>>     Combine forward ungate with mask parameter (Imre)
>>     Rename XE3LPDP_* to XE3D_* (Imre)
>
>I highly disagree with the usage of the XE[23]{D,LPD,LPDP} etc. ciphers
>in the driver in general, instead of the human readable MTL, LNL, PTL
>etc., the human readable versions actually serving the intended purpose
>of reminding a reader what exact platform the code they read is about.
>
>I still don't know and haven't managed to figure out from the spec what
>either XE3LPDP or XE3D is about, looks like this same clock select field
>width is used by other XE3 platforms as well. So imo let's stick with
>the XE3 prefix used already elsewhere in the driver (no need to resend
>the patch just for that). With that:

One argument for using the XE* prefixes (e.g. XE3LPD for Xe3_LPD, which
is PTL's display) is that, technically speaking, the deltas are
associated to the IP rather than the whole platform.

For the recent display IPs, the same display IP could theoretically be
used in different platforms. I believe that became true starting with
Xe_LPD+ (MTL's display). Conversely, it could also be possible that
different SKUs of a platform X could be using different display IPs.
And the driver figures out which display it is driving via GMD IDs.

As such, I personally prefer the more accurate IP-based naming rather
than platform-based for stuff that is tied to the IP.

--
Gustavo Sousa

>
>Reviewed-by: Imre Deak <imre.deak@intel.com>
>
>> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 39 +++++++++++++++++--
>>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  4 ++
>>  2 files changed, 39 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/=
drm/i915/display/intel_cx0_phy.c
>> index cc734079c3b8..a8e0450c0378 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> @@ -3070,7 +3070,10 @@ int intel_mtl_tbt_calc_port_clock(struct intel_en=
coder *encoder)
>> =20
>>          val =3D intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, e=
ncoder->port));
>> =20
>> -        clock =3D REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
>> +        if (DISPLAY_VER(display) >=3D 30)
>> +                clock =3D REG_FIELD_GET(XE3D_DDI_CLOCK_SELECT_MASK, val=
);
>> +        else
>> +                clock =3D REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, v=
al);
>> =20
>>          drm_WARN_ON(display->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE))=
;
>>          drm_WARN_ON(display->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
>> @@ -3085,13 +3088,18 @@ int intel_mtl_tbt_calc_port_clock(struct intel_e=
ncoder *encoder)
>>                  return 540000;
>>          case XELPDP_DDI_CLOCK_SELECT_TBT_810:
>>                  return 810000;
>> +        case XELPDP_DDI_CLOCK_SELECT_TBT_312_5:
>> +                return 1000000;
>> +        case XELPDP_DDI_CLOCK_SELECT_TBT_625:
>> +                return 2000000;
>>          default:
>>                  MISSING_CASE(clock);
>>                  return 162000;
>>          }
>>  }
>> =20
>> -static int intel_mtl_tbt_clock_select(int clock)
>> +static int intel_mtl_tbt_clock_select(struct intel_display *display,
>> +                                      int clock)
>>  {
>>          switch (clock) {
>>          case 162000:
>> @@ -3102,6 +3110,18 @@ static int intel_mtl_tbt_clock_select(int clock)
>>                  return XELPDP_DDI_CLOCK_SELECT_TBT_540;
>>          case 810000:
>>                  return XELPDP_DDI_CLOCK_SELECT_TBT_810;
>> +        case 1000000:
>> +                if (DISPLAY_VER(display) < 30) {
>> +                        drm_WARN_ON(display->drm, "UHBR10 not supported=
 for the platform\n");
>> +                        return XELPDP_DDI_CLOCK_SELECT_TBT_162;
>> +                }
>> +                return XELPDP_DDI_CLOCK_SELECT_TBT_312_5;
>> +        case 2000000:
>> +                if (DISPLAY_VER(display) < 30) {
>> +                        drm_WARN_ON(display->drm, "UHBR20 not supported=
 for the platform\n");
>> +                        return XELPDP_DDI_CLOCK_SELECT_TBT_162;
>> +                }
>> +                return XELPDP_DDI_CLOCK_SELECT_TBT_625;
>>          default:
>>                  MISSING_CASE(clock);
>>                  return XELPDP_DDI_CLOCK_SELECT_TBT_162;
>> @@ -3114,15 +3134,26 @@ static void intel_mtl_tbt_pll_enable(struct inte=
l_encoder *encoder,
>>          struct intel_display *display =3D to_intel_display(encoder);
>>          enum phy phy =3D intel_encoder_to_phy(encoder);
>>          u32 val =3D 0;
>> +        u32 mask;
>> =20
>>          /*
>>           * 1. Program PORT_CLOCK_CTL REGISTER to configure
>>           * clock muxes, gating and SSC
>>           */
>> -        val |=3D XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(crt=
c_state->port_clock));
>> +
>> +        if (DISPLAY_VER(display) >=3D 30) {
>> +                mask =3D XE3D_DDI_CLOCK_SELECT_MASK;
>> +                val |=3D XE3D_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_sele=
ct(display, crtc_state->port_clock));
>> +        } else {
>> +                mask =3D XELPDP_DDI_CLOCK_SELECT_MASK;
>> +                val |=3D XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_se=
lect(display, crtc_state->port_clock));
>> +        }
>> +
>> +        mask |=3D XELPDP_FORWARD_CLOCK_UNGATE;
>>          val |=3D XELPDP_FORWARD_CLOCK_UNGATE;
>> +
>>          intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->p=
ort),
>> -                     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOC=
K_UNGATE, val);
>> +                     mask, val);
>> =20
>>          /* 2. Read back PORT_CLOCK_CTL REGISTER */
>>          val =3D intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, e=
ncoder->port));
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers=
/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> index c685479c9756..bf95ac234b2b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
>> @@ -187,7 +187,9 @@
>>  #define   XELPDP_TBT_CLOCK_REQUEST                        REG_BIT(19)
>>  #define   XELPDP_TBT_CLOCK_ACK                                REG_BIT(1=
8)
>>  #define   XELPDP_DDI_CLOCK_SELECT_MASK                        REG_GENMA=
SK(15, 12)
>> +#define   XE3D_DDI_CLOCK_SELECT_MASK                        REG_GENMASK=
(16, 12)
>>  #define   XELPDP_DDI_CLOCK_SELECT(val)                        REG_FIELD=
_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
>> +#define   XE3D_DDI_CLOCK_SELECT(val)                        REG_FIELD_P=
REP(XE3D_DDI_CLOCK_SELECT_MASK, val)
>>  #define   XELPDP_DDI_CLOCK_SELECT_NONE                        0x0
>>  #define   XELPDP_DDI_CLOCK_SELECT_MAXPCLK                0x8
>>  #define   XELPDP_DDI_CLOCK_SELECT_DIV18CLK                0x9
>> @@ -195,6 +197,8 @@
>>  #define   XELPDP_DDI_CLOCK_SELECT_TBT_270                0xd
>>  #define   XELPDP_DDI_CLOCK_SELECT_TBT_540                0xe
>>  #define   XELPDP_DDI_CLOCK_SELECT_TBT_810                0xf
>> +#define   XELPDP_DDI_CLOCK_SELECT_TBT_312_5                0x18
>> +#define   XELPDP_DDI_CLOCK_SELECT_TBT_625                0x19
>>  #define   XELPDP_FORWARD_CLOCK_UNGATE                        REG_BIT(10=
)
>>  #define   XELPDP_LANE1_PHY_CLOCK_SELECT                        REG_BIT(=
8)
>>  #define   XELPDP_SSC_ENABLE_PLLA                        REG_BIT(1)
>> --=20
>> 2.43.0
>>
