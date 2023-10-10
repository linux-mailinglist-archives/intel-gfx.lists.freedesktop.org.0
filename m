Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6577C04C3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 21:37:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851A310E3D6;
	Tue, 10 Oct 2023 19:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5423B10E3D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 19:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696966630; x=1728502630;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YNlcHOt8UX9fmQMQUCuqxrS2OewUbO5hE+/8vABOZcM=;
 b=hFBdCuZqBayNz3ih5gqypDvMgMZjLD+hvc6tIU4eBtdX6viCoWcki/B2
 4rVjayJnerRNlsil8U49+4Hh9RHs9vzYJ76oBxqgUGfy+jvr2r6+1/A0j
 a3W1C2zEopcluI0bQinNpLhI2feyiQqq4oxyGn56je+b6i3egcKZ6mFEV
 g4Qaq4kTZlJlWr94AuAk4XRO1uzh/9ISl6nn/nPZTLQzxq2OrSm07HsF7
 w4M3pKpYinFaupvcUjlchdX6HbwUlWEgI35mtW7htLj6fFXWr+gaZUajO
 vHEf/1z4DFZe/AEZOsobGwxO2PgTdzMmCRfbcyxhs0zW8TXmcxGozxUZI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384348307"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="384348307"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 12:37:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="730227388"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="730227388"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 12:37:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 12:37:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 12:37:08 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 12:37:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eepTF5ZMy9+PLH8/eoif8pNwCehTA6/v3jOLfhgK3sk8d2rro0XxOQaaC89N3vchvqwNjXu3aVtVZmQ8AqprfTN39cMmKQyX/htJ0PI+QQKBGbkFZ/s4LCDBfXXx6qcqd7QsM6k95qQQPI/PhEZvuJjp+xEhq7T3n7GqdE580fQFUdomm6Rq2c0GUhbHlP9NdkFksytCwrdUENHtWvgfRtYT9cw1OWmZDX23TzUGzFEuZLxPmLBc+AoCS0rrPM3wKik8BeFbjUxolz6P6AZEJQ9h4hrrCXB7o2lbpIHXoRGeth5r1/JjJdoe9+LX7RKP/FVlSPGJQD+zif5SR9rqwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dimSwDWGUFnMdxm9SZCJn0myL1k/JSTW37VwhQLS8Ug=;
 b=BlykqY+r9W4Txr4mZbOlUyVfDs+/P9srn9cUrcTZBQh9tX9d0GqF4xpGyXYPh9+6n1MU/hElSHe6UUwGH5RcfeDW8npG6Wiy3OW1vl6Og5X4UgHj0en9PBQor+MM6wwKObHB3JG+nKk821+BoLtsBayx0n+S4atnuj9qXDztiMXBaQHocWYlabc0M+hn/V9QWpiMTFHPqg1zRCUULDNqN08O89XR3rCnkRF218GNdD954e22mPHy2eHqjkcc3CaOEDYcRSvTVjeG4mURaQDCWQmg9WuTKwzpeEAhkoE4EIcJyvenVMi0DYYTKs6KPo5zc2qlX95gtigglsp90RyW1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by IA0PR11MB7212.namprd11.prod.outlook.com (2603:10b6:208:43e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 19:37:07 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::9de7:e579:f8d8:8329]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::9de7:e579:f8d8:8329%4]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 19:37:06 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH dii-client 2/2] drm/i915: Use selective tlb invalidations
 where supported
Thread-Index: AQHZ+6tX+VGnW9P/0kaHpRk8KIXnE7BDalfw
Date: Tue, 10 Oct 2023 19:37:06 +0000
Message-ID: <CH0PR11MB5444760447EC5FA4AD840D8AE5CDA@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20231010184423.2118908-1-jonathan.cavitt@intel.com>
 <20231010184423.2118908-4-jonathan.cavitt@intel.com>
