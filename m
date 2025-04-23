Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6647A98AB7
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 15:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A8310E20A;
	Wed, 23 Apr 2025 13:18:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F/gcv39e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B18210E0BD;
 Wed, 23 Apr 2025 13:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745414299; x=1776950299;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mE9pkK4jhRlXvfnLtr9RptVE1VPICu2UAHiGuwi/YGI=;
 b=F/gcv39eG2YSyxic5XeCHpUgkRWw2dHEIM5hw+VVb5PSiNim42NX2tTG
 ERqcZrYGeplejXxlU9T6KbU2YaRd1w8YVbzCwpvsekpdZdBgC0Do6Y+UP
 XzSSPxj8c+OafeuzgQrOVHz+FqGAHjOfi+JCfHJP2DJROAKB6YVxaVpSi
 jLgqO1Tz7awJgdt4aKlCKQGuC9HPgk6M+yeVvkFaP13l3TYl1e39rX1wo
 YDNKyXGKSMIjv6qVC42FP+d/uSjNl5/u4Vw4l+kfoflK+YiKLdTOdRBbz
 MBU4lFs8hhf2JkGQ5Kz9BSnblfzYPacl6/ThkAJkGd9AMIUv9uVE9Eqa2 Q==;
X-CSE-ConnectionGUID: UJ4SsFbhTPCQHWY2XYnZEw==
X-CSE-MsgGUID: DS/UJ8j1TBawtObUQLsA8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="47136575"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="47136575"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 06:18:18 -0700
X-CSE-ConnectionGUID: G9PX5KHlSsSZyzMe6RZvtQ==
X-CSE-MsgGUID: ONYAilA+RD+wH8NqSWu/Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="169528315"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 06:18:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 06:18:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 06:18:16 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 06:18:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VhBR1cIhNOzTr9zdvdh78xyYZe4ZYencxNe0/uD009bvUiMxlOfl+c5zPpJ6u0C2aOEgWlOoqd6Jnf7P+JlxfhCGmYBXUFKBt3UBqOSwflqLhy7qAMiq6mamu5S75MjHMFlMzuFqAtJWC1RYOY9v2JTCMHlyxbXZsxEm04XRyQ/th7JimBh4EKgDyGeLQ1SPoeZSBE2jHJnM35IGzEGrVCinGL7nh99f2geg9k27Sq7dgaxz+LyTX8wNCQk6R/oYNoVQV6Gvf1fbU7ArWz2yLv5upVBIuNQVApqlCkK4YjzXxQ5vceI1dN/o0Y31tiODzE1jdyUnm4Q/xt645PTNqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cbDeHuE9dN5X1PVEuPjgQqFQWtIjORavg98r/Dq0vzk=;
 b=AXOYLdTam+M0nOMhTcT8eM06QOfmz++8PDezz9a833VNKUnsEnIATzynF29LZ9eM8oBQOrc8C8rLcFu7vVTfQONdOodo2XtMZcKGox7Lac/L10z2oZA0ezdXAEMeylSkIGrUN7yD9UOv7Xs8wI/eO3xJpF4mVzaD2v/76Sea/uQL4ibYG1/t2glWCW2IpB78E/T1jseFpF7EzoHQDhCNNpw6kmYiF8e9/i1Xn4f9J3MXsXcnJ01dSgRmbBuVLViH4zSwdZK6O7OEc/iDhEgFlNWKvcL1xJCvC12/Ttd5A1HXeJC9+JMUaTomIgdvZcktGBBDGYrkks44zXsTgqw8DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7987.namprd11.prod.outlook.com (2603:10b6:510:242::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Wed, 23 Apr
 2025 13:17:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 13:17:44 +0000
Message-ID: <4e9d1da5-3a5a-49c7-8117-8b43439b23ed@intel.com>
Date: Wed, 23 Apr 2025 18:47:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] drm/i915/vrr: Add functions to read out
 vmin/vmax stuff
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0022.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::29) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7987:EE_
X-MS-Office365-Filtering-Correlation-Id: e0e63693-da50-43d9-dc0d-08dd82693b97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aXpwTis2MlNxM1VBSGF3a2N4VWQ1SkpjbXE3Uk55Wkxkck8yeitRR3Nyakpj?=
 =?utf-8?B?QjB6bDFodWdXS2ZFRm0xdm1aRDlOMGlEQ3VxckNsMk1FYmhnNHFoSk9MU0RZ?=
 =?utf-8?B?aFZtcS8wTUhvT21IcHdnZUowT081eVQ3UXJ0R05pRzlDVmptYTFGZ01rVWd2?=
 =?utf-8?B?TDBvRkZrOEJSSDBFbVBTa0tON2tCRnpFZGRBbTgxVFVvUkNRN1hod2VmeElk?=
 =?utf-8?B?T2VoSHBadk9yaFZIMzd6eU52L0F0WVFib0s0QnJkWlpDazVZNFdCdVc0TDh6?=
 =?utf-8?B?emRpZDZhOVhQMjBRZ0dWdTZOYVQrcmVMMXNRNmdMQ0kxeUU1UEdYSlF0RGdN?=
 =?utf-8?B?K0lMOWd2Y2pqUGF1V3FINDlDWWxuelE2SW5iQk1NWGlJaXEzUlU3RTVpL0Ni?=
 =?utf-8?B?VzF4a0s1SDlLQnRvZFlSZlFsbnNMb1NlWDJWNTdtb2p4N0MyNjN5dld1Q0dQ?=
 =?utf-8?B?eUxMMWQ4dmh6U0QxUXlPNStENE1XaFZaWUd1VGhlajRyVXZiZXZFdkRSejBL?=
 =?utf-8?B?aHlKVTZyeWV2b3U4YU5YTGdNbjZKSlZTREI0OVZIVnREMkw5OUhKSFlqWE5o?=
 =?utf-8?B?aSt3SFdlNGpPckNIaThId2IzQ092djc2dUVoZENrL1pnZ1g2bFdyT3FrU0o2?=
 =?utf-8?B?a1kxbXhUMis3TzlCWU1oa01HRWx2ZFJBYStkK2RsNmxDTTB1REIvQ1htWWtj?=
 =?utf-8?B?bXpSOTlRbHJXZTRMZ3RxalNOZUwzSFU0VGVJaUtndTAra1NJYkxXdjlJRm5V?=
 =?utf-8?B?cGR3Z01iMnRkaU5DYnNlUUlvbWVxaXA3QzEyWWxmZEtHUTR6U2FJS0xWOW9C?=
 =?utf-8?B?SEMvUjJTRnp6S0VnNnpobGJvc2JhcXUzN1BodEw0d2NmVlpmMEM5aFI4eXMz?=
 =?utf-8?B?dXptT0VIRVdUYmlvUzlUM0hrV3hKTnFlMy8wZUZ0RFlvZVRwRVVYSU1KUVJu?=
 =?utf-8?B?MHRoZGR3Z1JwWjZtQ3paUHMrT0FPcmh6cjZCTGtUcXRTSnRvT3Z5N2tBeFht?=
 =?utf-8?B?RUh3VzFvZy83R285YjN5ak1WR28rUDMvanhpcHNDUHRKS01BaFVDdCtOdkNI?=
 =?utf-8?B?UXduU1FJcm5qTUtBNTNDTm1wV3dERW5wS0FURmhZYTRPYkFUUlRPR0dQVk9E?=
 =?utf-8?B?SXR3Z0ZGcnc5MW11TmZ4OW1ZdndnL1hjbDFVNlVWUkJHZTRubTVPd3Y0TXht?=
 =?utf-8?B?M0R6NGovdDRsSFZYVUhoakJDeE92Y3liQUxFSDloS1A2OUpWcWhjTkpoZ01u?=
 =?utf-8?B?cittQ0l3Y3FsYjk5UHZSS2Y3VVQwSjlYMmxFUWMvQ3p3azI3bEQ2amNwdXJV?=
 =?utf-8?B?UjZocnhVQkt5WWI2OVV0MllKVGRnTVJJaVJ2UWRtdUozN0U0WTlYcEdHdTZC?=
 =?utf-8?B?TXlUSVNnWHJRMTJNV2RYRTJjV2htaEtJMGZlcVZGQlFnbnNreDhzaUZKcmFQ?=
 =?utf-8?B?QjVtdkdaVTdxL0tUZmVDM1NwOHpQb1JVaWFxZ3laQnpHM1ArM3hkYmpxbEZM?=
 =?utf-8?B?cWQyTGRMaEFnU2lnS056THdHK3pRRFRXMithdU44S2N1amVCNDd4VEcrbGpr?=
 =?utf-8?B?eEl5TWJaTWEvdXRhVlQvNVhrN2NFaWxQRmFxTzJhZHpsdUF5dHp3NW1ld0xM?=
 =?utf-8?B?bWQ4d2Y5TkZVVmxpS3pXQlFVUUlOZ25mSjladTlCNWhjSmlOS3p5NFlLRHBj?=
 =?utf-8?B?b0YyeEQwV29JWklNaEo0NklzVjEyY1BTSG1URzc5N2FHNEJVdlBvR1hHMGN3?=
 =?utf-8?B?Z2VBNGxFM3VSd0VIQUNXcU9hVVZWUXBwQ0h3TWMvYjNtUi9qV0tLUjdXb0tB?=
 =?utf-8?B?TFZFWldBV0pQcVhXb2R2TW9UazdGM00xUS9xdkFGRjFtaE16b0JLbDB1TDc3?=
 =?utf-8?B?R0k1TnY0QW1pZTNKOWlIZ2NtTmdIMUk1UWU4WWNqaXE0djJLcnhtQnh2M1l6?=
 =?utf-8?Q?LtCaq6+m98g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnhpY29jeml2K2pHc3VISW83RFJvbDhxVDlkNHdhWTRjU3VMN2NtNWszcFBq?=
 =?utf-8?B?bmRUNjBXeldKMmJHS1FFN3NzSzNEcm8wRk1nZDg0ZXhwVTJXZXRCemJyMWxq?=
 =?utf-8?B?eHdwa3pwNnc0ZVZaTmdNcThkdjU1TjRIRTB1eVpGY2Z0RHd3WGZ5MWxQelVV?=
 =?utf-8?B?eHY5SjdRZjdwZVhwL0I3TFBXV21uM3FHcTMvU3ZGQWp1NEt1R2RtalhMSU9Y?=
 =?utf-8?B?emgxQ2VEa2MxamhucDBiKzlLcWw0NCtxSVVQa2lnUkVGKy9jWHBOdnVCOU82?=
 =?utf-8?B?WnpTNzB5V3VXS3BLTThMQTVpZzlGNmJkTTB3VS92MDI5UUFYVTZ1ekd2QXk3?=
 =?utf-8?B?VXQ2NjZRaUw0VC9DcG1TcmkzT21wS0d1bWFMU1VSLzIzZ05mMVZFbGY1Znkv?=
 =?utf-8?B?cTJkdFkxUHhCei9DMkp0NjVpbHptbXpsQitScXYyVkg3dFhuZytvOWVaSjlS?=
 =?utf-8?B?OEt3ZXYwRnlYZ2FLUTZXcHAwVi9GRFJ3dnFpN1g0Sk9abHMrRUpHNStqeTdR?=
 =?utf-8?B?Zkt3Y2Y3SzhSL2RlN05uUzVKWXFqb25IK3d1MXYyTGE1cEx3N21xT3FjZlE2?=
 =?utf-8?B?Y1pFR3NJckxtQitVU085ZEtBQm8wL2tEVGRvMmlJRTB1OHhmMmQvTjV2L0FQ?=
 =?utf-8?B?dkc3eXJySGllQVJmYWc4QVZHS2hIOTRTeXhVY0E2cUtIL3FudnVVdFRHMDR5?=
 =?utf-8?B?OWdJbnR1VmV5YlZ1aDBzU3lqdWl5eE5YYmRHa3ppMWRpRHBaN0JKbkVPZzVS?=
 =?utf-8?B?UTZoMENNTDBkRGhaTlFUTGJYaEdtMkt6MnZRUjJqT1gwVzZGTVNMM0RUbnJt?=
 =?utf-8?B?QXhWS0FVNTZMNHVHcGpsTDEzR2IwYnZ6QkE5Zllyc1FXQStoaVBvWXNYMENh?=
 =?utf-8?B?TjZvdkNnM1FRbzZIQUUzZkQ3ZWtPNTc0aFRqU25VYkFXcEt4TjFud0FnRWp6?=
 =?utf-8?B?K2VEcjhQMVA4R2pWSXRNQWJCRlRHRjEyZ0JJTm1GMC9oQ1M3SERDK2RnbFlH?=
 =?utf-8?B?UHRmK1pRcVllUHF6cSs4TlB3Z0F5Q05FRjZreHNMN1hKZWh4OUU5WjJ3RWNu?=
 =?utf-8?B?Wk5ZM09XSDhXakFVSGhNaTREdkZSR0NMeExNamdoUmpTK2pFemh3djFiTnhD?=
 =?utf-8?B?clNrUHVBVGFPckNIZTVWZmg5dmM5TDgzVU9TZGt1b3NKRWtBc2EzNExONFU5?=
 =?utf-8?B?TVN5a0VGeUNxN3VmakxCT20zMFZDdWhFSGJkbFNLR0M4Q0tGejhSODE2bng0?=
 =?utf-8?B?SUUwTlREb1YxSXA2TG1JT05qNGpSVy9iTHNKL1hlVGZMTDhkN0lvVHVyWVZ2?=
 =?utf-8?B?cDFocmNEbFBXcTJySjFsazNibHBrc0dDN1N3NFdwR3BqUXhkb0tMdTlBdUxi?=
 =?utf-8?B?ZHRSbDg1UW1MYmxEYUNES2NwUVBpY3AwUXByR3hFR1NlK0JIRHBrOFo2elND?=
 =?utf-8?B?WGNMMFdIN25QMWM0V1VCckJrMVorMEs1RlZWY0E5akFwSUNJdkFqRkNSd3h6?=
 =?utf-8?B?RW5ZZXNCR1kzVEtkbU1laUlqOEJaelhMcDZmSGIwdWJkeE4zY09IZHgrZHht?=
 =?utf-8?B?c1ZUSE5HT1E5S0FQNVNEMWhZNWE1Q29wd1M5QzczNFdjeko3UlZkUDVKc05u?=
 =?utf-8?B?M1pVNCtUZzl3RFEvV3N4SW5DR01WajBMTjhtNlpEYWowZmlXMXlhQXkrb2Nk?=
 =?utf-8?B?RXBWYzFxSGtBUUUxT2o2NzA2UGlBQnVSMmtEblloS0JqL2ZjaXh4UzlhZnJQ?=
 =?utf-8?B?NmJYanVPWGJlQ29HSklsdWl0MHFiUWhxdWtnT2xoMEZTRmh0SklqUEpKMUxN?=
 =?utf-8?B?azNVTGdESFk3dE1FalpuY1draDJlUXRFRzJXUFB1anhBa1JvQnBsUnpyaTdC?=
 =?utf-8?B?ZmRBT1JoU1lCaTB3UTlwU0ZudUxxSFUyNXhRQlorVmlNbEJPTy9uV0ErZkd3?=
 =?utf-8?B?RnY1RDhnblUzU0hsMUZGN3BQaEFzYU5DZHVERnBMNnNNcDA4cEpJWWV3cEw5?=
 =?utf-8?B?c0g5b3V2Mkk5em9wQVc3OWRMY1ZlSzZqRkQrT0Yzam5uK3VsU0d5Y1IyQzB6?=
 =?utf-8?B?eDExRFpyT3dvQUx1cmd5dmhwelpiWlBwVVNGN1FLdlgvQmRTS1l3c3JLV1Q3?=
 =?utf-8?B?WU5MMUgrVXNFazNUbEE2UUNPRTZRaGs5eTNvQXpEK0l3YTB3alA1SjZxd09r?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0e63693-da50-43d9-dc0d-08dd82693b97
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 13:17:44.3499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HoAITi3KOCMtsMbI+Rq3qrHeDXkSqswsUf186bePF8We0uWcscMgUPddKh+1MBFLgD6OorjD9QiZrCr6ETNOImpAYARZxCxu99offsuzxnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7987
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Calculate delayed vblank start position with the help of added
> vmin/vmax stuff for next frame and final computation.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 57 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h      |  5 ++
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 44 ++++++++++++++
>   3 files changed, 106 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index adfd231eb578..1c0eaa08927b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -746,3 +746,60 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   	if (crtc_state->vrr.enable)
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
> +
> +int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp;
> +
> +	tmp = intel_de_read(display,
> +			    TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(display, cpu_transcoder));

