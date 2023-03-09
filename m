Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A376B2C6A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 18:56:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C25EF10E1D7;
	Thu,  9 Mar 2023 17:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05A4210E1D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 17:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678384560; x=1709920560;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Uy5SOcxlf8M/wIzvkeCPw6eKE2RTAV7FA6genr6crCo=;
 b=brYgPr47Xi62UCxxsaZPRSZ3PfNla1YDUD5iRO3K5fy1kVkfd0dT7yg+
 Cabh7PBnOdDZKE/EgrGV/zxPtr8ipZFq1aaF0gprUBJ11zlzwQf2k9wHa
 YEHOGJY1motlhLCURWW1OcdVqHgkzZbL2zK4RTD0TsjmFhVr20HMROWj2
 zXjpOQ1+S5/OyVLkyR78lXPxgorwKoPzJVrc6DQn2IxUodbrduvfNFmbA
 iBrRCLdQXsY/UPghiG+LHsDJAumsnWW70RMO0pvdyjg6PP8WApvvhVXWM
 V8a2NjsvpF65DBOPd2R9OFN14M1868Jiv5VzzTaUEd4y2PbjJCgg5j6vl A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="316912039"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="316912039"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 09:55:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="851583983"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="851583983"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 09 Mar 2023 09:55:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 09:55:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 09:55:59 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 09:55:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j4NEG/S8f+LUkwtxTZEVJ8yMdTrSFUsQ/ie8QlpNymWfTcO+YYaQqzf3czp8VOwbZ3ajvcQhFVYhd6NK2wvdSVOmy5GEHHmtH6oljOHrZw1YXcyXA01CNHqTvu0zpgpuuCajkSOWD6OugtWqWzAWadXzoqtravySeNFkI46RgDMvdyuDrId6W0y+YcmW/BZxXAyb1+7IdZBKnFikIRUB/5CfBACaA2HL/q+/J+jEhleQJa1tZpOUgSy1Gda6lpDCA2VIw4wgAwvtYS/GI7AyCxq/tD3KhrCzwXcCVnyXtH2hDrYVWNRHaZpi/ahjhUwQQ/8qWTwVo4C4aPbqrfoKxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=acgJTWlaPEQAw7Bc7qvtrJvq9kDuIIbyKTwgdjP3A5Q=;
 b=i6bNGQB3YRPzbUbUrWXhHYoSekLtuYe0FYfYom8D+oxoOxhZiaFteZNVm9TZleFUWvD68ZSAEePVgLI01pValRmaLEK260JMsM9aMfGGkpy7rv+MDYt8ppKWe930I3+qa5rgv9wp6z5Bpas1om2lRqb+Y3MsUdgmpR9qVCvjjdJGJQEwuoxZLLqhyhNYlarQCnZze+KYNv88sVWPWr3b2on3EilMqBTRw4lYBP8K+uOuff9cSuRxtGQ8YsQGFXRRUmywzjVscABlbaN0Zv1CGjEI8P3PdjK/5qa9VDm3riLxKyetLK+nXU9fBIfRh9F4P25FAATclDbtoF/UjbRYlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 IA0PR11MB7789.namprd11.prod.outlook.com (2603:10b6:208:400::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Thu, 9 Mar
 2023 17:55:55 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::d95d:e1ce:3fe2:c810]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::d95d:e1ce:3fe2:c810%3]) with mapi id 15.20.6156.029; Thu, 9 Mar 2023
 17:55:55 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 4/5] drm/i915/fbdev: lock the fbdev obj
 before vma pin
Thread-Index: AQHZTHoSVqIDmwut70OpnL9CzVJ3jK7yvVCAgAAKe7A=
Date: Thu, 9 Mar 2023 17:55:55 +0000
Message-ID: <DM4PR11MB5971CC48E99409C2F9706F5087B59@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230301201053.928709-1-radhakrishna.sripada@intel.com>
 <20230301201053.928709-5-radhakrishna.sripada@intel.com>
 <ZAoU1wR+6ZLLAq5D@ashyti-mobl2.lan>
