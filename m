Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D34E986F5C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 10:53:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C19810EB19;
	Thu, 26 Sep 2024 08:53:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UwXvtDAr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8767410EB19
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 08:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727340831; x=1758876831;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qA604uSWV5W6BFWep+rQlLm1la09/isIwoKmQLGBo48=;
 b=UwXvtDArsLryneylBvCi3yhBmrqmXfceyzriwRTEZFztkicwgbPwZ6xW
 0C4k1AhBNZcfC8r+M301NVbZXIdLhQCEwokZi2iUozDmK9Aa/JlGiuJEM
 xmTy91xN9ZrpCkJLPELYhvK+DQtN9/Aq5O2I2qhkDECVVfqX+EYq3AS9/
 ndM2VRNxrnycEWmp3BYcHNJj+p8sXpIS8FGK0GIUqQGgmJXMsL781s2HN
 vH3TT6z4E1RemxRgSOcomIJh4xLUcArLar5xC5W4egcDeh987jgK0YNTc
 EPDEoOdYcybg6Z7bZBo8f0YCZ7nwyTPVmuGCxlOX3PG/mipX9ZyueXw8d Q==;
X-CSE-ConnectionGUID: 7Acg0Y2pSgi0bpDMdrQr1w==
X-CSE-MsgGUID: jcXdJYzBQteuYPzL2F3Y7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26236669"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="26236669"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 01:53:51 -0700
X-CSE-ConnectionGUID: NsFb/YqwR9S3v/6DcC0/3A==
X-CSE-MsgGUID: 3Gv4ypmTSbWraMJvUDmDKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72169303"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 01:53:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 01:53:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 01:53:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 01:53:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 01:53:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wWvVv03MhJ4Fumrhsu/+Chgobhc85hJo0Fnq4lG6fhhJztevh4ntFaIQn9Lz4xLrnItrPmCUun9Q8B5AVi/aB1MwtrAYMDdP/7tBW9OOaC4PTXSc5gjPAbYyCt06kuBBaksT2Xg/wObLfjaWEG5IcVTt2O7b+hOT+aTnOMb3vdOfoMf0tCQt9iK9ueQwB8Jnx/HhoPcvrloTdJ+/cLI26WDPizbKw0G+jNVUpiSYg4XZdpNK3hLBwkYJO6wTc5mgupsxyZXPYQe6kgdnrgpgs1rbbNVeR+rZzPSV6+KenuZdsOkcvIoPmXwB+39aFFhFQON7q3n7WMbRHsmSk7riXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dg3iQBC+CoM9Ys3aUoqAx7B2W+MOgHGU3xrJ2GVdrRE=;
 b=E+K43yItHmjvaHnsLHVsf082olR0+LlVl86zY8Cet731OHXA4wFE+IUHmnsiedmfdKhF848ndC9+vOTp497m0D2t9CfpgDzMi1gFr3az5Ch7JEcr/swtx09A7uBZADM+4GWWM+4G/9WpE/PNAG5s9mJP9Na8ub10O9uB2CbdMXpWJ4sNirsJVA2GkhVpWhxVuJeCbmAUC6wPnbtLQcmfqYNxXlusxsnnkxsS6Dg0RDdPmDgAOIZLaMWqdMPmFQfjZxzm5jGe3Pp+ktWJF5fzkw7jfuRQzphc0DReO/pk4BTh4b/qFvKh8eKyG+OdNNNt3QwCBH/2L3nQJX33P2TuSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB8011.namprd11.prod.outlook.com (2603:10b6:510:24a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.26; Thu, 26 Sep
 2024 08:53:42 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Thu, 26 Sep 2024
 08:53:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 3/5] drm/i915/dp: Return int from
 dsc_max/min_src_input_bpc helpers
Thread-Topic: [PATCH 3/5] drm/i915/dp: Return int from
 dsc_max/min_src_input_bpc helpers
Thread-Index: AQHaLaY7432hSrUE1UKomLRMDyPtU7Jrh5QA
Date: Thu, 26 Sep 2024 08:53:41 +0000
Message-ID: <SN7PR11MB6750A73F30041A652C699AE7E36A2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231213091632.431557-1-ankit.k.nautiyal@intel.com>
 <20231213091632.431557-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231213091632.431557-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB8011:EE_
