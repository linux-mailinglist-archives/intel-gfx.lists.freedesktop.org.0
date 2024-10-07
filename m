Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F316E99392C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 23:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA1E10E439;
	Mon,  7 Oct 2024 21:27:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zg1pIph/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46F2710E439;
 Mon,  7 Oct 2024 21:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728336455; x=1759872455;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wxM+dCG/9fp5Yb4WnKgaUl7CaTXHUkvLOHV6/ZXLgfo=;
 b=Zg1pIph/YpUCBdZiMNSBXLf78cvmh63+z+jfKU9EsCJdFillMG+jJ/u0
 ecDLK7Rr94YP2odQF8NxyOxus0BNTqy6HjoWHbEvPYwrzgULI2bIL3jbG
 8UveYEVue5uSYNVJ4zKqfHI1FgdoDMlr76ZtGsreCaOguSnC/SQ/DbKHk
 v232oKiH//9Ylh4NVt2wdm1nR5nIeBM7s/1l/M8OGc8GL3R9JRvYVpQMo
 0/tiYe6lETDkAlOKjMpGCml29YlfyJERoOjGwtgyycqPjpht9aCXxpOTm
 S7NCQEteD8OOlYV0hGUPCZGpS0uBNB+HJ9F/v+9K6WGJ0z1zTEpSO0CAw Q==;
X-CSE-ConnectionGUID: ObeJ3A3ARnmsvZsww2nFJg==
X-CSE-MsgGUID: 4ClyQBG5Tkq8ye00ZcRBsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="26964583"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="26964583"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:27:35 -0700
X-CSE-ConnectionGUID: XCt448XmQqKtu5DGuwc+0w==
X-CSE-MsgGUID: GZ0/dP90TlO16z1wMM5U8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75445231"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 14:27:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:27:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:27:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 14:27:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 14:27:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I4dQW1DA52VaT8EG3ueypnD2VOcGJVT4wm9Mka0aStUHRzTkMP4TWqzmPUEushEuCrh52XSyY3zEkpaZ2KCvQBxutSGn/X1Izw6+JhQhUpMtC8g2RRC5Ytp2Ft4eVqytenuQT/RTII2W5UNp/fElR4Eenqww8EpxMjDXsSG8SRnTrxBvnEL6y4QbKhBzL+ZeaTWhyOQnIfgSIQFbbm+G6oSPyRge7LaLHwJsK1yraZWpnWxxa2mOTxAVfT+D0LzZ6Zj8NEXhI2hoKyP4ti4We/IipckP1uK7K3MLlP/qnTyC0UmyheGm1+/IZmG3csHlQWu2Q9CvDIS0xAJzMNbDxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TechLjuiJHe1Vr1x7lSVOMIroBuZocQ3aH02BucDjzs=;
 b=ZL0bU8lBoDg/2N0uQmMrzAr1mSNk1Nfxy/mIreu21JUskbNydCc942OBwgecYcyg6q9De8Q1v+mc+TAlPUlGAy0HxbXlMhgvE4ZFdWbX/QXqW1ozIrnBI4AxuLsSr+UyuFdVZK4HcLcp3/0wwKRLFg+FqSjMuTrDhCXWAhs8rJ2op2SHOi80g7lWEYJ5bCPAKW1nVk60Szwxl6i3UQmOxVpbr4UMqdU6drx8XQNroSptGHTs56ilsSA9WqqBvzXPXk6OUoDuh+KXpydGh3QN/d/7l2kyS38Kq8f9kereKmJ9hfNjbcbJ7UEhXfOvsImRca8baLcLj2u/vwjjscSbGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by IA0PR11MB7402.namprd11.prod.outlook.com (2603:10b6:208:432::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 21:27:26 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 21:27:26 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 17/31] drm/{i915, xe}: Move remaining intel_power_domains
 to intel_display
Thread-Topic: [PATCH 17/31] drm/{i915, xe}: Move remaining intel_power_domains
 to intel_display
