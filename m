Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C204CACCB50
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 18:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53FC110E74C;
	Tue,  3 Jun 2025 16:31:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mSPRDJC2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F9CF10E91A;
 Tue,  3 Jun 2025 16:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748968258; x=1780504258;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9JRYgoCC9X/GpVt0bRrx+he83f36eesFvk7QGmV575A=;
 b=mSPRDJC2H3Ll0TDUhz/zYFZxcTQVQQ9+wS6pEzskrxTcmDLLIpzGN3p7
 JQoI1TKfKMGR9vkQPl/W0p1gvLPCmJtqHs8LRSl6sHAryF0kun0Uo17N0
 JnahpsgJaChX/fv+oB9S2HQ/5eTCPp9tjrR/HIKGZUegEGt717ExkubMM
 E90Wtf1IGoET4oPMxBT+IhIncpM+IvmoF6d8pV7Em2hcsUob+wuJ8ExAH
 f4DKYY3GGqTp+4xzzhUnmrSc5XuNwSFrhEkSWKjoJazKmZrPADvdeYgCs
 +kYngNzy69iZZz4RUSaP+4eki1PCu/hw2mmrmEoxAXnYv3hBxndTWWVOF w==;
X-CSE-ConnectionGUID: W8PewyqxTvu9z1/hgQdCIg==
X-CSE-MsgGUID: w2VE1zDiR6CozSSemD4UUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="61639114"
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="61639114"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 09:30:58 -0700
X-CSE-ConnectionGUID: oHKbyQ+QTrCbC9VDbrNW6w==
X-CSE-MsgGUID: By6AvdqWRUKl/NbXI0fwAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="150064277"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 09:30:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 09:30:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 3 Jun 2025 09:30:57 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.68)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 3 Jun 2025 09:30:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RBsKzfTk2W541OZ2KQ63l5pfM3uq3UWaRWu7ykBOn3CMNJ+9SAB3wGzdj0hnwRsQvBxc7ZQpj9pfTi9OmfiHRGWwBTEEvyWbKs7W7PrzKTv+PAvO0TB+KZUlB5mFmuOlJ7FrDOkiqHR1RVgpemT/zBN0LbQIDNjI2BHtgiglXUFLFPjhXM38woyIuAqNF2PCQNiNoTgv7VMX0MJSSnTLMrg4k0mbkEAcN3cJgREZ3SG1UmBHXa1n/yBIbCwKSMYPPo4kuLbAb2NWHBU/Wb+7Ictf8364btyX+JR09NS067uHFIUD0Ab4TRy8D6MuqxBn7y0VBvM9VFJpq2wllc2+8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ki1QVQJ+A0EeAeFg1DU1lVhdXmuAXW4K0cP+CkgkQVw=;
 b=aOq84DfEUOdkAeIbuaNPG4VHz9XCnrHZqxeUlGdy/9fiukNcAKe0O0ShMQrp0LLMtKhwsTVST3PO6mtc44SQ00s0BdDESKMLVvjCOzp8zEpR337RHm9tPqBl99tGErCEOGEzCf854xkfolw0QgyBq5qT47y6Ft5TVRdOql5rFzGEsVp7ScEEd/Zh8J8RjbKTCVuLP2h8ND6/N572c9Qvhjo4LuD/fdw5RXrPYIvycS8UZ/SEDawlOVdKX48zkSjQP2GivILwlp51nlLsTDRnqudIBGosLh/kX3/cHXX1jIt9RulgI+So+cRBSegUBhk8FsL7tYJoi3Mf2gdir0HB4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7705.namprd11.prod.outlook.com (2603:10b6:806:32f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.34; Tue, 3 Jun
 2025 16:30:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8769.033; Tue, 3 Jun 2025
 16:30:55 +0000
Message-ID: <2823143d-bf42-4dca-9ae7-e50c60ee5dfd@intel.com>
Date: Tue, 3 Jun 2025 22:00:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Fix u32 overflow in SNPS PHY HDMI PLL
 setup
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250528064557.4172149-1-dibin.moolakadan.subrahmanian@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250528064557.4172149-1-dibin.moolakadan.subrahmanian@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0172.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7705:EE_
X-MS-Office365-Filtering-Correlation-Id: ac07ae0d-4e20-40cf-2d5b-08dda2bc0322
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEZrR0l1b0ZaQ0ZOMFpGSzJVZkE5RFdZdVpGdmhYNit2UmFWY1ArcUhsVVJv?=
 =?utf-8?B?UGJ1ZTdVaS95MFdjMXJ6V0RPelJTandjZTV2Y3o0YTdNcEdDNjFwWUI5eldO?=
 =?utf-8?B?Vi9nTk1kWHR1Yzd3Y3gzOWVUWG1zQS81VjFPbko1RjZEbzFxam5NRFJka3ln?=
 =?utf-8?B?akNhcFNVcDJBVTJWM05zTHlDVzdvR2F0V3BiYXQ1aG1HamovdTBPbTYxSjVV?=
 =?utf-8?B?ams3Ymxaam4xeFRzSlhUNXNldnRMRTlCRmEyZUhSVkl1bUZ3WUZuNGd6MTBl?=
 =?utf-8?B?dFNRR25hVVFQR3VPdUpmRkxlS3VXRE8zN3MwMzFzWjdwK3JXUnJqbTRYbEJt?=
 =?utf-8?B?MEJtV09RNjdjbG1JVTZZSVZoT3ZGWkxDQ1Bjem52TDdEOGtNTWhxcXM1dU92?=
 =?utf-8?B?OGV1aTFMamZmTEZyTEluL2NlSlFFMks0cGtoNnpOL0NEU29GTDNEaXFaWDF6?=
 =?utf-8?B?MW1QYnRjUWdYU2VMalFUOFpKMngwVzFNVHlCZTZuYWVDVmdWQmxOZjdHWFUr?=
 =?utf-8?B?Vjl5ZjczSjNkM0x5cS9ubjlHR0ZTOVoyVVRPUVY4U3NNaVZlVlJQbnd2bGxF?=
 =?utf-8?B?THZ2ekx5d2JhRnVEZTFHUEdBR1k3V0Nub2puRC9jbVkwSmM1b0RyQmpkaXBt?=
 =?utf-8?B?UU8zc3pGeEdzd0VTWFhPNHFFTjZ1ZnNUNlhmYk4rQnpES0l1a2JjR0FGVmcx?=
 =?utf-8?B?Y2FNb1J4QTVWcmtyaitXV1hVUi9uZlB5YkRicGVTaVdYNk5jSWEwSzFMN1Yr?=
 =?utf-8?B?b3lWOUtCOFRRaWFtdUxmVTg0ZmNnZW42Znc4aEc3bFFtMDNFQVpmQ1RWY0hR?=
 =?utf-8?B?b0srM2Iwd3ZybGhBL0YwUnJ1SnFOOGg0N3A4N3QzaXpxU1ducnJ6QmhDZ1ZO?=
 =?utf-8?B?ZVJIdERiSFRUaE1ZTWtqK0N3YTFNYmd3RmdNTGhEZ3NzVmlhQTl3ODhvd1ha?=
 =?utf-8?B?ck9BaTVyUE5FakNZeHhCYXRSby9LaENScUVEVDJrNTRTWUtMUFJkdm9UcWJZ?=
 =?utf-8?B?TEwzbkM1aVRhQzNGd29Hc09zS0ljRmdMU2xmdHRDUTdSM3hMK0gydXNlT0t5?=
 =?utf-8?B?RlFWdCt1SXZFRzdLYUJ4QnhuTjllTjV5Y1BtS0RtVjkxR2s2YitXUWdRbkh3?=
 =?utf-8?B?Q3NXMTU4bHorYnIzUXBoYlgxejNzeHNFcUhwL2lQdzFlZC84QjI4RnBVbjU2?=
 =?utf-8?B?c212UGVvbUhseHVRU1JJcERzR2tNdDc2Qy8zcTVuWjA2V2VsYyszU2xUc1hw?=
 =?utf-8?B?eXpXZ29DM2p2TkpmS3F5RDNZellvUHZ4TGFYVStWamVVOVRRbFp1cTdKcEFC?=
 =?utf-8?B?M0ZFMTdxcGI2U3VVYXl5QzZNSVJNTzlTaTBuNmFyNjU0bUJBL0ltd3FjUGtF?=
 =?utf-8?B?dTJBZ3JXSE1jRUs1Zy9ITHRPVmpGWE1ML0RsN3JQQ2dwT0JLT0owNi84bDUz?=
 =?utf-8?B?Z1NKWUhQdkZxMXVycFFkU1lyYTlnSENOUkxjQnlGRzRZSjRBVk9PVExSdWtP?=
 =?utf-8?B?Z2JNSGlvaE9COTIxSU85cUJjaWF2UDFWMDJTdUVHVDNSRll1QytEK1h5Ulpx?=
 =?utf-8?B?eTErV3dXZzVYNG9xTDBIZ2VuRklpL24xVERydmtDeXZUMkFScUFNc25MUC9Z?=
 =?utf-8?B?YWt0eFNpQjVkUUNoVHkzalQvZ0Z1S0pEZ0NQczBFclBNVUo0M2JMMUprZHFG?=
 =?utf-8?B?c2hHNkI5T3FFU0ptektyK3kwUnFxMmo1eUVXdDNQR0xxbkZMSnVPM0FXWlBD?=
 =?utf-8?B?SklvN3RwdHM2ZDZwczYxRzdmdi9BQ0JSYUswK3lDRHhURlU3cnMwbm9tQ1J4?=
 =?utf-8?B?TW8ycGx0NjRjeVV0L1o2VDlQRXFYRm9ZY01TYzBvOTB0a2JSdHFCUXJpNGlZ?=
 =?utf-8?B?b1BBd0pEV09zaDdLOG16YzFXQ2s5dmErTW5SRkEra1BvTFdaMUVBQmtuZXRB?=
 =?utf-8?Q?HaXLcGpD5UA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXBXTVA2ZTFpcUt6YVZpQ2R5aVQrN01KWVZVSERzOXIwUUtWLzBzMm5YTzlo?=
 =?utf-8?B?S25BVlErWXhyRTV4UHYraFJSdFhJdEZhWm53ak1tNDJrVWh3SWlEeFE4enJM?=
 =?utf-8?B?OFg5aTdjbnprK0xwc3pQZmtRWUo0cFEvV2FmMGpMU1AwTWtzMkpUK0EwRnAw?=
 =?utf-8?B?Vjk5Y3ltZ3hzcnZtVjU5YWtlUzBOeDJkbmZlS0FQSUtXM1UwMEhJUUhlZkw5?=
 =?utf-8?B?S0dRaTRnMm1wbUJWYUNGMnlCK2c5YkNLU0lmcG5BUXRqSkJBZTZqZWduTGVR?=
 =?utf-8?B?M2VjcDExWUExTkJPRWluNVVGV04raThVRmhibVZ6WHorWWhZaEFaM0VGR0pl?=
 =?utf-8?B?OFBkanhPMkQ3bVh4eFpTRlFiUGllNjdObkg5NmZlL3k0OEVtVkQ5azJjN1Np?=
 =?utf-8?B?SFdZY3BCbGRNWURmTE1nMm9XQStETkpFNDlHb1FabnVHZkJlMXdNT2hDUEpE?=
 =?utf-8?B?RjliQ0dVSGpvSkxJRk5FOVZPdFFicy96WWNuK0V2eUplcmdWczRFQjE5UTY3?=
 =?utf-8?B?aHFTbG9haXZjemJSMWJUMW94TWJHWllNY0pjYUQ1M1pwRDRUUGZkaUVBbEtv?=
 =?utf-8?B?V3NRbWR1SGY1MVJsT0F6YjNhVUdwejlPYTJ2NjJsTWpsaHI3N0xrL0Qxby9D?=
 =?utf-8?B?WnBkUFoxVm9aSDJ2VmNhOHd5S1ZiLytnWXgzTnhJNkFlTy9PUmIvVG4vVnFJ?=
 =?utf-8?B?VklSM1pOOXFSb3Jqb3FuaVlZaFEvNGRRRmpTMkNFOUhGZXFTNjdWdFFucGZa?=
 =?utf-8?B?TkVSUVF2Qm1TUWthYi9FWUZUUTZYVjdqVGhRVWVDNkVxSXpZSjFUYm9pbFA5?=
 =?utf-8?B?L3RPeWJkcUNhU0FsM0cxdzBLSXhSZU1wMmJQUTB6cmVMV0xvQjF4UENBSjFV?=
 =?utf-8?B?cjhYZWljMERadUVyeFNxSll4MWhIVTlhNGN4WS9MR1FiYmlNYlBwRU4wcGFx?=
 =?utf-8?B?UWdDdFdlY2twR3pvOXg3WlhiVlZJL21TdXVlNmN2UXhpdWJKRzdEN0RwZHhN?=
 =?utf-8?B?dGlrUHpXTGMvTkRJMzVYb05GYTIrd0N1c1M0b041V2VVNmhiMVBWYkROOE84?=
 =?utf-8?B?VHJPcTM5a05qdjlPblpPcnlySnlNZmcwOUthcEIzNmJpdGZkOU15NFdRZFJm?=
 =?utf-8?B?S2ZuQ0M1S1FnZWFCYzhJNVZnVjAzRGVmcS91Um82Z05zSmp0M1RSTnhPenNj?=
 =?utf-8?B?OGR0c0V2UkR0MGNiR1BkNVpCZVh3aVpDSWZRb1p3aHR0emhkSUpUQVg3OUow?=
 =?utf-8?B?TzJYOEJOYzRaQkV2MHp5cmk5LzAzdXEwcXA4cWdGWUhuSGdYbURHdVp1TDlq?=
 =?utf-8?B?d2hEWnNXeE51bzJTcVlNMXVvbVlTdE8yY0dWUDArSEdZcmFHOEhacFNLbUt4?=
 =?utf-8?B?SXFKS2NYQlRZZVdJSkVoazRXdDA3ZXE5bkFpUXR2ZkhhMXU4VG4zK2lRZUQ5?=
 =?utf-8?B?VnIyU0tjVEo4L0U2bDBGOGZobEF1dVA5TlNOdk1HTk1JUFRzbnJEb0szaFJu?=
 =?utf-8?B?enF0MEVnWTBXMDJRTTErTzZUZjZPRFhTcEoyc0s2UlFpa1NBRjlxYVdsQkpM?=
 =?utf-8?B?ZUdLOFkzUE9TbGZERGp4WU5WK2J0VVJybkFIY2ZXM1hhSEdsTVhpZFR4RitT?=
 =?utf-8?B?QjAxVUsxRUZ6bHRVejh5LzdqQ2M2UnluQ21mM1lKN1hCa3FJbU56ekZUSHZL?=
 =?utf-8?B?Q1U0SVBCa1NRRDZyTDUxUlhyMEZXTVN2ZVBHeUFNL0lmUzNnbUt4NVp4VmQv?=
 =?utf-8?B?alk2YW1iUFJDWDVDWDRXby8rTFVqQklyc3dVb1R6SE9mQkp6N2tBanloaHVN?=
 =?utf-8?B?a1BSc05ndkNDc1I0dEoyeFZGVkNwOENZVEQ5YzJFOXZFMk5hZjEvWklkNzJX?=
 =?utf-8?B?UTQ3Ym9TWkV5WVZVVy9KNEFmenB5OXBubnRwSWV4YXBzVlFUMGwxeHpWd3Jn?=
 =?utf-8?B?YXNTVVhkWFpUWXpsWG4vUENoOXp4OU9tL3BBdi94bk1nNGtiRHU4WUtFYm0v?=
 =?utf-8?B?bk83UjhpcEZSaVRvVi9ZMDhLOEZEcTZPSytvWEJoOVRYL3JGMU9NaG9CdDR2?=
 =?utf-8?B?aHpnYXJXdW5XTnZwaHpEMHhRa1d3THhDWVhwV08vRUdNRlhjS2ZJR24zcitB?=
 =?utf-8?B?dmhucS91bERRMkh4L05DcW9BTGpZV2IzOGg5R0hFWlYrdzJuSTY2NmRBY2oy?=
 =?utf-8?B?cHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ac07ae0d-4e20-40cf-2d5b-08dda2bc0322
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2025 16:30:55.0485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QwlgC+KodeMBsMJGLZ5Q8JNCYMTX/qYOEq5gtNdJY4+Sl2XT4z0vKuX5cw27zgjBmNh/Gs3Swzq33IjVGZCnvMFJCesvm+w96jKRjsBeBlo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7705
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


On 5/28/2025 12:15 PM, Dibin Moolakadan Subrahmanian wrote:
> When configuring the HDMI PLL, calculations use DIV_ROUND_UP_ULL and
> DIV_ROUND_DOWN_ULL macros, which internally rely on do_div. However, do_div
> expects a 32-bit (u32) divisor, and at higher data rates, the divisor can
> exceed this limit. This leads to incorrect division results and
> ultimately misconfigured PLL values.
> This fix replaces do_div calls with  div64_base64 calls where diviser
> can exceed u32 limit.
>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>

Thanks for the patch, pushed to drm-intel-next

Regards,

Ankit

> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Fixes: 5947642004bf ("drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_snps_hdmi_pll.c   | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> index c6321dafef4f..74bb3bedf30f 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> @@ -41,12 +41,12 @@ static s64 interp(s64 x, s64 x1, s64 x2, s64 y1, s64 y2)
>   {
>   	s64 dydx;
>   
> -	dydx = DIV_ROUND_UP_ULL((y2 - y1) * 100000, (x2 - x1));
> +	dydx = DIV64_U64_ROUND_UP((y2 - y1) * 100000, (x2 - x1));
>   
> -	return (y1 + DIV_ROUND_UP_ULL(dydx * (x - x1), 100000));
> +	return (y1 + DIV64_U64_ROUND_UP(dydx * (x - x1), 100000));
>   }
>   
> -static void get_ana_cp_int_prop(u32 vco_clk,
> +static void get_ana_cp_int_prop(u64 vco_clk,
>   				u32 refclk_postscalar,
>   				int mpll_ana_v2i,
>   				int c, int a,
> @@ -115,16 +115,16 @@ static void get_ana_cp_int_prop(u32 vco_clk,
>   								      CURVE0_MULTIPLIER));
>   
>   	scaled_interpolated_sqrt =
> -			int_sqrt(DIV_ROUND_UP_ULL(interpolated_product, vco_div_refclk_float) *
> +			int_sqrt(DIV64_U64_ROUND_UP(interpolated_product, vco_div_refclk_float) *
>   			DIV_ROUND_DOWN_ULL(1000000000000ULL, 55));
>   
>   	/* Scale vco_div_refclk for ana_cp_int */
>   	scaled_vco_div_refclk2 = DIV_ROUND_UP_ULL(vco_div_refclk_float, 1000000);
> -	adjusted_vco_clk2 = 1460281 * DIV_ROUND_UP_ULL(scaled_interpolated_sqrt *
> +	adjusted_vco_clk2 = 1460281 * DIV64_U64_ROUND_UP(scaled_interpolated_sqrt *
>   						       scaled_vco_div_refclk2,
>   						       curve_1_interpolated);
>   
> -	*ana_cp_prop = DIV_ROUND_UP_ULL(adjusted_vco_clk2, curve_2_scaled2);
> +	*ana_cp_prop = DIV64_U64_ROUND_UP(adjusted_vco_clk2, curve_2_scaled2);
>   	*ana_cp_prop = max(1, min(*ana_cp_prop, 127));
>   }
>   
> @@ -165,10 +165,10 @@ static void compute_hdmi_tmds_pll(u64 pixel_clock, u32 refclk,
>   	/* Select appropriate v2i point */
>   	if (datarate <= INTEL_SNPS_PHY_HDMI_9999MHZ) {
>   		mpll_ana_v2i = 2;
> -		tx_clk_div = ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_9999MHZ, datarate));
> +		tx_clk_div = ilog2(div64_u64(INTEL_SNPS_PHY_HDMI_9999MHZ, datarate));
>   	} else {
>   		mpll_ana_v2i = 3;
> -		tx_clk_div = ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_16GHZ, datarate));
> +		tx_clk_div = ilog2(div64_u64(INTEL_SNPS_PHY_HDMI_16GHZ, datarate));
>   	}
>   	vco_clk = (datarate << tx_clk_div) >> 1;
>   
