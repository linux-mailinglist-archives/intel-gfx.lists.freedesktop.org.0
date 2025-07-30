Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBC0B15985
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 09:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CCDF10E40C;
	Wed, 30 Jul 2025 07:24:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ipuimTkd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8598310E40C;
 Wed, 30 Jul 2025 07:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753860251; x=1785396251;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=XWfpo7wkEik8b2uw+XJgfjaEV8jPH0/BzKwHg0rW2R8=;
 b=ipuimTkdiosX5FHjFmxYO1tn48DdnH/XEk5G64GFHonTzwy0XiVVX0ro
 GMigIzPgTdnvtcFOjEt5gndJmsuPIOycE+8IElLOkWmSViQTA4mBMex/K
 0o+7nE6IrroO48xToD1159q2+Pk/n3+ZBUIk25PAeTWIANsXfv4+u/diQ
 Kdj6705J2qsadvAB99ui8Jn0bs97wlonoVZpQK+8uNQsldMTi68WVgznP
 x8LfmKXuenre6B3JCzckDjb/YG/w0PrU9Yhdse49skkmcH/ylgxVBqV5a
 2Cz3dSnGiR+vs8o+EsUKWz3P01yZqkHtE6N8JMjE2u7By/aYVPsVSBB4R Q==;
X-CSE-ConnectionGUID: 3hU6JGkJRomev7gqqXnA8A==
X-CSE-MsgGUID: angsxRexTNGzUlb3wpuMHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="67593589"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208,217";a="67593589"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 00:24:11 -0700
X-CSE-ConnectionGUID: qQCCNP2jSYWTAX/XVUqTag==
X-CSE-MsgGUID: dz6S1whCSl6pWX9kDQbkyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; 
 d="scan'208,217";a="163260670"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 00:24:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 00:24:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 30 Jul 2025 00:24:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.70) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 30 Jul 2025 00:24:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NhTTl6rH78FnZjD2frfs8ymaEV6cYMNKjjpcAq8XZf9LcUw9UQyp0IPnIx2fSeJJy5C95UdqBlP4uCDx68MrvGfqXY50986SkfyS9CC2Yj32ryBu6zUlI4xXSKiIsNj2Jau9gI6uvufe4ge4LGOVQHx5kFSooubafBFUNYCt5kBV0BJ45ZwmtdQA3+Wdp67T5p+FT0OlhRJfouQQ6xqluAgEgZDPm8MrUCwAJB/7/QPhn3khGeUjTPqN0+QFJVRl9TyvU3QhDWWTOHI7+EXLe9zqXvCjk61PVOwASJuSIvoNfLJNa+zof6IZVByet8VEV1jxJCObAoH7X3GA8YYU2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XWfpo7wkEik8b2uw+XJgfjaEV8jPH0/BzKwHg0rW2R8=;
 b=O7JA4wRCS7egCzWsBWhfCuZ7RMsK667qJpoNP2InAZQ4lDtlB7Zjsf1l8DEkzHeMq22VOknZ0T4/l45vt7RlZuSQHVZYzJyGzTQSS5ZOHHXwdWbRPdjohrASerS6sAQscKSjCec4kSNXoovJjBrW4YwzE0iGZOQOAdkdYO9nJu+K9Q/InZrKhXcF5AJ0Dx19KYO4fWXW00HZ4Oxx7Z55N9kj/eamPR8pTFSSJmU+loCvJ5NskHgo0oGRRcLYIHAtSUihBKLEJeYLPMB02F/vhSonA1bQcrEEgirwJD0dkJXd+3v2OJZBABn5h9+qwlJ2qYThu7HHOPa7Fxw8kpf3Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW3PR11MB4761.namprd11.prod.outlook.com (2603:10b6:303:53::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.27; Wed, 30 Jul
 2025 07:24:08 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8964.026; Wed, 30 Jul 2025
 07:24:08 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "I915-ci-infra@lists.freedesktop.org"
 <I915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UmU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRybS9pOTE1L2Zi?=
 =?utf-8?Q?c:_fix_the_implementation_of_wa=5F18038517565?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZmJjOiBm?=
 =?utf-8?Q?ix_the_implementation_of_wa=5F18038517565?=
Thread-Index: AQHcANMscdhqO41dH02t7HdgpYz5krRKRDcA
Date: Wed, 30 Jul 2025 07:24:08 +0000
Message-ID: <597206b9f1b282d172623f9639b78ae872b284af.camel@intel.com>
References: <20250729124648.288497-1-vinod.govindapillai@intel.com>
 <175382597046.197655.10746570532935116143@1538d3639d33>
In-Reply-To: <175382597046.197655.10746570532935116143@1538d3639d33>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW3PR11MB4761:EE_
x-ms-office365-filtering-correlation-id: 5f9c788d-7193-49d0-88b0-08ddcf3a12ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|8096899003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VTM5WUNyNXh3eHJZNkswK2p1WW5SMHBrR1NZcVhRYVZSNG9tUXFtTVMrUFdr?=
 =?utf-8?B?SDFjeWI0bVoyRk5LZEphaEdVZ0doREZWQ1pPRmFGL0kweWt1RXlLU0kvWW9X?=
 =?utf-8?B?YW1zVWI1VnBydm94azFxQjlQcVNrMWVmb2NsTkpnUUxZRk9DckFnVytNd25Y?=
 =?utf-8?B?U05XWG9jc0VPZXRiaENkd3IwNVE5S3RaRW5WVGhBSHBwVEJabjJxSGp6TWNN?=
 =?utf-8?B?WWJ2b0x6STZ0cEZIZCtnT3VzOUUxZmFsWnFybkZqcHVNUEdrV3Q2T2ZzMENr?=
 =?utf-8?B?ZGJiaUtuSTFrZ2ozb1lCYkVCOXMyaHpJcFZJejZFdURQbFdZMVp2MmF6S1lQ?=
 =?utf-8?B?YkVyOW4yUXRtRVA0eDA5eitYM2U1THRtQTJRREMxRDZRM2NEdjFsTVpRakRw?=
 =?utf-8?B?L0l2ZEppSG1lYmlqVkVxTVdSVm5DekNFMjM3bjlOYTFnUkt3RTZRVnhXczhL?=
 =?utf-8?B?U2RJaWVhbk8xZjFlNXdUWVI0UW9FMXYwZ3ZRc3NMcWhMdnRpWFo5MGFaSi83?=
 =?utf-8?B?OUV1TEs1N2lETmREbk9RUWNSRm1UdnpoMXdEV254dEdrcDBnZG1lczJsNU85?=
 =?utf-8?B?UlJrN0RJM1ljTDAyeUVxWkVCZEtTOHpxYzZ4TFB1TU9rM0IvTlRIeHUyVXlE?=
 =?utf-8?B?dXJZZ1djQjV3Wk0vN3QxN2tEVE5LNmMwbnNONkdWWkJRREJkcFdxMlI0VUJn?=
 =?utf-8?B?TzNRd2k5M3VUdEt4QXpGQ0JvaTUvWUQvOG12L3E3bGdkV0FJbGFEY0Z3WUtB?=
 =?utf-8?B?Q0w4c1p0Q1dTM3MyVVhxUlU0dlhMMm40NXc3TTF2L2Q0akM0TVVYK2o5YkRF?=
 =?utf-8?B?eE5UeEFLYlhPcE9zSkdRdDdLaVJZcW4zTHUxbGpwRy95Q3lNSFZLK3F4bVN0?=
 =?utf-8?B?N2ViMGpvVlhJd3ZodlRabUJad0RWYmdvY0ZlajNZSlhyQ2cwVDZlV0JQSHNW?=
 =?utf-8?B?VFVDK1hUenFUaDArM0dMUEtZVkxBaHI3dHh1SEhUSXlrUndTMk5ubnRJcyty?=
 =?utf-8?B?cys3ZjBYbGVKT24xUldCMks0K0Z3NG5OeVoyRWxqOGNCb2hRNUtJV2xMUWhp?=
 =?utf-8?B?d0w4TTkzM3dhTDhpTHpCb0VvbEcza24vTzJSMjdkT1QxRnZMbEIrZ3Bra05v?=
 =?utf-8?B?cUxtaXV4YlpFT0lqUThmN0FiRkJCejRkR3QxWUx0dm14c3l2clR6dmNNNlV2?=
 =?utf-8?B?b2pQVUdXRlg1Vm9DQ29PSmdabXBkd3dKU3pPUjRKdmpIMHM4KzgvbXp4TTNK?=
 =?utf-8?B?cVlJQytZeXpZVXZTa2tSVWdxc3RrUHRRTlhkY09pSXVQMDQ0cHRBT3UxRHpj?=
 =?utf-8?B?dG40S1Ewcnc0YjdjTm9hRUZsUENZZ1dBb09TNXBzYlVuallSYldlcjBDR3Nx?=
 =?utf-8?B?R0JJVklQSmNKQW5mTFF3OFo3b3FOMGw5dVM3TFptREkzRU9qOEE2ZVJYRk5Z?=
 =?utf-8?B?V0poU2dSdVJOTGFrbjVUTGZIRThwUEJ1RHVzQUtFK29IYUpKcm50N21TN0Z4?=
 =?utf-8?B?MXZLWURxb2JBRER4alhleUpIWnY3Z0NKVm9DZHVxYjZrUFd6Nmh3UDU4QUdq?=
 =?utf-8?B?UkFKcUdTbjhBaUxiU2RlMDZ5MURkWVYwelRLdXY1bU5ib1ZrMnArYlRmNGFh?=
 =?utf-8?B?S0hSUnJtTnkvQm4xR29rVHJFVVJoaXptTmYrNEVlT0wxRGpxelREbE12L3Zn?=
 =?utf-8?B?R2pmYWg2TWc5TFJBUEhyQ3FpcG1BaXNVcExFampsaGdPRDZoU1hubFFtcWlh?=
 =?utf-8?B?ZW00UCtlaTh2dHhBMURSeFNZVUtFMEU2OXQ2aXJ2SGZiWjZURnRVaW9CS3dH?=
 =?utf-8?B?emRHcG41Tm9iV3R5bVNFUm1LWUZCcVV2a2tDUEJBb1pQM1o2Z3lkWGlEUTVs?=
 =?utf-8?B?bHR2cDBOcXJvUXp5THdRb00veTRkQUhUb01WckJDUENjQmluSzJHYVdjRDg2?=
 =?utf-8?B?aEx4elh5K0N3d25KTHhQQnZYTVE3SkcxaUxLSlVPK1d6SmNNbmpSNjk0cFVq?=
 =?utf-8?B?dkc0TkI2UjV3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(8096899003)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDRpUFd3a3RpMUR3V0tvZ1FZUWV1d0lZRTdNa2lRYWFYYWY2bGRJSTZ3clFo?=
 =?utf-8?B?aGxrN29KS3h6RzErSVNYNlBaY1FjNnJSakJFVC9PL2xaRERxejFwbW13YmVJ?=
 =?utf-8?B?MDJxNTFiUTBJbS8vZ2NjbW9sT2lrUFNyY1BKd0FYTU5EVHNaSDI0R25mRmFO?=
 =?utf-8?B?dXcyZTZLNXFDT00ydEdiZjZ3QUpyMHpyUTdTUWtEOWVPanZWU2NRN1ZBUkdV?=
 =?utf-8?B?c0xWOGVWUkVRWUJEMDBEWHRhcll4ZVFSYnhNb095clgyczIrdnhGcjNaNk9a?=
 =?utf-8?B?YVJkZ1VjNkVnbXhMLzYrVmtwSU1CR3FoSTVOV2lRVWZSWk5FNzFHd3FyZ3ds?=
 =?utf-8?B?bkxlZGRCbVdoYmZIVDVleUlLckJHbjc2VHliNzJyN0FxQ1ZKM3BIM21POWx3?=
 =?utf-8?B?d2xXNVZQUGdYY1MyS29iMHZYb2hoMWRFSVcySE1aUHRQUXlmRVdTYWZFbDlX?=
 =?utf-8?B?dHhLRGpiOEFncXZ0bWFCR2xXeXRaSEZLdldyT0hlRTdlTlFsbC90TE9jcnZh?=
 =?utf-8?B?TUJGYW8rYVhRWlgwTE1HcmhtNFB3aFNwNTdLeDZET3BzNUZUNVZCa2VSRDVu?=
 =?utf-8?B?UFlEc3ZZaGZzLzVnSXVwSFFiM09HNTIwWnRya09iM1E5bm9IMUJCdExWTFJn?=
 =?utf-8?B?SDllUkFVUEpwUEcxcjY5UzZjU1BjdGs4NkEzYllVbkRFaWNBWDBMdXp2WG9L?=
 =?utf-8?B?S2JnTU05dE4xYTFzUytHa3NidmFuS2pNNlBrSXNxMFBqVE8xbFFnbzgyTHhS?=
 =?utf-8?B?VlhKTDhkakpYNlNiUy8vTERKNmNRaDRHbnJmY2I5Kzg0dW9lRlNaVCsrdHdK?=
 =?utf-8?B?emJXVTNtUm1aN25CT2N0Z1VSYURWc0c2MkxwTWRiVHhIa3A0U1hzVE1UbWJY?=
 =?utf-8?B?ZW84enA1YlBqNkVDSjRRT2Jqc3B3RkZQSEl2UEljNm9aVGZWRzFkdUcvVG5J?=
 =?utf-8?B?cThDRFNVQWY5cEZGaGh6YnhRNmhudjl1TGRHV1RsSUZIaU0xR3R0ZWFJMlU0?=
 =?utf-8?B?WHNSWVAzNUV3VGVNR2dYRDBONjZOTHZ0dkI3cXI0ZU05MmoyQTFJbStDZTZk?=
 =?utf-8?B?RkgyNTUxZ2NXdTFRRS9SbFdBWlEvSEVsWDg2QW9vd3dBNFkxS0tRcytoK0Z4?=
 =?utf-8?B?QjkrU1pWbktaRmZObmY5VHNXWlRYclZxL09GNElGdmordjVUc1RTczFjNWFh?=
 =?utf-8?B?dExiWVFNOEM2L0pkQkZSYVRXdU1idDBjMTVjRUpBczNVclRzQ0FhUUl2RklL?=
 =?utf-8?B?cE4reWZwd2NaUGt0T2FPdWNyQitIRVIrMzNDVEdoN00wSUhkcitCL2UyUDF5?=
 =?utf-8?B?b0pMd3BuR2x1ZVR5S29mSEtGSEJDTkZDeVIzY0NpUWhTZ1BmM1MwTm0vYUZE?=
 =?utf-8?B?N2laMXpsQUo3YXIyaFQrKzdnWHlXSXJPYjI4bUFvZVBQYnpESm01cVpHMXNy?=
 =?utf-8?B?cE5VSk90YW1SNXNkQ0U1S015dVJFaUVFdkxVdnptYTVydUZtRG10NGZQY1Ez?=
 =?utf-8?B?NmVLVzBPL0lqalBLK29paG5HSVlEVnpWODh3NDJycmVYbjhqajdNTTFpMVMr?=
 =?utf-8?B?ajc5b1NZTGRkOUlWbUk5bjdFWHdiZjdHMGdQa1RybzBlUmFqZC96M1hXbmJ2?=
 =?utf-8?B?N0dZTzlWY3cvcmRvUi94OG9BNElpb2NJV3VsZ3IvekdDVSs4aEc4K0hCYXZz?=
 =?utf-8?B?ZzhVcmZmaHEvVWNlN2hXbWFHSFNuK09HQnQxQkFQWXRuMllnQ1FCOWlheENj?=
 =?utf-8?B?Slc5QXVrNy9veDduam5kVDBoaFNiRWEzZFJOdlp3N3VEeEFaMnlwSWFYTEZI?=
 =?utf-8?B?cHJVbnNzR0QxaVVxOWtJMlZnNWF5YUk3ZHZHVXF1OUNPVUJhVUlHbVNEdzdh?=
 =?utf-8?B?dG1kNlR5S3RYN01HdDh0NzFJN0V4WktOeDJTbTlvaGV6dTdoK2hDY1Y1SC9j?=
 =?utf-8?B?Z2RYNkc4ak1MbFZOakJIekc2d09rK1FmU3ZtUTBKc0w2eFk4Mk5wMDRUMDNk?=
 =?utf-8?B?SVFUejlST3ZnNWxJNmNrWHZ3eVlBU2F6VStrMDN1UTc1YXZBWmQzak9uWkJ1?=
 =?utf-8?B?SjA3V2JwZFJzaU9TYkk1UytObWQrZXpxNWJGdmR5bUFBc2Q2bUp4WjZUc05s?=
 =?utf-8?B?N0lsZ1V3MHpab2k1bmd1NHlXaFl3M2Z3NzNyTGNOWG1SQVZKd2dJV0VnaFZJ?=
 =?utf-8?Q?m40vcFBybViBm+S4LZNxCQY=3D?=
Content-Type: multipart/alternative;
 boundary="_000_597206b9f1b282d172623f9639b78ae872b284afcamelintelcom_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f9c788d-7193-49d0-88b0-08ddcf3a12ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2025 07:24:08.4137 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mtvdhDAsOcqhH3P8DJtK0xTa3I9dx3nJuNt3d1bzwXTWLjyKHs8n4fkhhm9DgdW/PaIZBpLF6GT7HvkwAlVPDoEcE/ov5KOAbdABFP7yJpg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4761
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

--_000_597206b9f1b282d172623f9639b78ae872b284afcamelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8NCg0KVGhlIHJlcG9ydGVkIG5ldyByZWdyZXNzaW9uIGlzIG5vdCByZWxhdGVkIHRvIHRo
aXMgc2VyaWVzLg0KDQpCUg0KVmlub2QNCg0KT24gVHVlLCAyMDI1LTA3LTI5IGF0IDIxOjUyICsw
MDAwLCBQYXRjaHdvcmsgd3JvdGU6DQpJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KDQo=

--_000_597206b9f1b282d172623f9639b78ae872b284afcamelintelcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <2B9EC3BDDC34B44BB5041F878AF183F5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZT5wcmUsY29kZSxhZGRyZXNzIHsNCiAg
bWFyZ2luOiAwcHg7DQp9DQpoMSxoMixoMyxoNCxoNSxoNiB7DQogIG1hcmdpbi10b3A6IDAuMmVt
Ow0KICBtYXJnaW4tYm90dG9tOiAwLjJlbTsNCn0NCm9sLHVsIHsNCiAgbWFyZ2luLXRvcDogMGVt
Ow0KICBtYXJnaW4tYm90dG9tOiAwZW07DQp9DQpibG9ja3F1b3RlIHsNCiAgbWFyZ2luLXRvcDog
MGVtOw0KICBtYXJnaW4tYm90dG9tOiAwZW07DQp9DQo8L3N0eWxlPg0KPC9oZWFkPg0KPGJvZHk+
DQo8ZGl2PkhlbGxvPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5UaGUgcmVwb3J0ZWQg
bmV3IHJlZ3Jlc3Npb24gaXMgbm90IHJlbGF0ZWQgdG8gdGhpcyBzZXJpZXMuPC9kaXY+DQo8ZGl2
Pjxicj4NCjwvZGl2Pg0KPGRpdj5CUjwvZGl2Pg0KPGRpdj5WaW5vZDwvZGl2Pg0KPGRpdj48YnI+
DQo8L2Rpdj4NCjxkaXY+T24gVHVlLCAyMDI1LTA3LTI5IGF0IDIxOjUyICswMDAwLCBQYXRjaHdv
cmsgd3JvdGU6PC9kaXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2luOjAg
MCAwIC44ZXg7IGJvcmRlci1sZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3BhZGRpbmctbGVmdDoxZXgi
Pg0KPGRpdj5JOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzwvZGl2Pg0KPC9ibG9j
a3F1b3RlPg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+PHNwYW4+PC9zcGFuPjwvZGl2Pg0KPC9i
b2R5Pg0KPC9odG1sPg0K

--_000_597206b9f1b282d172623f9639b78ae872b284afcamelintelcom_--
