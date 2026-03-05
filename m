Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCi0AZ0rqWkC2wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 08:07:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 645C420C2B0
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 08:07:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9034510EB20;
	Thu,  5 Mar 2026 07:07:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JDSk9B5z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137F310EB1E;
 Thu,  5 Mar 2026 07:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772694425; x=1804230425;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=2xTBO7yRrqldvT2MLRoFKW5DwtuPvLZPhaBhHYxjUX0=;
 b=JDSk9B5zUwyTvxPsgFzi3KqMSnoAHj9XBkmeL08xmCmyXwMEUqG6IsLp
 6q6KuNjycs3tSACUaxFWAxAfah2mpp5RvlSx3bF0UW9Sia9cTSsK1KEeI
 0XCtcV+XA1c8ElGgunKwaU39OumuWpu54VxaeuHoj+arHFwSTwjDpAowt
 TsK195y3Eo9yW4fYPwYIqlOnA7hfB/fdqkO2S2xY1kSZ9TSEdVuqkGg+d
 MSNYFVqKLQzJBhbnyg3sEpwId0kXgXjkHRYxEneEfcpAiUM/lqD3tSS83
 C/baAvnYMwBeA3W6t07HwyfTBPv93REeSoI6JM1ZZx9MmirpgNxkhF3nc w==;
X-CSE-ConnectionGUID: xW/coFIdRPWj2yJ6F1R5LQ==
X-CSE-MsgGUID: OM4ZczOOQAOl21oiGXb8CQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="84858127"
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="84858127"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 23:07:04 -0800
X-CSE-ConnectionGUID: 8T5Elgm6QHqHYEPdOxZzBg==
X-CSE-MsgGUID: Me2yd/itTR+JRrzD7lRR0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="256475003"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 23:07:03 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 23:07:02 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 4 Mar 2026 23:07:02 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.23) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 4 Mar 2026 23:07:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tDUx6MW/VRkZKpN/dz9kuepoxX7EdrYupD57uA2g0UL8VJ4Y1m1AQQdbXiZXk5tCDJeOq0+7lD4UiaJ6FGXxz/RLjueS+Sh7tjc2Ds2RG3de7jDi6pnHHFqdwbYg+AcvC9NAC5R9sENKUUxXlty6ZywedBNxxjuPI6HS3sxPLuFUxpxPLoaQhBJ1fcy220RkVUZ3wXDEWhVO5LBkbWNJHXHr3/F6Hx1AZtFOFbL9ys0mkYSmM+dUg6RmYLWQYu0bCnaSNuwakR8gAW5M57gBIGF2b8ICUB2JL72iOaNJAiiUkowxSRFsBf9FpHmt5s61BIq0qZMjiQi8kntTWx1f9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2xTBO7yRrqldvT2MLRoFKW5DwtuPvLZPhaBhHYxjUX0=;
 b=eBc5TchPx3GveZQNElC2ghFbKtrSpZZZzpVn6+DTs7Fv54FMR1aR618skr+KYwY1g1buKjGq/E9e/Fb0TyjPwbq/LjrEFHgjSJcfblIi3yPYyFiJq/feBkHuWn9VSchTwqx+klRDFl+PK6ZnRZig8WpQceZZ9qHxjkcm/yhObNcfKlXaS7PHqSjnKPpaeViSW4W5/WlDwE6Pmh3Rc2jFs46aAl9SRJlqkktTVBe53Jvlz91Ttwyb00PVKWYe/hemsvoNZeh55z85K1VQmNna9lpvoYsMohKmEpA6GXo6z8XnJMdySJp0Dx0U5vhTA+MXdHlacbY4roReNSXDzZxsGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN2PR11MB4695.namprd11.prod.outlook.com (2603:10b6:208:260::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Thu, 5 Mar
 2026 07:07:00 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.022; Thu, 5 Mar 2026
 07:07:00 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/7] drm/i915/overlay: convert from struct
 intel_frontbuffer to i915_frontbuffer
Thread-Topic: [PATCH 3/7] drm/i915/overlay: convert from struct
 intel_frontbuffer to i915_frontbuffer
