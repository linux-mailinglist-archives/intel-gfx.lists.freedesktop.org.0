Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 636D3A30E25
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 15:23:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED24310E6CF;
	Tue, 11 Feb 2025 14:23:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L70zl+Yz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99EE510E6CE;
 Tue, 11 Feb 2025 14:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739283825; x=1770819825;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QyIVW+ITDwX6YKfGyPgZgYFQTOlHeedZcZpgvLGGEuo=;
 b=L70zl+Yz30JIr6K2gd6z7vEe5aarjrTivz0QAcl92lkR7FqjfPY94d+H
 OcyGJseJx35fBaduH1GhmAh3bTa6CE3z5v/TuEgUYomNiT4yZ8T+GFQ09
 XCswcfxQ8Q0fA+VSQLM7IRQjlQHuwqXWIn7D6CivfA2WGY9WUWYl5fLKx
 K+dVCmi68rCxvFx9FNo7dydmS2khU/X64bW65ZoS8HyTLllHIZlO9b3bo
 BNtquO/mxmt60ZkzzDGvMO9C2J3DFKOl/e9Stm5ijj1LXLBbxVfu04Qq6
 1gDZTFLrQxOIfP6WItgAjvYM9Mj4a6fAuWIK62B4bKIxovJkmQ2DE2FQe Q==;
X-CSE-ConnectionGUID: LQdIbyQhQhKBIFBqX/XG/A==
X-CSE-MsgGUID: 4dPHASw8TbezDvdlXYMXVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39766171"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="39766171"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 06:23:45 -0800
X-CSE-ConnectionGUID: nmCX9/2fSouh2XsC8nE0Rw==
X-CSE-MsgGUID: s/lyuOPTQIykYiNsRFNrMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="117445108"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 06:23:45 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 06:23:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 06:23:44 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 06:23:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TSMDCwDceE0qwyY1KZsP7oXeOkQm1WdvI9ywNLOcwbzEhZiR5frg5AXMFw68ulEpNu7IUtJp6TT0oDgi3iOh28WE5u3o+HRwxC3rZgBgWGT1xQOx9fTQ9boNENtqPlOzcaaVcvJiAEJxCH3W9z+p0/HPwgxfrGXlWL7HHpLuyt0V8kE7WZY+zWsGZ1X1vZ9CcrnXj16bCL6dDC1LR6DvD3CYvp/Nnq/l+u13R+lJAAvXVdp9JJyhX2Als998fBKGguxep/Dq8PPqbozCGSRNlgDuIi4jIDVJ1Ob1BEtd6dGF/adLGSxUMim2N3gK4wWMmQT6WLda9iXqfrxmYaZhxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n//gaurQyZ4hEgttIiJiJeAGvtijMclf2qzgQGlmIAQ=;
 b=RceE4YdmwOn48H9N4LrlrI+A3ObjpRJIUVDkvm2X9CHv0PrfYSVybE7fIlhQXSlzrI9IjHHPJGRlrFhfcKlZmRhxYmY7ZxRSub2nSY6ye5UBIMlFRkVI58Y59vYfLhkA4Tu7bSqb4wjIhTw7KjfL/yOgnJuOQ09OF3/VF6+GfsDZ+CFWHw0H0YKVQumYmxqvBZdFcRhj8Vbp8UG9UebvIoszYcNFRXqGW88M/bdHnnRRqt91cT12ntf8yqhw5G1dOwmkQeUG1jfvemKF4U8XXE7No5sY1NppxUV15jElKLlf3N8OUXbor2GanWV9urbtg7dlljBaQSauSMbU6SokKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA0PR11MB7160.namprd11.prod.outlook.com (2603:10b6:806:24b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Tue, 11 Feb
 2025 14:23:42 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 14:23:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 8/9] drm/i915/dpll: Accept intel_display as argument for
 shared_dpll_init
Thread-Topic: [PATCH 8/9] drm/i915/dpll: Accept intel_display as argument for
 shared_dpll_init
Thread-Index: AQHbfHKgDCv/rs+7xUeRroyp8jMnqbNCFOeAgAASkdA=
Date: Tue, 11 Feb 2025 14:23:42 +0000
Message-ID: <SN7PR11MB6750C81DB52D61A104B27223E3FD2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
 <20250211104857.3501566-9-suraj.kandpal@intel.com> <87jz9w1v42.fsf@intel.com>
