Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA52C81CEEB
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Dec 2023 20:47:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28E0810E7EB;
	Fri, 22 Dec 2023 19:47:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 721ED10E7EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Dec 2023 19:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703274472; x=1734810472;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xkCk8b4jPmvMXFiaRmS0niQl1C6c+3gKngjNtROkgbk=;
 b=bYlRRWcYam1L9nPmRgJmoJG+D1fIpSWBEhdvmUdcFl2Rf2yLqfCK+fXy
 H21PR7kf3XN6O0CZU2TRrOW0FoTCtD2LSLf9w0sKBf+8Rl8w5Yoc/mq3i
 fIZ3Fe9pBz8NK5EuuNraAkOxGGe8e4+jRFUuMVORgV80cXVLt9HMWCAQL
 XU5IqxjJEN9J90Ok7ZFF44PYazg0ti1DkZAlAVXe4jq7Jz1atrWkQmzkz
 H7ZsuKsLQpW+PZ+J4f/Jh//yaN/PAYR3fqMCCPJSVklZfbJDLU9Yn9oWy
 yEml4HGAEwbNn8NS4qn/Bol0OYp4CCCXaUsJ7Nr74MmyJojM+AkayU33x w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="399976463"
X-IronPort-AV: E=Sophos;i="6.04,297,1695711600"; d="scan'208";a="399976463"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 11:47:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="753347433"
X-IronPort-AV: E=Sophos;i="6.04,297,1695711600"; d="scan'208";a="753347433"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Dec 2023 11:47:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Dec 2023 11:47:51 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 22 Dec 2023 11:47:51 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 22 Dec 2023 11:47:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E1hYmC9OjLr0uS5ocRZGc1shfz/Hfo3SM1ZXnagB249Dp+6/Ny9Gv74qSStxMPgQhK85lJfFpzZpfe9yRy6B4FLiAgGQ/cLn6/ShfVCJtjKKXCci/2wei5RYKa2V0gdhT/QsdUeCIQKyD1ezpgFXFj9kFYEWCNVHFcrVvivBoGEISzcerzYiqEWBM5WWINs9Ee8nOW6wJymVNuq+UCakCTztK6YjYCvgs9RBT6axdhdfZBWVTRSJQk9d0OpCp12ZDNC4JDsHn5CeaM1eORSLJpUmxmOFs/OROR4x+XPnLZSk//9C6LHrncMDdmKOAaiIqzsN47PNeY4wuyPii1uz3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kJNmmq2w30wjUf2C+2adpG6zugBj2mTMO208gaeZKlo=;
 b=itOklID2JZNz9pV6wQC/F9hHlsRGZD2yur6QzLFWT4ajcnTBbJCEr7SNCyq1/oWI6R4LmzRSd5erSIC6is6XuMyARlnFoKtdLAH1uw7fd2K7XaZ4cSH3OZS9uxwE5Z5DyEF611Adks99iDAR1Ewrmq/mkytQ0ctMq399X3eshvjPMOsybJFCFx51cja7HJFLErIZlMFniIwggdVLzpSLQ483jYxBU8UuNHhIL5SGlrRq5jRZEHwRssNN3cVUwDZvS2p57oTqKDcE93QArIGlLVu8x7ko5ue2XHpB/gP6JkjoefnzA4ry3UjY/7jBYrWlD+e/xhf1NfWPeeXDyCG1tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DS7PR11MB6272.namprd11.prod.outlook.com (2603:10b6:8:94::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7113.21; Fri, 22 Dec 2023 19:47:49 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7113.016; Fri, 22 Dec 2023
 19:47:49 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2 4/4] drm/i915: Separate tc check for legacy and non
 legacy tc phys
Thread-Topic: [PATCH v2 4/4] drm/i915: Separate tc check for legacy and non
 legacy tc phys
Thread-Index: AQHaM5IKWmT2gGHzVkqhVw9gNnQgerC1MQsAgAB7coA=
Date: Fri, 22 Dec 2023 19:47:49 +0000
Message-ID: <DM4PR11MB59716E93415BD6D650CC85DE8794A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
 <20231220221341.3248508-5-radhakrishna.sripada@intel.com>
 <ZYV2Zri+2ZlAFiIK@ideak-desk.fi.intel.com>
