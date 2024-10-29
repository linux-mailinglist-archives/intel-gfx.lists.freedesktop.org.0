Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB729B4733
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 11:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ECFE10E628;
	Tue, 29 Oct 2024 10:47:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TY0RFxOJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B541710E61E;
 Tue, 29 Oct 2024 10:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730198870; x=1761734870;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Jfj7iUnxPJ57RxiKqYd9geQH5fDUWtyWCYChvvbcXJE=;
 b=TY0RFxOJYBt88p/QkgYZJfoYzCGcytptif5Au8otE55KSk9Fhj7VzmAK
 HYLhZ+cZ36OE0SGUhV5uRYr4JVItOG390SfDAfCwzcYjCmrKiaQgXJqNi
 lZHRq3+dbMn8qI2rm26DzPgPRur78Yiv4EcWz1P/ItHwsE9Rj7DaY4fMq
 1WUOU/T19+ZhQdsBGWOJE7OSZDzD7GNuNncAdoLWJnc/5IO4yU8R/TYZo
 0Uhf5wU8Y8krchKdg+6SRLurvtVRF5XBXnZJQwvtLEivjz2I0e5FMe71z
 5jGL6DBoEI/nVfp7TjWVvgSZr9IU8oG47ieCjDYF7i/VFMnRJPC+K1p8Y w==;
X-CSE-ConnectionGUID: hLPlMnN6S1qAmBSAR88qJA==
X-CSE-MsgGUID: AJ6E70F6RpuYkhoQIef2yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29970776"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29970776"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 03:47:49 -0700
X-CSE-ConnectionGUID: palNZYv6Q++yvhKAt2FHJw==
X-CSE-MsgGUID: ZIrfsd11Q0i58e4YPHoU8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81557942"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 03:47:49 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 03:47:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 03:47:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 03:47:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NudCdrN9ku4mSuYKSdjoBkAgnTk02Z56/pvrUgI3AgpVkcaCl6p9lG7NgRRephrtDQl/9FStKVYeUnsocDaXi5XgNKUD+g5V7flwJxz3gWum3lJ6vjZIrbx/9HtdWuMdH9zQMZ/VO1MowW8tLAAlF+Ru9pmzjpEkbqwd6b/yq+0F/TRIhF/qTI7l+ow1G0HO6z7WrrEEjBIVHBOlI2UiqAgvCgMfUrAcaO81MoE6/6+cdntCqI2hTIN4lctcegF52c4RWHArJ4XMFx8PAbofxE5uLb0Fa1T4vtenUvSEyyhJdsF6FDrtPazTU8/T4asmshOLL0eb6KkgFdF3HM9ZeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k/yZtbx19ZO/h7Ruqyrzryj+Mmf1CRV/vh7geAA0ERo=;
 b=QpWnd3t0rGa1X0jv47ta3hiPz5j843Ny27F/GDb+peie2RJNhc1uPh8PAplBQP04SHXFmiFzzdHph4jAMwRg9ynaq34eI1ppxKSaihwFeyT8em2I/cod3zeY6cgDkj+neFhTFEK+7y5XOC6JxQgAR6VSuQ1GvSA9GI8Qjj/KmEdgEuMbD1KHr1yb/NDS9VQifQ04HLcnzJW8HVlzAqCFOHEmm5ZiWBh9ijYnoaDfu2ZHRoyfPIrdxkFpexa9GrFvfizNin5cl42bI2PWvDmiD6bGFSyi9CEHJyiZSKDZknj9vqqpzorjBbpeamv6D0uNe+7TFqwx0HeoXOhxxvB3+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW3PR11MB4649.namprd11.prod.outlook.com (2603:10b6:303:5b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Tue, 29 Oct
 2024 10:47:46 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%2]) with mapi id 15.20.8093.027; Tue, 29 Oct 2024
 10:47:46 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
