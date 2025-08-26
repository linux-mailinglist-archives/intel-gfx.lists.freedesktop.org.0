Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F08B3724A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 20:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B609610E3A1;
	Tue, 26 Aug 2025 18:34:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ks7W0wIe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E1DF10E3A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 18:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756233271; x=1787769271;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j5P5bQFqIS68Fd5ocDHPbETCdk4b8zPbyM+gL+DR1+E=;
 b=ks7W0wIeev/EUUfNKXjbs4JNEBLuhIH3Ta9OXiHEYd/eZoV6wnqsjpS8
 MrlgQRExrtuivEquBFJiwJLjGJJFQx/hTgns12aXBoQg1mhVHCudf1/Jm
 8ZzOn61T6t44GTj4iAqDERzjequVmsH2rvzINZ5JAxX/4UMJrdT4/MVz8
 7zvFOEoyKvQHNH+wcDx5GECNSJWGk74UVNcf0M2wYzX/SmtA5KmB/vdiV
 PXBFC3+Va93vMjBTdqlI2IDCkcMygjtG2VNNMO1jDxQQ6lIJlKNSkuRZ4
 8C3vhImIaNBjOJhJ0yBVSTuFfAeNaUb043gzhgjfaGjHBUDVRl9IFh+hn w==;
X-CSE-ConnectionGUID: ZuSoilW8TCqtXiPvR2Iufw==
X-CSE-MsgGUID: siqNAqsdT7eety+Ck7UvuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="81075240"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="81075240"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 11:34:31 -0700
X-CSE-ConnectionGUID: 7uJ3QmbkSsWVS3cXRwFTvg==
X-CSE-MsgGUID: VvHEshXSSquU6P+CLJqgiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="173801782"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 11:34:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 11:34:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 11:34:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.81)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 11:34:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rYVPL56YWs/Ajzk7in+54Rwbd7C3PcZN1/7rlNpUvLvLO5p0pdKhvMKG+rprcOr/kgFb0oVqy2OadK/vex9key8Ezhv9MfQcIKWmLNv78IlcbaobKVFzWFKYmSrGBAbAssjnhuaqjT1i0p2H/kkyIm13qJFk8Qnczg+hqSOgMKuD3aggmZCUKbm3A9tlhtBkipvxxrXvHIo2qKFn6TlaWuV0HIbYll7xRPphgQ+IeW06ICywXt+AknPPPXqOl0vaPHPE7o46KnH0bim8gjnEW+Lz/VoTGSutwRD9UmFqcrpfn46H292PZIUuh1aIkcULQ6MLPjunD1scQ0H7GqPGOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V1qKbGOmI99l/MO0X+agXn9Tts6eVMJF4Od8csmMiso=;
 b=XwLSLwRnqzm2w2NchE5MM0Em9OyW4tgNC1kU/A3VePsY1kXE5JuGjEk3y52wZbzmNSRXyFreWW+s1LYjxzbSulHLKmrmP0K5TggJSB4GjexABl2Z4NObCv5DAC28kvi/4uDuse2heIYlewWF8S7zwp+dZ/+U7ZLNH82K/LuuCu4GISQlIbg6MdN5JM/Cl3C3y848ZukTDAqRvTLli0LuOJ67Xq+GF3AJDuD2TOyAIybbFABu1xqVng/hiKbU0aDs/0Wc86WAqdQI8Z4fgZFrSdp6he5sG4bWXQrIMR9EMLCaDHDAxn1DGUoFtSx6/g6/U8MN7AFsXtep0vGeHVnbYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Tue, 26 Aug
 2025 18:34:27 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.9052.017; Tue, 26 Aug 2025
 18:34:27 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Harrison, John C" <john.c.harrison@intel.com>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 2/2] drm/xe/xe_vm: Add error injection support to lock and
 prep
Thread-Topic: [PATCH 2/2] drm/xe/xe_vm: Add error injection support to lock
 and prep
Thread-Index: AQHcFqBBmha05ixlcEuzVPq3CZQWW7R1OkSAgAAFUGA=
Date: Tue, 26 Aug 2025 18:34:27 +0000
Message-ID: <CH0PR11MB544474E157B89A5A4D6F5B5AE539A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250826154352.90434-4-jonathan.cavitt@intel.com>
 <20250826154352.90434-6-jonathan.cavitt@intel.com>
 <aK32/xgF+Lmvafj4@lstrano-desk.jf.intel.com>
