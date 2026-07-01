Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3+2fIL7PRGoH1QoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 10:28:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C52C6EB17A
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 10:28:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bShJLh8O;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD67410EE3F;
	Wed,  1 Jul 2026 08:28:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B04810EE3F;
 Wed,  1 Jul 2026 08:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782894522; x=1814430522;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e6HcanYcNtF7T5xJTaK+i/MkN8Tc9vt6YszTTXVkMeU=;
 b=bShJLh8O1l0bI2QdFddrzBGVVexNZSx15HyGWfc8u+ZmKKMivpN675ju
 JVHSQN1UUbBFa+dTb4FYC2vJam9LvkAxbxgJ4v3qbs2VreoI8l95h5iXi
 9B81vi+t0zwPBRhvy7Dhg9LHzoq2X6yCfGOoi23xYV0J/197ueqpxCMqA
 +brfIKZeQaUKX7j8lc+x4tVfuW0LpbZIGeIJ6CQsw3AKe34Eyb922DgH2
 J/HMUt4D1c8yTdzh7DUZBI/d63LzJkOFJsaZ5Stm+2xmhuiHEQpQB6h9D
 7fX/rYN1XxY+qXcwRk5kZLoqV92gscGVhQQs7YqkuPCvEddllezCjkb1r g==;
X-CSE-ConnectionGUID: w+T7az5sR1ePHyRnPGcIWQ==
X-CSE-MsgGUID: cJR4y6oeQqa+vncUxU8qgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="87454400"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="87454400"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 01:28:41 -0700
X-CSE-ConnectionGUID: 0w7aQMyMR7WLz6Pw+vDdJQ==
X-CSE-MsgGUID: OAy7hJlzRSG75ZuvpH3jOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="275727910"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 01:28:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 01:28:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 01:28:39 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.31) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 01:28:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oJHIrhH66d48LXDc7/iGyBdaKP6Vl3KV0YtuDX/3eXqAGPRPvs13k2iyxr/vbsgc9p+2onTnUKgPU2E027cTKuKnhe0X4ziZN7PvmV4nJhFJPIuEPtOmzjYiaBHjrQJpdCl8EajeHtySm0sV+P7bDOAw0kCmK2YBTDc8iV3AyWpm2GHLz6W7vrla3c8kFX9HPS5pbPTnQggu1piMkX/DifW2Cw9hvN1t4GXwb402zmXXkRqmdo0Ci1r8XEOI2KHGtowY+jJyMYawmepvjumb4VFmlBij3ng6IYDHVJ6P0Uamp6RBAcaIb5bu+P24wkoxDhPUXnI3Y9nDzi6pIGtTLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h64HFFyY/dbr0uJsrN6HVWqIkropEG0Tnkk/3r5/BNI=;
 b=fhx6Jg7L+k1qEWU7sy0xABZrx5TzeFDAItha3hSoG+/wL5FSRG5BF6GwP7FCwRhcvqUsQlGbTrDcaB2eOip+xB2NWykq/XEAGKolco9BHaA1s+Vl7kyVFB7/AP5r6qUkJycuJ6o8M9QjtMXR5wfnQakWABE0rLuuO+3n4e2ylpSlZWRCz0W4l+arwgMgb7j45e8m2Sisea7Io8yHGSGCFaSINXOg2ZRA7U+YqnmpMgFC7mXRVQwYnBvuveMQOIdppFUdcQSNbDwIoc5+09Iao1CulM429pR4RWRL73/5UIcZcnXaU+Go+drdQ7GhSdlpzujQ96VYpEUQ5EWMNznLUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by SN7PR11MB7537.namprd11.prod.outlook.com (2603:10b6:806:348::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 08:28:17 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 08:28:17 +0000
Message-ID: <fccd9cd9-ca51-48e1-b564-528848a40b1f@intel.com>
Date: Wed, 1 Jul 2026 13:58:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/4] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
 behind driver feature
