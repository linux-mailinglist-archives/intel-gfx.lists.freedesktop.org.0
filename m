Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 860E7C5BC58
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 08:23:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A0110E9BA;
	Fri, 14 Nov 2025 07:23:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cBv2o8oE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2196B10E9BA;
 Fri, 14 Nov 2025 07:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763105032; x=1794641032;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TGMNZkIQXA24pA38nZHzslRkamJigj04JRmy2C8BJKg=;
 b=cBv2o8oEh/XbLe2qsVYBAyZ5qMVYVKZ2LnH/ARBGnALh7uA4nA5oN99e
 4/3sE8DxYB7MVIisNIPN3zgbJxAvbkp9778PwGBqe0mv6qm1qngEcepQZ
 xGyxR4GtcjqSFfaLTkHI9yTk2XeneIJLCtl/XtJUVxVVFmafdXyyTNaOB
 MBUCg4SafvlXbNWiQLL4fxHDoB9plYYKjoUlWNZEPvzfk9mdQPk6QaalE
 ZIzFx+nH6wSwFLKw5VqVvclVHsXhj+6MJKPHvKBGbrXSPyQCBwcKTu45s
 e7/CcBdtkJdmaUer+Sj4/T+VFMjTdL3XFavolJYGf4Qc5DBrPDD49ZpPQ g==;
