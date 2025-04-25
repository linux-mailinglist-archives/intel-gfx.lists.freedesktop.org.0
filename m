Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AF4A9C04D
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 10:02:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F8610E8AF;
	Fri, 25 Apr 2025 08:02:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DqxvhA0B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA68D10E8AF;
 Fri, 25 Apr 2025 08:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745568136; x=1777104136;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zLe7+IGw485qnOC6ETRPIdAFbqzVqGJ/f+9HCTd2+R8=;
 b=DqxvhA0BTV/KRcE9lzPvtf9fxs9PASZ9Uw5nlmmfkk6GMWufOGu4DgaO
 9qZmWEFPgdHbI8BbCczi0zXc7U++qsxUWbumVd7K4ha/esg3OsjTEYDPp
 BCbJRapnqVtZo0NDzgPe+rQnQJ2BPSHt/h+SfxJz4yKGHwxuDtlvl5Ou8
 Pay6ZA9LE4M7Rol4HgpvnEQlS9I8hFSs9l5sXJWjsEWJ0gOZnaZfFvyif
 uOmdv3AuLPjwfVvp0aotocvHBbZxSWaDjvV+/eNd73apptQuoOUf0z9Fn
 FUP/cGxcXy/moJSecSfG2SDIAQb0bl8wGsl50+21xPGrtratKfWCkD/2s Q==;
X-CSE-ConnectionGUID: b/uhq0MPSr+uxmjiUxJeZw==
X-CSE-MsgGUID: m2tiRgeRTX+Wte3TJ8F1nw==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58212240"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="58212240"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 01:02:12 -0700
X-CSE-ConnectionGUID: PhFAWmoWRJ27oVQFF0aeDw==
X-CSE-MsgGUID: Wlec5H3ZRdicHdx7T6Z7LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="133142319"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 01:02:10 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 25 Apr 2025 01:02:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 25 Apr 2025 01:02:08 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 25 Apr 2025 01:02:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TzQy9c5O+8eYVZp/Nx9CT6UDRkGWCf1y4bML7qKfrUDu5qsHC6cwbfc4gtBb7ev4DfK2AUfd9JcQLPG76N5hhb3I3oklk0M3taMbKEhZ2WJvwLXSiqtjmxqPFRrzS4jnDk56HFPW1wmLmmP9SpP81q9DOKcanqAAKP3uQ4cqET2Er10Gmb46eel+5xQSKUF6NJbil480xVfCifyw3Vp5JVFeSxVf2COegmK/4hndgeworRvHqdKswHSGjlzS2hbzLZZJFVZNjVU+XXcdbMQOMiNdpNq7YB5L0/6KEfYGxsFXJ/jAkVSb4cS5Qee+Q0b/Q8yo6hi+ZibEGlH+ORZpXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zLe7+IGw485qnOC6ETRPIdAFbqzVqGJ/f+9HCTd2+R8=;
 b=wz6tvn24B5M4FQ0kaw0frzet4mxUKqNiQ0e57tbUn5EnLXXdBpirzITp0PEg2DMinLpJQ6qH9fFSXSFxdHshYgEzDhT0DMsbl9ovF9w/KIiKnIFh37HPRkMGYTgUzls3gfMjTl9xD7ftRHt4M/iprjMDbzh0z7PvXigvHbCEn0zGSIqmCCEzxjmJcVdW//+P8B+wnY+SHdSGVqHzaOM6zwOoY9TAGSq1QYayiB829oLN2GVtFecW0QehSpR/IkZioHpJEsSoPS/YiEJiCvZYGFOM7AJDVB7+StMkQXCbP9X6htFoSNbHyAHxRomeLB2OG41g9B79B0FpqmGR6AWlsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ5PPFD56C4208E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::858) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.26; Fri, 25 Apr
 2025 08:01:50 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.8678.025; Fri, 25 Apr 2025
 08:01:50 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 2/2] drm/i915/psr: Move PSR workaround to intel_psr.c
Thread-Topic: [PATCH v3 2/2] drm/i915/psr: Move PSR workaround to intel_psr.c
Thread-Index: AQHbtDpXcS3pibRukEWdJ+uZCucoh7O0B5kQ
Date: Fri, 25 Apr 2025 08:01:50 +0000
Message-ID: <IA0PR11MB7307B43E44BF38C622AF01C2BA842@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250423102704.1368310-1-jouni.hogander@intel.com>
 <20250423102704.1368310-2-jouni.hogander@intel.com>
