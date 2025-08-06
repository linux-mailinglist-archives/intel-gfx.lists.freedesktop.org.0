Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97834B1C584
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 14:02:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24AC510E75C;
	Wed,  6 Aug 2025 12:02:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GpCduddf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C1E210E75C;
 Wed,  6 Aug 2025 12:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754481763; x=1786017763;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=r1klu5GFpkpY9sip9jmRGsH9xGh/BzRrws2CZ6re7Gk=;
 b=GpCduddfXp7X17myn89KXoBkafum5bwJe2AJyEKeNtm/j8C9rwA3+ZEe
 5wGr0Vg8Oehd8R404nMXXSmwbLq5nUttOPaVIdMhGhmnNkf0+oJvKmblF
 c/JyX1uhFWgBdJ9FzaO70oPXuWkAELNaiZcTdXOtuycLMNj24wos6ixnl
 ZoS/Teq+OgL8xT2wXeQG/uo8yAFoC/AOJ28moUXxXULGAAWiFu7PYxks3
 mOBc/MGn24gODAzpTh+tze9PafVANfRCiArTFYO9Ee/LofEgAmck7crTW
 ZDlYVe71cRzGFQHrf9U8rVFzWWbDNb7HqR5JjI4NoZOVu258pYdrDbiXB A==;
X-CSE-ConnectionGUID: wB7j+p1rS+Kohilu06/w3A==
X-CSE-MsgGUID: jJh9cw7NQxmrqVDuV5R6Ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56758281"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56758281"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 05:02:43 -0700
X-CSE-ConnectionGUID: A2W1sRf7SRyUOL3ImPpdaw==
X-CSE-MsgGUID: 8PcXh4DJQIKXP1asV7+Hcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="164672696"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 05:02:42 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 05:02:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 05:02:42 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.49) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 6 Aug 2025 05:02:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cBic1hGEcdbO5cxo3JCmhzFraRbb8PEBqG3q9dJiGaXM39Ed87IkQPC7C0g+a+w8CWqgW2Bgbd0RRqI4BngV01pD8LvcsuOVgGW6spYzykkcERKpU1xKeDXWkTXfwpiQH3VC+xtcvWGO7EtG2HwfIa8BBEWjwpgil3qWvOfMVB+4cvEx3nNpQbWrIriMUdTXPXQsdWV5H/dxVg6lqXyALNEmwdsXvQeRwCuBcXl/mhDblaMJrJAs/3HJrdxFIec5QlwEiwZnMpAnZi1Puwb9Xp0IlZgWVmdCP/bxK3Td0RckOrM129dUdi1uNhFI3jz09uWaZ74pd+BnSYbxDad85g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r1klu5GFpkpY9sip9jmRGsH9xGh/BzRrws2CZ6re7Gk=;
 b=GHHR7eN1HEvix4s8Xh5UboEVRz/k8c5v2I1o7UWcDbgZ0bYTQ69CZHN2atbmUItHmzOSwB1llFAJ+qAdCsBCjbEQrElt2gdBEiAnZ6JXGADhYXhD2KaIQOzh607dbyM2nRtSgimembzs1bwYHEbmiUV2IURKOyMiwe6F4ekNGYCbNrTvC2Zx6F01nS5OvTzVU/m5N9HRwNGIBWuICBdZenKzAWkNDSYg2v8pzMRqG2J3dCZypFteiu1wjKwtZRlw1FQP0+wadvGe1RiRyfem3Uw7vMwAoCfqZGsStleJl4hnXbiRsqdMJmg4iAFSc/L76QxKl5o2bHkoxRBVLqb8UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SJ0PR11MB5134.namprd11.prod.outlook.com
 (2603:10b6:a03:2de::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.13; Wed, 6 Aug
 2025 12:02:33 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8%8]) with mapi id 15.20.9009.013; Wed, 6 Aug 2025
 12:02:33 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 06/19] drm/i915/tc: Use the cached max lane count value
