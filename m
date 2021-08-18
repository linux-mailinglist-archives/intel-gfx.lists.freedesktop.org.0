Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC4F3F06F9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 16:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D38B6E8FA;
	Wed, 18 Aug 2021 14:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9189A6E8FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 14:45:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="195916144"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="195916144"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 07:45:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="441893462"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 18 Aug 2021 07:45:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 18 Aug 2021 07:45:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 18 Aug 2021 07:45:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 18 Aug 2021 07:45:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mo9p7YdGOxbkUVATfK8uKxqz3UbaRcBRsmEJq/9CEN6/HJ5gJNBXSbm39GRwhMiAqOkx7q6cT3PREc/oxNJSWt7LAuWn/hwp7P/jXaAYwGwtEgvsEkBZ+fYioJ+RAGd3L5hIMBXo/6qsRtupPVkUJBbTNjIGuPEGy5dwYa21VUS+CCvPQFLvd1LDnFdU0qhf8AP0rK9+iPQ9PIqT2gLqOIyuM32rmR2+6Su66VQzCyhckZWFv5Dql5/538WCNvHGh66hKuglWjqbYyIlo9TwoH09g2o+lI5/VdSjDEZb6EVZ0rf8/InRPFk1fZ78XTIfMwXVG7L85cUs+IKpKt7KBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WfjqVoWLV+rISe7w4RcN3TWGh3JHtp2ecdMpYfD8m0o=;
 b=g68MIuuBMBB1sMYi9mKobzlBxkwb3quqHXdRnXIvrER0XdZJ86ivqyZ1adcbkf4DMzCrY2TM+JPcj3kH3kVvqTGCBbZRHkzLbuxmuUm+CfeHMIOkosbZkRZOAhuFt7JbFMoN56WDi9tqXZO8R1A6ICxj9TMsjBdCbc8J+OvKLAUAZoa+Rl3vsn7WkTvrEm7ZFUpLjt6rnw6rzvwjB2O3QkcjVN4e6d3QZh3szueR9G6S0NJ+EQ5+LceIJilO9DAb/PBDuJeY46pKxx5vXIdd+WtuUfPuoFYW6keOn7DKRhKBczz9SixiJG5Y2q8OHl1zJslfDFW9HzqjKlvApuWdFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WfjqVoWLV+rISe7w4RcN3TWGh3JHtp2ecdMpYfD8m0o=;
 b=b2ZJ8DZFrDixDbejxAiMSXvi7sSnKQxoowxLNETotWfZseuBooxMvh+/VuKsAjvkxCgEmzfVx7ZxnGOwlnqLdDbgs5Bxli33rc0pH5s4ZqA5rd79laIUpZ+HHk2McWgKfkZnArrnsvWimoUsbQUlLwAJG5hOyHLYWKrTv6Zt5ag=
