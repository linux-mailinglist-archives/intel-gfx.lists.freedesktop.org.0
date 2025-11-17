Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 072B7C6574D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 18:24:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C0910E38C;
	Mon, 17 Nov 2025 17:24:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gJP0nf+G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02E9C10E38C;
 Mon, 17 Nov 2025 17:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763400242; x=1794936242;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=PJgcCEe0enQ3NP5zhl5lBzv44W4uwKKih/5oD/ALIfc=;
 b=gJP0nf+GrZW39+rPG4H534QgJ3Xe+4lsR+Mmf2MSUiW8Pzx0JAZyudDr
 ZMhpYFPEMlAtRC7iYmvU/GG4PY+ykj5lDd1JDaRr8xsi/W2e57FKUgbaq
 MSL8CLjmkV5s3kCc2wA8TfGoMKhCbkqDFRYdjD+dZLD7Pv+CZNNaRuyTN
 9blhONWeqJm5VWuJrvQ/WCvFXyk6eBoO59oJrIwEtoIVMGbFoF2hcb8Yg
 c+9u3+1MFEbnkMVaRYBfXLMyeoXAQ3skEtAVcO9OkAmzEQqWyJxhXuYYQ
 SQgHKAam3gLShik8iTd0SnwYyq2+7y5PcY6961fW4jCPFOpKy5N6FwYhM g==;