In-Reply-To: <ZYV2Zri+2ZlAFiIK@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DS7PR11MB6272:EE_
x-ms-office365-filtering-correlation-id: 63ee823d-fda2-40d5-1892-08dc0326e091
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Z9eAN8vIDyUsM4MBycJt++TuM81vH/n/weSkkGw5DNJVVpYqwOvkwbe0fEAAZ5eQqvNh81ETJCRHfY6/XTu2RrZoeVEvLWpxHmBAfS7GBEUYeb0dpbPTcZ7c3WdLlmkdJ1B8uzfzhg1CKPFzz5jjH9ljMtTBAVnFmnYda++s2+BGnJlQ1N8Rgd/4rfLaGUiDr46G5vVbZw+M1hwWodrsZsFcjf1oO/FXK/rfZAXh2Y5LC7sxYN2eTxdsx2yomA02XKXFb4FTuHEN3OMgkNqtNt4FiQA4FzuNdIdwqCSAWYhJIJL2cKR0RqCBo2jso5KAVMPcj7o1cmVRFiYK6gbCtYbKN2+WVZJ6D7iyHKh7OzbiGhJlrSGYoAHcf3+bMXMmdFltqiRBfZhDEOrOZuUw518QyFG0YX5xDlL9/ErohZ7S4BSNOCi6GRz5lS3ZVxxBCbl27DNL/gTBTCPZhuucRNKXOB3re5WNX/+aDoJ1yPXCV2iU35dgDeSTgemuHoLPtSqrxGpVxpy8RvADjIYM3GFnkIuRJKY7LLQhZzFa4QU0XNkvLFGv4OUgoDJVhiVK47XF5SdyUaRGnYhs2ZVGhPUErCZgXIxpITM9tIdOlLQ/lvD5uSVoRYWqBOvmp/zAqyIlE9ycIR15Bzs/OpLwsbny55/XqChQL2imgMI04Os=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(366004)(396003)(376002)(230173577357003)(230273577357003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(7696005)(38100700002)(83380400001)(33656002)(86362001)(41300700001)(5660300002)(122000001)(82960400001)(66476007)(6862004)(66556008)(8676002)(6636002)(64756008)(52536014)(76116006)(66946007)(8936002)(6506007)(478600001)(9686003)(26005)(71200400001)(4326008)(316002)(53546011)(66446008)(2906002)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P5QVDp3+tXYwVugWxDvsMx0Maub/6c0Pnl9Nt+ZhzJRqHRTxjFCn42rlpGJu?=
 =?us-ascii?Q?4LOdX/gUTaz/kgDDVAsTe0mbwTuxRn3kl28F+bHerVv4M1NQ3r+zFqezVuh1?=
 =?us-ascii?Q?EARm+Dc/xAdIZeiFnTMbX4cV4K+Pai6kitmPtZ/hrZ0awpxstFaqQK9FY6AQ?=
 =?us-ascii?Q?nwgR3JZpsuGajtEzLgOj1yQVdRMnvlounL0FJPAUppP5gM0uFRadL+FB3auQ?=
 =?us-ascii?Q?UZ8ljS3L2HDRPI+1i2kl3sErIETtMHV6j5iJ3okw/lvel7X1nNQBZ4FbNLmF?=
 =?us-ascii?Q?uW5WKNqG0jyEsxomuN9EYvpv0tUDm7NcQw9aiyyuNUADPgbVZRU0FLsVQtfD?=
 =?us-ascii?Q?Hqh8vMkQmPcX9JCwJZgHyv6BQsnGLyt+1T3uH2v3oNhmZlNLAkS3SHnWbPkO?=
 =?us-ascii?Q?ZHL3rWG+PfUDLD1owm0hV9Z64K0MCb43KsZ/awPoOt+CG6oAtdhS7d449HzC?=
 =?us-ascii?Q?VtFDlOSwpUVTnjHpjltxeU8wK9Jv45fw7v9/UltrIJYrpwYGGImKj04K/PY5?=
 =?us-ascii?Q?etBKnYXsRFxWoyryRLEkGWljzShpzq+vsjwecViYp+E2hqrmbGmGEdAdL8vN?=
 =?us-ascii?Q?odeHcVaK2k76EekeEyrb0nR8clMPRHW9WrzQYFjMkGLsMDMp9QttSBS0Qidi?=
 =?us-ascii?Q?H6EPlMphPm75Mp38qZW9nvw9ySrlOw/o5l1O4v7H4jAZbp5hbbTWvE97/6sZ?=
 =?us-ascii?Q?knub8nvzpzcGjYF0jqzL18+8EJcvU+3EufHOti7YfoPuAdeMDUV+ssdYwyoV?=
 =?us-ascii?Q?ssYrt7zxwWda8QcDlPBHnnPWKF0sErVTE0VGU2bFxtWl5iN3O0nU3KFhV0Q4?=
 =?us-ascii?Q?xuvl1QAWMxRaD3S7JXHiIXwZu5zAI1PPD9zjUoLT9WRT/ckcaXAE3QOe48KZ?=
 =?us-ascii?Q?wlybUsr88y1XY15gdxh+uDKoSKl5IjeE2vshvmyeC0Ip7heuI8oobhuXdVnz?=
 =?us-ascii?Q?Skw6/UCJa5WiVDzStFOfe0W8Nc4D2CADFCduvTqxNyOD23Ofec6XqRVN5j/A?=
 =?us-ascii?Q?p1hZkDk9KGl1cUkbED/wGmSCN5NHX6P2z5O+cPUzE6imR+DCL/so19ygLX5B?=
 =?us-ascii?Q?aFN3mCW6H9mYtd9lYahOiOsN5Rf0QBtOvpNsui1lK8Y3ey0JecyikDBUH1DP?=
 =?us-ascii?Q?MPbP8TvOKo7WX5ugR9P7UjskcOacwPEoCxaCftiTUWQyD4u1dWSD/ztVt1LC?=
 =?us-ascii?Q?G0ebwcxNegBSuGzsIWzmcNfRHfzJeBtuHSANHsz3zsq3cFiERORpT/XJOAGQ?=
 =?us-ascii?Q?XPajGoTuzzIKqzcnqdg7lWf56v8nvpT2JlrPAeQXVf4k3fhKjsf/FGAssfrL?=
 =?us-ascii?Q?uyuPM4hXPqluZm6UypCNmxgC+a1DH6M4VwljxZ+TUfSHo4mgZpjxQia5haWv?=
 =?us-ascii?Q?MG8WVfojSPbP4Z0x9iBsgCM2eEOo2WVrxH84xAceXPzLkZn+SIebA1wbgDwq?=
 =?us-ascii?Q?mDH4lrT584CPGNAhUaO4lJ5gfEj1cR8RDN1kjE3R9oPSnls9xn6nPtqHWUK1?=
 =?us-ascii?Q?6ajf2ZrU2Hv5xZR9qjIThS/0Yg79zRbY/M6BnzvwklIMrk2KsUG2iZayySBr?=
 =?us-ascii?Q?9SQrDajbCW8BlT/Y1Ito0j7/bn1FtUaX8dEuWZzvB+od4ylm604o6UNP2BgA?=
 =?us-ascii?Q?1Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63ee823d-fda2-40d5-1892-08dc0326e091
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2023 19:47:49.0595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BMT2u03vOG82blAYfaD9DYz6w3BRD/64LSFV8Db1RMdysR6Z+5kBvY+YQhRuOh0nslHvBv8Pq24fhxJTeLetDnmGtqPPxYHp5uENQGngp9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6272
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Imre,

I have question related to tc legacy handling. I am looking in the context =
of discrete cards.

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Friday, December 22, 2023 3:44 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH v2 4/4] drm/i915: Separate tc check for legacy and no=
n
> legacy tc phys
>=20
> On Wed, Dec 20, 2023 at 02:13:41PM -0800, Radhakrishna Sripada wrote:
> > Starting MTL and DG2 if a phy is not marked as USB-typeC or TBT capable
> > by vbt  we should not consider it as a Legacy type-c phy.
> >
> > The concept of Legacy-tc existed in platforms from Icelake to Alder lak=
e
> > where an external FIA can be routed to one of the phy's thus making the=
 phy
