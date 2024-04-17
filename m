Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D77FE8A7BA6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 07:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AF77113129;
	Wed, 17 Apr 2024 05:00:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j4ZYUwNV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 506AC11312B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Apr 2024 05:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713330051; x=1744866051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+BeutqZ/XJbnJL4q7QUsW1jw+eYYpy7Jxe9wrryjnSY=;
 b=j4ZYUwNVty0caPR1fFtpJKvUGEQoRi+ci6aP6SMh8NBLCvEjW76TmPxQ
 1aGjiE0nJ0JK8oZNnK9XOmUs5G+CQLeeu37un/K2SK8vTz1su1DNQJ01Z
 5CeiSHTSmB8YfA0ESJ5mJhrk1UqFL6NZSXhdo05R+Rma8WcDi0W0MxHdO
 eS8nvW4KphCGJbXbvga6pQZjD0twp266llX68WZQHk6ulgzLXE3n2a/wy
 U5IyN+Cm5bb7dAQc0TTP/a4gtudIE5oHwbRSOiMZcX/cCDG8NBK5mkl1g
 dKly44C6rywqdeiP3kGyQiQvwa2pQE682eOeVRnCaobFddOLonGZaa6zH A==;
X-CSE-ConnectionGUID: 9l9pEqPOSQuLdZkLPL36PQ==
X-CSE-MsgGUID: cbzo2kFxQLy65Cog5ZL3Kg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8663049"
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; 
   d="scan'208";a="8663049"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 22:00:44 -0700
