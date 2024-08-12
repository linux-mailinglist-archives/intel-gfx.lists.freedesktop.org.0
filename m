Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE8294E61C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 07:18:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB1210E0C1;
	Mon, 12 Aug 2024 05:18:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n8YDE9rl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE6210E0BA;
 Mon, 12 Aug 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723439897; x=1754975897;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jdkNUMXQuE0W+hcx9yY8LKXb4ehkqDl2gGyoawRrB0o=;
 b=n8YDE9rlT2GkkFur8+zIP6BE8VHBY55IKCIY+/AtmgApRALTgP4BXp4/
 ShtXyCZHb7u+ovroUDQAHuXaAooZ28PT8X9CdFkF2entB/agJ1r7HRiif
 Tnac+ZDseaJig9iI7Jo0KkU8T7EenvzLLESD4XNmD8tl9NcTpLFi+CoWy
 caeLIiQZDefJ+NFouMd/FgmbMqwNx5e0Yf8PT3yAwBzaLC5GWoIJ/okec
 U5jXE+xbNBXljXV6x/bqEM/9r8dQTKasLMihzh7tQ0tF8NrUWngOoEHpx
 6fP6y0jSGMkYcdjYKihBW2C8AhCVClSuhQoSfqE6N+dCtBC98wQXbcYWA g==;
X-CSE-ConnectionGUID: CAikyo++Q5yY1KeQqAEe1A==
X-CSE-MsgGUID: /jEb6pmQT12wa3LpwcrFAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="32152299"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="32152299"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2024 22:18:16 -0700
X-CSE-ConnectionGUID: 8QFcklAsS/yGAOJ0RCrVEw==
X-CSE-MsgGUID: onKUU3maTv6tRF/Vnsbucw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="62990656"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Aug 2024 22:18:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 11 Aug 2024 22:18:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 11 Aug 2024 22:18:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 11 Aug 2024 22:18:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NAE96EkbAwYTllGLemHjp6nyVAItmlvjTmas68xwSkOlc70aMLwb3TRDf6daUh4GUHm7vpZzTVM+nKz+J+4p/tIpEY1XpI8a/yfeO6rZ0VC/wInSHb/MWwnihB9TZm2G8cINERoeaKkNBy0V8RqU/Xdiattto+mhBR3ODSNCDKMb9avMkfjbqWUlzH81EjXNs8EadAmgssobYRNXdl/hGN4SmsFoKUjd5WSxPSLdZ9ukY7EmIWgQ7orkkBdU1CXuYCIS/LriQvjR5qPIJgY9rPlisa+WYBNUQr12V9C6f4sEUPSbz0irh499CHLOpLV5yd7jvWb5yMr+JCYVjhKSqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nyj1yibWIPdpJOcbO5nBVUc59dCpdiJonWfmLuMYKNo=;
 b=pc3cbnMAlkUEbEEDL5GUP21V1232uSJI4kC8pZ8IxuI6VeIzLYDQAjyZHrgI3VW1eZZLXM3N81UtokV+pnWVGda0rCPVaO+aSHkEZSADStSbi/9orksoRj75168lQvmq6Afd6FH4JXCJ8dFiarHl0e/rcRwuZ76zcF78yOXUj0/MIf02BHcwSKdYZ7GAbJNGx/THEvVEbrOMLYkfxnJ7hVZaj+P6NwGc9m7hi8VaI25X841C2j8RrYIevz4ycFYn2VTbvU4tRuMc6RuzI78yNbs6Ta2rP3pexHKhq/7Wtj0X0wUNNzgiXB3d9SN7Im+Gh+6assavW+iJ1Yxduw2rXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Mon, 12 Aug
 2024 05:18:12 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.7828.029; Mon, 12 Aug 2024
 05:18:12 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>
Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Topic: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Index: AQHa3cpVPDG+LVKZwkupgjZqgtGuf7IGGrkAgACnDoCAHG9FgA==
Date: Mon, 12 Aug 2024 05:18:12 +0000
Message-ID: <IA1PR11MB6467F47AB9593E30C9BBCEF5E3852@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240724130607.944085-1-nemesa.garg@intel.com>
 <SN7PR11MB6750C83CBCE7C661FD887D71E3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <SN7PR11MB6750F8EAC34D5E3F8B124F83E3AB2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750F8EAC34D5E3F8B124F83E3AB2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH0PR11MB5782:EE_