In-Reply-To: <aK32/xgF+Lmvafj4@lstrano-desk.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM4PR11MB7757:EE_
x-ms-office365-filtering-correlation-id: e92420a6-eef6-40ea-21aa-08dde4cf3003
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?qFExKtRPPVRolmK7O6iETSjlU0Nh/dejUaedI5JzGk/ahjvyYX+U5l/btxzS?=
 =?us-ascii?Q?C4iYrixolNP7LebnzYv0fj6T0yKfyf9nz7X0ecr8tbQjmtfqVjpUwj4Gn38k?=
 =?us-ascii?Q?8tZMIKYFQ7iDgLrooxkKGpKfxtFdfKdNVyepF4qbscA8l6diYkXBT9FJCh2s?=
 =?us-ascii?Q?wvo4izkrVqOkefdOBZ4CBKCgjCMHPzEJOytLPBWD13CBmN6QCJBiMJAxD7l7?=
 =?us-ascii?Q?IincDQIwUnFScv+870k4U/Zq7g+PqKXY4X00y/mVzJt1hEHTg+lL27h7EyCE?=
 =?us-ascii?Q?adsy7KtU9/Rmnm9EXJNIPYBA+rMiQsVsCtWTxghJ6l+egM6Yl9JJM00ubV7T?=
 =?us-ascii?Q?Ib5lHNx42cUGyJhhpzQMz46PLqQ+7KnhlSjsG2/ALmVW90TaiUeW09EuvMEI?=
 =?us-ascii?Q?muushbwso38o0eBFvXdf3+nGQ4XcRmoagyWn1/PqVPdeGjCxMKrpQ7B6Mcpi?=
 =?us-ascii?Q?0JzHbAKkj8ptCRouyBVSzKyIvfXg0wfCUDJZBZEqcMKCKVHgF2XI9ow6jcqV?=
 =?us-ascii?Q?0eczJ/jCIEygaOywzBzSmltAW27fBG/XAN28mp9jAkcdBHsRVK2Vgn3qrRt3?=
 =?us-ascii?Q?eHRDqcgNZJR5TwzMV/gq9Yy0Pdr6bY+gMbeh/v//oyFjmVTJoexmT/aZiUuc?=
 =?us-ascii?Q?vxdeaqq4OgLyvWhz7ZtOpFRJrTPGuoCWfp7RNBfLhV7335Ath2wBbdenhWsw?=
 =?us-ascii?Q?I5itXKmZWuRtB/a6FLLhnvAMLyHliZdtI5hlkCU0NNiavsNlrGiVzWEL/NiS?=
 =?us-ascii?Q?l7sXbhdcM3eiM+qHsQ6Df9ftRoCqJargR7hVp0gUT354Nhms2GAVKkw/Vm93?=
 =?us-ascii?Q?/+TLq2FaG9s9YqhPOxX4G2dotNEpX4JT7ec7yJ+4AFRjSgpsKdzBN/YmGt6U?=
 =?us-ascii?Q?4fDO9uD+vy50118aTisxF3BsryUwNbJZQsdcwy9MZV0ZovwJfwYfnHSc18rg?=
 =?us-ascii?Q?3K/HZLwGcfER3FLcS2tCDv6oJT5OnQVK0j23DlEc02+3QV+sG35UZOXpgtkk?=
 =?us-ascii?Q?b4GzbnBQqVdFEHt3rywev2g/GlLQDw80DFkA0EKXRg7++qXYEOzuE0+UBR/f?=
 =?us-ascii?Q?knZi4LKxE0KQDF5JxpOLSzqBoBHIaTKeRti/XOWa5i9zETC8+FY+iil5Aq+3?=
 =?us-ascii?Q?IdGnotdM8guNVFLrLO3lP0oxR+G20LaNGTTeO2vqkZFoTQNpGNon1WVbdMaL?=
 =?us-ascii?Q?+Aqu2gCHMQzc8wkF4Jwmel6I4QTBV7gjGZe+9y/onLti4/kwY3RWniU8N5Xy?=
 =?us-ascii?Q?0RZLbk8jQqJY8i8w3PJoEqAyWsNBiT6jg3n+6Gv+4MJxxYUdmolYXiFEVt8q?=
 =?us-ascii?Q?Zeu1b5qqsLKjY1j9IVRRE5ghaYXHolFqL1HEIO63UGLGxKaapfx2PH+R5Lyk?=
 =?us-ascii?Q?d2nsdhdgPpKi2z44u30IVxIyl0IulX+mgyqHqlCYss722y1O/hkv4juYS/bD?=
 =?us-ascii?Q?1zXhE/aaCsrJGENfcLciZXqM5otjVc6ECINNWU1eIFR3x8OZ6QkwNPUiKfJ8?=
 =?us-ascii?Q?jW1vduQgRAnEURA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9IwrVI1rHR7CX4ssEjWInmjUUwX+/9/ngz+UsmxiAlb48Ipzzpg3sA0xJdov?=
 =?us-ascii?Q?gfTasTUgJz5Bz3ygyNCLlh1r2xLNJ6j8Y3bk0P82qd7ySpoSlLraR+wA/YLg?=
 =?us-ascii?Q?Ba1iygMxzxokm3/H/+g2V2ku8R4q6zJtqSD99/CCTRCj00BuEkt6pOsRPpO+?=
 =?us-ascii?Q?xPcZRy1kQxao7rRfvN802x9eTpfXmeT3mPWPdh5/2f7O9yayzu9F1X6PcvV7?=
 =?us-ascii?Q?En7pssXIiM9z0mg82yQMrnjFEn9wxWUlXSRrg9DkMAYz2tZHRJ2bvCQGj09p?=
 =?us-ascii?Q?oONTqx3uCkaWghI7RxUVpLohT6LNvNlTSWE+sLhVSEESyAtBON1hPmWaEAV5?=
 =?us-ascii?Q?2RVB6BnoSIOxRUD87qzQr7d8K9nzvmZZ7VeY9Xlikr40Zc/37NFNYvx+4tW6?=
 =?us-ascii?Q?JpnHteXHcyNJbcxk9ZzewzZLYJVF6HFyaYF/RwyXeKYkV/7tNUj9tbjjpvGb?=
 =?us-ascii?Q?2ChO1yGf5eL/S8ZHAH0gXiRhGzmL5y4Y4y+H6KZRqG2kzINwESpfnPMyZoQv?=
 =?us-ascii?Q?02oO9b9P4kWyMmdgfr9/3Og/5GFbzlB+tzPNxfUy/kJ5GB4yFtXk+g6D5Gko?=
 =?us-ascii?Q?QBkLff/cURcZR3YLxHO4DSaXhG+3yINleHJ6bm0SxQA7pvmSdXP+v/DB41cO?=
 =?us-ascii?Q?8vce3Q7QzANT95oRE0GYKHN5W+TUiNxvAlDxag8Z+Qc/ZYNq38GqQkFapY1N?=
 =?us-ascii?Q?kIIu5uf4wkP9Q44ERxoVRhg+Ab/V3ivJtoawVLyGR+6u6I3XdL4dfRMcF6d7?=
 =?us-ascii?Q?pHjMrMH5U/voTgDUNBDyug7tC1zmQHPPRlGLiyIh5qm1rHxmJsaEf9s32Cw0?=
 =?us-ascii?Q?lA2Ek3RZERWeNvBCHcXh2IPtKe32+jnG60jcXZO34VxkBiVYa47DTH55eEKc?=
 =?us-ascii?Q?o3Eubo53p+2iyN7mozJ9nAkE360zDYiAxRXEQOnTvPjwnz6CxwzwG874T/Z3?=
 =?us-ascii?Q?+j+tTCM5JgEbk9FMV75Bzoto6wKl2UMDR8BAeFN0ssr0c/OI3ZuiooVzQVVi?=
 =?us-ascii?Q?JZBUaav7RaR6IqgqDti9E/AnOhDWvhZnkWjtx4bs8biNcvhrclZ6cwc/t5B0?=
 =?us-ascii?Q?F8ueQOTrdxUvCjIS/qQQFgaufxfZ4VqdLXJIE9XJIujD1ofke1ogble+FxbC?=
 =?us-ascii?Q?psBuEW+a4q5NuNIkhKDbFIwB47rIEOhmxIHDZyGT8GbyQz4/C5NCbCLvygZa?=
 =?us-ascii?Q?0sQ6F8fjVYDRrm5NS9llZkZEw/uor2kwvl52A95SouFLhloA54voNusPQYIV?=
 =?us-ascii?Q?xizZwvcQ9MemhYRJN/fOFKsduXZxv3RtL6unp/EWCfRNvCCAU0Syl1nQUPBR?=
 =?us-ascii?Q?xb1gHuzDNcD4yUFWp7vJjaoKMlcfXoR1DqbMGu44CaaFHv+vOXp8IsISYTfc?=
 =?us-ascii?Q?3DSxms/wencEoffcM/F7uwn1Ev/Fa9wAVu3RsdL8nyBLp+uvKT9OSfdrspBc?=
 =?us-ascii?Q?0a+2k29Ai9NGoA05JmZJiDNL5U3A0OKM2WLmCGOqMeJ6If6Rzt9w8xAtFqkt?=
 =?us-ascii?Q?JzU8Nmv386Gtt64jGpJISfbUOotQ38JcwlB9Or1zRGP4LCvnmeV/bP/pxXtM?=
 =?us-ascii?Q?1/dO1yGzm5vSVTIRL4s1Xv3aeQE1Qx6IUJ+oCbKJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e92420a6-eef6-40ea-21aa-08dde4cf3003
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2025 18:34:27.1163 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FvL6a88l8tH52GZ9Wt/AtAwwbkQQWHEq2rRlAwAU4D/Lo2ksPn7A26X0r8DrcvFrQ66HDxGrQXlhGgPM+4c0mM4swiIWh+rpwlMxlUVghY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7757
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
From: Brost, Matthew <matthew.brost@intel.com>=20
Sent: Tuesday, August 26, 2025 11:04 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Gupta, saurabhg <saurabhg.gupta@intel.=
com>; Zuo, Alex <alex.zuo@intel.com>; Harrison, John C <john.c.harrison@int=
el.com>
Subject: Re: [PATCH 2/2] drm/xe/xe_vm: Add error injection support to lock =
and prep
>=20
> On Tue, Aug 26, 2025 at 03:43:55PM +0000, Jonathan Cavitt wrote:
> > Add error injection support to the function
> > vm_bind_ioctl_ops_lock_and_prep.  This necessitates marking the functio=
n
> > as noinline.
> >=20
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Cc: Matthew Brost <matthew.brost@intel.com>
> > Cc: John Harrison <john.c.harrison@intel.com>
> > ---
> >  drivers/gpu/drm/xe/xe_vm.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
> > index 1a8841116e40..e527c90b8c33 100644
> > --- a/drivers/gpu/drm/xe/xe_vm.c
> > +++ b/drivers/gpu/drm/xe/xe_vm.c
> > @@ -3201,9 +3201,10 @@ static int vm_bind_ioctl_ops_prefetch_ranges(str=
uct xe_vm *vm, struct xe_vma_ops
> >  	return 0;
> >  }
> > =20
> > -static int vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
> > -					   struct xe_vm *vm,
> > -					   struct xe_vma_ops *vops)
> > +static noinline int
>=20
> Ideally in [1] we'd have something like this:
>=20
> #ifdef CONFIG_FUNCTION_ERROR_INJECTION
> #define error_injectable noinline
> #else
> #define error_injectable
> #endif
>=20
> That might take sometime to get through, but in the meantine can we
> define something on the Xe side for this?
>=20
> [1] https://elixir.bootlin.com/linux/v6.16.3/source/include/asm-generic/e=
rror-injection.h

