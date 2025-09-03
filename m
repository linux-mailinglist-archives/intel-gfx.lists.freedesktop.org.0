Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FC3B41EEE
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 14:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53FA610E7C6;
	Wed,  3 Sep 2025 12:27:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E8JuFCVS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E5EF10E7C6;
 Wed,  3 Sep 2025 12:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756902464; x=1788438464;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SUNMeYoga7tcERSKnru1G5f6CqrsdvzDS9eQE+bykX4=;
 b=E8JuFCVS6+E+pceOZbrVOzlQ2u39ral+1GU42NdOk4DGd/9mzOj4n7f9
 Dxpu5s33hR5DgeIHRmF/B8YB1Kn64UcsBqFBqBEO4tmfzlzGVpblj/dP7
 B1Oqz3qYt30IDtrQ2SVlKhqMRdWhUFm8xx9gfryGoKr7GzNUL57UVD7Hb
 U9HlV3anhe147rTeEKQ7O1WXBrWIJ/PV+IODTjRstwbbLYEG5juHi5lIm
 Ure/3JaauT5UqLX9p9BjlcWlP0QDF++8SNtS7WoPPuKC+i1efE4EXuA7F
 FkKEQqqrdyZGx5pAJDwtpO5GMK9SwMO94GI/VXJ17tca0BAfCkB5xNVQ8 Q==;
