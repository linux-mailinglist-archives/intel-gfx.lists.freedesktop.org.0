Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DBE5BECFB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 20:47:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C9F310E74E;
	Tue, 20 Sep 2022 18:47:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBD9110E74E
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 18:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663699657; x=1695235657;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/La88DpP6d7AygdaIbEvDnsTwL+xb69ZXRJAf4mIR0k=;
 b=YMivmI2s8Qi+vpOxd3zCvLG4av6GwCRKXJKD8JN4iEBYz3KKsK1J+qbk
 wHazjcylqS2GQlpREkNBQmc34Kue9wFMyrmaj0MtYffPPHq/JAU7EMSNR
 rTDoCjsyw+PjnZeDUxKvHMSG2JjZ+aWhpxwrMu/S23h+21CEFQt/XHvcy
 ewZFlWBhoG6LH6QYa9VA7F+JxjWy5jT4jKmcqUdcyCReVR/yl5snqO+t7
 UP+LQSZ0CvvnUz+D7N2bP2ocet1JkT3Lg5qgXfqWewkr17AqkCz7FZCBk
 /7V/DIKIcID/0g3Wwiy4FC7CvvCGQ1rAzBoZHUormJfqZNzdcdfTHQFeZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="280164961"
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="280164961"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 11:47:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="621377986"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 20 Sep 2022 11:47:31 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 11:47:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 11:47:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 11:47:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QlKzINXUYPGDCFwKlhzgVBaPv1ax/pH+lMFH+5+KjTWUkGxKsovkJcDMi0oOALcNRIfjglgL/sgsxZDmyMpvlQRkCaviTX6d9d3MmYs/Vpv/4LLQnq16aooAmn/YdHsEhnpubQiPj0VmAK/oZBN6zj34epcgWdDEo13rea2dQ3Px8AyEhiGJnhyKv2gM+G3udCikG7+gUZ2TxekAEXHN4WZ8wri7NYPKBWn9ReXEdWB6QiJ1KQy6MQVfTvNt7giAcbnZZds3qjZ59v/OwmWuIDre/rkfbckhfTpqSSLiGLWs1OVB77T2X9EhBFM/fcFBd+ryEBAH/eqi1HtiVeAkZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q23xgAqNpCpiN2qvDb/sJM4yqEihdT6CviKh7kBUdcc=;
 b=VEypH3qGajaIYCeBiE3yhecdF06IQ63Ym5rnaXs8HtnmwROR+2pLOjZ2gvJqPRlv6I1OatQih0zLmi9eBJaxMsLrdft8pZGiIPbPzEJ5dxBGYiq6EsDl48IIGlHONXDNnnuI9u2jvTdjB91Ab232lr7r83WNJd5xvudcQrcHVW0y0YYKHZglanFejh4u4LKvYhfxS6I1/ETykv1BEbOTsfNCP1Jt1VtILSf84vmiPcOAYN40mUShYqJczYZYOBo/sxR8OrGJDJ1OWlxUrZqLkpsdLJg64ZKA5fFr1oU04OPHpRsutJct4Ujuzf3/iGL9d7xrgdRNdws1aa7/fpHECg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by SA1PR11MB7132.namprd11.prod.outlook.com
 (2603:10b6:806:29e::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Tue, 20 Sep
 2022 18:47:29 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::e045:7fe1:eeca:861]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::e045:7fe1:eeca:861%6]) with mapi id 15.20.5632.021; Tue, 20 Sep 2022
 18:47:29 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/6] drm/i915/display: Dump the new cdclk
 config values
Thread-Index: AQHYyi6uRNsBrgAQmkWg02Ov7GzNla3n8HEAgAC5qgA=
Date: Tue, 20 Sep 2022 18:47:29 +0000
Message-ID: <CY4PR1101MB2166A625FF7DC51331B2AABEF84C9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <20220917004404.414981-7-anusha.srivatsa@intel.com>
 <87sfkmo699.fsf@intel.com>
