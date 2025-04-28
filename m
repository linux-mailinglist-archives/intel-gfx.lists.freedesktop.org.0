Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF591A9EE5E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 12:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3161C10E3F7;
	Mon, 28 Apr 2025 10:51:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LEVkIvYg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6338410E3F0;
 Mon, 28 Apr 2025 10:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745837470; x=1777373470;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Cfu6j84e1sNAAx8uw4ZcI5HMqyRlPiUyMjo9DhmKMlE=;
 b=LEVkIvYgGxa4xMHAO8a3gqJOKQB5Pj902u6AM8TQXgDWVBBWFS8fWuwK
 os0+n6lOTqDAAHc3BqAi2VihrV7BvPaDAaYQSL6ZkSLzvYCFdd0NZsHkO
 SvwF6rpOjo2F57zDllw2cYyZqm5q1QOCHCKHrt/0rWt1fiJuJHbmnEGd3
 pVv9RsI/X+SOqqu4xz0DDoUlN8qoZvwyA4FKqO7bcgyFcx88hT0yVxZum
 nIWZJzGdp80H4/DvgGMsurjnNvvr4v2dgnqLiGaP9w7kjUXypgImsbeUV
 0IIg1Z8edtIOo0qywvVWiDcTAxiwOi0QLd0xFqiuEbmynIBMTnL7gAl7N w==;
