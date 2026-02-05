Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLNHJT1LhGm82QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:48:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D877FEF935
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 08:48:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0813A10E0CE;
	Thu,  5 Feb 2026 07:48:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="frjBxKUl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 139FC10E0CE;
 Thu,  5 Feb 2026 07:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770277690; x=1801813690;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sAbi3QxP8vKdnA2ezbZGOkSEHJELLJAwVidmFVzATGQ=;
 b=frjBxKUlziekzp2/dyBm41lIVBkm1Dqj6VFPDbQExWbGqF4jY5Jy2cNC
 Po3VVbl1mW4XcZS0N7G3t8+raDnBd9MB/vpYItl+PVZzt4LROqki+5GFx
 xiHQ1qIs/Ubge5GIeJSx0Sq56iXoKHbRgbxOfHwpZw5YxGinpqXOz5uca
 Csrpn/dWdesx176l2islSsv0QubUYMmDwOs2Khkv3qXFA48QpK3VSka20
 wAn6cq9onQUO1kBX3otnImmzPnFK1rS3VFq8GutxZ/RZ7Iy/CkgUpH1UP
 S7ECccES71eLdNCY6FswIcxnv0TZHYynzUmAW8PpebX1/FUe7Yghi77Pv g==;
X-CSE-ConnectionGUID: IANXZcvYSyi1HRYFVGWDAA==
X-CSE-MsgGUID: JXl16qP2QXuggxunuaEXWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="71460036"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="71460036"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:48:09 -0800
X-CSE-ConnectionGUID: ixGhe4ItQH6G93F4ZGNB3A==
X-CSE-MsgGUID: i4dfIT9dTTCx3a8DJTT8MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="210461131"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 23:48:09 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:48:08 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 23:48:08 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.18) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 23:48:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sBBlClUZdImevbxTT5uJHlcTJCo8fayEgHOdcS4/2BWPOqYVQl/ZplxL+L21i96vvqq1BioOK7OFWmvksmj4XhW5Q++qOjzhcDylFcFdQPDRFJv2jeFyaBv6jWLGZx7QIm/jAQVVo+WyBnmw2DId043I0pxFkTpcLZOUT/bI6KocQJ66TE/bE0H9eBEIAcxE0lqMZVZDJaBSoYPHMG+HhPfa2HHdLw3aTymEnUbDHTHpIUBsM9HPfcqKcUyFpdlUHj+MYQ/G7yDx/OyrIt1464gBMmDSs7GnWcn50/B4xutXo0r/gywvcXQPmwHXDiy/jqals3MNuQ76XSvGtl7tYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ngG/a/gGNacik3U2AEdr/jFFZISFA78vNQKQOhG+XLI=;
 b=TC3SIj4/CK7aRuZwp1J96aG6ftVeyrythVfR2ZXhvAJXaM8RLthxjve9yD8jaxZjkXNRkoRqF2xHPMeiDZBjWHnfaotikR+SFjmaTZAQOe8/kczr6NLUm8Ravu85Oi+dDJ9J2+UWCYVkjmq2IaCCED9leZMAQDjaqW+a792PtcGt9cIFxYW7CbeJ0GBcdwWhAsRlNKZcz4ft231ky1TtxZffqfIyDjaGqH8p+ZEPIVkjdP2hpyP5PVamY5pyHKbu70ZEPJPCTLh5AARLd2zp5CsUmXvNhSLG8w1yLi/QXVSbd1UiAxxoaAYhjWCtgc/9VTAUi3X1eA0XNxuNW3MRxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB7025.namprd11.prod.outlook.com (2603:10b6:510:208::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Thu, 5 Feb
 2026 07:48:05 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 07:48:05 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v3 19/19] drm/{i915, xe}: Remove i915_reg.h from display
Thread-Topic: [v3 19/19] drm/{i915, xe}: Remove i915_reg.h from display
Thread-Index: AQHckWIZWn2WBULOH0mmcLwnB7CVV7Vw9LGAgALPwtA=
Date: Thu, 5 Feb 2026 07:48:05 +0000
Message-ID: <DM4PR11MB6360B33B1816AB9653BD2A48F499A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-20-uma.shankar@intel.com>
 <69c7aea5bc84f5855944f90349bb5b92af13092a@intel.com>