In-Reply-To: <87sfkmo699.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|SA1PR11MB7132:EE_
x-ms-office365-filtering-correlation-id: d5b424f3-1491-43f3-e8eb-08da9b3891ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v8e+TBCRx2X3A1//OPwFRvnVbowS/UFt4fwAyLGcULmKFKDXApnd4PWqGJG/e9Iwrc3+f8J35cLFi7fKHYF434LZ3Trj5kDhOza2Jc5CxmNbabHtY4FE0r8nhqmSmyL3Odgzz/TsVJJZnSZEWGnJyBG4Aj2XVvQfe5JooeuLW6z3/Q6nlQhoem+te8iPoRn+Blk5XdH9+MMs9GLmKLUxlwF3sdKx0t4odxs2Fi6xZTQf2W/CPmTse5YBUwTSoLHarcuBhS6PtzecHaSYhLFePEDZClFLwF5j1bExTgcKbbEwehv07tVQqjmyqYQiOOREygRgI0pp7G6iZzZXLetldQqXW1JPn557ILmD4RK8ZRcL/3hrq/HxG2oLVh9VZA4Od7C6AaIKdy7NUH4BgNWqa5QMousUmOL4AcbVKqbSIlENj8ZOUKX8QoAkS+ReFLnyF9IfGBvXqKwuC/L/sTeETk+49iMVzkJwe8rK198W/Dhhhz+6bW3Z/MRlio/egWgmI5p50NKRRV02P3/aYem6h8qSmqB8cGuIGk6OVheeIC3lGv0DQo82TX4Ac7+f4kuyDMwgGm5kh5rDye7gdCSfZyn00wKW+MR97mQpBzhsm9Ff4arzCI3nNgg56UiShrBsP7XLhuep9Tt7aj/uTnGr80os2AhQ6Gd42O/HdfaXIDvTcSAnN672cnqC8VBlonA2LI6wF694hJJXOgEphQ5kujIar98P+cxEA9fgr9WQUIRXW8reQKVyso0cxuF9UKVI3PZ2tDSu5iMaraGn8VTlZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199015)(9686003)(38100700002)(26005)(122000001)(82960400001)(55016003)(64756008)(8676002)(33656002)(76116006)(6506007)(2906002)(53546011)(41300700001)(38070700005)(7696005)(186003)(5660300002)(71200400001)(478600001)(86362001)(8936002)(110136005)(316002)(66446008)(66556008)(66946007)(66476007)(83380400001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3XAAnWpHqKtN0eBMrxHKDsdLekWSxCl4mdt1IijUhR53zGRxdDhAJSR9hw6K?=
 =?us-ascii?Q?04PPjR60WE17aANztKtPC8opfFTjPxSgAZi5WqSf7EKm068vNrvYNGN252lh?=
 =?us-ascii?Q?osHHP/BKNUAB2nRrtqDLq2izGppC75QbrhI5nlQvr4gFJQvz34VUfDIGOXFe?=
 =?us-ascii?Q?NvipwiYn516+JrukUhpnrUdG0hALTHrUmXKytFk6XYqkB+y4XHSk7XBcgOHy?=
 =?us-ascii?Q?JPfT9GGenYiJd0UAab1f4wW770SK2t6EVBmP4EO+0QyFCBZXV7vLvlfsTwRW?=
 =?us-ascii?Q?cugafAoEYlv6E50TSdEnKDoNlkLk9GPrRw4UiGhxThjA8JX+0tMMMdtTqdoO?=
 =?us-ascii?Q?b5e3MC0kmHCk9FG5QiQqCe9H6XKKSRJX60n+ypZqCR+70csL3yYT+75CwWGk?=
 =?us-ascii?Q?epX820eCRp5ikmLApubnnehAKysmJYnn2xlV+XbTWhu70dSj6EDScp1plhx/?=
 =?us-ascii?Q?YZO53vD+13FhmerrGqw8RQTCXKcv7kODv12Oxt0eRY3udpfFHEzE09QL1SrA?=
 =?us-ascii?Q?iuK0zen4VgPm5ctEhsn/mCOv0eMnH1knUymF8+flYAzHyBF/E7VAJP058keT?=
 =?us-ascii?Q?xj1qUwEtFTOQ3IywbJk0TBFqCgUXcGnbn5cCg6inC+BYC+ggMIGaVk6/1LAx?=
 =?us-ascii?Q?OWNV4dSTODkMzcPddoMOMaL14l/+M50uKvIeSSJlVX45fqGMgSzcnAnRBzlR?=
 =?us-ascii?Q?yznNzbsn2e/n3yibGNzl+Rr5QjJJ1lGDbddKEHg8qJwzHlihb8ySlv6LbLG0?=
 =?us-ascii?Q?g5RjuklisuFNBE+E5PYh7UcnISDC2UxKXbIszlKPZ3Twj9DULpBYlUoD+UY0?=
 =?us-ascii?Q?IXNxhK2fUY8k6AUhDAe1zVAvnWwBa1KKVrbwr/wPaq9YE2IVEMTH0+PRYda9?=
 =?us-ascii?Q?ViiX7nQDpbKv1VJIEC80UClVv38eJdaSV3HMQ6DaUhND3JwX6984R1jUTBXx?=
 =?us-ascii?Q?IxLLJQK9yEbbIuf0uQKxFDFGsQUfHVFdH0HPBpdxiHxMFhba1k418gBdy3XW?=
 =?us-ascii?Q?6inmKsinktGg+kDCpHe8SAkrLS3GijA18iytUgFgWRyeqNc4NM3g6cnDOTwH?=
 =?us-ascii?Q?0RJI6lNQEqP5Pq+aKLoxhqeivKUQCbplzfYcRNcva4eS5DWkaTkQL2kJYHIR?=
 =?us-ascii?Q?1XazpGF0RWmj5u1Qyk49MWNG729LY9GVy31uv+rPwx0Ofa0egGioyODx42hP?=
 =?us-ascii?Q?CKm+Uin801NN682pZsn3l+gY7I0kl82KmCfUYSeq5E5Ke8lgf+SnUCUX9IR3?=
 =?us-ascii?Q?ZIYWbzJ/LDM/cqh1igqaeL0qDXKfwDKmE46eZbQXN20ZCLIGBsPepJI+XR5i?=
 =?us-ascii?Q?Vy+7fURMFipTnhEChxXXjeyi+AseHxcffatE5acH29zm2IA/V+ooMQsgy2LD?=
 =?us-ascii?Q?Q0TI/kgnyiDEfofNddXCgIcp7HHCst4Q5K2Ir0Of0LKBroSuy+zMwpel9XEd?=
 =?us-ascii?Q?FCifBJFnY1L8o3O5UsF3wXF6PRoeStvMQl/lsYWk2IqeZQTS3LCk/0bZ0Ate?=
 =?us-ascii?Q?YCUW6KWvZ7iw51eGhGLx412aU/OeHxolQ+wBfKhjPrl6D58G+af+ko2e5Dq6?=
 =?us-ascii?Q?ln2CAAFoveJwE/r2E4kJzLImOZvyvPNkvLpARJh/c9NCQ1iDXlIGeyHCjyM1?=
 =?us-ascii?Q?8Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5b424f3-1491-43f3-e8eb-08da9b3891ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2022 18:47:29.5663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dn9GHILZJtzFctcy0VfsHPYnNgruE/phZxDEdgYSLq0D60/HLEo+SiGMlrjQ/bEoh3GqJU6km9d+HrJahWcQFO4FKzh/t/XY75iPTr7E/ss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7132
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/display: Dump the new cdclk
 config values
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, September 20, 2022 12:27 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/display: Dump the new cdclk
> config values
>=20
> On Fri, 16 Sep 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > Add a helper function to get stringify values of the desired cdclk
> > action and dump it with rest of the cdclk config values
> >
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 18 ++++++++++++++++--
> >  1 file changed, 16 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index bc627daade3e..12f5e4d23245 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1688,6 +1688,19 @@ static u32 cdclk_squash_waveform(struct
> > drm_i915_private *dev_priv,
> >
> >  	return 0xffff;
> >  }
> > +static const char *cdclk_sequence_to_string(enum cdclk_sequence
> > +cdclk_sequence)
>=20
> For any enum foobar, this would be customarily called foobar_name(), i.e.
> cdclk_sequence_name(). (Though the enum should probably be renamed as
> mentioned earlier.)

