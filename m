Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6619F9E0251
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 13:38:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 069A210E71D;
	Mon,  2 Dec 2024 12:38:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ap66eWyw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD8EC10E717;
 Mon,  2 Dec 2024 12:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733143130; x=1764679130;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=efU5ibOWNhtH5kIv/+pXkrDmINmPh4ilH04xSuvyOWI=;
 b=Ap66eWywdiVUOlDLeqp59PiCXdQ7HcpyDMDjE/59S56r+gTkG2bb9XWC
 iQLEw+RumJBH2upfqM2nHqJYDaHftS2mdO2RhXxAKhuk4nR9apzuzwAby
 2RJXB7TRaGO//n2sNeQz7EMscxgVinmqIroDhbvq+a08WlWQBHggbKo95
 yf/aY8cMnJi1uxlixK9Sw5VpkRRXt1k6rH2XJdS+XiD20jnYrcfVSTuN2
 7SS36r764Rs55ZnsMfkPwCTlvmsUmlzPOtWau1Bvin593kDfOpMSoonol
 cl0h54St6x3ehGqF/YbKH5GLlFt2Z9FQX9GlJgINpwHNtMAqjwxfSgC7f Q==;
X-CSE-ConnectionGUID: qpXkEUfVReOBgmdrSdryHw==
X-CSE-MsgGUID: OmPfum33QOW93ytHZ39C7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="32659465"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="32659465"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 04:38:50 -0800
X-CSE-ConnectionGUID: 4ahPcCQ9Rbudo5JJ7+Jqlw==
X-CSE-MsgGUID: DkP/nQcCQpmXnfQwim6Evw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="93408324"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 04:38:50 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 04:38:49 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 04:38:49 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 04:38:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oqOddVUNn3HxD009a/XE1FS00PNNfiHg10gdQB7vrOub2Bw8j6oKtwsRgM5UohIHunPD64YbAWL7JjaljA85BqCFIy5ubr6XkjKL8LOojaIm9AxRoarSRoehzkusL+3IJHa+sSdnmBvEoWZD3tuFjhJgxKc4/RoMiZ0PsXcSFkK+ziUAv71V26STjFfbu6Q9HbSgiU854QUJbJ/zFifpQe8LxfK51QrpbYfowtQ9gXpwYAV6/3rhF3wwsVkuXF6kfH82M2Xh90+r3VkYMctBFJR9h5ScDnVaXUYDwle+Uk0O2nAiWX4VGwGKKUe7/lKg2Kv8woPBRVcJYCMqw9N3bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oKzqil8LoPVVuCohHtf9DB/s264du03iMaUoDCpAuF4=;
 b=T69Yu+uMGkjqcNdiZ3zuwFusLIm12tZ4zfV/mAjWTSoKE+qz/WCJHGt/HnqxYHt5A7OORJbfWaxBnBP1zYLgGcFtkB+s4jqNLNPnlO71dBWGmJEB/Eje4fRXR2RfoHbRInqWg2m2uIKr06ssnJWuf6x4THJP7hsg+sCwnGgH4QyL8F+elXfIYIdq48heXNIgAXPtV78IJ086KKDO5ugVg1ePxKPLlqQT68jwfRXhSjmYLvgSUZrIQaso/TWtxfH8jyW/5rzlTpXUNsyHM+YNvohSVQ9SWJaYt3gUU2kR/y7z8T3WSOYGziLuzCw4I1aTrX3faN7I7PHrxcBKzooLdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SJ1PR11MB6105.namprd11.prod.outlook.com (2603:10b6:a03:48c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.16; Mon, 2 Dec
 2024 12:38:47 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8207.017; Mon, 2 Dec 2024
 12:38:47 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 5/6] drm/i915/display: Refactor DPKGC code to call it from
 atomic_commit_tail
Thread-Topic: [PATCH 5/6] drm/i915/display: Refactor DPKGC code to call it
 from atomic_commit_tail
Thread-Index: AQHbN3fJYsQ/NFrZz0KZDZsA3pG7S7LS/BLA
Date: Mon, 2 Dec 2024 12:38:47 +0000
Message-ID: <IA1PR11MB6348896E355A19DBC08C928DB2352@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
 <20241115160116.1436521-5-suraj.kandpal@intel.com>
