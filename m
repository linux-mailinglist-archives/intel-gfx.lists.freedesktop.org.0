Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A724930B60
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Jul 2024 21:41:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F3C410E073;
	Sun, 14 Jul 2024 19:41:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eu3yeesx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19D7E10E0F5;
 Sun, 14 Jul 2024 19:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720986093; x=1752522093;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y3WYOvrUkXo6nCiQSzTeJPYfLeZ9oX8OlU9TU680z3g=;
 b=eu3yeesxV1JR4MvezSoDkbloBVzTqciM31ExdAD+25YTM0Tlu2GTcbLU
 pX01i6YWf+2oj7PfLQTEKMGKgGpjwW9Nw7TTjbgeOIMSCpX1Ynr+Nzfo3
 HpyvJ0TKUZKXsquQyI4qUZ/FN7wyfmH87Eji6zLJwuIXdN/cKwlfiPj7S
 w7qrY4AK4WM5a+Pqk0OQDZrN6shK9o6G5he4yP2ulR6y+INVVu9Hp+Fs4
 4WcKtjvBZm68orGLFDUijGTXkHvpaF2bmu+IGbhdQpmtU1EAjkghEJ8o6
 8cLtnChrIYlAJkEttedpDwBLJN+lhcGe8h1qbz49wNVv2VEDYOAvNuv7G A==;
