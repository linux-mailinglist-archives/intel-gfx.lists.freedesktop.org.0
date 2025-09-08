Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EFCB48656
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 10:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D83B10E1EE;
	Mon,  8 Sep 2025 08:05:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ar3XWthR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7473810E17F;
 Mon,  8 Sep 2025 08:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757318727; x=1788854727;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VGm5Ev5/N15nPu+nOLLH9aIC15suK8aQUCuLvW6237Y=;
 b=Ar3XWthRv1EIGjlI/JOhXWOy17u9qXZYDD65wK7L+xp3hpjmdJgihGXL
 6XAIZOMJMxDF8iNgQ748s6r/RQucWdXF/kHY/iCnJlhY/0TFC9p3+vaDk
 tETVez8092bhbaJnnCuQi6ZzN0q5+cWOuyl7RxX7BlC+e2WKMGeSjScDn
 7m1z7T4b/lOgS10eaP5dS0cpiqHnL7aKerfujjwM9cizLOCDWLsdDGkUQ
 Rqf1a/oKVl4IIdRWBUWmfyX/wZAGEWwRuwTXRXvXMAMW3jWU/0uDW9Mok
 c7ZiBvjboKRO3VRW3tXbQOPQNlRdOv1fGsMPa8R730i42Ul2Aaquwrepb g==;
X-CSE-ConnectionGUID: Eg9KHuxITiyouuwkfeBw4w==
X-CSE-MsgGUID: c8mKgfGoSK6ORxRyjSlv5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59522718"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59522718"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 01:05:27 -0700
X-CSE-ConnectionGUID: XLeSO4U5T8qSUL1CaUUUxw==
X-CSE-MsgGUID: PTQUxxCATUu2QPITz8ocgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="177050814"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 01:05:27 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 01:05:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 01:05:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.46)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 01:05:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TG9pyyEtLp/Z7dF0k9REm7FPBGLW6n8S3yAxOdDp8YTaFBA5QRnO5/SzVwg1Ohw5y3aEmn5RGK4kS3a/TbJtSAGA16rd3SLyu1VezOuskV4akmtoG0qM/S1e3BdIuVM9mXSOb7XtMT31TYMIqAfJoLk2NuInvVlO7lxjm2JEpJ/RQjCZvXDufw4nCpA+ENwjf/YGUhShbnjaZ/r2p3jU8Iou9RR/wabV46oA55SnFOSPpAUlFKb8FTEwOmnHtMvfO8bpepegf/m1XLLN1kTA6XoMBlwkRZEEiPFVYBxxvM/QAuBfPa8ZSVt72DBnI3DXNl3q6GH1RX5WhdvQdb8tDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g9arRCdSocac2qyZEuh+MSmsDy6lUh6sEAk9ju1IAJk=;
 b=Zj2lHdNr8vMyclmxR89SF2P3AHvCKVvXePUvmq0oYi+BjngM3lLud1RoUjaO9N2mee/3UhjTm2r/XKnPFmzc2uTl3EIrjNVwYfSwQBVl+CEijbhsOLHNdwnKjiMd8f+HfY7jOOPlNm3YY7CJVdlOUkpH6AqBfqG+8UEnBospGNSBGR85UpfyLO6FHDKn5ze0H3iQ2sWRz8KYaBgRiPTOHei9kctB7WL6poUO6U5ZrKauVdN6rFnCVTXnC3XS/I60YTHN6k7NiZ7fpWTn2v66gePEIDFCbD7mcN8I2VtFfDtL6yabrRs9+DqAZCNHmI7zHOoA5yvtPVUsI9B+I8ycfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by DS0PR11MB7926.namprd11.prod.outlook.com (2603:10b6:8:f9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 08:05:24 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::3ac4:e20e:84f1:f826%4]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 08:05:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 11/14] drm/i915/dsb: Align flipdone with delayed vblank
 using guardband wait
Thread-Topic: [PATCH 11/14] drm/i915/dsb: Align flipdone with delayed vblank
 using guardband wait
Thread-Index: AQHcH8yzsrH33I0i1UmGv1pGc23tBbSI7XJg
Date: Mon, 8 Sep 2025 08:05:24 +0000
Message-ID: <CY5PR11MB6344F495F32785977C4631A5F40CA@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
 <20250907073241.19632-12-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250907073241.19632-12-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|DS0PR11MB7926:EE_
