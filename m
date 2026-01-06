Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DC8CF6E1B
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 07:21:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0837D10E490;
	Tue,  6 Jan 2026 06:21:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C/73svph";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 608C510E490;
 Tue,  6 Jan 2026 06:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767680505; x=1799216505;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jBf3/cebm5ipI3a+aYdP49yAjWdyoCaT/jiVSlSvRj8=;
 b=C/73svph7efAV6uhF25rcQHudNvdLeEeIIlvQbr64t68vM/ZMbcdA8Nq
 dw6UW2ag6GRQdWSBZR5s9MdUkd1J+RNmG8iHeuzIkVyv1+JYA0v2eEnln
 LlDVEjSaMmXMSDLUplJdf5sfzubPU37k/bWTS5WFR2Jm2MQdCIxhroImG
 RUzXsjYceLN3h8Gny8UMi2cfMnr01d9FkAURt99T3hnbUkGrvh/nH2dQG
 Q9QOfw5Z8dxos3iixtgRNySklvJ31K69qJleiIk8O7uDRkXsuDU+qdpBV
 Ykwqmpe0J94f2Z55B3czSl3KqMMFDfaUTFmjFmtH5Jj31jnZzL2N+Pzpk g==;
X-CSE-ConnectionGUID: jME0D4dtT2y1KsDX2echfw==
X-CSE-MsgGUID: aLvobNO9RKq4pBZqO5KSGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="80160918"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="80160918"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:21:45 -0800
X-CSE-ConnectionGUID: Xj60U677TPuPcYFgrwo9SQ==
X-CSE-MsgGUID: vNfBCL0QRxO5orxGvIUGvA==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 22:21:45 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:21:44 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 22:21:44 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.27)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 22:21:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oZ9Xo6ENE2uTYEsSZlypn+UA8M6jQUy1kEbOgxpdC0IOkVzjT4Nwfw48WjbgCXPEJECz3vNYFug+wWk2tof98LMVqJuk73ruaIFFtV6oVX1ECu0DdHCJrGg86F97AxETovDZlhOpSkfTDfe4Z23BSmb0Ul4NcuAzqWgSi1MDkuGdxsDtzXrGF2GfgmG2iswKOgVO+sKAgEi9br+R6bCPZXGZkeMA92tJVY1pMiMH+VKc5bYqVlc11k3v1K7S+fVxbWjXqL4cS+TRPu6Rq6fl6yPrDOlz2hxKhLOjk26A+HB0V5AzRFn9ZwkziQreQ+OszlmRr26bWR9c8Fjx0IFJpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jBf3/cebm5ipI3a+aYdP49yAjWdyoCaT/jiVSlSvRj8=;
 b=v5iLaBhTKJP7QSxmggP1cTK/IKOGwdIdqkD+3HDwhVap5fuhqX+3IsViYY3iETSpzcQhHKJxSmCQFRkLUEfRBdlLBcmekr4a2yqot7Vb0igIjJ2krbVWB48Ml8jsOrO0gMfxFYnC2k9rztOCYkuVx+FWSYfbRNH0Ur1V8pZi88tnFSOr57P6q+iXhfH/XH6vBr606U/aZZRQFKW4I0SCz0Xnsfe9oGkYP4VW9ofbvfYlBnl/d6Dc61lfEAq9FEJMYCcUUoi64sb0W9b9CF//lnipY1SbLwT+T9xkhwR2qG7kZ6nfV2wPCUAQBBqvscYrucAugOZKgYom9CKX/VQAKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by CH3PR11MB8561.namprd11.prod.outlook.com (2603:10b6:610:1ad::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 06:21:37 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 06:21:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/cx0: Clear response ready & error bit
Thread-Topic: [PATCH 3/3] drm/i915/cx0: Clear response ready & error bit
Thread-Index: AQHceWbEZegXa7m1JUOK4BWfWo2SBrU6cuKAgAC9PHCACIkBgIAA/SrA
Date: Tue, 6 Jan 2026 06:21:37 +0000
Message-ID: <IA3PR11MB89372DC868BEFFCBA7D24217E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-4-suraj.kandpal@intel.com>
 <176711619593.18661.17406989812251209808@intel.com>
 <DM3PPF208195D8D0C2024AF07117D5F35F6E3BDA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <176762605914.9480.7739153319106853404@intel.com>
