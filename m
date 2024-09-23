Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DB197EA15
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 12:46:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F69F10E3D9;
	Mon, 23 Sep 2024 10:46:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HFIe+4V9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1074910E3D9;
 Mon, 23 Sep 2024 10:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727088386; x=1758624386;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lkC1/eWoSLXrqHn1oh5AllKSNZKVCodg9EbOaYUO+rU=;
 b=HFIe+4V9u5kZWNubjTyLhPtXhI0qT6sZYL+Z9m3puI9gvNL1KUKO9UoO
 aSE1F/rvAxISEcLa8+M2eJo6M7anRdTsOk80aiydDvP8CrWAq2EUtFJNi
 Ao//Mjl11W3btBYAHAFTsGuhjjjr5Sj6E00Y9CEYuzCth+i6Jr3Kgp/hJ
 Iz9mxaiah9k1/HiPBrRhCJArI9wsKZnboGQAEpbbNZa9l1Y5Dz1kzG6Tz
 HyHpxfmFPv1k5oa7JGaIXOtPoiOnrBFQ/BnD+MdYwb3+gwMoa0Jw4VPRq
 dsQDsQLshtHQZ1CVM2LjGQyEknW/zTqtmieLF3wPujmX5UkJb6baB2RPq w==;
X-CSE-ConnectionGUID: n41P7xBHTiG6DL2Ru3kCjA==
X-CSE-MsgGUID: jT/xUY17RfqwFtKygTaQ/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="43501483"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="43501483"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 03:46:26 -0700
X-CSE-ConnectionGUID: zKV1DjEnTQ6dRcXfF91TJA==
X-CSE-MsgGUID: vCxBJ++pQ/G89XND5CjrQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="75142408"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 03:46:25 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 03:46:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 03:46:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 03:46:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 03:46:24 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 03:46:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SF/Mp/Teb6ve5/LoeEX7zWczZpklw52Vi393hRUzyZPDbzDRGK/Mt5S48UEaQlUtgoFQZdk5j/1am6lU3eRIYG6WGAcNlLCzpf1sqFJ5d7culnzQi0+5zmKsa+vE9xE0708oyxr8PyOQZaJHaKLHcOm0GbrTHVUHtU2KVPsI+GS/FIUkUyLAKP9Ic0omyPFOENy5rQSoedDMLqRBEkAU6DD9H7R9/7fmIn6TcnUDJuaKeXXXhVorRuoFSsPc3lXMgwVrKR+m8rwdrw5ohZrT7Dheb3Yafht6IcpX0UqasFcMj8nDFrfzFRYbjjKRi3zuIatPrU8be5izJ2lpw3nEUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j3sIQIraKtLGii3SbXM+YHnywTvP+pfXrr/2/M1n9BI=;
 b=mYyO6qe+/upk7IerPvWSf0AlvhFU6YvXetMgtkqXW0tsRs91aiDeeUBYhVITG49nZqI697Drix8ZuPqOIjZCrgWsfqakE4b2KR2xujC8FV/p5SusgaGvetBzgVg7k0vB4c3VpcrLrdvgYtZQOwZcapoJCkxuzjRDPcXTnrYqq2E278GiniDcihUcCuWvcQvkt6PmlyqcLY5JKA8Oe+Tyv3uZoMVbzRNPHkIfnbJ5JHzwvD0zQKDOfoWZhUIpqtlgikTrr89v9Gxk0bJLVGTZib9CrY7dXHe9FkvyZrnGI5LAYNi6sEpAu69slSNWgmW+WDSPTgHxVB9NW161AwlYOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by IA1PR11MB7385.namprd11.prod.outlook.com (2603:10b6:208:423::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 10:46:22 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%3]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 10:46:21 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Topic: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Index: AQHbDXUL71vQj8r0+EGXD6hgmzqx27JlLzrA
