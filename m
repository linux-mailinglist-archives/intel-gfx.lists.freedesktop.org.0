Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D2A97C691
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 11:08:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6ACC10E6AC;
	Thu, 19 Sep 2024 09:08:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gn9n4DCv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15EE210E6AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 09:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726736935; x=1758272935;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E5jh65/p6lDSLtNy3uCEuriPMp+d8rSs0Znj0QvPFX8=;
 b=gn9n4DCvm44l5iF7K5hsharO13mSjJi+rtWQ3BoGYOfkHIRyVVzexa1e
 i+AbByooJmYcnUUf6lzBFX4S4nzTtrsoKIuh5Cuw7i0s2VHXDECLQTWOZ
 2WyhNjgeKfmLbboFBeiDraejwQhes+dnrT4sbQ6xwVAoDoBc3EUV0gW4v
 wKaPVy/VjazTIIZWuONbMfe1XAI22V0v/Df+cDVsen9C6W1EzlrLXg5kz
 g0mCgzfoEdmnQQah+oLuKr3Z7VqMPLQGsVTHLivMoUePGJYIUXCu7hIHt
 VoMCMG+P6iwW8N+pX4SeaHCFsOxVU6H87xWz5EDZBFEBa6xxMpQ0dSHIG g==;
X-CSE-ConnectionGUID: V/fCSafwQnuyBKY8f/QAYg==
X-CSE-MsgGUID: bHsosqL/TbeEX3ZaFKQngQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25840159"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="25840159"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 02:08:55 -0700
X-CSE-ConnectionGUID: NHQmosemSjafUvg6fUW+lA==
X-CSE-MsgGUID: 9Kgrrwh7QXe1pYzcH9A8Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="70163283"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 02:08:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 02:08:54 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 02:08:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 02:08:54 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 02:08:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QXeVovfViNeWGFEES4unzZXHeIB/Lj6GMBnazhdGRtury6Un8uPevRiAz2estrTj+BLLyFnNKyj/SVDEJFx/5a3iqYeVpG8fH9/2fWuH9sqtgduOaDSrz/u0eJDUsqouLgQMkM/EIW0EF955nbf/OtmsIsi/kxCOwypw5Q3AEVTiCquBVb7nGeOiEiYzNBrsLRG9pjvz2JYoLHEKV1aC2frEb6tAgk06jyu/nVnku98s0oK7O+gMsnyzQIBSFtMM4zAXs14o1KEI2tubaiBPTr8TihE4N6QUk2ExuFP3R6kn3DrkZ1anjELO1NshCnpW+KtmALBYdwduCQ9b7xiddw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A6iirKuoZcQTHln03ffS9PhyJpWTiEiyVEw4tVSC1zY=;
 b=ghf+/WRgweTXOnXnPeJrJkCiZz+N7V1qNFNVDUWxfBolxcREZUWgu9lsD+R/kanKavjo+EsQg5JDp6WVvv6EIvcj+ZRIUDfzq1LEGd8Hw7RcmiKP+trd+kNxrpp5jywFoq16iHh0LI9OZmRztX9foAJu6trDq2DtxdSz3FfPmtlO1ukKmvhUwE71SdFVOAPnFyC1eZ5bMdggrN8zSR65QSo9rNpRJUcB9rC2tX/gOn8zLuTWxcUAMAsLvSjJ79sjP4s4R+hsAgQTOgx5ACAhifBWNOxhNTuhF9uIgSIFsW5mZqHsr3/Sv7SYDatiCnc5BTyRxjCwWyj7PcxKmVY2LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by DM6PR11MB4530.namprd11.prod.outlook.com (2603:10b6:5:2a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.21; Thu, 19 Sep
 2024 09:08:41 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%7]) with mapi id 15.20.7982.012; Thu, 19 Sep 2024
 09:08:40 +0000