x-ms-office365-filtering-correlation-id: 04d05bf2-d7c6-4ec2-ef8a-08ddeeae770b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HKVayEEj3j0e0/bUjvbkmcdaa/fEp7F1YO13UpViVM10hHgcYXDlz/pMrRD0?=
 =?us-ascii?Q?uQB3MWORHU9q1YCFrPP3OnX6BEZxYSUpMOAB31xWgrxw09Xv31JLeUlthFrM?=
 =?us-ascii?Q?dobQtxB9ip+/dphrm6T87NhtJxhK8rQxOSB9Jc4l2Ld6QzsZ6mLW7QFKtxGv?=
 =?us-ascii?Q?rZy+STOi2PZrnXVOX9uitlwj8E4aEquIGg98rYUKOq08YF9Dowu3ujd4ryK8?=
 =?us-ascii?Q?C0AGeg1IXgYFk/0KWkq5JzD2ydzNWdzohd3y2ehKEEzfvIsgr2MnFmTLvYTh?=
 =?us-ascii?Q?oapWLRaD8n26yGQiR9DFHIrjY1FwgBPPAgpoSt7beohKdqrsQ3/JA445hY4F?=
 =?us-ascii?Q?4Em90qPR1WbmXSxPiQJLGt1vI2I02dQ6qpsKWPn4dQU2nRzhpfxS6o9Pn0QO?=
 =?us-ascii?Q?JT6VMZLKGwocqpNkLDdHQ0TynT/zIKu/JPgvc+5Yhj/vwgL9Eqo//zy5AAuV?=
 =?us-ascii?Q?g4G27pcgmYMiSuNSxvRJtX4sV9YBLT24ZxSXB2sNq1rz/TEQMMQah+3xs0ug?=
 =?us-ascii?Q?aKvg7kQ2cX3UE/iH1wcHnfDq9Ffj1xFxEeT9NC6kjqCN+t2Fq42anh6ZJVAA?=
 =?us-ascii?Q?KVsybuA67q1eoWR9XFLc0VQoGtiRiADh/jn388/6iOgOexQfOQIiJzZxGZZ8?=
 =?us-ascii?Q?FvHvQGmbu9lqayJxtGqJ3MotiOEpqjR2oRxuKMDEkRXmSz5ZsthpJWbtQ2ok?=
 =?us-ascii?Q?Ou9edQmcRbXrSkBLTEEfFonXqRirfq9jrCrHtg9KI5ySy5blF3CKa8AWeSvd?=
 =?us-ascii?Q?IbB0YWfeqxTJNff4vQ/yG5pMEHYdQzj1sxxAuhgl2aYLt/RcZ4TAof0c1FGO?=
 =?us-ascii?Q?/dL2Mh6tF6OrgnOws/OeQaDvMymQ1CHqGa4+0ts3UtOXk7PI2HN7/ZPHcOYE?=
 =?us-ascii?Q?gIoAKKGd51/2julxhUupGCi3OIKrlY1ve+RoEUzkLXWZEer535yRY9Q51XG9?=
 =?us-ascii?Q?mSY/zd8FeBfuFu8KcYdvwi612ldTpgENO+5w+Zm08dDa5zg0nEjxImLuZC0L?=
 =?us-ascii?Q?lyC/wEt4i6IPQEit0nI8iAiT3rWCw6Aa58UCzMcyc+dc8igycwAMof1rO0Ad?=
 =?us-ascii?Q?mgP/S22LpYmVXZule0cev23ZA5lzbJJoSXXh2jPk0loBQB0rIoGR2tYv9J4A?=
 =?us-ascii?Q?9y8+UC7t8a7f0O7JlKPTyxnb/dWCLkK1GsznRxK6GRO5llO9odKS4Cz0nAN2?=
 =?us-ascii?Q?rDPCS05SS0zYasMyTKmDd8MoDWbp5AOxZgYJukROQeAm0osQaEq39duPEoEb?=
 =?us-ascii?Q?7WSh0F/6l8AzkuIya9xTltRB5jNWOMhTJMU1sfYk2Hr0c1hq8GOSfMRJCEjf?=
 =?us-ascii?Q?TTKXWRQ9fKZoEMBxJy+XATJnRlHk9ekoeo3wm6Ycz31DsPOsl7tomzD+p+z7?=
 =?us-ascii?Q?BrLptdLnghZ3QZt2ArAKpy5L5hZqCu/eA19DF7df4YdTVaob1UPAmj5BpseI?=
 =?us-ascii?Q?IiyHubNCqiJbrzwfHfxFJojrIq1pFhcPhpo23oh2/ooEfbcIwZ59Fw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Pfgp7Vv5ymD6ysibnz7NjKMR35i5bZBIBPUVZVr/sGgWoVyd2rNp3dk+bTSS?=
 =?us-ascii?Q?PJaDSvjQV5CUzxVdlBCSUmTtisnntgpNkPqXEWXqF1/Q+k3MdsthuLgqc3cx?=
 =?us-ascii?Q?u9XEVXV8qef8VsCMpsIY0wbvIiTCh5IVThMME9ZaycvIH7UY5JKrfFqxRX9b?=
 =?us-ascii?Q?N+zV7ixJR5oh4hKKxggyewl5/EKlr6aqu4K7Y+kp11KmFY+R4VoxgpVBoyvH?=
 =?us-ascii?Q?h8pQH/0Bok/0L9qHOZRuzArxBpzB50CKZQFWDF3aEfBns+IsBGBijBzFKIAM?=
 =?us-ascii?Q?iLDMOJyQwqYwpV1jZDwcinY4yABRKfYEfqkapvg8HnmJVsJmGO5DyWC/Uf98?=
 =?us-ascii?Q?erWV+8+Q21nEBSrp2zhVZssyHQnqSNqJoOKPCnHJpIRqkA7GH/eA2PP+jqdz?=
 =?us-ascii?Q?YpsortEJcWiu6QC8a+Y5H9OjJF8JF+WFR0ptmInevG9i5Mth1UOuxslc4ay3?=
 =?us-ascii?Q?YLsHiSn1J1VnGyLkSMEGR0R3ZMT0mbqHzMXMvRzwpxDU3QEZM5Kbao+jOU6G?=
 =?us-ascii?Q?Ika/uMjBZPOD5Nw0VTxBJ1nXTJHLbex1nTJfWpXlP8OhURZsc+qEzdL2LYJF?=
 =?us-ascii?Q?aGNKBwaUvwxfo87j6om0UnGrMlLCWgMxTTpQzXJaYj+YX/pSVwpgrDrgdsL7?=
 =?us-ascii?Q?4WOohv367ELBCOVyyaqt/n0rgqH6bkc428LCe2Fr7RoHnLB2oWXeH5iZZyah?=
 =?us-ascii?Q?KuwYhz2A9TEu14TxakoTZxQlX+NryKoc5q9b6xEDZv/G6enGL4rA9jaGqwid?=
 =?us-ascii?Q?qec6AghQ+X7rFLOQwtvbatHN66zRaTDTz2qBkfp0TBjRk5VGGNs9azcqKZTb?=
 =?us-ascii?Q?bG4B1JkjlqFBJy2RRWdwxPCL0tHesM7NeuV+Cv3RJsOlFU7MXOjK+1EZx56y?=
 =?us-ascii?Q?hKP/BbNNYdYF9d0pwV0acMuLTSdZekMjnKPV+JgW8BPiGt0vRt/wCybuT9Ns?=
 =?us-ascii?Q?ss43Ie+UPyXOSuBCynPgdq/y6+ZkITq21Bv8kO2h1C5p+Y+W7dMAN3CKHwgg?=
 =?us-ascii?Q?Hh78sf9cVzvKay6uNw6tQUko7zUSDEme63pnOOx1f7OP/SiwUQ9kw/QYEnhg?=
 =?us-ascii?Q?hJSRyMOlhz7KnmGT7wbAXqCUzxNgw7i+mv9+KA2NAEwQmSasDSqT6tSD0eNn?=
 =?us-ascii?Q?wF05aEkveo0Q4lbiBRL1j20Zj/6e1XINzBWJrFbt/QtQ94lv9yjeiM61/qZ5?=
 =?us-ascii?Q?d23txQA0b2+gUviZ6vJE4NS8rfPFD4J7TNWm3lxNTRc2s6uBu4qT8MjZjVDK?=
 =?us-ascii?Q?FbFyJu41Lt9D9apC2gWDTPNEi+idYcht8D0TwRJME0L4Is5n+AcLcAzryATI?=
 =?us-ascii?Q?4zeoEL7BQiGroWO8hRe+zr4pvdDX845p8hqSlRtlqbY8Q5Rt0BLuSLObJn9+?=
 =?us-ascii?Q?0bP9xG07XRUaVOLRv9beZ3mzvq7yKb6seiRynBkheRKdn4M07m8K0HE7Cq+F?=
 =?us-ascii?Q?zrdaVZjwDT00zqN7EXA6n+VPOXwYSb+X7Di/purWU88dYXN20ju0U927BSgL?=
 =?us-ascii?Q?dhpe7b4epqGf+bOdCCSYNWNY97VUNiktAGu3jhYwuzdSUAzylK8qADSC5qbK?=
 =?us-ascii?Q?X09kJylSBdCvnj3dazH+8F6vd1vCQ7XLBMIvhnPp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04d05bf2-d7c6-4ec2-ef8a-08ddeeae770b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2025 08:05:24.5342 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XGk9hh54GGxNMBneshKyLDNthI0inK5VDonjkdKG31H/E8G1QDQyE66gvCj3oDrChxc2/QAhwj9nnYOKa4Gi8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7926
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
> Sent: Sunday, September 7, 2025 1:03 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K <ankit.k.nautiyal@in=
tel.com>
> Subject: [PATCH 11/14] drm/i915/dsb: Align flipdone with delayed vblank u=
sing
> guardband wait
>=20
> Currently the guardband is same as vblank length and undelayed vblank and=
 the
