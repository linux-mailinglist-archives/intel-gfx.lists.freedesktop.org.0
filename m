Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFD275274A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 17:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4722810E702;
	Thu, 13 Jul 2023 15:34:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625E810E70C
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 15:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689262484; x=1720798484;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/Bc0SCUwLjJHH2mukl9CQ90Fj5A/f3m0BECsk3o1xAk=;
 b=PQy/o6wxE7oD/nX9RpbUQTvseJpJVKFk0CYYa4atuQJcJ4V0UWV4BHia
 zNV7atG1eg9ulqBgurcoHYiMxap825t7YCJ2uLD9x5pRGhGKXVxF6xU/0
 pMGt2nLn7ysdxU4IlBb+3vM151W19RX9DDQQDCVZYuC8bDuRmHvI3PdE7
 OPeaNP6iNyzpOOr+JRV4/aB/j0TuWxggFxYfI0ENo8/5bWKP1VPuat4Ir
 I4+2WR+hUK4Y0jIvjfFXSN9rwYWVLKPEvm2ACzX2fRfr1zLn0PEEdnTx+
 2g6/rEd4jGgiJzuF3qWnKhiVTm8zSBESREQGfKseX69Etpapi6KIIlZym w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="350095935"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="350095935"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 08:34:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="699296876"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="699296876"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2023 08:34:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 08:34:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 08:34:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 08:34:31 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 08:34:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TrQBFF7g7J3+dwV+h2Ev5z1fjfE6U7od5vB4t9kylAqEUdkYPk70AaQtdteLxknUfs8n6BZlk067SeGUnuaP+GXRCNQBdctIDn/IEQbEVZd3kt3tg5+HAbk799+XEshnk7eYjJOxt69J1YYrYG/Hla1/c/kM5XRulSc5p9k5uxjWTXFGkJI5SW7NRGREl+wgZFDwPoUjMJoFtg7WNXgYMPkPTFh1zkko/FT/kKABJ51FmsQS0u0ghBO4eEoK49USw7nGylUx/nsAkePtEzQWYaOnljHSZMMJWizWVUZHu7oF8I4rbcQlYMDhXPJQ+Yo3EfmQncxp6wyqKNnfgikg9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WPhGjDZMR0UKMz3uHStxZe0vGdXBVHzEieF7nPvIiUE=;
 b=WtL68c9vqYHuQcUokRHKhFT3YgDU0DZe+Bq0SoOPWRaf8RPKH9gUsdHEFy9FOj2jkdm/u8pgod1ETkPq5/uS5Wq1bGfsF5UvXQkQqn4pnWJBPn0e4cuYVdF43Oq2Is0aUnOD1n/r2zwZUaHSPkEfssjLTnp1HlPRTD6Uj4HgLYgmaOS/tDsQP+Eog79d/N3LD5Sj/xp7RdDDRnTOc91VzZ4n6ZsLPQhaFVTnj9JbovlG2nIRY/v766X7PSMwqCx9cEqCaOPUrV8scNCHeMP7g1XhaSNHk+9iIWaRymB+RVKdJ40RIxaWKP8vB/CalCpHP9akA3PYr9r3pIf7MIOcSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by SA1PR11MB7013.namprd11.prod.outlook.com (2603:10b6:806:2be::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Thu, 13 Jul
 2023 15:34:29 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::a6c8:499b:361d:ca6b]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::a6c8:499b:361d:ca6b%6]) with mapi id 15.20.6588.022; Thu, 13 Jul 2023
 15:34:29 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to have
 differing sync polarities
Thread-Index: AQHZs5CWXyt1cCKow02QYixtBw1CYq+0u24AgAEO/oCAAACnsIAB5BOAgAAofEA=
Date: Thu, 13 Jul 2023 15:34:29 +0000
Message-ID: <DM6PR11MB4204CCDC9C9DAA741B7807DE8937A@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20230711002529.9742-1-vidya.srinivas@intel.com>
 <87o7kih1uh.fsf@intel.com> <87ilaph7ie.fsf@intel.com>
 <DM6PR11MB4204E1633B31119E05BA58238936A@DM6PR11MB4204.namprd11.prod.outlook.com>
 <877cr4ez6w.fsf@intel.com>