X-CSE-ConnectionGUID: kDn/9U3USPyAroJRcA1DoA==
X-CSE-MsgGUID: TlOMJkVGQWa4GIfT1T7mNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,208,1708416000"; d="scan'208";a="27293671"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 22:00:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 22:00:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 22:00:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 22:00:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ftgcL5A+0mZR3BX7lSh5ZYRHnQIvqbMSevCgM1H3wPgFO8lsCNsYIeLbtoMChmG9h9G7gZYfQdeokNZ00c9BkMAImEnSpjmUmBvnQC+YuuqQeoyeuejYbRnSfK+0HZGzH9jUh1Q5/osRc3eFOEe+KCG5Wizh96hGWZqCikOZ0Aqr9F8o7hr5ebB8Q5aP7kGeTW8HlIZ/73vyYAjcobELJoyQZxD8FMd6HXhiDnVgeAWdKw6rpYjQkA3gG6Eg9PqUDxAhJu2G8+zPeVmSKEaRMsfuenbfBaGPdnkaunLegqtDNS2lvu3n/ACbRTolvTuaSodqTuliEUpeaBirvQSj8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8CgaemJ24TMCAmQHqAcDtflL8K9X4hdiWUa4JZRp0qA=;
 b=V+jMm8GiFNSidPZ/8ox3ZnWm/sMIPTYXXv5x1NbNkY4STYJcXJbh7FOfuj287gIJN/JfJqIOP6qflV11Yn3Pmctb3F1OH+JMQd8+HMmWiLns0e4BHPPCtKCnCIg46dEBEZvTZ7d/fULvldhKA1MHqtgu6B8sUm1XJPkDJAwMip6JHci3CC9gm2JuZJAuEnRmIqX7VbE8Ir6mXVbv6dHZ7EDaISuXJCemVTfEKwyRu3/VQGoqrVFrfYNOD4q0dgwSepwUpPNclr2SGPBMznds10/UpBvdMFOm7TUsHHNk2rDFgPUhPiIbOiPjOPH8JpbmYISTlSON/xLwHJW8P/txnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB7166.namprd11.prod.outlook.com (2603:10b6:510:1e9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.28; Wed, 17 Apr
 2024 05:00:36 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7409.028; Wed, 17 Apr 2024
 05:00:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Subject: RE: [PATCH 1/2] drm/i915: Add SCLKGATE_DIS register definition
Thread-Topic: [PATCH 1/2] drm/i915: Add SCLKGATE_DIS register definition
Thread-Index: AQHaj8/tm1CRic5mOkm72FCaa91yUbFq2uIAgAENKgA=
Date: Wed, 17 Apr 2024 05:00:36 +0000
Message-ID: <SN7PR11MB6750220E8EEA2F5768D9ACAAE30F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240416072733.624048-2-suraj.kandpal@intel.com>
 <20240416072733.624048-3-suraj.kandpal@intel.com>
 <Zh51FEfyQbl0mIbY@intel.com>
In-Reply-To: <Zh51FEfyQbl0mIbY@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB7166:EE_
x-ms-office365-filtering-correlation-id: dc42faeb-225f-44a0-a7af-08dc5e9b51ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pL3n8drFngAffjUah1wCXbKbududrbzvtVqBFbXFdyDHbuf+uEZl7/CA7s2EMTyo1MWmgLoYMxDg+NuFTf0yDsocekyeTHp6mghGIwnChYPeZ9v0tTMNRAnZrqIYpPDz0S9Oy3VroRl2QlAWAoIObpGv442/YivFl713dzQzK9uZm/wKvPFckgJ9xkEbbnQebOyQsXomVuRxypEQO9/kxJHmAmY8REi1S1Ls/HfaQNohxi8KbU2Sx9f9ixHVr9NkZfMWMRVDmz//8Xr1CPfG1wy9BVLZpqTR6OEaTaAKK62D1/pM3sz6Hhl+nHlSx3jLxH6vjdlU9XDEoBhOiiNrgdrU0TIWhmtb+uKHYNTKyDEjEklRWbjssgnf4nS3Y+33ARHA8hOtR36g0aX4nVkxA2n6tLszwc6FqFWAlc+uMFJSD0EXCHS4urH9fE2kZQIY//pDtbUgR9Z2pZhcYMo6dh4kKlwY19aX03pAy8sIwEFC4sLArLnoPQVOYHpB9vg9hsPPs7yn6/jc5mZVjmILBfp3bM0nLb3N281KrhcszKpna4YT+lP+xBAiqGXoMnL9D2DNqCGggmhX59PQoRJJOBnutoLjbMuqlGZbkikNSJXZ1Y9S1AJV/xPvgoGSTSJwRsA0F7fFGolyJmdXzEna6Wl5rHj494kbjZF2ssJkjfc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?KtFwws1Bq65HuI71PVhT+5gcmToUYA79Il1prubf/l+n4czsThh01TnUp9?=
 =?iso-8859-1?Q?VPQwfc6Li2sE6uLw9wCF0OLec280rzPC4i1W9G2OdjDFEYd88lZu+rMYdj?=
 =?iso-8859-1?Q?sWhrcAfeeboed1BZuz9c8OqehPYI6RfER9fb4mVdCgsgvi/vArZSWSGrr4?=
 =?iso-8859-1?Q?rrfWvmqSPTt5/Mv/rYEJxBUWHLikVxjRbx6nCFhtil0K4X7n2FeqNX/NRb?=
 =?iso-8859-1?Q?YWJwUr8NIZP0NYzshppBZ2WtMRWZ1fC3jfgNJI9oXjLVBVH69UwYWslwue?=
 =?iso-8859-1?Q?P5v8/BPRk+uRdi+YRn66mGBiEB8uZ1QtmrAZLawxcay05zo8xRxLm26z+S?=
 =?iso-8859-1?Q?d9rNwapR2S2e35qkZLy7uRklyEPqoJfbN/+3GxEtBmftVA/JKp5uRdM5vt?=
 =?iso-8859-1?Q?nl5drIzAQ4WT1dpdxiwMsdXvyAhWxMcEjMGK+W7UCFKTTOnzWt5LXM9qlS?=
 =?iso-8859-1?Q?tyZLfb+P5oINo1yzj378mpvvO9gmWUu1oG9kscjeizRXwOgper8AD+dRPf?=
 =?iso-8859-1?Q?ltj+gY6lbu3g0ljkAJ+cJ/E3HgJDpRlHaqvY0Vx5ock9fWWsU8WwLlIPOr?=
 =?iso-8859-1?Q?kXzFSoZ+PngS1qDTD1cw1X5HhwZqKjhZdg7IAmPuPv7JKJfIcNdQ+4cizl?=
 =?iso-8859-1?Q?4zD/sssv7LaeuekrvhulgkFvbboCZfGPEiKnRV6PvpXm1oL89o6rBNe/NO?=
 =?iso-8859-1?Q?iqhF3FN64DjePq+DNOHUumOShR46Y1fNrVoeQ6Q/XK0UqohkRbWJln5ByW?=
 =?iso-8859-1?Q?jdEIXjmsVsUkllABQft6mUL4eUleMagxOtY79QZzbUbknpBXvRyAJcwW9o?=
 =?iso-8859-1?Q?B+pKYpDTy3Fz2N9/o6BXnCfU6bx4Uhc8FzIUFC3rUi9y4wDvYIRqu4kojO?=
 =?iso-8859-1?Q?1LNIisPMDU35Dgtq50WVZhI9WqcvggAw7YkyroWPVG4jsegWiJZLwlu398?=
 =?iso-8859-1?Q?geCm05xteDvqY+7Gne0mrCpYXpQR5aRO2UPcZADK3MBn3lw8i0Jb7shwBW?=
 =?iso-8859-1?Q?dHtiAPbFXwRHnh2yDXVG951EzqnEWT/Uz4b7OB7Fujr382o9K1Zg9/7gVo?=
 =?iso-8859-1?Q?xea3s7uD/todz4UVAOhoecfwM4bmZcVZkwCsqsyUxzJ22pjN7jvw0Hkrpz?=
 =?iso-8859-1?Q?UZbXIgC+gV05iCXizVEMtpAJD3bWxysqFMJdhCJFGQcP6lZo4JpSNLg86k?=
 =?iso-8859-1?Q?34m41oTAVkZKzB9C74ebmcbrPMJFz5vdnMEgUXElWcELfqhdN1vFZQUslt?=
 =?iso-8859-1?Q?WqMfQDH2dB5uLmVcNR67u+hllXcyaQ8zCrmmBNMlptYGYeiwEhw2ibZlLj?=
 =?iso-8859-1?Q?/xFIeWIAjPQ1Ywd2AGHKj7uz1EZADJ5G0akWScp5V6v1FFNYz3pmpt4n6V?=
 =?iso-8859-1?Q?1QU1RyA01mxTdiVCFs5RebW+Uq3NueqE5Ef38qpA74Nsz4AIkyomWDQDyx?=
 =?iso-8859-1?Q?BhNY1fN2+8bfZHZs2cIis0SAJh4/CqdTH3qZjQoPDAebYQlt3hOxCGm7r8?=
 =?iso-8859-1?Q?H/dGnHUQ/ZbG02nJ7HfVSJ7F6rJGia4ET/dCEilxsc1QLO6MJFTBy5g42W?=
 =?iso-8859-1?Q?r2HVpCRrO+F37etz6FhGo5+N6Q5yhFSs7bzygbin2C32ZvtGf8CJb2QXoU?=
 =?iso-8859-1?Q?Oyt4FidfbeS24YYeqLmv3PLj4YHNbYSrjV?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc42faeb-225f-44a0-a7af-08dc5e9b51ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2024 05:00:36.2413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RKBSvtaokVzjuHnvilEdx6HtlGomXHjcsIThQP6uaqqDle1lCwr3ocR1Pc+2F3LdGTkqR/Gtfb9AjIMZSlnU5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7166
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
> Sent: Tuesday, April 16, 2024 6:25 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915: Add SCLKGATE_DIS register definition
>=20
> On Tue, Apr 16, 2024 at 12:57:33PM +0530, Suraj Kandpal wrote:
> > Add SCLKGATE_DIS register and it's register definition which will be
> > used the next patch.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 3f34efcd7d6c..beec91a2f493
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -6250,6 +6250,10 @@ enum skl_power_gate {
> >  #define  SFUSE_STRAP_DDIC_DETECTED	(1 << 1)
> >  #define  SFUSE_STRAP_DDID_DETECTED	(1 << 0)
> >
> > +/* SCLKGATE_DIS */
> > +#define SCLKGATE_DIS			_MMIO(0xc2014)
>=20
> That address is SFUSE_STRAP
>=20
Hi Ville had noticed that fixed it along with Jani's other comments
https://patchwork.freedesktop.org/series/132495/

Regards,
Suraj Kandpal
> > +#define  DPLS_GATING_DISABLE		REG_BIT(29)
> > +
> >  #define WM_MISC				_MMIO(0x45260)
> >  #define  WM_MISC_DATA_PARTITION_5_6	(1 << 0)
> >
> > --
> > 2.43.2
>=20
> --
> Ville Syrj=E4l=E4
> Intel
