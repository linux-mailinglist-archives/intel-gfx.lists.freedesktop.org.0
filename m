Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8459DFCD8
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 10:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339D610E049;
	Mon,  2 Dec 2024 09:15:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g0M13j6Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA6EF10E049;
 Mon,  2 Dec 2024 09:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733130941; x=1764666941;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RtaXEPAd65jjbQKrHEm1vidhd7YW9VA2/8AQh3S+KDM=;
 b=g0M13j6Q6dQkCBWqTAOJILjX3jEN+BFKhWSCTrPawtdnuh9uxeh0zs1C
 UCnHkoQl+87WU3shBuNa9ksjkUw7alG8UKZzrKGXv6CSzEp/+yznBUNGr
 U5wWgZcwf4ssZL8M3bb8xFGmT6O+plhIP8u/JlXfTTp92w3I7INXBfRVb
 it7AqYonNQhEQ16P07gWhnA4m20bbsV3bZn+dbabcrMNWe0ah4xswc664
 XqRIZr1QelE+zqmGWvkYbzEG9VGggZCxH4+QTa189t9SgRagXb8gEiyaN
 Of/9ESts7H97F65+bbibhVXBaef4+Rsfd8KS9cuzWf6QAGvT3oLCpbIiS Q==;
X-CSE-ConnectionGUID: 5cqHUqdCTCynvadShn+Nyw==
X-CSE-MsgGUID: qNR12hfnS/uD9IIBUNVtmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="33220311"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="33220311"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:15:41 -0800
X-CSE-ConnectionGUID: mmxo0cnLR5ypf9JmiGy5eQ==
X-CSE-MsgGUID: 4tUjDtrcRQOCw/tiGThCqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="123988563"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 01:15:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 01:15:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 01:15:40 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 01:15:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a59ugaikTm9JGbRhhfd3IU/ZTgduihhLcDWowEDeUnEs+KAR91Xqv5rIYsZacPtaVKzz7Gy42KgFs6J8mHddX/E5imEA+YlmdxzBO+Ap30e+RJ63gGqIRbpsjcvp3nbI+VYWIr7p6Wr7R+TStI0We8qSVp1iw6oDT8Z0T/9qq7i8yzlPrIyMOriSIALnEcUQGQrh7SNsrVLrqyyOddNv3Iwb9W4rzwHyQfMlsvR2MV/d7BUzgLru5S88Y8tCIkZ2rKyeLckwjZ91zB1AQb6/sDF7BkIAtehZBMHk6/HItKd0Guj6SiPeO7EEDaCFBIcV9U77aW2P8yyYFJhzFLN+vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SeOr8UN0VuB+LL285egYJqxhZkBBveakDSdeXH+jJTQ=;
 b=TMd4yy6zZZXznbV9ayFV0YwDQU/mnlQu7EAVARXHsYIiZDvOCNXljKRTX66CBUc+aZfci9dmDmfguXja6M/Z2Z/tsYKiOAgtQKub9YEGz3OxdVSQYe6mMNIgWcUCRjCxOxesnRZBrq2GAaDIlUD/3isMD3jCQ8/WsiINmDVcQU9jC9yVIkbXkDC/V54w78j27Fi1cfM1T3FlTrHxfMWbdcGp8eIherhOvXXtLZtzsqnXw8fpgFnmAQtnircrjA8KWPOemhKqhe0n8yaUTLomzzuRMWAJoZcXKEYIlLDdmPVJu/TjZtohpNT0QzvPVcWGy1y+Bmr4qD+6JTywm8TASA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SA1PR11MB6872.namprd11.prod.outlook.com (2603:10b6:806:2b2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.14; Mon, 2 Dec
 2024 09:15:35 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8207.017; Mon, 2 Dec 2024
 09:15:34 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
 appropriate value
Thread-Topic: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
 appropriate value
Thread-Index: AQHbN3fKYZAI88PVY0aN6GqluMACCbLSsg/Q
Date: Mon, 2 Dec 2024 09:15:34 +0000
Message-ID: <IA1PR11MB6348F1AEE0B17F2A150C52BFB2352@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
In-Reply-To: <20241115160116.1436521-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SA1PR11MB6872:EE_
x-ms-office365-filtering-correlation-id: 34cf4c27-b202-45d2-0827-08dd12b1e0ed
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?JbEIO70WgG8nAKjHlerKHFQgf1quagtskn/Egq/Ptz2fadEOihsCwtMyTUIg?=
 =?us-ascii?Q?81I6rXVSgzhG+mVTZVvhzi8QxFCTXH6yvsUl55xgYSxWyKfKPcU9sZKlMHjt?=
 =?us-ascii?Q?8+Ofx2AA1WSpiz61Zqb/kE3F6a/SEZYe2u9+LiY+0oOIaAiEZqd0d3rAZuZX?=
 =?us-ascii?Q?gNitdw6Cc1zBCCyGm1PJmfdilJAe6H3Ek9UIN8cZxmAzARWXSlspmihqY5F5?=
 =?us-ascii?Q?GV7D5NHHcvzCVk5JqOcFhygblrSSpIktXQo5gc/nwN1/x5KKpWjOJsIjfCkW?=
 =?us-ascii?Q?FVAeJm2HidI8DRwHIENpCDCKGAmveKdNnl5E13QMoEvLVfnBPjkg80DYZ62W?=
 =?us-ascii?Q?giz6vJJ9s+mHOfpst9ptfBR1Q0wiL0gufH9KwYJq2j9xffQmFhvQ3Hc2T87G?=
 =?us-ascii?Q?IAMXhgaYwrB2FCtteV2jz+xhtyLidy0KJVRLJRHHUw+nJVFUfdj7HHDL9VP8?=
 =?us-ascii?Q?yiw6FboDLexG/zIl63fO95Lpii88ULwCSeLXkvNIkYCq+Se0Ab0cxAoPd6sm?=
 =?us-ascii?Q?66CcmgA1b+iYLy/LVx+K0JF31QqmC8Sz80z14vbsHIeFShHWbMvl6GImnK9M?=
 =?us-ascii?Q?3IcuhspfVNIHSxOX2TrCMyOSXxDSSMsegqiL6adooBw/sc7kMG2DmWSB07pO?=
 =?us-ascii?Q?5txrUnszVzswYwukxIPaqbU3GBWkN/7r7cYgu1hFkBCLsJJifBgbKH3JRW4q?=
 =?us-ascii?Q?S5ZFbDi/PYKhNsK64h7uukh+fFk0cENL6WmQTFT8pCMA23KPAVdrDVA054QL?=
 =?us-ascii?Q?4pD/3OtxJg/zN0UMl1rSMoWAIofbdCkZ2O2gUPIIYPjTEqEurE84oJGwCj2r?=
 =?us-ascii?Q?+9g+yEp+ivQWk2n3pYhm9NpmXNTldGmLuwYglgMyeui+jEShFi/Yx7RrFpnn?=
 =?us-ascii?Q?IqiOsWv/w3ElttpDAx8Lp4dU1m9UrUFJgHaEDYithSZg/iSD8S8wKgkC4OdW?=
 =?us-ascii?Q?HTLd6gBKz5ZhhAuXYHQe9ALvRfFEct21tIeMm0Louyy+th264wEOHa/B17ty?=
 =?us-ascii?Q?5xBkXgDiZk20C0/OiKZZYrABGMWhu4VVcsvzV9wXQmpLohxKz8iQRs13FEep?=
 =?us-ascii?Q?3QpTWRdd4UtOs5Lu8WgxUQSv93Sut5ypWBBP/XIp6zcKD3aEjTzS3ORIV9iO?=
 =?us-ascii?Q?DZeYz4HkU04FP54boePvDmEKG1C6NR5Rwf/Qh1KVGAtyzifTaGJ3almS6guo?=
 =?us-ascii?Q?1jxWgdtazQy0GRte6YFm0J9IODMcaOtmHUZTjUSrYXeCL9YwGucDqqWDjgQF?=
 =?us-ascii?Q?liGR8WgveBmIYoHxNJvwTmTFtZFyvg5Di19uMENxjf5e6ViY70W6DdB7jM9y?=
 =?us-ascii?Q?rjdBAgviWjjQg6a3YQk8s3hR3hF6+a7Bhqhz/DLG1LKIfO38eSmEJxGsJTpy?=
 =?us-ascii?Q?3lm2zU9URgh2AaIzNweoAfR7XDi0c9karf03qExKjAcZdTA7VA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?keEQ8V1DWMa+V1esZQ8zqLfl4OXSn+DTywyTTpxz37feZKIimaGvm9QxDIzy?=
 =?us-ascii?Q?6RFzD0slsLhD8RNadLFXE49eeQditwXnNFOy/O9NriiobD9Dp1x1zNgF9awx?=
 =?us-ascii?Q?wSKL03+VIyqDppSTPT4syJ8Vaozz84Bj5QAZW+uEOM6F3vwLSdRDD4tq+jf8?=
 =?us-ascii?Q?tRgJ0tOQ6sXuScKwm1qC2tHQsNKc3b620NBGVblgqTrTo+oPO9SUyfeKGUAs?=
 =?us-ascii?Q?hzzmZBlfqIHCYi1lbV7XTOqiHDbhoCOorErYM4L0I7n+bY9i9aK2AWf7qM+J?=
 =?us-ascii?Q?qEY7Xq/j/I8ilO9QmZD0atIkzYHjmeC0fHhzsX00A0D6V1IudB5uZtOSeieF?=
 =?us-ascii?Q?iebGQm9yd+DLaG2ollv5YmlnniUKruPo1jbTAeted8QSP0X3TGrhvw4HJM52?=
 =?us-ascii?Q?Z2JhxjOUcubNpun/3UkIn9YJG5MkXoHgOSv7pq5+hYhjegTz5M93ZRuchjM9?=
 =?us-ascii?Q?gupf3GbAqtVPBc4RimtjMu7Dy5q07+Il9u7/IDnG9YnC59pzW7RZcYFnCTwr?=
 =?us-ascii?Q?JYUBqNv+Db9D0LXlTkSZd8jxFSy1Ds/pSoueEQKhVQsPJnihKrAr7BBnDYk8?=
 =?us-ascii?Q?LWHExWl9esL+gghJKzOiuedFVQ7len0xmYzn3gKVCznL+ZxWvhrhdQBcRhup?=
 =?us-ascii?Q?gGrfX/wesMFuVGJcy13YE+ccmlNtNeLIW+ihwfydpWpfHMM8t0dPOXXrWQjw?=
 =?us-ascii?Q?Zan2Pk6qTpGe7KC30LD3NF273P1U3ZlJjJ83VwT+IDEWGrAQYnLOvbZzZerL?=
 =?us-ascii?Q?fZvuOlE38e600gCXrwBk6cewjGDPFwN2OXD0k05V0jItuLQJ2ZvBFh8WMvRA?=
 =?us-ascii?Q?pZGXkOio58cJbiUl484xKpUumML/42511R3C/4bpgftzJpYpazLz4rVp0tvz?=
 =?us-ascii?Q?dG/Eo6hjWxMPzTPQYSK6pbN8frk50cRcCaCOrfzZRni9KqqmPKr4FuZpW3tJ?=
 =?us-ascii?Q?k+2uQwUCuX82w/uEbvGKSyxWQroAKSx4xif9tBBfdnXMwc4l0wyOrpyv0vFq?=
 =?us-ascii?Q?1e844UtCGPf3REMPJXUCTwSDri9go7RNtz9hDBMusFaicS3rJ+JxyJbBfm9w?=
 =?us-ascii?Q?C0BpnVrUJ0yY+PLEgZ7sU5rQKE/Kiw9rHnTmDrrShZ90hY5zKeFpraZ5XeD/?=
 =?us-ascii?Q?CMsaR/+JfxIVw8OC82K/Z40d8qc39HNJ1VWarFoDJMvd2xJlvW//RCIbI3ya?=
 =?us-ascii?Q?FbHV0kCBWDkebg3wA0SJwd5+xb+DET4vmnKesqOuhy/hubUJA5hBB2tnOcnU?=
 =?us-ascii?Q?+GnxWrFc3k8gR9y0r9X/iUlhPlTcaeRYSPfDDaar/o+PPwu5qSOJbQu3+Mgj?=
 =?us-ascii?Q?/Vst/52k1c0/FtFUwFUvpbkKornDzgAKvVsn2yfNmqAuzEAZDbLSV+Sq+O6T?=
 =?us-ascii?Q?/3/35gREpKV4bWoBjKEZLGmvEll/vTI4ajm3syLZdeb35b3G4EZpoBuG8v1K?=
 =?us-ascii?Q?XvIDRc5ffk3CUVLKQYhJ8zk7dDysCGphP43BiWNZ9HuNho2yT+FQarGhIx42?=
 =?us-ascii?Q?owfj/HzF5A+G0No4m7QO43v0Gojh8ym/OrWzDDu1lPkORHZn/teQNHR2LYmL?=
 =?us-ascii?Q?bD5SiZ83Ra3Gp6S+JIie8CQE6CWghP3aMBLUcIdtEzl+lQztOIG8O1elR2vv?=
 =?us-ascii?Q?vL0jWSbfljZmCJeImBousIA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34cf4c27-b202-45d2-0827-08dd12b1e0ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2024 09:15:34.8351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v+b4txtoNq4rxT8Ld6XyYKKFrdIzt6IxCm2QE3hVViLftomdQV4NRa4bertWd6626NC81YCHbzSvAoPzXSm/ZfkeWzSNGmoEfaOOgx8+GhJ4LMSkdRabe8j37tNjUT0h
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6872
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: 15 November 2024 21:31
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
> appropriate value
>=20
> Initialize max_latency variable to LNL_PKG_C_LATENCY_MASK which helps to
> eliminate the else block and make the whole code a lot cleaner.
> While we are at it group the initialized variable together.

I suggest not to combine your functional change with other refactoring. Res=
t other suggested changes from previous revision looks good.

>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 1a4c1fa24820..a49e8915346e 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2857,9 +2857,8 @@ static int skl_wm_add_affected_planes(struct
> intel_atomic_state *state,  static void  skl_program_dpkgc_latency(struct
> drm_i915_private *i915, bool enable_dpkgc)  {
> -	u32 max_latency =3D 0;
> +	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK, added_wake_time =3D
> 0;
>  	u32 clear =3D 0, val =3D 0;
> -	u32 added_wake_time =3D 0;
>=20
>  	if (DISPLAY_VER(i915) < 20)
>  		return;
> @@ -2870,9 +2869,6 @@ skl_program_dpkgc_latency(struct
> drm_i915_private *i915, bool enable_dpkgc)
>  			max_latency =3D LNL_PKG_C_LATENCY_MASK;
>  		added_wake_time =3D DSB_EXE_TIME +
>  			i915->display.sagv.block_time_us;
> -	} else {
> -		max_latency =3D LNL_PKG_C_LATENCY_MASK;
> -		added_wake_time =3D 0;
>  	}
>=20
>  	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> --
> 2.34.1