In the short term, I think something like what's done with the xe_is_inject=
ion_active function
in xe_guc_ct.c would work.  Let me try applying that.

>=20
> > +vm_bind_ioctl_ops_lock_and_prep(struct drm_exec *exec,
> > +				struct xe_vm *vm,
> > +				struct xe_vma_ops *vops)
> >  {
> >  	struct xe_vma_op *op;
> >  	int err;
> > @@ -3220,6 +3221,7 @@ static int vm_bind_ioctl_ops_lock_and_prep(struct=
 drm_exec *exec,
> > =20
> >  	return 0;
> >  }
> > +ALLOW_ERROR_INJECTION(vm_bind_ioctl_ops_lock_and_prep, ERRNO);
> > =20
>=20
> We absolutely need the same injection points which are removed in patch
> #1 + an IGT with the same coverage. Please add similar points. VM binds

They're already present.

> are a deep software pipeline that can be unwound at any point of
> failure. Different injection points trigger various unwind flows that
> need to be tested. It took me a long time to get this right, is easy to
> break, so we need good testing in place.

AFAICT, the test xe_vm@bind-array-conflict-error-inject test only exercises
the vm_bind_ioctl_ops_lock_and_prep function.  I can add additional points
to test in the test file if that's what is desired.
-Jonathan Cavitt

>=20
> Matt
>=20
> >  static void op_trace(struct xe_vma_op *op)
> >  {
> > --=20
> > 2.43.0
> >=20
>=20
