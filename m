Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C242B9728F5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 07:42:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B28610E6FA;
	Tue, 10 Sep 2024 05:42:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TExZ3p34";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E156A10E6FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 05:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725946962; x=1757482962;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nD98vFVmJ//un8M+qrGHVaa19Q5nEDWOjrVjveY6z/4=;
 b=TExZ3p34Ue0vmKk7Fr/QbeyC//GZLxrU7TcWM1H8ISVLREfa+G404Ipb
 QFWnsNPlUOsYNo2r4Vm69m0zxUV6z1tbPykZn6ySlDVkCgXAWjifO5DhZ
 0vIn0MgPVZE1JA1Rj+dnOJSVm1yL70NZC9Px0HM1E994MyQITr3yDW79E
 1/JvuYT4XJiZ9DJRsVpjKb2bZqYdtmjicFwOM4nuR5Dis5xQGaUchlt3F
 Tjs3Lr/w60CLWf3NSWFwWVhUg6PUZF62Eehi3OgeOsTSagVUqJfsp+PKx
 xKRizdz+VrXErHTCPndPcB6MM11Elis9UlVpsTxtBY3zDXodb6ChqTUAp Q==;
X-CSE-ConnectionGUID: 3Yxrl1XRTl+6mxdd2uStLA==
X-CSE-MsgGUID: cRVPMBjLRWOhocDKSGw39Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="27596354"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="27596354"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 22:42:42 -0700
X-CSE-ConnectionGUID: Hy7/q3gBTyOBD+vGOOgFRw==
X-CSE-MsgGUID: N659K8TtRkedIisKrqd4tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="71872720"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 22:42:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 22:42:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 22:42:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 22:42:40 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 22:42:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QV0zrZFZq/efxq3chvFHYUqXOuJwd9iZ1iTsPNrbfQvLOt4pSAhpEQvUSyiclKW18BNEDgTZYRZ84AhJCTq4NN/K7X5JgKnZhvHG1x53c8hmzZUwBEYHeLhbl2PtX7eWBCJhJAo5QNbOao0se3L5gqH/W75fctC2hRQllw7RKCyOcgjmhPUSGqd/3y3TE+2bDnQE9uF+RKCoUBo2Bz/ClZsWZrfXn9gQQOM8subD9R6iMAhTmkL9qQlgsMxRsmsvSp0+Mimw70RSAM2ib+waARIACG5EeBCTv5mZKJIE2alWCviFt3o779Yf+3ErU6HvsX0rkvbJ2mSz8OUxutH+dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZPVtN6MjpEOJ5yfXtLWdGxiROlMtsuGlpjFo2Vt7tNc=;
 b=BsT0zvXriwnmfC6Epqu27j9k1ilXiB3/sMRaRfNUNRazpXOc/Tjkl3XBDd7EGUZeFjZ4jG6fcQ22zhqq5BsbsSYUJjdqqVdKidBxm9cc3HkVa+MFX7UmHUCOxeD2ir4Xikddd/EPxTTS/8KOQv1MqX04LbFxGUEg5PSwFhf/IlO45GwiBJZ4jbfUVlzSUjqtAUoGtBluCzyk4ELwPhuMzc0vrwIC2aCdt+9d8Q7lsu2BNxDJckDbPBeaBvWy3ttv3kKuMrwxIhAJcntkQRsERP3ZQyo0s1iOQTIhPQUed7WB3mbJOT6M3S7VilvmsIw0mD8KBHSucRJFN6EJ2dwIFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB4655.namprd11.prod.outlook.com (2603:10b6:806:9d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Tue, 10 Sep
 2024 05:42:38 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7939.022; Tue, 10 Sep 2024
 05:42:38 +0000
Message-ID: <4f8e660d-94af-4eb0-be6a-a503c01ed617@intel.com>
Date: Tue, 10 Sep 2024 11:12:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/14] drm/i915/display: Modify debugfs for joiner to
 force n pipes
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-2-ankit.k.nautiyal@intel.com>
 <ZtsVs38KicPJZff1@intel.com> <ZtsXjQoYgtEVdjRK@intel.com>
 <b62b3ba6-7954-4dc8-8ce9-2aba2b7c712c@intel.com> <Zt760UZiDGIvQGth@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Zt760UZiDGIvQGth@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0094.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB4655:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c406ecf-6e2d-4388-18ed-08dcd15b6104
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eXFYMkEyM3hqR2dFVTJFR0k2cnlIRDNFNnhuc1NNeklzdUJYd3kwano1NUVt?=
 =?utf-8?B?WGxsaFdmajB5Zm9xSkY5Tng2UHlITzQ2NWVFTmtROFcydkhlRmNmbHZ4V2pj?=
 =?utf-8?B?WFc2bWNWa3Fvbllyc1JEcy9RVWszSzdpUmxqcGJuWWFMeUx0YTgrYmVlSHJa?=
 =?utf-8?B?ZUc1aVp0WWR1bUMza2srR1o4V004ZXpVRzR3R3hhUUtWTTdTRUZ1QTI1TzFR?=
 =?utf-8?B?cHhOR1ZhS0ZleHpCM24vREFKaHhnNno4SUNvNTV0WkFHeS9YM0kxRHFFbThq?=
 =?utf-8?B?TlVqcmY1VDViYjU1NU5jVGhjUVYwdlQ1ODdwaUdLWGR3WDdJc3ZOa0RXUW1B?=
 =?utf-8?B?SlNDUzF6QzBQWENaN3hJc05OVm4yVm5odkU0OW11UExDbVhzZjRYQU0zSW9L?=
 =?utf-8?B?b2ZpZXpKT0RCVXhTbzVnTTE0aE5HTTVuOVQ1UU44UUI5bzMyd0lmZjhuUldD?=
 =?utf-8?B?aDJhRGFVY2dlTE5CRGNTeGhBWUJobHRFK05uazhBNFlPZXZ6K1VYMy9EZWtN?=
 =?utf-8?B?UkMzV1ZWRmRyM1RHd1NqTTJYTDE2c1hRdElWRWN2V0lLVGZUa0doM3hGdWwr?=
 =?utf-8?B?UlJFMG85WTJZVGRkdjlRZ09mb3ZMUnZsWG43Q2NqeVRESjBUa3JpU3VVdy91?=
 =?utf-8?B?NXljYmprQzVRV0hYT0tlaEp6ZElqS0lLdUtoNlBUajdseFJXeVFpUERzcEN1?=
 =?utf-8?B?Y3FSRjB2STlYVE1oc3BQbitBazc2MERnMlk1SkZCSXdFWE9UcFlQY0xSZW1R?=
 =?utf-8?B?ZDVsU1JFakpnT3RYemp1T0pYMnYzRFBETnlraGVzUkdyU3cvMm5KaGxqMjBJ?=
 =?utf-8?B?ZjI5WjBtWHZMNXUzd2JaRUNzdVdhVXFKQ0JEalFhMjZHYUtIR1NycEtGYjRC?=
 =?utf-8?B?UnFDeHNKeUpXbXFiWWVDYTZvUVR3YVRNbXJZTE9XMGpDWC92UTBZU3dSb1pt?=
 =?utf-8?B?QXJYaUgzM1VNUGVwN0Q4Q0hCN3Ewd29XUUpta3UrdWJXUkpqKzFsNXBwdndZ?=
 =?utf-8?B?RmZWa3RqbHQ5cTN0RlAyTWJkdjNrWWJLblZ4MTFSTGtDMjk1TldrRThnUnVS?=
 =?utf-8?B?SXlxZTV0TUNod3QxSkhKSVgwb3BMczR3V0JEYXF6ZGEvZ2IzUlZ0OHNRNGp4?=
 =?utf-8?B?ZTI4dXRnaE9tSTRvdVlCUTN3YnM0elhscjR1MHpjTWJhMWM0OFVSU2k4c2NH?=
 =?utf-8?B?M1o4clk5WlRaWXkyQlI2Ris3bTYyMFBFL1hQcUdUa2lHUmtuWlZuZUFVQ1hl?=
 =?utf-8?B?U0wvZm04MUtTUTArN0RzVmJzNHZOV2wwYjVQN0dYa2RZQVJkamFvZmIvS0VS?=
 =?utf-8?B?UHNiNkNaTEFtaHFVU1NtVlVxekJ0b1pXR1Q1cFdXQzVoNGtzRU05TVVZTUpQ?=
 =?utf-8?B?NWxVcHJNOGxtRmhNTDJTbTFXNk40eEJWWmRxYVZBa0FZcGdXekt5Z1B6akdi?=
 =?utf-8?B?aUhNTld0N2VVVllFVVRlakZqK0dSZU9XaU1maDJ5Zm5kdm5jTUNWUHFWMm8w?=
 =?utf-8?B?VkpZR0dOWlZlQ0RIRXBxREhqd0o1NnR6NHJkem9KQjZweE5ENlZBenVUckFF?=
 =?utf-8?B?cG9kb3lNSzliT2dYU2RHN3p1cDI2YWhUMEVHaVVMRGFlUkNzVERBL1FMNC9H?=
 =?utf-8?B?MXU5NVhUZHFIa2J2eXB3SzRTVU45eTZWeVJZTWhYOVRpTVRpNkNLeXNrZXJ3?=
 =?utf-8?B?QWJJWnJndHdyTWVzbXVEWFVxVmZtS2s5UWpZaW85TDA1b2tyc2pyUmg0bmVM?=
 =?utf-8?Q?4dcheOtDwuWMpuuF6I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1cvUDhRWGo4Q0dLcHJob2FhRUNlV1JFWW85dUNKdWVublRQYjFzWU5PT2t2?=
 =?utf-8?B?Q2NqZGRqQng3U2Zwd1VadG40QVZSU2NTemxScy9PaG9hbEY3azFJN3lSMExN?=
 =?utf-8?B?a05mNFh2TW9IbndSZldtWWRLaTdSRmpFTGFnRkJUbWV4YW1nZjNGbmdTSVQx?=
 =?utf-8?B?bFIzaXpWdEhXZ05VR0JDQW9oYzVOTmtoRHc2VFY4SDM3WXZDWmVaUE9GMnZ3?=
 =?utf-8?B?aitSMTlKa29SbzhDTThpc3lNTDRYY2cyeTc0dm1CZDdkMlExd053YlNRODZv?=
 =?utf-8?B?Zzk0WjlZSTYwMWl6endQUTJBMGZHTVNha2hWeDNOVEliRzhTWlFYa3ZaazFE?=
 =?utf-8?B?ajJSWFk2U2huYTJsL3JINWFadVpOVW9QejNvWEkzWHYwQUFtUmQzbXU1R2xn?=
 =?utf-8?B?aGp5SlZ5dURZY1JIdFZLdng3STFUWHhtUndoQnRHMnUrNUJvYVhrUllldkFk?=
 =?utf-8?B?REV4WXV1bkpLUER2YW40Q2ZaQUlTakNIMlNYNkcvK0lCVnBObnBwam41NDNJ?=
 =?utf-8?B?NkZuZHQrN0d6V0M3YVhoVm4zNTZVR1c4OGdDNE5oN3V5Qm9reGF5d2lSYXZJ?=
 =?utf-8?B?UlA1cFdKYU10cExFVFAyTlU3b2hIWHNjWWVjM1p1d3cveVpEVk03SUxvRG1H?=
 =?utf-8?B?RmdBMjZuaFJQTTJEZWQweC95NGt0RlY1SWh3a2VHdGNSVTVOMGhSUlF0NzdU?=
 =?utf-8?B?V1dDa1pvVUtKRjRlaFFDQk9zbmlWN2E0VUpQVGVBRGgrL1gwL3RRRlZnbkdR?=
 =?utf-8?B?Um5iSExCbGtZaEpkQmRNSk9yUDFQekVUTlh3Rk5rU25RaW5TQkJrdXVyT3Nu?=
 =?utf-8?B?N0dRejlwRktRMkhjUlowb1lCV3JzUHBNOHpFTWR6K1ozVVhzVkgybFB6Tk5w?=
 =?utf-8?B?UUd0NG9ZRzczSld3RWJuRWI3NmF6VjFpNWlTV05jT2Fqd2drVU5oL3JqNTNU?=
 =?utf-8?B?dkVJcWVGNlJNbVZMT2JxU2hvTWN0RWY5T0trK2dsZkVJUEhhOGxMRkZLbkRn?=
 =?utf-8?B?Unc4MEFSNk9MSkxVN2xRRTJiSDUxVjRwNEMxYU43YmZuUEt4UkVSOXBiRUQy?=
 =?utf-8?B?WFVYTUFCem9oSnBaRTNLMXNLaDhFdGhrdUJCbW4ycjNNR0xFRXhQbU9GWCtS?=
 =?utf-8?B?NGhCSXVOZG94NTVGNE5LbWltZ0NlWjhxMUp1N3diZXFzNEloeGhPY2d1SnN4?=
 =?utf-8?B?cVJMMTl3cTlvNHg5S2YxZ3N4M1JsQkJrMTBVNURSczBMUW0rQ05UUUk4dm41?=
 =?utf-8?B?OFVsTzBKNmdpeTJaTDNudWlXZXR4NWJRTm4yQXcrUy9qRUgvT3RmdVlyVy9j?=
 =?utf-8?B?MVM5emxKWm0rTDdLT2VtTThCeDAwdlk0ZldYYmY5ZlA4czJQcVJrbHN1Qmkw?=
 =?utf-8?B?Y2ZaeThTSTRSNmgyd05nU3VtMG1IZTRwZ28wY3hZaDdlMW5wT2piWExhVTZo?=
 =?utf-8?B?bzgzTUc1aGNsZU4ySHMxMm1vTFBKZzMwNVhldkYvSHNoUVlNSDdKQmFlQnM3?=
 =?utf-8?B?dnBkQVR5STZqbzdVR085eGFpVTVleEM0MGRxdlZFNmg2VkQyNis4TFhSMWI1?=
 =?utf-8?B?U0d3R1N5UlJWMFlPRXpDeHFkSkJmUExHWElEV2hvSkVqSzFwQ3g3ZDdqM1d5?=
 =?utf-8?B?eUVmWTFmL0t3T1FCZlo4MWRvaGZmUk1qb20wZzFoNGdHeFlPWTRyNmx5SmZM?=
 =?utf-8?B?T2xzdS9MQ1V0OVZvN2FaUEF2QlVVTC81VllITXFsbXJCM0dyUEhYRVc3Wmhw?=
 =?utf-8?B?THB0UEFYSVREVXdNNmVQZFhPQmRxV0NxOEt5cFBWMTZLYldwYXhudjlJZ0pJ?=
 =?utf-8?B?dWljbW1OWWVVM3ZaZ1V4ZG1la1loVFFhVFBvSzh5Q0Z5Nmp5bjY2KzNrR0dJ?=
 =?utf-8?B?RVFBa3huajA1SFozbmw3NVRoZXN3Z0V0cFJqdGY1L2U1R2tFdmwvMTcxUlJF?=
 =?utf-8?B?NmdtY2RtMmlObHVmMmM4R2dUbVlkaDZqZm01WUxJcC9DZkRtVnFIZjRBV2Ny?=
 =?utf-8?B?dVpXVkdXT1NuNlhxTFd5c3E2dHhVKzBiV3NLWk1xZkZjZldCUDJRVmNicnJ2?=
 =?utf-8?B?VFQvQUJRbHNsOW9OU3hpc042ajByUTBOeEtENEk0Y01OVmZsRkVSZHpWYnFG?=
 =?utf-8?B?b2JDUDNFODQzaGJaRFlTcmhqcVVhdHVWZUg1OWJDK1d4UDcxTEJtUWFWMFE3?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c406ecf-6e2d-4388-18ed-08dcd15b6104
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 05:42:38.0591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sq2B3LSD5uCUB/07dKgu6DxXPjft9bntP7DR4e9FDTIGB2tLlJd/1lj5wHzCbgw5iRKpMs8LpglYSZ077rSqqnVo7NlZR/CHPT/+4y1f7y8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4655
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


