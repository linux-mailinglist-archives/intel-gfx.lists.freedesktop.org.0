Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73247B1DAC0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 17:26:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1551F10E178;
	Thu,  7 Aug 2025 15:26:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aUX6n6Pv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A6810E178;
 Thu,  7 Aug 2025 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754580386; x=1786116386;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0kJBEcG0qxVoKB8DX/ZfqAOu2tEdf6GzFPbklSqDVuc=;
 b=aUX6n6PvW/RHBQ/WWykgv+T5QRQ72KPTctmUeVFno6r8+fzlilBeqJpR
 cabTP2UcuXbLjOl3JftsxlXluHJAGRKvci6I8TjODHlm90/CoZgo4oQIe
 ePDlJeX7Tv9zNrVONdkLM9k7kSzTWNhG7lRmWKu5FMO/qJyb3B9Mym693
 +9tnsGYgR3iqEfHwkuXu7lHl1XjJAIIuAtuQJvmyeieooRLOQp9HRxLT1
 e4afkycEt+REjTa3EkQ8DuziqJ9Jy4XzEwZU717c7/yUO8Fx0tIhwAkQT
 Si6zaBhxMPOYn99uKAd+PEp652ylCpKNICW3dF18KGpxw+DHx9c6AcSFp A==;
X-CSE-ConnectionGUID: s/jfhmpgQSiEJlFjJPJITQ==
X-CSE-MsgGUID: FIpKzdD6Qmy7hEpxP16/lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74374204"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="74374204"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 08:26:25 -0700
X-CSE-ConnectionGUID: CFluNPtGTJaSU6SmVffgeA==
X-CSE-MsgGUID: REGKC/I9T0aqvGd+bvJeSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164316852"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 08:26:25 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 08:26:25 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 08:26:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.40)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 08:26:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RoRz7Azmou9WWJag3zmBzok7KK0mhIpCjBQZjBM7C6WHHjt3uziIVTbqQeDlFzhnRwFZiVf2osbkcjsMPvQM/VwSa75KCWmjGZDZMyYGRCS1ZZV8sHBvszix063KbfBAn0bNnXCR7/CbaaoNQNbeTOTe37lCLKjRiARRVew9Q6EBpcNaBNiJK+hDS5tzuYa7qrdlx/cGqvBVNcKGsa0FZ6o4O2dXTEn15osU9nay4QmQXuZ5eTVDagAN2WIIbwKQOg6tlBEE1AHbi2HReO2aS/4xeIQpFtVdohUw1x8yQAtYc4oXC8kwqRt18wnBZ6HSbsw9mdJc65RrOofXAgnKbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gXvrAIVs8ndQe0NaWBMPPt1DMrfG174ERnlURB4gRNI=;
 b=ua/4lau6iQBm7+JSEm66osYuUXuWb2Qwizqlz7Gxbgu5pzkxwpntzj2OeKMkBbKChxnyuhesmwh6SO2xSbf86OQE4cjfo7gRi1TwW9UV0B6gGKH+tocpjcqYM4RBWKYGbS8YQ10GG0fDSu2W8HwbO2wSmoMsaINkeqdBPEoqXmoc6WY3Y7iO4CUfkSBi6owglvftdQ6Ie5Q+CQK1hGJkiuuSTvlcAqzCo9W8BDzMbDhZivC8goraS72aS7sSS0rTkngJf1XK698mo9jB57nZFgWoTi7wIm8bkXdaUwkeu2We0spEJpFrs+zPJO5GcDR8vNNe/Nv9uI2RSWhj+W3j4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MW4PR11MB7163.namprd11.prod.outlook.com (2603:10b6:303:212::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.16; Thu, 7 Aug
 2025 15:26:20 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 15:26:20 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 01/12] drm/i915/skl_watermark: Fix the scaling factor for
 chroma subsampling
Thread-Topic: [PATCH 01/12] drm/i915/skl_watermark: Fix the scaling factor for
 chroma subsampling
