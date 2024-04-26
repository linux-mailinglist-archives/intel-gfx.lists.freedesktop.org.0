Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EABAD8B31BE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 09:56:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05ED2112278;
	Fri, 26 Apr 2024 07:56:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dtsp0Rr1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99F44112278
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Apr 2024 07:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714118179; x=1745654179;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LUkGuyWYZlHKOxrOCvOPwuDuNYpOD4rY75PhNyDYJoU=;
 b=Dtsp0Rr1P1CrAWDvLe2YFML+eMJBJ6nOhG4N4hf2IBsnhkQu4n4mFGcN
 d/2oKFG1bX5YojhMVLPKFJ91j/AXCiqA0I1XrpjivGxG6jCFhYUHsP6Hv
 LSFe+XvwE7sfjYstTAZ4IK/3RVad1/DqKXWGFj7A+N+FLXcYVqs55jxm1
 gLNB/WnljBmV/IuKXOfdituiYkRwIzgTdrvY+sH5rgou/B+J4fWBQZhCA
 W5Z/ntS8iMZOz1DbVLNZNhcdBHbflVouD0E0MNRmL8uupyins/BPfJV5H
 gZshnpld0M8l54a1bs/kbQPbwkh6VrQVzPvU/tCZj1w7961zg+C1gxH5Y w==;
X-CSE-ConnectionGUID: wQaaIUG2ToudyZv7q+TSbQ==
X-CSE-MsgGUID: 9VHMhqCfQsuyI7tOI547pQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="27300501"
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; d="scan'208";a="27300501"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 00:56:18 -0700
X-CSE-ConnectionGUID: +JJOJrxeRS2J84K6x/know==
X-CSE-MsgGUID: bg8AtnDvT2CCGyo/3TVw3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,231,1708416000"; d="scan'208";a="25755197"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Apr 2024 00:56:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 26 Apr 2024 00:56:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 26 Apr 2024 00:56:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 26 Apr 2024 00:56:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LegQo8csVQBY4S8d3orSVCLO6QWfFxF21ksUhIivVM5bjWyNzYTd38+nNhblWfuIeBEkLUUZwxNdpJ0RfE9JltP5qJSFaqyo3YaWtM9CWQpKUDDOM/YzcroVlXUpUqqDWIUH0j76Rb9igs40eg+NGXDlcZpqGWCrYmKUXW73tlLBVJY+h6EbcPwTeFXiuP0dFCu7EgvFmY4BiZfngBMQoDZwFtBF8AIRaKYnu4VNGBV4WGQ8jCUDg2W/x4fzJlplMTRxY3nXkw3wlMkYEZcRRRD2Y5CoJthw/7aEAA7j1oTu5EguuyYliqQhOpafS27WQouUNQ6U6s0696+cnbfHWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LUkGuyWYZlHKOxrOCvOPwuDuNYpOD4rY75PhNyDYJoU=;
 b=nBPwHRuPEfV75A00QmehCng6qGzaYZvO3wi7ke7AXkxigt9umHuoWepxo2kOFu/Up/A/3riBUIUt8DB+qayOHvIyKukxhQWKUocYa67zAvervBHcRZrKqTjT+ACr61gcmgvJo9i0A9p1+qLsihkdoRENLEhtS4Gs3xCuW6wc8Cj21smIqR//kmUDXGrR8szXDcj7eKx8bHQhdNtbSxDgJ/Jk5CHsXrv2mANxMcy/AHunYRw69AyW/WOX7xhElWRldXfFiqH9YaRRU91pap4jVYlFYS5qX8AEjANKCCPGF7oIb1ihi0AkyY8m+yoWBD3XhP/D9II5tHcyro2qP2bJdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 by MN0PR11MB6134.namprd11.prod.outlook.com (2603:10b6:208:3ca::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Fri, 26 Apr
 2024 07:56:15 +0000
Received: from PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::9298:6ed2:d923:6dbf]) by PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::9298:6ed2:d923:6dbf%6]) with mapi id 15.20.7519.021; Fri, 26 Apr 2024
 07:56:15 +0000
From: "Yu, Gareth" <gareth.yu@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Fixed the main link lost in MST
Thread-Topic: [PATCH] drm/i915/display: Fixed the main link lost in MST
Thread-Index: AQHalH3TJpITjT5mBk+Tb+9oW+uzcLF4WfUAgACFE4CAAVRpYA==
Date: Fri, 26 Apr 2024 07:56:15 +0000
Message-ID: <PH0PR11MB5128C1B95142AB2AAFBB9AAAE0162@PH0PR11MB5128.namprd11.prod.outlook.com>
References: <20240422063300.1459712-1-gareth.yu@intel.com>
 <20240425033426.2269822-1-gareth.yu@intel.com> <87il05ptlo.fsf@intel.com>
