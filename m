Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C493C8FF506
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 20:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A665810EA60;
	Thu,  6 Jun 2024 18:56:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e0LcKaLp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B8D10E091
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 18:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717700214; x=1749236214;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jJ5DMr2n8t4xhjvK62xpOjWhAulLgewgt5vrj3r7chM=;
 b=e0LcKaLp1CAQJGlymFRUjUFD7TRRv9f9wHkXu/jbD24nOW3HsyoZd8u0
 6jeyAcxig7DOr9ocTHG08Yto8nDnFx0erCwNw36wCWEAhQikwiaK6nt2K
 de+QCCizuVfj4w2EWMfKiWACSjjP8OIUBMm0ZnJbtR5baWH3NqjeJyO3t
 oCFxpWW+Zh/Pt7cmGXJu7W4PPLJrQTyqyQAIVnJy4OPl0YZ+Lkz7a9jHq
 lVVBpN4ETIM+P/WuKx15jgoUBwH5dRAUN5olu2guH+0rgCzAPlg6UdM+K
 gdl+0q9eo/yGsB7+vPUD4oDLkbjGsCzHvV6kvIu189nVsiG/u7nsAdOwJ Q==;
X-CSE-ConnectionGUID: Zr7n56qoSX+jV1VTbLF4sQ==
X-CSE-MsgGUID: uBDpil9ZQSSa+xOpPyrF4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="25025455"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="25025455"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 11:56:54 -0700
X-CSE-ConnectionGUID: UkPhYQamSPiWBIFVTlxhcQ==
X-CSE-MsgGUID: g2CdfdXnS368TCeVtgVPzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="61274188"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 11:56:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 11:56:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 11:56:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 11:56:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ngan0p8xUXubtEhRMVAOVS02MqF2h4ZTAvVAU8ZaHqZSdTrJDN2jaw2Lek5wU3tJ/v8jPY8s3CoRequasezM/lLwnaPUe3AhCOU0yGw1JCQxlmgDAqt7TRqa4CLf5OmjhWscCXMQY1Po+Z+Fuu1RW+yVAjuYnX20vM2mc/GMcWz8oVaw6nKFGpkxC4qPjci1Xx4r9OZeALO+RzQZLXzAobyOKArxuHEaOGovwSQXLkD+Uit0feWSFL0ESNWWcyvJ9cwzasVp3bH7yFJ5ZDo79frmgjpaDnSxYmta+Sil6N70DfEcSkMM0gPVSk9++0+Npfdi87u2igtl4xEKncZK8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jJ5DMr2n8t4xhjvK62xpOjWhAulLgewgt5vrj3r7chM=;
 b=c8Bwx7rNItY+QG09eiybAPO3bRdoqoCbCl02oKh0bgtPN9oc34nyekOe3/CcOLPjzNl3kdPTuNVAVi5phX7h5YkFZaXmOR7+Je+KwGizS4O9N7hvcFazZ05eA0raVxWnDzsm32KFx/2wjsDTtL8xgnKYq/eM8Ac6OApBU0wo5m7hqq55V5tk99WdptuCOiFh5AkkfFRqtnB06gtSu5sBc4TSTSt3d5qhLvaoXTJwncghtmYqiboBJ853/3q22BS1WFHIcxR5JzOV7E6Ek6iKQCW/D43j2732P/mhcZgPc3Wf132dKf+/YMQXC8D9uksatV6TyGfynryw5aohEUjbFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB6566.namprd11.prod.outlook.com (2603:10b6:806:251::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 18:56:45 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 18:56:45 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 4/4] drm/i915/dsb: Use intel_color_uses_dsb()
Thread-Topic: [PATCH 4/4] drm/i915/dsb: Use intel_color_uses_dsb()
Thread-Index: AQHas099gV2iHzKJr0SSZhs6a6pYwLG7HVXQ
Date: Thu, 6 Jun 2024 18:56:45 +0000
Message-ID: <PH7PR11MB5981E005503FA41EA84407FFF9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
 <20240531114101.19994-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20240531114101.19994-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB6566:EE_
