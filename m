Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF8D8C3BAA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 08:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D913110E259;
	Mon, 13 May 2024 06:59:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UKAlwNDR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E23ED10E259
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 06:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715583578; x=1747119578;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bZD4A8XqAyTlVxVbgMgt4VXHtdOS4bA5myIkGuFbbr0=;
 b=UKAlwNDRwyzdtLjU3oMoyJUznetb8mhVWhCqWy5wlFVqdXtppLSiv8rH
 7qturzfW7H3lAfd2nQO2YM5WsnaqokBQ7GE67uSdfSxC1te5sErWGaZcg
 2sDcIws1JbOxEP5SN+h9tPcsJG93bZp9nWlw9XMErzGAIafEiS9BcBPwW
 Kry0FeaQkCMgvfzsdexbucyccOaS4L1hCXALY+eHdrZKmYiRCpl9puQnU
 sO1Ykj8sradv2FmyWT2MmeW9Unns4dAjhLRBG5fpngI+5RPY6lffADv3e
 eyZ//9ZqMoteuRaubK77QpIfsUsajTR7rzK4JRHAHYQrpLfPYMD+o2MX7 A==;
X-CSE-ConnectionGUID: UwCvG22OTqqhjTorm9GVSA==
X-CSE-MsgGUID: iUD8Mp1CQ6uLgpd78VtxdQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="29015841"
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="29015841"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2024 23:59:36 -0700
X-CSE-ConnectionGUID: 5f4sj8+bS3qaGDLTlv9w7w==
X-CSE-MsgGUID: nziIWX3MRhKopRrUFC9AIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="34661591"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 May 2024 23:59:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 12 May 2024 23:59:35 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 12 May 2024 23:59:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 12 May 2024 23:59:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 12 May 2024 23:59:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TpCNESg6vSjEcI7/jIu3rB/BUOAiClK6eSSQYHNAkkLASSQwSauihKIPq695/TITxLkpDr/mKI4zm+9Mm7cee/yeVvEdnX4SAdsRuAlc/9WaEf4om3kD/vGfY1uNAEXMv4hWvJ3hBfuWgmiCJV+PH9mZ3/nMCW96eF+HkeLRJX9Z+KkgRHlONf8e6DLNHDdnDfPeYHziqf0TsGm7n5J5sJmZB03hRVHvzhjZ2RNeIzGfXWCRoiobF3iLUWMyByYty++DQjA6gCJJfks9/LlllQ0f9nOyaAPpvd+AA6sHFSD76GroOzmOVA8QDIIWdaNty91o95h5vx7PVos+0JNHbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bIKqCLtT512NLoPIFbMj9OfnpodKnLMqSXai4+wE7HQ=;
 b=Ab3TmWCWSsPtJWmPSmSzv9+/rG3OtfhEIJBgQyAkzpOIQmTsgkfSJV7H/CJRVBn0w83fwe1VVeqRgLVCX0+bC6ob8OHkuMh6E2nt/SbOL2M6kWmBA+h0LQp4DWM1j0ILnNb5YW7ZMrqAlEmt+FhGXt60aL5y2AKFohCBy6UGzE8tkO0BOm8xy/lRVWEaCnm7bDZj9k30WRX+7mKHKU7SV8Cj3uaw8A/BrDZgJdsilC6pVxHXNzm1ZQbJ1BmpU9zm0oEgkzjwq1YuW/tWLgJfGc9eh3R7CxobX1ofCGF3EltVDgwak9/+tTkX2xksUglmG9da82Kz3du/0SWuL3ViLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH0PR11MB4999.namprd11.prod.outlook.com (2603:10b6:510:37::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Mon, 13 May
 2024 06:59:32 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637%7]) with mapi id 15.20.7544.052; Mon, 13 May 2024
 06:59:32 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v8 1/7] drm/i915: Define and compute Transcoder CMRR
 registers
Thread-Topic: [PATCH v8 1/7] drm/i915: Define and compute Transcoder CMRR
 registers
