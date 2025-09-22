Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 954BDB91DF9
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 17:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1979988FB2;
	Mon, 22 Sep 2025 15:14:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MEZRc8xe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2396488EFE;
 Mon, 22 Sep 2025 15:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758554090; x=1790090090;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=U+dnCiXLVjZQ9bh4lFWKPotYbZMuT0xk+77O4OBV+LA=;
 b=MEZRc8xe/LHYAacBOQ+G/w8vp3MpH22m92Wl6aMUY0FREsXiH6LzdnHY
 d9toZF6JMr6Wl97ChNPuiYmSQ7zrBfP61AMVfk1MgLvMEFivWUoozjGdu
 dcOEb6hRsGdjByPhMpcHRhBut+Mgxn6rmIUVxs7Oa1njFJaEcDy7kGqac
 leLJ+kxjS3G68doyvpdXJYQVDTyk2BhvkObRO8LOGLogI54cuXWNgO40x
 TVxjpSG0iHkDk9qSiJeiVDDy67GVI3FusWE3lJmfzhGygtfEM7JHr3ig8
 hrUCprklIkCm5lP9PfAjQH5T/JQaiackSP1CH5T28+i7n/BRPgDyu5Ixi w==;
X-CSE-ConnectionGUID: iSo+psYyRRW+38rpkLPWWw==
X-CSE-MsgGUID: E5B6sKxPS6uXdgGKrfoUZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71063541"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="71063541"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 08:14:50 -0700
X-CSE-ConnectionGUID: uJ4F5WinTbqbcidGLYFpDA==
X-CSE-MsgGUID: 7mZYa6WER5SSGdPSzecUtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="176115685"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 08:14:49 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 08:14:48 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 22 Sep 2025 08:14:48 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.60)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 08:14:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uMHnSgOpmh0Bd55i45UVBAVcsVxrsmCxUhLrM4GAwTVCqmZSl5uNnsCpsRYc72aBJAUUf0dYj9gEaW+bAzEBWFZBX2+lUeJ3TmJK9tI5Ndunj9imfI40GmwKBDuIzl+4DxTyFM3mSVn852lgKGONF9EurueZm21nQGMPEfgFdStcBKJTA9qWU8yyxUXFakhDE/QVwRfXE1mvkzMlPHh3J2WUTGaJAckXGSL3rHjFhn8k84kgBwKndar2e8FZEU7jCZmZt55W1PQvGIXPMw4/zvtWHTRN5gL0kYrm5SJbVWMAiv+3Tab4xuCyMMlq5B9wAJMaARbNEWfschBcXSQfNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U+dnCiXLVjZQ9bh4lFWKPotYbZMuT0xk+77O4OBV+LA=;
 b=l96DycqcSaAkzrdxYVrxq5Nuk9X3a3URQ0MLgO0K0rhLw/eGE8urMnoCNqogf8Jc2jrmZHYrej/tRp6QSbkmABggqYzVDJk8ZI/tHy9m4dBPP7fls0XvisE+K4435+a3WHd9tDT1uVXEK6aTj5pTw/a9k6t99PN0cGaLGKR1NEcWVvoFSC1T9xyZjswYhmHgYkUKAAu0SLsqUOAzhuSay7Tfn3+eem0qD8MiO07YpaSohYwxqCfkpNIpzZUYy6wpdtF3hVmnRPL+tnpsJ468QNE+jq2L2NfwzUI6SUKvQWrscN6AK3MA54JpM9+yGYkjoN+09SArhvSVczy4mOHEKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CY8PR11MB7361.namprd11.prod.outlook.com (2603:10b6:930:84::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.18; Mon, 22 Sep
 2025 15:14:44 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%4]) with mapi id 15.20.9137.018; Mon, 22 Sep 2025
 15:14:44 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 3/3] drm/i915/xe3: Restrict PTL
 intel_encoder_is_c10phy() to only PHY A
Thread-Topic: [PATCH v2 3/3] drm/i915/xe3: Restrict PTL
 intel_encoder_is_c10phy() to only PHY A
Thread-Index: AQHcKYGnB8LzPZfxZk+aU8fa5DTOG7Sa/hAAgARVieA=
Date: Mon, 22 Sep 2025 15:14:44 +0000
Message-ID: <IA1PR11MB62668AADBA86E660AEDEBA65E212A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
 <20250919162233.1624905-4-dnyaneshwar.bhadane@intel.com>
 <175831567651.1987.11686211487230198274@intel.com>
