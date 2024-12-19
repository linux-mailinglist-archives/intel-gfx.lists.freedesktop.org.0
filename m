Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C9B9F8486
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 20:39:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE06310E08D;
	Thu, 19 Dec 2024 19:39:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d0chvoUG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFFB310E08D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 19:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734637153; x=1766173153;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6gyYqRsNcF3KbkudVBtNg+eVdXiOaiDyXzI4Af8BTAI=;
 b=d0chvoUGiXN/HxjcmfwQnAso/x2vaooQcWZIUH51qQ9ai2ON1RcpeXEs
 pmC9/QuJz777w4f1j6uDjqp/QUkgReX0A3+4qCyW9ZhmCa461utncRgQS
 WJxB0EabV6MWtG7DeIc0gWRA+lKvFsRxwD3gDvLWMBHHDKgLj5FAcWnLr
 L12K1KYEEy95PVJayPLyg/ThFjRDMyihnVFXhExYYRM0hNogfjL7K0/Li
 mz2NRjJBHBlNyRD8ti0Dy758wjSvv+7EwS4VuwW8/3ewzXo10loYvL5R+
 Bm+HkW+7OUjTwVqNvzByKNTCvN5/86pJ0K3kjmublnDwxcwaLYA5NKKNl g==;
X-CSE-ConnectionGUID: DCu0Ar23T/6D0yU7OzXSXA==
X-CSE-MsgGUID: JxCel/xURk2dvgF4L+YtdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="35199248"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="35199248"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 11:39:12 -0800
X-CSE-ConnectionGUID: 0Vx5a0kZTjOkFa/ctHzDjA==
X-CSE-MsgGUID: c0s/B15nRVq1KADCWFAogw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="98131219"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 11:39:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 11:39:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 11:39:11 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 11:39:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y1udwmisOh0CmxlwaSjw1bCqJ0+zcIbUHW0Rf2AX30qP0EhcTgrJtQspHlKDGPGQ6ujFG06zlZOGVW1NpTQbVES3sPLTXFzk33gr7PJwKe7FSEpD2mZegBPdHjBqkHvGxDID7Y0fgDUq2DxSZyBgj+wJb0lZulr8oCBkAhIjhRSzvilQTBnt2s56nx2d9Z5MFVGfJww7FizgBP+0bcDeWfVdOKsEHsczYd2fbmfcbPV2ghzNp6e/5oQo3Ce5K57g+8rF80rZKVHM2H4+cj4bhpO2tzA2PyvBKIiG0CaMdD4sWkIQYKyXdvs8Cf2CIQV+Yno+i56gFGCPKLVRSYCzGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dmgMT8GE8Uyx2lq6VFpsBT66xHARQ9LN0tpm1xd/YCw=;
 b=o4JO8M+ijylZpgrOmpYu8ErR0F2KVeWJIsYUUcMQOrBU+ZHtIC3UMvg+CcPMfSva513+Qkv2HcopSx4nX9Cq7FEQ/hHyIaRz6h5VB2ryV1PZXHiHE4Dum5wqRm8lH/uFDkEVQf72thVTWAO6bUNrYoUYSpdIsBNO7hGYG+M/yrJBwAO+EpseHf6uMztPHdqa4YS70GquDA1p3JqZv8OUh62s5B10qJI/cPvYUEkRb0k6Y6ysd+HlTO55AIs4AnAxWgqq1O+WHHeWc3azzj4XMJ6bgxxv0h0sHMDJb6ptcxLzSKaufUeK/8gg0BfEs4Nxi3qcX8W5j6cFZ0elJa635A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by CY8PR11MB7267.namprd11.prod.outlook.com (2603:10b6:930:9a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Thu, 19 Dec
 2024 19:39:08 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.8272.013; Thu, 19 Dec 2024
 19:39:07 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Taylor, Clinton A" <clinton.a.taylor@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Kalvala, Haridhar"
 <haridhar.kalvala@intel.com>, "Chauhan, Shekhar" <shekhar.chauhan@intel.com>, 
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
Thread-Topic: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state
 service
Thread-Index: AQHbUjzohNN8apO4nkSy4El3u9bbv7Lt1jMg
Date: Thu, 19 Dec 2024 19:39:07 +0000
Message-ID: <CH0PR11MB5444AB9D2F1E7EFEF18AA892E5062@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241219173636.3377955-1-ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20241219173636.3377955-1-ravi.kumar.vodapalli@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|CY8PR11MB7267:EE_
x-ms-office365-filtering-correlation-id: 73d9edc0-093a-48a6-bce3-08dd2064cd89
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?4Z9XJfa1K5hikIgW93vz9+jim+7KxAcoNUW9nhkgQykEADzZ4z+R42PGZtWR?=
 =?us-ascii?Q?P8QA3dzaXgRfH21huGswR3/VDUpgMwP6zvTGRZSmHeFy2msmMyg3lbHRIqxc?=
 =?us-ascii?Q?DGv/ER/YyjryAC4UgpOVf1sHUOCMcVRGW7+yKqK5QmTtIgGLckETbOWIc6PJ?=
 =?us-ascii?Q?iArQyT5stHPxuy9X8QgDPgpOvMa20CU95SG2UxHPDOPWbRorX2WPXv3ika7z?=
 =?us-ascii?Q?eNDMNmt46IYDao634MEmROhe+Bssu4l4SepatFt9izW67JQE6bhZOK3/Wr1b?=
 =?us-ascii?Q?GlPeGL5VTyEMm5Yq+pTvk/aX+X+928w8yWoQB5hxyHsAwPuKLEv9sp9uDqTs?=
 =?us-ascii?Q?OeH0fBHxw8T4AGf66Xx1/LItHOZSCtiqBOY58z0s8pNBxz2a3bKQxIseaDKW?=
 =?us-ascii?Q?Ps31umpT8bouaRomuPvApQZTxQWzWWbuBoqYdxHypGssZA4GU/a4wDUUk1Oi?=
 =?us-ascii?Q?MaL8v6eb02f64Xz9MvpAF/wwX9AjPOnZ4KXfQ24SIR2yL4+vGW56Dj5oILrh?=
 =?us-ascii?Q?qQGSFbRmb92ULSm89ZoTtjrryMtTNnrqQ9ms0nJmRRVYiTankoXCLCV1BFLD?=
 =?us-ascii?Q?SgBCOuM7A8pUZspeh/qEmT25KO7RWs3A86kds0HjAi6f3EYRFob0PjXJCdGR?=
 =?us-ascii?Q?wekRyoRmLf+SGzngjbdRL3uzk+fNRMf7TwLovrjHtzhZhVKnSAwhfA5aPz4f?=
 =?us-ascii?Q?kq8yLMhNFmzOHii2tFsEl5vJeozovkD+DhuKTpi1JwH9hJYbYl5S1Loa9e5A?=
 =?us-ascii?Q?Q4dh9XU6KS2kUGcuGZqc6HdfGWewuxpHUjXg8z06pHbGNM4mvtEoewM6ZTIh?=
 =?us-ascii?Q?Nc1E9RFpMmbSB4IaLvNpVaXz6w+GDLl2XOzd1AfdXUEcYXttbhk3IAPSvjRT?=
 =?us-ascii?Q?CegGTH0TStK+WvzMkSoXAcsPmGQVMiMalCYEehFmY0WD2212C4yi/p1RglWf?=
 =?us-ascii?Q?nifyj3fEQkKPWarPbfHRC4fsETErKokEZG/QiByonsrauKb2AeTj/d7eS4ot?=
 =?us-ascii?Q?Geydq+mGJpZ0vVjKi3r1CPGbkl8nEKd67HwKeg0/zALoJgMQ/QGH7wm4X5bv?=
 =?us-ascii?Q?VchlWPW6WU4/Ljw/yqyE209SJYSe9mCoFFmCGH7G4fAp7LyWmxmwnKPAL3bV?=
 =?us-ascii?Q?9p33598J6O4nMgcXQpxXIdPDRhRRVlGF4YsLHcG01IsePoUqH3tl1DORZSex?=
 =?us-ascii?Q?zmlBVSrSoYAGOI6+s3x4D+RYll9q39/Plr+FDDICVREr7Hu5djYlJcvobFju?=
 =?us-ascii?Q?5LBlJgzj2LG8i6moVpf8WSL2XOzLHO/U1+uqiEwuacDzJKf1cyEjoq76xzZz?=
 =?us-ascii?Q?enSajpMK2i3WdDfJI8Cynsoj6fo4I6NqkQHSUVYG0X2XnEMvz1bVSpnrFKht?=
 =?us-ascii?Q?N9lgEF12d3c8aEeqWgoEPSA21EBodDV0+7sdZmYwhNLYyyQFi7KothFO8aVZ?=
 =?us-ascii?Q?8xBYpM5nQIY5oskARvsACm0eFNO2h3qx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+TW6TEbR5IYUdANMJk1ssWjq07UwiSRLjwKGcVtNsqCB+iwemy1YZ+22Ho/d?=
 =?us-ascii?Q?u9cy0gCbIpEwJV5/IyRFmTMQGutEZZ+DgsIWWNVO5MfmG5+8I4IDZ6j5IVes?=
 =?us-ascii?Q?mJXulx/io6fVv1cDjU9A0p7wLvuclmncUMso7I/n1Av2qJ9vz2tD983KM1+s?=
 =?us-ascii?Q?wgTuIIbd+C1ZK4qhRUNEf6+VmH3e42ADqaEkV4xx7XeTKyyzQG75oIUCJHMf?=
 =?us-ascii?Q?ROJ6jUYR048GjhElFPWNCX3Zja9IB+0zDqLDjURfHQzZEIVE5LhNAI5quNMj?=
 =?us-ascii?Q?oM1j8mZiHgSxUxjuq2nfQ0Bhs9SI4pxzwFByBfXQEED+EfOXAZ6Y6y8HmDZp?=
 =?us-ascii?Q?WbjPyEozjxeHvCOZJMmn5thDaD+/qcF5Z1GJeSeaZSFEXjNGwNu8rdzeMszC?=
 =?us-ascii?Q?aVaGDdYcmniQ9ry9Gtc7P3Cr+Y1Tm0oUMj2UQ7DnNFE9F81eLD/dm8EpB4rq?=
 =?us-ascii?Q?sLsEB1CUaLTMX1wpYQRjkrzHapvS1jHC7xRnWlA/N5cjPgh++1VynH2o4VQt?=
 =?us-ascii?Q?CrF8THBam/me22GLs2Uf9cW4latTOShIkclh8rSyNSHe0ILyJFXFS2Ph1Doq?=
 =?us-ascii?Q?agNpqTcYXhbaPmMV8ADOEqo2lsE3QJOL9v6t+/uVAyqulEILGUlXqorh91p8?=
 =?us-ascii?Q?pEAM62aamYFLrCPEF9QZdObQ5KxROODM5SW0Hbb04unUulyO17pOXlNFMGxo?=
 =?us-ascii?Q?gF3V2u4T4JgcO7f3uIV7vUFhT/aoDStLvMIXk5jMVjFBcne6WALa8JgyCeIN?=
 =?us-ascii?Q?Sn49IxDs1rNE/UQX/PCv4Qt924qNUY6bAHzWywE3CcH1RBhzGUMqJmYRw3e0?=
 =?us-ascii?Q?M6vIbRAlrxSBBv6k5IhOzXKh5nFGaFkDkq8XnhevZzqsX7VfaDFiYq0st5E0?=
 =?us-ascii?Q?oQPy3SP6g2Bec8myrRfcu6GHILcuKoLHuMTENRvSzFnB2wPBCs/WIKwYM3IP?=
 =?us-ascii?Q?Nv2ji9/1LHxS4YfFVc4r5zMJzNFGIy5tnJYqqF9YYcpY6Yu+1rusevlxHDtE?=
 =?us-ascii?Q?eKhFmho5Ga0WAh64WasMkM+TQvdkocsZvCyCPI7h6s8cPqdD/PBm+agm/7jS?=
 =?us-ascii?Q?dQ2V+kfhqRSnoHIKusbbMnlcWx8DIrSXbaKwCEEEDaffFu7Yyj/5DvQ1JQeg?=
 =?us-ascii?Q?4t9W6a31AP2ubWnw474QLZnGsXxWj9LtBlRlVFv6DChY3ZmGs0tdSwfpZLdH?=
 =?us-ascii?Q?0nRMYlSNJNO6qSP+Ed6WgeQv497zmUmGPKiSrgeRHhU41PgW3EjWYlAQ9wNV?=
 =?us-ascii?Q?6slwfxvBgLpbRNadJFPs46rjvOcI0uxdoZj7IowP1w+LTvVIjo26UBl4u9pU?=
 =?us-ascii?Q?tf5rRd56j1wFbcXJoELOegTatDuhtX5P8EtFiwRo3yIdkJs2u3hA7t3K5b/j?=
 =?us-ascii?Q?rObSNhTQNlNcx/cbrbQxyA+tFGdTfsQ/8bxScboLFpiR2zOPXB2YFsZKRI+o?=
 =?us-ascii?Q?Omb+Whv29z6alCQnUnAPhkawIRFLQ3XtDvSXAgBZp6kjv9+XXUs+ssfz/km6?=
 =?us-ascii?Q?5liLGbjnSnauYB0M8gfFQScXRIIOHz0yRi4EZjL5oVgl5Dxlql4VErGaYADT?=
 =?us-ascii?Q?+SXVdwU2OlIIvEhJVmgtwAdKeMF17vFFG4hp5Uqx/CLwMv/c9EAkYVRvRyZ2?=
 =?us-ascii?Q?jg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73d9edc0-093a-48a6-bce3-08dd2064cd89
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2024 19:39:07.3214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2HS0cDGZiaT+eboyD2RQ/1YOlcyU/xt8Qf6Zu1Qz3XSXpwqA7asRostSH95GWpYz7aVQ0Q4ST3IpNrcbBOj/9K8zb+UiiDzd1wJjNEdOdMg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7267
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ravi=
 Kumar Vodapalli
Sent: Thursday, December 19, 2024 9:37 AM
To: intel-gfx@lists.freedesktop.org
Cc: Vivekanandan, Balasubramani <balasubramani.vivekanandan@intel.com>; Rop=
er, Matthew D <matthew.d.roper@intel.com>; De Marchi, Lucas <lucas.demarchi=
@intel.com>; Sousa, Gustavo <gustavo.sousa@intel.com>; Taylor, Clinton A <c=
linton.a.taylor@intel.com>; Atwood, Matthew S <matthew.s.atwood@intel.com>;=
 Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Kalvala, Haridhar <h=
aridhar.kalvala@intel.com>; Chauhan, Shekhar <shekhar.chauhan@intel.com>
Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state ser=
vice
>=20
> While display initialization along with MBUS credits programming
> DBUF_CTL register is also programmed, as a part of it the tracker
> state service field is also set to 0x8 value when default value is
> other than 0x8 which are for platforms past display version 13.
> For remaining platforms the default value is already 0x8 so don't
> program them.

This could use some rewording.  Perhaps:
"""
For platforms past display version 13, during display initialization along
with MBUS credits and DBUF_CTL register programming, the tracker state
service field is set to a value of 0x8, which is not the default value for
these platforms.  All other platforms use 0x8 as the default value and thus
do not need to be overwritten.
"""

Or maybe:
"""
During display initialization and MBUS credits programming, the
DBUF_CTL register is also programmed.  Specifically, when
programming DBUF_CTL, the tracker state service field is set to the
value 0x8.  However, this is already the default value for platforms
using display versions 13 and prior, so we do not need to program
the DBUF_CTL register on those platforms.
"""

>=20
> Bspec: 49213
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 34465d56def0..98db721cba33 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_d=
isplay *display)
>  {
>  	enum dbuf_slice slice;
> =20
> -	if (display->platform.alderlake_p)
> -		return;
> -

I take it we're removing this condition because we no longer expect this co=
de to run
on alderlake_p anyways?

>  	for_each_dbuf_slice(display, slice)
>  		intel_de_rmw(display, DBUF_CTL_S(slice),
>  			     DBUF_TRACKER_STATE_SERVICE_MASK,
> @@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_disp=
lay *display,
>  	/* 4. Enable CDCLK. */
>  	intel_cdclk_init_hw(display);
> =20
> -	if (DISPLAY_VER(display) >=3D 12)
> +	if (DISPLAY_VER(display) =3D=3D 12)

If I'm understanding the purpose of this patch correctly (which I'm probabl=
y not),
shouldn't this be "if (DISPLAY_VER(display) > 13)"?
We only want to overwrite the tracker state service field on platforms afte=
r display version 13,
and it seems like gen12_dbuf_slices_config overwrites the tracker state ser=
vice field.

-Jonathan Cavitt

>  		gen12_dbuf_slices_config(display);
> =20
>  	/* 5. Enable DBUF. */
> --=20
> 2.25.1
>=20
>=20
