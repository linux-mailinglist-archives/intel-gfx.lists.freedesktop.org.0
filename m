Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1EB82396D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 01:04:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393FA10E2F8;
	Thu,  4 Jan 2024 00:04:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CADE10E2F8
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 00:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704326641; x=1735862641;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B7x/QZlI26RqcfaBSl2uIXWjiihdUAVq9zyNSn7e0QM=;
 b=FVWDsG8KwchLtcgkzsppYWAcsjY9DpBLHIxyydff2eg74nsITkgQoZ5r
 a+7XIF1jDksxYPT7tckob1UL29gdcgDWNlWiJko7zG8CELbTsxWbq1Xgk
 FJZAq8dU6JSYC7HvLDLmUSW9ihe3R4A6f6w1hXaYCYpFKIZ0de6jZGtPd
 OwUnzgd4I8/doQDrVM1xCG97zF/pWG5Bf/6m0h+dUMT+Sc+vWz87AKRH5
 lyZjIa2PzCmToLBzNwVWN9vqAlih1RuEymxbbuf1pjMszBi/PKdURFfkZ
 bwRS23JlPNfA0/SFRDLMtN773VrBdCYWCr+M/Rwd64DqDnIZOaNgsORZP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="376580601"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="376580601"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 16:04:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="814405625"
X-IronPort-AV: E=Sophos;i="6.04,329,1695711600"; d="scan'208";a="814405625"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 16:04:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 16:03:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 16:03:59 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 16:03:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+pCcMIX0udNTmFiQ7JpksRbGZWPsENdCbnFcK66zxJF0sPcu9UFpvSGOEekxHkGSVo22TK8QK6gJsM35Pg48DzYwZh2DfGYR1duG2cCliPjQsqx5PC4JYfCcOs7qqeiLtYJJnETadyDE5eeh25zJKuEi6Qk48P66/o27eYvjUGcv6dU2c+YrSIao4a/4Y62rhH1qbIB7YE1Vq1c5jQ5EgjwKPr6ZVb/hl8JMOWPpb2OoC/Pzuhls+szdZoysuNNsHBRF0qB1t6jF8JmiFV0hmc+72Hsk4VsWpf1Ix+iFRZu29d+Yu5vFScodXE27V5OxxqxmM2hfqUuL/1FTrd0hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BoJ2sHowSbRefIf8OEauKxlWT2TJsrWW+dZw5OR2QNM=;
 b=IAH+YZXYVU1Fx4p1q4BDUreA4jkZeFsFry690qCKWnAFiMSsYwtJwS2fZ5JpROWFdGJWudKCnknHxwBN+ag/AuOei0887L51p7G3qZcIfjTTEKlmyXeSrqKz9Bx9XE/v41xe6u60G9Xx3ZRA9HZxXPVXQbb8o2YqIr68Ti6arH3RvJ45skPzCFF4NiuoB5fA6kBc6tqE159+avOkY7dP7MupSePW0FjurQqRficD/SAPzpF69QZXCgpVNJkfBVCoMsrJ2x0I7d0GvjohQTTXF5SeKoFkd+rZyUIZPVcg5BgpblwxEK/hXrpis2cwJ461GtZ2eWaui9SO3mgejDSjBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA2PR11MB4860.namprd11.prod.outlook.com (2603:10b6:806:11b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.13; Thu, 4 Jan
 2024 00:03:54 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7135.023; Thu, 4 Jan 2024
 00:03:54 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2 4/4] drm/i915: Separate tc check for legacy and non
 legacy tc phys
Thread-Topic: [PATCH v2 4/4] drm/i915: Separate tc check for legacy and non
 legacy tc phys
Thread-Index: AQHaM5IKWmT2gGHzVkqhVw9gNnQgerC1MQsAgAB7coCAErZSgIAAeN8A
Date: Thu, 4 Jan 2024 00:03:54 +0000
Message-ID: <DM4PR11MB5971EFB1A0CE850E57BE58798767A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
 <20231220221341.3248508-5-radhakrishna.sripada@intel.com>
 <ZYV2Zri+2ZlAFiIK@ideak-desk.fi.intel.com>
 <DM4PR11MB59716E93415BD6D650CC85DE8794A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <ZZWQXc9NAXyinPjO@ideak-desk.fi.intel.com>
