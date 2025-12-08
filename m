Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A748CAC4CE
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 08:19:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED87A10E39F;
	Mon,  8 Dec 2025 07:19:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="is+D5b9x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6B3910E39F;
 Mon,  8 Dec 2025 07:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765178357; x=1796714357;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=lcvzvpOAJcGf4iHXormE7yMMaHvtdEnyBWs9ksVZHuQ=;
 b=is+D5b9x70qN53db62oOzqgPEj+WQaePwlOzarB5Fg2DlOMJYsPZVJ7z
 wEdvg+fTwcvYM7XJWNTzPmucU86O2qflwW23tovWWmnrj0iM9QsB6zyZZ
 kQBEMOtEkinETnOUnPtiwvMWk+2kD6Do1hAibkiYoIHRaOm9zLtHYpAhG
 tZJpIBkxSeU+pBDwND2jIP2Hv/fT/JIx1RsRTuVKGfnCglthxx54LZFYO
 fZGMbq4C31Skmtg2cmWFCswnltQ+F5TVxdSp3iRI6SajBm6APWMPVlOh+
 EVThr9mGfbWjsigzNKwJHOzB/2Or0kM43gITKcl6/C6+wQRBsvnW7ijKI w==;
X-CSE-ConnectionGUID: POdJDTy6QR6pUwYLlgcosw==
X-CSE-MsgGUID: q9FMUd4CTn6yAYFKn2//Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="78230516"
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="78230516"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2025 23:19:16 -0800
X-CSE-ConnectionGUID: 2BRoOu+xRgqIhcD3YpONFw==
X-CSE-MsgGUID: JuJ70l9sS2ikLpS/3Uco1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="200307920"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2025 23:19:16 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 7 Dec 2025 23:19:14 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 7 Dec 2025 23:19:14 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.47) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 7 Dec 2025 23:19:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=leaKYfZZm40cMNniI3pSCkuTOKKRWb6O6HvtPtdAqwk5C9ER1wPBP24aoi3pweHBbNo0gEWT0Xhq3pf5V/1X/pXF4YCz7lA29z77ZsxowjVlmAxfDr0iSoDLduQxEg+A6aB6Lj3E5eYIeXc7/wYHpdUIMxRgZ96lAmDtFpdu2fJDHsOlNkOAfGLMJiD0TjGDYpvjXhfzjZQ4z+ABxxVs03Hqjo9IFDIlTF56RJQTJSEJcUDXT//f2BsX9XJqTVV2gZzfdCbzttVPBtJOqYhOQVksEYb2N9c5FnUc0vhqsZlUbvKQt85C5SApj/5r+drp/Jq4GYAz7ARFuylZKemAvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TMxQaaLUFci0+u8rQHtx5DdGBzbA60y1k4/LjDmznug=;
 b=AQENpzYLUoegt1S1SJhl+eNdJgzhilCBUeO83kfhFonxIM+J6CEslaqBqjpG+ts/Myc2btS4K8M6u7hOqt2DnN9NTb2dCdyLz5ht3jn+ovaeLO+SiO2M7JdQn8VFcWgCx0r0y8BDcqTBxwHyTrdTHUo3cMpnT8eMqK09+sNSpnmOd8FuCN7zUAzQBpz9+SDtNd4mIeQkJ0ODEBqi4oRPdJFSFuhK1pKegK1LS+ZCiKtI+0OcUML+5JtcmzTHNUx/8Pcno87u+nzaZWdQThkOIHEQ5VsIESmqnHZdb+l4eYHvyFED435IR8ir9IO7xIsKlk7LxPnn+IwHb9PcHLCDTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB8569.namprd11.prod.outlook.com (2603:10b6:510:304::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Mon, 8 Dec
 2025 07:19:07 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9388.013; Mon, 8 Dec 2025
 07:19:07 +0000
Date: Mon, 8 Dec 2025 07:18:57 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <I915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?Q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm=2Fi91?=
 =?utf-8?Q?5=2Fselftests=3A_Kee?= =?utf-8?Q?p?= mock file open during
 unfaultable migrate with fill (rev7)
Message-ID: <puejpb6qf3e4a5e6zf4kbgvpwoikhaxqdb3ejxsx7nrgoavkaw@bmnszquxbsl2>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <osapjeuydjklsnzluarewwhb4h3thsjvipxlynd2465wk26prw@huo4rflrfrql>
 <176496142660.62145.244651140463917195@a3b018990fe9>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <176496142660.62145.244651140463917195@a3b018990fe9>
X-ClientProxiedBy: TLZP290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::11) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB8569:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d3822ec-461b-4648-71b7-08de362a1354
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T01yc3M5TjI4SGVOdTA5b09QRzZUTnVpYzdJN2Z4WnV2MG9LM1FuUkl3Rmo5?=
 =?utf-8?B?VmJZZ2szejFWdnNFSHNKK0VpbGxvYi9IaFVHWkdpZzkxeWFUYWg2Y3BYRjlj?=
 =?utf-8?B?aGlzZjVrak9wdWhRbXVzRVZuTmo3U0VWWngzdEo3cUp5WnRlVjhhTVhkMTNT?=
 =?utf-8?B?QmcySllmL1FxTTloeHhJWU9PNkh4eXFjSHEyTjRXZzFXUzBsZnhNVVlhVlhk?=
 =?utf-8?B?UG41d1hIQnBESzREMGJmc2Z6eFdpTDYwMUM1czdyMzA4NW4xRkRhZDF3VU84?=
 =?utf-8?B?N05UcnNQMFRLNmdYY05UQmxQR1BZaERwd0didXE1TWFVS0Q3UjJCNjU3Y3VV?=
 =?utf-8?B?Z01aYWo3TWRKZ0FRdUNOM3NqOXBkYkZocGF4TGZ6dmxrTXdDaXRjY0tYNXgv?=
 =?utf-8?B?WHlwdEJQRWNnKzhWUHNVWEJGSzZ0SEx5SzZhNjhsUzRmZTZoeGUzSUs3eWd2?=
 =?utf-8?B?My9ZRDEyZ3lsZGgxYnhWcU12OEwvNmJObVFsaXJPK0JiVHp3bjMrajgvZlQx?=
 =?utf-8?B?YlUrMVdMbklWaU1pWXlWYnRUcUZ1aFU3Ymp0TnZuRW9CbzVxU3pXbEVUWUQr?=
 =?utf-8?B?K0JKdTZVdXpoSlZJNTlPUmhsdHNlbjA5NU9xWVc0cEZYTXNVRnNkQVU5M1kz?=
 =?utf-8?B?ZDBLZW44QVI4STIxYURYcnBHT1pTL2hOTkpEczVGMFJUSDhjTTNENmp0aFl5?=
 =?utf-8?B?NjBJNnlXUWd6bmN3Tng1Z1dkMm9xVHJtbFpsM3FaOW5BM0lYOC9FbHNhNFZ5?=
 =?utf-8?B?cS9uUWJvS0hYZXBHbkxRcTZJcUt5dkxaVlNWQnZKYldKNFg0bmd2M2Q5dWlm?=
 =?utf-8?B?T1VVRFFsOTJhQWN3N3ExSlFVNnhBUnNGL3lYOW0zbVdSTDNqdWtGZUppU004?=
 =?utf-8?B?NzZYeWdmditoUEg0czV1WGcwd25vUGFkbTUxT3JsSEVjYkIzU0czVmZzT2pQ?=
 =?utf-8?B?VUtVTkZNOGIxcXpKUWVyd05MWC8xOFhZQVZBNTdWZWJ1cFZkNExxSFR2OHFJ?=
 =?utf-8?B?Mk5NVHFmbmE1MU1OZDduNmZjelIwa0tscHZuM1gyRDNDeVBmRHN2ZVlRbVVr?=
 =?utf-8?B?bCs0WDU3bDhVeGhRYzlaM1FWWTNuMVgvVTYwMnluaFRudytVc1NnQzYzdEk1?=
 =?utf-8?B?MFcvUmExc1c4eU9BbGdmeHZ6NEFJaFZwTmRiczVseEo3WWxSL0hTWGRkdTU5?=
 =?utf-8?B?Rm1xMG82RUVYWTdiK3FrYXloT1FqRHNReTRrdlAyMm5pN2ovTVlEekpyenVS?=
 =?utf-8?B?eGdkc1JNenZQTC83UEtpMmRqeFhyUzBmZjFnZytoSkI5a05RS2JzYXpGNjhS?=
 =?utf-8?B?N010Wk9qdlFoWEZYSXFkNjlQQmNHZ3FYV2VqaFFINFBRYkpNWmhYbG5MOU95?=
 =?utf-8?B?NDNoZmYxVDZNMDJTNmR0TVgxU3B4VjJyY2cyYWlvNnZFOFMwNlpoU1FNUWUw?=
 =?utf-8?B?dE4vL3VzNmNzV3FFSXZ5RklSS0dUWmZqTDZRd2dCMllBb3pLVUtIRHI4bTFp?=
 =?utf-8?B?REJYaW9oZ2RXS01CRm1Ob1NaNmRkL2R0Z2ljZHpxalRLQUc2a1d4UDZ3NTR1?=
 =?utf-8?B?aWZ3WXlxT2tWQWE3UXlnZnhkdjFXbytBM3hyYWtzaXhHMUNmNXNKelRHNXV4?=
 =?utf-8?B?Z09sUlZ1OTJXcnZJOGcxR20vWURSRXdoN0ROMXd5ZnhLR2VjWHNKdWhNbEpC?=
 =?utf-8?B?Mjd0a2kzMDZZWVhkazBtRUpldmZZR245a3ZheWMyVTEzVkloOHUwNVZwa1FG?=
 =?utf-8?B?LzlURmlmR0NkdmZpcE95cUgzWHdwVEVTZVd0VHRZMDltVVRQWmdJVFFacVJL?=
 =?utf-8?B?T1pzS3lGQ0JvVURuNnFJdjIrSE51WHF5Snh5ME1FYTlOTmRlZnFvcTFISksy?=
 =?utf-8?B?V2xBU2xXNC9rMTFkb0Z5VXZGQUlmbUF4OU01NHVHaEhMb0E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anU4MndOTzA2dXkvVVVTZkoxUXF1N0I1SWRIeHc0Z01sMzMrelVPc0tUVS9X?=
 =?utf-8?B?WTBGNmg2ZUhxVjAxdE16M2tFSm1qTXFKckg1Ry9CVVF4ejlGUXRtRFh4RFd6?=
 =?utf-8?B?Snd1TVVwUU5uaDVEc3pncXZjUlRNTmxKWFVWVE9mazBScEthYkdxTmVFckpr?=
 =?utf-8?B?ZllzT0dENUErUkZ6UndWYlFRRG14SFFEVFB6dTlIdjFxODYyeWhCdVVUSkdQ?=
 =?utf-8?B?Z1IvVVZtR0hTWGpaeGN4eDdNS05SajRnWEppckN1OFYxZUEydmczMEI1V0Jk?=
 =?utf-8?B?c1p0N1p6UjZWNktOejNlNWcxSHgrZm1SR0ZxdFpQTC9GMzhYZWdZWTRVcjdi?=
 =?utf-8?B?V1JuN1BwRUxFVlExVGlObCtzcjhQNVNSUDVtaTJPUkRoTitFSDVzaHlWNmxE?=
 =?utf-8?B?c1diMkFWNmFQTjBzNHZqMW5sTDRsbE04cVpGUnlnOWtFS2xHdVhLMFBFSTJk?=
 =?utf-8?B?bk9xT1orbGUvNmttZHdDNjJlQjZYSmEyV0RFb04xS1RhY3RLZWo4Mkw1cHd5?=
 =?utf-8?B?Mnc1Nk01K3dLNnhhSU1XbE5Hb0dibm9tenVqNXZxT1l3QklkTFk0OFFWZUZ2?=
 =?utf-8?B?UUZUUmZwYzRwUjd2bEtvYlZJZHI5NlRNb0FESGtLOVE3d0Roa3Q2bldmYi9Y?=
 =?utf-8?B?UFVldmQ0WkpwS1RRWHc5bDVXb3VqSW1IMEdZN0hMTkZodkhGVEJ1bzlHRWZy?=
 =?utf-8?B?YUpKWjJVSzF0TS9QdnBFNi9QT0JINVhTb04vbGpCb2dnbVVPaUlPYVlhb1Zw?=
 =?utf-8?B?ZW14U29HdWFKOEttV1U3dTVpSUN6SE5wYkZTYkRUOHFTSGlKQXN0QnhjZmVN?=
 =?utf-8?B?UVdlZ2h0eUp5Mm1YOUdHL2hiZWVSblk4anFmVk1aNFlwZlNMdTVTQlBkZ1hl?=
 =?utf-8?B?TWxIR0FDNytIb0YxQ2pya3paS2xIVzdYR044ZldCcFJLREUzaEwvL1E4anVS?=
 =?utf-8?B?Unhic09uS0lnZXNzRE5OZmxGR1c5c0xjdzRIZHlpaWEySXN0NG4xNjA4MTJm?=
 =?utf-8?B?VkZieGRvS1NTTExQMjZ2VTFoZ04rSTNia0hqM1JRbDlYNHB5NnpJSitlUS85?=
 =?utf-8?B?VVMra0RSdWtKaTlZYyttdmg4aGhrTVhRZ2tpbFl4Q2NDOUE2YTYxdzFQZWhu?=
 =?utf-8?B?K0xnWUU2NTZFb3g1VE1hVmQwU1Nwb0MvUGZJV21sOUU1S1lDQlE0b054TU0r?=
 =?utf-8?B?Tld3dGJ1SzhFVGlNb3RqQXQ2Nm8wMzhQaUx6NFFQemtKQWs0dmQ0MDBYZE10?=
 =?utf-8?B?bVllSDNFd1hTMFJ4WVp4RWRMZURIVDBpZUpWNTRaQUcxSE1yQzFKTDBXTkpJ?=
 =?utf-8?B?NHVWZnNOREh4cXlyNnRVSFpJR1BlckZ1WlpIRDJ2SmhjVzVuMXgrOFlYcEtZ?=
 =?utf-8?B?eGZWdkNHTGYwWTQwTFFwNXA4aFNMSWJHWnQrZnZPN2p1bTVEMG00WnhiSHFO?=
 =?utf-8?B?QWVYelZlakhzMkpnYVIvcFJXeVRaTWNMU3J0dzlpUWNBRUVPYXdNOUUya0Zl?=
 =?utf-8?B?dG9WSXU1WnN5LzUvc0RyZGw4SHhQUUs2QnhZSis0RTdjazU0REk3Y3ZoOEJl?=
 =?utf-8?B?b3djUUttd2hyYWtad2pwZktLMnVJSTl6RDZxZ2NBNjJYTENmRnhRd25jVGd4?=
 =?utf-8?B?TVRlNy9TU3JiSW5NZFJkZCtMNTFKNTk4N2NrSjZtUzdkMnZvOFk3SWgrTHg2?=
 =?utf-8?B?d0E0MkVEdEZpdlBPSE9OQ1V4Y2hZNnptR3YzRmt2T2MzeFJZTkdFYTlEOTZO?=
 =?utf-8?B?SUFoVTQ5bHdQd3FhMWFDVE85T1F4a2NISlVEWlZvYnZoN3hDMFZoRFBGYWxP?=
 =?utf-8?B?VWJoT2hpeXR5YXQ5UWlIWjRsakg5NHBBZ0NOYXRWSGs2dFhwQW8rWW1sVWZs?=
 =?utf-8?B?U1pxZkY4d3c4d2tmcmVBNzBWU0lrV1dWQ1ZqN2RtSnRlZ284MHFhTFFjOUUx?=
 =?utf-8?B?aCtzYTVCeTZKai8xVFZHdVpqcTBQR3FPSGx6NVNXNmNOa1pHcW0rVXlaZ0Ju?=
 =?utf-8?B?L3hoSC95OWpzZklkZzBpUWY4VVBxVUZjdnVjM2x0VllSeEMvam9sK3g4bkRX?=
 =?utf-8?B?ZjVZTnJLZ3cwdDN0MEVVSjUxSFNBbzUxZVNUYVN3azBBcm1LOWJWZHg3L1NH?=
 =?utf-8?B?d3lNTU80R0NSSEVvRnYwNi9oU21UL3pNMENEZ3JOdythbWFqekUvNGlNd25w?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d3822ec-461b-4648-71b7-08de362a1354
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2025 07:19:07.6848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ywR2l3KD7eA+ufrs6FXUvB1a87K0d9S8jkdl9WtN5KMiK+c8PYqpAEORN75wcrr7waoOCXKFHqQmOEwqFNYF3pDuOwAf3EMgQs3bZz+7htk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8569
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

Hi,

On 2025-12-05 at 19:03:46 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/selftests: Keep mock file open during unfaultable migrate with fill (rev7)
> URL   : https://patchwork.freedesktop.org/series/150033/
> State : failure
> 

[...]

> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_150033v7_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-64:
>     - shard-tglu-1:       NOTRUN -> [FAIL][1] +3 other tests fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v7/shard-tglu-1/igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-64.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          [SKIP][2] ([i915#12713]) -> [SKIP][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17632/shard-rkl-2/igt@kms_hdr@brightness-with-hdr.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150033v7/shard-rkl-1/igt@kms_hdr@brightness-with-hdr.html
>

These fails/warnings are in kms tests, which this patch does not
touch, so they are unrelated.

-- 
Best Regards,
Krzysztof
