Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 976ABA35BF5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 11:57:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62BF10EC4F;
	Fri, 14 Feb 2025 10:56:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MOR65c8t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A26B210EC4E;
 Fri, 14 Feb 2025 10:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739530613; x=1771066613;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=wteO4kX7o9uD8Hc9Pl9I8FzcfB8pwHwO80EaBP4nbBU=;
 b=MOR65c8tsoSo7n+HHxNokITrWmfaXcfTQrj4kqULwpqPTxBrUm3VumkQ
 AZlK9Vp1B+ccS2XlSld6Q8O+dEqhtwbyHjlyBdgGO5YhSkARYIF3Qquxe
 NnMA/ZujkT3Kj18DInZ+2WqCnbuSHrU4sN9Q/sqsYB4RnQqJKUDoVY4p7
 LWIbHNoLuuBCwO4ZQ7rLUObbS8XRPfiJUaWnMDHlwGf7M3EVmS2Fobcsh
 8Q9Z6ZZmf746LiBu0NmN2l13ZRCr4aFxFrfcJjeMlzgUWu2LQ+j5r+eSP
 sG3jfSTRMGiLHkxm1J0Zqr1xvcz/gJijd5DVKMI9VaeesxWwa6Opbctet Q==;
X-CSE-ConnectionGUID: 3D7E5IRuQBq8mLDRKeAwAA==
X-CSE-MsgGUID: E1xtlXbzRxWgduYzH+zTGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="43112689"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208,217";a="43112689"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 02:56:52 -0800
X-CSE-ConnectionGUID: XK5muKoLQKaNaZ/wV9GDTw==
X-CSE-MsgGUID: IxY572AETFWx9aO993ONJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; 
 d="scan'208,217";a="114069483"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2025 02:56:52 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Feb 2025 02:56:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Feb 2025 02:56:51 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 02:56:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qwLoxnjVoQXCtivI1A+lF45x81yPR3VP42xIawOYEWdHVOxltrKkWj7vXvuaUP1ivNbpeNh3gpZI5uej15I3OjM7t7P1sSSsqX0AxOGRXgLMSVpqNZSThDXU/5OZ/sIFECnfTMQXqOsSWcAc9t/9eMJ8aW414WCnzwrSH54OBknTFVVm4Fm6tdHDgrgM3ywjl1KS2eOMTdytEVbuSDm/hDLoCYz+dC1P2kO+Kegc8mACxnwf/l0uK9WIxBeLixfRk1Q2ncZG3GxvQTdE6nw/H4fQbzS198wXVLJMNLMBhF2jIrHvXR6NIpOUqQG6bDPXbcn1xwstX9OM91D8VG6nXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r11D+RWNsCAy1SCUCqsIxGZeoZw8znYLAoI8aVIAKXc=;
 b=OQW9CLnh2SLl0YipchCWVLjAQZywwrWKBRU2Djo1bodk45A84ldbygt4PfSU+mtCpqKC3VkbzwEIVUJL7ryz6wZzSyJFNYMeDcJUuws4fxf5y8o47E1kAxUYhu+bj+4rHMvdhhwXFIPC+POekDGMhkspLczk9KBB/GKYucSOCYZ8S/mXo/jGPceoLiuJ9iItTMaGQocHDaSyzYeazwZxBKD7b3a2vFFxcMSYBhzGxm4j7Bg5gMN2vIkBPzeaMhMsz+PWt6HkiN8o8vuy2g7lIIAjH5VL/sJSZu0fO4Dkw88tBaUdtBeMUaeJ1x8MoB8iyo6olkew2wyPQusq547Viw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Fri, 14 Feb
 2025 10:56:01 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Fri, 14 Feb 2025
 10:56:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disable
Thread-Topic: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disable
Thread-Index: AQHbfgjKbuyZLdROpk6qjPt7J2dUAbNGM93AgAA09QCAABEDEA==
Date: Fri, 14 Feb 2025 10:56:01 +0000
Message-ID: <SN7PR11MB67505C3B330A507A6B3F2D53E3FE2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250213111628.2183753-1-jouni.hogander@intel.com>
 <SN7PR11MB67505CB0547E75F422B24B92E3FE2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <6935c062ca74b347064f260787c2ac6c46dfd5cb.camel@intel.com>
