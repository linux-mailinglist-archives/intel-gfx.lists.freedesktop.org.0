Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74662A05E03
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 15:07:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F62310E8A5;
	Wed,  8 Jan 2025 14:07:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bMtpp16K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3592D10E8A5;
 Wed,  8 Jan 2025 14:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736345259; x=1767881259;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=HAuHo9wsJn0brLLgGpDE46DED+4TSTa2g4b5gWkdUX8=;
 b=bMtpp16KfIk4h+QzEKefO6duA9oGDqEIHjqMe6pnDuIVof7EFstBSZ27
 yDhZevnmMiA2KANxk1/5a2+q92kMsUp+NJ6aJD8CDTFCzvCrb1qG0EBwO
 ZGFR0JgT/UBIm87xibinsg3kToGI4+kQDvnpr9fawWWMh7Px6Wr8+Yi72
 c24uHoejhM+nJ/GHqvN6s7fl8h7GzCsae0fIJO5+YEqoAVXneFi4gahOv
 ABIauVZx4Z8dEXXhc4kn4j7QjBd8xDE1ccSJ3Eu3FGqDWKHmyyzwV0Smg
 uLiGYTvc9L+NJ7KDWS0PgIhrfuagwWwKKVz1x++jVndfwUYpQ8oRYkoEY A==;
X-CSE-ConnectionGUID: E+guYUszRc6/iaE0JBXYDQ==
X-CSE-MsgGUID: 8u3+/oTeRJGS3ZHKJL8mtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47146605"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="47146605"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 06:07:38 -0800
X-CSE-ConnectionGUID: v64lanVuRZ+L2g9d/urqBg==
X-CSE-MsgGUID: gRoLeaA5RK+S/J2hg4EFDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="108155959"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 06:07:39 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 06:07:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 06:07:38 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 06:07:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gt9PlPwAZTb4vFj244grU0k1i8Me8t7ZPGcbY+8tOXxo0ulP6CzPWcx0CMbC38yUJZZkp393DLnVD1jAgb/G9pK0Gg1R46F5NKpHveEz9oNQ+qEjw7Lq+wG+2E2hZWsO8I2xDK9XmTlmJ0DuZCTrhKqe/ycjfwoCOz3snVuJCjA43SdXwvvW+POglM73i13sf8ACNuWaMXobSWsMxUtyLResNiywScm/3hiI+Qy6Rgbt7LeyVlkMH0OHmgs2jygYLjqpy6RQtzvACz8EroI6qVS+YF+4IjH3I5vQM32GShwJ0/Hz1XYLGdZkbJU6EGjNdbOe1dnLeNPmOieFCqRxCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HAuHo9wsJn0brLLgGpDE46DED+4TSTa2g4b5gWkdUX8=;
 b=Gsr5lYZZRMiSAIM2Lrb/IQOcmMEH7ScYIOLM7+lL796rW1LKNZL51pO+c04XJK/VJmNkM5/gVu9UojAqRo0kIDeXmUjmX4a5sMqTv1V/lBSF83BSkm8YmfAUdaMpgkQPREXwk8Dn6PmJD4T2sqA+mKQGFCNA0an1qq0RDVMZSxuK/pYStY72SWGKAP2mYpF7+N/jN4u/BeE1VF4ZxX1AuXj0GuobNTm6/DM8tFKS1SLmn5AYvSFXu9fVK99WHikCkjeGY0Pv+3o8ELd7gQCRUyZqANTzmwE9ORfjWN+dPorP1+EC+9V3Wx0F8jJP457uxjMIV4u8kT7ZXY/p2pUdtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB5060.namprd11.prod.outlook.com (2603:10b6:303:93::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8335.10; Wed, 8 Jan 2025 14:07:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8335.010; Wed, 8 Jan 2025
 14:07:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v3 5/6] drm/i915/lobf: Check for sink error and disable
 LOBF
Thread-Topic: [PATCH v3 5/6] drm/i915/lobf: Check for sink error and disable
 LOBF
Thread-Index: AQHbX/SSvNn1P5pvw06A/g3wYD1LhbMM7WmA
Date: Wed, 8 Jan 2025 14:07:34 +0000
Message-ID: <abac0c98f5435ba2ac7e70c7a0bf4247ec225630.camel@intel.com>
References: <20250106041516.924101-1-animesh.manna@intel.com>
 <20250106041516.924101-6-animesh.manna@intel.com>
