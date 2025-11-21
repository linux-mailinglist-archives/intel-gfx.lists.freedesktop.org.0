Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA6AC7BEFD
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Nov 2025 00:20:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EFBC10E918;
	Fri, 21 Nov 2025 23:20:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dT5qgrPI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4182B10E0AC;
 Fri, 21 Nov 2025 23:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763767231; x=1795303231;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=SZIyIasHNn+o3SBjKZy/cbzXOpfAXhtM2iXr2G4EKw4=;
 b=dT5qgrPImE+Xjjmwx8/oFdOa5ZWkqcESg1DBhABowu4d4+fLdJetkYnR
 uovRIf7QvnQDPjMZ/hj7Z0uNd/JRPIWTr7IoW5Sd33XN9boQEXtJgEInQ
 ltYoWvrnQrP+kefkrAUYaKEqfUI6hxyUE7PPGRjPzlq+rr3IkXd9VCOo6
 q/LgLUXJCfuDfqXeuPAAXurhZPAobnYoF8fKkrGj3C/Zop9sPh+S/FnpA
 sBBkk7t4WCB3nUtx+Ufa2uVF3fLwkEpbVT5KJ9DR6ndDuQw00MBM4K80E
 /HVKmbKMEpcOxqGyoTnwZlj8pTgCXaEXzj9gedA9sR4hcOfOPvx+IeQgK w==;
X-CSE-ConnectionGUID: Ru8XOsHtTtiyIvNi16jDJw==
X-CSE-MsgGUID: C7mgE7WKSbyMVbX29gJHyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="91348503"
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="91348503"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 15:20:31 -0800
X-CSE-ConnectionGUID: XRfx8MH5R+2krBYAH5MS5Q==
X-CSE-MsgGUID: A4AE9PUARjqO7qJl6C4OTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="215165241"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 15:20:31 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 15:20:30 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 15:20:30 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 15:20:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nlLGAB9CxABFVBkg0LmVZjjFQYLInDGUWobtFKNeTlMrA/eHiMTq1CSBDErIKNH3efCdfEqowVJ5qaXaIjy7IACT/V9ZwG3WBAy1mq58hivDf/DtvIgjSC5o/Kv1Yewf16SaDRcdwv4+QsgCfEs1/RwoZvydqnNYEegk7k4vrZQcSlLj1BYuPNAI6lpMWLKORtJC/hZpSurqBnOfLML19lgkXLQ7M/8nle1Qq4IXYSfSDRrxwQnhuddlmRxBCst0l0P23IbaVh5esx9BDJA9iHaR1ueEUQgsRxhJ3Ujm1Qpm7tZE9cmZQ+8EJfoXLOMwKVes/VJ02cBSM9RjxOCdPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/RuDeOK0cxQK0tjoip2ivHY4bYRjDK/fTD6wdR8NEK8=;
 b=WGHLIh6KrnGnkCYqEU2Izg+SQxutC/v+FZ9e0p1FRSJNIh7mNpJ1plRiyEohCSVTzthBWpoCu9SID54phLPvooRxNME9wqt5MKDCO3H1/MsI391rodOhuHU6cTmOo/ddN9wtvJVsrv9EKc6urmtZ6QvSbVXNsBAozDSChBJy0Uti0unE2QzsITQfYHxXRmrJJpfeGK8IqD110OZlZCVthA92TZMg8SqExFADZwtLAHysykCxSbOVoammdIX3rHb5qavzQeqp27XxRUrt8igiPPkZmgaCxv7+1fYDbc7Dcfawh344y9K0Yy393QeGcNR+/ibH1AX7SZ7eEJncNGUrGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by IA0PR11MB7883.namprd11.prod.outlook.com
 (2603:10b6:208:3de::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 23:20:21 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::28e0:9ef7:24f0:c21b]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::28e0:9ef7:24f0:c21b%7]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 23:20:21 +0000
