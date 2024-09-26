Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C2B9870F5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 11:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C01310EB8D;
	Thu, 26 Sep 2024 09:59:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TBQMHuOX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F61C10EB8D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 09:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727344746; x=1758880746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cVuZ/510VElUQ2UP+CiF45dau4/DSiShiZ64luVyBE0=;
 b=TBQMHuOXffHnL2rQSvowccov7RMxXLTDPDgojxHYul9sDPvNeHQ0wtfc
 wX4bDmdVaCb6BsNh5L0Vq6rTOSIv8oRFoB6kGeBm6vMi0EabtEWBnRQZ1
 2o4VtgydPog1dkyOGn05Yfvx2EKwqqZHSnyfKA0j+74BYdiYCmoE2H4kX
 Tr3l3VkMqCWFb3mjetzkiGZE51y0Mly4y08uuWn0MSJwV/cLfxmvf2zPJ
 ZVzPmuGJY472U4rS6lyumEcMJ8wEgbErPFXWe+PeSzoQE7ujjc8xuCk8z
 IL+uPZplnBu9pbfYN6/Dhb6xiqgHsO/gEDKSA+3WllDQa/dckYCSbLyHB w==;
X-CSE-ConnectionGUID: JlExnYS0RaWIW3hVabgZAw==
X-CSE-MsgGUID: Yv9FpWvZSH2Y6c45oP6xyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="25898932"
X-IronPort-AV: E=Sophos;i="6.10,155,1719903600"; d="scan'208";a="25898932"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 02:59:06 -0700
X-CSE-ConnectionGUID: 8WaChDZAQ0SryCSu7K76jA==
X-CSE-MsgGUID: v2Lw0XlBSXaICViYYyVfPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,155,1719903600"; d="scan'208";a="71688466"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 02:59:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 02:59:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 02:59:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 02:59:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 02:59:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sqfgXLItCHkL7FaWWv6jWcvxiUVvxuzz2fUr8YpqXD3syhphZWxbpvNByKi0ljM3tv+Rh8LHp9y4tmPVicEYcb/ivSGIEsWYHTu6ggZrdjtZN/6nIjW/3kHkS5/toT97OF9PzIoxBPWSa0P1L9ITL96NiGV7DFSjh/selUbm/yxmj+iVj3rDyWGI5DMLpi0lL4lpNVhascdtR/n0Sh9sX39HUj4S1E4qqXFxwfxaA7XdPyx9hzc5nkkZ40ECayiccx3j7RtM2qbdOJImeQdA5j/oaoMAHodpM8dZOy6F+5b7s46/dZm+RAiJQjRYy5/RF9jUnKfmXBbAlVDKcRSlhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cVuZ/510VElUQ2UP+CiF45dau4/DSiShiZ64luVyBE0=;
 b=G7XBbuC5a5CatmuiJhc1r8Yt5X3GY55csxehHH8mileUlGU4DrbAHLPF1NjNelvIpVYmUyaDaIRLthBjtc4dX6k8jPTIJlTeK0I7MB9R3Rk88sof+J4+D1xT0mpmJlnozYI6Chm4SWii7zDG61/9Vf3ybUCMNH7oQQ/J2Zqv8jIaQgTie9jWQK8jtdmxSqIZxTkF8o9HpZQ+u/sgKMm2HhWPYy0mNSde3mq5VR6BtYiaITCRZPfZqndgETsNi8ylWhG7CEJYNjQD7j+HX1/nCPZ/o9fVj6BrmKR+vZElDUucUflvBDys2FmeQsduFpb4PxhEdTXOkg6S8yp19IZL5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SN7PR11MB6601.namprd11.prod.outlook.com (2603:10b6:806:273::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.28; Thu, 26 Sep
 2024 09:59:02 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1%5]) with mapi id 15.20.7982.022; Thu, 26 Sep 2024
 09:59:02 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>, "Anirban, Sk"
 <sk.anirban@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Poosa, Karthik" <karthik.poosa@intel.com>
Subject: RE: [PATCH v3] drm/i915/selftests: Implement frequency check for
 energy reading validation
Thread-Topic: [PATCH v3] drm/i915/selftests: Implement frequency check for
 energy reading validation
Thread-Index: AQHbCm3L/30LcqARA0yi0YPVvQiClLJe0iWAgAsOPSA=
Date: Thu, 26 Sep 2024 09:59:02 +0000
Message-ID: <CY5PR11MB621108AAD97CE84B213BA645956A2@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20240919082339.1310635-1-sk.anirban@intel.com>
 <998b8ae8-9370-4fad-919c-eb68ccb5c2d3@intel.com>