X-CSE-ConnectionGUID: SgZYW8tsTvqNd7+DlhYJJw==
X-CSE-MsgGUID: Wy/iXrU9QY2/5Nxbyi5G2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="58913009"
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="58913009"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:24:39 -0700
X-CSE-ConnectionGUID: y2mTI1QiTDGcnhFtPBa60w==
X-CSE-MsgGUID: TK2H37lLTSaKVre4KJCtIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="195205769"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 05:24:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 05:24:33 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 05:24:33 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 05:24:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GHujSWfeaQDTFX5ETvykz1bhv6FbnpZrm5R+klKHmHpEvq4KdUPi96T1+Dk7220irioe8SNYZjheNT1VS00BkNUf9FnJRXItG76Df74mTDr2AkmeXwkXnvtDaBEJBFTwSvW9dVTNfKHOg57jYAuraPKfN+1HCvccsPN65ot98/ASsjsEdKN/D0xtxIDX/RgmoBTuEWZtU/FtWRNo5NbtrDaV/aRXznt8QaLf+GD6t9yv0rsyQP/ae+4Jye6Otlr7OEBAusexUmXFO+0lA3OO/hSAeuRo5DVxwuEU5FaXprQ5yPdaMBpdXyWU6ycPt9FZ7iIcDM8HluC8A9bCUAw/Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SUNMeYoga7tcERSKnru1G5f6CqrsdvzDS9eQE+bykX4=;
 b=gwEXtPrlb17htVuPn3KG764xd5xJT7T+9uFGHxwCIiMFWAoo/CLQYh08MoFuSlhZnng2p/bpBsHy4TdPvn7hpVYBLiLYuZ4q4BcroauNCQNLUkhkaUkrCrSOJmcABOhJTyEsdWQLoIcqfXRjeqPWNpjVROCL1vblh3gqnkAR24w5r2l3UlY4tjVbKE9DBtMy7s29v4sDu0Pcm+Nru1CADNXxsVKWXScPORhYWxorfoA8WjSRO8N+lonCB5aJeraGz+svJZhmgiJz5cp4XEHAq4jyjwLAmsbvSpiY+4eHkq8umff2zjG+fWzD4K84qzdddqLdC8tGfGNILdmDZODucw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH7PR11MB5943.namprd11.prod.outlook.com
 (2603:10b6:510:13f::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Wed, 3 Sep
 2025 12:24:30 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9073.026; Wed, 3 Sep 2025
 12:24:30 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/hdmi: Fix potential overflow while using
 intel_encoder_to_tc
Thread-Topic: [PATCH] drm/i915/hdmi: Fix potential overflow while using
 intel_encoder_to_tc
Thread-Index: AQHcHIfR9RnpkR6J80S9veQviO+m8bSBCkMw
Date: Wed, 3 Sep 2025 12:24:30 +0000
Message-ID: <DS4PPF69154114F27E865D66138E5CC1EDBEF01A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250903035022.3654997-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250903035022.3654997-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH7PR11MB5943:EE_
x-ms-office365-filtering-correlation-id: 1fc27af6-d96a-45e2-e965-08ddeae4d54d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?Q1psY2FFc1A4bndBdGNBd0hDNFBvZTdTeUthMGFHQlhxenNCZHMxR0JrOGV4?=
 =?utf-8?B?SnI5dW1KM2gyZkI1QW1qczRPTFJwMS9qSjU5Rzk5YXpqbXlVZHRmazJaaXFp?=
 =?utf-8?B?TzllYkp4QWE3aVhpNjZMeWg3VTVpeTRNMUJXVmRyQ3ZLNGYzWit5WC9YMUtw?=
 =?utf-8?B?emN3Qnp3Nm55bjN1SEVLNzlGY0pnY0lVWUZQOGNuV1pmZ3J0TDJZNnNEK2tG?=
 =?utf-8?B?cXFyVkRrL05wNnZFbUNnVDNsNWxEMTJ0NXZuUVByZnVzVS9Wa2t1bzAyQTNF?=
 =?utf-8?B?SE11OFlJSkRqdXBMYU52ZkhCQjFqQUhIbnpuV0ZiSTFOZ3paenZySjdaSUFq?=
 =?utf-8?B?NldBcHh6VDluRlBMSWRsV0JBYnc0WTVlTDVPVHc0Y0QrUm1mTjNWSmR6ekJv?=
 =?utf-8?B?djc2SVNLU3NhZjdkOHZXdjBJSzUvRVltZWd5NTBqY3J5OHFHV0VRVm1LTkhQ?=
 =?utf-8?B?MzBnUlBsUWdRbGFjK0JnYlFSMW4xa0FkcTZOcWRPTi8rR2lyODF2Y0d4VC9k?=
 =?utf-8?B?RHdwREhzR2krTFJ0OTU3Y1AxbFZTNG55ZVpGMG5VN3oydndKL25kKzZoUk5F?=
 =?utf-8?B?N0VzdFduODlXUy9ZWVJJUXlPa0V0SVk2Wm51QmhvbmNONzZUTGd1cnJ6K08z?=
 =?utf-8?B?RHYveU9FT3AwN2VWUXdlanZ4ZklOT2J1RjNxU0RiYTJETHA2aFltYWlIbEdu?=
 =?utf-8?B?c2RVWmNIQk1hOWVsOGhwekM0YTF2OW9UdytMYlRhdkVLOXRwOE00WGlmMTNY?=
 =?utf-8?B?dkZlMW9NalZONGJpbmF4WGhFTzhjWHN0cmJ5Z3lFOVlnT0JXcFJnZG5MdlY2?=
 =?utf-8?B?emU0WjlwNXJmNjJncVcrOEtsbzIreGJCVjNKY3pJTVRjdHZoSkd0ZG9xT1hy?=
 =?utf-8?B?bCtQbVBGQjIzZm5Hdys2djlqU0JnOUdTRCtmTEJiVUIwYVZxRVNjODRLdWhV?=
 =?utf-8?B?eHBJMkIxLzJUcHE2MXNjZWdwMi91WjlXTFMzRnhSS041a1l2VzNaS0xzMzBH?=
 =?utf-8?B?THgzREVvSklMZzREeTFTeTFJdytMeEEyWXV1SkNyWm5Dcmt2eldsLzVsNU4r?=
 =?utf-8?B?RFRiMFZPcS9VYUNWQXF6Sk5xb1VtdmtHRGVocXpTWlA4TGo0ZjdKV2ZmVExG?=
 =?utf-8?B?VmlCYzZhNEpvZUE2V3prRUtXOHptMFdtNXREN1g2aHE3ck9ITjR3NkYzWVIr?=
 =?utf-8?B?bXFwZ05MYk5ZdG1ibktvVnZ4REFoOEs3bEFoNjlrT21MM1B0Ty9aVmtEUHBS?=
 =?utf-8?B?eFZtcktTSU1RVGh5eThJYWQ4M2c1cFlORTQzdTBFWVV4dW9TZHkwNzFpNzFP?=
 =?utf-8?B?czVUNEJEZUdQRzA2RUdzcWtCRHFQT1FnOTFqNk9ydVVZaUJ4U1pENDh4d3du?=
 =?utf-8?B?RnBMZVZMdzRyRXZiNk96MThUUXBncWQwYU43TkdTMjZSUktwbVl1UmFkMHdj?=
 =?utf-8?B?RkgyZGtRb2M2SjM5N1A5V3JkY28rYmU2ZmlYU002YzBWbmYzbXhkYXN6eUhL?=
 =?utf-8?B?Z3NFODRpd0xFOEIwb2ozOHd4ZDlFdVFyOWtnOXNoUlpZZ0VjRWlkWElCVWp1?=
 =?utf-8?B?OXlVWGRMSlB5cXpTajRWT2JscjQ2MXhWSEdrWDIxM1RCSVBocHhjZ2huNkow?=
 =?utf-8?B?RFZJaUFIQ01kTVk5MzRVcWxQYTFIME1HbkdmcStadW1Oc0UvQzJqQW1qdy9v?=
 =?utf-8?B?WVA3L2k2bkxCOXJHV0lrVXN5VW9zM21pdkJld2tqcnNxaE91SldJdGZwUW51?=
 =?utf-8?B?ako1cTJWb0pPbktrMU5zMFNSSFl1OTVBNnBBQzhEZ3ZKYm9CM1RwSFBEbkpr?=
 =?utf-8?B?aXpYUjFWQXN6eDBOc21vcjNPd0xtNUpMbEFVNm5hQ1hDQWkxc2gybUZDWUsx?=
 =?utf-8?B?eFhkVmhWdllmd3RpU05VK3JNVUpUcEZJUHFPM1NYOHF0Yk5zdTI0K1NVOHF6?=
 =?utf-8?B?TXpmc0J4cTFqTW44UUdEWHVCWnZCUklRVGx5TjVteDlnNWpDRTdCZ25XeS93?=
 =?utf-8?Q?QKruSlfg52KQrPPa7NL5e/YI2gV+J4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnQwaFN6dS9VeUdvSktIWElrZ0YxU0FaSmxQNU1ZQnRMQVRtNjcrYjNZNk82?=
 =?utf-8?B?WWZmVjgvdFNkemFjMG9oaTRvbUZ4TWFrM0xPd2lYWHJTK09ZcWFuVW1BcVVa?=
 =?utf-8?B?UWxuV0FhSmJnWXJ0dkl1UE42L3FWNnp1OVYrNGJMTWFFY0VWQ3U2V1JuVFpi?=
 =?utf-8?B?ZGRkem0rMXdCY1NndXNpNWRSci9LSWZIMzlKZHJPQjAxckpVMTF3bE1lTmNS?=
 =?utf-8?B?Z1F4Y1grM0h4bFRsU0tmTFNHdEF2eURHUzNQdkE2aWJ5S0t0dmNGUU5HNzl5?=
 =?utf-8?B?aHRnWDNoOTVPQ3Z6dTdtRTBTejhlUW1HMUhzMnZIZFJhK3N1cnN1ek1uOFNp?=
 =?utf-8?B?SG1iT3g0bngvZnV0VC9DMEhWd2t6dVI3cU55czY0MXphOUFxNzFPZGRuT1BF?=
 =?utf-8?B?eEFQMzBIeHdxbzFGZkRxanl4QmJ1cC9nUXFRbGpjQVhwYVZwaDJoa0NvZ2ZQ?=
 =?utf-8?B?V3hWWDVsREZ1d1Mwc29qcGtHM1h2cHh6UFJHZTQvTytWK0pvV00xTGthcWpk?=
 =?utf-8?B?MEdZaTBYVlNLTGJiOU5YV0pkKzdlN2tIcWUzYXVGVFNtNDFWU3MxR2gzRVNl?=
 =?utf-8?B?TlE1MzJlQXJvWkgySWYwaDdCcVBwRjUzWjlkeVdpQlppRzM4Sk5GZGZ3RHlj?=
 =?utf-8?B?K1ZKKzFlaGJBVWx3RjBSWGFQRkR2ZGNkc3ZWRHBZdmFHSlZkSG1WU09NSmoy?=
 =?utf-8?B?U2k4Mm10SnhLSm8yb3VJSGZJRmo3d2pIL3NLVjFCMFA0M0lQN0JQM3FnZ3Y5?=
 =?utf-8?B?YXRqbGpEOXgvWlB2WWp1UER1dThRR08zajBOdlhGdW8xQzY3cVdYenB3UlVz?=
 =?utf-8?B?WWIzREx5S3ZHK0xMcE9xaUlBOVdYYUVONCt5c0F1Ryt0ekhhNFF3Tkpod3pi?=
 =?utf-8?B?MXZqYTJ1SnU3dG1xdWtkM1drSTA2TWxNU0VpcGFiVDhBckozaVYrVHc3ZzBB?=
 =?utf-8?B?NjNHUXBtMFdmdUtldUNKU01nVWd3TUxjNUY4TEdtTHhyQnZsaVNYRldvMkRt?=
 =?utf-8?B?dGVsU0pnVTlhamRKZlBkR1Zla3dvbVV6SVM5SG5GaU9IVXZGZXowTFpNQVUv?=
 =?utf-8?B?U3BYZ3dTUms3Y2JwbjNIYlp0QUVIRkVUaTZUakplR2E0TTVUVHgvc3ZDTVBV?=
 =?utf-8?B?cWJRWDRaRHNoZzhMMGord0ZkWFkwVHQ3R1FBU1M2ZTN5Wi83ZGk3YWRkenZ5?=
 =?utf-8?B?RGgyZkg4TjUwb3hJL2lFaG1RRmR2Tzk1emVpV2ZyVFZEM2VYU0UvVzlkWTRk?=
 =?utf-8?B?QUg5eG1hL3FGTGVPakhPSW8ySHJWTXhUZHpOU0Uvcm5PaXY4TUEwMUNVR0FM?=
 =?utf-8?B?VjRkN0pSdjJzRkxEdEpKQ3lXS2F5b1FMaURtNmZMOTJjVk9pdCtMbnRvSVFh?=
 =?utf-8?B?L2YvaW4vUWM3a2RrWmE5eXZuRWRiTWNzV2Z3YnpGSm1VWDFQTGpXQTBPemRU?=
 =?utf-8?B?cDR0TnF6UWJSRXFNYTYwV293cHlsTmpGTlZud3pFeVFDcUN1SEZtR3pnYUQy?=
 =?utf-8?B?MlljQ2M4NUJMSHJPOHlMdUN6K21YOEdMWEg2eFdUKzJobytWZHFTTm9TUFc4?=
 =?utf-8?B?d3VoaU5CVWZQa05ieDBRWVVQanVwQ0JxT1BoM253bXg3RU13M29DbkFtQVQ5?=
 =?utf-8?B?WUloV1ppY0NSQnJNRlo2TC9XOU1OYkJoR1FvOGFpbmhYNnQ0UWFCUm9IVzRR?=
 =?utf-8?B?Y01wamkwVjlldG83cVpzUHgzQnlaWHVRODBOczZMdUxkS2ljU2NXQ3BmUmZE?=
 =?utf-8?B?L09xS0pLM2VDZzdBcGQvUmh1dWc2cHF5bzd5L2g2TFZqclJFSWdRaC9uQi9j?=
 =?utf-8?B?NDdkZFF6YXI2TXZWNnV1UzdMNWw5bHAzNzNlNXVpM3BpQjFCM1VaeU9UMnZl?=
 =?utf-8?B?bmxkWkdBSVRnRzNrSmw2Y3o1SE1jRDVUa08wNnBNV2hQTDV4Z2V3M3E2eHJy?=
 =?utf-8?B?Q1hnd0JvSzhsNDJGMHBzRFNyNzRuN2RsVVNyZ2tEalBOdDlkZWRGQWpaRk9E?=
 =?utf-8?B?Q1JHblg3NGVOYkt1YTlpejhOc1BERCtlRVBKMit4dG4vSzB0WkdDWUJGUFQy?=
 =?utf-8?B?b3hIWnBMUnpQNm1LdzZtTG5BVGFWWUF0VnN6bml2NHNEeTk1YnBMVW1jRGNw?=
 =?utf-8?Q?2RHOC1IzLIGJGSLNXfzBmMfaR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fc27af6-d96a-45e2-e965-08ddeae4d54d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 12:24:30.8115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qqmwfgkrF/hpRtuTbmxsX7CgDfVSdqyfgBZSlaoAphBY1ngzORQr51p1Uzu72PcGmWjnfPu21487fOHjuPr5OA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5943
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEFua2l0IE5hdXRp
eWFsDQo+IFNlbnQ6IFdlZG5lc2RheSwgMyBTZXB0ZW1iZXIgMjAyNSA2LjUwDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gQ2M6IE5hdXRpeWFsLCBBbmtpdCBLIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4N
Cj4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9oZG1pOiBGaXggcG90ZW50aWFsIG92ZXJmbG93
IHdoaWxlIHVzaW5nIGludGVsX2VuY29kZXJfdG9fdGMNCj4gDQo+IFRoZSBoZWxwZXIgaW50ZWxf
ZW5jb2Rlcl90b190YygpIGNhbiBwb3RlbnRpYWxseSByZXR1cm4gVENfUE9SVF9OT05FDQo+ICgt
MSkgYW5kIGNhdXNlIG92ZXJmbG93IHdoaWxlIGNvbXB1dGluZyBkZGMgcGlucyBpbiBpY2xfZW5j
b2Rlcl90b19kZGNfcGluKCkuDQo+IA0KPiBDaGVjayBmb3IgVENfUE9SVF9OT05FIGJlZm9yZSBk
ZXJpdmluZyB0aGUgZGRjIHBpbnMgZm9yIFRDIHBvcnQuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlr
YSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBBbmtp
dCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAxMiArKysrKysrKystLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiBpbmRleCBjYmVlNjI4
ZWIyNmIuLjg1ZjcwY2VkYzQwYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9oZG1pLmMNCj4gQEAgLTI3OTEsMTAgKzI3OTEsMTYgQEAgc3RhdGljIHU4IGljbF9l
bmNvZGVyX3RvX2RkY19waW4oc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+ICAJc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGVuY29kZXIpOw0K
PiAgCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsNCj4gDQo+IC0JaWYgKGludGVsX2Vu
Y29kZXJfaXNfY29tYm8oZW5jb2RlcikpDQo+ICsJaWYgKGludGVsX2VuY29kZXJfaXNfY29tYm8o
ZW5jb2RlcikpIHsNCj4gIAkJcmV0dXJuIEdNQlVTX1BJTl8xX0JYVCArIHBvcnQ7DQo+IC0JZWxz
ZSBpZiAoaW50ZWxfZW5jb2Rlcl9pc190YyhlbmNvZGVyKSkNCj4gLQkJcmV0dXJuIEdNQlVTX1BJ
Tl85X1RDMV9JQ1AgKyBpbnRlbF9lbmNvZGVyX3RvX3RjKGVuY29kZXIpOw0KPiArCX0gZWxzZSBp
ZiAoaW50ZWxfZW5jb2Rlcl9pc190YyhlbmNvZGVyKSkgew0KPiArCQllbnVtIHRjX3BvcnQgdGNf
cG9ydCA9IGludGVsX2VuY29kZXJfdG9fdGMoZW5jb2Rlcik7DQo+ICsNCj4gKwkJaWYgKHRjX3Bv
cnQgIT0gVENfUE9SVF9OT05FKQ0KPiArCQkJcmV0dXJuIEdNQlVTX1BJTl85X1RDMV9JQ1AgKyB0
Y19wb3J0Ow0KPiArDQo+ICsJCWRybV9XQVJOKGRpc3BsYXktPmRybSwgMSwgIkludmFsaWQgVEMg
cG9ydFxuIik7DQo+ICsJfQ0KPiANCj4gIAlkcm1fV0FSTihkaXNwbGF5LT5kcm0sIDEsICJVbmtu
b3duIHBvcnQ6JWNcbiIsIHBvcnRfbmFtZShwb3J0KSk7DQo+ICAJcmV0dXJuIEdNQlVTX1BJTl8y
X0JYVDsNCj4gLS0NCj4gMi40NS4yDQoNCg==
