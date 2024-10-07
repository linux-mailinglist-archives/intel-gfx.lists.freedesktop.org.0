Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8D0993970
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 23:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86A7B10E42E;
	Mon,  7 Oct 2024 21:41:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dqyIohDC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61C5A10E34D;
 Mon,  7 Oct 2024 21:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728337262; x=1759873262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FoFMurL1FOycyunSpvYGliGhZM6ubX6S5/CNN8i/uYE=;
 b=dqyIohDCF9sOFzwehbSbR8vFUOlhgReqShQ0Fs/RaZaoE10A04ip/isv
 /SL9Oba3qeBqHeSP21HHu/QAxAPOerwjEO89/SJQAGb+xfgAX6MVotsr0
 zCEyJ5KNMRUbsPOp52hUnCmpf4WZKLiudEExd1CotBswXHAlEG0O25Uy3
 wKtyJM7TAfUqE04paAYSo8AXHJXKYUrACQTkoPoMM/2Rr8qdMlU8ni3um
 Jaqt2VS98vO6VHrbGTPCOJU6UlV8U2shs7l31wqX12DBP2V1y3IsnvFOU
 gDyvrSJDS1KUhvnvyK4zLFd8JHIPiqAjjC6vzpo+9bNfRL6yoMAt1tXrb g==;
X-CSE-ConnectionGUID: oV74FgNmS1Cgq+5NzMYh5A==
X-CSE-MsgGUID: 2hC12UPRTeGgSH+EGICOZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38634345"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38634345"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:41:02 -0700
X-CSE-ConnectionGUID: vvk0jCD2RdO/x2ix6Qw3wA==
X-CSE-MsgGUID: b1Dc9voVQc+yUu82BW/0Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="98938111"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 14:41:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:41:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:40:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 14:40:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 14:40:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m3PIlL19bmMv/wb5hU+mDNgVCjo0SI8RRU2171tda5UYM7qgCtL1NuRQHRhWwfOez6bMvIvZYcOZwI5CZAZ/nRWAbdQqCHYn9ht1PYLM534K1EtI7ePR9d1d1wEsKLTWb9bQmKyluLYqZo4xQ/QUqtrmTEM1rwppCnlJRDmyUaJe6oR/nkK5t/ZP37+9P3qjjNps1Ael0vXEAR/UU2JuA9hlGf79nfBGqXWcbbXEfNbq6jeI75NY5TylPxIGR7FYw8Si8QY2xxbw5VfTYQ//AbD1cXcCdtDz2fsHOFDpTqSpiBAlqmpXojJrsg0Ic40tpeq2/Y9PAkONf+5l1chfIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4UKGaIgXvif+xFEQVg9BABtwqEKas91fDXdhWAhtmAU=;
 b=RiVHgmtm7DcTL6L7lHUUbPu8kgBIV36SVSxiOE1+Ls4wsjxCBKwCSLsMJW9xmuBVOckT+mQpyyrUzRuYTFJNSgDtullMAnx2Pun0Xj+Hhodh4RJARoVCNzTrGDt/jT0Q68c3ENlj/yqbsaYlhj5+cGW7Cw4cTp2GmCMRh54OyPAoZLhq5bNgH9ivWQw063MD1s2FXd/klOvkLhm2/Xc0HKQtJrtBhRHIIKF44hQodJ3ZpR2Itg9xmiEjgObmFM32VXHr8IzIHupdREDe6nplV8J4vFoVVEHuukzXIlVPhZTXCvDfw6bwAvkuBLu0Re0TJElbg+Y/N8rfzG/ePF0erQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by BY1PR11MB8078.namprd11.prod.outlook.com (2603:10b6:a03:52a::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Mon, 7 Oct
 2024 21:40:55 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 21:40:55 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 20/31] drm/xe/display: Align suspend sequence with i915
