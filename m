Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAA0AECCF2
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Jun 2025 15:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 645C510E00A;
	Sun, 29 Jun 2025 13:39:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TAKOFRJV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6721D10E00A;
 Sun, 29 Jun 2025 13:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751204396; x=1782740396;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=H2nKBbj7t4wx13PiMUhNAhRwovR3TIIrlkBHCy95EeE=;
 b=TAKOFRJV6kDvgy/ieuWYaA1KEf016Qixe9WNel1CpvkvveK0ztUjjGIz
 q0O+05kXPG6hjdTAx/aRcK2tW0NqcYB4AqbAVfVpaJdxZqZAfe8rJHC0d
 IYVs/U1wv0P+NrrCs+BPff7wK+qn31mPaNnkiYZsMfnnL0I+dFNQLqXHK
 vlqj1xFVV6S8bxTVWry9hg8LWDymwOlAFK7LlFd5b5BH6z0dknQtgbKLx
 zwlN9aWtcu2rCsBlu0to86XoTv15iUhsPSCGbGPxaxHLkDGBhN4EMyeLP
 Lpt9uKrFAv9jcVnzjV/JZd13rFuLyAAUen9VR4KhRWCSh0iqffMOv2w7W g==;
X-CSE-ConnectionGUID: AmyPmCrMTsWPe5YNPwRCcw==
X-CSE-MsgGUID: E413iudhRSiHM/GLKOQHdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11479"; a="57123908"
X-IronPort-AV: E=Sophos;i="6.16,275,1744095600"; d="scan'208";a="57123908"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2025 06:39:53 -0700
X-CSE-ConnectionGUID: ohubn81fRX2tB/FjcxfuCw==
X-CSE-MsgGUID: 5pBsYelwTyiQAprTElexQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,275,1744095600"; d="scan'208";a="184143887"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2025 06:39:54 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 29 Jun 2025 06:39:53 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Sun, 29 Jun 2025 06:39:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.42)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 29 Jun 2025 06:39:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OHY/CtM+JBeArhijOwshOO6LF6vDLDFWSh4YoXGYOgEdLwAK6FAXOiSvkGUBDl01FHn1xwEB74XKXUbiHbOc/dwUIqHkuHABtNOR7sYmmF9Rxb0bHsRsZMcvi15wZsuUoCwSiCmXxmkB28kAw0TiXXuggf4p9uVxCWeNNIoLpd1HGsl5wgNJRe8wzQAawf4/MhgNfjkFiIxfvenkexqK613v2kPluOk8+hK0dzqsSFph2Up0gL0MQ0xbIJCkxLek2LfXOfyBJaL3I1CyfRJaxVkjkIogC8VTBNdO7y23jfwKOpOCRYbgpU7dSZ0ioZYtABDlaXH7St06//btBR7aYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mzbD/DRFNXbIppdDRs3pshM5v7b5OZ2H3SXEzXE5OTE=;
 b=DrmtkpHnu+6/8o55IneJI/BE0MeZF2q4ITEBgK27n+tyRLDOXuik0z4vHuWWrkN6ic5T5ncPrBevTxmPzsyvQIr4gpm+YGL3/zLRrYR+H7QMkEYv311nPWl09ENjNCrGgyekYmzm5ItN4dufHlSmMBU7ghCXKIk0B+0lCpYadac/Ewr0wr8Q2uvN2H49lHa6jA/FpG8W3OJNfotIwYQC/2YM0ghwX1QaeImOG3I48RHxLJnPqMZublO3njPcYp9qvDQ57wCXY88cHvd+4zsGuufrupQSrFitjWKDkF6oL+75mJPnO/xT6nL/nGvqmW+8fY3jUYfJyXpBiLVjC6rDCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB6267.namprd11.prod.outlook.com
 (2603:10b6:208:3e5::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.21; Sun, 29 Jun
 2025 13:39:51 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::9c2a:ba60:c5fe:6a64%5]) with mapi id 15.20.8857.026; Sun, 29 Jun 2025
 13:39:51 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 02/18] drm/i915/hdcp: use generic read_poll_timeout()
 instead of __wait_for()
