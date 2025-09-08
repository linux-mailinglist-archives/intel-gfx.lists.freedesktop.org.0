Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46C4B48469
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 08:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD34710E46D;
	Mon,  8 Sep 2025 06:47:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IcprMs4Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A602010E46B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 06:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757314042; x=1788850042;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=D+udLbRV//FZpraN63T2Ek+gTz07Dq56ueEaWkXvyxo=;
 b=IcprMs4QDWSBh2gK5gYwsPPblnSWCel1SADa7CBmdopOiGFHUUadUaOV
 Jf9IyZEAv8xnTm/HtTLnHl1wg4Z213WhOBbdCmNO98gTQL+yxy3Pi0YL3
 PcBuxPWule7SLz6ll+uCFIj/h0pqMof/wtBmvAOZZYXGud5iypfKswAE+
 7+7jMuJEMEoMwXqgXckKUmsso2qpH/pqwi/7uursT/3WEgerYUgO1fENV
 lSYtW/Ea3NwD/OlriM+hnlu5NA3bnMq3KhitHOlvzHd51Kt6bSVB4PFny
 TwAq10p2MAsHSa1fWLgcUN6ZXc0ud70BmFO5lPcgYSt6RDqyF3gi+jNCZ Q==;
X-CSE-ConnectionGUID: SpTwkOn+QB+ZpjGQjOwiWw==
X-CSE-MsgGUID: TUi3RIFEQBG9kEunvY7pQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="62194792"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="62194792"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 23:47:22 -0700
X-CSE-ConnectionGUID: yA2/N5AfTNOwkoY8q1EogQ==
X-CSE-MsgGUID: OP/kHZ1WSRiYT9PgihOEYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="173174415"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 23:47:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 7 Sep 2025 23:47:22 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 7 Sep 2025 23:47:21 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.84)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 7 Sep 2025 23:47:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CVra/UCGYGoC84N5hxmUuuSCJRjVsCEesR4hcbabSaKsxir5SuT6ddBVQ2ATnlypjorr1GxRLuZten5pRM2Uvi4zn/OxcbiBCmflwAzT9boy+e5TqJag/0i/H9Ntmr9iFsB4wm2P6VkNoSNnAywTRp6lXdDE9tDqo9Gtf8oJtNicU78UNjN06kyh9o2ag2xh/oYtgR+BXtzcjaLaGkJErmftNtx1bH66ZYBZ+VgQwNErNbtyuCylSCy5qt443K2xv/G2t7w1QJT2ppkcjwu541iMFGhjlj5mn71oO3QdNnlPtuLdcGknvjp4WuC7BUWH0m6sLDy5TvQkEmSoTNmAtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LuiCpFhdKeTXoM6ITRoIWHD6rKseDLuSoFh47Pq8WG0=;
 b=KeyvA2uR67yPtZb3y4aJ4r07QochX1PqgTkwGNJWsKfoi/57ABIvGt2whyOSzdeVNs8/4EIcODkR0euzgDMTNJfMjE+ciPbeJ2W+8SL/0qBFz9Bj9eufxjqKZ025n7rbA8p08kgKi3R62OGRzobawNakbKkvbVQTlWDnXogeo90yc+WDsw8/s1oAxfxqIc7YwLllpAODDjb3wrFz2/Zhae9lz8dRvt7m9MCDe58bV8s3tzkG0nE3IoEy3F3lytJc5SFyEP09lCZDuzu3tvGDrOvL7WRkoGvc02/h0PUbNU+Bwa4wblWoTyZEfs2Of65nY8mO+gpgcdqUpX59o12TYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH8PR11MB6612.namprd11.prod.outlook.com (2603:10b6:510:1cf::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 06:47:19 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 06:47:19 +0000
Date: Mon, 8 Sep 2025 06:47:10 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <saurabhg.gupta@intel.com>,
 <alex.zuo@intel.com>, <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Fix memory leak in hangcheck selftest
Message-ID: <q46wyq7pioitrsrd2vi3iauk5454u6hbfog4woycxmqmxi2xrl@bz75vc7miey4>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250904193041.12888-2-jonathan.cavitt@intel.com>
 <aLrVKJO_9dnBP_3f@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <aLrVKJO_9dnBP_3f@ashyti-mobl2.lan>
X-ClientProxiedBy: VI1PR10CA0106.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::35) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH8PR11MB6612:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dd2158f-318b-431f-b865-08ddeea38e97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2JTSzQ2VzlBdDZxdlZ0dHJvQ2FRV0hYd1hWUTlTVS90b0Z4czdRcDVLNnRn?=
 =?utf-8?B?b2NnZ0lWenhBZEpFSDdiMTZ2V09yWEhxR0hTaUdGTXNXbHpkOWdxaUI0cXBM?=
 =?utf-8?B?bWhRM0hOVldyNStldHZ3R1BtTjRnVnl4NVRuaU9DSmZZbWJ5Vnl3WTFMdVlt?=
 =?utf-8?B?ZW1EK0NYbnFwK2hLTGZjS2RvMGZOb2JqUUhreWhDSTI3clNLMytERjQxRWU0?=
 =?utf-8?B?VWV0OENCRWFqb0p6eVhLbG9iTlVBOXhmbkx1RzFjcXFNcnpGTUphSXJYMlhM?=
 =?utf-8?B?ZXE2WXAzaXhIak9RL3lHbVp1anhtY0tiRCtQL2FTa1ZzWG0xWGU0WVBQM1BU?=
 =?utf-8?B?b2x5SkZBaHFydWo2LzlxSGRXdUJhSE9UakpvajF4Vnp2ZjVvQWVkOGYzZ3VH?=
 =?utf-8?B?dUNkeDJINkl3WDUyS2ZrcjVXQUV3dFZUb0FmTnhRNVlmKzVMVEhzcnlFclZl?=
 =?utf-8?B?REVHRUpaaGxqdlpZMU1uVE0ySnBzVFhhYkRtVXdGclZtTGduRndPSEVSMWNj?=
 =?utf-8?B?RUhSMHVQU3QvV0I4SDg5WmlSZmFibnZKdWdrNDlwOU1DeEpBeWtGVk9aZVFn?=
 =?utf-8?B?TXB2dTNXQ2pUQnBMeEhZNzh6eG93aGx1SmpablhvczV3eGpoQmRwZ1A4NVhi?=
 =?utf-8?B?REg1dGpCQzZHSHpwV1dNZEVIaDhRV1dHbk5PZUp1ZXRJRUhmSTNyQlRZRkx0?=
 =?utf-8?B?dThOSmlXSWorVGVuK05UN2JvYUF6aGc3cldXdSs1VnJlZ2RQQUdLeThzYTlS?=
 =?utf-8?B?OS8zOFBXQUlud3NDMkJvc1E5elBldW51cW1vc0xubEg3Zlo3ei9XSHZmbkIx?=
 =?utf-8?B?YUl3QXErOVozNk1OQ1diNHhrd3R0NWlrb1MrVXJDNW5wV2YzMDNPNmxNUy8y?=
 =?utf-8?B?b05WVXFPZmpGckFLRkZsSzdqc0lycUEraitDNEZITDJ6V3lOK2FwUW1YVXJV?=
 =?utf-8?B?WnhOZkN5RUkxNDUyczl5aE9FZWg4R29ETnMwODFoRG9JK3RpWUhDUDNEbnZz?=
 =?utf-8?B?WXpYa2pZQ3o0b2hSVElVeG04cHZrVFh5Y3JaQVZXNElLdnQ1Rlo5aGNBdUdR?=
 =?utf-8?B?R212ellBanJDRlBCRE0rWmw0QXZCdGpGZHo0T2tMWTdZL0ZOaFNkWnRUak8z?=
 =?utf-8?B?VVhiTlJwK1dpV1dnSnM0Znp6VWdDc3UxWHVoK3N5cUlteUFhaVNFSG1WTUds?=
 =?utf-8?B?UG9xRFBvcS9SSWZ0TGhZUDZxWUJnQmM4TENOa05QTlphTWJJRERwSEEvaHph?=
 =?utf-8?B?Q3NaN01uSHhLOVMxd2laSWNTRGJKeXVjY2UyTG1MTVR5UTlYTm9veUROVlpj?=
 =?utf-8?B?L2hoVGdvb1VDVTlzU2ZBNWZ4R280c1h1aG5Wc3VrWk9BaXhBL3dMNysxam5D?=
 =?utf-8?B?MHFJWktQU21nM2NZVVo0dnJ3eGxUQ0FZK3dEWTBJcWswN2RKbm4ydkJCeGVM?=
 =?utf-8?B?Y21PZmM2aFhSQWR0ZU9CUm1xWnBUem9WYnZIMUgvbUIyakpOeTRCQUMrNEtM?=
 =?utf-8?B?eHN2YjRBQ2dmbVRTSE1hNnRLc011ZjRWVHZaeEZJQ21WdFFoOFVKOUhrSlg3?=
 =?utf-8?B?V2hCVDRzS1czUUhkUHNzYi9EVy9UWUY0REZyL1NSREREeitsRTJ2dWdRWGlh?=
 =?utf-8?B?RWk3TXNRRS93OW9SVHdIVW9ic0FoaUl0YTdHTEZPL3pPS2pGZStyYmVtcU1M?=
 =?utf-8?B?alRTTWF1c0pGVlllbHJZZGRKVVBjTFdLQm5KM1hSQzM3Y0l2SEo0SnBGQnov?=
 =?utf-8?B?VXFnWm1idHZ3aVFLdUNISXMwai9LejU3WkQ0ZGpXc3FVZ2VhZTVOMUluTUR4?=
 =?utf-8?B?ajFPZVlYYWFSVjhDSHNwS0FiVFJESjE2eGV4R25TTnNUR2lhTEhUeTZ4S2ly?=
 =?utf-8?B?VFNQV2VqZmhZaGZJMk9MYU03T3FRMVM5aTVsd1FqUmR2MVJoRXFsdEJsdEJ1?=
 =?utf-8?Q?Mbvf40yctsM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TE1xYWtJYlpZNzVxcTBMdU1kdzJZS0JoT0Q4VjJjRG1EaGdjR3pYbmFCdk80?=
 =?utf-8?B?ell0TUdtaHlGNGFZVXRtUDliU1NKdW9uQUc1alRLQlVwQkJ2TjZvaGQwZXJ3?=
 =?utf-8?B?Vy9PVjhvcm1yc2huNncwWHBzVXZWNCtJakFEN2o0L1Z1WEtrTm1Td2ZhbzI0?=
 =?utf-8?B?ekhFZVRtSTNsZ1FaNUovMHl3bllYSFhSWmFxbmEzeXN3QW9ybGQ4NElxU2lV?=
 =?utf-8?B?N2VyUlVmOVFHYmhaV0pOT2txdk4zY08rUVdEcDFDejRrNGV2N0d5WFFLdlJQ?=
 =?utf-8?B?ZmdXVk1GUVBGTFZPVXlXbDV3MFo3VFJIWHNMU1JoZmRueVN1ZU4rck1nNFBl?=
 =?utf-8?B?TEMzNVYrWjNBSkllSTBjWTdNZEVQenBjNW02dnhNb0xUVzBIbzlONFVrVTR4?=
 =?utf-8?B?NmJhRXV2cTdiQ2p5YnlSVTQ2SDc4bHpvb1ROVGNXNnpzdjBiMWZNdmxqRGZP?=
 =?utf-8?B?bUpQN1hSODRXc1o1RVFQQjZ6K3dOQmhlR20yMGQ1NWxCRXBEaUJaWDk0V1cy?=
 =?utf-8?B?anBHV055cGlHdTJHZGFmaGtFMzNZdjh5MUpjMklxYkJGMlQvMUVyMnYrOHRy?=
 =?utf-8?B?Yjd5TTZBb0U2dW42ajltbldxbVN5Rkh4SEsrZjUvbVdHbHlTVkZjcE0xcFlQ?=
 =?utf-8?B?K2lGSnR2TTcwY1VXODlKbktUS0FpSUsyN2ZCQm5kSkwvTGlPOFlZcWJGK1Ux?=
 =?utf-8?B?eTBOanRYc3NRMjk3Y0U4amhlSGZDdUtvaHg1b3JNWm5MK0VvR3ZmSWVEeW1P?=
 =?utf-8?B?eWNKZ1p1QVcwSFFLbTF6Y2JVWE9paFhDOFlsUEN5aU0rU21ZZFBjL1JBTUVk?=
 =?utf-8?B?NVhCT3NXdDFtNlJBaUZHVWhKNVpMcDlZQ1FEUmtCWUtmRi9KRHpyQ1FpOFM3?=
 =?utf-8?B?UHNRRElxQVZDeXRoV1JZU01DdDhlbXY2dEpaMUNhNy9uNVpGZlRrMkhiMVJi?=
 =?utf-8?B?b1VyNG9uWDVTYVFXK1RHNkZiNnR6bGg1VmFpblhQYTBGbmdlREovMjVJL3ll?=
 =?utf-8?B?ZGhvZUlxZkxrNnRqUVV1ZXdsN2RnZVBhQlFDaEtrcW5XL08reFhWV1NiUHpG?=
 =?utf-8?B?T2lBZVM5aHVjcVhRMnpYN1ZaOE9LdnlJQnRQU2w0ZlZzaERzbHdUaG4vZWJh?=
 =?utf-8?B?RmY2bmxweHlNOUErbEU1N2ZtWnU4UkZTSkQ2aXJVdExYV2RlNUhpY3BjWXVt?=
 =?utf-8?B?d2E1VHlvUlBwdWdkMVFjS3ZOb2VvK2p4N0tNcEFNeHJiVWtEUC9SL2w4MjR3?=
 =?utf-8?B?aWptQVVRSHVVQldQbWl6UGt4UzViYW5nUjFWcUZCdnpRWkkzTml4RCt6Tm51?=
 =?utf-8?B?Q2gvMVVKSEs4RmY3d2ZDVlowNUg0dTdocW5obGRRd3VKa1R6dDZpRy9qWHpj?=
 =?utf-8?B?SzhmMWNQSExURFZvdjVRc25TODc5M0NmTy9NR0N3eVhRU1FNU0lQbGtoMzd4?=
 =?utf-8?B?UXQ3VEJwY0NtMFQwRTA0UVRwRmhrRnVJam1mR1BUWGllb21ZNkFGYXNIV2pk?=
 =?utf-8?B?Nkg4R25sQW9CNGFMQTZXM1J5TmYvQ1BQekk2cG9QeWZ4c3ozY2lXejRoQVVy?=
 =?utf-8?B?aVJtS1FkU0ViUDZGNkJCQnkwUVVzNmtvTURVUGtPYk5wcFkrY0VzRkxLVTJq?=
 =?utf-8?B?Y042YSt2Smd5UVlyODhFaEFTNHE0TTU1L3NsbHdnVlovNkN4MU5UUDduOVNz?=
 =?utf-8?B?UXM1Sjd5S09jcXU2MEhRSHlvRkE5NS9IUlk4UHhoZEhHbEZsbFg4RGp3YW5r?=
 =?utf-8?B?QXNucERuMVNablJXSFo4OUlrcEFKa3R1L1c3SWc1K2ozRFlJUVozdmRwOXFi?=
 =?utf-8?B?dkpuOWloUXhTdVJhSnptRVI3YVBBd0ZqVUo1NmxoYW5DWXhYUEdIT0QyV09P?=
 =?utf-8?B?ME5JNW9tL2lUM3l4QlkrczkwNHVKeWdQWmhjTTdGWVdpNHZrdjBSWkhscXZZ?=
 =?utf-8?B?Y0NjdXZ0NGtaRUVSVU5MOFNDcytmT2RHQjJyZWZnV0JOVzNpUGFjbXQzT0Zm?=
 =?utf-8?B?eWU4N25KN2NuWXo5ZEZQVThoaFhWSW03WkEvbGVOK3hSZHg4TUpSamYxK0RC?=
 =?utf-8?B?VFJ3R3lFdlBNZDFEa0xUcTJPTDdLTnFacE00RndkUnpPRldMV29tWmxyL3k0?=
 =?utf-8?B?WDBMQ1gzS2JJaEJ5WEFFVnYzdTVHZGtlcG9QK0lETjluTXZocnh0MUlGd3dk?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dd2158f-318b-431f-b865-08ddeea38e97
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 06:47:19.7249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XPWcN5za5i3CfbVaL6pPQ6z+ttLrnua3sq+GYyuKyrtifKuGeg3ez/+6vaEBQHuDi1aAfaBi+XzR4CE/lRmbXWDZxA6vpy+BA/zp0wWlIg8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6612
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