In-Reply-To: <6935c062ca74b347064f260787c2ac6c46dfd5cb.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB6909:EE_
x-ms-office365-filtering-correlation-id: e54d350f-4841-4c63-5c8e-08dd4ce62b6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|8096899003|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?e9mx4eCRzhe9bpZkn/v11Gi9FMa8PWXcFupUV0ZcIUmEIS/VejqE0n9T4j?=
 =?iso-8859-1?Q?qQLj3EO6nDo+TRl3ikXkfxw8BPtiJcLXG0regpwbBrz+LVplRWZt4R7/n+?=
 =?iso-8859-1?Q?rS/eigl7PX2NXaUJeMxiGLgrd1g4upFlOMVlrgfHEiyl+lbKItNbGuGgdw?=
 =?iso-8859-1?Q?RTedWP/jjtHVfXdlOZ1CPU3Fmo0DS4FHOd8XKk8mPgul1lmo23+k6pNBV+?=
 =?iso-8859-1?Q?FVQ08wpvYX+EQNlZInmsGIVcuvjL7bI3O51crBv1v2G3QZ0jhYSFr2QhiI?=
 =?iso-8859-1?Q?25f4YUY+3tHd8UxNWB/hFThRxeYegXRCLf341rVW1gz4qB8uW/vv541YH5?=
 =?iso-8859-1?Q?yiellNiwT82Ql4lfVeoXfutrO2vseN3QZMW7rWVH5JI8/h643WfcStnCx9?=
 =?iso-8859-1?Q?Ywy3HEVH8mxjJKjC/1rxvVTpJy09c/KSE4SZaQMCRV5w/yKNwu83OZWz3B?=
 =?iso-8859-1?Q?Dc5H6P867sfWvfiSi6sANNmw61kWW1NnHH98sJ8LzjjVNeoMjUNdswO9fA?=
 =?iso-8859-1?Q?xvQNp/cbI6WOdHObpS0746Kjfa5Z/Xw6uzFdsHbqwsqIpgdYvp4bfx5h8V?=
 =?iso-8859-1?Q?+kVl4OW14LcsY3wJ8o4WiXfbKRvHSsd1WYcTEK0nmUjBJ94jM7A0vLVl3h?=
 =?iso-8859-1?Q?AMiAhfW/nBM/J3bEYIbkzy0kHamHmB+N8FVN1WMSfru7VZyyhgeZnfBAXp?=
 =?iso-8859-1?Q?lRtC2jM0IlbgznEP2XGIrdSYH9orkve52gSg/g8wGQKgvpFKEyl555I40X?=
 =?iso-8859-1?Q?wOIqVh5cVec1xMQprjpdtUBsP3Rdbj0iyqwqhtreml74Uf/gNBGqaH54P4?=
 =?iso-8859-1?Q?rpol48jtdZZGSZ6xsmWvH5liYPn5q1l27wb6iJ+eaKUAwDTQ4v1bumXrAQ?=
 =?iso-8859-1?Q?BnpYcEghjY3Sz0Hr5OnUGZ9kfxNyoKdcrWmyhdMcgPNEJqeLpwfJPCO7mW?=
 =?iso-8859-1?Q?8FXuAxd4T9SgYmUNjtecoZ7snBIA+Fydox05nh3z9dFVJ+yrMo1mDXcLfl?=
 =?iso-8859-1?Q?+ymbLFbyLFlzetrPgdMBE9Xh3jxYBLP8Y/6WLqbCyYgXE8AZtaUXGge82Z?=
 =?iso-8859-1?Q?Hj7yffjXdKdppFN+pSkTOH+bpNT+ewqGty74NtF8QKmmCrRHloRQBpMPUb?=
 =?iso-8859-1?Q?TFm9lPuo5OvGeTGR7Tfv5NLJ8zFpi/mtSopqdKg0C6uMKLm+/Fn4Glw4Pw?=
 =?iso-8859-1?Q?t/b1crdmRZu7hEDHOC2uOejf+3zj2v7MVrE10h7VKyxellD4gwaKnoSS+t?=
 =?iso-8859-1?Q?2Ct2lXOnANmctKlrTtMfzdj186wUgtYvb0DEblYnBOwhnX2haJc4lMml3f?=
 =?iso-8859-1?Q?TJ2Kxdp0Fj/6X9D13VKUOuFj8XDNaaXv9IOzTvVKBVfQSo6uk/k+ya9ZP5?=
 =?iso-8859-1?Q?hVt0+0Esk2Q8TFUYTa/DmCcnp4ZD+AWiWUWiJBoosDYQbo0NBluRDyXmzL?=
 =?iso-8859-1?Q?oOdi3tI4r4FNbGVwwBKXf4xf27g5quZ7ZFwoRVP05C3Dy/RkiZZDvpPVFj?=
 =?iso-8859-1?Q?i59m1F525f7903K/CzPAa1?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(8096899003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?zXsTFW7ZYi14LqSWaZMd8mu4hFU34GfoCKNDQRpwD4H7eecZVtq+O+fBSG?=
 =?iso-8859-1?Q?XBoBVou5aiL/cOnWSeExU9hrQADmGOqveCNdc8mTgjOPfUV8DYMNGd/ML/?=
 =?iso-8859-1?Q?7RGylNwy5b7Jy/YKhlxY7NAP3QsLvNJXBQvPllmlkfBipDuA6z7XBlqLiS?=
 =?iso-8859-1?Q?0QjnG8UWDLWMg1Vmv+W3R3B4GtmClB1ylfhAW/7HZvdUd7G6uK7EC/YCCT?=
 =?iso-8859-1?Q?fCUNUuazSfb/mTQyl+kOTutkNAtF6+LnqDjlUuVTwgUuR7QJR/f7y1hQGo?=
 =?iso-8859-1?Q?RVEk92x9mjAGYtIB/JSUZ/i7ggC1v40OVL74dtfQ8sYkl3vOQAC33DxEMT?=
 =?iso-8859-1?Q?WaDhob/ZUdKbmalJ7d/S3F2byj7VSeRtOdmOaxo42MeUX5J0CLnbCJ/9Sb?=
 =?iso-8859-1?Q?k1AGu4AJNaqjPH9Xj668wwBu5frUv0nAExuHqW0wP0Q/dYRumClCYknsul?=
 =?iso-8859-1?Q?n+0X82H77KOqpQa46zYtTdl6vGcjrkOPxrcQXne5WbFiq3ZA/nr55xbKr1?=
 =?iso-8859-1?Q?afLIgn1f/z4Fw/c5Y2BWhGvL0GGk2fEWEqdYXqSVB9pKRP68xkeI2I6n29?=
 =?iso-8859-1?Q?LZSMVThRcQu/vIKCWrd/JCGRIW+3pDbLiLJU80DIsnyOMCKPJHej4bEiCZ?=
 =?iso-8859-1?Q?wQQ9gJmos/on3t3jyYoXdUeng1HJRVe0+mPbKObd3cp/+qHLGbApqKCCPj?=
 =?iso-8859-1?Q?6UHug5kMHMUSR6IUAylxGkxtk8P9Putve3sH/mj1dZHUKjVHpfduQfeCZC?=
 =?iso-8859-1?Q?dzrPcCzAmC6A/9RHm9f9Vrj2VD1fc/1Dq/TQ/pDJ6QuZVcafu5vRMFg5Vn?=
 =?iso-8859-1?Q?58PCCfmaqE1nk/SGk24Rf2dFERrPRCftqCdHqlbQG04rLF8bnzMUEGunoN?=
 =?iso-8859-1?Q?KoyP5uF4xT1Zu6MflHUZlmvObaX6RljAk0fZl2t0wFN4AhSoBwW4AzQmR+?=
 =?iso-8859-1?Q?9/p2TGd+E6POq2UPs8+1FjxfXi5Y5U3+EqlTdvmIvtQKxL2hiYLERU+LO4?=
 =?iso-8859-1?Q?yDWXQuTj2dyrW0luZBjSrw2c5J2Lcwbj8E6Hu/5NE7NDTgYbfTEainPQJp?=
 =?iso-8859-1?Q?aLLJqdXjSPA2AH1aWZKA59AAIRjFdedm0wGxMN8iv45ZuL4ILiw600R2Mf?=
 =?iso-8859-1?Q?OerR4v5nPM+L6AaT1A9TWlBRdYg/RGSjpT0UxLFLGAn4xINOyVZZ4S7yxI?=
 =?iso-8859-1?Q?CFnTvVQ3jTApWp6aQsTQp9FS7XLvZh4RQZvhsyNuyrpm8QuRJeEuByz8pC?=
 =?iso-8859-1?Q?ze2G9zxEC/6V+nQeJAirgk6pVLp3yKb3bQvW0vPUJX7VQ+mVDnOCf7it1V?=
 =?iso-8859-1?Q?9OjBnj3JA8rodWyMNdVn0IV8H9yosg5EP/Cjrmya2aOPYFyJ1Frdlea32G?=
 =?iso-8859-1?Q?SMfoy6GilDRCyiVJ39ELd98El2F38D0djCYzmt1CZ6/DJCXHyiMpKm/v0C?=
 =?iso-8859-1?Q?na52Se+0I4Pa23cI015Om/CWDajaRiMgoN+DFgnY1W8xlU456wXNvTQ1Pf?=
 =?iso-8859-1?Q?CIzMY9qB5cxMKAwpxM8qnjaZPmPw6nE2faxfozWzfFI547cYF6Hd07URdV?=
 =?iso-8859-1?Q?dEHDJiQK702O9uYDdxT7sckqe8v9BXi4qLYMXbBbQMgYgZM2o5nZJlWQwy?=
 =?iso-8859-1?Q?sQiMl5+W9aX8qkENU8v1aln6XQNXig+MIt86YbEVvJIwGnyVzYoIJdTA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_SN7PR11MB67505C3B330A507A6B3F2D53E3FE2SN7PR11MB6750namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e54d350f-4841-4c63-5c8e-08dd4ce62b6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2025 10:56:01.0837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2b3UBBisotk0xAA7DDGqP7ZnJbLdYblzH6ViCgL2YkQpLTlG6rw7PzbI63vrMua5lsdGJFm0749t0KH+JIeWeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6909
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

--_000_SN7PR11MB67505C3B330A507A6B3F2D53E3FE2SN7PR11MB6750namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Hogander, Jouni <jouni.hogander@intel.com>
> Sent: Friday, February 14, 2025 1:01 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disable
>
> On Fri, 2025-02-14 at 04:27 +0000, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > > Jouni H=F6gander
> > > Sent: Thursday, February 13, 2025 4:46 PM
> > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Cc: Hogander, Jouni <jouni.hogander@intel.com>
> > > Subject: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disable
> > >
> > > Currently intel_psr_disable is dumping out warning if PSR is not
> > > supported. On monitor supporting only Panel Replay we are seeing
> > > this warning.
> > > Fix this by
> > > checking Panel Replay support as well.
> >
> > LGTM,
> > Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Thank you very much Suraj.
>
> >
> > Note: Should we be looking into separating the code for panel replay
> > and psr with functions being Shared between the two files ? Will make
> > going through the code much easier. Just wondering if that Makes sense
> > in the future >
>
> I'm not yet buying this idea as they share so much. I have been thinking =
adding
> helpers for the purpose related to problem fixed in this patch:
>
> has_psr() // psr1, psr2, panel replay
> has_psr1()
> has_psr2()
> has_panel_replay()
>
> that would ease readability. What do you think?

That sounds better specially keeping in mind that psr checks happen all ove=
r the code and this
Should reduce some confusion when it comes to checking psr versions without=
 having to really have a
Deeper look as to how those variables work

Regards,
Suraj Kandpal

>
> BR,
>
> Jouni H=F6gander
>
> >
> > >
> > > Signed-off-by: Jouni H=F6gander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 861e50ceef85..c77eb1ba3db3 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -2186,7 +2186,8 @@ void intel_psr_disable(struct intel_dp
> > > *intel_dp,
> > >   if (!old_crtc_state->has_psr)
> > >           return;
> > >
> > > - if (drm_WARN_ON(display->drm, !CAN_PSR(intel_dp)))
> > > + if (drm_WARN_ON(display->drm, !CAN_PSR(intel_dp) &&
> > > +                 !CAN_PANEL_REPLAY(intel_dp))
> > )
> > >           return;
> > >
> > >   mutex_lock(&intel_dp->psr.lock);
> > > --
> > > 2.43.0
> >


--_000_SN7PR11MB67505C3B330A507A6B3F2D53E3FE2SN7PR11MB6750namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<font size=3D"2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText"><br>
</div>
<div class=3D"PlainText" dir=3D"auto"><br>
&gt; -----Original Message-----<br>
&gt; From: Hogander, Jouni &lt;jouni.hogander@intel.com&gt;<br>
&gt; Sent: Friday, February 14, 2025 1:01 PM<br>
&gt; To: Kandpal, Suraj &lt;suraj.kandpal@intel.com&gt;; intel-xe@lists.fre=
edesktop.org;<br>
&gt; intel-gfx@lists.freedesktop.org<br>
&gt; Subject: Re: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disabl=
e<br>
&gt; <br>
&gt; On Fri, 2025-02-14 at 04:27 +0000, Kandpal, Suraj wrote:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; &gt; -----Original Message-----<br>
&gt; &gt; &gt; From: Intel-xe &lt;intel-xe-bounces@lists.freedesktop.org&gt=
; On Behalf Of<br>
&gt; &gt; &gt; Jouni H=F6gander<br>
&gt; &gt; &gt; Sent: Thursday, February 13, 2025 4:46 PM<br>
&gt; &gt; &gt; To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesk=
top.org<br>
&gt; &gt; &gt; Cc: Hogander, Jouni &lt;jouni.hogander@intel.com&gt;<br>
&gt; &gt; &gt; Subject: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_=
disable<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Currently intel_psr_disable is dumping out warning if PSR is=
 not<br>
&gt; &gt; &gt; supported. On monitor supporting only Panel Replay we are se=
eing<br>
&gt; &gt; &gt; this warning.<br>
&gt; &gt; &gt; Fix this by<br>
&gt; &gt; &gt; checking Panel Replay support as well.<br>
&gt; &gt;<br>
&gt; &gt; LGTM,<br>
&gt; &gt; Reviewed-by: Suraj Kandpal &lt;suraj.kandpal@intel.com&gt;<br>
&gt; <br>
&gt; Thank you very much Suraj.<br>
&gt; <br>
&gt; &gt;<br>
&gt; &gt; Note: Should we be looking into separating the code for panel rep=
lay<br>
&gt; &gt; and psr with functions being Shared between the two files ? Will =
make<br>
&gt; &gt; going through the code much easier. Just wondering if that Makes =
sense<br>
&gt; &gt; in the future &gt;<br>
&gt; <br>
&gt; I'm not yet buying this idea as they share so much. I have been thinki=
ng adding<br>
&gt; helpers for the purpose related to problem fixed in this patch:<br>
&gt; <br>
&gt; has_psr() // psr1, psr2, panel replay<br>
&gt; has_psr1()<br>
&gt; has_psr2()<br>
&gt; has_panel_replay()<br>
&gt; <br>
&gt; that would ease readability. What do you think?<br>
<br>
That sounds better specially keeping in mind that psr checks happen all ove=
r the code and this<br>
Should reduce some confusion when it comes to checking psr versions without=
 having to really have a<br>
Deeper look as to how those variables work&nbsp;</div>
<div class=3D"PlainText" dir=3D"auto"><br>
</div>
<div class=3D"PlainText" dir=3D"auto">Regards,</div>
<div class=3D"PlainText" dir=3D"auto">Suraj Kandpal</div>
<div class=3D"PlainText" dir=3D"auto"><br>
&gt; <br>
&gt; BR,<br>
&gt; <br>
&gt; Jouni H=F6gander<br>
&gt; <br>
&gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Jouni H=F6gander &lt;jouni.hogander@intel.com=
&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt; &nbsp;drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-<br>
&gt; &gt; &gt; &nbsp;1 file changed, 2 insertions(+), 1 deletion(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_psr.c<br>
&gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_psr.c<br>
&gt; &gt; &gt; index 861e50ceef85..c77eb1ba3db3 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_psr.c<br>
&gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_psr.c<br>
&gt; &gt; &gt; @@ -2186,7 +2186,8 @@ void intel_psr_disable(struct intel_dp=
<br>
&gt; &gt; &gt; *intel_dp,<br>
&gt; &gt; &gt; &nbsp; if (!old_crtc_state-&gt;has_psr)<br>
&gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retur=
n;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; - if (drm_WARN_ON(display-&gt;drm, !CAN_PSR(intel_dp)))<br>
&gt; &gt; &gt; + if (drm_WARN_ON(display-&gt;drm, !CAN_PSR(intel_dp) &amp;&=
amp;<br>
&gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; !CAN_PANEL_REPLAY(intel_dp))<br>
&gt; &gt; )<br>
&gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retur=
n;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &nbsp; mutex_lock(&amp;intel_dp-&gt;psr.lock);<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; 2.43.0<br>
&gt; &gt;<br>
<br>
</div>
</span></font>
</body>
</html>

--_000_SN7PR11MB67505C3B330A507A6B3F2D53E3FE2SN7PR11MB6750namp_--
