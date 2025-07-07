Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C374AFBA64
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 20:10:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D5A10E408;
	Mon,  7 Jul 2025 18:10:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WgERHZBu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABF5610E06B
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jul 2025 18:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751911825; x=1783447825;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=XurMqSC+3V8L30UDH7yVe8FIuMsYa4WfD5lyAiJ2DhA=;
 b=WgERHZBu5hsPVUKNcmRao5Z4lE5XUWq3tZl78k8HoSSs5ScVNPgbNjpw
 gphWYA2YLPG6fDVgWWqPLp7LrHikWfK42OaPZpJ97ps7wMwyu7FHssHW9
 ikmvGVUdavORCl5jTeqFS0+/dkiHlhK38NVXl0aAM4kP9HTwKK0A6T1pp
 At9NCdQ9PdPcfSyfDU/2tZG6vuGJnB06QfX06zJbb5+odAAZv4dn7DFfs
 Zjxb95j/HZB8H/Pstn0S1MVMmmeC8r4Be4qzuFWF6l0qpPRocbz/nGpSS
 yTNYm/K7fanZbEC8lXUP0aE09bxKapaBl4SpvhutVAQPZoJPHwzTUCzrC A==;
X-CSE-ConnectionGUID: pnko6MZpQLiSMkICzbWEeA==
X-CSE-MsgGUID: rx39/famSfSl90HWzle6rQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54278421"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="54278421"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 11:10:24 -0700
X-CSE-ConnectionGUID: vxhgazJPS1Wsp6C8tYZ3jg==
X-CSE-MsgGUID: eEiRV9RKTrGQ1MO2zmzu0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="155377995"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 11:10:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 11:10:23 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 11:10:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.87)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 11:10:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o6+5biRsC1pCdjhbGoW1I1jgcwD4GKOK906SNaAeW3GGN2h10cKBWiG0Aa6JApVP8MygsS6FKat/7Ae9oXwLRxxtnn/lM42J7Vgo7f6/QZCtchppTAMf7l+FD9qVJ7J2Uovgz7CHS7nxl/GDmls53/sOMrHU6StRW67X/K3WdnljM76nqc9x1VskeCJGfm9a3WVhHRQ2rx0n3PNPGmUT2zrySQ9qyXMJQWPP3o0uBDFwpm8z9bYE+eTy0uceD2qt3yH15N7Zbr8glMEFWPvoNVk/hCuKzE5WmG0ad/VhQ2HmCI8a12pG1sxIAaulSFz3tgzoaXLAilQE3w78V5+koA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xIN8ft1ftHrTnujxaVUyLJEyPKtTZ04KlNUhkYWEMBQ=;
 b=iszt9Tb8Mjhbme93MXaFD2GIBE9OOPNnenpUXXOt21EM8H3DrPCZkHzefjME67pQUgOqEg5MeH/2W3u6ExyKF2n2gDQ91qC9+jWJR9MVrPkMV5rEO2xyH49BMRT/wknk72jmJj7LBB4EFD+x+wZ0RTDZfC4EKVyGLHuPVFyPqxcVaKqk4coLC/iJO2L6IMjwhfYINlDWK5mFkMJ79UXQQflHrOfVdm6jx38mqsYT5viIZ98KUCmlCpruUMhhnCbPrDUQmNaQncjwg7YmDq1UZviXAHLVxm9HcjxK4JAQpaUMdjq1jUVLCJH/xDKqOmVu65DbtCfanFhH5IfyAhUg0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH7PR11MB8525.namprd11.prod.outlook.com (2603:10b6:510:304::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Mon, 7 Jul
 2025 18:10:21 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%5]) with mapi id 15.20.8901.018; Mon, 7 Jul 2025
 18:10:21 +0000
Date: Mon, 7 Jul 2025 11:12:03 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Aakash Deep Sarkar
 <aakash.deep.sarkar@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <jeevaka.badrappan@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Alex Deucher <alexander.deucher@amd.com>, "Lucas
 Stach" <l.stach@pengutronix.de>, Rob Clark <robin.clark@oss.qualcomm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Julia Lawall
 <julia.lawall@inria.fr>, Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [PATCH] drm/i915/display: Change ret value type from int to long
Message-ID: <aGwN82fPCQdAeMhz@lstrano-desk.jf.intel.com>
References: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
 <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
 <e3e14f51-b094-4cf1-afee-642de25d9459@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e3e14f51-b094-4cf1-afee-642de25d9459@amd.com>
