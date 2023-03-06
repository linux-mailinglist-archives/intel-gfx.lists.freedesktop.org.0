Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B8E6AB85C
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 09:33:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 900F710E15D;
	Mon,  6 Mar 2023 08:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C18F10E0FA
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 08:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678091594; x=1709627594;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a/SkRro+KCcC5QtSy3hmAhWWbFrOQXMB7aVQ3Vc9vu4=;
 b=mR0blBAachSaZNIL+iIHGlClzRpaIsgf8GCJRJRyRhvE1STBA5dSIrLU
 nWXVBKvNf55c5s/O7zQqwWNQWqlpALDspNQ57ZHz1OlDMHKDjiJ6XiRBX
 nH6IHzfFnBzlgoaivhQerw1YLUv8aXSTHMM44/Ik9ogeWdGgdquJcdbeU
 XBXtZqK2HekX/XoVQ0CUuvt0dnogN2v0nhC72nC5+eT9Oq+72x4UdBxLW
 5Q9yEAn8KlqsXhVXKxRzr9AqhxjDrDEyqIkdknJL7SmfiOI2cjqf9B8x4
 i8Ha45gGVYjyPLrZ7zMGQ+s9tKDJ3mfcDtcnJTOI8UW0tntBagaXz/SXl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="335523184"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="335523184"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 00:33:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="819229433"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="819229433"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 06 Mar 2023 00:33:06 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 00:33:06 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 00:33:06 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 00:33:06 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 00:33:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8Swk2+F/xwAUPNrmqzrBDMuRAkG4yUZJR1p+OqlaeMRBJQDYXaLLtPzTjNXcZDfvduh3tQQx9BHHjWIb4edPM78hnXf0lfGDtN4kTLGFUh1J30pM+sFYCsjbk8t2g+8xtnU9TtTK7ESd9LbX7bnHOgIivOrs/WjnpUN+o9HitKNKVvTdO5qr340pUXmJna/sDHUQol6QGn23z9t9/FjFx7buCw23UZKg46S2ZwJdLZNL89JQhFsup6/suQcA5dHtZeAkn9BQsezlPOP7jZwDeJgzS4hnaQLpT+WqFrpgqjWPP39StsOiDupgcdInyRKfYyzvkUk30WUqDXArCSeSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Ywqbdl4itRlY4QG2SFa2vgkl6fQq4bn+CjjxvLVORA=;
 b=X0gvVHe+u+mZbCsqrA1UDvjLD/L2QgdFMODFxQh4iiGbkkik+z/XOjFkNBduQKj+SfBHh1Zc8JF1VL4b9vIi5Zse6fQEh4hxsY3I5zKquMjvm6E6f2V4bayWoI98cljmcYEHTiKrGCPZV1MKMxO7bxj38lL7UldykNFwjZVOY5rxO6NcJeg++BpslmIQHfPfoIxmDmsP6SJ8bL5zW3LmzCsWhKsTttNbK8yS6e3SiQ6G9PiI/orKWuy5Gk9B+yFBBg7vcji/KGFJyEPVGQRYRzy+OWtADrQLPOhRcX2LW60Tiga88h15Ag1vcVSQ3Dfjg93RHmkUihAh47Ym6Q3hig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by CY8PR11MB7134.namprd11.prod.outlook.com (2603:10b6:930:62::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 08:33:04 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3430:99a9:fa2b:9ccf]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3430:99a9:fa2b:9ccf%8]) with mapi id 15.20.6156.027; Mon, 6 Mar 2023
 08:33:04 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Extend Wa_14017073508 in suspend/resume
 flow