To: Robert Mader <robert.mader@collabora.com>, Melissa Wen <mwen@igalia.com>, 
 <dri-devel@lists.freedesktop.org>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 <linux-kernel@vger.kernel.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, Harry Wentland <harry.wentland@amd.com>,
 Daniel Stone <daniels@collabora.com>, Uma Shankar <uma.shankar@intel.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>, Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <pekka.paalanen@collabora.com>, Leandro Ribeiro
 <leandro.ribeiro@collabora.com>
References: <20260630084229.529682-1-robert.mader@collabora.com>
 <20260630084229.529682-2-robert.mader@collabora.com>
 <0570d22d-bf3c-4c17-b50e-58f522f25ffb@igalia.com>
 <9eb18964-fcca-4fce-9fb9-f36d762ac23e@collabora.com>
 <267deaf4-55ec-492d-8646-e16a9b4bfb65@collabora.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <267deaf4-55ec-492d-8646-e16a9b4bfb65@collabora.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0177.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::10) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|SN7PR11MB7537:EE_
X-MS-Office365-Filtering-Correlation-Id: ef759acc-7f2f-4fd6-e3a6-08ded74ab338
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|23010399003|56012099006|4143699003|22082099003|11063799006|6133799003|18002099003;
X-Microsoft-Antispam-Message-Info: qHQbh1y7O8IF4RUr8VtQYIaWRtJQRC/qaTs3PW3fIUo9xBYlyA32UkweDnwaBRLFEpA2oCH9pFegwR4kw2ketlDHf8ZXQqTYloepi5pPpFkKy/uitWvcySAasUfxT4WIMTiI9axnBQ8iIUGvGujGlksnfgs+NPvKBGN1XTZWF3ga3VK/GW4juz9DQ5hzo1hPkgSiGigXuPw0kXYYMvl3+IqSkaUwFHpbrpoy1JRDKeG57lQcSnQhSXDutuY0xlpagD2sh939L3YnsdEXBDMvvA/9yeiLsKm9GtWRUTWWJw1XHaUGOR4Vtx6hoSWy8GGPWFJcVJoeQ2vsnrXIMrLKFbWSk/yXeZNlKBcwRrvGfnkF5ZMf6V41RPhP/GOAzDCRFhQ86D0SPPYTRXgT3E5kWyIb6IxXouEzHYFlXvAIp1L1P+qp2Qr5kIhYjW6SW5eHg3kfarT8Kc31ZzlppD5pfKvMzuaa2cR4r4klioD9wwLYyTS/JOMfqLX0aLxedEsbbhmVFJJwrUbUpDl/pug1Pu6mfIGn5tFClSm9ekAYheLiESnONPlcNtaCTNHZPT9TcyCwEMP4tc3Vjmsgvb7I+q5JDg7o0wWISrX3UzdvcZ3wqvzLaVSIY6f0DjAe6F+d
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(23010399003)(56012099006)(4143699003)(22082099003)(11063799006)(6133799003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?clRsNGpCR2N1VDVYSlpiUGpBL2o2UmtLOUtvOFc5Q2N1bktxTkxpaFgrajZN?=
 =?utf-8?B?ckQ4QzAzT3hvYUwyZXRqMUZJbXNQSEU2YjczWVBXdkRuQzVUZ2JYc1ArWnFs?=
 =?utf-8?B?eGxnZVRTYk8wVUxtalU2SHE4bTY1NE1weGJLN2N2SlJmZGhYWG9ZV29sS05l?=
 =?utf-8?B?enU5VjZGS3JMNEZiY2Q4S3BnQ1hoWGpZTDA4WGlPM0l1dVdMcEhNZkZEME1G?=
 =?utf-8?B?b3lHZW40eE4yOUNBdll1YkpSU2JxanhRRFlVVGxtOHBNZkllNEw3aFB6djcy?=
 =?utf-8?B?dE02Si80cWZVSXZNbzBhY1ZzR1EzaFNwNHhLcHRFa0JoUVZla2daS2U2OUVC?=
 =?utf-8?B?K1I0OFU3Q2lDZ1A2NkRuK3BqNGhZaDNjSDA4VnFwcWx1ckp1OHFBb01EQ3ps?=
 =?utf-8?B?U2pLUmpWM1k4Q2o2WUZJc1J1MWlyTmlPemZMYitSalRIOVgyanU3bXFrem1I?=
 =?utf-8?B?T2ZXWGU5UWxmWDg0b3UycjJkV0FOTlhnZ29vMXR5Njk5Q1d5T0VDakpkc3ZO?=
 =?utf-8?B?OTBNMzh3Q2x0OVluRkRtNU9DOWJHSmVIOUJHNkJpUWJlOGVZdzZxaUN0YThW?=
 =?utf-8?B?K2VpY2M0Z01HcUdCdlRLNTA3WFRDaG9WZlZuRWxrbXhYeWhhQ3pMeUlGSjF2?=
 =?utf-8?B?enJ0MFNvNkxnTnhsZEtvZy9GSWV4VGEvOWZUcnRuVzBLd1lJajFkQmlpMWhs?=
 =?utf-8?B?OFloSVZhNjA3RkE0OUVadkhCZU5rUHVrQWdiRlEvYXhncmxLKy8xZFNtN2Rr?=
 =?utf-8?B?eStRZVlManRyNjNZR0tSR2FRQXhLVnNLMGZOQ29MaFR2bVhrR2o2b01yNDFv?=
 =?utf-8?B?T3NJdTJSbXBzU2U4WCs5WFlrZG4rb01PaDJpT0FQdG81dUtCOXd1S1IxZ3cv?=
 =?utf-8?B?OEdwMmdOZklCdlFjdlEwd3NrSkgxeGVRNHN1azhXWVdsWGJWeHJrUUlIYkY5?=
 =?utf-8?B?aVkxQlZTKzNscWdFN0NjRWdSSzFzODFOYzlaRGN4aWljLzFOeUtJZlFVRW1x?=
 =?utf-8?B?S3g2WitzZk05VlEzZ2MrNmRZeHdMTmxDeVUxUlp0Q0taaFFkN2g4d2VBWEV4?=
 =?utf-8?B?TGlPZ1RueGJMS0h3R2hJelNIOXN1Qm1nR2YxaXZpK1NDdUlCUGw4ZUVCNDJn?=
 =?utf-8?B?T2RyeG9XZTFJSDRLaHpKZzVkMWtyM2pnRE5FVWxuMk50Vm41NzJhQU9NSnJr?=
 =?utf-8?B?UlJNd0kxWGI4TWtsNnBpVFd3UDN3SkQ0QmxKQXFsS3hoY0IvR0MzaUxqa2Uw?=
 =?utf-8?B?OXdxUnRrTFF4UkNGNU9MS2RQU2krVjV5U1I5UkRud0NVZXJOTC85MU5mMk5o?=
 =?utf-8?B?aGlUdkM2N2ZRNi8xQmx4b3FhcXZ3YVNCd3R2bjJETHFkbTF5NXcwYW5qaGtu?=
 =?utf-8?B?b3ZQbTVnWDZrdG1SUGlVdmwyenloT2FEQTBRWlF2c3RTTSt2VU9QL0lubkpY?=
 =?utf-8?B?L1BPZXNyZGJzQ3A5bmxnK1kxOHhxOHpwWlowcTRoOHprQkdYWnFGWExiVkNu?=
 =?utf-8?B?VWt0TUN3Z3pUTTUwTjZtQ3Q3SDhLSDAzbDRHaFRBUUtzWDYrZUQ5VzZnVWM0?=
 =?utf-8?B?QW80a1BmSnJLcUJRYjEyUHVhSUxoaitma2Y0aXpLUE1mRkp4U2lmWGR6dDdV?=
 =?utf-8?B?QVdxTGZNSVFnZVhrOUloUFJQT0tJVE9sYllNZ0ZuTGFvdzJiekdQOUxSdTQv?=
 =?utf-8?B?UDJya1JDR294dXJwdjZWeU04TDFMWEZ5R2ExVUd2OFo1OEExSjJtbFlNc0I2?=
 =?utf-8?B?K1dFTUxKQVdLakRlS0FmMTVNcGgyazN4YTBQTE5WTlN2WWNLOHJUTHFLQnd6?=
 =?utf-8?B?dlpPbGZTK0xubTd6dnVpelBiMDd5eUwwOUtwSm9qcDRVZ3BIejhHUENqRGNW?=
 =?utf-8?B?Qnoxek11aHY3eVNCek9TMHNKa2VXYU5xV0VlZGhta1RCbEpwNVRDWTFNazZJ?=
 =?utf-8?B?aXZ1NmVTZXZMNG9YQ2ZTeW8zdFV6aFVDbTN4dU5wSVYybjUwSmxZSFY3SVUw?=
 =?utf-8?B?NVBiQzhBZVJlREVUUTJxcTQ5MFJJV2JSNzlDUWt3bzA5QTlESlpidUJWNksy?=
 =?utf-8?B?d0lhL1JEc3RxRHR5Um45MVpOUWxsaGNkYzVlZ3pFL3k1V0lGUk1UT3VLNER2?=
 =?utf-8?B?Q1NHWmgweTJ0Z2l5UUZCdkJqVVlFUmh1Y1RqWDdUeFoyNTNjWGlkQVluS3Z2?=
 =?utf-8?B?Ylp3NFFGNlJ2ZVB4UTBJWndBWFA2bVdKTWd0MTgrVjAzUCswbHUvTkhZYVBp?=
 =?utf-8?B?djlkb1NQRzZ5cG5QaHI4THUvdTVBL1ZabGZFQzRaNG95VkdCNHpaWi9sd2Z3?=
 =?utf-8?B?bmVpa1RRSkt0a3ZZeXBtSTBjVG1vMjl4eWp1MnAxRUxVbHNGQ1g5TGlHWkhJ?=
 =?utf-8?Q?oNK4E7vWes23hO6o=3D?=
X-Exchange-RoutingPolicyChecked: TlYpJNe77qAKOdpQ42+qeq1ksoAUuccMLfdiXrdTTrjzYLIWy2bocdUS4irDgM+F/6c4ToxYXJbvaU5iuCou5A2IeJXhvGNZF24fDEp6Gy6KBQ68SN0VSgBvdeKM771jHhWpJh4cJ8Mkh7InyI6AUTkEbVjgFrwNgam03rkGQbrDRMh/XpvmtfLi1Je7YoSKDchrTJIBWwzIme2vt1e1suDu5NTk1pHW1fkjd/6Ekyscxw16mIkjZooVfewZC7vnaoz5APyFfOBMR7UPx8jGlTVHaEKjlt8ADssuPm6CbaQCa/08GUPmjKCmLIbIjsUmP9eimmT+YQZbqf3nmXmYZA==
X-MS-Exchange-CrossTenant-Network-Message-Id: ef759acc-7f2f-4fd6-e3a6-08ded74ab338
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 08:28:17.1612 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PyZCFj0v4ocHB6JLUnwu28hwkOE/BlgBAxJxxO61+WpBJycP7O6ApmPyolFQFS2Y7BGEhUHy6gaHQKqyktVH8nh2+TZ64hmh0kGRxkGgdYo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7537
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,amd.com,collabora.com,intel.com,bootlin.com,emersion.fr];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:url,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4C52C6EB17A



