Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E0B9C19E2
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 11:06:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1B6010E958;
	Fri,  8 Nov 2024 10:06:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n8krA75r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A8DA10E958;
 Fri,  8 Nov 2024 10:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731060406; x=1762596406;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=IcM8w9j60SmbZZRTpsE5bvREVvkLQ/mBaK7GLZ8wPwo=;
 b=n8krA75rUdT9X0+82tlyK+SvgXROG0qgBlIQgOuA6Zo81oxpI9UUmtkE
 FNFuHwRXCr57w+b40fswB+KCN7Sb/LV7aEIVKRrUkECo45Yuie88NpTM4
 NTMhHimru7yi+hYF0+pUyCN8is/18hBUmcpL0mU6Qv+Qh6Pmw+ndjqOXQ
 ZmUfLuPRIz7+Z/wweND8eKbA3JEVitwBACk5YIw0Kz/MqlOqv91hEhEph
 k/EhoKAtwAHBSUY4qkvlxNRIiHefMgYKpNw2UgMmsLp/+1WlUTBT6e569
 oEaISpxwndLXJWzyLAgbovQ6qNGZrz9eGE4wafGSSrGn5dZ7ildftRcTX w==;
X-CSE-ConnectionGUID: 5N5/BgnwRPGXZkbGjZlO2g==
X-CSE-MsgGUID: EJwx909aTAqBamSIIiCbjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="31047054"
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="31047054"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 02:06:46 -0800
X-CSE-ConnectionGUID: iKMrXjysSPu+fBJofI14zQ==
X-CSE-MsgGUID: CwHaVUrOQl+mxS41LzXShA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="116329318"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2024 02:06:45 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 8 Nov 2024 02:06:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 8 Nov 2024 02:06:44 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 8 Nov 2024 02:06:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w+5OwNYxc/1zLzY8WuMq5umq8uYseZcQNs7k7j0zKULR718LIOrj3DcPhqxLG8DqfYfSkZkSx7CZOqWoldwMKhxSkCxPld0rmKiKZw3y5/GduLBcvaeck5V0sQwewxoOLScJqyaydPwBXhOTxb78JZKp9h5VqVCCBNC8jLRZvXRomknl+0b0iklzwWVYlXeev/zwCLKKHKgQwKkh0xFjtMXJy82R2zqRva7vYyUBo7GYvb/nmfpco+EaN83MQuYgO05Lpx+/6JvMon84V9/vcEQswjxB4nkCDYsrCX/9cVBXPqXHpLP3R6ye14eDTCifgUKt8Y3hmJbEkUyLtrdw6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IcM8w9j60SmbZZRTpsE5bvREVvkLQ/mBaK7GLZ8wPwo=;
 b=vyWlika2egJXHXUSOwCpG/AurM4Ag3M8FB0VPtECu1rM5HiPeKoGJCnABquYRc4o+S2AMwcIK3dGfhhaL/anBzNIfV2c3qpvq4kfbhSn0lWduH2ap7eV8/Osx9Bx0mYTBABJTO1YPD2YHgJFbDMxl7NtJozUYw4f2I/ncrLvWDU/kL+n7QLyGJWhfQmEcpr8EN/rcgrESTsknicCNgA5GBD3KfHgy2b4RJJ2v02/TGgacKk9jrqIT5tJ4gLJTwLLg6V3+yUxNOssT4opJWmR38sVh76CA1VMZIZVUnMb0UqaUS3sy7iBr+fIwiBkj7O85V/OEDeOzctshryA9AywYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8137.20; Fri, 8 Nov 2024 10:06:42 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8137.018; Fri, 8 Nov 2024
 10:06:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Golani, 
 Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Disable Panel Replay as well if VRR is
 enabled
Thread-Topic: [PATCH] drm/i915/psr: Disable Panel Replay as well if VRR is
 enabled
Thread-Index: AQHbK2xoo+cnAthZLEaDvxGLsmiCVLKtEJwAgAAkW4A=
Date: Fri, 8 Nov 2024 10:06:41 +0000
Message-ID: <fcf49aa2b4af04a5b2c54c746bec5815bcaa44e8.camel@intel.com>
References: <20241031081025.3215966-1-jouni.hogander@intel.com>
 <CY5PR11MB6344C7BDA3DDFFBFF2DC1CA7B25D2@CY5PR11MB6344.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB6344C7BDA3DDFFBFF2DC1CA7B25D2@CY5PR11MB6344.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7378:EE_
