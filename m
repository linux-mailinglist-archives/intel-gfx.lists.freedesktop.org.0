Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F685905D86
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 23:18:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CACD610E0FE;
	Wed, 12 Jun 2024 21:18:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WU0coZd0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49AD910E08E;
 Wed, 12 Jun 2024 21:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718227092; x=1749763092;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Mtf8rSAYPzzLtGVyT155nHwMzCe1w5RvB4KO03mh2yQ=;
 b=WU0coZd0t+rZ0KnynzXFNuiCaX82+b6qicPdN6UzgmE72aWAIjMyyguW
 +Ollv9kNzfs9P98ddcMCThKi8QGlqE8p71aqXiuhVg2/flylkuDYTFBQx
 gh7S4JYjMQ5Trc2aOEk2bDRyoEQMhhYUe4BXSK25mwOy9N0TKvtJO7Myr
 FbUMfKWQ6K/YhtkGy+yBQbbX7P88no//S73+wnub3AiBJzDsBlfj15Y+5
 Bg6YNeYz49ln0nn7ufNR+2p9r9I8ptpfJByX3wEDG3HdwgDXhE28U3LeY
 5YMJYz447zz/SeX/ZwVA5VM6HFag9F9qEtO7PTE1xDOOrCRXdAV9rHvpf A==;
X-CSE-ConnectionGUID: LmXkmWXzQMm/7Py+SJ2yfg==
X-CSE-MsgGUID: h/MkRvTjSLW6qj4z0ntxeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="25651854"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="25651854"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 14:18:12 -0700
X-CSE-ConnectionGUID: PgBZSjauR++rAPsrGRzqSw==
X-CSE-MsgGUID: mGRtHFduS4u2SwtDf7oVcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="39806094"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jun 2024 14:18:12 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 14:18:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 12 Jun 2024 14:18:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 12 Jun 2024 14:18:10 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 12 Jun 2024 14:18:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h7FC+LOzUnQIgYrUawwUQddqk/vLX4s4ZEJSHhkdkV8x8UQN4Cz5uqiAGZPdNIPgvQ6KTPyUJ1pPtU98/f/lwKmxvSDreqQCS3K7zOrhOYdqde5GvcyiYn+A3j7jXG/vuTTeAQTNKuRiYeUq6PhCvrMprIeuQz2usp/D3UhczTOVujK7haxeYtp77dkMcKcZra+NfYUouiymDKMIi/CDTEWUQayBpV6zY2bG8gJFlVHjNF5TrRBf05t44jCC0JeENgQ9EXxOYXCm3A7FEt3Xezt9QgJehd8bGj6ZguUnXqEMM3bj6MgSW2TQWbeZj0F+vArtxi/HOwvfiZqgj6dtKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=asli7V8wYq++6Daww/bTjXenl09EcIzCnidfINNwpFE=;
 b=e6W+BQDqlPL/KjnQ+b/sTO6+naVdqXL9wa4QxLeHgc3lyo7tqCvuSI0755BchpS0c3pL7qj8q+hMxBNN+VFv4xQKIef/MiTe/oS5BkZKN+lFJm8/NzKyhYYscCblbOs96pl49AwqJwl0zhwhwQdLWpH1CD2V9FWZUIz6mfYMvdpZ2Zx2Q7RhO1Y11kWglx12sKbaR8Fxcl3jLbabSdSiLdDvAbMq38tanD/b1O/LgWxUcB0UzsYEKb83eHOkQUlY87A95WJ9bmKqSGS54DuXg0PmuxybQYP55CO8XlHBCEN8PWjMQbaIiCVxYSA/96P6tI2v8hQ9u0KsMRYynrg6yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by PH8PR11MB7142.namprd11.prod.outlook.com (2603:10b6:510:22e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Wed, 12 Jun
 2024 21:18:08 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%4]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 21:18:08 +0000
Message-ID: <3a3a5560-ee3a-47e2-a609-faa64ae78475@intel.com>
Date: Wed, 12 Jun 2024 14:18:04 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 0/7] Promote GuC ABI headers to shared location
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Matthew
 Brost <matthew.brost@intel.com>, Daniele Ceraolo Spurio
 <daniele.ceraolospurio@intel.com>
