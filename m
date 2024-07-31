Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 948E49432CB
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 17:12:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39EC710E653;
	Wed, 31 Jul 2024 15:12:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SRxqnbOK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40D9E10E651;
 Wed, 31 Jul 2024 15:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722438722; x=1753974722;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c62hous/smx6Xx+KZHK6lf7xBOJMeWNBSbc3NiQsS9o=;
 b=SRxqnbOKc9np/F44GCrpkpzEcwZrQd182Qr9YdddkmjuxXEDGSik7vrX
 7S9uOkT0fWN6bzJ3/+rxxyMdvlBGhnw00YEwsZieUQ9taBdUm9ETm8DQ8
 oLhNtOeikeAZck/O8o4sO0iXXkiFruBB6o0Db7wBHqu41pStWaxrT28XX
 Fj1SrnZVq1eRn+oJj4ZVxt8roftttX7tMY4tuGUzE6Uz03TCJMGav7RVR
 IqikPtEZFIXSng4C1tmRAovONxV68NJLi7cXZM6BOh0+b4/eZ02N9j+vu
 hEaJfzhAWiz3vY2kp/aR6iIAui3g9n3y9/SIMo+Jrhx2SaDTn7NDnZiIW g==;
X-CSE-ConnectionGUID: WTpd7CRyRH6UKGC7iPtDFA==
X-CSE-MsgGUID: 5xPxGdOBSwyh8320hOxw1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="24191405"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="24191405"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 08:11:25 -0700
X-CSE-ConnectionGUID: +eEPr80hTDir2cUM4iDbaw==
X-CSE-MsgGUID: 978+SGopQX2qolkdTZjAkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="85649184"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 08:11:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 08:11:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 08:11:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 08:11:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 08:11:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m3PFiO7o/0wGM6UzsWH01jl7kjG/uYeT3qT6z58/B4CmrIdbASbQ9AuTyBbKU5FJlIO4iFtQizT3fK0leZq+hwxIozfyMBuDwGv7y7ERkptN9z4goVbJJTMYkHFr5+bCu5hAHOKRL2YJM9d0+K+D7rYbIfytf3hf7RvOACIzx4NpCAtVwdIjSLvJdGQolzrRFlAFv4mOWnmDNWgqCIQfgKjzdf6fnEjWZezS1QVvSx9VYHdjmuHV7UrrPuPzo+7oLaK0xskz94eV6rcDBBiVzDDjGHvj+qbaMvpiED3zIguFdh0ouSKHGEk+1uSSdqbHfKKvyeSYDQcsP1yA92WTHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9bDSFKFYKrkbPU8Tzf9aKFNbx0xhJ3q+GQCBo3dAKa0=;
 b=le2KZ8EGirM8M3AeefdB3a1oHIEVWmHxT76lxjWKUsmr4llwQf6oHKVwh5qhZZSCu4Exma9Ree+rvRuvjwWyb+Mxhd2LIP2WL44v691sY9ngZSmxwaDz4a3jZ1oR3vk/MYamJy3MEZ+iS2Zr64egJ8SfHGWKsG10sSSVgQ00YvolS3muoE9Y8LFdNaLpxk/Gpw9Vf9xD4ng3KAdP2Z9mC3p7vinF+u9asTSgzN7e4EXtTuae3chVASMsSSUeIyxbgwM5ZpEaaMWBLX4Oh93WNTv08JrWkvUgJRh161/BX2ruvWq0TP9Sc348Jnj2xcJR15FzII4RZ0a2kuWWdtodNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by SA1PR11MB6805.namprd11.prod.outlook.com (2603:10b6:806:24c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Wed, 31 Jul
 2024 15:11:11 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%5]) with mapi id 15.20.7828.016; Wed, 31 Jul 2024
 15:11:11 +0000