Date: Fri, 21 Nov 2025 15:20:18 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?B?SMO2Z2FuZGVy?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 4/8] drm/i915/xe3p_lpd: Handle underrun debug bits
Message-ID: <aSDzsqFiYKUMWwfM@msatwood-mobl>
References: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
 <20251114-xe3p_lpd-basic-enabling-v5-4-c183388367f4@intel.com>
 <20251119190621.GZ3905809@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251119190621.GZ3905809@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4PR03CA0032.namprd03.prod.outlook.com
 (2603:10b6:303:8e::7) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|IA0PR11MB7883:EE_
X-MS-Office365-Filtering-Correlation-Id: 12fcf246-53a4-41e6-ab0b-08de29548ab7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?enhJYkF6NWhTcUhQdHQrT3hkQzVpcFZKL3hTajd6Y2lUSzJLd3NZbHFpYWRr?=
 =?utf-8?B?S2ttNFU5S3pvRUhyd0ZJSkVrL3hYTU5LRkRXaVBmTjUxZGZSQUJUR1o1d1VN?=
 =?utf-8?B?eXVIVjgwNENvOER1akxRZXI5RHdaZUd1THFCUGpiaUE5WnVtN2YrVWIzbTJo?=
 =?utf-8?B?a1pNNHA4YmJqUVNWdXFycmhZNTMvRkRqblRzeDEzUG9RQ1c4QnIxMHhRYnV2?=
 =?utf-8?B?MWdNZmk1UDVJaXpZZTc0QkROcEtxR1ViM1ZoKzZyMHR1dDN2dUpJQWtrOVR1?=
 =?utf-8?B?VGJYVUNFVUErbmlmNWRXMVhYMEpITnBnQms3Rk4zVmg5T2tWSXJNSlpzYzN6?=
 =?utf-8?B?eStsRytORk5ZMjYrUjNRN3dlMzErMDNid29VMTcvVHNrUVdFbGRrYUFHMFMw?=
 =?utf-8?B?QnN5eFZBUGRRa1dDaTRYUU1pcEdlZ2NhdW1mUHIzMnFMamVtcmllNXFZSDBW?=
 =?utf-8?B?MWs4dndVYW82dU52cW1aZ3Q1Lzc2SVQwWUFsUkZoYXpJTlUvUGoyeXdYQnRG?=
 =?utf-8?B?WW83NXl6cHlnYmNuOWMvRmtOMk9ac3pyQ1l4aVBvYkhuN2Zqc3pucVJ3TGtl?=
 =?utf-8?B?SkJQb0lsYkFjQVdvUHRCbXF1bkw3SDdKYUZUbXR4bzQ4TGZ5Z1h4TGRSbU1n?=
 =?utf-8?B?R1UzUk9KcCtjNUpBN1haL3BMcTliVXB4RGIrbFJoaFUwUEFTbU8xZFEyc1cx?=
 =?utf-8?B?MzZoUDJ1d0lZTHUxYnNBMFlnbFo3TUFjRDVhMURKTEtHOXd5Q01YNzlEclJ0?=
 =?utf-8?B?ai83OHovV003R3BHVmFyUk9mZWVsaEtFV09CWmtwbis3SklJSUM4WWhOMnli?=
 =?utf-8?B?ZlZRT1JSL0QxcDVsbVVpbUtUOXZhUXhVVHk1aXpySWh1SEJSUzNrKzhPaHhk?=
 =?utf-8?B?RWVtaHpKSlNtRS81SW9tRWN3Ly9hcGQrV2syVzBEWEtxanpxKzBIOUlaMXNY?=
 =?utf-8?B?Si9KZHZpeitFaVJtWHYrNlNiaDMxRGE2cXpYUExkYjJuYVlCQnBuQTZkbnhs?=
 =?utf-8?B?Z0E4TVBJOUZMakRTYWJGNm5GTDBFMTdjOXNZYkpxc3dyU2lXa21mekdFcExq?=
 =?utf-8?B?QlhmRG9aVGsrUnB1UFM5NlhBdkFENjEzVHBsQmZSY1Z0amgvRWJDMnRqNzZp?=
 =?utf-8?B?VTdvTS9WR0puUEdxdFFaZGV2aWQwTmNLRmVIWUU1RnN0VHhUWUdRVWl6T2FI?=
 =?utf-8?B?RW45NjRQYVJLR25lUmx3ZVREQVIzTVlqSTZ5b3FLUDM4Rlp0QkVZZytzTWpZ?=
 =?utf-8?B?VjNiUEZsMFRqNzkrUzlaMFU1M0hqdVhuKy9rM3A1aXArbE9uQi82OU5SWGxr?=
 =?utf-8?B?RlZZS0lmTE1kMXYzZjh3TWVlMUN2VklsRUdaYWFLUkFZckxtd1drazdyUExB?=
 =?utf-8?B?Vkt0K1Q2SDJha2FLZWNpbVpUTmR5REdtR2R5OGlWYWo1dDhRdjFKVi9JbTB5?=
 =?utf-8?B?ZWVRZk5id1NoMENBL1NrV0Nyc1R4SzArQjdkTFNUdUFyQUw2ZFMvbzlKQk1E?=
 =?utf-8?B?bWhrT252eVVUVEJtWlgvOEcyRW1veTBzYUEzaWY4STFpU2JrWDBEVnEvNDJs?=
 =?utf-8?B?Y3NqWTBCQkxHeitqNVRzUnE2aGVvc0VjZm1YZjdkNlQ5N2tvN25tTnhGSTdq?=
 =?utf-8?B?MHlSZi8wd2Uwd04wNVMxaFVoQmFIS0prQmQySitXSG9SaEdnMkNBZDBidzhI?=
 =?utf-8?B?YnJYOHdkeis0K0cwWVFDdlM4ZzU1M20vM1dXMjVmbmlxRTgxd1NTMm5BU3Ji?=
 =?utf-8?B?L29QUyt5L2JTYXBzYThiNGk4dHJrSnNqS096cjJlY2NIeG5tcjhLdi9GQ2F3?=
 =?utf-8?B?STJhcnpXbkhuaTNiV2FEakpwZnRxZ0xUQmtqSmlhQ28yUTZOOThFVHQ3TFdo?=
 =?utf-8?B?ZTlJYmtBSTNSbGlUME5oN2duRGg2czBKbjNtY2szV2FmMzlURVMyN0g4KzYy?=
 =?utf-8?B?YWRyUzhXVGt6ZlNnci9QdXJBQVR6ZStSa0JtZERNY2M4cktwYjliV3dSQ01m?=
 =?utf-8?B?SnRSbGFsT0J3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnNlRWdIT0I4VWZQOUZGY3d4OFpHeFVJNWlmODZGbHBqNGNMdG05VkVQRTBF?=
 =?utf-8?B?RFpvRnVVdTRYUGEzbkt6c1Q4elZZQlZudThOcWZ2aWN3OFpPT1FTMlZYaFkw?=
 =?utf-8?B?Sk5HK01WWDVLUW1jaDQ5aGxGdTZjMGxWU3lJV0pVSW44UUtZRHZ0ZCs1RUJj?=
 =?utf-8?B?S040d09DQTZVbytZbnhFdEtqank4V25GbWxiYm5NWFJiZGJvbUJMWUJKREd4?=
 =?utf-8?B?WlhVRjA1aTh3MmtQdXlDUlRpNUdna1IrM1Z2Z0xiaWNDN2pNSUJBaTN2MG96?=
 =?utf-8?B?Z3hkeXh6Skw2V01QeTJLUWxHaHlCOWxqQURRTEJWTURtaWFRT04vZWVLMUVi?=
 =?utf-8?B?K215ckVIQ09rTUJROVc0aU9JZGtXYi9SQThlenZsTHo3djFuSjM5aHhKdnI4?=
 =?utf-8?B?WUlJZkVaVlYxS0tnSFNUZG5lNjRDOU9DeHphanhsZlEwNm9uY2lsZDRldklS?=
 =?utf-8?B?NnFzOFZQZU12cFdHZmlyT01HbkVJa2F5V0FWVHhPV0xsd29DQ0ZRdTU3cldm?=
 =?utf-8?B?QXh4T3JrZlRmOWhkeHBqaWo0RDdqZmo1NkQzRnN2cHpEaXFpUFFlOGk4WU92?=
 =?utf-8?B?MDgyUVAwQlhkbzQvSDRocERiYmUvbjhIQkJ3ak9pWmFxTmF4RXRaUmVPbHli?=
 =?utf-8?B?dVN5SzV4MzAyM2pJcDB1UjIzNlNUV3VzQ0Uvc05hSlJNMURtRU5VTGJwREUv?=
 =?utf-8?B?b1RQUEpJS0R1bFVsRDc3T1ladVl5NmQ2aW5IZ080NnFIM2FPTXFScjNwVTNW?=
 =?utf-8?B?STNZQjEzSmFGcU5EUWloNUJVUytDOWpWUXAvejhHTlVoV3psMTBFZ2o2MGJZ?=
 =?utf-8?B?eVNldUpqTnE3ZlF2SWRMeWYxTlc2Z3RFR2xNYnJqQ2xpRVArWkdyOHpQT0cx?=
 =?utf-8?B?U3J2SXZwZUNOWHBKTXhZMC9VNm1odUpFemVCZ0xiVzF6WkpncnhnVkI0c0dJ?=
 =?utf-8?B?TGJJWFllYlo0aHpCelJyMmMwMDhyK3FqWjRVY2FWdktaSXc4N1ZwZ0UzRVlj?=
 =?utf-8?B?bmpoV0cvQTNyYzIyT09FWUEvTS9UWG8zU2ZCeGJXSUhCelFycDE2d0toMUhy?=
 =?utf-8?B?T0QyVVlQajRBTTNqT09mVDZzczVNdkJ2c295R21jVEppWFhPMzN5azF3R3VD?=
 =?utf-8?B?UmdxZWxPMzhUb3piSGwyaVdNSk1pQjhmR3dFdmxhWWxwU1BURjExUjFaRlBu?=
 =?utf-8?B?N1FSK1BBZUZraGJNc1lhWlFkeXgvMXRjNU5tT1I0bm15b0JjbFhhU2wvK2Mx?=
 =?utf-8?B?a0RHMmpTTVp5U09FVkxkc3VXS2o3RmQ3QmIrc1dhZHpyKzkyWk5YUW5CWTZl?=
 =?utf-8?B?L3RyYng2TDZjVVljaTY2d2VuRVUvdXhvWVNscEQrTEVJRVRvQ2NOYkNYcG5B?=
 =?utf-8?B?V3NNNkQrRXAxQ0htRzA1aHFzd3g1aUw0cWY2WXYwRUNzMDVac3VmQmdrQXVN?=
 =?utf-8?B?QXREaFAwOTdrQnlYby8yNTlJNFRTb01PUUp4cGFuay9tUjl2UzlJeXlMTHlq?=
 =?utf-8?B?clVmaWNsT2pYelFVQkQ2VDlvVUowVkg3UzBvTjJJWUZTTVQ5SW9uYlVlOUpq?=
 =?utf-8?B?S3c1ZHZ1ZkJ4REFXcEIxcHpYSnNiOWM4VEhNVG9iV1Nod1JtbTRCNFlEN2NQ?=
 =?utf-8?B?U0UxOUxBSklvbFZsLzBYMEhINmpJZUh1bW53dW5NK0N6OWVxWHdQUG42czcy?=
 =?utf-8?B?eDNlcmRzU01icndFR05XWmZiKzZDV1FERnpybm1sa0RYL1hrSkdWSzFnL3ZF?=
 =?utf-8?B?d3h3NWJ4bytzTGpiU3lhdnJuMDRncU9mUnl6cnRocVBPelZnOUwvcEdiSzN3?=
 =?utf-8?B?dks1VEx6bS9JZzV4R01HQVZxNURKbmNFOGlEYXlxR1JpVk03c2ZFN3JhZWlB?=
 =?utf-8?B?czlBMVpmU0N0VUF2R3U2SU5rOEd1R3RqS3N0TFBlU1RqMnZWNmJTODdqUWZM?=
 =?utf-8?B?Wk1RSmV6QzYwVkVwZ25iVmZUTkIrVE1JVjZCcEpuelRJUTF3ai8zcTdYWXhE?=
 =?utf-8?B?cW04N0M3QVhMbVFZWWxURk91NGVhWm5ld1VSM2MwUU1wU0wyWHJHZjdFbXpS?=
 =?utf-8?B?aUhxMTJVenBLVHM4d3BoY3ZiUEQ0NjlMdll5cTFGT1o2VFcrVUJOS0FsVndE?=
 =?utf-8?B?RTJ6alorRnRJb01la3kxZDI5M0VuN1RSOG9CTk1QOGRMMkp6MGJQTDFLZSt6?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12fcf246-53a4-41e6-ab0b-08de29548ab7
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 23:20:21.6609 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z+qnpLcXsxIPT6neuDj+Hsdw77BIgDPV012cJc4zcPUlJchYBw1tmwJxAhvS4W3jMLNVd37FApE5f/t09Sd1JC/vC0AtsuRmpQs8eFID4MM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7883
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

