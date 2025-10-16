Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14274BE50B5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 20:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA7C10E335;
	Thu, 16 Oct 2025 18:23:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hKkoarYv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489D210E332;
 Thu, 16 Oct 2025 18:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760639014; x=1792175014;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ENClmmmj3+zNkrR7Ib0CpabQC+YlKfmQeWcwOeOLr90=;
 b=hKkoarYvWZjccVNcff4m6dEfub39ZG0nIr8S8uysxTMAGzN19Qcv5BWw
 5PWUJ4+YT/cfWyORBciu7AC45U49IqiAXFueSFfW2VdEjdXo4aEHfAT2f
 T3e9lIw3PWp2QkybEPpyYcT3lsImQKtCxKV15FgZVrJ9qv0hPJOo0xeZC
 +iJoy3aintbUqBh1gt+1kneIlsQiq0Ggaj6kQYRLdgkVAzbQTUg7B6Z/t
 yAMG7z6HtvlzEf1Hxjx/el5Y+WOOLKGvHMeWa9yryGRkrZb0fMJsd0x8I
 zU/SbXYJ0P+CtJkBTfKYzaBBNoHRtcQK5L58QYz90tRnGnDk6gF9aOnRb g==;
X-CSE-ConnectionGUID: THoEmxHzTQihkJksJyUk8Q==
X-CSE-MsgGUID: xsBxnR+NSg6RF8nJGbP/4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="74284672"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="74284672"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:23:31 -0700
X-CSE-ConnectionGUID: gA7M+hSBQMqQ4k5g6o2Osg==
X-CSE-MsgGUID: U2hZtewSSGuvZUFUjYjTPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="219682154"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:23:31 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 11:23:29 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 11:23:29 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.27) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 11:23:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MtWaj2dDZY045zKc3+jJgfjGnw8E5UDQP66w/bnpEPU5MO+2tPCdo/yFxW5n3Yi4kO2GYX/25muqbAxVVwRlv/XKEqdEAe+SJ+kOInC7nNAa02APWnlLgCINoTanMjlambzCnD75Vyf/rn4+INdZj/ZcV1AVG/eCow1oYtu7U4ltROgKwOm2ruOdBeX4YDL2I3RwuprP0xPgHnXAe+OfJAUpvSKpsIJrAQTkpC7xvNKC10TOWYMhqS/HN716h1DmFoGw0mSCp9jg98jlGoqSC5f0L4wHU2QpHX3t0/kHaPEau7vlAPstnA83VJZBQCaWUQ60Qzn61Jrmj7fgeXBDEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ENClmmmj3+zNkrR7Ib0CpabQC+YlKfmQeWcwOeOLr90=;
 b=wqnztDw8eJ6H9X7RIGx0iBeLVryBQdZkyHn42+loMyrCjfnnPzkA1vsWj6WFJszNEXiNVxdhi9KKwGiS6tQHAzGrrzH/qAmNh4ZJiv5KHOJ2+YGQeycHEacp3YTQiVCTaANTghA8n+uXT723JOU/hB31pEGO0o4PwSABuukOLv8P8kcQ5gcRMJ+s7k8NbymJLZEUGh47ldXAlocHs3y7C9qqI2zkjs3WZjC7Yv7YyYM2cQ4gdK7dv96Czi7Oh36ydkUAUqPgkkE7CGtvWhVTztbdrlJFJ2vzNw4EECDij3r8dJg+53liUI4sJSgfPginkPtTTl/YxptdTkh93/sOWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB4988.namprd11.prod.outlook.com (2603:10b6:806:f8::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.12; Thu, 16 Oct 2025 18:23:26 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 18:23:26 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 3/7] drm/i915/dp: Export helper to determine if FEC on
 non-UHBR links is required
Thread-Topic: [PATCH v2 3/7] drm/i915/dp: Export helper to determine if FEC on
 non-UHBR links is required
Thread-Index: AQHcPfCPOcdmabUN+ka2SLx7q8MpW7TE/8OAgAAGOICAABIPgA==
Date: Thu, 16 Oct 2025 18:23:26 +0000
Message-ID: <daf90b518850e8daf14a6aeaf173d43287dc5543.camel@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <20251015161934.262108-4-imre.deak@intel.com>
 <55a897534e3d0ab51ebdbc56a08281e20a30e937.camel@intel.com>
 <aPEo95sLX2TSol7q@ideak-desk>
