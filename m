Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC9164D125
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 21:24:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F075810E47D;
	Wed, 14 Dec 2022 20:23:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59EB310E47D
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 20:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671049437; x=1702585437;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RX7RPeqi8gT5rfAXYWtuqoQM3d+AIP/bG6zZiCCQcPg=;
 b=UxUE5DHWrXtYXu2OF6FRE6i2DJMCrqQ9Q50DNXKSqVBQ/Gdb+HoSolKT
 FR6COKpAkfq61mrTIEUCSe1GWWnzf/In5DjwYyPW2eCryxlJKu+XXMBVM
 m3gPVQraShF+unsPtAb3C43tJyytbxfQ6+A1BWR4xe07CUoj5rpi5V33v
 PmoeTU0mEWu5QAMOaA3ehiXsznGC36k6khYMxicTVNTmcjd2TQW2GQDtF
 IVX/ruHeFplw34ItDUwKhe7kzAM4yiHxEh8vbIn7T8pP2b/bZXqkNMYu4
 VeFkLJ5klaLJZpzDbrmzDkttEftXr6GoxCVvFAxrRCRh1VCh6zNRCxRp6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="318550774"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="318550774"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 12:23:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="773457538"
X-IronPort-AV: E=Sophos;i="5.96,245,1665471600"; d="scan'208";a="773457538"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 14 Dec 2022 12:23:55 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 12:23:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 12:23:54 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 14 Dec 2022 12:23:54 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 14 Dec 2022 12:23:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bVlkbcrt3q/CUpf4qcNCPWq0QtcTuhvKOMl2oibymvgA39KUsf8mxHBa0i9f+5e4QMEtczzjAyNidF1MmwHmcXKuWIIJ9ajH7tQ7UyWboMrGHdJzQBkQRazWynGEylTBesnxmHm7nl1eCemMx9CN3Z6NIVoqLGy/O9+uiKFkLZG0CVppdgfCOUaU8YjIDb1rJDbYSWbnvcT3lDYB1FR71po6cN7LXZkSB5ik7iWWLefTMO+vCdvsL++SB8aAmvnua2ANTdGYJS3WekPvJlpar0Oeiwy+6LBomlfg7LPabab2zgexKupYtdzE2yREAIsSk75OvwBNcUAbTRojWWR6zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9JzTllUGoQZzHMCrURTRjcPq0i9/zrNJPWEuv7VN6VQ=;
 b=DKxo/KHK9GQbJxqbxyJPmzCTaorOw4c/jORCbe0jnAlVms3/doU0glyQtqTySeRob4tM5gVOHZ7mxdqrxbQbp6vtRRmUoFu4G3j6yU4yHijXpyFM+9pcjS9AjFqrE6oEHjDk+zcCcTcKefo87NJASwgiL+c5xwG0iBkf43qwmolsltlPlBCRuV120zJhiB5iwhJQrqlrsF0ga2qgTN8uFob4m3ns8Xljm/yZs+HkET216rWjyh0sz/yaoPMqyj/bgMdoppRGokx8CHM8wP689dtT6y9lrBQKt7OkLTp9tM2/IWYmb+VXruHLUZQtuhawnPEdcU5YL0Mz0dsuSGRRug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CH3PR11MB7322.namprd11.prod.outlook.com (2603:10b6:610:14a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.11; Wed, 14 Dec
 2022 20:23:52 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::bf57:6a:5cea:a892]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::bf57:6a:5cea:a892%4]) with mapi id 15.20.5924.011; Wed, 14 Dec 2022
 20:23:52 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Remove __maybe_unused from used
