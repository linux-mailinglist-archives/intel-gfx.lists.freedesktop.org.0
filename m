Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F267CA765C1
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Mar 2025 14:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765FC10E3EE;
	Mon, 31 Mar 2025 12:26:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g1I8RGSX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F24C10E3F1
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Mar 2025 12:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743423974; x=1774959974;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=1KAxdX54i3W9D6WBP454vNBpc/c2z1V/7k8buz92uME=;
 b=g1I8RGSXz2hWwsCOvhKQm5uDz/9eez4oMJ/T9Qa/WaN+hjl+xnhvfLX4
 TuXKzSoDsI40t92m2o4IQK9Rhq6torxg1EkBlUtvEtSAry/TQYrpLuyvI
 AFL/O74t/V5785pgP7RFT7Kz9nfg/Ec2Z3TbiAqXnfxEbyl2Ti3vBpM5j
 jyOay9oSablyI7fLQsxyvSVgB1jx0AXew8h5tJN3li2YgrpKUeyoe+Gi7
 IVPkc/UxweKdgYuKncJmq8jmL9E3ThjMdMGVQeiBTbwBvNESTm2f/HkpG
 21Q9gqeMPCoNrD7UoH7VqYvKvb/r15pMDsH/egT+6KbjcBq9rp7paB4Tg A==;
X-CSE-ConnectionGUID: iytEme2OTUukU/LwNtW3GQ==
X-CSE-MsgGUID: 7DqRU8BPT/yF0TbiGEXdmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11390"; a="67187266"
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="67187266"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2025 05:26:13 -0700
X-CSE-ConnectionGUID: Qttrtp8YRUaY0/8Wo9ZLtg==
X-CSE-MsgGUID: 5UuGLgrjQUiCIi22hA+hBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,290,1736841600"; d="scan'208";a="126303109"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Mar 2025 05:26:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 31 Mar 2025 05:26:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 31 Mar 2025 05:26:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 31 Mar 2025 05:26:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pTnVWxU22ikOEkqAVGTK9yFkGrQrerfgBwJ/lkTcQS7ihML3eYETEq7eAz9B/ghMTEiPhOrSm9juATfAobTWdVP+HGI+TxkkA84VFrROmT//Apv+ZWNI9jqiD9R9PsMePN6awJTg3/i7vbPibA4ogzM6vlN1gbvM0kbK4A6tyMI+A6m7rWTQPJ3TGGmncj0EIeBja9FtSok7ZjPbq6ParagMuljhbNhcm5C3Fda6C++UvZGg1ExnHx6yvrkW3UK1v4wqODsj8cEM9cn0dOb90KYjBNaca7++tvs3aQysNUJhIhfvg3GDk63JoZZKD5+/JvrYbIsnACA2cD2bQMULJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1KAxdX54i3W9D6WBP454vNBpc/c2z1V/7k8buz92uME=;
 b=NpPDFseUe84PvLyo9JL5v6IsH8XodzIhhuIrYdZDh6/v54RUfJrjGSfRi/d50FSZ6q9p941V1uwWr/cESWW+hlW1+Lm6Qh81tMsBpi4wx1BDw0qhvQVvw15tanZILrvPtGfCAmHtAyvNwy0X8jTFHWO8ZpqRT0YPb6zkog1udxbMUPmMV4h9vSu9oYh98Ch1e5kg6BbMprekqiOcHwSF9rBEOnRyco74Xti4CpCjMJst1YUn25vKMtnLfSNh5omGUNq+/IjlLaJ0VnQgP+RS9rSetnNXwtpO047dusLFIGPK21MUmi8xrqMARVwxJfYvPWuxycHZNA2hv/lwKfkFWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB4808.namprd11.prod.outlook.com (2603:10b6:510:39::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.50; Mon, 31 Mar 2025 12:26:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.048; Mon, 31 Mar 2025
 12:26:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 00/10] drm/i915: Pimp the initial FB readout
