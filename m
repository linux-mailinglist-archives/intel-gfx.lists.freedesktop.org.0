Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C51A6B013F7
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 09:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BEE510E9B0;
	Fri, 11 Jul 2025 07:03:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MTOkSP14";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3198B10E264;
 Fri, 11 Jul 2025 07:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752217400; x=1783753400;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=OBZ5ut/q69UV6rVFXwAFh6aLc+aTXzNiMSwdg2mxHcw=;
 b=MTOkSP14HNwsB5QxaKHfzcaolYb+WNURYdUu1laVRldsrSbc35B8PVgm
 O6ooWp9btayr9LaQ0EZKog4B8JnzfsCQ2moEZC9tVN6CL3jbcVusO4XLf
 kthestLIsFe4qq01mfE8w9mhnhL5eJ7mVt2R4xhgCrjeS+wNvQ4bx0vfg
 P35ptkA6X2uOgJI2rTPk+ET8mfSLSrkNXdh42FQab8lQxfEnKS92aTQRg
 aPRISf80x6C+auNWhfiiz5ovOA2wIXluZ2ifCortes3lB3kC1BW78oM6l
 gC0RwCgOFGM+FP4UyXELaVajwcQni/HKg06pj7sWRmsqIwBpFnOCKgb4x Q==;
X-CSE-ConnectionGUID: cb6irE6EQGKCLPGNxnnkkw==
X-CSE-MsgGUID: MvCtHQ9WQrquhIH7ZahcNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54642334"
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="54642334"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 00:03:19 -0700
X-CSE-ConnectionGUID: tk07PcOzQqudDQhnDphxcw==
X-CSE-MsgGUID: w2YAx9pKTbiMMYm8m+5qfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,302,1744095600"; d="scan'208";a="193504194"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 00:03:14 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 00:03:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 11 Jul 2025 00:03:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.61)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 00:03:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=glSQp+NV5tw874uF+K7s3kz+UEPnG8fieOvMp7Hp56xx/vgG3Gytuy2gmsk5kWWc1Tdegesf6aRXpf3qyrW8o8wZGWDJKql6hrE0vRdTFBwKCdaPYV58P1r20Xl2rUM/qVB9LBU5Q/LbE7KEl1qJQ6EwGONdOCdU9nKMwFp8lUs8oJ7PlRGB29UMymgHJoQgqzKJ9A+Ctm1fYVDqbKejX+X0fd77YG+GjjPznD2ZLXWeZxZHkawk22+NBaUXZ1em9TB10+UTa7mabBr4y11WdMTh6E0EkT2irVI+KiAZaZ9E3WoCSAmtqLcFsfvduDQqS2doX1XQwhwvQwle8DqaqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OBZ5ut/q69UV6rVFXwAFh6aLc+aTXzNiMSwdg2mxHcw=;
 b=y9nokEB6QvT7DDNe/rbCA/CXUj1CyRdsBXR3mwVMQ/OV1vcjSvG0T4EmYpdN2IqwqiyeE9bWR+4/+hBJ2ccmkPwQsKCWqecPBUDv6bZUykJXk/JfMiwic7TtXoegykeeP+Mg6zYXZdMQZtsArLB0N8ny7UmY9bneyokF28eMJZWGwL3RGtijQQEv5ln24VeMZjlmzVsoYxQ8Mur911+FhakJMwHAjc29GA4YVGpCgBiEyQjlB1/fV/rs0DqKpP/jBrjpOlKHNTIXOVgYJIvx60RzxcxeSJv8Znz9kbkCg0lkh8wgJNt4n0dkLpmDw7lYR1ZdW5jFbhKj2aYbgDEx3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5118.namprd11.prod.outlook.com (2603:10b6:a03:2dd::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Fri, 11 Jul
 2025 07:02:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8880.021; Fri, 11 Jul 2025
 07:02:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Thread-Topic: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Thread-Index: AQHb8Kc9L1K5oI2goUG+8WAYnsMpTLQqBX0AgAAS7ICAAWjgAIAASo0AgAC2b4A=
Date: Fri, 11 Jul 2025 07:02:40 +0000
Message-ID: <5758db3fc53e680a305fbef7627153d7ae2a4ef6.camel@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-3-jouni.hogander@intel.com>
 <aG6g5C-nUMPqYSzS@intel.com>
 <e4f4572425562c23117710d538ab2d8f377bc1f3.camel@intel.com>
 <aG_ffKlueD_8fx2E@intel.com> <aHAeBsRCmkI6QZCv@intel.com>
In-Reply-To: <aHAeBsRCmkI6QZCv@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB5118:EE_
x-ms-office365-filtering-correlation-id: ffb2fed4-5b59-4b25-2582-08ddc048ed69
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?dDFZeTg2dHFodlNxUDBGUENFZ1JZS3h3ZFN4OFFFNDVSeDFkcHEvVnRnSzZW?=
 =?utf-8?B?Zno2dTlXdEFjRUFUdHBudXc3eWZxZ1doVE9jWjFUYTJZVkxaSUJXemkzWEJH?=
 =?utf-8?B?M29pbGdqejRaTW9iWTlXcW9hdi9wR09kNjd3S3pza1J1ZGs4cnYrL2hXb1g5?=
 =?utf-8?B?SVlvSUN5dFBzbVhJU3pscytIUlNBT2M3NTZSRFpKUWJ0WnRDS0hlOVpVeTFO?=
 =?utf-8?B?ZzNIRm5UNDQ5REhIbmxxc01VcEp1VlQ5UCt1dWJXWDJlNnJMdDFpVVJ0VVdH?=
 =?utf-8?B?UUVrTjg1UFNwSW9aQ0NFVW84MjJxa2h1SFdGTVNCMTgxbWhaU2J2aU1JamRS?=
 =?utf-8?B?QmU3TVZ1Vk0zUFpsZHdMZElENWtUQ21BNFJOWWk1a3lwRlM2c3RZUFVYMDF6?=
 =?utf-8?B?bTVnVnp4TUpWL3Z0VzF2YktMaTZ5Zmg5eFNLd2lRZ1Jya1QyS3JrcDN4Skox?=
 =?utf-8?B?V0dCVUsyUWM2TnV3UmNaeWNKR2poQkJOQnI5YVVZK0VtZUV5Nml0d0VVWk1I?=
 =?utf-8?B?YlJjMFBEQlFjR3U5SXlVSlhmUDZjanc2LzZzaWRsTTRKWlllT2FSMVZKTGF0?=
 =?utf-8?B?WjJkTVc1VGZuMjBMU2hBenpSUkhEanMvSU5XeEprQ0tzS01qWWhYUVQyRDFm?=
 =?utf-8?B?Mm1Hdks3VlJVS1E5ekZlY1BETzJEZDFIT2h0T3ZLakU1SHVLNDRSUnJRaGhQ?=
 =?utf-8?B?ajVwTjNwODBqd3lzNmovN0VTdDIzcHNWTkFOREpiZjB3eW5FbWFETDI0VWlP?=
 =?utf-8?B?clFsa2VoNTB0TFlNUnVuYTJkNHBTRDJ0dEdLYWN1bXk4VGdVb2tsYXc5ZjZO?=
 =?utf-8?B?OTlzOERNZ0xZZytLMWYyOWRVc3VRV3FBT0lTclhlL05Ka1lDWXNvQTc4UVgx?=
 =?utf-8?B?S2EzUGsydjNvSUVYZnk5Q0VKaERrWGwyTjN6dUpKaDBiK3FnakRSdHY2Y0Fz?=
 =?utf-8?B?K2dqdDNubEMzRjlqVmxwV3ZuV3hadDZoclNDQVlFdElhRHJzZEcvNGFYTzY2?=
 =?utf-8?B?dGZ4TytvaHlnR2diaXluRVFEekZvMVpLcFh5QVZIeDMwcW1NRVFYZ0FwSlFw?=
 =?utf-8?B?U1FDU3M2TlhTTkhFMTRzb1l1UFUyd1RweWZGR0oxUy91anV2UDUzcVJOZERF?=
 =?utf-8?B?eWxXSXdwa0ptVjRpZ05lWFJkQUtnY2VqRnNIbG93R0RyVHFiQmxRN3FCMGFK?=
 =?utf-8?B?QWFUOEdUWnpHSUU3YkQ2VzVLS2I5SmdsdTg1NEdSKzluY1dFd2tIbU9BR1dE?=
 =?utf-8?B?V08vV0NsVVZ6RHJqT0xpVlR1YkQ3WDFMVFEvbFBUcFFCL0tGYUtlQ3Vhc01I?=
 =?utf-8?B?RXRmZEhsZW5WMjV5UC9QbXV1R2c0aU5uM3E4QUZkOEcvUThtMW90cXg3Tm5I?=
 =?utf-8?B?WWpUVlEwODJaNEZTZTkwZVpRNHdCVnYxVXJqUnpPVzJFOVlIUkIwWEdENkdW?=
 =?utf-8?B?SVZtRUdqOTlyejdkR0ZqV1c3a0Zvc0paY0xxM3dqVnVnUmhCUUVBd3dQVmxV?=
 =?utf-8?B?Q0F0aHVlSFlzL0pFNGRmUXZGTE5sRjV0NHhlc1QxaFFkZk8xZlhuMmhYYWox?=
 =?utf-8?B?ek84RHJCdjNKOVh6N0tkYWZ4eTl3SGNjKzIvZGFwVERlM2FNamZmZjd3OEZt?=
 =?utf-8?B?TDU5M3VsMHk1ZEpRVFdqNFBBeG9FT01zMDRkSHhhRkZjRm53anZlaU5KUVd6?=
 =?utf-8?B?RUVUZHNBWDRoS0MwSUUzMkdNOTJsVkZWVzZkNFVieXE0cjZqRnRXSWNIOTU5?=
 =?utf-8?B?SXNSSk1WMEdwY3V0SjhjSjdCbHc4VnFEUDZ5TEZ4blRic2xYSG54NVRuZHRR?=
 =?utf-8?B?cFhqVERHTjN1Zk1yNkZvNXA4UDE1KytzMjcxWVJXanZLT1g4TWVZcXBOSlR6?=
 =?utf-8?B?VHh5OGpncGpRcEd5NHIrNGxPTEJ5K1JLZVRvV3ZLbG1mMHRhalZ4NE9IdXZi?=
 =?utf-8?B?QTVyZmhiRm5kSDRhQXRFMFhZaUYxTjV4cjVGbFVuKzk0WDVDMDd5OGYzVHJW?=
 =?utf-8?Q?sTGj5BobHQmIwmb5UL4eywM2gIHn1o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWo1UmI0VnkrTG5iL0FtamRPYjA1V3NaOW9mYUlJV1VwUlpOM0JCUzFTaGZV?=
 =?utf-8?B?SWJYMDM4dUhHcWdWcml2VCszdjdVRS95Vk5hQURlZm90QU4yelBrWDBSOHAz?=
 =?utf-8?B?M2E5NFN3a20rZ1g3WVYxYmhUSUdOam5wZDlvSkNOY1pCb2xBOTVVWVZ5TVFM?=
 =?utf-8?B?eUNPbDUxZjJ4eWg2TnhDdzdBVXJwelB1MXcxUFRYZVdwbTg5ditHTis5WFhO?=
 =?utf-8?B?ZStZWTJRTVZOZTdpVXNZWlVYK3FNTlJpN2dOUys5MW8rNlpSTjNkTk8xaEtR?=
 =?utf-8?B?VlVLUWNqVHNQNzZMQWw3SmRHaFl0ZGJtTy8wY3VZR1h3eG5TeW9ueklFNlJk?=
 =?utf-8?B?Q2FzUmdvV3d5QVhscEFBVEtncUNhVE94VEpWVGVaaDRMeDA1aUF6cjVNcUFD?=
 =?utf-8?B?QW83THpFZFpPZUQrTFF5NXVDZlBwVU5YNjF3RDJuMm5YWjZjWCtKSTdnSjN6?=
 =?utf-8?B?cTNmaWxyVnB5NVJsQ1RHSkZOOE5yRm5UUGp2c0s3NmFKclJ2cVdROEFtNlpT?=
 =?utf-8?B?ekRHN1dZRUJUT1c3VnVON2VuNjQ2TjVzV1ZpK3A2YmpjUnBhR2RjbVNudVlw?=
 =?utf-8?B?Nk9wTUR6d2ExTFU2U1lwclZkYkhDeUV0bkx6Z0NhVXRSRG5WN3R4Lyt3THBH?=
 =?utf-8?B?amlmSVZWM1A0ek1WM2dDWjF2L1N3Z0cxT0xDZGR6OGVHK2dkNnZVRHB3Vmh5?=
 =?utf-8?B?bUJaV2hhalNRQWpYVENnNi9ydUNSdzkvbGh0VmppQW1sTnZiaVZBYloyV1BV?=
 =?utf-8?B?L1FnM0pCSWV3dGNPNWd0eklTUVpzaFVQZ2EwMWhITFFEdUlNNG1TNm52Q1lo?=
 =?utf-8?B?dU1rby8rMlJjbERMZGZxZnVlWWp5ZGNOWXRaVVJ3Q0wzdzZabmkwb2lybE5V?=
 =?utf-8?B?RURNMnFCMVJhY2l1MW5vQlFKUXdsT3hodFloeFNoN0dWN3REZE5oSnZlTGNq?=
 =?utf-8?B?eGM1aVluV0pyVlIwV0dwbXBqcGhpS0hNcWhDSm5FMGVieng2NCtkbnpPLzI5?=
 =?utf-8?B?N2U4ZHZVeGVsR0ZrMkRWaFVCK21BaWJ6SU5hMklTK043aElBenIvdDVNcGRG?=
 =?utf-8?B?NzJZSkRXRlBXREp2ZkEya3MvMS9lbFJSM0xGSHJJTFU5ay9QNlZxOXlhbzRp?=
 =?utf-8?B?V3VNUDczTnV5RzBLYk5yclIvVDFHMXlYeVkwUWIwdi9EZ205NDdKaFEzNVZ0?=
 =?utf-8?B?UUhYd2hsUWdiRXhJTkJBVkNjcnRrd1JFcGo4UFZhV0NLQXBUYVdkRHJrcnlP?=
 =?utf-8?B?cU5yQ2ZSVEkvOXNTcHJHVXFhK3preUlGWWJsZWRLcjdjY2xpMk0yQWYreWNj?=
 =?utf-8?B?c2c3Q21KRkxIQ3RURGdOWmtSNm1NUSs4R3VXb2dWNFVGTDdOcmd2WjdoeEdC?=
 =?utf-8?B?TXE1MXVKNWhmQzM5YmlzZXJFcDVUWi9MUE9Qa2JaTEdDbSt1emF6T0JzYm90?=
 =?utf-8?B?OTlWZzFIak1rd3NReFd6S291bHJOaThjV1lWblRjZWxjMFBKd2NEcnNxdGt5?=
 =?utf-8?B?cno4Vm9xdXVYRUFweTNqWHNzd09YTjhDZHBxb3phcjdNSE1aNzFnMW9DczhL?=
 =?utf-8?B?RDRLWWZ4ZURiS2I1QUtNd3ZTbmdGTTNpWHlCMzhXcTdONlhRZUdpVTVOODRK?=
 =?utf-8?B?NVRCRE42dVJZVTBPSlJaNnFseUVwdVJqR0tzZzM3b0VvclJYUUQ4ZjBFRXZv?=
 =?utf-8?B?VW5BVW1wcFp3NnV2a3hDUW1hV204WnpkNnM1djRwYk8vZ0NSbGtWdnRRNHd4?=
 =?utf-8?B?OEUxUm11WkpjckcwZG5tQkdhMDNpRFliRkNwazl1L2lkMTJMNHhHL28xdk1x?=
 =?utf-8?B?ejJRS0h1SW81dzlEQUtOcHlkTnQrQWloblg1ZVBlN0JYVXZNUlV1allqcU80?=
 =?utf-8?B?MFRJYUY1UzNqWjhpN3h4QmtUT21FWDZiR3pmdHkrMnV0bUZIVnJtMGR3bHBG?=
 =?utf-8?B?TkFjR0ZvOTBOMWlqVktVZ256Tzh1VXlVQUZLOFZrWVlYU2NObHU5Y0lJUEJK?=
 =?utf-8?B?RnlsSGxRNFFSWkkzZlVydzBIRTBtRmtHYVA0L3NWMERBeHlxNmNaRWtja3lu?=
 =?utf-8?B?aGNPOVE4MktTaUlpRnZaRUppbXZXeXIvWnZoK3lSdjVmU3N1cDYwcDNWTEoz?=
 =?utf-8?B?RHBVRmlEZ3lqNCtQdDBMbFFLYURKcnE0YlVtYW96aGtCTDJZVGtSaWlzWUg3?=
 =?utf-8?B?Yk1mcmpETG1YMzBZVlVCcUE4aVJ5K2FBUmwvSlZkT0ZpVW4yTUpJQzBIRUY5?=
 =?utf-8?B?MkptajFaSDByRFVKa3VtNjBiWUNBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E425AF6BED76A04FB5F60B5B8B782D17@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffb2fed4-5b59-4b25-2582-08ddc048ed69
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2025 07:02:40.9222 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1SLirinDDpRETlWAD0/vaeznXVXFO/p+8p+DBc+zh/WI5j50GJBAc38z8jEIRYVQGBfPF18PKq+e3c/8VIdqkXcqZKouQjwOstPisXkaTZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5118
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

T24gVGh1LCAyMDI1LTA3LTEwIGF0IDIzOjA5ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgSnVsIDEwLCAyMDI1IGF0IDExOjQyOjUyQU0gLTA0MDAsIFJvZHJpZ28gVml2
aSB3cm90ZToNCj4gPiBPbiBXZWQsIEp1bCAwOSwgMjAyNSBhdCAwNjoxMToxN1BNICswMDAwLCBI
b2dhbmRlciwgSm91bmkgd3JvdGU6DQo+ID4gPiBPbiBXZWQsIDIwMjUtMDctMDkgYXQgMjA6MDMg
KzAzMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+ID4gT24gV2VkLCBKdWwgMDksIDIw
MjUgYXQgMTA6NTc6NThBTSArMDMwMCwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0KPiA+ID4gPiA+
IEN1cnJlbnRseSBkaXNhYmxpbmcgUFNSMiB2aWEgZW5hYmxlX3BzciBtb2R1bGUgcGFyYW1ldGVy
DQo+ID4gPiA+ID4gY2F1c2VzDQo+ID4gPiA+ID4gUGFuZWwNCj4gPiA+ID4gPiBSZXBsYXkgYmVp
bmcgZGlzYWJsZWQgYXMgd2VsbC4gVGhpcyBwYXRjaCBjaGFuZ2VzIHRoaXMgYnkNCj4gPiA+ID4g
PiBzdGlsbA0KPiA+ID4gPiA+IGFsbG93aW5nDQo+ID4gPiA+ID4gUGFuZWwgUmVwbGF5IGV2ZW4g
aWYgUFNSMiBpcyBkaXNhYmxlZC4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBBZnRlciB0aGlzIHBh
dGNoIGVuYWJsZV9wc3IgbW9kdWxlIHBhcmFtZXRlciB2YWx1ZXMgYXJlOg0KPiA+ID4gPiA+IA0K
PiA+ID4gPiA+IC0xID0gUFNSMSA6IHllcywgUFNSMiA9IHllcywgUGFuZWwgUmVwbGF5IDogeWVz
DQo+ID4gPiA+ID4gwqAwID0gUFNSMSA6IG5vLMKgIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBsYXkg
OiBubw0KPiA+ID4gPiA+IMKgMSA9IFBTUjEgOiB5ZXMsIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBs
YXkgOiB5ZXMNCj4gPiA+ID4gPiDCoDIgPSBQU1IxIDogeWVzLCBQU1IyID0geWVzLCBQYW5lbCBS
ZXBsYXkgOiBubw0KPiA+ID4gPiA+IMKgMyA9IFBTUjEgOiB5ZXMsIFBTUjIgPSBubyzCoCBQYW5l
bCBSZXBsYXkgOiBubw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IEkuZS4gdmFsdWVzIGRpZmZlcmVu
dCB0aGFuIC0xIGFuZCAwIGFyZSBoYW5kbGVkIGFzIGJpdG1hc2tzDQo+ID4gPiA+ID4gd2hlcmUN
Cj4gPiA+ID4gPiBCSVQwDQo+ID4gPiA+ID4gZGlzYWJsZXMgUFNSMiBhbmQgQklUMSBkaXNhYmxl
cyBQYW5lbCBSZXBsYXkuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gdjI6DQo+ID4gPiA+ID4gwqAg
LSBtYWtlIGl0IG1vcmUgY2xlYXIgdGhhdCBlbmFibGVfcHNyIGlzIGJpdG1hc2sgZm9yDQo+ID4g
PiA+ID4gZGlzYWJsaW5nDQo+ID4gPiA+ID4gZGlmZmVyZW50DQo+ID4gPiA+ID4gwqDCoMKgIFBT
UiBtb2Rlcw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+
IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMuY8KgwqAgfMKgIDYg
KystLS0NCj4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmPCoMKgwqDCoMKgIHwgMjINCj4gPiA+ID4gPiArKysrKysrKysrKysrKy0NCj4gPiA+ID4gPiAt
LS0tDQo+ID4gPiA+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDkgZGVs
ZXRpb25zKC0pDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gZGlmZiAtLWdpdA0KPiA+ID4gPiA+IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4g
PiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1z
LmMNCj4gPiA+ID4gPiBpbmRleCA3NTMxNjI0N2VlOGEuLjE5NWFmMTllY2U1ZiAxMDA2NDQNCj4g
PiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cGFyYW1zLmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gPiA+ID4gPiBAQCAtMTE2LDkgKzExNiw5IEBADQo+ID4g
PiA+ID4gaW50ZWxfZGlzcGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX2ZiYywNCj4gPiA+
ID4gPiBpbnQsIDA0MDAsDQo+ID4gPiA+ID4gwqAJIihkZWZhdWx0OiAtMSAodXNlIHBlci1jaGlw
IGRlZmF1bHQpKSIpOw0KPiA+ID4gPiA+IMKgDQo+ID4gPiA+ID4gwqBpbnRlbF9kaXNwbGF5X3Bh
cmFtX25hbWVkX3Vuc2FmZShlbmFibGVfcHNyLCBpbnQsIDA0MDAsDQo+ID4gPiA+ID4gLQkiRW5h
YmxlIFBTUiAiDQo+ID4gPiA+ID4gLQkiKDA9ZGlzYWJsZWQsIDE9ZW5hYmxlIHVwIHRvIFBTUjEs
IDI9ZW5hYmxlIHVwIHRvDQo+ID4gPiA+ID4gUFNSMikgIg0KPiA+ID4gPiA+IC0JIkRlZmF1bHQ6
IC0xICh1c2UgcGVyLWNoaXAgZGVmYXVsdCkiKTsNCj4gPiA+ID4gPiArCSJFbmFibGUgUFNSICgw
PWRpc2FibGVkLCAxPWRpc2FibGUgUFNSMiAoQklUMCksDQo+ID4gPiA+ID4gMj1kaXNhYmxlDQo+
ID4gPiA+ID4gUGFuZWwgUmVwbGF5IChCSVQxKSkuIg0KPiA+ID4gPiA+ICsJIlZhbHVlcyBkaWZm
ZXJlbnQgZnJvbSAwIGFuZCAtMSBhcmUgaGFuZGxlZCBhcw0KPiA+ID4gPiA+IGJpdG1hc2sgdG8N
Cj4gPiA+ID4gPiBkaXNhYmxlIGRpZmZlcmVudCBQU1IgbW9kZXMuIg0KPiA+ID4gPiA+ICsJIkUu
Zy4gdmFsdWUgMyBkaXNhYmxlcyBib3RoIFBTUjIgYW5kIFBhbmVsIFJlcGxheS4NCj4gPiA+ID4g
PiBEZWZhdWx0OiAtMSAodXNlIHBlci1jaGlwIGRlZmF1bHQpIik7DQo+ID4gPiA+IA0KPiA+ID4g
PiBUaGlzIHRoaW5nIGlzIHZlcnkgdW5pbnR1aXRpdmUuIFdoeSBkb24ndCB3ZSBqdXN0IGdldCBy
ZXBsYWNlDQo+ID4gPiA+IGl0DQo+ID4gPiA+IHdpdGggYSBuZXcgZGlzYWJsZV9wc3IgbW9kcGFy
YW0gdGhhdCBpcyBjbGVhcmx5IGp1c3QgYSBiaXRtYXNrDQo+ID4gPiA+IG9mDQo+ID4gPiA+IHdo
YXQgdG8gZGlzYWJsZT8NCj4gPiA+IA0KPiA+ID4gSSB3YXMgdGhpbmtpbmlnIHdlIHNob3VsZCBr
ZWVwIGl0IGJhY2t3YXJkIGNvbXBhdGlibGUuIEkga25vdw0KPiA+ID4gdGhpcw0KPiA+ID4gcGFy
YW1ldGVyIGlzIGluIHVzZS4NCj4gPiANCj4gPiBJIGFncmVlIG9uIGtlZXBpbmcgdGhpcyBiYWNr
d2FyZCBjb21wYXRpYmxlLg0KPiANCj4gSU1PIGl0J3MgYW4gdW51c2FibGUgbWVzcyBzbyBJIHdv
dWxkbid0IGJvdGhlciB0cnlpbmcgdG8gcHJlc2VydmUgaXQuDQo+IFRoZSBvbmx5IHZhbHVlIHRo
YXQgc2VlbXMgdG8gbWFrZSBhbnkgc2Vuc2UgY3VycmVudGx5IGlzID0wLiBJZiBJDQo+IG5lZWQg
dG8gdXNlIGFueSBvdGhlciB2YWx1ZSBJIGFsd2F5cyBnaXZlIHVwIGltbWVkaWF0ZWx5IGFuZCBq
dXN0DQo+IGhhY2sgdGhlIGNvZGUgaW5zdGVhZC4NCg0KSXQncyB1bmludHVpdGl2ZSBidXQgbm90
IHVudXNhYmxlLiBJIGhhdmUgaW5zdHJ1Y3RlZCBzZXZlcmFsIHRpbWVzIGJ1Zw0KcmVwb3J0ZXIg
dG8gc2V0IGl0IHRvIDAvMSB0byBiaXNlY3QgaWYgaXQncyBQU1IyIHByb2JsZW0uIFdlIGhhdmUg
YWxzbw0KY3VzdG9tZXJzIHVzaW5nIHRoaXMgdG8gZGlzYWJsZSBQU1IgbW9kZXMgdGhleSBkb24n
dCB3YW50LiBBcyB3ZSBoYXZlDQpwcm92aWRlZCB0aGlzIGF0IHNvbWUgcG9pbnQgSSB3b3VsZG4n
dCBkcm9wIGl0IG5vdy4NCg0KPiANCj4gSWYgd2Uga2VlcCBjYWxsaW5nIGl0ICdlbmFibGVfcHNy
JyB0aGVuIGl0IHNob3VsZCBjbGVhcmx5IGJlIGENCj4gYml0bWFzayBvZiB0aGluZ3MgdG8gKmVu
YWJsZSosIG5vdCB0aGluZ3MgdG8gKmRpc2FibGUqLg0KDQpPaywgaXQgc2VlbXMgSSBuZWVkIGlu
dmVyc2UgdGhlIGxvZ2ljIHRvIGVuYWJsZSByYXRoZXIgdGhhbiBkaXNhYmxlLiBJDQp3aWxsIGRv
IHRoYXQuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiANCj4gPiBBbHNvIG91
ciBleHBlcmllbmNlIHdpdGggZGlzYWJsZV9wb3dlcl93ZWxsIHNob3dzIHRoYXQgbmVnYXRpdmUN
Cj4gPiBuYW1lIGluIHRoZSBwYXJhbWV0ZXIgY2FuIGJlIG11Y2ggbW9yZSB1bmludHVpdGl2ZSBh
bmQgY29uZnVzaW5nLg0KPiANCj4gVGhhdCBvbmUgaXMgcmF0aGVyIGRpZmZlcmVudCBiZWNhdXNl
IGl0IGRvZXNuJ3QgImRpc2FibGUgcG93ZXIgd2VsbHMiDQo+IGJ1dCByYXRoZXIgaXQgImRpc2Fi
bGVzIHBvd2VyIHdlbGwgZGlzYWJsaW5nIi4gQnV0IHllcywgaXQgaXMgYSB2ZXJ5DQo+IHBvb3Ig
bmFtZSBhcyB3ZWxsLg0KPiANCj4gQ2FsbGluZyBpdCAiZW5hYmxlX3Bvd2VyX3dlbGxzIiB3b3Vs
ZG4ndCByZWFsbHkgaGVscCB0aG91Z2guDQo+IEl0IHNob3VsZCBwZXJoYXBzIGJlIHNvbWV0aGlu
ZyBtb3JlIGxpa2UgJ2RvbnRfZGlzYWJsZV9wb3dlcl93ZWxscycNCj4gb3IgJ2tlZXBfcG93ZXJf
d2VsbHNfb24nLg0KPiANCg0K
