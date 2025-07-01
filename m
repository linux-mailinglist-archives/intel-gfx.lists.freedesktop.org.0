Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A30AEAF0209
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 19:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D3C910E5FB;
	Tue,  1 Jul 2025 17:38:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGbU2VQW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D8AF10E2DF;
 Tue,  1 Jul 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751391533; x=1782927533;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=AJM3qQnqyNJLK9eQLIJFi8m5lM2Tcs+uzKc5TEy+UUI=;
 b=hGbU2VQWXex6bt/LZLmYqpxAzBjITtjjv3a11iEXz5OjtZHaRF3L2HSV
 9JhbNiX2MQyu6UonptUhLNYj4hYbEJSPJRwovhb5jP7FwtDF4VxjsgaNm
 6dZQdtP2MS00d1EdInx7waMIQ/tNxkdyztu9bmL6BLI6lMHF278ODTdQO
 r4xysOdTLaQ8TUSnzJCoqK+VJWqCHMXUsN+9gqLU9akz/UKJLo+Ea99Eh
 ICOzZDvvqZuRNQ9gOkTsYCT3A9RaV91wH7+KI5fAdGearo8z/76so9/1e
 jmLNcFxZr8RxPeFEN23Lxeom2mFzfqS4oK1yhufsswL6eZEv2oRUwauDX w==;