On Wed, Nov 19, 2025 at 11:06:21AM -0800, Matt Roper wrote:
> On Fri, Nov 14, 2025 at 05:52:11PM -0300, Gustavo Sousa wrote:
> > Xe3p_LPD added several bits containing information that can be relevant
> > to debugging FIFO underruns.  Add the logic necessary to handle them
> > when reporting underruns.
> > 
> > This was adapted from the initial patch[1] from Sai Teja Pottumuttu.
> > 
> > [1] https://lore.kernel.org/all/20251015-xe3p_lpd-basic-enabling-v1-12-d2d1e26520aa@intel.com/
> > 
> > v2:
> >   - Handle FBC-related bits in intel_fbc.c. (Ville)
> >   - Do not use intel_fbc_id_for_pipe (promoted from
> >     skl_fbc_id_for_pipe), but use pipe's primary plane to get the FBC
> >     instance. (Ville, Matt)
> >   - Improve code readability by moving logic specific to logging fields
> >     of UNDERRUN_DBG1 to a separate function. (Jani)
> > 
> > Bspec: 69111, 69561, 74411, 74412
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> > I tested this by adding a change on top of this series that updates
> > Xe3p_LPD's CDCLK table to use bad values and I got the following
> > messages:
> > 
> >     [  +0.000237] xe 0000:00:02.0: [drm:intel_modeset_verify_crtc [xe]] [CRTC:88:pipe A]
> >     [  +0.000674] xe 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun
> >     [  +0.000015] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: DBUF block not valid on planes: [1]
> >     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: DDB empty on planes: [1]
> >     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: DBUF below WM0 on planes: [1]
> >     [  +0.000004] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun info: frame count: 1890, line count: 44
> > ---
> >  .../gpu/drm/i915/display/intel_display_device.h    |   1 +
> >  drivers/gpu/drm/i915/display/intel_display_regs.h  |  16 +++
> >  drivers/gpu/drm/i915/display/intel_fbc.c           |  50 ++++++++++
> >  drivers/gpu/drm/i915/display/intel_fbc.h           |   3 +
> >  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |   2 +
> >  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 109 +++++++++++++++++++++
> >  6 files changed, 181 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index b559ef43d547..91d8cfac5eff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -197,6 +197,7 @@ struct intel_display_platforms {
> >  #define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \
> >  						  BIT(trans)) != 0)
> >  #define HAS_UNCOMPRESSED_JOINER(__display)	(DISPLAY_VER(__display) >= 13)
> > +#define HAS_UNDERRUN_DBG_INFO(__display)	(DISPLAY_VER(__display) >= 35)
> >  #define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
> >  					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
> >  #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 9d71e26a4fa2..89ea0156ee06 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -882,6 +882,21 @@
> >  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
> >  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
> >  
> > +#define _UNDERRUN_DBG1_A			0x70064
> > +#define _UNDERRUN_DBG1_B			0x71064
> > +#define UNDERRUN_DBG1(pipe)			_MMIO_PIPE(pipe, _UNDERRUN_DBG1_A, _UNDERRUN_DBG1_B)
> > +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK	REG_GENMASK(29, 24)
> > +#define   UNDERRUN_DDB_EMPTY_MASK		REG_GENMASK(21, 16)
> > +#define   UNDERRUN_DBUF_NOT_FILLED_MASK		REG_GENMASK(13, 8)
> > +#define   UNDERRUN_BELOW_WM0_MASK		REG_GENMASK(5, 0)
> > +
> > +#define _UNDERRUN_DBG2_A			0x70068
> > +#define _UNDERRUN_DBG2_B			0x71068
> > +#define UNDERRUN_DBG2(pipe)			_MMIO_PIPE(pipe, _UNDERRUN_DBG2_A, _UNDERRUN_DBG2_B)
> > +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN	REG_BIT(31)
> > +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK	REG_GENMASK(30, 20)
> > +#define   UNDERRUN_LINE_COUNT_MASK		REG_GENMASK(19, 0)
> > +
> >  #define DPINVGTT				_MMIO(VLV_DISPLAY_BASE + 0x7002c) /* VLV/CHV only */
> >  #define   DPINVGTT_EN_MASK_CHV				REG_GENMASK(27, 16)
> >  #define   DPINVGTT_EN_MASK_VLV				REG_GENMASK(23, 16)
> > @@ -1416,6 +1431,7 @@
> >  
> >  #define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
> >  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
> > +#define  XE3P_UNDERRUN_PKGC				REG_BIT(21)
> >  
> >  #define FUSE_STRAP		_MMIO(0x42014)
> >  #define   ILK_INTERNAL_GRAPHICS_DISABLE	REG_BIT(31)
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 437d2fda20a7..ec316f9843c6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -129,6 +129,25 @@ struct intel_fbc {
> >  	const char *no_fbc_reason;
> >  };
> >  
> > +static struct intel_fbc *intel_fbc_for_pipe(struct intel_display *display, enum pipe pipe)
> > +{
> > +	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
> > +	struct intel_plane *primary = NULL;
> > +	struct intel_plane *plane;
> > +
> > +	for_each_intel_plane_on_crtc(display->drm, crtc, plane) {
> > +		if (plane->base.type == DRM_PLANE_TYPE_PRIMARY) {
> 
> Can't we just use crtc->base.primary rather than looping to find it?
> While it's legal at the DRM layer for modern drivers to not register a
> primary plane (which in turn means no support for some pre-atomic KMS
> APIs), i915 has always always created and registered one in
> intel_crtc_init().  Other FBC code already uses the primary pointer to
> grab the FBC associated with a CRTC (intel_fbc_min_cdclk,
> intel_fbc_crtc_debugfs_add, etc.).
Yes, I think this is correct as well.
MattA
> 
> 
> Matt
> 
> > +			primary = plane;
> > +			break;
> > +		}
> > +	}
> > +
> > +	if (drm_WARN_ON(display->drm, !primary))
> > +		return NULL;
> > +
> > +	return primary->fbc;
> > +}
> > +
> >  /* plane stride in pixels */
> >  static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane_state)
> >  {
> > @@ -2119,6 +2138,37 @@ void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display)
> >  		__intel_fbc_handle_fifo_underrun_irq(fbc);
> >  }
> >  
> > +/**
> > + * intel_fbc_read_underrun_dbg_info - Read and log FBC-related FIFO underrun debug info
> > + * @display: display device instance
> > + * @pipe: the pipe possibly containing the FBC
> > + * @log: log the info?
> > + *
> > + * If @pipe does not contain an FBC instance, this function bails early.
> > + * Otherwise, FBC-related FIFO underrun is read and cleared, and then, if @log
> > + * is true, printed with error level.
> > + */
> > +void intel_fbc_read_underrun_dbg_info(struct intel_display *display,
> > +				      enum pipe pipe, bool log)
> > +{
> > +	struct intel_fbc *fbc = intel_fbc_for_pipe(display, pipe);
> > +	u32 val;
> > +
> > +	if (!fbc)
> > +		return;
> > +
> > +	val = intel_de_read(display, FBC_DEBUG_STATUS(fbc->id));
> > +	if (!(val & FBC_UNDERRUN_DECMPR))
> > +		return;
> > +
> > +	intel_de_write(display, FBC_DEBUG_STATUS(fbc->id), FBC_UNDERRUN_DECMPR);
> > +
> > +	if (log)
> > +		drm_err(display->drm,
> > +			"Pipe %c FIFO underrun info: FBC decompressing\n",
> > +			pipe_name(pipe));
> > +}
> > +
> >  /*
> >   * The DDX driver changes its behavior depending on the value it reads from
> >   * i915.enable_fbc, so sanitize it by translating the default value into either
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> > index 91424563206a..f0255ddae2b6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> > @@ -9,6 +9,7 @@
> >  #include <linux/types.h>
> >  
> >  enum fb_op_origin;
> > +enum pipe;
> >  struct intel_atomic_state;
> >  struct intel_crtc;
> >  struct intel_crtc_state;
> > @@ -46,6 +47,8 @@ void intel_fbc_flush(struct intel_display *display,
> >  		     unsigned int frontbuffer_bits, enum fb_op_origin origin);
> >  void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane);
> >  void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
> > +void intel_fbc_read_underrun_dbg_info(struct intel_display *display,
> > +				      enum pipe, bool log);
> >  void intel_fbc_reset_underrun(struct intel_display *display);
> >  void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
> >  void intel_fbc_debugfs_register(struct intel_display *display);
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> > index b1d0161a3196..77d8321c4fb3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> > @@ -88,6 +88,8 @@
> >  #define DPFC_FENCE_YOFF			_MMIO(0x3218)
> >  #define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x43258)
> >  #define DPFC_CHICKEN			_MMIO(0x3224)
> > +#define FBC_DEBUG_STATUS(fbc_id)	_MMIO_PIPE((fbc_id), 0x43220, 0x43260)
> > +#define   FBC_UNDERRUN_DECMPR			REG_BIT(27)
> >  #define ILK_DPFC_CHICKEN(fbc_id)	_MMIO_PIPE((fbc_id), 0x43224, 0x43264)
> >  #define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
> >  #define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > index c2ce8461ac9e..b413b3e871d8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> > @@ -25,6 +25,8 @@
> >   *
> >   */
> >  
> > +#include <linux/seq_buf.h>
> > +
> >  #include <drm/drm_print.h>
> >  
> >  #include "i915_reg.h"
> > @@ -57,6 +59,100 @@
> >   * The code also supports underrun detection on the PCH transcoder.
> >   */
> >  
> > +#define UNDERRUN_DBG1_NUM_PLANES 6
> > +
> > +static void log_underrun_dbg1(struct intel_display *display, enum pipe pipe,
> > +			      unsigned long plane_mask, const char *info)
> > +{
> > +	DECLARE_SEQ_BUF(planes_desc, 32);
> > +	unsigned int i;
> > +
> > +	if (!plane_mask)
> > +		return;
> > +
> > +	for_each_set_bit(i, &plane_mask, UNDERRUN_DBG1_NUM_PLANES) {
> > +		if (i == 0)
> > +			seq_buf_puts(&planes_desc, "[C]");
> > +		else
> > +			seq_buf_printf(&planes_desc, "[%d]", i);
> > +	}
> > +
> > +	drm_err(display->drm, "Pipe %c FIFO underrun info: %s on planes: %s\n",
> > +		pipe_name(pipe), info, seq_buf_str(&planes_desc));
> > +
> > +	drm_WARN_ON(display->drm, seq_buf_has_overflowed(&planes_desc));
> > +}
> > +
> > +static void read_underrun_dbg1(struct intel_display *display, enum pipe pipe, bool log)
> > +{
> > +	u32 val = intel_de_read(display, UNDERRUN_DBG1(pipe));
> > +
> > +	if (!val)
> > +		return;
> > +
> > +	intel_de_write(display, UNDERRUN_DBG1(pipe), val);
> > +
> > +	if (!log)
> > +		return;
> > +
> > +	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, val),
> > +			  "DBUF block not valid");
> > +	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val),
> > +			  "DDB empty");
> > +	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val),
> > +			  "DBUF not completely filled");
> > +	log_underrun_dbg1(display, pipe, REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val),
> > +			  "DBUF below WM0");
> > +}
> > +
> > +static void read_underrun_dbg2(struct intel_display *display, enum pipe pipe, bool log)
> > +{
> > +	u32 val = intel_de_read(display, UNDERRUN_DBG2(pipe));
> > +
> > +	if (!(val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN))
> > +		return;
> > +
> > +	intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_LINE_COUNTERS_FROZEN);
> > +
> > +	if (log)
> > +		drm_err(display->drm,
> > +			"Pipe %c FIFO underrun info: frame count: %u, line count: %u\n",
> > +			pipe_name(pipe),
> > +			REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, val),
> > +			REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
> > +}
> > +
> > +static void read_underrun_dbg_pkgc(struct intel_display *display, bool log)
> > +{
> > +	u32 val = intel_de_read(display, GEN12_DCPR_STATUS_1);
> > +
> > +	if (!(val & XE3P_UNDERRUN_PKGC))
> > +		return;
> > +
> > +	/*
> > +	 * Note: If there are multiple pipes enabled, only one of them will see
> > +	 * XE3P_UNDERRUN_PKGC set.
> > +	 */
> > +	intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PKGC);
> > +
> > +	if (log)
> > +		drm_err(display->drm,
> > +			"General FIFO underrun info: Package C-state blocking memory\n");
> > +}
> > +
> > +static void read_underrun_dbg_info(struct intel_display *display,
> > +				   enum pipe pipe,
> > +				   bool log)
> > +{
> > +	if (!HAS_UNDERRUN_DBG_INFO(display))
> > +		return;
> > +
> > +	read_underrun_dbg1(display, pipe, log);
> > +	read_underrun_dbg2(display, pipe, log);
> > +	intel_fbc_read_underrun_dbg_info(display, pipe, log);
> > +	read_underrun_dbg_pkgc(display, log);
> > +}
> > +
> >  static bool ivb_can_enable_err_int(struct intel_display *display)
> >  {
> >  	struct intel_crtc *crtc;
> > @@ -262,6 +358,17 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct intel_display *displa
> >  	old = !crtc->cpu_fifo_underrun_disabled;
> >  	crtc->cpu_fifo_underrun_disabled = !enable;
> >  
> > +	/*
> > +	 * The debug bits get latched at the time of the FIFO underrun ISR bit
> > +	 * getting set.  That means that any non-zero debug bit that is read when
> > +	 * handling a FIFO underrun interrupt has the potential to belong to
> > +	 * another underrun event (past or future).  To alleviate this problem,
> > +	 * let's clear existing bits before enabling the interrupt, so that at
> > +	 * least we don't get information that is too out-of-date.
> > +	 */
> > +	if (enable && !old)
> > +		read_underrun_dbg_info(display, pipe, false);
> > +
> >  	if (HAS_GMCH(display))
> >  		i9xx_set_fifo_underrun_reporting(display, pipe, enable, old);
> >  	else if (display->platform.ironlake || display->platform.sandybridge)
> > @@ -379,6 +486,8 @@ void intel_cpu_fifo_underrun_irq_handler(struct intel_display *display,
> >  		trace_intel_cpu_fifo_underrun(display, pipe);
> >  
> >  		drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
> > +
> > +		read_underrun_dbg_info(display, pipe, true);
> >  	}
> >  
> >  	intel_fbc_handle_fifo_underrun_irq(display);
> > 
> > -- 
> > 2.51.0
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
