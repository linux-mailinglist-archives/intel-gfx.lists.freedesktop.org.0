Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A42AD671E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 07:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D5C510E09D;
	Thu, 12 Jun 2025 05:12:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jnbiza/C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D85B210E09D;
 Thu, 12 Jun 2025 05:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749705168; x=1781241168;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eXXsE041AxDFO2SBIFXefHqzMDAxBc1dm8o5I5yerbE=;
 b=jnbiza/CIfAXXnGHbbJsa5xYO2ajMfMV0TPaE3Lx9xHg3NUD1ymh1vRd
 bfhdWcl58c4z6mzHX0qlu4xfxnYU5XEQ4tpSnqdEOY7dUJAi8intOvzpJ
 DrQjW/lBTEwd/bHReBHwhWrawEjwmRS10iZ8NhAcW/OkNFLncBEH8h15u
 XYKPTYQmBs0xwrQH45ZxBWfzOKegZehFqtTpewbPGoa6mi6k3dBFq1LLV
 qIBD7oPgGTGqlaOjykOj8bGUiL7N/k/80gh6crGHrpPaktGQXdZByoLYF
 QHMCiAv/7ha29csiZFayhbrFsbXSpvlMyrGFbUzbefjJO6eOSkajUfBx4 w==;
X-CSE-ConnectionGUID: /ITFoKYSQsKGGCHQJd44UQ==
X-CSE-MsgGUID: K1tUGKxeS4mwqx5JI4OEiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="39478737"
X-IronPort-AV: E=Sophos;i="6.16,229,1744095600"; d="scan'208";a="39478737"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 22:12:47 -0700
X-CSE-ConnectionGUID: fjgkE3gqSlSgvrJivdzbhQ==
X-CSE-MsgGUID: bjk9B2QuRhO2noLDMxurTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,229,1744095600"; d="scan'208";a="178311250"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 22:12:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 22:12:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 11 Jun 2025 22:12:46 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.62)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 22:12:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Do5Xxy9Kvh4GaX/BI4M9bE59kIqFr1nhq3j82yIjXZYDRIgGNsotE01kdSbSzsdPdV+gG4/VB755N6YBc2VvgjwtUHHIT3Zgc09s5cGCB6K+yYgEYzaqYkUuq6CaYwcsUG/JnWLtWzFoSIuOloiuBkMe3Hoxss798USO3mWX7aQsKlZF04plhcjx8dw8dnwRy9waEKO+t10NuDuDUcSp+sNpfza7bX43iAOD6EUIJQQgHod7FmivFFNijCrPB/awqrZOZB9PPw87hFrDseHTnV10fLno+sAwOG0iZAN1Arf3ietwqwfT6hZR1iyt9nl4/t8EUW1EgXcnk3fXdFwHPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bwbi/dVSmiQZKYxqFGp5Hf/I/BjDphxqiXzQyqATmdw=;
 b=RaCN0frL31GOpC0kTBx49ksT3Dt8oitJOwvgp8ZiPIkZioyDG+GS7Fsl1yFgEpPaTqpRGc30nhmdN5x5XERQTHF0IStdMH0zqPTP8LSb26D5M9DNyEAi9W2lcRKSD56d4jXRkaoT3J6VdVLN/ONeBAFh22/9UZFy2Mhwdjj/tJsgQHHV40rRF85hwjtwXRf1WNAhce6P5DYAyGVP220D5wW8K1VGEkPApG8Q6wMEC2m0l3c9eLfMb4Rfah7ylJjgtj9Lr9QrYta2FjgMTwKBxZzz7ea5TEL6ULjvT8A1b0CMpq+zs45/i7ygvRjOgQF1hSpKgJK8bW41MIYeyiVMJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA2PR11MB5002.namprd11.prod.outlook.com (2603:10b6:806:fb::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8835.18; Thu, 12 Jun 2025 05:12:30 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Thu, 12 Jun 2025
 05:12:30 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 07/21] drm/i915/dmc: Limit PIPEDMC clock gating w/a to
 just ADL/DG2/MTL
Thread-Topic: [PATCH v4 07/21] drm/i915/dmc: Limit PIPEDMC clock gating w/a to
 just ADL/DG2/MTL
