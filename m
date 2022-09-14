Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 107205B8B07
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 16:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8FAF88DA9;
	Wed, 14 Sep 2022 14:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1F3310E941
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 14:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663167042; x=1694703042;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d8nzZk7t2fnk9779rT8xv7vAqjPh6ArwsxMSjzgD0co=;
 b=Om9YthPCMy/Umg7CkAWiVsTP6t3itgua8dXFGuFFJzPfbt4px7QRo/4k
 yQWjfD0abj6QqXhdYYY4JNR6aXCayZOMgJfymS2UCYmQMTpX4WsE3eK3q
 xF+i7+SGw2cnYJlo2rsoVfiWF82Yo1YTjBWOqX4MYiTQIVv5v37Kqf/Hv
 r5DwsP2zLbIuClzquHL4rYwpgViemRrRLqQ8QUg4DbrKBYZdULHv05Aog
 b/+3yrfhCpNVUf+RVNBw+9Cy0I8cGyYPIos/Y+GbFl3I9LnJpt9usBmKb
 EcZF4OVibFifGd63f2vvXET/gfvLJSo2INnoG5VcdnKD+eQJoF8tXwml9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="278834661"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="278834661"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 07:50:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="568036657"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 14 Sep 2022 07:50:41 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 07:50:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 07:50:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 07:50:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 07:50:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UJMf3iZjL/Vr+QGrguY6GzUMkA5HDzXVRsYq5e/iHGYVdLVFhC+ZcPFji4iQy+mgFZ5aLXyTuDo9d4maJM7GX6/IF/KZ6dzE885D7xQNJNPwxwHXG2asQIawvHbbza41VP7Hmdy567Jo4vTmZvP9+l95iY2AZun5M1JjQwof49mUC9WYLRCN7c2UoJk4NPeJx7o6VF6bpE5V6WEAywu1masDZbn+l2vMMi9RQ35rSbMiZ+B9o0R+ZlAwlSjYWubqpz8q3+rLPU9kPcCJR6rs7C0CBhc3jPIIMVXy/Zhz6sFpP+ROSnwZO0OnF9tprTHKEO16yrF0B0tCVRFzlUFqNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1HClBuGPGKp+LYZTHjHRKRpKScfkS5gNxEPTZDaOr8Q=;
 b=YqdSd/n+vVdOJMOkgAqrO2nZcwbWRh+M6KxMDqbhAp/PlFkaBfFe/S2CAukCevGTM7be6z2KKEUbJc9BNyYK9III7tgtnCrUnLAFhvTiisn2Kkn3HW49jgD/tV0YdihUZuvqROWR3oYyHnbwHzwkBmSOE6/E0ogAfUWFHbQZu/vFlD6Dbu1+wH1mcSCduBTtfdrNnKDKv8XBGHqhoQ4FZuM+m3XQ+EwpV+vRAPyaMtgWTAMAVMwxqVHGqTznauwYc9+y8DaPrUs8ewBxFSgNXGpqtupWfalNUIJi+JB9g0OU+TnlI5tKW00juhFEwVrzVyTclvZ27g8+raFB4i7f3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH8PR11MB6611.namprd11.prod.outlook.com (2603:10b6:510:1ce::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.20; Wed, 14 Sep
 2022 14:50:38 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed%7]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 14:50:38 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH] drm/i915/DG{1,2}: FIXME Temporary hammer to disable rpm
Thread-Index: AQHYyESUQFbDhS8LR0eBU3sJx+3Pjq3e/VCAgAACvICAAACdgA==
Date: Wed, 14 Sep 2022 14:50:38 +0000
Message-ID: <CY5PR11MB6211B3178019DC4309DE43CB95469@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220914141553.16864-1-anshuman.gupta@intel.com>
 <YyHmK0sc2r1G7x5i@intel.com> <YyHod22zbMjkh8iY@alfio.lan>