Date: Mon, 23 Sep 2024 10:46:21 +0000
Message-ID: <CH0PR11MB5508BDE81DDF72CACAE943BCC26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20240923045218.1813255-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20240923045218.1813255-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|IA1PR11MB7385:EE_
x-ms-office365-filtering-correlation-id: 50757279-462e-4f01-202a-08dcdbbcf682
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?a+p0fvhMCXqPW/kGMJGunTD4cpaYdqF6ltCITWCksgVQeFgb3u6nUeY9Nch1?=
 =?us-ascii?Q?2IMMHIYX3BT5oubUvKf3e3bpbYHslu1qOtT997WV770VkxGTG+8dWSKn7drG?=
 =?us-ascii?Q?WO2paE7nQIk2X2XuX0rAiFDH1zDTWcurQCiKvpVXANsX4VLXHLkgSbl7AbyG?=
 =?us-ascii?Q?N3zzw62giIvs1AJW+CkqljK07ClyYklbItKfSXhx5pC7Frv97Z74PPry1i8k?=
 =?us-ascii?Q?jBRQtnKSdO1fYbX82XIsdsWBN0lpKbZ3EYpuPw4acbJJHc6JuZhs+Ju2LicV?=
 =?us-ascii?Q?hfuEBfbb2s0Y14GvdcArjXamCx6H5ZTbhT/6b9ZduHRgumvYPsakes53ShU+?=
 =?us-ascii?Q?PbEMNWiwEF5N4Qk7PwLpVxn48GCHin3UIP8iKQYAW1lvNDOBUd3Q+Td1E9ug?=
 =?us-ascii?Q?+Jkmong6bgsy3RK9Pc+fh/H9AWnUlG6Iy5zjybNZT9P7/ARXeL21daVMdfeS?=
 =?us-ascii?Q?w+gAOeN0+rPGMI7cJ9+mbgXgp4XPZUT1YVqitzfxOPKh+YweYm1ikVY7BQJy?=
 =?us-ascii?Q?SqFG775VK0BA3/aOKoRq+oAROqUz8LokPtwtzhHoDsRzSUqQHQ5bL7agYzm2?=
 =?us-ascii?Q?zwIm/XJsXwAzHp2k/o3NpKlByzOwNqDv7v9ha+S2I9FQw7Ie7zaXJ0NwRWyk?=
 =?us-ascii?Q?t9umi+3cBWfiU7m8i4rXq2+Yvde+2EGw7QG9vvSKCSGuoK1uyfxjGdgZQ79M?=
 =?us-ascii?Q?nKqGyavfD8iMSO7P73DsGvldpcQ15kEUXBZ6Sw3OP4wc/e/oDYyKEJRfYGk7?=
 =?us-ascii?Q?XlrJiitFiL3sBs8XydrsCMGiExA0y8CUw9OW4ltuM0L3ckVoy5QRnP5TNtOu?=
 =?us-ascii?Q?kVAZLviWQWQAHPYwaH9/2q3IFVposJ6HzSNH1cKNL0z7t3mLbT6P6u5sgqVZ?=
 =?us-ascii?Q?XynXiD2SHwkZ3CDeCSQQFpLIUjtLPjtjiO3dv5tz6LZW7IMFE+YiAkNKOD+H?=
 =?us-ascii?Q?o48EgKVMdSTCbbAnfQiytN+/JAm7usTXmJma4JaswNaj1cRpOKufS6aor9EM?=
 =?us-ascii?Q?6O3hIO/biPBa/t2S4Hm3cYh7PQfUdEk9wqh6atxa0kLKmJIghKIh6s/ZzhNg?=
 =?us-ascii?Q?Ttv87/cbtQ0EaubOISrCM4IzbACaGSIJwMOa/wBa6UzIclbzbDeEKFeOmZT0?=
 =?us-ascii?Q?oLHybzTyQeTYHDopEf1AfbTSZ//lvOdAPCJ3EHOZ9eLIHWjMMyajua3ayXNU?=
 =?us-ascii?Q?hcXjPALwDDPDBcDUrXo8SNhKkbt+YYMiwxsDCO5BqYyGYeFgYQLQ3HCNPF9j?=
 =?us-ascii?Q?JgwdzmhK+3YiRbQuzMpY3HOjOlHcAK4y/I7qJJdFYwKsuJhEzVDsiINlJ8na?=
 =?us-ascii?Q?dGlqx/Q9E8j4hgseTO68axZM0w7PdhpKkgHw1dItXKocR+OBqtt1JjoQuzaL?=
 =?us-ascii?Q?+r3Bk88dlOnrgMWYY3ggeq168e8GFXb9fuw4U+LY6I1VoVGoIg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L2bvpF5HCg1sEXpeItPI2jC8nnA72FYpPmOTMo+gLw0xkDFNM+V3vQL2SdDd?=
 =?us-ascii?Q?B+AfgJ749JGaoGjihxby2H+yCIkdruqvieRQM6iQr27wSMzzcJA5zFI3tQZ/?=
 =?us-ascii?Q?08PmcS4gfzBILNU5TgN8epn7BfbJQrXUA74QaH1faGOJx5plqSBvGDDiZVIQ?=
 =?us-ascii?Q?T+yWY+9rPWND7u/idgXWBVEvi/l1Zjm5UWOfIpjb8akJmaL2VkeoCtKwtCWY?=
 =?us-ascii?Q?Ck5BDy5GyKFLE8P7MG/EKCrI0iP3457D8WCyr0xzAuB8Mj2QMnsNA/X+jQIn?=
 =?us-ascii?Q?Ewk0JZ4mJXBwzXlydqw/6P4Kc2JXBWP7qgwOzO+6I52gFbra/jLVFUd5xE3t?=
 =?us-ascii?Q?s/v8YZFEcU8VA7HsCEkkmsWuq6b7cruyOoJeQ1PdIlw4qM5dAGf6vkyWq3Rs?=
 =?us-ascii?Q?oVjjHH3YW5JtNCiyUmXINtGwdZoJg94zFhR8QLmSDUQk3ug8sNoWaSBPu4NJ?=
 =?us-ascii?Q?ZZWAoST03ar0CYl0dHAH3Ge7XcP2I9kkqSKlhu+Svv3lgKD0Beu22/n8MWEA?=
 =?us-ascii?Q?oaDc2BFCiOq5/XgzEJqQxhVkL/9ZuYzFwTXWxa2eqPXcymo0Lm4JsXoKM5BR?=
 =?us-ascii?Q?hZKsF5mwkVB77axBYHBDAej9i/kiA0Zft7yxosjqvwcofZc05fPQQt5rm2jE?=
 =?us-ascii?Q?ADm16qu/eTyC0Iik2B20qNvvZPpzERT+y+fRsdJ42/dRolTwV34ycDQea2qJ?=
 =?us-ascii?Q?oRxrkEjsdWT4IhAwEnPJW8Wr/qcmhsLRkxPgYXHPrdsA5Ek+ZcwQ0jeQIBiq?=
 =?us-ascii?Q?rWYKnLLbg2XXLV0dZpToywzcY42JB24QUtA69SWVSBFlCm8N/7vNyVL90yzI?=
 =?us-ascii?Q?Cs1ehtbVFWTcXIorY5yL4bWP0X/Lfk2ZopsJvB5eJqZnqCiOOzkIzI8p0tg5?=
 =?us-ascii?Q?WKBEFWti1ZBXesp4gtbgd+K/s0SMgfAQgeNMfTf2T838Jz0RCEpcPdpNA1Ag?=
 =?us-ascii?Q?kWe3UukC98Lkv4w/lFFT9FhHXozhrSpGaxomXX98NmiSef3mfz2S24wujKbV?=
 =?us-ascii?Q?uVrpe7qT+GrcotZFKeSOt37rLWWFITbV7Hwjm7XOYoSYqOW/CJf337KLaciV?=
 =?us-ascii?Q?AVr6CZ/0GnD5o96On5mYj0luQBijR+x4aZMKv8j7qDaAUblug1EjpotsothP?=
 =?us-ascii?Q?C3VIwMX2my+VBvMfcfK0BoLgp6qi9jpk+wJwV9G+2OkdFhFway7Ke2E4n7Pg?=
 =?us-ascii?Q?MNJiciVs+7KWE58IesS1XD2wb6lSjHcMxv0lGtBInVR4xCDsmiyjNzIe5Ho2?=
 =?us-ascii?Q?6bNKy0bfVlc2mmd0ta6dMTXEXgoyi6P1gfCVV8jAcKm+i36JP0CIahoIaDA+?=
 =?us-ascii?Q?d08NSO5BeOVemvvTXdrAzaptH/+hfvW284ygctinvDKpkpxTDVDV4f8ZXAQe?=
 =?us-ascii?Q?Gokss4m74GqCkROOgHp3b26e53DqBhk2VhCKeGx93vxJzO5T7TmRCtKU34W9?=
 =?us-ascii?Q?8js4WOn4LxgCtQjcPyT39e0q4YK/Zqef/Iz73ewnaitPxanDcYMArNw2+npr?=
 =?us-ascii?Q?c7MUVA1sMnxJa/qMo7uaKA0w3vDgoZQ3Q6KuvWaVdLrYPUlBUb3eWFKivcC3?=
 =?us-ascii?Q?hU+YMo27NpcW9iht8ASgL3rpiDkebaFUz1dmcZQxRJi9olIS6pRlKG3orA8V?=
 =?us-ascii?Q?hA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50757279-462e-4f01-202a-08dcdbbcf682
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 10:46:21.5636 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wo+h2BR/TcyOhm/LpDPLs1Bat/mxNGnZvysw8Cuhtbxdi40ZW93VOrgw2DiWjjmwPa6pKYYkxGSiaRsRlPilajOmnNvZ2xwtn4hrlJvGHDEH3RtWa5QEs5O21oIRP36i
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7385
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



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> Chaitanya Kumar Borah
> Sent: Monday, September 23, 2024 10:22 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
>=20
> From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent of
> TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN sequence
> without re-doing the whole mode set sequence. This separate control over
> FEC_ECODE_EN/DIS sequence enables us to have a retry mechanism in case th=
e
> DPRX does not respond with an FEC_ENABLE within the stipulated 5ms.
>=20
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 61 +++++++++++++++++++++++-
>  1 file changed, 59 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 85e519a21542..589acea9906a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -78,6 +78,8 @@
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>=20
> +#define FEC_RETRY_COUNT 3
> +
>  static const u8 index_to_dp_signal_levels[] =3D {
>  	[0] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> DP_TRAIN_PRE_EMPH_LEVEL_0,
>  	[1] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> DP_TRAIN_PRE_EMPH_LEVEL_1, @@ -2255,6 +2257,57 @@ static int
> read_fec_detected_status(struct drm_dp_aux *aux)
>  	return status;
>  }
>=20
> +static void retry_fec_enable(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state,
> +			     struct drm_dp_aux *aux)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev);
> +	int ret =3D 0;
> +