Thread-Index: AQHaoeeRIU8ZACbrm0eM65lQTzFkvbGUr9lw
Date: Mon, 13 May 2024 06:59:32 +0000
Message-ID: <IA0PR11MB730783B83EF53EA344A1D3EDBAE22@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240509075833.1858363-2-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240509075833.1858363-2-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH0PR11MB4999:EE_
x-ms-office365-filtering-correlation-id: eebe0e1b-4a86-408d-c728-08dc731a3dc3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?DaLov+pBJ4YFGSp2vyCpZRTKpRwpsjh+1j/ZZnHH9OIILqglf3BAVLHOhROr?=
 =?us-ascii?Q?eGuGnNhdNtx+LOaQLe9HLw0wSn1r/6kXH+fdqlK2vmJ7iudapG+yl8xplN9O?=
 =?us-ascii?Q?2l51ua5K3QMQRdaQy16Se5f5cyM2EB9HvGdQ1FUJAPEXLJZw8Ly0LWvM/RUQ?=
 =?us-ascii?Q?gDG+jyNCQqwco8Yr1AlNuKOr7ZWHtJ/jF2extpqu0Mr0+DOZxrZRMjcqmy53?=
 =?us-ascii?Q?hYoDJl9qu4SFJVsjVDwDd8ZdQZMdU4dPNO2K2LhHFgtOxyAWpcD024W4CFKT?=
 =?us-ascii?Q?8+Sd+p90e9j2LdaNv4r2+Cyl8jV0ALcVWbanPIMZX2Eq7H3VhLWfE3clwJou?=
 =?us-ascii?Q?IhEa3PivcrFhtiorxTJFjQL7pDPeMgtCrVWMsFGQ2NYPVCrls9mW68DS8Ovw?=
 =?us-ascii?Q?vhQv01HZNu5aFPm3C4ZzAqwV5+3QsnH0+AtfkG2wSofvEkjEA2UVOD/NLCzv?=
 =?us-ascii?Q?kTblWf87MLqNgx8L1SjSvm9j9xRU3/qYxz31uciskkw7Pjt2StN2Vy+IFW/5?=
 =?us-ascii?Q?uX/FnoCGxIPlNqQSBJ1jD9GNoYE9kErJH04UuKBCYi+MiH27BDs3l2JgmGDQ?=
 =?us-ascii?Q?Z1COWE0CFkGFqYsg0MgGI8Bvalvi/rqoNMcvcVbvwdtGgdBal8Ji7CzzYNbN?=
 =?us-ascii?Q?nfO8yGPW0c+sjzD6Dm5z8SgX3Rgr9RHKZDnNZPrDLmaUX7jcEHDxaSHmL3ck?=
 =?us-ascii?Q?KBIX8k39iAkLkeUoUKCIRFvVIEMWQewqTsCmhPp8yxbpbOC0Ud2B4G5eJiwq?=
 =?us-ascii?Q?U3o2FrthW6Wavl8ASTeoRgJ0k863qGSdZksHji0xWLACjN3gxHPOrXadZ0V0?=
 =?us-ascii?Q?mFngRd7DzDXnv7ZD3o9cfMPU/a15+Xkd6rEXC9GVlmtJ3KkGmdUVE7cQ9ztH?=
 =?us-ascii?Q?JlfQau9FgZct/QMeEJNBjcOwTi1BHbiJqQZNXeIEW4dg9BobNskOwJUx96wv?=
 =?us-ascii?Q?FM44S2RMxTwR+rPWFF59eIhfM8l7sHS9YhCupP9fw+5If5tQpoYlx0lJCLYJ?=
 =?us-ascii?Q?GZEKJP/O0IFBk4FT5y/PlGRhajoqXkk0yJe9eUCIyvNyzWvgd+TvodHPaPyg?=
 =?us-ascii?Q?WP/O9kysqs84EqPCC2KokGfs0STbmvExAR2cEMx25JtNOn+xnoeqtzYGMClc?=
 =?us-ascii?Q?oY5fJ1BZLPGYYU8XEPcZAUgeydf2wyFBrjzzbtH9RETdNCVHnxOBBCXW8d/o?=
 =?us-ascii?Q?ke74YfFVg1EVGbu//8b8LehfQKCu4PQFDZ0hD9u2vJC5ieqHrxN7TwJYQmk0?=
 =?us-ascii?Q?/J2l7U+EgxLFuISC475Dnq9iUMofzWYE23YRQKN3JoADhmswBQH5WKS/xuAk?=
 =?us-ascii?Q?8LhLGro4lhgiFl/7rbfY3GalZAiCYM2f3epUwcTDs3aTHw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?niK9QUHi9MJmmt5op6yolbHGfg4Sz9EpYn7evujqiDRuW1MAulreIcgmOsu3?=
 =?us-ascii?Q?a+jCzTApoRPGivTGZyFvXI7kAbI5kWi3JfnkDyerR459gJvS6wfhXNVPByUA?=
 =?us-ascii?Q?TYhArudgEt/gaj0vGrDXqu+001xkyn+Vx/PJlJaNJ8WahgU6KGUAOhjZ3DGx?=
 =?us-ascii?Q?hW7LM5Jsk/O8YsyY3OY4ZmqAAewG15YMWkzuv5sljiT9v19CHEmio4SCFxiT?=
 =?us-ascii?Q?deod5BjEe2SyQJiNwbiQsjRW+ClIKzNMxZ/l4fyL0F4xc4gmhdlZpUwmN0AN?=
 =?us-ascii?Q?CY/bMsWA3trNPU5UyH338U0UYj7idjqJr8VEmm1Z2hV9XPzikhJ/Za4UrFqa?=
 =?us-ascii?Q?1JWX1a+sn2XFYHOagRSrbGZnEL0K4mYGDXpNCuM/rNtDVkcw/mkrC1sIAXMW?=
 =?us-ascii?Q?orW8vNwipMWW6JAD/VRUDdhaMTum85ic9OTSuIk5XBHmJZ3O1aH7mqHw7iLP?=
 =?us-ascii?Q?fHY/i6eSO0qp5UI6OGNp8B1vM77Toc1XoC6ZvPwHH/FGEy6GuXO5ZJRNNrI6?=
 =?us-ascii?Q?dL5QN1Fv7xR7o08oigpfWqgr3MWkk10ySEarKCXEkpFznd4lpSlNIG83zKUI?=
 =?us-ascii?Q?IUxvPQxYooCc34Nusi08Wn7vUSaR28AzhzPrKlr15r3OIYHaGYJJ4DgHHSsA?=
 =?us-ascii?Q?YjtKEt1Lqp1WiYokMwjVexakLIka+JPbJjcleLNWmTnke5EIIMoJ7DMg5rPB?=
 =?us-ascii?Q?bfCti7mX6DR2MRw5avdCyrUFFjFqTjhXsoHnZI9r7VyD9HLkHauRHhuXeWr3?=
 =?us-ascii?Q?DQe7ZuiAQYpequYAtlt1Z1IcpKVko7klZ8ij7PSmCzobwsFnmnD6eY/ckgOd?=
 =?us-ascii?Q?pEUktJwFxXklQhE6jGexeEzW1IV1kM0P2EqrZYjdO0RDj4OVm1NzOT6dBHkZ?=
 =?us-ascii?Q?CIcPfrw356Vbe19JTk/ECWWlvkxim2KBUvF4CL5zsl2mg7hqNmNkK3FNJ21n?=
 =?us-ascii?Q?uGmFDUN3MGe+i1qFQfEwF1Z03NHgmCnDgQHlIqpDJ8CuUiElePDVCtfj66Cu?=
 =?us-ascii?Q?FK4w0FUQBFHujOHDjFS9v0n/5WKBGA/ebhYO3J72qvETmQZ09vKNEM+myzyz?=
 =?us-ascii?Q?4/6i928MC5VDHRBRfxFv9SgOH/iXi/qEK4N2kZx/v6HRuQYvxWOxLv20FySz?=
 =?us-ascii?Q?3vRQvRBU6GbUcoKNNnAgzS6l/K3pGBoH9EHpCig9GzlNzbaCjIds5zOLRTjc?=
 =?us-ascii?Q?DKCCP1LHQusK3Vw6p4biffVLLoMQZRrR98YesoHFrzftTnqMtNruhwn6HzNa?=
 =?us-ascii?Q?SFGL3WPNkqyUSY5Qws6SW+QjR8V3DhKkGj1Yhirh45txNF8+l18AuTDW0Qhx?=
 =?us-ascii?Q?26LbHfUvr9K4sh1EZxDCVttWrr+zDna/HRIAameLpB2uCWC+D0R9mq8+lj3M?=
 =?us-ascii?Q?yGdGr8P3HOrrb/aBK4h/JkEmfHbCSGfjuKrdXq8/aFkeVhbtbODndWW4NOj2?=
 =?us-ascii?Q?uj9q+MWKoYwHHQK0Uz8jJCWbkKUoWpWzk/LlSGAttLx6gx0+sXxhQlLhg1IN?=
 =?us-ascii?Q?tQuAV05HdMKgIaki2HVUwbdHfCClFS+hIGGFryiR/VBgU0KkmpygG7F67EYY?=
 =?us-ascii?Q?UgSNrXvEqNfd3uA/eofVjFNGZ9H6YumziNlMKZpI0W24BGNqSpWGaSuJYPuC?=
 =?us-ascii?Q?9/V4bqD3jduN2H56BUo+KfeAqL9IG8drt1AXZjQyZYPX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eebe0e1b-4a86-408d-c728-08dc731a3dc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2024 06:59:32.2171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P3m/CvPrnTNV+/v/v5wBk7dYUKfAp6u95VtanfbT3QUFHZ/2GRpyb3BRuILyVt99WWxvgWfNgIDvw8wRmRImMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4999
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Thursday, May 9, 2024 1:28 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: [PATCH v8 1/7] drm/i915: Define and compute Transcoder CMRR
> registers
>=20
> Add register definitions for Transcoder Fixed Average Vtotal mode/CMRR
> function, with the necessary bitfields.
> Compute these registers when CMRR is enabled, extending Adaptive refresh
> rate capabilities.
>=20
> --v2:
> - Use intel_de_read64_2x32 in intel_vrr_get_config. [Jani]
> - Fix indent and order based on register offset. [Jani]
>=20
> --v3:
> - Removing RFC tag.
>=20
> --v4:
> - Update place holder for CMRR register definition. (Jani)
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 23 ++++++++++++++++++-
>  .../drm/i915/display/intel_display_types.h    |  6 +++++
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 22 ++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               | 10 ++++++++
Please create a new header file to add the CMRR related register definition=
s.

