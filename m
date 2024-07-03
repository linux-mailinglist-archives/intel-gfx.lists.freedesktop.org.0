Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD9C9255D0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 10:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F383310E102;
	Wed,  3 Jul 2024 08:49:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j0fOhRz7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7671810E102
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 08:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719996540; x=1751532540;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Cb/ZZ6GNdq74nNpdKxpGl1Q4umwzeqGGtdezCRYWuFE=;
 b=j0fOhRz7/tt4b14kT1OUcITtqnVPVAExHkMoVxAbKYCiYngGqOFNHr6A
 WZ/4OCo3CGbCnmFof8GG48yXk6krK0z6N9vLzCteLtJ4TRybXIYs622JM
 sqF3zW2uXu52Gy651E6oSUbp5TMK4y3yz9fpIk0FglfxUgEaODl8SvxTg
 wTdiXZnljp0fvm1Q+uE2S440ETC2xVc32zXCCAzZV9EOZ47cIS/6t65Nl
 JbejtBqE8ne/X+NgIb2MD9CkiHr+x0RktHtUw/jgzWc08kab6wVttkhHM
 1pa1ESRlyS0ZyTfc8SbTp3hIeSQ+5RHnMJmdbHLOkjD7LSsLrpBdtQ6xR Q==;
X-CSE-ConnectionGUID: isoHXPG3RhSPYFq8p+ZoNQ==
X-CSE-MsgGUID: DYcT30vvRcq8gqTdd5L0yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="17166402"
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="17166402"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 01:48:55 -0700
X-CSE-ConnectionGUID: VoMhKnLZRkCx29aktH8zaA==
X-CSE-MsgGUID: gjkDb3AESfaQ9rCCPvrUlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,181,1716274800"; d="scan'208";a="50500877"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jul 2024 01:48:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 3 Jul 2024 01:48:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 3 Jul 2024 01:48:52 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 3 Jul 2024 01:48:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UX1pd6rKEJyBnrn8dAIPReu+zL9iFmYizN2RwbamRug71cypqrmkUMDDpOmYrd10XqQe5cJkRhtjmtu6rQ75eaURnIPlbqIhjCPXzQCJuEL46cjZPtVSaKzZ3il9i4rKdXMrWpE8YIW+c9MSEBByz8vR5ITZB0MuFYpztxa+kyTD2TzoRqdrfMj6kIA0yvm1SdSCTz0Do2xZ73OGrLCJ8vFfaj1j+uNz27pWa0xwcNjTyNPvIOX0nELB6Byz8HbYVMxQwldc5MsWv9jnGj0Qr1157cMi6+lCd686fizK06IcpRIbyiRQbkiZ2H0sOG/aGMlaohrqfwJXp3q2Ibr8Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cb/ZZ6GNdq74nNpdKxpGl1Q4umwzeqGGtdezCRYWuFE=;
 b=YBxyTcNKa4JvHdDwmF7M4aP61jSmUfqdGgsCSuTKZ+kTtDXKBEH2+uh3JmvvM4PISW9eRg4IdoBxWrWF1/VNNJuPqz1HK8WCRdgWauLfx8C0SIV11NHrijk2KKTqShLYLKqczhqvIwr2OeRauCHRNKnHB+6UMMmDCGxKSBN1KS7X71dPsOHJAgDQQRk35ldsOMdSp+lJukYQe1VvWxqKcATXvVIUM3vME8bJ/02WKu/RBcPHrN7mcJpBFMpp5LduBhWxstSSAgu3xcFJiE1LF40DPXHDybjMCRICB4xb01ryk8vXxt7FyM1hvR1ATR1TweJTFNtI6XVvsBc1tEdDpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS7PR11MB5967.namprd11.prod.outlook.com (2603:10b6:8:72::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.25; Wed, 3 Jul
 2024 08:48:49 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7741.017; Wed, 3 Jul 2024
 08:48:49 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 08/14] drm/i915/dsb: Precompute DSB_CHICKEN