You should also be clearing FEC_ENABLE_LIVE_STATUS in DP_TP_STATUS register=
 by writing 1.

> +	/* Clear FEC enable */
> +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> +		     DP_TP_CTL_FEC_ENABLE, 0);
> +

> +	/* Set FEC enable */
> +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> +		     0, DP_TP_CTL_FEC_ENABLE);
> +
> +	ret =3D intel_de_wait_for_set(i915, dp_tp_status_reg(encoder,
> crtc_state),
> +				    DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> +	if (!ret)
> +		drm_dbg_kms(&i915->drm,
> +			    "Timeout waiting for FEC live state to get enabled"); }
> +
> +static void wait_for_fec_detected_with_retry(struct intel_encoder *encod=
er,
> +					     const struct intel_crtc_state
> *crtc_state,
> +					     struct drm_dp_aux *aux)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev);
> +	int status;
> +	int err;
> +	int retrycount =3D 0;
> +
> +	do {
> +		err =3D readx_poll_timeout(read_fec_detected_status, aux,
> status,
> +					 status &
> DP_FEC_DECODE_EN_DETECTED || status < 0,
> +					 500, 5000);
> +
> +		if (!err && status >=3D 0)
> +			return;
> +
> +		if (err =3D=3D -ETIMEDOUT) {
> +			drm_dbg_kms(&i915->drm,
> +				    "Timeout waiting for FEC ENABLE to get
> detected, retrying\n");
> +			retry_fec_enable(encoder, crtc_state, aux);
> +		} else {
> +			drm_dbg_kms(&i915->drm, "FEC detected status read
> error: %d\n", status);
> +		}
> +	} while (retrycount++ < FEC_RETRY_COUNT);
> +
> +	drm_err(&i915->drm, "FEC enable Failed after Retry\n"); }
> +
>  static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled) =
 {
>  	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev); @@ -2303,8
> +2356,12 @@ void intel_ddi_wait_for_fec_status(struct intel_encoder
> *encoder,
>  	 * At least the Synoptics MST hub doesn't set the detected flag for
>  	 * FEC decoding disabling so skip waiting for that.
>  	 */
> -	if (enabled)
> -		wait_for_fec_detected(&intel_dp->aux, enabled);
> +	if (enabled) {
> +		if (DISPLAY_VER(i915) >=3D 30)
> +			wait_for_fec_detected_with_retry(encoder, crtc_state,
> &intel_dp->aux);

wait_for_fec_detected_with_retry() should be called inside intel_ddi_enable=
_fec() after configuring DP_TP_CTL register and before transcoder is enable=
d.
wait_for_fec_detected() is called after transcoder is enabled.

> +		else
> +			wait_for_fec_detected(&intel_dp->aux, enabled);
> +	}
>  }
>=20
>  static void intel_ddi_enable_fec(struct intel_encoder *encoder,
> --
> 2.25.1

