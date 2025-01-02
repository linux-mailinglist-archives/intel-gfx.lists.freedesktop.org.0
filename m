Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 884B39FF622
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 05:46:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B5410E199;
	Thu,  2 Jan 2025 04:46:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ckpj9MSY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB56E10E1F5;
 Thu,  2 Jan 2025 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735793186; x=1767329186;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ilxksOdr1k5OYiCQFJhdVCklOKgWS+Nb3da6XK4nJOU=;
 b=Ckpj9MSY8KC7/JJ+zrfgw08vA8KKgNjybkzyRiIXNLsagWqkHLOoD9xE
 3+n5Kqtjid5SAWiL9124HrFE3OdJxblEIoheb6IikM4oUfSq/e5lT7CZN
 iKwJfLu10rgLxAPSqFpdsa7ex/LLONyRJAZzpyMFfDlT1Ewvv1539/zRo
 vBLAF6G9rpbVa1Tl58zYJdcDWuS0Itd2l4h/Mz7wvNE6w3RktfIgYledT
 Tdk3odFFOEW8zuH8lMJer8TPk72vuiZdNVQF7BfOgTo90djDo5OeqP30B
 zZGP8mV0atrhpm4+XH/WwycMLI+0g9KA+YEzJ0ZDSdAcAJJL07HvcsplA g==;
