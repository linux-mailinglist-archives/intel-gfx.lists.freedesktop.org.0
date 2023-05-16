Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DE4704C7B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 13:37:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C15410E21A;
	Tue, 16 May 2023 11:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601EC10E21A
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 11:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684237074; x=1715773074;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=faH7r3syaPgxfBWsBtzHzrdofL/n8WwWzrG+c40RoKc=;
 b=dNJaavjrhHy4qoR1aeEjeb+CoarVBwcIjTbCJ1nd9OR5hZ/54E+q74IS
 Eq76h1ZSmcCCqAXLzHIFBxb2JRuBXWg/g+2xb5ItTAQFWXyy4NvrilJ3W
 aw40Lx0PbeV8PglMJRT0J8F+X0feoZlExecbHhP8KaB2YbfSxWIWqZInk
 uh5NjiPDH5dqAFeoFhccfFYOaRm6HbcNpU+aur0jbW4Ol9W5VuRMz2HYo
 4qPfdHWBZbLtWEJbFCarblEXvmYdUIGlBGbDxAMExSlDjR97AamSxU5KG
 9sOvZYdxk9o6xpNGVhEKB2b/P+DfPFCLyj3eMfvPKWEwp/ZmoX4t80WPc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="437794943"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="437794943"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 04:37:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="678824634"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="678824634"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 16 May 2023 04:37:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 04:37:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 04:37:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 04:37:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 04:37:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kMShqh5tRYpn9khU61mHU/JSnx6KDqUx76ooaxUF8fScitEXNmk/oIiolFmRxapESAvF9CK1jnd/1jCKqk1FCYEPQZttWYhWskh2hgHIa+uFCJ7GrAukdW9vjyiz1Gnayh0p+jZseIGsG1nhUzRh1CyAju+T8cLw9Ps2FUeW1Y71ez668kGyc0szCjXZAjQPlJnd+1B3CN+O9suPoc0GVdfOh4092K/Hk46e/yQHIE4iNM7qBtZFrXS61mFkKebVKZtTDOjEhbHJy9Z/EaYYk1T9KrtY0SpycFLA7MK3OVMM4fOXgHkh+7Y5sGVPXbdxam1lLxni5aw0MDzqeb1PCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mcdyGIviXGEuX4mkavf1ZeqcgXFIkC58QbpwmUVPNeQ=;
 b=bTv4o8DWaM/XOmheuLzIeav//LQr/LiULamJPC3hwCUnMeZJgRLUfYP6jIVsDQg7GqkCDBzaxiAAqSWjrlsu8h9/xyRmpJ8IzyeFNbn8KvV3pUE/A+9qYvQi2OUDlPApjZfcxpv5HEFvf2vAgHXIuhEvArCyK2ovp86v6wgl6iLB6tL7pPE34w+b6SFz/kyk0ZdswL4io0aCWu1tlcgVMTROmej+FqVYGac3VKrKwhKfsg8ZT7XOLW4uy83K6E88AY15pXwncKAasP/ljgiP7I80L+/hSQdVBvnI7WRhhUIwJfAiUW/sR2lAPZsokyqqCSYP7dhz69Wl9xS/2fCwgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB6426.namprd11.prod.outlook.com (2603:10b6:510:1f6::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.20; Tue, 16 May
 2023 11:37:50 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::963e:a5cc:24d1:e15e]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::963e:a5cc:24d1:e15e%6]) with mapi id 15.20.6387.030; Tue, 16 May 2023
 11:37:50 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4 0/4] Fix modeset locking issue in HDCP MST