Thread-Topic: [PATCH 20/31] drm/xe/display: Align suspend sequence with i915
Thread-Index: AQHbDsJ+ZJMIwQrRGEKNmqIXaUxijbJ75R6Q
Date: Mon, 7 Oct 2024 21:40:55 +0000
Message-ID: <BL1PR11MB5445EA31C99A7A545742D76FE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-21-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-21-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|BY1PR11MB8078:EE_
x-ms-office365-filtering-correlation-id: 717c3589-5da8-4b4d-5d04-08dce718b92a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?B+3wAihH3eTpTksmcXy3RiIY8JRDJWSKQm2LAVY/UCRiJanaTIDvQ6uxrsMW?=
 =?us-ascii?Q?U0pRA1roXSnt8Uqbs5C3kvsLMr9zKn/IYUM7MeSNWcn661eHxGG2ufWXWpll?=
 =?us-ascii?Q?VPvfFYCg4QNU4FgDVY3rH4zuS7gryQj8Ix+srErtRuon6twuVgPaPqVTPahD?=
 =?us-ascii?Q?BCzKzU90Hximfn7YFJKew30WMDnCyY3UmMhjt7d7fLkD+Oay6XY6PCNO7wiG?=
 =?us-ascii?Q?Z2Z3LBp3JjIMypKlcg7WaG176rcYynBvjmOI4tY97MhKK7cqj2nocubOsQPT?=
 =?us-ascii?Q?MZftaPesEOQ7/aRZ+90YVgvrIbSUGu6xCng1mgnOzG06YdmiNwqwqPmcjLM6?=
 =?us-ascii?Q?LwiXGBIW0PAHAN8O2eXP/LLgxGzJdn44nIlYr3+SiUOxTuz1k+VkUbxMIcWk?=
 =?us-ascii?Q?cCTZ02Yuk0v0WwIDYYj8M3bZ+OyTs+K08tTPhhg3jpfHC+20Q5zRtVmcAcp0?=
 =?us-ascii?Q?+y53ZeWcnVKSNSfFyqgEq6nnF3lg26UlWQxNt/h+v9x3syOO39whgzGxTKx2?=
 =?us-ascii?Q?eij2rwoNe20LH65PKGR68mVxF0kk5sHxbMmXip06jNcYYiWm6sRpSjOvn3MC?=
 =?us-ascii?Q?qktmNRXDyIIRiAO1824XmjYK9zTuD5AD/QJwlb265NinsChXmGU3z25kdIKX?=
 =?us-ascii?Q?k1SHPaQFvsnftwthbhZYV6gCj6dYXf9FNThxrm4vI9pJkHFQGl4DoFfAcmnB?=
 =?us-ascii?Q?w5QzfC42ZUCBVy8luAPl7KoCKYRDyELTIpmrhwpK1XjhCQ7eFfKGY/bi1o8s?=
 =?us-ascii?Q?Ad4eXEUdkY3XdExjfNz6qV4keBv6OlINHiC2Ogr79mrMur0/+thsZR7tYCdT?=
 =?us-ascii?Q?9xHfNVrXFjNEn3aObEW157Z2OsKz58lKfZX80yPj7PmD5+I0una4qRlpdvSp?=
 =?us-ascii?Q?InV67No+yBHnV46egcBUKsMsLk2reG5BLwVcGndSPgPe1Wl5F3A2UOXbFL51?=
 =?us-ascii?Q?upkEc093qdZM+wCHbrCFpeDE57c73Ph2mtFMeI0fKvvHlha3Q7DQ5icTtm4c?=
 =?us-ascii?Q?Y+NeabGQ3UKVN7Txc/81SkuMDiD9pqLN6NlVS3CPbIOe+kVZqFxELAAx2Aq/?=
 =?us-ascii?Q?x2D4UMTNBl+cEpXf3kuoF6p0awspc//o2OFyzJcjbuN4oHlFjExfhomyNMmx?=
 =?us-ascii?Q?88KJ+nvhHCbW2+42pEDqd4cZd0mCRLhLL6iMUxvZo23UAcWpiUTWWHlcPYCv?=
 =?us-ascii?Q?j0n5YnWXbGNM5avOxaj7+mJk5oNe4PMw1cch15HwzuxIXv/oeVU74Jhu7hPM?=
 =?us-ascii?Q?FkqQYxQVqaXx/I0tDIysHzkIVrxdiO8x6viLFvIMPkPHhKabDhPkjy/01eaP?=
 =?us-ascii?Q?6LN8irjI5pkS39v5eKsVeOmMZ03Pd2JvJh/JzLmaBzLDhg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qlXwQ0DKKcif0YJX1ipFNV+NsWYKSjPc1nNYzCCbE5yhMx+wKVzk0aI5+W5e?=
 =?us-ascii?Q?9lth0C87exUu8f3/4zvU2qgQBGrbXQ6DseAWsMEXFbXM1TZPElfnbQnFDU0v?=
 =?us-ascii?Q?+1gVYgzk6hG8Nm2/cY8cf/yaqFNzLuEFYq6SjZeJNXEUc8NKjLDHuIcnUavt?=
 =?us-ascii?Q?ImwoCpvaJ1IviS31qyT6+fQHhHtxSWRARTiUFpPZnMusT4ai9bFuc28D5hwW?=
 =?us-ascii?Q?f6ZYFqaH0cgHVwCF+klU7obrJ/ajFRgg9g9G+Ef935n9Iic0UVrTiVLy9MMo?=
 =?us-ascii?Q?nj86l7oelxB3lH5/6dEEC2VZUTLcZfbyUIg4w3UiCSVGwTTrCs6cbi2mA/UY?=
 =?us-ascii?Q?yQhT59BznCKvzZLNWUtFTDGvUq9ADBRgRNoq5ZvYR8q5K0kHT90R8PsuMXBa?=
 =?us-ascii?Q?oURiiR1KAdxlPmIVZSOe0bBkrbcrmlPMHbSeHmXjbZXXO4o1k1R8Pr8QkfA+?=
 =?us-ascii?Q?AGjq8iWjEtAIsLcxwwTZMEhLgVKs8RzKsNPDYOQGLw8ootiS7NxO0Tiwfe2B?=
 =?us-ascii?Q?cycZ0mG73QGz9FUDVOEOgai2z9JVZS0h+uHvCpwcJPnPVMLjReqkliRkhB8t?=
 =?us-ascii?Q?Gipj4MWjmI+aXeK88JgsQgXb9TZFu9/3CEt/fzpZObTg/SzlvRCTXT8KmfVi?=
 =?us-ascii?Q?e/HPuOj0HFQ+g183mLSiMNHEhejtsJ+FCCCtoiz+UUtCGGQlkrGaO24UrA0J?=
 =?us-ascii?Q?zv6C7xotT0msndWNuxlF8V9amSWfXHccqSyDFcOP/zpzE8OueR/gyE+83Pos?=
 =?us-ascii?Q?pfK9RtVrSdHelV6TXdpmpD0CB6gPByPyFRbHOC2jeMeLP/tqRPnTyIvE+URh?=
 =?us-ascii?Q?S6l41D9yA2HrjY2QX1rdBP+ZeYDzeXs5B9IdDG//IQukj09hZ75qMEwnZ65T?=
 =?us-ascii?Q?jtqcYd9gIvBI7ZoI0rseauzUVK7IcO4e4/HjBwiFJPOZbfifUEPzA+gMDDNU?=
 =?us-ascii?Q?M9IDpcSrtLEfFABOcSTBwnBp/Q1mZMjaF02q2bdkMPG2FFBugSnnmW6TgYkp?=
 =?us-ascii?Q?g+7RY2kxQ3oDd0tJJIYN/MO0XV9MptcWt/aYFG/Lslad+1U1+Xc1q0DCz0G6?=
 =?us-ascii?Q?kkKaQYZAcjJH9AmHPciJfSFxSAWUZTMNCq/FqdgPqlcq4HhbC6k2qSgI5+VE?=
 =?us-ascii?Q?s/El7dswb53pEAjQWkiNt0r/I4dVP8EsF/C0OjbF8grhT0VnRXyKi79Ywkvj?=
 =?us-ascii?Q?rjc7k93P41x5ND3U2I9mWR83ZG3bLCRtXgwr11TJJ5YPqmmDeZsuLyIDaf/M?=
 =?us-ascii?Q?HgJUFD2cmE1RyCTt7FgmUQMljdOCbS4qGhhfIYNPZ3lylLGna8VZ77i3rKuU?=
 =?us-ascii?Q?O/tJdjT6xE2ZAzBlHzOSfb4hLRUoU04EE7BDDAgSRnbJAy0FmQ9h93kHGO+B?=
 =?us-ascii?Q?up6DRyKLSe9O3QQNt5Svj1HbOZQv/UicFAOGW+RHdm3xT3R5RlY9JSnTwwTm?=
 =?us-ascii?Q?5c2q7KikW4h3Ob72T1tfy8CIA1Mv1g2BhIXCT0R3mYElEo5X2oq/v8kFJGYf?=
 =?us-ascii?Q?2zwE+KQQQjrEGxrPB1zLen00cGlYxbHPWN5xSDcXnKtacO2fLN88FD5Bsnd6?=
 =?us-ascii?Q?i4EDg6D+Dwoy+yB5c+wI8uWGC3FtpUrWMwnMXUPR+w5vO9plMDCOuSxZ+yci?=
 =?us-ascii?Q?+w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 717c3589-5da8-4b4d-5d04-08dce718b92a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 21:40:55.1140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1N6eSJgPVw58cjibKcH/xjNMowpEtkZbt7nyfGoNcO0GR78JGlsmuRtJU+752ZTlpGjUCFCaT4+oMGOC4ZQQsLjoxHjTejM47nA4cADYqT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8078
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
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 20/31] drm/xe/display: Align suspend sequence with i915
>=20
> Move a few things to after GT has stopped and also
> IRQ has been disabled:
>  - intel_hpd_cancel_work
>  - intel_display_driver_suspend_access
>  - intel_encoder_suspend_all
>=20
> With that, also remove the xe_display_flush_cleanup_work,
> which is no longer necessary.
>=20
> Then, use directly all the intel_display_driver functions for
> a full alignment.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 25 ++++++++++++++-----------
>  drivers/gpu/drm/xe/display/xe_display.h |  2 ++
>  drivers/gpu/drm/xe/xe_pm.c              |  2 ++
>  3 files changed, 18 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 959635653cfb..44850b6cd382 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -342,26 +342,29 @@ static void xe_display_from_d3cold(struct xe_device=
 *xe)
