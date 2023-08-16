Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 101DE77E1A0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 14:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA5510E364;
	Wed, 16 Aug 2023 12:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23BE310E366
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 12:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692188951; x=1723724951;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UXfUtL2B3omgLOkHMLEKMQTX9GDTK+Sc8S+bBkStUkk=;
 b=aRB43erP/qkSCTIJgCdIsfhuS/ZCmAZ2npJgRvSvukvQPMSj5qmeXzAW
 9ovFrzaGZKPABKxAJercgRdsnlaM1mrg/dbb5lMBynVqqV11MjH3/FZ3I
 +kI7qPfgsnJaa9PglkxN3ynekgmwVp8xkW/KIFpW4EIWc/5HXNSrr+Hz5
 32oYsa/OZgC9vxe0TMDVRZ/htDjTyEtPRTIsitqKezvjM8Jr4NGTLsOix
 cLcI0bIFuOoX0QtuuioPP8NVY9uh2URxiRgs0ZGmpf7AelBK77vM+tQrP
 4G3+kJzkfHBNtkANfnU2N8EuXIa3+aAOYQ4qxGxjSZqukdfFXg4YPHDzk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436415001"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="436415001"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 05:29:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="877775168"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2023 05:29:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 05:29:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 05:29:10 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 05:29:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jM8mbToEcAVG5OPV+LFk75fAgKdHjpMplT8WyQG0Akm85eXaWtrhGG5WRGUZe+PG1MH1Zkc6PJDwIVUTOj1qOK90xnM/dqto4ySvWO4qq38gg55g4EVQmJ09FoJC9ZdrtZG6SdluRo+qNquJKi2wKNjZ5y81SMpUwYUmLyfZeL/11rgNsJ7TqCM5W+Qyc0hT4w61Aqdxp0qx+4NzWWNk11gn6nixwilk55CB9+XE+jZZQfLmjhN4d0XqJnO3z9f7bi4zAJMNi1XlyL6q8PT+uVtwhbdbykU6yIdNumlNP0cyEWrLOChykDAqyqf2o/D+DWF/LZ9xi6XZS4G651cC+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ujq5cTXzVNAJPKTSUYpHx+GughncZeysuuqO7Yx+qw=;
 b=AfIyhk6TJd451USxn+DJfmQhWtDFBAab+eX6YcI9776aArTes63vY8UOCqsQhMZ7/sk2ATgEyR83Trg0UHJIg/L6MfRYEjcdFt7B+RqOzAJOkgbV+BGNVMWV3a0t9spUOY5HSop5hGJlat2yHzV5n0bURIq58YcxTJRYBBHaot0vHrhwtpwuNAdTnkzogKyAww9fUtqjfkCmkSnbbYbpFtMDPUM9VJoJBU/IsrxR43DmCdt18x79StZVYEnPE+AyZpNtCaHL9FiRbV77o5Y+wzsIhJAIiN0nxftcXqVUvsdJ4ry8K1V25SIoZHf+mfOL44IOcDddjtx7Um/G53BllA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by MW4PR11MB6959.namprd11.prod.outlook.com (2603:10b6:303:228::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 12:29:02 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241%7]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 12:29:02 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH] drm/i915/dgfx: Enable d3cold at s2idle
Thread-Index: AQHZzp8nh97MPuUZuESUCFZRpLeIt6/p9HWAgAECILCAAG1GgIABeP4Q
Date: Wed, 16 Aug 2023 12:29:02 +0000
Message-ID: <CY5PR11MB62117D437EDED7423A9488159515A@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230814110418.1557979-1-anshuman.gupta@intel.com>
 <ZNpQS0kVEslsVNg2@intel.com>
 <CY5PR11MB62111994966D89A3623DACC29514A@CY5PR11MB6211.namprd11.prod.outlook.com>
 <ZNuEfWxPh5psQ1zi@intel.com>
