Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36072827CFD
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 03:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E793B10E2D9;
	Tue,  9 Jan 2024 02:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCCBF10E2D9
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 02:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704768619; x=1736304619;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HvoZ1okCHLg+6mp4P+EB2PuzP99jFFdpdvbzFKPFrlY=;
 b=bBI/0PzWub/nLMLgNguitKwPj5FWv59Rh0eOqAYLjyh2GNSUoH6XRFgu
 D99QnAf/Ys29c0elqzVsnYNOyOMveVJcEr6iUrFeVtDLOu/JChmveRmto
 WB4XEXL34hVBfZhuU5nTNhAQjYnt9YcVNTPDWST9lO/SNCIHDoAvZp2Sq
 Rd7Zv6AJjxCRN3x+wgv/Q+S73J0PjtWjK8zg2PY1ddDy8Txsrqhf3zcPO
 TlAI84F9dfBeo+IjpEcNZyRUzt2FzpESXFK1OOyPT7HsQTA4PH13LkmYy
 gwb3/SsxB4mlnNRt6gvPNsE6CfNtWehUYCCVS4Y59RzJwfYgGOGhY7UtY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="4844270"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; 
   d="scan'208";a="4844270"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 18:50:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="905002109"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="905002109"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 18:50:17 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 18:50:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 18:50:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 18:50:16 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 18:50:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PgMJ0T5DxztYpIBgW6Dt0xOFEys/N3DJ44UgNfAJFkI5JevMhtQo1WDUCIcUEh5YQQeojvEBEz+mJ0M/kzTUah0NXQjDVXh5HP8TGJx1jnC7xMaN8LxWgi2j22HZFpYa1H3I40jyuFzAxBg6u32wtfLF3QEU3K4xlOsGDwlyPnGo8rl4OPgvPa7Cv0tq+VlBoc6oxLgBhLZkafa8qTL07xgLfOYtTlXbm4wOkSlh6bZJYM/Z5cc/RU3K0vtM4E9OzmFlTQwqq26Wb3hwSn8tpUzgTH7qcguUwWEo3GZXS3xqGUhfKGfBRYlTlSzNnuE3yqktO87pDHKy5ZU4DAr5xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AwF5BOaKEYxSpxy9IX8OpmIoegKASwOWOY2Gtd4g7b8=;
 b=QS37Rzbl3QvfDO/n0HRyFANLBHL+4BKBe0bK3ubpKBUojPWJ0OXNtaqk+ZfdRawdbRGfnGYrRvuTEB0Z14GW+7eer11/x1oQ6k/zSwOM7D7/zDtV11SYYhbfIjiaCSiTvr+V8SBjyA1nA4w5CDMpq77qQoh6at/Roq0RryHCckeTvfxdPUwQ14uC1drwxpS3BaMdjSLCCytqyFLiCJXQMc0r3AofNf72Jmll4DbesMQKMf/3JPcuiHDYb7tk3LXsezUz59TwSk6aK9Cl0+/MpvhhkanUqFUAJS+FGa9OPmh1G7pITOhcDEhkbl/FEmcKshy96fmHYLc4JG25anOBUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH8PR11MB6683.namprd11.prod.outlook.com (2603:10b6:510:1c6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Tue, 9 Jan
 2024 02:50:08 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7159.020; Tue, 9 Jan 2024
 02:50:08 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Topic: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Index: AQHaPiWugxUDmfbxeEuHGhQ3RnYr6bDP8XUAgADan0A=
Date: Tue, 9 Jan 2024 02:50:08 +0000
Message-ID: <IA0PR11MB730740C0117353DC60DAC4B4BA6A2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240103090715.307309-1-arun.r.murthy@intel.com>
 <875y04x88t.fsf@intel.com>
In-Reply-To: <875y04x88t.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH8PR11MB6683:EE_
x-ms-office365-filtering-correlation-id: ecbe8e23-6228-46f7-2551-08dc10bdb100
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 81w12fMt6OzheqCkwRc0K9Pdivpkt8zADyLk7e1zSfXrAlqA7YnHU5f0IaimkBR/Vxp1SWnoWjYzoZr/BXS13pEsI0mSLDpfG3hHRom6Kb0oOLXpUCT8O28MNsPxk/OdZ8UNAy8dbeall7spwQzjpcqWdM1xw2bfgeVfto4k+c45KFh4QSSW82vrtHi4Vxfn4MdN0sfclxWh0Prig8AoXRwvi/lvG+wNSBpMaBNwZPglNl51FTo2QHYYrKfeF/VWOr1jPVjde19woKcCCa93hDpP+JVc2mTftd4jGr2LoC/B1Zj9HR1Rk54FqbeXHgErIouKE2BiqTVnnYs071XEkzX2J4cnkX6tyhRlti9sk7vyD+kWMFOUsgMZrUxERrUZYbKsoyddiUkThg+h53c7SenweC2eSI1RwsloExISXQ7QykJDA24Ru0/h/LjEwxsocXf3k5RpUfUp5qdKNkcCog0gvJCCKpHjm/dUvPcAKeH9fGgWh/AqKjpiYCyp+X7U7MXxu0f8m2q+p2YIkp2NtbpmLdezOuXlgx9tVDnyeYPalzXnwYZC+qsEyFQVo/aI8R7y7yeicPiz5YAa5Z9Z7eHy/c48b1mD8HuK+kmrLlxqEj4wbpgOOZM45GaN0RGw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(366004)(376002)(136003)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(55016003)(83380400001)(6506007)(33656002)(5660300002)(26005)(86362001)(71200400001)(7696005)(122000001)(478600001)(53546011)(38100700002)(9686003)(41300700001)(66556008)(76116006)(6636002)(110136005)(66476007)(66946007)(38070700009)(2906002)(64756008)(66446008)(8936002)(316002)(52536014)(8676002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cd4QCixvgHmeTqd3jdBGVNfk0wUmtoecwKStfilQuKdYGvXJjWGvSX+OXQXx?=
 =?us-ascii?Q?Ee5myaX1rZOg8A3OOG4yfQEeHonjMFmx2NCNatajZhdUjTSIwLGvRCL8Vvsa?=
 =?us-ascii?Q?w7LxQdboYyQD4jFqMrxP8dldjwgsEtEtXETpQfz7KrnAsjfdrMUZr/W8zI0q?=
 =?us-ascii?Q?IaIDBRhghKVHITirrUqNQBaR46DMGxSZ4alzBLN+ZvWrO+gF5fc9KQk9u739?=
 =?us-ascii?Q?+1fUSBSl3mi7wLXLEeonr6Xf43ZnBMjRJK2wr20RyNB+S/AZpv8JNsNsrg9H?=
 =?us-ascii?Q?ezHKopM/aeBfI2KJ7yLMG/se6kVRVlBQFq5Y71j2CwEOeOrKFERUzbnIEMt6?=
 =?us-ascii?Q?KcxSxln94l+AANTzNgfpjJuFNhcK/1+kEAkueIk1lf1ltMzV2CcKahxrmWBF?=
 =?us-ascii?Q?EZ3632l3SbLfryvU1ZN7MTSQ91Mjksw4IGJO+lX7no+lPCCDYDQ9agulPviU?=
 =?us-ascii?Q?3ORgYpHwKDJ+D90jPXJGN+zd/pwASn/1JAQlkP65v+LB6MliHeNBtP6lafei?=
 =?us-ascii?Q?rNFThbY0Hj/e+hrOrGiQ38cpHJ6bG/gY2KGIwNBh8TUzUiDmYI/zDgk60P8O?=
 =?us-ascii?Q?ShKDpAnCahcrrqNxrx01qiQL1/xcZrZZ2tbWC82DRf4dN0SNSU80OeQ0hAz5?=
 =?us-ascii?Q?hwv39T5PyJhe9XxZY2zV6vtad0tweUYFzuCHWWcbfzyk3z3gEoLJ0At9tRKU?=
 =?us-ascii?Q?QvXsZRx3cVIeCRoZRB29UdHHn85PEVnDxoHDCyBIwTQlp1VjIYhE0ahv6/ot?=
 =?us-ascii?Q?UUcMiOIVMJQjEeBGt3aF5L8nPISDMZuEMyAnV8eZ3LoK6fmw9beuiuMf/ygU?=
 =?us-ascii?Q?BPMQP8ZqWTICEpXNUNFydxoyL8IufY4k7i38D/Oru92Ruk/NIzKrwbW+L4GO?=
 =?us-ascii?Q?zPI7rDRsrP8VH/E8VgcvhLLF/F6bfSlNNNWUEejYI5nex5p7Aq03fMLbAw9+?=
 =?us-ascii?Q?Nxu5heXimhRrZnx6FyLeIAPW9wamiSbbbLE6gcvtoEngYA8BDcZ6xBbL+ADx?=
 =?us-ascii?Q?6tSIdMvQsdgaVXsj4+LW+aAfyIwlQW5bFDLTlDVf98OWDFQslwRvteRU7P9i?=
 =?us-ascii?Q?iDGT8AdfSgwifDS859yNeIxkjKmfuaZqS+S8ruI+Yb0fuKgLf3tpjszOyKib?=
 =?us-ascii?Q?t84/t1Axm8J/HyhWiu8LLhZoIkFJCNbT+GkFlLwT0Wa4Ksxuvm5y7dPk32AQ?=
 =?us-ascii?Q?WJn6DQpsi4CEgcfP8ndC9yA9yRrPtfXb4ZXdJ81uQFwKtnHh2zxepmNrZJkV?=
 =?us-ascii?Q?STOwtPx1mmhm60iy9lE7WsEevyu0Da1e2RVD+TixLh5UW34OFOZCpcbQFc0S?=
 =?us-ascii?Q?9gUJuOLZqOTWg9A40mHCDsVTSqcBbfRD9xHURaqH8I+3A697KrpHP9HVxbJt?=
 =?us-ascii?Q?j/Ey+Uh+hSSTNQqBKDGARcUAjVlzT+bXWZvvuz9oc6qJeHqT2H8jU77GML2c?=
 =?us-ascii?Q?ESpXgf60oXOpeo184pVn9aDwWCNTacZ0j3xfjfei+TDspqReEWVvg9NBxfhR?=
 =?us-ascii?Q?RkcUFwvhW7gZDkW36EcLs+U1jhmHqS8czAZbOtXMYwp0S9GU4kKD8aYtZuGS?=
 =?us-ascii?Q?qxlKZRf2UpBxOvP8syu9W1RzDCgIQTLtM2wn6QEL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecbe8e23-6228-46f7-2551-08dc10bdb100
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2024 02:50:08.3784 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eZDaUaNCPS+uUraTno7TR47SFWHY8jUGnlagnveqxy14/eeN+VUEzJoiVo4Zq+rdCkOHyGlTqXRsTADIi4b/rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6683
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Monday, January 8, 2024 7:01 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org;
> Deak, Imre <imre.deak@intel.com>
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
>=20
> On Wed, 03 Jan 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > With a value of '0' read from MSTM_CAP register MST to be enabled.
> > DP2.1 SCR updates the spec for 128/132b DP capable supporting only one
> > stream and not supporting single stream sideband MSG.
> > The underlying protocol will be MST to enable use of MTP.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9ff0cbd9c0df..40d3280f8d98 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4038,8 +4038,13 @@ intel_dp_configure_mst(struct intel_dp *intel_dp=
)
> >  	if (!intel_dp_mst_source_support(intel_dp))
> >  		return;
> >
> > -	intel_dp->is_mst =3D sink_can_mst &&
> > -		i915->display.params.enable_dp_mst;
> > +	/*
> > +	 * Even if dpcd reg MSTM_CAP is 0, if the sink supports UHBR rates
> then
> > +	 * DP2.1 can be enabled with underlying protocol using MST for MTP
> > +	 */
> > +	intel_dp->is_mst =3D (sink_can_mst ||
> > +
> drm_dp_is_uhbr_rate(intel_dp_max_common_rate(intel_dp)))
> > +			    && i915->display.params.enable_dp_mst;
>=20
> We use drm_dp_is_uhbr_rate() in intel_dp_is_uhbr() to determine whether t=
he
> link rate in the *crtc state* is uhbr, and by proxy whether the link in t=
he *crtc
> state* is 128b/132b.
>=20
Yes! If the link rate in crtc_state is not uhbr then we dont enable 128/132=
b. Also the return from drm_dp_read_mst_cap() return 0 or 1 and if not mst =
then 128/132b is not enabled. We need to deviate here and a value of bit[0]=
=3D0, bit[1]=3D0 in MSTM_CAP register is 128/132b with SST. Hence this hack=
 is added to see if the return from MSTM_CAP is 0x00 and if uhbr rates are =
supported then enable 128/132b.

> There, we've already decided to use uhbr and 128b/132b.
>=20
> This one here is different, and I think it's taking us to the wrong direc=
tion. For
> example, it should be possible to downgrade the link from uhbr to non-uhb=
r on
> link failures. We don't have that yet. But this makes untangling that eve=
n
> harder.

Yes upon having the fallback, I think we will have to handle fallback in th=
is case separately. Change might be required in drm core, drm_dp_read_mst_c=
ap() should consider the DP2.1 changes to accommodate this 0x00 value.=20

Will be floating the fallback patches very soon.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
>=20
> BR,
> Jani.
>=20
>=20
> >
> >  	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
> >  					intel_dp->is_mst);
>=20
> --
> Jani Nikula, Intel