In-Reply-To: <877cr4ez6w.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4204:EE_|SA1PR11MB7013:EE_
x-ms-office365-filtering-correlation-id: 02d2df76-ac15-4a42-cb3e-08db83b6a5d0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CHpO1HlTHdydAvE1anId60aE3TIl6bjH1a1Oqt7Pv4VtH7/yDgzfQrTLe5yOpodJq4SEeTYCOvXcBJjhS+mBzLbtbfoRQ/nqn8Q0otJtUEAzibqa+WJFL+CAKxOZvWkzd+Sp4cXw6crbSAE508ez2Nf1BjFme2gU3O17hOxDRju/5qMFzL5Bz71RYGvHGrYSF+wL39N1/4dlK2/NRpfdqpXDDq51//L6F5wzzGdnwzdnkUmzhgRWnnKRHd6g5J4iEyIPLCL3IorzuyShV2H5cVP6qTcb0/R9qR+VnrxgrxzUOVPPRmVmhhXhS5VIXqNBEcl2bUHnw9NtoOQo4jtm2V6dPrM9LvxCcyZE2PKDSkOBALdL8NKvKsN9CUoc4HumUbjG67eL109EEdtVvaHOiCnp/kEaLhMWSP/u/2QyZnMtQ5+yFLWSWTdAcu9soi4bcxbUln7I9x9y+VVen5ncefUQ7PRlEdT8+56Ea14g+bOnj8YnU2/EOpBt3bd+a4NEAOoUgkufOL+LlpBVG/P3ErADioGTyhLwvimIFz4o8h9nF71pEqJEg1rBZ/AsPr4v912IKki1QfSYXbN7sFkF2eeABK0xslJIcQwF3Qao5RTR9QSl4mbLemwGcnTndflI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(136003)(366004)(346002)(451199021)(5660300002)(52536014)(66556008)(8936002)(8676002)(76116006)(2906002)(66476007)(64756008)(66446008)(66946007)(316002)(71200400001)(9686003)(7696005)(53546011)(26005)(186003)(83380400001)(6506007)(41300700001)(110136005)(478600001)(82960400001)(122000001)(33656002)(38070700005)(38100700002)(55016003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6ye4rGrsr4SIx0WRLd8LX2hbnIUscuABLS16NIuMCqTKQbQFJN3Yy2UTOnL8?=
 =?us-ascii?Q?jXCp06w/kxfcrU7VBmbDtpjF/7s9CKBTPqfhTGqAg/CYqSbZ++Mm1TZIDU29?=
 =?us-ascii?Q?+Cgj8y1GN/yT5i0qdJYAeZKDSGyV33PLWL0hiEDiE4b9zlSdQz64e4TLld8F?=
 =?us-ascii?Q?7K3YqGiTIf29WW41YECCgdia/IVzZWNYo64/96T+T4eXvx71DEVns+dCi75d?=
 =?us-ascii?Q?4UHiJUscnYZCq06pXhZrX/kMMbgW+I4VyLdjtBhFrIt3639HxG2OfAYYO2GV?=
 =?us-ascii?Q?IWbIagbBYvHD7moqyw5BPnDIQNT5qY5DeUOBGFXB+KMe1SaBo6A8qIAXkIx9?=
 =?us-ascii?Q?MZQuPwmawAzZlTVnFQxjlVH6aDkVRa/ojcbyxaKtjkNH+mNWNeLFfv40mHPG?=
 =?us-ascii?Q?AOgMUNwNMKLTNOb777AETs/yQ+EewRw+/fUtdHvy07vwhr3w9isKjnwDCUuh?=
 =?us-ascii?Q?U0PgldXPx31sEcLXravwcSqAwwcOEZt+QljoK9ly2Q3uFHXvRwY0XE3xaTNV?=
 =?us-ascii?Q?WTqXCXJgCJHUJbXDVfFNo/TR87lcFRsvXtxC2PrSNG6oLRDBhNqXner487wG?=
 =?us-ascii?Q?uhIiMZpOXrZrSn/VWrTMXRuOWjxK7xpnVjNEi8utbYSpSHWUtFWe7ERWIKH0?=
 =?us-ascii?Q?6u27tTm65uD26thnoGR+CUpNxiHa1z8flhrWoN74hgywHbP65S95u0Fh+5Eo?=
 =?us-ascii?Q?u/0orU7XxOiYHhjii45yd+gQWqAyv9QQRLaMAWM+pwrgWVhiO1yc2B9hSzFs?=
 =?us-ascii?Q?PnmbWAdn19MPtznUFpXV6/7TNmJK8KZYZM/CxcaLaEa8e08HyO6mN/affu5V?=
 =?us-ascii?Q?wSAIxTxdzak3U/jDhmLfmw7lS1W1Poi8XCpJdGBy2yk315FSv8rWdAQuy4w6?=
 =?us-ascii?Q?8LapHctco9F939aBtOBtAv7ql1Vn3sVtRtYmAd4gz7NMAbAfnjgjXqXeZmsP?=
 =?us-ascii?Q?w+3cbsZnY3ulLk2t3FrcaV85R+6yb55EdjtAxrKTZPD4Po2QN7XTabdKARqF?=
 =?us-ascii?Q?PHWQU3KCAs7DuFj1T/L4625hon9Dcyr1T8sgM1BE7b6Vn9qXYzzwaAkPo95G?=
 =?us-ascii?Q?WP+efnii4ftJXn0spyer8dbGfKS/DPR2yfQ91RENLKbMC4bOaDCnbUh31DPd?=
 =?us-ascii?Q?2SIPlwJq6wGQZx7WfVVR3iezcFMh+lDMVBczI9QgVr7AZJolgm8f+duG9IXK?=
 =?us-ascii?Q?/2/gOFrokcVCh8Tv2z3aVhb2lPQRhUC+JJhwOpH+rED70a+zYqW1PmHxXglM?=
 =?us-ascii?Q?rqq2YsjIlW557Ltlws5BUOHx4+JA5ZL2wO8j7PDOIMBrdRW+tPCFUjJGXTO1?=
 =?us-ascii?Q?qov4a/UGioC8v725GmByiiT0NImf6OI/T9uMjVkwVJTa88wbl8QziqFeEARo?=
 =?us-ascii?Q?asw7EbF6aGz0B54w8ZVZ5XEu8wLUBkS/NQSas3MzTRW7A8CBQBSujRcBUUn7?=
 =?us-ascii?Q?ugd/3rV5eh2ZYH+3hUPb/9P3/ifFlRhvFnJVU6k15C4I7tYm3GnDBVMAyVbI?=
 =?us-ascii?Q?nWg3dIGqe5ShBPh5bDKETtoS5TTjBwo1RB98jZkOyUVlYdb8jCiu/mC9hRoz?=
 =?us-ascii?Q?d3yKT8Pqk657dHE/RIs7leVRqjJELYJcX21RRxk9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02d2df76-ac15-4a42-cb3e-08db83b6a5d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2023 15:34:29.1788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ms1ADCgxnsltHPf09i6hW/hA0hYdGXFBOa2QZEYljrsCoLrQ0vokr7LuT9NL/pU3k87J6nFeDa3960VZSMI6jSUTBbgBERnNDH53n04zbE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7013
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to have
 differing sync polarities
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, July 13, 2023 6:39 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to have
> differing sync polarities
>=20
> On Wed, 12 Jul 2023, "Srinivas, Vidya" <vidya.srinivas@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Wednesday, July 12, 2023 1:44 PM
> >> To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to
> >> have differing sync polarities
> >>
> >> On Tue, 11 Jul 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> >> > On Tue, 11 Jul 2023, Vidya Srinivas <vidya.srinivas@intel.com> wrote=
:
> >> >> v2: Add Jani Nikula's change for quirk for sync polarity
> >> >
> >> > This was a quick hack suggestion to try. If it works, I think it
> >> > works by concidence, because a fastset won't update the sync flags
> >> > in TRANS_DDI_FUNC_CTL register. Did not check whether they can even
> >> > be updated while the transcoder is enabled.
> >>
> >> Bspec 49198 seems to indicate TRANS_DDI_FUNC_CTL can be changed
> >> without a full mode set.
> >>
> >> The sync polarity still needs to be modified in the ->update_pipe() ho=
oks.
> >
> > Hello Jani,
> >
> > Thank you very much. Apart from sync polarity, VRR panel is doing full
> > modeset between refresh rates 165 to 60Hz due to vrr.vmin, vrr.vmax,
> vrr.flipline and vrr.guardband mismatch.
> > Can VRR panel do seamless fastset between 165Hz and 60Hz? Kindly let me
> know.
> > Thank you.
>=20
> I think it should be possible, even if the driver does not handle it prop=
erly
> atm.
>=20
> Not sure if it can be combined with VRR itself. I guess typically you'd c=
hange
> the refresh rate instead of fastset when you're using VRR, but if you're =
not
> using VRR, would be great to be able to have DRRS and fastsets between th=
e
> modes.