In-Reply-To: <175831567651.1987.11686211487230198274@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|CY8PR11MB7361:EE_
x-ms-office365-filtering-correlation-id: dc0e82d7-e663-42da-9234-08ddf9eac2f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?dzRDcm11bHcrbW1heXU5bmxlNEJrQ09TeFVDbFhDK0JLVS9FSzRYYW1IZlY1?=
 =?utf-8?B?bmVEUVVQaGhaUXZlQjNZMzRHeEd2UFBIV1dadVg3ekFRYnU3V1BTWHIwNkQy?=
 =?utf-8?B?blJXUEpmRXROQjlDMFRXYmk3YjVuQnlrQ01aTS9STDIza2FLWkZzcnAzaC9J?=
 =?utf-8?B?bWVVTE9EOVRLZ011ZDBRa1IvSDkvekt1L05Ib2dVU2I2Mzc2VzZWekUySlBr?=
 =?utf-8?B?Uk95Uy9qTkFvdi9DZHRiRkJ5UDdmOFZjZ05YeUpGSVBHaTRRUml6SUM4VUo1?=
 =?utf-8?B?QUVjU0NlUEwzU2xIOVMrYmhzNkN2ZnJXNnFib0Y0NnZvRnArUEJEQmg3UjNN?=
 =?utf-8?B?OFM0OXI5bTdzdktDeWM3Y3ZyUGhNWWJhaUZXcW81QlhxQjFiTUFOUmVaQkNL?=
 =?utf-8?B?TkRROVlKRFcvYUNvK25ZQTRrbGZuVFkwbXorNEIwdTl3dlFQZFJTU1N3b1RS?=
 =?utf-8?B?UGJVZkpPaUdKbWFYYWJoS3RCYlFvSHllcHdJOVJoVHN2SDh4Tk84Qys2QWlY?=
 =?utf-8?B?c05xKzBOTmlJamZpdUJqYVZ0bWRNOW1pdGdwUHZwZlowNUIrN1NjQSszUmJ6?=
 =?utf-8?B?NHRQdTVOK3I0aU56MWJuU040eXdiZUtNSlphQkZobnNCa1NleGNiWk5uZHdS?=
 =?utf-8?B?M1c1VlY5ODZkVGRsMGtyYVlkZ3VoRGFiWlFYS3dzbmw1OGtxbTdtM2NrWmlw?=
 =?utf-8?B?cEFLMkw3S3h6QzlGRDlhMnltdmIrVFQ0Yk1ybG13YWQ0L1lIMldNSE1qYnkx?=
 =?utf-8?B?K0dNS2hIK0N5OVNJa0xCUHVuUHgvazBnektNTm5wOHBjQUxYREh5N0taT096?=
 =?utf-8?B?QlBNU1ErUDlwR3VMdWx0aDhoNS9uY29tL1lidHdxZW1zR2JXWmZlVXVoV3Bz?=
 =?utf-8?B?MHhKZEY5TFZwYkkyVW1tK2xSVjZPVkRqSk1jVTBpekVRSDVqTnZSZHp6UGVx?=
 =?utf-8?B?YkhkcHFWMFpONmI1YkttbVMyWWVKb2JaejhUV1VJamlIVDZYQkI0N2xFN2hP?=
 =?utf-8?B?R2JYZk10UFVqeDRQSkR2WDIwdGFEbmJ6SythTk1RVmtFbWRrcmpYYTRmZ1FQ?=
 =?utf-8?B?UTBpbUJFaTFEKzBTbCsxejcwNWs4Nnoyb1hoNDNtY2l6Q21YTmVkZS9PZ2wx?=
 =?utf-8?B?UEZ4cGtiMVZsQkI4ZTJTcWlQN3NyY1ZIOFc4d3VaV0NVMVovVXY2YXdZYUdl?=
 =?utf-8?B?TGxTUkNJaVJpSCtwcVZSNmE0enBSZHNpL2RHNElSMGMyenMwSFNZbU8xK2JE?=
 =?utf-8?B?UkZjVmtKN0pGWWxJRlVsOTNUTXMyMEtFUVlTYWFDVjNWcnR5K2FaRFljMHF0?=
 =?utf-8?B?ODJPdXZYNDRxcm5QaXFvYVBWSW81SmZTQnFqRE1Wei9UZU9kRVF2WUZlbXJK?=
 =?utf-8?B?NWozRFJoSDZ3eGsxZzZPaC85NEpuNUhwWUhYREV4VDhFRTRDTXlIQWc0Qmh6?=
 =?utf-8?B?N1JwNmlPWmNndWVzM1FQaEpFUWVoQVQxejZ5SmxRR0ZTR2xhMWZqNXloelV1?=
 =?utf-8?B?WE1kUzl5QUZLdXd3REtvRjhSQ3hUZk9tN3Y4VUNzS0MwSkIrRXd1U2tQM0J0?=
 =?utf-8?B?d21IdlpkaVhGL0tvTkRLRDZXNHdEWnhJSDgxWnU1YytrS3FGbmI5K3lrUFUy?=
 =?utf-8?B?cnMvaE1ycFR3M1RQR2tyS1Nkam5qSFE2MHdrKzZrSmNiOTdFOEY3dlhjQzFt?=
 =?utf-8?B?dHRCTkkwWXNpMHVUbVQzOHBZbllzNFlwTko0UmtCVlNJRG8zaU52bWVqaEM5?=
 =?utf-8?B?L21PczhvUkVxT28rNDk3OXFDY1RxZHFubWhIMmNvdnIxbHdzdTU5U0ZxRzAy?=
 =?utf-8?B?NndjcHAxMng5Sm9TYmRSN3Z0K2FoQ2hNMXBTaUxvRjBuRTFyVk83czQvWCt2?=
 =?utf-8?B?azlNTUlCcmZMWm1UNXBQZWsxWWlrQk41UUlobWN3ZEtsOWw3b1R5Q0JvaXo3?=
 =?utf-8?B?Y091V09PVkNzT2xuRGlDQWNJbmFUemRqN1ZHOUJKRkFGVFVHS1VNMEtNZmFx?=
 =?utf-8?Q?U5iWppafVnbfKL50WJ3URMhkNe/jEg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UE9UUUQrSm0yMndhSUJFUVdyeFJnY1FYdGR2Tm03WE1la1NuVi9vaStQWFBR?=
 =?utf-8?B?NHk4WEJhRHdac3RFREcwTUxBa1pFU2grbWtXVjdnTllxWGNuRnRhblEvZkpk?=
 =?utf-8?B?VFNkNEdRZitZcVIvbkwrVStQNTMxeXRqMHJrYXZsYWFwVkl1cTR0eWl5bTR3?=
 =?utf-8?B?Wi9makh1TE9TVmplSmpKcTNreDFMdXR4NVZ1eUsrdlJYR01qREZuU0N4Y2tR?=
 =?utf-8?B?RkNJK0hvbW5MQXlKYmVzMnpFV2NZSUo1dklJZEhTMEp3T3JGNUUvczZVZ2FU?=
 =?utf-8?B?T3JiZ0dsQ3R3NnkxNWJxZ3VLL1NWam43SWZjcUlaMnpVZjQwQWVoN3pxMFJ2?=
 =?utf-8?B?dnFPR0xielo0MXhhemNkb0hlaTVlQjFZemozamdpNUN5Y04rTDMvcTBUdHZx?=
 =?utf-8?B?N0xPUTl5cm5PRXU5eW9ud2tDWHlPM0c5NmpCWXRMSkdwRS8ydlM1ekpsVitr?=
 =?utf-8?B?VFNnS2diL080WEpNTVNHdG5QOWZNK1dzYnpZbFJjb0dYaDZrVjlxaVp2cmxC?=
 =?utf-8?B?M3JaanR2UXdpYytZcFdKRCtrSW1GdlE4Z0NMWWZlazNXZ2NDbWVpVHJaV2Z0?=
 =?utf-8?B?dndmZHNPY3ZWdjNGNUpibm1GdFhFZnZSdDFyRW5rMDZrRUd3cENPOTYyYTBZ?=
 =?utf-8?B?M0NZVkl0RWtFb1Rzd0RlNStuUytZczA0U0ROcGtCSy9kSzhIUnZMR1p2dDlR?=
 =?utf-8?B?RmxmanlxYUJkZGtvV1NNVjFtUXhEazVoOW04aTNtNkpyWXJtT0IvUHVUZmNw?=
 =?utf-8?B?ZElQNkVWSG9odS8rVzJDbTh5VDBDWThCa2RJa1RDSVIwRVNlMHhZbGJqazls?=
 =?utf-8?B?UWc3R2c1cjN4L004VytwNWo0aTM3NHg4WG53NVJTZnBTTFFocXpxMWIzOFQ1?=
 =?utf-8?B?cG1FaTI2MVc5NWxEblg3T0MzdEh1LzN1NzhGWGtZRTZQWmwwdmRZMzU3NXRB?=
 =?utf-8?B?VVNTS2kyR0ZuL2JFOHRZN0FncVZsNVkxdUJVVGdXMlNZeGNlWkNXZjdEZmJO?=
 =?utf-8?B?cUFrT3BHS2xsREozd1lmbFN6Q09TVmZyRWxrOW5CRVlmeTBISHpsSFdLWnA3?=
 =?utf-8?B?b2hBTXgzRG9aYUpVQjEwQ0NqODMyMTc0ZU1GUWVwWlphRFVmeTVNRWxZK3Q2?=
 =?utf-8?B?TEVzZmNkeXRCVGx5T21FK0MwM1gvY3ExN2NhL0l6QmtKTU9EWlVuRi80Slo0?=
 =?utf-8?B?STdjZElXSmJMeGk1ZFFpRkdiOS9OVEw0OGkzNnlpcnFSM0tmcFZtVXRsWVlB?=
 =?utf-8?B?eVNsRVkxakg2TXcvN1JnYWRvQndDUXBUTUpZY2M1OGJXYkhMTUFLUnltOFo3?=
 =?utf-8?B?YnlhbklDSmUvMVo3czc1bGF2dGxlRjdsSG42dVlGQkJtekVoUmx6cFBldmF0?=
 =?utf-8?B?ajJsL0tUVHpDNU52Y1dweGRoRWxRR3NkOE9aajIyUWxwVDFFSnpnL3pOU3d3?=
 =?utf-8?B?OG1pSnJPQ0hpZ09veGoydTA5aFZKQ1JsSG1lSStJUHpCNWYyUTdpWDlWWURK?=
 =?utf-8?B?L3VITDRwRWJSNWJibUVQSFA1ZVVrZGdibDJ1UVFFL1J0R1hkMmpUZnhDVG1T?=
 =?utf-8?B?c3hlbzIwaER3SW93WXhsWFRuUEJyN1hkdG9TQU1RNVdWM2h0OTdQQUtWTjZM?=
 =?utf-8?B?eitIb216aFUrc3ZHMk9pcUt2VkpCQVZ1REp6eWFxK1lIOE52SCtCYWxHZE54?=
 =?utf-8?B?TXN5YjBPOEVDaGliTURxRGJVMWl5b0x1T0l1eXNvcXpjSXFpT0hIT0N2Q252?=
 =?utf-8?B?SWhIdVBPR21WU3h1OThjeUxBL0F4UkpUU0VxVWRFZVpqTWdQR1VEaTdrYjY4?=
 =?utf-8?B?d1hqWTdHUVA4TGRtWVE1ektIWTdVazd3ZENHNlFBbkxqc1RsRG04VDJkWTJo?=
 =?utf-8?B?cE11RTgybUhWbW1LWVhuaGpCY0ZxanppSGpIVlozWXNZQ253c3JYREIrckhL?=
 =?utf-8?B?YllaYXdzVjZHQmVLWE1OKzZqU2NNazlrd1R3ZUp3YmEzZWNwU2txV2NZQTNs?=
 =?utf-8?B?R1A3SU1zdW1WZjhmdS9ycGUrRHY1RDR4ZnN0OHBKSG5pdUQ1VndYbnpQQkZF?=
 =?utf-8?B?Q1hETi9MemRMMEx0NElobkhBblJ0NHdDQnpWTTFLT0xDZXZqV1paM3pobWtD?=
 =?utf-8?B?N1pUNHNZbTlpSWNFVE9SQzdhVmhUWDlaSW01WmlicjRMZWlyYm1uajRhTEVX?=
 =?utf-8?B?Zmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc0e82d7-e663-42da-9234-08ddf9eac2f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2025 15:14:44.4886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DeiedWnvF1ALFgF2FW4SScUKJM9S70rexP5Yc8fjS15FmeZqnPk2zt3JiAMxH00RfQzBPcoQyKidVG/tJ5Oj52zOnA5d6O7pdfnXhC9CgBU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7361
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291c2EsIEd1c3Rhdm8g
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBTYXR1cmRheSwgU2VwdGVtYmVyIDIw
LCAyMDI1IDI6MzEgQU0NCj4gVG86IEJoYWRhbmUsIERueWFuZXNod2FyIDxkbnlhbmVzaHdhci5i
aGFkYW5lQGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBp
bnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEJoYWRhbmUsIERueWFuZXNod2Fy
IDxkbnlhbmVzaHdhci5iaGFkYW5lQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2
MiAzLzNdIGRybS9pOTE1L3hlMzogUmVzdHJpY3QgUFRMDQo+IGludGVsX2VuY29kZXJfaXNfYzEw
cGh5KCkgdG8gb25seSBQSFkgQQ0KPiANCj4gUXVvdGluZyBEbnlhbmVzaHdhciBCaGFkYW5lICgy
MDI1LTA5LTE5IDEzOjIyOjMzLTAzOjAwKQ0KPiA+T24gUFRMLCBubyBjb21ibyBQSFkgaXMgY29u
bmVjdGVkIHRvIFBPUlQgQi4gSG93ZXZlciwgUE9SVCBCIGNhbiBzdGlsbA0KPiA+YmUgdXNlZCBm
b3IgVHlwZS1DIGFuZCB3aWxsIHV0aWxpemUgdGhlIEMyMCBQSFkgZm9yIGVEUCBvdmVyIFR5cGUt
Qy4gSW4NCj4gPnN1Y2ggY29uZmlndXJhdGlvbnMsIFZCVHMgYWxzbyBlbnVtZXJhdGUgUE9SVCBC
Lg0KPiA+DQo+ID5UaGlzIGxlYWRzIHRvIGlzc3VlcyB3aGVyZSBQT1JUIEIgaXMgaW5jb3JyZWN0
bHkgaWRlbnRpZmllZCBhcyB1c2luZw0KPiA+dGhlDQo+ID5DMTAgUEhZLCBkdWUgdG8gdGhlIGFz
c3VtcHRpb24gdGhhdCByZXR1cm5pbmcgdHJ1ZSBmb3IgUE9SVCBCIGluDQo+ID5pbnRlbF9lbmNv
ZGVyX2lzX2MxMHBoeSgpIHdvdWxkIG5vdCBjYXVzZSBwcm9ibGVtcy4NCj4gPg0KPiA+RnJvbSBQ
VEwncyBwZXJzcGVjdGl2ZSwgb25seSBQT1JUIEEvUEhZIEEgdXNlcyB0aGUgQzEwIFBIWS4NCj4g
Pg0KPiA+VXBkYXRlIHRoZSBoZWxwZXIgaW50ZWxfZW5jb2Rlcl9pc19jMTBwaHkoKSB0byByZXR1
cm4gdHJ1ZSBvbmx5IGZvcg0KPiA+UE9SVCBBL1BIWSBvbiBQVEwuDQo+ID4NCj4gPkJzcGVjOiA3
MjU3MSw3Mzk0NA0KPiA+Rml4ZXM6IDlkMTBkZTc4YTM3ZiAoImRybS9pOTE1L3djbDogQzEwIHBo
eSBjb25uZWN0ZWQgdG8gcG9ydCBBIGFuZCBCIikNCj4gPlNpZ25lZC1vZmYtYnk6IERueWFuZXNo
d2FyIEJoYWRhbmUgPGRueWFuZXNod2FyLmJoYWRhbmVAaW50ZWwuY29tPg0KPiA+LS0tDQo+ID4g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCAxMSArKysrLS0t
LS0tLQ0KPiA+IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
DQo+ID4NCj4gPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2N4MF9waHkuYw0KPiA+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYw0KPiA+aW5kZXggODAxMjM1YTViYzBhLi5lOGIzNTRkMWM1MTMgMTAwNjQ0DQo+ID4tLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+KysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPkBAIC0zOSwx
MyArMzksMTAgQEAgYm9vbCBpbnRlbF9lbmNvZGVyX2lzX2MxMHBoeShzdHJ1Y3QgaW50ZWxfZW5j
b2Rlcg0KPiAqZW5jb2RlcikNCj4gPiAgICAgICAgIHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPiAgICAgICAgIGVudW0gcGh5IHBo
eSA9IGludGVsX2VuY29kZXJfdG9fcGh5KGVuY29kZXIpOw0KPiA+DQo+ID4tICAgICAgICAvKiBQ
VEwgZG9lc24ndCBoYXZlIGEgUEhZIGNvbm5lY3RlZCB0byBQT1JUIEI7IGFzIHN1Y2gsDQo+ID4t
ICAgICAgICAgKiB0aGVyZSB3aWxsIG5ldmVyIGJlIGEgY2FzZSB3aGVyZSBQVEwgdXNlcyBQSFkg
Qi4NCj4gPi0gICAgICAgICAqIFdDTCB1c2VzIFBPUlQgQSBhbmQgQiB3aXRoIHRoZSBDMTAgUEhZ
Lg0KPiA+LSAgICAgICAgICogUmV1c2luZyB0aGUgY29uZGl0aW9uIGZvciBXQ0wgYW5kIGV4dGVu
ZGluZyBpdCBmb3IgUE9SVCBCDQo+ID4tICAgICAgICAgKiBzaG91bGQgbm90IGNhdXNlIGFueSBp
c3N1ZXMgZm9yIFBUTC4NCj4gPi0gICAgICAgICAqLw0KPiA+LSAgICAgICAgaWYgKGRpc3BsYXkt
PnBsYXRmb3JtLnBhbnRoZXJsYWtlICYmIHBoeSA8IFBIWV9DKQ0KPiA+KyAgICAgICAgaWYgKGRp
c3BsYXktPnBsYXRmb3JtLnBhbnRoZXJsYWtlICYmIHBoeSA9PSBQSFlfQSkNCj4gPisgICAgICAg
ICAgICAgICAgcmV0dXJuIHRydWU7DQo+IA0KPiBXaGlsZSB3ZSBrbm93IHRoYXQgV0NMIHdpbGwg
cmV0dXJuIHRydWUgZm9yIFBIWV9BIGhlcmUsIHRoaXMgbWlnaHQgbm90IGJlIHNvDQo+IG9idmlv
dXMuLi4NCj4gDQo+ID4rDQo+ID4rICAgICAgICBpZiAoZGlzcGxheS0+cGxhdGZvcm0ucGFudGhl
cmxha2Vfd2lsZGNhdGxha2UgJiYgcGh5ID09IFBIWV9CKQ0KPiA+ICAgICAgICAgICAgICAgICBy
ZXR1cm4gdHJ1ZTsNCj4gDQo+IA0KPiAuLi5zbywgd2hhdCBhYm91dCBzb21ldGhpbmcgbGlrZSBi
ZWxvdz8NCj4gDQo+ICAgICBpZiAoZGlzcGxheS0+cGxhdGZvcm0ucGFudGhlcmxha2UpIHsNCj4g
ICAgICAgICBpZiAoZGlzcGxheS0+cGxhdGZvcm0ucGFudGhlcmxha2Vfd2lsZGNhdGxha2UpDQo+
ICAgICAgICAgICAgIHJldHVybiBwaHkgPD0gUEhZX0I7DQo+ICAgICAgICAgZWxzZQ0KPiAgICAg
ICAgICAgICByZXR1cm4gcGh5ID09IFBIWV9BOw0KPiAgICAgfQ0KWWVzIHRoYW5rcyAsIFVwZGF0
ZWQgdGhlIGNvbmRpdGlvbiBvZiB3Y2wvcHRsIGFzIG1lbnRpb25lZC4NCj4gDQo+IFdlIGNvdWxk
IGFsc28gdXBkYXRlIHRoZSBzdHlsZSBmb3IgTVRMIGFuZCBMTkwgaW4gYSBmb2xsb3ctdXAgcGF0
Y2guLi4NClllaCB3ZSB3aWxsIHVwZGF0ZSBpbiB0aGUgc2VwYXJhdGUgcGF0Y2ggYXBhcnQgZnJv
bSB0aGlzIHNlcmllcy4gDQoNCkRueWFuZXNod2FyDQo+IA0KPiAtLQ0KPiBHdXN0YXZvIFNvdXNh
DQo+IA0KPiA+DQo+ID4gICAgICAgICBpZiAoKGRpc3BsYXktPnBsYXRmb3JtLmx1bmFybGFrZSB8
fA0KPiA+ZGlzcGxheS0+cGxhdGZvcm0ubWV0ZW9ybGFrZSkgJiYgcGh5IDwgUEhZX0MpDQo+ID4t
LQ0KPiA+Mi41MS4wDQo+ID4NCg==