In-Reply-To: <69c7aea5bc84f5855944f90349bb5b92af13092a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB7025:EE_
x-ms-office365-filtering-correlation-id: 76090b36-006b-44f1-cfc6-08de648ae5bb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?NIRXGl24VecUDGVenfJiZ5AoyRHQxoXpRoqdrFeLzg4l0K7rNSjKp9LcR9OM?=
 =?us-ascii?Q?2nwHJesbG5HpTK0yaaVC4wIRyLouO9vpvYXtDId1a9/6b3Tgp06DSmpEEFhs?=
 =?us-ascii?Q?VqUlLPFIPFq6Si6OsWAP+pgRamMb51A21lEI5jL80E/ZQhdezvDBYqc3f7zH?=
 =?us-ascii?Q?BMgtq1FlTgIi5L12uzYlFEM8HOp7SOuNK66UmT4vBMqC0YAF4LqA0azt+8lM?=
 =?us-ascii?Q?rWXwoQuPHyjs3gWTGCYAnH3vBZi2V0n85y8kni5znOsJbD44/usALeLblYsm?=
 =?us-ascii?Q?Qn+5dB9tz82JuF7WRL6ACDmyGkzufHcsVK0doT5jp2Wbhl+xmfXXtXfG/VGM?=
 =?us-ascii?Q?p+NchEntldhDhUjxh5GeKvJExUfNpOFVDoszQmbC5FHX5MAZKexHZ9V2SORs?=
 =?us-ascii?Q?vWTwHKwbsY8T2hnq3olCxY9XIvGJlxbowQnOomGF95g2cXVgwjFiA8hxWKE6?=
 =?us-ascii?Q?gRbLwn8hd94NaPtMdOHtV5t34ywFPdApP4tY3fXL1dQBkN5OaOljOp3lbW4k?=
 =?us-ascii?Q?/TR1BG1WpOf2dGhGiBqb2IUKWfhrxm36qvhCyRM6a1Kn2BJJnAuI1fOUodZG?=
 =?us-ascii?Q?2iDCQi43/I7B5SCto2ZBF/qbHLJBLuqT31oW0fSgpB7KkakbfEmuIw4V8wbQ?=
 =?us-ascii?Q?bw4/Bt8MNZ5tL25kNLJAb7GCxU7G4xsAquQ9eHCcD8Yj6f1lyxToW9Cp8jsF?=
 =?us-ascii?Q?s6V+kmkwkarw7Nd++t4kYjN68buNQWSbvQ6/+i+E/MGmuWzOVB0W9T6VmcqT?=
 =?us-ascii?Q?7H35060rnX76Mle0a43eowxRUVazuQ+IcTjrmMiPZsamDt0TZi6kgNNlD2Lh?=
 =?us-ascii?Q?PDM1Exof+syjimsaEeHeiHxgMrCCun9SVnww9cBoFEa9W9NZEJK/uE3dd6MW?=
 =?us-ascii?Q?wEWcVU+re8NLX7JS/EW8qSGnFxeHvVSbU4E/kPyzBC1caeIjnmMBELc6htE9?=
 =?us-ascii?Q?Nv4TtUSEgYKmEO6s51Ir6XdIBVSE7cODhfCE1HuU/Z2O7T5qkg+0Qb96ePdi?=
 =?us-ascii?Q?bF8/K8ccrymAm2nbhsOf+5k1k4EqJBk9vae5EfPww4o2P9n5fiyQGyeYy/Dn?=
 =?us-ascii?Q?WCKx8Wil+Cf46+j6+6rBYHrCc0h8/P+Om3ZuIk6aYS7hdQeUgWhbOV+1DmSF?=
 =?us-ascii?Q?rkebyKTOs4cgzv6ajZGJcVcjPLWkpJ+7mrqwinQ9v3GCQoqUCWgE6ljt/lkl?=
 =?us-ascii?Q?9YSzgfCYkBHpKU19VzrDUEJbQ8VdZkGWDf5vlD+1qgfRKUG9cqLptPp/UL7O?=
 =?us-ascii?Q?i+AzpK2ODQ6Zz2llCER/bBE2ZaX60iltkh3/JR9fMXh7brCQpftPj3YqFFD0?=
 =?us-ascii?Q?XOQDZVuzIePHqXdsI29btHIVYJDuJz03B4zMVIgYz9PsisBpOio8LD59HAoe?=
 =?us-ascii?Q?cAvnPn3EzC6QyBEOAiCE9HHbx614xhnCpzB4J+buIPUXbqMr7fD7PSXwqiN8?=
 =?us-ascii?Q?Lj2cEOKrO/ksBVOTxatXiiIO+vVTtTX9+UJCdoBG3JtOqSNnCAcPOWDdp6zN?=
 =?us-ascii?Q?v3J08Hva1p+EVRYGKR2H/S9Nq5ZYpOfXOr2+1LGvWjLG7Hfxx+Ffx7APsM33?=
 =?us-ascii?Q?szNIUWQJMF5EFLuGDWNhUaJJywQJ1e3ipFTRJ5nQK//MK68di7fdF2iXfrts?=
 =?us-ascii?Q?XDAgFf9uts4LEoLxR5U1wu0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?379n4T6FRAu1Ib3HKWAEtALzDY0mBejgpeFb9LWsgwpx+8lR4U49EXyt90LO?=
 =?us-ascii?Q?/pk28NvsfYF7XFASeXQxj+XuzVVR6LHLNK2v4+hEXQ0RTm3wBSFJkdf3Hruu?=
 =?us-ascii?Q?Mrx5BYpjNIYQXZ91MsJiMPy0kxxq2Rjv8sZA0uTHhk0w/75E1B8PIvR8WdkX?=
 =?us-ascii?Q?3wEABydBOr9cSDsk1pP/Hz0qY7cNbghtUH0/gMb/oFP348rGMFvl/favapxV?=
 =?us-ascii?Q?8VLSWgX9N3FrT05CW+o+n5CQwhRO8tBn6pLwmgUah+KK5bcZrAq0BHz5UsKF?=
 =?us-ascii?Q?8f33G+dHqDGrfRiMElVM2TPw686wxs9KL2UD2BduBaVhHnt5zD6Cvb7Ey+O0?=
 =?us-ascii?Q?3HPtE5FZJBQYv86DCEhQ2FYJ/DE/10xZMgBTtf8gwr4fmSBDqfuP/dT7rL9G?=
 =?us-ascii?Q?aWmfCtrZu3UVEhAFsit/QdSEs/YJur2WKyf2oOL79QoI56qwIxzBm1VqHON3?=
 =?us-ascii?Q?5w3hY7kfBNaWI4BL8exdbejGXgBMKepn5G6JWJ3Vmkg/uxTdtAt/M8oYWUuR?=
 =?us-ascii?Q?gfYn8p5bJ7PCNbGUJB5gDJKm4MY48joD5iwsGpZaqnYnhPCcUXUFXZSelQP+?=
 =?us-ascii?Q?o8mpiLDPWhBprhpvfiOoJbouv8+0wVQ5jY17fSaMxBcxlK4aENB0ek2HaDSV?=
 =?us-ascii?Q?YSxQDeWOpjejJDI77bgtn1bS5q7XeCxLBm8ruvrPyg9kXEwh3SFti//P6VXP?=
 =?us-ascii?Q?lORGujW893zw68LZS5A+dSrTWEDIc+ekfNSksFJjBGOwKh0pH/bd5yFX/2D9?=
 =?us-ascii?Q?SpiMRVKOVveH+AOxwJIskYP1yQ7XBo9WiI0NSbnBDQ29TWMR3ejvh7Phag7p?=
 =?us-ascii?Q?WKYr+KJ2LJ9YUGJE7KQC293xmR2wQnlWds4XebGIKbflMMekCd0f3ktNFfr3?=
 =?us-ascii?Q?/qev9gAeLuwFyVQdaQx9O0gncrJBlk/p/CyEHA3EccU6rH3tLr8bBufI7XnH?=
 =?us-ascii?Q?pt9syk/3OtDr5TptIuozmB7SQMGZGfXLej4JAukS3P3ruEkmwQjT+xdM3eJr?=
 =?us-ascii?Q?ri/iBNfMNKejB1WtNBuVa1mj8CwusBEOmSHbors9mYf728PI+JfN4vl3x5c7?=
 =?us-ascii?Q?vX6PeE8E/B7j8e/4B5iVB7N2wiPiCg07F6XBpHi3uqKOBXJw1Ktv6TUrY4IR?=
 =?us-ascii?Q?KB2fDU9WLAPGFSoZrvHie0h7LQCE6wXWOwh2dMTzq3HH8/4u1Ba737gQ/tgp?=
 =?us-ascii?Q?D+xX60NSq7M+mwuBY4FXD3kqG+M6o32HP/eOBNDaBY3SXL0AqxyuZllGjwas?=
 =?us-ascii?Q?kNEyL/EjgH4azzp9Y8PqAm+BokDNIc8bixmmhSQHYt0//9idpFNoso6oaySN?=
 =?us-ascii?Q?P7ogkqERa75osGxYJgtsUINm0VFXOBKXqP2rlD2DdVOGxGTd7WC0Am+dHBKG?=
 =?us-ascii?Q?Foy4irhuW1bRO4L3JUVqfzZMy0oELafnNGz6lw+EbqnalQAyz6J2VPAUdjb7?=
 =?us-ascii?Q?yLuQbKFtFfX3bOW3WsScUbC3V0vdtEERA8cSUh6iq6rEcwAhUWR1Z6aQY0c5?=
 =?us-ascii?Q?buOq80jLWQVfOSpsmzBeMdzaGCGnwrKy5lRgP0ffmX8m4eZBTI7z4j6Nlhjd?=
 =?us-ascii?Q?KoDUxQ8KfP4e2GpRCMApXGgv043f5KqhntvDpgpvZSxAnnHmAj+xuZvhBD9L?=
 =?us-ascii?Q?gUE8ecsGftfk7s4Q9v/P/0FrCosIDlBbz6iv8zjtKImd+qBdPHbdfIJKwFzl?=
 =?us-ascii?Q?GePpYM+japxLWLr6ai2UNG/3+NGYlkUsRfgnSj3suTLkwAT4dSpitb6egh5D?=
 =?us-ascii?Q?iw5WNbX6gQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76090b36-006b-44f1-cfc6-08de648ae5bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 07:48:05.5123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A/xhzqbKsS+4IwgPO0JSlCjMV9bt8Xg6XQGBiedGV9u+ddbb3M47J9AMdLGfSdC5T4LoVUkec6JyDabnB+S36g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7025
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D877FEF935
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, February 3, 2026 6:21 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v3 19/19] drm/{i915, xe}: Remove i915_reg.h from display
>=20
> On Fri, 30 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Make display files free from including i915_reg.h.
> >
> > v2: Include modular per component headers (Jani)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/hsw_ips.c               | 2 +-
> >  drivers/gpu/drm/i915/display/i9xx_plane.c            | 1 -
> >  drivers/gpu/drm/i915/display/icl_dsi.c               | 1 -
> >  drivers/gpu/drm/i915/display/intel_backlight.c       | 1 -
> >  drivers/gpu/drm/i915/display/intel_bw.c              | 2 +-
> >  drivers/gpu/drm/i915/display/intel_casf.c            | 1 -
> >  drivers/gpu/drm/i915/display/intel_ddi.c             | 1 -
> >  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 1 -
> >  drivers/gpu/drm/i915/display/intel_display_power.c   | 2 +-
> >  drivers/gpu/drm/i915/display/intel_display_wa.c      | 1 -
> >  drivers/gpu/drm/i915/display/intel_dmc.c             | 1 -
> >  drivers/gpu/drm/i915/display/intel_fdi.c             | 1 -
> >  drivers/gpu/drm/i915/display/intel_hdcp.c            | 2 +-
> >  drivers/gpu/drm/i915/display/intel_hotplug_irq.c     | 1 -
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c          | 1 -
> >  drivers/gpu/drm/i915/display/intel_pps.c             | 1 -
> >  drivers/gpu/drm/i915/display/intel_tc.c              | 1 -
> >  drivers/gpu/drm/i915/display/skl_watermark.c         | 2 +-
> >  drivers/gpu/drm/i915/display/vlv_dsi.c               | 1 -
> >  19 files changed, 5 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c
> > b/drivers/gpu/drm/i915/display/hsw_ips.c
> > index 0caaea2e64e1..5697fa4eb11f 100644
> > --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> > +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> > @@ -6,9 +6,9 @@
> >  #include <linux/debugfs.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_pcode.h>
>=20
> Nothing's being added there in this patch, so this feels unrelated. Ditto=
 below.
