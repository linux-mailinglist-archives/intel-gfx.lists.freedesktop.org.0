Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A579B049C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 15:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA25A10EAEF;
	Fri, 25 Oct 2024 13:53:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jVs11Np3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 707C210EAEF;
 Fri, 25 Oct 2024 13:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729864398; x=1761400398;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=DKJFP7//DZ9GvA/s5zTyA+QpgtkyIKzTF9mHYEeXd/0=;
 b=jVs11Np3jS2U2+PHscEpiuxHfWYkEo4RVvtvhAcSkJWBTuNOYo2H73XT
 htAxYwVJyktIP77YT8oJ8OfVFTpWmEvG7oo5nNNAB55lbzeYqpR5ZUInz
 fQQ9Q/rsATPXnTLc/DTtDY+LPae2EgQ9Vt7H3yvNWz7zjQ4Fdy3dkrBu/
 moQKqxYiPQOIsOnsFLKmWv+PB1ISdAXocfuJSBljFF8O8TS6MdLVzqPlh
 aVYp8UR8wxZaR4Xpvs+LOsvn8VGjvQ0qVNYM4j5MTTDbRao6GONuui2kZ
 6iwtfYzHiTz4VqQJtKGx9/a4oBbeS/sN+WiJudgsv2RwjiymNERFRW/4x A==;
