Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E837FC6CCDC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 06:26:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8485B10E574;
	Wed, 19 Nov 2025 05:26:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m8gCNKcZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2733310E572;
 Wed, 19 Nov 2025 05:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763530010; x=1795066010;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=S45GDzJkOfRZi/cK3SBZw6DtDztypzc9k7LUSxBOM40=;
 b=m8gCNKcZLx1lE9+XlstdfCq8OKv0sleRx8/3w5ddLtRTeqfIRa18mkNN
 zlnMFiOVYT6VndKgSnZgfl6DC4Vbc6WKHJnFjrKPYVILCWYYq2VLNfKy+
 raho49kJxEmOId6/Lx7Sw5ALDdQV4dcwDRddjGPQpnqu5na8X+xSCCE06
 qGn0lqgwVPhJyM47HPrfJWTFxTA93//osxWKUGg7pf/ZHP/l83eW+JnxK
 kNozOjNVkI/MnDvNJ8aFh/DlUEF+2L9ssdF9C1q7tmNPmDqp7XY2GOOAf
 1M2shdlUiYcMbspIdJ//6obYQLIPRDXOsgJxzaNQ0LRakmvTcuy1aWYYO w==;
X-CSE-ConnectionGUID: OILdquVyTViodhs4Ax9Fyg==
X-CSE-MsgGUID: OStXQONZSfyChfUkT8tslA==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="53135138"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="53135138"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 21:26:49 -0800
X-CSE-ConnectionGUID: M0PmgDG8TWafmPSgujpWbA==
X-CSE-MsgGUID: EjR/AXAXTgatvrNc96D+fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191401761"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 21:26:49 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 21:26:49 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 21:26:49 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.67) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 21:26:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r83tSp/CRtGZF+d/lRrwWHt63vARFuDK9IT1/TO3bzwqmr/Keo4e9acZb03B59xD6iXM3d4WOQ0mQQqQR7y/O5CvezpTK1D8B0iVhVbq+4cguTJFg1OKs7wHIhb1hVrh+HVZqpevjDaJ0aG3hW4s+5XhmITcHX/PwuRONvPBbOFq3A9FUWpeHQpNsHRn417qmwnvIi4fKNiq5bB46EMy9X8wrqOQPvEYpxYMPxv5p29bNa6uWw0sFOgeOh5+ajyL3DbZdZ8fDLkzWDet6jphjmBQm01le0KCcJzU32Ocgo7ZQlrenzehp815ceF6AjME+4DL6N8AoLj8kIeSEYV+kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EhJuGLRK/1RBMYov2ZZpzdU6732qGmACcThlrcOBEGY=;
 b=RQ1yx5IbCCgQKmhDBDiVNNZUA6jANqw2S9jJ7XzBmReCY4CN35sRbyadBr4gbp3Vb0cyCg/LZbFlYIzArWxlUErzvUzlKhu++BxM5LOCq7so8QGQ5bXR50H6qbpaSZ2YYEBW4RpZopk3+CXACg6cODeK614az/GfnDqxdW65ZNsxCoqnLq6pJOFROsMroh65Hvwl7dOHh/pkym00MeoThGyzjseeg+4/BdbDUpSTq8uzQf9OwDzuDFESvhVFUMnr2oMr7Bn70i3+tJUB+YMWZKKC1ekE+5xmJqS63p/JhncPvOPe9j/7AfxngJuYBtWEgBM2u/LaGgSv21+gsYGtug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB5889.namprd11.prod.outlook.com
 (2603:10b6:303:168::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Wed, 19 Nov
 2025 05:26:46 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 05:26:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 32/32] drm/i915/cx0: Enable dpll framework for MTL+
Thread-Topic: [PATCH v3 32/32] drm/i915/cx0: Enable dpll framework for MTL+
Thread-Index: AQHcWJEk2mxby1z2tkGe+H9L3b6+XbT5eN3w
Date: Wed, 19 Nov 2025 05:26:46 +0000
Message-ID: <DM3PPF208195D8D2CE4249438FCA364B663E3D7A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-33-mika.kahola@intel.com>
 <20251118132859.2584452-1-mika.kahola@intel.com>
