Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 017809B7CD5
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 15:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92BD610E8AB;
	Thu, 31 Oct 2024 14:28:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IqVP5wo0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7D5310E8AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 14:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730384903; x=1761920903;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PvZraJ76LVSDQJSUVy4+YjRvG+4kwMaJGThiR1fFvZs=;
 b=IqVP5wo0tdQ6+eODidrKdUMtF47vYQZigM2TsAYAmh7TJTOM7IyZqtEB
 MxnwCavUDJfizMHxIuE6r7xQL3rycS54Ftl6+gh53sQtSjY74lb6oevF9
 R9Rr3JJkRUfINwWqngud5tLA1fPLOxym8/j62B5ffZk+7zH+MBu+mTbel
 VNIaMVCpKZCxOVMNx6hUWGxcMdeI852/RIg2peok8d/YP+nA8EUudGblb
 EG7RjMCWRmRhB7KRZiRLZip2vvN8JoQOxXi6UvsFedlPAQUrEMXLmq4EK
 Jk2c537koQNcgNh4H0XXBU506uX1J+yOThAC8sN2I1BifuT5VZghccJRK A==;
X-CSE-ConnectionGUID: puQBW8YZTKCzdtA02iEvlg==
X-CSE-MsgGUID: RlJCNR/4SxCTDOVoX2Q/Ng==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29981794"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29981794"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 07:28:22 -0700
X-CSE-ConnectionGUID: z8BCvo7sRrS2+yrvE66WoA==
X-CSE-MsgGUID: tylO5kzAQBGhTEv6Z+PQ9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="87173199"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2024 07:28:22 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 31 Oct 2024 07:28:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 31 Oct 2024 07:28:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 31 Oct 2024 07:28:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ApywUdhZ/vCpjoeaVWLQxvZjfO6xdvDRq2OZvOQQE4wXRqCAWnlpu+/WF46kRQCqXq0R73kUSF6uL5oTOVeguGaFpsIWMzsxl03+rphRU4OyQCP7+hDzrXzDyQ+qdPtdt7x4+fpfiB8EWhBDz4MPaWSdpztwMKvYCMfD4LbyrRw0FTCVchSC715fmhmIMbCVkimQlAG2laA9dtPsj79QRdTstQ9RgJxUg0MZRy+7yP+/VHt5hD6kr37Z9TT+ZeYmDgVzvYu2NbJ+cBjRtq/b0aftU9AjLBqF8DQn9tIuSIB7ef1TlylIN85yhtZXn8a4ljifjMcL2zfPKeLkZJuNYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PvZraJ76LVSDQJSUVy4+YjRvG+4kwMaJGThiR1fFvZs=;
 b=tu83KOh3BAdGyDjEnV6sJ4A1mFgW2Zh1mQTfWJftBK1LWImLRDtK8tVgMWufcPkh4m3/JWb+tqOkkALOfm0YaUJ7XxksBc7arp3uCitEDOgmR10u/dRu038yLf+6Zav0JXec/RsefSsPgyQ067cUcQb/2Wif8NI6SZYWeJZreKm+4/I3AXoWftBnctibURCr67wA8KEKu7Twhoojgl27+oUx92JrpTYRqABYYgUbx1j21bhJNikqax9etjunXPyqzRea8yFUMd8RaLH40WkIcKyz/P9rAaXziLPvSpPvvG2DEdQ1uXCcrImjTImtqaM8F41/MFGLwpGfpsaMjeMx+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA1PR11MB5921.namprd11.prod.outlook.com (2603:10b6:806:22a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.23; Thu, 31 Oct
 2024 14:28:19 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8093.027; Thu, 31 Oct 2024
 14:28:19 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Jadav, Raag" <raag.jadav@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v3 0/2] drm/i915/display: Power request
 asserting/deasserting
Thread-Topic: [PATCH v3 0/2] drm/i915/display: Power request
 asserting/deasserting
Thread-Index: AQHbK4rsvUfBEUPIBUuUtiMi76r9Q7Kg0jgAgAAYL1A=
Date: Thu, 31 Oct 2024 14:28:19 +0000
Message-ID: <MW4PR11MB705490B264289108778C8133EF552@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241031114027.225217-1-mika.kahola@intel.com>
 <ZyN_FKqlDfQBH_24@black.fi.intel.com>
In-Reply-To: <ZyN_FKqlDfQBH_24@black.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA1PR11MB5921:EE_
x-ms-office365-filtering-correlation-id: cea759d5-a170-4038-e164-08dcf9b84419
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TFRldTByZTZFSzZwVXBPRUEyMWcxN0xlR1g2WG9WWGN4YnViRGh1cERXbUFR?=
 =?utf-8?B?NGtCSUwyN3hpeWJzVDRnZnFsUjEwYXB4eFNzZzhXdEIxMGlGSFMrSUI4a3Fo?=
 =?utf-8?B?SmF5bEQ2aVVieXcydE1aSGJTVTdjbkJSTkxnVk9hM2J2eTkzZVdpK0FXM2hx?=
 =?utf-8?B?QTVsbDZPL2xjeW8xaHdSTlRYdnNEekdCdVpEeTV2b2NZOGhSakoxYzVnbXhY?=
 =?utf-8?B?NWJVL2hBVGRKRHpaOU9oSG5ZWkd0YlI0RmtzYVVPWkpWUFAzb2xLMjIxNStZ?=
 =?utf-8?B?bzk1MG11eDZMSC82QTYrdU9OUk9FNWhRQjVnayt1eEV6WmlMNEJoY1k0SEhV?=
 =?utf-8?B?TWIwdFZPcHpCbXBiQWdxU1o1Y3lUV0dVUTRGRzJ0NUx0QmVmcHlxUFdMazBk?=
 =?utf-8?B?NktvZ3BlN3dGL3dEVEZodGlwczBPWDV0RXFVakJSQURtWTZ2TW1sVWZDQTFS?=
 =?utf-8?B?QmtRem9kaXBNN2pac1cyWVpKTU5qRHpRdnZMdmlLeFdUcHNXNkd3V0RXVU5y?=
 =?utf-8?B?WnVWZVMzRldMM2xNbHJaeFFDbEJzWERJQVJQcUpQNk1aTUlhd3NkUzEzMXdO?=
 =?utf-8?B?WitxOTVmVXBuaEI0K1Fpak0rS2RPKy9NRm9mZHF3NGF2Qk1FdnNOcDYwOEVl?=
 =?utf-8?B?UTM3WHo3TTdHWXRsQnpQZmV3cDJGNUhYWU5tcXgzZlJNejlXbTBsd0l1QzhN?=
 =?utf-8?B?MUdtL01KZHd0OHVoT1REekxEV0ZCSU1Ka2lzNGx0VnlTYlpPY1R3WHE5MTJQ?=
 =?utf-8?B?eW9jMWs0aEpiTU5sOUVhenBqSTUxZ2ZmbTFlRUp0ZVFZU2hWbFdWVHhna3Ni?=
 =?utf-8?B?bmprKzY5aUxSUEgxbHZsMzkybUFjVTliVHZCNXVqbzFlbXlDN1pReVplTVl3?=
 =?utf-8?B?b2d2MldqakNRLzdhNnNyeENocXl3Z1k2S24rR0hZbS9mY3EweXYyYXMxY2Zt?=
 =?utf-8?B?VzBEK2hzdU9yNWhRekN3dFJWZlZaaFp5VFBkS2xZRFdIWUVUcHhXR3RwdHJP?=
 =?utf-8?B?bk8yMDZ5b05DMS9DOGtVR3N3MnRVMmJWb2xLOE43SHpRd0hOQzRMZENkWklz?=
 =?utf-8?B?T25tNVVvcnhxelJSNUpMQVB4Yy9RbGdWYnlJSUthVHV6QlVxVnlYTndUU2d6?=
 =?utf-8?B?SFdyaGpNbjhqRkpic1pGbEo1MEhvWFVGaHVBYTVlRnhwZnQxa0dTUjNmTis4?=
 =?utf-8?B?MVROT1FzZGlOaDBKWm5BanQrQzdHNzh5MkJUSk1UeU5WN2djbTFTTU94ZnFW?=
 =?utf-8?B?dkIyek5JRVNMa3NwLzF5aGg2ZVE5bVBjVTVmeHUvSkhLL3g4YklYdHR5dklZ?=
 =?utf-8?B?SU51S2Z2d09zRUVtOTRicDNJVm5EOFo2UCtibmJPa3ErQ1ZKVWU1MHd4c1Jo?=
 =?utf-8?B?Z08wRlJPc1YrNlNhd1MwRnIwN3NQQ2Z5aWFDMzFkOUhLR1dHbXBiRzRpQmt2?=
 =?utf-8?B?c2ViZkE5R1R0Z1BDdUNCVVh1Qlk1UGZ5YUcyUEFmTmE2ZG04TzM4V1FhWCtD?=
 =?utf-8?B?b3VLRzZKVkkrVTVlUld0QldQdnozb1NNUnlvZzBIOWZjNDZPS1p1OUk2Y2pL?=
 =?utf-8?B?SzdnODY5dTdKTHdBaVNsNWdsdnl6U2F5V2k4UHdMWXJzT2F6M3ByOFduS0VM?=
 =?utf-8?B?MVRQcVNBcEdRcElRQm1YUFZJaW9JU2NVQUsyMDVlSFZqcDluZXlvamplaEYv?=
 =?utf-8?B?a1hCTFUyUERVV040dTZFcVBhdkFJNHN5bld0enlDK2tQdlcyTjF0NFhKUWxw?=
 =?utf-8?B?cU9wZlVCNU11NlIwMVVDWVJQWldQd0xYWGpDVmlqbGNRc0NZK0NlNWhrR0tE?=
 =?utf-8?Q?Z4W3ejcIsUMhY7Zs5KDXzGWunaxTWty/rRrzg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WTZJRW9jZU01dFgvWEsxU011RWdtWE14eGJPRkY1Y0FmV0JWSXhDZDh5RlA5?=
 =?utf-8?B?aXJ0aVBabWJIQ1dNR1VuZmNjaUd4VXhjUFVCWENjcTQzV1Q1VGZuY3ZyNmh0?=
 =?utf-8?B?VGcvR2dYTmNUSlZzenY0enlhNlFQdFRmS25QdlZvS3JvL3dQWGRnb3ZmbVAy?=
 =?utf-8?B?WTRvV1Y5OFF1eHQycGVKTlcvVkJZRmlVL0FGQmlaVHZMcmhzazkxMXVKS3J5?=
 =?utf-8?B?SjltN3hNNWFGalJEYlAxUlFWSkxlWXVOYnVnM2pFaDRhSjlQY04zMHlKLzFi?=
 =?utf-8?B?N0dQekdxL1BOUEJFM21wS1ozMDBRU2Z5TGY5N2tteTFwTTdRb2k4S3MrejRw?=
 =?utf-8?B?TU53Qnprd2ZuL2pVdGRtMGxDRkV2OXhtcUdxOUFjT05waUxXbUhSRHQxV2tm?=
 =?utf-8?B?bmlkVWdXcGtpeDk3dEVxbytFUkNQTnYvRURoTGQvOFV6V0czczV6ZG4rY0pw?=
 =?utf-8?B?bW4xUEQ2TGEvYVBxN25BR3Via1VKMC94N0Y3eGhTd2h3TGJhOGtkejB6ZVFX?=
 =?utf-8?B?R2xoSGQ2SkhGaWZLK2RTQmNZNERieDlxZnhVbWhqcEY5bis4VTZVbWJ0cWdj?=
 =?utf-8?B?VWtaWVhqVDFWcUJKZGtZcmk5QUVheG04Rnh4eks0YUlZOVRsWkZqTEcvWktZ?=
 =?utf-8?B?ZzA1dmw3V05WQ2lQZHhLdWdYUk5td2l5WHhtY3d1YWpCd0ZFa005b2NTc2Vo?=
 =?utf-8?B?TFJmd2U2dGdZK3BwbFpUTzRNN3c1L0JvOHJVVU9xQlFkQ0FsbWJZeGQrR01I?=
 =?utf-8?B?SzNFS0cyZW1mR1gvZ083dzAyczlzTDFDeHl0cUpBL3c0a3pwc2kvQ2xFb3pO?=
 =?utf-8?B?NTRiRnVMaHVKazBXZE54VStHWm9MeFR2MGtqTkhtVTcxZFZCVGlJT0lDaEo4?=
 =?utf-8?B?eURIMndFck9jc2M3cU5aNHFMQkNLMkFuY1FlNmRWTGROVHNsVGJRWnQ1TDNK?=
 =?utf-8?B?UEF3MFdsVHcxcWZoWko1ckNEcDJHdWFneEZmM1kxQkZkR1ZVS2pEc1pmbTFs?=
 =?utf-8?B?UU1WMi9SRmZXMmFheTRIYVIzaURIQk8rd2c1NE5JV1lUMkU2aDZCRU94MlhE?=
 =?utf-8?B?OW03TFFDa0dVSEk4MTRIN25POTJ3Mzg1Q3M2RHBUQTdBcUlXS2pnQzBZeFVj?=
 =?utf-8?B?Y1dyZVVSUTM3TGR1MkJLQi8vdWIzMlhad2xFNWZOcTFuQlBrNGtnc3Rma3ZZ?=
 =?utf-8?B?ZjJxcHExeVVTdWNZUWVVcGVkaHM5aVRxbC84ekw2dmlQRWtVTFJITTFWMzlq?=
 =?utf-8?B?dFN5K3pVSnlRV1hYN3B4MElBOHY1STBFNFFzRksyVXF2Y2VaSzMyeWtXY3RT?=
 =?utf-8?B?TVN4ZGE0NjZjMUNpWWhLeHVlL1BER3RmZkNTNUpEb0RZcTZQcStkL1VQTlNX?=
 =?utf-8?B?UldwTEhrN2NUSnB1bkU5N0o1Vk1HdU8vOCtTQ0I3cWRaMis2eDJWalQ4Uy9h?=
 =?utf-8?B?WUllUG1sMFdlOHhYVDUzQUtZcGV0T0JLQnRZUzhzazd5YUVhdVpVZWRwR3dv?=
 =?utf-8?B?RnhPMGVGZGY0RzVtYzZYeUliQmJZcy96a3g3MXZ6V0VYbm9BbXRZbFJ3R283?=
 =?utf-8?B?ZFQyMWlOdlpJcENjVXppaFlNTmlWU0g2NWpGd0E2N3JsWUxtZUZ1bVZKOFRF?=
 =?utf-8?B?SjNBNkRYam8vU2tmWnRONWJyTHVmNmhxRE83UHN1VjRkY0dOU25nVktXRG5n?=
 =?utf-8?B?akpxNCs2OG9RZXA4Ny9QYWtod1I1SzV3ckV0WERJVVJCcVJzZ2RCdDRXcFBZ?=
 =?utf-8?B?eG5UMzRpeWtLMEZjRmpOaXJ4RklnaU5XTU5iYlNKdTd5TDBIMU9HdVlCR1JJ?=
 =?utf-8?B?RjdjVjhYWUdRbWluQzZQdnoyWEltaTZnLzJOWlZ6cjFBb0NldllxQ1RWTlBy?=
 =?utf-8?B?eW9HUGZ6QUV4TVI0ODcrdlBUckFpWG5Ja0VzZVhudi9GWU52dzdKdVlJa2FU?=
 =?utf-8?B?VHhHWG5NUjBKSnBFdFdySUMzVUtxOTRCYmh5RkVzaVFFakpDOTFqcmZRWUp2?=
 =?utf-8?B?QjRQZ1RLTm93Y0tHUU4yQTdnSGZlQnN1VTNsRU5oODJScmVDa29EdXhWRFY5?=
 =?utf-8?B?ZnRTWTVCbnA0OGVtMTJNaGpMcGFEU3dxM3BDNVJ4dkVzVXV5eStRVm4yZVZK?=
 =?utf-8?Q?RvbgrdNeGns/Le9l1GJ3Xv8Wh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cea759d5-a170-4038-e164-08dcf9b84419
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2024 14:28:19.1353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wv/sGG6+DNJ8JimOjTBtdu/iAfWv+NpQ+QMtE9xl6792fbz/vO1p8b9iBuKE9SA0WNieHmENg7L2TXxOvOtFnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5921
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYWRhdiwgUmFhZyA8cmFhZy5q
YWRhdkBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCAzMSBPY3RvYmVyIDIwMjQgMTQuNTkN
Cj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FA
aW50ZWwuY29tPjsNCj4gamFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tDQo+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggdjMgMC8yXSBkcm0vaTkxNS9kaXNwbGF5OiBQb3dlciByZXF1ZXN0DQo+IGFzc2Vy
dGluZy9kZWFzc2VydGluZw0KPiANCj4gT24gVGh1LCBPY3QgMzEsIDIwMjQgYXQgMDE6NDA6MjVQ
TSArMDIwMCwgTWlrYSBLYWhvbGEgd3JvdGU6DQo+ID4gVGhlcmUgaXMgYSBIVyBpc3N1ZSB0aGF0
IGFyaXNlcyB3aGVuIHRoZXJlIGFyZSByYWNlIGNvbmRpdGlvbnMgYmV0d2Vlbg0KPiA+IFRDU1Mg
ZW50ZXJpbmcvZXhpdGluZyBUQzcgb3IgVEMxMCBzdGF0ZXMgd2hpbGUgdGhlIGRyaXZlciBpcw0K
PiA+IGFzc2VydGluZy9kZWFzc2VydGluZyBUQ1NTIHBvd2VyIHJlcXVlc3QuIEFzIGEgd29ya2Fy
b3VuZCwgRGlzcGxheQ0KPiA+IGRyaXZlciB3aWxsIGltcGxlbWVudCBhIG1haWxib3ggc2VxdWVu
Y2UgdG8gZW5zdXJlIHRoYXQgdGhlIFRDU1MgaXMgaW4NCj4gPiBUQzAgd2hlbiBUQ1NTIHBvd2Vy
IHJlcXVlc3QgaXMgYXNzZXJ0ZWQvZGVhc3NlcnRlZC4NCj4gPg0KPiA+IFRoZSBzZXF1ZW5jZSBp
cyB0aGUgZm9sbG93aW5nDQo+ID4NCj4gPiAxLiBSZWFkIG1haWxib3ggY29tbWFuZCBzdGF0dXMg
YW5kIHdhaXQgdW50aWwgcnVuL2J1c3kgYml0IGlzDQo+ID4gICAgY2xlYXINCj4gPiAyLiBXcml0
ZSBtYWlsYm94IGRhdGEgdmFsdWUgJzEnIGZvciBwb3dlciByZXF1ZXN0IGFzc2VydGluZw0KPiA+
ICAgIGFuZCAnMCcgZm9yIHBvd2VyIHJlcXVlc3QgZGVhc3NlcnRpbmcgMy4gV3JpdGUgbWFpbGJv
eCBjb21tYW5kDQo+ID4gcnVuL2J1c3kgYml0IGFuZCBjb21tYW5kIHZhbHVlIHdpdGggMHgxIDQu
IFJlYWQgbWFpbGJveCBjb21tYW5kIGFuZA0KPiA+IHdhaXQgdW50aWwgcnVuL2J1c3kgYml0IGlz
IGNsZWFyDQo+ID4gICAgYmVmb3JlIGNvbnRpbnVpbmcgcG93ZXIgcmVxdWVzdC4NCj4gPg0KPiA+
IHdoaWxlIGF0IGl0LCBsZXQncyBzdGFydCB1c2luZyBzdHJ1Y3QgaW50ZWxfZGlzcGxheSBpbnN0
ZWFkIG9mIHN0cnVjdA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgYXMgd2VsbC4NCj4gDQo+IFBlcmhh
cHMgdGhpcyBuZWVkcyB0byBiZSBpdHMgb3duIHBhdGNoIHNpbmNlIGl0J3MgdW5yZWxhdGVkIHRv
IHRoZSBzZXJpZXMuDQoNClRoZXJlIHdhcyBhIHJlcXVlc3QgZnJvbSBKYW5pIHRvIHN0YXJ0IHVz
aW5nIGludGVsX2Rpc3BsYXkgaW5zdGVhZCBvZiBkcm1faTkxNV9wcml2YXRlIGFsc28gd2l0aCB0
aGUgY2FsbGluZyBmdW5jdGlvbi4gU28gdGhpcyBpcyBwZXJoYXBzIHJlbW90ZWx5IHJlbGF0ZWQg
dG8gdGhpcyBXQSBJIGluY2x1ZGVkIHRoaXMgaGVyZS4gDQoNCj4gDQo+IFJhYWcNCg==