Thread-Index: AQHZD/VA3ZEi7IrSKkSsHIOlQr2tg65t08lw
Date: Wed, 14 Dec 2022 20:23:52 +0000
Message-ID: <DM4PR11MB5971629505D20C102E34451887E09@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20221214194944.3670344-1-lucas.demarchi@intel.com>
In-Reply-To: <20221214194944.3670344-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CH3PR11MB7322:EE_
x-ms-office365-filtering-correlation-id: 9f939adc-c7cc-4948-6af2-08dade111de7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cDI4onaDOeTWSad4l36rGIVBCxM7jrEVmq6ainjrXcXrRHH5cY8Oq8TYpK/HFpG07GWl8uh7nmJoSijFfrA4oJyD4+AHDGwqgGt4uu2RdBbSo1/TJ9E90bYqnO6f3J47yKkZTtYFmgi7s5mqfD04TUxk5/BBbApntPmQ3C2WFE84iyEmhYck7nk1XEGjLxjG/wLdsruM6qPtkdkM5UR0mTjwebqzIT9ChpLVPGZuDzkXY/M3Wxh5MtjUSGa7fek552adC8klHg+4eoCLgnP0d41W5F4QINx6xW1Mr41PApsfoCwSHzJRPFpNfJkgno4mtxn2Xe+oyHqMrf6UF0FOBZcv0oLMzRkLwA3AhiI8KxmozcE6rx4mxsk1CnQ099t1nNiQuffQExjNT/xKQFJs7FpQBbhYiRmlx+l1JnrAvpRMG3/XbbE7DUIry6DPtdlITJ3OCNK7/2HVX4z3F86xXB8vDyiKibERQSFbCbV9jk2Qj8tc2WogKYsNDPzqEwM1ayCYDJv1XVf3p4hwEIXO3zChc0QtnROVjisH3iSKjP7MrLSn4XuXjrtdz+sp2b5XT3wM/RAX0b5fZv/kdkvUUgabP2Vy97oVXNCsN4k4j0GoPrIKgEGQ3fYG9+Or6qo7x6pMBc2vNXKLGpS7n4xX07FSy9lzmfOipCsHyksRFv/UGWIgToeNPZdrHb8nk4+84ZfU5TEdORiO/iCMWZMsTA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(39860400002)(136003)(396003)(451199015)(83380400001)(38070700005)(86362001)(38100700002)(122000001)(82960400001)(8936002)(41300700001)(52536014)(5660300002)(26005)(64756008)(9686003)(478600001)(66476007)(7696005)(6506007)(76116006)(66946007)(71200400001)(53546011)(66556008)(66446008)(8676002)(186003)(316002)(2906002)(110136005)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AOKw8gMrgQyciN9oVvbhyd/XHhM3A+RFJrEdhe6paCrtOA1iyQsaoHHKRR9n?=
 =?us-ascii?Q?KRYzwPokIre4A4xkb6v1goMEqw94P5vpl9gN33LHB1ta0hBynvn2mG+5oUdg?=
 =?us-ascii?Q?eoJjqe45j3yJjyNJLPXo1zE5cJ14t8uBh8oQoS/Uh/9KH836fCtOPXBYrfPR?=
 =?us-ascii?Q?J+CV5tbpZGAnESpNlNVrq59KT5j3ToxUIf+fcH/BTm6AgTKat8IIxtgEiCzY?=
 =?us-ascii?Q?ETQWBCNxF451mq2roNco/FXvAMgWc/+LJCN5b16nY66WdusulTtLJbffEhn7?=
 =?us-ascii?Q?m7IbkrZiygFSl6b8e5Hz+hFwi7AslUf/MPNpKUGVvszCv1IWmAXVUckT+8G1?=
 =?us-ascii?Q?hlkGK/inZLSeBnyIikUhvxGhu1sOIoUUYJ0hTJU386Yc9ltK8OggMH1iPAbV?=
 =?us-ascii?Q?06MIwBoDsd4ZwFiw22NTCjBk5K28BRXQHEqM3rkgItVOWGxUYQ1+V8irKTcu?=
 =?us-ascii?Q?/5czvYiwfZZQI4cTPl0cr9lrDk8t0K0aP+szcmNGrpMq49Qe3prxqGCP3aSK?=
 =?us-ascii?Q?Oq0Qvc1aQmAKvS92zRhozFmAnMPxxU5QzFD7gKSnRvWU2zQVis0AFhz+j9k4?=
 =?us-ascii?Q?jVmS2IMbLvHEM+6pT9N+K6ePhTnX2Mp1SwK8+0w+rXE0IcmP/L/goLTlpYZQ?=
 =?us-ascii?Q?rYkO4B7qiuPxMGuwZOWDJ+HTlGiAY8902An0EYSyrvwy4LrNkeL8uNlIeyLP?=
 =?us-ascii?Q?tG6yw8QMHx5DD6ET/bZ7g1GvAocTMdmiCw86OUUKvfD0mBvjiaKmeC9fb/W7?=
 =?us-ascii?Q?9MNfhlbYIHbfRsnW70Ppv76GuGidTUs79uH1+AJl/aL58gPLewCMzdkzoMt0?=
 =?us-ascii?Q?/fcqEq0MK+6k3adFKjEaEKpoxmF7DD4wX273sMyktAv7s3enLPT0IwnqYs0r?=
 =?us-ascii?Q?Gf9h8iS0agvXTOcuD8GzbfKTQfH21AbE+Lm/PCWlXXPSVOGQzAwJ1ZB6beHd?=
 =?us-ascii?Q?2CcpLvuLlfNwYKi6v7zc87fkqOGUGw4zASgC8vGvN7X8GFU2TAa1xjIqY08C?=
 =?us-ascii?Q?uLU/vhzf+bvSLG3jrJv3LHZurMseiR8UQW4Dy2KGdp9UYhzO5y1Z3NCB7786?=
 =?us-ascii?Q?ueAfS6ITO0r2DXkEhd3MJ6wCkGRMDPRwnGmzjXADJhojt9Bs5uXdwRNIW26z?=
 =?us-ascii?Q?7IEbrzhEFuZoBaghYu8hx3mV2QkixZhBcRbDwAo3kJGDyA6hfXYfwuAmhdBN?=
 =?us-ascii?Q?/BTexRWa0qFYH+zjJn4I2JfOAhLCMqbYdQBNH96ap0bi++IjW5uNOTHb0hTn?=
 =?us-ascii?Q?xEja+IgOQTCESVzKq3dOF98Hu2jqlwpozH4W0Mimdjc76IMDZX05+GZWaaOM?=
 =?us-ascii?Q?uuvxDVPUA/BcehNlhizPezAUYrLRm42RpapOf+YIO9zVLeeJfC3/YTtLPT6V?=
 =?us-ascii?Q?oJLQGX5DrbjvO347899SYbGXaBHzneXhEuLSWi5dq/UIUejek9KotagX1LSG?=
 =?us-ascii?Q?MV2ZOa9qCs0RuUPOIwEqOLzRTUGyFnVO2X1c+y8ScGiIVQ98PPaCxGkV2Z85?=
 =?us-ascii?Q?3g+0QGBG2fC2I0Giq9BEiPTEWMuCSvBKRe4kPT+Qf8vaC5K2Wpch3cWigHGN?=
 =?us-ascii?Q?oQi0uwuqGnuOAql7kg+qRK9G81if2SihTdA7Xcg3dL8i6x2tgImaIOSfkuMo?=
 =?us-ascii?Q?bg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f939adc-c7cc-4948-6af2-08dade111de7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 20:23:52.3237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kZAGZATrVy33h+1apuaJ4J6eguExbxqTsKpRcbrEZ4RYycBiV/QyDg6rH/SjqeQk0iCubWEVAgWPF3BzgT+hjXsOUBIJEfgaLMBWfQsr1Xk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7322
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove __maybe_unused from used
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
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Wednesday, December 14, 2022 11:50 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; De Marchi, Lu=
cas
> <lucas.demarchi@intel.com>
> Subject: [PATCH] drm/i915: Remove __maybe_unused from used
>=20
> The attribute __maybe_unused should remain only until the respective
> info is not in the pciidlist. The info can't be added together
> with its definition because that would cause the driver to automatically
> probe for the device, while it's still not ready for that. However once
> pciidlist contains it, the attribute can be removed.
>=20
> Fixes: 7835303982d1 ("drm/i915/mtl: Add MeteorLake PCI IDs")
Thank you for catching this.

Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

-RK
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 3f803c1280c0..fe28104d2ae4 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1130,7 +1130,6 @@ static const struct intel_gt_definition
> xelpmp_extra_gt[] =3D {
>  	{}
>  };
>=20
> -__maybe_unused
>  static const struct intel_device_info mtl_info =3D {
>  	XE_HP_FEATURES,
>  	XE_LPDP_FEATURES,
> --
> 2.38.1

