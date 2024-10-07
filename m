Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DF399392F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 23:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA5510E43B;
	Mon,  7 Oct 2024 21:29:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mCReS9Sc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8834C10E43D;
 Mon,  7 Oct 2024 21:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728336593; x=1759872593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B7ETyWHDpMq9JINfgvi0ARQLIPh5vx1zX2NKWMeccUY=;
 b=mCReS9Sc4BKu+FE4FPqor5q5aVKSsuuEK49rHVak36Gyf5UYixuaPt/D
 BBJp2iD/6so0KdSge/OjfJBuqacqUplp4qaoLeapm12eiZI2aLAQ//iVt
 wBdv4/h9ncIEFyKH7dzOojMwoCLvPOhWKFP2dUvu6Ok60r0OBxc9auWEk
 b9jNTQXpz/CNfxdSUkk/9rgc5zZBmjNeOKPLwFc8Ey85cD1QrWIYm/8ZO
 CebcGUOLTROIyU+jmssqpElqdFeR3d1HxRdq7Lqxstc3ZzNco1jnYIgLq
 s+iPCRh1bFJMsnEwVqH9lbt75oruhtzIBaU0ihtisBPFWjrMt9FPPeKG/ A==;
X-CSE-ConnectionGUID: dF0HRzG9SzSQnpPotNspLA==
X-CSE-MsgGUID: SlTxgl3VQ66uGh5GALG2yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38894486"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38894486"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:29:53 -0700
X-CSE-ConnectionGUID: Y5I/Z4ziT/CRkOeicM7RRg==
X-CSE-MsgGUID: YrjkuKPaQWW4a+pvLX3MWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80570814"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 14:29:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:29:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:29:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 14:29:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 14:29:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZRtq77g/x1V0wmm4o/IwgdrmRRioeRhwEXJ8vuSSEOgvpa7sIFAryKJYq5+8DHe0JN5IM9kjCjsSQD5ViGjAw9ku4f3HzAgrkPHwDVKDixq89DIvEpvdJjFdRyaEWGBYKDdF7IGE8f3qup6pBvjX1Fu1N9djGwEKcFVamysmCsowAPzMQ+bUpqD0cNQfZTHLRTb9QdFkl2Epx0C70itSdcdvqWhWm+L/LYnHzuyDKJjqvJCdtr+61aTx0RrBUCLSAdCbf4j9xoIo5JQObFF68y/8d4pfPkAhGO2GPTlnBXGPs/Q3L/05Nrtz75c+6WJXGp8q/9oakEE74B9uKIYVbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ULl3c87dDVrijORpHqRqFMXb0fEJrRNRJAoHE8htYx0=;
 b=RicEeiNmspujTZpeNzjbQNMycYzs9RxMMK5yYYw8HpX8N9VOo/4b5/v4ozVZda6bIpcq9AASBG4WxaXXF4h3+K2hfVdFiZls5gee57DxOee0FULrmvoQJieurXuklpR6jNCUu2Bu178bXYPVbT+0MODXSLgzK54EI/LLnd0zFISVNc8E1eDsESzauKF8JPtU1b/Wgp25V3p6d52/OBW1WGLAIbQHopA7aGeayZASSlJNeTNTeT0dmMrKUka1FqxR+cc4Wn1NdS14Q6XBR3FtVNZbj1Lki44KA31gawynIQdoe18v3tuEpEieZ0Rjlw9FdJjis4kT2X00gK2bOTUpJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by CY8PR11MB7313.namprd11.prod.outlook.com (2603:10b6:930:9c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 21:29:45 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 21:29:45 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 18/31] drm/i915/display: Split resume_noirq calls for now
