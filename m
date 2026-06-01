Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIExKNL3HGplUgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 05:09:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0857A6190CD
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 05:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9762112D2C;
	Mon,  1 Jun 2026 03:09:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BgoGUUCo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 268C9112D29;
 Mon,  1 Jun 2026 03:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780283341; x=1811819341;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PIAMMUx6NxSuRcIsszHzdi/YwTOcVRwyw4NTWKG9Ps4=;
 b=BgoGUUCoDUEyCZgzaHXCbSzC22j8ueJmyz0C5WMrf4rkD2/U7ohzEJto
 +9INMz3Lqgw9Q2UH3UxQnnYqY2qu4c32WwsROMNVc6VF24+XK41Db7xaV
 lzUAe550r6uqX1jclnE/JvRBS3jVH1IAN+sSq6PsVNTuY07XtIVzgXtoI
 gy9Se8Z0Le7rec1YWe8zQKrr3CLYf4af7yorzkwbEVtpEXsjl/5fnaE9r
 bfG/ZE9Mg7MhitWzWH5JAROVDa9oiSQQdJu8Y2z8dJjQteryrueVFK5Y1
 lAY1755dwURHy9eszqjlviAAN2Tcri4EmclbHhly75atfmbuKcSgxar2x Q==;
X-CSE-ConnectionGUID: y/g5ZTOqSAicNBZHWtKhYA==
X-CSE-MsgGUID: i2i47UKPQROMhIo32f/sHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80766264"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="80766264"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 20:09:01 -0700
X-CSE-ConnectionGUID: +i3xJLvJT4GL1uulfvAgBQ==
X-CSE-MsgGUID: HRN66LlgTYSoDVJQwazxUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="247424564"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 20:09:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 20:09:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 20:09:00 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 20:08:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h6+o7t/V1+2ghhvrzDCbtUB3hahQUw1jQsBr2JJQvoQtHHV/cmj4dEee5AXvrjuHe6fYL4C5OvI1zVCp459Kx7bH1a0WPhKynbDwsRg8xg4S3UskKUJLzSm5BSksrzXCgB0xO2G/KlKV+S6XtkZoyfwkDhtywZqcv+NVsmEuda27h5MZjfwu3BvH18utJT195rHVdNOEorto7i7jyS5EJei5Jha0naonj2Rv5smV+PCLofzVDVoc7GoI7R+gtJnLglpJjn0X1MlpNsj6QuaZXHH4oGkMCSxT1N1JdcEb5gLsb6nDv76Pr/eIjYzTu1HAISE0kONWTwCuXJYxPOvgZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PIAMMUx6NxSuRcIsszHzdi/YwTOcVRwyw4NTWKG9Ps4=;
 b=Mj1ocZTsICHZ2QeNrCzkYy6UrwlQgNoZuSh6WMHUcgcro4g5gPYNyptX3OA+XDSQEgN+03GijnuoR/BTyn619hLV10D5pPCoHIgz63i6gUwFeIIL5slnhhXl5BnFpW3rCS/bncofi7FsUrj2VjMRKGVjFW9OUGQqSU8Ff+d7TVzf3TuNuhJRv6ftWm4t5tehJWa5HjOpcEhq999LAhwbKwLvGcPVhKVV3DZ7YXcU33hcT5eFzd9IJe5qrPZopkgFfmSz/zDlhcKUFRQ01PeD0Evr+DHK9GOBHphXwK+mYt6uSN4GzLwh3wVKpCm8iVi+HNtQaAIwGvMuPG2zY2WUqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH9PR11MB924967.namprd11.prod.outlook.com
 (2603:10b6:510:3e8::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Mon, 1 Jun 2026
 03:08:45 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd%8]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 03:08:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 04/10] drm/i915/bios: print VS/PE-O port info
