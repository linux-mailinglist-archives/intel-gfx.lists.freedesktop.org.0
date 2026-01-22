Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEt0GncMcmksawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:39:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CADCE661E9
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:39:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59F1C10E98C;
	Thu, 22 Jan 2026 11:39:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JWK6E9kS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7C210E98A;
 Thu, 22 Jan 2026 11:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769081972; x=1800617972;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=aH6ELFFVlkZKMzbNDfKYEEsw0oWkkbAt5xYjqTaTN/o=;
 b=JWK6E9kSdGciPh9Pxi143VS/RO2et9oPW4QZGcq5XzAM+pUdeekM5mes
 jPkI3WsNCbWNfZdhSQTAFJpGrtxv6a1bl5HlGvVzEC53p15wrcdJ19AOi
 7yXZE2Ltbpj8phiQr4ONf5Orfz6AA9x+CkWZckBAj06azPBumRmdPWkOr
 fXxRvjbY0KgVbsXcTL8yWAtJCOfOPl3qmj2DwOEzvt4xiTdvqzlSJ2W0S
 MGpJZOeS3R8tDHS74ImdPPXqSjCpfXWfGwIk3y5xawhlhCYkX7NgIed/g
 ZpemmpPqy3jUX1ddJBa7PqvW/UpH0GXtWi8EA3kvG7EOR/4MsLEZiCiIV A==;
X-CSE-ConnectionGUID: uXFSlRZgRvOxgW+GVt3RQQ==
X-CSE-MsgGUID: mQWATlI1TKqmU+l54efnXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70222537"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="70222537"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:39:17 -0800
X-CSE-ConnectionGUID: JUa210Q2TbuVVmC77tTvIA==
X-CSE-MsgGUID: SN+5Ok+UTd6t+cyZQdxLRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="210856479"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:39:16 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:39:16 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 03:39:16 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.69) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 03:39:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ncyTM8/1r+X4LHo7bVfi6PWeaG2txzQZ/3OeGf6znVI0XllJNLvTQzguDUDywDUhGEiS3up4bBZ71Pnb2Sw0EN07zgL3UiOv4gjr9zaJDmxhHrZxnk8GCPES2uXw2PWv/38O98tETHzFohLJ/T5GKPCyInMbLk1p3wCz74YQxcAJTnCMsDRtCAoPGCTnwpQYHozW4We0iOng+1aXnWRufrVrA88sevm1T+wzSbgE2OjBHCMJ8Hqb5Bfn/EXqKILYFXedIbtqbKT2sWpvph9Jop+Z1ja0UTJ1yKuUiQGejylrny4h6FhhL5v5uGbpANUHqaGhf8pDr+lj1bCGDrreBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aH6ELFFVlkZKMzbNDfKYEEsw0oWkkbAt5xYjqTaTN/o=;
 b=XT7f4yfN9WzLJ72v+5mWAm/b0wdZw64JX3jYY9HhXdi8e9aNHYYHlHh1LjJDvDVUQem29iPVKD9lqSf7FAYg9e5ImUqZ71NmzOE27MKGslaYVe5SpX3l9PzazCOh9DqQ2FH9BhadnP+qtw7q5sMURWxiA2XjnpBmcqkwfTf07nq1xpdBWpe64IKU7RW0rGH4Mrm9pif+WF7Mpz1MKOlQGtDCZAyEgHbGs6YtiWFoHiMSGBJK7Dg3ys7W+4zJw70auJEnJdE9v1yFJ4pf1+SWp2ZN3AhHQy/s1aLSAW5fhpsErq8yzP4PfXRSq7PluKvF7GW4ItbcR8kjqXLPhlzj0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM3PPFE9E88246B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 11:39:14 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9542.009; Thu, 22 Jan 2026
 11:39:14 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v9 3/8] drm/i915/vrr: Prepare to Use TRANS_PUSH mechanism
 for PSR frame change
Thread-Topic: [PATCH v9 3/8] drm/i915/vrr: Prepare to Use TRANS_PUSH mechanism
 for PSR frame change
Thread-Index: AQHcc/oj074ZTQvFzkaUzWciBtCJjbVeNb4AgAAJwgA=
Date: Thu, 22 Jan 2026 11:39:13 +0000
Message-ID: <1fd0b593466f254a54b4797b573a35c669d48e4d.camel@intel.com>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
 <20251223105120.21505-4-jouni.hogander@intel.com>
 <be688bf9-cfc9-4c4e-8e76-3b02181eb4da@intel.com>
