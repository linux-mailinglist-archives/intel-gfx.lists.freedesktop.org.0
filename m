Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A709B5AD7
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 05:50:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EDFF10E731;
	Wed, 30 Oct 2024 04:50:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EDdOY9J4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE1510E731
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 04:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730263818; x=1761799818;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RM6zEcZaD7fjfgKr1aTIYdTJXccWdq21tXT6wQG1t+I=;
 b=EDdOY9J4wn70nG+/ZRQ0YDzUl7HvQodspPpD5E/QUPfptreBggF+9hP5
 3GGI0Xw74mvM8xTYmrnf1oCtd9kltKz3jo65muCiUdItDFBnBh6nm9VzZ
 FmCJqHJojzCezhF8rITerUAtdx2OWID1O+7ijh6X73miJAXCm3g5kwMCb
 yQoeJ5vtdRYuDjl0on8SIzU5R2cJcAPa/LNkJZCzUE8OmutkXycEfpazx
 /ZyTS04yCUCzZsc9Npg1GUP235S5AgSGAnb+1mwuZtNPyvgaALaxh8sZO
 bYFkVTKoWMvuaHLekJkZ8E5z84TwlzIirfEpvHMP4jikXl04+epmeJ7Ax w==;
X-CSE-ConnectionGUID: PXvlTtl5SbyLDhMYbryWOQ==
X-CSE-MsgGUID: hoG81zhxSACeHWNhvrLhGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="29392610"
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="29392610"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:50:17 -0700
X-CSE-ConnectionGUID: 5jCuG5YrRPifwfTF0FTdsg==
X-CSE-MsgGUID: i6LmoqewTu+Ug0yxbIrjBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="82276731"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 21:50:17 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 21:50:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 21:50:16 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 21:50:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=je1aJUvlkUqltdmrKAztl1/uhqXfTPpXhnVEC6a7KIHCFT9J/iB9mxnW0YK1Osb9K+WY01mGwW1/FIHiGZ7ioXmuhNsI4NuvL27Vs37eIYkFN4K9u61tvQ5zMGn4SOWhAJRCG2HM84lFgmL1Nw9ECg6THTSLIhBML0eAPdowgAAikSh2e387KJTHA3cNpBbvdjfBFL7mqV8Bz78HnixF1X7v9xNsO5Z7yl/u54CM+rjSPCtl7osUkGkAAQ112ug6lLEdTESU2/TDDEJttiOBH6/ueEZZ9E2mp+zrzdYtx1jyXGdJ3/DzAyT+zNxjZRhUP1IHwgbYg8+PrsIYsCByPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a336m25YvPAOrsrLr07Q5+NibBH2GIvgDCuMFfcSMlg=;
 b=iAm/z/nFVnv0d6+4s2rh0iuI5OVBDYAfgE0dA4fDQCLbQliRknfQi9m/FdagWYYuGu1cq1w9cZvAOyHcRhoaT9+rgHiI8CUklfJdXJgcr93J0n6J5Uv9A9LZ0wDQuh8qsUYr0J9u8DWfC4+ToDAjxTbs/ndhIrvmf65HBFExd9kaBbos1irlCCw1BXXBYbiY04hsj67nf3KfL527/+AbOBJ3fP0689xgauOMQeSK2RLG83Y8rs8RzFnzAfolCIOpxDqKr/ctJIj+e+glGdwhi0/DjEXIMP0sLX0ufyT0lWmJRM0U0gkDYaEzJv1Q1C3wOu4Gp+bGkh3x11kf28S+pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by MN2PR11MB4567.namprd11.prod.outlook.com (2603:10b6:208:26d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Wed, 30 Oct
 2024 04:50:10 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%4]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 04:50:10 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
 coefficients
Thread-Topic: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
 coefficients
Thread-Index: AQHbHioEax9CUthRHEaCsBt2ZIForbKViHQggAAkgQCACST28A==
Date: Wed, 30 Oct 2024 04:50:10 +0000
Message-ID: <CH0PR11MB5508F5F5E148D3FAD47CD096C2542@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20241014111302.95362-1-nemesa.garg@intel.com>
 <20241014111302.95362-3-nemesa.garg@intel.com>
 <CH0PR11MB5508BADD65CA32A1F3ADB77EC24E2@CH0PR11MB5508.namprd11.prod.outlook.com>
 <IA1PR11MB646706473E65B47CC8C4B601E34E2@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB646706473E65B47CC8C4B601E34E2@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|MN2PR11MB4567:EE_