Thread-Index: AQHZhxjeLbZP6OME/UuLG+tt6MuFI69cxzsQ
Date: Tue, 16 May 2023 11:37:49 +0000
Message-ID: <PH7PR11MB5981B38CAB59F96EF13D8DE5F9799@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230515103225.688830-1-suraj.kandpal@intel.com>
In-Reply-To: <20230515103225.688830-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB6426:EE_
x-ms-office365-filtering-correlation-id: 1271ed8f-7e93-4f3c-14ba-08db5601fa6d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bDS/U2Sb8e/hsf9hhRSD2+IvEwEjpNkrNbin65ddNjK/fm+bzd2UEd2rEQqr1BERIEbW5YPMVY4KZA5EKDMZDYOQTERd4FplzdlcEG1Y9AoDwzMoA4BI8xGYQVwJ5G+h+tOwoukwwoQmWJmT0dPHQxrv5zgxUUO+M4ESd4zugDVsNmDDVbpydm0AJ9FedKVAXs+AsNLMlFh4lSTghNgTSpzOgWKJnE4dCQz3GG+Qvq0MFU9xgN35m2IU6P8D61jEHka/fGlR6LYmE0iB5s6bM/d//2nChzN+nD77CjE0YOP/k507KPgd0Odu0TFoAQnycYlOZuoYdmpAmNjXNXHcE7UXGKT7lK3ve+B7ZJq5LvdZWdF88KYPIZOYFU/lZBoXdeZKt37OFnLKGrtKK+1MjarDo4bhHpVld0tlulOzhwxQAHTF8MqzMWuYA4gyFe4ijbinX4Fc0QEeWQpi08kgLy3vkOhgHWkX7kngJDAnljL/MoSPBGkV5rrWKUxjCm2Z9Ul4cDFxEGhhlY5iTspCSltE/8A6wHBSB7yrQUnuvmyHMH59bU47a/oOgqcViz2Mbcs43Yd0vAJC4TNVR+RYmFMzAWp0m0ED5OWUubBGRNaqdDXtVDqgZgvlzrVv1iN3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(39860400002)(136003)(346002)(396003)(451199021)(6506007)(9686003)(8676002)(83380400001)(55016003)(186003)(478600001)(53546011)(66476007)(8936002)(316002)(38100700002)(82960400001)(64756008)(76116006)(86362001)(110136005)(7696005)(71200400001)(26005)(122000001)(2906002)(5660300002)(33656002)(66946007)(66446008)(41300700001)(52536014)(66556008)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MUzmqtwCt155BcYUO+3ZPfgJmX5xCmtXvbQ9IpcM+npOai2eM3j3xn6cPRlu?=
 =?us-ascii?Q?Bi6dkw5IFse2TDTR9cxNCogzK2F4M+uXI0RrGjuIsrMOra/EO6rWiOlCpp18?=
 =?us-ascii?Q?YvjEnF1Q6/7CmVkpGHtQkS4q9DcALs7wircDa5oLq0PEAOT3w9kQhQAiT3sO?=
 =?us-ascii?Q?kShb1nDCnWp3BSsrvgvsCFpqHJJsNEAxlU7Trq3L9e7VBNYj32BsIVqvHahA?=
 =?us-ascii?Q?lu/q4lwsAjeY1y502ox/Xnu3ivEQBiob7u9HYt+E4LpB8g2WzLF0Ngk6dF6j?=
 =?us-ascii?Q?CfWMo4Xq5xNx+ffPZOKZOwYDgCwTdCG5BoFWyCkPn17gaLx4wM4v3KKdASpB?=
 =?us-ascii?Q?+UuVLwCIjaafOmyc8mTlpAzS/CIUKS8ERFcsORlLGnaQlN6LfR6HVn73QcGo?=
 =?us-ascii?Q?kj0y0G2qGWUTzVQQvsBDdK78OUhqfJRUg6IicVtwghANaK7IXGX6ND/zrDQT?=
 =?us-ascii?Q?BN6KgJ6JR/pms5HZm7aJ3Tevay0GWFf938/k79YUlTfavsFzQFCPxkTulVka?=
 =?us-ascii?Q?IsTATZDCozM+5xhxkpNa9p2jgkZEIq4AT6YPDK8FYBpau/mZHReRMf644rCB?=
 =?us-ascii?Q?VHn9rrwN5Gxpoarcz7Uw3xpxEF8L89OKZcudQwGS5Ka6QVqAb2mKcGzAh7z7?=
 =?us-ascii?Q?ZEWQ9ph5X1cp6oA5RLBSCJonIj7VBgaBVhHhxA0NoTZ5CSr49mvm/WUoTi/S?=
 =?us-ascii?Q?imGOVNfJCpgyYlVQQbDq2gA6qThUMs11V5Fkg3ax15qKRFgHj1tHe/KagXbi?=
 =?us-ascii?Q?BShQupxMbGFK+0nNJxdE337YOfhvZTmpGbOO7ePlVmjbPx+K2hWN6XUecZsX?=
 =?us-ascii?Q?pwA0PUGf9A42qf/rVxz6+E8CZJfY8QkXHHAoLp+vo4xsC8BI7AloFSwlq+32?=
 =?us-ascii?Q?BUzf8gsG99wR6kaNJ7TcCXAi2PNqf3eDXQhM2fkSYvgq4DkmtXW8XjAMpc4T?=
 =?us-ascii?Q?JjlgO9coB9m6PfhA2Y0F2vNc4Ay0jllGHSujflOGL4QtSYmynbVdHOenvxyY?=
 =?us-ascii?Q?uUhSieF57G+1Fqog6VfbvMm3S6B7RcToemRneq8dZz8Rqs9D1kZBLyRytrX8?=
 =?us-ascii?Q?E4YpWeapBBQ+Rdx1Twb9ThXVX5+Sh9IsrJ1T0LwVLl6IqigJHM0BWukthfnc?=
 =?us-ascii?Q?wdaAol3XHL88s1SuW1r22g0f9ruXKzkofj3GsmOvIN/uuJ2rWMZv/Q4IgkYd?=
 =?us-ascii?Q?rx5pHiSS5F7RuKLt5yUv5AVwqFGuPZDZbjCHqoIsCN27XFPnTPYzJVXx8po/?=
 =?us-ascii?Q?ROvYan/n1Ty6/PrTdeUJwTEuLUdTmF6z1l2tmUwI/uFywGTgWm2JmHizwFbG?=
 =?us-ascii?Q?UsdSrUpgt29q0ZcJzJd2MV5dVq1LzHag2JV9vet2zzfB+VYy82FeHLzxf3N8?=
 =?us-ascii?Q?zTSvTiw0R61JywFbBl4lpi6uS9ieUvygzhXqcmVFaRHEV4aBKt+v/yZaFQb7?=
 =?us-ascii?Q?QnlHZ6NqHVWTCcoSQPdSByELvXNlQz/hSGglAF10HzF3Y8L1vx2hi9sMHptd?=
 =?us-ascii?Q?g2QE3ygZQfyIJR5wXplkmYI2I1gcZc6ilGhL/ktEXi2V+c74yLmMmGP3FdQl?=
 =?us-ascii?Q?LH+jvk81Nb/+MB3e6eA9ZEJrn371Yr6ikppVc+fm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1271ed8f-7e93-4f3c-14ba-08db5601fa6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2023 11:37:49.9240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qkb1p99Lpm/3q/EQXgxR0ooRVAhHFY8SXhcvRBhufLABOqNnc5i1frD6yAbzDusicbuKYQTlF3P5qXiu6flfFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6426
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 0/4] Fix modeset locking issue in HDCP MST
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Monday, May 15, 2023 4:02 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v4 0/4] Fix modeset locking issue in HDCP MST
>=20
> HDCP MST scenario sees modeset locking issue ever since topology_state wa=
s
> added to drm_atomic_state and all modeset locks were being taken for us
> causing a locking issue to occur when we iterate over connectors to assig=
n
> vcpi id, the fix being to pass acquire_ctx to drm_modeset_lock.
>=20
> --v2
> -call intel_hdcp_prepare_stream instead of intel_hdcp_required_stream in
> the beginning [Ankit] -replace intel_connector argument with intel_encode=
r
> [Jani]
>=20
> --v3
> -break intel_hdcp_required_stream to two parts and call
> intel_hdcp_set_content_streams at beginning [Ankit] -Move encoder_type0
> out of loop [Ankit]
>=20
> --v4
> -rename intel_set_content_stream [Ankit] -remove return type from
> intel_hdcp_prepare_stream and intel_hdcp_required_content_stream
> [Ankit]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> Suraj Kandpal (4):
>   drm/i915/hdcp: add intel_atomic_state argument to hdcp_enable function
>   drm/i915/hdcp: Remove enforce_type0 check outside loop
>   drm/i915/hdcp: Fix modeset locking issue in hdcp mst
>   drm/i915/hdcp: Fill hdcp2_streamid_type and k in appropriate places

Pushed the changes to din. Thanks for patches.

Regards,
Animesh
>=20
>  drivers/gpu/drm/i915/display/intel_ddi.c    |   4 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |   4 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c   | 143 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_hdcp.h   |   6 +-
>  4 files changed, 81 insertions(+), 76 deletions(-)
>=20
> --
> 2.25.1