References: <20240611143008.1900-1-michal.wajdeczko@intel.com>
 <2d9b0d82-3e2f-478a-bc7b-b6e589c70b38@intel.com>
 <a0d7968d-81c5-4328-8654-9feab682655d@intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <a0d7968d-81c5-4328-8654-9feab682655d@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0182.namprd04.prod.outlook.com
 (2603:10b6:303:86::7) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|PH8PR11MB7142:EE_
X-MS-Office365-Filtering-Correlation-Id: b310377b-ed28-4e06-c334-08dc8b2527f5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230034|376008|1800799018|366010;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RWdaM3lkSW9TU1hpQTAvRjJoS3hlVTdwMkpZRFNnUUNjY0J2dWJDOXJKYnhL?=
 =?utf-8?B?TVVpNGlzdjV5ek5ybFlpTjhJdzFSa25WWGJxa0hvREViWDFMZFR1V1lhcnpU?=
 =?utf-8?B?T0h0Rmh5ZDBFUmpoR3A2R2VGVFpjVFZkSHkxM3NVUnNTaDJJLzNDZk02NlFp?=
 =?utf-8?B?NEUyVlNieUVmNlJLZERIbjFwZTZ0dDFlZmJ3bEQ0b3duRitwU0JZcmwyNzVI?=
 =?utf-8?B?a3QrSGM5MkVUVnJSZ3YreEUyVFgzOUxRenN0MENPRkJwSG82YjZJaUlNM1p6?=
 =?utf-8?B?RVlUL2UyQ1NpdTZLQVY0ajZMUkZxc0lSb0o2eFZZcG1OakdYdUhyVE9lV2JQ?=
 =?utf-8?B?b2NvZDU2UGZVT1VnTm1SNHpxQTFjaGVFSERnVUg4eTkxOUdoZUd5dUN4U1Av?=
 =?utf-8?B?VzVkL3RKWk5RYTNhanF2YVlKSllVT0lTaUEyMDdoa3o2cmNxN0tmeS9KTUd5?=
 =?utf-8?B?U2ZNa1Vxc1J3SFpLSE1FWTBhMnViOENVZnllZ1VSVUZHSjlTWUFpczZaM2Zt?=
 =?utf-8?B?bU12dnJFZ2prZExubnZQeHE2blR3dk41d3F0WXJQT3p1bDhpVkcvSlpuZEtI?=
 =?utf-8?B?djArYVNIYVorbW54K29DZ2U4bWNla0d3UGkrKzh5T3BKcTFmTDZ0STgxQTZi?=
 =?utf-8?B?U0tmUkw3T2RFTDNXYTZ2NkVScmVrdnRGcHlSMjFUOVdtYTdIcEVSd3BDSStj?=
 =?utf-8?B?cWVGUHh3R3lCcUJOS1J6b0wxOHZSY1dFUHIvRmNxOGNiVlArRmkyZ3p3bVFG?=
 =?utf-8?B?YmQxVEo0Skx0Si9EekpFT0pzNTN0NGMzQ2hqVUY3UUR6cGxaOE5ZVk1ETXRS?=
 =?utf-8?B?R2VOMk1KSUxrMnhXd05WeGxoOWRuQk11Sjh1S3BUb2QySFhRckJjMGg4ckV2?=
 =?utf-8?B?dUlqRzh1Ym9NcFovN3VyaDBWL2ZtNTJUNng5Z0Y4WXE0VFNmSlpaR1VtYTRV?=
 =?utf-8?B?aHkvSlNCdVBwbDBxWVllT2VudE1KK3VJZDR1anRJdWJ6Y0prcG9sUlFrOUhW?=
 =?utf-8?B?azVlNmFRL0VPOVl4dG9PcjYrQkZvMFRkRjZ3N0tOMmcvN1ZMcHFlczIrZFkr?=
 =?utf-8?B?bWF3cXJHdnE3aTNicXUyTmRMY2FzYkR4MmxSZ0w3bFhPMGR0MXNxRHEvSmdl?=
 =?utf-8?B?MFZhVGs1OENWZlFTKzl3SFhBWVJPN2ltemIzL2R3ZWM3QklDbDlGdDlsOGRW?=
 =?utf-8?B?bGZGdVRZUGo0aUdwU0c1WDFIMUZJODZxRDd6bGlOV3NzdGRyVDJ0OUl2M0hj?=
 =?utf-8?B?UkF2MDIvRlp3b1Q2SDMxNldHcmZqVDdBeWNENGNwR054NVFhbFRaTG9FOHBp?=
 =?utf-8?B?VXh3L2xWaUg1TmZpV1dCdTdmcm11RDBzbWNwVmZaV3FVS2MvZzFnZzlQNk5s?=
 =?utf-8?B?SFFRaG5kcWZxVXFTOTVkR1Z2eUVwNDRPbHhHaHpLY0FJOElxblBBeWx1ODRO?=
 =?utf-8?B?WEpzbUlJZCs5WXdaSUZBamJiSFUvUkJoQlVBMlhBVjZ1aDNoWFhTVDVuUkJ5?=
 =?utf-8?B?NXN6dHVETkJoZ2dRdlRWTFRmMkNucmNpWXdEWjRnN0g2OTROMTNuS3BIeFZk?=
 =?utf-8?B?S1dOZzQzSC91U2c4Q2pCaThtOTAvS3VwOHN2aFRnMmlXVFE0c283V0gyRThU?=
 =?utf-8?B?cEErTGUyTkJwVnV3bWxCQTJod2srR1dkQTRGbEVvMVh0NHhWeHlMVlhFL2Ru?=
 =?utf-8?B?eDhtRkxDV1BjODhTb3R6cGJhYXQvcUd2KzJqWlVidHk5eHJlT3p3ZmRBWEhu?=
 =?utf-8?Q?uBjhHc2QadBcJf4Rw3W2VMKqVsiIT+BZF54eyia?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230034)(376008)(1800799018)(366010); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MjJYbVBCS2JWOHdJSUEyeFBxOFR0QkJ6c0l3Qmc0TUo1NWRlazJLcm93bFNQ?=
 =?utf-8?B?eFlTY2EvTFZQbzAyY2lmU3RYOXQzSnJMeXMyWDczWFgrd25TeXhtdGQ1QzRE?=
 =?utf-8?B?UjFWUmg0Szcwd0tVRlJBekRQL0ZjVllTd3AxZjludnk0dnkreStJcDJXVmcr?=
 =?utf-8?B?YW5qYVVQV2RmWVc5RDdZUXpOOWh0c2VvQmV4TGs0cytldzJGWjdTSW5qUDA4?=
 =?utf-8?B?K3NlUUxBakFLVytRQUFtU0tITTFYQ1o3ZUVmTW5MSmF5eCtiRDBMUng4TGlM?=
 =?utf-8?B?Ui93WDYrTDFLOHFYWm5hZC9yejhKK2tQZFJPVnU3OHdORVdQcC96MWxJSzYr?=
 =?utf-8?B?cDdUQS90OXpyL0NoS2hTUmhZMDljWStaUXg5dFZ6KzNGeUt0MEVCRWtjTEt4?=
 =?utf-8?B?Q2RnUWpqS3VERWg1VENuOUo5enJqMzRhcWlCSjZkeWtpS3FrSHhORnM0VnRD?=
 =?utf-8?B?TnNUVWo5dThsSUc0M25JYWM3VVhCTUVoWkx1cnV2dGRydjFPanRpQ3hxb0Nl?=
 =?utf-8?B?VXdtQnpGRjk0NDBWVk9wU3VYeXhXWHFQNHRqUWFQNjBXV1Y0UlljUFIrR1pG?=
 =?utf-8?B?RG1FaHVMUlhobnZVK0hoNUtRTEI1MVhtYkR2ZThsRU5DdDF1c05vSmluZ2Za?=
 =?utf-8?B?aU9vdmtoS0h1eE1aSUZ3QmF2VFo5SW9DQzhQZUpZeDBYQ3J2WDFKVnRtSlJ4?=
 =?utf-8?B?RmpRSlc4VGpXeEdta1VQQUd4K1dIclJ1TDRueEJoU0VFbEFzTGVwc0pwMHlj?=
 =?utf-8?B?bWF3V1ptYTNRSmpndE81b000TmVpZzNDeW1iV0ZRajljeUNTSnIzbHBkenBa?=
 =?utf-8?B?ZytZRUJQWThtREZaanBuYi9yZGpSbnNFK08zd25iMFU4dExXUzlxYU1wSHJZ?=
 =?utf-8?B?TXZIVHRjUVpyd3JvaC91aWN5cTNHNEYrZlljTU1tNWJrLzNwa3JnQk1ibzRM?=
 =?utf-8?B?K2hWNW5XRTdTZlM1amtoVG9pNzFsZXdFTStZUldnd2EwYnVTYlRVUDJWR3Qz?=
 =?utf-8?B?c0szT25ROTVPWGdCaDFnOVBTdzZOdnY4M3p6YTliQVlSdEVqb3EzajJnZUNB?=
 =?utf-8?B?b2F2WE9sZG1SK204S1MvTi9IL3diaUpjYWZjTk5nb01UZHpzUzZLeUF2aU5F?=
 =?utf-8?B?M2xoYTRNSVVVOG5pN0pwZHQxQS94MUhTejMrV050Q2dUY2lUYityY3hqYmxm?=
 =?utf-8?B?VFp4bUJZczlnQ2dyZkpVM0NJWHNuaTN4NXR2cW56cmJuKzQwWTBYS0FoVEJ0?=
 =?utf-8?B?c2NDWVFwS2xWNERWOXFEby9IOEVRZklWSHNBQVdORlE5bW9zQi9JY1J2c2g5?=
 =?utf-8?B?aStIUk9nYUlmRVAvZlVnR3dtYnZWanQyTTBPaWhWQzdITTV3bFhTTXY3aHNu?=
 =?utf-8?B?YS9vdWV4a291UFFVcEFPdXJRZVVaZHNDMWNFT1RwRzlCaVVRYlg5OFRvTEdF?=
 =?utf-8?B?WE92cytQNUpJbUR3dnN6MjF5SDAvNWhTTWtqVFd4ek1BdUk1UHM3YURxY2pm?=
 =?utf-8?B?eVRIb1VZK0NyYzlTME9abmJoVTl0QkM0dVRldUdRK0dISlpZYTlJemVCanlj?=
 =?utf-8?B?TjJuNjhVelNuRXVMaUpyNjdOUVN2U1BZNm0xbnJPSFo2dURIcE5LSm9raGhx?=
 =?utf-8?B?NUZpekhtRVVqNmdvU1JDY0ZpSzd0SkhuTnFVZFgzMTRlaDQwZEFiQzU2dHVu?=
 =?utf-8?B?a2RhWlpPMzVTaG9nZDk5SFVId01IYTJGYVl2M3lBVFFpRkFXUjRNKzBzRVov?=
 =?utf-8?B?d0w2ZmU1R0JUK1YvalJzc092cFVwY3ZETUM2MmYrZWk2N0RwVDlxTTZDcGlS?=
 =?utf-8?B?NSsrQU44ZUphTU1FN1A1VmxiQ2pSRGlPVUJRTWRoWDB3Rm1IL3pacXJZdlVW?=
 =?utf-8?B?WU9oaEJRS3hyWE1oSllwbERuSWY2c2lNUTJxWU5qQ2xyTDlzbGdYc1VGVTBT?=
 =?utf-8?B?QzJJQ2VKNXByb1ozckxIZUJyd1JKTkJLK09OdkVlUC9oTVkrVzVsMFFEZzdE?=
 =?utf-8?B?S2N0WkhYV3pMNWpUS2NEbmE3dU1nUm9kSVZpRzJYb0ZQbVY1QnFaOGFxSC95?=
 =?utf-8?B?T0t4bEhHTitMUkIwb0J1OEZnbzZLMWdyaFZLVk81aWQ2OXlVWldQd3gwWUJh?=
 =?utf-8?B?cmZHY1JmSUNxYUZLSVg4WEQreWlaamJjWmNnT2wxV21nZWpNRzI4bWYwMUtB?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b310377b-ed28-4e06-c334-08dc8b2527f5
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 21:18:08.1939 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k15QiJs/ZDpvTpHOYwCRgD5D6OYGqRG6qmuFoJADspUBK2oKfLe+IjW2oASXuJh3sKDcKpw3W74r+iYb/FRjZxw/vZmgsNeX5qSQUGE0+bM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7142
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

