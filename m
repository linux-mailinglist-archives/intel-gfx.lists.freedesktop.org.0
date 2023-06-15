Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA443732076
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 21:44:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 343A210E532;
	Thu, 15 Jun 2023 19:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3ADE10E532
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 19:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686858256; x=1718394256;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wor6vg+zm1gLQkD4zBJo+1tMrMHIQ3Tw73Vh6E1KnhU=;
 b=L7BPbuUoV4Ph4+QZ8XhJCGlQY9dIOWEAlogdrFA7MxkwaCRvSiJDCkh0
 DC8iRZG1s9RqRUucTd8Pvx2vNG7BvhsRv/8dDnPdOpM39CdvGGXnutv1X
 55k/Gf3hEwUkCMc1HYl9KuspBg4g+pweevNbaEU3EUUaeSI0WO/EBforU
 TZHcUERGmdO0Ibc3PGx8C71glmdTp4bYaMzYwCkWElOlTVXU5mS1eWomV
 c/jH5F1idY8kXM1ijtfNixtVM7hrsBfTjfMBEA3ut3no7Equ6l4RzUYgo
 f3/7bEQrcl4/TSWOfHFNPdUhPWnVUTTMV2IvLdIpZp2Zqh3Oz3d4aNL2S A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="445401707"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="445401707"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 12:42:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="777869287"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="777869287"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 15 Jun 2023 12:42:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 12:42:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 12:42:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 12:42:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HuyJMKGJEICsCMrzDMveCOAymLPpy5+D/jCKWtbatoR8DC+3fDUqcbjJ0qgm7mCDF03adxqOhcS/6qigZNnZInUvrlaAhC2rawqf6HWJ+AmI1jRqZIx0APJhS6Zzx/nTWi2TH9p4bBIfpnA/am/MRDUg3WiicgIKQhya5h3CQYjP16OrqtlZFxjEKgYHdKMgkQjZA4X/Fk2kp9LVK9b9kFeM2YzII+KsUtEre1qGvEzgVtqqagwPzfmuDN0G4vROenqHODI//2t/rKfxwsKO26uCExg7SSf6TD8D5Lz3fg77bp78DQbPIJHR8xEyZYzQPtuoKqVtkUx4DS9/gPM0sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ynIGlx6LfX1wymNAbJ6omuxCnbZKbApSrTKKTkQvmA=;
 b=FqlGUoJb9WYiZqnKDDygt5FOJgv9sTXdOj0n3YtNsLxLn2gXJ1L1u/I/KTqX4ouCp0gWmKXrDv2EH9RHPeB3f2sCLu8fdaD0Uajs2N2bR/24h5RwsSBhqDDjUpP8Hx66ysxXay/9ZHCs+g18OteMdQuE+cAdS+4caM8bncj79ZHtQQZyF/Esac6omi84Z6SLAO8YgishzEbK2IMfCUkAxS5UWy0invwUrDyPh5CBBSQMFJtfn/hTVYA9rtDrGFVl3iKiSaKYb9WuoW8Me/1tl9+9/MAT8GbbNqaGboJuhyrckQC5+WSgfZ1DMMH+Vz9HZu9cy1hllFnI61+FjUsEDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by SJ0PR11MB6624.namprd11.prod.outlook.com (2603:10b6:a03:47a::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.27; Thu, 15 Jun
 2023 19:42:35 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%5]) with mapi id 15.20.6455.039; Thu, 15 Jun 2023
 19:42:34 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 03/11] drm/i915/TGL: s/RKL/ROCKETLAKE for
 platform/subplatform defines
Thread-Index: AQHZn0ZgBhK1NXwb+0etAGzo/1M15a+MRGbQ
Date: Thu, 15 Jun 2023 19:42:34 +0000
Message-ID: <SJ2PR11MB7715D17F6D925281C11C337EF85BA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
 <20230615050015.3105902-4-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615050015.3105902-4-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|SJ0PR11MB6624:EE_
