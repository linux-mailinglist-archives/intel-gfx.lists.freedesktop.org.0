Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA20634377
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 19:17:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D82A710E19F;
	Tue, 22 Nov 2022 18:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A2C010E19F
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 18:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669141039; x=1700677039;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ey39nlcVQ4Imdip58DAQH+cDNgAnZCh2hUr1X1jOeIM=;
 b=EIyzp6dsSX4rHJydO/PxIAAUJN7E7mfYZVtoUq7C1OIeEBf/Iz8bQ2Lp
 hJQzjWtoquhZmDxWPaEKtyf28M0hT4x5XSFtekJIgrrceP/RbmZkZyxaw
 CnNzYFX4sIjafNcc4WT2DP2oR3a9J/kzz9Hg7HJVm7I4xRXk9xqkIhqn/
 7/aChYrBIRt12lq0Gicr/Xa9+SFxrK1ook4Jm5bj3mHb6HBc4J3ma3WSM
 J6xjSeYNWWH8FwC2/uiQPf9eCNb2bhJ/dbbTPOjM3KR6ZdXvJbpvuUUKV
 DSeWLspStR9nu55yX8rjLNsKl1jTGjhNoz9ONTl008nOitO+ecDShg+Ir g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="400173068"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="400173068"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 10:17:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="783932363"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="783932363"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2022 10:17:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 10:17:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 10:17:17 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 10:17:17 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 10:17:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ql2dRFwIbLTOal4QjUzJuh+BmEriY2Aydb/jUoqzf7eQfkq5Msqwq7X0lELlmE8Ra75h3gsLcZ90Dmb487//3K2hqZuE0gFiYCoOIb24CwwQuHyxVX81BVe44DJP0GAwGONas5GlhLP+hS3Kdcm/JExjnYTBWPdoepZnVCh3CGuVxoQ/EK2bkrRf8UTos0gRc+MlpYfs2NsTeIbiqFFKvBzdbABdlyep/HkNOiddu8jbNCmoDieWEPkn9n5eXkl22M8EtEb0yjkdPfi/mck8SOFRe9kUhijwd0k+ScEqceEjku1fBjb+EmzY5uLOvr96S2kW3u4wLSrkLqQg9veIJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YW/omfDP+X5ZFbgPlQ9nlzQf8TeNmxoGnARvsdMwcc0=;
 b=A3taEJOe1mYlJkFcG0EEmXXWDi7G/MIMuVKfYgrTgS2cc3pn/zQjf54WH22t8ql4sR1PeWUMHfW90+iyv+stJrbJJ0Fk7C0gx1CFQDpMwRkwru833Zr4af1lrUbK16btWmlST2wKBe8/u1pGxCeL+lED5ffU53J1OBS/ZDgmTN7JohmCyl6unWboUI9UyvMxHZHYXyoR8Mj8otLUJDaWcF/230r7t9oi8W5x3oSpXbFaI+288P/4YULWJH+h73HKBySkB+DyiyiAcYocJ7r+SIi8o4aTvhzYhtMXsmcayyI4nwyU6ajA1w5VDBGa0G1IHZ08391bxdviSbrPvcff2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by SN7PR11MB7041.namprd11.prod.outlook.com
 (2603:10b6:806:298::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Tue, 22 Nov
 2022 18:17:16 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 18:17:16 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version to
 v2.08
Thread-Index: AQHY/mwHYzrW31F0cUWar1ew15MaS65LMk1wgAAK7YCAAAMFMA==
Date: Tue, 22 Nov 2022 18:17:15 +0000
Message-ID: <CY4PR1101MB2166B4E880FEF54845E85026F80D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221122121343.18136-1-gustavo.sousa@intel.com>
 <CY4PR1101MB2166D6D3BF6E094DABF5372AF80D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
 <20221122180543.4arm5bkfjjfvx5lt@gjsousa-mobl2>
In-Reply-To: <20221122180543.4arm5bkfjjfvx5lt@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|SN7PR11MB7041:EE_
x-ms-office365-filtering-correlation-id: 587b805f-8d42-4207-7142-08daccb5c90b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CU7zO4IDu8QcBhga7kCKEzqAjWV95egvx6Tlx4j5YTncqA0poJpmbObZDKh0SznwZtmaqaPh/OYRdvK/UV1+CtGYcWJnu2W+wbGkm6LM8CMuluegGB9cMQh0hH71Pgk4I4SC4+Vi5wzhw9kR78kaoQYS/gR7MQL4kmd9zomSR1xTbuwKvYsdrZnWWjBmUZwdKd2CMndXEvdhGpgabt4RkoSnju+ga4EbQad3yw+ij7XO6RY3uOAow81jRZgSagLwdM2DtKoNVxrdWn4kIR93sRN3+fV/MSGZaqjNXvqDyWvApyG0mJEFwZaOW3As47wUUERf+LVwloyP5UkVG+Z6DFY9rBcxGC5VnaTU9OUsEAf/VjTMXmUd5rE7s/0YpVthHyO/lqDAX61LkFZ98z2qR/ccm/oh6aN5NeVCj0f/N1hqcbEpw40ovTlM05noeVP342/RWyzkI3NPRj12zImddmHX2/RwetGLrap+UQyxhSB/BO0nTP98660cm3PozvgQ94ME2HIjZ5i4CMMglwUwMVXLyLqll5hSMw9TxPMlzRZh3DNj+DE92CNmgmQGlRF890kP13nccZQBBY01CxPEnJHnfhorFjnwCNX7xxOCtzZDZFg/GlP13OUUfn4IiU7Vt1yViLyBZDljgwhf+o/DZjfK1I/gwzyEq6mN7svGdaiWFJzCOZYZp9gxFHGjaEleh078JpB6WUIWMGcLUwgnEQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(376002)(136003)(366004)(346002)(451199015)(2906002)(15650500001)(83380400001)(122000001)(6506007)(53546011)(478600001)(41300700001)(186003)(64756008)(66476007)(7696005)(26005)(9686003)(8676002)(76116006)(66556008)(38100700002)(8936002)(52536014)(66946007)(5660300002)(71200400001)(82960400001)(38070700005)(55016003)(66446008)(110136005)(33656002)(316002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wzZ6NaqMpy0/MKMJ8Bj7wYvOgDIfPy9rN+w58GPP9xHD8G3Ab5Bla9k8C4Ss?=
 =?us-ascii?Q?QugHOKdEKvKvCFcmUHI+9ZJtdJj2mgrTN8+53UfsRTEewRApyJo2XL2Bfe0s?=
 =?us-ascii?Q?/j7elx6hxdAFPe94l1U/fSL+b9MiD99glG4mRk9QCfDs2Kqpk6O/SVsH0M+x?=
 =?us-ascii?Q?6U7SHDWk/kVPFxSgoE8fMs4ENgPWRtmcNHLlfg1FJEmlf0aw22Rgxa83zbBT?=
 =?us-ascii?Q?uaQhHeEyRFB/EluS9vnvSgNbqpwx3mutVuDBTFViCeIpwlFcHuIFLp+11IAC?=
 =?us-ascii?Q?UqStV730Yqq+ulYd6M5tKYMHF5K0WyaO/9Mb4kg5X7AXj8bt/Ev8rVclmsKD?=
 =?us-ascii?Q?d7KREu7KrKcGvqthmrOkvFpJY1AeQJ2pJQeBdRkO0p5kH8bAXcIfkMf7Q/0c?=
 =?us-ascii?Q?rFRFWfLufYgU4z3aEwkLYIfWpc7nxFXhJBs0IBuZVkIAZd7Hv6xGV2a9Jpkh?=
 =?us-ascii?Q?BUoQQwkJ4qo92w+CI4meFkMGU0w6FqBWOAcjZXQ008lDZS2xskl55g9jovLN?=
 =?us-ascii?Q?JtOURnFKX7uOcqWY6sJBRicKHjq1U2XkysXz32I5ni2KDRnI8VsP4erSycm+?=
 =?us-ascii?Q?jWYc0UnbZKNCkcFYXmh28efVKCF+RDaqn2BTsmmTXMwhexNtaLNgT/nnJ7M2?=
 =?us-ascii?Q?GIuuB0j6HDeHKa6Bhd7z+wxCOt6k4sTB5jYW3UVUs4eZ3ybNNoRK+KaSRv/U?=
 =?us-ascii?Q?Fup9nPbDZZIDkd+YP0nXWfsKFpERe14pVGU5PJcuc2hxx9YnldUPcl5RR7QO?=
 =?us-ascii?Q?6b+b7KuDW2Iicjs+JQafY7mqgxWgXElrqSEoN+W8vW25MSECIeHVMHU7E8Vm?=
 =?us-ascii?Q?tWK/HBGfBlaUviKpg9Pe8NhnJWdDIaGJb5l13xhcQZXYQrV1IpmkJNn4fi/p?=
 =?us-ascii?Q?Al0STMP+qv/y4zuCBCTHuGuiO0N9oouIxUWPmrIc6jhyvZBNkYTpCFog8BE6?=
 =?us-ascii?Q?RQpNZTeIML3CB+w0xYwqRbyNKk3bI6qyjjbSYK3y4iFP5iMcnToetsM6PVvD?=
 =?us-ascii?Q?viEuy+2UhrzfVxx9s/1MzZgIUrI+FdrXQ+uPpcTduOU4R85kBdBkmexKGbXs?=
 =?us-ascii?Q?E9MkAQ+b4Qet3l2i4V+zj9YHwBNvP25CKnifZChtUgrUTybjwX8eIi7T0gIp?=
 =?us-ascii?Q?kZPP5GOUQOZUcUpNV4OZFG0vp5nZJf1dKb/kh0QLgXF2Ghcr5RI3upTTqvX2?=
 =?us-ascii?Q?iEcQ5djgZZGtz+47+n8cthBiB3OXHFQqHXONkyzjYL+APcAaxPnHXQVNYd4f?=
 =?us-ascii?Q?yoTcoxIHOCeodrImw4S46l/mep2QhYkODLQrhn73DnTXAZtyi5RSknkxTsg6?=
 =?us-ascii?Q?7rizOKNgHV4mpIJ/0114+qGU79/Pdu/PTCNR7jyB7pWQ19ife6Fw5WdZa3Bz?=
 =?us-ascii?Q?BylYRnGLNRwC9J57wDovfI6goS5d/Nf45XvgnYf1kE9Yc8oPhcB2I+pECsbv?=
 =?us-ascii?Q?+4dJBUhCrvPKO0v4I/FkIsNqCBiK3+dhGPu+kuLwX7ONAjWyJKX92cjGnTNY?=
 =?us-ascii?Q?cYwYl0eK6zrbwKdDCci46b/Mk7rj5K5xwEpM0fclXQk0nd4SaAxsDh2RQ9sU?=
 =?us-ascii?Q?oAmuBR00L7BvObdkJECkbytXb2Ely1XMf8aeIYG/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 587b805f-8d42-4207-7142-08daccb5c90b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2022 18:17:16.0151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iusfHsklQghu/IghtPKx6tVwC4Wudh4VZq+5yfYqqjG2FdJ6BvGtLYRejHnoucpJSRDOpoXgPrt0cnAqaqo9tsCStiavEx0CEV53dz5OxmA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7041
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version to
 v2.08
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

Thanks, looked at the rest of the platforms in the file and the changes loo=
k good.

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>



> -----Original Message-----
> From: Sousa, Gustavo <gustavo.sousa@intel.com>
> Sent: Tuesday, November 22, 2022 10:06 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version
> to v2.08
>=20
> Hi, Anusha.
>=20
> On Tue, Nov 22, 2022 at 02:27:05PM -0300, Srivatsa, Anusha wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Gustavo Sousa
> > > Sent: Tuesday, November 22, 2022 4:14 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH v2] drm/i915/dmc: Update DG2 DMC version
> > > to
> > > v2.08
> > >
> > > Release notes:
> > >
> > > 1. Fixes for Register noclaims and few restore.
> > >
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > ---
> > >
> > > v2:
> > >   - Use correct numbering for the minor version (8 instead of the
> > >     invalid octal 08).
> > >
> > >  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index 081a4d0083b1..eff3add70611 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -52,8 +52,8 @@
> > >
> > >  #define DISPLAY_VER12_DMC_MAX_FW_SIZE
> 	ICL_DMC_MAX_FW_SIZE
> > >
> > > -#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 07)
> > > -#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 07)
> > > +#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 08)
> > > +#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
> > 							^^^^^this should be
> (2,08)
>=20
> The v1 was using 08, but the problem is that this value is interpreted as=
 a bad
> octal, and that caused the compiler to rightfully complain about it :-).
>=20
> While the path should contain the "08", I believe the version required mu=
st
> contain valid numbers and we should represent them in the decimal base.
> There are other similar examples in this file.
>=20
> --
> Gustavo Sousa
