Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FC6B1DC1B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 19:01:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE47910E174;
	Thu,  7 Aug 2025 17:01:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZANRiorn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D56C10E174;
 Thu,  7 Aug 2025 17:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754586073; x=1786122073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hFaFTh7DVW8A9/lSTY1hDrgVMVWONi5lt9nO9PDzLRg=;
 b=ZANRiornohrjhsdj+KjVNp8lI1uy+5x5pnNG2HS8+W/W1iI0CoN7bu4L
 FmX1MaT45Ivms99pi7nm81U3cysLlIiR/vP27kVNFzkAH5tnYGJe/y1Ja
 fyAOq/x++W7Gq0h3ywd+G7Ydfr63VP4Zq+YvepT6IJdj+9ThjrSauPVlw
 P/VB+rZ+vmkCw+19HguBBxSyZ0akIYEyzPSED4GZG7tUiyDIDedurTkna
 9P2Ggzuc6W9bvcy5MXEpMZMzheGhiRpmzsFI0h6IrDikf3YIniaHFjHI/
 6ZnsbggFq7hO8oBx2fMEOcT6PfkpsivEZtiOzRg+gi6w7lSgUUF9toPn1 w==;
X-CSE-ConnectionGUID: pCnCWSawTqeifkJWzTrqsw==
X-CSE-MsgGUID: /2ApEkkwSLKhAe7rx8gDmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67625922"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67625922"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:01:13 -0700
X-CSE-ConnectionGUID: MSN+PmkBS2SUYmJdoOj7cg==
X-CSE-MsgGUID: 4Fb6IFh0Q0yiT54jXHS5iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164774535"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 10:01:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 10:01:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 10:01:12 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.83)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 Aug 2025 10:01:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uPWsJUPyNs3DZc0tUutxtRFJRP+QTuBVByNWMO2lEigwCfSZRtfJ7eMe0LP1gFB+PvbEC4eOZfibrV5QLJsIUgkGTdN/ye93p1oKiXYGUAFsa+UTgid/aGzrPrImWBwK8kSgBn7EMrBIE6YuWsB4MK50bOP2ot/FXhoBS4Q576fQgYCjW61rPZmuJL/efPtcvbJqNDSDPfBPLTi0/hPR5OzXCIpTJODp/k8Yh01XiCrxW47dJwQceMHs+i0aVuhX3FKn8DEtk+PHQPme+9QJRLnZVkAdnRg21+YxOOMCZxksu/JrDH5aQlpLXz+PrgjxKAQlQ53Rnbg5ukB7doW3mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=90oTzNpl6Onm/E8eZvCiSVO9EgtQo4G79Q31XwGomAg=;
 b=oAJ9scQF48tILgY5RCTrEkr1YNH/yyLLoleH1cCwAbK3y+pIetXUjscmmyHdmbFyftQRnuCB1gDAh7HTaHK4k/SOrGD1mRJ0ewb+vcujaMlDoFHZMqufP3VCqXGWw0HKiaT4AvNbZirhCPW2cQ6lyJIM+cmArclrXePVYVy42/nGeZEN3qrPYbR2c8/j3Zacz7/a1V7z+EP6+1O50U7p3W6uI0BKC3zTpEpo6PMkY8F71CgZxumjU1lNSlCWidDdgobKTKDS9VSZY95wB8wEjobBXSpz2hes8j5IkWP+CpyfoTZiQ9BEf62USV1OEQ+BIlmDbypntvU91HAoCeyW2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH7PR11MB7572.namprd11.prod.outlook.com (2603:10b6:510:27b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Thu, 7 Aug
 2025 17:01:04 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 17:01:04 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 07/12] drm/i915/vrr: Use vrr.sync_start for getting vtotal
