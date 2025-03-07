Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76806A56913
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 14:38:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 496B510EB59;
	Fri,  7 Mar 2025 13:38:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IeIQ8VUR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A398910EB43;
 Fri,  7 Mar 2025 13:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741354695; x=1772890695;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=z2bubelFI06eb9l4po5J38KqorNoQn1n/EUcLjo14hk=;
 b=IeIQ8VUR2qDxsYa1Cvf7gCJJcYYdsOzIj0qPMmJHE25w/TuhXRgdvhrw
 FcAxownJHbANEp4XRcXjNKov+jx69+H1oaokwya16/zNyM+9XzsCj6lOy
 TMzdbf3FrfJ8JGyCmYKl3XhFCtiU+MzgrBAU7fYvRsTAmAjv3XWiTkZm4
 p4RMDL3ytcIB0ae8uEGW+MjKfb41KTt8snzsfSXVncwahAWVMK0nH2nve
 iSOkpHrhEDy64yTH2Q+TpqDpjQkLMaBLnXR2La0Mv4lrd5ShWd1QTWvhw
 tn7tHfrUPI0K0qvJksqmTWA4UptTAe8II/AENITeJT56E36LUqcFiJYvW A==;
X-CSE-ConnectionGUID: i1oJiSG4Tc2cr2wF1liv1w==
X-CSE-MsgGUID: PCO/yYN1S5u1ZY5eoj0biQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42437176"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42437176"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 05:38:11 -0800
X-CSE-ConnectionGUID: VYFcpIk4SWCn45E8Vwl3Jw==
X-CSE-MsgGUID: k8hsMAh1Q+eI/kDc3hK0qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="119153884"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2025 05:38:10 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Mar 2025 05:38:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 05:38:09 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 05:38:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WBYNQQuoMcfnLB6KBsY4lL7OSa4bOKmkwaR35PJXsKRuL/uZZI2l34alhU/F4acJlSqOEGD5bvW0CitP3u49I71AXN9GdNFEEbMKbSOUZPL+4BHeSCcrCq9YPuEuw9a3i5jhZY9dlDJ5IsrAtrhiBaFXlxXkco9GST7Wenk0ZAPPXkGqbiGOoN1TgEI2HfOBxUVVauyi+On/GwVSGJV5amnCxxu/tysNNBLzW55lP5dVRM25vM+XnNd4vvPFDUIX6FY48ko9TnIBewCLEdTIFVu0tARMZ+1xG/FXhNMBEw0GTQxxnqvmXSSbsS+yW7ByKHuldkG5WAxF2uYELAibsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z2bubelFI06eb9l4po5J38KqorNoQn1n/EUcLjo14hk=;
 b=LORDif0hpd/KDNsyFZgmiNueNOzPjH3nebdAST2/yVnyxW/FZFd84XvJakozDm5fbGnprR7s8dhJnWHwDJRqPwp/yXOaocD6POl+VRukHy4lVWTKGPS1jahTprCdIXywAaJCPH0/HPmVTfdBe491gVgT1ceygj14BFl3H9hF7F2GsIsQRaQtS4xYozBgSVhXPpd1j/DT9B+F0zQrHSX4DWMUT86mA435RjzlsT5uI9IOelMkN22iQolwZTUlC2NRIx/MN85XbnkTtZmqAIlJQsMLbsWKiQgd+tLNzKcDaNY5vQFpOZ3CliP/aghvEb4ZemFErSCUR8dA1b6ovx1PwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6680.namprd11.prod.outlook.com (2603:10b6:806:268::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.17; Fri, 7 Mar
 2025 13:37:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8511.019; Fri, 7 Mar 2025
 13:37:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v5 5/8] drm/i915/lobf: Add debug interface for lobf
Thread-Topic: [PATCH v5 5/8] drm/i915/lobf: Add debug interface for lobf
Thread-Index: AQHbjBpcwWZyA1glskOiCrnUbSLwj7Nns+iA
Date: Fri, 7 Mar 2025 13:37:25 +0000
Message-ID: <dc8add2f89e5680d4bac347164ac73bc78c50db2.camel@intel.com>
References: <20250303083522.845224-1-animesh.manna@intel.com>
 <20250303083522.845224-6-animesh.manna@intel.com>