Thanks and Regards,
Arun R Murthy
--------------------

>  4 files changed, 60 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index ef986b508431..258a78447fba 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1001,6 +1001,13 @@ static bool vrr_params_changed(const struct
> intel_crtc_state *old_crtc_state,
>  		old_crtc_state->vrr.pipeline_full !=3D new_crtc_state-
> >vrr.pipeline_full;
>  }
>=20
> +static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_=
state,
> +				const struct intel_crtc_state *new_crtc_state) {
> +	return old_crtc_state->cmrr.cmrr_m !=3D new_crtc_state->cmrr.cmrr_m ||
> +		old_crtc_state->cmrr.cmrr_n !=3D new_crtc_state->cmrr.cmrr_n; }
> +
>  static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
>  			 const struct intel_crtc_state *new_crtc_state)  { @@ -
> 5051,6 +5058,16 @@ intel_pipe_config_compare(const struct intel_crtc_stat=
e
> *current_config,
>  	} \
>  } while (0)
>=20
> +#define PIPE_CONF_CHECK_LLI(name) do { \
> +	if (current_config->name !=3D pipe_config->name) { \
> +		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
> +				     "(expected %lli, found %lli)", \
> +				     current_config->name, \
> +				     pipe_config->name); \
> +		ret =3D false; \
> +	} \
> +} while (0)
> +
>  #define PIPE_CONF_CHECK_BOOL(name) do { \
>  	if (current_config->name !=3D pipe_config->name) { \
>  		BUILD_BUG_ON_MSG(!__same_type(current_config->name,
> bool), \ @@ -5415,10 +5432,13 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_I(vrr.guardband);
>  		PIPE_CONF_CHECK_I(vrr.vsync_start);
>  		PIPE_CONF_CHECK_I(vrr.vsync_end);
> +		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
> +		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>  	}
>=20
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
> +#undef PIPE_CONF_CHECK_LLI
>  #undef PIPE_CONF_CHECK_BOOL
>  #undef PIPE_CONF_CHECK_P
>  #undef PIPE_CONF_CHECK_FLAGS
> @@ -6807,7 +6827,8 @@ static void intel_pre_update_crtc(struct
> intel_atomic_state *state,
>  		    intel_crtc_needs_fastset(new_crtc_state))
>  			icl_set_pipe_chicken(new_crtc_state);
>=20
> -		if (vrr_params_changed(old_crtc_state, new_crtc_state))
> +		if (vrr_params_changed(old_crtc_state, new_crtc_state) ||
> +		    cmrr_params_changed(old_crtc_state, new_crtc_state))
>  			intel_vrr_set_transcoder_timings(new_crtc_state);
>  	}
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a06a154d587b..475fb5252dd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1396,6 +1396,12 @@ struct intel_crtc_state {
>  		u32 vsync_end, vsync_start;
>  	} vrr;
>=20
> +	/* Content Match Refresh Rate state */
> +	struct {
> +		bool enable;
> +		u64 cmrr_n, cmrr_m;
> +	} cmrr;
> +
>  	/* Stream Splitter for eDP MSO */
>  	struct {
>  		bool enable;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 894ee97b3e1b..831554ea46b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -217,6 +217,19 @@ void intel_vrr_set_transcoder_timings(const struct
> intel_crtc_state *crtc_state)
>  		return;
>  	}
>=20
> +	if (crtc_state->cmrr.enable) {
> +		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> +			       VRR_CTL_CMRR_ENABLE |
> trans_vrr_ctl(crtc_state));
> +		intel_de_write(dev_priv, TRANS_CMRR_M_HI(cpu_transcoder),
> +			       upper_32_bits(crtc_state->cmrr.cmrr_m));
> +		intel_de_write(dev_priv, TRANS_CMRR_M_LO(cpu_transcoder),
> +			       lower_32_bits(crtc_state->cmrr.cmrr_m));
> +		intel_de_write(dev_priv, TRANS_CMRR_N_HI(cpu_transcoder),
> +			       upper_32_bits(crtc_state->cmrr.cmrr_n));
> +		intel_de_write(dev_priv, TRANS_CMRR_N_LO(cpu_transcoder),
> +			       lower_32_bits(crtc_state->cmrr.cmrr_n));
> +	}
> +
>  	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder),
> crtc_state->vrr.vmin - 1);
>  	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder),
> crtc_state->vrr.vmax - 1);
>  	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> trans_vrr_ctl(crtc_state)); @@ -296,6 +309,15 @@ void
> intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>=20
>  	crtc_state->vrr.enable =3D trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>=20
> +	if (crtc_state->cmrr.enable) {
> +		crtc_state->cmrr.cmrr_n =3D
> +			intel_de_read64_2x32(dev_priv,
> TRANS_CMRR_N_LO(cpu_transcoder),
> +
> TRANS_CMRR_N_HI(cpu_transcoder));
> +		crtc_state->cmrr.cmrr_m =3D
> +			intel_de_read64_2x32(dev_priv,
> TRANS_CMRR_M_LO(cpu_transcoder),
> +
> TRANS_CMRR_M_HI(cpu_transcoder));
> +	}
> +
>  	if (DISPLAY_VER(dev_priv) >=3D 13)
>  		crtc_state->vrr.guardband =3D
>=20
> 	REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK,
> trans_vrr_ctl); diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 5670eee4a498..a4a510793344
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1237,6 +1237,7 @@
>  #define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
>  #define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
>  #define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> +#define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
>  #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>  #define   VRR_CTL_PIPELINE_FULL(x)
> 	REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
>  #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
> @@ -1328,6 +1329,15 @@
>  #define VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
>  #define VRR_VSYNC_START(vsync_start)
> 	REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
>=20
> +#define	_TRANS_CMRR_M_LO_A		0x604F0
> +#define	_TRANS_CMRR_M_HI_A		0x604F4
> +#define	_TRANS_CMRR_N_LO_A		0x604F8
> +#define	_TRANS_CMRR_N_HI_A		0x604FC
> +#define	TRANS_CMRR_M_LO(trans)
> 	_MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_LO_A)
> +#define	TRANS_CMRR_M_HI(trans)
> 	_MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_HI_A)
> +#define	TRANS_CMRR_N_LO(trans)
> 	_MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_LO_A)
> +#define	TRANS_CMRR_N_HI(trans)
> 	_MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_HI_A)
> +
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)
> --
> 2.25.1