x-ms-office365-filtering-correlation-id: cf5eada4-47d0-4244-1973-08dcde08b8bd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?IxdgkiB8S7ReY+eeb0AZ4fEFRrsJaJATk0l/zqgGTStHwdzlHTtcmjaKekvK?=
 =?us-ascii?Q?YhXgYjcgQo8nbU1hSN6M2pDFYyWNT8ZAOVcRei0TAIvf57+i7MnkupVjbx2n?=
 =?us-ascii?Q?nUQuBv6FbEHx25zXuGHS14HGRzWQAf2GfPFOfNnFoWHuHxYRsGUJbYwicwq9?=
 =?us-ascii?Q?3RwtnBLobPIDM/URc4Dl71I8A6PtQ9fs7JVwLjPM/kdBOl1q3SxjZjy2NsE8?=
 =?us-ascii?Q?GkG5iFpQx6zF4+0+msklotz2URvuGDQs/Fvs8Bsf/IQlmpCtoaI0hbEIF5f0?=
 =?us-ascii?Q?fabRwe/PauiaQAEMYfCs2T1ReqjgallGHWdpMVxffCclT3RSJ8Bd7zF+zKwH?=
 =?us-ascii?Q?KiUrmehqmRA7oTSAjdEZdH0e88K/SDGbkgCMreTlSdElPp691a1ywUuRAS6u?=
 =?us-ascii?Q?w19BuomCAIUI0K6FyPDQQVkhYhYqONMCSRPazJACEsVGuiGIWr26W4JTn0CB?=
 =?us-ascii?Q?rn9nYiCvcaLpa7Vm3JLU8+5QG+C1gtUwtmjy47qJJSDIXMtKb0DKrMjDKO5u?=
 =?us-ascii?Q?5eLxJdMusUUSN46eLnUfA9D7B2Wi8PssddTG03YQCyuxXmI7ZW3sBFP5cRKC?=
 =?us-ascii?Q?d3qwe86eFO9A3ux1SAwJnF8zra9vGNAmAqrZUbrNWey/uLLwvSOs97HFBsk9?=
 =?us-ascii?Q?Q5ax+CXgI3Ilj4k8ETN9yYbITtW+NKNn1AAvOF90zfyUuWzK6wv4e3XW5MOr?=
 =?us-ascii?Q?rtKN08ai7kCfRr4nZxHcPvOqb10wmk9d4PprAeKB6ehDRGf1+tAXe+ocal8r?=
 =?us-ascii?Q?YGlLIernNrHTXqh67Jefwv117dYVQw/mQZfEoYY9MVNW3k2+BGZWnnavlQYl?=
 =?us-ascii?Q?3e0+ufG9XLWoueed+i4jE4NVDHTnuuf0QS7nhw8WeKuJWny0eASJ3rHOX9Wg?=
 =?us-ascii?Q?MVqGhpKYghHomi34c6kiwTzQr/KSwImODhxCRcFXBU/r26LOJDlYirwfrZLR?=
 =?us-ascii?Q?9Ci7wGc5tuoLMtuE+Na+BqnQrJDJ+73p8Yk5Bw1rp4LyPUz6QLxoyW0jD4sy?=
 =?us-ascii?Q?zTquQS/xgUKyeA5vkGRRratz6Mj8Q01NlAb6Enmprge3KWg0Jj+kDQoSFAUY?=
 =?us-ascii?Q?TEmjc2R3yUebW9PS0rkj5dJRaquMX7AXGBh7YOB427lVNd4QOEhQ+2BC4/xb?=
 =?us-ascii?Q?pKL5tU/FyV50S3CR6oxRBbvZIJ7ZM8MKaA2aCJAQxcA41Vhz4wnyaoJMSAWD?=
 =?us-ascii?Q?ofQErOF06J64k3wrXFMx5rycpjalck1EmCAcIjPBOCIPhNBFX2P/JA72XbMn?=
 =?us-ascii?Q?a1X4T2YMVIg6xDOxiFR7HEzwE08mya6pA28lJ3X108AKxNrcKG3VVxc2GJdv?=
 =?us-ascii?Q?F5+d5uZQNOMcuBAmKyxKRjqN3W+z6097wqhu2EKRApRn5Re/6WpVzjz8qiHS?=
 =?us-ascii?Q?LBq/QdVjb5qynQ3DCMuCgvkWgSysKKX2Jb1ZFt5zNrEBgD/zzA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3fs5IMbHe2KtnE7wqmRdIMwJsDG6SrBQagybVpih3Tsl0Cle/8V5tyb4eBeC?=
 =?us-ascii?Q?sNb52wmHk8otVfxZ7gy8UEsVrEksrEBdvkrvlJHXkG1Hl3fDKk2+5rARloDf?=
 =?us-ascii?Q?53Q7i9H/0AhzW7mqrbiFNHbbtkKpH54DjkHFRmtbGYb9NmkJy5oAc6oANzG8?=
 =?us-ascii?Q?Aa6GFkCA2KLkNY6t6GS0UYzCMS/gXn9GlOGEIqE1uBuwO6vLTTxrhnP+La/9?=
 =?us-ascii?Q?ECoTwoENTaGzT4wSdsTlelW+5RKs0TDcbI0iGiEDiShbwNIVerL5GhxIznD1?=
 =?us-ascii?Q?928mVXJhJWHhsHUuRBRrMp+nTWyC+NVYgrneKpHt3MvShEukEQ2jMazpZKiV?=
 =?us-ascii?Q?x8BlnI2Gr7VZG0esvB+rku0I2qKVAsFJPzLdwUhBvOfXOYcru1qhC5ANjocD?=
 =?us-ascii?Q?8FI/7wcJLi+H8Cugti9TiltagW3HMxb5ljTBM1WVkQl6qQfkGAc+WqB3TxZt?=
 =?us-ascii?Q?qS1vNO0dg+oJGowLMOmvcmMs43M8Hk/cbAy02n8+emOKzehi/3EBj+YAmuPU?=
 =?us-ascii?Q?HZd8EX3zNW6NJpOlgRMa5n7O1M5MC0Tbk5ybnpwiwht+TVNdwNIKaCue18aZ?=
 =?us-ascii?Q?vJNofBgwvwR+TTW1qFpgHQFh/yWwDHI1C9G11v2dHr6TrVgnJ+hiiVTCV68G?=
 =?us-ascii?Q?4nUKn2MQQZ7Th24oTb9HhUXV8uggjIv2lVxOy/xU5nN6pYm2HcVT8aINDJk/?=
 =?us-ascii?Q?0aTsWCdp9XYcAWuWJ+1uutsclnmdy6OD9V+f98oVhs20R2087OMspjjTUaZi?=
 =?us-ascii?Q?p+R1Qoc6mQvhU8uW8b9WOVtmfUhTUY76Ga2A0YSo8RCQJ9adUz1J0vSC0zIu?=
 =?us-ascii?Q?nPOyuaDVjmLjJZVD0vHrqspp3aVQniT47qNmkVpSx0ORgralxOGjXFpE/fIG?=
 =?us-ascii?Q?ZLV45zF/PEYvFLxOvxZ846a0tGERdqZSpuBTINPI770gpGekj6O5F39LPBUU?=
 =?us-ascii?Q?gQ0pRGDoKwZ4J/1xsjVJBqkqdmN4kBQEszkoHbEwfdgyQK9u0XObTdHNIXNa?=
 =?us-ascii?Q?vmRX89CC9JqrfQbILPCNamsYUErJUEuCU6vBFD2Dq7rjSfyR0Omi2/9lqNL8?=
 =?us-ascii?Q?XpPJlCVdVytam94VftJQV++0pp8FsfEI5zOa3llgIQEoU51bMgIM8WLon5a/?=
 =?us-ascii?Q?6oRU/h0bSx1wdoXJueqJaDCNYYo+XU+zfoxu6+ap7wIX+LG1c8GakDRh7X1f?=
 =?us-ascii?Q?9NkYc3sOtzZIwLwxOuM7Jhbhlw8S7Z+FwuYWxwYeVq2PZ9TEi/ebllV57THR?=
 =?us-ascii?Q?wcLJMp4/ff2ss0evAhqMN/UPLg+CH44c9JIAFJbS1cJPEe25JAPk2w/WxHVw?=
 =?us-ascii?Q?P8xXs4sD5seSHUJrJXUD7YWj7m+YSUZW9J1vwOtq1WcR5/zp11cuQgwuY+mw?=
 =?us-ascii?Q?apKpZ9qourKP82I9wmLM5MfHB+leWUNqAbroHqmffNM6Clo0VnaFGrNNqlgc?=
 =?us-ascii?Q?L9QdY8cl+G0s/oidN3V16T7sRv3NDnUMqwbxAhn+gcqQq+INp9LWdqI4gIMx?=
 =?us-ascii?Q?QCitvKKgP3D1ikvcR/R+qepO9skbrmSgwBmAyXg8kuWr6KKbkwGYbIhTQp0H?=
 =?us-ascii?Q?m34QJVVn4ngP/Fo1nGW7hNS1I/s2aMEJnyA89p/+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf5eada4-47d0-4244-1973-08dcde08b8bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2024 08:53:42.0097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K4WP9OryXQVgktSBWV63ZqcsDNuPyBDQIHh+L98pztzpgJA+pw1ccGYSTPBho/KHtnnqYBVqEHA0Il6+ZOyRLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8011
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Wednesday, December 13, 2023 2:47 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 3/5] drm/i915/dp: Return int from
> dsc_max/min_src_input_bpc helpers
>=20
> Use ints for dsc_max/min_bpc instead of u8 in dsc_max/min_src_input_bpc
> helpers and their callers.
> This will also help replace min_t/max_t macros with min/max ones.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index b2e767a87476..1f95ba9cf5fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1627,7 +1627,7 @@ intel_dp_compute_link_config_wide(struct
> intel_dp *intel_dp,  }
>=20
>  static
> -u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
> +int intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
>  {
>  	if (!HAS_DSC(i915))
>  		return 0;
> @@ -1645,14 +1645,14 @@ int intel_dp_dsc_compute_max_bpp(const
> struct intel_connector *connector,
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	int i, num_bpc;
>  	u8 dsc_bpc[3] =3D {};
> -	u8 dsc_max_bpc;
> +	int dsc_max_bpc;
>=20
>  	dsc_max_bpc =3D intel_dp_dsc_max_src_input_bpc(i915);
>=20
>  	if (!dsc_max_bpc)
>  		return dsc_max_bpc;
>=20
> -	dsc_max_bpc =3D min_t(u8, dsc_max_bpc, max_req_bpc);
> +	dsc_max_bpc =3D min(dsc_max_bpc, max_req_bpc);
>=20
>  	num_bpc =3D drm_dp_dsc_sink_supported_input_bpcs(connector-
> >dp.dsc_dpcd,
>  						       dsc_bpc);
> @@ -2027,7 +2027,7 @@ static int dsc_compute_compressed_bpp(struct
> intel_dp *intel_dp,  }
>=20
>  static
> -u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
> +int intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)
>  {
>  	/* Min DSC Input BPC for ICL+ is 8 */
>  	return HAS_DSC(i915) ? 8 : 0;
> @@ -2039,7 +2039,7 @@ bool is_dsc_pipe_bpp_sufficient(struct
> drm_i915_private *i915,
>  				struct link_config_limits *limits,
>  				int pipe_bpp)
>  {
> -	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp,
> dsc_min_pipe_bpp;
> +	int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp,
> dsc_min_pipe_bpp;
>=20
>  	dsc_max_bpc =3D min(intel_dp_dsc_max_src_input_bpc(i915),
> conn_state->max_requested_bpc);
>  	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(i915);
> @@ -2084,9 +2084,9 @@ static int intel_dp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	const struct intel_connector *connector =3D
>  		to_intel_connector(conn_state->connector);
> -	u8 max_req_bpc =3D conn_state->max_requested_bpc;
> -	u8 dsc_max_bpc, dsc_max_bpp;
> -	u8 dsc_min_bpc, dsc_min_bpp;
> +	int max_req_bpc =3D conn_state->max_requested_bpc;
> +	int dsc_max_bpc, dsc_max_bpp;
> +	int dsc_min_bpc, dsc_min_bpp;
>  	u8 dsc_bpc[3] =3D {};
>  	int forced_bpp, pipe_bpp;
>  	int num_bpc, i, ret;
> @@ -2106,7 +2106,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>  	if (!dsc_max_bpc)
>  		return -EINVAL;
>=20
> -	dsc_max_bpc =3D min_t(u8, dsc_max_bpc, max_req_bpc);
> +	dsc_max_bpc =3D min(dsc_max_bpc, max_req_bpc);
>  	dsc_max_bpp =3D min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>=20
>  	dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(i915);
> --
> 2.40.1

