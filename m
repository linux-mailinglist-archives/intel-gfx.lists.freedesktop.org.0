Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4816D57EF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 07:20:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 438DD10E05E;
	Tue,  4 Apr 2023 05:19:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2613B10E05E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 05:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680585596; x=1712121596;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pOUObonEOAsLvEMmEy2aZUdGkp/ubNto6ZEKpP+zW2Y=;
 b=kAzV07H0qPQDdrqnu5zCCqqhO4GSIs06CaMq86KtWbnhPS4xWQ8dmOfo
 9CgeRIEk79rf90L794uclWFnF2VrpaaqeYmB1LpdCT7qGLya2o+qtU6ey
 vpyxEo0s2xHkneVQkslGXYRV5c63IgKPQlEuGxEtVRoj4AtvDsiX/TI5i
 UCw5QAwKb6SXZrXhatQIkgyAXrEJuoVOiOxrBmvchyrJJ60QlOwskEBTK
 WSwPgT4vyOmLIaAR4PM3rYI2evREW56RRpIfr/WUrEK/WfW442klFxWbc
 0oZsu11AiKgiAwIlfDOeW7G3LGZ27soCzdfpwTn4ptCNRWMDd08KGD/Le A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="428375932"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400"; d="scan'208";a="428375932"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 22:19:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="686238933"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400"; d="scan'208";a="686238933"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 03 Apr 2023 22:19:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 22:19:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 22:19:54 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 22:19:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CqKH5w9N3jaYfjfWCWtMwCGwAs/VPUF4M9RAyVll0hMBNIsWKcquTp6QFJH38CtxEaEMFabHpy6y9APVA+JOZAzcjtbxW3hLLN8HlrTS0OccEHa9DZBjuVTzSVfduY3yeZ/dN8O9w3zinBFzshsw2mFI3UqYlXoU4NV/kCbTl88vhIzdHogLxiBV7a6mYLHKJXqtDf3Es5eho3HPnaKbdUtkl94xra+7wothpkqok8LEgLUfHNWJmb5z/Elj2LiImhO0JhQ/PEP9IQxqOPdvAOsqwcBC8HlkETXL59BeJSQva9cfNRWzvvUPIF4mTU0J+PqqAXiOUMsdd7GsGXDRXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y5sOOfJvyt1DGbct19djzFFP/BWdJpx1kQwHruevyZI=;
 b=W0PdIEwekn9S3VsA3LFj/AMVJ9kSYuLWcx911uFHNFsX0/A2JzU8mDfksptcqWun3TwRc5hknn+uPVPDs0BX0fnl8pdgJ9W2s51DMoTgPlhUo2PYkwozHOu9rfYdsm/ODqbP77FNinpHyyeseJFnGHQikzohlkhrGmn+X1MrDuZ7MSY3yhyVOY7OqkBX82onBGNU/dfEzbIZUVpfDAqpvEEJ+OXDiIU/67bBDJyqNDjWQ9esPL/L7yDUefO+JtEbc+K38zUXtihpc2FwonhNFAgzPh+mc2j0yJ6cynrSliKcqQPWrwPW6OEMVMNoftLSvKY7zKNKcxDocpenwJo2Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB7326.namprd11.prod.outlook.com (2603:10b6:8:106::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 05:19:46 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6254.033; Tue, 4 Apr 2023
 05:19:45 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Remove drm_modeset_lock in
 intel_conn_to_vcpi
Thread-Index: AQHZZfo3fSYKdOAz/EGd/IwpMW0nk68Zn9QAgAD9bUA=
Date: Tue, 4 Apr 2023 05:19:45 +0000
Message-ID: <SN7PR11MB675002CCD3056A67832FC66EE3939@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230403070125.1127830-1-suraj.kandpal@intel.com>
 <ZCreFMId3fKGjOYx@intel.com>
In-Reply-To: <ZCreFMId3fKGjOYx@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB7326:EE_
x-ms-office365-filtering-correlation-id: bde78505-97a9-4966-9f72-08db34cc3432
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T89hPQKo9USI97Aer5FGKrZSYhnjajurI8/xEGpmy68jn2qfKrBeFObQEGl8JcqbQaR1iGIke8jf0+UsIc/b8N6xHv3vr7BaPOK3V3ud7LBFL+nti+QwxY86dSspG4V5WQjLfrGn68W1wUpChBZtrSjpL+jjwG8LqvdbF8Izz3Fup8a1AYthba6KXYwYPV1mAgn5dVjSL31qVTS68py2p+eJ3TMaWejUQMq1ZPEziYulTVNEHaw/FhxOvccnPZvrpQ39btcsWwnoN95+/fY9k5qKeGbUl4LQh5BUWJc3T3cEwyGP+AK7PNy/IDV2/Ob+81HGTDm/Hl5n0Dz5sUWuLvX+QNrkaT7PtBrGztdzU9VkEa0d+O1uvb5R03+u/Od8VO1MGtxRLHa47FbJFNJrjbbI7psLKVHIWvzjDUPYia5yMTDKcq5vOA/v2Qq1EpjqkPL0D3mL7zQEvm51eJnA72G+QHKPlyGPPWhWY0cpavdfIs1n1cDg4wNX6HyMDgSpIy2KtCVDh93ONKs9qiG4XJOD+A8UVPfgHjrghCRlsyxp4WzCQprt5Z0TNycDPjVgVyFeRXmy6jDIolNS6J0wbD1pBJr5uPMLSym0WP15D1cEeLtADwwid8zkPLLJsAfE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(136003)(346002)(396003)(366004)(451199021)(86362001)(38070700005)(33656002)(2906002)(7696005)(55016003)(71200400001)(53546011)(83380400001)(186003)(66574015)(26005)(6506007)(9686003)(8676002)(4326008)(66446008)(76116006)(316002)(478600001)(66556008)(66946007)(64756008)(66476007)(6916009)(82960400001)(41300700001)(38100700002)(122000001)(5660300002)(8936002)(54906003)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?yU/5m0sEO73UVwbTDBzJUcweeKLgfeTw3xc8kPfsNOKZZ9FBa2LrBL5uSF?=
 =?iso-8859-1?Q?bBR1nKNcEUUV08ViuTfgabl7sDi4c18Sh3cct9TjE9b45dN3Pt8/JISwQs?=
 =?iso-8859-1?Q?T75R0wXoV+nqlqZLZht3NfktT7epv6BQkeNI8xP+sE4yHZPCOtNiqtrwKa?=
 =?iso-8859-1?Q?DcaIf9qkIs/YdFsjTkc07FuRFcebn7kvcDy5VGS6NLM03JaCVprgsZn90a?=
 =?iso-8859-1?Q?JMkrCh9WGKTZgjTIwhH0NQMn6bigRIiZFGXRJzpUez5B7wra4L4WGfqL1C?=
 =?iso-8859-1?Q?3p4W0WlJ3pvR4fq9N9nQVilhBbaMNRFnBC1iJJXkYItdOysoHSN06gF8Bv?=
 =?iso-8859-1?Q?4WILFocbi8B55tMUgoN9JoVvPSFbQHlkzf1KkDY0e+aoUjAYozilCVw4Tk?=
 =?iso-8859-1?Q?TtElFnPk4Or30Ds0QsvS5bFlwCzv8R+D3xS4ojQYNu7gzpImgp2NVmi+VT?=
 =?iso-8859-1?Q?N6rZ+gu5/9OPNQHQRyAONjZOQ37zfNTd2BUKPvziaBSFz0vfTxf0RCr43C?=
 =?iso-8859-1?Q?DxhwQLozlov+SdvF143vA9HcWV/gafwcZ0aCIU1jyzQZiQX3q3uIN19kfh?=
 =?iso-8859-1?Q?aK/p4dltVTOMfrjwnmdQH+jBHo0PwhTdDaPNIbPPDXVC9PGwjZEh4y+L29?=
 =?iso-8859-1?Q?KGEPUUplZJT9Hp8D6nfv6qMYwSZGdfch9J31ntIGw+LxcFUWjMJNShnprM?=
 =?iso-8859-1?Q?qWctHdSY+Jo5TjrDX63p81p6xA3DWHEhW1fdP19DcVI+TZ2RcwHIHQlisr?=
 =?iso-8859-1?Q?sJAGbrxwDlEFV6NMcxaLpYDLxbwpmLc0yhkeoOXo2DeTS9+YAhqW76m2pi?=
 =?iso-8859-1?Q?cXP0UvYZNIOxxp9jEVPREhSBVzHXYLdiwbP4V6GORCQOvLN97A8vVDD4zW?=
 =?iso-8859-1?Q?YawxQo5r440bQdWHfNhqfMu6jtwkSzG6p74GK2dwDgdRt/bN+qbjizTwDW?=
 =?iso-8859-1?Q?2QO2HVJvGqbibXNok8zCmzF9yGZJzsU2qgA1/9nbAoqzidOvTzZGe/oSjc?=
 =?iso-8859-1?Q?LdoSSpGLIIm34/41SH4QCIWngPzNmYUWGbdrz1oxEqur1MmX7+de+03hts?=
 =?iso-8859-1?Q?dWShXjCfLXQ0dMJ94u2CbEbBRtk9M9F1F67zNKH4hmH0l1RQ7+uDJJg1rl?=
 =?iso-8859-1?Q?jfTFitelMFwIr5J4HLLg0ItBL7N/nTnT3tVBrxh341NmzmfkbA3ulSPqtX?=
 =?iso-8859-1?Q?d/aH36ZRQ1pr6VkANZCvfJpjqY9nmqiG5I6nb6zVZtFhdHfBHBHxx0tN19?=
 =?iso-8859-1?Q?l/Y1VWsVBN4IFR1eubUHEqddm8/mNVejznydQqVDuOfz5sA7YfMXhKZd51?=
 =?iso-8859-1?Q?VZ/Fk1OXMRqYA0QszwJtADJ0bwqkqnqntd5jdobZhgenOy/558CYIPySex?=
 =?iso-8859-1?Q?T+iS7AQVOoOxW/tc8N0uiJuK9OGN7wac/v+BP/DZ9UMVyBr/mWyEVsr0ww?=
 =?iso-8859-1?Q?aXYwDho+RocOh1yQ2/rXc7cVwQr2J2rMm3gc/0xoOUnPJMabyaQXXyGZ4Q?=
 =?iso-8859-1?Q?JxMdq0Wp4Ln7Qs7yqSbHhMiGfc4NxQAOx4HPWzlK8XfV1pZOd9IkZWAp+C?=
 =?iso-8859-1?Q?ugAgykFueHChkSYlaD6PGXC0LSL/uST/ScHQfF2uKFxm1f9dLxkQkd2AzA?=
 =?iso-8859-1?Q?WilNWwRUuSTkyqm4LJE7FW8UI8f2cQ17i4?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bde78505-97a9-4966-9f72-08db34cc3432
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2023 05:19:45.6397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rKkQqQb/Pe2USiSIZMqsvd5o4xDwwHEUOZsakic35uPvyIE8pMZqdvmwY4uciZRWNcqT7k9umnAzXriUx38ikA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7326
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Remove drm_modeset_lock
 in intel_conn_to_vcpi
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
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Monday, April 3, 2023 7:39 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.=
com>
> Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Remove
> drm_modeset_lock in intel_conn_to_vcpi
>=20
> On Mon, Apr 03, 2023 at 12:31:25PM +0530, Suraj Kandpal wrote:
> > Remove drm_modeset_lock in intel_conn_to_vcpi as we don't need it
> > anymore since all the required locks are taken in atomic check and
> > prepare phases.
> >
> > --v2
> > -take lock if hdcp function is called from legacy path [Ville]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 650232c4892b..65cfc4afbcaa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -36,13 +36,16 @@ static int intel_conn_to_vcpi(struct intel_connecto=
r
> *connector)
> >  	struct drm_dp_mst_atomic_payload *payload;
> >  	struct drm_dp_mst_topology_state *mst_state;
> >  	int vcpi =3D 0;
> > +	bool is_locked;
> >
> >  	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
> >  	if (!connector->port)
> >  		return 0;
> >  	mgr =3D connector->port->mgr;
> > +	is_locked =3D drm_modeset_is_locked(&mgr->base.lock);
>=20
> The fact that *someone* is holding the lock doesn't mean you can just ski=
p
> taking it yourself.
>=20

So the reason for doing this here is that if we come here through atomic pa=
th
The locks will already be taken for us because of which we wont need to loc=
k but
As you correctly pointed out int the last version that hdcp functions can b=
e called through a legacy path
and this condition is to satisfy that path so we end up taking a lock then

Regards,
Suraj Kandpal

> > +	if (!is_locked)
> > +		drm_modeset_lock(&mgr->base.lock, NULL);
> >
> > -	drm_modeset_lock(&mgr->base.lock, NULL);
> >  	mst_state =3D to_drm_dp_mst_topology_state(mgr->base.state);
> >  	payload =3D drm_atomic_get_mst_payload_state(mst_state,
> connector->port);
> >  	if (drm_WARN_ON(mgr->dev, !payload)) @@ -54,7 +57,9 @@ static
> int
> > intel_conn_to_vcpi(struct intel_connector *connector)
> >  		goto out;
> >  	}
> >  out:
> > -	drm_modeset_unlock(&mgr->base.lock);
> > +	if (!is_locked)
> > +		drm_modeset_unlock(&mgr->base.lock);
> > +
> >  	return vcpi;
> >  }
> >
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
