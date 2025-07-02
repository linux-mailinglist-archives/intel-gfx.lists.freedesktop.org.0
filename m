Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEC9AF103B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 11:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8CB910E683;
	Wed,  2 Jul 2025 09:42:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h25VFH5b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D503610E671;
 Wed,  2 Jul 2025 09:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751449343; x=1782985343;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bdk3qFZibL3lG3Su/vLWAhF/sTHwHn4G7nSTpPlC4eE=;
 b=h25VFH5b1VfFQHbO8k9QMSY4W8yLV7qeFMpww38PO88F7EdiZmrN3ais
 6S48KUxRxbPqEDHe1yxBLWNQGqu2nCjdRx16OlxxhvGqhD7h1Cm7UWxyh
 CJV5eV9sNhCtazjwTqroqgNibAQn02FlpALAy0F8HAQbyA8GmA4dNARoH
 hVue3qRmuLSVDs/wvv02ZKkVpPSqNK6dSSudYvfb2IVb6wj4vocyBm/I2
 WiTZGlEQi1tEQyj/dAB0m84t48zgIZuT1aupythtNjDcHdBOr/0D6OHG5
 ugdNKfbr1gmQWNhywiy51ajnpGrPcMpyFz+prZH0ECd70MLeKdbtLsVvp w==;
X-CSE-ConnectionGUID: 3azVbLu3RIW514PigY+MKw==
X-CSE-MsgGUID: ibr25L0yQyixXpcyzMCUVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="53878594"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="53878594"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 02:42:23 -0700
X-CSE-ConnectionGUID: 11msMIYNRhCiXMPJju76zA==
X-CSE-MsgGUID: YJRuHfmERga3EfAqYwashQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="159542275"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 02:42:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 02:42:22 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 02:42:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.63)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 02:42:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yHYxUmHLLgy4u9Mg0657BZAtYc+cDhTw15Ytg52j2qXaHN5FSzcvUcyMgOXOiw31ChhXsNDPP61fSV2PCHrCVfMTbZ/jztBfyGZPay7GD5APGAHYAlfG+uZLSWpnv64QAnD6DJ1xTiTRAF+KP94la3ACDOCJhqZKX0TkXV35gEdhB6IKoOlxAq+UVSLQPiHgXs8C08Vf80K2DjNNmM4KkR4cIlHroll82yZMQCkE0o86jCrbU/t57O8WG7U0Gr8cKM0dXcNMjEfsVd9xvUW6lHW+0ZUK+Fpbpj3Ci24/LtOHY4fnuL4KbBDt2AyTwVFTlaMp8+AkAp/h8CiTobEcNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5UHxx9IH83uLFjwceI1dKeu8NfVvG954Bx0jsFr8Szw=;
 b=e0t0LPcG0MTfl3+9rSAkkiTcgvOglHrZjV0NUNSt/dz4TVrrAJ+L1CPguAkCPkihmj01bIwBU/jSV8RKfYjOL5kl1VtlZTj3e8+8YGKAqArNK4P3VTUnP4zne2UUckjoV54VDRWAXC9GMxw+zzUpt1LQasm47hQ6J9osMzg5Nk6L+HjuGnnaRC4RnkijaE1pIJgSc9rGcveRVzNcuqBsUZLzzzE43MGOMn03njAiBgXVgSRs5yQzDA40NOypMwNFui/TS4YzSqF56uBlE0ZzMdZG4IpLwb0lEWWWq8aMpxfqbWbcHCiWQwi8hVIzdQB4XCxaNKOSzPXD2m1dC/9syA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB6357.namprd11.prod.outlook.com (2603:10b6:8:b5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Wed, 2 Jul
 2025 09:42:06 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8857.020; Wed, 2 Jul 2025
 09:42:05 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH] drm/i915/display: Add upper limit check for pixel clock
Thread-Topic: [PATCH] drm/i915/display: Add upper limit check for pixel clock
Thread-Index: AQHb6ww1KQDZQUqAzkOhVAO/gO2Z1rQegTYAgAAPVzA=
Date: Wed, 2 Jul 2025 09:42:04 +0000
Message-ID: <SJ1PR11MB61290B4DE08CCB4DC32F71F1B940A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20250702042754.3335382-1-chaitanya.kumar.borah@intel.com>
 <d3b2de8c5eac5e1214cc35609a78cdff32c0afa1@intel.com>