In-Reply-To: <87il05ptlo.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5128:EE_|MN0PR11MB6134:EE_
x-ms-office365-filtering-correlation-id: ad6a831a-3037-438f-d7ec-08dc65c6592b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?TUg3TUlWZ1krdDVYK3pNemNqMFlGRWIwa1dGR2RUSXpraUxPV2JsbW4rdFgv?=
 =?utf-8?B?OVM3ZXMwRnVTdmVQWVVEU2x5OWJQdVZUZUdlaDdvTXN2MndtS0RpcVZhWTRZ?=
 =?utf-8?B?YVUzQjNTYlV6TzNqNit4YStHOGh5eklHYnBPSlp5Z2dnUlArOXIyaGc2Situ?=
 =?utf-8?B?ODJvMFlrWk9yMngxNHkzN0M4dWFlOE13aFFSTXNPcjhLd204NnNuS3VQUkNs?=
 =?utf-8?B?eGNqUFhGVjJvc0lIZ1VKcGVqcWJyTXFpaXZrMm1LQUpyWGRNTEpaV3p2R1JS?=
 =?utf-8?B?UVg2RzJjdEVscFpiUVc3TjluVlBpT1M2NEJhNE9VWnYycUxacWlvYTJwZEo0?=
 =?utf-8?B?STVwUGpSTmpUd0w5UDBpT3VwUE9pRmcwZ0R0dmdNWjRNTzJ3ekE3dC9jOXFq?=
 =?utf-8?B?SnFTbXRXU3p6TXROUUdHU2U3czhFbzE3Qm93US81L2VSM3U1Ymg5N1JJNXVj?=
 =?utf-8?B?YXFUdmg1NVF0dHNibUV2QStHb2JSV05TcVZ1ckNrbkVCbkV6cTRxL2VDR2Vv?=
 =?utf-8?B?VjdRVkl1clRTMC8weWNuK21MYXlDcU9jelpoVUttUG9yVzUwUzJoZ3dCbmEr?=
 =?utf-8?B?TmdDcVZnTTJsLzZ2OGpSMEtnUmltcUY4MVBaTm9NSER5RUIvZjg5ck9HZ2sz?=
 =?utf-8?B?RzZ0UHZuZTMvRk94RWhjQnE1aDdrQkhQVmFVa2c1SHFwUjVWWGlLOHkyd3Vm?=
 =?utf-8?B?UlA0Zk5VUXRFWHp2cENwd1V2SHF0VTNYOGpzdGlCUEJGNDJESlhJV04wOVp6?=
 =?utf-8?B?cmtPTjVmL09hTDNodFJBSTVSNkxFOGpuTVo3RGhmMmZQVXM3NENCSkpNZ09o?=
 =?utf-8?B?YjZwajJPcFNaZ1VXU0Nya01ybWNFRkwvaHJmMWFsZXJ4aFNMWXE0dVgzTzU2?=
 =?utf-8?B?b2tYYkZaSVZETkRKSm5CMmpKZGVpR0Q3VFlleURRaUpTcHhLMVY3WXdQZXNK?=
 =?utf-8?B?cUY5ZjUwQmZKSU1lMFNFTXVJYUxzT0lDMW1LZFkxc1FPL0VTbnVhSzRRSm5l?=
 =?utf-8?B?YWtqbDRPN0VhVzdNMk83Q2E1emhYbGRjaFh5eE94a3hJdUtFbWNBSkJtYmxh?=
 =?utf-8?B?N3V1VkprSzZMZjkySnJyaXl5NlJURkduWmp1THJFSzI5aGRFd3JkdGNRT1dX?=
 =?utf-8?B?Y1dCaXBCME84UE1CTm01aVdaL2sxRzFXTDlzNUVObTk1SFpKd05yeVlrU216?=
 =?utf-8?B?Q1J0TEpNaUg2VmhUR0lOYitCcHZaQ0wxRE8xTDRGRk9xeU1CUjhXS2REaXMx?=
 =?utf-8?B?NlZhK2RiaWEzV01nbTlyUDBKNnpjRitRU3BrZVhvSEV6U2dobnhnRjlLdmJW?=
 =?utf-8?B?c3h3bmc4VFFKQUY4UXM5SURDL2ZLR0N1cTRQZ1NYQmNzS0Q4UEJMYnVmeWlF?=
 =?utf-8?B?eWwxbXdpcHhmRVNTRkJleFZPdjBlYXF5b3ZYOGx3OURwK3NIWEQ5RTlDejli?=
 =?utf-8?B?MWpKMmJRSS9CaTdSOTFHZzhqK2xzdDZtV2JOQzNyR1R5VTNuYWpjbXJ3VUpT?=
 =?utf-8?B?QldFU1VmakRiYUo0SVYrRGV4Y1BLem1LTEhxQy9HWFZteDU0REtIdFpIcDV4?=
 =?utf-8?B?S2VhR042QUVyUmluSThKeGR0NUc1b0RobXFteXNBYkwrckhBNmxmWEdSd1Vi?=
 =?utf-8?B?MzdvcEVtWE9NbEtidnA5UDhEc3JFQTk2QzFmTEFiZ3JGTXQzT2FuZFpWU2dD?=
 =?utf-8?B?SEJMTy95VWV2WS8zU0Jkbzd0ZFNqQjFNTUxuTk5aMGNLUDhlNEJPN0NXNVdy?=
 =?utf-8?B?N1BhTHJiT2hiTWU4cVYrQ3NDcXFycVBkZHlUL3hiK0dwbldRVGtacFRVUllo?=
 =?utf-8?B?SFFPRkFQazJpdWJPUnZzUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5128.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q3ZuYit0TkhTUGtaN2FGL3d0M0R6eHFSc0tnSUF5S2J0ZzNjZ0RWN0lPUTZ5?=
 =?utf-8?B?MnBGYkhoalM5Mk04aGtqdVpkUGtTanBMd09tcEQ4eXJEYWpTNWdrQWMvazFu?=
 =?utf-8?B?Y09aUHczWnVucHo0MkRkWm5WSnRXOVUyWHhyeTJLVUJzR0Q1ZGc3SnNkTWxy?=
 =?utf-8?B?cW9DTGI3M1o3SFZuZ1BQejd3anJGZmlPeWZBWWhtYWYzdVBzNW5mYll3czl4?=
 =?utf-8?B?QUQxODJSQnI4WU5RdTZVLzdWT0syQnRDL3A5ZS8vV3psUTlvQ3NqVzM3YVNa?=
 =?utf-8?B?Qmk1Ykx6a2JMS053azk2T3lqTmVyMFZ0c0RNMGhKQkxSR09pUTRMUS9YK3Av?=
 =?utf-8?B?dnB6dEZsMVRKeXQ3cGZHdXk4NytlZGtQdXJsbDRmcWJBcEo4OWhBUThyeUh3?=
 =?utf-8?B?ZXlsN3RpeE8zVllHNTBsalJFcTNqSVFKbjB2bGRuY0tra2xWT3FaenlTVkZM?=
 =?utf-8?B?U3NnK3RNa3hBNk5zbi9WZGlobjhUTTR2TGMzVnNQWlNiM1BxWlppZWxjWm4r?=
 =?utf-8?B?ZWxGOEY0Q2tvMDJjRXUzVzlicXlUUURnNGR5M3NpaThXbmUwNk1hdytqbDVQ?=
 =?utf-8?B?amh3U2NqUE5jZVg1ZXY1MHFiemI4VUxHYzNaSTArYjgxb0QyNnNCaXk3Zjg3?=
 =?utf-8?B?eVo4ZUpaZm5ZbFpzU0MrUnlCZHBlZ3dNZ1loQ0h4RUxFN1k2V1B3eXpFODJi?=
 =?utf-8?B?Wm9nc05KelM2TkhBMFRrb1hld20xVWFNWi9jK3NqS2w4aG8vWWkzQ1Mvazdo?=
 =?utf-8?B?RzBkWE1IS0d0NERQV0JhZE16ejBTQUtvem9lV0lRVWNGM0pUTW9CSVZGTEN4?=
 =?utf-8?B?WHBEMW9USFV2ODVaSzloeWtwYXlheEcwbUQzRm5TeHIvVHVabXZDdkZXYUha?=
 =?utf-8?B?b1VmTVlneUxvcENWbDA4MVJET3ZVVnZuSkxhN2FGV3gzcHlPeDhaU0Vkc0xB?=
 =?utf-8?B?bm5QRlpOUVVlb2lER2N5SlY1dEVjTUpCRk41YTFzdVUrbExocmRwODhtU1BX?=
 =?utf-8?B?SmNSd0xjemEzS2ZzcmJIcmRycmkvN1ZxM3Z5YTNybCtkcCtRTUdZcndhcUMz?=
 =?utf-8?B?K3dqVFdEV2wzeVUxdjRGdWt6TlI5TjlQVXM3ZjNTSG5GU2tuZlAvR0I0bmpR?=
 =?utf-8?B?aEVjbXd1cUFobE1iMnNFakRFOWJzMTkwQmh5VjdqdlUvaWpWeGh1NFpabzlC?=
 =?utf-8?B?cXk3Yjg0MHQvdXFGTXU1R0RReHJ1TkRDRitoeWJ3ZnFacmdmRGVlL08xN014?=
 =?utf-8?B?Umg3b1BvckZEdDR1K2hDeVdvZk1jeUdZYzFSYTlnZnJhZ2FRaVdpVzY5N2gw?=
 =?utf-8?B?Wk9vU2xETm80Y1BMenlvMkt1NmFGMXB0WlZYWEZkMDZYZVVJRU9kMElmWS81?=
 =?utf-8?B?R1dSZTduWHBhUlQyaGxiUHV5NkovcnJib0dvYksxeTRNNzVBOTYwWFhOY3RV?=
 =?utf-8?B?Q1BmZ0p2OUd3WXlsY3BFcXFGOGJHNXRmS3F5NWZSa0MxOHU4VVYwUFFTaTVq?=
 =?utf-8?B?VWRRTVpWNTBCMk9XT1kyaGVRTnJFR0hDRGdUSy9yY2JOYlNPY3ZOZWF5R1A2?=
 =?utf-8?B?OFRESEV2MTBBenZpbEFyNnBtRVN2c2I2SlljZFQ1MHlnNkxVclZTZ2FJSE1V?=
 =?utf-8?B?LytYODhUSG90UWNzQm9ZRDVUWTlZdzNTdEVzMCtTUlRLWExSYWNES2NUUXNs?=
 =?utf-8?B?SXAyamRsOWdtbWFobjRqRXRsUU9kT3FRcXFSN2ZGMWRPbzN6emxBN0ErNXFu?=
 =?utf-8?B?L0Q3ZlNuZEVBU1dVTXJYTWovZW1DeU5nclBDQmw5Z3MyelU0MWRLYk5JaUVL?=
 =?utf-8?B?WlJpOWpqUzNTaEVTb0RraXR1cVh6d2VGL0R5VXU2cmYvejR1R1hpN0c4eERm?=
 =?utf-8?B?TzhHcXlocHViQW9MYzQra3pCT1orNlBlczhPajRyT2RhQXVjdzhLMHRma3N3?=
 =?utf-8?B?L2pCYjQ2d0hGWXpuWkxuR0N5Vlg4VjBKcU9KekcxTHdQOTVYWUtGckZVNWh6?=
 =?utf-8?B?TFMxUjcvdE5TVURneGg5dHRQa2xzd1g5cG9PZGZmRlBJS3JkUlVEQ2JlYjFL?=
 =?utf-8?B?KzBXb2xXYkZQNEJuRUptMm1FSkhZVVZzZ1pXakdrN1lkelZGL2ROcGN4d29R?=
 =?utf-8?Q?2KE9rF6mDbg1iWSR/EmSv9wH4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5128.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad6a831a-3037-438f-d7ec-08dc65c6592b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2024 07:56:15.3304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dlwh5lu+aSoo6ii/833IHhfnLCON89muOMSKa+ZsYBajWHcVQtWO7j9/7nXJiqYdqE8Crwbq0dshqZTXIVPW6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6134
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