In-Reply-To: <ZAoU1wR+6ZLLAq5D@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|IA0PR11MB7789:EE_
x-ms-office365-filtering-correlation-id: aab17994-4779-4664-8092-08db20c78820
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4BDt0E4d8x2Vtt1gNUT3SFC6/GqKaCM4vDpH8fOa9GIDOTpiBKKiBTfzdtEZHMu+GnWbwOFvGNditifaC0M8YyGeJnNqzhY7hjNVQf/7emBgKB6jnLxxpMLmuQmpR/GYyUqb8OE4xVDzXlsrGYeHmDL+j6tGCzfT8iS4CV0vrV7qFMH1paf3UQqixbZPgSjcVhwxtAjUzgNF2O8YA1BZnfTm5DHkSvM/SSPlExyb/Mr7VorygqWVmaWB6Xi7StV6+v3m9TXCneLtDcS+7sfEBJDfO9rZyxFGPsn3mqt3OcC2ALI2+M0tmU/g6kNygNaGiIdqPn4vNyvFC28eoWbmaE//oFBDZojOlr9NT7YXpGDXSztN5c7a3/N7XfFKQdJ7bDbfpXDM5tGAg26dlp3WeasNxndGhXrtJyA3uT+ogmKUtNaHT7JYk2SZ2CJMq6ds4/8nmaolJur4WgUs9iw7aqkews1ojEd5hqL7ovOKZA18q0eeveJVryEAk3XhgCG8APFQ6X7OcKNCSIPgOCCwFmVXjJWTtJNFLdl8JB3rhk575R0DLoO9GJwiFci3t6l3tG+ArsusnYJfAycF/sd+oQbmt3Ss0uBQtWln6izOeQH4M+uNQVFr5mLP4gmThFr0WOao/08skka5OMxb+KbPfagejOkbD6zOx7IqxsUA9ni50wNN0JCLDRsK6H926bcpPHJNMsYeOLR5hnIOgzyH+Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199018)(33656002)(9686003)(54906003)(478600001)(5660300002)(316002)(71200400001)(7696005)(52536014)(4326008)(66476007)(2906002)(8936002)(66446008)(8676002)(64756008)(76116006)(66556008)(66946007)(41300700001)(6916009)(6506007)(82960400001)(186003)(122000001)(38100700002)(38070700005)(55016003)(86362001)(53546011)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Dkcrmu399xk0VVL6K9yDJnP6ctGcWlZ6XrfO2vNDqDbTyWDMpNpceIUsDSHy?=
 =?us-ascii?Q?sTDtSmQ6qK5BBR4eYotTgnqwoCnCuX5Ve0t1v8odSq/Hqm8l4cYKP0YgwlvP?=
 =?us-ascii?Q?MgDkiTtp7JhyNLz18S+RROc8+dzVUjqBOihCYlQSSViQuWqoH9BEm8MPpup4?=
 =?us-ascii?Q?CJ836nhgg8+Bpjyf6jsA6pbIsNk9KZfgLRAX7GLBmji95XS+VEk9O5iKtD7j?=
 =?us-ascii?Q?kU6j5mLqNUudNlrUxyx1x/pGRaBmPPjG7dgT6lCUeAE0IhEs3CqKCbwY7Jgj?=
 =?us-ascii?Q?LY/xRn6+kS5dZ00c20OLCsW/LRmI+il3mH7qFa6OjbuyeqC+MIxlKPnHiFAP?=
 =?us-ascii?Q?uF+BL4DbGZ9u9jOnOPn+7Ks+Zb1z6fGXz1nkit6lZ/q7eVIbOhChxZw3GwOT?=
 =?us-ascii?Q?xtCz9ENC93eMRdPAlxihsRP1ItSEDjNgc1jg+hWkIUOxtN76JhMMqVaTj5ZT?=
 =?us-ascii?Q?PqQqnAWYK1CebIOPuXdIk44uCVS4kTEZuwNW1SoNzEFhP8xopYmmyczwnptp?=
 =?us-ascii?Q?WGySJF25j2l6a5xq779es2qXSK7f54YiYaMk9gNx4NTVTVJJsusohMiz/ndg?=
 =?us-ascii?Q?C4NtHBHa1ALvfWkWqbv+f/N0mfHu97rL1A0jyWkbz0jR91K9rFAhHaWzzAYq?=
 =?us-ascii?Q?MybbIIMTNbpfJiApjXoGWaheNsKkuUJnkap8NwgFL5SEqSTpE278ewcrQvVx?=
 =?us-ascii?Q?kyA7TgOq3G1XWbyHjJWlTkrFk93F5Z1ZIaomErQdarSfpyBs7heKOi3BK/of?=
 =?us-ascii?Q?ldZldWa1C+in1pkAejftcEP86/5M9KdEp4J8SNotwKo9W6obad57mjxtB5XX?=
 =?us-ascii?Q?WtH2kp3iH1RII+3Apu1ZBS5fBuNF8MN3vgDvq/m04/u+ysp5Me48K3eziDX6?=
 =?us-ascii?Q?2EKNXaN2vaSAIu67CBXmLwNd+XPundxoAyJwaPXgWMxKAJmPK2SqGg3CnSRj?=
 =?us-ascii?Q?SegA5toN/pLJiKwZDHE0bxekblkk677/HvBmp7PC2cQ3UqxgfTEeRGOFjz6V?=
 =?us-ascii?Q?hWI0MsQIfjvXZLrK6+Nz6GOFzjzSTXRubMKhRWp+7V8Yp7xSANVpmo2+AoP/?=
 =?us-ascii?Q?+Nm7DPbpy+gdz4LLX86dvC3peHodyU9aBRIJm6fx6ZICP4w68Vw8qJ92FtyL?=
 =?us-ascii?Q?4IVSTyH3+K9pHk1IXVjD1I0GbL+7D/g5eUhIf/juv5Esl3ao/Gs1AOMAKzGk?=
 =?us-ascii?Q?rKDqgiaSt8gUazgjN8RgFNt3OXEShfsH1+a0Qvci/xckF/O+GxO+Bur3KzZw?=
 =?us-ascii?Q?3VgReal3LrSV6Rx2BahSj3WnElz/uv7wiaMK87TiCe/6Ju85a3Hddd5WBugl?=
 =?us-ascii?Q?4zG8cliQJww8d7kkOClgyoz5OVR4rPyafO6/2kQ0JVGu3SzLU1qCH8GnTNxD?=
 =?us-ascii?Q?mQ3X3T9mUoDnyAqTrc3dNH+9fePY0kuAt6y87lUNVl1fj6FEruvtZq+VwF8J?=
 =?us-ascii?Q?EkYY6hIAUvtfVvyivvZLPbPYM4C+vr5tMbQFYfvoLA51J7J6On3uESdmPJpT?=
 =?us-ascii?Q?G+ITqyjI4eZQcgOn5MHF3K3ZEdXEQ9Fg6joFa+Kr7gA1S0pZXOZ7/Dc5NDif?=
 =?us-ascii?Q?I+l7auPuQHVeEWUQFiApLmpEgeA04q6ckh8A1zy9p9Up8k5/UILtukBJB3DL?=
 =?us-ascii?Q?qQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aab17994-4779-4664-8092-08db20c78820
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2023 17:55:55.6844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wNqQgohq4sc0q/NFryLsE77uwXPehywFK33b540QaQDoEa8dWnoeS9iNZ+bZ/BBFPHsf5F5YKaHGGFlP3NFz3G3OrdDAmMv13RL3uOBhRqg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7789
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 4/5] drm/i915/fbdev: lock the fbdev obj
 before vma pin
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you for the Review. Pushed.

