Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 453E59A0021
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 06:25:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E254110E658;
	Wed, 16 Oct 2024 04:25:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f1pe2ksX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A395210E658
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 04:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729052709; x=1760588709;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Vm9f8OomVYgQMXpNWtPpFklHsQpkrmaWBHq4u04hu1o=;
 b=f1pe2ksXjy2iNTFqhT4CyrHUZiEL2tJp6Ld9oWrFr8XzVIPaPUkQz++i
 or5DH6DsYQBB7JTfE8/+f+nULvqlFaoBRVI8AjjxWd7rSjurvAhpY91Z7
 Fc82CjEFKQq/QwyqwLAXFDGcnnI2/ArtEgpPhFJ8x4/ANtsYlFoqVdfYh
 drE/CSL/SJ2EDO77h52O/GsmCKQhRqWZ/trXv6XODyyZ2zB7QCyn8UBtw
 O3MEZwicRta0rXYJw88hG+obs/dltvuWsrguKqHHmIQw08EVcrskQr/8A
 u01TcEwfJRozj/RY2KEzejKu+KnecmrY64sFnlWhO/AkDPTYR6eJPgPZO w==;
X-CSE-ConnectionGUID: 8lNescs5Rgy/e1pnt8VpQw==
X-CSE-MsgGUID: zHIqLKXtRC6Il0KmidaGYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28626931"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28626931"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 21:25:09 -0700
X-CSE-ConnectionGUID: DT9XxAr+Q2mB/qwaKRGyMQ==
X-CSE-MsgGUID: qLU/5m0QQnaDx0J3sH6RXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,207,1725346800"; d="scan'208";a="78940165"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 21:25:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 21:25:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 21:25:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 21:25:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 21:25:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hQ6fz4ThkvZ3k730jA9o5iKpHQio9fi+w50qitBIWhAXNZjBybEQUn2qVTzi/ZPyKl40VOngrUR7lt5e/L+Bd5WTBirpNOPg8rK5rKN6HnCQlKCyK9025gvvsrjtmCGwvrnwinqbnKNBP//OPnxDR/pDaJ185wWhIswzlU+YxQx5wxCbi2Fy4ZhY971cLBRonJNL331g+F0otk/iFVAlU0esjuW+c0uGozVUSccvJgnZ4jT2X4WGFqB15ih6rAICa0pSX9qcYhGQgBpU7x2NJ3z+4VYfP8tvuahyrZp/J0SNF59cEBfc4L3BGc6REXFhmSOpK2YPZYJ9XGzWH+UToA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7mN36ZB3QzzRmBnQPDATQyCl/cf8RteoTPvkSbdpGWo=;
 b=FbdrTj0fNdIjDTqsRc+nwSgyTRhGjRVqOeyu7ha4qoJut8shjVLRF4pW3LmGvoZv2TV/HZN6cCmfAlH5UcjUClWYuMS+kCwatzwzI6aO+i2oT+/dA2DTKn8trQeD/IiVl0uQzvI+d64lTruBHZ+KmMqP+7bSI0Dn6nrMHRBqpYyv3v49KtnstyuWJLjRqFFcc544gK0uTkv6HgiGPOh+2d7u9WsEsksTbosol6D8dh18mETLEIsD1yHsrGLlhpBecN/DwufdNNRmCOY+Cddluba0TLxRKhd2EYSQKEcUITZtnGEy69CEIKZDZ6eSxDeXGcJq3QoaDBulR7/+ibjVuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BN9PR11MB5308.namprd11.prod.outlook.com (2603:10b6:408:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Wed, 16 Oct
 2024 04:25:05 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Wed, 16 Oct 2024
 04:25:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Topic: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Index: AQHbEyss5I8hhBCHpEq+5+sR31waxLKHmhlQgABJ74CAABgJYIAAGqcAgAAI9vA=
Date: Wed, 16 Oct 2024 04:25:05 +0000
Message-ID: <SN7PR11MB67507BC2CE5C9FE11A6E3BC9E3462@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240930112343.2673244-1-nemesa.garg@intel.com>
 <SN7PR11MB67509E290DB4807E294502B8E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
 <IA1PR11MB64678E621767064D910F53F8E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
 <SN7PR11MB6750AADC23292F7E8F1C3D58E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
 <IA1PR11MB64674DCCF019544450B26825E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB64674DCCF019544450B26825E3452@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BN9PR11MB5308:EE_
x-ms-office365-filtering-correlation-id: 6af84112-e4ee-412f-bbe4-08dced9a82c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?pnJ0T1QqMXNlOjeBoZqad9aXLLrdHToNEbqHO1NilYgS1Un9Xy0IT+S5uv3q?=
 =?us-ascii?Q?X8uV5rZG9BNQkI+6rTD8suJMzSOKwjVjnTuMGboAFASNUBOb5vD7It/acGTr?=
 =?us-ascii?Q?TlKQxgs1QVm/7VZdIsbteWk5T13nB3Aban33ygYMXw1952nJfPIH3Sx1NVfA?=
 =?us-ascii?Q?dK1BDcufQbj/euXWV4DanSSOak9/DfS42ninp3PAoBClsA52RVmel1Wd5MtS?=
 =?us-ascii?Q?TA+t9ubZGJHdL+mfjjt7yYeeuaLvdJPcr10DxHRJzOBWS/jpyYZUma5B00we?=
 =?us-ascii?Q?Hyev90ZFkHCfD3cP7nSszfvcQcg7dTAgPCkNbXdyyuZKiRbX4AsSdSoDl0w0?=
 =?us-ascii?Q?RBrHY0MvD7ScNSxYLNDYvWis1USm0dopXqMYm7EzPGGa7xz2zxLbI8a+/wej?=
 =?us-ascii?Q?epiFmezyX0LjS1z831fqCkQv+k99HjudbLVIp2gr0gwfIuzBVFN/wajgvqky?=
 =?us-ascii?Q?NQehCZQ24lhxeQ5dIR8rUHqb5UwHE6Ufq6HBgDNk/kaxUO3B1vshR+qh10+6?=
 =?us-ascii?Q?ROE2Qi6JVV0hIv9KjlU7sEDTboCTEVOrkrddjTDa4VbpnbRSe+Ajp+K54Y99?=
 =?us-ascii?Q?PhzAUtgQjk1Qu0EZ1QMejk4pC1H+MjVCoKteAnipaSxvKkdTlqhcw2Ca7lcy?=
 =?us-ascii?Q?m46LzisxgTYi/0RYJz0p0RO7fviB0oPb0dU3r/V2McusPCDjdEvghbX2qDyJ?=
 =?us-ascii?Q?axRAJK8xbl/K0TvjdOH8ZO95M+ASxtJ0Z6NRJ4ujJuXrbzBtr632dbUy5M2j?=
 =?us-ascii?Q?wumW5lKfK0hBHlkp/icAFuX7lT8sPG1Y+d+MVl7BpndDaITnSRC0haxNC931?=
 =?us-ascii?Q?17ID80uyLmyLp7zsdQwz4PUy/QXMK82Wt27jco6o/wMWzmaOnWEpONev3gQ/?=
 =?us-ascii?Q?BC4umEUDEobZYIzBkxXdC9moV9GaXoBb1O6EXVTY0FPrAFg57gZEloLPxiCF?=
 =?us-ascii?Q?YfItFk99wpdH6fWugV4izQdydJ+0JmoFPxBue87ZWRNktfEau6AdU7UH9aRt?=
 =?us-ascii?Q?FYYxZeHbos35DwGNq10aTHNyUM3THyltdKxAM/VHRfy2cQMys6z4a1mR9E/D?=
 =?us-ascii?Q?LP2U+CP+kNp8ZetlsnnFZH0KXQpNd0aWu6khdbV04uYKfTGWb0Jar/On1Ofz?=
 =?us-ascii?Q?3c+iAgJ1k+EKdytNnm0S5rbzpYSO2dHpm/DKkhBg2p42EXOvQHf/BBn3ZVss?=
 =?us-ascii?Q?afs5Vnv8SIdLa4KJFhnZYIyZxaMmICcBORvkgdFw3TBFSqJ0FPmP3hxNaAiF?=
 =?us-ascii?Q?LEeQ8Gh7/Vqqhna2PVa5AKy46UdfsD2MqLmfglf3VtjGEuOhhXgoeLPc5WwB?=
 =?us-ascii?Q?tpdj9I6MqSCBo9eDtGqd3JYV1fQ2M4qgXs1T7aN6nm3Qtg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NMDPHIKf6NaDY7KhxYSw687HOgN9e0RgwaodCy1A4ni/I8/phtiFE0REicYo?=
 =?us-ascii?Q?k3v30R+r412rm3GwhlSaKr2i5I7O0FOT2Ri4m77y8sQwIz7fEFtKcKt4zoOJ?=
 =?us-ascii?Q?HOppR30UjHd8bMuhO4Y6ti0YWqClegcynbRAq1VrxwR74Yvy3+xtGxWYVHko?=
 =?us-ascii?Q?D+KyLF+2Dai0JpixIDYlSKBr127hvn5d1K212o3W6iWw83Gt+NCJT7qdMxJM?=
 =?us-ascii?Q?z83ky6nL6wCVWdqn7lEbsDFl37lcaErvLE5PAjMSRw67oHh9ggGgfib10qSK?=
 =?us-ascii?Q?4GGRM6uSoRDoFXa5EGPTh68rOKGCV5zwK+cQvlkKZ2V7jGSBWgpd83PQlhkR?=
 =?us-ascii?Q?PFNArOK4aH7PrWC9pah97qISLNAohYTAkQ1FDDenDCJaURaktxnNmnTQPNUh?=
 =?us-ascii?Q?qi5MRu+pXFTTR0/x7uQxCgBX9J1YBcNBrS1N4AX5CSl1H2OK8PFre/VoJXCl?=
 =?us-ascii?Q?aACNZFgz4LTCpCiVPD3K3/eq/i/rNzjdibMlN+SseWTuUPxwXIOwYvMKq1xI?=
 =?us-ascii?Q?XMN30eo+Rlb1j3tDXljEB4wU6e0sOqz8zdgArvt1Bu5BvN9CYN0no3VCRfEP?=
 =?us-ascii?Q?4Raj9UVoQWc/ZRcHsQc3bjRUgB26is5D9xJTpzkjEPzGJPqlLx9FeMdUNrCM?=
 =?us-ascii?Q?agg8X7MpMuRv/iw3GLdTugvmj0P8VxtgANu8TAv4pAxjv5837qo5Ks0LATD9?=
 =?us-ascii?Q?KsmaPSljH39NE7kYBThBUsvMe2ryzJt9T+FpBMw7JvZWFaoqAsuQriAXwNve?=
 =?us-ascii?Q?6A4+0CKnQunxn8xV3u+SqqvfeSwOlS6P0fnFmp4vBRgpcPIqeE+eDmiScveH?=
 =?us-ascii?Q?5VNZz3FidUG0DgWo9cB/+rEqWgaNUqs1fFLVNrUziNZfS6ipKUzW9j600MrY?=
 =?us-ascii?Q?gnLpFjTnMm1ZeClTp6EymZKQTv0qkCHnq6X8vUK6W29IkCKvYOMELaJ3o3pA?=
 =?us-ascii?Q?lKWznwsWvH/8eAngVSLt3GUU9NOP49K5zebPTzHEalMxzcJtEbBjkNmYJHsa?=
 =?us-ascii?Q?uUOVBRCQXE1sVd9mttA0coIHv0xRdC04P7khQSMGt63YO/FQ7Dtm+gKtecQH?=
 =?us-ascii?Q?5zPx3HgXZ6Jnne4giGIgWERoZdf7inkY6U87AiypUv63YBfQUhCcOJaOlamt?=
 =?us-ascii?Q?CnY5TGOdwq+7oXHq400EhuVBaiH8u4NW1jJ2NcxERRpkEfBA2CLP/iQfDViW?=
 =?us-ascii?Q?c3KpGbWyYdD2OIbXE0gjrjcMnOlMaAyYpNE9lUsvOQueZLc35mjf+Q8fj6XL?=
 =?us-ascii?Q?0t+GQflHi6cDjErN42fsn8cciSvqRc6+Wu/a+WQWaMN5U/RvD+nFTLj+3289?=
 =?us-ascii?Q?FCGzCPC1wEdG8mD6KwKtwixpUVqJ1OHAqRiptD9jYAxGEmF9TauXsYHrbOTA?=
 =?us-ascii?Q?O5PSU2vFhPjlrhWoNhR9fgsA6TTvkKuvsjLev096fA69wEDjb64QPOOVvY37?=
 =?us-ascii?Q?2Zza7lULEIiQwYXdp2vSEbP3Wb7hOZ2bAXcML0534PECvWSjsN3nMz4ewJjc?=
 =?us-ascii?Q?GNwNkrU9cgbUlonIQE/L4TNPqtdjWVVmdTDkibr8ndbVEe9Bc+b3TKqeOc3+?=
 =?us-ascii?Q?Xty/iTHRr9+IxcVzm8FB/4oXoBr/DzouhXFFlCzA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6af84112-e4ee-412f-bbe4-08dced9a82c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2024 04:25:05.3946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KltAkCPsA+F6Yd6fvTmiHFNOmnHI3Cva1szydFWPXasF0f4/HTeQrklQLg2HXihmrf2ncMQ+L+rjnAtk8kR0bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5308
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
> From: Garg, Nemesa <nemesa.garg@intel.com>
> Sent: Tuesday, October 15, 2024 9:53 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for
> planar yuv
>=20
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Tuesday, October 15, 2024 8:24 PM
> > To: Garg, Nemesa <nemesa.garg@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for
> > planar yuv
> >
> >
> >
> > > -----Original Message-----
> > > From: Garg, Nemesa <nemesa.garg@intel.com>
> > > Sent: Tuesday, October 15, 2024 6:52 PM
> > > To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> > > gfx@lists.freedesktop.org
> > > Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning
> > > for planar yuv
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > > Sent: Tuesday, October 15, 2024 2:33 PM
> > > > To: Garg, Nemesa <nemesa.garg@intel.com>;
> > > > intel-gfx@lists.freedesktop.org
> > > > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > > > Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning
> > > > for planar yuv
> > > >
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Nemesa Garg
> > > > > Sent: Monday, September 30, 2024 4:54 PM
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > > > > Subject: [PATCH] drm/i915/display: Workaround for odd panning
> > > > > for planar yuv
> > > > >
> > > > > Disable the support for odd x pan for even xsize for NV12 format
> > > > > as underrun issue is seen.
> > > > >
> > > > > WA: 16024459452
> > > > >
> > > > > v2: Replace HSD with WA in commit message [Suraj]
> > > > >     Modified the condition for handling odd panning
> > > > >
> > > > > v3: Simplified the condition for checking hsub
> > > > >     Using older framework for wa as rev1[Jani]
> > > > >
> > > > > v4: Modify the condition for hsub [Sai Teja]
> > > > >     Initialize hsub in else path [Dan]
> > > > >
> > > > > v5: Replace IS_LUNARLAKE with display version.
> > > > >     Resolve nitpicks[Jani]
> > > > >
> > > > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
> > > > >  1 file changed, 8 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > index e979786aa5cf..e3401a4f7992 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > @@ -1029,6 +1029,14 @@ int
> > > > > intel_plane_check_src_coordinates(struct
> > > > > intel_plane_state *plane_state)
> > > > >  		 * This allows NV12 and P0xx formats to have odd
> size
> > > and/or
> > > > odd
> > > > >  		 * source coordinates on DISPLAY_VER(i915) >=3D 20
> > > > >  		 */
> > > > > +		/*
> > > > > +		 *  Wa_16023981245 for display version 20.
> > > > > +		 *  Do not support odd x-panning for even xsize for
> NV12.
> > > >
> > > > Only mention WA no here the rest anyone can refer to by going and
> > > > checking the HSD
> > > Sure..will do.
> > > >
> > > > > +		 */
> > > > > +		if (DISPLAY_VER(i915) =3D=3D 20 && fb->format->format
> =3D=3D
> > > > > DRM_FORMAT_NV12 &&
> > > > > +		    src_x % 2 !=3D 0 && src_w % 2 =3D=3D 0)
> > > > > +			return -EINVAL;
> > > >
> > > > Also rather than return -EINVAL here we set hsub =3D2 and vsub =3D1
> > > > this should make sure odd panning is disabled When we have even
> > > > size since we only need to disable odd panning according to hsd
> > > > not even panning this return may end stop panning for even sizes al=
l
> together.
> > > >
> > > Even if I do hsub=3D2 then also it will return -EINVAL as src_x will
> > > be odd and src_x % hsub will be 1 which will return -EINVAL.
> > > Even panning doesn't get disable that's why I have added the check
> > > src_x %
> > > 2 !=3D 0 to make sure that position in not even and src_w % 2 to chec=
k
> > > for even size.
> >
> >
> > That will be fine let the code later that already exists take care of
> > that since we don't Want to abruptly send an -EINVAL in a code block
> > where we were assigning variables.
> > When it fails later as you said it will with a clean debug message too.
> > Secondly when you do return -EINVAL for src_x % 2 !=3D 0 it ends up
> > stopping panning in y direction If the current src_x is odd but
> > panning is being done only in y direction it will return -EINVAL Hence
> > assigning hsub and vsub here make a lot more sense.
> > We can remove the src_x check and keep src_w and add src_h check
> >
> But if I remove  src_x % 2 !=3D 0 then above condition will get true for =
even
> positions as well in both x and y direction.
>=20

Ohkay got it then you can keep the src_x check but still need to add the sr=
c_h check along with
And set hsub using if else condition and let it fail later on with a debug =
message

Regards,
Suraj Kandpal

> Regards,
> Nemesa
>=20
> > Regards,
> > Suraj Kandpal
> >
> > >
> > > Regards,
> > > Nemesa
> > >
> > > > Regards,
> > > > Suraj Kandpal
> > > > > +
> > > > >  		hsub =3D 1;
> > > > >  		vsub =3D 1;
> > > > >  	} else {
> > > > > --
> > > > > 2.25.1