X-ClientProxiedBy: MW4P221CA0023.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::28) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH7PR11MB8525:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d823a3d-ddab-4b0f-37ca-08ddbd818969
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ak5UV3kwM28zaFYrN0lmS3hXeHNLcXh1dzl6TzlNOFE3R1kzckNUMzE4S2NT?=
 =?utf-8?B?eTFyY000UHE5eWYwVXI4M1paeDA5SGZ2ZURiWUJ6RVlnU2dKbUJoa3JQR3ln?=
 =?utf-8?B?RDBKdWZoVm9xS1ByalBSWTBYTUV4NlUwZWY1L25yU0JQbXhqOWVkTExhQi83?=
 =?utf-8?B?Y3hRV0ZPWEY5ek4wbm5CK1NySlhoRi85VnhkemFBMGdpejVFc3k1WU92bENm?=
 =?utf-8?B?Y2tBa1RjczdjclZVV1p1NHRvUjlaZG11dFZPY2tKNEV2enFXdFVsK2lYWkFG?=
 =?utf-8?B?aW50R3hUME5SbVBaZWN6WkplcVp3amxpOGpZY016MFJ4Vnd3YUoyTE41K1F3?=
 =?utf-8?B?VlEwMmZZaGVWbHVqVHRsZThmcXlHRURuaUxLVUtseUNtZFV2MmM1YUM2Tldl?=
 =?utf-8?B?ZkE0Rmpxd2JHMkFtd01EbHRJTy9vdEVWRTM5WmttTFAxQmhERWhhbHN5a3pM?=
 =?utf-8?B?WFlLU25sQUZuKzYxMGJnYXlWRjdhMG1ZWTdoeGNQZlJiRUFrZWh1Vk4wRUdR?=
 =?utf-8?B?OURjNFlmVlovYTNibmxxbnRFa29HN1hVY0U3TzVsaWpwYW5yS2Uvc1NSenBE?=
 =?utf-8?B?T3F6d0R1MU5lNms3d2dmVkwvRWo0MUZkeVZmamVyZlUrWGlrTzMySjlhVmtr?=
 =?utf-8?B?NHo2NlJqRDB3bDRGNGJGTnRmd3FOL3U5ZGRWV0RnTVh3Vm9xbHljandRVmpz?=
 =?utf-8?B?SVdJT3IwUnY3cnJ2K3p6MnROS1pSRkp5TXJoU0tidUNObTU2M0t6THB2VC81?=
 =?utf-8?B?RUZGcnkwR0ZDUkFBSG9VN240L2FLSG5heUVpL2JYWS9RUXFzVnFtVGVlTTRH?=
 =?utf-8?B?N05qU2t2NVkzOCtoWGdFWXl3a2Z2VHNra2dUN3E4S0ZWUTFWZVBvQXhwamdW?=
 =?utf-8?B?WHNXa0hvWU8yZndZNVdrL2p4OG12N2FIWjYwSXFZdS9vc3B2Qmp4VERtRVU3?=
 =?utf-8?B?Ujd5cHRGSzJOOGkrMENGRm5qUkxKd3QzTG95Nlkxd283d3AxOTF6S01FUUZl?=
 =?utf-8?B?RVNNR0JsN0diNEtGZkdYWDJNRks4L0dWak1EcWtiSGlpcVJ0UlNWUGZtcXA5?=
 =?utf-8?B?Nll6ZCtNdFMweFh0QXlqb2I3OVJXYVVXeEtGMCt3Mi9BemZQSmdGaDNtamhu?=
 =?utf-8?B?QU9UejFETkRWYkE2TStSYzd6azIwYmkwcGNtbXFweTdBamFYVHBUUWNpL0x3?=
 =?utf-8?B?ZmJ4RlhVN3VMaCtBT09OallBRVBRc3B6TkxFRWJVRVYwR2RNRG5EZFJpMkNy?=
 =?utf-8?B?V0xIWXlHNnV4SDdxaWVCV3NvU2w2ZnJKUHNpUzZtRXFVY21vZ3BBRUpLY0hG?=
 =?utf-8?B?TVBkSHRQZVlRVzVDZXVLU0NSWmRRb05wYlExMWZVM3NQcFdxNFlzdFZ6eVZu?=
 =?utf-8?B?OERVMllCellTSXJkek1HakhOUCtDNnRrWm42Wk9xRkl5enZUUUZvb2t1V053?=
 =?utf-8?B?UTlUMCtLTkxFekY4OVFXeDhQTUErcDZtanZMQXFlYnlLcXNLZThzUmFXTTd6?=
 =?utf-8?B?VEN5a3BndHQ1dTdvNjNURWZvS1lMV09MNi9DTDBVMVFKa3F4emZaS1hBRXdo?=
 =?utf-8?B?TUI2ejJMQkQ2SmJPbkt5Zjc1TWFoRHQrYUJ2bS84VzY4SU1kNG9CbGk4c3li?=
 =?utf-8?B?WTZZRi90bm91M0E0amluL1J1VDNxUVlMOFZveENzVmF2NlBlNmMxc3V0S2RP?=
 =?utf-8?B?QlY4TGx1WXdXOSsya0puVEZGVWsybTRSa244TkljOXBiUDdTaHkrMWFVWWFF?=
 =?utf-8?B?QlVkMXh2WDZ1blBxVkg5bFo2OXlteW0vUFpzaitoMjh2N0pYK2dYYnpwWDRh?=
 =?utf-8?B?UjBNSXRYZWM1MVYzTnhmUW8zN1h6TnNHemg4U3hWNkRNQzZpS0U2M0Z1MUQ0?=
 =?utf-8?B?VVlReHc5K1BiRnZYekEvc3pZZjFJdDZwcDlLcjg3dnFGVjVOeGRzYnBsMTNh?=
 =?utf-8?Q?W79TsBWxabg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFlVWXZuUUtJY3F1V0dkYnpPQjJjNDBTVXNPY0w2R244azNYNUVONGMxYUZT?=
 =?utf-8?B?dGJVOVIrbERLMGtiVDZ5SWRSQk4wVUUzUjh6RHQxV2pPMjhlUUlCUmhBQkdF?=
 =?utf-8?B?Z0xvTkpVWWNmVnFwRWdKRlo3WEJFdDdFcGhJUkRmbjlSUzJSRU9CY01wQjFY?=
 =?utf-8?B?RHFtYmI5QmYwbzBOSlVuL204UE9pM2FoMVV0QnQyVWEyVm4wWVc5dkVnMFQv?=
 =?utf-8?B?S0hBK3FtcmVjNTU5VFRneFNRQWNZcmVYTkNDR3pUb1B6cmQ1UWt1NG1OazhP?=
 =?utf-8?B?QlQyVlhxYllKVGQyWGdUeVV5NGRMODB1Ri8yVXlERGpLYjRnQjlqcmpBeVFj?=
 =?utf-8?B?eVlta2sycGZ5OHlpTW1qVm9rMlVvZHlUbFVBa0Q5Y0VOdkdwSGNjTWhOMitJ?=
 =?utf-8?B?MHJCOE9xWVBteEthSktMMnhrYnlMOEZPSWNHMnU2dHZZS3BaUVExZ3hTYmcw?=
 =?utf-8?B?NG15U3FISy84WjZ5YjcwTGNIVFBtdEgrTGhWYUFWMmVrUnMxbWtNMk4rb2Ew?=
 =?utf-8?B?ZHo2L0tOck9GOXhGUi9KZ2U5ZnR4Qk5YWHpObVBOeFpBSXVacjhJK21NZkhG?=
 =?utf-8?B?U3ROVVQyVVhqdFFiMDRxZGszN2NyNHJQbXBGUGdYYUR6ZXlBQjNEWlV1SDNC?=
 =?utf-8?B?T2JtTTYxeEZtajQrV002LzBCNnZGcDFxNGNiRUVqeHJwdXYyNkhPR3RaaTE5?=
 =?utf-8?B?WkxlbDRORnp5c0UvMmVTZUtkeUpIY3pWM21wNFpyOXd5MzNlc2hNU0o2T0g1?=
 =?utf-8?B?Y0ZWaVhRU2hGazA3L3NYQkY5Z0cwdnBuTnFJNDJLR2VjeGZsUWNTaUlXblpx?=
 =?utf-8?B?blY2QlUvQkJwbjFlRkZXMVk1b2c3Vk5lWldqbGpsTVdmZFBhMXluZ0tFR2Vk?=
 =?utf-8?B?UmxHYjJOODRBRlNPWEY2RXFMbmplTlVaQUpOU1RNNmF3cnRZQ3paU29MM1JD?=
 =?utf-8?B?bEt0WFpDdUlVSFoyYVQwYnRvMUxjajBxYll0NVZpK1JVR1ZoQVpjcHBMQzlR?=
 =?utf-8?B?NjVZdUpxQmJFYzU1SitoKzJkWE4xTHZ0SEsvYmN4K0VnVGVHcUI2cWFWK054?=
 =?utf-8?B?MFcvQzAyU3JhSmtaTlNybWpGdTYzamhGa1RydnlhbWZPSWNaYUNncjk1c3N0?=
 =?utf-8?B?bVZVVVcrNTlueTN6ajZUWktySWpadHdVYzE4TUlSekoxZiswaFMrbHBiWnVk?=
 =?utf-8?B?anl4cmxhNUlObnZXVWxuVjFVSjZmbURzUVpRWGdtaDhod0pXMW5vajNScDB3?=
 =?utf-8?B?TmQwT2pmZjZUWXIxdm4xY3FCSTJhK1d5WTBmREdrbWtGQkRyYzltc012VTIr?=
 =?utf-8?B?VDlueFNwOFI1NjRBc0RWV25TYW1iWVRlNEY4alM1NlQ0bDI0R2laTUtQVjY1?=
 =?utf-8?B?UmlYQldnbHRQTGxJRGNoaHRlRzF5RWh6RlMyd3BnMmpJc3dTTVBWRHhEQmsv?=
 =?utf-8?B?azg5UWpoYllSN0RIWWU0N2ZybmhTc0pZcjliMnhOelV1cU1KR1B1SnpZU1pO?=
 =?utf-8?B?aHdzcVpPbUxVeEt0R3BiZzVqQkpPcUk5Vm5jMjdudWMySzgwQXpVZld3cVI2?=
 =?utf-8?B?clB1SXlLcmNDRnFlMVBXNGNLam1scmhyWUJmenNkV1F4WWo0cG9tbTBWY2J6?=
 =?utf-8?B?ZkpWNDdzd042RTNkYVh2R3VoNm03YTYrQ0pGc3FzeTR3c3hKYnNLSnZHQUxv?=
 =?utf-8?B?dSs0WjdpTE1WV0ZHRWNjNDIxWWdNUXNpMUhIeGhUcCtJa3l0eG1EVHp0dHQ5?=
 =?utf-8?B?R2JJcUhEeStQM3cyNG52R0l4bitLeUJXSVdjclQ5cEtET005THg1ZjcwVjd6?=
 =?utf-8?B?ZWtmQXVRb3ZVSVpzRHgxeUs1dXRaRktSY28yODJIUC9zdE8vR1MycThkZHpM?=
 =?utf-8?B?SU1JcWFGWXB3VXdwaUIwb1ZUeTF5czRMTTFGR2Vxa2NLTjVldldzNXQvYUw3?=
 =?utf-8?B?QVgxVGFCVDV4a01YRHorMnNFUFZMeDl3VXRPOHRxalAxZjBCTEtZMGlaK1dP?=
 =?utf-8?B?dUc2VDV4aXhDMjZnblRIQVo4SnlvR1R6ZThYV1MzZXI0YjhCak1CZXVSZUpR?=
 =?utf-8?B?M1VsUS9BK2QrY0VKQ1cvUm91b3QvQ0hYdkp4RjhlMDhhTXUxdUpQOWFNd2RK?=
 =?utf-8?B?bmpDMHl4bm9GMG5KVGFYQ2J4UHg5N1dVU0lhZVEzWExBYndkcHRvS2tjdTBi?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d823a3d-ddab-4b0f-37ca-08ddbd818969
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 18:10:21.2500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rlb/0mOyXmBMKJFjvyJiYkGs67+oBSV/sQDTTYOT0fh8TCtQ6s9p8OWUtBFgAZ3X+FLEJGQiXIcmz76Pt775kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8525
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

