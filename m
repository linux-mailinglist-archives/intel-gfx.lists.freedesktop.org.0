Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FE6A32545
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 12:49:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93C1E10E86B;
	Wed, 12 Feb 2025 11:49:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nwFcpfV6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B292E10E862;
 Wed, 12 Feb 2025 11:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739360951; x=1770896951;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AqyMmi1vtZli3Lzj0kgmmRCcqEXFuTD9qCPj4P/W/UU=;
 b=nwFcpfV6jUvgDuXaBfDyN1uyBHXSjr9v0CVHvo9Qgtwj8Tgq5vmDW9Yx
 mXh5YoZzeTGR/RS/aDE6d6j2QpYbxQrvNanmHUPNhyBDJFVDKIpmnGiIf
 jCEoSpmQp/VkEpp/U32nH7hY8OVqA5V0Wu64dOm0u/OOdm/NDdNoKc0Ta
 CvIrNYHiDk/QnoK66IHja3sb5IIveBMHqD0ydv3Wv1le6BvD6D7GLsAm6
 udX05r2xiu/56B4VnEtFKm/0PxVX1KdPpZlq7LXdLH3rGz8Nahqoe7W91
 LFUrebEzlyJS4blul+S9BhSmVM7AlzkV/nWwXzDWcPXS/B1ZrM/Qe48sU A==;
X-CSE-ConnectionGUID: 1tGN4anWQf2v2n8x++g07g==
X-CSE-MsgGUID: vIrhLsmJRGKqODJbrbWOQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39897596"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="39897596"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 03:49:10 -0800
X-CSE-ConnectionGUID: jXtMD9KhSuunQ/ORZzkjPg==
X-CSE-MsgGUID: rpkimnnCRwaUvIlVs+Ailw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116905441"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 03:49:10 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 03:49:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 03:49:09 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 03:49:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IDwI8Sg731y6eKitKZAPiPetWYM9dRgifpcJoQi/TGkDlOr4TEITyz48Lpq+Dl2AX/p/J38O5qNrrQ2dAViZYpk3wwY7ZHCWufXT7FhKZQMeqRguhtM2rmgH1XK1Y1sdpXWxZULTEISznCNqJD1KAOGBsj0T1ViF0mi7XA9RNow1lCfp6HbsRAmi+rjxVelsZ8OADnbwuXAQpUd/bBpKLXrSz3S5nwHsMls3cyfkRJqi8ETC5eQC66PWyNVXsYgour/g1U2V9f7gJIuhjQAndY46phSDgaVJFr3qo/JFaTOXBIkkgXrkgpQdR25SSsM5CK9hWXJyyjW9aTVo5GbBMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AqyMmi1vtZli3Lzj0kgmmRCcqEXFuTD9qCPj4P/W/UU=;
 b=kTlvPyV3QvU7PyvjKqeiudQbzPF+Y57zjnN+DUsoOvHAEnWX+u24m8AptXzEn+vJxtYgYjoLQ8vKZaW7Cp3I+/1SUei0M4yWqC2/Bw9hjOn1l8dQo7BeO4Q3GNEolnAtKucv0qABaZabODZ42SE2qebXz//whCW+zG8Bpy3JWiMeEyPx5Dz33UwH44iD9iHQ2lQYRPWocKcR47IXJLr56rTBPLIHwv7yAOr8YpsYVhqxs5BjSfvIfdnPldqJVLPz+ZhAUxEXJeGJNEnAdOaJ1fO0e0UXDnwKftu1UJZEzBhzvBjiC6v4F06uxz2uWJSAcTgkicvyxHQDPtHMcYtMrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB7771.namprd11.prod.outlook.com (2603:10b6:610:125::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.15; Wed, 12 Feb
 2025 11:48:25 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 11:48:24 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 07/17] drm/i915/ddi: Simplify waiting for a port to idle
 via DDI_BUF_CTL
Thread-Topic: [PATCH 07/17] drm/i915/ddi: Simplify waiting for a port to idle
 via DDI_BUF_CTL
Thread-Index: AQHbcoiwLvhSwa8pz06BuFbSeIaAX7M4r8IAgAADi4CAAAQJAIAK63og
Date: Wed, 12 Feb 2025 11:48:24 +0000
Message-ID: <MW4PR11MB7054DCD78E79557F7006EBCEEFFC2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-8-imre.deak@intel.com> <87o6zg4lix.fsf@intel.com>
 <Z6Nd_4pAWl7KGAD2@ideak-desk.fi.intel.com> <87a5b04k9p.fsf@intel.com>
