Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D5999F2B3
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 18:26:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4B2F10E5B9;
	Tue, 15 Oct 2024 16:26:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EWHirITu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C630910E5B7;
 Tue, 15 Oct 2024 16:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729009612; x=1760545612;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TjWhExywE58St14fojuy58yN+mO31EE1eQMC6RBtfC4=;
 b=EWHirITuI4tB7R3EGegxtwDWJCp1OWyaLNkrfZyUp9ZElvcJQ2twI394
 QDylpsINE350m4LIC8lBM5LG4Cp2DK8vfyQOPE/PBmhn36g8iJRz8OqWi
 BsKBKGeJ8VBrQ+E1uzqXbqDP1GnkpN6lwAsNx+bbTT0lqdizR0DNnV1ba
 FqgGWo9BQhHADcqqyw/q4Ce1G0WbS66MgnMHDqdDsJnsel4xtP9vvgsBY
 +xgi/MDz3L+OYlSctqRg/Vc4pyLjiy6A5mI0m5RJgpMqm73+CovIl4EgW
 IxyzEUwxhvVREOXhLP9aZk+XhdDK7lV0tImkhrbo4VJ9S/SZsk+LLwUga A==;
X-CSE-ConnectionGUID: XjwvSa0SQpK2J2suI0UkkA==
X-CSE-MsgGUID: 544Ufnx1RBeHsnVvzHbMdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="53825156"
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="53825156"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 09:26:51 -0700
X-CSE-ConnectionGUID: GpVoPKthTVm/DeHgdns0OA==
X-CSE-MsgGUID: qsVGqXhQS+uWxz8pUa4mGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,205,1725346800"; d="scan'208";a="78778536"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 09:26:51 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 09:26:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 09:26:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 09:26:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OobTMY5eBMltF2qxURxHKkxnh32dX0URcxHnfo5MOyIz0SGZ59I4aJyRNQ0SMWWcpIaZuk7Y3dR+1GziWenlr2/d//GgnE2LGH8CkhkR6o8iLb/vEnYUzSsKAM3kRWWuF0HqFCg9FSTr5UT9DDV3B4bA+XxjYYvm/TVfvDoDWmF5Y/EzzNAftob4EIfQFU54W97JAslPMDZKYv4bSdXInnVInEhAWNMBQAvZCD7OjHDlXE37F0sHwAUpE0YYl4oxPZ8+f/90sb/11X+MsNajcc7QcIrOwEARSLdQrfN0Kw8pkanE00pc7hS2RYxYixIsLLM0YrJfuG8doYUj0i2cbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0zHtD39pLF4UEYIF5+096rNm/HDGnz1NI8bTyLbntK8=;
 b=pLfL9NDfBcnOW0rys39iJI0T9g3q45YoV0jFXLCn3zUZrK+bNPnNqnqoXVxQRTHXncaQ9UeO0z2GWcauC4vI/QAIMMWKbyN6PMYiw7nCXFkXzphBNB+1NxtZ0ukKxkx56nhKISZ9IUastUtkI8db0iI530MemjdLT4KbTXWYKnQy9598klCWFQzJNK/NMuT9zVNcC00RQMlD1g0n8e3RuMKldgspU4B4vFa7QB0YVTeJtDpapKECylKRzpM9BI01kdO+CkB/vVVZjENBOr22y5PWIZjJxv1fCFDEpAkuC+rGTEgsCuEyYg774jpSfXNMqUbkHSpiCqPND9QV/+W1FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5456.namprd11.prod.outlook.com (2603:10b6:5:39c::14)
 by BY1PR11MB8054.namprd11.prod.outlook.com (2603:10b6:a03:52f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Tue, 15 Oct
 2024 16:26:47 +0000
Received: from DM4PR11MB5456.namprd11.prod.outlook.com
 ([fe80::b23b:735f:b015:26ad]) by DM4PR11MB5456.namprd11.prod.outlook.com
 ([fe80::b23b:735f:b015:26ad%5]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 16:26:47 +0000
From: "Lin, Shuicheng" <shuicheng.lin@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Lahtinen, Joonas" <joonas.lahtinen@intel.com>
Subject: RE: [PATCH] drm/i915/dp: Fix memory leak in parse_lfp_panel_dtd()
Thread-Topic: [PATCH] drm/i915/dp: Fix memory leak in parse_lfp_panel_dtd()
Thread-Index: AQHbGzHPv23+qMu9vEarobPFZQjnE7KBOIQAgADQfVCABfvJcA==
Date: Tue, 15 Oct 2024 16:26:47 +0000
Message-ID: <DM4PR11MB5456AA2A04AD04266B8AED66EA452@DM4PR11MB5456.namprd11.prod.outlook.com>
References: <20241010155552.994880-1-shuicheng.lin@intel.com>
 <877caf6o3f.fsf@intel.com>
 <DM4PR11MB545670BF1099467FB0FA0EFFEA792@DM4PR11MB5456.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB545670BF1099467FB0FA0EFFEA792@DM4PR11MB5456.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5456:EE_|BY1PR11MB8054:EE_
x-ms-office365-filtering-correlation-id: 04c2472f-e6c9-4992-ac50-08dced362a87
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OtIgBhJKI4BEi2GIgYnSl0Ic6zRxqEy3vuddbHpwH59Jtjvb4EDNkQzViCAp?=
 =?us-ascii?Q?RfDq4iXdCWALUXSyAZdnRB7f5/S5RHGrIUwmhmcSJ8mC700NND6I3gmancie?=
 =?us-ascii?Q?uLY1QslzUuuti+MGUmV5X9sDRr0oOTzWf66nnrdbnA4ajTUlPxXTqJtHxOOi?=
 =?us-ascii?Q?T8i9RsR/xCBdRzH0ew3dAbeicZjMxfVuajZP2r50OeemYUn/rp2FNZbW0PkP?=
 =?us-ascii?Q?y0mrtUKncBGO07FYdvojJ+63R6O+lPzOfeTi8ijTGdpBzf+eNDIW0txCBe0Z?=
 =?us-ascii?Q?a25b/l/GfyfYzyxKa7jEVLVbPN5gEfUedhu0IHAEVi0v1Udw5AT4bVLdgIro?=
 =?us-ascii?Q?Rd25S0KSc5QPhBS/eCmzz4HE110FIk1bOYyekgrEu/YaG9S0B7bHzgTq69e9?=
 =?us-ascii?Q?9QbtSR9BPUH1oQJtMceO0mKBUEI5xLLWxjLK0Gh9bMeuZQAjFE7w0BglSb56?=
 =?us-ascii?Q?ZOH8iNYwBVGFxlorr71Pkd1THT408M32jgJ1Ph9nUXxvUkTkFpSDa41E5yqn?=
 =?us-ascii?Q?NAWlzx7uOxo9+qV3NY5uu5s+5OdnhFLNRmYxq2/73oQkFTCeFD+DCiHPUssC?=
 =?us-ascii?Q?J25dpv+pnX1lAIIzGQcmwamhEuOlZIX7JDNea2as9MvCDbw4Mfbgq44vdMzk?=
 =?us-ascii?Q?Ve0XKK7gEWIy3MUIvHV8YbH4xrFo0uV2m4/io0VJ3zoRm2UHfiXyHBCKU9H+?=
 =?us-ascii?Q?Ciehe1hc49O+hSOCklHzeghTrBD4ByZruqitVpe3PKMvsRlyE9FrACWmqzu3?=
 =?us-ascii?Q?LHB0r0+NsvKXTNER/2DEMeTtt2MmPG0+10UsW0Du1vS7nqRidIJYxHwVT1xw?=
 =?us-ascii?Q?o/ilDwQ3ajNal8Yy8LI4f5LgrY48gcHzhYREbx3aKmYpAXVUuEDhZ3RElmNj?=
 =?us-ascii?Q?y+WRzcA9dlF72GZPzx4Ed2DPiS2DLaiTyWHz3BLHZQevuxSo3wHyl4pv+kp/?=
 =?us-ascii?Q?YFdGw/8wlHXnYgOUEiyV/w+XgarLN1gWyBHIt7o8P9ITFMpuoTMxzc0vcA4H?=
 =?us-ascii?Q?gLTscpwubSAMfeT4qUB9ziR4Q11Exob+vJKPO0Pk24zWcNpI2PyC8UKk6S6A?=
 =?us-ascii?Q?8WquycvnlYmLUdqQgg0lj9tUu7Rp6UrVSWGBprykHJgIS5XdtsghjiZBfPa4?=
 =?us-ascii?Q?eB5mL+5LyQrmhh5xiDUDGeUffZUtMzKXppMGBf7YD3699SffkCSQD3o+4tn6?=
 =?us-ascii?Q?KeIjTO6PAabVeykFFh5fA9Yv00D08oOj1W07qmZ/V3Un96/JXOIGnlVQ6XJz?=
 =?us-ascii?Q?p193ng1OpdCCTdkWPqwZ1gWlRVp8URN0RVxXbyYlO6wo4ClapTtE689mR6tF?=
 =?us-ascii?Q?PSdJEfGa1/wFCdWzz3Zp/ZquZvFEjyLjO5aib0cXoQvdcw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5456.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JK43XvyI7ZUF8/z4D7okjIPmauEVJqGQp0cOAMbRcT/0AF4p+9v3Sx69ClS1?=
 =?us-ascii?Q?YLJie7fCfiSh4tzV2ZTCyiB1gVilW1D690EfAvs7WDvmyKf4liDGZ5LSgS9y?=
 =?us-ascii?Q?fpYlXNuu2saHBqEKKc40+HcRg6toffrQlb4k7ehdnCCAbYSD7+SAdOOMOybs?=
 =?us-ascii?Q?OZLWn2ik6oHDlvmscBhY5BPT4le9EzPyZ+bJiLHfpaCbkaZOlBkv3rXL1l/4?=
 =?us-ascii?Q?TmzGyP4p3itw1JRGWzJc2la7dvnS5IRF1NGOAnhKRZk1EgA8pzoE1KhlIQJx?=
 =?us-ascii?Q?uXJ7PpZyz03r9GcTQHabX13QN60nnhe8GjksekzDI77v8hq86oUsl4flycqD?=
 =?us-ascii?Q?bfU4Ah2uJsHvzArMYJpa3s/RkYiNxyjAssuksbsIVdEzNzEApck7uTlkSsg1?=
 =?us-ascii?Q?rHS+8kDsFZBAjO/A21EG5bjjye/F3SlVASdyCXgjBnyiqWLgfO/Vm7WWGbt8?=
 =?us-ascii?Q?HG2viSAuFj4+KOlXM72ZeN1Cf1zCF68NLhqzIVZzn0MBaZtya0gDK1g1AkQ7?=
 =?us-ascii?Q?WQtKi9iRhUMfpVRwvbwvY+qVQPQYcxQInaE74jDXzweDtm7TxdimNyy/C70i?=
 =?us-ascii?Q?L0RaBQd+9J3NH00QZDG2igQJbb4EpeOhvs49X+5YKWNfOGq2spF1nvuRBrYv?=
 =?us-ascii?Q?7t6vgErtN2aaxBd6ydv9rSK53tqNpsWQ6WqbBtiQTgovds7cueloNkzqZe4T?=
 =?us-ascii?Q?X/TKQMzdpZNbu/Z4lMmz/DXUWZxZOzaOgEKH53mUXQ+RurWEAX5FMBOr7xcg?=
 =?us-ascii?Q?wGto20Gm8JkN0SKw2R6bdwDUVVVyAj2/Yv1fvNI96Zt1c+xweqqnVAPxwvy+?=
 =?us-ascii?Q?AG6ubAar6+dD+n/3I7d8SHKjbyhOmxmxEJ13xbG6OnL/7+NgYXyqnPhl3AAN?=
 =?us-ascii?Q?9QedgrE16tE5VE/28w14t33ESmVoOuSJgDYPxQwjorDCHFtU/XZdcT93JLS9?=
 =?us-ascii?Q?mA4wKVwrp9LXuPRpiCP/GgtOJcwOpDt50QoKZFx/IHwOAUhF+M29u4jWu+n4?=
 =?us-ascii?Q?5S670z5WbAHp81xuMzp6b2rBpsXuHq5pBYo1cPRK9q9nxzDpQsO+Z5rUH08r?=
 =?us-ascii?Q?ElmWgbKBgBFV/hlMvhuBcHuUZ6TJeuEpiMNivQmIjYM/i8XN5yE9r4alAQ6/?=
 =?us-ascii?Q?pT2YPrwCPTdFElvEXUGkIvWdzoyDeX2K0WOA+Wc1lSHHvWjrxCWkEV9icBLa?=
 =?us-ascii?Q?0q9J8Fp70/x4Tmri1NpvQnAzDBpTGeucOsb4g7BZ7uKdY1UhUi2SmG4ogTLX?=
 =?us-ascii?Q?iNxvhD450fIN7mJQmPcdinluas9W257K6wgRNLnYOs+2UvmcK5YyUkm6jjEi?=
 =?us-ascii?Q?ybOiSnsiFN5/ESm0CsLoG3RMfA9bu8COU0eCrZadATDYp1JyEEsos0KonNeh?=
 =?us-ascii?Q?aGgEySEgv512YUOUoDZyNEnQY7gwGZkE3cisGt6lnvZvJTQ5fHPeKcn6gaMt?=
 =?us-ascii?Q?l+p86FEuMn5kxpcfDBCcLHdL56VFxuzySYaptYD645bw7GRGCytX09R63fgI?=
 =?us-ascii?Q?NZasVz2uYlFbRCVEaiGskiJjI91lU+/a8XNxSrcmp4NrGjazE4grDmgesFiO?=
 =?us-ascii?Q?+GgYCeFwtiuxjyUOUPLCCo5pjvjmRwpuRTWeSEcADJK/yGtrk2LCF+2oGiwe?=
 =?us-ascii?Q?1dLay0jwZp66c1avfLLUImb0u6TMUG+zfxN65+X6P5Ih?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5456.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04c2472f-e6c9-4992-ac50-08dced362a87
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 16:26:47.7092 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3LaGKsBP1xT64xl1etzpGu1r39Kqjz8EMscpy+zBeEGnBh+7FMJTdFLENAP6ordQRzMDtQPN4ldlbtTeodbnCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8054
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

> On Fri, 11 Oct 2024,  Shuicheng Lin <shuicheng.lin@intel.com> wrote:
> > -----Original Message-----
> > From: Nikula, Jani <jani.nikula@intel.com>
> > Sent: Friday, October 11, 2024 1:28 AM
> > To: Lin, Shuicheng <shuicheng.lin@intel.com>;
> > intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Lin, Shuicheng <shuicheng.lin@intel.com>
> > Subject: Re: [PATCH] drm/i915/dp: Fix memory leak in
> > parse_lfp_panel_dtd()
> >
> > On Thu, 10 Oct 2024, Shuicheng Lin <shuicheng.lin@intel.com> wrote:
> > > The function parse_lfp_panel_dtd() is called when the driver
> > > attempts to initialize the eDP connector, and it allocates memory,
> > > which is recorded in panel->vbt.lfp_vbt_mode. However, since no eDP
> > > panel is connected, the driver fails at intel_edp_init_dpcd() and
> > > follows the failure path. Unfortunately, the allocated memory is not
> > > freed in this case.
> > >
> > > To fix this issue, free the memory in the failure path.
> > >
> > > leak info from kmemleak:
> > > "
> > > unreferenced object 0xffff8881252f8800 (size 128):
> > >   comm "systemd-udevd", pid 192, jiffies 4294896880
> > >   hex dump (first 32 bytes):
> > >     e8 fd 00 00 00 04 18 04 a0 04 40 05 00 00 00 03  ..........@.....
> > >     03 03 09 03 26 03 00 00 0a 00 00 00 00 00 00 00  ....&...........
> > >   backtrace (crc 7448f6b4):
> > >     [<ffffffff82475c9b>] kmemleak_alloc+0x4b/0x80
> > >     [<ffffffff814bb50e>] __kmalloc_cache_noprof+0x2be/0x390
> > >     [<ffffffffa069862c>] intel_bios_init_panel+0x1c4c/0x2720 [xe]
> > >     [<ffffffffa0699123>] intel_bios_init_panel_early+0x13/0x20 [xe]
> > >     [<ffffffffa06fceb9>] intel_dp_init_connector+0x2f9/0x1080 [xe]
> > >     [<ffffffffa06c370a>] intel_ddi_init+0xbba/0xf50 [xe]
> > >     [<ffffffffa069b906>] intel_bios_for_each_encoder+0x36/0x60 [xe]
> > >     [<ffffffffa06d7bd6>] intel_setup_outputs+0x206/0x450 [xe]
> > >     [<ffffffffa06dad33>] intel_display_driver_probe_nogem+0x163/0x1f0
> [xe]
> > >     [<ffffffffa0680fc7>] xe_display_init_noaccel+0x27/0x70 [xe]
> > >     [<ffffffffa05b30d6>] xe_device_probe+0x806/0x9a0 [xe]
> > >     [<ffffffffa0612f0f>] xe_pci_probe+0x31f/0x590 [xe]
> > >     [<ffffffff81b41718>] local_pci_probe+0x48/0xb0
> > >     [<ffffffff81b432c8>] pci_device_probe+0xc8/0x280
> > >     [<ffffffff81d5dde8>] really_probe+0xf8/0x390
> > >     [<ffffffff81d5e11a>] __driver_probe_device+0x8a/0x170 "
> > >
> > > Signed-off-by: Shuicheng Lin <shuicheng.lin@intel.com>
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> >
> > For future reference, the commit message and subject should indicate
> > this is v2, and what the changes were. See submitting-patches.rst.
> >
> > No need to resend for this.
>=20
> Thanks Jani for your guidance. I will follow the rules for my new patches=
.
>=20
> >
> > BR,
> > Jani.
> >
> >
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 90fa73575feb..7141e3ca0d83 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -6801,6 +6801,7 @@ static bool intel_edp_init_connector(struct
> > > intel_dp *intel_dp,
> > >
> > >  out_vdd_off:
> > >  	intel_pps_vdd_off_sync(intel_dp);
> > > +	intel_bios_fini_panel(&intel_connector->panel);
> > >
> > >  	return false;
> > >  }
> >
> > --
> > Jani Nikula, Intel

Hi all,
Could you please help me review the patch and let me know if there are any =
questions?
Thanks.

Shuicheng
=20