In-Reply-To: <20250106041516.924101-6-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB5060:EE_
x-ms-office365-filtering-correlation-id: b653cb07-3b75-428d-8a87-08dd2fedcd0f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SDZqbHExYitNOHMrTEhDcjJLZ1lTelNHVlpaS2RETWZMalY0Z3RPN0RvWTQ4?=
 =?utf-8?B?aTdLRUVYN0tyVmRUay9iL3YyODhCSWZFbDVNb1NvSU1jQ2tRK2xEUTM2OXhj?=
 =?utf-8?B?dS8zNVc5S2R6Mi8xbi9KMWRTV3hUVkFyQ3R3anczNXh6OW13cWIyQnVMaTI5?=
 =?utf-8?B?eFdHZWRSMG5YUnRUTkFldksySGRKS0JUT0F6U0VhTGwrSHpMbURSN0JZMzJ2?=
 =?utf-8?B?bGt1VDA5TmNFQ0V1UFBPNE5ocXd4VTd3Qm1mMCtvTVk5M296LzYwNDVqeFMx?=
 =?utf-8?B?QThteHh2NW12WXFITm1lcWl4eWlEaXVMTmR1a1FjVlpIb1lJVnBlYjB2TEQw?=
 =?utf-8?B?SThGTEFkdFFFRXF4QS84VFp4aGIwK04xVGlrOXk1bmJDMVNMYWNYcExZQllj?=
 =?utf-8?B?M3J6d3JMWEF6cS8vUzVNcjJidmtQaE9Sd2t0MVZSNUNueHdERDBEWTFFR0tJ?=
 =?utf-8?B?QVJraEk4ZmlJT2JuUWdJSkZSTjFyZEwzMGFpQ2E2SDJlYTJJTThZY3laSUhK?=
 =?utf-8?B?UDROa21mZEgxMUxnMFpSV3BvYlJXOGdZVXRQS2hvZlRnL09vemdpUWNZc3gw?=
 =?utf-8?B?aWZCWTBET3VNQnVpaDc2U3RFTkRXbjB3WjBvSm45TTBLUlZzekE1UDVFRklI?=
 =?utf-8?B?Zjh6MEM1SGVJdko4b0FvZkIxRWQ1bURlKy9qMlhYbFBsTkNoOUhhdjdIZkZn?=
 =?utf-8?B?aDVHN2NrYndROTMydkM0bXhGb0NVdkJXamhzVWdlM2R2QTRNcFpkN05oenBL?=
 =?utf-8?B?Qjc1MTNTYmNBMFhSR2hqaG5uL1NtSWxKZTVKVzVFVFhOSEJhY3F3RjBoZXNW?=
 =?utf-8?B?SHJpRGJ3ZHkwUW5hTm85Sk5uV3Z4ZVFBNlh0ZllWOGM4S0pqUTdqRG9iTDZ3?=
 =?utf-8?B?NmZiUmpMNTQvcG5Ea3FuNTVHSy9HNElQQ09xUUpTQVdQOXZBWFg2eEFvSVdZ?=
 =?utf-8?B?dXJvRzRCNzVQNHBwbC85RTdTd0Y5U0prSU9sWHV4WjhUK3JVNi8vcm1pOEM3?=
 =?utf-8?B?VVB0djVlUjB4Q3JhOFdVRXhZOW1CUkNyWTdIV2wreldsTnROWjkwRFEzeVNI?=
 =?utf-8?B?U09LNG4zdHNHL0pmMHZna3ZYWDkwb3VCNHlzU243Nk1Sbkt3VWh4UGVBWGgx?=
 =?utf-8?B?Yi9JWHdpdTZwZy85c20wUWQ5MmhEOVpPTGtWSXYzQmkyWmYvbWI3WTM1RFdu?=
 =?utf-8?B?MkoyU2c5aEJIMGRyb0FSSklJVjN1cnh4ZEpHWHJFNEdxQ1hKbElWM0tERnhP?=
 =?utf-8?B?YlhNeUhYTnQ2ZTFNbDZRVzd6MXlDaWZGQUJVUXNCRjZmZFZuSmlZMDBJbDh3?=
 =?utf-8?B?N3dUd0xWRm9iaUx6SjErZXdRNkxKOTVzTDRrcHVXWXFzbmRKc3RqMWV2bVJE?=
 =?utf-8?B?NG9SRkNnZGdPMXYyQ3BqeVhNR2dKNTNHbTdNYTlKbHl6NVVHelBlcnJsaXh1?=
 =?utf-8?B?MmNSSGtOU21QZm1ZVlRuaGU3S0dnT0U1Y2h4UU1PV2hSRTNOdVEyMEhLam9z?=
 =?utf-8?B?RHNsQWE4aG14bDFQV3hUZjNud29wUG5yVkJ4MEpUYzAwL0VQTThpQWVsYmov?=
 =?utf-8?B?Q2FWY2pyNHRMaFpiY2hGNnZwNEY3MmZXTXB0RWY4Mkc5ZnZBeXpMeDdLZDlB?=
 =?utf-8?B?V3pSRG9JMkJHVDRCTVk1TkpsUUFpWkJidkkxRVJ4b2cxcElWS1VlUVFRSXJX?=
 =?utf-8?B?L3RQRXZBTFdtWDVmeWpITkVXRXEyMVJiOHdiK1IyZFhZYmNWamM0NEtOZnVY?=
 =?utf-8?B?UnhFUEczb3JtQVRpMEZ6ZjZpWTdhak9YcGVERVdpRS9EOFlkTTdiZ1lUOWFF?=
 =?utf-8?B?b2VBV1AydnZ2VnJJajdLV245QjByMHNRb0RFcHp2Z0o0cmljK0ROQ0VuY1BW?=
 =?utf-8?B?QnJmNTVscnhONzQ0WmJUZVFyUzU3bVYyL1BESGVjeDFWRHJ5M0NyaUFVMFU0?=
 =?utf-8?Q?cv+/aZgJgGomccSydm+QVPmmmbrfHrl4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3hJbGFBNkxBV2RhU2ZBRE5aTEFRY29rL1NPUEZtTHpxbXp5MUdjTjl4by9F?=
 =?utf-8?B?RWNLUGVzMDVlUWY2a0EyUlZyU05HNGE1VXlqZTV6eWZ1WjRKTG1rRHlsYjRj?=
 =?utf-8?B?Vzg4LytZNTVUZ1J2cFJWZEhQcjNXN0xpZmpsQjBrNmdWQUZyNXBUK1R2ZW1R?=
 =?utf-8?B?OTA4Y3JNYW4yNXkxSEwwekJRUFNreXhDQUp4anAxeEFmRXo3VlEwV3d3Z3Nh?=
 =?utf-8?B?WDlXSSs5Y21mN1F1bXRlK0s2NUFpNDNjQ3hNdjl1bzlmWVlmd1NxMkJxSHRq?=
 =?utf-8?B?ajJiRkpKVjdQbDJ5a2dLVEh4TjY2eGVhNUR5ajBNR2RqTTRVcW9IanZqMWlZ?=
 =?utf-8?B?bGY0VFVpNVFDSFRjYTR4V3diSUpzZlRubGhHdWRjd3lXK1hBYzRVTjd0V2xM?=
 =?utf-8?B?aG53MysyVzNtUEgwZG4wVDVrMk1HSjBZNCt1QlZJSmxxczRrOWtzRUJJOGVO?=
 =?utf-8?B?T1B0R0JvTzBpdU5iUTBRV1dGbUllekx4TFlGUC9UaS9hVVhlMkJwRTEyaTF2?=
 =?utf-8?B?VkV5a3JjZjNXcDBwamtmT0pSREhJOTh6dkRVdW04VWRxWkNFOFdMRWhzeG8z?=
 =?utf-8?B?Wkk5K0JNc3RGUEtDVTA0RklqKzNRY0RRTHlqMHQvQWs5bElpa0xXQ0w1TFJW?=
 =?utf-8?B?c2tlUEJMMy9CUlJ4ckFaV2gxODVKQm94T1hlYVdoWFlPMlFZa04yNGxCcU1i?=
 =?utf-8?B?MHlmdSs2SUhnZm82aExxMGdEaW1QWDhNVFZzeTNtckxsR0tzWUxlc0RjajhY?=
 =?utf-8?B?TXl4Z2ZmOHNUNENjNFN3VU1CWHBCZ3NpYktTbzc4bjl0a3BDZEpyRkhENnlD?=
 =?utf-8?B?blpXQVhJTTJZUXBVQmNuekJFNE8wOW1BN1MvUzBHY1o0TmhxZkNPTHBzcS9x?=
 =?utf-8?B?RGF3cGMxZVh4ZHZ5Vyt1ZFdPc05sQVgyeVFtQTdSSTNXZ2xIL3BCUm5XdjRq?=
 =?utf-8?B?Qm5VWklyRkNOcC9xWHlLZ2ZiWlNUWGhRaDZyZmF2S1ZpSnNRd2hBNmFiaExI?=
 =?utf-8?B?TjJvKzZYcUZkRHBoR0w1bzdHY2RHMlZrRzkxbTNSM05mUzNMZk9wL29kZ09J?=
 =?utf-8?B?K2V2bWFDT2psWkEzdkVqRmZERDgzbm9MWWQ3V2xHZVhsTlkrMUJBdVhrRGJp?=
 =?utf-8?B?NU16WVpyelJhaHVlN2pSTFUrcm05OWFDY21kL0h5QWFvaUhZVERMNkJHM2pC?=
 =?utf-8?B?UVpiS2Juc1NnZUNYT0FxT0VJQUxzcVlsQ2Eza05wd1BFMXVROXJaNUJveUt2?=
 =?utf-8?B?Tk1DYmp1N3Q1RUdVREVPdXpGMldVSjd2SnY5eEVYVmZMaDdFdlI4UWRRb3BB?=
 =?utf-8?B?R2dRYlBlUHVRTWJ2aVNQZTk5TDB5N2lSUTVIbmhFLzNKZ0lNbFlvejlaQXpk?=
 =?utf-8?B?R1NnMlBGU0FjOVhVL09UWmdoU3laRklUNURPT0c3UjA3THFHYjhheTZ0VUFq?=
 =?utf-8?B?QThIalh0dGErWE9GMC93TEs2ZkJaWnhLZGdZeVBOOCtmOFFmRjZpeFlzZUlB?=
 =?utf-8?B?K05PaG1BWDUrbGFmRGZlWmluUzNSZmlYT1M4L0dFN3hsVGVXVUltZ1ZJYnJ1?=
 =?utf-8?B?RXF5UDA5VklaRG1iaTN2TlVDZTc4d1k0RFJFM0E4UkloL08rdjhwUGtrVFB5?=
 =?utf-8?B?LzJWNktGdm10amVaY2pURlFLR2J2c0d5Y1NPTjl6aTBzcXI1bkxqVVBWSWJ5?=
 =?utf-8?B?d1VWdGNTTXUwYzk5RmRSVDVkRjI4UjZ3NkZ0azZEZzJnWXVINU5xOGdWalB6?=
 =?utf-8?B?L3pPVlFNRWw5aTBLVFkwWG9aYmxSSkZsZzN4NHMrVGxqRWhGWnltOFJGMnRh?=
 =?utf-8?B?eFUwZXBTT0IwWjA3a0cxR3hKUlE1U0ZobnBWeS9kdWhndUdVTHFrWmxtUW9B?=
 =?utf-8?B?N2s0NzFlMGZ6TERaUGV5ZU4vb3BrOGt3a3hFV2pxeHMySzhabmtPTjJDUjJY?=
 =?utf-8?B?Ty9MNHlhTU9LM3o3RWoveUd1c1Z0Q3hYenNXb0FzK3Q4TkgzYkRuMEF6T0VX?=
 =?utf-8?B?M0pQOVlJMURnbjUyU0NqTExWcW5lT0JJd3VacGY2SU9COTdSdFZ3V1lySXJT?=
 =?utf-8?B?dzVJbmRMK0szN0s5bkY5UFZWYXRleFdoNFVQejA3YU1WZzBGZjBTRHdJVGtn?=
 =?utf-8?B?OTVONWtxK0tnYUdIV1cxYS9DL0xSOThIOUdNTHVOK0N1QjdGb1Y0Nk95bmRR?=
 =?utf-8?B?M01qVE94RUJwN29ENTUzRmQ5VXNrcGtidjEvZjh1M1hpUGgvSnNIcVNSMnNO?=
 =?utf-8?B?NVIxZm9QREhNQTJPQmhpYjF0bVhBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2450B849D0A65743A71E75FC31FACEB3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b653cb07-3b75-428d-8a87-08dd2fedcd0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 14:07:35.0048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hKOmOc9GCO6sT+1pD8Zi2l7Iz9voaDIfIXF4+V/gOKTXjdbHTxiEXtKmO8jEZord2pqU/ZpFK0l9xcPSo5oynwz/7J4MM1BmN5eL1dBWRQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5060
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