X-CSE-ConnectionGUID: WmITJg3TSbityAdr5DJOqw==
X-CSE-MsgGUID: MPiHwoE0R7mTTjcCQHLAPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="76085869"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="76085869"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 09:24:01 -0800
X-CSE-ConnectionGUID: o5zzJB50TUezYqKzuaojIA==
X-CSE-MsgGUID: yd3kixzXRU6bVydMATND2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="189798466"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 09:24:01 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 09:23:58 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 09:23:58 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.1) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 09:23:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MOTTwDv1Y+9cfp0vdx2EAKGhymJsICQUG1a4ulme2IhoTeTEZOrEBNwGICPISqufjq/YNTtz/CQi4yD+PoPz4N5KRCS7rq9nKXj3ieTXAACm0k2ICG1eAlVK52IZE/Ce9e/jIie7b71ZmxgxLQ6Oh0hfIp6aE12PnJqZRiiVUhgdqT6+MoyTDH/AUy7ggn7vQx9qS2u8JEypvqsFsUqIS/FtJn8r3vtdURgbXYiT5chn9iX76DiBQTmDH8MFEAh1l//FKdC2PIW8g/ARO3q6fDFvPYrRTmgDWSv8n0k6/r2FnCQZYEmIIXXbtnZKelfWgFDGmdAA/P5Lqz/oYtIP6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vz38DFJmMBY1g1/RjpiccQUrDLWbgxT/ISB9qYdvhDc=;
 b=nVFVlBSLrtqVYdANB56Fk9aE/2Rz6KyEpVbkqTMNrIv5wUw8rFvoYSrM0FE03aZuDaqcul79wGw3x59hwgOHb75WhypGUHErQ5wWqiXL/AcIGcHSBsH3SK0WT0n8pHzi06qfBrgxpDHi/a6GgzahAE6oB4YofwVYCW2tbVeVb9SHg0hQU0mBvD5NnmxvSdbEMC3D4bp2F4Qg+a7+f0xZR12sMCFH723IRIA81YADDgGWfRcOU1qja7Fan5aVhutAhHHYu2iwTdDqOxRQuWoj5tlVvBUvd3u8Ga+byE/UcKeNTS/qBPDE8ovbqUZL4jW0XaWqIZ1BcIOMBiEM3rp6Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA3PR11MB9302.namprd11.prod.outlook.com (2603:10b6:208:579::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 17:23:55 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9320.019; Mon, 17 Nov 2025
 17:23:55 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aRs8nFHQ-syeq4SB@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-7-ab3367f65f15@intel.com>
 <aRTJq2h7ic7EcpL6@ideak-desk>
 <176314958906.3698.11640605946760436324@intel.com>
 <aRfL-CWPYR6gC6F6@ideak-desk> <aRfV2MuICSW1jR4I@ideak-desk>
 <176339175784.5989.15280881790145867529@intel.com>
 <aRs8nFHQ-syeq4SB@ideak-desk>
Subject: Re: [PATCH v4 07/11] drm/i915/xe3p_lpd: Extend Type-C flow for static
 DDI allocation
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
To: Imre Deak <imre.deak@intel.com>
Date: Mon, 17 Nov 2025 14:23:51 -0300
Message-ID: <176340023109.5989.13935406990721055950@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR08CA0001.namprd08.prod.outlook.com
 (2603:10b6:a03:100::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA3PR11MB9302:EE_
X-MS-Office365-Filtering-Correlation-Id: a7715977-65b4-4d88-80c5-08de25fe159e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vm9IKzJnMmtLWEwzbVdwN2xsNk5Zb2ZJR1dueGhibld1QnM1N2k1b3pUVm81?=
 =?utf-8?B?L01xS1huNlN4aDZwc1Fyblpnblh2NHJnM0RLOERRSjFINlYyNnowWjR1ZlBT?=
 =?utf-8?B?cmtQZVdpdnFldmZFYWFDZTZpQ09FempyZ1J5UjhtU3NGTWdVTzY5YS94YTNZ?=
 =?utf-8?B?cGpBZzVwdUdhclRRallvQzgrOEFleGptMytESVRZaGZaZ0NJUlNrMUNWSnI4?=
 =?utf-8?B?QVdvaU1vTkVrdlhnQVNxampMUkt5VXo1U01jUUNYLzNrZmRSRFV3YXFrY0xQ?=
 =?utf-8?B?WEducldKbTBRZGZId3pmYUFJNTBuNXlHVjM3TWlEYllZQndKcVBJZ05hWFJt?=
 =?utf-8?B?aDhaQVYzUmh1cC9FVlZlOGRXVEVibFc2RERKa0dEc1VqNEQwY09DZThYR0pi?=
 =?utf-8?B?NDhvR2d1eFk5NFFoRXNwNEVob3pzVGdVd3lRRC9FVUUzM1kvWmVCN1dZN1JZ?=
 =?utf-8?B?TE1QWERQQzNtVUJObFVraFZmbkxzR3g5MFkxTmJZODNtdkNXcHo4L0JSRXdw?=
 =?utf-8?B?aTZZc1lrQmo1Q3JZY3BMb2J1SjAwTzdxcnBNaDlYQ3RZcURzRFNhVzczWFE3?=
 =?utf-8?B?K0lnY1FZRzZHVldSYWc4MTZWVFM4VDJLSUpHUEJaS1hwR3IvakVuUFZybXFD?=
 =?utf-8?B?aEJsMWJIaks0Vllyd3cvRGdZdEJGeXBhMHpaTi95VzRjSXp1Tnd3TGZ4VXc5?=
 =?utf-8?B?SEVxM2hjUmVtK0ZyUlcwU3FFdlJ6TThSem1lTzRvVWRITkhJR1FBRGJ4N00w?=
 =?utf-8?B?MjBrZTBld2RJSFpsS2Mvb0ZJSDcrV0hPVUlwZEtwdTlvcFpKK2hDU2J5RW9y?=
 =?utf-8?B?MjZXbk03VTdJVHg1YzZ4K1crZjdnOUhFRGZRdDY3dDZRSC9ReWEvSDY5MHZU?=
 =?utf-8?B?cHo5RnpqZTl1NlArak8zNDBlNUxob3pweTdxRlk4OTZMUXQ3R3VSeENQYUgr?=
 =?utf-8?B?YVVhUldwS3MrK1ppTjQwOEVBS2JUak1TUFo3V3FmRnBYMFA0L0Z3R0NiMjJz?=
 =?utf-8?B?R3Y2bXJqT3lvbTZyc3V1WVZOVW5pYS9rcnF5eUMyU0p0dDFWMFMyNURtcGJm?=
 =?utf-8?B?aFRoQkU2aG15bTBxaU9TWDQ1QisvbjRHdnU5ZU8zYUVtMzFLV250a3pHeVNl?=
 =?utf-8?B?Yk9FQkRQdVBRSm15UzZpTGxWRlJvQS9hRDJUY1BaWVliY2JMMncvbTdiendj?=
 =?utf-8?B?bDBDN1dDRmJQV3lZVkI5MzUrTDBNSE9oQkpyUGswbHlpbHJaSHdzTnJJS0Va?=
 =?utf-8?B?TUt2U3R6Q09nMStVTXlESFRqSGhieThDVk5lSjJ1VjUxSEJmb1lncWhEc28z?=
 =?utf-8?B?UlA0d1BrSmJGMnQvYXVhVDJ2QThwS2VpMzc4WTZ2czRmZlZZUEp1ZnhRYXo2?=
 =?utf-8?B?Vk5laitYZDA2dDhHcjRuUStuU20rZTROSmJYMVBnZXdYVWdvcmJTRlpjRmR5?=
 =?utf-8?B?QnovMi8wVWFqUzdFeFh0cS85M0N3RFptWGZvZUhLL051UlFwb3J6SHg4cmZv?=
 =?utf-8?B?aHppM1FLeTcxMFRqWW5lVjRWbTFhaDVxNm9vWE1wcnFhYkxWZ0Z6TlRRYTlj?=
 =?utf-8?B?c1c4K2FYdlE3V1E3N0E1blRRZ0tBcnUwYzAzQ2JyV1pkUlEvc3JZSHphUmdS?=
 =?utf-8?B?THR6amdCd1l0WGI1R0xoMitKQ2pmckQ1N05URlUvbUdWazhMSjZXMjlPTTha?=
 =?utf-8?B?NFBaR1JSQWpvNEptb2NwZ2xxNTZPVDhCRDdXaDVWRkduU2tYTEJqZlllRkdN?=
 =?utf-8?B?OW9zTlcxS1NIdWljRmgrWkd2dlNBcFFzNWNaNzBlbm5Sa2JWOXFMNnkxbnJR?=
 =?utf-8?B?WkJWb2ZwU2pnWnU1cjhGaWVUWHlOL0tqNDc0QklIME5sRGgwbmVtYm1DdEFK?=
 =?utf-8?B?YUszeGhXeHBLa2Q5cURUWlJIZVdObVRZY0ZzSVhNY3VjZFh0QmdodEpSWFRl?=
 =?utf-8?Q?Zo4iM8QrCYzsJ+wuckidi9jgORHBY7cp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3ZvUmozbFdRT0RxSHhleUZBWmZHT1NBdDl6QjZHY3lSaXNkT0xndjdqQWxl?=
 =?utf-8?B?MkJvTlFnbDFLRjF4UVpVWUxBT1ZtS1hUK1hFWloxMkRVa0FNOTNIc2cvMzI3?=
 =?utf-8?B?YUtybEhqOGwzRktmTXlLajBKUno4WldYcG9PS0pzYkgrUFFadFhCM0Uxa2ZN?=
 =?utf-8?B?WUlXdmJwMnJsdk1OMFJGNzRJY3FVaHNrelJaeVhJYkw1SCtoa1lHNFlUMHBo?=
 =?utf-8?B?NU0vckY1RGVURU9qeFlZdi80aFNqNFF3QVdmYnNyM0Z0bGRjTGQvb1dZVytl?=
 =?utf-8?B?QjhsaE50ektFR2dLd0lSakhhZGMxaUF5SnRaSFZocER3MSs3QjR4WXFnclJX?=
 =?utf-8?B?dWJ4Y3hXT2xnYVVQdHhTUExPcjZrNGpNNnJwZjEydHdUdHpvQUpVcUF1QzNQ?=
 =?utf-8?B?akl5RkxLekJoR1NwWmNaY0NWOGFmYTZqWmdtdFNYY20zVUxBdGxCY3Nzamh1?=
 =?utf-8?B?TzlBQWh1aTJNUWRmbWZtcy93dVBDMVhLYnVoRHBrOGRpRWU0WnRReUJCU3Zq?=
 =?utf-8?B?TWE3Y2llSG9VWnJtNFBJUGZXWGFjS1ZPK2RSdFlJaGdPMDZPc0tmU3RpSGZy?=
 =?utf-8?B?ZGlqTmVOdGwvSjFwR1lXQkNtOWx5ZWY1YkVKbis3WEpDRlZDVGVJUDFUSUVk?=
 =?utf-8?B?TmxrdEpPbjdkMnY4Wnh2UU14VGxPYnFBeUk3OVo3eFg0WXFMWXRiRHdlbTB3?=
 =?utf-8?B?aHdoVmtmaXRRSHlYa0VmZ3VmYkY5Mmx3RVo0QndZN0t2TEEwbU4yQlBFUGx4?=
 =?utf-8?B?aWVrVnR0UnZDY1Z4U0hqU0VvVzQ2akk1ZVVVQUk0ZzlURGx4UTNQekhtYkJR?=
 =?utf-8?B?N1dXZkVSSzZjZVduODhFQXZRU2t3SDJZNjRXSUpIK3BpUTFCaFgxRCs3OGZw?=
 =?utf-8?B?bEtvM3pLREU2ZkdZbjVFSUJrSnY2UlUzRWV0MnBnM1JZY3V3ZUhSR1dRVlJt?=
 =?utf-8?B?cHRyOXhGZzZvdHpJREh5QitBdmtTNjBNYUpJS3RuY3RBRTB2a1h1OGhFSmRz?=
 =?utf-8?B?SVlZWGZiUytJOEF5djRRN3g4ZVdwOTNDL2hNdEp3aVlaSlF4OGQ4cEZ2ZkQ4?=
 =?utf-8?B?V0FKSkdnelRFZ1pmZ1p4dTZqQVA3L3V3WlcyTStMN2hBemR0WlBDSkNJQTdv?=
 =?utf-8?B?TGFESE5HTWJjOTZmdlIxbEFRY05mTitPUXpkUkF0R0NjQTRIZkRQWjBKYXRr?=
 =?utf-8?B?TzVaaHQ3OFJxL0Nqayswb21VS2NidnlBYThUTUl6djhQY21qRHc4NkxTSFZn?=
 =?utf-8?B?MFRSdjlQTFM2NFZ2aU4wUjlFOUpNTk5FTlphTWZwL3BjVWVnQWZaTWhWckJs?=
 =?utf-8?B?TlREbUJTVW9hVS9NYU41aWVkSmd6OGVMeUJyUVNRMnp5T2hYYXluNjNwZHFa?=
 =?utf-8?B?WFhwZ05EYzNzYzFheWlZV0taOEJCRTVsY2NGUlh0UXhJU250YUpXTDlaZGhl?=
 =?utf-8?B?ZXpiK1o4MXdhUGt3di9oSWxMc3RDUloxcDBHNlM0UEV1OFpEQnlDV2FhNmhO?=
 =?utf-8?B?K2FsQzR6Y05JdEMyOEkremFOOXh4ZHd5aFFYYmx5U0piSUwwMk5jelRmcll0?=
 =?utf-8?B?UWZjWkFYSldBWVA1TFh3akJjb2dtUk95b0ZZTWZvNzN5UDQ5OUg4WUNaTm9x?=
 =?utf-8?B?eHFFMVNSZWNEemllUVc4OVlNVWFJQ1NOZWs5dVhvZnN1RkFuLzNzUG1yZGYx?=
 =?utf-8?B?QVJGM1lVa2Z6QTlSUUxDTHQ0ZXJ0YWRGbndOZThCT0NMQUpmdWlHdTlGRGpU?=
 =?utf-8?B?aHI2cmU0NnYzSG9ab1p1Ukp2c1BxbVdmSFYzdmVSQ2xtYTdhc2kwV1B1Mlht?=
 =?utf-8?B?WlRGZWZSZTNpNDR4YkRLd3BDakkrTUpGT1llcHY5YnhydHlhSHFNYTVjWFRH?=
 =?utf-8?B?Z2o4SVc1enNRVmpKa0ZReVVjaDR0UVNqdnpKQmhOcTdOSWpPeFJaZWxmWElr?=
 =?utf-8?B?Qmd6UDEwS01MMzZyL09ZWmZHRkg3ODBYK2RFbExNMThJaEVFYjltRWFSeGg1?=
 =?utf-8?B?bkU3UVlYSlpuN0hxczlTTzJ1TUpVR1RBSitBMnhjRUtrQkNZVzMremlxQ1pR?=
 =?utf-8?B?d1h4dXZFd2QydGM2dVBrcTZaRXNVRm5HNFhMY1lvQUMzUFV1RS9KZm5aK0Jm?=
 =?utf-8?B?bjZDVVBuY0JrWUZjZ3ptVlpiSGovdUJRL1M3enc3WWJkOVRETkZtQ0NQN2NC?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7715977-65b4-4d88-80c5-08de25fe159e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 17:23:55.3191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qvMrdFH0hVaV6kHA9ZLiuy/URkLNkCtyK48MIYWBnOhrhRDPQDxBzrmQAr5cO8gPCFa1oo3BhRHbkf3G8OfaEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9302
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

Quoting Imre Deak (2025-11-17 12:17:48-03:00)
>On Mon, Nov 17, 2025 at 12:02:37PM -0300, Gustavo Sousa wrote:
>> [...]
>> >> > >> +        if (iom_dp_resource_lock(tc))
>> >> > >> +                return false;
>> >> > >> +
>> >> > >> +        val =3D intel_de_read(display, IOM_DP_RESOURCE_MNG);
>> >> > >> +
>> >> > >> +        consumer =3D val & IOM_DDI_CONSUMER_MASK(tc_port);
>> >> > >> +        consumer >>=3D IOM_DDI_CONSUMER_SHIFT(tc_port);
>> >> > >> +
>> >> > >> +        /*
>> >> > >> +         * Bspec instructs to select first available DDI, but o=
ur driver is not
>> >> > >> +         * ready for such dynamic allocation yet. For now, we f=
orce a "static"
>> >> > >> +         * allocation: map the physical port (where HPD happens=
) to the
>> >> > >> +         * encoder's DDI (logical TC port, represented by tc_po=
rt).
>> >> > >> +         */
>> >> > >> +        expected_consumer =3D IOM_DDI_CONSUMER_STATIC_TC(tc_por=
t);
>> >> > >> +        expected_consumer >>=3D IOM_DDI_CONSUMER_SHIFT(tc_port)=
;
>> >>=20
>> >> One more thing occured to me: why can't this allocate any free DDI? I=
OW
>> >> does the address of DDI_BUF_CTL (aka DDI_CTL_DE) used for tc_port dep=
end
>> >> on which DDI gets allocated (or is there any other dependency on whic=
h
>> >> DDI got allocated)? AFAICS there is no such dependency and the above
>> >> address would be DDI_BUF_CTL(encoder->port) regardless of the allocat=
ed
>> >> DDI. In that case any free DDI could be allocated here.
>> >
>> >Ok, checking this again, DDI_BUF_CTL etc. DDI register addresses will
>> >depend on the allocated DDI. So nvm the above, the mapping needs to
>> >stay 1:1 for now until all the DDI reg accesses are converted to index
>> >the registers with the allocated DDI index.
>>=20
>> As far as I understand this, especially after talking with Windows
>> folks, the allocated DDI will define the port index for the whole
>> programming, including the registers used to program the PHY - and the
>> hardware would take care of routing to the correct PHY.
>
>Correct, that's how I also understood it after "checking this again".
>
>> Thus, it appears we would need to do the allocation at hotplug time,
>> like saying "this PHY will be driven by DDI x".
>
>To clarify, if the mapping is 1:1, as in this patch, the allocation can
>be done statically during driver loading as discussed earlier. This is
>the only way it will work atm, because the DDI allocation cannot fail
>during runtime.

Two scenarios that come to mind about doing this on probe time:

  1) The driver could be loaded with nothing yet attached to the legacy
     connector.  However, I believe the TCSS doesn't require the
     connector to be attached for the allocation to work.  So, we are
     probably fine here.

  2) If the legacy connector is never used during the driver's lifetime,
     we are basically holding a resource that could have been used by a
     DP-alt/TBT connection.