Thread-Topic: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
Thread-Index: AQHbKeAQ5/nEAyJX50mMyHOxkMbYT7KdiO6A
Date: Tue, 29 Oct 2024 10:47:46 +0000
Message-ID: <SJ1PR11MB6129CCEF0FD3585991A07693B94B2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241029085304.219168-1-suraj.kandpal@intel.com>
In-Reply-To: <20241029085304.219168-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW3PR11MB4649:EE_
x-ms-office365-filtering-correlation-id: eabe3565-469c-41af-ee51-08dcf8071fd9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?WWP01gLXMdDP8gDrEXoe5cHVjedQ4XTkFdwaPe7AL9JAzhQ95lSCkJV2jIkO?=
 =?us-ascii?Q?BZ/CBsw/YV81I0mfiafd9ntMLdPrj+FQwifATwW0hUpFaWOH1EwUhEIa5Fg+?=
 =?us-ascii?Q?TUohiJpaSTokXzvbH+ppxvj9qzOQ5LVjVroaqAn1pmuZN7+bFmzFk/RosFtl?=
 =?us-ascii?Q?dV9Lhk+S+DoqoE4JVCbCB9vsjNd8JjIwudM0SRwmGr4tyFJ/Dr7on2EpCk/D?=
 =?us-ascii?Q?k/W7TeGxhAUkwI7ytlPV8WNZBOu3s3J8oZKH7/BNvS4d0tzSBtIoYmOPCPVV?=
 =?us-ascii?Q?O7rst8ddRH2S1UrvvCyDY8q6/uuv9ym1yV6dKWwX6D3lCJPcrUwjkCqgkg6y?=
 =?us-ascii?Q?vY4ymRuIqYyB2t3tA/0lgbw0hPWT0mNpfNki/J0bkLtdW0rhAGPUUS+4AcF5?=
 =?us-ascii?Q?U/0S+VTL9Vt6/1MgThm5SNlXCbJu8I+LdoIhZ5fXRuLjf7HkSBnq/uc4XC9p?=
 =?us-ascii?Q?5v9EdiSgoaOD4RwjSwNxG9bNbhQpYn+RwAp+JpIfD6S5GvWX0UCcahXp/OZL?=
 =?us-ascii?Q?NiiQlbm0ye7ziAAUIp48FKoZ1YbbYCCfYVa95sGqegvbyUqjCsAa9ePSDL/V?=
 =?us-ascii?Q?VbC/RVNiZKt9H7wzddUPN0Bbaan9XjGFeFSmNR6ZKtCh+QKxkkDd8aZ3aZpp?=
 =?us-ascii?Q?AM5mswtza3kQjyu5dZtXrRphrsUDHJ2dR+gTTT/KXt7ysMJ8SHwsMs+/knKa?=
 =?us-ascii?Q?sHBi4yllDmnb9ROE8oXh6DiKE/FZneF1vOc2ilOWWFzKHx7vpdLPNeJyu4oB?=
 =?us-ascii?Q?J0rkX5eNwc6ttSf55rUYxssL4+A6A2o4I+7xJt+vnoRgnn/J/ERZoL2+9gF0?=
 =?us-ascii?Q?yss2Y9LDL7tWmvXWPWNZ7VRskfJU5TM14YzrKep0sHp/ELVbkuP37di8MlFH?=
 =?us-ascii?Q?HZGD5/qCZDJhrLe8uHMpya5h/mOpW2ZhRy0J54pLQVmXbiruuM7RLVft6hMO?=
 =?us-ascii?Q?46yLJLCBZEclektvMSkVw76Cft4V9iKLDSRugYOERoXvif34Mw8KHKyaalQP?=
 =?us-ascii?Q?hCS6/cmdP3DvX323k2mOqMpXNYtw2P8pFHPNtIOnnukTbWi6yl9GY823puIQ?=
 =?us-ascii?Q?ZI9nDi31ECuHmXMmzJgJ6ldf84UlInoKF5MNeupjHn8a0DXp2nw6GHWD5uzX?=
 =?us-ascii?Q?s7KFFR7JZ1EBIWAKqWlYZEvU4z7UFp0I7J61mu7xN+x4iJLUzcyX7JrQCpZH?=
 =?us-ascii?Q?2/sbaxmE+9kaqWPR5dZdXDV5L8zs4vz3Cfn4ZepvemdKdh+JyH24Ks+BG0vf?=
 =?us-ascii?Q?XrjuOT8vE1mPGgTe+4OL013WdI96gYIZA2G1xyXTDiCvkRm8mMrIvR7o//Ny?=
 =?us-ascii?Q?7fhv5XXcth+ualn7joty3EDFvDxM9QcM0cQVO2hy9xVkT7ss8U/Sev9xUnnd?=
 =?us-ascii?Q?y83dt5g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3AJDqJ3yYElbyFhicQfctjGXoHJBapxQKQ+1NFT09FzMD7lur5ICNSeHJs8q?=
 =?us-ascii?Q?+6FzmUozW3HhkHQV+F/CuXks/w4p7FXE62lujArDZOBOhnxdIyL3aorSQrfz?=
 =?us-ascii?Q?OqCCCPw+NnLZ4iKuiIzXxzAnmhG+pxUpILuhf8Zp+DJvpbcY+r+yIeO0OZvW?=
 =?us-ascii?Q?oEbooBMCScJzaaySBk2ielCjSm6zL/UhVqOPkBiV+029jjMpy7ojVlLWs22u?=
 =?us-ascii?Q?A3RRvTf6o8uvumB0N08kGzOIHeS6SizpFi0gDMyaSILtnhDwXcOGuBpN+8Is?=
 =?us-ascii?Q?fIiSlJgW7VxOtkINDdtwxakFo1w0hHN/EQoAEE+7ZG5sLWbqnYfAmBRM7zlH?=
 =?us-ascii?Q?FIcUtHtwBZI5HI5/tNQcpl0EDJ6hg330V+zVzvn8OSemDn7jsQ2LHLxRh+xi?=
 =?us-ascii?Q?DEPuyscrrIeIC93qPS1R7uiLjW1xAI3/l/yRhjQCXasQO5VskAx5D5thz3qa?=
 =?us-ascii?Q?rz0iLRDn9u+r4dub/q2/yUVebfWf8HipiAC+uEcgvOWbpKCb81G2ypH+k+UV?=
 =?us-ascii?Q?s4eQqW+nn9P7W959A/mHeyNskQYwDIEkSYxYzLYQUzy0lU4fLGhFzUi56nbc?=
 =?us-ascii?Q?Nz0SBewwDvfU/UTU/5eefssiwJ3ivZiZaNcgfJL5cGi5IjnCfLyU1lUqyYwS?=
 =?us-ascii?Q?75cTV28z7v8xFacrEWxSeTZQ6FgURxjom/MQhxW7X4mG1OY9M+nApBgqPYr+?=
 =?us-ascii?Q?jjX1rFnpvB2hmZxeQZ2ZCZM83eDMGnCRNRwpBOccGlnxKQN2hzT1RVLqkm+I?=
 =?us-ascii?Q?A8quWK6uME1gOSp3jdZzbmiZS30Up1pfM7RCzZ/M5sRaEZc088H0Ab4yNUz4?=
 =?us-ascii?Q?3ev1TaJhZ/a3l74QbTJ6bwYaN0ec4zt9Mfqqjxd3uomkFUgVVTtbIyxxNIpi?=
 =?us-ascii?Q?lBQK5v7a1WBo1xnWyfu99EAXiS9hDOeHJm+5nFcqXTeVKxGkcOi6FUmzjkzw?=
 =?us-ascii?Q?eEmvxWj6olE1fUikteXfgaqs/v/c19n0UK0Hig6t6QewbHi+lZ5dqE6t9Y/o?=
 =?us-ascii?Q?5eiPYAgkKswaOAe2cr9A9bzysGtjWrybJuCzyzh4TrOvJsATjrp1u+wHDR+h?=
 =?us-ascii?Q?aN6asdMbdC3chfSZN8hsCa3vmMgnMVT691cm9KSLJ2loLYHWrXvjoG17/niv?=
 =?us-ascii?Q?xLpvOWI2LZ+jYYiNyDaP3F5jpr9dxpfkR6g7VA+C9KxU5aboH153Ojr94Ybs?=
 =?us-ascii?Q?8FmEeSabM4vlpTjtVnq4U/mbOvIGcKtBOpoecZn9E56vOhsNBMSocPm+wR1K?=
 =?us-ascii?Q?6E4Y7dxax2IqlPlc4z7O6eonUZYcK6g7dmWc0k7r6/czUxMSNU4BBZQXqY5Z?=
 =?us-ascii?Q?3P5a0HBs78HGQtkDLo7Xzlpf4vb8yMlo6CB/Y2peMU2/foLmusA8hUZJaw/f?=
 =?us-ascii?Q?BQfrue0pRtCFaUfsxxNivzOv6RMJ6bBuFj5UceAZlE2Djd/eO7PeuH4U4Nw5?=
 =?us-ascii?Q?NvKUImuKefa53WIv/MRDvtYp8xVRT8I0x4ENrmjFATIIdGPdYoVtP9X0R4Ls?=
 =?us-ascii?Q?/pIiAvvidTfxgB6qzE/MbWx5mDUjgTXdvMt3esa5LvSL34b++u6NI3kfNL2u?=
 =?us-ascii?Q?i/gs1GDEDjaTEVodAYSB2a8OK69oRcmTLlmhbgLAUMPDbbupk8b2cOGNajp2?=
 =?us-ascii?Q?aA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eabe3565-469c-41af-ee51-08dcf8071fd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 10:47:46.1986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FKovnJ1yyFgbjgHjHgNa78xueZNcVIojS5W86Pm4Iz332rPHLFebhzZp3RKaIclxOuk0rygiIlF/gJjw4XleD81atZNdZWZ4Kckc1UoJSDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4649
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, October 29, 2024 2:23 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/hdcp: Add the loop only for DP encoders
>=20
> Add the loop on the first read and write only for DP/DPMST encoders as th=
is
> issue is only observed here no need to burden other encoders with extra
> retries.

