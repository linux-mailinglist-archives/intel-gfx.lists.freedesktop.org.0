Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4880BA7A615
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 17:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACB8610E275;
	Thu,  3 Apr 2025 15:17:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W+OdcLN1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E32610E275;
 Thu,  3 Apr 2025 15:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743693467; x=1775229467;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/Vx07nq/Sr2A27L7ZxcB/dPC670VgRwUhQ7jWzQqChU=;
 b=W+OdcLN1l2PwaBCt59gBh9bMj3pkEjF6nPPdt20M4Ad3j1g1Qa+9xsbE
 4YiIF+ArtiFQgtsN8+gUVBhrI/nZSYDmtrtSZcxjTyH13W5H/9cbWwQ16
 Ri8r08dUyW/raV7QvtyxMHiyh81VcalJJdRnzilLwPE+rX3RH413O3G/R
 Tdqgr8KyhxEsKGY7tb631ZENVDTjjgMtArricqwptSYVjKWO2O0KcFeeh
 cZ1rZpKpvrr87lY4vwPDzk7qJeUxGN1zTOpZbzKU4bH+er1tP4cZLH9ha
 IXvVGX/Y7gnzy9LRoAysRk+YiSCASlf5EV1KLddnsAML4v7CgxpBnj5nx w==;
X-CSE-ConnectionGUID: 3ChwiM97Qy6T0Gh0072S5w==
X-CSE-MsgGUID: ueQqb2f2RmivL+bWOy7J6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="44823763"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="44823763"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 08:17:47 -0700
X-CSE-ConnectionGUID: TAh7W1DSRGCamBbN1K1oUA==
X-CSE-MsgGUID: 2q0kcG4NStGJKaXH2tyNvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="132165243"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2025 08:17:46 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 3 Apr 2025 08:17:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 3 Apr 2025 08:17:45 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 3 Apr 2025 08:17:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bnVdT8NQPy3t+SbpZa0bk7V06fM+H7UIVs/MV+uhTAS14sXK9MkLfAFciLlcsleSUdntsB2x06zO4+9jZHt450CLKER5def/Ew7ihvqwFrCC4Gqkb5Ip3VMkOm7WymTQIlKQMvN+u6zM6VFA2KkE/tIrC46v21k9CRyngEj7UqW45UqLadfh8GRlZ+be01CsGRD5djYer5Q1yP8A03Pu56vcwcyXnRSJpSblkQzVI58RAVzITmdiETyxRiU1WkMdi1aMvA5fZZAHOboFsXRXAeO/CfEzquwqT2dlsIoiLhfOQRc4DRJ6bI9UPIKsV+XgS2M4xQ0xhGxRr0Y7LpGT0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=czWqNwKTUSTJwvEHPDFQemnsA9fwyNUeokyij6d6Pe8=;
 b=I+g6YJAKAdVdzTLYzJD8zpCTcawtNF7evilVw8GtmjZJpFw8pRt+eVr5F4j9SHVC4rNNS2vMI9ga2ftB/saNPxUJF9bwaISb2oXYWQ0ovWP9b7Syes3H0AV4H3D777ih4GEqvGa/kC7liZVtKchiWAKVcPXEi3PqSc0B3WbxBITeoyoVHIPQSMahYoF0UosO+N6uVWM1RBzDRxk8TsxpJns5QVJP1caxPIwQ60VEfhZmjE2FCvV7A4rhHh4EhX350f3OdJxbEH2kaMHN8LMySH6H4CVcfzRq3UZ5xG2n0OriPZQCvDH7+nCcucoCCM3Kee28Hv9MT8nAAn12kwFLfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB6825.namprd11.prod.outlook.com (2603:10b6:806:2a0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 3 Apr
 2025 15:17:26 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8534.043; Thu, 3 Apr 2025
 15:17:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH 05/16] drm/i915/dpll: Move away from using shared dpll
Thread-Topic: [PATCH 05/16] drm/i915/dpll: Move away from using shared dpll
Thread-Index: AQHbo6nGmd9/cIGAgUeKZnOtGmCXcrOSC7uAgAADrMA=
Date: Thu, 3 Apr 2025 15:17:26 +0000
Message-ID: <SN7PR11MB675077F29F01399A3E76FD0BE3AE2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
 <20250402083204.1523470-6-suraj.kandpal@intel.com> <875xjl1e4q.fsf@intel.com>