In-Reply-To: <ZZWQXc9NAXyinPjO@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SA2PR11MB4860:EE_
x-ms-office365-filtering-correlation-id: ff25f225-2545-4435-aaa4-08dc0cb8a43c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jStINdwCrVFZN0Gq0976kQvhgGJO4KNnbjJZ95MBQDvj+6L69tUQTSdz/BsvhZQwvb3yuwYDD5xVxrAKVspyrVGxhra+DsjMhagUERe1Ivb3c6BX7AUxCGtieHfbptRc3uiW/S8tbq/qAEjx6O8dsjBAJIvib3EdaR7opiJr/6dM+p4LM+eaD90eRO3teiFFN66WeKhrWZMMonb2mV+bzckVP8FO9NYXvFlvOby5Rf0R15w7ZsKPZHM4FTq+aWaMygvb5BDkvhrk3faO/ZRdHVBYG3OeZJjgDQNl+4oDkXQeZ10XIRfXsBq0Mf+hea9r48GUDRiajU7GmFKEe9SGPxOxOtd1a9Iyu5aJ2PQB8J/CCfjhFXa8T/xhJ1y+wSd/4yvLBBV9vMW47QDCImVza9cGiP7drHGgpcLxXK4lwypciwysCD4cCDuCRKU7ksoBtm/zi70ey19Ds/61kDu1XvA+vmT+d2STS0Etg1xQAbfJa8G8OxGII6JvDIl5PXX7msYQPVb/qlJe1jSuLFxBi6ZoEQjZtaa1P+x0SgTiodtVl8w+YmBZAvxl4LJ+nF06mP/P9tW1n4G/hFY6Z8u7IjUQ+r7YKdKfA3msQDLODsMJQbQZhPyifRi/RK8KNrZ8AfSh9Df30OFy6xkkvn4wZZpiOlGJi3XLj5Dot6MBoj4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(396003)(136003)(230273577357003)(230173577357003)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(66556008)(26005)(71200400001)(82960400001)(122000001)(83380400001)(38100700002)(66946007)(76116006)(64756008)(66476007)(66446008)(6636002)(316002)(478600001)(6862004)(86362001)(55016003)(5660300002)(2906002)(33656002)(52536014)(4326008)(8676002)(8936002)(38070700009)(7696005)(53546011)(6506007)(9686003)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jFRhY9kjfp5B9AyE6MXW888FAFUPOjDZ/zPNmK3VcOPOC9K6XLDwu3/tOVmP?=
 =?us-ascii?Q?uPzyaO7dJSCe2jqTEp+rEMvyW3uFOJEkjIeh9cDz7nzPTlFoEH58u3X8mLUd?=
 =?us-ascii?Q?Xm4teKZUUC4De4mVVJmJaDpn7Ox0Swq0KzliLZSSlYsFmzqIWjiD7ICABNKc?=
 =?us-ascii?Q?RGubwXt7lx4cKi/Gp07F9jqUh5/AHZThJeR83chJFM+huQqYYiQIYTdAGKMO?=
 =?us-ascii?Q?re8IyMHocIEgH0zrMjaAeppWQ26zpcMYecXWhZxI3LVpvUEUGxtekxZ0V0hh?=
 =?us-ascii?Q?3XIpY9HgdsJViesHh5vbYFJvVel7254jGAju6JRt4AD3bU7bBUTIbKN+1V+b?=
 =?us-ascii?Q?DOIBLTvibBaBs0w0CVmJ9xt89LeaEdfQRdlOX2BCsiYY9zWuJSyhZAJZuufH?=
 =?us-ascii?Q?d+ihwR2ESpc23IIaLTk3Gh02hi+HFYQOMLYK5aWEgFlYQeLcZuhYS2uk7DZV?=
 =?us-ascii?Q?6WmSCXP89O/jSdEBfZl9FEKDGEN/lsmPk3U9siAzLxTJ/xxRWCGAtYpTr9ef?=
 =?us-ascii?Q?cd32HBL0ISf+tsMXflKPvPqmv9vIGp7Q4C7yGL0dhYxZFlKz0eXEG1Rhe74M?=
 =?us-ascii?Q?xlEjyd5eBa/RtaDcTubToBzYLSWn/MHycP8iZirjSiMZBu4Vd2N+kKG9rLta?=
 =?us-ascii?Q?xt5UePeM0OYv2HUSZESdiphgHsig0cmjKgcewFsrtW7Enzdj6NIjNu7+3XZw?=
 =?us-ascii?Q?fGnGmnsajGGO0XTSO0NUm7pLPBs/tqrY7yiskhq7R5kHu/SofuTEDwHEOUmn?=
 =?us-ascii?Q?AZdg9CAuYlVbrIHIpZNCW/83p0N4lxqbIF7OY5TlBv1nlgKVXcZsKFEs6qic?=
 =?us-ascii?Q?ugaoemk4rK7uYR6Z08ka28J/hUoMTvmOBMHSaBDhO/b/0CMbjli7fkwPg3b6?=
 =?us-ascii?Q?8zAdwA4bhN+tFs4x7p+EiW+AGARtDu3TGetx5CqWOsN7KLnz2v0K7Ar+3MRH?=
 =?us-ascii?Q?l8aMIyKaclbBuehSnwFfBoIQJ9JVOaWnrYqZdl7ZG88DpRLksym9qIdKASQm?=
 =?us-ascii?Q?LukvxTr0DJMU4Mj1IkY2M0hfwaRFiyN25lrA24aP1PlgDS7iEN4xMg0PgUd1?=
 =?us-ascii?Q?/LV4luk4B0hT5HfR+KVscwaOAuVeZnEyF2rwd9MHluvoZaVcMfR2NhrxO8oz?=
 =?us-ascii?Q?Hp9tvUynjsVuU3GqDJbF1kx6F5m/fNJ98QUDtRKrpUmgIa9aMEkIhSZu0viB?=
 =?us-ascii?Q?333nRizzD8vo3AMkK///u+7/DUTd+yKKRz0EN+xnK5wpK6r5evggE4azF/1i?=
 =?us-ascii?Q?ILkfGATX/I+zB1g/EZ0E3Bf2nkvnz/CGAbHCQp44rL7FB66kQ4c+Glooj3KC?=
 =?us-ascii?Q?6EbNG/PaddNCiLnYr6oc++G68yt4DUbHQ50fsxGtKdtYHiY4kO9iuKaaKbwY?=
 =?us-ascii?Q?tzFrId3P3uNzc0tWNr2naAsaw1u5gXOLwHVRx4ENAlrp/dNBDF9bl1jtzwD2?=
 =?us-ascii?Q?xJtWR2WFh5XCXrotzJtvnQzqF2WtOWjrpQreZkhC3DWqnfTxkFUT/PWymdt8?=
 =?us-ascii?Q?vRV/sdHPvcJxNWNN/U/iTWj09l5UmJCFDseLAkCqcJUK9+n5U29KMHtM+M7Q?=
 =?us-ascii?Q?iUIKv5UpoDSOlR8VRLDYe1WsPLnjIv2UrsGuv5EnebQGdUllBzCKOhZvuCTH?=
 =?us-ascii?Q?qg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff25f225-2545-4435-aaa4-08dc0cb8a43c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2024 00:03:54.8627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1cWSyTKlRNyHPI4OG04whHRVlXruuAgZKidmHFiUrreTlgv3l8oaYsxSa8eMStip12HrLDOWEc7MwRZDMuG8NKfEAK9/GKqWe0npNiTfvFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4860
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Imre,