On 7/1/2026 1:39 PM, Robert Mader wrote:
> On 01.07.26 09:35, Robert Mader wrote:
>> On 30.06.26 18:57, Melissa Wen wrote:
>>>
>>>
>>> On 30/06/2026 10:42, Robert Mader wrote:
>>>> The client cap is currently advertised unconditionally, even for 
>>>> drivers that do
>>>> not support plane color pipelines. If clients supporting the later, 
>>>> like Wayland
>>>> compositors and drm_info, enable the client cap on sich drivers they 
>>>> will be
>>>> left without both color pipeline and the legacy properties 
>>>> COLOR_ENCODING and
>>>> COLOR_RANGE, effectively breaking YUV->RGB conversion support.
>>>>
>>>> Add a new driver feature and guard the client cap behind it, allowing
>>>> plane color pipeline and legacy YUV->RGB support to co-exist.
>>>
>>> Ouch, that's indeed a problem. Nice catch!
>>>
>>> I'm not sure if this is the right way to go because plane color 
>>> pipeline can be supported per plane and per hw family.
>>> My suggestion would be to only deprecate COLOR_ENCODING and 
>>> COLOR_RANGE in drm_mode_object_get_properties() if a plane 
>>> COLOR_PIPELINE property is attached.
>>> WDYT?
>>
>> Hi Melissa!
>>
>> I don't think we need or should use the legacy properties for drivers 
>> and clients that supports the new API. Once Harrys YUV conversion 
>> colorop series(1) lands, every plane on every hardware currently 
>> supporting COLOR_ENCODING and COLOR_RANGE could express that with the 
>> colorop API as well - even if not supporting any other operations.