Hello Jani,

Thank you very much for the inputs.

Regards
Vidya

>=20
> BR,
> Jani.
>=20
> >
> > Regards
> > Vidya
> >>
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >> >
> >> >> CC: Jani Nikula <jani.nikula@intel.com>
> >> >> Credits-to: Jani Nikula <jani.nikula@intel.com>
> >> >> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> >> >
> >> > It would be useful to have a bug report at fdo gitlab with the EDID
> >> > attached.
> >> >
> >> > BR,
> >> > Jani.
> >> >
> >> >
> >> >> ---
> >> >>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
> >> >>  drivers/gpu/drm/i915/display/intel_panel.c   | 10 ++++++----
> >> >>  2 files changed, 7 insertions(+), 5 deletions(-)
> >> >>
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> >> >> b/drivers/gpu/drm/i915/display/intel_display.c
> >> >> index 43cba98f7753..088b45e032aa 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> >> @@ -5234,7 +5234,7 @@ intel_pipe_config_compare(const struct
> >> intel_crtc_state *current_config,
> >> >>    PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> >>                          DRM_MODE_FLAG_INTERLACE);
> >> >>
> >> >> -  if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> >> >> +  if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)
> >> &&
> >> >> +!fastset) {
> >> >>            PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> >>                                  DRM_MODE_FLAG_PHSYNC);
> >> >>            PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> >> >> b/drivers/gpu/drm/i915/display/intel_panel.c
> >> >> index 9232a305b1e6..b9eeaedabd22 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> >> >> @@ -112,10 +112,12 @@ intel_panel_fixed_mode(struct
> >> >> intel_connector *connector,  static bool is_alt_drrs_mode(const
> >> >> struct drm_display_mode
> >> *mode,
> >> >>                         const struct drm_display_mode
> >> >> *preferred_mode)
> >> {
> >> >> -  return drm_mode_match(mode, preferred_mode,
> >> >> -                        DRM_MODE_MATCH_TIMINGS |
> >> >> -                        DRM_MODE_MATCH_FLAGS |
> >> >> -                        DRM_MODE_MATCH_3D_FLAGS) &&
> >> >> +  u32 sync_flags =3D DRM_MODE_FLAG_PHSYNC |
> >> DRM_MODE_FLAG_NHSYNC |
> >> >> +          DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC;
> >> >> +
> >> >> +  return (mode->flags & ~sync_flags) =3D=3D (preferred_mode->flags=
 &
> >> ~sync_flags) &&
> >> >> +          mode->hdisplay =3D=3D preferred_mode->hdisplay &&
> >> >> +          mode->vdisplay =3D=3D preferred_mode->vdisplay &&
> >> >>            mode->clock !=3D preferred_mode->clock;  }
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
