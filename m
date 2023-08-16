Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 193A977DE93
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 12:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A2E10E09A;
	Wed, 16 Aug 2023 10:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2577910E09A
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692181473; x=1723717473;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Rnec/insTyoUQPN3ONsM9EY+upbau6D/IzmjY0xyoA=;
 b=TFxaY/7cCKQXjiVv3YsOqzBiz7Dx987Rbjvo3R+VHfcS+Kw6UAZAxnXu
 FATJV04ZRInknXl0HAqXZoSaaNSfMzeju2vC7vaikmjOtK/tpmKxatQnC
 fPvWWzM9q+cRa44w/7GiLvcDEOW0DZQw49LYq2xjZ/oSiNJxe/8X1ofK+
 J88VPOfgzz9FC2AVwCyBNYWo4PYjnacD4SrtZlLnha+cuf212PwJovkYl
 Svhgnshe4hojeoO7A7ZEsy5dDCLaF+ZFSJv1DIR1lgVq65gIKcyZXt2tQ
 WWXzRnWBV4w/zIoOZNpGMv/ZeJwcCo8q6/8vabxAY+J1teK4pFbdpkl8E w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="403474741"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="403474741"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 03:24:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="804170773"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="804170773"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 16 Aug 2023 03:24:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 03:24:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 03:24:31 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 03:24:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bz1P7nFlG+MwKk2vAL0BQ0ICpToCkqbcUCiS06RZYxtYMBw+LnjK2EDPvRdv7UGrKdCdusT7ldM7PVkiq7Cm6n25neJQhRmQqUVjPaOHHmr6+TB3VPK78wH0wV3t43fPCLbzD+RA59/yvnICLguM1Xic5KYHMAMxawMEjF3GrTOO/rEHHJYSO+zLRVyaNH79vI2hFaF9O4w+uOs2r+Aj+BhkjfkN3gM54UplY5qszFHWXwCrgcIaFjzAudAg8a/MvDTqIRVNbZE+XTu1Y8JsIYzlpXhJHwyAmxSa4BgNjrOAZf81osZRVKg3+ke5MrxXR+vrwkeOwGSWvL/4hqKS6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EtNz7KAiEAOvTxrCGV/GRoFjNF55J/IDkLcPUMVTDCc=;
 b=MRyCXRQnP07x1lUUhgC36UEKKJtks+y6QAQp4TdSB62VCgJxumiQYq1FzoXyiRY045a/z2Na3LqWloatX2olg+de8zF3EgcFZogr0dJQzqgcpZTHijX58/jbmtxl4ugDl9JS3lB2OVmRnMefP1Di3prqDZqSB8Xvf5qFsyrQI8yK9Gb4MiCA7tz4tk9/ti/Fqx+lCli5PDzr95q0Q62rDtnRjyu4sjk9mlmwfyXjKKzme5j1HsRDats3tSuYNOZaC+0Z4AAiaL2aOIoo5yUZpwF1/P2kRKOnGzgBjIyfUe+XraecFcGNCqDOxaoVwzMIDKvZmPWjnu47rQBQCj1LVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB5952.namprd11.prod.outlook.com (2603:10b6:510:147::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 10:24:29 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Wed, 16 Aug 2023
 10:24:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v7 4/8] drm/i915/vdsc: Add function to read
 any PPS register
Thread-Index: AQHZydBAnqMep2u77U2IHnhhdUkYtq/ss7eAgAAAx9CAAA1qgIAAAI8w
Date: Wed, 16 Aug 2023 10:24:28 +0000
Message-ID: <SN7PR11MB67504CBA7DBB30B89EA3A2F4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230808081134.4187416-1-suraj.kandpal@intel.com>
 <20230808081134.4187416-5-suraj.kandpal@intel.com> <87r0o39w46.fsf@intel.com>
 <SN7PR11MB6750232E19CD74866D061BD4E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87jztv9tri.fsf@intel.com>
