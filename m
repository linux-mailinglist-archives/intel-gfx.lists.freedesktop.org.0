Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 074FD5BF5D3
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 07:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C49B110E0AC;
	Wed, 21 Sep 2022 05:14:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E49910E0AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 05:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663737292; x=1695273292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sB0B8kSLN3bu/246T9A34hZ8B6Egiy7JebR6CWyKxyQ=;
 b=hF9HA41qWa+q5HWwC9Mw0SwPKVf5l+QFCEVn13Uwe948gR8jdcxfZ/6l
 G5Ym94UwnbNfQ/7f4t9k4MVQjHa4hyqU3Buoaann8OH6qmtDcCNy2YCuR
 reue4XVm45SDrt2ZabDAWotmjvma2IFFL+m3xOgGb4loZbAqfxILRe1ba
 my+WAgZOwD0SlE0H9mffVSX9lw0mstcu/4L8tXXYKpMaeM5p+siZXOeSZ
 V3H5emc0mViyXGqTckUh8OKuKkFeCNgPNLSJlAlyDIEDSa05WqA2nkr4u
 mWtlxCH1OFeaoaRiX+aY/FqBdK/Z4j0/0fFPqzvWmrU2WxhoRcXUqsXXB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="301300214"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="301300214"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 22:14:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; d="scan'208";a="864274158"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 20 Sep 2022 22:14:50 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 22:14:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 22:14:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 22:14:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZMrxaWOezOPMDq7jBKJxH93Fxc43kykhGwAgTV6+ibLsJWfNsCghIL2+i/CP7O8qAhPIkjfutFg1FbQKwjUx5Y1jJqcbDbo3YkjptVJMss6LTn7XuLD467oxMuldtDzusNCkjoxAbwJOBtb9lUS+5vWpliTcUo5QYbPlH/BX37+zTXH3n1+pEU674K2vCGYdGOTTpIh3hKJXI7/9yIEaQcS9G2kC6nXD0fmTFzsnrgakf3ksyyi4X/fauXqQEQfj7VVZuEwM2oIu4le1pLrV4Q8TDi/hpkGIttm/z7i3KERLsUoPqMlNYy+duIu3qjlxZ0l9TVCitXPSKscKPbsTJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N7RT5cmnpxGvO8rmscPbBRvNC+najahmgEbMRNZ/KMw=;
 b=hYxrIEZIJJMxQ+Oxime3qlgQNQHc4vT4SQaduoh9qO+ryQhAsptJvBPZ/2hCr5EUY8uJmuh0GVTENQ5AeItNf6ieubqOvJ54WGC8nOTJEVEh4VcA6lU+ZyKFdG0J+I0OLA/J3CvNE/Epf7e3yp9yhke49YSHmq0sSDMdI0SydUKUxae1sB8oBspFY7ssr7DGfMP8JhYk9f5GUMY4iDk/omGMqBNHHadgV3nGa5olge0IjUtCj/09b/o7hRhujXkZ3Cc1JsqDOJjDTTkr6VFzAbfUDYhI4DsOg+oo+HrWgRUVaGypOPiOPxti3rdPonCqNZWuG641YPhmL0ABY9L8Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by CH0PR11MB5378.namprd11.prod.outlook.com (2603:10b6:610:b9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Wed, 21 Sep
 2022 05:14:23 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::9495:fe48:92cc:12b2]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::9495:fe48:92cc:12b2%7]) with mapi id 15.20.5632.021; Wed, 21 Sep 2022
 05:14:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v6 0/3] Enable Pipewriteback