-Radhakrishna Sripada

> -----Original Message-----
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Thursday, March 9, 2023 9:18 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Auld, Matthew <matthew.auld@intel.co=
m>;
> Wilson, Chris P <chris.p.wilson@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v3 4/5] drm/i915/fbdev: lock the fbdev ob=
j
> before vma pin
>=20
> Hi Radhakrishna,
>=20
> On Wed, Mar 01, 2023 at 12:10:52PM -0800, Radhakrishna Sripada wrote:
> > From: Tejas Upadhyay <tejas.upadhyay@intel.com>
> >
> > lock the fbdev obj before calling into
> > i915_vma_pin_iomap(). This helps to solve below :
> >
> > <7>[   93.563308] i915 0000:00:02.0: [drm:intelfb_create [i915]] no BIO=
S fb,
> allocating a new one
> > <4>[   93.581844] ------------[ cut here ]------------
> > <4>[   93.581855] WARNING: CPU: 12 PID: 625 at
> drivers/gpu/drm/i915/gem/i915_gem_pages.c:424
> i915_gem_object_pin_map+0x152/0x1c0 [i915]
> >
> > Fixes: f0b6b01b3efe ("drm/i915: Add ww context to intel_dpt_pin, v2.")
> > Cc: Chris Wilson <chris.p.wilson@intel.com>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>=20
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>=20
> Andi
