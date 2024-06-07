Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB9F900148
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 12:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5396D10EBC9;
	Fri,  7 Jun 2024 10:53:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PmCpk3UX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB90210EBC9
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 10:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717757600; x=1749293600;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QF8kVw2dCbh6HqV3Lkaeh6LS/B+QlDRFYqCsLY4D+Ns=;
 b=PmCpk3UXT2D+xF75FEHLrdMIecOQCNvDHDbqAYq6LBYoFpTz3PD+xFdM
 ZIJ86G/3EQNTPDOzGfpiNXXBQ6nOjOJ34wglH+uBJFYPYlOk2uBa7SMgE
 ahTvTPidn5JWFTR8IM0049UmVs+jEnGpVTT/W7h3/rzFy92rppweEZHxz
 mELypM1Rhocq8SP+NVMg03xcmeQfaoJ+I2CO0RvRyeQcuF8B3I2tiuZCX
 rdZbG4JVsjwNprMzOTtQ296mwF59GSZNZ9DnyP+GUOu/hXUl103jAE857
 MM5BsgENqsDbrkz+QDVdHH2f8VLMEeG27XImUMBD2ljvtoezKCRgTMxx7 w==;
X-CSE-ConnectionGUID: E38IWRB9S4uaRHdOPfpuPw==
X-CSE-MsgGUID: Sf3rbIjZQ0eIm7B3wc7QCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14215312"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="14215312"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 03:53:20 -0700
X-CSE-ConnectionGUID: KfIt2H8eTo2IHz5rWX/Klg==
X-CSE-MsgGUID: jQeOVwO2QIKet+J/qV5tNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="38864657"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jun 2024 03:53:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 03:53:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 7 Jun 2024 03:53:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 7 Jun 2024 03:53:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B5vkRVkkFLuirAJLlmsrLu0O7C+K9PNm/zr48HterDP9HIXRXtkBvQg5gtYcFdUWIeb52U/cOD/Bht2Y+Zh/99Xgd/WoSw6VH6E/X9Q6taBqVFgaEpy7eqKgrSHxkrPtnDmMYUotUUfbZyL0K5eMqqkp1kXW4BIijgnVsg/WlZ8dtHlkosGd18vd1f6RZMDwz4UmYUj30xGQSxRoPRlz9IKh9lh7Dh0vY7rgRZl2yt51eqO6XoXzAt1dno4oxjnAmU0RB3D6O854aplTh33mXygyZQL+3DWjGu/0OdkrZndTEubor1+fZrtTZCvTAlWqeIcKrHpDJAOT/YNLRzcUBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QF8kVw2dCbh6HqV3Lkaeh6LS/B+QlDRFYqCsLY4D+Ns=;
 b=HqvAI99z+m8GYcCuzWMQPMjxGsKrOnTAGTLrZOP/QuX/gVNapdXJU66UpiBFV1kZ1vAnIb1FY1TAfkwPbkSjpewsR6CWqNPSpfYsQTbPhsr6iCuEEnDpsRZCAAN4MSAPo11FshehdyHpnU4wt+tGA/C6jrW2lEMZXl5fP04lkN3oikqWYcHsCM1+JkfZGQcqC6PLfmINfXj94h9LB/X+SpdfkQjF1u8QcdWELwG2lfTPZ1tDKJxpNeypfV0y84/i8oiJ5RbKB+vvxj3i0BZvDG3WACcEz2raZSR5FpUOQHXgLKR8hRKrVMkw+YDMRMhZZz7dv0sd8tYdvNkcCggSEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SN7PR11MB6900.namprd11.prod.outlook.com (2603:10b6:806:2a8::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Fri, 7 Jun
 2024 10:53:16 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Fri, 7 Jun 2024
 10:53:16 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Topic: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Index: AQHatzLdsIUoGo+1NESwzwj69wwgrLG6zW5ggAATFICAATOIsIAAAXuAgAAAuaCAAAFQAIAACvlQ
Date: Fri, 7 Jun 2024 10:53:16 +0000
Message-ID: <PH7PR11MB5981872D0C841B43D2220841F9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-11-jouni.hogander@intel.com>
 <PH7PR11MB598181E00446463602261261F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <9ee0016b8bc858f011066d22703bcbc06d054515.camel@intel.com>
 <PH7PR11MB5981E238DC3174FDA40FE79AF9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <60a3055fc15403eb21cf003ff67c64a0bdebf7f6.camel@intel.com>
 <PH7PR11MB59817199FD450B51364D9DF8F9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <4416b96b35f783d631838e53a49d8c44bc11efde.camel@intel.com>
In-Reply-To: <4416b96b35f783d631838e53a49d8c44bc11efde.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SN7PR11MB6900:EE_
x-ms-office365-filtering-correlation-id: 23f1af12-f7d3-42cd-7017-08dc86e00946
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?aDJiNXJmWkV6ekp0YWJnSWNsUUNlUy8vTmlYOEZ3Y2JJSjRsaUxhdFpqNHJz?=
 =?utf-8?B?Z0ZaSmxaS05CNWFHNWxqNnR3ckorSExWWkFmYnRVU0VXYko4NUd1M0h1d1dV?=
 =?utf-8?B?d3JzQUg4Z3l1RlpKSSs0WlJmNlBwYnlxQndOdTRtZFhKd2RVTUYwZW0ySXdW?=
 =?utf-8?B?Q0hkSEIrRnlGOUNmR01PNnp4LzdXRFZKYUxTMEdibTBUQmRMbVQyd2lDVk16?=
 =?utf-8?B?bG81S3NmU1BFcFNuTlZsNDlqRWFMbDJrSUVtQ2JGVlorTU9mMTV1RW0xOGtX?=
 =?utf-8?B?QkZxMDhUMU92QUtNaEo5Z1l2OUh0eDdDdUVScVcvVVFST0RJcWh5UXhqbWta?=
 =?utf-8?B?RlY0RStYMkhQbmN6ZEkya3VqM2dJNmtobldHb3NIWHpyazJ6dGNyMjAwTThF?=
 =?utf-8?B?cU03c0pNWU5GNUF6VjRBdVU1eFZYM09wL0c4Yi9WMzd1R3JxME82L0ZCaDhJ?=
 =?utf-8?B?TjV5ZWFzYlord1lDYUJBaHVzbU12T2kzQU1OUkdZQTkxYmExRCtRT2dMSlZq?=
 =?utf-8?B?SGFoTjdQTk1kVm1wOXliZnZuVWJ2dlhBZ3ZjdGRZb2JNcTR5NmxldVI3SVcy?=
 =?utf-8?B?NS9GNHAyWEhDWms1U0g0alNwMlBSQ1VXTUIwZ1lSMDFaYzZwWldHOEMxT0Ju?=
 =?utf-8?B?eTB4TmtCU1R5VUtXWVJadVBiWXZDN2RTajRieXM2RWd0c0I0dzduQ1pneTlK?=
 =?utf-8?B?RmNFTVdnaFExUWJRQXRNb25jTVNiczB3VWxmdUlRQzJIMVBsVGtTeXYrcHJx?=
 =?utf-8?B?WXBRNG5iS2poWi9LMVFrN0hFODlnWlN1Z2dOMzZNZW52NkNXSWhCbWlvdE1M?=
 =?utf-8?B?Yis1anVlMWg5VU1xK0FvaUlBVTUzUUNZMFdWcVRJU0xNS1VQZ2dHSjB6NmRW?=
 =?utf-8?B?RkFjdi9oZVFnQTNIQzRBbjU3ekZqSUNCbWpwWXcxd2xiUGRHcHo4c0FzYXR4?=
 =?utf-8?B?ODQwR3BZaHV2cFNtdlVFckZkK0wwSDFwWGlFSXZvVnRTb0FrZXdETFBBSXE1?=
 =?utf-8?B?d3ZpMnlLNHBIOWJOVUdFYkkxdE5PY1hEUy9PSGlXVkdNeTBvR2puWHpib3pq?=
 =?utf-8?B?ZDJOM0V3YlozZHpJRXBnV0ViMUJXRkc2ZVdNclhzV25ubkxSU2VvY2l1TFNW?=
 =?utf-8?B?ZVZLODZiay9jc3krSmpsblNiOXdMWlczUmpjeW9zYmhvMEJGT09RbHVndTVv?=
 =?utf-8?B?U1BzcjRYZGRzMjlmSzMxQlN0WVByRFNIazBjcnJJdXAyeGZOOFMrWFJiajNU?=
 =?utf-8?B?eGdZR0tBeEFkZEpuNXEzdWlha0M0RkI0VG9lTEI1dWV3cVRLL2pTZkFqOXYw?=
 =?utf-8?B?V1E3WWs1TUpUYnZsR21mMGFoQkNmRUlEbE9YcDkwV3BUWXBoVm1YeEpJNE8r?=
 =?utf-8?B?ckFQSy9tQWg3WjFKblFlK1JHM1NNOUowQjhqT093L2wyWVloMEpHb1lsZDNZ?=
 =?utf-8?B?SjZRM1JqbElpOW03Y3dHeFVxT0pxNklFZ25NNHZWUVR3Qnl4eXc2NkMvbzVp?=
 =?utf-8?B?dThpd3diZWlERzlBSnFwb1djL2FQVGIwQ2JTTUsxY0VXSEV2NWEycUNvZk15?=
 =?utf-8?B?cFBtQXh6MDErVFhZdU9ZWDlnYjRhZ0ZRbjBudFdtU1NUM0JsRStGYmhhbEFy?=
 =?utf-8?B?ZnNNR3VVaEtUYkRwOW83L0YyNUpVbG03TTdUMWlzNGhYdGh1eXlpN2pBQjRk?=
 =?utf-8?B?dy9CRmlRbXpsQ3U0YU9oeDVleVhUd3BvRWZIcnpmK3hsOUwwdFdGbXQ5VjBV?=
 =?utf-8?B?ak9jZ1JQUkx5Q2prSXVTcXRLVjUvc1pRMkJNNnVVcW5GZm1MdTFDUlNRTklH?=
 =?utf-8?Q?jlclh1ctRV5Q7x2ILE06j09tx7e586xj0//NE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q01QbWR4M3lWd1FFTE00OE44cVdaUHdZT0lHVnBsZDB5M1htNXZpMm1YRVp3?=
 =?utf-8?B?dTJ6cElyWkFDR0J6dUhNV2t3bklUR0w4UGZWYWl1RWZXMWFUVlBvWDgwZmZ5?=
 =?utf-8?B?azJBbEM0WEJ0SmVrMjUrcHNycmhna2RTNEp3TGFGOVY2aVJ4N29lVUpSSkUz?=
 =?utf-8?B?N2R0aHJLRFNMRDNuRjR0b0trNzFMTHRCYlR0a1RHSlNJOU5YekVQaGtqeUgr?=
 =?utf-8?B?T1BVVWJCYk5pc2w5Y21pSE5XOEhSeEpGZi9xUGZJUVo1Yy9oTzVnN3krZU5R?=
 =?utf-8?B?dTdZL2dpbW9tc1VTSzZqZVNLR1ppUTlJaHlnLzd4cm5nZ1NnQ0RMWnNLZC9C?=
 =?utf-8?B?bU43eWNGcFNiSzdhTXVCakpRQU9wYlBUeFlOMjFFS0RWSStuOHI1V29DZ0JO?=
 =?utf-8?B?UEEzb1NxcDBTQXU1VnRINC9ldklTK1RvTTZRMU52SlVYL0ZzaEtsS1RKM01x?=
 =?utf-8?B?U1U5UjZWYS9MWDZjbFA0QVZZOEZkNzdEQVQwa1BRQTlDZ3RRMkZGc0YrSFdU?=
 =?utf-8?B?MTFlaUY1VmFtc2V3dENFMUxTRjVrWmhqYWdmNHpNUW5WaTdLRi9Ya2JPcy9C?=
 =?utf-8?B?bS9kMVlkNThUUGFlNXU2U21UdXlGMFJ3TUx2UDR6RUM2bGVNbmhiQkcvY3RL?=
 =?utf-8?B?NkZWeEY4TnJlR3lJdXZZcU4wVUxEbkNjWG83QXQ3OFdCTWgwcGw2MFlRZWJO?=
 =?utf-8?B?NTFNZnJSUC9sMityR0I0bDg4Y2NxNjNEd1JBdjFUOHY1N1d4NXBWc3h4cEY2?=
 =?utf-8?B?NitzeFE0aXl6SkJQMVhlbUUxQzE3cU1kVU5zSVVoQXZFTDFXcTlvQ0hYV0Y5?=
 =?utf-8?B?RW1LV0dtT2xZQ0RQc0RKWFZ2NzZrc2VsOWx1bndVaVI0T1A5UGwzbEZLQ3hw?=
 =?utf-8?B?cXZHMWRIeXl5VGhBQ1JiVC9vR1A3Y2ZWcFhERlRIUjg0eHV4Y09rdDdpanJ3?=
 =?utf-8?B?WU5aQU12UndWWGk0eGhnbnN6WXNmTDJzWGlIOVV1R0p2cHVJNkF4VjZ5eGl3?=
 =?utf-8?B?OHNGVDV4c2Y5NzFjdlhYVVBjU1U2MDQwaU5vLzBEUEZlWFIwakVyL0UzZ1Fs?=
 =?utf-8?B?VlJKTHFSd1pkaVk3dmFqbHg1dERJYnlWMERoNE40WnBsWmRSaSs0MkFCSFZ3?=
 =?utf-8?B?akNRRU13RE9EUytTUEZUNkx2VEk5YU9BeDhNLzdPa2NhT09SR1BFQ1M4Y0tz?=
 =?utf-8?B?S3c2bW9hTFNFV0QrM2xZVGUyR3JsNDJoam9nTHk5d3V6ODVyR0RLY2w3WVRW?=
 =?utf-8?B?YTRqNjBtV21ubzNEMXVxRlJaM3pMWXJWZEZtRmFDSGdQWDR2ajc1WmJzMCto?=
 =?utf-8?B?TjJRaWRTN3N0R0JHU0FYbWQrWmoxd0JwMm9OanFieWthOFI1blNHekY4OUF1?=
 =?utf-8?B?V3M3L3FGVFdFR0NjS296eVJ0cjNjZ3N2MGQzQ2Y5K3Z6K1JtZDhGblB4K0RI?=
 =?utf-8?B?OWxFMWJlNHlrZCtLNlJkQmFXM2pCTXREZ1pyUFVUaER3R05BNmNKeTQ1cGVy?=
 =?utf-8?B?ZTBsSE1iMmVKODBubVJUK3dGaVUzdWx6R1NQMUFYbVplWTNLaDY1NzBDVnly?=
 =?utf-8?B?MXNtTzVUL1U3OUFwMXNJZlR0Mk9OUEdVVDBodEhYb1RrTjVwK3BlbkJzd2cw?=
 =?utf-8?B?anNKZlZubStSK3RKanBLS3ZkZXdmTHFrdEVwYWZEQjhlWlo0YUE2REMrN0h6?=
 =?utf-8?B?OUM4dHlySW9ldHNUMkFVamVoSW9CZm41VWcrMkxXZm9lUTFIRzluUnRhQ2dj?=
 =?utf-8?B?NGYyU01NUTBsbFJnQ1ViZG9HVGphVlJGTEM2cnNtN3ZES1d6NUZBQTlHMmxz?=
 =?utf-8?B?aEQycG5ZMGJ1QkRKZFVNWUxQZ3NxcXM0QjFRREpEb0JUV2lFSzhydnRhL3Q4?=
 =?utf-8?B?MmVkVDFaVUEyOGF4czk5WFFWdkR4azJ6ZVpaUnU4dTJVUDZkWjJWS3lUYlc0?=
 =?utf-8?B?bmxoRmpmeklLazJqblVJVW4zYmJrTk9KQkNPS3RNY1BXSGFkVnJKYTkvcU9K?=
 =?utf-8?B?RitiZmc5VXJyZ1FiRkZpN09vWnR0MGR5NUJicUNDL1BwM09TeWtsN3V5OUY5?=
 =?utf-8?B?VDVuRWM2U1ZVZndtUStEbCtyRVlSV29xclAvZ3BRR05kMjRRUzlpUGNzdEhI?=
 =?utf-8?Q?vfxOBKbU09A1OSLXgR9G/SYD9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23f1af12-f7d3-42cd-7017-08dc86e00946
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 10:53:16.5588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VyzrJZHbs0gjAdRprTQ71NNsQ2TyegFbGNq7hIcYJqZAJpoRqiA4Vcm6xaj0DP6JCmRS8Uer2njzjC3BlUAeXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6900
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSnVuZSA3LCAyMDI0
IDM6NDEgUE0NCj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47
IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBLYWhvbGEsIE1pa2Eg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2NiAxMC8yNl0g
ZHJtL2k5MTUvcHNyOiBQcmludCBQYW5lbCBSZXBsYXkgc3RhdHVzIGluc3RlYWQNCj4gb2YgZnJh
bWUgbG9jayBzdGF0dXMNCj4gDQo+IE9uIEZyaSwgMjAyNC0wNi0wNyBhdCAxMDowOSArMDAwMCwg
TWFubmEsIEFuaW1lc2ggd3JvdGU6DQo+ID4NCj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCj4gPiA+IEZyb206IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiA+ID4gU2VudDogRnJpZGF5LCBKdW5lIDcsIDIwMjQgMzozNCBQTQ0KPiA+ID4g
VG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGludGVsLQ0KPiA+
ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IEthaG9sYSwgTWlrYSA8bWlr
YS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDogUmU6IFtQQVRDSCB2NiAxMC8yNl0g
ZHJtL2k5MTUvcHNyOiBQcmludCBQYW5lbCBSZXBsYXkNCj4gPiA+IHN0YXR1cyBpbnN0ZWFkIG9m
IGZyYW1lIGxvY2sgc3RhdHVzDQo+ID4gPg0KPiA+ID4gT24gRnJpLCAyMDI0LTA2LTA3IGF0IDA5
OjU5ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToNCj4gPiA+ID4NCj4gPiA+ID4NCj4gPiA+
ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gPiA+IEZyb206IEhvZ2FuZGVy
LCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+IFNlbnQ6IFRodXJz
ZGF5LCBKdW5lIDYsIDIwMjQgOTowOCBQTQ0KPiA+ID4gPiA+IFRvOiBNYW5uYSwgQW5pbWVzaCA8
YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPiA+ID4gPiBnZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+ID4gPiA+ID4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPg0KPiA+ID4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjYgMTAvMjZdIGRybS9pOTE1
L3BzcjogUHJpbnQgUGFuZWwgUmVwbGF5DQo+ID4gPiA+ID4gc3RhdHVzIGluc3RlYWQgb2YgZnJh
bWUgbG9jayBzdGF0dXMNCj4gPiA+ID4gPg0KPiA+ID4gPiA+IE9uIFRodSwgMjAyNC0wNi0wNiBh
dCAxNDozNSArMDAwMCwgTWFubmEsIEFuaW1lc2ggd3JvdGU6DQo+ID4gPiA+ID4gPg0KPiA+ID4g
PiA+ID4NCj4gPiA+ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4g
PiA+ID4gRnJvbTogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
ID4gPiA+ID4gPiA+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAyMDI0IDM6NTYgUE0NCj4gPiA+
ID4gPiA+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4gPiA+
ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwg
TWlrYQ0KPiA+ID4gPiA+ID4gPiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpv
dW5pDQo+ID4gPiA+ID4gPiA+IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4g
PiA+IFN1YmplY3Q6IFtQQVRDSCB2NiAxMC8yNl0gZHJtL2k5MTUvcHNyOiBQcmludCBQYW5lbCBS
ZXBsYXkNCj4gPiA+ID4gPiA+ID4gc3RhdHVzIGluc3RlYWQgb2YgZnJhbWUgbG9jayBzdGF0dXMN
Cj4gPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gQ3VycmVudGx5IFBhbmVsIFJlcGxheSBzdGF0
dXMgcHJpbnRvdXQgaXMgcHJpbnRpbmcgZnJhbWUNCj4gPiA+ID4gPiA+ID4gbG9jayBzdGF0dXMu
IEl0IHNob3VsZCBwcmludCBQYW5lbCBSZXBsYXkgc3RhdHVzIGluc3RlYWQuDQo+ID4gPiA+ID4g
PiA+IFBhbmVsIFJlcGxheSBzdGF0dXMgcmVnaXN0ZXIgZmllbGQgZm9sbG93cyBQU1Igc3RhdHVz
DQo+ID4gPiA+ID4gPiA+IHJlZ2lzdGVyIGZpZWxkLg0KPiA+ID4gPiA+ID4gPiBVc2UgZXhpc3Rp
bmcgUFNSIGNvZGUgZm9yIHRoYXQuDQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+IEZpeGVz
OiBlZjc1YzI1ZThmZWQgKCJkcm0vaTkxNS9wYW5lbHJlcGxheTogRGVidWdmcyBzdXBwb3J0DQo+
ID4gPiA+ID4gPiA+IGZvciBwYW5lbA0KPiA+ID4gPiA+ID4gPiByZXBsYXkiKQ0KPiA+ID4gPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gPiA+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIyICsrKysrLS0tLS0tLQ0KPiA+ID4gPiA+ID4g
PiAtLS0tDQo+ID4gPiA+ID4gPiA+IC0tLS0NCj4gPiA+ID4gPiA+ID4gLS0NCj4gPiA+ID4gPiA+
ID4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkNCj4g
PiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gPiA+IGluZGV4IDdiZGFlMGQwZWE0
NS4uMzUzMGU1ZjQ0MDk2IDEwMDY0NA0KPiA+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiA+ID4gQEAgLTM1Nzks
MTYgKzM1NzksOSBAQCBzdGF0aWMgaW50DQo+ID4gPiA+ID4gPiA+IGk5MTVfcHNyX3Npbmtfc3Rh
dHVzX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQ0KPiA+ID4gPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJyZXNlcnZlZCIsDQo+ID4gPiA+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgInNpbmsgaW50ZXJuYWwgZXJyb3IiLA0K
PiA+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgfTsNCj4gPiA+ID4gPiA+ID4gLcKgwqDCoMKg
wqDCoMKgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBwYW5lbF9yZXBsYXlfc3RhdHVzW10gPSB7
DQo+ID4gPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAiU2luayBkZXZp
Y2UgZnJhbWUgaXMgbG9ja2VkIHRvIHRoZSBTb3VyY2UNCj4gPiA+ID4gPiA+ID4gZGV2aWNlIiwN
Cj4gPiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJTaW5rIGRldmlj
ZSBpcyBjb2FzdGluZywgdXNpbmcgdGhlIFZUb3RhbA0KPiA+ID4gPiA+ID4gPiB0YXJnZXQiLA0K
PiA+ID4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIlNpbmsgZGV2aWNl
IGlzIGdvdmVybmluZyB0aGUgZnJhbWUgcmF0ZQ0KPiA+ID4gPiA+ID4gPiAoZnJhbWUgcmF0ZSB1
bmxvY2sgaXMgZ3JhbnRlZCkiLA0KPiA+ID4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIlNpbmsgZGV2aWNlIGluIHRoZSBwcm9jZXNzIG9mIHJlLWxvY2tpbmcNCj4gPiA+
ID4gPiA+ID4gd2l0aCB0aGUgU291cmNlIGRldmljZSIsDQo+ID4gPiA+ID4gPiA+IC3CoMKgwqDC
oMKgwqDCoH07DQo+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBjb25zdCBjaGFyICpzdHI7
DQo+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcmV0Ow0KPiA+ID4gPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgdTggc3RhdHVzLCBlcnJvcl9zdGF0dXM7DQo+ID4gPiA+ID4gPiA+IC3C
oMKgwqDCoMKgwqDCoHUzMiBpZHg7DQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqBpZiAoIShDQU5fUFNSKGludGVsX2RwKSB8fA0KPiA+ID4gPiA+ID4gPiBDQU5f
UEFORUxfUkVQTEFZKGludGVsX2RwKSkpIHsNCj4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBzZXFfcHV0cyhtLCAiUFNSL1BhbmVsLVJlcGxheQ0KPiA+ID4gPiA+
ID4gPiBVbnN1cHBvcnRlZFxuIik7IEBADQo+ID4gPiA+ID4gPiA+IC0zNjAyLDE2ICszNTk1LDEx
IEBAIHN0YXRpYyBpbnQNCj4gPiA+ID4gPiA+ID4gaTkxNV9wc3Jfc2lua19zdGF0dXNfc2hvdyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpDQo+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqDC
oMKgwqBpZiAocmV0KQ0KPiA+ID4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybiByZXQ7DQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoHN0ciA9ICJ1bmtub3duIjsNCj4gPiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKGlu
dGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQpIHsNCj4gPiA+ID4gPiA+ID4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlkeCA9IChzdGF0dXMgJiBEUF9TSU5LX0ZSQU1FX0xP
Q0tFRF9NQVNLKQ0KPiA+ID4gPiA+ID4gPiA+Pg0KPiA+ID4gPiA+ID4gPiBEUF9TSU5LX0ZSQU1F
X0xPQ0tFRF9TSElGVDsNCj4gPiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGlmIChpZHggPCBBUlJBWV9TSVpFKHBhbmVsX3JlcGxheV9zdGF0dXMpKQ0KPiA+ID4gPiA+
ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0ciA9
IHBhbmVsX3JlcGxheV9zdGF0dXNbaWR4XTsNCj4gPiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKg
fSBlbHNlIGlmIChpbnRlbF9kcC0+cHNyLmVuYWJsZWQpIHsNCj4gPiA+ID4gPiA+ID4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlkeCA9IHN0YXR1cyAmIERQX1BTUl9TSU5LX1NUQVRF
X01BU0s7DQo+ID4gPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAo
aWR4IDwgQVJSQVlfU0laRShzaW5rX3N0YXR1cykpDQo+ID4gPiA+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gc2lua19zdGF0dXNbaWR4
XTsNCj4gPiA+ID4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgfQ0KPiA+ID4gPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqBzdGF0dXMgJj0gRFBfUFNSX1NJTktfU1RBVEVfTUFTSzsNCj4gPiA+ID4gPiA+ID4g
K8KgwqDCoMKgwqDCoMKgaWYgKHN0YXR1cyA8IEFSUkFZX1NJWkUoc2lua19zdGF0dXMpKQ0KPiA+
ID4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gc2lua19zdGF0
dXNbc3RhdHVzXTsNCj4gPiA+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgZWxzZQ0KPiA+ID4gPiA+
ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gInVua25vd24iOw0KPiA+
ID4gPiA+ID4NCj4gPiA+ID4gPiA+IHBzcl9nZXRfc3RhdHVzX2FuZF9lcnJvcl9zdGF0dXMoKSBp
cyByZXR1cm5pbmcgZnJhbWUtbG9ja2VkLQ0KPiA+ID4gPiA+ID4gc3RhdHVzIGZvciBwYW5lbCBy
ZXBsYXksIEl0cyBkaWZmZXJlbnQgZHBjZA0KPiA+ID4gPiA+ID4gRFBfU0lOS19ERVZJQ0VfUFJf
QU5EX0ZSQU1FX0xPQ0tfU1RBVFVTLCBub3Qgc2FtZSBsaWtlDQo+IHBzci4NCj4gPiA+ID4gPg0K
PiA+ID4gPiA+IFBhbmVsIFJlcGxheSBTVEFUVVMgfj0gUFNSIFNUQVRVUyBpZiB5b3UgbG9vayBh
dCBkZXNjcmlwdGlvbiBvZg0KPiA+ID4gPiA+IHRoZSByZWdpc3RlcnMuIEZyYW1lIGxvY2sgc3Rh
dHVzIGlzIGNvbXBsZXRlbHkgZGlmZmVyZW50IHRoaW5nLg0KPiA+ID4gPiA+IEkgZG9uJ3QgdW5k
ZXJzdGFuZCB3aHkgcHNyIHNpbmsgc3RhdHVzIGRlYnVnZnMgaW50ZXJmYWNlIHNob3VsZA0KPiA+
ID4gPiA+IHByaW50IGZyYW1lIGxvY2sgc3RhdHVzIGZvciBQYW5lbCBSZXBsYXk/DQo+ID4gPiA+
DQo+ID4gPiA+IElmIHdlIGRvIG5vdCB3YW50IHRvIHByaW50DQo+ID4gPiBEUF9TSU5LX0RFVklD
RV9QUl9BTkRfRlJBTUVfTE9DS19TVEFUVVMNCj4gPiA+ID4gdGhlIHBzcl9nZXRfc3RhdHVzX2Fu
ZF9lcnJvcl9zdGF0dXMoKSBuZWVkIHRvIGJlIG1vZGlmaWVkLiBEbyB5b3UNCj4gPiA+ID4gYWdy
ZWU/DQo+ID4gPg0KPiA+ID4gWWVzLCBhbmQgdGhpcyB3aGF0IEknbSBkb2luZyBpbiB0aGlzIHBh
dGNoPyBPciBjYW4geW91IGVsYWJvcmF0ZSBhDQo+ID4gPiBiaXQgd2hhdCBkbyB5b3UgbWVhbj8N
Cj4gPg0KPiA+IEkgZG8gbm90IHNlZSBhbnkgY2hhbmdlIGluIHBzcl9nZXRfc3RhdHVzX2FuZF9l
cnJvcl9zdGF0dXMoKSBpbiB0aGlzDQo+ID4gcGF0Y2guDQo+ID4gSnVzdCBhZGRpbmcgYmVsb3cg
dGhlIGNvZGUtc25pcHBldCB3aGVyZSBiYXNlZCBvbiBwYW5lbF9yZXBsYXlfZW5hYmxlZA0KPiA+
IGZsYWcgb2Zmc2V0IGlzIGFzc2lnbmVkIHRvIERQX1NJTktfREVWSUNFX1BSX0FORF9GUkFNRV9M
T0NLX1NUQVRVUy4NCj4gPg0KPiA+IHN0YXRpYyBpbnQgcHNyX2dldF9zdGF0dXNfYW5kX2Vycm9y
X3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB1OCAqc3RhdHVzLCB1OA0KPiA+ICplcnJvcl9zdGF0dXMpDQo+ID4gew0KPiA+
IMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fZHBfYXV4ICphdXggPSAmaW50ZWxfZHAtPmF1eDsN
Cj4gPiDCoMKgwqDCoMKgwqDCoCBpbnQgcmV0Ow0KPiA+IMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVk
IGludCBvZmZzZXQ7DQo+ID4NCj4gPiDCoMKgwqDCoMKgwqDCoCBvZmZzZXQgPSBpbnRlbF9kcC0+
cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkID8NCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBEUF9TSU5LX0RFVklDRV9QUl9BTkRfRlJBTUVfTE9DS19TVEFUVVMgOg0KPiA+IERQ
X1BTUl9TVEFUVVM7DQo+ID4NCj4gPiDCoMKgwqDCoMKgwqDCoCByZXQgPSBkcm1fZHBfZHBjZF9y
ZWFkYihhdXgsIG9mZnNldCwgc3RhdHVzKTsNCj4gPiDCoMKgwqDCoMKgwqDCoCBpZiAocmV0ICE9
IDEpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7DQo+ID4g
Li4uDQo+ID4gLi4uDQo+ID4gLi4uDQo+ID4NCj4gDQo+IERQX1NJTktfREVWSUNFX1BSX0FORF9G
UkFNRV9MT0NLX1NUQVRVUyBjb250YWlucyB0d28gZmllbGRzLiAiU2luaw0KPiBEZXZpY2UgUGFu
ZWwgUmVwbGF5IFN0YXR1cyIgYW5kICJTSU5LIEZSQU1FIExPQ0tFRCIuIEN1cnJlbnRseSB3ZSBh
cmUNCj4gcHJpbnRpbmcgbGF0dGVyLiAgICJTSU5LIEZSQU1FIExPQ0tFRCIgaXMgbm90IGFjdHVh
bGx5IHRoYXQgbXVjaA0KPiByZWxhdGVkIHRvIHBzciBzdGF0dXMgZGVidWdmcyBpbnRlcmZhY2Uu
IFRoaXMgcGF0Y2ggaXMgY2hhbmdpbmcgdGhlIGludGVyZmFjZSB0bw0KPiBwcmludCBvdXQgIlNp
bmsgRGV2aWNlIFBhbmVsIFJlcGxheSBTdGF0dXMiLg0KDQpUaGFua3MgZm9yIGNsYXJpZnlpbmcs
IHRoZSBuYW1lIG9mIERQX1NJTktfREVWSUNFX1BSX0FORF9GUkFNRV9MT0NLX1NUQVRVUyBjb25m
dXNlZCBtZS4NCk5vIG9iamVjdGlvbiBmcm9tIG15c2lkZS4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1l
c2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0K
DQo+IA0KPiBCUiwNCj4gDQo+IEpvdW5pIEjDtmdhbmRlcg0KPiANCj4gPiBSZWdhcmRzLA0KPiA+
IEFuaW1lc2gNCj4gPg0KPiA+ID4NCj4gPiA+IEJSLA0KPiA+ID4NCj4gPiA+IEpvdW5pIEjDtmdh
bmRlcg0KPiA+ID4gPg0KPiA+ID4gPiBSZWdhcmRzLA0KPiA+ID4gPiBBbmltZXNoDQo+ID4gPiA+
ID4NCj4gPiA+ID4gPiBCUiwNCj4gPiA+ID4gPg0KPiA+ID4gPiA+IEpvdW5pIEjDtmdhbmRlcg0K
PiA+ID4gPiA+DQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gUmVnYXJkcywNCj4gPiA+ID4gPiA+
IEFuaW1lc2gNCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICJTaW5rICVzIHN0YXR1czogMHgleCBbJXNdXG4iLA0K
PiA+ID4gPiA+ID4gPiBwc3JfbW9kZV9zdHIoaW50ZWxfZHApLCBzdGF0dXMsIHN0cik7DQo+ID4g
PiA+ID4gPiA+DQo+ID4gPiA+ID4gPiA+IC0tDQo+ID4gPiA+ID4gPiA+IDIuMzQuMQ0KPiA+ID4g
PiA+ID4NCj4gPiA+ID4NCj4gPg0KDQo=
