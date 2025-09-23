Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE298B978D4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 23:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 717C610E0E2;
	Tue, 23 Sep 2025 21:11:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dc09sq3d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABD5510E0E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Sep 2025 21:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758661862; x=1790197862;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=btTpgvg6mgVEt9z+BWM2NemRpi5n3C1Oi+RIvUMzTro=;
 b=dc09sq3dYfZO7fKqlN6qXh5gFTEii4wR48um1YXK6U07QQAfH7qxCv9Q
 q6BI6374Y9NLcE3cA9jgGyIDYXsV+B9JsX9HLaVXToFbQ72f1QzbkM+5X
 1QCQoZ31IE4vOKsJ/m4XnUwbWKdze7KGDIoYA0pwpL20RAxbyZjouMjyn
 5/3m2rDVeRgE7+K4lg3et2IQbOtC38CQ6WS4eL8UEdM8t4aG8d5f2gsFa
 jINrD7KLm70MK4Vv3IFIYjL6UmNfxLzNIxKRYl3M/ejmAS5t9366ecKat
 C5VYy6VLgimP76hojM9+ZvvDrhMqvILRXH6eXhzKOeaz2Mc9Dg/PfEpgb Q==;
X-CSE-ConnectionGUID: oqWhYcyTR/WIWTYIxC6GZw==
X-CSE-MsgGUID: XgJX3zjgSzWyc4ScfNQMaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="59993170"
X-IronPort-AV: E=Sophos;i="6.18,289,1751266800"; d="scan'208";a="59993170"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 14:11:01 -0700
X-CSE-ConnectionGUID: m0HbAt9VSrKtodFR5XWFJg==
X-CSE-MsgGUID: tdpEb05kSLiqRh4VfFIxkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,289,1751266800"; d="scan'208";a="176685963"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 14:11:01 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 14:11:00 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 14:11:00 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 14:10:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sIuRf4D8MTQ9xo0mnkUHd2rSjsQ8yV8rQNA9eulpLVMz84NK0Shli8X/07AwWiAFU6lv8bK0GNn2Ejf1bF7wBI5JggO2ajxPOhU+FoAbOu/PMKPapewvbsJHDtWT8cJGPslhvdc/qB6otrMB6XlmpHtoJdsJIn8V2tm0z2yloHqUHVqkCUaq9N9tfFeVaqmXyDiibvyZSCAHZN0rFd8SyS/Jl8hgUpF9hDSU19jVO+qhUDuCO386bYap+Mj4gOH8gfRIwlOYttvA4DOBovSe83bZvBBsfFysFSlGtuqIO+Db638HaCVoo/yQGiaiyBcMD7y0PvX4s0hcVPx7wDkWtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mEkZse5Zfx81JE6vUn/E81tVXHXQIjoxl1gO4X76Av8=;
 b=f0xAzKCfvk9cnF8uudvfRh1YcvhrxEU6wTvuU7KPhRqkM5NqmlLc4wzPoj/Kjl/d94nk0SWIxLo00IsrpBkx/m0gYcrikmQk1XDyDho85vpLv2vRoWfb8FIDyqYuvgbpW4B4TS7NZk/1DeNRRJhXy1vFOnUkut9n3aLLnn5fzBo7lR5kkijS8F4mekE7YMiGg4dDKkD8e55y9M+B5BwImxnY6+dmU0y0K2iQj4BwZ5ZpbaOCER4+IWgdVH9uHdIMSxcwcTLt8RRnV/1PcA9IAEaPom8zxZ7Nszdgy1kh0+WRUZL920hWg2Rp86A16uLS09HDAYm1ZLUNV0epqTdSOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by BL4PR11MB8871.namprd11.prod.outlook.com (2603:10b6:208:5a8::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Tue, 23 Sep
 2025 21:10:57 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%3]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 21:10:55 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "andi.shyti@linux.intel.com"
 <andi.shyti@linux.intel.com>
Subject: RE: [PATCH v2] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error
 handling
Thread-Topic: [PATCH v2] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error
 handling
