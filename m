Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B081A35B06
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 11:02:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9122A10EC2F;
	Fri, 14 Feb 2025 10:02:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MxD/AdmR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2A5E10E29E;
 Fri, 14 Feb 2025 10:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739527338; x=1771063338;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0ONbYGziH8Y6HAI+NblOuFaPzV3KuvQJWsbtEfeox+g=;
 b=MxD/AdmR0rl6cYzeeoWY12FSWMyhwPgBh1gxYCGuiaemQwl9Z5LCWYYP
 KInXh4MSIgyOcjG/JSHzQt9fh+s7/OWmJ3G6qNyf/orPxQgu8I9aApzh3
 lJXNdoSYF1wRDHTNkwdx/PJBUwcDnrHxLKqv/vBwgqImIaonq1wXPGNCe
 jWgVj9OnSExFez46uO9V7kj0JMXsJj8rKTjK+foy4RxFCgIHA2pgF29oP
 gBNdY4Kpkg+TG02hgWdfjWbzcXbXsG7DfeeMT5vi5KeZULFw/M4qTE02J
 MukfIx8hyKArEAxwd4ky82PQdHWGgQyR3KrmCMd+Hn0wU6Xuond44a6FX w==;
X-CSE-ConnectionGUID: dGH8JH/wRBuXE3T7rfW4Ww==
X-CSE-MsgGUID: 4EC/aQwUS9ae/LFcGd3TpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57677783"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="57677783"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 02:02:17 -0800
X-CSE-ConnectionGUID: pCqG6GWiQcK+SVWxdr35Kw==
X-CSE-MsgGUID: epI1SgZ6RB+aoiOvZGYC3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="114057997"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 02:02:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Fri, 14 Feb 2025 02:02:15 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 14 Feb 2025 02:02:15 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 02:02:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MHH14rIIHbCie1JIaP+XgcKHCtPkP4tC6wIPb721yvsV8zXSrAEFkAE/HaWVP6AaP3+WtbLGvAAJGLhNyciHEatkkPHU+s26y2aP0Fyd5Yv4B1x3AoLTaptYNyjeR+DgJ9prWGT87O2Ur88UPbkYF27DvBZSulhIV5RPO3l73gTEi9kdIseQFJ8F/br19hGj+JLHfBL6dxcvaF/Tq7fvGaTBOAtHi+CLHeZ+iqPaJj56F6CF/I3qhxMiVR7K/2ohv4NnPplJRPZdwECsgSslL2lkIcnrgJIsStvy4mSiK76fbtC9oUWUuH7Xq1ecSFEqvffuo0oqbLMyA3fnvB90FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ONbYGziH8Y6HAI+NblOuFaPzV3KuvQJWsbtEfeox+g=;
 b=kk5j8g+BV1AI7KhXnA/Y6QyAMx8LqweLEdn1XuUcMY0+pDSs1QZtn0gU+K+ow+3wDWCgm4nkfKuyxz0fYRjzaZla36jCsC4W27iCViP7171GJNw99wtLRi9+3ZLSCxB5juTrN58UYNzkM6TZ5C4uGtaDETNEpguMKoXE4+IY/2+iGvpSQarqVZR1BXpYec6OnfG1B+yPaV/5ATuLxefV4TfVW+fEKwg1kMZX5QWb3ChSHucN8EWdhT+2H9fqedeVXwsyJ8a+91MyaQrDM1ZJc2opaYDH+ZWr4aUvW/wpC6td71T0mNuR8r5GjALMD6eXxeD2M6sFm8wwVaz6PXVJ2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7846.namprd11.prod.outlook.com (2603:10b6:930:79::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Fri, 14 Feb
 2025 10:02:13 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Fri, 14 Feb 2025
 10:02:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
CC: "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>
Subject: RE: [PATCH v8 06/14] drm/i915/histogram: Add support for histogram
Thread-Topic: [PATCH v8 06/14] drm/i915/histogram: Add support for histogram
Thread-Index: AQHbcZ6S6bevFVbR1E25LaTr6x88mrNGqmAw
Date: Fri, 14 Feb 2025 10:02:13 +0000
Message-ID: <SN7PR11MB67502E75DBF26E8AAF1D8398E3FE2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250128-dpst-v8-0-871b94d777f8@intel.com>
 <20250128-dpst-v8-6-871b94d777f8@intel.com>
In-Reply-To: <20250128-dpst-v8-6-871b94d777f8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7846:EE_
x-ms-office365-filtering-correlation-id: 091806b1-f0b6-42fc-4f9c-08dd4cdea7a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?T0ZxNFJNcGhTTHAzV0l2VmNoUkc2QkdpQjNLNnR4Z2JZZ0tncjlmNmV1eCtz?=
 =?utf-8?B?c0d5YVM2eXB6Vm5LZGRxTVppTHlpT3doM2c4MERNaWR6WDVBTkc0TWdPbHdk?=
 =?utf-8?B?NGJSazNVK3JLd1ludVBNSUR3KzVlYnJCTE1qWlJseEw5a1RCUExlbE9kSUFs?=
 =?utf-8?B?UHd1UnA2d1o4R0xEdUN0Mmd4SnpPTHlvMDRjOFNvY3B3ZWhjUUhQeUl0RnE1?=
 =?utf-8?B?bEVxUHNadVRYYWtrZGJQRzk0TVZFWTJOUk1UZllCb0NNRm9HSDNQb1E5c0lI?=
 =?utf-8?B?MzJ1aExvZWh3VEdmKy8zQkRTS2Z6RS9rTmk4a1hsYmVIbHVWVTcvdnlZOWRL?=
 =?utf-8?B?b3RubFVtSTlPaXJzUk05cGJIeFQ4WkEwK1J1akhRbEVqT2ZwVFlPd3pZM0Vo?=
 =?utf-8?B?MzdzVWRhWXhCOGZ6OC91aFZXcitLcTFqUzlKVzhVVjhDOThWdUw5SlYwSW5n?=
 =?utf-8?B?ZzRvcXdNRHQxV0g0VzNwRjRvd2RKM1gxaVNPcExGbmExQkRIaituazB4U0l6?=
 =?utf-8?B?QWNwbUVSK2xrOWlQNUZKSDdVT0kxdXlBSFdMT2ovdlY1bEtBU1FLaytJTzB3?=
 =?utf-8?B?eHdIZzFONGtqSE1KV01lbVk2d1E5TERCRGExY0xmczVaNG5DQnV3RHBFcDdY?=
 =?utf-8?B?RTNtZmZtWXVRUTFwUDA1V2QwV1lhcE1UK21haVNXUkJ5SGZYejB1VWk2TzAw?=
 =?utf-8?B?U2I4cjRZZTJRYkVTdFN4Q3liRFdoZ3M1dytPWm9iSkkrWHBlTnZuek1PMGZF?=
 =?utf-8?B?eXQzTklQQlpocTZkK2N4Z0FoUWFZTS96NkpZeUY5aGljaHhtYWF2eWFBbjU5?=
 =?utf-8?B?dWRTZG9qZUIxMGRCbnR1Z3NIK3RrUFUxS3MrQkVtWnd0dEFOMndodVZ2L2pT?=
 =?utf-8?B?UE5HdG5IUzR1aTdoNGsxRkNyRm1tMDg2YnlvZGtTTW5tOGNkclNPUlA5M3Fm?=
 =?utf-8?B?Z3hUT1VwdHA3TVZvQ2lUZjNkTjRVRW52Nml6K2FyMEFrOCtBbk9zdEF1YVdE?=
 =?utf-8?B?VGFOSHpQL010YkdBZUdVZm1xbGg4MXpCd1dRWDUxQTFXQVUvYkxxbUdNcitk?=
 =?utf-8?B?a2F3SGxyMnU1NW53a0xpQ1pULzdyakpMWi9JRUMzd2ViNzBLamJYRDlBbzJN?=
 =?utf-8?B?czNhc2pwNVhibmEySlBUZmxSa0JYSXFpZ1FRY2phd1lyZExheThibVZvNmNK?=
 =?utf-8?B?UWtQeVowTmpJVXYxSEVsc0RISWp6OEZmUlFya2Y1ZmlVR2l4SHJrZnV2SVR2?=
 =?utf-8?B?cjBWT2NlTmRIYTlyY2hjZVRTZGxxVElQYkNxa0tZRVVQUEdUOXJqS3QvMDhn?=
 =?utf-8?B?bTZNL01nWldranNQSHBzZjlkM1pndzNoenRBYVpIL1RCMUlxdFRoTi95VGN4?=
 =?utf-8?B?ZHpmRzdCNWlzNTNTY0x1V1dFMmx3QkVKa2poNmUrZ3MvSWtaZWNucFRYMHdv?=
 =?utf-8?B?aHcxSHNPVzEvTkI3ZE1jR2FjQW00L1k2WlQ3YkVaRGpVNGZTN0lwcDBuQ3pZ?=
 =?utf-8?B?UmgreS9qdCtZT2lKOEVjdmdpNjVVaG5rcE1abUZtbG5FWEx3c1NUNi9abWJX?=
 =?utf-8?B?UHhiWUxuakgwdVZZZ2VRbFlMeWpuRUMrU25NeDRyaHRLRmF1VjYxOHpid1hZ?=
 =?utf-8?B?OW5sOHovQUlWUWVVdlRXTFpTTmt4Y0F2akszL3JtRFoyOG1RdzBPejZFSVVZ?=
 =?utf-8?B?WDdmbXpINGV4RS9RUE1wU0NnQlc1Y1Z1QXJzUnJCcXF6N2pHazAyMmJtZ2R1?=
 =?utf-8?B?RFlYa2hwT1I1eklza0VldGhPZGlTNHVMb0NqNE94MklRbXFEVWxRZnVEcmNW?=
 =?utf-8?B?OTI5SzNGK2hDWEJQS0xtZFZEVFh5WWhBRHFLTXlnZTczVTlMaUNxT25RaXVn?=
 =?utf-8?B?Y1BBV1dVRlV4dVlUUzlkOHdnRkdHblVwTVpqK2IvbXY2R3FxaGwrTzFJVElm?=
 =?utf-8?Q?WD4s4q7xxOk/VQ4lSKgYQ8ROOtMUeWHM?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0pmNk81aHlpVW15a3FpK3NPc2ZZMDdKV3BFbnRNQWZpLzlNMDdCa2lsQXRa?=
 =?utf-8?B?T1FKRmVoVUF0NkZqR25zeEFKUjRPczJnc1JFTy9QU1J5NWY2UFF4eXVpR2kr?=
 =?utf-8?B?cmdGMVJ0RENMak5ZVHQ2Z0FFWGQ2WFcrT0UzZGxRR1REME85VTZ0WUk1bStZ?=
 =?utf-8?B?VGcxSzRSNHkxV3Bsd3V4TUJwT2hYZ0pXNGZiR2prYks5SEVoZ0FDaWFtQmFN?=
 =?utf-8?B?U0wvSENMbG5KUVBGZ3JHR0hrVXZvakh0bjJJMXZvTVlIcVNNbTNpVTQ0ZktF?=
 =?utf-8?B?NnJoelptNWIvU0xSSDJDT1hCdEJ5ZHIySnI4QWI3VkwvYnRZZzZOcUdjdzN5?=
 =?utf-8?B?VmVOTitBVklKeWVwTlpKMDZYVGhMNk05Wk9yZlhXSFlJVnZkMTBLV1FjdHdF?=
 =?utf-8?B?K2g3Qm15ekp1ZUxLN09HdVBlMm8vM01UZHF0RW1NRFQ5cWszWFdRTFFNUUVV?=
 =?utf-8?B?bERUUDNNVDN4TVVwamtZUm5VQThTUS8wdDQvc01pZ0FmRmQ0NEM5YUlnNFJk?=
 =?utf-8?B?VG9YVmY2U1cxQVUwYjJlVzc0bVhldGtrVEQ3QnlEYXlVV2RoQzk3d3VFeEFD?=
 =?utf-8?B?TEh2S1RKWEtOMVFPbDBuV296VXp1VmZRMVFoOVY1WDZMRGZVRE5NOHRWRGRT?=
 =?utf-8?B?cmRKdkcxaEtMNVdZRTdhc0dzNHFKOWFIWkZYVEFFZWdOSURGZFR1NFlSWUZs?=
 =?utf-8?B?N1hRYTZjVWRFdVJBNjd6blVZME02MyszaGdFWUdUU1JRRklqMjNOUXcyOG1N?=
 =?utf-8?B?cnRZZU5iUE0wWFRPaDlROUt0clVMNGtDeGgySnBTWWMranBuU3J1QmZmSXpS?=
 =?utf-8?B?bkhSeUlva1ZuZ3VabTU2RzdoNjBCZnowK0tzZ25KZnRBL3FWcnY5bXowRnhS?=
 =?utf-8?B?emRkUmtHVVc5Nnc0N205d2Q4UzhsOXd2eUhWU0VlY29Pb3B5SGFleTJ0Umdm?=
 =?utf-8?B?YjJkOGlQTkhGWlNvVDJ6M0JlbjhNWXJXSyt6eE9IV1VNeThiOWlwTTljRDlq?=
 =?utf-8?B?VTJsdjRDUWQ3T0xKeFR5TlFCdDZLYlNRbWNycDE0eGEzUWdISU5sT3F5Smp2?=
 =?utf-8?B?TEoyVXhYTHNZT1lObnFjOWJ3cFl4bUZKSzlqc0FweEt6Y3Z5LzRiemY1TUZK?=
 =?utf-8?B?dzU4L2hpcWoxZGk4ZlNnQ2ZTNzRjS1YwU0tiWUpQbkt0cnJYVFZOSFEzU1Za?=
 =?utf-8?B?YWpmWFF1MmhLQUZ4Y0JudmRuZGFSQm1GMXNBY1N3YU9NYnFHcGx2MXNyS1ha?=
 =?utf-8?B?ZEZ4N1lyT0d0SDdvUUlLNGtnOFhiZzZoYzk0aE01UHRyQyttNzh2YzRsSWdO?=
 =?utf-8?B?MXdNYVZ6QThYWTVDaWltUGVWUnZ4WHR3WEd2TEtVNTAvYmsrK1FEZ1pWUG56?=
 =?utf-8?B?aEViZzYxTUd5Z2xUU295ZHBIc2VhOWhjdnROWkdlQlJZb0ZieGxsTFN5cm1F?=
 =?utf-8?B?cWZnZ2lqRFF6a3IvUnlGcTRQT1NZSFpnOUIzMEd3OGVKYTBJdjVPcTJvallK?=
 =?utf-8?B?TmdOb011OUtTZTRidjB3R3JDNUl1ZTdwWG9EM2Y5N25TM2g5MHRkMmtmUk95?=
 =?utf-8?B?c1pqbjJzWmM2eXMybDhoY2orc3d4L3ZvZ01RUU5FcXhCMVB5LzVIL1BMaGRx?=
 =?utf-8?B?WjRPTnhPbHk1VGRleFFiR2FGaFZQSWN5UHNBWmNMUGdxQWJvbno2cmZZTVU0?=
 =?utf-8?B?bzhoNlBDQk53U3RCeXM5NkJHMUNFVXVsWHZIK05qY29Dd2ZSYVBVdERvdmxz?=
 =?utf-8?B?Q0JJUG5abm1JUW9tWFF2SHJTSkJNQzlSUWJwc0VvUVZVUGVMNE1pVlV4OTRW?=
 =?utf-8?B?MElPaDNJSWxCcUk1Z1Y3Nm90K1g3TFRoTWRxSUp0RGdiaUN0S296bGRscTNp?=
 =?utf-8?B?eGZKMDhxL0lOd2tUQlBwbUE5QUhCSXptb1dzSUI5cGZyNEFsS1U2Tys3T1hP?=
 =?utf-8?B?RzJGejRqMEdiTzZxaEtFZ0JPT3orRXNZZXFyNGs3YXFHZEVjNmFzaUpnbmNj?=
 =?utf-8?B?MzE0akdYWm4rQXA1QW5pVHZYc1lRT0R4NXFJT1prd0FId0JzNGx1QVNVZ0Zo?=
 =?utf-8?B?V1J2MEFWS1ptVi9zTFNmall6NzVwOTZjb2poTUNuN25Xc2JrRlpJeEd0YnZn?=
 =?utf-8?Q?3CEgcMOLK4tO2yjV7S4emLv/k?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 091806b1-f0b6-42fc-4f9c-08dd4cdea7a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2025 10:02:13.5278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wtIN9/6ERYyhR7cj0wu2ty31vB6Jg9EfycJgFZzSmIt0sJnxP/Jd88Z76VoN6lpzXnXriCyum411UpUx31Ffgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7846
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTXVydGh5LCBBcnVuIFIg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBKYW51YXJ5IDI4LCAy
MDI1IDk6MjEgUE0NCj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgZHJpLQ0KPiBkZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gQ2M6IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT47IGRt
aXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZzsNCj4gTXVydGh5LCBBcnVuIFIgPGFydW4uci5tdXJ0
aHlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjggMDYvMTRdIGRybS9pOTE1L2hpc3Rv
Z3JhbTogQWRkIHN1cHBvcnQgZm9yIGhpc3RvZ3JhbQ0KPiANCj4gU3RhdGlzdGljcyBpcyBnZW5l
cmF0ZWQgZnJvbSB0aGUgaW1hZ2UgZnJhbWUgdGhhdCBpcyBjb21pbmcgdG8gZGlzcGxheSBhbmQg
YW4NCj4gZXZlbnQgaXMgc2VudCB0byB1c2VyIGFmdGVyIHJlYWRpbmcgdGhpcyBoaXN0b2dyYW0g
ZGF0YS4NCj4gDQo+IHYyOiBmb3J3YXJkIGRlY2xhcmF0aW9uIGluIGhlYWRlciBmaWxlIGFsb25n
IHdpdGggZXJyb3IgaGFuZGxpbmcgKEphbmkpDQo+IHYzOiBSZXBsYWNlZCBpOTE1IHdpdGggaW50
ZWxfZGlzcGxheSAoU3VyYWopDQo+IHY0OiBSZW1vdmVkIGRpdGhlcmluZyBlbmFibGUvZGlzYWJs
ZSAoVmFuZGl0YSkNCj4gICAgIE5ldyBwYXRjaCBmb3IgaGlzdG9ncmFtIHJlZ2lzdGVyIGRlZmlu
aXRpb25zIChTdXJhaikNCj4gdjU6IElFVCBMVVQgcGdtIGZvbGxvdyB0aGUgc2VxIGluIHNwZWMg
YW5kIHJlbW92ZWQgY2hhbmdlIHRvIFRDIGF0IGVuZA0KPiAgICAgKFN1cmFqKQ0KPiB2ODogUmV0
YWluZWQgb25seSB0aGUgSGlzdG9ncmFtIHBhcnQgYW5kIG1vdmUgSUVUIExVVCB0byBhIGRpZmZl
cmVudA0KPiAgICAgcGF0Y2guDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBcnVuIFIgTXVydGh5IDxh
cnVuLnIubXVydGh5QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8ICAgMiArDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hpc3RvZ3JhbS5jICAgICB8IDE1Nw0KPiArKysrKysr
KysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGlz
dG9ncmFtLmggICAgIHwgIDQ4ICsrKysrKysNCj4gIDQgZmlsZXMgY2hhbmdlZCwgMjA4IGluc2Vy
dGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmls
ZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlDQo+IGluZGV4DQo+IDRjYWE4ZTMwYmM5
ODM4N2Q0NTIxMmZiYzdjZWE4YjM4Njg3YmQwZDUuLmY5OTNiMTkxNzRiYTc5YzBiY2MzNDk5NDYN
Cj4gMTk5MzdiZTdkMjc5N2VkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZQ0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQ0KPiBAQCAtMjcw
LDYgKzI3MCw3IEBAIGk5MTUteSArPSBcDQo+ICAJZGlzcGxheS9pbnRlbF9oZGNwLm8gXA0KPiAg
CWRpc3BsYXkvaW50ZWxfaGRjcF9nc2MubyBcDQo+ICAJZGlzcGxheS9pbnRlbF9oZGNwX2dzY19t
ZXNzYWdlLm8gXA0KPiArCWRpc3BsYXkvaW50ZWxfaGlzdG9ncmFtLm8gXA0KPiAgCWRpc3BsYXkv
aW50ZWxfaG90cGx1Zy5vIFwNCj4gIAlkaXNwbGF5L2ludGVsX2hvdHBsdWdfaXJxLm8gXA0KPiAg
CWRpc3BsYXkvaW50ZWxfaHRpLm8gXA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleA0KPiBjYjUxYjc5MzZmOTMz
OGNhYWYxNGIxYzZmN2JiY2M0MzI3ZGE0ZWYxLi43NjFmZWZlZDkzNzY0MzljMGVlNWQzNDZlODEN
Cj4gMTBhMjE5YWQwYTU4NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE0MzQsNiArMTQzNCw4IEBAIHN0
cnVjdCBpbnRlbF9jcnRjIHsNCj4gIAkvKiBmb3IgbG9hZGluZyBzaW5nbGUgYnVmZmVyZWQgcmVn
aXN0ZXJzIGR1cmluZyB2YmxhbmsgKi8NCj4gIAlzdHJ1Y3QgcG1fcW9zX3JlcXVlc3QgdmJsYW5r
X3BtX3FvczsNCj4gDQo+ICsJc3RydWN0IGludGVsX2hpc3RvZ3JhbSAqaGlzdG9ncmFtOw0KPiAr
DQo+ICAjaWZkZWYgQ09ORklHX0RFQlVHX0ZTDQo+ICAJc3RydWN0IGludGVsX3BpcGVfY3JjIHBp
cGVfY3JjOw0KPiAgI2VuZGlmDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hpc3RvZ3JhbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9oaXN0b2dyYW0uYw0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleA0KPiAw
MDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwLi4yNmVhZThmNDBkMGJmNjQy
NTQ2ZDU4MzUNCj4gNDY3ODJlMjJkNWNlZmE5Yw0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGlzdG9ncmFtLmMNCj4gQEAgLTAsMCAr
MSwxNTcgQEANCj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQNCj4gKy8qDQo+ICsg
KiBDb3B5cmlnaHQgwqkgMjAyNSBJbnRlbCBDb3Jwb3JhdGlvbg0KPiArICovDQo+ICsNCj4gKyNp
bmNsdWRlIDxkcm0vZHJtX2RldmljZS5oPg0KPiArI2luY2x1ZGUgPGRybS9kcm1fZmlsZS5oPg0K
PiArI2luY2x1ZGUgPGRybS9kcm1fdmJsYW5rLmg+DQo+ICsNCj4gKyNpbmNsdWRlICJpOTE1X3Jl
Zy5oIg0KPiArI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfZGUuaCIN
Cj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5LmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxh
eV90eXBlcy5oIg0KPiArI2luY2x1ZGUgImludGVsX2hpc3RvZ3JhbS5oIg0KPiArI2luY2x1ZGUg
ImludGVsX2hpc3RvZ3JhbV9yZWdzLmgiDQo+ICsNCj4gKy8qIDMuMCUgb2YgdGhlIHBpcGUncyBj
dXJyZW50IHBpeGVsIGNvdW50LCBodyBkb2VzIHg0ICovICNkZWZpbmUNCj4gK0hJU1RPR1JBTV9H
VUFSREJBTkRfVEhSRVNIT0xEX0RFRkFVTFQgMzAwDQo+ICsvKiBQcmVjaXNpb24gZmFjdG9yIGZv
ciB0aHJlc2hvbGQgZ3VhcmRiYW5kICovICNkZWZpbmUNCj4gK0hJU1RPR1JBTV9HVUFSREJBTkRf
UFJFQ0lTSU9OX0ZBQ1RPUiAxMDAwMCAjZGVmaW5lDQo+ICtISVNUT0dSQU1fREVGQVVMVF9HVUFS
REJBTkRfREVMQVkgMHgwNA0KPiArDQo+ICtpbnQgaW50ZWxfaGlzdG9ncmFtX2F0b21pY19jaGVj
ayhzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0Yykgew0KPiArCXN0cnVjdCBpbnRlbF9oaXN0
b2dyYW0gKmhpc3RvZ3JhbSA9IGludGVsX2NydGMtPmhpc3RvZ3JhbTsNCj4gKw0KPiArCS8qIFRP
RE86IFJlc3RyaWN0aW9ucyBmb3IgZW5hYmxpbmcgaGlzdG9ncmFtICovDQo+ICsJaGlzdG9ncmFt
LT5jYW5fZW5hYmxlID0gdHJ1ZTsNCg0KV2UgZG9u4oCZdCBjaGFuZ2UgYW55dGhpbmcgaW4gdGhl
IGludGVsX2NydGMgc3RydWN0dXJlIGR1cmluZyBjb21wdXRlIG9yIGF0b21pYyBjaGVjayBwaGFz
ZQ0KV2UgbmVlZCB0byBjb25zaWRlciBtb3ZpbmcgdGhpcyB0byB0aGUgY3J0Y19zdGF0ZS4NCg0K
PiArDQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBpbnQgaW50ZWxfaGlzdG9n
cmFtX2VuYWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YywgdTgNCj4gK21vZGUpIHsN
Cj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50
ZWxfY3J0Yyk7DQo+ICsJc3RydWN0IGludGVsX2hpc3RvZ3JhbSAqaGlzdG9ncmFtID0gaW50ZWxf
Y3J0Yy0+aGlzdG9ncmFtOw0KPiArCWludCBwaXBlID0gaW50ZWxfY3J0Yy0+cGlwZTsNCj4gKwl1
NjQgcmVzOw0KPiArCXUzMiBnYmFuZHRocmVzaG9sZDsNCj4gKw0KPiArCWlmICghaGlzdG9ncmFt
IHx8ICFoaXN0b2dyYW0tPmNhbl9lbmFibGUpDQo+ICsJCXJldHVybiAtRUlOVkFMOw0KPiArDQo+
ICsJaWYgKGhpc3RvZ3JhbS0+ZW5hYmxlKQ0KPiArCQlyZXR1cm4gMDsNCj4gKw0KPiArCSAvKiBl
bmFibGUgaGlzdG9ncmFtLCBjbGVhciBEUFNUX0NUTCBiaW4gcmVnIGZ1bmMgc2VsZWN0IHRvIFRD
ICovDQo+ICsJaW50ZWxfZGVfcm13KGRpc3BsYXksIERQU1RfQ1RMKHBpcGUpLA0KPiArCQkgICAg
IERQU1RfQ1RMX0JJTl9SRUdfRlVOQ19TRUwgfCBEUFNUX0NUTF9JRV9ISVNUX0VOIHwNCj4gKwkJ
ICAgICBEUFNUX0NUTF9ISVNUX01PREUgfA0KPiBEUFNUX0NUTF9JRV9UQUJMRV9WQUxVRV9GT1JN
QVQgfA0KPiArCQkgICAgIERQU1RfQ1RMX0VOSEFOQ0VNRU5UX01PREVfTUFTSyB8DQo+IERQU1Rf
Q1RMX0lFX01PRElfVEFCTEVfRU4sDQo+ICsJCSAgICAgKChtb2RlID09IERSTV9NT0RFX0hJU1RP
R1JBTV9IU1ZfTUFYX1JHQikgPw0KPiArCQkgICAgICBEUFNUX0NUTF9CSU5fUkVHX0ZVTkNfVEMg
OiAwKSB8IERQU1RfQ1RMX0lFX0hJU1RfRU4NCj4gfA0KPiArCQkgICAgIERQU1RfQ1RMX0hJU1Rf
TU9ERV9IU1YgfA0KPiArCQkgICAgIERQU1RfQ1RMX0lFX1RBQkxFX1ZBTFVFX0ZPUk1BVF8xSU5U
XzlGUkFDIHwNCj4gKwkJICAgICBEUFNUX0NUTF9FTl9NVUxUSVBMSUNBVElWRSB8DQo+IERQU1Rf
Q1RMX0lFX01PRElfVEFCTEVfRU4pOw0KPiArDQo+ICsJLyogUmUtVmlzaXQ6IGNoZWNrIGlmIHdh
aXQgZm9yIG9uZSB2YmxhbmsgaXMgcmVxdWlyZWQgKi8NCj4gKwlkcm1fY3J0Y193YWl0X29uZV92
YmxhbmsoJmludGVsX2NydGMtPmJhc2UpOw0KPiArDQo+ICsJLyogVE9ETzogUHJvZ3JhbSBHdWFy
ZEJhbmQgVGhyZXNob2xkIG5lZWRzIHRvIGJlIG1vdmVkIHRvDQo+IG1vZGVzZXQgcGF0aCAqLw0K
PiArCXJlcyA9IChpbnRlbF9jcnRjLT5jb25maWctPmh3LmFkanVzdGVkX21vZGUudnRvdGFsICoN
Cj4gKwkgICAgICAgaW50ZWxfY3J0Yy0+Y29uZmlnLT5ody5hZGp1c3RlZF9tb2RlLmh0b3RhbCk7
DQo+ICsNCj4gKwlnYmFuZHRocmVzaG9sZCA9IChyZXMgKg0KPiAJSElTVE9HUkFNX0dVQVJEQkFO
RF9USFJFU0hPTERfREVGQVVMVCkgLw0KPiArCQkJICBISVNUT0dSQU1fR1VBUkRCQU5EX1BSRUNJ
U0lPTl9GQUNUT1I7DQo+ICsNCj4gKwkvKiBFbmFibGUgaGlzdG9ncmFtIGludGVycnVwdCBtb2Rl
ICovDQo+ICsJaW50ZWxfZGVfcm13KGRpc3BsYXksIERQU1RfR1VBUkQocGlwZSksDQo+ICsJCSAg
ICAgRFBTVF9HVUFSRF9USFJFU0hPTERfR0JfTUFTSyB8DQo+ICsJCSAgICAgRFBTVF9HVUFSRF9J
TlRFUlJVUFRfREVMQVlfTUFTSyB8DQo+IERQU1RfR1VBUkRfSElTVF9JTlRfRU4sDQo+ICsJCSAg
ICAgRFBTVF9HVUFSRF9USFJFU0hPTERfR0IoZ2JhbmR0aHJlc2hvbGQpIHwNCj4gKw0KPiBEUFNU
X0dVQVJEX0lOVEVSUlVQVF9ERUxBWShISVNUT0dSQU1fREVGQVVMVF9HVUFSREJBTkRfREVMQVkp
DQo+IHwNCj4gKwkJICAgICBEUFNUX0dVQVJEX0hJU1RfSU5UX0VOKTsNCj4gKw0KPiArCS8qIENs
ZWFyIHBlbmRpbmcgaW50ZXJydXB0cyBoYXMgdG8gYmUgZG9uZSBvbiBzZXBhcmF0ZSB3cml0ZSAq
Lw0KPiArCWludGVsX2RlX3JtdyhkaXNwbGF5LCBEUFNUX0dVQVJEKHBpcGUpLA0KPiArCQkgICAg
IERQU1RfR1VBUkRfSElTVF9FVkVOVF9TVEFUVVMsIDEpOw0KPiArDQo+ICsJaGlzdG9ncmFtLT5l
bmFibGUgPSB0cnVlOw0KPiArDQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB2
b2lkIGludGVsX2hpc3RvZ3JhbV9kaXNhYmxlKHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRj
KSB7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5
KGludGVsX2NydGMpOw0KPiArCXN0cnVjdCBpbnRlbF9oaXN0b2dyYW0gKmhpc3RvZ3JhbSA9IGlu
dGVsX2NydGMtPmhpc3RvZ3JhbTsNCj4gKwlpbnQgcGlwZSA9IGludGVsX2NydGMtPnBpcGU7DQo+
ICsNCj4gKwlpZiAoIWhpc3RvZ3JhbSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJLyogSWYgYWxy
ZWFkeSBkaXNhYmxlZCByZXR1cm4gKi8NCj4gKwlpZiAoaGlzdG9ncmFtLT5lbmFibGUpDQo+ICsJ
CXJldHVybjsNCj4gKw0KPiArCS8qIENsZWFyIHBlbmRpbmcgaW50ZXJydXB0cyBhbmQgZGlzYWJs
ZSBpbnRlcnJ1cHRzICovDQo+ICsJaW50ZWxfZGVfcm13KGRpc3BsYXksIERQU1RfR1VBUkQocGlw
ZSksDQo+ICsJCSAgICAgRFBTVF9HVUFSRF9ISVNUX0lOVF9FTiB8DQo+IERQU1RfR1VBUkRfSElT
VF9FVkVOVF9TVEFUVVMsIDApOw0KPiArDQo+ICsJLyogZGlzYWJsZSBEUFNUX0NUTCBIaXN0b2dy
YW0gbW9kZSAqLw0KPiArCWludGVsX2RlX3JtdyhkaXNwbGF5LCBEUFNUX0NUTChwaXBlKSwNCj4g
KwkJICAgICBEUFNUX0NUTF9JRV9ISVNUX0VOLCAwKTsNCj4gKw0KPiArCWhpc3RvZ3JhbS0+ZW5h
YmxlID0gZmFsc2U7DQo+ICt9DQo+ICsNCj4gK2ludCBpbnRlbF9oaXN0b2dyYW1fdXBkYXRlKHN0
cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRjLA0KPiArCQkJICAgc3RydWN0IGRybV9oaXN0b2dy
YW1fY29uZmlnICpjb25maWcpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfY3J0Yyk7DQo+ICsNCj4gKwlpZiAoY29uZmlnLT5lbmFi
bGUpIHsNCj4gKwkJaWYgKGNvbmZpZy0+aGlzdF9tb2RlICE9DQo+IERSTV9NT0RFX0hJU1RPR1JB
TV9IU1ZfTUFYX1JHQikgew0KPiArCQkJZHJtX2VycihkaXNwbGF5LT5kcm0sDQo+ICsJCQkJIk9u
bHkgbWF4KFJHQikgbW9kZSBpcyBzdXBwb3J0ZWQgZm9yDQo+IGhpc3RvZ3JhbVxuIik7DQo+ICsJ
CQlyZXR1cm4gLUVJTlZBTDsNCj4gKwkJfQ0KPiArCQlyZXR1cm4gaW50ZWxfaGlzdG9ncmFtX2Vu
YWJsZShpbnRlbF9jcnRjLCBjb25maWctPmhpc3RfbW9kZSk7DQo+ICsJfQ0KPiArDQo+ICsJaW50
ZWxfaGlzdG9ncmFtX2Rpc2FibGUoaW50ZWxfY3J0Yyk7DQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+
ICsNCj4gK3ZvaWQgaW50ZWxfaGlzdG9ncmFtX2ZpbmlzaChzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50
ZWxfY3J0Yykgew0KPiArCXN0cnVjdCBpbnRlbF9oaXN0b2dyYW0gKmhpc3RvZ3JhbSA9IGludGVs
X2NydGMtPmhpc3RvZ3JhbTsNCj4gKw0KPiArCWtmcmVlKGhpc3RvZ3JhbSk7DQo+ICt9DQo+ICsN
Cj4gK2ludCBpbnRlbF9oaXN0b2dyYW1faW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yykgew0K
PiArCXN0cnVjdCBpbnRlbF9oaXN0b2dyYW0gKmhpc3RvZ3JhbTsNCj4gKwlzdHJ1Y3QgZHJtX2hp
c3RvZ3JhbV9jYXBzICpoaXN0b2dyYW1fY2FwczsNCj4gKw0KPiArCS8qIEFsbG9jYXRlIGhpc3Rv
Z3JhbSBpbnRlcm5hbCBzdHJ1Y3QgKi8NCj4gKwloaXN0b2dyYW0gPSBremFsbG9jKHNpemVvZigq
aGlzdG9ncmFtKSwgR0ZQX0tFUk5FTCk7DQo+ICsJaWYgKCFoaXN0b2dyYW0pDQo+ICsJCXJldHVy
biAtRU5PTUVNOw0KDQpOZXcgbGluZSBoZXJlDQoNCj4gKwloaXN0b2dyYW1fY2FwcyA9IGt6YWxs
b2Moc2l6ZW9mKCpoaXN0b2dyYW1fY2FwcyksIEdGUF9LRVJORUwpOw0KPiArCWlmICghaGlzdG9n
cmFtX2NhcHMpDQo+ICsJCXJldHVybiAtRU5PTUVNOw0KPiArDQo+ICsJaGlzdG9ncmFtX2NhcHMt
Pmhpc3RvZ3JhbV9tb2RlID0NCj4gRFJNX01PREVfSElTVE9HUkFNX0hTVl9NQVhfUkdCOw0KPiAr
CWhpc3RvZ3JhbV9jYXBzLT5iaW5zX2NvdW50ID0gSElTVE9HUkFNX0JJTl9DT1VOVDsNCj4gKw0K
DQpSZW1vdmUgZXh0cmEgbGluZQ0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KPiArCWNydGMt
Pmhpc3RvZ3JhbSA9IGhpc3RvZ3JhbTsNCj4gKwloaXN0b2dyYW0tPmNydGMgPSBjcnRjOw0KPiAr
CWhpc3RvZ3JhbS0+Y2FuX2VuYWJsZSA9IGZhbHNlOw0KPiArCWhpc3RvZ3JhbS0+Y2FwcyA9IGhp
c3RvZ3JhbV9jYXBzOw0KPiArDQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hpc3RvZ3JhbS5oDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oaXN0b2dyYW0uaA0KPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NA0KPiBpbmRleA0KPiAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwLi41ZWExOWVmMmQzZWNhZGYxYWMxNTlhNzgNCj4gNGY1MTI3OGZkZGU1OTNkZQ0KPiAtLS0g
L2Rldi9udWxsDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGlz
dG9ncmFtLmgNCj4gQEAgLTAsMCArMSw0OCBAQA0KPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IE1JVA0KPiArLyoNCj4gKyAqIENvcHlyaWdodCDCqSAyMDI1IEludGVsIENvcnBvcmF0aW9u
DQo+ICsgKi8NCj4gKw0KPiArI2lmbmRlZiBfX0lOVEVMX0hJU1RPR1JBTV9IX18NCj4gKyNkZWZp
bmUgX19JTlRFTF9ISVNUT0dSQU1fSF9fDQo+ICsNCj4gKyNpbmNsdWRlIDxsaW51eC90eXBlcy5o
Pg0KPiArI2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1ZS5oPg0KPiArDQo+ICtzdHJ1Y3QgZGVsYXll
ZF93b3JrOw0KPiArc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iOw0KPiArc3RydWN0IGRybV9oaXN0
b2dyYW1fY29uZmlnOw0KPiArc3RydWN0IGRybV9oaXN0b2dyYW1fY2FwczsNCj4gK3N0cnVjdCBp
bnRlbF9jcnRjOw0KPiArDQo+ICsjZGVmaW5lIEhJU1RPR1JBTV9CSU5fQ09VTlQgICAgICAgICAg
ICAgICAgICAgIDMyDQo+ICsNCj4gK3N0cnVjdCBpbnRlbF9oaXN0b2dyYW0gew0KPiArCXN0cnVj
dCBkcm1faGlzdG9ncmFtX2NhcHMgKmNhcHM7DQo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGM7
DQo+ICsJc3RydWN0IGRlbGF5ZWRfd29yayB3b3JrOw0KPiArCWJvb2wgZW5hYmxlOw0KPiArCWJv
b2wgY2FuX2VuYWJsZTsNCj4gKwl1MzIgYmluX2RhdGFbSElTVE9HUkFNX0JJTl9DT1VOVF07DQo+
ICt9Ow0KPiArDQo+ICtlbnVtIGludGVsX2dsb2JhbF9oaXN0X3N0YXR1cyB7DQo+ICsJSU5URUxf
SElTVE9HUkFNX0VOQUJMRSwNCj4gKwlJTlRFTF9ISVNUT0dSQU1fRElTQUJMRSwNCj4gK307DQo+
ICsNCj4gK2VudW0gaW50ZWxfZ2xvYmFsX2hpc3RvZ3JhbSB7DQo+ICsJSU5URUxfSElTVE9HUkFN
LA0KPiArfTsNCj4gKw0KPiArZW51bSBpbnRlbF9nbG9iYWxfaGlzdF9sdXQgew0KPiArCUlOVEVM
X0hJU1RPR1JBTV9QSVhFTF9GQUNUT1IsDQo+ICt9Ow0KPiArDQo+ICtpbnQgaW50ZWxfaGlzdG9n
cmFtX2F0b21pY19jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0Yyk7IGludA0KPiAr
aW50ZWxfaGlzdG9ncmFtX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YywNCj4g
KwkJCSAgIHN0cnVjdCBkcm1faGlzdG9ncmFtX2NvbmZpZyAqY29uZmlnKTsgaW50DQo+ICtpbnRl
bF9oaXN0b2dyYW1faW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0Yyk7IHZvaWQNCj4g
K2ludGVsX2hpc3RvZ3JhbV9maW5pc2goc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMpOw0K
PiArDQo+ICsjZW5kaWYgLyogX19JTlRFTF9ISVNUT0dSQU1fSF9fICovDQo+IA0KPiAtLQ0KPiAy
LjI1LjENCg0K
