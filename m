Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DB0997BF9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:46:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A0710E2AE;
	Thu, 10 Oct 2024 04:46:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N6qSb7J9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E399C10E2A7;
 Thu, 10 Oct 2024 04:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728535615; x=1760071615;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mTLcjCj5n7cg5n/kEWFlswdCoe4UZEdSA5kUiyFq8jM=;
 b=N6qSb7J9f2YSNpPSiH0IblbrcKefu167M+HhgKZCIkoOV8+qUbGflg1Q
 g65OI0F9fkP01BEaRJ8EtDy5wcXedp3kTwcpAzS7Eumoh9R2uAd6Y7ZuN
 df+wi0vzVzF/bQabqwBpkJ2yuEh49cm/Lsc2S4jylukKxtdEMdcTtI2/H
 rCtmSF7ItzAJpJrGF8PDG+kRQxTUWWb/NOHgxy30GQb4srgGB7J+GCXxU
 gMHSJadMLmfRKp4yxDP/XaOn6R2osoTI0Xq3xAuaFFXBATI3lSZ5tfgj7
 DHrCzEgby7c79iJyJ2/LrGoldyGbUjG3lOY8Iy68PJbaIl0RhHlYbZtH1 g==;
X-CSE-ConnectionGUID: vkuXNnxhTYiPhsB/0muU6A==
X-CSE-MsgGUID: rpJ3C+14RSqx9yL5HReU5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="31768259"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="31768259"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:46:54 -0700
X-CSE-ConnectionGUID: nysNZNrsRwOJbz649Ft8mA==
X-CSE-MsgGUID: 4cyXXX5qR4i5u80CRGjOag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="80468526"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 21:46:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 21:46:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 21:46:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 21:46:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cAPuQ6tTfN7q1dfCmQSRtAfRd4Ezv6WUO2VHhInIPYXZDpgv55g/+oXkgXREEc8LsvYDw4raI7Yk1kwiVeZqZRiWSAFK9m16uW4EghhjQ+KcYWOhvMQ13Qm1sOCvUh8ygUWsNNxTob12W366HJEDg/L3MmDtOqZx+z7zd7DMS99rnksIkfgnZsHkpG0RrDc4d7aTpSnKcOIMIMisMI0by/2l6c//5pieW2+MHodT6wx9SjkSGFw0fSX9uaItS7nDzAYWaF/nxinwwgRTX4vZrFlWEkIW5MCZP/f924BebTEHuc6psfRNtZqtAzEuIPtxkc0Q+fSCUTUgpPk+TZQDcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ksMzeBLCQa/KCup314LV6TTChgzTOaOnv5F/DTteSDI=;
 b=Qc2WJoQq/IulHueVOQHHTzzDy44H1tpdjUT+gUjgSXsXpYM1EcEZ8LbuMCMT7bBwgoR9htn8uVfk+KCBmUdYjHSwfWlP1+d4HQsJY+Si4ukoh2Fg+685j0Z7uFviFWkUOvt3vwyLJVae/9fmgshfvPrd/fiHcEZJKEi9PMHCsjPeaUQn28PxIpwuzEChcBIgVfTiYn39l3/EPXwZ/UrEO0Ft24AJTrahmIKdMTuFT1rPQ3BdatYKkLJ8SS32cR53dXDu2JXuS781fyyXw0ylwVVdwkumfSDCMBW/eeAYGk7k7T/tV1yxipVD9aMcNdu0u9bAAwmzycyFYPIU4unhVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB4797.namprd11.prod.outlook.com (2603:10b6:a03:2d4::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Thu, 10 Oct
 2024 04:46:46 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Thu, 10 Oct 2024
 04:46:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 09/10] drm/i915/xe3lpd: Add check to see if edp over type
 c is allowed
Thread-Topic: [PATCH 09/10] drm/i915/xe3lpd: Add check to see if edp over type
 c is allowed
Thread-Index: AQHbGdK3P64CaZfuLkqpIaeKS4wRqLJ+DSIAgAD+6YCAAFrfcA==
Date: Thu, 10 Oct 2024 04:46:46 +0000
Message-ID: <SN7PR11MB6750C1D264E35F66C2105804E3782@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-10-matthew.s.atwood@intel.com>
 <87jzehbtkb.fsf@intel.com> <ZwcMaS6oVZneqURv@msatwood-mobl>
