Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1837E0793
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 18:38:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E8010EA45;
	Fri,  3 Nov 2023 17:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B489D10EA45
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 17:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699033111; x=1730569111;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cuB93bX0qGmRGR/zrJcukY+nzi9GzeKarSG8NMXEQGg=;
 b=URRNt3aomFG/0NdZp9TdYLZpx6KasVezaUNOMvVQslff2kQZLSKte4Xb
 BUqsCEKkvWIcBcna5asbMECVPrsdqJjjEmR1e800uDSQ2ZPBFAiCAcOSZ
 Cd6unwUtfU5OcfAAVAgNmXxHv13gMS0PQa5LDZGz+m6g5BmInIqN3WXhz
 od6XJd4HJ1PsVENbfEIJW9X/Fc/s/f6m9pisk/CZ8rmreh78ZjeuUbm3l
 bGbFL5Zxe/72n14RqeFsZz0SAIXWI9OvJ00lBI+yR7e5jUJmFIwgfrPPU
 EH1i+8kUzGbQzoX1QAsc9qJmMiKkxn1xuOoQr47B6oJThjy9szrzmdJjc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="1870918"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="1870918"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 10:38:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="827556845"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="827556845"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 10:38:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 10:38:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 10:38:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 10:38:29 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 10:38:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A6zLCP9DNKLoOkYm24WNI6Syqw94CsdBDrVdAZDjzLSvtor1YFzHv2lfNouHWcgxdBJlH7vEQU6VvvV4q5wjTHgHq3EtpJhTlUPUXGeSwCYxbrSPbXLxeIUD6HPnBlntVbo5nuZfojTUDX8E+hLA6jcAKyQaFMA3Pdq5jLdsAk2s0HvlU+G/05Dgb696vHI2qFJASsMAc7ufRz1N5WX60vB0WLkeI7SngwrmBZGWYeazmnjsrbve99N36E1Olf4U1HBCcHhMMtXpmlk4nx3kF/Ls7scFG+ENQYoyHIQCmi3z6muRgWD/w0Js7zAeykm3746EwBtwrUdFnBrrmmUmEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w1m7ByN4EI+1n2Mbv/CHHCpZ+HoXFk2V6wXQmISYQew=;
 b=gwhVeOaK/RN8kZYWaqr2rXqprsHAbRNJrHeQuK44HaTOCJ1nMzSb/kfBn+dGu1GhEs3CK4kZEQCSGTG3Nmd9rY4cRSWRQjkVMmke+fLO53iFurDNo9nlx07C9qb77E+f/J0Zz5PKzP4FRIdUDlzXbuGX3RPDmSYXl1OcmqGHHTfhV3sZKD+i/JuVq/8b43kB9QseM+qOgNTOVQlel1tKc5t11Xgedn4+O/ojVqyiujx1b8lfG21B0RgZUi3rhZyWAhFG0+7UakqObLn0Z5aNMKg89r/juc4iNvgNotxXhZ4Bd8521OzOZY8Nj/vKlitZUvDd1MUN10mMb0+p7aenbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 IA1PR11MB7811.namprd11.prod.outlook.com (2603:10b6:208:3f9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Fri, 3 Nov
 2023 17:38:26 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85%4]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 17:38:26 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when vt-d
 is enabled
Thread-Index: AQHaDabTvnAABxr1ckWWdxkrt2u5lbBnOfyAgAGBdACAACEJkA==
Date: Fri, 3 Nov 2023 17:38:26 +0000
Message-ID: <DM4PR11MB59719DA586D0C6E045A9B58287A5A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
 <169894295379.1757.8337264188078916267@gjsousa-mobl2>
 <ZUUTQEGuTWXWXGqg@intel.com>