These might be needing a check for HAS_DC_BALANCE. This might explain 
the BAT issues.

Regards,

Ankit

> +
> +	if (REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_CNT_MASK, tmp) == 0)
> +		return -1;
> +
> +	return intel_vrr_vblank_start(crtc_state,
> +				      REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_MASK, tmp) + 1);
> +}
> +
> +int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp;
> +
> +	tmp = intel_de_read(display,
> +			    TRANS_VRR_DCB_ADJ_VMAX_CFG(display, cpu_transcoder));
> +
> +	if (REG_FIELD_GET(VRR_DCB_ADJ_VMAX_CNT_MASK, tmp) == 0)
> +		return -1;
> +
> +	return intel_vrr_vblank_start(crtc_state,
> +				      REG_FIELD_GET(VRR_DCB_ADJ_VMAX_MASK, tmp) + 1);
> +}
> +
> +int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp;
> +
> +	tmp = intel_de_read(display,
> +			    TRANS_VRR_FLIPLINE_DCB(display, cpu_transcoder));
> +
> +	return intel_vrr_vblank_start(crtc_state,
> +				      REG_FIELD_GET(VRR_FLIPLINE_DCB_MASK, tmp) + 1);
> +}
> +
> +int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp;
> +
> +	tmp = intel_de_read(display, TRANS_VRR_VMAX_DCB(display, cpu_transcoder));
> +
> +	return intel_vrr_vblank_start(crtc_state,
> +				      REG_FIELD_GET(VRR_VMAX_DCB_MASK, tmp) + 1);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 38bf9996b883..e62b8b50aec6 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -42,4 +42,9 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>   
> +int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
> +
>   #endif /* __INTEL_VRR_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index 6ed0e0dc97e7..2214c10d4084 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -9,6 +9,50 @@
>   #include "intel_display_reg_defs.h"
>   
>   /* VRR registers */
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A		0x604D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B		0x614D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_C		0x624D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_D		0x634D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_E		0x6B4D4
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(dev_priv, trans)	\
> +					_MMIO_TRANS2(dev_priv, \
> +						     trans, \
> +						     _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A)
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A			0x604D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B			0x614D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_C			0x624D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_D			0x634D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_E			0x6B4D8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _TRANS_VRR_DCB_ADJ_VMAX_CFG_A)
> +
> +#define _TRANS_VRR_FLIPLINE_DCB_A		0x60418
> +#define _TRANS_VRR_FLIPLINE_DCB_B		0x61418
> +#define _TRANS_VRR_FLIPLINE_DCB_C		0x62418
> +#define _TRANS_VRR_FLIPLINE_DCB_D		0x63418
> +#define _TRANS_VRR_FLIPLINE_DCB_E		0x6B418
> +#define TRANS_VRR_FLIPLINE_DCB(dev_priv, trans) _MMIO_TRANS2(dev_priv, \
> +							     trans, \
> +							     _TRANS_VRR_FLIPLINE_DCB_A)
> +
> +#define _TRANS_VRR_VMAX_DCB_A			0x60414
> +#define _TRANS_VRR_VMAX_DCB_B			0x61414
> +#define _TRANS_VRR_VMAX_DCB_C			0x62414
> +#define _TRANS_VRR_VMAX_DCB_D			0x63414
> +#define _TRANS_VRR_VMAX_DCB_E			0x6B414
> +#define TRANS_VRR_VMAX_DCB(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +							     trans, \
> +							     _TRANS_VRR_VMAX_DCB_A)
> +
> +#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
> +#define VRR_FLIPLINE_DCB_MASK			REG_GENMASK(19, 0)
> +#define VRR_VMAX_DCB_MASK			REG_GENMASK(19, 0)
> +
>   #define _TRANS_VRR_CTL_A			0x60420
>   #define _TRANS_VRR_CTL_B			0x61420
>   #define _TRANS_VRR_CTL_C			0x62420