X-CSE-ConnectionGUID: 1/fi7ghCQHKHzODLlPCTEQ==
X-CSE-MsgGUID: bLtNjUtEQa2ZP/RcpS1X5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="58408708"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="58408708"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 03:51:09 -0700
X-CSE-ConnectionGUID: Dz3HcmzJQtaeMHgZp+gglg==
X-CSE-MsgGUID: uKnW4HQDQgWCNTjTnLmw5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="133412370"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 03:51:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 03:51:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 03:51:08 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 03:51:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S6Y6JtFt6eYhZWEhxI6K60O3Yfu190DkoycaEgtNqzp6PIIarAEY7l9kMQOgFB2OO5oTGf4LW3f029kplsKv0Iog7YQ0EMfaXv69YvKjmt19iNqnCPYTN9wej5nMtbAMqJ1YTWZr+1gPJdKn07O0kMaouB69I+7FF+7euOi4irBwD/kvYP3zyvJtJH7NmLxkQn5ADe8Kz3u6zi9IkQDqEgat10GIhtfESAp9HeKA4UBX4QwsB14BrPivCBv43+JUJGs688UfZdgfuO915DJ4DUv/cof/EuVZDItf0FnxdfkrZ3AFB9TpJEqbP7O77PLS0wwKgo8EBX/sv6JQ5bv4tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cfu6j84e1sNAAx8uw4ZcI5HMqyRlPiUyMjo9DhmKMlE=;
 b=SwADFAzfi0on8eNhMTGCee3pxFldwxkRj8PT/kjQuAoCl5ZWTL8Aq9tAeoRSItxQpkbikpDLqflb6fxtM8MM44JMT5ZfVYLNT4XYJtCSULeEfJ6IXbQB3z35UtN5AAuHDA4kjWcYXi5GNiRSL3m3+gnOxpcxnGKh83Mwla3mzGr5qS/eeR7VIH7MfA5VZAb7/pfqUDEln0yvqdpqCngyJXccHRW0EPEooAB+Hr1KF5MgRDE+EP4J79Z9/SWGZvbysNYIyztn81T3hSWOx9p9Hn87pTmxLFUQwUTjaqmMkSK3z0HGkamAGF6BJ4SRr4yP3vMjN+rhxGyvVRDCLlTzMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4990.namprd11.prod.outlook.com (2603:10b6:a03:2d8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.31; Mon, 28 Apr
 2025 10:50:52 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 10:50:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/alpm: Introduce has_alpm to simplify alpm check
 in enable/disable
Thread-Topic: [PATCH] drm/i915/alpm: Introduce has_alpm to simplify alpm check
 in enable/disable
Thread-Index: AQHbuCddQSlhJisSCEWd0iVODGea7bO45oAA
Date: Mon, 28 Apr 2025 10:50:51 +0000
Message-ID: <4a1dca8fc8fa435a445fb6c6d90858fbb6c269a4.camel@intel.com>
References: <20250428095838.3154962-1-animesh.manna@intel.com>
In-Reply-To: <20250428095838.3154962-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4990:EE_
x-ms-office365-filtering-correlation-id: ea61d3fa-660c-4f24-7236-08dd86428b34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cVRabThzNExnWTFHMlNkWWJrTG45aVRlenp6QVYyaE9mWm1EdWdjSis3WTRU?=
 =?utf-8?B?eElXY0Y1YlpmcFAvSVBsL0VwN3p2OW51ZUJwcG5iamVLMnJ0bmlqRWZjUC90?=
 =?utf-8?B?TFZBdHJMczhObk5aYzFPdkZCZlcwWWszYjdsckxuT2tHb1dTVnpSTUVyTEda?=
 =?utf-8?B?WDdZclRXOGFGdWU1ZDdZRHdLTDFiZmxwcEhpcEtqNVB0Y2luNmk3UmxsM1Ju?=
 =?utf-8?B?S1QvM0Nxd0dSd0xTSDFwWXBLK0ZxU1pxR2N5TExibER4L0NITXo2TWphRUV5?=
 =?utf-8?B?UGhFSTMycjlHMkdSbnU4ektYd1F1TUZWQzZuYURzb1A1Ym93eGhkaEVXbnN6?=
 =?utf-8?B?RXJ0WXVZalhHSVhUQmxZeEt4LysyLzRISXlQUkFEV1Vta2dKdmxDYzhBY05p?=
 =?utf-8?B?UW9ZcjJzSjlDVkFRUDJFdE9SekEzV2tZVUdDUnh1elRoSG90Vm5uRUFDZ0xR?=
 =?utf-8?B?UVdmY3ZYdWliSUdta0lxSGlUZDNlZDYvelNYdHdBaXBpdi9xa3ZOM0p2cCt4?=
 =?utf-8?B?dU1oOFhyTk9mVjQwUFM4UmdTM3BxRnhFaVB1VUJEdDhPa3lhdURxY0pWdmFW?=
 =?utf-8?B?T2xwRHZDa1VMSG41RXlSdTlIUFhpTVVmWEN0dkdrSHphb2VHQUs0ejlNUUU4?=
 =?utf-8?B?Y2VWTkpKbFdCOWFtdytoSUVraGVFY2ZHVmdRdEFjanY2OUNnQTZ6MGpidlk5?=
 =?utf-8?B?T25GOVZFRE5rWk9JOFVqTHlsNUNNQ05QdW5pbm0vMERsM2tmS2ZiUWVpYnJq?=
 =?utf-8?B?dWlSUDdwb1JVaFNUWFNPQnZWa1Rzdk0yelRhNUV1T2d5ekpmK2xjOXpXZnRU?=
 =?utf-8?B?ZFdJR1Y3T2RmbE1xUFI2Ty82Nm9qQnQ2c3g3K21CTXMyQ09vaVVGU0dKQ2NR?=
 =?utf-8?B?dnMyUDNlWEg3MnVuek0zVTlsMHp5SnYrcjFpb29OSmFJWFZqUEVUUlpKZzNk?=
 =?utf-8?B?Z3NnLzdubzJJdk9jKzJBSUp6bEgwU3dxS3crVEhpdnFReU1DckFhVTlOVVZn?=
 =?utf-8?B?OGVYMXhsVXFtQXFjREZKMHY5TmNtcHcvOHczYnFvYlFkUWhkdldqWjBJaC8v?=
 =?utf-8?B?dm1LWkF4SGZ6NGt3bnhIYTlSd1hYTmF6UW1IRGhGNlJ6T1BSUTk5dEpJaVNX?=
 =?utf-8?B?NUZ0MFVQWXdacGQ0dFh2Y3MwT2JNZDl5WTFiZGJTeWpCKzNVWTIvcEs0ZTZF?=
 =?utf-8?B?a21oRkdhbGRaZlhjL3BRdDZwalJScEpHUHBwMTRCNS96c0dqbDNkWHlBeUE1?=
 =?utf-8?B?bkRheXQvd1F1K0gvM0c1Sy9HSGw0M2haeFg3cjRGNG1vTEJUV3ljd0o2SzJL?=
 =?utf-8?B?VUtTRm9pUUhrMVk0dzV2NlFSbWtZRFV3NWtWL29XRlJ0bk1Xem81ZjRtV2Z5?=
 =?utf-8?B?VGs2S0xTMytWa0lISksyajE0L3cvc0o1bjhYSWFFdUo0elBISENTd1NLSGVV?=
 =?utf-8?B?aHJzTWpSd2ExTkhrb1dCb3N2U296Z25OcEorc1JWOWhVUTZMN05iUFJJM2I0?=
 =?utf-8?B?MG1zazBOa1g5R1JsNDB0OGRLTVJzWVBrVGtqQ2NvY3EyN2l0eG5rZUsyc0FU?=
 =?utf-8?B?MTR0RnZ1a1dVOVhrTUo5NFF2bWpxbWxsSWZBSUorTHQxRDRSQ1VJeTlEWUZr?=
 =?utf-8?B?Q0RnNEdGM1BRNnd6aW1jTmNza2tOOHRMU1JnN2o0K2EvM0hJZXdLVzVjQmUy?=
 =?utf-8?B?QXNKcDhVWlY0SFNYTEdiMXMwWnRRL09YQ0YyZ0lOOWVNYlJLanlhYTlHTjRu?=
 =?utf-8?B?ZGJ2M2ZmUzY2VVJjL3MwUUdMSlNmY0kvKzBlSW1zMHhsQjZKc0thdHNxZ011?=
 =?utf-8?B?MUFpZFlYK1NGNEQ0N1hPclNISmhHeThpSld1V1oyVFlDVnVWTTdDc0ZUcy9M?=
 =?utf-8?B?OVRDYWhHb0FoN2lPNlRpSTNGbmgwQ1FBUnZNTi9jYjhOOEY3eDM2WGRWMGd0?=
 =?utf-8?B?VUkvbGhTeHBnRkRnZVJtbTFzZ291ZFF5QVZlNXhkRytSQ3JpVFVtU2poeldn?=
 =?utf-8?B?TzRudXFvTUlnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFZzZjBTaDdQc09vbVcwTnowVVlUc2dxeWluVmhzQWVqQVFsWkNNbWxVbTEx?=
 =?utf-8?B?czNZQ0hyRHRaR3oydnVVQmducm5YcE0vYnhxZ1crTFBZaVBacElMbHpKUDVv?=
 =?utf-8?B?WGFvbU5CUi9MTEVRMm9qL2ZYdUliQ2k0bWFMSWhUVHBZbzN2R3ljWWhTa0N6?=
 =?utf-8?B?Z3QyVFY4TmV2Y0xTd3loQUFjbGFDZmhZS1ZXQ25FK2FvRkJtMUwrbHR3TURl?=
 =?utf-8?B?TWloV2szamJYbnRIOTBRNng2S3F4amYyRjZ3Qkt3NkVHbkQ0bWJuLy9PUmlh?=
 =?utf-8?B?THZ1em5GdndHQXdZcUtrMVM0RmRiVnU4c3NoTU5jZkpreFBLUjVYcHMwdmJL?=
 =?utf-8?B?UXBlUzV3MktnZFVCU1d4K0VXT2t4OTNBblVmQUtPN0MzRlRQOW93RXVGc21H?=
 =?utf-8?B?Q0k3Y21EcnhmQVlYSFdFeEo2UGVwdEROS1drUTRiODZEUjU2WmJjNXNBS1Mx?=
 =?utf-8?B?QWsxV2hZMWRnWW43THBSbU5uQndHYWtRLzVyQTgySmtjdUV0VWtFYjVrZUdz?=
 =?utf-8?B?ekUwcStVM1FKNENQdDdjTUlMdjVSSktDUE9GQkw3a3lIVHpEUUFBSnpLd0p2?=
 =?utf-8?B?Tk10Sld1OGJJTXcxdXpZRXhvVlRoT3FUU3RPTEIza0IzTUY1MDdYa3EyZmhM?=
 =?utf-8?B?QWx5WWlvNEthTExGNk53amJrWjdCZlFUbVhHTy9BV2VLdVlsYU41UEU3S2dy?=
 =?utf-8?B?VFExenJIQWZkVmFRdkFQR1VhVVdDMGkwYlE5Y1ZwMnJmTytFZy9BamZJNGl1?=
 =?utf-8?B?SGVkRzJqQ0VaS1FXb211TFpqcU9GWHQrdElqZ1dMd3BsODZoMjBoVWRjUENl?=
 =?utf-8?B?OUQ4eWs2ZW1xa0hzUkloUXZWZ0FiK0w4Z2gzbEpoOTBSdzJOWGpwSGdhVU5E?=
 =?utf-8?B?ZjIzZEVnZXFKSFhOSkJFYjJtWjZlTUJjYkZnV2NIVkJMVXUvMmp6V0k0ZGhy?=
 =?utf-8?B?WVErbmVCOWxKam9JUHVJNGl3UVZzNm04cnkyelFwY1A5cnIyTytZbDJ2Mlo5?=
 =?utf-8?B?VkF4WHkxWnNZQ1lPaGJvM1RpV3dRVEltTVgvL1plZnBad0RocUJuQXhtRUNH?=
 =?utf-8?B?TjlaM25HWHVFZkk2VHhFMVU2UCtEc1ZWV1kvMmxnbkpOVXN0d0tZb2pUS3lj?=
 =?utf-8?B?QTZDMmNydEI4Q2lFbnNDREc5cCtXYmtOSHl0ZDhGK05Na2lWbmlYdllUQVFK?=
 =?utf-8?B?TklYL0VFMjduQ2lOYVM3Q2x6N3BFVVhYdFlweTVUb2pheWJqNkVhUFAvc2Z0?=
 =?utf-8?B?NWhVT2tmR25pUkROVFJkRkdzTHhQRENkYTZ5TDVaOXMzRlZENEJONmRraVMr?=
 =?utf-8?B?aUg4VEtMWTBsUlJtWThwSkpVcE8rWjhYMWZxUnFsV0k4MWNxN2VZUlRLSXIr?=
 =?utf-8?B?MDRlMmw2ZGhrNm05cUNoS1Q2RW5ObnVyQUdZZnlNdGNuaVJxcUtLckE0dnN0?=
 =?utf-8?B?Ryt5dzlnTHM2dGxNbUY4S0JxWW1oNVVyWFdYSzRLNjhiMjVMUUNsRExhNmNB?=
 =?utf-8?B?eDFxZVVGMHJQQUNHaGdHa282eEoyemlBaEFhSXMyNWxwVVBodGRmNy9WekVm?=
 =?utf-8?B?TVdiTU9scUF6THNIMktQV0ZsUWlwNTNONW1yQ0kzVk4yL0hMcUt3Q2tMU0lo?=
 =?utf-8?B?YXd0a1Rod1dXU20rZ3MvNm1CTG9yRUlnMHRaUnpEc1ozVlZqMGpUV1BETElB?=
 =?utf-8?B?bmdFNDlvSjFTSWd6WlkwQmlKSks1SHBESFF3YzUwTnpGbUxnK0ZqZ1pOc3cy?=
 =?utf-8?B?d0MzLzhaV2lPYzhaRDNGVUVicHN3RXZ5aHNvWGdvK1dwbDN2NFRpVnlLcHlT?=
 =?utf-8?B?VEZZQ2I4NXY2ZkRkUDBEakoybDJWZlRWU0t0OHJZL3A2emQ0TGNHUXF5azl1?=
 =?utf-8?B?R0pCdEdhbThHak9VN1N5R2hlaFlreFZzVlZZZjAzb0VFa1NRbFJMUlpGRkNK?=
 =?utf-8?B?aFNlek9NNHYyWGg3WmM1R1JoYUFMUHpWVWlNeU4rb2E0SFRGUW1HbzZlRlhL?=
 =?utf-8?B?RnNZWmNvT0I3MDNtb01nYU9QbXc4Sk5paGtRQTJWN29GQjluNHJHbGZFclJ4?=
 =?utf-8?B?ajcrbWVhNW14VllOcnl2RUFYbHhQeTVDZExzZWhlOUZ5UTlCOFlsS2NkUi9E?=
 =?utf-8?B?Qzl2b28zRk5WbENBVmRHTFFxdHVwVTZPZGdtd1RXYUoxRDZUMWcxTm9wV2dL?=
 =?utf-8?B?VVhQNENNcnJ1a0JOdkM5dXNPTlBOS1IzcjNCQVBZQVlXN2NaYXU4NU81WnJi?=
 =?utf-8?B?UTBQSTJpaWY4ZDREUUdpQ3k4NXN3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <28844C5E62BF1149A432D5B51FD82B59@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea61d3fa-660c-4f24-7236-08dd86428b34
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2025 10:50:51.7896 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fh3Sy5nNxViH/xMQ+4iPVkdX40v/Yo3pRzC/to2fVgY5xp6ljh+OUE66ATg3olW2U+z7RxbF0GNd+di5Ghevvt7o9eu4CSXwOyPlaFThbXM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4990
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

T24gTW9uLCAyMDI1LTA0LTI4IGF0IDE1OjI4ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBTaW1wbGlmeSBhbHBtIGNoZWNrIGluIGVuYWJsZS9kaXNhYmxlIHdpdGggaGFzX2FscG0uDQo+
IEFkZCBhIGNoZWNrIGZvciBhbHBtIGR1cmluZyBsb2JmIGRpc2FibGUgd2hpY2ggY2FuIGJlIGVu
YWJsZWQNCj4gd2l0aCBwYW5lbCByZXBsYXkvcHNyMi4NCj4gDQo+IFN1Z2dlc3RlZC1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6
IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uY8KgwqDCoMKgIHwgMjMgKysrKysr
KysrKysrKy0tLS0NCj4gLS0NCj4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmjCoMKgwqAgfMKgIDMgKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfMKgIDIgKysNCj4gwqAzIGZpbGVzIGNoYW5nZWQsIDIx
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBpbmRleCAxYmYwOGI4MGMyM2YuLmFhM2Y0NDJi
ZjhiZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
bHBtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMN
Cj4gQEAgLTMyMiw2ICszMjIsOCBAQCB2b2lkIGludGVsX2FscG1fbG9iZl9jb21wdXRlX2NvbmZp
ZyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoA0KPiDCoAljcnRjX3N0YXRlLT5o
YXNfbG9iZiA9IChjb250ZXh0X2xhdGVuY3kgKyBndWFyZGJhbmQpID4NCj4gwqAJCShmaXJzdF9z
ZHBfcG9zaXRpb24gKyB3YWtldGltZV9pbl9saW5lcyk7DQo+ICsNCj4gKwljcnRjX3N0YXRlLT5o
YXNfYWxwbSB8PSBjcnRjX3N0YXRlLT5oYXNfbG9iZjsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGlj
IHZvaWQgbG5sX2FscG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IEBA
IC0zMzIsOCArMzM0LDcgQEAgc3RhdGljIHZvaWQgbG5sX2FscG1fY29uZmlndXJlKHN0cnVjdCBp
bnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgCWVudW0gcG9ydCBwb3J0ID0gZHBfdG9fZGlnX3Bv
cnQoaW50ZWxfZHApLT5iYXNlLnBvcnQ7DQo+IMKgCXUzMiBhbHBtX2N0bDsNCj4gwqANCj4gLQlp
ZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCB8fA0KPiAoIWludGVsX3Bzcl9uZWVkc19hbHBt
KGludGVsX2RwLCBjcnRjX3N0YXRlKSAmJg0KPiAtCQkJCQnCoCAhY3J0Y19zdGF0ZS0+aGFzX2xv
YmYpKQ0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwIHx8ICFjcnRjX3N0YXRlLT5o
YXNfYWxwbSkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gwqAJbXV0ZXhfbG9jaygmaW50ZWxfZHAt
PmFscG1fcGFyYW1ldGVycy5sb2NrKTsNCj4gQEAgLTQxNywxMiArNDE4LDIwIEBAIHZvaWQgaW50
ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiDCoAkJaWYgKCFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiDCoAkJCWNvbnRp
bnVlOw0KPiDCoA0KPiAtCQlpZiAob2xkX2NydGNfc3RhdGUtPmhhc19sb2JmKSB7DQo+IC0JCQlt
dXRleF9sb2NrKCZpbnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLmxvY2spOw0KPiArCQltdXRleF9s
b2NrKCZpbnRlbF9kcC0+YWxwbV9wYXJhbWV0ZXJzLmxvY2spOw0KPiArCQlpZiAoY3J0Y19zdGF0
ZS0+aGFzX2FscG0pIHsNCj4gKwkJCXUzMiBhbHBtX2N0bCA9IGludGVsX2RlX3JlYWQoZGlzcGxh
eSwNCj4gQUxQTV9DVEwoZGlzcGxheSwgY3B1X3RyYW5zY29kZXIpKTsNCj4gKwkJCWlmIChhbHBt
X2N0bCAmIEFMUE1fQ1RMX0xPQkZfRU5BQkxFKSB7DQo+ICsJCQkJYWxwbV9jdGwgJj0gfkFMUE1f
Q1RMX0xPQkZfRU5BQkxFOw0KPiArCQkJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksDQo+IEFMUE1f
Q1RMKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwgYWxwbV9jdGwpOw0KPiArCQkJCWRybV9kYmdf
a21zKGRpc3BsYXktPmRybSwgIkxpbmsgb2ZmDQo+IGJldHdlZW4gZnJhbWVzIChMT0JGKSBkaXNh
YmxlZFxuIik7DQo+ICsJCQl9DQo+ICsJCX0gZWxzZSB7DQoNCkkgdGhpbmsgeW91IGNhbiBub3cg
cmVseSBvbiBoYXNfbG9iZiBhbmQgaGFzX2FscG0gYW5kIHVzZQ0KaW50ZWxfYWxwbV9jb25maWd1
cmUgdG8gZGlzYWJsZSBvbmx5IExPQkYgaWYgbmVlZGVkLg0KDQo+IMKgCQkJaW50ZWxfZGVfd3Jp
dGUoZGlzcGxheSwgQUxQTV9DVEwoZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpLCAwKTsNCj4g
LQkJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIkxpbmsgb2ZmIGJldHdlZW4NCj4gZnJhbWVz
IChMT0JGKSBkaXNhYmxlZFxuIik7DQo+IC0JCQltdXRleF91bmxvY2soJmludGVsX2RwLQ0KPiA+
YWxwbV9wYXJhbWV0ZXJzLmxvY2spOw0KPiArCQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0K
PiArCQkJCcKgwqDCoCAiTGluayBvZmYgYmV0d2VlbiBmcmFtZXMgKExPQkYpDQo+IHdpdGggQUxQ
TSBkaXNhYmxlZFxuIik7DQo+IMKgCQl9DQo+ICsJCW11dGV4X3VubG9jaygmaW50ZWxfZHAtPmFs
cG1fcGFyYW1ldGVycy5sb2NrKTsNCj4gwqAJfQ0KPiDCoH0NCj4gwqANCj4gQEAgLTQzMSw3ICs0
NDAsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hbHBtX2VuYWJsZV9zaW5rKHN0cnVjdA0KPiBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+IMKgew0KPiDCoAl1OCB2YWw7DQo+IMKgDQo+IC0JaWYgKCFpbnRl
bF9wc3JfbmVlZHNfYWxwbShpbnRlbF9kcCwgY3J0Y19zdGF0ZSkgJiYNCj4gIWNydGNfc3RhdGUt
Pmhhc19sb2JmKQ0KPiArCWlmICghY3J0Y19zdGF0ZS0+aGFzX2FscG0pDQo+IMKgCQlyZXR1cm47
DQo+IMKgDQo+IMKgCXZhbCA9IERQX0FMUE1fRU5BQkxFIHwgRFBfQUxQTV9MT0NLX0VSUk9SX0lS
UV9IUERfRU5BQkxFOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCA3NDE1NTY0ZDA1OGEuLjZlZGNmYTVkOWM0
MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgNCj4gQEAgLTEzMjgsNiArMTMyOCw5IEBAIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlIHsNCj4gwqANCj4gwqAJLyogTE9CRiBmbGFnICovDQo+IMKgCWJvb2wgaGFzX2xvYmY7
DQo+ICsNCj4gKwkvKiBBTFBNIGZsYWcgKi8NCj4gKwlib29sIGhhc19hbHBtOw0KPiDCoH07DQo+
IMKgDQo+IMKgZW51bSBpbnRlbF9waXBlX2NyY19zb3VyY2Ugew0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggY2NkNjZiYmM3MmY3Li5lNjQzZjM2
MDU3ZjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBAQCAtMTcwNyw2ICsxNzA3LDggQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3Ry
dWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqANCj4gwqAJY3J0Y19zdGF0ZS0+aGFzX3Nl
bF91cGRhdGUgPQ0KPiBpbnRlbF9zZWxfdXBkYXRlX2NvbmZpZ192YWxpZChpbnRlbF9kcCwgY3J0
Y19zdGF0ZSk7DQo+IMKgDQo+ICsJY3J0Y19zdGF0ZS0+aGFzX2FscG0gPSBpbnRlbF9wc3JfbmVl
ZHNfYWxwbShpbnRlbF9kcCwNCj4gY3J0Y19zdGF0ZSk7DQo+ICsNCg0KQXMgeW91IGFyZSBkb2lu
ZyB0aGlzIHlvdSBjb3VsZCBub3cgYWRkIGludGVsX2FscG1fY29tcHV0ZV9jb25maWcgYW5kDQpo
YXZlIHRoaXMgaW4gdGhlcmUgYXMgd2VsbD8gSWYgZG9pbmcgdGhpcywgeW91IGNhbiByZW1vdmUg
DQppbnRlbF9hbHBtX2NvbXB1dGVfcGFyYW1zIGNhbGwgZnJvbSBpbnRlbF9wc3IuYzo6YWxwbV9j
b25maWdfdmFsaWQgYW5kDQpmcm9tIGludGVsX2FscG0uYzo6aW50ZWxfYWxwbV9sb2JmX2NvbXB1
dGVfY29uZmlnLiBUaGlzIHdvdWxkIGJlIHJlYWwNCm5pY2UgY2xlYW51cC4NCg0KQlIsDQoNCkpv
dW5pIEjDtmdhbmRlcg0KDQo+IMKgCS8qIFdhXzE4MDM3ODE4ODc2ICovDQo+IMKgCWlmIChpbnRl
bF9wc3JfbmVlZHNfd2FfMTgwMzc4MTg4NzYoaW50ZWxfZHAsIGNydGNfc3RhdGUpKSB7DQo+IMKg
CQljcnRjX3N0YXRlLT5oYXNfcHNyID0gZmFsc2U7DQoNCg==
