Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC7F9EA944
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 08:07:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D268C10E7F2;
	Tue, 10 Dec 2024 07:07:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gku9ij1F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40FAB10E808
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 07:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733814446; x=1765350446;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9omhIGTzgIVXsMDkDFV84qk1ECrjzQOWhHy3r36U9pk=;
 b=Gku9ij1FRULlNrIdlI/qT/q9upqAzFnUeLS6ZN9wWMV2kD8d5jWnBjf0
 fft1yt2rNdbeHDl2uoYcrL6ziWvz2dmryj1ARe1VSRnbD49wywx2K1el4
 U5VVigG4nSiYHy4DfOqmY94zRjTC05ShRatTys3IS8JPPhGCXKrimNQqz
 tPxjY8kCcENihtrtzJpmH32nopzr9Ok5rux7ss1uK0yxpVBINk/2C4wQp
 vnEnRBmWcQ/q52G0sbtNCHOUpE7qVqbeDAeLoi6Fn8dGGjWa2Tfuk39oN
 M/Q8g6s98llm/ot77fQ4rGhqeofQ/CRJO/tM32a0tG4OdigCKOy+7Glb8 g==;
X-CSE-ConnectionGUID: ZLnaNAUyQB+bX3I753FJmw==
X-CSE-MsgGUID: 7GAt7Y5uR8Welsb8PBDVgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34065903"
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="34065903"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 23:07:25 -0800
X-CSE-ConnectionGUID: 9xslULhQStyfLBItsSzCYA==
X-CSE-MsgGUID: 2m2vzYmuRByr9NY24LYYHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="95190240"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 23:07:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 23:07:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 23:07:24 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 23:07:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EGLwTjbF8wIDHiZXceNb1u5x96gKLxk/261FQy8xNmoOzWnldnrJCWEnIj4qBnBNkk54pua+KDafgtX9bfMY4Vc+Oxav0Wb2xoyOpu4D5Z6u8i97ZakbqmG2ktWUSHabPAlBw5cl47wvpx/VedkAXEFxKzTfJ1F4xqLXA0xlkPDKiLppA1mi88GW6JeMEdpn/K5eMf+hrG5yayJT/lSbtoTnhNW/Ai6TusteaRNXpyJmqfRl5Oeb31yO7fcWTq2pvvBr9IR1ZucPoVEOA/AxyFDVLlruo5VVjNOBmT1V1Gpemj1uZuhP6/IkaKaGGZSeIftcKOmHcV+L8tMICeCZtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Eietu0zdiBJQgrMJYK7/CFup8Jazd47XwuaWtrPXsVs=;
 b=qBgx5Y0Nxg7Wc4ikwRWSOc7l6Q2RNJyew7DRO00oJkQ/j5om3Nd7olMvdEXAZNI8wvOuWqFAJPXpNSwrN/SjGa9aqMlKEY2NQDdE41FNoSoSZDkqbg6+mBgQuJsjFo+G+YK3oVvRRn4jqV34VokELrKyeUngkAqyhAWglJzu6FBvkDIOTOpscLGyvQeEiFdt4woKMOl0rD48RY56S0sAZBMvDCm0BMha6qrqogZEvy7jHkQW5979kBJ4foOV/A7VHCUcqi0kHvTiDGp+JAYIDS2UPG2xt5dI3+9fL4ZbZr1X9McaR9dZoB7Fg4+zjEG0HykKl6brrmd1UJVInYEYKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by DS0PR11MB6326.namprd11.prod.outlook.com (2603:10b6:8:ce::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Tue, 10 Dec
 2024 07:07:16 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8230.016; Tue, 10 Dec 2024
 07:07:16 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: lkp <lkp@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 "oe-kbuild-all@lists.linux.dev" <oe-kbuild-all@lists.linux.dev>
Subject: RE: [PATCH v2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Thread-Topic: [PATCH v2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm value
Thread-Index: AQHbSlAJ50V6YAf8AkGonJz0zLBlsLLeg6oAgACLYNA=
Date: Tue, 10 Dec 2024 07:07:16 +0000
Message-ID: <IA1PR11MB626669ADDF188F0F87F8009BE23D2@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241209153418.49580-1-dnyaneshwar.bhadane@intel.com>
 <202412100658.ach3jkpF-lkp@intel.com>
In-Reply-To: <202412100658.ach3jkpF-lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|DS0PR11MB6326:EE_
x-ms-office365-filtering-correlation-id: c5f706e2-5433-48a4-9211-08dd18e9478f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?68V0xoCovJzU2dKBeJFICP9bO+qJaBJ/O0BE5H9n1f9rB/9e3AXH2mRnvvjp?=
 =?us-ascii?Q?9rSRfeVm6PlsWT/soCOgbKj64vSlmasu1dfDJoOHZbSxNmWMxZ/XhPNy9zKc?=
 =?us-ascii?Q?TGTRyiU8/68JmL44fJJ02nq3ZCrddzoQKKRoWvFEU6TqFcXlzWjEjp+6tET/?=
 =?us-ascii?Q?YXQIb95FOQk6/4YTFx3B085GFoSocbuXJVaYU3hfJ0AsGnjK4TQQtnqUx37O?=
 =?us-ascii?Q?MOXTCC1GM5w/Cck5ZcF2lr+5op9l+kikot9nEqOh8HGFXu3Jk0AhVr4xttuE?=
 =?us-ascii?Q?waE+Md+cT7GYTr6DfCiSt1Ze0zQlZ9They390I3IrN9bgOsJOF3VaE+Og37m?=
 =?us-ascii?Q?3OCGQW5yXIVfk7F1wdXk4DJ8/OfLYLVEyNPUuACWShal4+m/lEv3kLdlFX13?=
 =?us-ascii?Q?S0YhDDLOo9j4VM6WCMVXoo3TMh8PrBITXxQaVXGzZ0m3bEJYF/BTy7r4ubew?=
 =?us-ascii?Q?FATb7vdUgU9dYG9mDNA0DgISjT6qaAr2tltYzk/1jmXMt6YOeVDauWsMtydM?=
 =?us-ascii?Q?Ha8dnzQkz95DB00Hafx6jqlwmZCy2kTzrE2mf0gQG60DBKBqc8lhQQgmbMr/?=
 =?us-ascii?Q?nPxaecCwwAnT4ZbbUO4biV3ty9fqLJbC7seFNdhdHjCSyw3D+riJsNKnmyaf?=
 =?us-ascii?Q?JcnbkOONvs6LoU/aIcrOurDGt96QaaoJwhcqPs2WkNss5JvBwAL/UkIQzinx?=
 =?us-ascii?Q?WY7rJnmjoIOOBtA+CsvQ3iZ75n1DP9/o0CBnNfLxC1UZPilRCTJBsF0UjirT?=
 =?us-ascii?Q?XsuzAjU5ThrXfC8KvLMg+c6SJiTNSlUFWsIAfQxzbwnPkIqwXRql9VpD+kmk?=
 =?us-ascii?Q?lCwqmGVgmDwka5STAP8eCV8SJvwoxA+r8kJ8UeNcosJsWFhOVtS9DOzdN9M1?=
 =?us-ascii?Q?I9IQvSO6G8CUp+7ekXg/N5tuhXHfjm+bOm4W/pv4ya8J9ycFxeDQHXDPsYbp?=
 =?us-ascii?Q?XQb/MdKs9S0GQ9VO8rnyolo5HA1TpYrzDt7Fx8GJ4/V0SQrvfFINyV1wvjlR?=
 =?us-ascii?Q?1NcnRNDXRBsLV7WkPesTbldWmOPRLtfbDz/XF4jKmkTTcZZVYkRUAzeYxM04?=
 =?us-ascii?Q?hyuT1AGgD/cYN2WFkXjhcvxIbdo/+v01qyJn2KudikIJHNFJFI3KacHnqBHE?=
 =?us-ascii?Q?QHMIQAqV1U7dssdgOryLOOPqmzFokRQMaBj2LRvI64spQdyY4CtoYhfy+sHx?=
 =?us-ascii?Q?vJFNDiyqIVHmBYgevNJypUpTtMabjVigFy3AsRyEKGs4rXb8NSBV7GqywOHb?=
 =?us-ascii?Q?6M5EcSG1u3+oeboSMX1oOlPZrDZNGbViKqfHVXcYIO96ZSvDFpi5yWHUeXef?=
 =?us-ascii?Q?PCr/yBH7lXnBgJa+141GQ0X+7EPs6ftXcz49BbhXv1o0Enn3tsHi7RpOfRof?=
 =?us-ascii?Q?fEJ1rXE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hm0guDST9A6XI4rq5OxIiu1IE+/VyabSj1DrOEHhPIZCfPBaEHCcHNicQilb?=
 =?us-ascii?Q?Vo0mCM60Q2yNDCcUC5md+O7acna2k09NiYVRAVh/Bl+fkNxvRClyPLZ3s0Lo?=
 =?us-ascii?Q?4+j4aO1iF+DX0kvnboN4TlBRla03IL80Cra/0JBded6f4RCgPdwI2GN4wlmy?=
 =?us-ascii?Q?/lft6t9XROOrtpPSuemvu5xsKZf6lLzvz9DeiZ3ZqdgbSfXkJlvcKPpnDBNU?=
 =?us-ascii?Q?2iCynDx9myhZv+ZC6NpemLkcrW4Fb9wc0dYs6fctB1rStg//xz2DX4hgzyfT?=
 =?us-ascii?Q?3dtYYox0bzS9IFYkjxclLhaqHW/Y9OB95cLsDdSL01FIeqonLqsa2rBzHllU?=
 =?us-ascii?Q?JpFQe7fdh3U1ZdTSL91hCWL/IFDh6oqJuBi6lUyeyiUYsf6soLOouUnKvrSp?=
 =?us-ascii?Q?D2VebxSpYwM/SPvg7xd1C63w0e6ysOHBzGwn3/BnlhxZOrgV6xpzgENPMRH/?=
 =?us-ascii?Q?p8wiLdn+d4wQbI4sl3DMh7yAZZeVAwXhDGTiuDmGCZDWzq5FBJf6tA2EVO18?=
 =?us-ascii?Q?hXdrTY8Ff3L1JQXAUps1JFW3nRz8+6sSDoTrMnq6cU4OtTtNZpLAvq3RpSsV?=
 =?us-ascii?Q?tx0kzFe908WHbRNKZ5f/2EHB4UIXjL2KphMsUWgBoD6huS0/jc+bOB68utP8?=
 =?us-ascii?Q?fIV3OfeuGL/mZRfZ9zgekR7VblwyZsEoh3Rsuy33ciEId/Iryv2p4UJlxoTl?=
 =?us-ascii?Q?jnhp8/71PKbaR/qWhX/lj+3OzBSjz5ZKxytrn/rrAg8gdey2cakVmJVqJokJ?=
 =?us-ascii?Q?TkwRXINR6zk3S1u2FNoqXRmk3aGdT/v+e+XTTtrHz3pLiA7NxR7ES8zZuzez?=
 =?us-ascii?Q?8RoObhFLu9WK+e60/DQv0gATTWaeTv9Lp5B2tYE3Gi8VFw4iyu+Pu518pZlt?=
 =?us-ascii?Q?JXpif8G4p9TWChhbMeTw2f7DuBKLSY5mUS1JZ4/k5zPwmiwIXEk1yeP0VaT/?=
 =?us-ascii?Q?h7IOtNMuBC9As6Pjwq+6fD2g1HfMeabb3eZAFPuh2ZsH7PG8vXbWu52ZCOZE?=
 =?us-ascii?Q?VfTTodW3xFFrhb+seDf4k/li9d7qZcWxkXo1mRhaBeSbldsQWtGSl6EWh0cr?=
 =?us-ascii?Q?m1ofrhhfTGL2yxdqv77WyODhy6hLRNPormMou2HyNpn1DDhOsllYw4CVq5Y/?=
 =?us-ascii?Q?WRiAlszOClmCKpFe/N2ur2WU6RQiPoj7AaV613OrC5sS+OmiCwxVzeO0/5mY?=
 =?us-ascii?Q?QyJQpVd/7aUvxT6mdh5+gkO+JnhN1wk7femvxL2bmuzdYMtQ0lhutsAuvg75?=
 =?us-ascii?Q?4aCeG7NJPjglsE6SJ373cJIZ4uqzp898+OhRhd1IRQTetufCeWtshutyP+eC?=
 =?us-ascii?Q?GwqUCM5wTUmYO8BxNvd2ayw44Nmb5m2yI78eJFqt7RSk8VAIJNXzgWWH5VyR?=
 =?us-ascii?Q?qLhABRCcY84vdqMBkDaGD+FTo8183FqPiXTxUmF8wCgI1ItHxEkNvLP1jvZs?=
 =?us-ascii?Q?ZNrwuiQycSRGgf+OJLsepWXQR8SN4ndnbAr8Z5M026iJIkoeISPymdvxuL0K?=
 =?us-ascii?Q?Qk2I7HwcBQ6VtIgsr0XvM+yAD2V9cevSIsNk3x1FE63CGefh7Xfk+KmWzspb?=
 =?us-ascii?Q?NtOQRYl5mk95OwSiHJHhfLft10expdkj9Xa2cf22MlPT6LaUD502197rMzKS?=
 =?us-ascii?Q?Gw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5f706e2-5433-48a4-9211-08dd18e9478f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2024 07:07:16.2887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZK9pSHh7lG4uX4nzUGwrBTEhTJumwHgEj5aEZ5/5sU4M72sUyr4ligS66U47MLDoJl2cZ4ckyUC2n1BQ8QqWFOh2L0KgJAUAVp+HFAsb24I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6326
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
> From: lkp <lkp@intel.com>
> Sent: Tuesday, December 10, 2024 4:16 AM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: llvm@lists.linux.dev; oe-kbuild-all@lists.linux.dev; Bhadane, Dnyanes=
hwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: Re: [PATCH v2] drm/i915/cx0_phy: Update HDMI TMDS C20 algorithm
> value
>=20
> Hi Dnyaneshwar,
>=20
> kernel test robot noticed the following build warnings:
>=20
> [auto build test WARNING on next-20241209] [also build test WARNING on
> linus/master v6.13-rc2] [cannot apply to drm-intel/for-linux-next drm-int=
el/for-
> linux-next-fixes drm-tip/drm-tip v6.13-rc2 v6.13-rc1 v6.12] [If your patc=
h is
> applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
>=20
> url:    https://github.com/intel-lab-lkp/linux/commits/Dnyaneshwar-
> Bhadane/drm-i915-cx0_phy-Update-HDMI-TMDS-C20-algorithm-
> value/20241209-233928
> base:   next-20241209
> patch link:    https://lore.kernel.org/r/20241209153418.49580-1-
> dnyaneshwar.bhadane%40intel.com
> patch subject: [PATCH v2] drm/i915/cx0_phy: Update HDMI TMDS C20
> algorithm value
> config: i386-buildonly-randconfig-005-20241210
> (https://download.01.org/0day-ci/archive/20241210/202412100658.ach3jkpF-
> lkp@intel.com/config)
> compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project
> ab51eccf88f5321e7c60591c5546b254b6afab99)
> reproduce (this is a W=3D1 build): (https://download.01.org/0day-
> ci/archive/20241210/202412100658.ach3jkpF-lkp@intel.com/reproduce)
>=20
> If you fix the issue in a separate patch/commit (i.e. not just a new vers=
ion of the
> same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes:
> | https://lore.kernel.org/oe-kbuild-all/202412100658.ach3jkpF-lkp@intel.
> | com/
>=20
> All warnings (new ones prefixed by >>):
>=20
>    In file included from drivers/gpu/drm/i915/display/intel_cx0_phy.c:13:
>    In file included from drivers/gpu/drm/i915/display/intel_de.h:9:
>    In file included from drivers/gpu/drm/i915/i915_drv.h:40:
>    In file included from drivers/gpu/drm/i915/display/intel_display_core.=
h:16:
>    In file included from include/drm/drm_connector.h:32:
>    In file included from include/drm/drm_util.h:36:
>    In file included from include/linux/kgdb.h:19:
>    In file included from include/linux/kprobes.h:28:
>    In file included from include/linux/ftrace.h:13:
>    In file included from include/linux/kallsyms.h:13:
>    In file included from include/linux/mm.h:2287:
>    include/linux/vmstat.h:518:36: warning: arithmetic between different
> enumeration types ('enum node_stat_item' and 'enum lru_list') [-Wenum-
> enum-conversion]
>      518 |         return node_stat_name(NR_LRU_BASE + lru) + 3; // skip =
"nr_"
>          |                               ~~~~~~~~~~~ ^ ~~~
> >> drivers/gpu/drm/i915/display/intel_cx0_phy.c:2193:13: warning:
> >> variable 'tx_misc' is used uninitialized whenever 'if' condition is
> >> false [-Wsometimes-uninitialized]
>     2193 |         } else if (IS_METEORLAKE(to_i915(display->drm))) {
>          |                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_drv.h:528:29: note: expanded from macro
> 'IS_METEORLAKE'
>      528 | #define IS_METEORLAKE(i915) IS_PLATFORM(i915,
> INTEL_METEORLAKE)
>          |                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
>    drivers/gpu/drm/i915/display/intel_cx0_phy.c:2211:26: note: uninitiali=
zed
> use occurs here
>     2211 |         return (C20_PHY_TX_MISC(tx_misc) |
>          |                                 ^~~~~~~
>    drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:291:73: note: expand=
ed
> from macro 'C20_PHY_TX_MISC'
>      291 | #define   C20_PHY_TX_MISC(val)
> REG_FIELD_PREP16(C20_PHY_TX_MISC_MASK, (val))
>          |                                                               =
                  ^~~
>    drivers/gpu/drm/i915/i915_reg_defs.h:188:28: note: expanded from macro
> 'REG_FIELD_PREP16'
>      188 |         ((u16)((((typeof(__mask))(__val) << __bf_shf(__mask)) =
& (__mask))
> +      \
>          |                                   ^~~~~
>    drivers/gpu/drm/i915/display/intel_cx0_phy.c:2193:9: note: remove the =
'if' if
> its condition is always true
>     2193 |         } else if (IS_METEORLAKE(to_i915(display->drm))) {
>          |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/i915/display/intel_cx0_phy.c:2182:13: note: initialize=
 the
> variable 'tx_misc' to silence this warning
>     2182 |         u16 tx_misc;
>          |                    ^
>          |                     =3D 0
> >> drivers/gpu/drm/i915/display/intel_cx0_phy.c:2193:13: warning:
> >> variable 'tx_term_ctrl' is used uninitialized whenever 'if' condition
> >> is false [-Wsometimes-uninitialized]
>     2193 |         } else if (IS_METEORLAKE(to_i915(display->drm))) {
>          |                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/i915/i915_drv.h:528:29: note: expanded from macro
> 'IS_METEORLAKE'
>      528 | #define IS_METEORLAKE(i915) IS_PLATFORM(i915,
> INTEL_METEORLAKE)
>          |                             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
>    drivers/gpu/drm/i915/display/intel_cx0_phy.c:2213:47: note: uninitiali=
zed
> use occurs here
>     2213 |                 C20_PHY_TX_DCC_BYPASS |
> C20_PHY_TX_TERM_CTL(tx_term_ctrl));
>          |                                                             ^~=
~~~~~~~~~~
>    drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h:297:80: note: expand=
ed
> from macro 'C20_PHY_TX_TERM_CTL'
>      297 | #define   C20_PHY_TX_TERM_CTL(val)
> REG_FIELD_PREP16(C20_PHY_TX_TERM_CTL_MASK, (val))
>          |                                                               =
                      ^~~
>    drivers/gpu/drm/i915/i915_reg_defs.h:188:28: note: expanded from macro
> 'REG_FIELD_PREP16'
>      188 |         ((u16)((((typeof(__mask))(__val) << __bf_shf(__mask)) =
& (__mask))
> +      \
>          |                                   ^~~~~
>    drivers/gpu/drm/i915/display/intel_cx0_phy.c:2193:9: note: remove the =
'if' if
> its condition is always true
>     2193 |         } else if (IS_METEORLAKE(to_i915(display->drm))) {
>          |                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/i915/display/intel_cx0_phy.c:2184:18: note: initialize=
 the
> variable 'tx_term_ctrl' to silence this warning
>     2184 |         u16 tx_term_ctrl;
>          |                         ^
>          |                          =3D 0
>    3 warnings generated.

I will address these warnings.

Dnyaneshwar
>=20
>=20
> vim +2193 drivers/gpu/drm/i915/display/intel_cx0_phy.c
>=20
>   2177
>   2178	static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_crtc_state
> *crtc_state)
>   2179	{
>   2180		struct intel_display *display =3D to_intel_display(crtc_state);
>   2181		struct pci_dev *pdev =3D NULL;
>   2182		u16 tx_misc;
>   2183		u16 tx_dcc_cal_dac_ctrl_range =3D 8;
>   2184		u16 tx_term_ctrl;
>   2185		u16 host_bridge_pci_dev_id;
>   2186
>   2187		if (IS_BATTLEMAGE(to_i915(display->drm))) {
>   2188			tx_misc =3D 0;
>   2189			tx_term_ctrl =3D 2;
>   2190		} else if (DISPLAY_VER(display) >=3D 20) {
>   2191			tx_misc =3D 5;
>   2192			tx_term_ctrl =3D 4;
> > 2193		} else if (IS_METEORLAKE(to_i915(display->drm))) {
>   2194			/*
>   2195			 * Some SoCs have the same drm PCI IDs, so
> differentiate based
>   2196			 * on the host bridge device ID to use the correct
> txx_mics value.
>   2197			 */
>   2198			while ((pdev =3D pci_get_class(PCI_CLASS_BRIDGE_HOST
> << 8, pdev)))
>   2199				host_bridge_pci_dev_id =3D pdev->device;
>   2200
>   2201			if (IS_METEORLAKE_U(to_i915(display->drm)) ||
>   2202			    IS_ARROWLAKE_U(to_i915(display->drm)) ||
>   2203			    (pdev &&
> IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id))) {
>   2204				tx_misc =3D 3;
>   2205			} else {
>   2206				tx_misc =3D 7;
>   2207			}
>   2208
>   2209			tx_term_ctrl =3D 2;
>   2210		}
>   2211		return (C20_PHY_TX_MISC(tx_misc) |
>   2212
> 	C20_PHY_TX_DCC_CAL_RANGE(tx_dcc_cal_dac_ctrl_range) |
>   2213			C20_PHY_TX_DCC_BYPASS |
> C20_PHY_TX_TERM_CTL(tx_term_ctrl));
>   2214	}
>   2215
>=20
> --
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki
