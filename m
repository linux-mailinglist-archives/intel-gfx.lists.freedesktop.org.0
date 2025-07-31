Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E04B16D90
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 10:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE7E10E734;
	Thu, 31 Jul 2025 08:32:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/faOxIR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4742710E736;
 Thu, 31 Jul 2025 08:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753950744; x=1785486744;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0faNv83yCmIErsl6Y+IXCIxdXZU3g8OH/csncwqmfVs=;
 b=i/faOxIRKK0xsI/psYif6yERbQcA+SmfEbsmVYbr+WalminCV3d7oDzm
 637gN7rDONbI60A51qi8+3PMaxHw1qY1eTTicqxhElHKu4FgRcSznrj6F
 neqJ2nn2/iNWA6koRFC/FBqgA3fKl2ixX804JrYojGEa1zmzq/7eX96Ic
 mXFiNU8yvfqyVkOHZbtIh9wTqEREkaw4FRWWhVGvoRAP68TnxryjZ/5Ex
 0AHXM7ycv7viruZZIaEyKnFVr8zeIRQ/yNst3UR8RtF15xmhenjHJTT7C
 YuJLhi8PeXMXxglrNtdZn415ZM/bvJX98W0+WOx8iuQc5qHXaMneFsFEj A==;
X-CSE-ConnectionGUID: cJW1JurXQMawNRVoFguFuw==
X-CSE-MsgGUID: uMnCweaQQwexUf4w4heCYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="66537322"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="66537322"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 01:32:18 -0700
X-CSE-ConnectionGUID: 7oJ4eJskTOm8Gi7i93Ekog==
X-CSE-MsgGUID: d9q6BLhnRXynIMn56gDWMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="163228573"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 01:32:07 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 01:32:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 01:32:07 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.63)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 01:32:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lstda+YgD07tsDq1DPGfo8MkCiyPZFNzyWNt3x26aZ/aSxd/JQmylPuXvSYvRKSJTQgBDLknLICU2IvghpHOh0GeKDaHvrY02CGFbTT1xs5s2VBFrAYhSXETm5Ubiib3v+ty/8oZcXkhDK8RmlrY4CJrKE4UfTvv1KNzhQvTXopImkW2NvZsbUqHp6YeKMjPcvDE1VzMzp2ojJNSIEjhuSZIXnZQlvEHtfowLbBQJo2EWJvXSLD9m84LWmCUIIZD4XyZ9vuksJY0M+s9YT9C8UT/dNWTwpg52rCObYLi8AO34oVmHtNIOemvsMfS/74v23NgVBxSs3uoHAupI9yehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0faNv83yCmIErsl6Y+IXCIxdXZU3g8OH/csncwqmfVs=;
 b=YARqkRYmFs7DOFYTELb1DIZiABGapvadHuYcgW1mGsgIFyNj8z3V+0pcSgKdflHEQR4iMtz7NOF4i+VOBXASnE/9dczIWBZ3rdCEX3UsRF2zMt7dTx7ibN9PpoVEHqzI6MpVb1HkakqCW+7n7BKW5GbcMePllT7upFCCgEuRe8GvLecAB6Rc//AosNqCNPqdOw+yqn3/dM9BB6ZCN1t7nXw2TqtpqBZhZR+OxPPbTeh11gUIMU9TPcRm75QpKciH9Ajk81bN1atXLAbSUPSOTVfqTA3u7gxV+WVLXrccwU5RHaAA8eOVd0FlVqN+Ysee4o3z916nN7fImsHT9rdsDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8)
 by SA2PR11MB4891.namprd11.prod.outlook.com (2603:10b6:806:11e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.12; Thu, 31 Jul
 2025 08:31:24 +0000
Received: from CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::6826:6928:9e6:d778]) by CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::6826:6928:9e6:d778%5]) with mapi id 15.20.8964.026; Thu, 31 Jul 2025
 08:31:24 +0000
