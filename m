Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB79FB84862
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 14:12:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 507D310E011;
	Thu, 18 Sep 2025 12:12:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NoWlb+cD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B586610E011
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Sep 2025 12:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758197537; x=1789733537;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S0kU3fZn+0K9gNTaH8oe9GpGkhhfnaUVF+RD1/jLyZU=;
 b=NoWlb+cDzycNh2KG5H54dHil0JswddV1xSYt2x7Up5xinWq7vHEXoPit
 6AQZ8znhwGHjbj+HZwdosvrS4l1QVJP5Jy71A6pETAyqQ6MZ5ljVjCkBs
 1niUL+1JEbwuqjUeAcUiayW8S146X44kwHRjIWbf5jRfAyYmZZyVTLq1L
 k2dRmt39Gd1wil/3R+++f+6aRQfT4lMcdtY+7+/8wOeYREXYRJmhnYmYw
 8ftUAHl4PPoPx9aoqCFRQxJ52zfguOaAIimCDPcE2sCA7PPhMKGPVjtIJ
 jNNTQLAgJlu01cUyWIIpSoFt8n4fzriTeLSTHdexXAb1xOLZ6St71wSnT g==;
X-CSE-ConnectionGUID: vy0ULPeHRRemoUgi1Dt8Zg==
X-CSE-MsgGUID: Ilx1mVl9TgakYOyZfWyNQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71631344"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71631344"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:12:16 -0700
X-CSE-ConnectionGUID: bvwJIcP8SJKkWy12UOxS8w==
X-CSE-MsgGUID: cRRgMhzdS7KBuQioz1fcdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="180640499"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 05:12:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 05:12:15 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 05:12:15 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 05:12:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fiF43uR2VrLNpn4mAmxd0UYUjblf4LCNkpoCyLQmywL7pP2V6Z4tDsKXokjFJSwEbVJkVeEDQ0EQn5q93SA48iVGuScaWNJnezML+Hba1Wyjj5hJrwreKxLbkiokN/V9xuNlLVCQQM/ferp0RouqsAzPonkZHqWcRckRXPbFBFFoCkpxf+YSIUID/Y/k8enNupMnI6ininVd4Y4MuyEyqq0qQZlXO69q00HXUWxlRY/4GsZ6drwBtevJza8Pkvorq38ycaF99U5edbo9kjiLTb0Ey3JIFby1z2uFUhF9wx8c3bQhtwBoy//J/qRMPJX8sYiItgsmxAhrG6IJ2Uw56Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S0kU3fZn+0K9gNTaH8oe9GpGkhhfnaUVF+RD1/jLyZU=;
 b=BTwzigcLstTiIeFFbyvrqgS1qqUcIBZNrKejbTz6yFMnerWik2oXbGfzEI/4mWP9mUc2BdRFd1aPgRixAD8cvTMC7N1IuNk+ATRQgFKGqDmEe54pv6iaaiOnFgqD1PMT5yJFFpml2DtLleT4qdo3cS8NrKfGPd4Aw3rnlLmIFKemv2NSJlxhpoEtYK3PVEsKtSs2Lz40UsaCVcsfbRWG+VQXfvwARKdhqaa5OyKZxzHix17RQw3Nc+YszyPxHzruMSJRWGHexNBiTfRPe1QcZcM//remsQJRtHbfH/Fob5yMvjhQM/tYu4dYvXocZNROe7tj9XXKcAs6Rrm4nbMKuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6282.namprd11.prod.outlook.com (2603:10b6:930:22::7)
 by DM3PR11MB8682.namprd11.prod.outlook.com (2603:10b6:8:1ae::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Thu, 18 Sep
 2025 12:12:13 +0000
Received: from CY5PR11MB6282.namprd11.prod.outlook.com
 ([fe80::3bae:78fb:38be:a25a]) by CY5PR11MB6282.namprd11.prod.outlook.com
 ([fe80::3bae:78fb:38be:a25a%5]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 12:12:13 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "20250911210514.389014-2-dnyaneshwar.bhadane@intel.com"
 <20250911210514.389014-2-dnyaneshwar.bhadane@intel.com>
CC: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
Subject: RE: [PATCH 1/3] drm/pcids: Split PTL pciids group to make wcl
 subplatform
Thread-Topic: [PATCH 1/3] drm/pcids: Split PTL pciids group to make wcl
 subplatform
Thread-Index: AQHcI155OJZ6dWitmEeL9f3sKOdv2LSUQ+WAgAAFKYCAAAF9gIAEkuFQ
Date: Thu, 18 Sep 2025 12:12:13 +0000
Message-ID: <CY5PR11MB62822B241B6005475719CF56E216A@CY5PR11MB6282.namprd11.prod.outlook.com>
References: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
 <20250911205543.388402-2-dnyaneshwar.bhadane@intel.com>
 <175794320783.1613.3172112236499856318@intel.com>
 <f292d091e4be602b3a43ff974ac9c588cd6e8611@intel.com>
 <175794463580.1613.13102099526315551551@intel.com>
In-Reply-To: <175794463580.1613.13102099526315551551@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6282:EE_|DM3PR11MB8682:EE_
x-ms-office365-filtering-correlation-id: e31c726c-2fe2-4e12-712d-08ddf6ac99f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZXpDNGp5S2hxM3RJZUVmRHFPVHI5UkFkS0J2cEVzK2FWSXNFV1ljTWZPTDRa?=
 =?utf-8?B?cFZ1T2svNjUrVjhiQkUwVUYvZDlNaUQ0YkliUDJKT3dqSktVM0FmMUlyRjkx?=
 =?utf-8?B?clIvaUxLemZpMDFPTUJoejU0OVpRUnVpbDQ1YUZTSEV2OG1xZ3BadTE2alh6?=
 =?utf-8?B?NHo5TGdhQmxpWGF0c1pIdGpCeVFRUTJOSGxiVERWcW00NDREU1ZubjV3cCtQ?=
 =?utf-8?B?MVVIWTR5ZGF3TVF1Y2RoT0JXS2lGTEd5c3NkcExac1ZsOUpLRnVqdEVhSEl3?=
 =?utf-8?B?WmFhQnpjSjUzeGpzNXg4bmNhSUcvNFdmeWNnT01xNDlVSEl0ZW9Bb2lDb2Ny?=
 =?utf-8?B?eXl0RDFrdFdYSUFkbkJsWE1VTjlHbWY5ZWEvZEkydzRJcE9KOUM2cktxL2w4?=
 =?utf-8?B?WTloV2UyV2tkVmJhZ3gwb1pxMWd5Z09CQ0xpOE1hVFhBN0xNeHczaE8reEVm?=
 =?utf-8?B?M2lxOTFTSHdoaDZxdC9CWmMyY2JRTSs4R0pQci9Rc0pOVkUwd2xzZGJtOXQy?=
 =?utf-8?B?a3BLVFI5K3dJM1dwcG92bmd2dFR3c0hkNzhsUGFnYW1ySWIrbmcvdnk4S1Nu?=
 =?utf-8?B?NEpONFdiOXBGMGxidlRqYk1JQWV5aWV2TzB6cHh5M3BKUkNTVkRhaTJTSFk3?=
 =?utf-8?B?MllVZGJQWENDTjUzNWpySmJzNjJid0xuVnkrZm5Ja0xuTm56U0pLMWFBRTZQ?=
 =?utf-8?B?b2xzQk1idExoRmJ6RW1nbHIwcDNlTm9zQWd3MXhDMTJWcmJrSlpBY1psWHZD?=
 =?utf-8?B?aFVFTUJlaXV0SmRubDdhVk5XTUh1blNtcjhONVlNUytsaERkRGFkdFFNVnBH?=
 =?utf-8?B?cUVGcW4vbFRJL1ZIb1gyWWMxUkJxMEpyS3A2VWdiWW1IaUp3Vm9ZRlQ5R09V?=
 =?utf-8?B?YUNZMlI2SXRuYm9ad3lDdGhVd1VhdmV0N3VHMmxMS01FOFRzdkhzWDRkaGlo?=
 =?utf-8?B?QmVvbXBCbnRtOXBTUUxXVlgxUlQ2aHJqMFZDeXlBb2pJZ2JGbW9jSUhZYUNG?=
 =?utf-8?B?THdOZGY0N1IvOW9Qc3R3MVFsR0pQN1VqT3hXRXFSS05Xa0MzZHpWZEpQR3FX?=
 =?utf-8?B?MXpURERhb05ObFFyV21YelhwYmlKUU5rdFJ0UmVnVmwzSmduejlvamhsYkVT?=
 =?utf-8?B?VmdqSU0yZ2lzamlxNUlhZWc2dUhMSWswMnh2cHVEN2VmVzRGdGJrSTlqS0Yw?=
 =?utf-8?B?LzFnOG5rUEF2T1FwdmNsYnZmYzdNWmMyZlh1eG90WVlpRkNWMmNpaEhDVktF?=
 =?utf-8?B?b09QMDZrdG1ad01aU1VjQkhzaklWTmZhSVJkZUszMW0xSWJGcSs4czUrR2Iz?=
 =?utf-8?B?c3hOSHB4RFhoVGdueG14TjE0SDY4bHZzQllweUNwTUFDSmdEdFc5SzU1eG9F?=
 =?utf-8?B?NG1td0h3eGc0Z0tIUnB4MTNQMGE1ZUozejhWNmRLSURPRFJWaFcxN3BLcFFN?=
 =?utf-8?B?eStSb0lYSEtlSUJRNFhtTjdjeDZ1czdvVUVBYnhkOTdvbUFHbFBEWEFvcXVs?=
 =?utf-8?B?Uk04SGlXWGdKMDh3V1NJaXFMMnpVbXE0dHdmOGRkT1VqOTFyVXVYQWRXRFhQ?=
 =?utf-8?B?RzUvRGdXc3ZkUVNveEFGSG95K1p4OExlaWg2aVJPZE55dFFLMUk5WThlbS9D?=
 =?utf-8?B?UnhURmV4VXRlSWZJNFR6Nlo5K01XcmNSUXJkQTk0MDdRdXN1OXJQQ1NSYm8v?=
 =?utf-8?B?b2k1ZkppU05nOUx0TWsya0UwaTYvQ3Q2SXZRWTc4NmQ0ZUhCekNPU3NIOUNa?=
 =?utf-8?B?N0UxR3JKZGY4QzFhN2dzNS8wZW1hWSt2aHhMWnFBTlhoMjZBK25YeFgrVTZ6?=
 =?utf-8?B?N1FmcG1sY0U2Undtbm1mcHhJU3JoTjl4UUxhSHhYbERDZjR1VzFjaisraDMy?=
 =?utf-8?B?UVFnZ1NaNlJFRTIyTkx0SDIxYmplcDY4RmNwQ0VncklVOFpOdXoxNEZJSHgv?=
 =?utf-8?Q?LdTeZDRwsz1krFEeJlGJ9B/Ug0oKjVF8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zk1kMEsrSXFTeStheVJUdThEYThXWXJ4OXZYMW8xOTRZVFBobWd6R0FOUHFx?=
 =?utf-8?B?N1htYzNlVVRsSDYrZHE4OStVbnAyWld1WWJDTWEvVW0zWHd6SFNwWXhnT3pC?=
 =?utf-8?B?VFBVQ2g0Z3lxaE5xTVdKSzEyM3ZsL3Q1N0NFaGw0ZFE5TkFycTNLc0RUZ21z?=
 =?utf-8?B?aVdpUTJGaXhndVhORzYwK3FLK2pYcTBjZU9BNysxZVljT0tLajdzMlVKRkw3?=
 =?utf-8?B?Q1hsd3Nqa2lnMm5sUVRwcmN4MTVBMTczNlZ2ckkyT0MzT21NTnhCcWJWRWph?=
 =?utf-8?B?cklnKzU3UWtxWXJGVHZVQVVYYkZMSS9EaDlMdlZKdHhSbkd3MWpsU2pjTk9y?=
 =?utf-8?B?YlppOFZPTUpUWmt3Qk9UWmtET1g5NmJBemkxREJvOEpRSTVVY3l2S3BORTU0?=
 =?utf-8?B?VXBoSndzQTVXOVhsdC81a29pNVE1UkVhdExmL09WbHZsUWY0R0NGMzhjVVBj?=
 =?utf-8?B?bkJ2eWRLaXhCQ3VDMzg4QnZ1NW9VdDBFYmVrV25iL1hrcmhZbUxRbnJnZVht?=
 =?utf-8?B?aVgvZHQxYlBLRVNaOGtjT3JrZmxqQkdCeFFsbGtLc1RUMTZ2bElweDh2UVh1?=
 =?utf-8?B?ZnozdHZSZ3FML2ZaZHVUNXpTaCs0Ky9NQzFwckYvVlpUOFcyYjk3UjBZRXcx?=
 =?utf-8?B?bTBVQ3FvVC9lNEVWVnBab0VlLzVvVk1BZk1NaURVaWk2QTk0eGdvcnJhK1NS?=
 =?utf-8?B?SkltWUpGOHBSSVdQTGpFWm1kUnNGcUQxSTFFR1hZNmllZU0rZm9nS1ZJZzRt?=
 =?utf-8?B?VnJNSGNFbkY2ZGVueUxjenpLSFFuUmcwamZiS2IzdmlBSUFYZ09oSDNwTkpy?=
 =?utf-8?B?b3A2UFJ3ejFBRUlsS2ZDcnJWZ2NRNU9KVmI0OTNXbmo0RlRTQ2lpa0FrNUxp?=
 =?utf-8?B?Qi9XZUpwanFuRlhVU20yb0pJVTY5aXlOVkZ1a2RJcStoaGRRWFpsTENHQ0s1?=
 =?utf-8?B?R1VLZTdVR3JyRjBmRFZ1WEYrZng1NVhsa1lOTk1iU3BDdGhlZ0JPY0xROFN1?=
 =?utf-8?B?VjRqMU4wbXd3NjU3RlJOendtbTdIek5yNHpaYnhidklaQUY5WUJNK1NlTkli?=
 =?utf-8?B?OHZmR2Q4dEJhT0VxK3hPZnVTcUVUT1V5RFVGNy9zQ3p3MFhVSEYzQjVUcU9E?=
 =?utf-8?B?dWg0ejhKbnBUU2Y1cWloMUZEdzd3M3dRUnBqNFhLeTh4Z3BHbjhRR2VFWGIr?=
 =?utf-8?B?VGJrZnRxczVTdk5QSW4wbC9PRjlISk9kL2pvQjQwdkJXMWVSMUlJQkxmemZK?=
 =?utf-8?B?ZGk5SDRYYUEybTFwaHZYWjFldG5acGhnajBNQmxrMXR4Q1ZXTnlMbk44eGZU?=
 =?utf-8?B?YlgvQ2tWTGMyQUxjRVpQbUNlT3pPRXJWeTI4am16OTNVYVNKaE0wUTA1cXJM?=
 =?utf-8?B?MkgrckhuamxrdXdoUGZXR3RiRGVVbExKK0oxUC9TYWR3UW13eGxoYlFmS1FF?=
 =?utf-8?B?VVdMSVRjZXdjd3UySERmMUdZcnVXR2ZFZ3FwbG40UzlOVDNtNXJvUzQ3ajB0?=
 =?utf-8?B?dEJnVWlsZE44alNTMUkvd2dzRmE1VnJqYUszSXN6R0xOenJuK3BlaHNZbUVF?=
 =?utf-8?B?eUdMVmhWdURjMTNmODNXVTlLZmpDZllmYXVIcXdlVTAwOEs5cC9ZTlZmNU5v?=
 =?utf-8?B?cVJLeTJnZjJFeGlrZTRtRzNuYTBOS2E5TWp5UU94V2FTWjBTVzkrU0pLSG4z?=
 =?utf-8?B?dmVXWFNkaWFUOElUR2JDbUF5ZW1vMDR1b24yQ04wb0VMWTNMNmY3NHZ0Y0hG?=
 =?utf-8?B?K1AwOTVlVzZVd1ZiODZFaGJiV00xNG9xSmdGMVl6R0FGVHJ1bjhaRmkwVkJ1?=
 =?utf-8?B?MGtiMFBHVGV3dDRzQm9BWkV1N2hIVWlodUhhTGdkN2dsRDhheHZsQXNENFUr?=
 =?utf-8?B?TDZPNW54d2pzSE5TV2FMY3E1YStQcTZUMWo0Nnk4QXlsTEtJelJZWUgraHdx?=
 =?utf-8?B?Zy81aW1yWGJOczZibmY2eUpXZGhudXJxdzFJUGZXcGpUSis3bDltZC8xYXI5?=
 =?utf-8?B?MnRaaTUwVHlEcjNxS0x2SW03K2MrZmFCZU1KZnhLOG1oYlA0M2NpV3BoQlZp?=
 =?utf-8?B?Q3FpMktzRWg5T3Zkb0doZ1lVVXhDVUtqWlUyaHNlL3NIVDlqcWpTNlJtMDRJ?=
 =?utf-8?B?RHhXMzBKVGE3Tm9MeWVwYTZkTmp0VzN2ell6bm41TEVzVDU4TlFidU5OWXZB?=
 =?utf-8?B?b0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e31c726c-2fe2-4e12-712d-08ddf6ac99f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2025 12:12:13.4117 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 16kwyB9iGgAqPRn1++P0dh/T5JaYvbt9EfHZyC3ujyhY9TdB7MEdMC/91d4zDPQD2y2H7AuxA3V2l0hwkBInfsdWXe09JL8cJ2KMxss3yWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8682
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
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIFNlcHRlbWJlciAxNSwg
MjAyNSA3OjI3IFBNDQo+IFRvOiBCaGFkYW5lLCBEbnlhbmVzaHdhciA8ZG55YW5lc2h3YXIuYmhh
ZGFuZUBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkNCj4gPGphbmkubmlrdWxhQGludGVsLmNvbT47
IE5hdXRpeWFsLCBBbmtpdCBLIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT47IGludGVsLQ0K
PiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBBdHdvb2QsIE1hdHRoZXcgUyA8bWF0
dGhldy5zLmF0d29vZEBpbnRlbC5jb20+OyBCaGFkYW5lLA0KPiBEbnlhbmVzaHdhciA8ZG55YW5l
c2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMS8zXSBkcm0v
cGNpZHM6IFNwbGl0IFBUTCBwY2lpZHMgZ3JvdXAgdG8gbWFrZSB3Y2wNCj4gc3VicGxhdGZvcm0N
Cj4gDQo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMjUtMDktMTUgMTA6NTE6NTUtMDM6MDApDQo+
ID5PbiBNb24sIDE1IFNlcCAyMDI1LCBHdXN0YXZvIFNvdXNhIDxndXN0YXZvLnNvdXNhQGludGVs
LmNvbT4gd3JvdGU6DQo+ID4+IFF1b3RpbmcgRG55YW5lc2h3YXIgQmhhZGFuZSAoMjAyNS0wOS0x
MSAxNzo1NTo0MC0wMzowMCkNCj4gPj4+VG8gZm9ybSB0aGUgV0NMIHBsYXRmb3JtIGFzIGEgc3Vi
cGxhdGZvcm0gb2YgUFRMIGluIGRlZmluaXRpb24sIFdDTA0KPiA+Pj5wY2kgaWRzIGFyZSBzcGxp
dGVkIGludG8gc2FwYXJhdGUgZ3JvdXAgZnJvbSBQVEwuDQo+ID4+PlNvIHVwZGF0ZSB0aGUgcGNp
aWRsaXN0IHN0cnVjdCB0byBjb3ZlciBhbGwgdGhlIHBjaSBpZHMuDQo+ID4+Pg0KPiA+Pj5TaWdu
ZWQtb2ZmLWJ5OiBEbnlhbmVzaHdhciBCaGFkYW5lDQo+IDxkbnlhbmVzaHdhci5iaGFkYW5lQGlu
dGVsLmNvbT4NCj4gPj4+LS0tDQo+ID4+PiBkcml2ZXJzL2dwdS9kcm0veGUveGVfcGNpLmMgfCAx
ICsNCj4gPj4+IGluY2x1ZGUvZHJtL2ludGVsL3BjaWlkcy5oICB8IDQgKysrLQ0KPiA+Pj4gMiBm
aWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPj4+DQo+ID4+
PmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfcGNpLmMNCj4gPj4+Yi9kcml2ZXJz
L2dwdS9kcm0veGUveGVfcGNpLmMgaW5kZXggNzAxYmE5YmFhOWQ3Li5mYzJlYTkxMzI4MDQNCj4g
MTAwNjQ0DQo+ID4+Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9wY2kuYw0KPiA+Pj4rKysg
Yi9kcml2ZXJzL2dwdS9kcm0veGUveGVfcGNpLmMNCj4gPj4+QEAgLTM3NSw2ICszNzUsNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgcGNpaWRsaXN0W10gPSB7DQo+ID4+PiAg
ICAgICAgIElOVEVMX0xOTF9JRFMoSU5URUxfVkdBX0RFVklDRSwgJmxubF9kZXNjKSwNCj4gPj4+
ICAgICAgICAgSU5URUxfQk1HX0lEUyhJTlRFTF9WR0FfREVWSUNFLCAmYm1nX2Rlc2MpLA0KPiA+
Pj4gICAgICAgICBJTlRFTF9QVExfSURTKElOVEVMX1ZHQV9ERVZJQ0UsICZwdGxfZGVzYyksDQo+
ID4+PisgICAgICAgIElOVEVMX1dDTF9JRFMoSU5URUxfVkdBX0RFVklDRSwgJnB0bF9kZXNjKSwN
Cj4gPj4+ICAgICAgICAgeyB9DQo+ID4+PiB9Ow0KPiA+Pj4gTU9EVUxFX0RFVklDRV9UQUJMRShw
Y2ksIHBjaWlkbGlzdCk7IGRpZmYgLS1naXQNCj4gPj4+YS9pbmNsdWRlL2RybS9pbnRlbC9wY2lp
ZHMuaCBiL2luY2x1ZGUvZHJtL2ludGVsL3BjaWlkcy5oIGluZGV4DQo+ID4+PmRhNjMwMWE2ZmNl
YS4uOWQzNzhjNjViZTRiIDEwMDY0NA0KPiA+Pj4tLS0gYS9pbmNsdWRlL2RybS9pbnRlbC9wY2lp
ZHMuaA0KPiA+Pj4rKysgYi9pbmNsdWRlL2RybS9pbnRlbC9wY2lpZHMuaA0KPiA+Pj5AQCAtODc3
LDcgKzg3Nyw5IEBADQo+ID4+PiAgICAgICAgIE1BQ1JPX18oMHhCMDhGLCAjIyBfX1ZBX0FSR1Nf
XyksIFwNCj4gPj4+ICAgICAgICAgTUFDUk9fXygweEIwOTAsICMjIF9fVkFfQVJHU19fKSwgXA0K
PiA+Pj4gICAgICAgICBNQUNST19fKDB4QjBBMCwgIyMgX19WQV9BUkdTX18pLCBcDQo+ID4+Pi0g
ICAgICAgIE1BQ1JPX18oMHhCMEIwLCAjIyBfX1ZBX0FSR1NfXyksIFwNCj4gPj4+KyAgICAgICAg
TUFDUk9fXygweEIwQjAsICMjIF9fVkFfQVJHU19fKQ0KPiA+Pj4rDQo+ID4+PisjZGVmaW5lIElO
VEVMX1dDTF9JRFMoTUFDUk9fXywgLi4uKSBcDQo+ID4+PiAgICAgICAgIE1BQ1JPX18oMHhGRDgw
LCAjIyBfX1ZBX0FSR1NfXyksIFwNCj4gPj4+ICAgICAgICAgTUFDUk9fXygweEZEODEsICMjIF9f
VkFfQVJHU19fKQ0KPiA+Pg0KPiA+PiBUaGlzIHBhdGNoLCBhdCBpdHMgY3VycmVudCBzdGF0ZSwg
d2lsbCBicmVhayB0aGUgZGlzcGxheSBwYXJ0LA0KPiA+PiBiZWNhdXNlIFdDTCB3aWxsIG5vdCBi
ZSBkZXRlY3RlZCB1bnRpbCB0aGUgbmV4dCBwYXRjaC4gV2Ugc2hvdWxkIGVpdGhlcjoNCj4gPj4N
Cj4gPj4gIC0gYnJpbmcgdGhlIGxpbmUgIklOVEVMX1dDTF9JRFMoSU5URUxfRElTUExBWV9ERVZJ
Q0UsICZwdGxfZGVzYykiIGZyb20NCj4gPj4gICAgcGF0aCAjMiBpbnRvIHRoaXMgb25lLg0KPiA+
DQo+ID5UaGlzLiBJJ3ZlIGFscmVhZHkgcmVwbGllZCB0byBhIG5ld2VyIHZlcnNpb24gb2YgdGhp
cyBzZXJpZXMgdG8gdGhpcw0KPiA+ZWZmZWN0IFsxXVsyXS4NCj4gPg0KPiA+WzFdDQo+ID5odHRw
czovL2xvcmUua2VybmVsLm9yZy9yLzcwZmM0MTJiNDdkOTk3MmFkMmQxYjZlY2ExM2JiZGQ5ZGE5
OTI1NTINCj4gQGludGUNCj4gPmwuY29tIFsyXQ0KPiA+aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ci84NGZjMTBlYzNiODJiMzQzNmI1MjE4MTE1ODkwNjdhZDA4NTBlYWNkDQo+IEBpbnRlDQo+ID5s
LmNvbQ0KPiA+DQo+ID4+ICAtIHNxdWFzaCB0aGlzIGFuZCBwYXRjaCAjMiB0b2dldGhlci4NCj4g
Pg0KPiA+SU1PIGNsZWFuZXIgd2l0aCBzZXBhcmF0ZSBwYXRjaGVzLg0KPiA+DQo+ID4+IFRoYXQg
c2FpZCwgc2luY2Ugd2UgYXJlIGRlZmluaW5nIFdDTCBhcyBhIHN1YnBsYXRmb3JtLCBJIHRoaW5r
IHdlDQo+ID4+IHByb2JhYmx5IHNob3VsZCBtYWtlIElOVEVMX1dDTF9JRFMoKSBiZSBjYWxsZWQg
ZnJvbSBJTlRFTF9QVExfSURTKCkuDQo+ID4NCj4gPk5vLiBQbGVhc2UgZG9uJ3QgZG8gdGhhdC4N
Cj4gPg0KPiA+VGhlcmUgYXJlIHZhcmlvdXMgY29uc3VtZXJzIGZvciB0aGUgUENJIElEIG1hY3Jv
cywgYW5kIHRoZXkgc2hvdWxkIGJlDQo+ID5rZXB0IGluZGVwZW5kZW50LiBJdCdzIGVhc2llciB0
byBkZWFsIHdpdGggdGhlIHBsYXRmb3JtL3N1YnBsYXRmb3JtDQo+ID5yZWxhdGlvbnNoaXBzIGF0
IHRoZSBjb25zdW1lciBzaWRlLCBpbnN0ZWFkIG9mIGZvcmNpbmcgaXQgaW4gdGhlIFBDSSBJRA0K
PiA+bWFjcm9zLg0KPiA+DQo+ID5KdXN0IGNvbnNpZGVyIGhhdmluZyB0byBwcm9tb3RlIFdDTCB0
byBhbiBpbmRlcGVuZGVudCBwbGF0Zm9ybSBsYXRlci4NCj4gPkl0IHdvdWxkIG1lYW4gc2h1ZmZs
aW5nIHRoZSBtYWNyb3MgYWdhaW4uDQo+IA0KPiBBbHJpZ2h0LiBUaGFua3MhDQoNCk5vdGVkLCBU
aGFuayB5b3UuIA0KRG55YW5lc2h3YXINCj4gDQo+IC0tDQo+IEd1c3Rhdm8gU291c2ENCj4gDQo+
ID4NCj4gPj4gRWl0aGVyIHRoYXQgb3IgbWFrZSBib3RoIHNlcGFyYXRlIHBsYXRmb3JtcyBmcm9t
IHRoZSBkaXNwbGF5IHBvaW50IG9mDQo+ID4+IHZpZXcuDQo+ID4+DQo+ID4+IEFsc28sIEknbSBu
b3Qgc3VyZSBob3cgaGF2aW5nIGEgcHJlbGltaWFyeSBwYXRjaCBhZmZlY3RzIGJhY2twb3J0aW5n
DQo+ID4+IGZpeGVzLiBTbywgSSdtIHdvbmRlcmluZyBpZiB3ZSBzaG91bGQgdGFnIHRoaXMgcGF0
Y2ggc29tZWhvdyBvciBpZg0KPiA+PiBzb21ldGhpbmcgZWxzZSBzaG91bGQgYmUgbWFkZSBoZXJl
IHRvIG1ha2UgdGhlIGJhY2twb3J0aW5nIGVhc2llci4NCj4gPg0KPiA+SXQncyBlYXN5IGVub3Vn
aCB0byBhc2sgZm9yIGRlcHMgdG8gYmUgYmFja3BvcnRlZC4NCj4gPg0KPiA+QlIsDQo+ID5KYW5p
Lg0KPiA+DQo+ID4NCj4gPi0tDQo+ID5KYW5pIE5pa3VsYSwgSW50ZWwNCg==