In-Reply-To: <ZwcMaS6oVZneqURv@msatwood-mobl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB4797:EE_
x-ms-office365-filtering-correlation-id: ea963e1b-f94e-4444-ec7c-08dce8e68bd0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?rwpdYDTGNjzETwgy4jXMtGwfBIyN9h+cwCAuRCOM0JMHS3CEzn+Bh8ZzDpMH?=
 =?us-ascii?Q?1465pq8hoT0CX1+UuiFEMTpMEvKmz1lpKiqVgvemXrDyFIrg2U2OOnZFfm1P?=
 =?us-ascii?Q?RYGlYbhYIx+BcuqIFpHCR9bavYH7HTZIqRCARPoCY7fTNfd7Fg5M88w/4qhk?=
 =?us-ascii?Q?huoGM0BjL7/bBPtZaYQlLhyt2mJzTuy8x2vTq+tIprkks8cCSHYJ/muuUr+7?=
 =?us-ascii?Q?RM0TNFnlwK8QoyYKN4gG5Z+ws9x6kHj2nrEp0XMiag2X+SpWRdtApsOZlh+Y?=
 =?us-ascii?Q?cMvijU+dpcPZH2kxEftZZaAseVfM8pMLUDju76Fr5HOrmiRfsQlw3gAOZPS1?=
 =?us-ascii?Q?HzJKf0tcidV/IyFa5USQbk2bvzEkwlDTQcCtRgfs44UakxHjzXX8ugRoCJNw?=
 =?us-ascii?Q?LiIsjAH9lTiixtqWcvyC2JAbI4I+VNEWka3DvUhbZ3zfWluFp48Gr90+qZYl?=
 =?us-ascii?Q?J5p4TdcrOylAiPlluPWTqOjvWKIN+MCdShINKT46kRFtZv1xLwGwbJBWIOqQ?=
 =?us-ascii?Q?mwc2JaU4yHQBg7HJb40KTI6PWIxtxAdTyZj3ofdt6kjI6jYyr3rNrvL9odM1?=
 =?us-ascii?Q?F1HuljcRkK/nMAn3rvenCKI/ouI7FGOfSma0SJglgrjCIarrjyrvm82wE1Mc?=
 =?us-ascii?Q?g3bAOa7WI5rAjA/5hAIB+rYae2RTB2F8VmVwKXkvNiJrb5SHZDMRIViq5t55?=
 =?us-ascii?Q?EDKxRsQtSWVygiGBDFFXOlmQsPBe1Ug98LTaqaWCP/t1p1hohZhxnUjQkJNN?=
 =?us-ascii?Q?TULmCcN+10iivw6cufEnSsnooA3piSqEAPjtBpPjrqRggNVdwlK9Iyfm8qNs?=
 =?us-ascii?Q?Dtb6v8c77/oqT87fCU7Ata9yet3xver8fjTzIUVhaOlUURMj1obNAgjAICW0?=
 =?us-ascii?Q?xkgSgXNvH8cU3CQ6n9o+7FbqJg4BEspSH/fz8jhUzlrsj4JYe9tw0t4eTFGC?=
 =?us-ascii?Q?BW8VeOY6nIb3vT4c1Zby1NPyUler5AngrShr4zUmzqGTmoAiN3BoBJU8E1Gr?=
 =?us-ascii?Q?P6N2GuRtu7R7Rlt19KRwb6T2J+vuiwhM9telv/C75p/CpzxKruwj1HChjRkl?=
 =?us-ascii?Q?y7pX8Zh4dfEiUuVFYxKHJybZ0YeAuiAMg+3kr5Zb/FhXWtPMz8UuxTadytlP?=
 =?us-ascii?Q?GH3UOHOvz16PwgaLcl6m9Idg+T9ClGwFTUVjFEX61uPgGKR+a9sZ4WBizm6Y?=
 =?us-ascii?Q?srYfXKC2a1edvMkF7w82N+9ToVQ/it0LxqYRY0VCE1OzMMzvw67Rqi5M4jt6?=
 =?us-ascii?Q?tFaK7cCjP4mGJdqGgF0KILUsBlyGFzPAGyKksZrIGN/MmdV6SIzpcMmVFNFW?=
 =?us-ascii?Q?1onVcCGW0qgbL9rzu48xxbAvYmNlohuCoGFiADUFzD+Cpw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FGtUZLtoA+JUI9Ih3F9gfoXbauaGYAAEuvPk+JZthag8Dva98JzTK6ocbmEk?=
 =?us-ascii?Q?ZomX+NyMhLnwhRyOfT3X6Co8R1BjoQLjCgCxZoeCafWQZvwR6PU8WyCa2nkk?=
 =?us-ascii?Q?db2lcI8HzEI1b7HXSQ2GiS1kKQINhe7RHeX1eVyxY4EfHN1H0VuTUA/SHze6?=
 =?us-ascii?Q?170WVkdWMxb0oDcFfxoQa7kfnnXXCFkWSoYR8LZQSIcr2sT6cXFmy5RU698y?=
 =?us-ascii?Q?oy8hrwGvLkqbE52W0XONSCmx/cIeCKOkPNvfkHYKkcdbLlIvVCWzX0Zma6Fv?=
 =?us-ascii?Q?keqlzlZkwNprrwa2JMpuiWRACH+SDwF9fSyb8jvPbbw+Wh2ytLl8mjbrcpYM?=
 =?us-ascii?Q?NNZc2TgHnMPrdkN8d3NpIF38OyodVnnKjIeHggBqRMgJMAsd0Tv4h1jeBHts?=
 =?us-ascii?Q?lkeXgdz0kddP8oBxtS5rM+cEjUcq27yk+lZsNg1qRM89/ftIEqfbp9qVO4OD?=
 =?us-ascii?Q?OB7q3Ho7Di7ouS3JRE8RjLxJ81ip5isN4Jxcs24Po1Cvb+wi2EkOMPlN68YN?=
 =?us-ascii?Q?v6Vw42f4RgRFJJfmj+fSJ8G+AkO1epC8JG/nIO5dqn3jJdS7LX9dNG54jZj3?=
 =?us-ascii?Q?nw/vaf7Yl+/lpr3M/oUv+jrbSUbYfcxvrWnjpgtMKaBownetXMtXo5rmOw/K?=
 =?us-ascii?Q?X4j7qoyhVOUGYXKVH0ronEI00i9QvFw4oUrpP2ee4TWLVjUZg8/rkWNqD+tK?=
 =?us-ascii?Q?ljKUUwGFNhedUmCcqZBBCzlSdX+uj6dyajVLJvQvUXsydzIdm9hvt4S2T1K9?=
 =?us-ascii?Q?CutQgNh5euVb9VNPUZR/aEIr0GP+2Mr9YzHPQ2YRe6UpRGdTM8+Ns9dypqUu?=
 =?us-ascii?Q?3KYdS/xWigQFnUw2sfCsdIPDHdhD+lv+ulLug+GoqrsnRl8qU1N+3ES0Sx6E?=
 =?us-ascii?Q?lIjxSPTQjURENSjnwfAcF+zAmPo3KJqaqnL0ACTftQUaBCvlgg39Wr8Xg2us?=
 =?us-ascii?Q?TpHc2XKBUUSJ5/3x16WgqkP3dtoeqnUKmVmzEeDkUthWeXb296SMne+yFYz2?=
 =?us-ascii?Q?eTVXjEu0fzd3f8wIvtndS8GQubQyRgxadVuXNY8DxWkanagM7Wwxa8DM2uXI?=
 =?us-ascii?Q?cF42n1UnYVOyWx/aUUsFMiNyAfCETSteu5fcIK+hFSYsymW8baLEMdpTz7/z?=
 =?us-ascii?Q?jqFzxtXJ3TgbGifbquF30Z0q15mLM/mx6gO30fHNcagmH3TCwKP3hfcx9AFB?=
 =?us-ascii?Q?9N8E6nNLNI6+r43ppH2xB2ADDHkxCCAGhNfqLSiqmuKKcpFHkIxBafhj/8ZX?=
 =?us-ascii?Q?j5cvbDHyYN/5nvryFcRUmkQdMnNB5+pR5uFd2fsmJ7chxxRkwH0Ynn4PvQ9N?=
 =?us-ascii?Q?kVJGNC45fUkUxU9ovs6HhPBcfXTOL5sdk6R2cx8eBkPJqFpjFE0hKvM3xIOL?=
 =?us-ascii?Q?C092vaUW4BMuoh0Jf0diwMYI/UyGfuk6GOxZdrlt6GHTIAg15THJ3CWi/Ucu?=
 =?us-ascii?Q?Dsb0FC8NPZUwTUxqNsFBtwscrB+mcfi7ZCojjdZ7TSkVtoTn0NRZ42OtagIt?=
 =?us-ascii?Q?E4Zr/z/te5Tt13mELXjj485iDqn8/0/8UT5Xb0ZxMET+hyJx6VREgoHl5hP8?=
 =?us-ascii?Q?GWPK+adgVWGTmUgDIu3z0QcD2IBmxGgLRq0B2snu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea963e1b-f94e-4444-ec7c-08dce8e68bd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 04:46:46.5191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PknRuaikQAv0H3XT7CmRQl5/y4XZouylg7g6L9EReUz06XLv51oJf9nSQOlqq5ZBOrc/0emnEPAR5kJnKs7ZuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4797
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
> From: Atwood, Matthew S <matthew.s.atwood@intel.com>
> Sent: Thursday, October 10, 2024 4:36 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Kand=
pal,
> Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 09/10] drm/i915/xe3lpd: Add check to see if edp over
> type c is allowed
>=20
> On Wed, Oct 09, 2024 at 10:53:56AM +0300, Jani Nikula wrote:
> > On Tue, 08 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> > > From: Suraj Kandpal <suraj.kandpal@intel.com>
> > >
> > > Read PICA register to see if edp over type C is possible and then
> > > add the appropriate tables for it.
> >
> > There's clearly more to be done for the feature than this.