Thread-Topic: [PATCH 02/18] drm/i915/hdcp: use generic read_poll_timeout()
 instead of __wait_for()
Thread-Index: AQHb51fL5tuDgqpI+0e8NmBSNXr8BbQaJ6CQ
Date: Sun, 29 Jun 2025 13:39:51 +0000
Message-ID: <DM3PPF208195D8DFB844DCD1F49ABB36BD8E347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
 <657af1a1c438a2bf97098263f5454c92112c8109.1751023767.git.jani.nikula@intel.com>
In-Reply-To: <657af1a1c438a2bf97098263f5454c92112c8109.1751023767.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB6267:EE_
x-ms-office365-filtering-correlation-id: 55bd6d66-294f-4ee1-b819-08ddb7126c85
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Qxbalxe6l+YGmL78h4pir6phVfmaFvczjrDC92GrOAdEk2ZT5KsfnGwD0XQg?=
 =?us-ascii?Q?oPHPUmpDVpN14XMHz84V8jaXYr4X2qk0COj6viznM8dqxa7YEB6XkJf4dMOE?=
 =?us-ascii?Q?rVZ6C0zcmGK2BtTLUyNELTOpb2wVfBLLxadCEbhv17Si0GnxUg1k1O/MzoSy?=
 =?us-ascii?Q?i6pdrgd5p0YPs4k/xWOsSdHG6zEzZi4EJ6dWayAD4Si0MrC2toNsggLRJSzf?=
 =?us-ascii?Q?zwfgaCSbjtnLQaGqxck7B0IyK33yVLXf7bElBJfSJjG9M9ArKUUcKIZa6uRm?=
 =?us-ascii?Q?V0qhXHTGMYGDd5J1thiBntmKMQmJcEawNxcEKVHl+cJrnlLrqKrBW3/MTzZw?=
 =?us-ascii?Q?E3yxpgjClSOm0vLQxM4fBNtd9y0XaunOYcTJsEkhdLLr1X74DQM5xa0zcgPB?=
 =?us-ascii?Q?hVv3wOYDJXEYDop15MEod/GvbJKRGjnUoqzKQQyH5mqXivdYwIREOJ4YsC7X?=
 =?us-ascii?Q?TmGxY8Nh+91CR6fbZ2YirWlN0VJ99Ml0osln+deJeIjg4nDHeQfqGpdTUd8m?=
 =?us-ascii?Q?d6u3g9ILOx+pzw8Vxepd2NZNueYAR2/vx3+PipsPTZ/A9OhGlXE/lrYrBpzM?=
 =?us-ascii?Q?pQ53bqas9wJ1qVp3Nz4CNeU/XXSKrl8SaHh521qvdGryzrbJB02id93Qwl76?=
 =?us-ascii?Q?ucAoXyC/M341Ewxut9CA0VxpLnVhT5hV4wCiVkDXUb07hU6ZwsXsfuq3Qg5a?=
 =?us-ascii?Q?UB7XuCqkIGyXJ1QMDV6d7mHm6u7wnOSpy9N2sndHmQmFtqdxXBs74lfC28IP?=
 =?us-ascii?Q?Tb4crmnN0+qh4a8HomXq1nCR3k7iqUQS0CpCnWZ0PjNZEYNzsuzLYAxYzkfE?=
 =?us-ascii?Q?Tj+Qnh3bDQH47aeSG1JFt1BnH+CodRO3I5WiSQ4UMN4WrkpX6l+eFKyGpzQA?=
 =?us-ascii?Q?yapSLZqscuhwaD1o+BqvVRLLRRVMhKNosGi4/O2GJYQWvnXOkmJ5hRxUN+W/?=
 =?us-ascii?Q?3ZV92vLuGuw4cN1Z3vV051ClZ0RN/nI81ulVfzIiYKlAXL82APYmBzCDX8v+?=
 =?us-ascii?Q?20hIokOd6KzUFqvUGT4zjXN3ycWN0eH22klhJEk6cAnNcxxaoPfwq1WW6GZr?=
 =?us-ascii?Q?A1oO3HiahsLRP7/DMRPzNaS1MkXIS4XgeOjDjJx8rapHnfmlt3Hx8R2Rlc3T?=
 =?us-ascii?Q?uWCP645Yp6X3WTe8zVDY74nAyjD+Ul6uU1ymCtLD+4lKiYVAJvj81KbyFgUF?=
 =?us-ascii?Q?eKoUPrIHIljw7lb/L53aGGX26yGfz5RvJWkSRMeeCKOE2BO1tdnsEksExGdT?=
 =?us-ascii?Q?B3IxFsvi7HYUsVcpoZLyaPuk78HF7rmJvpyrpOzdnir4C/rcSrnqlursaI29?=
 =?us-ascii?Q?BT7eUM8EWHgXFDbzuORQLCwHJqn2lvDW0TCvaijNPmJ9lIs4hz7lcG6cZt2b?=
 =?us-ascii?Q?px3jiY+50kApkqNxhg7uNk5VgEZef9gkDv9h6GbDT3wtD7GioMyfDmWowuT6?=
 =?us-ascii?Q?47SNifBmtvKQQ7ykcTrtYMysW1A+AahoBPg2VrukH2xqxkaWMFIKBFBTWu4I?=
 =?us-ascii?Q?O0Dy+mtrxq4FQw4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eGBruHSN8nuyN5QcktUeV+dxrbIkypUebTcAIkO6hk4zNrWd0NNIPJrHb3O9?=
 =?us-ascii?Q?sRSct2jpfbxaKVxNXHmrjnZSlOc/XT8PTj8UXIhU6Lb9uW8EY7j3q0nmdeRp?=
 =?us-ascii?Q?XwyCNFG4o1bDzsCygHj5PYB+bhtXBYJ5XfZwOicw0B8D/PzBXis/HFzJ/id3?=
 =?us-ascii?Q?JZ+1YIR2DEFwy+nAPHzOtLNFCyuQZcQQb7TpHNSF1UnXgvNRhDaCLg6+EfBK?=
 =?us-ascii?Q?WvNbiE+fbM4EYi3FxltVrbA2epIN4L/hmOpvooe2p2s9I6rofnqdS+enAbXX?=
 =?us-ascii?Q?NxQ4vNPjlz9GGmhkFpLSuttJToSRsFzWt8B4QtZwdIzizfUAmic9lDbnPgfz?=
 =?us-ascii?Q?GS0vvQej8kkQ/SHzHQhsG5YyhKhp0jdk9ZSdd982JgOfZMFLjfEgygzkALZF?=
 =?us-ascii?Q?1yH5BpFMKBKaDvxL2jWsG3latQ1nr/eneEK5a0KuJCznTJUSTi2YLyRTt9Li?=
 =?us-ascii?Q?iUVWXJkphphXt0hQUs5TKV9rWoon2pZhMSLIss3k+qDw4KK6DBIPGiD3TQP4?=
 =?us-ascii?Q?IEGAQBFRLFCfJHhCsm9VwKo5VAHQWql/mDcrHjJXfiAxQlVfwEtRVbh9DMuF?=
 =?us-ascii?Q?/+2pUNDn5hlmL69tJJ5wUw+QxgRExX8Le4QpcXuMQcs+/yWawdXEOwcqkT2y?=
 =?us-ascii?Q?PQqzxXXrwCUNogqHweW3AANuoORDLD1PrC7jU9decdI0IyqXUiP+GoHF/ITF?=
 =?us-ascii?Q?SsycBh24KCayrYTGa82MJd90cNct3C+tdVRbMbxHOIayEWyvj4HXQoanRE2L?=
 =?us-ascii?Q?glHWo0XvXxvAlwyAtunHNyZTAStIJC9M7ezsHdIR9l7tQJHZoDSdE3ftbOPQ?=
 =?us-ascii?Q?Rm4KaTNDoYbUV+s1OhoN2gKjS4xjVyq9UDwcvywwSURmP4lQPaWK9aeUo0ov?=
 =?us-ascii?Q?ecFQ5vIv4EaS9wSX2Q+SQVcIfRVKPrqDr/H/MIu0nE9QzEa4IsLA8MDu0P7p?=
 =?us-ascii?Q?s73RNGKgd+CJ3dcKZ0RbHcNMHzlmvSGsLvFzB6pHoSx8IhzUaLMBHtAYoNfd?=
 =?us-ascii?Q?v0UcmK4t1kEch74VITFm9DiIYLdj5e5X+QN8kGGekl96nAH0Yulu2A71KyhM?=
 =?us-ascii?Q?cwwI1xARkA6jYvwoX7VY9Cu4USihw3oZJ2k1+/lSUphUk5qDFQ2SxlTxe6sK?=
 =?us-ascii?Q?sx2ie9lLBiT+XN8gmPPSk8OBDXNKlfaXCBk+5gkLwsGz74b8RDOvltU9vMGT?=
 =?us-ascii?Q?fjxw/VQM4akVgqB7onuD3pMU8ZH2pvHG6uMcpaJS5+ZloZTCjafaU384noA7?=
 =?us-ascii?Q?hH0eo7wyr5gxn4Ze0BYdnXBI57YhB24hjCh8TKzH17d2ohVRLNXOFNZJlyIG?=
 =?us-ascii?Q?BhsM4iDh4A6fwJ4NI0VCmycQyPoY4yOoPUMIWAIVYUF++xi63DHwor4gU9ve?=
 =?us-ascii?Q?Znb8/aY9S3ZXzSOhb47a6gdWoEz9YsNRK7azsauyPHCW8v+71cthrqlZBO2H?=
 =?us-ascii?Q?bvyHUt6CDosyVT9ocT+cEX16Z2e9Zr0sr6wDxjExA+Gdv21UyAiLJWcHkExb?=
 =?us-ascii?Q?jOgSrPS+t3+9mugVoHby3oy3G2hSgeldqgvp3zu7Nj56zj6luI0tONfsWD1D?=
 =?us-ascii?Q?CBdYlGQ0xd/L4suTvtwrFBR8VHyU4UIPY3VzxUQd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55bd6d66-294f-4ee1-b819-08ddb7126c85
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2025 13:39:51.4348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OEm04Bcr94rfvq1yCnOoWVCg6UC0RJ1fnk+IgQWfJ9W+qjjZIOV71Nvsztzc6McjN+8vUZ+LO6s0DFmRfR/9eQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6267
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