In-Reply-To: <20231010184423.2118908-4-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|IA0PR11MB7212:EE_
x-ms-office365-filtering-correlation-id: b0581a3a-e68d-4493-f04c-08dbc9c84952
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k768mxMQvKYsOY17lfKrjgxtVJFjy7Ro4cRnKHemnENGsL9m6AnSgkRfDXjFaNaEnQcmZhvPYBtLsSNfUBkwltv+p+OCcoRZAK4oqUb6qqxlTTV2+9yL1oaxlFuX8xdcyxXpR/2kizfK99YrGqHaicl8IeGyq4GS06BkN7ZJLDyI5bdImn3LXzG7AXviM+HWPQPlwqNEW5d/RQJCC3yUN3TlYm+nGWEnDx/9DPl5JAU1VN+81IDAdeKyZswGuOV/PyNNCf3pC8csyiGLRZp10WJm8UCvIE9SA43wIPZ9nxxwkoSlwJcuUL4XuY5GHT46JQKvW0x5rBxQxhhjAQ9sRC6z/lCMUWY98ZtTHij0+aXafRKAN0B6UF6KuNwMoKLKsOBNbxn7umPpyYm7mbxeE7MdBfEEBi4AajB/lOb8maI8hGwmzaAutfKouaWmS2Sq/qeEB/3G1wsXB6OE+XMqW7aKD1X+YQRYIDd0Kubs3IMhG78YM/p2F+nkz6V+1NnIwoPXlFa0AHYQUqj3Ax9he6XDOBGFvSRhEbk7r9W6yap/D8zmceF1OC8Krcwpbe7tID9Zj2AT9VXlDV+tLVMJupCUJuPf8/0y0aNCbqj54Z01soVeoAlRFj9mqY0iqyjY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(346002)(396003)(376002)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(9686003)(53546011)(7696005)(478600001)(6506007)(71200400001)(8936002)(26005)(83380400001)(2906002)(66446008)(5660300002)(54906003)(66476007)(64756008)(66946007)(76116006)(66556008)(316002)(6916009)(4326008)(8676002)(41300700001)(52536014)(55016003)(33656002)(122000001)(82960400001)(38070700005)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+CPVwbXZovA+eJMus3DlVrMXsBT/DBRNE7Y4+rDI6AeMEvcaTlwSK+Gn8bXf?=
 =?us-ascii?Q?5RXYjvKQ72buiJYBLak4ETeTUhGJNHhN8AK7ArkzH+GQSCbGSPlIxJxjtN2V?=
 =?us-ascii?Q?7XjeY4dN5tJsW7iD8TgqheiWqPQbpqJ2/6biaDNBLImCx9WQN/ndxJFwdTuV?=
 =?us-ascii?Q?QuKwVwvMkI7GZr0dSIJLHjp1yhO+P0HiVMfiy0KP99zR3Um+DOBwIJk4uHiL?=
 =?us-ascii?Q?kMg79fQU/cYu56sBDrzTr4DYNpNZvmDPpe91qXVnvnUfUncFOkztnCjuGPnh?=
 =?us-ascii?Q?sYRy4vKmzQ+UhbI/A1Q+jf74ZnUVgvBX680/PRzPJfAUY22p6+DP/TaXvCZc?=
 =?us-ascii?Q?x8U3yfAQSgNCH53qj9yf9ujYjfTAakjVRT/5LC0CjbaSTXEDYj6pLjoz5soL?=
 =?us-ascii?Q?wcoIWzxm1XyDL24NJBiCknDtIqI9X6woVaOLPlVvuE760jbJ2M+91nEG//BE?=
 =?us-ascii?Q?uclnB9pSvwLGFSg9fbg0d2vlCddWdiGxwPED5Pg/M/jYmWg5A7WJ7GrH4sdN?=
 =?us-ascii?Q?8XwR73Lo5e1lQBSpm6WLdX/+WsH6WBHHzpI9rvBJy+FqFW48Ro5j99OFNYKy?=
 =?us-ascii?Q?jwN1PCDnk+OhR3AB066VuYObV1KpRfBlrpWdcqZhRHDHe91haw7DjAj1qMun?=
 =?us-ascii?Q?2vLtCknLPXlYqpn5kda/puKDVRw3G1oZvNvZWToYDFloCDx2fZlSsKOeOG+n?=
 =?us-ascii?Q?k6JAGbhu3Q9MuC5/wc4lOo7Stf9PEQIhW59wBgEuhcR8g0pNyAxYkO4ddKAB?=
 =?us-ascii?Q?MEFCTQtItojXEq3/33RtuKUBNA2ej5bgT6VEEmKc7esliKuMxzGVbWmkC1Va?=
 =?us-ascii?Q?qT0NYxC78PDuMC/6rf7Q0dY+2WcF7JBNeGoY1Du9YGBImyhtmGViMl2n9I2A?=
 =?us-ascii?Q?r/bLPjHfcfem8uGSg/NmLeRvkXXNHf75xn8Ht6WBkyjdt36PNR1TRj1CJQD4?=
 =?us-ascii?Q?Y/YXf7hwgtHj1XFYazFIGhyZR6JvEi6Aou+riYxJvxRd86MCQM0QuU4ckeP6?=
 =?us-ascii?Q?38mi09dI/jrVwvtDxDfSNd40P0b53t01XPAvZAAg4CeT+KFHh+hXiSNifhZu?=
 =?us-ascii?Q?aKweFvm3bAEnhFo7X+uxSKHkP91L/rM/4SA/m9nhKVh/ZDITuH2SdBL2PZWB?=
 =?us-ascii?Q?EdZbZmYmN9Cla9vZBNXMzA4H2B0KSLFeUtCc12SZ4IMSrlzV9M+xaIhZCiDV?=
 =?us-ascii?Q?ZecsHXdboeyZP1lwVpMXg0GZCoeHSvOOc5B/pBSaeyl5YL2u1UDWCDAvBLfo?=
 =?us-ascii?Q?g+7ifWUQMX5o0GhzGq5ajWXeZ+8s++mt3pKYVAKPWXJAGtWGUdDiUsMSgLhl?=
 =?us-ascii?Q?RR3JzjPVPDkpv9NfQvV81Y6hIIbdKK47p/EzTD6k2DxqVi14f8IekLKCvItp?=
 =?us-ascii?Q?P8klxNsV6PaVX+TWmytU+8W1v2NavuDw6mhU3bmoIyN9j7T2FQKKyeBClQwA?=
 =?us-ascii?Q?mLcLXG2FBX3yS233YKhy55ScTTGMbB89eyix1hDHfDVJQrH3aJ1cBSsP0SRz?=
 =?us-ascii?Q?bi8KU0BdhQOf7h4B55nCuh6kRnPnGz3Y4U8mQK3E6eL7CTiY5Yb1JrplPRLI?=
 =?us-ascii?Q?Lt4KApQ0AY0CJR3Mw4tOdekKKE/O/cEdvRDfgYwN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0581a3a-e68d-4493-f04c-08dbc9c84952
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 19:37:06.3447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TG1ROtCi1AVNrDfjfbDfbzoZ9RbucO52c1v/vJ1eXdf0FIqVV8TWAH52sO8msZ3SyvBTRx+ou7gM75Qwn5S/6S4RuzHiQIHHnoU+qlSf/2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7212
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 2/2] drm/i915: Use selective tlb
 invalidations where supported
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
Cc: "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ignore this.  It's not a security hole: it's just a temporary patch I was=20
using for rebasing purposes that got smuggled into this series
on accident.  It has a bad tag because of some stale gitconfig params
that I've since removed.
-Jonathan Cavitt