On 6/11/2024 14:45, Michal Wajdeczko wrote:
> On 11.06.2024 22:32, John Harrison wrote:
>> On 6/11/2024 07:30, Michal Wajdeczko wrote:
>>> There are many GuC ABI definitions named in the same way by the i915
>>> and Xe drivers, preventing proper generation of the documentation.
>>>
>>> Promote GuC ABI definitions to shared location that can be used by
>>> both drivers and can be included in documentation.
>> I still very strongly feel that this is the wrong place for such
>> documentation. We do not document any of the hardware registers in the
>> driver, nor the MI_ instructions, etc. Why is this any different? The
>> GuC ABI is not under the control of the Linux kernel driver, either i915
>> or Xe. It is effectively a hardware interface no different to any other
>> hardware interface. It is already fully documented by the owners of that
>> interface. Rather than just copying random chunks of that documentation
>> into the kernel driver, we should just be publishing the official
>> document itself. Same as we do for the rest of the hardware.
> so go publish this official document
My point is that we should be putting effort into making this happen. So 
far as I know, I am the only person that ever raises this topic. And I 
do keep raising it only to be told it is too low a priority. If more 
people actually pushed for it then maybe it would happen.

>
> in the meantime IMO it is useful to show, with really little effort, on
> what grounds the communication between i915/Xe and GuC works, so
> everyone, not just selected engineers, can understand and review our
> implementation and check its correctness
Simply providing a half sentence description of a bitfield definition 
does not tell you anything about the correctness or usage of an 
interface. Sure, you can tell that it is syntactically correct but the 
compiler can do that for you with the appropriate FIELD definitions. It 
does not tell you anything about whether you are using the interface 
properly or even if this is the proper interface to use. You need the 
full descriptive documentation for that. Are you going to copy all of 
that into the driver? Then you might as well just publish the document 
you are copying from and be done.