> vblank and the flipdone with dsb interrupt are already aligned for the fi=
xed refresh
> rate case.
>=20
> As we move towards a shorter optimized guardband we need to wait for the
> delayed vblank before the DSB interrupt to align the flipdone event with =
the
> delayed vblank.
>=20
> Introduce a helper intel_dsb_wait_for_delayed_vblank() to wait for the sc=
anline
> range [delayed_vblank_start, vmin/vmax vtotal], depending on whether fixe=
d
> refresh rate mode or variable refresh rate mode is active, before trigger=
ing the
> DSB interrupt.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  1 +
>  drivers/gpu/drm/i915/display/intel_dsb.c     | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dsb.h     |  3 +++
>  3 files changed, 20 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 787bb6ebdc75..fb072275b1c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7447,6 +7447,7 @@ static void intel_atomic_dsb_finish(struct
> intel_atomic_state *state,
>=20
>  		intel_vrr_send_push(new_crtc_state->dsb_commit,
> new_crtc_state);
>  		intel_dsb_wait_vblank_delay(state, new_crtc_state-
> >dsb_commit);
> +		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state-
> >dsb_commit);
>  		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
>  					  new_crtc_state);
>  		intel_dsb_interrupt(new_crtc_state->dsb_commit);
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> b/drivers/gpu/drm/i915/display/intel_dsb.c
> index dee44d45b668..6b3a4d25a6c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -1026,3 +1026,19 @@ void intel_dsb_irq_handler(struct intel_display
> *display,
>  		drm_err(display->drm, "[CRTC:%d:%s] DSB %d GOSUB
> programming error\n",
>  			crtc->base.base.id, crtc->base.name, dsb_id);  }
> +
> +void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
> +				       struct intel_dsb *dsb)
> +{
> +	const struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc =3D dsb->crtc;
> +	int start, end;
> +
> +	crtc_state =3D intel_pre_commit_crtc_state(state, crtc);
> +	start =3D intel_vrr_vmin_vblank_start(crtc_state);
> +	end =3D crtc_state->vrr.enable ?
> +	      intel_vrr_vmax_vtotal(crtc_state) :
> +	      intel_vrr_vmin_vtotal(crtc_state);

Add comment explaining the reasoning more clearly here, why its different b=
etween VRR vs Fixed RR.
Also add a "Fixed Me" and fix it cleanly as separate patch with "intel_dsb_=
wait_vblank_delay".

With above addressed,
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> +
> +	intel_dsb_wait_scanline_in(state, dsb, start, end); }
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h
> b/drivers/gpu/drm/i915/display/intel_dsb.h
> index c8f4499916eb..6eb810aad18f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -74,4 +74,7 @@ void intel_dsb_wait(struct intel_dsb *dsb);  void
> intel_dsb_irq_handler(struct intel_display *display,
>  			   enum pipe pipe, enum intel_dsb_id dsb_id);
>=20
> +void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
> +				       struct intel_dsb *dsb);
> +
>  #endif
> --
> 2.45.2

