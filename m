Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GB4N/qfnWlrQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:56:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 569581874A2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:56:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE4B310E57A;
	Tue, 24 Feb 2026 12:56:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DdvIkR2S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D3E410E579;
 Tue, 24 Feb 2026 12:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771937783; x=1803473783;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qvHZtDKBp0nY0c2Z+6p7F7gEzaDeC/2Z469Mh8GUYoE=;
 b=DdvIkR2SYmTdsDj0PcWaEhpIHJOtGaLHEcI6bpBo0iRSf0+KsBI91ayJ
 pxX6+7q0yCDC9FC1Os2MRd+BHxyMIz+1mk9LVzn5pUVL1HI0XJJXMeyuA
 6u5/eEb4ZKXbDjwT4OjHZQhxC1e8D0PwOSk3fzcx12DziBS4KIO3JuBlE
 p1sRVCu+wPc6bco/j68ZFt/HBXu0Tniv+uecaElWMht/+zd/79xLBdXJg
 JkAXcoBoHnRjjU1Yczj8lJbgK9d4ANO1/2Mx0yNWIxf8wO84gvHv8EET2
 y7nKfzyKhiuS4ynYDcQM5N/8JKb+uh2+XGyxOnIjjxilg/gTdG4fIjdhv Q==;
X-CSE-ConnectionGUID: 8YN6akGaQ4WxnEaZyTVYVw==
X-CSE-MsgGUID: 3msALhs2TQ6zf2+wlrS/kQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="73013749"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="73013749"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:56:23 -0800
X-CSE-ConnectionGUID: gFV5m7adRQ+4vTlVipQzYQ==
X-CSE-MsgGUID: 562stPWgTJabLLPfklTcSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215130086"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:56:22 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:56:22 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 04:56:22 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.60) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:56:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b9xL6EZUIEbpkosvUdoJdqrCfLjSl6UeT4+uvCMnbPh+XFP8mC6j2JW4amu8MTz+EgbzMtUhhQZeJX5X7YiOALL7Fe4LsQ4ovNSqtjHCGLW54RHNykkjj5oR9MGUhO5zB5QOuENL+UtGEe61HTIJcHh9Al7AgAsoWo9yPXPHefbNExQJ7VaFRQMzENPu0zEKnHtAXqoRObZpvYTDKD9zRgvn2pIn6c89QdydhGRU515ABc8d03qI2U9r7OUGOmL3seEwk51cKWHl8PuBDlKsVfa1AIPlmF1U9mEimp1gYmUh2M1bIwn5BObvQ66nBn5hEM8Rm/JEvFCCjsu21sHCyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bBIlQVx9MAcpqtos5c6BkuASHMrnlKKy//+nPtkiyEI=;
 b=ZkGTcOQjOgw/KXIls9ObobYnSo0xD07XfjizfwCk2OrSVXvWOLW3aqoGbX9EBz+cKrtNT5JzRC6Cpm8G7vt/SnTu2uhikWJcZ2PPWjVUwG3hycgSsVmO9vDxbe8nLLOkuFt/MXrcWTzejidGRmRwH0DyqtOyJ+c4uVDzhcEx3Nhnnkz5Kvcm4gtWgLQlPfdzGwu6fDkp3XrDNsWV5C6uciKrf5vIXQF69k1GHD3EPXkZ+9d27AygW9Eir7X9/SqR3qNE0UxWeyq1Nw0LXOJCghAzkjNViMFRbHUDWT/EcGTeKhe5GjVcpq1FF3RAi0fQpEdsTY95r4ol6YWat3vqCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by LV4PR11MB9490.namprd11.prod.outlook.com (2603:10b6:408:2e1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 12:56:15 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 12:56:15 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 2/5] drm/i915/dp_tunnel: Simplify detection of link BW
 change
Thread-Topic: [PATCH 2/5] drm/i915/dp_tunnel: Simplify detection of link BW
 change
