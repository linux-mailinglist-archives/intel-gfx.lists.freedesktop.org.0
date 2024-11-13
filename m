Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3229C7B89
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 19:47:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0B1610E25D;
	Wed, 13 Nov 2024 18:47:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ktNePZvq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7120210E25D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2024 18:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731523651; x=1763059651;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oebPzMnj5alRQlpMqJ+NH/Znz/1t6ohKIdhLB+cfeEA=;
 b=ktNePZvq2c02L5l6PpdiZV1YY5HAOviuXe1t9utQ+/k2Ist/ZGoKWdzw
 Nisr7UN3L3OhCt6+qn5Eg+yADrVKPKAEDc/pU9LXbM4MOdq6B1xw152mg
 nilcQ9FwBAJOk65gtbGgWD1IH6E08vt3fy32MEoSgOEsl7O/p0HY/2JTi
 MFNVFtybhPbdgITIkqJA42sNDJ7jGxrJHKXb8/Haer16iPaNRxlNPWLQ9
 TjLIoTAwtnpfgOpWlMz1LZf4gXHaq7hsNX6VbU1y0nBeLdlj1O28sdgkh
 0lPGaa2WiJEOVQiYKFrJM75GTKr6XQwIVQVvpe99bhrEr6iKqvZzi+zxl Q==;
