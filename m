Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EA0C88038
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 05:04:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F76810E4FF;
	Wed, 26 Nov 2025 04:04:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bo8XLHEn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F3510E4FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 04:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764129856; x=1795665856;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iMEceQRPJOotC5R8Nr/mFNuRjYMzt2erkMAgexPCMtk=;
 b=bo8XLHEnfAd2OR8xZ/IOQQsHPMea2A3yuyuH2IcsLVYobZYaHNdjYm1L
 IwKToTfqdRUN7lCDamExphHQoQamzkPEDuWh7S+n4VYGIG/AkywAxgwbQ
 4h8SX0qp5X26T8R+dchT8pUNXqIPap4vg1mZ0gm3zqmrRF9UYXLU778Mf
 YkCXGFPAR+fTqacchS/b4rdKkUSa34DA2h8k84QG//BKIR85YNAQIpvrm
 3K7wbjOME9CmO9cKpRs/OcHjC2c7pXKb6iEGzjOtklSsWm3zlJfFE2nea
 OGAZqyolQTaJtn1i3BkwzauXt/ENXB0kSCbyt1cd9Mo/5wyx7wFl6FYBY g==;
X-CSE-ConnectionGUID: xPGF1YXATsa9wp54QM/jMg==
X-CSE-MsgGUID: frYvyCivQcmNC9iwwCD/Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="77633669"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="77633669"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:04:15 -0800
X-CSE-ConnectionGUID: Jwvo7kVfTn2sLN5pBM0Ryw==
X-CSE-MsgGUID: XgFKBXszQ4GbBwm3pvaHcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192618101"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:04:15 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:04:14 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 20:04:14 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.18) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:04:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SqBFvJv/su7ank/S+nZ7reGuGeq8wr71tM5ajP+PxGs7L1Ht8FR42l920By6dVagW8Af3JC2YXhHflR61amyr79fLe7cIyQOt3Py7Upc/KsAp9kSu5ufrm0Y8mP5Z58ogF8DvzHvg8zN4D9LKo+jHS6t6fs0vNUgvDm1Uu17H2HCJQWvKbNSHlDeFy7jcgCpBEKRxhrkQ4dvlJptqN/Z2cMPn1LVPIDR8ZbYAV1wt34mxRrKwcC6NZofP55/MVlWrVaheZgQswe5iFLv+ZJ2BRKp9H92smMV2D7y0J/A/oiIwUkV8/yKEFN32ZekZ/ZMEStS8yHlCdGKJSz0Lik+Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xMahnsaK/SW9+ZKm61kB9vr6Oo9qzNIYadZ10WXHBKY=;
 b=kRuXKwsqOrMdYiuhwwzxx6xykBCe6sZ7aCe8ByIa7rDQ6XENRiA/3jB5h2s1INWeebPjny39/N3a9n3VBrkPJYFXbN3mbsVAfpd+WXFGYF0VfmEioAeLcv7Y0Mp/BP1Z/Ezwz1cDvNKSYeeh/P2SlnYhFef/vZrqKxQW/Nw+FNqzN481rlf8o61jiMBZAKCjnMdX+BDX941PWviojPY+sHdkCANr6uP3bJQx8XBlzMivlF6YxMG8L1f3CqVzKaHwThief/bRKypBd7OccQDfFXCJA02ECsOF4wiINiuPspMy6ymxkbWzOftgYwx7TrTPCSP7/22NQl0Rz0zcp0ZpTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB6197.namprd11.prod.outlook.com (2603:10b6:8:9b::17) by
 MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.11; Wed, 26 Nov 2025 04:04:07 +0000
Received: from DS7PR11MB6197.namprd11.prod.outlook.com
 ([fe80::94d6:d249:877b:756b]) by DS7PR11MB6197.namprd11.prod.outlook.com
 ([fe80::94d6:d249:877b:756b%5]) with mapi id 15.20.9343.016; Wed, 26 Nov 2025
 04:04:07 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>, "Kumar G, Naresh"
 <naresh.kumar.g@intel.com>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
Thread-Topic: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
Thread-Index: AQHcXfXVreZpZOmX+Ey/AjSNPlFCy7UDZM6AgAAUb4CAALyMgIAAIYeQ
Date: Wed, 26 Nov 2025 04:04:07 +0000
Message-ID: <DS7PR11MB61976F708B854C1E237E987081DEA@DS7PR11MB6197.namprd11.prod.outlook.com>
References: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
 <aSWwoYwYb4OIVy1A@intel.com> <8e482c98-2cd3-43b2-8b2a-7af6143846be@intel.com>
 <aSZf7yoIqnU09U42@lstrano-desk.jf.intel.com>
