Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFD3590B4A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 06:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 041C612B8C7;
	Fri, 12 Aug 2022 04:38:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85404A4759
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 04:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660279070; x=1691815070;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b0vHRjS0dDp+aFqKJqK4BFiwlh2plwBd/FrNQHkMfak=;
 b=SJZmTQCrO4bgUY04f265S3OkQqnroINFm7X3uswMKjr1Ck9oRO+LDG0d
 AluSPGmiLkEStUBmRYoSq4j+Gcrvwoy+MldcWB5es0LAE6A1/uUB//w2I
 StXXtmq5bAzAlmg4c4NuDE/X3ZVYP3urbPHBglVNiC9sxMUqkbspmv/OU
 MZ5Vj3t6+8AScOQKAV7gAqAtRRnFzVbY5m2oC1XBXirMQkpE4DzC8sP8Y
 RkXJ+Z71tgoAaO80W9LGq22gQiAizM9mzbdHsitjUnLqnQlbJKaBPSt8D
 nKl4YeWUxvR6k5zP6g6VaxMPrDA9jKr3OxkZHwBpsS9IqoVVEUma1w4X1 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="355525001"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="355525001"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:37:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="673956321"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 11 Aug 2022 21:37:48 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:37:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 21:37:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 21:37:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SfkpfIkdmrNzbQjBU1Ews1y9AqBo4rUN9zfFcvJac1joXRFpKCdsA1PVoomdkknsa7xbep0JDLK0z8ycPaxaqm03hTO/bH3sYMXucM3/HDyH1ciNplC+DfyAvhLGtc7ZmUbHbpi3XtNzHYcM0dX50HU+bk8I/SAb3FLjDwe2LRY+fRG44p5H5KRZjZaavx4Eib575cRVa+0mWFPznWAe36he9u+t78feJJ/tFU2/VrsFc0EuWodUSlQ77/IRf/RVE1kkxMCLx5dv3ob34p6I9cO4gAD5z3rPDCzuX8utTaV7XUE3iTQZvAVdWNwGlxnNdxSv0OJ69EFDw6QC3IdO3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b0vHRjS0dDp+aFqKJqK4BFiwlh2plwBd/FrNQHkMfak=;
 b=IXOJZ1l0Pyu/xqFfTTVJO0EiuANufs+mu/TQ2yx/3bmQOps/TnJOjbwMD6fPW8Tz9EC1AMPLoKo4g1iE2VLsRRRJ+OM/tzuLEUM+ROXX4eAgs/8Fy68ll/D2G4n6+i5aF1zgmpoPE6mxeahsoDoKSkIrsAlOA41Yo0OnYu1ok4hjvxIarw2xPz19+Jt2vJtr5SFkfyWv0VcP/fEB6lehH+xLZaFQnisumiaFSrEzqZKee+U4ddcnQYId6sHao5xmgmOZ0z8VunLLc+j7Yj8vaOlKiXzfODm82LSw4XLGF4PzdN4YKRvrx0zxpvzwF9PFfCEJgrKIQfzKa0GvnVXlXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CY5PR11MB6140.namprd11.prod.outlook.com (2603:10b6:930:28::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11; Fri, 12 Aug 2022 04:37:39 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 04:37:39 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/39] drm/i915: move hotplug_funcs to
 display.funcs
