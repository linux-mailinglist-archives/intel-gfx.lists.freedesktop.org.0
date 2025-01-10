Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE407A08682
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 06:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4464510EF9E;
	Fri, 10 Jan 2025 05:28:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QlYfgOhC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED50410EF9E
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 05:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736486912; x=1768022912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IwqGBUcL/9TFi3loUMOfS+Fw97jyNAwV4LazMw3+Lz0=;
 b=QlYfgOhCBnMucj0LgsUCTeAN46jeD/kQ6FAWnltltW8bqnxELix0J4gH
 MKTkXaeSZkQLjT9GYncBuwCDx8oh+5bplDo8gG024tbwK4qdCHeukNT0f
 eU87jZ0bdiAENL/Oh/7DHnVUX+5PFzM5syu3OsUojQb8zhBXHI6dPWxY3
 uFz3NJ9bEL/sYIvmpWknill4oFLd679GIFxfj9wZ9tII3Bf+qhOtUjiRr
 Wb71qFFRF5cXjkDg4Xolj4CZxvOjwck1tAcns3DbNkyTHsubwDvGL03LI
 b4BNTbckPPzcii5YxC12Rei37eUHX89QklKz1SXIMwWTHsZ4Cuhj5EuLm Q==;
X-CSE-ConnectionGUID: XUPFW1/BT+iIcZxsrrp9OQ==
X-CSE-MsgGUID: ultOYaJdQDWOVARgJTcUYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="47346416"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="47346416"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 21:28:31 -0800
X-CSE-ConnectionGUID: FpZXS1cCTc++W1GnwNVjmw==
X-CSE-MsgGUID: oFTb7gfhS46VY74y4cSrxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104511327"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 21:28:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 21:28:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 21:28:30 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 21:28:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gtDJHVklSxlt3bDbuM5P0I+lFdI0rZXjEewmCfsQ26y5wPmMsNFXtU/TeC918JoTzHwJ0PZVLo7Pw5UJrQ5nCLA5XoR7H5rY7OcVE2biElRPDwjUEcnwpdp2T12spOWYgjj7qgw+TrbiYPCgT1yqUIw8fMwAB0M0HoeTgVp1sWsCpWism7cPQHm2WojyBlxq6PYhIz45G3JQYQjfS0a9o56UovVHK2ntu++e7N8aJB4INXnaoYat/yXmYwjkSjiPh4l+RN7yYLqtHL1IX3EdUhW7fP8OCeWjPoAmyWWEOOGSSxoppNCqaEaTvzAGnWjjHCY27A0aHX6gVrDTXDW2RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lp1Jx3LxYVRlP56L4KKzdGOrlN9K5IlcsHNiPgfsp8I=;
 b=wVieGPaSVsw3IhZbZpjU+0tGf41rTpyZYMpQy2/CLHdJi9I0q6F311f/ayCAZoPtceeMUc61xihwGSWzQs8VfDyEj60T1xXwr9GRYnA0CCWgSjjO60khaILpBLNrxYw+FQZLNFKpRvMuQwy7O4WXOi4lvPUydcpya9w2+P7BxkbmMSLeHSVKwJqlLA4LxO9sQls4+Q9yn1pjOBu+SjpiM3CIO9Sb70O6mvSmGsO4s3uOC6rUn0tdLzJAM7NkJy/SKQVXAW+IPk656/4iCQPSpFGB8UI3WfXHl4obiVOefhmNRC5acw1FOPwqTMImVJ2BJVZQitDwBzhutazlHrryvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by SN7PR11MB7539.namprd11.prod.outlook.com (2603:10b6:806:343::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Fri, 10 Jan
 2025 05:27:41 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8335.010; Fri, 10 Jan 2025
 05:27:41 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Taylor, Clinton A" <clinton.a.taylor@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
Subject: RE: [PATCH v3] drm/i915/display: Don't update
 DBUF_TRACKER_STATE_SERVICE
Thread-Topic: [PATCH v3] drm/i915/display: Don't update
 DBUF_TRACKER_STATE_SERVICE
Thread-Index: AQHbYgiK2SBdtxplI0mymkinYmIKi7MPe56A
Date: Fri, 10 Jan 2025 05:27:41 +0000
Message-ID: <IA1PR11MB62669C8DA3B9F4B074C8F5F6E21C2@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250108200210.1815229-1-ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20250108200210.1815229-1-ravi.kumar.vodapalli@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|SN7PR11MB7539:EE_
x-ms-office365-filtering-correlation-id: e4061748-e14d-4f9e-f253-08dd31378106
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?G4Ry6h56eUH/x0Y9j9HGA8+5dfbYB6qtwqQGYUYY4clyWZIaS2Nndl1IXjen?=
 =?us-ascii?Q?7XeZJO9Zb9R5To2990RmDQnmCFZcx+08bbmP0F9IG1NtLdJsqU9liUiImBiM?=
 =?us-ascii?Q?NtyBY9Jiic5Ck1HPLvW8iQ1KsbUfGYBpsBxs92DyRik9zy3c+UznF+8sXuIq?=
 =?us-ascii?Q?lOa5lrQOkkod0G8cS56vXgjxDFKaLjkYfvmxbRlERcYQBhf1ghEbsbsTMX9t?=
 =?us-ascii?Q?0FQwaDRlM3e1DQEw4SpGUDfNxOPashq3d0Dy7/RDSk6Mpn3RNCM9QuxRBu0w?=
 =?us-ascii?Q?131zq/4ANi6ljAh77bZV7MdzbVOUHR26dJdYrUGXMYSAfcViWwsbLRXwbROf?=
 =?us-ascii?Q?dlrvb0RWFcMaDzJCqqczJ2Y1282V35H9UUdDmQug92BJzsAw/6QIegPJdEat?=
 =?us-ascii?Q?MEETtWLxZgNDDOJzDtJuTipxAieCz5TWuyH9B0MwWRQiDLuBRsvhj6jsOLPV?=
 =?us-ascii?Q?lSzWlR/OhAux4wjp8BANhJfssw/2kmGXWEFdZxd87W5lh1KzlHbWdgVe1O3R?=
 =?us-ascii?Q?yvSut32BXVICju+5zS5x4bU23y4Oy4YDWW6+9+yP+bcyHSWQQsiCjKn+jMOe?=
 =?us-ascii?Q?+LXUu0YCihw93/+C13rui8jA6O12XJ+b+NmkCNiCHwo9rX8EA6R3CPsS/AEl?=
 =?us-ascii?Q?DtxgVDx5y5I8oOfuDKhX3VXlY7oIkpFghoojimUc/N6tAa5if8zIcTm23f00?=
 =?us-ascii?Q?Yh8QC9563AJF3RWB1qTfK/sB8R59t2YxhuTuspuxSBH5GjYA8CXI4UauDzF1?=
 =?us-ascii?Q?zksjC3f54PUzII2AUtDc1WtrrtHCDqRpm7a1E8i9s+in1yiCV1mcWfZgN395?=
 =?us-ascii?Q?h1bITdKZftd5DeP0E95mbqUXoV5oWfwLqwzXR9OR5mjQX2MmAKidkRoOUVB0?=
 =?us-ascii?Q?urSLnDO9OcGesj/sMme9pUXRMQK4GZs3ctBLllDcT/8y4253NiDFdTxjZfLJ?=
 =?us-ascii?Q?1AKRL8A5olXKdSb7Sxu6w18Utc2hUVeOgaEQAMQScbQ2/4H38srMNgomU0c1?=
 =?us-ascii?Q?XaG5GiauSMJlSNj/sDSWq2Z3vow/z2oOjEMlAI+umkO+fo8gPyQbqnNPNm1F?=
 =?us-ascii?Q?B/xrc0/Iuuf59otszydaSo6hvlN7KWFvo8hKrIYuJ3nmyWqglcoIPN8p0GB2?=
 =?us-ascii?Q?2CRFRljI41PvnFdF3SeorPbv8nnglF+NVpL4w0ExSF21jgX333s6N3UtdXxv?=
 =?us-ascii?Q?SKZHRD9FwlXPGAW5RSZ0/1XMhd2Jf7/yyAE0N7TGMsv36j6+GcNIDMksVtqq?=
 =?us-ascii?Q?6rVoyFDnCEcxfhQhK7Izi5SnpsipdZ/20YaQUHjs4KMFt9hEDhSTxxFWkgqu?=
 =?us-ascii?Q?YkfIYQUxCeeOCXz4IBCjhQaw3bJedXdxaYF5MKoNmwHhhWBiBtSQ+pugfFoA?=
 =?us-ascii?Q?7w2n8uBHgkvntFJ58qIRbVpoHCydLez3NtTlEDcxF6h+0gpOzhtFD9jaRzMS?=
 =?us-ascii?Q?46xLJD32esaBNmBKZlkFUBXXAcrELj+g?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NcUzIKZ8IP+v2C7LVWtV1I+zLXOSmNuE0ZkWDpNWHgx5WPIrFZYIUlciKjWm?=
 =?us-ascii?Q?nX1kkB+vvZnjid/FAR37TqlK53BpJYtmgQCnw2M4RWwHBlj/kyWd1oIqpB4w?=
 =?us-ascii?Q?nEPj1ZwIIz0RKmlVXxX/wOZAjDzLqF4ZuGVXsjBQMnNtw7d4+SXdmESGQMl8?=
 =?us-ascii?Q?CGh4XB14/+cXXp5FqWp1XidFMiy6RquYFSsXyzTXuDvK9pm5yka8ldt41td6?=
 =?us-ascii?Q?gk3nxTVnuHYPfekUagUq0hIZy3bACb+DpsHu79yfIqXXfdttLdZCG2Z4bHx9?=
 =?us-ascii?Q?0qBBLb0mor64BH0C4itwy6VX9ZHTIKax/WLbeWLl/2HeECcPtXfroYdlE4X+?=
 =?us-ascii?Q?cIgXie4grwCxOIpGtHPtxkVD+LreGH9MIlkWrMWgki67JCz7TT6PhXwOmGs9?=
 =?us-ascii?Q?sMcS5l8fc0bbTtjiCSTy3404NxlMIwFWyjA3bmavVTcPHddAUYyvYxker91b?=
 =?us-ascii?Q?BOiUQ+O2y6xVOeTw88dulMO4GyZSBwAITEtKT5UgKuYSr4qBv19ghDSkUJcq?=
 =?us-ascii?Q?FQPpKQRgPZvGPanX9dwEGnp7rrcFnKGLdyEzA3Kmh2gX5qXTkK5KdLx/0j8v?=
 =?us-ascii?Q?jRe04bHyJQVmpUoocRogPE+096KWOqC/ag6B6qeWET44py6z9n6t4Bhiyzl9?=
 =?us-ascii?Q?FmdzeJSQBfcWACCBC+BIsDga2iS9evCixhUEIa+xifox8OD6oLEPD5LKsso2?=
 =?us-ascii?Q?6xDSOFSbFqxMOe4Zhd0Nzsjgg13tpzzJ8KmrBVJUSxYpARjI/92OdrAfoLnK?=
 =?us-ascii?Q?eGutl2AZDP/3GNjY+tpg25cyR7JmI8UEV1vt0sHz7lcP+QS4p6FwXIAFLL8p?=
 =?us-ascii?Q?RLr0fzdWirdgGAHOSgy/0CMIxK/uGt1/B+xWrNVFkOHQLxr6kHOuHPfxP466?=
 =?us-ascii?Q?szjKYEe9ArLLSKT64dyVXHyPZsJeC4dWzLMdOhjYzDfusW6QYsuUDGcvuf2F?=
 =?us-ascii?Q?qrTEg9Ce80znCrtI7PmurV8XGxsTq4ArVZkxte/pAmnFY2LWI2wqhtw+rdHn?=
 =?us-ascii?Q?NRJdS4utSpWimFXTCPgwuBcE80Q0La+DF1jGEnOnDN6a4CSQfHqizVXl+VA5?=
 =?us-ascii?Q?I+nrY+9oSDGVAqYJ9KuQ5RuBUyNfcbR8oSOBhORCQWzh/p53CyloHa5ylLdk?=
 =?us-ascii?Q?kOYowpp7sF1yEOvM+DwdvRvbrC9sUef2uOrttAeB6oDa1aYrBqMtBXPCyx8u?=
 =?us-ascii?Q?pyqn23NwpcL9haGBhHZm2ayHq7FnSfm1Cs3i2PqxeKihb3rtafkNZ72bQA9b?=
 =?us-ascii?Q?2hdpd0P1p2sOODWE+IVRlhPAhEMf2+n1Dctx6lhFqCDVVJIoiii+05Ux9RUZ?=
 =?us-ascii?Q?9p32RJsbhw4sJ4AVoRZXt8gZirCvyBNV1UmfttpgpdWLJQv7mZcWZK6h+2ri?=
 =?us-ascii?Q?dSL5o4LV+JS/7B3h+NDeQ8HhiGZM93ipe1+pSWspN5WVbpPmoRE2cKAaBj5m?=
 =?us-ascii?Q?0KZYhaYjKqg22lrwJvVrhGxXRKvqvvaVlFcs2TfNW2dZODqu/m+RW4On5z7H?=
 =?us-ascii?Q?bo5LKn2XDIhfKWNGybUf4wdqkYFOwolNzOwXGHroYPz/65xebjkzzUvZcM4j?=
 =?us-ascii?Q?7XWsE28ET/vbCAO60/lnMTu2OSsE+hqZtaA3W0bmodBeXsRvCrtLqhcDTDkL?=
 =?us-ascii?Q?Dg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4061748-e14d-4f9e-f253-08dd31378106
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 05:27:41.3520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ETm4JP5hlVldgvGHleXWfCz/XAlKPbAdm6gI8G7gg5iW/SqNJCISWFA0a2GpDB1y5n42UkvRpCfh4VqG/j8wvHbUkL3PPrgA9NXmvM9h8PI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7539
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
> From: Vodapalli, Ravi Kumar <ravi.kumar.vodapalli@intel.com>
> Sent: Thursday, January 9, 2025 1:32 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Sousa, Gustavo <gustavo.sousa@intel.com>;
> Taylor, Clinton A <clinton.a.taylor@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>; Kalvala, Haridhar
> <haridhar.kalvala@intel.com>; Chauhan, Shekhar
> <shekhar.chauhan@intel.com>
> Subject: [PATCH v3] drm/i915/display: Don't update
> DBUF_TRACKER_STATE_SERVICE
>=20
> The bspec only asks the driver to reprogram the DBUF_CTL's
> DBUF_TRACKER_STATE_SERVICE field to 0x8 on DG2 and platforms with
> display version 12. All other platforms should avoid reprogramming this
> register at driver init.
>=20
> Although we've been accidentally reprogramming DBUF_CTL on platforms
> where the spec does not ask us to, that mistake has been harmless so far
> because the value being programmed by the driver happened to match the
> hardware's default settings.
>=20
> So, update DBUF_TRACKER_STATE_SERVICE field to 0x8 only for 1. display
> version 12 2. DG2.
> Other platforms unless stated should use their default value.
>=20

Please write revision history. It will be easy for the reviewer what has be=
en
address/changed from the previous version reviews. =20

Regards,=20
Dnyaneshwar

> Bspec: 49213
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 34465d56def0..9c20459053fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct
> intel_display *display)  {
>  	enum dbuf_slice slice;
>=20
> -	if (display->platform.alderlake_p)
> -		return;
> -
>  	for_each_dbuf_slice(display, slice)
>  		intel_de_rmw(display, DBUF_CTL_S(slice),
>  			     DBUF_TRACKER_STATE_SERVICE_MASK, @@ -
> 1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_display
> *display,
>  	/* 4. Enable CDCLK. */
>  	intel_cdclk_init_hw(display);
>=20
> -	if (DISPLAY_VER(display) >=3D 12)
> +	if (DISPLAY_VER(display) =3D=3D 12 || display->platform.dg2)
>  		gen12_dbuf_slices_config(display);
>=20
>  	/* 5. Enable DBUF. */
> --
> 2.25.1

