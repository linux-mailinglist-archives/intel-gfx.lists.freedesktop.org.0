Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FD6B91B18
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 16:27:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4FC310E1C7;
	Mon, 22 Sep 2025 14:27:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gRFn7NXD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE77510E1C7;
 Mon, 22 Sep 2025 14:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758551272; x=1790087272;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zx4rrRsDdNyrMSN45/0uQt1qaGhAsqyD0Rowvz2JsDc=;
 b=gRFn7NXDgyQlXfMw3y5K2uXSqc6NeIyeoIS3GdBnNXzsTq3cwQWgsI5a
 r5zne0aDeC//Rk8WlfhVaDYBHMspoNjd91ULC3MiIlY0o3+cc+0LlLsd9
 /mazGXUvvz+YKx3oRzPyi56xPCKsQCh4eEUqVHaeDyFLv4uQKfy51DnW2
 6U0EABUUR9q0E5VxohvNnsESUYmYN9vaDJnmtr+RltxNI0SE0pXuyHExB
 HxklU0usAEPtLK/BlxPQeQXcyam51h0GL5BT8Fh25VupJzKBGaRpizubF
 rjNw2n+E/XTBYRfVpBCK7wD3B3gs8xMwakOmP69fYTvjcZmksJi/PIuj7 Q==;