-----Original Message-----
From: Cavitt, Jonathan <jonathan.cavitt@intel.com>=20
Sent: Tuesday, October 10, 2023 11:44 AM
To: intel-gfx@lists.freedesktop.org
Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Cavitt, Jonathan <jonathan.=
cavitt@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>; Shyti, Andi <andi.sh=
yti@intel.com>; tvrtko.ursulin@linux.intel.com; Harrison, John C <john.c.ha=
rrison@intel.com>
Subject: [PATCH dii-client 2/2] drm/i915: Use selective tlb invalidations w=
here supported
>=20
> For platforms supporting selective tlb invalidations, we don't need to
> do a full tlb invalidation. Rather do a range based tlb invalidation for
> every unbind of purged vma belongs to an active vm.
>=20
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> Cc: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ppgtt.c |  2 +-
>  drivers/gpu/drm/i915/i915_vma.c       | 14 +++++++++-----
>  drivers/gpu/drm/i915/i915_vma.h       |  3 ++-
>  3 files changed, 12 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915=
/gt/intel_ppgtt.c
> index d07a4f97b9434..b43dae3cbd59f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
> @@ -211,7 +211,7 @@ void ppgtt_unbind_vma(struct i915_address_space *vm,
>  		return;
> =20
>  	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
> -	vma_invalidate_tlb(vm, vma_res->tlb);
> +	vma_invalidate_tlb(vm, vma_res->tlb, vma_res->start, vma_res->vma_size)=
;
>  }
> =20
>  static unsigned long pd_count(u64 size, int shift)
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_=
vma.c
> index d09aad34ba37f..cb05d794f0d0f 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1339,7 +1339,8 @@ I915_SELFTEST_EXPORT int i915_vma_get_pages(struct =
i915_vma *vma)
>  	return err;
>  }
> =20
> -void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb)
> +void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb
> +			u64 start, u64 size)
>  {
>  	struct intel_gt *gt;
>  	int id;
> @@ -1355,9 +1356,11 @@ void vma_invalidate_tlb(struct i915_address_space =
*vm, u32 *tlb)
>  	 * the most recent TLB invalidation seqno, and if we have not yet
>  	 * flushed the TLBs upon release, perform a full invalidation.
>  	 */
> -	for_each_gt(gt, vm->i915, id)
> -		WRITE_ONCE(tlb[id],
> -			   intel_gt_next_invalidate_tlb_full(gt));
> +	for_each_gt(gt, vm->i915, id) {
> +		if (!intel_gt_invalidate_tlb_range(gt, start, size))
> +			WRITE_ONCE(tlb[id],
> +				   intel_gt_next_invalidate_tlb_full(gt));
> +	}
>  }
> =20
>  static void __vma_put_pages(struct i915_vma *vma, unsigned int count)
> @@ -2041,7 +2044,8 @@ struct dma_fence *__i915_vma_evict(struct i915_vma =
*vma, bool async)
>  			dma_fence_put(unbind_fence);
>  			unbind_fence =3D NULL;
>  		}
> -		vma_invalidate_tlb(vma->vm, vma->obj->mm.tlb);
> +		vma_invalidate_tlb(vma->vm, vma->obj->mm.tlb,
> +				   vma->node.start, vma->size);
>  	}
> =20
>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_=
vma.h
> index e356dfb883d34..5a604aad55dfe 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -260,7 +260,8 @@ bool i915_vma_misplaced(const struct i915_vma *vma,
>  			u64 size, u64 alignment, u64 flags);
>  void __i915_vma_set_map_and_fenceable(struct i915_vma *vma);
>  void i915_vma_revoke_mmap(struct i915_vma *vma);
> -void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb);
> +void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb,
> +			u64 start, u64 size);
>  struct dma_fence *__i915_vma_evict(struct i915_vma *vma, bool async);
>  int __i915_vma_unbind(struct i915_vma *vma);
>  int __must_check i915_vma_unbind(struct i915_vma *vma);
> --=20
> 2.25.1
>=20
>=20
