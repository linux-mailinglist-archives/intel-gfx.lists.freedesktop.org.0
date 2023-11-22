Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CBF7F4F2E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 19:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE5310E0BC;
	Wed, 22 Nov 2023 18:20:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC7010E0BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 18:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700677202; x=1732213202;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zh17Xee8pDCCltIAvSNvNUM6sX1a7BfAB9363IDqEgo=;
 b=dVkCZMSamkXx8fJObHpRU07qjmaztb0m3Yyn2IYJTG5F+0lC9oR/EDH7
 XT2d2BQ2jr7SlmD2BWzHdGzcADJmWCF9o4VuZhTVq2m9ZdBrtQD+JRPPY
 OSY6OTLnjmITnQAHmdFLNrGjbKiQwnDsm9/AVOeIXsi1YxeW54zgqlx0F
 qM/Rq0vwk20hV6fvvjoyJLq8JAB4QVtFmdxYIR2jtm0CuH0zGA31Mp0Bw
 GoVsHxNi8G6MtX+T5TSN36CFSM3kKd3/2etAXyiVUHOn9PsCNcO0EJKp9
 Z7RGYvr9Gw1dKLABJw6t0E8OJtt+qDLlmfuVuPNcEEixmWjtqrjbLuFYC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="389275752"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="389275752"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 10:19:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="837529948"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="837529948"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 10:19:20 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 10:19:19 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 10:19:19 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 10:19:19 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 10:19:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hgyxbYO9rWvkr7D4+Sp6Sv44QxKRLhOdx9rpLxHoyOhYDM7yVc+EXDfMy8MOVvzrq6b3pDeshRjb+v5t/oqlO+Lr4Br4Zum02GpPfWAAJzS5JDvk4zTl2T7iHy8y2jugJh68duaJ2H3C+LQ0ikzRyCJXvmMXt9o3WoZFPO+LyInCmKQ0bt7rhrPkNmXdFGU6+4mmdGo6WejRgs1As9cdlDUpUj1GGBUdXm1R1LdmPEY9gnqh0oCHNEBux0fOFFRVvRwdvOY3jthwEUObXXM6N/BfLen89N+9bWoLS/XOdQnX3Z3zo98EXffoRWqI3lqtgdfosIwALUYs+28A5fpDgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C+H2SpeJ3tl+wXLQWV3y4Wbw2CWFxD1DFyJjsul+J3Q=;
 b=Pc2Pr1D1lq1GgCeNCssJz0+50bm3IPKAKslXIFrfe6rq09nlJIyTrPZKIQaT8kMIJUL0ZnInWWHHRI0YFuTBVp/HNz73rpH1JI6Ygv4MSM5yup8WVQYRRg1YWJUh22yGB+GxDD2Q+FRbMIc4ov8vKZdASVtfDCoL6XPbC0OJSgsRmaBotuYmrT/VGb8SVUPgCNZqNPlVkFiNDkKowVgJcoeS2ynRVFRNEN8q1wD2cd3k8EWMJyOK6C6h7mP3mzyw62SG03clFYrbGzc/JW4da7UyDVYi12hdqk7XH9qWavYkBnI7dV2KRpQ9wEQE07jUSTiUR0SwNyedvhz0i8b6Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 MW5PR11MB5932.namprd11.prod.outlook.com (2603:10b6:303:1a2::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.28; Wed, 22 Nov 2023 18:19:12 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7025.017; Wed, 22 Nov 2023
 18:19:12 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Fix Wa_22016670082
Thread-Index: AQHaHQGNGak+otIzV0CuOZ++uKFbZrCGiyew
Date: Wed, 22 Nov 2023 18:19:12 +0000
Message-ID: <DM4PR11MB5971F4B226A0F36D392737BC87BAA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231122050206.3249424-1-shekhar.chauhan@intel.com>
In-Reply-To: <20231122050206.3249424-1-shekhar.chauhan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|MW5PR11MB5932:EE_
x-ms-office365-filtering-correlation-id: a763b1ec-bceb-4848-eec4-08dbeb87874f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kX5fNVh+3Ug8R5/zCOhw64+7qAL1N3po3dD15X/sw34oj+NqyndCFcf0lG542IQoIYX/zIfEjURgN2j2rJzS5GabPV4Y5WFgm0Vms+85iomiZ3IxTvb8RZE+a8W0sSriXrRyXotQQtXjd6zf1luMOJ7qcCM0LxC0fL3J32II4OP+ANsv9rOBzUR5L6d5xHx/M/DDflsc7q5V8ZEVixc9Hx5cGb9axtAXjDDWvAJFfXdCmRjCpXUkxVMuAZcORXlgxHBZJ+aZPrXKYWhDE6UfyNU1hAF45UNUixn2VXmdjYHY8H0dfvr8+UD/PSj/B3n3WEF7zDoYPYFGju7Xk4qUiIhSMXfJs8dwPol8ASuE8dUqn+xCZWZxwFaMktbxsonN+cQocjtrt4UPPoDF8oO1DrxbT0fk+GfXyiot2sh2zzemklDbEd6VOyFKxirxBPl0mPzVZCVfW02kaX/j/xBf1/8EA0mEtG6D8L+uquJdOjoGcIg9tcQ0mn+gBDlYmtp6hGR4lvr0FJGDy5zHA5mt0uEYOZzkJy1GdbRb8ZrjgRGN5zmLHGk1LkteEi55MZjxGTmC3FM6NghSmhl1eiEXYAak7uuh0KwfOCs/Skj9ekdbWXru2Cq3EYkBh+uFb9On
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(346002)(396003)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(122000001)(55016003)(83380400001)(478600001)(7696005)(6506007)(9686003)(107886003)(26005)(82960400001)(53546011)(71200400001)(38100700002)(64756008)(66446008)(66946007)(316002)(66556008)(66476007)(76116006)(110136005)(86362001)(5660300002)(2906002)(38070700009)(33656002)(41300700001)(52536014)(8936002)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PFcvRqeks+66HHDMO+VIndImmzv+hlbq/9TYHVeX1np77F5zgeVDTb6KMdBt?=
 =?us-ascii?Q?QUJvnwidDiy6JzZaK/Og0AelQAGBYGG0SoqeLTtdA0Lap5ncXI+BY/FTHTOL?=
 =?us-ascii?Q?xmfB03hiBw+cfnrfLxZy3cISNuu/KLnKi5BVS3nPOdE7LpYmw1tFdAvEkcJ8?=
 =?us-ascii?Q?lKOSdUKo5FpDbp7IwdSgu59sBZTtVULsW7Aj8NXSRn7thIvR9qIbmQ5+EPif?=
 =?us-ascii?Q?1W9P5wS9I2fwBPqDxdOG4P7Aoj+1fyqFlPO9eIZ9NeUC4dbi74J3BfVmQfs6?=
 =?us-ascii?Q?xHB/KT+gWBEeJTfTED+z/F0vbzw+d9EDKl3Xn4CsGjL2j8dNvxSlkbGhQ2W/?=
 =?us-ascii?Q?O1uZrsY0B7lU2dsZAOHW6xPzWQahnQI4k6YWjfL0epavouGRtPuFVxkux86B?=
 =?us-ascii?Q?cjkPyjDbolkTaPgTg2UF+hr8CCcaAlhRi9SLsD+7xTBUed3+EVL68MePjeDG?=
 =?us-ascii?Q?TyLZIcmzNr81rBaxxs23Tq11JRSzL/rwcW7F4Q9YBOQ/AmUAzB8FtJz3Eqfm?=
 =?us-ascii?Q?w9O9RgdTa05taYp+pfD8y1Jsz49W7tgzoPrx6/BInJ8tOrp9DpxLpVgmxSZM?=
 =?us-ascii?Q?ifU8tMv+3tucM1GG2+AMT6e0/qQO/PXI3J+C4GClHTJc0548SeaN7F4hXJFS?=
 =?us-ascii?Q?/RjqI2AnB5EFxOkZgNmxEcU8aeViNYdYir03PHtR7vBFBTQzk+2JjwkSyykX?=
 =?us-ascii?Q?bWIARYrnfJCgIocBBDULKPk7jXUqVtRkcmU9sEYXAmoX2CyQXju0Sx5RFtP3?=
 =?us-ascii?Q?7yTR814OKrKBkQyfOhBiUlQNxY/3uFg4hyaQpLHDwcjD89ekjJ3xqjVz4hCu?=
 =?us-ascii?Q?w/RZJsDbQk2ZYF7+4l5lHT1rJ2QO9vSTHkXwV8w44IieG9zophVXHBACeb7B?=
 =?us-ascii?Q?rj3W9thSw5XTGrsqEm9pPGeE5YOiNkBi17GfmpLA6Yg4/OXxN1i3Kllx8mJP?=
 =?us-ascii?Q?aXQYJVFtisENM8ASw3o1XPdE83S9rRdZCYm091Xe4XIVPW5pnfrkCOhkFcQb?=
 =?us-ascii?Q?XSd+7IE2CPuzZUzJ/bkfQABCHe4D65CQK97HpVxoi1oM+shxrR7IM2N4NaeH?=
 =?us-ascii?Q?Ng/Ty6EWYREVBlNC4owS5sxPUvKzAwxKoJqkG/KC8YvUVWOeU+/9j/07xHU9?=
 =?us-ascii?Q?lFYEEoWws1t9gdABYAA4SCsDU0wwnyryx+g9vr+VpTNMzJdswPLnq0TH6ef8?=
 =?us-ascii?Q?ykFCNZ31Z41bVJ8AV6RLMhd30eTt+Aq1CusAMemwpYf/wvI9RVhiRQk0GgKx?=
 =?us-ascii?Q?xc3LSQK48KJRTqmkWoB21b0f9u1gkYUoGn8eJg9gqpIrusYQhzMngj9EnpGW?=
 =?us-ascii?Q?+rPkaX650rUlbi2bQhEC1IWVIv00X9g+xCxbeu9ufMiZn9nGlPE2LmKndOfJ?=
 =?us-ascii?Q?sCNa3AK+1zvUhCOvSOYL5JWqFq0ZpXXImHSeM042oOxNHdFcwvtYmCDMg5Q3?=
 =?us-ascii?Q?X9j9Dy8rKDYSipJjR76Nxz8+3JB5vGxA84Dk5DNoVg7m3ViHG0sMf/5X2Oat?=
 =?us-ascii?Q?w81qE244jyu8MHA1nOjL5Qr9WEl78DgurLNiCQaSr8e2D4FZ/sdgdjJivi+u?=
 =?us-ascii?Q?wKTj5htXrgJYEWlzoVXr0XaeHUH+AQQRORkqRKALxT+BHa3lKfwsnRUIb2vi?=
 =?us-ascii?Q?cw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a763b1ec-bceb-4848-eec4-08dbeb87874f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2023 18:19:12.6156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n1qA2096Tprc8Hek9NrvQYajEvlGKUDd6uifXfEBwyjT+mp/oVWo6SUqa+VRX6Q8RQuvqQWr9GwLjlSUR5C9Tqm+tndVmUIOEpt3zf5Ay8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5932
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix Wa_22016670082
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

Hi Shekhar,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Sh=
ekhar
> Chauhan
> Sent: Tuesday, November 21, 2023 9:02 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>
> Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Fix Wa_22016670082
>=20
> Wa_22016670082 is applicable on GT and Media.
> For GT, an MCR register is required instead of MMIO.
>=20
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 9de41703fae5..02d1d41fcfe1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -530,6 +530,7 @@
>  #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
>=20
>  #define GEN12_SQCNT1				_MMIO(0x8718)
> +#define SQCNT1					MCR_REG(0x8718)
SQCNT1 when defined stand alone, from a naming convention implies that this
register with its current form is applicable to all the platforms supported=
 by i915 driver,
which clearly is not the case. From a naming perspective, I would suggest t=
o use something
on the lines of GEN12_GT_SQCNT1 for the MCR_REG. GEN12_SQCNT1 definition ab=
ove
should eventually be changed to MTL_MEDIA_SQCNT1 and all the places current=
ly using
GEN12_SQCNT1 should use the appropriate register access api's.

Adding a TODO to the comment above will serve as a documentation for future=
 and will be
worthwhile to work on while this patch makes progress.

Regards,
Radhakrishna(RK) Sripada=20


>  #define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
>  #define   GEN12_SQCNT1_OABPC			REG_BIT(29)
>  #define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 9bc0654efdc0..34855e1ea1e6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1644,7 +1644,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, stru=
ct
> i915_wa_list *wal)
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>=20
>  	/* Wa_22016670082 */
> -	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> +	wa_mcr_write_or(wal, SQCNT1, GEN12_STRICT_RAR_ENABLE);
>=20
>  	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>  	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> --
> 2.34.1