Thank you for the pointer. Let me evaluate and see if it is worth taking th=
at trouble.

Thanks,
Radhakrishna(RK) Sripada

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, January 3, 2024 8:51 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH v2 4/4] drm/i915: Separate tc check for legacy and no=
n
> legacy tc phys
>=20
> On Fri, Dec 22, 2023 at 09:47:49PM +0200, Sripada, Radhakrishna wrote:
> > Hi Imre,
> >
> > I have question related to tc legacy handling. I am looking in the cont=
ext of
> discrete cards.
> >
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Friday, December 22, 2023 3:44 AM
> > > To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [PATCH v2 4/4] drm/i915: Separate tc check for legacy an=
d non
> > > legacy tc phys
> > >
> > > On Wed, Dec 20, 2023 at 02:13:41PM -0800, Radhakrishna Sripada wrote:
> > > > Starting MTL and DG2 if a phy is not marked as USB-typeC or TBT cap=
able
> > > > by vbt  we should not consider it as a Legacy type-c phy.
> > > >
> > > > The concept of Legacy-tc existed in platforms from Icelake to Alder=
 lake
> > > > where an external FIA can be routed to one of the phy's thus making=
 the phy
> > > > tc capable without being marked in the vbt.
> > > >
> > > > Discrete cards have native ports and client products post MTL have =
a 1:1
> > > > mapping with type-C subsystem which is advertised by the bios. So r=
ely on
> > > > the vbt info regarding type-c capability.
> > > >
> > > > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com=
>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
> > > >  drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++---=
----
> > > >  .../drm/i915/display/intel_display_device.h   |  1 +
> > > >  3 files changed, 21 insertions(+), 11 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > index 12a29363e5df..7d5b95f97d5f 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > @@ -5100,7 +5100,7 @@ void intel_ddi_init(struct drm_i915_private
> > > *dev_priv,
> > > >     }
> > > >
> > > >     if (intel_phy_is_tc(dev_priv, phy)) {
> > > > -           bool is_legacy =3D
> > > > +           bool is_legacy =3D HAS_LEGACY_TC(dev_priv) &&
> > >
> > > This doesn't make sense to me. PHYs are either TC or non-TC (aka comb=
o
> > > PHY) and TC PHYs can be configured to work either in legacy (a TC PHY
> > > wired to a native DP connector) or non-legacy mode (a TC PHY wired to=
 a
> > > TC connector). So this would break the functionality on MTL native DP
> > > connectors and all future platforms I looked at which also support th=
is.
> >
> >
> > I understand. I want to figure out a way to determine if a phy is
> > connected to FIA. Like in DG2, the phy's are not connected to FIA. I
> > am assuming that will be the case for all future discrete cards as
> > well. So instead of looking/building an if-else ladder for the phy
> > check, is there something that we can rely on viz. vbt, register etc.
> > to determine if FIA is connected to a phy?
>=20
> I suppose this question is if a PHY is TypeC or not, TypeC requiring
> some kind of mux (which can be FIA or something else). One other way
> instead of the if-ladder in intel_phy_is_tc() would be adding a
> tc_phy_mask to intel_display_runtime_info, similarly to the port_mask
> there. Not sure how much that would improve things over the current way.
>=20
> > > >                     !intel_bios_encoder_supports_typec_usb(devdata)=
 &&
