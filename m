Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DCD77DF00
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 12:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559D010E0D6;
	Wed, 16 Aug 2023 10:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EEAF10E0D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 10:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692182444; x=1723718444;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WOU+nwvIx37MvQQXu7UQ36TC761P0jsgcxh3B+Zi+vo=;
 b=FrOuUkzm8UkMbxhNr4e0vvXZvXf/F1O8gHCqJVaCJ4a/PO0hqrEHGBEQ
 8NFvw2SqJ2lBk0ntltAgZpVlloO0p+8fWCq2T15pmQomJ56VJcN+yf1Ub
 hDer3yjBQ+VSWTDbwp4+SKSglu1ORN5mTftV3dKzeXu6Ol4xuT1azZHcE
 b/awu/1mqtvZnSwGbXgfP8uDB2jcGudHMDNwECN6lU90Su2uq+XDEJn2N
 raL4aq1SQT4pDURt0/gX1h3BtczaA3DGnd9CoKTI4bDLoNoB7hLPhgL19
 9FD1G7hJ/HOkHcPVQ155GdNeHO1eBGXWBM5CE57Fb1jIR8qXaAaO6aykU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371405310"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="371405310"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 03:40:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824192989"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="824192989"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2023 03:40:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 03:40:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 03:40:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 03:40:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GKvOf23bq72OHO/UYJo1xkO4uY2rVCMhnhhlxgyuYZhw40nekjYHD/4CsjKa1EKdqdF+hjbqsoFnNsew3Q8sbgdFXlQRRb+4O42p04xKV5VRYWXKywsKYlbRqYD2QLmM9D+YZYLOcjBKQRiELB4+cSZB2FxMC9KmUI5rvuGvH4MKvbVcZijBNG1w2WR7sB6zLc1qDlxg+QSPi1TtkwfxMNJ5pbbj8QNEnhfWqObpyXTMTNARdreqI2kVmsb22hmnESOuWIh31BAq95/nDvmOonfit/+nnWjgMsTlZ3fnJTWLaiYFScMMfoBc6pgtUMNEsjQYteYB9BnGreS7g1BSRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7sJebz+1LgGS/HeHcehVljxRHyloEfOkXf4iElZukpk=;
 b=KvOl5G3faNRuKwJtkeuBQV19sXwhGmFeYenhY8mKnSqsQpO1xFoFBhdRwVxwev0P8hpi9wmP0SjTP+JfxfvNzkFAFKQ17KDFrDVuXiWxBn3lfVvJNCJ4qelbIEPb9k3LSoi8JQAf5YQ3W31Jk2aWj4vYTK7/W9YvSblMLeAo0c6y0uxVi878JOj1qqiRDkIraPMY95EsFwWd9nVit7fxuQWAFzdy216mX9WWRgvH/JxtOfRhbs5Z3Xe6eoCY8WoBlb+9v1mgIZjW5W2Qmq6aFpgrhlO12mUnb5jJFaSq1fxrOuFyWRQN+v7Blm/UMC9QehkK4b+x/gicC7jIJZbBiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM8PR11MB5702.namprd11.prod.outlook.com (2603:10b6:8:21::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 10:40:40 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Wed, 16 Aug 2023
 10:40:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsi: Explicit first_line_bpg_offset
 assignment for DSI
Thread-Index: AQHZyTuX88jRBTXNmE+A94pYAvDtHq/rzCwAgACr/7CAAEUOAIAACeOAgAAAYeA=
Date: Wed, 16 Aug 2023 10:40:39 +0000
Message-ID: <SN7PR11MB6750A2CE4750AB0760EEA4C4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230807142754.3891787-1-suraj.kandpal@intel.com>
 <877cpwayob.fsf@intel.com>
 <SN7PR11MB6750D24920061E5DDD3F2171E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87o7j79uqd.fsf@intel.com> <87fs4j9t3e.fsf@intel.com>
In-Reply-To: <87fs4j9t3e.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM8PR11MB5702:EE_
x-ms-office365-filtering-correlation-id: 698e11e9-cbb7-48b2-375b-08db9e453c08
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +j/t42Nw/ljeZCqwco7E51tAYjAm5i9H3PPjqXT1zwLwg1eMP7aI/9dgv6kY/2pa0txZRM1aaDjrXyF5oCPcNar9CczX8J3/RyNBSKnCDsPGwTyg2KVUFfMu2y/6TchYh/lVDqKvsWV2/3zTs//PgJiZhKeAWlrJN2Cj9k+OhHs8U9n+vI15vvmzSenlVqh9bBH2hTPtXX54AWkbBKftOIBQ17a4DeBHWDTV4H7cezjYpQe2KonbPzTBGXOkaoSE9UQEAZPlyteGb3MwEDB1MGefd4PCpkeY7KeGJ9Ue6Bbdje4SzZiamJ5ZxJeOuAhXEPxkFYmUh3BrSTQSCIHJsMe3BmzpOzEAMQ5qLnRANt2JPrbzUGSlYMR5iUBMboH2BRQPPa5P4u743HCefupI9xNc7fmXLNy8vE8f/G6TOFaerhno5QrBpXqVK62HTd7wozx/QPLuz+gt3eXWTkeyYiQuRws7l+MTm64O03ggCOTmNEpQtoMbR/ZI4VuYx6y3iNVbXp260v3m3AjpDKoyl1nqWzi0Rhc5o7fmBvJEUr40r7TW0i6zOCVDhYzw9uNnDGxoOJ1jyRh4tXIXGoe9R26m4PSZsd6IAXGKn4PzTAgRjt31/bKNSlOOPpCCGyPL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(136003)(396003)(39860400002)(1800799009)(451199024)(186009)(2906002)(86362001)(478600001)(7696005)(6506007)(71200400001)(33656002)(9686003)(55016003)(5660300002)(41300700001)(52536014)(122000001)(54906003)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(110136005)(76116006)(8676002)(8936002)(4326008)(82960400001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lrFWT69VwvxiqVGRMBn7hIuKEPApS4XDU+jlM2QSLinyrYtfr6TfJUH6qa4Y?=
 =?us-ascii?Q?Up7PcmuANocSs5EvbCTnUEs9u2g5d9NdX7BJNWVPPo9pdpr+9crRpq/kO/dY?=
 =?us-ascii?Q?3cw28Jojx/nkX3atRFlL5eKIYlZVHDZsjYGJqGm8WRWaO1rq2RcGG2JqaLma?=
 =?us-ascii?Q?XAzNKBR81bUKFIihUAWlUfWPQHpbmdbGNfWX2yUBTH7F6Zo3uHR04CUouxPK?=
 =?us-ascii?Q?QSjFdkwcmnq4LaDZqunWRyHxKxDWd0/QGBHlLsTOaIxoqfB/A6ucz/ReGnzH?=
 =?us-ascii?Q?hiGL7wZfRMpiXBFPPn0gBMpFA8OG24x8JTX0TDpx54uOYqwBvunMnkMte5AE?=
 =?us-ascii?Q?EFca5A3twETCu/OsvfRzkXdrNYDx6TgbjjisBqEAPpegaDYEhbQeskfvw7u9?=
 =?us-ascii?Q?MFaFUnGregGLlY5BKhp3RNXqsXedYjmch7Nr3tWNfxN3LYO75vaWR4i/PW0P?=
 =?us-ascii?Q?+jAvcGCTILtbAkmfUN+WJNRivFu+Rk3b1LU8n6Da93oYFxEE9gNQHixQ276b?=
 =?us-ascii?Q?B+EG70oB7eJ5cqzxfXiGymLF8NcNT8d70XCG6aPMvHfptRp//BJbjaUUU5uO?=
 =?us-ascii?Q?DrRuOvL+4n8BFfyYPbusRFb6CAfgiSGDLLJfFkZ4TJ4hWmm1aUCpjQ6XA1i5?=
 =?us-ascii?Q?lYL8wfPeJ8BtWGDR0fotoM5I3bbCx7o+cqUObaZEgB/Vf0FOh+h3bO14bKJL?=
 =?us-ascii?Q?oQ7uGjUMU7PeiNQNr3Sus3i+hSt6kLm5W2tNHID9ZwF8WvuvqbggVFJUwM8z?=
 =?us-ascii?Q?aQffYbk9OzmDNl15mhh8wBVBZubyUZj61cWWK1PvzJyvYs3vmmo1E3BeebhJ?=
 =?us-ascii?Q?NsltMQXHW39CLGJ4w0kbVXvcXzB4nhCoGuCXezUp91wGAG5ce2GE+5gFGIjK?=
 =?us-ascii?Q?FF5PGGgwTHnoiaLlDvbLc6BS1yJ650FkE8v0v3Lw/zJyhvLM9FZmmm2TfLLB?=
 =?us-ascii?Q?XnIFJ0ZtUN3W1ZO2H3LdGsjcBzrTTpK2h/O/X/JUij0wswqSuKYxGPCrm1qC?=
 =?us-ascii?Q?PGeCtDmQBks4jtnAHIK3x28WVjaI1+XsCTC7D+FPsy7HWS8dsuNtqQugmPVL?=
 =?us-ascii?Q?awwO76CgeaTsB8e31NWUJ8FmgtCpDzJZ4BKeNctDIy+dQ5QaAfP+kIw/Kja0?=
 =?us-ascii?Q?4wTnBvguaoUPowH2jh357+LDiSUpnNa6AWqWiyL+T1fnqF+XK377zM+ABD5x?=
 =?us-ascii?Q?68FB2EFKLY7eIL4GMAdk2TPA80eheKj8UfzcTqgNDbWSmvR28CC6Ts2BFmMa?=
 =?us-ascii?Q?m0rb3ggW/9Qa4v/qQjoY3UpmKBHMX/HfF5qFiJYlz0A5u/zjnPS/mbUaCOdJ?=
 =?us-ascii?Q?tKafJ/AGZbjzHiozweT9yf6ZbU6yfTOwkENqtpHRTIFAkV50MCunwAQjuATi?=
 =?us-ascii?Q?joxYCVVKJuBaZSQQtm0NAPkk8qr4eGnRznlcW8IprPo4UiraWSgcatdCw9vV?=
 =?us-ascii?Q?3nnL95xnpYA0fwI5eZsxs9qNmAj4kH3sp3snd1RqLtx0MM3NWIKlo4pqnEGY?=
 =?us-ascii?Q?EJm6Xa8uHtjLf3XNvqSaJEl/Mvi1DONovyAJy1eX4/CAwYn2v/xKB211/eSs?=
 =?us-ascii?Q?+6JPthxp7TQUZbap0TE=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 698e11e9-cbb7-48b2-375b-08db9e453c08
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 10:40:39.9538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YqFU3nWO3dtXUn29zCn2suebbiic73lrvXR9bq2X2XjKNpRUcpDirm3PHKJSdCL/iFGp+WIaHOzOcAf0wa4n2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5702
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Explicit
 first_line_bpg_offset assignment for DSI
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>=20
> On Wed, 16 Aug 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Wed, 16 Aug 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >>> On Mon, 07 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >>> > Assign explicit value of 12 at 8bpp as per Table E2 of DSC 1.1 for
> >>> > DSI panels even though we already use calculations from CModel for
> >>> > first_line_bpg_offset.
> >>> > The reason being some DSI monitors may have not have added the
> >>> > change in errata for the calculation of first_line_bpg_offset.
> >
> > We should be using DRM_DSC_1_1_PRE_SCR parameters for this, right?
> Why

Sorry I seemed to have missed this comment in my previous reply but
from how the code is written if display_ver >=3D 13 we call on calculate_rc=
_params
which uses formulas to calculate the params and we don't rely on the dsc ta=
bles
in drm_dsc_helpers so the DRM_DSC_1_1_PRE_SCR scenario does not come in pic=
ture.
=20
> > does the array have post-SCR values for first_line_bpg_offset?
>=20
> I'm asking for logs on the gitlab issue, and trying to get at the root of=
 this,
> because so many times in the past adding a specific fix like this for a s=
pecific
> panel (albeit using generic conditions), it has caused more troule for ot=
her
> panels in the future. What if other panels don't work with 12?
>=20

That is true which is why I too was unsure on the fix.

Maybe Tseng can provide the logs them on the gitlab issue.

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
>=20
> >
> >
> >>> >
> >>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >>> > ---
> >>> >  drivers/gpu/drm/i915/display/icl_dsi.c | 5 +++++
> >>> >  1 file changed, 5 insertions(+)
> >>> >
> >>> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> >>> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> >>> > index f7ebc146f96d..2376d5000d78 100644
> >>> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >>> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >>> > @@ -1585,6 +1585,11 @@ static int
> >>> > gen11_dsi_dsc_compute_config(struct
> >>> intel_encoder *encoder,
> >>> >  	if (ret)
> >>> >  		return ret;
> >>> >
> >>> > +	/* From Table E-2 in DSC 1.1*/
> >>> > +	if (vdsc_cfg->dsc_version_minor =3D=3D 1 &&
> >>> > +	    vdsc_cfg->bits_per_pixel =3D=3D 128)
> >>>
> >> Hi Jani,
> >> Thanks for the review
> >>
> >>> So, vdsc_cfg->bits_per_pixel has 4 fractional bits, and that's 8 bpp
> >>> compressed?
> >>>
> >>> Better describe it that way, instead of as 128.
> >>>
> >>
> >> Yes would be better to right shift (vdsc_cfg->bits_per_pixel)  by 4
> >> then compare with 8 to avoid confusion.
> >>
> >>> But... looking around, in intel_vdsc.c we set:
> >>>
> >>> 	pps_val |=3D DSC_BPP(vdsc_cfg->bits_per_pixel);
> >>>
> >>> and we have:
> >>>
> >>> 	#define DSC_BPP(bpp)	((bpp) << 4)
> >>>
> >>> however, when reading it back in intel_dsc_get_config(), it's just
> >>> directly:
> >>>
> >>> 	vdsc_cfg->bits_per_pixel =3D pps1;
> >>>
> >>> Are we always sending x16 bpp in PPS?
> >>
> >> Yes we are always sending bpp x16 considering the fractional bits
> >> also in intel_vdsc_regs.h We have
> >> #define  DSC_BPP(bpp)                           ((bpp) << 0)
> >
> > This is the part that confused me.
> >
> > BR,
> > Jani.
> >
> >> Which in hindsight can be renamed as it has the same name as the one
> >> in drm_dsc_helper.c But then again the DSC_BPP macro there is more
> local to that file.
> >>
> >> Moreover vdsc_cfg->bits_per_pixel is being set in
> >> intel_dsc_compute_params(among other places but is still being set x16
> the value).
> >>
> >> vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;
> >>
> >> Regards,
> >> Suraj Kandpal
> >>>
> >>>
> >>> BR,
> >>> Jani.
> >>>
> >>>
> >>>
> >>> > +		vdsc_cfg->first_line_bpg_offset =3D 12;
> >>> > +
> >>> >  	/* DSI specific sanity checks on the common code */
> >>> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->vbr_enable);
> >>> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->simple_422);
> >>>
> >>> --
> >>> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
