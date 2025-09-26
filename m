Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B415BA52E6
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 23:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A3410EAEF;
	Fri, 26 Sep 2025 21:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hcovt3OF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A044B10EAF8;
 Fri, 26 Sep 2025 21:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758921209; x=1790457209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=GCTqtgG2kP98fLihW5+KoP1Bo8ZujhAEYzMGjvoft1c=;
 b=hcovt3OFrwYkZPSCZIjqRQhwVR/jjvf58L7aCyDUv1wp+LugHmW4S4u2
 EWL+1ylBUd5hEEBmjz9v9NkSgL7AEgQ86/OjIGqKuKdqX6cKEynvDNVja
 wXteXjGmP9/fwK1Hsx7rr+kee8hvHfd+HhanPf6pf8wirr6PL8sphdZQz
 135v5YnVfN6lg4K2L7PyKVT36VPufBcZOikGF2Jt3R85VN2qWQ2e+6Uok
 MEEtJiGBHT/Q8Q6z4E83F0bLsjHYFtzI/1F1HxyS07R8m8kuC8S5THNP6
 W/QLqzSFIkbV0QBC6MkBdtiuZio3Iio8SHW6jFQP51rn8GbzHudst4iJg w==;
X-CSE-ConnectionGUID: M9AwrR9dR2+kPB6w5XFYyQ==
X-CSE-MsgGUID: vqkr9hbGS2ior07mKURgyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61173166"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61173166"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 14:13:21 -0700
X-CSE-ConnectionGUID: x5VdaogqT3CJfHsntXUgCg==
X-CSE-MsgGUID: DA4LpRSwTvmfoRjG2BKroA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,296,1751266800"; d="scan'208";a="177644081"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 14:13:20 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 26 Sep 2025 14:13:20 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 26 Sep 2025 14:13:20 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.20) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 26 Sep 2025 14:13:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gdpfZQ32T+JQy+nL9ob0Zb3SxeEfizbXhfJfWms5z9PTwBMqbyMBMwi7gUwTbhG4rz4TBLcdr51jjYtIAipnDPF0apZDH++yhEtt3lrpq1bs327J1nMS01APhU4JB6qg/kGhGkWLzM5N7p0GKl6PJEGDZh05JGEqyOBm/HbARYTICsWO33VCizuDf5QRltjn3UYw/L9FR3O1/49Sjuz7z6EX+63wkeGvuAZgEBCXzcoBo8h5RNPBmC82LX1Wld0X+sj9LuGVSMzIvkVNMZTRIYgatWZj37rqECSAnnK9VCl8yOSkv7dqy80H8RszVZGqXiw7/uS+RjTiKcDqZUvblg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uLI2p2gVKIhx8S6GWDe3wD6datWljzIjpJKGFEZL2xk=;
 b=PIhKMvOb7p2gfyNXTAhZG8Cy3YYgG8/HX18Tmok+0jUK2Khd67Qt8+WlPopieFGLKRjm4YdXzo3MUm5mov1xz5JQj8wjE6r7rgCoNNrCpXUDibxc2mMCSfX6Nj/iJZfc1svEK5NAQ877q3OeLn0Q9ubMWnkz/4RRJPZNoohYYM0Eaz97gmuSJU2LZIGQLFmCHTT4D0lXR2RNg8hL25NMWdnk7iR4kYxOgRiQKirIV+Kae9ZOg4KLENWvzsG7xvTepr4DDlpTeLStBTcLzYNCCn0pmG2q4ZM2AksZ2DVfKE27CsGpyftgDp4wtQBxYIfW+nzj8fo29SY4GvD4/CbHEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB7788.namprd11.prod.outlook.com (2603:10b6:8:f5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.13; Fri, 26 Sep
 2025 21:13:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 21:13:18 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>, Swati Sharma
 <swati2.sharma@intel.com>
Subject: [PATCH v4 6/6] drm/i915/dp: Handle Synaptics DSC throughput link-bpp
 quirk
Date: Sat, 27 Sep 2025 00:12:36 +0300
Message-ID: <20250926211236.474043-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250926211236.474043-1-imre.deak@intel.com>
References: <20250926211236.474043-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P265CA0119.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c6::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB7788:EE_
X-MS-Office365-Filtering-Correlation-Id: 20152e25-b18d-4f3b-d344-08ddfd418399
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YThFYUNsY1htU09KMXhDZ1ZWRVQxVlVCZGtPRkpFWG84ZVN1UWRRL0VPckdR?=
 =?utf-8?B?YUN5RHoyUG00S2h0VVRzOWNEMmExQXoyaXdvdVQwZCsrRjhqUUVXcThNMVVw?=
 =?utf-8?B?TVUxVjIwNG85VlNhVTJ1cFYyMXdMWVV3T3dQMWtGZjByVEtSNW0wbDBnVHpO?=
 =?utf-8?B?VVNZNWJTWTJOVG1Pd0hWSytyM3BGNTFiRjlhV1JOaWUwczdUdU90Wk5sNVlB?=
 =?utf-8?B?eXVjT05xa3RNd3FxTjlvSTJGdTQrUmt0eUxnOU1NOG9VWk52TTB1cjRYcWUz?=
 =?utf-8?B?LzJhTURkenZNT3lDVTFhQTRiWmUzT2h0QXdseGlCVHZKR0QwWlp6N01aeGlm?=
 =?utf-8?B?SFJZbmgzdmI4dzNDNjUxNWVBT0lWdGZkY0llc3FzY2tHK1c0TFNubll2UUFV?=
 =?utf-8?B?NzFBYWNzdjQvdTQyWjI3aVlJK3lzMXVQZUlZRTl2YVJSS1FHUUlYRWNDcnVT?=
 =?utf-8?B?RzNObmg1TFh0Tk83ZXVZeWFJQ1ZRaTZOU3c1VWhFVUlSNlc5VlVvTlZrcmJX?=
 =?utf-8?B?T05WU1Y3VWtqNkcxREJNdTNwRDFDbVBwVlovU05KTkt2YUxNQUFITzhFOE8v?=
 =?utf-8?B?Q0d0RUk1WjUwK3FVVEI4ZllkVVJBZVBrZ203aG9tREpFRW1LMGtXRk54VzVl?=
 =?utf-8?B?Q3VMRG5OcXlEaWNjNlB4NEJkazF6Kzh4Ylp2bTFydEpBVFdRbnRCZVdNb0lt?=
 =?utf-8?B?QnVNc0xhbEdudDdFK05yMUJYTHhCSE9LRlk1VGxjRCt6dk9jYkJaTVkrM2FL?=
 =?utf-8?B?ckY0Tks4eHNWQTJRaG8zNENYK1B2OG1iMlpZOG9KYk4wcGtiWjBSQk9waWo0?=
 =?utf-8?B?ZzNEeWw0ZnBMZHdWVlRnWDBKVm1Edm9tVWN3QUJyZXArVUFuVlBrRDhDVHlF?=
 =?utf-8?B?TzF3b1hPT21EY0g1N1lhQ0FpMloyNUtOc1p0SnJLSndsSmdWd2JJVnhKMXFE?=
 =?utf-8?B?TjJEZTBlVXJlTm1WWDFyY0YyZThublhTM2I1L3dpU3VPczFCSVhrNkgwT3Mr?=
 =?utf-8?B?VHJzNWkzL0NmOU83UkY1enMxTnVrd0k2ei9MR0FaZEdOeUxKLzZMdE5YajJL?=
 =?utf-8?B?Zm1EaExZcmhjTXhCWG5mZlV1aXplTE53SVBXS1pQem9DR05ObG5EUXowV2Ns?=
 =?utf-8?B?c1U1QmoxcnplVHhsc0FrV0Z1emtCNk0wSkdhQ1FoYWVXYW5JVEdrSm1EeWJl?=
 =?utf-8?B?eWpkeXlIUUQ5ZUtEdlk0LzREaWhpQ1VRNGo5NDRzejM5aU9CRGpGbGVXNnRy?=
 =?utf-8?B?bU5BNDZLQjc5TjhoOGtqZFBhYVRzZ2FKbTV5R2tQMGtZWndRdE1QRkd0YTlt?=
 =?utf-8?B?Q3B1aEoxNFU3dnFkSlNQYktrM0ZMRjIrM3pRZUd6cU1zbWxPdlBCWTQ3TENS?=
 =?utf-8?B?dW1oa3RPZ3BCNEVNTGthWmZLZlRmZmhUenVDS0xVOTFBRUNoUXFQWkVna2RU?=
 =?utf-8?B?K3lQZnppM0hSUVVidmZZRzhldUZ0b3h2L0N2cFhEMnNLYmZKVDJmZm5XSlFm?=
 =?utf-8?B?VnlpaTZWU1hIeGV6OFBoVmxqa0xCZTZsdjdKZmwyOWp2TFpPRzExa1hNdzRw?=
 =?utf-8?B?NWhIbG9lVG1wU2wwVlRKeGdhbzNDZUpVZWFaQW9NTEhpTkVldU9QZTFxRTIx?=
 =?utf-8?B?R1NEUU1tZFhuSTV0cEM1SUFRTlE5cVNOV1ZzeVZZclZ6V3pQTWEveGYxaC8x?=
 =?utf-8?B?dy9TZlM5aXpvNGZBek5xZVFYOEpHdHBXVllMbVFxRnpDUDk3MnVZTmVqYW1l?=
 =?utf-8?B?VDZaUnV4RWFTOVYxL1RWbGtCbTlSdXE0QmtPWmdka21QL01WeFpjMUo0aVlU?=
 =?utf-8?B?RzAvMC90bWhQOTdER2pSaGVuTFBmbkNSanV1bFpBK2JLWWc3QmhnQTkwYmRF?=
 =?utf-8?B?MHdCVlhiVDJOUElRUnFKS2psSGZYQm9aYUZqY3hleFd6VG9iTTBJSXVWRW04?=
 =?utf-8?Q?CaVsuirq9J6vOgyiYXNTszadX72XDtEn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFV5bkkzZ1lhUHJ2WXl0Y0wyN2hmVmRwZHp3M055YTdkYUxDejdyMEFqM3Fj?=
 =?utf-8?B?SkpXWURQVkdRRklISVJtdjlHcjFISjZQRlQ1UjdFWFBLOGNtalJkcENWWnM0?=
 =?utf-8?B?Rm5OMGEwRE1CVGxlcTdvYkZybnJGOTdLRmR5aHJjSFdWQWR2N0Z6UEN2UU1m?=
 =?utf-8?B?bXl4RmNYclhJd0lVZVpOQ0xDR2dtN3U0Vis0ZjIxVE9jaEI5S1pEcS9aWHRz?=
 =?utf-8?B?aU1ad01SK1JQclRzaTNmZE8zN0hwb3B6MnRiZmxLamFQWHQ3NHZGaUhrSWhD?=
 =?utf-8?B?WUpzZVBVV2ZuOUI4RWRCL21NelVKWnREcnNRYXlYQW9xKytXL2xuM0NJWEpL?=
 =?utf-8?B?ZGdla3lseGNNYjlmd0lRUDY1RkJzNGIra20yMFVuakpYRGxxMUgzeVUwMlJU?=
 =?utf-8?B?ZjVobGpYcWlVcGI4S295NWNtNzZPSWxsOHFadmFqaVB5MENQNzlCYnFqenpD?=
 =?utf-8?B?dEtnU2RRSHNweHNoZlZXWEtmTERsYllKbzNjVlZZeUhYWVIxSWVYYVR5S29X?=
 =?utf-8?B?TUlzUHhieldnaTdsVHM0dG9QQVFKZzFDckJsdWEzaGVJSHVvVDdabW1NaWli?=
 =?utf-8?B?U3Z2Y1YwMEpqeW95d1RHVmNxcjRPcFpoODdVNG1EeWMvYjVVQ1dpRGpVVVBi?=
 =?utf-8?B?YXpUT2t0dHBJSGZtUlU0aXEvKzRBcFVhKzhoUFNKNFJYa21hTnM2WDE5ODg0?=
 =?utf-8?B?czZOMnIyQmRwUkFoTTBYeG5VZlhwSHE0a2MvV3hFNVdRL1RCVFdFYUNnYlAy?=
 =?utf-8?B?Slg5d1BLQlVzdnNlUzczOXhzNGdlYzJOMTFoSnF0YnFQbTlDYVlBbXU2RmlF?=
 =?utf-8?B?b09Rb3NRN2RCTnNUcml0VkhuSzB1L2lDUTB3eVlYWjJmcmUxaEl5QzJWSmpw?=
 =?utf-8?B?NTF2UVhrWWIyYzZwYVgwZUYxemRKY3pFOUp0a1Rzd2kyYU9sMS9rK3QyeG10?=
 =?utf-8?B?VGNBMWVoTTE3ZndyWGRiMUduM2dRLzJmbG1vcHFnaGNlblhFYlN4RnFhMWt2?=
 =?utf-8?B?NldPU2c4bW14U29LUWNnVkpwUTdSRmh4V2dOQlRKcXhLZk9WeTk1YTExZlVi?=
 =?utf-8?B?cnBnVlR2bGJzWS9ETlZZclkrR1lCMmNnWWZVd1Avb1p5cEkzbmE1MFAxUlJ5?=
 =?utf-8?B?aENpNUlmemd4TS9xVGRyekNobE1mbjQxOFRINHMwbzZMR1dSN3F6OGdhZlR4?=
 =?utf-8?B?MjQyM3RqL0NVYnZ6RGVReGl0TnM3SlBMQTk4b0Iya1p5WDNnUVVHekloMUpV?=
 =?utf-8?B?SGlQR3J0emZMUVlkaVYzaDl5THZkUDhKenRJeGV1RUNuOXY5bHlyMTRDY1J5?=
 =?utf-8?B?c3RMVGdjZ0xNcFpKbmpXRjdtVC9RWmliQXBtUWc3c1Nzb2FLK3U4RFhhU04y?=
 =?utf-8?B?dkZ3UnFXYjE0bjBMUXdUaWN2Mlk3RUFINFZlb0lVcTVtWitrRXd4cnVJVzBu?=
 =?utf-8?B?NVhZT2V0b2p5RjBuQU9CQnozMmpLd0hiV2xjSnlKcm43VkhDQ1g3ZXFOdFZH?=
 =?utf-8?B?ZGc1dEZDLy9QUGhreVRrY0d1cGV4R3loc3d6NlhWS2tTajhpSFYvMmFhYnJQ?=
 =?utf-8?B?aWRvWExCZSt1Y1Q2MDFyTzRKdm5oQmlDRnI1OFExZ2JxdElXZWs2VWV1Sklh?=
 =?utf-8?B?SHhqOUtteitsVU5acWtrckRTU3BhVTYzd1pUaUpacGorZ1NidlA0TEtJMlR6?=
 =?utf-8?B?SHRDdjBGVEVGZUM1YmhpMnFtWHNVSVN5Q1B2L21JOGtpQ0lyYnNUaGprSGY1?=
 =?utf-8?B?RU9MRGF0NTFOK2NHa3MvR3VuSWhCd0Q5eXp4aWl0YjFNZllHa0NEdmticlV0?=
 =?utf-8?B?U291M0ZwTXFyb3F2bWQrdGswdGhMb0EwZjluSXRlbmVYM3A3bjVyRDBTZWxn?=
 =?utf-8?B?Qlg5MExqUCs0WTN5cUNwbDhjVDBRZWJXU1pkdG5UdExlNThXQ0loVkxvdHVz?=
 =?utf-8?B?RjE5VnJyd1E1Y2RTVXNEYnZSYXZXRFVOWkhreitRekVvVy9NQ3RXRWUrcm9U?=
 =?utf-8?B?TmN1VVZJbnQrbGtXdHJiTGlEUU1aU05pWjZCbW94ZWtUNW1acG1ZTFlJM0F2?=
 =?utf-8?B?NlZPV1NnbDFhV2lEeEUwSCs4bitZYmNWcCtFcmJyRGdJcVBoaFpNZTZZS3dS?=
 =?utf-8?B?MHJZOFB6Y1VPZitVVkJhalhXNC85QmQ3M2MxbXpJakdkMGpFdzZXNDNDS3Fh?=
 =?utf-8?Q?2Cvc9Dw7KalPBV8WmmfKNWQyKPGwXJ+/wV/v1Dmt8Ak4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20152e25-b18d-4f3b-d344-08ddfd418399
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 21:13:18.1474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6mnYGC71HcAu9SgfyZmG2AEuHv9BLCqWS9j4i051hDIPYEAQkC5c457gKeCexWGGFddn1qfoqkWx1wSY7jdmtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7788
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

Handle the DSC pixel throughput quirk, limiting the compressed link-bpp
value for Synaptics Panamera branch devices, working around a
blank/unstable output issue observed on docking stations containing
these branch devices, when using a mode with a high pixel clock and a
high compressed link-bpp value.

For now use the same mode clock limit for RGB/YUV444 and YUV422/420
output modes. This may result in limiting the link-bpp value for a
YUV422/420 output mode already at a lower than required mode clock.

v2: Apply the quirk only when DSC is enabled.
v3 (Ville):
- Move adjustment of link-bpp within the already existing is_dsc
  if branch.
- Add TODO comment to move the HW revision check as well to the
  DRM core quirk table.
v4:
- Fix incorrect fxp_q4_from_int(INT_MAX) vs. INT_MAX return value
  from dsc_throughput_quirk_max_bpp_x16().

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reported-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reported-by: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 57 +++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 99d2c31236928..ca5a87772e93a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -551,6 +551,7 @@ struct intel_connector {
 		u8 fec_capability;
 
 		u8 dsc_hblank_expansion_quirk:1;
+		u8 dsc_throughput_quirk:1;
 		u8 dsc_decompression_enabled:1;
 
 		struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9de9356302f97..8a2fc1fcb5d04 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2485,6 +2485,40 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static int
+dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
+				 const struct intel_crtc_state *crtc_state)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	if (!connector->dp.dsc_throughput_quirk)
+		return INT_MAX;
+
+	/*
+	 * Synaptics Panamera branch devices have a problem decompressing a
+	 * stream with a compressed link-bpp higher than 12, if the pixel
+	 * clock is higher than ~50 % of the maximum overall throughput
+	 * reported by the branch device. Work around this by limiting the
+	 * maximum link bpp for such pixel clocks.
+	 *
+	 * TODO: Use the throughput value specific to the actual RGB/YUV
+	 * format of the output, after determining the pixel clock limit for
+	 * YUV modes. For now use the smaller of the throughput values, which
+	 * may result in limiting the link-bpp value already at a lower than
+	 * required mode clock in case of native YUV422/420 output formats.
+	 * The RGB/YUV444 throughput value should be always either equal or
+	 * smaller than the YUV422/420 value, but let's not depend on this
+	 * assumption.
+	 */
+	if (adjusted_mode->crtc_clock <
+	    min(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
+		connector->dp.dsc_branch_caps.overall_throughput.yuv422_420) / 2)
+		return INT_MAX;
+
+	return fxp_q4_from_int(12);
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
@@ -2516,6 +2550,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	} else {
 		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
+		int throughput_max_bpp_x16;
 
 		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
 		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
@@ -2530,6 +2565,19 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 			      min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 
 		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
+
+		throughput_max_bpp_x16 = dsc_throughput_quirk_max_bpp_x16(connector, crtc_state);
+		throughput_max_bpp_x16 = clamp(throughput_max_bpp_x16,
+					       limits->link.min_bpp_x16, max_link_bpp_x16);
+		if (throughput_max_bpp_x16 < max_link_bpp_x16) {
+			max_link_bpp_x16 = throughput_max_bpp_x16;
+
+			drm_dbg_kms(display->drm,
+				    "[CRTC:%d:%s][CONNECTOR:%d:%s] Decreasing link max bpp to " FXP_Q4_FMT " due to DSC throughput quirk\n",
+				    crtc->base.base.id, crtc->base.name,
+				    connector->base.base.id, connector->base.name,
+				    FXP_Q4_ARGS(max_link_bpp_x16));
+		}
 	}
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
@@ -4237,6 +4285,7 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 	connector->dp.fec_capability = 0;
 
 	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
+	connector->dp.dsc_throughput_quirk = false;
 
 	if (dpcd_rev < DP_DPCD_REV_14)
 		return;
@@ -4257,6 +4306,14 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 		return;
 
 	init_dsc_overall_throughput_limits(connector, is_branch);
+
+	/*
+	 * TODO: Move the HW rev check as well to the DRM core quirk table if
+	 * that's required after clarifying the list of affected devices.
+	 */
+	if (drm_dp_has_quirk(desc, DP_DPCD_QUIRK_DSC_THROUGHPUT_BPP_LIMIT) &&
+	    desc->ident.hw_rev == 0x10)
+		connector->dp.dsc_throughput_quirk = true;
 }
 
 static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
-- 
2.49.1

