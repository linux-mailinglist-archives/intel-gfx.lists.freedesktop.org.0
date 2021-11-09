Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E11DE44A862
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 09:32:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C0F76E7D4;
	Tue,  9 Nov 2021 08:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9296E7D7
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 08:32:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="212434158"
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="212434158"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 00:32:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="545155389"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 09 Nov 2021 00:32:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 00:32:41 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 00:32:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 9 Nov 2021 00:32:41 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 9 Nov 2021 00:32:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GAoREpeyNLhGTqOzALgZcm7hE+/wpNI1BtHgkkl5w2lUI/Cut2/R6KMQO5htkNbTCL92rDRLvkRAYBKzHckngxeWsPpaJXmaQn68ZnQSHFgl4RCiYV73/vya2IruN+V5dFD6bkLl1GMVrZ2PuHcKpDIcCLWwXcModbvLBqgcwvTmZQ6AiiBPWSHjAfdyDC8A2nbt6rr3PTdizdvyc9+DJ4PGhl49nOpovojjCKCDOaQ2YYoYCn+2UCi1biqFQsn69JUbKEY/YARKOnKrHa/9R7QVv9qmPj2TJmVcaA1o1ITl08uT0Lir4uqKTE8yB7v5ANPJ6YBxmWscIc8QkhS7IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KkDQp5vcXiZ1FRZDMXbc4aYz8cY5ZyYFICKSvDiw8Qo=;
 b=KQCwvVXXSYB0ZX7OkXqlklYvWKuD/2Cq+HXiqpob9N8xBHKweUrr6MAoMWeUrjgLgK/g5MKCfq/yC1fFhf1+/SMTlG1ob1U10HGOYOdHAOufGycAlSp6xiHq1kI0Ctudy6yqRNJ5lcqEJeJMpQBoRSzRT6r2yU6ActeeZqS/Ns8gOUFENZRxa/waZQXs8YnwB6ppDrRDndPm+Eay9+YsuK394HU0uL4kImtV+zjmrFLEvvciMV0v/M51Q6MKdLg007fObMFH93fGhBwITHe7J3Nz+8PJe/TF/41a6018EUn6JL+vhU0Ca/OJnZPeZQffJxl8H+eUfsRsMxoyf+KhMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KkDQp5vcXiZ1FRZDMXbc4aYz8cY5ZyYFICKSvDiw8Qo=;
 b=V3/6dV2epXIOeb9PchBtf2SxJJ+z/TG38RJ3F7qPGqxQsFETRpF+iErhQZA0Kqjcs5LH2msu1E7wExcULeot69mGwzYOz4X6kaTAGj0NjxVzqJyVnYFTPMqYbdTLp4Wgl9idRyn1kyQKfpJ0w9YbUk/rDBmLsLtkFDLHwH4o9Ek=
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by SJ0PR11MB5213.namprd11.prod.outlook.com (2603:10b6:a03:2da::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Tue, 9 Nov
 2021 08:32:38 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::10f:2438:c4a8:4476]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::10f:2438:c4a8:4476%8]) with mapi id 15.20.4669.011; Tue, 9 Nov 2021
 08:32:38 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dsi: disable lpdt if it is not enabled
Thread-Index: AQHX1Ru9GSJ6UkkWikCl0Hs3pwvoE6v61qUAgAAGn8A=
Date: Tue, 9 Nov 2021 08:32:38 +0000
Message-ID: <SJ0PR11MB58940EE621EB1AFF3E99F78EF1929@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20211109034125.11291-1-william.tseng@intel.com>
 <87wnlh69gt.fsf@intel.com>