On Fri, Jul 04, 2025 at 02:27:02PM +0200, Christian König wrote:
> On 04.07.25 14:00, Jani Nikula wrote:
> > On Fri, 04 Jul 2025, Aakash Deep Sarkar <aakash.deep.sarkar@intel.com> wrote:
> >> dma_fence_wait_timeout returns a long type but the driver is
> >> only using the lower 32 bits of the retval and discarding the
> >> upper 32 bits.
> >>
> >> This is particularly problematic if there are already signalled
> >> or stub fences on some of the hw planes. In this case the
> >> dma_fence_wait_timeout function will immediately return with
> >> timeout value MAX_SCHEDULE_TIMEOUT (0x7fffffffffffffff) since
> >> the fence is already signalled.
> 
> That is not correct. If the fence is signaled dma_fence_wait_timeout() returns the remaining timeout or at least 1 if the input timeout was 0.
> 

From my look this looks correct.

> Could be that i915 has a separately implemented fence_ops->wait callback which incorrectly returns MAX_SCHEDULE_TIMEOUT, but i strongly doubt that because that would break tons of stuff.
> 
> > If the driver only uses the lower
> >> 32 bits of this return value then it'll interpret it as an error
> >> code (0xFFFFFFFF or (-1)) and skip the wait on the remaining fences.
> >>
> >> This issue was first observed with the Android compositor where
> >> the GPU composited layer was not properly waited on when there
> >> were stub fences in other overlay planes resulting in significant
> >> visual artifacts.
> > 
> > Thanks for the patch, good catch!
> 
> If I'm not completely mistaken this patch is not necessary.
> 
> dma_fence_wait_timeout() does *not* return MAX_SCHEDULE_TIMEOUT when the fence is signaled, but rather the remaining timeout which is the input value at maximum.
> 
> So when the input timeout fits into 32bits the returned timeout also fits into 32bits as well.
> 