Received: from SN6PR11MB3166.namprd11.prod.outlook.com (2603:10b6:805:c5::17)
 by SN6PR11MB3360.namprd11.prod.outlook.com (2603:10b6:805:c8::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.18; Wed, 18 Aug
 2021 14:45:56 +0000
Received: from SN6PR11MB3166.namprd11.prod.outlook.com
 ([fe80::2138:9c40:75e9:141a]) by SN6PR11MB3166.namprd11.prod.outlook.com
 ([fe80::2138:9c40:75e9:141a%3]) with mapi id 15.20.4415.024; Wed, 18 Aug 2021
 14:45:56 +0000
From: "S, Srinivasan" <srinivasan.s@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Siddiqui, Ayaz A"
 <ayaz.siddiqui@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Thread-Topic: [PATCH V2 2/5] drm/i915/gt: Use cmd_cctl override for platforms
 >= gen12
Thread-Index: AQHXklr9wH/H7cFjrEewHB4U4siwL6t2qKkAgAKcbxA=
Date: Wed, 18 Aug 2021 14:45:56 +0000
Message-ID: <SN6PR11MB3166A4DE6393CE8D1764408796FF9@SN6PR11MB3166.namprd11.prod.outlook.com>
References: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
 <20210816045229.423234-3-ayaz.siddiqui@intel.com>
 <20210816213552.GL1556418@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210816213552.GL1556418@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c7d35a7-2ea3-4066-00bc-08d96256e2eb
x-ms-traffictypediagnostic: SN6PR11MB3360:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3360EC56E862C146DC0E29AE96FF9@SN6PR11MB3360.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6dXJ0pUwrpaDO29nFGzfrl15d9S/MbzT9MilxmSFV6zMuA5LTcaiYdPO3wqpvjBJhDqt50OKvsK2rlQ3OudYslMgaqYGBh7F6u34QSM/4eKQ7La8XBOD0m2Jk38q++HVwXkczY70wKjQeXyF6qw1zaLKcyw6tsxAv+GnVEc5WNw/MQOUq6Bhhlw751KFZ7RQ5Sy12r18DVQuKpVgOv1hq3M6WNQR1ERzDOseZW2jonmNo679MpMV/0EpLYXN2FsH1gQ9ddJSzeiq3cdkQkGQeGREY/fMNvLOYbFHQpR69QHsdwxxw3UQCvQ5grDeNa3+qAsA965H94hbkj33Rqw2eC80ou5QZ19EnpUc+msS3SMfOwibPkfvy9MqAFFBuY8B2VgtiWybUguyAVNAnNlwkYv7g6DdEjDllGXAEYhA2CPe5PYvfUSf2ikDLKHUK17bosVH9pjqBsfZyiayFMrh+NWlqQLLprGyPrz1q7ITqynRdStCuUuPxgNZWpOHD9Azj8gVGNtPjpiphOK0mbFOTJvYYAEWmeVsGzu7P+w/m2BncLPM7pH4rvEd6xEKLDLq3xnQnZ3J3zSKv2iWgU+mnOHe1Qn3l9WsKeRsnhEdTKH3nN0Gws5iQ8qZbIaCq9DiS7UNhueot20vjJ7bRxmDm7skYkFMHEK2Exh4Qn43yOyu2pvTrfIeEl1dJRUeKDBp1KxNGkk8EZX3gxZIhSQ23l1PD+u0l5x7FNGqkXJGnTM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(66476007)(66446008)(8936002)(316002)(83380400001)(478600001)(5660300002)(8676002)(53546011)(38070700005)(6636002)(55236004)(26005)(52536014)(2906002)(71200400001)(4326008)(54906003)(122000001)(30864003)(66556008)(110136005)(64756008)(38100700002)(66946007)(76116006)(186003)(107886003)(7696005)(6506007)(9686003)(33656002)(55016002)(86362001)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FrEd25lsnZBA+BE85NIT2cFBLwXQ6DCDwf/cqbYsyuq96DjH4J+PN4VZ+4pa?=
 =?us-ascii?Q?Azj9OILMIP5lRnNMlN12azuLF/HCUjS/LSr1mckJ6udV6Ev83S/DiUMQR317?=
 =?us-ascii?Q?4pegSL3YcIAbG4nyeZDkyC/c+YWiW3R1qk+eUjOfH6sWM4JQzyRjm7DI8eaV?=
 =?us-ascii?Q?AO2nh3f5FWINid7ot6u1Xbyl9b5KiItCHQwsuBoWL8VJLRloPDRJ9rSKZMHw?=
 =?us-ascii?Q?J2YrtoPxytQgrJYQn3Ft0B7apdFYScIoB8ZnDKY9tXU3lpLG3OAcVuaRqi9E?=
 =?us-ascii?Q?jRctZzuV+GOGLvP2rJNmDEAIP0zn4zCUMeedTlgl6DRFGfkauet02hxuVK9B?=
 =?us-ascii?Q?zacaPpIuCyWL6CLDLdMF1FDEBOVu5ofu18Ial2bjvSyr1Xx7fP7XctrJjTnU?=
 =?us-ascii?Q?953VAcCpI1DwIh5ZSH1gwKTgAAz8tAti1uuYrfSgRJKFDZRce9y/AVU/i5h2?=
 =?us-ascii?Q?gNpn1oY9wqBiIpfknZ8T8sBcETq+E8KH0LP2k7mhJOkWgU8Wwp0oALNQwHNt?=
 =?us-ascii?Q?53kLZPcf5LhYfnQECY0vKhVYPtPOgxHzxA8Zhu7KgTDmZQHBXzIERkFtlHh6?=
 =?us-ascii?Q?jT+47+quajZxzr5XJj3S7jRek3HJ8MrAfOQHliYU/UZPGUVhcN6EhpuJUHPN?=
 =?us-ascii?Q?iM5A123hH3aq0SqVGa3kUSXoUxT+eKbxJCEByOhQs6Vh+CV4/IymFfF6s/f1?=
 =?us-ascii?Q?zPZatIorHS+GN5oyARji9WIkCmcq62+spGa1/mNusztG2/Gai6tsFmfRsEC9?=
 =?us-ascii?Q?qkc9wmNPKQyt1WTT0R79QKMPb6lCxaMNHHAyWZyTlZ7yWha62KjxvVbvCW9p?=
 =?us-ascii?Q?QWu88+6jlbZ90eKvXrpxo2CmzDKPYMJOydMte4OUCjLSrdJKZ3cF9aLr/h1q?=
 =?us-ascii?Q?J8a6RR5yx5dQDL42Bbns/eyKRxamHkZtc3RbvEKNlxgr7XbbeUyx3KJ0fUVN?=
 =?us-ascii?Q?zvEW4ZHCL5z7HCULLYXZK8NOQmqHEibZ1e1H8GoMSG4oG3PtVG+iuO0pcXCg?=
 =?us-ascii?Q?uh41X/WXtyooCFryQxYqRlq9iWEc3jpM2oRkwd1glX7Qx/dL4FpjshXkqQAz?=
 =?us-ascii?Q?rPATVkzjvKlu92Vx60Iy/Egt9pN9ttK0MLlFbPrImR5TE4FRT4Ek7V8N2r76?=
 =?us-ascii?Q?AHz2JHQH267S+KODQbPO2F3TuPf7B9AcTJ8DfuXIqdBkCRMDOr9kXXbgPeIl?=
 =?us-ascii?Q?E3CwEMdnVYIMC5M21yQL49JCUefjmZZVU9r00N2LJ9oi29GQS6hJ50eAgC6R?=
 =?us-ascii?Q?EDRjn7+sinOw0bAoh41xaZnZnMbQ9N6h4fk2x915yL29ZLRHxSnn4b2eA8aU?=
 =?us-ascii?Q?wAM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c7d35a7-2ea3-4066-00bc-08d96256e2eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 14:45:56.1638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zQJ7w/MP8UJUjYTFRFxVkZkgQCMM+EmHNUjSjLbF8kI5CrNMwtaD3b+ea87GFwaB8nhtP3vj7gcJgO6+wlnhQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3360
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2 2/5] drm/i915/gt: Use cmd_cctl override
 for platforms >= gen12
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



