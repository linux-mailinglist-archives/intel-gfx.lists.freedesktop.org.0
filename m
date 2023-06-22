Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C9273A2F7
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 16:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7766810E572;
	Thu, 22 Jun 2023 14:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD84C10E572
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 14:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687444029; x=1718980029;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HOi5BewEoqk1hHGVQXxbwP0YcbwMJUMIHvgU1akbx4M=;
 b=BUivjHIMiD9Upn0WZA1CjBhkq+oYMsVtUOcG+745Puu98wnYZHt/zSHu
 zKD7TQb4d2aGYaHwY9duNU1EEkWMSLhbcAll5NH12pgi9zve1x6l1uXiU
 iFA1m1+dkiCtzJLl23EggCOvszgQ1JjLX6ZCzpsA4m/b9GH05E9aZ/6bz
 SwWCXnX5b3pdQcZQzlK2eP/14YupvqLo0IkFw4WABugTvx4Dq+N1GWvtJ
 3P12eSJGLPhHvphpWeeQSd8ZaPDQTuO8cvWDSIkX6e07DQBwWXYGCAyZe
 V49Olm7xUTSrjuB/OyoR4evdO3nvCKdKckNuAiRmEpL75eR15qKRwOXRg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="424178052"
X-IronPort-AV: E=Sophos;i="6.01,149,1684825200"; d="scan'208";a="424178052"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 07:00:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="839071036"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="839071036"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 22 Jun 2023 07:00:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 07:00:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 07:00:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 07:00:58 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 07:00:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H5RX7oCIxA8sHl+9q41DcCUV/PiNpLRk9ea2P4ouPc5Lxx1g68RT3+01oLp0C49eVPlxoNeeEOPjHl1inp9ZH40MkrSX4ejrnufTCt0l+Mdov6FrU6YSEc4FZC6Dr7M5NAgKkbDLu4yY52OBDJBRIXNSdoq5IFbvfEYN8oUVjDPxesB8lc7zn8Zn/6hFu64zZ7XAnyqMUwjM1MH4sG0n6SwrDBpdAuPeduZyXA5X4F1IheC/ERexBB2fSc+VP/WySPtUfD57uEYXD3+G9FExnGKMzLseR/Q0eoD/ilegbj5mJILfaJZ6flOy7SOq5d1Ua3NmEpeVItpIgcOEu+zkpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hlOF8sufs2eYN91d5TeFou1W1NiBircc8YkuUx/fTRA=;
 b=NsQ9CuH48axrZrIYYenOy7msdueG5m2/2WhKMOfzDg6qUoCZzhacwqhn5Qx5IzcqM/r7nB4O7Xe3ICjJ1X/lwRILVkxvkGliK9l3J2vRQPJYsn0w9c8fIXiUGcGOYH3QSsn1uUHhmdLoWVv4x8itYsYrXHsxO76pPuA+qS5I9nqTS26QKxG/9FWIGotCM48oGQc4cxm0GDTigIfewC/t986voKiuGwymYd/F2fOiq/aPuwcwf1CQhtm+LrD0M5RDE5GD76tQh1TI33eMMO/eLFk2hvmwtZfijdFmtKAnN2ASXUi7OODpHATgGezyLKY4b3UKbjkNgyoF0+wRBmeqPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB6149.namprd11.prod.outlook.com (2603:10b6:8:9e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Thu, 22 Jun
 2023 14:00:57 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6%4]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 14:00:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/hdcp: Add a debug statement at hdcp2
 capability check
Thread-Index: AQHZpB5IkxebrWOiKEujLfN/bwsKLq+W2YMAgAAA13A=
Date: Thu, 22 Jun 2023 14:00:56 +0000
Message-ID: <SN7PR11MB675078D3CA8F78D8DD50D0D4E322A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230621014156.1994797-1-suraj.kandpal@intel.com>
 <20230621085453.1996166-1-suraj.kandpal@intel.com>
 <SJ1PR11MB61298B7FA1EB5421838C7D1CB922A@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB61298B7FA1EB5421838C7D1CB922A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB6149:EE_