In-Reply-To: <87jz9w1v42.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA0PR11MB7160:EE_
x-ms-office365-filtering-correlation-id: ee588f06-0197-488e-d982-08dd4aa7afbd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?tAjgvAXrn0WClqNrQZ2sKWlclQ0u3PkeGpKs1H8JTUFFjwZKMJrZpRPleglQ?=
 =?us-ascii?Q?xQS0qbo7UXek2hfhd59Z/S+JiwYbNSE1PCXhi1uz/ihwzpongO+1rPfzwOma?=
 =?us-ascii?Q?WA8hGTGq32WgqQdCqFrTzhmOsJmqj8YEAHKMneVgW+JBkLEyW4P8eWJg8e1X?=
 =?us-ascii?Q?zNaYRO9iJWfqs2VI8irqSIWVHRxs75rIL/1ceQ39uqtmV2MW66xFQFhhYGsy?=
 =?us-ascii?Q?vZK7jNoWAjz089H6I5n2mu0fWB3OkMVhTgZ4Os8qEIOMvgKSeF4tyZBeAyVV?=
 =?us-ascii?Q?RxGy/UP7GqndFNvlG+C5ivG9239/DppkaQ2OFE4BbwMrhre3XDt/AzbOEZpi?=
 =?us-ascii?Q?k/sj88mqeuLPoQMZm09m0PuN3NN3hRTXYNuwyXcYiHzH/xEoYorJcBSh8NsF?=
 =?us-ascii?Q?yoO4TfoIGqRp9/F18l4qxUyHSvF2rSBWExvV4D9sBd9lh31vM3i0i1HjTHZW?=
 =?us-ascii?Q?KGHL/M3SZ6oMKlikLdVN4v7MNupcB36Gyn0BZdjHNEdIvl4Pgz5p4rH3FDGX?=
 =?us-ascii?Q?PJ4Zur2/Lkj8OHaa+zp9+vltYbMZp+3dkRGDvfLUon3RjJQCWqppgqG89yca?=
 =?us-ascii?Q?/HmP8zIiSu5dgEfVSkbRiM1l+6wz59T30nrLzTpGm0MzGKUOKSR06WRKipQg?=
 =?us-ascii?Q?SRmOGgkz/8VCCuYQkytksFanmuKmvlwJcriaeKiUFRQUu6YIZ/xOUAXwmx18?=
 =?us-ascii?Q?sj6Prg5sQcr1Tg6PmM1uPw5Yi9KajIO0E/sbQQIawruzDyateZGoaQuvzCpy?=
 =?us-ascii?Q?OcyIfkWjvRXDJn+Oez+7rPyh9+f+l4+0xBri6lHEmP9WtJoLvyYVyLTh/Avr?=
 =?us-ascii?Q?/YcR7L7Q9YDqZY/M64/21fg0eTykVoyGTgVE8ng9hEgVYtxYP2KhTFwaC6d1?=
 =?us-ascii?Q?LhcfjiICYSg814SK+/jDmiion6QOCfOuVdPumFKRXZ5eX9UkuC2yiZjacyNZ?=
 =?us-ascii?Q?bEnLZR+PfZlqrLGycdZ+FBYozH8PFTdNpZlEETXqKrArAxPRfVePB5Ru4Wn9?=
 =?us-ascii?Q?B8x8WfbS1LjZMVg/zzj4hZ7bvDnjErGPrpPiO8ssbzG0FerBGuADrwYKlZ9e?=
 =?us-ascii?Q?XShVGyiKe7i8Jt8uXntyuzGPebN6R7gjRecTm5CjtQys33zzmkTgKSEgTEEX?=
 =?us-ascii?Q?2BQe+cZxf1fUkWsCTfNe5d++lj+24aHQjGLcqGbUnexKpNZg7PsqZiql3426?=
 =?us-ascii?Q?ui04oMhy7lN6dk3eHeb8Si29c9PAjaWMn2NpvIn007Ip2+yLDyoaSX+4mGiP?=
 =?us-ascii?Q?KuK2HlflfXJYIH2C6mBreV0Ng+TVJTzxfXkM687iG3WA1a4qmmwpZYFZARxO?=
 =?us-ascii?Q?xnpUncbN1K4EvNTOxuaYQujxz5IpRMe5q/rNEx+r/CWdGKE/Hjnr1pynlEiZ?=
 =?us-ascii?Q?1mt9B2ppK+2k0VpRCbqiQSVkRIU22CuOcjhlUe64gqe8VlpzwK1zFVKKAwUn?=
 =?us-ascii?Q?QGhXuu3RZj1lkaUn8l6Dp/n0lfjnKMM7?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PJZmjOI4Ds7UIkNSK9XpjsAohI4iwU/gEXemcQgSA8olEY3LQZ91gogRzZU0?=
 =?us-ascii?Q?aJadsXMLwN5UoSTXGY4OTXc20uIhDf9OAQR6lbp8lCeKFD6rqyhn0dnWjHD1?=
 =?us-ascii?Q?thWK7by1oC5NcZKROarHg+yfPlsgRVLeE5Ksg6GcSnQIdm2WB2RkvBmRIgZY?=
 =?us-ascii?Q?APha9Kx9Rap/UbwPfaaCmGWJt59BiX14DtW6IpfSha8NyyiEThPLsWft5NG0?=
 =?us-ascii?Q?JSiEO/Dm5blur9Wm8UO799xGe1JHMAG6wK90Cff/WCClEusiWTHm7s7mKOnO?=
 =?us-ascii?Q?tyZMNjANucT7XSktdC9g/42InziV4hI3P4V7ddBQiooy0zrSTf3dKUTZ7zJ8?=
 =?us-ascii?Q?ak89oaF7/t3a2vaPO3Z8uJn35P3IC4/yJqjDHxCLcb+6I/OLLwmtky5ZOqDo?=
 =?us-ascii?Q?FwoPsZV/UtqEaYiyzgBV5ArLubyDfB/egOoqhv+BcJFvLCyfMYXQ0C2dWJmt?=
 =?us-ascii?Q?ajxVBJ6piEz12Meh7ZSk7Yh/mqtBk23Phg4h6SI/PS1LOjBZLzB8Gnlukasc?=
 =?us-ascii?Q?92Trx8OvKMHZt/xvqDRk7uRkpA/+qNsRr0gto3hh5GIl90XI+oxSY3ZWumNX?=
 =?us-ascii?Q?5MsC34lYAz+da8b8YvYWFAimq/NTg4x21/PP3q06WdJNKBIafhq2V5Nx/spl?=
 =?us-ascii?Q?IduW+DmaGa+DyHn71+PYCNUJxe/HLQVB1bgZ+7R9yD4rMNPZnS0U3FXwslc/?=
 =?us-ascii?Q?/HSooPriQxzweRZzhcljnJjO1VkdTny8H4E55K/B1BFpOGcqcImcy4bx89lv?=
 =?us-ascii?Q?GPMoxc+4wAU1b/6uabIcA2adgolAwSAY+doW6RzpcKdeJ0qQzdKNWdUGIsJm?=
 =?us-ascii?Q?zSqFXltUaEPZkluh/meYKn117yFTyFcqrynaFVqXVgvrmFowU90B5pZ+N7Of?=
 =?us-ascii?Q?6HQ6BQc1onrk8jO0znuN5nJZsoQZ0Fy21dMdQIphjSbdYRFOuR4D5rJ7Q5t/?=
 =?us-ascii?Q?9YYCsHCEwwy0TAXaERZtdUSgtrrgmhnTqSLuUSsPEt8XpiMNFZ24l4smsB3e?=
 =?us-ascii?Q?fqFHKwHif4ESeDLadqMr4Ys2GxZE68DcKcMZe01c6U/t7a4tza8MkKf2SqwG?=
 =?us-ascii?Q?FEygO1FWr5Xb8UxDRfKYthUkh02J4c5vdu5BQfa34CN98dCHNwlNBmQYdA5E?=
 =?us-ascii?Q?OjLjSmpu2ZZOsw8v55PspcJzgWgQQeSjOrZPqdThO4bqc+tcOEBc5WtTjNn/?=
 =?us-ascii?Q?aLHF30LAXwsTSRMCZyvYKPXpd473oeDO2D6fAvybXa4UaVYtm5FMR5ZL53mX?=
 =?us-ascii?Q?yNDkaeEqw8We2HMTqlpaTHDMCfafLkpYfDd0Kv0y8vsSrtgqLgE+ubWyV6x5?=
 =?us-ascii?Q?XvYiYvip0vGADT+1I9+q8CDzop4GC3vR5nvZYx+A6DWDSaYXUsAsXM4dixo2?=
 =?us-ascii?Q?lxOufLJ41ix8ee76ZhmLUOr5C1NLM1LaZRhqi2ELf7pVqIaYH0RBtdbSNpVp?=
 =?us-ascii?Q?xOg3/yC5Kzd8tKEeedaP3u8iK3wJ90mblWGwFmkOvzBWPMcHT8JWc3paCYFs?=
 =?us-ascii?Q?TItE/qv1GriFMVdYuBzd5HqV+7femS5xzDazaFv+0jz2Fk1IONGrupki7Lwa?=
 =?us-ascii?Q?cP74Oya0Kbff+Rg2chAAuJvqiNTTzeDNTRorf26o?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee588f06-0197-488e-d982-08dd4aa7afbd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 14:23:42.4295 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pK2QnuPH5ZneOaZG056c3Sn5FUT0SI9Sj3O1DeqeJ4ST3IZ02o474L/9TEz+4A6TIF7Hw6LE3z8ecF9j3rhnpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB7160
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
> Sent: Tuesday, February 11, 2025 6:45 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 8/9] drm/i915/dpll: Accept intel_display as argument =
for
> shared_dpll_init
>=20
> On Tue, 11 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Use intel_display as an argument for intel_shared_dpll_init() and
> > replace drm_i915_private in function wherever possible.
> > While at it prefer using display->platform.xx over IS_PLATFORM.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_driver.c   |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 49
> > ++++++++++---------  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |
> > 3 +-
> >  3 files changed, 27 insertions(+), 27 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index 978f530c810e..852f1129a058 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -448,7 +448,7 @@ int intel_display_driver_probe_nogem(struct
> intel_display *display)
> >  	}
> >
> >  	intel_plane_possible_crtcs_init(display);
> > -	intel_shared_dpll_init(i915);
> > +	intel_shared_dpll_init(display);
> >  	intel_fdi_pll_freq_update(i915);
> >
> >  	intel_update_czclk(i915);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index f94da1ffc8ce..26b6b9372fa3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -2042,8 +2042,8 @@ static void bxt_ddi_pll_enable(struct
> > intel_display *display,  {
> >  	const struct bxt_dpll_hw_state *hw_state =3D &dpll_hw_state->bxt;
> >  	enum port port =3D (enum port)pll->info->id; /* 1:1 port->PLL mapping
> */
> > -	enum dpio_phy phy;
> > -	enum dpio_channel ch;
> > +	enum dpio_phy phy =3D DPIO_PHY0;
> > +	enum dpio_channel ch =3D DPIO_CH0;
>=20
> Unrelated change, please drop.
>=20

The problem is by dropping these changes I am not able to build the kernel =
and it throws the following warning because of which I had to add this


drivers/gpu/drm/i915/display/intel_dpll_mgr.c: In function _bxt_ddi_pll_ena=
ble_:
./drivers/gpu/drm/xe/compat-i915-headers/../../i915/i915_reg_defs.h:240:56:=
 error: _phy_ is used uninitialized [-Werror=3Duniniti
alized]
  240 |         (BUILD_BUG_ON_ZERO(!__is_constexpr(__c_index)) +           =
             \
      |                                                        ^
drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2047:23: note: _phy_ was decl=
ared here
 2047 |         enum dpio_phy phy;
      |                       ^~~
In file included from ./drivers/gpu/drm/xe/compat-i915-headers/i915_reg_def=
s.h:6,
                 from drivers/gpu/drm/i915/display/intel_display_reg_defs.h=
:9,
                 from drivers/gpu/drm/i915/display/bxt_dpio_phy_regs.h:9,
                 from drivers/gpu/drm/i915/display/intel_dpll_mgr.c:27:
./drivers/gpu/drm/xe/compat-i915-headers/../../i915/i915_reg_defs.h:213:58:=
 error: _ch_ is used uninitialized [-Werror=3Duninitia
lized]
  213 | #define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) -=
 (__a)))
      |                                                          ^
drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2048:27: note: _ch_ was decla=
red here
 2048 |         enum dpio_channel ch;

Regards,
Suraj Kandpal

> With that fixed,
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>=20
>=20
> >  	u32 temp;
> >
> >  	bxt_port_to_phy_channel(display, port, &phy, &ch); @@ -4302,40
> > +4302,41 @@ static const struct intel_dpll_mgr adlp_pll_mgr =3D {
> >
> >  /**
> >   * intel_shared_dpll_init - Initialize shared DPLLs
> > - * @i915: i915 device
> > + * @display: intel_display device
> >   *
> > - * Initialize shared DPLLs for @i915.
> > + * Initialize shared DPLLs for @display.
> >   */
> > -void intel_shared_dpll_init(struct drm_i915_private *i915)
> > +void intel_shared_dpll_init(struct intel_display *display)
> >  {
> > +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> >  	const struct intel_dpll_mgr *dpll_mgr =3D NULL;
> >  	const struct dpll_info *dpll_info;
> >  	int i;
> >
> > -	mutex_init(&i915->display.dpll.lock);
> > +	mutex_init(&display->dpll.lock);
> >
> > -	if (DISPLAY_VER(i915) >=3D 14 || IS_DG2(i915))
> > +	if (DISPLAY_VER(display) >=3D 14 || display->platform.dg2)
> >  		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
> >  		dpll_mgr =3D NULL;
> > -	else if (IS_ALDERLAKE_P(i915))
> > +	else if (display->platform.alderlake_p)
> >  		dpll_mgr =3D &adlp_pll_mgr;
> > -	else if (IS_ALDERLAKE_S(i915))
> > +	else if (display->platform.alderlake_s)
> >  		dpll_mgr =3D &adls_pll_mgr;
> > -	else if (IS_DG1(i915))
> > +	else if (display->platform.dg1)
> >  		dpll_mgr =3D &dg1_pll_mgr;
> > -	else if (IS_ROCKETLAKE(i915))
> > +	else if (display->platform.rocketlake)
> >  		dpll_mgr =3D &rkl_pll_mgr;
> > -	else if (DISPLAY_VER(i915) >=3D 12)
> > +	else if (DISPLAY_VER(display) >=3D 12)
> >  		dpll_mgr =3D &tgl_pll_mgr;
> > -	else if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915))
> > +	else if (display->platform.jasperlake ||
> > +display->platform.elkhartlake)
> >  		dpll_mgr =3D &ehl_pll_mgr;
> > -	else if (DISPLAY_VER(i915) >=3D 11)
> > +	else if (DISPLAY_VER(display) >=3D 11)
> >  		dpll_mgr =3D &icl_pll_mgr;
> > -	else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> > +	else if (display->platform.geminilake || display->platform.broxton)
> >  		dpll_mgr =3D &bxt_pll_mgr;
> > -	else if (DISPLAY_VER(i915) =3D=3D 9)
> > +	else if (DISPLAY_VER(display) =3D=3D 9)
> >  		dpll_mgr =3D &skl_pll_mgr;
> > -	else if (HAS_DDI(i915))
> > +	else if (HAS_DDI(display))
> >  		dpll_mgr =3D &hsw_pll_mgr;
> >  	else if (HAS_PCH_IBX(i915) || HAS_PCH_CPT(i915))
> >  		dpll_mgr =3D &pch_pll_mgr;
> > @@ -4346,20 +4347,20 @@ void intel_shared_dpll_init(struct
> drm_i915_private *i915)
> >  	dpll_info =3D dpll_mgr->dpll_info;
> >
> >  	for (i =3D 0; dpll_info[i].name; i++) {
> > -		if (drm_WARN_ON(&i915->drm,
> > -				i >=3D ARRAY_SIZE(i915-
> >display.dpll.shared_dplls)))
> > +		if (drm_WARN_ON(display->drm,
> > +				i >=3D ARRAY_SIZE(display->dpll.shared_dplls)))
> >  			break;
> >
> >  		/* must fit into unsigned long bitmask on 32bit */
> > -		if (drm_WARN_ON(&i915->drm, dpll_info[i].id >=3D 32))
> > +		if (drm_WARN_ON(display->drm, dpll_info[i].id >=3D 32))
> >  			break;
> >
> > -		i915->display.dpll.shared_dplls[i].info =3D &dpll_info[i];
> > -		i915->display.dpll.shared_dplls[i].index =3D i;
> > +		display->dpll.shared_dplls[i].info =3D &dpll_info[i];
> > +		display->dpll.shared_dplls[i].index =3D i;
> >  	}
> >
> > -	i915->display.dpll.mgr =3D dpll_mgr;
> > -	i915->display.dpll.num_shared_dpll =3D i;
> > +	display->dpll.mgr =3D dpll_mgr;
> > +	display->dpll.num_shared_dpll =3D i;
> >  }
> >
> >  /**
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index 3d988f17f31d..caffb084830c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -35,7 +35,6 @@
> >  		     ((__pll) =3D &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)
> >
> >  enum tc_port;
> > -struct drm_i915_private;
> >  struct drm_printer;
> >  struct intel_atomic_state;
> >  struct intel_crtc;
> > @@ -422,7 +421,7 @@ bool intel_dpll_get_hw_state(struct intel_display
> > *display,  void intel_enable_shared_dpll(const struct intel_crtc_state
> > *crtc_state);  void intel_disable_shared_dpll(const struct
> > intel_crtc_state *crtc_state);  void
> > intel_shared_dpll_swap_state(struct intel_atomic_state *state); -void
> > intel_shared_dpll_init(struct drm_i915_private *i915);
> > +void intel_shared_dpll_init(struct intel_display *display);
> >  void intel_dpll_update_ref_clks(struct intel_display *display);  void
> > intel_dpll_readout_hw_state(struct intel_display *display);  void
> > intel_dpll_sanitize_state(struct intel_display *display);
>=20
> --
> Jani Nikula, Intel