In-Reply-To: <ZUUTQEGuTWXWXGqg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|IA1PR11MB7811:EE_
x-ms-office365-filtering-correlation-id: 2debcb6a-c28d-4f02-c80a-08dbdc93af78
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h2pbHGALU1MpfheMsD0F4oEy9KgpkrOG/yUukQwszuKilupZQycvKa9Di/Vy+nw/5H8OqmRtGuX/EY4bmBCjsAhEXWTWr+4Ua/O0CREmhWIgCSvjWumkFoVx2RjhW4s1MeCZFjHRcfdwIxJOz+1P+B3bKxQrfvL8qcyr5MiJhKWbyGpHzw4RadxjwE1EPP9mVEXVXB788hBH1KuNPuyxTcu4Do8LAs50BX/gt6AiON4PXYZbWFs2HWd0hiJagx6rIwn+Iu3RhPE41IGCrape+LRdR7wpiVCypy6ucBaTMV6bUoQlTAuUT/BNAJmTs5tqif1aIEy511eiY4OB7lx5s6HfLvri455lq/fFuTAxkejLWVV60UWSf7LF7MCRz8Af84nx6sFzIdmnGUUo80YJBJEpp1Tz4DNyWu7DtKMXfRySzVyhh2KR1f8lWxL8j7s1DVXDY0VeuNGl9E6FxK98+xPGULc16WmBJUaA34XMRwkQkV2WK+lEbRr1KAF6gkmPRD4WJCfq7uept736xjy1dCy6rUrW1VCn1whgQJQcmS97blaLMpCOeFYDEYpLOQkmu9DTzI0s3Yh3YrsGq9H0vrtSLeOJ3j/mmcUNcOUC00A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(136003)(396003)(366004)(346002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(6636002)(110136005)(54906003)(66946007)(66556008)(9686003)(5660300002)(86362001)(52536014)(76116006)(66446008)(64756008)(66476007)(4326008)(2906002)(8936002)(316002)(33656002)(8676002)(26005)(83380400001)(71200400001)(41300700001)(6506007)(55016003)(7696005)(53546011)(478600001)(966005)(82960400001)(38070700009)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5FewE9KhFFNwUS6NkeEPIJ4NynK9LBPPoo4NW7bElehlNqftsWTlZROZxUjW?=
 =?us-ascii?Q?YjsX0Fh6WWEXKUzN0aCkdICs3NfaJv6KLh9bislM2n0mhL9G/IyqTCUQ1WyP?=
 =?us-ascii?Q?j/sNwQT7CoDn7WsZs6gbzmTsX5TkdLUPOJpG90fJ5spL6Y/8nVNbRHXHCjfK?=
 =?us-ascii?Q?Aw2JVSFot3RpWbkhJn+ovhdBPIeB2l+bcxU9miQy6B2voNX6Be+/pJkByiqb?=
 =?us-ascii?Q?jhhyjjv8+CuUjAWL6VMO3gj7BOAXHELXlSE7NpAIWnqr+Q4hxQiI9BszXrJa?=
 =?us-ascii?Q?IX0YX2PkjbWzboUTRnN163SgkGLfAV8OnoUH6Q76k4T9RQmMUcpl9+xMbeWm?=
 =?us-ascii?Q?bxOtpWQ7BNE7Yi6EkcpNKm5l6MMRjfZfFU3jMlshsWWtB7Ib8dFK7NKws9j0?=
 =?us-ascii?Q?FU9Ov2wAiea6gCbaRe7HpieNrAdaXGQYAIYbMT2Og8tjKZCLkSNopLYR7kTF?=
 =?us-ascii?Q?/jX6m/vLvbS4T/9ZqS2T2cYDaOxUpmViIg6py9d/DmGskcS1EICLjM5pIoQ5?=
 =?us-ascii?Q?2qaJ0lgJEVKF2iUMwAJNrZw7vUHOdTn502DWH3Fi3Yn/puIKq8/p/UZw2yqT?=
 =?us-ascii?Q?K3ukuEh8ohNN52HwXz0NusvJE4cymiasOO9Pj6qeEcDgW1wDd7riR6pWQVXd?=
 =?us-ascii?Q?rj59szakRVBR5wt76L1O7UytqI/b8Ntx9wcNaTUqkZMNBXoPXUVIltubWcCy?=
 =?us-ascii?Q?Lce5KUUpEZs+qbwJGKpCLXidF0Ovux0UiMq48WXJinI9WnI+NxI+GCPjbTln?=
 =?us-ascii?Q?uMML3Fskb1fwM23+BQWSNZMM4dyUsP442F8mbfB8L340S9nCIrxhnkihpa13?=
 =?us-ascii?Q?+ok6jwZiLxRQAnV6zAanfoWyin1IoNfh34YWr9IMGdZfCAz2X+ZADXHnMOlm?=
 =?us-ascii?Q?LfzI6C+X7UDyEQtN/ssQHkssOo4YTAfkzfeK5TSQ8WGVxHhhg10rWduSt9Zr?=
 =?us-ascii?Q?GTlXT1Vz5KF/N50egSKZPaNa/2Iwc6/pHpg6oN0iQdrvYda2XEpBeBSjEOkx?=
 =?us-ascii?Q?T9KNXFMtYazil/ud697A1es9d+Jc/xkWpQcZt60JmOEgZCiQ+mJaI+ohMwIG?=
 =?us-ascii?Q?QuFVUlp48+eJMbRNBoOv82oatJOvVIOYNrWC4hESycxFftYEgaWgB03wukhZ?=
 =?us-ascii?Q?alqH6NwPGrQC9F80QAch2iPnvNg4HtURqz1JIz6Xd0yPYIzuvgI/ITmuLzbo?=
 =?us-ascii?Q?ttnupRlbb4Mkitr6UtIpRSKzbAwCK33DbhEZYtkU+kzHAMyMWwcsZoS9tJ6e?=
 =?us-ascii?Q?fGGAYOCUiDmhxjL2SRyxMbrZUTbVjiPv4oSc0JPgRl/1piH2AmMgAVc30SD6?=
 =?us-ascii?Q?QJ+Ld06ie25obzCei67ySuCdrZN/htE2KLVH1t/729Dk9ms9T+1bA9AqwgxC?=
 =?us-ascii?Q?sPU7vN73pygfk6diobpt4JD50G7VrIQurQrDKcVGnA/LU/E4LNVcORC7RdrP?=
 =?us-ascii?Q?dYo/Y3KspdJCut1U9TozPogrjJfbIEAn2gew8SfBYOna+JZMleibfGooP3Me?=
 =?us-ascii?Q?m+fxKrzU07Rh6mmNbPLAonJ0TTm+NoDb0RipYVMmHr7qs1G7vDxXmhEYuMB3?=
 =?us-ascii?Q?4DaZ2kn/mQbdjrJwLWB+MYzgErB1Z8hc502BdLeLm+P4M91gfaiSXxr/0ebv?=
 =?us-ascii?Q?+w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2debcb6a-c28d-4f02-c80a-08dbdc93af78
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 17:38:26.4679 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hJMzMgSWEc9sG5a0GtRQNoPZSl0oVTzK83mSKtOBvsPPrEIAqEdf8h3ED9rGdN4A2iprfcwDyTOrvO52NoaJVIBLG2Nm/RF6nX86BPzd6+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when
 vt-d is enabled
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
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Friday, November 3, 2023 8:35 AM
> To: Sousa, Gustavo <gustavo.sousa@intel.com>
> Cc: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> gfx@lists.freedesktop.org; Chris Wilson <chris.p.wilson@linux.intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when =
vt-d is
> enabled
>=20
> On Thu, Nov 02, 2023 at 01:35:53PM -0300, Gustavo Sousa wrote:
> > Quoting Radhakrishna Sripada (2023-11-02 13:06:44-03:00)
> > >Experiments were conducted with different multipliers to VTD_GUARD mac=
ro
> > >with multiplier of 185 we were observing occasional pipe faults when
> > >running kms_cursor_legacy --run-subtest single-bo
> > >
> > >There could possibly be an underlying issue that is being investigated=
, for
> > >now bump the guard pages for MTL.
> > >
> > >Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2017
> > >Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> > >Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> > >Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > >---
> > > drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
> > > 1 file changed, 3 insertions(+)
> > >
> > >diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > >index 3770828f2eaf..b65f84c6bb3f 100644
> > >--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > >+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> > >@@ -456,6 +456,9 @@ i915_gem_object_pin_to_display_plane(struct
> drm_i915_gem_object *obj,
> > >         if (intel_scanout_needs_vtd_wa(i915)) {
> > >                 unsigned int guard =3D VTD_GUARD;
> > >
> >
> > I remember trying increasing the guard, but with a much smaller multipl=
ier. So
> > it turns out that using a much higher value did the "trick".
>=20
> a much smaller multiplier could mess with the flags range?
> it is really hard to understand what of that 'flags' is really those 12 f=
lags
> or what is this 'guard' and where that ends up...
Based on my glance, if the multiplier fits in 32 bits then it should work. =
But the
problem here pointed out by Tvrtko is that we are adding awful lot(262 mb p=
er fb) of padding
in the gurad pages clobbering up the ggtt address pace. Enough(10 to 20) fb=
's created we
will fall into the realm of evictions.

Regards,
Radhakrishna(RK) Sripada

>=20
> >
> > I would add a FIXME comment here to remind us that this is a hack.
> >
> > With the FIXME in place,
> >
> > Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >
> > >+                if (IS_METEORLAKE(i915))
> > >+                        guard *=3D 200;
> > >+
> > >                 if (i915_gem_object_is_tiled(obj))
> > >                         guard =3D max(guard,
> > >                                     i915_gem_object_get_tile_row_size=
(obj));
> > >--
> > >2.34.1
> > >