x-ms-office365-filtering-correlation-id: c07b938b-c048-452c-2841-08db732919bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cQr4YoRtnCNsXvZlTEx0/ICFOtHUkDswZhAKDFJeRUxsw2SK9NoUMrgwq98fMG9Q+gLMHr+GjAW225YV5b5IvPq4esaPSGlkkUfKrm7H/JydugRTnIgydYOoQ3528pcQepRTcCCXnAf02v/NPjEDVT/gFCIhk5M7Qji0cQbzwwUgCJHLyCVLqFcuSKgxiRUOxuxH895+WeykNq3HwU/k0vGkWq7wBcWG5Pv/+3Y7NeLwIH/u3EtutBAnGXU9Au/cY0TRrl4hBxzW5Sf+2/9VDjipjW4fGrhKyM+h+pcZKSPNUjHcm4D4VVYtpKxATLNlvga7seuKkvwkFA9nEs2EUVbPNUgQnk8Ep1oev1j3w5FC77kcaIQ4YkkISBVkDLnzk4O3euQrsd5XOY1OVHvwcbf5z+zBNLs+Qr8fYWEJZy0zuByIAPvHbZyoG9vAe6/Dc0wumRm1jdKVZEQ0ZvDUswqH6V08p5xnDEc/7lj7/IHFedRNHFSMc+XoxlN9EzK/qOWLuSIcj930f3+KyS6sPtQp9MPXb7VFPomIumUnNIMP8O0UhLWI1wbTMsYccln0Ees1uTTpps9QvlKeV9UR+7yzbHwgywHdXigL+trBuxfD//zEyogtbCP0RYo8qHCE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(39860400002)(366004)(136003)(346002)(451199021)(53546011)(7696005)(478600001)(110136005)(71200400001)(76116006)(26005)(2906002)(66946007)(186003)(8676002)(66476007)(316002)(66446008)(64756008)(4326008)(8936002)(52536014)(5660300002)(66556008)(82960400001)(41300700001)(38100700002)(122000001)(9686003)(6506007)(86362001)(33656002)(38070700005)(83380400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XsiKsxWPds+0Vl4wFnGhON3M2cPISlnAbcjuFiG9ErKbHVEmTXeoazlEgaxj?=
 =?us-ascii?Q?+10UIb/GyHS3oLr+gqFNuxPEZENme7RWG76ADcpXkR0gVPCsdmdrIv49YKZ1?=
 =?us-ascii?Q?1X3xgFm7PgOfe55o+L0BOICCY0D10F5azqVgFZCp/JaVr+hSYZlA4PMnfLUw?=
 =?us-ascii?Q?qGtKakRDnXnPbH1R4q9HTuP3fFkVI5lK9XXIryeX6RjuB/insIkH4KgJuwSD?=
 =?us-ascii?Q?cdB0jqh56l69SEqUpXK8ImrvALXMTKWkjmI7mrv0T/j0SDTrgm3tOO3JytwK?=
 =?us-ascii?Q?2tK0B8bF8EHdjKulE6sidegxwfeMZjGo2V6MdT4X6pjRsLkLzPFRYfFTB2Fo?=
 =?us-ascii?Q?rjxLapNwTmHjtqmmQ9aZwCudsFVlMj3ZOTvS4uhj20DE/Ju+WbqX8AoQW1G1?=
 =?us-ascii?Q?qVmZJ9wBO4dRaFmcjXKMVaCea+UicCYfdUtBe1DPU0hAarRziEDh/oYLreXl?=
 =?us-ascii?Q?1zx69o40Nr/7KNVyJCChXdwiRWsgiv2h/sqfiwFeOa77ThCYvlL1vOJXc+Yc?=
 =?us-ascii?Q?ZTa/3sM1ROp5tY6eH58iVY/40449NrKNiQMlx7LEurM9MJduiYciec9ITH3S?=
 =?us-ascii?Q?mMr4sYWl9syMmxE8sMK3eQ2EawtmNrociRGj3I0hGOW211SBrhH48zlsi9Pc?=
 =?us-ascii?Q?DNJENziRCH57saqRcybTaPktdXwGX0ukb7ygLnmpofkndk81uPu538QMlgwo?=
 =?us-ascii?Q?BHy3aM8ou8sti6imyk3oWU3nzMPITQI9zx999Wzi/vqzn0VEgElX2GrgEf6m?=
 =?us-ascii?Q?cO8s6PFfe8quZeGTYCVJaVTPQUtoh70UIVYJjFSWyRvex4QGGqJePZI2Qzuq?=
 =?us-ascii?Q?x7+Kk3NkPilj/8YVO/iMZn65RPf3IM5ycE5J6yxqFriZwwCYjIPrlVhlBYTU?=
 =?us-ascii?Q?RUzxBbvA2phPEcW1CgkB8UtZup9DVw1JkdaZCh0X6PmfXrj21V4K6j43PuiQ?=
 =?us-ascii?Q?dHNvWbo/E38DlLuArBgdi39HNq+wAIeYbWGUoZs77uQEN77L76bSeR8Buhx3?=
 =?us-ascii?Q?0xkVYK+VASJ6zWjYNAfhVHazNAk6OMacGIC8MAkpN+tGNPZ2iNzR3pTNjcsZ?=
 =?us-ascii?Q?ZA4W06rQWOZdTt8WrBTcKCzmkd7sgHndFl3vIOMcmwJizakcWKcSo58Vibyx?=
 =?us-ascii?Q?ghcNSZoTCfnI+HnlSjWx3ux+26htzp5tIxmgr8QJXvIFEWoJdoosPbaBtFGR?=
 =?us-ascii?Q?AMYaNgb2fSb7RyFHCaV0Gjkn4foH3W7cP1hWMGNIKsVNPnc3odor8OEgAHAo?=
 =?us-ascii?Q?tGbli7tpve2I5jlgxRxV+Ola+en8+8RCuaJRlE1uNTtQa6cEaGaRzVbKpqyh?=
 =?us-ascii?Q?K9tMKzbhoMePjVMc2CKLB3xWMUCqYIMV6X4ChLrubyhlKQ3Cb8GbADoKIrYZ?=
 =?us-ascii?Q?eAAoRhEwK68EG2rAJ410GA+l5ffoP9AyvpNiD1mqf4nrFHqh9GwFHTvu81iq?=
 =?us-ascii?Q?xKuoP/9XZplbtNKooB/n0j9DHNMaSva5Q9hQqplBZE7klRgZZr9A7JtMeeqw?=
 =?us-ascii?Q?ib9m6oeZSqdRhfE5oXUO98P0kufuoj+JRZcYnUcTIWdcMiKVjj3QQqHcdclU?=
 =?us-ascii?Q?yNkTHau45x1abZs9TktHNAFhCHEg/Khm61ahOM7q?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c07b938b-c048-452c-2841-08db732919bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 14:00:56.5255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c6KRzOEIUH40xTTP64MF9IkoWm+lI77tpq0xSv9xRFlUNl7xfPzSbk/7C2Dcc1S49RX478C7thMxmnEmZHAfEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6149
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/hdcp: Add a debug statement at
 hdcp2 capability check
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Thursday, June 22, 2023 7:23 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com
> Subject: RE: [PATCH v3] drm/i915/hdcp: Add a debug statement at hdcp2
> capability check
>=20
> Hello Suraj,
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Wednesday, June 21, 2023 2:25 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: jani.nikula@linux.intel.com; Borah, Chaitanya Kumar
> > <chaitanya.kumar.borah@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>
> > Subject: [PATCH v3] drm/i915/hdcp: Add a debug statement at hdcp2
> > capability check
> >
> > Add a debug statement at hdcp2 capability check which indicates if GSC
> > CS is causing hdcp2 incapability
> >
> > --v2
> > -correcttypo in commit header
> >
> > --v3
> > -correct the other typo in commit header [Jani]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 5ed450111f77..73fe84fc9bf5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -177,8 +177,11 @@ bool intel_hdcp2_capable(struct intel_connector
> > *connector)
> >  		struct intel_gt *gt =3D i915->media_gt;
> >  		struct intel_gsc_uc *gsc =3D gt ? &gt->uc.gsc : NULL;
> >
> > -		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
> > +		if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> > +			drm_dbg_kms(&i915->drm,
> > +				    "GSC components required for HDCP2.2
> are
> > not ready\n");
>=20
> The change looks good to me. Only a small query, Is it important to know =
at
> this point, for which condition out of the two, we actually fail?
>=20

Normally we had a clear indication what caused hdcp2.2 incapability but wit=
h addition
of gsc we needed a debug statement for this and both the above condition if=
 failed point towards
gsc being an issue which make me reason that we wouldn't need to differenti=
ate which of the two
conditions failed.

Regards,
Suraj Kandpal
> Regards
>=20
> Chaitanya
>=20
> >  			return false;
> > +		}
> >  	}
> >
> >  	/* MEI/GSC interface is solid depending on which is used */
> > --
> > 2.25.1