Thread-Index: AQHYrZVMYm9hm0QrEkKhig/N4ZHpcq2qrmvA
Date: Fri, 12 Aug 2022 04:37:39 +0000
Message-ID: <DM6PR11MB3177E362FAC572AB8DB40F5BBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <664ed8395a6028e654cbc2251605e967a9d46289.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <664ed8395a6028e654cbc2251605e967a9d46289.1660230121.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68b9b734-3035-4048-26fe-08da7c1c6375
x-ms-traffictypediagnostic: CY5PR11MB6140:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7UNwAupPp9VuasLViiMZc5uyyy/AS21v4GdD/cqst9g8CYCUC+2uRTfrqtS0Vo6M/rRVz3QHzQgiQP3LFDJFS/CfxeFA4rFVKmxqT5AjTVJcKlP72TYTo20ifTBM5SUSV8e9uCF5dMwmBS7JlVa4GEcpqNLKQQ+ynvK2/cQUzoXwVGox0WzQatjTv/f4z3cJ4zldcqjEFxuq6bhNkVDv3rlj2rEHXNrGRkhYwt9YGRrBfhp0IM83kTzwOawD1PBbPoE9NDgMzYNf1l+aEBYJxA54e29/z5K1mj2p3MjsFvmDdbAMljLLEem+3yYmM5DDpKF5qfuS5Pgvx2QA21HZkWuklWGtSsU7OrSBRRDvsrM2t4gEFpux2wRBwKMsQSu6rCD4s+UczTT8WEnbtV5k1eWP79drRqTLPH0nMXLO+gX5Qsl/cHQuO9vi08Q6eFVmUTtj7rH7dXsF4fW54kbKstgcllaOr4tda4vnVRz9qOsEuef6xiSOIAEeIxkdJsN+ji4OIfzcbvsqHTHR8+IIFzkqxb7PrcVdFjSu5yKO6w8VhFRZDCuR3D+vc0+oCjVqD7bS/+sN6k1U7ZSe6SqllW/4/WiLumrVNUOa3Y1BnuW9OHlwBkR7NDZ7tc3/CvyNairvK9XXd3eI4btwHR0r9zqxlNEIKO7P94RlqybQio/HkGfVDxTzLjRWKEdzafF4qU5KuFQ1FfZc4HcqRT4uri6bNAbqBt8ZO5IwhsEte+CdSaFVfSw0BabHQtkrqeuzi657Cn0ZJpBSlRDY3r+qhJxKV3OjaoVWaP2clBHfPP0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(346002)(39860400002)(136003)(366004)(8676002)(8936002)(82960400001)(4326008)(2906002)(52536014)(83380400001)(33656002)(6506007)(66556008)(66476007)(66446008)(5660300002)(4744005)(66946007)(64756008)(76116006)(41300700001)(55016003)(55236004)(478600001)(53546011)(316002)(186003)(38070700005)(107886003)(54906003)(9686003)(38100700002)(26005)(7696005)(86362001)(122000001)(110136005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FxlPMGeK/P6dwT93XRlJqI+wdu+Lz2W2i5Kqo0g94lglWM4eH6yRZWP+gOuS?=
 =?us-ascii?Q?nX79P6kyUSpNmkl+Fvy7fylKQGXM1ocMWUA8hUtyid3hmt1WBm3GymMlenfL?=
 =?us-ascii?Q?22/OFn9ByYw5O8Shg68O7W0gPkXCZAMT6nVwF1S7KeRz7f1/xlCKFhi73hNh?=
 =?us-ascii?Q?hRtoks5ri0iKz6UhCW1HJXvxRRu0N7FpdrA5B5H5Kzz8Lklv5GtS2xupHtlh?=
 =?us-ascii?Q?1ThqlPyPJzDl8W16kHVkutLnIEuxiWr81uuZGzWogveiy39EGdVGJE6AdO/b?=
 =?us-ascii?Q?HkIkTAelxBMbg5O6ZV/I2krSoKq7YRlA8L2pA/Ia1bTAaDBwqPPamPvW8bAV?=
 =?us-ascii?Q?5Heil9y2bFausytr2IwOTHl4Z61XMfGM0qz/pvPyQECTL4kFuW7qeQrjZzuH?=
 =?us-ascii?Q?GAhHI784MKqgEpnYg3UeITB+bPAnnHUQJlxpR+6pMFgdmET36tq+ni+q2Ygr?=
 =?us-ascii?Q?pddHCNkm8LVfP9ucPxj1jbK31ZgPSHFrIQSD6rkwF7PAKZvK421Oq01yn82L?=
 =?us-ascii?Q?OCpRVsuP/crrXlxMIo5Q6GXLaXYIlnV5dniLnBv+9kZtcKzOxqjTtfznnGCr?=
 =?us-ascii?Q?Kd1aDniehU2OsB+xztWHQ73wtIOT2zAEk0xTCLwAKHRx9AQ5/gY+0Jsl9s4q?=
 =?us-ascii?Q?s2/DX0itiETpy1aGgpPhq6nv0dicGysttSRlSFSKFxMzi6gDINL03iVj23rb?=
 =?us-ascii?Q?yoKsjSbaRLgY66BIoZCveMH5pk06dz+CU5orWuj9d0j6RaL4SXLq14JZn+GP?=
 =?us-ascii?Q?IdxHv5E7TKLxOkkElpVwjS8M05cT1erNxVKg5lg4ojwWUmeA8bBtbUbOPNcj?=
 =?us-ascii?Q?eINyWNjalTIPV9wPpcaAqzp4S8VuadUxjb/YvydvxbgQxJUWkjNqHmsiFUUX?=
 =?us-ascii?Q?lZGVG5+bbBphRESEe1x56GHZ7XNtyZKXY0oQNijdorFkMO157W4JSTDNSp2w?=
 =?us-ascii?Q?3pziXklzxJVRtuS0QC8iCXmH3tmy4wG6PA/03wxuXkx7KLfd5Y/lgKLF5lqH?=
 =?us-ascii?Q?icUOfbnuYvknnxWRte1BZbL6kS4l1kTUbs+UZOG1qFaiJn3XVAJEcWFuO3Md?=
 =?us-ascii?Q?ZWne7FD2jlwkp6qkrav9cdytFh7nodwWuBhnVDty1IeBjGJFTks5eqhUBkZW?=
 =?us-ascii?Q?Ej3XZvg9kjqENm/HyftpVFIsQRBeU04+ZHn81g8NGPqM5Dt6m2/aqoHc2s9O?=
 =?us-ascii?Q?A9hI20PC1+hLh59ns9xXsfM+kx5XxP9Fju7OvHnznYRYaWo0jyYnsea+ENRK?=
 =?us-ascii?Q?lfadhSisf9JDyQKI8riEIzm5XKdGNu5tRRb8QkO3BOh0cW5uxFuEOkYGPHbI?=
 =?us-ascii?Q?02fJcz9fslRmwUezfTvZwqL51Gv+mQdFQeO2MqvFKGlnh6WfyPPJhuc5RYXY?=
 =?us-ascii?Q?POw8GL/tXan0+6yey2MGCZBl6plmY4Lifqb17Sj7dZjsGABCIKvnPV0aKnGc?=
 =?us-ascii?Q?SEgKXUlhTX+CAJYeXhuYjsweccCczCTOTWU58uo70btB0n3kopCjwrQDmerp?=
 =?us-ascii?Q?ev6vmdUkm7Lb3Kgx+B6pdQQ+lZteJm129MsRcMsl20KMrlMeNEPO+TZMLGR6?=
 =?us-ascii?Q?c89btlA+K/qEHdoCA4RxyMJbDafHvH7iq1cJcPhX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68b9b734-3035-4048-26fe-08da7c1c6375
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 04:37:39.5584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AakTJI4srRuppmHVF2b3GAeuU8T6B9QoVKn7QJD+VPHgVlGU+oeKJEKNgDsValfIWkzW//Xu511ewBdXZZMlvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6140
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/39] drm/i915: move hotplug_funcs to
 display.funcs
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 04/39] drm/i915: move hotplug_funcs to
> display.funcs
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
The commit msg becomes same for the patches. Can it be more precise as to m=
ove all hotplug related struct under display sub-struct?

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
Upon adding proper commit msg
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
