Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1532E9D3A65
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:14:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B27910E002;
	Wed, 20 Nov 2024 12:14:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FmspwgVF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B63F610E002
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 12:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732104844; x=1763640844;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bnRPReGuq6NqMdVThWr5gp67ERX4ZoUHpTHhJmyVXdc=;
 b=FmspwgVFLHvGBQQSQGVL1C3E4rUXDxIOniqn7Dw0cP4GK+Uu56FUvZYB
 pj+EKObA/vLsuzNoIRldICKxl/ylPzfIwqtWrzoHBr24Af8Z2EPiikqY5
 opGJ+Hu1d9oIJhawbUkq9BT1e4idF1CVcTpReGF3gELZIUR8nYhI6eqQ1
 ZEY4xHlbzziCEcXCga5SsD4Ms+cKhdNBIX47u3eSW1AJ4Dka50p9DJpmN
 vcMmlgIz57DhS3XOILxMNxqnA5TVmj1CZJYcJ42/kb5s2epXP1pK65aoN
 +lG5S7AIqInO2d47rFdEtFQfou3GbFXV+flRE9VvroHaT7dPyn+RSoy07 w==;
X-CSE-ConnectionGUID: jcMSMqCsSwiibLDDo45qHw==
X-CSE-MsgGUID: vOl3/7cPSqGVpI1U09V8FQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="43541673"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="43541673"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:14:03 -0800
X-CSE-ConnectionGUID: nMKE8TSzQFuGU1khXwk3Og==
X-CSE-MsgGUID: 9dSmQL9bTIGPogu+rBmZjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="120835040"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 04:14:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 04:14:02 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 04:14:02 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 04:14:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OskNwXR71tngxzu4socXtpZ9RL9aCgQNF9nUeYr6bdU5wI7MkqRoM0wuNkvRfsd/KNgaGvnstfM6iey4H+6vwhTG1WuXP+8YjlOwwrRMAefhmDi2MKzxahZBOB7I5sDxkWiysKfhkEAr924QG0gBXu1mH2O94uqZaajlv4mhCySZVifVKHhKM+Q0YJ7l4gNy8PQ4WxExzKQVpTNy69AUomckpOqcdk514QnzO74sgXgPZQh4sIxDFqIhLpjZ39GcrnbAKaxGTi1PoVvvvJ8B9irVEkQyl2rM5o/MTXFggWwPgjcJnbYXQZ7Qh5aNLhdpWGaEDHsXVHd1LbwXi4f5YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g//KeIcR5l6qyB3zTwUinnBFUKpOAUdFCchiKEj9oQw=;
 b=imwj2xp2lrw5U0EKN+WyigSpZUBNm/DVpkG3AA3Utv25QxmqqbsTvI8KzE9YW+liLrp+pSFeWiDUIrCcb2QISusHp08xwyO5amQF0Wx/f/Z27UdID+i1G4H1nlqupfWnv4f4eLVj7EPfg+9zAax68To6f2xJYC8H3yDM5F3b9ROqR8ev73Jh5r8Vq8vqZyp9J7NytSxmxXF4wTRgNy/N4ZXk6I6OUJsYAU3L7gB9Jni99zl33m5jvXfZbvzvHG5LQSGlT3YTZycy10pURWXOuZNWh4DgR7qqYXtaU4vKF0OyAKmYA96vGhJf0U+/L5Qr5NMsOyOuthgoMKkPpzypEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by MW4PR11MB6886.namprd11.prod.outlook.com (2603:10b6:303:224::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Wed, 20 Nov
 2024 12:13:59 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 12:13:58 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [RFC] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Thread-Topic: [RFC] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Thread-Index: AQHbNbkrwFMeRZUy60GKgL5jXHO+M7K1LXYAgAA1dUCAAR0DAIAIFB6w
Date: Wed, 20 Nov 2024 12:13:58 +0000
Message-ID: <IA1PR11MB6266E1CF3F283F4679CB539FE2212@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241113104453.1813674-1-dnyaneshwar.bhadane@intel.com>
 <87iksrb80l.fsf@intel.com>
 <IA1PR11MB6266CEFC2A73DDC75817A5F6E25A2@IA1PR11MB6266.namprd11.prod.outlook.com>
 <87frnub2hz.fsf@intel.com>
In-Reply-To: <87frnub2hz.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|MW4PR11MB6886:EE_
x-ms-office365-filtering-correlation-id: e1d7710a-965a-4c40-f4f1-08dd095cd006
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?OSEajJcOVWdvEnOHyTZG8PqnRGTz7GHB3IVMFGEvf5Z54SmCSQb7oWMB2eTj?=
 =?us-ascii?Q?X/j21pmBF7UirmgCEXOu9ixsWo55TvG9RCnvDH3TVeNL6N+i0HWZRdAGJgnu?=
 =?us-ascii?Q?kt7e/8KIi25VWIPHbVXQX3gikMGAShuppIoStJgd+DEaArw2MxrPri9b7Oe7?=
 =?us-ascii?Q?CStKkgxqJLgi1OMw+W5akN46c9/htOQbcUELIhQc6Ryrb8QLNciysNXEqqwS?=
 =?us-ascii?Q?8E3cayj6Uc6MmlZ76yxVRDr2F99XIskLq4ablp9y350ZWev4FW5k34+RN7Zq?=
 =?us-ascii?Q?taKd9HjOCn8Hxjs/2pX7iEFFYTsZ3pdMfmPklxZN1QckUSu1My1Jzvj2etxT?=
 =?us-ascii?Q?sLEEuU6/Oz5t0aNmw53hlYgwN8kmBtmcRb3l4uyEVcOBd8znZnJKgAZUCFIE?=
 =?us-ascii?Q?+NSsKK/J+rcindu7m5X+urzBlFaHPxVoLTEPS0o4lxYDvJkpwLSdaXeozgyV?=
 =?us-ascii?Q?bjZ9TwXwul4dRQ+bzMdF67+gLoYskMot3B866rAiXj/EzeYiUD8JMgQI/EBY?=
 =?us-ascii?Q?oShTWe4bcRH2mEoscrCgNkxBlNpVxB6RfXQqJrj/bQXINSRRy9SphQr/AHaC?=
 =?us-ascii?Q?do5m8626DKntUyqedZwyI/tSkCLpTyH+/6zbsz0tdHEP2ZwUmuv3Tk5lLIAx?=
 =?us-ascii?Q?BhUUkrw9UWQxTwxLf+ZIAmxAEvQXhbXMMMWPDseehzWUNhQ3LDTyqi4mIA19?=
 =?us-ascii?Q?TDMvlD87AZ8j5rIcbQ1WgzRTl6VkF7EjLWL0AgadC5mvtTIhjUmXleQDxV9d?=
 =?us-ascii?Q?FFzZoM6BjRyAFs4OniYisDTHd6KoL1NZw8VFpW/Cfporwsel5/uCLsTOdien?=
 =?us-ascii?Q?77OXVnJoiS8nxsaE/oM+sfLPLYTVw/tn+LTuUeUrsXp2SOvKcm5Tuzxvha6D?=
 =?us-ascii?Q?KoDq1WdtD488QwY+K/Ph6qUBNqY0KXfXkTzYlNq2jXRW+CiAqvsQqYTZmY8C?=
 =?us-ascii?Q?mVqm91jQiveEYFqNb37w6hHdnfqXsQp68AL0l3S6dyrGvtW54c0bMTGp9zYn?=
 =?us-ascii?Q?yIL0zxZcUzZQxjZZZ2UjdskySRTl1mrrnc3aE0TGK0QIeAvvTcnvX+D9qwuA?=
 =?us-ascii?Q?HpcWGNjHaloJKJgTU1O/XpSrPaAj+KEJ3iQERPhU+cKNPjl+ZNyH+arYZ2rp?=
 =?us-ascii?Q?6k4qb3SAipw1d7GqnGQOupn00PiAnjVe1785xMz/4RlWX7fXlIGmw5yjFs29?=
 =?us-ascii?Q?rHicwmjOg1ApoqQjEs0G/kw0Vs0H9CmZMDBDuRF896kZvnXiS8T9H6Opgttm?=
 =?us-ascii?Q?uElOhMkmmNgIo79aLnhTlK3v37dl7cA88QwuHAtLa/8go+shCsXcTetlBACU?=
 =?us-ascii?Q?sWyIb8tc3YL06Wck9AVnvNaY39pA21oxzEf42qTB9Nhj/T+D2u4TjJAlehOF?=
 =?us-ascii?Q?LUu7I9c=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q2EheNW+sLJt+vD1Vs13QuXCsCI2uVX2l++/cnH9a6WPFLh7hyq0JOOKojsE?=
 =?us-ascii?Q?y1K4R2um9h7184lQvh6NManjiVeSU7AW+RA5QmU/dQRzY0a5NbZXso5wKbZa?=
 =?us-ascii?Q?GDxPXSs8tADw9+1GVhvMeq/qXcWYlggHOdf2krRPVrCXutyPD1jP5e43fzft?=
 =?us-ascii?Q?IjP3tSHy1mdDjYbaGpHTys3YiEaZeRNcSVD8dAqIRLddZH0sTPCru5u26t2l?=
 =?us-ascii?Q?QEohzIX384vXU7YLDb4KkNc0NbN0Mul9h/lvnAzLN8HaXKz680CANQaGe2NZ?=
 =?us-ascii?Q?mb2KmE0lIB/CAK/FdpxQQLaENvYFZiK0v60YaSWwBjxCsHEOB1jf4XFPBhdn?=
 =?us-ascii?Q?I9h6P19rz235fi+L6ML5L3K4AlkR0kQOAVECQDo0ogQYLKObWo7SPFBcTZqd?=
 =?us-ascii?Q?dUx79JQr1+9tTtcKsXVs3KwljdWNh3L9PepdDVloTC15TxHsWTs6Qt8oqjjA?=
 =?us-ascii?Q?Zy2xhL4shxjIHYy4Bij5q55ZMxtQcpDbiJD73lcUhozhpT6D03aYFKhUkLRC?=
 =?us-ascii?Q?f9TkFR0ne1liIT0eBrDKejNxIKeOUip+vHpovPp20MmbfuJnb29F76NvmwVI?=
 =?us-ascii?Q?EIavkN3twEcq5A+rNEmdMnQcdEloxEDIN8dikDDJbAmiws2fUXK1x7zBE/DS?=
 =?us-ascii?Q?+cX8pS5Ws/Wg1seDa+WNQwFlA8JsSCzHDaucVwat4lGk0vg4VEduUUqzHRnS?=
 =?us-ascii?Q?cRK1EW4TtZDbxUTp+oltTVM0WXuujxmq1hGNBNZSIb22GNxeqvBnD3O0zmVy?=
 =?us-ascii?Q?QqDQNvvEIGHXrqpi8qBn1+kf45PIFtPytVTq6Y+w/JjUowtJWnF2OezA+/o8?=
 =?us-ascii?Q?qazcHkPaLMMdFxgwzymDmOIU5Xe/LPEAkyrrvf9wj742guqsm341c7FeseRa?=
 =?us-ascii?Q?k53ID35Uke1FW/vWMmSt+bFuJiugoypsz0sYAkRrGdMXg3PTJM7JD+HG4LTk?=
 =?us-ascii?Q?C2lTs+Cq+CR/84BPQ1uKQCLi8Eha/A735gDCjADUqOv22rDzaM+fXRZfirS2?=
 =?us-ascii?Q?hvG04A2YUszZl1aupLeM5d6/rXkLEOuhdUf5CRrWxEGDcnvVaP4Zh8CGUO2K?=
 =?us-ascii?Q?nFe7j+ldDKwjk+W5kdsMn5veT18PtCc+Ej8GdcNpNfAP5XEgXwHLBfypgpuJ?=
 =?us-ascii?Q?1GzR703h3PXmACsbz9eY9wA8joDvhQZhTG+FnnE+BaX7kLrPFB7LuBuEvOv+?=
 =?us-ascii?Q?/xXCpJwYnwotC4Q0ZCuvDRrOMRTJ6MoufzUCVrnNHPOHkE9lCFZLNi5i6b5i?=
 =?us-ascii?Q?p0NVt2zEi8NjGIq1R1fq5o2+OITQLv6TDyJvV11f/20lZVNBhNE28iIFi0Re?=
 =?us-ascii?Q?31zU+F9O2hkezSAizgZnpYeYHmWZhlJnFTB2O0yMTjRkPo21YbKwxOsjpRiG?=
 =?us-ascii?Q?sOimiyDTB/nG34Wx1c17DFx2qLGsYZfwZy2nLHZ1Z/GGgjqWc+qA3nKBIdRL?=
 =?us-ascii?Q?3bCUrTvrbOn78BnKI3DjB7hw/7cSq0jmmbxee8PmpiWxofxAMIDFoG2gSyHi?=
 =?us-ascii?Q?ZGDQE3ckshFMZ0SDNd5sPHhmHG/zXCK22/Ob78Px94rBEd7vVV3H2o5ZCdqY?=
 =?us-ascii?Q?LnHPKMKNJoAPCmnkPkiiB8Qk1Z+/iGfEHAnx8Js2pZ/8bLrSTxLAAQYkcyJH?=
 =?us-ascii?Q?/Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1d7710a-965a-4c40-f4f1-08dd095cd006
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2024 12:13:58.7997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bHkTAktH/Ctto4GzBLrzWPfLtfLXgMqroKO43qeua6KpriBPPMx5JlVSa5tBkpxWa99qOxJPopLUoty028A5j0XU/psH4dXru0/VfvMdCuc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6886
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
> Sent: Thursday, November 14, 2024 2:45 PM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [RFC] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
>=20
> On Wed, 13 Nov 2024, "Bhadane, Dnyaneshwar"
> <dnyaneshwar.bhadane@intel.com> wrote:
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Wednesday, November 13, 2024 6:34 PM
> >> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> >> Subject: Re: [RFC] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm
> >> value
> >>
> >> On Wed, 13 Nov 2024, Dnyaneshwar Bhadane
> >> <dnyaneshwar.bhadane@intel.com> wrote:
> >> > In the C20 algorithm for HDMI TMDS, certain fields have been
> >> > updated in the BSpec to set values for
> >> > SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1, such as tx_misc and
> dac_ctrl_range.
> >> > This patch covers fields that need to be set based on the platform t=
ype.
> >> > here for xe2lpd, xe2HPD and MTL/ARL platform.
> >> >
> >> > Some SoCs cannot be directly distinguished by their GMD version Id,
> >> > Specifically, to set value of tx_misc, so direct device PCI IDs and
> >> > PCI Host Bridge IDs are used for differentiation.
> > I will rephrase this as per new changes.
> >> >
> >> > Bspec:74165,74491
> >> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 57
> >> > ++++++++++++++++---  drivers/gpu/drm/i915/display/intel_cx0_phy.h
> >> > ++++++++++++++++|
> >> > 11 ++++  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 19 ++++++-
> >> >  include/drm/intel/pciids.h                    |  8 ++-
> >> >  4 files changed, 82 insertions(+), 13 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> > index 8ad19106fee1..018add48b8ad 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> > @@ -6,6 +6,7 @@
> >> >  #include <linux/log2.h>
> >> >  #include <linux/math64.h>
> >> >  #include "i915_reg.h"
> >> > +#include <drm/intel/pciids.h>
> >>
> >> No. Do not look at PCI IDs directly inline.
> > #1
> > Sure, I am removing this does here. The reason was that earlier plan
> > was without using sub platform macros but recently It got introduce in
> codebase.
> >>
> >> >  #include "intel_cx0_phy.h"
> >> >  #include "intel_cx0_phy_regs.h"
> >> >  #include "intel_ddi.h"
> >> > @@ -2164,9 +2165,55 @@ static void
> >> > intel_c10pll_dump_hw_state(struct
> >> drm_i915_private *i915,
> >> >  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
> >> }
> >> >
> >> > +static bool intel_c20_tx_mics_3_platform(struct drm_i915_private
> >> > +*dev_priv)
> >>
> >> No new struct drm_i915_private uses please.
> >>
> >> > +{
> >> > +	u16 devid =3D INTEL_DEVID(dev_priv);
> >>
> >> No. Do not use INTEL_DEVID() in display code. There are no current
> >> users and we intend to keep it that way.
> >
> > This will be removed as part of #1 comment.
> >>
> >> > +	u16 host_bridge_pci_dev_id;
> >> > +	struct pci_dev *pdev =3D NULL;
> >> > +	bool check =3D false;
> >> > +	/*
> >> > +	 * Some SoCs have the same PCI IDs, so differentiate them based
> >> > +	 * on the host bridge PCI device ID to use the correct txx_mics va=
lue
> >> > +	 */
> >> > +	while ((pdev =3D pci_get_class(PCI_CLASS_BRIDGE_HOST << 8, pdev)))
> >> > +		host_bridge_pci_dev_id =3D pdev->device;
> >> > +
> >> > +	check =3D (pdev &&
> >> > +
> >> (IS_HOST_BRIDGE_PCI_ID_TXX_MICS_3(host_bridge_pci_dev_id)));
> >> > +
> >> > +	return ((devid =3D=3D MTL_TXX_MISC3_PLATFORM_ID) ||
> > Condition will be change with correct macro.
> >> > +		(devid =3D=3D ARL_TXX_MISC3_PLATFORM_ID) || check); }
> >>
> >> None of this belongs in cx0 PHY code.
> > #3
> > Earlier the c20 TMDS algorithm was display version specific and
> > generic but now we need compare with platform type for selecting
> > correct value for tx_misc , tx_term_ctrl Please suggest correct place n=
ot to
> sure to place here as par of the condition below.
>=20
> The point is, this file is about cx0 PHY implementation, it's not about p=
latform
> identification. Like, what if there'll be another place that needs this?
>=20
> The right place *might* be intel_display_device.[ch] but it might be
> intel_quirks.[ch] too. Or it might be a new file under soc/. Depends.
>=20
> Is there really no other way than looking at host bridge?
There were the ways i.e. Adding flag to VBT or Reading SoC MSR or Using oth=
er than i915 PCI id=20
that is differentiating SoCs. After a discussion it is decided to use compa=
ring host bridge PCI id=20
when the SoCs having the same GMD version and drm device PCI id.=20
>=20
> >
> >> > +
> >> > +static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state
> >> > +*crtc_state) {
> >> > +	struct drm_i915_private *dev_priv =3D
> >> > +to_i915(crtc_state->uapi.crtc-
> >> >dev);
> >> > +	u16 tx_misc;
> >> > +	u16 tx_dcc_cal_dac_ctrl_range =3D 8;
> >> > +	u16 tx_dcc_bypass =3D 1;
> >> > +	u16 tx_term_ctrl;
> >> > +
> >> > +	if (IS_BATTLEMAGE(dev_priv)) {
> >> > +		tx_misc =3D 0;
> >> > +		tx_term_ctrl =3D 2;
> >> > +
> >> > +	} else if (DISPLAY_VER(dev_priv) >=3D 20) {
> >> > +		tx_misc =3D 5;
> >> > +		tx_term_ctrl =3D 4;
> >> > +	} else if (IS_METEORLAKE(dev_priv)) {
> >> > +		if (intel_c20_tx_mics_3_platform(dev_priv))
> >> > +			tx_misc =3D 3;
> >> > +		else
> >> > +			tx_misc =3D 7;
> >> > +
> >> > +		tx_term_ctrl =3D 2;
> >> > +	}
> >> > +	return PHY_C20_A_B_TX_CNTX_CFG_1(tx_misc,
> >> tx_dcc_cal_dac_ctrl_range,
> >> > +					 tx_dcc_bypass, tx_term_ctrl); }
> >> > +
> >> >  static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state
> >> > *crtc_state)  {
> >> > -	struct intel_display *display =3D to_intel_display(crtc_state);
> >> >  	struct intel_c20pll_state *pll_state =3D &crtc_state-
> >> >dpll_hw_state.cx0pll.c20;
> >> >  	u64 datarate;
> >> >  	u64 mpll_tx_clk_div;
> >> > @@ -2176,7 +2223,6 @@ static int
> >> intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
> >> >  	u64 mpll_multiplier;
> >> >  	u64 mpll_fracn_quot;
> >> >  	u64 mpll_fracn_rem;
> >> > -	u16 tx_misc;
> >> >  	u8  mpllb_ana_freq_vco;
> >> >  	u8  mpll_div_multiplier;
> >> >
> >> > @@ -2196,11 +2242,6 @@ static int
> >> intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state *crtc_state)
> >> >  	mpll_div_multiplier =3D min_t(u8, div64_u64((vco_freq * 16 +
> >> > (datarate
> >> >> 1)),
> >> >  						  datarate), 255);
> >> >
> >> > -	if (DISPLAY_VER(display) >=3D 20)
> >> > -		tx_misc =3D 0x5;
> >> > -	else
> >> > -		tx_misc =3D 0x0;
> >> > -
> >> >  	if (vco_freq <=3D DATARATE_3000000000)
> >> >  		mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_3;
> >> >  	else if (vco_freq <=3D DATARATE_3500000000) @@ -2212,7 +2253,7 @@
> >> > static int intel_c20_compute_hdmi_tmds_pll(struct intel_crtc_state
> >> > *crtc_state)
> >> >
> >> >  	pll_state->clock	=3D crtc_state->port_clock;
> >> >  	pll_state->tx[0]	=3D 0xbe88;
> >> > -	pll_state->tx[1]	=3D 0x9800 | C20_PHY_TX_MISC(tx_misc);
> >> > +	pll_state->tx[1]	=3D intel_c20_hdmi_tmds_tx_cgf_1(crtc_state);
> >> >  	pll_state->tx[2]	=3D 0x0000;
> >> >  	pll_state->cmn[0]	=3D 0x0500;
> >> >  	pll_state->cmn[1]	=3D 0x0005;
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> >> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> >> > index 9004b99bb51f..b2417c58ae20 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> >> > @@ -9,6 +9,17 @@
> >> >  #include <linux/types.h>
> >> >  #include <linux/bitfield.h>
> >> >  #include <linux/bits.h>
> >> > +#include <linux/pci.h>
> >> > +
> >> > +#define HOST_BRIDGE_PCI_DEV_ID1 0x7D1C #define
> >> > +HOST_BRIDGE_PCI_DEV_ID2 0x7D2D #define
> HOST_BRIDGE_PCI_DEV_ID3
> >> 0x7D2E
Does this define to be included in include/linux/pci_ids.h? is it good ?.