Message-ID: <ee8134a3-1fe9-485e-a762-1b694c3f3d48@intel.com>
Date: Wed, 31 Jul 2024 08:11:08 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <igt-dev@lists.freedesktop.org>
CC: Badal Nilawar <badal.nilawar@intel.com>
References: <20240730230123.2695162-1-vinay.belgaumkar@intel.com>
 <3d8a5ff9-4d51-4eb9-9622-bd27b3a092de@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <3d8a5ff9-4d51-4eb9-9622-bd27b3a092de@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::26) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|SA1PR11MB6805:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e734ce8-ca60-44a1-ba6f-08dcb1730311
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3RRUm5EU1VOcWdneGJvenBvWUVYN0wxS1dWWmtTV0FPdDZpWTVqV0wxSEF6?=
 =?utf-8?B?ZmFMdlNFMW5nZ3pRUkpLQmxRZTMzc1NTVU1wVlVBU0I2TjVCNks1WkgwQktX?=
 =?utf-8?B?SGE0RU9BQXI1RFpWOTJGL0ptcWxFMjBocG5BZ2RhN3A0VVhPd3ljT2tBWjBJ?=
 =?utf-8?B?Q01KZlM1Tlg3RURpM0VtMlJycDhpTzliTFNrWjBTeU9sVnc0MTY3eWE1UDVw?=
 =?utf-8?B?WlVjRDBMUWdnOVhvb1hFWm95RXR1QTkwMWNSVzBJM1AvNCs1WUVUdkZKSnl2?=
 =?utf-8?B?M3VlaEg1T3A1eDZQQ2xZY2Z5cWhZTDVWRldzM09hL2NGUVArWTRIWVdHMWxO?=
 =?utf-8?B?ZDQ3SzNYRHZteFVSSzNRbWphQTB0d0lHYUhybDYrVkJ0cG02YnVLSXFrSmo1?=
 =?utf-8?B?UDE3Q0cwb2hFeHNrRlRnMXZLQklJNUh5TVFINmhhVGF4VkZIYlg0Z2c4Qldl?=
 =?utf-8?B?eHRBSWMzYlRPdEVyalBHM1VDckFZOURVQTJyWG5ITlpjcEkwYmllVU93TE9h?=
 =?utf-8?B?QnJMRFFGREVGdTlhOVlKelE0Z3k0OFo4TmxYc2dUWmpvMWFWMStoQTluRktP?=
 =?utf-8?B?SWpDbXA4MkVnWlh6MTMzaUQzYlJDeVZtdVZZUS91N3BUZVJMNitmQnpvV3Jy?=
 =?utf-8?B?NExZZjFoTGFOTWpIN2g5d1d2bUVwZzFlUEIzMjYrbzZYcG1LL0RwQUZVOE5U?=
 =?utf-8?B?QnlMUGlXNERPZUx6TDNwcmFjdHdVRHZHWWROckVZR0hOS2JTa08vbHNJWTRP?=
 =?utf-8?B?ckZhcm9zVDBuU3dDSHhCWXNvUkYwdEtXeVBITU1XdEVBbWdhUVBnd3JobjFY?=
 =?utf-8?B?UzZ2WjgxUlBLeGFyazNIR1NLN09Vc1Zza3V0QnpicmlIT28zZkpvV0UzdE5M?=
 =?utf-8?B?M1hLU0hQR0hBWDZVNTlIc0tmUjBLTjdHOWZOMSs5NEtxeTdHR0g3djIxWHhF?=
 =?utf-8?B?Mnlvc1ZhWjI4eEFwSDVYaDE2ZDJQVGJYTGhEOWlTdng0WU9reG9MMWJ1N2xt?=
 =?utf-8?B?a0FwWEdkNmRiUitoWUYrNWhCZUZYLzBwVlZMTzR5ekNYeTNDeitySTJHeWY5?=
 =?utf-8?B?Qjl5VzlFTG1OdzZ1NEg1TnUwTE41dWhFNFpveW01T1VyMGNxVTltczUzdEwx?=
 =?utf-8?B?Q2cxSTJFakZQNXlmS1JFU0tuOEJzNkNVdG12YTZqSWQvOWZRSlJIYUo2T04r?=
 =?utf-8?B?OEhmYlg1YXVzYTdhNjdMQ0JoY1VVemxIUVo5OE5uV2hPOUdYQmxqYU4vRFRm?=
 =?utf-8?B?SGZIdUdkSGE2eE81SlprZ2tFYUk2MlJybVFUb3FZQnVsNnFCTWhQQ3N6MWNu?=
 =?utf-8?B?Z3V5aGZDWFhIMkE3NTFwNFVBRWhWbUd5V3JkdTFybHc5cGY0aXBzblVyZFZB?=
 =?utf-8?B?K1VBQmtaVERkVkY0OGVLWVhYTVE5WTMyc01ObVFWMEJIV1I1R1VnOVk1dzhz?=
 =?utf-8?B?RGFHcm1zeW54UHZGZldtSi9rT3FuQ3k2UXY1ZG45WDh3WTBPSUhFQ1dHQ1JZ?=
 =?utf-8?B?c1JNdkZpTmRJb0piT3lUWTRQOUJyVEpyZEpFSkw5YUVEbloySVlQWnZwOHNX?=
 =?utf-8?B?UE16ek1yQkpBZjNxTElyQmpuQmhTSDZJNzM3bVBTM2dUbVZNNUtpbWo1QU5U?=
 =?utf-8?B?YWRsWHVvNjFDL3dZZWEvekpPV2RBcTdMQ1UzL2orVENnTm5ucGhZTWpjaGY3?=
 =?utf-8?B?dmNVdjFFNVNhMTU5dXVaUERiR29sYkJtWDQwSnVhNDR2T3lhd09YakZZQW5C?=
 =?utf-8?Q?wGUe423aT/6rYXy4Gg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3lWNFZ4K25YZWdSQnJlODZteFNqUkx5c0Y3c0FsUDU1NlA4M0FGakRjdVhh?=
 =?utf-8?B?a0k1aXl0dTNWQ2hnQmkrNm1yTzdlTCs2WkpEM2lSS21kNjFpOWJzK2orL1BK?=
 =?utf-8?B?OUJ4RFZrcy9ib0E2MnJmOVJoc1dEaStLOFgrWUN1ZW5TVFkxM0gxT0l4b1kr?=
 =?utf-8?B?NS9VVG1KMGxKRStnSHQzUldQekxROGhVQ3hGSjUrNXVqc1o4d3RFczRZS09Q?=
 =?utf-8?B?UnNzaHBQQzN2LytpVytVNWx5Qm9MYzAyQTNRcEIwbUFUTGcydnNaUjhkMjFv?=
 =?utf-8?B?Q2tFS3pHUjBDWk9uNTRnVFZHb3lqbmdKMm1TSXVHRWlhZlM5eTNKZE1xM2Nt?=
 =?utf-8?B?ckRZTzFxSFNSUGNwc2tyMGJ4WlZnMFE3a0dyRTJHa0t6dDhiQTFySHRDalRB?=
 =?utf-8?B?dGF4c1VCb0liY1RnamsyZGFmQ083OGUxMnRZcFhrbzZYNWtKeDBMSzg1UVk3?=
 =?utf-8?B?ZkVuL0JRa2h6WDZsbkRRbXF4MG5idWlHNmxuRFZkRlhVazl2VkxaSWJJUDFU?=
 =?utf-8?B?ZHdhWUFNS0x3RTFwclFlNDJvYTkzZEZwajVXZTNOOEtSdzA5UDRzeGZJTDFr?=
 =?utf-8?B?VGZaTENWajZxMmVQL2o2NnJTMGVVdEgrejIyVXVHOEN3VlFDamJwblprbUsy?=
 =?utf-8?B?MjFUTUZJd1V4aGpiWHdYcUxJZjk0TkJMS0NqcEpXY1A3OXJsWHVpc003K3JO?=
 =?utf-8?B?WjMyTXVnRWdrSk9lQk03NmV6SWpVQUs5d0xXeEgvTkZ6RVFSVFF0QVJsa1VV?=
 =?utf-8?B?eFgydG4xblhpMkNYTFp6aTc2TDBROG00UHhiRFFOdXhyMis3YmpON0gvNHRZ?=
 =?utf-8?B?Kyt6UTZ6V3pLdTZyOXFVZWYxb3BqNHlMTmlxTlRyeGY3VzJreW5XSkJZRDFQ?=
 =?utf-8?B?OUVJVkhpUGM5dkR5TTRxanFFZkVoc0RTdEtIUXp3NTNLZmRvN2FINXNMOXFR?=
 =?utf-8?B?WEV3VW5zY3R2NTMwaHZsTitxSWVBbGZhakFQLzhUeWNGS1lWbjNQZ1JyaUlq?=
 =?utf-8?B?TWdsdXA4cEp2MCt3ZVVUMm15aThnQ2c2bWNXR2NTWWNvNEo3VmZsYmRiV2hq?=
 =?utf-8?B?amluTTJlRThQVHVQVW1ZYTJJaDl2RmZmTEFwemJjOEd2dE5TTTZmMzE0L3ph?=
 =?utf-8?B?S1VuTWVWdld5N3ZSWnQyOEE4S0tBNXFVL0lGb3ZaNWJHMmttczBHdUI5dEJp?=
 =?utf-8?B?OFJJblFvbWFUd2V3bmhJNEFDd1pLTFBmWXZQNTcyemI5M0N5YytycGhUcDcy?=
 =?utf-8?B?dWpGd0V2TUswN1lXR3J0eXErTS9FUU9OYVF6SVEwRUp0SGJWTHpYdDI5S2Y3?=
 =?utf-8?B?ZVB5SUpWaGdqbGg0c0xKTDVndDNOWmFXMHNFdlRMRUpSZG12Zi9ZN0dLWmRW?=
 =?utf-8?B?TlB1Q3Q0c1A1aldteFNGMU5YUjZQYmRBazVUMmxZdi9qZWNHNHI1c0xyNDE2?=
 =?utf-8?B?NWVLWkREeDBGTmEycDY2Tjg3QWRMVitvU2NTMVo1TTk5NVJsZTFGWEdiRkN0?=
 =?utf-8?B?L1FsMFlkSFpDRzhTdGtSYndIWUlwakVhcjBKSlRiSTh1N2Q2ajg1RXY5NE5o?=
 =?utf-8?B?alRsYXRtMi9KWkQwdW9oK1lEZlliMG5pN0xQRHRZMVFFWElLWVlnUWNWZWpS?=
 =?utf-8?B?aGVDWWJKTVNiRlhiNFc5YS9icEJ0TTlxc0szYTVXbFFDSDhyYUpSN3daOURF?=
 =?utf-8?B?SDI5TUg5Qnh3UG1Db3MxZTNNaVphN0xMYXplWGNHaXpuamRmTDB6eHFMQXNX?=
 =?utf-8?B?R2o5VzBEMVpGNHlnTWVPdGhyS2hVWXdDZExrZDlwYlRCcGJOZnI5MWFlRkhz?=
 =?utf-8?B?UVg5RnB4V0s3cWRBS1E4NGdRWVh6a1pMQ0FpQ1Z1VDUzY0Rmd3pEWThTRXpS?=
 =?utf-8?B?SHJoeXh2VWN2YnU0Nlk0VEw1dmN4OC9QeE5wc0U2Y0d0TU9IbndnMVFOb3Zs?=
 =?utf-8?B?K2dKYmViK2Nka3IwdjI3Tjk4NysyaUJPQkhtU201NDRlYWZtSS95eThVOUdq?=
 =?utf-8?B?M2dmcE0ramRyWHdWV0FmS2c5bXQzdEI2TjAra2ZOejZVY3lRV0hORWdtc1pm?=
 =?utf-8?B?ejZVL2tpLzFVUFIzZ1k2elFod2JLcVZPR2JyRmREeUNWWnB0cy95UEdSY1Vp?=
 =?utf-8?B?THE1Q09jWVhRVUc1YlB6K3dhb20vN05zSU0yK1dKYUg1aytReWthUnVKSnhP?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e734ce8-ca60-44a1-ba6f-08dcb1730311
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 15:11:11.2824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jGuevfWD4kiefpjNn3R/6rEbCX7xsD+Xg6UWK6e1N4gyaa3DFdhiEWnSm9wjlfLyWs6vyCGAGXC7w80lYl05hayFJYAql0/zBm+xHrGhuBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6805
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