In-Reply-To: <176762605914.9480.7739153319106853404@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|CH3PR11MB8561:EE_
x-ms-office365-filtering-correlation-id: a92bf276-85f8-4c8d-8c3e-08de4cebd911
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?SDY0M3gyWnVyUjVoNGQvSVNwdlY2T1BIdTlycHRFeXFrdXdWSjJ5d1YxUzM3?=
 =?utf-8?B?SDM5SzJWbDlCekhQajFBTFlCSnBCWnFxSGZmMDBlR05BbUpUNHBYM2hzVEVU?=
 =?utf-8?B?Rko0QXl1MHJJemxqbXpzMWptZ0ZkSC9XWjR1WnYydDRaTGFUSjl6NGppWmsw?=
 =?utf-8?B?YnFFQXIydUduVUZOelVQeDNxWWl3TnNJa0NydllHQ3Q2ZlZxd3YyTzFNNEJY?=
 =?utf-8?B?V21Od1piVi9RWVRLUXRhcVlYcVMvK2NRNEdjemd5Yi8xY0tIWWYwYjluUVpU?=
 =?utf-8?B?NU5lUStRVjlwZTcxeVJnbGtRYmJDSHVJTzNsKzFFeTJXREZvUjEycFZGZEYw?=
 =?utf-8?B?OFc0TFUxdCt0dG9aeWkxcFE5bXRWWC9KSGk2Yk50YlZUelB0YkFHM24xL0o2?=
 =?utf-8?B?NTUzaUxGUHR1MC9EMUErQTEweU02M2w5OEtURFJzQjUrUXgvemM5d1drUkpP?=
 =?utf-8?B?OHNxRHVKdlRhNGJPaHoydC9vbG5FTnd4K2dpM251K0wwUE5LaFdxRG5kTXNt?=
 =?utf-8?B?cDFuV3c5d3QxM3dkSUxtVTV0MERUTGpEaEIvbGtTTXB3UHVhbkRrSjB1RUV5?=
 =?utf-8?B?dFZGUmliaEV2OU4vZkpqQVRNNUgrK0hkdmRjU1JhM3pveEFyMTlMVmh4UnRD?=
 =?utf-8?B?bllpNElYdERaQit1a1haS3N5YVl2K2dYK0t1aGY2bG9DMHNCZXVPUlN6YnRh?=
 =?utf-8?B?QkcyMzJvU0E4MG9kbVp3dmpKWjU5Y1d5d2ZCZWJoZTdHRWNzRkRkSkI2ZkxL?=
 =?utf-8?B?U1lvTXFYUGpJSUdPQkFXQjl3bHJ5TTl3bkMyRklTK3ZDN01XYXZsKzlGNDZB?=
 =?utf-8?B?TG83V1JrbEhLYnZCRThEazh4aEVzbmNMdTh4WWYxQWpRRzFuMFlqRXFmOTEz?=
 =?utf-8?B?WWdLWEJuMWF6WVY0VmJYNE1NQkR5Mm1OcFlNbmljNEhJOFRNUE00NlZaQnJ0?=
 =?utf-8?B?Q1hyekNVL29RZ0tpYWJqUjEvVnovcUE2RmJtdGlRSzdYakpyOTFyandGaUdQ?=
 =?utf-8?B?bG85Q3dwejA2cW9FRk1BeVFsSm9UcVFSNmc1V1UwYzVjUWtWdDFZQWdId3dW?=
 =?utf-8?B?bG1PVG45YjkyVnJzZUsvNkswZ3F6ZG4zZ0NVdDVrWHRuZkZKeUdkdk8zajFx?=
 =?utf-8?B?NmZrdlBRVmJqRXYrcWZzSzN4b2JVZ3B6eXorVWladjdvUUZKaVFVUDl3Rnhi?=
 =?utf-8?B?Q3dvSGJSSGpEdTdpcXFqaVU5bE1jN2t2dXU3Z1ROaVVpVVRyMHFGeWZUcVA1?=
 =?utf-8?B?UkIvdFBiL2MvSktRY0hSeXJTWEJoRExQV1R6QmpIM0dUMXZ2U1JoZWJBMjdn?=
 =?utf-8?B?Q1dHSGlvMXpud1lGWEhFWWtkc3ljU1dVRk8zamIvUEFmQ1hlUHRuRnYzZndN?=
 =?utf-8?B?Q0dYSTN4ekgyWmpselVRVkRnL3FsdVZ5RFJJZTVSTjQ0dWtLZHVnb3lBblhZ?=
 =?utf-8?B?dHdvcUhwOXRGaVA2d2hvQVYvd1ZTSnd0NUk3Ky8vdlJpZDNyMHBGSFlWYjhN?=
 =?utf-8?B?UXYzZm5yL1hmZWJzWUZMKzNVbXg0Q3JZc3lSNEpuNEVDQ1hCWmlGalpJcFZL?=
 =?utf-8?B?RGFPYW9zMEo2U1VVaHR4dTRSbDZiZVVMRDF6WkIrUHNtai9jUVRhN09WdjN0?=
 =?utf-8?B?RTVNZFdnSGM1a0N4OW0vK2pPbEJKanFKTXEzbkUzMVdDMEdxaCtiL29VM2dD?=
 =?utf-8?B?ayt0Vkl4NERCL3JkcFk0aXRjRW0wbWhPdWpySTg0V25wNlpjQjl5QUg5Zm01?=
 =?utf-8?B?SnhYR2FSWEhaYkttZWdERERHNmptYmkrVmV3bFVNbjRUOUhyNjNicWVPVnVL?=
 =?utf-8?B?YitXS0gxMUZOOWVoZ0h2S2tyS091cnV6ZTduMXB0RnhabHZCUEs4TmpVWllM?=
 =?utf-8?B?dFY0ZXJpMUxDbGw4REpsN3hhQUtKWXorNWkwL0xFWjlRaE1rWGVtTlI4Szcv?=
 =?utf-8?B?WHc0QU5XV2tNdThLVzk4T3FrSTJmUXU5enc5ZFlwRDc4MnJCTmFCVVIwYzB2?=
 =?utf-8?B?SzcwYXBJWkx2YUx6N0liU0dQejdrS2d3cDA0N21LbGtzVFQyRkRtUFNLNDM3?=
 =?utf-8?Q?ViUw/m?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWU1eW9rYTRPemx4ck96dEt3dkpqSUJVZVJzMnY5QzQvcDdORVZ3S2pTakRT?=
 =?utf-8?B?ME9MTWE4c1RhSC9sSmJrTW9jTXZzZUpTMW9zYWpVSE4vcG0vR1RkaUk5RDlP?=
 =?utf-8?B?Vmx2bFNsM1pnZGY3a3FHSFNwaFp3R2FmdzliR1hPUUdubmVOMDNyalUzRUhD?=
 =?utf-8?B?K2RnMlZMZHEwMU9tVHQrTGJSUVFYNDFqL1QxV09TeGJ5S0tIZGx0RmI5eTJ2?=
 =?utf-8?B?Kyt3RmZnRWF2UEZsYm53NEhHSVVsTUtZTDlHSGFyOUZLU3htY1hsMXJadFhW?=
 =?utf-8?B?STBvZEVPRVhDWHR4dFN3RytwakdCL1RzL2J2am0zL3Q0U3BlSEpFK0RCUHVl?=
 =?utf-8?B?bGsxYnJUbFFWSjNvYTg0ZzhKWVBnTWVnLzIxb2VTR3NPS2ZkamRYdjNjSmE1?=
 =?utf-8?B?SzV2QjR3SjlONXBZNW1WU3QwRGN3NmFVVytrWE5uQjBoUElrZ1ZYK3FDczU2?=
 =?utf-8?B?SDlDcENGTWZ3OERPcUJDUVoyalV4Z25hdHpCak1nMEMyMmkwQUUwdGZPUDI5?=
 =?utf-8?B?T092eDBJemxRRXQxdkdHODFBQWRWSVZOWEJKT2NLLzdEZ0tjNldkM0NCTTNs?=
 =?utf-8?B?WnA4azMwYlcxNlhJR3ZZQ3JLaCs0OW9UY1pFSW9ScmhjdEtCVEszKzdkK0Jy?=
 =?utf-8?B?RkNkZm9VN3h4cWo5aXU5RmZFZm9ZK0ZTdHUvTi83amxnMmdjWnh3NDQ4Y1Rm?=
 =?utf-8?B?bGplQnlVTDRBVENRMGt3elNZemJEdXh5VmVtRXVvL3ZwcWFoVHE3THpuYW5D?=
 =?utf-8?B?YzUzVEJkemR4b3dVQWNrT0MzekluaEVUZU9wYmRFR2hpR3ZjWjlOVVVGSzYy?=
 =?utf-8?B?UXcwajBYdjNsUW1ReTd6M2E3TmY3RFVrYjZqTHNubk1jci90WkxOdnRVR1c3?=
 =?utf-8?B?aEsrMXk0cEVoZU5zbnA2Nnp1aHVyMXFGOGJIdzV4UWxXOWpsR1hRL3l5NEph?=
 =?utf-8?B?S0piMXdFN3hJWUxoOXU5UlAzc1daT3FLelhKL0tNajdHVVNKSFZzY0E3S0hW?=
 =?utf-8?B?ZFRHa255QjZzVUQ4QUZFVnN1UWs1TG5QTlZHY0RGUUpZa0h1SDFhS245dC93?=
 =?utf-8?B?RExVKzdvdXk5cjRoMTZ5Mng1WmZQVHVSQW5xdDdxZ1g1RnRDSzBPU0l3L0Nt?=
 =?utf-8?B?ZUpXK2FyR21ycVVYeHVuTlFWWnNSSXZqMGROZlF4ZHF6dWZRdlFVTE5wd2NR?=
 =?utf-8?B?dS9SV1l3b1Z1UE54MUF3Vy9HV3JhZFFUNFlxcktWN2orRVpLa0NwQk9YbzVa?=
 =?utf-8?B?aTRLT2ZZTytXU09FVnd4Y3JtMmpQck92UW1BdUJDelZhTEh5VmJMNndjUUZ0?=
 =?utf-8?B?VUFKZE5RMU9mUXNLNnoxOXM3RWZYOFJWRUU1dXVUdWpUYnlHSFdZTjlkdkNC?=
 =?utf-8?B?ZFpaWnVsbGFCVE0vZXN6THdFaldRMm9FVTRjb2JmMXJ2aFg0UGEzbGF1NVIx?=
 =?utf-8?B?NGYzOTY1eC9iYUJOWUVTT0ZVM2lUWHlaRDBpUk5hLzMra2ttS2JHQ1BUdlBo?=
 =?utf-8?B?QnlvcnkzUFdXbm5yMlJkUGJwdDQvWmZkNmNLWS9wZ3ZBWnBqcVYra3NhUlhp?=
 =?utf-8?B?TnVYdlFveVF4Y2VWZm9OV0czd2hOUTVoNDhodWZ3QmowN0xiaitEMUtZV29u?=
 =?utf-8?B?SG9hQjlZVlQwQXZLemhqMFcySUdnMDcwUnN0cTJKanBVNjVXYW1FVWhteEh0?=
 =?utf-8?B?blIyM091NTdacGszcUxqRGhNQ2ptMVhhNWU3dHFQZTlIaHdxa2o3QXlabzFJ?=
 =?utf-8?B?TjhreHhTa2FZM2VGSjY5WER4ZTVXdHdqQXgvTnpjNWgxTTA5WFg2RGlibUxI?=
 =?utf-8?B?ZTBDMXNBQ2hlaGNsWUpxbkN2MjRTcDdiT1Nnam93NVVJZ2UwUldscm5DM0Vv?=
 =?utf-8?B?MGE3VEU5R3BiSUJXWTBqUVNjaG5hY1dVTjBPeklNMEFTSUNsa2pWNXA3WThW?=
 =?utf-8?B?SEJEMmtIYXBqWUVGTkNKbDY2NENuVVJqaHg0VFBMcUxBczE4VmRPRk5ZZXdj?=
 =?utf-8?B?Q3Qvd3A1eHRxVzhwb2VGcStMc1BwS2dqbGg4TUlERElwSzRjMmFtSkphNzNS?=
 =?utf-8?B?UVFDTDN1Uld6MlEwRWU2cGtJcGVqdXdyV3o4QzZva0lLc093b0pJcWkvcjF0?=
 =?utf-8?B?dEZtMDRzdHNFVDJMbGNESlA1OVNyUy9pTjZtT2k3R2Zlb01XNHFyLzFwQ20v?=
 =?utf-8?B?Q0dVTEVVZGovem1JTTRqZVNzSklqMU5JaHYvdWdYSUJTUjVIc3RDL3hRT2Vk?=
 =?utf-8?B?MHo0dmZxMWJwQTJneTZDT2paZHZvK0UrbDNRUUhReWlhZURwQzNkb3FUUkVX?=
 =?utf-8?B?dG9NNS9qMk5WOFhTVHIwcW82SGh0MzhSOFRha2ZXK2JPc0RMWDNIZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a92bf276-85f8-4c8d-8c3e-08de4cebd911
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 06:21:37.5584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AwDsTBgHvrDJmXLv99BCz4wzr5GepTj7LpX6Ai3zf7NmYqf2ok8iVV4+4dKOTTRizbb7AOFzd8CyisZLPOj+rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8561
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

