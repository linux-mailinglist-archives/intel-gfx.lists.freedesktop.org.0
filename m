Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5ABA97E5F2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 08:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E1C10E383;
	Mon, 23 Sep 2024 06:23:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e18zyx4k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D9510E383;
 Mon, 23 Sep 2024 06:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727072626; x=1758608626;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PL6bES91OWzj4NxHtqBg3ZEAopMKXLCI4r8a3tGRme0=;
 b=e18zyx4kuqI/0ZlpyxlXYPb5UtOJ3790GZg53gwyKbp7m4/xPtQq6lSA
 R6Ihd8ujh4rgPoHtcC8jr8Zhm68f+dGAdCYZM4eH0oTk35MsqsLhH8Z//
 mOasiE0Pw1wlVjhUdocyyQF62Xk7smL6PXLppF0dRywsTLwJObrm0UgFh
 RpodHTcRIcGoVWPg4ki7vJapeXd0bqSaKxu/aWkkPi8I4IO1SpPQarpG6
 hYcWpfHTcHHRrb+LpmE90jNw2mSMv7FS/MTRbvs2qGm6O1Ze0b7nfINu9
 MJHRxG/WRHH3U6NkZjTexcbxOI3Vcub9V5g01CG5c8jGFNoSURIBi1s1E Q==;
X-CSE-ConnectionGUID: MBrEpkbsQe2od5pzOAI5gQ==
X-CSE-MsgGUID: jk7niGuUQFahnk6X1KC7RQ==
X-IronPort-AV: E=McAfee;i="6400,9594,5688"; a="26195470"
X-IronPort-AV: E=Sophos;i="5.88,1,1635231600"; 
   d="scan'208";a="26195470"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 23:23:45 -0700
