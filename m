Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCCBADDBCA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 20:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3611410E0C7;
	Tue, 17 Jun 2025 18:58:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="heEIPsVJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7153E10E0B1;
 Tue, 17 Jun 2025 18:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750186712; x=1781722712;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZxqgkWefVeVD5pMpTe3OloVXNN6yohqelz+rxjrYN1w=;
 b=heEIPsVJJz2kexnRro98wuBlmmVRTRNEdWEJnCE+08NN/sleqwQGBsfy
 4Pxswcrw7P8OumjZ7ttSqGM6aeZbD7fg0aIV4R88tksT5sBzgRPHlpLFw
 GamjodSnD2ARzHMC72JdcKrJX9zjvSHZTj6rayQJLvjIwtuJaXyKaVeW2
 ROnNBgRmYSKFWh61BNsUslB+yh/KpH7EoHeuD4grcJ0c16hjyRieSmkSR
 I0hc6P8GvNBQkMHmFtTMeHLoaEHZlHVhybwEQR07yvqI3rct9eIf779/C
 z95iPIZFkan589VHZ/Vh9PwD5USNYW6rBYRnefj2TQhl57FkJw9yCP9NJ w==;
X-CSE-ConnectionGUID: JW1nln1JSreSiD9w5yBzdA==
X-CSE-MsgGUID: 20qig8EkSUK+Eq6qDwVDBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="62982604"
X-IronPort-AV: E=Sophos;i="6.16,244,1744095600"; d="scan'208";a="62982604"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 11:58:24 -0700
X-CSE-ConnectionGUID: v6xyIcLoRpGAW/AC77DUOg==
X-CSE-MsgGUID: sTt1hPrtQLWREy1tR97gGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,244,1744095600"; d="scan'208";a="149438999"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 11:58:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 11:58:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 17 Jun 2025 11:58:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.61)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 11:58:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NjQvpCmsSx0dPrAsi53TYHuiigaJTtRxvtUxStrikCesMErjkSf0FRIyn0tdiItSsIM64QUfymvGXwfkFghztCQ+WeLLPnafg/1m42MqDUjbF79d1bIPpaCP/gQu5qTCEBRruqaALw295iMhshk/CiAB+lOL3TeQ4gvwuANtv3S8DEHIx0ILSjfQPDuUXw8kjhVA8ie6URBLlRgEBwLKeEXHJoQY+H+m6XORpQTwL5C94fyHTy0fExGubyjdzmhpd0yPPuC0SXVDTf08fCEB9gmmxGNbRssD+YM3emmsrEov9KvjhB2/bU3IZdxQLQtXJw/v5nM5IGxdv1mt5tCChg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pJtmnINnyS2nb7YK04vzYocSAUPJSOXsEx31xpxNEqk=;
 b=JyzNetQBuDuweKkJL4WT5nMyaNZvqGEY/nrQsDHTpDh1zcOnCyZl83rBWOdq3uPC9hYuWcqvZOKM5yZd9+E9Ob1UDURGzc5WaybZARDjjGS346l/KnESVq6RreCkwDpQu4LZekApNpED2i3JtNFYRF18FZFo1DP1h0bwqre/uysgfXZt9yFSPsRwfd2/ySGuH1Rra7M+BHBxMCHaEnQ/fRt6aKe8TTJmIf+25J48J9VM46Bil+S4ftKWvpFiWxYp70rcJfj/wNkRhcIUE7+qVUuNPLNawHDaWUZ5mBIv9GIp3bygEtuxqJTKaGS4cJNxa+dwpI1HNErbDn9rpdjGGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB8803.namprd11.prod.outlook.com (2603:10b6:208:59a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Tue, 17 Jun
 2025 18:58:19 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.027; Tue, 17 Jun 2025
 18:58:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 4/9] drm/i915/dmc: Extract dmc_load_program()
Thread-Topic: [PATCH 4/9] drm/i915/dmc: Extract dmc_load_program()
Thread-Index: AQHb2ujuG04Pc87YmUS/+N74dQ/LO7P/94aQgAEut4CABpYNsA==
Date: Tue, 17 Jun 2025 18:58:19 +0000
Message-ID: <DM4PR11MB63600F7BDED2F2BDC01A6F41F473A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
 <20250611155241.24191-5-ville.syrjala@linux.intel.com>
 <DM4PR11MB6360E45A005DAB22EA0151ACF474A@DM4PR11MB6360.namprd11.prod.outlook.com>
 <aEwzM5v2lk2ySbMI@intel.com>