Thread-Index: AQHZTrSTKzjEHORvSE6Q1Nznzcf37a7tTJuA
Date: Mon, 6 Mar 2023 08:33:04 +0000
Message-ID: <CY5PR11MB6211CAA5EF431A7486E94BF495B69@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230304161749.1420224-1-badal.nilawar@intel.com>
In-Reply-To: <20230304161749.1420224-1-badal.nilawar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|CY8PR11MB7134:EE_
x-ms-office365-filtering-correlation-id: e962edc9-ad96-423e-7dc3-08db1e1d6788
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MyxEtl2skWrjjWGXZLLg55vAntZoI/fGGt2P0NfBZFyZThmP8wEzN+XkJqSL6by8pmao4xHw7QdO5HQBdv8j7R1iW/jUWo8kwNZEE7VLR3+6HeMUU07VVgOaZ8SHN9rg6i24qbcesvipQHezCUYdDfMV1IcgXZ8AL/AVQJE/cNkiWwUJCXig204wxIRA4nNskLTo12xdBkEXWiX2Dd2vRCYlSHvPeiLj4h+hV9y/vdCxkrKEbjQmUIx7cj9GhskI55W/jFbGNhFtX8IC++YhzNckfV12+EuNl8E9dU/LA45+wopIwkRea1gzKu2HRMjVPQ/NAzAc5BK8KHKr2EdlGOJ9OzZyXAFIROR06TKd1aO2O3oWGnFVLxdODhp8y5aguSuEUnQ5AkCoCRepglL3VMiczu/korjcnEkXs1epn2Yu52//7JHbrQJHVeDdfdtbpScUo2cglJJwFzAVAg+JyXt9R55fuAicVxoKOJsiJ0KZeukE271yBYa215NrtU5Et8lNUlvV5eKND9ocs7n8a+ArBEmaxPj7T9gjvrl/prKl4X1GxNJG9nYbjk9HUuhEi5AN29yyJNvLWkyYhygRnAleEerowImEh1/GbNNA5GKvSrQdqooSE6/zZlF2/yGFQL6Mw9LDEizr0TL6Yd+9XurBjlOUJyw6EkVFSVjmqyPNPaJiVqKtP7AlMMGPhkW9H/3050OJcMtoTtgPJS0vjA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(396003)(136003)(366004)(39860400002)(451199018)(5660300002)(8936002)(52536014)(76116006)(66476007)(66446008)(66946007)(66556008)(2906002)(15650500001)(8676002)(64756008)(4326008)(54906003)(110136005)(316002)(478600001)(7696005)(71200400001)(107886003)(6506007)(53546011)(55236004)(26005)(41300700001)(55016003)(122000001)(33656002)(86362001)(82960400001)(83380400001)(38070700005)(186003)(38100700002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?68O4bUPaJrSuI3uC9VmqpNPP+4R0TLmizxWE/dFLQrVe0LXOL3gSiGVmh0Ll?=
 =?us-ascii?Q?hHgFcQtIU/Yg8KLSDMQPZKAY6OCmOK8LsuecfPtmWwTI4VoknwbTVyaXKcoe?=
 =?us-ascii?Q?6BrUJUdMz6zMeiUByVluPz5mnKoK+IteybJpn/V/XNgoOFHDDr4mSPsBavUE?=
 =?us-ascii?Q?4Bu1ZYd8opvV/LamsuQG/USBJSzjWuatpMB89eG0pMP5hOxbtWJTayIaEVw5?=
 =?us-ascii?Q?D0aoyHc/WxzjwEEnuUxOl6+PM0d46ZRyrj/EolX/IkMiKZ3LgjetzirTvKU4?=
 =?us-ascii?Q?BpYBEd6yqSG/NFOT86Vkh/Th5Ta6vNleGuJ9f1VnD3EIHhgsXgFMSgSaZQkg?=
 =?us-ascii?Q?3gEV+NwaZ5IHwl+UmzKSeLqzGCXsA33NuUtL8+Vn/t4D1peuDG4mUunX1bfH?=
 =?us-ascii?Q?h95Nyo4PuC49R9QsH27rjs66AJzkdirZUKwcTQ1cLRz5wROZK4kL6PEABkqw?=
 =?us-ascii?Q?bpTEsiCIw/aPDlzuaJFqbkLmsm9gLIIvRJUmQZEbPs5au871S02esoUkvPxi?=
 =?us-ascii?Q?NeEVi/fN41DAfV+D0KS21h4tTTk/pxwDAdE7U7oN51cGGv/T4DxrtVzEER0f?=
 =?us-ascii?Q?migUhBzXNrDLvTxAMkpDhxXiv7an7WGRIFxhNORXsjSU0OQaaAoYisxGD+nf?=
 =?us-ascii?Q?6bscGtBaS9raWYbqTonWw74FgupSZLW2i6vrkRw6LUkrasOpBKo5crpK8f8k?=
 =?us-ascii?Q?5rkYzPWBV1PaQzKkOoAj5kLs4ixqBCeLjOZ6dN6OEiraGZUYmKexPV/P9Kc5?=
 =?us-ascii?Q?Ngc5S1kHEi6xaoC4q5L3w4+D9s6rZCGg5kNIIb2Rn5l72WjO8wxEAuJMAilb?=
 =?us-ascii?Q?dWSBrv729rpEWdFw4zIZdBSuBXA6OmKQsUzDRjUmVlxSapQ36+R8gK4T4zgN?=
 =?us-ascii?Q?S6QG6gQaq/js6lbdDaKxs5vdhvkb5hSdiwtKTYQF4NOSpcOaOrA2wugTF2jR?=
 =?us-ascii?Q?ucg4dCaRK5+cC+zJyayWCBeRzor7C68IaSFcCVHA9NmozwcbJ89o7fWQ8d60?=
 =?us-ascii?Q?Wjgg5qndNoCEfTmiqOMk7EmsYyF548PXZYt/c1+iTnWjgcGUP2f9y81htpeY?=
 =?us-ascii?Q?hN781HsuahXBaop23TDq27DRv9jSP9mr0sErydgax1iCJR0ypcAxNJdb2EYP?=
 =?us-ascii?Q?3ydI9i/dIAXPatCOiTZq4eg6+4D6RPKHLv3wWOM0i/HzvlE12oYyF9s6AuR1?=
 =?us-ascii?Q?XyK7lQfhdR+654uAZgDsVt73FUcbZt6CQFWGh0iRq5v55kSuQfxDJKl344bP?=
 =?us-ascii?Q?8lasnahQbc0KfU7xTB597Qugs7PykW15lYaPEhgxnXv2nPkCXsyJTSyTf0Ad?=
 =?us-ascii?Q?OBprF/Xyz73Xwj8ONBp6W6BgD8Re6aZnBZhTB5ZnhFL1ZGCQLSMCnYw7yBn/?=
 =?us-ascii?Q?2va/ua21I5Pguv9cN42D/FsQPXdPaWmleRiO8Phzx4mLBT8n3Z4ye/u8wfpA?=
 =?us-ascii?Q?3Edv4P1OMYeHbsCqdtrJh0ZWaQQaVknon8UYeMfMUrT0aO7N5m68FrpSoXkY?=
 =?us-ascii?Q?XDdYN6/43THpZVatzGrP2emKDK6WrWdSJvuzDj5uWSU4g7UJBRkD5Yt6itFT?=
 =?us-ascii?Q?YY2kJJVj4mkHk/sX3HxBE9wxS02H4F2Dj81hQvX6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e962edc9-ad96-423e-7dc3-08db1e1d6788
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 08:33:04.2627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 44hJfKGiE49xZ3pCLUgRg+s6bpRrks07nXDlXtQoQx3W5wTPA8YaBG/npfKq1/MGV6QI0d/2wNLUeB+B2BgHv2DVzXHL5jUXC/vHpwAOXpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7134
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Extend Wa_14017073508 in
 suspend/resume flow
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nilawar, Badal <badal.nilawar@intel.com>
> Sent: Saturday, March 4, 2023 9:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Ewins, Jon
> <jon.ewins@intel.com>; Belgaumkar, Vinay <vinay.belgaumkar@intel.com>;
> Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: [PATCH] drm/i915/mtl: Extend Wa_14017073508 in suspend/resume
> flow
>=20
> During suspend resume flow it was seen that lots forcewakes are taken and
> released for media. So to avoid HANG due to MC6 entry/exit while accessin=
g
> media applied Wa_14017073508 in suspend/resume flow.
We need to fix such gaps in runtime PM as well, but that will make this WA =
dirty somewhat similar to other RC6 related WA on other platforms.=20
I suggest to disable the MC6 rather on A step rather than having this form =
of WA. This WA is not needed on A step.
@rodrigo and @matt what is you opinion here ?

