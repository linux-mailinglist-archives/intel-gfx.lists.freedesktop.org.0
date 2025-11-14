Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F9EC5D336
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 14:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 056BC10EA64;
	Fri, 14 Nov 2025 13:00:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DfzWM4zs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB8D10EA64;
 Fri, 14 Nov 2025 13:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763125223; x=1794661223;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=2jCtK+eqed5RWD6iRuWBmo0uQE1m9k+z4YbsDxZTmLc=;
 b=DfzWM4zsrmt/GzeZVcAR4joqp9Nmcu+os30+uk3gJme6ym5y8VRTv0tm
 jSqTfqfPgFwZw00WLztnuDBS/KYJewJwKhC6rYPPnFu+WFPZhQ3dn9Bdt
 uumK6qidiPI+WqtoRtzAPHu9DTk2i3y98BNH69ROPQdF6tSQjreRWFjkc
 +OI2dMsJ8R9pcXRphmlq+Gly3nMCv7WkohVMZPeJBnj+oAz4bkJxSCBui
 Yu+nWSgxgCW1SRUP3jb0zouyx/cxb35p9+jB6BcewT57si5abpqaC6Cd2
 7GJHZqqzIwNChTY1LZvk2iX1xEirdGAiuqoJ/c976yXI/R9HfZs4uOz+i Q==;