On 7/30/2024 10:07 PM, Riana Tauro wrote:
> Hi Vinay
>
> On 7/31/2024 4:31 AM, Vinay Belgaumkar wrote:
>> We are seeing several instances where the RPe, which can be altered by
>> pcode dynamically, is causing subtests to fail randomly. Instead of 
>> relying
>> on it, we can use a mid frequency value for these subtests and avoid 
>> these
>> failures.
>>
>> v2: Fix bug in the tolerance function. Remove rpe usage from freq_range*
>> as well (Badal). Fix test documentation to reflect change (Riana).
>>
>> v3: Actual frequency cannot be guaranteed to follow the requested value
>>
>> v4: Handle cases where RPe can be greater than min/cur freq.
>>
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2200
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2196
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2203
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2412
> Closes?
>>
>> Cc: Riana Tauro <riana.tauro@intel.com>
>> Cc: Badal Nilawar <badal.nilawar@intel.com>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/intel/xe_gt_freq.c | 57 ++++++++++++++++++++++++++++------------
>>   1 file changed, 40 insertions(+), 17 deletions(-)
>>
>> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
>> index 93ebb5ed0..c9d59508b 100644
>> --- a/tests/intel/xe_gt_freq.c
>> +++ b/tests/intel/xe_gt_freq.c
>> @@ -26,6 +26,9 @@
>>   #include <sys/time.h>
>>     #define MAX_N_EXEC_QUEUES 16
>> +#define GT_FREQUENCY_MULTIPLIER    50
>> +#define GT_FREQUENCY_SCALER    3
>> +#define FREQ_UNIT_MHZ DIV_ROUND_CLOSEST(GT_FREQUENCY_MULTIPLIER, 
>> GT_FREQUENCY_SCALER)
>>     /*
>>    * Too many intermediate components and steps before freq is adjusted
>> @@ -70,9 +73,14 @@ static uint32_t get_freq(int fd, int gt_id, const 
>> char *freq_name)
>>       return freq;
>>   }
>>   -static uint32_t rpe(int fd, int gt_id)
>> +static bool within_expected_range(uint32_t freq, uint32_t val)
>>   {
>> -    return get_freq(fd, gt_id, "rpe");
>> +    /*
>> +     * GT Frequencies are requested at units of 16.66 Mhz, so allow
>> +     * that tolerance.
>> +     */
>> +    return (freq <= val + FREQ_UNIT_MHZ) &&
>> +        (freq >= val - FREQ_UNIT_MHZ);
>>   }
>>     static uint32_t get_throttle(int fd, int gt_id, const char 
>> *throttle_file)
>> @@ -128,6 +136,8 @@ static void test_freq_basic_api(int fd, int gt_id)
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>>       uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>> +    uint32_t min_freq, max_freq;
>>         /*
>>        * Negative bound tests
>> @@ -142,16 +152,19 @@ static void test_freq_basic_api(int fd, int gt_id)
>>       /* Assert min requests are respected from rp0 to rpn */
>>       igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>>       igt_assert(get_freq(fd, gt_id, "min") == rp0);
>> -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>> -    igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>> +    min_freq = get_freq(fd, gt_id, "min");
>> +    /* SLPC can set min higher than rpmid - as it follows RPe */
>> +    igt_assert(min_freq >= (rpmid - FREQ_UNIT_MHZ));
>>       igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>>       igt_assert(get_freq(fd, gt_id, "min") == rpn);
>>         /* Assert max requests are respected from rpn to rp0 */
>>       igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>>       igt_assert(get_freq(fd, gt_id, "max") == rpn);
>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>> -    igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>> +    max_freq = get_freq(fd, gt_id, "max");
>> +    igt_assert(within_expected_range(max_freq, rpmid));
>>       igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
>>       igt_assert(get_freq(fd, gt_id, "max") == rp0);
>>   }
>> @@ -168,13 +181,16 @@ static void test_freq_fixed(int fd, int gt_id, 
>> bool gt_idle)
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>>       uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>> +    uint32_t cur_freq, act_freq;
>>         igt_debug("Starting testing fixed request\n");
>>         /*
>>        * For Fixed freq we need to set both min and max to the 
>> desired value
>>        * Then we check if hardware is actually operating at the 
>> desired freq
>> -     * And let's do this for all the 3 known Render Performance (RP) 
>> values.
>> +     * And let's do this for all the 2 known Render Performance (RP) 
>> values
>> +     * RP0 and RPn and something in between.
>>        */
>>       igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>>       igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>> @@ -190,17 +206,20 @@ static void test_freq_fixed(int fd, int gt_id, 
>> bool gt_idle)
>>           igt_assert(get_freq(fd, gt_id, "act") == rpn);
>>       }
>>   -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>>       usleep(ACT_FREQ_LATENCY_US);
>> -    igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
>> +    cur_freq = get_freq(fd, gt_id, "cur");
>> +    /* If rpmid is around RPe, we could see SLPC follow it */
>> +    igt_assert(cur_freq >= (rpmid - FREQ_UNIT_MHZ));
>>         if (gt_idle) {
>>           igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>>                    "GT %d should be in C6\n", gt_id);
>>           igt_assert(get_freq(fd, gt_id, "act") == 0);
>>       } else {
>> -        igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
>> +        act_freq = get_freq(fd, gt_id, "act");
>> +        igt_assert(act_freq <= cur_freq + FREQ_UNIT_MHZ);
> Can actual frequency be below the expected range of requested?

Yes, pcode can throttle it based on thermals.

Thanks,

Vinay.

>
> Thanks,
> Riana
>>       }
>>         igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>> @@ -232,15 +251,17 @@ static void test_freq_fixed(int fd, int gt_id, 
>> bool gt_idle)
>>   static void test_freq_range(int fd, int gt_id, bool gt_idle)
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>> +    uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>>       uint32_t cur, act;
>>         igt_debug("Starting testing range request\n");
>>         igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>>       usleep(ACT_FREQ_LATENCY_US);
>>       cur = get_freq(fd, gt_id, "cur");
>> -    igt_assert(rpn <= cur && cur <= rpe(fd, gt_id));
>> +    igt_assert(rpn <= cur && cur <= rpmid + FREQ_UNIT_MHZ);
>>         if (gt_idle) {
>>           igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>> @@ -248,7 +269,7 @@ static void test_freq_range(int fd, int gt_id, 
>> bool gt_idle)
>>           igt_assert(get_freq(fd, gt_id, "act") == 0);
>>       } else {
>>           act = get_freq(fd, gt_id, "act");
>> -        igt_assert(rpn <= act && act <= rpe(fd, gt_id));
>> +        igt_assert((rpn <= act) && (act <= cur + FREQ_UNIT_MHZ));
>>       }
>>         igt_debug("Finished testing range request\n");
>> @@ -262,17 +283,19 @@ static void test_freq_range(int fd, int gt_id, 
>> bool gt_idle)
>>   static void test_freq_low_max(int fd, int gt_id)
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>> +    uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>>         /*
>>        *  When max request < min request, max is ignored and min 
>> works like
>>        * a fixed one. Let's assert this assumption
>>        */
>> -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>>       igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>>       usleep(ACT_FREQ_LATENCY_US);
>>   -    /* Refresh value of rpe, pcode could have adjusted it */
>> -    igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
>> +    /* Cur freq will follow RPe, which could be higher than min freq */
>> +    igt_assert(get_freq(fd, gt_id, "cur") >= (rpmid - FREQ_UNIT_MHZ));
>>   }
>>     /**
