Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A47CA94A743
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 13:54:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8001510E4CF;
	Wed,  7 Aug 2024 11:54:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AdboAZ9r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0F3D10E4CF;
 Wed,  7 Aug 2024 11:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723031649; x=1754567649;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=HYCsWPbAquVaMmNeVnF3h6ZTJKoZB685K8TR974Z7tA=;
 b=AdboAZ9rhiPR0f2FeRIKJ9uV3SAWDID+JOBuqGYKEp1eQjm2Z8+ap0sv
 k8bcYi/V3lD2U9Csc0bkdED3ejTjokIDhZlv1SgNmltUGUCFk2z3AjEL8
 ur6vhVdKW9xW6mYMaNmIPgW6Y+9VBvaIn4dUyGoci0k0Z7D7fTvDYivVO
 Ood/hX9bC/ARaYDlb3ZJqc2AqYXCcmDJK5xIUatnkgLSuMPQzVut7A10j
 m+t7HnUO0CQfXAMuLY3F2PjHmvqIxtani9qVLfJbVf5eF0HYlXn7IBZv2
 WazfP5UzucHlf8XjlyP3tK2lr7awBcotGIyddDxNicVPJ9JoxKY0/StPu Q==;
X-CSE-ConnectionGUID: QvNVE6aZQfqCaqiASZRqvA==
X-CSE-MsgGUID: 3jmUDxUhRmiTdtWOQ2pcUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="24972235"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="24972235"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 04:54:08 -0700
X-CSE-ConnectionGUID: +nO/ZtGTTnGOp56XBbx2EQ==
X-CSE-MsgGUID: rYiR4U45QWeapJYFp1V+Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="57065237"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 04:54:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 04:54:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 04:54:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 04:54:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BSW2bqK6nuaxI1BVeOWmB0LYeA88e4KuJF9D+5itSdEzt75i1HAYLtQ/HHnT4U7BHDmlE4pcFE8WoCmE8QlwhXSl0yb4LJ+iwaZQCEp8ygAiCMpo9N7K7segQQlrxYPQp7yJCkKm9MWx0JvSwP7QOr2DXAiYzt54polYti278CN9S8Fxr/0tT72D6Z4OB3hk3Dkzycx3Nx19e+AQQd24XqkFBlYKOXRoZIdff2NcKpdy+Qn/eYHQI2JbWhxHBGkck1Bq9mocyFWQ9dayvzpML6hMCOcgnefLUjtMYkXQSAjTWY3g0L0BcoxJnEpDdRmqMMYlKzZKBSMZVq8ekV0c7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HYCsWPbAquVaMmNeVnF3h6ZTJKoZB685K8TR974Z7tA=;
 b=sv96inkyK48C5cQvmvgmbIxAZWSw6sKknuM2YEOZQV28smYOLOQhOfhUYMGvKH+0FWA0OqDaTSu/DuC/XJcZVN9i3ZIXsmgapsdOrBhPkVFNtnewmXBSDgSQ87AiKlS7cBYpgn+FNjT0M51ys8WEXL9457P1HqgJNIQWRfT6Iegn5RkfyGo7iqnpjgNE5F7eNGbvlonpsPtWvFda6Glo0RUTibS4bZO32ctMPjC/sl3qza2AYbdYjQX01ElFuMTl2piuZmVPnfF5CMqs03s/0IJS+lRpr8O+z45EbIaJibj4HQBom3VF1tS4Q/IhA2S50B5fTpieytIl3ZSDG2K6Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by MN2PR11MB4710.namprd11.prod.outlook.com (2603:10b6:208:262::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Wed, 7 Aug
 2024 11:54:04 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::80b3:e6e7:efec:dbee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::80b3:e6e7:efec:dbee%3]) with mapi id 15.20.7828.023; Wed, 7 Aug 2024
 11:54:04 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Borah, 
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: [core-for-CI PATCH] usb: typec: ucsi: Fix a potential deadlock in
 ucsi_send_command_common()
Thread-Topic: [core-for-CI PATCH] usb: typec: ucsi: Fix a potential deadlock
 in ucsi_send_command_common()