In-Reply-To: <aSZf7yoIqnU09U42@lstrano-desk.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB6197:EE_|MW3PR11MB4748:EE_
x-ms-office365-filtering-correlation-id: afea74a7-0ba3-4a76-7b43-08de2ca0d88b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?s+3izSIy3+3SwyqG2n3DGg8r8CLqdwa62sKHjiogIGaF9w5b9FkBK50Ulz1u?=
 =?us-ascii?Q?iXhbvIdiDY7PBtLHbaZ+RsWhVEJTt9/R5SkYPQuq34L61i0vHwxK+aa4FCWs?=
 =?us-ascii?Q?F7PTc7KC4Rux9apxzIC/7QlJapBlIPqHFXJOgAzGfAOJ1M4qle3PMBJbCLeI?=
 =?us-ascii?Q?ZknduQQI8Zd4XlcKdzG34xHHdOBPPPJpSetQ92yswmp0d2W7obPQFOLka26B?=
 =?us-ascii?Q?Hqzi/BTj6Tzkf6D+N3kuTRH6WnjftlI+o0wpnemW39xTHu9pHqGDQOj5Y33C?=
 =?us-ascii?Q?spXwx0deuYydzbWOHREsG57zd4QSbro9+pCrIttL7Ng3wJS2yBwXYyzIwS9Y?=
 =?us-ascii?Q?t7/N32vKa9Ig4+tTzIeihES3jykurDWLQigPMGrfUNAOnXWeisFChvK1rRSW?=
 =?us-ascii?Q?myNHGA3A3j9YeRSShWGxQsIQUY16dnosi6u1XtzgSaMIGbJmALnEoN6K7WWG?=
 =?us-ascii?Q?Vacvjj+tRGPvPsXKUppdhHT/6XnTBcpebKpgN2OPPbuNujSeUyprfP9SMhRs?=
 =?us-ascii?Q?n/w9L91Edvl2AGRMKPfKCpVF4KfDQniDQQCrY0QuaHw3qbF8BSEfRCoPCD/3?=
 =?us-ascii?Q?QGzmwmRQadIM1CMWsppNSXL3i7sgv17t0O8z6y0MGASXrIMfsY7LG0P8G9NJ?=
 =?us-ascii?Q?2QJpdOn6GNk4sMbkcsKqhn992v1p4nilYcDKL9RM3CXa4Ppl/WkkIl0Za4Ye?=
 =?us-ascii?Q?xN8VUvRtskg7g4INKbMr4bFU1nPf4ihcSDNiukl+L8tgGvc2+eV8d/s8as2F?=
 =?us-ascii?Q?oO7zBNVRaAQOZoea2au2QamOIqJFEyyVz7MFQfm6R2CSod4Zdyi7cMBPKeqr?=
 =?us-ascii?Q?+KCZw3DKkLfLfT8znoa1JH2P8yvhQvxW5xWj5iFC67jWEQ6m3sQPLJ5UOPeP?=
 =?us-ascii?Q?5MGqB2ts1Vz9trBuUWzLLLa6lyANXAS+Etws1XrA8aFjqh4RbMM8f3+cfFBC?=
 =?us-ascii?Q?KbRqSkudSLc7L29FOeBITfvakrhX8tremWsqzw+ZoFhOIoks6wfVA2obhKvO?=
 =?us-ascii?Q?YjeqmD0vF2xvKJuPpN+HrVbD4pcvPBy8WFbFUSB8rIC0iPYRg6EeuZIbUsSK?=
 =?us-ascii?Q?ySk4EWYJF3GNxz5MApvL5wkZ7des39XfGSZWc/hwTYtIka0A+jUtzv3BG8YI?=
 =?us-ascii?Q?0x1/oWAEcZhfiD5E5U/UVUq4S8UIrGxD7Nr1XnH9m1C6ts6Vr7P9yxborPu8?=
 =?us-ascii?Q?rbXbGep8RS+6SqBz8XC6PFX4eH+ze6E6l7SWApWbAdlGLyQdVXZ37xv1oI7R?=
 =?us-ascii?Q?UDMwJEpL1HE+HkF9hVoGIAlGsHGjZ8F69WzIaiGeTFH8FnHlqmNhYaANbZ36?=
 =?us-ascii?Q?N1I3Kf1ej/SaekevtVO/QZlStrBnpVVMyIihUBKmIE8uKVQl0akPNqjIh7kB?=
 =?us-ascii?Q?7QWHoOt2+LiMQsnlXsgiuwBcdEOwFe5zG4QG6Jx2/j6IBP0VLiLTEI2qF1vr?=
 =?us-ascii?Q?VZgcEky84RNKwu3ioZZ5GZkGq0Ho533DmWAWbaTC5AK+V+qTirQ8WROZxmF+?=
 =?us-ascii?Q?F9nk6wT0Z02KWKIfIq8Lq8xSunb280vmLMK4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB6197.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7JWH+3KrbJ16q9+jjnuR7TLmW+JjYtgdzpNwrMlEy2nrwvYBwmgTCO8G0Jwq?=
 =?us-ascii?Q?puKaehsaHlN0C9RJYMqXCQA419dmB1zos3AvA32NjsMmXWL+kZlATS1vbtgU?=
 =?us-ascii?Q?i/32lzfWqmxUoemo8x28pzInpWxcBdINQzorj2mP3JtdHIUXwmvonqE1PY1o?=
 =?us-ascii?Q?jSCdo3sg6koM2s/6mYO/6dlCcRd2lu2ja5JZdmKI+eeJkP30pM/kXy5MYLdn?=
 =?us-ascii?Q?CRbyowfmvBLzEYrEa1qc5qDl/u2IhRR5QJwOe0XlJJkFRPZX25JETLvgJtx1?=
 =?us-ascii?Q?fH0Pj/eNBn066y+IKiSGAK9vhX7SA0WVffKsOSlettAl9Qx6K18NWIyjejpl?=
 =?us-ascii?Q?zHmI9Ai0wjQlTX+GUps2f5zIwkKo0dR1OusLiAmoWn1ws1HAiLLSeJBTFpcy?=
 =?us-ascii?Q?8LFwEzUDCaopwFhd5+EpYv2rERiTSOTRN7kugXP0MqL7LhvUrHvz3s7KbA07?=
 =?us-ascii?Q?HXYmnDh3y7vCuaVY4A8mqNfaizAs+ONix89PGWV2kQ4ScFlUJ+ZwoxJ6tSkA?=
 =?us-ascii?Q?zzyrEIkF+xDKm/QL9dOLaSpnN6k/OWMCqmctR+eF8/nbAYnVbOZdHKqerpOD?=
 =?us-ascii?Q?m5o0rPLN1ogIMoFEa9yYOYLyk3eDn+wlHgA7QzuTvXGNjxPATyGFOopeEd5F?=
 =?us-ascii?Q?4pQ7mPhIffnKxFMVsuJ1EXBmtpig1gz6v8MNLvSL8gGZN0uI2MUtJMoh03KV?=
 =?us-ascii?Q?ElaFmh5RbIrFsCktZZD3vVLXw5TLfHz2mwF24fA55LZsRF+oKH1zj/rqSDFR?=
 =?us-ascii?Q?LGcE5KPq3urQFOfaYUD5jEWywvQI6OFNxaIWe+jbh5Bc/4yJ2jx0UTLWCFyo?=
 =?us-ascii?Q?WLODPc9N2RqhODPlkIQuou2bL7H8RssDESl+UwUIvBeUY7Xlk/8tnbD4hl+n?=
 =?us-ascii?Q?Dbg18ipM6ugqA5+3+szP+RQhsVQQMy3YDntl9mxI/jFNbDubJeiTOw/M6XJS?=
 =?us-ascii?Q?kwpD5psueBEWow/xs0aeLDfGxWR2mvxvazCyeaPP+CkM1wdpuaTwjQtpY2/+?=
 =?us-ascii?Q?WqpQ0YZDL/urkeRdUcX37BWnRIn3ryvHhD6qy30gdvAxvGpSRDr6hOZf2Nrg?=
 =?us-ascii?Q?SuYL3w0Aq+2QWNOiBj5R9iEbcScdwSPu6C6e/XEWXMihjKBDVj8Tyrf5QDUu?=
 =?us-ascii?Q?1aa/rW+bfM5aB/Yr54juI5Qt1erUpy/yORRWq9hKzjYw6iZJNlfaB9huVfA0?=
 =?us-ascii?Q?YKDg22pEbsLBSz5utQoTz0rHT3gFVAQ/80byXPUpH5i6eEGuIf2r5AWTiiiu?=
 =?us-ascii?Q?6X7NJPI47cyYV+6Lg8MNqEoJqctrl4xoGEdiNPkrzo1Td/eoSgppFA3pMRwE?=
 =?us-ascii?Q?gNXj4onmn/CtuOJH4ofU0vS8LIOUoTuLDvPxjMoVFIbFObXWUjlnnSXH+PhD?=
 =?us-ascii?Q?Fnmyx2YQkm5qjKwgUsAd2+35A4l+LYxvD9lKFdg0DHheCni4vkS5ohI+DpUK?=
 =?us-ascii?Q?J9y3kvTR/RUgRz9eCLki9O1pdlQmrSBAetxE2ZKdKBTrLj7tNHMuIePJfsDM?=
 =?us-ascii?Q?rNP6WPwHChBzzBV0VUSH8hJkDxWwQAhJNuagff9PWCHT2vvOAISq/UsT3fVI?=
 =?us-ascii?Q?Vb/gqtLOJmBh0u6vR0AVZkfxU2MBYO8GFEO6WEJV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB6197.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afea74a7-0ba3-4a76-7b43-08de2ca0d88b
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2025 04:04:07.2414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D+jePVFL/uGkJoH9JbHx8WKWaFgO8rKq3WbI+q9d94kUGe7LVHWWtjljVg7UrWPLd8DCZkc8c3StXvgN5rt8zoxJqnALuqh674CuC504eyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4748
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Matthew Brost
> Sent: 26 November 2025 07:33
> To: Kumar G, Naresh <naresh.kumar.g@intel.com>
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; intel-gfx@lists.freedesktop.o=
rg
> Subject: Re: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitial=
ized
> fence usage in xe_pagefault_handle_vma
>=20
> On Tue, Nov 25, 2025 at 08:18:37PM +0530, Kumar G, Naresh wrote:
> >
> >
> > On 25-11-2025 19:05, Rodrigo Vivi wrote:
> > > On Tue, Nov 25, 2025 at 03:48:42PM +0530, Nareshkumar Gollakoti
> wrote:
> > >
> > > Hi Nareshkumar,
> > >
> > > Thank you so much for the patch. I believe the change below is a
> > > good addition, but the patch itself is in a bad format.
> > >
> > > fixup in the commit subject is absolutely no no! This is a git
> > > indication that the patch should be squashed to the one introducing
> > > the error, but we are in a non-rebasing branch. So you need to
> > > provide a fix as a new patch and using the proper tags indicating
> > > which patch it is fixing and Cc'ing author and reviewer of the origin=
al patch.
> > >
> > Hi Rodrigo,
> > My appologies, will correct mentioned suggestions/feedback.but i have
> > pushed this patch to this mailing list by mistake and will correct and
> > route to the xe mailing list.
> >
> > ignore this patch
> >
> > Thanks,
> > Naresh
> > > In this case:
> > > Fixes: fb544b844508 ("drm/xe: Implement xe_pagefault_queue_work")
> > > Cc: Matthew Brost <matthew.brost@intel.com>
> > > Cc: Stuart Summers <stuart.summers@intel.com>
> > >
> > > > The variable "fence" should be initialized to NULL, and any usage
> > > > of fence should be guarded by a check to ensure it is not NULL
> > >
> > > Furthermore, the message itself here is a bit strange. It is not
> > > necessarily true that it 'should' be initialized. In this case it
> > > looks more like a false positive of static analysis tools, but it
> > > would be good to have this protection just in case...
>=20
> Yes, I looked at code, I'm guessing this is a static analysis false posit=
ive.

