Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E0D977872
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 07:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F9C310E048;
	Fri, 13 Sep 2024 05:44:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HOoWKw4s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5E7510E048
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 05:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726206281; x=1757742281;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ndoZ6F7gAP2PJyh/bxcRLEPY8pMWxNl8OWAF219hfQY=;
 b=HOoWKw4sHxGA2e5wErnH6UBwnYZZ60AiEQV1tKKF7SIgDIEk54FV1y1d
 YFnPxxXz1C0fIYz7oHaSU7ESt+rQOoXuDltqCwvjBOXgAG8D1KnhVPvwF
 Xp4zCQh6CHFagYpaQKSuqDdUmnT2UsA2AJ2c0Kn25wv2cN4WyhFzuV7pb
 NYWwyJxFLg202JXlB4X8N4p3Tii4n9t00kqCJ0V50fmfQ0TXuwy8hijJx
 fCatcTvQyjDDdSpx5jxBFTAHGREkU/aPO/G66o+3qB26Og0fRrapEt0pe
 oW0BUYnqo1dt1GS1+C0IbGnxZUcOgyBa/59zNtPWRZtq7vNqbMtbb1djV w==;
X-CSE-ConnectionGUID: ddPpb7egRPK1JtY9VVQJHA==
X-CSE-MsgGUID: gecNxzgxRKWU74LDtXA1qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="42569932"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="42569932"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 22:44:40 -0700
X-CSE-ConnectionGUID: dPeZe3mcRW2zQmjjvRq+Ww==
X-CSE-MsgGUID: rlMtfHruQe2hhaY4NqHHfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="91199913"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 22:44:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 22:44:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 22:44:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 22:44:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 22:44:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QVEHs+BCJTeFhC8Dsd+7+a8G4fOATQDB/1EhSXNICd4lp06ZQqKG76gvfiHfznhfhQAaB7Ms9fEaYimvaSQKXiOdD56VCNOHp/IKT6Zt1o6Ow8RAKxLczwEqDzENd224S7HCyOzpyVNs7GbtBIwEf8KM/3tDj/bcXOS+UeXY4Tab5Ncpx58yMoTxt1eGeT+2rK43hkliFp1AmjsNsq1UCOC6iwtWOHPNaf2dU+uM55tx8GIp2TApGbxfZbLdTduprYrzBxXw3OCWodlfa6MZfn9Uzme6tZQuDuGpC9gILOeOnXRApyDzwi6Ojt5jlsViMIILuxyhXyyBddN+Vps95A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RAnlqy0F4T6kKNhJs5zmXL5rn1sEi/rxvIpvQ2FqPeQ=;
 b=jhWJ9OEiQ4/3FsqxF9XNY6kfq1+3rIVz0HAW8Uw9O2eQXCMbSM3QLN74qPO9oDoUPsHsUJ9kEWksxDUia4euMjtjhfseFE+DO0wxAO66dHGlBG3vz5p/dWG9MPl0CJmxmy4k5B3fyYlmO74ql1dcdg9nM7blthVVmiTLru62TgzoECzPNmJeHbQj439aP6Ipg3aNFi7QMWiHS8nRDmXuZ/5JE98gPXP5ExSnK/+25w1oaxRRmGUhZiJlLpWe9y4ijXDOgBuyK36b8l1p4Rf1v+3X9XzUk8RQXCutMb7xic4495Rc3yHsCOjEqxeuiUljgHL20jrbIijLVZHAS0rnAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 DM4PR11MB5295.namprd11.prod.outlook.com (2603:10b6:5:392::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7962.17; Fri, 13 Sep 2024 05:44:31 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245%4]) with mapi id 15.20.7962.016; Fri, 13 Sep 2024
 05:44:31 +0000
Message-ID: <b0eb87b5-e42d-4ab0-9d48-7ca07ef80708@intel.com>
Date: Fri, 13 Sep 2024 11:14:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/hwmon: expose package temperature
To: Raag Jadav <raag.jadav@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <tursulin@ursulin.net>, <linux@roeck-us.net>, <andi.shyti@linux.intel.com>,
 <andriy.shevchenko@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <linux-hwmon@vger.kernel.org>,
 <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>,
 <ashutosh.dixit@intel.com>, <karthik.poosa@intel.com>