In-Reply-To: <20250303083522.845224-6-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6680:EE_
x-ms-office365-filtering-correlation-id: cf4995b9-64d0-46c9-4ee9-08dd5d7d3234
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NzkyZVZNRSt4L1ZLNjlGbnVPOEtBRnBHRE9qSlI5WCtYZWx5TUd1VGhKT3ZR?=
 =?utf-8?B?NUFOdDNEbHBvMVFGSmo5MFBPMW52a0IzSDM1c2JGUklwdmFYWE0vMDh0N2hU?=
 =?utf-8?B?Qng3UG16eVdnMnJWMnFuQndUbktzajMvZmtlOXpaa1M5cDFJNUpxcG1QTXJu?=
 =?utf-8?B?dEx6cDdYaEZBdWNXMkc4Y1NaQ0Z1YUVIMVljWGxtdzJLODMvZXk4clgvVlB3?=
 =?utf-8?B?ZXZ1c1ViVXh2eWlHdUpvTDNJQ1o0UXJaWVg0V3JTS0cyK3ZIOVQ2NUFXcEo5?=
 =?utf-8?B?N0RKWSt0RmdpeHVBQ1dwOXdGZEh6SDBnWjFvVnYzdzFoRGRaTURqcHIrRUxY?=
 =?utf-8?B?ZEozcUhicVY0ZFB6VWc2RFN2RFBOSm9Mdmk5enR0S0NKbTBHUVpENU5IemVm?=
 =?utf-8?B?K2dTZFFwZUNreXE3TzluWm9VamZwZG9iazA2Qy9qblBmQXZnQy9xSzI4emxq?=
 =?utf-8?B?T0prZGpjcTQrdC9Eb0h3K2t3V3FBb1NZZkhzdzV1R1J6MllWWmFEOHBReE8v?=
 =?utf-8?B?TGJITlZMNjBuc0hMWUd4bDl0MWxTZkFJM0xwUTAvWXBOSzU3aUZzTFBVbldS?=
 =?utf-8?B?RkhwUjlweXVkUTAveTFaT21Uc1d0M09KbW5HUlZJajRvQkFzZmRJL1pCVFNw?=
 =?utf-8?B?aVV2K0FKcDlQNUVDcnJlUDNaZGpWTXVvazFqYk1uWXVUSzZTaG9takZ2OG9F?=
 =?utf-8?B?M0p0Qm9tUks3Q1NhQXVtNE1qNXM5R3djblNjM2VJQjFVY25RY0E1a0lyMUlV?=
 =?utf-8?B?TkxGWVY5aWFxOTg2cEgzTWJNWFFqQzJ4U0ZDa3VEV084V2lmNnNRN2N2UnBw?=
 =?utf-8?B?a1RodVJOa0JSTHd0bi9pYlJRUTZQeDRpUzIyMUk4MUNpSFlXekcrOWNjT0pZ?=
 =?utf-8?B?RFFhUGtvRFhTL2I3UTFnWlVLSGdjWTNzQXBmWFEyR0lreTBKMjltYW5SV1VD?=
 =?utf-8?B?M3NQeXpTVEUrcHBKTzVMN04wVnFJL1dnSi82QWExWWpwNnlVeEo1SzJ0QzV1?=
 =?utf-8?B?Y3lkSXFydHpqRXpWbDN4OW9sYVdSUU1JOEVnREI5em1UcDNzZ3pzd2VDNW8w?=
 =?utf-8?B?MkttVmRsbEkwZjBMNC8vUkJGZzJOdHVUdHVyZGplTHdST2RHa1VxdVcybnky?=
 =?utf-8?B?ZVF4N0xNcGJhN2JEdFN5MlNrNk1aNjRqNmpyM2ZtQjFRbkRvclozWTRyV2JF?=
 =?utf-8?B?RVNXZ3NhSjJHenc0Z1JYTXY2Mk1XYTZ2Z3hjMC9MVEcxVjJnMHNlL05yY0VD?=
 =?utf-8?B?cXhsNEZEZ2VTVHRBUDgzNE5XTnRlZ3BCS2NhQzhkZHRBbkZiMHpLQUQ1T0VG?=
 =?utf-8?B?cFpzbnYzRXM1V1BHZzRhcXlWYk9jR2t2UTUxYU4wN2NWNjU5eGRMVGFJc1lp?=
 =?utf-8?B?dUVzM015TUxWeXQ0UXJ5dnN2UWFRRlUwcW9sUnJLd05yM3kza2NwTmlBMFJ6?=
 =?utf-8?B?cHpadEprQjVYeklYTXpTZ2taSzFGZ2NXakFiT1pxRlBIUkpHaVhiak9LQzdj?=
 =?utf-8?B?NkFqODNHMTdYelR5S21nZHcvUGJSZysvNVdacEIzU3RCbnJIb1dQWWZjSUhl?=
 =?utf-8?B?N2M0TVJJRlRUM1graUw1akNBYzZZSTVLbExtdUpPOUlrT2FaVWtzY2JPbzcx?=
 =?utf-8?B?SlY5bzlrL2RZNUN0YzdtaUZtaXhncWhHRHd0RHJjcXV1Vy9GQVlRVy9jeXZs?=
 =?utf-8?B?eEpQRUhSUXlrRjkrd3BrMEJ2L0FnTkNkcitLWUk3TU1YVDJtV3pJSmhaOTZQ?=
 =?utf-8?B?cUJZV2d1Miswd2xDNWJEaThTYXluRy81RXJjSU5zR3QyZ2hySUZ1b0tVYTVw?=
 =?utf-8?B?djNtY1VXd3lHM29FbS9aT1BFWjE1VlpheXBFeE1LMXpFUUdYdjI5MXZjY1Bz?=
 =?utf-8?B?bkV4c0YvRUNMeE00RFMzcGFvY2QvRzArVmptK2wrdEo0a2tPWFh1UXpVOHZ3?=
 =?utf-8?Q?xfL/Kwg0aZRpUbSUtFPPGTV074sJjO/1?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MlpnVGJQdWtBNjNaVDd0a29CM3RrWGxBTU5zeFpCeG83ZFk1RzI0L1FFMG1G?=
 =?utf-8?B?RFVOS29zTUtGb0t1ZnplYXdDemhUN0hCRU90TE5XTkVBR0tWV0pERkpTVmdR?=
 =?utf-8?B?ZUtuSWtaYWZYQVhzMEtkekVHREw1bFJ0Mjk1a3BEcU5wNDd4ZnIyR2NwRHJH?=
 =?utf-8?B?eWthODhnV1NpL0lTanM4RnBiTHZ4ZEhJU0RFMi9DSGdOOFhqQ0Q4aXJxYkRz?=
 =?utf-8?B?R29xVVlxTUYzaGR0U0gvKzBWZ0c0dW5HYVhlbzRxVG1EQ1JkZCtRNUlNemd2?=
 =?utf-8?B?VUtmTldtdG1EVlN2L25FZEFublUvb2NkOWlpOGJXWlloREpFRDkyVWh1TkE3?=
 =?utf-8?B?TXhGd3lWbzFtRVBpN0JuTEtYM1l0UWVwTXJQOC9hS05yZ0phLzBrMFNlZjVP?=
 =?utf-8?B?Yy9ZanBXd0ZEQUY5T1dYWVBXN004SWtyRXdNT3lSeFFxY2l4RFN3akh1Vi9Y?=
 =?utf-8?B?TFI0aGNhMTBXK2ZpYmh4VTdCK0FmMndJSjhWN0RsZldycERsVkl6ZEZxUFVq?=
 =?utf-8?B?STF2eHp6Q1N6L3ZWMDFpNC9xeWltWmZOejc3WjRlQVNzclhHWWZiZjBtTzVv?=
 =?utf-8?B?MVhKTDg1VndKT1k3QzV0aWV0cks0emJqdytLMXhBOG5pclRjaVhZZFc2VWpQ?=
 =?utf-8?B?aS9yaDc5MnFiakNmMXJBT3dYK2hoL3dlUHdpRGN1R1VtTkJ6YyttK2oyTCta?=
 =?utf-8?B?elZnT1ArbFo0QXBGUHFGWHBhVCt1bnovVmU2U0FuVkdIRUNRVjN0QW1Mdjds?=
 =?utf-8?B?WlZob2ZNVVIwOTBYZ1hzeG96bHdlRE11cndob0N1SkZheDE1b0tSRDZqS0ZC?=
 =?utf-8?B?alN0TitrOVMxSXBFVFNqM3lJbW9kRUVBVlRnR2FrOVBhRVlKV1EzSVNtdXBQ?=
 =?utf-8?B?R3Fua0NCejdicmk5NzJQVDl3Mk44R0VsZEVrcHJ2UlBGa2J3ZnJ4VGdaQXhn?=
 =?utf-8?B?MUo5bmpna012QmsxRkRwZm5OMnhiRFFKREVIbW01TU1OK3VKMnhvVG1EREU3?=
 =?utf-8?B?SmNxM3RZZzhSYUg3QTFVTklkcUVVRy9rVzBTT0hXaWlKa0NmbEpyU1oyTURn?=
 =?utf-8?B?cEl4dWk5OUI3b0kra3Urejg3S29OSHFERjBGQXUrZEVxOWc2TmVnU0tPM0Q0?=
 =?utf-8?B?d3lOOGRMbDZiVEh0MzI1YWI0bDRVNFdqVUhEcTZVWHBTd0oxa1U2MW5TZ0Fa?=
 =?utf-8?B?VnZUZEUwakxJV0ZYMUFXVU9ZdnFvVW0vWnhtUHhqYzJQdGZpOVE1YXJaVnQ2?=
 =?utf-8?B?RldvS2NyOExhUnU4TXZGK0RCL0g1aGE1TmpWMVlXeUM5M1hjWjcxck8wQkNa?=
 =?utf-8?B?V3hXRDZ0TFlTRDFXY0E3S0ZhcktUZjI0cXlJVjR5MThRTWFOSW1kYnBRcXda?=
 =?utf-8?B?WEZDRytKY2FDeWk1U0NGNWpuOUZ2ckhlbFBUd3JKcTVuQWJUbGI5bjdoQ1ly?=
 =?utf-8?B?ZmhwQWF3aWN4dXNPQmtxcU16cFZEbkQxbTZrcGhzSFkvNkd2M1dJVlNBU0g3?=
 =?utf-8?B?YkJDWHpmNjM0OGZpSmZMNEhSWW0rZXVvZmoxbFVZdnF3L3phUE9LN1VnYjdr?=
 =?utf-8?B?OTZoMlgyaGJ6UDdVeFJ4YStMQWtoaHVNdzEzdFRnWFllck9rZm84Umtyd2pw?=
 =?utf-8?B?V2M5dXQ5TU9ONlA0MXlKd3hVOXc4Sm1IdzliaWJ6bTdvN251YWRJRU9ZTE9y?=
 =?utf-8?B?ZnV5dVYrZkFqRlBHOEx5MHRYYlZyS3VuSjZJM2FIZjVEWDArUFd4SFFhMFBB?=
 =?utf-8?B?MkJGS2NFMjkvcWd6aWJvWTFyNXB5ZU1YNjhFeUtRWkN0UllNOUJuanBUbUFr?=
 =?utf-8?B?OXlQR2x5dytxUFFqTGVUQUpSQ09RZHZoWWJpVWY1QlFXNFM2eUFGK0xFZjR6?=
 =?utf-8?B?T3dqL2NmV2lFanpWSk13U05WbzBoMmZGTjRpK0R3bHkvdDRXRHUzREtTZWtr?=
 =?utf-8?B?L1RITW1nV2o4RzVEN0ZTSzR4TE5rUVRNeEJVUFlmV3Fvc0pwWWtOYS9RY1Zk?=
 =?utf-8?B?cXVQby9tUEtjdWNEVVlJdHd6NjNjKzJ2aW96N3U3KzZZMjJCVmRhQzlCbjNN?=
 =?utf-8?B?VFk5RStwUDIzWkRLY2UvVWxRZUFCaXZVQk1DWmdyOXJqRkR6Uy80R3ArRENu?=
 =?utf-8?B?UWVubjE5RkllbEdyV1pmNDBtMHFENXpUNjhFMWs5ZEg3cUFJaVFhQU1qekRt?=
 =?utf-8?B?bFY2dDhDVkNIamJ0R0E1M0M4Nkk2OXdKSmQ2dW5CYnZST0hOQnRYOW84bnZs?=
 =?utf-8?B?WkZiZHVpNkd6NDJIaG9IZzEyTXhBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5F44F5E4CAB3934DBEAB02F9CF2D2EE2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf4995b9-64d0-46c9-4ee9-08dd5d7d3234
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2025 13:37:25.0845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peau6QTjpGvAr18CYQWEfvTZCm+KDxIcpq4VDT60IzF4jE5UX5eiftJJdKLZNZF99FhWBEe++yGVvmQffCZEryyYsI5TTkC+RL36PI3Xo5M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6680
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

