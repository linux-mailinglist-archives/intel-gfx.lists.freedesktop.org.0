Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E74C00852
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 12:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE21610E3C9;
	Thu, 23 Oct 2025 10:35:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ggwDyFLC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C5110E3C9;
 Thu, 23 Oct 2025 10:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761215716; x=1792751716;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=guk8ied3i7SflVdNvJ7AH4PqA1mhHmmy3CcY6EReBqc=;
 b=ggwDyFLCgHYXXdpH1DF+ifFnXUxZuswHcHKw+h7cwzQQsQJ2L99Vw2po
 DxIt92sSv+v6xlPk5dvh4CkDYfVxEBV2b7w8RHr4PfR+djy+tYlyah2Av
 Y1IvVf+vmIXgsHW1DIJb6cS4JASBwD1WKwhCYGmctYVcbBNZFiYlTb+Mz
 R39GpJLfJAvdly8Bc6Qg2wbgLMBMDXGyH3eICaq80LsHtvziBtK7C3PUs
 m6VbhllGvVfYvUaAIBep8FRJvhOaCnoYaptAegU+oo/dANojfysyfIddU
 3VElO1PT+9uQI+/ASv/UNqvHGBOZvtLF8pl/Nc/FBuU3d+KxKv5nKGtXA Q==;