In-Reply-To: <aEwzM5v2lk2ySbMI@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB8803:EE_
x-ms-office365-filtering-correlation-id: ffaf2c17-3a7c-48ee-7561-08ddadd0ecbc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?+PIVsL3hfxuxBPrjMLsgjEDAbMid3VnedM4tslw/JOl8ZgVAQAzrq1KIlU?=
 =?iso-8859-1?Q?wpPv8EtTlq6XTLIs7+mGNGg1OigpbxYJZ/MVLrUECYlTJiKAnfU4/DeHGD?=
 =?iso-8859-1?Q?HI3C7PjkfHZlsIMxkebvxYcZg95IwJfrp17xmexQIc8LzffSkn/AfHQgq8?=
 =?iso-8859-1?Q?YrPfyJXjdWOrlAOSQ+++5iagBfkOtclWd+/dxPJzykZ//RKAhJkftuISBt?=
 =?iso-8859-1?Q?61oEoFtuEdKSHfmA7vN9mK748ZhLop//6ghBC7L8F8CYXprjT/dLudhOz1?=
 =?iso-8859-1?Q?9JLQKo7E0Zndw3mKyNaapfaPUjJjfbkawU+sAtDNzDsZj11UZF2DfzBpKM?=
 =?iso-8859-1?Q?DQDjnzTeCqMZ6APG1m+4zARpqlCNj/mu4P2ueyo6P5Ce908UjWiPTEH1jX?=
 =?iso-8859-1?Q?aNBXE+abg5swI1utCvOcH3KKkkvSfF32+RKer/GewS+i9X/FHVpG6O1dsa?=
 =?iso-8859-1?Q?55MaSH20YLW7kyrU6xVA37zVdlR0kLPDNlcVUZfGlK24PPg0AAkOMpl0ZN?=
 =?iso-8859-1?Q?je+1ldb9bb6a2WSfElgSSOCMtAIDDKM5u4HtRZyZznyWZ1CZhng7ktaWR4?=
 =?iso-8859-1?Q?dNvd91mKEvSoGFSBK4OvWDmcngQ0Mj7suXlb8tzNqA8L/CV7RfvGFYELdG?=
 =?iso-8859-1?Q?3jE0BYnAVD52vgc4hqcOEYpbU1tgMrTooN3OCdE7x5tyYbmLFky24EM/tI?=
 =?iso-8859-1?Q?t2lEwkrtt6iCc5xA3HeHasv+9meX75Ul3IpgEm8KFpvCC8iNjjkkotb251?=
 =?iso-8859-1?Q?fX3gv+4UnqW2Ys9LNRC+7X/bLdJs+MIITxQLnbo3jyeuBdFDWExxEtmQD0?=
 =?iso-8859-1?Q?k++YNq+qscKQdfoLhW4sktIksVOatN9oh7nNGNwDHZVIHOPOvVv+J9aCwI?=
 =?iso-8859-1?Q?X3uNUA50bFhixqY1DCHGrGD+W7MHzKLhYX8tJYX3K+eaYSFbSa0aOXbIzr?=
 =?iso-8859-1?Q?8Gi8VdiJ/eJ2DT6oKHSoQU3hfDlqzBc4b8FcrG/XUVYsoghIdapdAcXVeC?=
 =?iso-8859-1?Q?HrLJIpA9HjobgJdjJhcAAaL3oMQyDCvqZxgPwtfLpy9HNreordo/HVh4m4?=
 =?iso-8859-1?Q?KkKreNuRA1BRx42vlI9MXZXGiPkckAxgCejIRb4auwgRDzvhGxS8q5og7p?=
 =?iso-8859-1?Q?ySwsgW4shOPHt7NCIdq4130GUq4BuyJ9mndFGNWHMKmLG4bSCiD2AtcJB8?=
 =?iso-8859-1?Q?hAQYNEkDANiaGmt/RjdCgUiuo3EaFFvp+dXSRk1/qQTxGi7D3WH2wAdo4V?=
 =?iso-8859-1?Q?Xi5jtHx8xXOC7onH0wl0K3/nkDK+8KrpJWhTcaQLR0cyFYrpNPQzNIH8tu?=
 =?iso-8859-1?Q?DNQ+wMloP6zdpyePIDfr4WOs9hgJ0k+pcA3PexVO+tG0WOAJwYE3SVNVmO?=
 =?iso-8859-1?Q?Dwp0yo1igkhipg6bRXYmzHXJKmMqXn84lzNOnPl5Go1gCQQybucrnle7CQ?=
 =?iso-8859-1?Q?zwRIFB8lVo+6Ki9raMlIK672YeMCvuiY8fAOVsm+pmLm1owGh41z9V1qld?=
 =?iso-8859-1?Q?BTkXO0wTRoXxHHYca1DMrZcd5aQ1LWrgdTkjbcEXDmYNeVjiHaNSL3+OhA?=
 =?iso-8859-1?Q?uYOrxUA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?kX52pPW3Ka7h25d+dzNUph34cd15xlE1ycvtKHjEhE9DaL8Rwedcm3AuwB?=
 =?iso-8859-1?Q?C5JI1h7CVfeWjDovKB89Xa9EtCWpgsmF32f/9LNu+3CPYlMD6aWaIzLRI4?=
 =?iso-8859-1?Q?a88LSViiqLZ12oU9wy/HqqYx7MVgHmpiV01cKiuqZw4q5g7mNve9s2+e2d?=
 =?iso-8859-1?Q?fwIgCtYY0UW5qy7DcrStELF0GAE0Ro54FAejd53FgldIoUGAqwDqYisp2i?=
 =?iso-8859-1?Q?0SdM8afLybf00PCT2bsoUGnGTN9gSiHjPkLk+wgMDoEj8A/86VWvS0LKXh?=
 =?iso-8859-1?Q?/N+vPhEXyL0iDFUm1iRjm/XAu4VZZPuOF3/H5h7YwJoz7b6Mw3Vc66asZ+?=
 =?iso-8859-1?Q?ncWdvG/dheqGOyVHQocc7sFAvoen7prM7asCp8oZLXq5R2V9yLEiLbLF64?=
 =?iso-8859-1?Q?uxE/dG6FMgsRyVsCbThIGAJIhpuzajDwYWp3PUmhBVhlTTaNro5/Twm+i+?=
 =?iso-8859-1?Q?+w0kgxzkjdVWpBL71m4Fvb5tc/5J5ECDJqNQZFWw/K98IRwa8TlSzSpxLz?=
 =?iso-8859-1?Q?fDu/Kt37CDXp79QSC70hKtbqIGIAlc5SkgXcaXzLe9a3Jm5V5/tbNaDG20?=
 =?iso-8859-1?Q?VBOgrxzVPA+f5aDu1DzAyviGYyfY+oA6mANQRDkrWAGREA9191gbGQR6CI?=
 =?iso-8859-1?Q?+Bb8+x+AP+jqfks59bzuHvvEbZpGj9eaeWLNoxzTZyx0v/uoahEaFrK0Eq?=
 =?iso-8859-1?Q?5S8EkWcKYw4Xa2KX2iQKVdbtOSPR8VcHvcp55TAOno75RvWWMZZYA1jWlf?=
 =?iso-8859-1?Q?mK+LkFBhRlLq/T1Qdqoge3DT5m0Gnz3txMP1TT12ll4Ovdb9NV+o59Y9R9?=
 =?iso-8859-1?Q?GGc5ssnem+VbKEcDSoUvxQSUGlFuxy3XaXJ+daZGmhWjYFM7YMZ/d+gp61?=
 =?iso-8859-1?Q?h23YzbEW5ltbXlS31qyIrdbPuDPlDWLOW9FQLABV0JsNctl+Aw6kYmdxaw?=
 =?iso-8859-1?Q?j77ElYxjSCoCxtYnKXEhQvfbjp8OSaKV3dNASUCintxwMy0NPRvGeoFp39?=
 =?iso-8859-1?Q?R3wNUzxy87UG+5tyj22vnJe30kOayZUsJeS6GTNJXHCMgSoiF0XWj4FZtC?=
 =?iso-8859-1?Q?luBqDsNERj0Uy5vOn+KpsR2kE+V1vKV074qkA8Npvl+JPocMTW1Bc2K/Er?=
 =?iso-8859-1?Q?gN78Lsux3B0+ZhV/OKRDetBy+bXkS6NHgZkms/rVkQmTa6U033Xu7HrxBv?=
 =?iso-8859-1?Q?e+Z8Yc+BsR2AXvSuwWbXLcJdZ4GIkdCih3dUu6/KtVdByNJoCFPbqWkIrd?=
 =?iso-8859-1?Q?DtlKb0LGOM/vcEBXxmDVJL5LMYbH6O+Q5vAjtZsn0UT4PK4novN+ZKhVVZ?=
 =?iso-8859-1?Q?e/wuGZoFG+ErFIrEQKQWTPCxQPSoDQkirR8PEqiqFXtm6uFiEpAYGDEeXj?=
 =?iso-8859-1?Q?RwGl2cO97yxJhBVdEfIBsU3j4nWm56rhw5qV83k4I69CxKF2yH3DGDFSUL?=
 =?iso-8859-1?Q?bgi/IFkIIEvXdxBRIYY5UJ0JZxtaeybCTZ26ViJl3aH9Q7EflcHalNQQF1?=
 =?iso-8859-1?Q?uDqLOrQ4M/n3bLSlJuW09q+6j3aKdNS4E6w5pUkOf2zi5iihBWTtPFBW6K?=
 =?iso-8859-1?Q?5T4EN0J2ZZhlW4OK4Wx7tk6PZLVjjK0C9HGKmDKDlnhb4jIU091fTf0TP0?=
 =?iso-8859-1?Q?QdkGmcWcqf2xXWglwNebpNA62ie3jMHgBr?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffaf2c17-3a7c-48ee-7561-08ddadd0ecbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2025 18:58:19.2529 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nJBM5mSPEEJj8OFYpHo0knN32iD01ZOQDKZsftNpV/fCjEuKKRKPgBY/keB1Kl7v1kgd7xbarPV26kl+ZDw+Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8803
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, June 13, 2025 7:48 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH 4/9] drm/i915/dmc: Extract dmc_load_program()
>=20
> On Thu, Jun 12, 2025 at 08:16:51PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Wednesday, June 11, 2025 9:23 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: intel-xe@lists.freedesktop.org
> > > Subject: [PATCH 4/9] drm/i915/dmc: Extract dmc_load_program()
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > We'll be needing to reload the program for individual DMCs.
> > > To make that possible pull the code to load the program for a single
> > > DMC into a new function.
> > >
> > > This does change the order of things during init/resume a bit;
> > > previously we loaded the program RAM for all DMCs first, and then
> > > loaded the MMIO registers for all DMCs. Now those operations will be
> interleaved between different DMCs.
> >
> > Haven't found any documentation mandating this sequence, so should be o=
k.
>=20
> I was also pondering about the safety of the whole DMC reloading process.=
 I think