x-ms-office365-filtering-correlation-id: f9c6fc51-eb46-436d-b596-08dcffdd0b16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dDZYUWpmOGpiYzVnK0dpQTlWcXROdSs4Q0gra2JuSWY2dHRFN1pDd3FXVzkx?=
 =?utf-8?B?ak5saGl0alNNa05wWVR4RXNTN0pYajBsRXhhUHVxaHFoS1lKVVFQYVJFSzdL?=
 =?utf-8?B?Ykg2RmhHbW5pZzJJelgxdS9MWnoyUVdNK1g3S0dFK1hOM3p3ei9vSG1XajRj?=
 =?utf-8?B?WFh4TEVFeTNlbmtUS01lK283M0NYdWNzVmMzcW10YWh5VHR1MGltZDY2T1Mr?=
 =?utf-8?B?QWNNSHFjemE0T08rbDVkRVBEVElJdDRxOHRPTy9GNDd1YmFWQzRzbmJsZjZ0?=
 =?utf-8?B?ek1TeFhOK083cW5LcnQ2YlJoWEpJcFZJR1lHZ3FsUXpMNlNHdHVZOU12Q2l3?=
 =?utf-8?B?S3FKeVJhcjFqQ3k3b1lwaWlMTjhpZUcxU1VJZjF3UFpPNTVlMGZLNXYyNDNj?=
 =?utf-8?B?Z3kybXljSEprKzN2TlNic29SWTdSc3FKUWRJb1Z6dUFxd1haM3JocGdOWWFk?=
 =?utf-8?B?cGg0QlNMR0tQeXhMZmFOMmNJTUJFZm0xNU8rVkE1OVBjMjAwaitYeGh1cHlQ?=
 =?utf-8?B?ZXFxRVYzV29uQXpDS0dpdGZsMXFobndrUnhVc05lMkN3S0tvU0RHQmttQmdE?=
 =?utf-8?B?Z3RaYU9YVDlPQm9tc1Fidkp6dVYvTDE0djJUcGYyeEhVcU9sbkk5TURRU3Y2?=
 =?utf-8?B?dzNxVGdheVVacTRCNWVZek5SNzlXMEJMTzlPSmpPRUVWYUpnTzhXN1ZwWWQ3?=
 =?utf-8?B?Q0tKSkN2cVgydjcvTjcxY1Uxc0pVM3lmRWhYSG1SSXhFaEJsVGJucDdva1NN?=
 =?utf-8?B?OWlXRGlxUTB1UHpDdFdyYW9Gc2FWTWRzUHF1eGI4Ym1KMnl3dXcyb0RBZ1N6?=
 =?utf-8?B?V2w5MnQ0bUd6RUMrNThCY0pqVTNQY1FuS0RGMzdPMDRFYytjemZWemhBbGI2?=
 =?utf-8?B?aUh6QXFuZitOVVVrdTlwdVJkVEhXbjc5L2hFZGVLa21XdjIzanZWZ040MHRQ?=
 =?utf-8?B?S0VCWWwyVEpUd29FRXVLbW84Q1F6NXBjeVRYYkNrQ2oweFcxQzhrYURkTW8z?=
 =?utf-8?B?WXNpZThlNHoxakZxd2N4QnpwaXhMNmo1WmxCWFBnTlc5cVpZdWdXNlpZSE5X?=
 =?utf-8?B?VDdhcHhHdmZLMEFyVEQ4RUpyamM4aTlQNXByci9jSTJuZlBjb0t6WUZkblBR?=
 =?utf-8?B?UnAvSkNHdXJJRkRvZ1M4UXh1QU85d3lXYUVGVEVON0xjZ0ZNdTVBSjVoTlFo?=
 =?utf-8?B?bzJBMk44SkxEc2kxQ01PV1RQMGVUM29iTGlYSi9sNVBYYzVzeENFb0h3OFZF?=
 =?utf-8?B?dkpCUmZVeDVDZi9HUjcyRVJteVdSUlNBbldNV0ZxZ3JTR2pYbGVJR2xxTWlh?=
 =?utf-8?B?bWV0d09FN1JhNVVlRTVleXcra0NLcW55OCthY3JyY0h6ei9qazcyLzgrZC9k?=
 =?utf-8?B?WkR5R3pjYWVtcDhzWjB5UVJQRHZ5ckFueERDaW8wK2xXY1FBZ3l4THpGb1gr?=
 =?utf-8?B?MlRWdE4vV2ozRzYrOEFXdUxwc1ZmbFRISk4yVm83ZWdZYVdxL0NGT1BvdUx2?=
 =?utf-8?B?Qk1ZVVYzMGIzSXM0U3VOL0tqUm5DWFY5UWZkQ1JKN0JlUGFKK0NxZEZ3ZlI2?=
 =?utf-8?B?cUtBZWhaS01ONDgwNWtVMFQ3eU5ZYkNBS28rYWZZUmxiVjd2VWk2Z1BmZWcr?=
 =?utf-8?B?dHNNZytoeGkzcVg0cFR4a3Z3c29yc1o1UDQzVmQ1ZlFoUlcwMXc5WGs5bE1Y?=
 =?utf-8?B?WjZVUnRkbXVoM0Z0anNQeWwvTHlucWN6bWpkOUpTMzNQem9SSU5GV2dTSCtm?=
 =?utf-8?B?UFZyNlhPMkg0UEhlbDhFcGVwWjYzY0MyV3hyOVZrajVNSERaM0dhU3FCYURJ?=
 =?utf-8?Q?S+CsSZrA0tWRHvsKdgzRV2hudyLwQURGboMgo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3RyNElBdDlyK0NLcFExMVY4NkR2K3I4N0k0K0loa2g1TUpuRzRTczBpZ1Bj?=
 =?utf-8?B?RC9ENkw5ZXpEL2pwSC9USGlNMGFrMktGVldUMWJtZTFEcDE4My9oS0dmc1pX?=
 =?utf-8?B?UVRxeklQWjIyTUd2SWtFcDJ3OUJvTlo0czIvS2VtMzArQ0RLZHNTTllENEtY?=
 =?utf-8?B?ZVlRbWdDK3lzUVh5Zmgwc3BaWGptbkVDeTFSTGJvYkJXOHJtY2FvZ054dHhL?=
 =?utf-8?B?K0JsRWtzS2xab2E5c3JOdUtGeDVuTTFNNXB5V3dzWWJJeGxhV1lnN1BFKzZN?=
 =?utf-8?B?MStoUVNDczFKREt4YWlQdzY4bzhqaSs1N2pLeWk5QXFxcFk0cVNGS3UzN1Uv?=
 =?utf-8?B?U3Qwd0tGWkJ5Sk1ndmpEQTVQUXNYRGNmekFYMmNST2ZidlZkU1VWNGJEK1o4?=
 =?utf-8?B?aTFXRldveXRRM2krQlBqa3ZKTmJuYmo5L0hoV1dsZGlrMzIrYnZsWXd5TDBu?=
 =?utf-8?B?a1dZK1dVWEZLcWdKNkk3S3gxWmd3d21PYmZjMkJwQTBVS3I4bmpueEw1U1hr?=
 =?utf-8?B?QUR4NjlXVnNzYUFET1lkeGpDMnQrN2t6LzVrSnhCRUJ6ZFcvWTRjZ2RrZ290?=
 =?utf-8?B?TmcyVEpyTUtLanhXMXBYaWNtcjZINnFYa3VtMFZXL2ZvRitQemU1SkhTeTFZ?=
 =?utf-8?B?M1l1ZFFTcGJlcXI0akFsZEE3cDQxM2pjbVJKMVF3MCsxazk3dzB5YUdvbW1M?=
 =?utf-8?B?Q1Rkd0IvUDh6Z3ptUzZyWW85VnN1dSsxaXh1aUdhQk9hb0Z1c1J2UHNpbHA0?=
 =?utf-8?B?NDNZVjhCaEptZDJYeCt2bk4wNng3Vm9zQTFWVmE1YW5xamJJRnJVdkRNT1Vo?=
 =?utf-8?B?VTRlbzQybFNrZVE3bk1iUFdZUU5kTi9uazBhQnlLNVNRR0hibWxGeUxwY29S?=
 =?utf-8?B?dXhHZVROemlBUWdTTTNqTW5uV2pWZEhJdjdnTGk1VVpaSWtsQk9tSFZQaVZE?=
 =?utf-8?B?Q0k1dUNLUlR3cUo1OXJQS2ZnQ25LdVZqditWaFdXVUdrVWpCaUF6OGgvN281?=
 =?utf-8?B?dnJseHQrSkZpVGlGY1dNWGMvSjBVTFJoQVpwcThITE1MeWZiWkpKbWYvTURm?=
 =?utf-8?B?cFBzajZObXpJbkZnUUt2NlhlL2t4b1ljMy9NR3RCV0Y3Y0NOMDZicm96UnZo?=
 =?utf-8?B?OXdTWXpUUUE2MnpucWM3REt2SGw0eC9mVjY5U1ArUFlXRmdPSjJyQlUrVnUz?=
 =?utf-8?B?eE5kMHJFdXFGQW9KRG9SR3k3M2pSaHNVaVhTYTEvSjdQdGNvVDR5NWc0WkFl?=
 =?utf-8?B?cVU0cGZyL2FKVzVCV2ZCSVFUSXlrQnF0Q0tTdElueVIzMjRad1IybW93TWQ5?=
 =?utf-8?B?NDVUSWdwVndEc01DT3p0ZjdJWVFNUGhMVEJYTGpLaWl1Slh4dUZEMkJrN1Bq?=
 =?utf-8?B?NUVibWQrbk1tK2tOWENvMGFxRWg4bjdxRkdpLyt2NmljSDJ0TjlJdUkybzlX?=
 =?utf-8?B?VE1PeGZ0WkJoelRrcXdBL2NIMjBKMWd3WitCNnVOemxOSmU4NWNpdmlNcG5E?=
 =?utf-8?B?cDBtVkdhTEpobnhIbGtFaTBkRDd6ek5VVWlmNEZsbE9DNDJsTExJTGYzZS9B?=
 =?utf-8?B?eEMvd1Y4OFhhNEFvaHhMYk5ZUG12Q2xFVW9sZmFtVnZoWFBZbWNsT2pxVFZ5?=
 =?utf-8?B?SEE5MUZqbHliSXFKU3RFODBISXpCbTg1UzgwWDdXcUIzV3R1YTBzVGZnK0Zz?=
 =?utf-8?B?V3Nacm9mVGZJV1BWM3cwQ3VaWGU1UWlKb0lWWG4wU0czRHFOazhmTzBtdTVH?=
 =?utf-8?B?QUdIdFhNekRRSnVERTlGZWdOamx4aUhhWW5tdWFDOE5lOEZRZ0tpaXc4V2tR?=
 =?utf-8?B?Zyt6aUU1RDlFSlNwdGw1akEyTnE5VTVKekV2cDZrQmY1K3RNWWlzZDJ6ZmtJ?=
 =?utf-8?B?NWdQUWtUMU5uNkJ2OVl2N1pad2JtMU5pMmxYRldZSzFyQnA3dldNYVljSTdO?=
 =?utf-8?B?dy9mWXdJWFJ6TWxMZVlSVVEzRklYQUNHN081cDJOSjJRVEU3MDFHUjFVUmx3?=
 =?utf-8?B?V3NPRFZyZ1V4Y3BLVUZjV3UvWmJzdUV5UmZtNVA2ek1mNCtkYkVhd1l0ZVlr?=
 =?utf-8?B?RlprYWx4MjgvQ2k2SUhqZVRIaFE4aHlReDBVSTF1MTJ6VGoxakhOU1hxSW9m?=
 =?utf-8?B?Q1RtZ3pvK3pPdnQ3bTZvL0dDd1lhMXNRaUdPVDFCcy9mQkhjR0M2cmpBMjRl?=
 =?utf-8?B?d0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <21F12ADB0BFB6F40A20F5ABED6F944F9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9c6fc51-eb46-436d-b596-08dcffdd0b16
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2024 10:06:41.8410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JglkZ6Ho5KhLVfwmJJO6YKSsQwSMMeDfX1xaWaNE7PFf08Da3CtsDBprqN0mQHd00eZqjdkWJoiztU7+LrHyxDuro7D9naGmQxR+negwQNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7378
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

