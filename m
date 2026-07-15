Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yxnxACc6V2raHgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 09:43:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDDE75B8B0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 09:43:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ns287j+d;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD52710EF13;
	Wed, 15 Jul 2026 07:43:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3D510EF25;
 Wed, 15 Jul 2026 07:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784101411; x=1815637411;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dtng6pg+eUl+EyvB8VQZ32AXDJmC/YeoCa+zyU611CE=;
 b=ns287j+dpFvU/yjo8e5U9ZNl2X1DzHz1Ge39gzX9octki72JSP1kPOG1
 jBINsMRMWtvS+qpdnquw2izdURRigBfsXfHv+KXE5m29+zzKba00OiRYE
 Sd1yzjd+yV4RdOBF0ScxgB8pEvCQWGioJiUZqizDvS44QXG132akZ7/ld
 AFkPrmoEwCtN4F/9nR0YGwakSd/0TBCs1GmBsSqdmfHso1/TvWvCJU5xf
 6tuXuquy3mVKC6t8IT+VnHYQz5Ob6lMGnN7/qd6q8n3hgDi1JdEKLp5iG
 2hUPiape/du33YOlXNuhMNqsnPgfiNroQOu/2x1uhL+majBHJ/OGZ83yZ A==;
X-CSE-ConnectionGUID: OmAyj07RRNyu9wLmKxpYCQ==
X-CSE-MsgGUID: joqObo+fS3KEJZkMqGQg9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="102283643"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="102283643"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 00:43:24 -0700
X-CSE-ConnectionGUID: p5ztH0njSwKL5AfmYP8/Tg==
X-CSE-MsgGUID: Qw55EcC1Q1eSMga2Bm3yjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="255598966"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 00:43:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 00:43:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 00:43:23 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 00:43:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K7ENMxuvFVPnZTRkaKNwuMJ+8sjdWTcI6uK1qeBFfy7UfWda/x7q7Fy0Jqu7pjjXSnReMOFrD7jg76pyFjlx65yQU6Za9NXZYngl7Sa99DkbwzI9BqJI7B7JCAQSuLkkBCWtwUnqCnfM6zyuiWpUANw3cgW3JMgQ0Cs4p5eqR93L4ygUkrRW3VltOVc2jwmI9s3nmi+0Uc1HJxd1u8tm++fJQLqgDL5+eYUD2nFYwtHfhlUBiy2WE12odn23wuqPj+vjC68f1E3GpImirM6WEvCpCV/2wh3gs7WzywJ0t74KJF3sfyP5bZ47r0Pjzhb3ewQDFvIxTOjL6WFbq2/zzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dtng6pg+eUl+EyvB8VQZ32AXDJmC/YeoCa+zyU611CE=;
 b=cELkALxlWhRQ0R2MLmMT9krXZ+yzEnQgnp9qsXPnnc9AP9PD5Cbmezw3CCItlFpqnZOi3zNokQJMvw7DNUoSUM3i6+jYcWG1qXVLEhjLtf5bfdd32zGfwfIUA7agYRRRE8ZL/c4bsRoGVIsvnCwUH+5PjO/uKU95+gmQ4Ex61p4DeDV+igTqHmsmzkFrK3fIlioIQXotDffkx7mWR1CbEDxH0vjFrXEHhLdaB0ive1qzbZd+jolIYhtjdendwrn3Y4w6Hff3bSLOdvEBAu/mfZfBW8qH0yHLfRIKNdpoxMk/KUiDM0sTP207zGHOGuRcUvDKH9KUtdnVx3hvnXQyaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB7426.namprd11.prod.outlook.com (2603:10b6:a03:4c4::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.202.19; Wed, 15 Jul 2026 07:43:19 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 07:43:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Leandro
 Ribeiro" <leandro.ribeiro@collabora.com>
Subject: RE: [PATCH] drm/i915/display: expose blend mode on alpha-capable
 planes
Thread-Topic: [PATCH] drm/i915/display: expose blend mode on alpha-capable
 planes
Thread-Index: AQHdFCAW0ET44HMl/0mIx2HvA6lxALZuMoFQ
Date: Wed, 15 Jul 2026 07:43:19 +0000
Message-ID: <DM4PR11MB636001D07B5ED1FE14678CA1F4F82@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260715054221.451421-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260715054221.451421-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB7426:EE_
x-ms-office365-filtering-correlation-id: ad412594-0456-42d3-4fa8-08dee244bd7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|11063799006|56012099006|5023799004|6133799003|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: i+jCFfWjPDx9C8yap9efGf4+DpF4R26GZPou2TqRijulqlawnJarsgHFH7Gqa1Gm+CPRJenDRLQ7bPEIxhJ1GjrXKV9pEdC5RKE555+QjZ1wEm8PiEZXwhYuNfpO+FjLQ6UV47GcKoBUF/cPh19qrk7OCeJdiQ5cuWa7PGB5evlCTcPaHK/qbsxg8pB1o1qsYg4nPN4rRnjFf3M+OPGAbczR08t329PTD0i0JL6JIU4iRadJ/FBGeRblZOL768o9eL38+0HsInomBRKolSOtEmdNul/uBuC5Th5je4t/t4YOknHeUJg74FcMKYdWz+JBA44JiYYrLz7j9CQ3V1c/bVd6bPMEwrG9mmbY/a9GsC0e9M7NDNmAJlbtWsgXoal+GYpMJ7BmlCIl1PuzoJm2IMoOxvkIFsNKtivjb1mEK5UrkZ0tenM8xVJ/tpniWioskPJ89JMtS/6yxbcYbvPxiQ1DIpLfcsrOna29ar7YqH0/hYlOiOw7/Bdqt+ernbDoa3uRhCTL3yvrbm/LMBBuyxTv/tgkzhmaSzaB0suiXgFRyz7Rp8SA2r/A1l7CxWo0/h4mfNxvzbvppUi8AE7Ybb2a6jzt9x8jprRbGIp0sndG8WS+Vx91c1mQFzR3oY2917AuOJtTFT6NnPe1tXAlEGsP/VYT5JPVlJM08Iaa9Ks=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(11063799006)(56012099006)(5023799004)(6133799003)(22082099003)(38070700021)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dVhuSWFIUitxbXF4cDFDbnROVHRBcjBXV0lBcjZ4TU55TCtMQmJsYTlCTzdk?=
 =?utf-8?B?SG53cUpxeFVGQ1R5ZG4vbTlZMks2eWl1YXFDZ1ZSZ1c1ay9aR1JDNlFBNCty?=
 =?utf-8?B?aGlGYVAzaWFRbnZqSU41QUM0c2JhSDhYQzNWTHhlNWhRc1lzU2I0VGEwd0dy?=
 =?utf-8?B?Y0ZaZGUxWU9iN1RtTjdVanZjT1oyNnl0YXpqamxXbWZ0UHVSWndOWnluN1d2?=
 =?utf-8?B?Mklzcm51NzJQRS9KeS80WGZ4NVR2ZEE5Z2dLR2RjN2s3Zmp5cU85cjJ6YkZT?=
 =?utf-8?B?NCtNV2FuYnJDL0pFVjZXeFhWR1psZjErMjd1UExleVBHNi9vOE5qd3JRVjQx?=
 =?utf-8?B?K1JnQlJweXQ0OG1nNmxiZ3oxNFVvdHQ5UXVmeStjczZZSHgxRG52OEFlT3JO?=
 =?utf-8?B?TzY0SmFMTmNxZmFmZVRLY3JrK2dzOXZ1V01XVDlnaXZnNkRjY1RhM0kyVkw4?=
 =?utf-8?B?SUZKT29RWkFVU1MyT01WWExMQzVIREtHeGtkTmpoYW1ISXNxbWdWbU9hMnMv?=
 =?utf-8?B?SXV4MXRtcDAwcFBhNmN0NWJuVEVERXhmblY2NDFYTDN3RTQ4M2FUSWFsV3ZY?=
 =?utf-8?B?R0VOa29PTXM1djdReDl3QlMvK2IyM3F1WXIzUUtwU0JjSmVJNEg3Q3NpaHR5?=
 =?utf-8?B?L2ZPODNTT2xOT21Za1VRVjJCNW01R2lhU2F1dmNJZ3BzTGMxVC83MS9MOVFI?=
 =?utf-8?B?Zm9zL2ZzTCtwaDNMWjRmWUtlSTBuVk93cFhKSkVQSHhOV2pYMU5ZS1JmczMr?=
 =?utf-8?B?Um9xVHhUVkIwOEpZYm91ako0T00yQW9nVVRxakh6WG1iMTZoNHpFa0lSampE?=
 =?utf-8?B?SkNIYlZiTDNBdk0vZ2FuY0lpUVAwdEhDbE5nVHlDNVRTZjgxYlFNYkhoVWNX?=
 =?utf-8?B?UVN0aG1nMmtUYmVIdk1EQmRscVpiVldESkZQK1U3TDFCREh5UmszYWVpU1hU?=
 =?utf-8?B?bnNJWldHWmZNR0tNa0NaaGY0R255V1UvK2lWbFJwTGRmWUMra3dGSmpwcjQ4?=
 =?utf-8?B?SjdBaEJNQnNJSmJwWWlaSkNjWnNDSjNMVjllSk9PTktsMUk0Rk9EWnc3Vno1?=
 =?utf-8?B?RXI5S1BDaVFiaXZiRlJYWTFjeEFBNm56YWNqRVFhUXAwOHIwd25RNWcwNHBr?=
 =?utf-8?B?U2NLSHB5ZWhuY2RHNDViMXM2OXVZbHZ2d0ZhcS9DMVcxc09la0NpeFJZWUdN?=
 =?utf-8?B?NW1KekZoY2RWdWF2Njl6a3VDb0xWdzBlU29CRk1xeDFyaUdJSFU1TDNzZDkw?=
 =?utf-8?B?Z25VSDU5cFdKcDFkeVgrT0NXVVQyendjL0FybnZ0RVJ5eURmeWVVVnhkS20y?=
 =?utf-8?B?M3NTZjUvRHcvUFdxTWlMbDZSK0RVSGZXZ05vYnRYbkNPaUdCeUx0WDNHQVFo?=
 =?utf-8?B?VFB1djBIQ2RxY01qVWFkaStWeStIL0FONmMzVXk4bkt1dFVTVWRtaDR1MmFT?=
 =?utf-8?B?Sk51dmxJaXMvV3gvVS91blZtL1ZjTzkrOGVZQWZVUjRtVElkMjdyM0lMR01j?=
 =?utf-8?B?ZWUzT1FuTTBVREJyUmtLcWNrWjRpQmEyYmcyRXAzT2VhMS9tbC9hWDlYZmcz?=
 =?utf-8?B?U2hkTkJnVzkvMjZjVC90VC9VZlByOXphUEVXOVdJZ3ovcFg2M1FFaW9tUStl?=
 =?utf-8?B?T0lSaWZmc29DSzI3MXA0cERUOXJGb3d1MnJQVTJMcjRaZFpTSXlMNlhodkxB?=
 =?utf-8?B?emp0MFZUdjhCa2RUVklheTJ4RGFuNVBiYmN1MlRvNjNzM3RDL09hNHVGR3Ur?=
 =?utf-8?B?am1SVmlVUWlQR1EzUkxkZUhGMlhVcUVab3dXZlBNZ2I4ZlRvYnhJc2hKWStm?=
 =?utf-8?B?WlJkR2lreDlUdzEvakt5bytXRnc2MnhsTGFodFk2akg5WEkrQnM1dnc3SWZI?=
 =?utf-8?B?SHdoNlpRMXR3V1h2MVNxbWpDQWZCV212VWNBc1ZNUk5PbWx2eWRtZXJFeFVE?=
 =?utf-8?B?emFrYkFuVHIvTldaUmVyQzlzdy8yaENUTnYxakZGeDc4TW1yVC9iR3BDdmsx?=
 =?utf-8?B?WjM3b2NLZ3VjeUhGd215WTMzbjB3bzZvYTdFQW9ueGpLNHdYcSswK2VVYkM0?=
 =?utf-8?B?L290QVRWVUJJcUNDMVp5YVVxbTIyOUNrRXpQSFhyUmdkMUV6YjRKaGF3QmdW?=
 =?utf-8?B?Yis0VnBNZWRnNzI2V3l3TGRyN01obGpScDUwV1lOTFBWQit0M1A1dGxVTXdy?=
 =?utf-8?B?TEV1aFVZb0tadnhXM0ZydGJDbTRTUlZFWkJ5N2NRMFJ4Z0JiOW5NeDk2Y3Jm?=
 =?utf-8?B?WkVmeWpZVERHQzhyQnU4NC9LS3BGZTJPdGZyeUlnR3Fzbk5UcnY2bXFEVkNB?=
 =?utf-8?Q?OgRPwFC3CLIakpHu8o?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OuxeFucqOmpJFbafC+dRoS7WTUfcQiMVkDin4sRYkQeerHbJYx5Ji2tFFuKuApDdz8//7GOeuql5NcVMu2yaDLDINscoDrmRbgb1PAutguIgMb7dBm49FrXcCHaZLALxBg9TG6R9LO9yiO3RGulBk3qybC97VJOpJEqgz4xZWlWAl3P1VSGLzjh7VmUl/ex/M8jXC6H+UrMrIuLJ1W4B3C7dZQ2BYjNSk221CELwQbfWuBh2hB7QAe4jZz/e5Ibwy/TJPrbeUvkXkECvxGYpZrL3r0CPUbhbKN+op7RxKUZ51b9ajebuCGhW/jbxQPKiuZnLmPmuzPXdz7Ze2I10AA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad412594-0456-42d3-4fa8-08dee244bd7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2026 07:43:19.7886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0Nsrop/jug6FITm58DRvx6pXHCU9/8QI0KiNLWalMbVv9Ea2YxcsqXJetqX3DiFVt+LbrFLU8V6BWd1hSCweBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7426
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2CDDE75B8B0

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVz
ZGF5LCBKdWx5IDE1LCAyMDI2IDExOjEyIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEJvcmFoLCBD
aGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+OyBWaWxsZSBT
eXJqw6Rsw6QNCj4gPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgU2hhbmthciwgVW1h
IDx1bWEuc2hhbmthckBpbnRlbC5jb20+Ow0KPiBMZWFuZHJvIFJpYmVpcm8gPGxlYW5kcm8ucmli
ZWlyb0Bjb2xsYWJvcmEuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6
IGV4cG9zZSBibGVuZCBtb2RlIG9uIGFscGhhLWNhcGFibGUgcGxhbmVzDQo+IA0KPiBTaW5jZSBj
b21taXQgODYwZTc0OGJkZGNjICgiZHJtOiBlbnN1cmUgYmxlbmQgbW9kZSBzdXBwb3J0ZWQgaWYg
cGl4ZWwgZm9ybWF0DQo+IHdpdGggYWxwaGEgZXhwb3NlZCIpLCBkcm1fbW9kZV9jb25maWdfdmFs
aWRhdGUoKSB3YXJucyB3aGVuIGEgcGxhbmUgZXhwb3Nlcw0KPiBhbiBhbHBoYSBwaXhlbCBmb3Jt
YXQgYnV0IG5vdCB0aGUgInBpeGVsIGJsZW5kIG1vZGUiDQo+IHByb3BlcnR5LiBUaGUgY3Vyc29y
IChBUkdCODg4OCwgYWxsIHBsYXRmb3JtcykgYW5kIHRoZSBWTFYvQ0hWIHByaW1hcnkgYW5kDQo+
IHNwcml0ZSBwbGFuZXMgdHJpcCB0aGlzLg0KPiANCj4gVXNlcnNwYWNlIGhhcyBoaXN0b3JpY2Fs
bHkgYXNzdW1lZCBwcmVtdWx0aXBsaWVkIGJsZW5kaW5nIHdoZW4gdGhlIHByb3BlcnR5IGlzDQo+
IG5vdCBhdHRhY2hlZCwgc28gaXQgaXMgc2FmZSB0byBhc3N1bWUgdGhhdCBwbGFuZXMgdGhhdCBk
aWQgbm90IGV4cG9zZSB0aGUgcHJvcGVydHkNCj4gYWxyZWFkeSBibGVuZGVkIHdpdGggZml4ZWQg
cHJlLW11bHRpcGxpZWQgYWxwaGEgaW4gaGFyZHdhcmUuIFRoZXJlZm9yZSwgZXhwb3NlIGENCj4g
InBpeGVsIGJsZW5kIG1vZGUiIHByb3BlcnR5IGFkdmVydGlzaW5nIG9ubHkgRFJNX01PREVfQkxF
TkRfUFJFTVVMVEkgdG8NCj4gbWF0Y2ggdGhhdCBhc3N1bXB0aW9uIGFuZCBzaWxlbmNlIHRoZSB3
YXJuaW5nLiBUaGUgY3Vyc29yIGNhbGwgaXMgdW5jb25kaXRpb25hbDsNCj4gdGhlIHByaW1hcnkg
YW5kIHNwcml0ZSBjYWxscyBhcmUgZ2F0ZWQgdG8gVkxWL0NIViwgdGhlIG9ubHkgcGxhdGZvcm1z
IHdob3NlDQo+IGZvcm1hdCBsaXN0cyBpbmNsdWRlIGFscGhhIGZvcm1hdHMuDQoNCkxvb2tzIEdv
b2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4NCg0KPiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS1vcHVzLTQtOA0KPiBDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IFVtYSBTaGFu
a2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IENjOiBMZWFuZHJvIFJpYmVpcm8gPGxlYW5k
cm8ucmliZWlyb0Bjb2xsYWJvcmEuY29tPg0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS93b3JrX2l0ZW1zLzE2NjIzDQo+IFNpZ25lZC1v
ZmYtYnk6IENoYWl0YW55YSBLdW1hciBCb3JhaCA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUu
YyAgIHwgNCArKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNv
ci5jIHwgMyArKysNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUu
YyB8IDQgKysrKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYw0KPiBpbmRleCA3MDcz
NGQzMmE0MDkuLjQ5MDkwOGY1OTE0MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pOXh4X3BsYW5lLmMNCj4gQEAgLTExMDgsNiArMTEwOCwxMCBAQCBpbnRlbF9wcmltYXJ5
X3BsYW5lX2NyZWF0ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwgZW51bSBwaXBl
IHBpcGUpDQo+ICAJCQkJCQkgICBEUk1fTU9ERV9ST1RBVEVfMCwNCj4gIAkJCQkJCSAgIHN1cHBv
cnRlZF9yb3RhdGlvbnMpOw0KPiANCj4gKwlpZiAoZGlzcGxheS0+cGxhdGZvcm0udmFsbGV5dmll
dyB8fCBkaXNwbGF5LT5wbGF0Zm9ybS5jaGVycnl2aWV3KQ0KPiArCQlkcm1fcGxhbmVfY3JlYXRl
X2JsZW5kX21vZGVfcHJvcGVydHkoJnBsYW5lLT5iYXNlLA0KPiArDQo+IEJJVChEUk1fTU9ERV9C
TEVORF9QUkVNVUxUSSkpOw0KPiArDQo+ICAJenBvcyA9IDA7DQo+ICAJZHJtX3BsYW5lX2NyZWF0
ZV96cG9zX2ltbXV0YWJsZV9wcm9wZXJ0eSgmcGxhbmUtPmJhc2UsIHpwb3MpOw0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+IGluZGV4IDg4
Mzg0ZGVhODY4Yi4uMDY3M2YxNmY2ZmQwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gQEAgLTEwNzgsNiArMTA3OCw5IEBAIGludGVsX2N1
cnNvcl9wbGFuZV9jcmVhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IA0KPiAg
CWludGVsX2N1cnNvcl9hZGRfc2l6ZV9oaW50c19wcm9wZXJ0eShjdXJzb3IpOw0KPiANCj4gKwlk
cm1fcGxhbmVfY3JlYXRlX2JsZW5kX21vZGVfcHJvcGVydHkoJmN1cnNvci0+YmFzZSwNCj4gKw0K
PiBCSVQoRFJNX01PREVfQkxFTkRfUFJFTVVMVEkpKTsNCj4gKw0KPiAgCXpwb3MgPSBESVNQTEFZ
X1JVTlRJTUVfSU5GTyhkaXNwbGF5KS0+bnVtX3Nwcml0ZXNbcGlwZV0gKyAxOw0KPiAgCWRybV9w
bGFuZV9jcmVhdGVfenBvc19pbW11dGFibGVfcHJvcGVydHkoJmN1cnNvci0+YmFzZSwgenBvcyk7
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9z
cHJpdGUuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMN
Cj4gaW5kZXggNmE2NWY5MmU4YTAzLi4zZTM4OTYwYmJiZDggMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiBAQCAtMTcyMiw2ICsxNzIyLDEw
IEBAIGludGVsX3Nwcml0ZV9wbGFuZV9jcmVhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXksDQo+ICAJCQkJCSAgRFJNX0NPTE9SX1lDQkNSX0JUNzA5LA0KPiANCj4gRFJNX0NPTE9SX1lD
QkNSX0xJTUlURURfUkFOR0UpOw0KPiANCj4gKwlpZiAoZGlzcGxheS0+cGxhdGZvcm0udmFsbGV5
dmlldyB8fCBkaXNwbGF5LT5wbGF0Zm9ybS5jaGVycnl2aWV3KQ0KPiArCQlkcm1fcGxhbmVfY3Jl
YXRlX2JsZW5kX21vZGVfcHJvcGVydHkoJnBsYW5lLT5iYXNlLA0KPiArDQo+IEJJVChEUk1fTU9E
RV9CTEVORF9QUkVNVUxUSSkpOw0KPiArDQo+ICAJenBvcyA9IHNwcml0ZSArIDE7DQo+ICAJZHJt
X3BsYW5lX2NyZWF0ZV96cG9zX2ltbXV0YWJsZV9wcm9wZXJ0eSgmcGxhbmUtPmJhc2UsIHpwb3Mp
Ow0KPiANCj4gLS0NCj4gMi4yNS4xDQoNCg==
