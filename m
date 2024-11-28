Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B36439DB2F3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 07:54:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F4F10E254;
	Thu, 28 Nov 2024 06:54:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e/KbnGJm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A3E10E254;
 Thu, 28 Nov 2024 06:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732776878; x=1764312878;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r2otxGIRK9LLm6ULRcJzrk8ucYCiCGAeVCL/vW/1xv4=;
 b=e/KbnGJmvSxXqtnM99CIdGfPjZEhsWyqJkR5JEKd7//F+jA00i+0rq0l
 9NEY+NRWX2iUnfrnN/G+anbOxyd5ud9oQeSCAOv+AZ27l8rCc/ndIUctH
 boMZ+7Sd7JvDWVxnq1vIdcEfWXziXBv9yX2dtPJhBKMU/sHnxTvVxMumJ
 BP0gd2OK0D2FzhyhocAKJKjL88jepcr8q5WHmGSMQuWMQbtNmJ0rb4uUx
 90xfWGAPdsLoPAXvJHvsUkN57NOj/XP427Dz7vVO97aEKWks6C5yaXqVP
 63dytLG642ZO4XaYLTo2AhaCbh2UI2fivpBYAp55JTEQNICoULWritDoB g==;
X-CSE-ConnectionGUID: asrth8vHSbqHajFjDCHzDA==
X-CSE-MsgGUID: zTOXCtTASq+/C7t6xDx+jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="43667355"
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="43667355"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 22:54:37 -0800
X-CSE-ConnectionGUID: XbShpml8TnevjSBohTtO/g==
X-CSE-MsgGUID: V4kKJnETS5moXr4vCplPQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="92024458"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 22:54:38 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 22:54:37 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 22:54:37 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 22:54:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zCjuh67Iq7BAMcJ1GHFjN4PM/lJhtYqV2TIoVOdJ52k5Vs4HYgDQFIFZQnyZ988DezDMpYgeQw1hOyaCiI+lqCWRzI8H9h47N6V2vFohCu0XugtvQfzMxY9FoF7F2ahyWBbESLMWXAU3PRWiWN1MY6IG3V7F7fvHg6Rc9I0Df8nK0tuQQO/QaHGuOr6y+K0p0bf8X1JguuoGizjZ8UbyfoHFHQz/zbddOMHv9G9/vsdL9d5JlXLQCTrABNqkJfYwRDJJo6bjC1CB20NIrnYVd4W9os1SW8GWhMzxw285GdjyaQr3FQCcUPoEu6wEzST/AWkiP/AV5OtRL7H36AJNhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/h6QqBOnCtG8LC49Fzwn7sCbn/3v7025sXkz8odOJgI=;
 b=h8AoLU7ahObFlYqdP2/30wb3IfAOJvJGAn+tmJ5PITx6dv1kKO1ltX0kpCuWXdjfmGd4oCZzO9OZtOusS3u/s5yE7LbBRQ+1o9qz2QIvK6Z45dCoAgpvx6f8Wlt9PPcE79p48JNA+sqVb+0FirIx40eQ5EYQtiNjmj4Fv6DH90uq4WoY+vLUB05ToURjAWvLXl5aL49vxtuYE9CA/hQgkjPnECtF7TMqSmC4IQYXMQ0XTzk1dLVTo1w5QfFODitgDfPnQHg1aUW07l7O3Ep4qgB2RZLjrn2v21awC/7GJMNHmfHPQdrK6zViInvE0OaS4ZP3wXcy0202sBz5f4hFwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by MN2PR11MB4581.namprd11.prod.outlook.com (2603:10b6:208:26c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Thu, 28 Nov
 2024 06:54:34 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%4]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 06:54:34 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Shankar,
 Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 1/4] Add bits for link_n_exended for DISPLAY >= 14
Thread-Topic: [PATCH 1/4] Add bits for link_n_exended for DISPLAY >= 14
Thread-Index: AQHbGsodBGFZssJJvkKXGocblsUkD7LMjq4A
Date: Thu, 28 Nov 2024 06:54:34 +0000
Message-ID: <CH0PR11MB550842F93A89D752EC247725C2292@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20241010041045.2014069-1-ankit.k.nautiyal@intel.com>
 <20241010041045.2014069-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241010041045.2014069-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|MN2PR11MB4581:EE_
