Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D71FAA8068D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 14:29:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F8C10E224;
	Tue,  8 Apr 2025 12:29:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dg5KK9Qv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6007810E21B;
 Tue,  8 Apr 2025 12:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744115344; x=1775651344;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T+JiT4fo9HkP217Co8/jVomRY8jOAV79ahK045yhswA=;
 b=dg5KK9QvKLae+MfRNrH6HmI/1G+COgaYYa6kwqAYBqNzpv1r9Npzep+5
 dSN3XqQs9xv0/pCEPdlRjHc8lIWytWJnENiL0fFFMgsDNNdWYVUZ4zWbP
 5+MluYQkt6JSscnF/TzOBhZHD1hZhlaAxeCJj88UnkflkCQFXzlfTgsuw
 I/GXsfA7pVxQw4CNyem0WNjSqJLZZeVjGz9IioesZyiycc/CjG33CneYy
 6STwffo+liR6QSWGrESx68Nihvigve9p1sfExrqZPxGtVl/JQVrgI+Ts2
 GPpA3WCVTYX5puIZ/Lrm6H0LCeVy0bkz89kMT1qXiG5EQ3YO9MLKUSaQO Q==;
X-CSE-ConnectionGUID: WoqUn7gqSPGprl+UZmoHCw==
X-CSE-MsgGUID: TlRLl1ioQvymyctLs7J0Ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56209650"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="56209650"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 05:29:03 -0700
X-CSE-ConnectionGUID: TUj3LOiVTPiKdzi1SR9HdQ==
X-CSE-MsgGUID: WROrp5e4ShKr8bZuYBBeAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="132980748"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 05:29:04 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Tue, 8 Apr 2025 05:29:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 8 Apr 2025 05:29:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 05:29:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wy8ggepI5vlJAi8M912o6faP3vXjJ7YoxxIEeHtFEPH5IzT2CC3WdPtZcN2SbBxVLqmp72cOFoDQnNenXUkPOzUv+XToaOWoMDMq1S14NxgN7QuYgPl9bjfovvVIT++XnVeiLy3MIEkp8B14h4EX6PY06Fc7c431QcA53cZx6cm3u1PqR4jESdk/D53Gu8S9ODIb30lsJQCU+DfWWjT/fM6N5zVSlRqeJLAB34lf6QfkgexsBHQE3t0+nG+TTSiU8Tr3ZWhT8R8yUcT2C7b8Bxjm6H78KQo7gnaDMDChvXiC6XGfcsF1usOXpMb7/jRGDcxZyIgP7a37OHkHUE1UEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T+JiT4fo9HkP217Co8/jVomRY8jOAV79ahK045yhswA=;
 b=pIvbdsDhM6iPcrOZ8cBubLosiaTcPnk0/Y0CRDdURwldDwkKJ2CkuCdkpz22PGZ1J709pOxeL9Z00jqXPJqimivLnmlK4TOricsRUv/GplfZcMI/AM3wfJjPdlC1Gs6g+XpwNOIcnUyiCbCls9Ui3X3x3Fry1C44sRsrLHmBF+DTkO1WWbjNcjFN8b1MnGV4PlKzjeKrXR3gWcofkUvX9yLWUPxE0h0Fg7u058ugMhrDu4kYlBgwmH04Q2qgtuJDq9cCTGxR3NOmtXjHHVC07OsjC+npAeuJF+dBGE3SjtG4/GbGgVeY1S1cCMOBKMFmjJdHLHjVWj58ytfuiwz62Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SJ2PR11MB8537.namprd11.prod.outlook.com (2603:10b6:a03:56f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Tue, 8 Apr
 2025 12:28:55 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8583.045; Tue, 8 Apr 2025
 12:28:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 11/11] drm/i915/display: Rename vblank DC workaround
 functions and variables
Thread-Topic: [PATCH v2 11/11] drm/i915/display: Rename vblank DC workaround
 functions and variables