Thread-Index: AQHYzCic6xnSqFKLqUyz4TQRBw36Ha3pWTuQ
Date: Wed, 21 Sep 2022 05:14:22 +0000
Message-ID: <MWHPR11MB1741C11FB01559C4C9B1187AE34F9@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20220919130505.1984383-1-suraj.kandpal@intel.com>
In-Reply-To: <20220919130505.1984383-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|CH0PR11MB5378:EE_
x-ms-office365-filtering-correlation-id: c00823fa-1ac3-42ea-b81c-08da9b902543
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PXdTGyR8gf9CtRC8gYCyneL0F4AdT6A9ucakQwDhXolbxAunz8+pJECk4pXgHu3AG0iX0nr0iwcu2ZCyY2Z7wBfC1zLCGrisMElik/Irqs65IJEnsAm+sde8vFvSiNev9UBB8aOPeyk0pcdHFpScS4hbw4+8LrRZvXZ7NejRqoxRKtQwCBK7zfd50E8d0juDPcthXXUNtWAlmlMEswa7ZF/pYIi4U3BKtL64/qlXqyxghNSEkBwa/LyqDkhNI1pqdOPNR8mbykftpct86SaGPE4eTkNGE491oTUZz07RXFWHySAz2KoNF5I3z7e2dmH45+NrcMTXZd1S2JmEfIh3QtLF1mblixKdQN7r1dX88pgtcgPOC0EUBvIFHhfZNGpTxoaIkboBrjo38Snil7Glc0VMT3Hvw7DtVJ9NWAJzuSGwcdCPIfGcZ8kKzV8d0VP0kt+cnLKqBXMGVa3fpF2q1szde/EJygKuFBgOuMy8QdOddm1rPoyfXpjMdsbENkhcEkHCfNmVA3kYz3uMAsmNFPrfFkjZCNpOXrUDqDtQIlE9t+XNnGO0ofBS/zbyf+pGFP7HdK2aC6utULeDxIP/saK+4iD8r6kwSJymzjFx5TaPlc6QFA3jAg110fHU7BS85HEOTMQEJiwCONpk/eZOG+ztVK/Ak35Gydgw1R8amQgSdaudYmaC3q0yEVdNVs3fitdQBm33g3AUQNYGhdWgKZq4ezbXFYP3ok2f+z/lsi/OsDhc69V0dFh/TTpvgUBpOLWsfNiByP3xNAi9pEbS/GDu5FGbgTBVdkyvju7n3NzD3tEWUc+mCbyCuMe84zdNw2/wTQEnffIf/8dpkp1uSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(346002)(39860400002)(136003)(451199015)(83380400001)(82960400001)(122000001)(38100700002)(38070700005)(5660300002)(64756008)(2906002)(41300700001)(8936002)(52536014)(55016003)(186003)(478600001)(71200400001)(966005)(6506007)(7696005)(66556008)(26005)(9686003)(107886003)(8676002)(4326008)(66446008)(66476007)(66946007)(76116006)(316002)(6916009)(54906003)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iuyo800VVnMtXNY5plMupTbPJcSrRKv3XZg1k7IwP5HwpRC0ge8isv4EGwLt?=
 =?us-ascii?Q?8b3LHK/K6zDKhcQ2lGmH78ifmchWCoCUK12YRxMuqDbNU7JgWzOQRa3uEZjY?=
 =?us-ascii?Q?WJbddoCD4j/wdfdX/ZMePh4QHpltCx5WbZhI71tSFlhgXvXk4EIWjPhuL1hr?=
 =?us-ascii?Q?sMgwgR0pAP4QwL9sOjvlAfcvmOx7QxwAmXGILJtZRi3EWTyV/Pb6mcrvCOj0?=
 =?us-ascii?Q?UZdHuy4Jcg6HufOzsyBl2nYu+IeNLMSLrRqwE9qn9VvH/VJS9pWRBc+AgduJ?=
 =?us-ascii?Q?i7fm0/Qi04TuHrS5p77N80b/hwFx/sbg+V4k0IMitWrcM6bSUoZKYSv0gLWC?=
 =?us-ascii?Q?8A7qjQD0f+1CQH3J8j4iy35iUrC/NacAaloNAFwd5zMLm+NVQPpqaFjXHAYV?=
 =?us-ascii?Q?HPVJE6wOD6rvcdi7JOhZTQkUNJoAfxZhMrhfwOGBg8HH5whrC9sp3+zUtE1D?=
 =?us-ascii?Q?bCSCmLF0USaAedEX9ln0A5muwqdHjKq4Vqr67tL66swXqjjCpRwOEwx6PvCs?=
 =?us-ascii?Q?RKzRh4iOE4tKL4i4G0DvvrYvLADBMGSdEJLOo3/NwAykvrlkahmyFgGBjZNt?=
 =?us-ascii?Q?FLdh+vPidNjeH92kISCmMInaTRPI8r0rX6cS+y2oneJhrGI/TUReQgdI7rqA?=
 =?us-ascii?Q?7n5tpFqElDTF1GHFNxgEMJmC1vyLFkcO3pNWqzj2/kVZOAN2MtJ36Jhc4viu?=
 =?us-ascii?Q?fehszbzT8tO5xPuVHKklXm9TleaXA2OeCPgzmidL81Z6Nx9HaO0ME/3ckEAt?=
 =?us-ascii?Q?Bk48MXxtEXiVJv68Qk7+9zO5pF55GihztLUyHF4RU7uGMF4Qmq6Q26Rlb2uk?=
 =?us-ascii?Q?n3m0SBh4l3YKZSSPL5p4Ty8OKc/OxfkwQ+epwRU8bzuycXMhUAi8b7wscw+5?=
 =?us-ascii?Q?9RBDUWFTANH+DxzLyB1iet6qm6ocydCuJA0RyIsoXWVzEZehdrqvG3A8NuLq?=
 =?us-ascii?Q?nXX36auBVGLgF0PrNbURUNUAo1LalpnNLLJFDY4cf6sdlUNr9eKsIVh1Cske?=
 =?us-ascii?Q?ZCQ35y+ZUmi701C1wylPWCCRY2IH5cl/x8W9njDl6A3IrKKujEPHK1wF9Lgd?=
 =?us-ascii?Q?OztoVDiOM6OQic449sB1HZtOiL8KEXwJbRfZF/wPQ7NSYvOEIa06GnAlT2Zx?=
 =?us-ascii?Q?kKeEIKXAOEq+ldfsxv2Hhj8KcS23eXjX0KbGZjx441G/GSn1TZLOd7VjnqfB?=
 =?us-ascii?Q?wGyZaz7U9UuVTTxj7QAwaOQcSDVCCAsfzhaeZIMtVNwF82QIHbSdVvtx4feR?=
 =?us-ascii?Q?8lRDPYRjvCPyWx8evThd7YQ7bH4zoavzq+ThRRR5TxIhBqCXBtae1Me97HV5?=
 =?us-ascii?Q?ZRBV7ggzOq9uFpdR2+xphzWSmcN3YCAute9khg9dg24GaTOTiMUbGavpyfJh?=
 =?us-ascii?Q?Adjo2kdxfmqfHWqKrwoVABFoN/NDlO88k2UvGPsAssHd6fKI2QWfmYsncfSk?=
 =?us-ascii?Q?60C3T0oHYWAIa/H8JGY2F1bH1Fer5z3fttWVhZoOVyHo1xr8fvZcRZWw0yhU?=
 =?us-ascii?Q?TXQmGEZuunlircUvDCImvwGKW8BlrjLpC1vHTN+xRul22WRnEsHtNk7oXoDL?=
 =?us-ascii?Q?Fwl0CC8I+/Zvc6hBtEUWp5R/WL/ZWm0O9evzdp7T?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c00823fa-1ac3-42ea-b81c-08da9b902543
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 05:14:22.8824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6lqfhvZJllS3uW+YF7YecQ3eeEQfq+6ajOHwmiFnPRWQimk46S+gGqkG8l/QF6aPEjLA33whboHjOMfFu0tk0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5378
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 0/3] Enable Pipewriteback
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,
All patches have been reviewed by Arun it would be great if you could have =
a
Look and give an ACK.