PiBTdWJqZWN0OiBSRTogW1BBVENIIDMvM10gZHJtL2k5MTUvY3gwOiBDbGVhciByZXNwb25zZSBy
ZWFkeSAmIGVycm9yIGJpdA0KPiANCj4gUXVvdGluZyBLYW5kcGFsLCBTdXJhaiAoMjAyNS0xMi0z
MSAwMTo1OToyOS0wMzowMCkNCj4gPj4gU3ViamVjdDogUmU6IFtQQVRDSCAzLzNdIGRybS9pOTE1
L2N4MDogQ2xlYXIgcmVzcG9uc2UgcmVhZHkgJiBlcnJvcg0KPiA+PiBiaXQNCj4gPj4NCj4gPj4g
UXVvdGluZyBTdXJhaiBLYW5kcGFsICgyMDI1LTEyLTMwIDA1OjMxOjQyLTAzOjAwKQ0KPiA+PiA+
Q2xlYXIgdGhlIHJlc3BvbnNlIHJlYWR5IGFuZCBlcnJvciBiaXQgb2YNCj4gPj4gPlBPUlRfUDJN
X01FU1NBR0VfQlVTX1NUQVRVUyBiZWZvcmUgd3JpdGluZyB0aGUgdHJhbnNhY3Rpb24NCj4gcGVu
ZGluZw0KPiA+PiA+Yml0IG9mIFBPUlRfTTJQX01TR0JVU19DVEwgYXMgdGhhdCBpcyBhIGhhcmQg
cmVxdWlyZW1lbnQuIElmIG5vdA0KPiA+PiA+ZG9uZSB3ZSBmaW5kIHRoYXQgdGhlIFBIWSBoYW5n
cyBzaW5jZSBpdCBlbmRzIHVwIGluIGEgd2VpcmQgc3RhdGUgaWYgbGVmdA0KPiBpZGxlIGZvciBt
b3JlIHRoYW4gMSBob3VyLg0KPiA+Pg0KPiA+PiBTaW5jZSB0aGUgc2VyaWVzIHRpdGxlIHJlZmVy
cyB0byBzdXNwZW5kL3Jlc3VtZSwgaXMgdGhlcmUgYW4gZWFzeSB3YXkNCj4gPj4gb2YgcmVwcm9k
dWNpbmcgdGhpcyB2aWEgc29tZSBwb3dlciBzdGF0ZSB0cmFuc2l0aW9uPw0KPiA+DQo+ID5TYWRs
eSBubyB3ZSBkaWQgdHJ5IHRvIG5vIGF2YWlsIHdlbnQgYXMgbG93IGFzIERDOSB0b28uIFRyaWVk
IHNsZWVwDQo+ID50aGVuIHdha2UsIFRyaWVkIGhpYmVybmF0aW5nIHRvby4NCj4gDQo+IEkgc2Vl
LiAgSSB3YXMgd29uZGVyaW5nIGlmIERNQyBjb3VsZCBiZSBhdCBwbGF5IGhlcmUuDQo+IA0KPiBT
byB0aGUgb25seSBrbm93biB3YXkgb2YgcmVwcm9kdWNpbmcgdGhpcyBpcyB0byBsZWF2ZSBpdCBp
ZGxlIGZvciBtb3JlIHRoYW4gMQ0KPiBob3VyPyAgRG8geW91IGtub3cgaWYgdGhhdCBoYXBwZW5z
IGlmIHdlIGxvYWQgdGhlIGRyaXZlciB3aXRoDQo+IERDNS82IGRpc2FibGVkIChpLmUuIGVuYWJs
ZV9kYz0wKT8NCj4gDQo+ID4NCj4gPj4NCj4gPj4gSSdtIHdvbmRlcmluZyBpZiB3ZSBhcmUgbG9v
a2luZyBhdCBhIGRyaXZlciBpc3N1ZSBoZXJlIG9yIGlmIHRoaXMgaXMNCj4gPj4gcmVhbGx5IHNv
bWV0aGluZyBlbHNlLiAgSSBzZWUgdGhhdCB3ZSB1c3VhbGx5IGNhbGwNCj4gPj4gaW50ZWxfY3gw
X2J1c19yZXNldCgpIGluIGVycm9yIHBhdGhzLCB3aGljaCBjb250YWlucyBhIGNhbGwgdG8NCj4g
Pj4gaW50ZWxfY2xlYXJfcmVzcG9uc2VfcmVhZHlfZmxhZygpLCBidXQgaXQgY291bGQgZW5kIHVw
IGJlaW5nIG5vdCBjYWxsZWQgaWYNCj4gdGhlIHJlc2V0IHRpbWVzIG91dC4NCj4gPg0KPiA+WWVz
IHRoZSByZXNldCB0aW1lcyBvdXQgYW5kIHRoaXMgaXMgYmVjYXVzZSBQSFkgaXMgaW4gaGFuZ2Vk
IHN0YXRlIGhlcmUNCj4gPg0KPiA+Pg0KPiA+PiBEbyB3ZSBzZWUgZXJyb3IgbWVzc2FnZXMgZnJv
bSB0aGUgZHJpdmVyIHdoZW4gdGhlIFBIWSBoYW5ncz8NCj4gPg0KPiA+WWVzIHdlIGRvIHNlZSBh
IFBIWSBoYW5nIHdoZW4gd2UgYXJlIGF0IHRoZSBzdGFnZSBvZiBzd2luZyBwcm9ncmFtbWluZw0K
PiA+c2V0dGluZyBBbmQgdGhlIGVycm9yIGhhcHBlbnMgd2hlbiB3ZSB0cnkgdG8gcmVhZCB0aGUg
bXNnIGFjY2VzcyBiaXQNCj4gPml0c2VsZiB3aGljaCBpcyBiZWNhdXNlIHRoZSBQSFkgZW5kcyB1
cCBpbiBXZWlyZCBzdGF0ZSB3aGVyZSBpdCBoYXMgYSB3cml0ZQ0KPiBhY2sgYnV0IG5vIHJlc3Bv
bnNlIHJlYWR5IGJpdCBnZXR0aW5nIHNldC4NCj4gPkJ1dCB3aXRoIG15IG9ic2VydmF0aW9uIEkg
Y2FuIGNlcnRhaW5seSBzYXkgdGhpcyBpcyBQSFkgaXNzdWUuDQo+ID5JIGFsc28gZG91YmxlIGNv
bmZpcm1lZCB0aGlzIGJlaGF2aW9yIHdpdGggd2luZG93cyBmb2xrcyBhbmQgdGhlaXIgY29kZQ0K
PiB3aGVyZSB0aGV5IHNhaWQgdGhleSBzYXcgYW4gaXNzdWUgaW4gdGhlIHNhbWUgbGluZXMuDQo+
ID5BbHNvIHRoZSBic3BlYyBiYXNpY2FsbHkgYWRkcyB0aGlzIGFzIGEgZGlzY2xhaW1lciB0aGF0
IHJlc3BvbnNlIHJlYWR5DQo+ID5hbmQgZXJyb3IgYml0IHNob3VsZCBiZSBjbGVhcmVkIG5vIG1h
dHRlciB3aGF0IGJlZm9yZSB3cml0aW5nIFRoZQ0KPiB0cmFuc2FjdGlvbiBwZW5kaW5nIGJpdC4N
Cj4gDQo+IEFncmVlZCBvbiB0aGUgbmVlZCB0byBjbGVhciB0aGUgcmVzcG9uc2UgcmVhZHkgYml0
IGJlZm9yZSBzdGFydGluZyBhbm90aGVyDQo+IHRyYW5zYWN0aW9uLCBzbyB0aGUgcGF0Y2ggbG9v
a3MgZmluZS4gIEkgYmVsaWV2ZSBKYW5pJ3MgcmVxdWVzdCB0byByZW5hbWUgdGhlDQo+IGZ1bmN0
aW9uIHdvdWxkbid0IG5lY2Vzc2FyaWx5IGNoYW5nZSB0aGUgc2VtYW50aWNzIG9mIHRoaXMgcGF0
Y2gsIHNvDQo+IA0KPiBSZXZpZXdlZC1ieTogR3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBp
bnRlbC5jb20+DQo+IA0KPiBpbiBjYXNlIHRoZSByZW5hbWUgZ2V0cyBkb25lIGFzIGEgZm9sbG93
LXVwLg0KPiANCg0KVGhhbmtzIHdpbGwgc2VwYXJhdGUgb3V0IHRoaXMgcGF0Y2ggZnJvbSB0aGUg
c2VyaWVzIHNpbmNlIHRoZSBmaXJzdCBwYXRjaCBzZWVtcyB0byBuZWVkIGEgbGl0dGxlIG1vcmUg
ZGlzY3Vzc2lvbiANCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiA+DQo+ID5SZWdhcmRz
LA0KPiA+U3VyYWogS2FuZHBhbA0KPiA+DQo+ID4+DQo+ID4+IC0tDQo+ID4+IEd1c3Rhdm8gU291
c2ENCj4gPj4NCj4gPj4gPg0KPiA+PiA+QnNwZWM6IDY1MTAxDQo+ID4+ID5TaWduZWQtb2ZmLWJ5
OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPj4gPi0tLQ0KPiA+
PiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHwgNCArKysr
DQo+ID4+ID4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KPiA+PiA+DQo+ID4+ID5k
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMN
Cj4gPj4gPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4g
Pj4gPmluZGV4IDVlZGQyOTNiNTMzYi4uNWViYzM0MDRlZWUyIDEwMDY0NA0KPiA+PiA+LS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPj4gPisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4+ID5AQCAt
MjIyLDYgKzIyMiw4IEBAIHN0YXRpYyBpbnQgX19pbnRlbF9jeDBfcmVhZF9vbmNlKHN0cnVjdA0K
PiA+PiA+aW50ZWxfZW5jb2Rlcg0KPiA+PiAqZW5jb2RlciwNCj4gPj4gPiAgICAgICAgICAgICAg
ICAgcmV0dXJuIC1FVElNRURPVVQ7DQo+ID4+ID4gICAgICAgICB9DQo+ID4+ID4NCj4gPj4gPisg
ICAgICAgIGludGVsX2NsZWFyX3Jlc3BvbnNlX3JlYWR5X2ZsYWcoZW5jb2RlciwgbGFuZSk7DQo+
ID4+ID4rDQo+ID4+ID4gICAgICAgICBpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBYRUxQRFBfUE9S
VF9NMlBfTVNHQlVTX0NUTChkaXNwbGF5LA0KPiA+PiA+IHBvcnQsDQo+ID4+IGxhbmUpLA0KPiA+
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgWEVMUERQX1BPUlRfTTJQX1RSQU5TQUNUSU9OX1BF
TkRJTkcgfA0KPiA+PiA+ICAgICAgICAgICAgICAgICAgICAgICAgWEVMUERQX1BPUlRfTTJQX0NP
TU1BTkRfUkVBRCB8IEBAIC0yOTMsNg0KPiA+PiA+KzI5NSw4IEBAIHN0YXRpYyBpbnQgX19pbnRl
bF9jeDBfd3JpdGVfb25jZShzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gPj4g
PiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FVElNRURPVVQ7DQo+ID4+ID4gICAgICAgICB9DQo+
ID4+ID4NCj4gPj4gPisgICAgICAgIGludGVsX2NsZWFyX3Jlc3BvbnNlX3JlYWR5X2ZsYWcoZW5j
b2RlciwgbGFuZSk7DQo+ID4+ID4rDQo+ID4+ID4gICAgICAgICBpbnRlbF9kZV93cml0ZShkaXNw
bGF5LCBYRUxQRFBfUE9SVF9NMlBfTVNHQlVTX0NUTChkaXNwbGF5LA0KPiA+PiA+IHBvcnQsDQo+
ID4+IGxhbmUpLA0KPiA+PiA+ICAgICAgICAgICAgICAgICAgICAgICAgWEVMUERQX1BPUlRfTTJQ
X1RSQU5TQUNUSU9OX1BFTkRJTkcgfA0KPiA+PiA+ICAgICAgICAgICAgICAgICAgICAgICAgKGNv
bW1pdHRlZCA/DQo+ID4+IFhFTFBEUF9QT1JUX00yUF9DT01NQU5EX1dSSVRFX0NPTU1JVFRFRCA6
DQo+ID4+ID4tLQ0KPiA+PiA+Mi4zNC4xDQo+ID4+ID4NCg==