> >> > +#define HOST_BRIDGE_PCI_DEV_ID4 0x7D2F #define
> >> > +IS_HOST_BRIDGE_PCI_ID_TXX_MICS_3(id)  \
> >> > +	(((id) =3D=3D HOST_BRIDGE_PCI_DEV_ID1) || \
> >> > +	 ((id) =3D=3D HOST_BRIDGE_PCI_DEV_ID2) || \
> >> > +	 ((id) =3D=3D HOST_BRIDGE_PCI_DEV_ID3) || \
> >> > +	 ((id) =3D=3D HOST_BRIDGE_PCI_DEV_ID4))

> >> >
> >>
> >> None of this belongs in cx0 PHY code.
> > Is intel_display_reg_defs.h is good place ?.
>=20
> No. There's nothing like this in there. And you shouldn't make all the ma=
cros be
> about "TXX MISC 3". Identify the platform in one place, in a generic way,=
 and
> use that information in another.
Yes, updating it as the generic way.
>=20
> Again, what if there's another part of the driver that needs the same
> identification? It would be really odd to call that "TXX MISC 3".

>=20
> >>
> >> >  enum icl_port_dpll_id;
> >> >  struct drm_i915_private;
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >> > b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >> > index 582d6277d20c..b586e569434f 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >> > @@ -279,9 +279,22 @@
> >> >  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG :
> >> > _MTL_C20_A_TX_CNTX_CFG) - (idx))  #define
> >> PHY_C20_B_TX_CNTX_CFG(i915, idx) \
> >> >  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG :
> >> _MTL_C20_B_TX_CNTX_CFG) - (idx))
> >> > -#define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
> >> > -#define   C20_PHY_TX_MISC_MASK		REG_GENMASK16(7,
> 0)
> >> > -#define   C20_PHY_TX_MISC(val)
> >> 	REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
> >> > +#define  C20_PHY_TX_RATE REG_GENMASK(2, 0)
> >> > +#define  C20_PHY_TX_MISC_MASK		REG_GENMASK16(7,
> 0)
> >> > +#define  C20_PHY_TX_MISC(val)
> >> 	REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
> >> > +#define  C20_PHY_TX_DCC_CAL_RANGE_MASK	REG_GENMASK16(11,
> >> 8)
> >> > +#define  C20_PHY_TX_DCC_CAL_RANGE(val) \
> >> > +		REG_FIELD_PREP16(C20_PHY_TX_DCC_CAL_RANGE_MASK,
> >> (val))
> >> > +#define  C20_PHY_TX_DCC_BYPASS_SET	REG_BIT(12)
> >> > +#define  C20_PHY_TX_DCC_BYPASS(val)	(val ?
> >> C20_PHY_TX_DCC_BYPASS_SET : 0)
> >> > +#define  C20_PHY_TX_TERM_CTL_MASK	REG_GENMASK16(15, 13)
> >> > +#define  C20_PHY_TX_TERM_CTL(val)
> >> 	REG_FIELD_PREP16(C20_PHY_TX_TERM_CTL_MASK, (val))
> >> > +#define PHY_C20_A_B_TX_CNTX_CFG_1(tx_misc,
> >> tx_dcc_cal_dac_ctrl_range,	\
> >> > +				  tx_dcc_bypass, tx_term_ctrl)		\
> >> > +		(C20_PHY_TX_MISC(tx_misc) |				\
> >> > +		 C20_PHY_TX_DCC_CAL_RANGE(tx_dcc_cal_dac_ctrl_range) |
> >> 	\
> >> > +		 C20_PHY_TX_DCC_BYPASS(tx_dcc_bypass) |
> >> 	\
> >> > +		 C20_PHY_TX_TERM_CTL(tx_term_ctrl))
> >>
> >> Explain.
> > Yes,
> > tx[1] (SRAM_GENERIC_<A/B>_TX_CNTX_CFG_1) field is 16 bit field.
> > With  tx_mics mapped to [0:7] bit , txX_dcc_cal_dac_ctrl_range [8:11]
> > txX_dcc_bypass  is 12th bit and txX_term_ctrl mapped to [13:15] bit.
>=20
> But we only describe the register bits and bitfields here. We don't add m=
acros
> that group a lot of stuff together. You do that where the information is =
used.
>=20
Understood now, I will use this direct define wherever they are used.

