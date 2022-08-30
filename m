Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCD15A67D0
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 18:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AEE810E172;
	Tue, 30 Aug 2022 16:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8CA010E172
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 16:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661875232; x=1693411232;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a0mP9Dv51202FLZnksjPxO73Pq9AwqZXk1HGdeN3oJk=;
 b=eC/vloRl5O4zAZ9F5yZ5N7NhLVyMiuXhDwc3OT8iOriR7CmWK9ZcSOwx
 U/if220erB0pPdqqYjt5z+JGIwrmrOtHW6CG6Bm164mrp48d+pdSsfVfc
 7J8wefn+jqP2uDD/WnEoklTd/hju3isi87Jyb+SHQIvYDoGsv8qrFQUMQ
 yAK7WymQSi3WNKaP1TkEJtKw641ohw1802RG4i5Nr/DFnIYvP3sG8IJLD
 jq+evfk96BVkHVNlYdJJ6XR6bePZH4RDZH4wSER5K6QR4qUDOs6osAUeS
 MhkwzVlKlfbIVa7t/7Z79g/5kz2i1EY7rYjSO43nbVkggQRyCTiuNeR9e w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="359176896"
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="359176896"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 09:00:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="672922184"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 30 Aug 2022 09:00:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 30 Aug 2022 09:00:08 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 30 Aug 2022 09:00:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 30 Aug 2022 09:00:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 30 Aug 2022 09:00:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G0r6eAM9AGgs/xaCjPx3gJZIlG5REfQmuJdgLnBbcmFOkdY14zBzP5kjkH+VC6i4UvEQMkL3K6tbIGZrG2tsdcNyyrDEXA1V6XFj3xwkmXLsyAz81rqRHqs5vnle3vrxxAemqvW4BzMX22IzZOk6Udm+NiXP+b/LvKIYocDLpSY+ykAUcEQBTKYdd6+xMGDraevOHdKI8A7BYW7+DSrdxuMe6TeQOsPOBgXrk13dqQG3tVme8531LRQAt1UusR9Y7VDtW7xQWN0GziexIIZElPq/10gpV9znA36xWn5OcHsHecNLiKnlP/0SFXKhLc2tcyY90SXqp8MaEVWtLfZxsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7cvssSgpa9gvEaeTYu0a/i1ePUDBZB8n2eO2hXd4K+Q=;
 b=kL4q7rhJ9kxBTHmYv3rHPEaYtpb3G3rcfc5Cfu1E6/5Na85BqlNLIcuZH4wKPfr2GDe8bpHGwQdJcHiS2h+6jH+Ue4p/ryON2X1SvuLmGDssKfSwTOxVV0/Qqf0qTsgOrqqtG8/uHaASrweYu2fKzfAy0YDTboPezZCTLppFcEfLdcn7ivl94+OJHAw1wrHZ4LIOdyd2XJND8z1xoAdidgNm87uJV3FD1MzLVuiScRrh8bJpcf9olMbi4Z2nYdYqjCZB1jHbhpjmoBdwx2B4CLhu/uJdzj/1N0KBuh5jAbYdIRasjcwQD5P0xTKqCM7dBBFft5K58KD+Q0VgQBih6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by DM6PR11MB3724.namprd11.prod.outlook.com (2603:10b6:5:13c::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Tue, 30 Aug
 2022 16:00:03 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::61c1:4020:d92d:bd06]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::61c1:4020:d92d:bd06%3]) with mapi id 15.20.5566.021; Tue, 30 Aug 2022
 16:00:03 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: drm/i915/display: Fix warning callstack for imbalance wakeref
Thread-Index: AQHYvIdn65s2llrzzkuf5ucBxOVvTK3HmWmw
Date: Tue, 30 Aug 2022 16:00:03 +0000
Message-ID: <MWHPR11MB19358DE28DABC83D5327D577B2799@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20220829083124.368196-1-mitulkumar.ajitkumar.golani@intel.com>
 <Yw4wNANUwyokCJg6@ideak-desk.fi.intel.com>
