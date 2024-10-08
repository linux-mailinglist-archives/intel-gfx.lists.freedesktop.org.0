Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C89FD9951BD
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 16:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D2510E562;
	Tue,  8 Oct 2024 14:32:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aZ0Ye1Y2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D6FC10E55F;
 Tue,  8 Oct 2024 14:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728397978; x=1759933978;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YSPMjRitaQjOx1vGR5iEjYFV24GECPAGgObl35tjRz0=;
 b=aZ0Ye1Y2ndBpUyqBIRHZlEAmbPEzBFnKIUdktZwXYW2XwywYP+ZMwL4Q
 yov9o2OGKjPLp2r/gdkZcJATlunkD+xGhhB8IkNlcHDLIWjPdYUhUenV8
 0Ad4G0N44dTVS5G5S7/YLO3sk6qc7W0OmgpOe6vjPFQHRBYsKE7tMSVFb
 mosMz06zJzDrkJKyJ2iOCADMnFsbB1nqzywv/vsX4ZMePgsnRO8+VkCkh
 7Kgxy6eZhiU9byjnIDhJ7GL/zBHNo3v0eCt1pXxSkRX3w04k97UtVw5Pj
 96Uto6cewVEd8tIcXS26UTxdJSx1u2PA0rE1dPPiVQl1Uxjn5URF/VD3J Q==;
X-CSE-ConnectionGUID: 9MBCYoytTkujMgY9maauQg==
X-CSE-MsgGUID: IGWkBuknQJCT7pjk0HxP7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="38166146"
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="38166146"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 07:32:57 -0700
X-CSE-ConnectionGUID: klgofU2GTwKiye1mZS/Z2Q==
X-CSE-MsgGUID: CCjXAvuOQW6JjuTbbtUGvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,187,1725346800"; d="scan'208";a="79832314"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 07:32:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:32:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 07:32:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 07:32:55 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 07:32:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W/ujfGjqGsbVMCyGPxQhqcAK+t6u2tvBzDOX9QNqDZ5K/jWFvVA8K+RBKHRWEPLMhUxd16THiOprmNY1kmgzAHwzHFPLj3RZirGrnGgnNzGJv86LutGfQpoiELyTk3GdpiCbsjZ62Gdzg6gJhADg9vRHGNuwwSm1bNU1dnbF5k9LY00es5XFHKWGwg23s/MGX1VOt6/DM3KnkLzdm2GbDhLmjrAKKL2w2C/2TYEmDAWKMTbFKjOJm6l/c41JkoqHaOjCg3RVxQgxeE2Nxj2zImF+/ePFzAMtvjzGiPm0t2JO/GL8Rn+ThKOg/Wfyve9RGI4AAaau1nROYv8wrYaakA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QZjXXjREsCeotUmKhUjBOKlvvbbRszH7ScAyC8TNWMQ=;
 b=o4lpCIWt/xJuD9p5DVnbSpqWIQ6jqplvUofsNLNyQbl43Fcmy+yfy9/QV63bEEN7jtvz+H/xd9fWqzTReNBDAtKMfsiaxgR1eTMM1dzTqK8cZJpVS+l2tUhrwGfYaUDhQ+HmLOi9iQPcoz3YTByWN+RVU//12m7UY5JD+BrEuQczxCazbFxzIGD6v6GyzYp1rOf7f+Qh/P3qcB3hV/33Ah+MoQIOW6YqsVBAOmeIoPLPpeeE5UQ6oz2yGUCBGw9Ljx2n+iC5nwvw7+UY0/FhuT+Ge/EzabgzJt+7cZzA9XzNkAGTIkgv183vkvGbfHhG2UQKqklqrtkUHJQWkQSf5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DS0PR11MB7927.namprd11.prod.outlook.com (2603:10b6:8:fd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Tue, 8 Oct
 2024 14:32:51 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 14:32:51 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 24/31] drm/xe/display: Call intel_hpd_init on every
 runtime resume
Thread-Topic: [PATCH 24/31] drm/xe/display: Call intel_hpd_init on every
 runtime resume
