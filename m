Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28563B42231
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 15:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75E8710E221;
	Wed,  3 Sep 2025 13:42:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i0qEByoV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F9410E221;
 Wed,  3 Sep 2025 13:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756906950; x=1788442950;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mCDv7PjXmjAhzoA9YTDAfRyv71HuNPKwXw7TzvHxZh0=;
 b=i0qEByoV+pFt3c5r+YiFKTrMj7JCjrfxhIoY+CaO6YWh3jjXh39AKiED
 367gFYiycWhYU/4q85pXbW5yaaKIlEUZynMl9UBZuAFT0UtIe4ofDAqqH
 rdj+ij305puhNwJrl4JWaRw5KFg6Ta14DS5UeYMa/4W1ma+zEc2sw1x3N
 yShcPKJFKCd2qWqcHhxbrqwAwJh21lsUSkRsLfKBZmlnMEkvUIcmeRAcr
 IYIABfji1VW5FU9cyL05IKyR/ozgO5+WtbJpg8T0/l98neFDp3CYvPozl
 QTkBSbjO1HtEzCsNozxoXixvyx5LZNkyQ8tz/hhFc5F2TPWvUe9Fiii/x g==;
X-CSE-ConnectionGUID: 8mBzWC+kTUGHHO4RIHMf/w==
X-CSE-MsgGUID: UOYiN3HqRQOlCBtWCYDfqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="59289158"
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="59289158"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 06:42:30 -0700
X-CSE-ConnectionGUID: cB0JS+lnQlCZepunn7SuMw==
X-CSE-MsgGUID: HNo5RNZOTviB1j6+jigRXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,235,1751266800"; d="scan'208";a="202547440"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 06:42:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 06:42:29 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 06:42:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.75)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 06:42:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mAGttDVJtiD4dooG3RvZYTvN86VXmZcwfv/IyPAa1PvMCHb3K04FWf9Jb8LZ5Fb1spGYe0hnFciEM/TNOIw2ri6G/6kFImS5cSIu+akF6YpAYUbF6QQqsGogPAOkNbPtFbNJJyxLD6SxzErIlB4dxoONIvTgUUtj3nPkCWaSNm+pl9KpSvZF5W+YVPaNhFKSxnmT26QkHMNrrJcXz0OWk+hMObFt2APp3EUBE6r+HFO20AxOdoE0BKw7qUGi+8nR3bRflbbXq1foqnTdDwD4Udk29CiB9VrIj5islKSTRCLBTl7NndKN/K27lNOzacUtVAkHHguqN1Yaoa7sd/i7Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mCDv7PjXmjAhzoA9YTDAfRyv71HuNPKwXw7TzvHxZh0=;
 b=R4BGXtXO1hITFKdB3bYiplHMXWUn0pfrh/E9fQvfB2AqBwGfo763LaDWXkImXLCp6taI2z++zCPrENSnWGnie9Y5F4sxEqmjsVGD+KyZhKnuJPPbSfOjtoSiRfxTZRDvZIFulSBAv7fjhv0NpSA9XEdf7h0D71zS7M1Oz3NKVqZt3wQDNo0M7sqPBXeDnmTjs1rBUI6qUN4OcinzSlU/gBCu+aTfVUO2sccks68UjvznWFW/EFNB7RMP8orCwYuTK6QroMQ4FkmOXE+Ctx4y5JVJAXf64zt38nYlegO0Tu4g4/KHnZGP99JS66iKi7m52Cl04NH4X0bgjLi8hopkOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB4837.namprd11.prod.outlook.com (2603:10b6:510:41::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9073.27; Wed, 3 Sep 2025 13:42:24 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Wed, 3 Sep 2025
 13:42:23 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Kandpal, 
 Suraj" <suraj.kandpal@intel.com>
Subject: Re: [PATCH 02/20] drm/i915/hdcp: use generic poll_timeout_us()
 instead of __wait_for()
Thread-Topic: [PATCH 02/20] drm/i915/hdcp: use generic poll_timeout_us()
 instead of __wait_for()
Thread-Index: AQHcGBZPRwQJXB3tC0C1IY7FCJKGPLSBgPkA
Date: Wed, 3 Sep 2025 13:42:23 +0000
Message-ID: <f247d7f45924b06fe6b0b49a9a47ea4a8397504b.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <bfc9f941ec1628830644f1419d606e3d085aaba0.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <bfc9f941ec1628830644f1419d606e3d085aaba0.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB4837:EE_
x-ms-office365-filtering-correlation-id: 5583d9b3-9149-405b-6a76-08ddeaefb68c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WjNkNFl3cVVjbmlOUVU3dVozUjEyd3BEckRLZGRxNHNHNWFJcjJVSFhTemR5?=
 =?utf-8?B?aDFXbS91TGszQ1oyQ3p3RTk1cWJWTWlYZlJxRm0rZC9zVnl4ZnBxejZ2VHhZ?=
 =?utf-8?B?NkQ1YS93YWc4K2FEbUQ0VWNFTDBreDdYQkJDSXlFR09zNm1COVBzOWFNODhS?=
 =?utf-8?B?NzZ3b093Uk1YR3praWErUHlJd0dGS3hQcXlSTzNhb1dxRG1qR2VHZEtOL0Ew?=
 =?utf-8?B?OUloTHMvNHJBYUpGcmtaUENpdTJ3QnJidExGSGp0WDVIdXR1c3g3RElzenYy?=
 =?utf-8?B?Rm9RSjFYZDlaR3NYazZZZUU5ZVJkUCtIY2kzOGdvSlV0ODdDb0JKN2ozWXBY?=
 =?utf-8?B?S2hNTjBIQkRORnRETklVVUQ2Wi9zUjVTNU5FRUVFS1Roc0FPVFpQWGozQ2FB?=
 =?utf-8?B?OVF6WTArZmJYaFhmSFJjenNaTGN2OHVZeUI4WHZGaHhQTkpTeHQ1ODFYNDJF?=
 =?utf-8?B?cW14NFN3bVZFbWp4dFo4dGNyaEYzUzViaHFHVmpZVEVQUk0zTWJsSFpoQU03?=
 =?utf-8?B?Qmk0bTA0TFdNbDZkbTVJVk5XclR6WXk3bHRMbjdwakN1SEQxaWxyRHA4dmRr?=
 =?utf-8?B?aFA0c3N3RlZGcWRSNlV5cXBMTjUwVEVOdW9hb3MxMisxWWVEVGFXU0FRZ3da?=
 =?utf-8?B?dlBsWkI4UkF6bThGYXlNRXhZMEoyNElMOFJCVldDMHVGdHFUMCsyaUZDTFdr?=
 =?utf-8?B?aTFXNCs3WGh5WExvS1g5dnZERVJPYWkvcE1BelBTVjR1eXpINDRNbW5VU2pI?=
 =?utf-8?B?OEFESFlqZkwwMEFteFRGUlFYUU9EVVNqdWpUNkpCbzhLTEIxMlJlOUJmVldm?=
 =?utf-8?B?OU9rN0tmS0pLZ2RyUWw0bEc2T0ZsNUtscFAwV0tDdTAwek9keVhmVHhNWE5K?=
 =?utf-8?B?VmZlTTl3TzM1cE5hakFvc3YwcDFPM1g4VHd4MVBTTXZwZUtrdEJrWUQzWjlo?=
 =?utf-8?B?TklwUlFxWHpEdTBuaDFURnNtbXhTOXZXSmlFNWJDWVdWanVlTnhoK2tOeWZo?=
 =?utf-8?B?SGJ4WUpHNisrY2tNRjQvZTlhdFl2K0FKcHp0ajdCdTQ4cklLUHpoYlRZV2VP?=
 =?utf-8?B?K1JFZHcwZEJ1bS9rS1RZNGNtZTloZ1orQ1ZjOCt6VkxGV2ZGT0ZTd0xYNE5x?=
 =?utf-8?B?ME0xRXBDMzYwbjdNMWxHQ283LzJlbEpSZzh4WVMxWnlYUE8rRC9uK05CT09h?=
 =?utf-8?B?MUtleGczbkxhYWZnUmtWckN3QWZDdEQzTWRKbGNrN1ZKbjM5ZVBINUkrNkx6?=
 =?utf-8?B?aXlXSGRGTjBMRGFva2NzcVNhakNVZklxYUx3SEhHNmgzU1N3RldoZjYzZWxL?=
 =?utf-8?B?OXNWdVQ2VnNDZG1hSFdiblhhcHZhR3RQNzBvc0pVdTlPNzFtMlFXSTlxaC9p?=
 =?utf-8?B?d0VNTURYenFKRW8ydGJxVnNjOE5GZE50RHdBMk9YMjRHQXdvdHdyNE5mVWNR?=
 =?utf-8?B?cDdFTFo5aUlrcUJ1Nko4d0x2Um5Yc2YrUUh4TW0yc3ZVOXhnWFJieGtIWENy?=
 =?utf-8?B?RWZMMjRGOEdPWDlwS0Q4N05Eb2JNZ0lCVVRZclJXdGFVSDVGY1BPU2E2VmQx?=
 =?utf-8?B?ZzB4RUNGS2xhY0poL2tnbFN3T3F5U3poWGdHZHNETWUxdXpUaTkvNkxQNU9m?=
 =?utf-8?B?TVFRWmorVmRXdElwa21CUFlJVnk5UlZzRldMdDh6cnhraFFSdU1XTW5vL09z?=
 =?utf-8?B?Qi9rSWJzNHlVKzlKL1R5ZGVTbkllWWFUMFl6STIwT1p4ZVVVczZOWTBKYk9h?=
 =?utf-8?B?RVFFeGJVNFZ6MXhOcmg2M2tRVDc5YTNTQUlkV2h0RUZWdmd5enByc01Kc3li?=
 =?utf-8?B?NzY5Z3RZdjVpZWduY1V1dGNCR21FZ2RlYXZaZGllSGhQaTlveitTbUQ4U3JO?=
 =?utf-8?B?SVladWVEdVVqVm9EbVNQS0U3NVVpNy92ZmxsTDExRkpQbit4dlljK2dHTktT?=
 =?utf-8?B?cUphQVRVdHpsMW15Q3d6d01wa3RXd3I1eUFwMXZBYVJ6UjE5SUUzbVN2RDBw?=
 =?utf-8?Q?s9NBcbTc0ypXVuE+J/2gCVk+xRKdbE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnhiMko2TWppTjBoL3FCY1JOeWR5Yjc4NHdPK2puK0VMa251Q1dJck56QnRh?=
 =?utf-8?B?SmxibWRqRjNDZ08xcVlOK3JxTGprckFjaVRDQjlwUzE2cHR5K3llNjVQZkdN?=
 =?utf-8?B?d2lGYStFSnZ2Sjl6a0l5eXFlZG1wVGg3RWtwVllzVVNnMFV3aDh6dkVlMHNP?=
 =?utf-8?B?QkFMRHNxNUIrU2RtS204bWErOWhXUHlvZXVoR1JlaXNMN0Y3NWpmYkt2Rjky?=
 =?utf-8?B?eFZPLzV2WVpXdSsvTHlaMjh6M2l3YllaVzJjaU4zYW9DV3FSeGs1eVJIcVNL?=
 =?utf-8?B?LzZXL1NyMWVPVzkzeG9mVmRQbXhUMkpXblhJUTFpRkN2MktmUWpTVEwxYWVR?=
 =?utf-8?B?RzVFQmQ5T3RxbWtCWDVGSURVUG4vWmQ0d2IvNDJHY3A2d2ErWW1adVA2T20w?=
 =?utf-8?B?Z09NS0xMK0pTZUMvajUzTTVFakNxOGdOMXM1aDhTYVhFT0FuUVNpNnBFMjlh?=
 =?utf-8?B?enhaamlpUFVZdHhJenNwZHByem1jeUNmRkhpYzhuRlMwSi9rcmFOM2xrQWI3?=
 =?utf-8?B?ckhhRDlPV24rYjhrYi9qSk5KU2xXMkQzQVFSSmtjNFM4WWN5WkFoWXJpMytS?=
 =?utf-8?B?R051THJmQlk2TzVGUUVWakVBWEZhaGJxdjdMMksrdmhRNWtGSXlINzdMLzZk?=
 =?utf-8?B?R1d4Vk5ZNCt5UGZOUFFyZEVSSCtpeHQ3WUFSQjBxc2wwUVhuVFE0cy9pUmp5?=
 =?utf-8?B?SHRzcUpOYmJsWndnS0c1cHZ0U1lHRHdwY0NLL0NmZWQrWmhPWmNnY0pxcDA4?=
 =?utf-8?B?bFpKdTc0d1BTaFp5Y1lzNnA3MmQyMkplMFp6QWdud3FwNXp0NGJZc2d1VHo4?=
 =?utf-8?B?a0FKaml3VFU0WGhyYURtYWlpZHBGU1dsZXVCanRzSFIweTFlM2s4WWNFUVZV?=
 =?utf-8?B?RzZoQVJ6Q3o3OHhoUjMyY2NiZzk2b1pjKzVsWFpGL1VwVGhUVldRS01qMXdI?=
 =?utf-8?B?MkxmV01kUkZISnNiUWtvREtublB2U2VIU1J1Vk84bTN0NXAyZkpSUDQxMzRS?=
 =?utf-8?B?QkVaYlRKYmR5TmFSNStnUnZROGxMT2paRjhYMGRzd0tVaElIN1dDSzVaNlBK?=
 =?utf-8?B?L05OL2FzWmZncVJmTTRmUzlFVnRnUEZ2aTBiQ3lFeGo0dEg4cXpkb09rb25E?=
 =?utf-8?B?RTRlTTJnSmxVWGdYVEJETkRZVEwzdFpGVkpuV1BadDc3bm5pVnBVUmRYMVBo?=
 =?utf-8?B?dVU3OEtkWG1OYndLT2FKQ2VsTW9VWk85SU9IZU5lYyt6eEROWXc1dGlLMHg1?=
 =?utf-8?B?dE5QNEl3RUthYnJxUzN2dWJCU3F3am9scXFQTTVQUXdtaWpQQjB6eWRPcnFV?=
 =?utf-8?B?YTlOMHIyNGtOelVOM3RLWEpnWTdDMThvRlRzMHVkWFg0aFNTRkJJZ2pXWjM2?=
 =?utf-8?B?MEMxZDNRakw3OUw3RmErWnlHRE14RTVjNlZYbWl1SVl0M3NFWGZ6QW9aNi9N?=
 =?utf-8?B?VFNqNHZIYjVGZTBjQ051SXlPWXJKSkw2VGtKZVl2WUtvdTZ1OFZ2VFNQU2J3?=
 =?utf-8?B?SFlPMS9LK2h4NDVYZXdUeHFXcTZtWXRhNnU2V0ppTFc2bzRhWHUyaFlHbngr?=
 =?utf-8?B?WFRKWm1mV0xLNmJMWXNVRzZwakZXelB3K3ZxTzVlaStaTUhGcWFqS1B2Nk5B?=
 =?utf-8?B?QmxWZWkyTUszZFc1T3FWMWhZTGdGT3RLVVNBYnQyTXZZTkxNVUNKVk9YTXYw?=
 =?utf-8?B?djZrak5JNlR6dTljK2JEU29qZE9ZOVcwbUJ5aGNiYWJGaHE0SUU4Y2xpaVRz?=
 =?utf-8?B?aVNVT0dtMDM2SDBBNUg1Mk02UzhJQm1GMi8weHYvaEJwcTJVdUFEZG0xbUFt?=
 =?utf-8?B?NGdPOVdoVTJrMmJRSjJxc3BTU25iUHJXZ01BTnNQaElVTk1pa1A5NnJDNlp6?=
 =?utf-8?B?VUNxTVpaM05xN0oxOFlxV2RjSUNiSVduRit6NUpGK0c3SElLVXpYaU5qOVRL?=
 =?utf-8?B?YWZBSGhPeVNjcFdqUW9UMDgrdmpYWUljTmp1RlJuVkNKU0htY3hUemRrUW9X?=
 =?utf-8?B?dnRnWEp2U1l0MVIrT240cW5OYjZkcVlnWHlZTnpTMGxaVnNsaGVUcmpPWXNl?=
 =?utf-8?B?azgzTTVtNEk2NEhEdlUzZ2k1cFlhRnAyT2I4UzhBY0hUTHJvUmI0cHdGS01H?=
 =?utf-8?B?S2J3WUFSdnpXc3VIR2dURG1RS2tscWNaUG9FWDRKcEV1SVd4QU5iVTNyYkxT?=
 =?utf-8?B?RFl5aXBsQlNiek5QOE0yVGFmZU84QVAwZ2pSVXlMREx1cFp0SWRIemwrYzhq?=
 =?utf-8?B?bmhWQ3V1MkJjUTFGYjl6TEZ1MFdnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E39130CC2F2733428D6F8346368C1B3F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5583d9b3-9149-405b-6a76-08ddeaefb68c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 13:42:23.7016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gm3ADGAfxk3qV+APgPWFOfLg5op/PY9B6seQ+MzJPb/NCOk4+02/d97xcZb55h0ME6Acv4uA1hn927menEgPOTUZCdCuXoEJtd6GAqvbeFQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4837
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiBfX3dhaXRfZm9yKCksIHdoaWNoIHVzZWQgdG8gYmUgMSwgMiwgNCwg
Li4uIDY0LCBhbmQgMTI4IG1zIGluIHRoaXMNCj4gcGFydGljdWxhciBjYXNlLg0KPiANCj4gVXNl
IGFuIGFyYml0cmFyeSAxMDAgbXMgc2xlZXAgaW5zdGVhZC4gVGhlIHRpbWVvdXQgcmVtYWlucyBh
dCA1MDAwDQo+IG1zLg0KPiANCj4gQ2M6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50
ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRj
cC5jIHwgOCArKysrLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9oZGNwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2hkY3AuYw0KPiBpbmRleCA0MjIwMmM4YmIwNjYuLjBjOThlNTA1MDFhNiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gQEAgLTExLDYgKzExLDcg
QEANCj4gwqAjaW5jbHVkZSA8bGludXgvY29tcG9uZW50Lmg+DQo+IMKgI2luY2x1ZGUgPGxpbnV4
L2RlYnVnZnMuaD4NCj4gwqAjaW5jbHVkZSA8bGludXgvaTJjLmg+DQo+ICsjaW5jbHVkZSA8bGlu
dXgvaW9wb2xsLmg+DQo+IMKgI2luY2x1ZGUgPGxpbnV4L3JhbmRvbS5oPg0KPiDCoA0KPiDCoCNp
bmNsdWRlIDxkcm0vZGlzcGxheS9kcm1faGRjcF9oZWxwZXIuaD4NCj4gQEAgLTMyNiwxMCArMzI3
LDkgQEAgc3RhdGljIGludCBpbnRlbF9oZGNwX3BvbGxfa3N2X2ZpZm8oc3RydWN0DQo+IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+IMKgCWJvb2wga3N2X3JlYWR5Ow0KPiDCoA0KPiDC
oAkvKiBQb2xsIGZvciBrc3YgbGlzdCByZWFkeSAoc3BlYyBzYXlzIG1heCB0aW1lIGFsbG93ZWQg
aXMNCj4gNXMpICovDQo+IC0JcmV0ID0gX193YWl0X2ZvcihyZWFkX3JldCA9IHNoaW0tPnJlYWRf
a3N2X3JlYWR5KGRpZ19wb3J0LA0KPiAtCQkJCQkJCQ0KPiAma3N2X3JlYWR5KSwNCj4gLQkJCSBy
ZWFkX3JldCB8fCBrc3ZfcmVhZHksIDUgKiAxMDAwICogMTAwMCwNCj4gMTAwMCwNCj4gLQkJCSAx
MDAgKiAxMDAwKTsNCj4gKwlyZXQgPSBwb2xsX3RpbWVvdXRfdXMocmVhZF9yZXQgPSBzaGltLQ0K
PiA+cmVhZF9rc3ZfcmVhZHkoZGlnX3BvcnQsICZrc3ZfcmVhZHkpLA0KPiArCQkJwqDCoMKgwqDC
oCByZWFkX3JldCB8fCBrc3ZfcmVhZHksDQo+ICsJCQnCoMKgwqDCoMKgIDEwMCAqIDEwMDAsIDUg
KiAxMDAwICogMTAwMCwgZmFsc2UpOw0KPiDCoAlpZiAocmV0KQ0KPiDCoAkJcmV0dXJuIHJldDsN
Cj4gwqAJaWYgKHJlYWRfcmV0KQ0KDQo=