X-CSE-ConnectionGUID: lMw4h93RQlmWsVD0Ugrzig==
X-CSE-MsgGUID: HyhFNuXxT5KO+atmQU/okw==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="28984260"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="28984260"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 06:53:17 -0700
X-CSE-ConnectionGUID: /Y+T48vATnKIu4lFCZPEmg==
X-CSE-MsgGUID: 9PHjvZcPSEWxMARi3/2QbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="85688581"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 06:53:15 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 06:53:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 06:53:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 06:53:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tKXBIq6d7lZOnrwdxz1d/yc4rIPo1AOSwlezI9gk1PXUjTS26KG6Q7RgeRPj4EU5Scfb0K9DEges+pQCb8Uqc+j3QFB5iFm5kh+BEp9YU/yIMA+5xaSD/llZ9dmirvcFIXVLF3BibUeqiaXAO81/tc6+ZGwtUySdfqGMsHjPxfUSsgTsDg+xd2imOcfNwdT08OODFCIH1vpor6sxV6aIdkaVoGBF6YkXXFwceML1i9589mf9b4V5a1cmNT0VAXKAdIRr3ykAntWKgJd3B5jzYwVwxONuF5wkHnilVTkkkomUo+nDioHnlrheyVHQ6Fwh8f4jgc4tqjOY2hE28cnwvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fDYzKX8dvYLNQ2a+Yg7+9lKT1tcF2uDE0Jk1hAWejwU=;
 b=OWbVpmVib4XKmkRqqqPEYvqqLVO0gRUx6GRVCX5q0NkacGPhgwQYCYdgS7zFu3nK/V/74/HK5ZlG2Zyj0TkSTEjjz9Vt7A5OflTIjLcN1BPIfpMxNDYloGiij/2iUqYDoGQ7/0kxQxMTGJcGSZSlgO3ek2CPP+PQ84ac2zxrt6VfWP06wXiC9VryhIenTHaXP5KqeqHvu9h8WGS1s58rG8/45il3uIBI97M/Hd5IfahsDquSeskHWtDajf+O2gBlJXNDoYCt7aV1qSwUNSH6SIpBxluNC+reT0bqjyww7rt2eECyK51grgQNPouqDBS7kctOLjL5U92InI5AgXaSBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA2PR11MB5177.namprd11.prod.outlook.com (2603:10b6:806:11c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Fri, 25 Oct
 2024 13:53:03 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 13:53:03 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241024223114.785209-7-clinton.a.taylor@intel.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
 <20241024223114.785209-7-clinton.a.taylor@intel.com>
Subject: Re: [PATCH v4 06/11] drm/i915/cx0: Remove bus reset after every c10
 transaction
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>
Date: Fri, 25 Oct 2024 10:52:59 -0300
Message-ID: <172986437914.1548.2518455286416273948@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P223CA0023.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA2PR11MB5177:EE_
X-MS-Office365-Filtering-Correlation-Id: a5bdd84c-02d8-4eba-5ff6-08dcf4fc5885
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bVFZaUdmL1pmRWVYWDdXMHBWQ1BMa1QxbmpOdW9YMWJIRnJHcnYzampTVEd2?=
 =?utf-8?B?YUFuWkdwV05oQXYzYTlzdC8yUE94YUFJdUV0OXl6dk5rUTVlVzRQaHZDcjNR?=
 =?utf-8?B?WC92cXF2WksrRDlXSFM5UkphbmFSc0dOYWVIL3NpcGZXaWRCcGdKa3NpQXkx?=
 =?utf-8?B?KzkzK1hDSUdvbTVaLzJmRCtldDZjR3l6OWZhRkxXVHE3MURnN2pTODRucENq?=
 =?utf-8?B?Mmd4N1l3Y3VlZ0ZXYkx2WXd4SHZTdDVEMHlJNFJqbFh2MjJXTGlabjQ4b01l?=
 =?utf-8?B?TGtXcDFCZDFMUjFZblpNWk93TEhIZ0R1R3pEMVhra3BNZFBzZ3NsYVVSdkFw?=
 =?utf-8?B?eXU1eW1BaXY4SjRVbjZRVlh6OFZMUTlEMDVuOW92WXR5emh5a3FmRHN1MUQy?=
 =?utf-8?B?ZVM5eU9peXk0WnlpS3VXcklERmlBWlRLaU1nT0FmUVpxeXdocXFaUWdpdko3?=
 =?utf-8?B?clM1cXo5OXJRdm83SGp3UkVyWUZUd2RNbU45a0Y0RUN4NzJRRThnRWVBUFYy?=
 =?utf-8?B?SnI3bzNaQS8vT3drQ2o1a1JNNU5NbThqNmUvWG91V2E0TEx0S2JoUlh6cStK?=
 =?utf-8?B?bExzRDFteHFnZ20weGErbmVaZTBKcGdMOHJWcmFnYmNtdEpVVHBuR0tQN2Z6?=
 =?utf-8?B?eHIzbnUrUmpLQ0Y0WXZiUDcraEFPME1wWnFwR1c2cjA4ZWVLeXlFN0hDeHlZ?=
 =?utf-8?B?K3pJWE9Wcko1TndZbUl3aXFmdENaaGpGa1d2YWxJakZacDMxaGVicnJ1SEha?=
 =?utf-8?B?d1I3NVRHMmxlUkoyTTloSUdIVjhpU0RoNGQ3eVFob3Yxd1NJcldTalNVRW1U?=
 =?utf-8?B?TUFHS0pIOE9sdStDM1pKdjVnSnhCK0VyK1RNU1J3b2diMC9WbDRvT1puOWtK?=
 =?utf-8?B?b0lCSVZsUS9nV1FGQTExZXBMaUpOMHpxSlY2VkVoMTl6NFR4RWdNa2lzRDdS?=
 =?utf-8?B?UXB6S043d0JkcVB3NUtvcm1LcTJRWXBqRkRVeWxCYmtES2RZYTJWcndhUnU0?=
 =?utf-8?B?WFJHNk9xV2FKWmZldUZZNC9tUVp6TDVCNjVhcmtaMEdDQUl3TExqU1V5SXYz?=
 =?utf-8?B?RnhyZ1dTdExZZHl2OHZHR2RuZXU0cm0zSzF4VTBJbmY0WlBtQzc3Q2tjVDl1?=
 =?utf-8?B?U3lsRTdGcnZSSkE3NU40UjhSMTZObmFQbktVNTREa3lzcTFwSDdtUW1qcVlP?=
 =?utf-8?B?LzczUVlIUjI4TDU3MHVnZEk1ZkdHaS9ITTRzbFZCUS96UzYwem9tdkRuZHZm?=
 =?utf-8?B?WU5wc1BJZk1UZkZjcXh1bjdhZVRCeEtibXRPL1ZDbjExZTJ6aDQ3RHdQQ1pk?=
 =?utf-8?B?clZlbGVNTUFjM2RTaXBQR0lIR1VTdWN4TkRLRkJ1ZEdqQnUvMThwUTc1RCt6?=
 =?utf-8?B?L0I0SEZQWUVMb0MwNWdBSTh3Q05JRlhaRXhXWnJmMzVJRGhWWDZ3a0YzaVBw?=
 =?utf-8?B?QkMxTUV0S1puLzZpYVN0elRsT2pRazZFaCtNNTVNSVRKQytUcDBPRFRIeXd2?=
 =?utf-8?B?ZVhuVzJraUwrdzk1NWhZR25Bc24wR21jS1ErYUJCUUJXYlFwVEd0M0kxcFh6?=
 =?utf-8?B?UHhVb1JVM05ZNTF0OHI0NWhDR1Bmb1JKWGVKR1JoS1hNSXJYT0FxVm9sclFH?=
 =?utf-8?B?U0MzdW9kVlBoYUEzeCtkY0I2OHdya1RMZmtKckRaSHVLclpibUs2RlhyQnhR?=
 =?utf-8?B?UjhFcTBaUWpickdHWXdRcUlsOE81dEdrMTFFOHl1bEZWNEZTOE5DU0hMZmJp?=
 =?utf-8?Q?DtM22FAfvRZbTryMT99HMHZEZBr4ur4mR1d2OHa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGk2VVJaYzZMQ1dwemRzaDFYTTQvbW94ajErWjRCODFiVXJndzBpK2xsbStm?=
 =?utf-8?B?Qy9nc0ExdmVtMEdyZVZYVklnLzhkWEdIdWFjUlMxbjUvVmZDOXdEQ3pwR1NC?=
 =?utf-8?B?d3hZZjlWQnkzb2IxWlp4dzZjVXk3dDRRNnlodWFwWUZIQUxKWER1aFhMZUR4?=
 =?utf-8?B?YUhlbC9HNUhnbTNzaUtHU0JrcnZObkEvUFhZZCtEc05RUmpHbnhqbm1maHJw?=
 =?utf-8?B?VGF3MkViVlRuUlgyayt3UWxJbjJvSVRkRTV6QnlVRWcxUDdzYnB4Ynh3VDhv?=
 =?utf-8?B?dzhQWXNzVEtrSnl2Ym1rbWp1OElsQ01idkJTZEsvcDlNUmZWUDJhbUFmOUJJ?=
 =?utf-8?B?RzlsUUNLZ3RjZ2xsRzBYMCtFWk81NDk0Smk3SFRDRjdUaVVudmJlSlU1QVZu?=
 =?utf-8?B?NDg5ZVN6Wk96bTB4N2pzOHFHKzlNS2ZxeWtGcE9WbVhhUHdPN3NVWGhseCsx?=
 =?utf-8?B?Z2FSaXFRamxqU1NyaVo3L2ZDUTc3V09PakdzR0pQTmw1K3pFVlE0MUYzRkQv?=
 =?utf-8?B?alRXRTJOMkpLRHNtaUZCL3ZITzdteGlaZUExUTNiQUVheGFuUTcyMW56RlZq?=
 =?utf-8?B?dE1EZlBobFZLSFBMWVo3TG1NclNNay9BR1M3U0s2dWdXam8xK1VpYk53cWoz?=
 =?utf-8?B?MG5kRzdzUlBFVG8xT0lLQ2NEZUF3U0dIUDRsUDJjOWdkbXpjdEhFdXdOMk1h?=
 =?utf-8?B?dWo4QWN1M2JqUHFtdEcvN2ZMeVl5U1VmR29nc0N0MGF4LzVDSmxDZ0NnVFQ1?=
 =?utf-8?B?L3I3YjE2NXJVMWJLMTkvRVdGaStkbzdPaitKd2ZxbFpNS09Sam13UWs4R28r?=
 =?utf-8?B?OTNaRFRKUU1yT0F6d0I5Wjd1bHRHMmYwZGw2KzFSeS9HTEFRYXFBNmZyeXA4?=
 =?utf-8?B?VW1XNGpkd1hEL0lBQlo3cEhZUDk3UXhocWpPUmRPck1WRzZ2Zzh1eGxPR25C?=
 =?utf-8?B?cHEzVElJTUZYellRRm12d2pYSk9YTzcyUnk1VXVoSk5jWU50Z0F0SlR5WHFL?=
 =?utf-8?B?aTd2WG1KSXEyUUh0U3duOFJvNkJSY2hpNnZyck91cTA1alMraEIxT1U2MUNz?=
 =?utf-8?B?ZEpEMGNqbkRqQ3psanlsY0pYSTg4ZDd0VUR6OGFBZWoyOXgrYjUrN3d0bGl6?=
 =?utf-8?B?dnh2L3VTRVNRZnBReG9wRGxUem5CbHY3MCs5dXY1clpDb1pBNmY1ZlFvWEkz?=
 =?utf-8?B?eTFNbUF6T01uYWZRSzgrS1dKbkIxZElpSHdkQTFlRkR3WWZjOWwxaENXbHVu?=
 =?utf-8?B?eG9JZnhUSGtjNlIydHRNR1hoeGg2bTMwV29jdVBaLzh1S3dwdE1HNnlWdUhN?=
 =?utf-8?B?WThhR3pTWE1Vcm9WU3Z1RnA0VTQwVnhTUWxISHQwYTVDU0lJNjlmeWZlMXlk?=
 =?utf-8?B?NXI1RzF1WmVSTkZZa1J5WGp0eDVTa01Pdk9iWTJjaTViMU9yV0txaWNUVW0w?=
 =?utf-8?B?NVVuNU56MHNrMFNIMVRnTG8ra2NuYkNGUmp3KzhJUjdtanJvRFBuMHVZbjF3?=
 =?utf-8?B?bWJTWFJpRzFpOWhVMVcxOGpJQ1V2Um5BZXpvbHp3d1YzdWszSGZMbGoxa3BI?=
 =?utf-8?B?WHNCb0xmL0taSkJNdVAzSVV3Zmp2NEE3NzZybE03Nzd4ODJMaVB1UkpkUVZU?=
 =?utf-8?B?ZFNFSFA0QjZsdThROFZ0SHlTRko2bTFKNTkxNkIrRnFmVm5nNDhwUm1RSE1U?=
 =?utf-8?B?a29zV3M4U1BiUDBjY3Bqa0tqUFZjV3dsbGpvWWtkZUxxZWxnamswZm45OGRB?=
 =?utf-8?B?aElHazRONmNxNTBNVUZDYW5LSkZwSDM0cjA1VVZLVVhFZjdqUkdhZGFIV2dh?=
 =?utf-8?B?dFEvNUlxamM3SzlNL0NTNEdKNHQ1NlZ6RWxnK1haeGJldWdGbXg0N0h1ZDJX?=
 =?utf-8?B?SXlXbDc2Q2x0NGtpVTQ3U24ycS9sdXpOZVFKK1FiRC9YZ0JGT3kwYjhpY3Yx?=
 =?utf-8?B?c3ZqdGFmVldzemd2YVhQazRZM3JramQ2RXlrbnJFOEsxUTNodWpoVFBQdGhD?=
 =?utf-8?B?TTkzK004cGNYK1Q2eDlobmUxM3c3dUdzcUZXQzAwTWl1d3lzOFZxdkhiMFlN?=
 =?utf-8?B?Yk1kZHV4L0NhU204ZkN4YjFxdHB1YmgvaWE0K1dxdk54eFo3VXJCS21yMjZ4?=
 =?utf-8?B?TFJMd21SMEkzaWEvSVQxd2R1QUE4a3BneDFsblRhcjhiQms5Z1RqMHp0RnZM?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5bdd84c-02d8-4eba-5ff6-08dcf4fc5885
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 13:53:03.4976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iZZW84Im97brzhH9UsIPEFxjxUHzVRYQmWirtKBa9dlfO+85XwP5LSwiHPKB+hkwqITsHcNcZK3DsO1qK1sv3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5177
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

Quoting Clint Taylor (2024-10-24 19:31:09-03:00)
>C10 phy timeouts occur on xe3lpd if the c10 bus is reset every
>transaction. Starting with xe3lpd this is bus reset not necessary
>

Yeah. Resetting the bus on every transaction was never part of the Bspec
and it was added as a workaround for issues observed with MTL, right
Mika?

I wonder if we also see the issues with Xe2_LPD... If not, maybe we
could instead do the resets only for Xe_LPD+.

In any case, since the reset was not part of the BSpec and was causing
issues for Xe3_LPD:

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

We might want extend the commit message to provide more context (i.e.
resets not required by the BSpec and were added as workaround for MTL).

--
Gustavo Sousa

>Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++--
> 1 file changed, 4 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 4d6e1c135bdc..c6e0cbff5201 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -224,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder =
*encoder,
>          * down and let the message bus to end up
>          * in a known state
>          */
>-        intel_cx0_bus_reset(encoder, lane);
>+        if (DISPLAY_VER(i915) < 30)
>+                intel_cx0_bus_reset(encoder, lane);
>=20
>         return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);
> }
>@@ -313,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder=
 *encoder,
>          * down and let the message bus to end up
>          * in a known state
>          */
>-        intel_cx0_bus_reset(encoder, lane);
>+        if (DISPLAY_VER(i915) < 30)
>+                intel_cx0_bus_reset(encoder, lane);
>=20
>         return 0;
> }
>--=20
>2.25.1
>