-----Original Message-----
From: Roper, Matthew D <matthew.d.roper@intel.com>=20
Sent: Tuesday, August 17, 2021 3:06 AM
To: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org; S, Srinivasan <srinivasan.s@intel.com>=
; Wilson, Chris P <chris.p.wilson@intel.com>
Subject: Re: [PATCH V2 2/5] drm/i915/gt: Use cmd_cctl override for platform=
s >=3D gen12

On Mon, Aug 16, 2021 at 10:22:26AM +0530, Ayaz A Siddiqui wrote:
> From: Srinivasan Shanmugam <srinivasan.s@intel.com>
>=20
> Program CMD_CCTL to use a mocs entry for uncached access.
> This controls memory accesses by CS as it reads instructions from the=20
> ring and batch buffers.
>=20
> v2: Added CMD_CCTL in guc_mmio_regset_init(), so that this register=20
> can restored after engine reset.
>=20
> Signed-off-by: Srinivasan Shanmugam <srinivasan.s@intel.com>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c       | 96 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/selftest_mocs.c    | 49 +++++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |  1 +
>  drivers/gpu/drm/i915/i915_reg.h            | 16 ++++
>  4 files changed, 162 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c=20
> b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 10cc508c1a4f6..92141cf6f9a79 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -25,6 +25,15 @@ struct drm_i915_mocs_table {
>  	u8 uc_index;
>  };
> =20
> +struct drm_i915_aux_table {

It's not clear to me exactly what the term "aux table" refers to here.
I guess it's just extra context registers (that aren't associated with a
workaround) that we want to initialize before the point where the default c=
ontext gets recorded?  Maybe calling it something like "ctx_init_table" wou=
ld make it more clear what these are for?

However a possibly simpler approach would just be to add these registers di=
rectly to the ctx workaround list with a comment noting that they're "fake"=
 workarounds and describing what they're for (we already have other similar=
 context programming for disabling fine-grained preemption, disabling neste=
d batchbuffer mode, etc.  The benefit of just tossing these on the workarou=
nd list is that the settings get automatically verified by the workaround c=
hecking that we already have without needing to code up new table managemen=
t, register readback, value verification, etc.

Thanks Matt for comments:

The aux table is the separate table, which can be easily dynamically expand=
ed (without disturbing any existing tables of mocs entries for legacy platf=
orms starting from >=3D gen12 onwards), for any new additions of mocs relat=
ed registers (like for ex: cmd_cctl) & for its debugging purposes & if requ=
ired for any other parameters in future easily expandable.

