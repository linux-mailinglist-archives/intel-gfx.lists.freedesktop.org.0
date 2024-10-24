Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C2B9AE135
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 11:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1560A10E8E1;
	Thu, 24 Oct 2024 09:42:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nHLCAash";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A30010E8E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 09:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729762944; x=1761298944;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HdH2F/YMxYeOfjU+eGyftPrfQEJzBRu1KV/M4wxqPsE=;
 b=nHLCAash5Sw86oHMLBv0SnyWECLz8hj0E+y3f5ZvGX3zN51L557r+2kE
 PzrVotkG2RFm6rznvD3aASS/9wimIQxvGeNd4CoZzOOLLbQYCn9+gTOmj
 tHHTn5P6vb6sSrBlsTZsRc/uunBfJoDZyxf2Lu1pbTKAiES+NAquJASWx
 p3gRSgoQ7ErdGCJobET5i8sdUawEpoowJFFwV/FGkEyrSe5uGBJjCXoMV
 J077bF/dkERNx+JCC7ECqrWsD9dxjNhFSchrMa4+OPVRjH8WYUDxtnB8S
 1qQvdFDob0GjIjjy4Gsvs5bocKcYpBbuTtq2xfkJtntJl4THsV42XyYrY w==;
X-CSE-ConnectionGUID: lvg5QyFcTZSOM3f+k31slA==
X-CSE-MsgGUID: 7SvXdl8pSya/2eojPvBxQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39926666"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39926666"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 02:42:23 -0700
X-CSE-ConnectionGUID: 2CfC54T5RIyXUyjzKoXXLQ==
X-CSE-MsgGUID: g1huscYqS6aVqIOjBUuUgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="103854971"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 02:42:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 02:42:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 02:42:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 02:42:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ll2nO0HD/HvHmFqFUxWzPjUo9t5JG8JE2pA2SkYJz+DVDzto9fM75UOt6/61RH4YfrbI9xAdGwjWvKk3LRfQ/4x4aWiwx9JCQETM+ERQXfA9B0WAk3snCQIOymjcBICsNd8nksmQ9hUgXAaoxhshChWm/tTAlyxoHd2Q8Qia+hCiJABhRlgaAWaRNW1BVcHv3P+fNiF6Io1BNPdcrII9quD1ABqcaTO+CVJm2ZAMxpR1yJ9J6lVojMLT5IVRs0tOsmcuwyoCttwRAhDOGmhWAjAOfXXPm2Kvx2F++jUCXV40vb4XohyVGF3G4IkT0p/3dFQl5y23lEQr4UdfCBJnOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fuFm3wtVYbqcx6lH7Mrr9PfNLflcMKPIUwwyhc0JNLA=;
 b=pGkNJ0XNIRIG8mym1MAcB+ygbajTB23vF27q6FqYmZsCWzpRKszI0nvKAfuwEpDMRFuhAlkZuCp9+O00ZZH7PhmFvZD/FBW3aOzT+5Xfob33EA2xLX7elTGnwR+BSjAVcQItcOPGT3gglshs5UHO4r+u+6QJFTky3rUYcWNJHtMZ8k4/2lmVPmUdbLUg6xA3FYT0ypJ/ca4peC3UnUZpy/YgpcjkdRdRhCbdyIiHtPz+A0NIiMvGtbPdHhL8VjFlQ74uIw0JwO1X+LPwR4ge3kjoIryO7QzAIJKgrMQiygUY7XNol9WxMTpg0J75SOdU0SsXdKuCd23qgjc7DCqj0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB8786.namprd11.prod.outlook.com (2603:10b6:208:59b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Thu, 24 Oct
 2024 09:42:14 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 09:42:14 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915: remove all IS_<PLATFORM>_GT<N>() macros
Thread-Topic: [PATCH] drm/i915: remove all IS_<PLATFORM>_GT<N>() macros
Thread-Index: AQHbEzddCbVD1gKgTEqJkxkpxfrYALKVy1eA
Date: Thu, 24 Oct 2024 09:42:14 +0000
Message-ID: <DM4PR11MB6360B753F3F3CD629F376D37F44E2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240930124948.3551980-1-jani.nikula@intel.com>
In-Reply-To: <20240930124948.3551980-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB8786:EE_
x-ms-office365-filtering-correlation-id: dda2e447-861b-4cc1-9028-08dcf4102457
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?fX3sx+1lrXAvUvwjSzgdeeJbtmN2YXKbvGWaUKOfAGWzdUH4isSWRrz3ChxX?=
 =?us-ascii?Q?wLxBTBcW6G8Xa4x0RQZodsBeBIpcxuQwe+sFmI1SlBApFqcQBWamGSWuXhcs?=
 =?us-ascii?Q?pJRKZr1FjMoNhupspvzBs0fGLrM8hfpIUTPvRSGZAFSwdCu1jdUd5TuxfC5B?=
 =?us-ascii?Q?dmmDVFsfBNxV4n695bY6bBFFrWRLeQPf3zhYQpLLZyHFqJjEiSV1G0B1UrJ9?=
 =?us-ascii?Q?rGDELbq+jedYPfbpQ+EPLPTt71AkImAmPMvR5y+svZKQB3TWXtdFC6bICcAg?=
 =?us-ascii?Q?UW1w18FFHOFArHsmUfZcZlNj6Ct4EJRcFMoqlCnhF8H0aOUxVU9XCdZ9g0Q/?=
 =?us-ascii?Q?WK73ZfBL1VbgPkEj3Z6Ztzu//gCtdrde7hFddtpvEwTOf22x4hrCNVq+/p/8?=
 =?us-ascii?Q?J/Bl6SvbxDcXc2hP3mQMZaas334NLL7oDAZM78vbKQaXB2F+G/Icu2h7Shxi?=
 =?us-ascii?Q?YWRRLdBzBtoQ0KWGI8wrC4oiaZaHEueXz4ERcttETV0mVq18Ip7IF4iiSluu?=
 =?us-ascii?Q?+GIrDwpn/3Eva77iPX+0dAAHqMQiCA8sfxTlg7ob1YXqRzA0fItVNi+hXqj2?=
 =?us-ascii?Q?choWX4+XzqHjbQuxa+zanFTxE5fSo7nsAGi0+vM3+mKG1UuvLDbNkbk4rRmR?=
 =?us-ascii?Q?F5nYShLjRgdcgoNY3Sx64SqXOU46/3WmIky6y1mqsaIQp+vCtJarjY9nYbsa?=
 =?us-ascii?Q?eK2KrBsI5VPuVQyhl/81EOR2YqjEAw9vWBbXyTBveId6ORLT8BvgeQ6XTwZw?=
 =?us-ascii?Q?sqvWMz8PRIJzZqdZbLfF51FXH4YiZX5aYTe2GN4tZBEy3AxNqQ5eU1tY283k?=
 =?us-ascii?Q?S0rF/NYBPvoebI4GLBIlo+pNPPPKENRQiyZKoSJFHR/ptiGt9mbsZdZVMSYq?=
 =?us-ascii?Q?LUinw/T+jn9aN8GnzR2V+1zkYc4d8UrMSm6CDl8gUhVntpgI8YKafZBhISQ3?=
 =?us-ascii?Q?TlN3DiKnkFdMUXsahkOqI47XIygv2KvYpRYn1peifphiNXKjRVxk2iePveS9?=
 =?us-ascii?Q?6yB8c96cvsLZLzPKo6/XicMZivaPZ39I45Sw3f36RbHg/IBVh4XMIVzHo/bT?=
 =?us-ascii?Q?XCsYBmJaEe9EQ07zTP4PyMUGwbZN+Z3aBxk0+PxC9oE9MhN3F9FlbApHXEal?=
 =?us-ascii?Q?twYT141ZYlV/FYPCXIWEMqQG2EoI1NFiWnF2/X8fc3OnjcfGpH0F5WR3adrv?=
 =?us-ascii?Q?5N5X9VZCWgoN8zUyvGfNAR5qmNkeoGKEPrpcChgPpU0zoTxCl/JbxAFHW2M7?=
 =?us-ascii?Q?Q6gBn28hGmvA/MNxhKPIgacllWVLKfijcbUScBwATN5xucXAoC/V74G70kiu?=
 =?us-ascii?Q?iSKe1virKRcPRaiA9xqf/1QWUAArNvJbUjuAPcqF/uJxm6Uf+dwtez+i2oAg?=
 =?us-ascii?Q?hcozk4k=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aHjs7W73MTI4wI7yw0eyARsDwhb99h297GnBKZnvpfzWHScSPWlBwjMwPFId?=
 =?us-ascii?Q?OpnX9e8J/QGDQ93h9v/BA0YviM3wP3nKHQ/GLxQXw4JX99zrGe53jvzPJKjf?=
 =?us-ascii?Q?CiemFTteL/F9PuzGWkv2i5izL8NquBmKHS3rJI9j90Wcdyq9jxh2bAi60FzC?=
 =?us-ascii?Q?NpQMzAFfe9qz9VfJNhD0AN8gDVTl0wkfZ3SRXD5LBnvHshyO4xoWCH9XWN/F?=
 =?us-ascii?Q?h9XkLaDY0KuEjnd7yDu1u5NFUGI5NCvZThh1SflUTsUGB/SDt+4Adus9DFn8?=
 =?us-ascii?Q?fEVwq+nxibuiKBk276mjgOpDQpfDFUdCIibp1IueVW+nhn89jrjmZBYSZite?=
 =?us-ascii?Q?c11jw7/C0BCqb6bu/TwllfdZf/FZ5j9R7JQScw9XO6Ax8/IRaopVLAtn/jNj?=
 =?us-ascii?Q?kWVDj8hsxHtIGtJB5LLF6/8NFas5E6/6F7vibnKrMFPhQNJj6a7lUz/YRWvf?=
 =?us-ascii?Q?WQBEX1lIYfct+1dkJpCHRMHvcNGmSu8SfdDglx2h9NTnl+lIs68ofHcXvuyC?=
 =?us-ascii?Q?w6PJOeDSK27gnm8GKPezME4C7U4c1BfCfDR280UNqENJ+TZIe0b0AThhKXh8?=
 =?us-ascii?Q?U0I/TIIYdJc/9O/hfHuZZ/4esk9izXiodotrnu4+bcLL098htvxd6f4Dsqyc?=
 =?us-ascii?Q?rqm9Xnfg+g/tR9/dh/YYbXY6uOR09JcKiNdR0xV13PJWExIpILj5YSTSLYd+?=
 =?us-ascii?Q?1ffkNA34IlFARaYKvIUlsqdasfvSx3HgIjxsrWmoFEFCFLRAa0vIRbCa1BTN?=
 =?us-ascii?Q?juOrBBIhaJ6vBc+esBo2gIAv/4FJhRPqb8NvEz7WYt2quyQoaUsyoDdjCXaU?=
 =?us-ascii?Q?F13SlOX24MN1nAkAhGp2tJi5Ith7Jn7Y+32QbcTqQz0xxefH+1byAbP/vxM+?=
 =?us-ascii?Q?BAGGrlMM/4MMDr9hcxlH7XLk+h+2/NIVuceOLlapaZBP56hx4VFYZK3r6Yeo?=
 =?us-ascii?Q?O4Npr/8SWI1jrkBSx7/XiRtCt05QF/zOjE12dY96s9tD53iYt2Ukeo2qeKNo?=
 =?us-ascii?Q?ZwG7PfaJXGSERR19qIFTqMSLXZigLL8LAqHLA3un9TYAVaYhZvwQTTXR7qPP?=
 =?us-ascii?Q?4fnzUVvqZyyV0U0lsBEm1pKW+UuHsA+Ws49jU/a87gcYTSjWZ8dFz6DwKf/p?=
 =?us-ascii?Q?LFTS8y8yPfqIOcAl/4OIJKjwcYNYuYb4YvCjL9Q/UbYj4ryo7SUvw0DFj+lB?=
 =?us-ascii?Q?C7KiNb0Toh4Om77dhkR/2UVs5EHv1wxInI1j7Nhp6V6GriDwjLFypC3YzP/8?=
 =?us-ascii?Q?TcidYytfIFoE/PVFZA5BTbdmC2UVlgXFL/0xY0XKVbz5dopUWhqjeJz33W15?=
 =?us-ascii?Q?N/RAGCUjY4DzvPNC80H05lSARo0qU/G+L3wQdBey8TTciBFsjDhK0lUvAFgq?=
 =?us-ascii?Q?Fx0x79eqVYSbngCU4MmZnK6raCXuktcB9vOChqzri9qAkMJKNSsIAIgLdYG+?=
 =?us-ascii?Q?HiLd8DCI49NeaDinJCwQfoCT2MnpRfWUgQeKeQWrKjb/acOGsR0etV7gU+6m?=
 =?us-ascii?Q?PXgREsa9lFZsYHCd3t1Wn/6iSq0ZGoC/ulabzVUpaXa7XiP8N/y7KEGjin3U?=
 =?us-ascii?Q?CWzVP5QJWDU88eIEMYkoWuhc8+U7wwXLnmf0zdrE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dda2e447-861b-4cc1-9028-08dcf4102457
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 09:42:14.5909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: inAgNZ71qxQexWVGGUPwC75HgJVwulSR8yZWBnqPbka2j7XAlHLGiuod5Xj7maNJyckOaI6lE+g0QRoCYwpDVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8786
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Monday, September 30, 2024 6:20 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH] drm/i915: remove all IS_<PLATFORM>_GT<N>() macros
>=20
> There aren't many users for the IS_<PLATFORM>_GT<N>() macros, and many of
> them are in fact unused. Even among the users, the platform check is ofte=
n
> redundant. Just remove the macros.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen7_renderclear.c  |  3 ++-
>  drivers/gpu/drm/i915/gt/intel_gt.c          |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c |  4 +--
>  drivers/gpu/drm/i915/i915_drv.h             | 29 ++-------------------
>  drivers/gpu/drm/i915/intel_clock_gating.c   |  2 +-
>  5 files changed, 8 insertions(+), 32 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> index d38b914d1206..6e89112f68ae 100644
> --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> @@ -399,7 +399,8 @@ static void emit_batch(struct i915_vma * const vma,
>  	batch_add(&cmds, MI_LOAD_REGISTER_IMM(2));
>  	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_0_GEN7));
>  	batch_add(&cmds, 0xffff0000 |
> -			((IS_IVB_GT1(i915) || IS_VALLEYVIEW(i915)) ?
> +			(((IS_IVYBRIDGE(i915) && INTEL_INFO(i915)->gt =3D=3D 1)
> ||
> +			  IS_VALLEYVIEW(i915)) ?
>  			 HIZ_RAW_STALL_OPT_DISABLE :
>  			 0));
>  	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> b/drivers/gpu/drm/i915/gt/intel_gt.c
> index a6c69a706fd7..d6674aec82fc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -185,7 +185,7 @@ int intel_gt_init_hw(struct intel_gt *gt)
>  	if (IS_HASWELL(i915))
>  		intel_uncore_write(uncore,
>  				   HSW_MI_PREDICATE_RESULT_2,
> -				   IS_HASWELL_GT3(i915) ?
> +				   INTEL_INFO(i915)->gt =3D=3D 3 ?
>  				   LOWER_SLICE_ENABLED :
> LOWER_SLICE_DISABLED);
>=20
>  	/* Apply the GT workarounds... */
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e539a656cfc3..60492c15893d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -418,7 +418,7 @@ static void bdw_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>  		     /* WaForceContextSaveRestoreNonCoherent:bdw */
>  		     HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT |
>  		     /* WaDisableFenceDestinationToSLM:bdw (pre-prod) */
> -		     (IS_BROADWELL_GT3(i915) ?
> HDC_FENCE_DEST_SLM_DISABLE : 0));
> +		     (INTEL_INFO(i915)->gt =3D=3D 3 ?
> HDC_FENCE_DEST_SLM_DISABLE : 0));
>  }
>=20
>  static void chv_ctx_workarounds_init(struct intel_engine_cs *engine, @@ =
-
> 2537,7 +2537,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, stru=
ct
> i915_wa_list *wal)
>  				 GEN7_FF_DS_SCHED_HW);
>=20
>  		/* WaDisablePSDDualDispatchEnable:ivb */
> -		if (IS_IVB_GT1(i915))
> +		if (INTEL_INFO(i915)->gt =3D=3D 1)
>  			wa_masked_en(wal,
>  				     GEN7_HALF_SLICE_CHICKEN1,
>=20
> GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index def3ca135406..49e03c9d38ba 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -507,8 +507,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_PLATFORM(i915, INTEL_IRONLAKE) && IS_MOBILE(i915))  #define
> IS_SANDYBRIDGE(i915) IS_PLATFORM(i915, INTEL_SANDYBRIDGE)
>  #define IS_IVYBRIDGE(i915)	IS_PLATFORM(i915, INTEL_IVYBRIDGE)
> -#define IS_IVB_GT1(i915)	(IS_IVYBRIDGE(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 1)
>  #define IS_VALLEYVIEW(i915)	IS_PLATFORM(i915, INTEL_VALLEYVIEW)
>  #define IS_CHERRYVIEW(i915)	IS_PLATFORM(i915, INTEL_CHERRYVIEW)
>  #define IS_HASWELL(i915)	IS_PLATFORM(i915, INTEL_HASWELL)
> @@ -561,14 +559,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_BROADWELL,
> INTEL_SUBPLATFORM_ULT)  #define IS_BROADWELL_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_BROADWELL,
> INTEL_SUBPLATFORM_ULX)
> -#define IS_BROADWELL_GT3(i915)	(IS_BROADWELL(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 3)
>  #define IS_HASWELL_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
> -#define IS_HASWELL_GT3(i915)	(IS_HASWELL(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 3)
> -#define IS_HASWELL_GT1(i915)	(IS_HASWELL(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 1)
>  /* ULX machines are also considered ULT. */  #define IS_HASWELL_ULX(i915=
) \
>  	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
> @@ -580,31 +572,14 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
> #define IS_KABYLAKE_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
> -#define IS_SKYLAKE_GT2(i915)	(IS_SKYLAKE(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 2)
> -#define IS_SKYLAKE_GT3(i915)	(IS_SKYLAKE(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 3)
> -#define IS_SKYLAKE_GT4(i915)	(IS_SKYLAKE(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 4)
> -#define IS_KABYLAKE_GT2(i915)	(IS_KABYLAKE(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 2)
> -#define IS_KABYLAKE_GT3(i915)	(IS_KABYLAKE(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 3)
>  #define IS_COFFEELAKE_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE,
> INTEL_SUBPLATFORM_ULT)  #define IS_COFFEELAKE_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE,
> INTEL_SUBPLATFORM_ULX)
> -#define IS_COFFEELAKE_GT2(i915)	(IS_COFFEELAKE(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 2)
> -#define IS_COFFEELAKE_GT3(i915)	(IS_COFFEELAKE(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 3)
> -
>  #define IS_COMETLAKE_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_COMETLAKE,
> INTEL_SUBPLATFORM_ULT)  #define IS_COMETLAKE_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_COMETLAKE,
> INTEL_SUBPLATFORM_ULX)
> -#define IS_COMETLAKE_GT2(i915)	(IS_COMETLAKE(i915) && \
> -				 INTEL_INFO(i915)->gt =3D=3D 2)
>=20
>  #define IS_ICL_WITH_PORT_F(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
> @@ -678,7 +653,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>=20
>  /* WaRsDisableCoarsePowerGating:skl,cnl */
>  #define NEEDS_WaRsDisableCoarsePowerGating(i915)			\
> -	(IS_SKYLAKE_GT3(i915) || IS_SKYLAKE_GT4(i915))
> +	(IS_SKYLAKE(i915) && (INTEL_INFO(i915)->gt =3D=3D 3 ||
> +INTEL_INFO(i915)->gt =3D=3D 4))
>=20
>  /* With the 945 and later, Y tiling got adjusted so that it was 32 128-b=
yte
>   * rows, which changed the alignment requirements and fence programming.
> @@ -739,7 +714,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>=20
>  /* DPF =3D=3D dynamic parity feature */
>  #define HAS_L3_DPF(i915) (INTEL_INFO(i915)->has_l3_dpf) -#define
> NUM_L3_SLICES(i915) (IS_HASWELL_GT3(i915) ? \
> +#define NUM_L3_SLICES(i915) (IS_HASWELL(i915) && INTEL_INFO(i915)->gt
> +=3D=3D 3 ? \
>  				 2 : HAS_L3_DPF(i915))
>=20
>  #define HAS_GUC_DEPRIVILEGE(i915) \
> diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c
> b/drivers/gpu/drm/i915/intel_clock_gating.c
> index 26c4dbda076e..f76642886569 100644
> --- a/drivers/gpu/drm/i915/intel_clock_gating.c
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> @@ -502,7 +502,7 @@ static void ivb_init_clock_gating(struct drm_i915_pri=
vate
> *i915)
>  			   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
>  			   CHICKEN3_DGMG_DONE_FIX_DISABLE);
>=20
> -	if (IS_IVB_GT1(i915))
> +	if (INTEL_INFO(i915)->gt =3D=3D 1)
>  		intel_uncore_write(&i915->uncore, GEN7_ROW_CHICKEN2,
>=20
> _MASKED_BIT_ENABLE(DOP_CLOCK_GATING_DISABLE));
>  	else {
> --
> 2.39.5

