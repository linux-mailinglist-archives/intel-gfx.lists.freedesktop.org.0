Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA93869CF5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 17:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 181B910E93F;
	Tue, 27 Feb 2024 16:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W7f/kJmA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA4F810E942
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 16:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709053062; x=1740589062;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=32RjoUiTssCyZgVgbZWr68y2HjvflqmCsQJ4GDFnH7g=;
 b=W7f/kJmAf8k/SdTt3I5AnjWCL4JAJugyOa8Zfo1Xksld88h8AHOR2aYO
 xQyVre2726VZMAIWWAGA4nQ2czhIhCR/heSMnmvBEFdByX6n6YAYThzYN
 MhcPFx0fSiyk8cDx3QbR/DFVyCn0chsLBW8wZgPEeFPjj+pjDAydRe3Gm
 cBaJHlqEkeV5PcpKsU0mpiaT1tvVnxfAE4jrVvUvr6SiwVjZ0wgCpa6lB
 9s+CeHcQtAbne8k8/nPr5CdxxTDeFcQNZzL72tlihuJRRzy68eSAxylom
 6MfrpqFcyiKJH4lHp24VoHad48Qze7KRxy9tUvE2KqxNVQ7/mdPuPJQ7c Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14115277"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="14115277"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 08:57:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="11701755"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 08:57:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 08:57:37 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 08:57:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 08:57:36 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 08:57:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SE42fq8lZTxQyXPhx/uFWeHBEqgx0HxZw+5g+FP46PdL0Xo1oXphuA2NQLQUnhAMEUFB5X9m2A5BcG5iLbdm1HjrwF8M0fFuz8WPpCyk+8ne5lcIGlVDZup2Olkzd7vbx2qwMdYzMvfOZh56IKe9Rd/1yOPRm+RCzKlwHsJxkG/YZCkcPoaS3WVT0rcxOvOz1xuHM+TMVXxPcnOwWGrNJlT9ZdWTwPpR7O1FouxM0cIrgvajPl9U1tuF+atAwzUwCcbFPfeDAkjSvKE/KAlrMbGAKFaT0tLGjyCybNUFyp8pVWtou3M/PPGbQdWJzV1IiCIjkIZpIPHerSu1XX4NeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=32RjoUiTssCyZgVgbZWr68y2HjvflqmCsQJ4GDFnH7g=;
 b=lzqY3QINXW4xyXynD31Sc3fS9xc7yaamWGlwU2IldpcuadTW6r3zjC/B5ZiL8RnGJ+eTxFe7HaccMljPoYYlhH6/kE1NQSRXw3AwVrahkBnMkMIrQJf2z5u297llZDYvj+JfKlFknltUgLlJhiXc2yUOb28NKNFbT0LNU8hYY/2gcS6gXIAdkGeSW/B6MyvtFkPIhMqwuLC1FV+p+hTk536tfztf4U8UyKisaKdqHDmTecktS/7BjEXw1qB6NuP5C2ASTmGrwtCYase4q6fQwvQw1c5YP3gMEUJFVCk7vzZHMyj6YxFxOStEVkFPoEKLJKvhrIrZb3zgbFukuqa0ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 CO1PR11MB4882.namprd11.prod.outlook.com (2603:10b6:303:97::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7339.24; Tue, 27 Feb 2024 16:57:34 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7232:ae38:bcdf:ef14]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7232:ae38:bcdf:ef14%2]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 16:57:34 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Roman Lozko
 <lozko.roma@gmail.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: Linux 6.7 fails to boot on Core Ultra 155H with "i915 GT1 GSC
 proxy" error
Thread-Topic: Linux 6.7 fails to boot on Core Ultra 155H with "i915 GT1 GSC
 proxy" error
Thread-Index: AQHaYyqJ4aq24HLwek2Et/OwOKHKf7EebJwAgAAI1iA=
Date: Tue, 27 Feb 2024 16:57:34 +0000
Message-ID: <DM8PR11MB565544EDFB7827C3D562D981E0592@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <CAEhC_BmNE-RQZv35tBO5sO2n8=+BNHCMNRHnZc87EP_nBiq26w@mail.gmail.com>
 <87plwheuyb.fsf@intel.com>
