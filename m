Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D80E9972B6
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 19:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12F3C10E78E;
	Wed,  9 Oct 2024 17:11:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jo0iJutq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39CFA10E78E;
 Wed,  9 Oct 2024 17:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728493888; x=1760029888;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IfePbIGVs4Z2RhrVLE+2bex7eXX3VCiuyDBZQPSVmig=;
 b=Jo0iJutqdveoCWMLy3Glg07m0WqSsGYxJGDyq1NlK+N3W951Oeeoj8H3
 9OiFqULc5qkzvLAhRs0acCcdxohcJRvIeY+RXGUSh4kjTyewRT5HuTaZJ
 wP/3pwE7B7FnDRMsMaRejq8gTDLJxuv7+GJYvpuURf515oWYP2t3m3C3a
 7z2/LtpadGZXPDfSdXCtHTul4Hs8OwkJD9RlT7e2oHxsOFvylP2f20AaY
 sjFfnQufgtvJpfPm2s/LYcg+0D8bQmo0O1hvQ0Z2iG+QiPPN+ZySdWnaF
 4ZLaAAET9KxlT7N6IILQ4ruWbTg4Z6sewj7Sdw1W1ilT4Wm79NVrpvtPI w==;
X-CSE-ConnectionGUID: 2EJzIKTNRhq2PjZ/zKmNUA==
X-CSE-MsgGUID: cUDA/yKmQ7mkmLZSOH95bA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="31512493"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="31512493"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 10:11:20 -0700
X-CSE-ConnectionGUID: ygigU8v2QeO/ntKKpeVxnA==
X-CSE-MsgGUID: ocWsvM7lQLKZUiYmE29Q2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="77152979"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 10:11:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 10:11:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 10:11:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 10:11:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 10:11:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wm0iukWk+8jRF5XVOeo5rd7h6gAQeEbdTxMtX50tAYErTkHFDtKwRsE04F+c5VcF2Fpd55IogN9Xq14J+uFDWQUjwiNm3WLwldtkSv0QQHdvcWTkpHE5wjiJXUFPDA2TOej9LL9hRzjyEhEZyKcGmvF2FEpqtcbC2tKZS12T+088adi1u3uPfUGs43C8o9OTpdCGETJL1pL84SiHlOvmfbzukDreDy50sQ/vaAyCecUCd1s/RlHTiAKGTRxA5wJuYm07jva8mKHVmzEzxwQZaiOVG4YEkyqTSUHIMo19A08bsnQKA6/dXzzpX3sPB3q2OZz6Ym3puz23f3qwj31aQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zqZTqTofyWZJJWgNvlZ4Nrxq3HdVcu40VL6If5c57pE=;
 b=T0R7sqPsNp+XTVWzTP2l/ESvSDZzcsWj66v9B2FLvgg7cQYvUNUiSoko0HGoZVFOiq+Vrqs9wk0kUxrf4Fg2+9IXx0eTcchEv7Nfk/jjhJVig+uATaU/hfX4mPvL2FsSQqs3a4s4g2IiZtlRg4FJWdiW3rOkm6CvhmsvMrjA/s33Wy1R+E/Q+gdxQAVN0hJahJgFgE/YNUFMccP6i/iH7Oxe1+/gZTIf4skdvnOsGEZCGLEKe2VbyvUOyl+bdLUChWFGFlfUhN7K7FJ+7KDBiMdTLHDNYKqVyi+qQSTIVNicB/dkQcXPiX0tshpIyxS7/i9af05afzfucFacEBITZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by PH7PR11MB7643.namprd11.prod.outlook.com (2603:10b6:510:27c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Wed, 9 Oct
 2024 17:11:12 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 17:11:12 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 1/2] drm/xe: add interface to request physical alignment
 for buffer objects
Thread-Topic: [PATCH 1/2] drm/xe: add interface to request physical alignment
 for buffer objects