> it still has lots of potential races:
> - we disable the event handlers first, and the reload the program,
>   but there is no explicit sync in between to guarantee the DMC isn't
>   still executing one of the old handlers. Not sure what such a sync
>   would be though since there are various triggers. Maybe a vblank wait
>   or two (if the pipe is active) would at least guarantee all the frame
>   timing related triggers would be done.
> - we load the firmware mmio list in the order specified by the firmware,
>   which always seems to have the EVT_CTL before the EVT_HTP. That means
>   we are enabling the events before the HTP is in place, potentially
>   causing the DMC to start executing from some random location. We could
>   eg. do two loops over the mmio list, first loop would do all the !EVT_C=
TL
>   registers, and a second loop would do just the EVT_CTL registers.
>=20
> Though I'm not sure the GOP even loads any DMC firmware, so perhaps none =
of
> this is really matters for normal use cases.

Yeah, this situation of reloading should arise only at resume or at boot in=
 ideal case.
Don't think GOP loads DMC.

But for situations like above where we do need to reload,  I think adding w=
ait for vblanks
should be ok, given this is not such a frequent event.

Regards,
Uma Shankar

> >
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dmc.c | 78
> > > +++++++++++++-----------
> > >  1 file changed, 42 insertions(+), 36 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index 5a43298cd0e7..331db28039db 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -432,25 +432,22 @@ static void disable_event_handler(struct
> > > intel_display *display,
> > >  	intel_de_write(display, htp_reg, 0);  }
> > >
> > > -static void disable_all_event_handlers(struct intel_display
> > > *display)
> > > +static void disable_all_event_handlers(struct intel_display *display=
,
> > > +				       enum intel_dmc_id dmc_id)
> > >  {
> > > -	enum intel_dmc_id dmc_id;
> > > +	int handler;
> > >
> > >  	/* TODO: disable the event handlers on pre-GEN12 platforms as well =
*/
> > >  	if (DISPLAY_VER(display) < 12)
> > >  		return;
> > >
> > > -	for_each_dmc_id(dmc_id) {
> > > -		int handler;
> > > +	if (!has_dmc_id_fw(display, dmc_id))
> > > +		return;
> > >
> > > -		if (!has_dmc_id_fw(display, dmc_id))
> > > -			continue;
> > > -
> > > -		for (handler =3D 0; handler <
> > > DMC_EVENT_HANDLER_COUNT_GEN12; handler++)
> > > -			disable_event_handler(display,
> > > -					      DMC_EVT_CTL(display, dmc_id,
> > > handler),
> > > -					      DMC_EVT_HTP(display, dmc_id,
> > > handler));
> > > -	}
> > > +	for (handler =3D 0; handler < DMC_EVENT_HANDLER_COUNT_GEN12;
> > > handler++)
> > > +		disable_event_handler(display,
> > > +				      DMC_EVT_CTL(display, dmc_id, handler),
> > > +				      DMC_EVT_HTP(display, dmc_id, handler));
> > >  }
> > >
> > >  static void adlp_pipedmc_clock_gating_wa(struct intel_display
> > > *display, bool
> > > enable) @@ -578,6 +575,30 @@ static u32 dmc_mmiodata(struct
> > > intel_display *display,
> > >  		return dmc->dmc_info[dmc_id].mmiodata[i];
> > >  }
> > >
> > > +static void dmc_load_program(struct intel_display *display,
> > > +			     enum intel_dmc_id dmc_id)
> > > +{
> > > +	struct intel_dmc *dmc =3D display_to_dmc(display);
> > > +	int i;
> > > +
> > > +	disable_all_event_handlers(display, dmc_id);
> > > +
> > > +	preempt_disable();
> > > +
> > > +	for (i =3D 0; i < dmc->dmc_info[dmc_id].dmc_fw_size; i++) {
> > > +		intel_de_write_fw(display,
> > > +				  DMC_PROGRAM(dmc-
> > > >dmc_info[dmc_id].start_mmioaddr, i),
> > > +				  dmc->dmc_info[dmc_id].payload[i]);
> > > +	}
> > > +
> > > +	preempt_enable();
> > > +
> > > +	for (i =3D 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
> > > +		intel_de_write(display, dmc->dmc_info[dmc_id].mmioaddr[i],
> > > +			       dmc_mmiodata(display, dmc, dmc_id, i));
> > > +	}
> > > +}
> > > +
> > >  void intel_dmc_enable_pipe(struct intel_display *display, enum pipe =
pipe)  {
> > >  	enum intel_dmc_id dmc_id =3D PIPE_TO_DMC_ID(pipe); @@ -685,37
> > > +706,17 @@ void
> > > +intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct
> > > intel_display  void intel_dmc_load_program(struct intel_display *disp=
lay)  {
> > >  	struct i915_power_domains *power_domains =3D &display->power.domain=
s;
> > > -	struct intel_dmc *dmc =3D display_to_dmc(display);
> > >  	enum intel_dmc_id dmc_id;
> > > -	u32 i;
> > >
> > >  	if (!intel_dmc_has_payload(display))
> > >  		return;
> > >
> > > -	pipedmc_clock_gating_wa(display, true);
> > > -
> > > -	disable_all_event_handlers(display);
> > > -
> > >  	assert_display_rpm_held(display);
> > >
> > > -	preempt_disable();
> > > +	pipedmc_clock_gating_wa(display, true);
> > >
> > > -	for_each_dmc_id(dmc_id) {
> > > -		for (i =3D 0; i < dmc->dmc_info[dmc_id].dmc_fw_size; i++) {
> > > -			intel_de_write_fw(display,
> > > -					  DMC_PROGRAM(dmc-
> > > >dmc_info[dmc_id].start_mmioaddr, i),
> > > -					  dmc->dmc_info[dmc_id].payload[i]);
> > > -		}
> > > -	}
> > > -
> > > -	preempt_enable();
> > > -
> > > -	for_each_dmc_id(dmc_id) {
> > > -		for (i =3D 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
> > > -			intel_de_write(display, dmc-
> > > >dmc_info[dmc_id].mmioaddr[i],
> > > -				       dmc_mmiodata(display, dmc, dmc_id, i));
> > > -		}
> > > -	}
> > > +	for_each_dmc_id(dmc_id)
> > > +		dmc_load_program(display, dmc_id);
> > >
> > >  	power_domains->dc_state =3D 0;
> > >
> > > @@ -733,11 +734,16 @@ void intel_dmc_load_program(struct
> > > intel_display
> > > *display)
> > >   */
> > >  void intel_dmc_disable_program(struct intel_display *display)  {
> > > +	enum intel_dmc_id dmc_id;
> > > +
> > >  	if (!intel_dmc_has_payload(display))
> > >  		return;
> > >
> > >  	pipedmc_clock_gating_wa(display, true);
> > > -	disable_all_event_handlers(display);
> > > +
> > > +	for_each_dmc_id(dmc_id)
> > > +		disable_all_event_handlers(display, dmc_id);
> > > +
> > >  	pipedmc_clock_gating_wa(display, false);  }
> > >
> > > --
> > > 2.49.0
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