T24gTW9uLCAyMDI1LTAzLTAzIGF0IDE0OjA1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBBZGQgYW4gaW50ZXJmYWNlIGluIGRlYnVnZnMgd2hpY2ggd2lsbCBoZWxwIGluIGRlYnVnZ2lu
ZyBMT0JGDQo+IGZlYXR1cmUuDQo+IA0KPiB2MTogSW5pdGlhbCB2ZXJzaW9uLg0KPiB2MjoNCj4g
LSBSZW1vdmUgRk9SQ0VfRU4gZmxhZy4gW0pvdW5pXQ0KPiAtIENoYW5nZSBwcmVmaXggZnJvbSBJ
OTE1IHRvIElOVEVMLiBbSmFuaV0NCj4gLSBVc2UgdTggaW5zdGVhZCBvZiBib29sIGZvciBsb2Jm
LWRlYnVnIGZsYWcuIFtKYW5pXQ0KPiB2MzoNCj4gLSBVc2UgaW50ZWxfY29ubmVjdG9yIGluc3Rl
YWQgb2YgZGlzcGxheS4gW0phbmldDQo+IC0gUmVtb3ZlIGVkcCBjb25uZWN0b3IgY2hlY2sgYXMg
aXQgd2FzIGFscmVhZHkgcHJlc2VudA0KPiBpbiBjYWxsZXIgZnVuY3Rpb24uIFtKYW5pXQ0KPiAt
IFJlbW92ZSBsb29wIG9mIHNlYXJjaGluZyBlZHAgZW5jb2RlciB3aGljaCBpcyBkaXJlY3RseQ0K
PiBhY2Nlc3NpYmxlIGZyb20gaW50ZWxfY29ubmVjdG9yLiBbSmFuaV0NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiAtLS0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uY8KgwqDCoMKgIHwgMzIN
Cj4gKysrKysrKysrKysrKysrKysrKw0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfdHlwZXMuaMKgwqDCoCB8wqAgNSArKysNCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDM3IGlu
c2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YWxwbS5jDQo+IGluZGV4IGY0NTg2Yzc2YTdiNy4uMjQ1MzY0ZDAzMWMxIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtMjc2LDYgKzI3Niw5
IEBAIHZvaWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+IMKgCWludCB3YWtldGltZV9pbl9saW5lcywgZmlyc3Rfc2RwX3Bvc2l0
aW9uOw0KPiDCoAlpbnQgY29udGV4dF9sYXRlbmN5LCBndWFyZGJhbmQ7DQo+IMKgDQo+ICsJaWYg
KGludGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMubG9iZl9kZWJ1ZyAmDQo+IElOVEVMX0xPQkZfREVC
VUdfRElTQUJMRSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+IMKgCWlmICghaW50ZWxfZHBfaXNfZWRw
KGludGVsX2RwKSkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gQEAgLTQ1MSw2ICs0NTQsMzIgQEAg
c3RhdGljIGludCBpOTE1X2VkcF9sb2JmX2luZm9fc2hvdyhzdHJ1Y3QNCj4gc2VxX2ZpbGUgKm0s
IHZvaWQgKmRhdGEpDQo+IMKgDQo+IMKgREVGSU5FX1NIT1dfQVRUUklCVVRFKGk5MTVfZWRwX2xv
YmZfaW5mbyk7DQo+IMKgDQo+ICtzdGF0aWMgaW50DQo+ICtpOTE1X2VkcF9sb2JmX2RlYnVnX2dl
dCh2b2lkICpkYXRhLCB1NjQgKnZhbCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9y
ICpjb25uZWN0b3IgPSBkYXRhOw0KPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNf
dG9faW50ZWxfZHAoY29ubmVjdG9yLQ0KPiA+ZW5jb2Rlcik7DQo+ICsNCj4gKwkqdmFsID0gUkVB
RF9PTkNFKGludGVsX2RwLT5hbHBtX3BhcmFtZXRlcnMubG9iZl9kZWJ1Zyk7DQo+ICsNCj4gKwly
ZXR1cm4gMDsNCj4gK30NCj4gKw0KPiArc3RhdGljIGludA0KPiAraTkxNV9lZHBfbG9iZl9kZWJ1
Z19zZXQodm9pZCAqZGF0YSwgdTY0IHZhbCkNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfY29ubmVj
dG9yICpjb25uZWN0b3IgPSBkYXRhOw0KPiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBl
bmNfdG9faW50ZWxfZHAoY29ubmVjdG9yLQ0KPiA+ZW5jb2Rlcik7DQo+ICsNCj4gKwlpbnRlbF9k
cC0+YWxwbV9wYXJhbWV0ZXJzLmxvYmZfZGVidWcgPSB2YWw7DQoNCkkgdGhpbmsgeW91IHNob3Vs
ZCBkbyBzb21lIHNhbml0eSBjaGVjayB3aXRoIHRoZSB2YWx1ZSBmcm9tIHVzZXIgc3BhY2UuDQoN
Cj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiArREVGSU5FX1NJTVBMRV9BVFRSSUJVVEUoaTkx
NV9lZHBfbG9iZl9kZWJ1Z19mb3BzLA0KPiArCQkJaTkxNV9lZHBfbG9iZl9kZWJ1Z19nZXQsDQo+
IGk5MTVfZWRwX2xvYmZfZGVidWdfc2V0LA0KPiArCQkJIiVsbHVcbiIpOw0KPiArDQo+IMKgdm9p
ZCBpbnRlbF9hbHBtX2xvYmZfZGVidWdmc19hZGQoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29u
bmVjdG9yKQ0KPiDCoHsNCj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19p
bnRlbF9kaXNwbGF5KGNvbm5lY3Rvcik7DQo+IEBAIC00NjAsNiArNDg5LDkgQEAgdm9pZCBpbnRl
bF9hbHBtX2xvYmZfZGVidWdmc19hZGQoc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAqY29ubmVj
dG9yKQ0KPiDCoAnCoMKgwqAgY29ubmVjdG9yLT5iYXNlLmNvbm5lY3Rvcl90eXBlICE9DQo+IERS
TV9NT0RFX0NPTk5FQ1RPUl9lRFApDQo+IMKgCQlyZXR1cm47DQo+IMKgDQo+ICsJZGVidWdmc19j
cmVhdGVfZmlsZSgiaTkxNV9lZHBfbG9iZl9kZWJ1ZyIsIDA2NDQsIHJvb3QsDQo+ICsJCQnCoMKg
wqAgY29ubmVjdG9yLCAmaTkxNV9lZHBfbG9iZl9kZWJ1Z19mb3BzKTsNCj4gKw0KPiDCoAlkZWJ1
Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X2VkcF9sb2JmX2luZm8iLCAwNDQ0LCByb290LA0KPiDCoAkJ
CcKgwqDCoCBjb25uZWN0b3IsICZpOTE1X2VkcF9sb2JmX2luZm9fZm9wcyk7DQo+IMKgfQ0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiBpbmRleCBiNzg3MjFjNDUxYjguLmI2ZWM5YThmYWRkOSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4g
QEAgLTE4MDgsNiArMTgwOCwxMSBAQCBzdHJ1Y3QgaW50ZWxfZHAgew0KPiDCoAkJdTggYXV4X2xl
c3Nfd2FrZV9saW5lczsNCj4gwqAJCXU4IHNpbGVuY2VfcGVyaW9kX3N5bV9jbG9ja3M7DQo+IMKg
CQl1OCBsZnBzX2hhbGZfY3ljbGVfbnVtX29mX3N5bXM7DQo+ICsNCj4gKyNkZWZpbmUgSU5URUxf
TE9CRl9ERUJVR19NT0RFX01BU0sJCTB4MGYNCg0KMHgxPw0KDQpCUiwNCg0KSm91bmkgSMO2Z2Fu
ZGVyDQoNCj4gKyNkZWZpbmUgSU5URUxfTE9CRl9ERUJVR19ERUZBVUxUCQkweDAwDQo+ICsjZGVm
aW5lIElOVEVMX0xPQkZfREVCVUdfRElTQUJMRQkJMHgwMQ0KPiArCQl1OCBsb2JmX2RlYnVnOw0K
PiDCoAl9IGFscG1fcGFyYW1ldGVyczsNCj4gwqANCj4gwqAJdTggYWxwbV9kcGNkOw0KDQo=