Thread-Topic: [PATCH 18/31] drm/i915/display: Split resume_noirq calls for now
Thread-Index: AQHbDsJ4J2HPxUcuKUiVGZHYmJtEF7J74euA
Date: Mon, 7 Oct 2024 21:29:45 +0000
Message-ID: <BL1PR11MB5445B5CB20CD97C3C25F0470E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-19-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-19-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|CY8PR11MB7313:EE_
x-ms-office365-filtering-correlation-id: 8e74e6f5-42cb-4b25-5343-08dce71729e3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?BzztGuTfKFNi8B7Djc4JwgI2DQT3Ft4v/0sFyh8MI5HM0Fj9qBB9bbuKnk1T?=
 =?us-ascii?Q?QMnWnvWuRzsBjt5Wo6+//qYB5AUIv9zJ5Sj5FfPwEAriSNu57JJJkKPZkHoR?=
 =?us-ascii?Q?uIeklmVYFdfkqyP4D1vwzrN36kyKG9QnBO3gDoB/IGuUYc9ZLZkYqMNWHcCc?=
 =?us-ascii?Q?OV2PM2ty3iOmmTeYYKaenW6DubAO+1CZFt3P+7+9shVROhbn3i3tMmIZaBr5?=
 =?us-ascii?Q?NWhgV/GtXsibMgHWoUOIYBVSiNAGErlh5OGMCk1V7vghj949wlZnHzac1Ftr?=
 =?us-ascii?Q?NyJcBP8zNKlNpXCrktpvXBkjUBnGT+GhhaMG7NsM+u9VcL8Ri8ooXBDPOxt6?=
 =?us-ascii?Q?WLJ5ikyEQt5ICZ3aaJtlkIvXA/vBFkyyxqTfRi0PJcbrEH4l16GAG1yqYpx+?=
 =?us-ascii?Q?qZs96VzUpx3PNm16TO0vqDAQO9dtnZwtMUQZN/zy1uk3lhhpRruD/y9N33y4?=
 =?us-ascii?Q?cZTLdVSZjdHv07jvdZ+XH4TwTlS2v1JyRViro2PrZcDZg+yyntfZAYj/bwTb?=
 =?us-ascii?Q?fgW9x87l0HrF8rNASDOiiBvniApnjJvoiEkG+SJomtbMP53Gh4sUA/9TQtgx?=
 =?us-ascii?Q?jZgPBDmaoFRKvlZg8X28F6aAMO5RFfm7O3yLjePz3IgdKUsFPuzSGcCX3KJv?=
 =?us-ascii?Q?Yju9Nx/BvDtfVMhdSUuW6fzKBofgYEZa1/z4Jlmy9enBbcRrD4zN7LqpzXtu?=
 =?us-ascii?Q?3SRDP9pIzDhZLVv2YGh1xqV61kyFqj5XbSqSTGIx2IAmOO4Qq3gtGrPhDK+F?=
 =?us-ascii?Q?wklwocq6iclWMg8t8+z+vvGnItT5otiYg0RhN22qp7dmDZ/FeTfMMuQ8/SEE?=
 =?us-ascii?Q?j0QAuzS8hSMFvGhdqnE34sR6kN4lreI0kEJ5xOJexuG8gNcxOKYPI+VDu3bF?=
 =?us-ascii?Q?RwsU/Ni719FERolu/qoVLj/H4IVUVy2rHb9/TjL9SpmtUKkInI8PwF69zllQ?=
 =?us-ascii?Q?6nU30C257l+9NjK41hWLYZnYfKwTcKZe3wfkbb9iWTW4ZW2rD/XFFo3NYAcv?=
 =?us-ascii?Q?YR2mgPNoWzkzZK6VwroLTvrbmAT1dBU4APu4EM4GJgyZKeWFOVhDj8kMP7Uf?=
 =?us-ascii?Q?K5IbTFcImUStLXBKTH/6tlEgWXY4ouIfH7REwJHnq0X+bMWC5lt3EaqO5q1v?=
 =?us-ascii?Q?k7uTgykIx0MzYbqiO84vNOjkO6PWDkX6xTNdDQrag4A7PdOj4eGulIQ/xsXU?=
 =?us-ascii?Q?QgNskb4xc3GD/kDD7paWDg8jNWA0h5y7+rtIaqA0GjjYiE2RVhardeTsVWzF?=
 =?us-ascii?Q?4RT3RkrrL4Uht/0hfNL6B2/GfHeCaDBZuEwkgzlucNKNLkw1GppMbofMuhSt?=
 =?us-ascii?Q?H6KFcPj7ppHwo/o+XSyGB6Zv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SPcgz9wb3CnmZ8dq8VqFkAdNcwpNTUplNltbqHJS0wwao+6LYAwRikeACENv?=
 =?us-ascii?Q?gNSI7akakseTjhU/zdVoBi6k/l5bBiFxHX/9i0P++/PlAD1YKd7NE+YBYu2E?=
 =?us-ascii?Q?kPRivRhxAQ/bb04h5eb2fX8QiapsQXcILZCcZpyJYYQ5Z8AVC9OiXwizv5MM?=
 =?us-ascii?Q?rGIeq/E3+EePwgiaIuwkvgV+B4WZ3/MKHJmy9rzZh9Dx4uvxKBuKMKTtlT2J?=
 =?us-ascii?Q?z7sPTnWUJh0GG+53JM7u1rJd9XUVSg/fSS6TH0dn2HuH7bSA3StduIFSNitt?=
 =?us-ascii?Q?SZEbsQKINhJZ2h4Mx73dnz3F1fB+kJoPo4yapLXRWzoMGLpXkpWqRwjvt019?=
 =?us-ascii?Q?Go0WAaybUewp6DuDjYPQNKb6ynBKlmHPUqRPYm5skdgSr5baJb5M6OhDsEI4?=
 =?us-ascii?Q?UAdlmRFL4SKOwM3w/BwrVjl5CCDM+1XmO4zw7SjXN/2wvLxdplZCDN5FALZz?=
 =?us-ascii?Q?fBxVikSKGBzjRo+NfKLFaNACriQE8XKFhSf49je8g6uRYbhuqyh15nBvHN3o?=
 =?us-ascii?Q?XxgBXnlK5hsnC+qaAzRb2byCQP1EeE7YXHiUYpfVkcx5J/CeDs04xLFDCt2K?=
 =?us-ascii?Q?D8nmgFPPx3M01fCmgA/fUJBnS+q3AXInq1kdnlU06KwvJYMPo18MT3qPVir7?=
 =?us-ascii?Q?761mJnAzurYg/Fd8ZmDrhjkdTNu7OlPaf434UbZDRtXnqppao93s2HsYA7uZ?=
 =?us-ascii?Q?nEo/GThvC07REinHU8yhBfVOwTnI2Dfo9ywt4xyiwr0bm1xMwwyeEqWzLdUC?=
 =?us-ascii?Q?lcVVSCWnsk3/e7I9I7NT4mq6YoEtGsv54diRwzapHmxAwUm/1XnoGx1PtqNo?=
 =?us-ascii?Q?V4thCe9O+qAw1VVxLio5RNHCAfwRq/FRfvCyMbU8AI84u/Qqkqaf6oIHUC//?=
 =?us-ascii?Q?sFp1Ym4lAxr6VMEJvo6ovNPoCAT1ZOD1hXF50gTYzIm5j6txj9wYoQz8izPk?=
 =?us-ascii?Q?XLPLqxn+TezXfpnCVxQbl+xk4ex9oIJK7NTOiQZ/Y2lI1JdUadWRmAm00+nO?=
 =?us-ascii?Q?MWhUAM5oHjAGJfEzeVV00KN3qxPHBrbouMmqd3y4cyfrFUdyxR3nZ46ltctB?=
 =?us-ascii?Q?6594ROiSdZAwx5NOt3IxBMCuUQdKYdU1YKjDo1054mS2ckMsFP6KFyNTrwhN?=
 =?us-ascii?Q?ih9pdlDMYa7272h7Jsz/VXOfyycmpOb4VHyk4JIImVcFhoe9uKmzN59jH9cg?=
 =?us-ascii?Q?Dtei0Jdj96VDQNtB+vxnWc3BteEcuJOMxR//77AllfKyFRnTof+8LbicUHTr?=
 =?us-ascii?Q?07kIoNigHhSFqvNu8KHg9lbtDgAqeZQK6sExj2O3ydKIcgFcM2+lnLy4czZi?=
 =?us-ascii?Q?YaJPQ3sNE/S9wkYbmLYzLwRaLzUHGBoNmDH3n2ielt2rU6RcVIFF37muLhrt?=
 =?us-ascii?Q?Z8o2nqtUOSEOM2VN/6rMJajbhpZ1R8hZHhQWovmSVdGNrKsxnzLjBA4JypeB?=
 =?us-ascii?Q?JUO92M2RFeSlFV/s7HdytToOxzkMi2k9NaWccDpHmU+d7aWKTyv2VcTjuf2T?=
 =?us-ascii?Q?o/bOLI4E32eaIhGoljUWxA2YfKGh6b8sZkiwrXZ96DNOn8PfEMIYhN+7Faq4?=
 =?us-ascii?Q?nAbqqItz+RvxvtrXQbiAvWBN/EIAhplDdEMfEEZAMS8VqNiIcMMr7UiPIPTP?=
 =?us-ascii?Q?PQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e74e6f5-42cb-4b25-5343-08dce71729e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 21:29:45.2694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lu8s1db7kxydTHHT32kKe8kBkUUMA/OpE1PNoBpK8OMf06hLVeMR1O8D6+9rhN5fRKQjaK6RRiNrhA3RR3FJ3VHWe7GKnu1GHKeIVj4IupA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7313
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
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 18/31] drm/i915/display: Split resume_noirq calls for now
>=20
> Some functions are not yet called from Xe. Move them to a
> separate function that will be only used in i915 for now.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