In-Reply-To: <20241115160116.1436521-5-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SJ1PR11MB6105:EE_
x-ms-office365-filtering-correlation-id: 0ed47730-a1d9-4ea1-53e1-08dd12ce4419
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0UbG9wclwCjOvCqVOs6PGft9GpWNABP/a26c47bsgfGzooLjNS6Q8Oti6g7V?=
 =?us-ascii?Q?eovlizQODsKyR4qTTSewkvlj3mOOUCtsiKGAs/xwIKVVxNp5tVwQ34j1rv7A?=
 =?us-ascii?Q?gT7GODmkSKsS+0ivirRxeNxK9lwuKrTMipHIg99K4DB3R5AWhRBD/R3NkcA/?=
 =?us-ascii?Q?zQKggnohOaKcixnhIcdSkbpWG2zapGwNyLSbU0+N1tNvO6ImKG5NhJjIyhCF?=
 =?us-ascii?Q?OSVxopZJDTM3gX+dM3h6pcjRZvS3iDNNhPn8UlnbyzNlLASB7DxThzLp4vmv?=
 =?us-ascii?Q?X8+ADRkrtiljAHFDxMHfRkYRWtiExyVmR95GA1wD0y/c6jkGkoEjT7Xr2gjk?=
 =?us-ascii?Q?0HuY+zh3GoUwtpyp02WN00ZnOVHvbGLYBBl+GhtnK8rosVC9qqDrhNXQeZ8y?=
 =?us-ascii?Q?Vq58NcsbHv3vozBRerQwdfp/Z0FPUxlWA4INujLyTCgoGNE67ywBymfNf3FE?=
 =?us-ascii?Q?5tStQGkA477zaunK895tyHjlfUO4FsoznJMMTL2t3SEbRNP77zk8ZOADuEN7?=
 =?us-ascii?Q?0cZaCetXgGS2nqPKxOwLgHc9hURIXipo0dodYXZqzkOQ6hPo3ehk6Q+gHGEj?=
 =?us-ascii?Q?Z7PP+WkPLJNPycwm/KPCTdt1miYv/C9rmFmAUB//BCN7FyiWTAZG0hWH6xZ/?=
 =?us-ascii?Q?zh+MU7lkYE0MDUVwIEB1AC4JBbrxhmucCpw0RMTV3MrdyPAd0b30IjEw4Ghu?=
 =?us-ascii?Q?0rNidjoHGrYMkuRw62JISYWTPY0vUxJEh/DBPDSHoLTPDvH1c7uL2NWtMfNS?=
 =?us-ascii?Q?5Jb8hu8Ao6AEu353Sbjz1eT1q4QAGV0BfJv4JZuGKr/JrPCCBdlWC69okQ9G?=
 =?us-ascii?Q?jgzg1QYnUgaXzk+18JK16b4+5sLHGZYeYrduSd6RYfCR5mch6zC7FEW3RTLE?=
 =?us-ascii?Q?oon9fFQtNVc7PRfr3D4QDWe2jLeC6m+Ow7g9p2+2E2DAY/bYYUfcwKUt9mKd?=
 =?us-ascii?Q?2Cgl9NGNe/8NHD+pYWC4ghzFPJvcV7+411+i2xWgebs3fKOWHlYva0Jm2CP7?=
 =?us-ascii?Q?/2Y18mFvBCwT5bSN4Vkk6E91PISPReTpgG+s/X/F3qVl2HMTTqUq9DdOzaN+?=
 =?us-ascii?Q?tXQ+xypHlddg9nM7Bq8L7SxKaviSsX9TiUx6uZ8z+DRIVusvuVYsvFoEzr9/?=
 =?us-ascii?Q?GUdfwcC0/oRGbTpcl5C5YisOHegBGIhOYaqMPhRinXDKs95E106UxZa1Yhue?=
 =?us-ascii?Q?MAWlA8Ovse0p3/Psw3J4smVdNofPhdK1b95mkuRwPezxopylr5uXJpX46yse?=
 =?us-ascii?Q?9l8mkdtB2H5jBYvba3KidiyfXrTBAqsMlxuHArAlsh1Ll1RtXkwtasKQH4i9?=
 =?us-ascii?Q?TNaTun8jZU9UXMiNgG30rYYEJzHbP4tJ3W3Kw3zUO0Ap4V0W5vjnVn5HbTal?=
 =?us-ascii?Q?vgkThrJ9A744paKUVOVw/muvfLKVGiDbawGbW9WzGY58FQgHmA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fFB0WA9kV+3FOVJLzrogD/SFmc4nNt8NbjMU+qKf3Fcv+j8pFj9GP8x/5nAX?=
 =?us-ascii?Q?ohbceTMJMpLpG4bA6cH03+CkGZJTf1mZn8E8jvlX3il7C2QgtlvYSLgbjFvD?=
 =?us-ascii?Q?QhvRYlGe3GL6BlUmj9csfVqqlH543UbgaI/qtZD8w6XtTlUXhR5RViQxUr1e?=
 =?us-ascii?Q?MwX5fbcihmLjmcCsqi2asUwcUcHeaCzCLHDazl2Yv0zViPcV3fgtpcUIxDfN?=
 =?us-ascii?Q?swaBWLCeGS7Pg05UugK4OMI2Qiu1tShKGWrV3ilytYMamE1wY2UrAyjFxdv6?=
 =?us-ascii?Q?qQ2LF4EaJwAimEoaVrz+MZTSeiHrRJ07EQdWFz05uQSX9IztuoStCECn5l2Z?=
 =?us-ascii?Q?lInVAQPlpJaEEQNDmf7txCmsJTdNgUHDeItzXUxSHtMqn2feCsIFxfnxEF7A?=
 =?us-ascii?Q?TSfC/M2A8gBPikhM/43spQMDAKoJhUglLpj0OKxmVL2HmmLBSyuyvnLDU51y?=
 =?us-ascii?Q?ZLdIw53mVbtw/j18/CZSnRjYRmht64ZXviH+2kNjy4GYznr4l52jOk4qK6KH?=
 =?us-ascii?Q?CFX0TiqPhhf9h4Vkv3zMfnXFU5P48AGKLk/ClELLeOrLsjHnlo2GEqsDPqKn?=
 =?us-ascii?Q?kfwBtwbp0Ce8DV5mKXHQlYzub523GRZ+QMIA2rxzgew/AEQNjGkWfmTOsaJB?=
 =?us-ascii?Q?1ST9mf31GKIZO1YVEUUmGnWgskQM7EeynpTVn5daYzhY0uj9g6oHPHJF5Ocx?=
 =?us-ascii?Q?LR1BUCQL32u5dY3zLSFfflnM+NwR6pEnaU2r5mbGTa7BBAA88MYONjd/u6jI?=
 =?us-ascii?Q?0ckcJWt5L7/jNBAo0eKbkeixVuSVD5QpPq1QS7H3O94XlyUcbeXkUt8yMtV9?=
 =?us-ascii?Q?JyTno4TleJugAiHRVyNoalpa5gcVebaIzroL87cpc5lhtER42BYFaLwATM1m?=
 =?us-ascii?Q?qwKODDO3bXcD0Og2gAWcsTsFp47QMCvFg4KhkhMVb6qSWNOcuw8I++PQ6Jn8?=
 =?us-ascii?Q?bTq25gTOkvaQQtaEh4NQqlHjB4/oz1uwumU3EStT3zVetp8G3WvtrOSATgjh?=
 =?us-ascii?Q?mVEYR92cW9ptlcmE2EFleh7cTo0QVzldZYZsSi0mPnWsPJyAP+38+hM5reKX?=
 =?us-ascii?Q?16MfQMOaBi5dod1zek5BXj7baPn7Q8/sFiVr/McKzTHDlurIxyqSZcdotyiI?=
 =?us-ascii?Q?JfN7dYKPBhQf9zgd7QubbdFWOFNfEW0+Fd4EjxMYQ42BBy+CcjT5o0iqt5M5?=
 =?us-ascii?Q?cgC7EB/q8k58slCN+Q20MzMY9rKecnx+Giu4+rIeN09Nj/VTC7Ayk4i3UmEq?=
 =?us-ascii?Q?5+CD0/RpMVdyRPZy80GeuF9u0zFbG7gKatF+FLvU9jkSn5MeTe97hzKiNsTY?=
 =?us-ascii?Q?AVaCSOmqDNThodU+koifKqB5BSrRHLpuY8n4I7cAISUthMMUQD/9DDyc5Qkf?=
 =?us-ascii?Q?gqaZpDE1Gv7KdgWKZdiXeGqWUXYSujqIwf4OISTx82G2aUGaJGVk2fFd+aeE?=
 =?us-ascii?Q?uvB03rbBUQFXCm8TsAh5m9yXNintnIJHL4s736ia7Lm5NBd5ySxIXTm5sOCt?=
 =?us-ascii?Q?+NHOHv9171ta7VhjX95LSuGk8Fksa+kutpOdYX4zsaYlyCSpf0u5C1LXZHTX?=
 =?us-ascii?Q?fp3F6o8Mv/Z+8iO2HaVMfbaVt1+s1xaT95F6OqCvHPuyG02SE+/s7cCe5toD?=
 =?us-ascii?Q?4Ud0lKYwMCN+h0YQgsHaYts=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ed47730-a1d9-4ea1-53e1-08dd12ce4419
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2024 12:38:47.1167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BhVePVHZKYpH/uy4PN8ndwp7smIgKzsUUh9B7+Mu1Ni+TUeXSWX7SUImFPjUJFT2TPM92dkFKWzVB8C256Lw4BPQHBMM+10d+7ZwaylwwZbrAR1V/WBk8OllqjvL8Y/S
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6105
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: 15 November 2024 21:31
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 5/6] drm/i915/display: Refactor DPKGC code to call it fro=
m
> atomic_commit_tail
>=20
> Refactor the code to check the fixed refresh rate condition in the dpkgc
> function itself and call it from intel_atomic_commit_tail so that we have=
 all