As this cmd_cctl register is kind of a new feature & it doesn't seems to be=
 workaround, where currently we are setting default mocs index value to Unc=
acheable -
(which had undefined behavior before programming - where HW team failed to =
fix this default index to Uncacheable in their hardware & requested for the=
 software driver team) which was meant only for the engines, due to which H=
W team was seeing some memory related issues, when command streamers where =
reading instructions from memory & executing.

Moreover, since this cmd_cctl was mocs related stuffs - I felt like, it's b=
etter to keep tidy & all mocs related stuffs inclined in one place ie., in =
intel_mocs.c, so that we don't go and search for mocs related stuffs in wor=
karounds file.

Though, currently we are only programming cmd_cctl to default uncached mocs=
 index in driver as per the hardware functional requirements. IMO, may be t=
his can be exposed to userspace (except the undefined behaviour)- to contro=
l for ex: cacheability & uncacheability behaviour - when command streamers =
are executing the instructions from memory.

And moreover, in the intel_workarounds.c file (as of now , we don't have an=
ything related to mocs related stuffs seen there till so far) - if we still=
 encounter, any mocs related stuffs in future, we can still move from "fake=
" workarounds to this aux table, so that we don't go and search in the work=
arounds file for mocs related stuffs.

Thanks,
Srinivasan S
> +	const char *name;
> +	i915_reg_t offset;
> +	u32 value;
> +	u32 readmask;
> +	bool skip_check;
> +	struct drm_i915_aux_table *next;
> +};
> +
>  /* Defines for the tables (XXX_MOCS_0 - XXX_MOCS_63) */
>  #define _LE_CACHEABILITY(value)	((value) << 0)
>  #define _LE_TGT_CACHE(value)	((value) << 2)
> @@ -336,6 +345,86 @@ static bool has_mocs(const struct drm_i915_private *=
i915)
>  	return !IS_DGFX(i915);
>  }
> =20
> +static struct drm_i915_aux_table *
> +add_aux_reg(struct drm_i915_aux_table *aux,
> +	    const char *name,
> +	    i915_reg_t offset,
> +	    u32 value,
> +	    u32 read,
> +	    bool skip_check)
> +
> +{
> +	struct drm_i915_aux_table *x;
> +
> +	x =3D kmalloc(sizeof(*x), GFP_ATOMIC);
> +	if (!x) {
> +		DRM_ERROR("Failed to allocate aux reg '%s'\n", name);

Generic DRM_ERROR() and such are deprecated now; we want to use the per-dev=
ice functions like drm_err() now.


Matt

> +		return aux;
> +	}
> +
> +	x->name =3D name;
> +	x->offset =3D offset;
> +	x->value =3D value;
> +	x->readmask =3D read;
> +	x->skip_check =3D skip_check;
> +
> +	x->next =3D aux;
> +	return x;
> +}
> +
> +static struct drm_i915_aux_table *
> +add_cmd_cctl_override(struct drm_i915_aux_table *aux, u8 idx) {
> +	return add_aux_reg(aux,
> +			   "CMD_CCTL",
> +			   RING_CMD_CCTL(0),
> +			   CMD_CCTL_MOCS_OVERRIDE(idx, idx),
> +			   CMD_CCTL_WRITE_OVERRIDE_MASK | CMD_CCTL_READ_OVERRIDE_MASK,
> +			   false);
> +}
> +
> +static const struct drm_i915_aux_table * build_aux_regs(const struct=20
> +intel_engine_cs *engine,
> +	       const struct drm_i915_mocs_table *mocs) {
> +	struct drm_i915_aux_table *aux =3D NULL;
> +
> +	if (GRAPHICS_VER(engine->i915) >=3D 12 &&
> +	    !drm_WARN_ONCE(&engine->i915->drm, !mocs->uc_index,
> +	    "Platform that should have UC index defined and does not\n")) {
> +		/*
> +		 * Index-0 does not operate as an uncached value as believed,
> +		 * but causes invalid write cycles. Steer CMD_CCTL to another
> +		 * uncached index.
> +		 */
> +		aux =3D add_cmd_cctl_override(aux, mocs->uc_index);
> +	}
> +
> +	return aux;
> +}
> +
> +static void
> +free_aux_regs(const struct drm_i915_aux_table *aux) {
> +	while (aux) {
> +		struct drm_i915_aux_table *next =3D aux->next;
> +
> +		kfree(aux);
> +		aux =3D next;
> +	}
> +}
> +
> +static void apply_aux_regs(struct intel_engine_cs *engine,
> +			   const struct drm_i915_aux_table *aux) {
> +	while (aux) {
> +		intel_uncore_write_fw(engine->uncore,
> +				      _MMIO(engine->mmio_base + i915_mmio_reg_offset(aux->offset)),
> +				      aux->value);
> +		aux =3D aux->next;
> +	}
> +}
> +
>  static unsigned int get_mocs_settings(const struct drm_i915_private *i91=
5,
>  				      struct drm_i915_mocs_table *table)  { @@ -347,10 +436,12 @@=20
> static unsigned int get_mocs_settings(const struct drm_i915_private *i915=
,
>  		table->size =3D ARRAY_SIZE(dg1_mocs_table);
>  		table->table =3D dg1_mocs_table;
>  		table->n_entries =3D GEN9_NUM_MOCS_ENTRIES;
> +		table->uc_index =3D 1;
>  	} else if (GRAPHICS_VER(i915) >=3D 12) {
>  		table->size  =3D ARRAY_SIZE(tgl_mocs_table);
>  		table->table =3D tgl_mocs_table;
>  		table->n_entries =3D GEN9_NUM_MOCS_ENTRIES;
> +		table->uc_index =3D 3;
>  	} else if (GRAPHICS_VER(i915) =3D=3D 11) {
>  		table->size  =3D ARRAY_SIZE(icl_mocs_table);
>  		table->table =3D icl_mocs_table;
> @@ -484,6 +575,7 @@ static void init_l3cc_table(struct intel_engine_cs=20
> *engine,
> =20
>  void intel_mocs_init_engine(struct intel_engine_cs *engine)  {
> +	const struct drm_i915_aux_table *aux;
>  	struct drm_i915_mocs_table table;
>  	unsigned int flags;
> =20
> @@ -500,6 +592,10 @@ void intel_mocs_init_engine(struct=20
> intel_engine_cs *engine)
> =20
>  	if (flags & HAS_RENDER_L3CC && engine->class =3D=3D RENDER_CLASS)
>  		init_l3cc_table(engine, &table);
> +
> +	aux =3D build_aux_regs(engine, &table);
> +	apply_aux_regs(engine, aux);
> +	free_aux_regs(aux);
>  }
> =20
>  static u32 global_mocs_offset(void)
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c=20
> b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index 13d25bf2a94aa..21fa0a1be28bd 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> @@ -155,6 +155,47 @@ static int read_l3cc_table(struct i915_request *rq,
>  	return read_regs(rq, addr, (table->n_entries + 1) / 2, offset);  }
> =20
> +static int read_aux_regs(struct i915_request *rq,
> +			 const struct drm_i915_aux_table *r,
> +			 u32 *offset)
> +{
> +	int err;
> +
> +	while (r) {
> +		err =3D read_regs(rq,
> +				rq->engine->mmio_base + i915_mmio_reg_offset(r->offset), 1,
> +				offset);
> +		if (err)
> +			return err;
> +
> +		r =3D r->next;
> +	}
> +
> +	return 0;
> +}
> +
> +static int check_aux_regs(struct intel_engine_cs *engine,
> +			  const struct drm_i915_aux_table *r,
> +			  u32 **vaddr)
> +{
> +	while (r) {
> +		u32 expect =3D r->value & r->readmask;
> +		u32 masked_value =3D **vaddr & r->readmask;
> +
> +		if (!r->skip_check && masked_value !=3D expect) {
> +			pr_err("%s: Invalid entry %s[%x]=3D0x%x, relevant bits were 0x%x vs e=
xpected 0x%x\n",
> +			       engine->name, r->name,
> +			       i915_mmio_reg_offset(r->offset), **vaddr,
> +			       masked_value, expect);
> +			return -EINVAL;
> +		}
> +		++*vaddr;
> +		r =3D r->next;
> +	}
> +
> +	return 0;
> +}
> +
>  static int check_mocs_table(struct intel_engine_cs *engine,
>  			    const struct drm_i915_mocs_table *table,
>  			    u32 **vaddr)
> @@ -216,6 +257,7 @@ static int check_mocs_engine(struct live_mocs *arg,
>  			     struct intel_context *ce)
>  {
>  	struct i915_vma *vma =3D arg->scratch;
> +	const struct drm_i915_aux_table *aux;
>  	struct i915_request *rq;
>  	u32 offset;
>  	u32 *vaddr;
> @@ -223,6 +265,8 @@ static int check_mocs_engine(struct live_mocs=20
> *arg,
> =20
>  	memset32(arg->vaddr, STACK_MAGIC, PAGE_SIZE / sizeof(u32));
> =20
> +	aux =3D build_aux_regs(ce->engine, &arg->table);
> +
>  	rq =3D intel_context_create_request(ce);
>  	if (IS_ERR(rq))
>  		return PTR_ERR(rq);
> @@ -239,6 +283,8 @@ static int check_mocs_engine(struct live_mocs *arg,
>  		err =3D read_mocs_table(rq, arg->mocs, &offset);
>  	if (!err && ce->engine->class =3D=3D RENDER_CLASS)
>  		err =3D read_l3cc_table(rq, arg->l3cc, &offset);
> +	if (!err)
> +		err =3D read_aux_regs(rq, aux, &offset);
>  	offset -=3D i915_ggtt_offset(vma);
>  	GEM_BUG_ON(offset > PAGE_SIZE);
> =20
> @@ -252,10 +298,13 @@ static int check_mocs_engine(struct live_mocs *arg,
>  		err =3D check_mocs_table(ce->engine, arg->mocs, &vaddr);
>  	if (!err && ce->engine->class =3D=3D RENDER_CLASS)
>  		err =3D check_l3cc_table(ce->engine, arg->l3cc, &vaddr);
> +	if (!err)
> +		err =3D check_aux_regs(ce->engine, aux, &vaddr);
>  	if (err)
>  		return err;
> =20
>  	GEM_BUG_ON(arg->vaddr + offset !=3D vaddr);
> +	free_aux_regs(aux);
>  	return 0;
>  }
> =20
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c=20
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 6926919bcac6b..99166c82912ca 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -254,6 +254,7 @@ static void guc_mmio_regset_init(struct temp_regset *=
regset,
>  	GUC_MMIO_REG_ADD(regset, RING_MODE_GEN7(base), true);
>  	GUC_MMIO_REG_ADD(regset, RING_HWS_PGA(base), false);
>  	GUC_MMIO_REG_ADD(regset, RING_IMR(base), false);
> +	GUC_MMIO_REG_ADD(regset, RING_CMD_CCTL(base), true);
> =20
>  	for (i =3D 0, wa =3D wal->list; i < wal->count; i++, wa++)
>  		GUC_MMIO_REG_ADD(regset, wa->reg, wa->masked_reg); diff --git=20
> a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h=20
> index 664970f2bc62a..c8e2ca1b20796 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2551,6 +2551,22 @@ static inline bool i915_mmio_reg_valid(i915_reg_t =
reg)
>  #define RING_HWS_PGA(base)	_MMIO((base) + 0x80)
>  #define RING_ID(base)		_MMIO((base) + 0x8c)
>  #define RING_HWS_PGA_GEN6(base)	_MMIO((base) + 0x2080)
> +
> +#define RING_CMD_CCTL(base)	_MMIO((base) + 0xc4)
> +/*
> + * CMD_CCTL read/write fields take a MOCS value and _not_ a table index.
> + * The lsb of each can be considered a separate enabling bit for encrypt=
ion.
> + * 6:0 =3D=3D default MOCS value for reads  =3D>  6:1 =3D=3D table index=
 for reads.
> + * 13:7 =3D=3D default MOCS value for writes =3D> 13:8 =3D=3D table inde=
x for writes.
> + * 15:14 =3D=3D Reserved =3D> 31:30 are set to 0.
> + */
> +#define CMD_CCTL_WRITE_OVERRIDE_MASK REG_GENMASK(13, 7) #define=20
> +CMD_CCTL_READ_OVERRIDE_MASK REG_GENMASK(6, 0)
> +#define CMD_CCTL_MOCS_OVERRIDE(write, read)					\
> +	_MASKED_FIELD(CMD_CCTL_WRITE_OVERRIDE_MASK | CMD_CCTL_READ_OVERRIDE_MAS=
K, \
> +		      REG_FIELD_PREP(CMD_CCTL_WRITE_OVERRIDE_MASK, (write) << 1) | \
> +		      REG_FIELD_PREP(CMD_CCTL_READ_OVERRIDE_MASK, (read) << 1))
> +
>  #define RING_RESET_CTL(base)	_MMIO((base) + 0xd0)
>  #define   RESET_CTL_CAT_ERROR	   REG_BIT(2)
>  #define   RESET_CTL_READY_TO_RESET REG_BIT(1)
> --
> 2.26.2
>=20

--=20
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