x-ms-office365-filtering-correlation-id: 28ba045a-1983-4615-d33d-08db6dd8aace
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: huy8xJdJW4g8CsnvjcHoapZyLFT1ohBmOKR50Ov47lm8EbtUYa86Et6ZW2U02I9av0iLnVNgyj2g6ne0Kvdp1kYpZs65UM/HB5nuIK9FnVLXaqgmKKJrzWF0qJ/xU/Eo8N1QfHfvLTQ9a4B4hSfAeCG9x4hkY5p2qYQOb4YW36RbYGOkcomS/V6Vv4RIzlP3OeC8uZgV7B+QyJ94e6xscV2/ZaK6MdFBQZsACJl8g44qBCgQAlbzuxSTV11r9SjJr+XxvL1mpOEQyp/oDMbWdLra59c7spn5xNYhT0cvm2+PBIEpvYuadToXkQVh8tzXTuSBa0Zn6xCT8sMpRRpxXXIBhoWrrAzlWlY22ltrWgCt8+Z7lTvytl6B+0ezroeyqhwppceZQcAZgN0+1TAOpuCwobq4CIgMqq0hFzBLkJgWpaqPTBhAJaoaU0VmNeLGZhLTqhcJXXy48JP/JgK8U2ZIAI77eDtFwK6RV7JYImCAEcy3zO81DXD7LcXLZsTu7ux5HIjaDjpcNE6tJBgKC5MZf+Cq8hrgAXZwnESJJAvkYZbxW9uObXQk2z96pdhPTtqRYO/vuknDm2lKmlukDn/HXrHhyek9rsautl8L6x5tIw/7yYOxGNseJQ2JyIvt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199021)(110136005)(8676002)(41300700001)(7696005)(86362001)(64756008)(66556008)(8936002)(66446008)(66946007)(66476007)(316002)(33656002)(71200400001)(76116006)(4326008)(38070700005)(9686003)(478600001)(26005)(107886003)(55016003)(5660300002)(52536014)(83380400001)(6506007)(186003)(53546011)(2906002)(38100700002)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?duA4O1Mwdy6pE2psyDkGlQZ/mf1Yb+AtA1d7wrgxFLensKAJXFS21vZq25Iy?=
 =?us-ascii?Q?IKTJwbUb22OPupEhrH1HjK11npTsppuUkvWryIw7/NZuD9YJLzbnyhIQpSM5?=
 =?us-ascii?Q?FWu3Q7TfK0c0RVf9K/I4T9BWI7RjtkD46dKrK2NBgdR7EELGfJAw5RW+Baa6?=
 =?us-ascii?Q?VB2E0VsL+Q9y1fXl7FW5NKevJViH+UaqAX0/9ftK+a1HQPviaUwKfjodJrXT?=
 =?us-ascii?Q?gqJqrvs/RgxSd1tGoPnoj2cVedkmY31oUbYav1T7K68M5v9aNZi48a8PjZXM?=
 =?us-ascii?Q?Sz8A0mBZvu84n47dJZG+SWR5oL19UQRxLZZISFivKUbw2aSKSGRUcB5CNO1r?=
 =?us-ascii?Q?PGHuFrPTOwbHa2dsAu7MKHqj+GQfKxhruwgdZnXdcboVcRqikgRWid9u3VVh?=
 =?us-ascii?Q?Vy2bHJrUekG4ACavbO80yGWhwM/wQzrzkjtrSYWFrMuO7x/Ga0/rR9HTX+9x?=
 =?us-ascii?Q?OjvZD3TwEZ8bbR1f0+TB4RXziruJdFC45+rIi59bxPT24iO4MD+c4KMoqdro?=
 =?us-ascii?Q?D/19PNJA/uKz6uuCWgBwZMyeruT8nMlqWgqQNlaOd8PiPX4yXwLseMUrwHqH?=
 =?us-ascii?Q?KKbe/sijHDW+KWBJsC0Wa/rOs/uoi9wpmPrE0+16YyYU6G6Tm0gMWVRTedA8?=
 =?us-ascii?Q?L0z575lCnAwhkZdvxxARt/D9rVqDgUQ+2TkzAG3qaOfzFfGLA52IBe4GQ+NG?=
 =?us-ascii?Q?UBrGJQCTn0RvDHO7+zyGbhCRQMUVnQK9cKIYb9tU+VMMqKWII59Ks8/ExypX?=
 =?us-ascii?Q?qBHv7OPDnXaf7Erj/Wl1FSFyrjX1SiQkarn6cp3c2AM4RcvAnBMYY5j4rkUH?=
 =?us-ascii?Q?ddz+qqvhqqkLzq0G5RI6yVBkb9pcjl/tfDgY2qQX95F/cEZxJ3VFCSFr+MQF?=
 =?us-ascii?Q?TL0QedriV/r/w9ijoo6PS9MWZGJmEHItgXtUDiPrxMsexSam9e0wE1Np5aXx?=
 =?us-ascii?Q?orWEdL3839M425QF+Q3WZJ2hOjeGG2zHcycZA0TUZUw5SxUhFdbKjRGQeGU8?=
 =?us-ascii?Q?0NGD/a0h8WHODT2x9JjiJ3e5xb6MV0WaPgsKQCsnl0Fn5VFwN1agpRFmnfnQ?=
 =?us-ascii?Q?ImSFDpJp3SnW/9cc5titn7IqshCFzaSI5No0VXzRKjM2cLlgNyaUdLKLGO6M?=
 =?us-ascii?Q?ZtoMzGwO1GWsOrB+aAXjxblx2cl/KKUhMhgDjrbmvcaSa9TZS2IP9vXTUnSb?=
 =?us-ascii?Q?cMkC4uRI8nqFcydgwSs+ArLV6qfMAdPLuYPupLELwHeulz3fqTPQXr88KJUK?=
 =?us-ascii?Q?Bb2wGqfktFMGgrcLFcS7LzrKPJf6V3dWkeZmtWoKCbqWcx/Pbx4vmm3JQtL7?=
 =?us-ascii?Q?fG2jnuh7Zd4p6GjYt0k5lwOI3zT7l50FMJKTkL9CsNL6H4aMQxM5WsDTloBX?=
 =?us-ascii?Q?+z3ztpAhYxJJgeW/yIYK0UEEbz468ydicWdCfMel5WUWfz3nZ15QirV3CTqi?=
 =?us-ascii?Q?i9axQgYtek6tEpGRYZi+DnhKt/5wG2OnuimhfUFkLyWQb2dPN7tFsptFTq2U?=
 =?us-ascii?Q?n+aHwuTZTinjuy10bc6fZKdEQpF3kVAvImpFsd330E78l3T0ErauLeHwDll7?=
 =?us-ascii?Q?NMOCaPvo95aIOZysssL07VNJRVjf5d/lIlX7O7Ju?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28ba045a-1983-4615-d33d-08db6dd8aace
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 19:42:34.9026 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yCyUfNjfh+DEXXXn6OifRJtmqhhGs7hIGjx87kqLJ1KOfNGVLLQuybkJNVTnFNqdQ/p2lA1ud8FYKKPINIxVhIJGNrLbefv3twug3TRoRsE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6624
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915/TGL: s/RKL/ROCKETLAKE for
 platform/subplatform defines
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

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, June 14, 2023 10:00 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Atwood, Matthew S <matthew.s.atwood@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH 03/11] drm/i915/TGL: s/RKL/ROCKETLAKE for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace RKL with ROCKETLAKE.
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h                    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index db5437043904..c65505b82065 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1586,7 +1586,7 @@ static void tgl_bw_buddy_init(struct
> drm_i915_private *dev_priv)
>  		return;
>=20
>  	if (IS_ALDERLAKE_S(dev_priv) ||
> -	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +	    IS_ROCKETLAKE_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  		/* Wa_1409767108 */
>  		table =3D wa_1409767108_buddy_page_masks;
>  	else
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 472a36cf1a72..3e9567f9ad15 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -666,7 +666,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_TIGERLAKE(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
>=20
> -#define IS_RKL_DISPLAY_STEP(p, since, until) \
> +#define IS_ROCKETLAKE_DISPLAY_STEP(p, since, until) \
>  	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
>=20
>  #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
> --
> 2.34.1