T24gRnJpLCAyMDI0LTExLTA4IGF0IDA3OjU2ICswMDAwLCBHb2xhbmksIE1pdHVsa3VtYXIgQWpp
dGt1bWFyIHdyb3RlOg0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
PiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zz4gT24gQmVoYWxmDQo+ID4gT2YgSm91bmkNCj4gPiBIw7ZnYW5kZXINCj4gPiBTZW50OiAzMSBP
Y3RvYmVyIDIwMjQgMTM6NDANCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IEhvZ2FuZGVyLCBKb3Vu
aSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5
MTUvcHNyOiBEaXNhYmxlIFBhbmVsIFJlcGxheSBhcyB3ZWxsIGlmIFZSUg0KPiA+IGlzIGVuYWJs
ZWQNCj4gPiANCj4gPiBIYXZpbmcgUGFuZWwgUmVwbGF5IGVuYWJsZWQgdG9nZXRoZXIgd2l0aCBW
UlIgaXMgY2F1c2luZyBmb2xsb3dpbmcNCj4gPiBlcnJvcnM6DQo+ID4gDQo+ID4geGUgMDAwMDow
MDowMi4wOiBbZHJtXSAqRVJST1IqIFRpbWVkIG91dCB3YWl0aW5nIFBTUiBpZGxlIHN0YXRlIHhl
DQo+ID4gMDAwMDowMDowMi4wOiBbZHJtXSAqRVJST1IqIEZhdWx0IGVycm9ycyBvbiBwaXBlIEE6
IDB4MDAwMDAwODAgeGUNCj4gPiAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogQ1BVIHBpcGUg
QSBGSUZPIHVuZGVycnVuIHhlDQo+ID4gMDAwMDowMDowMi4wOg0KPiA+IFtkcm1dICpFUlJPUiog
RmF1bHQgZXJyb3JzIG9uIHBpcGUgQTogMHgwMDA0MDA4MCB4ZSAwMDAwOjAwOjAyLjA6DQo+ID4g
W2RybV0NCj4gPiAqRVJST1IqIEZhdWx0IGVycm9ycyBvbiBwaXBlIEE6IDB4MDAwNDAwODANCj4g
PiANCj4gPiBMZXQncyBkaXNhYmxlIFBhbmVsIFJlcGxheSBhcyB3ZWxsIGlmIFZSUiBpcyBlbmFi
bGVkLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyB8IDEzICsrKysrKy0tLS0tLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCAwYzhkYTE3MDFjM2Eu
LmI1MjdjMWNiYjE0YiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IEBAIC0xNTY0LDEzICsxNTY0LDYgQEAgc3RhdGljIGJvb2wgX3Bzcl9j
b21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gPiBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21v
ZGUgPSAmY3J0Y19zdGF0ZS0NCj4gPiA+IGh3LmFkanVzdGVkX21vZGU7DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoGludCBlbnRyeV9zZXR1cF9mcmFtZXM7DQo+ID4gDQo+ID4gLcKgwqDCoMKgwqDCoMKg
LyoNCj4gPiAtwqDCoMKgwqDCoMKgwqAgKiBDdXJyZW50IFBTUiBwYW5lbHMgZG9uJ3Qgd29yayBy
ZWxpYWJseSB3aXRoIFZSUiBlbmFibGVkDQo+ID4gLcKgwqDCoMKgwqDCoMKgICogU28gaWYgVlJS
IGlzIGVuYWJsZWQsIGRvIG5vdCBlbmFibGUgUFNSLg0KPiA+IC3CoMKgwqDCoMKgwqDCoCAqLw0K
PiA+IC3CoMKgwqDCoMKgwqDCoGlmIChjcnRjX3N0YXRlLT52cnIuZW5hYmxlKQ0KPiA+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+ID4gLQ0KPiA+IMKgwqDC
oMKgwqDCoMKgwqBpZiAoIUNBTl9QU1IoaW50ZWxfZHApKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+IA0KPiA+IEBAIC0xNjc5LDYgKzE2NzIs
MTIgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+ID4gaW50ZWxfZHAN
Cj4gPiAqaW50ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1
cm47DQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPiANCj4gPiArwqDCoMKgwqDCoMKgwqAvKg0K
PiA+ICvCoMKgwqDCoMKgwqDCoCAqIEN1cnJlbnRseSBQU1IvUFIgZG9lc24ndCB3b3JrIHJlbGlh
Ymx5IHdpdGggVlJSIGVuYWJsZWQuDQo+ID4gK8KgwqDCoMKgwqDCoMKgICovDQo+ID4gK8KgwqDC
oMKgwqDCoMKgaWYgKGNydGNfc3RhdGUtPnZyci5lbmFibGUpDQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gPiArDQo+IA0KPiBSZXZpZXdlZC1ieTogTWl0dWwg
R29sYW5pIDxtaXR1bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0KDQpUaGFuayB5
b3UgTWl0dWwgZm9yIGNoZWNraW5nIG15IHBhdGNoLiBUaGlzIGlzIG5vdyBwdXNoZWQgdG8gZHJt
LWludGVsLQ0KbmV4dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+IMKgwqDC
oMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID0NCj4gPiBfcGFuZWxfcmVw
bGF5X2NvbXB1dGVfY29uZmlnKGludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgDQo+
ID4gY3J0Y19zdGF0ZSwNCj4gPiANCj4gPiBjb25uX3N0YXRlKTsNCj4gPiAtLQ0KPiA+IDIuMzQu
MQ0KPiANCg0K
