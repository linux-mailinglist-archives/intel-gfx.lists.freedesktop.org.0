Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4736F940632
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 06:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E189F10E398;
	Tue, 30 Jul 2024 04:08:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="afgJJdjW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 073C610E398
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 04:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722312524; x=1753848524;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IN/ADUD5dmNPoRID4+5ERy0nayHEla4eJEaaqb9vYzc=;
 b=afgJJdjWjKnGcDyglzP9N9CSDHVbYVdojKG/D20EJ/gpCdD7YTg76IfP
 B7sqssbIG0EgZNOirA+/hYAi6xkWeVzvt/96DxFPGkPCh/cRZNoXwuA9K
 px+AsXqCJJl3audkAyU3Rh6PQplj6YD9Ll+wqc7OOZEvlKBY1vfrwzcRU
 vlxO5VGiM2+miW8xEs1A5qL9SdoNGePXNvYagfxm6p/WtnrOZlaoXihiT
 oSv/e8Bxt7Q/Nqh96Uvt6uNOarItn6rBZ8d9862JI19ESi6Ehv2OR+Qbd
 fVlwwW6Nt57CtSDiAGZIYgYUwN6Fjzu+N92u4jOEPjY4jE2fRbxNco6Bm g==;
X-CSE-ConnectionGUID: JVQ5VeS9Q3K6p4vdPlIIWA==
X-CSE-MsgGUID: cVDWUW8RSUO2mXRX/G8sDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="45522851"
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="45522851"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 21:08:43 -0700
X-CSE-ConnectionGUID: k7OP3W5KQ96cUf+7Ws0rWQ==
X-CSE-MsgGUID: 9jNnc/ZMQ4WHT2nC31zWoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,247,1716274800"; d="scan'208";a="58336163"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 21:08:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 21:08:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 21:08:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 21:08:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 21:08:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RrfeZiBKb2sk4+glDcaoLzF4Q+rQEt5hcHA3fTXgh2ArN2UNsHJGMx6kjQHuUNJK6750Cq2g2kT1QzJtfLmlOCsaeJBEMgtKkSAqUfDnBr6PdJi7UpKXkmuhiLjP17cR+sbUI4bEvE2KiaxKtIAbE6S5ZM0l5TcePEIUEUvfD1vkSWo28jEYzMAtusb/xC/CE3E3fSEO+ZyOJuxZW2GPvkxg98R1BFk4tvPhTWtyh/GcNfr0zzaiedEDUh2rnMspZgA2tkcAkSnGBMBZuuTJ+nbQazt4GMTbljSVfLNTfrXpSBlf6E/mTv2i4qU+FuBwfGwgnDmQm0wZRGPuCAgtSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LPEyPhWH+qJsBRdM0xu7d0AqFMMbeTXMrjLijx8zUYU=;
 b=qfPJ1mPftEtmxNsgikuwN+MaX+AfBitfOJlbyBQN8GWh117yZ1F3k3eHPca4YxWJGZHR7z7asTvw+aT/a6wlIrWyjnib10uR0daV9VdUaThlJ7MosPOPmJyZ36jNv9kwcR6csBD1BV62Om2KOKFfxGF4k3dCaLouc5twC9mR3hzjJFh6k+D5H94h9nBlo2TsKUgZNs+w/hgRq5yRLrXu/Y/wsWonNVwQvOjuAOv1lN6pnJWrzJiC7kE0vBWfbC0Ux/KUUYEoU3rkGoErYVaORdeBBgDm2M/TuD0grAGb4EWoXQpjzqR5ORPShlL7hLx5y4ouHQtmp58QkLVcGoIUfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by CYYPR11MB8405.namprd11.prod.outlook.com (2603:10b6:930:c6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.26; Tue, 30 Jul
 2024 04:08:40 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Tue, 30 Jul 2024
 04:08:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Thread-Topic: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Thread-Index: AQHaj+IYIsVjuEnju0ipDIZ2+YbyS7GOYmeAgH/7X4CAAO45cA==
Date: Tue, 30 Jul 2024 04:08:40 +0000
Message-ID: <MW4PR11MB6761AC375AB22E6F2F16E8E7E3B02@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240416093730.625486-2-suraj.kandpal@intel.com>
 <20240509032922.1145558-2-suraj.kandpal@intel.com>
 <IA1PR11MB626636FF0B8623E41A890EA5E2B72@IA1PR11MB6266.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB626636FF0B8623E41A890EA5E2B72@IA1PR11MB6266.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|CYYPR11MB8405:EE_
x-ms-office365-filtering-correlation-id: a3b407cb-e6c3-4619-d9d9-08dcb04d4bb2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?pasUIr7QPq9Xvknkr6B8uyzRlb5YRDcdzH1XYcA6VZfsUtDHueE8D4GHgOX9?=
 =?us-ascii?Q?/1tbsG7WIrvL6cHvvOJHo6T50vYJpgj6fibD7yFZYaHeSeMySA2KOzko/nOB?=
 =?us-ascii?Q?JilgEHFN/WmqywM5xyG4lI+cWBqnl+32jNaNCnrevZ03iM73NcjjsHM+XgEQ?=
 =?us-ascii?Q?iBCF/g1j5Bk5sLxR/P43rn3r2Z4vRgWbHmLpIDon7nOrxiiIFjmYF8rUZvZz?=
 =?us-ascii?Q?v36Sm9I4fR4czhQucLl6S75Zah9R2FGBCMWeG8JR6v+yc5s6fQRVkSPSWr0X?=
 =?us-ascii?Q?l2jpFoBrdWeWlKoIx9bhPLmLb0+bJ5apIKPh0/iAo9kI+Jjv7ANk8DHRRGo9?=
 =?us-ascii?Q?RqJlHpMOt5d9h+EuXUB5ciZG9diHYteMdGql+8g3d2TL1TwRB4VmgoR2kNA5?=
 =?us-ascii?Q?h6DlUdmvohzVfb0kqdKFIpvyVVf8h60JbgBBwbesxfY1cP5hxY1orZaz8B2r?=
 =?us-ascii?Q?2L86qOFThkN8vuKHbTxpU5Z1Zm4+g2+Qg/+yxGPeMI+dA+uUGb2XtTGfj50Q?=
 =?us-ascii?Q?xj89A3/4UZ4Z+Kot2XGoN+7XHvS3gImG6XVoVEQTI2MQsit9f5zvIjydUpgN?=
 =?us-ascii?Q?ueZc1IgIqN08edXAcmtPaZufaZhVI5x+chuO27/pxiCUGVZetCLm2hkJ/kj+?=
 =?us-ascii?Q?PTQQmaAuri7bJ9n1gO52eyEsEJOfneYeY/BbIb2BN0Lk+b+FoAm98pPlDIrx?=
 =?us-ascii?Q?hygyBhzOkU1MvtAfmrUDgUe4LGfGGOIPoi/nTYG+f20oIC2tp9aBO1QqikRj?=
 =?us-ascii?Q?CejCOfHgYSrY7jZI9NJ2W2+kzZlWUyRs8z3bUT8i2ilNs6Z+l2Ep8m7QGA9Q?=
 =?us-ascii?Q?/prD2ianyiiK6ZajCQjAxkt1lpHVhZlXxyC2wOiUh4gbfWSUhzkA9KGXVOmD?=
 =?us-ascii?Q?439QwpyJOgNrp06CNWCT8Gqw9Vk5lmFRZpBptjOQ3LYG3NPDO/u/lk6opPX6?=
 =?us-ascii?Q?KiWwFGLn/y/tBKyD10Os1h70LYXfgOdl+VW0sxoJFZeiMWg/RdFQuVbRJ9t0?=
 =?us-ascii?Q?a7q7qVqijWTndLuV5mUbKhvRwBXV15c2f6mGRdwcZrzJ3yY6Yfhn7k4w5r27?=
 =?us-ascii?Q?Ssl7m+5ZF/DqpAOm9lFH/Zk1f3uB5Cjcy4j4T3lrDSR/fp+sqTKuMs9FPJLq?=
 =?us-ascii?Q?MLPsdXSs5U6vnucMYZx9Tx5G9zJzh/ccZj006DcxGd41H5wN3I8Drb9NAHAs?=
 =?us-ascii?Q?TcMR0KknSoCszqOUWu5ECtREFhvC9LkwDMKM6J+YQaapeTMV874UAm8aMbh0?=
 =?us-ascii?Q?9q5OQmOJNVgcv/OL4IVm9tpNkmydgSICXpu/oUa1MMghK5M417fyTsNz886Y?=
 =?us-ascii?Q?KdhFhgwmuk+bW6Y3fTrnvokJEYGeY4TaRp9b6vyEJFe1GTxoHH5pGdDENRy6?=
 =?us-ascii?Q?AXkPmVL/Ea1IUPwFaPrTJrDwJu0n3CBjZELyfkZQD6gE1WCoSQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5xzoUWq0E1YYDKRrj/3QiP+VyilRmxVYwUX4U3w7z6YCGMoJdtUoy2m165TG?=
 =?us-ascii?Q?ert3Lc598gDW0T0iNaLKOxiupjg8LAg1VV8zbW8TstDeJmzOKMPCJTvwsKTZ?=
 =?us-ascii?Q?/XgSoA2iGPBZJs65k+cfc1BiNBtPsmqAJjJszfTsZd5rHnZzQvZOGrRihaIz?=
 =?us-ascii?Q?pdFrMe+5gRevJ3RqEW7+D1/XKBnbSh29yYlMosridGDDoTfnC0jyGRvW1JtI?=
 =?us-ascii?Q?YXVWvtuGgloFnHXj3SYFeRCTiG1N7RyuTb6l5TFnWxJWwuaNOdz2AdjR1sxA?=
 =?us-ascii?Q?LSQRQcnhrRVUNE2qXYfT6gl3Ls1qB/htRLM/dAgdZLoQ6YMWQg+yWa/hlh7k?=
 =?us-ascii?Q?IqS7MifMxX6m+6YYfZOD6nl/53NrQxYe7bk5wzLwLwxesAKE7/Koc3QEOym9?=
 =?us-ascii?Q?Lat6gVRpvrF7HYslwdBLThYgjqpLJgJPpzMVlclsHUollSCkf6H8Ijun8h4l?=
 =?us-ascii?Q?UcDXIab+YJp6eZIMQ4jIWYVU8nACx9h5mTsbjP8CigorNP8bHb9/LQC4LcUN?=
 =?us-ascii?Q?nBti6w0S4EPIyjTCH8kCdqbJpT09ZnoqKe5ctfF36xcjztMioplGJrmmE4d6?=
 =?us-ascii?Q?tL7vpGpjalmqWL7WEClqsVhBsQLHWxEEkzOYjjw+gc4cact8X+pmahdsCp53?=
 =?us-ascii?Q?V5WW02Kjj42jxCqaRKT8WvZ5aDeVVqJH0efbFXak9yL/+A0xnPvy+onaA69Z?=
 =?us-ascii?Q?dY5fuoufZaJLmT+Rqo9JVJXixbV5HUbOSKuGzoIuj/uYz8rTRXuHQUOLfWSa?=
 =?us-ascii?Q?6cjmHNfO4V7Qqk2OJP37r/6EOeTyWk98/JhctiWDIcATypcUyYXxTQcJKrrI?=
 =?us-ascii?Q?n9TeutTgikljlq4jFZ/nzypas6VRSu+Uv3gX0A2j2plpz3sQ6KdLwuqO9hU5?=
 =?us-ascii?Q?+dqKHWJwRlMXG/jSZJIYcn4aGLfOR4hXucZCEmiT4DvWLquPia8HKeY6OXqL?=
 =?us-ascii?Q?dJD0i7dclrIYapA2V+LfgfxVUlMKUZBHkf+ASAygOyT0hhmgDsK/plfhSjOP?=
 =?us-ascii?Q?6VZg1qwcBXKPe0mlGgllNMln8skjwi+zJgDfAA/JACFC7swhD/Z157r0vmKz?=
 =?us-ascii?Q?rN0LPxo19/7I7V+HGbjBwCXebVHG8O9+hfP2cIwSao0gEnc7Jq4aL/r7D7KW?=
 =?us-ascii?Q?H3KQ6JoX2Py+/Wr2899iKidVAj9RKzOzkMF9GX8KSZkzsxtTcQ27qM2buayT?=
 =?us-ascii?Q?m7eqlf96zbG6VYl3JJjO9+HjjicV2kSqlVxNhnYMmmZomGibdo9Ceg8PLjN5?=
 =?us-ascii?Q?NZrulAJjTBuMzUUWgvdoL7Ozh5cmdLrrVua9UawRCz72q5Inrwc6WfZ0mECE?=
 =?us-ascii?Q?K9fLraxv2eFfvGnBMG0LSaE3P9cseE+ntnQqUd291NzsF5rR0UVee4GKmjse?=
 =?us-ascii?Q?Oz8wIy+VQ67OJh6G136S78rkAog9L4O8maFIvXuFf0QnY11okLWI6yrKfD2D?=
 =?us-ascii?Q?3Pr5SpeqOqvO9v8g8x5uRxatdTYbLd1jqqoL8BZUtW0EtgMwk2mnfu0Epg/0?=
 =?us-ascii?Q?BQ80T4PTYQGRw9nFbvmLNrc1ANMzu0JsGI8QGNNujsinDfS5Eqi1FzV8gwMn?=
 =?us-ascii?Q?REVxCz4hN/KXwgJpwOiKFazd0e87Tr8r07z8ZUZ6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3b407cb-e6c3-4619-d9d9-08dcb04d4bb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 04:08:40.8310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m7ernGg4YIzWrv7C8KOKZdZMWbU/PaaUdhB8XSzJ1AbPQzwurkFokXmEsjOrxwS98w/+BVXd8yWMMSiY/SxRRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8405
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
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Monday, July 29, 2024 7:24 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: RE: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequenc=
e
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: Thursday, May 9, 2024 8:59 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Golani, Mitulkumar Ajitkumar
> > <mitulkumar.ajitkumar.golani@intel.com>;
> > Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
> >
> > Disable bit 29 of SCLKGATE_DIS register around pps sequence when we
> > turn panel power on.
> >
> > --v2
> > -Squash two commit together [Jani]
> > -Use IS_DISPLAY_VER [Jani]
> > -Fix multiline comment [Jani]
> >
> > --v3
> > -Define register in a more appropriate place [Mitul]
> >
> > Bspec: 49304
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
> >  2 files changed, 16 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 0ccbf9a85914..d774aeb1673e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -948,6 +948,14 @@ void intel_pps_on_unlocked(struct intel_dp
> *intel_dp)
> >  		intel_de_posting_read(dev_priv, pp_ctrl_reg);
> >  	}
> >
> > +	/*
> Hi Suraj,
> > +	 * WA: 16023567976
>  --------------------^^^^^^^^ is not the correct WA number.
> Please mention the linage number here.
>=20
> > +	 * Disable DPLS gating around power sequence.
> > +	 */
> > +	if (IS_DISPLAY_VER(dev_priv, 12, 14))
>=20
> Also, I did not find the link to the display version 12 for this WA.
> I could see the target display version for this WA is 13.00 and 14.00 as =
a
> permanent WA for now.
>=20