Hi Andi and Jonathan,

[...]
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> > index 619c70c54ef9..4f252f704975 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> > @@ -904,9 +904,7 @@ static void active_engine(struct kthread_work *work)
> >  			arg->result = PTR_ERR(ce[count]);
> >  			pr_err("[%s] Create context #%ld failed: %d!\n",
> >  			       engine->name, count, arg->result);
> > -			if (!count)
> > -				return;
> > -			while (--count)
> > +			while (count--)
> 
> This is a good catch, but we still need to decrease count by 1
> before entering the loop, right?

I think Jonathan's change is good, here is why:

count == 0 with current code:
if (!count)
	return; -> we skip the loop entirely, which is right,
because we do not have any objects to put
while (--count)

count == 1 with current code:
if (!count)
	return;
while (--count) -> count = 0, then the evaluation of expression
inside brackts happens and we skip putting one context (leak)

count == 0 with Jonathan's change:
while(count--) -> the evaluation of expression happens before we
decrement count, so we skip the loop, which is correct, as there
are no contexts allocated

count == 1 with Jonathan's change:
while (count--) -> the evaluation..., then count = 0, so we
enter while loop only once to put the context

So with Jonathan's change we kill two birds with one stone:
1) we still fix the original overflow on count values inside
while loop that I fixed with my patch,
2) and also the overflow, which my patch introduced for
count == 1.

Nice catch Jonathan!

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
-- 
Best Regards,
Krzysztof