x-ms-office365-filtering-correlation-id: cf8cb4e8-9a04-445f-c7ac-08dcba8e2997
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?RBcLLTvs/FRXhEONBcVTE7V+E6sUh03qM/868S3mHKhYa+lyPBF+BEHkMmbc?=
 =?us-ascii?Q?MQgfFZAfGTU9QRSSVKxs9cuTCz9XuO57R1/Ka5fVufwdhaAykZVVZVB50pWs?=
 =?us-ascii?Q?GiqzOkwqKItt8gdAVogmxGPjVNd81I9trVYfjl6ayDvMURLzj/EOgSDqMwFv?=
 =?us-ascii?Q?uC8k5ZgJopfu5/yhlR5lSoUCIswQ06IytBw0L7Jm+j7qwAPBaEW4gE6fI/LQ?=
 =?us-ascii?Q?bFqkjKFdpMKH2eLhdk03vz8kIEwu7I25cmTZv1Di/9BCwkUMEqxizrjmWHB0?=
 =?us-ascii?Q?QPwBeZ1dalLoSjJNz+bIMHPb1i1NF1nyC8Yr2daQZR0Rzrc6KEvzNJnynrXJ?=
 =?us-ascii?Q?++pMv5dM3yoIiPFPdqmX3MyqInRh/XnCgHwlqHYNH/cUs8Cu0omGZHhqJbNV?=
 =?us-ascii?Q?tg4JY1EyaDB2sfDKWqB5MFr4Wibsk7G0a007YYkAO3h8bAt5ku3aqiXwZgmV?=
 =?us-ascii?Q?34oORtjFEIxHVYgf3Hlx+qncRlkNCQ9HhgQUYr1EMNf5+lMEPPqKXd06gI6Y?=
 =?us-ascii?Q?xZn73+ssXjbOxl/Ejfv+GJaMVOBFC0z8G3ClG48uitvdDRbyj6NHg7xBUNPa?=
 =?us-ascii?Q?y0g0HrO43vG32Nc5LMRa8455o/atGZEwHxfN/xttHxDtvNWEsyrqWVXT7sZm?=
 =?us-ascii?Q?Af3ksiT9a4QsmLplhWx3L+ioUNke11a7uJHjZFRLGqvQP9t6CxH6gXjQFV4h?=
 =?us-ascii?Q?7gS4G5lATMDkbjCEBaHTMHxSBRi2OmiyrTRH8uA1kz2oQ1frHGdx2wFo99rj?=
 =?us-ascii?Q?kxTAvvEgMOKg9Y65CPYQzquaNfWOb5P0DB8iUehSwL/j3Eg8I62jxpwsOnOf?=
 =?us-ascii?Q?r/kr5Db96QnEsGi2xK4XNNiwHRO86dFwQ2BBNORQZnsAahfNKou2dCbrRIOF?=
 =?us-ascii?Q?QNFsfch7+Xzf0+tL5Oh2ekVEgJu73gYEXLwqZp9OWa0WNuZd65//uIraTX3U?=
 =?us-ascii?Q?XqK0B7jTrUWjfYoidBwWKLxESZ0fgjpn1Qy2oVoB7w+qnM+70cjUkSx10Soy?=
 =?us-ascii?Q?MWL0fKpxtPMyxz68i/ZJdpi9wB6ViC12TBPgIB3QiBSgS1uVNuV8pIJi6yTo?=
 =?us-ascii?Q?A7lYk8ElQvS9BeGQ7pMfL/5+Kv5v2tcZpOU2vlQTk4Cmu3BnRAoQcAMgE2bf?=
 =?us-ascii?Q?9Fu99q870LU6Vdg33ymf2gutTxktmnwIW8Ltm9Dq4tECm2LPOkSGSxnxI5YT?=
 =?us-ascii?Q?9paOCsISoYDCphxj4hoLU6ni5FelUGjhP9tNGrN5c3SOm6ZUgXKyD5bKRCYW?=
 =?us-ascii?Q?DUN5qt/fihurcL9ulV8+SDQXf5pI/qHGIYswp5xOayRsjpf73xbcqakyHYkd?=
 =?us-ascii?Q?DnNz8zBAbBCJ847yMqm7vdxCjP+Ul9qm9EU598RKE34vXdK6twxugJBYhG2X?=
 =?us-ascii?Q?Bu0d+ivng3/csycobfnQ9A9Bz8V4VsF2MV2/ENJR0uD59HZTcA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IET8iVOvGhoMYz+1We/G0IKihoSvve+VLnGJph6HnAgw5Fow9WaWwS6y+rCP?=
 =?us-ascii?Q?8HIwdB8Z6y/gfTB0QueiWWtEQ9T0pBd5eCEcX9qLqiLk8G0zWwl3voPvQkcV?=
 =?us-ascii?Q?DfpkDDdcT3+fLsNALnDvdnkZnVfhYLQsk7YB8nG7ihxy332W/orkGLDUcw46?=
 =?us-ascii?Q?0XrRhAGXcYFJ+T7u2LFQgthqam9JEAqF+aJY84aeRpaCRw9NY2lN8c0yFiRq?=
 =?us-ascii?Q?xkTAGLebrVA+F85AHDpGa/R2tUE+VyJBSnjZhHj8IGpX7h3Be1E5k8NlRk4+?=
 =?us-ascii?Q?Z3Ixd0Kji3vi1xbNavHn2X0DI8Pp/VPWmLlBz7mIkRnz0FD+DRUXS8WbV6KS?=
 =?us-ascii?Q?PNdQ+HD2JoCFrO2hk6GXrodKHfk+2nMiVd1uJfADyF2XhZE8zOo2kNJD0bRM?=
 =?us-ascii?Q?oNaJiTxYVhOjexDXfBu2i2GBfcwgibw1wRoBhYLW4KanNUrWD5x17VRpcN+c?=
 =?us-ascii?Q?qkhcDNzTMhQnFZuJQAcSV5amTLoaNPgxItPcuy/Bdvd1WKOt8bPdsYTKpOdb?=
 =?us-ascii?Q?i2pbS6VEIGgz7mATFS7KaZNjVqedi1XbYgjD5JV3ZDkLgmVXxzt/WH5bMqfS?=
 =?us-ascii?Q?MOX0N2/rG9WIA2RSsB+ySrQ74am7L8vPA9UlAMk1rVeCdW6HuSnFrBNHaoIu?=
 =?us-ascii?Q?ENKPoDFiWXbkmWZl6moN5+MzOQeIEelUGnJuSKUmRTze1BWnNsrJwxkOiyLm?=
 =?us-ascii?Q?ieXq5F06FRN58CtTO2PPMC2weGreNglMiSayQea8LB3MutgYBo+RT9gV9fjW?=
 =?us-ascii?Q?I5+2r6WrtyMP/iyg1Dcfsnib9TGi7/bNX5O9YNxU7+l1OLu9+AaDfJndr768?=
 =?us-ascii?Q?dS40aZgCgSOmIoX4P3/6lJVortFFN6ScDGoKCL5k4KkUEWPW/ubRs+tEJAUq?=
 =?us-ascii?Q?KcAF+aRcf6LShmJN1H2BGUZgUSt0Br3dM0rG7tiFCqBwThJOyPerUlFzhrJB?=
 =?us-ascii?Q?Lf3I8QUmxutNK/mi6K8yi022iQO0YmBv2XENFTph7Zvgyq1Jn8wc1h3i4jPG?=
 =?us-ascii?Q?sh0y3hhxDbwuuOXaK09SpAQdXGoUKhEptq4YI+6qVv3vGb8ViUBv15GBWHuI?=
 =?us-ascii?Q?cIMBh9Mr5VnjI7zFDY4MqKCPBPN57wbfR3RVWYO62vqU91up5L83qN6VlinS?=
 =?us-ascii?Q?h+UdzPj1lPI00AYSJwiPlwqAyfkCQV/tIlOZB2YHTnf+cr9Q3MNryWd47CYq?=
 =?us-ascii?Q?JCB6N646NmPDyw7UdjKTZvXqHObu433Ncj8ZNILmSioDPRohTHYChmyCKM6g?=
 =?us-ascii?Q?5Ehmcphh+gd+CvCfuz3EbNVintftlcaGQwF8ZMxxpyclWgnTxi7DyyX2sjxg?=
 =?us-ascii?Q?eOAfMPJqlpaQP1SLWho9n9/O+wM4iqy7KSEjGetGMe797CP2RKwsVC6FN7x4?=
 =?us-ascii?Q?b1xXsXNQc+ol+Pa4vU20DkdqUkvLjoOP3LQqPrbjHbZMryHbtvgl3v5/K+0b?=
 =?us-ascii?Q?/SMpCMBRN/zfRw8MWErYigVkgnyhlCzXijgc+nZhp4c+ykDQZMYcVGWc0bJe?=
 =?us-ascii?Q?U0iC6MiOTDafPqEhKmpa75HzVMA9r41sOFb8Q6SHjlq+I1BUPS3wdfG2UD3F?=
 =?us-ascii?Q?G6yaZy5d81TqMpc/7DIyC9DBmX/8/xa9aA8Utrw8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf8cb4e8-9a04-445f-c7ac-08dcba8e2997
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2024 05:18:12.5587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pXiCEccDYJNpRXCwWOcIWr+ffvBQlYN6rLjzedYrPY4WgJL7WVXw1V5Wn+HB8HHfKRJBcdLMPs/jJHA/StAhwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5782
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, July 25, 2024 8:30 AM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-xe@lists.freedesktop.org;
> intel-gfx@lists.freedesktop.org
> Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Garg, Nemesa <nemesa.garg@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for pla=
nar
> yuv
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj
> > Sent: Wednesday, July 24, 2024 10:32 PM
> > To: Nemesa Garg <nemesa.garg@intel.com>;
> > intel-xe@lists.freedesktop.org
> > Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Garg, Nemesa <Nemesa.Garg@intel.com>
> > Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for
> > planar yuv
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > > Nemesa Garg
> > > Sent: Wednesday, July 24, 2024 6:36 PM
> > > To: intel-xe@lists.freedesktop.org
> > > Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>; Shankar,
> > > Uma <uma.shankar@intel.com>; Garg, Nemesa <nemesa.garg@intel.com>
> > > Subject: [PATCH] drm/i915/display: Workaround for odd panning for
> > > planar yuv
> > >
> > > Underrun/corruption issue is seen for NV12 format for odd panning on
> > > LNL due to hardware bug.
> > > Disable the format.
> >
> > When describing the commit for a WA no need to mention what the issue
> > is that is described In the WA number only describe what the patch is d=
oing.
> >
> > >
> > > HSD: 16024459452
> >
> > Better to write this as
> > WA: 16024459452