X-CSE-ConnectionGUID: dCvocvALRsiZuob1c02XtQ==
X-CSE-MsgGUID: uRpKxjhWSpKfleGUvC7W9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="42550042"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="42550042"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 10:47:30 -0800
X-CSE-ConnectionGUID: KMnHoLPvQA+VNeGK8mwBzw==
X-CSE-MsgGUID: Tk/Kqq7pSimUsvkzprrAKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,151,1728975600"; d="scan'208";a="87519431"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 10:47:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 10:47:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 10:47:29 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 10:47:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A89CdV8cjN24aZgtE3p6l8dGU4+MugH6aibdlj0PA1lKhVXXACtPW3SKnywwnG0neRv/dGLFYzGmUPikYwUZVj0lktSORtXZtdtpsMfDKJuTrNozT/G6e0hyVFkML+MyTrb1B2ShZWXPOXVTsx0OMZlAxyqtLTCsRVZoxS4pCCYvW3rny8HEupsgZEKA7IJ7jM5B01sI+TdOyn4m9331jqmTsb8EX7LNnNu6m5+Agit7kN+1onUsFIuHnv2JFWecsbGkM4WoNCToo6Dv0Ge5QOrQsBLTOef2kjedskPTwmv5zqx1+1d3uHYQmgPGrzDYUoInlKwbEX21uXzjP/bahQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2BAsjd9Y1qp+RantQB+Zi8kfYBtlQLJ2jrAVIlNEoHE=;
 b=SMgNBiwRC2K07OD8XWNwtZLq82ka5fdHN3zrilb+nKXM72fQiHC0z/dOf94WSO5E4FS2bXGXx19vlKfHFHTFx2ohELjB6vGSgxsYYUNIim1CZX9m89PEWFnb/TanL80ZD/EnlWxxl1mGbvBxrC6xTwt4yD8z2lTBT9moGrDs6QTh1qWyJV1Xt934KZg8Kyc6uvTvb8xzVOU0q4RSIxHTwoMgqoYRJg4EgREpjq9xEe3EhuOulHTxV/deeYryvl49Nn/SvgDUw8bP8BjKs4ShlwYUZaV6C/+piCGKTEGeoNgalELquFb5bAvXeYKVYv/Qw0wI07FS29MySsjkG7DPvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by PH0PR11MB4919.namprd11.prod.outlook.com (2603:10b6:510:34::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Wed, 13 Nov
 2024 18:47:26 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8137.027; Wed, 13 Nov 2024
 18:47:26 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [RFC] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Thread-Topic: [RFC] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Thread-Index: AQHbNbkrwFMeRZUy60GKgL5jXHO+M7K1LXYAgAA1dUA=
Date: Wed, 13 Nov 2024 18:47:26 +0000
Message-ID: <IA1PR11MB6266CEFC2A73DDC75817A5F6E25A2@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241113104453.1813674-1-dnyaneshwar.bhadane@intel.com>
 <87iksrb80l.fsf@intel.com>
In-Reply-To: <87iksrb80l.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|PH0PR11MB4919:EE_
x-ms-office365-filtering-correlation-id: 9769cfd9-e1ab-4479-ac5a-08dd04139e2a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?PXB8Ntt9oIHrt/3imPxgM9Mq2+S8BzWA7zFnf+PajMlPyc7EsZUicgcMqpoG?=
 =?us-ascii?Q?y9qrKqrHSiXjCHluxh/PcUc5i8BjIjb8K3YP+Nfe5qNnMfI684hQz0g9wnsV?=
 =?us-ascii?Q?/V803dqssKc1tZDQp2mrpnuLFgIQBOL0unfJw/bVdnWaHm6cQqU25VRv/u+5?=
 =?us-ascii?Q?OaICS6NqO0HH2cqCq4GGOmEg6n99viO5485mkCqbniQQjYwnDKL46+LRMZpo?=
 =?us-ascii?Q?y6RvufsXjqJ0Aj0auWe5dbqrklTaecMa9fXSQypuHJUWSgkUhS4Q5Cgeu+AI?=
 =?us-ascii?Q?i4nHS/a+ru0zSHFr7ZPQ7XzJFEEit0OyLy6jYpF1SS5zxb7L+f7PaAqWk9BU?=
 =?us-ascii?Q?9IyixBMcP292nU7T08XGl0Wg8jzyi/Mucia1m7lV1ri7tVRQkandzQ044/Pg?=
 =?us-ascii?Q?TXDv4f4n3+0Hb6LqEoMyYBxT+rVAo1R0yDrhItafg3m+2hScxjLRQNPBJA/G?=
 =?us-ascii?Q?hBkV+JGi4Nfzm9JPL5G+seexKVAq12jE1p87YPSiYUVTWvroSD3yuRD300Q6?=
 =?us-ascii?Q?Gg6LuliQnmfsLIQ/cGkzCdJOMOG79PbmoinUIkCJvYqti7j+2bkMFkfLTfXV?=
 =?us-ascii?Q?SaANX3s8d1a2NJETjM+zwYEAEqCT69AWB/lMG9f91+/c6gP7RtyuLlrWLTqp?=
 =?us-ascii?Q?lDyiYIY9PyxFbbtM9CHCZFqtjh1DHXjF6pMMoIQjMY0E7ctbLjVXcTpRZmg2?=
 =?us-ascii?Q?7PrK4kBxZeiY0wHbX0ufVinKDlBagtlvHXHN2jjVyRPKXHIPwpafTOs8SHoZ?=
 =?us-ascii?Q?3dNYV+KKDkTRcZd+2M/1fCxb9WJQ5BRDIEt53r+HM/U/0KaAJnJ9Yzy8cye5?=
 =?us-ascii?Q?XYWUaqVmqOY+2AA5EraYxHKasksrpZ3jniN/UF8Pq6qVaA1N7v6i8U3UpYA1?=
 =?us-ascii?Q?ddIbnthdSh8scAo2+Al5y/aqbgb7jh2X3NoBCwPel5x8fuluxscszh3VpFFb?=
 =?us-ascii?Q?K7wWoZ9tZDA6FZpDAOECm3e1pWe/ARBJ0EVMPl+sPrriC/vjLNVwgl4uJUne?=
 =?us-ascii?Q?WksKLgEI5bUxGgWr+lhClsHyvScEUF94y6gZ1NmtIW9f5xKXA5K2QMRNBco3?=
 =?us-ascii?Q?5zrDgx2upqd1VlL1XoNRcTFeIi8z7/DnXwi6YMHzPBsORnYTj2iSy6du1Kxt?=
 =?us-ascii?Q?WpzYDW4pC2rgpS572Gb7sq9G1zKxzXz4pIenm1g4qIcmtTubbB+YNKNHkGHK?=
 =?us-ascii?Q?oZUCoVIGyr+Nz/r7B/nNyKg+rpVxRIFcsCfKIURhlSUWbV/KyxQxOVh97P2Q?=
 =?us-ascii?Q?r552kZRuNKhgk0vt2RRf/cN7s8eHf5C44eXcf4hAD7q0gGTQuVFsuI1/Gvrc?=
 =?us-ascii?Q?BUEw11BFEif1slnGOt5me/EvfqFsiW5ZNahBBd4dQ1K3PqKzReA3pxpexsaW?=
 =?us-ascii?Q?AcEZlPA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7gegisGRloVR8uVy8UdJ2P0E7F3AYFDFFHEPpQ3zWsCgypAzyW/stsGwP4BU?=
 =?us-ascii?Q?s7Tm9F53cXc239xmoqAw8vj5fPcP12tAC7qW0EsgXasJj+MjeylvZ3/dlgzv?=
 =?us-ascii?Q?CqeTZf3ZlSoETAkxJbv7ZOJ4t9T5uWlOUcbIl5N0ErHultIxNW+jcR9A0vXl?=
 =?us-ascii?Q?qGBMtbRHQfFkfE3nQ463FSjIlYZOrHAewO2W8yneU0ilfKHgXhk07BM3rwA8?=
 =?us-ascii?Q?A3X6AcMTNXN2ERKXBC1FTVvt6rEMcO3wvFjCdJ6/GXd30CdueqZLhaWu7kon?=
 =?us-ascii?Q?xWttGewnsoJ/doLgZLyf7nmIR2y78Duh3eRV9rLy/ACAuwMJovedj4k+hP3C?=
 =?us-ascii?Q?FVyzQyxUPeqbSsLMWgYYqmf3/SsVCEbCstaufyR1wDJACUauVXNUfaqJTN8Q?=
 =?us-ascii?Q?sgXfrzdgACmgbsZP2AeIw3JZYjNtroAlRRZeguCJsrlknpDFglIW9PjnFYw0?=
 =?us-ascii?Q?fUe9GETJSOmsxyhXQE0L8whSHKzuiT9eW1c4ZDiy8HAJEf9YX8PbdQoNeA2Y?=
 =?us-ascii?Q?nGCW8lFZxNKitTIdE/JIj8aBB2Bugx7IxCsPpax1rk0rDBgOc0XpmJd2gFwI?=
 =?us-ascii?Q?zKRCFBXLUwaP8HXW0eJkuN0Pd2ZdY7lMOxKXZP9bwJA56ArZBf4cCzCH4va7?=
 =?us-ascii?Q?S9HfY5O4PBeDX9iNanBndlQaxlsOV7Gw2v9p7Dh3QPddsDDxrRJr273iNbXK?=
 =?us-ascii?Q?aRKeuNZBerwncpN3yYubxxdBPDFaJq9qe7lnfX+PZKGiBZIFr/qr3prW0sSv?=
 =?us-ascii?Q?Dx6hMDGDtjgKvDuu9Vb1akId2BldOrTK+mZs08/0ega7G4K06g0/otu306at?=
 =?us-ascii?Q?v6ElFxUHQ88uGiYO6JH8915ZL/38cBk2wZFExx3DOI5qHW1DCnsdbe2B1URX?=
 =?us-ascii?Q?BJWPFC5q6bICnlcMBKa3V868A8A7P0CSbMVnBdLIIFgBgf2hlXPLztzNToch?=
 =?us-ascii?Q?bccj0Wfmv3MGG0ylfWRXI04KvXAVWH21/+k2EnPEE/Lm89e9Ozo1666QaYmB?=
 =?us-ascii?Q?I6h+1/RtQ/ilgXxcEovGGOI3holMSWQPcdCKqek9tjKlXGl2bW7IQQ9DdXGl?=
 =?us-ascii?Q?l+AqiQzz1UR3DnB/eoeY0PzpUX05Gdm/FvUQ075y3xLbbbqf6yJO2mKSgOhR?=
 =?us-ascii?Q?aYplZz2BpqZW5Ve3SW97s6e/vzBQmInPXpSkTO2jwramHHv25ptIN+8EuCIW?=
 =?us-ascii?Q?ojBkWzwZT35LUY+OE/J5JmXFHcwjMRk0PLy6hbTSpuYdqucjLqi8fOrhCSeY?=
 =?us-ascii?Q?7sLY7PBjcxMkgHH3jQPtlAqeJFT+LFr0xhvKFLyTyKazKz+BMaOUcOF5wuRg?=
 =?us-ascii?Q?1NxAzkjG/VQNhvacbSI2LQ823Xn+ujqken9ZrJd9+XM/7ng3SVMctQjUtkJF?=
 =?us-ascii?Q?SN7+x242niJH3kPydOc0Au3m8mYdzpolWTbN0Txw8iD8GSb2m2JeF8cEjGH+?=
 =?us-ascii?Q?hZjFF8+IA9agU7Prwz3lACVfk36tU4GQbnuv5DwHlKx8CTQKTY/90CZ1vmr4?=
 =?us-ascii?Q?f5nAqAXZuJRPsrQ4D/YPiBB8qdebx9lCAXNXf1HHKTIzGsSjaCrgWyzc7hPZ?=
 =?us-ascii?Q?7BIEg3tW9xvd4K+9dZsa1diVlHCOY3+2KmmJN39ZQUBxfrQ/xynYLHnVRbqG?=
 =?us-ascii?Q?KA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9769cfd9-e1ab-4479-ac5a-08dd04139e2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2024 18:47:26.0310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RKj6r86Yj/TGW0+J/8lhuFy0u9s+tQcwxHw/VqFWVUqTJzfCxQgrGZkrJ60j0oCfeXTPUBAknu6AQyXMpHNZCPO0v4NXWEmjz1mdm+bQmV8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4919
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, November 13, 2024 6:34 PM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Subject: Re: [RFC] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
>=20
> On Wed, 13 Nov 2024, Dnyaneshwar Bhadane
> <dnyaneshwar.bhadane@intel.com> wrote:
> > In the C20 algorithm for HDMI TMDS, certain fields have been updated
> > in the BSpec to set values for SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, such
> > as tx_misc and dac_ctrl_range.
> > This patch covers fields that need to be set based on the platform type=
.
> > here for xe2lpd, xe2HPD and MTL/ARL platform.
> >
> > Some SoCs cannot be directly distinguished by their GMD version Id,
> > Specifically to set value of tx_misc, so direct device PCI IDs and PCI
> > Host Bridge IDs are used for differentiation.
I will rephrase this as per new changes.=20
> >
> > Bspec:74165,74491
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 57
> > ++++++++++++++++---  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |
> > 11 ++++  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 19 ++++++-
> >  include/drm/intel/pciids.h                    |  8 ++-
> >  4 files changed, 82 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 8ad19106fee1..018add48b8ad 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -6,6 +6,7 @@
> >  #include <linux/log2.h>
> >  #include <linux/math64.h>
> >  #include "i915_reg.h"
> > +#include <drm/intel/pciids.h>
>=20
> No. Do not look at PCI IDs directly inline.
#1=20
Sure, I am removing this does here. The reason was that earlier plan was=20
without using sub platform macros but recently It got introduce in codebase=
.
>=20
> >  #include "intel_cx0_phy.h"
> >  #include "intel_cx0_phy_regs.h"
> >  #include "intel_ddi.h"
> > @@ -2164,9 +2165,55 @@ static void intel_c10pll_dump_hw_state(struct
> drm_i915_private *i915,
> >  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
> }
> >
> > +static bool intel_c20_tx_mics_3_platform(struct drm_i915_private
> > +*dev_priv)
>=20
> No new struct drm_i915_private uses please.
>=20
> > +{
> > +	u16 devid =3D INTEL_DEVID(dev_priv);
>=20
> No. Do not use INTEL_DEVID() in display code. There are no current users =
and
> we intend to keep it that way.

This will be removed as part of #1 comment.=20
>=20
> > +	u16 host_bridge_pci_dev_id;
> > +	struct pci_dev *pdev =3D NULL;
> > +	bool check =3D false;
> > +	/*
> > +	 * Some SoCs have the same PCI IDs, so differentiate them based
> > +	 * on the host bridge PCI device ID to use the correct txx_mics value
> > +	 */
> > +	while ((pdev =3D pci_get_class(PCI_CLASS_BRIDGE_HOST << 8, pdev)))
> > +		host_bridge_pci_dev_id =3D pdev->device;
> > +
> > +	check =3D (pdev &&
> > +
> (IS_HOST_BRIDGE_PCI_ID_TXX_MICS_3(host_bridge_pci_dev_id)));
> > +
> > +	return ((devid =3D=3D MTL_TXX_MISC3_PLATFORM_ID) ||
Condition will be change with correct macro.
> > +		(devid =3D=3D ARL_TXX_MISC3_PLATFORM_ID) || check); }
>=20
> None of this belongs in cx0 PHY code.
#3
Earlier the c20 TMDS algorithm was display version specific and generic but=
 now we need=20
compare with platform type for selecting correct value for tx_misc , tx_ter=
m_ctrl=20
Please suggest correct place not to sure to place here as par of the condit=
ion below.

> > +
> > +static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state
> > +*crtc_state) {
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc-
> >dev);
> > +	u16 tx_misc;
> > +	u16 tx_dcc_cal_dac_ctrl_range =3D 8;
> > +	u16 tx_dcc_bypass =3D 1;
> > +	u16 tx_term_ctrl;
> > +
> > +	if (IS_BATTLEMAGE(dev_priv)) {
> > +		tx_misc =3D 0;
> > +		tx_term_ctrl =3D 2;
> > +
> > +	} else if (DISPLAY_VER(dev_priv) >=3D 20) {
> > +		tx_misc =3D 5;
> > +		tx_term_ctrl =3D 4;
> > +	} else if (IS_METEORLAKE(dev_priv)) {
> > +		if (intel_c20_tx_mics_3_platform(dev_priv))
> > +			tx_misc =3D 3;
> > +		else
> > +			tx_misc =3D 7;
> > +
> > +		tx_term_ctrl =3D 2;
> > +	}
> > +	return PHY_C20_A_B_TX_CNTX_CFG_1(tx_misc,
> tx_dcc_cal_dac_ctrl_range,
> > +					 tx_dcc_bypass, tx_term_ctrl);
> > +}
> > +
> >  static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state
> > *crtc_state)  {
> > -	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_c20pll_state *pll_state =3D &crtc_state-
> >dpll_hw_state.cx0pll.c20;
> >  	u64 datarate;
> >  	u64 mpll_tx_clk_div;
> > @@ -2176,7 +2223,6 @@ static int
> intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
> >  	u64 mpll_multiplier;
> >  	u64 mpll_fracn_quot;
> >  	u64 mpll_fracn_rem;
> > -	u16 tx_misc;
> >  	u8  mpllb_ana_freq_vco;
> >  	u8  mpll_div_multiplier;
> >
> > @@ -2196,11 +2242,6 @@ static int
> intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
> >  	mpll_div_multiplier =3D min_t(u8, div64_u64((vco_freq * 16 + (datarat=
e
> >> 1)),
> >  						  datarate), 255);
> >
> > -	if (DISPLAY_VER(display) >=3D 20)
> > -		tx_misc =3D 0x5;
> > -	else
> > -		tx_misc =3D 0x0;
> > -
> >  	if (vco_freq <=3D DATARATE_3000000000)
> >  		mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_3;
> >  	else if (vco_freq <=3D DATARATE_3500000000) @@ -2212,7 +2253,7 @@
> > static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state
> > *crtc_state)
> >
> >  	pll_state->clock	=3D crtc_state->port_clock;
> >  	pll_state->tx[0]	=3D 0xbe88;
> > -	pll_state->tx[1]	=3D 0x9800 | C20_PHY_TX_MISC(tx_misc);
> > +	pll_state->tx[1]	=3D intel_c20_hdmi_tmds_tx_cgf_1(crtc_state);
> >  	pll_state->tx[2]	=3D 0x0000;
> >  	pll_state->cmn[0]	=3D 0x0500;
> >  	pll_state->cmn[1]	=3D 0x0005;
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > index 9004b99bb51f..b2417c58ae20 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > @@ -9,6 +9,17 @@
> >  #include <linux/types.h>
> >  #include <linux/bitfield.h>
> >  #include <linux/bits.h>
> > +#include <linux/pci.h>
> > +
> > +#define HOST_BRIDGE_PCI_DEV_ID1 0x7D1C #define
> > +HOST_BRIDGE_PCI_DEV_ID2 0x7D2D #define HOST_BRIDGE_PCI_DEV_ID3
> 0x7D2E
> > +#define HOST_BRIDGE_PCI_DEV_ID4 0x7D2F #define
> > +IS_HOST_BRIDGE_PCI_ID_TXX_MICS_3(id)  \
> > +	(((id) =3D=3D HOST_BRIDGE_PCI_DEV_ID1) || \
> > +	 ((id) =3D=3D HOST_BRIDGE_PCI_DEV_ID2) || \
> > +	 ((id) =3D=3D HOST_BRIDGE_PCI_DEV_ID3) || \
> > +	 ((id) =3D=3D HOST_BRIDGE_PCI_DEV_ID4))
> >
>=20
> None of this belongs in cx0 PHY code.
Is intel_display_reg_defs.h is good place ?.

