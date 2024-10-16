Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 780B49A0DE0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 17:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185E010E72F;
	Wed, 16 Oct 2024 15:17:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P9PbVrMQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21DA310E075;
 Wed, 16 Oct 2024 15:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729091847; x=1760627847;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=fz5YmxjNISM3JVottym+iDXTggWvdFgziIU82nNHWTI=;
 b=P9PbVrMQkw6tHQ2qyo+Nvt+QOy9VaJz+Z41g5+LMy55jMkufCTJDBvJg
 h9ANDnkiMwncXxT5ARimlpGzFfb29X17jV+U3zHsKwELsirkbPIetXCYW
 nMP+/M8aBh4ddT2MF7h0vwBFWhVhSDxYDLPw6OvGLtzCi2df8VdwElZVL
 BNsiblY6Xm2q2fnCpNgyTd12m55IbMLoNwcvq3FhX7u2LeMsilMLZO/yt
 rpsFOWIeW8sJj3lQv0lGlkAVEwwcC4yzTWRRZxAkKXTZVkjxUUItIcaC7
 8IpPJrZn7eAW7Di7bnqmuyGuGdq3a0e5ceJepWcEtnHO4jl8ewKvEhaXe A==;
X-CSE-ConnectionGUID: ZaGknBp7QR6e0qFT4Teh9g==
X-CSE-MsgGUID: /ZjJr8xjQ62EZEARBp2kmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28695220"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28695220"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 08:17:26 -0700
X-CSE-ConnectionGUID: TgYufLnxQ8W9ZoxuDGKmpA==
X-CSE-MsgGUID: LPY7I2w4RXGhPPLBXHYXKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78608100"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 08:17:26 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 08:17:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 08:17:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 08:17:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 08:17:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w+NVuDUQiRzhrN/4JXKwlTHqHIOJLUkmFYQv2FDBVBXJcYVLNjtDzWyDZIXIjXuzkfHrLleS1fAATgb8hjnb3/vpyJxGfhIS+GZWzX2DquAtyrJvynTKHpvl69q2i2fTc7tv5luZRa9xN9hqU7ppFIYPV+5XX4djmn1acUOD1oruJXo/AoJfsbv1l+DusTiQlu2sE16ZRp7Iy+wZA0vtJ4RyTRX+N/3U2EiyYEJjTUMACrpk8wnJCYvQ4ZvJLvty92SGNRomIjNC1yUKBayiQ0gfSeGrj7NrSzgBh58qTfCp/QffMzDcO/kMEKNUvSq5NSe3pOh/iotiTcSFsPwiHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kpirG6fCqFXTGp+qyJKAurIGOoAotmCNZHSDCF7FquQ=;
 b=gTqEptxeeMsbIJYIcYPW8eBeCbn48lmtxZi7tUQONIoAvFxtXrqGZPbYkfbmQrsvLMLv8XczC7+xkBmaUup52ZuYjUMqQrGZzfELu0BxLQ6mZtZ46o+V2EbgwuzVdGdOTRh3rymirzexmS57RAH/qdNSLrQspLaqBn15AHq4Ov3ksL1T9HRBPXnFFmhP2NYSFBQ5XDIa8GCG1H68AD8Do8ES4cnHHxTUucl1x9Yutcgl1Z+2Zj24ITUEbrEFY76oI5CId2t9zWDLSsfiuZXrLqcVuv5IyANyqbk/gzLs+TNkfQJBwEWQEcrSaMbvol5tlx+de2OcTxWVX6xnympXgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Wed, 16 Oct
 2024 15:17:22 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8048.020; Wed, 16 Oct 2024
 15:17:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241015231124.23982-3-matthew.s.atwood@intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
 <20241015231124.23982-3-matthew.s.atwood@intel.com>
Subject: Re: [PATCH v3 2/7] drm/i915/xe3lpd: Add cdclk changes
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Radhakrishna Sripada <radhakrishna.sripada@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 16 Oct 2024 12:17:16 -0300
Message-ID: <172909183684.4147.5683276375084691858@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0147.namprd03.prod.outlook.com
 (2603:10b6:303:8c::32) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6557:EE_