In-Reply-To: <87wnlh69gt.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6cf19416-e44d-4b66-9bfa-08d9a35b7ce8
x-ms-traffictypediagnostic: SJ0PR11MB5213:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SJ0PR11MB5213F82166D405DE4AB783F0F1929@SJ0PR11MB5213.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: keBqKXUq1eo/Xy47hIFSCi7nfiE1a3zpqZkv+2oO6NSslaDFLhMX6AxO39ukFwbZlA5XGUsZiScTADFqsHytIDfSpJXcJ3zWr+frjoAmENgW1gGCpxMQOYOQndrFRqVgZ1+dj0iUsqmdJw2F8VZE6KrJr9y7GtSTBAPcPDZfmgQGMfV0qEl4NaTmw1gm7nDQITXaA9vBaC3WxqThjqMAz1BqBND94efTkY8f1wvpG3Yt7oJL3CeD/mnQISEc2y/t9gzSOEz0aKgZsvB/XyVW10Mgj1UpBWjL8cSm63E6MxCxaRDFZlSimD17MrBQv+4uIHIwLFsobf+vq6KOZT/0PITRORJOEzK8CMQrEAQ+/n+nLqsl2B5/oLwo79/fXk9gT64cS7fI2spCXa/meWfM+iaQnnm96WDrDUxglkKK7aXWQe7zpTVN8WKx6xt4Gz+1DMKbNsvHvngIFfm5CcSI6we6wmylla2tNSMDhebukBpjb8WQtDki+lllgDXzM2ujnkPZZQZTT5GBU/qdxNjy8PfQacSryBmWt/ohZZbhXdm78V9rv70ugToKxceqF9Tqe0I4AQ0zITpqMThByuX1gBp5EyEAA/Lgu88Xuo9KfPaCyUxTUTZ3gV2TYEyjsn9UjMTTIfCMR4FfJQmS3OYA1wpDcaZQzrbuHSoCRP5gJ1OE5fDsv8bobGI0NJtMR/IeQ+RVF4i3VKlXiFhwlBXoMw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(9686003)(316002)(55016002)(2906002)(8676002)(33656002)(54906003)(110136005)(83380400001)(8796002)(7696005)(86362001)(82960400001)(8936002)(122000001)(38070700005)(6506007)(38100700002)(53546011)(5660300002)(66946007)(66476007)(66446008)(4326008)(76116006)(66556008)(64756008)(26005)(71200400001)(186003)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xpzCf36ioccJi0Vq+YFwsoLfHrKsfA6bVn828wPZ2YV3ZF94ixkhr2M5KBlZ?=
 =?us-ascii?Q?DQvcfDZsTl/sUdnSlvGGK+WbSBQWjR1mWIOWuY3VQ4SRqEj6VMeZOWY3i0Fh?=
 =?us-ascii?Q?sLagQ6kb8IBelXQk3EAdmDw6h4LmnXjX35uxlnrniIUwV5WSZh9n2ue/Ptv+?=
 =?us-ascii?Q?VY2QO1s/N7KFRIjdA4UnGat/4Cesge1CivTYcU+9CvgHFjAhWVSw/U52AefW?=
 =?us-ascii?Q?t46NBHJ06zxRqDy4Lm+Ouf3gEXVmRVmJQ1TwarQOb5m0z+H7/lQ/Tfp4OfKz?=
 =?us-ascii?Q?aUT9arQnEvrOl5tVI1TLwlTDcoTDhZspkoGfURV6QpOhMPl+nE1WhX2MBwxe?=
 =?us-ascii?Q?LE2xLOJ22Psbcu4QBUEBBMbgS3wT07JpFs/EMvLWC88e4PJACm5e//7lpjIz?=
 =?us-ascii?Q?6yClv0/M9hbxGHis+ZPH4tTsEU7oD7STHrgtCCJ6VYbr+Ozb9mdaRpmFswT0?=
 =?us-ascii?Q?KOPcMlwCZyme9V+Kt8AU7ec+r+WDohR1j5i2DsTnz2rbmn8D+ayo0mWUTcj1?=
 =?us-ascii?Q?kaP/lxfYBEp1tDbew48sZhR+tvEmMwX7QIjNzcGmZKTl5Dd3xbgV1XtIMHY4?=
 =?us-ascii?Q?MSj7ws65lWazVyda+iJsl1RdpL63j1JwlSkBXyK0OWrFuzDIYxRtAbOwRObm?=
 =?us-ascii?Q?w7lwMZFNYJiL5UnEfyg7SsZp/aaZTt8gBoUStgYVkBhF4fnIjqHccbec6PE+?=
 =?us-ascii?Q?HUHUgDst1xldOJjEFrISHnztph2BtD8eRj0yTJ5dye0mCmauTCeVGNfqeKos?=
 =?us-ascii?Q?D5A5XQ3W/f6C9cdDF/uMD4tr4DIM+r1JidJ/25DdjOxDXlW66leffIDLAHeP?=
 =?us-ascii?Q?Do03HoGlIVHY18FOIPXnxdBRZAkDtezmZ5LTZ0Fm3BzuZtwOJr6/dmF2l/84?=
 =?us-ascii?Q?4M4RzPfHV17X+w5bCS5Bom+ySV2Ia9h4y/FQej7pBsLfpKsC8x/XSBtqbKll?=
 =?us-ascii?Q?xEwvMRXM0mHZOZlpxHNb+FxqW4+W9IGPcU6TVJqcNwsNFpOvgKGq02L1cfbn?=
 =?us-ascii?Q?g6gip6C3eGzhw4Alzcu5oW7Ux1Q2qTMRJPHV6qAHCDOAm9hOVtbWtwhq5G2Q?=
 =?us-ascii?Q?OWhTvwz5WkXb+3YukGzRmEnpfKMx79PXYrJqt40pCI/rSGnvoHLC1e5qTbFU?=
 =?us-ascii?Q?MmYO7pf2HePtyU7d5Qb57XyqPO6gkQW6kWyYR+kX61Or+QXgM8GkatmQj6O1?=
 =?us-ascii?Q?YLWGqCDuDAhRLp/KLJRXsgWG/ueklUBoKH4BU5Gs7TduO44oxiflcpN2Hiyt?=
 =?us-ascii?Q?+QYDpDiFI665B9HsSN0ni6TsGn8Sp4i5QldXl3l/WD3nFeEYcvZOS/0PgLxm?=
 =?us-ascii?Q?a6hF3Nkb0fSxRb3Sq2e8SIF6+MiV0xbGwjaLSDs6dMx4m3L8GpnNuC1v47Ht?=
 =?us-ascii?Q?bBqk60ciCHesiXBtE8o2HgkXcwp6rbl+c2Z6U+YoiRByK6kJCV02kW4CzNA5?=
 =?us-ascii?Q?LT17Sd6UEs0IDUJpb/bQPG4ZBi+gR/WKrJhryxK6W6WRYB6Xspsh8rwaDm5E?=
 =?us-ascii?Q?5NMxC7a7uICxNAbI5IzXDhlmyE9if6DeiIgytc4iQCxuNw26ZS6Ymyspxp3q?=
 =?us-ascii?Q?8GnL9bQuOLNCtzGh1Z+ZTJIixw9M0USX8eogUVRmNSDqr6RiAU4yY7PqghDz?=
 =?us-ascii?Q?yA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cf19416-e44d-4b66-9bfa-08d9a35b7ce8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2021 08:32:38.1610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tuA5u1ubCnZShVKI/hor/eU+Ul6QeXASmHbtijUYLneBbDmmygckSR2kLL3ISKAQPBfUoYNhFf2Aco5+yUGwQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5213
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: disable lpdt if it is not
 enabled
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
Reply-To: "20211109034125.11291-1-william.tseng@intel.com"
 <20211109034125.11291-1-william.tseng@intel.com>