Thread-Topic: [PATCH 08/14] drm/i915/dsb: Precompute DSB_CHICKEN
Thread-Index: AQHaxmphjj3pneYVdUixSdjqCQqr47HkumLg
Date: Wed, 3 Jul 2024 08:48:49 +0000
Message-ID: <PH7PR11MB598195CA46470DA02588DC39F9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS7PR11MB5967:EE_
x-ms-office365-filtering-correlation-id: e45e8637-3093-4fef-516c-08dc9b3cf57a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?U083U0lQd2xhNmk5enBZNFBqcnBCb01jR01KU2piQWlTdUdMMndvU0VMVTJa?=
 =?utf-8?B?QU1oQjFrcnFEY0IxeXl1em9pY0lsTjJSc0Q5dE9FdnBDVmpLZHlYSUpqNkFm?=
 =?utf-8?B?dlpLcE56eWQwYlJQcVM4ZnlVTkJZdmlqUUlzVDd1d1Y5dWIzc2RzdCtDZ1JS?=
 =?utf-8?B?elFPOTJrenNtTjllTnErclRBWE5VS3pDWGM5VC9vV3pNZXQyM3ZnR1NvZzJo?=
 =?utf-8?B?aHBGSE9URWNqUzYxMk9ldWp1SFN0VW5yRGlIcU84aDVaZGc3aThENXVEZ3By?=
 =?utf-8?B?SlgwRloySk02ZWlzZDgwejYvbHV0ZVBWbjh5ZGtaWUZHM25JaWR3VnA1SDJ6?=
 =?utf-8?B?OWhnM1pWM1RsdU1yQ3lia0E2dW1TQmdCTFRFc0w2dmhLSitFOFRweW1PZlp0?=
 =?utf-8?B?N1EvUEV1OGFhOSsrWFNTMloyeUpTUWwxL2xYVGIwT09va1ZKTlMvZ016ODRR?=
 =?utf-8?B?bWhIUGZkZjU1M2ZkR2V1dFdQT1M5L0FMOERROTgreVQwWFZQVWRrWDhvbUlB?=
 =?utf-8?B?ZHBxWTVYVE5kSW1XRGl4cFRhZk5xQ0NDMlB6ZGMwVDFTTUp3WU0xejRFeFpZ?=
 =?utf-8?B?V1hDVGRETnpwMmNwSmNsajlmNVZ6RTJUUXlsd1JONlBmSjFUWW0vUmhIT29Z?=
 =?utf-8?B?ZmpFSUNnWDdnNnlXRkpJRjl0clh3T0E3Yy9FWE4za0hvSXhzMHRBQ1ppSUdY?=
 =?utf-8?B?QzdST2xFY3B3UUNWa2pYYndLK0lMU0NUb2dJSXVjY056WWtpNitGOXFLYTlM?=
 =?utf-8?B?aTMrbExDc3hzVUNqSkpWSldQNHdMR25GWGxYcTZISXB4MHk5WTFRK2E3Z2I2?=
 =?utf-8?B?aGU1QkZTSVljVHVDdlFQNVQxeXRHVXgrZFdHTnBwZFUyT2NrbTk2QUpvT0Rl?=
 =?utf-8?B?N1paMnNKOUZSYi82RldvSGx4cTkxUEdNMDFPU283OUVEUWdzdForVGpEZVlo?=
 =?utf-8?B?ZnRTYk1hZGV0TmpIWnRMZnhpajUzS0JiUzhsVUFINFdlUU5UbTN0ZVNGRVNx?=
 =?utf-8?B?VDFwZGhjTWxNdmtxM1pjQjFqeVZXbDNJY04wUjU5dGc0dWtYbitZRUNqSi85?=
 =?utf-8?B?OEU0VlY1NVljeGZXUWxPWWFDQmF6blcvaGs4TUsvWFhma29lTGtaTkplMjlD?=
 =?utf-8?B?c3UvOFdjNm5GNExheWNKRURydWtCZUg2VDZPMlVSM2xZZ0RxQnJOMStIdzl5?=
 =?utf-8?B?QkdhOXp0a1V6aGxtbjhmbDVKc3VDMm1LRE4xMVg4bGdBWHZDNDU3VHNMaHoy?=
 =?utf-8?B?TDlZSXNEM005YXZpRkY2M1pLcnlYa1l3VzNZMzA5bmlxeHNXdk9JWGZGbG12?=
 =?utf-8?B?NUZtRFMxdHYzc1g0MjFaUlQzTGFCUThDejIzVmVkbnc1Z2FFUllMUkE0VG93?=
 =?utf-8?B?R0lXdFoyVG5XY2hXVWZMa1hsVW45cHJvV1VBTzduV09hQjJ4TXlTT1k5N1h2?=
 =?utf-8?B?aXRXN3RiZVYxMmhubVZoMkJjUnBCVUczSDZqTERDZEw5TFRtT0JVZXdaV3BE?=
 =?utf-8?B?TDZza3Y4ZXRMcXhneW4zQ3dSMGd6NHFMOUdjakVJT25GY2lhcm1FSStJUG1z?=
 =?utf-8?B?M2crdUpYNW1iajNpaHlKSk9ZVjZSOXBGdzBTZ3pZclhWOXZyUTJ2VTlxOFpQ?=
 =?utf-8?B?OW4zMnQ1OXFKbUgvb2pYQWIwb2V2Wk1GWHk0OVl3cTY3SkJBTEloWjEwWFFG?=
 =?utf-8?B?aHd2WTVFSmVxYzYrRWlqZDA4QnVETVNnMXpKQklUdzNYVEszOTZmbzlzTkMr?=
 =?utf-8?B?eHpob3ZKK244ak9nUU9NSTg1clVGbGJBTmN3ZzdZVHVRWWpIMlIyL3BlcGNS?=
 =?utf-8?B?ejVZaWtJNUxSeFpodGt5OHp1RS93N21PRHJxM2N2Qy9lSDRvS3RQUFRNS1FL?=
 =?utf-8?B?SU5ocnVsSlhHUHcwSHNYQ2JOUEZBT3A5Ynh0L3BuRUpqVVE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2tqY1JiYTZxS2pPb0Zxb3JCYi9BWVhWT0poTWRkY0FUMFRreVlBUll6RHhH?=
 =?utf-8?B?SnR6SnJ3eTREUGt4WWY3d3lBQk9GRy8wQTRPWmZXVVZiRVhHeldaZGF0RXM1?=
 =?utf-8?B?ZHFQWGdPRC9DaStWbjZzbzEraHJOaWxyWVMzM2xUbGlnYVRpK2RrZGtiRXd6?=
 =?utf-8?B?WDBWQkcrMkdvTmFLOUVhZlNLbjlwS3hSSE1XY0l6M1lYdzYxZEtQTDZPQ2dy?=
 =?utf-8?B?ZVEyeWdUc2llTFE2Mjc3RUIwSGFUeWFUZWJjZmVTL2lObkMwekQ0WmdBTFBK?=
 =?utf-8?B?RjJuSFlUY0ltUzVrdEUvUnd2bzJmdERmcG8ycDlEWjIrNzdQYStneVROWjVU?=
 =?utf-8?B?aHV3andTcFhIY0hmRURoeGhjaTVKS1E1VytWaW5VMHBQVURxVkpLQjFBcUUv?=
 =?utf-8?B?WmZyd1hveUlueXJiM2lyT3I3YUhBblV2d0JTUXNLU3g0MCsvbUlENW1paGxZ?=
 =?utf-8?B?ZXUrYXIzVnVEN2wxSkw4cjIxc082QnpSZ2NmcWRDeklQdEZ5QUVqRTRPckND?=
 =?utf-8?B?STluYWhGY0FFQnAzZUgxTEYvaVZCR2tCcUx1RklXeXFVazU5dGU4VDdVLzNZ?=
 =?utf-8?B?ZnBaNkl2MlNEdW9DWTRVTXRmdUd6Wm8wS3BJU2xHVjRNVzJJby8xQ1NRSUtM?=
 =?utf-8?B?YUxVV2tYMWU0L3pIUzUrbER2KzE0eFVPekRhYmxpeWNNbi9HdkZoNU1CT1ds?=
 =?utf-8?B?RU85ZkRxUFVYL0NUUEFwSU1hbStSdFJDUEM4UzJRNjJ3d0xVL2dCMXN5amFR?=
 =?utf-8?B?ZmtFWThYZ0V4TlM5djJnNXZrVC9QUlFMNldycnpTbjNJcU8yVG83NEErR1Jn?=
 =?utf-8?B?SlJPdUlEN3ljZG5sbWU0R1orbFZiSGV1Rk9maytKbXFLOTJBVW02Z3VRYWNq?=
 =?utf-8?B?ZjVYL1R2b0dHUFZMV2pjb1BuQUJRS0NhYjU5b1gvbUNaWUNROG4wN1Z2dmc0?=
 =?utf-8?B?SVVEMitHZGR5NG8yL3htR2pCTUhydWVhTE1KRFplYXBaL1VKdTczdlBldWtm?=
 =?utf-8?B?d0VSWVdRQUZFYXVrZ1RBMXB1TG9qeXJqTXdzSHVraU5SNFpVaThuU2x6MTcz?=
 =?utf-8?B?ZnJRTjF2MENwbmdrRy9kT3hlZEQ4dmpGWWMydENQZ1RjLy9POUdEdGV4ejN3?=
 =?utf-8?B?aWx6S2lHazRoWG1MSExkRXdjbW1nU3pNUGVkYmRMczlRSHRRclk3OXZuSWZF?=
 =?utf-8?B?VldvaTdxK3dTeVRZT0FEaTRsM0ZQSlNKRXFwZ1FHbE9nc2pQYnllN3Bydmtw?=
 =?utf-8?B?Z1RDQzB4eDcybUpoOUF5VWZZbEdTTU1pS05zcStxRzZ1SkdqUUhNUkZGQmlx?=
 =?utf-8?B?WnJ5bjU0bkx6R3lYVThXcWUrcmVWS2ZCZGhieGNpS1VPZTF3NXdnWU9pT3Bm?=
 =?utf-8?B?YmFqSzhZWnZ6Qm5KalBRWGg2VE8rTlhSMU1ocnIveGhlR1dYUFJyWWJSYlVz?=
 =?utf-8?B?UE5YZGZ4SkZlNDdHTzdDWGtvQ3I4Rll3R1l1b3Bxa0xiUEgzRW1WMkZMUDlF?=
 =?utf-8?B?akdTb3lUV1dvamRCdVJGakJ5QmxEU1RZcHVpa3B2U3BBVm04ajQ2dUVjblpu?=
 =?utf-8?B?a2FSbGhLZEZzcG5mN2ExV29jZWtRVDROaERYcjBTT1NxYW4wTXF0eFZ5K2JB?=
 =?utf-8?B?N0NFNWREejdSWEMyWGNhdE5qUkVXanFydlFyYjBnWStEcFlkM0RvR3JZYzJi?=
 =?utf-8?B?S0xndTNHZUhIaStIWGVKMUtwaUhxUkdwVmhBODJvUEc4THJ1ZUhVRFhsaFRr?=
 =?utf-8?B?bU5keHBQaG9BbjZySVlMaDBoMUlDWFFwcFp6LzNCdEdGSmRVZlNsN1VPckhW?=
 =?utf-8?B?UVlJNVViY0FvbC8xMDlKNnZIVStBdnE0Y3B1VURjTzBRMngrQUFBUjQvVzlF?=
 =?utf-8?B?ci9hSUtpR01lMmtPVHN4UDROL3k2b0M2T05FUGY5RVBKb3FpTy9iRzRpUC9x?=
 =?utf-8?B?S09YQlFTbjBpVjFMY1JpWS8zaWZMSk5mRVlaS2tRVWdKSHVadjI0eFM3RFlM?=
 =?utf-8?B?bklTUnYvWVR4N2tyek84VjZGTXZFUThMYnBEbUhFYnlBZ3lJd3NpaEdUT3dT?=
 =?utf-8?B?SCs1SjlFWjVsMTM0K1lwM3NGZGlibGFmSENtZGlnS3UyVlA4VlZrNmp3VXRP?=
 =?utf-8?Q?u/YRO50xY413DIMRHbfu+/zOK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e45e8637-3093-4fef-516c-08dc9b3cf57a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2024 08:48:49.8464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0wPUCUJJoCYS0pYMHAht3q7a+pT5daHfwcLK0aoPuO9874KmWc1t6V9zS1kK4fjwo2fR2LuTHKt/z+c7eZenqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5967
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgMTI6NDAgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA4LzE0
XSBkcm0vaTkxNS9kc2I6IFByZWNvbXB1dGUgRFNCX0NISUNLRU4NCj4gDQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBBZGp1c3Qg
dGhlIGNvZGUgdGhhdCBkZXRlcm1pbmVzIHRoZSBjb3JyZWN0IERTQl9DSElDS0VOIHZhbHVlIHRv
IGJlIHVzYWJsZQ0KPiBmb3IgdXNlIHdpdGhpbiBEU0IgY29tbWFuZHMgdGhlbXNlbHZlcy4gSWUu
DQo+IHByZWNvbXB1dGUgaXQgYmFzZWQgb24gb3VyIGtub3dsZWRnZSBvZiB3aGF0IHRoZSBoYXJk
d2FyZSBzdGF0ZSAoVlJSIHZzLg0KPiBub3QgbWFpbmx5KSB3aWxsIGJlIGF0IHRoZSB0aW1lIG9m
IHRoZSBjb21taXQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8
YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQogDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDkgKysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGluZGV4IGIzNjJhMzA1MGM3Zi4uODE5Mzc5MDhj
Nzk4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4g
QEAgLTQzLDYgKzQzLDcgQEAgc3RydWN0IGludGVsX2RzYiB7DQo+ICAJICovDQo+ICAJdW5zaWdu
ZWQgaW50IGluc19zdGFydF9vZmZzZXQ7DQo+IA0KPiArCXUzMiBjaGlja2VuOw0KPiAgCWludCBo
d19kZXdha2Vfc2NhbmxpbmU7DQo+ICB9Ow0KPiANCj4gQEAgLTE0OSw5ICsxNTAsMTAgQEAgc3Rh
dGljIGludCBkc2Jfc2NhbmxpbmVfdG9faHcoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsDQo+ICAJcmV0dXJuIChzY2FubGluZSArIHZ0b3RhbCAtIGludGVsX2NydGNfc2Nhbmxp
bmVfb2Zmc2V0KGNydGNfc3RhdGUpKSAlDQo+IHZ0b3RhbDsgIH0NCj4gDQo+IC1zdGF0aWMgdTMy
IGRzYl9jaGlja2VuKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiArc3RhdGljIHUzMiBkc2Jf
Y2hpY2tlbihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJICAgICAgIHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiAgew0KPiAtCWlmIChjcnRjLT5tb2RlX2ZsYWdzICYg
STkxNV9NT0RFX0ZMQUdfVlJSKQ0KPiArCWlmIChwcmVfY29tbWl0X2lzX3Zycl9hY3RpdmUoc3Rh
dGUsIGNydGMpKQ0KPiAgCQlyZXR1cm4gRFNCX1NLSVBfV0FJVFNfRU4gfA0KPiAgCQkJRFNCX0NU
UkxfV0FJVF9TQUZFX1dJTkRPVyB8DQo+ICAJCQlEU0JfQ1RSTF9OT19XQUlUX1ZCTEFOSyB8DQo+
IEBAIC00NDksNyArNDUxLDcgQEAgc3RhdGljIHZvaWQgX2ludGVsX2RzYl9jb21taXQoc3RydWN0
IGludGVsX2RzYiAqZHNiLA0KPiB1MzIgY3RybCwNCj4gIAkJCSAgY3RybCB8IERTQl9FTkFCTEUp
Ow0KPiANCj4gIAlpbnRlbF9kZV93cml0ZV9mdyhkaXNwbGF5LCBEU0JfQ0hJQ0tFTihwaXBlLCBk
c2ItPmlkKSwNCj4gLQkJCSAgZHNiX2NoaWNrZW4oY3J0YykpOw0KPiArCQkJICBkc2ItPmNoaWNr
ZW4pOw0KPiANCj4gIAlpbnRlbF9kZV93cml0ZV9mdyhkaXNwbGF5LCBEU0JfSU5URVJSVVBUKHBp
cGUsIGRzYi0+aWQpLA0KPiAgCQkJICBkc2JfZXJyb3JfaW50X3N0YXR1cyhkaXNwbGF5KSB8DQo+
IERTQl9QUk9HX0lOVF9TVEFUVVMgfCBAQCAtNTgwLDYgKzU4Miw3IEBAIHN0cnVjdCBpbnRlbF9k
c2INCj4gKmludGVsX2RzYl9wcmVwYXJlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiAgCWRzYi0+ZnJlZV9wb3MgPSAwOw0KPiAgCWRzYi0+aW5zX3N0YXJ0X29mZnNldCA9IDA7
DQo+IA0KPiArCWRzYi0+Y2hpY2tlbiA9IGRzYl9jaGlja2VuKHN0YXRlLCBjcnRjKTsNCj4gIAlk
c2ItPmh3X2Rld2FrZV9zY2FubGluZSA9DQo+ICAJCWRzYl9zY2FubGluZV90b19odyhzdGF0ZSwg
Y3J0YywgZHNiX2Rld2FrZV9zY2FubGluZShzdGF0ZSwNCj4gY3J0YykpOw0KPiANCj4gLS0NCj4g
Mi40NC4yDQoNCg==
