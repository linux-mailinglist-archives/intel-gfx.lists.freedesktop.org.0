Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 620927F589C
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 07:49:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C150710E07A;
	Thu, 23 Nov 2023 06:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1F7410E07A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 06:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700722141; x=1732258141;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o1YvFns4f7p71VbO66FugCwL4mbFx9lKk8kAKvV8CVA=;
 b=mNlf8D6ZBFOalJbJPT/SpX/bJdX3VPkh30nFeyKurPZG0JpzBVBFpiwr
 Gd4YCp1ACde8v4gkWYCjQAltXl6VpaD5K85RqsqdKe5OKy3EGcVwVfYaA
 Zbb005Lp1gcJslG2Tees36ebOfaMZoyK3pRpsTnZxSmIYZyc6P2TSIpxz
 v7RJUuW51TVeyDLsNbu8LUxmrtt6YcigmVo5S84vah5qcqqoEoHKjt3a5
 2Nbw1HdHoYIaRKyf/ryXqyCc4NtgixKwv1enV9EUXlk3POFU4nZVTQdav
 NNZqeC8H4pb5/WMHH7Kvcb+Dyd+HUyK4vWtAmewdTO2MeeHVRMsNiaRoX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="423343608"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="423343608"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 22:49:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="15547243"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 22:49:01 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 22:49:00 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 22:49:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 22:49:00 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 22:49:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UR0108qmZCPoB0Y7nX0FBmFKrgBXxkg5q54eabenM+afhK0fMwpDwoQ4OpOOy1jpcZru16ui1ZkiExK9n8XZdnQ89JrUaUFl/OjRhxmmGqmjzbqf735e0MqrA+C4Q9HRWZ9u5Onri349Sg41ao41jfu/QmosHCWVi23Jzp1kbVPrTQ8vBGi2SAPFb4+vzyjKvK80DZ5h/ebNLDwxgKef9qJD3ENK5BgBoOmUlebhaY2ZgjUS62tft9ps38flFg4SY4/ZwVmZ6o5PBh9OGtvPKYRXbOuLdAEztAN907vUuDPJSG4bcaU+7wa55+8ehk/qKyxXHLzUZPkwG2kKmi7Tqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zqEVmU6VweoXkTXMhoFoaDAkq/SBW1sxoK8pB4MojaU=;
 b=NpgucVU8UsJFe6oH0/BwSPpfAN4TPVKi+Bxaz+WwxP2vzo8IsMWNcSktC0AXnvO2za2CZcPRz6foWSok+obOC+t4a2RYqFD/NcQ+b3PDR2K+cuqmv0u3IPwq1USk173D8cmhdjqkjeR3JPf2jmMA3VRAQ5UN9dWt0AslbNHpzvZGhEs4pfpDteWJ8E2ffuWOkmKMlvW51rXPI9Nmo3vlRNzn/0qeZ3MnPKfSQ66G6USn5UQQ+Ih+jFHNHiH+qAwU6tP72x/HpdSlo2iqorYrUKpVL10lieOvz5W9uv/QvAh3BkbMfv4zPGmZvP/1KB+M4F3k7b+cSmEAga2ZuRwbFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 BL3PR11MB5699.namprd11.prod.outlook.com (2603:10b6:208:33e::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.20; Thu, 23 Nov 2023 06:48:58 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7025.017; Thu, 23 Nov 2023
 06:48:58 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/mtl: Fix Wa_22016670082
Thread-Index: AQHaHdcQtAH1sE7uY0y4+2pcMkWtprCHdnXg
Date: Thu, 23 Nov 2023 06:48:58 +0000
Message-ID: <DM4PR11MB59711ABD41D1AD6C1104C9DC87B9A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231123063338.3354454-1-shekhar.chauhan@intel.com>
In-Reply-To: <20231123063338.3354454-1-shekhar.chauhan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|BL3PR11MB5699:EE_
x-ms-office365-filtering-correlation-id: 6f425608-eb73-4ef3-11ce-08dbebf044d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MEnJARyU3OYX/PUUJ/yuNN4dzq+wsMp7XjxKb3YEX7GBkjN4jB1Szbd92SsfDnuZAWaxwUoi0ir/CJ16Xhen+teNqFdaaBLu8tEfDH9AhJYy4bpvJY6KmpqtWu/M51mERBr165GI2/Lpor7LJMvcEd3TJfnWp4r1U7lPWoJGAzztMnWbhCIRKuqHWoHfer+Qf2SZM6N7bYuL3tE3FT//xZyOgZnWFJ27zAwZo2xldqrjxVxnIodOkvJEPRO03v9ugBBDFYoY33wcH80kxlbVtp6JeZKbesJojKvgPyhk3vd0/nOtZwDlL0kH+K/ueZKEJ3UN4Kl82mR5epHwZ8VD6svEjzhRfHzDos9NOJmuG+7S3jlait89W19FT0uisGkJuuX+VnJMvxPCAT3PHGPbiY0cdXXvFKfdDUsbjXOftrp+1avPCnLVFDkcRyvvYMyts06sDJg1fpKCV2ChwaO+mt+tusTodhimtFyNbOt8UcvtUT0xn4vutirfH45BQEwg5I4z4Dghre+CBgJI6/R5buD1IfKx6qelcatcbc2zDWVLl1nzsMyYMvtWtCJy1NDU9Ynm7Wm17eHgxTTgg0mA64VxqhRKMBJ/geVOhOtkSqc8zLZvcguBTPJenENhVhxb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(396003)(346002)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(55016003)(38070700009)(76116006)(66946007)(66556008)(110136005)(66476007)(66446008)(64756008)(38100700002)(122000001)(33656002)(86362001)(82960400001)(83380400001)(71200400001)(7696005)(26005)(9686003)(107886003)(53546011)(6506007)(2906002)(316002)(478600001)(5660300002)(8936002)(4326008)(8676002)(41300700001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IWbHcVHbu32jhxuUYNo/QQvZZ/E5GjQkkZxbkdLLysYB468Jvb4pE8/HzrFh?=
 =?us-ascii?Q?ltJkR1egWLVnWVlMU9y9PLS9phBZdPXIExHZQZCdLfCJYL0U40wn9QVowF7Q?=
 =?us-ascii?Q?wW4NPGOYzk874Q8TzrWOfLu9Ay7rFicK0oFtO9hdWah9R5p8yJAQMMmFhIR+?=
 =?us-ascii?Q?u5uIl4YiD9sOUT5RlupVyRzhGZT1wiCH6OHi+/7rOXzb7n7tkp0vtJ1jLjXp?=
 =?us-ascii?Q?1aJm1SXp+o53fwsRlPzeQWPO+mOg5QNr45AfKZdCV8inEZDNZnf5lIDvVCl1?=
 =?us-ascii?Q?bUE9HmdEubtnRXJw0CA3silNV1P+M6OQxQRUOzZ+xXWhttCnceXcdx5Afdtn?=
 =?us-ascii?Q?c5WtD062X3UtcHbEBHozlbIgUFpJhmxyAH1ITRDXH9XLgzI6Lg14Z+TtJmkd?=
 =?us-ascii?Q?/kOFusmOeIGYdyU6EKcEhL/3KGGpAl+4iJVNpuMZf1Q59ZkDulxhu02dAIeL?=
 =?us-ascii?Q?3AarXNFCCigDm6u3TVYGrEBp/FjVtg8LVgWYPPcAU0/mlLu26PCIwat+usq3?=
 =?us-ascii?Q?R0ZBGMw4xqojqCvT+WEPWGBXI3faMApTdOrIqwknu5UePzNs2/aF3QU7WrlL?=
 =?us-ascii?Q?T2JZoduINF4dwnWBFf5MJDK2vp3xZRJtqKpT85rLXKlHd5+A5l9xZDQgQGNL?=
 =?us-ascii?Q?UMmzDytENyyVm+JrKF2rG5yknKxRluQQ7cI/Ow2zoUYQh6aWQFjxjpTCLPzX?=
 =?us-ascii?Q?2jEDchNuzcJAqL08ZEgb6qF7GqqxGWTAugg6MLUW78/hYf5kdNsVG3KVTx39?=
 =?us-ascii?Q?X5LbY7PrfLkjzVa+PDTxV7RrRRkoxmfRd0+znwEKL4PewBiIl8p2xvuZdCp7?=
 =?us-ascii?Q?qdsiNQ5tDE+WqJLtTM9PVBpdao+WLGSJ1M8UOV4JvW3N8zYw9FvO6CSRUG+k?=
 =?us-ascii?Q?ddrk+MNhZQEKAKwgqu57C8ApjTK0YKvXYfPrEPKzaQEBDu6AIujoqGyBIQdt?=
 =?us-ascii?Q?7xyP7NX80kHjMJGurdoPp0sAVGueeqqv2DJjHhnTmVEG7y6hjqLe+2qmTT29?=
 =?us-ascii?Q?yCKT1X8iyXY8R++IFwiYPDoMrDq6BEPIJv70jq6CcpYYNrtsB5g5GteVhDBa?=
 =?us-ascii?Q?vStUW3BcW2yweqEIoPJrQkzMW3ziqHDUXNB/uvbT30iF0H42A6lAVGOFrtTL?=
 =?us-ascii?Q?+DMAqGsZpQLf5dVJjme0AR8WoqR8+TZ+kKsv96RQoTT1Y75dzNBhWz3JQ9PJ?=
 =?us-ascii?Q?y4p75jarcI5QJ932afIo5HlO+XHUvgcMsVvwLVnqPAcX2zJckzi3nnqYOvB5?=
 =?us-ascii?Q?3ta/bh/pkLLzAqe9EiRBBG+u5A5ccuDhdxYlhEm97DKkgs3L/J3wtGvG9+xY?=
 =?us-ascii?Q?kysM2ema4oT0ods2MNArVu7TQyp8Ag+k7Rk2AeAFptfjEX20MSbWWTmF7+/g?=
 =?us-ascii?Q?uExe66QJhxNoPgP8T96vvgLeU1kdRmF6+hDkjuHgXWYctxvOecKI7d9oORTG?=
 =?us-ascii?Q?lAlhQZjc+z8UHPTeywrwwDpeWm57MDwkHvLqNTcdZwmAuaCdvJztsj4lKTjB?=
 =?us-ascii?Q?77+Po9E78Z9pnbVErAfPGSSK5rhISzsJb7jiVNwtoqCOZyMx+8pWcuym91GY?=
 =?us-ascii?Q?CjuedN5nqX2Dl9+fk6FjEJ9ZI64Nh0qMyH3dLPa7Nj18vt6B/iZv0dqXZ7WA?=
 =?us-ascii?Q?cQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f425608-eb73-4ef3-11ce-08dbebf044d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 06:48:58.2528 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: poHf8imWtrCIqwOS78t8KJO30QGYBybxPjLmADrTz/uHzJNVXlb36O/3bJ2RAj8J83t3s3EQvwTYBi9ZQHuZSTXnBJPWNjY9RCpit2IejZk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5699
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mtl: Fix Wa_22016670082
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Chauhan, Shekhar <shekhar.chauhan@intel.com>
> Sent: Wednesday, November 22, 2023 10:34 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Sripada, Radhakrishna
> <radhakrishna.sripada@intel.com>; Chauhan, Shekhar
> <shekhar.chauhan@intel.com>
> Subject: [PATCH v3] drm/i915/mtl: Fix Wa_22016670082
>=20
> Wa_22016670082 is applicable on GT and Media.
> For GT, an MCR register is required instead of MMIO.
>=20
> v1: Introduce the fix.
> v2: Minor naming convention change and adding a TODO
> v3: Enhancing the TODO
>=20
LGTM,
Reviewed-by: Radhakrishna Sripada

> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
>  2 files changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 9de41703fae5..b2a245e3e77f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -529,7 +529,9 @@
>=20
>  #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
>=20
> +/* TODO: Evaluate MCR usage for both Media and GT instances of SQCNT1
> register. */
>  #define GEN12_SQCNT1				_MMIO(0x8718)
> +#define GEN12_GT_SQCNT1				MCR_REG(0x8718)
>  #define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
>  #define   GEN12_SQCNT1_OABPC			REG_BIT(29)
>  #define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 9bc0654efdc0..dbf0c6e536f1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1644,7 +1644,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, stru=
ct
> i915_wa_list *wal)
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>=20
>  	/* Wa_22016670082 */
> -	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> +	wa_mcr_write_or(wal, GEN12_GT_SQCNT1,
> GEN12_STRICT_RAR_ENABLE);
>=20
>  	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>  	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> --
> 2.34.1