Will do. The initial change and then change here.

> > +{
> > +	switch (cdclk_sequence) {
> > +	case CDCLK_SQUASH_ONLY:
> > +		return "Squash only";
> > +	case CDCLK_CRAWL_ONLY:
> > +		return "Crawl only";
> > +	case CDCLK_LEGACY:
> > +		return "Legacy method";
> > +	default:
> > +		return "Not a valid cdclk sequence";
> > +	}
> > +}
> >
> >  static void dg2_prog_squash_ctl(struct drm_i915_private *i915, u16
> > waveform)  { @@ -2083,10 +2096,11 @@ void
> > intel_cdclk_dump_config(struct drm_i915_private *i915,
> >  			     const struct intel_cdclk_config *cdclk_config,
> >  			     const char *context)
> >  {
> > -	drm_dbg_kms(&i915->drm, "%s %d kHz, VCO %d kHz, ref %d kHz,
> bypass %d kHz, voltage level %d\n",
> > +	drm_dbg_kms(&i915->drm, "%s %d kHz, VCO %d kHz, ref %d kHz,
> bypass
> > +%d kHz, voltage level %d, %s action\n",
>=20
> "%s action" leads to:
>=20
> Squash only action
> Crawl only action
> Legacy method action
> Not a valid cdclk sequence action
>=20
> A bit odd perhaps. *shrug*

Yeah now I see it.

Will thin over what can be a better replacement.

Anusha

> BR,
> Jani.
>=20
> >  		    context, cdclk_config->cdclk, cdclk_config->vco,
> >  		    cdclk_config->ref, cdclk_config->bypass,
> > -		    cdclk_config->voltage_level);
> > +		    cdclk_config->voltage_level,
> > +		    cdclk_sequence_to_string(cdclk_config->steps->action));
> >  }
> >
> >  /**
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