X-CSE-ConnectionGUID: U1Bm7rZxQyKDUeKN72nSrg==
X-CSE-MsgGUID: O+y6uV06Ti+/jftBbHVcbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="76564328"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="76564328"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 05:00:23 -0800
X-CSE-ConnectionGUID: 132aUT4HQyuI5mQxDMa8lQ==
X-CSE-MsgGUID: MFjhG+MPSdiGlSZVIN/sUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="190550303"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 05:00:23 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 05:00:22 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 14 Nov 2025 05:00:22 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.26) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 14 Nov 2025 05:00:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vxFo4KFHv2/XDTmomH0tv0KclpWw5vlZICysXuh7Lfek6yWLIfCDaVTqwzkttFvMRwflR5GSJHymbeHxzhA3Ha+8w9fXKo2hEfWzzTVOn84NgefTcT35EZwPSZAzsECx+Ey7N34H6E+EQzlFIHxXsKzn/a8rsUbHpOq1np+rwEiT8kc7KNWNyXYH59EwtZUv/Q7FQg+/Dyiasx0Z4GZhNM1GrVFykrjM/eXZnR6a9ffI1UYZ4WAPYpyGaBVXCOZ2hf0jOcUFJ4KZTtmo5PaDzHUTVX2/24Mxtfy5AsANIv2MgPrvXZALRPuyRFkkYLlAexVDw+crHIXHKKWzb8zWIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UTHqEg7VaPJpcsH3A1XDPBvWSLtpDKO3k4OviPuHVK0=;
 b=nFwI9DeQDK3zHUY9Khal6aveEwjQNbInPymAYdU7sPheUbki2R3dzE3qubMf3+Uru1HZUys5Iv2BLTmaY20l9+zV+pv0SAjXoPQeYM42CDrc85cq/tkuwaJF46fGyAisvkvk/nuhq5v+/7LA9VWGqyN1vsLlJdRPC/k3w6ww5NkG9ss6sfw8VGGYe6tiYq76rnW/dgxDSzPT8G/oiX+KbWFEGPUkvDlY7hTLrWoEm9R8AF3NAaem2DQf0SRp7y/L0yJZpdMqfSuM4lYVeZvCckaKupEkt+ooZZDb32dmMwZDZ+QtDQBksFLgdEZNu4LwcWql4bezNzFthY4Q1gjW2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB8202.namprd11.prod.outlook.com (2603:10b6:8:18b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.18; Fri, 14 Nov
 2025 13:00:18 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9320.018; Fri, 14 Nov 2025
 13:00:18 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251111124606.402380-1-vinod.govindapillai@intel.com>
References: <20251111124606.402380-1-vinod.govindapillai@intel.com>
Subject: Re: [PATCH v2] drm/i915/fbc: Apply wa_15018326506
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <vinod.govindapillai@intel.com>, <uma.shankar@intel.com>,
 <kunal1.joshi@intel.com>, <jani.nikula@intel.com>,
 <lucas.demarchi@intel.com>, <matthew.d.roper@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 14 Nov 2025 09:59:51 -0300
Message-ID: <176312519123.3698.9146184315752956049@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR02CA0017.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB8202:EE_
X-MS-Office365-Filtering-Correlation-Id: a8f5c73d-1dca-4db1-a72e-08de237dc333
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZGo5R3BMWWpFWE5LNC9NaEJYSW5sWmJ1L2doRTBPcitlcTJOMEsrWm1lNVAz?=
 =?utf-8?B?ak5TT1FTZ0FVdFpuSkJXNEZiRWU1VkdXcGxxSEJ2VENqTVR5di9YUnhDdnUw?=
 =?utf-8?B?Y1B0SGovUHE3K0Y4RmtNN2xaYkwzUjVlOGp5MjhlNDA3MTl6Y3J2KzFJd1V1?=
 =?utf-8?B?RTNNZ2VxUWJRQlJvZEI5Z0M5WC8vOVA5ZForaDluK2FtMWpOajMwVE5pVVRy?=
 =?utf-8?B?SUNmYkV4U25DUndZMXdKUlZRUnVsU3VNdWFWQ0ZoekQvaWkxWkhIa1ppR0dz?=
 =?utf-8?B?VEx0SkNnVUVRRHhHTzhjQjJRMG0yT2M2elV6dkVkR2o1WXc0V3BicUZYdlpF?=
 =?utf-8?B?c2tPQk5pTHdyemRuRnY0Zkp1WFJrdkhrZlNpakFXL2V1UHlsLzZuMnI2Nmo1?=
 =?utf-8?B?dTdzWXRWL3pNQi84M096eFNmcFR1SnBXajVhSVl4dUx4QTBaY09zajd1RW1X?=
 =?utf-8?B?L1RmWHVMeWllRzdDc2ppbjl1ZVROOEpaTXplN1E1eWtOZXdUYnFpMENIZlN0?=
 =?utf-8?B?SnJrbTlNSktZZ1ovM2hxWFhrblMxQzVhQlZ4U1d1Mmtxb1hsQVJZSThUeUFT?=
 =?utf-8?B?VVZLcWZGQTRzeUYwWEcvcGlYM1JiSHd5N3Q1V3diS0xIZWh3eFU3T09NN0pP?=
 =?utf-8?B?blQxek96RlNVS3N3WlhZUzh6U09kYjY1L2Vzd2ZqdUVPc1BlL3F0c2pqWlBo?=
 =?utf-8?B?ekxUb3MwMUx6TFgyNk5ZV1NKOFJMbXdWMUkyTUFQUFhDOHlDRHphVkRidXBV?=
 =?utf-8?B?STl6azNuMXZBSk5OVFlBT21CWElYRVZWQlRRaWxDUlAzTGQ4RHovQkdnSjZq?=
 =?utf-8?B?OWJ6ME00eWtiTExNN25EZEhOWnBhbzBERDQvTXZ4dkFxcDBiaFdORXhUdU80?=
 =?utf-8?B?NDBBSXdhbXJTWDN2OVVBSWpRQUxHT1M1MXduTDE4dmZVcUFPaUxVRllkM1Zm?=
 =?utf-8?B?NXNudDBuVGRETHRORGl4TUdjY0FXVTNuL2ZYQzlIa2czcTFucWJhbFJka0wz?=
 =?utf-8?B?ejMzVTM3L3pqMXk5M0RFYzBUdzl0aEJDcG84M1JOSjVQZzlKRk81aWJFNVBL?=
 =?utf-8?B?Tmh0cEVxVXRJVWltTXVNMlNHalVVMVpINnpjMnVMS0dhS3llNnl6U3hMSjhR?=
 =?utf-8?B?eEpES1Q1WXg4ZzZWaHEyRGtrSWt3SDltWmxCbCt1ME82Q3gxKzNhUEdyVlll?=
 =?utf-8?B?QVk4aXhUMkNGZE5Rb3d0RW4xWEFPWVFEYU5yQ0ZXTWV0NWNMYytHcTZGMXcy?=
 =?utf-8?B?aTFUSUJXLytCSzAxNHJvb3E2b1I5SGVKaWhUODFqbDFvSkF3b096b3BHWHll?=
 =?utf-8?B?aWVzbTNjLzJYcnNDSlR0Mk9hZmFFVEI2M2hCZzJ2U1R0SFQzelZIaUZwaUw5?=
 =?utf-8?B?QTdMNHcvRXlBYkFiZTJLWElOZ2ZIUW9uaW12Tll6eTB4ZTdaekpROEEzY1lt?=
 =?utf-8?B?MHJXRXphNzVaUk9SWGx0OC82OWN3Q1NtbUtJNWhkWlJkSnY4ZHQwSWJ4dE94?=
 =?utf-8?B?M1JrOWRyZ3JEVkFRWXZkQU9KZzJPVm5hZUJPb2FtQ1Zsb29wWXRQWUkxMTBO?=
 =?utf-8?B?elNleWIxeURRdWxsT2hXdTQ1OVAxZFVhc1Z3UCsyb1VCNkFRMTdCVGx0a2JT?=
 =?utf-8?B?bCszMWFNbmtXTFlEd1VRZFdFQk5OSjh3cFFVUGxRTXJKTU1tbVJOMTIzdmhF?=
 =?utf-8?B?VEUyNlpreUZVL2N3b1ovcktYRGpWZ0NIUmxFdHh0WGo2TmZPNVdwR2dJcVdL?=
 =?utf-8?B?QWIwWW5BNGUvWVYrMlA0SlF6a0s5NTJmb3dhZDJiRXQxcktpSWNVYmIrYVgy?=
 =?utf-8?B?YUFsNDd5dHNsL1hWbUFzcjQrQTVXMHBlNy9DWHpaN29xZlBRdjJ5VnBaMmFu?=
 =?utf-8?B?VDBWS0xTM3hHcGRzU0FEN2dIeXpyMmFYVFJvRHNUYUVyQlBQVEMyK013RUc3?=
 =?utf-8?Q?RfZt9w9prMdMSceHn0SPwGyX1yFqfCoa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eU1pQWNGakREVlVjbC9NMEVHUWlCRUZaUXR1eUljaHBhdDNHOFQ0N2NWTGFW?=
 =?utf-8?B?SU9HVHpYWnhmSlc1YlBzTXdWKzZodStzMGJ6TEtGcEpBRDk0cmlPOGlGVkNB?=
 =?utf-8?B?c0Z4UUJLQUdGbUF1YW9YVm1UaS9xZHF2ekx4NHNHdHRPeU5FMm90cVNYdlFz?=
 =?utf-8?B?UzdwMFE5MFo5UmhPWGZESEFVcTBTUHNsZjRza1gwRzRKMGVsMFdCYXlWZHB0?=
 =?utf-8?B?QkVzOU56V25tQStNSFkrUnQvK0EyR2VraFZqNTg1UWdGalJ0Nm56blJyYWxQ?=
 =?utf-8?B?VXVtRVZpUXFLMkNwTlpocDdSUHZEQzBwdENXZWlMcWszYjhpdXhOancxdTJB?=
 =?utf-8?B?NUJYaXF0bGNsWTRpNVlNdXdaTG9RQUV2M0xSL2xrRlQxNmxSeUZBRURyS2dJ?=
 =?utf-8?B?ZDB5M2xnY2xqQjkxdFZGS3o2V2RGOUFMVjhtNlB5cjlWa2h2TEdZYzcwMHpY?=
 =?utf-8?B?QlhYMUdIR3VTOXAvU1htVXFqcmZZbnJ4TTJlUE1qRmx6b0RDR0JBd0hjcFRH?=
 =?utf-8?B?K0RTbE5sZzVHc0pRa3R1eWpWS1VzSmRPbmxWRW9zb2M4a2ZmUGo1YzZoTGZi?=
 =?utf-8?B?dTBnRVFiNnZOZ0xtQzJrSGZmRjFGM1Q1ayt1NHhvd0RsRGMxckRLSlZsQmhr?=
 =?utf-8?B?K09qcklwamdIRWRoS3d4dUxqbUcwQXU1YXV1MktVdHg3QTZXWFBFU1JoMTRj?=
 =?utf-8?B?TCtSREg3QUdadTVieFZkVkttaVg2S3ZQZzJQWXpaQUJITFNOd3FURlBNOWFt?=
 =?utf-8?B?TmRpQWRHSnhON2EzK1dENE44MHdxU2NmR1hiZlBGcjI3cUVjTXdmZk8yZ0Uw?=
 =?utf-8?B?eDZNQy8wT1JLbDVhWTk0aFVMYWo2TWRjWmtWVnQ4UWt0WHEreDBIQSt5MEtD?=
 =?utf-8?B?YXlMK20rckg0T3hIVlZXUVd6a3ZnM0hGYmNyWEszYjhuUVExeFcvWG03OHRJ?=
 =?utf-8?B?UEkrTklhYVdEMWZ3SzdsZHc0Qm52R3NpQ0JmZzBJaWdoMG9hUWtJc1YveWRS?=
 =?utf-8?B?TmtQd05POEliYkIwQndDUnZGQkNLdVNicmpLQWRzWVgzUDRVUkszYWtLUzFV?=
 =?utf-8?B?R2NhUzBkS1Z4dUppWmFOTkgwNTVnS1htS29VSm4zSmlhS0htRDRXSDVXbndT?=
 =?utf-8?B?NFlwS0hvWXdVb3J4eldNcUFENjRIby9HZ0tZUVJWdG1kL2VUaC8zUVlxdnAv?=
 =?utf-8?B?K3REcjhoZTdTSDllekptRFBuMTBTdlQzWFFNcEJyb3dBczhkeDRmaFhka28z?=
 =?utf-8?B?V2E3ZW5vckptMUZ6OE9hNDdUeDVTQ2Q0dlJhL09acW43Tk9kcTc4UkFJQXZR?=
 =?utf-8?B?WTdhY25ya284a1M4MkJoTkhhdmVUcEY2MUlyczcxdzFwc2doMkZPSFNucUxW?=
 =?utf-8?B?b215bEtTdFNJWDN6QVJSOGpPWlloUUVHOXBKRUFzS2R6Snc0MThERmlEeGVo?=
 =?utf-8?B?aFp5a2ZCYU54UDhYRXY1aHp5LzVURW1FQ3JGa3prSEQwZm1kVFJrNG1JNW9k?=
 =?utf-8?B?Q2syZnBxQkVOS1NWbE1UcDUyclh2N2hJV1pnRC9CTGZsK0RjVVhTdlBHZzc0?=
 =?utf-8?B?N2dKYWFJR3E2Vm9MK3NUVGJ1cC9aVW1JU0VvRkV0Q0hOTGR5dU9BcjB4SG5W?=
 =?utf-8?B?VjJFODVNbkNubEQxZmdUa01nZ0s1YVBhRGNCT3E1Z3RITDBtT2JhZGtvRDhV?=
 =?utf-8?B?U2dLRE1YVE5LSkRzWkhPT3NjQ1lrRThNbm1pbzlMY0I1QkZhQ3lHZGpPOGda?=
 =?utf-8?B?cU5CVi96SXoxdmVOeHljZUZBS3VqaElzWmIzQzVpS0c5NktxM0dsMVVWcTlB?=
 =?utf-8?B?VUpKMVMzWFNnL05pQjloTEhia3dLNHFYNzZZTHM1RmhSblVEZUtRTlQxd2hN?=
 =?utf-8?B?VmJtTng3ZHhpYm1yaERmUFdDZE1EcEZmVjI4ZzdjSFBQSy9ZK08zaWhoampj?=
 =?utf-8?B?eXQyMXRYNU10V2wxUCsrR3FKcmdIRTh2bG9ZWElGaVREVHhmSjZ2VDlDeVZD?=
 =?utf-8?B?WnRsdEt1Wi9tMUhmZHN4VDNHcDdzZ3ppVUJaZHNvQzMvbG1kZ3pUTGNHaFZH?=
 =?utf-8?B?NFlMRCtaSU5rWktyMENsRldSTU9nQ3hWY1FQT3ZJS2xiWXBnM1Y3MmdUaVp1?=
 =?utf-8?B?WGJDbnJDVjY1NDgvaU9EbkU5aXVrejJKVHlRZU5zVjU0Qmx0WDlUelRvZ1Jx?=
 =?utf-8?B?eFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8f5c73d-1dca-4db1-a72e-08de237dc333
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 13:00:18.7313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4EZR/y4ufXNJp4wM9Kee3Xxb7BQzP8xSi52cUA9TzEFvqFkSsLYtriZwCKwNByyOyTCHv4+8fUIK8QaQT/mPcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8202
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

Quoting Vinod Govindapillai (2025-11-11 09:46:06-03:00)
>Disable FBC in bmg as per the wa recommendation.
>
>v2: use the bmg platform instead of a specific stepping
>
>Bspec: 74212
>Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_wa.c |  2 ++
> drivers/gpu/drm/i915/display/intel_display_wa.h |  1 +
> drivers/gpu/drm/i915/display/intel_fbc.c        | 10 ++++++++++
> 3 files changed, 13 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu=
/drm/i915/display/intel_display_wa.c
>index e38e5e87877c..b2e71fa61c0a 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>@@ -70,6 +70,8 @@ bool __intel_display_wa(struct intel_display *display, e=
num intel_display_wa wa,
>                 return DISPLAY_VER(display) =3D=3D 13;
>         case INTEL_DISPLAY_WA_22014263786:
>                 return IS_DISPLAY_VERx100(display, 1100, 1400);
>+        case INTEL_DISPLAY_WA_15018326506:
>+                return display->platform.battlemage;
>         default:
>                 drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name=
);
>                 break;
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu=
/drm/i915/display/intel_display_wa.h
>index 3644e8e2b724..f648b00cb97d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>@@ -26,6 +26,7 @@ enum intel_display_wa {
>         INTEL_DISPLAY_WA_16025573575,
>         INTEL_DISPLAY_WA_14011503117,
>         INTEL_DISPLAY_WA_22014263786,
>+        INTEL_DISPLAY_WA_15018326506,
> };
>=20
> bool __intel_display_wa(struct intel_display *display, enum intel_display=
_wa wa, const char *name);
>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i9=
15/display/intel_fbc.c
>index a1e3083022ee..16cd99db2978 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>@@ -1521,6 +1521,16 @@ static int intel_fbc_check_plane(struct intel_atomi=
c_state *state,
>                 return 0;
>         }
>=20
>+        /*
>+         * wa_15018326506:

Drive-by nitpick comment: The most common usage is Wa_* instead of wa_*.

    $ git grep -hio '\<wa_[0-9]\+' -- drivers/gpu/drm/xe drivers/gpu/drm/i9=
15 | sed 's/\([Ww][aA]_\).*/\1/' | sort | uniq -c
         22 wa_
        317 Wa_
          3 WA_

This could be fixed while applying, since it is just a comment fix.

Also, I would wait for the workaround to be formalized as permanent
workaround before merging this.

--
Gustavo Sousa

>+         * Fixes: Underrun during media decode
>+         * Workaround: Do not enable FBC
>+         */
>+        if (intel_display_wa(display, 15018326506)) {
>+                plane_state->no_fbc_reason =3D "Wa_15018326506";
>+                return 0;
>+        }
>+
>         /* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>         if (intel_display_vtd_active(display) &&
>             (display->platform.skylake || display->platform.broxton)) {
>--=20
>2.43.0
>
