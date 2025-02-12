Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D107A330FD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 21:46:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BFFB10E997;
	Wed, 12 Feb 2025 20:46:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ko2uP7lj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7270110E997;
 Wed, 12 Feb 2025 20:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739393195; x=1770929195;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=S4qNhUVQ/+rJy19ErRp/6SbMRwWp8kQJMJExxjJrcLI=;
 b=Ko2uP7ljMFqs/vHDCtXKDlpOhXpUmUo0cunpzhUvddvddo3i+aRjrVOT
 gkarSVyeoprRyW8seOydubgeBwIQxQ2C/tMgTKLiaUj7NV/uMaYrzDte+
 YSGOgyiSUv6faDlbfBo9Gf3Hj4kW/3+6OBT5IU/uJu8MXXfAiVcjn2jfz
 cyHUz9iB+A2LnadgLlnMF1zt1FZMedv52PsuG5htXR75lV8VpZ3CUdMV+
 RncsnFPUgpZRlC1fX/XZYZrUygtFBgY4YIOoSRV6YQj0qQiATr/GYnnuQ
 UlxbFc7+PlPxcopCMVyuMMbFbBT3G8cQkLtnnB68+12ZbVHsJZL4dMFDB g==;
X-CSE-ConnectionGUID: 8yWUHMWhSsKwZQYVD1KJyQ==
X-CSE-MsgGUID: PW+aoqZ4RCaT5vEBDg2O5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="39934525"
X-IronPort-AV: E=Sophos;i="6.13,281,1732608000"; d="scan'208";a="39934525"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 12:46:28 -0800
X-CSE-ConnectionGUID: UXbnS7AkT4m+heMGu4l+IQ==
X-CSE-MsgGUID: uIDFmI1+TIuCujfJu6JzHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117555277"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 12:46:27 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 12:46:26 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 12:46:26 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 12:46:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M/twWF4vHKnVCMtUfc2pnqQeJFNAYRwDQVgo5TDMYLbo2F91L+WP1jDvrigTFtQVQdVsIreD0XAD/SByZ+/jlBL5SwG87+KpOVHk4ZtfquJtppuGBg3RGIre7y7/6882UBR0XWnHR12MIyvyZQakxSyx9TeZpbwYsjpzt8mIWJgJOBS+y4MEPg/dxFj8SIwRfWJldDjex0Zu061YuAWzn6fYjzGa4ymX3U3Bd3bDMVElKxqQaRil/8AecdTBmoyqVVPKJIQDsJv0L+01HZE/Bq2wcfCr/G9LNhMZ27DVUBifYYxAZMz/dOzMGKYzEeLXVIwsoaz8ZUT6MB1nHwVIng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S4qNhUVQ/+rJy19ErRp/6SbMRwWp8kQJMJExxjJrcLI=;
 b=ED2NOM9S+2avksE29BVjuQiMUr3RPnahE4TPK5ZrDHbD8gMQNHVmcQZL2kV7erOrPDC8UFDAcZLGA0QI7UJ45D9WTcehsX8AdTQSjiFtB3vL5G1z+0ltXLXj/lVHdZhVwwcLD66EsjGTgysW/ppEdosSXtKUgpRZ2x3oE9UgO34tujPR08RqqjtF9zf9awGM7flpr7L/Q9JgSD0Bnv3zjmdTHSgWBgmkYvFyHwdEzYlXy6g010bqW8NtyNjYvQkOzngk9xVK4rgu9YBdjCovkTHvisaQFlJ7V2canTGm5mTcoPaar6FE4L0wVfQa5n8NeZAuHSWZ6GJrJ9c8EYqeZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM6PR11MB4740.namprd11.prod.outlook.com (2603:10b6:5:2ad::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Wed, 12 Feb
 2025 20:46:19 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8445.013; Wed, 12 Feb 2025
 20:46:19 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/8] drm/i915: Add missing else to the if ladder in
 missing else
