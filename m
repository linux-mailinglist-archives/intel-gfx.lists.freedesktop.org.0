Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA1FA35A59
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 10:29:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 790A910EC26;
	Fri, 14 Feb 2025 09:29:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FF7mcdcF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0135B10E48C;
 Fri, 14 Feb 2025 09:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739525363; x=1771061363;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=W/GE4mCVncqlQY7RdJbbHWYQ3v2z5HwSAZ4y4ZYPTCc=;
 b=FF7mcdcFL3DMLfAZuYXw9p+1mYbrEdx7saQeg+gMnialTheasitfxYcd
 2OKvTgFHP97+VR2jx/FC3UQCwPItagmWtQpxjJXRwxv16ZX8SK0Zxbtb9
 H5TazOrh2mDIjtQnK6+vq753BnWH377YDeS3pA+kGvUrMNRbzZALFOC//
 buPw5tju2HOM/JIxRbYcdk35Tt9i/Pq4dq03ya51BjVp3EatD0HLwsnwA
 PrXsk/J4IO5RURmMGgA1PYoEiiuicCnYTps4/n6NnVpHtl6BSCxY1xk4N
 F7t+WKy3W77/kfXhfYRG4+blFE4do/gSiD4dHZUCDKfHbLBSgQsfwxFq/ A==;
X-CSE-ConnectionGUID: FgJulp2fSfuyQeFcVk5bcQ==
X-CSE-MsgGUID: EjlmJ4h9S9OQmin2Rv+XcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57800935"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="57800935"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 01:29:23 -0800
X-CSE-ConnectionGUID: FFo3wBizSXuuQhP3oDOlaQ==
X-CSE-MsgGUID: 2+oWA18lTE2U+O0kzWp0FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118616088"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2025 01:29:23 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Feb 2025 01:29:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Feb 2025 01:29:22 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 01:29:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HERnsKBhI7BmbYGbkR/hlze7qm+Xk1vP3HZ93xMxueRYNlXjlykkD26hNM3TxT2vvwk0WuKmOXgbN0GPbOOaAa19Nr0hEsCPksGoc/3xst2fDSb2c9iXfuoNMvdFjZyTCOlvqGyFiRQOlZM8b1L+DpwyvNJqY/ZM0xLgdLEflngrE1QN0zrVlrX5/XCIW+a0k+0VQzFUdwsuWepN8G0teNQ2P0eTB/WzDAKs5RUGcgHWZ2v7El0nrn1R0S0KuF9C1HXO7xyqVpsCZ7XogUNpxBXSr1gpOpCExWAYBfFWMAZPbui5YWFUu8S1iP4p2xamaG8A+OFhBfdRM9HRCNCIHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W/GE4mCVncqlQY7RdJbbHWYQ3v2z5HwSAZ4y4ZYPTCc=;
 b=VVwjZM60+V26x72lghIUuPkQG9kqFwivKB495otw36li3yKfqBum0/2bpvudZUbRmEBhOnglsoTeiOb4TEbxZKS+/egTuuWYnNwXDKy25PdiuLsRtH6A/D+ydu2wyiFxW1J2e82/f1azjnVfBAYfmlsXeGD06av6P7CDxGgYYTFwow584f3udTaOQUoXtWtSogonuHfR3oQbwdwyVvt3hBkBnzVU6/NZ5dbdq7dL4Qx2JIAy10zZb3tg1811srm/x/a+6/aDB6o+RP9lYNzSYnNk3xed8EZkWmAESFLfRJwUkqdyQPylyRAJA9Y2FwG664Gsk17P9z/mCaMe7VKhEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CY8PR11MB7196.namprd11.prod.outlook.com (2603:10b6:930:94::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.12; Fri, 14 Feb
 2025 09:29:18 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8445.015; Fri, 14 Feb 2025
 09:29:18 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v2 2/2] drm/i915/display: Allow display PHYs to reset
 power state
Thread-Topic: [PATCH v2 2/2] drm/i915/display: Allow display PHYs to reset
 power state
Thread-Index: AQHbdvSR6jDQc2yYr0WV00RvuTGE7rNDyauAgAAAhoCAAs2REA==
Date: Fri, 14 Feb 2025 09:29:18 +0000
Message-ID: <MW4PR11MB70541326AFD94E8A2D1A2D02EFFE2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250204105358.284687-1-mika.kahola@intel.com>
 <20250204105358.284687-3-mika.kahola@intel.com>
 <Z6yyaeTnGaJnZniR@ideak-desk.fi.intel.com>
 <Z6yy2QVndgA_KW63@ideak-desk.fi.intel.com>
