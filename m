Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D4B5B3273
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 10:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB32510EA27;
	Fri,  9 Sep 2022 08:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F18910EC38
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 08:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662713922; x=1694249922;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SwMBjIdV7BVvtlQqKiT5SudK/8U7XKe8Y2/HV254bgE=;
 b=bIId9hp+R/55araA1fMHOPFC0mg/z8ZT9J44duaFpr2JHMunw0IctaFD
 jSL0ujs+n0C2z0N2BEjVkuL7p3FTF/lj+yaWe++Ur8/ZkL1aHZ5obJV5H
 b06SrLdGXjNdVt+aU5mmxCN8ocN+lnsC1/BKofX6q2NYf0oNiL4AC3rcR
 PRGnjjxF/nJa0j10vmbrRp5NjGlnNLCjfCNogqQNre35AAPpSTd6cur9Z
 cKFpjKGY+y5/HPWwcZ7CXvOcDqGcByugxB5NaUPBlLKgnKiD9z7FmIQsL
 PMFEUZBD83LwbVGQ40oLXLT6qAfoPpgjlrNjCatQHB5/DI0afwU32e+3s g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="296168074"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="296168074"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:58:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="645460215"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 09 Sep 2022 01:58:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 01:58:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 01:58:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 01:58:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 01:58:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kXhJED8rCsP1nIchrblxXs2oN4Rp8+Pgxr1D9OnIKep4q63jK6R9Jr5b45PLDH9aiYEtqU7rptAYzb4GWPmuvLO0S982ZoCO1WfzvVK2Z8yI4YVjU6SEXqX+l0kheO4cY0GWnsv3J4OjNPAnX63Nis7/Z5b7I0aozxBGi9r/geYdEEWYRafBtajMYvlCLG3KvlgV9XxUa6o70HTwuPwQbjpx5mA9hlH7xz3tOYGiIQJ98JB4nK+5GpsROv5sO4ZvSHQEkCcJo0bZCizh9Ea6JxNUbkWhnsUOMdthIvJCXS2HSuot0cDj9sEDCgxofVJPSkoFxKfeRRkKHgiZXcjsHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+gjIizCJK/S5AYr5lm1lrzraH6/XWGz+TXnnTeHXamI=;
 b=L4g8chdOOv8V7oC1IYld5LwZAYqo2j4y5jh9eMIbkHii8OYoshwVbUXG/bFgX5QbmUyUqlJBnDxfvOFfE4+Fn4B+pwLG3Uh5L1fG060V9aJMzWPKwiKPStIJXcRAbQLRFgIz66WqbuHB+3mcd9FUVntdpX7nMt6ye+P2leLxJfq3hkq0ESl8DtdW6aIprlW1YwBFl1a9rGdGTyM1vuLy7+BlVqHcn2Rj1cmlirAOnCaDpfZnwweDkWlah8/rCu0jXkgBa+jzwHK8SzhwRi9eYzIB8g4LwegwdkfrRpxPEiG+iaTPc4uUZcEIXS0vrzc/90SXWHapvLQy0lhAj8Zs0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM4PR11MB6215.namprd11.prod.outlook.com (2603:10b6:8:a9::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.17; Fri, 9 Sep 2022 08:58:00 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3083:6b7c:8c2a:c200%5]) with mapi id 15.20.5588.018; Fri, 9 Sep 2022
 08:58:00 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/3] drm/i915 : Changing intel_connector iterators
Thread-Index: AQHYtf+3tfWGzel66UyyRKUMkuBj+q3WyEkA
Date: Fri, 9 Sep 2022 08:58:00 +0000
Message-ID: <DM6PR11MB31770B8E7CB63253231ADB98BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220822081642.159908-1-suraj.kandpal@intel.com>
 <20220822081642.159908-3-suraj.kandpal@intel.com>
