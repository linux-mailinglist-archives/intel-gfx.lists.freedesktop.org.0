Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E53A38469B7
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 08:44:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1604310EB81;
	Fri,  2 Feb 2024 07:44:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bIkd14q7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 431 seconds by postgrey-1.36 at gabe;
 Fri, 02 Feb 2024 07:44:21 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2849F10EB81
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 07:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706859861; x=1738395861;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WADZ9c/EG9qnCrsDXfYChw9me0MmOdz5jEm2mmkR+tU=;
 b=bIkd14q7/FsNPQByE0/3lDUymvXJwqT0ZtsGFN4jj0VMLvoTbmA/otHC
 PnlB35asyZioMIlTyzocaPSCBghIykJd12QjyU3RmXCF4EYkm5jn6w76q
 ll7xJaU/DvgMf0PA9wj4BLW+lxjY5aeTSGjuPGuvTrGO49sCdDEVo+gOV
 Fw2DAmDi1EkAmMhdl9dS51x9CZovKxa3sRDux/8eHaXrAder60kc9G4f0
 FatfFg0YiowYRwnujWmfG5MwbMEYhvt+XGuuotK+XslALQQxfFeHekxkC
 qjKv48JzeqE0ZOmWi5wStZtiA8ua1pT23r+wNSisfF5B+T00moYpL8U/4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="282688"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="282688"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 23:37:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="336268"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 23:37:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 23:37:08 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 23:37:08 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 23:37:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UqcBSYzPQiltZQQd6Lxn1Jv4Et+UAMnZBWlbUGIJoBmkosa5BY/vOCtbXNkkPc7LJokDDHA/AHgd/EPgMSul0r0/3HhCGvtU11ADIpyDnJgr3tIjOdwNDE9nl2y5aVJnJXRn5kqOUWbKAfeA+vj0zUK6SE22hvIKXgItO8lTILFqGcm3ZKv6qia3r1tzodI+q7eWPq2X4OlEogFgkDkBVOM6/tkmYmr0Rb61GC1uJcA6LwcqtMb1Z+cnzJ6aDiiKlNfJWY+Lu1r5ZKDVRORlmVhiG/fDOBfGV/rTH9o1RruCtW7zS6NhWXXccnKHURZlck66veKVhRzl2BlRVWONjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=joI9USU7+hMLEeo+RPuhQRguf98wSyvy7bXeT5FHEMU=;
 b=MZ4uBQaqbA/3ilIkmT3D5SMYDBkAipY+q4UtQ5GJxPwQYNUA7ClY4fZBsBHAtLvFvYgUYVk/T+uwqu+kCG83jvOtrggS85W6KXrQYFGZH9c41OdH5kfVWV+TzwK9GRLSD1I8VQNeiKhNl2Lt6VoRgMaYx+GIJDbriX18j0moUmgK+BIkuTsdUtuZPy7tVUpeM2Z4ryGVeUHTldirsk+GV2Cq56Kj/0LzEzz2S8/Y75I6K0NVZGg2xyZXjUgl+pr10jK5kEM0YWRTQf6LWCU0TvUekuvyMTg1nvs5xHQWln6tm7FOqQN4jgHbU9YTUpkbcnQolfmcFfn89kxmT230Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB8158.namprd11.prod.outlook.com (2603:10b6:8:18b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 07:37:07 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::e90b:e018:1b70:f107]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::e90b:e018:1b70:f107%4]) with mapi id 15.20.7249.024; Fri, 2 Feb 2024
 07:37:07 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/lnl: Add pkgc related register
Thread-Topic: [PATCH 1/2] drm/i915/lnl: Add pkgc related register
Thread-Index: AQHaVOxaEudsFIN6qUClZTN0J3MKlrD2q1aw
Date: Fri, 2 Feb 2024 07:37:06 +0000
Message-ID: <SJ1PR11MB612913C2C016E01E274D6800B9422@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240201085158.1000285-1-suraj.kandpal@intel.com>
 <20240201085158.1000285-2-suraj.kandpal@intel.com>