> > tc capable without being marked in the vbt.
> >
> > Discrete cards have native ports and client products post MTL have a 1:=
1
> > mapping with type-C subsystem which is advertised by the bios. So rely =
on
> > the vbt info regarding type-c capability.
> >
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++-------
> >  .../drm/i915/display/intel_display_device.h   |  1 +
> >  3 files changed, 21 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 12a29363e5df..7d5b95f97d5f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -5100,7 +5100,7 @@ void intel_ddi_init(struct drm_i915_private
> *dev_priv,
> >  	}
> >
> >  	if (intel_phy_is_tc(dev_priv, phy)) {
> > -		bool is_legacy =3D
> > +		bool is_legacy =3D HAS_LEGACY_TC(dev_priv) &&
>=20
> This doesn't make sense to me. PHYs are either TC or non-TC (aka combo
> PHY) and TC PHYs can be configured to work either in legacy (a TC PHY
> wired to a native DP connector) or non-legacy mode (a TC PHY wired to a
> TC connector). So this would break the functionality on MTL native DP
> connectors and all future platforms I looked at which also support this.


I understand. I want to figure out a way to determine if a phy is connected=
 to
FIA. Like in DG2, the phy's are not connected to FIA. I am assuming that wi=
ll be
the case for all future discrete cards as well. So instead of looking/build=
ing an
if-else ladder for the phy check, is there something that we can rely on vi=
z. vbt, register etc.
to determine if FIA is connected to a phy?