X-MS-Office365-Filtering-Correlation-Id: f18b9898-2062-459b-1bd7-08dcedf5a209
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QXdTMVNTQW5jbWw4UFRHT3FFcDd5aThjM3ZBbGNtY01jNEhJSXlXOE93aU91?=
 =?utf-8?B?clF3Z0liL01yNE81UmRIYXVPZmIzSXZQY0RwbjlWSVZoYTFTMkQ5WG9ieEFV?=
 =?utf-8?B?clZ5eXhUTStCTnEzNTYwUy84QlFYN295Y0JKQm40RXRWaXVjU2ZaQ3RoVmlq?=
 =?utf-8?B?RDRtdUNpSENqbm84WWxzMVJTczJMVW5XbWVteWZ5c29xTGpqMTllTWxxUi91?=
 =?utf-8?B?aWFBNkdWNFNwVTNwZEhtL0VuMzg5Y0tra0JPTTZvM0k4bXloVjBDWUpoV0hn?=
 =?utf-8?B?eldRQzFmSDhtNktuS1dBb0xLK2Vhd0o1bjBueGx2YTVrV09zZ1BLSjhpaGdR?=
 =?utf-8?B?MHZWSmxCTzJDblloU1MzVXo1NU0rcmdsTXlJR0tSYVg3QmZqelROZUhPakh1?=
 =?utf-8?B?Wmh0WnNNZU52WWhRdVFtZkhUUEFkTHVzOENtN0REaDVDUVNuMmhXcTAxNXY0?=
 =?utf-8?B?d0wvMEtmZGtTR3NGTisrMmVFTnJhUGJkZk1SUFpPZjJHNklGbHNuSDFxZlZ2?=
 =?utf-8?B?REM3TGZNU3pnNWdCRTZJVzViRUlHQUJQbGF1NXZwQjFoRnhEZWdwVWFRVmN1?=
 =?utf-8?B?czl0TVZEY01XbGVMUk81Y1k3TE9SMTFpY0NlNFNLbEpITXpHTkRZZzZyZW5W?=
 =?utf-8?B?RUNhVEIra2FtVlZ3K3BFbHNsSUxVUW1XVVgzempPamptNjZvblJCYVMvd2w0?=
 =?utf-8?B?SnRwUlRCTkVHaTBDaWNGSkxGM29UWjdDTTBIQm9oajdSYTFibTVsVy9jR1hO?=
 =?utf-8?B?Y0dtTVB0dTZVUWxiS3EyQ3gwVFBxakFFL3lhYUxzRkhzc3FOM01nTHdEN2h3?=
 =?utf-8?B?WUtOTzJ4aXdod1lmaGt4WE1DNUtTZzBuQlArcTg4SlIzdXN6bUhSeWZNMCtC?=
 =?utf-8?B?dDNJSkZSQ2JBVkhidERobFpLVmttWVNEUDBtMnpieWd6TUM5LzdpUmJmcU13?=
 =?utf-8?B?VFE1b1FEaDFpRElySW0zL3B0K3RPVW1KNXd1NlJiZzd2VVVLT3FVYU1rSU5I?=
 =?utf-8?B?aFpIeXlvUDRxQXNneXpkdzJSWUhJWTdWM2ZObXVvcE9NMVhMaE5vRmtkWmVz?=
 =?utf-8?B?NGMwb1V3M1lYZ29VZ0poaEVraTg3UEx1NEt6ckw2TnpPZ2xZK0Y1RmtOUHFO?=
 =?utf-8?B?WkIzWTRZUFozTDZxc0lKbnpiZmx2MkVyZC9ZMWJ4RXNDUEdsOHNydkgybVZL?=
 =?utf-8?B?dDMwVUUxMjNwL0dPTWNHZnpISXg2eGVUWEIrekpXSlo4MmFXNVVWamNYeG1W?=
 =?utf-8?B?OFMrbi96K2RjMCtRN0t2V09FbDVESUtjV2g1ZjZDUWhFRXFDc254ZFZhWFVL?=
 =?utf-8?B?SUhXQVRkUGdrK1lkQnFnb0h1eWJyNExPM0MyN1BiTXpsVWZ2MnA0THN6LzNn?=
 =?utf-8?B?RDdhRU5CaGlkeEdKeG03NFhMdFp4UTRrK3c0TXRseitsSk9OWndtSFdpL3pt?=
 =?utf-8?B?NnVjTjNUanRPQ2lEN0JtQUd3b0ZqanpGNnc4T1BHMnhoOFN4UGl0Ykdic3d3?=
 =?utf-8?B?d29yVC9MaVJsbHhlWFVzZXBLNmluOHR3UnRrbUgxTkd1ZTBXS2thVFkzcDVu?=
 =?utf-8?B?MGRnbWg3VUhJQno4aElkV0FPY09kaldNNjNxNGZWZkpWclUzRHIrUjY1Y2pz?=
 =?utf-8?B?VVlrMCtiSDZESHRaMFp5QXREd09CUk1sT1dYYTRBWEFuWngwcGlPQWFvcjVK?=
 =?utf-8?B?WEdNRWRIbE9zc0ZaMnFYZFo2TWswVTk2b3hQeFY4dGtvWWQ2cDJoSk9BPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1A4VE85Z3RrNEVuZkJzUHdDalhyZHUzdGNvbkk4QjlqZzhZVUpwdjZ1WGRr?=
 =?utf-8?B?SkpzTUIrVVZ1STM0VFU4aDhIK1dJSEY4ckZVeDhob1dHYXlKSXhRREJqV3J0?=
 =?utf-8?B?Z3NMZUp0UmRaNUJSelpoL3pJWDVYUzlJVDRzS3lnVk5kNWtxWGtrT21ZN2tM?=
 =?utf-8?B?TU5qZGRlcnBGRFhUQ0h5ZlNQckNrcEYyWGNISVg5eWVtSUxDcGYwcGY0cTZv?=
 =?utf-8?B?ZEsvbmd0UVZaVDJhbDAyVzQzU3NkZjFsalB4VlJFc2NGNFZBSkE1REd2MTE2?=
 =?utf-8?B?bkJ0QStSRnZGeWF6SkRTL0lmcms4ajQ0NUJ3MWphaFQ5UFdVZW90UUtGWC9E?=
 =?utf-8?B?dEpDSk9PV1JKVHhESngyOGRvUklUS2J3YjAzL0Y4K1dBT3czQnlsc2VxZ0JY?=
 =?utf-8?B?ajZmSytqeTdSYWZPQkZ6UzFFN1czNThKbDUwaE5FcCtrRkFHaFUrSXRRekdN?=
 =?utf-8?B?VlpzWDJpekVkVXNtYWpxTkpKSUZMRzVJdUxVd1Z0d0xiVmp4QVdFWHVkWnFY?=
 =?utf-8?B?U2dkRVNXSmtyZ2RHbDRtVUs4OWV5NmdGN2dlZlRlQW1sSmM3eHFXZVpCR0Nm?=
 =?utf-8?B?VmhjOWx4d3BwanVHSEduZnFoOHJydlJqNFR4eTFaWmFFcEtsZld2cDd5Qll1?=
 =?utf-8?B?WGRRWTUxem1kVG5VYmNYdXRQdHVvNzBLaTljUEJwclZqdEkwTEU5T014U0Ur?=
 =?utf-8?B?M3RxcWJ3SUFYRXBoNnpwOHI1VTBUeEY3Y1Zxbk5IcUFBdFR4ZHp1dUxuSmhr?=
 =?utf-8?B?eEo4aHRvYnF5a3VyVFlhZWtNUWxaQS9wMHlwemsyQk5iRHNZdDFoRGFVQnVr?=
 =?utf-8?B?VFp2UnVRcTg1cjFPYjlJbXNoVStTY2dJQjZEREpFU1JMTTdDbTZYSUU3bGk0?=
 =?utf-8?B?V3J2WGVTRkhSM0VhMlBtMkpJSUk5aC9CRTFsZEZ0V2ZXTENlUjMvR2oxdEhY?=
 =?utf-8?B?cUF1SEpnR2lvRWdGRlFzSHN6MGRKQjNqS3NOYVd5L3YveGpVWHg4Tld4YW9P?=
 =?utf-8?B?YzhwbTA1U01MRTZnRGtGSWIvNnhOZU56K3ltRFZhbERDWWNpWk9uc29wVXoy?=
 =?utf-8?B?OFE4SWRzRzRJZDhzS093YlJEaHMxVVFIdzZUek85M1FWbTBucERPbzFPUUlW?=
 =?utf-8?B?bDIxT1FiMFRSeEpJd09sU1ptUE9idGJCMVc4RXNUZ0k0bmNnZjFyNUsyNzhG?=
 =?utf-8?B?cVJpS1hKUjBqRG1yRW5hZW1zbUdaS0tJUjJMZUlQVmo3bzNub0o4aEJ3WU5V?=
 =?utf-8?B?UE1COWRoU21xOTY2V1hvSU00M29YQVBMTDFqWFFjdFh3TXlZZ2tpZXd2OTdx?=
 =?utf-8?B?NHQ0Yy9STlZxZ0hMOWZLTU9acDV5UUozTUh2Nk8zYTZTTndZbVd6Q3A1ZzBW?=
 =?utf-8?B?eFBtNWdBSnFJa0Y5QllCL2hsWDIrT0dXMnBSaE5ZU3pKKzNOditzVTNaUzVa?=
 =?utf-8?B?WEpHczJvNDYydUNPbXgvLzQrc09RUmE0ZkVHT3ZOOWllZTNhdmduc1ZwZXJh?=
 =?utf-8?B?UU1PUENTbXVVZXcrQ1NJZTlSWlZpUmRjblViNnhINWFHN1E2czdzOXErTlZK?=
 =?utf-8?B?cFE5ZWZWV3pHeEptLzFGL2ZyNEZETXRhQkpLWjIzc21ieCsxS2pCdk5QMFJj?=
 =?utf-8?B?UzVvL3NJaVVaNW5hcEVlc2NrNHU4QXU3RFd2QWh6WFZPNEtrYVZjMGxJckIr?=
 =?utf-8?B?NzFUSExzUWR1K1dlWkNEM0t2Vk1XN2NqQ0czaGU0WkFVQVhXVzNHem5zYSt1?=
 =?utf-8?B?UC9heXowTCtrbmFzUGJpTDNGREtlbys2M1Njckxpc0FrN1pjS29vYVl3VGFJ?=
 =?utf-8?B?YStOS0dNVm5nSHRhbm83OFNrOHczb3VNcFFTamdDUU5jZlp1cXZibUFkUlNG?=
 =?utf-8?B?Sk1BWWpRZUVibmNBMmNqQlltdDNhdEV2bFVUUUpicmkxRnozWjNKR2xyNFU3?=
 =?utf-8?B?U3dVcCs3WVFyR0ZWWVVtcG5lRXB1eDlvQzVZbHlvdE5sNG1iMXRYdzJXQzlz?=
 =?utf-8?B?TjNNTDNTdUpyV1R1VFFkVUJMNDNwd2dJc3dBY2M4OThXZjNIaC91ZjBTSGxo?=
 =?utf-8?B?UjY0NFFoQk9LWkJLOXJSbmVEMGNzMzgzSHY3SWpkTk5xNXhBVDVkdE5ac1NF?=
 =?utf-8?B?dDVFTlA1bVA3RGx4SzBUcXE3TktZV0xtSEhrWG5uakdyOWV2dzZGOTN6RWh6?=
 =?utf-8?B?SHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f18b9898-2062-459b-1bd7-08dcedf5a209
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2024 15:17:22.4286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s8Q89EzLVjMrYbXZ4guDWepTAbg0SjMi7+6xy8Cq2fwws6YhyTBEoe4A9DE/h7bis21+q+JmJ21ggXfYv2YVXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6557
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