X-CSE-ConnectionGUID: nWzKMC4hQviDG4Nc7ovPkg==
X-CSE-MsgGUID: 4As+YZcfSHywLL6pYCkMAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="71274960"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 23:23:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:23:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 23:23:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 23:23:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a5Kboy3srSiF7fZKr8s5/FApLr+kfbY6qxT8HuWD8lgwTE/Y+mCxuVLB06k2Tj/IEK3F/0ZKTS2f0W/S141t0JW5dCKlw8ajh6NFD5nMWBv5bT73lZ5l2Cv55G3V4AZ2zqNlk1aQEAAAwUFrA/TLFiHENRXzVvCcml+o3bPLHjphvv0E/Wf52kJCa5m5nNdlbCfvbYkEhZ/GclgKnUpRVJ2QOMrLK0kuJulJU2awGkDm0eQG47xWRU2bNPtbL4MnD5jLnriJqFpBzPAYkupGAAjOyuFK8T49Ftyao2C+aqDj3zcfLUYu57haNlpOUUlyrQz0t+QWJRdqXRKNsfrDhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EnRqGYqD2w/xTTnVj7MV+Vp82AI3EZy4gxZddg3/+bk=;
 b=SpMLn33+9ik7GAFbJsl7XBHKirLDxK8IxTGDRV9H37SdEKQ/OYectYZmIe8f8ih4DeLt6ppYTzMxcu1PG1AimF+j1MwW4IbaGpy1AUJl8cXGsEpfdyMaGPiNK2Jq2y4SzM3pcv7JLOy3EjyAt+SP6FyeqEG0Xhwd1/KZxb9HYgYjl6NiPlJH9+ct4G+Cp6o+7uK4XJoD+F6f+9DG0dFcpuH5+K32LT9RNrzkQWRBiwQ5MuCahhu/u75F4ILd1SG347Nvj4hHZcqMk8HdduHZ6mDQUckBb3bRjFUxduZC8q2QpuYYrf36DQa/LAfKi4xX3N/vSj9D4dvLt3cUQrKmhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB7138.namprd11.prod.outlook.com (2603:10b6:806:2a1::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 06:23:41 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 06:23:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Srikanth V, NagaVenkata"
 <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx for
 timeout
Thread-Topic: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx for
 timeout
Thread-Index: AQHbBNLe4t583jRXlkuFO26AOPNL87Jk+ErA
Date: Mon, 23 Sep 2024 06:23:41 +0000
Message-ID: <SN7PR11MB6750FF1460FA59B579B93954E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-4-arun.r.murthy@intel.com>
In-Reply-To: <20240912050552.779356-4-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB7138:EE_
x-ms-office365-filtering-correlation-id: 5efeb56e-47bc-4012-4578-08dcdb98448d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?yxGtblBabKtVzPZ+HnrCUiTH9jcLZ5153w5rsvwUmcQ3YDARw9rUOMP2wxf7?=
 =?us-ascii?Q?Nb4N9y1iWaWq7AauNAmUfHH0NMKlyuGtpKHS4UU7gJVNv4/84zFVsdrC/aN5?=
 =?us-ascii?Q?sUPinD4dEny7AFONgncu6u/ycdOWbbUU5l9iYUynutVxdK+hYaVJFsFu/ZT6?=
 =?us-ascii?Q?wODST901LGASyY8ec1nGYXeJzhQAbjGr9Dsu5WN/PyWWgetZyYjwlgCasEI0?=
 =?us-ascii?Q?SJuaC7Pr8pdqPbAESqEQQNsJjCeoSfkoU61gRm4gU8C3Mnp6wP3urcBzBAHU?=
 =?us-ascii?Q?3KCQO4GXdq/EZNRNTA7pOpd+ZNVwu9BTZtaWh1lqZpflJVVy2SMPZs0idk3M?=
 =?us-ascii?Q?DVh3sqIN1HS1idpsIvQ8jAX8i5BRDTqX8K6e/VvnGWzSM4pWMMLc52jKaszS?=
 =?us-ascii?Q?ZSJJtorFkfy0je6x3+IizWDa+E9lpeIxUBbjLofnyGGhBjwk/bYFSmSz4dIi?=
 =?us-ascii?Q?kRdm2j/i68O1Ekgt4pM1vKSeRBCI7XBtpW+d3uKjO4jxb/198pN6JvELYR3X?=
 =?us-ascii?Q?qIeSZq7olVq/lg0EWcs3uZgCOuYvxfwKGIB9LMBqtvoFaGxbcSF352uWhDKy?=
 =?us-ascii?Q?bCS15r0PN8korz3ctzKz+Itk9DuZ32eWbEEl5R7Qd+yfQr32kpKZdLqP8C50?=
 =?us-ascii?Q?kHmHcx9UenslgdkwUcNcLIIm1u5gnABvmHgrgXe6qu22DYaxu2E2+HweA2we?=
 =?us-ascii?Q?6hw/d85eh8EbCdytoN9EZ1mSis/1AgioS5YW2OQFuaParKUc7dSeXh8ThqK0?=
 =?us-ascii?Q?D6NWBVF/PPGcuNxXu/5ADfSLYyV7sIbtF897NkVEQ1oiGQHC4GFTBu9wvGGS?=
 =?us-ascii?Q?1JsGbYiFwMS2ppVCxF/AxFi1TfsL4kWjnwegLTwbJQ9OCVdIhhvkUWUzytN5?=
 =?us-ascii?Q?LQN1q8/KZChSNVjyRBmkYZ3iLZ9fq9rMeVgVnTCuiIsJWCxBmEyJaIBeRGk0?=
 =?us-ascii?Q?3c6ftJeW4SXvDurf/71zzEg7veSs61z+dMaM0FvDiaMh0SJkkV3NR1LmhceQ?=
 =?us-ascii?Q?Uf9XVZvjZGvABnBX/4VvzfVDRXLxBOh9A46SdW/HApSMmsyYRwtNaDRkJYIY?=
 =?us-ascii?Q?gdJ81xvkAV3XrfwP7Rhixhpk6jt8fPVRdyWVTShgfQihBm+s348H4mbM2vIc?=
 =?us-ascii?Q?zo+dSjN+56QQASD22IOpg3zQqdryhOhKZny37Qk73JXhGKFQKSsOVadK73Qy?=
 =?us-ascii?Q?zaWwlOk/ZAh+y2pjOi1NZyJP6JDSZO5KnfawGnqfXsIB7dZwaW1woGmVkeW4?=
 =?us-ascii?Q?L6QRyV97OoIsyvgwqdUDV6MwSJgZmfU6RT7K2eaiOjk1UJEzJJiSNo7r63Ku?=
 =?us-ascii?Q?DNGllka1yXtmh8z+jOuCRzk03MG0ZsSCA9FUDWQETVnBiQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zQ84p5UbPxV+OSdtekkqSod0NuEkowtNoAb6XYxmkG6eqY9Rko+43Dd/dqkm?=
 =?us-ascii?Q?aeel2qloCSBvG5/aIKGnJFMLHRZaWujGl49wPWIihTgsiK6CY/AN9DAgwqcL?=
 =?us-ascii?Q?pOa43FstlV85U07UzEDJBwpmrQaI5EiFH9O7RT7IEpnf66jqlZQ9160jP7CE?=
 =?us-ascii?Q?qNkoXNTBGxJZInLQkpfBwABzrzlOwxeoQhY7MhKsR4lMx7e1y7ln8ixTd0Cg?=
 =?us-ascii?Q?pnflsTsKi0zUu+BzuWXb8K6tMDSn62VBa1IbeKb3Rm8IG+BhVtCx1PTgnC2F?=
 =?us-ascii?Q?W9xFEZOjWwUfvH9RofuJJllmGTWGovohHRAe9wNyLkVqUq/OAXO7qhQgJn6V?=
 =?us-ascii?Q?Laegv6Oq5LaJXxJEICVixONUN757tqHOXcu0++O3UOOPbEVY19/YQKqYGySi?=
 =?us-ascii?Q?MaO1Kqkuf7iMy+U/X51Z3fiA47lIx6QwR7QSu7Vsj51DaQl5+elq7W2fxjdL?=
 =?us-ascii?Q?8BEgS4yOdjsiZEvmDUp85na/yI59FcCFVDbHhAmz8RMnobfdlnkbvnG52Gh5?=
 =?us-ascii?Q?LAW3LeABaulvCB9AKP8PO9zC/CIRRqUtLb2M0b+QWK3WYEkVyi0pP9MmT8xC?=
 =?us-ascii?Q?UUey48ocaLMMPsh0e92Hw+LCYVlh+pBk9jILcl0axFdeHbvqneT+yYceRezQ?=
 =?us-ascii?Q?iIkVptRNnqG2lLzIU3jTYDIq2i3fM9B2LN8kJF5DiEECSyEIaS5LIHIfYAZ2?=
 =?us-ascii?Q?y206uQAiIXuyaSRQSsQByFA8THA5QaEYCDtZc+zR72yy+pnPDn3Dq3NJoxb5?=
 =?us-ascii?Q?U8ZcjovFn3UdwDnNr86ZGxWhC1nle7JFMn+kjKedsWLg1zA5/l2XIOCtwUXJ?=
 =?us-ascii?Q?r1io2tvmHvexdGukEVLuM+hUvT8MYnekNmrnmZwe1h/Ud9dNHCWQ8AwqZEyg?=
 =?us-ascii?Q?ugYvGo/qPcOzJ/3IvfC4tMJ5/Z7mt674udDhVFL4n8ZvrRkEKUtXE50RJ+2V?=
 =?us-ascii?Q?5aUdpognPd2qWw1IZ5RZ0yeY0+U0o83CORy+XtECEWWVkqVKJoAcubL4D4YB?=
 =?us-ascii?Q?1e4Wbs1i348Jmnk0lzmOZs5nNo21aa5kuMRQ9s0yVWa8LRSkzFnTNqVnShT1?=
 =?us-ascii?Q?O70/ZXpt4MbNgqQTp4mb7MkeDF20MIdIm4Bi5Eo6U+vx59sf8PRjHKjT5OoU?=
 =?us-ascii?Q?aE+ZwqI9ppKp/YrbMe1pj9JWmilbFWAVw63cmF1pcOalxj1Sbl560F7pPxYT?=
 =?us-ascii?Q?pLwxz2/1U/b/RyGJiEp0QhnBcpE5fcb8TyYX8pQn/pQx/EzGVm1U6HvEm5C0?=
 =?us-ascii?Q?Gwtfr08vDNjN2tgevF73WLD9y+wSyqKXKpfznvXs66OL3alMxESkb10LMwvs?=
 =?us-ascii?Q?EhEQPbtkydCl1IxiMkRfQhfG4xl090oRp9ayFbtyP4/1/IKF8Fhmyc95P2/J?=
 =?us-ascii?Q?X8qkANBe3fz81K4by9LC6QvjiLUPtsv+2E5VW2DVT2JUafYolftE9QSTNYMb?=
 =?us-ascii?Q?o1jS4SqwDbCyWb8b9IolLJwfxbSERZBiDpUpN4iyVPLDVNpg0roDFaKWwtV3?=
 =?us-ascii?Q?Js8z9VtfS4PJSGmOj8cFs+uR/vL9ZL4706Z1xFZ+1e4Wvyir302vR0dwKyz+?=
 =?us-ascii?Q?/+xempOUOCnGM7Y3p5+f71YfgukJWI0zTs2GYjtq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5efeb56e-47bc-4012-4578-08dcdb98448d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 06:23:41.1296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A3bGaXZ+6ToPoVc6O8Ug4mpfPCda+xW34rk+BpVylOKcKdyfbLm8oXgnmKeEsjhazABr7HVDjSgsu/lVzgLTEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7138
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Arun=
 R
> Murthy
> Sent: Thursday, September 12, 2024 10:36 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V, NagaVenkata
> <nagavenkata.srikanth.v@intel.com>
> Subject: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx for
> timeout
>=20
> As per DP spec the timeout for LANE_CHANNEL_EQ_DONE is 400ms. But this

Adding where in DP spec example dp2.1 section x.x is a good idea

> timeout value is exclusively for the Aux RD Interval and excludes the tim=
e
> consumed for the AUX Tx (i.e reading/writing FFE presets). Add another
> 50ms for these AUX Tx to the 400ms timeout.

Is this something we came up with by trial and error or is this also a part=
 of spec

Regards,
Suraj Kandpal
>=20
> Signed-off-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index ca179bed46ad..b6573934c6dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1414,7 +1414,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> *intel_dp,
>  	}
>=20
>  	/* Time budget for the LANEx_EQ_DONE Sequence */
> -	deadline =3D jiffies + msecs_to_jiffies_timeout(400);
> +	deadline =3D jiffies + msecs_to_jiffies_timeout(450);
>=20
>  	for (try =3D 0; try < max_tries; try++) {
>  		fsleep(delay_us);
> --
> 2.25.1