Thread-Topic: [PATCH 06/19] drm/i915/tc: Use the cached max lane count value
Thread-Index: AQHcBdvVeYaAGRvF70mfohgKQ2Kx37RViCRQ
Date: Wed, 6 Aug 2025 12:02:33 +0000
Message-ID: <DS4PPF69154114F1BA82DEA259CD7F0E974EF2DA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-7-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SJ0PR11MB5134:EE_
x-ms-office365-filtering-correlation-id: 1d760a66-0ab0-446e-7535-08ddd4e12091
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZFdMT01jcWh0Y0RQbWMxTFIxZmM5SWxSMDloY3BXRmNvNW1Nd0dzMTdoY09h?=
 =?utf-8?B?M21QRkVuMEU2K3FMeTgzREw3VktTZTBydjRCNURGaU5DN0lNL2xLZFl1eXhN?=
 =?utf-8?B?WVJHYjR2dm9uVEVXWHZVV0FVaTRpeTJqZmVxWlhEd0xLNFFwdURKcExKUnQ2?=
 =?utf-8?B?RGpTaXNqRGl3Znp3eFpFWGt1cnhaR2hwUzIxRVUyOS9DSzZrV1FpbmVESjhy?=
 =?utf-8?B?R2lsUXgyMHZPTVF3WlU1OWI0b3FyMjJURTdpdkhsNUJVbCs3d2VYZWhlZ1hi?=
 =?utf-8?B?K29FTGt5WDNkVitudXREeU96L0VIT3poTVk5MzkyNjNpQnJsZzZZWTkxaHlI?=
 =?utf-8?B?dGNZbHdBclphWlNSN2o4bGhidE9DL2wxSU4wOUJWcVN6T1l6eXNNWHFDaC85?=
 =?utf-8?B?Q0RaUjhWdXdWbTZOa1hNVDYxY1QzRTZJV0s0N0Y3WHVHVjhkMnYrVUdmS3ZU?=
 =?utf-8?B?aVdGbXhUUHBSYndSQ3pBeVp6Y3VYREdjSGZ4QW5SM05yWDY0WUZHQUg1ODdB?=
 =?utf-8?B?U0YxZ2p4V1dJa250bVJGeGU5Uml2MmYwSnJKRUxwTXdzbHFzMXpCK1pqaTAr?=
 =?utf-8?B?YW15VzBaV1ZKMUxtaVhzalZZTEJocUVNMklsaHJubXBKWFArREM0ajV1QVho?=
 =?utf-8?B?cUpxK1U4U2pDTHhIdjNKWktuU0V3b1dlR1JWQ0lVcFJiNklFWXp4Z1V6UnBK?=
 =?utf-8?B?M1Bsa2ZmWTlNR2FtMDBEQkRWbEs1SGhmQXBLdTFJYVdrUkx1Z25ST2xJTzlI?=
 =?utf-8?B?WTlicitINnF6bXhKU29GYkE3bGVvMUNqZkNFNnB6MUt6TURIN28vaThHdXE2?=
 =?utf-8?B?dnhocmNCMldBUFluTC9vejgxUGZhRHNkWlBZMUpRcytMUEdFcDF2WXhqTlE2?=
 =?utf-8?B?NkxqYzZvWjFaZXlTWE0rTHNrMnpEYjczZ3V1eDRvbytRcXY2SlBWTDFKYS9u?=
 =?utf-8?B?ZVFqbk50aVBNWWZmS1ZqTlE5MDk0eXNpL2tmbXNBZjZRTzNUbTAvYjUwQ2lC?=
 =?utf-8?B?alROOEd4anpsdDAraG56WDJjTmk3SVJDOHZqczFMczdjb1BPS1kyeDUrM2hG?=
 =?utf-8?B?b1RLT2FYb0FYdEYrbnFUT1RXUnp2R3J3RjVZZWF0TVhVdHA5MGxSQW9tSklz?=
 =?utf-8?B?TDlnWWlTWTFZM0NWanU4a1FHU0krS2xqSmx4SHVaa3pOWWMwdCs4cGtacTNq?=
 =?utf-8?B?S05jTy9EamRlUy9JOTdRSVkySXFTdWxGeGJQSjdyVHZ4bGRKNlFqUW1qLzdZ?=
 =?utf-8?B?RUV0ckVTc3pFcHFGWlI4WkVURTJBS0lLVExJMGRXVHN5c2lIL2ZmdXI2NVlP?=
 =?utf-8?B?Y3NGc2NubVdSS08yV0VZUXE1a3o5TUdjTGJrRWFzY3NuNklQekg5Y0NBZzJV?=
 =?utf-8?B?SGwwcG04Q1ZHWHBReGNSWXAyazNwcDloV1MrcFd5TnR5U0F5SDhoV3VCeisx?=
 =?utf-8?B?OGtlVmV1VG5RYzdvMHVNNDdvcU9Dci9DajlWYmx1ZXpJMVJ3QzZlZGtjckdD?=
 =?utf-8?B?emhNL2Q3anlsQTdPVDcyZFFBbldLckxIZ09NU1BidFNQSjhYWWZuSUZrZmNO?=
 =?utf-8?B?M2lxODRZbit6UmFBa2EyQTB1NGk3blRBRVhVRUs1Q3gwMXltM3YvUkorOG54?=
 =?utf-8?B?UFFUVzE1RXpKcDBvSkJzOGdlMGVmT1pvRVVzVDFWaEl5ekZyV2R0Vm9uTWIx?=
 =?utf-8?B?Q29YbkhadlFCd0JwcGd5b1l3bDN2L0NGZWFxSnc1MDlMeWNza29mOXJvcGE3?=
 =?utf-8?B?azUvbHVlSmlVOWFZSWRhbytzWHZlRVl6b0pwdmVXNHZFbDJpVURGM0VkamJ0?=
 =?utf-8?B?SEgzTWswVjJoc0tHOU5MWEd0ZTB4Ry9IZEFscndXczc5NXpQdEtVTzNpMzBt?=
 =?utf-8?B?YzNUeTEyZXh5R2N0MzdYTG15b1hTZ2dIOWRWajRaODQrc2N5NVFsL2Y4YXNJ?=
 =?utf-8?B?RDEybFBSc0dkNFVLM1d4elZOVUlXUHNLL25JWjRIbHZnR1JtQ2RwQkxYZGZo?=
 =?utf-8?Q?+MhtM7C9g5JyxlKAq/iU5Gkj7kYtDs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Szd6RGVqWkF6RzFwa3V5ZUN1U1hzMzJVbDVEWjQ2ZXl6RlpkRXJzMnJraDFu?=
 =?utf-8?B?RjlCTng1OXpyQnpvdnZabUpnc2E4REc4T25HanNFU0FHSmI3UnBRbXdNcVE1?=
 =?utf-8?B?NUkvSzE5aGJLdjVFZk1OUzZYeVU5YUhnV3VaSWxYVGRsbGlZRmZaMVZ4Sndj?=
 =?utf-8?B?cDgwek0xcDZSdlNtN3c2enBQbEFIUkpGN0VxSXhqNGdGdFMvcS91cEhSbGJo?=
 =?utf-8?B?MExCMVVtcUxidldXRzR3NGR6ejV4T0VUNGRtNFR2ZVE0djB4eCtwTzd5R3BK?=
 =?utf-8?B?TlJzeDVMVzNSL1NNZ3pGV0NDT0FtZHk4UlhMWlZ2TW40NjdKTFlWa0VNZG8x?=
 =?utf-8?B?c0JKeGllUUtKVTRWL1pEMGlCbGt3d3hLeWYrTnkrYnlNTTN1dERGYkE2a1pW?=
 =?utf-8?B?WkU2cDlwS2w1RGF0ZHJ5NnY0eVh0b09LaXRIZWZyS0RIS2VzT041dmNuSzM1?=
 =?utf-8?B?QlVWTCtoK0Z2dXM0emNQbVBWQm4zcW5NWXhibStBWUw5QWd0MWwwM3pzZEly?=
 =?utf-8?B?Ynh3WVRLYis5RUtCTmdDaDJDWXAxeXN2MTYwTmVLdFY3ejZMVXFwMEViSjVP?=
 =?utf-8?B?dWpScGNRd25ZVExVN1pTTXZuYmxCWGJsTkJqMkNyVTN2Y1BxSHl2N0NXeUY1?=
 =?utf-8?B?SHNwdUhpdGI0QlpqcGpadnJIZTBFbk8yVEJCYU9NZERmUGdWU21KcmY3ei9r?=
 =?utf-8?B?UHRJSk4xdlRmcndydURZWEp1ekprZ3RNL1R3V1JIZC92bEVBQU1zaDdTVWRp?=
 =?utf-8?B?cGUyZkIzSnlHczREM1BnTlE3MzNJVVpBOUdlVkpBYWxZL0pVcXR4UmlPR0o1?=
 =?utf-8?B?TkprKzZFTEp3MTdsNlRrMDZrODA3bWRobnNXS1RqS01wd3lXVmJobTRVeE1o?=
 =?utf-8?B?Z2lMZDAxUnFVbld4VzVROThBZ2xOcW91cmZ3NjJ2anlsMnN2RCswVUJ4Znhh?=
 =?utf-8?B?VU94MjBhelhJSWRSTlh0ZFp5UllnVy9JS0hKOWQ4TWYvc3BjcFdhampoYVNz?=
 =?utf-8?B?cEl0Q1ZwWjRYYys3M3preHY4eWZCK2x5OFhkUGlRMW84M0taRFErNmlnRy9a?=
 =?utf-8?B?TTRNRmw0UUF3cFlLekNSVTQ4QWJFU1ZlZXQwUEl1QnlmWGJtQnV0Um85dm9Z?=
 =?utf-8?B?QXZyczR5Umo1SWlCbE1RM0l1NVFVTndCVlFwTnlwQTJoMzRyZHc5cFovckNI?=
 =?utf-8?B?SXB4R1RvMnNUZDg1a1hlR0Q2YmF5cHNwWDl3MGxXMmxRYS9menJOUEhwZHZm?=
 =?utf-8?B?Q2w4QzF2NEZhS3NQSnYyNVQ3WU5sT1ZUdHFMMU1YZmh5WE04eXBNalZ1dnBQ?=
 =?utf-8?B?ZFJ5UWdDWkd4bTlOT1BpNFNlRmdndTFORnJpaFpJN05ORU4weUtBaFUwSFZC?=
 =?utf-8?B?TXErck5CNGRvMEFiVEhNRFVPWVQ5QWo2ZFlSSTFDc2l1SW1yTERsZFQ5bVdI?=
 =?utf-8?B?TUVFVlJkVjJYTUo4VDlxM0o5NDVCUENRWXRwcHRCUDhmTXNOeXY1OUR5NmZp?=
 =?utf-8?B?ZWRNTzlmN1ArbzBXSTZNbG92MGZZeTBkQUZLVVdZTmg2TkM1aEZvZFpMSjhE?=
 =?utf-8?B?TC9ZMWhJL09QYVFZNURpaDQyRXlZUEZISUFsSEFvSnhkMWhpcjVlRWJVRWFQ?=
 =?utf-8?B?WXBzWlVMV05oQW9Bd2FOVlE2UXptb1lZbjJiUHdibldIOGhzbmNNaGlVOGNy?=
 =?utf-8?B?ZUZJZkoyMTZ1SHd3d0RsUkpENHZiZ3YzNk5XdllmQ01MUUlHWFdoYXF5aUtj?=
 =?utf-8?B?cWNrNlk1TjlpSTV6YVo5eExlVXAxeWVtbVRScDd5Y2NvWURiT3crRE9ROW1D?=
 =?utf-8?B?RXVqZFZCMTkydDBLWGhNMFlqWWFubnFLUjF4WGNCbG0zNkh1VEFMMHRtTjRk?=
 =?utf-8?B?TURzcXoxL3BnZk5nVENSTmN6NGExVUl2QXFLTTNHcXphWWIyeENQN0JFc1Jo?=
 =?utf-8?B?RXIzcjZpaVZETnI1V1BVVHgrQVJkYXdXWGUwalVJQkZZM3ZBR2RHMEJad1Zh?=
 =?utf-8?B?ekdZRUYvOEhQalN6SytXWkJNeUl5L00wRDRORVdPcFhSVjh0akRqYmcxd2FY?=
 =?utf-8?B?QWNDK3l3bndFMkozUGIvTFNGVmpaOXZaK2d4ZFlyRGNubnZPcWNFS1pUMitw?=
 =?utf-8?Q?SSDAqrvinTxbotMNxeV6gZyEs?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d760a66-0ab0-446e-7535-08ddd4e12091
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2025 12:02:33.5566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +lbsGeDZ5MHRYAsXkuqYFR1+jq8cV51/xwiZl22+Czvo7v/N8pIGesd4so33wC8hpuBN8JZxw/Cl68pPVsJaww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCA1IEF1Z3VzdCAyMDI1IDEwLjM3DQo+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3Vi
amVjdDogW1BBVENIIDA2LzE5XSBkcm0vaTkxNS90YzogVXNlIHRoZSBjYWNoZWQgbWF4IGxhbmUg
Y291bnQgdmFsdWUNCj4gDQo+IFVzZSB0aGUgUEhZJ3MgY2FjaGVkIG1heCBsYW5lIGNvdW50IHZh
bHVlIG9uIGFsbCBwbGF0Zm9ybXMgc2ltaWxhcmx5IHRvDQo+IExOTCsuIE9uIExOTCsgdXNpbmcg
dGhlIGNhY2hlZCB2YWx1ZSBpcyBtYW5kYXRvcnkgLSBzaW5jZSB0aGUNCj4gY29ycmVzcG9uZGlu
ZyBIVyByZWdpc3RlciBmaWVsZCBjYW4gZ2V0IGNsZWFyZWQgYnkgdGhlIHRpbWUgdGhlIHZhbHVl
IGlzIHF1ZXJpZWQgLSBvbiBlYXJsaWVyIHBsYXRmb3JtcyB0aGVyZSBpc24ndCBhIHByb2JsZW0g
d2l0aA0KPiB1c2luZyB0aGUgSFcgcmVnaXN0ZXIgaW5zdGVhZC4gSGF2aW5nIGEgdW5pZm9ybSB3
YXkgdG8gcXVlcnkgdGhlIHZhbHVlIHN0aWxsIG1ha2VzIHNlbnNlIGFuZCBpdCdzIGFsc28gYSBi
aXQgbW9yZSBlZmZpY2llbnQsIHNvIGRvDQo+IHRoYXQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9s
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgNCAtLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4g
aW5kZXggZGVjNTRjYjBjOGM2My4uZDg5YzE3NGJjYjgzNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBAQCAtMzk1LDE1ICszOTUsMTEgQEAgc3RhdGlj
IHZvaWQgcmVhZF9waW5fY29uZmlndXJhdGlvbihzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMpDQo+
IA0KPiAgaW50IGludGVsX3RjX3BvcnRfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpICB7DQo+IC0Jc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PSB0b19pbnRlbF9kaXNwbGF5KGRpZ19wb3J0KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAq
dGMgPSB0b190Y19wb3J0KGRpZ19wb3J0KTsNCj4gDQo+ICAJaWYgKCFpbnRlbF9lbmNvZGVyX2lz
X3RjKCZkaWdfcG9ydC0+YmFzZSkpDQo+ICAJCXJldHVybiA0Ow0KPiANCj4gLQlpZiAoRElTUExB
WV9WRVIoZGlzcGxheSkgPCAyMCkNCj4gLQkJcmV0dXJuIGdldF9tYXhfbGFuZV9jb3VudCh0Yyk7
DQo+IC0NCj4gIAlyZXR1cm4gdGMtPm1heF9sYW5lX2NvdW50Ow0KPiAgfQ0KPiANCj4gLS0NCj4g
Mi40OS4xDQoNCg==