>=20
> >  enum icl_port_dpll_id;
> >  struct drm_i915_private;
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> > index 582d6277d20c..b586e569434f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> > @@ -279,9 +279,22 @@
> >  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG :
> > _MTL_C20_A_TX_CNTX_CFG) - (idx))  #define
> PHY_C20_B_TX_CNTX_CFG(i915, idx) \
> >  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG :
> _MTL_C20_B_TX_CNTX_CFG) - (idx))
> > -#define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
> > -#define   C20_PHY_TX_MISC_MASK		REG_GENMASK16(7, 0)
> > -#define   C20_PHY_TX_MISC(val)
> 	REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
> > +#define  C20_PHY_TX_RATE REG_GENMASK(2, 0)
> > +#define  C20_PHY_TX_MISC_MASK		REG_GENMASK16(7, 0)
> > +#define  C20_PHY_TX_MISC(val)
> 	REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
> > +#define  C20_PHY_TX_DCC_CAL_RANGE_MASK	REG_GENMASK16(11,
> 8)
> > +#define  C20_PHY_TX_DCC_CAL_RANGE(val) \
> > +		REG_FIELD_PREP16(C20_PHY_TX_DCC_CAL_RANGE_MASK,
> (val))
> > +#define  C20_PHY_TX_DCC_BYPASS_SET	REG_BIT(12)
> > +#define  C20_PHY_TX_DCC_BYPASS(val)	(val ?
> C20_PHY_TX_DCC_BYPASS_SET : 0)
> > +#define  C20_PHY_TX_TERM_CTL_MASK	REG_GENMASK16(15, 13)
> > +#define  C20_PHY_TX_TERM_CTL(val)
> 	REG_FIELD_PREP16(C20_PHY_TX_TERM_CTL_MASK, (val))
> > +#define PHY_C20_A_B_TX_CNTX_CFG_1(tx_misc,
> tx_dcc_cal_dac_ctrl_range,	\
> > +				  tx_dcc_bypass, tx_term_ctrl)		\
> > +		(C20_PHY_TX_MISC(tx_misc) |				\
> > +		 C20_PHY_TX_DCC_CAL_RANGE(tx_dcc_cal_dac_ctrl_range) |
> 	\
> > +		 C20_PHY_TX_DCC_BYPASS(tx_dcc_bypass) |
> 	\
> > +		 C20_PHY_TX_TERM_CTL(tx_term_ctrl))
>=20
> Explain.
Yes,=20
tx[1] (SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1) field is 16 bit field.
With  tx_mics mapped to [0:7] bit , txX_dcc_cal_dac_ctrl_range [8:11]
txX_dcc_bypass  is 12th bit and txX_term_ctrl mapped to [13:15] bit.