In-Reply-To: <87jztv9tri.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB5952:EE_
x-ms-office365-filtering-correlation-id: 4d541fbc-0c1f-44b2-ebf6-08db9e42f949
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JHeeOd2rHs0HAi251/GiNStQgyYt1Kb6WSeDxFqoZkuN1Uwf8s/To646Z7QzZLUXMAPQqLRCKYEsrWMG9rh6VR4dg1y90b4hU1m0tMI6exQd3/iR8vrN7haMXD+wUeW4H7t46vT0pMO3J/SxMGITJdqjOGFAkA50lxS5Jj/uzTlIf6KfX9iOZ2j/0KQvtvH51pzVWM/T5UKwESO9HyHQM2+Xrxsbr8qLwlpcEg1Idu4bO83XcouQocnqhyYBeLgMHEueZrv6g3lYK3lYFNmo2iJK3X+ai09WnYq4D8INjmdYa60skc8f2zGXoDfV50lozFMY9rg8XHkEhPmD5ZsCx3jXL1KNOoEG0u8+gseXoxrilZgwVX5bYqPgd0nqCDpZrLFqLq/eekNriLEjctsyM78sqlVusUsDXOUdTVys/myrQ6wnnn/Vb+1uTUOVe9X5ayzzmJ5QiqaTkJ/6w82KmzPs7JtjfkJyXX3IzQ09pv7zZLHs3H5+Phst+2yioR7NkMsJ9YhMOAx2mi8KEItRd0u0BcEoGat8Fq4pETfC+2sB53riwdO0OgJmJPhxNYDzUcsR2IE7XY0GNI+7n09dNHd6KtFxNKvO5o90nPWWjhq2ujgZR7+2VIXLu++mu5fd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(136003)(396003)(39860400002)(1800799009)(451199024)(186009)(2906002)(30864003)(83380400001)(86362001)(478600001)(7696005)(6506007)(71200400001)(33656002)(9686003)(55016003)(5660300002)(41300700001)(52536014)(122000001)(316002)(66946007)(66556008)(66476007)(66446008)(64756008)(110136005)(76116006)(8676002)(8936002)(4326008)(82960400001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cfksGFe8eyhKxSqt1d/oLhYDc/+BU75V6ThNpu9+F9johGU9nASlcwDF0TpH?=
 =?us-ascii?Q?00MtMnpNcWQCql17X3++GrmodsLzMYenMyqKsgLnh4HlS84tO/7F+H3Sy3fZ?=
 =?us-ascii?Q?0ZhXs0D+Y0BNk5I8vKMKGYAmtAKsfTWZJARkDbNPqkE1iWdKdQzqJYlGnJ86?=
 =?us-ascii?Q?rEQzFuWdhAHbBsOgXY0uYQrA8QNbJPX7tQke1AOlQ4KniFFWk0UGN49l2z1w?=
 =?us-ascii?Q?EF/oenoOKT0DbDWD77171+LxOXo1w69l+EIYHqBwALBn2yqbepZVH9aZw3VO?=
 =?us-ascii?Q?uRdbrAvDewssIFr2N2s94qEgoae9vjYTgphgHCkAlTtz81gCBxSeI6qVUSk3?=
 =?us-ascii?Q?SkQid2M6TzddBxlaptp/1zrrKz31pDU+YnDNjvm1L6AfMNEFDeQxpb6B2Ki7?=
 =?us-ascii?Q?y98LEyQa6vXHh3m1RQY0GOO4Kf8ptIDb1ybeHYGCMUcl+e2yhYdQN2IZNROS?=
 =?us-ascii?Q?HhQdTpAKH2MxfgS0OHGDCxxeroaN8iA0CKIFPSOMP2tXeDHgM+FCNTpifyQU?=
 =?us-ascii?Q?1yBMso7F17F3abAf1M3+uxp95+9Z7LUe/gLEd2Wslqp48opM95QepJmb+876?=
 =?us-ascii?Q?mnOtLuPceeTJ/1T41QakZC2Gi8+hoeXmECkEW5PCihVQ6UkTZhIumb3S7bcM?=
 =?us-ascii?Q?83xMk0MkESNS22YrUYpiD76WPu6mjBCyIpoONzwDSSAqgn4PYCOyPAGOukli?=
 =?us-ascii?Q?3YG6eI5/9Slxs1DSPrH3trMVUJBysUV/oHZ5lbeCKDPrNvbzU+lFy4Zsm49/?=
 =?us-ascii?Q?RKXb5hD2GQa8Pp6v7A6bBE50x8OGazt0XvrgJwKNzBXPAo0Rvl/Ows0vU8JA?=
 =?us-ascii?Q?NwnvjopRVeMImn2AeiIMz24ZgNhpDtcRop/ePlCGtjssmZICyuAnQEQzY3Rf?=
 =?us-ascii?Q?5vHy48LsMRdFHlK/EgppUr0znqk6pOWrFjg1PgDBZNEyqOYBPxWsaOiWAl6U?=
 =?us-ascii?Q?Xp/6CI6Ce0Ohe5MkE/zL5Zt9z3YT31QYW38lnmaGYFxQwStytmo3pBaNCeUb?=
 =?us-ascii?Q?JNE4AHyCyVhB5kcL5TaehUqJvseOe8CX2J433CudSVk9ftmD3d4iS1HASgr7?=
 =?us-ascii?Q?3BDXjC8QbXnbZBnfSpc5xq/wL90GnbVlkP8wqEfs/fGIuWa1IkiAetc4gsSh?=
 =?us-ascii?Q?MwjKz9A7yHddyfHlZTcUzH5KMpS0nGdQs422RSElrxSSXG/5fZPk/XCjlnzC?=
 =?us-ascii?Q?99eGTsgc3ka6OKh/MV8Ra4N9aev6OSJBfFd5RHkgp6lQ+NdxuV0OYcYf0NXJ?=
 =?us-ascii?Q?uQ3WBsnB16gXxYjVTR8KNCRJEr0QT2m/moKqbiFj8z0IsodmZVF8u0J1zWYN?=
 =?us-ascii?Q?cYAwfTeQmNMLrHVMRoyoy7cAaFyxGttn7Jker+JGAeu8Lckhf1CpCt09JI7b?=
 =?us-ascii?Q?Rd2Vu20FyhvppwA1vnUfmRXpcQ7nArAl6wr+zv9Yd7XSolEZAyAVtQpspKCZ?=
 =?us-ascii?Q?DhWzb7BsJixtThEO3I6uR2RpZvQw2cHm4cm2fSw6MeAVvjnWIC2nBlB4lTmj?=
 =?us-ascii?Q?kDbBcP/lp0dRRl9fiQb/oKCQcKlda6n+cdmF6fiRyfHlro5YaA3R97+vhA69?=
 =?us-ascii?Q?amMDq++G6rFou2Lx6sM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d541fbc-0c1f-44b2-ebf6-08db9e42f949
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 10:24:29.0111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fEX1Z6zKkJSuh0sS34QJjf6mdbUwddAl9xkNbC2OkDKaxctNmvtD/1/PGOJwR6ROvi3GdrOWgtwOaUkn0ISyVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5952
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 4/8] drm/i915/vdsc: Add function to read
 any PPS register
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

