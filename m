Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5A09E15DC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 09:35:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A817810E973;
	Tue,  3 Dec 2024 08:35:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fiUaq7xL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C993710E241;
 Tue,  3 Dec 2024 08:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733214915; x=1764750915;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SzlRQDTbaBEpoeloo48L+zBTeoDdqHRiVtGAqiP3nXU=;
 b=fiUaq7xLKIOpTdKxsP8gX99VNkIGl4OJKaxk7xUrrGnjOGSDWTduCdpd
 AmFc2ggWexYNB4CH4Lptat39Xd5XJ1pTUoEmfFT9T0UpS3b2m4wsbRv57
 5kJ329WMSpFUeSzDHZ/ThMQt6VjJHhcJq1xAOnQ1yrxEiqLor8hV3Bg16
 6hE8dHjeqYk++hoRPLYBE+gufsI8KUq+F6FIYHPzQC1e9Gduqc4LD9Xw1
 81JHuUHfJvNS4XwJxGOm1Payo5vZmzdCRWL1ao3jNKovyFZ0H7RSBzGpq
 D9cxCBGCrj42CI4auVdbu6TNVEOhpAWxNNDcla5D/eMZVWdpo4LPatr+f g==;
X-CSE-ConnectionGUID: vQunk2iPRJC/bozcfq3H4g==
X-CSE-MsgGUID: 9eawpGZ/TIaD9lGI3LSYbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="33546887"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="33546887"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:35:14 -0800
X-CSE-ConnectionGUID: vMazO066RNKa0ezKl0jKMg==
X-CSE-MsgGUID: NkEiVSZhTIuI96mBtahbJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="93023962"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2024 00:35:14 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Dec 2024 00:35:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Dec 2024 00:35:13 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Dec 2024 00:35:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NCIXK7QPfibirWd7kNb3nCmVLkbyitkC2oc9kmgXRi/42oeYzKYypzXl2J6zkgE5aYRbipJF34OjMJSeq87hhseJKg933sFWiRRCiC0e0msRGabJcLe8fzFL8lK8fH4NXCvuHpYx+dXDvcl1g9eM7yIbe1+NFbyfLd2JpR3uHEhO1saSns+iIO0S5JCOn/wP5xRdLOLvoCKojjALC8eLBlBzlA6FtZnM5c2gdQ/SulfqERRsdv4Onh7BHzcESi+pAhDm6BzCEUmRwB5VXvemYAZVhaH+g5vNfdXnsT5oMIceZ/JR8V1pBEAo6TkAojEYCmjALQ7QLOIpMVCzJkWDwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SzlRQDTbaBEpoeloo48L+zBTeoDdqHRiVtGAqiP3nXU=;
 b=lvaVe2Q325FLoqLeG1PfXOANZbk2u32C36QbRsfMZqwfWbSJcU5V31XnlNm0+5ngkYwLcetP27AL0IhPIFrLqek/cZ4dTf/8BmNT/JzzhZ1NDHJ63AG5j1yxDul/LdGchyneechsah/eKb1uwUaCWYzRCyJZJyaf3+PCBbTdpvFgzvapvGHhcjHWWBZ6M+hS6xiCu9WZsMHeJQe6PYRkfo7IOrxNIqsLSnM0UhCGX6GuQ2hG24Kg8sNqa27TdoQW8gaJhRuLmdhO2DNQmtlygXNbYt1DxjaRo0QA0rdvO/sIEOLykA68XEFeKhy863Worj5xGoyfgVeYb6oAlkyg6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ1PR11MB6105.namprd11.prod.outlook.com (2603:10b6:a03:48c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.16; Tue, 3 Dec
 2024 08:35:05 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.017; Tue, 3 Dec 2024
 08:35:03 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 02/12] drm/i915/dp: Return early if DSC not supported