Thread-Index: AQHcoc24U39bGXNVfU+1Yhg5vm9sMrWQdgwwgAALKQCAAVUVIA==
Date: Tue, 24 Feb 2026 12:56:15 +0000
Message-ID: <IA0PR11MB7307B0AFFFDEDFD1F68F6DA5BA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-3-imre.deak@intel.com>
 <IA0PR11MB7307F5E3DF179F283F94D4A7BA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <aZyBzNZYecyQxdvK@ideak-desk.lan>
In-Reply-To: <aZyBzNZYecyQxdvK@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|LV4PR11MB9490:EE_
x-ms-office365-filtering-correlation-id: 2c366d18-93f8-445b-47b4-08de73a41867
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?Be1tH2bDvO5L+6uz8Xnho5X+LddzFwr+PtS/5Fj16VZNgnc68RCX8bRism9n?=
 =?us-ascii?Q?UTib/qZgVvucBwe0rL83zPcE3Iy5kcJF3EMhFVrn2FlCeUxb3g+0WOKNGxK8?=
 =?us-ascii?Q?NU0wOpYQ+Wvqy3W0UPgtpMao19rXy+eNaJWQAJvcPZD6xNtPpSvRyhEVlx0w?=
 =?us-ascii?Q?a62Pz8KipiXixU6V2UhbUFySIYeFYiOtCXRmo5bpo60Ppoy2tskK0qdJy0Sa?=
 =?us-ascii?Q?6+9ypvz4fyfkOlGubVtOs21iCJJL731m7AwNphCVXaec0+W1UJ79xyDnOBsy?=
 =?us-ascii?Q?vR6q11TRUD9xIZ9lyzAZXWsqCLmFPi4ISZTaznoOJyKBpvnu61rLfP8jmZzg?=
 =?us-ascii?Q?Fblqr7v4wrcNepjvZQgpvP5Uobz4hD/sKUOWH0iHBOtQkb3POYy6jH8dRL1o?=
 =?us-ascii?Q?H+HRZheGF7d8+nTnOMnlHtyzgYcKKfje6khEJNR0ZTmNBu1wdbwHhLqeBPxE?=
 =?us-ascii?Q?oxAA3h3xBPVcnyC4dX0QmWGnlZjHMHgMsjXRJXtBOt1NyAt1JiPDhxnd8Dq6?=
 =?us-ascii?Q?gyLyKz5qTASqQIJdInUJVZ7VYG/Tpr+cJ85XbYWruvytAbNertYmSUuK9Q20?=
 =?us-ascii?Q?1yLt4Cv8fxS1ucmfqUz454mRnsuiTQhHyDCAI/bzpmfTUyi51PzX7tiQE7E5?=
 =?us-ascii?Q?EZLG62O6Mb8C4izigvK8cS+X/fydDNhLPlHIf8fzSSzKWDUyscwcKmzYAaV7?=
 =?us-ascii?Q?UaViBkkTUFYk6MVBthpNTbXihsFv93Nh/DfvPwqU0O2sX07am5ztgnHuiBlj?=
 =?us-ascii?Q?RQpvphgSCw0sTpBtr0FC0+DaGeLe4rxnl/Ss19zKqEp8rjPERIYxGWremTq2?=
 =?us-ascii?Q?CzUPKAqZIxOBLYnwUith9xgaOyppT15qOQdjyDOrocYjFluJlmJMz+uvpB0x?=
 =?us-ascii?Q?1fMtm9o2Xj4wOOgrE69YeftHTwhVE/F+f8BmXi9yVMNPoeLmsUhsrA9lwYGo?=
 =?us-ascii?Q?2+MDdf5/87JLhPfUCJGDDPHPXcGhubT32SXMGy58gwzDOyJ7mYkQ2ZdWKZH/?=
 =?us-ascii?Q?epwziIII/tCIoK+lxatRYGocni64h/ppjppnUnxi9h4S2AN26glEXLOEJFBF?=
 =?us-ascii?Q?OJcHkzE64SoN+KETMcDmpQYOu5inF9HfsqOfjXeyqQQONpxwI14DEZbYRpRM?=
 =?us-ascii?Q?Vrt71m07CZ10p9zxA/FmIvejcwIllVyCPLoliRN2l7P3jn2tBvHo4MQGaQUz?=
 =?us-ascii?Q?NPS7sdX478wAH3pP4XeB4KYoGkxutYLCIdRQbrW6sf09C6Fv6JSqgln2ZCdk?=
 =?us-ascii?Q?9OPB6hjELLi9CogPs21dHoVZNbI+c2z3/YlzCKdP0O9xh1us3TDrfJj/N52x?=
 =?us-ascii?Q?mXDOrmAGSqph6SquceuYohSALXefW80U6d2VTUmtk2YE3CMw9O9whdfDTzzt?=
 =?us-ascii?Q?jfOESCMo7ZPpUCc+Ymx1Gjv0HL9Lzq3r2mAVov/DgBl1yLJVJI9cjvfliJj5?=
 =?us-ascii?Q?iXl/WiMjlwaTdtczz8Y+g5bfsMvOmLBACaPxxXTmVlWJ/qOyG28UbnvqYSB0?=
 =?us-ascii?Q?ripn7IkzslGT/R77EwUgqcCREV/0WGNlw7GnpjcwXkGZAmpRvEfPUEDgV6HC?=
 =?us-ascii?Q?wHEHUzIDihTfY7EkRmcZkp1fFkJRDi0GiAGXkPVTxE2whNU1TsdX7jIt3TIi?=
 =?us-ascii?Q?vJa/Xv+0KMEPUAs6iETaUi0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SHiL2iG5yBXLCYBF9CFCIrzsS/V//ihKX6P8yM1KN61cRQGLB95jyHq+WQ8+?=
 =?us-ascii?Q?Geww8XinMTn1gjVuo/3pOvyK3qYWjCL8HE2JlfXzQBI0PRpMlckuagcgLrGb?=
 =?us-ascii?Q?0kQ1Rm/5z0d94LEBk7H8P4Ds7+JuSwhqpb+ZmPhgFfBE3kRYxlbhitoSAMKV?=
 =?us-ascii?Q?p6BikQN1vgVwIJfU5d50Iz3MtKm1GwB02YHbMjFycGSzAXMGhO4DJBMlhbfb?=
 =?us-ascii?Q?IvDTnidTvkt8awZ9Dy9lTgkxzBFInC9UW4Bfi5KTFSty/HkS0terFCpp0FQU?=
 =?us-ascii?Q?XOAz4wMQmVAgdTQzncDUIAwYrla+CMUC4DQSTRyGpK4UOG5XUjh1dVOZLdel?=
 =?us-ascii?Q?kuLacuC2duodJe4kit5g1zcfuFltJLiD15uUcNFib1GmZ6wxYzZsnXiaqJR+?=
 =?us-ascii?Q?nvMcu6A4m8m9fSrM1tLfwyvmeVgPeQ/+x1i0aXqgEbyNBE/B8xv+BdblsxUc?=
 =?us-ascii?Q?yb4LFT7y9WOrcdDxGkM/++GoFCTgNfdIRzdVkLDhLTvh3/4jmt+ZEZItvHxY?=
 =?us-ascii?Q?E1vtykjBlZj6uU84NZoAR/pxKgEJvz0f6fmUfNCNH9ZXf1F85RgBc7mwWDBR?=
 =?us-ascii?Q?uSxkAEZxWZfZeCGV8mxVvZ73MapJ28mPyzBCXF+I/JIKN/jGm7mXW4E9coit?=
 =?us-ascii?Q?2rEVGja7jMZn+zgbDrDZR5qGHWSAwNI3l8xBfvk4gZ9ALuXXLuukvtXpyEBg?=
 =?us-ascii?Q?6Jz5psil2zgpjpTbI5khV0n6gHKwkcwoGpk7Fo7l1Olg0m21gBkf6YSHRi/m?=
 =?us-ascii?Q?QZSPGInWMsHkZ6TZl+1Zs/pdShtALHh/Wjeiat5TTH5Hl/EK0mD3LlJbDLqX?=
 =?us-ascii?Q?4Uul3i3Yz41Kj//Q+MkXS3RNJ/ZhbYgN4GP4Ey/mhi/AsxW2Pgt6UDxewx2x?=
 =?us-ascii?Q?0fcJLLH+3cOkKDGtzraajXBxpZGIhHB0qA3umQUNpwd+uDWSrKilU2Sl0/tz?=
 =?us-ascii?Q?qb8Glz7rYYqQNogRxV8b+DuYxmqzcyYH2I0UaKE6884aFY88HFrErg86n77E?=
 =?us-ascii?Q?ZvAGrq+xhoWufF3LabkUd8i0/r5za0GR4VwAqnhQgVF0carHvT1OE6k6osjv?=
 =?us-ascii?Q?O8oG90LdA8MGgI4GWX3ji537fwh0QRoAL1ACrvEAzWEHIbu2g5R1MGGB80nr?=
 =?us-ascii?Q?iE5ceEHjYc45KDh136gCmTfkSoo7owtOkeycp1mMg5PweJQYs7m3CBJ5KaaL?=
 =?us-ascii?Q?6/TiOvybU+0CQHSNYHQAKXB0ZA2eiJ1ejAUvc19jecKylPWMezn/DviE8VTC?=
 =?us-ascii?Q?DW4YxFMKXf9nq08igjinN1wEHipqe+kQHFfjwj9+5pkU4ympDoPYL8/HS2rd?=
 =?us-ascii?Q?XqWG8gfE6o8l8/YvvBwzvcRg7xHujS6i6rVgbMY996+jjE7vZCfyS6MDLrsL?=
 =?us-ascii?Q?Ak5PWXG9ymKeCLWpTvcjTtBOvC2psqUtHE795A2O2fATUzLJTiBC2manKqri?=
 =?us-ascii?Q?vnQHYEJ/0umFfCZ7COP3w0pr1mw5HTyoeC4waPlnpa1cWmNOuevb0IVhudJO?=
 =?us-ascii?Q?vTSbjQbEqYp3/TUlnT3hx2baoWWuYrN1Zgd3GSeymeF0lgx8mJSUjnyBkErG?=
 =?us-ascii?Q?srRMYx1lAHy3Ndm+/6rRgX7HTfbrsM/I7QWdb6hNbTKZs7NC98xr/EiwFwp5?=
 =?us-ascii?Q?WVT2SmkOSubr5evudAfFiYFuC7BD6JycmxDx6Gi8khpOxYSDehABpIEZR6jW?=
 =?us-ascii?Q?0zPGipZMczwFbNFIqNMWiXcuB5GNwHbgwSfQ3Fgj7Q0I/fIdA8Ok7Zvs+Ioy?=
 =?us-ascii?Q?JvugQ2BWgNGPXJlNDGCdn5q7Rj9kf6HAjTDbEwwWaXSxaITFYzBeD3si7eMm?=