Thread-Index: AQHbDsJ24KeTLqNLxkOjtgDh5mHFaLJ74ZZA
Date: Mon, 7 Oct 2024 21:27:26 +0000
Message-ID: <BL1PR11MB5445DACAD05708C7C9FF900FE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-18-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-18-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|IA0PR11MB7402:EE_
x-ms-office365-filtering-correlation-id: d23d1085-0517-4ece-0089-08dce716d6f5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?E3bjv3Q9UEubjLQ1VfEvfYQqulodkaBY60H3Q/ZlwkoS+x5qQhD+KTnin5Tc?=
 =?us-ascii?Q?oQTVJz2DQRO/0lHqafalA/ULHlimX6gm9sDy/E1o6gbK75HBMoE12KAVU1mL?=
 =?us-ascii?Q?Gwj3Be2qJDj2cFHu7QjlsYy0c7CmvzYowQ24gEklUQv+ofBpOOWV7ZV9DWqM?=
 =?us-ascii?Q?YuAunXTLnrwANnwVosPw0IiC1u7Yuo958iatVhpCWI+V81YZmks1o6GxuAOH?=
 =?us-ascii?Q?N0rTwi0/pnFEEhV2I74SDl1Pks5E1XGws3lwPYYzkPHKDkcfqyEph8MWnGz0?=
 =?us-ascii?Q?KWLne5TtSCaF48AIkf68ifM4qjjUDLBB50gL748bK8GmJ9s2PZNt+O3wscNM?=
 =?us-ascii?Q?vm0JGBLE4EzDOtoFISPog3RRyScJzwJdFtb60YwV+MAmFrZphapoA8UY6Gpq?=
 =?us-ascii?Q?7oj49GKPFgJ3tsM56YJFW9vWxTHPcKb22JzCj2bU/pnPZkAD9xcNthDlv++w?=
 =?us-ascii?Q?gg7ZvaDFNRTHGw+DQecQ4FijwO2Bb9MIYlhpVFv0AF5hmisRdgIVuDJTP+bE?=
 =?us-ascii?Q?3xwjxnP/7ut2FrFAgkTAeSwjZvmilxEXyLDzrh1xZftww9heVUAfmh2CFOX2?=
 =?us-ascii?Q?ZL/si1W4n/2c4bpH2t+AMRD6c8vtBJcY9IaFzR4GhBk3wanzapJnshiQx+fS?=
 =?us-ascii?Q?FV/W1gCFd2CjScfrJhpqAzWaAKB56OVCiEF3iylDJXh9hli1OtIrCKuY1qX9?=
 =?us-ascii?Q?ZKgkKal/Dk8Pgzn06LXaLOcrx5CHGrWv7vpA9H/E27aoDeZ/5DcxIN8WLPOV?=
 =?us-ascii?Q?9/XIyDBtEwUiSyK3KXYTOtmDPyrffMPup+ty+AlumiauBCWSplm6FaISoK0y?=
 =?us-ascii?Q?c96Og1H+50E6UBlZCzMs68UaML2lECD3bhlR1wFTnmU6EPFvn3w7Vl+M815Z?=
 =?us-ascii?Q?E/g/cuHMlf+4yBXpPXdWfUL0Z72epnvb295zgvary907F0tNX2bAAJhqTukT?=
 =?us-ascii?Q?GADsWS3wjj2bUKtR8JGOrB6r0nm+JPNL7HPm5AE09GWHpO5t54T0zsm1IpNn?=
 =?us-ascii?Q?YVznjAFWHwgKUQDuGxcbV20iTr16ybDMIJ6A+W8aH++uPXj7mq+7vJ2OL7zM?=
 =?us-ascii?Q?pcUlFteT0KW89ntZPh5bwlkj56NCz+KSAdnApK5/ECPynfN6pUMsdx5kSvcm?=
 =?us-ascii?Q?uVlQMrcWnYz3u4K3J8kehuMt/631jFT9MKQS4GkHZTtrXBT/N7qhs0O1gYr/?=
 =?us-ascii?Q?gi+bY8+BiM9rg99GWxUo5wKhVHfe3ej2JzkrJeIfUbI9+7fAiRQaBsQqUN5q?=
 =?us-ascii?Q?2SOl7KEZ+dPTT1x/brSBkaJYEwqQkdoICHGjwGeJHMBHZhejKvE9x3rTxkCa?=
 =?us-ascii?Q?hBwraqbRGFvp19Q+abClRQCnj3z80XLMZFONCVP++BwsBQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uRARjDCsCRSO0vs9CChif2SZ+vzlvSk1mam8dt867Tfk535x6RJfekBCZZOf?=
 =?us-ascii?Q?UMIgEg8Q+ET8X/bxqwu72JMfbodeJz8nNW7Sdp6CQf5cK9mCKWgki20ZLp9w?=
 =?us-ascii?Q?XSjc9qD74osJUtcHHeDPUIiBeJZwNFkgMiY+4ataEW8i5Tsa6dLuJcwb7YQe?=
 =?us-ascii?Q?f8Ax1v6Bz2thvTLbPZqYPAfXh+JmFiMXM8IYNmT2YRvqvNtEVYT7zx1JHluk?=
 =?us-ascii?Q?ZVTG/cWkPGUENDMJKl3SLQSaI1TihNPhP7z4BZLhoAh2g0vVLnsDWdiv0oAz?=
 =?us-ascii?Q?PyEwJXC5B2vSG5ySDhBuq+OzVotM7fVGgtmg1GPQLuGFgSbYe5MtMk1Z98+D?=
 =?us-ascii?Q?GgNDwgoky7PrQQLTheDCGUNjCKPPcXpopZBRDOE6LoTzZRqqyTxq35icrzq0?=
 =?us-ascii?Q?4OYFdEFDFZf5bm2wH9BPDhiT5gXPgg9M0nEPhhWIvDjxJ/9UknZz2JqDxnWl?=
 =?us-ascii?Q?bw+mWvaFouarHE3eN4WKdCh9tEK8Y4fYbLeuUP4YDkGyJo1iICvfHkOgSJd4?=
 =?us-ascii?Q?z0J6v1hfdjbzn0XuShospOF02wPvltKz/eB2BppF1j93gsrLhFBGSdFSPm4/?=
 =?us-ascii?Q?Thiq1g2X8QeptySJXBo56lQMgcViqOKdDhJQQZfUFohbFAGFMkTAtrISpt0k?=
 =?us-ascii?Q?zGl5whaa894XWJQVbJlCmqKjTm9U8tefsfdgaYaepOUXICjjcGCni42uFJ1P?=
 =?us-ascii?Q?RJhbbVh9mhSuSqrAfyrb+xavNxnwrG4hDjvRwlAVrUJpjb3t8wusOD5c8CT1?=
 =?us-ascii?Q?9gBhKNMoIBkGJg8wr3P5tSgSsZ8Lo2/zjM8sie/GXRsATuCoPBMkYYo+OXlw?=
 =?us-ascii?Q?0wEArZ6IfIEyOGVXUcmCn9qgBBLtu1EG2pQ1pCojJpg1yvb+pEaZPc9tuexj?=
 =?us-ascii?Q?lJmCitV4tLQnqHox/VpjIld6AhV9annvBUO8U7VYiHahJ78xYk0pw5FZ6ON4?=
 =?us-ascii?Q?J+FPRA2Qa+rLxZFAWTfby0bSd77refD4fddYqnHP+ZanPYdLicRa9pYMJ4+t?=
 =?us-ascii?Q?AC60kwiTDJ7vSOnQ0HA9EViTAQargU6U7XfQOF0gW6YD9qt7PdKrUF6VF/pe?=
 =?us-ascii?Q?KASVe6oj+G6WqRAX9mRzLwGEXMSe37mVDt6KiUSedOWQVPVFq9YC4s5pjQ/q?=
 =?us-ascii?Q?MhxgoJOgWPYMS6zAXgXe77pD1Tu7Hm8x9rh0Pb74GFzO3E3y1PYAkhFeqQpO?=
 =?us-ascii?Q?Evc7WzZzJ7jER0FzLmAt6lnnadPUx+DN2KTBJsY9WrUUefbLbtWVy4f4xH47?=
 =?us-ascii?Q?h0+LHZakZXltABA/UU/+xq9fZUwq09OvXHcRiInrCon8H8JBqilvneSL2a5P?=
 =?us-ascii?Q?SI1GDOoDR3Klx2bKpV1oQyaVqMD3QEF++9iG1x9SK2eoqGIC4KFUps3krO+H?=
 =?us-ascii?Q?2AtJ4a+LR+QBHqoa9NCxx8aKgHHwK1Qgpxyv2bisztVH9S1Zd+hzpsnHZwxq?=
 =?us-ascii?Q?VZ3ZNqLx23s1MRjqks1Fw6T7f3NlHOtYW4SDSGwiBp32zmahMsLxPySHxUUJ?=
 =?us-ascii?Q?1OPzMij/iMJQfk6uyKzyNS5JbRAvLy14zc6wC4gHkw6ejAKskFxg9ud6iAow?=
 =?us-ascii?Q?h35lw8wN6x38FsU+zn8y65HUQu9NsR3gDZ5NzZlz+qv3MxAvXUCWjoksvutI?=
 =?us-ascii?Q?GQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d23d1085-0517-4ece-0089-08dce716d6f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 21:27:26.0818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BsY/vucuGvZ4ORMcszkdAREgxm5PLMN5H9KlkTKPtp8AoWAhs6BheIHBzIgKl6URB+1QwdSpFPU9+WiJsSi3yxEOYSKYX8eH0R6RH6H/11U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7402
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 17/31] drm/{i915, xe}: Move remaining intel_power_domains t=
o intel_display
>=20
> Consolidate the intel_power_domains calls under
> intel_display_driver.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.  I'd suggest splitting this patch into i915 and xe parts,
but for this patch in particular it might be a bit difficult.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 9 +++++++++
>  drivers/gpu/drm/i915/display/intel_display_driver.h | 1 +
>  drivers/gpu/drm/i915/i915_driver.c                  | 4 +---
>  drivers/gpu/drm/xe/display/xe_display.c             | 4 +---
>  4 files changed, 12 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 2a171cb2613a..a64468e3a052 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -563,6 +563,13 @@ void intel_display_driver_register(struct drm_i915_p=
rivate *i915)
> =20
>  	intel_display_device_info_print(DISPLAY_INFO(i915),
>  					DISPLAY_RUNTIME_INFO(i915), &p);
> +
> +	intel_power_domains_enable(i915);
> +}
> +
> +void intel_display_driver_cleanup(struct drm_i915_private *i915)
> +{
> +	intel_power_domains_cleanup(i915);
>  }
> =20
>  /* part #1: call before irq uninstall */
> @@ -640,6 +647,8 @@ void intel_display_driver_unregister(struct drm_i915_=
private *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return;
> =20
> +	intel_power_domains_disable(i915);
> +
>  	drm_client_dev_unregister(&i915->drm);
> =20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index dec93f2f37c6..4b2c041667e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -21,6 +21,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_pr=
ivate *i915);
>  int intel_display_driver_probe_nogem(struct drm_i915_private *i915);
>  int intel_display_driver_probe(struct drm_i915_private *i915);
>  void intel_display_driver_register(struct drm_i915_private *i915);
> +void intel_display_driver_cleanup(struct drm_i915_private *i915);
>  void intel_display_driver_remove(struct drm_i915_private *i915);
>  void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
>  void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 9e788e1c178e..53960326b68d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -281,7 +281,7 @@ static int i915_driver_early_probe(struct drm_i915_pr=
ivate *dev_priv)
>  static void i915_driver_late_release(struct drm_i915_private *dev_priv)
>  {
>  	intel_irq_fini(dev_priv);
> -	intel_power_domains_cleanup(dev_priv);
> +	intel_display_driver_cleanup(dev_priv);
>  	i915_gem_cleanup_early(dev_priv);
>  	intel_gt_driver_late_release_all(dev_priv);
>  	intel_region_ttm_device_fini(dev_priv);
> @@ -627,7 +627,6 @@ static void i915_driver_register(struct drm_i915_priv=
ate *dev_priv)
> =20
>  	intel_display_driver_register(dev_priv);
> =20
> -	intel_power_domains_enable(dev_priv);
>  	intel_runtime_pm_enable(&dev_priv->runtime_pm);
> =20
>  	intel_register_dsm_handler();
> @@ -650,7 +649,6 @@ static void i915_driver_unregister(struct drm_i915_pr=
ivate *dev_priv)
>  	intel_unregister_dsm_handler();
> =20
>  	intel_runtime_pm_disable(&dev_priv->runtime_pm);
> -	intel_power_domains_disable(dev_priv);
> =20
>  	intel_display_driver_unregister(dev_priv);
> =20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index d5be622f831b..df66e47daca3 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -107,7 +107,7 @@ static void xe_display_fini_nommio(struct drm_device =
*dev, void *dummy)
>  	if (!xe->info.probe_display)
>  		return;
> =20
> -	intel_power_domains_cleanup(xe);
> +	intel_display_driver_cleanup(xe);
>  }
> =20
>  int xe_display_init_nommio(struct xe_device *xe)
> @@ -217,7 +217,6 @@ void xe_display_register(struct xe_device *xe)
>  		return;
> =20
>  	intel_display_driver_register(xe);
> -	intel_power_domains_enable(xe);
>  	intel_register_dsm_handler();
>  }
> =20
> @@ -227,7 +226,6 @@ void xe_display_unregister(struct xe_device *xe)
>  		return;
> =20
>  	intel_unregister_dsm_handler();
> -	intel_power_domains_disable(xe);
>  	intel_display_driver_unregister(xe);
>  }
> =20
> --=20
> 2.46.0
>=20
>=20