Thread-Index: AQHb2UhnfVkFKlUFsEaEiRJXkGBzfLP881zAgAED8oCAAQcrsA==
Date: Thu, 12 Jun 2025 05:12:30 +0000
Message-ID: <DM4PR11MB636005D5E70CCD8D51BE72E7F474A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-8-ville.syrjala@linux.intel.com>
 <DM4PR11MB63603D5DE7B6FB5F13AA2143F46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
 <aEmDWG_mdQiLI6fq@intel.com>
In-Reply-To: <aEmDWG_mdQiLI6fq@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA2PR11MB5002:EE_
x-ms-office365-filtering-correlation-id: 35ac61ea-072d-4e00-355c-08dda96fbb2f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?KNNaFeuurjcmmtGRrN0/aiaKkzboZJ0/D+rQ8Go7GaRA+FL8eN6FqPqsjK?=
 =?iso-8859-1?Q?ZHZVZ63iLRY+sHeUIeC2+8iu7OvQSNUJWY+XnlRSJKdRExBpdLYFaWVAgi?=
 =?iso-8859-1?Q?Ur9+yT2uJy7QabeCssBwIFjUpfjp3BofRPKxzZhjc55VbKVopUif5XrMU8?=
 =?iso-8859-1?Q?giyWh5R95Cr14pM4Bs3FW8iRC1hgfrbTMSZjbEPwbHFWGR2iyiSHx29fTp?=
 =?iso-8859-1?Q?K8I+dYlQPR+H45O3+xh1qPxL75r/EX4Z0wn8UIBmyYQZEeG+Mol02NBdIo?=
 =?iso-8859-1?Q?M1lmIh0PsyD/rraGjJUDptMgE3TUNoazaQvfo3kZ1Y1LHAVg6Iy/YRYTKg?=
 =?iso-8859-1?Q?ifmCSKhcKpuI+bP72U7nWeX/gYhF0D5OLXJWoXaspNPjGMBsRqESoOGIho?=
 =?iso-8859-1?Q?mhlxcJtLc7wCoRW9CWsWpOr4JMjovEIcTT7xril1bOsjxoEM8BRF9SwO3/?=
 =?iso-8859-1?Q?X0iP1m/V1h33aPfnKFJ59/rgPuhHNSLV6SK2jG5c2jIsk2p+ihhRpszj9l?=
 =?iso-8859-1?Q?MSuL62BkTpamUPPn92CLMwCN70nr5fPI2ATVSr7SBiLG0rvotN1DcbssBh?=
 =?iso-8859-1?Q?2PTTdbnusMuQcHnD8IHckTvC0O2FHynOAz7fzisJ1sVBAGId/WWQG4Cocm?=
 =?iso-8859-1?Q?mZTiMk4BwDe6ItypcQoadESkUbagFmkTXXunYHtEX/eSRZQ32EuBfKHSwZ?=
 =?iso-8859-1?Q?/zjRBgAfmPF7IDQi3ZmJeXalUAG5RbxtjHYqv1Gv/JE3J/Dc7X+Wa1l45A?=
 =?iso-8859-1?Q?kJDlW9lXUuS9DSOEZA0zq4Rhzkk/HYSkcgrJ3bQOuAnPQRIUWnFewx56ZK?=
 =?iso-8859-1?Q?CWOR9bU0sjsm9eq0/Ir5xJrDpEuuWZ6zMiwyoeNIJm4U43kBe+KyG3LenW?=
 =?iso-8859-1?Q?pdKPfHIjOvZoBtnSyDGhyhUVd7bQpwqFq1fU5YEfQdQfG/WCVXSl6SceK2?=
 =?iso-8859-1?Q?UUPzzHGIIyctloB2WeTpl6TaNpw6EtG/k3aGDvCv2kqb3tjMONSYv+YGII?=
 =?iso-8859-1?Q?LTlUMaKVHQ9vPTd9iJuMDRAmDxGf/GFlFRHmOVEovRMfnFoiqmxIEMWB2F?=
 =?iso-8859-1?Q?qjPSLKCUT9V9Pcnf3nQP9soiM7nxF4zssr7NTGoSW1WhBxGA2jmaDlA1uj?=
 =?iso-8859-1?Q?uLp55uD2N3IQ05ewUjXQ8sy67fkbUZTNb8nc+snITEJ+h80oae/6U2Dy5s?=
 =?iso-8859-1?Q?Zqg09r+FC5mUCP6BdOP8v3xGn5HxOcF7oHd+lsllF7aqCp95j4JLEj5E5y?=
 =?iso-8859-1?Q?RuRLdddv7R5jUhcqkji/dnknnAzBhuzFGCI3JPElE0ITS8cLrUATQNExPl?=
 =?iso-8859-1?Q?4fnHXRNvqxR1oKml/x0l85GcVP1iPGb3gjSyeE/TWz5ndS560DDONyQ4Af?=
 =?iso-8859-1?Q?WT2dBE+6+aN2wPvZ04Z/CdePg+3XPRzejrwvS4cG/JoRdociOxJC5akMQJ?=
 =?iso-8859-1?Q?5aEUtEo+DeRfZwQHcAVtjgrwYfb0A8lTTo8lT4bZCrwJS5u6CnqEB7S5HX?=
 =?iso-8859-1?Q?Rrndb7kCcXJ50mzddSPy5bpXTeUJz7WcCuUhxld0kwJw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?l/NvSMXhqs6745kXx7aJiaSJcfjBgBCOmk2itNXajBvj1ri49PJq5Xo2FT?=
 =?iso-8859-1?Q?kdBLeEqxPh6eJsyeDY8WTp80VDxzy/rYMu9QbMJ2b7UU+vJp+CLhKh0jrE?=
 =?iso-8859-1?Q?+3GkN+m369hj1STwvtoPODxEYlizlgjDUg/OapJ2xOoClCvzknePESwB/A?=
 =?iso-8859-1?Q?jm+xqkuPIBneVZQs9rALZOtH/8lJYojYoXXabuN3LMhhkBSv8SrxzbubJP?=
 =?iso-8859-1?Q?dKsjCcSVXeN+9CZibqYVNRNaBEtCJz65UxLQy3BkimpWU+xTBQ8KaL6AJ0?=
 =?iso-8859-1?Q?mbqKDBfKTIoBkACXYOMpZ0BqM9zEgu59oLaxmEuvFIcDKJdxfPaO7Uyp+j?=
 =?iso-8859-1?Q?h7xbOPYaLPYjIO3TJdvwhMUmpwyryUS9zwUycHNkyU5HHPbjrskToQ8UnY?=
 =?iso-8859-1?Q?ZaNp7NUJ5lJvL+ZW5MxhH6xcSdgBJTh8iUZpz1qovbcRsoc1AGJAB0ly57?=
 =?iso-8859-1?Q?+qcITpSO7OcYXBJIB2OisCgGHagwYnnJptzBQ2NnDKuQzeyYkTAoMhmLGU?=
 =?iso-8859-1?Q?0ceAL3o7YW06rfW5cf6dMvdL66F3IRm1cL/vh8ftdamG29+++yVZ6X2w8M?=
 =?iso-8859-1?Q?dVLg/RmQcr/3I7+4WZrYEZdBa13dA09gpP3UlY7bUMk8R8r/cW3ka5Ht0W?=
 =?iso-8859-1?Q?kForBghzjrdioOUSEK9UDMkm8AbPKBvDueQFWYn4dkfnZwM2+WMC4Td+9f?=
 =?iso-8859-1?Q?mdEQ8k+Th+pRwuplggDvbskJ3ngYAD4kjpQux5GNr3r+TMaMUerAEiB1Ja?=
 =?iso-8859-1?Q?Kyu5PqFlgZbCByTOeT/DK2U8GxkjpF2bvjcVCAot6G5aYzWDvyxiOuQqjv?=
 =?iso-8859-1?Q?E3OsNQ5q/bJ5ACkvpaFr2nArlef4iAJ5Bc4dQBZcheM8MsvjXT/Iv8Gvvh?=
 =?iso-8859-1?Q?6yM709vSW8TW/nYSASQaAObDJbjuVie7jsG/aiQwRrbKtwdthCI/cBH/aa?=
 =?iso-8859-1?Q?8LPw4ZztnG5Q5VH8RQ4tEEHYSpYG4JGFImfT5NS17YEX8g3abGB7bP72jf?=
 =?iso-8859-1?Q?G4RRIcefemxTCEl0WS5JEmPPPtdNZRTOURFtC9CkAW721lzW0PIYyw3Z2p?=
 =?iso-8859-1?Q?aplB49WxZlOjs6+3jUaqbu4KPRIlwMR+nzv378n/YB7Zc3ErY9SlPoBztR?=
 =?iso-8859-1?Q?QDoAUeJzcXR6RwEU23BxJA7ve02RdaUBPouMVyVd7W1CsPRaZz2Q739cjt?=
 =?iso-8859-1?Q?8PdygeUoo4g3oUhOgb0dJ9M3s1Rr2YUmyMQTxeQI6NMhLOPm9qoD8YUyej?=
 =?iso-8859-1?Q?uW/7VUhJ1gCw7j3yPj4PtpVEw4kB1YHuhVNumePAgQ3Og7XdT2Ut/KJXqK?=
 =?iso-8859-1?Q?3KN/rF1z/siEEREkoqs65ZXDSg8yxt8gCA2MGlV4MNj1LyGXrRySgZqwZx?=
 =?iso-8859-1?Q?KtojSjSZZ/yAbWbcVha1HGwGqnr3O0xVdzzqYgoXk45UZ8YFtVP1aOQr36?=
 =?iso-8859-1?Q?Y6GpHs9WQVuo11sxwBkmhKyCV+rmYaXkV7ebskVkRoI9kpN6gtWzYOCjnh?=
 =?iso-8859-1?Q?4IY5qlqz2vS7fiw7JGcMH5WdsaotHPeQz4bb0wT2qpf9jah23c4d+hOFWH?=
 =?iso-8859-1?Q?L/zke3lWbTMEI1K9l4LvhddZJNBh+v5Bn1v9aGDDt1oIkb+P8gt7C/B9Y0?=
 =?iso-8859-1?Q?OZXFzUNeF1YO9MPM+pEQVJh/2Xr7YLzZ5Q?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35ac61ea-072d-4e00-355c-08dda96fbb2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 05:12:30.3133 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bsd26P8lo3I731A5gEqmf8pibsiF1Fmas7wjWVgN9tngCRtNF95pbb673igE99zivC2aM5urk4h9J4WNIbnOvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5002
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, June 11, 2025 7:00 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH v4 07/21] drm/i915/dmc: Limit PIPEDMC clock gating w/=
a to
> just ADL/DG2/MTL
>=20
> On Tue, Jun 10, 2025 at 10:06:18PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Monday, June 9, 2025 7:41 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: intel-xe@lists.freedesktop.org
> > > Subject: [PATCH v4 07/21] drm/i915/dmc: Limit PIPEDMC clock gating
> > > w/a to just ADL/DG2/MTL
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > Supposedly nothing post-MTL (even BMG) needs the PIPEDMC clock
> > > gating w/a (Wa_16015201720), so don't apply it.
> > >
> > > TODO: check if the ADL/DG2 "clock gating needed during DMC loading" p=
art
> > >       is actuall needed, not seeing anything in the docs about it...
> >
> > Yes ADL does need the WA, you can drop the TODO.
> > Display 13.1 ADL: 16015201720	: Clockgating for pipe A DMC and pipe B
> DMC needs to be disabled.
> > Bit 12 of register CLKGATE_DIS_PSL_EXT_A (4654Ch) and
> CLKGATE_DIS_PSL_EXT_B (46550h) needs to be set.
>=20
> I meant the part about also enabling clock gating on pipes C/D while load=
ing the
> firmware.

Oh ok, got it. Thanks for clarifying.

> >
> > Looks Good to me.
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index a10e56e7cf31..b6ac480f391c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -487,7 +487,7 @@ static void mtl_pipedmc_clock_gating_wa(struct
> > > intel_display *display)
> > >
> > >  static void pipedmc_clock_gating_wa(struct intel_display *display, b=
ool
> enable)  {
> > > -	if (DISPLAY_VER(display) >=3D 14 && enable)
> > > +	if (display->platform.meteorlake && enable)
> > >  		mtl_pipedmc_clock_gating_wa(display);
> > >  	else if (DISPLAY_VER(display) =3D=3D 13)
> > >  		adlp_pipedmc_clock_gating_wa(display, enable);
> > > --
> > > 2.49.0
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