In-Reply-To: <20240201085158.1000285-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB8158:EE_
x-ms-office365-filtering-correlation-id: eaa72b46-e6d3-4bc2-f6a9-08dc23c1c204
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SmqWfXnxNDJKbks4UgXQT50UdWF1+aXbf/FVutz6WpTeaMFmfb6WbfLfJZKqMpRd+WKKTuR0Kub55ranUuXfVoSixJpAUE8yxt6h8PWzNX9K34LUKb+V6z+5PfFROc0G9ZgXTYNWYX8Bl+TM2yU+lS1AmA2LFbfhm0trw1nEVbuo3nlkP0HjHtQ2Brr72DRK3xb7fCe5nrKTtcf3SLLf2v8EXBU5FSjK0KgnJPxzG79/TpdJn01Kye5BLZUK7ez8ujhhEVuau0gga9gZ7/fSKpF0LxiREGaN+2B/FUNMs8W3fjaqnYxZZOZ41e3ua34w1VYIIsAStPjKBqjSn3y7xR/PPfOXVqNBoCV0xKvB9quo2uwL16OXNnIlIEg8rT5cFCcYPGzpR1XAoUTN5DPsh+MeJv4tGKF2qBOYvbKRxNBk7joe83ulav5wh1GWNUMg3HUcc/6AzzIN6NmrGcy80my/LEXH8anokMgCB0ZNs3rFEj+QVsEuT7Ob3clNeKAnNdJjLHTEwRKy8EqrFam0ZzAwtuGXxc7iBkU8Pz+SJWSHyKzNwzXqOqJTJnOyqdzIZV70i4KX/bAvJBFwG1NNKxX6iOO+vtKJmgWFDhv18J0AJFDftw7BWjJoj6t61YsW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(346002)(396003)(366004)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(38100700002)(82960400001)(53546011)(7696005)(6506007)(122000001)(55016003)(83380400001)(9686003)(2906002)(33656002)(38070700009)(86362001)(5660300002)(316002)(8676002)(8936002)(52536014)(71200400001)(110136005)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(26005)(478600001)(41300700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qXVpWOCRACOwTqEVNeZgeV1pie3e1PGZt8xWXD0793Nzer24OI0i7c5NTYu5?=
 =?us-ascii?Q?4XRVw9sHFoihLp7BsgClSCY+0YLPs4PRKqn3epuUh8YSufBbAutTRQYL51N9?=
 =?us-ascii?Q?UuA+5xLO/GjC6qiIoTtwJcxDLwafgTwbNF2t8Jqw9fVX/wuMFOzyK0lKYp7u?=
 =?us-ascii?Q?YqKFkgj2IsTGS2jUxKovrzK4r+oqwKgR4n0OJL/upmNzd7+Z3KZkLR6gDyLb?=
 =?us-ascii?Q?avSG9Cza3y+VK9WJorLz+5Kv7O+eBECnA1om9luCgPq+4OZyt+rZfhHj+KN7?=
 =?us-ascii?Q?XX3CpWCS2GZCFbfSOiposV4+NLSA034wzwZfHHvCHA1w5HRLDfy6c8wnm/dR?=
 =?us-ascii?Q?Qjm/dwnwUqy0BVu69v3d5eEspCSArDc5vsfYhx9vN4gcceGvepX2hJMEVPKB?=
 =?us-ascii?Q?1qwCWHZR91yTA40PE9D5G/NE2mLsoZmH2VsbY+cnSPPvgvad3oNXZKn86Su3?=
 =?us-ascii?Q?hIU8f0WgzOa4/oKFYSSgvb9qetK83oEpwdFlcmTTtgpzB/00FrOm7jyKq9Js?=
 =?us-ascii?Q?zVIKwuHsgMkcWcCIb+WdNU3okFSLeiWTmUDiGASuzpO61M5Re/OMsmUDwCvh?=
 =?us-ascii?Q?7hdNPskVPuMIopv4zZc5NkIG67lNWBenhsYraoHNWTHmFk9q/i8yfjF/rDey?=
 =?us-ascii?Q?meI5id6pQbBfhuSc/hJDv2osnRlmZepFaLlIchx17ruWnSr+rhRVTFoXvFMt?=
 =?us-ascii?Q?l+8TBo8byKedERJeV8BKnNOMrypcEeyjgXxOi/dfguRgkLJ2ObWHln4kNkJs?=
 =?us-ascii?Q?isqkcQq90GGzChkQ7OYZYRklI+70RHw52p11NUeqE5XORutNYVoUgs+aWPdz?=
 =?us-ascii?Q?g3r8zESeTXS4nUPNn0Donn4AKfCE27TwohVyr+2XD/tPL9mKmlO70nE7k1Rb?=
 =?us-ascii?Q?fTSCgsDk1gxOnsOkmZOis3yF7D7fR16Z4yFQk6DavJLgoNLLRujMvoBepOEF?=
 =?us-ascii?Q?jVAxua9X7efyCZgnY3NEOviA8uI8wEDf/xBbFcKbbmqd3Qrwllra0RL+SUsF?=
 =?us-ascii?Q?P9zr+7/l2pFA0BnshjnmuXsFBPzXbt8VzxlOlYJ8R/FWhYJcaGW6UwQL1gr+?=
 =?us-ascii?Q?xv+BQgDFrGA0kjP24KmRdxv/3clgPpGw8PmzVSyad4WKUudrvMFGf8B9aOME?=
 =?us-ascii?Q?8JbkmNtrdTyox+i2EmPK6b64brdgtB9USPcUSIJVuaXRdH8n/Y3kIR+S1WDA?=
 =?us-ascii?Q?RaDQOOzl2OqeI2QPD3l3QX/DHkwiLRmM1Zc+lxYU7HOupSr5u6qsrwxJNupE?=
 =?us-ascii?Q?hbqWwhyIyDWpGh32i7qyxn+INmx+RpVAiTmyLgnjku0BkJB183zeMd0qRw4A?=
 =?us-ascii?Q?OqKZQBnghGJD7ljZLc663B5Nl91Lfw4d66vwV0sqlNVYTJpqBTn4W/3nRKja?=
 =?us-ascii?Q?9URdYBZqfQbEqnXmBefENg7j4JK4yrSLqVO4nJPel9G2U1dr9vSqWOEOX5uT?=
 =?us-ascii?Q?DvUwePJ90Fq+viDTse5ToDCvl/oQNFvbnoGXXo2yL/zLExkjYpHRMEhQB1Rn?=
 =?us-ascii?Q?ThbEyQyTI98Az37ydbK4DukvTYynGktNVNGGGngKjv587D1gevX5h7cHYSFC?=
 =?us-ascii?Q?CAlzBZXE5hnLBMkf/RX78RJdwwnxJpgdKhMIIJagE5iiHCSd1C2LjV5J2RPW?=
 =?us-ascii?Q?og=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eaa72b46-e6d3-4bc2-f6a9-08dc23c1c204
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 07:37:07.0248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t27iYicy76Il33r+9o9s5GGXquRGKa4mQkeERhHJbZb2MbAAshgh0Xgsg7vspaJ45NZvcesQm1ERQkmPcAaA51Py8Jd1aUjTP4iB5DAy/sg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8158
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, February 1, 2024 2:22 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 1/2] drm/i915/lnl: Add pkgc related register
>=20
> Add the register that needs to read and written onto for deep pkgc
> programming.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark_regs.h | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> index 628c5920ad49..20b30c9a6613 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> @@ -157,4 +157,8 @@
>  #define MTL_LATENCY_SAGV		_MMIO(0x4578c)
>  #define   MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
>=20
> +#define LNL_PKG_C_LATENCY		_MMIO(0x46460)
> +#define   LNL_ADDED_WAKE_TIME_MASK	REG_GENMASK(28, 16)
> +#define   LNL_PKG_C_LATENCY_MASK	REG_GENMASK(12, 0)
> +
>  #endif /* __SKL_WATERMARK_REGS_H__ */
> --
> 2.25.1

