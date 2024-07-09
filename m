Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E953792AF15
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 06:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE3110E484;
	Tue,  9 Jul 2024 04:30:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RJgju+hE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85DC10E47A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720499434; x=1752035434;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UQMmy74OfxpnIwN4A11lpw5mcU8N0U5OBR4w8INR3N4=;
 b=RJgju+hEEd4gZ+UkdKdzCtuc+P09iZzxAwwWEW1tNhBN8Je9KE8bw3DO
 QjHkXb2A5QX7vOz4zgc8g3mMzRkJQEp6qrM0jVSiARgTYIeelQun43tfF
 IqUWGHpLDMs7lmwi/BEcmJB+THoXtDwuc9UsKW7u5qLh9XHTJtTj31XQ1
 Bf2FlFZT5UkZI5/IzL+vaU5OxV5J3DcboUVEjo95IhlL+wTRBhFfrMlNv
 wG/IRjLYfaZHnFIKSsLMX4Zy+gwMuN5ATwvCVUzbGTV2K+VQcnUtI0Unn
 J/UbgclfW8QvpSXn9Pm1m5qSfmPkI4UE7O4NSPa7Hu+LYw/YKpyQWmMp1 A==;
X-CSE-ConnectionGUID: s5pTJbRdRaqPI0d7m35/Ig==
X-CSE-MsgGUID: W6BxIC+zTvanZ8tB44TiIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="17546715"
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="17546715"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 21:30:33 -0700
X-CSE-ConnectionGUID: i7Pp5LYjQjSkbWxohzXgnw==
X-CSE-MsgGUID: nsXhtejlSgGpC0RJzm5bpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="47681446"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jul 2024 21:30:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 8 Jul 2024 21:30:33 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 8 Jul 2024 21:30:33 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 8 Jul 2024 21:30:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G+SRc24t821w7Rb7FcSUnBFNM3/WINT8sS5NGx7T+apzCGEHGGV+NGjK8Wgoj8vPPTZuWpwFnKn4aM5zPnmwTyvU7nqk3sgsRQL3zsxaUhLWD33E45UNf53JCRS0We0fp+mEAMaID4VFpcHbIp8x4SCToEKXsy/wiISU5v1Q8jkoy3K78e0S6X5Rc9tHk2meo4uYOluTuDTHr3aTAAP6PuSYm0ZgAH+n/fIQGscWF48A2fAyZWbmsPMZv6o2Qy1RRIKM3vJASziDAacF5kKwtJrbwDQUTvYVW60VMqMoMTFlZ3Y5sC7XODn7k7XoX2mlL6XnqLUcR5Nm2+s8uGOeEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ex8/BpMpK2qayREIc5ILGCHiiWaXoa6RWgAplRKvXRM=;
 b=T3BMUpE/a7QLEz6dDlK7/nH2tWNk9CYeKZJSVEzmIIUstN1oqM100i86M/KyXaKLGOClLnAsVM6YGWg8QfxGJxqJFc3yChbukhvZkPH6tzw4e8z+nxRTjf1xE1L0woEP4zg4pddaZlZQ/dd4xe6g989MUYdCgv9dLUHZ4MZj0ujeIOIY9YRUuxYzZbKrJFZENizASMl77EckDDeprDghA1sNwLerqnVnStJFHGhvsYtHUfXCAfwiDCpa+qgAG6LeSjEeIbl9Cw5dEBOe0Cao9RGc7EhdnycLZxElF6DzI56SDD/Ybws+8/haxPdTeUL8BmhH4O8+pI4wujdSHrbqKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ2PR11MB8500.namprd11.prod.outlook.com (2603:10b6:a03:574::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.36; Tue, 9 Jul
 2024 04:30:24 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 04:30:23 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 1/1] drm/i915/display: Cache adpative sync caps to use
 it later
Thread-Topic: [PATCH v2 1/1] drm/i915/display: Cache adpative sync caps to use
 it later