However some comment her to improve this patch.

>=20
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_pm.c   |  6 ++++-
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c    | 32 ++++++++++++++++--------
>  drivers/gpu/drm/i915/gt/intel_gt_pm.h    |  3 +++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h |  1 +
>  drivers/gpu/drm/i915/i915_driver.c       | 32 ++++++++++++++++++++++++
>  5 files changed, 62 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> index 0d812f4d787d..60deac41104d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> @@ -160,8 +160,12 @@ void i915_gem_suspend_late(struct
> drm_i915_private *i915)
>  	 * machine in an unusable condition.
>  	 */
>=20
> -	for_each_gt(gt, i915, i)
> +	for_each_gt(gt, i915, i) {
> +		/* Wa_14017073508: mtl */
> +		mtl_media_busy(gt);
Let's add  these busy/idle in intel_gt_suspend_late()
>  		intel_gt_suspend_late(gt);
> +		mtl_media_idle(gt);
> +	}
>=20
>  	spin_lock_irqsave(&i915->mm.obj_lock, flags);
>  	for (phase =3D phases; *phase; phase++) { diff --git
> a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index cef3d6f5c34e..1f3bf1cf0421 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -26,24 +26,34 @@
>=20
>  #define I915_GT_SUSPEND_IDLE_TIMEOUT (HZ / 2)
>=20
> -static void mtl_media_busy(struct intel_gt *gt)
> +void mtl_media_busy(struct intel_gt *gt)
>  {
>  	/* Wa_14017073508: mtl */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> +	if (gt && IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)
> &&
>  	    gt->type =3D=3D GT_MEDIA)
Let's have this in a separate patch , I believe that is already floated and=
 ready to merge.=20
> -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> -				  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
> -
> PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> +		if (!atomic_inc_not_zero(&gt->media_wakeref)) {
> +			drm_err(&gt->i915->drm, "Media busy\n");
This should not be Error message.
> +			snb_pcode_write_p(gt->uncore,
> PCODE_MBOX_GT_STATE,
> +
> PCODE_MBOX_GT_STATE_MEDIA_BUSY,
> +
> PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> +			atomic_inc(&gt->media_wakeref);
> +		}
>  }
>=20
> -static void mtl_media_idle(struct intel_gt *gt)
> +void mtl_media_idle(struct intel_gt *gt)
>  {
>  	/* Wa_14017073508: mtl */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> -	    gt->type =3D=3D GT_MEDIA)
> -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> -
> PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
> -
> PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> +	if (gt && IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)
> &&
> +	    gt->type =3D=3D GT_MEDIA) {
> +		WARN_ON(atomic_read(&gt->media_wakeref) <=3D 0);
> +		if (!atomic_add_unless(&gt->media_wakeref, -1, 1)) {
> +			drm_err(&gt->i915->drm, "Media idle\n");
Same here this can't be error message.
Thanks,
Anshuman Gupta.
> +			snb_pcode_write_p(gt->uncore,
> PCODE_MBOX_GT_STATE,
> +
> PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
> +
> PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> +			atomic_dec(&gt->media_wakeref);
> +		}
> +	}
>  }
>=20
>  static void user_forcewake(struct intel_gt *gt, bool suspend) diff --git
> a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> index 6c9a46452364..43ffabf9babe 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
> @@ -89,4 +89,7 @@ static inline bool is_mock_gt(const struct intel_gt *gt=
)
>  	return I915_SELFTEST_ONLY(gt->awake =3D=3D -ENODEV);  }
>=20
> +void mtl_media_busy(struct intel_gt *gt); void mtl_media_idle(struct
> +intel_gt *gt);
> +
>  #endif /* INTEL_GT_PM_H */
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index f08c2556aa25..321ccfef4028 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -145,6 +145,7 @@ struct intel_gt {
>=20
>  	struct intel_wakeref wakeref;
>  	atomic_t user_wakeref;
> +	atomic_t media_wakeref;
>=20
>  	struct list_head closed_vma;
>  	spinlock_t closed_lock; /* guards the list of closed_vma */ diff --git
> a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 8bc76dede332..c7625ea28022 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -327,6 +327,8 @@ static int i915_driver_mmio_probe(struct
> drm_i915_private *dev_priv)
>  	intel_gmch_bar_setup(dev_priv);
>  	intel_device_info_runtime_init(dev_priv);
>=20
> +	/* Wa_14017073508: mtl */
> +	mtl_media_busy(dev_priv->media_gt);
>  	for_each_gt(gt, dev_priv, i) {
>  		ret =3D intel_gt_init_mmio(gt);
>  		if (ret)
> @@ -335,10 +337,14 @@ static int i915_driver_mmio_probe(struct
> drm_i915_private *dev_priv)
>=20
>  	/* As early as possible, scrub existing GPU state before clobbering */
>  	sanitize_gpu(dev_priv);
> +	/* Wa_14017073508: mtl */
> +	mtl_media_idle(dev_priv->media_gt);
>=20
>  	return 0;
>=20
>  err_uncore:
> +	/* Wa_14017073508: mtl */
> +	mtl_media_idle(dev_priv->media_gt);
>  	intel_gmch_bar_teardown(dev_priv);
>=20
>  	return ret;
> @@ -781,6 +787,12 @@ int i915_driver_probe(struct pci_dev *pdev, const
> struct pci_device_id *ent)
>  	if (ret < 0)
>  		goto out_tiles_cleanup;
>=20
> +	/* Wa_14017073508: mtl */
> +	if (i915->media_gt) {
> +		atomic_set(&i915->media_gt->media_wakeref, 0);
> +		mtl_media_busy(i915->media_gt);
> +	}
> +
>  	ret =3D i915_driver_hw_probe(i915);
>  	if (ret < 0)
>  		goto out_cleanup_mmio;
> @@ -838,6 +850,8 @@ int i915_driver_probe(struct pci_dev *pdev, const
> struct pci_device_id *ent)
>  	i915_gem_drain_freed_objects(i915);
>  	i915_ggtt_driver_late_release(i915);
>  out_cleanup_mmio:
> +	/* Wa_14017073508: mtl */
> +	mtl_media_idle(i915->media_gt);
>  	i915_driver_mmio_release(i915);
>  out_tiles_cleanup:
>  	intel_gt_release_all(i915);
> @@ -1063,6 +1077,9 @@ static int i915_drm_suspend(struct drm_device
> *dev)
>=20
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>=20
> +	/* Wa_14017073508: mtl */
> +	mtl_media_busy(dev_priv->media_gt);
> +
>  	/* We do a lot of poking in a lot of registers, make sure they work
>  	 * properly. */
>  	intel_power_domains_disable(dev_priv);
> @@ -1097,6 +1114,9 @@ static int i915_drm_suspend(struct drm_device
> *dev)
>=20
>  	intel_dmc_suspend(dev_priv);
>=20
> +	/* Wa_14017073508: mtl */
> +	mtl_media_busy(dev_priv->media_gt);
> +
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>=20
>  	i915_gem_drain_freed_objects(dev_priv);
> @@ -1197,6 +1217,9 @@ static int i915_drm_resume(struct drm_device
> *dev)
>=20
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>=20
> +	/* Wa_14017073508: mtl */
> +	mtl_media_busy(dev_priv->media_gt);
> +
>  	ret =3D i915_pcode_init(dev_priv);
>  	if (ret)
>  		return ret;
> @@ -1260,6 +1283,9 @@ static int i915_drm_resume(struct drm_device
> *dev)
>=20
>  	intel_gvt_resume(dev_priv);
>=20
> +	/* Wa_14017073508: mtl */
> +	mtl_media_idle(dev_priv->media_gt);
> +
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>=20
>  	return 0;
> @@ -1319,6 +1345,9 @@ static int i915_drm_resume_early(struct
> drm_device *dev)
>=20
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>=20
> +	/* Wa_14017073508: mtl */
> +	mtl_media_busy(dev_priv->media_gt);
> +
>  	ret =3D vlv_resume_prepare(dev_priv, false);
>  	if (ret)
>  		drm_err(&dev_priv->drm,
> @@ -1333,6 +1362,9 @@ static int i915_drm_resume_early(struct
> drm_device *dev)
>=20
>  	intel_power_domains_resume(dev_priv);
>=20
> +	/* Wa_14017073508: mtl */
> +	mtl_media_idle(dev_priv->media_gt);
> +
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>=20
>  	return ret;
> --
> 2.25.1