s/be only/only be
But otherwise:

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_display_driver.h |  1 +
>  drivers/gpu/drm/i915/i915_driver.c                  |  1 +
>  3 files changed, 12 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index a64468e3a052..85a51b9d49f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -729,6 +729,16 @@ void intel_display_driver_resume_noirq(struct drm_i9=
15_private *i915)
>  	intel_dpt_resume(i915);
> =20
>  	intel_dmc_resume(display);
> +}
> +
> +/*
> + * TODO: Current sequences missing from Xe! Check and merge with above f=
unction.
> + *       DPT is also a missing case there, but the TODO is recorded as t=
he
> + *       empty stub DPT functions inside Xe.
> + */
> +void intel_display_driver_resume_noirq_legacy(struct drm_i915_private *i=
915)
> +{
> +	struct intel_display *display =3D &i915->display;
> =20
>  	intel_vga_redisable(display);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 4b2c041667e0..e287574fcd35 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -31,6 +31,7 @@ void intel_display_driver_suspend_noirq(struct drm_i915=
_private *i915);
>  void intel_display_driver_suspend_noggtt(struct intel_display *display, =
bool s2idle);
>  void intel_display_driver_resume(struct drm_i915_private *i915);
>  void intel_display_driver_resume_noirq(struct drm_i915_private *i915);
> +void intel_display_driver_resume_noirq_legacy(struct drm_i915_private *i=
915);
>  void intel_display_driver_resume_nogem(struct intel_display *display);
>  void intel_display_driver_shutdown(struct drm_i915_private *i915);
>  void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 53960326b68d..65f885e03880 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1113,6 +1113,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  	i9xx_display_sr_restore(dev_priv);
> =20
>  	intel_display_driver_resume_noirq(dev_priv);
> +	intel_display_driver_resume_noirq_legacy(dev_priv);
> =20
>  	/*
>  	 * Interrupts have to be enabled before any batches are run. If not the
> --=20
> 2.46.0
>=20
>=20