> > > >                     !intel_bios_encoder_supports_tbt(devdata);
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index b10aad15a63d..03006c9af824 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -1854,17 +1854,9 @@ bool intel_phy_is_combo(struct
> drm_i915_private
> > > *dev_priv, enum phy phy)
> > > >             return false;
> > > >  }
> > > >
> > > > -bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy p=
hy)
> > > > +static bool intel_phy_is_legacy_tc(struct drm_i915_private *dev_pr=
iv,
> enum
> > > phy phy)
> > > >  {
> > > > -   /*
> > > > -    * DG2's "TC1", although TC-capable output, doesn't share the s=
ame flow
> > > > -    * as other platforms on the display engine side and rather rel=
y on the
> > > > -    * SNPS PHY, that is programmed separately
> > > > -    */
> > > > -   if (IS_DG2(dev_priv))
> > > > -           return false;
> > > > -
> > > > -   if (DISPLAY_VER(dev_priv) >=3D 13)
> > > > +   if (DISPLAY_VER(dev_priv) =3D=3D 13)
> > > >             return phy >=3D PHY_F && phy <=3D PHY_I;
> > > >     else if (IS_TIGERLAKE(dev_priv))
> > > >             return phy >=3D PHY_D && phy <=3D PHY_I;
> > > > @@ -1874,6 +1866,23 @@ bool intel_phy_is_tc(struct drm_i915_private
> > > *dev_priv, enum phy phy)
> > > >     return false;
> > > >  }
> > > >
> > > > +static bool intel_phy_is_vbt_tc(struct drm_i915_private *dev_priv,=
 enum
> phy
> > > phy)
> > > > +{
> > > > +   const struct intel_bios_encoder_data *data =3D
> > > > +           intel_bios_encoder_phy_data_lookup(dev_priv, phy);
> > > > +
> > > > +   return intel_bios_encoder_supports_typec_usb(data) &&
> > > > +          intel_bios_encoder_supports_tbt(data);
> > >
> > > Based on the above, this doesn't look correct: a TC PHY can be
> > > configured by the vendor (reflected by the above typec_usb and tbt fl=
ags
> > > in VBT) in any of the following ways:
> > >
> > > - legacy mode (wired to a native DP connector):         typec_usb:fal=
se, tbt:false
> > > - tbt-alt + dp-alt support (wired to a TC connector):   typec_usb:tru=
e, tbt:true
> > > - tbt-alt only support (wired to a TC connector):       typec_usb:fal=
se, tbt:true
> > > - dp-alt only support (wired to a TC connector):        typec_usb:tru=
e, tbt:false
> > >
> > > For all the above cases intel_phy_is_tc() should return true. So I do=
n't
> > > think this (is a PHY TC or non-TC) can be determined based on the abo=
ve
> > > VBT flags.
> >
> > Thanks for this clarification Imre. I am looking to see from the driver=
 if we can
> make a determination if
> > a phy is connected to a FIA to make this decision. Is there a way that =
you could
> suggest?
> >
> > Thanks,
> > Radhakrishna Sripada
> > >
> > > > +}
> > > > +
> > > > +bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy p=
hy)
> > > > +{
> > > > +   if (!HAS_LEGACY_TC(dev_priv))
> > > > +           return intel_phy_is_vbt_tc(dev_priv, phy);
> > > > +   else
> > > > +           return intel_phy_is_legacy_tc(dev_priv, phy);
> > > > +}
> > > > +
> > > >  bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy=
 phy)
> > > >  {
> > > >     /*
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> > > b/drivers/gpu/drm/i915/display/intel_display_device.h
> > > > index fe4268813786..9450e263c873 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > > > @@ -58,6 +58,7 @@ struct drm_printer;
> > > >  #define HAS_IPS(i915)                      (IS_HASWELL_ULT(i915) |=
|
> > > IS_BROADWELL(i915))
> > > >  #define HAS_LRR(i915)                      (DISPLAY_VER(i915) >=3D=
 12)
> > > >  #define HAS_LSPCON(i915)           (IS_DISPLAY_VER(i915, 9, 10))
> > > > +#define HAS_LEGACY_TC(i915)                (IS_DISPLAY_VER(i915, 1=
1, 13)
> > > && !IS_DGFX(i915))
> > > >  #define HAS_MBUS_JOINING(i915)             (IS_ALDERLAKE_P(i915) |=
|
> > > DISPLAY_VER(i915) >=3D 14)
> > > >  #define HAS_MSO(i915)                      (DISPLAY_VER(i915) >=3D=
 12)
> > > >  #define HAS_OVERLAY(i915)          (DISPLAY_INFO(i915)->has_overla=
y)
> > > > --
> > > > 2.34.1
> > > >