Thread-Topic: [PATCH 07/12] drm/i915/vrr: Use vrr.sync_start for getting vtotal
Thread-Index: AQHcB46p60UfPUcX7EiF5mljsASXjLRXan3g
Date: Thu, 7 Aug 2025 17:01:04 +0000
Message-ID: <IA1PR11MB63480B7C1A01D0F5836A0B87B22CA@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-8-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250807111548.1490624-8-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH7PR11MB7572:EE_
x-ms-office365-filtering-correlation-id: 9f84be6c-278e-4b2d-ec17-08ddd5d3fe92
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?sFxSe1zkJbhKlP54V6MZWSyhFfyLiXpNnkozWRg6GR/RY/HWFch4wn8iGQCH?=
 =?us-ascii?Q?7V5yZtTQzR3ztff+794PFWj25Tlu9GljHNaKwhAM5XoHTJnShQlN63LmtHdX?=
 =?us-ascii?Q?Qt+DoC2hfZtkG1xqnAlVv4njSofFceRVDU0J0b9eyU0WN3PY5LoJ6szZCde8?=
 =?us-ascii?Q?+lUC5aV6bRfLlqJ4SBtvZR6or8vSqr7SJoNuvTngj3tE5PrdVnYqcWJGCE1g?=
 =?us-ascii?Q?L5M4e+BnoNZkywvD1jgvr7LUbT/PfA8eIvIgS+vCXEoU6K+IUaIrEcf5BEqs?=
 =?us-ascii?Q?EbGqOg/KtAp7omH1z3NOf2zJrL8krA8HUx/n9ttpbaS4voWkmBm04jT2ixwH?=
 =?us-ascii?Q?GAqZbhGkKwZJ1BrBCP0j311BeSgcesGHiqSN7KBlngwvFiYSKZzIVOvV5NbO?=
 =?us-ascii?Q?BwttTjhvajW6FmTbF5/+L8PMzKHUto2t3/5sDbG88Tm/ZhUQOJmqb9y1If6W?=
 =?us-ascii?Q?uwExW0Cwl13mvLuECG+qD63N8DYQMh0JdsGnJy98KCICS+Hv1DGavO36Y+gk?=
 =?us-ascii?Q?85x6I2wlQyYZ/K1TjczX9tj+gusarDztGasDaqpt43UnPxB3NaqpyjOttKMd?=
 =?us-ascii?Q?ILoGngGfig8XTj3lAsUZ9FeIGWVL4JYBJqggTirG1yuY+IDqfEz13xacrNZu?=
 =?us-ascii?Q?FfyP/HfzpJPHSl1nxPERC1fbJRaOaghEUjDKX5ozs1DqtYt7yWAvTSQPUT6u?=
 =?us-ascii?Q?rxlET+zstQi1BewKrP0/ux46fjM+T6XEkNCeNdRx5NzkdyXuddoJEbfSNb6F?=
 =?us-ascii?Q?ays8/ZKma2yvygkQIR7JvgS8V/wt6tyzX5EhpLf9bsvwkNIx+UOhq+hxbgYe?=
 =?us-ascii?Q?r6knEiDCoxy4foiY5tIiUkxqOCDF85/iD8xCVHOuUwJUGYeREpCERd6iJfVs?=
 =?us-ascii?Q?CIEKuZgrqZXa7v7u+EUrpv+iztkCx4ltuRAEgGnahNHiDzgrs62rX78kAdWJ?=
 =?us-ascii?Q?ge9beA/AYSsxSn7RlujprRhhVDnad9//HHyD9z6O+a2QZfwLIzZRwnM9MTP5?=
 =?us-ascii?Q?A1WqFdvz3w8t0SpBcI8QcDP76rjr95N5GDsPj29GNa1vKOGGaGB/hMV4y6I2?=
 =?us-ascii?Q?HRD5+3wcl8EMQkBxkKynfauiNycRiCwXIeoRbpIG7srYOppSdELsCZdBI7oR?=
 =?us-ascii?Q?cLXoVUqthS+RF2ZEtwm8o6BsSzgqA9WMi6UkyAtceNYEvk2ombuav2Ehkr92?=
 =?us-ascii?Q?SSV5c59VaCtrN1t/yfTHpq15qFINOP+gdX2JG+Sy9g1ynA1KM7xZpo5aMHNn?=
 =?us-ascii?Q?rPlBD8mclzOY3fsr2jgS7k7bTpsvblerWrHs3qIlzXO5i6FoSniUJ+gCB2xS?=
 =?us-ascii?Q?sEYCWOWrEfyaJmxKJ7ZSAKXBrugFJCjm0KnQsT21LZW4LRWTdNBjE4dLDAdb?=
 =?us-ascii?Q?fkeaegc0VV+P6zZzi9rkJZT2cSB7ZYO+M9ww5UN9fkqXPi7kmgugh3Kix2tS?=
 =?us-ascii?Q?rD5k91/OqKGtzNEVmdrypmWwcX9TAOuBSDm09dwqqxjyE/E26wphAFUbA7Cb?=
 =?us-ascii?Q?8lalzqdcD9WXfno=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9HrmmoG5lT0oMIaOSw2XjXdQ+XtVo3ACjKn6g91/exWhamXRwghV7m9bLxpO?=
 =?us-ascii?Q?jz1wV1PGLoniXO7QP/Arq9Q9rphqaRg302GsKnUCFBbHdtqIK+iWKs+CuLDY?=
 =?us-ascii?Q?Pnci22Xv2tdr9YnpkLLgmtYpyzoSM8+1nGLwq1qg41lEm8cBFTz34zGhsFls?=
 =?us-ascii?Q?jzKluu/oJM8Vx+9ckntdjS7X4QeE6L11oOQdH2PJC6iYDfdVEFaV3eceHcyc?=
 =?us-ascii?Q?yltOqlHjGQu3eriHg1hxneUM+DYEfWVZTyXpcIZOYZjU9l2zksLb70kw/xi5?=
 =?us-ascii?Q?H8wmpaAOcYXZKyjAd+Is0kyHf9NIp6w8S6BFYhhWAn0qZMmc/4rAFGMQ4zyh?=
 =?us-ascii?Q?ciyPZSEmegRb6OXkxa68iYpTcJDXnmQMaOnJM1QVPpUxsT7/Fg0NSOIaTtpV?=
 =?us-ascii?Q?SjcKcaW3DNRQkwy5R/DB2HFlfgPg621d3x2y7pR4zWoDtZyJsuXyNZDKzOxV?=
 =?us-ascii?Q?6bQbBwhiRQbPLgnHY0+BekLA5guRlsRp1OxCYzvq5ENbYNZXm2Wlq537yJU3?=
 =?us-ascii?Q?2VvG6avDYWbO+7EBgF/XZO0NcDUlqzsje2bBrFhV3sytJ2yuKa+f7zpX/y5J?=
 =?us-ascii?Q?phRyBb98ZOJA88Hin5mkrymAEnMpbCxabcROWBrkHZ5Cu1nzu2jxNCLE774t?=
 =?us-ascii?Q?wQ3YWGPBUqPIYy00BnVoo4qJHX1F+TwitaN/mUeFZT/aZKWf0q/UA1Boir9E?=
 =?us-ascii?Q?SbrY/Nrfqtdp4009SLVLyIVUQTE9kT3xSRQtgvfOBwDOPFUxmXqAwVJzFFKX?=
 =?us-ascii?Q?42sGvY/cJPRjEVKXOJX1fkB7cSUiJTYC3pV4bJTdKMAMoS7WesuhBqqkumNj?=
 =?us-ascii?Q?ul45pa0rOhoxakEB3Jz9g+Cexl67wsXga82CbhZM12yS05qRmAFeD8U6SvLs?=
 =?us-ascii?Q?dFzuvX4eBL+xsm75d1Uki5YOQ0cHM7Ke6EHKNWILeAzH6AKbrz+bNrRx6d4r?=
 =?us-ascii?Q?u7wbKwuoKIox7S1IDy04etN2UzKGbHxEfdZ94jomRm2SFZcxBD7quSG3Y++m?=
 =?us-ascii?Q?e428zmgJZW3JtBfLS9tK1+f+72m0E4TXR0XL34ipGX53SMwSkCP5fR/pd59l?=
 =?us-ascii?Q?1sEsNhhQfUxmByqRgvBZeMQuBYDPZukTlpT3QZxYmfyZNXa324Cx91pSbN4O?=
 =?us-ascii?Q?3xid/JMJMT9BpL/AnDSHb/Q4g7hGizAPuu2pXWRErWObw3qyfkJ7O/yjW8Bp?=
 =?us-ascii?Q?8l358an23UyNBx9R85bBeSHj7U6GA6fMfUNo41HLvNw+gHdl00pM8/gWK0tE?=
 =?us-ascii?Q?nJucRyAy5Vh//ieZyU7a3xHe+ckXrfEv/QIhlnZLlatRLUoKGsgE2dfaViOi?=
 =?us-ascii?Q?KyIIlvqd2QM2n2HTgd6LZo7D71fGVuKzk4PyLskNGtkbutBZrBzLZ8QPUDma?=
 =?us-ascii?Q?UcneK0oNZkWcjckqi/IgcViuUSfdCST//3DT+IBV+0yzbqFRnr99lDEw3yIG?=
 =?us-ascii?Q?Y8M6QPeT2fREY2jC9HVvAlsfPqL77gMVvrz4yhcB4CGE+0ahouZzMs+L52Ir?=
 =?us-ascii?Q?64yXs05tagC64iuImpxuHfkzeyLJQnX7Q11JrAvzR1ixsPLI8HEM2eGBOLtM?=
 =?us-ascii?Q?PcEYR5kGaTEC3FGLbBtEEDeWl9E4HrPU5SG01lNzdxwJe6e5zTwUPsCqwm2M?=
 =?us-ascii?Q?zxRax4KynO+0BGURM2Gl8bA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f84be6c-278e-4b2d-ec17-08ddd5d3fe92
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 17:01:04.1720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wn7Fl7wxFRVlcLR7Qagu6CSzBuvXvcfRiiHLsWfVEweJfjqdviGMZxTpiNj7UI4K6jCZsjItooRtjjsanfO2q1XpGpSda7XY6WY85AvlfTNMI/T665rMXJx3VRvcRSOx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7572
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
> Subject: [PATCH 07/12] drm/i915/vrr: Use vrr.sync_start for getting vtota=
l
>=20
> Currently, in intel_vrr_get_config() crtc_vtotal is computed from vrr.vmi=
n vtotal,
> since the VTOTAL.Vtotal bits are deprecated.
> Since vmin is currently set to crtc_vtotal, this gives us the vtotal.
> However, as we move to optimized guardband, vmin will be modified to set =
to
> the minimum Vtotal for highest refresh rate supported.
>=20
> Instead of depending on vmin, compute vtotal from crtc_vsync_start and
> vrr.vsync_start. This works since vrr.vsync_start is measured from the en=
d of
> vblank, and crtc_vsync_start is measured from start of the scanline. Toge=
ther
> their sum is equal to the crtc_vtotal.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3eed37f271b0..46a85720411f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -735,17 +735,6 @@ void intel_vrr_get_config(struct intel_crtc_state
> *crtc_state)
>  						     TRANS_VRR_VMAX(display,
> cpu_transcoder)) + 1;
>  		crtc_state->vrr.vmin =3D intel_de_read(display,
>  						     TRANS_VRR_VMIN(display,
> cpu_transcoder)) + 1;
> -
> -		/*
> -		 * For platforms that always use VRR Timing Generator, the
> VTOTAL.Vtotal
> -		 * bits are not filled. Since for these platforms TRAN_VMIN is
> always
> -		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal
> for
> -		 * adjusted_mode.
> -		 */
> -		if (intel_vrr_always_use_vrr_tg(display))
> -			crtc_state->hw.adjusted_mode.crtc_vtotal =3D
> -				intel_vrr_vmin_vtotal(crtc_state);
> -
>  		if (HAS_AS_SDP(display)) {
>  			trans_vrr_vsync =3D
>  				intel_de_read(display,
> @@ -755,6 +744,16 @@ void intel_vrr_get_config(struct intel_crtc_state
> *crtc_state)
>  			crtc_state->vrr.vsync_end =3D
>  				REG_FIELD_GET(VRR_VSYNC_END_MASK,
> trans_vrr_vsync);
>  		}
> +		/*
> +		 * For platforms that always use VRR Timing Generator, the
> VTOTAL.Vtotal
> +		 * bits are not filled. Since vrr.vsync_start is computed as:
> +		 * crtc_vtotal - crtc_vsync_start, we can derive vtotal from
> +		 * vrr.vsync_start and crtc_vsync_start.
> +		 */
> +		if (intel_vrr_always_use_vrr_tg(display))
> +			crtc_state->hw.adjusted_mode.crtc_vtotal =3D
> +				crtc_state-
> >hw.adjusted_mode.crtc_vsync_start +
> +				crtc_state->vrr.vsync_start;

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>  	}
>=20
>  	vrr_enable =3D trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> --
> 2.45.2