>=20
> I think it'll lead to a better overall series if intel_pcode.h (or
> intel_pcode_regs.h) isn't included in i915_reg.h but rather everywhere it=
's needed.

Yes Jani, will fix this and have it included only where needed.

Regards,
Uma Shankar

> BR,
> Jani.
>=20
>=20
> >
> >  #include "hsw_ips.h"
> > -#include "i915_reg.h"
> >  #include "intel_color_regs.h"
> >  #include "intel_de.h"
> >  #include "intel_display_regs.h"
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > index b1fecf178906..9c16753a1f3b 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -10,7 +10,6 @@
> >  #include <drm/drm_fourcc.h>
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "i9xx_plane.h"
> >  #include "i9xx_plane_regs.h"
> >  #include "intel_atomic.h"
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index c8e0333706c1..7cf511a6c0f9 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -34,7 +34,6 @@
> >  #include <drm/drm_print.h>
> >  #include <drm/drm_probe_helper.h>
> >
> > -#include "i915_reg.h"
> >  #include "icl_dsi.h"
> >  #include "icl_dsi_regs.h"
> >  #include "intel_atomic.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_backlight.c
> > index a68fdbd2acb9..34e95f05936e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> > @@ -12,7 +12,6 @@
> >  #include <drm/drm_file.h>
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_backlight.h"
> >  #include "intel_backlight_regs.h"
> >  #include "intel_connector.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> > b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 8d84445c69f1..71149d8bcd73 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -5,8 +5,8 @@
> >
> >  #include <drm/drm_atomic_state_helper.h>  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_pcode.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_bw.h"
> >  #include "intel_crtc.h"
> >  #include "intel_display_core.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_casf.c
> > b/drivers/gpu/drm/i915/display/intel_casf.c
> > index 0fe4398a1a4e..b167af31de5b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_casf.c
> > +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> > @@ -3,7 +3,6 @@
> >
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_casf.h"
> >  #include "intel_casf_regs.h"
> >  #include "intel_de.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index d8739e2bb004..3f0c9c7fd5f8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -34,7 +34,6 @@
> >  #include <drm/drm_print.h>
> >  #include <drm/drm_privacy_screen_consumer.h>
> >
> > -#include "i915_reg.h"
> >  #include "icl_dsi.h"
> >  #include "intel_alpm.h"
> >  #include "intel_audio.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index aba13e8a9051..1ce28a31affb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -15,7 +15,6 @@
> >  #include <drm/drm_print.h>
> >
> >  #include "hsw_ips.h"
> > -#include "i915_reg.h"
> >  #include "i9xx_wm_regs.h"
> >  #include "intel_alpm.h"
> >  #include "intel_bo.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 06adf6afbec0..a6e9f1c8d2dc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -7,8 +7,8 @@
> >  #include <linux/string_helpers.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_pcode.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_backlight_regs.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_clock_gating.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > index 2eb4af62d556..d9788a979561 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > @@ -5,7 +5,6 @@
> >
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_de.h"
> >  #include "intel_display_core.h"
> >  #include "intel_display_regs.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 1182bc9a2e6d..8df06b993890 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -29,7 +29,6 @@
> >  #include <drm/drm_file.h>
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_crtc.h"
> >  #include "intel_de.h"
> >  #include "intel_display_power_well.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c
> > b/drivers/gpu/drm/i915/display/intel_fdi.c
> > index 5bb0090dd5ed..24ce8a7842c7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> > @@ -8,7 +8,6 @@
> >  #include <drm/drm_fixed.h>
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_atomic.h"
> >  #include "intel_crtc.h"
> >  #include "intel_ddi.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index b7479ced7871..6110a582437c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -17,8 +17,8 @@
> >  #include <drm/display/drm_hdcp_helper.h>  #include <drm/drm_print.h>
> > #include <drm/intel/i915_component.h>
> > +#include <drm/intel/intel_pcode.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_connector.h"
> >  #include "intel_de.h"
> >  #include "intel_display_jiffies.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > index 82c39e4ffa37..8865cb2ac569 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > @@ -5,7 +5,6 @@
> >
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_de.h"
> >  #include "intel_display_irq.h"
> >  #include "intel_display_regs.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index 04f63bdd0b87..1df23447fd84 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > @@ -5,7 +5,6 @@
> >
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_cx0_phy.h"
> >  #include "intel_cx0_phy_regs.h"
> >  #include "intel_ddi.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > b/drivers/gpu/drm/i915/display/intel_pps.c
> > index b217ec7aa758..2d799af73bb7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -9,7 +9,6 @@
> >  #include <drm/drm_print.h>
> >
> >  #include "g4x_dp.h"
> > -#include "i915_reg.h"
> >  #include "intel_de.h"
> >  #include "intel_display_jiffies.h"
> >  #include "intel_display_power_well.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> > b/drivers/gpu/drm/i915/display/intel_tc.c
> > index 064f572bbc85..78ed9c58a72f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_tc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> > @@ -7,7 +7,6 @@
> >
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_atomic.h"
> >  #include "intel_cx0_phy_regs.h"
> >  #include "intel_ddi.h"
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index b41da10f0f85..9efb94b4cbdb 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -7,8 +7,8 @@
> >
> >  #include <drm/drm_blend.h>
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_pcode.h>
> >
> > -#include "i915_reg.h"
> >  #include "i9xx_wm.h"
> >  #include "intel_atomic.h"
> >  #include "intel_bw.h"
> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > index d705af3bf8ba..67f0082d3a69 100644
> > --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> > @@ -33,7 +33,6 @@
> >  #include <drm/drm_print.h>
> >  #include <drm/drm_probe_helper.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_atomic.h"
> >  #include "intel_backlight.h"
> >  #include "intel_connector.h"
>=20
> --
> Jani Nikula, Intel