In-Reply-To: <20251118132859.2584452-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB5889:EE_
x-ms-office365-filtering-correlation-id: 09290fb7-18e1-4e79-1088-08de272c3bad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?2mHkWe+EhbJX4mI62pUuTPwOCnX5v7AOjNAeXLWFIxLgBZs+cZLMCcOBHLlu?=
 =?us-ascii?Q?Wnr1rifg/pA8x3i+Htzv/zUSatSZvtRC+9W2Stoxgat3/JxzNWEAT9FP6sgo?=
 =?us-ascii?Q?Pb6ZyYSVCiRqVmuamaeh50dWlyfIaPkY7zFq1QBdK5YeQFGfrkDm7xEtRtap?=
 =?us-ascii?Q?/gi+HguRqpg8zlhqzkm/0pQRh3vParwappikui7OU+lYcvkruer3+hSrDTHZ?=
 =?us-ascii?Q?qlTxXLYdZs0kXRM8BKWBFv8UQwnEIJmrGQBwyQX82mMR0cu/eHkLYcaxTUzl?=
 =?us-ascii?Q?m52ewZwWKxyWJds6jsZcye7yGUC4TANHo42syppZCT5hl+xDyTz7O5IkFqaM?=
 =?us-ascii?Q?CP1/rsHOcTCaMYnheIRHs2EO9+j7B7xJXdansca+HcmJSSstPtmad91DNjDK?=
 =?us-ascii?Q?ySE04EOBVOciuLzEJ35HgzB3vBRSVotRUoLLC32dT4xtb95Cr+6gtI8xh+BD?=
 =?us-ascii?Q?nTqpwZ+nst95f1IVWQDyzGKtFmv4LnN/R2kcO4fGg/2VNy1XHdcBhYZa8QXl?=
 =?us-ascii?Q?tek6AvmcT1l514WYMpzPu4Wu8FqGi1XOW2sv4zh/EYaMKh4HEv79/aM28eXv?=
 =?us-ascii?Q?jbyByDBcjzB929RkR/1f3+bKP72fTshRftGMrg1jpKBQY/WjvisRms3+phDC?=
 =?us-ascii?Q?pSUcFfThRp4kGW22NS+Sb3BEvFt4H1DuiyFoa2w3bW5KzkDL3ZcTYVXepQi5?=
 =?us-ascii?Q?oNMzG9BuL/wOab4nD/qwYVd20sceFeLWOJOekfKhpwnDxhjJduDWvCZVUqdm?=
 =?us-ascii?Q?FsgjTRGFf1Ap6yoV0VUPC8MPWZR2aAKOk7sdFN7zeqYxCbOI7WCesrjuV2j+?=
 =?us-ascii?Q?TQ398MVRdL4tfgh9cwGKoHG+jNquvELaxXFI/S/baDBGLQBjTACKcKIRgytL?=
 =?us-ascii?Q?+aIkxJQ7m/Hk3Z3Y+GR5kMAClQ4dxdeq+sPo5njGue6VkkkVZZts2kL6LtpL?=
 =?us-ascii?Q?hC9Payw4YD59IbfsiU3cwWOsYCnXasP53pRIdI8pdScKBbM4JAOBQEgsXzYi?=
 =?us-ascii?Q?s29LIizM/ZJfexoiM00ARddtnj/idea4lfHtwbw4iWvLTqIUiWfyJWrHfbsX?=
 =?us-ascii?Q?UpjK9t3i6tDGw3zfIM//GySCA0xc28xvv+fkQsZdC2XYqHDJBsReRdWvCI9P?=
 =?us-ascii?Q?crb8WnM69Fl4xidTRAuZ1rg+SVDj/T8K7BYaPZjQ69KUZrmqRMfbuD+urFRn?=
 =?us-ascii?Q?qcEW4jJE2c3uoqullZu73pPK6DnXfeNs1nMhtzZ6FOMAUTUBuCbyISqW2E2z?=
 =?us-ascii?Q?NvXBSMnUrhSQ3c+CWGfZ54yRdv/shnu/qr41DSctsXL+2qGsLbAPkvQlWR1d?=
 =?us-ascii?Q?T9XijoFhA/wgZ1Z0wh7YPNUfjan4tX0C60ryDlN8YlJWuDH76LAICeKCqEfQ?=
 =?us-ascii?Q?oyPt3iMfHUvXsG9mSu0hi9vcWEXP8SASE+UQfTmgnwPz8ihZbZe/sAUMXVOf?=
 =?us-ascii?Q?uZ9kfRgPGLZ2N24m4m88f0XF0hcU5xCbq8vN1wnW6bXzydFxFoVoveVw5LKt?=
 =?us-ascii?Q?k5XMZJHrKmXhAlIhgYasVrwi3zj/ztwJ3JWv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IAo6LIRfCUPBci2RLwFPooWSHwqrBtz/RNyKqxdC0j8bG+shl7j16DVL/XxQ?=
 =?us-ascii?Q?4vWWRVYXcuDlYVIt+I1J4M50Uj1srfcL38DKQm0TXkeewfon/TL23sdKfsVh?=
 =?us-ascii?Q?O+6uJ9zgdeO4/FZhKRML2Xm8UiBo94nyo9t6dz/D5p1HxJH2XEwI2SsTQPZn?=
 =?us-ascii?Q?b3VTw9avwW/aor01OSyz6s0D7SsamxUuNnoe6gYGoztJZWaaVIh75ht0KpiE?=
 =?us-ascii?Q?FetoTQ093PndaC9a8XwuxYFEasByG1di2pNed9cVgJNZypXFzDSFiIsEtEMr?=
 =?us-ascii?Q?BQ+dJFpU9vwCH5xGoMHNUfTg5JWAjbSFvg0JkgPEOyyB6cYfVjeJrQwfDl9a?=
 =?us-ascii?Q?ajeTNNougLdwrXXz8JhiZes9y3zsGn9Dl5jMpnpgJnROWNG4O5Lguzw9K3Z9?=
 =?us-ascii?Q?ZVtumWMGael8/yW8tZQeQXCx6Ew8FxGY/bqsx1ulbVcaIQP0c190oYUxtw8e?=
 =?us-ascii?Q?NZol0bjT0RpVbzp4lMQGblk5sJmukYqj3IBKYA9Uy5wwn0Kxj+UcHmbqP/GI?=
 =?us-ascii?Q?JDGGaHgfZBVg3h1Bo7C0VIoseUiaRCzRY8MWgxVzy/T+koQdrKoX3QdolgNK?=
 =?us-ascii?Q?APDq2Y4buaNvzYpBKWbDudmxhWQi28GnEUmCGcWQcEToYL3UHoPSDAyPXxeI?=
 =?us-ascii?Q?bpTrEPzEyuJ073gqOYZOgupTkeAqtlryIXHSN3BRaXjfsLx+zQSz8GoquSJD?=
 =?us-ascii?Q?3+Km63Wkb2cEBzMHoQwpFPgeiKzLu7DkAf8yafOCm/q9rKDKbIEO1VUR3HdJ?=
 =?us-ascii?Q?w8h5HtWRqHjNEXj80qDi/Qw4CgPSr2BOhLlAg0ecP6/Z35amd9D0aXclAx4e?=
 =?us-ascii?Q?mEvYFsT0bSsfpuHtoEFi1VNiX988TaS8PqRZEPlQHiiItlU6Oz1ljiSHyGXk?=
 =?us-ascii?Q?2gFaSnsD8ZmnyrzqlSMvgmcGzMiJ0KSkTyJ5BpQhK6TkPkZvzs/jRCIUs9Vl?=
 =?us-ascii?Q?qY7oNL4EGvHCHDKzaNssuMWb+cLD2JAkqjBNiSHB0CynOY2gX34KQx1k5U7L?=
 =?us-ascii?Q?YM6RhZPgiu5Rgc0pPs2IUUo7vjHlHLAlnHQzYSRQzhWBEXCuHQT1/5I8bpl5?=
 =?us-ascii?Q?WcVLi5HlS8dd+aqbFzJQ+HiV0/NgurHxEKhvusjb79gGqhwswbkZTLwDV7Bg?=
 =?us-ascii?Q?qIdfkxpg+2C9L/5O0TFTTtztjLlWsEFEJ4GenCkQMzyE2nJDJN/N0JfB0oGs?=
 =?us-ascii?Q?mYFwmcTmgvi26s0sY7xNwYTRPCt/W5seamFiWmyU33mfSlwddAIBtDzkKand?=
 =?us-ascii?Q?2263V1fdW2COx+vcK3TtRd3SvFBGlD84hhTDbz2Paf3pI/FMD94H8vr4ehlQ?=
 =?us-ascii?Q?StAp3FcnOclx1a4fTZ4rg95f/fqnIId4rcy6IZDgEJI3dhRlzXqxjtMWhEQ5?=
 =?us-ascii?Q?fjivKA4qZbtBPw6k7XxFgFwcXv0JJUWuP2B5Nb9EViOh1PgTGl3yYbjXLwb1?=
 =?us-ascii?Q?v6n1jlQ9WXodty8JCOYQoUalFEd8dIVcBojL5BzuB5oewljhTQ7Oi2wNbl5W?=
 =?us-ascii?Q?f891++kVI5rCtjYsaXvO6A7MA0JlVE7dpZVt290IqN0amJ/qLFIGzRZQlfzc?=
 =?us-ascii?Q?o7yohQPguRSwmN3gd8Z9XpLJcwXneEnfZt8YcyTR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09290fb7-18e1-4e79-1088-08de272c3bad
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2025 05:26:46.6260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e16y9pclQOL5HRzTYXxPmTXOoWCjR78E+ebNlk61uW9/8vleL8VX2r0VcfV/dhWm6oaDnOVpSvaksEXzH6N/LQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5889
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