In-Reply-To: <ZNuEfWxPh5psQ1zi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|MW4PR11MB6959:EE_
x-ms-office365-filtering-correlation-id: 43303cd2-7681-48da-eaa5-08db9e545fb0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UsocC9No5OWUlaA+OdymW7FeF8D2190zYpUvqZUZJpM/4MO2ZK/8eYO/Wovqs5byGLajPFL7PCF6a5uLgw15R6Vfa+fzI5i9uQ86n89fV4Vr1re7QpYcwRj1VedWFY7l8x7uvVF6kRT4EmNHjyAdFqLfh7G1qoQyvq8CvH+ij7kHEbb1g8dCMZW7SGGX21yVoHYnYGexpasy1Z0alXfEcdDhtENivBLRwcU7hlm6T77LTQtIdTCwyFHtk7Tx3PEEkhg6U7goXNCxFwskeYqwxShHP/YfGy6JrcLo+OkXBKKKwhoDAJd03B/puq6fSU6x7HMdN/HOxZVIG/hRhvPsj5Iem8dIySJTxwQj5rBv65cu/0oyfrt+fWjQrYIAjo22dHJtcU/2jIYtg89sPBi7k5WelKmjodXk10ErEAZpJavMRBGjjtXnyG08Tsg+aaqYL/hRzZu/SU+1ILI5Gu3VtBxlJ+7FacLaa+IUPgtzdg9x9i3UEetrvIlycnO17L2df+oaNpJ5zbxjGGK6JgSxuq5IWZoOwnmctM4GPvxlFSMBcczSnc2J7bVg1GpCTbMf6xi7u4IFJiquI48uukNFWjjkt4RacJaB1xsY7SHpT+a34mb8fw4nS4+1trdZMptoWcObrVKy/FU0Eiv6Ejp/gg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(346002)(39860400002)(396003)(451199024)(1800799009)(186009)(2906002)(83380400001)(86362001)(478600001)(6506007)(107886003)(7696005)(71200400001)(33656002)(9686003)(53546011)(26005)(55016003)(966005)(5660300002)(41300700001)(52536014)(122000001)(6636002)(54906003)(316002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(6862004)(8936002)(4326008)(82960400001)(38100700002)(38070700005)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bGVby142cJd26GUJ21X6jZaHwHTLF/ClgknaQ+Io02k9kDJkSaaWrQWbkGBh?=
 =?us-ascii?Q?r+KkM4W7dgY97YcGsLt4mA5ogJ/YHFlTxWOaoTIexH1hRdatwOcbDsjcOq2p?=
 =?us-ascii?Q?Ahwtic7xaOIq3aZUQ6aA69DVQSBl1N1WhqEsUCMgZd4jRGyDeqLYlztNfaaY?=
 =?us-ascii?Q?8cKL+LTUv1HMKF1+SHFfSC+KiRV2d1VFYPBZWkl0xQ4f+Z1/zg1Gd2q3tM0F?=
 =?us-ascii?Q?CZtk2bn7j6aGZBP5XKW0KwlvPnQRSOQMAU1wMZTl6EMNSfmENiV0zktwYaNR?=
 =?us-ascii?Q?F390kfK+41heYhi5JzXFtqI7eyJhz/ud1jENntf/fBHtXBk7Ist3u1ged+Mi?=
 =?us-ascii?Q?n0BTFjWcDY1QZ2hVtqIZsnW6ikuQw4EFk8lyNA4ArybV1w9FCg103wCR7I+c?=
 =?us-ascii?Q?0D4oTlnrodjKqKCsP8zgPvy4A1HKtDKkktwcgYxh6nmvqSrvWdaKnmp8cywT?=
 =?us-ascii?Q?glZRir27dcrDuIeOmd5bfum7VSpZkPOLpTSXId3+qKaVh3BXtrncBqSbcCiU?=
 =?us-ascii?Q?scnacn5e5fEW+qERV/pwUFNMnojlNrM/ybQfPipqlOtc8pctqJp+/Eoou8iO?=
 =?us-ascii?Q?UIThvA0swbheo0M/ts8U/3Mm5oh3slc/SspS2ml+FtBpbJuFxbfa3DSTXIsx?=
 =?us-ascii?Q?xZx4UJOyG8X4ZtQ8RcINuYJLeJjguvI3IEKcp/WvoKeY/lBNC6+MGBV4te/N?=
 =?us-ascii?Q?ad0zPoNc/nvyOqFTROx/bBeEwoeeFSgVarI/E8QLRnq1lKeon6NjrBJ//kr4?=
 =?us-ascii?Q?F7SDyB2IYYY2h3Aduvszbola51M8cUGXBDHaYJZs9jNaQqewyhSqUHRgXUmr?=
 =?us-ascii?Q?v7VcGPJHfft8Eg0mKMqAOuhLV11V3pQikIo4j4uYSeWLl2V99/XaGYRn1eGb?=
 =?us-ascii?Q?1uETRtQXrTHyywCsTpHtaWDCTvp18mqAweOVtZm4h/hqdNDr+3iu0+14nEyp?=
 =?us-ascii?Q?Uweofx9ibyejiuIVU8ERrzmVaSJOrvQ/RzTjoPaXJcHp4z6MvUb6hBPY9Fwg?=
 =?us-ascii?Q?kfaQioF7dSrqocDQMJTPIGpQmIRhjqTlKNMRpytKqnd6iVdwsrJyJqhCzFrw?=
 =?us-ascii?Q?FZzDalcdJAla3Vr7yelsKfm80MdKCNlg0IW9kmGBWHqcFNs/9Tm3Ll94BkLb?=
 =?us-ascii?Q?hYNr3qZxSDzBFKqoVE3zBqJ8yrClypuyFWk3u8eCajkhrsbfKQY7TCILWwrD?=
 =?us-ascii?Q?J4L8aSGHKg/mJwEqNJX1iylwpY1/hhnGd52+pRMGQ7emDYpnjUMtKpjHNHMO?=
 =?us-ascii?Q?7IsUMJ5H2VWpW7Vm2Hb3GsL0L4ox1sj4W9kp6x1tnpry0vRWRszR5j2IQouf?=
 =?us-ascii?Q?0OxOpEIqLnkVpgSGeMyqEgSnB4vECAtUMaQQCQRyafrfcU8JmUXWwbLQkXBo?=
 =?us-ascii?Q?i/rx0N64LjJv412i2Y0JkQbbmDfJ5qcoBzQp0T4KUsny+NsIED+mHiAtsErQ?=
 =?us-ascii?Q?DeVnw2G5pJVBolWK0wYdpABQgsF0Nv7Zv7V+hYnFysC9DAKUpaadJgPYNHFU?=
 =?us-ascii?Q?B9NhxHSDYLHNH9EIRnRCvz9XsedXC58/PL3SQV2FXvjQYOdohm/27lkOTzln?=
 =?us-ascii?Q?g9xDK0moOWFEfsVeINzuQ/CdojoeiptSQ2CCITVO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43303cd2-7681-48da-eaa5-08db9e545fb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 12:29:02.2840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: odCIUgynLCt7xfFfINoZP8z9DA90pX4pFqcDBRxnTw8zOYyCuV1x1UbAJFDC30bYEdJuqd422wIxVKvwHOouTm+bZHP7wI6PnNEizYSZxBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6959
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
> Sent: Tuesday, August 15, 2023 7:28 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nilawar, Badal
> <badal.nilawar@intel.com>; Tauro, Riana <riana.tauro@intel.com>; Wang,
> Lidong <lidong.wang@intel.com>; Yu, Jianshui <jianshui.yu@intel.com>
> Subject: Re: [PATCH] drm/i915/dgfx: Enable d3cold at s2idle
>=20
> On Tue, Aug 15, 2023 at 03:29:12AM -0400, Gupta, Anshuman wrote:
> >
> >
> > > -----Original Message-----
> > > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > > Sent: Monday, August 14, 2023 9:33 PM
> > > To: Gupta, Anshuman <anshuman.gupta@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Nilawar, Badal
> > > <badal.nilawar@intel.com>; Tauro, Riana <riana.tauro@intel.com>
> > > Subject: Re: [PATCH] drm/i915/dgfx: Enable d3cold at s2idle
> > >
> > > On Mon, Aug 14, 2023 at 04:34:18PM +0530, Anshuman Gupta wrote:
> > > > System wide suspend already has support for lmem save/restore
> > > > during suspend therefore enabling d3cold for s2idle and keepng it
> > > > disable for runtime PM.(Refer below commit for d3cold runtime PM
> > > > disable
> > > > justification) 'commit 66eb93e71a7a ("drm/i915/dgfx: Keep PCI
> > > > autosuspend control 'on' by default on all dGPU")'
> > > >
> > > > It will reduce the DG2 Card power consumption to ~0 Watt for
> > > > s2idle power KPI.
> > > >
> > > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8755
> > > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > >
> > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Hi Rodrigo,
> > Thanks for review, will this be good candidate for Linux stable tree ?
>=20
> Yes, I think so.
>=20
> do we have a good commit to mark for 'Fixes:'?
>=20
> but we can add the cc: stable even without the Fixes already in advance
> anyway.
Thanks I will  add "Cc: stable@vger.kernel.org"  tag to v2.=20
Thanks,
Anshuman Gupta.
>=20
> otherwise we need to wait for this to land in Linus tree and then send
> directly again to the stable mailing list.
>=20
> > Thanks,
> > Anshuman Gupta.
> > >
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_driver.c | 33
> > > > ++++++++++++++++--------------
> > > >  1 file changed, 18 insertions(+), 15 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > > > b/drivers/gpu/drm/i915/i915_driver.c
> > > > index b870c0df081a..ec4d26b3c17c 100644
> > > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > > @@ -443,7 +443,6 @@ static int i915_pcode_init(struct
> > > > drm_i915_private
> > > > *i915)  static int i915_driver_hw_probe(struct drm_i915_private
> > > > *dev_priv)  {
> > > >  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> > > > -	struct pci_dev *root_pdev;
> > > >  	int ret;
> > > >
> > > >  	if (i915_inject_probe_failure(dev_priv))
> > > > @@ -557,15 +556,6 @@ static int i915_driver_hw_probe(struct
> > > > drm_i915_private *dev_priv)
> > > >
> > > >  	intel_bw_init_hw(dev_priv);
> > > >
> > > > -	/*
> > > > -	 * FIXME: Temporary hammer to avoid freezing the machine on our
> > > DGFX
> > > > -	 * This should be totally removed when we handle the pci states
> > > properly
> > > > -	 * on runtime PM and on s2idle cases.
> > > > -	 */
> > > > -	root_pdev =3D pcie_find_root_port(pdev);
> > > > -	if (root_pdev)
> > > > -		pci_d3cold_disable(root_pdev);
> > > > -
> > > >  	return 0;
> > > >
> > > >  err_opregion:
> > > > @@ -591,7 +581,6 @@ static int i915_driver_hw_probe(struct
> > > > drm_i915_private *dev_priv)  static void
> > > > i915_driver_hw_remove(struct drm_i915_private *dev_priv)  {
> > > >  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> > > > -	struct pci_dev *root_pdev;
> > > >
> > > >  	i915_perf_fini(dev_priv);
> > > >
> > > > @@ -599,10 +588,6 @@ static void i915_driver_hw_remove(struct
> > > > drm_i915_private *dev_priv)
> > > >
> > > >  	if (pdev->msi_enabled)
> > > >  		pci_disable_msi(pdev);
> > > > -
> > > > -	root_pdev =3D pcie_find_root_port(pdev);
> > > > -	if (root_pdev)
> > > > -		pci_d3cold_enable(root_pdev);
> > > >  }
> > > >
> > > >  /**
> > > > @@ -1519,6 +1504,8 @@ static int intel_runtime_suspend(struct
> > > > device
> > > > *kdev)  {
> > > >  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> > > >  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
> > > > +	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> > > > +	struct pci_dev *root_pdev;
> > > >  	struct intel_gt *gt;
> > > >  	int ret, i;
> > > >
> > > > @@ -1570,6 +1557,15 @@ static int intel_runtime_suspend(struct
> > > > device
> > > *kdev)
> > > >  		drm_err(&dev_priv->drm,
> > > >  			"Unclaimed access detected prior to suspending\n");
> > > >
> > > > +	/*
> > > > +	 * FIXME: Temporary hammer to avoid freezing the machine on our
> > > DGFX
> > > > +	 * This should be totally removed when we handle the pci states
> > > properly
> > > > +	 * on runtime PM.
> > > > +	 */
> > > > +	root_pdev =3D pcie_find_root_port(pdev);
> > > > +	if (root_pdev)
> > > > +		pci_d3cold_disable(root_pdev);
> > > > +
> > > >  	rpm->suspended =3D true;
> > > >
> > > >  	/*
> > > > @@ -1608,6 +1604,8 @@ static int intel_runtime_resume(struct
> > > > device
> > > > *kdev)  {
> > > >  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev);
> > > >  	struct intel_runtime_pm *rpm =3D &dev_priv->runtime_pm;
> > > > +	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> > > > +	struct pci_dev *root_pdev;
> > > >  	struct intel_gt *gt;
> > > >  	int ret, i;
> > > >
> > > > @@ -1621,6 +1619,11 @@ static int intel_runtime_resume(struct
> > > > device
> > > > *kdev)
> > > >
> > > >  	intel_opregion_notify_adapter(dev_priv, PCI_D0);
> > > >  	rpm->suspended =3D false;
> > > > +
> > > > +	root_pdev =3D pcie_find_root_port(pdev);
> > > > +	if (root_pdev)
> > > > +		pci_d3cold_enable(root_pdev);
> > > > +
> > > >  	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
> > > >  		drm_dbg(&dev_priv->drm,
> > > >  			"Unclaimed access during suspend, bios?\n");
> > > > --
> > > > 2.25.1
> > > >