> Subject: [PATCH 02/18] drm/i915/hdcp: use generic read_poll_timeout()
> instead of __wait_for()
>=20
> Prefer generic poll helpers over i915 custom helpers.
>=20
> The functional change is losing the exponentially growing sleep of
> __wait_for(), which used to be 1, 2, 4, ... 64, and 128 ms in this partic=
ular
> case.
>=20
> Use an arbitrary 100 ms sleep instead. The timeout remains at 5000 ms.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 619ccfc33000..9eeeae03b129 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -11,6 +11,7 @@
>  #include <linux/component.h>
>  #include <linux/debugfs.h>
>  #include <linux/i2c.h>
> +#include <linux/iopoll.h>
>  #include <linux/random.h>
>=20
>  #include <drm/display/drm_hdcp_helper.h> @@ -324,10 +325,10 @@ static
> int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
>  	bool ksv_ready;
>=20
>  	/* Poll for ksv list ready (spec says max time allowed is 5s) */
> -	ret =3D __wait_for(read_ret =3D shim->read_ksv_ready(dig_port,
> -							 &ksv_ready),
> -			 read_ret || ksv_ready, 5 * 1000 * 1000, 1000,
> -			 100 * 1000);
> +	ret =3D read_poll_timeout(shim->read_ksv_ready, read_ret,
> +				read_ret || ksv_ready,
> +				100 * 1000, 5 * 1000 * 1000, false,
> +				dig_port, &ksv_ready);
>  	if (ret)
>  		return ret;
>  	if (read_ret)
> --
> 2.39.5