Yeah, Naresh, lets drop patch then.

Tejas
>=20
> Matt
>=20
> > >
> > > So, some rephrasing here might be good.
> > >
> > > Please read the documentation on how to submit patches for the
> > > proper style and messages:
> > >
> > > https://www.kernel.org/doc/html/latest/process/submitting-patches.ht
> > > ml
> > >
> > > Thanks,
> > > Rodrigo.
> > >
> > >
> > > >
> > > > Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
> > > > ---
> > > >   drivers/gpu/drm/xe/xe_pagefault.c | 8 +++++---
> > > >   1 file changed, 5 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/xe/xe_pagefault.c
> > > > b/drivers/gpu/drm/xe/xe_pagefault.c
> > > > index afb06598b6e1..401f1835939b 100644
> > > > --- a/drivers/gpu/drm/xe/xe_pagefault.c
> > > > +++ b/drivers/gpu/drm/xe/xe_pagefault.c
> > > > @@ -70,7 +70,7 @@ static int xe_pagefault_handle_vma(struct xe_gt
> *gt, struct xe_vma *vma,
> > > >   	struct xe_tile *tile =3D gt_to_tile(gt);
> > > >   	struct xe_validation_ctx ctx;
> > > >   	struct drm_exec exec;
> > > > -	struct dma_fence *fence;
> > > > +	struct dma_fence *fence =3D NULL;
> > > >   	int err, needs_vram;
> > > >   	lockdep_assert_held_write(&vm->lock);
> > > > @@ -122,8 +122,10 @@ static int xe_pagefault_handle_vma(struct
> xe_gt *gt, struct xe_vma *vma,
> > > >   		}
> > > >   	}
> > > > -	dma_fence_wait(fence, false);
> > > > -	dma_fence_put(fence);
> > > > +	if (fence) {
> > > > +		dma_fence_wait(fence, false);
> > > > +		dma_fence_put(fence);
> > > > +	}
> > > >   unlock_dma_resv:
> > > >   	xe_validation_ctx_fini(&ctx);
> > > > --
> > > > 2.43.0
> > > >
> >
