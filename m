Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 693F1B3947E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 09:02:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A896210E6A0;
	Thu, 28 Aug 2025 07:02:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IQfK0ilc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 775D510E650;
 Thu, 28 Aug 2025 07:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756364550; x=1787900550;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=t75OL3N4j6n48tlt5KA2dHRulnwM5QAB2aQdf0PtX8U=;
 b=IQfK0ilcxlP1tGVRurUpWYYzjZOvUx/rgGgfn7ZIrncmEKWNAQa+7pk2
 bH3WHYv781WRscmFyvRxTsyzZc7HvHoSEDWIPrI6KSfXZf4lsOm6kOiJP
 bU0c9eFrdwUZo5l2E/r/rBI+cFPGIi0W/TArw02Fab7vykJVz3iBZfcIK
 FmG+1aB77ZqIbwKZUPpB+NFvOqM/YbV/0uqVe5nyai7YI9B9P2tCKLv/F
 jg396PX9J2j3v/2B2N7kfm6WCfKYtkZXfxASddtFpjWDvRnuWwpoNFrpU
 8cOCzpjtVQyqmL5Wv41Jd3qOejhV5Lt5uz+P+3j7Oqe1OFN47k/4+0BD2 Q==;
X-CSE-ConnectionGUID: IawiBtahTWabQuudsDQPLA==
X-CSE-MsgGUID: lB9AWuwVRQKLjqzBlx8DNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58476772"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58476772"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 00:02:30 -0700
X-CSE-ConnectionGUID: 7zPuUR6qSCSXmMVsQxSo9w==
X-CSE-MsgGUID: tF/Rylk3T+KL9lNKV5lIrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="175332492"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 00:02:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 00:02:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 00:02:29 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.83)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 00:02:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O/3fLcuZoxIYE3FCezgrNtq1oGb0KydSGb3tw86AFCh8zzzcWismrJz1FBHjcQtiFnuhYwWm1MW+PJlpfWumIPETS6WGu3P9BESXAouB0vtStMdNOdaUAxGR4fokboF27XX/oRA8lMlJF6HeQOalNlUo4iVX+ZKRzI0Wd/hQCyJYoK8hQHj1T1OdCucYiBMA/Mc5eWdQGJb2cWLe3dQqWwxVl97jqcAIzwYSATUwtJtNNpCJzu4lTb1xNFlk3HQPf88GDZq6Smh/Cj6dGsoB0kd6T1gQSdTVe2e4gInvD35ukGtAxJlstu/DE6do9aweJZF/dAnyn1lXayl2GJGHCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t75OL3N4j6n48tlt5KA2dHRulnwM5QAB2aQdf0PtX8U=;
 b=QkViUwwkzzewMXPvFvFsPZN3mqZ2TM01mrMJ6aOvxQkmvmNUG2tp+W93rRGBufWquR6Bx91IPJts5/epwY0JKgA+ZvznkG2IBYVoJPDVZpCu/0kj9+KMTKlhEudpEp5Mk1G+in4cR/tFOzfQIe4Zmqjqurw7dFsQHoyBECuIGwNXVGmOCnJviZfF0X6sIxYFQcNRj4qE+i4Kk9UNd6RZFbSsb1cx14MNh+cSwq0Z6be2LEiKvaFW1W+BKirJmBBZw3pZPKfpEPtZm45o0Io3P0DO7+XImb8jChAICKhH+iDL/+Jr2LJO1Vyy/uHsFazrz67xwUbYVbJAmXIVjBGkNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV8PR11MB8488.namprd11.prod.outlook.com (2603:10b6:408:1e7::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.16; Thu, 28 Aug
 2025 07:02:23 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9073.010; Thu, 28 Aug 2025
 07:02:23 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/4] drm/i915/psr: Add poll for checking PSR is idle
 before starting update
Thread-Topic: [PATCH v2 4/4] drm/i915/psr: Add poll for checking PSR is idle
 before starting update
Thread-Index: AQHcBpIjUfAx69EBy0aAK8tv75NnE7R0/uEAgAAgAgCAAXrbgIAABGGAgABjrQCAAMR2AA==
Date: Thu, 28 Aug 2025 07:02:23 +0000
Message-ID: <c32d818aafe0f0748a674ad597cbddf335806f2c.camel@intel.com>
References: <20250806052213.1800559-1-jouni.hogander@intel.com>
 <20250806052213.1800559-5-jouni.hogander@intel.com>
 <aK2qPstrBZZCtmfa@intel.com>
 <808fef64029b77661d2e084c1ff7e29fc0706cb6.camel@intel.com>
 <aK8C5-fWIwd9eLbt@intel.com>
 <71e43318412992094ba2761e0366fd3593704087.camel@intel.com>
 <aK9aML4GJI4kop2r@intel.com>