In-Reply-To: <d3b2de8c5eac5e1214cc35609a78cdff32c0afa1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB6357:EE_
x-ms-office365-filtering-correlation-id: a0bcb992-a04b-48a3-5f6d-08ddb94cb445
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wCwGsA/Oxw3qEg1KojYneeuMsBR2TluZYk3TCs1gr3pGYkiw4Ln+T0IXxLQf?=
 =?us-ascii?Q?AVBNtRkL23W2zQPZr+cLQXHKW+ieUJgQpj9Pj1Nifl5jL5AZ/YkW3aOQWG9o?=
 =?us-ascii?Q?IbNe1lgWAn61kyVGXVy1q7kbnUIfxC+ZZto9E3hTcfkAEd5g8ZFscrmXNnmU?=
 =?us-ascii?Q?uKIkgw7uU8vnC3ooEVUFQCWf9Q5A1+NcdHd4KQL0alots2Nrm+Ii1g3cQlBG?=
 =?us-ascii?Q?oZce4orcBHONTzLb8M+2G1vAIneF3s/Eg6HVtHf2kInLRJN91xgoOa2rguVm?=
 =?us-ascii?Q?hrEWa7/2Ycp9wW+FBxIAGgVwPu3HNeGrb1XW0vS3iCTNRv93Mqs+9Bo3p84/?=
 =?us-ascii?Q?19a3fn2lRBRg8zvZGitVRffkhIAOMozQYX+t1KSvm+p3CPzGHNKNbKbRl7AY?=
 =?us-ascii?Q?610QwhpMcAR0zSlNEs3eHj/JlE+xnsinHpoFi/N09aUgeKqan70086NEyO6W?=
 =?us-ascii?Q?YvRrfipuXrakUTlhupiqOYtLx29C496T3a5dw8RHI45c9+sClwO/QCJKM84J?=
 =?us-ascii?Q?b+PeZEUMYucU7euDbKVs77QSraU2lsApvlVBDVwUo7XlAknhOxC+VF/cM4Mp?=
 =?us-ascii?Q?41pLLEvSOMtFQdUj67JlE2vGnqaM71UlNRNwLs0Kw/jywJThkwe/ZPAb1pWk?=
 =?us-ascii?Q?6ibKqulwixDZ2vxp4HvctJoooYTH6ZaSgxSKogdPZuMwX1efuOnIMfSAIjr0?=
 =?us-ascii?Q?krH91TA9JYlQ1l6JjVq/mYhyBj4jDbyXWVeuDR9Poxrcasl6Bo96ESjA2U3Q?=
 =?us-ascii?Q?jvcfS0XEt5bVTwqXXZ0Mocj2hGcKcFQua/OP6Fbqq28uY6dNZs+M4FSJAYFS?=
 =?us-ascii?Q?ytK7LmPy+hGyEwHEbZYXNDmjAtKzDDktKfMwdSG0n7PzrdIz/9k0D7iFW5bm?=
 =?us-ascii?Q?/kyAAmUnnynXpi1Bz/C9MarJHiAglc0KqBA9Dytvs5SqEuTuVWluOyITZ3m5?=
 =?us-ascii?Q?ll0g4/h9rQkQslIS1EFKbCHFiVxwyNpFVUvZVH37jMI2JvwYiGmuiju1YaEd?=
 =?us-ascii?Q?w/Z64MQJpnlopdoPAPmKBiWCbycS/EOq4r54H3/14yXay07aJnukK30sLd3t?=
 =?us-ascii?Q?FOWDkNwjgvri70puizfrJbjHEX+e6cnsF4R/vYXuy4/SJw2CltotO59wPmdq?=
 =?us-ascii?Q?gqcDHnR3IVVdGgwCdr68+Hm6LfIJmzZoJaal6SzahmiiJ5wa3y9zblkCz5P2?=
 =?us-ascii?Q?ErbUOG6XPGfvE1CWUjW56YQYWzSzUKzT6XhNU1hIpHPqy2sejBT+QbI7019x?=
 =?us-ascii?Q?u4ARgTMBxllhx/3kkFUoKEJ/RrPyE8AWhungltQtib8+xmW4LHbiWvVUGyIp?=
 =?us-ascii?Q?fBUT0gJLE8gMlOIGrNsUEuQvC5gQOzVPPucSAMlN1HpSAqfcHYY3E9a4XDQm?=
 =?us-ascii?Q?xRnZlsbP124g2R/cqzWcTnIKkAixTGkxDfB6jmg7S342urWifZ/z3ssy5qJ7?=
 =?us-ascii?Q?d2nw+u4vMQ0zjWGJHljkM/6/Ow13vM2U7Hp8kSXd7mo9FSqfSX6aK8iFOBsT?=
 =?us-ascii?Q?TMIaTQ/Z4bls8yw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oJi4pyk4UPFdXwa32k25CTCrZxSYZBJ2ZkCw9z4rI7VliwPcjIPpzHB7bBK7?=
 =?us-ascii?Q?pqRtPPMKeCU32NHDxpyLmTw+gwsNAN85wbgB71cqfz9U4VHxClXi4H8hnq+B?=
 =?us-ascii?Q?lKRA2IfBAcvwPfmNr2W9+9mxGEGxE1GcCj1yQB9e5rhMwGkeaPXtJLGxKxKK?=
 =?us-ascii?Q?WhA6DJMffvleUAXs6mxucdCTlloXWMkhl8QIDbd8AzkBNsBKVZq/8MubydL9?=
 =?us-ascii?Q?EHqsDMw97nANx17ep5ykKMtEhiL2GH01BJlvGGFIhisTVBV5oVSJAa3qjglH?=
 =?us-ascii?Q?dwQr6HZd4BGvQNbYniTrO6xc4Gr2jh5NiK8vUNQGrvYzXGCvYU7LmI2hwoyB?=
 =?us-ascii?Q?wwcts2gM4YxQa7WFBI3wg7Lqh+nTrQ+8Zr5qw3nz1xVNffElpi+ZsH2z5Pid?=
 =?us-ascii?Q?9uKWMGCKlflY1sA5ABo1dKmGUb1JERDUECLH9SewMShL8ru80RiDfMHjGmD/?=
 =?us-ascii?Q?w5roos6ybl7CU6PEo+K7FSU78BhMPR/CyAEynxZlPeJ0BeXjn1rXHYUbNnUB?=
 =?us-ascii?Q?e8TQ7O2c0gtIZHUtKrLvM/p7xu4615009KzmzBRwDNvxYi6VLPjjvc2OXO9z?=
 =?us-ascii?Q?OiwhWv3IswVwuMpAbXVsiaiefCAie9Pe82FEHX4AKQsEoczZekHy2F+w5Htj?=
 =?us-ascii?Q?cBfS4PikkGaoG/bW2fCUXFB4GkEVOTxOq4aLGXqiNl0omWLlNbRXAkmVz+c9?=
 =?us-ascii?Q?a+F4keqzAtSkipbPpPExD5G0rdJR1VtiIBSLILj/F5lG6VZwZ32UWOJzuFRK?=
 =?us-ascii?Q?5nP6sCr9BH8G8bYvzbR3J/gLxqhbKgviR39cy7Y8BVTUr6lUkQr2sHuLgCMq?=
 =?us-ascii?Q?S5mawaKZdniH4UUKsvvPTvh/IndzQjmyoXwtmr/rJTtyyE41yWLf4pUtGSHT?=
 =?us-ascii?Q?LtqcpYXpH21JsojPhXIr0P0pG+bfMVUeTmMGz7MYqbnLXP+q7KmQQEKHcdbo?=
 =?us-ascii?Q?2pM+W5IjV1fHhmvpvVcmXJ+Z1pfsPbLdOZvXq+7mRmJsI5NpCksJcnC4e2FV?=
 =?us-ascii?Q?F2FCjU1S2Qbeci4A3jYaQkB/qK73WG7NFT4Lisy2CPryK5QmH1VJzNBYVXz7?=
 =?us-ascii?Q?aKOXLZ3qR/iVgeg/TmGh5NC3Pe1eyuaudZY1YdQjYIcScg+bcZZ1nm/eMjaU?=
 =?us-ascii?Q?CpCxyTqEY32xjRmpQ/PvdfIaeLi9v9e84yR6MOl1hUM5MBu3P2J4uDlp0KmV?=
 =?us-ascii?Q?rOb2hUbYDJtnvd4l1sObhrrrjCMH//NMsLfkCC7Fg7ZnD2fIw9G3H5t6a7BU?=
 =?us-ascii?Q?aiV8QVXkkQnY2RVcBdg6Sw3vtwVOJSvXdW0YRURkQhFy0m78q0DTqJwH2g4g?=
 =?us-ascii?Q?ZVgokQkmV4bzONs4o1Wu0scVCSGSzbu7AmGdhruFYD1AuudAEfw+1L/TTnfw?=
 =?us-ascii?Q?5txHOn1Qf0hD7vYeIzoG7iKjAOgO6lyCLyGQpLV9obqYwgl4Wj4swvDtjC0b?=
 =?us-ascii?Q?WNm8ZrodQ5gzGa89pS61hF054F8ws7eGJARstAq0Ai94Pjx5x0C/QQNvPD5S?=
 =?us-ascii?Q?OFETVxGWgtF31cwC6C1aHNF6y2HOi4gQHk2mTOPt7ZH5++A/ufrGVp0kIvd5?=
 =?us-ascii?Q?iF3uRG8LBnp5FdDJqC7Vea4Wd4qX+LiY5z4Y7j68ZVyVZsFeRo6nZu400a1H?=
 =?us-ascii?Q?fg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0bcb992-a04b-48a3-5f6d-08ddb94cb445
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2025 09:42:04.9020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vVTM+2CL2sUd03ec6eoeuUQxmyfwTKCFbnVkKvJPbCvK2VNOoX8I8h0cv/yIVbvb8VQSujj0dFVsIKE+bhAmCPZPxyR580p/OPnCSG113bw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6357
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, July 2, 2025 2:01 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; ville.syrjala@linux.intel.com; Shan=
kar,
> Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Add upper limit check for pixel cl=
ock
>=20
> On Wed, 02 Jul 2025, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > Add upper limit check for pixel clock by platform. Limits don't apply
> > when DSC is enabled.
> >
> > For the currently supported versions of HDMI, pixel clock is already
> > limited to 600Mhz so nothing needs to be done there as of now.
> >
> > BSpec: 49199, 68912
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
> > drivers/gpu/drm/i915/display/intel_display.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c      |  3 +++
> >  3 files changed, 16 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 456fc4b04cda..bf0faff50c2e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7902,6 +7902,18 @@ void intel_setup_outputs(struct intel_display
> *display)
> >  	drm_helper_move_panel_connectors_to_head(display->drm);
> >  }
> >
> > +int intel_dotclock_limit(struct intel_display *display) {
> > +	if (DISPLAY_VERx100(display) =3D=3D 3002)
> > +		return 937500;
> > +	else if (DISPLAY_VER(display) >=3D 30)
> > +		return 1350000;
> > +	else if (DISPLAY_VER(display) >=3D 13)
> > +		return 1200000;
> > +	else
> > +		return 1100000;
> > +}
>=20
> How does this relate to display->cdclk.max_dotclk_freq that's computed in
> intel_compute_max_dotclk(display)?
>=20