x-ms-office365-filtering-correlation-id: da1c17bf-10bd-44de-6662-08dcf89e5583
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?uMsev80Dg2IOJO/9cNI+P84e55qPUjvTPznLXTTim3pfUfWTotyekZDp42BZ?=
 =?us-ascii?Q?/7x21UcrJ5+lmtK7mLGkwFJ8gqk73abt5E9fHInTy/2/mQgNhjGztLoqeFjT?=
 =?us-ascii?Q?iIUDPeCxg+JVpsaTRP2u9LYXFMrslWMsLncHRdtM2wtd+pEyWrr7Y7t3O22g?=
 =?us-ascii?Q?YQvpDoFfQUtvvwPYZPNnudTO3K3faFVNK/KBiY7JFOPqOkUp0sKTnaYLbQ3d?=
 =?us-ascii?Q?YmVGTp2hvuQGVqxNQufBiDJy3AkMZDyVJhmgukhYmQUeOecsMQ7p5vg5E1aY?=
 =?us-ascii?Q?+WrMlrnkO3fbJeJxY3hDyvpadK0Qf/jqxavzgBwmwGOgIaX7JLiOEJ17s2yy?=
 =?us-ascii?Q?b+ZI2VSyuLJRHbNDK9ijdcjR5WwCG2dK1/591wE2NmiTal9i5USX6RLRLbWl?=
 =?us-ascii?Q?C7qsbSg4Tw6czVZcKaquuFJ3LS9Yh26Bc/V5/TCDADDsexr9WzlZNtMB0bMQ?=
 =?us-ascii?Q?8i7C26XQhHCcYw6AeSqDQaHm0rkCu85oubIvFElac9/JXBrhCQ61ZP/F0N04?=
 =?us-ascii?Q?oK5m78BZ/EXC6iH+H3TSNVeMjZ4CnHWd4+w0ybJtptAc5Bvb0H3QnRe+xpgm?=
 =?us-ascii?Q?/+SWpm/nzdHEQ3zcFMwpJTJ3m1kDTBWgY1fIT310oSm8TG1dcY5iBvABJCUe?=
 =?us-ascii?Q?yEmPPQhfunQ1C7hv0zlqBEchzmLAHYdBnQnZzKrZ2bpFiiZuJaHWsHLNaN96?=
 =?us-ascii?Q?zuN3azsyaRhaIyiIVKwNDoDw+a0ZsuVGE1urvPkTZwV9aaRkBn1D6u9D5bmi?=
 =?us-ascii?Q?UAnUlcDT1U/GtGcJLj9fMVKaitnkcpCcgNELfQSHcGWat0teR9nJxKkNPyDG?=
 =?us-ascii?Q?U/0EB+ei6P8BEZ6Kn7ESso2o+8/FzAhLSp0NpLKJJSnRk6KXpW45VhANAGgP?=
 =?us-ascii?Q?Mx5mle46053gxZ6WeHTBHUhkn4kWDVdA/9WYufBHqsZ1xASSPOMY23F9geYa?=
 =?us-ascii?Q?L/zUiTy3JlNO59y90U8lqfSu6cPCvHTa4YM4F7rUFfY8wrCRmgWVsjpFgjnE?=
 =?us-ascii?Q?zzpKu5UeqR1t41CbY/JT10v03GdTAF97qoZAMO3+ug5NsOp0JBn3rJamocBz?=
 =?us-ascii?Q?7k8Y6uQxb84M49TCV2eodTPTG1qv3a6dVonQzHaAwvnZ+0w/neq2uv3Y/arp?=
 =?us-ascii?Q?KYuYKvgaFTyvaRqrdahHdgKG109M9HFopu5VjVSpMKNo7h3FrBjoyKjm/vIN?=
 =?us-ascii?Q?bO7P9zQsaBRCr94KD1J5vQdCfLswmYoAKLJHEusu+gLlS0Gma9HgvHIccltI?=
 =?us-ascii?Q?b9vQsVKVadtWwCBD++kx7/7MyylnOp6oxZ1BM/qYqcjtzTsSRtcQnUhUYDer?=
 =?us-ascii?Q?t0usgjK6TiiM0RcnXTIdKm8QL9IfWc6WCC/vj31qUUfKNnZOinQfflrlGfXU?=
 =?us-ascii?Q?UJbJM/0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oHGyC99XgP2l9635y8x3TydUOiMw08FSztp6opWxHXo5npYaa1ZS9osn5iKN?=
 =?us-ascii?Q?Z5iigjjaS+ZwUERoZ0kjPz3RyIaPAO8A9Ni4Jmvbq8JAAl+JqHdEC8O4/drc?=
 =?us-ascii?Q?URW1aN9ta3S08lERSMJtycenSGcosnKzfuGBF+lnGsiXkTKrRN53/jBn38Hj?=
 =?us-ascii?Q?bm7Q4+/ILJUygxVrHdnkFcZfzTNC+jqERN7qGcLSFg4aFUMgH2/SivGVc2NE?=
 =?us-ascii?Q?+NKXjRwp+d4c4Hq5xqiLgtoTmjNKFrXLtYBBgFt9ZKwIRK9jqBWQsnOW91Up?=
 =?us-ascii?Q?ii6ww+jXoPqsLyj2Og92cu5QVVTkpGIA3DDAXXs0x8aHo9hB60dUAQbAxgLs?=
 =?us-ascii?Q?UH2shqK3Rry13s46CunKfD3HrqwIl0+MKTNFKK0OUpO4Rk+oTspHSMblu0aJ?=
 =?us-ascii?Q?5QSptHH2EXBrWuGNQnIuqgGKqel8gO2aimeRXQFYviLusLXV+mX5LzNXaFim?=
 =?us-ascii?Q?ak9WnHQzkhpvWmZ9nVyxUmratIQLu3IO5Zl2sXRWXuDpZpHKj56gTO6+THn3?=
 =?us-ascii?Q?lf+XxS3C77HnvBJaxsqIO3VHxa5JzzDElHC+29ntQsWGwXDLyFjoqEu82g/Z?=
 =?us-ascii?Q?v2uz2DrxOFXM3oNz9rDM5twGkgF4cFgcbCtYodkHRxEUOWI8hcMUriYrz1Iy?=
 =?us-ascii?Q?VBdZ/0hhee5HkuM568enercYPxiQsOwSEd78hGjoywFxTqZKpKH4y95ot694?=
 =?us-ascii?Q?BBDMc8VUdnQbvvUKIuCtwyAsYgCYck4YDly6+0LEAq0TzpMNK1rnA33Rd0en?=
 =?us-ascii?Q?NxD0lhxRYJ21+dHPsDUAokNStY5wzsy2l75gmCrXIJR33FhSfejLZ5iyu5N4?=
 =?us-ascii?Q?y2GzMITCI2TFWt22FBnEjO4HIPqPB6KkuyU0HIRNEylznoDmAbZPuDtbtcXP?=
 =?us-ascii?Q?aiK8FKVuQyN2DTiG0DWu/jssiSsp6SMOkPMhkogFLWZNzK9oXKpe6oFui7B7?=
 =?us-ascii?Q?Musea/0fL4J6H6Phm1YtVC1yIeC0ssEj9iMoaHluogY4rWQklOnfS9bf/7TB?=
 =?us-ascii?Q?EirgSBArD8F0cIARQivVyY4sUP/y5dwDT73sF/WSOkGP92Vc5hCoEcgrJmTK?=
 =?us-ascii?Q?JT/hKmDxexKvGbRLjGkQeqWVe9zni3g74tJejB5FwKsj3BXfiy2lfm49+GmI?=
 =?us-ascii?Q?xexSWsSUtv1sk9pOhTildhf6I+L1dAXz7v8KKSAMTTK+/ngcqTHaf21nqAc2?=
 =?us-ascii?Q?DJK8Kabalm6Y/ocleJZnkZQ+XyRnIiMeDJY2HE/GXq6kmQlDK5nAgD79+1+w?=
 =?us-ascii?Q?6ZyHB3v/4mbkcZPI7/oSR5b14Tt6p4GpK30qOLC0BSjBf6DZj2TozrflAZyD?=
 =?us-ascii?Q?RJhD2zpYQ/vCYKZO0ouyqFn4jDxYjt2mPpZHJMFkSbJdyC8l8LD/IUIZf3gX?=
 =?us-ascii?Q?vV2VM3XqRakwIWriKVnyPVCiQC7NHAV1yBaXRgc/C6FMA+2N1hbVWVxCMLkW?=
 =?us-ascii?Q?6oy9x35tEQA7zurCvgQFmK8j+1kfiMDUkMqJNERI/7In6nuSKhfhR3kNXNPE?=
 =?us-ascii?Q?Qmuj10uYcDaG+QLqvbIEAGVYlm/gTXg0ilxP27bFxCfjgfoqVpsQIUqcCAdk?=
 =?us-ascii?Q?nSdK/B0QVugHBmY0z7KgdGE9aFrjqAFAdtadkif8fJ8ggTfkykZzBF2XWzEK?=
 =?us-ascii?Q?YQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da1c17bf-10bd-44de-6662-08dcf89e5583
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2024 04:50:10.2847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yc8A8Byu8KNWC1YpP6zWa5S2Yd3VZqc9BdGqD9nGH3sJdgDtiNoa950CefmMzxbcLMeceLZ+vUsnQXQ87gjatF/2RNrjZLFz5jxuPgJpSHpMsa2Up17+afrnnj+MvIuY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4567
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

