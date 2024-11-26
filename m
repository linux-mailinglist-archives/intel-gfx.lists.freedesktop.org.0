Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5391D9D9615
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 12:18:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E63E610E830;
	Tue, 26 Nov 2024 11:18:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oK46aGjB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DBD210E830
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2024 11:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732619911; x=1764155911;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TxoZlatS2UYOs75PdQgG9EF+NS3eZMRwlGU7vRKs4Vc=;
 b=oK46aGjBWGLxANIuFeywHDwHHYXVZmKDS9tc+ZaR1WPHFhRnVm9EpGn7
 d4t4gIu67YPWyLXCBv7/enCamqRENROMM+6i1zzr+vetXyN43CIK0Jbbj
 hUd2C2fP8yzRKGCoxB9NQzF58C8ScHqOgUrrpqK2yB9sdSkoVjhwsXOTG
 24mMPC2iGtpmBTAvQ8pDocYf3i4icrSxyxJZ6JxYina+bSbZZbBjzX1DQ
 ed3YsKPYg1MLo24N2gAXEbpqVMtcqcC9YgYsp9XUlhPGCPTLm0GTMSDIt
 6/anINQ7eot5SQQyoXE8GDY2LFfhF2IjmC2dd2cvUqaw3p67XHSF0NguN A==;
X-CSE-ConnectionGUID: mG4Atrj1Rw+GGpUkA2Jdcg==
X-CSE-MsgGUID: axF/auaOStOu8EdsKXnVRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="50181018"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="50181018"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 03:18:30 -0800
X-CSE-ConnectionGUID: duetCmscQ3uGxO3yP+uD4A==
X-CSE-MsgGUID: Lg5WPULYS7SIHtqVEuNvWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="91990517"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2024 03:18:30 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 26 Nov 2024 03:18:29 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 26 Nov 2024 03:18:29 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 26 Nov 2024 03:18:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ycCopc61t9OTkPOcR+UiTMS7RjQbL118z3tiM9GR8GmOEBxVMf9si3nifFAmi+CNV8Kll5DjptEVC0sH6rPzxcHdd9iICUlKsJg+QjgKraSyDwx29lEAVyo4GOdI5cy0i+Or7g6D0NQXwgBGHUi4Difrzf2SDjRniXo8++ipd0/C2GF2nUzAPHHiilDkyJBGqPelmYTk3RynZvvuAnGYI7pBJ9gLR3sZwjH3WUOOGYc8hRoD2PqqpF9HUf8qDyOh5suFqSPwtgv2nf9XdrgzbtvxunAVohoB8wPPJX+DPK5fWek5ONB0lCMJ4bZMQlzuzYFDMvYt5tkOU2VHXZz2HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TxoZlatS2UYOs75PdQgG9EF+NS3eZMRwlGU7vRKs4Vc=;
 b=Abi2V+sb5S92lnWl2dsyBZ2VkOjhoRaldmZl2wN+JmXwLbluAoY/4TuaQHZKwJXOSwV+/K+0UfOSEOB5iOp7OdwMAcFhDDS9ckxFHtz0ochY6uQX+3n7jcm+QXmVEEWhZeUShHYVov0mDxeL9WQomr8tSLNNWe+z37iCGw9GcSUxhnSbXZCOOtmhRbq5bJIBwwow/s7woQF03vDR+QP0bMaRl9mKh4F6VLDibQ5sG7HMnYlxOmU3d8qEpacqgOKYMSgM3FHl54boHLXM3Vr2L9rpSf1mXKAHqquIrHKYBK/HpERKxm02lujv0MfsHRm4obfq/XJE7TBlKlGxHyazwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by LV8PR11MB8581.namprd11.prod.outlook.com (2603:10b6:408:1e5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Tue, 26 Nov
 2024 11:18:26 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%3]) with mapi id 15.20.8182.019; Tue, 26 Nov 2024
 11:18:25 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Sousa,
 Gustavo" <gustavo.sousa@intel.com>, "Jadav, Raag" <raag.jadav@intel.com>
Subject: RE: [PATCH v5 2/2] drm/i915/display: Use struct intel_display instead
 of struct drm_i915_private
