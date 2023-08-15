Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CCA77C889
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 09:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4186D10E0C6;
	Tue, 15 Aug 2023 07:29:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A778510E0C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 07:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692084569; x=1723620569;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sZXq4KlT9IIif/mNPfCYAIEwDMv8SPczEJ9NVfXIEUE=;
 b=JZK0n7QLm08yroG31qne3OUOzb621rtf8zJvkuAd4CGNUOY4/MCXtwIp
 CVRp1XGtMRqZxSM+/LkLHBfETYBiunHr0X/gTKv59Kmi/re41V74z6sfs
 3u6dRECO1KXGAdmnx89ytPFOV/FzOwj2rCldUE/KJfPyxzeKSHwJpUkkb
 UlZ5aeadO7YBvIykApH7e4/8+0fnEJ5tb5pGnjLfy99fJ+MBUmXqpHzl4
 OOsEb4KtAMYyb/U6AZwvMaJ+T5asNhviUYUQyeLJnY+T7C5gXj+gXqO5E
 msmL8XSBjALMFlRkclJwWP4WujJjxAzO1XyIGocEqul8b/qDoTcFiuYF1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="369694492"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="369694492"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 00:29:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="733753349"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="733753349"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 15 Aug 2023 00:29:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 00:29:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 00:29:15 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 00:29:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fYMSBQPdI5XU9UVFcUxZnUtoavODG2NZI4YEbym8m1MgOkNLi/Jhjm3ZUUCiT6DrJYyV2anZDKg0NQ9xyEQ9h9ARD+cmUsCUWueRhVIZ7eNoQCmpqoj0gWItX9xWz0WIQ+Ah2fF2QvUVzChY28oNgoZW5sgSt3AGRAm7ZRusjoasOYxF3LeTEa9rGtqf7od5qNUe6MViWl2UsVOeV0mM7Y0fhfu/8F1eeA+2wV6DdQMhysneDUM+oGkdfowfz4fNEeZmaclTxdnNhluWCq003zOA9heukcIX8dmWmTup9no+ymXj5gusqssxBE/J0k7dXfa/q/rKrMqzQKRzX+KSIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yz2CGthTBjobxT5r6+rL6sbzk4OsDWX89bcfp9kVKvM=;
 b=BKU9DFsuazASoPJppnOPevUuZks1GvBvp4T4ONtbZCRNapcZVD9P9XKDzFH5UAHtxrsTQ9uH7t8gaxd4JsdbvhnFVm9PA28eWdsDqewSOOgEBFQW0Z3HKSfBdQCn00HO938Y992w1EkTJlK2L7k9Ovz6+tal/I/G393ci0ypE7iK+NhWlzB9spMLKj4VruJai3wCW/rjXdCUCBInkk/iS/bbRjcjUPJyoWpQL3UNwp9fJTYT5j7fb1OHnh3ecgogibizEmTEusugbKXLKtXVEvAfDagdidfpkMVS01IJKVDreVNIO8Ik4yaRpK3nz1p4ULra3iJhn5yhkjm34PkzRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH8PR11MB7072.namprd11.prod.outlook.com (2603:10b6:510:214::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Tue, 15 Aug
 2023 07:29:12 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241%7]) with mapi id 15.20.6678.025; Tue, 15 Aug 2023
 07:29:12 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH] drm/i915/dgfx: Enable d3cold at s2idle
Thread-Index: AQHZzp8nh97MPuUZuESUCFZRpLeIt6/p9HWAgAECILA=
Date: Tue, 15 Aug 2023 07:29:12 +0000
Message-ID: <CY5PR11MB62111994966D89A3623DACC29514A@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230814110418.1557979-1-anshuman.gupta@intel.com>
 <ZNpQS0kVEslsVNg2@intel.com>
