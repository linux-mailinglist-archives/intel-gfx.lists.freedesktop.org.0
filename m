Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA49A629134
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 05:38:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEC4310E361;
	Tue, 15 Nov 2022 04:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03EFD10E361
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 04:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668487086; x=1700023086;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AafRSUICTlHwMtiTLczq9MXSUP7VnhA15oi6iW9z4rI=;
 b=J5PojwHMAy1kKYWUI3l7HKbP28cvMIe0Yn2taYwZzIrA/eJP6Prj8CjY
 cAulLUyzlzIdlMevoG43z2hKBj4vL0KtBNzXWY5+NNqYyc4ZPc8uklpdn
 ZqqJWEqymyBzns51rjclxJRu8BDaQcmvT1H5vd/iKzKdfSPgHP4CREcDt
 8JpdomyAKw+/6aQRGrKIr4o8bM0t+MJeIy6OZJWWM8i0c9B7/d+3vaSmS
 9hrKIQmabPwVzHYuzdnl4M/abCH6obp+0ebK7ZIOWiqDYnE4z28+CD+iK
 pGIfYh4MhNIEkWDfpt86vWcn9lQ+J9S+hdQ3vdDdwBaFIXQjwg1sPdymZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="310866677"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="310866677"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 20:38:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="589657582"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="589657582"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 14 Nov 2022 20:38:05 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 20:38:04 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 20:38:04 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 20:38:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fIet8hdtrH7eXICZIgFwh0jVhcVhgLI16h3T3gUVE8GLOjEP6RaaGU12hML8WiJvjHsGd2x2ZkIoInedJOhu77jDFqscjWuwDKAlu8HFYguDcADLiiQjW7c3nw3ph/dj2fj6MXJtbxD8lAU1nf7KeMmXYNzPQ27hCAh/sLxOUkubkEOdwIBTehmVc2pK3gZFxdtarhOrJCTLsIxonOZ1iT04lnS4ZzPppmatMwDmYSiQTuItPWMAvy3GVzBUh17hQCVZA5ndXPZ5HEJIDN0imgaJ85Vfqhc+qrvdxJhVTR5uWgu/PKOzfZhgS9vMLfiqZVnVcnHjfbI4foU/GGXYrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ghMniRCW4D0/M7y9zrL5ueHoau9AfewbK4jhNPVMkU=;
 b=UI966SVZk1p10rg4ttTkwYOYTs/k9tRA/KY+B6Ula9BYKBmNEH1xELKuCnLerg4AKAbi7ILnNsUIiHRMnEjvr1Cau8QbJE55OSfAjR6uda2jl+YK4qbwvjFGNADphHzmOmOYU3uZxsdMMYPDIndsByNsyMG7Yy5GiiHekMA/S5oBrLzoEDqh0eysnNMK26puhhHGh4HPkN6TNXdYfUZSfeNCu8bbOjB95w/VquWQOJuELAXO4kO0m3gimmGSm0DikH6j1/+JwXn7KPTO1ht07cVndq6DdBQAPy/yeC7gc71qzdUH7W2e5nPQJSTUHFsKhwurrzVnEaYPc1nJ6Fdw3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SJ0PR11MB5040.namprd11.prod.outlook.com (2603:10b6:a03:2d6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 04:37:57 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%8]) with mapi id 15.20.5813.013; Tue, 15 Nov 2022
 04:37:57 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH i-g-t v2 1/3] lib/igt_pm: Refactor get firmware_node fd
Thread-Index: AQHY+GNOGll5JzClE0mdIEQsyM6D6q4/ZiWQ
Date: Tue, 15 Nov 2022 04:37:57 +0000
Message-ID: <CY5PR11MB621138264D1BCE8637A6287695049@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221114123843.880902-1-anshuman.gupta@intel.com>
 <20221114123843.880902-2-anshuman.gupta@intel.com>
 <Y3KdnF8AOHHICiXG@intel.com>