In-Reply-To: <87plwheuyb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|CO1PR11MB4882:EE_
x-ms-office365-filtering-correlation-id: fe65a35b-a245-46d9-3c1c-08dc37b531ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gFCvK/IUpqrnwAfX5N15+IOmU6jREV40bqpNIP4fM4qS0kveYRQvJg/pNLp7jhKqy8u61jFGXB+hAKHvHHw7PoYopTuqSHfp4/LMMsP0uxv9Hopy9qTkbC8DAdfRAvz6Aq5nu+kK7vDEiiTBPdztQ+wafETCGWdDFDO9epIRvqg872ZGUs6KUxHqV/Y6UErQZL5Z2z/kydv2WkGxGxVMMK9Lb+eAc1frR5s06jOBWcELvga6HcAkiOFMOJpnfkHIFfxyi0DYBC3TeqCCP0qSDsS4aG17ni1oWEWujDRsp/DL30lRTpzoS1LhcUSUT9SDMiIjJmydLJQSowTYi8LgdhJAdovUSNxr5XaGZtjfYhAASTViGMc8UqCckK9W3gd52N1F5QJ4pHfpIoybCAvbdvn5P9xFjZBzNB4K4FCH+xAi1fowTMMhZ6NaRqdniHKTVylVqc9zNv0+Ks1N/whLzSf+C1Aga0yFsxozaTo1/oALjcA0oVZtkOfrxlacCnGVqypfNj3KEGJP5T9lEGTKUcIUN+6AkWbebtKk6jbM94lUBten9QqrrsOO5hwgjwMGOF7QdvW/fBAlVgdWjxQlQNnTrybgbITuKSmFrKFSr/VQKC0ma11EigtvJ7ofakAH4leMztfAXKSWPkK6DIgt66ZdbU+sAIiStHWIc6o21lCY+KyI7BOPklflWVhtWc8l1wUrPKx/Whfc8pvL2xPa/A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3sD2/npAXULC0WCK3uT0GAgb+Io6WtN2EJ+yiCG4PZHu8pdBrnTM0fWLTPQA?=
 =?us-ascii?Q?xIW3AueXolQhdQxSJ65ekAcUckMT5YQRV1NXnCAOpw2vWvOkAz3SLYTcyeLf?=
 =?us-ascii?Q?OGspfwp7rFUPiS9mT1CAkaUvNBw0TmsJx6I8/X+zoqvGF1jag7Zsu6YkSRO/?=
 =?us-ascii?Q?5RUrT2W7FkYxaV9J5xv3VPiI7MymOuYqzIcp+TQn8+G423bcWtG+ux09G2BI?=
 =?us-ascii?Q?087SXcckVt/hdN+cgRqASHWwFHFqBFsDVdA07Oz60thMWe/RPt2Ijy3qXRSv?=
 =?us-ascii?Q?ePzu//jY3tc0EX+mYOg1kntBhmZQWXjbJEQihS7HA/15SESn7Jmsq9rXG/8a?=
 =?us-ascii?Q?PROprM7bc8JXf3mXDdzS3UUJW51iI6Y46+PgdjkmkvyI6RibxmOSqZujvxvQ?=
 =?us-ascii?Q?CGRShvtFOpPRYhFZkbBUcmpeCsoUZY/ein7/op8QtWSPT1zYplfH8qqajY70?=
 =?us-ascii?Q?0grjcUrlw/uXk3r8A87EzFcpKL4KaAYutWmY85zoTJ7dYDzsb0VTjmzBHh8u?=
 =?us-ascii?Q?ezGA2UqnM51MlBtEk6a/DJD/Vq8UIJZe0fSHXzW9B2URbUppt0Edw14FwC1K?=
 =?us-ascii?Q?LkXQl4iwoM8zh1fcoWreCLiOOah7hnGaHbN+WU9FGlvDN6qb7nTXv629dogl?=
 =?us-ascii?Q?+5y6AfjAw9ceHJoNRZNM47E77UGTstjzkHgyHm1UGcyXR7TY0scl8VeVHWEs?=
 =?us-ascii?Q?srpfJAaB3ZCentuAg5VjvoRp9K3bzcVcm3Z7pX98nO/YuNe+xX1JQpoG1dZW?=
 =?us-ascii?Q?DeY3iI3yvOFOm8MybJdHMT5Lg2kgHZNDj640HsbgG5QnnNijsQ16LCc0k2eu?=
 =?us-ascii?Q?IIj1NlIc2T6mw/e8j/dJx/BPK6CB0nW+Xsy5MTZecUB+qp0JcUVOhYNiKzAm?=
 =?us-ascii?Q?eOuHkQjNQCFwhTbjNCHzLrujQF56gDi+H0PRvz+pI+vxsjDnG6XKnaPBh9e9?=
 =?us-ascii?Q?BOxky+/bSXm5oAs5xVFr4xKKf8Yl6JaGSIomo//fnA4Rr4lSQbGmvc5tKrN4?=
 =?us-ascii?Q?NJ+PgHRxujL/HE2Kigt5AsQK2oZIokS6RnkRSaePDmS+iNi4j4/SrMi7ERUC?=
 =?us-ascii?Q?pPiuxz8kC/F3ua9eICWB4TSKEmXzatJ9xv8K6xLAgLRZsxHUijrXqVlZk95X?=
 =?us-ascii?Q?Ovnal5zjnT7v9my59kLq1oAeKR+tMtMlK0XhFF91wZZe1t2N5wmtGC/LJxoA?=
 =?us-ascii?Q?y0xJ9vHiUrzKpsxsVlg6Bzh6arMtiaEKfSJ8KiBgirJ1FXtAgk2MUGvebag+?=
 =?us-ascii?Q?gH9QtX5ER2mr2Q2t0+zwSpS1ELe/184EECY32s0sDO8zZJ7R0W5JGhnqBNHw?=
 =?us-ascii?Q?faIntfZWsKRFoB3v0iYIr2QsXPywR661JMRf883Cz08JNdnwJ/sXHiR3aC34?=
 =?us-ascii?Q?DF4FtXQXMMjof0ibzEScyk3aKUG94UhMsQVJpvywJ76dHhS81BIi1bwoSZPz?=
 =?us-ascii?Q?cr3EdlJ9clghAlwZLmhS+u0SXLVUC119sP4klcu+EMqo5E2TUmPf8rxwISI9?=
 =?us-ascii?Q?MxR8L0A0pZnrzk0bQ3DQ70CWt2Scs45FVnIJvy/tDtYCe/fHLaKt8MlUnzqL?=
 =?us-ascii?Q?UrVsAOXONgiScm4GY36bTFM35Xvy8kr/gLbDtLIT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe65a35b-a245-46d9-3c1c-08dc37b531ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2024 16:57:34.1067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UYkhGQlMEKe+45T3Hvkdd9iuuUcszf7boXY83I9JrXhFCrFZYcIXWxqlj+2JxWmvd7XNQeYU2aIeiy5dA2x2dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4882
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

Hi,=20
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Tuesday, February 27, 2024 6:25 PM
> To: Roman Lozko <lozko.roma@gmail.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: Linux 6.7 fails to boot on Core Ultra 155H with "i915 GT1 GS=
C
> proxy" error
>=20
> On Wed, 14 Feb 2024, Roman Lozko <lozko.roma@gmail.com> wrote:
> > Hi,
> > I've first filled the bug in openSUSE Tumbleweed bugtracker
> > (https://bugzilla.opensuse.org/show_bug.cgi?id=3D1219899) and then foun=
d
> > Intel GFX CI and that it reliably triggers the same error in Arrow
> > Lake BAT runs.
> >
> > Don't know what else to say, so yeah, system does not boot. Is it
> > expected? I'm trying to install other distributions now to see if
> > there is something different in their kernels.
>=20
> Please file a bug as described at [1].
Same as https://gitlab.freedesktop.org/drm/intel/-/issues/10194 ?=20
Does these help https://patchwork.freedesktop.org/series/130020/ ?=20
>=20
> BR,
> Jani.
>=20
> [1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.ht=
ml
>=20
> --
> Jani Nikula, Intel
