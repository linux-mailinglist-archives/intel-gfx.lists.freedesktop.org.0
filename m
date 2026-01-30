Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PC5L/2BfGlwNgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 11:03:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD529B921B
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 11:03:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 331FD10E955;
	Fri, 30 Jan 2026 10:03:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FsCqMA4r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB9F10E941;
 Fri, 30 Jan 2026 10:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769767418; x=1801303418;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SltBSVt0N4zgZYCsc48zY+Y8AnD35Bm1WlpjT/taE/I=;
 b=FsCqMA4rcaMM65pHvL3fF99UKlISD2TSq7wmDyQYxGmRxqmkzkowkw/E
 ROh4lT+eqPwWQMybsYOqbf4RfwMPD/YfOIvupLEI62pTkFIxUg4ioSroB
 RiH1Jnkolap3wwscFqNRNtU73yfc3mTS0WSmyMqTQRm017yqUkZBAzGcB
 1/6QBOFlWtwmi268OuIEEsDuyGh59tWer5l+J+wc5QyzaS4kF8IHRtxpX
 4JfbtZ+57Z0n4wkYh2eegDn1TJG0M7fyXrvJGm6nqbi3DLrBNZrmdjFGN
 eyicBQmdc4+0DpL3/thcIsBr3gp7rTsVR7cSPeI2nyXD9OzklE+GHv4Dg Q==;