Thread-Topic: [PATCH v4 04/10] drm/i915/bios: print VS/PE-O port info
Thread-Index: AQHc76F41ACcs/kNA0C5hjrN8XT/ZbYpCILw
Date: Mon, 1 Jun 2026 03:08:45 +0000
Message-ID: <DM3PPF208195D8DAD5398DC3D417B06B6E9E3152@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-5-michal.grzelak@intel.com>
In-Reply-To: <20260529192859.4172376-5-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH9PR11MB924967:EE_
x-ms-office365-filtering-correlation-id: 63c55a58-317a-4a82-5add-08debf8b17f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799006|4143699003|56012099006|22082099003|18002099003|3023799007|38070700021;
x-microsoft-antispam-message-info: 8eldk0S+bYRhvJs+vEoYtAY+itmJwXUcFuRmCpdpdTMK5Dw4PQbEZyV7sEBBCX8QKQyrwys4GX+dPzTzl+4D96MbEO9Mh/zuFIulPhm5AM2PoPOvremKBdKp4j7epLpa3a6jtGnOImRL4jls4QHA/6r1AV1jMdy+hrmjY3QzNXx6a36JILqsqj87h1lNAB4APww5Vi34QM4v8QycedVdNfJmm7vL7+ZUrKCY20kh6vmzgBAS0L/gBJWq/dXJcbys3XITHnM863oU9XCwQVuKAzyhf8UzqtJ3BmTaf61t7ukGi/uTb1ZSLRUIC93COJuY/+CtfVEyWW/6k7M5CNvfurJCS62SbECayM3x9ZegJaP2WUQRe5kD9G9pz/6VN+nLnE0MVFZFohiwEd71wKcvWWiRnbg+Sf3M/OxNPkPZsO3cQpIdiQH2cSt3p860s/2adTtMAsRnoBlw6rNsnaWgjrA6vwGXU49nYTOxaDPvewwKq9jCJ3R9z1zzg6rc+AaKJ89CbuyViXYvw5+8Ee7UOT9Ygl710OFGRU26i2iUYUlpya0B+UcW3w7iTm0DPkOa/nI0pCGy8VLMBnfIXkcJaVYT+b7GWxQDWw+Y3Pu8n/tz7k4V4lGeouUcVz7aE3dWS4N/7uaDvTw30gzYd9bY5F1IB6GN4gNwCsATrXsDgsq0YkemiL0Ghz4r9FidTn3Y0IZtRU0rgZE3VlWArn56Bb6RvfX0W4yqJ4ct55Xlqgar33WuAPDbA+N/hQ8ot+zt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799006)(4143699003)(56012099006)(22082099003)(18002099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZEFwdGR4NE14eHg3SWZ4QU1vSzU4SG1mRXhFYXIrM1FEaEZQSkN4Ujk4VGk0?=
 =?utf-8?B?T3BlTVN5MnFjSTZOMG0reTIzc0tYYnNHNEM0eG9RL2N2OUNOS2NYVHdwUnAy?=
 =?utf-8?B?MURZZlRpZGFDVWJpRVQ2TnNnR01rUkswRUFCK3NwNXVNT0hVcGd4dVNXVjh2?=
 =?utf-8?B?Q1A4OWt4dFgwbXNRd3FBRU51ckkvOWhsMjVSeWs4ek4vSStGSDNnQStBUzVX?=
 =?utf-8?B?NEFnUG1uNFMzVXJBdUZJYVZ0bzEyVlZ5TS9UOXd1TGZjWG96ZUt3VktoUVUz?=
 =?utf-8?B?Wm5IK0VoZHduVUtpNEh5enJBVjJzYWxMME5jdnJYMnlGV3hsaDRmaUo3bHdl?=
 =?utf-8?B?aTV6SjVtaHoxVktUNXV0dnAyWG9LeXB6YWFCSHIyb1pnczBhKzRsU3pIKy9D?=
 =?utf-8?B?b045N1JoaEhHeXRZMVdNV2xIdWI1WWhQZXY0Y3RDb0R1VE42TzJVV0gyU1NV?=
 =?utf-8?B?LzB1NUlJSlhaenZGYmxRM3B4VlpvYjhTTjBwWVdkbUdySjU1Q2JkcWlpZnRR?=
 =?utf-8?B?cFp2R21aOUcyVGFSMytQaWtkbHRud00wdDEzbzNKN2pZeGJGZVlJbjljZE04?=
 =?utf-8?B?aXBFMEdTZnJKSmlGWjN1OUhlOVROVmxLTWs4L1NSVkpVU3hUTTRCd0NkVHRk?=
 =?utf-8?B?MmF5SnRoUG1aUEQ3dVBJWGwwZW1RdmNwTzl6OFN2enVrNTZzMCsrOXpWaGhG?=
 =?utf-8?B?OEgweU1sNUc5N014UjFUcml4TzdOTURvV1B4RkRzNlZDV0pFNlRYUzRHeE43?=
 =?utf-8?B?Y3BRQXZQYmNHNjNtcFF3cDBIYjBzU1ZQZG0ySkowMEY4VlFURFpQeHVDbFp6?=
 =?utf-8?B?ZHo2Sk1OblMxcWk2ZFJXK1VPK1RXY004ckk5QWZEUzN1MnFMY0x0cXZGMlJ6?=
 =?utf-8?B?cXg5RzJOSi9GcEc1ZGdKdFVocHhEZkxxbUMzNDNTRDNTV21IMCs2RDhaZFZ3?=
 =?utf-8?B?c1BncE9FeldhMUtLeUdnWk1lVzRmRDlvT1RpdmUxa3FIdFJvZUJSMm5aMFVU?=
 =?utf-8?B?dGZOcEQrVk9TOXVraW9yVWxscEUvdzFraldvZWI2Ulh4L2pOcTdLaloybG9R?=
 =?utf-8?B?S085ZDFraitvWmFYQW01RmxBcnFrQk93RGtIU3B2L1hxbW1mY2VqQ1c0Wmln?=
 =?utf-8?B?NUZWUDJGUC9JQURRWnBRMTBoNWQxckcrUmg1TDZyNXRkd1JYaFFIMHNnMkFn?=
 =?utf-8?B?c0NkM2hzU2dYNGMwQXk2cDRuU3lwQ1lnK3V6RVBxeTdNZ3g2ZDJRL3l0S0ps?=
 =?utf-8?B?MFBBTmt2U21PcGZzZFZSTDAreXhBUy9NeXZYYjZ6Q1E3SjNGenphaVJUdWRH?=
 =?utf-8?B?ZS9EMnFoaUJzM002bythblRWZzlPQzRHWWZDSWpOeTZnWG44a3pjUVgzSlBy?=
 =?utf-8?B?VmxXRlpLL3FuS2pCUk1kNWQvUVVrV1M3VlQ3Sm9hUWtDaGRia3VPZEJhUnZ1?=
 =?utf-8?B?UzlxQjVuUzFOZmd6cHYvTktMcWpJcStRT05tMjd6WDgvZlp0NDY2a2IyVG1a?=
 =?utf-8?B?a09XamlvUGhNOVQ3N2UwZk02ZWtOUzRRa2tUQUZsOVAzdHArSlZuNUVzRHJv?=
 =?utf-8?B?OHN1c0RSdHdKOFo4UnRIT1VudkswOG9uVXdVR2ZkSHFkZmFUWktVaG5rcERh?=
 =?utf-8?B?NGpnanM2ZXhVdUp0aGkwV1lDdEVCeFZCeGFZUUxqTE0zdUZoQTU2NXM1R0l1?=
 =?utf-8?B?VUJBc2x3VGc4WlZIRy9kaTBvM3d5M3lNQXd3WVArbkNPa1o4SWRpeW1MV3Vi?=
 =?utf-8?B?N21PYVh6NjFBQ0JGNFViSnFseUNxcmJxOXd3R2pIZTNmMlFUVjdreGRKbVJF?=
 =?utf-8?B?NnZDdmZHNWFrR0w3OXZ6RnNiSzlaaXh6MTlGaml4Mkg1V241VGx6UEJZMFJT?=
 =?utf-8?B?WnRGODZjTGM1VUhsWGFqeUdwYlUxL0JQTnUxMk9kK25CYkIxNTN1WkFFL3dH?=
 =?utf-8?B?QmF1UmxnNGxibktpblV0b3ExWGZPbERXU3FYTDFROXFRVmw1bnNGajRhL1d5?=
 =?utf-8?B?R0tYNmI4YmprbkswaTkwdTdkbmhGZTR1N00zVklpNmdtMTVYTTJpTnVmWVhz?=
 =?utf-8?B?QnEzamdWMzNxS0JWSStaQzdRbVZHampML3VOc3o1ZVhyNzFnSkM2R2hLdTZt?=
 =?utf-8?B?WEhQRk1YWEVQUGRIZFFqZGV6dnk0MURJcGN4NU9tWGs3bHJKT2dsY0EvdDVo?=
 =?utf-8?B?U2JRZGJLYmhvemhON2lrM1FiNURNN2ZyMnVWUGFRNlFlbTlldDlBYjhPNDNB?=
 =?utf-8?B?K3BQK05vU1lXanpsZUczSTdMbnU2VzVKaG43eERUZ1VodkZ5UnBuK3h5dm9G?=
 =?utf-8?B?YlNuS2hYT1BpV2hhd2g5bzBBQ0tUaHluQ09PbEVnZ0EvRTd3azJmUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: F0UZqiFsB3gqrcQjpWkklmAatHVMoJ2Wyb4KCM9OsFBk+v9w9Sae9IwwRz30C+J9QiKrbFNclqaf349YmUIb2rpfiAKYNm87e8dAEIQbVrVr2Sn9LuM7LDQx0S7wi7yHBWwzB6IXn3tpRdq/GqJewYnp7rJEQL2Kw/ZQs3/LAePxLtEAPStrzQfDX4D/rCFx0nujZmynQPdiuZ6khWK6w+aaJ3DEZlKZfnfKr+6BW7NuegrcL8SFgZbIhkkz63yXe5UwjWU9eS2WzkXiBfmKqRkD97Ozf4f2Ngw8m15OxM6QfQvuGiaMBkIwGTfS/YkpKfAY4mICNRtul+mTuyldkA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63c55a58-317a-4a82-5add-08debf8b17f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 03:08:45.6392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u43totJNkS2wjxSjhvKI6UONReGC7BZNZSWun9eC06bZV3maEy2ND40Ri51QjOp6ItiK2esPGIEHW08Hnn9kYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH9PR11MB924967
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0857A6190CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDQvMTBdIGRybS9pOTE1L2Jpb3M6IHByaW50IFZTL1BFLU8g
cG9ydCBpbmZvDQo+IA0KPiBJc3N1ZSBhIGRlYnVnIG1lc3NhZ2Ugd2hlbiBwb3J0IGFza3MgdG8g
b3ZlcnJpZGUgZGVmYXVsdCBWc3dpbmcgLw0KPiBQcmVlbXBoYXNpcyB0YWJsZXMuDQo+IA0KPiBB
ZGQgaGVscGVyIGludGVsX2Jpb3NfZW5jb2Rlcl9yZXF1ZXN0c192c3BlbygpIHRvIGNoZWNrIGlm
IHBvcnQgcmVxdWVzdHMgZm9yDQo+IG92ZXJyaWRpbmcgZGVmYXVsdCBWUy9QRSB0YWJsZXMuDQo+
IA0KPiB2My0+djQNCj4gLSBjaGFuZ2UgZGVidWcgbWVzc2FnZSB3aGVuIHJlcXVlc3RpbmcgVlMv
UEUtTyAoU3VyYWopDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hh
bC5ncnplbGFrQGludGVsLmNvbT4NCg0KTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFs
IDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgMTAgKysrKysrKysrKw0KPiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaCB8ICAxICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMNCj4gaW5kZXggZDA3MWYwZTVkNDM4Li4yMDQxNzYwODhhN2MgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IEBAIC0yNzgxLDYg
KzI3ODEsMTEgQEAgc3RhdGljIHZvaWQgcHJpbnRfZGRpX3BvcnQoY29uc3Qgc3RydWN0DQo+IGlu
dGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRhKQ0KPiAgCQkJICAgICJQb3J0ICVjIHN1cHBv
cnRzIGR5bmFtaWMgRERJIGFsbG9jYXRpb24gaW4NCj4gVENTU1xuIiwNCj4gIAkJCSAgICBwb3J0
X25hbWUocG9ydCkpOw0KPiANCj4gKwlpZiAoaW50ZWxfYmlvc19lbmNvZGVyX3JlcXVlc3RzX3Zz
cGVvKGRldmRhdGEpKQ0KPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICsJCQkgICAg
IlBvcnQgJWMgcmVxdWVzdHMgVlMvUEUtT1xuIiwNCj4gKwkJCSAgICBwb3J0X25hbWUocG9ydCkp
Ow0KPiArDQo+ICAJaGRtaV9sZXZlbF9zaGlmdCA9IGludGVsX2Jpb3NfaGRtaV9sZXZlbF9zaGlm
dChkZXZkYXRhKTsNCj4gIAlpZiAoaGRtaV9sZXZlbF9zaGlmdCA+PSAwKSB7DQo+ICAJCWRybV9k
Ymdfa21zKGRpc3BsYXktPmRybSwNCj4gQEAgLTM4MDksNiArMzgxNCwxMSBAQCBpbnQgaW50ZWxf
Ymlvc19oZG1pX2RkY19waW4oY29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRh
ICpkZXZkYXRhKQ0KPiAgCXJldHVybiBtYXBfZGRjX3BpbihkZXZkYXRhLT5kaXNwbGF5LCBkZXZk
YXRhLT5jaGlsZC5kZGNfcGluKTsgIH0NCj4gDQo+ICtib29sIGludGVsX2Jpb3NfZW5jb2Rlcl9y
ZXF1ZXN0c192c3Blbyhjb25zdCBzdHJ1Y3QNCj4gK2ludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpk
ZXZkYXRhKSB7DQo+ICsJcmV0dXJuIGRldmRhdGEtPmRpc3BsYXktPnZidC52ZXJzaW9uID49IDIx
OCAmJg0KPiArZGV2ZGF0YS0+Y2hpbGQudXNlX3ZidF92c3dpbmc7IH0NCj4gKw0KPiAgYm9vbCBp
bnRlbF9iaW9zX2VuY29kZXJfc3VwcG9ydHNfdHlwZWNfdXNiKGNvbnN0IHN0cnVjdA0KPiBpbnRl
bF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSkgIHsNCj4gIAlyZXR1cm4gZGV2ZGF0YS0+ZGlz
cGxheS0+dmJ0LnZlcnNpb24gPj0gMTk1ICYmIGRldmRhdGEtDQo+ID5jaGlsZC5kcF91c2JfdHlw
ZV9jOyBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaA0KPiBpbmRl
eCA3NWRmZjI3YjQyMjguLjdhNTBhMjcyY2QyNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgNCj4gQEAgLTczLDYgKzczLDcgQEAgYm9vbCBpbnRlbF9i
aW9zX2dldF9kc2NfcGFyYW1zKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyLCAgY29u
c3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICoNCj4gaW50ZWxfYmlvc19lbmNvZGVy
X2RhdGFfbG9va3VwKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBlbnVtIHBvcnQNCj4g
cG9ydCk7DQo+IA0KPiArYm9vbCBpbnRlbF9iaW9zX2VuY29kZXJfcmVxdWVzdHNfdnNwZW8oY29u
c3Qgc3RydWN0DQo+ICtpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSk7DQo+ICBib29s
IGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19kdmkoY29uc3Qgc3RydWN0IGludGVsX2Jpb3Nf
ZW5jb2Rlcl9kYXRhDQo+ICpkZXZkYXRhKTsgIGJvb2wgaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBv
cnRzX2hkbWkoY29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRh
KTsgIGJvb2wNCj4gaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRzX2RwKGNvbnN0IHN0cnVjdCBp
bnRlbF9iaW9zX2VuY29kZXJfZGF0YQ0KPiAqZGV2ZGF0YSk7DQo+IC0tDQo+IDIuNDUuMg0KDQo=