Thread-Topic: [PATCH 1/8] drm/i915: Add missing else to the if ladder in
 missing else
Thread-Index: AQHbaD7YFif0CZNoMkGE2EBSznwvHrNETdWA
Date: Wed, 12 Feb 2025 20:46:19 +0000
Message-ID: <4147fcd1fb243c80b3bba4ca33c9da6246959a4a.camel@intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
 <20250116174758.18298-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20250116174758.18298-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM6PR11MB4740:EE_
x-ms-office365-filtering-correlation-id: 77aa5eaf-c774-4d71-c8eb-08dd4ba64d6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SFhnZUoyVzFPRStTU3pKejhxQXJCOHF4TjJpeGNLKzlhVDV4OUVxNTJtWDFx?=
 =?utf-8?B?cDJnbGdVVVl3Ty8zb0xWYUl1cHpCSHdyeE9oUVNjTHExclJBaWV1M1NjVmRM?=
 =?utf-8?B?UzBHSDRkczRLcXBTNFF6ZWtEUGQ3Y0lVU3p1c2xWckpmUURxSUt5M01ZOGJu?=
 =?utf-8?B?NEhWSlhBT3hhcURHc2F3UWMwakRKbk84aGNwWElaemcxTzBpc1VRMkxOMTY5?=
 =?utf-8?B?QkFaa0dVbTF6cTVEWm5GQTFkNWdEb2NhV1kyTXJyeVowRFpmS3h0Q1FGMGpF?=
 =?utf-8?B?TjdBZjRrNjh4OFdvVy9TaGpkNi9rOXhwZFNtaWVzVms0eFE3TUhUaEJQc2wz?=
 =?utf-8?B?dkRoallQdmV3RFpDSWF6SCtXM3hwaU4xWDFSNHJDazZ3M1NhVHdESHR0QzJ4?=
 =?utf-8?B?ZnRVV3oxWG00TnVCTkxYa3p6eXVuWjVNSG83S1grUm5Qam1wZzAxRGRtS25x?=
 =?utf-8?B?T1NhaklkZDdJSzZYUTdjMGl6TGx6OVpSK1lVUFZKM2lOMmxlVnU2RnhkTG9r?=
 =?utf-8?B?dmZwS2VnQlA5TjlNVW0weWltNzBJSXFyWkM3eEdsLzBmeVFMZ0NuZ3F3RkpI?=
 =?utf-8?B?Tk1TKzQxL0J1N05YcFRHU1g3YS9hT1hlTklIZ090aVJiSytBR3phNVkxa3NP?=
 =?utf-8?B?SmlYUjk1WHFjZmowMmdoMVllaSsydit2a09CaTZ2eW5xaEUwTVQ1VFNtQ0dG?=
 =?utf-8?B?ZW5kaWhZK05SQWVsR1c2bFkvL2xhZVNZZHlaeFc3L0Z1V2dJR2lVd25ZZTlw?=
 =?utf-8?B?TzNhckIvMy93dE9ERVJyMk96OXgzOWFPT29BTnZZdWwxeGFXME5iRmJRQ0Jw?=
 =?utf-8?B?c2hweVVLNkw3SFN2NlVEbFQzWks5TXR3VjJFU0YwN1czTGtQbmlDVnM1YXJC?=
 =?utf-8?B?NTcxWVltYWxvNDJDNkltWkxzSXRBRloxdng5TDN0dE96ZFg0NWw4UzVoRjBG?=
 =?utf-8?B?Z1IwMG93Tld4dTQ4bzJVVndxc1c5d0c4ei9WZlYwdW01Unh1OXJwbkpUOGNP?=
 =?utf-8?B?T3RWd1BzWUkxMjUxc0pFKzQveUhQRlNDRzVvelpzZmZ1T016QmNCdlI1eVha?=
 =?utf-8?B?b2M0RUwrZm5hajZYNWE0b2c4WnFTYlB3di93TE1HYjBjcHh6OGJ3TmpTTkFB?=
 =?utf-8?B?T0kzY0ZzajhkTzZnZXNoQnpQUENTZXBTVnJFYSs2WCtzWVFyeklNWVVCcVRX?=
 =?utf-8?B?SU9JTkZZdXZnSXJiaEFid1hWMGFXeWZ1VmtxMFNaRmN5MURaeW1ueDVGQUlm?=
 =?utf-8?B?MlR0TnhFOWVHS0F4SDRmTU85U0thODA1b2I3Y2NEZE1TaUR2d1dTK3ZMYzd4?=
 =?utf-8?B?WFpqU0txWE0xcU9ZbFRObDY4TDBKRWVIQ0k5YUhwZCtIbmxBckRuN1RLMUpQ?=
 =?utf-8?B?dWxMbUlZZnVLckRJTGtqQzcrUTdMdWFEYzRhWVZsa2h4cWpSUHNnNko0K09I?=
 =?utf-8?B?amFzaUJMRlNUcVhqc1ZVdGwzb24rUVBaVVRlMFVuem9wMVBJb2wvVktXNmgx?=
 =?utf-8?B?NHZKUURnM203NlZmMzdRTzRWSW93Q0gwbitxa3pqWCtrSDBpamViTFNQNnR4?=
 =?utf-8?B?ZDZaazA0cDlud1BkN0NROURHODlvYmRyTndZYkQyUGhZa0wvejZIUWgxRTNi?=
 =?utf-8?B?cm9JUXdLeTRQTENvYUdpWnZteVhZTlBCZnJGelRBaFRHNzZWT2xzSVpmOVlp?=
 =?utf-8?B?dDJuOFpmaWhZYWl1L0cxTjNCSE9FNXZyRXczaGlYZTRCbUxSQ2t1Y3JmZHFE?=
 =?utf-8?B?aU9PVjNsd0tnaXg5SEd2RmVGWUdzMDlWZHFPSEtURVBKRmU4TFpRdjh1VGU3?=
 =?utf-8?B?aXhDTEtxYXRNcS9lVDlQenJhbDJKQmlQb0tNbWFLMVVseHZ6NW1LaGZzNEJG?=
 =?utf-8?B?NVF4TXVzcnMwdmhCUmRTZUZOZ3ZrRGk0Ky8rUTZlaS9QcWYrVlRvY0QrVFdr?=
 =?utf-8?Q?bPFx/FSxN03kr960wS+m19ivdDEUuoKt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bm4wYnczV0ZWOVBIRWhvc1ByU01PNC9ucXVLcThnZ3gycFhjN3NWNGtycmJT?=
 =?utf-8?B?Q2J1d1hNOG9CVytUUXluRms5UThPM2ZSUk1SN3dKa0RLUUI5V0kvMXM4eFk4?=
 =?utf-8?B?MUtBdWJycWR5aUZValJ0dTZNNnFYbnM5MVRKWFdTdlBuVld6MXAxRjBMeDJr?=
 =?utf-8?B?NjYydUVWeHlSV0JIcEd5VkJaODJHeUMydVo3U2lBVkpuNHllSk1Sa3F5azhr?=
 =?utf-8?B?ejZSVS9FeWU5V3dNaW9tVlNzbU5wWVgxSkU2a3Nnd2RpcE94Z0xiamkyRE1D?=
 =?utf-8?B?R05LclBMVVRKbDhxcW44cHBNY3Q4ZDJWQ2NUcHhwRFV2ek42L3NhZXc3cGRj?=
 =?utf-8?B?V2l4bmR5L2UvaXJObXpwaDkycW5BRE5FSnZ3bnJKTXE2Q24xZzJmVzBWMHFx?=
 =?utf-8?B?LzZUQWVFR3JydS8wQlFiWWNFV0hXN2w0V0JHdkoxYzVuR2UrWUVnZ1Q4dUE0?=
 =?utf-8?B?YjJzRWVsamZ6eHRVOHBLeVlOSmg3ZVE1NHRDK0pMcW10eEZOSXhlZjNMaXcx?=
 =?utf-8?B?cmd5czF3dm01dFVuOXpzQkRza0wyNzJvSkI3L1F6RWhEVGx4bVd2UlpITGtR?=
 =?utf-8?B?eWxrN1o0eUhHUjd1OVgxTFNrRmZYMm4zNHRkNHJBTFZFTlJ5TlBhaURqSHRh?=
 =?utf-8?B?SzhydlBlV05wRE1MeEdRUEZMZ1F1NHdXM1djUmpwQjRVOWxEeUF5b3hQbXQ4?=
 =?utf-8?B?WUs5cTdSMnpncUpnSmlxa251OU1BUXM2S3JyOGI1VmxFZW9CQzRkWUFXVFBv?=
 =?utf-8?B?SzUwdTdVL2RDdW85WHVpUWg4YU9PSGVBbTE4WWw5V01DdWtJNjYxWmUweUtG?=
 =?utf-8?B?LzE2R0JEZjJNdFlIeHE3RG91ekFkd3pHZnkvSlBUWGhFYTdHb1FoYytFWDI0?=
 =?utf-8?B?UkgvUkRnbVh5T1N6clJnRnhtdFNnNmRTaytpZlhLVmpxdXBWeTJNc2RHeWgx?=
 =?utf-8?B?YVYyZjNybmlNdlNJbGJvNFR6eEtIenhKWnBoTlBsUlVoVnd6RndaWlFSTVV0?=
 =?utf-8?B?Q0JKTWF0QmJBYU1zb2dhQ1JIaTJNSysyRjRiSUlBMzQ1UUYwblc0MnlXcEs3?=
 =?utf-8?B?VDV5ejNDdmtBRWF6alRLK2tnUFU4TkJKU1A2OGZMQWlwV1dGcHp6cE9jd2Ro?=
 =?utf-8?B?bVRGdzBUN0VkUEtWRmJySFA5M2tBQjNCTHptcDNTZlJHcFBJZnlxRm9EMDh2?=
 =?utf-8?B?cUZKY0FUNzl2NGNIQWlNbVI3MjFDcGIxMSs0MGQrYTRBbE5GQ295V0tuUkN1?=
 =?utf-8?B?b2liNjV2TTBEeGU2YVJnZjFUL1cvYTdtUjdHSWZZSjhPZEpiN2d2RnJaRHYy?=
 =?utf-8?B?c3NSRXBadkRrL3VhN3Z1TzBUSXJzSWYrZWo3ZVNrenNBTzY2RkkySDg5Wlc0?=
 =?utf-8?B?ZEM3UkZmTFV0SGNoT2djNmZmK0FvQVlUOFRjSU5pNW0yN2EzVzBydi9hVkZZ?=
 =?utf-8?B?M01YdFBBRkhoT2hwZFM1Tklua09acU5Qc3pCTzVlQUR6R095eXR6SFVDQlJx?=
 =?utf-8?B?SkhQVlRqZVk4ekJOUTkxSUN5RmxpTTNuUTdqUkpwMGY4b2RhTmR2ZUZ5M1Zl?=
 =?utf-8?B?bGJkM0xValMzQ0xVTXd2NG8wZHJtVUI3RU5HRloySG55ZGdocERYSVU1Y2hj?=
 =?utf-8?B?UGlnR1c1TmYxR094ckM1dG1uUWZvVDVMbEJJR09kN2hOWE1aUzdNdTd5Nlp0?=
 =?utf-8?B?UlBkcFA1NThkN1VvZlA0NU1HdkxnMGl2MU1PTTk5anpOVUFpWWlBTEtDeEJ2?=
 =?utf-8?B?d3QrZUhiSXZLVkNOMmRzalB2WmZJTXkxWmord28yd2ZhZUFuemFIYmI5eUJT?=
 =?utf-8?B?RzcyUHZ3dGdrbUtHRkRtdVZObTVpNTAzZTJhZ3lsMDhvQlEzZW1ITVJ3ZmtD?=
 =?utf-8?B?K2J6NE5CTklLQzZLeHR1ZUNQU1p5a1IxZjJDOTZ1Nmk0K3Azamt0by9TbFE3?=
 =?utf-8?B?UXAvR25hUUJYU0RYSUlsMmZybWpEc2J0bmJUNzhWajlzWVI5cnBBV2ZHL0NV?=
 =?utf-8?B?S21UTDBIM3FMRGhqYlRJUXBBVVFlTVZLM1pFK3g3U21FZElBTFZ4OW51Z0xk?=
 =?utf-8?B?WWRNaG44WFB5V0UvWjc4S1lhZlVGS3l3QkF2bW1FVmxtRUlRdVJobWFtVVE3?=
 =?utf-8?B?RTZTV3FQMFV1TUdMTWxRc0l5UmNYSzgxVUs5UlVxSkl0OTRkK2RpSnFXeThM?=
 =?utf-8?Q?sSKsjMdQtd4q0YlvBI0pCf8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3B7D7803A7AD1A489DD24EB48A5E855F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77aa5eaf-c774-4d71-c8eb-08dd4ba64d6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 20:46:19.2056 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 01AQv/Sn6LFpNg8MRoIuUyIZUqwTBXKFknQfi5NLQY8BFG9JfefnR3ZqHIRML9ncnNtVVvf+bv2QXxjEgotyo2WbbJi3QTPEUUcJ6LqgPTY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4740
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