From what I could see in the spec we just need to read this the rest of the=
 framework
Already seemed to be in place and removing the checks where we didn't allow=
 edp to go ahead when
It was type c

> >
> > >
> > > Bspec: 68846
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c     |  2 ++
> > >  .../gpu/drm/i915/display/intel_display_types.h   |  1 +
> > >  drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++++++++=
++
> > >  drivers/gpu/drm/i915/i915_reg.h                  |  3 +++
> > >  4 files changed, 22 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > index 0d6f75ae35f5..1c8c2a2b05e1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > @@ -2261,6 +2261,8 @@ intel_c20_pll_tables_get(struct intel_crtc_stat=
e
> *crtc_state,
> > >  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) {
> > >  			if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 1))
> > >  				return xe2hpd_c20_edp_tables;
> > > +			if (DISPLAY_VER(i915) >=3D 30 && encoder-
> >typec_supp)
> > > +				return xe3lpd_c20_dp_edp_tables;
> > >  		}
> > >
> > >  		if (DISPLAY_VER_FULL(i915) =3D=3D IP_VER(14, 1)) diff --git
> > > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 2bb1fa64da2f..e9dc7707fbcd 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -158,6 +158,7 @@ struct intel_encoder {
> > >  	enum port port;
> > >  	u16 cloneable;
> > >  	u8 pipe_mask;
> > > +	bool typec_supp;
> >
> > The register is global, why do we store this per encoder?

Do you think having this in drm_i915_private makes sense wanted to put it t=
here originally

> >
> > Side not, please let's not abbreviate stuff like _supp for the sake of
> > abbreviating stuff.

Sure will fix the naming
Also quick question what would be the rule when abbreviating variables or
When would we want to abbreviate the a variable if we want to

> >
> > >
> > >  	/* Check and recover a bad link state. */
> > >  	struct delayed_work link_check_work; diff --git
> > > a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index fbb096be02ad..917a503cc43b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -5570,6 +5570,20 @@ intel_dp_detect_sdp_caps(struct intel_dp
> *intel_dp)
> > >  		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp-
> >dpcd);  }
> > >
> > > +static void
> > > +intel_dp_check_edp_typec_supp(struct intel_encoder *encoder)
> >
> > It's not about checking anything, it's about reading, right?