In-Reply-To: <ZNpQS0kVEslsVNg2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH8PR11MB7072:EE_
x-ms-office365-filtering-correlation-id: 73eb1cb0-ffef-4f67-ff1a-08db9d61528c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P/5DliCDXEdR2InVAV2RyQileIkvXa/5MaRqvnzs/dNZE+adRqQQCLvmaHcaSo+C59OZ6vdzcHugb6wN7lfX0toT9lkY9yIKus1ZwL88DugaFRJEL7x/KHqnBeKwjUtB69mq9scn63x0VW/3ZK2eUOT0c657k31m2pqtebYd7Xseco+OsxHrEJTZzNyiKuVBLt+u3BnjvmkQc5bUMTQaYYLBBrjhcqDqGBjmDbHSVxIK8CHaalr53HdKjTy+ALrLEs/xrutS/urfOHwZ3h8EZJ0ZbnN1oC6BTtBSVg9XyFpBywvLtte49Vak2vQ0u+AtlultJ9GJQJ2qpfYFOXLYYzErcu/LxVF2rLtN350vwWvgL7cTwO8T2ATkHCztwy9G0hadPEYdqBPHjDRmJHoEzaSWZn9retYjb/StK1onV9c3UbXqXEgNT6uAClUQfLnwTzmb1ipV2Ba88aCZYqTX+FJ+G6WKtN5QVJz8yjFhWq//D1vnbaoIod8bqzXqbfqVFe4/7Biie9GJ5cHytye/qBiNNs4HAvBQaQ/BZcERQEUY9kPu8ZwttKT1D+W9nSPDRncLYlVGRQigB7L1cykCV63/8m5i9skVlMRpZd/AV0sZMxdTO5W7ezvPiuPUrwfjt98xN0ttQxnSS73lEINWvA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(376002)(136003)(396003)(1800799006)(186006)(451199021)(7696005)(9686003)(71200400001)(966005)(38070700005)(38100700002)(33656002)(122000001)(82960400001)(86362001)(83380400001)(26005)(6506007)(478600001)(2906002)(107886003)(55016003)(54906003)(53546011)(52536014)(41300700001)(8936002)(66556008)(6862004)(8676002)(64756008)(66476007)(66446008)(5660300002)(6636002)(76116006)(66946007)(4326008)(316002)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sBIw1+JQVCuu9YEUhM2kng96UQQVaO47cIRKKTvI9Pt6i9NjsuPW3GNXd+ah?=
 =?us-ascii?Q?xIg6aeskCt0ln49vYEjVJE32h7SEzyM3MuxAzLhZi8KO2+Q5WdMaiZh6Z7A6?=
 =?us-ascii?Q?TzWLeiwWei/+B4KNScpOGRUdYjIgTkDesGY9mzsdTUrcQ4ezvEvCnnsFDYu3?=
 =?us-ascii?Q?ME87L9jrQYNrhk8DS2iqPkb8MUgBoR8gplg2JGjMh/Bi0M8LWLZG8La4Jc/E?=
 =?us-ascii?Q?Jw23iroxjwwYLuhFM0fYGNKTJgsuz5khR1yY/PpUzG+cfkvSFQQIxA6mgRJB?=
 =?us-ascii?Q?F6cPP/b8SwtucdcwFlPBsIFwn185eZfhDBtI0zuoKVee34mTGORkab4AVCfl?=
 =?us-ascii?Q?1vm3vGLBx+I93REfV7S4JVP6ZL2cvs6iFUGgc/tc9DvlUZO2uTFPt2yxmH5S?=
 =?us-ascii?Q?mohvzLo9Y8reBG8dxj9JjRdkcVlVHye0KR1CIvZ6VuBtQasP6HunIKyx7S0A?=
 =?us-ascii?Q?wpDsnjgqbGCr/yJ1CqG43m8HpfCHqzXRNmCeZl+RDylqObcgmnXSo6IRFBQS?=
 =?us-ascii?Q?1RFz7JLbg1inSwAUMZOI9eRupa3hlO7/s/RcLNXbIktVE4RvcNRZchrq3vKt?=
 =?us-ascii?Q?F3nuv910B6Tw8o0Ec0q6Jaa+72Gjz9R4dqKV96Nh8WttHRRFQEaDf3LAexdd?=
 =?us-ascii?Q?1ambHpvXTJ1/AJ/SpKfAWF5/AluGpHzZEMD9lw36voVnf9j2gR0aEnMuJ5/s?=
 =?us-ascii?Q?i6JLjGZUi9XLguTQWnujaBPuy5JtaqkbPnRklZQV6mpc/FQClnHpVBMVuJma?=
 =?us-ascii?Q?usIs4iDha3L6lgtwIjLXl6paT29x47pGJ+3OvI5OWuLHkpy5LMX7+rnDZhJH?=
 =?us-ascii?Q?Bdd4Lb1S0kWIfApouJ+xW0OwI6/SkjcfmTG2kU3CGgmNQsuLdp5kfc16lhEG?=
 =?us-ascii?Q?Qy5ZungmzvPXD4bcwRnxrHYBBwhlYDTgdjZEB7J/xfFCgVKO5DtaS7OFnoA3?=
 =?us-ascii?Q?krF93tKSU0Fl6fbEfobiRyvZCpphFEsnBPSL08ChW5aUZ+FKGFfGBm1N8joa?=
 =?us-ascii?Q?DDLdrTPYScz0Fiign8DeixSAzOQfUueU8A9jPJ7ruk8fHYzZ1N0LABQAj9qb?=
 =?us-ascii?Q?D87oXbjxF8uo7btvoK14kEefg34CAqXzuDyCKDFRYice+/6ZQFwW4RG/l3p2?=
 =?us-ascii?Q?JJAT8hYXRbOU86CcljAb908Y5dxXSJLw8PRN856asUEDPIzHg52QJ3tCXa/y?=
 =?us-ascii?Q?ff5aN8i1XO6nc0IohmaR1/lGMmgPzMonVj4F+XD0mCO6wVxCcPwWZXfAnGxJ?=
 =?us-ascii?Q?1J6ClyZR76ZJ7wF7uyfR03Ionpd0ZpqilOrt/ArY9RbCTfVYlah3EEomC7JU?=
 =?us-ascii?Q?krvnBuSI1uIaObPaw6gb0J5XPwIcKl1/xyEdPgCXKtfDDQe2RV/riTpUn/b4?=
 =?us-ascii?Q?qA+ZdWfjzCuV15onxoFlG9xRm4NH8O0utp9+cN9jjCzScgo5LL6GFhxqPoI7?=
 =?us-ascii?Q?xIIdgB+eQO4GcSP3/Fb+N9QvFZmNgTC86n+U8HIkEIJCr5WQQ1ajT16whRWb?=
 =?us-ascii?Q?FfBS5N0hH9qT1UOMbyzsTJv+glZpuweZVC+MTud6Cb+ZUhkZlnnEDQYqJXvx?=
 =?us-ascii?Q?lajh0wbt5ax63/O4tmEk73m/0OjnUZdGK9mSjyT6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73eb1cb0-ffef-4f67-ff1a-08db9d61528c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2023 07:29:12.5390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t5wyqAow6MGD9e4r00F6qJ7ee7XRkQlXonla+bH4WwG7Oy1I0EbImwjSrf/Mw0BENLPq0TrFNl5ofh2u+BXsXdLsD+j68lb3W00Mha0RfCY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7072
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Enable d3cold at s2idle
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wang,
 Lidong" <lidong.wang@intel.com>, "Yu, Jianshui" <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Monday, August 14, 2023 9:33 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nilawar, Badal
