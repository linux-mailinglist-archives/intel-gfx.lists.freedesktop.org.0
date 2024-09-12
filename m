Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B739760E8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 08:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5CE610EACF;
	Thu, 12 Sep 2024 06:01:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AKH41eFK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FDA110EACF
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 06:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726120868; x=1757656868;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FJmyZhdwwLZ4usxjBL5cfCVRJwXHFQXeIa2xvZKRkUg=;
 b=AKH41eFKMyWtR7WPvL/V37VUpMXVXFBvVadqeMa5KEDo3AW3p9KOhoNY
 E8IvmbBNXSXaMpvvM7bewwF6QoqZrg+DEBpcHfThfeeVIvGdSfteLHfQe
 uSCGnPXlx6xIDMWgLrFqpUCgYHGoGMZWP4gXuqkWXKtRxoNWdvpb+3fey
 tjj0C0SEjGOHis6ShZwkK0igFKo+P282v8nqhE6dFG+KGV+k2aQKwh/F5
 5F6h/NZn1WLTvA/N9Syv9HaSPaOZLUe/wDMSEfwHghcuIf6oBJYskp+lj
 eidtngkquTJC/+CyY+5Wi5JRXZEhpliWT4d6M5YVczpLHTTbQx1gqtzmi A==;
X-CSE-ConnectionGUID: MfAFOxmVQcSdXp/8X/zVGg==
X-CSE-MsgGUID: wnnu1xQjRMC9/HcCg5J+CQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="42429232"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="42429232"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 23:01:08 -0700
X-CSE-ConnectionGUID: kiX3nbMXTSqMzX/be3FDJg==
X-CSE-MsgGUID: Z+XLTh3zQ2yfQnbUfaNjFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="68107426"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 23:01:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 23:01:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 23:01:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 23:01:05 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 23:01:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SWi9zYD/HIhZqt6e1ei+Vunzweu9i7VZn0PakFefbJy0crKlvpbiX0VnQlPdbn/l1ejuQGMn5VCaxkUM0mqoEjyhyGpvEabLSdCe/CEuHbaSd9FrC5quK7wqLM+VdgzXYei3I/spJrSV7MhWkePvle9UcTQhPDME+uwZq7hAOiLOAcjVRXstd/tDor2FZcqpirUu4M7MKR89iWLiFq5MAI9Fqy7HRsLcvRxhIH4EkUzI2FJRdL/LrMitzc84I50wf8YU/S2+fcuBbyuzExI3NfP1ALBGWfBmwaNlOop+6QXH3U3CCHozHB/VF9P6VmdZh8BWD+ixLfZzXw+l8TCjxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=evDopLFFdOtuuTX/VB8yw1N2totwzTg7CjcFBCwA8J0=;
 b=KvkBSkKqOVqAU+3ASV0vTHJ7G1YRaA97Ply2zFDpa+G3ld2ZfKq8Kd3tXsXWsv5bIQ6Tt5UKlImsS6Gl65jksmsDahLb/Ku7iu+1qoA4NSY04TIVmnTpf1T2d2Klu7T0lbwNAABRD0uE3W7F9l+wdD4P+c/QtObNkefgZO+zPauKDkf3BnaD7gvncmFUCAicUEVrZUqSo3Q0x476KDMotSfw43/lkHy4fO6mI9k9SAAZhF6ahpXDvw8+lgWOlq8uc3azs3lNvNqZTVxF0xhKW0NiEux2EB+GjKBSY/zQBK61jhDGB54cZjq/fSk6AH8c6hEV/58GWkP7N/wsUoFZMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB5919.namprd11.prod.outlook.com (2603:10b6:a03:42d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.20; Thu, 12 Sep
 2024 06:00:58 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%3]) with mapi id 15.20.7939.022; Thu, 12 Sep 2024
 06:00:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Golani, Mitulkumar
 Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Subject: RE: [PATCH v10 3/4] drm/i915/vrr: Split vrr-compute-config in two
 phases
Thread-Topic: [PATCH v10 3/4] drm/i915/vrr: Split vrr-compute-config in two
 phases
Thread-Index: AQHa/1W09FnMKSqY2kijjKfoVlJXIrJTUawAgABhfUA=
Date: Thu, 12 Sep 2024 06:00:56 +0000
Message-ID: <PH7PR11MB5981D0B78CAA853DEEFD78E1F9642@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240905051841.3012729-1-animesh.manna@intel.com>
 <20240905051841.3012729-4-animesh.manna@intel.com>
 <ZuIxdIP6P437YvOH@intel.com>