In-Reply-To: <87a5b04k9p.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB7771:EE_
x-ms-office365-filtering-correlation-id: 816fdc02-0352-428b-b4b7-08dd4b5b2870
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VDhPUjc2cjI5ZDJHeWFkZDZ3dG1lUWVCL1UwMXIrZFFENUh4bGZtMWtISWdj?=
 =?utf-8?B?YTQrdUxjREJYQy84clZUV1daSDhuOFhJWGpkeG1BYStUN0FlVkw3THBJSWQz?=
 =?utf-8?B?akJ2cHdSSkVKVEtOQUNSQjNIbmgyc3lJS0hSNStXR252Vlc2aU9OMUVRYXAx?=
 =?utf-8?B?MFlzUS9KSDdZOXRIaTRLZEt0N3p4WnBFVDB0VWtqckJueFR1WVdENmJaejdh?=
 =?utf-8?B?OUdPQ2pCT1RpQ1lOV1o1WVkwZ2txemlKUmQyZDBkTXNIVWZkbS9DZGFCSmYv?=
 =?utf-8?B?TkRzYTd5M3B6REFTVE4wMFVnQWJQTXVNd1ZmTXRQaXVhU1BLUVNxQ1ZPRlBi?=
 =?utf-8?B?R1FldGYyaDVPczRtbGkvQmJBaW84Q3U0RzVVaFFPYVd6WEovRkFoc3FVL3J4?=
 =?utf-8?B?ZnYxYllrL0U1UXduNEVVZU5wUFFkN3BYSnY4eUw0TjgveGtjcWlaNXZJeE1O?=
 =?utf-8?B?dEJsclV4di9aTzV2WEMrR1FJTlFvem1RcVRCazhIWWZpMWFRUHVvZWxJaTgw?=
 =?utf-8?B?Q0pxTHhaTjRNZlJrVlhNZzhpQmw4dUxHUXNQWFBLcTZDaDcrcmhGWVFJN3c3?=
 =?utf-8?B?eFFLTkFpK2ZYdTk5a1RoaHNaV1pIUi80MnVZTit4NHcvb3BsWVFSdUZxazNv?=
 =?utf-8?B?bndkM1ZhWFVZclA5ZFhGSlE4YnJ2aWVkWVg4elBJbHo3MW1JOXFadSs2SUp5?=
 =?utf-8?B?dmtBYWNBSThhMCtNT1lYQWx5NVBjYmhrS05LOE93eXAwT2ZGU1lRbU9KNWpw?=
 =?utf-8?B?aGhMSitCTDl4YUI3VjJFUzBNZGlpZ3FtcEpDcTZKaHlSRG1EWTkwTnEreGhG?=
 =?utf-8?B?Z1NUVTBpRk5wSEsrQ2NmVzFUdzZUZVRWc1BtM0V3RHpUUTluaWNvQ1ZmcFJV?=
 =?utf-8?B?QllQODJQK0s3RFhtaU9LRjhnMWFjbFNiNnZNL2poYnQ1K3YyYk5TeXFqR3or?=
 =?utf-8?B?VlVoVDNhajlFQ0NvMzJ2VkViT0NEV3phNFVjYndPWTkydkx6SUhxL1NrMGFS?=
 =?utf-8?B?UDl2eDVhd3dGYW9DbzJoQW1CNzJEQVJBTEZ2NEZXditpbXN5SDZ3Y1BoWnMv?=
 =?utf-8?B?TWNQQmdxMllpNkMyS2dVQlBZbE1ML2IzWjVmWVpSQWdLTVN3TlVUYTdOYlQx?=
 =?utf-8?B?bzJtS3dhNk9Ld2t5bE1HUi9GWXl2bkRHWG92eWU2SVIwY3JQVEhjaUhQcWxX?=
 =?utf-8?B?dmNEVmZsTW03UWpnS3I3SEM0STAzUjZ6aDlPaXZwMUFaMWFFdFlyY3Z0R1ho?=
 =?utf-8?B?S003UnpaZUJ4T1BCbUM5WjlSaFBPbU5BSCsvaDVXUUpaUHRHeFEzZTdYTmd5?=
 =?utf-8?B?aGcwYmdHQndENEpOb3VYT3poSzZIYm1JUHNZYlNHRUZGWXAvaUErMnZqSDY2?=
 =?utf-8?B?Q096TmpOTTBVbXNiT3hhb0ljcFVGVW1PL1lRSXpoRllXeCtPdU9zOVBET0lZ?=
 =?utf-8?B?a0R3K2t5RWM0SVE0dVVYMGQxaVNiUXZCNUU3VnhYN1lBTDZMbWxHcjRQTmRN?=
 =?utf-8?B?S1lsdTJwQStTZGpZYnR5ckZJbWY4M1RSMExsSWdST2lCMk8zZ0NWemhIaE16?=
 =?utf-8?B?d0s2N3ViMC9lWDhUZHZXVnNGZkNwYjdrUmFGL1hsQ1VUOXVQR24rdjFnZ01I?=
 =?utf-8?B?QmhNQ1g3RXN4WWpXU3ZIdTRYMlBOSWpML0hjUXBaT3A1UTlwUWpHeDAwV1V2?=
 =?utf-8?B?dXRZU25VRG1hem80UURzOW11M3ZQZjEzQ3hnM2RZYUw2Tkc5cFhUZlNvUkJ2?=
 =?utf-8?B?NHYxMjVsQUVWSkJRZWxEZHFVZWlSZ21OYWdyVUxGckhsR1Y3QVE4b3BTOVZ6?=
 =?utf-8?B?QVJvaG5jYUVtb3BCSFVFTEpXTExvNkZkb0hFUHJ3RmJqeDI5QVFQTFh6OGFU?=
 =?utf-8?B?UWVuSVB5WWJvWkZSclB6Zy9yWEdLVHo3QTFFa2IwbzBnOC96SjZXRWg4U1l6?=
 =?utf-8?Q?Vs/Pmc5KxooY/yLanzy4qQ0Maq5xlNhv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?alMrb0RPZCtCOHFDcm1tQ2hoM3VrTnh1K0pmcGRDZUYwNVc5dHVDRzFpeVNs?=
 =?utf-8?B?aWNKK3hjM0NXL3Y3bzNDTVFjR2FjbURVeGhneVhON0VITmVKYlUzR2o0eHh0?=
 =?utf-8?B?V1pxYzZZUU5DTXU1dUhrM09TcFFWN3JaeXErTkIzY3B5Q0Jub1pjMkkySXM4?=
 =?utf-8?B?dVd0N1RpcjN4dEdnZW13V0xFZmdkQlNxblY2bEIxWGw0bFIySjFibTFzdGRp?=
 =?utf-8?B?MGplcDF0aUl6MFplWkNKaVBLczJHaUc1M3JOZmM0enFUVUphNWpPdEw2VW9O?=
 =?utf-8?B?Uys3T0NseEU0TW4zN21PNXdXZi8vVlVneGRTSVEwSnZEV2sxVFZUNXZiRkYy?=
 =?utf-8?B?RitjcmVuYzV5ZTl6U1JZYm9pU293NFdYOEMrdFV5eHhiZ3ZnMzJqK1hyZlMx?=
 =?utf-8?B?dnVVZXgrK3Ridlp5c2xpTEJ2V013WjB2SHN2UW5Ralo1VjFZVnY4Q3daRVVJ?=
 =?utf-8?B?bm5vSFcwMllEVm0yN29iSVZhRkl1ZVl0L3UvMEh1WVhFTzRHWTk4OG9pYlNK?=
 =?utf-8?B?WjVURTkvRUM1WENyM2lpdHpGQWpSdXlRODhscVFRMWlaaWNOTUdJL3lwZitp?=
 =?utf-8?B?ZEdtWWNYRjYxZFRHVXc5T0REZFY3NlNBTGtUY1BFY2JhTXdPTFVkQklKUEY5?=
 =?utf-8?B?eG1VT1lYTlJpdE96OGxuZ2krR3NhdFRjZDRvWnZ1R051enIyRzV3K2JmbUFV?=
 =?utf-8?B?SzFpSHlqN2pvU1lUYld4YW51aG1xa1QvTzEwMk9nbFo1WHZGaVVtNXpuRDBM?=
 =?utf-8?B?V1R0dUllS2RFVTRTa3lRamMxU08rKzB5MUwrREFpUkgzY2M4QkdOL2JjaHRh?=
 =?utf-8?B?cU5vdzBBdC85dFJubUxtY2hWVk1SclV4VFB2TGgxODZOSmNjbU5iQzhlTU4v?=
 =?utf-8?B?U3pLVG1WbEtuakQyTUxhMkoyNllPemhQclpGU0lkUmU2NWxpbVdWUnBDNUVi?=
 =?utf-8?B?eERPNUlibFlteXpUWnVpeW1PMUlYcE1FcjVqdVA0VHZsZDZkdStTdVpJbW9I?=
 =?utf-8?B?Umc1SWpmSERqS2ZNNTU0YVM5ZTJVdEVDV0wzTkRkQmVBUXJ4WGVST2M2UmZ5?=
 =?utf-8?B?RmNOS1krTTB2VEJDVWgxNVd1RW5lODJONEsyZ1pSUlRYMmdPbW5na3h0aDNw?=
 =?utf-8?B?bE4zYUMvVmhMa24yTWtCb1k2UUIvM29JU0RKa3N1VlNDNUIxZzhOTTE1TGs1?=
 =?utf-8?B?eFc3eTdRZnN3blNzNThETGRSSVlaQzFESSs5TlNtcnBZM01iZDRKUEFTSHg0?=
 =?utf-8?B?R1BjNHVYYzRzZ2Zna3F1REozZ0JIWVl4b1hSQkx4OGdhaHJaZXN6SERZQ0tR?=
 =?utf-8?B?QkFDUlRQeFJuZU9EclNjQ1pFZU5BeTZiWGFyRzU0Y28wNVQvUHkxVnYyWnJL?=
 =?utf-8?B?Nnh5ZUFIQnlXbE5xOGR2Z2JINlhaaWZIdUVJcld0azJ2bGY3QldPT2djNWtz?=
 =?utf-8?B?R2ovZDIzQytGeFh6SjczV1NJZ0hFbXlkVmdKVXVZMUdhR1BzenJ1RmszZHRX?=
 =?utf-8?B?bnlEWTEra1NibjBRQmRFNnhHZVBoTDlXNUl0cmNJV0kyU1F3M05sMHljSkEv?=
 =?utf-8?B?VkphOHVueWhPeXkzdUo1MFkxaGMvTk1QcXliVHZ3UXZYbkFsazdnUmZkVE9G?=
 =?utf-8?B?Z0I5WmxaTEtZUFR2eFFVTlQxQzFmUTJsdm1iVTR3OHRMa2t5WDF0Z1I3YWpP?=
 =?utf-8?B?YkJVTy83OHJzKzNzaFBYTURPSDZXa0tSQ3RKcEpFbWsrVEo3U3ZXdzJDbSt6?=
 =?utf-8?B?VDdjNUNJZ1AzMFdOc280WFZXTWNkeXlXeklnaTJWS2RFejBad3lSazM5REZB?=
 =?utf-8?B?RUpibXQ2anJUeEpNUHNmUFFzdkFYdm16dzdwYTdRNkFqT3FsbHRGNmFJajNY?=
 =?utf-8?B?bkZ0Si9Eei9EZm95WEh6anRrWlpDNkU4VHhDZ3JNSy9HeWxKNXYrVm1aYkJV?=
 =?utf-8?B?aUhhSmJXR2k4TnBjY2EzQ2RMaDRGbVByRCt4NURWZXJ2YWh0a2swUEZpYVNi?=
 =?utf-8?B?N1JzZHh6cXh4TEk3b3RsUFJ3N0svSU95aUVpZWNqV2FHQmNMWi9NazJKT1VG?=
 =?utf-8?B?ZVdjYXUyQ0NSTXpERnFEZ093bUk2Tit2a3BObUlDMDAzN21GMEVsVjFGdkZT?=
 =?utf-8?Q?LPuUbw0b1Rgly1EqYx1ltcf0G?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 816fdc02-0352-428b-b4b7-08dd4b5b2870
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 11:48:24.8683 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4IZ/EiyaS+TAemldEt1tFpoptneEccxZpeukOkfUHaybBhLXZnlRyNHyQbSN+1bwI1U/X1HrmYFSsxmnoJvcpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7771
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW5pIE5pa3VsYQ0K
PiBTZW50OiBXZWRuZXNkYXksIDUgRmVicnVhcnkgMjAyNSAxNS4wMg0KPiBUbzogRGVhaywgSW1y
ZSA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BB
VENIIDA3LzE3XSBkcm0vaTkxNS9kZGk6IFNpbXBsaWZ5IHdhaXRpbmcgZm9yIGEgcG9ydCB0byBp
ZGxlIHZpYQ0KPiBERElfQlVGX0NUTA0KPiANCj4gT24gV2VkLCAwNSBGZWIgMjAyNSwgSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBPbiBXZWQsIEZlYiAwNSwgMjAy
NSBhdCAwMjozNToxOFBNICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4gPj4gT24gV2VkLCAy
OSBKYW4gMjAyNSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPiB3cm90ZToNCj4gPj4g
PiBXaGVuIHdhaXRpbmcgZm9yIGEgcG9ydCB0byBpZGxlLCB0aGVyZSBpcyBubyBwb2ludCBpbg0K
PiA+PiA+IGRpc3Rpbmd1aXNoaW5nIHRoZSBwbGF0Zm9ybSBzcGVjaWZpYyB0aW1lb3V0cywgaW5z
dGVhZCBvZiBqdXN0IHVzaW5nIHRoZQ0KPiBtYXhpbXVtIHRpbWVvdXQuDQo+ID4+DQo+ID4+IFdo
eT8NCj4gPj4NCj4gPj4gQWxsIG9mIHRoaXMgc291bmRzIGtpbmQgb2YgcmVhc29uYWJsZSwgYnV0
IHdlJ2xsIG5lZWQgYSBiZXR0ZXINCj4gPj4gcmF0aW9uYWxlIHRoYW4gInRoZXJlIGlzIG5vIHBv
aW50Ii4NCj4gPg0KPiA+IFRoZSByYXRpb25hbCBpcyB0aGF0IHRoZXJlIGlzIG5vIHBvaW50IGlu
IHRoZSBjb21wbGV4aXR5IG9mIHNwZWNpZnlpbmcNCj4gPiBhbiBleGFjdCB0aW1lb3V0IGFuZCBm
b3IgdGhhdCB0aGUgc3VpdGFibGUgd2FpdCBBUEkuIFRoZSBzZXF1ZW5jZSBpbg0KPiA+IHBhcnRp
Y3VsYXIgaXMgbm90IHBlcmZvcm1hbmNlIGNyaXRpY2FsIGF0IGFsbCBlaXRoZXIgYW5kIGR1ZSB0
bw0KPiA+IHNjaGVkdWxpbmcgaXQncyBub3QgZ3VhcmFudGVlZCBhbnlob3cgaG93IGxvbmcgdGhl
IHdhaXQgd2lsbCBsYXN0IGF0DQo+ID4gdGhlIGdpdmVuIHRpbWVzY2FsZS4gSW4gdGhlIHVzdWFs
IGNhc2Ugd2hlcmUgdGhlIHdhaXQgc3VjY2VlZHMgdGhlDQo+ID4gYWN0dWFsIHRpbWUgd2FpdGVk
IGRvZXMgbm90IGNoYW5nZSB3aXRoIHRoZSBpbmNyZWFzZWQgdGltZW91dC4NCj4gDQo+IEZhaXIu
IEp1c3QgbmVlZHMgdG8gYmUgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLiA7KQ0KPiANCj4gQlIsDQo+
IEphbmkuDQo+IA0KPiA+DQo+ID4+ID4gU2ltcGxpZnkgdGhpbmdzIGFjY29yZGluZ2x5LCBkZXNj
cmliaW5nIHRoZSBCc3BlYyBwbGF0Zm9ybSBzcGVjaWZpYw0KPiA+PiA+IHRpbWVvdXRzIGluIGNv
ZGUgY29tbWVudHMuDQo+ID4+ID4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+DQoNCj4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+DQo+ID4+ID4gLS0tDQo+ID4+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA3OA0KPiA+PiA+ICsrKysrKysrKysrLS0tLS0tLS0tLS0t
LQ0KPiA+PiA+ICAxIGZpbGUgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgNDIgZGVsZXRpb25z
KC0pDQo+ID4+ID4NCj4gPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYw0KPiA+PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYw0KPiA+PiA+IGluZGV4IDI0YzU2ZDJhYTVmMzEuLmQwNDA1NThiNWQwMjkgMTAw
NjQ0DQo+ID4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
Yw0KPiA+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMN
Cj4gPj4gPiBAQCAtMTc3LDY5ICsxNzcsNjMgQEAgc3RhdGljIHZvaWQgaHN3X3ByZXBhcmVfaGRt
aV9kZGlfYnVmZmVycyhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPj4gPiAg
CQkgICAgICAgdHJhbnMtPmVudHJpZXNbbGV2ZWxdLmhzdy50cmFuczIpOw0KPiA+PiA+ICB9DQo+
ID4+ID4NCj4gPj4gPiAtc3RhdGljIHZvaWQgbXRsX3dhaXRfZGRpX2J1Zl9pZGxlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+PiA+IGVudW0gcG9ydCBwb3J0KQ0KPiA+PiA+ICtz
dGF0aWMgaTkxNV9yZWdfdCBpbnRlbF9kZGlfYnVmX3N0YXR1c19yZWcoc3RydWN0IGludGVsX2Rp
c3BsYXkNCj4gPj4gPiArKmRpc3BsYXksIGVudW0gcG9ydCBwb3J0KQ0KPiA+PiA+ICB7DQo+ID4+
ID4gLQlpbnQgcmV0Ow0KPiA+PiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KGRpc3BsYXktPmRybSk7DQo+ID4+DQo+ID4+IFBsZWFzZSBkb24ndCBhZGQgbmV3IGk5
MTUgdXNlcywgZGlzcGxheSB3aWxsIHdvcmsganVzdCBmaW5lIGhlcmUuDQo+ID4+DQo+ID4+ID4N
Cj4gPj4gPiAtCS8qIEZJWE1FOiBmaW5kIG91dCB3aHkgQnNwZWMncyAxMDB1cyB0aW1lb3V0IGlz
IHRvbyBzaG9ydCAqLw0KPiA+PiA+IC0JcmV0ID0gd2FpdF9mb3JfdXMoKGludGVsX2RlX3JlYWQo
aTkxNSwgWEVMUERQX1BPUlRfQlVGX0NUTDEoaTkxNSwNCj4gcG9ydCkpICYNCj4gPj4gPiAtCQkJ
ICAgWEVMUERQX1BPUlRfQlVGX1BIWV9JRExFKSwgMTAwMDApOw0KPiA+PiA+IC0JaWYgKHJldCkN
Cj4gPj4gPiAtCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJUaW1lb3V0IHdhaXRpbmcgZm9yIERESSBC
VUYgJWMgdG8gZ2V0DQo+IGlkbGVcbiIsDQo+ID4+ID4gLQkJCXBvcnRfbmFtZShwb3J0KSk7DQo+
ID4+ID4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQpDQo+ID4+ID4gKwkJcmV0dXJu
IFhFTFBEUF9QT1JUX0JVRl9DVEwxKGk5MTUsIHBvcnQpOw0KPiA+PiA+ICsJZWxzZQ0KPiA+PiA+
ICsJCXJldHVybiBERElfQlVGX0NUTChwb3J0KTsNCj4gPj4gPiAgfQ0KPiA+PiA+DQo+ID4+ID4g
IHZvaWQgaW50ZWxfd2FpdF9kZGlfYnVmX2lkbGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LA0KPiA+PiA+ICAJCQkgICAgIGVudW0gcG9ydCBwb3J0KQ0KPiA+PiA+ICB7DQo+ID4+
ID4gLQlpZiAoSVNfQlJPWFRPTihkZXZfcHJpdikpIHsNCj4gPj4gPiArCXN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5ID0gJmRldl9wcml2LT5kaXNwbGF5Ow0KPiA+PiA+ICsNCj4gPj4gPiAr
CS8qDQo+ID4+ID4gKwkgKiBCc3BlYydzIHBsYXRmb3JtIHNwZWNpZmljIHRpbWVvdXRzOg0KPiA+
PiA+ICsJICogTVRMKyAgIDogMTAwIHVzDQo+ID4+ID4gKwkgKiBCWFQgICAgOiBmaXhlZCAxNiB1
cw0KPiA+PiA+ICsJICogSFNXLUFETDogOCB1cw0KPiA+PiA+ICsJICoNCj4gPj4gPiArCSAqIEZJ
WE1FOiBNVEwgcmVxdWlyZXMgMTAgbXMgYmFzZWQgb24gdGVzdHMsIGZpbmQgb3V0IHdoeSAxMDAg
dXMgaXMgdG9vDQo+IHNob3J0DQo+ID4+ID4gKwkgKi8NCj4gPj4NCj4gPj4gU2VlbXMgYSBiaXQg
b2RkIHRvIG1lIHRvIGxpc3QgYWxsIHRoZSBwbGF0Zm9ybSBzcGVjaWZpYyB0aW1lb3V0cywgYW5k
DQo+ID4+IHRoZW4gbGFyZ2VseSBpZ25vcmUgdGhlbSB3aXRob3V0IGV4cGxhbmF0aW9uIQ0KPiA+
DQo+ID4gSXQncyBkb2N1bWVudGVkIHNvIGFmdGVyIGFueSBmdXR1cmUgcGxhdGZvcm0gcmVxdWly
ZW1lbnQgY2hhbmdlcw0KPiA+IChkcm9wcGluZyBzdXBwb3J0IGZvciBhIHBsYXRmb3JtLCBhZGRp
bmcgYSBuZXcgcGxhdGZvcm0gd2l0aCBhIG5ldw0KPiA+IHRpbWVvdXQpIGNhbiBiZSBhcHBsaWVk
IHRvIHRoZSB0aW1lb3V0IHVzZWQgYmVsb3cuDQo+ID4NCj4gPj4gQWxzbywgMTAgbXMgaXMgc2V2
ZXJhbCBvcmRlcnMgb2YgbWFnbml0dWRlIGxvbmdlciB0aGFuIGl0IHNob3VsZCBuZWVkDQo+ID4+
IHRvIGJlIG9uIGFsbCBwbGF0Zm9ybXMuDQo+ID4NCj4gPiBJIGRlc2NyaWJlZCBhYm92ZSB3aHkg
dGhpcyBkb2Vzbid0IG1hdHRlciAoaW4gdGhlIHVzdWFsIGNhc2UgdGhlIHdhaXQNCj4gPiBkdXJh
dGlvbiB3aWxsIG5vdCBjaGFuZ2UpLg0KPiA+DQo+ID4+DQo+ID4+ID4gKwlpZiAoZGlzcGxheS0+
cGxhdGZvcm0uYnJveHRvbikgew0KPiA+PiA+ICAJCXVkZWxheSgxNik7DQo+ID4+ID4gIAkJcmV0
dXJuOw0KPiA+PiA+ICAJfQ0KPiA+PiA+DQo+ID4+ID4gLQlpZiAod2FpdF9mb3JfdXMoKGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIERESV9CVUZfQ1RMKHBvcnQpKSAmDQo+ID4+ID4gLQkJCSBERElf
QlVGX0lTX0lETEUpLCA4KSkNCj4gPj4gPiAtCQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLCAiVGlt
ZW91dCB3YWl0aW5nIGZvciBEREkgQlVGICVjIHRvDQo+IGdldCBpZGxlXG4iLA0KPiA+PiA+ICsJ
c3RhdGljX2Fzc2VydChERElfQlVGX0lTX0lETEUgPT0gWEVMUERQX1BPUlRfQlVGX1BIWV9JRExF
KTsNCj4gPj4gPiArCWlmIChpbnRlbF9kZV93YWl0X2Zvcl9zZXQoZGlzcGxheSwgaW50ZWxfZGRp
X2J1Zl9zdGF0dXNfcmVnKGRpc3BsYXksIHBvcnQpLA0KPiA+PiA+ICsJCQkJICBERElfQlVGX0lT
X0lETEUsIDEwKSkNCj4gPj4gPiArCQlkcm1fZXJyKGRpc3BsYXktPmRybSwgIlRpbWVvdXQgd2Fp
dGluZyBmb3IgRERJIEJVRiAlYyB0byBnZXQNCj4gPj4gPiAraWRsZVxuIiwNCj4gPj4gPiAgCQkJ
cG9ydF9uYW1lKHBvcnQpKTsNCj4gPj4gPiAgfQ0KPiA+PiA+DQo+ID4+ID4gIHN0YXRpYyB2b2lk
IGludGVsX3dhaXRfZGRpX2J1Zl9hY3RpdmUoc3RydWN0IGludGVsX2VuY29kZXINCj4gPj4gPiAq
ZW5jb2RlcikgIHsNCj4gPj4gPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOw0KPiA+PiA+ICsJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGVuY29kZXIpOw0KPiA+PiA+ICAJZW51bSBw
b3J0IHBvcnQgPSBlbmNvZGVyLT5wb3J0Ow0KPiA+PiA+IC0JaW50IHRpbWVvdXRfdXM7DQo+ID4+
ID4gLQlpbnQgcmV0Ow0KPiA+PiA+DQo+ID4+ID4gLQkvKiBXYWl0ID4gNTE4IHVzZWNzIGZvciBE
RElfQlVGX0NUTCB0byBiZSBub24gaWRsZSAqLw0KPiA+PiA+IC0JaWYgKERJU1BMQVlfVkVSKGRl
dl9wcml2KSA8IDEwKSB7DQo+ID4+ID4gKwkvKg0KPiA+PiA+ICsJICogQnNwZWMncyBwbGF0Zm9y
bSBzcGVjaWZpYyB0aW1lb3V0czoNCj4gPj4gPiArCSAqIE1UTCsgICAgICAgICAgICAgOiAxMDAw
MCB1cw0KPiA+PiA+ICsJICogREcyICAgICAgICAgICAgICA6IDEyMDAgdXMNCj4gPj4gPiArCSAq
IFRHTC1BREwgY29tYm8gUEhZOiAxMDAwIHVzDQo+ID4+ID4gKwkgKiBUR0wtQURMIFR5cGVDIFBI
WTogMzAwMCB1cw0KPiA+PiA+ICsJICogSFNXLUlDTCAgICAgICAgICA6IGZpeGVkIDUxOCB1cw0K
PiA+PiA+ICsJICovDQo+ID4+ID4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAxMCkgew0K
PiA+PiA+ICAJCXVzbGVlcF9yYW5nZSg1MTgsIDEwMDApOw0KPiA+PiA+ICAJCXJldHVybjsNCj4g
Pj4gPiAgCX0NCj4gPj4gPg0KPiA+PiA+IC0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAx
NCkgew0KPiA+PiA+IC0JCXRpbWVvdXRfdXMgPSAxMDAwMDsNCj4gPj4gPiAtCX0gZWxzZSBpZiAo
SVNfREcyKGRldl9wcml2KSkgew0KPiA+PiA+IC0JCXRpbWVvdXRfdXMgPSAxMjAwOw0KPiA+PiA+
IC0JfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpIHsNCj4gPj4gPiAtCQlp
ZiAoaW50ZWxfZW5jb2Rlcl9pc190YyhlbmNvZGVyKSkNCj4gPj4gPiAtCQkJdGltZW91dF91cyA9
IDMwMDA7DQo+ID4+ID4gLQkJZWxzZQ0KPiA+PiA+IC0JCQl0aW1lb3V0X3VzID0gMTAwMDsNCj4g
Pj4gPiAtCX0gZWxzZSB7DQo+ID4+ID4gLQkJdGltZW91dF91cyA9IDUwMDsNCj4gPj4gPiAtCX0N
Cj4gPj4gPiAtDQo+ID4+ID4gLQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDE0KQ0KPiA+
PiA+IC0JCXJldCA9IF93YWl0X2ZvcighKGludGVsX2RlX3JlYWQoZGV2X3ByaXYsDQo+ID4+ID4g
LQ0KPiAJWEVMUERQX1BPUlRfQlVGX0NUTDEoZGV2X3ByaXYsIHBvcnQpKSAmDQo+ID4+ID4gLQkJ
CQkgIFhFTFBEUF9QT1JUX0JVRl9QSFlfSURMRSksDQo+ID4+ID4gLQkJCQl0aW1lb3V0X3VzLCAx
MCwgMTApOw0KPiA+PiA+IC0JZWxzZQ0KPiA+PiA+IC0JCXJldCA9IF93YWl0X2ZvcighKGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIERESV9CVUZfQ1RMKHBvcnQpKSAmDQo+IERESV9CVUZfSVNfSURM
RSksDQo+ID4+ID4gLQkJCQl0aW1lb3V0X3VzLCAxMCwgMTApOw0KPiA+PiA+IC0NCj4gPj4gPiAt
CWlmIChyZXQpDQo+ID4+ID4gLQkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIlRpbWVvdXQgd2Fp
dGluZyBmb3IgRERJIEJVRiAlYyB0bw0KPiBnZXQgYWN0aXZlXG4iLA0KPiA+PiA+ICsJc3RhdGlj
X2Fzc2VydChERElfQlVGX0lTX0lETEUgPT0gWEVMUERQX1BPUlRfQlVGX1BIWV9JRExFKTsNCj4g
Pj4gPiArCWlmIChpbnRlbF9kZV93YWl0X2Zvcl9jbGVhcihkaXNwbGF5LCBpbnRlbF9kZGlfYnVm
X3N0YXR1c19yZWcoZGlzcGxheSwNCj4gcG9ydCksDQo+ID4+ID4gKwkJCQkgICAgRERJX0JVRl9J
U19JRExFLCAxMCkpDQo+ID4+ID4gKwkJZHJtX2VycihkaXNwbGF5LT5kcm0sICJUaW1lb3V0IHdh
aXRpbmcgZm9yIERESSBCVUYgJWMgdG8gZ2V0DQo+ID4+ID4gK2FjdGl2ZVxuIiwNCj4gPj4gPiAg
CQkJcG9ydF9uYW1lKHBvcnQpKTsNCj4gPj4gPiAgfQ0KPiA+PiA+DQo+ID4+ID4gQEAgLTMwNjcs
NyArMzA2MSw3IEBAIHN0YXRpYyB2b2lkIG10bF9kaXNhYmxlX2RkaV9idWYoc3RydWN0DQo+IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4+ID4gIAlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIERE
SV9CVUZfQ1RMKHBvcnQpLCBERElfQlVGX0NUTF9FTkFCTEUsIDApOw0KPiA+PiA+DQo+ID4+ID4g
IAkvKiAzLmMgUG9sbCBmb3IgUE9SVF9CVUZfQ1RMIElkbGUgU3RhdHVzID09IDEsIHRpbWVvdXQg
YWZ0ZXINCj4gPj4gPiAxMDB1cyAqLw0KPiA+Pg0KPiA+PiBDb21tZW50IGlzIG5vdyBzdGFsZS4g
KFdoaWNoIGlzIHdoeSB3ZSBzaG91bGQgbmV2ZXIgYWRkIGNvbW1lbnRzIGxpa2UNCj4gPj4gdGhh
dC4pDQo+ID4NCj4gPiBSaWdodCwgSSByZW1vdmUgYWxsIHRoZXNlIGxhdGVyIGluIHRoZSBwYXRj
aHNldC4NCj4gPg0KPiA+Pg0KPiA+PiA+IC0JbXRsX3dhaXRfZGRpX2J1Zl9pZGxlKGRldl9wcml2
LCBwb3J0KTsNCj4gPj4gPiArCWludGVsX3dhaXRfZGRpX2J1Zl9pZGxlKGRldl9wcml2LCBwb3J0
KTsNCj4gPj4gPg0KPiA+PiA+ICAJLyogMy5kIERpc2FibGUgRDJEIExpbmsgKi8NCj4gPj4gPiAg
CW10bF9kZGlfZGlzYWJsZV9kMmRfbGluayhlbmNvZGVyKTsNCj4gPj4NCj4gPj4gLS0NCj4gPj4g
SmFuaSBOaWt1bGEsIEludGVsDQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