In-Reply-To: <Z6yy2QVndgA_KW63@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CY8PR11MB7196:EE_
x-ms-office365-filtering-correlation-id: 46d69472-d674-46dd-97fc-08dd4cda0e69
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?L3p5V1hEUHk3SGN1c0w4RzhiaU4ycVp2eWVPNDl6cEZ0cHFQSDBHYTZKeDVU?=
 =?utf-8?B?cjN5TDl5S2lJL3lVL0JaQVBSaGN3ZS9VQUhSSGZnc3A3S2VSRy9qTTBDVjJp?=
 =?utf-8?B?RUdONEplbUIwR0pLZDhtVmx0VnBTRm1qWmdGbkoxNGJkVWtMbjV6ZGJyTlMw?=
 =?utf-8?B?NTBFMkQ4SldlQ3l2cStLL2JVc05uajVWTWxGRDFrZkkxd3dFTEVKbis4L1RW?=
 =?utf-8?B?R3ZTNkM4a3FiRWFwM1ZMeFhJeWkzNzE1MHNnZEVFeXovWlJmemF6U29yY0tr?=
 =?utf-8?B?OGlWYWFqM01iekZWN1g5aHlyQ0tlTGptVGVuU21zc1pqLzlsWE9VNFBrTG1E?=
 =?utf-8?B?M20xT3hKZmMzS2owcmdicGlJRFhhN0JqRkxYQm9EQmMrWjdORW83OUs1Z3d2?=
 =?utf-8?B?T3FXeGNrSDJFRDF3UUp6aHJpdzdRdk02Mm5weHlkVVBPZVd5NkQweEN2ODBE?=
 =?utf-8?B?b1I0Y0dQbTVLSkdiV3ppbkNRMEE0dExzdERGb0EzU0tEeU9lS2ZTZEd5QnVx?=
 =?utf-8?B?MTJ4MVgvRGlVWXJWbmxGaFJicm9HeWFLSTJuUkY3NVBYZkIvN3V6TFdQMGpY?=
 =?utf-8?B?dlBMOVVCd3o3SlQzR0V5Wm9KWkdhMDZCUHRTTTJGMnVFdnlhMlhvdWtCQlVn?=
 =?utf-8?B?YzhNelp4VDdsRjFLcStieUpZZTkyenpvZGxTbXFhZUdiRStONmFjYm4rZGxy?=
 =?utf-8?B?bEhIM05KNERzblVMaFF2bzU2SDg2UnZHSzVyaVFIMmx6VGZWOE8yaTRFZHRK?=
 =?utf-8?B?QUlBakN5c245R3ZCRlRybzZmTEpENjFkcklud2F5aG83MVVMN3F1RlBYZFhh?=
 =?utf-8?B?cWEvTlA2Si85dEtRR1ExQmN3WWFXV3FPSnRNZGlKU3ZIenBtUForUHp6TmJY?=
 =?utf-8?B?VEF3aXczU0YwRzNGd0JlbU5xMFZ5aWE4K1ZVM0R4UXJaZE5rRmxXaGVRU0FE?=
 =?utf-8?B?UmlKc0I2RmxtcmNtOU54a3o5MmJFZXNwSkhnQ2hCeGsvNC9QV1hFQUNKS01i?=
 =?utf-8?B?RmNFTXo5RjUzdThGWGFuZmVpeXhqekMrYWNsd0Nxbk9Db2xkaVlpVitqMjNI?=
 =?utf-8?B?bExxQkFJSnhLa2N6WGYvMHJ4cmZQb0s5ekhGTHFaREdZakRnZDErRys4TTNh?=
 =?utf-8?B?U0EzRE1LUExTcEppN3ExdVRwNE0zcHZBTjZ0ZmQzbUM5TThEeXlDQlJWcVR5?=
 =?utf-8?B?N2d5S0tWRVM3cHBIcXU1MGI0ZnBkeFl2S0RxL2RITzBRVmJHTGpRdTZnSHRT?=
 =?utf-8?B?MFBxK0EwOHNpMG0xRk50cGZVbzJERW5mZTdCd05FeXVHSng3Tmw5VU9tbnQy?=
 =?utf-8?B?aFVUL0FXR1l3MGVFNEM2T2Roa2lESzNJeU5aYWNuc1NsRVB3c21VUmRUdEFr?=
 =?utf-8?B?MzFFSUsxR0FPY0VWck5LRVVZcW50Z1BNaGR1d01KMUkrVXQ5cHZHa0RCMCt4?=
 =?utf-8?B?d0oyQ01xSmRJS2R1c1ZVRWVuSGFrNW8xTWxxb2tMMVRxeDR3S2E0eWI5bXl0?=
 =?utf-8?B?SjA2UDhXSGlHKzNoNnMwc2FiQk43R0NLbU5TdFVNdTRoUVEwOGZJa0pmZm9p?=
 =?utf-8?B?OVhnSThLcG5OOGhybVNCMVd5Rmw0RHVBdWQrNHNoNU43V29SNlJHc3hUVU0z?=
 =?utf-8?B?dmJBdm5PVEJyNGxUeVVIRjRHRmZOZnVzU2ZRTXBLOCtiN1BWWEFINkkzSFV1?=
 =?utf-8?B?OURZWnNWbmJQYlRJZlcrcnRrREU5MFFpZ01Vc21hRkIvdmdFRGtsNlpmMnI1?=
 =?utf-8?B?aWhINjdzdHY4eUhTQS81MC96dGNjZHhiS0ZNeDIyOGZ0VWhGYXdZdTh4dlM4?=
 =?utf-8?B?M3hqbUFsMVR2bzQ4dEpjRmVoOEI0WEtzZVdORTEybGpQSXlROW9FTDZCU1Uv?=
 =?utf-8?B?V21zeWJMNXFLN3laRFR2eCt3UWZIUEMwWDBHQ1h3YWE2WnlTY1VDVzd0U3hR?=
 =?utf-8?Q?lFBxOrBKKK+ZrBlNrIIg/qmPUUJxv+VP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QXNCdEtCdnlBdzJGRC9oMlo0Z0JXVW00b3AvMzhPWFExY3lKUGtKSzl5anBk?=
 =?utf-8?B?WDRlU0xXTFNpaTkycHo0ZnFrNjQ5Ui9GbURCZTBTTFJ3MVNJY3lzWGdMQWc1?=
 =?utf-8?B?U0xSYXV3b2twcFhodTZaU0VlWEY3WjJucUxaRVZjVXd3Q0t6Q3ZadTZmZy9J?=
 =?utf-8?B?a1BVS1F1TzloOU9IWjByZ0lNcVdVV3pEM1NDOTVXazRHZXBxMmh3MjI5YTU1?=
 =?utf-8?B?WWNjaDhPVFpySFZRWHo4N0RNS0d4eFJmK1hqSHdVM09lL3NlZzBQYU9FMENk?=
 =?utf-8?B?UGxRUkE5OXZ5SFhvSm0xU3BLZDFabmc0TS9HaXFFcVBMTEQzdTh2UDgyS0hi?=
 =?utf-8?B?U1BtbHNzSGxDeFdZS21tQnR5T1pUNXVHUzB6S0pjT2pCSW1GMlZNUjQ0bHhl?=
 =?utf-8?B?dk9Rd2I2TWxZRkNyeWNvdVppNmNQN0JtQnhmR1JLblVLS1RBdjdsaks5blpH?=
 =?utf-8?B?ejJNKzl5Z3JPS05aQWR4S0tRWEZpVGozOUpwUUdERWFRRHlNczRvQkxMNjZD?=
 =?utf-8?B?aEZNbEpRM3JMR2g2TkR5c1JrRkM4d1NhUDFqS3Q1QzF6a1psa0FES292R0dP?=
 =?utf-8?B?ck9Pb2pvcG5hVlhaMngvOHRYR08zTlppZEpVbElsUER2Z0QvMkdLb2EvSmJ4?=
 =?utf-8?B?RURlS0lGNVc3MWo1ZGRZQjc1Y3hyTXIzOFd0T2I1dDN2Wk1YVlc2RTMwRHhy?=
 =?utf-8?B?SnVtTkplYXNDNXBuNGcwTWY3MU53NHIvSXVTNnZBSlpTV0I4MDhqM2laalZu?=
 =?utf-8?B?dW1RYlR2OHQ2RVV4ZE9XY3RGRXRaSm83ajVxaStHbmY5U3AwR2dDSFBjamtZ?=
 =?utf-8?B?K0QzYThRUFdqZUpvcDJ3TGFjdzRHVktjRGp6Y1IxT29SdTBCSTF3cEFIOVg3?=
 =?utf-8?B?SUJBc3lnaTZjVUc5R0tlblhFcGhwVEwyU0tyeHpMdzhqMDQvTXFiNGdBYW1z?=
 =?utf-8?B?UmxqYU5RVzFOV2JKajkybllodVczMHhYRDkrYTdzcVFSdEpEV1dpc21jNmpO?=
 =?utf-8?B?aXg3RjJVenhDbGo1VU9ucEVWQUVtK0ZhbWdyNndXbENTZUVZZGkyZ292eEFM?=
 =?utf-8?B?YmN4V0tIQTNwZWN0ekpodE4wUDdqUDdVYkRnY3BVUStHNmtVS1MrTjFFdkFZ?=
 =?utf-8?B?TUpsdFNKeTd0TVdFbkxkVXh2K3RrSG0xbzlGZFFxWnBxQU0wL1l6RkN6MnVV?=
 =?utf-8?B?WGZMeHlYOG52SzB6alRieGlyaW84cG9RM3pHZFdKWHphR1kvWGY2Zm1DbXdD?=
 =?utf-8?B?S0xCTmxoTlJXNXBXWmtlUWNDRUM2MHplcmJqRDRTRjhaaCszQ0RRL2tsL0hL?=
 =?utf-8?B?VWlCb3l0L21mU21tNzE2SzR0cTE2Q1ZGaVl4bzlzZWk1a29VUlNXYU0yWXgz?=
 =?utf-8?B?S1U5b3MyWXhFUnFTWHFYYUlNcjNTUlJ1WCswaDdwcHAzUVNsU0pZNnNMSkw0?=
 =?utf-8?B?aldLRDZpZ1Y2emptNFZvZzFSSExLaEI3SHRWeC8zczhFLzlQdEtMSmQ1Sm1y?=
 =?utf-8?B?ZlBkc3duNFp2STJYUU1hcWhnYWdYT3hhYVR2N2lDK2dCOGxIN0dqQXR5WEpj?=
 =?utf-8?B?UUdXSFNCU0cvcnFjSVlXdHNtRk1kYUVZMzQvS3M4SkpZbGhEQTIrNlQ2M29Y?=
 =?utf-8?B?dWxzd1c0NGlWT0FxWjExWVVrK0M5cVFHWEdnZmRNNEpCVm9LSGhpdVByRUJt?=
 =?utf-8?B?QWRzYmwyVDFKY1UyOE9TUXhUbHlCQk1EZVpUbnZHMEhnQ3RjUU1wUGZvc1NS?=
 =?utf-8?B?bHEzOFdqeDd4dlpQN1YrRHd4R2J3OFdHVlFiVmVGM0FSaGU1SHpnd0I1SDNw?=
 =?utf-8?B?dWtaL1gvb2pURFhtQ1hNWG5uRk4zb3JBUHczTWk5OTFJUWJmdE01NzVjUnZw?=
 =?utf-8?B?Uk1qUmpLYkZsM2paNGY3Ty8vRjFRTkd4NlpzRnk0ZEh4alJDV2w0bWwzbWdv?=
 =?utf-8?B?NlNlMzZ6QllWemcwUHlxaURSZ1JYaE5QellZakJVd1VEbnEzcnhoUVY1OHFW?=
 =?utf-8?B?blJDSlBaQUN1YzdhZUhtWTBVK3gvUWorZm9qeFRGWStnNTkzS2NSckdUeVYv?=
 =?utf-8?B?R3dUNWRYWnR1YVRVbDlUVnQ5Y2JrOFQ5K2RPWU44NVYzdnpPblFYRmwrR3c1?=
 =?utf-8?Q?XhlA8kZeMX9NkauXtE7SZEufq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46d69472-d674-46dd-97fc-08dd4cda0e69
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2025 09:29:18.4545 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j9C2wICqHAQmK2lDODf3qnMkw9DX/nshnDVaIu2Ej3/9BIj4Teu+ho0yNgmIC4geVmWY7p+tT5B6/qQjzTIs+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7196
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIDEyIEZlYnJ1YXJ5IDIwMjUgMTYuNDAN
Cj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtDQo+IHhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsg
amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMi8y
XSBkcm0vaTkxNS9kaXNwbGF5OiBBbGxvdyBkaXNwbGF5IFBIWXMgdG8gcmVzZXQgcG93ZXINCj4g
c3RhdGUNCj4gDQo+IE9uIFdlZCwgRmViIDEyLCAyMDI1IGF0IDA0OjM4OjMzUE0gKzAyMDAsIElt
cmUgRGVhayB3cm90ZToNCj4gPiBPbiBUdWUsIEZlYiAwNCwgMjAyNSBhdCAxMjo1Mzo1OFBNICsw
MjAwLCBNaWthIEthaG9sYSB3cm90ZToNCj4gPiA+IFRoZSBkZWRpY2F0ZWQgZGlzcGxheSBQSFlz
IHJlc2V0IHRvIGEgcG93ZXIgc3RhdGUgdGhhdCBibG9ja3MgUzBpeCwNCj4gPiA+IGluY3JlYXNp
bmcgaWRsZSBzeXN0ZW0gcG93ZXIuIEFmdGVyIGEgc3lzdGVtIHJlc2V0IChjb2xkIGJvb3QsDQo+
ID4gPiBTMy80LzUsIHdhcm0gcmVzZXQpIGlmIGEgZGVkaWNhdGVkIFBIWSBpcyBub3QgYmVpbmcg
YnJvdWdodCB1cA0KPiA+ID4gc2hvcnRseSwgdXNlIHRoZXNlIHN0ZXBzIHRvIG1vdmUgdGhlIFBI
WSB0byB0aGUgbG93ZXN0IHBvd2VyIHN0YXRlDQo+ID4gPiB0byBzYXZlIHBvd2VyLg0KPiA+ID4N
Cj4gPiA+IDEuIEZvbGxvdyB0aGUgUExMIEVuYWJsZSBTZXF1ZW5jZSwgdXNpbmcgYW55IHZhbGlk
IGZyZXF1ZW5jeSBzdWNoIGFzIERQIDEuNjINCj4gR0h6Lg0KPiA+ID4gICAgVGhpcyBicmluZ3Mg
bGFuZXMgb3V0IG9mIHJlc2V0IGFuZCBlbmFibGVzIHRoZSBQTEwgdG8gYWxsb3cgcG93ZXJkb3du
IHRvIGJlDQo+IG1vdmVkDQo+ID4gPiAgICB0byB0aGUgRGlzYWJsZSBzdGF0ZS4NCj4gPiA+IDIu
IEZvbGxvdyBQTEwgRGlzYWJsZSBTZXF1ZW5jZS4gVGhpcyBtb3ZlcyBwb3dlcmRvd24gdG8gdGhl
IERpc2FibGUgc3RhdGUNCj4gYW5kIGRpc2FibGVzIHRoZSBQTEwuDQo+ID4gPg0KPiA+ID4gdjI6
IFJlbmFtZSBXQSBmdW5jdGlvbiB0byBtb3JlIGRlc2NyaXB0aXZlIChKYW5pKQ0KPiA+ID4gICAg
IEZvciBQVEwsIG9ubHkgcG9ydCBBIG5lZWRzIHRoaXMgd2ENCj4gPiA+ICAgICBBZGQgaGVscGVy
cyB0byBjaGVjayBwcmVzZW5jZSBvZiBDMTAgcGh5IGFuZCBwbGwgZW5hYmxpbmcgKEltcmUpDQo+
ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3gwX3BoeS5jICB8IDQ1DQo+ID4gPiArKysrKysrKysrKysrKysrKysrICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaCAgfCAgMSArDQo+ID4gPiAgLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZXNldC5jICAgIHwgIDIgKw0KPiA+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8ICAyICsNCj4gPiA+
ICA0IGZpbGVzIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKykNCj4gPiA+DQo+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+IGlu
ZGV4IGJmZmUzZDRiYmU4Yi4uYmQzM2ViYjhjNzFlIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPiBAQCAtMzU1OSwz
ICszNTU5LDQ4IEBAIHZvaWQgaW50ZWxfY3gwcGxsX3N0YXRlX3ZlcmlmeShzdHJ1Y3QNCj4gaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+ICAJZWxzZQ0KPiA+ID4gIAkJaW50ZWxfYzIw
cGxsX3N0YXRlX3ZlcmlmeShuZXdfY3J0Y19zdGF0ZSwgY3J0YywgZW5jb2RlciwNCj4gPiA+ICZt
cGxsX2h3X3N0YXRlLmMyMCk7ICB9DQo+ID4gPiArDQo+ID4gPiArc3RhdGljIGJvb2wgaW50ZWxf
Y3gwX3BsbF9pc19lbmFibGVkKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+ID4g
K2VudW0gcG9ydCBwb3J0KSB7DQo+ID4gPiArCXUzMiB2YWwgPSBpbnRlbF9kZV9yZWFkKGRpc3Bs
YXksIFhFTFBEUF9QT1JUX0NMT0NLX0NUTChkaXNwbGF5LA0KPiA+ID4gK3BvcnQpKTsNCj4gPiA+
ICsNCj4gPiA+ICsJaWYgKFJFR19GSUVMRF9HRVQoWEVMUERQX0RESV9DTE9DS19TRUxFQ1RfTUFT
SywgdmFsKSA9PQ0KPiBYRUxQRFBfRERJX0NMT0NLX1NFTEVDVF9OT05FKQ0KPiA+ID4gKwkJcmV0
dXJuIGZhbHNlOw0KPiA+DQo+ID4gU2hvdWxkbid0IHRoaXMgY2hlY2sgaWYgdGhlIFBMTCByZXF1
ZXN0IGZvciBlaXRoZXIgbGFuZSBpcyBzZXQgaW4NCj4gPiBYRUxQRFBfUE9SVF9DTE9DS19DVEw/
IEFGQUlDUyB0aGF0J3Mgd2hhdCBhY3R1YWxseSBlbmFibGVzIHRoZSBQTEwsDQo+ID4gd2hpbGUg
dGhlIGFib3ZlIGlzIGp1c3Qgc29tZSBjb25maWd1cmF0aW9uLg0KPiA+DQo+ID4gPiArDQo+ID4g
PiArCXJldHVybiB0cnVlOw0KPiA+ID4gK30NCj4gPiA+ICsvKg0KPiA+ID4gKyAqIFdBIDE0MDIy
MDgxMTU0DQo+ID4gPiArICogVGhlIGRlZGljYXRlZCBkaXNwbGF5IFBIWXMgcmVzZXQgdG8gYSBw
b3dlciBzdGF0ZSB0aGF0IGJsb2Nrcw0KPiA+ID4gK1MwaXgsIGluY3JlYXNpbmcgaWRsZQ0KPiA+
ID4gKyAqIHN5c3RlbSBwb3dlci4gQWZ0ZXIgYSBzeXN0ZW0gcmVzZXQgKGNvbGQgYm9vdCwgUzMv
NC81LCB3YXJtDQo+ID4gPiArcmVzZXQpIGlmIGEgZGVkaWNhdGVkDQo+ID4gPiArICogUEhZIGlz
IG5vdCBiZWluZyBicm91Z2h0IHVwIHNob3J0bHksIHVzZSB0aGVzZSBzdGVwcyB0byBtb3ZlIHRo
ZQ0KPiA+ID4gK1BIWSB0byB0aGUgbG93ZXN0DQo+ID4gPiArICogcG93ZXIgc3RhdGUgdG8gc2F2
ZSBwb3dlci4gRm9yIFBUTCB0aGUgd29ya2Fyb3VuZCBpcyBuZWVkZWQgb25seQ0KPiA+ID4gK2Zv
ciBwb3J0IEEuIFBvcnQgQg0KPiA+ID4gKyAqIGlzIG5vdCBjb25uZWN0ZWQuDQo+ID4gPiArICoN
Cj4gPiA+ICsgKiAxLiBGb2xsb3cgdGhlIFBMTCBFbmFibGUgU2VxdWVuY2UsIHVzaW5nIGFueSB2
YWxpZCBmcmVxdWVuY3kgc3VjaCBhcyBEUA0KPiAxLjYyIEdIei4NCj4gPiA+ICsgKiAgICBUaGlz
IGJyaW5ncyBsYW5lcyBvdXQgb2YgcmVzZXQgYW5kIGVuYWJsZXMgdGhlIFBMTCB0byBhbGxvdyBw
b3dlcmRvd24gdG8NCj4gYmUgbW92ZWQNCj4gPiA+ICsgKiAgICB0byB0aGUgRGlzYWJsZSBzdGF0
ZS4NCj4gPiA+ICsgKiAyLiBGb2xsb3cgUExMIERpc2FibGUgU2VxdWVuY2UuIFRoaXMgbW92ZXMg
cG93ZXJkb3duIHRvIHRoZSBEaXNhYmxlDQo+IHN0YXRlIGFuZCBkaXNhYmxlcyB0aGUgUExMLg0K
PiA+ID4gKyAqLw0KPiA+ID4gK3ZvaWQgcHRsX3Bvd2VyX3NhdmVfd2Eoc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkpDQo+ID4NCj4gPiBJJ2QgY2FsbCBpdCBpbnRlbF9jeDBfcGxsX3Bvd2Vy
X3NhdmVfd2EoKSBmb2xsb3dpbmcgdGhlIG5hbWluZyBydWxlDQo+ID4gZm9yIGV4cG9ydGVkIGZ1
bmN0aW9ucy4NCj4gPg0KPiA+ID4gK3sNCj4gPiA+ICsJc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXI7DQo+ID4gPiArDQo+ID4gPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSAhPSAzMCkN
Cj4gPiA+ICsJCXJldHVybjsNCj4gPiA+ICsNCj4gPiA+ICsJZm9yX2VhY2hfaW50ZWxfZW5jb2Rl
cihkaXNwbGF5LT5kcm0sIGVuY29kZXIpIHsNCj4gPiA+ICsJCXN0cnVjdCBpbnRlbF9jeDBwbGxf
c3RhdGUgcGxsX3N0YXRlID0ge307DQo+ID4gPiArCQlpbnQgcG9ydF9jbG9jayA9IDE2MjAwMDsN
Cj4gPiA+ICsNCj4gPiA+ICsJCWlmICghaW50ZWxfZW5jb2Rlcl9pc19jMTBwaHkoZW5jb2Rlcikp
DQo+ID4gPiArCQkJY29udGludWU7DQo+ID4gPiArDQo+ID4gPiArCQlpZiAoaW50ZWxfY3gwX3Bs
bF9pc19lbmFibGVkKGRpc3BsYXksIGVuY29kZXItPnBvcnQpKQ0KPiA+ID4gKwkJCWNvbnRpbnVl
Ow0KPiA+ID4gKw0KPiA+ID4gKwkJaW50ZWxfYzEwcGxsX2NhbGNfc3RhdGVfZnJvbV90YWJsZShl
bmNvZGVyLA0KPiBtdGxfYzEwX2VkcF90YWJsZXMsDQo+ID4gPiArcG9ydF9jbG9jaywgdHJ1ZSwg
JnBsbF9zdGF0ZSk7DQo+IA0KPiBUaGlzIHNob3VsZCBjaGVjayBmb3IgZXJyb3IgcmV0dXJuLg0K
SSB3aWxsIGFkZCBhbiBlcnJvciBjaGVjay4NCg0KPiANCj4gPiA+ICsJCV9faW50ZWxfY3gwcGxs
X2VuYWJsZShlbmNvZGVyLCAmcGxsX3N0YXRlLCB0cnVlLCBwb3J0X2Nsb2NrLCA0KTsNCj4gPiA+
ICsJCWludGVsX2N4MHBsbF9kaXNhYmxlKGVuY29kZXIpOw0KPiA+ID4gKwl9DQo+ID4gPiArfQ0K
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gw
X3BoeS5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3Bo
eS5oDQo+ID4gPiBpbmRleCA1NzNmYTdkM2U4OGYuLjA2MzQ2ZTRjNTA3OSAxMDA2NDQNCj4gPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5oDQo+ID4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaA0KPiA+
ID4gQEAgLTQyLDUgKzQyLDYgQEAgYm9vbCBpbnRlbF9jeDBwbGxfY29tcGFyZV9od19zdGF0ZShj
b25zdCBzdHJ1Y3QNCj4gPiA+IGludGVsX2N4MHBsbF9zdGF0ZSAqYSwgIHZvaWQgaW50ZWxfY3gw
X3BoeV9zZXRfc2lnbmFsX2xldmVscyhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwN
Cj4gPiA+ICAJCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSk7ICBpbnQNCj4gPiA+IGludGVsX210bF90YnRfY2FsY19wb3J0X2Nsb2NrKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyKTsNCj4gPiA+ICt2b2lkIHB0bF9wb3dlcl9zYXZlX3dhKHN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gPiA+DQo+ID4gPiAgI2VuZGlmIC8qIF9fSU5U
RUxfQ1gwX1BIWV9IX18gKi8NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVzZXQuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVzZXQuYw0KPiA+ID4gaW5kZXggMDkzYjM4NmM5
NWU4Li5iNzU4MjdmZjljN2UgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVzZXQuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Jlc2V0LmMNCj4gPiA+IEBAIC03LDYgKzcs
NyBAQA0KPiA+ID4NCj4gPiA+ICAjaW5jbHVkZSAiaTkxNV9kcnYuaCINCj4gPiA+ICAjaW5jbHVk
ZSAiaW50ZWxfY2xvY2tfZ2F0aW5nLmgiDQo+ID4gPiArI2luY2x1ZGUgImludGVsX2N4MF9waHku
aCINCj4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9kcml2ZXIuaCINCj4gPiA+ICAjaW5j
bHVkZSAiaW50ZWxfZGlzcGxheV9yZXNldC5oIg0KPiA+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNw
bGF5X3R5cGVzLmgiDQo+ID4gPiBAQCAtMTE2LDYgKzExNyw3IEBAIHZvaWQgaW50ZWxfZGlzcGxh
eV9yZXNldF9maW5pc2goc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gPiAg
CQlpbnRlbF9wcHNfdW5sb2NrX3JlZ3Nfd2EoZGlzcGxheSk7DQo+ID4gPiAgCQlpbnRlbF9kaXNw
bGF5X2RyaXZlcl9pbml0X2h3KGRpc3BsYXkpOw0KPiA+ID4gIAkJaW50ZWxfY2xvY2tfZ2F0aW5n
X2luaXQoaTkxNSk7DQo+ID4gPiArCQlwdGxfcG93ZXJfc2F2ZV93YShkaXNwbGF5KTsNCj4gPiA+
ICAJCWludGVsX2hwZF9pbml0KGk5MTUpOw0KPiA+ID4NCj4gPiA+ICAJCXJldCA9IF9faW50ZWxf
ZGlzcGxheV9kcml2ZXJfcmVzdW1lKGRpc3BsYXksIHN0YXRlLCBjdHgpOyBkaWZmDQo+ID4gPiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiA+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiA+
IGluZGV4IGI4ZmEwNGQzY2Q1Yy4uMjQ4OTNkMmY3OWUzIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+ID4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiA+IEBAIC0y
Nyw2ICsyNyw3IEBADQo+ID4gPiAgI2luY2x1ZGUgImJ4dF9kcGlvX3BoeV9yZWdzLmgiDQo+ID4g
PiAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+ID4gPiAgI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+
ID4gPiArI2luY2x1ZGUgImludGVsX2N4MF9waHkuaCINCj4gPiA+ICAjaW5jbHVkZSAiaW50ZWxf
ZGUuaCINCj4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiA+ID4gICNp
bmNsdWRlICJpbnRlbF9ka2xfcGh5LmgiDQo+ID4gPiBAQCAtNDU1Miw2ICs0NTUzLDcgQEAgc3Rh
dGljIHZvaWQgc2FuaXRpemVfZHBsbF9zdGF0ZShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwNCj4gPiA+ICAJCXJldHVybjsNCj4gPiA+DQo+ID4gPiAgCWFkbHBfY210Z19jbG9ja19n
YXRpbmdfd2EoaTkxNSwgcGxsKTsNCj4gPiA+ICsJcHRsX3Bvd2VyX3NhdmVfd2EoJmk5MTUtPmRp
c3BsYXkpOw0KPiA+DQo+ID4gVGhlIFdBIGlzIGFwcGxpZWQgaWYgdGhlIFBMTCBpcyBub3Qgb24s
IHNvIGF0IGxlYXN0IGxvZ2ljYWxseSBpdA0KPiA+IHNob3VsZCBiZSBhcHBsaWVkIGJlZm9yZSB0
aGUgIXBsbC0+b24gY2hlY2sgYWJvdmUuDQo+ID4NCj4gPiA+DQo+ID4gPiAgCWlmIChwbGwtPmFj
dGl2ZV9tYXNrKQ0KPiA+ID4gIAkJcmV0dXJuOw0KPiA+ID4gLS0NCj4gPiA+IDIuNDMuMA0KPiA+
ID4NCg==
