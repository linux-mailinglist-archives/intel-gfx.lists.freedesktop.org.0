Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D03C3408C
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 07:15:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F9810E367;
	Wed,  5 Nov 2025 06:15:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ivQ6fi2Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E8D10E27F;
 Wed,  5 Nov 2025 06:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762323339; x=1793859339;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dsw4uuJooH+YfaXjh02c6A6Fy5BXiqJ1GZpMTjgvHA0=;
 b=ivQ6fi2YxxD49Bp03Kw518vEF09Lgx7Umld7mw46OW3zvyv4dQ47PFcd
 hjVs/hVsm1O2VyKUiuFqFm0ZlJ0ZkCTjMpTrcT4JOsUR5UB+sDvEkSBQ9
 xAQmsNXo8RXDuRHV10mynIeGyJq4g6Igwaw/OGRBQCua9gq/harO7sIuL
 GjaScPF8Nv9z16vJ/ecduwnU81aPP154iwKRqYognliyo8ERkQRCQDJdL
 aELdWT141iDLfASNdu6hJE1Pe9cYuPJGXHxN9UoVGXgTNxX9w89TkoJ24
 bWXjYVBvn5yPuv40ivPHqZdjCGc2kttcTe3TeEkCiDc/07BDUk5lWAB36 g==;
X-CSE-ConnectionGUID: qxp5e8C5T42EAMHpkHmz0A==
X-CSE-MsgGUID: E5yos4nMRyKSv4Zkiz6nUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="89892748"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="89892748"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 22:15:39 -0800
X-CSE-ConnectionGUID: w5kOZNbdTCOeZZSIwktSGQ==
X-CSE-MsgGUID: JSFVCzdGT1CxzxT74Y8Qqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="224611716"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 22:15:38 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 22:15:38 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 22:15:38 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.19) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 22:15:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CJvsFDFk34cEd38YcXaQMYaCgfLp1lPww5InK0vH9fmzQkKXOyE1jYS0J2FU5/EvwjYCHEOYvQGa+hkTatLjyCWt3ExstS/fl6/FHetP3jLkX8qnNiRKgsDimcYmYx9wa5wsvZf5WH1PIxpcYBzJS2V49f+uLVv6OtS+Bh9/0fNgUfqPslkpfYyloTXhCsoOtZ5NGaak6MHQLtekzXCZbA/6qxb6Yt4fgMQiAuKd0g8gfVIZO8kL1/0IQTkXOAG9ilSp7VwES0IhsWopbTxW+vbVrP9UawzwfRUmOkYBV1RWmbcY7D04Pwf0stvc3omeF8352PKQTj+nEHaVSNcqrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jzray7wcPVctRCiEY2+MB8g/Xx9xsHqXBcyvAthztoU=;
 b=Kloy2FviPv4pptb8y3oVaH8tWLUDEtOJWHXUw6Q/ryv+KqDCmPqC9qJrpbOLdAuvbn+dIpPBBjNB4AzWf71OmwFZAhb4jOQvrmIlPsT6czJN5rwbgtwB/vb1qX2LVpVrtn9CqKaE71kk7XynKGWNPAaJgvigSWy1KNN2s0R09ZoBW5m0La2/zy7CMGtD8V7yT4QeXp3YmzrlCasU5BbjmoQ/FtQO0v/Tzx7xts3WV9UzFGbrsLZXhe/xr18KkS0fB1FMunoiwuxGSmVkKwdlts/I+Zg7pYiPguTtRZcwtR6BwRp2msg5nk02RjSoC1EnQK5sayxc8IeV/FXDvWqzLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5147.namprd11.prod.outlook.com (2603:10b6:806:118::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Wed, 5 Nov
 2025 06:15:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 06:15:35 +0000
Message-ID: <cca2cafb-321d-4eb1-89cf-e8fa3077baf2@intel.com>
Date: Wed, 5 Nov 2025 11:45:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 09/22] drm/i915/vrr: Increment DC balance flip count on
 every flip
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0024.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5147:EE_
X-MS-Office365-Filtering-Correlation-Id: 19ab5555-6b35-46fb-7936-08de1c32bb17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U0FtUk9MUzlXQ3dybFI4TnYxNzBGRmFWR2pHMmJycy9TamxiRy9lUVFtQ1F6?=
 =?utf-8?B?SUg4cTZyOGl1TGczM0cydlhqQ1RGeUpNcXg3WlMxbWNJMXhDTTFOWUk4RWNO?=
 =?utf-8?B?Q3lxS1JSV3lPSG5xRHczdVVnV2RyQ3BQQzhyU2E2ODJaSUtjbDl0TFB3cEll?=
 =?utf-8?B?VWJsT3g0bzVJYkc5QVZoekFQRGNwT3ZFeDY3T2ZNU0ptZ09oWGQzMDRyVkp2?=
 =?utf-8?B?N2VUeHBNbmFWSWNsMHZySGlEZGhZSU4vckx1STlkczRKaVhySlpwSjliak1o?=
 =?utf-8?B?dzRYRkNhQVJPOFZmU1hXSkc2QmxrMEdnYXVCNVR5dlJrZHBCQUtybS94cGRQ?=
 =?utf-8?B?eE1ETGNJY0VobityeHJ2UzdqNlRueHZsaitaUWF6WWd5RFpCV0dYeHRYVmM0?=
 =?utf-8?B?ZWJVYmdQU05memRIMFdPQ0RJVzlRWTlnMDNMQXhlSDI4V3ZiUnJRL0ZhMFgr?=
 =?utf-8?B?dmhTODE3ODhWcjZGVTFGQVVzR3hvV1VGQXNKWnVkVTdOQlQvOHIrSjEvSncy?=
 =?utf-8?B?cDdhZnZVLzJpbzhBNlp0NEtKNWo1R0JoZ0ludFRiSGlIT3lXSmplSzJLdWRM?=
 =?utf-8?B?aSt2SzRsdVlyNGhmelcrUVFBMitJbWJSZlJJMVRFZkhoNDZsWHdYU094L2RG?=
 =?utf-8?B?UDBpbUZDdDJKUFNUMFhQVTBIMk1ZZ3IzVHRGWVFSWUx1WFczekhsZzltRFhR?=
 =?utf-8?B?SWlIMXlVbDkvcytESHVJQlpndlBDWVBtZW5rU2dQeVEvQlhpa29FWllpZVhv?=
 =?utf-8?B?V1d5MzlieVZmQ2ZaVHU1OFlValJuZEsrZHVkdEZidDFrbVEvVzQ0MnM2S0FT?=
 =?utf-8?B?UWhnaFJ6bzFnT29lSDcyaFNxUkF5ZVZWMTB0STRkZWVheHRwVGkwRHhGMlp1?=
 =?utf-8?B?bnRnZTFMWkN0VlozZW5kdFBWVWVkVy9Xb1NNZmlyZDJHWFh4eE5SY25uMzRI?=
 =?utf-8?B?bm1Dc1pGNEdXTW5neEZIRFZ2YkZCRHRzRkdkbXhIakorZnpWYjQxbXpUSWQ1?=
 =?utf-8?B?VlpHVWt5Lys5VEZyOUJERjdKOHgwYlZxOVNkcERJMm5COVFsbGJGS2RUVU1s?=
 =?utf-8?B?blJrRlRtVFFRb0I2L3JxVHM4RE5FZmZzODdiZDJIQzdrcVRleStxbkU1MS9z?=
 =?utf-8?B?V0FrT0hNdFpKSnVER2YrcWkxK254SHdwVHlsV3JZT2pYazZ5QUFFK0g1SCtC?=
 =?utf-8?B?SGF0VStZSTRNNDRmRlpFdEkrM25MbnBkYmxxdG9xaE50S1NZb1lQWVBEd3dU?=
 =?utf-8?B?cEpCSDQ3dkJlVDRteUZkTmxENTZhMUdLdVFpWGlpMHc5TGFaNWU2RFlJYjRU?=
 =?utf-8?B?WlZ0NnNjR3lhWnphM3YrZXJwcHJ5SnRObVNZQ2JzWkxkMWo5TE5TSzdtSEk1?=
 =?utf-8?B?SnFGVm9GOHJaWUprTFBtWGhlVUIxaVFCZDEwZmJjTHRaTVFpVnBGaU5DaFBx?=
 =?utf-8?B?Q3YxMms3QTAzdXlNS05EOWgzclpQVk1neEM3THBQR1VCb3ZsbGhIU2hsUVUw?=
 =?utf-8?B?Qk9heCtPSmxWZnl6azNPb0Z1QmpSMTBqeW05V243enBmdDBIektEVHF2dVFz?=
 =?utf-8?B?T2FGeFc4RFNzdlgyWGovb3o1YmxvdFlnbWZPTlNsT05FRWQ3dDhUdnB6S2o1?=
 =?utf-8?B?YlFTcGdTUnNXakMxRG5CeTJvUjB6YTBmKzJFb1l1dUl3ZWlxbXFuMmNyMU9F?=
 =?utf-8?B?TmV4WTQ2YnU2M2tqSTcwRGl5Z1NTaDdSMklQeHVFUjF6bjFOcTNlcmRIa29J?=
 =?utf-8?B?bHkveDhXdDVRcWtoS01WNnUwdVlRU281UVl1a1lOT1hOZWlkRFd5M2tTQTJj?=
 =?utf-8?B?RC9JZ0VOczlDaXpXTDVMKy8vYkNjTFNIbVpmSmExSmd4dWJuaHFvVXF1TTFl?=
 =?utf-8?B?dTZiVjZyaGgyV05kQ3NUdkZUN1RWRG1QRllYVHpLMTJJZktLb3JXZUtVR3Fm?=
 =?utf-8?Q?5l46Al7OaA88HSU+M6JL0GdBxzlCmMhe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3h1b3g0UGo0ZzAwOTk3bHlzV0c2dTVIWmJWSE9hWDdnMnV2Z05YZ2FmQTN2?=
 =?utf-8?B?NGpRVk1vQWs4d3djaEt4cUtBMkhuVXdiMzlBSWJEMjA2UjQ5dVE3ejVScFFH?=
 =?utf-8?B?cDhUc2x1UWVtNnZBNDRhU082dHI1TW1zVmtDYmk4ZHUxMHU2d2MrY052YzRy?=
 =?utf-8?B?alQ0bmVFODlJWXpVN3FYYUgxMVVYR2UzTE8zbnJ2aWRpS1lLK3dBQkN0dWJD?=
 =?utf-8?B?TVhGYXBPSFRZMFRiL01UVTU0Z2lGNnNGSUk3OHJpOWZUb3VTSlAwc0pQNGxY?=
 =?utf-8?B?VjRCUjZqMnZHenpsMEFocHI2bTZxZ3lHdTJWMnBkMXhiRXcvT3p3SjIrbFdx?=
 =?utf-8?B?MHdGLzl2L2F4MzNvYjUvbmJnOEIwQ2JSbW5MdjNsVDJLVWc3RzlyOERaOXVF?=
 =?utf-8?B?Rk5DUkRQV2lIRmwway80UWQ2Z041L1U1Tm1BRE8zaldrQmtWdlVnUHZrY2FR?=
 =?utf-8?B?bnJZNldsMHB4cEh2R25MRHB4ekZ4TDBpdTgvMjFoNzNCc0oxMXEreGE3Y3lH?=
 =?utf-8?B?dTJDdGozaVROdkNGaitOUG9GbTVHaDFqMWxrNXI1OWZsMGpCNjdDSVIzL2Vi?=
 =?utf-8?B?U1orbTlwREZYOVZudmIvRlQrYmo2dVh5ZkZrYlBleDJtazFGTWxRdDJVT3dP?=
 =?utf-8?B?ZlgyY0tvaGpEbmswRUkwT3I5T01mb3VJclU3SEwrS3lsU2dEaDdnOGYyMVlr?=
 =?utf-8?B?enZKZldybWYxODY2YVdJK2JWaHZKMUV4TFpiRmk4djhycGxVZmhXVGVFTVBC?=
 =?utf-8?B?K3EvQU13bFZkMkRyaCtBL2NYVW0vaERLWFlZSHRiWjFnQVRzYkhWZ1RTMkIr?=
 =?utf-8?B?R1RQTFdOODdhcG9IL2xvRGovNUZSYW9rb2tRdW5DNmFnaU83cjlWWmpIZGU1?=
 =?utf-8?B?ZVVNZ001T0wvWVBEWEFTSm9mUDRPNnNSRUtlY0NhQ29vZmRmdmJjSVYwK3dC?=
 =?utf-8?B?NVlmb2J4N1pMSVM5SDlVcWJBdUZxOGw3VTFkV3F0anBsMGI1Z05SeVNwR3o4?=
 =?utf-8?B?VTR0YkpGVGJZbzBZVVNjcFVZNStTT2ZZVjdCanRmY2dLc3JrOVd5WUhPZHRO?=
 =?utf-8?B?L0JqbTdCWlNTaEIxREd2SlFqNUJUSVJEK0w1eVlzb2txS3oxWU0xNWRKSFRu?=
 =?utf-8?B?cXhPbk9mOVJxQ0h2UkdmVTg1bzZkdTBITmF2c3EvT0hjU0gwTzUzN25rQkdG?=
 =?utf-8?B?RWhlWkFhUndWWXJzcWJFOGdoR3JXU1hzZ3pLZGdidHZyK0hRKzlYOTVUYi9r?=
 =?utf-8?B?UUViR0NBYTRKb3oydmpkZkFKNUFIYXZWNkdsbEZlcDFZbE1TRWhkRmZxVFhG?=
 =?utf-8?B?Z2pEbXhsUEQ3aXp4dXlNbnRqMkFodUpsRi82R1hzQXRySGx4QXJxWXNRMU9G?=
 =?utf-8?B?ZzQ4aHhqUnczYlh6U1VQUUtGaGg5NTF2VWJxbnZ2YmllbGRTdEtvVHFaOU0w?=
 =?utf-8?B?RThjNUNucTBLeG92YXFxSXFiY09ObnV5b3RtQTFXdm16ajIxTEJsR3hUODdL?=
 =?utf-8?B?YmNNaE9BdzFqUHJnNW1vVTlXRHZMS2grMlhXWWpyWlVsVkZNeWkvUmRibHdU?=
 =?utf-8?B?SVVXUVFwTjVVb29GSTN0bXhlcUcrTVRCQmw5bWtmb1I2ZC8vbk9yRDBkTE4z?=
 =?utf-8?B?Q1BUTnpVdzlSSk1ONU1mRVB3UE5HN2sybndjbTVXVDVuUHBIQ0lBelhjemZt?=
 =?utf-8?B?SGs3ZEFhZXJRdWlZRUZsVjVHVVgzdllDTnVQMzN1c1hPMDJNUFdNUzN1ZkQw?=
 =?utf-8?B?WHBXLzVQUGNhSDVNS0ZlTExpZFVMeE5LNU9BVlJ3aU5VTzJYTmV0NCtJWkdY?=
 =?utf-8?B?NzlHM2RNVU5VYWFldkR1L3pNNU1XeWgrVEZvZUdUNStRVUh0R3dvYVlTUUdO?=
 =?utf-8?B?bnJtR3BnclBDM1hiMWlJbTNXQ0o4cExjMUs2WlBZek9pZlhvY1VhVTFRcHNw?=
 =?utf-8?B?dVY0bzJJZVRmMzdjQnc0dHpJVEJWdlFiaTZvY0VORWYya2hLTUJyd3dzdEZk?=
 =?utf-8?B?bFFZR1RjczV3VEFLa0JyRXpRbEpERU1qRFZtQVNMa0FnL0Z3UHBBaGtSaGVp?=
 =?utf-8?B?OWRkLzVkN2lheFM2eW51aUlJM2FIRHJqSDdpOTFKbjJLY1dtTTJTeG1ERHVh?=
 =?utf-8?B?ZDBCallteXlNTmNkckJMdVc4dURDZkZxQ3hhOXdXMUZROE1qcm1MbTNveTZ4?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19ab5555-6b35-46fb-7936-08de1c32bb17
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 06:15:35.0016 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GtXh/izGtdxKIS7vxDIM6XPJ+liE8EPGgtmhZYMemlblPBhF4uO2pbWqtg4SUIaUKr5GO6rqhobM1vujJ6Jl7ffJiKAR+bghpgqUQO2upF4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5147
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> Increment DC Balance Flip count before every send push to indicate
> DMC firmware about new flip occurrence. This is tracked separately
> from legacy FLIP_COUNT register.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c   |  1 +
>   drivers/gpu/drm/i915/display/intel_display.c |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 15 +++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +++
>   4 files changed, 20 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 1e97020e7304..47a732ae2448 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -2012,6 +2012,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>   	display->funcs.color->load_luts(crtc_state);
>   
>   	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
> +		intel_vrr_dcb_increment_flip_count(crtc_state, crtc);
>   		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
>   		intel_dsb_wait_for_delayed_vblank(state, crtc_state->dsb_color);
>   		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a00625f882e8..1a3e7a6e4ab7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7366,6 +7366,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
>   		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
>   
> +		intel_vrr_dcb_increment_flip_count(new_crtc_state, crtc);
>   		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>   		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
>   		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 2948abc90c69..87bd722aa32d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -14,6 +14,7 @@
>   #include "intel_psr.h"
>   #include "intel_vrr.h"
>   #include "intel_vrr_regs.h"
> +#include "intel_dmc_regs.h"


This is already added in patch#5, so drop this.


Regards,

Ankit

>   #include "skl_prefill.h"
>   #include "skl_watermark.h"
>   
> @@ -612,6 +613,20 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>   }
>   
> +void
> +intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
> +				   struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe),
> +		       ++crtc->dc_balance.flip_count);
> +}
> +
>   void intel_vrr_send_push(struct intel_dsb *dsb,
>   			 const struct intel_crtc_state *crtc_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 66fb9ad846f2..eebc7be309db 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -14,6 +14,7 @@ struct intel_connector;
>   struct intel_crtc_state;
>   struct intel_dsb;
>   struct intel_display;
> +struct intel_crtc;
>   
>   bool intel_vrr_is_capable(struct intel_connector *connector);
>   bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
> @@ -39,6 +40,8 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
> +					struct intel_crtc *crtc);
>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>   int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
