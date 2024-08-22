Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF1695ACCC
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 07:19:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D5E10E043;
	Thu, 22 Aug 2024 05:19:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R9cfYI4/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF41E10E043
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 05:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724303992; x=1755839992;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ndj9HdIBULmAo5wKevP3LjxsWps/QrhZyTN2MRVS4oE=;
 b=R9cfYI4/JnNAtLAtlU/WgGBM8SVwxnPx7r3w7TICz1dVcnPnw/YvS/F5
 fomiM/vZLU+Gx5yTTFTnS4F7gPibzv9f1lbugdNHbq0xfWMIb/T0UCAK8
 BXCPutZ2PdBPzSY+yFYjWrRX16QjAnQtXz0zDrZoQK5lLSG4WnFNw6mG5
 9KxIfSakfMoqHmLMNj98TaLU2RXCN9bocq9FEbaGu2dg0U+zYRq+Fmny0
 hKU9aNmU7zEGFMonldhwYc/LuHLOjDsDGBhEZNjhXDu1SRPb8SMgLP7zo
 LIUxSN1hytf6cLIT5ziMfrYlbVbDGF6U/JM5ezT9XXg1PEiPAujYLX7se A==;
X-CSE-ConnectionGUID: HuTecY/7QjmvDGQq77klGw==
X-CSE-MsgGUID: q+w1GiZhSLytMCZCyGatNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="33265174"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="33265174"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 22:19:52 -0700
X-CSE-ConnectionGUID: 7PkYXdLdTJau/II6jLKCWA==
X-CSE-MsgGUID: 5xnPENeUR1yo3ntU/Y8ZEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="65517350"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Aug 2024 22:19:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 22:19:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 21 Aug 2024 22:19:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 21 Aug 2024 22:19:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 21 Aug 2024 22:19:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wb5vFM9UPEj4bei9xeDTYw1THMrqk8rQI2UOLWsSPq/XvYSSeLZeFbOWd2M0gNWIKxz7dUA+Axtp4Zv5Vfl2fSISzTXK+IXSS91g7cjlTZWlHvnIu3HIGBbittVUq/zn03eLslVOr4sDp1RQ5Q/uJ2TpSKEgx87F3rWNBldPeUC0FHPaCviiDh75SLSgUQ2TazaptQ2Vl2w/EVnrLG4dlYoeEdqbQFdXel5suvD2Jcu4ic0YWaIZwXu5AVkdQUyk3WXMlAo9z+X8dlsHBcGBJOpwJV923xzW/yUk5QVYLFLq0XR/taMcuxY9+ancu236WP4UTTqk9vkjvEJkUZSHpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5vvXzDToBaPWTXx5OA66L/ScSUBQVG0SBH+QHF7RgiA=;
 b=kSZ6wlSnmA9yUdnVHcb1ujM/BV5g2fokL+Z8GnXLEQ5/3mN5HVWEQ/m9eeLObe1Xnzgv11qX36bJeVK+EUNbgNDcOHL35oNSDHSR20RAU+MCPUoVoicSq4AFgokEtM4lwWjivu5OV9tKC+XKFnCkxcHRTRNp5Hw7MoV2JiFDXyHERhVaegIS6aV+n1vjhChQITe19I7YGU7mc6Q58za7DuVe8Z5zAI0cd5YoLF555OW58Ia0WsOuNPhpddf3bc2IzbYHVCJ4WXUk72t9/T29MeutDrCTbFksBQd7nPS8lopzqidNCk6oKskaOmcOND9zythcevcGfsUw7fvn5VyhIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Thu, 22 Aug
 2024 05:19:42 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 05:19:41 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHawgLhJDwK0E32/Ei++ZOy9OuwxLIzH3Yw
Date: Thu, 22 Aug 2024 05:19:41 +0000
Message-ID: <DM4PR11MB6360F27C7A98FAA3D367F6A1F48F2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240619043756.2068376-1-suraj.kandpal@intel.com>
 <20240619043756.2068376-3-suraj.kandpal@intel.com>