Thread-Index: AQHazevdGjWFWXdt8kiSTk7FImncabHt07vw
Date: Tue, 9 Jul 2024 04:30:23 +0000
Message-ID: <IA0PR11MB7307CB5E4F9804C57706D716BADB2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240704082638.2302092-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240704082638.2302092-2-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240704082638.2302092-2-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ2PR11MB8500:EE_
x-ms-office365-filtering-correlation-id: e3d87432-1629-4487-bfde-08dc9fcfd9b5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Y+eFTv3ubUFJ3XACyQwSfrgPcgxxSwAARcD2d0tYXkRbQE7i2zt6qTQ49LYv?=
 =?us-ascii?Q?kNKP9Wy2t9fSBDM/EgIAoBb8ZK9qCcVt2ZMwoOoJ2hjbFqu3Xq0Wns7+A90F?=
 =?us-ascii?Q?jsEhYMuWPRGivP2Pc9gKuTFRNAXKhAoy6YdtKUSABm/gr66/x1szouQh9qhM?=
 =?us-ascii?Q?uypUJx7kRpXvP2D1Gs8X6ClGe+GMWP20113yPW7T/63MrcSMSp52rcpNG+x7?=
 =?us-ascii?Q?4eugRUpBhqN/fbYadSkCilWQRbtDh+PowT8o6lra2D6l5g/vVELXtKDT404r?=
 =?us-ascii?Q?j7+zROAzlFflXyYBDBny8MLmgRRR/1AriltJiSY1Dg/DaS3Gp9d+Qp3RA2o3?=
 =?us-ascii?Q?0Fdb4SYz0P/2bo6xrB7CSSeHowqdSLpV7HmhUFoypksf20iRDOcv6I92PIbk?=
 =?us-ascii?Q?H0bV8u7FK8DapokjmzOzUt7qdPS5sdu1/AI6lecGIeX6FA+w822Z+B4ZhEWP?=
 =?us-ascii?Q?WUG5mIuOAq5PxqpQKCHOkOpr+OW8CpI+F4OwByN44AQc0Q6YUqtFnbsiDxBU?=
 =?us-ascii?Q?zs4KdC5ab64iG2ujV74OyWL+v4kWVnQltWTstPSHzZfexpf4S+HLj7eJnKLH?=
 =?us-ascii?Q?HWJhstA4a4Axo7bVaPAiBHy816+3zv0o0wVlgd6XWMCIjS8cAl9C/Z/0MOXj?=
 =?us-ascii?Q?8YPF5aR7agaIWPDyzeB3bK0AShnDObC6Wv0vzsukHtWtwxPCOU+Ouk783uvv?=
 =?us-ascii?Q?ngqzyJX/V6O2t0kFWaUNHcZwyiGxcan1IifBwCAMgPBorhC5zCVebX+hKMiJ?=
 =?us-ascii?Q?UeF/i6lzc3clHKgmIh66q9nVMOHOLaUvUeh9rVrz1wQC8rRmvMgZmbgK1MUf?=
 =?us-ascii?Q?DwGoWxqw/5KI7uivz02XiZUV7dddcsrGZtEtdN70rtlfsTLzUscJ9s34wzHR?=
 =?us-ascii?Q?qyl6hrRU6Ip+Fv+lXrQnN0RxBZCVDSen6MvTCGKy3lzAKUnn387Mznjle5is?=
 =?us-ascii?Q?GxGZcE7hAm97ooD0Yl18E8LA5QP/z8UxoLLFlGH5pMRHk5XcwG1Lm0QQUn1g?=
 =?us-ascii?Q?GB1oO0c3KKHt3gBLsAJIGuBBNDO5y6NmCFrb/mHwxwGMAbCxqexRyZVV0Nij?=
 =?us-ascii?Q?k0r7ktQUOzOZAFkXMGGgULLS1CFbunHoojYL2iDOsLi4p5i80PogxAg83ENB?=
 =?us-ascii?Q?YwKBGfmtQa7ywlqQUWTFK++UIOCeteVrXQ7yjJOLUVP5QmYcw0mqClP8ZvoF?=
 =?us-ascii?Q?i6uXTZrbB/xGd1AerFCp7O/0TqKsNYd69U7GTqTywcFI/sxgHIUYce/tF4sY?=
 =?us-ascii?Q?UfCrERrFk3Zo1Mt5riraFwraX8JE1/AsbgxhIn7Mz2CjTJx/2dWMf4rrTnBJ?=
 =?us-ascii?Q?CGLKgQaZKxG2YUSMvFin/LWJwuFGSEJosnqHv2RtJFVR91AH3J9MSW1OOYwN?=
 =?us-ascii?Q?SbzxDSL0xb/o+9B8UXArHH6rPGc9xH8R+6bkuZFuE4iXvVgkdQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bdw+OUjdrE8q/K/eRa8z01OmfdOnj7t2xUvKe85EJnDFVjxYSS9uDhPiVouy?=
 =?us-ascii?Q?axw0H4PDtbNmfp2Jui9rkLZeyAk7Zf0PR4Msl+dilP6mIgsGtDIUX7jLpoKu?=
 =?us-ascii?Q?JGA6g5mjBIDw6/ZJ8BwC+dPJgbzD9Kv7rIcZDqHzGieNUsoKvu3+twKMKjfZ?=
 =?us-ascii?Q?ShuigroHKoYa55I5wdNSSbns9mIK9UgcR25QMD91jxQyp6KMqi/7CrLAZ5h7?=
 =?us-ascii?Q?LAf8erY+Q41ysG+UX/Fi1Pmk5RA08aJClprmxXFUBzeRCBQzPq5NBQwGoDAT?=
 =?us-ascii?Q?Yc3umqAlRSpRPvxD2bObQ7TKrQFRB6cGpN1Y7Mu8W+UrMVn92tdWYd7/kAxl?=
 =?us-ascii?Q?P8/2MfdESRvqyYdUdRSern5cIcSzbxz6ZBWDmEyGx6raDGKJOYRlr3T2FbLY?=
 =?us-ascii?Q?Q4L8/6D+jzhH2wF4BSa8YlcaMo4MAK9q3iggg9+6pIhpv12aB6LYHKo6/Kq6?=
 =?us-ascii?Q?KyK+OkEsOBo3UPGI0cYrRECVdlXbdCGqcEW2R8VnWxB5zC6lD2C/GoTicV3T?=
 =?us-ascii?Q?VhuVWlc+LPTC3O0w+RA2JwF2OPd9V1GAqGoPJ6XQu9AV1LCNxO+ry4x6xwlX?=
 =?us-ascii?Q?H80RhAfSxMiuNDJl/Z+/2pMBPdvMoL3d+lWoCz6lqk4j+PNNDLHwPczQBGcg?=
 =?us-ascii?Q?+ZnTIuiuNuQAoPylTCjutGwX/phfA5dZNX/n1NsXHnVh5tLGVm+0yH6LTXNJ?=
 =?us-ascii?Q?IOrAzvbvBCS6f2FENKPGLREZ+6xS+FB+xME23scTwe8g2VbCFenG/NaElj9u?=
 =?us-ascii?Q?xhtcP9ToqbbC42OuYDMC37dbPI67Us55FRelQ6ZegFkXFuY7En4Ldfhk2fNB?=
 =?us-ascii?Q?FInxnKQfCiIAWanq8BV0figkZw6a0/j1wVBxt5torAemSRIyqMREiU4FyXNt?=
 =?us-ascii?Q?IOv/s4jZtHnG32xLSY+0tw901RSGktqZwkxesqFFlLZUr7ByfDjtcc/DrCDu?=
 =?us-ascii?Q?nLvP3re5oMo1XpCGtpfxgiAspGekgrw3SpPoG9Ts6gwcZp/AsHY/RsOYYciW?=
 =?us-ascii?Q?XaLpxc8eTjC2lkvCXUR2oqIfytpzK/OB7E9gQqos8YxuTf6viHmD79D4UyBs?=
 =?us-ascii?Q?EStegzIsS6q3ojytfIGSURS28FUnGQQIm/liZ+0a3vwpEMSEmFd5YYjPuDHr?=
 =?us-ascii?Q?jpDfCUgeUKJ0SSlwpzdBR7LKTrNVfSxSfhRBWqrcety6mPCPCJsnkFCwTYVd?=
 =?us-ascii?Q?Egg77YkHNIUv/oRsmxlO4P6+nGTJ4BdNASyRTrCJUK6M5GiODKfdchyHYbRE?=
 =?us-ascii?Q?T6XFLk/Ghd1jCe63QXSYaVp41ICuWmdKtC8agkUvYI0j1L03vHEGd69W5tO7?=
 =?us-ascii?Q?QwqnYbjtaTUHhqFZoknDSc238tHXy0BqbWdF0CoMNbTzrQiXAAqgEhpDOk9I?=
 =?us-ascii?Q?tJ3NWB2fIQScXOQrSjoE0JYXXunnM8V/L+7lsSD2hJSJRPm9KugEfzvPmt8t?=
 =?us-ascii?Q?HLWO0lQv9OmtluvqKMEFRb+3UKbBTMkSRIAjBsaxuODJcfYNL3AOMYdE4XZ2?=
 =?us-ascii?Q?5oJKkTvTFNV2gtIi3GA8tKcpbFXZxAtTAfkB/CiaerX4uOZW15tbgCTyHonP?=
 =?us-ascii?Q?4vBEhmkEBHTNjF82wJIgNagbxT7hld3a3e1HL9gU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3d87432-1629-4487-bfde-08dc9fcfd9b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2024 04:30:23.8995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FZJCegPcDmlmQW1tiAXWt3oc1g+TuszDL6Lc1KA/IvEQc7rxq2yR5GaJFc8/VOlDpxXGKkRmFIfxp/KliQoMXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8500
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Thursday, July 4, 2024 1:57 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Deak, Imre
> <imre.deak@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v2 1/1] drm/i915/display: Cache adpative sync caps to use=
 it
