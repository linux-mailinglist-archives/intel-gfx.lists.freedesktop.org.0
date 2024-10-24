Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5FC9ADA16
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 04:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F92C10E1A4;
	Thu, 24 Oct 2024 02:45:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XQf+XOl+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3074210E1A4;
 Thu, 24 Oct 2024 02:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729737931; x=1761273931;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l5PE6nyKJNsS9DiFLm2Mb3jVabxSj7EcW+FNK9gAVn4=;
 b=XQf+XOl+1UN/Qpsim1sNCzkDvf50D9o72OUosqjqNSV1Y1JFHw8DzB5P
 XSvuqNjIOZTvPvkhuBmgbfwPSWbTSHYVvQ8JXK4kuH1DM4hVfYCzHGXTN
 r/PhvMMj5hWFXrdCemTgE/kVUtEXwVMevnGVcAhEfaNUjd13aDMVFU35s
 4FY0FvRUGRD7IVm3A+OIufSP2Y3V6L/olzRyqSbSmwR2JeKDxb98TVtcZ
 M9xUU7qwnJcMi86sc0GVf827BeKw8IBGpgD1GXh2gViSkca4TDXl9ZCzi
 xxANk4JnBfpzpizA+F7T2CCZeK9+2x0SEUZfvla8sC37yTu2zmcXrFx7s A==;
X-CSE-ConnectionGUID: 9EiflTCbR7epa+VdhQAApw==
X-CSE-MsgGUID: n9qejno8SpeBSTL501Ivew==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="33155591"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="33155591"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 19:45:30 -0700
X-CSE-ConnectionGUID: nf32/y4WQS+cbakFZqhqaA==
X-CSE-MsgGUID: E/pSk3cZQdCkoGP2Gxmnig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="85005944"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 19:45:30 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 19:45:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 19:45:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 19:45:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KgtB0Jszs5hlTRFKKJsTqwOiEnQKx348t0ZTVZSTBDd4+GNhR8v97qoehHxcQvVthXx6ovzMGPOBp0peIkHS/1OKFMSPzEQXZcrTw+rpEEQEXh6oMo38qCssxAS5T7dGDSuIU5eB5OhdtEKIz0Dtkarl09rWyWtEhYn3FYSVkEcX+OwqPN8c0lwASXp6yqfXf9N7FXxay2cyCBAbQw+JsTSmiYTPphqaNtDPq2ZSpzUG8mKDGGF0xb809dNGnlQmWnZhesrXj4cS69u7DvzjjLA7Hkp3/+FNbLmpzKdMmB52rJra2n4CgxtOu50G59wQyZodtAUr8Wl5h1WZYyHcVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PbMDyYIotwwV5D9ED2g/vpHE64wk8+McmJ/B25vRXWY=;
 b=sj7xVHfESZIpReIWeUPsCWhAmudJu0I2X3eLA5KR206XpmCMYAIkSfv2n8+UJPpshlMPEibNqjMAhD8jDYEZWW3ryV2thzJYSAA7S+HRKkCvWZDwdJifIcH8Tmckmu9h/tCltMPEbFUGPAftj2LYQCt519OOeFuOT09HNOszv7LEfgS0phNgOOM9KduKrDXmZhg1og14NYvjcZwaytQdQgUhJMeFR7MRcajnenuiAte5ctM3nlddJOQnclixd9StZu8fixO+m6RJiQNhitEuib+vB+X71a6p8OExw8D7WGJgul4ZVAnITn5RJF4kWtbgxCqaitC3TVSH+sX2sUpZoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7550.namprd11.prod.outlook.com (2603:10b6:510:27d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Thu, 24 Oct
 2024 02:45:20 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8069.027; Thu, 24 Oct 2024
 02:45:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 1/4] drm/i915/xe3lpd: Increase resolution for plane to
 support 6k
Thread-Topic: [PATCH 1/4] drm/i915/xe3lpd: Increase resolution for plane to
 support 6k