> <badal.nilawar@intel.com>; Tauro, Riana <riana.tauro@intel.com>
> Subject: Re: [PATCH] drm/i915/dgfx: Enable d3cold at s2idle
>=20
> On Mon, Aug 14, 2023 at 04:34:18PM +0530, Anshuman Gupta wrote:
> > System wide suspend already has support for lmem save/restore during
> > suspend therefore enabling d3cold for s2idle and keepng it disable for
> > runtime PM.(Refer below commit for d3cold runtime PM disable
> > justification) 'commit 66eb93e71a7a ("drm/i915/dgfx: Keep PCI
> > autosuspend control 'on' by default on all dGPU")'
> >
> > It will reduce the DG2 Card power consumption to ~0 Watt for s2idle
> > power KPI.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8755
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
>=20
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Hi Rodrigo,
Thanks for review, will this be good candidate for Linux stable tree ?
Thanks,
Anshuman Gupta.
>=20
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 33
> > ++++++++++++++++--------------
> >  1 file changed, 18 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index b870c0df081a..ec4d26b3c17c 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -443,7 +443,6 @@ static int i915_pcode_init(struct drm_i915_private
> > *i915)  static int i915_driver_hw_probe(struct drm_i915_private
> > *dev_priv)  {
> >  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> > -	struct pci_dev *root_pdev;
> >  	int ret;
> >
> >  	if (i915_inject_probe_failure(dev_priv))
> > @@ -557,15 +556,6 @@ static int i915_driver_hw_probe(struct
> > drm_i915_private *dev_priv)
> >
> >  	intel_bw_init_hw(dev_priv);
> >
> > -	/*
> > -	 * FIXME: Temporary hammer to avoid freezing the machine on our
> DGFX
> > -	 * This should be totally removed when we handle the pci states
> properly
> > -	 * on runtime PM and on s2idle cases.
> > -	 */
> > -	root_pdev =3D pcie_find_root_port(pdev);
> > -	if (root_pdev)
> > -		pci_d3cold_disable(root_pdev);
> > -
> >  	return 0;
> >
> >  err_opregion:
> > @@ -591,7 +581,6 @@ static int i915_driver_hw_probe(struct
> > drm_i915_private *dev_priv)  static void i915_driver_hw_remove(struct
> > drm_i915_private *dev_priv)  {
> >  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> > -	struct pci_dev *root_pdev;
> >
> >  	i915_perf_fini(dev_priv);
> >
> > @@ -599,10 +588,6 @@ static void i915_driver_hw_remove(struct
> > drm_i915_private *dev_priv)
> >
> >  	if (pdev->msi_enabled)
> >  		pci_disable_msi(pdev);
> > -
> > -	root_pdev =3D pcie_find_root_port(pdev);
> > -	if (root_pdev)
> > -		pci_d3cold_enable(root_pdev);
> >  }
> >
> >  /**
> > @@ -1519,6 +1504,8 @@ static int intel_runtime_suspend(struct device
> > *kdev)  {
> >  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> >  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
> > +	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> > +	struct pci_dev *root_pdev;
> >  	struct intel_gt *gt;
> >  	int ret, i;
> >
> > @@ -1570,6 +1557,15 @@ static int intel_runtime_suspend(struct device
> *kdev)
> >  		drm_err(&dev_priv->drm,
> >  			"Unclaimed access detected prior to suspending\n");
> >
> > +	/*
> > +	 * FIXME: Temporary hammer to avoid freezing the machine on our
> DGFX
> > +	 * This should be totally removed when we handle the pci states
> properly
> > +	 * on runtime PM.
> > +	 */
> > +	root_pdev =3D pcie_find_root_port(pdev);
> > +	if (root_pdev)
> > +		pci_d3cold_disable(root_pdev);
> > +
> >  	rpm->suspended =3D true;
> >
> >  	/*
> > @@ -1608,6 +1604,8 @@ static int intel_runtime_resume(struct device
> > *kdev)  {
> >  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> >  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
> > +	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> > +	struct pci_dev *root_pdev;
> >  	struct intel_gt *gt;
> >  	int ret, i;
> >
> > @@ -1621,6 +1619,11 @@ static int intel_runtime_resume(struct device
> > *kdev)
> >
> >  	intel_opregion_notify_adapter(dev_priv, PCI_D0);
> >  	rpm->suspended =3D false;
> > +
> > +	root_pdev =3D pcie_find_root_port(pdev);
> > +	if (root_pdev)
> > +		pci_d3cold_enable(root_pdev);
> > +
> >  	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
> >  		drm_dbg(&dev_priv->drm,
> >  			"Unclaimed access during suspend, bios?\n");
> > --
> > 2.25.1
> >