>=20
> On Wed, 16 Aug 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >>
> >> On Tue, 08 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> > Add function to read any PPS register based on the intel_dsc_pps
> >> > enum provided. Add a function which will call the new pps read
> >> > function and place it in crtc state. Only PPS0 and
> >> > PPS1 are readout the rest of the registers will be read in upcoming
> >> > patches.
> >> >
> >> > --v2
> >> > -Changes in read function as PPS enum is removed -Initialize
> >> > pps_val as 0 in pps_read func itself [Jani] -Create a function that
> >> > gets the required register and call that in the common read
> >> > function [Jani] -Move the drm_WARN_ON one abstraction layer above
> >> > [Jani]
> >> >
> >> > --v3
> >> > -Send both reg values regardless of dsc engine no [Jani] -Don't use
> >> > num_vdsc_instances stick to dsc_split field [Ankit]
> >> >
> >> > --v4
> >> > -Manipulate the reg values instead of creating MACRO to change name
> >> > of pps [Ankit]
> >> >
> >> > --v5
> >> > -Read dsc reg values using array rather than individual variables
> >> > [Ankit] -Loop the verification of all dsc engine reads to future
> >> > proof it [Ankit] -Keep the fix me comment in this patch and remove
> >> > it in later one where we add other readouts [Ankit] -Add switch
> >> > statement that fills in the required registers based on no of vdsc
> >> > engines per pipe.
> >> >
> >> > --v7
> >> > -Pass no of vdsc instances from read_reg function [Ankit] -Fix
> >> > issue where arrays do not get freed on return for read_and_verify
> >> > func [Ankit]
> >> >
> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_vdsc.c     | 129 +++++++++++++--=
---
> >> >  .../gpu/drm/i915/display/intel_vdsc_regs.h    |  12 ++
> >> >  2 files changed, 105 insertions(+), 36 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > index dc86514d9e17..aa93228ca7af 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> > @@ -365,6 +365,28 @@ int intel_dsc_get_num_vdsc_instances(const
> >> struct intel_crtc_state *crtc_state)
> >> >  	return num_vdsc_instances;
> >> >  }
> >> >
> >> > +static void intel_dsc_get_pps_reg(const struct intel_crtc_state
> >> *crtc_state, int pps,
> >> > +				  i915_reg_t *dsc_reg, int no_vdsc_per_pipe)
> >> {
> >> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >> > +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >> > +	enum pipe pipe =3D crtc->pipe;
> >> > +	bool pipe_dsc;
> >>
> >> Matter of taste, but to me that's four local variables too many for
> >> small things like this.
> >>
> >> > +
> >> > +	pipe_dsc =3D is_pipe_dsc(crtc, cpu_transcoder);
> >> > +
> >> > +	switch (no_vdsc_per_pipe) {
> >> > +	case 2:
> >> > +		dsc_reg[1] =3D pipe_dsc ? ICL_DSC1_PPS_REG(pipe, pps) :
> >> DSCC_PPS_REG(pps);
> >> > +		fallthrough;
> >> > +	case 1:
> >> > +		dsc_reg[0] =3D pipe_dsc ? ICL_DSC0_PPS_REG(pipe, pps) :
> >> DSCA_PPS_REG(pps);
> >> > +		break;
> >> > +	default:
> >> > +		MISSING_CASE(no_vdsc_per_pipe);
> >> > +	}
> >> > +}
> >> > +
> >> >  static void intel_dsc_pps_configure(const struct intel_crtc_state
> >> > *crtc_state)  {
> >> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >> > @@ -994,17 +1016,83 @@ void intel_dsc_disable(const struct
> >> intel_crtc_state *old_crtc_state)
> >> >  	}
> >> >  }
> >> >
> >> > +static int intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_sta=
te,
> >> > +				  int pps, u32 *pps_val)
> >> > +{
> >> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >> > +	const int no_vdsc_per_pipe =3D
> >> intel_dsc_get_vdsc_per_pipe(crtc_state);
> >> > +	i915_reg_t *dsc_reg;
> >> > +	u32 *pps_temp;
> >> > +	int i, ret =3D 0;
> >> > +
> >> > +	dsc_reg =3D kcalloc(no_vdsc_per_pipe, sizeof(dsc_reg), GFP_KERNEL)=
;
> >> > +	if (!dsc_reg)
> >> > +		return -ENOMEM;
> >> > +
> >> > +	pps_temp =3D kcalloc(no_vdsc_per_pipe, sizeof(pps_temp),
> >> GFP_KERNEL);
> >> > +	if (!pps_temp) {
> >> > +		kfree(dsc_reg);
> >> > +		return -ENOMEM;
> >> > +	}
> >>
> >> no_vdsc_per_pipe is at most 2. Temporary dynamic allocation is way
> >> overkill here.
> >
> > Yes but Ankit was of the thought that we can future proof this going
> > forward if by any chance we get more dsc engines
>=20
> Keep it simple. There's going to have to be quite a few engines per pipe
> before this needs to be dynamically allocated. This is also future proof,=
 and
> we'll only need to update one value to expand to more.
>=20
> 	i915_reg_t dsc_reg[2];
>=20
> 	drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) <
> intel_dsc_get_vdsc_per_pipe(crtc_state));
>=20
> 	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg,
> ARRAY_SIZE(dsc_reg));
>=20
> 	for (i =3D 0; i < min(ARRAY_SIZE(dsc_reg),
> intel_dsc_get_vdsc_per_pipe(crtc_state)); i++) {
>         	u32 val;
>=20
> 	        val =3D intel_de_read(i915, dsc_reg[i])
>=20
>                 if (i =3D=3D 0)
>                 	*pps_val =3D val;
>                 else if (val !=3D *pps_val)
>                 	return -EINVAL;
> 	}
>=20
> 	return 0;
>=20
> Adjust intel_dsc_get_pps_reg() accordingly to respect size of the dsc_reg
> destination:
>=20
> static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_sta=
te,
> int pps,
> 				  i915_reg_t *dsc_reg, int dsc_reg_size)
>=20