Message-ID: <998b8ae8-9370-4fad-919c-eb68ccb5c2d3@intel.com>
Date: Thu, 19 Sep 2024 14:38:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/selftests: Implement frequency check for
 energy reading validation
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <anshuman.gupta@intel.com>
CC: <karthik.poosa@intel.com>, <sai.teja.pottumuttu@intel.com>
References: <20240919082339.1310635-1-sk.anirban@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20240919082339.1310635-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0075.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::16) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|DM6PR11MB4530:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fae9c77-95ac-4ab8-a230-08dcd88aa724
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2hkK09oL3UxTUVJMVRqVzJBOGtoejcwVnhSMWt3OVEyY21tZ2V0UExva0M4?=
 =?utf-8?B?bCtFVGRvendUc1VPdERDNEdROFJ2Q0pCR2dGa0Q3ZGtNa2RiSnhud3d4dFFu?=
 =?utf-8?B?Z3QyQ25SWVpyckRnNUZvSHl3TzdHTCtUaU93WjMrM2w0M1FTS2Eyd2kxVzA2?=
 =?utf-8?B?YngrWVRNYUxkaysvc2JKRFIrNTBnNEJZckxpWmVzY0hHQk9iOTBKemQvdmd2?=
 =?utf-8?B?OE93WXlXTjBnR2xoR2dyOGhrSHBUenRYQ1FXOEhVejYxWEdjVGpCWnc1amNv?=
 =?utf-8?B?cW1nTlFuWW5FUW1IK04vREp4NGJ4WEsvbitTWkc4N0htVTNzdVhObDBTYW1E?=
 =?utf-8?B?OUcwZVJ5Nzlpbm9Za2ZLZHd3WCtPc3JVSlFiVy90Z0I3cjBnU2FkMTFobkY0?=
 =?utf-8?B?N2N6T2lSSDJiOFFWdy9ROFZCZklkT3VLRmk5ZUZ6MysxRTlkN2tqVTVGQXIv?=
 =?utf-8?B?b0NCV29HUVNqQ3pZL2ZDYm4xWlhyTVBQOWF1SEJwenRPSUNpNGRlcytKTm43?=
 =?utf-8?B?bWh3WTd5aTFSZjI4eHFqTkpMK1RYS2RNa2pEUVMxWU0ybVV2cEcvL3JzSzBo?=
 =?utf-8?B?c1NKN2VEaVh1STlmQUE1ajhRajRZa3NEUDhEYWVwZXBBRVVLd2RoeHdtWEsy?=
 =?utf-8?B?SXh3ZWpLU2JNeXZzWkthNEdyQlo4c2lsa2tzWE9IWVNTeUE1WkFCcjZYUE80?=
 =?utf-8?B?Vi9jb2dXT3VTRWUyWG5mVVlRWFRnRFRCZHNYN0duVklUM2xocTcxdml4ZzNN?=
 =?utf-8?B?Vms2M2c5U3EvK2xqTzZ0ZXdFaVlqaXhIMW5IMnF4dVRLaTVzdmhxeHRLa1M1?=
 =?utf-8?B?OTRIK0c4cmdCNVA2eHgwbWJJL0hJSmxoam1Sa3FwZVVHakwrOUxOakhDaW1S?=
 =?utf-8?B?S3ZxWCs4ejRsVUx0TnF6Uks2MmpQTXhHZGFJNnlUZlRYbGJzMWVoQllGMThV?=
 =?utf-8?B?bXRoNzFlTW1tdUMzZW1uQmZmUHJCR2htUXNCbXJ4S3dVMWR4Ymk1ZXYrRnVM?=
 =?utf-8?B?NWJHS1FneGNYTWFUT0hSK1pYbVdjRWlxdXJlSVZtR0NaaFVSSDNMUTJNQStD?=
 =?utf-8?B?bnlCajhlbENMbDN0ZWhHaEhYeHhTOXF4MnlKbG9SUDZUMGY2a05KekZIQm1I?=
 =?utf-8?B?NGxWaUYvVFY5dm1YODVickRTSGlZZ3A3aTlFeDNpdHhzRFQvZWk4TS9IWFY5?=
 =?utf-8?B?cjZJKzNkTTZkSWFtVXRXaDl6SUFGRCtIVnhrcVhNM0x6RGZUMlNyWWpxdHpB?=
 =?utf-8?B?bUw0YmtSSTlscGE1VEhwMFV4L0VKQzZOQjY3aG1xb2s2V2d6WVIzdUZVSDJX?=
 =?utf-8?B?R0NXdU9lQndrMlBCU1lNS2xaS3lBMllXZmJpenNtendRcERTdUUvbmhrZk9y?=
 =?utf-8?B?N2FmdWQ4OFBQUWJqdXJmd3RsYkV2SDVjV1BUZ0U1YUhXWURnUWN1NnZLMVFx?=
 =?utf-8?B?S0xOajlFaUxqcFE3MDlXby9vdUlQaHViUjVHU04vOENIRmNqRDVUSXg3NjQv?=
 =?utf-8?B?UHp4aUhnQjV1M1ZBQTRBY1NKMG5BTUVXWjJ2OGNEb3o0Z3UzVUl3MXRLRzAz?=
 =?utf-8?B?a1djV3dud25VcXRnaXR3cFB5YjdPMXhORjFOS3BrVElTNFdlVkVmcGpkVFFH?=
 =?utf-8?B?dnpFZHIyUTVNSTloMW5zeU0vSjVEYXVIVTlDd0VaT1lmUEpVUDZPWWlrMU40?=
 =?utf-8?B?ZHRqY2QrdVRXTkVLMzd6UzdpUktweE81ZXBkQ1JZSjdzV2lOaU1wZmErcmw4?=
 =?utf-8?B?S1psVG85TU5zWHFVZXlMTUFCSGtuSEJvWk85TFpwTnlGYjY0N09lbnFBclFE?=
 =?utf-8?B?blFTOWpSVEpEbHV6Z2wwUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEdmLzZBTnBqL1Q2TkxJZm9rQ0M5ZElFOGRleHpwcGJTK2ZkMjFXazBqSmw4?=
 =?utf-8?B?N1grT0pSc1JteW9iaFFDUDhLUVNlQXE1Y2hxcVA1K2x1MFBzRUlTMDFIekhy?=
 =?utf-8?B?SXlyY0ZwTWt5MTFPMWlvRHVkeHVaTjRiOWRObG1QcWpLaWs5UmxIdzI0Q2lC?=
 =?utf-8?B?SDVBYUszdG5oQ01Jcm0yNUNEVXJmWnUrbldaYWMrdVhzcUptclg2K3kwVHhX?=
 =?utf-8?B?VFJtb2FYWjFyQTAwK3RVek1hVWkxVUFQV05MK3J5T3gxOTk5VStDaDlja2JS?=
 =?utf-8?B?TkpiNGJXYjRmOTN2WlFqQmMwRkhhM0dsR2c4TEJOeTByNWk1ZFhJSnR2TW1K?=
 =?utf-8?B?TXhkZ0RDTWVZSW9FMGM3MFZXZjh3N0hyaXdBOWdoenFVWGM2V015MFFVYnYx?=
 =?utf-8?B?WWFlSXBoaVJqam4xb2EyTURCQm1EU21qb3BLcW95djZVc25JaTJrUlNLMGhW?=
 =?utf-8?B?Mlk2WGhra3V3YzVkeEJadXNqQ3Z2ekt2SHV2dHByblRLTUVMTUkvWFFOZDJX?=
 =?utf-8?B?b083YVR6ajV5M01MeG05RkRTL0hqOVdJMkRjV2VmVm51RnNUYkM1R20zemVT?=
 =?utf-8?B?ekNPMEhMa3diL01NeC9sNFRYbDg0N0l5S3YyVncya0tocWtTMnNxVXhYcFpk?=
 =?utf-8?B?eDN2OGlmWTYrZzMvYWpwQS9MUGFJWW5FUWtyK3lKR21ZTWxEUnNMblhqZE9y?=
 =?utf-8?B?cUs2Rlp0bWJKVmkzNjJWNnd5TzBKTThvR242TTBEaGQ0S0tzdWdTZW1JWGkz?=
 =?utf-8?B?UE5tYSsyK253RkQvZVpJdGcvN3NRc3pVMUpRUkJVcmJ5V1RsU0dUTXo1M25s?=
 =?utf-8?B?aU5QQ2dwVG9mSm5UUGt1OTZQZ2h2TTU3V3llMlR4aVR4SWtCVkdqTzVnTkg1?=
 =?utf-8?B?aHpqVnE2a3k4aEJEN2gwUlI2M3QweUhhZzg5YUw5VXdrVkZoVmlPVGNiamYw?=
 =?utf-8?B?NjJ2K1RHbm5UUXMvbTdJVlZoUzIxWlh3TU9aR0FQOEw2MFhPc2IycTY2MHJ2?=
 =?utf-8?B?QnhicXpXR1RaVnU2eHFkWTA0ejRBdkRra21aMlhReW9oTkJ3YnVWK3pvYzR2?=
 =?utf-8?B?QjIzSHcwRHRpQWpNZUhTMFl4L0M1Qk5VcDJRVzR0aE90WWV1Tml5YTZGcWtZ?=
 =?utf-8?B?UmU0eXJzQWNzSERZQWFMTnRReTJ1NmM0SEZCdjJlaEU4OEhydTVRREhwUzNS?=
 =?utf-8?B?YXNzbWRTdzNhY09wcHNiRzFJem5Ha0N5WThwOXUxWm9xTWQwbXVZaURxWWtz?=
 =?utf-8?B?NHFtbEtjNUtzYXhLeUVTQklmcnpqbzNHM1h2T0Vrd0RBR0NmSnU3Vmx6MlhG?=
 =?utf-8?B?bVhPN0RKQ0x4Sk9BT3NUZDMxbHdYRWRkMTdyeUxSa2F6c05PcnFOOXc4R3NF?=
 =?utf-8?B?YitXeHpaR3NUZTFBcGNmV2ZaQXBnWWRxekZJWGJ1WTBwQ3N4QXBNT3NJUGpY?=
 =?utf-8?B?NExUZGlJajhIZHlNUUZ6aTN4UGVTRmRxbHN6UksvUnZVZkhBai94V3Yxcmhk?=
 =?utf-8?B?RWdIODlJY25JQWtnb1Q0dk1vTnZRV0NNSEZhdVhreEdXc3RrSmtBUkZUMVRp?=
 =?utf-8?B?Vjhnemt4bFlVMFZoMlpCQktYNTF4NGxEWi9lUkFmTUM3Nmk2MVRoLzcrZEFF?=
 =?utf-8?B?ZEFuN2ZheXdhVnBGSllTMmxvTWxRanBYQ0V2VytMS2ZZT3kyS3dXVVY4NHFi?=
 =?utf-8?B?N2VGMDdKUHVtRVlldmM5eTlsbnN6dzVIK2lJbWZVWVZSeWFXNXBDTGZRS0to?=
 =?utf-8?B?VHZpejUxZHZuQlhzYXBRcjJlcmJ0NEZsQ201TFN4WXhncU5ZZlF4aGpCQTNP?=
 =?utf-8?B?WGtIcmZ4QzIxZ29CaW1qdHdrYUIwMEFxZk9lRnlHOXFrYThlZ21zcVVDYnBX?=
 =?utf-8?B?Mzk5RXBFbDdXQ09DYnExOS9QYy8xaUlQR2YrQ3lBQUFoenN0dUV4bXMxNm85?=
 =?utf-8?B?bnRjTnRyNTIrakcxcHQ0OVlzRTE5cjd0dDBSS3lUY3hEUi9zdUlnSWcrQUhW?=
 =?utf-8?B?RzBPazN2UnVIeW9UbCs3N2twdGdEcmJtZG0zdHBneUlGK1RnY01PdGR1bmg4?=
 =?utf-8?B?czJCS2lncGptMHlTQ3JPMVVGRE5tNFBNMllMUGlxTDROV1dzd0g3S0xsT0dI?=
 =?utf-8?B?dEk0V0FicDhYeGFRQVVHazF6aEVSRlBMemZkNXFGVDlQN2M0c1QwMU1aY2FG?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fae9c77-95ac-4ab8-a230-08dcd88aa724
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2024 09:08:40.3941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hHojWnH/+ZqxWeHABI0NfV79eNHk7ykDSu2oHlYoUZcaYE3xDB3mt2+q8/ed/s6nF3OAakFjOKQHnDM/Bn3PgRJiKrqbrMqAftBQDQFjphE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4530
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