In-Reply-To: <20250423102704.1368310-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ5PPFD56C4208E:EE_
x-ms-office365-filtering-correlation-id: c053d2e5-4519-45b4-3968-08dd83cf6f81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?M1hLenUyTDNoam5yR0FZdFFaU1JsbDN1aWlseTA3NDl1aEtqZ1o3dUsrcWdG?=
 =?utf-8?B?OW9LZ3p1cHYwM09CZXFqV2hubnFxT1FUWkNWRzlsMVFpSVhQNUk2bmFKOWJU?=
 =?utf-8?B?TGViK1RhcmxSVE9YTEpQMnZ6RXdxZ3pjWEI4SzFLbmxUMTFFSzdtbjdsV0lu?=
 =?utf-8?B?bkd4WDZ1eGJKSmM5V2ZHMGNaVHo2amt0RWtxMEM5cmJpaHg5QmdqSitkcnRY?=
 =?utf-8?B?MmRyUGlwcm5NQ0pFRmNwS3Z3ajQ3OGtvRjVJS0MzdnErb0o1TForMDlPSU11?=
 =?utf-8?B?UHVxMCt2ako4UFhWTnJna1hWZjZZK0NvRkJtZk1GcEJoN3NLeUEwN1VOVDN3?=
 =?utf-8?B?d1JMQUxZS3dxSkNBNkw4TmdFUDVIQkxWQ29XcEhjRlhla1Y4b0g3cHJJZ0lH?=
 =?utf-8?B?THRINCtvcVVqSTZweG1WeEZxUEp3M2d0SnB6UElyeERnQWFjOVJVYzU1STI0?=
 =?utf-8?B?SFRqMm1GeVRZaWR6aDE1bUJlVEdzZ0ZpaVVUTi9meENoSk9Ua1RKTzBNSlJx?=
 =?utf-8?B?NEpYYzFBQk9qeXZvWllTd2NLbVRKM2s5bVV4bW81MVFGajFSOGk3ZmNxMkxN?=
 =?utf-8?B?emtHbHMxblVzZmpkaklBZnhnZklIWGhVaWpraDRYZnF1UjczNWJ0Rmp3Y3Mv?=
 =?utf-8?B?bStQdTVicDZZR2REM0JSZm9uRExzSjU4WlZ5QkIrZXlZdUVUNlByNEhKMW5L?=
 =?utf-8?B?eWZxeXBMcjl6WC9Mc0c4ZTdOY1dwdkt5am1YVk9Bb0tiQzNjWVhwZTZ6MHhF?=
 =?utf-8?B?cWs1Uk5qdGMxQVF6aWR6STJCeVAydmZHUHhMeDQvMnE1Y2NZYWhnNXNjNzBr?=
 =?utf-8?B?TXd4NXF6a29MK1lYTnJ0MlU4WFJqZDE5b0taeklLbVZGTXFjdC9aamxKRjhz?=
 =?utf-8?B?VHcrcW5RZWZ6Qlk0NUpFUEF0V0RRSXlXOXA5bThQKzhnbUtFbHlvSm1RQVFR?=
 =?utf-8?B?V3BKamJwRU5PeEdJMHpqNlNINHRzVFVWaWJYRStBYjZiUVpZdFREcHZocjcx?=
 =?utf-8?B?QWVmdERLeHJHcUc0NzNaOFJqc3U3NHZ4dTZMWG02bEFWV3BxUzdVelZDamo2?=
 =?utf-8?B?TnN3YmtKd0pFNmhuRWMxcFJPdURNdkpqd0FTMm9RaU9zdTZmYlphc2JtRDJq?=
 =?utf-8?B?OHdrekVkVzR6VTFsY0Vhbm94Z09NWWNjUy80dU5sdElIZHJUbW5IT3hKZGFn?=
 =?utf-8?B?Vm8wd2hBc3lRTHhWVC9UUnZ4bXRkYnVNakZNQ1pyVHQzMXMxM2J4Y1RFVzZm?=
 =?utf-8?B?eVpaMEJyQStNdjBqZE8vbHg3bzV1WmM2QTZMbWpJSmVJNTlqc0Z6Q3d0ZjVm?=
 =?utf-8?B?UWJ3TUxDMEhoUlBXQ3M3RzZxbUMva3htRlNGc0IrY2RJdVR4YVBQSGFSVkNp?=
 =?utf-8?B?ZU00N0RGTzEzMmtwVzFmY2c3Y21udE9zdnVWN2cvNVpCajBSSy8xeG9HNDVh?=
 =?utf-8?B?RlhzZk00UlhnTmEyeVhhb1pjYVlzUGR4dWpndis5c2xOVlp1TDBkVXpLYW9W?=
 =?utf-8?B?WGJTSGFaeFJwTklrbnliK2RjeVBjTG1RN1pnWXFLSkxhanpUalF2VFBmQWlH?=
 =?utf-8?B?VE5VcmNIZ0FHR1JmdmVjTEl1M0NVdHNJb0pZOXlHWVFjMGlFLzZCNFJzakh5?=
 =?utf-8?B?K1dCVkVObzcvaUFoNTBGODhTMjZ3MWprVjJ1U0l2cnBHMlNwSUVQWDZXOFp4?=
 =?utf-8?B?TUkyZ2duWitOMVdiNS9XbkM5NlhEUGVjS2hhYnhzTmVqQklEL2hnSGpFN1ZU?=
 =?utf-8?B?MG9JUTRaY2tmeHZFV3gxUE1aVzR5TnN6WC8rcTNoeklGMFNldTcvamJiL0lJ?=
 =?utf-8?B?MFhybzdXYVczaUtZQUZ5TGptazlXNkdFbXJIMk5FUjZwdlBCVFA4SkJOWSth?=
 =?utf-8?B?eG9Tak1ldit2ODloSnRJczI0ak9EQnlWc2RnN3NqUld0aTM1VSswSGxZNEU0?=
 =?utf-8?B?Rnp1MTRybGx2enMzNGlHZnJUaElSaFNqYm9aVUtTUzVEdGRhMUlaamp1N1NO?=
 =?utf-8?B?VTVKMVR1NGZ3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ny9lMXo3WWtMbzdvYllaZHNBL0JZYStFa1ZPc3lGMFc3aElpc2g5UXVEWXk0?=
 =?utf-8?B?MHhJbC9qWnZYSWkzaGJHTG5rbmZkQzF2VnUwN1V1YnFZNFBNbW90cmhxTlpM?=
 =?utf-8?B?TWVSazJMd0lkdGp5YThEY2hKVWVPQmdJVzVnN25uQXdGazd0ek55bTBSTlg1?=
 =?utf-8?B?WEJtRjJVd3U0VG50dlFJMzdWa3dWcTFvK0RaTy9qZDZ0SjQ2bzBuYnZXQkIy?=
 =?utf-8?B?S0RHUE0zWkxpcytOVjFRcDByVXF1bkJOVjZOMGxJSmorYXA5US9aRysvWTRn?=
 =?utf-8?B?a1RnSzIvcTZORVVKV0J2QTBVUERaV0dkOWJSb2tkMGU3RFh6L1pYS3NMbXNS?=
 =?utf-8?B?aXdZc05WZGtrTmwvTmkxakMvUUhySkNWeW5hWFFja3RVSUtoNzJRM3lVT21P?=
 =?utf-8?B?VU93UXRaUzFNcXlSVC9LOHRPY2JoNzRLTnJ4UlBBN2pPNlFiUFY2clRqNjJO?=
 =?utf-8?B?Sm1TVmUrWk8zamZOYVdJL3FDWHVMbVprdW9sdldtMGlFQ21tK01ZbGZmS2lr?=
 =?utf-8?B?d1BHdk0zRlhneVFNUDlISDErVGtTREJKMXRFd2FnZEMwTm5aTzRkN3psWkYx?=
 =?utf-8?B?QWVydWZtbDdvTXcvZjVWb0JvK21VaDdnRlpZWGV2Q2pSdjNvMGl6cDJCU0hy?=
 =?utf-8?B?WG9BM2RtT0dyUVNMVUxOc2FLTXNwRVhlWmVSWWs1WXA4Q2p0Z2JxakpsTURF?=
 =?utf-8?B?Z3NvWmRkbDZWNFB4S3pBUHg5MHBhbUZWc0owYVJ1azJUcS9WbytvL3h5NUNZ?=
 =?utf-8?B?dlZoN0RTMkVWTTIrc2QwNGI5S0xvMG9zR0o5YndXTXRDeUo5a256OFMyWEdL?=
 =?utf-8?B?RHlhNGpXYUJCUHR0V2JxSGlpcUdaWkw2ZUIzNVhYdE9RKzBvQWpLTHV5YTY4?=
 =?utf-8?B?a245Ym1WdFpydEVLVnBieDduQkxSQ3RWZXJ1VU1VSDdkeUI3UWxjaTJBa3lQ?=
 =?utf-8?B?S0FXNGZTUlk5TGZOcFFGakp1Ym1aLzZBNlNqandySmpXa0Z1eVNJVHpJZXVS?=
 =?utf-8?B?bk9oZy9aelhvUjBWaU1kMi9qMFFsQW5WeFl1dnFrOFR3Q1I2eVpkb0dnQWlz?=
 =?utf-8?B?dGthQzBweWFUQXpTMEJka280RlRZdDVJWUVBVVl4YlNyTHBGZTIyWnBMc3JN?=
 =?utf-8?B?YWY0NUZ2Qmcvb2VNMUJJRlcvZ3Mrbi9oOFNRaGZ3SVVSQVF3K0xFZElkbjVI?=
 =?utf-8?B?c3E5SDh2bE5jSFZtbWt4RGFpYXVBOHB1RG96c2RXNkRYTmhZcFoxbDNwZ3lH?=
 =?utf-8?B?RWdBMkpRUmZ1TGVvc2N1MEFJKzlROHVUQ1EzdWF2Rjg2QitFcDdtamxvUU5R?=
 =?utf-8?B?VHhTdFhic3cwM1BJU1Z1ODVqU2NmeVE1eCt3cWQ2STljSFo2V3l0UHZieGwr?=
 =?utf-8?B?WWpxNlBNQjdwc1dNZ1NweUsrWmpWOEs5RzUwVHpuS1VWRkJldFNxNERoMkVK?=
 =?utf-8?B?Skh2eWZ2c0tveGkyQmk2VS9aWk1tdXpGQ3VHZ2tpK2hCakE4azlzbnVEQ2Zt?=
 =?utf-8?B?NkdVU1U3dFlNa29DSjFnZ0t0VXkyVFlSYlZDS2dlT0JCR1BENDV1dElGS0Ey?=
 =?utf-8?B?VVZZUTUyMDQ2WlJOZ0lKYmFBSEVqODA4ZzhEUDk3VXJzUnFhdDUyeXlzOWN2?=
 =?utf-8?B?S29aa0VneXpjako1WXR0TUhLUS9HRUk1QjVOendWWHZoTXN3YVRMV2FMUWhC?=
 =?utf-8?B?dnM2S3Q3OS9YcVRMdmxzOFBQWHMzSzVKNkd5MjY0aGc0RGpQdHAxVExXZVdr?=
 =?utf-8?B?TTJkaFN5blY1VXp4Qy9iTE8xd2VHanU1cFdlbjlJeDRKcU02TGg3YVI0MWxs?=
 =?utf-8?B?VjR6ZExkejVlN3BmQmhLTlM0SWV0dU0rTHVaOHdrWGFSWWFaQm55STh5MnJw?=
 =?utf-8?B?b2g3NklrYnpMQ29saXEwallUa0hzUWZMdGxXd2lUZ0dPWFdORkVUNWRwZW1C?=
 =?utf-8?B?TEdCUGRvOU9UZDBtNXFHbStseGZOak94bjlVeDlwekw3ekRWUlBRUEMycXFH?=
 =?utf-8?B?OUlwMDBoc3lsNzdMQmQ3U0JWbzQ4T3J5aW00WjF0QTVjbURjNThkbnk0ek5K?=
 =?utf-8?B?SUFmbVpQRVdma2IvNUZORFBoQ0k2dW8vdVZWT0lpL2FnalFnTzJTelVSUUhr?=
 =?utf-8?B?M2VhdldDT1NJdkkwaEJPMzlSSkFhUTNHLzc0WjRRdXpBQm9naVlKRkFySEpi?=
 =?utf-8?Q?MuvJc6hSO0xbGKY6EViL1Y6vBWp8nyiNCe1sZJcCAEyB?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c053d2e5-4519-45b4-3968-08dd83cf6f81
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2025 08:01:50.8567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EFyMabjYR83AKIqcHDaVYKI26Mbo3TVOI256VY26uy+9TQx9zvLVSqqf8QbPa2cIdlD9BTmrgpcdsFvYuQkxbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFD56C4208E
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBXZWRuZXNkYXksIEFwcmlsIDIzLCAyMDI1IDM6NTcgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAyLzJdIGRybS9pOTE1L3BzcjogTW92ZSBQU1Igd29ya2Fy
b3VuZCB0byBpbnRlbF9wc3IuYw0KPiANCj4gTG9naWNhbCBwbGFjZSBmb3IgUFNSIHdvcmthcm91
bmQgbmVlZGluZyB2YmxhbmsgZGVsYXkgaXMgaW4NCj4gaW50ZWxfcHNyX21pbl92YmxhbmtfZGVs
YXkuIE1vdmUgaXQgdGhlcmUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQpMb29rcyBnb29kIHRvIG1lIQ0KDQpS
ZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQoNClRo
YW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0NCg0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMiAtLS0t
LS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAg
IHwgMTEgKysrKysrKysrKy0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwg
MTMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBhN2IzNWZjMTNkN2M4Li5jOTMxZTc2YzJmYTExIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiBAQCAtMjQwMiwxNCArMjQwMiw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19jb21wdXRlX3Bp
cGVfbW9kZShzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAlyZXR1
cm4gMDsNCj4gIH0NCj4gDQo+IC1zdGF0aWMgYm9vbCBpbnRlbF9jcnRjX25lZWRzX3dhXzE0MDE1
NDAxNTk2KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKSAtew0K
PiAtCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRj
X3N0YXRlKTsNCj4gLQ0KPiAtCXJldHVybiBpbnRlbF92cnJfcG9zc2libGUoY3J0Y19zdGF0ZSkg
JiYgY3J0Y19zdGF0ZS0+aGFzX3BzciAmJg0KPiAtCQlJU19ESVNQTEFZX1ZFUihkaXNwbGF5LCAx
MywgMTQpOw0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgaW50IGludGVsX2NydGNfdmJsYW5rX2RlbGF5
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgew0KPiAgCXN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsg
QEAgLQ0KPiAyNDE4LDEwICsyNDEwLDYgQEAgc3RhdGljIGludCBpbnRlbF9jcnRjX3ZibGFua19k
ZWxheShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAlp
ZiAoIUhBU19EU0IoZGlzcGxheSkpDQo+ICAJCXJldHVybiAwOw0KPiANCj4gLQkvKiBXYV8xNDAx
NTQwMTU5NiAqLw0KPiAtCWlmIChpbnRlbF9jcnRjX25lZWRzX3dhXzE0MDE1NDAxNTk2KGNydGNf
c3RhdGUpKQ0KPiAtCQl2YmxhbmtfZGVsYXkgPSBtYXgodmJsYW5rX2RlbGF5LCAxKTsNCj4gLQ0K
PiAgCXZibGFua19kZWxheSA9IG1heCh2YmxhbmtfZGVsYXksDQo+IGludGVsX3Bzcl9taW5fdmJs
YW5rX2RlbGF5KGNydGNfc3RhdGUpKTsNCj4gDQo+ICAJcmV0dXJuIHZibGFua19kZWxheTsNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDEwNTgx
MzQ0MjJiY2YuLmNhOTFjNzAzMzcxNGMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtNDgsNiArNDgsNyBAQA0KPiAgI2luY2x1ZGUgImludGVs
X3Bzcl9yZWdzLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfc25wc19waHkuaCINCj4gICNpbmNsdWRl
ICJpbnRlbF92YmxhbmsuaCINCj4gKyNpbmNsdWRlICJpbnRlbF92cnIuaCINCj4gICNpbmNsdWRl
ICJza2xfdW5pdmVyc2FsX3BsYW5lLmgiDQo+IA0KPiAgLyoqDQo+IEBAIC0yMzk1LDcgKzIzOTYs
MTUgQEAgaW50IGludGVsX3Bzcl9taW5fdmJsYW5rX2RlbGF5KGNvbnN0IHN0cnVjdA0KPiBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gDQo+IC0JaWYgKCFjcnRj
X3N0YXRlLT5oYXNfcHNyIHx8IERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMjApDQo+ICsJaWYgKCFj
cnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiArCQlyZXR1cm4gMDsNCj4gKw0KPiArCS8qIFdhXzE0MDE1
NDAxNTk2ICovDQo+ICsJaWYgKGludGVsX3Zycl9wb3NzaWJsZShjcnRjX3N0YXRlKSAmJiBJU19E
SVNQTEFZX1ZFUihkaXNwbGF5LCAxMywgMTQpKQ0KPiArCQlyZXR1cm4gMTsNCj4gKw0KPiArCS8q
IFJlc3QgaXMgZm9yIFNSRF9TVEFUVVMgbmVlZGVkIG9uIEx1bmFyTGFrZSBhbmQgb253YXJkcyAq
Lw0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwKQ0KPiAgCQlyZXR1cm4gMDsNCj4g
DQo+ICAJLyoNCj4gLS0NCj4gMi40My4wDQoNCg==