X-CSE-ConnectionGUID: KBRScg4xR7m+dQ/zmhqyTQ==
X-CSE-MsgGUID: 4ePxx5TbRq+zzoO28AVHOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="76656482"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="76656482"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 23:23:52 -0800
X-CSE-ConnectionGUID: 37tNlHL7Q8q87zkr2Vsh2g==
X-CSE-MsgGUID: jFqxUeT+T/KFLQCl8J/A8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="220366715"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 23:23:52 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 23:23:50 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 13 Nov 2025 23:23:50 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 23:23:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EBGus1v1UULWWtfCzhhs50+DAgaxUrsNN1h18KXJJxmdP2pIP9+WqJ3usObWIW+1he+HdCnU3iy7ukZaSeGl1rcL+0CnYKbuQRYTF4AO9Y2j2L2LK0CSUvGS1LCTynl0e1aC1y0Zy+7YZhyhkPvjjq0jzkwX90BfbQXAIHFyigpmGA+/kkjsLvIDJlQxySQ+cQVDXCaCs6j0AMfbHKUQTSVu/J4R2z5ZC3UFGCsu64IjNWDFkXFOUnoHENEMXAf9Fb6pGccQEnl6vvCfcr93pWTLKKNfYEB+WhV8CGyjER3ormtYqUDB1wbU9IDQBDYA8G08/V0Soq4k0w0XRILsVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l55z8cHyqu3ZmZqOOi+yNZXP7wmUexIOogVhJ4DDtM4=;
 b=JWwxwkQ3PB/8Ms0dQSA4SNEC0vZNQnF0dCkF9Wwq1Xlb6jWDqbfIgHdolnb998X14gERHY3L5d9VL52gDfjMrnKDlaAYTFycDBEl2OQNkx1/32Lvhk0nsJTAZMC9ppK779BfNpsVPnptZAdf6OnEINnVmSzHUa2vrYdCeLUm29qvvfbUrSGSOdmLforNKi5GsAMl1zLo9EHHYjh3YrYcZVFbZU6I+0TuXQZbimiui98AC22vlPW1PpRkXZ07eMNUth/UDVNL6agjalgCUu0FJhEj8+MRrBZOn2lpp3tSciWM6jcnNVgIAryJShwqh9Osv7AxGLeWyHtYK62IyGL1Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB7148.namprd11.prod.outlook.com (2603:10b6:510:1ef::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 07:23:44 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 07:23:44 +0000
Date: Fri, 14 Nov 2025 07:23:32 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Petri Latvala
 <adrinael@adrinael.net>, Zbigniew =?utf-8?Q?Kempczy=C5=84ski?=
 <zbigniew.kempczynski@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Ayaz A Siddiqui
 <ayaz.siddiqui@intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>, "Tvrtko
 Ursulin" <tvrtko.ursulin@igalia.com>
Subject: Re: [PATCH i-g-t] tests/gem_lmem_swapping: Run smem-oom helper loop
 in background
Message-ID: <h76mljppikwk6tjgfrqqn4bddgo6v4en7aixbq4dghfkisnt3s@kioh5oojs2im>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251112104913.701052-2-janusz.krzysztofik@linux.intel.com>
 <dfaualx72dk55fq7bdo7tf5lpdjf6qgzjwgsk77yflgzaelwnq@jw4fjrwqwion>
 <2291547.ZfL8zNpBrT@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <2291547.ZfL8zNpBrT@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: TL0P290CA0006.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:5::9)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB7148:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f38d0bc-b679-4412-5804-08de234ebe80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K015SUxSQUpiZFd3KzgyN0c2ckFxSjNxZEZwbzI0VlhSOEdqTDZHU1E1Um5a?=
 =?utf-8?B?aTl1RS9OUzI0Rm9qd3FmQmFMaER1QzdtMThxYVNwNmNQR1FGMlgzcGNXNnk3?=
 =?utf-8?B?ay9iQjArUnNLRGg4Q3AzRVluT1BmWkdqeFdReS9ZOXpDQUZmeUp1bXFqejhj?=
 =?utf-8?B?V3RtYTZORTZGQWhVb290cTZ6MFdxNXBDdWU0VWxaY3d0ZXhIdmxINkxiVUdj?=
 =?utf-8?B?REQzem9qK1llYkxtWjA0THA3alNWVWs2VUdlUExPNlBqcGhNOTlDZVZYTlFk?=
 =?utf-8?B?RGFNK0FSSGx5U2hhZ2Rjb1FkQmIzRitwU2x0YlFkKzdtUWVWRlRjNXBJRXE3?=
 =?utf-8?B?Z0Z0SnJXTlEyYkkvQWtzZ01HdkdCOGFuZm5WK1ZrNnhqZ0hZK05xMkJFbFV2?=
 =?utf-8?B?Wnl0RXVPWEpISURmcXBoTHFHNGZDQnoyK2VTNTdDbEY0OE5sYnFyVGp6TDZE?=
 =?utf-8?B?TkdDMDZwV2QvSUZ1U2t6aXQrSk1GVHdyalIvc3VhMHErRDByQW1MZjg3Zy9U?=
 =?utf-8?B?Sm53Wkg4dGhPNXJpRm9qY0MwalNIMVd0SXE2M1ZJWlM1RCtBVERUcm1hWTk5?=
 =?utf-8?B?US9sVGMvczNPajRvUFB5bUdwRnJhWUFtZm9qZ21NMDR3WS81SHVOekVKeEZW?=
 =?utf-8?B?VEthN2JCTS8wUG9OeEgwenNYd1o3Q0dreG1FaENidVY3RUtWZkVZVlQ4Q3Ft?=
 =?utf-8?B?djZMNytXVjFEWDNLMnRiVElmVU1zRmJ4ajZNNkpVYWtIeVRLWDUzUXA1N1hk?=
 =?utf-8?B?anJJVmRVR0lCK3hBK1BBRExpYTF6WE1iR1RhNFRVYkwzM1JuVU5lK2tGK2JP?=
 =?utf-8?B?aE1qa1VLY2F5cmg2dnpKN05DMk9uZm1ibkxOc3FMOVEyN0lNQVJBajN3bzhX?=
 =?utf-8?B?L3N3NkM3OFpOcGhUem9HazlYYTJqWDdxT2VtOU5La0dtY2pXZ2ZRQUZ6QUd3?=
 =?utf-8?B?ZEZVaENwVE9MSDZUV2hMNjhQU24xYzhPeXlPbjNSWHV2R1RSS09kSnBoKzNl?=
 =?utf-8?B?MlRwOFJKZWREazNmRjQ4ZDBibVB4NTVzRndlTjAxeFBRK3ZKZkROK2lsZ0E5?=
 =?utf-8?B?eHYvV3JydDdrMGVndktzczV3bSs3UTdSamxjcnU0VnJSWTk3Z2R2TEgrdVZo?=
 =?utf-8?B?ZndRQ2twVW9VRmFvMkdQSmhWRHNXNkxYczFtUUFVVm1lQWJqT0hvdi9ydEJm?=
 =?utf-8?B?NlRvNjRaVUVhUUtHYldUeWl3QXhEK2NvMURNSjJxUDU5U0dscXhBV2diaCtO?=
 =?utf-8?B?d2sxVkp2NkFKa0hXV1N2SGxBUmpxRU04QXBLb01yOFBpSDZQUkVzcjg5UWZn?=
 =?utf-8?B?T0MzUDZmM2VHN2ZUV0J3bExtN0xrdUxrSlptdmZCcWlsQ3YzdlBlTkFXYlJr?=
 =?utf-8?B?WXEzWHc4TWplNUdrMTk5WUVBUThrNC9MRG5wSkd2aXJEN0lxTThqVmNKOU13?=
 =?utf-8?B?bEdqRkxxL3h2dDh4YTdudklvNkhKNmtpQXczQXcrWmt5MjR4bEUwUlpTQzUr?=
 =?utf-8?B?eWtZRk5ld0pXalBYYUd4cFo5OFFFNlJmTGNYNUNweThQTmlCdDdxOE84b3Rj?=
 =?utf-8?B?YStFN3pId3ZVaG1yeEpXQlRCVjBXbG0wSENoZHk0dmprVGZZOGxsamJTeUlC?=
 =?utf-8?B?cHFFaVZjS2ZJUlJqN01YanpsUjN1SktXVE84L0t0L3Y1S0tBbXo3bXpZVkNn?=
 =?utf-8?B?M0s1UEg1VWpNWmpXR2V2YkNOQzBMR2xXWXhIT0xDUEZWSnhHdnJ6MWtVV1cz?=
 =?utf-8?B?MVo1ZmVTWHFmSk1nSHZ4MDFrTjZsQ3I5MHVrSmVXVHR0M1ZQV2FTL2V0RUtY?=
 =?utf-8?B?dHRhazdMR014L1pXUEJiRVhlMEFBbTVjZnBzRGx2aHQ1U092dnZYNDlnektY?=
 =?utf-8?B?OXhjdE9ZQWNFS1BzL1VwSy9mYS9vdmo2RzF0c0I4eDVPODVuL1IrbHVkdzRL?=
 =?utf-8?Q?Sl9/1IQ3pe6sbwqEdgwWfyEgz/MpM+yb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUZRMENSb0c4SnFGalBhWUpIMUJMSVI1Q0lMRFJPYU5COGhkaDFXNU1kT2dJ?=
 =?utf-8?B?WmVybC9lYTlQNGxEWEtLeFFVcHUydHVVcjJ4cDN1cENWV2Y5cGxLclk1TVdz?=
 =?utf-8?B?WlhOVXhrSjVwWWgyNVRiNkFXTUNlVWUyNW05Zkd0cGxUNmdTQnh4d1VIb2Nw?=
 =?utf-8?B?bStqOTIrUDNaYytLcERwR0k2TzBQUHBuUXRaaVJTMkhTQ1VEeHhLTEIrRUF4?=
 =?utf-8?B?VkRxRzJUNlpvNGhiY3hEd04vSHFlRGNxaVNEbVJhNnZKSEYzRG9mYmFyb09o?=
 =?utf-8?B?dUwzRVRra0w2NWRvTXlrNG1tU201WktTWmJ6SGRXeXZzSmlwN0NjeTdYeTJH?=
 =?utf-8?B?Q2ZpZHNiMG4yUWRSaXpBcTlPWmVESFdwMFRiSGVicG00em5TWU5hcktDb29S?=
 =?utf-8?B?TUwraWJPRSt1dTFMYUY4ckE4ODc5MEo2bXpIVm9FYjUwalZiTC9BMGNKdU5B?=
 =?utf-8?B?dEdyZFAxa0dlczFyYjZZTnJxb255SmIwM2hXTGVVVEhadWcvQXI5dkRlVkNK?=
 =?utf-8?B?U1luR1FCVy9nZ2wvODhyS0dlVlVTYXVEdjF1Z09pN0hIbDgxR1RUQStsdURH?=
 =?utf-8?B?aTUrUUc0b2k4emxocHhvRUZDazhCNFZKcXlaZHR6TThpMkNjTk9MK0VWRXNM?=
 =?utf-8?B?UXdEU0xvWFhVNytEVzhiZjZ2cGJlRmtET2UrNmJ0TDR4WGl3UmlrU0V2bTFx?=
 =?utf-8?B?YzVnZnV4QVdOS2s4K0orczE5VC9EWDNrQjNYdkFQUy9ScnJKWUZuZU1xOU5P?=
 =?utf-8?B?ZGJuVTV4U1ViYkQ0cDRMak9xZFQrRm1aemZ2MkNLVDdyWjRyVVpwdnRTNjVz?=
 =?utf-8?B?ekRVWFgxcTI1NTBoZThCd3hENk5HQ0dwVlpNODV2eGpHNms0M0Y0QjU1RTBI?=
 =?utf-8?B?OWN1aU9hTEpYV2FwQTJVQUJhbFdIMFZUSHlQWVdGWjBrazBKTUpXUzN3dUt2?=
 =?utf-8?B?VVd3RElPN1Q1YkJRN1FvejNTbGVSbmVBNzVkVUxrU1ZFZklWZkZETDZ0UWph?=
 =?utf-8?B?WHFORnprQ3hTdlFFNEcvaXE0M3NtdGZLanBBcmpaektyZTFnVDJsZ3RnckZn?=
 =?utf-8?B?VlhyN2x6dGlvZDJyVkVyMWg5QTRETHNmbG1pU1VNNURudzNITzIwVDZtZDZI?=
 =?utf-8?B?djl5LzhLOFlwTE5lemFFTzJlVWdCRTh5K1N6YnlXeEtncWpMdXhVME90Qzd2?=
 =?utf-8?B?TW9rdkRsb05CZ1Uvckc0Y0lUaFlCY0lEdlEwY1cxVVQxZlpIUE9iMEJzTTM2?=
 =?utf-8?B?SlFlVkhlMm5rOGRGWDdJalRGRUU4TGVmbjF6SmUvcHdlc05QR3dPazdVQ0JM?=
 =?utf-8?B?ZCtKaVpnNWtnd3ZoNndPRXFBSlQ5aHFqcm5IU1pCcmVjekFxVjViRURqVHhj?=
 =?utf-8?B?UkVHbkREblkvM1h3L3c2MXB0WlJJODZ6MklhUlJEeUcyNFJnN0ZwRkNLeVo1?=
 =?utf-8?B?Wk53azl1Q1paK2RmT1pNbWhoNGQyMjlia0IyY2tCbjkvWnJTa2tSbTNVS1Nr?=
 =?utf-8?B?bG5WRVZ3Z0lvRll0NHgrTXZjb2wyS3B6Y1B5T1VoM2JhcXpOQTY2YXN5aVB6?=
 =?utf-8?B?OGZ6NFhabVYrTTU3SFdyb2phMTB0UERQTzE0cFNUMGx0NnMvWkV6VE83MHVL?=
 =?utf-8?B?SlZzUVJ4M1hXaXl1K1JlSERHc3E4QXRGTHBtUm1TM0IvcWRmQ2M4azNTYWlx?=
 =?utf-8?B?d0pZY2VqSHRRaXF0eW1jVnBYemdrMllJaVBWenhpdE1YMWY3eUFYTjNXSzVY?=
 =?utf-8?B?RW96RElUejRacy9VSlM5Y2JGT29lUlVod3A2dERqa3EvSTJVS1BaeEZFbmE1?=
 =?utf-8?B?WWs3bEVFY3N3MVhzSHRmN0R3UXd1dytNNEFNUzNRU2FMNVJTVUgwZ3o2L05q?=
 =?utf-8?B?UzdKMzNweDNyVVpSRStxamgyK0RPVTFLV282NkdQUEZvcC9haG1pK1piOERm?=
 =?utf-8?B?M3lXbTI5UTVwSXVaZU51SEFObGsyV1l0S1hFcHhtcFNQLzlPUlMwV1l1RFFP?=
 =?utf-8?B?OWpSSTdQN0kwd3ZFdnJ0dXB5S0MyMzkzQkR6NzYra2s5NHNwalQ3NFRnSW00?=
 =?utf-8?B?a2g1NzFyTzV0OFlaVFVEcEtjdUFHNHY0K1c2UXR2WlFyQUd2OFA4ajhyaFp3?=
 =?utf-8?B?bStBYjJpVjF4ZlB2Q1VLckwzc0pVYkZSVzBuODJnV21hZE1MblcrYW12Ym9j?=
 =?utf-8?B?Tmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f38d0bc-b679-4412-5804-08de234ebe80
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 07:23:44.5534 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VZEnth9ZyCZbIWd0402fpANXWZthi21MBwsZKpa0GiVCnUnrxFiPAwDzec/yQhVjLNPXreIMzdIWzQ5IBkuNtIKbJxd7JXT7MWPKdbmS9hA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7148
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

Hi Janusz,

[...]

> > >  	/* Reap exit status of the lmem process */
> > > -	igt_waitchildren();
> > > +	lmem_err = __igt_waitchildren();
> > By changing igt_waitchildren() to __igt_waitchildren() you
> > wanted to outline that this test is not supposed to run on multi
> > GPU systems?
> 
> No, my intention was to avoid potential longjmp from inside 
> igt_waitchildren()->igt_fail() if the lmem eviction process returns a failure, 
> so we are still able to signal completion to the smem helpers as below.  Once 
> cleaned up, we are then free to fail on lmem_err.
Oh, okay. Maybe it would be good to mention that in a comment?
In any case, I think the change is good, so after you address my
previous suggestions:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