Is it a concern then that v6.19 will have COLOR PIPELINE advertised 
without YUV support in AMD and still not allow legacy properties to be 
used? If it is, then the nuanced approach that Melissa suggested might help.

In Intel's case, currently the COLOR PIPELINE is exposed with a CTM 
block which can in theory be used for the YUV -> RGB conversion but we 
do have a dedicated programmable input CSC for this which we plan to 
expose in the near future. [1]

==
Chaitanya

[1] Note: This is in addition to the fixed matrix block that we are 
exposing for our SDR planes in

https://lore.kernel.org/intel-gfx/20260617090819.1735153-1-chaitanya.kumar.borah@intel.com/
It
>> would look roughly like this:
>>
>> └───"COLOR_PIPELINE" (atomic): enum {Bypass, YUV Pipeline 123} = Bypass
>>      ├───Bypass
>>      └───YUV Pipeline 123
>>          └───Color Operation 123
>>              └───Properties
>>                  ├───"TYPE" (immutable): enum {1D Curve, 1D LUT, 3x4 Matrix, Multiplier, 3D LUT, Fixed Matrix} = Fixed Matrix
>>                  ├───"BYPASS" (atomic): range [0, 1] = 1
>>                  ├───"NEXT" (atomic, immutable): object colorop = 465
>>                  └───"FIXED_MATRIX_TYPE" (atomic): enum {YCbCr 601 Full to RGB, YCbCr 601 Limited to RGB, YCbCr 709 Full to RGB, YCbCr 709 Limited to RGB, YCbCr 2020 NC Full to RGB, YCbCr 2020 NC Limited to RGB} = YCbCr 601 Full to RGB
>>
>> Doing so will be nicer for compositors/clients going forward as they'd 
>> only need to support a single API if they don't care about legacy 
>> drivers (and we can adapt all in-tree drivers).
>>
>> Do you agree?
>>
>> Best regards
>>
>> Robert
>>
>> 1: https://lists.freedesktop.org/archives/dri-devel/2026-June/575655.html
>>
> P.S.: sorry for the noise, just resending with all to/cc headers to make 
> sure it doesn't get lost - and wanted to add that I'm currently working 
> on the Weston implementation for the YUV conversion colorop to get it 
> over the line.
> 
> -- 
> Robert Mader
> Consultant Software Developer
> 
> Collabora Ltd.
> Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
> Registered in England & Wales, no. 5513718
> 