In-Reply-To: <Yw4wNANUwyokCJg6@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4624e45-0847-4068-4b93-08da8aa0b348
x-ms-traffictypediagnostic: DM6PR11MB3724:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Zbvdpzj67gvfkYtj+QmKMhIjzMbaZCvMd/1UwQE7LgygUulTfYrMO1KGlcUKWm79Nxs9C/9J+iUtLj2O3YOfsL35bRKCBMhtcOAHmTnTZQnD4Kwgag8YPAf6P64nid7ml3Ubk3X4feTYGx8tjeS9YC5wgZLy6KzBgfci4ISnvKySFpROeJYczgNEGE+nXflleCGi9gpW9SI96uaiKKkoP+9gHbLUJXxUZtisIqpHWKnuhAAWIWO+se8QRREuxs0WOyI9STJNgjpLLERVA0SD02+LJLM3t5vjqTA3rBulrWcwSkOjAdaaLuepZogUak4gZ3FNkwngml9GGoriPY2BALvKDq9O0Cma9HuW2HAm5yDt1PMQaPY/R5jjWBnLzRrE94lSTzEO7aMpyFhJo26cRjMyILwR4wrnlZ/wr7oXOxOVgaLNGn/hYM2NldjYv6Me2u5jethyzDm0THZM9i/FEzstK5/mBCKVNpRk79bSvmiTbD2XCHuVbABsAJm14J8FbLsGjPw1uwJmcTU1a7HnM7X7jEMf7mwt1NXCfb4vurIJRmqtHcjMQjpRuUMZGtC2bpeFTuea53xoVw9+T8K1NA/nnbIxHbuohi/BvBqLwvIMOj7L/qxtnIPZX9KNF3S2tqM9Hj5KcyD9WKMuT9Vbqts+oV/IZIKMBQkJSg80BYxuzKOPWiyCPlpZTePnpfBAIgmqWPKS1ndAJ1QDgsbuhw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(136003)(39860400002)(346002)(376002)(66556008)(5660300002)(66946007)(66476007)(6636002)(66446008)(8936002)(8676002)(6862004)(52536014)(4326008)(64756008)(33656002)(76116006)(2906002)(316002)(41300700001)(7696005)(478600001)(6506007)(9686003)(86362001)(966005)(26005)(71200400001)(55236004)(38070700005)(82960400001)(55016003)(83380400001)(186003)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UBQN34EcAv1RmpJu6+qCVsOmX6OrCYwtRlTYEZzjQ0qcuozCS34xwwE3HUfG?=
 =?us-ascii?Q?UGRmHzsO1NWwKbagYGZCD8cmTBatTB3/qQanoPOQSmjuac46vw9navZjraci?=
 =?us-ascii?Q?lJBqV9agO9QQYs4hE5GNVfgNUa3Ji5PBakRPoRPHpVDjuMq5REvljDV/m+Aj?=
 =?us-ascii?Q?wLF6jSV8Pd7eNvDu2rQi3lrwz1bAUFF/G5AsZ8FFmw+RJwDPLTmZdudi0nuT?=
 =?us-ascii?Q?oPNnhR4OF2ct//ieYKcx/3s5kJnnVC3e6ALvBtJ93bdu0xSpYIVeCHcz+19u?=
 =?us-ascii?Q?8HlBbpSVRqD0eQQfeTkWjjVYXhi8wttKptnqfNPzHnHKi4aBTKSmTPlPTneS?=
 =?us-ascii?Q?Fh51QmmxVbdaFcOalEzdHEbkFG9x1Gc0txcUQsys+MSmimiBYC+DOv6PQwhg?=
 =?us-ascii?Q?b8sS9Gt0Edujz1LDqAA2ahg5ffE3+PM1jkm92cFtIJZUCLwxFWVZjjoCZ3TD?=
 =?us-ascii?Q?ScyNCyG7LP1sMy7XkHLTISYo3ezwz2wrRGRRzPizEDzo+JGFdpdXf3z2++5b?=
 =?us-ascii?Q?+nHefYW6PDOONLgAGlgoshMjoCfwEP/dFbLxl3T+vpeK8Li9uaFVeMyTBVsw?=
 =?us-ascii?Q?Fyf1DzqDe2vmqUoWq1dnKO+1aQy6qjERqebLUq3I0tUPv5Sdc1FWtRjytx9Z?=
 =?us-ascii?Q?kQQRXIuBBcxiHgcU0gZbGpjkQ7ItgX3H4DwkH5DFlziFTjHvUxs2lMZVw9RR?=
 =?us-ascii?Q?FIxAWP7v2mTitNU/yP5MnPDi7hRl2hkeinwSJQ5krNMgIXq1skfOXqgIt3lq?=
 =?us-ascii?Q?anPbPqfNiArcwbNcSDxGUpc8DcN2F1/KzN+9D+Kngm5r2x6fCTBI4awaR4qc?=
 =?us-ascii?Q?by0SCwaHI1fh8nUfNCj6S7m4KWnJitWmlgWS291U5VtwGLGbktorwTvfY0M4?=
 =?us-ascii?Q?/UMQI+1D7vIwz5sPzn1/nFQ5uaFcAwoeE2IzuRnPxMrMics443aLGrOryMvl?=
 =?us-ascii?Q?llsM3yuKA3l/pEa2PzL9EjlZCpoy6RzSDkc+DeTY/AHL1cX3xIm28KFl0puJ?=
 =?us-ascii?Q?juJneBwOp6P786YXkRWA7HUOdPHCIT6q01eG7t4QvAzl76Sw7XTNvBnTOGix?=
 =?us-ascii?Q?Bm0B+Ls2l1uPhS3yZ1mEQivCZHGMcMAd2gq+AeMLrajkd96AB+VyJA0TRnMA?=
 =?us-ascii?Q?lgJiWtXycvfA0sv+Akgu+HUvEnXsWi/mXxWoreUkmf7hgWj2KMTgP/0ikIMO?=
 =?us-ascii?Q?cZKjpoNz/DngumGqrAHagA1+E/lLvbKHXC98shG9uQKQZxiYfqbeJWjdZvr1?=
 =?us-ascii?Q?+qLWYVvMb/wVGDm3ULpJc3GLU/Q96+5Z5NkSgh6kIrkjy4o2tPMPQG86O76n?=
 =?us-ascii?Q?yJY8zcT2ogxS8HBH9ECYPk3/ik74Pev84Xc71m+mxED+PeI1fbXLDVuz5Qtj?=
 =?us-ascii?Q?dCmNAuKuWS7Bwh+nNWpnC+HXpVdMwGGiLrsRv7ROzr1HmTX8hFYAdvqcje8j?=
 =?us-ascii?Q?MAZ1sC8aUoC+6ulSoK7Ou1evtwBzgNV/GSI8YoS+x2BJhDmCzoALxJu75f2u?=
 =?us-ascii?Q?TwURQbdkCwtD5/Y3VLAsXjV6PnVvZD0UKPqfenLaa4MtNwyIsVlefiq+TJY4?=
 =?us-ascii?Q?CftobuZ2jiZXOrP/najG41DFyfdPO5CLmc7nWBJ3FQaU5m4f7mJhfIiF+owp?=
 =?us-ascii?Q?eSOlh1sBlR+aXmhjkpy7ylI=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4624e45-0847-4068-4b93-08da8aa0b348
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2022 16:00:03.3450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QFUMx3YlAZp/HYpDrcAQcIkfUBiPNMDxIHix7//nZPI9gC4AmOtK1M33JQ6SNE14KkcxbIj+lp62rB4Nv5N4KAK61FJADBjsL50afjkB4KagQ1COpLi4q0jN5mxf8G6V
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3724
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] drm/i915/display: Fix warning callstack for
 imbalance wakeref
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> >  drivers/gpu/drm/i915/i915_driver.c | 16 ++++++++++++----
> >  1 file changed, 12 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index 1332c70370a6..281bf6cd5e4c 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -953,7 +953,11 @@ int i915_driver_probe(struct pci_dev *pdev, const
> > struct pci_device_id *ent)
> >
> >  void i915_driver_remove(struct drm_i915_private *i915)  {
> > -	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> > +	intel_wakeref_t wakeref =3D 0;
>=20
> Initing wakeref right before assigning to it is redundant.
>=20
> > +	/*
> > +	 * Resuming Device if already suspended to complete driver
> unregistration
> > +	 */
>=20
> No need for the above comment, which the function name makes clear
> already.
>=20
> > +	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
> >
> >  	i915_driver_unregister(i915);
> >
> > @@ -977,18 +981,20 @@ void i915_driver_remove(struct
> drm_i915_private
> > *i915)
> >
> >  	i915_driver_hw_remove(i915);
> >
> > -	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> > +	if (wakeref)
> > +		intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>=20
> wakeref can't be 0, so the call can be unconditional.
>=20
> >  }
> >
> >  static void i915_driver_release(struct drm_device *dev)  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> >  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
> > +	intel_wakeref_t wakeref =3D 0;
> >
> >  	if (!dev_priv->do_release)
> >  		return;
> >
> > -	disable_rpm_wakeref_asserts(rpm);
> > +	wakeref =3D intel_runtime_pm_get(rpm);
> >
> >  	i915_gem_driver_release(dev_priv);
> >
> > @@ -999,7 +1005,9 @@ static void i915_driver_release(struct drm_device
> > *dev)
> >
> >  	i915_driver_mmio_release(dev_priv);
> >
> > -	enable_rpm_wakeref_asserts(rpm);
> > +	if (wakeref)
> > +		intel_runtime_pm_put(rpm, wakeref);
> > +
> >  	intel_runtime_pm_driver_release(rpm);
> >
> >  	i915_driver_late_release(dev_priv);


Hi Imre,

Thanks. Addressed above comments and pushed changes with new revision:7.=20
https://patchwork.freedesktop.org/series/107211/