On 9/9/2024 7:10 PM, Ville Syrjälä wrote:
> On Mon, Sep 09, 2024 at 11:10:16AM +0530, Nautiyal, Ankit K wrote:
>> On 9/6/2024 8:24 PM, Ville Syrjälä wrote:
>>> On Fri, Sep 06, 2024 at 05:46:11PM +0300, Ville Syrjälä wrote:
>>>> On Fri, Sep 06, 2024 at 06:27:54PM +0530, Ankit Nautiyal wrote:
>>>>> At the moment, the debugfs for joiner allows only to force enable/disable
>>>>> pipe joiner for 2 pipes. Modify it to force join 'n' number of pipes,
>>>>> where n is a valid pipe joiner configuration.
>>>>> This will help in case of ultra joiner where 4 pipes are joined.
>>>>>
>>>>> v2:
>>>>> -Fix commit message to state that only valid joiner config can be
>>>>> forced. (Suraj)
>>>>> -Rename the identifiers to have INTEL_BIG/NONE_JOINER_PIPES. (Suraj)
>>>>>
>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>> ---
>>>>>    .../drm/i915/display/intel_display_debugfs.c  | 71 ++++++++++++++++++-
>>>>>    .../drm/i915/display/intel_display_types.h    |  8 ++-
>>>>>    drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>>>>    3 files changed, 77 insertions(+), 4 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>> index 830b9eb60976..0ef573afd8a1 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>>> @@ -1504,6 +1504,73 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
>>>>>    }
>>>>>    DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
>>>>>    
>>>>> +static int i915_joiner_show(struct seq_file *m, void *data)
>>>>> +{
>>>>> +	struct intel_connector *connector = m->private;
>>>>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>>>> +	int ret;
>>>>> +
>>>>> +	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
>>>>> +	if (ret)
>>>>> +		return ret;
>>>> What does that lock do for us?
>>>>
>>>>> +
>>>>> +	seq_printf(m, "Force_joined_pipes: %d\n", connector->force_joined_pipes);
>>>> This should just be thae bare number. Adding other junk in there just
>>>> complicates matters if anyone has to parse this.
>>>>
>>>>> +
>>>>> +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
>>>>> +
>>>>> +	return ret;
>>>>> +}
>>>>> +
>>>>> +static ssize_t i915_joiner_write(struct file *file,
>>>>> +				 const char __user *ubuf,
>>>>> +				 size_t len, loff_t *offp)
>>>>> +{
>>>>> +	struct seq_file *m = file->private_data;
>>>>> +	struct intel_connector *connector = m->private;
>>>>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>>>> +	int force_join_pipes = 0;
>>>>> +	int ret;
>>>>> +
>>>>> +	if (len == 0)
>>>>> +		return 0;
>>>>> +
>>>>> +	drm_dbg(&i915->drm,
>>>>> +		"Copied %zu bytes from user to force joiner\n", len);
>>>> Leftover debug junk.
>>>>
>>>>> +
>>>>> +	ret = kstrtoint_from_user(ubuf, len, 0, &force_join_pipes);
>>>>> +	if (ret < 0)
>>>>> +		return ret;
>>>>> +
>>>>> +	drm_dbg(&i915->drm, "Got %d for force joining pipes\n", force_join_pipes);
>>>> More.
>>>>
>>>>> +
>>>>> +	if (force_join_pipes < INTEL_NONE_JOINER_PIPES ||
>>>>> +	    force_join_pipes >= INTEL_INVALID_JOINER_PIPES) {
>>>>> +		drm_dbg(&i915->drm, "Ignoring Invalid num of pipes %d for force joining\n",
>>>>> +			force_join_pipes);
>>>>> +		connector->force_joined_pipes = INTEL_NONE_JOINER_PIPES;
>>>>> +	} else {
>>>>> +		connector->force_joined_pipes = force_join_pipes;
>>>>> +	}
>>>> I think just something like
>>>> switch (num_pipes) {
>>>> case 0: /* or should 1 be the default? */
>>> I suppose both 0 and 1 should be accepted. 0==not forced, 1==forced to
>>> exactly one pipe (ie. no joiner despite what the automagic logic
>>> is saying).
>> I understand 0 as not forced. I didnt get the meaning of forcing to one
>> pipe.
>>
>> Does this mean, disable joiner? (Perhaps do not use joiner even for the
>> cases where driver thinks joiner is required)
>>
>> How should we handle the case in driver, where it is 1?
> Whatever code that determines how many pipes will should:
> 1) if the override is non-zero just use it
> 2) otherwise determine the number by using whatever
>     logic is appropriate


Alright, If I get correctly the driver logic will be something like:

int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
                                   struct intel_connector *connector,
                                   int hdisplay, int clock)
{
         int num_joined_pipes = 0;

         switch (connector->force_joined_pipes) {
         case 1:
                 num_joined_pipes = connector->force_joined_pipes;
                 break;
         case 2:
                 if (intel_dp_has_joiner(intel_dp))
                         num_joined_pipes = connector->force_joined_pipes;
                 break;
         default:
                 MISSING_CASE(connector->force_joined_pipes);
                 fallthrough;
         case 0:
                 if (intel_dp_has_joiner(intel_dp) &&
                     intel_dp_needs_bigjoiner(intel_dp, connector, 
hdisplay, clock))
                         num_joined_pipes = 2;
         }

         return num_joined_pipes;
}

With a value of 1 we are kind of forcing to not use joiner.

Currently for testing sent this to trybot: 
https://patchwork.freedesktop.org/patch/613627/?series=138444&rev=1

Regards,

Ankit

>
>>
>> Regards,
>>
>> Ankit
>>
>>>> case 2:
>>>> case 4:
>>>> 	break;
>>>> default:
>>>> 	bad;
>>>> }
>>>>
>>>> should do for validation.
>>>>