>=20
> >  			!intel_bios_encoder_supports_typec_usb(devdata) &&
> >  			!intel_bios_encoder_supports_tbt(devdata);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> > index b10aad15a63d..03006c9af824 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1854,17 +1854,9 @@ bool intel_phy_is_combo(struct drm_i915_private
> *dev_priv, enum phy phy)
> >  		return false;
> >  }
> >
> > -bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
> > +static bool intel_phy_is_legacy_tc(struct drm_i915_private *dev_priv, =
enum
> phy phy)
> >  {
> > -	/*
> > -	 * DG2's "TC1", although TC-capable output, doesn't share the same fl=
ow
> > -	 * as other platforms on the display engine side and rather rely on t=
he
> > -	 * SNPS PHY, that is programmed separately
> > -	 */
> > -	if (IS_DG2(dev_priv))
> > -		return false;
> > -
> > -	if (DISPLAY_VER(dev_priv) >=3D 13)
> > +	if (DISPLAY_VER(dev_priv) =3D=3D 13)
> >  		return phy >=3D PHY_F && phy <=3D PHY_I;
> >  	else if (IS_TIGERLAKE(dev_priv))
> >  		return phy >=3D PHY_D && phy <=3D PHY_I;
> > @@ -1874,6 +1866,23 @@ bool intel_phy_is_tc(struct drm_i915_private
> *dev_priv, enum phy phy)
> >  	return false;
> >  }
> >
> > +static bool intel_phy_is_vbt_tc(struct drm_i915_private *dev_priv, enu=
m phy
> phy)
> > +{
> > +	const struct intel_bios_encoder_data *data =3D
> > +		intel_bios_encoder_phy_data_lookup(dev_priv, phy);
> > +
> > +	return intel_bios_encoder_supports_typec_usb(data) &&
> > +	       intel_bios_encoder_supports_tbt(data);
>=20
> Based on the above, this doesn't look correct: a TC PHY can be
> configured by the vendor (reflected by the above typec_usb and tbt flags
> in VBT) in any of the following ways:
>=20
> - legacy mode (wired to a native DP connector):         typec_usb:false, =
tbt:false
> - tbt-alt + dp-alt support (wired to a TC connector):   typec_usb:true, t=
bt:true
> - tbt-alt only support (wired to a TC connector):       typec_usb:false, =
tbt:true
> - dp-alt only support (wired to a TC connector):        typec_usb:true, t=
bt:false
>=20
> For all the above cases intel_phy_is_tc() should return true. So I don't
> think this (is a PHY TC or non-TC) can be determined based on the above
> VBT flags.

Thanks for this clarification Imre. I am looking to see from the driver if =
we can make a determination if
a phy is connected to a FIA to make this decision. Is there a way that you =
could suggest?

Thanks,
Radhakrishna Sripada
>=20
> > +}
> > +
> > +bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
> > +{
> > +	if (!HAS_LEGACY_TC(dev_priv))
> > +		return intel_phy_is_vbt_tc(dev_priv, phy);
> > +	else
> > +		return intel_phy_is_legacy_tc(dev_priv, phy);
> > +}
> > +
> >  bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy=
)
> >  {
> >  	/*
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index fe4268813786..9450e263c873 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -58,6 +58,7 @@ struct drm_printer;
> >  #define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) ||
> IS_BROADWELL(i915))
> >  #define HAS_LRR(i915)			(DISPLAY_VER(i915) >=3D 12)
> >  #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
> > +#define HAS_LEGACY_TC(i915)		(IS_DISPLAY_VER(i915, 11, 13)
> && !IS_DGFX(i915))
> >  #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) ||
> DISPLAY_VER(i915) >=3D 14)
> >  #define HAS_MSO(i915)			(DISPLAY_VER(i915) >=3D 12)
> >  #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
> > --
> > 2.34.1
> >