From: "Usyskin, Alexander" <alexander.usyskin@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>
CC: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger
 <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, Tomas Winkler <tomasw@gmail.com>, "Jadav, Raag"
 <raag.jadav@intel.com>, "linux-mtd@lists.infradead.org"
 <linux-mtd@lists.infradead.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] mtd: MTD_INTEL_DG should depend on DRM_I915 or DRM_XE
Thread-Topic: [PATCH] mtd: MTD_INTEL_DG should depend on DRM_I915 or DRM_XE
Thread-Index: AQHcATvO9HTIDCWzyUOkCb+UXhZeGLRKd+2AgAAKEoCAAWRwAIAAAdjw
Date: Thu, 31 Jul 2025 08:31:23 +0000
Message-ID: <CY5PR11MB6366BE84D8D6800CE4282691ED27A@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <07f67ab8ee78f6bf2559131e193381aafff7479a.1753870424.git.geert+renesas@glider.be>
 <d947168fd02d6f820159b456099e6aa8f465b633@intel.com>
 <CAMuHMdUJF6V4v1+zbKKG1A_UvHUXU-ySXe7Xj_ryZtRnk2B2nQ@mail.gmail.com>
 <b58c7cdee44b573c84e0f79dad2655f8286bc89a@intel.com>
In-Reply-To: <b58c7cdee44b573c84e0f79dad2655f8286bc89a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6366:EE_|SA2PR11MB4891:EE_
x-ms-office365-filtering-correlation-id: ba2270e5-a81c-4fce-65f8-08ddd00ca270
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?c0tPekxMSXNYRFhZYUtscDUyRThiNjFmV2d0OTBkdmVkSW9qbVFpVWJjRWNS?=
 =?utf-8?B?SkQ3elZKZVc5VmQrNGtUd1dRMzFjTUt6ZUZyUmZza01TM2gyQVBGR3dkUVBy?=
 =?utf-8?B?UmJDZlArR3hTNm9JNWRmOVJNaXRwNXJsU1Y3UjNBUk1WQzRWekcydG9xcGpl?=
 =?utf-8?B?NjVWdktYN0dNRWl6M05maFdYYkl5M2R3M3g3bFF6WE80TjJ3SU0xU2hOSXA4?=
 =?utf-8?B?Y1ZJSVhjZXJJU1h4TzBxTTU1ZjVrVEF4TmdkRFYydkEyclBKL2VxV0xINTlU?=
 =?utf-8?B?S2R2VHQvQmxmSW56TFpzUStzK3NFaUhVckhPamREUkJqeW5SV3dSTUd1dFpj?=
 =?utf-8?B?aG5tSHNaSVZuQjh3a20rRWlmREdJWHJvQ3g3bkFrTFp2VzdJMVMxb3kwSlJw?=
 =?utf-8?B?MUVrVzMyL1BWNEo5MzBmd3dWZkg0MVp0N2tqWUlxMC9XbWRiTjFqZExXOE0z?=
 =?utf-8?B?MzdtTWRyZFhISUZDbC9GRFlucVRlTkN2ZVpRaURCRVlFMzluZlJmTlE4cHRv?=
 =?utf-8?B?dTBmZFlURFFXZ1duVCtDVElSMFVYbllCeUJTaGNFdnQyalBHRGJKVWRJNGd5?=
 =?utf-8?B?NVpTQm9YNW4zazVvSmxPNS9rV3VkV1IrR0lTeHlsTTl2MlViUFdrb2hyK1ZI?=
 =?utf-8?B?RGhNSUc1U21sT0QyMTFhc0pHdE41QnVnQVM1QjdqQ2JEQ0xKWHJ0TkI1dHdq?=
 =?utf-8?B?cVRSY1F1dVFoeGt3Y1dvdEEveGFZOTB0L01VUWxCZ29QSkh4U0ZLdzZ1UlVB?=
 =?utf-8?B?ckJMOCt4enkvYzBGQjFZZVBzMmd1MWZiN1RpTmtKQXB0aVJrTi9lWWpJT0Jp?=
 =?utf-8?B?N3E0S0JLVGFFS0hTK254SGphTHFSekhvMytoOGovRWRxcHF2L0JBZ1hKTzJx?=
 =?utf-8?B?SktxV01DdDhwcW1QVTQ3OFI4LzIyVFJQSmx0dlRtd2NhRUJtdWlWL0c3SWNM?=
 =?utf-8?B?WFR0cHFEMktqNU9SZDZ2KzRMc25JZG80VGp4enR2aHdwRVkwNHFYOXF2bWJZ?=
 =?utf-8?B?VjVJaFlqY05CMDFrR3llNEM5YnBtLzFBTmNhUDUrQ3UyZTNNSm52eFBNZVo2?=
 =?utf-8?B?T05lay8zcjhlL1VFMy9MSTRlT2MvUEU4cmNBczFRakJlOTFGYWRvd0J3T3BB?=
 =?utf-8?B?LzljbzNtN2k0cFAyd1NaVHUzeHBIQmpQaGZBZWFZaXA2WWwxV2V3cFRaZWVo?=
 =?utf-8?B?cTluU3NZZUpld1g0RitkQ0U2bWJLLysrQjcxTTQ3WlpjS1hoVzJkOE1adFB4?=
 =?utf-8?B?d1J5STN4b0U5K0ROcUhibDgraDhvUG11SERJaDNzVUlYTG5ONkprbFUyNGFI?=
 =?utf-8?B?TlpjWE01YjRDc1R3SFAwamxidHJvTHc4azBERmxuVzVpZ212dFpJdUFNZ1ZQ?=
 =?utf-8?B?MktTVTlyNmVHcXJ1YWZSNkZkdElnS3BBZksxTS9tVEFybklPeTRTQ3R6YXN0?=
 =?utf-8?B?dUhmNUd3NEdVWk56cEphNVF0aUJFS1FTQ1BLU0xmZjhmLzZQNEZTRzBHaXd2?=
 =?utf-8?B?cWk5OExRV1lkdGRhT3kzMVlZZUJiaE9NdGp3ODZKci9vdkpkdmdRNEgraG5X?=
 =?utf-8?B?Z2d1OHIvOUJVeU5ISFlkbnpmSlhCbjQ5OHdaUzd2MWUvdnVlajNxMEZYSWR4?=
 =?utf-8?B?bjcvaEw5UW1ETUloTG5YaXhSdmplSnpFYW90MzJML1pLQlZtOHViTEhiZ3ZW?=
 =?utf-8?B?YVZrWkZ1OFJMZytHNURyOWQyRFdxOVJiRDJPY25YOS9TQ20zVnd2d3NISVhF?=
 =?utf-8?B?LzExMmhyek4xS2xxVnA2bCt4V1RvSytWV0JXb1dIWWc3bFd3V0c0NEVQcVhN?=
 =?utf-8?B?UVh0ay9zVFFWdUptT2VEbi9xbGtFUmw2WnhINTZsaG5jZDk5ZWJUWmQwUEdB?=
 =?utf-8?B?a1NQcVU0a1R4QXFoMEdxdEo1bjZMN0Y0UFFKbUYyRE1MMFZ2N1I4LzdvL3Bl?=
 =?utf-8?B?aDQra01NQnRnaFZhclRTNnNTci9ScldyNjh1eTZLVVFnZEZqR3hQWE0wejJO?=
 =?utf-8?B?c2JMbjdFMnZnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6366.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFVPYmJwZGJXV2IyT3dDSlpRbjFHRnVhWlRNWWc2b2xlbVJmVGdGdjlneE5r?=
 =?utf-8?B?aFhaVkdRZ0xvTDk2SnA5ZEUxSTN0Rmp1OFM3Sjdyb0FESmpwWm5aakxuTEl6?=
 =?utf-8?B?YWI0M2Y2dG5xYzZIdnR0QzNqak0wb1M1UHliaGl0Y2RvcmJiYWpzV3lBQmVO?=
 =?utf-8?B?OW1ORlE1UHRvejFxek9ORStFd0ZwTHJ1SGIwUnEycURTMXFkeSs1RjFtVzlq?=
 =?utf-8?B?YXlvT0crclBCMWRxTzFKUDFrQ2ROWXprSWxkNE0rd0ZhN3cxVERCNlI1WEln?=
 =?utf-8?B?bVkwbW40eGlnMFg0b2k0UFg1YWttU21Ic1hsTnhFR3BtOS8vaURjVHFiVWtC?=
 =?utf-8?B?blJtMnpRWnRURnZKRkRVL1ljOTFUSEtQSTVMdUMyekdIWUdEbTBaMHhySWdJ?=
 =?utf-8?B?N251RmZBWmltVU1TZVFaU25zNUdXQlAyZlVvdm9ieU8ydTJzUkxDSlRrTUJZ?=
 =?utf-8?B?MGJjdWtyZ0hOWWcyMk43R2VkTmdZa0cydVdVcW9Za3QzN3VLWitsU0U4Ynpt?=
 =?utf-8?B?ZDBBTmFpOGp1ekg1bXc3SHQ4VytSSmE2dGc5dDRVTVJGL1RHWU85NmpnWmow?=
 =?utf-8?B?UkY0a0FaRWxOZC9VZjBhQXBlbTcxSE1Ldk4yQTRCOWYva3llUDMwSDZYMkt3?=
 =?utf-8?B?eXlGcE8zVUpSMGZqeVhHMUs0WDkrVnIwVUE0RkdCbGJsT2xiVjc4S29hNDhG?=
 =?utf-8?B?eEJFQ3V4czEzQzNXV1hnUHlmQy9UbjFwWU1sRXBCWENTbUo0ODRSUS9ZL05K?=
 =?utf-8?B?dzNIbHl0WHZvblBFYkFUSGRJaE5YRHczNmtGVnllMnpabUFraDlGTFhwMktB?=
 =?utf-8?B?aVVtemZ0bzNJNFB4dkkxeWZuZndoSlViQzU2NndpeDI2L2JJZmFWWEVtZVox?=
 =?utf-8?B?UFhLd0FHMjJnOFBnT1BTT0JFeWVtTnhmUEhhekIyRlNST0JHM0FaQ3ZaS1VE?=
 =?utf-8?B?Q2YwYVJhTllJVmNKTUMzTWxPaE9ZY0ppajUzYW9hWHl5b2VoUlc2cHd2NW1O?=
 =?utf-8?B?Skc1cnRCZXMzR04vQnhTUHFaMVdra1dleDlyWDNMT0Y3ck1Eekc2dTQyQTVr?=
 =?utf-8?B?MHRyMEo5dGxUcU10WDNpUzZzZ2g4Y0FrRExxbU16VXZEbUpzeWxWeUVrbU8v?=
 =?utf-8?B?cy9HYmhrWXRZbTBBZWF0ZGoybzRHZGFXUVpKUXZFNUtUN1B2bHdGclhsRUFK?=
 =?utf-8?B?aDFkTi9qK0plZW1sZk5ZcXJmRTFlclJ6VHBUSmdZQWlqZ0JtZ29MYnVFenhq?=
 =?utf-8?B?cmdZZERpTjVUd1NDZndwN25JcHRZcFV2ODlpRzNxeDRwcmU5K04zNm1Gdjg0?=
 =?utf-8?B?U3BQY2xGaHlZQWhmc3pnTmJFcWkyYzRtVVRrRGRUZXRjTWVqdU85V0ZodDNR?=
 =?utf-8?B?Q2lBM1E5OEtHSVNSVXAwOXZ0aDg5TTVocXllcHBCMmFENXYrTkRYVjZlRThw?=
 =?utf-8?B?Z2xrZjYxd2l5M3JDODVmcjdicDYxNnc5Z0lWeXVKY011UHVzWWFQWEhadFpK?=
 =?utf-8?B?c3psZHFSMFNWS1pLUFVlMW10bDVjY1dSSXltcTcweWp6cXdzZDBRd0M4b09G?=
 =?utf-8?B?MzV5U3BIeEtmVWdtc3lhWExZNnVXWVVRRDB1K1NVMjlYZXN2azJiY1dJbmJV?=
 =?utf-8?B?QWRjV2tXWHlmTWNZN2JOS0VVS1ZjK1lhdG52TmRlb2wxU01PcGlaRXJWS2Nn?=
 =?utf-8?B?S2dERXVUamp6SmFrVStoK0YyTVI3VTcvRmJ2NEpCS2ZVNGV2YXJtUUpiOHZk?=
 =?utf-8?B?Umw0VlA1VmRLQllXcDBVKzE3bmdhbitPVGFEd01pa2czQ3ludDBuUVBqUmYr?=
 =?utf-8?B?bFNPdDFURzVuL05YYWZneFJrM3Y4MWI5YUFhWlZ5SUZKcDlvZDdscjFMRUQ0?=
 =?utf-8?B?dWNQMFJoYkxpTWNhOGw2MFRROGxQMzE4dmNyNlNLM1VZc2liQ1NXaldabWtw?=
 =?utf-8?B?WjhmVU9kVy9iSno4L0hIazJUSnFTT3JHQjI0Kzdwa3gvbFlSMktJM3cxK1o2?=
 =?utf-8?B?M2FKZFZTYnBXU1psdWc1cmZxMjJudHQ3Q2J5ZURtNnRFR3VhcG5WOWVoMXhT?=
 =?utf-8?B?NHFSYkdTWFFNdVVyQkRxT28vV3JQaTF3eGpESW5UaFF0dXBrQ2ZqTXRnckFX?=
 =?utf-8?Q?aUGYokEhmKXKczEfZgquvDH14?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6366.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba2270e5-a81c-4fce-65f8-08ddd00ca270
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2025 08:31:23.9685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XWHy/ejjprp7ag4I4Npr6ySdzthOtuNATKbW0556NkMewLqfz78MA5oUx3Vz2fu6n7qoAXo6aJzm0MfTWdpg5dG0AwyIVYqZZrTbCr2462o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4891
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