The Bspec defines this limit as "maximum validated frequency" and asks to l=
imit the pixel clock accordingly when DSC is not enabled.
At least for PTL it is 97.65 % of the mathematically calculated maximum pix=
el clock (pixel per clock * max cdclk).

I am not sure if intel_cdclk_guardband() used in intel_compute_max_dotclk()=
 was intended for something similar. However, since the limit only applies
when dsc is not enabled it made sense to me that we apply this limit during=
 intel_dp_mode_valid () instead of doing it in intel_compute_max_dotclk().

Regards

Chaitanya

P.S. The second Bspec reference number should be 68858. To be Fixed in the =
next version.

> BR,
> Jani.
>=20
>=20
> > +
> >  static int max_dotclock(struct intel_display *display)  {
> >  	int max_dotclock =3D display->cdclk.max_dotclk_freq; diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index 37e2ab301a80..9ad896a15ba7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -486,6 +486,7 @@ void intel_cpu_transcoder_get_m2_n2(struct
> intel_crtc *crtc,
> >  				    struct intel_link_m_n *m_n);
> >  int intel_dotclock_calculate(int link_freq, const struct
> > intel_link_m_n *m_n);  int intel_crtc_dotclock(const struct
> > intel_crtc_state *pipe_config);
> > +int intel_dotclock_limit(struct intel_display *display);
> >  enum intel_display_power_domain intel_port_to_power_domain(struct
> > intel_digital_port *dig_port);  enum intel_display_power_domain
> > intel_aux_power_domain(struct intel_digital_port *dig_port); diff
> > --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index f48912f308df..3ff2beeed801 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1507,6 +1507,9 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
> >  		dsc =3D dsc_max_compressed_bpp && dsc_slice_count;
> >  	}
> >
> > +	if (target_clock > (intel_dotclock_limit(display) * num_joined_pipes)
> && !dsc)
> > +		return MODE_CLOCK_HIGH;
> > +
> >  	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> >  		return MODE_CLOCK_HIGH;
>=20
> --
> Jani Nikula, Intel