In-Reply-To: <YyHod22zbMjkh8iY@alfio.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH8PR11MB6611:EE_
x-ms-office365-filtering-correlation-id: 3a5bad3f-1d39-4e48-8782-08da96607d21
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l2A0zExO79TePHGmKkcJwFGKrwGDzfxXxW85XSiLspBHfT1wnrjwhK8VIEUGZWgmrzrZOWeGNOt6bbjNVFzzNMP+w4p/svrEZDIKf0orhg7KkwCfF0RfLvO2agsgyVY6dwjF2zWjYuq7pcKrISOF7YgAb22uQZB6h4mPBsQkXIQo3oJEc8lDrpgdDXj4iNgmF9QDf6lFCEN4oLao+kfV/ERuxERDY7uPuAkhxp0o0eazlNG0U2ZOfixyg8Lae96Yv4G5RRsqh01ZYg1mJ/HTJ09suZLDVvHdM+PMeztENDTcn51w8F23c/Hi+4vyfmFX/W09Df3BmoN2NwxehDvaJvFX0Hw6Jxa44li0R+1DsaIaXq/cWLvFadEgB6LGIsQesXCioIlWFLMT9MsP4pI7rDOMkqvi5IW3u3eFuMhcnNMmQbKHhDiv4usoCUtwExcjg4c0EC4NvWEpNjRXrhqGf+XrlqDoy2YTQOssHAwtOUKoLosjyCM+brA7nJdbyStnTpzuPcTReTlqrgKYhHBe1+/UInHKo6SzwEK+feRIolLIKQvyskiBXqdNY0QCAmnvn+hi41ao0Rvg51W5QV+JxxItV68Tb/YjAji1yMv2NFIwxOIRvCA93yu+3S9JRUAjttcP+YumrYtWBnv/qhiCQ2rPcvChZe3Ej3HkJ/jYFGTkP2B8U2AqNmLZS9KBWtKTe7hAjLeRnitKRQAavc0Y5eftqB1+UmyeQIVKksnFkli9Wxb7Ec1oc8vEyuKe+fKlI0t06L7KqpRG/EXZYW0iaw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(346002)(136003)(366004)(39860400002)(451199015)(86362001)(2906002)(52536014)(83380400001)(5660300002)(8936002)(316002)(76116006)(4326008)(8676002)(66556008)(66476007)(66946007)(66446008)(64756008)(38100700002)(71200400001)(122000001)(54906003)(6636002)(55016003)(41300700001)(82960400001)(478600001)(38070700005)(33656002)(26005)(53546011)(186003)(7696005)(55236004)(9686003)(110136005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rzbePWN8oQgjTKFQM3VPzVLd9UkrNvihKizXaCrUYqOKtKZ8SxcgK1Bgpg6k?=
 =?us-ascii?Q?GXd5suQBQKQE1RnTKtF4/NlX9QN1xPcaFRg8RRlJGCt+1mhJTJh/WAzoC+xR?=
 =?us-ascii?Q?ITDLwU7le6lZ6mUu8DMHHgAR2wCxmxWwO0z6m5QY2KgKEZ/q9tmEOOoxJ8XF?=
 =?us-ascii?Q?LUfOrQUrhh8GPTlbtAgUi/X8qP1cwxSOQt6N2+RkjRTcIArtuP7TreGq7MJO?=
 =?us-ascii?Q?RP2Y2/g3yLJjRV2PeiMU5IyvuaNZ3vD+OD+tf2QGdx/p4bf2p8Gdb5/7I+/K?=
 =?us-ascii?Q?rN7RixudBRCiau9qXDHXeDr0k3ROUdz6YmKQHPT3dpTRv38w0g74AUOeL4vu?=
 =?us-ascii?Q?RsZCtqOr5KQT7ofqNyg8OGsrPogR7m/kDJIdJJbk1RZRH3fYa5Y+XBnSRhKC?=
 =?us-ascii?Q?U35wW+cKMwqsmx5uPxw4fWQysG/4jIEH/7pRM6LfVSFL9wsxY8PTdsjyu672?=
 =?us-ascii?Q?TCJ9k7fIk6p/H9CZaQTGNFfOW5oFpdXVd/k7NL0QzTTYWd5nnKE9pGLGzNIp?=
 =?us-ascii?Q?uKJcYsp9CXlF2HwmmCxX/0Hv72mNHQJ23ayWTBg9NQLolR8LBEI97qmg6DN7?=
 =?us-ascii?Q?RrL3BV6IYIB0YjwjtEoesQYhoQdSUX5IlqrQep4YtaVUebnLmczHg/6ytmrp?=
 =?us-ascii?Q?UVMFX767d/udYM/BI41iySdumHlwgs0JtLYYM4PiuPFpiM3/eAT+5MLd68d4?=
 =?us-ascii?Q?5dJM+s+jbjjJAfEO+WSeNqjlc/zprMSXu+yu+75foOIVqlsSfb0TFoBv9CM5?=
 =?us-ascii?Q?Oz0Jfw0SYHtbAY8QpgM6soSJ4fKN9sG7b8DZ2CngbAE0XwQ+X91ev7BQo0yp?=
 =?us-ascii?Q?vslduvJ6Eqh2ZTaC2+nrljoO0LB+WuQajJqiR0p1zS/YUJp3tyQBzJ2j4HNl?=
 =?us-ascii?Q?k8K2zRL5vArQu6qSspvFz3DIkeEqblOymActPtoF7JxidOPlu3cf1iTAwWGi?=
 =?us-ascii?Q?KAImENeBBuj12xlVYJ41qdxPKGDpWhuzzdw4K9ObpVliKIDddlHDMPNHODqp?=
 =?us-ascii?Q?yUGYdvlTGRy6vr6q1927uuDwRGP9oDO1gHNOIQND0Sc8rKPcdChIyXIHI2Eu?=
 =?us-ascii?Q?UfoDlL3hnkHEz0gRtSe4Qp9iDP6kz5AM1P/2bKbsTKdgAOU3L1pQ7aGV3SpQ?=
 =?us-ascii?Q?VAuFG4Cd+WCbmAuyjcXw3AwYHwpctYI3Ok+vMiXFIBTJ+SWemy0/ybrGryB9?=
 =?us-ascii?Q?SqrlkkVZtopz4fxqeD26W+Z73Eppdge4FWfR2zBWQxuWQ4+QMYce+uFwh/fi?=
 =?us-ascii?Q?copPSvESIgMkXt+vlcTwS0J89Wb2MtXLV1Yhpu60Vj9hbjFPnDSB9VjgNpu8?=
 =?us-ascii?Q?wIxj2IEyi/zyJD4zmaNwVvo8h1P5ry5jkTiRwhOsR55o7HTlaxR0wL9QtLyb?=
 =?us-ascii?Q?ovRugV4YRYXgKyWeWR5A9W4TReTcGv4xb3V7IYre6OIvcuU8mRjBnoEl9yP6?=
 =?us-ascii?Q?RZh3qowjcVEP4n41UEQdao8oAMyoovya0GktBeonx3QRjdrng+oaHtxhUzd+?=
 =?us-ascii?Q?mpnkB9D4mNFONCHvmGGSRm1f7KYfYc7gIAAHMRKG0CjLBFn0g0tnRGp/Q3gY?=
 =?us-ascii?Q?b0OqDO/QgbEDFWtCFMaob45LD6vKe9yepTizjtxq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a5bad3f-1d39-4e48-8782-08da96607d21
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2022 14:50:38.6254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 299LyX/TxAtvignaIdowCJKtR9IokZjbCc1JgnbtAIs5hZTOmLH3Ac5R1kK0+kLZe84qviQiingVLTxLiYdkNzZwloW1og6E3KS8iJ4J/es=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6611
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/DG{1,
 2}: FIXME Temporary hammer to disable rpm
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Wednesday, September 14, 2022 8:13 PM
> To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org; joonas.lahtinen@linux.intel.com; Ewins, Jon
> <jon.ewins@intel.com>; andi.shyti@linux.intel.com; Auld, Matthew
> <matthew.auld@intel.com>
> Subject: Re: [PATCH] drm/i915/DG{1,2}: FIXME Temporary hammer to disable
> rpm
>=20
> Hi Anshuman,
>=20
> On Wed, Sep 14, 2022 at 10:33:15AM -0400, Rodrigo Vivi wrote:
> > On Wed, Sep 14, 2022 at 07:45:53PM +0530, Anshuman Gupta wrote:
> > > DG1 and DG2 has lmem, and cpu can access the lmem objects via mmap
> > > and i915 internal i915_gem_object_pin_map() for
> > > i915 own usages. Both of these methods has pre-requisite requirement
> > > to keep GFX PCI endpoint in D0 for a supported iomem transaction
> > > over PCI link. (Refer PCIe specs 5.3.1.4.1)
> > >
> > > TODO:
> > > With respect to i915_gem_object_pin_map(), every caller has to grab
> > > a wakeref if gem object lies in lmem.
> > >
> > > Till we fix all issues related to runtime PM, we need to keep
> > > runtime PM disable on both DG1 and DG2.
> > >
> > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_pci.c | 21 +++++++++++++++++++++
> > >  1 file changed, 21 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > > b/drivers/gpu/drm/i915/i915_pci.c index 77e7df21f539..f31d7f5399cc
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_pci.c
> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > > @@ -931,6 +931,26 @@ static const struct intel_device_info dg1_info =
=3D {
> > >  		BIT(VCS0) | BIT(VCS2),
> > >  	/* Wa_16011227922 */
> > >  	.__runtime.ppgtt_size =3D 47,
> > > +
> > > +	/*
> > > +	 *  FIXME: Temporary hammer to disable rpm.
> > > +	 *  As per PCIe specs 5.3.1.4.1, all iomem read write request over =
a PCIe
> > > +	 *  function will be unsupported in case PCIe endpoint function is =
in D3.
> > > +	 *  But both DG1/DG2 has a hardware bug that violates the PCIe
> > > +specs
>=20
> /has/have/
>=20
> > > +	 *  and supports the iomem read write transaction over PCIe bus
> > > +despite
>=20
> /supports/support/
>=20
> > > +	 *  endpoint is D3 state.
> > > +	 *  Due to above H/W bug, we had never observed any issue with i915
> runtime
> > > +	 *  PM versus lmem access.
> > > +	 *  But this issue gets discover when PCIe gfx endpoint's upstream
>=20
> /gets discover/becomes visible/
>=20
> > > +	 *  bridge enters to D3, at this point any lmem read/write access w=
ill be
> > > +	 *  returned as unsupported request. But again this issue is not ob=
served
> > > +	 *  on every platform because it has been observed on few host
> machines
> > > +	 *  DG1/DG2 endpoint's upstream bridge does not binds with pcieport
> driver.
>=20
> /binds/bind/
>=20
> > > +	 *  which really disables the PCIe power savings and leaves the bri=
dge to
> D0
> > > +	 *  state.
> > > +	 *  Let's disable i915 rpm till we fix all known issue with lmem ac=
cess in
> D3.
> > > +	 */
> > > +	.has_runtime_pm =3D 0,
> > >  };
> > >
> > >  static const struct intel_device_info adl_s_info =3D { @@ -1076,6
> > > +1096,7 @@ static const struct intel_device_info dg2_info =3D {
> > >  	XE_LPD_FEATURES,
> > >  	.__runtime.cpu_transcoder_mask =3D BIT(TRANSCODER_A) |
> BIT(TRANSCODER_B) |
> > >  			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> > > +	.has_runtime_pm =3D 0,
> >
> > The FIXME msg can be smaller, but it also needs to be here.
>=20
> I actually like the comment, is very clear and helps understanding the is=
sue :)
Shall I move the comment to commit log , and keep a smaller comment for bot=
h DG1 and DG2 ?
With that I can address your comment and Rodrigo comment as well.
Keeping such a big comment at two places will not make any sense.
Thanks,
Anshuman Gupta.
>=20
> Thanks again for addressing the issue and with the hope to see the proper=
 fix
> soon:
>=20
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>=20
> Thanks,
> Andi
>=20
> > With this in place fell free to use:
> >
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >
> > Since the proper solution might take a while let's protect from this
> > case, regardless of any other on going discussion about the force_probe
> protection.
> >
> >
> > >  	.require_force_probe =3D 1,
> > >  };
> > >
> > > --
> > > 2.26.2
> > >