Looks good to me.
Reviewed-by: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>

> -----Original Message-----
> From: Garg, Nemesa <nemesa.garg@intel.com>
> Sent: Thursday, October 24, 2024 2:41 PM
> To: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
> coefficients
>=20
>=20
>=20
> > -----Original Message-----
> > From: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>
> > Sent: Thursday, October 24, 2024 12:41 PM
> > To: Garg, Nemesa <nemesa.garg@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: RE: [PATCH v4 2/5] drm/i915/display: Compute the scaler
> > filter coefficients
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Nemesa Garg
> > > Sent: Monday, October 14, 2024 4:43 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > > Subject: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
> > > coefficients
> > >
> > > The sharpness property requires the use of one of the scaler so need
> > > to set the sharpness scaler coefficient values.
> > > These values are based on experiments and vary for different tap
> > > value/win size. These values are normalized by taking the sum of all
> > > values and then dividing each value with a sum.
> > >
> > > v2: Fix ifndef header naming issue reported by kernel test robot
> > > v3: Rename file name[Arun]
> > >     Replace array size number with macro[Arun]
> > > v4: Correct the register format[Jani]
> > >     Add brief comment and expalin about file[Jani]
> > >     Remove coefficient value from crtc_state[Jani]
> > >
> > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/Makefile                 |   1 +
> > >  drivers/gpu/drm/i915/display/intel_casf.c     | 131 ++++++++++++++++=
++
> > >  drivers/gpu/drm/i915/display/intel_casf.h     |  16 +++
> > >  .../gpu/drm/i915/display/intel_casf_regs.h    |  19 +++
> > >  drivers/gpu/drm/i915/display/intel_display.c  |   3 +
> > >  .../drm/i915/display/intel_display_types.h    |  14 ++
> > >  drivers/gpu/drm/i915/i915_reg.h               |   2 +
> > >  drivers/gpu/drm/xe/Makefile                   |   1 +
> > >  8 files changed, 187 insertions(+)
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_casf.c
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_casf.h
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_casf_regs.h
> > >
> > > diff --git a/drivers/gpu/drm/i915/Makefile
> > > b/drivers/gpu/drm/i915/Makefile index c63fa2133ccb..ba3c33ca3149
> > > 100644
> > > --- a/drivers/gpu/drm/i915/Makefile
> > > +++ b/drivers/gpu/drm/i915/Makefile
> > > @@ -280,6 +280,7 @@ i915-y +=3D \
> > >  	display/intel_pmdemand.o \
> > >  	display/intel_psr.o \
> > >  	display/intel_quirks.o \
> > > +	display/intel_casf.o \
> > >  	display/intel_sprite.o \
> > >  	display/intel_sprite_uapi.o \
> > >  	display/intel_tc.o \
> > > diff --git a/drivers/gpu/drm/i915/display/intel_casf.c
> > > b/drivers/gpu/drm/i915/display/intel_casf.c
> > > new file mode 100644
> > > index 000000000000..75c1ae37ae1e
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> > > @@ -0,0 +1,131 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/*
> > > + * Copyright (c) 2024 Intel Corporation
> > > + *
> > > + */
> > > +#include "i915_reg.h"
> > > +#include "intel_de.h"
> > > +#include "intel_display_types.h"
> > > +#include "intel_casf.h"
> > > +#include "intel_casf_regs.h"
> > > +#include "skl_scaler.h"
> > > +
> > > +#define FILTER_COEFF_0_125 125
> > > +#define FILTER_COEFF_0_25 250
> > > +#define FILTER_COEFF_0_5 500
> > > +#define FILTER_COEFF_1_0 1000
> > > +#define FILTER_COEFF_0_0 0
> > > +#define SET_POSITIVE_SIGN(x) ((x) & (~SIGN))
> > > +
> > > +/**
> > > + * DOC: Content Adaptive Sharpness Filter (CASF)
> > > + *
> > > + * From LNL onwards the display engine based adaptive
> > > + * sharpening filter is supported. This helps in
> > > + * improving the image quality. The display hardware
> > > + * uses one of the pipe scaler for implementing casf.
> > > + * It works on a region of pixels depending on the
> > > + * tap size. The coefficients are used to generate an
> > > + * alpha value which is used to blend the sharpened image
> > > + * to original image.
> > > + */
> > > +
> > > +const u16 filtercoeff_1[] =3D {FILTER_COEFF_0_0, FILTER_COEFF_0_0,
> > > +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5,
> > > FILTER_COEFF_0_0,
> > > +FILTER_COEFF_0_0};
> > > +
> > > +const u16 filtercoeff_2[] =3D {FILTER_COEFF_0_0, FILTER_COEFF_0_25,
> > > +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5,
> > > +FILTER_COEFF_0_25, FILTER_COEFF_0_0};
> > > +
> > > +const u16 filtercoeff_3[] =3D {FILTER_COEFF_0_125, FILTER_COEFF_0_25=
,
> > > +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5,
> > > +FILTER_COEFF_0_25, FILTER_COEFF_0_125};
> > > +
> > > +static int casf_coef_tap(int i)
> > > +{
> > > +	return i % 7;
> > > +}
> > > +
> > > +static u16 casf_coef(struct intel_crtc_state *crtc_state, int t) {
> > > +	struct scaler_filter_coeff value;
> > > +	u16 coeff;
> > > +
> > > +	value =3D crtc_state->hw.casf_params.coeff[t];
> > > +	coeff =3D SET_POSITIVE_SIGN(0) | EXPONENT(value.exp) |
> > > +MANTISSA(value.mantissa);
> > > +
> > > +	return coeff;
> > > +}
> > > +
> > > +void intel_casf_enable(struct intel_crtc_state *crtc_state) {
> > > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > +	int id =3D crtc_state->scaler_state.scaler_id;
> > > +	int i;
> > > +
> > > +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id,
> > > 0),
> > > +			  PS_COEF_INDEX_AUTO_INC);
> > > +
> > > +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id,
> > > 1),
> > > +			  PS_COEF_INDEX_AUTO_INC);
> > > +
> > > +	for (i =3D 0; i < 17 * 7; i +=3D 2) {
> > > +		u32 tmp;
> > > +		int t;
> > > +
> > > +		t =3D casf_coef_tap(i);
> > > +		tmp =3D casf_coef(crtc_state, t);
> > > +
> > > +		t =3D casf_coef_tap(i + 1);
> > > +		tmp |=3D casf_coef(crtc_state, t) << 16;
> > > +
> > > +		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc-
> > > >pipe, id, 0),
> > > +				  tmp);
> > > +		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc-
> > > >pipe, id, 1),
> > > +				  tmp);
> > > +	}
> > > +}
> > > +
> > > +static void convert_sharpness_coef_binary(struct scaler_filter_coeff
> *coeff,
> > > +					  u16 coefficient)
> > > +{
> > > +	if (coefficient < 25) {
> > > +		coeff->mantissa =3D (coefficient * 2048) / 100;
> > > +		coeff->exp =3D 3;
> > > +	} else if (coefficient < 50) {
> > > +		coeff->mantissa =3D (coefficient * 1024) / 100;
> > > +		coeff->exp =3D 2;
> > > +	} else if (coefficient < 100) {
> > > +		coeff->mantissa =3D (coefficient * 512) / 100;
> > > +		coeff->exp =3D 1;
> > > +	} else {
> > > +		coeff->mantissa =3D (coefficient * 256) / 100;
> > > +		coeff->exp =3D 0;
> > > +	}
> > > +}
> > > +
> > > +static void intel_casf_coeff(struct intel_crtc_state *crtc_state) {
> > > +	const u16 *filtercoeff;
> > > +	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
> > > +	u16 sumcoeff =3D 0;
> > > +	u8 i;
> > > +
> > > +	if (crtc_state->hw.casf_params.win_size =3D=3D 0)
> > > +		filtercoeff =3D filtercoeff_1;
> > > +	else if (crtc_state->hw.casf_params.win_size =3D=3D 1)
> > > +		filtercoeff =3D filtercoeff_2;
> > > +	else
> > > +		filtercoeff =3D filtercoeff_3;
> > > +
> > > +	for (i =3D 0; i < SCALER_FILTER_NUM_TAPS; i++)
> > > +		sumcoeff +=3D *(filtercoeff + i);
> >
> > filtercoeff[i] instead of *(filtercoeff + i)
> >
> > > +
> > > +	for (i =3D 0; i < SCALER_FILTER_NUM_TAPS; i++) {
> > > +		filter_coeff[i] =3D (*(filtercoeff + i) * 100 / sumcoeff);
> >
> > Just by multiplying by 100, we are losing precision. Multiply by 10000
> > to preserve the precision.
> > For e.g filtercoeff of 0.125 is stored as 125.
> >
> > Ideal case using double:
> > 0.125/2 -> 0.0625
> > 0.0625 converted to mantissa 0.0625*2048 -> 128
> >
> > 125*100/2000 -> 6
> > 6 converted to mantissa 6*2048/100 -> 122
> >
> > If we multiply by 10000
> > 125*10000/2000 -> 625
> > 625 converted to mantissa 625*2048/10000 -> 128
> >
> If we are considering the first coefficient set  then we can either have =
0/2 or
> 0.5/2 or 1/2 so in this case:
> Using double:
> 0.5/ 2.0 =3D 0.25 * 1024.0 =3D 256
> 1/2 =3D 0.5 =3D 0.5 * 1024 =3D 512
> Using integer:
> 500/2000 =3D 0.25 *100 =3D 25 * 1024 =3D 25600 /100 =3D 256
> 1000/2000 =3D 0.5 * 100 =3D 50 * 1024 =3D 51200 / 100 =3D 512
>=20
> So for different coefficient set, sumcoeff will change ie 2500 and 2750 ,=
 so
> multiplying with 100 also precision will be there.
>=20
> Regards,
> Nemesa
> > > +		convert_sharpness_coef_binary(&crtc_state-
> > > >hw.casf_params.coeff[i],
> > > +					      filter_coeff[i]);
> > > +	}
> > > +}
> > > +
> > > +void intel_casf_scaler_compute_config(struct intel_crtc_state
> > > +*crtc_state) {
> > > +	intel_casf_coeff(crtc_state);
> > > +}
> > > diff --git a/drivers/gpu/drm/i915/display/intel_casf.h
> > > b/drivers/gpu/drm/i915/display/intel_casf.h
> > > new file mode 100644
> > > index 000000000000..8e0b67a2fd99
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> > > @@ -0,0 +1,16 @@
> > > +/* SPDX-License-Identifier: MIT */
> > > +/*
> > > + * Copyright (c) 2024 Intel Corporation  */
> > > +
> > > +#ifndef __INTEL_CASF_H__
> > > +#define __INTEL_CASF_H__
> > > +
> > > +#include <linux/types.h>
> > > +
> > > +struct intel_crtc_state;
> > > +
> > > +void intel_casf_enable(struct intel_crtc_state *crtc_state); void
> > > +intel_casf_scaler_compute_config(struct intel_crtc_state
> > > +*crtc_state);
> > > +
> > > +#endif /* __INTEL_CASF_H__ */
> > > diff --git a/drivers/gpu/drm/i915/display/intel_casf_regs.h
> > > b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> > > new file mode 100644
> > > index 000000000000..0b3fcdb22c0c
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> > > @@ -0,0 +1,19 @@
> > > +/* SPDX-License-Identifier: MIT */
> > > +/*
> > > + * Copyright (c) 2024 Intel Corporation  */
> > > +
> > > +#ifndef __INTEL_CASF_REGS_H__
> > > +#define __INTEL_CASF_REGS_H__
> > > +
> > > +#include "intel_display_reg_defs.h"
> > > +
> > > +/* Scaler Coefficient structure */
> > > +#define SIGN				REG_BIT(15)
> > > +#define EXPONENT_MASK			REG_GENMASK(13, 12)
> > > +#define EXPONENT(x)
> > 	REG_FIELD_PREP(EXPONENT_MASK,
> > > (x))
> > > +#define MANTISSA_MASK			REG_GENMASK(11, 3)
> > > +#define MANTISSA(x)
> 	REG_FIELD_PREP(MANTISSA_MASK,
> > > (x))
> > > +
> > > +#endif /* __INTEL_CASF_REGS__ */
> > > +
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index b4ef4d59da1a..224fd0c84f18 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -112,6 +112,7 @@
> > >  #include "intel_psr.h"
> > >  #include "intel_psr_regs.h"
> > >  #include "intel_sdvo.h"
> > > +#include "intel_casf.h"
> > >  #include "intel_snps_phy.h"
> > >  #include "intel_tc.h"
> > >  #include "intel_tdf.h"
> > > @@ -5917,6 +5918,8 @@ static int intel_atomic_check_planes(struct
> > > intel_atomic_state *state)
> > >  		if (ret)
> > >  			return ret;
> > >
> > > +		intel_casf_scaler_compute_config(new_crtc_state);
> > > +
> > >  		/*
> > >  		 * On some platforms the number of active planes affects
> > >  		 * the planes' minimum cdclk calculation. Add such planes
> diff
> > > --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index f29e5dc3db91..de3867faa4d7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1036,6 +1036,19 @@ struct intel_csc_matrix {
> > >  	u16 postoff[3];
> > >  };
> > >
> > > +struct scaler_filter_coeff {
> > > +	u16 sign;
> > > +	u16 exp;
> > > +	u16 mantissa;
> > > +};
> > > +
> > > +struct intel_casf {
> > > +#define SCALER_FILTER_NUM_TAPS 7
> > > +	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
> > > +	u8 win_size;
> > > +	bool need_scaler;
> > > +};
> > > +
> > >  struct intel_crtc_state {
> > >  	/*
> > >  	 * uapi (drm) state. This is the software state shown to userspace.
> > > @@ -1072,6 +1085,7 @@ struct intel_crtc_state {
> > >  		struct drm_property_blob *degamma_lut, *gamma_lut,
> *ctm;
> > >  		struct drm_display_mode mode, pipe_mode,
> adjusted_mode;
> > >  		enum drm_scaling_filter scaling_filter;
> > > +		struct intel_casf casf_params;
> > >  	} hw;
> > >
> > >  	/* actual state of LUTs */
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > b/drivers/gpu/drm/i915/i915_reg.h index 41f4350a7c6c..84b05b57ad52
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -2257,6 +2257,8 @@
> > >  #define   PS_VERT_INT_INVERT_FIELD		REG_BIT(20)
> > >  #define   PS_PROG_SCALE_FACTOR			REG_BIT(19) /* tgl+ */
> > >  #define   PS_PWRUP_PROGRESS			REG_BIT(17)
> > > +#define   PS_BYPASS_ARMING			REG_BIT(10)
> > > +#define   PS_DB_STALL				REG_BIT(9)
> > >  #define   PS_V_FILTER_BYPASS			REG_BIT(8)
> > >  #define   PS_VADAPT_EN				REG_BIT(7) /* skl/bxt
> > > */
> > >  #define   PS_VADAPT_MODE_MASK
> 	REG_GENMASK(6, 5)
> > > /* skl/bxt */
> > > diff --git a/drivers/gpu/drm/xe/Makefile
> > > b/drivers/gpu/drm/xe/Makefile index 8f1c5c329f79..59dc97f30caa
> > > 100644
> > > --- a/drivers/gpu/drm/xe/Makefile
> > > +++ b/drivers/gpu/drm/xe/Makefile
> > > @@ -254,6 +254,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
> > >  	i915-display/intel_psr.o \
> > >  	i915-display/intel_qp_tables.o \
> > >  	i915-display/intel_quirks.o \
> > > +	i915-display/intel_casf.o \
> > >  	i915-display/intel_snps_phy.o \
> > >  	i915-display/intel_tc.o \
> > >  	i915-display/intel_vblank.o \
> > > --
> > > 2.25.1

