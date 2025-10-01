Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EA3BAF3F3
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 08:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DA7110E331;
	Wed,  1 Oct 2025 06:37:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gx6vHNwv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9F4D10E0F4;
 Wed,  1 Oct 2025 06:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759300670; x=1790836670;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RjfUFE0f3DlPIhwKEe3cAWXm7prrRjkLpEl5PICQRUA=;
 b=Gx6vHNwvu+OgD0ildYXK63V5FkO/DmdIuvlcF8GdXIlbRe2yAPN85GRg
 c0kt5//u5SPcjdhv1Is9/NkCubemfcgKDFdmi0rtnIbBveGjmNNL1OGv4
 KjwyVF7gonbYfUApGNJd8Ou69qUsfhtl4NstYMp/B/rG6wvtSYEq6tI+Y
 E7xVtBJ9ba3o3YdC+8Ze/GeOSALIK3c1OMnxYPU7W7wB0h60Y7rZaC601
 dB98H9woTQdJnuUhTukAINg3YABpd35uyZ4lqqFPJB3BcmlavjYMf0uBs
 FPiYIuS5ZyVkXaW+OW7cr3wOI9guTHvXE66btig2ItNPD664LVfTZ5Ew9 g==;
X-CSE-ConnectionGUID: ijkb5b/kQ02BHavNIjnW9g==
X-CSE-MsgGUID: XxuBxPsPTJmPF7AVv+Hltw==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="64185157"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="64185157"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 23:37:50 -0700
X-CSE-ConnectionGUID: MhYet9MWS9aI7uFy6UtYnQ==
X-CSE-MsgGUID: y8wzd105Q0KZNtyr9Zkkcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="183973045"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 23:37:49 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 23:37:49 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 30 Sep 2025 23:37:49 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 23:37:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h1UoiafMqIXx9+swnLLbfEIP9sgc8ZP8/X/gm8Bv6i4iNdzju+jGL9Wqf2e226gv/ZMn/+oJqy+wZkJjcw4K5bj/xVundXmtvBFoI3x+ONsiK5NGeKFUDSJ4jwkn+D32ya+nQXnX1sRh9qH1D9Bat9Dk1JQXjLTgLQL6g8rvndy0/AwI6U4GN8n43djHDthcC/Kf93m+ZaZ0xO/HBn8KpJ7y4t+Yq/L/pvtpsTR6t01isk1IPGbprymarCxHsj6tGcmKuPgNaLCqKYtdzKCt5HxJixm77aGJLY6IyGf6sDXDDOZKfeN5y9oxRRWQjfS1H8LgPQjOUY4s6LDZFtANlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OT8RVsPx/TPiEAk+U+7ATafRdBT6ExndNBnZFO9YoLg=;
 b=GG/S76s2SyzKF5SN2kqYm1KL/GSYJbg9g3yggH9+MD+tUYOgeyMCVnUKt9oIES1WHJeB3Gh8xuubgZHttIySt1W39ILgLRs2Q5f17pqpkGrvI0AM6MfmZLfgSHvbwVFzWO3IxQ9JQe9370UBHgtR85DC2kOzacDg3FVl/3a7sWTee6U3eK2uokc1M2JxpaJQQmbqX4UMcLbvknxJnMvI93TKz18Qr+RJF7EiirD0TVctIg90kAQ2yhAnhKe16XoobmgOH6LPgnfpOnFFU4FSh+nFpUk4r3eG0gZpFF2SP4WV9KARNYVSKT4q0x9HPVS5P0wnKjib4G4eG/VWLcCv0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS0PR11MB6326.namprd11.prod.outlook.com (2603:10b6:8:ce::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 06:37:40 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 06:37:40 +0000
Date: Wed, 1 Oct 2025 06:37:30 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t 2/3] tests/gem_eio: Adjust for slow resume after
 reset on Gen12+
Message-ID: <ovis3khnb5k4ur7wedgcfggfwbdbylbixeuzciav5twpos6bln@frarm5qvnpls>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
 <20250930125430.2323555-7-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250930125430.2323555-7-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA0P291CA0022.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::22) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS0PR11MB6326:EE_