> the required values specially linetime which is computed after
> intel_wm_compute, this will also help implement some WA's which requires
> linetime. This also avoid writing into any of the registers while we are =
in
> compute_config phase.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 ++
> drivers/gpu/drm/i915/display/skl_watermark.c | 27 +++++++++++---------
> drivers/gpu/drm/i915/display/skl_watermark.h |  1 +
>  3 files changed, 18 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e790a2de5b3d..d1880e0a5d29 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7826,6 +7826,8 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  	/* Now enable the clocks, plane, pipe, and connectors that we set
> up. */
>  	dev_priv->display.funcs.display->commit_modeset_enables(state);
>=20
> +	intel_program_dpkgc_latency(state);
> +
>  	if (state->modeset)
>  		intel_set_cdclk_post_plane_update(state);
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 2deb964daed3..0cc843314358 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2854,17 +2854,28 @@ static int skl_wm_add_affected_planes(struct
> intel_atomic_state *state,
>   * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
>   * Program PKG_C_LATENCY Added Wake Time =3D 0
>   */
> -static void
> -skl_program_dpkgc_latency(struct drm_i915_private *i915,
> -			  bool fixed_refresh_rate)
> +void
> +intel_program_dpkgc_latency(struct intel_atomic_state *state)
>  {
> -	struct intel_display *display =3D to_intel_display(&i915->drm);
> +	struct intel_display *display =3D to_intel_display(state);
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *new_crtc_state;
>  	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK, added_wake_time =3D
> 0;
>  	u32 clear, val;
> +	bool fixed_refresh_rate =3D false;
> +	int i;
>=20
>  	if (DISPLAY_VER(display) < 20)
>  		return;
>=20
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		if (!new_crtc_state->vrr.enable ||
> +		    (new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.vmax
> &&
> +		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline))
> +			fixed_refresh_rate =3D true;
> +	}
> +
>  	if (fixed_refresh_rate) {
>  		max_latency =3D skl_watermark_max_latency(i915, 1);
>  		if (max_latency =3D=3D 0)
> @@ -2886,7 +2897,6 @@ skl_compute_wm(struct intel_atomic_state *state)
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state __maybe_unused *new_crtc_state;
>  	int ret, i;
> -	bool enable_dpkgc =3D false;
>=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		ret =3D skl_build_pipe_wm(state, crtc); @@ -2911,15 +2921,8
> @@ skl_compute_wm(struct intel_atomic_state *state)
>  		ret =3D skl_wm_add_affected_planes(state, crtc);
>  		if (ret)
>  			return ret;
> -
> -		if ((new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.vmax
> &&
> -		     new_crtc_state->vrr.vmin =3D=3D new_crtc_state->vrr.flipline)
> ||
> -		    !new_crtc_state->vrr.enable)
> -			enable_dpkgc =3D true;
>  	}
>=20
> -	skl_program_dpkgc_latency(to_i915(state->base.dev),
> enable_dpkgc);
> -
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>  	skl_print_wm_changes(state);
>=20
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h
> b/drivers/gpu/drm/i915/display/skl_watermark.h
> index e73baec94873..35a1df7336e8 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -87,6 +87,7 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct
> drm_i915_private *i915,
>  					 int ratio, bool joined_mbus);
>  void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state);
> void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
> +void intel_program_dpkgc_latency(struct intel_atomic_state *state);
>=20
>  #endif /* __SKL_WATERMARK_H__ */
>=20
> --
> 2.34.1