Cc: "Chiou,
 Cooper" <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank you for your consideration. It's my pleasure.

Regards
William

-----Original Message-----
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Tuesday, November 9, 2021 4:05 PM
To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop.o=
rg
Cc: Tseng, William <william.tseng@intel.com>; Ville Syrjala <ville.syrjala@=
linux.intel.com>; Kulkarni, Vandita <vandita.kulkarni@intel.com>; Lee, Shaw=
n C <shawn.c.lee@intel.com>; Chiou, Cooper <cooper.chiou@intel.com>
Subject: Re: [PATCH] drm/i915/dsi: disable lpdt if it is not enabled

On Tue, 09 Nov 2021, William Tseng <william.tseng@intel.com> wrote:
> Avoid setting LP_DATA_TRANSFER when enable_lpdt is false
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c=20
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 168c84a74d30..31cea17481b1 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -183,6 +183,8 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host=20
> *host,
> =20
>  	if (enable_lpdt)
>  		tmp |=3D LP_DATA_TRANSFER;
> +	else
> +		tmp &=3D ~LP_DATA_TRANSFER;
> =20
>  	tmp &=3D ~(PARAM_WC_MASK | VC_MASK | DT_MASK);
>  	tmp |=3D ((packet->header[0] & VC_MASK) << VC_SHIFT);

The read-modify-write we do here is perhaps not the brightnest idea, but th=
e patch at hand probably is the most sensible first fix.

Thanks, pushed to drm-intel-next.

BR,
Jani.



--
Jani Nikula, Intel Open Source Graphics Center