In-Reply-To: <aPEo95sLX2TSol7q@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB4988:EE_
x-ms-office365-filtering-correlation-id: e2bd43aa-654f-42cc-780a-08de0ce11946
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?am9qNjd0ZStHU1RCdFNUOGhCdUdGQmIyNzV2ZjFKVlMraDdjaWVYK2c2NTU4?=
 =?utf-8?B?QVhWa1A2dGVxZ2dZd0RlMWUycm1DMWZQVzJkeEhTTjh2bWtQdzJoOEtYSG44?=
 =?utf-8?B?WWhpODN5NFAyUDZ1ZDI4Q1dkT2ZGTFRNbFhOZlMzdmh2OERmaUROcFl3Wi9t?=
 =?utf-8?B?OXpUTHpyV09XcFptUlpoMVUvMzQwdEVib29QWFc5UXRIRWM5RmZpOXYxbjB2?=
 =?utf-8?B?R1lZbGlPais1R3lUUm5nZlZrWC8vQkNmL1prZXRnNFh5RWo3bmEwU2JFOEEz?=
 =?utf-8?B?VTBRTFBYRWdrRFNVaGtzMllsZVE3NituYm9yUWFiTHVaSUZINzhLWE5TMFZy?=
 =?utf-8?B?ZFJSYWZjVkt6ZHhZUTR6WUQxVGxtcy9KYkc4Tm1lM3FpMTN5OWhFZUZ0d05t?=
 =?utf-8?B?NWtqVTBRMGRNcWRVUWQ5T1p3VGdseUd0OU8wWk1pYWs3dklESDJ2UGdaLzky?=
 =?utf-8?B?aUlJemtESWhCMEt5SHF6Z09meGhZMnlmcEZUQ3lXUUw1YkxmemE0SFdCUDhZ?=
 =?utf-8?B?MXUrcDZBd3QxOWxXaWhla0l2ckxkc25FSkpZUU1OeXU2QW9HdjNaZGI4RmNz?=
 =?utf-8?B?RlcxT21STTB4UUE4QUpqamNncTJrZVZMNnRwYUVVVXBnN09lQ3FSTUxNRlh1?=
 =?utf-8?B?K0dITmRXc2hCSHBCMncwaFNiTSttVFVuWE1PWXk5ZHAxbkF5d2lBSjB2cUQ2?=
 =?utf-8?B?Rk4vc29HQjhzV3h2QTBCcnJqemlwZSs1dTFmYzhDZHlCY0JWYlNjOTlpdTVE?=
 =?utf-8?B?U3JXUjQ5YldmemZUOE9Pb05wOUNhQVB4amMzSEZzRnJObWpRcFVDQzFzRVVK?=
 =?utf-8?B?RGpWNU55Z1hUbWJwemkyOTdwVE9VUjEzeUI4ZzNvaW5TdVlGT1UzT1ZSMkkw?=
 =?utf-8?B?SFlXZ2k3RndiMHZCcUtNZlVvdW56amx0RGlhdFgzR2J4TzFvQWZPSisxaUNa?=
 =?utf-8?B?WGZuTjhEbGE2aVFMZVFmRzRzRlV4UkIvT2tLQkIrUFRBL3R0cUxvT0RlbnBB?=
 =?utf-8?B?ZnF2aXg4bndGTFZ5cVMvUWFlZVRVVUZBSEU4ZDgySER2VXV1eG5ESXNDS2JD?=
 =?utf-8?B?UGNXS1k4ZGQ2MVhSdDZpQks1QUlUdWJ4TlMzS1UwSXlPeURkeVA3UDNsSjI5?=
 =?utf-8?B?WXFZRmVKZVFEbTdSbEx6L0hVMDUxS1lqeGFLaWhyUE1SV3VxODlyMXV6R1dI?=
 =?utf-8?B?YmxQajZIWWNuWS9adnowa2ppb29uU2hsVGRVY3pxYkVxNFpPVFJqczBncnFk?=
 =?utf-8?B?cE5TR2I4SEVsUnk3TkZ6U0tXTDNhRFVBU1dXcTdvYXFKYmo1Q0NvV0xOV3Q3?=
 =?utf-8?B?ZTgrZmo3c1FwM3F0cDNEN09TV1hLSnhrR0Nmam1SNkFCcytuM0tZWlh4VVJo?=
 =?utf-8?B?Tm0rbDA1c2NvSW1OVkY0QXJTc2pESkZua1lCUjVxWHFZN2U5QjE3NGcrSEM1?=
 =?utf-8?B?eEx0R3l3Y0hUY1psdFNubExrUnFHcDBPVk5yMlJENlQ2ZkIzcWdDMXErelE4?=
 =?utf-8?B?VXQwcXl0eU94MkwvelpGRDUrYS9rTnpCS3VoeElIRS9IdGh1U0NTcU9Pc2w4?=
 =?utf-8?B?N0hIVmNHQU1NZFRkWWpWL3FBamJNRDRRNUZsTTJlQng3WE1kUWxTNU5RdnIx?=
 =?utf-8?B?WUhqa2l5eVdWLzAyRW11czF6TDEwS0RvVDA3YmIzK3BBZG9xMi9kaS9oY2pY?=
 =?utf-8?B?Ymh0dzBvWVFhdHRZbFZXS1VQbWZ1U2N2eVpnUFJuOUNxUmJmUjZTVTBHK0s5?=
 =?utf-8?B?KyttN2FZNkRRV0Z3T0xVazY2VXcyL3pMRkVjRSt0enczYm5qbUpRY3dPRlBv?=
 =?utf-8?B?OWF5YnhtZE5iY1Q2SnpaWE5VNHoxbzkwT2lIRUROMWRtR2g0T2Y3T2xMQ1JU?=
 =?utf-8?B?UE80ZiszUTAvYlgyRjRhcGw2ZC9lQWkzYzUybkx6N3g3aUpabnh0OE9tY3FF?=
 =?utf-8?B?eWRKd1c0Qm05UWVLUkw1eHYzTGY0U0J4UHRCd2pWRnRpOFNzVnhrUlFqTHJ6?=
 =?utf-8?B?S2JWWjVOWkJUOUpyZnQ1MGg2Z3M5VzMzTHFua3dMQyttVncvWWhkSFU0dEI3?=
 =?utf-8?Q?Ufx6Pk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGFOQ29PdGJVTTdZbW1FaVBuQ1Fzd3JsbHNmc1lPNVVsSnc1aEJHTlQ4clRN?=
 =?utf-8?B?UmZjM1J5dFBPUWM2OVY1UHBiU2t6SHA4QzdZQ0cyYk5HOUFQcWUyNm1ma2pk?=
 =?utf-8?B?Vi9HUGl2S0FKK3oydFFpUWNlVEEyL2U2Q3VCd0Y4MG0xZEZMQnQ4TU9xam5s?=
 =?utf-8?B?M2JVdDBEYTJVVEtiaG9QYkZvcFJMZkN6NjFBc1lvSFVSZzFpb25PTnlMVXhQ?=
 =?utf-8?B?SkE4MHYrekZwSXJPTmE4SmRRdmJXL09FUERkcDZMelg0U2ZTeXk5OWlGRkNU?=
 =?utf-8?B?TmQyRVNjbEJRRzBNMmRxakp4bnYxVWlRMFVyRWlHNmpCLzlMcEptUDVvMUF4?=
 =?utf-8?B?WTdHWGVianBzRTBhejJXOTVDZXpPNXRBVnlEMURWMitaV1NiaFFWYVZuc3pU?=
 =?utf-8?B?dyt6elgyejA3RnM0MG9RQW5yRGRhYnNnMHJJQmZVV0J0cmRyZENCWEFzY21s?=
 =?utf-8?B?TWs2aWRlUzNSNHhwTzBqRHJwd2hIU0l4K1Q1eFp6dUdiakRGTjNHUHJyc2N0?=
 =?utf-8?B?cjJ6YTNpdUpuSk9CUVQ4NjdYVXpqZHhoUDFtVWxtenNDRGl6dUlzdGhQZlpi?=
 =?utf-8?B?NUlHWG1KRDUxQmVRSTczdWRDOEVEblB2RVBjVHFxU0paNytUaWdKbkZwUWly?=
 =?utf-8?B?ekxudC96MHhpZHFwWUtvQ3RrRk5XVnFCa3I2Vjc5YXpWRUVPcDUwcXZ3TGVD?=
 =?utf-8?B?eTdzem1MQVN0VmdFNUJTK2dGdUdYc20vVnZ6dHU0TklFbzMyL2pYOHJMVkR1?=
 =?utf-8?B?dkJHcm5Sd1VJSm1mL1owQWtZU214RHRyRHowdnhGeVJzZUdUSWtyQllIdHIw?=
 =?utf-8?B?MUdhTVJpZ1Z1RzBWWjZtSExtR3R3NmpVZHR0SWdjc3RYT1VlUW9ZWjNmVTJl?=
 =?utf-8?B?TUhtSnhreFNpcG1GUlJqUHpiQnJRcVhtQ1dDM2tvaWdVSjAzMFBQM2FkRVow?=
 =?utf-8?B?aXkyOXZieFJTSVRFZ2txdGNTZ3VkMmtPMld3OTN0UWdIbDFQVkUwSmppZ2hR?=
 =?utf-8?B?SDl1aWk2M2pqbkcxN0M2dEk3YTR6Nmpud2hqYXZoVHh0TStlQ3NDMHcxTEkw?=
 =?utf-8?B?VjZ5cVR1bjZBYkM1QWh3UE1zNitvNXA4bk4vMmZUMzRQWVo2b0ZvcjJuZkJu?=
 =?utf-8?B?RUJhV1BVOVBIbGVjN3RWNjRlWlBpTzBvcE9ydk5VU2dGNktqRm1EZEtmVURR?=
 =?utf-8?B?WlhwWDd1cko4ek94bXNPSXFlbWJ3VFAreTRPWHY0MDJQTURYeVVLM1hVS0lN?=
 =?utf-8?B?alAySEtBYXdhakJ0T1NpbVVmeW5XUFZRYW94SHVFMVdzZzJQblR2b01TMzdr?=
 =?utf-8?B?MkFJVmJYY0FFNnhYeGNIZWFMem55bUVmNWpOcjJtS1ZEejRZcnJVeDhlUHVl?=
 =?utf-8?B?TjhobXZ6SG1nMUtvaDBrcDBkUjA3TksxZzBpY3RMS3dyU2dQd0FzWW4zak5X?=
 =?utf-8?B?c3BWUUlqQTFkRVlBb3BJOW1ielR5K3J0VlBSU1hIZVg4OWExYzl1bFlick5l?=
 =?utf-8?B?UDdiNnBkbkg2elc4UEZRNUxaMDExYk90U050UDU4L0FZNm9TY0dtWjRwSFVB?=
 =?utf-8?B?eDJTaG1SdmllV2owVEt2TnYwTDhONVd2MEZKSnd4UEgzOWc0OTBxNUlCaDBq?=
 =?utf-8?B?WU9Sd0wwSEpGbFhXVFFuWVVYZHU4Q0dZMndZbDF2SEllV051ZmlOdkNzZE9P?=
 =?utf-8?B?UWU0TFJwYjkyUjBlcmZEajdKUktHU1VxdG5NdlZHemptT2N1bCtXVSs1NUVV?=
 =?utf-8?B?dDc4eUdoeHZOeitITGsySmk0UEU5K2piSXFQQVBzNkFLN21IdFZvQzliZ3Jy?=
 =?utf-8?B?YjhtRDU3VlJoakZtYnljZWtSQ1FXNFNBTHFmcHBwbDRYL1RuWEJZSnhoakxG?=
 =?utf-8?B?eVB6cXNkVk13NlB1bE5IWUcyS2JQZ2dTVXZ2a2t5U3o0YTF4cjRFUlJmTGU3?=
 =?utf-8?B?S2UwTzMyczc5NlhzYjE2a21tV0dNeW53Zi9xcDFvWkhuSzdRT0NtTkdPaUR6?=
 =?utf-8?B?UUFKR1phTUZEV1ZBUFJNa0tGcXpoV2paL2w3MWNEVGZ6K1RpRmNBTjdpblJu?=
 =?utf-8?B?QkgvUWxBWWl5a0FzY2Zib0ZoN3lGV1dFdE82VmswWEpYWC9tMGl6Q2o0eitp?=
 =?utf-8?B?RWN5TmdkbzZyaGFCbmx6UGR5MGJUbFMyeEdlSUFvYU8yT1ZiNXBrZ2l1SSts?=
 =?utf-8?B?YkV5KzdZOWZRT3hNSkZVblVRVXdhNGJtVTBLYW5tcC9hT2kxYjdjWkVXR0NB?=
 =?utf-8?B?K3EzS2pxS2doMmluK2VTa1NvZjFnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E4D1F8FA42B3BA4A87E04B9AEFBE700C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2bd43aa-654f-42cc-780a-08de0ce11946
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 18:23:26.3971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SIdk9lKSqYgLN+KESBLxyiDlgduGz8WkmGk5slTYXytLdXIPo426OHGavSqnvyWql99YXTUme9JTvf1hnYVsj6/gw1wOhano5pm5TMuI4MI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4988
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