In-Reply-To: <20240619043756.2068376-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB7062:EE_
x-ms-office365-filtering-correlation-id: c0c8c0cf-c5e5-4d53-34d4-08dcc26a0697
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Dz9Y0EAQehGiYSgMOC0UmXY9iDm4beChqXbaUZuPs2hLjlt158fMUso/OslS?=
 =?us-ascii?Q?GxoL612IYtJhPrlvtjjSGtXcUCGTWl7HMTCEhg2xiPkNCRWkl/1mvYnvopsg?=
 =?us-ascii?Q?0NKeyKgkhj5Tz8MX8BG2KzYxe/Y+nxjefAxtkojGeSUYLBjk2IvrfTgHn/wM?=
 =?us-ascii?Q?E75TvOXdkdB+G/6BGdu3Y0mEFvhB/Re7tMZFxVWxk4EPoYbDyZkB5/v3XArc?=
 =?us-ascii?Q?gJUDMNUiI+wI2hSAiaA5kbo13fnfUccfE4h/kPZuDz6HrXDJtAaZT6MqWkba?=
 =?us-ascii?Q?CjQwl/c/WZGd7hPgX1mJGt4R13A9Shxu3zdjGzokm2r75JkiLBCNYPzLXZz3?=
 =?us-ascii?Q?hNj7HT5xwMBhZfB0b6UiJU7JV1g1YVY+WSUGGXIhIDWMiQpzTjIotjTswvkg?=
 =?us-ascii?Q?v2yNlY+39MwFT6AU7nFcerDnb7ACdluaQ5BP1QT9zCRXt+80rSmXk4G4QgTP?=
 =?us-ascii?Q?se9tt8ntPf8nqgNZTWPGr29yfGqCrA0e32CrmAKWfkjD2MbF0Ur4HEy4uTbD?=
 =?us-ascii?Q?8k6xIoOG/P2xyr3gtCziV1NCwNfmZ3SUs8aVFn88RTsdk7yKmxQKUgxN60bc?=
 =?us-ascii?Q?d0D70v4m5GP7xQU6mG2VW55O80rOnYJjTOJSkedj+d+2IMGFrhXEBd/xXyvz?=
 =?us-ascii?Q?ALNTIsW17WF/Sz+7NV8J1lmv+FZrQWbQivtsPPmd1/E4fOzhgZYMhtvkG10c?=
 =?us-ascii?Q?R+x7dRBTB2NW0KKwtMXryI67XnOK175Ly1m9cfu+na21oEiEMea3mW6PGiF4?=
 =?us-ascii?Q?YEj7ooCzBlt1PkCVIEDKYmTAnrMWEdvqYg5NMFcXXQzpkFEmvs7bUY5Y1scM?=
 =?us-ascii?Q?OBsaxTl6Ak5a+I2LlVL29oJbgxsOjkWvhqdAlCLm2ijVZVFvfRYZ3qeGlyA2?=
 =?us-ascii?Q?HYVVdZE6NGuxfXrk5GlNP1p3/YORL7+yWK7ReCbDRBtHPSchrrFIaGWeGjTz?=
 =?us-ascii?Q?S2UhHmcyY6sVjfNOvJG9J/cQM1mPvVTrqPB9lZtnVKgXLbq+vY1dEEnX4Jxz?=
 =?us-ascii?Q?5xVGulMjGc7Odfx4/OfCpwrCkyoxJkZo8jy7Rs5eQc6Q9O6yEMn/gFW253rq?=
 =?us-ascii?Q?KSt5skhYw8O2PfGw4GbKKtUi/S0PO1sCIv2A+owsqyfU+xrubqCxozhZX+NR?=
 =?us-ascii?Q?b+5dlANoGEwZckktfY3vOIqZUEqb4tLstasGfpu3Nmuhzk+jHYl2QtYPDThr?=
 =?us-ascii?Q?tj7LOZi1DCJchGNRXE8Ggr/+JdEjR8KwFKfOi3yqYrWeRUWXX2CBUcGIaddP?=
 =?us-ascii?Q?q1BNA/BxDtC022Byza3W/HMThbM4WK9KtYJMQKtdLlfK7cue8/aySiAeoPa7?=
 =?us-ascii?Q?hL2tkmBHCvas5crq4qh3W/U2LhOLnZ7myI3Kp/N8yVivdS9h9n4+kc6DOKa/?=
 =?us-ascii?Q?L6BfEReu/RFiYGEhxZKlIZbHs0LgeOXa0/oGhIOpBcauHQDv+w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?s344cwfpscNdvW6b8l1TZZPNhi7YPP0/ZwOJ1K96XbcaYirJAjqVdQCeSiXr?=
 =?us-ascii?Q?zdNBbmvRyFoZUcUCgGLT/p/IwLhbOYxFoEsCRl9+YaFBxIfvKEbNO4v+E9jm?=
 =?us-ascii?Q?erQa8+aykL/JW+wIorwpjQQf+NBRzR7dyuTn0G97rjH2VxQ07b1G1VyQsP9P?=
 =?us-ascii?Q?h1bTh7d3+ZH/ZVHbxb8/VCuhObKo1JBLEME8eCPWxdZtrC7LR+IBflCqb9jN?=
 =?us-ascii?Q?502c5cTkrBH+Eu5hwRQ45ILIehCGR/GRW7zZLuWVEZPYarEGA8hti50L4pOz?=
 =?us-ascii?Q?cQl7RZckKdTVpYtYHDXBH0fmhQoBaue3EpdAxK6ODPOo6d5ASFEJEMmzdMKf?=
 =?us-ascii?Q?nZ849SoaJT2L0TjWzV7gIScezYi4cyEkHHkazE4lZd+ibrkY5qN5RaRg2QgH?=
 =?us-ascii?Q?T2/j+oxOEknbTKmoWdDu6dd8FDf/ZWvveSR1zagUBsmnY7x4clD3P9ysjO87?=
 =?us-ascii?Q?qXOxr4ii41m1+n7CsPRSil4RxxlEa5OnOUT5wWY6jhatr/DQTssW2N1eqzEY?=
 =?us-ascii?Q?frXsSy0i6Q/CIcum9j70y7wYF+QVBvjdfvhOVGUjL7p53ilvEfZy0BqW1hKg?=
 =?us-ascii?Q?ZWCYDFzKZmD7gt3XMnn/ojiXQxlshMxGnatjDlBFeS5HUBl0mwBmLZGqj9FQ?=
 =?us-ascii?Q?alTerCpEnis2pQkjunClkoIJDBgYFMFqHixFwbrTGLUKOGLZ6niFOJF6sULx?=
 =?us-ascii?Q?Z6oWFFgPBJGvvYaMGgJIo9FIlE9HnQnrdYehyw5b1M8UlS9QX0XKjf1dLL5P?=
 =?us-ascii?Q?3R69lOSdt5stNFUAoVcHT68jfiUFfgiS1n2U3dmadunqSf1Szv9S5GMuSG/m?=
 =?us-ascii?Q?vNiyv8MHlkQV9KO4WGHKJjK2b94ghFGz9b92xjcer4H8e32fzguJkKmgJ9zx?=
 =?us-ascii?Q?p8Os1r8Yj3Txf7DSKJeVXQl8sVVc/slKor4n6hFFWOUndMiBxA4pdMoNElWC?=
 =?us-ascii?Q?bZtgDGMxA1RW8pNsWyutp6ynWXy2f1O5yMDjd+e19V0pBJrFJS3XJOi3dMpe?=
 =?us-ascii?Q?YaI7S0fPaP2eZ0ZIg31hHN1TR+0MpNUkFLSHaw4O+kQ+cnf5d0oGbSggHITu?=
 =?us-ascii?Q?j/W/Ny2XViShk+AusYQ8mk5AsWWMiz/HHiEiOhePb/lw/KgXrd2gNC4NINo9?=
 =?us-ascii?Q?DTAoacAW6mOFf4kH2paTkYaApx7l0aVnRxsKz5zXXT57qug2M3E9iQlqrXrT?=
 =?us-ascii?Q?sII14vOJ+zB0MN1fFmsulmo3PZlWzGEKb4vQp07S75Js0V9EdFs5qFN+orsO?=
 =?us-ascii?Q?CK+EJeOZu+685a1OUp3yuironXtdv/S+3Vu6ZB8OBCd+7AfuSvoFp14g8DKd?=
 =?us-ascii?Q?Nh5Zjy00ncZSgRBDUbU15fIvsQNPO+LXgCzLWtJrXIiuA4I3IlXsUMTAdgF0?=
 =?us-ascii?Q?/2i0jSSblg7Uy1ifjSTf2CZj9DJ43kuPXSdxv8nKRwBjtl3M3JQHJCXHxcOt?=
 =?us-ascii?Q?VSJmTGMz2LIsgsQmaVSbEeu1kprB2vof1LHX1QuIQRhhC2v3FcKfjEglxLWz?=
 =?us-ascii?Q?9Le8PmLhHH3LV6zIfExmgttrnA7wNLgepg9qqR1QCKVc1vJK8eUYyxoiujek?=
 =?us-ascii?Q?hQjODKQhSOvEiiQWpLDdjP43DZt9msnoJtE0Aifn?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0c8c0cf-c5e5-4d53-34d4-08dcc26a0697
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2024 05:19:41.2623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p4dsTy4tU1JXSvDYpS7v7Um8SXShumF3l9UV6VQcU7xxJ+AuD4xdkrHGNHmvlitLIgO9JD2p65NMlp0v7JKYjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Wednesday, June 19, 2024 10:08 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Hogander, Jouni <jouni.hogander@intel.com>;
> jani.nikula@linux.intel.com; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 2/2] drm/i915/psr: Implment WA to help reach PC10