References: <20240910105242.3357276-1-raag.jadav@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20240910105242.3357276-1-raag.jadav@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0062.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::20) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|DM4PR11MB5295:EE_
X-MS-Office365-Filtering-Correlation-Id: 33cf4a9d-2756-4fdf-8bf7-08dcd3b723e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YzlGTEZyanAydWNEQUdjMWNDU3RlUzhPeTVSdzk3eDlZMEVmTjZVNnViOUU5?=
 =?utf-8?B?SXJHTkp2M2g0UFQ5NHFsT0ErOHRoaERLUlZJTXdOVjdsS1JUSWZEem02dmZS?=
 =?utf-8?B?d1d3OGhKS3JBdnZ5YVB0emJBZkY4SVcyV0kyR2hlS1hpb1ovbHF5WjJJbU13?=
 =?utf-8?B?L2Y3U0V2V0MwSGN2VkNqOVlwblJIOGgremI5YWw1V2F6eXYyMVBnZVdmL3h1?=
 =?utf-8?B?bTlZeGEwb3FVUC9FWTh2aDRqVGNBdlZiWWQzM0hTSDNKMFh3MXNWMWhIaTRs?=
 =?utf-8?B?dUpXNkl6UWREMVl5Q2xoOTMwRC9HVTZROTZYb1FreHpOV3F1SzNuK3BuL0l5?=
 =?utf-8?B?Qkg4K2hWcWRWQ0VZT0NNZ25JWWlLMGd0bDlKdFBsdSttcXVWNTFFY2tmR25k?=
 =?utf-8?B?ck5EdFQ4Z0tlUEVtLytiV1Q3VEpGT2dRMDhUZWIxekFkWVRQR1FLWlNXdVlD?=
 =?utf-8?B?TTF1WGx5VnlSamZjajhmc0txMlRaMzlYc0s1QnF2UEN1QUNLTWx1LzVDSXFq?=
 =?utf-8?B?d0ozT2VQeVplUkJvckd0V2VoNkFPTS9kQzZGWW9oVlhHSnBIeGtaOCt6RkZX?=
 =?utf-8?B?VEphK2ExTzlkaURWdk8yaFBDUVFucndwNEhpeWxwN1V1QlpDVi9NVFV5eG1L?=
 =?utf-8?B?NUVQZTJyMDFEL3d6dVpMVVljRkFwNGovcjQyK0NMN2doWXBENS81dFA4bUsw?=
 =?utf-8?B?VUprU29tQ240OUN1a0ZrK2h2MWozRkRxRXRaY2tlVHVWU0pLcDNKd1dyeFNS?=
 =?utf-8?B?UVp6Sm5sMzZKdm16RjREcG92ZUI3dWhRSVhkZUpWcFBYenBSL1VlRG9pcm02?=
 =?utf-8?B?RVAvbEhPUEd3UjB1ZGxEZTY2T0J6VkZtRk4rZ2t4LzNBelZjeG9IZ2dHRDdX?=
 =?utf-8?B?b2JMU1hLVVFtZEJMaEViNTdDNUdwV0VuZEc4eHc3UGRvbHRzWTlybnVIVmhP?=
 =?utf-8?B?aFlRNHNSZnUxcEVNL0ZZYUs0eFNvWWxKMjIvOVZETUU2S0JXd200VlU0QTFJ?=
 =?utf-8?B?VkxhS3hGQldtUE9ubDV6VFJ6bEZrSjlQTGlaUnA4VnBmZkhybTAzOGlVL2dK?=
 =?utf-8?B?MEVabXhsSUhNRFRsUURNVHB5WXVQSlI5ajhKaWdNTFJZd2JJeWhXWFNyL2Rw?=
 =?utf-8?B?K0RIUlk2WkZydDhHVUpXdHRLQ0x6TmZwSzRXc0FtR2E3eUtFLytWVGVlVVZj?=
 =?utf-8?B?RGxrQ3pMQlYzdEJYenB3YkZIOExwQnhmdVlDdG8yYUxXckhPbVRvNlhSWTBz?=
 =?utf-8?B?bVdCVGlWVFlBcmR3SmE3eEhadm5pNWIvdEdhQVFQTnE4VTdtVXdFalpBUmFT?=
 =?utf-8?B?dzBJRzJESFZWanlrd0FTQVEwS1dScVpjaUtwN2lPWVZqblNxTmw0aWxaTU9X?=
 =?utf-8?B?MFQ1YUFQbUpMMjN5NTF0MndhbVh6UkJUbHR4K0xUc015ZnNyVmxzOUZBc1JU?=
 =?utf-8?B?RVRKVC9JNWNBZ1NvaEIyRURndFdCbWRpRXREdmhVU2JiT3JwLzRkUlRadi9C?=
 =?utf-8?B?WnM5RndEME5FZzlNaWFtNWJNK0F1SG5qWmxJV0dOZGtNdmFSSEljRFhqZ3Vo?=
 =?utf-8?B?VW1mTE05ZHNPazlLZVV2Wm03dGsrVjdnY0I3L25EMkYyV2NqajIwczlDUWRt?=
 =?utf-8?B?YlNvR0FIMEJ1S1p5cjYwcFBNc2x5aTFoTjc5YXBGTXVha3dDYktHRjFDZCto?=
 =?utf-8?B?SDBrenk3QXNHTzFoUjAyY1dERm5leVpBcE50MWsvSlJ6REgrTWxjRXpHbHNk?=
 =?utf-8?Q?Hli5J89m2O6/K9vfq4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R01YMzgxZS9Ic1dCNUt0VjVObXh6cy9oU1ZDVjJaMGZWemhKN21MaFc0TEY1?=
 =?utf-8?B?bnAyRjFKWndaQlBQZ2JqVlo2Q0JYUEdqV3NXamJxZ1c3R2pCNTZaUU0yMDZ0?=
 =?utf-8?B?bm1lMTVEM09OQVhBd3lzc3hncEcyRWZON24ycDlIUUc5ZlhockNydkY2VFhS?=
 =?utf-8?B?QWxIN0M0b1owS29tamZ3dUZaM015dThGbWJ5T3IrNEF4VXVBK01XMjA3WFc4?=
 =?utf-8?B?RllXbWhJWWg0R3dTTE1UN0Y1QytNUTVwNlF3d2lTVlllMis0bVh5S0ZqQnZN?=
 =?utf-8?B?R3M5cE52SmdDL3dCb0tSQ1p1VzFUcVk4L1pLQWhhWTRmTThpbXo1YWpDU2N3?=
 =?utf-8?B?bWtzaGxGM0IwVHVaWEtpeElZRjFnc2dPSVNzdkRJUjV5RDhidlIzMmtEdXdG?=
 =?utf-8?B?UWVHV3ZKZnNxOFk2Qm1XVXI4ZnZaeGRzNWlaMDZTdFVzMldLc21TUExMeG5P?=
 =?utf-8?B?SlYvSXR2NkFOcWNUa2hPcGJTOTNzamZWMmlXY2phdkMrb2V4RjFLMmNXVy9X?=
 =?utf-8?B?K0FVNmlXL20yWCsyRFBwbDRvYlBaU1ZvUDdDeStVN202RVI1dlM2ZHl6ZVla?=
 =?utf-8?B?TDkvWGVQdGJDYU42RlM2K0xQYXJSWERXYk95Y0ZLejcxdHkySnlGRDViTDRT?=
 =?utf-8?B?aElkbWRTcDEzaUJRWDFoWmpDOGtOSFZhYVpRRFF0T1IxUDhDRzhWcHJZVm1J?=
 =?utf-8?B?bXZsSzhJb3hpKzJvL0JCdURGbk1jMFF0M0JsK0pubkh2c2hQdVhMYnliSk1H?=
 =?utf-8?B?YXltNWp3aGhMUHd4SSswdHBtdnRseHdzNHJzQWd0MGQ0a1RjSFVyZGh0S2pM?=
 =?utf-8?B?SUhFb3ZzZjJoOGFFTU9uK1V5RHdGelBGRzkrZnRCbGhONG0xOUQxUitrSmE0?=
 =?utf-8?B?OHFCZHV0dnVUSFdzYUJFRjhzSXI0TzVWR3kzK1lmMjhJV2JrNHZsVEZxMzV2?=
 =?utf-8?B?cGFSZXFFeUE4K0NHbGx5dklmeTUvM2xaR1cyV2VVeVZ4R3JFTFc0U0ZVY21h?=
 =?utf-8?B?ZEdPbW9jd2R3NHpoQ3lYWWJFUloya0NmQklVQ0JGWC9PRFRCbHRZYU11Yis0?=
 =?utf-8?B?V2VWK3dzMmM3eENWQ2N2dzcvbDRrZXh6TXAxM0t1dXNPU1NBYzFLTUg4ODZ6?=
 =?utf-8?B?Z1kzWllmTU9udnI0bk1uV3h1TFpTMEFPVGY5eS9qQVFSRy90R2oxQTNQbWRa?=
 =?utf-8?B?SmpZWlM2UytRWUN3eWNDU3k3WVNUUC9QRjhoTFlydHpyQ3JtV3R2a291Z2U2?=
 =?utf-8?B?d1JEZ1VQZnM3SzhBS0xxUk5LZFlUd09XWXNRRFYrOWFqV004MmlJZDBwTThh?=
 =?utf-8?B?QWQ4TVRYV0QyNHl0UFdvRHN3RFVSZHgrV0IwVGR2YUFFMEVpMldIZDR1RjJM?=
 =?utf-8?B?eEhBOHhDNDAzV2R3Tjk0RDVJQWFPU3JYUWZHT3dGQlhsY3B4UlF0d1BzS1FQ?=
 =?utf-8?B?RXpMcmF3ZzF1UzR0VkVES2VuMDVwQTlwaTVBdDRYY040UVpTNW0wMUpaSFZ1?=
 =?utf-8?B?UWpFbkxXSzl5V3dLYUxRM28xM1p2ZTRXQ2VMcnNJZjhmVHBhV2Z2WmdFNG9X?=
 =?utf-8?B?bEJTaGZUeCtlMWpnQThTTEhlcDJSdWlQNmZOOVIzUEdUY25UL2pWQ0ZEVG1X?=
 =?utf-8?B?Mk8yYWkrR3IvNXREdDZ3bHAwV1VLcGxWblF3TVd6Zjg1cEw1NGs3MnZJZWpY?=
 =?utf-8?B?SHZ3V214Z0ROUVBLOHNBNVdQaEFEczJYalNMaUlJc0psak9WcEltbjlPZVBa?=
 =?utf-8?B?Uzl3dkZxTU1pN2hXdlQ2MVRqL2tEWTkxT1NISjFqVGxlRWJNYmJnb3hiN0FI?=
 =?utf-8?B?U05XT21tdTBCZHpyZEpaMU9uTi9XdHF5ZWZ2bUZTK3ZmODQ0em9ZbnBGcUhF?=
 =?utf-8?B?amFSTHNjUllzdHM1eUhFVGpWcU1hWHE2RUd3VElJMGEweGppVEVTL3FzWlc0?=
 =?utf-8?B?TTEzQW9vb3d1c3dRQWxPYlk5WWx4SnhsemF2QW9nbmFnS3RNdTM3dnNjck5x?=
 =?utf-8?B?ZTRKR2EvNnRGQlFKRFptemNkaEVQaUovQWNoY3VBNlJ1bE9SVnQvS1d3SGJZ?=
 =?utf-8?B?V3I1R24vUUVmeUdDdGJFSDBVV2RXZWE1RVZybUJUODg2dEVaejB5eTMvTy9z?=
 =?utf-8?Q?l0EAQEMF1GdmXSxJYO/UiSiqR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33cf4a9d-2756-4fdf-8bf7-08dcd3b723e3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2024 05:44:31.5664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gU9DOZ9C+jxq/FvsokqhHk/SBAvV9CJKPGTRdq2N+O/O1GZY9lnVtP06SWjh2E5vpbZs4EUMGQv6XNX5ir932A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5295
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



