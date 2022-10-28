Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DB8611C68
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 23:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E113E10E8E3;
	Fri, 28 Oct 2022 21:28:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3968A10E8E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 21:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666992476; x=1698528476;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XVFGK/+OoGCe6RBfNOWTp8oHuuNGY3IKjLGHtJvs8VQ=;
 b=Ef48LSQg0r2/AKtY/59RzZqvKGDYXGiWKFZA/QZoayOjTdOngH38fkC4
 FnDBkGShZ8ZUEZWPcH0Bk44KSNqpuX1hq1MdVJpujRgwAJHwz1lfmVan/
 oDAE4mP3RGJh5tk8B8tg45PZR1gf7lK5rFDEjsk+o6qxu94rXBblIn9CS
 ynyVKpKWAtJxkvExis+eFJ2/P51iZk8XTcMPCYkzyK6RzE7rOqW4yWkkE
 qYAd3VWuJSSOnJcVopkqJKxVG2u84Gv9JyFM1La7yh+5M/ZOessjvLuG4
 RakvKv+plbgO1OlTUosD35L7+6b3lPHAVJbcXZj4+lArPkwxw0xEZ3CPX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="309685168"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="309685168"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 14:27:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="627665903"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="627665903"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 28 Oct 2022 14:27:55 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 14:27:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 28 Oct 2022 14:27:55 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 28 Oct 2022 14:27:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TFlcuE10DcjkGPaxnvcxHnF81jusptM9oTtVA3aW9L3MxqQYHnF1srrSnNG6+oEQZEAi7lzYJ+SoAe0seuNRmjKddyPhiaX3t0A1VXq68jDNkuXBAQwql6NcNzUzFqm3UMs4gwtDNImfiU15BEEt05yh0Oe9o17MfAEtYUD6cKi3xouOLqCNKwH4ZRxpim5j89ZbQkxWvF8dD0TmzyRt6pzHXZtcwHtButn1rq7XThX330qaOKUWGYioTw9vkCdkxoWu/T7DMTTTmVXOCEr7TIJZ0wmk5/ardUMSXKxtIvF2iNSZmP4zOy6bH4d9AabzhUIWdGtGGhwgGKt0eKAu5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SLEoRW2ax1+XxNDM7Yb61LXBT6NiCgpNG92PzIOfYtY=;
 b=FYLy2Jd8nFF7QiHKiu71tY+kefEJepgVgtBEDqihafM1PSxHGGM7ZoIwb5XTROMmpGszrgRjBMTPeGGUxiuzWSvnT8MZ106rV/2ydkhT+wf9uriTvGu55stg9vd4xtufsWXHMnJxgmqiZZ6UFiNLybgxS+gXSwhNGMj7oeP9cgGEif6bL6M7KUQ8qlIc5deZZ7t3LeQ5sEVjWiQaEz/OTKISi5ILQzQV0C8G/40zbLV87fTQ13P7AiVworvei6rxXj+EQLmNVoNtL5q2eeoIcQ0LfalSrT4HIODdLZuE0UGrednvn7+R/BBypLjViYX0G/eCE5iAmyG2a4NC1GSbng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by BL1PR11MB6026.namprd11.prod.outlook.com
 (2603:10b6:208:391::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Fri, 28 Oct
 2022 21:27:53 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5769.015; Fri, 28 Oct 2022
 21:27:52 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/display: Do both crawl and squash when
 changing cdclk
Thread-Index: AQHY6ZHding8lhHtaEmdzRjCYMvMKa4jhZ6AgADPSxA=
Date: Fri, 28 Oct 2022 21:27:52 +0000
Message-ID: <CY4PR1101MB2166F0034E4EA7C36DCE7044F8329@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221026232257.281240-1-anusha.srivatsa@intel.com>
 <Y1ubRT9waxFO8wPt@intel.com>
In-Reply-To: <Y1ubRT9waxFO8wPt@intel.com>
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
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|BL1PR11MB6026:EE_
x-ms-office365-filtering-correlation-id: 02a8c76a-0a9f-4f97-ef8b-08dab92b458b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RQCYsFAAKol82gDvuOUSge4f2lN76H9ChzcheIBn+yf5N21Vd0N4Ml3gKGpg2eohxdekD/jX5LcMnYrIWI+9pLHF1k7bXS1khnNpvbX4GiYP8lRx+yJ6g5sp/femfmyMkCiit1IxBhm9BvggjIP2TCy54IedpQ3WW5q1Av8Uf6vNbhVJedzt50uyuf/52MbAHZFWd8lXHtVvVUUBYd4Z1enSAoA7FyA5yM7ELIgtLQDVozwYw7+R+sBfQufQQbFdwla+nxTrZ80b0DSRpoVJffuxNqhSf0DZPjVAUKSsSpD3VHKEDxa4GXn8qUYrOUPfwRxznS0EJJjkZM88ccn9bQQIlG3eLCCfjAbRY4KAIVOUv3hoYvH2mcS+8GvKuC+8p250yoLlb/pJ3ZMkW7yIdSbdU3Nfy35JX5elX3ZNv/u9u86tkz47XMkogheaXgd9OR8ud1VBsKs1WcepucjDzJrGNF1Bghkv95pND6xctaNtgq0FmSVgK3oIgDFS9Ne/qX6LoThhH9O42yQsy4oOlnEljVOF7ocv07Xzpu2A4eXBZ6kmQe9Gs0EMydfCFh5hOYISEGwrSqYU4kmVduLI8dGgDFkWZWjPjXj1oEhxFHlqYkSUwNcurjVDexyXjZK1e6MnihfjsGaZxpAPMV0Ev9d2JBHMzWnQBE0tNvw15msnPGN2kGMToO7LckLanwmiq0H/hNfLuYGMmMV1IcjeVzcR0cK9s04l03b6qNpljzKalVZfYNzjg2FfMr6oD74lc0exyKT/3t9ikhvXf21wceCOD4H3DGBWUGWSxzpIyDQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(136003)(346002)(376002)(396003)(451199015)(2906002)(186003)(478600001)(82960400001)(71200400001)(316002)(38100700002)(122000001)(4326008)(66476007)(38070700005)(76116006)(66446008)(64756008)(66946007)(8676002)(54906003)(6916009)(53546011)(66556008)(6506007)(7696005)(26005)(5660300002)(41300700001)(8936002)(52536014)(66574015)(55016003)(33656002)(9686003)(83380400001)(86362001)(17423001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?7fodgehbCYoMOdSd7jAXGNm8Dk/+XzvGnoD2hFFg+Lj+PRQS2dNs+b2sth?=
 =?iso-8859-1?Q?60yj+l5y5QQibVufo8QjcjlUCwBxsl3eFhp+MEND5zyxXWS1uikzsi31NE?=
 =?iso-8859-1?Q?mpi6yQEECV5O6s+WMM5sSnHfrNc+y2/hHoBmAzSMPOuvtXnvYA/ILGSSHQ?=
 =?iso-8859-1?Q?2RrK84GwJuz5f78mIPkHpCBqRsGpUSZuS8fWjqE0ez4p86Tz8PM+FgpYs2?=
 =?iso-8859-1?Q?z9KLNFOu2w2/uduDPFT1Q99FJY9BAvC5fZ6OXa0lsrR7mIaMSKK/hO95Vl?=
 =?iso-8859-1?Q?8arRthEkta7+RzkNBXNA76gGC0JSY+FZyJ1Fpm1E0mYW3BnOBaGSF8A1IN?=
 =?iso-8859-1?Q?tbv2tT+bzpdwZ7GX/kpCVnGR574gqnVzuMIf9tP9+ImMMzRkC+t35MhfXQ?=
 =?iso-8859-1?Q?3TCzybz0019lah1jMolA0/feSWoGkWsqBAe/QD/EYlgAF5zsZxQCOPl9t2?=
 =?iso-8859-1?Q?SqyzWFvGXP26vRWDn7ttrT6rCM7ivdzfI3q693zGUJAhFcfUiOpxWc55ys?=
 =?iso-8859-1?Q?957zjY9htbPxnZiZiMl8+x4FJ9r5lyVilDiohXEd/C2Wj9dKS2eh9WU8HN?=
 =?iso-8859-1?Q?/oP4DVp3J5hH+6yhURd/vKt58HOQuKwK/9dIrGfxns7n2xyWygnAtqoKPn?=
 =?iso-8859-1?Q?XSSWa6PvL0zLtIeGxb55+Lcm7udKiC1ZkFaSH+0UTsZVqfhoVQ3wvqfw2B?=
 =?iso-8859-1?Q?kVuwDaUbwjpucRf2BwzZaFVl4YUsZaKdlhbbguHBLWpGHh65MVtBxWmneD?=
 =?iso-8859-1?Q?2UmEDw9oIOVnHLgHiSuFCGJHhzQ5esxcLaZbG54k/Z9lASF8SY1TUxmLjy?=
 =?iso-8859-1?Q?mZ3+2HAYyoBkppTpmBYYNF45l6ta/vs+8tkwwAbCrz4f8/EHjgvQ6gFugN?=
 =?iso-8859-1?Q?FORHkPLHF3rE+Xv1wW6GFC9X7yWmQ81C+/vqMzfCYspQsQptABLueCuvEb?=
 =?iso-8859-1?Q?ktDFvrFB7rUAnAzagnZqX3cmpvrCTfAPMDnVDlg9ioN/Uf5YlpTQXyZT5o?=
 =?iso-8859-1?Q?GFvx8onpYQeMvnvkMZp29MyP4XHYpalqbo718Mo6tcnMs+6YQfJJGUpJ8O?=
 =?iso-8859-1?Q?uwzRWO6ekCoxg1TTVfn2lh+vB336KREzcHUuB6y5Sun38tpH6bk+ZQ1Rii?=
 =?iso-8859-1?Q?Kb8tv45kJLljB7+ACLDRsbmz70pGh3jg5CC9CU2SNHkGMGOVi/q0uVM4M+?=
 =?iso-8859-1?Q?hY5bpLV3f8ggwdQBWtrNfqY4V7xwW/nvZuKozz1D8S2Olig0CARkIVYhwl?=
 =?iso-8859-1?Q?lHeU6MRez2KGQem97pOVNM4xN9+ewHdzG5JZ+9PN/hdGgjDMG9PlpJPeBL?=
 =?iso-8859-1?Q?nX3soAZZH2cI0XbU8G03SzTcEpKDu/F+g/1nfB7xtfvCeCSobkcykWFXkc?=
 =?iso-8859-1?Q?pzqTQHIVO8bZQCsn+quUTmoKwKG0ANHy0OB0HkirVxCj34SHT14Jno7gmo?=
 =?iso-8859-1?Q?a+bRpgPcyA2W37M6VlxGmw6GNSgeWd9lBVdhISfO7TBMaSKQQlx4xd4QC2?=
 =?iso-8859-1?Q?gr1ompDtrNSnS4Tz2IfjzJWg5kv7PtzLFdgCFgc57CAqw1lWg1Afvj2+Ve?=
 =?iso-8859-1?Q?WzIZJkQBjJ5tQkgR5nHkRdochBMfrio6TXAD5AhDvjl4ypqaMdloM30riI?=
 =?iso-8859-1?Q?1PAcxAf+fMT+Pr4P/nD0M/Z7mpiQRBqS9CqK44njAh3tTL76YX/uNMRQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02a8c76a-0a9f-4f97-ef8b-08dab92b458b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2022 21:27:52.7721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N9IKsTO9ZQysP8Q322Vg6cOOG6BfHg68lBm6My00sRklIPjJt+MU4kZ1pPoyFa/UuQSh9WlMaZCxWjRSVmhoiI7swfJSlFg27RYvFGCqeWk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6026
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, October 28, 2022 2:05 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/display: Do both crawl and squash when
> changing cdclk
>=20
> On Wed, Oct 26, 2022 at 04:22:56PM -0700, Anusha Srivatsa wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > For MTL, changing cdclk from between certain frequencies has both
> > squash and crawl. Use the current cdclk config and the new(desired)
> > cdclk config to construtc a mid cdclk config.
> > Set the cdclk twice:
> > - Current cdclk -> mid cdclk
> > - mid cdclk -> desired cdclk
> >
> > v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk change via
> > modeset for platforms that support squash_crawl sequences(Ville)
> >
> > v3: Add checks for:
> > - scenario where only slow clock is used and cdclk is actually 0
> > (bringing up display).
> > - PLLs are on before looking up the waveform.
> > - Squash and crawl capability checks.(Ville)
> >
> > v4: Rebase
> > - Move checks to be more consistent (Ville)
> > - Add comments (Bala)
> >
> > Cc: Balasubramani Vivekanandan
> <balasubramani.vivekanandan@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 157
> > +++++++++++++++++----
> >  1 file changed, 129 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index eada931cb1c8..6a775367f02a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1716,37 +1716,74 @@ static void dg2_cdclk_squash_program(struct
> drm_i915_private *i915,
> >  	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);  }
> >
> > -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > -			  const struct intel_cdclk_config *cdclk_config,
> > -			  enum pipe pipe)
> > +static int cdclk_squash_divider(u16 waveform) {
> > +	return hweight16(waveform ?: 0xffff); }
> > +
> > +static bool cdclk_crawl_and_squash(struct drm_i915_private *i915,
> > +				   const struct intel_cdclk_config
> *old_cdclk_config,
> > +				   const struct intel_cdclk_config
> *new_cdclk_config,
> > +				   struct intel_cdclk_config *mid_cdclk_config)
> {
> > +	u16 old_waveform, new_waveform, mid_waveform;
> > +	int size =3D 16;
> > +	int div =3D 2;
> > +
> > +	/* Return if both Squash and Crawl are not present */
> > +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> > +		return false;
> > +
> > +	/* Return if Squash only or Crawl only is the desired action */
> > +	if (old_cdclk_config->vco <=3D 0 || new_cdclk_config->vco <=3D 0 ||
> > +	    old_cdclk_config->vco =3D=3D new_cdclk_config->vco ||
> > +	    old_waveform =3D=3D new_waveform)
>=20
> Those are not yet initialized.
*facepalm*

> > +		return false;
> > +
> > +	old_waveform =3D cdclk_squash_waveform(i915, old_cdclk_config-
> >cdclk);
> > +	new_waveform =3D cdclk_squash_waveform(i915, new_cdclk_config-
> >cdclk);
> > +
> > +	*mid_cdclk_config =3D *new_cdclk_config;
> > +
> > +	/* Populate the mid_cdclk_config accordingly.
> > +	 * - If moving to a higher cdclk, the desired action is squashing.
> > +	 * The mid cdclk config should have the new (squash) waveform.
> > +	 * - If moving to a lower cdclk, the desired action is crawling.
> > +	 * The mid cdclk config should have the new vco.
> > +	 */
> > +
> > +	if (cdclk_squash_divider(new_waveform) >
> cdclk_squash_divider(old_waveform)) {
> > +		mid_cdclk_config->vco =3D old_cdclk_config->vco;
> > +		mid_waveform =3D new_waveform;
> > +	} else {
> > +		mid_cdclk_config->vco =3D new_cdclk_config->vco;
> > +		mid_waveform =3D old_waveform;
> > +	}
> > +
> > +	mid_cdclk_config->cdclk =3D
> DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> > +						    mid_cdclk_config->vco, size
> * div);
> > +
> > +	/* make sure the mid clock came out sane */
> > +
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> > +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> > +		    i915->display.cdclk.max_cdclk_freq);
> > +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915,
> mid_cdclk_config->cdclk) !=3D
> > +		    mid_waveform);
> > +
> > +	return true;
> > +}
> > +
> > +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			   const struct intel_cdclk_config *cdclk_config,
> > +			   enum pipe pipe)
> >  {
> >  	int cdclk =3D cdclk_config->cdclk;
> >  	int vco =3D cdclk_config->vco;
> >  	u32 val;
> >  	u16 waveform;
> >  	int clock;
> > -	int ret;
> > -
> > -	/* Inform power controller of upcoming frequency change. */
> > -	if (DISPLAY_VER(dev_priv) >=3D 11)
> > -		ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > -	else
> > -		/*
> > -		 * BSpec requires us to wait up to 150usec, but that leads to
> > -		 * timeouts; the 2ms used here is based on experiment.
> > -		 */
> > -		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > -
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > -					      0x80000000, 150, 2);
> > -	if (ret) {
> > -		drm_err(&dev_priv->drm,
> > -			"Failed to inform PCU about cdclk change (err %d,
> freq %d)\n",
> > -			ret, cdclk);
> > -		return;
> > -	}
> >
> >  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco
> > 0 && vco > 0) {
> >  		if (dev_priv->display.cdclk.hw.vco !=3D vco) @@ -1781,6
> +1818,44 @@
> > static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >
> >  	if (pipe !=3D INVALID_PIPE)
> >
> 	intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv,
> > pipe));
> > +}
> > +
> > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			  const struct intel_cdclk_config *cdclk_config,
> > +			  enum pipe pipe)
> > +{
> > +	struct intel_cdclk_config mid_cdclk_config;
> > +	int cdclk =3D cdclk_config->cdclk;
> > +	int ret;
> > +
> > +	/* Inform power controller of upcoming frequency change. */
> > +	if (DISPLAY_VER(dev_priv) >=3D 11)
> > +		ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > +					SKL_CDCLK_READY_FOR_CHANGE,
> > +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > +	else
> > +		/*
> > +		 * BSpec requires us to wait up to 150usec, but that leads to
> > +		 * timeouts; the 2ms used here is based on experiment.
> > +		 */
> > +		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > +
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > +					      0x80000000, 150, 2);
> > +	if (ret) {
> > +		drm_err(&dev_priv->drm,
> > +			"Failed to inform PCU about cdclk change (err %d,
> freq %d)\n",
> > +			ret, cdclk);
> > +		return;
> > +	}
> > +
> > +	if (cdclk_crawl_and_squash(dev_priv, &dev_priv->display.cdclk.hw,
> > +				   cdclk_config, &mid_cdclk_config)) {
> > +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	} else {
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	}
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 11) {
> >  		ret =3D snb_pcode_write(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > @@ -1953,6 +2028,27 @@ void intel_cdclk_uninit_hw(struct
> drm_i915_private *i915)
> >  		skl_cdclk_uninit_hw(i915);
> >  }
> >
> > +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private
> *i915,
> > +					     const struct intel_cdclk_config *a,
> > +					     const struct intel_cdclk_config *b) {
> > +	u16 old_waveform;
> > +	u16 new_waveform;
> > +
> > +	if (a->vco =3D=3D 0 || b->vco =3D=3D 0)
> > +		return false;
> > +
> > +	if (HAS_CDCLK_CRAWL(i915) && HAS_CDCLK_SQUASH(i915)) {
> > +		old_waveform =3D cdclk_squash_waveform(i915, a->cdclk);
> > +		new_waveform =3D cdclk_squash_waveform(i915, b->cdclk);
> > +	} else {
> > +		return false;
> > +	}
>=20
> Still weird.
Agreed. Changing this.

Anusha=20
> > +
> > +	return a->vco !=3D b->vco &&
> > +	       old_waveform !=3D new_waveform; }
> > +
> >  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> >  				  const struct intel_cdclk_config *a,
> >  				  const struct intel_cdclk_config *b) @@ -
> 2759,9 +2855,14 @@ int
> > intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> >  			pipe =3D INVALID_PIPE;
> >  	}
> >
> > -	if (intel_cdclk_can_squash(dev_priv,
> > -				   &old_cdclk_state->actual,
> > -				   &new_cdclk_state->actual)) {
> > +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> > +					     &old_cdclk_state->actual,
> > +					     &new_cdclk_state->actual)) {
> > +		drm_dbg_kms(&dev_priv->drm,
> > +			    "Can change cdclk via crawling and squashing\n");
> > +	} else if (intel_cdclk_can_squash(dev_priv,
> > +					&old_cdclk_state->actual,
> > +					&new_cdclk_state->actual)) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk via squashing\n");
> >  	} else if (intel_cdclk_can_crawl(dev_priv,
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