In-Reply-To: <be688bf9-cfc9-4c4e-8e76-3b02181eb4da@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM3PPFE9E88246B:EE_
x-ms-office365-filtering-correlation-id: 70787619-5f9d-4cdc-a521-08de59aade37
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?YUhEZWdrUkhQNnJ3eDF3dGlMR25Vc0VBZm1JSGYrMThxRkRTMlpYK1c2QTlR?=
 =?utf-8?B?Ky9QNVowZ0NYQ1ExOVBWdVZMRkhFaUppLzNLTFBBVm4vUUVGYW9XNFhVMnEv?=
 =?utf-8?B?V2E0RXBjMlZTU2dUWlR4UlNwaU1XUG1JWGhZRjZlQ1RMekdDRVcrVmdlR2ZO?=
 =?utf-8?B?ekVNSzFNK1RwdVNHeTJBY1lnaFozWEhvNk9DbVFONy9pOVV5bDBhcExNSjIy?=
 =?utf-8?B?MVAyOGRDcXBHMTEvdWx4MjFVb2hWYmkxbk1MaVBDYlZjNVF3NHBPdWs4V1Aw?=
 =?utf-8?B?b3FGdngyQ2dqbzRuUlF3b3o4NnlqbzFWOHBHczRTd2VEa3AwMDFHVk1OMndK?=
 =?utf-8?B?eXVXU3lRTGVpZWZZMCtpSGdHV2dOM0JYV05tSWpUUG42cHFHeXpPU0R1Mllz?=
 =?utf-8?B?Q0ZoMUVjRFdLcjc0UVpZUnFTZ2VxNmNlTitaa3RxUWIxeDJoNE5FNWViaEND?=
 =?utf-8?B?cnZiVERDKzIxei9YQTFXVm92QmROekdiMU9leU1vWit0NzVzVjdIWUl4ckNM?=
 =?utf-8?B?YUFEZXVLSktVUzhLYm52UHUxWHZqQzhhOXRBZXlRdEhsTWlLVEdrMGZlNkd5?=
 =?utf-8?B?OFJLUHNMcjd4TlFpbytqOC91S2MyQnZLazNNR0NmSVhiMTdFakREay9qL0xF?=
 =?utf-8?B?SGY0bld3d1ZFRXhVdGQ3a0FBTFRtMnNlR1luUmlCS0RvY2NIY2ozbkhWRUtL?=
 =?utf-8?B?UjZ0RmJoMm5Yb1ZwUkZLNVkwUHp6Nnh4eFoway9hcnNyRGpSK3BJWnhPVzY1?=
 =?utf-8?B?M2Y2UG52VDNIRjI4R2F5UkhtZ1dWL0hPblo3SUhtQWlJNllNaHBhQjB3TGlN?=
 =?utf-8?B?L1RRUEZTbGUxS0d2UzYvK2hKWDJQcGhLdW5KcnVUSXREd0llNzlyZUdPb0cx?=
 =?utf-8?B?bWdwN3k2ZE1GSUplQzFFczZRWXQwVFBrcktRYitSeFlrOVoyUlhBTGVOTzV0?=
 =?utf-8?B?QjFZNkk1SE9lTC85MzBVZW9KZHBmWkVTWHQyZGp5OFNuK05vbmtZU1RhTDI0?=
 =?utf-8?B?cVJrTTdKSUNKZm5PMTgrT0N0L1NCRmJHeVFGaUdDWWpOSm0wc2wrWk5pRTJO?=
 =?utf-8?B?azZKSTd4Z1YxMGdidGZ2NXNXQ3NzT2RVTDlCaTl6eTVQaVpEakxwLzBabERI?=
 =?utf-8?B?K1BCVC90M1pTVDcraHkwazBVZE1RNEttOGE0UVAvaUxZVmJFQWRraGZIdHVK?=
 =?utf-8?B?enVuUG1ESG1JWndDcVhxK0pRNTNtSjhoWFczV1M2eDJIaHRsMFphTldjZ2xZ?=
 =?utf-8?B?c3BMMDU3Tk1jWnR1c0t5YkdHcURidmREMjFtdjVQR01IT1B0WFBDVElRd1Nz?=
 =?utf-8?B?VkdoU1JGSXQ3VDhRaUJ3Wk5YSzJFTjVDdWxPVFZkVWdMeGtEOWlEck51Qm03?=
 =?utf-8?B?WG1CK2NBdUJ1alE0RXFkQVBiNXliUzBHMXJUcjRZZit3RFU2d0YrV1hEVmRF?=
 =?utf-8?B?d2kwMC8xMTFUd2h6bmRDT2ZBQkx4NFFwQmpoZEtXcnVncmN3dThMcXY0Mm9U?=
 =?utf-8?B?MEFUSjN2bkVLd1R1Q1JLK1hlMFBSOGc1R1NRTVAwdCs0RlU1L1dzRkVnZ3I1?=
 =?utf-8?B?M3ZyMDZkTjd4K0EvUUkrZWZueVlHUXRyUDA2YzNCN1F5QWZLMGkvYXZ1TTUr?=
 =?utf-8?B?bFZaa3c5bXZqSjBkV3hwOWlHUGtsVEpiczBRUkpnY3hGM2t0VzNRSENYazF6?=
 =?utf-8?B?cTZXb1dFRnc2Mmd5dUhpVVFFWUF3bVlRUG5TNENyWndVQ2tPaDBqdks3QnBy?=
 =?utf-8?B?bVljcjIyN1pKdDZjOUFuTnZSejBlZS9yL2t4eW5zZ2FPNlQ1Mmk0TS9tbjB3?=
 =?utf-8?B?U0d6Q2JoUllhc3pGY3MyeSt6bCtJUWV3VTBad0ZZZmVjaWxBR0d2YW95SVpl?=
 =?utf-8?B?VHNYWmdHM0kzNjA4R3hhZnFrVktRbFFTVkU3L3J6ekEwS0tvZGY1ZFlCMmJo?=
 =?utf-8?B?RWFNQUx6L2NabUtZbTExWXNJR2NsRUlzQ2hoazZCanphVlVjK3RYeWdGQ0xi?=
 =?utf-8?B?bHBCcmVaVXZNVkxzN1dJbEFkUjg3VmlsNEZPT0J6NFFTbTNObUNzeEltTXV0?=
 =?utf-8?B?RzR0bmNaYVVBNURidVhEY2FhcWNzVVBidXpVV2RWdk1lcFg0eHhSUEp5Z3cx?=
 =?utf-8?B?YnBrMTJ2OTJiVnRrNFJJUWk3Qmgxb29jdHloZFJVdHdUbkgrcUl6YlRKdWZ3?=
 =?utf-8?Q?0EqvtNRmKaafjDaIMKaoSyQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHZZWCs0MCszdUJaYVpUL0NyOE9DNjdlN21rL2hVb0VhZjJMSVp5NVNQcVBs?=
 =?utf-8?B?U3RaUllhYlh3V3dWK0NzcDhDTDBoTUVZTHZpLzg4cnNHcDBHaGRpelBJK2tF?=
 =?utf-8?B?dHhOY04xOW9xSVlQbWFJenlicEF4Uzc3d0ZWYmVGZWlxQjJZZi96VERLOVh0?=
 =?utf-8?B?dEtJd056cnp0aGU3TlcyQk9ZbWhnVUl2NTExMlVRZFpsZkFLb0xoQ0tFTWVM?=
 =?utf-8?B?NDRueTBWQitZZmViU3dWNXVIUkxYVUdHK0tvdUxFeVg4M1BXYmUvRUs2RlRu?=
 =?utf-8?B?dkFQdGpXWm8zZ296dDR3aW5pTUo5ZUQzd3AvbXNuSDJ2Mmt0SkdNRzNGT2VX?=
 =?utf-8?B?YU0wcE1oVmxwTUxvTStyczNPNVA0Um9Pb3ZEL1ZTUExkVzVEaVRoS1hUalIz?=
 =?utf-8?B?QkN5emdoblAxRkJ0eFE0ZHBNTHovczJMQ1JVT2hUOTVpS0tEOFNCbGYxZmVh?=
 =?utf-8?B?MUxjUlgwK2RlZVFIVTYrdGdPZyttSUVKY0NGMUExOHlTb2Fhd202cDdTMitj?=
 =?utf-8?B?emFiV0VkbU9mcmlGUTEzcDlTQmVzbjEyMkkvc0IwSW1ZSTJYd0ZZckV1SUQ0?=
 =?utf-8?B?LzlMMEtuZVhYcE9BOFpjUkZQL290R25TbFFVVkRYVHE0VDI1MTFVbFJITHpC?=
 =?utf-8?B?eldHTndjS2FkSHEyazcwRDZxTllHbEZYUU1QcjJDdEkvV2JMODdzSFFpck5D?=
 =?utf-8?B?VzZLSWdqVDEyVzhSSkFJU2FUM0N3RzV5eUs5QlZia04zRkVyMkpESFkyc2RC?=
 =?utf-8?B?R0JmRTRkRVRYQnpwWmp2T3FIRjdSNG5BSms5ZXdqajloS2ZzNkU4K1E2M25S?=
 =?utf-8?B?ZXlXbGZSS0tYelNqeEUxWEUzSlV4Q3ZraHNJYnk2WDl2aEdLek4zeHAyaWxy?=
 =?utf-8?B?WkNOVkliVit4VkcwczE1b3VkQm0xcGxCempVZjM4TGpJWFczZGo2M0phSm5s?=
 =?utf-8?B?MWw1R3QwdWVxYUFyTGhBZ3JDaWNjTzJmVlhSQU5HdWwvZ3UySmJLS1U0aUth?=
 =?utf-8?B?MHZYRzBEUVlLUVRtclpIWEgyazNuQnZZMkF5ZWFzMHFTSVZmTUYxaHg4RkM3?=
 =?utf-8?B?ZHZSWnBRUU5tbnphQ1p6MjlFdzkrTzIzSXVRN0YvL21qUnVmVS9BQTRwYXhj?=
 =?utf-8?B?NnZNTTQyMUgwL2M0R3loMm94VkVDdCtpdGlGeHdIWlB2QVhuSGtHeCsxZUF3?=
 =?utf-8?B?ZUw0bkQ0R1pBbmZnSVZiTUw1dFZwQnRScFpQUGd1S0FMZFpjR2NDU1FPTG5j?=
 =?utf-8?B?VXZkZkhXQnBWM0dBekdyb1E2U3VUekF6SVhnK1k2SmxJSWlmTmVCVGJhR3pp?=
 =?utf-8?B?RTNkaUxlVUsrMU5od0llWVRTM0tsd0orS0swTVhQT29QZ01SVG1rRGdnOU9q?=
 =?utf-8?B?V2ZRbXVaT3FCY2VqTEp1cC9RUWEzYXByd05vZmh6V0ROTjZFZE9xb3E2c2g0?=
 =?utf-8?B?Q0lpajFPVW9JeXZ5RjdSRzk4MVp5QWJVM2ZDUG1uMWVrOEZJcTFJcUVqNENz?=
 =?utf-8?B?QW5yYk0vTHFOUXVPdzgzVjR2SDVXY280VHFibDQ0dTR4MXZjd2luTkg0VVF5?=
 =?utf-8?B?YTBsaFUvVGJNM3dvVHdFSkJkMGhiY09aT0x3eXFXSTlOUndwaTZUaGJnYVVZ?=
 =?utf-8?B?KzdDOExoOVNha2VFTGgxL3pVVTkvWlkxYTNiR28vU25BQnJNSnJ3TitHSFI2?=
 =?utf-8?B?UFNjNTNjMk5LN1cxeXkxdHFmZHJxWkk1OG1BckN1UjNYb0NkN1ltc1pjSzRn?=
 =?utf-8?B?NWtLU3l5UzZZNkFNVFlkVHBDb1pYZWdhWHpxdWJXWk50RDhPNUxHMlNGYWxu?=
 =?utf-8?B?dEVhcWxjVlVDT2pBR0JqeW5BbDRHMUlUR3BlbmdMN1U0RzQzSXNCaTFIaDVC?=
 =?utf-8?B?aVZycG5pbStLalMrTkRsMDlWbXNRc0RwN1EyUG8vVGRHOTNZdGRrYS9xSWlO?=
 =?utf-8?B?TkZwSjN3elVnK2lyRjhCeGM1RGNOOGJlRDB6b200YXJieGRMWlNpakJRTHNQ?=
 =?utf-8?B?TnlRaXBhb2NKdk01K0tDeGJtNW9RRWlsRTJZcXExQVhaS1FYQk91bCs5eXBx?=
 =?utf-8?B?dk1KM0dLclEwT0ZPUEd1SnB4UHNUZGpEK2ZGWmdadWorTk5JcXBtbW1TZmVK?=
 =?utf-8?B?OG9hcU9WTlArS2duNDh4a1FBNHFZem1GNW9LZnRkMDZlQzRpOEF3VjdmeGVR?=
 =?utf-8?B?WjVMRSt1bGQ2ais4OWVmbTEwdHMzV3NSRTRHMDlUMlJ3MVhGS1ZYQ0dJSWk1?=
 =?utf-8?B?c1hFTzRJQnEzejVxajlYUWZRZ3hVUC9XRDF5ZkFuVkM2eWhJYXZUNVhGRVFv?=
 =?utf-8?B?UjFuQkhmVFNBOFl5RGlQejJGVW9xTXEzc0NBTjhvSzdpbnpFWitLanNaNGxM?=
 =?utf-8?Q?2ncMHziZxMhXQqF/f3f74b1qQsZmoGO3ft1uLJJP+QBjG?=
