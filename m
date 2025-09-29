Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29037BAA928
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 22:07:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A258710E4A1;
	Mon, 29 Sep 2025 20:07:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fe7nzi88";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CC6910E256;
 Mon, 29 Sep 2025 20:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759176428; x=1790712428;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qfOG2XBcwKGRxzjr+Bd4Ia9B2EVk5QUlthz5bB7uCGc=;
 b=fe7nzi88ltIzsQNEBHx7SxiTaweb7OraZZM4RlJJRO3mP1mxhOPAtaMB
 LXlYUJ0GW5/332jmAV/akFIjwz+/UcrI0tn73C0i0d/LjLh6jICpMCcWT
 9vuI8PIod47MhW8DZsq6BSDCIBFtQxoBhJ1e/zCfZWyxzbgHf0PeXnWJj
 v9uo+mZTTtP/O4muL8QSe4KefQimkaYO4pBWPhoxRilOVG9eVg4lwu5BD
 a7V/Grb2CMVQMNpBmbivWOEKHzHKhqTMvG/b8Gm+NOeJ7BMd0F6Y1FSYc
 nq/dTFCqTiDShR8JnvrDJ9hmY1iBRgWFtWTrITyOigstXm37AXU9Klw5A w==;
X-CSE-ConnectionGUID: COwu1vAOQkK+vpOy+kFCIQ==
X-CSE-MsgGUID: 0v3/1Zy6RiC6w/XpYggpvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="64048844"
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; d="scan'208";a="64048844"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 13:07:08 -0700
X-CSE-ConnectionGUID: pqHCFeThRzq8G/GQMpIn8w==
X-CSE-MsgGUID: SU+wbViYQN2b8GL8ibsUlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; d="scan'208";a="182726067"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 13:07:08 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 13:07:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 13:07:07 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 13:07:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V+ymm2t+DQb/+8wWtzD0m6u9+HxOcytBOfYENC+PhJ1AhgzpzwRkCcjJMV9rAzRdbn17On1C2ZU+YckaZ2dpKjRHWFtV33SM8iNE0XGqp9wtL06bI+pcOEdC0rwaG+Xw6bkcr18N5xovu8vKXsGvyfNBrddYpqSTxY61Dm6OpKsa/MtLzUKQFr0zwmMAOxYJBil51ZUerAwm+TB7zZUbtUSQCM+Y7KKE8ddmxfoCM9++zrf95qkRC/GixqcnXwz8v6EV/oyDmk3sKHSRzqexGTVyxwEspjWztvYI5X90EnSBPwNxz+lGqTKl86D359oEzstq6sFuAT6cF6wHfsrkWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qfOG2XBcwKGRxzjr+Bd4Ia9B2EVk5QUlthz5bB7uCGc=;
 b=BtRMeUopDVcxOfxjL0/vxQeSvH8eo2hUe2RLuJQw9hQGA2kWgR7HIquJUF5QdWcBB8IsEpXOXY76vxY4pFOrRvqbikIXgHS2f63ujdanEkOWLqrBM5aF7L9gLmZGNF0tnTfrmJuxrl/BL+nmN2NrmrvSr6BDHtQ5SvHuLKDhyFtemDthYrQpulxKgFJVzAygyYTO+sES4gb2VMdbW6W/boGZhHKVaMmQDd4CudGWy7UYAPJFGOMT4UML/cId/dbHMKrk/iryVKmUa7xhF4Xkh8m0goeZ/qpn0HVNQvP5rfpZKXPWVM/zra+ggs2/X3FHG0esezL6ArNpbtl/X9f2jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5373.namprd11.prod.outlook.com (2603:10b6:5:394::7) by
 CY8PR11MB7798.namprd11.prod.outlook.com (2603:10b6:930:77::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9160.17; Mon, 29 Sep 2025 20:07:04 +0000
Received: from DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::927a:9c08:26f7:5b39]) by DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::927a:9c08:26f7:5b39%5]) with mapi id 15.20.9160.008; Mon, 29 Sep 2025
 20:07:04 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula, 
 Jani" <jani.nikula@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/display: Extend i915_display_info with Type-C
 port details
