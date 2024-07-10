Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F32A292CD06
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 10:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E46E10E058;
	Wed, 10 Jul 2024 08:29:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RkRbEYTz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D55C310E058;
 Wed, 10 Jul 2024 08:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720600175; x=1752136175;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Od/bEYGLCtojhr4Z3TxSmXBI+R6MGg7t4jmrbRJQsNs=;
 b=RkRbEYTzRzBj83rMxhSrVm4cUXmW5pCvMpEq6zH3dCzreIRo9Oobk+lY
 f0Id00Wb/kn3E+s7qs0XP0KJwiRh85e5wq16OiO613+haCOkLRUwWpDaY
 bC8BTW33GlN+bd1jNtlJWZDUZVn30GJnCkWWXg4nTGCfa4aKjLZpeH9Dt
 bMCe70JI6KbF35WRNN6gn6PiK8sx2nMQL4iEoSxJ9/bDTTrE++i9Lu3+D
 /7v0Z2ZoXrsxQTFS3uozJSqVulfVZry74MOL7CL/+CnzAccX/ilGKZkgN
 2jVx4QuZqGztUHejC1jiXRHkfMRF4QIeRt3AQ7h7cPxsPFHbCdTLCyCws Q==;
X-CSE-ConnectionGUID: In+3Nml6TEGJ0rfvJ9rbkA==
X-CSE-MsgGUID: 9U4WlrhLQHudNffv9XRYjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="18045806"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="18045806"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 01:29:04 -0700
X-CSE-ConnectionGUID: Go1eU19XSIWanXLVUhhdxw==
X-CSE-MsgGUID: aHhS3u/kTDOHwhN4qQMfbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="53086203"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 01:29:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:29:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:29:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 01:29:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 01:29:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S+mXybJRxSdKETHPAXK6Dwo2nSPwM7JZuAyJ1C2e+TDWVZeJUjCKsouKfGt3rIzeObleOs0VMGs7DYY1PdxZQgEffAItQrFPtgAQi3XOJhA5vT3Kq1a3CneonibcwdCnCwwOLTtOS3R1S4dtli5zaE1yFbUCR/60dzpok4wQhIXw6lpNrdq0dQQKUW8IG8Ll6J95y+5v3E5BFw+TYzcdJwKk0iv6XSBhYuYoYLkFxavFsd+R72fyCY3LomAsDbgpO87M4f5tqNn8nkxb6WFHhI3+fIZKXNhrm1Nudo851qH6wjzGtQnSTiL39rE5wZH4t/o8tdbvHd4qYvU0ayfLfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Od/bEYGLCtojhr4Z3TxSmXBI+R6MGg7t4jmrbRJQsNs=;
 b=PnPdrZaLCvSqUw9mAwdVHpRmRKsHc90T82uV4+X8WUiZfmgXRYCyVb7FSPQ11OpQuOBKGnpBpuN9xcukNgy6hj46Ney7WfSW/H1LXobbFzmF2EuEB7A1D27mSJVUM/chIteybzKavasLjIXJfmzLg6GqJJMDi57lihm+leus0D3/poB3Q6YjtPqMH5jtT9the03+YBiWKWRetILVpPM5cHFNxKcXOyX+Tbuz48Wc7ZTb2gefmbWr3thxgwczBcBLiAUa9ZJCcpuu/R4b8S+SmLmv1QixJAA0PhnM37MG7+vRKqF+qyQ3FL/qX0Fwai2HPJmqfAKE38WCBWRkkml3Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA2PR11MB5052.namprd11.prod.outlook.com (2603:10b6:806:fa::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.35; Wed, 10 Jul 2024 08:28:56 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 08:28:56 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 12/20] drm/i915/fbc: Extract _intel_fbc_cfb_size()