x-ms-exchange-antispam-messagedata-1: 5NgCIHw2JSICZA==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c366d18-93f8-445b-47b4-08de73a41867
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 12:56:15.3399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3VGEPshypB2GgbwvApDfJzZZOIiYfImARd9d1IQhGnrFyn9YnJnCkNED/jgW6Nh0UuJMuB1dwMuSQcuN8SjpNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9490
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[IA0PR11MB7307.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 569581874A2
X-Rspamd-Action: no action

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Monday, February 23, 2026 10:05 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH 2/5] drm/i915/dp_tunnel: Simplify detection of link B=
W
> change
>=20
> On Mon, Feb 23, 2026 at 06:02:26PM +0200, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Imre Deak
> > > Sent: Thursday, February 19, 2026 11:58 PM
> > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Subject: [PATCH 2/5] drm/i915/dp_tunnel: Simplify detection of link
> > > BW change
> > >
> > > update_tunnel_state() checks whether a tunnel state change (e.g.
> > > available tunnel bandwidth) affects the list of valid modes for the
> > > sink connected through the tunnel. If so, its caller sends a hotplug
> > > event so userspace can re-enumerate the modes.
> > >
> > > A change in tunnel bandwidth does not affect the mode list if the
> > > bandwidth was above the sink's DPRX bandwidth both before and after
> > > the update, since in that case the effective bandwidth remains limite=
d by
> the DPRX.
> > >
> > > As get_current_link_bw() via intel_dp_max_link_data_rate() already
> > > returns bandwidth values clamped to the DPRX limit, the condition
> > > for detecting a mode list change can be simplified to:
> > >
> > >     old_bw !=3D new_bw
> > >
> > > Remove the explicit checks for whether the bandwidth was below the
> > > maximum DPRX bandwidth before and after the update, and rely on the
> > > clamped bandwidth values instead.
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 18
> > > +++++-------------
> > >  1 file changed, 5 insertions(+), 13 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > index eb1eed1c8c7bb..9f3750035f68e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > @@ -54,30 +54,23 @@ static int kbytes_to_mbits(int kbytes)
> > >  	return DIV_ROUND_UP(kbytes * 8, 1000);  }
> > >
> > > -static int get_current_link_bw(struct intel_dp *intel_dp,
> > > -			       bool *below_dprx_bw)
> > > +static int get_current_link_bw(struct intel_dp *intel_dp)
> > >  {
> > >  	int rate =3D intel_dp_max_common_rate(intel_dp);
> > >  	int lane_count =3D intel_dp_max_common_lane_count(intel_dp);
> > > -	int bw;
> > >
> > > -	bw =3D intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
> > > -	*below_dprx_bw =3D bw < drm_dp_max_dprx_data_rate(rate,
> > > lane_count);
> > > -
> > > -	return bw;
> > > +	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
> > >  }
> >
> > Function name says get the current data rate, but we are returning the
> > max data rate here.
>=20
> It is the current link bandwidth, i.e., the link bandwidth allowed by the
> Thunderbolt Connection Manager at the moment. It is not a maximum (which
> could refer either to the maximum DPRX bandwidth or the maximum
> Thunderbolt bandwidth), but rather the amount allowed by all other
> components on the Thunderbolt link sharing the same bandwidth.
>=20
> >
> > Thanks and Regards,
> > Arun R Murthy
> > -------------------
> > >
> > >  static int update_tunnel_state(struct intel_dp *intel_dp)  {
> > >  	struct intel_display *display =3D to_intel_display(intel_dp);
> > >  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> > > -	bool old_bw_below_dprx;
> > > -	bool new_bw_below_dprx;
> > >  	int old_bw;
> > >  	int new_bw;
> > >  	int ret;
> > >
> > > -	old_bw =3D get_current_link_bw(intel_dp, &old_bw_below_dprx);
> > > +	old_bw =3D get_current_link_bw(intel_dp);
> > >
> > >  	ret =3D drm_dp_tunnel_update_state(intel_dp->tunnel);
> > >  	if (ret < 0) {
> > > @@ -96,11 +89,10 @@ static int update_tunnel_state(struct intel_dp
> > > *intel_dp)
> > >
> > >  	intel_dp_update_sink_caps(intel_dp);
> > >
> > > -	new_bw =3D get_current_link_bw(intel_dp, &new_bw_below_dprx);
> > > +	new_bw =3D get_current_link_bw(intel_dp);
> > >
> > >  	/* Suppress the notification if the mode list can't change due to b=
w. */
> > > -	if (old_bw_below_dprx =3D=3D new_bw_below_dprx &&
> > > -	    !new_bw_below_dprx)
> > > +	if (old_bw =3D=3D new_bw)
> > >  		return 0;
> > >
> > >  	drm_dbg_kms(display->drm,
> > > --
> > > 2.49.1
> >