Thread-Topic: [PATCH] drm/i915/display: Extend i915_display_info with Type-C
 port details
Thread-Index: AQHcLndlc6o5MRzKwkmwZxTGgpX8DLSlIOwAgAAGEgCABXVRgA==
Date: Mon, 29 Sep 2025 20:07:04 +0000
Message-ID: <c8c70a885152ffd5a14c658d6ec07643fb0da752.camel@intel.com>
References: <20250925235153.2091404-1-khaled.almahallawy@intel.com>
 <aNZNqOni0az7GUqK@intel.com>
 <ca0a2b05c577d368cdf296685bda2dc9bcba9cfe@intel.com>
In-Reply-To: <ca0a2b05c577d368cdf296685bda2dc9bcba9cfe@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5373:EE_|CY8PR11MB7798:EE_
x-ms-office365-filtering-correlation-id: ec034e3a-7ab9-4736-a346-08ddff93c2a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?V1JWWnI4NkZweFNDMTVkcVdVbHhTbFp2OTlyYm1UeTJZcVpvTlNLdi96UC9K?=
 =?utf-8?B?bFdzbFMyMjlrVlgvWjR5SGg5MGdZWG9LMlg1N3YwUDlmcld0SlNTdU9ZR2pR?=
 =?utf-8?B?OUlQeHF2Mi9FalRLWUFkaVhHQUR3NDlIRC9sOHYvREFTMFlGRFdOcVBZaWdt?=
 =?utf-8?B?b0Zyc2x4WFpNWW1FdDNNUjZWQmVZSEhrSGRzZTlUQnFOREkrdlNuREJJK2N2?=
 =?utf-8?B?Z25iZFo0cmNYSHlRSDI4UUZPbkIxOXFRcjAxMkJPTFBqQ2l6TU5XWVZ1VjFs?=
 =?utf-8?B?T25TOXNIaTBhUjVlbHpOWHVDb0FyMmNLbFNMaEVabWtkMUFqRWZjTHI1THox?=
 =?utf-8?B?T0RIM2pEcXhpaVhzSzN4L2p4TGZ3QUJMUjFUZTBKMGRhaG0vbGpmdGRGcUYy?=
 =?utf-8?B?QzFhUUMvNHI5cVdvRGg4UVM1KzJMblBZMDZYTTFKTkRZMTRvVUxCcWhJQXlD?=
 =?utf-8?B?cjV5YXJPaW1xWHYvckdKTHBBMnJSWnhYZ2g3UGpnMGRoL2I1SElSOXcyMlUy?=
 =?utf-8?B?clIycTY2RUlNenNTeTc0THc0ZklBUFBxOC84OXhjaXh3endqMEtNTnZ2emUz?=
 =?utf-8?B?YWMybUQvTTcyTithRDV1MGJUcmd6L1hoSE02NW55Nm9Bbzcxek9hWjdtNDd6?=
 =?utf-8?B?dUFXNU1hUGg5RXFhVFhBQ2wwQi80T0FFcTd5UFBzcFlDSW9mNUl3ZVNzOTdS?=
 =?utf-8?B?Z3U0Z1RqWStiaG9IaVRGUnRCZG5GZHFrbzFva3g1WFJvSitjZEEzYnFYN0V4?=
 =?utf-8?B?WjRiQUJ5WlMvQ3ArbnNQS0JlZ2FaV0l6Q0RIaTg2MW9SampOUGlNbjBPMm5y?=
 =?utf-8?B?OUVML0JzbDZGKzN5V2U1ZHE2eTBOTkU5Sk1sMGkyOHJ1MWppcHpQVzdvWmdv?=
 =?utf-8?B?UFd0ZGVNUHQ4d04raENxRHZBQlQzSDd1d1JjSkZwNlREUS9oWHg1djQ4eER0?=
 =?utf-8?B?aUFoakcxMEFtdkNLWGorZUFqdXVHSmkyRFVac3JxeG40TE9qb09kSzlORGQ2?=
 =?utf-8?B?SjBmSTd4SVZqZnVMRHBzOTNpMGtqUHVTaURzMUhKYkdxS0dFRU1vWjFYdFQv?=
 =?utf-8?B?eXZMQXZNL3FJUm00ZW1SSjNSWUFMQksrM3BPMzNFVytSRFRGbS9tM0lLajVQ?=
 =?utf-8?B?MkVpVnBMWjdOQm1yRmN5RjYvZ2YxZ3Z1b0RpVGlJdnZVeTVLMkowclI2bzhO?=
 =?utf-8?B?OWMrK2J4aGlRa3dHU3oza3N0elUyaUFNdkFBL2xHcUJMZ2orZ0hrNHFBZkpa?=
 =?utf-8?B?alVSU0dROUd6aURiSmFBUXZKRFJPWmxEMEQvVkRsOWlKZ01FS2J5cVJ3STVY?=
 =?utf-8?B?MlZCTHJUQUZVcmlvMW84bXhpQXBrdlRjSlNoNGN6TmwrVkZEa3Z2NEdkdUVz?=
 =?utf-8?B?a2JvVHRLRHBsVDB0dlREbGx6VjEyZmhZeit2anZ6d25tS1pVUzk2dlRPb3dD?=
 =?utf-8?B?SksyMS9rRjEwcW1KTUlmSU1RM1RiU0RJOG5qZkhTZTAwSTlXaURoeTIvNE5P?=
 =?utf-8?B?MDB0UG5ZNTBCUUxFUlljejcrR1Q2WUdXdk80ZEZQbzcrL2FsT2VxV2xvcmlR?=
 =?utf-8?B?UTRaLzNBNWtPM1ZPekFvcjNteDBxZzNHWGJiZUtCbEtFcVFHZDl1YW02aEc1?=
 =?utf-8?B?ZVhyZGtxYVdRc1lQZk1pS3RuZmJCR3lZbVBXNHJSSVlRZi9HaHR2ZVdiMWI2?=
 =?utf-8?B?UWZzc0xyRTA1M3V5ZHJwWkM5RFlXZG5ENVBMQ1JZalhadzFYNjk3Z3VuNEha?=
 =?utf-8?B?MW5Gd2dmVmZkMjFOMHJVZDU1bUZPMnMvOXFrYlpVQmlYRlpJVmJmODhUTzRX?=
 =?utf-8?B?V2dwZThuZ2dBb1VNek1xU1FUQ1JzeklZaXkvSTdPa1EyUzB1LzNOdmFuN1lt?=
 =?utf-8?B?U2NLeTExVlBkajNlMEVRTm5HQTVtSC9iSGhva24rQzhyY3gycG1aSkh0SXhE?=
 =?utf-8?B?TUUrWmpKSjRKK2dva0dQUEcwanJPRThkUlhiSU9ZSklmUkFzeW9qV3NtS0JZ?=
 =?utf-8?B?d2gvQzZySHVRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5373.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L09XNVo4amw3aTBUQjFZYmZyQnk4YlZjWXBKUkpxamFuMzl1WWdhN29aNlht?=
 =?utf-8?B?NUtmaUtLT096Vll4V1diMWhLcVpqUVVLQm84MDRGSi93MllFZXRjSVlHM00x?=
 =?utf-8?B?T2JvUThuYmZnUmZCaEdBRmRrdUo1TW9nRlJtVVJmSGNhSnR5bVFSdGpDWndE?=
 =?utf-8?B?T3NXV2tURTJyUXErQW9peDZPclpId3RhYXluald2MTNYaVNabTFVRXREYURS?=
 =?utf-8?B?ck5EV2o3NDZVWjgzeFYrWTJvUnQrajl6TjBkT2hjbTFwNERyeUZNQzd3aWU3?=
 =?utf-8?B?SzcyN3FIYXppOURxNDkyTG5tNDRsKzUzNmNWSFBPUWpRNUsxSTJZcmlUejdn?=
 =?utf-8?B?N2YvYWJOQlhrTTlXeXY0dkpDOXN2eUlDcFErOVd1ZGorWENJNjE4anlKWGVm?=
 =?utf-8?B?RGIzeE1kSWN1dGZWY2hLcmNlWkNudDRKSEduREtkRXJYRUZhaGdoMWZndFhQ?=
 =?utf-8?B?cmk2S1Vyb0JvUzFvNXpKZWcvZ0lzMFBYUGt0dVNDb0hTY09MK0N1RGRzNGJU?=
 =?utf-8?B?T09WcW9YeDE0eDJoSUZwV1o3LzR4OEdCWllBSCtOQXdSMENFNUw2MzZzcFFH?=
 =?utf-8?B?VHdnVDgrRjhnV2NHMUxseVkrZHhHNGd2cnE0YlJFdmFtNHdVVlUrYmNOeldY?=
 =?utf-8?B?MTN0d1ZaL0hESEpNMmxLVHQ0UU53L091NG9QcEVFN3RoVDN2MUc2RzBQNmdH?=
 =?utf-8?B?L09rU2VQUnROaDdOYUE0aXovL055aHZTbTdDVVZFdlJUYXduNzBBNS9wVHk4?=
 =?utf-8?B?SktqVEtiTm5ndjJ2dktibGhMOUw1ZFdQVlBQK2d3THp6NUN2b1hkWVlCSnlV?=
 =?utf-8?B?MWl2ZGRiNHNmRGo3SkNrNjQ4bENKYURvUSt0U2JOUml0VlAxdzJoc1I2Rjdu?=
 =?utf-8?B?S3Q1aXNKRVYwdlBxZU9Dc2ZEOGlNR0NnNGFPcjZlT0lnQU9DNnltVU96d2NY?=
 =?utf-8?B?RnB5M0N4ZVFoMkFudS9lc3VMNUYzOGZXRTBZUHpVYWFhQ25hOUU5MmFoL0pP?=
 =?utf-8?B?bC9JOEZ3dW1yd2t0VlVLZGJzZG40WXVRSWl0VC9lRTc0RjZNdU5XTUtQYnJU?=
 =?utf-8?B?UWRiU3hVNWJmVnZsMHFDYkNpZzErckxlMHdxWGtTVytQNWtjK2dnb1ZYWlZx?=
 =?utf-8?B?VXZzN1dyNEFJQWtOK0JFUW0vdHBVUE5WbXl6MkNnWVVSTlV1OHBoZWdQWWtB?=
 =?utf-8?B?V1o5anFIMjh0S2tiRW5oRHZCb3o1OHRJYUI5UDFtdFkxZ1RGVkVFVUNSWVcv?=
 =?utf-8?B?MFdYMEhadkhUOGxzbDIzZEV1dUJSZVN4OGZYNkoxZ1pZTS91N0dKMHBOd1Fp?=
 =?utf-8?B?QWJnVzJ0TFhON1BaNStvSE9VcGxtVzg5L09pdnZ6NzNmUnYyWXgrYTNjTTBh?=
 =?utf-8?B?ODVLd3BLZDlZRFllYW1yY21MSUJLbjREZ3V6V1BDTVkySUd2TCtJcUVyVmJo?=
 =?utf-8?B?Sy9qb1ZHaGhRMDA4ejdyNzdVOVN3RTJpLy81T204NXUxZG44VGFGRkM5bnlu?=
 =?utf-8?B?VlMvUW5ObUlURWdtdkNHR2JBeGw3RDB3aGNlVHBzVFpBempQOW1mVGJqNHpq?=
 =?utf-8?B?VmV3djdTTjNIbFlDR0k1VjRPYmVLOGVjREZQcXNXT290QWNGRkM1RWh2a0hM?=
 =?utf-8?B?cWQxTDBjRFgxU0ZyUGNLSVUzMXkxbDNPL2swMGEyd1FJd3JzQUVXbU5qZStl?=
 =?utf-8?B?RHBqS2grSENpcDllejN4SmkxM3NubmtkQUI1L04xcVllSnBCeFRtVGZPaGli?=
 =?utf-8?B?UCtXbDdhakM2Qm5VZjFHbzJhVXFRNWNIdkVEYWExc0Z4bWdlYWMyYWFaUnpM?=
 =?utf-8?B?M2dCKys3YmdYblBaMlZ4L0pJK3VEUzdITW9hcVh5Y3k5c2hJTnZIcU5qRitv?=
 =?utf-8?B?dmQrem5kQ3Q3QnV3SEhpcjhHYlc3SzBYQmwyMUNFYTFGYThsWVVZNXdnZnlk?=
 =?utf-8?B?SmVqeGZoR0h5K2piWUhveUlsL08vVFRGeldoOUsvcnZmNVlVbkg4Rk0ranFE?=
 =?utf-8?B?bldjSFlyc09RWjVhUUlNKzZ4c1dBZXFSOGFqdVhidmIrRkF1RkdxdVhuOHlj?=
 =?utf-8?B?WUVtZmpFR2xMRVNrL0k0Q2N1NzFVakFkSDJTM0gzUjJFRVdockJsOEJSVzVQ?=
 =?utf-8?B?LzhEYUI2NlY0L3o0dlpDU1ljMmpjMHNBdlZZUTcxdWN0WXgxQTNOcGNDdGRs?=
 =?utf-8?Q?J7CJjmN7upSpU8R4VXR/Zkk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1C9F244610940D42B4AC7BF9D6B153E5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5373.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec034e3a-7ab9-4736-a346-08ddff93c2a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2025 20:07:04.6990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CqhyMN7QMsCn2UgDKv4EPDvvhjDkrVGLNYQp3Db5xhHeLsEmWjYFzj7Kb0S8d29MGGvG2ER4iwQj0R/luE366urcZCqrAw9OzwPjGePDfJE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7798
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