X-CSE-ConnectionGUID: NAm4YP2xRnaSo76KhBJ/LA==
X-CSE-MsgGUID: txvHyUMpS7C4WP36SGmCOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11133"; a="18313483"
X-IronPort-AV: E=Sophos;i="6.09,208,1716274800"; d="scan'208";a="18313483"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2024 12:41:33 -0700
X-CSE-ConnectionGUID: AjYzVS1+RZWhIU5EPB2Nmg==
X-CSE-MsgGUID: dx0hFYNTQmeIj/4Dld1HvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,208,1716274800"; d="scan'208";a="49366007"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jul 2024 12:41:32 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 14 Jul 2024 12:41:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 14 Jul 2024 12:41:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 14 Jul 2024 12:41:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 14 Jul 2024 12:41:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FRMmfYeOex7554zLSaU4noNQVpxuFFB0Qw7xkb4dDY9c49OglIW/Nxd6XSc8RKJAopOxwokNzhXZ4xq4w//Nw/4qe5oKs+5o863Uv8si69H1sT4Kq1FVZCyyaS+FUs6kSsBNE8HMYxGHntHjE25uCraGmZ7MMeAzMQUkj+IXM7jNbqlqgaC+cXWlNREe7iLoo/AE5my4PNG6Oz8mau4tzxq1GjhBd54ZzCFehTOvmbfo/DNRMQHnqNuYiqyD2jERrKlClcEeDviSdZ/sKatFAy0idDsJbk8fICryLtblfp3GBOs88vxBO1LGm+M99PZOXM4+F1/IgmkdzHlrvfFH8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sVWCf69CS0F6F7eDtlp3A22HcIdVyf252PzFzygCZ04=;
 b=hKo3yijSolq5Blin6arv7/YJP29co8yKaJIjGZFOfup9rtAnnXQ3IDZtxyfEu1kSegQaB3oFoU3YRUdemm1FEAH0pkGxBz1TfxRddhJXzC9YcidJ8pFMCi4KinAXZfB/vSRr5e9qK46rnz906kp/aMgDOTn5Hb+lckF1l6Pbpp+Kca4ODXIQ5rNd5Q070hnttomOQBGT0cyxFoUG7pFAvxL6ZBsbAF57Unn5OY6Oojyu+els5LWKpTzqObyk4yjgTPNbj1H86s11rLab/2U6ttCDyVsW9pfA1IIw0B2ymzvpyuuoJrLgCyPcNTQr/a7TpMSwepanx8OD+ffV+w4cIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CY8PR11MB6988.namprd11.prod.outlook.com (2603:10b6:930:54::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7762.23; Sun, 14 Jul 2024 19:41:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Sun, 14 Jul 2024
 19:41:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Ceraolo
 Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Belgaumkar, Vinay"
 <vinay.belgaumkar@intel.com>
Subject: RE: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Topic: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Index: AQHa00/8oWCNr7uw3kau2bhh5YD5Q7HxuQ0AgATq1lA=
Date: Sun, 14 Jul 2024 19:41:23 +0000
Message-ID: <DM4PR11MB63605509975D42ECCA4D32B4F4A02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240711051339.3289552-1-uma.shankar@intel.com>
 <phpidsyio6aub43cbfdcll44k7rrh73chqsuktraenzx6575af@645b423aaz6q>
In-Reply-To: <phpidsyio6aub43cbfdcll44k7rrh73chqsuktraenzx6575af@645b423aaz6q>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CY8PR11MB6988:EE_
x-ms-office365-filtering-correlation-id: e9b45fad-1085-46a1-dc2b-08dca43cf15b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?P6/17aTCFgKnS2NALiPtgaOHDMXvcIPOIhC6x/sE/+ETp8IUwNLsbJ7WQGIm?=
 =?us-ascii?Q?J8bfndOk68CFIUD7g2I8QdJK2CaJ0JbB195DvMJX8M4jNqVUWZRpNF1ck8q1?=
 =?us-ascii?Q?FQlZ1osvW9+j29+bYK9XlpHjJ8abOPKmFbsf1Y2o2zyXCu4lbrWbScpP/ZdY?=
 =?us-ascii?Q?i3WWh7LjZ3bgW4pvUTF2yBp65Xz3XnLdUXQLrDhFS3ivqZkKi7uSbOkESaCk?=
 =?us-ascii?Q?mviCeWeUKYFn7kE/dLCaeAGwUU2wb/eR9RKrQeTRUqNVfLew9LIUB3uG1R9k?=
 =?us-ascii?Q?oz06tLAeiDK2ehKGOyIhm0mhSyBp87wRz1qoRW0BQMMCtalcZoWWlEWeEqI1?=
 =?us-ascii?Q?36cREaNa8QQkBMqb8aD1n8ixHY9n7/cv7faDwup+X7xOxpRgcziR7kNqT2rA?=
 =?us-ascii?Q?hLXi17u+0FKuTBrqalxX2jofnUJPioQ1kSL4ZgzKFtBPcv9k5c3hI4y0Jn9z?=
 =?us-ascii?Q?R/n48g++rsS0RrqeIhrqkrrd3z8s71K3lUDMl1PF57lqaakJf2LfjAPkL9W+?=
 =?us-ascii?Q?LJx5AQG3E9qTJNNsdwklfwIV/mMibLD/G99o1SWyCCsHWG21EBDl/W/6tnL1?=
 =?us-ascii?Q?d8/yQMx7En+C8tZnzWiTeVh+DPugs08c/pJQT5pJ2lbgNNGmzvTepcXscQuS?=
 =?us-ascii?Q?+WyZDnhdddkH9Yrrq5BIQgxwGoPa2w8X9cxPgM07gbq7KQxd5vrwW4Cx4G67?=
 =?us-ascii?Q?cnj0eGHTnk+nbwsnSE/dr50Qzw2K/E6MV+ZtmFtmnCoG+hxth2DRoSMEVAu+?=
 =?us-ascii?Q?hJgCrN8YlwBcr46O9W6eLIe8tuB/A2XYZ7wlnS01h8P+lNyPw+zJT21ErYxa?=
 =?us-ascii?Q?jQUl+nY68NyYzbl0R1Uuhg/+nqNfsnE5qqSsezZnsMpGKdyxtGpj7LsjGJdV?=
 =?us-ascii?Q?3LQ78PwXExlv359bNK1mtRG+n0EWfD+WCRBnK31y8Y4ABrmhI7jPNpHuJtCj?=
 =?us-ascii?Q?YlBJbffgYYaMSGPYJCixbVGzwhbknuToEjWMY+pYmDy64CrnIPtb3j/KqeIA?=
 =?us-ascii?Q?LXXNsxp+w4lu5BqvcyB+IY1JilK1Kb4jrnDRW3EdLwBkgNirreGEtmF248t3?=
 =?us-ascii?Q?zWxeAD1eJdh5JsPueKgnAKC6l0Cztt3Pmlz1ub34aGjl22ElezB/N6YhYMZj?=
 =?us-ascii?Q?glVm1EE/DXK0AHzE7vmore5hKpKqrHatFxVo+biyTuHa+sqs2R+IjSGt2oCU?=
 =?us-ascii?Q?GJmEhI62HNAkJ0+cuL4T/MUL4NOybdysrSdZS5O90Wn4MD4z0F3IUrvdKM7k?=
 =?us-ascii?Q?KKcLR+iftJ3KLhi1cnNqS2NW68HP1Wuoh//YT63R91c95b3S2r94Xo5wQzax?=
 =?us-ascii?Q?P6Dk7DnuWGROXCMNb9x0BdxWDvuolQsMQWhgp/Za/HsvVlOEEga440QHn2kc?=
 =?us-ascii?Q?ll4lLKWuaZknAJagsznstF+j92PchWdbKTonGr9OSXJBngNB4g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WtVlCg0jU0nE8Qph8CWf7njqOOSvunJRut2MBuVQfZ9zZ1kh27fUwclqHaIJ?=
 =?us-ascii?Q?ocFa3hMTHb+P3U1o1GSCnW5BffCN9ksitT2NvduWa/URpM6PNG5qAl3rxQFb?=
 =?us-ascii?Q?uZLaMkA/1RfvQYdkR6rZbOrxUWaAN8yRLl4oAKkED83qeQMHCov1hiziM87s?=
 =?us-ascii?Q?2WxCoWLjk1U6AQLQDHwjuSpnqcEr9BF2SRCFQ+F+u3R4fSv4XgCmSLzWyXS6?=
 =?us-ascii?Q?McHUpHbKUdX/4i9acYbZ3vSnHbwPVVFNYp6c9OG/FWSUzB0FAJLiq6YzI8Pm?=
 =?us-ascii?Q?jFnCqzf2sXtV0XTsXpvJqNp3sCRx6ya5xiN4GEbXHz6pqbg0H0qoO9uQaQ5Q?=
 =?us-ascii?Q?Au7HdoM847NsHi2aVnciPqh9TLo9pu1XewLqq0ZLn9bCVx8FGpMPs8Xto6hw?=
 =?us-ascii?Q?GEoS2dXypA20LACy3T2uOY3Zn6McUEzeopw8bl9KRYLJ0eDm6cUSsviH4bwX?=
 =?us-ascii?Q?tr5sa5LLOA60qRp+HSKx7LgTWanZk3cT6CKWjZ2FrenMJL5Ep1anyddvWS2R?=
 =?us-ascii?Q?L6m8H4Ru/dM5/q5FQZhrYioyG1TiwfED5t1nH/UK00xbxJccr6yAodU3hkj5?=
 =?us-ascii?Q?Vn6Xq4WYsqyFyb0Z3iH7HYWI22P4XX9bKTVFoue3I42cKUecJasODHTSrLYk?=
 =?us-ascii?Q?MhqwPL2MPlPnJf4BqRt3paaLcPgbNX9xRBdgbOaq/p1DC7piPsTn6qiOISeb?=
 =?us-ascii?Q?/mQXe4phjc/X2dKuPdJp+cBzne3RfOhvTpJlvG1WhS+3kf1U6VbCwpR1+FCX?=
 =?us-ascii?Q?ENZPfMJauIDa7SZkTpmlsC90AxsGtzWjjMJpEBrfRnY1LHp60iGPrSfxxY87?=
 =?us-ascii?Q?hP4Mh/CPt/OjJfbhBlNezaS6Drp+meqfoPap5iu8i824EustzLc25nqzFcdX?=
 =?us-ascii?Q?ffcCZLdRdUqguH1IbQ/vVgheyIr+fhB5t5pGbYY4mb2ByiGc4hzlUG/CFH5/?=
 =?us-ascii?Q?FZ7fe2LRHXi6hh2pElUht5Js0aQYtqOBD66ulkdRZWRe219SQIkZhgrgZw5h?=
 =?us-ascii?Q?esmqBXCiSfd+WSWdNxZFs+DB4AbiYiDk43bY9yAMcSzYhpKEm6eaqBNKfcXo?=
 =?us-ascii?Q?L/XyoHL0XI72RefHYvVL+LGZe+okOhPjpJFiBGVHy5CL6R1sM0Ea6X75CWZs?=
 =?us-ascii?Q?K2ypmGOcurMqalAVTw2RI36YlShL/q8y6kWJRiUVXz6OxCuvFh/N7fa6pK+d?=
 =?us-ascii?Q?paAkjoyj+BjC284r86NnoAbCGtqfksqx2s242Ht1/x3KwcdsS1ZBFCH+aIR0?=
 =?us-ascii?Q?zLAoLEz7Q+fr8xzUPLP9uLLUcdzdyb+68WkbBtLE4mmxkxaeX58B4E4qZuzq?=
 =?us-ascii?Q?DvS3AWrozqbGVX2ie0S9nveprEtVKXlFquieToNvfw6e3R3PhAf6DK+sXbZO?=
 =?us-ascii?Q?m4Bxl3ZL0jL+Vipm7Uv3D0nyy+kdsrxbu+58scHhRwhICytjS8RnwOe50pas?=
 =?us-ascii?Q?ZDqvIaQIex6Wiv+WIVwf17mHKA8INAznWe+zi+IZExCJOKJX1sXAVFX8oQWa?=
 =?us-ascii?Q?+YwcgApf5rGO3sGrGo+RUjVLDgZ2hLjohUiRIsz0BaY4MgO77egg8yPWiqAl?=
 =?us-ascii?Q?GF5uoR7Fx6HQ1hK/aX7UsAdjoRSWeH5pd/iRtybs?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9b45fad-1085-46a1-dc2b-08dca43cf15b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2024 19:41:23.3532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yo05V1i45upfe6giUPDuwLuqa6NF1vPLtuhidtruwv7TKEIaNZka2qJLYtGXA+zuOPlnthsuOxycHY0O2oDVhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6988
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
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Thursday, July 11, 2024 10:02 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> ville.syrjala@linux.intel.com; Ceraolo Spurio, Daniele
> <daniele.ceraolospurio@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>
> Subject: Re: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
>=20
> On Thu, Jul 11, 2024 at 10:43:39AM GMT, Uma Shankar wrote:
> >As per recommendation in the workarounds:
> >WA_14021987551, Wa_16023588340:
> >
> >There is an issue with accessing Stolen memory pages due a hardware
> >limitation. Limit the usage of stolen memory for fbdev for LNL+. Don't
> >use BIOS FB from stolen on LNL+ and assign the same from system memory.
> >
> >Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> >---
> > drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 10 +++++++++-
> > drivers/gpu/drm/xe/display/xe_plane_initial.c | 10 ++++++++++
> > 2 files changed, 19 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >index 816ad13821a8..8fda8745ce0a 100644
> >--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >@@ -37,7 +37,14 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct
> drm_fb_helper *helper,
> > 	size =3D PAGE_ALIGN(size);
> > 	obj =3D ERR_PTR(-ENODEV);
> >
> >-	if (!IS_DGFX(xe)) {
> >+	/*
> >+	 * WA_14021987551, Wa_16023588340:
>=20
> not the proper way to handle WAs in xe. Please use XE_WA()

Sure Lucas, will update the patch.

>=20
> >+	 * There is an issue with accessing Stolen memory pages
> >+	 * due a hardware limitation. Limit the usage of stolen
> >+	 * memory for fbdev for LNL+. Don't use BIOS FB from
> >+	 * stolen on LNL+ and assign the same from system memory
>=20
> I wonder if we can't simply set to 0 the available stolen space after the=
 places
> that really need it already had their allocation done.

We will need it for FBC, so making it all 0 will not be good.

> >+	 */
> >+	if (!IS_DGFX(xe) && (DISPLAY_VER(xe) < 20)) {
>=20
> extra parenthesis not needed and I think the rule to be added in xe_wa_oo=
b.rules
> would be about GRAPHICS_VERSION(2004) or
> PLATFORM(LUNARLAKE) to avoid this propagating to future platforms.
>=20

Yeah got it, will change to GRPAHICS_VERSION and restrict it to LNL.

> > 		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> > 					   NULL, size,
> > 					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT | @@ -48,6 +55,7 @@
> >struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *hel=
per,
> > 		else
> > 			drm_info(&xe->drm, "Allocated fbdev into stolen failed:
> %li\n", PTR_ERR(obj));
> > 	}
> >+
> > 	if (IS_ERR(obj)) {
> > 		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> NULL, size,
> > 					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT | diff --git
> >a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >index 5eccd6abb3ef..80dd6b64c921 100644
> >--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >@@ -104,6 +104,16 @@ initial_plane_bo(struct xe_device *xe,
> > 		phys_base =3D base;
> > 		flags |=3D XE_BO_FLAG_STOLEN;
> >
> >+		/*
> >+		 * WA_14021987551, Wa_16023588340:
> >+		 * There is an issue with accessing Stolen memory pages
> >+		 * due a hardware limitation. Limit the usage of stolen
> >+		 * memory for fbdev for LNL+. Don't use BIOS FB from
> >+		 * stolen on LNL+ and assign the same from system memory
> >+		 */
> >+		if (DISPLAY_VER(xe) >=3D 20)
> >+			return NULL;
>=20
> same as above
>=20
> Lucas De Marchi
>=20
> >+
> > 		/*
> > 		 * If the FB is too big, just don't use it since fbdev is not very
> > 		 * important and we should probably use that space with FBC or
> other
> >--
> >2.42.0
> >
