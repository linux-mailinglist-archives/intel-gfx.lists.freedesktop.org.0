Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 992179DB344
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 08:44:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4676B10EC3A;
	Thu, 28 Nov 2024 07:44:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VMQchlo8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38AC810EC3A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 07:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732779857; x=1764315857;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ppbjLgRlq5wXw3PLdy5FITVM1CICQGgaqXrtpR+omf8=;
 b=VMQchlo8v8ro8/dCG0s8rIr7hhS19j/f2nHJIu/57NJ36wCoVyFbLmrR
 v3qsyys5Rga4W4+7gtXgsxkwiERxQKGhCZBlvytv088h8ReAfKpz9pD/U
 /X/WAWUnG5zRQ6IR/Btkmyh5mls1ltTTExklppcxTIr4yAi5mgKDA54ey
 jS/blKot6uatpIsfoWqGmdYOM6e4jmFyP+AosoKKvrHPLlUNQ2X1Jhxto
 9d7bj9Rboh2zMlWsh0CGPe/pN5qJOgjMLUQ9CGCNjSgALVyj3mXP7M7dF
 clh2Ztu1breAHfkZMxpHrVMcsAXPwE8em1/pxR+5Zvq2t918WWoFSfzI7 Q==;
X-CSE-ConnectionGUID: i6tBQ+BXRM6Y6hjA/iLpFQ==
X-CSE-MsgGUID: G9rUiNZCRy6HBivqUzJdMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="35861587"
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="35861587"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 23:44:17 -0800
X-CSE-ConnectionGUID: LKCTS02+QxKdT//WmyKmGg==
X-CSE-MsgGUID: gaTdrgUPQE26sqQ9WfLn3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="97249139"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 23:44:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 23:44:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 23:44:16 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 23:44:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hO5il4/C3wbdbwD7L7M96TrlbEhks88yZ7mihc9NHqduRnHQf1tw3HbgpL2bC5Sdc1qFR5WHSNE5otRywuml9AGnSOI/YcvQ8l8rgcZBNDB/nVd3WYlZh6LZ7QWk+dkJ+y7vE0MY6nRUNbFtGQftuEyrraoJ7lrfghQ1Y8lkW+OVsiLXMl64Utf7zYzjuBCY+TRm6JrONnMf9RmWfZ3CAB3odCxiPVwi+akJgeO8l7T7P6EjlUXbf/iNk/c2ayhpADgMuyN+o7XUP7exK/G0YqKi+e977M4uiH00GmbmSUOIgW4rxglZoJuQKyxAI3wECxGO3hG1TOIMZhrDBP8wog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ppbjLgRlq5wXw3PLdy5FITVM1CICQGgaqXrtpR+omf8=;
 b=mWNHdTgSwyYaTyw/4HK0K/desNlfjvZgOXnMzrpMdX1ypKXX8t/OAnZtkT19/9mOUSrmfCB/dIXYtDUGxGm5qJ5DlX3BABAtaPn4oBN4Xe0iJtE3ZpxxfAQCMX/7BlZ4K9kRdeleZ7/mAIf3NWXE9+FfQdUF2v6VZk834TzQGKnsbSQmkAu0qMYpL4qiiraSLQ01M22r3wbj3dr0x2uSxWknn4cVMGf5oo4/gKUFs3dFIoz7bpN3XARsL7O3YPenXdJHGXfU6OtW2bqI8SCTCh/QP0GO85lkMzqg5Fn0RZZsgGf851NPk6uKLe6RizFmUOsrYnku0ltjQyPGCtZdIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DM4PR11MB7759.namprd11.prod.outlook.com (2603:10b6:8:10e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.12; Thu, 28 Nov
 2024 07:44:14 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 07:44:14 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Brian Geffon <bgeffon@google.com>
Subject: RE: [PATCH 4/4] Revert "drm/i915/dpt: Make DPT object unshrinkable"
Thread-Topic: [PATCH 4/4] Revert "drm/i915/dpt: Make DPT object unshrinkable"
Thread-Index: AQHbQJNBj0NawJjkZkWtLNPIXQtjCbLMUXlA
Date: Thu, 28 Nov 2024 07:44:14 +0000
Message-ID: <PH7PR11MB8252708D9C153214B2AF112A89292@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
 <20241127061117.25622-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20241127061117.25622-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|DM4PR11MB7759:EE_
x-ms-office365-filtering-correlation-id: f6206988-8aeb-4664-a7c6-08dd0f80749f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?d2JDRW1IMFJWTWdMck5mSGhMaDI0QzB3NVh3ZzB0QUVFMXJuODlCVk9iWGVt?=
 =?utf-8?B?dzVvQlZRL1o3cXhhTXc5aHJKOSszOHd0U1M1R0VJNy8rRkxCaGxZZEtiSFJK?=
 =?utf-8?B?SDJlQWgrZ016ZmZRVlhMWGFIa1lQdkJlM1d6QmdwNGVGTTJVZVZJc1h5VVVP?=
 =?utf-8?B?M21rY0tCNXorT3gzRUlmWnlsZzlkWkcwbFVGODZZanlxWGFqbXVlaDdCdXJF?=
 =?utf-8?B?SDNTcFJiMGNBM1N5Qy8xWHNRcG8yUHEwbGI2WG14YkpsYjBaWE8yNXVTREJU?=
 =?utf-8?B?YytQY1VhcVV0OUVmOU5PN2lJZ082VUF3NDdJM1dhcTVqWkRJMUNPSGNRaVd0?=
 =?utf-8?B?aXAvcFdicitzTGpBM0NYbFNQTlRnaXNPNmliNEkxZy8zdnpDYlExZGxJaWw3?=
 =?utf-8?B?cWVQRmhEREwzZHpEWGU2bHc5eXgzRFVOLyszOVo0SWRraTlOZ29EbEFYemZU?=
 =?utf-8?B?S2t2N1Yrd0ttUkNQaGpWT29pRmp6bk8zb1ArYWt4eUJnY09UdStZbkdnZWpz?=
 =?utf-8?B?NWJ2T1BYWWt2MUZTSEpwL2dPeEYrZ0JMWHo2ZXozR0NEMm5GTU1hVVFrVzVJ?=
 =?utf-8?B?UUptQ0dFM0REblBNUjRxM3oxRnhiejFIWStDbFJuRjNHZjBVWGNiTzVkMGtu?=
 =?utf-8?B?cEFycTgvczhmeEhTTk5WU0hHWGJBdXZzcU1jU3c0SzVka1pmV1hPbklia2Na?=
 =?utf-8?B?b0tBdUhBczREdEJ3K2NuMDR6ZWtPN2FyK3RMRUFkMEkyVTF0S0JDRllBMGNG?=
 =?utf-8?B?K05uMEVmZHR2UlhXdXhBVUVsYmRMTXRSZ1h4YWZOWVNmWVVwdXBhOXlQWmpD?=
 =?utf-8?B?eUNIMHk4NGs3OVFYU09VampnTkQ3L1ZwVXFtR3JZdVVJY2pUMDRYeTNnVVVW?=
 =?utf-8?B?Z3JYS1pFdW0yYTJSS0ZpSmVwVkVtV3dUc1o1Vy9IYVdVd240NEFpUkR3U1Rm?=
 =?utf-8?B?Z0l1aHppVVErcDBQVjB1WXFwc2tSYjdWM0Eyak53WE92bStIbVBWWkVnZngr?=
 =?utf-8?B?dVNiL0hLVDdWc0c1anp1MmlrWWJ0MUt4Mm5lR2hxMHVySW5DcmFON1JqN0ND?=
 =?utf-8?B?L251bUNzNDNLenp0WDJyR1F4R096dm5ENVVodVhNdWN3dlJJcjlKQlZwYlA5?=
 =?utf-8?B?dkRKblRtMGl2Vk0yT0RDd0JjbGZlQ3Z0dHU0bVNTbStjajU4RklpN0xYYzcz?=
 =?utf-8?B?UGVEbVZlcDEvdkdNMTZWNFRIb0E1MmMxbU5uQzdtTFVIZkRCcm9yUk9wS0FO?=
 =?utf-8?B?SGJJQjhOa2I2WnNleGNjMFVXdHNRMC9JUkp5RURjTy9lakZTTEQyZk1TU0Yz?=
 =?utf-8?B?UmJaR29aUzVIdUlZeUhXemFlWmU3S0QwQ1dGMTV1SDFBQnZ6aWl5TnR0T3Jk?=
 =?utf-8?B?b0JWcU9nYW5uYVk2UnpjMGJYV2VNdXZ3bDdvaituaFg3Z3E2NHhDN1ZtOUFZ?=
 =?utf-8?B?TGRDOG9OcGRUQktlazJCWllMUXAwR2xvM2RQWlpXVkZaV2NzdVlFbFM5aWZW?=
 =?utf-8?B?ZGVlR0lxT2JEZmtCa2pZWkE1bmlmdnZBL3FzQ2owYWg3bStEOG53NllzRjJo?=
 =?utf-8?B?ait5S21nT3FxZVhBcFQxS0syVXVBWExJWWFnNERIdmxsZEU0aXNvTGtRN2tm?=
 =?utf-8?B?WU5VV0NZRHIvRG1RZVo4a2p4YlVZTmZ4cnZ4Z0pSTlVLU3Rrc2J3U2ZFS2ZY?=
 =?utf-8?B?dzdVY3pYbXBCOStzeDM0bFA2OTdWV1d4aEZ6QXBZRFk5cVR2WHhVeVBsMkhJ?=
 =?utf-8?B?ZDBES2gvWDJOUG1BY0tqV3d5dXVVUkJNZVFOYS8yUmk0UkxhZ2QzUDhDZGtV?=
 =?utf-8?Q?kAuWUalgwvO/5MLOvjxxoY+NQdH4m5D6gJ4Lc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZHpyK3RtNnNHaG9hZTdjc3k0TkpuVXdkYnQ0MzFTbGNTaWp0ZjI1T2FKbld6?=
 =?utf-8?B?Z1NPUmxrNlVhMDA3OEh4TUp5ZUxNSjlja3dQVkE1NFlLd0s0RjVuZDF1TEs5?=
 =?utf-8?B?Zlo5NjZkeCthLytZZmxvTitRVURrVStnQWxXTi9uTUYxR0xKaXIxQVQ5d00v?=
 =?utf-8?B?c202VmlHcmE3V09iNVY3NTM3MjVkZ2QzbU1XVlNhc20xbVJVekJBT3llVmtw?=
 =?utf-8?B?ODl6Rnh5Q0JxbHhwdEtsY05PNzU3dDRKVzQ5akRkOTFlazZvVnhJUDRDT25Z?=
 =?utf-8?B?cGpYbGhkcDNrWFBwcTlZakV0Q0RmcUNsanQzTXlHNGlSZEVybzBKVUFtbEM4?=
 =?utf-8?B?N0RzR3JiU1k4UWpqTy8rZDdwcVVpTSt1N0p6bGlhbUZMdVdFZSt1ZG9lb2p6?=
 =?utf-8?B?SU9EbEJVZit5NkFPNlNjY2VDZkRsc2RwYmYxMzNQQm1tQkJmZFlFdzVncng4?=
 =?utf-8?B?TFF1WlVnNm5RMjN2UUZUMkY3cUpNd0FHL0NGUnRUdFY3bEt2eGczVDNESHdB?=
 =?utf-8?B?QWNxT2JtU05BSWtNdXRRVHIvL3ZvOGtmK014cXJ2anYxM2Y2d2hQOHlucHoy?=
 =?utf-8?B?SUdUVDlqUXFVNklVeFhINFFYc0tRc2JiT3RYVVlJRVZlSWN4UGJwbC9SN3dM?=
 =?utf-8?B?Zlc0d1Zjbndtb0FXNkQrZGM3Q083ZDQzK1N0US9qQ0dYMEZwMkhXeEtsODRR?=
 =?utf-8?B?WTJBaWwrWWY0RURnTGxuL0JzQzF0czZGemNQemNLWUR3M083RXFtODIzcTA1?=
 =?utf-8?B?NUdnZUdMa2YwTnVtKzlhWVNud0FXamo5NUt4SEZMdElQdXFTbVJ0cWFMZno5?=
 =?utf-8?B?aWZWRXhvM2o5RHQxMTVTOE5ZRUgyQXZFam02aW94NWVHWmQ2aTdjemIzU005?=
 =?utf-8?B?OE5zZWRTNksrVW9PTzc5QzRoVUdOQ1FuWkU0SyttNmgzUld3aU4vWFJnU0po?=
 =?utf-8?B?eGhpSlZvaXRlT2Q3bW43YmVGdVhIYjlmRk91c2ZCTW5lbzV0V25IVXhQenJk?=
 =?utf-8?B?QXdGMWpMNEhXNkZxWk5yVTdzU3BzQUVsUklaRURlbXgvc2N3VmVhUm00UVA0?=
 =?utf-8?B?UDlyeThoRllkM3k5cm9SZUFZd1VKaVZmRHI3MWxDVmxZQjg2TDJUL0VyaVdQ?=
 =?utf-8?B?ek10azZOZWN2SEhOaEU3bHZJM0k0bzRVamhCcnFWWG5nR04wSmRiQmVFbmRl?=
 =?utf-8?B?RWRWcFhLUkxkN2k3eVlMM3hxVWNwSU40aDBMRXQwZlBhVmx4RG1HWnI1Ritz?=
 =?utf-8?B?b3pvMHRWeE5EMHcyYWlFNXNjdnBDSmFzRnZBaVN3QjN4SHZVZ2xVK2pCU25q?=
 =?utf-8?B?bS9McHduRTJUcWVvTTF3UWpKRVMvaTRaRHFzU1A5aHRUa0c4WVdyU285MnNj?=
 =?utf-8?B?cEZVR2dHazNTZ0ZFS1E3ajVxTW9lYWFkaGVTcHhrdEgzdHVTUy90RHErMWRZ?=
 =?utf-8?B?dXF2eituZW0vRUlDTXpwTytBNmNiL0FKVjZRMUdPdDliV1BBQ2krVXBKTVBP?=
 =?utf-8?B?M3VEUGI5K0tqYmtRd0d4U1JKMElKQit0cUpnNkNqUEl4d3VkcnA2dU8wd0JX?=
 =?utf-8?B?U0poWFoxaGRMelh1bCtEQ2hnNU1XQmg4NERQUitheEpuL21NQms0MVBQV1lD?=
 =?utf-8?B?dnF4cE45ZEtxVVRVa0lLUkRVK0U5aUsxOTc4NWxPd25zZlFtZDdwaUt4cEo1?=
 =?utf-8?B?ZDRuSklDQmdIaDM0U3YzQjJ6U010UE1HZUh5NkNIUWJ1WmM0cFF0WlhWN0Qw?=
 =?utf-8?B?SHpuMU1WRjFRZTR5RjR3U2RVWUVXUml0dEJqYU1BWjgra0REMFFaNkRsaGtw?=
 =?utf-8?B?SitQLy9WWVUra2doM3lTZlVHU2t1dThjMTd3MkJBelF3Y2psdWRJQ0NzWVpH?=
 =?utf-8?B?NGtpM3dwcm5IMSs1aS9SN29HOGlPcTBQdEtzKzRBSDNJRVp0WWxTM0N0UGdx?=
 =?utf-8?B?QTNkSzlRK0FXYU1oa3hzZUVpcHNXNGZYbmNBd3dtVzJlYWd0NVRzWW0xLy9h?=
 =?utf-8?B?aDVXbVJWWVU3QUh5dVkxR25FMVVIUk5ZM29Pc1pLbUljSFROWThJODcrc1lm?=
 =?utf-8?B?QTlOcDBCbXc5eWdVckQ5aWdKZWRjaW92L2E5NWdCajIxaitSajBKME1lVmZQ?=
 =?utf-8?Q?jobisgydEysCjz7RPYhumUUW+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6206988-8aeb-4664-a7c6-08dd0f80749f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2024 07:44:14.2963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qx/0+6PgyguX9B9Sn1x2GWBHBMZAnHj5mLf09p69AUPEY7zciLEuq+LrPIFTWyBh60dFr2Igk4qVmg1Tpd2dXVcBp88cPGh6Qlj+q9I0ogE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7759
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

SGVsbG8gVmlsbGUsIA0KVGhhbmsgeW91IHNvIG11Y2guIENoYW5nZXMgTG9vayBHb29kIHRvIG1l
Lg0KUmV2aWV3ZWQtYnk6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+
DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyamFsYSA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IDI3IE5vdmVtYmVyIDIwMjQg
MTE6NDENCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEJyaWFu
IEdlZmZvbiA8YmdlZmZvbkBnb29nbGUuY29tPjsgU3Jpbml2YXMsIFZpZHlhDQo+IDx2aWR5YS5z
cmluaXZhc0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCA0LzRdIFJldmVydCAiZHJtL2k5
MTUvZHB0OiBNYWtlIERQVCBvYmplY3QgdW5zaHJpbmthYmxlIg0KPiANCj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFRoaXMgcmV2
ZXJ0cyBjb21taXQgNTEwNjRkNDcxYzUzZGNjOGVkZGQyMzMzYzNmMWMxZDkxMzFiYTM2Yy4NCj4g
DQo+IE5vdyB0aGF0IHdlIGZvcmNlZnVsbHkgZXZpY3QgYWxsIERQVCBWTUFzIGR1cmluZyBzdXNw
ZW5kIHRoZXJlIHNob3VsZCBiZSBubw0KPiBwcm9ibGVtIGFsbG93aW5nIHRoZSBzaHJpbmtlciB0
byBlYXQgdGhlIERQVCBvYmplY3RzLg0KPiANCj4gQ2M6IEJyaWFuIEdlZmZvbiA8YmdlZmZvbkBn
b29nbGUuY29tPg0KPiBDYzogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNv
bT4NCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2Vy
bmVsLy0vaXNzdWVzLzEyOTY1DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIHwgNCArLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oDQo+IGluZGV4IDNkYzYxY2JkMmUxMS4uYmI3MTNlMDk2
ZGIyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5o
DQo+IEBAIC0yODMsOSArMjgzLDcgQEAgYm9vbCBpOTE1X2dlbV9vYmplY3RfaGFzX2lvbWVtKGNv
bnN0IHN0cnVjdA0KPiBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOyAgc3RhdGljIGlubGluZSBi
b29sDQo+IGk5MTVfZ2VtX29iamVjdF9pc19zaHJpbmthYmxlKGNvbnN0IHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmopICB7DQo+IC0JLyogVE9ETzogbWFrZSBEUFQgc2hyaW5rYWJsZSB3
aGVuIGl0IGhhcyBubyBib3VuZCB2bWFzICovDQo+IC0JcmV0dXJuIGk5MTVfZ2VtX29iamVjdF90
eXBlX2hhcyhvYmosDQo+IEk5MTVfR0VNX09CSkVDVF9JU19TSFJJTktBQkxFKSAmJg0KPiAtCQkh
b2JqLT5pc19kcHQ7DQo+ICsJcmV0dXJuIGk5MTVfZ2VtX29iamVjdF90eXBlX2hhcyhvYmosDQo+
IEk5MTVfR0VNX09CSkVDVF9JU19TSFJJTktBQkxFKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgaW5s
aW5lIGJvb2wNCj4gLS0NCj4gMi40NS4yDQoNCg==