In-Reply-To: <Y3KdnF8AOHHICiXG@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SJ0PR11MB5040:EE_
x-ms-office365-filtering-correlation-id: 0896bf0a-2410-4423-0035-08dac6c32b4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /63aOfqaVt3pzD8nlFUqLLeJDIpWK/eAfn2uxIKrTPQpUN+zEh5loaoiayr+ecDwSw4pz0WKx8yGJbmwjvGh3fi5cfuLnzxzJf9PajWD/BWl8j7fJYHxCeUvpbi4epQ+3QfIZlwZzFdjl7vowMndnePtr5qCDNhF4iTaNNI/I9iYgzStzlNnJFGfC/MtTsQyq08OjtZuSufNyrmszwo1hhMJkrJNCW3WVLnvdx6ZfIHdKLFkAo8msY4Ics6g2Nlk0Yw0EI+k9KHsRtCTIU86HvOBBbGrJU2n7gWDbIcbB+jut+seIP45TJcU5EAGKKDxRWYbW6DuDpoJqrD5VBFPAl0dmxdI3b4Aqsks97X5mSmbjP5CdhbZ532Ku5CdE7q8k7bSV7K4vd+0dLOpUI7TDiqwy3wp2mlBFJW17iegWx/ZtOhYd2rU2XKCKPERVQvHdFxtpuwxVfMuJoFqTBuVCmAEGOHZ8yLasSXGCEzkd8rYoUITdBjI70LKfqaN7rg/MUsdFtG4dLLl2twAcqvxfFeWm8n9GJCWJNuShCpT6Eih0vIrmUZMdBYQLAxtjGxIcrUimLQb61D02r0egLe3mmGCQbGh6FwEYLKgqV3fZRsE8tuKrt3ACU5stXEb2j42VVMwZRJGuqXrHsKj88nNVQegxZ6/zGlmRsiNm3qA3koK/Ez0L3LQ765MilGgcEpqPEmpG/YK8JlKG4hCfOMqUloI8dawcJQLOBrZyxe9fFnZh5PAaG92Pzn8tQhViTlPUByktO9J2E609PKDNU5G8w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(136003)(366004)(346002)(451199015)(71200400001)(478600001)(54906003)(6636002)(5660300002)(8936002)(52536014)(41300700001)(6506007)(2906002)(26005)(66476007)(55236004)(7696005)(53546011)(66556008)(316002)(76116006)(9686003)(8676002)(66946007)(6862004)(4326008)(64756008)(186003)(66446008)(83380400001)(33656002)(82960400001)(86362001)(122000001)(38100700002)(55016003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ULQXZ+kejvnVt2wt6AliquSzMwIeUDw9oPObCfRohcRu4n1iGSarRUjnl58x?=
 =?us-ascii?Q?JCflF9AdY6arobZ4icC3mcnNdetzlULPW/C6kAVUOxekyyNgVF+VOTzF2BHz?=
 =?us-ascii?Q?0ga8khXNNK2bLL+VN0SFioO5D/G6XJVjlp5IQq0HWVMOUeN77G7Pxc9jT07d?=
 =?us-ascii?Q?/S5PCucL7c8kXZxIO4psS6SEW+pOs3/NiC0tjI7x6YuhEpou0hHrjAK1np5C?=
 =?us-ascii?Q?2n+w6HTsaHj+INEkQuthBIvnWSIo+mxKkdGX2d+JUx2ltNyEpxW7d7w1q182?=
 =?us-ascii?Q?UocTvk8GWG9+uJ0XOurlsVeY0nT7gVDKTMuC61Gk5qCTsni88asuCwKAmEu2?=
 =?us-ascii?Q?qtVAr26T/nXdvKE6KcTzbP8RVRsj7DdepdClmN0Unhy0UyYNcIwjvkVOvxWL?=
 =?us-ascii?Q?QsCERRKf3l0aW2ZxhqeA44OiRF+b/ntpC5NFx6V+wF8+Y0FnIKtFLfmLyE1v?=
 =?us-ascii?Q?FYpOJ2z20GzoqtnM0Vdtrth4lEMQdm6IU9koCwoBqXzjNdGxYuqbjyse+2k5?=
 =?us-ascii?Q?uwnyVHT5nYayZlYtF5aILl98qcgSRG/L7g1ORjrDaEvhHyLwEZZTCQhpliME?=
 =?us-ascii?Q?b9s13+12GrD1YO2N8L3bSEtK3ZImcEuDfXe4lyHTMFzTQQWxrwdlJhXLy8Qi?=
 =?us-ascii?Q?b1XekBZSWyoc6hyj2lqVlqD6UmJOi8zKITAqNTn+poDM+GsYLypju0YD60Fy?=
 =?us-ascii?Q?mjkWr++GMi90EnPt+hdEGQp3IqwAVlXw+IgPac5AY1bxpRQKJqtFSOEW7Yax?=
 =?us-ascii?Q?wBpeQVqVbqhus39ANBcD8YSjmFUiQgNSQXPebD1hn+0IIWoUM3AFAxuHl3hF?=
 =?us-ascii?Q?AkOtsgXc/mhDvCv/+2W34j3Soh0HPtbqENCX2bKVZK0XGI9H1VVDWJDBsm43?=
 =?us-ascii?Q?AVEIpEONzJIiO//tw5kH8QOTMlzp9Fmn++Inq3rAE37UJnSdu9SbCj8iwI2V?=
 =?us-ascii?Q?RILevdYon4Vku7WvK04JZyud6D1uy40vz57K4PP4gvC9mX1CrOlYIvRdK/jw?=
 =?us-ascii?Q?4rWXBpb8LMW4wIfSmZ+4mvdI3mmjt5sEX9XDOEzsd4ZlolrCfIQ1Itj8lZQf?=
 =?us-ascii?Q?CjIa6Nwgl5LZztE3q07TL3p3vxGFxdilqJn9wvAlvkl23wCt20toCSXU8i0W?=
 =?us-ascii?Q?S6SDX7WraLzTXBk4Io+Bcf3GTNGD9FQ6EvuLx3SDZS+XS9oGzHdX5fXuogSM?=
 =?us-ascii?Q?vxV7BbFtCWnrzn59UW83wZV/o0BikHlscDbKDK94KdWeBCvRre3gtFM4jFuV?=
 =?us-ascii?Q?/xvfv4zvJpVkSGaZiUozEY8ptg0aFeoJ4RZlshKEqRM7IQ2h5PlicFpoUPNJ?=
 =?us-ascii?Q?LQgbitrjConjBzWwEP0PusoRFKrtw7PG+11uhlDXXUmNSQkVTfFs+ndqJpUG?=
 =?us-ascii?Q?igRcgeGcIOTW8MdrlIaznXm5jbuUb1ExUXXqqvO1PaB/nI1/vnnFXy7R41yf?=
 =?us-ascii?Q?Ui/EqG1ON6DFC1VMJ1JK64cqwcvWjZvoI06Znam5wJh2+QKQduOrTwaIlFAZ?=
 =?us-ascii?Q?KGr6rdaQv/vdyvehTSLb+Q1DuR4B7VFvLBMCSH0Qad7E5RVtqd/Ps+H3gkz0?=
 =?us-ascii?Q?qF9yo7VKgUyiVh34fOu5Fqt0PqnrvS20iRRqIBi8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0896bf0a-2410-4423-0035-08dac6c32b4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2022 04:37:57.3045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mWM8tR1Qb5GnPgtNq3I0A9KB9tP6DDx7sxP56HpKjYaeClyo/IfQQUs6EEHjot5hBoSlkpWGrMR06HKsvi8jBtyUACnPBvQABHBmHxPC39E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5040
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 1/3] lib/igt_pm: Refactor get
 firmware_node fd
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



> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Tuesday, November 15, 2022 1:27 AM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; kamil.konieczny@linux.intel.com;
> Tangudu, Tilak <tilak.tangudu@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>
> Subject: Re: [PATCH i-g-t v2 1/3] lib/igt_pm: Refactor get firmware_node =
fd
>=20
> On Mon, Nov 14, 2022 at 06:08:41PM +0530, Anshuman Gupta wrote:
> > Created igt_pm_open_pci_firmware_node() to refactor the retrieving the
> > firmware_node fd code.
> >
> > igt_pm_open_pci_firmware_node() will be used by other firmware_node
> > consumers.
> >
> > While doing that fixed the leaked fd as well.
> >
> > v2:
> > - return false instead of igt_require on no firmware_node_fd. [Kamil]
> > - use igt_assert() when failed to open 'real_power_state' on error
> >   other then ENONET.
> >
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  lib/igt_pm.c | 36 +++++++++++++++++++++++++-----------
>=20
> I believe we need a massive refactor in this lib... we have 2 different w=
ays of
> using stuff, plus that ugly global restore...
>=20
> but anyway, this one here looks a good change regardless of the current
> mess in the lib.
>=20
>=20
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Thanks Rodrigo for RB,=20
my bad I sent these patches on kernel mailing list instead of igt-dev.
I will keep your RB and re-float the patches to igt-dev.
Thanks,
Anshuman Gupta.
>=20
>=20
> >  1 file changed, 25 insertions(+), 11 deletions(-)
> >
> > diff --git a/lib/igt_pm.c b/lib/igt_pm.c index 1e6e9ed3f..4f0cfbdd1
> > 100644
> > --- a/lib/igt_pm.c
> > +++ b/lib/igt_pm.c
> > @@ -863,6 +863,20 @@ bool i915_output_is_lpsp_capable(int drm_fd,
> igt_output_t *output)
> >  	return strstr(buf, "LPSP: capable");  }
> >
> > +static int igt_pm_open_pci_firmware_node(struct pci_device *pci_dev)
> > +{
> > +	char name[PATH_MAX];
> > +	int dir;
> > +
> > +	snprintf(name, PATH_MAX,
> > +
> "/sys/bus/pci/devices/%04x:%02x:%02x.%01x/firmware_node",
> > +		 pci_dev->domain, pci_dev->bus, pci_dev->dev, pci_dev-
> >func);
> > +
> > +	dir =3D open(name, O_RDONLY);
> > +
> > +	return dir;
> > +}
> > +
> >  /**
> >   * igt_pm_acpi_d3cold_supported:
> >   * @pci_dev: root port pci_dev.
> > @@ -873,23 +887,23 @@ bool i915_output_is_lpsp_capable(int drm_fd,
> igt_output_t *output)
> >   */
> >  bool igt_pm_acpi_d3cold_supported(struct pci_device *pci_dev)  {
> > -	char name[PATH_MAX];
> > -	int dir, fd;
> > -
> > -	snprintf(name, PATH_MAX,
> > -
> "/sys/bus/pci/devices/%04x:%02x:%02x.%01x/firmware_node",
> > -		 pci_dev->domain, pci_dev->bus, pci_dev->dev, pci_dev-
> >func);
> > +	int firmware_node_fd, fd;
> >
> > -	dir =3D open(name, O_RDONLY);
> > -	igt_require(dir > 0);
> > +	firmware_node_fd =3D igt_pm_open_pci_firmware_node(pci_dev);
> > +	if (firmware_node_fd < 0)
> > +		return false;
> >
> >  	/* BIOS need to enable ACPI D3Cold Support.*/
> > -	fd =3D openat(dir, "real_power_state", O_RDONLY);
> > -	if (fd < 0 && errno =3D=3D ENOENT)
> > +	fd =3D openat(firmware_node_fd, "real_power_state", O_RDONLY);
> > +	if (fd < 0 && errno =3D=3D ENOENT) {
> > +		close(firmware_node_fd);
> >  		return false;
> > +	}
> >
> > -	igt_require(fd > 0);
> > +	igt_assert(errno > 0);
> >
> > +	close(firmware_node_fd);
> > +	close(fd);
> >  	return true;
> >  }
> >
> > --
> > 2.25.1
> >