T24gVGh1LCAyMDI1LTEwLTE2IGF0IDIwOjE4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFRodSwgT2N0IDE2LCAyMDI1IGF0IDA3OjU2OjMyUE0gKzAzMDAsIEpvdW5pIEhvZ2FuZGVyIHdy
b3RlOg0KPiA+IE9uIFdlZCwgMjAyNS0xMC0xNSBhdCAxOToxOSArMDMwMCwgSW1yZSBEZWFrIHdy
b3RlOg0KPiA+ID4gRXhwb3J0IHRoZSBoZWxwZXIgZnVuY3Rpb24gdG8gZGV0ZXJtaW5lIGlmIEZF
QyBpcyByZXF1aXJlZCBvbiBhDQo+ID4gPiBub24tDQo+ID4gPiBVSEJSDQo+ID4gPiAoOGIxMGIp
IFNTVCBvciBNU1QgbGluay4gQSBmb2xsb3cgdXAgY2hhbmdlIHdpbGwgdGFrZSB0aGlzIGludG8N
Cj4gPiA+IHVzZQ0KPiA+ID4gZm9yDQo+ID4gPiBNU1QgYXMgd2VsbC4NCj4gPiA+IA0KPiA+ID4g
V2hpbGUgYXQgaXQgZGV0ZXJtaW5lIHRoZSBvdXRwdXQgdHlwZSBmcm9tIHRoZSBDUlRDIHN0YXRl
LCB3aGljaA0KPiA+ID4gYWxsb3dzDQo+ID4gPiBkcm9wcGluZyB0aGUgaW50ZWxfZHAgYXJndW1l
bnQuIEFsc28gbWFrZSB0aGUgZnVuY3Rpb24gcmV0dXJuIHRoZQ0KPiA+ID4gcmVxdWlyZWQgRkVD
IHN0YXRlLCBpbnN0ZWFkIG9mIHNldHRpbmcgdGhpcyBpbiB0aGUgQ1JUQyBzdGF0ZSwNCj4gPiA+
IHdoaWNoDQo+ID4gPiBhbGxvd3Mgb25seSBxdWVyeWluZyB0aGlzIHJlcXVpcmVtZW50LCB3aXRo
b3V0IGNoYW5naW5nIHRoZQ0KPiA+ID4gc3RhdGUuDQo+ID4gPiANCj4gPiA+IEFsc28gcmVuYW1l
IHRoZSBmdW5jdGlvbiB0byBpbnRlbF9kcF9uZWVkc184YjEwYl9mZWMoKSwgdG8NCj4gPiA+IGNs
YXJpZnkNCj4gPiA+IHRoYXQNCj4gPiA+IHRoZSBmdW5jdGlvbiBkZXRlcm1pbmVzIGlmIEZFQyBp
cyByZXF1aXJlZCBvbiBhbiA4YjEwYiBsaW5rIChvbg0KPiA+ID4gMTI4YjEzMmINCj4gPiA+IGxp
bmtzIEZFQyBpcyBhbHdheXMgZW5hYmxlZCBieSB0aGUgSFcgaW1wbGljaXRseSwgc28gdGhlIGZ1
bmN0aW9uDQo+ID4gPiB3aWxsDQo+ID4gPiByZXR1cm4gZmFsc2UgZm9yIHRoYXQgY2FzZSkuDQo+
ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmPCoMKgwqDCoCB8IDIxICsrKysrKysrKysrKystLQ0KPiA+ID4gLS0tLQ0KPiA+ID4gLS0N
Cj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5owqDCoMKgwqAg
fMKgIDIgKysNCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYyB8wqAgMiArLQ0KPiA+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyks
IDkgZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiBpbmRleCBiNTIzYzRlNjYxNDEyLi4zZmZiMDE1MDA0
YzU0IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMNCj4gPiA+IEBAIC0yMzY1LDI0ICsyMzY1LDI5IEBAIHN0YXRpYyBpbnQNCj4gPiA+IGludGVs
X2VkcF9kc2NfY29tcHV0ZV9waXBlX2JwcChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+
ID4gwqAJcmV0dXJuIDA7DQo+ID4gPiDCoH0NCj4gPiA+IMKgDQo+ID4gPiAtc3RhdGljIHZvaWQg
aW50ZWxfZHBfZmVjX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVs
X2RwLA0KPiA+ID4gLQkJCQkJc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0
YXRlKQ0KPiA+ID4gKy8qDQo+ID4gPiArICogUmV0dXJuIHdoZXRoZXIgRkVDIG11c3QgYmUgZW5h
YmxlZCBmb3IgOGIxMGIgU1NUIG9yIE1TVA0KPiA+ID4gbGlua3MuIE9uDQo+ID4gPiAxMjhiMTMy
Yg0KPiA+ID4gKyAqIGxpbmtzIEZFQyBpcyBhbHdheXMgZW5hYmxlZCBpbXBsaWNpdGx5IGJ5IHRo
ZSBIVywgc28gdGhpcw0KPiA+ID4gZnVuY3Rpb24gcmV0dXJucw0KPiA+ID4gKyAqIGZhbHNlIGZv
ciB0aGF0IGNhc2UuDQo+ID4gPiArICovDQo+ID4gPiArYm9vbCBpbnRlbF9kcF9uZWVkc184YjEw
Yl9mZWMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0YXRlLA0K
PiA+ID4gKwkJCcKgwqDCoMKgwqAgYm9vbCBkc2NfZW5hYmxlZF9vbl9jcnRjKQ0KPiA+ID4gwqB7
DQo+ID4gPiDCoAlpZiAoaW50ZWxfZHBfaXNfdWhicihjcnRjX3N0YXRlKSkNCj4gPiA+IC0JCXJl
dHVybjsNCj4gPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiA+IMKgDQo+ID4gPiDCoAlpZiAoY3J0
Y19zdGF0ZS0+ZmVjX2VuYWJsZSkNCj4gPiA+IC0JCXJldHVybjsNCj4gPiA+ICsJCXJldHVybiB0
cnVlOw0KPiA+IA0KPiA+IE5vdCByZWFsbHkgY2hhbmdlZCBpbiB0aGlzIHBhdGNoOiBEbyB5b3Ug
a25vdyBpbiB3aGF0IGtpbmQgb2YgY2FzZQ0KPiA+ICJjcnRjX3N0YXRlLT5mZWNfZW5hYmxlID09
IHRydWUiIGJlZm9yZSBpbnRlbF9kcF9uZWVkc184YjEwYl9mZWMgaXMNCj4gPiBjYWxsZWQ/DQo+
IA0KPiBZZXMsIHRoYXQncyBhbm90aGVyIGNvcm5lciB3aGljaCBzaG91bGQndmUgYmVlbiBkb2N1
bWVudGVkIGF0IGxlYXN0Og0KPiB0aGF0J3MgdGhlIGNhc2Ugd2hlbiB0aGVyZSBhcmUgdHdvIG9y
IG1vcmUgQ1JUQ3Mgb24gYSA4YjEwYiBNU1QgbGluaywNCj4gb25seSBvbmUvc29tZSBvZiB0aGVt
IGVuYWJsaW5nIERTQyAoYnV0IG5vdCBhbGwpLiBGb3IgaW5zdGFuY2UsDQo+IENSVEMjMQ0KPiBl
bmFibGVzIERTQywgYnV0IENSVEMjMCBkb2VzIG5vdCBlbmFibGUgRFNDLiBGaXJzdCBDUlRDIzAn
cyBzdGF0ZSBpcw0KPiBjb21wdXRlZCAoZHVlIHRvIHRoZSByZWd1bGFyIG9yZGVyIG9mIENSVEMj
MC8xIGV0Yy4gc3RhdGUNCj4gY29tcHV0YXRpb24pDQo+IGFuZCBzaW5jZSBEU0MgaXMgbm90IGVu
YWJsZWQgb24gaXQsIGl0IHdpbGwgY29tcHV0ZQ0KPiBpbnRlbF9jcnRjX3N0YXRlOjpmZWNfZW5h
YmxlPWZhbHNlLiBUaGVuIENSVEMjMSB3aWxsIGNvbXB1dGUNCj4gZmVjX2VuYWJsZT10cnVlLCBk
dWUgdG8gaXQgZW5hYmxpbmcgRFNDLg0KPiANCj4gQWZ0ZXIgYWxsIENSVENzIGNvbXB1dGVkIHRo
ZWlyIHN0YXRlLCB0aHJvdWdoDQo+IGludGVsX2F0b21pY19jaGVja19jb25maWdfYW5kX2xpbmso
KSAtPiBpbnRlbF9hdG9taWNfY2hlY2tfY29uZmlnKCksDQo+IHRoZQ0KPiBmb2xsb3dpbmcgcGF0
aCB3aWxsIGRldGVjdCB0aGF0IHRoZSBGRUMgZW5hYmxlZCBzdGF0ZSBpcyBkaWZmZXJlbnQNCj4g
Zm9yDQo+IHRoZSBDUlRDcyBvbiB0aGUgc2FtZSBNU1QgbGluayAod2hlcmVhcyB0aGUgRkVDIGVu
YWJsZWQgc3RhdGUgc2hvdWxkDQo+IGJlDQo+IHRoZSBzYW1lIGZvciBhbGwgdGhlIENSVENzIG9u
IHRoZSBsaW5rLCBzaW5jZSBGRUMgaXMgdGhlIHByb3BlcnR5IG9mDQo+IHRoZQ0KPiBsaW5rIGVu
Y29kaW5nKS4gQWZ0ZXIgZGV0ZWN0aW5nIHRoaXMsIHRoZSBzdGF0ZSBvZiBhbGwgdGhlIENSVENz
IG9uDQo+IHRoZQ0KPiBsaW5rIHdpbGwgYmUgcmVjb21wdXRlZCB3aXRoIEZFQyBmb3JjZWQgb24g
bm93IGZvciBhbGwgKGZvcmNlZCwgZXZlbg0KPiBpZg0KPiBEU0MgaXMgbm90IGVuYWJsZWQgZm9y
IGEgQ1JUQyk6DQo+IA0KPiBpbnRlbF9hdG9taWNfY2hlY2tfY29uZmlnX2FuZF9saW5rKCkgLT4g
aW50ZWxfbGlua19id19hdG9taWNfY2hlY2soKQ0KPiAtPiANCj4gY2hlY2tfYWxsX2xpbmtfY29u
ZmlnKCkgLT4gaW50ZWxfZHBfbXN0X2F0b21pY19jaGVja19saW5rKCkgLT4NCj4gaW50ZWxfZHBf
bXN0X2NoZWNrX2ZlY19jaGFuZ2UoKS4NCj4gDQo+IFRoZSBhYm92ZSB3aWxsIHNldCB0aGUgaW50
ZWxfbGlua19id19saW1pdHM6OmZvcmNlX2ZlY19waXBlcyBtYXNrIGZvcg0KPiBib3RoIENSVEMj
MCBhbmQgQ1JUQyMxLCB0aGVuIGJvdGggQ1JUQ3MnIHN0YXRlIGdldHMgcmVjb21wdXRlZCwNCj4g
ZHVyaW5nDQo+IHdoaWNoIGludGVsX2NydGNfc3RhdGU6OmZlY19lbmFibGUgd2lsbCBiZSBzZXQg
dXBmcm9udCBpbg0KPiBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmlnKCkuIFRoZSBhYm92ZSBpbnRl
bF9kcF9kc2NfY29tcHV0ZV9jb25maWcoKQ0KPiAtPg0KPiBpbnRlbF9kcF9uZWVkc184YjEwYl9m
ZWMoKSB3aWxsIGJlIGNhbGxlZCBhZnRlciBhbGwgdGhlIGFib3ZlIChkdXJpbmcNCj4gdGhlIHNl
Y29uZCByb3VuZCBvZiBzdGF0ZSBjb21wdXRhdGlvbikgYW5kIHNvIHdpdGgNCj4gaW50ZWxfY3J0
Y19zdGF0ZTo6ZmVjX2VuYWJsZSBhbHJlYWR5IHNldC4gVGhpcyBzZXQgc3RhdGUgbXVzdCBiZQ0K
PiBwcmVzZXJ2ZWQgZm9yIENSVEMjMCBhcyB3ZWxsLCBldmVuIHRob3VnaCBpdCBkb2Vzbid0IGVu
YWJsZSBEU0MuDQoNClRoYW5rIHlvdSBmb3IgdGhlIGNsYXJpZmljYXRpb24uIFBhdGNoIDYgY29u
dmVydHMNCmludGVsX2RwX21zdF9jaGVja19mZWNfY2hhbmdlIC0+IGludGVsX2RwX21zdF9jaGVj
a19kc2NfY2hhbmdlLiBJLmUuDQpmb3JjZV9mZWNfcGlwZXMgbWFzayBpcyBub3Qgc2V0IGFuZCBp
dCBkb2Vzbid0IGV4aXN0LiBJbnN0ZWFkIHRoZXJlIGlzDQpmb3JjZV9kc2NfcGlwZXMgbWFzay4g
TWF5YmUgdGhpcyBjb3VsZCBiZSBkcm9wcGVkIGluIHBhdGNoIDYgYXMNCmludGVsX21vZGVzZXRf
cGlwZV9jb25maWcgaXMgc2V0dGluZyBjb21wcmVzc2lvbl9lbmFibGVkX29uX2xpbmsNCmluc3Rl
YWQgYW5kIHRoaXMgaXMgYWxzbyBjaGVja2VkIGluIGludGVsX2RwX25lZWRzXzhiMTBiX2ZlYz8g
DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiBCUiwNCj4gPiANCj4gPiBKb3Vu
aSBIw7ZnYW5kZXINCj4gPiA+IMKgDQo+ID4gPiDCoAkvKg0KPiA+ID4gwqAJICogVGhvdWdoIGVE
UCB2MS41IHN1cHBvcnRzIEZFQyB3aXRoIERTQywgdW5saWtlIERQLCBpdA0KPiA+ID4gaXMNCj4g
PiA+IG9wdGlvbmFsLg0KPiA+ID4gwqAJICogU2luY2UsIEZFQyBpcyBhIGJhbmR3aWR0aCBvdmVy
aGVhZCwgY29udGludWUgdG8gbm90DQo+ID4gPiBlbmFibGUgaXQgZm9yDQo+ID4gPiDCoAkgKiBl
RFAuIFVudGlsLCB0aGVyZSBpcyBhIGdvb2QgcmVhc29uIHRvIGRvIHNvLg0KPiA+ID4gwqAJICov
DQo+ID4gPiAtCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiA+ID4gLQkJcmV0dXJu
Ow0KPiA+ID4gKwlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQ
VVRfRURQKSkNCj4gPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiA+IMKgDQo+ID4gPiAtCWNydGNf
c3RhdGUtPmZlY19lbmFibGUgPSB0cnVlOw0KPiA+ID4gKwlyZXR1cm4gZHNjX2VuYWJsZWRfb25f
Y3J0YzsNCj4gPiA+IMKgfQ0KPiA+ID4gwqANCj4gPiA+IMKgaW50IGludGVsX2RwX2RzY19jb21w
dXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gQEAgLTI0MDQsNyAr
MjQwOSw3IEBAIGludCBpbnRlbF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+ID4gPiBp
bnRlbF9kcA0KPiA+ID4gKmludGVsX2RwLA0KPiA+ID4gwqAJICogRklYTUU6IHNldCB0aGUgRkVD
IGVuYWJsZWQgc3RhdGUgb25jZSBwaXBlX2NvbmZpZy0NCj4gPiA+ID4gcG9ydF9jbG9jayBpcw0K
PiA+ID4gwqAJICogYWxyZWFkeSBrbm93biwgc28gdGhlIFVIQlIvbm9uLVVIQlIgbW9kZSBjYW4g
YmUNCj4gPiA+IGRldGVybWluZWQuDQo+ID4gPiDCoAkgKi8NCj4gPiA+IC0JaW50ZWxfZHBfZmVj
X2NvbXB1dGVfY29uZmlnKGludGVsX2RwLCBwaXBlX2NvbmZpZyk7DQo+ID4gPiArCXBpcGVfY29u
ZmlnLT5mZWNfZW5hYmxlID0NCj4gPiA+IGludGVsX2RwX25lZWRzXzhiMTBiX2ZlYyhwaXBlX2Nv
bmZpZywgdHJ1ZSk7DQo+ID4gPiDCoA0KPiA+ID4gwqAJaWYgKCFpbnRlbF9kcF9kc2Nfc3VwcG9y
dHNfZm9ybWF0KGNvbm5lY3RvciwNCj4gPiA+IHBpcGVfY29uZmlnLQ0KPiA+ID4gPiBvdXRwdXRf
Zm9ybWF0KSkNCj4gPiA+IMKgCQlyZXR1cm4gLUVJTlZBTDsNCj4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+ID4gPiBpbmRleCBiMzc5NDQzZTAyMTFl
Li41NTA1OWJkNWM3ZWZiIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmgNCj4gPiA+IEBAIC03Myw2ICs3Myw4IEBAIHZvaWQgaW50ZWxfZHBfZW5j
b2Rlcl9mbHVzaF93b3JrKHN0cnVjdA0KPiA+ID4gZHJtX2VuY29kZXINCj4gPiA+ICplbmNvZGVy
KTsNCj4gPiA+IMKgaW50IGludGVsX2RwX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLA0KPiA+ID4gwqAJCQnCoMKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gPiA+ICpwaXBlX2NvbmZpZywNCj4gPiA+IMKgCQkJwqDCoMKgIHN0cnVjdCBkcm1fY29ubmVj
dG9yX3N0YXRlDQo+ID4gPiAqY29ubl9zdGF0ZSk7DQo+ID4gPiArYm9vbCBpbnRlbF9kcF9uZWVk
c184YjEwYl9mZWMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0
YXRlLA0KPiA+ID4gKwkJCcKgwqDCoMKgwqAgYm9vbCBkc2NfZW5hYmxlZF9vbl9jcnRjKTsNCj4g
PiA+IMKgaW50IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLA0KPiA+ID4gwqAJCQkJc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ICpwaXBl
X2NvbmZpZywNCj4gPiA+IMKgCQkJCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ID4gPiAq
Y29ubl9zdGF0ZSwNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbXN0LmMNCj4gPiA+IGluZGV4IDI3ZTk1MmE2N2MzNDMuLmQwNTkwYjVmZmZmZDcg
MTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X21zdC5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X21zdC5jDQo+ID4gPiBAQCAtMjk2LDcgKzI5Niw3IEBAIGludCBpbnRlbF9kcF9tdHBfdHVfY29t
cHV0ZV9jb25maWcoc3RydWN0DQo+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiDCoAkv
Kg0KPiA+ID4gwqAJICogTk9URTogVGhlIGZvbGxvd2luZyBtdXN0IHJlc2V0IGNydGNfc3RhdGUt
PmZlY19lbmFibGUNCj4gPiA+IGZvcg0KPiA+ID4gVUhCUi9EU0MNCj4gPiA+IMKgCSAqIGFmdGVy
IGl0IHdhcyBzZXQgYnkgaW50ZWxfZHBfZHNjX2NvbXB1dGVfY29uZmlnKCkgLT4NCj4gPiA+IC0J
ICogaW50ZWxfZHBfZmVjX2NvbXB1dGVfY29uZmlnKCkuDQo+ID4gPiArCSAqIGludGVsX2RwX25l
ZWRzXzhiMTBiX2ZlYygpLg0KPiA+ID4gwqAJICovDQo+ID4gPiDCoAlpZiAoZHNjKSB7DQo+ID4g
PiDCoAkJaWYgKCFpbnRlbF9kcF9zdXBwb3J0c19mZWMoaW50ZWxfZHAsIGNvbm5lY3RvciwNCj4g
PiA+IGNydGNfc3RhdGUpKQ0KPiA+IA0KDQo=
