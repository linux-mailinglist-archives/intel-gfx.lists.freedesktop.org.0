Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 611E39F17B3
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 22:02:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62DE210E262;
	Fri, 13 Dec 2024 21:02:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AZCWtBXN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC85310E262
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 21:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734123723; x=1765659723;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nw9B0mGpdxx+FKvOVb6z3dBA8F9oY8sybEhV7vDYLRk=;
 b=AZCWtBXNG6aFVoFNMOfQKwuQgpa/VUR2txlyCuUyyzNd035R9GCjrbPQ
 y1IiLnyW1yiWMSHe5ARyL6ORZifDTMHCYwXaSkIgTQXRHqHbe3VikLrSx
 w4CKmb+z5E3NpqCdH1f8Qkg5Tc0qbSKzggcZ8cGW6ho7omvdJyvHhk4OF
 DEMAei0N7LHkXWJV04tsWF8ejYa376B9kThawhjMaQ9hRUYIbc7LIXP5c
 B13WEZOnyD4YKog9mJUzWpY9EuFtkQ79icUNR1gl/b07ADlgVCVWcz4Sq
 d2rGbxb3nAu/bdTw7dsS8JvYiDHZYtaC7XF3+G7xbnCLGmCIGWQyzsGpm g==;
X-CSE-ConnectionGUID: KHRCkYGUQhSEEYm7c+gL9Q==
X-CSE-MsgGUID: 6gyqFpzAQDC6Az3WsMf0lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45064170"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45064170"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 13:02:03 -0800
X-CSE-ConnectionGUID: XCIuPainTu+PF1PrvXr6Xg==
X-CSE-MsgGUID: mCgkX4ZhQwivyleAKRBqwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133990718"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2024 13:02:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 13 Dec 2024 13:02:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 13 Dec 2024 13:02:02 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 13 Dec 2024 13:02:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ldYNfvVvc7xh6Oq1LRtaiQB+FALBTZxTDw2kaGyXAJNPC/wv5gf+1VsKcmsHCeaLoq9i7aZT1nfZOZKsP15vosXHeM11DMuZQs9GRx+8Nt4/GuFAjFPT/34V41/CV0Zegg4j6GSKRSfPIkWl5sk06w90Cev5TQ77P7VcNPqNl8AXMcmzQm0zEn+YzKaWrcxpvo4DEM/LFpAExDWlqsHsxU9DzYAeuq2SAfBZ95LGLkNR0doQdvJ3/zArJec/K5pSfhVO9tozLeZY7NJ9NohFqWBXD/1HnFU/nxoKT6dsWjgXtq7I5NwWiWo+KvASmu9XSnGx/MnxJCRDZ9hxu7R8WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ECajQWDLrYD5aMzXQkb/LlWaxQTe5yQp1NPIJpp++MA=;
 b=l+H2Ji5pDxWuMxo3XnDU9wCWJR0Cz1ebMmJjyKg+Ci4yJOj7gALrVnAAwyKpzazb3mq3NH3Q6535/aYUKVgPxpvddCk9P54+G2MIUnIokF1i+PeI3QRkhaq4DwMl2VfWtiAvly2KyOFm/e8PbidLVAp72FA19YhgkN/+lhSoVObY7vascYVxBNLp2KqkGEK43yA8Kpi/1/T9Zx9WCsv4NaojsF/DMJdMoA8dc9XhcGPUhUdj6SxJgj1tiQ5nE7KMwhP6aDLvsrZ1ZnlU7uAVWGivSrJbDt77nT4FQWnkyXHXDQLCECCvlqcvVt6Lz3xjrfqdg3u5TiozFxF0tDucaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by PH7PR11MB6031.namprd11.prod.outlook.com (2603:10b6:510:1d2::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.17; Fri, 13 Dec
 2024 21:01:32 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.8251.015; Fri, 13 Dec 2024
 21:01:32 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Narvaez, Jesus" <jesus.narvaez@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Narvaez, Jesus" <jesus.narvaez@intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "Harrison, John C"
 <john.c.harrison@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/guc: Update guc_err message to show outstanding
 g2h responses
Thread-Topic: [PATCH] drm/i915/guc: Update guc_err message to show outstanding
 g2h responses
Thread-Index: AQHbTaAqPC7l0ujqvkexYum4V2j/iLLkqM/Q
Date: Fri, 13 Dec 2024 21:01:32 +0000
Message-ID: <CH0PR11MB5444D38E3C6885AFEF611A8FE5382@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241213204720.3918056-1-jesus.narvaez@intel.com>
In-Reply-To: <20241213204720.3918056-1-jesus.narvaez@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|PH7PR11MB6031:EE_
x-ms-office365-filtering-correlation-id: a47e8a8e-ab59-4e84-0505-08dd1bb9525d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?NfGnf4DFKRcxyzG/MPgVeE7GXuAD0kMbSgkOZ/gTzhE4HmZy6nlTxMruVjTw?=
 =?us-ascii?Q?bFM2sT45uK8lPr690OAw2Yli3mKqW7ox6f50BLAJiq/Se2gyvGEy5DfiCKjD?=
 =?us-ascii?Q?H5dDxZlwthgS9Rqa03z7kk1terRGlM/7DRcUhDTbZ9hhTE2HZ4CwBkIXGJJZ?=
 =?us-ascii?Q?cFkn3EbAlz8Z0LUZaWv5utcWCK9SOJe6sIXu+qLBVX0cuL7G7k5RwrNz+xzE?=
 =?us-ascii?Q?P7luwMAHg1GaXFicpABPEsUWzA3sEOzhW7jsCVeI2gs37A3xbtcIq1cuL652?=
 =?us-ascii?Q?RMZM7U7KI7VHaDp4xrvOTR0ZRgHHXLFrkVZj4CHr6LIKkxwk1ZhrWBTIrpb2?=
 =?us-ascii?Q?b+wzIqWb6CYdpnTbH3suJuL5Dc6pGhnGaliexNSYGWJOTdCByMF2lxbIZSzZ?=
 =?us-ascii?Q?5J11Qj4QUM01LWp9ClRrAPw0OJyQwim1/+YH7yASRzHV14XBCjRJXsQodIXE?=
 =?us-ascii?Q?8VP5uT1KFsYjFI6KQjnO48DIeXPYUmMrjdMjpq7BIewmGMvmLbfGbDGOz1Ah?=
 =?us-ascii?Q?B/YFbrsrdVLb9XX9lB6il6i/y5H59alE+1unTQiIxSqXGnZYxcfJsd/emXZF?=
 =?us-ascii?Q?Q70ytuNa2ALd+vbTq++UCIGOQnq+awx1rsFK3LPY+t/JIEycLDCDUiq3EOLS?=
 =?us-ascii?Q?hXNCkWc6arkZVkAe2dGhK18Mcp/qom55cRNljnXSd6woF4XBMmtWoENgdlK3?=
 =?us-ascii?Q?ygyPPh096bOirHNS1k702h32QLrAtLE0GCJOtZpDM9CTC3yUgkIYcfBh5oSF?=
 =?us-ascii?Q?cW8SiJY6wjqZa+JB73KbufOowE+CRpr2QnKDfJcSQSbS1Yc8nC9f6+QztXsG?=
 =?us-ascii?Q?1NbwOPjAl3wxcu62igiKAO1xVvaCzbpgmeksnhcm2wPKjgxicLIq/mytnJCy?=
 =?us-ascii?Q?4mbow31OjardpmGp9DxeSZDnRgtQzTyAMFK24Zvfot22mwOXULPSKSwpXxqe?=
 =?us-ascii?Q?/60fnoW0ZTiFg92nIUUS1K2g4KArvrPpMTwMCZRV8/uy9wJ5Ra4kydvBSv/z?=
 =?us-ascii?Q?DFb7T8g0zsI07RTfQhGucboRgVXWaRcbqQAYAgafVJh81jmAk7+lc6h7HRnY?=
 =?us-ascii?Q?oTgC2gtxsbn1wM0rEOhEKCjIanTm6icJX60x5wb7N7MY3wL5uhjD1taxd4TB?=
 =?us-ascii?Q?wRT6VAd8DlgJ7wuNbD6M0Ni3hso9RbsEJN3fbIkQiXJP6MG4u33xOxvTr4uQ?=
 =?us-ascii?Q?R7ofsTFPRZ/Cn6aJqclL6K7nqn5mty/zRiYNUZ/fC0NiHj1+u1YP2+ELt05m?=
 =?us-ascii?Q?7wV+E1CW54ZXZptKV5SYUq5miHRJpLNuc5utr9i3X6yZv5xcp51+wXIcWIsE?=
 =?us-ascii?Q?T4y/WdiQg8rAnyPnS3WCNZC3t5tyaGudWxJCrlMYYlVlNV8N0/F+a0Um61zE?=
 =?us-ascii?Q?5D6TbIG2ingqD43iVo/CsYSUUCsujEZNuKTsWTqXhgYJKpvJWg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EkLsChICFutdTU5GEi7qsZ3DzkaY1aTpzyGwIObQeEBe2rUJqvYiTllpbCQZ?=
 =?us-ascii?Q?cBWr/ZaA9bTfFaLOw4zUDYY3xwp0qYIBSOi6c+5JlXmhSU7PquzA8pnenIiY?=
 =?us-ascii?Q?qKysHfWAeRZ/9qIqpsIc5ylmmTf9rIEjr6voM0PMUnLa3rNA/hH8dd/EeFd7?=
 =?us-ascii?Q?8qzh8fykVcWdwypJsD9uXXIa5lC2FYbtoK0UeL/ekkennpv9MM/o6h07VChV?=
 =?us-ascii?Q?40NltqqYsmHS1Yg5TYEmrL8hrbQfaZEtlf2noyc7r4j3vQoiCAeh8hqt2X0S?=
 =?us-ascii?Q?aamRi4xAYqKKBT5vOZXojVrwxmMSd13m/foX5o1PaUaru8OAeIdGNnpao6BU?=
 =?us-ascii?Q?MxgF63+Pieq4x8xwc513+VkJqw91CFOZy5tr7oqrSOcbkcgjCtmg7P5OXOgY?=
 =?us-ascii?Q?sXrYzSYooazR+B965kRWALDF9kocPzfOybxzA5nYaKdR0Azul6/KBiwAFXR4?=
 =?us-ascii?Q?ylBvk2mhct9mhfe4TPlgTLWBeiYgbkoNRAJvB+son4zjwtUUZ1J6TnShPG8S?=
 =?us-ascii?Q?v6fKpfMKCDl2kqv9X9ldoc+Vi9A8xyC31kQLani6qOANQz8ZPyrjblMmK6Lc?=
 =?us-ascii?Q?i61ER2PmYZr9HmeAQ/Y6TO/navgGLBato1GoYY1K9zDNq5gxWmclk9HtO6ne?=
 =?us-ascii?Q?/ba1Bbanx7GwSIscATDip9AKoIXSl2FK3KxyvT/W0ia+CRMxfGql107iheOT?=
 =?us-ascii?Q?gWdqdbKpPYI2FVtjI5frIvQPntsR9ZPJDaaX7iGakH+DwWoGR3SJpmXqFMbg?=
 =?us-ascii?Q?vdm9dcpkN0bV1n57TDzQkEvfcrV7AJU6PWfzAZz2NbDW9Jx1M31SKnpvTR9x?=
 =?us-ascii?Q?S8cQkCp+iMkPLy/zEj5FzwgH7e1eO/rQu49rlwPQYGoKCyCr4BFSmv7h9Ex/?=
 =?us-ascii?Q?bO7f5BwWH65CSXeu+sv7l79J66I9F3uYLljx/fYOdRAYzccrI+hHzXuQgIle?=
 =?us-ascii?Q?rifTRQxJl/Iq0yKvfyt+UvLM7N8goqFljWKz+AVm77CzBP8pv0AhNTO+t+ap?=
 =?us-ascii?Q?gKjDUiQ1e8iDlM4gRhF86ITU6jCpAATd97EQt2/YSG1ytAn7MiDCfK6zkQ23?=
 =?us-ascii?Q?USqDht0De2K4f3G/6wuTBZftQWoMmVnV9iwoIOC4poUZGrLcyLmVbc4fZhSe?=
 =?us-ascii?Q?anR19EPBgzavX36xYJwAEcoXATQQI3iuQW2bMV8IOXx9d+Io6MFTw7GPBfyh?=
 =?us-ascii?Q?XnXuLZCJupNFcAcr9LlUWgyJlkD1JUTvB6lgF5H6Oql2NlHZoO97D8BVBs3f?=
 =?us-ascii?Q?nB4CMfHvBqjU1wxJQvmiqIje0At4NrT5XzKR1IGXXClzaN6E9IQCq0Gb92Ub?=
 =?us-ascii?Q?6Wj39LlEI/X8MW5CdsTan8ArDYPUV2n1P4TCIk8NrAc8xonL5GQQFEP79eWW?=
 =?us-ascii?Q?eA3Sxrt10qWNzzsxHCVst5TDyidLPT543aaZBxOvJXNZc6Q6SWNFYqbV6Brr?=
 =?us-ascii?Q?/zqwFi/fwEO72Q+Z5W/enP9JQ78XVXCiPBI+elOcZ12hA2VKo93xy3Z0hJkk?=
 =?us-ascii?Q?DBVPqsSIzHCuSvyfVt7Jhw7bcw0XE005IOoqINuqA6MrjpuFgYah17xlD8Hk?=
 =?us-ascii?Q?4RFFqW+sBiKGrk5bxymtcdiDiddOrgrRj9B5PYqY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a47e8a8e-ab59-4e84-0505-08dd1bb9525d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2024 21:01:32.0947 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HBI2PNMi8j47sSv3zIPaCD5cAGOEaHgRRDUmiZQssWyEPSgCHOITX1pnbRciCo0j2Q1PA3T+kDPtFB4hSMnnRny0U0JSqxKGXUMOW4mQlGQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6031
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
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jesu=
s Narvaez
Sent: Friday, December 13, 2024 12:47 PM
To: intel-gfx@lists.freedesktop.org
Cc: Narvaez, Jesus <jesus.narvaez@intel.com>; Ceraolo Spurio, Daniele <dani=
ele.ceraolospurio@intel.com>; Harrison, John C <john.c.harrison@intel.com>
Subject: [PATCH] drm/i915/guc: Update guc_err message to show outstanding g=
2h responses
>=20
> Updating the guc_error message to show how many g2h responses
> are still outstanding, in order to help with future debugging.
>=20
> Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>

I can't think of any compelling reason to block this, so
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/=
gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 353a9167c9a4..d49d645aa86d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -2009,6 +2009,8 @@ void intel_guc_submission_cancel_requests(struct in=
tel_guc *guc)
> =20
>  void intel_guc_submission_reset_finish(struct intel_guc *guc)
>  {
> +	int outstanding;
> +
>  	/* Reset called during driver load or during wedge? */
>  	if (unlikely(!guc_submission_initialized(guc) ||
>  		     !intel_guc_is_fw_running(guc) ||
> @@ -2022,8 +2024,10 @@ void intel_guc_submission_reset_finish(struct inte=
l_guc *guc)
>  	 * see in CI if this happens frequently / a precursor to taking down th=
e
>  	 * machine.
>  	 */
> -	if (atomic_read(&guc->outstanding_submission_g2h))
> -		guc_err(guc, "Unexpected outstanding GuC to Host in reset finish\n");
> +	outstanding =3D atomic_read(&guc->outstanding_submission_g2h);
> +	if (outstanding)
> +		guc_err(guc, "Unexpected outstanding GuC to Host response(s) in reset =
finish: %d\n",
> +			outstanding);
>  	atomic_set(&guc->outstanding_submission_g2h, 0);
> =20
>  	intel_guc_global_policies_update(guc);
> --=20
> 2.34.1
>=20
>=20
