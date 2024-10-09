Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1351F9972F0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 19:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADFA910E793;
	Wed,  9 Oct 2024 17:20:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LW15nu0f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43EB789D8E;
 Wed,  9 Oct 2024 17:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728494443; x=1760030443;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KI9/jSSnwNkYx/b3bf6+IBb4aeB6RT00T8S6Jr6d64k=;
 b=LW15nu0fuyv7jPOpenK5h1kyZ8PDd9JbSqxOoAJgYEwq8pgjqiPLOZPG
 MbMtsAfXr73w3UsDm8mTof4DJQIUxNHno0fq6YEWNxGJlcWCOL/ESgLVe
 1vFnUjytNa93GGSFMoz5m3UbE+e/BtLluBS/YWZxn2jGw6uzvcUhuwJ21
 KGK4wAnN93jIi5C31YVuPI8gTJtLkmOVVbuw0SfXzRUICOp7zsaHB5RiH
 E6bV2gdA1zJY23Aexkl6SMAX0zRg2XYcpCEpKkVkBc89S7LKw9hVBdnJj
 ZkqLeQ9kJb0iUf1ZXsxxgRik23uBQ5RiPM4TMWMBHVA1xPABTh3PR9vlm w==;
X-CSE-ConnectionGUID: G/nyCDQCQgOQw7j32kU4Lw==
X-CSE-MsgGUID: ygt4iK/NR2ukHkTYzq3IKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27758310"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27758310"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 10:20:43 -0700
X-CSE-ConnectionGUID: Jdw4LyEjSpOB6Hi5FGrrnQ==
X-CSE-MsgGUID: GvD6OYwWT/GrjNKrNivYtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="81155354"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 10:20:41 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 10:20:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 10:20:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 10:20:40 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 10:20:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LHPK0LSWY3gJ9pltFIEyQ6poS2BJ6yLdd+6GBR/U6doCa6xjUHnXESFauPFGPQEKN1LVSwrE3Wgc3m4hXCYoxHAVj9S2NDxHSUxRZr8w3hSdFqvZ9CYzitxLav7yC51bEKJNLnpqNFZzc8aDBYTIjZljCd7hPLBJpfjJ71dpl7b1KtKZQWBg+SbQtkXQmgREVFySY0ZkopCIBbXQsUwgyRjwqG/poJRUrKS7dgBpaanFrR9bLoo81eG4XFP8oDtwBXAiBRe44GFo8AIcSwrbbfilTOLUFuh/jQ4a41uG9APxyfn6tIezxya8uE/2iMGiH/i9ieiwdvY8ut4lxc514g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vTFFafEvT87ck4VL9P1+9bL6ugX5rjMND/jwb3ECbds=;
 b=sANqtE7nxgkBItrsyHSgy0Sv0JL7aTBVgjD6c40QHJuxTtkU7Vo9l7wKdWfvhyHIN5H8wo80x7z1v74Bga+ue5Kh1KzVDnrebgGAxRwb/o+ms0jrVyH0Wlrs+M70K/e9gbEpn2ZdvbdcDRQUi/fq++izOcHLT1otkK+mkbApy/hhDqjNQAZbVekrvwHaHXFk8i+57wqs5iWHGqwDidDelBfe/MUN/Np7Q3KFwZjG/tkOpXCUUbrgt+GCUB5Q58hm3sGCuTF1inG/bIQL/frKw9fHr1g0kzVFj56xgD+JgXUa/+p7tNoDLFZ/O8KzL5zwgYGrt7t7RqVPcW2wVMwC1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM3PR11MB8683.namprd11.prod.outlook.com (2603:10b6:8:1ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Wed, 9 Oct
 2024 17:20:29 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 17:20:29 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 2/2] drm/xe/display: align framebuffers according to hw
 requirements
Thread-Topic: [PATCH 2/2] drm/xe/display: align framebuffers according to hw
 requirements