Thread-Index: AQHbDsJ/cHv/hrSh1UqOVO++B6MTGrJ8//bQ
Date: Tue, 8 Oct 2024 14:32:51 +0000
Message-ID: <CH0PR11MB5444A1586F8AD6A3BFB83F93E57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-25-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-25-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DS0PR11MB7927:EE_
x-ms-office365-filtering-correlation-id: eabdd9fc-46ce-4d48-625d-08dce7a6170c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?iTwRW1wJ8NZ20nWDHNjjS9iKJwvrcouXcCpKNbeIUWCYEL6qfp7qkRE9/k01?=
 =?us-ascii?Q?8dwq0n6zxAtCsp7M6THMw9LWAxITZ8IczaAeOVin/lpqP2Dr562MDwv9ovAP?=
 =?us-ascii?Q?1epW4p7C8CD9R651X1HDLJ5jeuLvZIxFnP2kVP82AZri+o2FkGosfRQaS8oS?=
 =?us-ascii?Q?6H0JnM7odWvdPJUrO83osKiXiTG4fKoHFlSS33GBnF0/nj+KPGo5OoR7t/V8?=
 =?us-ascii?Q?PAF/Cev2nMoRyvlCiKZBPhCy7kpIyVfs+LUG3PG+mvHyuE/0epCSbPHRzN3N?=
 =?us-ascii?Q?DWfYRuUskPQ4BZlVDQ5olvOCQF6sK7E+33hj9k0HjPRN04lA8PotLQ/MyBUC?=
 =?us-ascii?Q?Yteq97xD43Bm7qXymaRZ73w9QOulveqBEAsERzDYT7mey8oBX5mHhRdEf4dW?=
 =?us-ascii?Q?7kaTjORkYSOY8MuA1jAzRv0UjLuRg5s775+ykRrWaKzMURFasMYWt0mq7pIN?=
 =?us-ascii?Q?FA6F0LMDSYaQER0Vgmr4tzrrROYL9q0KS82+yOw6zsvkKarm+cC3gFBDout6?=
 =?us-ascii?Q?oyUxNI0TzE104Ta3nHUr9RyalHU+6NPm+PPqpxEguBtPVBerirobE6i3e3bT?=
 =?us-ascii?Q?mpvQ4I/SMe6Irz4TDhbF9wNhgGvpGUqW5h/Egae3a8bIUw5NHum8cFvZCJyc?=
 =?us-ascii?Q?pUgKAORDmp+WCgQWBUGp5CVGFFAppoRw2AORwXMvWhezmcOM3o0OYAl0zc4N?=
 =?us-ascii?Q?Byh6rHnny9H6c2JYtBNlzPrK4HPQkzmSkbyfJI0ZEtB4f/grTX8CFln5A0GA?=
 =?us-ascii?Q?NNKvbX1eNUSOKJ4bCc1ADUGBUJOaZgkUZ0DxJVKlHQQdfQPchUcCQY7uzoPK?=
 =?us-ascii?Q?whdIBz8+7/8MHqgha42khrbt6EPEITow1f92ZYQ7uM8nKb/PNJf6XAMeSTTL?=
 =?us-ascii?Q?OlYPydzCQbaQOxhUBHQQPGvjRhs6yyL80yErlqGmzkFENu3xnPTA/YQojUxN?=
 =?us-ascii?Q?u9zeX1c51rLe4OqOYmJVuOsp+b4MR6kO0Dbg5gF8pL6VYLTuy2sEmAjXq2AS?=
 =?us-ascii?Q?SAP7vaqXoobOi7aXxulpCnnD27W1sLB58xvUjNzjIGKnetWzayr4ghK9e9zs?=
 =?us-ascii?Q?Sgaf1UgnMmZ1DJQ/sPXWPMC2EBbXytBVSP2qkhI330JgIAs08cvK52PQPy9D?=
 =?us-ascii?Q?pGSHbGNTeAYyNVSMLYbHRHu/udP4o5/AVifHMBhGCROSs590C3wioYaRe2rI?=
 =?us-ascii?Q?ea0dl2P5NBWBzpGxzcw9CxToiZubaDyuKzj3BcjIqKSiC8oE9sw/eA3ZAS68?=
 =?us-ascii?Q?BMmZZfVVUrq3QcInvcMcTUoY6MtwPA+C8FSgLRGI40g2QDexsF4/hVjKlyCn?=
 =?us-ascii?Q?Ia2YKvTAiPlDNO35e/dkujYmzx8gC9CX7iroKk+aAdGamQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TQzJybd6rIVonBTBV5yu9DckovFq1mqq8uVilmd1Yo0zxsAFxP0tv12Ws2q6?=
 =?us-ascii?Q?jObZNdoZzZXyhdaF/0SqvMBYJZwDXBm4yi1vcwUGE1Al8TDLLOLu33vCNszF?=
 =?us-ascii?Q?HhNhrQWgVPIMpOVVqbrt01pgbBhPPD1QXcMZ7dS70p4HNn9yV147gTtukUB0?=
 =?us-ascii?Q?A2zUYXHuG8LtnEjAEjAM+/lYRKco/rUXBoa2trlCmBqnjvGhDmt8kg3sqJLC?=
 =?us-ascii?Q?Qy3nF9DdOwIkZNutg4YF7gX+dEQl4LPB4PlV41FQirH8mTeQm1Z5HQWK8drR?=
 =?us-ascii?Q?8WcjEH/zK2v9a7OtQTJBGKQT7Jtym5oZ1IT9hLRAfzAwRSn2+VPHmZb7aqzQ?=
 =?us-ascii?Q?LaEsMHHhnq5Rt5JVS4oeqego9PsssWyx2JBhwI3Nv58czPMr0Rx3uxIfJBpJ?=
 =?us-ascii?Q?ty3xXto0i9QJMWwLNgb4W8YJXBqPHzwNj9WyNz5enaiVsPzaBMJiRes1XZOM?=
 =?us-ascii?Q?VndxZ7fNZIfIsIVMjd0RTbErwM1WHQD4RtZIzAZHMByYv9NuuibT47IgNvFV?=
 =?us-ascii?Q?vQ3FHS1d/+sgaaE1H7Run+oCxtwLEass3PfH6z4eCgw3Uil367C49HAz6nBi?=
 =?us-ascii?Q?Fz7ACP9UWT4ZkTzqLC5lDhWjol32n2IrKZm39B5bq97PidcW/7m4r7nnPsX1?=
 =?us-ascii?Q?f3Xas/V5XTZ0XCPFM9ZKI/uhRNSG/pnfI9300lEQ5JpnJlkFzwZW6hZlQQ9m?=
 =?us-ascii?Q?Yr0swEaPq3qsp7L5xomdv/hYlDLBAPmfp73SO9ffviLPRu270QVu0Daf6Fl6?=
 =?us-ascii?Q?8kb9FMYL72W3lhEHArYxInjtYUD+cBfTGyansMsiaLaGKf0N0eZ0NVZvjY0m?=
 =?us-ascii?Q?ol4OuqEzyxb/Lqw8RS4nV/SfQphn1fHI79zq3ifJWU6ZISCCtW1CvoqNCHS/?=
 =?us-ascii?Q?j04pz0ZMRTjrhNNI2RwtSRto52ZpsKPE+eGgNP3X6a+Gz2K1s8rjEghv/j6z?=
 =?us-ascii?Q?2CM0HomAIXKxdyhDP60eWGTV4MtMyKuADlFQaEDnsOXEEg/ozU8SgzJ9lfiH?=
 =?us-ascii?Q?pa4WZHLV/6+Z12BPYHdQsFv9EpU6HwBcVGEm41pq2rO2igQZMz0dWC6FFt8a?=
 =?us-ascii?Q?FMv0P2JZP+E9xq5q6VNFWDxkZ3a/CJ+tRwckGH5iQP0wiiQXdudfNhO9mqyO?=
 =?us-ascii?Q?VmlaRnkiZugcjP+e98y5wcnBF4+tliKFwEjjDt36TfE5CsSkwksVdvxHE66U?=
 =?us-ascii?Q?P4qiJ44EVT2zQ2j5z5oUtUD4QmynB4OighJKy9IByutTyCfIUu5xyxgLbBHU?=
 =?us-ascii?Q?K2obb/OjemQy6IsEiKD/dw7Q7EVf87Wzq8wqG2oy1v4j2veM8LRjdP+ETM9w?=
 =?us-ascii?Q?AGSPc4bdEIixsD308/3ucgT9W3z5utrpKbmXLm0x2gy3UGyoZDo5bgkt5PE5?=
 =?us-ascii?Q?YvDKfV5eLmuEsaFg7Y6tkkQY9Fj+jFsJJsEL4rQN+zpUaJMhOVlogKQ770e7?=
 =?us-ascii?Q?Y6rDCUM9mxu2odGwdJHhFfSXo1ECRW54HOhO2PFgq4DsdEaUlTH6KvVYR/nq?=
 =?us-ascii?Q?jK/6zewnoScuIDnUmBeCKphuqV+x184GkT0tZ+Kgn1fhAhbzdSIJMq2FAA9+?=
 =?us-ascii?Q?CvoSSjIogOrwgKlFbwmnhbhC4nhomgJzK+MAceEU8+ilPoU/KK54Nthz79a+?=
 =?us-ascii?Q?zA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eabdd9fc-46ce-4d48-625d-08dce7a6170c
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2024 14:32:51.6875 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: shk3cqPOAhQi9T5Y9shkkijvOPmQ744YU7B93yrJArq1r5RXvXYMNXRXrmsLHZzQNpP8/OBkPNsRxIR1/lj618400ivlWNhNSadOJMXravc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7927
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>; Govindapillai, Vinod <vinod.govindapillai@intel.com>
Subject: [PATCH 24/31] drm/xe/display: Call intel_hpd_init on every runtime=
 resume
>=20
> We need to ensure this is called on every kind of runtime
> resume and not only on d3cold is possible. Aligning with
> the hpd sequence from i915.
>=20
> Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 1ab4dd51094f..4d1dd5294b89 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -330,8 +330,6 @@ static void xe_display_from_d3cold(struct xe_device *=
xe)
> =20
>  	intel_display_driver_init_hw(xe);
> =20
> -	intel_hpd_init(xe);
> -
>  	intel_opregion_resume(display);
> =20
>  	intel_power_domains_enable(xe);
> @@ -470,6 +468,8 @@ void xe_display_pm_runtime_resume(struct xe_device *x=
e)
> =20
>  	if (xe->d3cold.allowed)
>  		xe_display_from_d3cold(xe);
> +
> +	intel_hpd_init(xe);
>  }
> =20
>  static void display_device_remove(struct drm_device *dev, void *arg)
> --=20
> 2.46.0
>=20
>=20