Thread-Index: AQHblxVZwaksipciH0mbt/e2vk3ntLOZ1VBg
Date: Tue, 8 Apr 2025 12:28:55 +0000
Message-ID: <MW4PR11MB7054D50215EA861B8BBE1AF0EFB52@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
 <20250317081905.3683654-12-jouni.hogander@intel.com>
In-Reply-To: <20250317081905.3683654-12-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SJ2PR11MB8537:EE_
x-ms-office365-filtering-correlation-id: a9e7fd97-2617-4ccf-c7bc-08dd7698ee04
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?bGtaMUlrSkg0aEpTT2ZWRE1weWJ3TlVmcGlwRkdPLzZEVytjbzRKYmo4QWtL?=
 =?utf-8?B?RnlxcXRpTGozdkVRT2gvSklmNlIraVF5c3FrRGhMcnJKZDhkMDFWWUpORVRL?=
 =?utf-8?B?ZEVDdEIwYlpFMEdSSWpLR0Y4ZExlU2hwdjNaUW0rRm9aeFpuaVAzVGtqbHJ0?=
 =?utf-8?B?bmhPWDBQM2d1dHJQaXg0VkRrWHJoT2p4OW5YYXg0MGpGUFZOS1Z0UHJHNXdW?=
 =?utf-8?B?ZDFVOTlIYnRPN1pmcWxycVlYM2gvWTVWUmF0YjVVcnBrV09KSXB6aXR0ZnJ0?=
 =?utf-8?B?NXlLSG1OQ21NMVl4L0hpWkJGb1V1OFdZbVZ6bG5DM01rWkM0YXBWMXJwTDQx?=
 =?utf-8?B?bkJTU1NKSGYwN1ZIbjBOWm85c2YycmtGeTl0RWlFcTY1cldnSko3Znd6NnBm?=
 =?utf-8?B?L0xzeEpxVitLN0hESVJPMjVVdHU1VWRROTFoZzlhL1duZkJGbERWTlNLS3NP?=
 =?utf-8?B?WkJOVHlGMk53d0tMRDRiV3JaZ1lSc3N4Wk53dDg3UzhUMy85UlhzUnJCUGJM?=
 =?utf-8?B?K0R0TmE1NkpLL1JFMFNPRE5uVVZ6V2hHNDRkNmhMQ3N4cEN2VStXb2k5QlAv?=
 =?utf-8?B?YlJNTjFSK3oxM212d1pmNHhjOXltOEpVeldjMGdJUEo5U3FNeGd3eTI3YTV4?=
 =?utf-8?B?Z2dZOVdBRStQMHdPMnZqSEhRMWNEUk5yMGE0Qy9DWWYzRVFMcUNOU04wMDdN?=
 =?utf-8?B?Uk9EbjhpMktaWTA4SS9MUVpBV1ZVRlVJeHJZRWdNUUtDN1FvVUhUSkl6Zi96?=
 =?utf-8?B?R25LbFNMWG1CRnVHQW1POVZ5ampUeUlwUFdPaG1vNzBrRDgyeXluT2J1UjQ4?=
 =?utf-8?B?a2lSM3VhTVJuckQwWXVIdTBUZTM4Z1NBKzRVZGhrMkVZQ2dYNDRMeXU5QXpG?=
 =?utf-8?B?ZVltRDdEYUpjVG9GL09kdlZPNWh6NDhjK09ubmZ3S2tsZkZVeUxTRXNOenRD?=
 =?utf-8?B?K2QxWUEzL1dHN2lkWm8wWTkzYWxub3VxNDBic1JMSU5IQ3dOb0lvdXRRUGxw?=
 =?utf-8?B?eksxa2pySjhEVHgrdkcxVDRZenFobFhER0pkTWxsRVk0dUwxSXdzTURWMUlu?=
 =?utf-8?B?Q1FRdGg4RDJ5N3FHYkE0cHorTmVkVkx1RDduVGx3L2JvV3l2NEpIWU9HazVr?=
 =?utf-8?B?N2QzWXJKWGVQY3FTK3g5eGtpeXI5T0F0R0d1WkdsYVlnckU5cktVbys2K3lB?=
 =?utf-8?B?cjk1Y3VWUDRKM1hlYU5yZjFOdGVwNG5wVzkrVWdpazc4NjM5SjV0L282R0pS?=
 =?utf-8?B?R0VPSjRFMkxkWDRCOHE2VXloclBTQTVZNlVpb3BrSUszQVh1QUNFRHBRbWc5?=
 =?utf-8?B?a2gvY2J6UkVTUzc3aVFQK3g5YjIrM1NVTVdGbm5RYitaVUVLdVVGaEpHNGNz?=
 =?utf-8?B?Z2Z5WXVHS3JDVDNsTFlMb2FoakJ6c09PTFROM2xzdXBhVzNad2hUeTVBd0k4?=
 =?utf-8?B?NG9NdTk1YzhLRUFJWWJSeGN1Um1mYXFIWWl2ZUNnTTBZTDJVVTBTaDUxdlRM?=
 =?utf-8?B?OFBRZ1pRc2pIRW5sd1lIcUxyN0p2YlMvU2pOUFlDdm1ZRFhVZ25CaG5EUVNp?=
 =?utf-8?B?RXJXSUJzYzZHK3RDTloveWkvbG5ROXNMR3hYTnJGWWJrWVpFZmp3cEFja05T?=
 =?utf-8?B?ZHluZlZ2aENJbk42ZkdzNDUzb00vQ1B4L1hSRzh3dE9hTERZQk4zL2dndFBB?=
 =?utf-8?B?ajU1TjJ4VlhTMkpqVUVITWRIdXRCbFBOczA4WElOQWVZS2YvUWM4MThrWFUy?=
 =?utf-8?B?M3hySytZUEorclRMb3V3QUhXazVvbVBORE96aDc5ejFPZFpKemUwSVJxdlZw?=
 =?utf-8?B?dk1xS3R1Tm9DVEtpQlZJWWZJaGRUL2ZzajlEYXJXMHpTOWhKaVZwbVNBYUpu?=
 =?utf-8?B?aTZsUzhYbjhob0VUVkloYlZDeDRHZlNaZVVULys5MTQ4bVlhUjFMYmY4U3RZ?=
 =?utf-8?Q?zCJLH7AxjDFFeRYqx6Vw7CZMgquFx/YL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YUN4U2lUMEZTT0hyVTBFcjhWVDVKa0FJUmZ3WGY4S3ZCeTVhQTNOUlVPRTh5?=
 =?utf-8?B?UXlTT0dkbGRjT0s2WmFFRnRiY3IrejNYdGYvbk02SFBlNHVKQzdaaFlCNmQv?=
 =?utf-8?B?V1pXVzdPT0htMEZ2Q1N2VFhocHh6SzJraUt1ckkrUTdJMitiUVZiWUYvV0J0?=
 =?utf-8?B?OEFYZ0NDNVo2RWl6UWwzemhKSWRucUxCRStGckRFejh6cEV3b3FtQUNEM3cv?=
 =?utf-8?B?UWZJeTBMS25HbmtyVkFCR200cFlXMkQ2eTY1VkdoVm16WnlFMzFyS2RRTk9U?=
 =?utf-8?B?aVlxM0RCTURjSXgrUzZKKzh5V2dlWi9uSGE4U3FqTjREU2hjdjFOL1Ywc3V1?=
 =?utf-8?B?OWpMT3FrT1hpMlYzNWxRMjE4NlY1djVhZjdoaGgvWHRoS3lsYmJCNVhpanFj?=
 =?utf-8?B?ZnlHelNGMm9TUi92VGlTek1WeWgrUTNUN2tJU1VwZnY5WGlMRENtbUJFUm5B?=
 =?utf-8?B?cTYvckpJTDlqWlZkcnhQZmc5YkoxN2lxN2hLbDFaUDFZOWZ2VDhNRVZwNDBK?=
 =?utf-8?B?b21GbllqS0tzVDVvVnFVZGdXYVdqazlaQnhLbXVsSEdCZmN5cnlSQmpYUTlK?=
 =?utf-8?B?MHRtMlFCMnV0azhmY29PdWxwSDdaR0V1c1BRczRCVzVUU1dXRlBTNk5lMzcz?=
 =?utf-8?B?TWlUaVZJaWx4Z2FOUk91V1hQVW9hMS91Tmc1RCtKTkRmcDdVblZsTXpxUm02?=
 =?utf-8?B?WDVsU1N6N1EwZnFoNG5aSU5wSDN2YTVUUnhrMmx4MTJLdFJjOXVDbkU0RUhK?=
 =?utf-8?B?MCtjN05IM2ZNUEo3Y0lDL0VZN0tUblk4SmRNNzhjVmpWWW5leEVEN0xWRW5t?=
 =?utf-8?B?d1MyWTd5WTQ0ZkJtRUhkd205b3ZoYVg2OVYrS29YcUk3emNGNFBxOHlWZklv?=
 =?utf-8?B?OE5tdzlyeWoweitlTEtEU0ZiRXJjOWp5RkRZTTBBNlpxQi9Oc1UwTkVMNWM1?=
 =?utf-8?B?NnRsaFczOVZwNnovY2UrSmgwc0xmQU1vK1IwV2lVZEl5WThaWHI0SmxYNkRZ?=
 =?utf-8?B?WUQvOVV0cDBsV3hZK0tVZnR2ckxhK09xTjRlUEtZWjZBM0l6L055UjhBUHhz?=
 =?utf-8?B?Z05hSDhVbE1Od0xrbE1CZ2RmRlI0OC9xUitRSnZlaWIyeVhHTDFCTXhxNWtS?=
 =?utf-8?B?eXZHY0sweVFrTkNvT1huNDdhUE9SdVZlY044QSs1K3piSmU2aFJiQXQ5Vlla?=
 =?utf-8?B?RUtLS2NaZkM5S1I2ZWtxR3RDb056cmYyYVlLMElFNGdYTCtUcS9LS0JvYzBS?=
 =?utf-8?B?OFNMZHZySEw1TnZMRFd6dk8yUFl2bkt5TVFyVloxSUNOVWJpMW8vak9yNDcx?=
 =?utf-8?B?cCsyVit1WitTUmJQOFptN3A3OWZ0aDkzY1lLdW4xdnRrVGJvZGhrU2Rndm1i?=
 =?utf-8?B?RUdrUlNvVkFqS3lCWWR0K3RNQjIrbkFsYzA2UXhIcWtPMmZtazZoc0tjZFpW?=
 =?utf-8?B?Qng2cTRJLzE1Q1g1YVUrWEZ5eVhURDl1WlE5Z05QUE1JbjFkU2VxVVZ5QWJk?=
 =?utf-8?B?ZjBRZEVLODJaenZuQys1T1laLzZla3JIYWRML2xpdUxlVUk1MkpEa3ZaNGdW?=
 =?utf-8?B?MGt5WnNRbzI2NVZBWllkN0NjUXJJbUZ6OGVmQ1dGb2t0REk3RWFkNlNKRjNJ?=
 =?utf-8?B?QjJUaWJRLy9ienhmbWlGQmtOSVJYd3ZKc1JjM3d3UmVhUXR5QlJ6RWtMNEp4?=
 =?utf-8?B?Q2FoeFo3NUs4N3N2TGhWaHpkaU9NTjFRSXB5Skt6L09oYk9xd050Z2lxUmFF?=
 =?utf-8?B?VXVPY3ZDcU5sejNGVkpYcDV2NmtoMU9HWVVFbjJGbG5NTlR5Tm1lQ0ZDamJD?=
 =?utf-8?B?WXRlTHBvdU92cGxGaXRCalVNOGxUSU95K1h6OEpQT3dyL2FxZ2VvUjYweDNZ?=
 =?utf-8?B?MHl4UW9aeVlmK3lSV29GcWU1MEZrR3d1VDNjK3JGY1BkOVg1K0VFcGRzVE1F?=
 =?utf-8?B?Q2hidktsb1JtQThnUDFsV1FxOENVRkZHREErY1d2WlVudTF0eEJjaUZMaEtt?=
 =?utf-8?B?eVFqc1dVa0g5L25vcWFhSEhMVDZIN0xJVTZzTi9qdUMrU0ZoVnBhWXRpM3Nt?=
 =?utf-8?B?N3drY1VwYnliNWtpNmtrTEkvR3VvdWJRUXFPWHVIUnhGUmtQR2wxTURTbHhO?=
 =?utf-8?Q?uckhmF0QHBPsRIIaCWhKpoIiT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9e7fd97-2617-4ccf-c7bc-08dd7698ee04
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 12:28:55.6314 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GBW7FDk9m9W3hFnEipMkJOL8ipa98p6Q4fkM96nG4vpHb68df3KV3pVSq3P3nhpLaRAgzuGAIvOx2C80lFJJSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8537
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
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0KPiBIw7Zn
YW5kZXINCj4gU2VudDogTW9uZGF5LCAxNyBNYXJjaCAyMDI1IDEwLjE5DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjIgMTEvMTFdIGRybS9pOTE1L2Rpc3BsYXk6IFJlbmFtZSB2YmxhbmsgREMg
d29ya2Fyb3VuZA0KPiBmdW5jdGlvbnMgYW5kIHZhcmlhYmxlcw0KPiANCj4gV2UgaGF2ZSBleHRl
bmRlZCB1c2luZyB2YmxhbmsgREMgd29ya2Fyb3VuZCBtZWNoYW5pc20gZm9yDQo+IFdhXzE2MDI1
NTk2NjQ3LiBSZW5hbWUgcmVsYXRlZCBmdW5jdGlvbnMgYW5kIHZhcmlhYmxlczoNCj4gDQo+IHZi
bGFua193YV9udW1fcGlwZXMgLT4gdmJsYW5rX2VuYWJsZV9jb3VudCB2YmxhbmtfZGNfd29yayAt
Pg0KPiB2Ymxhbmtfbm90aWZ5X3dvcmsgaW50ZWxfZGlzcGxheV92YmxhbmtfZGNfd29yayAtPg0K
PiBpbnRlbF9kaXNwbGF5X3ZibGFua19ub3RpZnlfd29yaw0KPiANCg0KUmV2aWV3ZWQtYnk6IE1p
a2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgICAgIHwgIDIgKy0NCj4gIC4uLi9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaCB8ICA0ICsrLS0NCj4gLi4u
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMgIHwgMjAgKysrKysrKysr
LS0tLS0tLS0tLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxMyBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NydGMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0
Yy5jDQo+IGluZGV4IGJkZjMwYWI5NjM5NjcuLjUzNzg1OTYzMDM2M2IgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IEBAIC0xNTYsNyArMTU2LDcg
QEAgdm9pZCBpbnRlbF9jcnRjX3ZibGFua19vZmYoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUNCj4gKmNydGNfc3RhdGUpDQo+IA0KPiAgCWNydGMtPnZibGFua19wc3Jfbm90aWZ5ID0gZmFs
c2U7DQo+IA0KPiAtCWZsdXNoX3dvcmsoJmRpc3BsYXktPmlycS52YmxhbmtfZGNfd29yayk7DQo+
ICsJZmx1c2hfd29yaygmZGlzcGxheS0+aXJxLnZibGFua19ub3RpZnlfd29yayk7DQo+ICB9DQo+
IA0KPiAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmludGVsX2NydGNfc3RhdGVfYWxsb2Moc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBpbmRleCA3Y2ExZTdkNzEwMTMzLi5iMjQ1
ODZjMzc1M2E5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfY29yZS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gQEAgLTQ2Niw5ICs0NjYsOSBAQCBzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSB7DQo+ICAJCS8qIEZvciBpOTE1Z20vaTk0NWdtIHZibGFuayBpcnEgd29ya2Fyb3Vu
ZCAqLw0KPiAgCQl1OCB2YmxhbmtfZW5hYmxlZDsNCj4gDQo+IC0JCWludCB2Ymxhbmtfd2FfbnVt
X3BpcGVzOw0KPiArCQlpbnQgdmJsYW5rX2VuYWJsZV9jb3VudDsNCj4gDQo+IC0JCXN0cnVjdCB3
b3JrX3N0cnVjdCB2YmxhbmtfZGNfd29yazsNCj4gKwkJc3RydWN0IHdvcmtfc3RydWN0IHZibGFu
a19ub3RpZnlfd29yazsNCj4gDQo+ICAJCXUzMiBkZV9pcnFfbWFza1tJOTE1X01BWF9QSVBFU107
DQo+ICAJCXUzMiBwaXBlc3RhdF9pcnFfbWFza1tJOTE1X01BWF9QSVBFU107DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gaW5k
ZXggODMzZjgyMjdkYTgwMy4uMjI5NDJlZGY1ZmYwMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYw0KPiBAQCAtMTcyMiwxMyAr
MTcyMiwxMyBAQCBzdGF0aWMgYm9vbCBnZW4xMV9kc2lfY29uZmlndXJlX3RlKHN0cnVjdCBpbnRl
bF9jcnRjDQo+ICppbnRlbF9jcnRjLA0KPiAgCXJldHVybiB0cnVlOw0KPiAgfQ0KPiANCj4gLXN0
YXRpYyB2b2lkIGludGVsX2Rpc3BsYXlfdmJsYW5rX2RjX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0
ICp3b3JrKQ0KPiArc3RhdGljIHZvaWQgaW50ZWxfZGlzcGxheV92Ymxhbmtfbm90aWZ5X3dvcmso
c3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5ID0NCj4gLQkJY29udGFpbmVyX29mKHdvcmssIHR5cGVvZigqZGlzcGxheSksIGly
cS52YmxhbmtfZGNfd29yayk7DQo+IC0JaW50IHZibGFua193YV9udW1fcGlwZXMgPSBSRUFEX09O
Q0UoZGlzcGxheS0NCj4gPmlycS52Ymxhbmtfd2FfbnVtX3BpcGVzKTsNCj4gKwkJY29udGFpbmVy
X29mKHdvcmssIHR5cGVvZigqZGlzcGxheSksIGlycS52Ymxhbmtfbm90aWZ5X3dvcmspOw0KPiAr
CWludCB2YmxhbmtfZW5hYmxlX2NvdW50ID0gUkVBRF9PTkNFKGRpc3BsYXktDQo+ID5pcnEudmJs
YW5rX2VuYWJsZV9jb3VudCk7DQo+IA0KPiAtCWludGVsX3Bzcl9ub3RpZnlfdmJsYW5rX2VuYWJs
ZV9kaXNhYmxlKGRpc3BsYXksIHZibGFua193YV9udW1fcGlwZXMpOw0KPiArCWludGVsX3Bzcl9u
b3RpZnlfdmJsYW5rX2VuYWJsZV9kaXNhYmxlKGRpc3BsYXksIHZibGFua19lbmFibGVfY291bnQp
Ow0KPiAgfQ0KPiANCj4gIGludCBiZHdfZW5hYmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMgKl9j
cnRjKSBAQCAtMTc0Miw4ICsxNzQyLDggQEAgaW50DQo+IGJkd19lbmFibGVfdmJsYW5rKHN0cnVj
dCBkcm1fY3J0YyAqX2NydGMpDQo+ICAJaWYgKGdlbjExX2RzaV9jb25maWd1cmVfdGUoY3J0Yywg
dHJ1ZSkpDQo+ICAJCXJldHVybiAwOw0KPiANCj4gLQlpZiAoY3J0Yy0+dmJsYW5rX3Bzcl9ub3Rp
ZnkgJiYgZGlzcGxheS0+aXJxLnZibGFua193YV9udW1fcGlwZXMrKyA9PQ0KPiAwKQ0KPiAtCQlz
Y2hlZHVsZV93b3JrKCZkaXNwbGF5LT5pcnEudmJsYW5rX2RjX3dvcmspOw0KPiArCWlmIChjcnRj
LT52YmxhbmtfcHNyX25vdGlmeSAmJiBkaXNwbGF5LT5pcnEudmJsYW5rX2VuYWJsZV9jb3VudCsr
ID09IDApDQo+ICsJCXNjaGVkdWxlX3dvcmsoJmRpc3BsYXktPmlycS52Ymxhbmtfbm90aWZ5X3dv
cmspOw0KPiANCj4gIAlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2X3ByaXYtPmlycV9sb2NrLCBpcnFm
bGFncyk7DQo+ICAJYmR3X2VuYWJsZV9waXBlX2lycShkZXZfcHJpdiwgcGlwZSwgR0VOOF9QSVBF
X1ZCTEFOSyk7IEBAIC0xNzczLDgNCj4gKzE3NzMsOCBAQCB2b2lkIGJkd19kaXNhYmxlX3ZibGFu
ayhzdHJ1Y3QgZHJtX2NydGMgKl9jcnRjKQ0KPiAgCWJkd19kaXNhYmxlX3BpcGVfaXJxKGRldl9w
cml2LCBwaXBlLCBHRU44X1BJUEVfVkJMQU5LKTsNCj4gIAlzcGluX3VubG9ja19pcnFyZXN0b3Jl
KCZkZXZfcHJpdi0+aXJxX2xvY2ssIGlycWZsYWdzKTsNCj4gDQo+IC0JaWYgKGNydGMtPnZibGFu
a19wc3Jfbm90aWZ5ICYmIC0tZGlzcGxheS0+aXJxLnZibGFua193YV9udW1fcGlwZXMgPT0gMCkN
Cj4gLQkJc2NoZWR1bGVfd29yaygmZGlzcGxheS0+aXJxLnZibGFua19kY193b3JrKTsNCj4gKwlp
ZiAoY3J0Yy0+dmJsYW5rX3Bzcl9ub3RpZnkgJiYgLS1kaXNwbGF5LT5pcnEudmJsYW5rX2VuYWJs
ZV9jb3VudCA9PSAwKQ0KPiArCQlzY2hlZHVsZV93b3JrKCZkaXNwbGF5LT5pcnEudmJsYW5rX25v
dGlmeV93b3JrKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdTMyIHZsdl9kcGludmd0dF9waXBlX2Zh
dWx0X21hc2soZW51bSBwaXBlIHBpcGUpIEBAIC0yMzQ1LDYgKzIzNDUsNg0KPiBAQCB2b2lkIGlu
dGVsX2Rpc3BsYXlfaXJxX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+IA0K
PiAgCWludGVsX2hvdHBsdWdfaXJxX2luaXQoaTkxNSk7DQo+IA0KPiAtCUlOSVRfV09SSygmaTkx
NS0+ZGlzcGxheS5pcnEudmJsYW5rX2RjX3dvcmssDQo+IC0JCSAgaW50ZWxfZGlzcGxheV92Ymxh
bmtfZGNfd29yayk7DQo+ICsJSU5JVF9XT1JLKCZpOTE1LT5kaXNwbGF5LmlycS52Ymxhbmtfbm90
aWZ5X3dvcmssDQo+ICsJCSAgaW50ZWxfZGlzcGxheV92Ymxhbmtfbm90aWZ5X3dvcmspOw0KPiAg
fQ0KPiAtLQ0KPiAyLjQzLjANCg0K