Thread-Index: AQHcqnD70gyXjtc1KUOsWcDrpJTEpLWfiG+A
Date: Thu, 5 Mar 2026 07:07:00 +0000
Message-ID: <5e90e94037bfcb424a3c5ce7216383879f513c07.camel@intel.com>
References: <cover.1772475391.git.jani.nikula@intel.com>
 <829b304a6451e80fbce554bdc7788077245e803a.1772475391.git.jani.nikula@intel.com>
In-Reply-To: <829b304a6451e80fbce554bdc7788077245e803a.1772475391.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN2PR11MB4695:EE_
x-ms-office365-filtering-correlation-id: 7082c7d8-0662-4119-b06e-08de7a85cc00
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700021; 
x-microsoft-antispam-message-info: 6Q8mNWyE9lJKjZk+pFrnt8jEAdy2udYhrnAamXmR9ACnkImKZDEVjqIm1F8n2itNN16p3qGMdCK6Fi6GomNQsuvehl1SJ+TiQpBwCu6eWxqUTpyoJswee+1itXVLkKI9cihm2tPz0oMuBKckzazWVfyzxZQuB4Z3HXFEPQFu7yapOWnH4Lsic16TRRAK1DstW41aHA0ZeL/iYx8eBbp145hRcRQoIqGXYd0BuZn/eD/8+mcvo4zekw7VZiuj1iupQEIXNqhT3uqKiGBoaNf/CGLq6qGxOXc80BaBiUOGuj0R+VfBfBFTL5S5BdmftFzmzupT30lOIjxj5Wye+rkX6+ecs2zYzWQLhvQPU+YKEBB2jOLlmjWhddJE/7EoiTy6L2dVzQA9eNYAcWSg3VDpWplAm5tlSbWHLA7oX/Vab3t2amrh34dy7b3CU18sjhD6Muzv3H4AxxjStdZawoqcF+OjaEKgMjgwz9khf/86crkDcOWXAq635vuyKZH0v0nzZuuGVSh1a8P19eb2aQ4fDvfypAU6Q8cDCSCefOpAw20CNDByYEy2/3zUkkEeafrQJ+Laz0fjlY6lbcWuRFp8PgQI7mb44ZNpL1D4GajDvBEH5GPKwsOuBbZRoGdVWC9ImGRavUz7oGIwMWrLI17d2phTTs0r6Ja8f8Ezgv9nSpRajO9aHdcDzAi/zsPsmYgAUv82oBVUVngBnMm22N8T4kw/4ghw0GtpxPFl7JdYEaUvhgHQjdkdlZ4ucrjyuGZBR3q6wwnkQf42NrMNLClF71Wxkn+IctIO0xBOgrxwb+Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R3Uyek4yTDBHTzlYSGtCY1J1WFZIRzdDZlJTYXRZbmJCcFU2WWJpbnJzOEFz?=
 =?utf-8?B?TFg1d2dlbWJaVGdoTll3aDYwSGF6UmxDYktkQUhtZHhLd3ZzeS9Kazc5K3FO?=
 =?utf-8?B?ZG40ekdMK3FrVTNHMW44L29OZ003bXN2WE1nR2I2aVNwblg3ZzcwQXZHY0dC?=
 =?utf-8?B?L0U5ZmU2VGFIQlQ5R1h1MmFwZmgvUE84a1JQaEVDWi8xd2lIdlpQaEM2bFIz?=
 =?utf-8?B?YzdJZXl5WHY0MS95cWFhaHQvbnAra1NGNnZtc0VrMDM5L0YvaWZaWk5TRTVp?=
 =?utf-8?B?U0o5NU1MKysvWjdWK2FRcnB4YzVxV3NsNWF4cnJXcS9KOC8rdkEzdk9ZaXIy?=
 =?utf-8?B?YVNCREJMRFJtUk8yeFhWMzZLUnJpUUhrOUVyMXZSUXZxYmpqUVlLNTlPWE5G?=
 =?utf-8?B?NWJTanFZYjZ5a2lhWlZINjljOStFc0ZaZXN6a2dJTHJFVm1iWmFldkNCemtG?=
 =?utf-8?B?L010OHMyWndwblYrMTVpeXY0QnhGcFd6Z0JHamNqQlZKNnBYTjlhMVdlNXpt?=
 =?utf-8?B?NHc1R3FmUk1mc3Rqa0JkVGhQOXJpYTlTd29lOFljWWtTeDFRYlBjOHE5dGdQ?=
 =?utf-8?B?KzNRRjAwWmNjNGlkMFd6RG1jUWgvcjhMY2FkZXdScHpCZzNBb2huTTB6bFZm?=
 =?utf-8?B?MXd6TEVFVlZRV3h2Q25PY0lkSTNINFF4aitjQmR6cTdQNmFJTW1PM3hDQTdM?=
 =?utf-8?B?UlVkQzFkNWk5TWNaVlRlMjJ6YWZXNmhtZjdZaXZXK09ZdXlTSGo2NE42YWxr?=
 =?utf-8?B?d2Y2UW9sRnhFaVhuUUphVnFrZFQ0MTYrWVVwUnovbnVpcTZ6Ym1FeTZjUlJN?=
 =?utf-8?B?MitzZVZ4L3hMUHNkQmNkN1hwMFhzaG03WjRGclZJVzJ1eVc2US9JU3h4VnZz?=
 =?utf-8?B?N0NaUmxpK2J4NW42WEhuZDZ0ZC90QmRmak02YlJWeEgwSFVaaVR2TjVhaUJi?=
 =?utf-8?B?NEhnQmZOL1JNczhISkliaHlYMnZDeEs3ZVROKzltc2V6REdJL2xZdjBxM2FZ?=
 =?utf-8?B?NHVuWFZmcHN1d0txdHZmcDkvL1pqWWZiVlFTby9OL2hBUml4aWpSUDJFQ0pu?=
 =?utf-8?B?a3VIU25VZWRVR0g3cUlueEMrWnB5bEdSYnJHeU9UTnlIYmdhbXl3RWRMVS9p?=
 =?utf-8?B?VEdrem9mNHN1SVZXU3c3bUlFTS9LK0FVdEViK3hHaW1zR2NWekovSlZSd3ll?=
 =?utf-8?B?T3Nqbnk4MU1MYVhYb1NtZU5ZQnZ1aHJVb2svd3lXM0xnZ3RoVGJLbVBWQnhE?=
 =?utf-8?B?VGZuOTRRWXQrL01VYmlDV0tjNjNDUU00Y2RlazdUOWV3bk1JcTZSTEhuNkpN?=
 =?utf-8?B?eGY4alV5OWtlTElQbUtPNjBXM3BlZU9RbGFPY3pxaVJFSU01cXlRYm83K2k5?=
 =?utf-8?B?M1QxZWprK2lsbWRMT2ExRWZJY2RLOWZmNUJLRHVjK0V2TkJlRjVtVDA1aXBs?=
 =?utf-8?B?MGk4dlN0a0ZOd0pMWjN0T0I0YStEMmF3Unp0WmtIdVJrb2Y2T0c3dmU5OHdS?=
 =?utf-8?B?bXpCWTRodDF2cUdiZjhoZjVJSDdWVnlWVjcyQU4yQ1duRlZHYzE2N3IwZ1F6?=
 =?utf-8?B?RGtCWDNqZmlmUG5ENUxjdlIxVXVKeDhtUlNXd29QT3hmaGh0WjRoWDVVUWhp?=
 =?utf-8?B?MncxNnJCWDJocUg2bU5LUExLT0YzWjgvUDJzT3pKbmxVUkNGc0V3cTdwSTl3?=
 =?utf-8?B?b1lmZHN1TUxKZHlxQVU1RGxHRWJlb29VM25qcEhsQkc0Q3VXd2ozRGVjV0s0?=
 =?utf-8?B?a3IzcGthVFNoNmlHRmhiL29rbFVGOXZCZm10VVhKNFBMTFJsY285ck9hU1kz?=
 =?utf-8?B?YmJXbHVNQktTcGVxR1ExUGV3ZW9pY0orUFV2OHhnU3NWV1B0YzlUNktUUmQ3?=
 =?utf-8?B?cHoraEtQZVh0OGxxa1E2YzZWbXlYT1NiME9IbkcrWWRJVmxNY0hHK2Fib0c3?=
 =?utf-8?B?eVhzTHFib3VhT0NCRDlxQWU4ZllKMUt2dkFUeXUybGUrTnh5TzFldVRYemhw?=
 =?utf-8?B?SjI0SUdjM0RTZXI4UjZVU2htekpGMUhCbHk3ZGNuSUk3UzdIWit4elZJNE5W?=
 =?utf-8?B?ZHBoMEdOQ2xiaXo1ZHZXeXlXVmJKejNnL3crMzR3alRaNjQ1enBUODc3YVNZ?=
 =?utf-8?B?OHAzZ0RJeHNXSjYrNUtsUTh3VDNycHRRNWZKekw2QisxejBTaUVlZVJVQkNJ?=
 =?utf-8?B?VkErY0NVRW1qZFRaTFVvWW82V2dmdDNvQVhIQ01EdkM3M0ozWVpHbDd0L1Av?=
 =?utf-8?B?YzMvRE01UXQxVkN6d2NwUHYxREVyKzB3ME9Sa0xNMFpWNUhreG1MemYxZjRD?=
 =?utf-8?B?emg1TFptaTJGUlpwajNGQWVIZ0l0dDFhSGpoOW1EVUxMbytaV0tDQVdKSklu?=
 =?utf-8?Q?6f0bbbPjACog7KtxGYC9ccT9W/Tzeh4GCiWOgmSVHMwyj?=