X-CSE-ConnectionGUID: bqaxUmFdTI6grTxQ5TEdEQ==
X-CSE-MsgGUID: UPl7oTQ+Tnu52ETfbIlIgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70994972"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="70994972"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 02:03:38 -0800
X-CSE-ConnectionGUID: zTv286XjR2mUcVQf1aMImw==
X-CSE-MsgGUID: 1fp6Yy+tR0STrpEJx4jjWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="208415451"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 02:03:37 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 02:03:36 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 30 Jan 2026 02:03:36 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 02:03:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BAtY+t0tN1O7zvwPZPqGoBCRfj3guF3t0Mb4XYNdcNr571xqaoO4Vs6l1iiMh4TrXY27cOEWq4AxtecW/qnFGhaKQchKXwTxHSYtTuIvYUfCjf6ydtT7yynoW/aOcGLkFzJIhL725deIOojtCeQFAwmhcU5E1BExsOS3yYVw6Wb0FcPziWDXnX6wJRIHW1WOy2fl/kLOjwJEAHkNWMf7eNzTdYz2D/LbTA3eQbzdzZqauRlW107rO1RkEm3xplxrdCchYXZlb/swpAzA8GYgf3n1UdWmGW+4UN3I1dYLlSGK5E0ivNtNcIT9PfanCcb7jbdv3MeK6Pl2IbQtjyI/Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SltBSVt0N4zgZYCsc48zY+Y8AnD35Bm1WlpjT/taE/I=;
 b=ZUiJMQOof5RlEgKyYqNqN8IujlCLQt7LLgfMUVdhHaGQe6mAdGgL79iBi7nvmyd8kIvDamAsuhUnr4epy/Gb9pi4BiaiuMVsqfQFc/DrpRr92lva60g+idHCd5INh06V165Rvgz9OcTCJ3/Tf5Ao5AxqF5X7TRJwy+dvfr4h1SSkYGfljDWBpZOoQ1L6LT256cKebMf+wg/yC+Bxjpx5wZyrjursoltrcQ3fEvrMzzog1tSe0UWqSgSco/wg32mOVfDlDUutkg4ICsSPaEBP2q3nnXpV9tQX/nMIGZV7vrJsfl7AW2wFm7EfojdUI9yD90rRF/1RUo92SZRh3iRgHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA1PR11MB7856.namprd11.prod.outlook.com
 (2603:10b6:208:3f5::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Fri, 30 Jan
 2026 10:03:27 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9564.006; Fri, 30 Jan 2026
 10:03:27 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/power_well: Enable workaround for DSS clock
 gating issue (22021048059)
Thread-Topic: [PATCH] drm/i915/power_well: Enable workaround for DSS clock
 gating issue (22021048059)
Thread-Index: AQHckCp497DUccjaR0esMjQ+crWtQ7VoeXWAgAIFU9A=
Date: Fri, 30 Jan 2026 10:03:27 +0000
Message-ID: <DS4PPF69154114F90D80EE682C97CEBE83DEF9FA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260128074806.3324942-1-mika.kahola@intel.com>
 <DM3PPF208195D8D3369479F89074B2A9E68E39EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D3369479F89074B2A9E68E39EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA1PR11MB7856:EE_
x-ms-office365-filtering-correlation-id: b866046a-b149-4b25-60a3-08de5fe6d06c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?NG1TTXNFSzdZNTJ2YU5kbUh2SWNZdzk4aVZ6aUdGNGVZbzR2UDVJcVNuUXZs?=
 =?utf-8?B?NVRDRmZTNGYxRExLZXNVT0tjdGo4aTZmbU56SGFBelBKOWpnQXQ5amdaYzZz?=
 =?utf-8?B?VjJSZjZkaUdtOTUzNkladGlOZkJTSFh1ZzJZa3hlYlJJMWhIYi9qY20rYVJK?=
 =?utf-8?B?L1BXRmY3ZUE5R283SE9IZXJ2d1ByQmQvakljejA4M3lwNWhJOHRORHFMTEJI?=
 =?utf-8?B?SitVeTFMQU5Qd1RuT05GOWs0VEtqUXhnZlJDM1VPOUJrWTFwSnBCT3dHTDZD?=
 =?utf-8?B?TERDRmJWN1lyTjh1elA1OXpwMGs1UVQ1eS9JaUpsK05pUTdUUk9CcGEybmtO?=
 =?utf-8?B?dDBET1pmQjIwOW1SS0laYmRhdHhNNTZvTTIvWER6NkhkTG1ZeDVlNGRoVGlT?=
 =?utf-8?B?OWJzbEo0bGpFSjFOOUFTd0VVblFXUmhqdkFZQTNydlc1NFJEZVBhSU1GQ20w?=
 =?utf-8?B?dDg2bnUxcklCMVBKRzZnWGVDbTFpNTFnVjhQMDFCcjdWa3hkR005UUNXUm9R?=
 =?utf-8?B?b0VPT3J1NEFHcFhldElFQlZib1pQRWJ6UC9SamRsMUdNM3VQd3Zoa1ZaUjNk?=
 =?utf-8?B?dnpYcXJETzRwcmZFQXVEWTM2QWFnajBrbHJMZ2pQMWRGZklyaUVlTGpDb2k0?=
 =?utf-8?B?RFMvcy9xQ2FQbEk2ZHVJa2dyVXZGL2lBc1AyK1EyNlNFK0hmN2V6bXl2Y0ht?=
 =?utf-8?B?WTVxYmxHc000c1FtTWpMRER0RW1iMCtlTlJIRjRxcmJNK3h3U2g3UVhSMjdj?=
 =?utf-8?B?R1BUMkNLSWRZYkhoWG0rYTZOODhvMHBrLzZKbGhrelNXd1dsS2E5UW93QnVD?=
 =?utf-8?B?YUFoNHRIbHZIUGxnbGNiNWNQRVNEVEFOTjFZQTdOckNpRDBSYjcrUGVIWktp?=
 =?utf-8?B?UlhGZWMwLzMzd2JRL25JSnZrK2VUTGkzN2l5RnFvc2hyNjVFUE0rbVYxU1R1?=
 =?utf-8?B?Y2ZaYVR0anlNejFlL0hyODR4NzJvWTMwdStuTFJ6L0UwNEtaK1Y0cDRvUFh0?=
 =?utf-8?B?MGtXbUZzWFhCMWdZTnNPbFF2ZkExUTNhbkVUVlllUTIvVUxwVFB6NnVBOFUv?=
 =?utf-8?B?cFlFRXJXRS9OWWFMVklvMGlzNTZkUE45eEVXRk9JcE1FdGJEWFdYdlhWSEpo?=
 =?utf-8?B?RjVTUWVQd0h2aVdMekl2cVo0c3dLNTh4Qm9RYnVGT2cyakUwOXJHcFh1QXIy?=
 =?utf-8?B?UC8yVUFMMVNlWVFiUkdsWHBFTmUzZnpVSHlPdjIySmxRa0RJRnJNTWU5SE05?=
 =?utf-8?B?bWVVMmF0K1hadXRta3RVMjFCb0FrN21FNFNrSVhqWjd2V1JzZXpkM2l4b0xV?=
 =?utf-8?B?UGlyZ2d6Vzh3bjNtRkcvOExWeEJkalI3amdKYkxhZXliU3RQM09mVm5qQi8v?=
 =?utf-8?B?T3RISGN3VXpnL0xRcjIyT2FLc1JSZ1lEUlBCZzl5S25UcnFLWTdubjZtdFYv?=
 =?utf-8?B?ZFBWNC81MUxaK0JIWWI1b09LSUJ5SjJGMTA2aVlhdFlYV01YRHdhM2xRQTE5?=
 =?utf-8?B?QTUwb2hkVXU5REVpdnJoZjZyY1JyOVVwdFp0Y3lpanFhOFZwYm8vUm5PakE3?=
 =?utf-8?B?SVhXdnNXV2x6NU01UUxFQTNFNHBVM0JEUUdFWHE1Ymx5V3E4WEloUlUwNEVV?=
 =?utf-8?B?VGZuTEpBckhmTG1PRTJiUmVPOG9rWHBSS0hIcGg0ZEhIMU5DZlF4cUhWTHNm?=
 =?utf-8?B?dHZ0Z3BvR05vVFFZVFNCNFZOM3JRbkpxVXNJOWZBTnZvbUNXQmJPRkRLMGNk?=
 =?utf-8?B?RzhKOHBmcU43Q2RlcHlhREE1cjJ6NytxMkhBMnVXNkxWZEZjaXRWNmNWdk5l?=
 =?utf-8?B?RUpoVTZRMmxNdFh6eURBRTh4LzlMUzRhRFExU1c2TncvRHhZbnIrak5RV3dR?=
 =?utf-8?B?SXV2Q21CVVZSVEJHaE1JbDJpSWVkWnBhM1dHWkE0b2VXUkdVUitvQkI1bCts?=
 =?utf-8?B?UE1rb05qdU95OUhWYmlJbDJwYnl3VFNrcWN3NVoyZHUzNi9aZHVIdGxBbVhY?=
 =?utf-8?B?UHFPZWZYWXBOUkZJVHd0czdvQmF1RDlLZTZxZ1hCNFBNSVpHR2NFZzBOcERK?=
 =?utf-8?B?S3g4ZHVzRERQRkVUOCtIQjRFZEE1aURkS1FoUWpRQ1dFVVRUWkJJdThVQitw?=
 =?utf-8?B?NmhUOTEyUUlCblVXeEl3UDVIQTFBU0llSU9VRnJWS3BBa3h5VHM0dk1WaEJJ?=
 =?utf-8?Q?RAI5cXCFtyde1EpFafRQSJ8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NmN4UVhmbVlwUnc5eWkyNkpnSjMyYzBkTE5VUDBwdXZ4WGZxbE1xM1hML2ov?=
 =?utf-8?B?WUpUQzFFWi9IVmk3TkdJRU94RlRGa2x1ck1YQzFmTkdjZUhGZXlpZW01aFFT?=
 =?utf-8?B?TjJabGpCZDhTZGdFM2lnV2NDWENsMUZYVHNpVXFzOHdDdzZOQksveFpJa3JE?=
 =?utf-8?B?SzNRalk2UXc4OWphalFhdDIwTWFsWjlBMStrRWJXWkgxWlZmWkx5UHVuSE5o?=
 =?utf-8?B?a3E5VFNvUmNoM0VORWhNL0QyL2ZKUG1yNUhCQzd5a0dmaGc0NHhlRmpjdTh5?=
 =?utf-8?B?dFVZVnR4S2ZsZHF2LzlpU0Zyb3M4MmMyRjFvUUlDVGl0T1dWVnFCc1pXaU1q?=
 =?utf-8?B?RjNMYzViVVE1d2dKdjFLUW4yU0xKWTBQaG9YWVhLNElUdU1rVHgyaHpJdXYz?=
 =?utf-8?B?Y0RyS2x3RlFmbW9QV2Q1UlQ3VEwvL29sUW1Yc2xYYzRaZHpPYXRNNTQ3dVdk?=
 =?utf-8?B?c1lKV2ZPRG1Hell1WHZUWXQ5bitWZmRVNDRZYzYwZFhORmU1b2crTERBYXNl?=
 =?utf-8?B?cDNZaGFYZHNtbnBFcVYyRWRGQUFtcmZuNGZMek1UQWNiSStKZGc2T3AwWFNn?=
 =?utf-8?B?dTMzVkk5MXAwU3BERUNhOXpuNWhGUkhpSHUxLzgya0NiOUlORWV3MW9tMTZp?=
 =?utf-8?B?eEpLM0RjZm0yWW0xMzBHcmtWdmtHK1dZTUtxMzVjSEcxZzdlczIzbXZGNVBQ?=
 =?utf-8?B?ZlhkY0dvVEZPTFdRVFpWanBCbmFEb3pYdmFpL3hVVFJoSWJNbGhMdk40SjV4?=
 =?utf-8?B?djYxQkszdng4cFkvdEZNa3RTQUczalFrVHdJWm10WEJEOHNQTm9NcUVZMDUx?=
 =?utf-8?B?L3ppRTh1Q2oyb0xKbmp5bkxzVERMZDFDdXFWRStOWkpxSmhndkhXQVR5L2hz?=
 =?utf-8?B?OHdOaGozNTBCYVZSVlVjL1NMb25HclBLSmc0U29GSmlnUm5SSjZwZ1VLaU5B?=
 =?utf-8?B?NFlwM3F3aUx5Sm5QcFRjYkNPMmFFT3FCaERJdzFHVTdlNHNWSndsVHRYOUFO?=
 =?utf-8?B?ZDBxam5OQUxNRzZXY2ZneFYxRlNhWm1XZ0o4U2Zodkg2OS9ibDNGb3h1VzFi?=
 =?utf-8?B?M3lUWGxOUHBHSXU4ZmFNUGVVU3VETTZwdVRWTDJPaFhzbk9neGRpMGx6MTQx?=
 =?utf-8?B?SEZJU056YXEyNDNseUtMR1lsUk1EQTMvL09tU3ZVd280UU0rUWZoV09wVGg4?=
 =?utf-8?B?bW5zWmxrd2pwTTZEQlM1VHZYci9Tc3ZyU3NOTW55Q0V3QkgvaVdmRUZKM3U3?=
 =?utf-8?B?amx3bjJ6a0tvUjROa0dDQWgzTWs0N2VYSWVCaEpLTExtQUQwQXpBK2F4RUd4?=
 =?utf-8?B?UHUwZkJIL0VESGE0WjlCS2l6WEovKy9XNVoyV2dTalRTeGVSZXdZR2RublZm?=
 =?utf-8?B?U3phL05OYkNsL0NxemlmM05wQXg0c2VWK21Dc25MVHFpR0ZUZU1WRXo0Tnk3?=
 =?utf-8?B?Nkh3UEgzcmFOaWxKc2tkOXdTSWpKN2svbWwvRitkQ0dkTVFsUFAyakR4dkVm?=
 =?utf-8?B?OVB6eWQwci9EQlR6clpSeHVvTnd6aUx5K0hnRmN4OHhxUFRMZUZLTFZEd0p5?=
 =?utf-8?B?eFpHZWJBNERqUDhzU1duY0xtSUpTd2FlenBSTk1LVnM0amNvSFlmT3Zqd01N?=
 =?utf-8?B?UnFrNncvT3ZwZDJGdFdaWlExeXBGNTBBelI4MU5RQkc4SUxwSUVvOUFwUFJP?=
 =?utf-8?B?TWdnOGlzd1UrRXZveTZvOVNhMURYdUNuU2NjS1lPazhMMVVjdVplcHdkOHJC?=
 =?utf-8?B?YkVoMDV6MXphTHR1aUhFVnRoQjZvK3duS0x2QmZ4SjQva0MraHpUSXJGNS9S?=
 =?utf-8?B?a0FublJsMnlldlNodmI2SXhBeVRyY2ZPTnhoYjFYYU9zejVmWFVBSjZuMG54?=
 =?utf-8?B?Mk1peE5QdVQ3TnhFMjF3QjFlNlp5VkZUbmdYakNhMzZJWG1QM24rY0tUK1NE?=
 =?utf-8?B?T2FpQU8wKzJaKzJpREEvQ3RudURGL28vaXByK0d0eUs5bkJ6RXlseTdHenRY?=
 =?utf-8?B?dUJwbStJTlVtS2RTalBTNjFUaWROUGtmaWNtaDZiMXNjSldaZUZtSDltMUNB?=
 =?utf-8?B?WCtBSkZXZDIxRGtPaElUcEZIVFhZNnJieUhnOTM0SFhaak1ScEYrVG9LVGxo?=
 =?utf-8?B?M21wNkVOSktmOFVoei9tZ29URitBR1V4Tm9KZVhJOUZLcWJwaTBENVNGZnlt?=
 =?utf-8?B?bFYyUllpQUdyd3FYSjlxZ05SWi9FcWYvVWJwVzM4cnhXR0JYTjk5WlF6di9O?=
 =?utf-8?B?ZVFyRm9xeUVyYkxBNFlKcmdGRkFFcmR4TTcrNkg3YVdKd2VUZy8ySjFKWWt5?=
 =?utf-8?B?UEFYckhKZlBDcmt1Z25hWDkwNno5ekhVTlBHQnJ2eVlzQlhXMmdFQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b866046a-b149-4b25-60a3-08de5fe6d06c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2026 10:03:27.6641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Jw1SnWiRXMlHnI+tJozgMNbrUn6VqHm3H57Qk/+YZu1P+RzxBFaISz0az++XpaVO8eK4Lm0fhRFfoBececUeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7856
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AD529B921B
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAyOSBKYW51YXJ5IDIwMjYg
NS4xMQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBS
RTogW1BBVENIXSBkcm0vaTkxNS9wb3dlcl93ZWxsOiBFbmFibGUgd29ya2Fyb3VuZCBmb3IgRFNT
IGNsb2NrIGdhdGluZyBpc3N1ZSAoMjIwMjEwNDgwNTkpDQo+IA0KPiA+IFN1YmplY3Q6IFtQQVRD
SF0gZHJtL2k5MTUvcG93ZXJfd2VsbDogRW5hYmxlIHdvcmthcm91bmQgZm9yIERTUyBjbG9jaw0K
PiA+IGdhdGluZyBpc3N1ZSAoMjIwMjEwNDgwNTkpDQo+IA0KPiBZb3UgZG9u4oCZdCBuZWVkIHRv
IG1lbnRpb24gdGhlIFdBIG5vIGluIHRoZSBzdWJqZWN0IHNpbmNlIHlvdSBkZXNjcmliZSB3aGF0
IHlvdSBhcmUgZG9pbmcgaW4gdGhlIHBhdGNoDQoNCkkgd2lsbCBkcm9wIGFsbCBtZW50aW9ucyBv
ZiBXQSBudW1iZXIgZXhjZXB0IHRoZSBvbmUgaW4gdHJhaWxlci4NCg0KVGhhbmtzIGZvciB0aGUg
cmV2aWV3ICYgY29tbWVudHMhDQoNCi1NaWthLQ0KPiANCj4gPg0KPiA+IFByZXZlbnQgZGlzcGxh
eSBjb3JydXB0aW9uIG9ic2VydmVkIGFmdGVyIHJlc3RhcnQsIGhvdHBsdWcsIG9yIHVucGx1Zw0K
PiA+IG9wZXJhdGlvbnMgb24gTWV0ZW9yIExha2UgYW5kIG5ld2VyIHBsYXRmb3Jtcy4gVGhlIGlz
c3VlIGlzIGNhdXNlZCBieQ0KPiA+IERTUyBjbG9jayBnYXRpbmcgYWZmZWN0aW5nIERTQyBsb2dp
YyB3aGVuIHBpcGUgcG93ZXIgd2VsbHMgYXJlIGRpc2FibGVkLg0KPiA+DQo+ID4gQXBwbHkgV0Eg
MjIwMjEwNDgwNTkgYnkgZGlzYWJsaW5nIERTUyBjbG9jayBnYXRpbmcgZm9yIHRoZSBhZmZlY3Rl
ZA0KPiA+IHBpcGVzDQo+IA0KPiBBbHNvIG5vIG5lZWQgdG8gbWVudGlvbiBpdCBoZXJlIHNpbmNl
IHlvdSBoYXZlIG1lbnRpb25lZCB0aGUgV0Egbm8uIGluIHRoZSB0cmFpbGVyDQo+IA0KPiBSZWdh
cmRzLA0KPiBTdXJhaiBLYW5kcGFsDQo+IA0KPiA+IGJlZm9yZSB0dXJuaW5nIG9mZiB0aGVpciBw
b3dlciB3ZWxscy4gVGhpcyBhdm9pZHMgRFNDIGNvcnJ1cHRpb24gb24NCj4gPiBleHRlcm5hbCBk
aXNwbGF5cy4NCj4gPg0KPiA+IFdBOiAyMjAyMTA0ODA1OQ0KPiA+IEJTcGVjOiA2OTA5OTEsIDY2
NjI0MQ0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgLi4uL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyX3dlbGwuYyAgIHwgNzggKysrKysrKysrKysrKysrKysrLQ0KPiA+ICAuLi4vZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmggfCAgNyArKw0KPiA+ICAuLi4vZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jICAgfCAgMiArDQo+ID4gIC4uLi9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmggICB8ICAxICsNCj4gPiAgNCBmaWxl
cyBjaGFuZ2VkLCA4NiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
cl93ZWxsLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlcl93ZWxsLmMNCj4gPiBpbmRleCA2ZjliYzZmOTYxNWUuLjFlZjQ1MGYyNjg3OSAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXJfd2VsbC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3Bvd2VyX3dlbGwuYw0KPiA+IEBAIC0xNCwxMCArMTQsMTMgQEANCj4gPiAgI2lu
Y2x1ZGUgImludGVsX2NydC5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGUuaCINCj4gPiAgI2lu
Y2x1ZGUgImludGVsX2Rpc3BsYXlfaXJxLmgiDQo+ID4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5
X2xpbWl0cy5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9wb3dlcl93ZWxsLmgiDQo+
ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3JlZ3MuaCINCj4gPiAgI2luY2x1ZGUgImludGVs
X2Rpc3BsYXlfcnBtLmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+
ID4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3V0aWxzLmgiDQo+ID4gKyNpbmNsdWRlICJpbnRl
bF9kaXNwbGF5X3dhLmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9ka2xfcGh5LmgiDQo+ID4gICNp
bmNsdWRlICJpbnRlbF9ka2xfcGh5X3JlZ3MuaCINCj4gPiAgI2luY2x1ZGUgImludGVsX2RtYy5o
Ig0KPiA+IEBAIC0xOTQsNiArMTk3LDY5IEBAIGludCBpbnRlbF9wb3dlcl93ZWxsX3JlZmNvdW50
KHN0cnVjdA0KPiA+IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkNCj4gPiAgCXJldHVybiBw
b3dlcl93ZWxsLT5jb3VudDsNCj4gPiAgfQ0KPiA+DQo+ID4gK3N0YXRpYyB2b2lkIGNsb2NrX2dh
dGluZ19kc3NfZW5hYmxlX2Rpc2FibGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+
ID4gKwkJCQkJICAgIHU4IGlycV9waXBlX21hc2ssDQo+ID4gKwkJCQkJICAgIGJvb2wgZGlzYWJs
ZSkNCj4gPiArew0KPiA+ICsJc3RydWN0IGRybV9wcmludGVyIHA7DQo+ID4gKwllbnVtIHBpcGUg
cGlwZTsNCj4gPiArDQo+ID4gKwlzd2l0Y2ggKGlycV9waXBlX21hc2spIHsNCj4gPiArCWNhc2Ug
QklUKFBJUEVfQSk6DQo+ID4gKwkJcGlwZSA9IFBJUEVfQTsNCj4gPiArDQo+ID4gKwkJaWYgKGRp
c2FibGUpDQo+ID4gKwkJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBDTEtHQVRFX0RJU19EU1NEU0Ms
DQo+ID4gKwkJCQkgICAgIDAsIERTU19QSVBFX0FfR0FUSU5HX0RJU0FCTEVEKTsNCj4gPiArCQll
bHNlDQo+ID4gKwkJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBDTEtHQVRFX0RJU19EU1NEU0MsDQo+
ID4gKwkJCQkgICAgIERTU19QSVBFX0FfR0FUSU5HX0RJU0FCTEVELCAwKTsNCj4gPiArCQlicmVh
azsNCj4gPiArCWNhc2UgQklUKFBJUEVfQik6DQo+ID4gKwkJcGlwZSA9IFBJUEVfQjsNCj4gPiAr
DQo+ID4gKwkJaWYgKGRpc2FibGUpDQo+ID4gKwkJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBDTEtH
QVRFX0RJU19EU1NEU0MsDQo+ID4gKwkJCQkgICAgIDAsIERTU19QSVBFX0JfR0FUSU5HX0RJU0FC
TEVEKTsNCj4gPiArCQllbHNlDQo+ID4gKwkJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBDTEtHQVRF
X0RJU19EU1NEU0MsDQo+ID4gKwkJCQkgICAgIERTU19QSVBFX0JfR0FUSU5HX0RJU0FCTEVELCAw
KTsNCj4gPiArCQlicmVhazsNCj4gPiArCWNhc2UgQklUKFBJUEVfQyk6DQo+ID4gKwkJcGlwZSA9
IFBJUEVfQzsNCj4gPiArDQo+ID4gKwkJaWYgKGRpc2FibGUpDQo+ID4gKwkJCWludGVsX2RlX3Jt
dyhkaXNwbGF5LCBDTEtHQVRFX0RJU19EU1NEU0MsDQo+ID4gKwkJCQkgICAgIDAsIERTU19QSVBF
X0NfR0FUSU5HX0RJU0FCTEVEKTsNCj4gPiArCQllbHNlDQo+ID4gKwkJCWludGVsX2RlX3Jtdyhk
aXNwbGF5LCBDTEtHQVRFX0RJU19EU1NEU0MsDQo+ID4gKwkJCQkgICAgIERTU19QSVBFX0NfR0FU
SU5HX0RJU0FCTEVELCAwKTsNCj4gPiArCQlicmVhazsNCj4gPiArCWNhc2UgQklUKFBJUEVfRCk6
DQo+ID4gKwkJcGlwZSA9IFBJUEVfRDsNCj4gPiArDQo+ID4gKwkJaWYgKGRpc2FibGUpDQo+ID4g
KwkJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBDTEtHQVRFX0RJU19EU1NEU0MsDQo+ID4gKwkJCQkg
ICAgIDAsIERTU19QSVBFX0RfR0FUSU5HX0RJU0FCTEVEKTsNCj4gPiArCQllbHNlDQo+ID4gKwkJ
CWludGVsX2RlX3JtdyhkaXNwbGF5LCBDTEtHQVRFX0RJU19EU1NEU0MsDQo+ID4gKwkJCQkgICAg
IERTU19QSVBFX0RfR0FUSU5HX0RJU0FCTEVELCAwKTsNCj4gPiArCQlicmVhazsNCj4gPiArCWRl
ZmF1bHQ6DQo+ID4gKwkJTUlTU0lOR19DQVNFKGlycV9waXBlX21hc2spOw0KPiA+ICsJCWJyZWFr
Ow0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCWlmICghZHJtX2RlYnVnX2VuYWJsZWQoRFJNX1VUX0tN
UykpDQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsNCj4gPiArCXAgPSBkcm1fZGJnX3ByaW50ZXIoZGlz
cGxheS0+ZHJtLCBEUk1fVVRfS01TLCBOVUxMKTsNCj4gPiArDQo+ID4gKwlkcm1fcHJpbnRmKCZw
LCAiZHNzIGNsb2NrIGdhdGluZyAlc2Qgb24gcGlwZSAlYyAoMHglLjh4KVxuIiwNCj4gPiArCQkg
ICBzdHJfZW5hYmxlX2Rpc2FibGUoIWRpc2FibGUpLCBwaXBlX25hbWUocGlwZSksDQo+ID4gKwkJ
ICAgaW50ZWxfZGVfcmVhZChkaXNwbGF5LCBDTEtHQVRFX0RJU19EU1NEU0MpKTsgfQ0KPiA+ICsN
Cj4gPiAgLyoNCj4gPiAgICogU3RhcnRpbmcgd2l0aCBIYXN3ZWxsLCB3ZSBoYXZlIGEgIlBvd2Vy
IERvd24gV2VsbCIgdGhhdCBjYW4gYmUgdHVybmVkIG9mZg0KPiA+ICAgKiB3aGVuIG5vdCBuZWVk
ZWQgYW55bW9yZS4gV2UgaGF2ZSA0IHJlZ2lzdGVycyB0aGF0IGNhbiByZXF1ZXN0IHRoZQ0KPiA+
IHBvd2VyIHdlbGwgQEAgLTIwMywxNSArMjY5LDIzIEBAIGludCBpbnRlbF9wb3dlcl93ZWxsX3Jl
ZmNvdW50KHN0cnVjdA0KPiA+IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkgIHN0YXRpYyB2
b2lkDQo+ID4gaHN3X3Bvd2VyX3dlbGxfcG9zdF9lbmFibGUoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXksDQo+ID4gIAkJCQkgICAgICAgdTggaXJxX3BpcGVfbWFzaykNCj4gPiAgew0KPiA+
IC0JaWYgKGlycV9waXBlX21hc2spDQo+ID4gKwlpZiAoaXJxX3BpcGVfbWFzaykgew0KPiA+ICAJ
CWdlbjhfaXJxX3Bvd2VyX3dlbGxfcG9zdF9lbmFibGUoZGlzcGxheSwgaXJxX3BpcGVfbWFzayk7
DQo+ID4gKw0KPiA+ICsJCWlmIChpbnRlbF9kaXNwbGF5X3dhKGRpc3BsYXksIDIyMDIxMDQ4MDU5
KSkNCj4gPiArCQkJY2xvY2tfZ2F0aW5nX2Rzc19lbmFibGVfZGlzYWJsZShkaXNwbGF5LA0KPiA+
IGlycV9waXBlX21hc2ssIGZhbHNlKTsNCj4gPiArCX0NCj4gPiAgfQ0KPiA+DQo+ID4gIHN0YXRp
YyB2b2lkIGhzd19wb3dlcl93ZWxsX3ByZV9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5LA0KPiA+ICAJCQkJICAgICAgIHU4IGlycV9waXBlX21hc2spDQo+ID4gIHsNCj4gPiAt
CWlmIChpcnFfcGlwZV9tYXNrKQ0KPiA+ICsJaWYgKGlycV9waXBlX21hc2spIHsNCj4gPiArCQlp
ZiAoaW50ZWxfZGlzcGxheV93YShkaXNwbGF5LCAyMjAyMTA0ODA1OSkpDQo+ID4gKwkJCWNsb2Nr
X2dhdGluZ19kc3NfZW5hYmxlX2Rpc2FibGUoZGlzcGxheSwNCj4gPiBpcnFfcGlwZV9tYXNrLCB0
cnVlKTsNCj4gPiArDQo+ID4gIAkJZ2VuOF9pcnFfcG93ZXJfd2VsbF9wcmVfZGlzYWJsZShkaXNw
bGF5LCBpcnFfcGlwZV9tYXNrKTsNCj4gPiArCX0NCj4gPiAgfQ0KPiA+DQo+ID4gICNkZWZpbmUg
SUNMX0FVWF9QV19UT19QSFkocHdfaWR4KQlcDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmgNCj4gPiBpbmRleCA5ZTBkODUz
ZjRiNjEuLjk3NDBmMzJjZWQyNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3JlZ3MuaA0KPiA+IEBAIC0yMjExLDYgKzIyMTEs
MTMgQEANCj4gPiAgI2RlZmluZSAgIEhTV19QV1JfV0VMTF9GT1JDRV9PTgkJCSgxIDw8IDE5KQ0K
PiA+ICAjZGVmaW5lIEhTV19QV1JfV0VMTF9DVEw2CQkJX01NSU8oMHg0NTQxNCkNCj4gPg0KPiA+
ICsvKiBjbG9jayBnYXRpbmcgRFNTIERTQyBkaXNhYmxlIHJlZ2lzdGVyICovDQo+ID4gKyNkZWZp
bmUgQ0xLR0FURV9ESVNfRFNTRFNDCQkJX01NSU8oMHg0NjU0OCkNCj4gPiArI2RlZmluZSAgIERT
U19QSVBFX0RfR0FUSU5HX0RJU0FCTEVECQlSRUdfQklUKDMxKQ0KPiA+ICsjZGVmaW5lICAgRFNT
X1BJUEVfQ19HQVRJTkdfRElTQUJMRUQJCVJFR19CSVQoMjkpDQo+ID4gKyNkZWZpbmUgICBEU1Nf
UElQRV9CX0dBVElOR19ESVNBQkxFRAkJUkVHX0JJVCgyNykNCj4gPiArI2RlZmluZSAgIERTU19Q
SVBFX0FfR0FUSU5HX0RJU0FCTEVECQlSRUdfQklUKDI1KQ0KPiA+ICsNCj4gPiAgLyogU0tMIEZ1
c2UgU3RhdHVzICovDQo+ID4gIGVudW0gc2tsX3Bvd2VyX2dhdGUgew0KPiA+ICAJU0tMX1BHMCwN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3dhLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV93YS5jDQo+ID4gaW5kZXggODZhNmNjNDViNmFiLi5mOGUxNGFhMzRkYWUgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0K
PiA+IEBAIC04NCw2ICs4NCw4IEBAIGJvb2wgX19pbnRlbF9kaXNwbGF5X3dhKHN0cnVjdCBpbnRl
bF9kaXNwbGF5DQo+ID4gKmRpc3BsYXksIGVudW0gaW50ZWxfZGlzcGxheV93YSB3YSwNCj4gPiAg
CQlyZXR1cm4gaW50ZWxfZGlzcGxheV9uZWVkc193YV8xNjAyNTU3MzU3NShkaXNwbGF5KTsNCj4g
PiAgCWNhc2UgSU5URUxfRElTUExBWV9XQV8yMjAxNDI2Mzc4NjoNCj4gPiAgCQlyZXR1cm4gSVNf
RElTUExBWV9WRVJ4MTAwKGRpc3BsYXksIDExMDAsIDE0MDApOw0KPiA+ICsJY2FzZSBJTlRFTF9E
SVNQTEFZX1dBXzIyMDIxMDQ4MDU5Og0KPiA+ICsJCXJldHVybiBESVNQTEFZX1ZFUihkaXNwbGF5
KSA+PSAxNDsNCj4gPiAgCWRlZmF1bHQ6DQo+ID4gIAkJZHJtX1dBUk4oZGlzcGxheS0+ZHJtLCAx
LCAiTWlzc2luZyBXYSBudW1iZXI6ICVzXG4iLCBuYW1lKTsNCj4gPiAgCQlicmVhazsNCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dh
LmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5o
DQo+ID4gaW5kZXggNDBmOTg5ZjE5ZGYxLi43Njc0MjBkNWY0MDYgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiA+IEBA
IC0zNCw2ICszNCw3IEBAIGVudW0gaW50ZWxfZGlzcGxheV93YSB7DQo+ID4gIAlJTlRFTF9ESVNQ
TEFZX1dBXzE2MDIzNTg4MzQwLA0KPiA+ICAJSU5URUxfRElTUExBWV9XQV8xNjAyNTU3MzU3NSwN
Cj4gPiAgCUlOVEVMX0RJU1BMQVlfV0FfMjIwMTQyNjM3ODYsDQo+ID4gKwlJTlRFTF9ESVNQTEFZ
X1dBXzIyMDIxMDQ4MDU5LA0KPiA+ICB9Ow0KPiA+DQo+ID4gIGJvb2wgX19pbnRlbF9kaXNwbGF5
X3dhKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBlbnVtDQo+ID4gaW50ZWxfZGlzcGxh
eV93YSB3YSwgY29uc3QgY2hhciAqbmFtZSk7DQo+ID4gLS0NCj4gPiAyLjQzLjANCg0K