Thread-Index: AQHa6JOpFfgn8EwAjkWcW6CZSaSRzrIbr9YA
Date: Wed, 7 Aug 2024 11:54:04 +0000
Message-ID: <72632805adb3a2dbec4e0e14a7917b1c038add93.camel@intel.com>
References: <20240807062729.3159701-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240807062729.3159701-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|MN2PR11MB4710:EE_
x-ms-office365-filtering-correlation-id: 500870e7-e3c4-47cd-89b1-08dcb6d7a289
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Z0M5ZElkSFpUYW96MkZFbFJwS1N6cGp6dWhKdDNxNW9aMU1QdTllKzZkTzFO?=
 =?utf-8?B?YU9LQVpkRnVhUzBCRWdwZnRBMmRMSE5oekZpVmVJczFsazJ6dzVjS24xRTds?=
 =?utf-8?B?cmRtdFg4QmVZY3QzeFF6N0Q0OTJTNXZhT3hXRk45NDB4cU5pR1NqUkFsYWww?=
 =?utf-8?B?bjhqdjRpWkZaTkw0Q0hlU0I1eGRmWHNrVmpnY3htb3hkVU1MdkQ4azVObnB2?=
 =?utf-8?B?SVJ5Q3BFYmtlQ09XQU13aGRaZmZ5NkJZOFc1M1Y5TkhDYUxFanFYeXQvRUd2?=
 =?utf-8?B?aE1PWW95YkF4eGJlK0M5bS9ZRU9qMEtpakx5L0U0VkdnTXJqTURyOGRzZHdO?=
 =?utf-8?B?bm9NYUt6RkZIQlM5QW0zdUQ3NzliK0d0Q3lTeGVtcHBXMnp2SVVhRlJoK0lE?=
 =?utf-8?B?ZlNsL0thTnJONXg1N0lCZFp5K1hMblFURHU4VDNNZ1dtWHpVdWZza3NRdENn?=
 =?utf-8?B?b0piNUp3enZERHNDUTlJem1CeGRUS0VrU0RWMW92QndKbHRJOXlxUm9mQ1ph?=
 =?utf-8?B?a0NaNjhwVzV6cHU3bGlQbXQwWTdITFZGME5FeFplSXVnL21uSU53UGw4RkNG?=
 =?utf-8?B?OTVBV0Jmd3ROZDIrUHBNSEl6WnhPU2MzNEZTZFFqeTBra3ZxL2FobGhXMy8z?=
 =?utf-8?B?aXJaS2ZGdDlIc2R5SHB6Vms1ZFVWaWEvSTcvMHFKVXpVQjdlVGx0S1dxc1BG?=
 =?utf-8?B?b2xTNjFZRmdoZ0R3b1hXbFExZHUvSmdkRkptYTMzVFYyRmFQQ0dleFpsbFg4?=
 =?utf-8?B?dElaRXFqMXNMcHFFSkR1UDdzNVRQYzhBYnVTa1JpcjQybTRWV3BuOUxtY0pu?=
 =?utf-8?B?MzBVdHZSUEVDcVBFRThrS2k3UVp2U2hXWFRrK0M2aERETU9LK0dhQk0yclhJ?=
 =?utf-8?B?ejNRRTZrV3ZIZ05kcHV4VkdvVVBXRkRncW9MNnBHQ25SQUNwaHZuSS85WWZQ?=
 =?utf-8?B?NFJMaGRoZjJnOS9jZXVsRW5VMmV3L3p1VHdoekxocTlZSjFlYWtTZUVQK3Jh?=
 =?utf-8?B?VG9ZaTdoZVkwOVVrYWR5ZzlsRno1cVRzWStSbUF2bVd6YzRrdmdCdlFGMGJL?=
 =?utf-8?B?L2pCcjA3Y0pWYjl1WTloYmJjczcvVVV0UTFoTXFmdDBGVFRkNXVkWkNnYWJa?=
 =?utf-8?B?TytyMVl6czc3S0JKeFE5eHF3cTVXc014S2JqVFhoejlLTnVMeWRJMXlBa1A3?=
 =?utf-8?B?czg0TjAydUJwVGV6S05pTmltOTgzNzVRejUwWmtkYS9CclVnU21KVS9KT1VY?=
 =?utf-8?B?dUUyNUVkaHg1L0loUTU1WkEwcEFMeGdHMXU2UTUwUm1FT01yZXd4N2RTM1Ba?=
 =?utf-8?B?UHZadlhuazE2NjhJR3UremdtTGhOMXd1eHBwMm1kRm5mVVpBWDg4VnRQQXho?=
 =?utf-8?B?c2loMVpEVldUaXV1SlFWZ1hhbzhDRmY2ZUxSc0wzSzRxWUQrZEhJTHdOZCtr?=
 =?utf-8?B?eG8yTlRnZnZqUE44V01vRlo5R2hraGdTTnU4K2lYME93dnVmWVVuckx4bHVn?=
 =?utf-8?B?OURqeG5iWWEweE13dXhqY1I2MG9Ka3ExZ0NodHRqRk9haDRTeXdvc216R3hE?=
 =?utf-8?B?MW9TWEFCOHk3N0lWeFFtVkdLTTJIR3ZuVnRWV05WREpPVkhVbUx3K3B0eHRO?=
 =?utf-8?B?aUU3V3JpVUl3bE4rUFdKMG5lTE11TEFOYUZnTHB5ZjdLRjBxZ3Q0ZFpobGNE?=
 =?utf-8?B?SE9hLzdFU3pBWURkTTNJLytITEI0YUZ1RGUxRnU2aFdWZ3JpZWZIWWg0NEN1?=
 =?utf-8?B?aUN2UTN3bitTKzZCM2szOGF5TzVVTHpYcWs3L0lTb0FPQ1ZJRXg1MDhUUUw1?=
 =?utf-8?Q?NkSAZoKcOq/XmvlFbmY5ZaIebqELbK7+dK+ic=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NjdudmtBZEN1dUt3MnhQeE1CSi9mTy8xeGNaWW9mc3I3b1dUS0xVbUpzTVZC?=
 =?utf-8?B?TlJlNDFxY1p0RVdtU3ZZY0dMUTUyS2kxUk9EcVFZTzFXYkR4d01TLzhkVGto?=
 =?utf-8?B?Uy9aVjg2QWpDb1ZKOURXWFU3WXdidm5KTXhwbE15cWphMlNEMWxOT2hOWGVK?=
 =?utf-8?B?bzFMSXBMRVdCRzRsZnExUVh2b2VxM2s1L2tlTStteW1saSt5bEdVUGxmZUZn?=
 =?utf-8?B?YWpFTnBEY0V2eFByT2dxS3VqWkN5d3ppTVVFOVZjZkZXdW9ud0k4RFI3elFF?=
 =?utf-8?B?dEpEdFdVZnBHaFdCNDN6ay92OTV1cTFzZTA4MVQ0VkV2MGgwd0kyZVZHOU5U?=
 =?utf-8?B?YWpHdGRzL1VMTXFNVURHZmROY0xiSDljamtRWVFtL3JlQ3dZaTdOZGhXNmkx?=
 =?utf-8?B?ZGdydU9xaW5YNDIxUk9VaUJlUTlvc2lLZTN5Qnhla3NqWmdBSU5Sb2FMV25F?=
 =?utf-8?B?L2R2YlQrMlFJUkl3TE9uaVJoa201VUpNSUJYV1psWTY2bHRXUGdtMmoxeWd2?=
 =?utf-8?B?ejdmbGxadFlON080c25kamdqZnkzTnU5R2J3V0dqeGlXZHlMbE9vNDdZT3c2?=
 =?utf-8?B?c3ZXc1hWeVRSd3UybzRaUm1TR0Nza1VWTGYzeWpianJnS3MxM1FaR21NcEtN?=
 =?utf-8?B?NG9Od2dZQkdoWktsR3B4NStJdVUxQUtLSEswdzdERlVZNkdOb0wzaGFmeFZi?=
 =?utf-8?B?a0JkZlpCLyt0bWpVOVBTaFNJYXp6NzhHR1g2L2ZacEpRU0trTFZMa3djYXZP?=
 =?utf-8?B?RjdSWmRiTml1UE5WenlmUncwZDlQL25TbUlIUUw3eStzbGJyWlJwZ1hJMWVh?=
 =?utf-8?B?RjBGV1JnMWI1MTBHMXlZODNpRWE5bjhVelNwbzRuQ2hUQjFBUFZZWGhkNVJa?=
 =?utf-8?B?Q1RyTThra3JVYjBuaWFMUmlNOGlISDZOL3Q2QlhmQkk3VGJXdXVycmVnNXR6?=
 =?utf-8?B?NWJhSzAvRlcwUUh6YVl3WC9NQ0NDRGlZemVQOUJXaGZiQmJTSXd4eE5XSThy?=
 =?utf-8?B?LzZKN1FBd0hVckZwY3dSR2s5S3BYODdBb2tXSm95YytXWGVJQUJ1TWpDS3gx?=
 =?utf-8?B?WlpOcmdxdW5uODVOQ0tXTDE4eUNzM0lqWGxzbERpNXVvRnI0VDFFK2s2WDB0?=
 =?utf-8?B?c0gxWHVTdzBVQXIzYUszRGxEUW9iakhJV0lFMXVTNG9uOFZ2YW1xZjFVVUw3?=
 =?utf-8?B?R083M3NhaUJVcGhSMkNKcHh5Tml3bWNFaXJqMHVyck0vcENRVnJ4V01OYUtX?=
 =?utf-8?B?RExEbEdTMCtmaXZHeWVId3RmM05wRTBPeWxzOXYyQ01jeUJMTVJTQXpuaHRP?=
 =?utf-8?B?K0I3VjlNdE85T0NtY004b1FkV05lWG5TaGRsd2RXNkdsUmhqV04yS2M5ck00?=
 =?utf-8?B?RGZEZzJBMVdtSTA0dlg5VnRMVllqOFBDUWFGUlVLK0oySUZUMk9KZEp2QVl6?=
 =?utf-8?B?UkVCOFRwWVhEM3NmZnN1MFNpUlZjNGNGOVI2b1ZxREw5SHB0dVNabDVNTlY4?=
 =?utf-8?B?NzNEN0EwYTJtS0wySDRzdTkvMzdPekdLdXJ4ZFRKRHJPWjBGUmpYTHdkMks0?=
 =?utf-8?B?a3c3L21PSUFMTGw2Z0Qva082WVl5ZTM1c0lXTXE1UTMyeUNUbUM1VkhVVllK?=
 =?utf-8?B?SzQ0cVRlKy9Ec1kySmtQRXg1ZTRqSzBtc1dUME1ackMxd3JzZWh0TitvU2I0?=
 =?utf-8?B?UEpDTEtXeGFNcXRacytJUWk4SU02K3pCWm9oYVdBQzVtSjNIcjdmT2FTZTUw?=
 =?utf-8?B?OFlQQ0pMc2J6ZmZjY1NXREZUc0F0L0ZwWFZhWk5NK2c5MXloR1dMR3dFaldV?=
 =?utf-8?B?MzhEVXYvcnU5OTJzVVd3cCt0OXJCSStYZWJMMFhqc0dLTXNXUTNjK3B3MmJq?=
 =?utf-8?B?YkRXLzFTaTEwVnpsOVgySWZyeWZWMFE2ZzE2ajkvcDRsRmZhMTNRYzQ1TUZI?=
 =?utf-8?B?OTJUWEsrQWdjdkUzT2cwZFp5UzNnR1A5VGo2TS9idDhxOHRZOVhqKzdpTElh?=
 =?utf-8?B?WFRDZndlV3JmV1NPdHM1Y0VWYkR4OFgzVTZnQjVyaTRpYVpNVElHQjBIWUNO?=
 =?utf-8?B?THhRaWl1OFZVaWdFSHgvdWtyWTZFdjYzTklLUmFRVUNDRlZ2d2p0dmczQTVR?=
 =?utf-8?B?VFBxcG41YVhLYWVFTTFZcEs5WVdyczNFYkY0U1lNanZJZkQvdnN6NlVOQnRM?=
 =?utf-8?B?c3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D829C766BD5F274290DC55F6CF5A7C51@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 500870e7-e3c4-47cd-89b1-08dcb6d7a289
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2024 11:54:04.0405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3XcLO3AnnuvKU/nZxfW/ygyahaxdJfZAVtvDIzKingm1tdU2V8MorKbrUK4XgxmEDBLgpt8mOc3mu88YUO8ujx0608Sde0jKil3oHONWCNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4710
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