For the dynamic feature (to be implemented in the future), how to you
see this?

  1) Should we allocate the DDI at HPD time and fail report the
     connector as disconnected on failure?
  2) Should we allocate the DDI as part of the atomic check phase and
     fail the modeset if we can't do it?
  3) Should we allocate the DDI as part of the atomic tail (hardware
     commit) and raise errors if the allocation fails?

Another question: once we implement the dynamic feature, this "allocate
on probe time" thing will have to go away, right?  In that case, we
would basically suffer the same runtime risks that we would be trying to
avoid, no?

Perhaps I'm missing something, but, if not: I wonder if doing the
"allocate on probe time" thing is really worth implementing, since it
will be a "temporary" thing that would be reverted later.  In that case,
we could try implementing the static allocation in the same place where
dynamic allocation would happen.

>
>> One of the reasons I think we can't allocate a free DDI at the moment is
>> that the driver is expecting a 1:1 static mapping for HPD interations.
>> We will neeed to make the driver aware of the mapping in order to use
>> the correct encoder when handling HPD events.
>
>Again clarifying, that the above is true only for legacy connectors. IOW
>for a TBT/DP-alt connector, where IOM does the DDI allocation, the HPD
>IRQ delivered to the driver will be already according to the allocated
>DDI. That is those connectors are _different_ wrt. to the mapping
>requirement than the dynamic legacy connectors, for those TBT/DP-alt
>connectors the DDI registers will be accessed based on the
>tc_port/encoder->port to which the HPD IRQ is delivered.

That's my understanding as well.

--
Gustavo Sousa
