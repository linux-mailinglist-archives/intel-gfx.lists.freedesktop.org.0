Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3903A7C63B9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 06:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C07AB10E402;
	Thu, 12 Oct 2023 04:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6911A10E402
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 04:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697083856; x=1728619856;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rtWGZaWHcDRvaAOD0u/IuOJAEiY2nfzS1Oj1nexCG+I=;
 b=W6BDBg+peYgHisdTI1VxFPyzvwOs2rZWxMa3sghzAMmdXVRmf/aGLVtU
 HedfS34pP4EgqF67y0/0jX5xCi2AWhDp4HkGN1H+cYyYCPgD4Zvn1nLnW
 Hcekyjif3BNd03EMmz4okh+CG/+w9M5FSFoEuUzFX2Hd5FzWdR/CCe5aq
 ZI5KGvAb7704akQVOylwVFThOYWZdX9NLJSMtashqQoBxZSyBrQ/YFQxP
 8wD/YL3+U8t3dqWzsC5pheNRnA3jxt9qpjl9cBWwy5ezlTKxQIreElNLV
 sy0JQCjgx6fwH83RPLysBTS845L9fePfAbLOqipaGc8q6D48QzqL/SEzY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="364194700"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="364194700"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 21:10:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="1085509820"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="1085509820"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 21:10:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 21:10:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 21:10:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 21:10:54 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 21:10:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C0gxVorkrJfM0beZOA2jjroDkjcjUL8YZDNR925NcZabatVk+HJ5lNDb0qfjTNQaJA43tlZ8eLWlc3ugbtWnOH+EgnH63kfQyzJ9agFpTWUa2wyw02Sc8HFBQ+p/aL4D3ccC/ImYzQeoBroQk/tPyj55FoS4xDNz/XQY3vmFnbYMw+BVaPCFK67W2bAk0WocVnJPeG4btHVcnr/B3NEWCAYW4Ex6DnYTvO7sAH6os9kJWMjTj393JSpC5Qlw4bfnTFKTvZ9gLFjdu9+RuA4YXSYPyfDo9olvcBbScRVebsIntcOlKI0nbRoajJq8FT3gXBbpt254zV/lkgpqR50TJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZFu9HdV5DlA2LD71N3NS1SVTigJVWuLN5fITfghgVFQ=;
 b=I5eHE9EVEeDzNrKYRiFDEhRH+yZjT2S3ChJ1UofsBQeMcL6GMSetZi+8v/mbuqtzAZ6eLYHzWRDu5+TBsHYL0vS5z+7qNhvNXL/kLs6IDUe6gTT9dQNfQ5dD4MdArq72vmOPx2wo+Yt06jwEmCw0KpJeUr96U5Tu+QNcwI0BgSrcoGop9s+4i7QsM0MduRO/kJTGl59y2dZA8fcBgzrYy2Evi28u0pj7XQMHSJU1D67hHZcWjKDLX4H1ozxGy2JoO+ggJhINUqB1y7hcqWrtRxb35lSkJU231PLpbpHq+xclpvOHU7rGG6GQHIcH3c3b4lhswqywj6BzAe0GHzWxLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA0PR11MB7749.namprd11.prod.outlook.com (2603:10b6:208:442::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.43; Thu, 12 Oct 2023 04:10:47 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6863.032; Thu, 12 Oct 2023
 04:10:47 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v5 0/2] Refactor i915 HDCP for XE
Thread-Index: AQHZ+pcqYM4GLWAaVk+Ny17wKyYOdbBEk4SAgAD4LSA=
Date: Thu, 12 Oct 2023 04:10:46 +0000
Message-ID: <DM4PR11MB6360D76697065B6A563B5F3AF4D3A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20231009095537.653619-1-suraj.kandpal@intel.com>
 <8734yh484o.fsf@intel.com>