It would make the motivation of the patch clearer if we describe "this issu=
e" here.

>=20
> Fixes: 9d5a05f86d2f ("drm/i915/hdcp: Retry first read and writes to
> downstream")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..fcfb5a9f303a 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1503,6 +1503,8 @@ static int hdcp2_deauthenticate_port(struct
> intel_connector *connector)  static int
> hdcp2_authentication_key_exchange(struct intel_connector *connector)  {
>  	struct intel_display *display =3D to_intel_display(connector);
> +	struct intel_digital_port *dig_port =3D
> +		intel_attached_dig_port(connector);
>  	struct intel_hdcp *hdcp =3D &connector->hdcp;
>  	union {
>  		struct hdcp2_ake_init ake_init;
> @@ -1513,12 +1515,18 @@ static int
> hdcp2_authentication_key_exchange(struct intel_connector *connector)
>  	} msgs;
>  	const struct intel_hdcp_shim *shim =3D hdcp->shim;
>  	size_t size;
> -	int ret, i;
> +	int ret, i, max_retries;
>=20
>  	/* Init for seq_num */
>  	hdcp->seq_num_v =3D 0;
>  	hdcp->seq_num_m =3D 0;
>=20
> +	if (intel_encoder_is_dp(&dig_port->base) ||
> +	    intel_encoder_is_mst(&dig_port->base))
> +		max_retries =3D 10;
> +	else
> +		max_retries =3D 1;
> +
>  	ret =3D hdcp2_prepare_ake_init(connector, &msgs.ake_init);
>  	if (ret < 0)
>  		return ret;
> @@ -1536,7 +1544,7 @@ static int
> hdcp2_authentication_key_exchange(struct intel_connector *connector)
>  	 * authentication. The values of 10 and delay of 50ms was decided
> based
>  	 * on multiple trial and errors.
>  	 */

Perhaps this comment can use an update too.

Functionally LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> -	for (i =3D 0; i < 10; i++) {
> +	for (i =3D 0; i < max_retries; i++) {
>  		if (!intel_hdcp2_get_capability(connector)) {
>  			msleep(50);
>  			continue;
> --
> 2.34.1