> later
>=20
> Add new member to struct intel_dp to cache support of Adaptive Sync SDP
> capabilities and use it whenever required to avoid HW access to read capa=
bility
> during each atomic commit.
>=20
> -v2:
> - Squash both the patches
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     |  2 +-
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 22 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_dp.h       |  1 -
>  drivers/gpu/drm/i915/display/intel_vrr.c      |  3 +--
>  5 files changed, 15 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 866b3b409c4d..f4f05a859379 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -280,7 +280,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp
> *intel_dp,
>  	if (DISPLAY_VER(i915) < 20)
>  		return;
>=20
> -	if (!intel_dp_as_sdp_supported(intel_dp))
> +	if (!intel_dp->as_sdp_supported)
>  		return;
>=20
>  	if (crtc_state->has_psr)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8713835e2307..a9d2acdc51a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1806,6 +1806,7 @@ struct intel_dp {
>=20
>  	/* connector directly attached - won't be use for modeset in mst world
> */
>  	struct intel_connector *attached_connector;
> +	bool as_sdp_supported;
>=20
>  	struct drm_dp_tunnel *tunnel;
>  	bool tunnel_suspended:1;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3903f6ead6e6..edfb30857479 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -129,14 +129,6 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
>  	return dig_port->base.type =3D=3D INTEL_OUTPUT_EDP;  }
>=20
> -bool intel_dp_as_sdp_supported(struct intel_dp *intel_dp) -{
> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> -
> -	return HAS_AS_SDP(i915) &&
> -		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
> -}
> -
>  static void intel_dp_unset_edid(struct intel_dp *intel_dp);
>=20
>  /* Is link rate UHBR and thus 128b/132b? */ @@ -2625,8 +2617,7 @@ static
> void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>=20
> -	if (!crtc_state->vrr.enable ||
> -	    !intel_dp_as_sdp_supported(intel_dp))
> +	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
>  		return;
>=20
>  	crtc_state->infoframes.enable |=3D
> intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> @@ -5900,6 +5891,15 @@ intel_dp_detect_dsc_caps(struct intel_dp *intel_dp=
,
> struct intel_connector *conn
>  					  connector);
>  }
>=20
> +static void
> +intel_dp_detect_sdp_caps(struct intel_dp *intel_dp) {
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +
> +	intel_dp->as_sdp_supported =3D HAS_AS_SDP(i915) &&
> +		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd); }
> +
>  static int
>  intel_dp_detect(struct drm_connector *connector,
>  		struct drm_modeset_acquire_ctx *ctx,
> @@ -5958,6 +5958,8 @@ intel_dp_detect(struct drm_connector *connector,
>=20
>  	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
>=20
> +	intel_dp_detect_sdp_caps(intel_dp);
> +
>  	intel_dp_mst_configure(intel_dp);
>=20
>  	if (intel_dp->reset_link_params) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index a0f990a95ecc..9be539edf817 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -85,7 +85,6 @@ void intel_dp_audio_compute_config(struct intel_encoder
> *encoder,
>  				   struct drm_connector_state *conn_state);
> bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);  bool
> intel_dp_is_edp(struct intel_dp *intel_dp); -bool
> intel_dp_as_sdp_supported(struct intel_dp *intel_dp);  bool
> intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);  bool
> intel_dp_has_dsc(const struct intel_connector *connector);  int
> intel_dp_link_symbol_size(int rate); diff --git
> a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5a0da64c7db3..7e1d9c718214 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -233,8 +233,7 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
>  		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;
>  	}
>=20
> -	if (intel_dp_as_sdp_supported(intel_dp) &&
> -	    crtc_state->vrr.enable) {
> +	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
>  		crtc_state->vrr.vsync_start =3D
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>  			 crtc_state->hw.adjusted_mode.vsync_start);
> --
> 2.45.2