Dnyaneshwar,

> Pretty much imagine that the register macros could one day be automatical=
ly
> generated, and you'd only have the register fields here, nothing else.
>=20
> BR,
> Jani.
>=20
> >
> > I will add this explanation as well in commit message.
> >>
> >> >
> >> >  #define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
> >> >  		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG
> >> :
> >> > _MTL_C20_A_CMN_CNTX_CFG) - (idx)) diff --git
> >> > a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h index
> >> > 7632507af166..d88c58534148 100644
> >> > --- a/include/drm/intel/pciids.h
> >> > +++ b/include/drm/intel/pciids.h
> >> > @@ -765,8 +765,12 @@
> >> >  	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
> >> >
> >> >  /* ARL */
> >> > +
> >> > +#define ARL_TXX_MISC3_PLATFORM_ID 0x7D41 #define
> >> > +MTL_TXX_MISC3_PLATFORM_ID 0x7D45
> >>
> >> No. Look around you. Do you see a single thing like this?
> > It will be removed as per comment #1.
> >
> > Thank you jani for reviewing.
> >
> > Dnyaneshwar,
> >>
> >> > +
> >> >  #define INTEL_ARL_IDS(MACRO__, ...) \
> >> > -	MACRO__(0x7D41, ## __VA_ARGS__), \
> >> > +	MACRO__(ARL_TXX_MISC3_PLATFORM_ID, ## __VA_ARGS__), \
> >> >  	MACRO__(0x7D51, ## __VA_ARGS__), \
> >> >  	MACRO__(0x7D67, ## __VA_ARGS__), \
> >> >  	MACRO__(0x7DD1, ## __VA_ARGS__), \ @@ -775,7 +779,7 @@
> >> >  /* MTL */
> >> >  #define INTEL_MTL_IDS(MACRO__, ...) \
> >> >  	MACRO__(0x7D40, ## __VA_ARGS__), \
> >> > -	MACRO__(0x7D45, ## __VA_ARGS__), \
> >> > +	MACRO__(MTL_TXX_MISC3_PLATFORM_ID, ## __VA_ARGS__), \
> >> >  	MACRO__(0x7D55, ## __VA_ARGS__), \
> >> >  	MACRO__(0x7D60, ## __VA_ARGS__), \
> >> >  	MACRO__(0x7DD5, ## __VA_ARGS__)
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