In-Reply-To: <875xjl1e4q.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB6825:EE_
x-ms-office365-filtering-correlation-id: 5cddd765-bd9c-44cb-8808-08dd72c2a491
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?jmWJhlbI7r8Tr1i1y53pI8FmH4HzgBIk4E5823uOM3M/3QbmhaO9ahZiTxJR?=
 =?us-ascii?Q?Nps1CChIuVDRZIrx72ym4FmQfssQo0SsRE/bMi2XtGNZ4NMdVwfGxLmk5uKd?=
 =?us-ascii?Q?6NkyBeWJ+iwqR0bIC00GfCTVNQ/+846eiW0z+nydZcncvGAjqYBQau3SDBpj?=
 =?us-ascii?Q?a4rr+A6MoqgsiFJzu+kC6YZe1NJgcbSdEm3Xj0BySxuQBgRtKkVzRKndgUiU?=
 =?us-ascii?Q?rmowl08AqbjwN+buEgOBQk6N1sg8igXeLqvAahdjHT40xiyxa0uCQ7f9bJQK?=
 =?us-ascii?Q?ZZQFfzxmqHYGL8Px990ozqLwjJvNKbWKXNX66+Hu2ZpML8OAaG5FR5yaXKub?=
 =?us-ascii?Q?NNWfhYyq79vIlqK6cEW2rlVDYR4uuQCg4DVqLFcEb2ursu/kgRI6C14qJRKT?=
 =?us-ascii?Q?TlLMigp3OWhY4uPZ/QWArX+6Y0kz6Cp9gyETlIBDcf/ifaPND6hUJNMcdgWQ?=
 =?us-ascii?Q?58KlrOM2erXniaZo15eewQFXul08MXrEhb0nK1uP90wPRKYT2mW88dSVoCjT?=
 =?us-ascii?Q?oUgsiH7DtFUxPtPfcVGNtLY64rn7PFhqR1tA334uv+FC7GfpLsccTn5RvQFk?=
 =?us-ascii?Q?1E6ZvytmRDfuFeZiWWd47ysdXou3d3ZrJfFPH/T6mhXl+l8kEaA897/VchAb?=
 =?us-ascii?Q?D2Ac/Pq7qnfuLkezwJ2zOm/APoeMBfBuweqngreikn1zilfxEnZ5zaioMJMy?=
 =?us-ascii?Q?wPlJxqtKn+FcvBxqp5prYxEiMHe/aqthaZB+WknuSQhk5PH2cXohGAndjgwh?=
 =?us-ascii?Q?FEjxXZqJ9sRTzvp+g3LmvTqpMKSc52Gi7rz10KjEkPEArMnEWanduYYKOHcm?=
 =?us-ascii?Q?abhm0md3NEBGbMAwigBTZHJVyrl0UXsEpzrflS1FNAgQw6324eGHuVnMR655?=
 =?us-ascii?Q?JI1aW1yAv107omex4uN6gYsspBe6sVM0DH5RizGrNUJg/P2udspwiRvi2la2?=
 =?us-ascii?Q?SBzpbQXobpG1TlWUEg+xS3Anam9GaQsgiDjrBKJNALPK4AKY+37R9yWWgIAp?=
 =?us-ascii?Q?goM+5PI87PGA/6LWdu0F0+ZqdikZldXAGcNaxt/xP5CRVD3V5XaHUmiKZ0mN?=
 =?us-ascii?Q?yxSH7xIRdlbXMl0wFYbvxs7KSs+EiiiBoI8WahN5En9ASX0M0lGhEtayfYgV?=
 =?us-ascii?Q?vEX90Qv1hJlWQrNKKJDY2XlB3BflSll9r/UHU5ufVZipEdI6Jn5PkL0bcHyP?=
 =?us-ascii?Q?u/ZWGouNu/3RnA9xAL6HwFW8zX4z7hVnRzFTVwnKyn+1gR6D9Dmf1VJCwqp0?=
 =?us-ascii?Q?8xdPslCajMGcfGmQqt3je6R5Dl1DnWTP1wyXWK97XC0jS00+r/O1QqKDLhf5?=
 =?us-ascii?Q?qY5G7XO+dfc6my9ni+u333CSo35LLFW6G6c9eZ7dDPMsw7DY5ktqQQGKMvwg?=
 =?us-ascii?Q?0LIO+8NcQo/EQpOx+WAlyhkINHGDv8cEsCQi9vjD+GduE5uUvJ9Mig0bm5ww?=
 =?us-ascii?Q?J+RKbFgajxSHfQHqhH2Qqh2XUZ8YcLIt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2HslZkMAxP5+rEOXoZmlUO1xuFOWGMJlp/ltMnjsnXUfdiJx0Ct2iv4AQn74?=
 =?us-ascii?Q?MqfIf8xQxElzjGpVpFVWroW6MQ98HRivr2XCdbTmJgVwZUfWzbjvWBq2eLYF?=
 =?us-ascii?Q?u/MQqSLLONMUDCIj2VIBy5CKzsGJi4kv6TFqaUsQ0jel1ZChyDkDT5kCUcqA?=
 =?us-ascii?Q?pG61Df4ORn3qeXMNWmzsXrxF++gTliIjczBhr8Oa4UIXpn7ey9ZeRuTz2OEG?=
 =?us-ascii?Q?Ds8w1kItf4wIFDU+rIxl3gpbXD4O9abEwNN364NrSKNZmAiqCfBD8afRG6Lm?=
 =?us-ascii?Q?W+ity/MvsM9T+fktJCDYPgDdYH8ksd5pBjDhvkfwA81Nl0taqQEtte10TThp?=
 =?us-ascii?Q?r/UsO/QFMUOqsmhKuev75Iqt3IMYtEGpqChSg5mylfVE6k87A731igoghBHt?=
 =?us-ascii?Q?E+MPQN5dPkcG0NJiO7Ox/+sOno5q+ovEzqOrc3liFlYXjr5K9azFRb1LDmXn?=
 =?us-ascii?Q?XqIING1VEVZP2kAVxmwm119DHpAkTYFwtQQa8ON1LjkQnBO83nxjomZGHu3d?=
 =?us-ascii?Q?xH0Cu65EvLptuL1/0cVhrI4J8UKdSIy2Sl+dbnPxGBiYj3/oTcvn440b9wl0?=
 =?us-ascii?Q?mlC70fE7T7Eybwh48wswyEirvVkrH6/fg+PUczqi/Y9vOvbpckeSQZXD41df?=
 =?us-ascii?Q?Dmsm4LX8wc2Jpoxq+uUwPDX3DP+YyiQlU5QiagNkpYKFBzXfKSLCiAgL/z6p?=
 =?us-ascii?Q?orboLTiuMoy+Dad7kExedHL9H1n29cuYcmgeG5Oo/Dq4EFeWP7VkO2XjXCnT?=
 =?us-ascii?Q?6tTZDQ3dSxkaOSjNzNk6sgBhcI44kHSE7N6gXSHzkHIAu/i+zW7yGVz7okjs?=
 =?us-ascii?Q?gime4Qn1tZrrKO871jXV/zkdTR1Gua3moej2oIzjolNZmPbKmjOZBB1M98k3?=
 =?us-ascii?Q?JFIZqN5FT3uVp2jwaRbZYznuteOyaAx9bsGu9sXUPnC1qDPTNURR/0NDTACM?=
 =?us-ascii?Q?nKRk14C6Sq/c/+46frVpOC0u8cNOZVR4Kalv9byy1gyOfFwBfstkciFagMgn?=
 =?us-ascii?Q?VAlnXP9AZSGK7K40caW85iFFTC2m8lz3lwC/a4Mn1eJa1396ZOQE/f9EUk5H?=
 =?us-ascii?Q?seQZt95jWJSVQIfJgmIjJDtSeyKxMT9j6NWmC4QOv+MlYBUjz+fvxpFmuUcf?=
 =?us-ascii?Q?6w2CsoOokNiS29RohEinJHtp7qmWq8AapFbSpFKLXezGQGz642WFwz378csu?=
 =?us-ascii?Q?8S+aCjulct3z8JtdNEVWkb/rFM138hItnRskhfS/ptQvjbLxBF58o7m8odYH?=
 =?us-ascii?Q?7gTxJ3HaIwVJ7nUeyFh6SwN8LzUuwFJUfvBf3jKyFfHWPPy0s+531eV8/DBA?=
 =?us-ascii?Q?6vP+v1OdXMUly8wcs5ka19HmrFaH4dnbcnGAixDwgc/g3yYSLSPdRHJsL5ss?=
 =?us-ascii?Q?j3AMR5gBXhMdR/o+PeodmqlAhOtnuUbGOCKgi9fIMkRk2RXueJk9T4OS8mVT?=
 =?us-ascii?Q?rMqJxTaiBDRSGku902GteyKP59OPvu1zfXj/EJdwzB76xQSEYTQpgzmge92/?=
 =?us-ascii?Q?wutc9T7NGCCXYNLLIO+tdBngc2lSCZ+MD0543l4kmI4rzu2FOzL3zvGTNsLd?=
 =?us-ascii?Q?IoxbyPsXsebCcmX9OilnW6GW9iiaGMNxsaLYehYb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cddd765-bd9c-44cb-8808-08dd72c2a491
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2025 15:17:26.6375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aw5tOxmaHj7q/N4SM5yg1VzgIB2cdltnriwmfkr/vbbPa18EDXH/R6mLWJkGQprDWb+/VzXrXLW4jX/7QlcEfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6825
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, April 3, 2025 8:33 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>; Syrjala,
> Ville <ville.syrjala@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 05/16] drm/i915/dpll: Move away from using shared dpl=
l
>=20
> On Wed, 02 Apr 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Rename functions to move away from using shared dpll in the dpll
> > framework as much as possible since dpll may not always be shared.
> >
> > --v2
> > -Use intel_dpll_global instead of global_dpll [Jani]
>=20
> I regret I didn't perhaps think this through in my earlier review, or did=
n't get the
> message across, but... why not just drop both shared and global? Just dpl=
l.
>=20

I think that can be done if one of my previous comments in the previous pat=
ch makes sense and I can=20
Spin a new revision more towards this approach of dropping both global and =
shared

Regards,
Suraj Kandpal

>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  14 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
> >  .../drm/i915/display/intel_display_driver.c   |   2 +-
> >  drivers/gpu/drm/i915/display/intel_dpll.c     |  10 +-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 150
> > +++++++++---------  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  32=
 ++--