In-Reply-To: <20220822081642.159908-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37ceede5-da17-428a-af7b-08da924165fd
x-ms-traffictypediagnostic: DM4PR11MB6215:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N61DRroBTDSnVSbcedYbx+4dj8Iz+cmsvYmjo4BMaK22j1+oA6utpaRFpUWnSW5y/QZAI59dUt3Ja+eTFQ+4PhvAmKd6fC1JCv21QmdSgfpRBPgs++9hrp2bvaZ4rbR2lwcl3ecGiZvyfcaHNXueuvzDNgj1EknKIgZSiodSRiiRi+qLq05wtn+KrKwMAGhh/AMmpmGMU+t6Vtu6mGcCaGbUzbY/KxU/FsIDabCFlmkRY/D8x24yUyk6zQ1F/FyAqdCJXniuAT/TKKFA6DTJTafT16W6zL6OTuPxovUbNCEL/4ig2QrGgaESeSzdwNoo7ARdyWhFIb5F6I4YA/y3u/D7S7SChx4R2e4E/jChxG8sIB5jpPjjUz5MEhQENJ4XlwVDIN2jXYce9AhtDecP4U91uf+Gywhm9fHIZU9XFFdn7x76cdewH97VoT7DCyK673XS3Q1hDLOWqSUabyCd+YIS/LJMIkE0jQAE6jJTWkjsX4kSzG96isEK91NlpWbxMxeHOtxzMzZuwl9HW8bCPkaKKhDf/KLY62iV1SpGd//RBAqwSghK0wa9jVf0w1Oxzj1xjZCm1PHXwS6rgXlQTFWARPIs8zMEf1nIwMYHGXJNnx89Wk/QxplFRVg+grKvTqIwBATZDlAfujCu1rIptrLMLmkhNu1A78Nd42F6dRr5SG+n/lRoDgplYcO7LQ6cK0kcCG3cQ9JC95Oxb8wYfx128M3o+g3tZLxNLQB+GLBB0nDvXgHQFEfrWje9aL+9M2l6SBG9pBxa0ThR7pE1UQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(346002)(376002)(136003)(39860400002)(316002)(71200400001)(38100700002)(110136005)(54906003)(186003)(122000001)(107886003)(7696005)(86362001)(55016003)(83380400001)(4326008)(66556008)(38070700005)(66476007)(64756008)(2906002)(6506007)(66446008)(8676002)(66946007)(41300700001)(8936002)(9686003)(26005)(76116006)(478600001)(5660300002)(52536014)(82960400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tNRredt5QzkP48HunTYjbTEPgxgf2WUUxYP3nG/0Xrd2NxArzzTNJnS5jpr+?=
 =?us-ascii?Q?+TqeqI0Ccv9rZqbQFCj24P/QuExjXCXkUDrURTU/GlGXmm7+spmYbEQU4YEq?=
 =?us-ascii?Q?OTnFiumbmGNjvd6TE8Kvdc00y9BMbRVqifBtVYaS5SLZaAJ0InAcGOPk2DgI?=
 =?us-ascii?Q?jzB1t7bmrgFx/MrPvykmV7yrhkeyrcmtysqToC1MF0ec419EO2n+l3FmhrnE?=
 =?us-ascii?Q?MOTyLRNwPeVNDA3G57Z5CchmnNLbZJ5EGtXe2Ol2BQ4ZihWWYqzxBUhNvCgV?=
 =?us-ascii?Q?7QZlezDJKpnHq7zNqSHes7YJQCgF7Xp+5G3qzegwfM8tIJeXRQFOtc4Dq0Hq?=
 =?us-ascii?Q?+6q2Kx2QBBmQWQ3ud2VoTVCjKqsDtGS0ye/tIEyuo/0p7F67Wf/YMYMH/kT4?=
 =?us-ascii?Q?W6GxoFAo8wc5DF6UZYp088Jyl3vjNMSVNDvz1WiJxyvoeNQTOU/PlGnRS8ma?=
 =?us-ascii?Q?GoPz2TMawfkfDcK4W3HFMArBm20RiK7zTxeAHIg4u9RXGcWsJT1qxYtQognZ?=
 =?us-ascii?Q?x71jCkIwEvsD/V6pXbRyZyo43kRZ+YyRWjwN4MYA5XjD2HepKMY4aDfj7uCC?=
 =?us-ascii?Q?LVAl2hW6Zk6qWPRXL/LSLVqRURr5VEOw2i3yTC2WZ5T61Uyddk2VCiV/SGNj?=
 =?us-ascii?Q?i0YKocHgZkuS0eiuCXyaOIRNdRVnx4cTtcndkfwnNDPDNK4hNVECwWyCtq/m?=
 =?us-ascii?Q?nCPul1JPPWpBk/iin6wXD9I3j5uh0OfIvqPR6i62EReUHPArl7vBV5iptpEA?=
 =?us-ascii?Q?nBqrWNVflmNKzh8oH1q79zM6ElEATC78o1rVdA78isWa4pdONrVBpmUn0SCl?=
 =?us-ascii?Q?3aKtuGFFhBjSI9xwuOboDXgvjCH8y5FWE4CHPYoAM+sknGKvrQ9I3AUy0tLd?=
 =?us-ascii?Q?HFawUPMvWe0VHlZEt5OsaXrnFp28wCF7K+Edw9JuK+3svNqHFZi9CNUQIcpd?=
 =?us-ascii?Q?83aae6Vm995DJmCJD0J+heZv+obntQMX/LoXmKbXTSeUZg90hx0IEVqNzh7I?=
 =?us-ascii?Q?QbryuuuB/YaqAsSiWan+HPQpdCZT7Y7pbLEDTh7XONfSFUeaBYBLAhggqlvD?=
 =?us-ascii?Q?DfFHD8K4/IvpztZfxvDGcb7bLb7Ue3Jy6yHWp75CfsSlUgAsCuzpi5OEvrLD?=
 =?us-ascii?Q?5jfZWqIsaYyVEYAhrKrjAnNh3KQS89WywWKhoh8DMWvmXupeEYqb82EL8XpR?=
 =?us-ascii?Q?i3mKAPh2wey382LOWfqMMPwCHpKuc14M6U5ZjpDfuV0PVkmmZONprpSaE/7N?=
 =?us-ascii?Q?Y4uHIFmXfjelWB09FZpG2u0CCu+SFt2T+pwnJkyNrv9xP7Hi8N1Oj+LCzNYs?=
 =?us-ascii?Q?Tp4GBUHKNYX+NHOYXiczp+dFK8F6H4DsJOJyYsYZrs/k2DHI2YFigxnRWrRw?=
 =?us-ascii?Q?lAgQucb/Yl2JiafZXeCItgKiqU+jDnW1b1OqSnMRmABZHofPvjVRnOj1+9sp?=
 =?us-ascii?Q?vwZXDfYoT4wYDqxrvOOgStMLFOLG4JD6wAf0eSR+zZx7r6qsO7uPD1zDg17Q?=
 =?us-ascii?Q?SaPKA7FEBMv5hmQCNADsloFjRsXXeUGHZNXFAixUtg6dt8dcgsZY6JVCvi8M?=
 =?us-ascii?Q?BoHmUzuwHRPIaL3CF9nwebpkYYLCznlxSI24FEJP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37ceede5-da17-428a-af7b-08da924165fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2022 08:58:00.6906 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dJlCLmOYRBELVmgTOKTFyZa9kz4yxzN/zICk6eAG0QgnO6vn/Pos7Ym18BKz59k2B/iJCelazQHbqaFhiI0unw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6215
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915 : Changing intel_connector
 iterators
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Changing intel_connector iterators as with writeback introduction not all
> drm_connector will be embedded within intel_connector.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.h  |  7 ++---
>  .../drm/i915/display/intel_display_types.h    | 26 ++++++++++++++++++-
>  .../drm/i915/display/intel_modeset_setup.c    | 16 +++++++++---
>  3 files changed, 40 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 4e9f22954a41..3b9987b5f304 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -52,6 +52,7 @@ struct intel_crtc_state;  struct intel_digital_port;  s=
truct
> intel_dp;  struct intel_encoder;
> +struct intel_connector;
>  struct intel_initial_plane_config;
>  struct intel_load_detect_pipe;
>  struct intel_plane;
> @@ -469,16 +470,12 @@ enum hpd_pin {
>  		for_each_if(intel_encoder_can_psr(intel_encoder))
>=20
>  #define for_each_intel_connector_iter(intel_connector, iter) \
> -	while ((intel_connector =3D
> to_intel_connector(drm_connector_list_iter_next(iter))))
> +	while ((intel_connector =3D intel_connector_list_iter_next(iter)))
>=20
>  #define for_each_encoder_on_crtc(dev, __crtc, intel_encoder) \
>  	list_for_each_entry((intel_encoder), &(dev)-
> >mode_config.encoder_list, base.head) \
>  		for_each_if((intel_encoder)->base.crtc =3D=3D (__crtc))
>=20
> -#define for_each_connector_on_encoder(dev, __encoder, intel_connector)
> \
> -	list_for_each_entry((intel_connector), &(dev)-
> >mode_config.connector_list, base.head) \
> -		for_each_if((intel_connector)->base.encoder =3D=3D (__encoder))
> -
>  #define for_each_old_intel_plane_in_state(__state, plane, old_plane_stat=
e,
> __i) \
>  	for ((__i) =3D 0; \
>  	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0e94bd430bcb..7a82b7acbaf2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1497,12 +1497,14 @@ struct cxsr_latency {  #define
> to_intel_atomic_state(x) container_of(x, struct intel_atomic_state, base)
> #define to_intel_crtc(x) container_of(x, struct intel_crtc, base)  #defin=
e
> to_intel_crtc_state(x) container_of(x, struct intel_crtc_state, uapi) -#d=
efine
> to_intel_connector(x) container_of(x, struct intel_connector, base)
> +#define to_intel_wb_connector(x) container_of(x, struct
> +intel_wb_connector, base)
>  #define to_intel_encoder(x) container_of(x, struct intel_encoder, base)
> #define to_intel_framebuffer(x) container_of(x, struct intel_framebuffer,
> base)  #define to_intel_plane(x) container_of(x, struct intel_plane, base=
)
> #define to_intel_plane_state(x) container_of(x, struct intel_plane_state,
> uapi)  #define intel_fb_obj(x) ((x) ? to_intel_bo((x)->obj[0]) : NULL)
> +#define to_intel_connector(x) (((x->connector_type =3D=3D
> DRM_MODE_CONNECTOR_WRITEBACK)) ?	\
> +				NULL : container_of(x, struct intel_connector,
> base))
>=20
>  struct intel_hdmi {
>  	i915_reg_t hdmi_reg;
> @@ -2068,4 +2070,26 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
>  	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;  }
>=20
> +static inline struct intel_connector *
> +intel_connector_list_iter_next(struct drm_connector_list_iter *iter) {
> +	struct drm_connector *connector;
> +	bool flag =3D true;
> +	/*
> +	 * Skipping connector that are Writeback connector as they will
> +	 * not be embedded in intel connector
> +	 */
Better to be more clear, "An intel_connector entity is not created for writ=
eback, hence decoupling"=20
With the above changes
Reviewed-by: Arun R Murthy <arun.r.murthy>

> +	while (flag) {
> +		connector =3D drm_connector_list_iter_next(iter);
> +		if (connector && !to_intel_connector(connector))
> +			continue;
> +
> +		flag =3D false;
> +
> +		if (connector)
> +			return to_intel_connector(connector);
> +
> +	}
> +	return NULL;
> +}
>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */ diff --git
> a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index f0e04d3904c6..985dfa5f7aa1 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -204,12 +204,22 @@ static bool intel_crtc_has_encoders(struct
> intel_crtc *crtc)
>=20
>  static struct intel_connector *intel_encoder_find_connector(struct
> intel_encoder *encoder)  {
> -	struct drm_device *dev =3D encoder->base.dev;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	bool found_connector =3D false;
>=20
> -	for_each_connector_on_encoder(dev, &encoder->base, connector)
> -		return connector;
> +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	for_each_intel_connector_iter(connector, &conn_iter) {
> +		if (&encoder->base =3D=3D connector->base.encoder) {
> +			found_connector =3D true;
> +			break;
> +		}
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
>=20
> +	if (found_connector)
> +		return connector;
>  	return NULL;
>  }
>=20
> --
> 2.25.1

Thanks and Regards,
Arun R Murthy
--------------------