Thread-Index: AQHbHslKz8a6Kv11ZE6QXTw5PN5xWLKU6vqAgABU1uA=
Date: Thu, 24 Oct 2024 02:45:20 +0000
Message-ID: <SN7PR11MB6750DD324DB70BF31333BF14E34E2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241015061011.2087826-1-suraj.kandpal@intel.com>
 <20241015061011.2087826-2-suraj.kandpal@intel.com>
 <20241023214111.GJ5725@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241023214111.GJ5725@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7550:EE_
x-ms-office365-filtering-correlation-id: e74babec-9e2c-44b6-92fa-08dcf3d5e6f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?vq6ehhYGou+UDVxmcZuYf7hRTPoCIttdYA8WKgjS0Dg+JgRZZhxQoFdBI3Eo?=
 =?us-ascii?Q?wUBt/oA9U8iJfNy+hO9Ef463ACtL6jgECsB2Wj5CXqOCqEotihzOIugNm7ab?=
 =?us-ascii?Q?F8yXYHXyFfwuxfC2CJEODot1XpP05CSnXHOHAdBeCDt7IV7RwP34jG/1X8H/?=
 =?us-ascii?Q?/K3FXvpJ16a4c2G+BlsXEYEuoDmZ4lr011ocCIiWbIknPpEGh796G2Ir4OnA?=
 =?us-ascii?Q?+ioo1stKBviKnzFFLw9XBHI+Rmt1F55pVDkGFg3Okjx/GI8Y+kT5oG6ZWYwf?=
 =?us-ascii?Q?jKzh/hHt22+Yb8pz2jurTKfog1yJqpa49rd30qA8pIwpbL7yaqd7dJW5MqNP?=
 =?us-ascii?Q?ThiRidLCewsDXZMj85w8zv1ceBkzgWYZrGcgGrV75ka03L4+NrL6O5WNC8l6?=
 =?us-ascii?Q?Qrtu6ex36SpoiVmzw6e/hwnkyYkCgYCbs7Dpt0qPbv5e3xgaeDwGuY71ah30?=
 =?us-ascii?Q?yd6p2WX2PJZwVH6jI6mVelKNfdsCmTWGsSFDlp/yqw+pq8t8+zEXs0TL3s79?=
 =?us-ascii?Q?vJoxMqqiWZRlu13Bme4os9zgMY7QwD+KNcUoyYbwkdJhyGlDnDFRta3jJLOq?=
 =?us-ascii?Q?OeoeCOlvZIVe6OdwFjlcFYrB2HKtxaAAt8dckSKSo96GjkwIi9TTkr4HYQUz?=
 =?us-ascii?Q?O7cF2+JT33zqCY/LxylYNlr3dfBEo7CU/2xKV2aFuefMryCDHwmyBmua0tbM?=
 =?us-ascii?Q?Fj9WscCq0/CSJStsRjtBEjohwDwQb40GB+ptHczphwDdIz7JbVhB2KJOzQg5?=
 =?us-ascii?Q?VtwdM3MOnG374t6q3Fy2F/SJ2srmU77AUkMjylO3NJtotuA+ZZFeaLreJ4KC?=
 =?us-ascii?Q?gVS/CDhZ6YWLnEmwFYv4Vvn1A8YpBZBZCVqQ9dzY+3tgyTc/HSNUMmJqlIK4?=
 =?us-ascii?Q?14WG8Sbma6rvJEvW4zusN3kk/QIo93L1ws6hB7s8sXaXKCFda91MW5XIariV?=
 =?us-ascii?Q?J5V/XPWTmBsC/lR1fFp7MWjfQEAJ2Eyx9Omx4VCAe41aHaBQQSZ4tmDdj+CH?=
 =?us-ascii?Q?hA0UdLJpVe6EISXROrx62ijRR6BZDbv6JiOyzdwNJjmpYZ04cE+J+WvdNEr1?=
 =?us-ascii?Q?YW0dWkOaOezKNNa4jv0pePYfKAmFuXjpdb4tMqacNuOr5rv6ic8kaloQKCCO?=
 =?us-ascii?Q?taxmNWxIRkdzhNITbMmIAu3J03WZ9Xms828Ppa8xpmMu/YYcyok9xsetRpRy?=
 =?us-ascii?Q?n+JBU98JNxg3Hs54kMa/2w+c2xh+FR1/UK51N4EzpCnJzlsaqy9JaloVbzwm?=
 =?us-ascii?Q?fjcnT9GAn1SFOgZBD9QH5WPOn+KIO8I16w3w5mLVjm7K6+Ly/hvtd1mWf/Qj?=
 =?us-ascii?Q?HTrq0u+W9Lt05CCrk2PpflDABphukthC3K81wMjhaMS1h/A4oiZXemYzsVJa?=
 =?us-ascii?Q?nhU2nFk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4UumnaPUnEQ6qK9eUWkMnmCvdzXIN7AycGmPwi3aVjZiM+biZ8Nk5sHepkxs?=
 =?us-ascii?Q?xIVEspw81+q2m5TusmPkD3bwnDcI2OSye911R7WIJEgjDpoYEYiDcjCOklzx?=
 =?us-ascii?Q?blG6bh4lV/oRQJXORL3Sr8hRxx+lEiFTBfzABW0Tf0dlN81a1TT3d6MO9L6L?=
 =?us-ascii?Q?/6CZ14tGNoPZC5MBcF305Nk9C/TOBTwFUr3GP2L9rqU9Fv6e6LVj1hInRaiz?=
 =?us-ascii?Q?DU+wXbtIODptp6fkXmtJF8Sqjti9LLPII/ghLgfHKd8hf8ktS6ckfLDdkNpj?=
 =?us-ascii?Q?5IbxBHpAeqdtgRBcNHm4ZCysIc0A3x1lIIN6QKkTgMs3iaQLTuxjVtRtYLko?=
 =?us-ascii?Q?3PAzYLSo1YW7Qy6VaUhevdBzbQN384dH5IzGDImMD4osxWHtr3g4Z5lvGzEx?=
 =?us-ascii?Q?DyNRQC4B1tQrB8zFEDWHffMClb1XkWrMt4pXt1+JQusFzvA59/shGUs9YmL1?=
 =?us-ascii?Q?4qKnGezy6eIahRKKmuCc/R7HUkPReks/Tb3AONcMlgVzmsBlvSP7DLUPD+is?=
 =?us-ascii?Q?YmBwj3zdAldZx9JunllABAoNb8NHMQGzHgn3zXYUJBIOG/Wo93Uw1NJ/3zTX?=
 =?us-ascii?Q?Ix62iwgvNWumYkimXsLejJFyKQZdfMJfbJh0hl0NhuyFJOgcI4A38EPRn5V4?=
 =?us-ascii?Q?LYKOxwXJrBDaTZaYBLVWH1AR5BZpvIl5LW34pMtyOmF+Y6PW0MEgTEnLDaAA?=
 =?us-ascii?Q?tNaba9n/7LGy22HVPqvi0FAeJfCzVEkZkIc+qyzk0pruB77QEOBnZZeOSFFk?=
 =?us-ascii?Q?nDf7vGivWUYI0yhJxn40N/vqh8wtZBAZdHjfttdnh4QwrB/2q9MtVXVbOPdG?=
 =?us-ascii?Q?Ob2+B1Q+rxh9Hz6KBvmQjkFB0Tdfetiv+kIkXG4Fq5vETCOBuZXKegHrh/Ox?=
 =?us-ascii?Q?rDC+e3/dpXVvKi0INevtPRytEeXCN2nnoopyZ3Qoobv5LjqxD2ERmrDOt2Pu?=
 =?us-ascii?Q?hwA43yAoF4FQ22jkfHgwjNnROwMU6IYqw1KYhsDNHCZoIaOQuACGYV58Se6D?=
 =?us-ascii?Q?z3p+2DAGm5TVw9qcs03I19rXChQyd+E2gI8QX4aXwl9QyBkSTzsFwNVpAWkI?=
 =?us-ascii?Q?Dv8JEUlnqBcGyAZfM47m9nnQ7SMttrmlLd3zONCPF50Yrcm6LGB1sy9lcfNI?=
 =?us-ascii?Q?C2XrEqNi01xgErNAeCYZvr6QCxAuboRh0LaiRyDRdLBw6nlp4Vb8D4fv2AH1?=
 =?us-ascii?Q?XJdrFGKoIy73Q8pRTd3Vg5OpL5B4m8Hp4DAWbtBj0iuVtrST2hyDigwPeSYD?=
 =?us-ascii?Q?qv23GuuOSik/wQevd2KyG/QNEDlSh/+Qhqz9ftZAZFJSQpn4EksHZxaxUNoI?=
 =?us-ascii?Q?19zpsxSrLOChUjM/D/e1PyN2OhGxdnRMLF80kY9vCwbkvU9X/ZznhNfIk+4D?=
 =?us-ascii?Q?kDHCzrspLNd5lsq5lngOvHe4jZABLegKSR9/FKfSLq2Xbzd8fgGsbyeZSOFs?=
 =?us-ascii?Q?ot3Da8hUxUws4K8C3MXhP7UyQBheqv8IGc/Nz3ExxZPB1BI9SIoQB5I4vF3V?=
 =?us-ascii?Q?twUJ0fHaq2e552j6IsChViLVlD3u5zZAyRhdU06fnGEjYmQLXhWqZ0isw63t?=
 =?us-ascii?Q?sWzT0x/weqnOPtieDXo/SE29QuS65pMzIYzvyJPf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e74babec-9e2c-44b6-92fa-08dcf3d5e6f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 02:45:20.7756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dwd/biFRlMiXCPIj4w4TILJj/jUbaexsk645+EJ1fdImOyZfylUo83+BzShAeybjlHRjgSqNQjOLOH5BltCEig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7550
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, October 24, 2024 3:11 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Shan=
kar,
> Uma <uma.shankar@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCH 1/4] drm/i915/xe3lpd: Increase resolution for plane t=
o
> support 6k
>=20
> On Tue, Oct 15, 2024 at 11:40:08AM +0530, Suraj Kandpal wrote:
> > DISPLAY_VER >=3D 30 onwards CRTC can now support 6k resolution.
> > Increase pipe and plane max width and height to reflect this increase
> > in resolution.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c       |  5 ++++-
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 13 ++++++++++++-
> >  2 files changed, 16 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e1f6255e918b..37bac53f996e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -8432,7 +8432,10 @@ intel_mode_valid_max_plane_size(struct
> drm_i915_private *dev_priv,
> >  	 * plane so let's not advertize modes that are
> >  	 * too big for that.
> >  	 */
> > -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> > +	if (DISPLAY_VER(dev_priv) >=3D 30) {
> > +		plane_width_max =3D 6144 * num_joined_pipes;
> > +		plane_height_max =3D 4096;
> > +	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> >  		plane_width_max =3D 5120 * num_joined_pipes;
> >  		plane_height_max =3D 4320;
> >  	} else {
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 9557b08ca2e2..4dec9e693218 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -431,6 +431,13 @@ static int icl_plane_min_width(const struct
> drm_framebuffer *fb,
> >  	}
> >  }
> >
> > +static int xe3_plane_max_width(const struct drm_framebuffer *fb,
> > +			       int color_plane,
> > +			       unsigned int rotation)
> > +{
> > +	return 6144;
>=20
> The Chroma upsampler is still limited to 4k, just as on past platforms.
> It looks like you fix this in a later patch, but we might as well add the=
 check in
> this patch so that we have the right values right from the start.
>=20

Sure will add that change in the first patch itself

Regards,
Suraj Kandpal

>=20
> Matt
>=20
>=20
> > +}
> > +
> >  static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
> >  				   int color_plane,
> >  				   unsigned int rotation)
> > @@ -2573,7 +2580,11 @@ skl_universal_plane_create(struct
> > drm_i915_private *dev_priv,
> >
> >  	intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
> >
> > -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> > +	if (DISPLAY_VER(dev_priv) >=3D 30) {
> > +		plane->max_width =3D xe3_plane_max_width;
> > +		plane->max_height =3D icl_plane_max_height;
> > +		plane->min_cdclk =3D icl_plane_min_cdclk;
> > +	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> >  		plane->min_width =3D icl_plane_min_width;
> >  		if (icl_is_hdr_plane(dev_priv, plane_id))
> >  			plane->max_width =3D icl_hdr_plane_max_width;
> > --
> > 2.47.0
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