Sure, but the input here is MAX_SCHEDULE_TIMEOUT, which is not 32 bits.
The interface accepts a 32-bit timeout input, so the return value can be
greater than 32 bits.

> And as far as I can see i915 is using the config option DRM_I915_FENCE_TIMEOUT here. So as long as you don't set this to very very large value this should work as expected.
>
> >> Test: No graphical artifacts with shadertoy
> > 
> > We've never used this commit trailer before, please let's not start now.
> > 
> > The subject should plainly state the "what", and the commit message
> > should answer the "why". You do have that here, but I think the subject
> > is still a bit too much nuts and bolts.
> > 
> > For example,
> > 
> > 	drm/i915/display: Fix dma_fence_wait_timeout() return value handling
> > 
> > would state the "what" in *much* more helpful terms for anyone looking
> > at git logs.
> > 
> > Presumably this has been an error for some time. You should do a little
> > bit of git blame on the offending lines. It'll find commit d59cf7bb73f3
> > ("drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence").
> > 
> > Based on that, we should add:
> > 
> > Fixes: d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence")
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Jouni Högander <jouni.hogander@intel.com>
> > Cc: <stable@vger.kernel.org> # v6.8+
> > 
> > Then it occurs to me this looks like a common mistake to make. A little
> > bit of git grep on dma_fence_wait_timeout() quickly finds multiple
> > similar mistakes in drm, at least amdgpu, etnaviv, msm, and tegra. Cc
> > some maintainers FYI. This class of bugs could cause issues elsewhere.
> 
> I can only guess but I think all those use cases use a fixed small timeout as well. IIRC amdgpu uses a timeout in the millisecond range.
>