Thread-Index: AQHbGl4zvH2awlwoGUyMAUefdXMwXrJ+ovTQ
Date: Wed, 9 Oct 2024 17:11:11 +0000
Message-ID: <CH0PR11MB54442FDDFCA338043A7FF4AFE57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241009151947.2240099-1-juhapekka.heikkila@gmail.com>
 <20241009151947.2240099-2-juhapekka.heikkila@gmail.com>
In-Reply-To: <20241009151947.2240099-2-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|PH7PR11MB7643:EE_
x-ms-office365-filtering-correlation-id: 01d21c08-0596-4406-9891-08dce8856013
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?nCrAerEGA4PNELHQhTlJcVPbOxlh+UIASksSA5SQ2C+FMOgh+QmHOlrHDX2T?=
 =?us-ascii?Q?PxFGMNug3x3CsOYg7z4R1cCcD+dHf0kG2FHJYpu9z9X+1hlxXBclJz7pka9r?=
 =?us-ascii?Q?E5i/sir4N+aRPAnG7OeFW9eMcAoWWUW727kuAVwqUBJjf3yKeIOwbZZctlOA?=
 =?us-ascii?Q?+x4Ozl9DN6LHxJwWCqNcvoaas3BAgCM+v1HVW1DydcCJOMXU4p7c/uZuo4ZX?=
 =?us-ascii?Q?jBVYpfXOA+NClkssW7kO9L9+4xb5bbeR7QhpjuO2pfJsrDIE26dHgtogDNkk?=
 =?us-ascii?Q?nxIDFg7nn1Xc75ItrzQ5xPlJpEEZ5HUQEtzD+jhBUAyR8wYh3fNonHmClcdX?=
 =?us-ascii?Q?yU+YZZ4cEsrldNjR0vGqtUR2fDjFfVITZtgz1cckswrdtyGDdoJ8HZ7OnoIp?=
 =?us-ascii?Q?+F3QcSIsu/BmDGEqXmo4pGBHG2h9h8d+ikOCH+xQZIE0lR0d6DVDanGH1Bwo?=
 =?us-ascii?Q?vREYv5ndzfZ3L0B2cFZMUrtVuFmreP/txZkSYL0qtH0tzz2VJzVHsYgF0eUE?=
 =?us-ascii?Q?kTCUiPEZGg89l/GX2tIvlLwUSBY4v1slSwTc0gR/WX1n5S+InMOOWniz2xpq?=
 =?us-ascii?Q?kQpiIZwJx/jWitMDZBcA2eLXFxxky2j7zg+3riSN6OShUXpSYbpIa4g+xd9C?=
 =?us-ascii?Q?g2ene6rZwMCTm4d4/J+nht4l7noZxJMzzc+NQGrKMeTx7Aogp9zbPUerlTgY?=
 =?us-ascii?Q?TQEUHbrzIHADy+KS1HfvriepoZnhNOts/cCW+A+HIC/Nm6/I0fpinaeuOx6h?=
 =?us-ascii?Q?DJRoJRoEeJ7hSwVcsBVd4ZDZVFc/K2biH55u9uWSWcg2wA5zGGXVUIciEf+4?=
 =?us-ascii?Q?DzIpg6AfBHrOyVPykXnQaHorvbbgLtG1NVhkXzzMULFfxslk8v66i7ba6YWd?=
 =?us-ascii?Q?vZRyz6t2w8ggdPXZAIUVU1RgFRyEYnkc/R7tczBD7X4xyZ/s7WhUdrnSrs+f?=
 =?us-ascii?Q?WXgZfsS9AJu2l4vGfewq7cYJWVLwIoSHcB0g+u4KwNluLbmWrN72UR9vdFcC?=
 =?us-ascii?Q?lsSAryfYcVWZZbTNpDXL7Xe/4ClugzxTqiXHCf+bN3MnlggRL6YNrrjiW3wQ?=
 =?us-ascii?Q?Pdvbgl9FK5Fh8VEbkvD48fNe384SReFxvfdXCh0uXlNQ7uI2DpMTi2OLO765?=
 =?us-ascii?Q?8uCsQuBMGlvdF4tBs3mom4/dHVFGP8HvDTMJCCkrozLYODlFQRRyHlufA/Tz?=
 =?us-ascii?Q?HuYoNxNS3FroNSx9Wsrs7BmhslahNQh9pBIONVyrhYuIWivMvv/Sxp5D5ein?=
 =?us-ascii?Q?FhL4rfLQX/RJFBcRb0vZ9YH7Bet+qAq9MzfHqy9unc+d8qroDqefk8iLxZz4?=
 =?us-ascii?Q?bVkU+jfFaZ/oXyxftG0MZ2C8Xkgl58yecEryyAjHlD51HQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8k4CnXIY+8ZLpV0kEIdUK4Y8Y+h2NLIrA16OXVSQiwdm1WgE1ZVuKxbK1GK3?=
 =?us-ascii?Q?NSiMvntlL7H5R16LtE8WC8kdMneFzcjjNmZ0xvJXG4MS0hfNZjR/KRGXe56N?=
 =?us-ascii?Q?y1aSWx5K16KgERq8UISybr9cKqe6OCeXqRVTX6gIJhcXRStEVRts/crsuEFe?=
 =?us-ascii?Q?6yKza0E3kTuG1ZBQqgfTXSt3knF3cOsRXK74Qyc1l65EdBQvRoRYH+SdNJq5?=
 =?us-ascii?Q?44IQs4GhuYD7Obc8g/RJvcMAXvyBRtv01G94ta19uqldbjkVoMXYuynrDCO/?=
 =?us-ascii?Q?IIbo762y3XbKkOst2SlOderI+qHBfeALQIkSl9syxDIo179ThuvhvWJaBKHC?=
 =?us-ascii?Q?8tZrMwVMptk39SAWCUrVW9tZL135j+1gzVq/pIJ2Y9v2wXuypNtfFAJcg1yM?=
 =?us-ascii?Q?u42B3Se+zCsKGMdwUSaL9HKrGl+p1N0mjpPJqynK7Dxl+73I4z9acwS1kB3i?=
 =?us-ascii?Q?EpWiH/3uAfDMgzgBt7qN1IuaAEofp2rKxFalI79WSozb4b5C1VvhMLV2ZaE+?=
 =?us-ascii?Q?LeEIoroq/V+fU23hA97Gvw3UdmxDmgc4O/+NHT7f2yUkxUF0zHruZemZjvQV?=
 =?us-ascii?Q?t995z0HYKGcUCLqCqULC4St9E0geRvtzQM/r7fWmwwGGNJzQtAXYK69YBzm1?=
 =?us-ascii?Q?FXQEaqhEqWYvgefzkLu8D6rHQ9hBT57oHw8vq3iQ3qbBFsvO2AOu7blJd28n?=
 =?us-ascii?Q?/094DdG22wsTJzuh6zZQ65y0RyAZI0l2uot1GCKAl7l6p4p5X6zV8kFadVce?=
 =?us-ascii?Q?3r8b9uZ01V/zRLMtdnjv5LkHu1BH3NjIWpw3W4wkyvaDuauDxywmRLRF+gHt?=
 =?us-ascii?Q?hG7/YEZTS48gPhvY6/QBsumSSnCRrTLTX42z5Ih5wCnIAiERAcQbfxTKmUXC?=
 =?us-ascii?Q?WkbPZwPM85fiADe/I0OHHnpnC0F8EtAJjJLakggPS/7nurrl95wlgcA7HUFI?=
 =?us-ascii?Q?pwUueE7AkeKBh7uOvbQfszIcLnMAZyVBVCdDAEhAjkkqR32lp5SNikN4XQ7+?=
 =?us-ascii?Q?UtBRVNpY+I9hlocvW0WYU08ESD7EUaKX+cyUpgwJRQeuqTdxg9Bp+xKglbOJ?=
 =?us-ascii?Q?S5Umo89R189EOAKBKGOFejdVoBcDA8h4wCZLvxx6dXhSo4YY8ilHiW7WaZKK?=
 =?us-ascii?Q?Kji/HlmtFbWHvCJqWczRMc1yQIAUOAinPkzmYZzVfL/2/qD2IyYBLDti8bor?=
 =?us-ascii?Q?5I4RUkmYEMKhqDbG/PmC1UUkNvZMeRG0dBir+qbu/yCClY6odKUOLYuGafCu?=
 =?us-ascii?Q?ihISlRwi11nfN+rKjXvYa6QXcvawGIGp82Hazyc5mckeDTSrW2xLnqhZUHz7?=
 =?us-ascii?Q?K2G1rgfpFgGdsnYjxkIQmek7cgzxncfVL+DLFaCVLW1oFgb9GdsqHIBwMUri?=
 =?us-ascii?Q?knhl822X9MFMfVtKxXYtDzJ9uJMqqbAGTB18VmSHq679SINTb8epbSqYN9e6?=
 =?us-ascii?Q?4F4FNi0pHozP2o0QSQEd+39v1JNkqa2+q5y4Gy7yS9aDRwCffrLY5kMUG0O0?=
 =?us-ascii?Q?YT0GYBnjL8b6A5qJGOVkMwnBv/G08JU2hCY3PI33F6JWKjY80cuMlltjaJ38?=
 =?us-ascii?Q?1sg+7PGy4Sz1Okx8AoxvHA35R2ajy35dDdlr7TXQAZ9w0ZYZpfnsIgmfMWtY?=
 =?us-ascii?Q?jw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01d21c08-0596-4406-9891-08dce8856013
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 17:11:11.9900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cqeh++oGgEwRBsksSFyCOuSW9eg4rOHEnmYgKq7imkXgbwWBYSQWoXrheXjwSDjTh8LN/m9N1yScBajGnwYBZBER/VNJ34mYm0YpY/KP4ws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7643
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Juha-P=
ekka Heikkila
Sent: Wednesday, October 9, 2024 8:20 AM
To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 1/2] drm/xe: add interface to request physical alignment fo=
r buffer objects
>=20
> Add xe_bo_create_pin_map_at_aligned() which augment
> xe_bo_create_pin_map_at() with alignment parameter allowing to pass
> required alignemnt if it differ from default.
>=20
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Some nits below, but otherwise

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