Thread-Topic: [PATCH 00/10] drm/i915: Pimp the initial FB readout
Thread-Index: AQHblCGXebukwl89R06rr6mjkEbjbrONR+aA
Date: Mon, 31 Mar 2025 12:26:10 +0000
Message-ID: <ab2cd10f7390b41fcf9395e9eacea7ac71ade3aa.camel@intel.com>
References: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB4808:EE_
x-ms-office365-filtering-correlation-id: 3db07dc7-9a33-4fe9-d551-08dd704f3875
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Rkc0UWlibExQWm1sNjRpRUx6MExIM2Q4akhlZk9wNk4rbXVwam5Kc2hLK0NB?=
 =?utf-8?B?clJDZk14bVhJRXRNeHZxSFN0aHNaK2hHNExGUGZKV0VQUlhaVUVWVmgzZStq?=
 =?utf-8?B?U3MvSmNoZndKK25QbjllRktESXFaUzQ4RGdaWVIvODMwaWxUTDdmMThMZVcx?=
 =?utf-8?B?bkhyRmJEL1dRZzRxY2QveC9oM2haNUhYNG16NnRJVW5BU2RpdHdNOWNQTkJo?=
 =?utf-8?B?eENVamRYamYrS25UZ2k3NE5mMUlrUE1ucytqNnlUQjZrS3Fiem1GaFdaMm9r?=
 =?utf-8?B?RlVkck1nQ3M3endzUjJPdXZCVTBjZDFKVFd1dnlaMGRPWTFYaU5kSm55ZVZP?=
 =?utf-8?B?WGV3U3hScVhJdG9mMmlFZzIwUldHTGQ3VHBGZGV6NjgrS1pBWXFlRVUyank1?=
 =?utf-8?B?dEc0elRsVStzbXFMazc4MmVEN21JK21rVFdZazQxd1JNNitHeldZSUtLWk1p?=
 =?utf-8?B?S1ByYXE1NWhBUnRlalROQ3pYd1VyNTRTdVZaQmQ2cHkyY0lna29LZmc3TUJo?=
 =?utf-8?B?dDJENHNBbDdZYWI3WTFlT05EU2pnL1lhVkcvOWllSSt6WjdFR1BkN1VHQjRk?=
 =?utf-8?B?dG1FRVpQUlFTMWp1RUtrdEQxOFB5Q2xOeGwxbDE1WVNwOHlvSi8xL0xVbmxR?=
 =?utf-8?B?cGNXdWg2THNhMFQ1R3hFdWo4WDBuVW5CQURXcGhFaEZpdGlwQ010c01EVFgr?=
 =?utf-8?B?TktzVzNzTmtZR093RFVLNTVYNUVEanVsRXdLWVNoSlluZlNWWFQyRUtoMWFo?=
 =?utf-8?B?eUVyQ3ljS0JOWkxwTXBVL29NcGY3Vmdmekcwb1ZEV3NyNnBRNHcyZUxnblZY?=
 =?utf-8?B?OTA5UlZ1Vmx0RlNsRWhMUVhJYVJVUHpEanViTWEzSTc3ZjBYN1pQS296dUxM?=
 =?utf-8?B?WmZUSWQ3NE5rNS8yVlVVeWdPWHpCZllPYzlZd25ETzB3ZWNyaUFQdFYyQkk2?=
 =?utf-8?B?d285dFZrcStneFlnb2s1T2hQZWE1NlpxamRXd3lRWkgxTCtNM2lHTmEzYm16?=
 =?utf-8?B?TWxkNExMdHF2Y0JRRG1DTWZycnBweGVXcDhiOEdZRlZKWkIwbkI0YTRMcmIv?=
 =?utf-8?B?eSt6VldaMFhsUU9wTXRDTzNRdkJRdThDZXZZTjhscXVhOEhxdFRTMEtDZWQ4?=
 =?utf-8?B?U1dKNTUrTlQ3YTcrU3kzRlFUellzWXNRYnQzeGxadi9aakd2UENTT2ZKSGYv?=
 =?utf-8?B?RjRoc3BjVGNMM1FnUVdLTGwzbUt0L0ZDN3NHa1BUMTg2bGVCa3RXMWNhajBy?=
 =?utf-8?B?d08rSFdMSWZTamFDM0IzOTJ5ZVdaUTczaVkxenA0ZlIxV3RVYkJGVXNYSkdv?=
 =?utf-8?B?TFV2OGFVREw5VUt1Tk5Ybmw0anJPWnZ0WStrUDRyaXBFWEE5M0lXRXB2Q2xO?=
 =?utf-8?B?RGE3WXBUYStlNzQ5UTFiTC9XMDUzYXJSditnbGhNa2pYRFFPSUFWbDlCaHRD?=
 =?utf-8?B?dmJqVnNJeHlhakVFQjU5eUkvSVdja0I3Vy9CQTlUSzFPNWdBMzZuU1ZKdkQ1?=
 =?utf-8?B?eDRZVFFEZ3hzeUljalovUE9sb0JDLy85MHZHU2dhbjNkSFRiY1ZKcnZaM1I1?=
 =?utf-8?B?WEhEdDRBc1kxRWRhQXMwSWtua0pvOHFFUWRmZzRtWnpnNmJXRHJXTE45cVpG?=
 =?utf-8?B?YWlRUDR4QTBQaG5UeUo5ZDgzUzJNRkhsZkUyditsZjJac1B2VnhPaStzb0Ez?=
 =?utf-8?B?MEViK1UzVTlIY1REQjFsMDJtSHF4eDI1N2xLOWhQeU9MMU9WM1NqWkN2ZlVG?=
 =?utf-8?B?d01rcnJtQWZNazV3NVYxeUgxTnk1N2NxM3loVkdYdDNUY2NqTkwxTTk1RUI0?=
 =?utf-8?B?VEhnZEU5YkQxeGZ6c0hLUktudnNiS0JxZUN1cVE2S1BBWFpKZHF6L08wMFpD?=
 =?utf-8?B?cTBIb212TnIzVFYxOHdQN3NaRWJWMExXZWMvM2FBbXhXdmtCRW9DVjdza05m?=
 =?utf-8?Q?SClfr85/5MOWncebEhc0l5RfAkjH3B9r?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z1JXVURzT1ZsekxML1YvMWIxN1BTT2FYUjNmaFcxQUpBeUVsWEV1UFcwN2Zs?=
 =?utf-8?B?Vmc1a3VadTdSME5BTUZ3dzZ2djhSS2NwWUZjVVMzUE1mVU1FY2FJYmY5dkJK?=
 =?utf-8?B?di9idG1rL2FLVUZnd2FYeERueFBYTjVjaHo3SGdHdjRXZDlJOFBlK3pmdU9l?=
 =?utf-8?B?TU9KRmpWeHRZU2lxbG9hV2FIbU1SZ3VmMkd5ckl1TEFFMW4xNW52NFNLRUFN?=
 =?utf-8?B?SE90T0RRdENPblJzbEY0SVZFK3kzSUFZNEJwWm5hK29hdFBSOUJZTHZHZ1BJ?=
 =?utf-8?B?QkxnNEszUFU2dEVoTnBselgvalZYUHNicmZhM05WZTJyaGh1SG42RlVSeSs0?=
 =?utf-8?B?L0Q0d2tvQWJYMHpUV2J4UzdIU2gwZjRMNWM0Q0lFKzdzSFpvYUN4SzI3ZFkw?=
 =?utf-8?B?UE8vdFN0NGxsZy9qZVVHWTNma2tkb0N0bzBUQkxKaGFlZ3NqVVdYSHFhMEpL?=
 =?utf-8?B?aHFseExyNm1HMk9yM2lrUmJNa214UHRpd216WTMxYUZYNUVsWG1ocWl1bEdE?=
 =?utf-8?B?YThkYjZ3d0pJVUxRa1kxOGJEQ2xnVHBXSW5abUY1czdjbXdyZU9QWlFJaVdW?=
 =?utf-8?B?ZW5PQUx3a3BuZC9Ba2xramZBLy85UVVZMW1EOEdhRnFPY3RDZ1lwM09GQWxt?=
 =?utf-8?B?ZTY5QVZONUdnb2Q3QmVrakMyWkxzQXBZN1RYZ0M1YlI2WFVDZHU0SzhGVXFG?=
 =?utf-8?B?VDdhKzBtWnpGQ1ZjRzY4ZUlsekY4MUVyMVZ1aVUvRnZmTkxVQkIwb0U4czdI?=
 =?utf-8?B?VDh1UnRQb1JuWEtMQzZudzhBY1E4TUdWSlBUMkVrcHZ4bEx3VG5SQXRZckRm?=
 =?utf-8?B?WlNPaGR2K2JjOVJBaXZvRmZEMThTM1hNSUpmQlN4T0lOMHVaRXRZdU5WbmJZ?=
 =?utf-8?B?V2Y2VVQ2QUpjSmJwYlMzSG5IOWhrK2xoUGZrUWlTb2lyeGk2T25lOExWQ0Uy?=
 =?utf-8?B?clF0MVZDaURpODRBWFdxZUFNOCtWWjljYWxBYUtXVDhvcXQ1bWRZenJFOW5y?=
 =?utf-8?B?L3J3NHhSVDBTSC9YVFBzZ1VjbXBHMlQ5N0E4ZG9WMWhkeC8xSkNvOFp4M2x3?=
 =?utf-8?B?VXlnQmRtZmtuMEp0SGpMQmZQMUdCaUlJakk5TXZ2eWFrZE8ycmo2YnBOYWVy?=
 =?utf-8?B?VEl3czQzZitXUGlsSHlGbkJaWHUvNTYveGdxOExlSktYam0rSGZvcjFtOEVS?=
 =?utf-8?B?NEF0d2t2dmpNRE0vUi9IS0JGVm85WldZZUFlQXI2ZmF6aExHQWM0WU5rMk8w?=
 =?utf-8?B?Y1dGMmJsMDRDajYzdzd3ZXgxNk5tSXhKYXdtNTBsK0tEY0R1akRDMVJCZFJl?=
 =?utf-8?B?dERVUTlKTlhUQm9nci9xejBYaDc5d2g5bFBlRTI5TzZTUk1GVHVlQysyZEND?=
 =?utf-8?B?Mnc1L2UxQitxSHVkUDRBMDgvQXNKUTV6NG5BT2JuSDlrS1pycndlZnJaekVQ?=
 =?utf-8?B?MUd1aGltZzYySTR3enhabFc1aFJKNGpmckJ6Z3FTQ2ROb2NyWVduUHZpYmhi?=
 =?utf-8?B?aUN3T3ZKTzVXRUk5eGpwa2dqWG0wNko4OW9IaUlmUWFUdWdWRlVoSTRuQTFB?=
 =?utf-8?B?MWZUdFAxWXNLZzEzTEl4US9nQ0V0dTRZT3VYazYvUUZnUFFtMW1panViL2Vk?=
 =?utf-8?B?NUZLQ0pGenRNNklBSTAvWEdTc2d6NTR6dGNUNU9rbE1ORWUyQm8zUXhMdmVz?=
 =?utf-8?B?eHhQRFBsVUFlYUI5RjVHUnNoem5leGZHUGVWVW5aL3U4KzYwbzJadXIybVpk?=
 =?utf-8?B?QUJ2UVk4RVpDK051M083RDRTRFEwdFAvMlJ6aUlocXAzOFZINEZ2WDN0WW4r?=
 =?utf-8?B?dE1KM1R2aUlGa1l5L0dYNnF4WlJMcUhHbUVCWjBROWdPMm0rNDdTcUw0ZVJH?=
 =?utf-8?B?eUx2WEczY1E2YjdVZGlWMUpLN0xiS0RudVhMdEpXZDJjZElFcUovR1djMGor?=
 =?utf-8?B?cCs5aGZUTHhsekJtMTVZZEJSazJzdW9JNkNSdXRnUmlOVSt2K2F3Q2x1Tmo2?=
 =?utf-8?B?dm9GK1QyMVgxRHJoZThQaWNOZ2lqVDdNTjE2Z2RtM3lUdmFJYkRMS1R5eisy?=
 =?utf-8?B?Y3gxZWlBdmRWQTJIRDlBZzVsbEpRbnpyeHVNMGh2RGZsTnJGUUxhQ3F6RWlX?=
 =?utf-8?B?clRyajJLVXZxbjVVRlZqd25Zd0dORXRsdnFrUjROVzZ6c0lNSjBNSm4yaFNB?=
 =?utf-8?B?ZGdNcU9MR0F5NmovU1M3NFFLN1UvajR6WXB5Q2tyZkQwUm9oYzI1RmxwMVBl?=
 =?utf-8?B?OThPTll2MDMxci9wdHZqMkJCNWdRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E114E0693817BD438DE365DF4DAAFA45@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3db07dc7-9a33-4fe9-d551-08dd704f3875
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2025 12:26:10.7858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: adEw8p4OHBDt4jrti23/afhq94nvxC9HhdW6TMeyC5q0O7D2qWZyyIwnc+Y0//P+D3y4bZGV+Q5jMOgFXW7oBwD8Q8lOUag/MZFBTahb7Gk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4808
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