PiBTdWJqZWN0OiBSZTogW1BBVENIXSBtdGQ6IE1URF9JTlRFTF9ERyBzaG91bGQgZGVwZW5kIG9u
IERSTV9JOTE1IG9yDQo+IERSTV9YRQ0KPiANCj4gT24gV2VkLCAzMCBKdWwgMjAyNSwgR2VlcnQg
VXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4gd3JvdGU6DQo+ID4gSGkgSmFuaSwN
Cj4gPg0KPiA+IE9uIFdlZCwgMzAgSnVsIDIwMjUgYXQgMTI6MzIsIEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+PiBPbiBXZWQsIDMwIEp1bCAyMDI1
LCBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPiB3cm90ZToNCj4g
Pj4gPiBJbnRlbCBEaXNjcmV0ZSBHcmFwaGljcyBub24tdm9sYXRpbGUgbWVtb3J5IGlzIG9ubHQg
cHJlc2VudCBvbiBpbnRlbA0KPiA+PiA+IGRpc2NyZXRlIGdyYXBoaWNzIGRldmljZXMsIGFuZCBp
dHMgYXV4aWxpYXJ5IGRldmljZSBpcyBpbnN0YW50aWF0ZWQgYnkNCj4gPj4gPiB0aGUgSW50ZWwg
aTkxNSBhbmQgWGUyIERSTSBkcml2ZXJzLiAgSGVuY2UgYWRkIGRlcGVuZGVuY2llcyBvbiBEUk1f
STkxNQ0KPiA+PiA+IGFuZCBEUk1fWEUsIHRvIHByZXZlbnQgYXNraW5nIHRoZSB1c2VyIGFib3V0
IHRoaXMgZHJpdmVyIHdoZW4NCj4gPj4gPiBjb25maWd1cmluZyBhIGtlcm5lbCB3aXRob3V0IElu
dGVsIGdyYXBoaWNzIHN1cHBvcnQuDQo+ID4+ID4NCj4gPj4gPiBGaXhlczogY2ViNWFiM2NiNjQ2
Mzc5NSAoIm10ZDogYWRkIGRyaXZlciBmb3IgaW50ZWwgZ3JhcGhpY3Mgbm9uLXZvbGF0aWxlDQo+
IG1lbW9yeSBkZXZpY2UiKQ0KPiA+PiA+IFNpZ25lZC1vZmYtYnk6IEdlZXJ0IFV5dHRlcmhvZXZl
biA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+DQo+ID4+ID4gLS0tDQo+ID4+ID4gIGRyaXZlcnMv
bXRkL2RldmljZXMvS2NvbmZpZyB8IDQgKystLQ0KPiA+PiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+PiA+DQo+ID4+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbXRkL2RldmljZXMvS2NvbmZpZyBiL2RyaXZlcnMvbXRkL2RldmljZXMvS2NvbmZp
Zw0KPiA+PiA+IGluZGV4IDQ2Y2ViZGU3OWYzNGIwYjcuLmYwYWI3NGQ2OTUzNDcxMTcgMTAwNjQ0
DQo+ID4+ID4gLS0tIGEvZHJpdmVycy9tdGQvZGV2aWNlcy9LY29uZmlnDQo+ID4+ID4gKysrIGIv
ZHJpdmVycy9tdGQvZGV2aWNlcy9LY29uZmlnDQo+ID4+ID4gQEAgLTE4NSw4ICsxODUsOCBAQCBj
b25maWcgTVREX1BPV0VSTlZfRkxBU0gNCj4gPj4gPg0KPiA+PiA+ICBjb25maWcgTVREX0lOVEVM
X0RHDQo+ID4+ID4gICAgICAgdHJpc3RhdGUgIkludGVsIERpc2NyZXRlIEdyYXBoaWNzIG5vbi12
b2xhdGlsZSBtZW1vcnkgZHJpdmVyIg0KPiA+PiA+IC0gICAgIGRlcGVuZHMgb24gQVVYSUxJQVJZ
X0JVUw0KPiA+PiA+IC0gICAgIGRlcGVuZHMgb24gTVREDQo+ID4+ID4gKyAgICAgZGVwZW5kcyBv
biBBVVhJTElBUllfQlVTICYmIE1URA0KPiA+PiA+ICsgICAgIGRlcGVuZHMgb24gRFJNX0k5MTUg
fHwgRFJNX1hFIHx8IENPTVBJTEVfVEVTVA0KPiA+Pg0KPiA+PiBJIHVuZGVyc3RhbmQgdGhlIGlu
dGVudCwgYnV0IElJVUMgYXV4aWxpYXJ5IGJ1cyB1c2FnZSBzaG91bGQgbm90IHJlcXVpcmUNCj4g
Pj4gYSAiZGVwZW5kcyBvbiIgcmVsYXRpb25zaGlwLiBDb3VsZG4ndCB5b3UgaGF2ZSBNVERfSU5U
RUxfREc9eSBhbmQNCj4gPj4gRFJNX0k5MTU9bSBqdXN0IGZpbmU/DQo+ID4NCj4gPiBUaGF0IGlz
IGluZGVlZCBhIGdvb2QgcG9pbnQhDQo+ID4NCj4gPiBXaGF0IGFib3V0DQo+ID4NCj4gPiAgICAg
ZGVwZW5kcyBvbiBEUk1fSTkxNSE9biB8fCBEUk1fWEUhPW4gfHwgQ09NUElMRV9URVNUDQo+ID4N
Cj4gPiBpbnN0ZWFkPw0KPiANCj4gRmluZSBieSBtZSwgdXAgdG8gQWxleGFuZGVyLg0KDQpUaGlz
IHZhcmlhbnQgaXMgZ29vZCBmcm9tIG15IHNpZGUuDQoNCi0gLSANClRoYW5rcywNClNhc2hhDQoN
Cg0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxhLCBJ
bnRlbA0K