X-CSE-ConnectionGUID: fgCEveVsTHygs3gSpV4DLg==
X-CSE-MsgGUID: 7mMAITahSEeMJ9NcUHiggQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71059764"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="71059764"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 07:27:51 -0700
X-CSE-ConnectionGUID: Yu2FF64eRx2B1Jk/A9uO1w==
X-CSE-MsgGUID: 2Iz0qbOARDaIJBtK/OKVDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="207225781"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 07:27:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 07:27:50 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 22 Sep 2025 07:27:50 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.71) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 07:27:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X31lUiGWdq41MVN57fLfojbQXin82lnDF61DF1bFe42Jqk6DCoz4wWHk10g7v5FMq07H6Uy4wSlJe+dpmrpLXlfuxe7DYBshSwMEZyEO2q1bABfnd4GpCjeT4GWxZEZgqYLGFadC8pZPhrAJy1qSNUumcEaq+uITEoJegzgfbxtaTluAPOsggaKVq6IGKh3d73LczytdZWyHmjjGyWjPHrMl7wZb3y4Fmkd7ZAZhdtjT7C6JhI2xN8VSvC/pnuRGOZJj9+tn9AmDWld3BpWR5h70MlwPpVa+KT+++dBgmpHIjpb4gFlGCZ9VPoHy2YDFLAdM6gxhujZ5Nq7U17X41w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zx4rrRsDdNyrMSN45/0uQt1qaGhAsqyD0Rowvz2JsDc=;
 b=OmshLP/tSpgPgsOKBsJZTR1lVzpFzfm7MSj4cdbi4ukoaCgOjhRuqS5TdgRmQeY+15Rz8f8uFLA09KsEdTQw9ZNeNgA+9Y+edzetDIMffbueqwe7RfMDJLJO42HIgiOIjCNbRIA7mjfnAibNXCcpJPTB4F+rg8KtWE1qxsI5MVShaBtamofcnDdqET5ruC9Cp2rsobJLNOmQYkF7MDyYcIAPh9ReUDQyYkfSG3OdBOexPF3j5/mFk0qaDVrX6TmmsxVK69sbQmYf83pJAvv95/jFBk96Mv4+HRuIackUrrlz5EFWIPbw86rAoDFwMPd/E/8F/nbpURNrxgXRb2ekQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MW4PR11MB6861.namprd11.prod.outlook.com
 (2603:10b6:303:213::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Mon, 22 Sep
 2025 14:27:43 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9115.020; Mon, 22 Sep 2025
 14:27:42 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, Lemen <lemen@lemen.xyz>,
 Koos Vriezen <koos.vriezen@gmail.com>
Subject: RE: [PATCH] drm/i915/psr: Deactivate PSR only on LNL and when
 selective fetch enabled
Thread-Topic: [PATCH] drm/i915/psr: Deactivate PSR only on LNL and when
 selective fetch enabled
Thread-Index: AQHcK6uV+0sU+Msd60qrnUTYAy8hk7SfQqxA
Date: Mon, 22 Sep 2025 14:27:42 +0000
Message-ID: <DS4PPF69154114F115E08971D23AA2DC193EF12A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250922102725.2752742-1-jouni.hogander@intel.com>
In-Reply-To: <20250922102725.2752742-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MW4PR11MB6861:EE_
x-ms-office365-filtering-correlation-id: b40cd9b1-00c9-4cb9-76da-08ddf9e4311f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?TEpVdU1lV2kxRy9ua05Xa3JHMXVoZlNVUXVlZFNOcnJaaXZleUZQcjBYRms0?=
 =?utf-8?B?UWpia2c1N3pYWXp1WjY5QUFFL0w3cVUyZzF3SjNhM3VqU2J0b01nLzJ3eC9C?=
 =?utf-8?B?Y25TUmdPUkVnVFlHSWt6NUVUMEZ6MlNUL2JiRExndCtZWGV0OUZQdEkrSTIz?=
 =?utf-8?B?YndJUjZwdVdzdG9OeGF1MXhNUUhDbXROTXFKbHlJU1ZwcWdJUmVFRUR2bWtx?=
 =?utf-8?B?TTZrNm5USGFUbmRUeFkrTWN6UVlOSUl6V3hQUWNZSGNJb2dLTCtFeFJKWUxz?=
 =?utf-8?B?RENPMEd6ZndHU1gwcEYxWllGeEVUUTlPSG16TGdpamhDV2Z0dkxRc0xrekhR?=
 =?utf-8?B?ODhTVU5DMTJVeXVic3VvREo5a1Z3RUVVUnVBdURkVTlNMnU3akwzKzhnN0sz?=
 =?utf-8?B?enVKaWRiSmZ1ZFFJMDFwS2hOemJzbUw0Z1BlcU94YXpsOEpEUGY4N29sK2Yr?=
 =?utf-8?B?VzYzL3lXZEt0QUltTGhkSmpESjd3NXNiRk5Ya2ZGb00zL0lJMG1QL3NnSVhX?=
 =?utf-8?B?a0xnaG9VMTQ0QmlNM2VzT1RvUUpRb1R4L29leHJQdDVnZFNGRk54ekJqZExN?=
 =?utf-8?B?SFd3K21ZZTNPVm1qQjR2U3VRTlFUZDlMWFdjK09kRE5PMm9KTk90aGsvLzI1?=
 =?utf-8?B?UW0vcFFWZDFpbGxPTi84a2wzUnBuWmdVZVJkQ25GRjhlRG01aGdHSHNTbVU0?=
 =?utf-8?B?L0ZQaFBtWmlCbkpld0prQmZXSVN0dzRGd0R5ZWRLMzIvWEtWSWxmRitvK082?=
 =?utf-8?B?ZUYxQXU0eG5sYkFva2Uya3NqOWFzcjk1em5MMjVwdkkzTm5yWFZXSGlDN01t?=
 =?utf-8?B?MFlyMXRMQVk2UmpHYWNOVE1jRWM0MkdtRWtDZS9XZ2VOMG1wTDRFVm9uWERm?=
 =?utf-8?B?L25rNHBmOGI4TE0zQVZwd1ZGSmp5REExRkNSSWg5T0daUTlwcG5Vc2xBNUEy?=
 =?utf-8?B?S3ZURFJZUEIxMEFQdzZIYXVQL1c1NEtMZUJuc0hKYWZGeVhBS2NJcXpQdmt1?=
 =?utf-8?B?VEttV0RvYVRLNTZEMXp2R0NLMWpYR1g1QkFNdXYyUHpOU2NrRmJhV0xvK1JX?=
 =?utf-8?B?YXZTTDBMcU9mUG9oaWV0V1BPTXFOejJuekZJYjNJSWx1MzgxWm8yQkV5azNy?=
 =?utf-8?B?WlQ3d2hOcHM5cTZHMjBGLzhGYWZyNSs0ZlVhWDZTMUpHK1VnKzhhQ0dRcjB0?=
 =?utf-8?B?VGRJa2N2Z2dJTndBU1hwZ1pZM3YxTW5BV3hwWjZPMUljSFRRTTMxd2VDTXky?=
 =?utf-8?B?MXZoSlFoazJ3MkRyclRUQUVWQnZ1OUhtelVDT3FyWGsyV0lON3ZCVkx1c3pF?=
 =?utf-8?B?dll2SzducXVnN2dTUUliemFBc1p1UlRIdW5BV2loK29uVFIwRE5uTVBEMGda?=
 =?utf-8?B?cXV1T3N6VjVxY2RXS241d1R1K0RqR3hadGE5M1hLOWttSUhmdmRWRWVsQk5N?=
 =?utf-8?B?REZCM3VsbEowbDN4T1Mvc2taVTdxSmhneWdqN1V0MTh6eWx5dFpYcGJHRlVP?=
 =?utf-8?B?TEo5d1VZVlUvZzR0QVpPQW5PcEhFdVRHVmdkbWZHWUQ1L3YyRGU5cExtM1c2?=
 =?utf-8?B?dlFOZWZhVnFCMmI3U1VhOW9uVEViOWdXU3dIMGRjTjhlOS9UL1ZSd2lhanpy?=
 =?utf-8?B?ZEowaGhsOXFzcEpLNy8yUzdlRTJPVGZFZ0s5YW85UzU4L29FWGkrdDZOV084?=
 =?utf-8?B?dGNLYUppL214SGhueVoyZWtSUlVIamc0Z1pNN1Rpb1d3QVFpS014dG9BcnVJ?=
 =?utf-8?B?b2R4SmgyRS92ci9aUWxIQ3hjZSsxUzVNL1g3K09HekVRS2JlMUVlbm9CYlVC?=
 =?utf-8?B?dTRxT3R4bzR1MktGbDI4a1ZRVXQ0WGhIZE1NQWw2WWxUWWgrbGpKQ2REVlF5?=
 =?utf-8?B?UmEvNStFZkEyZWo2N3A0WGlKUHJrVE9DdkYvUUxiOW1tbGNqWjZJZzNXMENa?=
 =?utf-8?B?Y2VjUEhzRm5hZmh6NEI0Q01oSWx0MEVwSnFvMTBlSms3VnExeUhGbWNralVE?=
 =?utf-8?Q?f4dGZbX7U+iFLl03cHNxp1zd+rRBbA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmVZWlM5UzQ4Nm9PZGtlNWVHODNMTTdhV0tsdVlZV1hKVGlOT291UG1zVkZj?=
 =?utf-8?B?d1V6cC9BN0VRelM0RkREcWgzMDlRajdnWXRxck4zOHZSbDJRcCtzNmRDOVpt?=
 =?utf-8?B?eWtOMjhRODB3ZGJHcTBDYlJnVlNnOHNIWks5OFZiZUNGL2g5cHp1T3h1VjZ0?=
 =?utf-8?B?Mk5zY1IxQ3p2eGt5c3FuTk9SVC92UXhzWis4dFNVWWZaZjQ5RXdhWm0ycS9z?=
 =?utf-8?B?U1QwbzhNUzRXaU9TREJOdC9mZWJwQVAwa2phSmxnbnVNZ3BlVHM3TUNzajNp?=
 =?utf-8?B?M2pnNnRIT1ZTTDBBVHVXcEVJczh6Tm5WeGl0amZFTE43Uk16bDI2Ni9DTkVt?=
 =?utf-8?B?N1dmeE83eDJxQ20ybzN1R1hRUXRvSG5wUUwrMG1QYUNPWFVJNXNzTURrdTNZ?=
 =?utf-8?B?QUxwNEE5R2tRQVMvbDdaUXFjbENSbWZYTW9FcktLQmtrdk9MS1lqeml2UGg1?=
 =?utf-8?B?UFdEb2FmdlhNcjdCdXFQdVJCV1BPSUNIM2NEQ3BZQkJBSG1vbFAybldkNlZI?=
 =?utf-8?B?WG5YbW5XNXhKZGRJQjJZVlM5U3JkSXNJTEptQ0FCZmd1L0U5bnBXYXVwd0Ri?=
 =?utf-8?B?c3dUdS96emJkQnZpeS94RjdpcFIxUTNleGhmNUwwYnRReE05VVdyeElHc3dG?=
 =?utf-8?B?b0dxZEpmOVBkcTJKZ0dSS1VzdXhjZnI4cnlUUXlmRW9aVVVYRnVQTUtNMmx5?=
 =?utf-8?B?LzFCZHBaQTA2bFBHUGJ5NWE3d1JZVTBnTEk4M3Y5TWZYTFhNRzhkQS9VSURj?=
 =?utf-8?B?eGhxNGJrYnFYdUxqK3JIdnhieThEQkJJa1FhY3N6YTdHV2hUbUNTZDNzbFpO?=
 =?utf-8?B?T3RWa1FiSURqOXREM2JZSEZTemMxc3ZPWjRFWHIza0YyNHZLYjV5eThNL1g5?=
 =?utf-8?B?S3Q4dFI3dTRHbXRhZ0NSL09uV3k0VmFSc1o1UHhOR0lSaGhzU1Nkc3NtZk1u?=
 =?utf-8?B?cG5PVGYzMFN3aUhtNDRrV21ReGRwd2dZQWsyRFVXWFZlempDcXUzWEUyOE5E?=
 =?utf-8?B?d0JxdkJOUHhjeVdJVFJ3OTdkb2R3dHgzdHRsSWgvN0IrMzdaRVVZL0V6QnlT?=
 =?utf-8?B?b0VpcW9zcCs4eW1DOERJWnZKSWp0L1VUT1Q2TGVvOStzdTJMbHc5MUFEeHhC?=
 =?utf-8?B?SVhKOWhBRUVKdVJzT2NvQjRxdWF5OWxPREkzMlJPem50UCt1NHVTTEtKNUQ3?=
 =?utf-8?B?a1czNWxLamRSTE82cFdQTDJHQzM5Rzd5WnhyY1lvMnNNQ3VDNm5sNVpuakJN?=
 =?utf-8?B?R3pENGZ0aDVRNzlQdU9GaThnWmlnV0lLRFRyWXJxVGR5U3l0RlQxZVgvVDA5?=
 =?utf-8?B?eDQxMXVlZjFjbC80bGQ4NXBscVpJNUNWeXhNbUlBbnhMYkdCenFmZE5pWmhi?=
 =?utf-8?B?eG1udURsMXgya2FtbUVUUVpOWHJvcGJBUFZ5eVBZVDlmY3llMUZvYVBNTUYr?=
 =?utf-8?B?K0htNWVhbEhvbW5VUUxtL0QvOXF0cVh4bGJ0dTJ2a1JycTdlWXZBREV6dENr?=
 =?utf-8?B?ZHNFK3RpQXF0V281M1V5QXR1WnFFb1dNcVhHQlZNZkRRVkZkdGVUWHY1WkJO?=
 =?utf-8?B?dTJtUFNtbVNHN0FmMUxtOU9xS0Y3aGxSV0xjWHN1aGxlN2FWSi83TW85WEJX?=
 =?utf-8?B?TWdWT3c4c3ROWWV2T3BOTWNHM3dwajEvZjlUNXR6SlpJQkR5TGRsMEtKRzU0?=
 =?utf-8?B?Z2RRUXdjRVk3RlZWbVdlTjRQb0FhL2ZZaHJPSk9sRGlBSWFWK3FOZU16NnZB?=
 =?utf-8?B?bnAyMTc0Z1VMbStQZEdZSDAxMVpqNnZMQVdUSk1TWEZvV2swRW9yamgzd1pR?=
 =?utf-8?B?ejB6L0hMMW44WmhxOENLRkIwWGlLTE1MWHpTdVVWR1dpem1SWUFGTXl6Zk5j?=
 =?utf-8?B?dDRUa0VWWW9zSi9hYUJjQzRadUgvaWErdlNEWkV3UXpkREtVU3I2c0FCT2JB?=
 =?utf-8?B?OTN4MUZEM1dDai9CLzlSOTBKVG10R3RBbWRVM21vQjN4Y3JCMmo2eVpVSFRh?=
 =?utf-8?B?U3h1Zm9KTXd5cFhYbkVVNVVBVXVCcVZkTTErcE1UVmRlV1k3TkNrVWxwRDMz?=
 =?utf-8?B?eWlBUS9OZmlaRjFHWFFHVWdEN2d6emNQY05PVkNNUG9MblgzUkpXNjNhR2dU?=
 =?utf-8?Q?AlyF3/oETxJnezMUG2yjYY8C7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b40cd9b1-00c9-4cb9-76da-08ddf9e4311f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2025 14:27:42.8238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AXVB/QGwcD9YU9pr58Pb/pTHruVXvILSU0ZZi98DNXyvTU7UCeB8++Fw29fjrDZegDqABz85Ohv9txd3H1BxOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6861
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBNb25kYXksIDIyIFNlcHRlbWJlciAyMDI1IDEzLjI3DQo+IFRvOiBpbnRl
bC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPjsgTGVt
ZW4gPGxlbWVuQGxlbWVuLnh5ej47IEtvb3MgVnJpZXplbiA8a29vcy52cmllemVuQGdtYWlsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9wc3I6IERlYWN0aXZhdGUgUFNSIG9ubHkg
b24gTE5MIGFuZCB3aGVuIHNlbGVjdGl2ZSBmZXRjaCBlbmFibGVkDQo+IA0KPiBVc2luZyBpbnRl
bF9wc3JfZXhpdCBpbiBmcm9udGJ1ZmZlciBmbHVzaCBvbiBvbGRlciBwbGF0Zm9ybXMgc2VlbXMg
dG8gYmUgY2F1c2luZyBwcm9ibGVtcy4NCj4gDQo+IFNlbmRpbmcgc2luZ2xlIGZ1bGwgZnJhbWUg
dXBkYXRlIHVzaW5nIGludGVsX3Bzcl9mb3JjZV91cGRhdGUgaXMgYW55d2F5cyBtb3JlIG9wdGlt
YWwgY29tcGFyZWQgdG8gcHNyIGRlYWN0aXZhdGUvYWN0aXZhdGUgLT4NCj4gbW92ZSBiYWNrIHRv
IHRoaXMgYXBwcm9hY2ggb24gUFNSMSwgUFNSIEhXIHRyYWNraW5nIGFuZCBQYW5lbCBSZXBsYXkg
ZnVsbCBmcmFtZSB1cGRhdGUgYW5kIHVzZSBkZWFjdGl2YXRlL2FjdGl2YXRlIG9ubHkgb24NCj4g
THVuYXJMYWtlIGFuZCBvbmx5IHdoZW4gc2VsZWN0aXZlIGZldGNoIGlzIGVuYWJsZWQuDQo+IA0K
PiBUZXN0ZWQtYnk6IExlbWVuIDxsZW1lbkBsZW1lbi54eXo+DQo+IFRlc3RlZC1ieTogS29vcyBW
cmllemVuIDxrb29zLnZyaWV6ZW5AZ21haWwuY29tPg0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTQ5NDYNCg0KUmV2aWV3
ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9m
Zi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDEyICsrKysrKysr
KystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXgg
MDFiZjMwNGM3MDVmLi4xMGViOTNhMzRjZjIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMzQwMiw2ICszNDAyLDcgQEAgc3RhdGljIHZvaWQg
X3Bzcl9mbHVzaF9oYW5kbGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAlzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiAN
Cj4gIAlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCAmJiBpbnRlbF9kcC0+cHNyLnBzcjJf
c2VsX2ZldGNoX2VuYWJsZWQpIHsNCj4gKwkJLyogU2VsZWN0aXZlIGZldGNoIHByaW9yIExOTCAq
Lw0KPiAgCQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9jZmZfZW5hYmxlZCkgew0K
PiAgCQkJLyogY2FuIHdlIHR1cm4gQ0ZGIG9mZj8gKi8NCj4gIAkJCWlmIChpbnRlbF9kcC0+cHNy
LmJ1c3lfZnJvbnRidWZmZXJfYml0cyA9PSAwKSBAQCAtMzQyMCwxMiArMzQyMSwxOSBAQCBzdGF0
aWMgdm9pZA0KPiBfcHNyX2ZsdXNoX2hhbmRsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0K
PiAgCQlpbnRlbF9wc3JfY29uZmlndXJlX2Z1bGxfZnJhbWVfdXBkYXRlKGludGVsX2RwKTsNCj4g
DQo+ICAJCWludGVsX3Bzcl9mb3JjZV91cGRhdGUoaW50ZWxfZHApOw0KPiArCX0gZWxzZSBpZiAo
IWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCkgew0KPiArCQkvKg0KPiArCQkg
KiBQU1IxIG9uIGFsbCBwbGF0Zm9ybXMNCj4gKwkJICogUFNSMiBIVyB0cmFja2luZw0KPiArCQkg
KiBQYW5lbCBSZXBsYXkgRnVsbCBmcmFtZSB1cGRhdGUNCj4gKwkJICovDQo+ICsJCWludGVsX3Bz
cl9mb3JjZV91cGRhdGUoaW50ZWxfZHApOw0KPiAgCX0gZWxzZSB7DQo+ICsJCS8qIFNlbGVjdGl2
ZSB1cGRhdGUgTE5MIG9ud2FyZHMgKi8NCj4gIAkJaW50ZWxfcHNyX2V4aXQoaW50ZWxfZHApOw0K
PiAgCX0NCj4gDQo+IC0JaWYgKCghaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVk
IHx8IERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDIwKSAmJg0KPiAtCSAgICAhaW50ZWxfZHAtPnBz
ci5idXN5X2Zyb250YnVmZmVyX2JpdHMpDQo+ICsJaWYgKCFpbnRlbF9kcC0+cHNyLmFjdGl2ZSAm
JiAhaW50ZWxfZHAtPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMpDQo+ICAJCXF1ZXVlX3dvcmso
ZGlzcGxheS0+d3EudW5vcmRlcmVkLCAmaW50ZWxfZHAtPnBzci53b3JrKTsgIH0NCj4gDQo+IC0t
DQo+IDIuNDMuMA0KDQo=