>
> furthermore, if you don't like any hw documentation then we should
> revisit what is already in gpu/i915 section and also reconsider all our
> efforts to document all non-static driver functions, as those functions
> are still internal to the driver, not to be used outside
I do not know what you are arguing for here.

Xe in general is being pushed to have much better documentation of the 
code than i915 did. But documentation of the driver is a very different 
topic to documentation of the hardware.

John.

>
>> John.
>>
>>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Cc: Matthew Brost <matthew.brost@intel.com>
>>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> Cc: John Harrison <John.C.Harrison@Intel.com>
>>>
>>> Michal Wajdeczko (7):
>>>     drm/xe/guc: Promote GuC ABI headers to shared location
>>>     Documentation/gpu: Separate GuC ABI section
>>>     Documentation/gpu: Switch to shared GuC ABI definitions
>>>     drm/intel/guc: Update CTB communication ABI
>>>     drm/intel/guc: Add new KLV definitions
>>>     drm/i915: Use shared GuC ABI definitions
>>>     drm/xe: Promote SR-IOV GuC ABI definitions to shared location
>>>
>>>    Documentation/gpu/drivers.rst                 |   1 +
>>>    Documentation/gpu/guc.rst                     |  23 ++
>>>    Documentation/gpu/i915.rst                    |   9 -
>>>    drivers/gpu/drm/i915/Makefile                 |   5 +
>>>    .../gt/uc/abi/guc_communication_ctb_abi.h     | 170 -----------
>>>    .../gt/uc/abi/guc_communication_mmio_abi.h    |  49 ----
>>>    drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 112 --------
>>>    .../gpu/drm/i915/gt/uc/abi/guc_messages_abi.h | 264 ------------------
>>>    .../guc}/abi/guc_actions_sriov_abi.h          |   0
>>>    .../guc}/abi/guc_communication_ctb_abi.h      |   2 +
>>>    .../guc}/abi/guc_communication_mmio_abi.h     |   0
>>>    .../drm/{xe => intel/guc}/abi/guc_klvs_abi.h  |  18 +-
>>>    .../{xe => intel/guc}/abi/guc_messages_abi.h  |   0
>>>    .../guc}/abi/guc_relay_actions_abi.h          |   0
>>>    .../guc}/abi/guc_relay_communication_abi.h    |   0
>>>    drivers/gpu/drm/xe/Makefile                   |   5 +
>>>    16 files changed, 49 insertions(+), 609 deletions(-)
>>>    create mode 100644 Documentation/gpu/guc.rst
>>>    delete mode 100644
>>> drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
>>>    delete mode 100644
>>> drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
>>>    delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>>>    delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
>>>    rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_actions_sriov_abi.h
>>> (100%)
>>>    rename drivers/gpu/drm/{xe =>
>>> intel/guc}/abi/guc_communication_ctb_abi.h (98%)
>>>    rename drivers/gpu/drm/{xe =>
>>> intel/guc}/abi/guc_communication_mmio_abi.h (100%)
>>>    rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_klvs_abi.h (97%)
>>>    rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_messages_abi.h (100%)
>>>    rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_relay_actions_abi.h
>>> (100%)
>>>    rename drivers/gpu/drm/{xe =>
>>> intel/guc}/abi/guc_relay_communication_abi.h (100%)
>>>