x-ms-office365-filtering-correlation-id: 32734aef-b6ac-4c58-64d2-08dd0f79848d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zAtPCKCuCHj77T65eTlzdi1Gqu5cjBQ9dqdIo1/FSqNijDoHqyOi5G2iamqP?=
 =?us-ascii?Q?S6JTSf0usGPwlVgXOgSkMRpjVawFABut1raDichgFJumxuOhreLlwYXnFzrc?=
 =?us-ascii?Q?kv/FlmbdKuyBag7gslUS8qBy2whBLe/jvkfklXQnnMbEITpwjVSxz/Omj2fS?=
 =?us-ascii?Q?m0UUsb+xJV4c8KOPoohEs4dxy2rN5WhBQdxqR8HMtyZUgeS56pM4n/UASSQ/?=
 =?us-ascii?Q?o7LoeYynGpNcrQEhnTC2sxxdfUKPWiG4pS1oz6XbAQbK4UUPMFpTzhIYIGZa?=
 =?us-ascii?Q?TwflhPwSdhNlxOFFkfk8No5Lu8hnfhVLDKkAvFb56upYCAHiG/cwvDqPWKIf?=
 =?us-ascii?Q?buDB5CMkzZ7KAgnDMhKLINdW9B4tM9EXQZZHCy5eWXwf5BbJtC01rSM+VswG?=
 =?us-ascii?Q?4wpa8ys93ZILcvRPlJa7TQFqL0a6+bV9TCDLhLWFoQs6rxIt7lw+xaq+QVeF?=
 =?us-ascii?Q?TCUnHMTSLuAGC7Pl/1SWmMR6/VBGp+kFXjCcRZT0q69rnz5o1k5xim0ShmG7?=
 =?us-ascii?Q?vbw1VmGdf3DuJcX0emhdNtc23FbMtayrenUmG+xMauq/HQCULKtv+TFaK77y?=
 =?us-ascii?Q?ZCQNUb1eykOUME2K0oIU8ZkrFOt932jYi0gb1aqisXnM5mWoL/D4RIsNF6Dh?=
 =?us-ascii?Q?YNWVmfc/Xb0z8HQLb4LUqr0B5IYHb8/t48biS7l05qU3FzC/IXH4808mkbIY?=
 =?us-ascii?Q?WUZoqDlypVOKsQoC437mKbqQ1Rbm8uaHMVBKeU+CL8EJ7ueM/sfwu7pJsc28?=
 =?us-ascii?Q?JwXMBoVLyHDRr9YWEJ29Go9msGZC1vMZdZbGfZ85PxvDfg08fq28AQ8W1hy+?=
 =?us-ascii?Q?K3YSrbYd0kq59dFL8FJDqJUn3X9bfZGyx4Vj7TOnLeVGESy2GuHjBjlRvAx3?=
 =?us-ascii?Q?hdRBkshsqmA2ckhHtjdgF9sEWMaCFQKpKtO9jUgRU+TtWdWk+06y1RYP+nku?=
 =?us-ascii?Q?BKe2LJoNG0RK1cyC73gCFGlkDmYqaFlMaBw5kE4X4ChuS64QWOLKOqxmCFdR?=
 =?us-ascii?Q?dlITmYPKo7sIynipISFcAC8L/4ZDeiiBLsy6A/TCnTSaXFIG3d7oPXWE5pfu?=
 =?us-ascii?Q?J5SX3aLNZAfwkyz8xAlM9pMTRm3jSXJQWezAeCzb1A4yd4PcHzoi208arfVm?=
 =?us-ascii?Q?LcfjQMBr32QMSUcvpTpEr5Doy5LFKGbmErEddmOeB/58Z4h5XJtomWTcEYht?=
 =?us-ascii?Q?b5sNxD3goXqMydtUkoF1RffCWuKRZ7CaZa1MZ9Zb0+OxiJGpt99ZGJ+4OlTK?=
 =?us-ascii?Q?CeLnegWRUDWV5hgv1VtmdOYAzspsyyckIP8FczrpS1WMCt/3GG6+rc6jtCTe?=
 =?us-ascii?Q?3G5lkIhIawJG39ap+xRbJeaf07EJoLiGBWa7loHgQTWQkSILEWFvBdSIhCEc?=
 =?us-ascii?Q?/oj992IH1To1ERqKHZvItzFzXZtqizGcfRnKE9fMo+8wnVxqgw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tkgyQP7jPidvdEnC2CQ+FOs9LA76xmt1GSbw8SuWe0XZB0msVXWHdbGKH46f?=
 =?us-ascii?Q?E25LbmWxv1JW08QUceEImXXph4LZT39jY/NUl4F45Dvgo7yhRparg0ThRRQL?=
 =?us-ascii?Q?IFdmIUoX4U7kimxPEpNOT/gqJvMk+XWpi+0Nn6EFVeQfhQ+j+F/YguzciuUH?=
 =?us-ascii?Q?ex41/KyppsgY0BSQSyNbnERIo62uF99RYmW9R6WBaNffHMd3MnzFRBoHPCA7?=
 =?us-ascii?Q?EsDK44blwUzJTqJbnzhUrSmIg8lOQTFLZ0cauKiNq1qcZG/nrpOPJuwTJD5t?=
 =?us-ascii?Q?c9ONTeH2I0MGxsdl9mq3Be5qUmCGUjO7VahJcqVyAAFqAPJTEqQKTkxXdlPF?=
 =?us-ascii?Q?q3bTT4YpCwstoDD4+yls87W1teLCVkrk4E7VAmR+YrSGMVb5uQUE/duysORW?=
 =?us-ascii?Q?Md7Qh/i4DgLxlXTiwYE4cItsPAPnBQw8nNXdxqVQ1PFtx8sVMFX0EF0EqZAW?=
 =?us-ascii?Q?CPY86EItnJnYmHC/toS34/wAnv8smDJ7XU+zIf2hV9KU+YmRZGSE4rTsnGs+?=
 =?us-ascii?Q?gzx7NK3q1IQjAM/iGB151CMR0iXMPPF62SHTPgIgI2fZycS0u7X/4ghpYmZu?=
 =?us-ascii?Q?A8tjpphA5g6MwFuiQPtfBgUPqNOMM6kABhMl3JpvfXcw1gR5FhVLRk5X2mE1?=
 =?us-ascii?Q?2WiKis2emxwWVQUn1YyVLVxXsLruoizK7O4KnW+p/AsaKQQB2L91qSsRK/CY?=
 =?us-ascii?Q?EGIHqL6Ma6UNaDDw7Ysm/AazSzjZX7IXuiMNR87vdDpBby8t3ZEeWVKeols/?=
 =?us-ascii?Q?Oeqbtn+7lGGY9YhB+ETU5/roV+lp7cev3+rTX5EKDG1Va8gTcwApb19YKmzJ?=
 =?us-ascii?Q?Q79/iI5yLfTBwaVn3td8uddzN0BwwN7Ke8VFlhTAI/4C0oZO3/6p+/EJhKsW?=
 =?us-ascii?Q?unGh1pp3gd+Km+aL76fuoeanw1bMjHL1i8eq0lQuRVVP5tTBcpl+Y5papCR4?=
 =?us-ascii?Q?3pRSHltMsSMvcM0qImg6XJvxANZ+gSSOUjU1Ckf7NGyYZutJeaaJA4//LVW4?=
 =?us-ascii?Q?5mkNEd4IQpRZdX4Cbe5dR8M3J7imEK5On+2SeXfWb8PPtqxv4S8Yxrmnsm9i?=
 =?us-ascii?Q?b3Z5f59YBnoHu/ppBinaTj4sRq9IggCD3uWL0zYvZTTQio6gSD+HcTIEEiHd?=
 =?us-ascii?Q?yrGiN3X8f4eZKnPeljn2/LzFh7LKwR2GsmuxaDEHYNn94lFtg4ww3LtOpoBn?=
 =?us-ascii?Q?6BOOYoIqmLA2WqQUARG6Nb99cwmaF6WCwW3XrrrCqP/Q4PNguyFSIp1bdw1k?=
 =?us-ascii?Q?LuzY6JGEoN3Ok/Mu7VhnaHHpK0kFUid2agWPpSkfyTqbySa+C8xZ3ZQR6dSO?=
 =?us-ascii?Q?XeX/rxNy5C+HcmIF3vFH5ZQuT/99IKgZpuYwC8EBojumWIySDxFsOTEgu19c?=
 =?us-ascii?Q?kjn6AMZAnSeLp2YZsqLLKa2fKelybipuc7AeVMr8RZ+9uhdMG9QTSIk1X7TA?=
 =?us-ascii?Q?oLS9Vv4DSVOpmOQxtGwrE/FzAPkzr8C8kMmwY0hpDAohDx95WqJDI4j2pd6q?=
 =?us-ascii?Q?qpLnpj0NEoYkpLLDDbXEYiE+SMwrUN07GqHR9+L30R5Thsw/of2oWmBrrp4C?=
 =?us-ascii?Q?VEmfARA1fnbA+HT6yLVvYlBgyDnzLDdmyIQtC7BpNPBGh9+vB3dye31u0kmp?=
 =?us-ascii?Q?ng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32734aef-b6ac-4c58-64d2-08dd0f79848d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2024 06:54:34.5565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h+ZCxenArdzlHAJdu5tWbR3FPiR/34m/uJJYVqzteJTIa2xzCI2NxuVoH9Nl/+xaRvvyKqUmXSiFYl9EIbc8kqjSprLLPkqfiiBZNfhjlLDoDRt+IOIvk8ZOMpv9s16d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4581
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Anki=
t
> Nautiyal
> Sent: Thursday, October 10, 2024 9:41 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH 1/4] Add bits for link_n_exended for DISPLAY >=3D 14
>=20
> LINK_N register has bits 31:24 for extended link N value used for
> HDMI2.1 and for an alternate mode of operation of DP TG DDA
> (Bspec:50488).
>=20
> Add support for these extra bits.
>=20
> v2: Drop extra link_n_ext member. (Jani)
> v3: Avoid link_n_ext in set_m_n helper. (Jani)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h              |  2 ++
>  2 files changed, 17 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e1f6255e918b..2a7fa0013b44 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2721,14 +2721,21 @@ void intel_set_m_n(struct drm_i915_private
> *i915,
>  		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)  {
> +	u32 link_n =3D m_n->link_n;
> +
>  	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n-
> >data_m);
>  	intel_de_write(i915, data_n_reg, m_n->data_n);
>  	intel_de_write(i915, link_m_reg, m_n->link_m);
> +
> +	if (DISPLAY_VER(i915) >=3D 14)
> +		link_n &=3D ~PIPE_LINK_N1_EXTENDED_MASK;
> +	else
> +		link_n &=3D DATA_LINK_M_N_MASK;