Thread-Index: AQHbGl45dZMDC0gZGEemVzdS4Gq97bJ+p/Eg
Date: Wed, 9 Oct 2024 17:20:29 +0000
Message-ID: <CH0PR11MB544477AA2228F217215197F3E57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241009151947.2240099-1-juhapekka.heikkila@gmail.com>
 <20241009151947.2240099-3-juhapekka.heikkila@gmail.com>
In-Reply-To: <20241009151947.2240099-3-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM3PR11MB8683:EE_
x-ms-office365-filtering-correlation-id: 3a40b0ac-a015-41e0-275e-08dce886ac65
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?qBeztCgn4uhXsst07RMtPVb1AbjaMF31hbqRB218o/iVUbbpXPyyTA7N3myq?=
 =?us-ascii?Q?Ws1gYhWbhb+i2atDgbG+kZWD5yE4uOodJlkiRF6DGfvQeh2UFZ6+qpuEI1gT?=
 =?us-ascii?Q?bfgh/IhxfYeUdgEJ+jZtJx+WxRQKyrQavJk3ebl6+AcvgOCxcw9aDOLU//yA?=
 =?us-ascii?Q?+UecA1D0s75ekUfSsp87/AhfOMqimKq8lYsSD5cHDrEF4oPLXY9cqiy/OMUD?=
 =?us-ascii?Q?21qVfQxdj/ZqTviJYuB6kh5Ag+CTR94rxv1Jhs3EB1SZAQszhdrKjON4MxAj?=
 =?us-ascii?Q?l6dUSzivwFV+cv2+GJ36dFXfw14tMEZBAFyXm6AFmxTyZwDlHYQy8d+bqC3P?=
 =?us-ascii?Q?0l8ylxPj9Q9IpjCNVYA480+i7cWWz+hEogIFB2hVNmiq+8msiyPBBOtTsF9o?=
 =?us-ascii?Q?KqRRqdqSkIYWjiPqBK5r9aXO82o/KWu7jCo5cmgH8+XCi/Y2YgHyui4c4xt9?=
 =?us-ascii?Q?9T7Yqm4IjA4MRq8vLztsIEFJXIVLEtvtholoYpzAGo2h1dEzRoonB2NUqucw?=
 =?us-ascii?Q?+y1WQmrGdP4vd+32lfYbLOz0v66UEaLhRPu8zdKBWSTjNF1dlB0unnEXfdf4?=
 =?us-ascii?Q?zaL0vZbRjX0gQW05hQ2VnCW4D7T7hHcaLWAG3Ymkhq79F9Nus8z+Hqha24hA?=
 =?us-ascii?Q?afKNRkoQufqSu7mCZT/Jj21YSxsC+JzaIOkfeYL3UF5D9DSm0JHHfCNIGdp+?=
 =?us-ascii?Q?0OQbLJCXHsNKclsokO9u2WxOfKntPEy3XHi4d9aYhcEy4mhermL7wBn0JDC7?=
 =?us-ascii?Q?GIN/BILSdlX2MAp1HlFa9EMKA+LmS9JHvOwoKuSawFA6JQF+ZpinYUS8MWhE?=
 =?us-ascii?Q?oDTXWGp02ibqMz1sousbi8/jVwjxnSz63JpkAhWtSWE0g7fOsjAWxtWKL2pV?=
 =?us-ascii?Q?s1UhejgpM6RQyH7mbrv1UW8iw1oSjHNoAVYnYNJlyzUAg9u93v+b/8JvXlff?=
 =?us-ascii?Q?K68olKip3I3ec/BhftzjdcAxgodOvHuvcfIuFjotkIKGFmPN24admN3tgyd2?=
 =?us-ascii?Q?q1Xu8DjPZNjDS4+In6ScvE/DWanID6s5QEtvXWt+jbYW6RgB//THumB8fDku?=
 =?us-ascii?Q?arJxJBZNx5Kf1wR6047JvCEPE0M0qavel+9SkX5oRn6PYvmHYvLm3mqfROK7?=
 =?us-ascii?Q?FUusxMO90kU7hKgNvJlmNai9zM4S7wlkC3DkhMGIdqcqAnB7Oj8eJFacNvMX?=
 =?us-ascii?Q?N9LWJNuYvjhhKIMf2PovYo8rgHVMs28zbPtdu/6tZbvTyk/T53stBhqnYuh8?=
 =?us-ascii?Q?U0qvZKgJxw7wxtils6AencawAujjHSGjOc5BlKFOsTC9Yp+5fzx/3hpIlH1R?=
 =?us-ascii?Q?znfSouybA93TIj5vxnO9feoyxxWhcY1K8asql+ag4khfHQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qC+e97h9kyeNMbnNvYVtanTxpcpK7Kxad8YHXusqCnegLxnSdQ0YvuZuynbF?=
 =?us-ascii?Q?uoGGPo3fyIMs+N9awBi51C5fTDztZ9rjQ+5ad195LYkT/1KwNDIqcNu7iTmx?=
 =?us-ascii?Q?wxw4Umk5l2Rsi3u8QdajwXvG4KfAlP43A6IA1ER2KGlO7RYHEKDqIi6h/1Bi?=
 =?us-ascii?Q?aY3VRR4KY1uppqM9rJi7rCvqJhZu/axYe9TQEqjMUafAgVyp35fLtZJ66YLq?=
 =?us-ascii?Q?1pmRhRBej6KZ1KxZJe6R+kaM9oKBGXVC/PC5HxYPGYTTga++EgbSNDl8l83b?=
 =?us-ascii?Q?gy7iyimCSNbwV8jZePiKNM+nRXrpOM1K3R7Oc7vmEMaYQUzECKVokRTamOd8?=
 =?us-ascii?Q?GERJO8/o58xm8yeH1SJ0JA2xDqiB6/Agq0kEgfStlZbwcR2KrJORzo+xjK/9?=
 =?us-ascii?Q?2H741lhpq6f189VdMd8rf/cgkrDk6ecm8+JVyfb/NA9DAi/eqIa4jv0Ms183?=
 =?us-ascii?Q?Bp/YEKJ5TpxDDTMlQ0MQyxy6Hh+MQI8seH1WrglhZIxmxDsSzjKJ8aZ65kV0?=
 =?us-ascii?Q?FB1GwKn4BLtbLQ2lbo5NQ1Unkl2623E8rTuuCFpu69ckKWFwPayVISVXxk/C?=
 =?us-ascii?Q?zL0eE5VOpmOHouQP28UqJqH8lCocITgsRFuf9RrkEUitSJCMfsBzYjB3S9oi?=
 =?us-ascii?Q?f9ZJr3iSk/rYMEHp+OW/97y+v7qUoeptHyDO2A5CBkpdQ925HZ9/vZHfFUA/?=
 =?us-ascii?Q?kU3vwnv0o+9Wqodu0yn14v7nQtT/UH+0SJgye8m4lRailAAtWO+l7j9jWkEa?=
 =?us-ascii?Q?wtWqaJln+ZynaYF3IEXV0N2L0GcAXDKtDkyEgLvgvRM9fIxseamq83iEjBfJ?=
 =?us-ascii?Q?cT5V3XVd0uJNLYVjpOI57GVzer8sr2IDOGei1LWmRD97I+dndLporqEFPH6C?=
 =?us-ascii?Q?zZIOBeJwQLAVzmDd1/EAsEvBzjnuiKU5O4231OAqfq5RZlVVVxlGh2W0uagI?=
 =?us-ascii?Q?GFG/E2tATNuRHAzxxP78Bxx+kR6VJFZ8CMH52cUYxE+oTYpGAOjKvRzFZrRV?=
 =?us-ascii?Q?1BS9BMZ+ir/EFrxNNviFNkSBYRl7Tu4kQE8wxnAnyzRAN/sQU6g+K5/V1WF1?=
 =?us-ascii?Q?iILUjfUV9FInM/FSYYschmHfC6C4gEnYXhjd5sF6vxz+mM5bSIwvIbCAnHHw?=
 =?us-ascii?Q?VkUXccmtPv16k6QHSvy5B/QDfaX1JJrWICIjy6TkHFOwkLb14Ee+bCgbdYmZ?=
 =?us-ascii?Q?JhvepWmvvdQRbivOI1SRO/slhu+k5220r2CsWwuz8rf/bLEKGvANJqXAE/wQ?=
 =?us-ascii?Q?NickBU/bP7FXCHJcaOsMHu1YetMA0t3jg10Gq7veDu8gQ9MESpEQVgI0PzDR?=
 =?us-ascii?Q?zDNR7ss2R72udtKmiNjtQj7N0O5CfFyH+YGKDXLow2vPpAAZvByQ6x/AesV9?=
 =?us-ascii?Q?iWsKn5ut5ffxkO1Gi3fiqq9+o0fzRR5U2iKgfrsYIjjQBHa/f0DIryoBlSam?=
 =?us-ascii?Q?DDMVLfbnuQUU72XoFacjc2EBWzFIAxqdySGdYfKvJ6rBBqXTYkrzgKJn7c5A?=
 =?us-ascii?Q?uVGN7kH6ANbUqmXDRQZTizsqXtqxrqh/4M8ULybo4RzHMoBLq9i1iCz92Lyb?=
 =?us-ascii?Q?bR2Y8y6fzLPmJ5OcAPokguJlInIsyhy5TqPck3/XApRDyCtG7XHpxuB6LkHM?=
 =?us-ascii?Q?QQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a40b0ac-a015-41e0-275e-08dce886ac65
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 17:20:29.5287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4ogQT6kUCt11SHtV+ztkhJynVCn4vRWSo0w7uR2apPXezY5Ve41lIlq4wzT8mvZSWveA1xL3g/Dx2Sz9pNuuSe18HgYD0sCydgMPWDUFDHA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8683
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
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Juha=
-Pekka Heikkila
Sent: Wednesday, October 9, 2024 8:20 AM
To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 2/2] drm/xe/display: align framebuffers according to hw req=
uirements
>=20
> Align framebuffers in memory according to hw requirements instead of
> default page size alignment.
>=20
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 57 ++++++++++++++++----------
>  1 file changed, 35 insertions(+), 22 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 79dbbbe03c7f..761510ae0690 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -79,7 +79,8 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *=
map, u32 *dpt_ofs,
> =20
>  static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
>  			       const struct i915_gtt_view *view,
> -			       struct i915_vma *vma)
> +			       struct i915_vma *vma,
> +			       u64 physical_alignment)
>  {
>  	struct xe_device *xe =3D to_xe_device(fb->base.dev);
>  	struct xe_tile *tile0 =3D xe_device_get_root_tile(xe);
> @@ -99,23 +100,29 @@ static int __xe_pin_fb_vma_dpt(const struct intel_fr=
amebuffer *fb,
>  				 XE_PAGE_SIZE);
> =20
>  	if (IS_DGFX(xe))
> -		dpt =3D xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
> -					   ttm_bo_type_kernel,
> -					   XE_BO_FLAG_VRAM0 |
> -					   XE_BO_FLAG_GGTT |
> -					   XE_BO_FLAG_PAGETABLE);
> +		dpt =3D xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
> +						      dpt_size, ~0ull,
> +						      ttm_bo_type_kernel,
> +						      XE_BO_FLAG_VRAM0 |
> +						      XE_BO_FLAG_GGTT |
> +						      XE_BO_FLAG_PAGETABLE,
> +						      physical_alignment);
>  	else
> -		dpt =3D xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
> -					   ttm_bo_type_kernel,
> -					   XE_BO_FLAG_STOLEN |
> -					   XE_BO_FLAG_GGTT |
> -					   XE_BO_FLAG_PAGETABLE);
> +		dpt =3D xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
> +						      dpt_size,  ~0ull,
> +						      ttm_bo_type_kernel,
> +						      XE_BO_FLAG_STOLEN |
> +						      XE_BO_FLAG_GGTT |
> +						      XE_BO_FLAG_PAGETABLE,
> +						      physical_alignment);
>  	if (IS_ERR(dpt))
> -		dpt =3D xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
> -					   ttm_bo_type_kernel,
> -					   XE_BO_FLAG_SYSTEM |
> -					   XE_BO_FLAG_GGTT |
> -					   XE_BO_FLAG_PAGETABLE);
> +		dpt =3D xe_bo_create_pin_map_at_aligned(xe, tile0, NULL,
> +						      dpt_size,  ~0ull,
> +						      ttm_bo_type_kernel,
> +						      XE_BO_FLAG_SYSTEM |
> +						      XE_BO_FLAG_GGTT |
> +						      XE_BO_FLAG_PAGETABLE,
> +						      physical_alignment);
>  	if (IS_ERR(dpt))
>  		return PTR_ERR(dpt);
> =20
> @@ -184,7 +191,8 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *=
ggtt, u32 *ggtt_ofs, u32 bo
> =20
>  static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
>  				const struct i915_gtt_view *view,
> -				struct i915_vma *vma)
> +				struct i915_vma *vma,
> +				u64 physical_alignment)
>  {
>  	struct drm_gem_object *obj =3D intel_fb_bo(&fb->base);
>  	struct xe_bo *bo =3D gem_to_xe_bo(obj);
> @@ -266,7 +274,8 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_fr=
amebuffer *fb,
>  }
> =20
>  static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *=
fb,
> -					const struct i915_gtt_view *view)
> +					const struct i915_gtt_view *view,
> +					u64 physical_alignment)
>  {
>  	struct drm_device *dev =3D fb->base.dev;
>  	struct xe_device *xe =3D to_xe_device(dev);
> @@ -315,9 +324,9 @@ static struct i915_vma *__xe_pin_fb_vma(const struct =
intel_framebuffer *fb,
> =20
>  	vma->bo =3D bo;
>  	if (intel_fb_uses_dpt(&fb->base))
> -		ret =3D __xe_pin_fb_vma_dpt(fb, view, vma);
> +		ret =3D __xe_pin_fb_vma_dpt(fb, view, vma, physical_alignment);
>  	else
> -		ret =3D __xe_pin_fb_vma_ggtt(fb, view, vma);
> +		ret =3D __xe_pin_fb_vma_ggtt(fb, view, vma,  physical_alignment);
>  	if (ret)
>  		goto err_unpin;
> =20
> @@ -358,7 +367,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb=
,
>  {
>  	*out_flags =3D 0;
> =20
> -	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view);
> +	return __xe_pin_fb_vma(to_intel_framebuffer(fb), view, phys_alignment);
>  }
> =20
>  void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags)
> @@ -372,11 +381,15 @@ int intel_plane_pin_fb(struct intel_plane_state *pl=
ane_state)
>  	struct drm_gem_object *obj =3D intel_fb_bo(fb);
>  	struct xe_bo *bo =3D gem_to_xe_bo(obj);
>  	struct i915_vma *vma;
> +	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	u64 phys_alignment =3D plane->min_alignment(plane, fb, 0);

It seems like this can never return an error value, so:

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> =20
>  	/* We reject creating !SCANOUT fb's, so this is weird.. */
>  	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_SCANOUT));
> =20
> -	vma =3D __xe_pin_fb_vma(to_intel_framebuffer(fb), &plane_state->view.gt=
t);
> +	vma =3D __xe_pin_fb_vma(intel_fb, &plane_state->view.gtt, phys_alignmen=
t);
> +
>  	if (IS_ERR(vma))
>  		return PTR_ERR(vma);
> =20
> --=20
> 2.45.2
>=20
>=20