Regards,
Suraj Kandpal
> Subject: [PATCH v6 0/3] Enable Pipewriteback
>=20
> A patch series was floated in the drm mailing list which aimed to change =
the
> drm_connector and drm_encoder fields to pointer in the
> drm_connector_writeback structure, this received a huge pushback from the
> community but since i915 expects each connector present in the drm_device
> list to be a intel_connector but drm_writeback framework makes us have a
> connector which cannot be embedded in an intel_connector structure.
> [1]
> https://patchwork.kernel.org/project/dri-
> devel/patch/20220202081702.22119-1-suraj.kandpal@intel.com/
> [2]
> https://patchwork.kernel.org/project/dri-
> devel/patch/20220202085429.22261-6-suraj.kandpal@intel.com/
> Since no one had an issue with encoder field being changed into a pointer=
 it
> was decided to break the connector and encoder pointer changes into two
> different series.The encoder field changes is currently being worked upon=
 by
> Abhinav Kumar and the changes have been merged.
> [3]https://patchwork.kernel.org/project/dri-devel/list/?series=3D633565
> Going forward we use a drm_connector which is not embedded in
> intel_connector.
> We also create a intel_encoder to avoid changes to many iterators but no
> intel_connector. We also changed all iterators that
>=20
> ---v2
> solving BAT issues
>=20
> ---v3
> -removing unecessary comments from i915_reg.h [Arun] -moving wd_init into
> its own if condition [Arun] -fixing comment styling and alignment in inte=
l_wd.c
> [Arun] -removing continue from loop and calling function if condition is =
met
> [Arun] -removing useless arguments from intel_queue_writeback_job and
> intel_enabling_capture [Arun]
>=20
> --v4
> Adding Reviewed-by to patches which were previously reviewd
>=20
> --v5
> Adding Reviewed-by for patch 3
>=20
> --v6
> Solving BAT issue
> changes for checkpatch to pass
>=20
> Suraj Kandpal (3):
>   drm/i915: Define WD trancoder for i915
>   drm/i915 : Changing intel_connector iterators
>   drm/i915: Enabling WD Transcoder
>=20
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_acpi.c     |   8 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   6 +
>  .../drm/i915/display/intel_crtc_state_dump.c  |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  68 +-
> drivers/gpu/drm/i915/display/intel_display.h  |  18 +-
> .../drm/i915/display/intel_display_debugfs.c  |  13 +-
>  .../drm/i915/display/intel_display_types.h    |  32 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   6 +
>  .../drm/i915/display/intel_modeset_setup.c    | 119 ++-
>  .../drm/i915/display/intel_modeset_verify.c   |  17 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
>  drivers/gpu/drm/i915/display/intel_wd.c       | 694 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_wd.h       |  48 ++
>  drivers/gpu/drm/i915/i915_drv.h               |   1 +
>  drivers/gpu/drm/i915/i915_irq.c               |   8 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   7 +-
>  drivers/gpu/drm/i915/i915_reg.h               | 137 ++++
>  19 files changed, 1137 insertions(+), 56 deletions(-)  create mode 10064=
4
> drivers/gpu/drm/i915/display/intel_wd.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h
>=20
> --
> 2.25.1