Thread-Topic: [PATCH 02/12] drm/i915/dp: Return early if DSC not supported
Thread-Index: AQHbOzfzolE2K2z+ckWu/BtaD3aiSrLKp8NQgAmddACAAACycA==
Date: Tue, 3 Dec 2024 08:35:03 +0000
Message-ID: <SN7PR11MB6750E5D1C44E6F84A6D825A2E3362@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
 <20241120103802.134295-3-ankit.k.nautiyal@intel.com>
 <SN7PR11MB675041BF8EB49756CFEDA323E3282@SN7PR11MB6750.namprd11.prod.outlook.com>
 <767bdf26-11f5-40d6-9933-1ca69c76954c@intel.com>
In-Reply-To: <767bdf26-11f5-40d6-9933-1ca69c76954c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ1PR11MB6105:EE_
x-ms-office365-filtering-correlation-id: fe3913db-99b1-4434-e970-08dd13756206
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?Z3czNDd1OXJPNmdVcFIrekFuZGFkRFhWN2pqQnBHYTNhQittRHh1WFBUSUU5?=
 =?utf-8?B?QlN3RFowUlBUWlZ4U0NtSGtPb3hpMldnK3NaMWNDaUg3L2dSZUgxYWRYdWdF?=
 =?utf-8?B?cGMrVGpzUmVxNm5zUFFwbFZvWEk1QTE3cXFlZXJxbm1SemN5TGZSU0M4N0Ur?=
 =?utf-8?B?VjE5UEszaFJPcHh3QzhHd0lTajFTYkptOWZWTGtXM21FaUpHaDNabXV2M3VY?=
 =?utf-8?B?U2xuTG4zQ1lHclg2WkNSRkNsTC9mREJxU0tIMWJUb1dHSlBrcUtldEZYMEIr?=
 =?utf-8?B?SytoOXVka28yei9FTlQ4ZTJkRHo2bGhHV1VLTDIraStJcit2dzZPSXBwbjN3?=
 =?utf-8?B?SHNsejJnK0MwbXNXNjM1aDRUamlDcjBnOWtBZjhSUkZnakE2clN1emFzL0tE?=
 =?utf-8?B?ZVl4TURUam4vcG5zVC9hYytYRzg1TmVYOEszZmc5TTZGSWlxTTZLK0hYWnhM?=
 =?utf-8?B?YnRrRHdtZ2xPMGNJcVR2QjRicEd5eEdrMFN1bVJxZkM4dStJd2dpTENpbnVW?=
 =?utf-8?B?djhPek1BdWpoNFN4bUFuZC9oK0lHZWp3dEllMzJsaFFxVjZRdEE3M2l2emdu?=
 =?utf-8?B?bmE4VWRtbjdYc3pnYjQwelJXczNLcEFpeHVnZFZySDFaV0tZdXdwa2QycE9x?=
 =?utf-8?B?RFBJdkk4ZGg0VysyZFVJdzJoY09aa0Z0OTJ2SHFCZW1lWDJOWTlFeWx4enJs?=
 =?utf-8?B?YUpGSGluZmpzQXIxVHU2ejgwZ1FOK29qTnJZR1FoVkIxb0lRenRGZ09uWC9x?=
 =?utf-8?B?QS96RHcySkF1RDlDSVBtaW5ZR2xaaFV3cEp5R3NDR21acWpaSlpVd3VZWnZW?=
 =?utf-8?B?dXVMZVMyaWxGMkN1TnN5c2FWSHF0MXV6K1VxMFlUb2ZsSHhPeDlLRERNcXdi?=
 =?utf-8?B?VU1Wd0F4Umh4R3dSWjhPekIxczN6MVRsMnhZNGN3Tko3eTZRL1NUamlOV2RU?=
 =?utf-8?B?VStTeVJWMUovT1hCTlBHQ2JkL05JZzZINHFVTGQxOVJrbnRHWHFLaGRQcUM0?=
 =?utf-8?B?MmNJc3pvNFV5dExrTnJuRDhhRGE4dUkxcFVVa2U5RzVobk1neUtPVXZ4UWc2?=
 =?utf-8?B?TVRkMUU5MlFRQkkwenFaTmFBeTZtV1BBMXJhTVFQU1BmQ3NGbjVWMWZ2bXdl?=
 =?utf-8?B?NWRqdlIyZHFZekhkWlVaOUhNUXF2TWx2T05QNS92WlBkZXRxTzhad2d6UnpB?=
 =?utf-8?B?V2RNOEFWMlNLZmViZUdMSWhKOFBCVldUTFE4MFNOMi9HODdFZlRlVlUxZWtD?=
 =?utf-8?B?UWQ1V2ZwTStNdllYY3orekQwektBOXYvUVYrcEw0b1ZBL2tyYmlZNk1kZExh?=
 =?utf-8?B?QmZQMHZFVEM1MVVCSStBQXVzT1ZWQlU4eVAyRHFKaEZlbW9BYnhNM2Nra21h?=
 =?utf-8?B?MEh0N3MwUVQyY3lLaGxSdkQxdjhKS2lqMUZiRkNlV3pwc3BicTFQUFlSV3pU?=
 =?utf-8?B?NmY2aUduKy9BVTI0b0Z5MU5UVzM4ZjNSS0pkOHQwaUJtVWhPZWUwQ21LMmpD?=
 =?utf-8?B?QUhmV3VxTEx1NDArRDlvYnVyekxVMzNqSDlrcmxPbnJGSE5ETjhmUU56ZG03?=
 =?utf-8?B?VldISjdiWktSZmFPUjBUUzRRbXUySjlsQTAwZVVzS0pEWGpsMXVrckFpZ1la?=
 =?utf-8?B?T2hIbW9OWWg0MWc2TEtkSE9xN0JOL2t1YWRkUVF3cDRPbVJ1djJySWxGMk5S?=
 =?utf-8?B?ZFd5Mmo0U29YdDJUcmdVMDFIV3B2Q2lvQWZNdDI2T2Mxck05RkdvK0tHVFhJ?=
 =?utf-8?B?VDd0S3RIVnR4KzNNc1ZOY2Z3YVBRVFpURmYreVdWQ1pHNkphZ000bEFaTG9l?=
 =?utf-8?B?YkN2cTZOdWF4V2t3QzFPZmllN3NjQ04wQlg4UTRmUlF6c3Z6ZlRtWDkrTUsw?=
 =?utf-8?B?R0JtdG5KaWNDRkpUdXV0SURmU1hLZHlzaUE1Tmp6ekFGRnc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QnIzMGduQnVhMWxwcXVaZHlqQ1kwVWluWW9jMWdIUGc3SUdXQlFJS2EwN3RG?=
 =?utf-8?B?dEdGSjVRSjhla2lMUzV0Q0JRODZsYkQxZTUzZlNKV0ZxckFqNzVSWHh2L2E1?=
 =?utf-8?B?Nm1pREhPR2NxVGovL0NpbFR3Y3djU2lVbzNRcFFaRndHMERXd0hmakJQM2Nx?=
 =?utf-8?B?Q3BYRFgvb3B5RU5uMlZFb2VUN3dsUDg3TmNtaEV3YUVLUkdvTlBjdmttSjJr?=
 =?utf-8?B?NVVHTDE1RTdneS9ZYW0xY1p4ODRnczJUQ0lLSVVzQ3dEUTh3aUhHSjFGdHRX?=
 =?utf-8?B?aVRacXVGSXFsd09vODZlcWtNWVVGTmFWV3RmNmwzZXZENU1iSFhFbVVpc3Uv?=
 =?utf-8?B?bUo1cWsyeitlcVBZN2JPMnN0amFPcU5pUnJDQTlHY3NPYmpoMGRyMmFhay9q?=
 =?utf-8?B?VkswL3FqeklPRGpFYmh5QW1vUTFKdXN6RkJ6d05WMFBqbXgwdE1RV29jV0s0?=
 =?utf-8?B?aTJ2YnBGRWF6NldMUlVNaHRJcG9oNGs2NHFjai9GdkVMQ0F2cHltb0h6NWNj?=
 =?utf-8?B?aDJhTWpKbTdmZXB1eXJSQlFLUHExTWNyQy94ZllYdGg1cmxLdVk0VDJaSDhY?=
 =?utf-8?B?cXF2NFhtd0NOMXVlM1hvdktTVC8rU3JBUEtVWE5Sa1ZJNi9kalp4bW1zTDdQ?=
 =?utf-8?B?RHg0UzRFSTdhaGo2WFVzSk5xMWcvM1RvWkxNRHZlL0EwR2ZqOTc2R1hRaCtW?=
 =?utf-8?B?WDdzOXlYQUVCTXJPMTNOSldTTnhURE9PVXVKdDl6cHpKelZ2VnZvYkg4Rm9D?=
 =?utf-8?B?ak83SFhVWGxsSnAvc0ZLT0lsRWsyaTdFTU1xT0x5VVZsV01RZ2FRc2hTNHd6?=
 =?utf-8?B?dWNzZTMrK2l4c2VzdjE2c2txdk5EK053YSt5ZE5nNUFOUmlNSUt3TUVaVVRx?=
 =?utf-8?B?Q0prRytYciszUkJnbjhQOGF0QUk0QnBGUlFSWTZGYVg3UHF2aTlROUFXdnFL?=
 =?utf-8?B?Y010NDVYbFU3ZE1jSytqU0JjVmdkWElrTW4rTlo5b3phb3U2cFVZZjdKZk44?=
 =?utf-8?B?Mzc5TjNPeGxoNlV3TVB3VWJETm1jMjViYWVxdzZDTm03bjIzV1BvRC9DTFB6?=
 =?utf-8?B?NnV5MzhkaFpWc3N5YTZtMERuVVVGbGVnVUQ5UUVtSDRUTTFpNEhZbGh5TUZ3?=
 =?utf-8?B?T1E2bE5qclhKZWVDV2czd3RMOFBmdkxiWkZaNWZ3OWhHQ0t4dHU3WGZKN3RO?=
 =?utf-8?B?aE1TbHBxS0drdlFMOU9uRW9iS1dIU2wrSExFT1dLY2VqQ2pOVFh1QWZRc3U4?=
 =?utf-8?B?WFVybExnV2xBOVcwM2NVZ01KZDlvZ1RBcm44ZWs5Nk5hc2JiUGViMldZMjR1?=
 =?utf-8?B?VllydzlQaGtlVHVhb1Z3cUdKMG9EZENuTUJPN3JHT2xaeTNIcFBnOUFJV3Yy?=
 =?utf-8?B?b1F3UGhySGZCVHZiQ3gxQWlzbDEzYmxqUTF1SmFuYzYxZGMvOHZiUitkdFhT?=
 =?utf-8?B?UmsvajRPQTZQNEtGRy9hbmJsb1BxNm1DOC9sNVRvOTNCbE5aSEpuWW9yTzZ2?=
 =?utf-8?B?eTFPdU16eklFNC9NU29oNlVLSVJydWJ4c1M2M0pnQSswQ2src1JENkNObWRM?=
 =?utf-8?B?bEd5R0tYUHpERWxCUTlhQi9zMWEyNHROZ1lnZlN5YXNRamd3dXF0aUkzdUg4?=
 =?utf-8?B?Q1pCQ3pyNmJETTlkM1JBc2hQUGxyVDJESzJqZVBsaDVJd1RxaDdVcVU2Szcr?=
 =?utf-8?B?RGpqeFpWcTFWMjhUOHZKMzY2QnljMUFISEExcXBrQjNiV2ZGNXJoeWVaMUFV?=
 =?utf-8?B?RU52Q2hodHZ6dlYvNHNNM2M4M09sbHFubFV3aWVFaDR4NVJZV1ozUGJjSm1V?=
 =?utf-8?B?VEd0bmliU0UyaUljNW9vVWViVDdKUkUwemFlOXYvTEIzY21JbFRybmk4U0ZG?=
 =?utf-8?B?VGY2c3hZUEdaYkhCZDVZdm1UWUZMN1F5VGRvSzNMUUdPeHBUUEZqY245bjJk?=
 =?utf-8?B?cFpmYnFBU3Azd2RoZXhoVXZpSVNYVy9jendhalRnL2FYckF3QlM1bk1obzhn?=
 =?utf-8?B?c0NWQVBxMlVKaHhaOGI5OHM5K1ovUmcrWkRjVU81emJ2d3A3TTYra0s0eXhl?=
 =?utf-8?B?UjI2MXhTUzRoSVl5dnVHRVQ4NjFLK1VER1pVNWVGUUFqWTMvS3N3SlAzM3Fh?=
 =?utf-8?Q?2csDrpDftS/2J6yXPb3ams5KK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe3913db-99b1-4434-e970-08dd13756206
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2024 08:35:03.3019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hmIE5tR/og+NFT2IOjBc6OD4L+KeuWOb8u7L07nvqeT1wLq/rlsXf6gkXbnSnFsSfE+OVtzD7xI29oCSzxVPeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6105
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF1dGl5YWwsIEFua2l0
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBEZWNlbWJl
ciAzLCAyMDI0IDI6MDIgUE0NCj4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5kcGFsQGlu
dGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhl
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgamFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tOyBEZWFr
LCBJbXJlDQo+IDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDAy
LzEyXSBkcm0vaTkxNS9kcDogUmV0dXJuIGVhcmx5IGlmIERTQyBub3Qgc3VwcG9ydGVkDQo+IA0K
PiANCj4gT24gMTEvMjcvMjAyNCAxMToxMyBBTSwgS2FuZHBhbCwgU3VyYWogd3JvdGU6DQo+ID4N
Cj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogTmF1dGl5YWwsIEFu
a2l0IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiA+PiBTZW50OiBXZWRuZXNkYXks
IE5vdmVtYmVyIDIwLCAyMDI0IDQ6MDggUE0NCj4gPj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gPj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgS2Fu
ZHBhbCwgU3VyYWoNCj4gPj4gPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPjsgamFuaS5uaWt1bGFA
bGludXguaW50ZWwuY29tOyBEZWFrLCBJbXJlDQo+ID4+IDxpbXJlLmRlYWtAaW50ZWwuY29tPg0K
PiA+PiBTdWJqZWN0OiBbUEFUQ0ggMDIvMTJdIGRybS9pOTE1L2RwOiBSZXR1cm4gZWFybHkgaWYg
RFNDIG5vdCBzdXBwb3J0ZWQNCj4gPj4NCj4gPj4gQ2hlY2sgZm9yIERTQyBzdXBwb3J0IGJlZm9y
ZSBjb21wdXRpbmcgbGluayBjb25maWcgd2l0aCBEU0MuDQo+ID4+IEZvciBEUCBNU1Qgd2UgYXJl
IGFscmVhZHkgZG9pbmcgdGhlIHNhbWUuDQo+ID4+DQo+ID4+IFNpZ25lZC1vZmYtYnk6IEFua2l0
IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gPj4gLS0tDQo+ID4+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgNiArKystLS0NCj4gPj4g
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+Pg0K
PiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4+IGlu
ZGV4IGRiOWRkYmNkZDE1OS4uZGVlMTVhMDVlN2ZkIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4+IEBAIC0yMzc4LDkgKzIzNzgsNiBAQCBp
bnQgaW50ZWxfZHBfZHNjX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcA0KPiA+PiAqaW50
ZWxfZHAsDQo+ID4+ICAgCQkgaW50ZWxfZHBfc3VwcG9ydHNfZmVjKGludGVsX2RwLCBjb25uZWN0
b3IsIHBpcGVfY29uZmlnKSAmJg0KPiA+PiAgIAkJICFpbnRlbF9kcF9pc191aGJyKHBpcGVfY29u
ZmlnKSk7DQo+ID4+DQo+ID4+IC0JaWYgKCFpbnRlbF9kcF9zdXBwb3J0c19kc2MoaW50ZWxfZHAs
IGNvbm5lY3RvciwgcGlwZV9jb25maWcpKQ0KPiA+PiAtCQlyZXR1cm4gLUVJTlZBTDsNCj4gPj4g
LQ0KPiA+PiAgIAlpZiAoIWludGVsX2RwX2RzY19zdXBwb3J0c19mb3JtYXQoY29ubmVjdG9yLCBw
aXBlX2NvbmZpZy0NCj4gPj4+IG91dHB1dF9mb3JtYXQpKQ0KPiA+PiAgIAkJcmV0dXJuIC1FSU5W
QUw7DQo+ID4+DQo+ID4+IEBAIC0yNjQzLDYgKzI2NDAsOSBAQCBpbnRlbF9kcF9jb21wdXRlX2xp
bmtfY29uZmlnKHN0cnVjdA0KPiA+PiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+PiAgIAkJ
CSAgICBzdHJfeWVzX25vKHJldCksIHN0cl95ZXNfbm8oam9pbmVyX25lZWRzX2RzYyksDQo+ID4+
ICAgCQkJICAgIHN0cl95ZXNfbm8oaW50ZWxfZHAtPmZvcmNlX2RzY19lbikpOw0KPiA+Pg0KPiA+
PiArCQlpZiAoIWludGVsX2RwX3N1cHBvcnRzX2RzYyhpbnRlbF9kcCwgY29ubmVjdG9yLCBwaXBl
X2NvbmZpZykpDQo+ID4+ICsJCQlyZXR1cm4gLUVJTlZBTDsNCj4gPj4gKw0KPiA+IE1vc3RseSBs
b29rcyBnb29kIHRvIG1lIGJ1dCBJIHdhcyB0aGlua2luZyB3aGF0IGlmIHdlIG1hZGUNCj4gPiBp
bnRlbF9kcF9zdXBwb3J0c19kc2Mgb25lIG9mIHRoZSBjb25kaXRpb25zIHRoYXQgRGV0ZXJtaW5l
cyBpZiBkc2MgaXMNCj4gbmVlZGVkIG9yIG5vdC4NCj4gDQo+IA0KPiBUaGFua3MgU3VyYWogZm9y
IGxvb2tpbmcgaW50byB0aGUgc2VyaWVzIG9uY2UgYWdhaW4uDQo+IA0KPiBJIHRoaW5rIHRoYXQg
bWl4aW5nIGludGVsX2RwX3N1cHBvcnRzX2RzYyB3aXRoIGRzY19uZWVkZWQgd2lsbCBjb21wbGlj
YXRlDQo+IHRoZSBjaGVjay4NCj4gDQo+IEN1cnJlbnRseSBkc2NfaXNfbmVlZGVkIGlzIHNldDog
aWYgZHNjIGlzIGZvcmNlZCBvciBpZiBpdHMgbmVlZGVkIGZvciBqb2luZXIgY2FzZQ0KPiBvciBp
ZiBpdHMgbmVlZGVkIGJlY2F1c2UgYmFuZHdpZHRoIGlzIG5vdCBzdWZmaWNpZW50IGZvciB0aGUg
Z2l2ZW4gbW9kZS4NCj4gDQo+IElmIGRzYyBpcyBub3QgbmVlZGVkLCB3ZSBkb250IG5lZWQgdG8g
Y2hlY2sgRFNDIHN1cHBvcnQuDQo+IA0KPiBJZiBEU0MgaXMgaW5kZWVkIHJlcXVpcmVkLCBmaXJz
dCBsb2dpY2FsIHRoaW5nIHRvIGRvIHNob3VsZCBiZSB0byBjaGVjayBpZiBEU0MgaXMNCj4gc3Vw
cG9ydGVkLg0KPiANCj4gDQoNCk9rYXkgdGhlbiBpdCBMR1RNDQpSZXZpZXdlZC1ieTogU3VyYWog
S2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoNCj4gUmVnYXJkcywNCj4gDQo+IEFu
a2l0DQo+IA0KPiA+DQo+ID4gUmVnYXJkcywNCj4gPiBTdXJhaiBLYW5kcGFsDQo+ID4NCj4gPj4g
ICAJCWlmICghaW50ZWxfZHBfY29tcHV0ZV9jb25maWdfbGltaXRzKGludGVsX2RwLCBwaXBlX2Nv
bmZpZywNCj4gPj4NCj4gPj4gcmVzcGVjdF9kb3duc3RyZWFtX2xpbWl0cywNCj4gPj4gICAJCQkJ
CQkgICAgdHJ1ZSwNCj4gPj4gLS0NCj4gPj4gMi40NS4yDQo=