Thread-Topic: [PATCH v5 2/2] drm/i915/display: Use struct intel_display
 instead of struct drm_i915_private
Thread-Index: AQHbL4ZVWQdmEXcsy0qvNsZvzcjeQrLJZSeAgAAlLxA=
Date: Tue, 26 Nov 2024 11:18:25 +0000
Message-ID: <MW4PR11MB7054BA17663DE7BB9B4E44F4EF2F2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241105131732.331436-1-mika.kahola@intel.com>
 <20241105131732.331436-3-mika.kahola@intel.com>
 <SJ1PR11MB612907562E3497573C531DA6B92F2@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB612907562E3497573C531DA6B92F2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|LV8PR11MB8581:EE_
x-ms-office365-filtering-correlation-id: 4f3e5dae-23d0-4afd-5704-08dd0e0c0bc4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SDNVejBaeDEwcVZhU1FIb2kvdDh2TjBtUk1KSjgxZ2hNSG0yMitmNjB0RHJO?=
 =?utf-8?B?MmF5cFMzcHdMeWdxUjlkdkRXbE1KbEg0Vk9nMDVZNUlPUEh1ZncyRU9vZGh6?=
 =?utf-8?B?bi9Jb2N5TDBiL253Z0hTM3g5dktkZEFGRGhyYnkvTFAzNlkvYm1hc2F2OHpy?=
 =?utf-8?B?aE5BWHo3TExIdFM5K3U2eUljbmNVYjhOaStZaHlsTmlWeDEvOW5WZW1OV0x6?=
 =?utf-8?B?UjB5YTJ2bFZKWVZyWEExYXdwblpMdjVBUjhTUDE5OE9CTnA4ZUFPaTAxVWRC?=
 =?utf-8?B?aDZoNHN3Uzlud2FrVUV1UEt5Y05hTVUzYTZnNFRLaHB3R2lmaVhsY2ZQZTRz?=
 =?utf-8?B?Sk5OaEpJZ2Z3RGM5VC9jM2d1azdoVkd1ZXF6dnJsdjQvcHJoUzZUaWlCRllC?=
 =?utf-8?B?czhOcjdmYzBZemhjZW5VTGFXMEU3NVFxYXZkNlFWak9RcmtJeUlZY2lZL3pK?=
 =?utf-8?B?b3VoYVJiWDBNbkJpYUh3NStuS3FhNytZdDNQd2d2bC95M203MllNWm9pdnFU?=
 =?utf-8?B?RlVrcWxCZUdkV1dtaWJkN0YyMWVybHhpY3hiajNxOWZnc2RWVHFMdFUrY1pC?=
 =?utf-8?B?OFR5d25LNjhJNGZOTjNGakdCVW1zZExLdVlvU2JwRnBuQkVnTGZPZGVJYVJq?=
 =?utf-8?B?ZEhha0ljdE5JUzdjWnROL2lrUHU2RzM3NXRJSTlrSVJJYTcyTWgyQkRoRytu?=
 =?utf-8?B?VEljK040NHV4Z0xRRkZwbnFCbmR0NnY2T0NzeWRJaEc0MlhPUlhrYTZvRVJu?=
 =?utf-8?B?L2cyZ3phQW5Ic29ZcFE2MGVpNGRGSU53TUYxQUc3MXZDcjlNelZGejhiYm43?=
 =?utf-8?B?Tm9pMjhjbVl0eFQwL1U0S3Y1WktyMC8ySWZ5U3MvN2xqaVd5dk9pUVBPcHNU?=
 =?utf-8?B?bTg3NGRFU0xLckF1eEJiNDBkbjNtZDRrU205azhUR08wQjErUy9MVjd6dnJw?=
 =?utf-8?B?K2l3Y1Q5bTBVSys0N3B3QXQ4MWJHeno4VGZ1MUJPNk1OSk9kOWFTbk95djhj?=
 =?utf-8?B?dkJJZFpzeFRNSEFJQjg5MGZRQ2t0WmQ1UktUVCtlM1dIbzl6UG1BanphMVBs?=
 =?utf-8?B?VXBIb2I1R0hrWUVCZUNyV2srQm9sVmVSWmFpK3Zyd1BETFpydFZZTWZIOEsr?=
 =?utf-8?B?UWx1M1puTFZKalhBc2FkMkdSaHhZUHh1ODVjUkVpM2dXeUtNc2RWaUMrQncr?=
 =?utf-8?B?SHAwYTIvRDdQckxCS1dNQlhvV1p4SUkvR1FMRklpVkdYV3dCYWVTOGlOZE9L?=
 =?utf-8?B?akpDNExaNmZrdmdBeVJqSU1KTGJiZFQvZWNWMEV2VkRPeis3K0IxR2s5eUhL?=
 =?utf-8?B?bUZjU1FvdjF3SFZuZ1h1QU5nTjJrT1RLbU9PRDArWU1GQnMyblZROEV1NUhw?=
 =?utf-8?B?bjJqbTc2K3lpNC9IUHZGN3RDYnNVMFBRQzhEM2J3RUxGQnR5WE82aUVrWHVs?=
 =?utf-8?B?Q1BvZHBSOVptYTJLaEFwNHlzZndOK2x1aktYRG94SDBuZ0ZCZG1wUlNrYzho?=
 =?utf-8?B?N05wVnJLbHdaV1dWR3Z2SHFSYzYwUFp5STdmTDBiMWZ4eGozSFZKOGM2Wk9W?=
 =?utf-8?B?Z003ZXlIZlJ0YTRHb1pEZUZuWWZwUzNkSWhPdFFwejZTOTlkVVNGMHZhWmR2?=
 =?utf-8?B?ZmovSUVTelc1c3VmNzI0WlR0S1V2d1VFWmlIODdvbzdDb1EzUU01QUEzZ2Q4?=
 =?utf-8?B?YWpHclR4OEdPcVJadFVBK05KUWp3WEhyVm41bFVySVMzRllENmFQbUNhSHRx?=
 =?utf-8?B?R1V0NjdvS0M2SWdlSnhNenZtTkd2MmxPQ3ZERVBRcHNkRmRMVEsvcmxFcEcx?=
 =?utf-8?B?MTZqUnNvTU95b0s5SDFVRmRoaEhReEswRHV2QllRWWxTUENJQ3RCT2Y2Ymdj?=
 =?utf-8?B?VHpId3VsTERXR3RkckNLVjVhNHMyTC84R25yL3NUVGxoNFE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Um9ZbEpLalNPS1JsYlRybWlvdHd1bk5UUWpaTU94ZnJiajMvdkRQM0orZjQv?=
 =?utf-8?B?Uk1POFZhTkFjaHMyNjFEY2lGeFc2OWhRYnRvRHdYallIMTdFRVE1WTc0RDEy?=
 =?utf-8?B?bE44ZjZUdnc4SjhkalpObjl6RU1vTlFqODRVLy81Y1A2MG1WdEIwR0pkQita?=
 =?utf-8?B?RE1KcHEzaEJlMFV1RjQ5d0tsMXlOS21lbU9CUDFMelhyZTNwK2dJZ293VjlG?=
 =?utf-8?B?amhWdk1xbmRSSWZHai9FS1dkQmd2c0krakNDMHVuWFZleUtIdEtvc083aGlt?=
 =?utf-8?B?ZFN0a1FXRm1JMmQ1WWJUOEZrWkFwYTJRRFpNZlJKQlVxRWoxYmwzYkFZTFNy?=
 =?utf-8?B?RjF2Q2tweWg5WDhhY0JHUXhQbU5MVVdOdW5zSERDZEpOOGdMZURJMlFmM3lL?=
 =?utf-8?B?TUZDVDJjTVVlUXE1QjZoS05NdXliME8yV0x5Rk9WMEhqN0VDaXRJMEg4SEdD?=
 =?utf-8?B?YjNFS0JwWmZBSHJ3SUdyeG15SlhFYXh6bFg5Q2hkNXJncFhNMGVjRVdXTklw?=
 =?utf-8?B?a3E0RlpXN3N5OFZHd2JLRU41Umw0UitKM05XNDBoVUtJOWlqL3J1UE5Cc1I5?=
 =?utf-8?B?ZlNFQkw0UzBSK0VJd2FJeUYwamdwZWh0QWYzMmZpQTh0ejdvZXhzeE01b3N0?=
 =?utf-8?B?N0VwN0VwVXlqTnVtSDhRLzVBeEJFZHk2Z0tXdlNvdnJqa2krZk5IMjk4UUJK?=
 =?utf-8?B?cTgvTWRYWGNsU2E4dy9iSSt1bEIzM3NQT21oVVF4dVkvd0xUMnJLUUpkbitv?=
 =?utf-8?B?RGdhcXF6U2dKWXM3dmh5bXo3bzVMNXFCSFpwQWRVdnJaczh3M1JMNTlsQTZQ?=
 =?utf-8?B?T0xaQkY4TFhtL0JrU1NuK0UrM2huRDBNL2ZQdkhWMGZ4Y0cvejJSb0hndytl?=
 =?utf-8?B?VkhERjlpYXI5M2Q5ZTU1bmc4QUhOVGgzcXlQeWw4Zk8zbHI0SGpwRFJzMVhP?=
 =?utf-8?B?NVdEdFFtejhxVGhvR2VqNXZKUTJ4OHlnbGJhRm5POWZ4ZFpvUjhEN1lDdkZQ?=
 =?utf-8?B?OS9OWFpGZFN6WE1FRXpqYlZWRkhPUHZYaTFVK283aCt1aWJweWNVMDhaMWVa?=
 =?utf-8?B?eGpNd1lORG5VTHBTai9VRlNXd1dsdUN1WjJFUnpkV2pwVFAvTkRqMVJBa3Jn?=
 =?utf-8?B?M0FuRm9sUzRmTmp1VE1hZm4rM29XcVNvWllFYVo5UklzOEgrVkNZZTdMSFhM?=
 =?utf-8?B?Mk1WakNVMWlMdVhTSzJBbEl1UEVZdlJCVlVoemV2UEE5Rk9KaUkrNXg4RkFT?=
 =?utf-8?B?djl6TDB2d2tBbmN5UVh2NUZseVpvTFd2Qm1oZldzY0tSMGN5ejljMnc4MXRm?=
 =?utf-8?B?WTB0T05MeW5yZWpzSk8yb0ZFcWY1WmxMZUp0SUg4QWZiUzBFTXovZUZTTEZx?=
 =?utf-8?B?dnY5YlU2M3JHUzZjUUs2c0dEM3ovSS93NWY1b2RaUzN4Z2lPd1JGc1NFOFNu?=
 =?utf-8?B?ckRzeGRBbkxIZFE1NzYzWDVwTEJqSE9JZXJ1ZFAwcEh6dnQ2WTBIelhod3RH?=
 =?utf-8?B?UnhjeG1qM3lIOEpZeWtpZ09vVGovOVdmQWZkY2NabnJLMWRUeVliUEZVQmpu?=
 =?utf-8?B?LzkyRklUbWtteW8vRWI3cVJPd2ZWWXB0Z2xkOFBmckxsSWJUaFpnaGNFMXBT?=
 =?utf-8?B?eW82QmNUdFM3LytQck1xd1F4eHQrTkpRMFd4ODhvZ0N0Z3k1ZVFwTG1QbVRh?=
 =?utf-8?B?VmsxWGdmeEhJNzRZTUJPWFZFaUI1Ym1tZlNkdWQrb1BzWnhVMXY4KzBEbHk2?=
 =?utf-8?B?cnovbDUrRVlYZXVOYWhWanFESTQ5am1wY29tRlRENnZnOTlQMWl3b2wzaW9M?=
 =?utf-8?B?a2NwK3g5WHZPN3p3Mmt5dzBhUFFwUVF1NzhDeW5LRFExM2ZPd0VNUlN5V21G?=
 =?utf-8?B?QzEyTVZYeGhHR3VSQUtNZ3RVb0FGZUJxVmtFNFhVTFlTVDJSeHBNblBGNS9r?=
 =?utf-8?B?bDJLSFllVEhOWk5zMVNENUk5VHVQaGFFWVZIOEM0emt4WG80dDhRWi9uZTNL?=
 =?utf-8?B?aTY3N09wVWhrUFM1RUdld3hsdm5qSk9nVDJjRWpVK1pwRU55TngrTzc5Zjk5?=
 =?utf-8?B?R1pEWW9VK1Jqa0cvS0JNYmRUTE0yMFJ1aXMrY21yaG1wRkxZV3gxaktQVEVq?=
 =?utf-8?Q?MnxFiEawKOlBDszpJphgHVA5F?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f3e5dae-23d0-4afd-5704-08dd0e0c0bc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2024 11:18:25.5538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EgUAPSNUIaFq1DpZtnFe7LSfdrxhow0pG8Fp7BsL+fqjsyI990Z1nRqzdvooH3mdgQLUy/U9U7v59Qujuyd2nQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8581
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCb3JhaCwgQ2hhaXRhbnlhIEt1
bWFyIDxjaGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCAy
NiBOb3ZlbWJlciAyMDI0IDExLjA0DQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGphbmkubmlr
dWxhQGxpbnV4LmludGVsLmNvbTsgU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwu
Y29tPjsNCj4gSmFkYXYsIFJhYWcgPHJhYWcuamFkYXZAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWth
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggdjUgMi8yXSBk
cm0vaTkxNS9kaXNwbGF5OiBVc2Ugc3RydWN0IGludGVsX2Rpc3BsYXkgaW5zdGVhZCBvZg0KPiBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiANCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5m
cmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiA+IE1pa2EgS2Fob2xhDQo+ID4gU2VudDog
VHVlc2RheSwgTm92ZW1iZXIgNSwgMjAyNCA2OjQ4IFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogamFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tOyBT
b3VzYSwgR3VzdGF2bw0KPiA+IDxndXN0YXZvLnNvdXNhQGludGVsLmNvbT47IEphZGF2LCBSYWFn
IDxyYWFnLmphZGF2QGludGVsLmNvbT47IEthaG9sYSwNCj4gPiBNaWthIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIIHY1IDIvMl0gZHJtL2k5MTUvZGlzcGxheTog
VXNlIHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ID4gaW5zdGVhZCBvZiBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZQ0KPiA+DQo+ID4gTGV0J3Mgc3RhcnQgdXNpbmcgc3RydWN0IGludGVsX2Rpc3BsYXkg
aW5zdGVhZCBvZiBzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlIHdoZW4gaW50cm9kdWNpbmcg
bmV3IGNvZGUuIE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4NCj4gPg0KPiA+IHYyOiBEcm9wIHRjX3Rv
X2ludGVsX2Rpc3BsYXkoKSBoZWxwZXIgZnVudGlvbiAoSmFuaSkNCj4gPg0KPiANCj4gTEdUTS4g
U2hvdWxkIHdlIGFsc28gc2VuZCB0aGlzIHNlcmllcyB0byB4ZSB0byBnZXQgQ0kgcmVzdWx0cz8N
Cg0KVGhhbmtzIGZvciBhIHJldmlldyENCg0KSmFuaSBoYWQgc29tZSBjb21tZW50cyBhcyB3ZWxs
LCBzbyBJIG5lZWQgdG8gc3BpbiBhbm90aGVyIHNlcmllcyBhbnl3YXkgYW5kIEkgd2lsbCBzcGlu
IGl0IHRocm91Z2ggeGUuDQoNCi1NaWthLQ0KPiANCj4gDQo+IFJldmlld2VkLWJ5OiBDaGFpdGFu
eWEgS3VtYXIgQm9yYWggPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+DQo+IA0KPiA+
IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDEyICsr
KysrKy0tLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdGMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jDQo+ID4gaW5kZXggZTQwZDU1ZjRjMGM0Li5kNzhmNTcxOTBmM2MgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gQEAgLTEwMzksOSArMTAz
OSw5IEBAIHN0YXRpYyB2b2lkIHdhXzE0MDIwOTA4NTkwKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+
ID4gKmRpc3BsYXksIGJvb2wgZW5hYmxlKQ0KPiA+DQo+ID4gIHN0YXRpYyB2b2lkIF9feGVscGRw
X3RjX3BoeV9lbmFibGVfdGNzc19wb3dlcihzdHJ1Y3QgaW50ZWxfdGNfcG9ydA0KPiA+ICp0Yywg
Ym9vbA0KPiA+IGVuYWJsZSkgIHsNCj4gPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdGNfdG9faTkxNSh0Yyk7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
IHRvX2ludGVsX2Rpc3BsYXkodGMtPmRpZ19wb3J0KTsNCj4gPiAgCWVudW0gcG9ydCBwb3J0ID0g
dGMtPmRpZ19wb3J0LT5iYXNlLnBvcnQ7DQo+ID4gLQlpOTE1X3JlZ190IHJlZyA9IFhFTFBEUF9Q
T1JUX0JVRl9DVEwxKGk5MTUsIHBvcnQpOw0KPiA+ICsJaTkxNV9yZWdfdCByZWcgPSBYRUxQRFBf
UE9SVF9CVUZfQ1RMMShkaXNwbGF5LCBwb3J0KTsNCj4gPiAgCXUzMiB2YWw7DQo+ID4NCj4gPiAg
CWFzc2VydF90Y19jb2xkX2Jsb2NrZWQodGMpOw0KPiA+IEBAIC0xMDUwLDE1ICsxMDUwLDE1IEBA
IHN0YXRpYyB2b2lkDQo+ID4gX194ZWxwZHBfdGNfcGh5X2VuYWJsZV90Y3NzX3Bvd2VyKHN0cnVj
dCBpbnRlbF90Y19wb3J0ICp0YywgYm9vbCBlbmENCj4gPiAgCSAqIEdmeCBkcml2ZXIgV0EgMTQw
MjA5MDg1OTAgZm9yIFBUTCB0Y3NzX3J4ZGV0ZWN0X2Nsa3N3Yl9yZXEvYWNrDQo+ID4gIAkgKiBo
YW5kc2hha2UgdmlvbGF0aW9uIHdoZW4gcHd3cmVxPSAwLT4xIGR1cmluZyBUQzcvMTAgZW50cnkN
Cj4gPiAgCSAqLw0KPiA+IC0JaWYgKERJU1BMQVlfVkVSKGk5MTUpID09IDMwKQ0KPiA+IC0JCXdh
XzE0MDIwOTA4NTkwKCZpOTE1LT5kaXNwbGF5LCBlbmFibGUpOw0KPiA+ICsJaWYgKERJU1BMQVlf
VkVSKGRpc3BsYXkpID09IDMwKQ0KPiA+ICsJCXdhXzE0MDIwOTA4NTkwKGRpc3BsYXksIGVuYWJs
ZSk7DQo+ID4NCj4gPiAtCXZhbCA9IGludGVsX2RlX3JlYWQoaTkxNSwgcmVnKTsNCj4gPiArCXZh
bCA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwgcmVnKTsNCj4gPiAgCWlmIChlbmFibGUpDQo+ID4g
IAkJdmFsIHw9IFhFTFBEUF9UQ1NTX1BPV0VSX1JFUVVFU1Q7DQo+ID4gIAllbHNlDQo+ID4gIAkJ
dmFsICY9IH5YRUxQRFBfVENTU19QT1dFUl9SRVFVRVNUOw0KPiA+IC0JaW50ZWxfZGVfd3JpdGUo
aTkxNSwgcmVnLCB2YWwpOw0KPiA+ICsJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgcmVnLCB2YWwp
Ow0KPiA+ICB9DQo+ID4NCj4gPiAgc3RhdGljIGJvb2wgeGVscGRwX3RjX3BoeV9lbmFibGVfdGNz
c19wb3dlcihzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMsDQo+ID4gYm9vbA0KPiA+IGVuYWJsZSkN
Cj4gPiAtLQ0KPiA+IDIuNDMuMA0KDQo=