T24gV2VkLCAyMDI0LTA4LTA3IGF0IDExOjU3ICswNTMwLCBDaGFpdGFueWEgS3VtYXIgQm9yYWgg
d3JvdGU6DQo+IEZyb206IEhlaWtraSBLcm9nZXJ1cyA8aGVpa2tpLmtyb2dlcnVzQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gDQo+IFRoZSBmdW5jdGlvbiByZXR1cm5zIHdpdGggdGhlIHBwbV9sb2NrIGhl
bGQgaWYgdGhlcmUncyBhbg0KPiBlcnJvciBvciB0aGUgUFBNIHJlcG9ydHMgQlVTWSBjb25kaXRp
b24uDQo+IA0KPiBUaGlzIGlzIGEgY29yZS1mb3ItY2kgcGF0Y2ggZm9yIFsxXQ0KPiANCj4gWzFd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXVzYi8yMDI0MDgwNjExMjAyOS4yOTg0MzE5
LTEtaGVpa2tpLmtyb2dlcnVzQGxpbnV4LmludGVsLmNvbS8NCj4gDQo+IFJlcG9ydGVkLWJ5OiBM
dWNpYW5vIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KPiBGaXhlczogNWU5YzE2
NjJhODliICgidXNiOiB0eXBlYzogdWNzaTogcmV3b3JrIGNvbW1hbmQgZXhlY3V0aW9uIGZ1bmN0
aW9ucyIpDQo+IFJlZmVyZW5jZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTE4NDkNCj4gU2lnbmVkLW9mZi1ieTogSGVpa2tpIEtyb2dl
cnVzIDxoZWlra2kua3JvZ2VydXNAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
dXNiL3R5cGVjL3Vjc2kvdWNzaS5jIHwgMTEgKysrKy0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy91c2IvdHlwZWMvdWNzaS91Y3NpLmMgYi9kcml2ZXJzL3VzYi90eXBlYy91Y3NpL3Vjc2ku
Yw0KPiBpbmRleCBkY2QzNzY1Y2MxZjUuLjQzMmEyZDYyNjZkNyAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy91c2IvdHlwZWMvdWNzaS91Y3NpLmMNCj4gKysrIGIvZHJpdmVycy91c2IvdHlwZWMvdWNz
aS91Y3NpLmMNCj4gQEAgLTIzOCwxMyArMjM4LDEwIEBAIHN0YXRpYyBpbnQgdWNzaV9zZW5kX2Nv
bW1hbmRfY29tbW9uKHN0cnVjdCB1Y3NpICp1Y3NpLCB1NjQgY21kLA0KPiAgCW11dGV4X2xvY2so
JnVjc2ktPnBwbV9sb2NrKTsNCj4gIA0KPiAgCXJldCA9IHVjc2lfcnVuX2NvbW1hbmQodWNzaSwg
Y21kLCAmY2NpLCBkYXRhLCBzaXplLCBjb25uX2Fjayk7DQo+IC0JaWYgKGNjaSAmIFVDU0lfQ0NJ
X0JVU1kpIHsNCj4gLQkJcmV0ID0gdWNzaV9ydW5fY29tbWFuZCh1Y3NpLCBVQ1NJX0NBTkNFTCwg
JmNjaSwgTlVMTCwgMCwgZmFsc2UpOw0KPiAtCQlyZXR1cm4gcmV0ID8gcmV0IDogLUVCVVNZOw0K
PiAtCX0NCj4gLQ0KPiAtCWlmIChjY2kgJiBVQ1NJX0NDSV9FUlJPUikNCj4gLQkJcmV0dXJuIHVj
c2lfcmVhZF9lcnJvcih1Y3NpLCBjb25uZWN0b3JfbnVtKTsNCj4gKwlpZiAoY2NpICYgVUNTSV9D
Q0lfQlVTWSkNCj4gKwkJcmV0ID0gdWNzaV9ydW5fY29tbWFuZCh1Y3NpLCBVQ1NJX0NBTkNFTCwg
JmNjaSwgTlVMTCwgMCwgZmFsc2UpID86IC1FQlVTWTsNCj4gKwllbHNlIGlmIChjY2kgJiBVQ1NJ
X0NDSV9FUlJPUikNCj4gKwkJcmV0ID0gdWNzaV9yZWFkX2Vycm9yKHVjc2ksIGNvbm5lY3Rvcl9u
dW0pOw0KPiAgDQo+ICAJbXV0ZXhfdW5sb2NrKCZ1Y3NpLT5wcG1fbG9jayk7DQo+ICAJcmV0dXJu
IHJldDsNCg0KVGhpcyBpcyBub3QgdGhlIGV4YWN0IHBhdGNoIHRoYXQgd2FzIHNlbnQgdXBzdHJl
YW0sIHdoZXJlIEhlaWtraQ0KY2hhbmdlZCBteSBSZXBvcnRlZC1ieSB0byBSZXBvcnRlZC1hbmQt
VGVzdGVkLWJ5IChhdCBsZWFzdCkuICBJIHRoaW5rDQp0aGUgYmVzdCBpcyB0byBoYXZlIHRoZSBw
YXRjaCB0aGF0IHdhcyBhY3R1YWxseSBzZW50IHVwc3RyZWFtLCBiZWNhdXNlDQppdCdzIGVhc2ll
ciB0byBtYXRjaCBsYXRlciBvbiwgd2hlbiBpdCBnZXRzIG1lcmdlZCBpbiB0aGUgbWFpbmxpbmUu
DQoNCkluIGFueSBjYXNlLCBJIHRoaW5rIHRoaXMgY2FuIGJlIG1lcmdlZCBhcyBpcywgc286DQoN
CkFja2VkLWJ5OiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KDQotLQ0K
Q2hlZXJzLA0KTHVjYS4NCg==