> ---
>  .../compat-i915-headers/gem/i915_gem_stolen.h |  2 +-
>  drivers/gpu/drm/xe/xe_bo.c                    | 29 +++++++++++++++----
>  drivers/gpu/drm/xe/xe_bo.h                    |  8 ++++-
>  drivers/gpu/drm/xe/xe_bo_types.h              |  5 ++++
>  drivers/gpu/drm/xe/xe_ggtt.c                  |  2 +-
>  5 files changed, 37 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h=
 b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
> index cb6c7598824b..9c4cf050059a 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
> @@ -29,7 +29,7 @@ static inline int i915_gem_stolen_insert_node_in_range(=
struct xe_device *xe,
> =20
>  	bo =3D xe_bo_create_locked_range(xe, xe_device_get_root_tile(xe),
>  				       NULL, size, start, end,
> -				       ttm_bo_type_kernel, flags);
> +				       ttm_bo_type_kernel, flags, 0);
>  	if (IS_ERR(bo)) {
>  		err =3D PTR_ERR(bo);
>  		bo =3D NULL;
> diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
> index 5e8f60a8d431..d5d30a0ff1e7 100644
> --- a/drivers/gpu/drm/xe/xe_bo.c
> +++ b/drivers/gpu/drm/xe/xe_bo.c
> @@ -1454,7 +1454,8 @@ static struct xe_bo *
>  __xe_bo_create_locked(struct xe_device *xe,
>  		      struct xe_tile *tile, struct xe_vm *vm,
>  		      size_t size, u64 start, u64 end,
> -		      u16 cpu_caching, enum ttm_bo_type type, u32 flags)
> +		      u16 cpu_caching, enum ttm_bo_type type, u32 flags,
> +		      u64 alignment)
>  {
>  	struct xe_bo *bo =3D NULL;
>  	int err;
> @@ -1483,6 +1484,8 @@ __xe_bo_create_locked(struct xe_device *xe,
>  	if (IS_ERR(bo))
>  		return bo;
> =20
> +	bo->min_align =3D alignment;
> +
>  	/*
>  	 * Note that instead of taking a reference no the drm_gpuvm_resv_bo(),
>  	 * to ensure the shared resv doesn't disappear under the bo, the bo
> @@ -1523,16 +1526,18 @@ struct xe_bo *
>  xe_bo_create_locked_range(struct xe_device *xe,
>  			  struct xe_tile *tile, struct xe_vm *vm,
>  			  size_t size, u64 start, u64 end,
> -			  enum ttm_bo_type type, u32 flags)
> +			  enum ttm_bo_type type, u32 flags, u64 alignment)
>  {
> -	return __xe_bo_create_locked(xe, tile, vm, size, start, end, 0, type, f=
lags);
> +	return __xe_bo_create_locked(xe, tile, vm, size, start, end, 0, type,
> +				     flags, alignment);
>  }
> =20
>  struct xe_bo *xe_bo_create_locked(struct xe_device *xe, struct xe_tile *=
tile,
>  				  struct xe_vm *vm, size_t size,
>  				  enum ttm_bo_type type, u32 flags)
>  {
> -	return __xe_bo_create_locked(xe, tile, vm, size, 0, ~0ULL, 0, type, fla=
gs);
> +	return __xe_bo_create_locked(xe, tile, vm, size, 0, ~0ULL, 0, type,
> +				     flags, 0);
>  }
> =20
>  struct xe_bo *xe_bo_create_user(struct xe_device *xe, struct xe_tile *ti=
le,
> @@ -1542,7 +1547,7 @@ struct xe_bo *xe_bo_create_user(struct xe_device *x=
e, struct xe_tile *tile,
>  {
>  	struct xe_bo *bo =3D __xe_bo_create_locked(xe, tile, vm, size, 0, ~0ULL=
,
>  						 cpu_caching, ttm_bo_type_device,
> -						 flags | XE_BO_FLAG_USER);
> +						 flags | XE_BO_FLAG_USER, 0);
>  	if (!IS_ERR(bo))
>  		xe_bo_unlock_vm_held(bo);
> =20
> @@ -1565,6 +1570,17 @@ struct xe_bo *xe_bo_create_pin_map_at(struct xe_de=
vice *xe, struct xe_tile *tile
>  				      struct xe_vm *vm,
>  				      size_t size, u64 offset,
>  				      enum ttm_bo_type type, u32 flags)
> +{
> +	return xe_bo_create_pin_map_at_aligned(xe, tile, vm, size, offset,
> +					       type, flags, 0);
> +}
> +
> +struct xe_bo *xe_bo_create_pin_map_at_aligned(struct xe_device *xe,
> +					      struct xe_tile *tile,
> +					      struct xe_vm *vm,
> +					      size_t size, u64 offset,
> +					      enum ttm_bo_type type, u32 flags,
> +					      u64 alignment)
> =20

Nit:

It would be debatably better to define xe_bo_create_pin_map_at_aligned
above xe_bo_create_pin_map_at, as the latter calls the former, but doing
so is not strictly necessary.

{
>  	struct xe_bo *bo;
>  	int err;
> @@ -1576,7 +1592,8 @@ struct xe_bo *xe_bo_create_pin_map_at(struct xe_dev=
ice *xe, struct xe_tile *tile
>  		flags |=3D XE_BO_FLAG_GGTT;
> =20
>  	bo =3D xe_bo_create_locked_range(xe, tile, vm, size, start, end, type,
> -				       flags | XE_BO_FLAG_NEEDS_CPU_ACCESS);
> +				       flags | XE_BO_FLAG_NEEDS_CPU_ACCESS,
> +				       alignment);
>  	if (IS_ERR(bo))
>  		return bo;
> =20
> diff --git a/drivers/gpu/drm/xe/xe_bo.h b/drivers/gpu/drm/xe/xe_bo.h
> index 31f4ba3bd8c1..7fa44a0138b0 100644
> --- a/drivers/gpu/drm/xe/xe_bo.h
> +++ b/drivers/gpu/drm/xe/xe_bo.h
> @@ -77,7 +77,7 @@ struct xe_bo *
>  xe_bo_create_locked_range(struct xe_device *xe,
>  			  struct xe_tile *tile, struct xe_vm *vm,
>  			  size_t size, u64 start, u64 end,
> -			  enum ttm_bo_type type, u32 flags);
> +			  enum ttm_bo_type type, u32 flags, u64 alignment);
>  struct xe_bo *xe_bo_create_locked(struct xe_device *xe, struct xe_tile *=
tile,
>  				  struct xe_vm *vm, size_t size,
>  				  enum ttm_bo_type type, u32 flags);
> @@ -94,6 +94,12 @@ struct xe_bo *xe_bo_create_pin_map(struct xe_device *x=
e, struct xe_tile *tile,
>  struct xe_bo *xe_bo_create_pin_map_at(struct xe_device *xe, struct xe_ti=
le *tile,
>  				      struct xe_vm *vm, size_t size, u64 offset,
>  				      enum ttm_bo_type type, u32 flags);
> +struct xe_bo *xe_bo_create_pin_map_at_aligned(struct xe_device *xe,
> +					      struct xe_tile *tile,
> +					      struct xe_vm *vm,
> +					      size_t size, u64 offset,
> +					      enum ttm_bo_type type, u32 flags,
> +					      u64 alignment);
>  struct xe_bo *xe_bo_create_from_data(struct xe_device *xe, struct xe_til=
e *tile,
>  				     const void *data, size_t size,
>  				     enum ttm_bo_type type, u32 flags);
> diff --git a/drivers/gpu/drm/xe/xe_bo_types.h b/drivers/gpu/drm/xe/xe_bo_=
types.h
> index 8b9201775081..13c6d8a69e91 100644
> --- a/drivers/gpu/drm/xe/xe_bo_types.h
> +++ b/drivers/gpu/drm/xe/xe_bo_types.h
> @@ -76,6 +76,11 @@ struct xe_bo {
> =20
>  	/** @vram_userfault_link: Link into @mem_access.vram_userfault.list */
>  		struct list_head vram_userfault_link;
> +
> +	/** @min_align: minimum alignment needed for this BO if different
> +	 * from default
> +	 */
> +	u64 min_align;
>  };
> =20
>  #endif
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index 47bfd9d2635d..1b3178226987 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -603,7 +603,7 @@ static int __xe_ggtt_insert_bo_at(struct xe_ggtt *ggt=
t, struct xe_bo *bo,
>  				  u64 start, u64 end)
>  {
>  	int err;
> -	u64 alignment =3D XE_PAGE_SIZE;
> +	u64 alignment =3D bo->min_align > 0 ? bo->min_align : XE_PAGE_SIZE;

Nit:

I don't think there'd ever be a case where bo->min_align < 0, so you might
be able to simplify this ternary operation into:

"""
	u64 alignment =3D bo->min_align ?: XE_PAGE_SIZE;
"""

Note that this shortcut returns bo->min_align if it's not 0, and XE_PAGE_SI=
ZE
otherwise.

This is just a matter of preference, though, so either works.

-Jonathan Cavitt

> =20
>  	if (xe_bo_is_vram(bo) && ggtt->flags & XE_GGTT_FLAGS_64K)
>  		alignment =3D SZ_64K;
> --=20
> 2.45.2
>=20
>=20