X-CSE-ConnectionGUID: qPu4W7O7RQWmeAHs0nPNYQ==
X-CSE-MsgGUID: dEdZqbekTOSuR0dOl0Ksyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="61397674"
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="61397674"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2025 20:46:25 -0800
X-CSE-ConnectionGUID: kw7ELsikSt2yT5SKfpjxUw==
X-CSE-MsgGUID: Jm+NB4yGRJ2cczd1yfQK4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,284,1728975600"; d="scan'208";a="101834691"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Jan 2025 20:46:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 1 Jan 2025 20:46:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 1 Jan 2025 20:46:24 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 1 Jan 2025 20:46:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LcRD7yf9dWFN1N8/2h5yHgxLdOQLSHqczoJJwrysureq7n+UvnqvOSz+sR7WIOnj/arjCfGcHjNxrxURmWqv8dT2A/xZGUeQE0opS/jmU4i8fxV67Gv+xAwUcIvnBdCHIH6ullg787SAbDgKJ9/6vXIAIOkBVpqjc2+cwgA4fDR7eLOgY992AhTVoM/DN07HcPj0qdXynJKCg8xSwGdfx/+vAolcyCj3r7nTIKO2I3rNn0rq2jDtUtp6poLJOIjuihqOh6cs5gv9l7WpZeUA5N6Qs7tRCk80NDackuTftAfCU5TSH7ENMT7swcM+5GQf80jkqOp5rTT0cELyCcEV7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qjCjOme94zoy/jD2h55D29dRstordQlMqg5WVqfV3jk=;
 b=x2TLOqs4Ap7kiC2Tppt9OvVPXqlf23IkdDrBXtOIvzGCTH9K4zXP7DN/j1quEJ1euesvybQT1GfL1C9dTBBiiGpH8cYuS1JHEwybKZY2LVM2vC3i8YtZYq1Pky5AGnZq8o5pwDDwhCilrFzdMNjOtWEelyjHG/QDeSpKw4XOCBZV6qerXnIRNEny/HVKre5fAZtrAp2BOhLE8rXCmy2Fnve1lcBv0Tf+OZ9OC8xttwWCLbzIhQ5oUlFm2gyssw6F9NbVt0CrSuJzeJTbTziDJ/lrsQ6djzb88s2QQTCLAeWBBxzPQe9HYS3iORYfAKBaGwJMVzSYXAJeZXwofrcNmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by PH7PR11MB7121.namprd11.prod.outlook.com (2603:10b6:510:20c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.18; Thu, 2 Jan
 2025 04:45:51 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8314.012; Thu, 2 Jan 2025
 04:45:51 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/xe/display: Re-use display vmas when possible
Thread-Topic: [PATCH] drm/xe/display: Re-use display vmas when possible
Thread-Index: AQHbR01hRxQ4tnJdL023cEqhrE5kVrMDEjXQ
Date: Thu, 2 Jan 2025 04:45:51 +0000
Message-ID: <BL1PR11MB59794A440BF95DE3887D1889F9142@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20241205193934.49526-1-dev@lankhorst.se>
In-Reply-To: <20241205193934.49526-1-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|PH7PR11MB7121:EE_
x-ms-office365-filtering-correlation-id: 86c21bdb-6fc0-492d-20d2-08dd2ae855b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?/ED7zo4VilOcsMO8bOgFaTJZ6nqWCOUL1A9LBbmmwNlhrIdIaYXjf/p6Mb66?=
 =?us-ascii?Q?MN/5MxCyvyZUfZPa8b0cjU3JzOqzZH8zanQknXXbB9IpHz8LznW7z1vgi7k/?=
 =?us-ascii?Q?nCVX0WrF468cRtJl0QLPHLUlssdKvVdOCaRCUlPDtUIKCQUCfkhPiV9mSHj+?=
 =?us-ascii?Q?i62unv9OT/zwOlOmMjrDMG5mrfQvE/cnRdLD+3HFl6wM7xNFerU2Kyg7ZmuE?=
 =?us-ascii?Q?Zzv8fwA/46iIm3BXkogdOg4qGLN40DXGIFEcRQ/lesLOlejjR0hw1PVTHkwu?=
 =?us-ascii?Q?o0l8SHNQL1HLxUb2JB/PciYJtRVhFkuIvlVRO+xorKpJlSj7i9Xd8nLznQsU?=
 =?us-ascii?Q?m8wzgrifgH3kQY2QeGy4gMqmw5NWEmSQR0LkvG68NBp5+EMwrRjUmHKsnxA2?=
 =?us-ascii?Q?s1S+EBnV5/bTJfHQ8COmATgTDYFXXxCLC34OHZH5l7Uubg1uk03pkboWh5vl?=
 =?us-ascii?Q?67wA9L7dKbVPHLoNd1VBjoHIDe9WMebfjLL3EUz4IwpVvYu5zXt2QhsOh5CJ?=
 =?us-ascii?Q?DJ+4K9aZ1Oardhk4o8dEh5B+8FhbebZFyHDoIiCwRidBhTx2rQVNNv+NkTyE?=
 =?us-ascii?Q?l5QaVkUZpnnn/yY+Qs+Xj8xJwJannOeRV/Tvut7t2Bo1qkeN4oR7cGIg1yXB?=
 =?us-ascii?Q?kogBcq3dORecq04N/STjZ9yQReAyoCH6Zut2nt9Hb4LINL08WSjPj8UOaNRO?=
 =?us-ascii?Q?TDYcI6MgLr8UL2PoIMw12zKEISFqGloURYsUoQYBPGtMc7Z/HVICifJzIQ8n?=
 =?us-ascii?Q?C4K72rwKOTqYOKdfAlm2LtzrUn0w9GP3ane9j/+yCTDru7wjA5eSla+nTuQs?=
 =?us-ascii?Q?VeEVpzYFTGpY45UGF1tMZXpw6pq7GAog8gd/1shcyuzBXEqjyZ0gugYz960s?=
 =?us-ascii?Q?6hPG6UFR4ll6cjB2LU9ro38rLhVQ1a1tY5ZwxV1oGoenpa7gKnkFw+VZV6vt?=
 =?us-ascii?Q?jtIvgoVcOAgzO/0BwNikjlXuDvvZ5n0bSqgNIFqdBwwUVi26mxNW1jqRwgWu?=
 =?us-ascii?Q?8nu4R+UmyeDxNfm8PxTtj3klofukrxZr6SyXJbVMfrKk98vOHuQmaJoJDTt/?=
 =?us-ascii?Q?KbS1liE2p4wLMh0RUg9jRiv5zJ4JvGP/2dEwzTNPhfs+I6EfQHNXjSnDnitj?=
 =?us-ascii?Q?+g43nlaVPqL/dKNbLywcB3aeND1f6YYfyDVqLIsxNq2w7oyUA7npDbgugrEz?=
 =?us-ascii?Q?3kg8fHuTij4mNO9sG95grqo5xTBXvUIXhoDOkkCJNHozir88oXetdAs4wlMW?=
 =?us-ascii?Q?702H/SkwOvgQSfD5ZB0jyM1lxAngg80BURSW+1xB5MKJiFJJ9kPizBqdRLZi?=
 =?us-ascii?Q?A5XS0wc9csRRfVct2uMvJbefNNkJ117Rnu6ZJAALTsASD1b74JAzskSo1s+O?=
 =?us-ascii?Q?1LCAg4rbS8FRX4E1cOW26fFL522PfRAJKB5Biz6+vhKcd7ukrTmrJTfGHMtc?=
 =?us-ascii?Q?DYRSeggPVkVdGUhZQMCMwr/cJkC/14SE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o1NkaP/AYeqGZVb61gl37oH6GGiDvheq1qCd4n5Ngknm/g8THKnLmYsG+La7?=
 =?us-ascii?Q?yW++xGE7faNytk33Ks1L9rs2Yj4iAqTL/vlSDvQVscNcetXNr/zRlzA+8nPW?=
 =?us-ascii?Q?RM7j2yvz6gjjd/UH3dr1/BHkJ/baC5Ah8TOIpY7Jxv+jpNmd0WqY2UwPIYw1?=
 =?us-ascii?Q?JsZGzyPALlZ7qPLIAetceX46JCe5HQ5eQS8heqr51gX9He6pF8YPtWk3GlSq?=
 =?us-ascii?Q?XTj6oR8wRUm0zWzMgi/Qzv/wp2pEzxt1WM4TcMkTBK6HE6Rz9l4/I1lrEVLX?=
 =?us-ascii?Q?5WcYhdy3fzZ2JFraRbt10eFQ+MKEd2uaB9TKxvYANeUTe4bOtV89uu0e2vVH?=
 =?us-ascii?Q?sA68F4MHJ4uUlaOlS8K47AIBZMavuF9aWFi0GBqf2gM07laQmLomOy3HkJGN?=
 =?us-ascii?Q?gmh/irqDZRTDI1i20J2bh0eTdNeRxmog2TDOgzgMLafNL4wEh4GfinGgTPU7?=
 =?us-ascii?Q?P4n0LK7kic1m0XU0PXangULXDi9YkD45F0QbMfKVuIn1UMtKOO1nx23uNeVB?=
 =?us-ascii?Q?o7yZ6qcqpfq9F0C8Oxw3VGblnMI22zyBFs9FGXHkaJ5Tb2aULiONM02uDZNV?=
 =?us-ascii?Q?uJMCUEjYaT1GwmPmUNTlCX6E+FJqFnsi0y7ZwXMaqaaOXoNlBrUfHJfeTc73?=
 =?us-ascii?Q?ZqS6XjXP6d8D4uNI7CczFuYrfTxfkHfU2zyREhFofmhD6k3xNNr1pp/gOlsd?=
 =?us-ascii?Q?9DPvuxDv6I63EOoyPLhG3vjwviTCtt7oVStZJl2Mt6u2laFkq15+pyEB4AwM?=
 =?us-ascii?Q?D5E3yNbgSXbQSzHZrVm0+DuZ5SwFzY1YHYAHowsX6rRBwJ2Yt46pBrgssOIl?=
 =?us-ascii?Q?286eJmKuggMQOtn5I9W51WiHXe9IN4B3nSX2SxetegYD6sESBYBCcOxBBtt5?=
 =?us-ascii?Q?s+Q3x3D+EX7FMN4809Fb/ymcxF2uGBnugcOxEsr2W0dajvZ6QPZNtFtkNbNl?=
 =?us-ascii?Q?hbzLADCvAg6YixlcwOpYCvA5kK4JCy7CYKI3bUQboHQrHvxlhw7nIY4Ge8Zk?=
 =?us-ascii?Q?NEHCU6EcPNGJfIHJOHrMtA+C0PJxuQOQX8RUUnzKdpQAFmEMUEkrCbygbhKq?=
 =?us-ascii?Q?AyJoaYfMWK64+weMqFPuYev6yovw5v8jQdKjsGIySGPpjB8YfMWnzpQ3F6JP?=
 =?us-ascii?Q?GCCr2zBYluCpF6X4MejrLe2OWCXP/diTskoYQta+J1s1Vmo+1Z7Jmp3t4bDn?=
 =?us-ascii?Q?Zjl2gI9rvgT39uaLZb/B1YQ7MZZiF11BfGS01UoKQT6/+ENbyIaNGHnWo313?=
 =?us-ascii?Q?cCv2ldC/a2S4rz32j7uqjy1P0riFWbWWm6nEOQr9zg7fZJoKsRsSMocMIqXK?=
 =?us-ascii?Q?I3B+KrBf91Hk8Wko0xXyKXEisEIM0Z92hpjXTiZXFmXU8HyE3SeO78laE5CY?=
 =?us-ascii?Q?5cP9+uJlG/BxuxiQVtZoDjeqewAkWeyqUeRxdoIRxzNYlWNpc146DfCmE93i?=
 =?us-ascii?Q?fYfwSl4r/j1z4VIwTYVBES0OIRU/QIOX/5bzAdzYGgrHHP4go47tC+VgofA8?=
 =?us-ascii?Q?iDOB7d3u4gc+TbK8YTG1pp1DeKhzVHWUYvA0QRean7kcTkLCcwTbTy3uN3fV?=
 =?us-ascii?Q?OZPLt87tNy0AeF/xYikxrHlX2lfRwxrbh212C9GTlWHjyZajzT8FcmhoZTnk?=
 =?us-ascii?Q?2evzsCRnZdacW0nuDa0+O+SM/PFfZnBzndxCb5Sn4GqQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86c21bdb-6fc0-492d-20d2-08dd2ae855b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2025 04:45:51.4915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 92VAyB6D3Cc4FjYm5Xpi0Pm5IExJL6ZtroJvgJbcYxHYArOF4HXsm9QLnKfk6YBtyAMoGA/1V6QzYNpMAnHsAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7121
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
> Maarten Lankhorst
> Sent: Friday, December 6, 2024 1:10 AM
> To: intel-xe@lists.freedesktop.org
> Cc: intel-gfx@lists.freedesktop.org; Maarten Lankhorst <dev@lankhorst.se>
> Subject: [PATCH] drm/xe/display: Re-use display vmas when possible
>=20
> i915 has this really nice, infrastructure where everything becomes
> complicated, GGTT needs eviction, etc..
>=20
> Lets not do that, and make the dumbest possible interface instead.
> Try to retrieve the VMA from old_plane_state, or intel_fbdev if kernel
> fb.
>=20
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>

LGTM and it is fixing NOSPC issue for 64 bpp linear framebuffer.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   |  3 +-
>  drivers/gpu/drm/i915/display/intel_fb_pin.h   |  3 +-
>  drivers/gpu/drm/i915/display/intel_fbdev.c    |  5 ++
>  drivers/gpu/drm/i915/display/intel_fbdev.h    |  8 ++++
>  .../gpu/drm/xe/compat-i915-headers/i915_vma.h |  3 ++
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        | 48 +++++++++++++++++--
>  8 files changed, 65 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index d89630b2d5c19..632b2b0723dd7 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -1144,7 +1144,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  	if (!obj)
>  		return 0;
>=20
> -	ret =3D intel_plane_pin_fb(new_plane_state);
> +	ret =3D intel_plane_pin_fb(new_plane_state, old_plane_state);
>  	if (ret)
>  		return ret;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> b/drivers/gpu/drm/i915/display/intel_cursor.c
> index ed88a28a3afae..5984310982e73 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -864,7 +864,7 @@ intel_legacy_cursor_update(struct drm_plane
> *_plane,
>  	if (ret)
>  		goto out_free;
>=20
> -	ret =3D intel_plane_pin_fb(new_plane_state);
> +	ret =3D intel_plane_pin_fb(new_plane_state, old_plane_state);
>  	if (ret)
>  		goto out_free;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index d3a86f9c6bc86..dd3ac7f98dfcc 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -252,7 +252,8 @@ intel_plane_fb_min_phys_alignment(const struct
> intel_plane_state *plane_state)
>  	return plane->min_alignment(plane, fb, 0);
>  }
>=20
> -int intel_plane_pin_fb(struct intel_plane_state *plane_state)
> +int intel_plane_pin_fb(struct intel_plane_state *plane_state,
> +		       const struct intel_plane_state *old_plane_state)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	const struct intel_framebuffer *fb =3D
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> index ac0319b53af08..0fc6d90446381 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
> @@ -23,7 +23,8 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>=20
>  void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags);
>=20
> -int intel_plane_pin_fb(struct intel_plane_state *plane_state);
> +int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
> +		       const struct intel_plane_state *old_plane_state);
>  void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
>=20
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c
> b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 00852ff5b2470..6c08081333976 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -695,3 +695,8 @@ struct intel_framebuffer
> *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
>=20
>  	return to_intel_framebuffer(fbdev->helper.fb);
>  }
> +
> +struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev)
> +{
> +	return fbdev ? fbdev->vma : NULL;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h
> b/drivers/gpu/drm/i915/display/intel_fbdev.h
> index 08de2d5b34338..24a3434558cb6 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
> @@ -17,6 +17,8 @@ struct intel_framebuffer;
>  void intel_fbdev_setup(struct drm_i915_private *dev_priv);
>  void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool
> synchronous);
>  struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev
> *fbdev);
> +struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev);
> +
>  #else
>  static inline void intel_fbdev_setup(struct drm_i915_private *dev_priv)
>  {
> @@ -30,6 +32,12 @@ static inline struct intel_framebuffer
> *intel_fbdev_framebuffer(struct intel_fbd
>  {
>  	return NULL;
>  }
> +
> +static inline struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbde=
v
> *fbdev)
> +{
> +	return NULL;
> +}
> +
>  #endif
>=20
>  #endif /* __INTEL_FBDEV_H__ */
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
> b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
> index bdae8392e1253..4465c40f81341 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma.h
> @@ -10,6 +10,8 @@
>=20
>  #include "xe_ggtt_types.h"
>=20
> +#include <linux/refcount.h>
> +
>  /* We don't want these from i915_drm.h in case of Xe */
>  #undef I915_TILING_X
>  #undef I915_TILING_Y
> @@ -19,6 +21,7 @@
>  struct xe_bo;
>=20
>  struct i915_vma {
> +	refcount_t ref;
>  	struct xe_bo *bo, *dpt;
>  	struct xe_ggtt_node *node;
>  };
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 761510ae06904..8c3a5debe0953 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -9,6 +9,7 @@
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
>  #include "intel_fb_pin.h"
> +#include "intel_fbdev.h"
>  #include "xe_bo.h"
>  #include "xe_device.h"
>  #include "xe_ggtt.h"
> @@ -287,6 +288,7 @@ static struct i915_vma *__xe_pin_fb_vma(const
> struct intel_framebuffer *fb,
>  	if (!vma)
>  		return ERR_PTR(-ENODEV);
>=20
> +	refcount_set(&vma->ref, 1);
>  	if (IS_DGFX(to_xe_device(bo->ttm.base.dev)) &&
>  	    intel_fb_rc_ccs_cc_plane(&fb->base) >=3D 0 &&
>  	    !(bo->flags & XE_BO_FLAG_NEEDS_CPU_ACCESS)) {
> @@ -345,6 +347,9 @@ static struct i915_vma *__xe_pin_fb_vma(const
> struct intel_framebuffer *fb,
>=20
>  static void __xe_unpin_fb_vma(struct i915_vma *vma)
>  {
> +	if (!refcount_dec_and_test(&vma->ref))
> +		return;
> +
>  	if (vma->dpt)
>  		xe_bo_unpin_map_no_vm(vma->dpt);
>  	else if (!xe_ggtt_node_allocated(vma->bo->ggtt_node) ||
> @@ -375,25 +380,58 @@ void intel_fb_unpin_vma(struct i915_vma *vma,
> unsigned long flags)
>  	__xe_unpin_fb_vma(vma);
>  }
>=20
> -int intel_plane_pin_fb(struct intel_plane_state *plane_state)
> +static bool reuse_vma(struct intel_plane_state *new_plane_state,
> +		      const struct intel_plane_state *old_plane_state)
>  {
> -	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	struct intel_framebuffer *fb =3D
> to_intel_framebuffer(new_plane_state->hw.fb);
> +	struct xe_device *xe =3D to_xe_device(fb->base.dev);
> +	struct i915_vma *vma;
> +
> +	if (old_plane_state->hw.fb =3D=3D new_plane_state->hw.fb &&
> +	    !memcmp(&old_plane_state->view.gtt,
> +		    &new_plane_state->view.gtt,
> +	            sizeof(new_plane_state->view.gtt))) {
> +		vma =3D old_plane_state->ggtt_vma;
> +		goto found;
> +	}
> +
> +	if (fb =3D=3D intel_fbdev_framebuffer(xe->display.fbdev.fbdev)) {
> +		vma =3D intel_fbdev_vma_pointer(xe->display.fbdev.fbdev);
> +		if (vma)
> +			goto found;
> +	}
> +
> +	return false;
> +
> +found:
> +	refcount_inc(&vma->ref);
> +	new_plane_state->ggtt_vma =3D vma;
> +	return true;
> +}
> +
> +int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
> +		       const struct intel_plane_state *old_plane_state)
> +{
> +	struct drm_framebuffer *fb =3D new_plane_state->hw.fb;
>  	struct drm_gem_object *obj =3D intel_fb_bo(fb);
>  	struct xe_bo *bo =3D gem_to_xe_bo(obj);
>  	struct i915_vma *vma;
>  	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct intel_plane *plane =3D to_intel_plane(new_plane_state-
> >uapi.plane);
>  	u64 phys_alignment =3D plane->min_alignment(plane, fb, 0);
>=20
> +	if (reuse_vma(new_plane_state, old_plane_state))
> +		return 0;
> +
>  	/* We reject creating !SCANOUT fb's, so this is weird.. */
>  	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags &
> XE_BO_FLAG_SCANOUT));
>=20
> -	vma =3D __xe_pin_fb_vma(intel_fb, &plane_state->view.gtt,
> phys_alignment);
> +	vma =3D __xe_pin_fb_vma(intel_fb, &new_plane_state->view.gtt,
> phys_alignment);
>=20
>  	if (IS_ERR(vma))
>  		return PTR_ERR(vma);
>=20
> -	plane_state->ggtt_vma =3D vma;
> +	new_plane_state->ggtt_vma =3D vma;
>  	return 0;
>  }
>=20
> --
> 2.45.2