In-Reply-To: <8734yh484o.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA0PR11MB7749:EE_
x-ms-office365-filtering-correlation-id: 9c09b3d2-76df-4620-7832-08dbcad935f2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J4WCcxX4hOqoK0K5PqW9MZedMYkej1Bc+RuvklhDHhiSvNsQOzVKBEQ3/VDq98vDCYwcYS4aAaff3z0I8QRRs2DGvNLe/cDCTph/6fzs1SpR8CleTerlv90M8C5Gry80T1mc2k1NWOzmPVnEVOZKr7PUgStMugcXhG+9a5a491yFqd45CEB709oPCtiN9qoe6lYrpnm7QLZ08/zShzvRPqP4ErePxzIbXq9WZkG955tqV/gyeif6orN+uTIHWpoqq4ODxTzju6MaCkQNQbYTHw5JNpFcnLkrnn4Ip4Dd7qpRP2YnN1BdRG6oaB/tcqLxfyCaFAgmqaZ99Pe+I1r32uKamt3D1sn4KaGjSNkjWqRR72ZVSdpdUIgOe3xUihdCY6YsKiXm8BedHrB0Cn/SB5+mK566JlPik3rqOBlQfHKS62LfxPh9fyCG5s/Imc+6WAA09NGT+lTZ0+8gZ/YrI8cuq4fgXtMI4Z7HHnVwp4ykuUwuKRsYkjKHQ3RQvpMGAkL3pvTNdFCIdfMJoaTy1auYdtK2j0CBiJrD75kYQf4hmqSVYq0pfQrU1p38h2o+Os1KBS+aeLCKKvBnN0Vgj0RChoJUkf7sqiwhoLEKUR5/dAkS8n3aO8OnsR9vh9r+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(366004)(39860400002)(136003)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(55016003)(9686003)(76116006)(478600001)(86362001)(33656002)(6506007)(7696005)(53546011)(71200400001)(122000001)(38100700002)(8936002)(52536014)(8676002)(82960400001)(38070700005)(64756008)(316002)(5660300002)(66446008)(66556008)(66476007)(110136005)(66946007)(2906002)(41300700001)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0eauMIkG7UB/Vgf8o9U+9i4oObpNzCNNDLqhMm7jHhpa2It5zqvA6FxHeT33?=
 =?us-ascii?Q?44Zszf/zN6uK/dcs9eYgj2TCKx00lCaaM8DK+SWT1mOgZwArQdXP0GlhR/ML?=
 =?us-ascii?Q?EzfSW0x8Lzi3afiY6fdSahGwH39WfWJ0B7BfbULxBHxRqRJWLpJVVIffKJ/C?=
 =?us-ascii?Q?xGK9YWfypXt//aWZ+nHPKPlIlpWIGhyMG7jBE3iwGD/9+hjGRCu3kE44bikC?=
 =?us-ascii?Q?uR/FiXJHXzBjg1iaulkjc39ueR9vR8tmS0BsBIZ0AQ/pzTc6pUPzYMDw2LDm?=
 =?us-ascii?Q?k9BLGSXyoZocq3djCniG/kVow/3vktCaBUm3FC+Gc5PwStkG2IYLitSvUNl4?=
 =?us-ascii?Q?DUjWIV8FOBs7wFqgqJCrO+w0Ssbk64jNe72m4qz2UQv0VhWBamSHxquf6mkQ?=
 =?us-ascii?Q?hVSGbATIrr3ocnj6/prOfWETTkgmAqQDjFhjFUu58dm2RE3GlKG4Mvjn2fGN?=
 =?us-ascii?Q?e41y5ZK9QVkgGamecNpNo4GjVt+DZxKvQ4VE3ohhXliIMbeahNv+5BTIWYYv?=
 =?us-ascii?Q?zbJNar2dkhcU+DWC3hwREk5kUpVt20Ouykbr9qpF4HxSxrHJif2OeBqXx/QG?=
 =?us-ascii?Q?mAq/GmVgvh33BeJPgwqn6Uns1I2ibZJD+Hm0gEnbY0idJwa5UAjrNY8LNzFD?=
 =?us-ascii?Q?MHfTsgWdmXfVRfO7qXbDHBmQWUE52BfRgRHFHO/B2Z6CgrQI5a7tTn2l5sp4?=
 =?us-ascii?Q?rWMlVIsDYlRdRGCG+mmrDs0HyOPi8JyK1D5QnGIQSz23VVxk7mj/jDRWce25?=
 =?us-ascii?Q?jY04ygwOkpb6pWFkcJ+u+0vnJVT/m33DmB0BxgEITrvrhqyU5+lhfkigMC71?=
 =?us-ascii?Q?HLgBiK9uAoPnHjkFtqaJntJuBArJy3Uc9N5XpcwGE6M+Eqklf3H/N2Exs3lw?=
 =?us-ascii?Q?ohuD8N5tnFZxobx2Bc22+nnGAkyZQoh8FjVumuR0OOaUaFSG/7XeFqQ5l5Y6?=
 =?us-ascii?Q?tG+NXUqOnIo4VtxnMnksuTrEcFa+H5ZMcBvOzwT7qZ9oFVtkw5N/gaqEDzoU?=
 =?us-ascii?Q?ER62nxZTtbZs3l8ki9g6vyaSAQvIzkTRubhuu1As8fR34o8vIzM1uix5QXPA?=
 =?us-ascii?Q?DgCdx1KXnBv1p472cQo0eFdJf6XrJJqzAglconjKA23CEQiEjb/mQN508fnQ?=
 =?us-ascii?Q?Vz3OatbfS884jICK/vW/t2f0x4/DLR78rpSr878+HKJL6/YRYbGSGzyXZK7g?=
 =?us-ascii?Q?7fESzpYSrQSnTMg27pYrGiLcDtQftCsk0VM784MHYA94zmMIujbty8Yf4oY/?=
 =?us-ascii?Q?KVwb5b1xNVarJ5biH0hTa7rtsVsCH5Qtxy3WmRzKA9CoaKLSEuoeM4dAXX88?=
 =?us-ascii?Q?KbZUZfy9tTz1HRhG/2yoapC7eXmZG51fZwJO35jRY7l/eVLNtUlvR+mz7xbm?=
 =?us-ascii?Q?XEgl0KuNu8ArAY+ZttGsWSqqXXi2nMK8Ez9ncS3FwXLG/dYT1ehH1DdE/G1n?=
 =?us-ascii?Q?K3e1Y4Slw9HwDXxpZcXcFrQozq2wd6f2DgsLljLenZpSlzo1+fN4qsM6iXAI?=
 =?us-ascii?Q?8hi8CMlTTTkCY2YvCFmr+VxvWY1WUrtJ/S1i1h8YGZ+9KOhlNwyjuMpZ+pEQ?=
 =?us-ascii?Q?KtAUrQm3HIJK0AR+YKPNGGu0T0N+HFVcwLgDeh66?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c09b3d2-76df-4620-7832-08dbcad935f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2023 04:10:46.4512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wHyMxjJEsdX7UcQDOJhvEPvC7UIV+67+cPT7TjJdLBzIu1idbVMuxkM6ium5ivr7FRygHWZ/Sp0KbJtPAdQf/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7749
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 0/2] Refactor i915 HDCP for XE
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Wednesday, October 11, 2023 6:41 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Subject: Re: [Intel-gfx] [PATCH v5 0/2] Refactor i915 HDCP for XE
>=20
> On Mon, 09 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > This patch series contains some refactors for i915 side of things
> > which will help with a cleaner code and maximum reuse of code for XE
> > going forward.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Pushed to drm-intel-next. Thanks for the patch and reviews.

Regards,
Uma Shankar

>=20
> >
> > Suraj Kandpal (2):
> >   drm/i915/hdcp: Move checks for gsc health status
> >   drm/i915/hdcp: Move common message filling function to its own file
> >
> >  drivers/gpu/drm/i915/Makefile                 |   1 +
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     |   8 +-
> >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 617 +-----------------
> >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   1 +
> >  .../drm/i915/display/intel_hdcp_gsc_message.c | 592 +++++++++++++++++
> > .../drm/i915/display/intel_hdcp_gsc_message.h |  72 ++
> >  6 files changed, 692 insertions(+), 599 deletions(-)  create mode
> > 100644 drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> >  create mode 100644
> > drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
>=20
> --
> Jani Nikula, Intel
