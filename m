Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7810B1D73D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 14:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DFBD10E81C;
	Thu,  7 Aug 2025 12:09:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="awjmY1t5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3377010E81C;
 Thu,  7 Aug 2025 12:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754568541; x=1786104541;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=NgAsq1e1Uj49hgaREmUE2blFVTS611WpIG2ZFsUTDh4=;
 b=awjmY1t55hF4+KeEdWJkyQVXKLqb/8VXDVZLPApugIResbxASU9umawp
 5jHqHE+SzMLxfH0gJnryjUlUJczR6aHschbl0AoGovcAZkt3N+xvRal2x
 rNgyerqBy/ecKhrfNd7cltIFMo06Ct6YTClYx7CpbRsxDpRrIuJcc52yL
 5iqTR7i+Jt9G/pG0jTQlvXHT/1zHE/qcNeU8gW79tQeclYo6aGBzPZMka
 tRJUdWphOKYavGVMfSCiI2I3CgfM1FfMv6V8cae8g8g+fRR9B+I31IlB6
 BwbxwF7jKYrgJlxq9uBccoeA42WQjrPRvC/gN8rgqJaIbOCv+pG8Q7689 g==;
X-CSE-ConnectionGUID: 5nCFgzhOTPa+wsZh2lWiJg==
X-CSE-MsgGUID: lUlBAldUTdi7aPuKyVvT+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56799189"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56799189"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:09:01 -0700
X-CSE-ConnectionGUID: 1J3F0xKJRQ+iInKTh9b3kQ==
X-CSE-MsgGUID: MvvNT7UjTEebrpxu1atc2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164281205"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:09:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:09:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 05:09:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.67)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:09:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DD+2lm4oydZweWC5/1ivf8nH6CKBbEMqC56MF+hvtkFeJ10pIksEkWqsapcfvxKOlx4XteSx7j+BQ1fcOU80iIrov1yYYlZMCYyrlqQWwjFF/S2l3SzX+MMC3oa276MNz6bOZZGJmo8aiyJ6i5g0ZmuS643L8xsEnTxViJYaQZsszR+9jUtI0CG9wuIs5waR0+VquKBWAwKLxleCc2v4f1QcRCdemAVRfHbH7FwPBamWeyg6EjXauAQb976EVghNvGZyiQdQvSqoGz8lpv6sZOb7IT9n04OTK5AaLGW0X7U95qOe6hpY14Rt+cgNp/87iorfwP3OeBJaP4f/f6N35w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NgAsq1e1Uj49hgaREmUE2blFVTS611WpIG2ZFsUTDh4=;
 b=Bod6CpGPxrZFPU3Dw3/zQntpBe4e5aDoeaE+AVBlA2+tCUWrh88j8xo0TN7/wxrJ7IA/GSA05UkrnKDnaO3CmNmj8nVl1ajQiEOgaaKRmtapqxv0vjKLqQcMsHPdv07uEucRaP6IrSImgbs/N64Q5Ywex2fiMiZbDYjpxozKu7YFjl6ThCo/Krtn3H0fpJ0lGLN6TYYs4WKvPdKvOCcxt37p+maqwPdbCp/g9pfMqayTHJah3dWuU/kms2n1YjzK+XZ90KtH6xsJ+WhdFppT74epB0w6oP4rkQXanQJMvoDgbRAQGyG/4w8ToBR78UqlVC3hKVh0+Ndyr8Ztz9Se3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7282.namprd11.prod.outlook.com (2603:10b6:208:43a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 12:08:57 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 12:08:57 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "janna.martl109@gmail.com" <janna.martl109@gmail.com>
Subject: Re: [PATCH] drm/i915/psr: Do not trigger Frame Change events from
 frontbuffer flush
Thread-Topic: [PATCH] drm/i915/psr: Do not trigger Frame Change events from
 frontbuffer flush
Thread-Index: AQHcAq2pOZmfh2V5pUaLMC/Uy87n4rRWpNMAgAANaoCAAB9OgIAAUTIA
Date: Thu, 7 Aug 2025 12:08:57 +0000
Message-ID: <650b5e66951a67206feb5214c3743a535e1aa754.camel@intel.com>
References: <20250801062905.564453-1-jouni.hogander@intel.com>
 <DM3PPF208195D8D507DE9636CA0CD3C0C21E32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <30aab2c888ef916658385c571e730316eb9c44c3.camel@intel.com>
 <DM3PPF208195D8D2F7ADC627162674568A2E32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D2F7ADC627162674568A2E32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7282:EE_
x-ms-office365-filtering-correlation-id: db6ca00f-b283-4bf7-c14d-08ddd5ab3008
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WVJHTE15RmxHZng2QVh3QkoySWpTSEY1Y3ZxK0ZsS0gwRnNTRjRNOEdBcmJG?=
 =?utf-8?B?NGpVK29FaFc1RTNoV3ljZ2dYbzBKa0NPQU1Lczh5MEZGNDdJYU1GZHlHVXpQ?=
 =?utf-8?B?Y0VzanhVMnByVzU3VzJQQ0ZBcFVYSUJudExPeGFndVVpU1k5ckptSWRReUNu?=
 =?utf-8?B?UzhFOE5lMUlwd29iNEdFZmNVUEpFYmNDZWhKUFZtVGt0L2ZFOUVIL3BtY21K?=
 =?utf-8?B?TFo4WWZyRmpKY2pscm1BZzVsZ1FGOXFPQTc3SmkrU3BtMmpTWGNUR3JRcFQz?=
 =?utf-8?B?QmtwUGx2QlQrN3prNVZHVEUyVlZoZS8vTnM2ZmdWa0kxSWlQQ04wREJFSWhl?=
 =?utf-8?B?RkZaUjdOUmRHdDMyc0owQWlhaXVvUHRHTjhaTWtsVnpIN05tVEZnWElLZnRI?=
 =?utf-8?B?OUJQQWl1b01sYysrZElNZC9wZEtjS0tObXVtRFFyWnJGN1Q2Z2krMkVhQTNz?=
 =?utf-8?B?bnExdFVrTVdlbWhMckFOVnZVc0U2S2M0VVlmVWROLytOVnU1MXhmZ2tsV1p0?=
 =?utf-8?B?eFNHb0gvbTJjRThDMVNTbXFCWUFVN0RUZ0hBY3cxSFVuVUtYQ0krd1ZSbTQz?=
 =?utf-8?B?Y3RRODNHb2E0c1VpK0ZjUSt1K0l3YmczUTBzQU1kQjEzNTNzWnNJazk2dktL?=
 =?utf-8?B?VnJKVWNMeUQ0emlBL0xkM3QwQmxOOFB3b05Mdk1pZS9ocWVDakJ4QU5CVkJH?=
 =?utf-8?B?Nzk0elFyMHhqMTJQQVRlczJvL2pKQ1NJUDlCc1JQRmQrcS9Sb3pEcEhLaFhn?=
 =?utf-8?B?dEx3ZFR1VFBwYmluNlFpeERySW05bFZINUVUUWFJUERFcTNsK084cml1VFRl?=
 =?utf-8?B?WmtmWWZFL3NpOUlPNFQzMmpqVVhnMG5VRHZqR204THpoVlRXRGdVWlJ1eUdB?=
 =?utf-8?B?bW9OQU02L0Jlb2lLUDQ4SmdaYjFDK0ZlM2duZXIvQ29EaEozVzZ0Y2R5U2w0?=
 =?utf-8?B?YU9TOVc0VTFUWWRMZkZNbVRkL0ZUZ0ZTUFlIVjRxcU9KWkRyNFpzajNKMU1w?=
 =?utf-8?B?Skxjb3dpOWMraTEvNWFhTE05WHJ4b1cvUmdSTDZSUHpDWVFLWGJRUlEzTlVK?=
 =?utf-8?B?SnlJWUw5cjREaWRpY3pIWi9TS0NTWmRtVU5HYmVuTzNlZlZGemJ3dXM3SXNH?=
 =?utf-8?B?V2F4S0VTVGVHNVJDZ3l5c0JlNWZ0S1BWQ0xkc3I2U3pHYVJyY05vYkdyRTR4?=
 =?utf-8?B?a0N0bzZZb3hKSVFTU0FlTzFEWDlHT3ZmWEFOOVBoS1A4QktNMmpjQ3NFeTd1?=
 =?utf-8?B?T1ZIekdWSXVnUXBrcytqbUZCWVlWZWxWcTBCR0N5Vmd6LzQ5Q1JtZ1JFZGVo?=
 =?utf-8?B?M0xjQ2w0cFdOc21KTGtyVWg2OUVKN3NyNVVwRHN1UzVHVGxVKytWVS9wVUo3?=
 =?utf-8?B?d2J2SzZVbGFqWlk1NG95TlJDem1RcDZ5bE14VGJ4ZVdtVFIrWWxTR0VvVWRD?=
 =?utf-8?B?Wit0cEFTTFB5MnkxeUFXTEx0UXlHYmlidGlPU2NmY2pqUGxnK0hscEg5ZUlW?=
 =?utf-8?B?OWFxUTUxVVZSbnlXQXgwYzFUaHZTTzhXS1o2K284SC9DQVNqVkM3aHBMT1M4?=
 =?utf-8?B?RUtoZmh3THg4Z2IyUXZZMStTYUxZalBmL0xNRkRZRVl1ZURNTlFkZUh3aXQz?=
 =?utf-8?B?YlJUcUx4UlpVVW9XR0JVSTNVQ2tIUmFUMXZNdW1sbjNMTFZLUkhWTGNUU0hQ?=
 =?utf-8?B?WE1iMWt6ZDUxTEcxa0o1K29oLzRxcWRlWDVwSW0wQ2hBR05TNmJJZlNEekdB?=
 =?utf-8?B?RCs1R2x3S0I3djEvTmZsYlVYeVJNa0JFVktSSzZSR08wVDZBMWtTbG9KSER5?=
 =?utf-8?B?eVljb3FqTmhPbDl6YzhRQ2dlR21LcUozRjA0KzMvV1VWczhoWTFxMXkrUE01?=
 =?utf-8?B?ejAvTkpvb1BDQXp6N3ppTC9MZk9wQ3dad0xESUdqTlpQa25kd3ltSnZJanRT?=
 =?utf-8?Q?Z+WpIQYUEmU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bUZXdytBcENGbmpkUGFRbnJ6SVZxNVBYRHdxNkhMMHM2Q3p4akJoN2NxNXZD?=
 =?utf-8?B?L2dtQ2JyU1JQVDYxWjJlVmFqVGtIUkNLRUVFRDBxZ3duL0RxN2k4clJXZEli?=
 =?utf-8?B?U1llM1dCVk4xNzRFVHBuQy8yUy9RVStPOUpHeTUxRnJYaWpUeGtGc1JIRHhU?=
 =?utf-8?B?UTBROXVKMlY3czdxKzhWZjJvVFFPL0F1ZjJvVUVoZW1wcWxubEJuTDBUejh0?=
 =?utf-8?B?bmIrTXNZbllvaE1nVUFIUlpPVG5RM3lnY05qcE0veXUyWGNKL0FFb1RlSG5m?=
 =?utf-8?B?Mk5xSi82cHpra3lhaktSMGYrK2lheUhCVjEwZFVxekt2aGhwS3hJZUhuWHJx?=
 =?utf-8?B?MXczZFpKUDdWdmtJMkhmNmpIcVBIZ0FRUXNSSWs5SndCZFJWTjM4NkMrdlRD?=
 =?utf-8?B?elhlM0NVNm1EeVlQVmE5cS9RS3MrbU00c0FvaFU3eEhlUnoxMWlHWm9Cc0lL?=
 =?utf-8?B?MERXVjN4Qm1TemVuYm1EMlMwUks4UlBJQy9HZUZISjlVZ3NyU1VkR2FzQU9q?=
 =?utf-8?B?dWdJUlRNSXhyYmlmQ2hpWjZwRGlnazBscE5UejNiUWIyZWphcHNJUlJpVGc3?=
 =?utf-8?B?SHVtbjFBNlUrbnpNKzlvZFg0Z1BCSnl5Z2RJMG9jUnN0clpJK2wrNzJzSkpr?=
 =?utf-8?B?SGE5bEI5SkV2V0R2K1pmN1dLRVpjUVRqcDVhNUpnNjlrTWV0d0dOL1N2cEcw?=
 =?utf-8?B?d1F0ZGlsMnVGcHowaVYrbHYybEVEKzRQMHhvelZZMytwdnczQVJ5M21FZHdC?=
 =?utf-8?B?L2dDeWxvTzRQOFpXLysyU2V3cW9PWmd5R0RRT0U1djBEdlh3WWF2MnZ5Q09F?=
 =?utf-8?B?cHp6VVN0cmtDVDdPM3o1aWYzOXpTcy9JOElsWVMyeFc4VllyQU9RZjFIOW9r?=
 =?utf-8?B?TVhiekVUdUVJUHJBS21CeGgzcStwN1RuM0prbks1ZjROeDY4SjNiZ3U3L0Rj?=
 =?utf-8?B?NDRtREtFaDA3Yk1ZRTFLcGgwOHJDeGZ4R0dIdXRFcldaVldXTFpITjNhWDlw?=
 =?utf-8?B?NWQ1QkRvdzBubHBhcllIQm1QQ3lXam5uc1VzTkxKRHZhaGZiQlVKZzBxb1RL?=
 =?utf-8?B?MlFGbUNMWFBVTm9tYys2ZHFycnlyODRnWXFLeXhydGlyaTZzWDMvcmV4RGdK?=
 =?utf-8?B?bkFueHl0bW5jcVVpblR2Wjg4U1hHMHZ2TE03UTQ0aC9POVczRG43UFRRdDYw?=
 =?utf-8?B?SXJPZjc3My9rbWM2YWFFMU5wODZLbUZTdTVYRDd2c3hxVFRuelZ3YzJHOTBi?=
 =?utf-8?B?WndHd3IydUtYbjRUNm15blV6YjRqcUVORnNjY2E0QWV6d1ViQWgrSDlwUjZl?=
 =?utf-8?B?WnpVdG5PWFYrS1VOSXdTdURrRTJIWlRnaUpMUkp2d0cvWCsvZlhvUThvMncy?=
 =?utf-8?B?NzY5NElFK2dPZStVVTVDVkQwMDhmTnhudlQ4MmpMc2NCYmFTclE3bllDd1U1?=
 =?utf-8?B?YWd1MFA3K2ZyZUVmRUh6b2tSU1lXVkJJQjdQK0syMXM5eTUvai9nTFhid3Bz?=
 =?utf-8?B?WWZ6Q2JjWlNnRDJ0OWFTOFR4bk0xVklsemxZZFZQMlMwdnVhTmdrSDFETG9L?=
 =?utf-8?B?bHBPWjRoMEo4QUZYWmlDOXI0ME1LOWJXWnVvRWFScG80T2xHTVVPaTI1aGtT?=
 =?utf-8?B?anU1THlJdlEwMWdOMWdaNGRiYy9VWDJMTGMyckJOcWhRcnprT1pJSHo5UWd1?=
 =?utf-8?B?Q29rTHNOR253dXVqeFkxL0E4cEdHcFY1WHM5RWxPY1h4emVnRkJ6Zzg0UE1w?=
 =?utf-8?B?MzMwamRjVXZDSy9uNVVKdU5BMWZWLzVpak8yc3NYSENhbHMrdm9LWll3RUFv?=
 =?utf-8?B?ZWdOVjdIUnFDU1NDd2xIVkZBZmxJSHkwUFdqdm9mc2dUL1BXM0R0ajVoVklt?=
 =?utf-8?B?MFhsaVdBR2sxczNpNWZaR1pOWHhGaGVldldQOGZTbmR4UGltVUZEaUxhaWhj?=
 =?utf-8?B?WmV1dnFKaUU1L2lEdUs5bTZMS0JVcThpaVVZdnpNZ013czN1eFhQcnBicUpx?=
 =?utf-8?B?QVBRY0ZLcE9xS3hKSDVYQ3Y5RHdQbXhackxvOWpWc04wb2ViOUhJMzNBQUxo?=
 =?utf-8?B?bHQ5d3cvVFpCVGpPWTJaeFQ1VE44N3NXdnovMEY5QzZ5c1lIbTY2UkMxWmx3?=
 =?utf-8?B?cjIyVVloVytjSFZIT2VmQmZGMXVPRWwrN2FkM3FqdEFZV1RxdkFRUWMvVWx1?=
 =?utf-8?B?WjRnU0lCM2dVU0FTTnkvZzBmeTBNSFZRNFBldGJ0Si9udmNyNHBNMGhlNFp4?=
 =?utf-8?B?WEE2Q1F6eEs0U2ZsWS9JZlhjNTl3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <244842C057336C48B46BF2BD93A470AF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db6ca00f-b283-4bf7-c14d-08ddd5ab3008
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 12:08:57.7861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r2mjcbzlpCQiZr3ZqTiwnzyPWJ6C7XNEi2xsGVXm8PhQkWXNs5bF3j6Ct9dvq+k+7mVssbqFrag/PcvGFQV/8p1kJBJ8L+eUvrK3VLU2zb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7282
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

T24gVGh1LCAyMDI1LTA4LTA3IGF0IDA3OjE4ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVGh1cnNkYXks
IEF1Z3VzdCA3LCAyMDI1IDEwOjU2IEFNDQo+ID4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5r
YW5kcGFsQGludGVsLmNvbT47DQo+ID4gaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0K
PiA+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogamFubmEubWFydGwx
MDlAZ21haWwuY29tDQo+ID4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBEbyBu
b3QgdHJpZ2dlciBGcmFtZSBDaGFuZ2UNCj4gPiBldmVudHMgZnJvbQ0KPiA+IGZyb250YnVmZmVy
IGZsdXNoDQo+ID4gDQo+ID4gT24gVGh1LCAyMDI1LTA4LTA3IGF0IDA0OjM4ICswMDAwLCBLYW5k
cGFsLCBTdXJhaiB3cm90ZToNCj4gPiA+ID4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9wc3I6
IERvIG5vdCB0cmlnZ2VyIEZyYW1lIENoYW5nZQ0KPiA+ID4gPiBldmVudHMNCj4gPiA+ID4gZnJv
bSBmcm9udGJ1ZmZlciBmbHVzaA0KPiA+ID4gPiANCj4gPiA+ID4gV2Ugd2FudCB0byBnZXQgcmlk
IG9mIHRyaWdnZXJpbmcgIkZyYW1lIENoYW5nZSIgZXZlbnRzIGZyb20NCj4gPiA+ID4gZnJvbnRi
dWZmZXIgZmx1c2ggY2FsbHMuIFdlIGFyZSBhYm91dCB0byBtb3ZlIHVzaW5nIFRSQU5TX1BVU0gN
Cj4gPiA+ID4gcmVnaXN0ZXIgZm9yIHRoaXMgb24gTHVuYXJMYWtlIGFuZCBvbndhcmRzLiBUb3Vj
aGluZyBUUkFOU19QVVNIDQo+ID4gPiA+IHJlZ2lzdGVyIGZyb20gZnJvbmJ1ZmZlciBmbHVzaCB3
b3VsZCBiZSBwcm9ibGVtYXRpYyBhcyBpdCdzDQo+ID4gPiA+IHdyaXR0ZW4NCj4gPiA+ID4gYnkg
RFNCIGFzIHdlbGwuDQo+ID4gPiA+IA0KPiA+ID4gPiBGaXggdGhpcyBieSB1c2luZyBpbnRlbF9w
c3JfZXhpdCB3aGVuIGZsdXNoIG9yIGludmFsaWRhdGUgaXMNCj4gPiA+ID4gZG9uZSBvbg0KPiA+
ID4gPiBMdW5hckxha2UgYW5kIG9ud2FyZHMuIFRoaXMgaXMgbm90IHBvc3NpYmxlIG9uIEFsZGVy
TGFrZSBhbmQNCj4gPiA+ID4gTWV0ZW9yTGFrZSBkdWUgdG8gSFcgYnVnIGluIFBTUjIgZGlzYWJs
ZS4NCj4gPiA+ID4gDQo+ID4gPiA+IFRoaXMgcGF0Y2ggaXMgYWxzbyBmaXhpbmcgcHJvYmxlbXMg
d2l0aCBjdXJzb3IgcGxhbmUgd2hlcmUNCj4gPiA+ID4gY3Vyc29yIGlzDQo+ID4gPiA+IGRpc2Fw
cGVhcmluZyBvciBkdXBsaWNhdGUgY3Vyc29yIGlzIHNlZW4gb24gdGhlIHNjcmVlbi4NCj4gPiA+
ID4gDQo+ID4gPiANCj4gPiA+IEFueSBCc3BlYyBsaW5rIHRoYXQgZG9jdW1lbnRzIHRoaXMgdHJp
ZWQgdG8gbG9vayB0aHJvdWdoIHRoZQ0KPiA+ID4gcGF0Y2gNCj4gPiA+IHNlcmllcyB0aGlzIHdh
cyBwbHVja2VkIG9mIGZyb20NCj4gPiA+IERpZG7igJl0IGZpbmQgYW55IHRoZXJlIGVpdGhlci4N
Cj4gPiANCj4gPiBJIGNhbiBhZGQgZm9sbG93aW5nOg0KPiA+IA0KPiA+IEJzcGVjOiA2ODkyNywg
Njg5MzQsIDY2NjI0DQo+ID4gDQo+ID4gQlIsDQo+ID4gDQo+ID4gSm91bmkgSMO2Z2FuZGVyDQo+
ID4gDQo+ID4gPiANCj4gPiA+IFJlZ2FyZHMsDQo+ID4gPiBTdXJhaiBLYW5kcGFsDQo+ID4gPiAN
Cj4gPiA+ID4gdjI6IENvbW1pdCBtZXNzYWdlIHVwZGF0ZWQNCj4gDQo+IExHVE0sDQo+IFJldmll
d2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0KVGhhbmsg
eW91IEphbm5hIGZvciB0aGUgcmVwb3J0IGFuZCB0ZXN0aW5nIHN1cHBvcnQuIFRoYW5rIHlvdSBT
dXJhaiBmb3INCnRoZSByZXZpZXcuIFBhdGNoIGlzIG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5l
eHQgd2l0aCB0aG9zZSBic3BlYw0KcmVmZXJlbmNlcyBhZGRlZC4NCg0KQlIsDQpKb3VuaSBIw7Zn
YW5kZXINCg0KPiANCj4gPiA+ID4gDQo+ID4gPiA+IFJlcG9ydGVkLWJ5OiBKYW5uYSBNYXJ0bCA8
amFubmEubWFydGwxMDlAZ21haWwuY29tPg0KPiA+ID4gPiBDbG9zZXM6DQo+ID4gPiA+IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0veGUva2VybmVsLy0vaXNzdWVzLzU1MjINCj4g
PiA+ID4gRml4ZXM6IDQxMWFkNjM4NzdiYiAoImRybS9pOTE1L3BzcjogVXNlIFNGRl9DVEwgb24N
Cj4gPiA+ID4gaW52YWxpZGF0ZS9mbHVzaA0KPiA+ID4gPiBmb3INCj4gPiA+ID4gTHVuYXJMYWtl
IG9ud2FyZHMiKQ0KPiA+ID4gPiBUZXN0ZWQtYnk6IEphbm5hIE1hcnRsIDxqYW5uYS5tYXJ0bDEw
OUBnbWFpbC5jb20+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTQgKysrKysrKysrLS0tLS0NCj4gPiA+
ID4gwqAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+
ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gPiA+IGluZGV4IDZiZDM0NTRiYjAwZS4uNDI3OWMyOGFlMjdjIDEwMDY0NA0K
PiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiA+ID4gQEAgLTMyNTQsNyArMzI1NCw5IEBAIHN0YXRpYyB2b2lkDQo+ID4gPiA+IGludGVsX3Bz
cl9jb25maWd1cmVfZnVsbF9mcmFtZV91cGRhdGUoc3RydWN0IGludGVsX2RwDQo+ID4gPiA+ICpp
bnRlbF9kcCkNCj4gPiA+ID4gDQo+ID4gPiA+IMKgc3RhdGljIHZvaWQgX3Bzcl9pbnZhbGlkYXRl
X2hhbmRsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKcKgDQo+ID4gPiA+IHsNCj4gPiA+ID4g
LQlpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKSB7DQo+ID4gPiA+ICsJ
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ID4gPiB0b19pbnRlbF9kaXNwbGF5
KGludGVsX2RwKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5
KSA8IDIwICYmIGludGVsX2RwLQ0KPiA+ID4gPiA+IHBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVk
KQ0KPiA+ID4gPiArew0KPiA+ID4gPiDCoAkJaWYgKCFpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2Zl
dGNoX2NmZl9lbmFibGVkKQ0KPiA+ID4gPiB7DQo+ID4gPiA+IMKgCQkJaW50ZWxfZHAtDQo+ID4g
PiA+ID5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQgPQ0KPiA+ID4gPiB0cnVlOw0KPiA+
ID4gPiDCoAkJCWludGVsX3Bzcl9jb25maWd1cmVfZnVsbF9mcmFtZV91cGRhdGUoDQo+ID4gPiA+
IGludGUNCj4gPiA+ID4gbF9kcCk7DQo+ID4gPiA+IEBAIC0zMzQwLDcgKzMzNDIsNyBAQCBzdGF0
aWMgdm9pZCBfcHNyX2ZsdXNoX2hhbmRsZShzdHJ1Y3QNCj4gPiA+ID4gaW50ZWxfZHANCj4gPiA+
ID4gKmludGVsX2RwKcKgIHsNCj4gPiA+ID4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkgPQ0KPiA+ID4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiA+ID4gDQo+ID4g
PiA+IC0JaWYgKGludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCkgew0KPiA+ID4g
PiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIwICYmIGludGVsX2RwLQ0KPiA+ID4gPiA+
IHBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKQ0KPiA+ID4gPiArew0KPiA+ID4gPiDCoAkJaWYg
KGludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQpDQo+ID4gPiA+IHsNCj4g
PiA+ID4gwqAJCQkvKiBjYW4gd2UgdHVybiBDRkYgb2ZmPyAqLw0KPiA+ID4gPiDCoAkJCWlmIChp
bnRlbF9kcC0NCj4gPiA+ID4gPnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMgPT0NCj4gPiA+ID4g
MCkgQEAgLQ0KPiA+ID4gPiAzMzU3LDExICszMzU5LDEzIEBAIHN0YXRpYyB2b2lkIF9wc3JfZmx1
c2hfaGFuZGxlKHN0cnVjdA0KPiA+ID4gPiBpbnRlbF9kcA0KPiA+ID4gPiAqaW50ZWxfZHApDQo+
ID4gPiA+IMKgCQkgKiBleGlzdGluZyBTVSBjb25maWd1cmF0aW9uDQo+ID4gPiA+IMKgCQkgKi8N
Cj4gPiA+ID4gwqAJCWludGVsX3Bzcl9jb25maWd1cmVfZnVsbF9mcmFtZV91cGRhdGUoaW50ZWxf
ZHANCj4gPiA+ID4gKTsNCj4gPiA+ID4gLQl9DQo+ID4gPiA+IA0KPiA+ID4gPiAtCWludGVsX3Bz
cl9mb3JjZV91cGRhdGUoaW50ZWxfZHApOw0KPiA+ID4gPiArCQlpbnRlbF9wc3JfZm9yY2VfdXBk
YXRlKGludGVsX2RwKTsNCj4gPiA+ID4gKwl9IGVsc2Ugew0KPiA+ID4gPiArCQlpbnRlbF9wc3Jf
ZXhpdChpbnRlbF9kcCk7DQo+ID4gPiA+ICsJfQ0KPiA+ID4gPiANCj4gPiA+ID4gLQlpZiAoIWlu
dGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCAmJg0KPiA+ID4gPiAhaW50ZWxfZHAt
DQo+ID4gPiA+ID4gcHNyLmFjdGl2ZSAmJg0KPiA+ID4gPiArCWlmICgoIWludGVsX2RwLT5wc3Iu
cHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCB8fA0KPiA+ID4gPiBESVNQTEFZX1ZFUihkaXNwbGF5KSA+
PQ0KPiA+ID4gPiArMjApICYmDQo+ID4gPiA+IMKgCcKgwqDCoCAhaW50ZWxfZHAtPnBzci5idXN5
X2Zyb250YnVmZmVyX2JpdHMpDQo+ID4gPiA+IMKgCQlxdWV1ZV93b3JrKGRpc3BsYXktPndxLnVu
b3JkZXJlZCwgJmludGVsX2RwLQ0KPiA+ID4gPiA+IHBzci53b3JrKTvCoCB9DQo+ID4gPiA+IC0t
DQo+ID4gPiA+IDIuNDMuMA0KPiA+ID4gDQo+IA0KDQo=