In-Reply-To: <aK9aML4GJI4kop2r@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV8PR11MB8488:EE_
x-ms-office365-filtering-correlation-id: e1f17018-be36-4121-5e79-08dde600d70c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?emtJUE1LY1JSS2dwUjVhNWEzSEdmQU9ORjVYbXE0aFE2ZUExd252eWlIN2Jo?=
 =?utf-8?B?ZFhQL3UwdmhZU2tNSHhrTVA3NTBpK2tud1VjZXZFejVtY2Z3bDdUL0lsS1hq?=
 =?utf-8?B?U1p6L0h0eG9zY1cyWEUxbDEwdDQxSEVaOEdRaGM0cDUyRjlSbWp4VUljZG1Z?=
 =?utf-8?B?K3grVWhlYWdRZUZWb2NXbHl5OVpBVXNzODR4SGdXSEdreUluMExmQWFsNUQ1?=
 =?utf-8?B?azhRNk1GamhMWnkzTldJaWVacnFoVTliOExSU1hBU1NMZGYwRVJncGVaeHZM?=
 =?utf-8?B?bWM3SVh5UW9RQXRqZExkRWpYVGVsUEpWbFZnUU5xK2grMjJJZ1NScnhoa0Fi?=
 =?utf-8?B?Yjh6UnJOeWdpb1Z4TjdkaFNMOEg5RElsWEQyNXJnbmNaNWlrWHVGK2xVUWQv?=
 =?utf-8?B?aVBiSThiRVJFZ3B4aWRtWWs5NDMxUFZwUENiR1ZpZmdWY2t4NmFzQ2JKNnph?=
 =?utf-8?B?ZmoycWlYNUNCcUIrRzR3Q2pHcnRldzBzWHJvMXZKbThyanA0OFFINGpRb25h?=
 =?utf-8?B?N05aUGFISkxZVjB2RFJ0OE5GR3dwblRCS0pzRkVxL2FDSXRIQjZ6T2xLQzV4?=
 =?utf-8?B?aTZKSVhiaXdNUVBxQW1PSlJoTllib3p5Nk9ZK1VFZ0NQN0xLUXZuaHN2WGxz?=
 =?utf-8?B?eEx3RjdQWmwwZHdQSG1uSHpkRzFScVVQZnk0OHdLUUlRZlJLcnZuK0tNVVJa?=
 =?utf-8?B?YWdQWTVZdTdGTTJNRHhJeVFOckNLcG51d2l4c3BVZWF1UTh6ZXkyb1d4WTFO?=
 =?utf-8?B?TXpBQUovMm9MTVlVWS9XZXZ3T0FmODJ1aHBDNlpkVWFIeDJicDNMeVNRNVJE?=
 =?utf-8?B?bFhhSFRTbTQ5VklMZkpRYlRlVlRMeG8vWGhVSGpYMWdCQ2NLTHl5c2Iwajc2?=
 =?utf-8?B?WUd0d0pscEJQTEZCY3RGQVFYTnVzSjV3T0puSk5rc2dnZmVRVXIwYzZNTU9Z?=
 =?utf-8?B?alFvOGlKY05aQWQxbXFteFZIT0txQk96R1Eycm9RSTM2ZklLRm1YWS9Wd1N1?=
 =?utf-8?B?N2dqMms5NHI4SGJJMDB1Skk4Njlsblc5RFphMkR1QUJrQm12cGhmcHRRdXFy?=
 =?utf-8?B?L09QMHA4ZmR0MlhSWFgxM3ZxQm54SjM0VVlwOFQ0NkhBWjgwM1NVTGR6RkhJ?=
 =?utf-8?B?WGJwYTlCa1UxMlZxRFN3bHptYnFNU3VISDRlbnJ3N2hpQzJLN2hNdEptM1gr?=
 =?utf-8?B?UE91U2luWGw2MisvNERUK2ZCQ1VwR2NCYzN5NW13aGhla0FxWk1oSVVEN2lP?=
 =?utf-8?B?Y3pPdzRQdUt3a1NDMG9MNEVGbWFObFBacjBieFJNQTdYZm5vaWJHckxYdElt?=
 =?utf-8?B?RW42Tk9XSGhVbDBPTUFWWU01S3dGT0dFR3g1emhnSjRMQmRIQnZqcHhNM1lq?=
 =?utf-8?B?NC80NlFqSWZPS292KzEwQ2NyN2IwQmVXZ2pETm52S1hic1VzNGtzNFFYS0xn?=
 =?utf-8?B?akFWOUY3c1gzcVZXRVJ6R2Q4THlLNkppOWN5VTU5M3VnQjBlUG9zV1pJWVIy?=
 =?utf-8?B?enZJUUowQ01QMW1Jb01FZE1ROGpXeTgyeWhXUkxPNjI1UDBGSU0xaDEwWXlY?=
 =?utf-8?B?MjNXaUZzSFJBTEYxeXhya29JOWMzZm1xTXFzdTQ2UHI5aHlFbDVjVS8ySjV1?=
 =?utf-8?B?dFR3TnMyVXU0K01SQS94blhqNmc0YXMxYjJKS3lZUktEVGR3Z2FlbTZvN0cw?=
 =?utf-8?B?SndIWU1zMjRGQ3Z5ODBlVm9iakpRN1dzNlB2RXNWQWpyUXFmMzBOQko2MWJu?=
 =?utf-8?B?U1pZcUFHekVxdU5vTHVnUW9qQ3duTGVsblc1cHhFUTVrbTVCRGhKdng4SU54?=
 =?utf-8?B?SE0ycWIwOTIzTjNleHhSNDJBaCtpTzRybEU0c0VrQkJZbWxRdDlOdGtxMFRI?=
 =?utf-8?B?a3VQZStqSXMxUGVXZDd6WlBmdFZ0NzZpOHVXekExY2k0b04yOVZqZ3MyU3RE?=
 =?utf-8?B?NlVzWDArT1JXL0lUNkFhQ21VMmVOUmNTUlpsQ2FtZ3grR3JhNWJtK2M4T0NF?=
 =?utf-8?B?OTRURjZ4RmF3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmU3RzkxNWt0QlFRdCtZdmx3eEtDZW0yVURFdDJtYmh1Qmp1Z0VybVFKUUsr?=
 =?utf-8?B?QWRPM05sS0VKQjJzOFUrMXpyMytUTlFrbmpoTXVWUk5HYzNRYTV2MXNiaGJC?=
 =?utf-8?B?Nlo4dWpqVnJQTktrOXg3UG81ODBLanB5L3JJVkdGNW5XWm1uOUVneU5Ramxq?=
 =?utf-8?B?clBJUzl1NWJNOUtCTWc5SDRVVzFQaDZvUC9XdDJkVE9ZSmc4N0VIRjZiZ3p2?=
 =?utf-8?B?VmluTmt5a1RjOUhVQnZ6YkY2b0FVTjZQTldqM2cybmF3QU1aTzR3T3FnZWpk?=
 =?utf-8?B?YWE2TDlqNkVHN3dkSlhPRE1FZnZGYUVaK1NmUkF2NjNlNE5pWlNFZ0tMMnVY?=
 =?utf-8?B?SjV1dFEwRFRXdW0zVmdVZEV4UHVKWHo3UURTS1IrcjBUL0xKVFg1NTU4aHFu?=
 =?utf-8?B?UG5HRXpIanZJVU10L0FyQzdzbEdPTjJQUFQ0YzEveGRqK3Y0VlZiSVJnMTVi?=
 =?utf-8?B?VjFSMlZzcVQ5VFAxN3pQUTBzdDVkS0wwcklEMXVDbGNSZldUSW5aeFhmTStX?=
 =?utf-8?B?aURlR3VyS29pTUUrL3pJTnIyYldvQytUdjJYbjZ5TlhLdUp3OGMwU09HcFZa?=
 =?utf-8?B?REpITjgyd2tROTlTaUlmUE9PMkFPWDhJNjJISnpVaXAzZ3RxQU5QMEtVa1lZ?=
 =?utf-8?B?dXFKUUJXZEFZcWhFa21saWN5S1pYTFlKaVNRMVBWR3BybS9GVTU3akxLaUZo?=
 =?utf-8?B?RHhCVmw2YWxtMHVwb1ZXMWpFdG9MWlQ1TGovZVk1RElXWmJYSUZDc21taFZh?=
 =?utf-8?B?cXVMc2xhTmJFbnAwbnkwenMxTklxem1JRDBSZUFIZGVKZ055VmpkVnRyVitF?=
 =?utf-8?B?VXhVRURFdmVXR29qMTJYUElyS3h5UXB2NmIwUWdualQrL3d5R0dGYkxUREVw?=
 =?utf-8?B?WFh5c3FYTStXeFo4VWVqSDhMTUtXQ2JRaityY2Mzc09ncmtTSU1TYmNRRFZN?=
 =?utf-8?B?ZS91OTVEZ2dzYXRPOFNMRE5FS2dNbmJUdzNtNE05cTlyaUpmamlXcTRxTWNB?=
 =?utf-8?B?ekNpZmRYd2Fza2R2SUJUdmtYZE44bHlad2d2aTBma3M1WVNoRk5zNURMS3JT?=
 =?utf-8?B?WSs4eDJwYTdSQ0NVejNKU1pxTlc0b0g2YitLaVRoUDJEYm1uZmZqOU9ZdDdI?=
 =?utf-8?B?OGdmbU9VMHJjMm9uWW96U2tySjUyZExtbnBDYUNmMXBBQzh0VHZQYUtEazZh?=
 =?utf-8?B?NnBoVENrYW9TY21ZcE5IQXl1S2hLVjh6N1A4R3Nza1djaUxHb0htd2YrL3Vv?=
 =?utf-8?B?NnhzL0NURmtNUEpYLzArRTEyK21zd0ZwMmUrd2grVFpPRTFQV0ROeVFZKzVx?=
 =?utf-8?B?SjVYTHZBb09XY2E1Y25jMXBCcDFMMWZMSE44VkhzWWpZcE5HUjIySzYzTFlR?=
 =?utf-8?B?QXpXeXQydm1OTXhXS1BaR3hHaDhHdEt2WGxlU1BDcWxpeUFCZklzcTlQaWcz?=
 =?utf-8?B?bnVIRnJTemVoYzN4aGpMODVhWW1WREx3VFVzRnRDVDFQbEN1VWtoUEl1VHBu?=
 =?utf-8?B?MG41ZW1GV2d1bDk4N3hDQmE4MHJCa20xdWFYNG1ZbHpSdjFjeTZwUVdlMm1p?=
 =?utf-8?B?Z21pdXBEb0pmaGtaY3B5eFBTdHIzT3V4eW53aCtGdk52RGpKSnRaRFZOZGdn?=
 =?utf-8?B?TnluOUI4T0c4ZkpZQ2p6Q1Z6WFRWT1hNNXRLcDlIVEtxVGF3UGk4OTNEcFM4?=
 =?utf-8?B?Q2NCbEE3UnlLTzNBSVBDb2g5d0xXK1V5RE8zb3FuSGJ4ME5sOFI4TnZWZFJV?=
 =?utf-8?B?Zy82NklIYzFtakV5V0l2L0F6VDh4ZUNlL1VvOThEd1VINzFEZS9lS2hWam1m?=
 =?utf-8?B?V3F6elA5eUQ4MVYzSDl6R0c5NThTZXExcXFMOGVSbVQrTFRlenVIQlovS0pl?=
 =?utf-8?B?R0JrY2k3YzRDTStMWTV4ZisrZ1Y1S1FHeFlrbkNiRnZvM05EU2FTVXV6UUVP?=
 =?utf-8?B?QU9oSnp2c0lXa1JQMndaVi9pL3RtZE00akVzM0UySlZyTGk4TEtTTGxTOTlk?=
 =?utf-8?B?cE1rMVBxOWZTeXdIYndYcVNFY3I1Z1AvQlNwUXBnTU5HMWZxK0VFTmZBNE9a?=
 =?utf-8?B?TEQyR1NsMkpZSmkzK1lxZWwyRktNNWFYVWhHWG4yMHFqVXF5aGxzUGhaTWU3?=
 =?utf-8?B?OGZGdzR2eXFja2FVakJwQWFvSWN5N0tuZDU3RU5TVGplSFFFWjc4SnVTNkJK?=
 =?utf-8?B?MU9UdjZpM2g0eDY0TGtjT01KK3c0ck56Wm9ramtNUlZBbUZEbE1EM2k1MUsy?=
 =?utf-8?B?TzhjOCtGOGRONzg2L1pGbmdyRG5BPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <ACEB63E8D61BA040B0038BBEB22A80BD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1f17018-be36-4121-5e79-08dde600d70c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 07:02:23.8372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V9s/X2mkJwKH+O8ud/oSwqxpkA+XiaoPFahDlablw8zErBM2BketzgsvL/z0bFtbTsx1ve5nABBMUsWr0HrR4zf4YkeTUEyCStzp4QCZltg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8488
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