X-CSE-ConnectionGUID: RQ//WXlSRAuldK7US6U18Q==
X-CSE-MsgGUID: liuPVkrATIqhxxus4J54Cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="73671987"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="73671987"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 03:35:15 -0700
X-CSE-ConnectionGUID: yDdBnOD6Tcq8aTIzC4Jd1w==
X-CSE-MsgGUID: 3A4+K6FtQW6flPvV4agcGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="188519858"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 03:35:14 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 03:35:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 03:35:14 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 03:35:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NQTBm7XrjMD3iD22N6cAJ/EpGnYFz1gnr69ynxIh1AYPG2E0UVKaSJJ++pV6SJ13vBi3LpARgItGNE6I7kRH9GWuYdMmTtbCwTvtuoAcw3TIXwJQhKRcKN56ITI2g3z0T3ehtkJuRdNG/dcutYuP+YzIXOB54fCDGS5wEIn8qGAHPdLVCwGtFCTP0BTkgw2pDM0lYpjRJay7Yayp8zR1pHooahvYKJ2OsvCVNAvf5qCwlP9f0Phqz1TVydlkgHTW7MvFvp9i0Lj5yBXoMAeWUvTF12fyS6LfdJ2/H8ZZpU+i2qG6vTPt/pkUh7FzTLUBrvi5d1bgr+27Eu+utQ1bxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=guk8ied3i7SflVdNvJ7AH4PqA1mhHmmy3CcY6EReBqc=;
 b=BYd/tbZ0VqexfkYp4n/wJHAHusGiPdHt32w4sVmbLHg9viXeYdjoVNek64eJ3Q5EzxwWc0ccK1pwek3EofmNdHS0HFSsHsCNK12s4J2iqbBu+g646S16tOvTGxb6hgX4nkUU3gz+31mPlev1EWeI5BWOq+08SVcqgAB1q49GnfbVtR1HS4pIh30WjZ8Hf9msDUpckGXJQlygoBMq+cjl6HEEsAL16PAXvCY7rOacXUXWcTtqk32/FZ873tFbSlsvTyYHRkA2Yg4lFD0tshYxPkeyNuVGNnn7Wh7rVuB0Z5COqZ6l7C1AUltPT9epf9BRyH5NwpxgNoj7Ny6g+mYYBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6007.namprd11.prod.outlook.com (2603:10b6:510:1e2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Thu, 23 Oct
 2025 10:35:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 10:35:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/vrr: Fix transmission line for Adaptive Sync SDP
Thread-Topic: [PATCH] drm/i915/vrr: Fix transmission line for Adaptive Sync SDP
Thread-Index: AQHcQ/clrBBLCmGQGEuxLftEHMfGIbTPiXsA
Date: Thu, 23 Oct 2025 10:35:11 +0000
Message-ID: <889b6ce6df4a7f441f333a8c43a7a8a02c5bacf7.camel@intel.com>
References: <20251023081614.2645242-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251023081614.2645242-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6007:EE_
x-ms-office365-filtering-correlation-id: 575d570a-0022-4e33-ae39-08de121fd856
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?OFJTZDh2OTlicTJkMjB0WjNOZjJRZmN6Z2l4S0ZIWVdFOFJGcXorTnRYd3RM?=
 =?utf-8?B?bk9ybXMwVWhxSUR2cEtqSDN6bmMzaTVYYXhjbG1qbUU5RW1kN1h5aDR5dzEx?=
 =?utf-8?B?WFZBaFI3L1h5c1Q0cjBwaXoyRjErakZUK2Q4bVp2OGp0SlZqN1NZaldMYlVD?=
 =?utf-8?B?bHV4T1VDOGVWR2FKTms1clBnWWlKT0lQendqemZSMVl4bXBOSnNOQjJieCtl?=
 =?utf-8?B?cFhQVC9Tdlk5RVhHLzg5WTBNeDBXakRyOHNQZTk3cXpRQkljN1BxaUw2bzlp?=
 =?utf-8?B?R3JHaWtzSW1BTnhrUTRudUdockhWTmJZeVZZUUhMVXNsS3FQMmlzQmJKZzBU?=
 =?utf-8?B?UXlMNk5vZDRJQS9vcjRxbFlXcFk5aG5LMDUxUTU2Mi94d0JadHRscVhYYkl0?=
 =?utf-8?B?TFlhK3F5UDJIeWZJY0JKVk1MZGUweEN6WE1kVkFDdGdnNmhuZW5CbitmaG1V?=
 =?utf-8?B?dW80V1JmK2t0VFo4TmNXY2x1OG9jc2NrOS9CRVpNeHQ4OFhtdHo4SllUTFlz?=
 =?utf-8?B?bUQ4VkV0aHk3cDRyb3M0SkZWN01mdTFLQnk5L2pxNW5MWXpsQkRNeFo3Szda?=
 =?utf-8?B?aFpjUVNVN3VXQytNcllPS1Y2czhuWm9ob0pNaWczeWI1K2NCTWZTOWI2cGlw?=
 =?utf-8?B?YnA1bHNiZXkwbStqTDhOZ1lnSXlhTk0vU1E0a0VlNDF1ck9PT1VwbkNuSlJt?=
 =?utf-8?B?QkMzdUJzbVdpSGJ3M2hMTk1WdjNkcFZ2NXk4Q2l1OExsMVFzZUxPOFhpb0l2?=
 =?utf-8?B?NDdYTWhaeWRKZTR0VXZJTHdEbTFXUFBzV2phRjhvNGRQNGlEMXBTbkNENUpt?=
 =?utf-8?B?MXZMR1dUSVNqUUxTRElrVitVcG9taXdKWmNjOXJYNUY0bVlMUktVbzJNMktu?=
 =?utf-8?B?TG1ROHYrZUxKZ254OUpnTnBQaC9jVDBjY283K2tCS1VKdDZMemdDeHV5RGhX?=
 =?utf-8?B?d21aZklSeUxXaDl2MlZlVllzZk9LejRMK3U0NTk5MGZlL291czZDNm1tNWNx?=
 =?utf-8?B?a2lHRFlRU3M1a2JyazN6MHdlN1hvTk9EaWF5NDY3djJzYmJJMDA0Ymx2MTQr?=
 =?utf-8?B?UDBxNmswVU9Pbm5QRVptdmN4MUdUMGNBemh6TDhwK2pkSTFEdDdXMHQvRHBo?=
 =?utf-8?B?ZlEzdXUwNTJvZlpQYWcvV0pvZDdTQmorazdXL2Jkb3RVdG43d0k2WHpEeWdl?=
 =?utf-8?B?aVhnMDgxWlhHc3FlRGhxSEhGRkEzeGpxd0VUenRXRXpHUER5NGdBQVRrVXJ1?=
 =?utf-8?B?NW5aczVJYVVFTmxLa25UV1hQVkJNRVZ2STlPUmlYWlJ6U3B6WG9ySlVKMU13?=
 =?utf-8?B?WjVKWVQ5RFh6bjBJaWIzSjJGVWN0YmlqZjYwZWdqK0tZZ0pMMG85aDRhc2Jq?=
 =?utf-8?B?bnNzdUNla3pwV0U0WVlaSGh3bG5mNFVpdzdqL2x3NGhxU0Y4YkJVclJ4MmRy?=
 =?utf-8?B?M3czUC9tNERQZlRocE1zSVlGaWFSNkY2RDBZQ0krTzlqTXV6YUt3RTVLSm5v?=
 =?utf-8?B?TUNXL05RTXRLTzhabGhXQTRweDEvZU0yb2YzNEZZbktERGFjWUJlUWhDMzhq?=
 =?utf-8?B?YS9LSFpJSUQyWGRCSHk0VHFwLzZhWkFydzNzMFpTaGZFcnN0bVFBSkdkM2tB?=
 =?utf-8?B?ZjYrTVFyWkllVjNSbkFxTk5DSmZFcHZEUWtRRUNpakhEQm9xVGhrUG9iZ2k0?=
 =?utf-8?B?Tlcwdit4TzFKQUZ3YXBPNjEwR3FOWmcrTm9PL0JEWFIwZUNlVVFRdk0zV1A1?=
 =?utf-8?B?OG9lL0Erd1NYYU01ZDU1ZWVFK0FWWC93MjBueGJaWEFPc3dSaUE1Wm5xNEV1?=
 =?utf-8?B?dmJ4N3NjNlorbGlkTnhVWTFkZDBKbFRKcHg2UGt1TzZWTVpVR25PT3ZLbXk4?=
 =?utf-8?B?MGdzRUZJUUM4N2pvSGtwNHd2Ty9udDdELzBLQkVISGtnQXFhaEgyNW1QZi9B?=
 =?utf-8?B?SnZUc2ZuclFJU1FVVi8xMG5QSlpVbkxsRzkrdkhPUDNtR1RXZWdtTDVSYXU0?=
 =?utf-8?B?NmpmdzNZRXZ0ZHlEYlJHdklGeks3THl1TldWb2s4aDJEMmpkdUY4TU9idVpZ?=
 =?utf-8?Q?f5lIGB?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZVZFbDlHSklzNVUwUHBKWmlvYkU4SHN1UDY5R2RueVlyTHphd0tUaGlMcGJR?=
 =?utf-8?B?RStNV1VWTmMzQ1dRSDJ4WUo2dUMvQUJtTlRRNEJvRThGMVpOa3RIY1J6THA3?=
 =?utf-8?B?SE83aGpkZGFiRWhzM2NCeXJvcWRZaGZtVVFUVXRHZUgwUHZrdUlJK3k1T3lS?=
 =?utf-8?B?VzgzQ2NleDNSVXJZSWw0Y0NnQ0VwdllWRXk5ck5aRHh0bTRoR3F6ZDVFY2E5?=
 =?utf-8?B?WjZRMnY2dkQ5UG1UOEdJNmltTkpMV1VaTWFuK2xpNFRPYXEvYzdVck93b0p2?=
 =?utf-8?B?aTdpRDZka0FTeWszZFBsV0VqUldqYnZVd2szUkgxVk9ZbHdlMTJWSURISG5r?=
 =?utf-8?B?Rmo5NzhGR1J6ZmIwZE5BdmhoTk1ySE52ZVo3cVdxWnk3aVhPV3NreHdPWVVo?=
 =?utf-8?B?ZVcxQnpnR2p2TWJpenhXY0J5b3NqS3RFbWIxN3VucVlsL0pVVmlVNmdzblRj?=
 =?utf-8?B?ZVIvU2c0L041dWlmRjI2WjVVd1RJUVQ4dlhxQ0sva2liengrbUtPQi9BdGdh?=
 =?utf-8?B?YlRkVHM4OU82MEpBZ3A3MGJZWTJkNVZOdldYOWF6a1lMTDN5NXoxOTc3cVly?=
 =?utf-8?B?NHJVcndweGlpRjdDdUdtOWE3eTVMaUVBUnEzLzNwOFAzclVJRGxEb3NadW9u?=
 =?utf-8?B?SzJuYU9kWUN4bGNOcE9HdUlFZ3d3TURpRmxQcW1lQnA4WWF6NkxSb1hXQnNp?=
 =?utf-8?B?aG5FdkNHRmZwSWpXRkdZMks0djk2S3doS2xzcndJOXljaS9WaHhNdlFjUkpL?=
 =?utf-8?B?SFFUNG9NclA5Z2RTek0rT2dYK1M5aHVoaWZaTmxncHQxZWFSMWx4clhGc3FD?=
 =?utf-8?B?RFM3NlVNajVyUVZheDREV0YrbUIzWEJhNGVCSURoWnp0L0c4OUdGVldwbHRP?=
 =?utf-8?B?S1NDckppdUU3UUtqYzc4TXlUOXRaSnhnN00wdjd2SmRBQ1pjd3RJSWFHcVI2?=
 =?utf-8?B?U1YxT3IxVnpydzkvbVpzODRFUlRFeUFqSDNqY3RndjdXMnNRTnFOc1FTeEJv?=
 =?utf-8?B?WjJsM21iSEZCZ05ydG9pdUpFNjF1OElBSHVjWmlFUDFwaktWUWFVK1RxRUZm?=
 =?utf-8?B?NW4ySWgrd1ZaSVdEN1JPcE5md0JrdVhjdVdvQS9wZUx0VGcxNnhmTmRRVGZV?=
 =?utf-8?B?RFE0c0xLMHZkK1pwQ0pPTVBOZzd2Z29GdC80MDVaVU5Bbm1Mb0tzMzBQbDFI?=
 =?utf-8?B?a0lyMnpGd0Y0cjlHUk9qcUtkbUw1Mit4VlEzWmllaThHMVFFY2ZaMHdvTml5?=
 =?utf-8?B?Zzl5RXJ4Q2RMTytZQ24xY0hwWEkxc1JxcUlicG85QTdOTm9kc2U3dXJkbXh1?=
 =?utf-8?B?a1o2RGgrRTdMaFlHaFlXRk05Z3hXV0tqQ2EwbnVETnpBTkg4MktXOGlvcjVn?=
 =?utf-8?B?WDBSVzRnKzNWcUl1S01xZXRXQTNhQU9GVnhDeVRzZWZLQmN6alg4aTJjTWZY?=
 =?utf-8?B?eU9aeldHVldkMGh4TG5iUXlXcnBqRWk0Ynd2M1JURGdDNTFVN3pCV1kzRzZU?=
 =?utf-8?B?UWhVVTlGcURaM1hIa3QxRmVvaWRqOFlJaXNBNzIwbTVXalFXV1BNNFZIdWdB?=
 =?utf-8?B?VEVmdytvSEoyS09pZytkMFZHejJrV0RzSVFNK1JZM1NNKzV5ZzV5dkNtR2Fv?=
 =?utf-8?B?YXdmRkhTdUNwUEg3ZjA5ZFdmc0dXTzRSVklseXg3MysySTNGN3QzZ3VtYXRU?=
 =?utf-8?B?RkNrV2FseE8wZDlyd2NaOHh1WWxPS2JqZm9RWVBockk5YkplVGVHQ3dMMVVY?=
 =?utf-8?B?dDdobndxcmp6LzE3eThaY2Izanp4VEJBcGw2TkwxcEJmSEpRKzgrZnd0RnY3?=
 =?utf-8?B?RnNZMk1nZSs4Vks3YTl0ZlVRNVRlV3FISEtYVmRhdHg3QVZCVXc2bFYxZzda?=
 =?utf-8?B?dXZOb2pjMmowc2k2THlkd3U3ZEo1NGhPZ1dYUHBTQks5MjE0ckRkSDdPRHFs?=
 =?utf-8?B?ODhrczBGVjYrTWJLQUt2b2FyQnNVUXhyajdUeHZrQm9JN3F5d0p3VEJMWWhJ?=
 =?utf-8?B?NEQ5b3IyL0REZCt2VDd2OGdFMDExZ014dnp6QzZGL2wvTG0wWERwS2FWcVBw?=
 =?utf-8?B?NGwrRFpMZ09DQW5ocHpWd2paclNoNzFZRjJvRDZXaDlYUFY2ZlEwTDZ6YjJ2?=
 =?utf-8?B?dHlyaE9SOEFNaFlydmVENnNoaVJZVzJVblVWN2JkNGRNZjNIUzk2eG0wRjJL?=
 =?utf-8?B?QnFaaTUyb3BkakNibkFoZko5Y3pEYjFSdEorc0lySzE1VGJNb0JzSkNjbi9q?=
 =?utf-8?B?QmNkQktBcXlGcEVQYjlaQ0ZaYkRRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8961DCA6B98D5E47BBF249B07B53DCCD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 575d570a-0022-4e33-ae39-08de121fd856
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2025 10:35:11.5767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZQcUU/gik5Zu3vqFTITOwNg8Sy86bdOA8O3+5t+qbGyqzuJhV8B0tVvIR1OZZe6m9h2E+KVhAWuBRDicQWooJkxGqQL2CBHbpqZ9FXWp1fE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6007
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

T24gVGh1LCAyMDI1LTEwLTIzIGF0IDEzOjQ2ICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gQ3VycmVudGx5IHRoZSBFTVBfQVNfU0RQX1RMIGlzIHNldCB0byB2cnIudnN5bmNfc3RhcnQg
d2hpY2ggaXMNCj4gaW5jb3JyZWN0Lg0KPiANCj4gQXMgcGVyIEJzcGVjOjcxMTk3IHRoZSB0cmFu
c21pc3Npb24gbGluZSBtdXN0IGJlIHdpdGhpbiB0aGUgU0NMICsNCj4gZ3VhcmRiYW5kIHJlZ2lv
bi4gQmVmb3JlIGd1YXJkYmFuZCBvcHRpbWl6YXRpb24sIGd1cmFkYmFuZCB3YXMgc2FtZQ0KPiBh
cw0KPiB2YmxhbmsgbGVuZ3RoIHNvIEVNUF9BU19TRFBfVEwgc2V0IHdpdGggdnJyLnN5bmNfc3Rh
cnQgd2FzIGZhbGxpbmcgaW4NCj4gdGhpcyByZWdpb24gYW5kIGl0IHdhcyBub3QgZ2l2aW5nIGFu
IGlzc3VlLg0KPiANCj4gTm93IHdpdGggb3B0aW1pemVkIGd1YXJkYmFuZCwgdGhpcyBpcyBmYWxs
aW5nIG91dHNpZGUgdGhlIFNDTCArDQo+IGd1YXJkYmFuZCByZWdpb24gYW5kIHNpbmNlIHRoZSBz
YW1lIHRyYW5zbWlzc2lvbiBsaW5lIGlzIHVzZWQgYnkgVlNDDQo+IFNEUA0KPiBhbHNvLCB0aGlz
IHJlc3VsdHMgaW4gUFNSIHRpbWVvdXQgaXNzdWVzLg0KPiANCj4gRnVydGhlciByZXN0cmljdGlv
bnMgb24gdGhlIHBvc2l0aW9uIG9mIHRoZSB0cmFuc21pc3Npb24gbGluZToNCj4gRm9yIERQL2VE
UCwgaWYgdGhlcmUgaXMgYSBzZXQgY29udGV4dCBsYXRlbmN5IChTQ0wpIHdpbmRvdywgdGhlbiBp
dA0KPiBjYW5ub3QgYmUgdGhlIGZpcnN0IGxpbmUgb2YgU0NMDQo+IEZvciBEUC9lRFAsIGlmIHRo
ZXJlIGlzIG5vIFNDTCB3aW5kb3csIHRoZW4gaXQgY2Fubm90IGJlIHRoZSBmaXJzdA0KPiBsaW5l
IG9mDQo+IHRoZSBEZWxheWVkIFYuIEJsYW5rDQo+IA0KPiBGaXggdGhlIEVNUF9BU19TRFBfVEwg
dG8gVlRPVEFMIC0gKGRlbGF5ZWQgdmJsYW5rX3N0YXJ0IC0gU0NMICsgMSkNCj4gSW50ZXJuYWxs
eSB0aGUgSFcgY29tcHV0ZXMgdGhlIHZhbHVlIGFzIFZUT1RBTCAtIEVNUF9BU19TRFBfVEwuDQo+
IA0KPiBGaXhlczogZTExMjNlNjE3ZTUxICgiZHJtL2k5MTUvdnJyOiBQcm9ncmFtIEVNUF9BU19T
RFBfVEwgZm9yIERQIEFTDQo+IFNEUCIpDQo+IENjOiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5u
YXV0aXlhbEBpbnRlbC5jb20+DQo+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1
dGl5YWxAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92cnIuYyB8IDEyICsrKysrKysrKy0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA5
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gaW5kZXggOTJmYjcyYjU2ZjE2Li5kZDgxZDIxMzNh
YmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJy
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBA
QCAtNjU1LDE4ICs2NTUsMjQgQEAgdm9pZA0KPiBpbnRlbF92cnJfc2V0X2RiX3BvaW50X2FuZF90
cmFuc21pc3Npb25fbGluZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZQ0KPiDCoHsN
Cj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiB0b19pbnRlbF9kaXNwbGF5
KGNydGNfc3RhdGUpOw0KPiDCoAllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRj
X3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gKwljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9k
ZSAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLQ0KPiA+aHcuYWRqdXN0ZWRfbW9kZTsNCj4g
KwlpbnQgdHJhbnNtaXNzaW9uX2xpbmU7DQo+IMKgDQo+IMKgCS8qDQo+IMKgCSAqIEZvciBCTUcg
YW5kIExOTCsgb253YXJkcyB0aGUgRU1QX0FTX1NEUF9UTCBpcyB1c2VkIGZvcg0KPiBwcm9ncmFt
bWluZw0KPiDCoAkgKiBkb3VibGUgYnVmZmVyaW5nIHBvaW50IGFuZCB0cmFuc21pc3Npb24gbGlu
ZSBmb3IgVlJSDQo+IHBhY2tldHMgZm9yDQo+IMKgCSAqIEhETUkyLjEvRFAvZURQL0RQLT5IRE1J
Mi4xIFBDT04uDQo+IMKgCSAqIFNpbmNlIGN1cnJlbnRseSB3ZSBzdXBwb3J0IFZSUiBvbmx5IGZv
ciBEUC9lRFAsIHNvIHRoaXMNCj4gaXMgcHJvZ3JhbW1lZA0KPiAtCSAqIHRvIGZvciBBZGFwdGl2
ZSBTeW5jIFNEUCB0byBWc3luYyBzdGFydC4NCj4gKwkgKiBmb3IgQWRhcHRpdmUgU3luYyBTRFAu
DQo+IMKgCSAqLw0KPiAtCWlmIChESVNQTEFZX1ZFUngxMDAoZGlzcGxheSkgPT0gMTQwMSB8fCBE
SVNQTEFZX1ZFUihkaXNwbGF5KQ0KPiA+PSAyMCkNCj4gKwlpZiAoRElTUExBWV9WRVJ4MTAwKGRp
c3BsYXkpID09IDE0MDEgfHwgRElTUExBWV9WRVIoZGlzcGxheSkNCj4gPj0gMjApIHsNCj4gKwkJ
dHJhbnNtaXNzaW9uX2xpbmUgPSBhZGp1c3RlZF9tb2RlLT5jcnRjX3Z0b3RhbCAtDQo+IChhZGp1
c3RlZF9tb2RlLT5jcnRjX3ZibGFua19zdGFydCAtDQo+ICsJCQkJCQkJCcKgDQo+IGNydGNfc3Rh
dGUtPnNldF9jb250ZXh0X2xhdGVuY3kgKw0KPiArCQkJCQkJCQnCoA0KPiAxKTsNCj4gwqAJCWlu
dGVsX2RlX3dyaXRlKGRpc3BsYXksDQo+IMKgCQkJwqDCoMKgwqDCoMKgIEVNUF9BU19TRFBfVEwo
ZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIpLA0KPiAtCQkJwqDCoMKgwqDCoMKgIEVNUF9BU19T
RFBfREJfVEwoY3J0Y19zdGF0ZS0NCj4gPnZyci52c3luY19zdGFydCkpOw0KPiArCQkJwqDCoMKg
wqDCoMKgIEVNUF9BU19TRFBfREJfVEwodHJhbnNtaXNzaW9uX2xpbmUpKTsNCj4gKwl9DQo+IMKg
fQ0KPiDCoA0KPiDCoHN0YXRpYyBpbnQgaW50ZWxfdnJyX2h3X3ZtaW4oY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQoNCg==