Thread-Index: AQHcKagQJjJpbgiL7kScjkGmorjforShRtsAgAACJkA=
Date: Tue, 23 Sep 2025 21:10:55 +0000
Message-ID: <CH0PR11MB54440684AC8E34E855520EB1E51DA@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250919205740.77847-2-jonathan.cavitt@intel.com>
 <4dhrlott2fhqpqtk5p4k27hgrji4lt53w25mnpjy5kx3zzj63n@s6ctnbm2mpb4>
In-Reply-To: <4dhrlott2fhqpqtk5p4k27hgrji4lt53w25mnpjy5kx3zzj63n@s6ctnbm2mpb4>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|BL4PR11MB8871:EE_
x-ms-office365-filtering-correlation-id: a934d886-a0d6-4297-7825-08ddfae5afad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?mi0r13keYxetwNZ4s/CoNbRhKaDBe30s0uvw/CZAhUJdw72CrEWoS/4XTIgW?=
 =?us-ascii?Q?fr+7OxlGV+rIqO4H851FDF+es0UD8CVTYUe2aP2P+VyGjFI+kEggtXilRCaO?=
 =?us-ascii?Q?3k/eAUZ6ug0IEibG9oYgSrHAPSiHND2qj4C6gr7+dVkkIbK/cBd6QpA531Lt?=
 =?us-ascii?Q?vRoKRN+4CiCSavgpY854DjalZPbw6zDFbpoSTCaPq3pA+fnQaa3ftWRdoKrE?=
 =?us-ascii?Q?dPMVpFHwDDZXezn7DJ6brQllEst+MWPB3cJOLcATnk5w6PhuFGzBLRQq5hFZ?=
 =?us-ascii?Q?PT/2hQrl2csZ7HLpHyCU/Bl7Z6BP0Sk/ZsLcPYPt9VwdWlhM9R7zo5UNvZyX?=
 =?us-ascii?Q?jVzG11nY4luVfSymThP0jtOQAdhRL9fRqkSLsmftYuzmMo8oYb0SUK/QOy8O?=
 =?us-ascii?Q?wpEBP8r18MGoOBhWmBsBpv/OrcCnjU5uOeaYrCbqGlmXqLgtCX4+9NztZYfb?=
 =?us-ascii?Q?rFhMudssOBKVAQL7TV2Jbd1qzfpognBz1uUzdeEUi68tGlXpXuO51khDPz8J?=
 =?us-ascii?Q?yXtHpFcj7sAgCmQvpeUQxjEVQh2FfHO0crTthHafhHc5Nho7CavZJn+EKC4E?=
 =?us-ascii?Q?mC6b4opEyyVoRSKXWMkO5c7ahNmiJzB4CGQ8rlIrw8ogG4REGvkprJXwM6la?=
 =?us-ascii?Q?p2GKR48bqtOT/UyfK+aGvUj6x+3yJvdmXtLNXbK4md8IjjkYde2VwSqozR/u?=
 =?us-ascii?Q?qTh33uKYI36x9mq3pYBEGbOtK2IEEg2qD54itTE0IkV73QQRv7FE3fzKEhVf?=
 =?us-ascii?Q?6Q4TcZ76lhJAXtUbrGolEEsxE5aIV2NgkI1lKVf7Jlajw7flZms5vdmdzKjv?=
 =?us-ascii?Q?RhuRCrDvBBFt65/YnYoSPiqfNLk8n67WhG7N1getd3A1tL4CwEF4A64Q8jFa?=
 =?us-ascii?Q?BCIlth4Pb/Tpopqqy3JzZS1ceV+II0QpfPnWNNAdLTxE/g1kPVoYDR7TXvf6?=
 =?us-ascii?Q?uQPVVHvlrS1/smuxJfNZ8Ie91miocnpaclRGN+GvRINE9BNSgAqSqs5K1SkN?=
 =?us-ascii?Q?kMCrUb7g6BhCL0M23X7txgclhqq5wCWkYSUVrMJIPnQD0UegEhnqWQ/+2hYk?=
 =?us-ascii?Q?XbCk9TCshQBkc502ImVERZtP65fp/7rLwtSpuVNMBUJZ/wW9fF+dP0l8AQcT?=
 =?us-ascii?Q?Y3S9ufTVwCArG/hmtox2JOpeEOGc/K6iUIVMP3JR4ydwangAP/IsJLfvoCPG?=
 =?us-ascii?Q?Ux8h1cEVtbFu7J1uzF74RfBLzCDMk0Fk5J5RndicJHzhTUGfppkNF8N2G88i?=
 =?us-ascii?Q?XFXcBQ1o017qvO6RLKv4e1rcHhD1xifQ4H1fqTbZxRknp3RrBMTQ9bple5H3?=
 =?us-ascii?Q?Ku3fk1HEvIEO3xdoBrDtDUJXbfNLPGFfG1Thi5D6J0FJ45RjBdsdYE+m2Pi8?=
 =?us-ascii?Q?BNbjBXgCjmEvsljkvzzlbhg2SdE7yIq8zsrB2Pcw2UWfRsO7TEPXaiNSeL+3?=
 =?us-ascii?Q?GFKD67VoAxtnbTQZCiUZSt+rwG7sh6i1pCtPvjQ5MW8nqrLCwx5A1fJkZZhE?=
 =?us-ascii?Q?RLlv5kzAiHG37z8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fIXJr6qQEq2Trb4wPU+ZDGjw2nbKB5+B6SxEtX22YYMpFGqJrnP4wqUnF57d?=
 =?us-ascii?Q?CnrUQzxYXyCYUwHwwGohRSico7KA4/VLz5iJIn3MgVw1F4ai9X3ahzqDiV8V?=
 =?us-ascii?Q?38+wuyLj8xWRtf8cJztVuRicFkrF8DJVxzIcVrkwm28QB/qNQOAJcpPsWAFE?=
 =?us-ascii?Q?Qy7VEdP5W/mw6bhBtRq6rFe1aIrwyCgq8P/xujxXVjdCQ3H3rfZgTq/McM+l?=
 =?us-ascii?Q?zSfv0dn3CwQpwNQbRoXhmRzjMb2PKJW7iKeFvlZNgH1VkPV4L3jRQIZlwFA3?=
 =?us-ascii?Q?yZ0LPliGOUAdY9VgVSQ7U1sUwS/mqgozlQilkg7OWS0PVGzKgdb5/3bFUl4S?=
 =?us-ascii?Q?2yiBGrXCF5v85QLHZAfq8cVK12aRk8ZdYTr2aVEKDeDpAjr84tkYJq7U5zo3?=
 =?us-ascii?Q?UHPSAx6s4TIXfxyBlXwQiQmSiPYw0mQyUCrEDoIyrqrfiMeo7lgd5d3KQCUr?=
 =?us-ascii?Q?2u+8IoVbhiGkrWYgQpyCnixXlV53HkjYDdceciKgZPCJBuwVFpu9mZRd3+Hs?=
 =?us-ascii?Q?dnUrBONlCL/0H9k95nQHUNFwYFjTcTWK63n+r23owqeu1VMYczTuoQt6tG/6?=
 =?us-ascii?Q?2Dn3h7MR7CLGwLdInwUQ4AOfMKsh29K/wvSGeXYyL6qhj69JrQ2NcCfr9Ejo?=
 =?us-ascii?Q?S6Z+0p+76r7BxhLR5vDW6ag2L36n8pmAsclfl5LCMjXqomPOLWXPTwwhUEgE?=
 =?us-ascii?Q?8VyYUfFaVzEpUAQ8kWg01WtQi19VHAitMf7rVR+01zgblhb3AICEUjOxG0Y4?=
 =?us-ascii?Q?n8q+BR7MO2QsxnqpZBEBGw+NAMQ3pJPpsmkLvkz7IAtW8e/RxsGdHQ84QKh6?=
 =?us-ascii?Q?A33UPWESnl83hCCcg/f3zA7QcYlq3d5HtgH+SqqvCbxUxZmdmB7a8z50G2Bo?=
 =?us-ascii?Q?s3NeirThps4oEArdT4J+6H4C0ASAYkeRLlT5FNxRBJPqhpKvQzgCVAxHcKfu?=
 =?us-ascii?Q?UNjTefpxrKXec0+bpNpbkO2lNdSv6FmR1BJnTznoWRKulAlI8yOQSoycbN9v?=
 =?us-ascii?Q?1qjWYV/UqAbSM+VAE7ikAlRLO1nzVpLs7qJl+JHUEclG48/y4b6l0/67WzdH?=
 =?us-ascii?Q?YBTMTrrj7RCU03+tMXZRxx7el5aV7CFxUV4TSNHeTMtjJ58sPwwHH78IVgra?=
 =?us-ascii?Q?v11aB4yf7f0c7xSFqi0mj4B1Uf1ip40vGTQzGBGL2DV6HAzAPsEqkR0wIv1z?=
 =?us-ascii?Q?Nvpp+iOGr3KENl/qMS3fm03GivF+a7R4pWyrN3gzAWngBcqNeA/uj+8mTl3I?=
 =?us-ascii?Q?dMypTcH3MPSxzVi54iShdfOoPfKJehAb4PTSsRRjZaJF/j74Hxh6FE5k87nv?=
 =?us-ascii?Q?DQn6EGE5c9D+ggBlYrff8VmnFlgzsfZ8wRUd4V1Pyf1qheB2n6dZdk4U0rGZ?=
 =?us-ascii?Q?9GeGubA2ak3GF8upsVA8IeloUuve10pnTSgdrfu4Llw0boM9kMqyTyeHkYq6?=
 =?us-ascii?Q?UK9OULPAVm8Z5V6FG8Akl67MvdciBKqmVYziGHn3oymoC6lyhsgDi12gcnLf?=
 =?us-ascii?Q?d+Wvq9AkIEn0vL2rcvXkR+TktBwan3UgIJDHX75fGTiWz1xWk7ovdkoCnFKJ?=
 =?us-ascii?Q?ybmjgp44VwBL/ellAz2cOWMjUvZoqpcjoNcCAbEIfqTY2Ufp1QVLHaYD0PHV?=
 =?us-ascii?Q?FcHeecuX2wntqhpKUDtuXP5Juf4fq8c8RjJMB+4aCdPo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a934d886-a0d6-4297-7825-08ddfae5afad
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2025 21:10:55.8189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XmVB0WF2eFiUE50btDbuhkJsWijYpuAPJNhQJEGU/HR20Yb2pUi2VVGdyioXmaAQXXXgdy1kbfX+EVsswkbCSEQ7Y77WNCqVpcTpkn6XFXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8871
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
From: Andi Shyti <andi.shyti@kernel.org>=20
Sent: Tuesday, September 23, 2025 2:00 PM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Gupta, saurabhg <saurabhg.gupta@intel.=
com>; Zuo, Alex <alex.zuo@intel.com>; andi.shyti@linux.intel.com
Subject: Re: [PATCH v2] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error ha=
ndling
>=20
> Hi Jonathan,
>=20
> ...
>=20
> > @@ -1361,21 +1361,27 @@ static long intel_vgpu_ioctl(struct vfio_device=
 *vfio_dev, unsigned int cmd,
> >  		if (copy_from_user(&hdr, (void __user *)arg, minsz))
> >  			return -EFAULT;
> > =20
> > +		if (hweight32(hdr.flags & VFIO_IRQ_SET_DATA_TYPE_MASK) !=3D 1 ||
> > +		    hweight32(hdr.flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) !=3D 1)
>=20
> How about using:
>=20
>     if (!is_power_of_2(...) ||
>         !is_power_of_2(...))
>=20
> The rest looks good.

Hmm... Yeah, looking at it, that does seem a bit more efficient than what I
have here.  I don't know if it's worth spinning another revision of the
patch over, though.  Perhaps if it's considered worthwhile enough we
could just add it in at merge time?

Thoughts?
-Jonathan Cavitt

>=20
> Andi
>=20
> > +			return -EINVAL;
>=20