Quoting Matt Atwood (2024-10-15 20:11:19-03:00)
>From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>
>Xe3_LPD has new max cdclk of 691200 which requires reusing the lnl table
>and modify/add higher frequencies. Updating the max cdclk supported by
>the platform and voltage_level determination is also updated.
>
>There are minor changes in cdclk programming sequence compared to lnl,
>where programming cd2x divider needs to be skipped. This is already handle=
d
>by the calculations in existing code.
>
>v2: update tables
>v3: xe3lpd doesnt supply the power control unit the voltage index
>
>Bspec: 68861, 68863, 68864
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 59 +++++++++++++++++++++-
> 1 file changed, 57 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index fa1c2012b10c..96523526a2c3 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -1468,6 +1468,39 @@ static const struct intel_cdclk_vals xe2hpd_cdclk_t=
able[] =3D {
>         {}
> };
>=20
>+static const struct intel_cdclk_vals xe3lpd_cdclk_table[] =3D {
>+        { .refclk =3D 38400, .cdclk =3D 153600, .ratio =3D 16, .waveform =
=3D 0xaaaa },
>+        { .refclk =3D 38400, .cdclk =3D 172800, .ratio =3D 16, .waveform =
=3D 0xad5a },
>+        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 16, .waveform =
=3D 0xb6b6 },
>+        { .refclk =3D 38400, .cdclk =3D 211200, .ratio =3D 16, .waveform =
=3D 0xdbb6 },
>+        { .refclk =3D 38400, .cdclk =3D 230400, .ratio =3D 16, .waveform =
=3D 0xeeee },
>+        { .refclk =3D 38400, .cdclk =3D 249600, .ratio =3D 16, .waveform =
=3D 0xf7de },
>+        { .refclk =3D 38400, .cdclk =3D 268800, .ratio =3D 16, .waveform =
=3D 0xfefe },
>+        { .refclk =3D 38400, .cdclk =3D 288000, .ratio =3D 16, .waveform =
=3D 0xfffe },
>+        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 326400, .ratio =3D 17, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 345600, .ratio =3D 18, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 364800, .ratio =3D 19, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 384000, .ratio =3D 20, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 403200, .ratio =3D 21, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 422400, .ratio =3D 22, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 441600, .ratio =3D 23, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 460800, .ratio =3D 24, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 480000, .ratio =3D 25, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 499200, .ratio =3D 26, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 518400, .ratio =3D 27, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 537600, .ratio =3D 28, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 576000, .ratio =3D 30, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 595200, .ratio =3D 31, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 614400, .ratio =3D 32, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 633600, .ratio =3D 33, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 672000, .ratio =3D 35, .waveform =
=3D 0xffff },
>+        { .refclk =3D 38400, .cdclk =3D 691200, .ratio =3D 36, .waveform =
=3D 0xffff },
>+        {}
>+};
>+
> static const int cdclk_squash_len =3D 16;
>=20
> static int cdclk_squash_divider(u16 waveform)
>@@ -1594,6 +1627,16 @@ static u8 rplu_calc_voltage_level(int cdclk)
>                                   rplu_voltage_level_max_cdclk);
> }
>=20
>+static u8 xe3lpd_calc_voltage_level(int cdclk)
>+{
>+        /*
>+         * Starting with xe3lpd power controller does not need the voltag=
e
>+         * index when doing the modeset update. This function is best lef=
t
>+         * defined but returning 0 to the mask.
>+         */
>+        return 0;
>+}
>+
> static void icl_readout_refclk(struct intel_display *display,
>                                struct intel_cdclk_config *cdclk_config)
> {
>@@ -3437,7 +3480,9 @@ void intel_update_max_cdclk(struct intel_display *di=
splay)
> {
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>-        if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
>+        if (DISPLAY_VER(display) >=3D 30) {
>+                display->cdclk.max_cdclk_freq =3D 691200;
>+        } else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
>                 if (display->cdclk.hw.ref =3D=3D 24000)
>                         display->cdclk.max_cdclk_freq =3D 552000;
>                 else
>@@ -3650,6 +3695,13 @@ void intel_cdclk_debugfs_register(struct intel_disp=
lay *display)
>                             display, &i915_cdclk_info_fops);
> }
>=20
>+static const struct intel_cdclk_funcs xe3lpd_cdclk_funcs =3D {
>+        .get_cdclk =3D bxt_get_cdclk,
>+        .set_cdclk =3D bxt_set_cdclk,
>+        .modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
>+        .calc_voltage_level =3D xe3lpd_calc_voltage_level,
>+};
>+
> static const struct intel_cdclk_funcs rplu_cdclk_funcs =3D {
>         .get_cdclk =3D bxt_get_cdclk,
>         .set_cdclk =3D bxt_set_cdclk,
>@@ -3794,7 +3846,10 @@ void intel_init_cdclk_hooks(struct intel_display *d=
isplay)
> {
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>-        if (DISPLAY_VER(display) >=3D 20) {
>+        if (DISPLAY_VER(display) >=3D 30) {
>+                display->funcs.cdclk =3D &xe3lpd_cdclk_funcs;
>+                display->cdclk.table =3D xe3lpd_cdclk_table;
>+        } else if (DISPLAY_VER(display) >=3D 20) {
>                 display->funcs.cdclk =3D &rplu_cdclk_funcs;
>                 display->cdclk.table =3D xe2lpd_cdclk_table;
>         } else if (DISPLAY_VER_FULL(display) >=3D IP_VER(14, 1)) {
>--=20
>2.45.0
>