Thread-Index: AQHcB46n/eRItX2YF0WAE5fIPBzpHrRXUBBw
Date: Thu, 7 Aug 2025 15:26:20 +0000
Message-ID: <IA1PR11MB6348523214BCF9AE43F57AF6B22CA@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250807111548.1490624-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MW4PR11MB7163:EE_
x-ms-office365-filtering-correlation-id: 92660afb-e9b3-4bcb-ba27-08ddd5c6c2c0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VBtoHoDh2D7n6xwP728y18SqwFhXmrIMGak+tawgWEeDlMFQSLi7LBKD4AnB?=
 =?us-ascii?Q?oyxsvN0N0m9SgHebXJYPZR9t0FsDw+rHyUoUvE3FWZUWRk/YHgQot4H8Db42?=
 =?us-ascii?Q?etd/e+5UL35D3lhQC62QmIMLQy0rEZaa3OV6cMIiovjI9cvymAK4FMrm1bj0?=
 =?us-ascii?Q?HodmwaUnj+jTTiw24QqIECG8nHeFMSXNxJz6vl9Ikyy2sme5Jg7+EMWz3aii?=
 =?us-ascii?Q?HKB4EhJG/KjDoOQjHm9BNGQ+77CSoDqQIqNslJ8ssLjjuFAa/bz4Sk1IslRV?=
 =?us-ascii?Q?XIRYFQ7rz8x2YV5RL29iy8MQAWkO6Lqrg4/bYg/tO1EPzxI5l/ufMlmANhPM?=
 =?us-ascii?Q?0j5VT7k+01IaiIUEWjb8aGGVlAiqB+SOgCnimWDHSTqvt5TbppyNdmUTLv1z?=
 =?us-ascii?Q?+5PTyiYvSzh2kS5YCvF6YdKgd6MwAq10k902sZFGVpSWFuZ921ALLzt5XX+y?=
 =?us-ascii?Q?AznWBbl+eFtjoUpOZWiyc9k/9asKzIrgkUo6TJwCngzUAa+2nPrInqpz6VNI?=
 =?us-ascii?Q?j6Exe7C0+czdK4Ko6Ytj8urGjNj4QAXTxXHlCLzFfYQ850lV4SFzr5s0eU4P?=
 =?us-ascii?Q?uusK3q55hz6rMmuvfSOQ1we2yLvW06iVQ8vDb7FFYmKo6sYJfhJWA7/u6Nv2?=
 =?us-ascii?Q?57u89z+jp/BTsvck2ToRKz9srXE1+07OSB4zTdn6cVIt8PRSeaIUnwsOe/6g?=
 =?us-ascii?Q?UB+KRTcDKOdL1spoW7sI+jLYeywDlXyaTvJhQ83Kpf4LR3YyNmHBcOZ9RSgI?=
 =?us-ascii?Q?DztYyz7XHiLExq3qWhmQCdr5EwtbF5DgMRmhl0zTQ/yI3Ds2nrEwEFmqTP5X?=
 =?us-ascii?Q?jl+DzlHh49IK1Aa1rGFCgJUQUXwrBp9N9dU5U+4Bkd2WhD1RN6oKh6Kg9Y41?=
 =?us-ascii?Q?NbF7Z6jn4n3P6ScM6CtJ5p43YWlEbCWMekFyuoN0C33LwuHCMqIUfJ5tHJg/?=
 =?us-ascii?Q?Q59QoZIMuxB3Avl+FhCyQTMni1QoCyFwnedf+V9y70hLKuTooRlgHUm2Jy47?=
 =?us-ascii?Q?R1qOS06kTluLTvukBgG43SewK8q79rEicKi2j1ZSIgeUe18FmtloLT8p0uvl?=
 =?us-ascii?Q?fPGQx3F2qHpt62XUtgACG5+h/ju3KpQLs+hZTFRjZCjtwjyQlnjMm1OoMrTn?=
 =?us-ascii?Q?d6+WV9FMS8+FowuAI6w+qakSlerhtT1cqL4tKqRoLrZnfIrg7eYSaVfhwsUw?=
 =?us-ascii?Q?EWEbGtHOBtIhgEL9JwALexsOxjqLbvMoSBMrYo32e7b+u8QcP5sdFBsY0yLj?=
 =?us-ascii?Q?fwZoq1qvID2JvAJHRENyIQCsA5bgpzOWW7dPqHR7KMdn/coljq/EgK4CQJeN?=
 =?us-ascii?Q?liGDoUgLjL4fCDgXa2i0jaJVuLA0V1TVr3Nj9qPKGiCmRMalLKN8D2w+UCHK?=
 =?us-ascii?Q?Swybsc8WgUjDstl2V2drfnMo9kp6Pz50sclrmzRFwum+xC8G240cJMsFveVw?=
 =?us-ascii?Q?gRX8JXQxffksVHmXcwzrHXLAJDPm0R6XvICwUPQeJ4hlQit7eksg9A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WtxOWQcJHTDQGoQV42igD09tzbzQp1a3xSg7gNWSYCNL3u8W2LNsU+PqChRh?=
 =?us-ascii?Q?ELw+KOEcoxarLF6ctCXFuuhsrAoRY/o+qkHyCpJhchPbfFOqn8sp+4TLmfHR?=
 =?us-ascii?Q?BFnkHj2pbwMaCTUaiIF+u9w/2U6Z+z3GHJJQmbh+aVnlOX7R3mnrHt4P6+1g?=
 =?us-ascii?Q?lXcXQCtLrY+/ELBDblEHL9oiUorejyXjNBlDBnXlQpAa7G70a2tiKw9E5A72?=
 =?us-ascii?Q?KTPbQ51oSiVplMiyemYddJJrx6DRXALlEoxpSGiLN1NMzlzPDgGhsWDB5JyV?=
 =?us-ascii?Q?cFOrm0AMmkYfcxe2FX3ku2ZsaZavjKEsUlcneEPc2fkN/5pHhcwUotBdtuIv?=
 =?us-ascii?Q?Zm/aIyp0NdDjo6FG8x1t6K6d0METxDjQDDzthX5HO/RliBaJpaztlVHd9wGk?=
 =?us-ascii?Q?84/3dOiiG232PxToFYJVCYaaVgrjvsZHpvVpIpH70ZiC7t1+nxiMcvMdtaye?=
 =?us-ascii?Q?Dq/PZg/PfNqqE5Yx8nfn4d9fjSlLyX4dmi5+ImjfBKQzjuL41PLaUgYKoBHS?=
 =?us-ascii?Q?C8gW1c2JEriDS+Ghn46aM7k1n7ojDrFNvVoNNAie7ix0QIt4DPqMX/pQIack?=
 =?us-ascii?Q?glcWss+8077eBnW9ITxpAiuZx3Dyl9PKv/cOTh8TgM2gnfQ8S4q6E6MMGoCl?=
 =?us-ascii?Q?FAuUqedWJsoFDklnCPDwcw4QhwgANDqwsY77FAhXgezOueOuBjL7Zek594iG?=
 =?us-ascii?Q?nH6EsM6vzTnMSpsVamkhwsSjWbwbE+wn+CBw5qvPbDHl4d+0IEY8I24EE8p+?=
 =?us-ascii?Q?bQ3mY9fuK+p8o0x76z4nFXebxp89cnqS6lsy6TPMXXhCqCrlyuYEmWiLIp6Y?=
 =?us-ascii?Q?rLxteuvkkVDaQBEL+NpauQsJbibOoVxBM+VA6C6Zm9moxmXs+1StpbwIJldK?=
 =?us-ascii?Q?jjWG8E1KVbXMjM6etSuYhvtZbCuQyx32M6osDEEhRXHev7KYL0I6vZK7KPam?=
 =?us-ascii?Q?WBjfZRp+cy4zv8ZL2LzwYuXwQjuARL+g2zmBV6AM5WPKYhCbM4+xor6c2St1?=
 =?us-ascii?Q?x/c06KPKWhZvB8r86jGgFy7QYexV6FSKw4FY9fgrFNWnWaHVsPWnUBpQeo+A?=
 =?us-ascii?Q?cv629srVbAVxRUo1NUo1/qUqXp4vOkOuNnXf18NOBFmZfPGgYC4Phr/ORiGc?=
 =?us-ascii?Q?dSwSIgcqgEsJ8ND8z+1YLE9lmr82enNyz/DqGEyjG0BQJomAS5Jrr0VBrTq0?=
 =?us-ascii?Q?Pek3oc2QRkwVHckqVMD0oA+lsBAao/FuJENwai3OgXaY7nvxX2vc1eu9hHHN?=
 =?us-ascii?Q?FKvAPnATYBxntkhr6M87ndkXzQnL9t/e4B1AIYK4WRboGdND7Qy7Y0JRYfi+?=
 =?us-ascii?Q?nt55AQLy9Gp1CwzC0qCYP3g7Qta+XyN9Rs5FMcTt3DHXtBgh5QO7ILSlsLnO?=
 =?us-ascii?Q?fAC0YfIG1hpVnelqH3zx0B/CtvUJMqJTntS6sIx4TFaHZ3W6kgd56okeEF6N?=
 =?us-ascii?Q?Qzk0Oy+Pr8U4/u4VkGKY1Gw8sY6YcZrQJHXn2viL8xIrMaHq/CQ3MkRbdlXn?=
 =?us-ascii?Q?Kygqy/ubAUDjBxp8Nvsm5LeNgakew5+6DVdzdtmwXcyKMWVoHbLEwLZUzK4J?=
 =?us-ascii?Q?wubDv5s7WRr8dpdH6SWMPgbTWuoFouSvSexiE8l/wiUVqjo8jVaJwftGgseO?=
 =?us-ascii?Q?CqlcCJnPwpQTqfevf3QEkNU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92660afb-e9b3-4bcb-ba27-08ddd5c6c2c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 15:26:20.3775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BcZwNmKZm3kMOB0loedHlcaKbPTC5eDm9wsju2INZUDrPrre81zkkxOSJA3H/BKwR1wcyDlZSgSwVsjD/oHEpUNrHeKcNpaUZ1kv+lMAJpb2lE0nUJ6X4O0YNvRWX9ls
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7163
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: 07 August 2025 16:46
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; jani.nikula@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal,
> Ankit K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 01/12] drm/i915/skl_watermark: Fix the scaling factor for
> chroma subsampling
>=20
> The Bspec:70151, mentions Chroma subsampling is a 2x downscale operation.
> This means that the downscale factor is 2 in each direction.
> So correct the downscaling factor to 4.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index def5150231a4..df586509a742 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2185,7 +2185,7 @@ dsc_prefill_latency(const struct intel_crtc_state
> *crtc_state)
>  				    crtc_state->hw.adjusted_mode.clock);
>  	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
>  	int chroma_downscaling_factor =3D
> -		crtc_state->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +		crtc_state->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
>  	u32 dsc_prefill_latency =3D 0;
>=20
>  	if (!crtc_state->dsc.compression_enable || @@ -2228,7 +2228,7 @@
> scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
>  		u64 hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].hscale, 1000) >> 16);
>  		u64 vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].vscale, 1000) >> 16);
>  		int chroma_downscaling_factor =3D
> -			crtc_state->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +			crtc_state->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
>  		int latency;

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

>=20
>  		latency =3D DIV_ROUND_UP_ULL((4 * linetime * hscale_k *
> vscale_k *
> --
> 2.45.2