On 19-09-2024 13:53, Sk Anirban wrote:
> This commit introduces a frequency check mechanism aimed at ensuring
> the accuracy of energy readings.
>
> v2:
>    - Improved commit message.
> v3:
>    - Used pr_err log to display frequency. (Anshuman)
>    - Sorted headers alphabetically. (Sai Teja)
>
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 1aa1446c8fb0..8fd6be7b826e 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -8,6 +8,7 @@
>   #include "intel_gpu_commands.h"
>   #include "intel_gt_requests.h"
>   #include "intel_ring.h"
> +#include "intel_rps.h"
>   #include "selftest_rc6.h"
>   
>   #include "selftests/i915_random.h"
> @@ -38,6 +39,8 @@ int live_rc6_manual(void *arg)
>   	ktime_t dt;
>   	u64 res[2];
>   	int err = 0;
> +	u32 rc0_freq, rc6_freq;
> +	struct intel_rps *rps = &gt->rps;
>   
>   	/*
>   	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
> @@ -66,6 +69,7 @@ int live_rc6_manual(void *arg)
>   	rc0_power = librapl_energy_uJ() - rc0_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
> +	rc0_freq = intel_rps_read_actual_frequency(rps);
>   	if ((res[1] - res[0]) >> 10) {
>   		pr_err("RC6 residency increased by %lldus while disabled for 1000ms!\n",
>   		       (res[1] - res[0]) >> 10);
> @@ -91,6 +95,7 @@ int live_rc6_manual(void *arg)
>   	dt = ktime_get();
>   	rc6_power = librapl_energy_uJ();
>   	msleep(100);
> +	rc6_freq = intel_rps_read_actual_frequency(rps);
>   	rc6_power = librapl_energy_uJ() - rc6_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
> @@ -108,7 +113,8 @@ int live_rc6_manual(void *arg)
>   		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
>   			rc0_power, rc6_power);
>   		if (2 * rc6_power > rc0_power) {
> -			pr_err("GPU leaked energy while in RC6!\n");
> +			pr_err("GPU leaked energy while in RC6!\nGPU Freq: %u in RC6 and %u in RC0\n",

Probably we could have the complete log in a single line without having 
\n in between? We usually never split logs like this as far as I know.

But other than that, looks good.

Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

> +			       rc6_freq, rc0_freq);
>   			err = -EINVAL;
>   			goto out_unlock;
>   		}
