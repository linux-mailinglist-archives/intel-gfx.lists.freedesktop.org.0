Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4432AB964D
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 08:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85FE310E117;
	Fri, 16 May 2025 06:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sz0zJsof";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7736910E9B2;
 Fri, 16 May 2025 06:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747378464; x=1778914464;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ddd7IHB66fgdyiZ9BlCaZ7ttsDIVND0yQ2Em6nElCH8=;
 b=Sz0zJsof8zUyx8yOk9YjVbyUrfkerNRiIyYfe6IdwfchudWJEu6NxfEF
 BxtppxCEISB5D9vDAlSkHcdVw2oXt/4MsjxiW0fcNF7D4PnIdZT8DBfds
 IYcGYeF9FJd450tBvcRn9rGLv4wL7N8HrQukBXZCdJYOhW4Rony0uqp07
 5nfHaqFhtsX+2zKMWX0HLtPgYm4YgunK48HWrAhpSG18SymqumwkTBtFP
 kKA6T+09NtQpuamUX1lcyq0nxHXxA2iwkF9aBx1PmKRlCv7jEcKveYu3z
 mzGxwyfUmmtBapgF0h5Dv+nF/4KuOxiEMKF00GLus42SocTQlars1pAx7 w==;
X-CSE-ConnectionGUID: /pb50oOTRDCtKQC94UPOIA==
X-CSE-MsgGUID: ke2t2oSxTWi8nEt4lCb4IQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="53012934"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="53012934"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 23:54:23 -0700
X-CSE-ConnectionGUID: CLwXD9BVTHimXiIyK3tTCQ==
X-CSE-MsgGUID: Jh86pmU0RvSc8VOGhY9evQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="169539153"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 23:54:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 15 May 2025 23:54:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 15 May 2025 23:54:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 15 May 2025 23:54:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rIp7JbkaK7mq+pONshI1lKO+5HzT2lY7ABPi4jz24gxDKYn/qmDrhbLZ33kIZxg2IgeyxopjHKiikhW7Liqvsa8gC9JDrUIdaFqasnodXpXb32CtmBq13rRkm4KJVCgc2kxS9m/H6thOeqxvNI7+aW+X2eAAQFqt1n6G0fkMV820KHHEpek4GZZ2kJICzb5r+A0Mi67KoZdO8JSKAsyhllSeLjhye6ADDqZwqEitIHUJNojgnoIbHQp9BZKPXreXjAhjPT1Ogkq78vH/HlGLRrq25l0Y47/ezIy3IL2zbS2gZTDXqyuqQTRSczPvJV86Elp1hMIgW057Z0of+VWCzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ddd7IHB66fgdyiZ9BlCaZ7ttsDIVND0yQ2Em6nElCH8=;
 b=cvPDQIUzVYXpOUg2sZG81zm7O/ve574hUXizqyLe38NUymgRAS1EWK9qTZhjAMHtuQZieqjMxh7/6nGtBbKTF9JqDe9BLtnM0Jaz6xfeHDNOqra+MOEPnLHoWVd8PIqsN8qNF6IbuWWw63uRM2brXH+v85qZrqcWwUr4IC0d6/ZaVVTQfdgROwcO86KhIarRuX3wT6hiZKHLE10Uz/EnRmb+4siidOwhcMZc7dLIu+FUwt5MWrx/Iz3dpCDikKe/dozJTEa7qFUzDNKGaluISIEfQXEKvtZmptJ3DE/FuW/I/KFK+jg6PNB6iJaZh8P+SR6eVTPwvp8oxOy8alJMbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB7606.namprd11.prod.outlook.com (2603:10b6:510:271::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.31; Fri, 16 May 2025 06:54:19 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.027; Fri, 16 May 2025
 06:54:19 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
Thread-Topic: [PATCH v2] drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
Thread-Index: AQHbvXDdb2i3VHwggke1747C+ihDR7PU484A
Date: Fri, 16 May 2025 06:54:19 +0000
Message-ID: <710c25e1b6962843508db103e27f726ef88dcec3.camel@intel.com>
References: <20250505033911.393628-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250505033911.393628-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB7606:EE_
x-ms-office365-filtering-correlation-id: 81df2319-5779-4b03-7968-08dd94467b46
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MTI3NXVnMERyeVhGRVB4NWFVYXo1a3A0b0IxeVl2OThieDJ1Qm5kU2RkcWQy?=
 =?utf-8?B?emRnRFhqeWg4RHlNcVdKc0toc1RIbjNVZFhtUWFHYzFNdTQyeS82K2JmREJz?=
 =?utf-8?B?ZldiN0pNaHg1Tm5Bdm95c1pienRkT2FTMzRSY3c5UE9XYkpoM0s3T2xUNS8z?=
 =?utf-8?B?S205Z2J2NzJlTGtYMERLRzdYRDVzT2FWdDBURldHZDVwNExNTGNCbzZHWWZY?=
 =?utf-8?B?MUFOelFQcW1Xc2pONmprbHVySS9HT1BGUlk5ZFhncUxLMFI1dXBPZEF4b3dq?=
 =?utf-8?B?TThqQ0xXdU0rUjZIK00xN244RzA0T3lNWUxaaTFES0FCOTNZWEF2NUhLR2xE?=
 =?utf-8?B?WXhKeUFRV1MwdnUwM01BRDBRVmFEc3V6V2JPblNuMXFhUUJ4WjhHZENRS2Ny?=
 =?utf-8?B?d1M2dXBOWGhySmliSkVzWHQ0dDBhMkxSTjJseTNQd0c2c2U1SXRub3JyZkdw?=
 =?utf-8?B?cXdKQ3VKNXExZVVrbURGci80bmllNTZNYXM1RUtYbFlXeEpndGw2ak5WNEZr?=
 =?utf-8?B?dVY1eVdzUnMvRnV6K21XdGl0OFYzZndFRHptaU9wQjdrRDlkSFZhbzRRMGpj?=
 =?utf-8?B?aUFXK01oaWNRbUhrK0dqWkRiSXhvQ25ybGJaMmJaMmh3ZGFZUC80eDUxbnVr?=
 =?utf-8?B?L2RzRk1oQ2hILy9VNHh0SFpCWVVzakNwY1JWY0RGalRJSjVIaTZtUERGMWoy?=
 =?utf-8?B?MWxHN2tzY2dCT0RCbU9BQmFUT0E4ZlZTR1E0aUtrNEFxSDFja0s5SnEwMGEy?=
 =?utf-8?B?dUJwbHJVZW5kL1VESWh2OHBwWW9ZaXB1eDZqdTUzLzdyaWRiS3FGdncrK3Bl?=
 =?utf-8?B?WUdXUWluMVBsSnBLdTdLY1pZOTRrOEJXVHdOWkF6bGs1b3ZNaTlybTRZRWhn?=
 =?utf-8?B?M1MrNms1L1NpeXBvRUlIL2xKSmR3VUhTbExiVWswT3Vwa0xQUGwzb1hydk1x?=
 =?utf-8?B?RnFWcE90SVJWM0t1KzZVRHBuNmhGRlB5dDFCSEljcUNDTUE1bDRCbEszVXZ4?=
 =?utf-8?B?ODdwdnNLSEhrS1hFNlNYblRpemFoL0pLMjhRRk9ZNUNVY0paZlBlclMvRUpD?=
 =?utf-8?B?V1dITzdIS0c0L1Vid3Z0UG5od0RrcVpFSWtneTIyZmdKRTJXSVBMODFCQXlE?=
 =?utf-8?B?a1VjZHZHYUFPaHArY3hGMnpGRXE0SDJiL1gxQnExek5wZW1qdDgyZjZRV3ZF?=
 =?utf-8?B?OVpBejRNTXZzT213ZGV2SzJlL2hSWkxYT3ErcnNJU0hxRnRTQkZQRm9ZbFpt?=
 =?utf-8?B?ekdvOVRWZU5mM05WdVFUZjdQVUNMWUZ1ZDJLaWMrRGtzMkJUWEFYWFNDaTR6?=
 =?utf-8?B?c25DTGRUTzcrWUVIUGsxdXZDRUdmZUJEbTdaS3RNM2poOHRsTXFYRDVQcWtJ?=
 =?utf-8?B?WnBra09UU1ZveThjMUhyK0xUZTQyeVpoTlhXR0JiK0ZiZUZiMERiTVVOVko5?=
 =?utf-8?B?SHp5Y2g0aG90dDdnSzJHV01jdUlTUWwrQ0VZMEloVUhJVUdtcytyN2JyZi9P?=
 =?utf-8?B?a0xYVmNSNUpOTzIrYm5NWEx5dDltSVRxUWJ0VEJOb3c1cjlNUWluVjAwVlVI?=
 =?utf-8?B?Y3liSUErRDVZUFNMMkVWdGx5MkJ4bWxIUXFhYU05ZHo0Um1lSGYzNWFXZytL?=
 =?utf-8?B?VkpkU3NIbzdmRENQdE5reWNKWVYwN1RFRStzWml2Z3hBWjdIem1jVGt3TDNq?=
 =?utf-8?B?ek5CNjVyZ2xQMUwwVml0NDZFMk5jMGpGWUJDWTBwQk5JeFY5YzgzSk1vY0tr?=
 =?utf-8?B?M3g3M0NRYjkvajZUMjY2V2M3YndZZWlVL2ZGQ0xENGpVa2V3QzY5OVMvdC90?=
 =?utf-8?B?MWtVeXVDVURXN3FndkI0MEJBYytCMmRvNVVHNWVGUkRmcFBCMXZZaGxNU2lQ?=
 =?utf-8?B?NjVzeXJ0VDA4ditnc3hOaGg3ZHp1T3FyQVZhcTlRSFBXM29oT3VoaG5mdXZu?=
 =?utf-8?B?czNCYnZwY3ZjbXRqTzlCV2UvT2dmTGJxckdpZS9CeWRWWlNwK2R5dlNaNUZR?=
 =?utf-8?B?WHZyek5LNHV3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TitHVkJMVjFIK1lqZDl6c3c5S2R5UDc0blJGUWxGZU1KRXI0Y0dMODN5aTlD?=
 =?utf-8?B?QmpYa1Z2VHlicTBIOS9Gb3lxL3dlMWo5VUF3d1FMMWJsVHZEUStldWFYUDJ1?=
 =?utf-8?B?QmhZUkhWYVoyWll2TjY0QUVKdWtXREd3d3JtVExvd3FvWXFmVk9pcVFGMjI0?=
 =?utf-8?B?R3ZUZ3Q5V20vT1NXN21WU2pEKzQ1NlpVbmhiZWw1eXZZOFBWakJjd1VmTFVm?=
 =?utf-8?B?NC93dVFmNDhWVFRldCtjdTRUVTRNNDUxRTl0TkszenBCU3QzWVlqM09TdU1E?=
 =?utf-8?B?WWdRSlh5LzkvY0ZsNTZlKzRTTUJKZFRqalB4bk1QTU1VbG5GMXVOSmpkZW51?=
 =?utf-8?B?c2Erd3VGYlF0M1VOWmtSb21XenlQdGJvMzg1bzhZam1uT1dxa2JOUTFWRXVH?=
 =?utf-8?B?YUJoOEVBOENubGd4N01ZVVh0bklwMUxZSzRoblFNTnlSNXRZbU1qSnFzSUxK?=
 =?utf-8?B?VFhOUlI1NXgyRmVST0F3YTljd2dEUWVVR1FqUjkwdVU3bHVhK1BQZnp1c1dM?=
 =?utf-8?B?Wm1LYkkrQWRWUjNjM1JwOUsrdmFBUEhORG92YnVwM25keklKSG1TZzd5b3JN?=
 =?utf-8?B?VVlhbDZ1SWZtcXlmQnZpVVNCZ1oxczIvSzU5RHZQWWU3WkRSTG9qcDBLaTF1?=
 =?utf-8?B?cWNYemJ6U2NKU1daUFdxdjhNUWRJRjdvVDMxMHRpUzBtME5YWkVuNzE5UjF6?=
 =?utf-8?B?QloyY0RrVjVFTGd4NXN4YmxIeHBScHBmYjhPbnBtK3JIVmMwZFVjR2xBMHh2?=
 =?utf-8?B?K1BHR21rZVhFM2xqV09Jd0dHQVJrZEwvRTJualpLU0UwOTFNRHBCaEpLMkY0?=
 =?utf-8?B?NDl6S2Z5Mi84bTBwaUd4RERWUVVJc1Jld0R4SUt6R2FDUllpUExhd1hxRDht?=
 =?utf-8?B?YlJTaHlKeklJZ01Eb3R0VmFnNStFUjJJbmlUWWhrVnlGMzlQSTYxNHJOZjln?=
 =?utf-8?B?Q1lsWmpySUh3N3l0R04xNXdFL0djMUNCbWtkZjMwanhzU2tWMW1KcThKZEZL?=
 =?utf-8?B?V2hxNnBPZ0FPR0NWOGtDOUx6MkxMM2pxam0yV3g1VjAwZmp1b2hNaWhjQnRq?=
 =?utf-8?B?ZFV1R2g5clRKakZaeWhsNEZGMUduR0hMZ0lqM1NiV2Y4ZnBXcXQrMnZxcEsz?=
 =?utf-8?B?OUpxVFhLaG1jZnNjWnVqdjE1SmV5b2NkckFBdzlucWo4b2ZlWXFLc21odUVC?=
 =?utf-8?B?L1lySmU1b0V2eDdHQ0I0VlZ2a2hiRjJBZnZ0S0N6MkNiVWRRWFJWU0hmMXZr?=
 =?utf-8?B?cFlTT08vYm1TSERkekJJTmJVS1ZxVmNGa1VHazA3QmFsUWFNMnVvKzVSWis1?=
 =?utf-8?B?SXBoOEZyYTNTUHRpWEFoSURZQTlSVTU4aUozUVRwVGtzWXBHVW5YQnNNcjNL?=
 =?utf-8?B?YW5xeTJYTmp2NXZZNUJHZXowemdML3RBazhXeXByTkpEOTV2bEtJUWZ6WTN5?=
 =?utf-8?B?VDdOWTRpdlpZcmo5Ui9CQURhL2lSZXA4YUN0bnJEc05yOE9sYjFPU0tuMDJM?=
 =?utf-8?B?dFZjVDRQMWZjWG1WSmNpeldGeWVIdmErUmxsQVRJRm5GbkpqZUw0VitrMHJh?=
 =?utf-8?B?MitqbE4yV0Q3aTUzTkZiRGtIeXYwelFtMkk5UFJ2UEt2MWlWR0Q0Ujd5dlR6?=
 =?utf-8?B?cjFCa0w0OENCUjRTOTdOenRrU0FJS1QwOTNQN3p0UWlsQnJqUFE0WUl2dXhJ?=
 =?utf-8?B?ckJjT2w5TjlQekpFTTBPMmsvMzZ1T2ZVcDg3QkV0ejgrNC9vVHlFNGxucFE4?=
 =?utf-8?B?bFh2K0VGTDZYMTB0SzBYWVdtOFlEN2E5UmxseVdzSnA5ZzNDeHg5cUFUWG5l?=
 =?utf-8?B?T3VVVFhJMFJycTNFcW1DM2FMQjhCUmVBZVdST0VzL2FLVWpIbUd6UEszTW5T?=
 =?utf-8?B?Wk9yUG4wMjg0VWhpNWxWTzhqQjRIa2wyU3dpRFJUaGJwUW5HMkpWTzF2MlA0?=
 =?utf-8?B?bUJrS3FXOURrUHdPR01jL3JTNDBsK2NVNVFPbGlCRlR6WkJjek1WM3pxZXBD?=
 =?utf-8?B?aWtzanU5a1owNEkvVTZUOTU4V2p3b280aGZQYVpQV0hwTXpIMnIwcVVZWlc1?=
 =?utf-8?B?Ym5hODE4Q2JySnNhT1Y2d25zYnZnS1Baa2l5QmlRaHpLMnZPdjJSU2dpWlgv?=
 =?utf-8?B?Y3A1OXZRVGpDOTJlS0V2SDc5dUp6QW4xcXpNV3lNM0c3UVVPbEhJZStsTmJv?=
 =?utf-8?B?TE0yd2hKNDJLVXJybmFLbkVBK25nRlF0TGw0U0Vhd0l4WlBRSXl5ODhOenAx?=
 =?utf-8?B?NVh3VFFZbU8xYU14cGhkWDRncTNRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D63C78AC16D38442B34EE149280F212A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81df2319-5779-4b03-7968-08dd94467b46
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2025 06:54:19.3187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YpL2Ih7MRp1TSBw1ALrXdGnbZeOc4a5yxGhqr9mdeP2OwEAH1lnFdR7DuKLeuzQzX0wvKQuERx+5MsHJWKBYbwgkxchItbdZOcW9la+0bWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7606
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

T24gTW9uLCAyMDI1LTA1LTA1IGF0IDA5OjA5ICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gVGhlIHJlZ2lzdGVyIEVNUF9BU19TRFBfVEwgKE1UTCkgd2FzIGludHJvZHVjZWQgZm9yIGNv
bmZpZ3VyaW5nIHRoZQ0KPiBkb3VibGUgYnVmZmVyaW5nIHBvaW50IGFuZCB0cmFuc21pc3Npb24g
bGluZSBmb3IgYWxsDQo+IEhETUkyLjEgRXh0ZW5kZWQgTWV0YWRhdGEgUGFja2V0cyAoVlQtRU1Q
IGZvciBWUlIsIENWVC1FTVAgZm9yIERTQw0KPiBldGMpLg0KPiBUaGlzIHdhcyBhbHNvIGludGVu
ZGVkIHRvIGJlIGNvbmZpZ3VyZWQgZm9yIERQIHRvIEhETUkyLjEgUENPTiB0bw0KPiBzdXBwb3J0
IFZSUi4NCj4gDQo+IEZyb20gQk1HIGFuZCBMTkwrIG9ud2FyZHMsIHRoaXMgcmVnaXN0ZXIgd2Fz
IGV4dGVuZGVkIHRvIERpc3BsYXkgUG9ydA0KPiBBZGFwdGl2ZSBTeW5jIFNEUCB0byBoYXZlIGEg
Y29tbW9uIHJlZ2lzdGVyIHRvIGNvbmZpZ3VyZSBkb3VibGUNCj4gYnVmZmVyaW5nIHBvaW50IGFu
ZCB0cmFuc21pc3Npb24gbGluZSBmb3IgYm90aCBIRE1JIEVNUHMgYW5kIERQIFZSUg0KPiByZWxh
dGVkDQo+IHBhY2tldHMuDQo+IA0KPiBDdXJyZW50bHksIHdlIGRvIG5vdCBzdXBwb3J0IFZSUiBm
b3IgZWl0aGVyIG5hdGl2ZSBIRE1JIG9yIHZpYSBQQ09OLg0KPiBIb3dldmVyIHdlIG5lZWQgdG8g
Y29uZmlndXJlIHRoaXMgZm9yIERQIFNEUCBjYXNlLiBBcyBwZXIgdGhlIHNwZWMsDQo+IHByb2dy
YW0gdGhlIHJlZ2lzdGVyIHRvIHNldCBWc3luYyBzdGFydCBhcyB0aGUgZG91YmxlIGJ1ZmZlcmlu
ZyBwb2ludA0KPiBmb3IgRFAgQVMgU0RQLg0KPiANCj4gdjI6DQo+IC1NYWtlIHRoZSBoZWxwZXIg
bW9yZSByZWFkYWJsZS4gKEphbmkpDQo+IC1BZGQgbW9yZSBpbmZvcm1hdGlvbiBpbiBjb21taXQg
bWVzc2FnZSBhbmQgY29tbWVudC4NCj4gDQo+IEJzcGVjOjcwOTg0LCA3MTE5Nw0KPiBTaWduZWQt
b2ZmLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IFRl
c3RlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClJl
dmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
LS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuY8KgwqDCoMKg
wqAgfCAyMw0KPiArKysrKysrKysrKysrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92cnJfcmVncy5oIHzCoCA2ICsrKysrDQo+IMKgMiBmaWxlcyBjaGFuZ2Vk
LCAyOSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdnJyLmMNCj4gaW5kZXggYzY1NjViYWY4MTVhLi5jNTViODE0NGUyMzQgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBAQCAtNTc2LDYgKzU3
NiwyNSBAQCBib29sIGludGVsX3Zycl9hbHdheXNfdXNlX3Zycl90ZyhzdHJ1Y3QNCj4gaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSkNCj4gwqAJcmV0dXJuIGZhbHNlOw0KPiDCoH0NCj4gwqANCj4gK3N0
YXRpYw0KPiArdm9pZCBpbnRlbF92cnJfc2V0X2RiX3BvaW50X2FuZF90cmFuc21pc3Npb25fbGlu
ZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gK3sNCj4g
KwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+IHRvX2ludGVsX2Rpc3BsYXkoY3J0
Y19zdGF0ZSk7DQo+ICsJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gY3J0Y19zdGF0
ZS0+Y3B1X3RyYW5zY29kZXI7DQo+ICsNCj4gKwkvKg0KPiArCSAqIEZvciBCTUcgYW5kIExOTCsg
b253YXJkcyB0aGUgRU1QX0FTX1NEUF9UTCBpcyB1c2VkIGZvcg0KPiBwcm9ncmFtbWluZw0KPiAr
CSAqIGRvdWJsZSBidWZmZXJpbmcgcG9pbnQgYW5kIHRyYW5zbWlzc2lvbiBsaW5lIGZvciBWUlIN
Cj4gcGFja2V0cyBmb3INCj4gKwkgKiBIRE1JMi4xL0RQL2VEUC9EUC0+SERNSTIuMSBQQ09OLg0K
PiArCSAqIFNpbmNlIGN1cnJlbnRseSB3ZSBzdXBwb3J0IFZSUiBvbmx5IGZvciBEUC9lRFAsIHNv
IHRoaXMNCj4gaXMgcHJvZ3JhbW1lZA0KPiArCSAqIHRvIGZvciBBZGFwdGl2ZSBTeW5jIFNEUCB0
byBWc3luYyBzdGFydC4NCj4gKwkgKi8NCj4gKwlpZiAoRElTUExBWV9WRVJ4MTAwKGRpc3BsYXkp
ID09IDE0MDEgfHwgRElTUExBWV9WRVIoZGlzcGxheSkNCj4gPj0gMjApDQo+ICsJCWludGVsX2Rl
X3dyaXRlKGRpc3BsYXksDQo+ICsJCQnCoMKgwqDCoMKgwqAgRU1QX0FTX1NEUF9UTChkaXNwbGF5
LA0KPiBjcHVfdHJhbnNjb2RlciksDQo+ICsJCQnCoMKgwqDCoMKgwqAgRU1QX0FTX1NEUF9EQl9U
TChjcnRjX3N0YXRlLQ0KPiA+dnJyLnZzeW5jX3N0YXJ0KSk7DQo+ICt9DQo+ICsNCj4gwqB2b2lk
IGludGVsX3Zycl9lbmFibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+IHRvX2lu
dGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+IEBAIC01OTUsNiArNjE0LDggQEAgdm9pZCBpbnRl
bF92cnJfZW5hYmxlKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQ0KPiDCoAkJwqDCoMKgwqDCoMKgIFRSQU5TX1BVU0hfRU4pOw0KPiDCoA0KPiDCoAlpZiAoIWlu
dGVsX3Zycl9hbHdheXNfdXNlX3Zycl90ZyhkaXNwbGF5KSkgew0KPiArCQlpbnRlbF92cnJfc2V0
X2RiX3BvaW50X2FuZF90cmFuc21pc3Npb25fbGluZShjcnRjX3N0DQo+IGF0ZSk7DQo+ICsNCj4g
wqAJCWlmIChjcnRjX3N0YXRlLT5jbXJyLmVuYWJsZSkgew0KPiDCoAkJCWludGVsX2RlX3dyaXRl
KGRpc3BsYXksDQo+IFRSQU5TX1ZSUl9DVEwoZGlzcGxheSwgY3B1X3RyYW5zY29kZXIpLA0KPiDC
oAkJCQnCoMKgwqDCoMKgwqAgVlJSX0NUTF9WUlJfRU5BQkxFIHwNCj4gVlJSX0NUTF9DTVJSX0VO
QUJMRSB8DQo+IEBAIC02NDYsNiArNjY3LDggQEAgdm9pZCBpbnRlbF92cnJfdHJhbnNjb2Rlcl9l
bmFibGUoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IMKg
CWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFRSQU5TX1BVU0goZGlzcGxheSwgY3B1X3RyYW5zY29k
ZXIpLA0KPiDCoAkJwqDCoMKgwqDCoMKgIFRSQU5TX1BVU0hfRU4pOw0KPiDCoA0KPiArCWludGVs
X3Zycl9zZXRfZGJfcG9pbnRfYW5kX3RyYW5zbWlzc2lvbl9saW5lKGNydGNfc3RhdGUpOw0KPiAr
DQo+IMKgCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFRSQU5TX1ZSUl9DVEwoZGlzcGxheSwNCj4g
Y3B1X3RyYW5zY29kZXIpLA0KPiDCoAkJwqDCoMKgwqDCoMKgIFZSUl9DVExfVlJSX0VOQUJMRSB8
DQo+IHRyYW5zX3Zycl9jdGwoY3J0Y19zdGF0ZSkpOw0KPiDCoH0NCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyX3JlZ3MuaA0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyX3JlZ3MuaA0KPiBpbmRleCA2ZWQwZTBkYzk3
ZTcuLjA5Y2RkNTBkNjE4NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92cnJfcmVncy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdnJyX3JlZ3MuaA0KPiBAQCAtMTA4LDYgKzEwOCwxMiBAQA0KPiDCoCNkZWZpbmUg
VlJSX1ZTWU5DX1NUQVJUX01BU0sJCQlSRUdfR0VOTUFTSygxMiwgMCkNCj4gwqAjZGVmaW5lDQo+
IFZSUl9WU1lOQ19TVEFSVCh2c3luY19zdGFydCkJCVJFR19GSUVMRF9QUkVQKFZSUl9WU1lOQ19T
VEFSVF9NQVNLLCAodnN5bmNfc3RhcnQpKQ0KPiDCoA0KPiArLyogQ29tbW9uIHJlZ2lzdGVyIGZv
ciBIRE1JIEVNUCBhbmQgRFAgQVMgU0RQICovDQo+ICsjZGVmaW5lIF9FTVBfQVNfU0RQX1RMX0EJ
CQkweDYwMjA0DQo+ICsjZGVmaW5lIEVNUF9BU19TRFBfREJfVExfTUFTSwkJCVJFR19HRU5NQVNL
KDEyLCAwKQ0KPiArI2RlZmluZSBFTVBfQVNfU0RQX1RMKGRldl9wcml2LA0KPiB0cmFucykJCV9N
TUlPX1RSQU5TMihkZXZfcHJpdiwgdHJhbnMsIF9FTVBfQVNfU0RQX1RMX0EpDQo+ICsjZGVmaW5l
DQo+IEVNUF9BU19TRFBfREJfVEwoZGJfdHJhbnNtaXRfbGluZSkJUkVHX0ZJRUxEX1BSRVAoRU1Q
X0FTX1NEUF9EQl9UTF9NQVNLLChkYl90cmFuc21pdF9saW5lKSkNCj4gKw0KPiDCoC8qQ01SUiBS
ZWdpc3RlcnMqLw0KPiDCoA0KPiDCoCNkZWZpbmUgX1RSQU5TX0NNUlJfTV9MT19BCQkJMHg2MDRG
MA0KDQo=