> >  drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
> >  .../drm/i915/display/intel_modeset_setup.c    |   2 +-
> >  .../drm/i915/display/intel_modeset_verify.c   |   4 +-
> >  .../gpu/drm/i915/display/intel_pch_display.c  |  14 +-
> >  10 files changed, 119 insertions(+), 119 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index a8934ea5077d..3fe330bf2636 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -1567,7 +1567,7 @@ _icl_ddi_get_pll(struct intel_display *display,
> > i915_reg_t reg,
> >
> >  	id =3D (intel_de_read(display, reg) & clk_sel_mask) >> clk_sel_shift;
> >
> > -	return intel_get_shared_dpll_by_id(display, id);
> > +	return intel_get_dpll_global_by_id(display, id);
> >  }
> >
> >  static void adls_ddi_enable_clock(struct intel_encoder *encoder, @@
> > -1721,7 +1721,7 @@ static struct intel_dpll_global *dg1_ddi_get_pll(str=
uct
> intel_encoder *encoder)
> >  	if (phy >=3D PHY_C)
> >  		id +=3D DPLL_ID_DG1_DPLL2;
> >
> > -	return intel_get_shared_dpll_by_id(display, id);
> > +	return intel_get_dpll_global_by_id(display, id);
> >  }
> >
> >  static void icl_ddi_combo_enable_clock(struct intel_encoder *encoder,
> > @@ -1893,7 +1893,7 @@ static struct intel_dpll_global
> *icl_ddi_tc_get_pll(struct intel_encoder *encode
> >  		return NULL;
> >  	}
> >
> > -	return intel_get_shared_dpll_by_id(display, id);
> > +	return intel_get_dpll_global_by_id(display, id);
> >  }
> >
> >  static struct intel_dpll_global *bxt_ddi_get_pll(struct intel_encoder
> > *encoder) @@ -1916,7 +1916,7 @@ static struct intel_dpll_global
> *bxt_ddi_get_pll(struct intel_encoder *encoder)
> >  		return NULL;
> >  	}
> >
> > -	return intel_get_shared_dpll_by_id(display, id);
> > +	return intel_get_dpll_global_by_id(display, id);
> >  }
> >
> >  static void skl_ddi_enable_clock(struct intel_encoder *encoder, @@
> > -1984,7 +1984,7 @@ static struct intel_dpll_global *skl_ddi_get_pll(str=
uct
> intel_encoder *encoder)
> >  	id =3D (tmp & DPLL_CTRL2_DDI_CLK_SEL_MASK(port)) >>
> >  		DPLL_CTRL2_DDI_CLK_SEL_SHIFT(port);
> >
> > -	return intel_get_shared_dpll_by_id(display, id);
> > +	return intel_get_dpll_global_by_id(display, id);
> >  }
> >
> >  void hsw_ddi_enable_clock(struct intel_encoder *encoder, @@ -2051,7
> > +2051,7 @@ static struct intel_dpll_global *hsw_ddi_get_pll(struct
> intel_encoder *encoder)
> >  		return NULL;
> >  	}
> >
> > -	return intel_get_shared_dpll_by_id(display, id);
> > +	return intel_get_dpll_global_by_id(display, id);
> >  }
> >
> >  void intel_ddi_enable_clock(struct intel_encoder *encoder, @@ -2758,7
> > +2758,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state
> *state,
> >  	 * 4. Enable the port PLL.
> >  	 *
> >  	 * The PLL enabling itself was already done before this function by
> > -	 * hsw_crtc_enable()->intel_enable_shared_dpll().  We need only
> > +	 * hsw_crtc_enable()->intel_enable_dpll_global().  We need only
> >  	 * configure the PLL to port mapping here.
> >  	 */
> >  	intel_ddi_enable_clock(encoder, crtc_state); diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 5b808bad61e0..904b9544515b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1662,7 +1662,7 @@ static void hsw_crtc_enable(struct
> intel_atomic_state *state,
> >  	intel_encoders_pre_pll_enable(state, crtc);
> >
> >  	if (new_crtc_state->dpll_global)
> > -		intel_enable_shared_dpll(new_crtc_state);
> > +		intel_enable_dpll_global(new_crtc_state);
> >
> >  	intel_encoders_pre_enable(state, crtc);
> >
> > @@ -1791,7 +1791,7 @@ static void hsw_crtc_disable(struct
> intel_atomic_state *state,
> >  	intel_encoders_disable(state, crtc);
> >  	intel_encoders_post_disable(state, crtc);
> >
> > -	intel_disable_shared_dpll(old_crtc_state);
> > +	intel_disable_dpll_global(old_crtc_state);
> >
> >  	intel_encoders_post_pll_disable(state, crtc);
> >
> > @@ -6429,7 +6429,7 @@ int intel_atomic_check(struct drm_device *dev,
> >
> >  		any_ms =3D true;
> >
> > -		intel_release_shared_dplls(state, crtc);
> > +		intel_release_dpll_globals(state, crtc);
> >  	}
> >
> >  	if (any_ms && !check_digital_port_conflicts(state)) { @@ -7523,7
> > +7523,7 @@ static int intel_atomic_swap_state(struct
> > intel_atomic_state *state)
> >
> >  	intel_atomic_swap_global_state(state);
> >
> > -	intel_shared_dpll_swap_state(state);
> > +	intel_dpll_swap_state(state);
> >
> >  	intel_atomic_track_fbs(state);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index 4edadebad13b..b6c670c54eb1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -441,7 +441,7 @@ int intel_display_driver_probe_nogem(struct
> intel_display *display)
> >  	}
> >
> >  	intel_plane_possible_crtcs_init(display);
> > -	intel_shared_dpll_init(display);
> > +	intel_dpll_global_init(display);
> >  	intel_fdi_pll_freq_update(display);
> >
> >  	intel_update_czclk(display);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> > b/drivers/gpu/drm/i915/display/intel_dpll.c
> > index c6d29382378b..04fb76a399ab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> > @@ -1162,7 +1162,7 @@ static int hsw_crtc_compute_clock(struct
> intel_atomic_state *state,
> >  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> >  		return 0;
> >
> > -	ret =3D intel_compute_shared_dplls(state, crtc, encoder);
> > +	ret =3D intel_compute_dpll_globals(state, crtc, encoder);
> >  	if (ret)
> >  		return ret;
> >
> > @@ -1190,7 +1190,7 @@ static int hsw_crtc_get_shared_dpll(struct
> intel_atomic_state *state,
> >  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
> >  		return 0;
> >
> > -	return intel_reserve_shared_dplls(state, crtc, encoder);
> > +	return intel_reserve_dpll_globals(state, crtc, encoder);
> >  }
> >
> >  static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
> > @@ -1224,7 +1224,7 @@ static int mtl_crtc_compute_clock(struct
> intel_atomic_state *state,
> >  	if (ret)
> >  		return ret;
> >
> > -	/* TODO: Do the readback via intel_compute_shared_dplls() */
> > +	/* TODO: Do the readback via intel_compute_dpll_globals() */
> >  	crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(encoder,
> > &crtc_state->dpll_hw_state.cx0pll);
> >
> >  	crtc_state->hw.adjusted_mode.crtc_clock =3D
> > intel_crtc_dotclock(crtc_state); @@ -1397,7 +1397,7 @@ static int
> ilk_crtc_compute_clock(struct intel_atomic_state *state,
> >  	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
> >  			 &crtc_state->dpll);
> >
> > -	ret =3D intel_compute_shared_dplls(state, crtc, NULL);
> > +	ret =3D intel_compute_dpll_globals(state, crtc, NULL);
> >  	if (ret)
> >  		return ret;
> >
> > @@ -1417,7 +1417,7 @@ static int ilk_crtc_get_shared_dpll(struct
> intel_atomic_state *state,
> >  	if (!crtc_state->has_pch_encoder)
> >  		return 0;
> >
> > -	return intel_reserve_shared_dplls(state, crtc, NULL);
> > +	return intel_reserve_dpll_globals(state, crtc, NULL);
> >  }
> >
> >  static u32 vlv_dpll(const struct intel_crtc_state *crtc_state) diff
> > --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 833c90f3f0f1..e6546d735799 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -49,21 +49,21 @@
> >   * share a PLL if their configurations match.
> >   *
> >   * This file provides an abstraction over display PLLs. The function
> > - * intel_shared_dpll_init() initializes the PLLs for the given
> > platform.  The
> > + * intel_dpll_global_init() initializes the PLLs for the given
> > + platform.  The
> >   * users of a PLL are tracked and that tracking is integrated with the=
 atomic
> >   * modset interface. During an atomic operation, required PLLs can be
> reserved
> >   * for a given CRTC and encoder configuration by calling
> > - * intel_reserve_shared_dplls() and previously reserved PLLs can be
> > released
> > - * with intel_release_shared_dplls().
> > + * intel_reserve_dpll_globals() and previously reserved PLLs can be
> > + released
> > + * with intel_release_dpll_globals().
> >   * Changes to the users are first staged in the atomic state, and
> > then made
> > - * effective by calling intel_shared_dpll_swap_state() during the
> > atomic
> > + * effective by calling intel_dpll_swap_state() during the atomic
> >   * commit phase.
> >   */
> >
> >  /* platform specific hooks for managing DPLLs */  struct
> > intel_dpll_global_funcs {
> >  	/*
> > -	 * Hook for enabling the pll, called from intel_enable_shared_dpll() =
if
> > +	 * Hook for enabling the pll, called from intel_enable_dpll_global()
> > +if
> >  	 * the pll is not already enabled.
> >  	 */
> >  	void (*enable)(struct intel_display *display, @@ -71,7 +71,7 @@
> > struct intel_dpll_global_funcs {
> >  		       const struct intel_dpll_hw_state *dpll_hw_state);
> >
> >  	/*
> > -	 * Hook for disabling the pll, called from intel_disable_shared_dpll(=
)
> > +	 * Hook for disabling the pll, called from
> > +intel_disable_dpll_global()
> >  	 * only when it is safe to disable the pll, i.e., there are no more
> >  	 * tracked users for it.
> >  	 */
> > @@ -130,7 +130,7 @@ intel_atomic_duplicate_dpll_state(struct
> > intel_display *display,  }
> >
> >  static struct intel_dpll_state *
> > -intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
> > +intel_atomic_get_dpll_global_state(struct drm_atomic_state *s)
> >  {
> >  	struct intel_atomic_state *state =3D to_intel_atomic_state(s);
> >  	struct intel_display *display =3D to_intel_display(state); @@ -148,7
> > +148,7 @@ intel_atomic_get_shared_dpll_state(struct drm_atomic_state
> > *s)  }
> >
> >  /**
> > - * intel_get_shared_dpll_by_id - get a DPLL given its id
> > + * intel_get_dpll_global_by_id - get a DPLL given its id
> >   * @display: intel_display device instance
> >   * @id: pll id
> >   *
> > @@ -156,7 +156,7 @@ intel_atomic_get_shared_dpll_state(struct
> drm_atomic_state *s)
> >   * A pointer to the DPLL with @id
> >   */
> >  struct intel_dpll_global *
> > -intel_get_shared_dpll_by_id(struct intel_display *display,
> > +intel_get_dpll_global_by_id(struct intel_display *display,
> >  			    enum intel_dpll_id id)
> >  {
> >  	struct intel_dpll_global *pll;
> > @@ -172,7 +172,7 @@ intel_get_shared_dpll_by_id(struct intel_display
> > *display,  }
> >
> >  /* For ILK+ */
> > -void assert_shared_dpll(struct intel_display *display,
> > +void assert_dpll_global(struct intel_display *display,
> >  			struct intel_dpll_global *pll,
> >  			bool state)
> >  {
> > @@ -247,12 +247,12 @@ static void _intel_disable_shared_dpll(struct
> > intel_display *display,  }
> >
> >  /**
> > - * intel_enable_shared_dpll - enable a CRTC's shared DPLL
> > - * @crtc_state: CRTC, and its state, which has a shared DPLL
> > + * intel_enable_dpll_global - enable a CRTC's global DPLL
> > + * @crtc_state: CRTC, and its state, which has a DPLL
> >   *
> > - * Enable the shared DPLL used by @crtc.
> > + * Enable DPLL used by @crtc.
> >   */
> > -void intel_enable_shared_dpll(const struct intel_crtc_state
> > *crtc_state)
> > +void intel_enable_dpll_global(const struct intel_crtc_state
> > +*crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -279,7 +279,7 @@ void intel_enable_shared_dpll(const struct
> > intel_crtc_state *crtc_state)
> >
> >  	if (old_mask) {
> >  		drm_WARN_ON(display->drm, !pll->on);
> > -		assert_shared_dpll_enabled(display, pll);
> > +		assert_dpll_global_enabled(display, pll);
> >  		goto out;
> >  	}
> >  	drm_WARN_ON(display->drm, pll->on);
> > @@ -293,12 +293,12 @@ void intel_enable_shared_dpll(const struct
> > intel_crtc_state *crtc_state)  }
> >
> >  /**
> > - * intel_disable_shared_dpll - disable a CRTC's shared DPLL
> > + * intel_disable_dpll_global - disable a CRTC's shared DPLL
> >   * @crtc_state: CRTC, and its state, which has a shared DPLL
> >   *
> > - * Disable the shared DPLL used by @crtc.
> > + * Disable DPLL used by @crtc.
> >   */
> > -void intel_disable_shared_dpll(const struct intel_crtc_state
> > *crtc_state)
> > +void intel_disable_dpll_global(const struct intel_crtc_state
> > +*crtc_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > @@ -323,7 +323,7 @@ void intel_disable_shared_dpll(const struct
> intel_crtc_state *crtc_state)
> >  		    pll->info->name, pll->active_mask, pll->on,
> >  		    crtc->base.base.id, crtc->base.name);
> >
> > -	assert_shared_dpll_enabled(display, pll);
> > +	assert_dpll_global_enabled(display, pll);
> >  	drm_WARN_ON(display->drm, !pll->on);
> >
> >  	pll->active_mask &=3D ~pipe_mask;
> > @@ -355,7 +355,7 @@ intel_dpll_mask_all(struct intel_display *display)
> > }
> >
> >  static struct intel_dpll_global *
> > -intel_find_shared_dpll(struct intel_atomic_state *state,
> > +intel_find_dpll_global(struct intel_atomic_state *state,
> >  		       const struct intel_crtc *crtc,
> >  		       const struct intel_dpll_hw_state *dpll_hw_state,
> >  		       unsigned long dpll_mask)
> > @@ -366,14 +366,14 @@ intel_find_shared_dpll(struct intel_atomic_state
> *state,
> >  	struct intel_dpll_global *unused_pll =3D NULL;
> >  	enum intel_dpll_id id;
> >
> > -	dpll_state =3D intel_atomic_get_shared_dpll_state(&state->base);
> > +	dpll_state =3D intel_atomic_get_dpll_global_state(&state->base);
> >
> >  	drm_WARN_ON(display->drm, dpll_mask & ~dpll_mask_all);
> >
> >  	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
> >  		struct intel_dpll_global *pll;
> >
> > -		pll =3D intel_get_shared_dpll_by_id(display, id);
> > +		pll =3D intel_get_dpll_global_by_id(display, id);
> >  		if (!pll)
> >  			continue;
> >
> > @@ -409,7 +409,7 @@ intel_find_shared_dpll(struct intel_atomic_state
> > *state,  }
> >
> >  /**
> > - * intel_reference_shared_dpll_crtc - Get a DPLL reference for a CRTC
> > + * intel_reference_dpll_global_crtc - Get a DPLL reference for a CRTC
> >   * @crtc: CRTC on which behalf the reference is taken
> >   * @pll: DPLL for which the reference is taken
> >   * @dpll_state: the DPLL atomic state in which the reference is
> > tracked @@ -417,7 +417,7 @@ intel_find_shared_dpll(struct
> intel_atomic_state *state,
> >   * Take a reference for @pll tracking the use of it by @crtc.
> >   */
> >  static void
> > -intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,
> > +intel_reference_dpll_global_crtc(const struct intel_crtc *crtc,
> >  				 const struct intel_dpll_global *pll,
> >  				 struct intel_dpll_state *dpll_state)  { @@ -
> 432,23 +432,23 @@
> > intel_reference_shared_dpll_crtc(const struct intel_crtc *crtc,  }
> >
> >  static void
> > -intel_reference_shared_dpll(struct intel_atomic_state *state,
> > +intel_reference_dpll_global(struct intel_atomic_state *state,
> >  			    const struct intel_crtc *crtc,
> >  			    const struct intel_dpll_global *pll,
> >  			    const struct intel_dpll_hw_state *dpll_hw_state)  {
> >  	struct intel_dpll_state *dpll_state;
> >
> > -	dpll_state =3D intel_atomic_get_shared_dpll_state(&state->base);
> > +	dpll_state =3D intel_atomic_get_dpll_global_state(&state->base);
> >
> >  	if (dpll_state[pll->index].pipe_mask =3D=3D 0)
> >  		dpll_state[pll->index].hw_state =3D *dpll_hw_state;
> >
> > -	intel_reference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
> > +	intel_reference_dpll_global_crtc(crtc, pll,
> > +&dpll_state[pll->index]);
> >  }
> >
> >  /**
> > - * intel_unreference_shared_dpll_crtc - Drop a DPLL reference for a
> > CRTC
> > + * intel_unreference_dpll_global_crtc - Drop a DPLL reference for a
> > + CRTC
> >   * @crtc: CRTC on which behalf the reference is dropped
> >   * @pll: DPLL for which the reference is dropped
> >   * @dpll_state: the DPLL atomic state in which the reference is
> > tracked @@ -456,7 +456,7 @@ intel_reference_shared_dpll(struct
> intel_atomic_state *state,
> >   * Drop a reference for @pll tracking the end of use of it by @crtc.
> >   */
> >  void
> > -intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
> > +intel_unreference_dpll_global_crtc(const struct intel_crtc *crtc,
> >  				   const struct intel_dpll_global *pll,
> >  				   struct intel_dpll_state *dpll_state)  { @@ -
> 470,15 +470,15 @@
> > intel_unreference_shared_dpll_crtc(const struct intel_crtc *crtc,
> >  		    crtc->base.base.id, crtc->base.name, pll->info->name);  }
> >
> > -static void intel_unreference_shared_dpll(struct intel_atomic_state
> > *state,
> > +static void intel_unreference_dpll_global(struct intel_atomic_state
> > +*state,
> >  					  const struct intel_crtc *crtc,
> >  					  const struct intel_dpll_global *pll)  {
> >  	struct intel_dpll_state *dpll_state;
> >
> > -	dpll_state =3D intel_atomic_get_shared_dpll_state(&state->base);
> > +	dpll_state =3D intel_atomic_get_dpll_global_state(&state->base);
> >
> > -	intel_unreference_shared_dpll_crtc(crtc, pll, &dpll_state[pll->index]=
);
> > +	intel_unreference_dpll_global_crtc(crtc, pll,
> > +&dpll_state[pll->index]);
> >  }
> >
> >  static void intel_put_dpll(struct intel_atomic_state *state, @@
> > -494,11 +494,11 @@ static void intel_put_dpll(struct intel_atomic_state
> *state,
> >  	if (!old_crtc_state->dpll_global)
> >  		return;
> >
> > -	intel_unreference_shared_dpll(state, crtc, old_crtc_state-
> >dpll_global);
> > +	intel_unreference_dpll_global(state, crtc,
> > +old_crtc_state->dpll_global);
> >  }
> >
> >  /**
> > - * intel_shared_dpll_swap_state - make atomic DPLL configuration
> > effective
> > + * intel_dpll_swap_state - make atomic DPLL configuration effective
> >   * @state: atomic state
> >   *
> >   * This is the dpll version of drm_atomic_helper_swap_state() since
> > the @@ -508,7 +508,7 @@ static void intel_put_dpll(struct
> intel_atomic_state *state,
> >   * i.e. it also puts the current state into @state, even though there =
is no
> >   * need for that at this moment.
> >   */
> > -void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
> > +void intel_dpll_swap_state(struct intel_atomic_state *state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(state);
> >  	struct intel_dpll_state *dpll_state =3D state->dpll_state; @@ -618,14
> > +618,14 @@ static int ibx_get_dpll(struct intel_atomic_state *state,
> >  	if (HAS_PCH_IBX(i915)) {
> >  		/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
> >  		id =3D (enum intel_dpll_id) crtc->pipe;
> > -		pll =3D intel_get_shared_dpll_by_id(display, id);
> > +		pll =3D intel_get_dpll_global_by_id(display, id);
> >
> >  		drm_dbg_kms(display->drm,
> >  			    "[CRTC:%d:%s] using pre-allocated %s\n",
> >  			    crtc->base.base.id, crtc->base.name,
> >  			    pll->info->name);
> >  	} else {
> > -		pll =3D intel_find_shared_dpll(state, crtc,
> > +		pll =3D intel_find_dpll_global(state, crtc,
> >  					     &crtc_state->dpll_hw_state,
> >  					     BIT(DPLL_ID_PCH_PLL_B) |
> >  					     BIT(DPLL_ID_PCH_PLL_A));
> > @@ -635,7 +635,7 @@ static int ibx_get_dpll(struct intel_atomic_state
> *state,
> >  		return -EINVAL;
> >
> >  	/* reference the pll */
> > -	intel_reference_shared_dpll(state, crtc,
> > +	intel_reference_dpll_global(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> >  	crtc_state->dpll_global =3D pll;
> > @@ -1064,7 +1064,7 @@ hsw_ddi_wrpll_get_dpll(struct intel_atomic_state
> *state,
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >
> > -	return intel_find_shared_dpll(state, crtc,
> > +	return intel_find_dpll_global(state, crtc,
> >  				      &crtc_state->dpll_hw_state,
> >  				      BIT(DPLL_ID_WRPLL2) |
> >  				      BIT(DPLL_ID_WRPLL1));
> > @@ -1111,7 +1111,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state
> *crtc_state)
> >  		return NULL;
> >  	}
> >
> > -	pll =3D intel_get_shared_dpll_by_id(display, pll_id);
> > +	pll =3D intel_get_dpll_global_by_id(display, pll_id);
> >
> >  	if (!pll)
> >  		return NULL;
> > @@ -1167,7 +1167,7 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state
> *state,
> >  	struct intel_crtc_state *crtc_state =3D
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >
> > -	return intel_find_shared_dpll(state, crtc, &crtc_state->dpll_hw_state=
,
> > +	return intel_find_dpll_global(state, crtc,
> > +&crtc_state->dpll_hw_state,
> >  				      BIT(DPLL_ID_SPLL));
> >  }
> >
> > @@ -1231,7 +1231,7 @@ static int hsw_get_dpll(struct intel_atomic_state
> *state,
> >  	if (!pll)
> >  		return -EINVAL;
> >
> > -	intel_reference_shared_dpll(state, crtc,
> > +	intel_reference_dpll_global(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> >  	crtc_state->dpll_global =3D pll;
> > @@ -1940,11 +1940,11 @@ static int skl_get_dpll(struct intel_atomic_sta=
te
> *state,
> >  	struct intel_dpll_global *pll;
> >
> >  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> > -		pll =3D intel_find_shared_dpll(state, crtc,
> > +		pll =3D intel_find_dpll_global(state, crtc,
> >  					     &crtc_state->dpll_hw_state,
> >  					     BIT(DPLL_ID_SKL_DPLL0));
> >  	else
> > -		pll =3D intel_find_shared_dpll(state, crtc,
> > +		pll =3D intel_find_dpll_global(state, crtc,
> >  					     &crtc_state->dpll_hw_state,
> >  					     BIT(DPLL_ID_SKL_DPLL3) |
> >  					     BIT(DPLL_ID_SKL_DPLL2) |
> > @@ -1952,7 +1952,7 @@ static int skl_get_dpll(struct intel_atomic_state
> *state,
> >  	if (!pll)
> >  		return -EINVAL;
> >
> > -	intel_reference_shared_dpll(state, crtc,
> > +	intel_reference_dpll_global(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> >  	crtc_state->dpll_global =3D pll;
> > @@ -2432,12 +2432,12 @@ static int bxt_get_dpll(struct
> > intel_atomic_state *state,
> >
> >  	/* 1:1 mapping between ports and PLLs */
> >  	id =3D (enum intel_dpll_id) encoder->port;
> > -	pll =3D intel_get_shared_dpll_by_id(display, id);
> > +	pll =3D intel_get_dpll_global_by_id(display, id);
> >
> >  	drm_dbg_kms(display->drm, "[CRTC:%d:%s] using pre-allocated %s\n",
> >  		    crtc->base.base.id, crtc->base.name, pll->info->name);
> >
> > -	intel_reference_shared_dpll(state, crtc,
> > +	intel_reference_dpll_global(state, crtc,
> >  				    pll, &crtc_state->dpll_hw_state);
> >
> >  	crtc_state->dpll_global =3D pll;
> > @@ -3388,13 +3388,13 @@ static int icl_get_combo_phy_dpll(struct
> intel_atomic_state *state,
> >  	/* Eliminate DPLLs from consideration if reserved by HTI */
> >  	dpll_mask &=3D ~intel_hti_dpll_mask(display);
> >
> > -	port_dpll->pll =3D intel_find_shared_dpll(state, crtc,
> > +	port_dpll->pll =3D intel_find_dpll_global(state, crtc,
> >  						&port_dpll->hw_state,
> >  						dpll_mask);
> >  	if (!port_dpll->pll)
> >  		return -EINVAL;
> >
> > -	intel_reference_shared_dpll(state, crtc,
> > +	intel_reference_dpll_global(state, crtc,
> >  				    port_dpll->pll, &port_dpll->hw_state);
> >
> >  	icl_update_active_dpll(state, crtc, encoder); @@ -3452,25 +3452,25
> > @@ static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
> >  	int ret;
> >
> >  	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> > -	port_dpll->pll =3D intel_find_shared_dpll(state, crtc,
> > +	port_dpll->pll =3D intel_find_dpll_global(state, crtc,
> >  						&port_dpll->hw_state,
> >  						BIT(DPLL_ID_ICL_TBTPLL));
> >  	if (!port_dpll->pll)
> >  		return -EINVAL;
> > -	intel_reference_shared_dpll(state, crtc,
> > +	intel_reference_dpll_global(state, crtc,
> >  				    port_dpll->pll, &port_dpll->hw_state);
> >
> >
> >  	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
> >  	dpll_id =3D icl_tc_port_to_pll_id(intel_encoder_to_tc(encoder));
> > -	port_dpll->pll =3D intel_find_shared_dpll(state, crtc,
> > +	port_dpll->pll =3D intel_find_dpll_global(state, crtc,
> >  						&port_dpll->hw_state,
> >  						BIT(dpll_id));
> >  	if (!port_dpll->pll) {
> >  		ret =3D -EINVAL;
> >  		goto err_unreference_tbt_pll;
> >  	}
> > -	intel_reference_shared_dpll(state, crtc,
> > +	intel_reference_dpll_global(state, crtc,
> >  				    port_dpll->pll, &port_dpll->hw_state);
> >
> >  	icl_update_active_dpll(state, crtc, encoder); @@ -3479,7 +3479,7 @@
> > static int icl_get_tc_phy_dplls(struct intel_atomic_state *state,
> >
> >  err_unreference_tbt_pll:
> >  	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> > -	intel_unreference_shared_dpll(state, crtc, port_dpll->pll);
> > +	intel_unreference_dpll_global(state, crtc, port_dpll->pll);
> >
> >  	return ret;
> >  }
> > @@ -3534,7 +3534,7 @@ static void icl_put_dplls(struct intel_atomic_sta=
te
> *state,
> >  		if (!old_port_dpll->pll)
> >  			continue;
> >
> > -		intel_unreference_shared_dpll(state, crtc, old_port_dpll->pll);
> > +		intel_unreference_dpll_global(state, crtc, old_port_dpll->pll);
> >  	}
> >  }
> >
> > @@ -4300,12 +4300,12 @@ static const struct intel_dpll_mgr
> > adlp_pll_mgr =3D {  };
> >
> >  /**
> > - * intel_shared_dpll_init - Initialize shared DPLLs
> > + * intel_dpll_global_init - Initialize DPLLs
> >   * @display: intel_display device
> >   *
> > - * Initialize shared DPLLs for @display.
> > + * Initialize DPLLs for @display.
> >   */
> > -void intel_shared_dpll_init(struct intel_display *display)
> > +void intel_dpll_global_init(struct intel_display *display)
> >  {
> >  	struct drm_i915_private *i915 =3D to_i915(display->drm);
> >  	const struct intel_dpll_mgr *dpll_mgr =3D NULL; @@ -4363,7 +4363,7
> @@
> > void intel_shared_dpll_init(struct intel_display *display)  }
> >
> >  /**
> > - * intel_compute_shared_dplls - compute DPLL state CRTC and encoder
> > combination
> > + * intel_compute_dpll_globals - compute DPLL state CRTC and encoder
> > + combination
> >   * @state: atomic state
> >   * @crtc: CRTC to compute DPLLs for
> >   * @encoder: encoder
> > @@ -4371,12 +4371,12 @@ void intel_shared_dpll_init(struct intel_displa=
y
> *display)
> >   * This function computes the DPLL state for the given CRTC and encode=
r.
> >   *
> >   * The new configuration in the atomic commit @state is made
> > effective by
> > - * calling intel_shared_dpll_swap_state().
> > + * calling intel_dpll_swap_state().
> >   *
> >   * Returns:
> >   * 0 on success, negative error code on failure.
> >   */
> > -int intel_compute_shared_dplls(struct intel_atomic_state *state,
> > +int intel_compute_dpll_globals(struct intel_atomic_state *state,
> >  			       struct intel_crtc *crtc,
> >  			       struct intel_encoder *encoder)  { @@ -4390,7
> +4390,7 @@ int
> > intel_compute_shared_dplls(struct intel_atomic_state *state,  }
> >
> >  /**
> > - * intel_reserve_shared_dplls - reserve DPLLs for CRTC and encoder
> > combination
> > + * intel_reserve_dpll_globals - reserve DPLLs for CRTC and encoder
> > + combination
> >   * @state: atomic state
> >   * @crtc: CRTC to reserve DPLLs for
> >   * @encoder: encoder
> > @@ -4400,16 +4400,16 @@ int intel_compute_shared_dplls(struct
> intel_atomic_state *state,
> >   * state.
> >   *
> >   * The new configuration in the atomic commit @state is made
> > effective by
> > - * calling intel_shared_dpll_swap_state().
> > + * calling intel_dpll_swap_state().
> >   *
> >   * The reserved DPLLs should be released by calling
> > - * intel_release_shared_dplls().
> > + * intel_release_dpll_globals().
> >   *
> >   * Returns:
> >   * 0 if all required DPLLs were successfully reserved,
> >   * negative error code otherwise.
> >   */
> > -int intel_reserve_shared_dplls(struct intel_atomic_state *state,
> > +int intel_reserve_dpll_globals(struct intel_atomic_state *state,
> >  			       struct intel_crtc *crtc,
> >  			       struct intel_encoder *encoder)  { @@ -4423,17
> +4423,17 @@
> > int intel_reserve_shared_dplls(struct intel_atomic_state *state,  }
> >
> >  /**
> > - * intel_release_shared_dplls - end use of DPLLs by CRTC in atomic
> > state
> > + * intel_release_dpll_globals - end use of DPLLs by CRTC in atomic
> > + state
> >   * @state: atomic state
> >   * @crtc: crtc from which the DPLLs are to be released
> >   *
> > - * This function releases all DPLLs reserved by
> > intel_reserve_shared_dplls()
> > + * This function releases all DPLLs reserved by
> > + intel_reserve_dpll_globals()
> >   * from the current atomic commit @state and the old @crtc atomic stat=
e.
> >   *
> >   * The new configuration in the atomic commit @state is made
> > effective by
> > - * calling intel_shared_dpll_swap_state().
> > + * calling intel_dpll_swap_state().
> >   */
> > -void intel_release_shared_dplls(struct intel_atomic_state *state,
> > +void intel_release_dpll_globals(struct intel_atomic_state *state,
> >  				struct intel_crtc *crtc)
> >  {
> >  	struct intel_display *display =3D to_intel_display(state); @@ -4442,7
> > +4442,7 @@ void intel_release_shared_dplls(struct intel_atomic_state
> *state,
> >  	/*
> >  	 * FIXME: this function is called for every platform having a
> >  	 * compute_clock hook, even though the platform doesn't yet support
> > -	 * the shared DPLL framework and intel_reserve_shared_dplls() is not
> > +	 * the global DPLL framework and intel_reserve_dpll_globals() is not
> >  	 * called on those.
> >  	 */
> >  	if (!dpll_mgr)
> > @@ -4458,7 +4458,7 @@ void intel_release_shared_dplls(struct
> intel_atomic_state *state,
> >   * @encoder: encoder determining the type of port DPLL
> >   *
> >   * Update the active DPLL for the given @crtc/@encoder in @crtc's
> > atomic state,
> > - * from the port DPLLs reserved previously by
> > intel_reserve_shared_dplls(). The
> > + * from the port DPLLs reserved previously by
> > + intel_reserve_dpll_globals(). The
> >   * DPLL selected will be based on the current mode of the encoder's po=
rt.
> >   */
> >  void intel_update_active_dpll(struct intel_atomic_state *state, @@
> > -4523,7 +4523,7 @@ static void readout_dpll_hw_state(struct intel_displ=
ay
> *display,
> >  			to_intel_crtc_state(crtc->base.state);
> >
> >  		if (crtc_state->hw.active && crtc_state->dpll_global =3D=3D pll)
> > -			intel_reference_shared_dpll_crtc(crtc, pll, &pll->state);
> > +			intel_reference_dpll_global_crtc(crtc, pll, &pll->state);
> >  	}
> >  	pll->active_mask =3D pll->state.pipe_mask;
> >
> > @@ -4684,8 +4684,8 @@ static bool has_alt_port_dpll(const struct
> intel_dpll_global *old_pll,
> >  		(old_pll->info->is_alt_port_dpll ||
> > new_pll->info->is_alt_port_dpll);  }
> >
> > -void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
> > -				    struct intel_crtc *crtc)
> > +void intel_dpll_state_verify(struct intel_atomic_state *state,
> > +			     struct intel_crtc *crtc)
> >  {
> >  	struct intel_display *display =3D to_intel_display(state);
> >  	const struct intel_crtc_state *old_crtc_state =3D @@ -4715,7 +4715,7
> > @@ void intel_shared_dpll_state_verify(struct intel_atomic_state *state=
,
> >  	}
> >  }
> >
> > -void intel_shared_dpll_verify_disabled(struct intel_atomic_state
> > *state)
> > +void intel_dpll_global_verify_disabled(struct intel_atomic_state
> > +*state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(state);
> >  	struct intel_dpll_global *pll;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index bd52e30d83bd..6215da164ffc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -387,24 +387,24 @@ struct intel_dpll_global {  #define SKL_DPLL2 2
> > #define SKL_DPLL3 3
> >
> > -/* shared dpll functions */
> > +/* global dpll functions */
> >  struct intel_dpll_global *
> > -intel_get_shared_dpll_by_id(struct intel_display *display,
> > +intel_get_dpll_global_by_id(struct intel_display *display,
> >  			    enum intel_dpll_id id);
> > -void assert_shared_dpll(struct intel_display *display,
> > +void assert_dpll_global(struct intel_display *display,
> >  			struct intel_dpll_global *pll,
> >  			bool state);
> > -#define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d, p,
> > true) -#define assert_shared_dpll_disabled(d, p) assert_shared_dpll(d,
> > p, false) -int intel_compute_shared_dplls(struct intel_atomic_state
> > *state,
> > +#define assert_dpll_global_enabled(d, p) assert_dpll_global(d, p,
> > +true) #define assert_dpll_global_disabled(d, p) assert_dpll_global(d,
> > +p, false) int intel_compute_dpll_globals(struct intel_atomic_state
> > +*state,
> >  			       struct intel_crtc *crtc,
> >  			       struct intel_encoder *encoder); -int
> > intel_reserve_shared_dplls(struct intel_atomic_state *state,
> > +int intel_reserve_dpll_globals(struct intel_atomic_state *state,
> >  			       struct intel_crtc *crtc,
> >  			       struct intel_encoder *encoder); -void
> > intel_release_shared_dplls(struct intel_atomic_state *state,
> > +void intel_release_dpll_globals(struct intel_atomic_state *state,
> >  				struct intel_crtc *crtc);
> > -void intel_unreference_shared_dpll_crtc(const struct intel_crtc
> > *crtc,
> > +void intel_unreference_dpll_global_crtc(const struct intel_crtc
> > +*crtc,
> >  					const struct intel_dpll_global *pll,
> >  					struct intel_dpll_state
> *shared_dpll_state);  void
> > icl_set_active_port_dpll(struct intel_crtc_state *crtc_state, @@
> > -418,10 +418,10 @@ int intel_dpll_get_freq(struct intel_display
> > *display,  bool intel_dpll_get_hw_state(struct intel_display *display,
> >  			     struct intel_dpll_global *pll,
> >  			     struct intel_dpll_hw_state *dpll_hw_state); -void
> > intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
> > -void intel_disable_shared_dpll(const struct intel_crtc_state
> > *crtc_state); -void intel_shared_dpll_swap_state(struct
> > intel_atomic_state *state); -void intel_shared_dpll_init(struct
> > intel_display *display);
> > +void intel_enable_dpll_global(const struct intel_crtc_state
> > +*crtc_state); void intel_disable_dpll_global(const struct
> > +intel_crtc_state *crtc_state); void intel_dpll_swap_state(struct
> > +intel_atomic_state *state); void intel_dpll_global_init(struct
> > +intel_display *display);
> >  void intel_dpll_update_ref_clks(struct intel_display *display);  void
> > intel_dpll_readout_hw_state(struct intel_display *display);  void
> > intel_dpll_sanitize_state(struct intel_display *display); @@ -435,8
> > +435,8 @@ bool intel_dpll_compare_hw_state(struct intel_display
> > *display,  enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port
> > tc_port);  bool intel_dpll_is_combophy(enum intel_dpll_id id);
> >
> > -void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
> > -				    struct intel_crtc *crtc);
> > -void intel_shared_dpll_verify_disabled(struct intel_atomic_state
> > *state);
> > +void intel_dpll_state_verify(struct intel_atomic_state *state,
> > +			     struct intel_crtc *crtc);
> > +void intel_dpll_global_verify_disabled(struct intel_atomic_state
> > +*state);
> >
> >  #endif /* _INTEL_DPLL_MGR_H_ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> > b/drivers/gpu/drm/i915/display/intel_lvds.c
> > index bc8725aa99da..52f61a120b70 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> > @@ -251,7 +251,7 @@ static void intel_pre_enable_lvds(struct
> > intel_atomic_state *state,
> >
> >  	if (HAS_PCH_SPLIT(i915)) {
> >  		assert_fdi_rx_pll_disabled(display, pipe);
> > -		assert_shared_dpll_disabled(display, crtc_state->dpll_global);
> > +		assert_dpll_global_disabled(display, crtc_state->dpll_global);
> >  	} else {
> >  		assert_pll_disabled(display, pipe);
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index 427eff400b53..4221d1566c8a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -92,7 +92,7 @@ static void intel_crtc_disable_noatomic_begin(struct
> intel_crtc *crtc,
> >  	crtc->base.enabled =3D false;
> >
> >  	if (crtc_state->dpll_global)
> > -		intel_unreference_shared_dpll_crtc(crtc,
> > +		intel_unreference_dpll_global_crtc(crtc,
> >  						   crtc_state->dpll_global,
> >  						   &crtc_state->dpll_global-
> >state);  } diff --git
> > a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > index a008412fdd04..eb080a1d8a42 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > @@ -246,7 +246,7 @@ void intel_modeset_verify_crtc(struct
> intel_atomic_state *state,
> >  	intel_wm_state_verify(state, crtc);
> >  	verify_connector_state(state, crtc);
> >  	verify_crtc_state(state, crtc);
> > -	intel_shared_dpll_state_verify(state, crtc);
> > +	intel_dpll_state_verify(state, crtc);
> >  	intel_mpllb_state_verify(state, crtc);
> >  	intel_cx0pll_state_verify(state, crtc);  } @@ -255,5 +255,5 @@ void
> > intel_modeset_verify_disabled(struct intel_atomic_state *state)  {
> >  	verify_encoder_state(state);
> >  	verify_connector_state(state, NULL);
> > -	intel_shared_dpll_verify_disabled(state);
> > +	intel_dpll_global_verify_disabled(state);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c
> > b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > index 57303ecb77ad..aa39d0fb1e23 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> > @@ -255,7 +255,7 @@ static void ilk_enable_pch_transcoder(const struct
> intel_crtc_state *crtc_state)
> >  	u32 val, pipeconf_val;
> >
> >  	/* Make sure PCH DPLL is enabled */
> > -	assert_shared_dpll_enabled(display, crtc_state->dpll_global);
> > +	assert_dpll_global_enabled(display, crtc_state->dpll_global);
> >
> >  	/* FDI must be feeding us bits for PCH ports */
> >  	assert_fdi_tx_enabled(display, pipe); @@ -388,7 +388,7 @@ void
> > ilk_pch_enable(struct intel_atomic_state *state,
> >  		temp |=3D TRANS_DPLL_ENABLE(pipe);
> >  		sel =3D TRANS_DPLLB_SEL(pipe);
> >  		if (crtc_state->dpll_global =3D=3D
> > -		    intel_get_shared_dpll_by_id(display, DPLL_ID_PCH_PLL_B))
> > +		    intel_get_dpll_global_by_id(display, DPLL_ID_PCH_PLL_B))
> >  			temp |=3D sel;
> >  		else
> >  			temp &=3D ~sel;
> > @@ -400,11 +400,11 @@ void ilk_pch_enable(struct intel_atomic_state
> *state,
> >  	 * transcoder, and we actually should do this to not upset any PCH
> >  	 * transcoder that already use the clock when we share it.
> >  	 *
> > -	 * Note that enable_shared_dpll tries to do the right thing, but
> > -	 * get_shared_dpll unconditionally resets the pll - we need that
> > +	 * Note that enable_dpll_global tries to do the right thing, but
> > +	 * get_dpll_global unconditionally resets the pll - we need that
> >  	 * to have the right LVDS enable sequence.
> >  	 */
> > -	intel_enable_shared_dpll(crtc_state);
> > +	intel_enable_dpll_global(crtc_state);
> >
> >  	/* set transcoder timing, panel must allow it */
> >  	assert_pps_unlocked(display, pipe);
> > @@ -479,7 +479,7 @@ void ilk_pch_post_disable(struct
> > intel_atomic_state *state,
> >
> >  	ilk_fdi_pll_disable(crtc);
> >
> > -	intel_disable_shared_dpll(old_crtc_state);
> > +	intel_disable_dpll_global(old_crtc_state);
> >  }
> >
> >  static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state) @@
> > -536,7 +536,7 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_=
state)
> >  			pll_id =3D DPLL_ID_PCH_PLL_A;
> >  	}
> >
> > -	crtc_state->dpll_global =3D intel_get_shared_dpll_by_id(display, pll_=
id);
> > +	crtc_state->dpll_global =3D intel_get_dpll_global_by_id(display,
> > +pll_id);
> >  	pll =3D crtc_state->dpll_global;
> >
> >  	pll_active =3D intel_dpll_get_hw_state(display, pll,
>=20
> --
> Jani Nikula, Intel