T24gV2VkLCAyMDI1LTA4LTI3IGF0IDIyOjE5ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgQXVnIDI3LCAyMDI1IGF0IDAxOjIyOjI4UE0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBXZWQsIDIwMjUtMDgtMjcgYXQgMTY6MDYgKzAzMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFR1ZSwgQXVnIDI2LCAyMDI1IGF0IDAyOjMwOjUw
UE0gKzAwMDAsIEhvZ2FuZGVyLCBKb3VuaSB3cm90ZToNCj4gPiA+ID4gT24gVHVlLCAyMDI1LTA4
LTI2IGF0IDE1OjM2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gPiA+ID4gT24g
V2VkLCBBdWcgMDYsIDIwMjUgYXQgMDg6MjI6MTNBTSArMDMwMCwgSm91bmkgSMO2Z2FuZGVyDQo+
ID4gPiA+ID4gd3JvdGU6DQo+ID4gPiA+ID4gPiBXZSBhcmUgY3VycmVudGx5IG9ic2VydmluZyBj
cmMgZmFpbHVyZXMgYWZ0ZXIgd2Ugc3RhcnRlZA0KPiA+ID4gPiA+ID4gdXNpbmcNCj4gPiA+ID4g
PiA+IGRzYg0KPiA+ID4gPiA+ID4gZm9yIFBTUg0KPiA+ID4gPiA+ID4gdXBkYXRlcyBhcyB3ZWxs
LiBUaGlzIHNlZW1zIHRvIGhhcHBlbiBiZWNhdXNlIFBTUiBIVyBpcw0KPiA+ID4gPiA+ID4gc3Rp
bGwNCj4gPiA+ID4gPiA+IHNlbmRpbmcNCj4gPiA+ID4gPiA+IGNvdXBsZSBvZiB1cGRhdGVzIHVz
aW5nIG9sZCBmcmFtZWJ1ZmZlcnMgb24gd2FrZS11cC4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+
ID4gRml4IHRoaXMgYnkgYWRkaW5nIHBvbGwgZW5zdXJpbmcgUFNSIGlzIGlkbGUgYmVmb3JlDQo+
ID4gPiA+ID4gPiBzdGFydGluZw0KPiA+ID4gPiA+ID4gdXBkYXRlLg0KPiA+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCj4gPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+ID4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgKysNCj4gPiA+ID4gPiA+IMKgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gPiA+ID4gPiA+IGluZGV4IGMxYTNhOTVjNjVmMC4uNDExYzc0YzczZWFlIDEwMDY0NA0K
PiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+ID4gPiA+ID4gPiBAQCAtNzI3MSw2ICs3MjcxLDggQEAgc3RhdGljIHZv
aWQNCj4gPiA+ID4gPiA+IGludGVsX2F0b21pY19kc2JfZmluaXNoKHN0cnVjdA0KPiA+ID4gPiA+
ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+ID4gPiA+IMKgCQlpbnRlbF9wc3Jf
dHJpZ2dlcl9mcmFtZV9jaGFuZ2VfZXZlbnQobmV3X2MNCj4gPiA+ID4gPiA+IHJ0Y18NCj4gPiA+
ID4gPiA+IHN0YXQNCj4gPiA+ID4gPiA+IGUtPmRzYl9jb21taXQsDQo+ID4gPiA+ID4gPiDCoAkJ
CQkJCcKgwqDCoMKgDQo+ID4gPiA+ID4gPiBzdGF0ZSwNCj4gPiA+ID4gPiA+IGNydGMpOw0KPiA+
ID4gPiA+ID4gwqANCj4gPiA+ID4gPiA+ICsJCWludGVsX3Bzcl93YWl0X2Zvcl9pZGxlX2RzYihu
ZXdfY3J0Y19zdGF0ZQ0KPiA+ID4gPiA+ID4gKTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+
IMKgCQlpZiAobmV3X2NydGNfc3RhdGUtPnVzZV9kc2IpDQo+ID4gPiA+ID4gPiDCoAkJCWludGVs
X2RzYl92YmxhbmtfZXZhZGUoc3RhdGUsDQo+ID4gPiA+ID4gPiBuZXdfY3J0Y19zdGF0ZS0+ZHNi
X2NvbW1pdCk7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gSG93IGNvbWUgdGhlICdldmFkZSBzY2Fu
bGluZSAwICsgbm9ybWFsIGV2YXNpb24nIGluDQo+ID4gPiA+ID4gaW50ZWxfZHNiX3ZibGFua19l
dmFkZSgpDQo+ID4gPiA+ID4gaXMgbm90IGVub3VnaCBoZXJlPw0KPiA+ID4gPiANCj4gPiA+ID4g
dGhlIHByb2JsZW0gZG9lc24ndCBoYXBwZW4gd2hlbiBQU1IgaXMgaW4gU1JEX0VOVC9ERUVQX1NM
RUVQIGFzDQo+ID4gPiA+IGNvbW1pdHRpbmcgbmV3IGNoYW5nZXMgaXMgc3RhcnRlZC4gSXQgc2Vl
bXMgdG8gaGFwcGVuIHdoZW4gUFNSDQo+ID4gPiA+IHRyYW5zaXRpb25pbmcgaW50byBTUkRfRU5U
L0RFRVBfU0xFRVAgaXMgb25nb2luZyB3aGVuIG5ldw0KPiA+ID4gPiBjaGFuZ2VzDQo+ID4gPiA+
IGFyZQ0KPiA+ID4gPiBiZWluZyBjb21taXR0ZWQuIEluIHRoaXMgY2FzZSBldmFzaW9uIHBhc3Nl
cyBhbmQgUFNSIGlzDQo+ID4gPiA+IGNvbnRpbnVpbmcNCj4gPiA+ID4gdHJhbnNpdGlvbmluZyBp
bnRvIFNSRF9FTlQvREVFUF9TTEVFUC4gVGhlbiB3YWtlLXVwIHN0YXJ0cw0KPiA+ID4gPiBpbW1l
ZGlhdGVseQ0KPiA+ID4gPiBkdWUgdG8gcGVuZGluZyAiRnJhbWUgQ2hhbmdlIiBldmVudCBhbmQg
aW4gdGhpcyBjYXNlIEhXIGlzDQo+ID4gPiA+IHNlbmRpbmcNCj4gPiA+ID4gYQ0KPiA+ID4gPiBm
cmFtZSB1c2luZyBvbGQgcGxhbmUgY29uZmlndXJhdGlvbi4NCj4gPiA+IA0KPiA+ID4gVGhhdCdz
IGEgYml0IHdlaXJkLiBJIHRoaW5rIHdlIGFyZSBjb25maWd1cmluZyB0aGluZ3Mgc28gdGhhdA0K
PiA+ID4gdGhlcmUNCj4gPiA+IHNob3VsZCBiZSB0aGF0IGV4dHJhIHZibGFuayBhbHJlYWR5IGZv
ciB0aGUgZmlyc3QgZnJhbWUgYWZ0ZXIgUFNSDQo+ID4gPiBleGl0LiBTbyBJIHdvdWxkIGV4cGVj
dCB0aGluZ3MgdG8gbGF0Y2ggcHJvcGVybHkgZXZlbiBpZiB3ZSB3cml0ZQ0KPiA+ID4gdGhlIHJl
Z2lzdGVycyBkdXJpbmcgdGhlIFBTUiBlbnRyeSBzZXF1ZW5jZS4NCj4gPiA+IA0KPiA+ID4gSG1t
LCB0aG91Z2ggdGhlIERTQiBpdHNlbGYgbmV2ZXIgd2FpdHMgZm9yIHRoZSBkZWxheWVkIHZibGFu
aw0KPiA+ID4gZGlyZWN0bHkuIE1heWJlIHRoZSBkZWxheWVkIHZibGFuayBkb2VzIGdldCBzdXBw
cmVzc2VkIGZvcg0KPiA+ID4gb25lIGZyYW1lIGR1cmluZyB0aGUgc2VxdWVuY2Ugc29tZXdoZXJl
LCBidXQgdGhlIHVuZGVsYXllZA0KPiA+ID4gdmJsYW5rIHVzZWQgYnkgdGhlIERTQiBkb2VzIG5v
dC4NCj4gPiA+IA0KPiA+ID4gT25lIGNvdWxkIHBlcmhhcHMgdHJ5IHRvIHNhbXBsZSBhIHRpbWVz
dGFtcCBmcm9tIHRoZSBEU0IgYWZ0ZXINCj4gPiA+IGl0IHRoaW5rcyB0aGUgdmJsYW5rIGhhcyBo
YXBwZW5lZCwgYW5kIHNhbXBsZSBhbm90aGVyIG9uZSBmcm9tDQo+ID4gPiB0aGUgQ1BVIGRlbGF5
ZWQgdmJsYW5rIGludGVycnVwdCAod2hpY2ggSSB3b3VsZCBleHBlY3QgdG8gbWF0Y2gNCj4gPiA+
IHdoZW4gdGhlIGhhcmR3YXJlIHJlYWxseSBsYXRjaGVzIHN0dWZmKSwgYW5kIGNvbXBhcmUgaG93
IHRoZXkNCj4gPiA+IGxvb2suIFRob3VnaCB0aGF0IGRvZXMgcmVxdWlyZSBvbmUgdG8gZW5hYmxl
IHRoZSBDUFUgaW50ZXJydXB0DQo+ID4gPiB3aGljaCBpdHNlbGYgd2lsbCB0cmlnZ2VyIHRoZSBQ
U1IgZXhpdCAoYXQgbGVhc3Qgb24gc29tZSBodyksDQo+ID4gPiBzbyBub3Qgc3VyZSBob3cgZWFz
eSBpdCBpcyB0byBoaXQgdGhlIGV4YWN0IGNvbmRpdGlvbnMgcmVxdWlyZWQuDQo+ID4gPiBJIHN1
cHBvc2Ugb25lIG1pZ2h0IHRyeSB0byB3YWl0IGZvciB0aGUgUFNSIHN0YXRlIG1hY2hpbmUgdG8N
Cj4gPiA+IGJlIGluIHRoZSByaWdodCBzdGF0ZSBqdXN0IGJlZm9yZSB0cmlnZ2VyaW5nIHRoZSBl
eGl0Lg0KPiA+IA0KPiA+IEVuYWJsaW5nIHRoZSBpbnRlcnJ1cHQgd2lsbCB0cmlnZ2VyIGV4aXQu
IEFyZSB5b3UgdGhpbmtpbmcgdGhhdA0KPiA+IHN0YXRlDQo+ID4gbWFjaGluZSB3YWl0IGFzIGEg
c29sdXRpb24gb3IgYXMgYSBleHBlcmltZW50PyA6DQo+IA0KPiBKdXN0IGFzIGFuIGV4cGVyaW1l
bnQgdG8gbWFrZSBzdXJlIHdlIHVuZGVyc3RhbmQgd2hhdCdzIGdvaW5nIG9uLg0KPiANCj4gSSBz
dXBwb3NlIGlmIG15IHRoZW9yeSBhYm91dCB0aGUgdW5kZWxheWVkIHZibGFuayBob2xkcyB0aGVy
ZSBzaG91bGQNCj4gYWxzbyBiZSBubyB3YXkgdG8gaGl0IHRoaXMgd2hlbiBub3QgdXNpbmcgdGhl
IERTQiBzaW5jZSB0aGUgbW1pbyBwYXRoDQo+IGFsd2F5cyBjb21wbGV0ZXMgdGhlIGZsaXBzIGJh
c2VkIG9uIHRoZSBkZWxheWVkIHZibGFuay4NCg0KSSBjYW4gYWN0dWFsbHkgcmVwcm9kdWNlIHRo
aXMgaXNzdWUgaW4gbm9uLWRzYiBjYXNlIGFzIHdlbGwgYnkgcmVtb3ZpbmcNClBTUiBpZGxlIHdh
aXQgZnJvbSB0aGF0IHBhdGguDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiBCdXQgSSBz
dXBwb3NlDQo+IHRoYXQncyBoYXJkZXIgdG8gdXNlIGFzIGFueSBraW5kIG9mIHByb29mIHNpbmNl
IGl0J2xsIGJlIG11Y2ggaGFyZGVyDQo+IHRvIGhpdCB0aGUgZXhhY3QgdGltZSB3aW5kb3cgd2l0
aCB0aGUgQ1BVIGFueXdheS4NCj4gDQoNCg==