UG9zdGVkIFY1IHRoYXQgY2hhbmdlIHRoZSBvcmRlciBvZiB0aGUgZXhpc3RpbmcgZmxvdy4NCiAN
CkZvdW5kIFRlamFzJyBlbWFpbCBhZGRyZXNzIGlzIGluY29ycmVjdC4gV2lsbCBjb3JyZWN0IGlu
IFY2Lg0KDQpHYXJldGgNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2Rh
eSwgQXByaWwgMjUsIDIwMjQgNzozMSBQTQ0KPiBUbzogWXUsIEdhcmV0aCA8Z2FyZXRoLnl1QGlu
dGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFl1LCBHYXJl
dGggPGdhcmV0aC55dUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1
L2Rpc3BsYXk6IEZpeGVkIHRoZSBtYWluIGxpbmsgbG9zdCBpbiBNU1QNCj4gDQo+IE9uIFRodSwg
MjUgQXByIDIwMjQsIGdhcmV0aC55dUBpbnRlbC5jb20gd3JvdGU6DQo+ID4gRnJvbTogR2FyZXRo
IFl1IDxnYXJldGgueXVAaW50ZWwuY29tPg0KPiA+DQo+ID4gUmUtdHJhaW4gdGhlIG1haW4gbGlu
ayB3aGVuIHRoZSBzaW5rIGFzc2VydHMgYSBIUEQgZm9yIHRoZSBtYWluIGxuaw0KPiA+IGxvc3Qu
DQo+IA0KPiBOQUsuDQo+IA0KPiBQbGVhc2UgcmVhZCB0aGUgcmV2aWV3IGNvbW1lbnRzLg0KPiAN
Cj4gQlIsDQo+IEphbmkuDQo+IA0KPiA+DQo+ID4gdjQ6ICBkZXRlY3QgdGhlIG1haW4gbGluayBz
dGF0ZSBieSBpbnRlbF9kcF9uZWVkc19saW5rX3JldHJhaW4NCj4gPiAgICAgIGluc3RlYWQgb2Yg
aW50ZWxfZHBfbXN0X2xpbmtfc3RhdHVzIGJlY2F1c2UgdGhlIG1haW4gbGluaw0KPiA+ICAgICAg
c3RhdGUgY2FuJ3QgZGV0ZWN0IGNvcnJlY3RseSBzb21ldGltZXMgYnkNCj4gPiAgICAgIGludGVs
X2RwX21zdF9saW5rX3N0YXR1cw0KPiA+DQo+ID4gQ2MgOiBUZWphcyBVcGFkaHlheSA8dGVqYXNr
dW1hcnguc3VyZW5kcmFrdW1hci51cGFkaHlheUBpbnRlbC5jb20+DQo+ID4gQ2MgOiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPiBDYyA6IFZpbGxlIFN5cmrDpGzDpA0KPiA+
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBHYXJl
dGggWXUgPGdhcmV0aC55dUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDggKysrKysrKy0NCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggZTA1ZTI1Y2Q0YTk0Li5l
MWI2MDMwM2IyNTYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+ID4gQEAgLTU4NDksOCArNTg0OSwxNCBAQCBpbnRlbF9kcF9kZXRlY3Qoc3RydWN0
IGRybV9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gPiAgCS8qIENhbid0IGRpc2Nvbm5lY3Qg
ZURQICovDQo+ID4gIAlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gPiAgCQlzdGF0
dXMgPSBlZHBfZGV0ZWN0KGludGVsX2RwKTsNCj4gPiAtCWVsc2UgaWYgKGludGVsX2RpZ2l0YWxf
cG9ydF9jb25uZWN0ZWQoZW5jb2RlcikpDQo+ID4gKwllbHNlIGlmIChpbnRlbF9kaWdpdGFsX3Bv
cnRfY29ubmVjdGVkKGVuY29kZXIpKSB7DQo+ID4gIAkJc3RhdHVzID0gaW50ZWxfZHBfZGV0ZWN0
X2RwY2QoaW50ZWxfZHApOw0KPiA+ICsJCWlmIChzdGF0dXMgPT0gY29ubmVjdG9yX3N0YXR1c19j
b25uZWN0ZWQgJiYgaW50ZWxfZHAtPmlzX21zdA0KPiAmJg0KPiA+ICsJCSAgICBpbnRlbF9kcF9u
ZWVkc19saW5rX3JldHJhaW4oaW50ZWxfZHApKSB7DQo+ID4gKwkJCWlmIChpbnRlbF9kcF9yZXRy
YWluX2xpbmsoZW5jb2RlciwgY3R4KSkNCj4gPiArCQkJCXN0YXR1cyA9IGNvbm5lY3Rvcl9zdGF0
dXNfZGlzY29ubmVjdGVkOw0KPiA+ICsJCX0NCj4gPiArCX0NCj4gPiAgCWVsc2UNCj4gPiAgCQlz
dGF0dXMgPSBjb25uZWN0b3Jfc3RhdHVzX2Rpc2Nvbm5lY3RlZDsNCj4gDQo+IC0tDQo+IEphbmkg
TmlrdWxhLCBJbnRlbA0K