In-Reply-To: <ZuIxdIP6P437YvOH@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB5919:EE_
x-ms-office365-filtering-correlation-id: 34b529b1-d3e6-4c0e-98b0-08dcd2f044ee
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?1TyAIm5fAPPKNzjaEe7LO05XIS3OdFwnlnFmAiEaCho0qGZ+iKHYPXCu1t?=
 =?iso-8859-1?Q?m9WDmAi9uyHHsoG7Yqjj9ENy1/ZDWquliEh5Ogz8YUMAkJST1+fzrLTPw1?=
 =?iso-8859-1?Q?zrd2yspgTTtS2dlMJ+/STFBjsjWGvenA1Sllo1cl0zBlUdCxUPJRSj3IcK?=
 =?iso-8859-1?Q?omUqTrQDDf3UUQFvKM5lfF0vuDNKZl7hn/b7VANEgmQILBRyXcabO6Q7oV?=
 =?iso-8859-1?Q?cDBQwzFOJg9p/VH2AikppEI3auKgSWEE8l+1EFcjH+jiUj+teKwtv0+AnE?=
 =?iso-8859-1?Q?2RIQVrdMhm0HoJzSeY1hUOzaqrYTzLs61x1TnHrhEFel4RJuNHOnNg6DnC?=
 =?iso-8859-1?Q?9fpfb1RYOy0P4hCLVRaj6yr/E/7BeO59v7JQWZci4PgJpoBQe/eHoTlfm3?=
 =?iso-8859-1?Q?qLQfPRglMyixYtENCfim01hwURARn2CHLhFHvaf4GeiW6FNLkVPKI5QeXr?=
 =?iso-8859-1?Q?dd/gbuxWj3mVfFa0nRmFgppEbC/xxsuCxr4cSAJcbepdZshrJP5RaJKASs?=
 =?iso-8859-1?Q?c6iop/nxWVdf14wPWZrlHEgrGRAO1dRSvDDA1nELVLafZP+FjLCREtYgIT?=
 =?iso-8859-1?Q?5TwXSbsVtu3jNKQBWuOiKffj9QpB7MBo68CqKBiwGZzEl5W/Nv8h0OR9QJ?=
 =?iso-8859-1?Q?+4mzlPVMboHuBAENYFUI4vAQBaLMx1PRuI7QBg/1VsDrQN9H+hfPHfmrcq?=
 =?iso-8859-1?Q?MNy/GiMk2w8yjjE3xYM6SPFd00eZJjxfZ5pCc/GoD5/LW4qr1RM03/ke1q?=
 =?iso-8859-1?Q?8C4YpIKgD2hj3aZvjSR9vEvUSG3uYoiDoOsQxh7RdnTbM7pAuhn4cWdaKp?=
 =?iso-8859-1?Q?wPuoQ5/erhNOxM4+P7iJLik7kFk1SrshU8wb/BXE0gNgOanYqu1ZLAKsCl?=
 =?iso-8859-1?Q?EZfXscsy1qzcm+JpMk/vWn+E/rj5KIZfYAN4PELDDQnPOVoQkDVmCwX9pu?=
 =?iso-8859-1?Q?FWXZ7WgLbnQznr1XobWT4SOeUnGe8SzmGj1cLaN9aJPDy/mQnynhCBy/5M?=
 =?iso-8859-1?Q?stGS7LF1kvc4Yx9Sm1YSl1ZkcsCmorrV4ENCinFvT2lak7gpbivlJlyYvr?=
 =?iso-8859-1?Q?YUNJcmIQ2hYbIThMiGETg73KG0mAnmPh1VrlbkflG2RCWjnEUgro56KAFT?=
 =?iso-8859-1?Q?P2hp77horIVOQQ9II2qUHegEdAuUdJTck/6r7nROpdkv+adm0keB3i+4Do?=
 =?iso-8859-1?Q?8DiNxx4b9j+GGL3WptqFqrudvfPmFGvglqc4QWY387fHhHQSZU93yiTiCM?=
 =?iso-8859-1?Q?1y9WYIKOFDBXB1iTJuVnLEtzct5XoGD2kTrHr2P20rWt39EF99mDiAupuY?=
 =?iso-8859-1?Q?rWT8WzF4PQKgs+pIa3GRG3siOVfx+9WiJprEnP23u3jEVR0A6gKbt+NkPO?=
 =?iso-8859-1?Q?zG8Qg7yg8UYGwbxdoLGk4DsMjFwVBD0B1ZpOn0SX95z46Pldv/ZuXwuP5I?=
 =?iso-8859-1?Q?SgQhN4wYZOt2rnZHrr1fogAb1+Gx2sNkJWVYIw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?lZ+/hJ2T/7HtTA3/7BX8bzIK3hjqXnL+0D0DYYtQowxfJN5pycs48tngzO?=
 =?iso-8859-1?Q?/dSXeYtE18I1Cs8rzTV2P53rJQumPTQYSGVe4ibOPC7/bBpE8TaQEHhvJt?=
 =?iso-8859-1?Q?q7mTSiFihaEaBE3xyqs0/rGVQORUMfPW57owKYwWyIJ4gfTS6zIRZibNdx?=
 =?iso-8859-1?Q?OQRDqOuBdQgDyt5faLHkri/VU3v6L89iXsQ1kHO+zbrPHFeDouWP3dIQSN?=
 =?iso-8859-1?Q?N9IVNQIkxtY5MbY7KXVkggKh79fggbcJ6w4RTp0uEHOykfTr/+YLQn3mz1?=
 =?iso-8859-1?Q?B2QGYTqFLV8RH2JOWS6cag9Oji9EPtjTMrMOn8yu359c46ZgJXBMvaE5HC?=
 =?iso-8859-1?Q?EGiX674zWe3WZca7drtTGzhSh+8iHrk7X9g3rGShP792DAIMYifofOTcJw?=
 =?iso-8859-1?Q?/9vJ6AazHUmWaN3+ZzPphKWxGZN/obcg/eYtoH4ymWEE3uUuWlhJGhAJtt?=
 =?iso-8859-1?Q?T6lSAO7/8s862XFPAdDYfpCuTZZ3y0JArg1A0B9qTK9L/0duFK2koy+tC0?=
 =?iso-8859-1?Q?B614VX8nL+oU136M9mmEnBjKQRqj5/tAGjvWGfDYQhrmpJfN7yNrf6ks/l?=
 =?iso-8859-1?Q?+7TaPov8UtxSfLR59k+WQO+gQ0yKAwyAHjX/ZIWIzkunXCvvgCiE0rRBpT?=
 =?iso-8859-1?Q?Cta1iS0oz63bBhJsTqjdFPNsGVepFqvyyj/hZwwBiCNA+wvXnOo+cAFfqP?=
 =?iso-8859-1?Q?dH2Pwmm7Ry9gpJYP64B2R6EH7nm7qKgzAg5Kc5MSHDuaDfgoiynode+DF4?=
 =?iso-8859-1?Q?yc3zPn3edNuJpV7qu0SV163MTgwn/aEyoudr1v29H+WVzi+xbeZx1kHXOc?=
 =?iso-8859-1?Q?/IJhKHtRbkb/VFZOLtaA0w3QRVWJKGQW3JTTrAKJq+ruZWnLn1pkzptTmj?=
 =?iso-8859-1?Q?sYjcVn/R133mcXyHMh7VnnPVJP1Pr25htN8RjmEroNwwzYuWhPkoY6GPTN?=
 =?iso-8859-1?Q?pYxAEQIgwr9Xj1cdXbu5tgtAUXfoYa2+wJ/6rwYWwpvWRWpWkp3QOnmuW8?=
 =?iso-8859-1?Q?vCRVsO0pLjVbzrjAj5+k2aHHwc8/0FmzcFhyxPprXhxv4XJQPl6HhLnE3O?=
 =?iso-8859-1?Q?HkGhgrJyai+CPZtdqO8fOfulewtfglkWl08Jizz0F+o/qwlWdsN/huwtCR?=
 =?iso-8859-1?Q?21BMVR56L7azgazPCvS4aEMaBw6fsutdmhUtqP8wcnHj7cCn1LuqwrOyyP?=
 =?iso-8859-1?Q?S3Rk9urcj8PphdQVAiZbOemPNM6bLmiPAvMuRKVS/4sIFTB/VqEhcE9vlG?=
 =?iso-8859-1?Q?dFNuZ9cKoWOY3vZXBnZ4MezU/DI3o6RkN1RoWgqUPkh7VF6oE8XcQUS5mD?=
 =?iso-8859-1?Q?KqWnEryojp1Wfwfuo3i6gKvlW9107P0kq+Hn0P5biARMNg9ztE/RdIPg7s?=
 =?iso-8859-1?Q?49sVvp+9cL8mgnGba7PYvKoz1/OX4SMGJAtwaKJuRNfdBj2Q5HFUHlX1Yo?=
 =?iso-8859-1?Q?immHXY74zW9lLhHD2EG6wUOo5sC153QqLUIFGs5leMJgvNQkL6CGOgjQah?=
 =?iso-8859-1?Q?ykaOZT8QpNZlMtd4mQqJcVP/zYao4TFOKAZHExPb4ag3ITsOIxWKpQ+RqQ?=
 =?iso-8859-1?Q?zbQZBMEFYHdnUAO6n75EYupOq+N7cmG3eL9b5ANx/tHAZNT+dV5yAf6z0w?=
 =?iso-8859-1?Q?0fI6VaMQ+AvyL7EqOw3OPaJZ1CyP0V4MxY?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34b529b1-d3e6-4c0e-98b0-08dcd2f044ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 06:00:56.9877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FB+mMg2Bd+7UO3mHTIiEdO36TTkr0EMTHJkZ1iAWNKCCUR3mW3qZNBY8y5AklA/H5hM1G8rEXVA3jLHyqDGXTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5919
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
> Sent: Thursday, September 12, 2024 5:40 AM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>=
;
> Hogander, Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>=
;
> Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>
> Subject: Re: [PATCH v10 3/4] drm/i915/vrr: Split vrr-compute-config in tw=
o
> phases
>=20
> On Thu, Sep 05, 2024 at 10:48:40AM +0530, Animesh Manna wrote:
> > As vrr guardband calculation is dependent on modified vblank start so
> > better to compute late after all vblank adjustement.
> >
> > v1: Initial version.
> > v2: Split in a separate patch from panel-replay workaround. [Ankit]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_vrr.c     | 13 -------------
> >  2 files changed, 16 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index b4ef4d59da1a..7fb3d35f7124 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4794,10 +4794,26 @@ intel_modeset_pipe_config_late(struct
> > intel_atomic_state *state,  {
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct drm_display_mode *adjusted_mode =3D
> > +&crtc_state->hw.adjusted_mode;
> >  	struct drm_connector_state *conn_state;
> >  	struct drm_connector *connector;
> >  	int i;
> >
> > +	if (crtc_state->vrr.enable) {
> > +		/*
> > +		 * For XE_LPD+, we use guardband and pipeline override
> > +		 * is deprecated.
> > +		 */
> > +		if (DISPLAY_VER(to_i915(crtc->base.dev)) >=3D 13) {
> > +			crtc_state->vrr.guardband =3D
> > +				crtc_state->vrr.vmin + 1 - adjusted_mode-
> >crtc_vblank_start;
> > +		} else {
> > +			crtc_state->vrr.pipeline_full =3D
> > +				min(255, crtc_state->vrr.vmin -
> adjusted_mode->crtc_vblank_start -
> > +				crtc_state->framestart_delay - 1);
> > +		}
> > +	}
>=20
> Pretty sure I asked that to be a proper function in some earlier reply.

Sure, will add a function _vrr_compute_config_late().

Regards,
Animesh

>=20
> > +
> >  	for_each_new_connector_in_state(&state->base, connector,
> >  					conn_state, i) {
> >  		struct intel_encoder *encoder =3D
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 9a51f5bac307..de17a8ae831b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -239,19 +239,6 @@ intel_vrr_compute_config(struct intel_crtc_state
> *crtc_state,
> >  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> >  			 crtc_state->hw.adjusted_mode.vsync_end);
> >  	}
> > -
> > -	/*
> > -	 * For XE_LPD+, we use guardband and pipeline override
> > -	 * is deprecated.
> > -	 */
> > -	if (DISPLAY_VER(display) >=3D 13) {
> > -		crtc_state->vrr.guardband =3D
> > -			crtc_state->vrr.vmin + 1 - adjusted_mode-
> >crtc_vblank_start;
> > -	} else {
> > -		crtc_state->vrr.pipeline_full =3D
> > -			min(255, crtc_state->vrr.vmin - adjusted_mode-
> >crtc_vblank_start -
> > -			    crtc_state->framestart_delay - 1);
> > -	}
> >  }
> >
> >  static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