T24gVGh1LCAyMDI1LTAzLTEzIGF0IDE2OjA4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gU3RhcnQgdmFsaWRhdGluZyB0aGUgZG1hIGFkZHJlc3Mgb2YgdGhlIGluaXRpYWwgQklP
Uy9HT1AgRkINCj4gb24gYWxsIHBsYXRmb3Jtcy4gQ3VycmVudGx5IHdlIG9ubHkgZG8gaXQgb24g
TE1FTUJBUiBzeXN0ZW1zLg0KDQpNaW5vciBjb21tZW50IG9uIHBhdGNoIDA0LzEwLiBGb3IgdGhl
IHdob2xlIHNldDoNCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KDQo+IA0KPiBWaWxsZSBTeXJqw6Rsw6QgKDEwKToNCj4gwqAgZHJtL2k5
MTU6IEV4dHJhY3QgaW50ZWxfbWVtb3J5X3R5cGVfaXNfbG9jYWwoKQ0KPiDCoCBkcm0vaTkxNTog
RXhwb3NlIGludGVsX21lbW9yeV90eXBlX3N0cigpDQo+IMKgIGFncC9pbnRlbC1ndHQ6IEFkZCBp
bnRlbF9nbWNoX2d0dF9yZWFkX2VudHJ5KCkNCj4gwqAgZHJtL2k5MTUvZ2d0dDogQWRkIGludGVs
X2dndHRfcmVhZF9lbnRyeSgpDQo+IMKgIGRybS9pOTE1OiBVc2UgaW50ZWxfZ2d0dF9yZWFkX2Vu
dHJ5KCkgaW4gdGhlIEJJT1MgRkIgdGFrZW92ZXINCj4gwqAgZHJtL2k5MTU6IFZlcmlmeSB0aGUg
QklPUyBGQiBmaXJzdCBQVEUgb24gbm9uLUxNRU1CQVIgc3lzdGVtcw0KPiDCoCBkcm0vaTkxNTog
VXNlIGEgbmljZXIgd2F5IHRvIGxvb2t1cCB0aGUgbWVtb3J5IHJlZ2lvbiBpbiBCSU9TIEZCDQo+
IMKgwqDCoCB0YWtlb3Zlcg0KPiDCoCBkcm0vaTkxNTogTG9va3VwIHRoZSBtZW1vcnkgcmVnaW9u
IGZpcnN0IGluIHRoZSBCSU9TIEZCIHRha2VvdmVyDQo+IMKgIGRybS9pOTE1OiBVc2UgaW50ZWxf
bWVtb3J5X3JlZ2lvbl90eXBlX2lzX2xvY2FsKCkgaW4gdGhlIEJJT1MgRkINCj4gwqDCoMKgIHRh
a2VvdmVyDQo+IMKgIGRybS9pOTE1OiBFbGltaW5hdGUgdGhlIGluaXRpYWxfcGxhbmVfcGh5c197
c21lbSxsbWVtfSgpDQo+IGR1cGxpY2F0aW9uDQo+IA0KPiDCoGRyaXZlcnMvY2hhci9hZ3AvaW50
ZWwtZ3R0LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA1NSArKysrKysr
KysNCj4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZV9pbml0aWFsLmPCoMKgwqAg
fCAxMDcgKysrKysrKy0tLS0tLS0tLQ0KPiAtLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9sbWVtLmPCoMKgwqDCoMKgIHzCoMKgIDMgKy0NCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmPCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDU2ICsrKysrKysr
Kw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHRfZ21jaC5jwqDCoMKgwqAg
fMKgwqAgOCArKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5owqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgwqAgNiArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
bWVtb3J5X3JlZ2lvbi5jwqDCoMKgIHzCoCAxNSArKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9tZW1vcnlfcmVnaW9uLmjCoMKgwqAgfMKgwqAgMyArDQo+IMKgaW5jbHVkZS9kcm0v
aW50ZWwvaW50ZWwtZ3R0LmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAy
ICsNCj4gwqA5IGZpbGVzIGNoYW5nZWQsIDE4NSBpbnNlcnRpb25zKCspLCA3MCBkZWxldGlvbnMo
LSkNCj4gDQoNCg==