> Subject: [PATCH v3 32/32] drm/i915/cx0: Enable dpll framework for MTL+
>=20
> MTL+ platforms are supported by dpll framework remove a separate
> check for hw comparison and rely solely on dpll framework hw comparison.
>=20
> Finally, all required hooks are now in place so initialize PLL manager fo=
r MTL+
> platforms and remove the redirections to the legacy code paths from the
> following interfaces:
>=20
> * intel_encoder::clock_enable/disable()
> * intel_encoder::get_config()
> * intel_dpll_funcs::get_hw_state()
> * intel_ddi_update_active_dpll()
> * pipe_config_pll_mismatch()
>=20
> v2: Rebase on !HAS_LT_PHY check in intel_ddi_update_active_dpll()
> v3: Rebase on !display->dpll.mgr check in intel_ddi_update_active_dpll()
>     Add check for NVL as the platform is not part of pll framework (Suraj=
)
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>


> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 10 -------
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 23 +--------------
>  drivers/gpu/drm/i915/display/intel_display.c  | 29 -------------------
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 23 +--------------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  7 +++--
>  5 files changed, 6 insertions(+), 86 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 9d96e8940838..96ab7f3b5539 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3432,9 +3432,6 @@ void intel_mtl_pll_enable_clock(struct
> intel_encoder *encoder,
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state-
> >port_clock);
> -	else
> -		/* TODO: remove when PLL mgr is in place. */
> -		intel_mtl_pll_enable(encoder, NULL, &crtc_state-
> >dpll_hw_state);
>  }
>=20
>  /*
> @@ -3598,9 +3595,6 @@ void intel_mtl_pll_disable_clock(struct
> intel_encoder *encoder)
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_disable_clock(encoder);
> -	else
> -		/* TODO: remove when PLL mgr is in place. */
> -		intel_mtl_pll_disable(encoder);
>  }
>=20
>  enum icl_port_dpll_id
> @@ -3629,10 +3623,6 @@ bool intel_cx0pll_readout_hw_state(struct
> intel_encoder *encoder,  {
>  	memset(pll_state, 0, sizeof(*pll_state));
>=20
> -	pll_state->tbt_mode =3D
> intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
> -	if (pll_state->tbt_mode)
> -		return true;
> -
>  	if (!intel_cx0_pll_is_enabled(encoder))
>  		return false;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d024a1073e03..c2e08c453ae1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4257,19 +4257,6 @@ static void xe3plpd_ddi_get_config(struct
> intel_encoder *encoder,
>  	intel_ddi_get_config(encoder, crtc_state);  }
>=20
> -static void mtl_ddi_get_config(struct intel_encoder *encoder,
> -			       struct intel_crtc_state *crtc_state)
> -{
> -	intel_cx0pll_readout_hw_state(encoder, &crtc_state-
> >dpll_hw_state.cx0pll);
> -
> -	if (crtc_state->dpll_hw_state.cx0pll.tbt_mode)
> -		crtc_state->port_clock =3D
> intel_mtl_tbt_calc_port_clock(encoder);
> -	else
> -		crtc_state->port_clock =3D
> intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
> -
> -	intel_ddi_get_config(encoder, crtc_state);
> -}
> -
>  static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)  {
>  	return pll->info->id =3D=3D DPLL_ID_ICL_TBTPLL; @@ -4316,10 +4303,6
> @@ static void mtl_ddi_non_tc_phy_get_config(struct intel_encoder
> *encoder,  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	/* TODO: Remove when the PLL manager is in place. */
> -	mtl_ddi_get_config(encoder, crtc_state);
> -	return;
> -
>  	mtl_ddi_cx0_get_config(encoder, crtc_state,
> ICL_PORT_DPLL_DEFAULT,
>  			       mtl_port_to_pll_id(display, encoder->port));  }
> @@ -4329,10 +4312,6 @@ static void mtl_ddi_tc_phy_get_config(struct
> intel_encoder *encoder,  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	/* TODO: Remove when the PLL manager is in place. */
> -	mtl_ddi_get_config(encoder, crtc_state);
> -	return;
> -
>  	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
>  		mtl_ddi_cx0_get_config(encoder, crtc_state,
> ICL_PORT_DPLL_DEFAULT,
>  				       DPLL_ID_ICL_TBTPLL);
> @@ -5322,7 +5301,7 @@ void intel_ddi_init(struct intel_display *display,
>  	} else if (DISPLAY_VER(display) >=3D 14) {
>  		encoder->enable_clock =3D intel_mtl_pll_enable_clock;
>  		encoder->disable_clock =3D intel_mtl_pll_disable_clock;
> -		encoder->port_pll_type =3D intel_mtl_port_pll_type;
> +		encoder->port_pll_type =3D icl_ddi_tc_port_pll_type;
>  		if (intel_encoder_is_tc(encoder))
>  			encoder->get_config =3D mtl_ddi_tc_phy_get_config;
>  		else
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e7bb8ec0d6bb..6c8a7f63111e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4977,23 +4977,6 @@ pipe_config_pll_mismatch(struct drm_printer *p,
> bool fastset,
>  	intel_dpll_dump_hw_state(display, p, b);  }
>=20
> -static void
> -pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
> -			    const struct intel_crtc *crtc,
> -			    const char *name,
> -			    const struct intel_cx0pll_state *a,
> -			    const struct intel_cx0pll_state *b)
> -{
> -	char *chipname =3D a->use_c10 ? "C10" : "C20";
> -
> -	pipe_config_mismatch(p, fastset, crtc, name, chipname);
> -
> -	drm_printf(p, "expected:\n");
> -	intel_cx0pll_dump_hw_state(p, a);
> -	drm_printf(p, "found:\n");
> -	intel_cx0pll_dump_hw_state(p, b);
> -}
> -
>  static bool allow_vblank_delay_fastset(const struct intel_crtc_state
> *old_crtc_state)  {
>  	struct intel_display *display =3D to_intel_display(old_crtc_state); @@ =
-
> 5145,16 +5128,6 @@ intel_pipe_config_compare(const struct intel_crtc_stat=
e
> *current_config,
>  	} \
>  } while (0)
>=20
> -#define PIPE_CONF_CHECK_PLL_CX0(name) do { \
> -	if (!intel_cx0pll_compare_hw_state(&current_config->name, \
> -					   &pipe_config->name)) { \
> -		pipe_config_cx0pll_mismatch(&p, fastset, crtc,
> __stringify(name), \
> -					    &current_config->name, \
> -					    &pipe_config->name); \
> -		ret =3D false; \
> -	} \
> -} while (0)
> -
>  #define PIPE_CONF_CHECK_PLL_LT(name) do { \
>  	if (!intel_lt_phy_pll_compare_hw_state(&current_config->name, \
>  					       &pipe_config->name)) { \
> @@ -5394,8 +5367,6 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  	/* FIXME convert MTL+ platforms over to dpll_mgr */
>  	if (HAS_LT_PHY(display))
>  		PIPE_CONF_CHECK_PLL_LT(dpll_hw_state.ltpll);
> -	else if (DISPLAY_VER(display) >=3D 14)
> -		PIPE_CONF_CHECK_PLL_CX0(dpll_hw_state.cx0pll);
>=20
>  	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
>  	PIPE_CONF_CHECK_X(dsi_pll.div);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 2da65bb20f1c..a4f372c9e6fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1212,27 +1212,6 @@ static int dg2_crtc_compute_clock(struct
> intel_atomic_state *state,
>  	return 0;
>  }
>=20
> -static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
> -				  struct intel_crtc *crtc)
> -{
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder =3D
> -		intel_get_crtc_new_encoder(state, crtc_state);
> -	int ret;
> -
> -	ret =3D intel_cx0pll_calc_state(crtc_state, encoder, &crtc_state-
> >dpll_hw_state);
> -	if (ret)
> -		return ret;
> -
> -	/* TODO: Do the readback via intel_dpll_compute() */
> -	crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(encoder,
> &crtc_state->dpll_hw_state.cx0pll);
> -
> -	crtc_state->hw.adjusted_mode.crtc_clock =3D
> intel_crtc_dotclock(crtc_state);
> -
> -	return 0;
> -}
> -
>  static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
>  				      struct intel_crtc *crtc)
>  {
> @@ -1719,7 +1698,7 @@ static const struct intel_dpll_global_funcs
> xe3plpd_dpll_funcs =3D {  };
>=20
>  static const struct intel_dpll_global_funcs mtl_dpll_funcs =3D {
> -	.crtc_compute_clock =3D mtl_crtc_compute_clock,
> +	.crtc_compute_clock =3D hsw_crtc_compute_clock,
>  	.crtc_get_dpll =3D hsw_crtc_get_dpll,
>  };
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 8fd3b06f393d..6d7d5394713d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4558,7 +4558,6 @@ static bool mtl_compare_hw_state(const struct
> intel_dpll_hw_state *_a,
>  	return intel_cx0pll_compare_hw_state(a, b);  }
>=20
> -__maybe_unused
>  static const struct intel_dpll_mgr mtl_pll_mgr =3D {
>  	.dpll_info =3D mtl_plls,
>  	.compute_dplls =3D mtl_compute_dplls,
> @@ -4584,9 +4583,11 @@ void intel_dpll_init(struct intel_display *display=
)
>=20
>  	mutex_init(&display->dpll.lock);
>=20
> -	if (DISPLAY_VER(display) >=3D 14 || display->platform.dg2)
> -		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
> +	if (DISPLAY_VER(display) >=3D 35 || display->platform.dg2)
> +		/* No shared DPLLs on NVL or DG2; port PLLs are part of the
> PHY */
>  		dpll_mgr =3D NULL;
> +	else if (DISPLAY_VER(display) >=3D 14)
> +		dpll_mgr =3D &mtl_pll_mgr;
>  	else if (display->platform.alderlake_p)
>  		dpll_mgr =3D &adlp_pll_mgr;
>  	else if (display->platform.alderlake_s)
> --
> 2.34.1