T24gRnJpLCAyMDI1LTA5LTI2IGF0IDExOjQ1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAyNiBTZXAgMjAyNSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gd3JvdGU6DQo+ID4gT24gVGh1LCBTZXAgMjUsIDIwMjUgYXQgMDQ6NTE6
NTNQTSAtMDcwMCwgS2hhbGVkIEFsbWFoYWxsYXd5IHdyb3RlOg0KPiA+ID4gRXhwb3NlIGtleSBU
eXBlLUMgcG9ydCBkYXRhIGluIGk5MTVfZGlzcGxheV9pbmZvIHRvIG1ha2UgaXQNCj4gPiA+IGVh
c2llciB0bw0KPiA+ID4gdW5kZXJzdGFuZCB0aGUgcG9ydCBjb25maWd1cmF0aW9uIGFuZCBhY3Rp
dmUgbW9kZSwgZXNwZWNpYWxseQ0KPiA+ID4gd2hldGhlcg0KPiA+ID4gdGhlIGxpbmsgaXMgaW4g
RFAtQWx0IG9yIFRCVC1BbHQsIHdpdGhvdXQgaGF2aW5nIHRvIHNjYW4ga2VybmVsDQo+ID4gPiBs
b2dzLg0KPiA+ID4gDQo+ID4gPiBUZXN0ZWQgaW4gRFAtQWx0LCBUQlQtQWx0LCBTU1QsIGFuZCBN
U1QuDQo+ID4gPiANCj4gPiA+IEV4cGVjdGVkIG91dHB1dDoNCj4gPiA+IA0KPiA+ID4gW0NPTk5F
Q1RPUjoyOTA6RFAtMl06IHN0YXR1czogY29ubmVjdGVkDQo+ID4gPiAJVEMgUG9ydDogRS9UQyMy
IG1vZGU6IHRidC1hbHQgcGluIGFzc2lnbm1lbnQ6IC0gbWF4DQo+ID4gPiBsYW5lczogNA0KPiA+
ID4gCXBoeXNpY2FsIGRpbWVuc2lvbnM6IDYwMHgzNDBtbQ0KPiA+ID4gLi4uDQo+ID4gPiBbQ09O
TkVDVE9SOjI2MzpEUC01XTogc3RhdHVzOiBjb25uZWN0ZWQNCj4gPiA+IAlUQyBQb3J0OiBHL1RD
IzQgbW9kZTogZHAtYWx0IHBpbiBhc3NpZ25tZW50OiBDIG1heA0KPiA+ID4gbGFuZXM6IDQNCj4g
PiA+IAlwaHlzaWNhbCBkaW1lbnNpb25zOiA2MTB4MzUwbW0NCj4gPiA+IA0KPiA+ID4gQ2M6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gPiA+IENjOiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogS2hhbGVkIEFsbWFoYWxs
YXd5IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMgfMKgIDQg
KysrKw0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEwDQo+ID4gPiArKysrKysrKysrDQo+ID4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHzCoCAzICsrKw0KPiA+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMo
KykNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYw0KPiA+ID4gaW5kZXggMTBkZGRlYzM3OTZm
Li42Njg3ZmMxOGUxZjUgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+ID4gPiBAQCAtNDcsNiAr
NDcsNyBAQA0KPiA+ID4gwqAjaW5jbHVkZSAiaW50ZWxfcHNyX3JlZ3MuaCINCj4gPiA+IMKgI2lu
Y2x1ZGUgImludGVsX3Zkc2MuaCINCj4gPiA+IMKgI2luY2x1ZGUgImludGVsX3dtLmgiDQo+ID4g
PiArI2luY2x1ZGUgImludGVsX3RjLmgiDQo+ID4gPiDCoA0KPiA+ID4gwqBzdGF0aWMgc3RydWN0
IGludGVsX2Rpc3BsYXkgKm5vZGVfdG9faW50ZWxfZGlzcGxheShzdHJ1Y3QNCj4gPiA+IGRybV9p
bmZvX25vZGUgKm5vZGUpDQo+ID4gPiDCoHsNCj4gPiA+IEBAIC0yNTQsNiArMjU1LDkgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfY29ubmVjdG9yX2luZm8oc3RydWN0DQo+ID4gPiBzZXFfZmlsZSAqbSwN
Cj4gPiA+IMKgCWlmIChjb25uZWN0b3ItPnN0YXR1cyA9PSBjb25uZWN0b3Jfc3RhdHVzX2Rpc2Nv
bm5lY3RlZCkNCj4gPiA+IMKgCQlyZXR1cm47DQo+ID4gPiDCoA0KPiA+ID4gKwlpZg0KPiA+ID4g
KGludGVsX2VuY29kZXJfaXNfdGMoaW50ZWxfYXR0YWNoZWRfZW5jb2RlcihpbnRlbF9jb25uZWN0
b3IpKSkNCj4gPiA+ICsJCWludGVsX3RjX2luZm8obSwNCj4gPiA+IGludGVsX2F0dGFjaGVkX2Rp
Z19wb3J0KGludGVsX2Nvbm5lY3RvcikpOw0KPiA+ID4gKw0KPiA+ID4gwqAJc2VxX3ByaW50Ziht
LCAiXHRwaHlzaWNhbCBkaW1lbnNpb25zOiAlZHglZG1tXG4iLA0KPiA+ID4gwqAJCcKgwqAgY29u
bmVjdG9yLT5kaXNwbGF5X2luZm8ud2lkdGhfbW0sDQo+ID4gPiDCoAkJwqDCoCBjb25uZWN0b3It
PmRpc3BsYXlfaW5mby5oZWlnaHRfbW0pOw0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiA+IGluZGV4IGM0YTU2MDFjNTEwNy4uNGNkN2NjYWMy
OGI3IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Rj
LmMNCj4gPiA+IEBAIC0xNzAzLDYgKzE3MDMsMTYgQEAgdm9pZCBpbnRlbF90Y19wb3J0X3Nhbml0
aXplX21vZGUoc3RydWN0DQo+ID4gPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiA+
ID4gwqAJbXV0ZXhfdW5sb2NrKCZ0Yy0+bG9jayk7DQo+ID4gPiDCoH0NCj4gPiA+IMKgDQo+ID4g
PiArdm9pZCBpbnRlbF90Y19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSzCoCBzdHJ1Y3QNCj4gPiA+
IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ID4gDQo+ID4gUGxlYXNlIHVzZSBkcm1f
cHJpbnRlciBpbnN0ZWFkIG9mIHNlcV9maWxlIHNvIHRoaXMgY2FuIGJlIHJldXNlZA0KPiA+IGVs
c2V3aGVyZS4NCj4gDQo+IFllYWguDQoNClN1cmUgd2lsbCBkbyB0aGF0IGFuZCBzZW5kIFYyDQo+
IA0KPiBJJ20gYWxzbyByZWFsbHkgbm90IGEgYmlnIGZhbiBvZiB0aHJvd2luZyBldmVyeXRoaW5n
IGludG8NCj4gaTkxNV9kaXNwbGF5X2luZm8uIFRoZSBnZW5lcmFsIGlkZWEgb2YgZGVidWdmcyBp
cyB0byBoYXZlIGluZGl2aWR1YWwNCj4gZmlsZXMgZm9yIGluZGl2aWR1YWwgdGhpbmdzLCBub3Qg
dG8gaGF2ZSBvbmUgbWFzc2l2ZSB0aGluZyB0aGF0DQo+IGluY2x1ZGVzDQo+IGV2ZXJ5dGhpbmcs
IGluIGEgbG9vcCBhY3Jvc3MgY3J0Y3MgYW5kIGNvbm5lY3RvcnMuDQo+IA0KPiBJIGdldCB0aGF0
IG9uZSBmaWxlIGlzIGEgY29udmVuaWVuY2UsIGJ1dCBhdCBzb21lIHBvaW50IHdlIGhhdmUgdG8N
Cj4gc2F5DQo+IHRvbyBtdWNoIGlzIGp1c3QgdG9vIG11Y2guIEkgdGhpbmsgc28gZmFyIHdlJ3Zl
IGp1c3QgYWRkZWQgZXZlcnl0aGluZw0KPiBpbmRpc2NyaW1pbmF0ZWx5Lg0KPiANCj4gSSB0aGlu
ayBpdCdzIGEgYml0IHdpbGQgdGhhdCB3ZSBkb24ndCBldmVuIGhhdmUgcGVyIGNydGMgZGVidWdm
cyBmaWxlDQo+IGZvciBpbnRlbF9jcnRjX2luZm8sIG9yIHBlciBjb25uZWN0b3IgZmlsZSBmb3Ig
aW50ZWxfY29ubmVjdG9yX2luZm8sDQo+IG9yDQo+IG1vc3Qgb2YgdGhlIGluZGl2aWR1YWwgcGFy
dHMgaW4gdGhlbS4NCj4gDQo+IEFueXdheSwgaXQncyBhIGJpdCBkaWZmaWN1bHQgdG8gY2xhaW0g
dGhpcyBpcyB0aGUgc3RyYXcgdGhhdCBicmVha3MNCj4gdGhlDQo+IGNhbWVsJ3MgYmFjaywgYnV0
IEkgdGhpbmsgYXQgc29tZSBwb2ludCB0aGlzIHdob2xlIHRoaW5nIG5lZWRzIGFuDQo+IG92ZXJo
YXVsLg0KPiANClRoYXQgd291bGQgYmUgaGlnaGx5IGJlbmVmaWNpYWwgdG8gaGF2ZSBtb3JlIGZv
Y3VzZWQgZGVidWdmcywNCnBhcnRpY3VsYXJseSBmb3IgVENTUyBhbmQgVEJULiBUaGlzIHBhdGNo
IGRyaXZlbiBieSB0aGUgbmVlZCB0bw0KdHJvdWJsZXNob290IFRCVC1yZWxhdGVkIGlzc3VlcyB3
aXRob3V0IHNvbGVseSBkZXBlbmRpbmcgb24gdGhlDQpmb2xsb3dpbmcgdG9vbDogDQpodHRwczov
L2dpdGh1Yi5jb20vaW50ZWwvdGJ0b29scw0KDQpUaGFuayBZb3UgZm9yIHlvdXIgcmV2aWV3cy4g
DQoNCn5LaGFsZWQNCg0KPiANCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+ID4gDQo+ID4g
PiArew0KPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMgPSB0b190Y19wb3J0KGRpZ19w
b3J0KTsNCj4gPiA+ICsNCj4gPiA+ICsJc2VxX3ByaW50ZihtLCAiXHRUQyBQb3J0OiAlcyBtb2Rl
OiAlcyBwaW4gYXNzaWdubWVudDogJWMNCj4gPiA+IG1heCBsYW5lczogJWRcbiIsIHRjLT5wb3J0
X25hbWUsDQo+ID4gPiArCQnCoMKgIHRjX3BvcnRfbW9kZV9uYW1lKHRjLT5tb2RlKSwNCj4gPiA+
ICsJCcKgwqAgcGluX2Fzc2lnbm1lbnRfbmFtZSh0Yy0+cGluX2Fzc2lnbm1lbnQpLA0KPiA+ID4g
KwkJwqDCoCB0Yy0+bWF4X2xhbmVfY291bnQpOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+IMKg
LyoNCj4gPiA+IMKgICogVGhlIHR5cGUtQyBwb3J0cyBhcmUgZGlmZmVyZW50IGJlY2F1c2UgZXZl
biB3aGVuIHRoZXkgYXJlDQo+ID4gPiBjb25uZWN0ZWQsIHRoZXkgbWF5DQo+ID4gPiDCoCAqIG5v
dCBiZSBhdmFpbGFibGUvdXNhYmxlIGJ5IHRoZSBncmFwaGljcyBkcml2ZXI6IHNlZSB0aGUNCj4g
PiA+IGNvbW1lbnQgb24NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3RjLmgNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90Yy5oDQo+ID4gPiBpbmRleCBmZmY4Yjk2ZTQ5NzIuLjNlOTgzZDFjYzBiOCAxMDA2NDQN
Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaA0KPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oDQo+ID4gPiBA
QCAtNyw2ICs3LDcgQEANCj4gPiA+IMKgI2RlZmluZSBfX0lOVEVMX1RDX0hfXw0KPiA+ID4gwqAN
Cj4gPiA+IMKgI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+DQo+ID4gPiArI2luY2x1ZGUgPGxpbnV4
L3NlcV9maWxlLmg+DQo+ID4gPiDCoA0KPiA+ID4gwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsN
Cj4gPiA+IMKgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydDsNCj4gPiA+IEBAIC0xMTMsNCArMTE0
LDYgQEAgdm9pZCBpbnRlbF90Y19wb3J0X2NsZWFudXAoc3RydWN0DQo+ID4gPiBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0KTsNCj4gPiA+IMKgDQo+ID4gPiDCoGJvb2wgaW50ZWxfdGNfY29s
ZF9yZXF1aXJlc19hdXhfcHcoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiA+ID4gKmRpZ19w
b3J0KTsNCj4gPiA+IMKgDQo+ID4gPiArdm9pZCBpbnRlbF90Y19pbmZvKHN0cnVjdCBzZXFfZmls
ZSAqbSzCoCBzdHJ1Y3QNCj4gPiA+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOw0KPiA+
ID4gKw0KPiA+ID4gwqAjZW5kaWYgLyogX19JTlRFTF9UQ19IX18gKi8NCj4gPiA+IC0tIA0KPiA+
ID4gMi40My4wDQo+IA0KDQo=