On 9/10/2024 4:22 PM, Raag Jadav wrote:
> Add hwmon support for temp1_input attribute, which will expose package
> temperature in millidegree Celsius. With this in place we can monitor
> package temperature using lm-sensors tool.
> 
> $ sensors
> i915-pci-0300
> Adapter: PCI adapter
> in0:         990.00 mV
> fan1:        1260 RPM
> temp1:        +45.0°C
> power1:           N/A  (max =  35.00 W)
> energy1:      12.62 kJ
> 
> v2: Use switch case (Anshuman)
> v3: Comment adjustment (Riana)
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11276
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Looks good to me
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
> ---
>   .../ABI/testing/sysfs-driver-intel-i915-hwmon |  8 ++++
>   drivers/gpu/drm/i915/i915_hwmon.c             | 40 +++++++++++++++++++
>   drivers/gpu/drm/i915/intel_mchbar_regs.h      |  4 ++
>   3 files changed, 52 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> index be4141a7522f..a885e5316d02 100644
> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> @@ -83,3 +83,11 @@ Contact:	intel-gfx@lists.freedesktop.org
>   Description:	RO. Fan speed of device in RPM.
>   
>   		Only supported for particular Intel i915 graphics platforms.
> +
> +What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/temp1_input
> +Date:		November 2024
> +KernelVersion:	6.12
> +Contact:	intel-gfx@lists.freedesktop.org
> +Description:	RO. GPU package temperature in millidegree Celsius.
> +
> +		Only supported for particular Intel i915 graphics platforms.
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 17d30f6b84b0..7dfe1784153f 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -7,6 +7,7 @@
>   #include <linux/hwmon-sysfs.h>
>   #include <linux/jiffies.h>
>   #include <linux/types.h>
> +#include <linux/units.h>
>   
>   #include "i915_drv.h"
>   #include "i915_hwmon.h"
> @@ -32,6 +33,7 @@
>   
>   struct hwm_reg {
>   	i915_reg_t gt_perf_status;
> +	i915_reg_t pkg_temp;
>   	i915_reg_t pkg_power_sku_unit;
>   	i915_reg_t pkg_power_sku;
>   	i915_reg_t pkg_rapl_limit;
> @@ -280,6 +282,7 @@ static const struct attribute_group *hwm_groups[] = {
>   };
>   
>   static const struct hwmon_channel_info * const hwm_info[] = {
> +	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
>   	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
>   	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
>   	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
> @@ -310,6 +313,37 @@ static int hwm_pcode_write_i1(struct drm_i915_private *i915, u32 uval)
>   				  POWER_SETUP_SUBCOMMAND_WRITE_I1, 0, uval);
>   }
>   
> +static umode_t
> +hwm_temp_is_visible(const struct hwm_drvdata *ddat, u32 attr)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +
> +	if (attr == hwmon_temp_input && i915_mmio_reg_valid(hwmon->rg.pkg_temp))
> +		return 0444;
> +
> +	return 0;
> +}
> +
> +static int
> +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +	intel_wakeref_t wakeref;
> +	u32 reg_val;
> +
> +	switch (attr) {
> +	case hwmon_temp_input:
> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> +			reg_val = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_temp);
> +
> +		/* HW register value is in degrees Celsius, convert to millidegrees. */
> +		*val = REG_FIELD_GET(TEMP_MASK, reg_val) * MILLIDEGREE_PER_DEGREE;
> +		return 0;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>   static umode_t
>   hwm_in_is_visible(const struct hwm_drvdata *ddat, u32 attr)
>   {
> @@ -692,6 +726,8 @@ hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>   	struct hwm_drvdata *ddat = (struct hwm_drvdata *)drvdata;
>   
>   	switch (type) {
> +	case hwmon_temp:
> +		return hwm_temp_is_visible(ddat, attr);
>   	case hwmon_in:
>   		return hwm_in_is_visible(ddat, attr);
>   	case hwmon_power:
> @@ -714,6 +750,8 @@ hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>   	struct hwm_drvdata *ddat = dev_get_drvdata(dev);
>   
>   	switch (type) {
> +	case hwmon_temp:
> +		return hwm_temp_read(ddat, attr, val);
>   	case hwmon_in:
>   		return hwm_in_read(ddat, attr, val);
>   	case hwmon_power:
> @@ -810,6 +848,7 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   	hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
>   
>   	if (IS_DG1(i915) || IS_DG2(i915)) {
> +		hwmon->rg.pkg_temp = PCU_PACKAGE_TEMPERATURE;
>   		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
>   		hwmon->rg.pkg_power_sku = PCU_PACKAGE_POWER_SKU;
>   		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
> @@ -817,6 +856,7 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
>   		hwmon->rg.fan_speed = PCU_PWM_FAN_SPEED;
>   	} else {
> +		hwmon->rg.pkg_temp = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
> diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> index 73900c098d59..dc2477179c3e 100644
> --- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
> +++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> @@ -207,6 +207,10 @@
>   #define PCU_PACKAGE_ENERGY_STATUS              _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x593c)
>   
>   #define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
> +
> +#define PCU_PACKAGE_TEMPERATURE			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5978)
> +#define   TEMP_MASK				REG_GENMASK(7, 0)
> +
>   #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
>   #define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
>   #define   RP0_CAP_MASK				REG_GENMASK(7, 0)