I think, (~PIPE_LINK_N1_EXTENDED_MASK) and DATA_LINK_M_N_MASK macros
result in same value as 0xFFF.

>  	/*
>  	 * On BDW+ writing LINK_N arms the double buffered update
>  	 * of all the M/N registers, so it must be written last.
>  	 */
> -	intel_de_write(i915, link_n_reg, m_n->link_n);
> +	intel_de_write(i915, link_n_reg, link_n);
>  }
>=20
>  bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
> @@ -3438,7 +3445,13 @@ void intel_get_m_n(struct drm_i915_private
> *i915,
>  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)  {
>  	m_n->link_m =3D intel_de_read(i915, link_m_reg) &
> DATA_LINK_M_N_MASK;
> -	m_n->link_n =3D intel_de_read(i915, link_n_reg) &
> DATA_LINK_M_N_MASK;
> +	m_n->link_n =3D intel_de_read(i915, link_n_reg);
> +
> +	if (DISPLAY_VER(i915) >=3D 14)
> +		m_n->link_n &=3D ~PIPE_LINK_N1_EXTENDED_MASK;
> +	else
> +		m_n->link_n &=3D DATA_LINK_M_N_MASK;
> +
>  	m_n->data_m =3D intel_de_read(i915, data_m_reg) &
> DATA_LINK_M_N_MASK;
>  	m_n->data_n =3D intel_de_read(i915, data_n_reg) &
> DATA_LINK_M_N_MASK;
>  	m_n->tu =3D REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915,
> data_m_reg)) + 1; diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 818142f5a10c..c605642ffc3e
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2167,6 +2167,8 @@
>=20
>  #define _PIPEA_LINK_N1		0x60044
>  #define _PIPEB_LINK_N1		0x61044
> +#define  PIPE_LINK_N1_EXTENDED_MASK	REG_GENMASK(31, 24)
> +#define  PIPE_LINK_N1_EXTENDED(val)
> 	REG_FIELD_PREP(PIPE_LINK_N1_EXTENDED_MASK, (val))
>  #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran,
> _PIPEA_LINK_N1)
>=20
>  #define _PIPEA_LINK_M2		0x60048
> --
> 2.45.2