x-ms-exchange-antispam-messagedata-1: oDH13/NVjx2b4KE98pLWAOoKPDCpxK6Bl4w=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7F46BAAB3BF44F439E547198EBD64E8B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70787619-5f9d-4cdc-a521-08de59aade37
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2026 11:39:14.0546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HhQIlQ8+SkDaphRH8bO/KCcveYLKMDqCOUHks5Un5ERK3FJD2tkH3wGsc1F2ZNHRVvBWnGKSbhWQNPXXmbhuqx2gzY3V4UVLYbRLanNpRms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFE9E88246B
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CADCE661E9
X-Rspamd-Action: no action

T24gVGh1LCAyMDI2LTAxLTIyIGF0IDE2OjM0ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDEyLzIzLzIwMjUgNDoyMSBQTSwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0K
PiA+IE9uIEx1bmFybGFrZSBhbmQgb253YXJkcyBpdCBpcyBwb3NzaWJsZSB0byBnZW5lcmF0ZSBQ
U1IgImZyYW1lDQo+ID4gY2hhbmdlIg0KPiA+IGV2ZW50IHVzaW5nIFRSQU5TX1BVU0ggbWVjaGFu
aXNtLiBJbXBsZW1lbnQgZnVuY3Rpb24gdG8gZW5hYmxlIHRoaXMNCj4gPiBhbmQNCj4gPiB0YWtl
IFBTUiBpbnRvIGFjY291bnQgaW4gaW50ZWxfdnJyX3NlbmRfcHVzaC4NCj4gPiANCj4gPiB2NjoN
Cj4gPiDCoMKgIC0gYWRkIEhBU19QU1JfRlJBTUVfQ0hBTkdFIG1hY3JvDQo+ID4gwqDCoCAtIHVz
ZSBUUkFOU19QVVNIIGluIGluc3RlYWQgb2YgVFJBTl9WUlJfQ1RMDQo+ID4gdjU6IHVzZSBpbnRl
bF9wc3JfdXNlX3RyYW5zX3B1c2ggZm9yDQo+ID4gaW50ZWxfdnJyX3Bzcl9mcmFtZV9jaGFuZ2Vf
ZW5hYmxlDQo+ID4gdjQ6DQo+ID4gwqDCoCAtIHVzZSBybXcgd2hlbiBlbmFibGluZy9kaXNhYmxp
bmcgdHJhbnNjb2Rlcg0KPiA+IMKgwqAgLSBzZXQgVFJBTlNfUFVTSF9FTiBjb25kaXRpb25hbGx5
IGluIGludGVsX3Zycl9zZW5kX3B1c2gNCj4gPiDCoMKgIC0gZG8gbm90IGNhbGwgaW50ZWxfdnJy
X3NlbmRfcHVzaCBmcm9tDQo+ID4gaW50ZWxfcHNyX3RyaWdnZXJfZnJhbWVfY2hhbmdlDQo+ID4g
wqDCoCAtIGRvIG5vdCBlbmFibGUgdXNpbmcgVFJBTlNfUFVTSCBtZWNoYW5pc20gZm9yIFBTUiAi
RnJhbWUNCj4gPiBDaGFuZ2UiDQo+ID4gdjM6DQo+ID4gwqDCoCAtIHVzZSBybXcgd2hlbiBlbmFi
bGluZy9kaXNhYmxpbmcNCj4gPiDCoMKgIC0ga2VlcCBMTkxfVFJBTlNfUFVTSF9QU1JfUFJfRU4g
c2V0IGFsd2F5cyBvbiBMdW5hckxha2UgYW5kDQo+ID4gb253YXJkcw0KPiA+IHYyOiB1c2UgaW50
ZWxfdnJyX3RyYW5zX3B1c2hfZW5hYmxlZF9zZXRfY2xlYXIgaW5zdGVhZCBvZiBybXcNCj4gPiAN
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NydGMuYyB8wqAgNCArKystDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuY8KgIHwgMTMgKysrKysrKy0tLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdnJyLmPCoCB8IDI5DQo+ID4gKysrKysrKysrKysrKysrKysrLS0tLS0N
Cj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5owqAgfMKgIDEg
Kw0KPiA+IMKgIDQgZmlsZXMgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25z
KC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3J0Yy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Ny
dGMuYw0KPiA+IGluZGV4IDc3OGViYzUwOTVjMy4uZWQzYzZjNGNlMDI1IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gPiBAQCAtNzQ3LDcg
Kzc0Nyw5IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfZW5kKHN0cnVjdA0KPiA+IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqDCoAkgKiB3aGljaCB3b3VsZCBjYXVzZSB0aGUgbmV4
dCBmcmFtZSB0byB0ZXJtaW5hdGUgYWxyZWFkeQ0KPiA+IGF0IHZtaW4NCj4gPiDCoMKgCSAqIHZi
bGFuayBzdGFydCBpbnN0ZWFkIG9mIHZtYXggdmJsYW5rIHN0YXJ0Lg0KPiA+IMKgwqAJICovDQo+
ID4gLQlpZiAoIXN0YXRlLT5iYXNlLmxlZ2FjeV9jdXJzb3JfdXBkYXRlKQ0KPiA+ICsJaWYgKCFz
dGF0ZS0+YmFzZS5sZWdhY3lfY3Vyc29yX3VwZGF0ZSB8fA0KPiA+ICsJwqDCoMKgIChpbnRlbF9w
c3JfdXNlX3RyYW5zX3B1c2gobmV3X2NydGNfc3RhdGUpICYmDQo+ID4gKwnCoMKgwqDCoCAhbmV3
X2NydGNfc3RhdGUtPnZyci5lbmFibGUpKQ0KPiA+IMKgwqAJCWludGVsX3Zycl9zZW5kX3B1c2go
TlVMTCwgbmV3X2NydGNfc3RhdGUpOw0KPiA+IMKgIA0KPiA+IMKgwqAJbG9jYWxfaXJxX2VuYWJs
ZSgpOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gaW5kZXggMTcwZDY1OTk5Y2NkLi40MzM2YmExODhhYTcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMjA3LDYgKzIwNyw4IEBA
DQo+ID4gwqAgI2RlZmluZSBDQU5fUFNSKGludGVsX2RwKSAoKGludGVsX2RwKS0+cHNyLnNpbmtf
c3VwcG9ydCAmJiBcDQo+ID4gwqDCoAkJCcKgwqAgKGludGVsX2RwKS0+cHNyLnNvdXJjZV9zdXBw
b3J0KQ0KPiA+IMKgIA0KPiA+ICsjZGVmaW5lIEhBU19QU1JfRlJBTUVfQ0hBTkdFKGRpc3BsYXkp
CShESVNQTEFZX1ZFUihkaXNwbGF5KSA+PQ0KPiA+IDIwKQ0KPiA+ICsNCj4gPiDCoCBib29sIGlu
dGVsX2VuY29kZXJfY2FuX3BzcihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikNCj4gPiDC
oCB7DQo+ID4gwqDCoAlpZiAoaW50ZWxfZW5jb2Rlcl9pc19kcChlbmNvZGVyKSB8fCBlbmNvZGVy
LT50eXBlID09DQo+ID4gSU5URUxfT1VUUFVUX0RQX01TVCkNCj4gPiBAQCAtMjEyMCw2ICsyMTIy
LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0DQo+ID4gaW50
ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKgwqAJCWludGVsX2RtY19ibG9ja19wa2djKGRpc3BsYXks
IGludGVsX2RwLT5wc3IucGlwZSwNCj4gPiB0cnVlKTsNCj4gPiDCoCANCj4gPiDCoMKgCWludGVs
X2FscG1fY29uZmlndXJlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gPiArDQo+ID4gKwlpZiAo
aW50ZWxfcHNyX3VzZV90cmFuc19wdXNoKGNydGNfc3RhdGUpKQ0KPiA+ICsJCWludGVsX3Zycl9w
c3JfZnJhbWVfY2hhbmdlX2VuYWJsZShjcnRjX3N0YXRlKTsNCj4gPiDCoCB9DQo+ID4gwqAgDQo+
ID4gwqAgc3RhdGljIGJvb2wgcHNyX2ludGVycnVwdF9lcnJvcl9jaGVjayhzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKQ0KPiA+IEBAIC0yNTExLDkgKzI1MTYsMTEgQEAgdm9pZA0KPiA+IGludGVs
X3Bzcl90cmlnZ2VyX2ZyYW1lX2NoYW5nZV9ldmVudChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+
ID4gwqDCoAkJaW50ZWxfcHJlX2NvbW1pdF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gPiDC
oMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRj
KTsNCj4gPiDCoCANCj4gPiAtCWlmIChjcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiA+IC0JCWludGVs
X2RlX3dyaXRlX2RzYihkaXNwbGF5LCBkc2IsDQo+ID4gLQkJCQnCoMKgIENVUlNVUkZMSVZFKGRp
c3BsYXksIGNydGMtDQo+ID4gPnBpcGUpLCAwKTsNCj4gPiArCWlmICghY3J0Y19zdGF0ZS0+aGFz
X3BzciB8fCBIQVNfUFNSX0ZSQU1FX0NIQU5HRShkaXNwbGF5KSkNCj4gPiArCQlyZXR1cm47DQo+
ID4gKw0KPiA+ICsJaW50ZWxfZGVfd3JpdGVfZHNiKGRpc3BsYXksIGRzYiwNCj4gPiArCQkJwqDC
oCBDVVJTVVJGTElWRShkaXNwbGF5LCBjcnRjLT5waXBlKSwgMCk7DQo+ID4gwqAgfQ0KPiA+IMKg
IA0KPiA+IMKgIC8qKg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zyci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Zyci5jDQo+ID4gaW5kZXggYjkyYzQyZmRlOTM3Li5hYWYwZjZjZjNjZmUgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBAQCAtNTg0LDE2
ICs1ODQsMjMgQEAgdm9pZCBpbnRlbF92cnJfc2VuZF9wdXNoKHN0cnVjdCBpbnRlbF9kc2INCj4g
PiAqZHNiLA0KPiA+IMKgIHsNCj4gPiDCoMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiA+IMKgwqAJZW51bSB0cmFu
c2NvZGVyIGNwdV90cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0NCj4gPiA+Y3B1X3RyYW5zY29kZXI7
DQo+ID4gKwl1MzIgdHJhbnNfcHVzaDsNCj4gPiDCoCANCj4gPiAtCWlmICghY3J0Y19zdGF0ZS0+
dnJyLmVuYWJsZSkNCj4gPiArCWlmICghY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSAmJg0KPiA+ICFp
bnRlbF9wc3JfdXNlX3RyYW5zX3B1c2goY3J0Y19zdGF0ZSkpDQo+ID4gwqDCoAkJcmV0dXJuOw0K
PiA+IMKgIA0KPiA+IMKgwqAJaWYgKGRzYikNCj4gPiDCoMKgCQlpbnRlbF9kc2Jfbm9ucG9zdF9z
dGFydChkc2IpOw0KPiA+IMKgIA0KPiA+IC0JaW50ZWxfZGVfd3JpdGVfZHNiKGRpc3BsYXksIGRz
YiwNCj4gPiAtCQkJwqDCoCBUUkFOU19QVVNIKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwNCj4g
PiAtCQkJwqDCoCBUUkFOU19QVVNIX0VOIHwgVFJBTlNfUFVTSF9TRU5EKTsNCj4gPiArCXRyYW5z
X3B1c2ggPSBUUkFOU19QVVNIX1NFTkQ7DQo+ID4gKw0KPiA+ICsJaWYgKGNydGNfc3RhdGUtPnZy
ci5lbmFibGUpDQo+ID4gKwkJdHJhbnNfcHVzaCB8PSBUUkFOU19QVVNIX0VOOw0KPiA+ICsJaWYg
KGludGVsX3Bzcl91c2VfdHJhbnNfcHVzaChjcnRjX3N0YXRlKSkNCj4gPiArCQl0cmFuc19wdXNo
IHw9IExOTF9UUkFOU19QVVNIX1BTUl9QUl9FTjsNCj4gPiArDQo+ID4gKwlpbnRlbF9kZV93cml0
ZV9kc2IoZGlzcGxheSwgZHNiLCBUUkFOU19QVVNIKGRpc3BsYXksDQo+ID4gY3B1X3RyYW5zY29k
ZXIpLA0KPiA+ICsJCQnCoMKgIHRyYW5zX3B1c2gpOw0KPiA+IMKgIA0KPiA+IMKgwqAJaWYgKGRz
YikNCj4gPiDCoMKgCQlpbnRlbF9kc2Jfbm9ucG9zdF9lbmQoZHNiKTsNCj4gPiBAQCAtNjkzLDcg
KzcwMCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Zycl90Z19lbmFibGUoY29uc3Qgc3RydWN0DQo+
ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiDCoMKgCWVudW0gdHJhbnNjb2Rl
ciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtDQo+ID4gPmNwdV90cmFuc2NvZGVyOw0KPiA+
IMKgwqAJdTMyIHZycl9jdGw7DQo+ID4gwqAgDQo+ID4gLQlpbnRlbF9kZV93cml0ZShkaXNwbGF5
LCBUUkFOU19QVVNIKGRpc3BsYXksDQo+ID4gY3B1X3RyYW5zY29kZXIpLCBUUkFOU19QVVNIX0VO
KTsNCj4gPiArCWludGVsX2RlX3JtdyhkaXNwbGF5LCBUUkFOU19QVVNIKGRpc3BsYXksIGNwdV90
cmFuc2NvZGVyKSwNCj4gPiAwLCBUUkFOU19QVVNIX0VOKTsNCj4gPiDCoCANCj4gPiDCoMKgCXZy
cl9jdGwgPSBWUlJfQ1RMX1ZSUl9FTkFCTEUgfCB0cmFuc192cnJfY3RsKGNydGNfc3RhdGUpOw0K
PiA+IMKgIA0KPiA+IEBAIC03MjEsNyArNzI4LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfdnJyX3Rn
X2Rpc2FibGUoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUpDQo+ID4gwqDCoAkJCQnCoMKgwqDCoMKgwqAgVlJSX1NUQVRVU19WUlJfRU5fTElWRSwNCj4g
PiAxMDAwKSkNCj4gPiDCoMKgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIlRpbWVkIG91dCB3YWl0
aW5nIGZvciBWUlINCj4gPiBsaXZlIHN0YXR1cyB0byBjbGVhclxuIik7DQo+ID4gwqAgDQo+ID4g
LQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBUUkFOU19QVVNIKGRpc3BsYXksDQo+ID4gY3B1X3Ry
YW5zY29kZXIpLCAwKTsNCj4gPiArCWludGVsX2RlX3JtdyhkaXNwbGF5LCBUUkFOU19QVVNIKGRp
c3BsYXksIGNwdV90cmFuc2NvZGVyKSwNCj4gPiArCQnCoMKgwqDCoCBUUkFOU19QVVNIX0VOLCAw
KTsNCj4gPiDCoCB9DQo+ID4gwqAgDQo+ID4gwqAgdm9pZCBpbnRlbF92cnJfZW5hYmxlKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+IEBAIC03MzcsNiArNzQ1
LDE1IEBAIHZvaWQgaW50ZWxfdnJyX2VuYWJsZShjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+IMKgwqAJCWludGVsX3Zycl90Z19lbmFibGUoY3J0Y19z
dGF0ZSwgY3J0Y19zdGF0ZS0NCj4gPiA+Y21yci5lbmFibGUpOw0KPiA+IMKgIH0NCj4gPiDCoCAN
Cj4gPiArdm9pZCBpbnRlbF92cnJfcHNyX2ZyYW1lX2NoYW5nZV9lbmFibGUoY29uc3Qgc3RydWN0
DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiArew0KPiA+ICsJc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0
ZSk7DQo+ID4gKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRlLQ0K
PiA+ID5jcHVfdHJhbnNjb2RlcjsNCj4gPiArDQo+ID4gKwlpbnRlbF9kZV9ybXcoZGlzcGxheSwg
VFJBTlNfUFVTSChkaXNwbGF5LCBjcHVfdHJhbnNjb2RlciksDQo+ID4gMCwNCj4gPiArCQnCoMKg
wqDCoCBMTkxfVFJBTlNfUFVTSF9QU1JfUFJfRU4pOw0KPiA+ICt9DQo+IA0KPiANCj4gQ2FuIHdl
IGhhdmUgYSBmdW5jdGlvbiB0aGF0IHRlbGxzIHVzIHdoYXQgdG8gd3JpdGUgaW4gdGhlDQo+IFRS
QU5TX1ZSUl9QVVNIIA0KPiByZWcsIGluc3RlYWQgb3Igcm13Lg0KPiANCj4gc3RhdGljIHUzMiB0
cmFuc192cnJfcHVzaChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwg
DQo+IGJvb2wgc2VuZF9wdXNoKQ0KPiB7DQo+IMKgwqAgwqAgwqAgwqAgc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPQ0KPiB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiDCoMKg
IMKgIMKgIMKgIHUzMiB0cmFuc192cnJfcHVzaCA9IDA7DQo+IA0KPiDCoMKgIMKgIMKgIMKgIGlm
IChpbnRlbF92cnJfYWx3YXlzX3VzZV92cnJfdGcoZGlzcGxheSkgfHwNCj4gwqDCoCDCoCDCoCDC
oCDCoCDCoCBjcnRjX3N0YXRlLT52cnIuZW5hYmxlKQ0KPiDCoMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIHRyYW5zX3Zycl9wdXNoIHw9IFRSQU5TX1BVU0hfRU47DQo+IA0KPiDCoMKgIMKgIMKgIMKg
IGlmIChzZW5kX3B1c2gpDQo+IMKgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgdHJhbnNfdnJyX3B1
c2ggfD0gVFJBTlNfUFVTSF9TRU5EOw0KPiANCj4gwqDCoCDCoCDCoCDCoCBpZiAoaW50ZWxfcHNy
X3VzZV90cmFuc19wdXNoKGNydGNfc3RhdGUpKQ0KPiDCoMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IHRyYW5zX3Zycl9wdXNoIHw9IExOTF9UUkFOU19QVVNIX1BTUl9QUl9FTjsNCj4gDQo+IMKgwqAg
wqAgwqAgwqAgcmV0dXJuIHRyYW5zX3Zycl9wdXNoOw0KPiB9DQo+IA0KPiBUaGVuIHdlIGNhbiBq
dXN0IHVzZSB0aGlzIGluIGRpZmZlcmVudCBwbGFjZS4NCj4gDQo+IEkgdGhpbmsgdGhhdCB3aWxs
IG1ha2UgdGhpbmdzIGVhc2llci4NCj4gDQo+IFdlIGNhbiBoYXZlIGZpcnN0IGEgcHJlcGFyYXRv
cnkgcGF0Y2ggd2l0aCBjaGFuZ2VzIHdpdGhvdXQgdGhlIGJpdCANCj4gOsKgTE5MX1RSQU5TX1BV
U0hfUFNSX1BSX0VOOw0KPiANCj4gVGhlIGN1cnJlbnQgcGF0Y2ggd2lsbCB0aGVuIGp1c3QgYWRk
IHRoZSBsaW5lcyB0byBzZXQgDQo+IHRoZcKgTE5MX1RSQU5TX1BVU0hfUFNSX1BSX0VOIGFuZCB0
aGF0cyBpdC4NCg0KVGhpcyBpcyBnb29kIGlkZWEuIEkgd2lsbCB0cnkvaW1wbGVtZW50IHRoYXQu
DQoNCkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gQW5r
aXQNCj4gDQo+IA0KPiA+ICsNCj4gPiDCoCB2b2lkIGludGVsX3Zycl9kaXNhYmxlKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKm9sZF9jcnRjX3N0YXRlKQ0KPiA+IMKgIHsNCj4g
PiDCoMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNw
bGF5KG9sZF9jcnRjX3N0YXRlKTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92cnIuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92cnIuaA0KPiA+IGluZGV4IGJjOTA0NDYyMTYzNS4uNGRjNWJiM2Y2ZjI4IDEwMDY0
NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oDQo+ID4gQEAg
LTMwLDYgKzMwLDcgQEAgdm9pZCBpbnRlbF92cnJfY2hlY2tfcHVzaF9zZW50KHN0cnVjdCBpbnRl
bF9kc2INCj4gPiAqZHNiLA0KPiA+IMKgwqAJCQnCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gwqAgYm9vbCBpbnRlbF92cnJf
aXNfcHVzaF9zZW50KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3Rh
dGUpOw0KPiA+IMKgIHZvaWQgaW50ZWxfdnJyX2Rpc2FibGUoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gPiAqb2xkX2NydGNfc3RhdGUpOw0KPiA+ICt2b2lkIGludGVsX3Zycl9wc3Jf
ZnJhbWVfY2hhbmdlX2VuYWJsZShjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKTsNCj4gPiDCoCB2b2lkIGludGVsX3Zycl9nZXRfY29uZmlnKHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gPiDCoCBpbnQgaW50ZWxfdnJyX3ZtYXhfdnRv
dGFsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpOw0KPiA+
IMKgIGludCBpbnRlbF92cnJfdm1pbl92dG90YWwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUNCj4gPiAqY3J0Y19zdGF0ZSk7DQoNCg==