Thread-Topic: [PATCH 12/20] drm/i915/fbc: Extract _intel_fbc_cfb_size()
Thread-Index: AQHazuskE7Y0dsft2kqKsIGvN6gxPLHvqHoQ
Date: Wed, 10 Jul 2024 08:28:56 +0000
Message-ID: <DM4PR11MB6360CF2BBAE0DD6AADC3D0C0F4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA2PR11MB5052:EE_
x-ms-office365-filtering-correlation-id: 1c5000f6-43a1-469f-710b-08dca0ba572b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZERWaEZ2aXdMYUkyWFFrcFltV0FyRlAxMWpPMGpwLzNiNnFRODcxaDIxZ2Nj?=
 =?utf-8?B?SGhRbzNROHlqRU1ST05kZFpXMUk0ck1LY2JNcVU4dkZqRVp5MEZtZVVseC94?=
 =?utf-8?B?Zlp1U2swT2kvZzNFL3Fxem1ESDI2TTYyWHhLVGlFUTVzQTlFc2VYTFM1MlNR?=
 =?utf-8?B?a2FsR3lObnplM0NtZ1lHNlA0U0Z2R29kM052ZmNzVjVqZVJReFhMR0h0b1BC?=
 =?utf-8?B?Ky81cFpiREhTY3RGV2VNOE4vQUMxZzlXWW9WYTlpWmxDaHJvR0RUL0pNQnRk?=
 =?utf-8?B?ZXRiTVlHT1ByQ1ZqV0lCOUdiSFB1d3g4aWVrczZnQmVCcVN1djIzSDVPWGFT?=
 =?utf-8?B?aEx1U1pOVUkwYkI0NWdFbEFjM0VMS1BEdVdjUlA0NzROaHNUYnZXY2NKV2NV?=
 =?utf-8?B?TStiOWRob0ZyOXdmU25oUFU0MnliQ2hsa3RDcmpFMHFRZ1FmOG9iakpuUlFu?=
 =?utf-8?B?Y0xtckxxeE96UVh3eVdRUlJTWklyTHc3ZHIweDNUTFRVSnZWTXc5TStNU2xu?=
 =?utf-8?B?N2hBb2NXTTlVTnNqNDVmTlFKcnRtTU1NRGhXdTVXanhTQmZ6NGVQVExzZFJF?=
 =?utf-8?B?aDlIbWJxTXVpdThmZTJlQi9JemFLSHFJemJWYjZqY2g3MXVob0ZYZ0lxZ1RD?=
 =?utf-8?B?cWpPdXFxNFZ2TG9TZ1hBdytGVU9mMVNuMUVFZjZySkMxbkhaTmpCY25CcTFJ?=
 =?utf-8?B?cnRCODloWWx3MFhURWJ1RkVLTW5ZMjZjRWdRc1RhRGhJNTl3NTRpeTBaTGNI?=
 =?utf-8?B?OExGMjUxM0xBc3Y4WDNPQi9WTkZYL2ZzVy9KWElOdSsxc0RvVU13Ni8vWDdz?=
 =?utf-8?B?YmNJRUx6M0RCeFJFSStxbjQ3VGhCcmRrcExoalVKQkt4ZXhMcHYvOUtseUxQ?=
 =?utf-8?B?TDNKcDY0amhtL3JGdmNzL2Q3K2VFejVoVlh5ZHFSYWZHTllNd2g3bXZYZjFI?=
 =?utf-8?B?TDNWcmJlVUR1VURUeUswZnovNi9ZOVNWNGFtV2JxcE5xRUd6VThlSHB6dk44?=
 =?utf-8?B?QU1VWEFUR0VJNTJrenE4aWpXTzJrb0crbzVHS0xCZ3U2aE9yeVh0b1AyUmVF?=
 =?utf-8?B?SWtRT2NnZHZpamJqVEdkaGhYWEtWeERqZjdQbmZrVW9Jd2F4c2JVakJzT1ZP?=
 =?utf-8?B?WnFSdExxakdObVljZXVCSzBhTTNxRWowblFDaWtHUk9BUWhOVWhEUE52ZXMz?=
 =?utf-8?B?Z0xheDF2aFZuNUliV0hzTmRIRlNDMS9NR2hLajBVYlVmd0ZCNDhqUW1Lek1O?=
 =?utf-8?B?VnZtb2ErM3U4czhzRzRxMUwzZkFZdlo4a3BNRjRoWnV0dWNGTXoraDFteXpo?=
 =?utf-8?B?bmM5WGZjdFZkYnVBbGgvQXNIQkNTZWpnQ1FrRVhqQ1J4ZFF3QmJnL01DM0V3?=
 =?utf-8?B?MllZOCtuRkxlT1ZuaGZOdTlBRU4xSVRPY2dodXlEaHdzL284SVJGU0ZQMmFT?=
 =?utf-8?B?bFA1R0FsWEVoZ09RMjZENmVkQ2NycFF6MmppU21rT2dDMlp3ajZkZjJLYXpR?=
 =?utf-8?B?aW5EV2lBdjRDTEJud0xyYU1mV0ZYMnEzY2dIZXY2MUQ0b24vZGc5L096ZXpy?=
 =?utf-8?B?b2FxNEtIOGZ3Y09xYmQrQ0ZuYzZ1aW9XRUozMUtZRzRyQXdYQ0JwZW9tOFl2?=
 =?utf-8?B?SGNoWE5rMUV4Z1ZEc2RncFRTTjZjR0YzUW1hNWthYVF6WDZwQ3FnQzZXSzFD?=
 =?utf-8?B?VVIrR1BId0lGWjdxNUlneXJpYXdOZ21ZSmkyODd3UFFXRHlTUy9Rcjh2V0Z6?=
 =?utf-8?B?MDZtNktiWUx0a2gwZkZtNTQ5dDlxTktsNTNoNnRFT0VKakRsZWx4UG5jZ0M3?=
 =?utf-8?B?d056VC83RlVCOU15NUtuVVhPeU90UWw1ay8xVGx0b2l2bTFWMXRoY1prV0FZ?=
 =?utf-8?B?R2JpV0tWaTdEVmdBUTdoSVBoSGZJRnpHUWluOHdCTm92dGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c1ZZemxaSmNGMENEWmpwekdQbTRuZ2FLVGFvbkczNEQ3Z1B6cnVMUzRDVWl5?=
 =?utf-8?B?V200a3FoWjU0TEpLcFVmRXp2YVZCS1J5TEcwZWE4U09Md2k1ZFBaWGhHUHVk?=
 =?utf-8?B?VjdOdElKVDduVjBZTkNoMVMxU0hjaUdVdTFhaWJmbGJJeWdpVUNwekhLSXZ5?=
 =?utf-8?B?WFp6ZDFQdlhMTkprcm1GVnYzWEdZRDcxR3ozZldVcGd2RjFvR2ZMMm01bC9F?=
 =?utf-8?B?THRlOVRCc2xFWTlUOVhVbkhocThFZWhVWlZaQnJ1Y2ZCdUNYZEZma2x1MW0w?=
 =?utf-8?B?S1crNmFEbVhiblFsRUo3TmNScE1lcmtLbHRVeHduc2d4bmxjbzRpbFNqek1u?=
 =?utf-8?B?enc3UktkMCtMdzRzNE8raEo3cjNWaSt0UGE0M2lRb3JWWDZOVFVjZXJiRFZY?=
 =?utf-8?B?L3NyWDRCQ3ovTEk5V29VVEM2K2R3WTRnMEZ6MEJwWlNBTkFNZlJqaUw3SU41?=
 =?utf-8?B?VTJ4RFVCVjJUWDVQRUNRaEhvMDcyeUR0d2o2RVE4eEl2eFh6bjJ4WW1Lc3lM?=
 =?utf-8?B?WXp4clo0ck1MODFyZSswdVhzdUhSMVEyc1k0T1JvSTkxWm5RQXprelk2WGox?=
 =?utf-8?B?eDZsUkFyc2ZnWkhtUG1OekVYOVNRVUZSY1NLQkl5eEJSRjBtSGVvY0tOYURQ?=
 =?utf-8?B?ZXZLc3ZueFVYQXpxSWlEL2V2aER2YWNjU2lxTHM2MnRiM1ZGY1EyaVpGcTJS?=
 =?utf-8?B?d3JIUkhUeDhtR3pyQkRVNkc2eEt6bWJrazd0VWprSCtNNGxTeTF2eDJXcTdU?=
 =?utf-8?B?cWczdkpwaFZZVmpsNnBPUDlYN0ZEYys0Vmw2S0RyUVBSZXZZaVpJT1FCVFFh?=
 =?utf-8?B?SkpmQ3VRRytuUkkzMDNUYzlIZExPTGxUK2dOTElCeVFTYWt0Vk0wQWhLa3Nw?=
 =?utf-8?B?WUg5U3h1eklFQ2NaUjZwNmRoNTdoT2tmMk4xS2JNRU5MTUhiTHhYejNhL2to?=
 =?utf-8?B?eTlBVDBXaVhMZlpHTkwxRXVycXVhaUVZYXpleEozS0ZMRWF2VHR5NENEMWkz?=
 =?utf-8?B?NlptS2xSZU5BbG45VDJ1NktsNmxKenY4aS9NL1hXTFBMUnRVS1ovcE1NOTZo?=
 =?utf-8?B?T1kwaytBNUl5UjNocStKVDQzTHBoSE5pZXU3T3UrL2p0RjVIdU94OWZ4SDNx?=
 =?utf-8?B?d1RmVzVyV3RjRzd5eU81UVl4dGlHMDZ1U2VaYTAzQTcwYy9LS2wrVW1lSWVJ?=
 =?utf-8?B?VlJaVWpsWmtNbjcyN25zY1ZBbWxrK3lpWFhLTWxrVTNaOHFPTnV3by9hRHZa?=
 =?utf-8?B?b0ZESlJQekZhcVAyUUFlKzk3QmpLWC9OdEFUMU1jaGRLb1hXaHdqdk1vK2VG?=
 =?utf-8?B?ekNZbndKNERqZENIZHdqMDBIbjJLenZBdlJpa09HQVhYcnNiam40Z1A0MFZV?=
 =?utf-8?B?dWt6RUt1RnJudEdWYnIrd3cyOExXdzF3dG9iNkVoOVdpR0JacFJOeVNiL0pl?=
 =?utf-8?B?WkJGa09SRmYwZk9LRTB0UWtsR3hINExrc1V0bFNPam93ZzU2b0JsRnQ0YXhj?=
 =?utf-8?B?N0xNMW9KTm9OVnYwOXlaOUwwRVNUSlZyck5mMjY1VmthaVpQSkZ4TVlZMkZJ?=
 =?utf-8?B?TFkwbFJsU2xRSms1YXVuTGVHMVdBMmVtSmdsY1QxTXpHOW1qOUQ3eEZXYkpK?=
 =?utf-8?B?OENGNVVXZVR3cXREQTNqbHdmS3FGWURiODRQd0QzMTFBUzVHaGs4R0kzNDlw?=
 =?utf-8?B?cjIzRTZtYUVVay9ua3hMNG82clVQUzBsdm11RUV5enFXeTNYRmZnbXE1TUQr?=
 =?utf-8?B?UnZzcHVPTUhRd0Jucm1EaDVDb25LZzZGUEt6ZGtaODJpWFEzNExpbkZoWEJr?=
 =?utf-8?B?ZnVJRjB5TStub2pjQnU4anJFQ3ZJZ0F6RTErVmJXU1psbXFobm9LZ3UrVmlz?=
 =?utf-8?B?UnNEYjdEOUVQQVJ5TXhUK2Nmd1pqUURaM1R1MDRYWFZDNnRYYkhlRi85cUh0?=
 =?utf-8?B?RGtyUk5IcTROazFsaEVpMVlvQk9sT0x5LzF5U2xkNTNqdm1NQVJFdWpyQ2lS?=
 =?utf-8?B?NGRSTTNIWTJHbW1GWDdvZlZ4aUV6SWY5emFqRUYvcFZ6ODdiNElwbzBjOVhS?=
 =?utf-8?B?ViswV3JuVERxYjA5cFpZOHFiZFhUNFdwOUhnSFpSakZES2luV1dBaHdOQ0lT?=
 =?utf-8?Q?0+3lFeCKy7KVCvIm9Vjvggnwv?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c5000f6-43a1-469f-710b-08dca0ba572b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 08:28:56.6296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MPcyBtegadADe1AgZcn0q38az2vMaG3ye7S5TpWeQW7Sz9IRtJOky+RnYf0PDUvDeIix4n/NZAo1jGfPFbVM7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5052
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
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgSnVseSA1LCAyMDI0IDg6MjMgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMTIvMjBdIGRybS9pOTE1L2ZiYzogRXh0cmFj
dCBfaW50ZWxfZmJjX2NmYl9zaXplKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBQdWxsIHRoZSBsb3dlciBsZXZlbCBz
dHVmZiBvdXQgZnJvbSBpbnRlbF9mYmNfY2ZiX3NpemUoKSBpbnRvIGEgc2VwYXJhdGUgZnVuY3Rp
b24NCj4gdGhhdCBkb2Vzbid0IGRlcGVuZCBvbiB0aGUgcGxhbmVfc3RhdGUuDQoNCkxvb2tzIEdv
b2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMgfCA5ICsrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYw0KPiBpbmRleCA0N2I3MTVlNWQ1MzMuLjI5M2UxYTNiOWE5ZCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IEBAIC0yMTgsMTMgKzIx
OCwxOCBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2ZiY19tYXhfY2ZiX2hlaWdodChzdHJ1
Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gIAkJcmV0dXJuIDE1MzY7DQo+ICB9DQo+
IA0KPiArc3RhdGljIHVuc2lnbmVkIGludCBfaW50ZWxfZmJjX2NmYl9zaXplKHN0cnVjdCBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5LA0KPiArCQkJCQl1bnNpZ25lZCBpbnQgaGVpZ2h0LCB1bnNpZ25l
ZCBpbnQgc3RyaWRlKQ0KPiB7DQo+ICsJcmV0dXJuIG1pbihoZWlnaHQsIGludGVsX2ZiY19tYXhf
Y2ZiX2hlaWdodChkaXNwbGF5KSkgKiBzdHJpZGU7IH0NCj4gKw0KPiAgc3RhdGljIHVuc2lnbmVk
IGludCBpbnRlbF9mYmNfY2ZiX3NpemUoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+
ICpwbGFuZV9zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRv
X2ludGVsX2Rpc3BsYXkocGxhbmVfc3RhdGUtPnVhcGkucGxhbmUtDQo+ID5kZXYpOw0KPiAgCXVu
c2lnbmVkIGludCBoZWlnaHQgPSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT51YXBpLnNy
YykgPj4gMTY7DQo+IA0KPiAtCXJldHVybiBtaW4oaGVpZ2h0LCBpbnRlbF9mYmNfbWF4X2NmYl9o
ZWlnaHQoZGlzcGxheSkpICoNCj4gLQkJaW50ZWxfZmJjX2NmYl9zdHJpZGUocGxhbmVfc3RhdGUp
Ow0KPiArCXJldHVybiBfaW50ZWxfZmJjX2NmYl9zaXplKGRpc3BsYXksIGhlaWdodCwNCj4gK2lu
dGVsX2ZiY19jZmJfc3RyaWRlKHBsYW5lX3N0YXRlKSk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHUx
NiBpbnRlbF9mYmNfb3ZlcnJpZGVfY2ZiX3N0cmlkZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUNCj4gKnBsYW5lX3N0YXRlKQ0KPiAtLQ0KPiAyLjQ0LjINCg0K