In-Reply-To: <998b8ae8-9370-4fad-919c-eb68ccb5c2d3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: sk.anirban@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SN7PR11MB6601:EE_
x-ms-office365-filtering-correlation-id: eeb9357e-b6bf-4918-fd3e-08dcde11d9a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TCtMb1ppdWZVUFdCZEMyWklZTU1MaDVvT3I2VjJ0NHFCeWpqRmIzVUNOcDY5?=
 =?utf-8?B?M2xMSlllajJQdmZIZjR5aFY2eUYyMFBGUi9US1J4ZElmc09wajhQRG5oOHJZ?=
 =?utf-8?B?R1ErZEdnUXc0TGJxRVVJNWVEbnA1YlgwQngxcmRkOGUvRnUrOE9vNlpyNjVs?=
 =?utf-8?B?Y2x5ZVVrNGNCMHcwSm1aTU5nZTJTOFNoZEFxUHFhc1J1Qjl3OG1Sa3U3aCth?=
 =?utf-8?B?K2R6UjBQMmRvWnpXWmRQWHh4TXZVeUpRVGdvTzN5ajBTYWQ0MnVOTnpKckYv?=
 =?utf-8?B?K3BNT2Z3U09MUXh4ckdLNm1LaWxISEdaRFQxbDRESEdWZXNJcHk3VnR1a0hu?=
 =?utf-8?B?UFlKdDU2SXc2enEyQytML3lJMnR5T0tRSTUxd1VxbUhpSDZZSGJGQ3N3YWFO?=
 =?utf-8?B?ZHBRWXJGbERUOTRjNTNCMlhNRVhFMnZpTVZ1WDViUENyWDVMZmZ1dHFGaFlS?=
 =?utf-8?B?SW5XQ2dyT3JxZW9QYUVtVHlOakJTVjdRUzVOd1haLythZVl6c0VCOVRJVkhh?=
 =?utf-8?B?THNJcXJDUDJQenFPT21ybytiQ2M2c0pNbFFuMHlGUmVxcmw5ODVTM2p3UXFT?=
 =?utf-8?B?OXU0ZUR5aWlGZTE4YU5JLzVER05paEhwMU1nNWR6VDU5MWY4N2VwYWpzYjRD?=
 =?utf-8?B?cXJFalpGbnlPVkJVOFpXOXpVbWxDOHM2UVFKRUJZWm5ZMTNLaTNJa0NYN25W?=
 =?utf-8?B?b2J3UW9sYTdvWmhuNUI1YVZBQ3NLYTI0TExRU2g0emZ3TnJCdG8vTG9EcjRU?=
 =?utf-8?B?byt4Sm9PZDh0bklMS3pLeVVpUm4zeG8rbHpMcGFjVE5aenpmdFNabGhBbHpW?=
 =?utf-8?B?Ym81WFhFNGZFZFdNWU4yRlNxR28xMXk0VWdNdE85RGFGUFdkY3hpZUJKVmtK?=
 =?utf-8?B?TUxYR09kdkRPSFdkSlR5dURNNEwySGw5QmlOUEljUEFRbytmK0IraDBLcXNP?=
 =?utf-8?B?WHpZZWYzY3Jmd2hCa2hXazI5Ym16ZFZ0N0plWHRSVVhpUUJyYnNuTWs2b2sr?=
 =?utf-8?B?aHU2Wi8vNXBiWGxEL1h0d0NDOVA2d1lKa283OVh1RlMrV1FNTG9iRjAxSDBR?=
 =?utf-8?B?RUpxSFlDaWptMjd3eUErREZBWDVSL2kyanorZjBjMUhIekdIWFAybmFHM3V6?=
 =?utf-8?B?aW05NGRKSzhZcEVaMXQrQnFZd3kwdWY2cHhyY21ybExDS3pZc0dpZzNRMmQ2?=
 =?utf-8?B?Z28wVldEUEJoMWtBdGNjWno5RHZmaVlrY2FhOXRRN2YwTVltbVRKV2paZStj?=
 =?utf-8?B?UnY4cHVTRFZRVGRtVWhxV3ZVMzJEY3lOeXRBaDdaSUJxYjNNSks5SEJCY0Zy?=
 =?utf-8?B?b2lKRUNCR1JlZnV0Z3IvYTg0SjgreGp5N21GOWVPYjVCQ2hweHV6RW5YQ0pt?=
 =?utf-8?B?c0wrbDFtL2x4MHdsa3NDWnMzN1lUZHpxOFNYU1dvemdnQ0gvQmlKbGRzelBB?=
 =?utf-8?B?QkpuQW9HZytOUlhlM0thaG9kRFgxWGdQOHRHcjZFUFJya1llczdhblRpNWZO?=
 =?utf-8?B?NlVHSS9rblJ2ZEhVaEpudS9IQzVnc1ZMZmM0b0IxRTkrK0dmZklzMW5Hd1lj?=
 =?utf-8?B?QUg3VU1tQVBveHlLcG40U1hMRUt6SjFwN0JxQUZiYzhYRnZndC9DU09wQS93?=
 =?utf-8?B?QXE1aUw5QXlnQnVSZ3pzRHppWVRHcnlLVHhNMUZoMkVYK1Y1bDdYY3FGZ3FU?=
 =?utf-8?B?MkRFQi9WeDJkRGgzSTZ6c2VCcXExOGM2ejR6WUZqN3RHYjl2UG9PY3laOUFo?=
 =?utf-8?B?cDFIcmI4cHlSc0xLRGhWWUIzR0l5L1lWaG91N2tpOENWTDJYRHNrbS9zdEVB?=
 =?utf-8?B?K2dHQXZhdDBldkFLV0EyNG9rZXdmUnZqTGlZa0FTWm5pRUFJQjRSY2h4Tkl2?=
 =?utf-8?B?TWdvSFB1NHB6MGZDNlJZeDVmM0ZVWmo1Z2N2YnVuRzZpaVE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bm9hY1J0YkhVYW1VWTdJdTdQeStPaHR0YkZncWd4RnRuVlI0elpjU053Y2V4?=
 =?utf-8?B?N0NibE9lWXVxZWxJTHpxYjN1M0dEeEVrYnNsamFnM2Q5eEFEZUdJK2VDSFZk?=
 =?utf-8?B?TlUxdXFYNjM3U1hJQy9OODk0U1F1Q21jbVJWL0drb1htRWJmQ1kvbmVQVUY5?=
 =?utf-8?B?V2R0N25JRlkwck9GYllCRm1QMkFoYVpDWURnRlphbTFPYXBSVExSbWVFWjZk?=
 =?utf-8?B?cHBnVUNhVlFCTFlRNmdDeFg1aklMWTBUOGhadTJGTzdvU3RhdUR2M1R4UC91?=
 =?utf-8?B?azBmb0JrbFQ1QzZFb3pab1QvazJsZmpoZGd4T0JtQmhQTVkvc001Ti9SNlJT?=
 =?utf-8?B?YTRUK3RrOFFuWTJSOER1aUhMZjlPTVpqYVQyd0JGbzlUZDdZK1dqZCtiaU1r?=
 =?utf-8?B?elFzbUgzblh1YlIzOHQxSzBqaFQ4TmNUQ2NqQjl4Z2MwaXBFMiswWGY0M1A3?=
 =?utf-8?B?R3VWTW52WUd0aG16bkFpSVo2RVB2dkdibHNtd2V4Qld1OUpxRVpaRlhGUndQ?=
 =?utf-8?B?aStwWlpvbEJTRmtnSGxYVThDMnJNWkFTd0ZPbVhSWEN1SnpPd0kxcGUzOG1n?=
 =?utf-8?B?WWh6cTR6M3BHRnBlbXZObXR0ZTJDMFl6UEp2ZDFBRkRVeFpibmJ5YjFDM3RG?=
 =?utf-8?B?dEJJR1ZXVnBiNkZjUEk3T2E3K3QybXBaRWowb1hDUi9Fek12MVhKUS9qUVZ2?=
 =?utf-8?B?WGYrZnBMS1RwYUhwWU1zbHdISDhzc2cyTW5aQll4UTRQaXVxSERFTzhOOUEx?=
 =?utf-8?B?VllFMUNIUWFKZFhyZ3FxSlNzMitrYnZoQ1l6SGxWc3N1TG94UmdwWGlpL2Vu?=
 =?utf-8?B?NHhmbGxFVE50bG5ZMkV4QUQyb0M4M1dPQ3d4UTI5Y1h4QmFORVNnaVFJaDdQ?=
 =?utf-8?B?NFVIWmREbmhoR1JFRXh1c0VjUldCbHdCdzlGQU9tdVlCWkRWYkVwblUwUGxv?=
 =?utf-8?B?VUJvL3VlZjQreWhoZmNoNm5FdzJnbEpvRStyYUFKK0NSRkR4WHFJYmFzc1pW?=
 =?utf-8?B?QXd2WHYwUkdoQkgxa2ZZejFXOHYybG9XYmpKeFVVeW5RZjNnRmtwdmM3djk4?=
 =?utf-8?B?bkxXUGlEME5vbGJHcXBzN2dqUEdJOWFnelNaa1dKSmwrYWxYd2YvQ0RkWHBW?=
 =?utf-8?B?eFlXSklCWjBYS0xRMUpJeHltQTRoTWtkbkxiWjhsaHYrMjlCVE5VL1F0b0dP?=
 =?utf-8?B?ajAzdkp5WW1ENEVoNE9lNjRSa2ZtRTB2MFVtMnViVUtIdGFHREtZWnhqK0l5?=
 =?utf-8?B?WHhzMXB3dDkyRXVrNEg2OWFqL2dnN0dKL1dHVFVwclVKdjU4UmlHSHRPZEwr?=
 =?utf-8?B?QzhXS3pDTUpUc1JpMGplVmZDY2dmYWNWbHJBK3RwM20wSkR4dXFVazcyVjlK?=
 =?utf-8?B?aEhWbjBZb01rYXVuMURwem9WNXordHNhTGFWaEpSVzBRM3Y3cStadncrSHBl?=
 =?utf-8?B?d1ZxZFVQSEFrUm1zZlcwWHNBSlZjVDNEZndWcUF3SEM3LzdLUFVKcnl6Wndj?=
 =?utf-8?B?bS9EN2xEQ2tBSXUrYXdSNGgvNzY5Yll0eXRRbERaM296OTEzVzd3M0VyMFRh?=
 =?utf-8?B?SGttOTRmcXEvZzhCQXhHTTlpSUtBR3RPUVlsaC9GbU4rdnZMUjJaR0ZOcXBv?=
 =?utf-8?B?Yjg4MFh1Vmc2RE5ZWlJHNE5kY0dEbkRpVGpTVzdDU3lBZlc4ZmE1TGtRQ212?=
 =?utf-8?B?REtQTndpTVF2Q085bW9pNUdtYjZXeENSVnd0L0ZqcGViRHVHazhPSldBVHJs?=
 =?utf-8?B?TVdscDVNclJKby9UVm1oa0lsSEZvVjFlendLTVNvOXE1ZEhYZDBiQVVDc0VT?=
 =?utf-8?B?VHhRTzVPa1o0S0FpSGJ4NCs2azZieVhwb1NOZ0ZWa0NpRy9qWDlWNWtHUU5G?=
 =?utf-8?B?YkM4Tlp3bVJTeDNxTVk2YVI2bUE0MmxPTnB5cm5nbTdHVTJrenE1NXlyYXdl?=
 =?utf-8?B?ZWpxK0VwUXhIcW1BTnlubmlxVEhhdDJQS3E2K1kyWjZEQVhqekRTY0NiRVVp?=
 =?utf-8?B?eVF2dWV4WHgxdXZjM3c0dVZuSVNBeGZ2ZVZLd1dwOFc2QkFLT3Q1OU9ldU5o?=
 =?utf-8?B?SHVHWXY3dGV4ZUxveDc5M3N2SXdFMndya1FQNE5pWjZtclE3b0t4N09yU3Zm?=
 =?utf-8?Q?AP2VjDIvvA/rAXVcR6IhfPblm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eeb9357e-b6bf-4918-fd3e-08dcde11d9a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2024 09:59:02.7033 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ylg7MWMpp3lQx72ngI0OMhvQ1sgYDRxxBSifXlYNyoaU8zdYW8xxgmnl+aifDfddYB4uZa/chxHaU8yzs2fIoMqCu5AL+tOiQqbaETy/1H0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6601
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUG90dHVtdXR0dSwgU2Fp
IFRlamEgPHNhaS50ZWphLnBvdHR1bXV0dHVAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwg
U2VwdGVtYmVyIDE5LCAyMDI0IDI6MzkgUE0NCj4gVG86IEFuaXJiYW4sIFNrIDxzay5hbmlyYmFu
QGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IEd1cHRhLA0KPiBB
bnNodW1hbiA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPg0KPiBDYzogUG9vc2EsIEthcnRoaWsg
PGthcnRoaWsucG9vc2FAaW50ZWwuY29tPjsgUG90dHVtdXR0dSwgU2FpIFRlamENCj4gPHNhaS50
ZWphLnBvdHR1bXV0dHVAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYzXSBkcm0v
aTkxNS9zZWxmdGVzdHM6IEltcGxlbWVudCBmcmVxdWVuY3kgY2hlY2sgZm9yDQo+IGVuZXJneSBy
ZWFkaW5nIHZhbGlkYXRpb24NCj4gDQo+IA0KPiBPbiAxOS0wOS0yMDI0IDEzOjUzLCBTayBBbmly
YmFuIHdyb3RlOg0KPiA+IFRoaXMgY29tbWl0IGludHJvZHVjZXMgYSBmcmVxdWVuY3kgY2hlY2sg
bWVjaGFuaXNtIGFpbWVkIGF0IGVuc3VyaW5nDQo+ID4gdGhlIGFjY3VyYWN5IG9mIGVuZXJneSBy
ZWFkaW5ncy4NCj4gPg0KPiA+IHYyOg0KPiA+ICAgIC0gSW1wcm92ZWQgY29tbWl0IG1lc3NhZ2Uu
DQo+ID4gdjM6DQo+ID4gICAgLSBVc2VkIHByX2VyciBsb2cgdG8gZGlzcGxheSBmcmVxdWVuY3ku
IChBbnNodW1hbikNCj4gPiAgICAtIFNvcnRlZCBoZWFkZXJzIGFscGhhYmV0aWNhbGx5LiAoU2Fp
IFRlamEpDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBTayBBbmlyYmFuIDxzay5hbmlyYmFuQGlu
dGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X3JjNi5jIHwgOCArKysrKysrLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X3JjNi5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9yYzYuYw0KPiA+IGluZGV4IDFhYTE0NDZjOGZiMC4uOGZkNmJlN2I4MjZlIDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3JjNi5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcmM2LmMNCj4gPiBAQCAtOCw2ICs4
LDcgQEANCj4gPiAgICNpbmNsdWRlICJpbnRlbF9ncHVfY29tbWFuZHMuaCINCj4gPiAgICNpbmNs
dWRlICJpbnRlbF9ndF9yZXF1ZXN0cy5oIg0KPiA+ICAgI2luY2x1ZGUgImludGVsX3JpbmcuaCIN
Cj4gPiArI2luY2x1ZGUgImludGVsX3Jwcy5oIg0KPiA+ICAgI2luY2x1ZGUgInNlbGZ0ZXN0X3Jj
Ni5oIg0KPiA+DQo+ID4gICAjaW5jbHVkZSAic2VsZnRlc3RzL2k5MTVfcmFuZG9tLmgiDQo+ID4g
QEAgLTM4LDYgKzM5LDggQEAgaW50IGxpdmVfcmM2X21hbnVhbCh2b2lkICphcmcpDQo+ID4gICAJ
a3RpbWVfdCBkdDsNCj4gPiAgIAl1NjQgcmVzWzJdOw0KPiA+ICAgCWludCBlcnIgPSAwOw0KPiA+
ICsJdTMyIHJjMF9mcmVxLCByYzZfZnJlcTsNCj4gPiArCXN0cnVjdCBpbnRlbF9ycHMgKnJwcyA9
ICZndC0+cnBzOw0KPiA+DQo+ID4gICAJLyoNCj4gPiAgIAkgKiBPdXIgY2xhaW0gaXMgdGhhdCB3
ZSBjYW4gImVuY291cmFnZSIgdGhlIEdQVSB0byBlbnRlciByYzYgYXQgd2lsbC4NCj4gPiBAQCAt
NjYsNiArNjksNyBAQCBpbnQgbGl2ZV9yYzZfbWFudWFsKHZvaWQgKmFyZykNCj4gPiAgIAlyYzBf
cG93ZXIgPSBsaWJyYXBsX2VuZXJneV91SigpIC0gcmMwX3Bvd2VyOw0KPiA+ICAgCWR0ID0ga3Rp
bWVfc3ViKGt0aW1lX2dldCgpLCBkdCk7DQo+ID4gICAJcmVzWzFdID0gcmM2X3Jlc2lkZW5jeShy
YzYpOw0KPiA+ICsJcmMwX2ZyZXEgPSBpbnRlbF9ycHNfcmVhZF9hY3R1YWxfZnJlcXVlbmN5KHJw
cyk7DQo+ID4gICAJaWYgKChyZXNbMV0gLSByZXNbMF0pID4+IDEwKSB7DQo+ID4gICAJCXByX2Vy
cigiUkM2IHJlc2lkZW5jeSBpbmNyZWFzZWQgYnkgJWxsZHVzIHdoaWxlIGRpc2FibGVkIGZvcg0K
PiAxMDAwbXMhXG4iLA0KPiA+ICAgCQkgICAgICAgKHJlc1sxXSAtIHJlc1swXSkgPj4gMTApOw0K
PiA+IEBAIC05MSw2ICs5NSw3IEBAIGludCBsaXZlX3JjNl9tYW51YWwodm9pZCAqYXJnKQ0KPiA+
ICAgCWR0ID0ga3RpbWVfZ2V0KCk7DQo+ID4gICAJcmM2X3Bvd2VyID0gbGlicmFwbF9lbmVyZ3lf
dUooKTsNCj4gPiAgIAltc2xlZXAoMTAwKTsNCj4gPiArCXJjNl9mcmVxID0gaW50ZWxfcnBzX3Jl
YWRfYWN0dWFsX2ZyZXF1ZW5jeShycHMpOw0KPiA+ICAgCXJjNl9wb3dlciA9IGxpYnJhcGxfZW5l
cmd5X3VKKCkgLSByYzZfcG93ZXI7DQo+ID4gICAJZHQgPSBrdGltZV9zdWIoa3RpbWVfZ2V0KCks
IGR0KTsNCj4gPiAgIAlyZXNbMV0gPSByYzZfcmVzaWRlbmN5KHJjNik7DQo+ID4gQEAgLTEwOCw3
ICsxMTMsOCBAQCBpbnQgbGl2ZV9yYzZfbWFudWFsKHZvaWQgKmFyZykNCj4gPiAgIAkJcHJfaW5m
bygiR1BVIGNvbnN1bWVkICVsbGR1VyBpbiBSQzAgYW5kICVsbGR1VyBpbiBSQzZcbiIsDQo+ID4g
ICAJCQlyYzBfcG93ZXIsIHJjNl9wb3dlcik7DQo+ID4gICAJCWlmICgyICogcmM2X3Bvd2VyID4g
cmMwX3Bvd2VyKSB7DQo+ID4gLQkJCXByX2VycigiR1BVIGxlYWtlZCBlbmVyZ3kgd2hpbGUgaW4g
UkM2IVxuIik7DQo+ID4gKwkJCXByX2VycigiR1BVIGxlYWtlZCBlbmVyZ3kgd2hpbGUgaW4gUkM2
IVxuR1BVIEZyZXE6DQo+ICV1IGluIFJDNiBhbmQNCj4gPiArJXUgaW4gUkMwXG4iLA0KPiANCj4g
UHJvYmFibHkgd2UgY291bGQgaGF2ZSB0aGUgY29tcGxldGUgbG9nIGluIGEgc2luZ2xlIGxpbmUg
d2l0aG91dCBoYXZpbmcgXG4gaW4NCj4gYmV0d2Vlbj8gV2UgdXN1YWxseSBuZXZlciBzcGxpdCBs
b2dzIGxpa2UgdGhpcyBhcyBmYXIgYXMgSSBrbm93Lg0KPiANCj4gQnV0IG90aGVyIHRoYW4gdGhh
dCwgbG9va3MgZ29vZC4NCkBBbmlyYmFuLCBTayBQbGVhc2UgYWRkcmVzcyBhYm92ZSBjb21tZW50
IGZvcm0gU2FpLg0KDQo+IA0KPiBSZXZpZXdlZC1ieTogU2FpIFRlamEgUG90dHVtdXR0dSA8c2Fp
LnRlamEucG90dHVtdXR0dUBpbnRlbC5jb20+DQo+IA0KPiA+ICsJCQkgICAgICAgcmM2X2ZyZXEs
IHJjMF9mcmVxKTsNCj4gPiAgIAkJCWVyciA9IC1FSU5WQUw7DQo+ID4gICAJCQlnb3RvIG91dF91
bmxvY2s7DQo+ID4gICAJCX0NCg==