x-ms-exchange-antispam-messagedata-1: ndBRjk9kuLyuvCYax/EAB2UDJ7gK5XMNTRg=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2165C9E21FC0454D8FBDCEF2209AF3B7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vNy9y8kOq7a75VQk8egKAuIszVtb/H16HMYTA3gwirNfpiGMY+2SjtYGD+yynMkVsfQpDmfi5z6tEkzedqLXVL/yBfLl16Pb8UssKJaL3KsHCBigf6e1sOhtSaxhvOpYAeWocZzAgFy7E4BWnPfCyJmSWHCPLDzCJ+05sUIvuGVnpRnI3XM3lV+mb4lYBoHkg4+OkKMOZZYCiXPUlri5ITPyQAjcii9CsgHheqCuqoAEX/vtk6JqGlLDf7JPxWtdVgxTlO31jvsqjUmg7TjWFYWKZroKSb6d2u0dXcLURe6DWqtjIZOERQxKpUG/vSNXYzMv9f9mD01k6paIFLoC1A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7082c7d8-0662-4119-b06e-08de7a85cc00
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2026 07:07:00.4992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GTwm5mlGlDYOZxgXCIBIIadq3OpGN5cwtDs/jnQ4IdqbYjLcP/yJwYpx8kjyeHrZ/wfM2QvvyD03wemzkzivEbvS1BJ7Eh3+2c39hb97JUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4695
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
X-Rspamd-Queue-Id: 645C420C2B0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gTW9uLCAyMDI2LTAzLTAyIGF0IDIwOjE3ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
VGhlIGludGVsX2Zyb250YnVmZmVyX2dldCgpIGFuZCBpbnRlbF9mcm9udGJ1ZmZlcl9wdXQoKSBj
YWxscyBhcmUNCj4gcm91dGVkDQo+IHRocm91Z2ggaW50ZWxfZnJvbnRidWZmZXIuYyB0byBpOTE1
X2dlbV9vYmplY3RfZnJvbnRidWZmZXIuYy4gV2UNCj4gbWlnaHQNCj4gYXMgd2VsbCBjYWxsIHRo
ZSBmdW5jdGlvbnMgZGlyZWN0bHksIGluc3RlYWQgb2YgZ29pbmcgdGhyb3VnaCBkaXNwbGF5DQo+
IGNvZGUuIFRoaXMgd291bGQgb25seSBnZXQgd29yc2Ugd2l0aCBnZXQvcHV0IGJlaW5nIG1vdmVk
IHRvIHRoZQ0KPiBwYXJlbnQNCj4gaW50ZXJmYWNlLg0KPiANCj4gVG8gbWFrZSB0aGlzIGVhc2ll
ciwgY29udmVydCBvdmVybGF5IGNvZGUgZnJvbSBzdHJ1Y3QNCj4gaW50ZWxfZnJvbnRidWZmZXIN
Cj4gdG8gc3RydWN0IGk5MTVfZnJvbnRidWZmZXIsIGFuZCBhZGQgYQ0KPiBpOTE1X2dlbV9vYmpl
Y3RfZnJvbnRidWZmZXJfdHJhY2soKSB3cmFwcGVyIGZvciBjbGFyaXR5Lg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0tLQ0K
PiDCoC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlci5owqDC
oCB8IDEwICsrKysrKysrKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X292ZXJsYXku
Y8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMiArKysrKystLS0tDQo+IC0t
DQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3RfZnJvbnRidWZmZXIuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3RfZnJvbnRidWZmZXIuaA0KPiBpbmRleCAxYzI1MGNlNGNhNjYuLjQ2MTI0MDQ4YTU5ZiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9m
cm9udGJ1ZmZlci5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3RfZnJvbnRidWZmZXIuaA0KPiBAQCAtNDUsNiArNDUsMTYgQEAgc3RydWN0IGk5MTVfZnJv
bnRidWZmZXINCj4gKmk5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlcl9nZXQoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmoNCj4gwqB2b2lkIGk5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlcl9yZWYoc3Ry
dWN0IGk5MTVfZnJvbnRidWZmZXINCj4gKmZyb250KTsNCj4gwqB2b2lkIGk5MTVfZ2VtX29iamVj
dF9mcm9udGJ1ZmZlcl9wdXQoc3RydWN0IGk5MTVfZnJvbnRidWZmZXINCj4gKmZyb250KTsNCj4g
wqANCj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBpOTE1X2dlbV9vYmplY3RfZnJvbnRidWZmZXJfdHJh
Y2soc3RydWN0DQo+IGk5MTVfZnJvbnRidWZmZXIgKl9vbGQsDQo+ICsJCQkJCQnCoMKgwqDCoCBz
dHJ1Y3QNCj4gaTkxNV9mcm9udGJ1ZmZlciAqX25ldywNCj4gKwkJCQkJCcKgwqDCoMKgIHVuc2ln
bmVkIGludA0KPiBmcm9udGJ1ZmZlcl9iaXRzKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9mcm9u
dGJ1ZmZlciAqb2xkID0gX29sZCA/ICZfb2xkLT5iYXNlIDogTlVMTDsNCj4gKwlzdHJ1Y3QgaW50
ZWxfZnJvbnRidWZmZXIgKm5ldyA9IF9uZXcgPyAmX25ldy0+YmFzZSA6IE5VTEw7DQo+ICsNCj4g
KwlpbnRlbF9mcm9udGJ1ZmZlcl90cmFjayhvbGQsIG5ldywgZnJvbnRidWZmZXJfYml0cyk7DQo+
ICt9DQo+ICsNCj4gwqAvKioNCj4gwqAgKiBpOTE1X2dlbV9vYmplY3RfZnJvbnRidWZmZXJfbG9v
a3VwIC0gTG9vayB1cCB0aGUgb2JqZWN0J3MNCj4gZnJvbnRidWZmZXINCj4gwqAgKiBAb2JqOiBU
aGUgb2JqZWN0IHdob3NlIGZyb250YnVmZmVyIHRvIGxvb2sgdXAuDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X292ZXJsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfb3ZlcmxheS5jDQo+IGluZGV4IDI4NTE4ZGJiNWI4ZS4uZjA3YTA3YjkwYjJhIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X292ZXJsYXkuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X292ZXJsYXkuYw0KPiBAQCAtMzAsNyArMzAsNyBA
QCBzdHJ1Y3QgaTkxNV9vdmVybGF5IHsNCj4gwqAJc3RydWN0IGludGVsX2NvbnRleHQgKmNvbnRl
eHQ7DQo+IMKgCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOw0KPiDCoAlzdHJ1Y3QgaTkxNV92bWEgKm9s
ZF92bWE7DQo+IC0Jc3RydWN0IGludGVsX2Zyb250YnVmZmVyICpmcm9udGJ1ZmZlcjsNCj4gKwlz
dHJ1Y3QgaTkxNV9mcm9udGJ1ZmZlciAqZnJvbnRidWZmZXI7DQo+IMKgCS8qIHJlZ2lzdGVyIGFj
Y2VzcyAqLw0KPiDCoAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqcmVnX2JvOw0KPiDCoAl2
b2lkIF9faW9tZW0gKnJlZ3M7DQo+IEBAIC0xMzgsMTggKzEzOCwxOCBAQCBzdGF0aWMgdm9pZCBp
OTE1X292ZXJsYXlfZmxpcF9wcmVwYXJlKHN0cnVjdA0KPiBpOTE1X292ZXJsYXkgKm92ZXJsYXks
DQo+IMKgCQkJCcKgwqDCoMKgwqAgc3RydWN0IGk5MTVfdm1hICp2bWEpDQo+IMKgew0KPiDCoAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IG92ZXJsYXktPmk5MTU7DQo+IC0Jc3RydWN0
IGludGVsX2Zyb250YnVmZmVyICpmcm9udGJ1ZmZlciA9IE5VTEw7DQo+ICsJc3RydWN0IGk5MTVf
ZnJvbnRidWZmZXIgKmZyb250YnVmZmVyID0gTlVMTDsNCj4gwqANCj4gwqAJZHJtX1dBUk5fT04o
Jmk5MTUtPmRybSwgb3ZlcmxheS0+b2xkX3ZtYSk7DQo+IMKgDQo+IMKgCWlmICh2bWEpDQo+IC0J
CWZyb250YnVmZmVyID0NCj4gaW50ZWxfZnJvbnRidWZmZXJfZ2V0KGludGVsX2JvX3RvX2RybV9i
byh2bWEtPm9iaikpOw0KPiArCQlmcm9udGJ1ZmZlciA9IGk5MTVfZ2VtX29iamVjdF9mcm9udGJ1
ZmZlcl9nZXQodm1hLQ0KPiA+b2JqKTsNCj4gwqANCj4gLQlpbnRlbF9mcm9udGJ1ZmZlcl90cmFj
ayhvdmVybGF5LT5mcm9udGJ1ZmZlciwgZnJvbnRidWZmZXIsDQo+IC0JCQkJb3ZlcmxheS0+ZnJv
bnRidWZmZXJfYml0cyk7DQo+ICsJaTkxNV9nZW1fb2JqZWN0X2Zyb250YnVmZmVyX3RyYWNrKG92
ZXJsYXktPmZyb250YnVmZmVyLA0KPiBmcm9udGJ1ZmZlciwNCj4gKwkJCQkJwqAgb3ZlcmxheS0N
Cj4gPmZyb250YnVmZmVyX2JpdHMpOw0KPiDCoA0KPiDCoAlpZiAob3ZlcmxheS0+ZnJvbnRidWZm
ZXIpDQo+IC0JCWludGVsX2Zyb250YnVmZmVyX3B1dChvdmVybGF5LT5mcm9udGJ1ZmZlcik7DQo+
ICsJCWk5MTVfZ2VtX29iamVjdF9mcm9udGJ1ZmZlcl9wdXQob3ZlcmxheS0NCj4gPmZyb250YnVm
ZmVyKTsNCj4gwqAJb3ZlcmxheS0+ZnJvbnRidWZmZXIgPSBmcm9udGJ1ZmZlcjsNCj4gwqANCj4g
wqAJb3ZlcmxheS0+b2xkX3ZtYSA9IG92ZXJsYXktPnZtYTsNCg0K