Nit: Typo in Implement

> To reach PC10 when PKG_C_LATENCY is configure we must do the following
> things
> 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be entered
> 2) Allow PSR2 deep sleep when DC5 can be entered
> 3) DC5 can be entered when all transocoder have either PSR1, PSR2 or eDP =
1.5 PR
> ALPM enabled and VBI is disabled and flips and pushes are not happening.
>=20
> --v2
> -Switch condition and do an early return [Jani] -Do some checks in
> compute_config [Jani] -Do not use register reads as a method of checking =
states
> for DPKGC or delayed vblank [Jani] -Use another way to see is vblank inte=
rrupts
> are disabled or not [Jani]
>=20
> WA: 16023497226
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 82 ++++++++++++++++++-
>  2 files changed, 83 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 46b3cbeb4a82..031f8e889b65 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1708,6 +1708,8 @@ struct intel_psr {
>  	bool sink_support;
>  	bool source_support;
>  	bool enabled;
> +	bool delayed_vblank;
> +	bool is_dpkgc_configured;
>  	bool paused;
>  	enum pipe pipe;
>  	enum transcoder transcoder;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 080bf5e51148..4ddea6737386 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -808,6 +808,73 @@ static u8 psr_compute_idle_frames(struct intel_dp
> *intel_dp)
>  	return idle_frames;
>  }
>=20
> +static bool intel_psr_check_delayed_vblank_limit(struct
> +intel_crtc_state *crtc_state) {
> +	struct drm_display_mode *adjusted_mode =3D
> +&crtc_state->hw.adjusted_mode;
> +
> +	return (adjusted_mode->crtc_vblank_start -
> +adjusted_mode->crtc_vdisplay) >=3D 6; }
> +
> +/*
> + * PKG_C_LATENCY is configured only when DISPLAY_VER >=3D 20 and
> + * VRR is not enabled
> + */
> +static bool intel_psr_is_dpkgc_configured(struct drm_i915_private
> +*i915) {
> +	struct intel_crtc *intel_crtc;
> +
> +	if (DISPLAY_VER(i915) < 20)
> +		return false;
> +
> +	for_each_intel_crtc(&i915->drm, intel_crtc) {
> +		struct intel_crtc_state *crtc_state;
> +
> +		if (!intel_crtc->active)
> +			continue;
> +
> +		crtc_state =3D intel_crtc->config;
> +
> +		if (crtc_state->vrr.enable)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
> +/*
> + * DC5 entry is only possible if vblank interrupt is disabled
> + * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
> + * enabled encoders.
> + */
> +static bool intel_psr_is_dc5_entry_possible(struct drm_i915_private
> +*i915) {
> +	struct intel_crtc *intel_crtc;
> +
> +	for_each_intel_crtc(&i915->drm, intel_crtc) {
> +		struct intel_encoder *encoder;
> +		struct drm_crtc *crtc =3D &intel_crtc->base;
> +		struct drm_vblank_crtc *vblank;
> +
> +		if (!intel_crtc->active)
> +			continue;
> +
> +		vblank =3D drm_crtc_vblank_crtc(crtc);
> +
> +		if (vblank->enabled)
> +			return false;
> +
> +		for_each_encoder_on_crtc(&i915->drm, crtc, encoder) {
> +			struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);

All encoders on crtc may not be of type DP, need to be handled here.

> +			struct intel_psr *psr =3D &intel_dp->psr;
> +
> +			if (!psr->enabled)
> +				return false;
> +		}
> +	}
> +
> +	return true;
> +}
> +
>  static bool hsw_activate_psr1(struct intel_dp *intel_dp)  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp); @@ -815,6
> +882,14 @@ static bool hsw_activate_psr1(struct intel_dp *intel_dp)
>  	u32 max_sleep_time =3D 0x1f;
>  	u32 val =3D EDP_PSR_ENABLE;
>=20
> +	/* WA: 16023497226*/
> +	if (intel_dp->psr.is_dpkgc_configured &&
> +	    (intel_dp->psr.delayed_vblank ||
> intel_psr_is_dc5_entry_possible(dev_priv))) {

In intel_psr_is_dc5_entry_possible function we use psr->enabled and based o=
n that deciding
to return from PSR1 activate, logic looks suspicious. Can you re-check once=
.

> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR1 not activated as it doesn't meet requirements
> of WA:16023497226\n");
> +		return false;
> +	}
> +
>  	val |=3D EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>=20
>  	if (DISPLAY_VER(dev_priv) < 20)
> @@ -907,7 +982,10 @@ static void hsw_activate_psr2(struct intel_dp *intel=
_dp)
>  	u32 val =3D EDP_PSR2_ENABLE;
>  	u32 psr_val =3D 0;
>=20
> -	val |=3D EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> +	/* WA: 16023497226*/
> +	if (intel_dp->psr.is_dpkgc_configured &&
> +	    intel_psr_is_dc5_entry_possible(dev_priv))
> +		val |=3D
> EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>=20
>  	if (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))
>  		val |=3D EDP_SU_TRACK_ENABLE;
> @@ -1502,6 +1580,8 @@ void intel_psr_compute_config(struct intel_dp
> *intel_dp,
>  		return;
>=20
>  	crtc_state->has_sel_update =3D intel_sel_update_config_valid(intel_dp,
> crtc_state);
> +	intel_dp->psr.delayed_vblank =3D
> intel_psr_check_delayed_vblank_limit(crtc_state);
> +	intel_dp->psr.is_dpkgc_configured =3D
> +intel_psr_is_dpkgc_configured(dev_priv);
>  }
>=20
>  void intel_psr_get_config(struct intel_encoder *encoder,
> --
> 2.43.2