X-MS-Office365-Filtering-Correlation-Id: 016668f1-d894-4a7f-acc3-08de00b50509
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VHpkYTJwYXMrUWpBYWZKakl4djI0eEZsNzh2QkljWnIzTWZDUlovdllVL21I?=
 =?utf-8?B?dkx3VVR6ekI4bUwvL2JkL2dRb2ZuZmROaVRtOTN5TXFaMklRK2JTM0hJc2VV?=
 =?utf-8?B?UGVpYTRNd0JDRkFYNGsrYVZ4dXhrRzFYRjZueVM3bktZSUdBMHlwK3FkdFBn?=
 =?utf-8?B?M2h1TzkrOTY4QmdVYkpQYU9MaWM2ZzZHUEdKYndPR3hwbFdTNHg5U0lsZlNa?=
 =?utf-8?B?d29IbnRvclN2K28wS1JMRlJrTnNOaGs0TE00VmRHVFZ0cGpsMTh1WUYrekla?=
 =?utf-8?B?TW9qeU5UdTFTSi9kb0FUcGcyRWY3Qk51RlRUalpwZ2hGRGp6bndIclVNcnJs?=
 =?utf-8?B?aE9IVXBHVVlsbWpZaDRVRCtacTEyZ2E5Nm5rTDB6ZWZoQXhRYlE2VGwxOG1V?=
 =?utf-8?B?TTFBOHBxc0xPcG1VNzBweTYzcTI3NTF6VEJucWtVUlhFdFFNQTBPd0dPWDFw?=
 =?utf-8?B?QjhOeTZPbEF3dWNnalNseXZub2JzMW9ZYnZhWXVXdHJQNUZuWWZKcnNOS2sx?=
 =?utf-8?B?UG4zWGd6RStGaW82bEdRbGF1N1JIY1lvTStaKzJCelVNMm9UUUFJOUw2eUlx?=
 =?utf-8?B?dlp0dk9jZlQwY3ovU3BJWHZlaG5XS0ZFYWROdHh6RU9tMGNlcWM1U0RlUHBv?=
 =?utf-8?B?TnN5OHVmc1BiWlZjazdpMTlXL2R6aU1UMU40ckxCTGUyTXRkMCtJM0ZLRWRw?=
 =?utf-8?B?UU9ITFNCNllOT0JOdGhacGI4eHdBOVNSWWg5WnlLemYrenNxTmxNbUN4bVVM?=
 =?utf-8?B?Y2FsN0FkVmo1WlZISy91L2ZJejV3OEpEMURXMkpoYnBQNWJmRHEySVh6bkR2?=
 =?utf-8?B?ck1tejZLSTJsQ1FsS3hRQThVd0ZmQVhOTTJyaHJseEtOekZsaXg5ejJlSEFO?=
 =?utf-8?B?YWxDRjgySjVPa0JKdVpNZ1daNE9OSldxaUpCTTNYMjFKN3YzMTZyNlk1UjFC?=
 =?utf-8?B?ZWpNUnM5d2syL3BFNCs1ZTFjSnhzcjk0TkRiRlk2V1FNT042dWdkN05zeTZF?=
 =?utf-8?B?WHVhT3dtME5LU0c3QWh3cThULzdVK3NFRklJNTY0Q3doaWwzQ290VFlOWkRk?=
 =?utf-8?B?akt2dnNJMXFEQnpNeTNmNGFrR3hZVUFTU1ZTK2RFRW9OM21yajUweGRYdm9G?=
 =?utf-8?B?R2J4K0dsbVEyYkRsZmhQWjZOQ2ZMaGhZbWNKdkd2WWRRNWRSWS9LOC92YWdG?=
 =?utf-8?B?UUZqU2JmNDZoUS9KaktZTlZIZ0dnbDRMQlc3R3FjQ0pickV2YmtYWUt4MmJF?=
 =?utf-8?B?YWY1cFJZdnY4ZWFsanlldlEwSmF5eG1uSVdDbTY1c1gvOVF5OERZTDdxWVYr?=
 =?utf-8?B?eXpaM3o5djZFMndYK2VPOHJ3cTMxcThhMEROSWRXUU9xVWJlM29FMkFGRU9R?=
 =?utf-8?B?TmlxVTR1Nit2aDZEVGpET29MVWJJMWNQZHFqTU9nN29OU2lxUzVWRFZaSEhi?=
 =?utf-8?B?RFlIR3hZalRnYWVLb2hab2M2WGMzRWNHaUNvMEdYS1pLQUQ0N1BpZUxQOEln?=
 =?utf-8?B?OWc4ZkZaYjJCMmQ4c0trUzlJK3RFR3l4ZHRWNkVuUjg4bTJyUDJtNHlCZ1Fw?=
 =?utf-8?B?aGhCaVlJdktuRWl5d0JseFAwM293YWJvRFcwdXMzcVJNVUdXY3hYQ095VVJQ?=
 =?utf-8?B?VDdOaDJ5UXRTT0xoWEhXZ3hKbk1RYnlZWXdwTUFveEUrMmlpYXpXRmtCN0Fs?=
 =?utf-8?B?WGh2TnhxTksrY3N0V1dBOEtmdk1zNzdSKzZLYzhLcE0vbG9iWDZvaklRYjdp?=
 =?utf-8?B?cUV2VGRTWGxmV2lmR2F5V2l3STVmRlpWcWN5OEpBOWdNeWpSN3VRWEhpTkt0?=
 =?utf-8?B?K3VmaklSOWZyMDA0RS9LdDBjcFJqaUNDM3VPVzQ3aWcvOHphUkdMUmpIM09T?=
 =?utf-8?B?TEhlSDNDREt4UlZpc01GdkNkeFl4S1dUTVNzQUhTMUIxZU1TQUV1YUFaT05W?=
 =?utf-8?Q?93bkk/bHXVc4jqVxLSdA+Jkbr3qSfxq2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGtnQXMwVnlnZWRScFNoOS9hNGNTNkpReENtRHZlTnhpYy9ESjVvRXU5WW01?=
 =?utf-8?B?Z1QvWXJOc2kzamRBL1hMWmJvb2h6RWVtdm0vSG80elRab0FnVERHamJIdGMx?=
 =?utf-8?B?SGxQSXFCWVJaRzJwcFFqQ3RMVUc0YlhTNUZiZkhZakhRNW5JS3FFdUxEQkNU?=
 =?utf-8?B?NjZiZkxGQkNtWVYrSHNjSGQvWVVUT1dZbmkwSXdHRFJyVGN0VW5FWkJhanJN?=
 =?utf-8?B?WEZNN2VwQ2NxZU40SWl3YVdxWTkxb1RidDM2dEpraWpkVVBsOTN5b0dXdXdo?=
 =?utf-8?B?RFFYZit4bGovUW9URVYvaFMzNVN1ZW9nMEdVaTQxbWJVbHBZZ1Rab2R3b0o5?=
 =?utf-8?B?WG9NNWw1OFNvdGl0OXFBbmFZVGV4NWdQaUtPTXRmMEhwaUpPWmJ6TkVMcW9T?=
 =?utf-8?B?Tm1nUjJueGx5Nk5kY2YrMDlPY2cvc0RpakorVWlnLzFoakhScUEvb3U0dC9l?=
 =?utf-8?B?NGs0U0pBdmdwZVpxajdaZUFjVnFIRVZrNVQ2emY1TG0wOXAwQW9HbDFQRkJX?=
 =?utf-8?B?QkErdGRtNjBUUzhOVy9kb3dFTHdHdzNNWUhJc2gzQ0JrUXlMVFpXamgyS2tW?=
 =?utf-8?B?WWM5bTVXMUljMDd0bDRTMmxHbWFPRExLWHpvWDBidU9iUHd1dWVLblRnV28z?=
 =?utf-8?B?bFRlSU05eGptcFVqbXFFOEl5d3VrZHo1M1phaEJDUFNzNTgwNzlOa1RCUW9s?=
 =?utf-8?B?VWw4RE5hYUVPREorV3dXcHFRa01vTzAwa0dWRUZ6TGhZbmdIQVBWVUMrcUo5?=
 =?utf-8?B?aWRPaWJIL0pFaUpXR2NjdjdsS1lPV3BsZEJuYW5CQytvQlFDRzJqOUpWVThQ?=
 =?utf-8?B?MDdsQ2xhbkNjR201Q3FkSmlBQWFST2FBMlRlQ3dTM05FcXFuMTNScjRvRExr?=
 =?utf-8?B?MW9mSXBweGxBQ0crMVh2dkppcmlvTkx2alJFUTZOK3cvamFnTWI1K1dlUVd5?=
 =?utf-8?B?KzJ2Mkk5Ym5TOWpXU0JaSk13Y0Z4RllTa1pFRnY3ZVcwUUJBbXhmVEtZd2dz?=
 =?utf-8?B?dGIwYUY3dCtJL1ptZHBseVVFM0xqc21ENGFUZEFtNElHa1ZjNWhqcDgvZDJK?=
 =?utf-8?B?bU4xeklwQXQvODhXSXFxOHpKdnllcStZSnlSbnhGeC9FWWlZMnl2RjJpbjFH?=
 =?utf-8?B?cWY0ekNiZ3pFK28xdWVpMDNCRmhyMHNxdzdyNmdib0tUeGRHZm1sbDBFODlB?=
 =?utf-8?B?T2pPZVZyTnM5Tkc0WEM1V1pmaVRVWk85VEFWdU1NMmFhTGJaMUI1YnZ3UEdR?=
 =?utf-8?B?K0FSai9HRXR2dVJWUHVEay9PS1JHWFZrazVGMWIzZnkyMFpEQjl1Rk1QR1Ux?=
 =?utf-8?B?cC93UXJZbGhUZG52cTBTeE1NZWd0eXYzN25kQXphSjNmU0xJSU5mN0haSEF6?=
 =?utf-8?B?bzAweEdacWhMUTFIbEV2ZkRlSFloeUdrTGhNcXRwRFZpUFZpZE1GbHlURWtZ?=
 =?utf-8?B?a1lLTkNPSi9SMjdMUlBOZ2FIRk5QYlhFK3hnNFVvOTFtV0xsTERMZWRrTWlr?=
 =?utf-8?B?b2hsdC9na2VtWTVhcHAxT2dxTW9qbnZjOU50dWlRQWU3K1FOWVhOL0NrNVBr?=
 =?utf-8?B?b0ZnUjcyWXJaYTFGMUNwZXlUcmJodmdGMXo5eWhlVkkza3RDS0ptY2Yxb1A5?=
 =?utf-8?B?dGkwMnVWaGdVNWlHUWd1Vk41MGloQ0tFTEU0MDlMWHd5VnZUbkRMYm5Bdkov?=
 =?utf-8?B?WTFXbGtBcGdjYmMrZjJjOVh2empwLzBQMHBTS3dCdXJqWitvVlVLL1N6NVhW?=
 =?utf-8?B?Q3VRRmpEWGQ5aUV4aDNnbUx3RDBtVHNzNkNQY1FBajk4WjdZc3FCQVVEaUNE?=
 =?utf-8?B?RFEwNk1COW92OWViRDRxSVNOanF0UG9VS0VOaXNsby9DU3JvMVJqT0xqUkR3?=
 =?utf-8?B?NjBZYk5TM04yZUZtUFo0YUZaY29pcXF4R2lITmN0c3dHYmNLc1ZrRS9hZjFR?=
 =?utf-8?B?NUZuNGx2Tk9JZ1RkMGovRisyUVpDTTljN3YxZTJSOE5qdjJDMnFGSzhSOGt1?=
 =?utf-8?B?cXJTeGo5VUNhcDVkeFhwcjBzREtyeVFHMVQ3RG55RHI0Zk1rQVZKSmQvTWlj?=
 =?utf-8?B?cmxLTXp0NE1UNzM2QnIxYzQyeVhmRUl2bDUwSzZ5QW9sZFNkWDg0VHhRM2Vj?=
 =?utf-8?B?SndXNk16NjNjUFVVT1BvQ25LWlF3SFkzRlJERzdkaVdGY0FudVRUTHBtVzRT?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 016668f1-d894-4a7f-acc3-08de00b50509
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 06:37:40.7984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: URg0wI3NX2tH4tcATt8JJZXnigyVYwDJS8Ch9PuwMD/2BTeOPIzEaSAx01Fq5H5od00i8fUIG7GSrK4/Up8GDtOv0lg9Zyi6J87wbdl8Iik=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6326
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

> Upstream CI results from kms, reset-stress and unwedge-stress subtests of
> igt@gem_eio show GPU resume after reset noticeably slower when running on
> some Gen12+ platforms.  Since we think that's hardware specific and there
> is nothing we can do about that at the i915 driver level, relax the test
> expectations for Gen12+, similar to Gen5-.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index b6155c7fc4..5b0925a8c6 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -419,7 +419,7 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
>  	 * modeset back on) around resets, so may take a lot longer.
>  	 */
>  	limit = 250e6;
> -	if (intel_gen(intel_get_drm_devid(fd)) < 5)
> +	if (intel_gen(intel_get_drm_devid(fd)) < 5 || intel_gen(intel_get_drm_devid(fd)) > 11)
>  		limit += 300e6; /* guestimate for 2x worstcase modeset */
>  
>  	med = igt_stats_get_median(st);
> -- 
> 2.51.0
> 

LGTM:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
-- 
Best Regards,
Krzysztof