Not sure how you checked this but if you go to the WA number it clearly sta=
tes
Family affected as : Display 12,13,14

Regards,
Suraj Kandpal
> Dnyaneshwar
>=20
> > +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> > +			     0, DPLS_GATING_DISABLE);
> > +
> >  	pp |=3D PANEL_POWER_ON;
> >  	if (!IS_IRONLAKE(dev_priv))
> >  		pp |=3D PANEL_POWER_RESET;
> > @@ -958,6 +966,10 @@ void intel_pps_on_unlocked(struct intel_dp
> *intel_dp)
> >  	wait_panel_on(intel_dp);
> >  	intel_dp->pps.last_power_on =3D jiffies;
> >
> > +	if (IS_DISPLAY_VER(dev_priv, 12, 14))
> > +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> > +			     DPLS_GATING_DISABLE, 0);
> > +
> >  	if (IS_IRONLAKE(dev_priv)) {
> >  		pp |=3D PANEL_POWER_RESET; /* restore panel reset bit */
> >  		intel_de_write(dev_priv, pp_ctrl_reg, pp); diff --git
> > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 5670eee4a498..4cc82360298b 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -5151,6 +5151,10 @@ enum skl_power_gate {
> >
> >  #define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b) +
> > (i) * 4)
> >
> > +/* SCLKGATE_DIS */
> > +#define SCLKGATE_DIS			_MMIO(0xc2020)
> > +#define  DPLS_GATING_DISABLE		REG_BIT(29)
> > +
> >  /* Plane CSC Registers */
> >  #define _PLANE_CSC_RY_GY_1_A	0x70210
> >  #define _PLANE_CSC_RY_GY_2_A	0x70310
> > --
> > 2.43.2