T24gTW9uLCAyMDI1LTAxLTA2IGF0IDA5OjQ1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBEaXNhYmxlIExPQkYvQUxQTSBmb3IgYW55IGVycm9uZW91cyBjb25kaXRpb24gZnJvbSBzaW5r
IHNpZGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5h
QGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hbHBtLmPCoMKgwqDCoCB8IDM4DQo+ICsrKysrKysrKysrKysrKysrKysNCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaMKgwqDCoMKgIHzCoCAxICsNCj4gwqAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKgIDEgKw0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoCB8
wqAgMiArDQo+IMKgNCBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBpbmRleCAxY2MwZTVl
ZDNmNzQuLmFiOThiNDhlYzQ3ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMNCj4gQEAgLTM4OCw2ICszODgsNyBAQCB2b2lkIGludGVsX2FscG1fY29u
ZmlndXJlKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgCQkJwqAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IMKgew0KPiDCoAlsbmxfYWxwbV9j
b25maWd1cmUoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiArCWludGVsX2RwLT5hbHBtX3BhcmFt
ZXRlcnMudHJhbnNjb2RlciA9IGNydGNfc3RhdGUtDQo+ID5jcHVfdHJhbnNjb2RlcjsNCj4gwqB9
DQo+IMKgDQo+IMKgdm9pZCBpbnRlbF9hbHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiBAQCAtNTExLDMgKzUxMiw0MCBAQCB2b2lkIGludGVs
X2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IpDQo+IMKgCWRlYnVnZnNfY3JlYXRlX2ZpbGUoImk5MTVfZWRwX2xvYmZfaW5mbyIsIDA0NDQs
IHJvb3QsDQo+IMKgCQkJwqDCoMKgIGNvbm5lY3RvciwgJmk5MTVfZWRwX2xvYmZfaW5mb19mb3Bz
KTsNCj4gwqB9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfYWxwbV9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICsJc3RydWN0IGRybV9kcF9hdXggKmF1
eCA9ICZpbnRlbF9kcC0+YXV4Ow0KPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9
IGludGVsX2RwLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLnRyYW5zY29kZXI7DQo+ICsJdTggdmFsOw0K
PiArCWludCByOw0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMjApDQo+ICsJ
CXJldHVybjsNCj4gKw0KPiArCWlmICghKGludGVsX2RlX3JlYWQoZGlzcGxheSwgQUxQTV9DVEwo
ZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpKSAmIEFMUE1fQ1RMX0xPQkZfRU5BQkxFKSkNCj4g
KwkJcmV0dXJuOw0KPiArDQo+ICsJciA9IGRybV9kcF9kcGNkX3JlYWRiKGF1eCwgRFBfUkVDRUlW
RVJfQUxQTV9TVEFUVVMsICZ2YWwpOw0KPiArCWlmIChyICE9IDEpIHsNCj4gKwkJZHJtX2Vycihk
aXNwbGF5LT5kcm0sICJFcnJvciByZWFkaW5nIEFMUE0NCj4gc3RhdHVzXG4iKTsNCj4gKwkJcmV0
dXJuOw0KPiArCX0NCj4gKw0KPiArCWlmICh2YWwgJiBEUF9BTFBNX0xPQ0tfVElNRU9VVF9FUlJP
Uikgew0KPiArCQlpbnRlbF9kZV9ybXcoZGlzcGxheSwgQUxQTV9DVEwoZGlzcGxheSwNCj4gY3B1
X3RyYW5zY29kZXIpLA0KPiArCQkJwqDCoMKgwqAgQUxQTV9DVExfQUxQTV9FTkFCTEUgfA0KPiBB
TFBNX0NUTF9MT0JGX0VOQUJMRSB8DQo+ICsJCQnCoMKgwqDCoCBBTFBNX0NUTF9BTFBNX0FVWF9M
RVNTX0VOQUJMRSwgMCk7DQo+ICsNCj4gKwkJaW50ZWxfZGVfcm13KGRpc3BsYXksDQo+ICsJCQnC
oMKgwqDCoCBQT1JUX0FMUE1fQ1RMKGNwdV90cmFuc2NvZGVyKSwNCj4gKwkJCcKgwqDCoMKgIFBP
UlRfQUxQTV9DVExfQUxQTV9BVVhfTEVTU19FTkFCTEUsIDApOw0KPiArDQo+ICsJCWRybV9kYmdf
a21zKGRpc3BsYXktPmRybSwNCj4gKwkJCcKgwqDCoCAiQUxQTSBsb2NrIHRpbWVvdXQgZXJyb3Is
IGRpc2FibGluZw0KPiBMT0JGXG4iKTsNCj4gKw0KPiArCQkvKiBDbGVhcmluZyBlcnJvciAqLw0K
PiArCQlkcm1fZHBfZHBjZF93cml0ZWIoYXV4LCBEUF9SRUNFSVZFUl9BTFBNX1NUQVRVUywNCj4g
dmFsKTsNCj4gKwl9DQo+ICt9DQoNCkkgdGhpbmsgd2Ugc2hvdWxkIGNlbnRyYWxpemUgdGhpcy4g
RWl0aGVyIGludG8gaW50ZWxfcHNyLmMgb3IgaGVyZS4gSQ0KdGhpbmsgeW91IHNob3VsZCBoYXZl
IGxvY2tpbmcgZm9yIGFjY2Vzc2luZyBBTFBNX0NUTCByZWdpc3Rlci4gU2hvdWxkDQp3ZSBoYXZl
IGFsc28gb3duIGZsYWcgdGVsbGluZyBhbHBtX2NvbXB1dGVfY29uZmlnIHRoYXQgd2UgZG9uJ3Qg
d2FudCB0bw0KdXNlIExPQkY/DQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiBpbmRleCA0ODVlNTExNjI5
ZmIuLjk2ZDRjOTAzZjNlYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hbHBtLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hbHBtLmgNCj4gQEAgLTI5LDQgKzI5LDUgQEAgdm9pZCBpbnRlbF9hbHBtX3Bvc3RfcGxh
bmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoHZvaWQg
aW50ZWxfYWxwbV9sb2JmX2RlYnVnZnNfYWRkKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5l
Y3Rvcik7DQo+IMKgYm9vbCBpbnRlbF9hbHBtX2F1eF93YWtlX3N1cHBvcnRlZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKTsNCj4gwqBib29sIGludGVsX2FscG1fYXV4X2xlc3Nfd2FrZV9zdXBw
b3J0ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ICt2b2lkIGludGVsX2FscG1fc2hv
cnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+IMKgI2VuZGlmDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
DQo+IGluZGV4IDM3ZjA2MWFjYjIwNC4uNjM2YWY0YzRlOTRkIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAt
MTgwNiw2ICsxODA2LDcgQEAgc3RydWN0IGludGVsX2RwIHsNCj4gwqAjZGVmaW5lIEk5MTVfTE9C
Rl9ERUJVR19ESVNBQkxFCQkJMHgwMQ0KPiDCoCNkZWZpbmUgSTkxNV9MT0JGX0RFQlVHX0ZPUkNF
X0VOCQkweDAyDQo+IMKgCQlib29sIGxvYmZfZGVidWc7DQo+ICsJCWVudW0gdHJhbnNjb2RlciB0
cmFuc2NvZGVyOw0KPiDCoAl9IGFscG1fcGFyYW1ldGVyczsNCj4gwqANCj4gwqAJdTggYWxwbV9k
cGNkOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4
IDBkNzRhZGFlMmVjOS4uNDBmMjc2MGQ4YWFhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC01MzYzLDYgKzUzNjMsOCBAQCBpbnRlbF9kcF9zaG9y
dF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiDCoA0KPiDCoAlpbnRlbF9wc3Jf
c2hvcnRfcHVsc2UoaW50ZWxfZHApOw0KPiDCoA0KPiArCWludGVsX2FscG1fc2hvcnRfcHVsc2Uo
aW50ZWxfZHApOw0KPiArDQo+IMKgCWlmIChpbnRlbF9kcF90ZXN0X3Nob3J0X3B1bHNlKGludGVs
X2RwKSkNCj4gwqAJCXJlcHJvYmVfbmVlZGVkID0gdHJ1ZTsNCj4gwqANCg0K