X-CSE-ConnectionGUID: 6L50SXHNS6O43wBNJRMYMQ==
X-CSE-MsgGUID: TJJZ/ys+SeuG/Ug7Wv0SSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="53813941"
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="53813941"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 10:38:53 -0700
X-CSE-ConnectionGUID: v/X/du/0St+Ov2khQ0gypA==
X-CSE-MsgGUID: zMIvHgUmQtu7+VaSLKcM9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,279,1744095600"; d="scan'208";a="153301635"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 10:38:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 10:38:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 1 Jul 2025 10:38:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 10:38:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tz5c3GEF6RfxaEFmh9kFN3QwiogRGmNSeptKDjr2RUN/X6XPp8gMMHWOJOATx31t6hDCcC92CmONWByJGCM19Or9Ph/TKeml97VfDtyPx8oCV3grpNm2jRzSn10H0kRLrERGI4t90BHuEprLZfHp8GPwM3ljz8cXxYlDud2IdRqG5UmNJSuoUmiV/MYG8kt+ukpIabz1e6wdfgvU7hOZInZdg0IZMtGb3erCj0o6mWSx+dG8HOrsj14EjO9h92g8kYh28iXdgDhtfQhfROpLa4Vywfd9uLuOyIwMnUPfP3eXGhQ0A/yfe9LgH0cm21NSYIIqX4O+8jHop4ODLo+YFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AJM3qQnqyNJLK9eQLIJFi8m5lM2Tcs+uzKc5TEy+UUI=;
 b=WUI9t5nkxou4ALWCW+YW9SsDhO3cLyb2CCCpS04OllBxbnY7yQPDO/k09rIzkREXwUd0VfJbht2x0mcghx3eOADZnBLHPdvIuSzN8Jw9Q3AbYEPMNccPETUHJfClwDiEL1lFYS2VLt69uSVs9MvcR+W6OxPjXoF68OEpMJ+W0v8VvNWO4J7qch/7/v4nBN4w9LmxlWAGtPEhxpmN5uEHPK3nkdTiRRdcJy4nNkmYSchn47NXTNKBAXYcyUSUOUrNauvQ4w+PFVBF4OiHmjTsEKqtLxPuWgKwP9bwWCl7ZTWBskx42kFssvYPBm0YoV/M3J8dSlDtVqsIt6fbxTgmLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5368.namprd11.prod.outlook.com (2603:10b6:208:311::17)
 by BL3PR11MB6337.namprd11.prod.outlook.com (2603:10b6:208:3b1::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.30; Tue, 1 Jul
 2025 17:38:21 +0000
Received: from BL1PR11MB5368.namprd11.prod.outlook.com
 ([fe80::49e7:97ee:b593:9856]) by BL1PR11MB5368.namprd11.prod.outlook.com
 ([fe80::49e7:97ee:b593:9856%4]) with mapi id 15.20.8880.030; Tue, 1 Jul 2025
 17:38:21 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "seanpaul@google.com" <seanpaul@google.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "markyacoub@google.com"
 <markyacoub@google.com>
Subject: Re: [PATCH] drm/i915/display: Fix RGB limited range handling for DP
Thread-Topic: [PATCH] drm/i915/display: Fix RGB limited range handling for DP
Thread-Index: AQHb6l79m577iX7YHUueBzdAQqViJbQc8IwAgABgC4CAADiIgA==
Date: Tue, 1 Jul 2025 17:38:21 +0000
Message-ID: <6e87afb3d644361e273e5c8c1b96367b7a5968da.camel@intel.com>
References: <20250701081756.2821286-1-uma.shankar@intel.com>
 <aGOdDnjfj7NJs1aV@intel.com>
 <DM4PR11MB6360159E89ED014F3EBEB8ACF441A@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360159E89ED014F3EBEB8ACF441A@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5368:EE_|BL3PR11MB6337:EE_
x-ms-office365-filtering-correlation-id: ed53d322-947c-4cba-b1c5-08ddb8c612dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WGsreTVocWVjejFFOEVCZkx5NlJVZlN4bUJtSlVLRGNGOVJXQi9oSGJERmJr?=
 =?utf-8?B?N3VHUllKWGZxUkhxZTg1SUpDVzgyQnpxMVY1dDlnaVVXVDZRV1VQRXNPVXZk?=
 =?utf-8?B?Z0V2aTdjcmhnVXNzS0MxVGZWK3ZmMVU5MHovSkl3YVJDdyt1QktJMmRWcm1G?=
 =?utf-8?B?TWlHWE55MWg1U0VlZVhld1lyNk56K1BGeWdTVytObjJNNGszYSt6am9XMVVq?=
 =?utf-8?B?VUdEWlpCOGxERmxsalNnenVEWEU1cUw0ZmtkdDdlaUNpMUlRdU1aOTdjd0t4?=
 =?utf-8?B?Y2VSNk91OVlVOFFMSHMrekg2MkEvVGhLa3puTzhkM2dzcXdQdmFmdE5PbGhh?=
 =?utf-8?B?S0czdnk4Q2czemtUaDVjRkQrQjQ4Z3l5L1NpUlFSMjFheWF2ZjBPU00wbTJ1?=
 =?utf-8?B?bEpXMU91dmJDRy80YmdHZ0tuSEdOV1llaDZXUXJnbW9vV3N3bEcyODBUaEJk?=
 =?utf-8?B?T1NtZVp6a2tkZE9LYmY3YnZweEVCa2hzYkhvcFJtOG1BakRDMGE4SnRTdzdE?=
 =?utf-8?B?MGd5VlBaSGJLOXpjTW1WQW9pUHNSaFBaMXF5cElGL2h0Q29kUkJjUHlzTG9F?=
 =?utf-8?B?RHFYcXVyc3cvT1hXZmZaVEE1c01FeGsrYWNidEZzSlI2M0dtZXZtNUt3RDRl?=
 =?utf-8?B?SUNySDVtVzBNYlBhRzZHdlQ0WFJ4NGduNzcwVXZIUnpvanFnTmFWdHo4Zlln?=
 =?utf-8?B?NzJNeVZPYTFTc3cxTUlyZXhGeUdOYlI1dUZ2U1BUVHd1OFlLTHlUQmg5allv?=
 =?utf-8?B?KzJ3RVFsdFk5dkI1eGhTMDlkSjlSZExnbTBYbmViTHdHZ25CQUswdk1yd3dV?=
 =?utf-8?B?a0g2S1NkeXNhVGFudGk0ODFab09abnpzTEQ4dU90T3dKenN1VE9VOVBTTWlo?=
 =?utf-8?B?N0tmU29qVkIxcVJueURsd203eU5PL3F3djJyd1k4UlR1L2ZTMDZ2T0Voczdo?=
 =?utf-8?B?ZFpsWS8vcXQ3Mjgra0NRSk4vT2lGSVFVdkxJLzFQdmtQa1pUOFhYZXNmeUMv?=
 =?utf-8?B?U2F5R0JrNzloVjY4d1lOWjdzeUNLQUJyc2FNWUl6cVk0ZmxiZk1Rek1yM3B5?=
 =?utf-8?B?RWhDSmw3YXpKam54M2hGTmxmNVg5UEUwSmIyUm9NeGdZamdPZEpKalRYMTJq?=
 =?utf-8?B?aTRHMnZLc283d3RYVGkyQnhVRXE0dTgvZEZQc3N6MDEvNGUvRys2L0IxdjlJ?=
 =?utf-8?B?LzJKb3VsK0pJQmt5Rk9VZE1RajUyNGNqaUlqWC9KL1UrZ2Vzbzhuck1wMHgx?=
 =?utf-8?B?ODJpS3lNK2x5T3FqQlZNN1Q5czBUUUNmcS82ZWtRSTNPMEFGK1lKa2hlTnJ3?=
 =?utf-8?B?MDZKUE02Ly8wamxzNGFwc1hNcFhhcU1YNk1jeTJKMTR4alcydnRIbTBMTENQ?=
 =?utf-8?B?U2R2SXdDbXdGTTR1VUs3cDdyVXM3eXJIVWdHY3NMenRkbXp3dS9JV2NnU2Jx?=
 =?utf-8?B?V1FjQzFialczR1M0YTk2dzhsMGs3ZURXdEs2ekhQQ2xpNnc3TUJ1ZGNSU0x3?=
 =?utf-8?B?U055bkpLdEdYNTV3WEpYZjNyMFpWL0F3VEFSUlJkNDMwQ2xZalNPamtkeWNz?=
 =?utf-8?B?NUVMUnpkdXFOY2hGV1pRRlVTb1B3czQzclMxNnlUemFydndNc2tQaWV6K3A4?=
 =?utf-8?B?NDdGMS83QzRCOXVHQlFyOWF6QjUvRC9kdk5DdVUyVDNtVW5hT0lGUm8rOVRu?=
 =?utf-8?B?dDhLdzdYeFZmTm5FZWJZZ3RLcjA3c1ZEZmlkellkLzhkZk10TkFuOXlKSWJu?=
 =?utf-8?B?VklPSXZ4dnpSK1gxazdDTHduR3NqRkVVOWhtdTRLTDRRaVl0bHVtcmxwUjdN?=
 =?utf-8?B?a1pZSTg1T3RWNlFjWXpPNjhlWHRGcFVrZW1WN2lBZGkxQmc4TmhpY2REcEQ5?=
 =?utf-8?B?UXVIWjhHNll1TzAwQXFHZnVRSDlMaUNRTThjL1hMVTJPbm9lQ0IwUnVWdEZj?=
 =?utf-8?B?NW42OHNJSFp1cnVjOGxiUXk5eTVBaE1Oa29HQ2ZHOHJNcUxUMDBraTRnMnha?=
 =?utf-8?B?UFV0ZVM3Mlh3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5368.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bmhtdzhlbGZ3VVhqblBLRkNxRVBYT0RFai9BTVozRVNmczU3dDVMUGM3cUho?=
 =?utf-8?B?WjdIeS9ud3B6SHJ4dE9peHZiYXVaMzMzTHNlc1FlNWhuTE1jL3hFT28zcUsx?=
 =?utf-8?B?Yys5bzZQck12U2FvTDlUb0dPMVcvYURlOTdDT24rOXNvZGdWQlZWMDdNTUJG?=
 =?utf-8?B?LzVRQ2ZEL2tJdGFZTGRmSWIyeXp5TDYyZWE3Sk4wZ2dTWU8velJBV2tlMUhu?=
 =?utf-8?B?S0pscmNGR0dqVUpPZ0RlM1FKZmNVWnozdWp2TTRlS3RGOXlhRTdwdXBiNnA0?=
 =?utf-8?B?a0JIREFwcXVGTFlmMDJodmVud3V0bVNvOHh0YVQ2Z2NYcmxMS1BOS0FCREcz?=
 =?utf-8?B?ZitTMk9QbXEwZ0QxKzJjcG56QUhFUmhJOFA4K1hIbE9iYkw5WkR2M2JCM0F5?=
 =?utf-8?B?QlNvRit5SXU0cU1BcWluYWNOUjJ2YnJwamJpNDNjRjhqb2t6Y2VKbDlzbFpm?=
 =?utf-8?B?S29KVWNZbmZHbnlEQVM1d05xaFYvRytPcE1UdjhKV01MK2wwWHU2dHF1bXM0?=
 =?utf-8?B?eXpCdHN5S3ptMFBqYjNOdlNlM2JhdkxNVElEOWtZT21VTHpXVTAxTUV6NXFN?=
 =?utf-8?B?YktteGZkZzhPNXkxYW14NldXazdib2ZsWXNNV1hyS0VvYklVUDhVNEtWRUo0?=
 =?utf-8?B?YzBpOGszdDdaUnNEdmZjaHM5RXQ2V1Jrb2xhek92SHVWOFVUbjNUOUE1Y1dD?=
 =?utf-8?B?dC9HTE5ZR3RVeW41TG9leGF3bDJ2djIxcnV1b1JlWU9ucWtQcDhRWTdTUWRS?=
 =?utf-8?B?ZktYTk1oTWdGYm9uQjF3YWduM0RRZytLSlJBSXpUb2pMd1FPRmhrcDIxeVEr?=
 =?utf-8?B?RldLSFRYNHFabERsdDducjZ4eVVqbG1QR0dXYnA3dVo3U0tTbUhGaERjY3Mw?=
 =?utf-8?B?TDZhWjh5d0VSbHZTWHlNUHpTRzVuSFlvMnJ6NHNmRlQyVXFQc3pJaEpnODV1?=
 =?utf-8?B?VkZQT1EyMUVNVDdpRThBd0g0UXREV2t4R3pMcWgzbmNsTG5ENHBNcmlGa3Vq?=
 =?utf-8?B?ck5TbTFSY1o4WVRFQWxjWUpNZ3hQc1ZMM29WeUErRHU1TWU1R1Q5TDVBcEIw?=
 =?utf-8?B?MDdZUVhqSXpmdGdSbnVIcm95UmZkZTB6Z1ZtbUlESVkvWHo5RFovd3VwaHJT?=
 =?utf-8?B?cEtNYk1zb2RRajR4cGE3QmcwUGFwdG9jcldrNGdxcFg0NHB4SDFqS2NGS29a?=
 =?utf-8?B?MEE5OFQ5dEFhUWp0aWtCNTJTQnUwZURTbXdMTktpZUh4RFNPWFdFN2xiZVVh?=
 =?utf-8?B?Zk5maUkzRVV0K0M0RkVCTGpPUEVJQ1NORFU3VTQzNEYyZ0cxN0JPM2kvK3A4?=
 =?utf-8?B?QzR1MEl5cmxCSm5BN2ZhOXgxeHRJTFhuM2dvZWR1YlpDRlN0aVhhSHN5b2JC?=
 =?utf-8?B?M1JJZ08ycGs1eXFSQ1pMdkhma1NVdWhQSW5xOUJOVko3WjNwV2FVRi9SVXRX?=
 =?utf-8?B?U3pRRklTL0tVcDhCZ21SZllGWnYwSThkTFpOWHliMnNBV1I1ckRkMzEzZ1NT?=
 =?utf-8?B?ampPbkE4a1RkYmEwNDRMNko3UHYwYXU3RDNXVmJSQWVVcEJQVk1rQXdUSVcz?=
 =?utf-8?B?Z3Z4SXFLeWdObHlrWHM5Yjg3S001YVpoNVJHclNHdGpQME1WQTQ4YjRnb0JI?=
 =?utf-8?B?WkV5RWJQTlM2d0YwN3ZJcFIxTW96UFpSK05EUWNSekt5dE1mRkRBa2hodnhU?=
 =?utf-8?B?VWxDdkJWMVdPa0hkSEZTSHVzK2dLZkZ5WTMzM0ZSWTBjZ2Mzdjh1dWNObWZt?=
 =?utf-8?B?TE0xSC8xVWpGRHM2bC8rV254S1ZkVTZqbDRKV2NlVFRUNGRvY2V6aTYyS3Fq?=
 =?utf-8?B?YjU2Tm54SURBQkdMeGdIdDVkd0tzazJzVDhTLzc5a2M2NlQxYlhaSE1SNU5l?=
 =?utf-8?B?Z21sa1hhOVROUGJuM0JwNUFPOFVMZ1QrWnVRTUpVOFA5NWxKWlVETGIrOHRY?=
 =?utf-8?B?Q01ZcVk4d2ZVNDF0aVhaNVczM25EZ215amhoMStrQkJJZTgvMWN6eEg2OEc0?=
 =?utf-8?B?QThtUXZJdERXR1BOcUFra3o4bnpoYWIvSmRUN20rMkRHMzVKRFlWNmZsaW9T?=
 =?utf-8?B?RHpoT29rSlJJMFQyS0VZOHRvMXBLdFdnMkN2M3dLL25EMmhkRHg1em1UZ0ll?=
 =?utf-8?B?aDJtUFFXQ0l5Z1phLzBEWWtqS3dtUlhZc2dqWXpvQ3V4SXlDRm9oY1ZiK0FV?=
 =?utf-8?Q?CdXTcuKd66qyEepk7Lk8P6A=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CCA125A5A137154B8BBEEE31B30B00EE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5368.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed53d322-947c-4cba-b1c5-08ddb8c612dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2025 17:38:21.5466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3mc+a1FAeWwOHilqV3uVIMOnorEl4+Snl9rKOUp70LgDidNH7AQ+P0T1HXm6g2XbHg/DIxIWeqapFJNy1JeP31fX5di3kfT4PSGoKYGPRcw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6337
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

VGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLiBUaGlzIGZpeCBlbmFibGVzIHVzIHRvIHBhc3MgdGhl
IERQMS40IExpbmsNCkxheWVyIFRlc3QgIjQuMi4yLjggRURJRCBSZWFkIG9uIElSUSBIUEQgRXZl
bnQgYWZ0ZXIgQnJhbmNoIERldmljZQ0KRGV0ZWN0aW9uLCIgd2hpY2ggd2FzIGZhaWxpbmcgZHVl
IHRvIHRoZSBmb2xsb3dpbmcgZXJyb3I6DQoNCiIwMDAzLjYxMC42MjU6IE1haW4gU3RyZWFtIEF0
dHJpYnV0ZXMgZG8gbm90IG1hdGNoIGV4cGVjdGVkIHZhbHVlczoNCjAwMDMuNjEwLjY2OTogICBS
ZWNlaXZlZCAyOGggY29sb3IgZm9ybWF0IGRpZmZlcnMgZnJvbSBleHBlY3RlZCAyMGguIg0KDQpU
ZXN0ZWQtYnk6IEtoYWxlZCBBbG1haGFsbGF3eSA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNv
bT4NCg0KT24gVHVlLCAyMDI1LTA3LTAxIGF0IDE0OjE1ICswMDAwLCBTaGFua2FyLCBVbWEgd3Jv
dGU6DQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gU2VudDog
VHVlc2RheSwgSnVseSAxLCAyMDI1IDI6MDIgUE0NCj4gPiBUbzogU2hhbmthciwgVW1hIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+DQo+ID4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmc7DQo+ID4gaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBCb3JhaCwNCj4gPiBDaGFp
dGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+OyBBbG1haGFsbGF3
eSwNCj4gPiBLaGFsZWQNCj4gPiA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCj4gPiBT
dWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBGaXggUkdCIGxpbWl0ZWQgcmFu
Z2UNCj4gPiBoYW5kbGluZyBmb3IgRFANCj4gPiANCj4gPiBPbiBUdWUsIEp1bCAwMSwgMjAyNSBh
dCAwMTo0Nzo1NlBNICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToNCj4gPiA+IFJHQiBsaW1pdGVk
IHJhbmdlIHNob3VsZCBiZSBzZWxlY3RlZCBvbmx5IGlmIGV4cGxpY2l0bHkgYXNrZWQgYnkNCj4g
PiA+IHVzZXJzcGFjZSBieSB0aGUgYnJvYWRjYXN0IFJHQiBwcm9wZXJ0eSB3aXRoIExJTUlURURf
UkFOR0UuIFRoaXMNCj4gPiA+IGlzDQo+ID4gPiBtb3N0bHkgZW5hYmxlZCBpbiBjYXNlIG9mIENF
QSBtb2Rlcy4NCj4gPiA+IA0KPiA+ID4gRGlzcGxheSBwb3J0IGJ5IGRlZmF1bHQgdXNlcyBGdWxs
IFJhbmdlLCBmaXhlZCB0aGUgc2FtZS4gVGhpcw0KPiA+ID4gd2lsbA0KPiA+ID4gaGVscCBzZXQg
Y29ycmVjdCBNU0EgaW5mb3JtYXRpb24gZm9yIGNvbG9yaW1ldHJ5LiBGaXhlcyBhIENUUw0KPiA+
ID4gaXNzdWUNCj4gPiA+IHdydCBjb2xvcmltZXRyeS4NCj4gPiANCj4gPiBJZiB0aGUgQ1RTIGlz
IGV4cGVjdGluZyB0aGF0IHRoZW4gaXQncyBub3QgZm9sbG93aW5nIHRoZSBhY3R1YWwgRFANCj4g
PiBzcGVjLg0KPiA+IE9yaWdpbmFsbHkgdGhlIHNwZWMgcmVxdWlyZWQgbGltaXRlZCByYW5nZSBv
dXRwdXQgZm9yIGNlYSBtb2RlcywNCj4gPiBidXQgbGF0ZXIgdmVyc2lvbg0KPiA+IHJlbGF4ZWQg
aXQgdG8gInNob3VsZCIgYW5kIGFsc28gbm90ZXMgdGhhdCBmdWxsIHJhbmdlIG1heSBhbHNvIGJl
DQo+ID4gdXNlZC4gUHJlc3VtYWJseQ0KPiA+IGl0IHdhcyByZWFsaXplZCB0aGF0IGV4aXN0aW5n
IGltcGxlbWVudGF0aW9ucyBoYWQgbm8gY29uc2l0ZW5jeQ0KPiA+IGhlcmUgYW5kIHNvIGJvdGgN
Cj4gPiBiZWhhdmlvdXJzIG11c3QgYmUgYWxsb3dlZC4NCj4gDQo+IEhpIFZpbGxlLA0KPiBZZXMs
IHRoZXJlIGhhcyBiZWVuIGEgZmxpcCBmbG9wLiBJZGVhbGx5IGJvdGggc2hvdWxkIGJlIGFsbG93
ZWQgYXMNCj4gc3BlYyBpcyBub3QgZW5mb3JjaW5nLg0KPiANCj4gSG93ZXZlciwgd2UgY2FuIGRl
ZmF1bHQgdG8gRlVMTCBSQU5HRSBhbmQgZG8gTGltaXRlZCByYW5nZSBpZg0KPiB1c2Vyc3BhY2Ug
ZXhwbGljaXRseSBhc2tzIGZvciBpdA0KPiB1c2luZyB0aGUgYnJvYWRjYXN0IFJHQiBwcm9wZXJ0
eS4gRFAgbW9zdGx5IGhhdmUgdGhlIEZVTEwgUkFOR0Ugd2hpbGUNCj4gbGltaXRlZCByYW5nZSBp
cyBtb3JlDQo+IGluIHRoZSBIRE1JIFRWcy4gVGhpcyB3aWxsIG1ha2UgQ1RTIGFsc28gaGFwcHku
IFdoYXQgZG8geW91IHN1Z2dlc3QgPw0KPiANCj4gUmVnYXJkcywNCj4gVW1hIFNoYW5rYXINCj4g
DQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBp
bnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jIHwgMjEgKysrKysrKy0tLS0tLS0tLS0tLQ0KPiA+ID4gLS0NCj4gPiA+IMKg
MSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+ID4gPiAN
Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4g
PiBpbmRleCBmNDg5MTJmMzA4ZGYuLjg3NThiOWQ2MGQ1ZSAxMDA2NDQNCj4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiBAQCAtMjcwOCw4ICsyNzA4
LDYgQEAgYm9vbCBpbnRlbF9kcF9saW1pdGVkX2NvbG9yX3JhbmdlKGNvbnN0DQo+ID4gPiBzdHJ1
Y3QNCj4gPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUswqAgew0KPiA+ID4gwqAJY29u
c3Qgc3RydWN0IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlDQo+ID4gPiAqaW50ZWxfY29u
bl9zdGF0ZSA9DQo+ID4gPiDCoAkJdG9faW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUoY29u
bl9zdGF0ZSk7DQo+ID4gPiAtCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3Rl
ZF9tb2RlID0NCj4gPiA+IC0JCSZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlOw0KPiA+ID4g
DQo+ID4gPiDCoAkvKg0KPiA+ID4gwqAJICogT3VyIFlDYkNyIG91dHB1dCBpcyBhbHdheXMgbGlt
aXRlZCByYW5nZS4NCj4gPiA+IEBAIC0yNzIxLDE4ICsyNzE5LDEzIEBAIGJvb2wgaW50ZWxfZHBf
bGltaXRlZF9jb2xvcl9yYW5nZShjb25zdA0KPiA+ID4gc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiA+IMKgCWlmIChjcnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0
ICE9DQo+ID4gPiBJTlRFTF9PVVRQVVRfRk9STUFUX1JHQikNCj4gPiA+IMKgCQlyZXR1cm4gZmFs
c2U7DQo+ID4gPiANCj4gPiA+IC0JaWYgKGludGVsX2Nvbm5fc3RhdGUtPmJyb2FkY2FzdF9yZ2Ig
PT0NCj4gPiBJTlRFTF9CUk9BRENBU1RfUkdCX0FVVE8pIHsNCj4gPiA+IC0JCS8qDQo+ID4gPiAt
CQkgKiBTZWU6DQo+ID4gPiAtCQkgKiBDRUEtODYxLUUgLSA1LjEgRGVmYXVsdCBFbmNvZGluZyBQ
YXJhbWV0ZXJzDQo+ID4gPiAtCQkgKiBWRVNBIERpc3BsYXlQb3J0IFZlci4xLjJhIC0gNS4xLjEu
MSBWaWRlbw0KPiA+ID4gQ29sb3JpbWV0cnkNCj4gPiA+IC0JCSAqLw0KPiA+ID4gLQkJcmV0dXJu
IGNydGNfc3RhdGUtPnBpcGVfYnBwICE9IDE4ICYmDQo+ID4gPiAtDQo+ID4gPiAJCQlkcm1fZGVm
YXVsdF9yZ2JfcXVhbnRfcmFuZ2UoYWRqdXN0ZWRfbW9kZSkgPT0NCj4gPiA+IC0JCQlIRE1JX1FV
QU5USVpBVElPTl9SQU5HRV9MSU1JVEVEOw0KPiA+ID4gLQl9IGVsc2Ugew0KPiA+ID4gLQkJcmV0
dXJuIGludGVsX2Nvbm5fc3RhdGUtPmJyb2FkY2FzdF9yZ2IgPT0NCj4gPiA+IC0JCQlJTlRFTF9C
Uk9BRENBU1RfUkdCX0xJTUlURUQ7DQo+ID4gPiArCXN3aXRjaCAoaW50ZWxfY29ubl9zdGF0ZS0+
YnJvYWRjYXN0X3JnYikgew0KPiA+ID4gKwljYXNlIElOVEVMX0JST0FEQ0FTVF9SR0JfTElNSVRF
RDoNCj4gPiA+ICsJCXJldHVybiB0cnVlOw0KPiA+ID4gKwljYXNlIElOVEVMX0JST0FEQ0FTVF9S
R0JfRlVMTDoNCj4gPiA+ICsJY2FzZSBJTlRFTF9CUk9BRENBU1RfUkdCX0FVVE86DQo+ID4gPiAr
CWRlZmF1bHQ6DQo+ID4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gPiDCoAl9DQo+ID4gPiDCoH0N
Cj4gPiA+IA0KPiA+ID4gLS0NCj4gPiA+IDIuNDIuMA0KPiA+IA0KPiA+IC0tDQo+ID4gVmlsbGUg
U3lyasOkbMOkDQo+ID4gSW50ZWwNCg0K