x-ms-office365-filtering-correlation-id: 1ab83cef-02c9-48bb-f131-08dc865a699d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?OXcrdmtOb25OaTdST1duazdlSkhZMGNrZ25LUStMY2JpTHkxSUJGYmtqd1po?=
 =?utf-8?B?ZUw2K0UwZFVrNUJRSGo4TjdDMUp4Q3QzNzFYVnVxcGVrUW54dGh4ZU9LeFZm?=
 =?utf-8?B?U0x4a1EzRStlT1VlY0YvQ1k1K0xzK0hrQk9EcnFzeGorM05yY3U5Q3ZXVFFM?=
 =?utf-8?B?b0Y3Z21QVFZWakN2RVU0R3FZMXR5aVlUdkdNTTAxa2RqVVRrNG5oQVBBTW42?=
 =?utf-8?B?cmtMazBTcGhGMkdpdEYybVJCV0FmTk52VnJXcWNFaFE5cXVTY01MY3RqWER6?=
 =?utf-8?B?UEZBZ1hJME5KSXFRbDh0L2VlSVFaS2tYdUFNSHAxRVBTWkNaOVJ6OTFEQUx2?=
 =?utf-8?B?ckJyaXpRSlROVjVyQ1d5eUVGdDIvR1RHUzlUc0ZwWmwvdm5QYzFjOUtONVRI?=
 =?utf-8?B?SWI3Zm94cDkyZEQ0VVBHcEJFdmZIU2wvb1NEWlJRYUY2YWFPdHc4K1hTS1pD?=
 =?utf-8?B?ekRLbjlDd3NaT3lzR25mdHllZHNrVXE4bEtyZXRIMFM1Vm01TEpXc0Z3U3V1?=
 =?utf-8?B?NEFQWXRJRFZGaGE0aEcya1FoeHlLekJqSEVzU00rR0ZKUWRqbW8xdk5qS1Nx?=
 =?utf-8?B?RStDeWQxcXIwcVNiV1owV2FrcDNTWW82SUNOcmp5dVlGR3RrbHJrWGQ2MFBD?=
 =?utf-8?B?QkZxeG9HbHF0VnlVdXNxMlZiMTJPU3RQZFhGMk5Wb0tYWUM5MHpFNzl5Nm9l?=
 =?utf-8?B?UlV2UzBESUlCSVI2MmpSVE84KytlTElhZzVHbW1sdmI4eGpaQkZvdXUwb0Iz?=
 =?utf-8?B?NmtTVmZHTmw4WktkUjVqTm44d0hIY1FjUmpSMnJ6TERMb1M2ZlkvMGQycEJs?=
 =?utf-8?B?SU40a3FhZjgrcnhBSnQwRzM3WU1VT2tlbUlmbTlIUS9ObDZJV1V5cjFGaUxr?=
 =?utf-8?B?NUZmZ1hNQTdhM2FubTFWTjIwTDhZaDI2RXFaWHBtMmlycTJEbE5WaFlTSE5F?=
 =?utf-8?B?VWtXcFpQaHBPNUdXNlB3UHcrZ3NSeDBmeXV5N1JQSko3Z2RCWmlhYmtNMWty?=
 =?utf-8?B?aHBrQmxESDJlTlpPT1pWbG80YlJSOHZ2NkZpWmI1UEdIc0ErN1JQS0lkYW0z?=
 =?utf-8?B?eUVHTnQ5bVJZTGNBOUlDUndLMk9mNWNRODFNK0VRaUZQMm5EZjZMNldBQ0VZ?=
 =?utf-8?B?Q3NtV3lpeWNjT29uaVpWdkxwZ0ZxazdaazduOCtsZmxrWmpUWnJNTmgvblo2?=
 =?utf-8?B?RjRldzJ2WWdraG9NUlMzdk0yTk9vSHRNT0JsdHFDTjVmYm9CTUpnb0l0U1Jv?=
 =?utf-8?B?ZlZwQkkyakY3S29DTmhBODdQNGdJNEdTUW5IYnRWQ3hTSzR4UlpoSU1zRmRD?=
 =?utf-8?B?UzZ2eGM5NXMvdjBJZUdJQXMxaUkrSnRHbWhtUjJTVUN4ejk0WVdSamptQ1h1?=
 =?utf-8?B?cDc1Uzg4S3l3ajdJMEtWWW11WUNBSXZpc2grVDZmMWlML0F1R2hiTUNBcFVC?=
 =?utf-8?B?SnoremdHNnZEWHNLd0lFS2EvcEJXZXczN2YwUGlhMjZDeFArbytqMkN1cmdL?=
 =?utf-8?B?U2grcFQzSThJamVPSGZTS2lqYjBDYzlldnBKRnFOcTVRclNPSUZFbjQ0b0pW?=
 =?utf-8?B?SzJUQ0EvdzN4RzBuWW9OZDBFYTEveUM3MlA4UTVWNHVXRnBvNTFSQVduMGF1?=
 =?utf-8?B?Z29wV29DN2FJTmV1SEZPUUJqVnhIa2lUU0tBWlJvVURqN21ZdGtaRy9KRE4w?=
 =?utf-8?B?dUIxbURWNHNoVzRncE1Jd2o2RVBtUFdMQ1BUakV6dmdKVlMwYnc1U09xdVRp?=
 =?utf-8?B?K1JkWUw2eHFvcGMxNy91NnRSeEVGcW9DU2o0V0hCZTc0a2FxYnRMYkdGaXdt?=
 =?utf-8?Q?87+n7jRTfij6lxKeT2yAdEjhjiIvS3TUsQoV8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXBtNHFVM2QrOGpwSkZwNUt2ZDRkbmJIeFJkV0w2OE5DUXdiWUFBcGVidlp6?=
 =?utf-8?B?MFNuYmh6Ykl6NmlIUHBqL3FqZ2Jjd1B5dEF0TzYrUjhES3RLMkdhVEJEWjhB?=
 =?utf-8?B?V2ZtY2RPQ0dGTlJKWHFoTFUyeWY0QjNoNXAycURuR3E1MFNCZUZiQVJsMmEr?=
 =?utf-8?B?a0p1MkwzM3NlZnYvTkpyT3ZtZWRPYlAreGorc0NZVDM4a2pCUTZ5Mmw3TG5y?=
 =?utf-8?B?aHo4Rmo5RUwrckJYKzhZbWFRK0l0MWZuUDlQWTdyUmY3eVZvWUdxOWtNVkwz?=
 =?utf-8?B?RTBoVkZCWlZiQzBkcTB0T1dUOHJEYjFKcjRNTTV6QjkyZWpuNkh5Wm5EeWhM?=
 =?utf-8?B?QmZtSVNoRi9KSGFJdi9TOThCVnZ3RVlFTkYxQkJnOHptV1ljWlRCZ0xZNTVl?=
 =?utf-8?B?WTRWaml2M1pKdkNEL3NZbkxtOVpCOFpFUHFrQXNlalBIVWt5ay9SR29LZy9a?=
 =?utf-8?B?N3A5MFp5d3U1MUN2eDh2NG9CSUhOZFNjTm9yLzdJTjVlUzVkOEtWYW5PTVp3?=
 =?utf-8?B?T1dkbkxIN1l6NHVWOEpaSEtQN3Q4bDFOVTlLd3B1STFvRkhDUGlBeWhDMGJS?=
 =?utf-8?B?US8xMEZHa2dTRVhYdXJXcm9HNDNmSytPK0YzUkJIdCtVV1VlZ3FRQi9JWWtv?=
 =?utf-8?B?YktYa3crejhBYmppeTI4WFlJcmlDaFRVV2hOeGJVQU5vZjA3QzNFdTVXTlBZ?=
 =?utf-8?B?VUNnNk5NeXkwQWlyaUI4NmtWNk03enMyc0IxSzREYmtndTBKWFdJZUE2UDU0?=
 =?utf-8?B?aGJUQVZjVmZqZGdTcVBmdyt5RFNPR2pEYXhXci8vMUlObTdXVmVReE1DY1My?=
 =?utf-8?B?ZFh2TExtalg2QWNjdlkwMmtXZnN1Z1MrVTNLMFZrd25LRlBqZGoxWEZ1aDFq?=
 =?utf-8?B?U3FUbHE1dE1qUFlCaFFTMjNYaG9GY1JqbG5JbTU5TERXenlnNWRoc0RHQkh4?=
 =?utf-8?B?Ri93S2oyeG83bmFPKzdCcnNzalhvS0xVNHFZNkNqVDFlUDEwOGFVbExkdlU3?=
 =?utf-8?B?czhhNW5zY3pYalZpSnZ2R0tTWGFDMnQveEE0WHR5TTVHbDkrQkRwUzEzMHJB?=
 =?utf-8?B?SkVmUzUwdElYUkJ0ZXdLaTJ1SW55SXJkd1h3U3B3N0hKaXkrL3NXSGl6Zk9z?=
 =?utf-8?B?QStYQkRJMVl4ODVCODhndWt0SzN0YXBoK1BZd1BuVHVlZ3p0WUhTdDduOVln?=
 =?utf-8?B?WmlQeTRIV1JIVEh2ekIyRDRCbnRxRFJZeTBaemtwZWpxVFNLZlR1T09NUDlR?=
 =?utf-8?B?ODR5RlJJRVM3a3FLbTcwYlhVd01ERUgwb2ZNWHdHR28vb0JISmgxdGlXTmZT?=
 =?utf-8?B?UVNYdUxOSmhjczBlNGtxRFA0SjJ5RCs2bjlRcHlScnliOTF6S2xpdTlsVzd0?=
 =?utf-8?B?cjJVdGV5QkJGUzE1YWxsK2JVMkV0bGJkYm9nTlpnZ2dJUzNIaGF4STIvZGdI?=
 =?utf-8?B?aWsxNExiTzZEdkZWcTZRZmVmVjYvQXBBOW5hbXNsc1Q3RW5iMHpLVFR3QlRB?=
 =?utf-8?B?RUk2R2JmcEN6YjV2VUdZTzI4SDNvakhUTzkwMW8xMVZYZVRZRmQ0a1AxTlRV?=
 =?utf-8?B?aDVIaFMrcUVCWUlKbUFGcW5BRUZ1c1VxWVk2NHN1anczcFgySE0ySW9iNmVa?=
 =?utf-8?B?TGdKRjEzUzFYZmFvV2pzaTNFUm13QzlodC9HT3pWdWNxbmIvWWN3eHExQ05J?=
 =?utf-8?B?c1BXVVM3RTZrS2Zlb2x5TXNlTmNnb05JTnc5aFhkdE13c2VXOFhJczZXUW5k?=
 =?utf-8?B?ME9yRmVySnh5Ujd6bHRVRkVXR3FaYVhvUEFVc2prV3VOeUJzdjFoenZYYm5t?=
 =?utf-8?B?eTVkZ2hOb2kxNVY3dkkyb0ZidHZCUk92Y1l1Q3l3dTlPUXdDMkxUcTR6L1JJ?=
 =?utf-8?B?VUhYYmgvT0hCUWVsV2pPanVsUnlSU2N6RXdkSGhTeklOdnVvcWhmZ0ZYa3Z3?=
 =?utf-8?B?MnVveVpBcENqVnFwWU1xNEorYXZPMkdrSjFnTkxrdGYycWFpR1d4ZmJXZGtv?=
 =?utf-8?B?dXVtSW5xcGpXU09ITEVsRDVWR2hiWVp0TzJWNWs1U3ZhWWVJVjR1anFQby8v?=
 =?utf-8?B?TEtVeDF3ZU9JeW9DTWVZM2pWajVqdzljWG1JVHpsV1F2T05HMGtBSE5pKzBD?=
 =?utf-8?Q?HIAr6w7fdlPL+jfHHs87bvVRP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ab83cef-02c9-48bb-f131-08dc865a699d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 18:56:45.5716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vH34g6hTQXypOmQv5LN/V4eHhGiAA5E9t9XNUBfnjxu54LmlMaUxPNZu4xGr0yFIIybnLQa7KwQlzA6ii0679w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6566
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMxLCAyMDI0IDU6MTEgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDQvNF0gZHJt
L2k5MTUvZHNiOiBVc2UgaW50ZWxfY29sb3JfdXNlc19kc2IoKQ0KPiANCj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFVzZSBpbnRl
bF9jb2xvcl91c2VzX2RzYigpIGluc3RlYWQgb2Ygb3BlbiBjb2RpbmcgaXQgaW4NCj4gaW50ZWxf
dmJsYW5rX2V2YWRlX2luaXQoKS4gTWFrZSB0aGUgbG9naWMgYXJvdW5kIERTQiBhIGJpdCBtb3Jl
IGlzb2xhdGVkDQo+IGZyb20gdGhlIHJlc3Qgb2YgdGhlIGNvZGUuDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpS
ZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jIHwgNCAr
KystDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Ymxh
bmsuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4g
aW5kZXggZWI4MDk1MmIwY2ZkLi43ODliMmRiNGQ5NWUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiBAQCAtNSw2ICs1LDcgQEANCj4gDQo+
ICAjaW5jbHVkZSAiaTkxNV9kcnYuaCINCj4gICNpbmNsdWRlICJpOTE1X3JlZy5oIg0KPiArI2lu
Y2x1ZGUgImludGVsX2NvbG9yLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfY3J0Yy5oIg0KPiAgI2lu
Y2x1ZGUgImludGVsX2RlLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0K
PiBAQCAtNjM3LDcgKzYzOCw4IEBAIHZvaWQgaW50ZWxfdmJsYW5rX2V2YWRlX2luaXQoY29uc3Qg
c3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLA0KPiAgCSAqIERTQiBl
eGVjdXRpb24gd2FpdHMgZm9yIHRoZSB0cmFuc2NvZGVyJ3MgdW5kZWxheWVkIHZibGFuaywNCj4g
IAkgKiBoZW5jZSB3ZSBtdXN0IGtpY2sgb2ZmIHRoZSBjb21taXQgYmVmb3JlIHRoYXQuDQo+ICAJ
ICovDQo+IC0JaWYgKG5ld19jcnRjX3N0YXRlLT5kc2IgfHwgbmV3X2NydGNfc3RhdGUtPnVwZGF0
ZV9tX24gfHwNCj4gbmV3X2NydGNfc3RhdGUtPnVwZGF0ZV9scnIpDQo+ICsJaWYgKGludGVsX2Nv
bG9yX3VzZXNfZHNiKG5ld19jcnRjX3N0YXRlKSB8fA0KPiArCSAgICBuZXdfY3J0Y19zdGF0ZS0+
dXBkYXRlX21fbiB8fCBuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX2xycikNCj4gIAkJZXZhZGUtPm1p
biAtPSBhZGp1c3RlZF9tb2RlLT5jcnRjX3ZibGFua19zdGFydCAtDQo+IGFkanVzdGVkX21vZGUt
PmNydGNfdmRpc3BsYXk7ICB9DQo+IA0KPiAtLQ0KPiAyLjQ0LjENCg0K