> > > Sure I'll do.
> > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index e979786aa5cf..f927e6a0b28b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -1029,6 +1029,14 @@ int intel_plane_check_src_coordinates(struct
> > > intel_plane_state *plane_state)
> > >  		 * This allows NV12 and P0xx formats to have odd size
> > and/or odd
> > >  		 * source coordinates on DISPLAY_VER(i915) >=3D 20
> > >  		 */
> > > +
> > > +		/*
> > > +		 * Wa_16023981245 for display version 20.
> > > +		 * Disable odd pan for NV12 format.
> > > +		 */
> > > +		if (DISPLAY_VER(i915) =3D=3D 20 && fb->format->format =3D=3D
> > > DRM_FORMAT_NV12)
> > > +			return 0;
> >
> > Also is this the correct implementation of this WA it says to disallow
> > odd xpan and disable even xsize I don't See xsize implementation anywhe=
re.
> > Next is if we disable odd xpan shouldn't we then program it to allow
> > even xpan this returns without doing anything
> >
I'll add the implementation of even xsize.
As the odd pan is getting disable we wil return the einval (as it is not su=
pported).
Then it depends upon user whether to set the position of videoplayback such=
 that it takes even xpan or not.

Regards,
Nemesa
> > Regards,
> > Suraj Kandpal
> > > +
> > >  		hsub =3D 1;
> > >  		vsub =3D 1;
> > >  	} else {
> > > --
> > > 2.25.1