T24gVGh1LCAyMDI1LTAxLTE2IGF0IDE5OjQ3ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIGlmIGxhZGRlciBpbiBnZW44X2RlX3BpcGVfZmF1bHRfbWFzaygpIHdhcyBtaXNz
aW5nIG9uZQ0KPiBlbHNlLCBhZGQgaXQuIERvZXNuJ3QgYWN0dWFsbHkgbWF0dGVyIHNpbmNlIGVh
Y2ggaWYgYnJhbmNoDQo+IGp1c3QgcmV0dXJucyBkaXJlY3RseS4gQnV0IHRoZSBjb2RlIGlzIGxl
c3MgY29uZnVzaW5nIHdoZW4NCj4geW91IGFsd2F5cyBkbyB0aGluZ3MgdGhlIHNhbWUgd2F5Lg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2lycS5jIHwgMiArLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQ0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlu
b2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gaW5kZXggMDY5MDQzZjlk
ODk0Li5mMDYyNzNkOWJjOGMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gQEAgLTg1Niw3ICs4NTYsNyBAQCBzdGF0aWMg
dTMyIGdlbjhfZGVfcGlwZV9mYXVsdF9tYXNrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikNCj4gwqAJCQlHRU45X1BJUEVfUExBTkUzX0ZBVUxUIHwNCj4gwqAJCQlHRU45X1BJUEVf
UExBTkUyX0ZBVUxUIHwNCj4gwqAJCQlHRU45X1BJUEVfUExBTkUxX0ZBVUxUOw0KPiAtCWlmIChE
SVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxMyB8fCBIQVNfRDEyX1BMQU5FX01JTklNSVpBVElPTihk
aXNwbGF5KSkNCj4gKwllbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxMyB8fCBIQVNf
RDEyX1BMQU5FX01JTklNSVpBVElPTihkaXNwbGF5KSkNCj4gwqAJCXJldHVybiBHRU4xMl9QSVBF
RE1DX0ZBVUxUIHwNCj4gwqAJCQlHRU45X1BJUEVfQ1VSU09SX0ZBVUxUIHwNCj4gwqAJCQlHRU4x
MV9QSVBFX1BMQU5FNV9GQVVMVCB8DQoNCg==
