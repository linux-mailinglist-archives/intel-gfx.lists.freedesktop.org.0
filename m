Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A680EA45449
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 05:09:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D339210E845;
	Wed, 26 Feb 2025 04:09:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bPRZo6DT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DC0410E845;
 Wed, 26 Feb 2025 04:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740542963; x=1772078963;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kuxzg7dsWEs14qVM9PLlSsNB4cDVH1S85VzLnysUFMk=;
 b=bPRZo6DT+UwW6eHYxQ2xffTN0PzsEC5WWbGZ9NbhwDJilUsAOCecj0lt
 IMbY9n4nFnUssVLpjEUuvgmPo9kbmY5SrcbVIVMscp3zmWHk2QXUDdWUT
 4FnfTeuDowuURxHQ2UZ9HWB2sieZPFbmDKIkJ+tLM8BCq2LsedGhRkiQc
 ZKirCtMDsvUN38skSNh/+kslX7Sd/3APSBb6g3PWBCGDuvxU76xpr3T1o
 95zi/AwGJGFrNGqbAjwNnCFrcUD6vFo2/PIbAG1iMZ/vyy5UUL22g/zOd
 Q4ikzyJA8b4tUe4sz0BJluF78qOWS73okrVwIUZXT9oDCWfDzijZUnUNT g==;
X-CSE-ConnectionGUID: zjl5Ob4qSZiG5b7hwqH//Q==
X-CSE-MsgGUID: 2AJZ+y9nQxiQDlkS6fHYXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41629568"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="41629568"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 20:09:22 -0800
X-CSE-ConnectionGUID: qadiB/++S0u7nzmcBaqYrQ==
X-CSE-MsgGUID: EG3u7IDMSda7+lpTmLlQjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="116786410"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 20:09:21 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 20:09:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 20:09:20 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 20:09:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GcWHnI4OF9UVgPWOX4ffmJZ0snJONQDT3VeQ0Ikkg+FECQdg8zLy8UwvySjYJl1tBaUVFrzIydq+/tWDbjoSow1XvPKnBRz+UBwCqRptsktdNyka3wD3KdCJvAtszsieT5OVCVNrvlNTSuuYjGAl4UyTu2MwszyLufz2X5EImZzL+Du5V2/74FXDOKvV7Pz/QTZorY9hMHypjBx4zs1vY6M5O6VAaFZ/cMeiI2ZvQlLqinImpreTJSd5+HG/ATYTjqtLC4Wre6lGkXgfoH8517g0usdz/W93egJObAk6wTbNRPH4GgtU6w1ujV6UOjIwNZBO1N/ivyhPhXA1f5s8YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kuxzg7dsWEs14qVM9PLlSsNB4cDVH1S85VzLnysUFMk=;
 b=JaLKPsJTqJH/IWRWU8APlsb+GI8rVq4ba1BgLbFuA3LJ1kaHzC6EMx17JpYTzeBVR61xNdxPqMhXAnsCbN5z/xBeOSPDzNbm6RtvHRdlDLbXxayv5WdhrsTX9X3a4heRkSPXWTEBslDJRL4D3rK6eui7UK9XMRKcJzc+g1Zzl4vhfCJ/Nf4FTslSHzGLUejdv58n7SE+XsnX7z0uGzDUzk4br96ZSF+KBmjquzgDVwUJ6FLuC2J2uKBuSpz+2N9aqeDEQtB5tII7oOXvdXBCE99bbmTuWouRnOq2xng7BHj7JRZ/DlNDAcfd5ut8/cbUfizfX9euDnT0Xunjtw8ZTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by SA1PR11MB8476.namprd11.prod.outlook.com (2603:10b6:806:3af::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Wed, 26 Feb
 2025 04:09:18 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%6]) with mapi id 15.20.8489.018; Wed, 26 Feb 2025
 04:09:18 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2RwOiBGaXgg?=
 =?utf-8?Q?link_training_interrupted_by_HPD_pulse_(rev3)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vZHA6IEZpeCBsaW5r?=
 =?utf-8?Q?_training_interrupted_by_HPD_pulse_(rev3)?=