I will add this explanation as well in commit message.
>=20
> >
> >  #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
> >  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG
> :
> > _MTL_C20_A_CMN_CNTX_CFG) - (idx)) diff --git
> > a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h index
> > 7632507af166..d88c58534148 100644
> > --- a/include/drm/intel/pciids.h
> > +++ b/include/drm/intel/pciids.h
> > @@ -765,8 +765,12 @@
> >  	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
> >
> >  /* ARL */
> > +
> > +#define ARL_TXX_MISC3_PLATFORM_ID 0x7D41 #define
> > +MTL_TXX_MISC3_PLATFORM_ID 0x7D45
>=20
> No. Look around you. Do you see a single thing like this?
It will be removed as per comment #1.

Thank you jani for reviewing.

Dnyaneshwar,
>=20
> > +
> >  #define INTEL_ARL_IDS(MACRO__, ...) \
> > -	MACRO__(0x7D41, ## __VA_ARGS__), \
> > +	MACRO__(ARL_TXX_MISC3_PLATFORM_ID, ## __VA_ARGS__), \
> >  	MACRO__(0x7D51, ## __VA_ARGS__), \
> >  	MACRO__(0x7D67, ## __VA_ARGS__), \
> >  	MACRO__(0x7DD1, ## __VA_ARGS__), \
> > @@ -775,7 +779,7 @@
> >  /* MTL */
> >  #define INTEL_MTL_IDS(MACRO__, ...) \
> >  	MACRO__(0x7D40, ## __VA_ARGS__), \
> > -	MACRO__(0x7D45, ## __VA_ARGS__), \
> > +	MACRO__(MTL_TXX_MISC3_PLATFORM_ID, ## __VA_ARGS__), \
> >  	MACRO__(0x7D55, ## __VA_ARGS__), \
> >  	MACRO__(0x7D60, ## __VA_ARGS__), \
> >  	MACRO__(0x7DD5, ## __VA_ARGS__)
>=20
> --
> Jani Nikula, Intel