Yes will rename this to intel_dp_read_edp_typec_support

> >
> > > +{
> > > +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> > > +	bool is_tc_port =3D intel_encoder_is_tc(encoder);
> > > +	u32 ret =3D 0;
> > > +
> > > +	if (encoder->type !=3D INTEL_OUTPUT_EDP || !is_tc_port)
> >
> > Currently we warn at connector init for eDP type-C combo.

That's true we will need to remove that check for DISPLAY_VER > 20
Thanks will add that in this patch

> >
> > > +		return;
> > > +
> > > +	ret =3D intel_de_read(i915, PICA_PHY_CONFIG_CONTROL);
> > > +	encoder->typec_supp =3D ret & EDP_ON_TYPEC; }
> > > +
> > >  static int
> > >  intel_dp_detect(struct drm_connector *connector,
> > >  		struct drm_modeset_acquire_ctx *ctx, @@ -5595,6 +5609,8
> @@
> > > intel_dp_detect(struct drm_connector *connector,
> > >  	if (!intel_display_driver_check_access(dev_priv))
> > >  		return connector->status;
> > >
> > > +	intel_dp_check_edp_typec_supp(encoder);
> > > +
> >
> > Isn't this something that should be determined at intel_ddi_init() time=
?

Or intel_dp_connector_init can add it there what do you think ?

Regards,
Suraj Kandpal
> >
> > BR,
> > Jani.
> Please respond to Jani's comments
> MattA
> >
> >
> > >  	/* Can't disconnect eDP */
> > >  	if (intel_dp_is_edp(intel_dp))
> > >  		status =3D edp_detect(intel_dp);
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > b/drivers/gpu/drm/i915/i915_reg.h index da65500cd0c8..5f5a6ade5f8c
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -4583,4 +4583,7 @@ enum skl_power_gate {
> > >
> > >  #define MTL_MEDIA_GSI_BASE		0x380000
> > >
> > > +#define PICA_PHY_CONFIG_CONTROL 	_MMIO(0x16FE68)
> > > +#define   EDP_ON_TYPEC			REG_BIT(31)
> > > +
> > >  #endif /* _I915_REG_H_ */
> >
> > --
> > Jani Nikula, Intel