Sure got it will work on this and float a new version


> >
> >>
> >> > +
> >> > +	*pps_val =3D 0;
> >> > +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, no_vdsc_per_pipe);
> >> > +	*pps_val =3D intel_de_read(i915, dsc_reg[0]);
> >> > +	if (no_vdsc_per_pipe > 1) {
> >> > +		for (i =3D 0; i < no_vdsc_per_pipe - 1; i++) {
> >> > +			pps_temp[i] =3D intel_de_read(i915, dsc_reg[i]);
> >> > +			pps_temp[i + 1] =3D intel_de_read(i915, dsc_reg[i + 1]);
> >> > +			if (pps_temp[i] !=3D pps_temp[i + 1]) {
> >> > +				ret =3D 1;
>=20
> Please don't use random magic numbers for return codes.
>=20

Okay will return a -EINVAL here in that case as pointed out above

> >> > +				break;
> >> > +			}
> >> > +		}
> >> > +	}
> >>
> >> What is going on here? Feels like this has grown way more complicated
> >> than it needs to be since I last looked at this series. :(
> >
> > In case of more than 2 vdsc engines (just for future proofing) this
> > loops looks at all the registers being used for that pipe and makes
> > sure everyone has the same value
>=20
> Right. But for that you only need to store one value to compare, not all =
of
> them.
>=20
> Always try to find the simple solution!
>=20

Sure Jani will keep that in mind and will also fix this in the next revisio=
n.

Regards,
Suraj Kandpal
>=20
> BR,
> Jani.
>=20
> >
> > Regards,
> > Suraj Kandpal
> >>
> >> > +
> >> > +	kfree(dsc_reg);
> >> > +	kfree(pps_temp);
> >> > +	return ret;
> >> > +}
> >> > +
> >> > +static void intel_dsc_read_and_verify_pps_reg(struct
> >> > +intel_crtc_state
> >> *crtc_state,
> >> > +					      int pps, u32 *pps_val)
> >> > +{
> >> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >> > +	int ret;
> >> > +
> >> > +	ret =3D intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
> >> > +	drm_WARN_ON(&i915->drm, ret);
> >> > +}
> >> > +
> >> > +static void intel_dsc_get_pps_config(struct intel_crtc_state
> >> > +*crtc_state) {
> >> > +	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> >> > +	u32 pps_temp1, pps_temp2;
> >> > +
> >> > +	/* FIXME: add more state readout as needed */
> >> > +
> >> > +	/* Readout PPS_0 and PPS_1 registers */
> >> > +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
> >> > +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
> >> > +
> >> > +	vdsc_cfg->bits_per_pixel =3D pps_temp2;
> >> > +
> >> > +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> >> > +		vdsc_cfg->bits_per_pixel >>=3D 1;
> >> > +
> >> > +	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4; =
}
> >> > +
> >> >  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)  {
> >> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >> > -	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> >> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >> > -	enum pipe pipe =3D crtc->pipe;
> >> >  	enum intel_display_power_domain power_domain;
> >> >  	intel_wakeref_t wakeref;
> >> > -	u32 dss_ctl1, dss_ctl2, pps0 =3D 0, pps1 =3D 0, pps_temp0, pps_tem=
p1;
> >> > -	int no_vdsc_instances_per_pipe;
> >> > +	u32 dss_ctl1, dss_ctl2;
> >> >
> >> >  	if (!intel_dsc_source_support(crtc_state))
> >> >  		return;
> >> > @@ -1025,38 +1113,7 @@ void intel_dsc_get_config(struct
> >> > intel_crtc_state
> >> *crtc_state)
> >> >  	crtc_state->dsc.dsc_split =3D (dss_ctl2 &
> >> RIGHT_BRANCH_VDSC_ENABLE) &&
> >> >  		(dss_ctl1 & JOINER_ENABLE);
> >> >
> >> > -	/* FIXME: add more state readout as needed */
> >> > -
> >> > -	no_vdsc_instances_per_pipe =3D
> >> intel_dsc_get_vdsc_per_pipe(crtc_state);
> >> > -
> >> > -	/* PPS0 & PPS1 */
> >> > -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> >> > -		pps1 =3D intel_de_read(dev_priv,
> >> DSCA_PICTURE_PARAMETER_SET_1);
> >> > -		if (no_vdsc_instances_per_pipe > 1) {
> >> > -			pps_temp1 =3D intel_de_read(dev_priv,
> >> DSCC_PICTURE_PARAMETER_SET_1);
> >> > -			drm_WARN_ON(&dev_priv->drm, pps1 !=3D
> >> pps_temp1);
> >> > -		}
> >> > -	} else {
> >> > -		pps0 =3D intel_de_read(dev_priv,
> >> > -
> >> ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> >> > -		pps1 =3D intel_de_read(dev_priv,
> >> > -
> >> ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> >> > -		if (no_vdsc_instances_per_pipe > 1) {
> >> > -			pps_temp0 =3D intel_de_read(dev_priv,
> >> > -
> >> ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
> >> > -			pps_temp1 =3D intel_de_read(dev_priv,
> >> > -
> >> ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
> >> > -			drm_WARN_ON(&dev_priv->drm, pps0 !=3D
> >> pps_temp0);
> >> > -			drm_WARN_ON(&dev_priv->drm, pps1 !=3D
> >> pps_temp1);
> >> > -		}
> >> > -	}
> >> > -
> >> > -	vdsc_cfg->bits_per_pixel =3D pps1;
> >> > -
> >> > -	if (pps0 & DSC_NATIVE_420_ENABLE)
> >> > -		vdsc_cfg->bits_per_pixel >>=3D 1;
> >> > -
> >> > -	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
> >> > +	intel_dsc_get_pps_config(crtc_state);
> >> >  out:
> >> >  	intel_display_power_put(dev_priv, power_domain, wakeref);  } diff
> >> > --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> >> > b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> >> > index 785ede31116e..862dc708c5fc 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> >> > @@ -78,6 +78,10 @@
> >> >  /* Icelake Display Stream Compression Registers */
> >> >  #define DSCA_PICTURE_PARAMETER_SET_0
> 	_MMIO(0x6B200)
> >> >  #define DSCC_PICTURE_PARAMETER_SET_0
> 	_MMIO(0x6BA00)
> >> > +#define DSCA_PPS_0				0x6B200
> >> > +#define DSCC_PPS_0				0x6BA00
> >> > +#define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0
> >> + (pps) * 4)
> >> > +#define DSCC_PPS_REG(pps)			_MMIO(DSCC_PPS_0
> >> + (pps) * 4)
> >> >  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
> >> >  #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
> >> >  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
> >> > @@ -88,6 +92,14 @@
> >> >  #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)
> >> 	_MMIO_PIPE((pipe) - PIPE_B, \
> >> >
> >> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> >> >
> >> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> >> > +#define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) -
> >> PIPE_B, \
> >> > +
> >> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
> >> > +
> >> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> >> > +#define ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) -
> >> PIPE_B, \
> >> > +
> >> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> >> > +
> >> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> >> > +#define  ICL_DSC0_PPS_REG(pipe, pps)
> >> 	_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
> >> > +#define  ICL_DSC1_PPS_REG(pipe, pps)
> >> 	_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
> >> >  #define  DSC_NATIVE_422_ENABLE		BIT(23)
> >> >  #define  DSC_NATIVE_420_ENABLE		BIT(22)
> >> >  #define  DSC_ALT_ICH_SEL		(1 << 20)
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