Thread-Index: AQHbh5D6OjDCno5snkicohXREB2lRLNY8S1Q
Date: Wed, 26 Feb 2025 04:09:18 +0000
Message-ID: <CH0PR11MB5491632A9658BC72793286D2EFC22@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250224193115.2058512-1-imre.deak@intel.com>
 <174049091535.1979544.8135908907842640775@b555e5b46a47>
 <Z73Sxbtinq6m0yPG@ideak-desk.fi.intel.com>
In-Reply-To: <Z73Sxbtinq6m0yPG@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|SA1PR11MB8476:EE_
x-ms-office365-filtering-correlation-id: ca954bb3-a25f-4f28-029b-08dd561b573c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|13003099007|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?YW93SDRLV0N5Nmp0dVBsZ0V6QitKZHpXYmpIZXlrb0pHZEhGcHNiNmt6Ulc0?=
 =?utf-8?B?d3BSMU9XYks5dS9KTVhkZkMwOHhvNnpTUmREbWFmSUtCOHBpaFRyMitHN0Zn?=
 =?utf-8?B?dkxEejBhRzR1VEtUWngrNlBDWkUrUUpoYVJlWDRVaXR3L3NWTjl3SFNkV3Yx?=
 =?utf-8?B?cFVOVWNtOW5TM2FGcUtnU0VNVDg1WXJzYm5pWHJYK1AvNk1QbTVXRUl2cnRZ?=
 =?utf-8?B?czAwS3IyeHhJd2hPaTRxbjJDSUg3WHZMeG8yNFZ0SVdteWxPWkRZODV1V2ND?=
 =?utf-8?B?RGRkRnAzYUxVYmY0dFAxKzA5Q2FiczFLeEJmSnNZZkhwSEltQnlscjg5VkpG?=
 =?utf-8?B?ZlJ2bk5jY2V5aFR4S2s2dUdzNWtWQTF2WExDMHJ1U2c0c3o0K1UyczN1bjVV?=
 =?utf-8?B?MUNtS1VqcVRaM1JnazRoeGpsUG5US0o1TEJ5ZTNscUxyMzVpWVhzaW5xVXNy?=
 =?utf-8?B?UGQxaEZjSUxYZDBPYzlGZ1VkL3FsZ0Q0N3hiK00vdTZib0srdElyRHBDVnJQ?=
 =?utf-8?B?b2U5V1BJM1RibkxrcnN6RlN0M1JKdDJ4K0w4Mi9TcFc3c2F2RUs0UXYzaEEw?=
 =?utf-8?B?T0dkdUcxakV4RDZQZFJ3NnJnZkxrcElMR2g0eDJKdHRjVUl6NjJIUEVWUTYy?=
 =?utf-8?B?WXJ1WWxCbFp1bXBQOWdQbGt2S3N1MVdyMVNRMStqaGtsN244dHVLa1BvK05N?=
 =?utf-8?B?Sjlqc3pRUGFlbGlBUEljc0RHWDlGRXVFUUlpbFJRcE5sMDVFekVOMk00M2p6?=
 =?utf-8?B?V2dzcGZwSkdEa1RnTUU3eU15eE84L284RDZpaDJGMHJGdkMxdnJ4bmpBb0M4?=
 =?utf-8?B?RWltM2xCT2c0N1RtU3RZWXQ4c0pCbHJ1SVdSSjMzZWcrbmtkRHpvZzF5bzdL?=
 =?utf-8?B?Q0hNQXdvWS9SR3BUQUlHYlRiT3M1SEtLbXZOaENsM1FvRVVhZVVJTzltVmNn?=
 =?utf-8?B?SzM4a0UvWjF4dGJSV1hTZmdFSEdxb1hQRlZmb01RN0NqQjNpZ2VXNTZ3VHZU?=
 =?utf-8?B?Tk11Wlc1Y3VCVnh6a0lCWTJKOHRpeHRQWFRoc01kUEJ4eTQ1aW83MVJDSUN3?=
 =?utf-8?B?bWlHcFJIa2xQdTFnN0pZOXJGQ3R1Ym9PU1M1WGlWK0duZGw3dldIRm81bzRI?=
 =?utf-8?B?dGljdWFNaS9UaGZFWEQ2dkdWMG9UaSt6T1c4OFBha2sxL2VDQXFkYjRHcE5Y?=
 =?utf-8?B?Q2MzNW9CTmxGbEdLMElRakQrem9icmQ5dnNsOVU1Mnpza1N3NkppRWRtNStv?=
 =?utf-8?B?RERJMW9FaWpvZU9rdkFGN2dGWGl3ZU5JYzFCTEt4U3FwL2pwY3VzWlEwKzZE?=
 =?utf-8?B?Qk9TZ1FjSG5IdDJjZ01FSzZFZFNENFRkY3V3cFg5MzZ4RldyT25peEtOS3ZS?=
 =?utf-8?B?cEdBbjU3MnZHR2NwZlI5RnViTUVUOENrTnkvNkREY0Z6aEtjbUlvSGEvL0VI?=
 =?utf-8?B?bGJaSmNLeTZIWVZRRThZalYyS2I5NWwwZ0NMNG1BRmNpeVpsVGpvckR0RE9I?=
 =?utf-8?B?cEw3MUJlNHp6SXp4K3QvbzlLYXk3SG4zWWJveUVPMmRocHNuOWRhQVZ6R3dy?=
 =?utf-8?B?K09nRU1McmRLeVNPbVFiUUtDVnI5ZUhOQmRRR3V6WCtLZ2pjQW1YS0Q0d0xm?=
 =?utf-8?B?NnR1VkwzVHJ4Q2N3V2pXbXM2UFlEQjVscDQyekFSbCs1QTZTTnhja0EyQkVW?=
 =?utf-8?B?dFdzNy9vWXNOVjAxaWFBUk5mcGRTdEpUVDFOclZOekN1QXFRTVRUeWFkUTky?=
 =?utf-8?B?TmxnbkJGSU5NWTFYTzVlSGkvZTBEcE1OYzZKR3ErSFViUC9VT3FGYWVaVjBV?=
 =?utf-8?B?TVA5MytmOFlwYi82OUhzRDBVYXVSdWdhVzdXTVVDMGNXNXh1cmlSWFl3bWtu?=
 =?utf-8?Q?aWJN84xECOQfj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(13003099007)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZWFxcG55RkJ3bUpzaFlhRXk5MysvKzRwNmRTazFxc3lYY3M2UW9iQ3Vtb2xT?=
 =?utf-8?B?RWJTMUJuYjNTeHBjT0VWNDRCeGkvdXZTdDJDaVZRYWtiZUh5M2Rab1Q1bUZI?=
 =?utf-8?B?UW82SndTbEsxM0d1bFhaVVA4em9oN0ptMTFUdUgxaWhubjVGUWdGcWJSRFNj?=
 =?utf-8?B?M2pMcnI1dmJjbFhNS25GbGEyT3NYMGp5MDRkS3kxZkxob0YzQ1NQQlFURWVh?=
 =?utf-8?B?RkVzcEFMWXJsTUZxM2VzVWJTdUJTclIvMjVoNmpTa2lrNmsvVHp6Ykhpbkw0?=
 =?utf-8?B?cHZrUU1oMnE0bDdsSlVtcklKSTFXOHRLZ3czMjJvaEtmZXFsM0k5NFdTWDZU?=
 =?utf-8?B?djZYVnhmRXlzS3lSZWJuYzNkSjBFNW1nQkZQYklUa00wV3JHY1kxd2pWcU1y?=
 =?utf-8?B?SVpySXljaHZPRHlFc211ZEVXSmU4ck5qRkxvNSszU3VIdWJjWlBDaUptTzJ3?=
 =?utf-8?B?amxSNHFBN09OakRtemU5bXF0RUdtVzBmVmd3R0UwbHBzMUlrOC91S0dNd1Ux?=
 =?utf-8?B?YVFOSXlrMnpFelFmMU53dnN2OVZiTzY2V2VNazBmK1hvaTJTQnlzZ294UXpn?=
 =?utf-8?B?U0ZaSnZSQ0dNZ1ppb0pZdXhWenNEbGc0WEhzUU9XYmVMTm9EbEpWNkJNRXpF?=
 =?utf-8?B?c3B5RTZwRU5sVEt4MVRzS0lWSmg5ZlcwVWhBZ0NiWlhwcExsdkdETms2MHR5?=
 =?utf-8?B?aE11VHNkYUpHczkyclBac2VFQkVLemlpY3k2MGx2bkcwbVRMKy9kQm5YUlVk?=
 =?utf-8?B?Mkw5OG93bDFCMlRTNnR3T3VCWWtQSjZDb3Z4ak05TExhY3dkSDV1LzJNaU1y?=
 =?utf-8?B?YThWc3VrQUYvZUFUNG45czE1dWZwUmlrb016dFpsSlkzYkNjb2swQ051UzUy?=
 =?utf-8?B?ZFpLRDFTMXUwdEd0dmVtUFYxa0RGSjc0Y2JIZDhjNE9RQlIyQTBucHI2d1BS?=
 =?utf-8?B?ZEd5d0wrdU5JekplNjhIQkJNWnhqTWxrMGhZQnUrdHdya0VJdTZMY2s4aldl?=
 =?utf-8?B?d2tkNHJuK3FUYWhPc2N2ei80R1dQYmh4K09sRFpCZTFPcFFodC9QK2hpZWlt?=
 =?utf-8?B?cnZzSkdsMFhNcnRNZyswbjF5QzJwWXhLNlRxc2haNHpyYm9xbzNSYnpnUExM?=
 =?utf-8?B?b3FnT3Y3R3dMbkpuVnFQRDJBUzllSnAzekhPWDcvTm1yanRqTXEvRzZtZnBK?=
 =?utf-8?B?d3ptZ1BhNXJua2JqZHpCOCtJZDdJVGIzSjNXZ2duQkkrTzhJTjkxaU5ZQkRu?=
 =?utf-8?B?YTl4WjEzMHZjREVGckRJRmZMUFhCbWJNMDJJdktWOS9uSWFPZWJNa1JMVyts?=
 =?utf-8?B?ZFRFQThFMWhMY1JZajZGcDVmQmcvL3NBU0dON3VnZlNodE1kLzBSWjlOMWtQ?=
 =?utf-8?B?c0xrREFOVkpDeVJCQ3NvMm8wSmNkanZ0ajhEbUpFWGdBdEtWbS9YekJ5dnRE?=
 =?utf-8?B?RzkweFQ0enlIZ1VJNlF0KzdHUm9kR01mVG9QRDlzS1h5TE1saDMvYUdrREtQ?=
 =?utf-8?B?ZEh4MnpqSjVpb28yaFJXY3djTkt0WjRwSWI0bXYyVUJ3Z2dNV0tJVUFwTzdR?=
 =?utf-8?B?Y01kNm9yQ1VCcWg5Uk1lMjV1amF2dnFNOU5RTlhwdTd5V3F3eXc3bXJqaGVH?=
 =?utf-8?B?UDZvejM3dnR2c016MzFLOFZEUGJCZVNpZ2FCWGZXL2tvSmZyWmNEbDdLa3Nm?=
 =?utf-8?B?K3E4VGZjWWJXNlZSbWVHUVVWdUxCbW5YbU1FYWVNb1dld0Y4OTVZMWlhT3R1?=
 =?utf-8?B?WHEvOEtRVUp2OEpBSjVEeDZCZkNsbE5HYkh0N0t6R0dENHg0NXZjSzFrZEYv?=
 =?utf-8?B?YmpRaWFCbkJSQ1ZRSVNQN2Q0Vll2ekI5VkdFb3RjQ1RkTFN0RU1sNm15WGZD?=
 =?utf-8?B?blRxTjJWOXVuNEJCOVpvZlpycTNJRTdRSTZhdG9zeDVscFdWMjUzY1lyN1Az?=
 =?utf-8?B?bUVRNEtwOUluMlhBSHhuVmZTQVp0SytQczVDMUhub3BuSVFDR0NIZGQ3aExV?=
 =?utf-8?B?cWRHUGd3amZ4cDRlVURHM0FHYTBLQ1dibXRWOW8reGJxdW5RWWN3ZFdwRTly?=
 =?utf-8?B?MGRrMG00cFE4emZOL2pFNnJUZ2RBR2d3TVpibTZhbVpySmlqRkNwUTcrNm1W?=
 =?utf-8?Q?xi/ykaNTvCb5HlwjcHBv3P+Mr?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca954bb3-a25f-4f28-029b-08dd561b573c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2025 04:09:18.4008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Z+Ygsn047SSSl+Xsg1hUqBADRvW2SQJcDJhugDrf8mgGiGUGCU/e3UQN28nI9uTq2QPSYWvSzDfYmlbsnAf5MwzUwLdba3WyuGs952rCYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8476
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQ1MzUyLyAt
IFJlLXJlcG9ydGVkLg0KaTkxNS5DSS5CQVQgLSBSZS1yZXBvcnRlZC4NCg0KVGhhbmtzLA0KUmF2
YWxpLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8
aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9m
IEltcmUgRGVhaw0KU2VudDogMjUgRmVicnVhcnkgMjAyNSAxOTo1NQ0KVG86IEk5MTUtY2ktaW5m
cmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KU3ViamVjdDogUmU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2RwOiBG
aXggbGluayB0cmFpbmluZyBpbnRlcnJ1cHRlZCBieSBIUEQgcHVsc2UgKHJldjMpDQoNCkhpIENJ
IHRlYW0sDQoNCk9uIFR1ZSwgRmViIDI1LCAyMDI1IGF0IDAxOjQxOjU1UE0gKzAwMDAsIFBhdGNo
d29yayB3cm90ZToNCj4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4gDQo+IFNlcmllczogZHJtL2Rw
OiBGaXggbGluayB0cmFpbmluZyBpbnRlcnJ1cHRlZCBieSBIUEQgcHVsc2UgKHJldjMpDQo+IFVS
TCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDUzNTIvDQo+
IFN0YXRlIDogZmFpbHVyZQ0KDQp0aGUgaXNzdWUgcmVwb3J0ZWQgYmVsb3cgaXMgdW5yZWxhdGVk
LCBzZWUgbXkgY29tbWVudCB0aGVyZSwgY291bGQgeW91IHJlLXJlcG9ydCB0aGlzIHJlc3VsdD8N
Cg0KPiA9PSBTdW1tYXJ5ID09DQo+IA0KPiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RS
TV8xNjE3OCAtPiBQYXRjaHdvcmtfMTQ1MzUydjMgDQo+ID09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4gDQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0K
PiANCj4gICAqKkZBSUxVUkUqKg0KPiANCj4gICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21p
bmcgd2l0aCBQYXRjaHdvcmtfMTQ1MzUydjMgYWJzb2x1dGVseSBuZWVkIHRvIGJlDQo+ICAgdmVy
aWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+ICAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFu
Z2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+ICAgaW50cm9kdWNlZCBp
biBQYXRjaHdvcmtfMTQ1MzUydjMsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSAoSTkxNS1j
aS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93IHRoZW0NCj4gICB0byBkb2N1
bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0
aXZlcyBpbiBDSS4NCj4gDQo+ICAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1MzUydjMvaW5kZXguaHRtbA0KPiAN
Cj4gUGFydGljaXBhdGluZyBob3N0cyAoNDQgLT4gNDMpDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQ0KPiANCj4gICBNaXNzaW5nICAgICgxKTogZmktc25iLTI1MjBtIA0KPiANCj4g
UG9zc2libGUgbmV3IGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUg
YXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4g
UGF0Y2h3b3JrXzE0NTM1MnYzOg0KPiANCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiANCj4gIyMj
IyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+IA0KPiAgICogaWd0QGttc19mbGlwQGJhc2lj
LWZsaXAtdnMtd2ZfdmJsYW5rQGItZHAyOg0KPiAgICAgLSBmaS1jZmwtODEwOXU6ICAgICAgIFtQ
QVNTXVsxXSAtPiBbRE1FU0ctV0FSTl1bMl0gKzIgb3RoZXIgdGVzdHMgZG1lc2ctd2Fybg0KPiAg
ICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2
MTc4L2ZpLWNmbC04MTA5dS9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy13Zl92YmxhbmtAYi1k
cDIuaHRtbA0KPiAgICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL1BhdGNod29ya18xNDUzNTJ2My9maS1jZmwtODEwDQo+IDl1L2lndEBrbXNfZmxpcEBi
YXNpYy1mbGlwLXZzLXdmX3ZibGFua0BiLWRwMi5odG1sDQoNClRoZXJlIGlzIG5vIEhQRCBJUlEg
cmFpc2VkIG9yIGhhbmRsZWQgb24gdGhlIGFib3ZlIGhvc3QsIHNvIHRoZSBjaGFuZ2VzIGFyZSBu
b3QgcmVsYXRlZCB0byBpdC4NCg0KVGhlIGlzc3VlIGlzOg0KPDM+IFsxNTguODMzNjc3XSBpOTE1
IDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBDUFUgcGlwZSBBIEZJRk8gdW5kZXJydW4NCg0K
SXQgc2VlbXMgdG8gaGFwcGVuIGZyZXF1ZW50bHksIG9uIHRoZSBzYW1lIGhvc3QsIGxlYWRpbmcg
dG8gaW5jb3JyZWN0IEJBVCBmYWlsdXJlcy4NCg0KVGhlcmUgaXMNCmh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI5MzUNCg0KYnV0IG9uIGEg
ZGlmZmVyZW50IGhvc3QgKE1UTCkuDQoNCj4gS25vd24gaXNzdWVzDQo+IC0tLS0tLS0tLS0tLQ0K
PiANCj4gICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQ1MzUydjMg
dGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOg0KPiANCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0K
PiANCj4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMNCj4gDQo+ICAgKiBpZ3RAaTkxNV9tb2R1bGVfbG9h
ZEBsb2FkOg0KPiAgICAgLSBiYXQtbXRscC05OiAgICAgICAgIFtQQVNTXVszXSAtPiBbRE1FU0ct
V0FSTl1bNF0gKFtpOTE1IzEzNDk0XSkNCj4gICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjE3OC9iYXQtbXRscC05L2lndEBpOTE1X21vZHVs
ZV9sb2FkQGxvYWQuaHRtbA0KPiAgICBbNF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDUzNTJ2My9iYXQtbXRscC05DQo+IC9pZ3RAaTkx
NV9tb2R1bGVfbG9hZEBsb2FkLmh0bWwNCj4gDQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
Og0KPiAgICAgLSBiYXQtdHdsLTI6ICAgICAgICAgIFtQQVNTXVs1XSAtPiBbQUJPUlRdWzZdIChb
aTkxNSMxMjQzNV0gLyBbaTkxNSMxMjkxOV0gLyBbaTkxNSMxMzUwM10pDQo+ICAgIFs1XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYxNzgvYmF0LXR3
bC0yL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPiAgICBbNl06IA0KPiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDUzNTJ2My9iYXQtdHds
LTIvDQo+IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbA0KPiANCj4gICAqIGlndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVAbWVtb3J5X3JlZ2lvbjoNCj4gICAgIC0gYmF0LXR3bC0yOiAgICAgICAgICBb
UEFTU11bN10gLT4gW0FCT1JUXVs4XSAoW2k5MTUjMTI5MTldKQ0KPiAgICBbN106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2MTc4L2JhdC10d2wtMi9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQG1lbW9yeV9yZWdpb24uaHRtbA0KPiAgICBbOF06IA0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDUzNTJ2
My9iYXQtdHdsLTIvDQo+IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbWVtb3J5X3JlZ2lvbi5odG1s
DQo+IA0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUByZXF1ZXN0czoNCj4gICAgIC0gYmF0
LWF0c20tMTogICAgICAgICBbUEFTU11bOV0gLT4gW0lOQ09NUExFVEVdWzEwXSAoW2k5MTUjMTI0
NDVdKQ0KPiAgICBbOV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
Q0lfRFJNXzE2MTc4L2JhdC1hdHNtLTEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUByZXF1ZXN0cy5o
dG1sDQo+ICAgIFsxMF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDUzNTJ2My9iYXQtYXRzbS0xDQo+IC9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlQHJlcXVlc3RzLmh0bWwNCj4gDQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmth
cm91bmRzOg0KPiAgICAgLSBiYXQtYXJscy01OiAgICAgICAgIFtQQVNTXVsxMV0gLT4gW0RNRVNH
LUZBSUxdWzEyXSAoW2k5MTUjMTIwNjFdKSArMSBvdGhlciB0ZXN0IGRtZXNnLWZhaWwNCj4gICAg
WzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYx
NzgvYmF0LWFybHMtNS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4g
ICAgWzEyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE0NTM1MnYzL2JhdC1hcmxzLTUNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29y
a2Fyb3VuZHMuaHRtbA0KPiANCj4gICAqIGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAbm9uYmxvY2tp
bmctY3JjLWZyYW1lLXNlcXVlbmNlOg0KPiAgICAgLSBiYXQtZGcyLTExOiAgICAgICAgIFtQQVNT
XVsxM10gLT4gW1NLSVBdWzE0XSAoW2k5MTUjOTE5N10pICszIG90aGVyIHRlc3RzIHNraXANCj4g
ICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
MTYxNzgvYmF0LWRnMi0xMS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1m
cmFtZS1zZXF1ZW5jZS5odG1sDQo+ICAgIFsxNF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDUzNTJ2My9iYXQtZGcyLTExDQo+IC9pZ3RA
a21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1mcmFtZS1zZXF1ZW5jZS5odG1sDQo+
IA0KPiAgIA0KPiAjIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMNCj4gDQo+ICAgKiBpZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0KPiAgICAgLSBiYXQtYXJsaC0zOiAgICAgICAgIFtE
TUVTRy1GQUlMXVsxNV0gKFtpOTE1IzEyMDYxXSkgLT4gW1BBU1NdWzE2XSArMSBvdGhlciB0ZXN0
IHBhc3MNCj4gICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fMTYxNzgvYmF0LWFybGgtMy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91
bmRzLmh0bWwNCj4gICAgWzE2XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NTM1MnYzL2JhdC1hcmxoLTMNCj4gL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPiANCj4gICANCj4gIyMjIyBXYXJuaW5ncyAjIyMj
DQo+IA0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZToNCj4gICAgIC0gYmF0LWF0c20tMTog
ICAgICAgICBbQUJPUlRdWzE3XSAoW2k5MTUjMTM2NzldKSAtPiBbSU5DT01QTEVURV1bMThdIChb
aTkxNSMxMjQ0NV0pDQo+ICAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzE2MTc4L2JhdC1hdHNtLTEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5o
dG1sDQo+ICAgIFsxOF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDUzNTJ2My9iYXQtYXRzbS0xDQo+IC9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlLmh0bWwNCj4gDQo+ICAgDQo+ICAgW2k5MTUjMTIwNjFdOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyMDYxDQo+ICAgW2k5MTUjMTI0
MzVdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNz
dWVzLzEyNDM1DQo+ICAgW2k5MTUjMTI0NDVdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyNDQ1DQo+ICAgW2k5MTUjMTI5MTldOiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyOTE5
DQo+ICAgW2k5MTUjMTM0OTRdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5
MTUva2VybmVsLy0vaXNzdWVzLzEzNDk0DQo+ICAgW2k5MTUjMTM1MDNdOiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEzNTAzDQo+ICAgW2k5
MTUjMTM2NzldOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVs
Ly0vaXNzdWVzLzEzNjc5DQo+ICAgW2k5MTUjOTE5N106IA0KPiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzkxOTcNCj4gDQo+IA0KPiBCdWls
ZCBjaGFuZ2VzDQo+IC0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgKiBMaW51eDogQ0lfRFJNXzE2MTc4
IC0+IFBhdGNod29ya18xNDUzNTJ2Mw0KPiANCj4gICBDSS0yMDE5MDUyOTogMjAxOTA1MjkNCj4g
ICBDSV9EUk1fMTYxNzg6IGQ1ZGViYzQ4NDFlNjA0MzcyYzc0ZWJkYTBiYmY1NGJkNTI3YzM0NzUg
QCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gICBJR1RfODI0
NzogODI0Nw0KPiAgIFBhdGNod29ya18xNDUzNTJ2MzogZDVkZWJjNDg0MWU2MDQzNzJjNzRlYmRh
MGJiZjU0YmQ1MjdjMzQ3NSBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngt
Y2kvbGludXgNCj4gDQo+ID09IExvZ3MgPT0NCj4gDQo+IEZvciBtb3JlIGRldGFpbHMgc2VlOiAN
Cj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1
MzUydjMvaW5kZXguaHRtbA0K