> =20
>  void xe_display_pm_suspend(struct xe_device *xe)
>  {
> -	struct intel_display *display =3D &xe->display;
> -	bool s2idle =3D suspend_to_idle();
> -
>  	if (!xe->info.probe_display)
>  		return;
> =20
>  	intel_display_driver_suspend(xe);
> +}
> =20
> -	xe_display_flush_cleanup_work(xe);
> +void xe_display_pm_suspend_noirq(struct xe_device *xe)
> +{
> +	if (!xe->info.probe_display)
> +		return;
> =20
> -	intel_hpd_cancel_work(xe);
> +	intel_display_driver_suspend_noirq(xe);
> +}
> =20
> -	if (has_display(xe)) {
> -		intel_display_driver_suspend_access(xe);
> -		intel_encoder_suspend_all(&xe->display);
> -	}
> +void xe_display_pm_suspend_noggtt(struct xe_device *xe)
> +{
> +	struct intel_display *display =3D &xe->display;
> +	bool s2idle =3D suspend_to_idle();
> =20
> -	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> +	if (!xe->info.probe_display)
> +		return;
> =20
> -	intel_dmc_suspend(display);
> +	intel_display_driver_suspend_noggtt(display, s2idle);
>  }
> =20
>  void xe_display_pm_shutdown(struct xe_device *xe)
> diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe=
/display/xe_display.h
> index b4ed5b598c2d..256bd2d23964 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.h
> +++ b/drivers/gpu/drm/xe/display/xe_display.h
> @@ -35,6 +35,8 @@ void xe_display_irq_reset(struct xe_device *xe);
>  void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt);
> =20
>  void xe_display_pm_suspend(struct xe_device *xe);
> +void xe_display_pm_suspend_noirq(struct xe_device *xe);
> +void xe_display_pm_suspend_noggtt(struct xe_device *xe);
>  void xe_display_pm_suspend_late(struct xe_device *xe);
>  void xe_display_pm_shutdown(struct xe_device *xe);
>  void xe_display_pm_shutdown_noirq(struct xe_device *xe);
> diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> index f5d89c326d46..77eb45a641e8 100644
> --- a/drivers/gpu/drm/xe/xe_pm.c
> +++ b/drivers/gpu/drm/xe/xe_pm.c
> @@ -140,6 +140,8 @@ int xe_pm_suspend(struct xe_device *xe)
> =20
>  	xe_irq_suspend(xe);
> =20
> +	xe_display_pm_suspend_noirq(xe);
> +	xe_display_pm_suspend_noggtt(xe);
>  	xe_display_pm_suspend_late(xe);
> =20
>  	drm_dbg(&xe->drm, "Device suspended\n");
> --=20
> 2.46.0
>=20
>=20
