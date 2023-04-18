Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E98996E5846
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 07:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF5E610E044;
	Tue, 18 Apr 2023 05:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2AB110E044
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 05:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681794155; x=1713330155;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F4OHDUcZ6bs+HZyVvves0PPpyJpyj3re3URo9W+BmGU=;
 b=XHQ5bDUM4Oi/EsFimUeUI3JKaZfpzMiYT8k6klSuZsd0l0icEjv/i6M8
 tFblOd3WypzcspNoTuvH7WT93gbN2V0/EJ4IQf4DCLeXjflEbQzfhIVdP
 TTUdZr22SnkKSX2PNYq0vA3FDSOr8rINEYLRhdEXgbcURDqD8TliKQve4
 wmtijE4YjaXToAz4O6t5WZVPVqGNMOBuJ0wiK3JLlJq07HTSNCYloy49X
 fOHBd1tzdqDgRcyWJzdA8yjfFmJx0GrGfP63YD66jI7xSOk0hSjyeCdce
 U+dRuV7f9gBURHUMCbu1MhUYtJInng2B2GIhlURj8D9+wWMzbKQq7UPss w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="346922605"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="346922605"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 22:02:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="937108140"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="937108140"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 17 Apr 2023 22:02:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 22:02:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 22:02:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 22:02:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 22:02:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eqp7MwD2MsFdZq7D2TKNud/nGWpCTMwo/m9J2735v4sNceQ8P4uL5ouJfnigibzyE6LWI9H80qvF8/sfcNd0Cfog/l3NwjzXcQI+cuqqBA9k9OPqFFZ/qhd9fBhTcsLyLxmfgPWDLzytUZNWGB0iTHLS5PZbmM3a7BasQLnz8wI0XxNU/U+KrPgfr5LyD4uoq9t7SDw48yFQ0dUL5UTecC6sRIvzoLU53Fynzf8cyFN+mktrsXX0+wxIZt5unYcfpo40K4MUwDazhXZ019yXdZN0BPfh83dbAOZUHxIE64lZlhvlCGUUGFa4sR+GSz4m4nF8R9sSy9/46O+oKtOZ+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KFsTaxxhpbD5tbUlPcixkIazzz4w+4aAakR6CEI5USw=;
 b=QoTDHbI0eFpxr5Scvzu8vNweGJ6JHi88Wg3Ze6ODXWPyLG5c54PvzWRmQf3/Nh+7YsVBz6YMPRRYu17FZbenGa+bxYscCTrt05nf3wiVJC95CUdW8XkFXWmuAXbiCPhWK0WnE2LmAAqLr9KZPRQYjg3rEgmgEOAB2WE+uQCA716z8jeSaXbUZBFDzZPlgS2rpK4T24Mfzn0WQRbuu0H7SuV44RAWWJVuk+prn1MyVQU1w9YSQAKGG0/SW/+ctGJpGfniRzG9HXqMNFo5mfhkGfWkBjhtusSS9GVzoaINniCIp7U5LKc6to1YrFh/U1CiwqwDHrFxKmfvHiyaR5x4ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA0PR11MB4640.namprd11.prod.outlook.com (2603:10b6:806:9b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 05:02:26 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 05:02:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
Thread-Index: AQHZZ48eDLRLF5QNKUCgBLAIXnjav68vRLgAgAAXivCAAATIAIAAA/oAgAACTwCAAAi/AIAAA9JAgAADboCAAAgewIAAAd8AgAEVJAA=
Date: Tue, 18 Apr 2023 05:02:26 +0000
Message-ID: <SN7PR11MB6750921E2B37F7AFC67180FBE39D9@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230405071951.1258132-1-suraj.kandpal@intel.com>
 <871qkigabf.fsf@intel.com>
 <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87h6teer21.fsf@intel.com>
 <SN7PR11MB67501452EA239C59649E8335E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87bkjmeq0j.fsf@intel.com> <ZD0tItORRLeBZ3sj@ideak-desk.fi.intel.com>
 <SN7PR11MB6750A7954E47CF19AA16DDD9E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <ZD0zN66ryN2HqqYV@ideak-desk.fi.intel.com>
 <SN7PR11MB6750DBE164843AAD7A037ABEE39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <ZD07mPhMi5cL6SZ/@ideak-desk.fi.intel.com>
In-Reply-To: <ZD07mPhMi5cL6SZ/@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA0PR11MB4640:EE_
x-ms-office365-filtering-correlation-id: 5b582761-e493-484b-3ea2-08db3fca1a59
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VyGKNVcHvYf+9/ZnFHM51+jFUDPXuojZ3385NDAxaAeFxidf2+9MVORwu1DBaozUYN3QJRw/dVKFj2gq4M7AArEdwmvROcGI5Zk8y5uedxxlU6RTpIFnG04TWAELE0ExYlXbVFWcXCh11ms4+cI8EIejwRavd8P23F+/YWmKw6cZHjgtYQCjFIhRGCO12H89YF3AcDTgSizOHwo9JC1sdkjp/F1adrBEvct/0zQiQLXgIfo2ORPvPSkJVikj68/QzB43w77Qa8yKtcLbVH8t/sEd21N+kSPYG+BYkcu9mhINvDOTjSV/ECEu8yJEZI3TxN6diz6IqBYOvpV6Qv5HAMwOZeStczdpJMngqMqi5As+HLdNVWEkorqk+J9odTIBVFbAc3uVQtjWKqzToJyQqRNK2yCHsyldxsRTQh/szaqE76IXY6vS+ged0Nl0ZTvkRh2mHtjzcgfefoNkMtyzYNHlWn2us3FUQiImlIdiT+DekRMYQL2qV9vWo/h9dU9Y8GMCr8BJ9QDfDBwp6QsvxyuDcrZ5LUz1N4DXjm5pak2sLIOmOTrjVHA4OoFfD4VTidarItCMGsuJMw6fD8JZAzmRbT6glz5ZeEqVu31prmkND2Or7LrbZE7OeuPSWM/i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(376002)(39860400002)(396003)(451199021)(38100700002)(8936002)(6862004)(8676002)(122000001)(38070700005)(5660300002)(2906002)(33656002)(86362001)(52536014)(55016003)(478600001)(7696005)(71200400001)(54906003)(6636002)(186003)(9686003)(66946007)(6506007)(76116006)(66476007)(66446008)(26005)(41300700001)(82960400001)(316002)(4326008)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7RjfkWYo4rwbx4Aif26//zn49l2Q1MuC76haJOaauLxLzbfxefEPAj2G+CnI?=
 =?us-ascii?Q?/cAngeAKbf3Md+P+LpyVe+xrY95LvIvJqEFabFGbp7X+I26eCCS+J+9gtMWg?=
 =?us-ascii?Q?2RQLsJSH25c2rvq+i5lwzyZJHdJAxobHsKH/suwv0LpgV7gmOLeIZFJZB/YT?=
 =?us-ascii?Q?EJyGVxMijLcAT9+Kutc9rmAFSHDvOe/Bjs2+bzs8N46nLWdVMCv4gTas0RhA?=
 =?us-ascii?Q?qcLJXnrvUL2JpKHQCpUf+HVV/RtGGyCWybrwxd7HFivPULCK/+heHQbr3g5N?=
 =?us-ascii?Q?+Si7QFjcG/Elvokd1X2LMWyO1rNWGaC3Isp4wwUoRiBwUblA2nEXQdCTUsnN?=
 =?us-ascii?Q?q7eLz/BTUeeAgjvs4GgsfPX+JxPBQqmZSALwcsCiwzZ3o7r7NfWlNlCdFa5O?=
 =?us-ascii?Q?zKt2jNz3vOxmA5Pegp2SPgw6pSlTXW0e70Fl2mNMrV1ScY7BUnS33JoUzdYW?=
 =?us-ascii?Q?P9Ciuxlu8YlLLtikYbO8dCcxHXU00wd5DYz4zigX78/YVVrwvy75MF92yIZX?=
 =?us-ascii?Q?cS+Rdn/kIYtqEqTN2NbYdJ4Poo+Fi82o/EE1D2MgAsoNGrgz3pn83UcI0sCQ?=
 =?us-ascii?Q?tTrD1aGAkDV+fWP7WJv5Yq1Td6/Vw0g+zNMzzFMqtmi7we97hgCkz84PgSV4?=
 =?us-ascii?Q?A/6sSaWwepby3OXQaWIpydSYXgdk/vGYWfUG93Hf7vmzW3FRnNRQmgk9WNVU?=
 =?us-ascii?Q?myRHQjyEu225d3vnpEoge5OsSPyEn+llZ2Jo9lMQxaiczpFN2cZIDGG74QxQ?=
 =?us-ascii?Q?2GbN3wYykLBawFAVJyqVa/oDTBdiQs9vGoyQLT3RntnBDeeAaTw57fR5AogF?=
 =?us-ascii?Q?V6I6bnRgwnAKIrXy+cnrK8UMv4wYPFHzeokZLy4+7YJgv3ezP42UEoNRa8oy?=
 =?us-ascii?Q?IiJQ5VEJtde9izh/TnBAV65qOA068vUbBkpY8DPbj+h+zX9A7Yf23aoqx0rI?=
 =?us-ascii?Q?Paq06Y4Qza9QOvj2i1hgLVps/wfsZEsq7ciAu1GwZOuzBlxGmSfN3AIM4Ham?=
 =?us-ascii?Q?keDDcfHRRU29cNxkiheR0xbRdx53QWk15k1fuxVcMTDYXLRUYHHuo+bd6rbN?=
 =?us-ascii?Q?GSx9VnXAdoScv4+Rp2pt/x3N6zk6xpVpKgSOmZqMs44hwxKyjvuMtdmZafkp?=
 =?us-ascii?Q?oeQbrTg4lLn8IVhRB5iRKSIY+m9iEGFV4d+aK9ieQIsEspOK7FnH2JPvbe3n?=
 =?us-ascii?Q?0t9AchsA23ZMY/AXGmWw6SxsgWlQgrgrR5s2mNZ3ORj1HLWl2wPv4wTAS0k/?=
 =?us-ascii?Q?uSbl37Bbal5TguJNFStd1wyO9BbanYoyKNWYl07gxSdTIuUCuQQ7LVvm18Ot?=
 =?us-ascii?Q?8NOPyjzvU1SDL7A5TEf/gSAWa3zRuihmvuY/Rq1awstOEFZc/SDUtk9op722?=
 =?us-ascii?Q?Fvh4Of70ZZBFRcGUPu0unyXkBB5CuvVquPIbv+kXtcleobFawbDE9ll1Wj41?=
 =?us-ascii?Q?zCbbH+WBd9I56UprknnKbX2yoJl7MAoGTM/t8YuBHQMIVymw6bhmXHIwrR2W?=
 =?us-ascii?Q?b6PEc4Ra2GHHm/NlqPVAVeew7bb/FbpcyXT2MRIMYt/g1zX9duuDVd/sC1CW?=
 =?us-ascii?Q?UVWEB6JjgE2+/AFaeh6ZJUnLQzhW+SauJPl9Ru2d?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b582761-e493-484b-3ea2-08db3fca1a59
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 05:02:26.0763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kPrcmb5L5tA2r5uL3bAOJ5UdMnGTd5VKXRBiTY5DNHmFXa0qNjDAgmeKlQ8gkJEaFGnmNdGqDB4yBlIz8pD+GA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4640
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
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

> On Mon, Apr 17, 2023 at 03:25:34PM +0300, Kandpal, Suraj wrote:
> > >
> > > On Mon, Apr 17, 2023 at 02:43:25PM +0300, Kandpal, Suraj wrote:
> > > > > [...]
> > > > > Adding a non-default enable_timeout to the power well descriptor
> > > > > would avoid adding more platform checks:
> > > > >
> > > > > diff --git
> > > > > a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > > > index 6645eb1911d85..8ca1f34be14c2 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > > > @@ -1378,13 +1378,18 @@ static const struct i915_power_well_desc
> xelpd_power_wells_main[] =3D {
> > > > >                       I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.id=
x =3D
> ICL_PW_CTL_IDX_AUX_C),
> > > > >                       I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.id=
x =3D
> XELPD_PW_CTL_IDX_AUX_D),
> > > > >                       I915_PW("AUX_E", &icl_pwdoms_aux_e,
> > > > > .hsw.idx =3D XELPD_PW_CTL_IDX_AUX_E),
> > > > > +             ),
> > > > > +             .ops =3D &icl_aux_power_well_ops,
> > > > > +             .fixed_enable_delay =3D true,
> > > > > +     }, {
> > > > > +             .instances =3D &I915_PW_INSTANCES(
> > > > >                       I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC1),
> > > > >                       I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC2),
> > > > >                       I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC3),
> > > > >                       I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4,
> .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TC4),
> > > > >               ),
> > > > >               .ops =3D &icl_aux_power_well_ops,
> > > > > -             .fixed_enable_delay =3D true,
> > > > > +             .enable_timeout =3D 500,
> > > > >       }, {
> > > > >               .instances =3D &I915_PW_INSTANCES(
> > > > >                       I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1,
> > > > > .hsw.idx =3D TGL_PW_CTL_IDX_AUX_TBT1), diff --git
> > > > > a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > index 62bafcbc7937c..930a42c825c36 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > @@ -253,6 +253,7 @@ static void
> > > > > hsw_wait_for_power_well_enable(struct
> > > > > drm_i915_private *dev_priv,  {
> > > > >       const struct i915_power_well_regs *regs =3D power_well->des=
c-
> >ops->regs;
> > > > >       int pw_idx =3D
> > > > > i915_power_well_instance(power_well)->hsw.idx;
> > > > > +     int timeout =3D power_well->desc->enable_timeout ? : 1;
> > > > >
> > > > >       /*
> > > > >        * For some power wells we're not supposed to watch the
> > > > > status bit for @@ -266,7 +267,7 @@ static void
> > > > > hsw_wait_for_power_well_enable(struct drm_i915_private
> > > > > *dev_priv,
> > > > >
> > > > >       /* Timeout for PW1:10 us, AUX:not specified, other PWs:20 u=
s. */
> > > > >       if (intel_de_wait_for_set(dev_priv, regs->driver,
> > > > > -                               HSW_PWR_WELL_CTL_STATE(pw_idx), 1=
)) {
> > > > > +                               HSW_PWR_WELL_CTL_STATE(pw_idx),
> > > > > + timeout)) {
> > > > >               drm_dbg_kms(&dev_priv->drm, "%s power well enable
> timeout\n",
> > > > >                           intel_power_well_name(power_well));
> > > > >
> > > > > diff --git
> > > > > a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > > > b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > > > index ba7cb977e7c7f..fd5acf68503e1 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > > > @@ -110,6 +110,8 @@ struct i915_power_well_desc {
> > > > >        * Thunderbolt mode.
> > > > >        */
> > > > >       u16 is_tc_tbt:1;
> > > > > +     /* Enable timeout if bigger than the default 1ms. */
> > > > > +     u16 enable_timeout;
> > > > >  };
> > > > >
> > > >
> > > > How would we make sure that this timeout only applies to ADLS in
> > > > that case as that's whom the workaround is for?
> > >
> > > The HSD is for display 13 ADL, that is ADL-P/M/N. The ADL-S power
> > > wells are described separately in adls_power_wells.
> >
> > Right sorry meant ADLP so how do we make sure this is enabled only for
> > the required Display version
>=20
> It is enabled only for those. xelpd_power_wells_main is used by display 1=
3
> platforms.
>=20

Ohkay got it I can float this version of fix if Jani is okay with this.

Regards,
Suraj Kandpal

> > Regards,
> > Suraj Kandpal
> > >
> > > --Imre
