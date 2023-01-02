Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3AB65ADAF
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 08:21:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909E610E0CC;
	Mon,  2 Jan 2023 07:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A78B410E0CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 07:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672644056; x=1704180056;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I2+5nZ8iJiRQ39XUOH1yZp8iRj2wRqYFyqs9sd9LTB8=;
 b=ChtwJCmCcdoF45brthrrGBMyYnIl8OV4P3yyiBX6gY+a3J5mfg0n3ByB
 QwnSuBa4RCjBfMp0NqczWbEFd9hCdL05vQjlxJno7YcZeSxuUSSFeWDyM
 zbx+jz+PQuyuupy8rcd/o2W/u88EWkrQJHNv+DPrD8NlcdzHsl/jjG/Vc
 7mc1SOIV4hpoLrlMkBqzCXgR731PDb3F9u/SYHaK+VHxximDOPlucHcee
 7l0QVx/42Gj8Zxm6rkVo2ike8xPEEqxRPClHvBPyaMzTs3KmwZ6NeX+eC
 3Ixn49NmdhazEN66dC1OIuaMp6IQvfbauM6UrRZjsYuILiMPG6O7tf1+2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="407704530"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="407704530"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 23:20:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="722899186"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="722899186"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jan 2023 23:20:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 1 Jan 2023 23:20:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 1 Jan 2023 23:20:55 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 1 Jan 2023 23:20:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=liQEao/nH5/VqItSCJjy7va66eIbPyiJd2GlI0nNzhhYM16rT0347bfVTkJYi8dONvpHJ/U65sX8egMU3lEaVdQEKAMHrjkSaKqGkfECDBGxB+zsbxndl7ex/1330tgQumbRk51NYEYX7ckbVlYN3j9jRpSnbpRnDC6mZc1A0dluGjAnZ7SSbaNO1UV7nFfR7yO/ka0SndPgyrYo5B4ofLvDAqJX3T/x1JEnWACZlnJAB7qsYdnuDlUnv+uJEH3FkGhsJQsmbruI1/vSur+Fwb9qX+9jc7jEU9m3BdPLOmx0Ap2PTb86cTmvGpLZeeqdHfzMAhkYQOmCazpqKbQHSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R9fXuvzKnX11MuyqoMhEB0j4McpYgaFpfENB4hHqEZU=;
 b=LzLtLkyfS1v0o2lOVuvZYuY1nzjW4+qoYxetMDt/jpDgza+wy7jNn6AIwL0zJYGeN9HWd46HLJg2Mj1dcHPAv3D/+1F0I1oZKFha2yGurxjJydPV9fLJowY36rgjT/+gaHdYoX6RNw7di4aCcT1H3GNU0jLzFDxTvpmXN2j+3A55P8Oxwx64FfFwI3jlytqjhaPl7OXYrpKFL5R2xIDDKGp8NfP2xF/luPqQXNLKvyZjhykkBv9u82XbgCHe1pe7I8Qvf/omTWMSLSsDW/ylhO6aZxOvMx03/rTeNDRsF3D/vlLOs2G69rzW4wV7LxkvlsfBKXEruP8hx0v9Krg/Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CO1PR11MB4865.namprd11.prod.outlook.com (2603:10b6:303:9c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Mon, 2 Jan
 2023 07:20:53 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.016; Mon, 2 Jan 2023
 07:20:53 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dsb: Remove check for dsb in dsb_commit
Thread-Index: AQHZFc9LE7BTJk8zyUOv7gw8Qk20cq6KxZdg
Date: Mon, 2 Jan 2023 07:20:53 +0000
Message-ID: <PH7PR11MB59814DFB9E6DE676E468FAC8F9F79@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221222063428.3052172-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221222063428.3052172-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CO1PR11MB4865:EE_
x-ms-office365-filtering-correlation-id: 28005d64-3d7b-496e-6ea1-08daec91e1fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0SZC81SbUeaSl862dGVs7sUz/Jd2ZYEC5UrNgvBzKHA7kQ39BBo1r8PCkEd57rXJ9mao0Hdtdg30Ydx0wuR4WMcsHOBv12HYsKTGAduMmP18ZL/4UgVPhbLzzt5trpZ/MpND2GvGLa3BEHr4jtd49XLt2npM85feTEyWRWHJ4P9Qp4NdBzFTZMW0xGMhGswTya4ZMnmvzpzJWIr1MTF0V5XmVcgb/Ih1fpYJ+jDuO7b6fVMZnjruYmMWgse8p4KuDVVtExwPTuvsl2GJUB6XcgYcxMQ2LtzhKFw2I2XAccCony/6hbv6wwxYyDY5fKOSq8YrwRSqIyNpOzj3+4wutmjv02wklW2nxCIkao8ta3A6XttAgm/bJ7z/W2vmUyZqYdkXzYX3UgRq2nLuPbiXPbKsKlQabSTzIOf/Tajie7jJqHTDgSqn5IMbv2AmvvIBmr3t2bwXCIWCieLQ0zZXTXAxI3S4tAkK0xCqn8oPi4mAVR1wkEnbfjgYSuw/rDCVrebk9Oob28pUAvWySsF6y7wKcPhZtTVPD8/pyuNj9Sr4AfPHaCZGN44rILBIA5pr4A3yLUcuvJbHrnkdP5cMX45Obz+QoupiYr0yEHwVr6G8O2uCGhMe8ect3y4ZEF88gNHTdIiUP+pZwXVztUfl6iXF1hc5+JEhtZGDERB4aAJmsk2vlyOdcwwJofuNhsrmp3/D2yF7cEV41Oj+JDlX7aJz7V5KXKDwtozD1Z+V08Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(39860400002)(346002)(396003)(136003)(451199015)(76116006)(66556008)(64756008)(8676002)(66946007)(66446008)(66476007)(4326008)(38070700005)(66574015)(41300700001)(316002)(110136005)(2906002)(86362001)(38100700002)(122000001)(5660300002)(82960400001)(52536014)(55236004)(33656002)(71200400001)(83380400001)(55016003)(8936002)(7696005)(6506007)(53546011)(478600001)(186003)(26005)(9686003)(22166006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?5k+l5MIyCaOH2+J/Wy/Vs2pLSxKjg2X9OHOXoP4B3q04fp4IXk5S/otRKt?=
 =?iso-8859-1?Q?eLeR0GhY8zp9E0YMz94kNSC74FTBn+uTys9s4ELC47XNNmHD2oQhvb6YGb?=
 =?iso-8859-1?Q?Sl8cIfBxG9sKLWC5SVKTMlXEdHF4u0lmV5YsoXj/3uM4xQN6GVyAUSaULK?=
 =?iso-8859-1?Q?yeFghrDIFuoK73P2io9GQ0Gv7o6AOwJht5jwKYYWvaJMMk89zaacGhG3xJ?=
 =?iso-8859-1?Q?hG1TWQV5/sVgZDFqsVCIUhYeffkr8AOjHRmyMkfCh2Mg6CsU4pQntSFE1I?=
 =?iso-8859-1?Q?7C+zxOn6VttAf8M6n1QfdI8LMugJAYCOTEmAaeQFZYu8elCNvMnBntmoLa?=
 =?iso-8859-1?Q?GW/ZpE3Qob1C0EEQ8OnpIebepH0TM3E9Pvm052wlNhQBL/ywdY2Qr/BCU4?=
 =?iso-8859-1?Q?Va9DeG62WmF1pjcrWTgRjUqfIigQJwWyMcEzAJKq2xgx8Hi0zbOWYugQ8r?=
 =?iso-8859-1?Q?nyuPwuoN7AHIurS0hXkJ4uc5B9oNRoFeLGEkMvPsBXhGoY3e75Y+tlqS+o?=
 =?iso-8859-1?Q?KFmI7jVb8DcZgpPEyDKELFkMpiFNfgCZkyiXiJzMBDy8F2J8YokPMfjrxb?=
 =?iso-8859-1?Q?E+rMBV/UYAEstgE8/Ctp9aM3wAHbRR3bcXwsQJph2e9ndo8TNf5naQkcpk?=
 =?iso-8859-1?Q?bL2euIRBrvSqApD4Db5qR7iHKfJbZgqCtsqeYbFCKZpnVkmPHnj928yb2U?=
 =?iso-8859-1?Q?Za1qj6xavbMTLNFdRVNZvSbtkZ6vNWnrrmyIqlC3VLmCVyJzJjcJGgsv2J?=
 =?iso-8859-1?Q?fXYul3qo2BlxTi+AzwoudCyB8KXljCYqfgxUtxWqcBeCaJAGTfQZRsUqry?=
 =?iso-8859-1?Q?cBvECY4j7LtNW72L7S0gY4doiPvADQkj6IPU3ZlkreauwSlyc5D2LasUAK?=
 =?iso-8859-1?Q?15SEG/U0pj6gaDhs1aJhoqn2Q7t8/I0Pvx7h4nNvJmZoluSs2nU6XTi791?=
 =?iso-8859-1?Q?ZGAqSYjH2k6Vd3nAtxVHg7ow3SHwiiki0OpLsbST1G7oLacobIvRl/2ta7?=
 =?iso-8859-1?Q?FHXTZB4I1xh/EJO5xYSnL5WmlaXpYQu4+ODCc5MKQHi5dSLqvVLxgYrdMQ?=
 =?iso-8859-1?Q?hOCPvNMWda+suBjnAcgSxOr8dup+biMNS5PCQtFSqq68/6n+qREKewI/Ae?=
 =?iso-8859-1?Q?cFJmv1kF77+UcIwrK35DgMYlE+BzJuiEyNHgFH0tF4qI9GsYYJso02a+86?=
 =?iso-8859-1?Q?aQqCT19vp+qb/HCaEtFR4x6p72S49ozQbySh9kMriS8Z0DLeMIJ47q7BbX?=
 =?iso-8859-1?Q?chJByfqIrF5fzHwzHqqWyKLcpqaVUeEO+tIVFd7FOGqK+z2o3lwlfhEffQ?=
 =?iso-8859-1?Q?pYfy7AWHkI1mul9yDuzUeP1t/vBRAt2hsOdXT6aponbLoXYameq9VsrIec?=
 =?iso-8859-1?Q?KvHTbTZj+yxQJR/PqOeriW5/QPBYZY1fs9vXIysJVogAPOYFpy5HdwjJ7W?=
 =?iso-8859-1?Q?wry5vV83UQdoectFoSnMVoFgCYl9NYGsZVtJVOWqYgrTZ7qggoXtqS8C2u?=
 =?iso-8859-1?Q?GA2RefkdFjVO6mR+I+n/74IsjCNGmr0etNcNEB6fVWciN2PK9hanODpoh3?=
 =?iso-8859-1?Q?9lQc35w9QIR4XmA3S7RJVV7iVgMzHbA4tR/PoODDnG3j8oe9s8SndY4PjW?=
 =?iso-8859-1?Q?7gX97SMqGU7Mrim0Q6ELMLT13ZS0bGgQ5R?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28005d64-3d7b-496e-6ea1-08daec91e1fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2023 07:20:53.1571 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u0H6BO5wJH/Cuz+u+pNwum0HDzz0wc7lCNuwtkmQXbslG/2tmntOvH485DIrMUmnt4dYR8q8BsPSBCLbp5B+Ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4865
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Remove check for dsb in
 dsb_commit
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, December 22, 2022 12:04 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>;
> ville.syrjala@linux.intel.com
> Subject: [PATCH] drm/i915/dsb: Remove check for dsb in dsb_commit
>=20
> The dsb context should be already checked for NULL, before dsb_commit
> gets called. So remove the check for dsb inside dsb_commit.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Earlier intel_dsb_commit() is called without null checking of dsb context.
Added the same by the following change.
commit b358c3b98813b1557588a11c894b22915251a2ce
Author: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Date:   Wed Nov 23 17:26:34 2022 +0200

    drm/i915: Make DSB lower level
 =20
The current change LGTM.
Reviewed-by: Animesh Manna <animesh.manna@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 3d63c1bf1e4f..ce1f8e0c2cd9 100644
> --- a/drivers/gpu/drm/i915/display/intl_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -228,7 +228,7 @@ void intel_dsb_commit(struct intel_dsb *dsb)
>  	enum pipe pipe =3D crtc->pipe;
>  	u32 tail;
>=20
> -	if (!(dsb && dsb->free_pos))
> +	if (!dsb->free_pos)
>  		return;
>=20
>  	if (!intel_dsb_enable_engine(dev_priv, pipe, dsb->id))
> --
> 2.25.1