Ah, no. A quick grep shows multiple cases in AMDGPU where long +
MAX_SCHEDULE_TIMEOUT is used:

- amdgpu_vm_cpu_update
- amdgpu_vm_wait_idle
- amdgpu_bo_kmap
- amdgpu_hmm_invalidate_gfx
- amdgpu_gem_wait_idle_ioctl

I'm pretty confused by the pushback here—it's among the most confusing
I've ever seen.

Again, this patch is almost certainly correct. I've made this mistake at
least twice myself.
 
> > Let's also Cc Julia and Dan in case they have ideas to improve static
> > analysis to catch this class of bugs. Or maybe one exists already, but
> > we're just not running them!
> 
> Yeah, agree. A script which checks if the input timeout could be >32bit and the return value is assigned to something <=32bits is probably a really good idea.
>

Yes, I agree. -Wstrict-overflow or -Wconversion in GCC would catch this,
but enabling them causes the core kernel includes to quickly explode. A
static checker would be a good solution here, or we could fix the Linux
kernel so it compiles cleanly with these options.

Matt

> Regards,
> Christian.
> 
> > 
> > Finally, for the actual change,
> > 
> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> > 
> > 
> >> Signed-off-by: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index 456fc4b04cda..7035c1fc9033 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -7092,7 +7092,8 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
> >>  	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
> >>  	struct drm_plane *plane;
> >>  	struct drm_plane_state *new_plane_state;
> >> -	int ret, i;
> >> +	long ret;
> >> +	int i;
> >>  
> >>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
> >>  		if (new_plane_state->fence) {
> > 
> 
