Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C570A17684
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 05:34:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 474DE10E138;
	Tue, 21 Jan 2025 04:34:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mOoBwit7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF0E10E138
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 04:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737434046; x=1768970046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4iSvQH/aIvRqxkmlHTf8erpks1AC4RrhwjZiCRAy3jE=;
 b=mOoBwit71QRQNVYTSY75bJ6xLzpI/TCb/3TDtekWeP7TWIU8PW8Z3JV8
 yYg0dcovX3rcoLnYnQMAEWxnceq/5439DYGDLqPtp4XLchCEAy257MIgU
 syzMgGuXkETQWKTb5F8CfO1vtLtLrWqpsMWGobvMPEk5mdhQ4p97+BPua
 yGVNgEJbkLHUdXEzfdfxhDnWt10xmj3gVgIoX2rmPLMvXOO3TfEt021Nl
 w2DZcION467D6Ye3Odxz5F7/E1LBoT1ZDed+ziIe7Vo1UXvDq2+Tk2ulQ
 hV+JvZLcxlW9mY5pmmVCS2hsSQGyBMu25Uinokof1IwIZdWHcqojIMTn3 w==;
X-CSE-ConnectionGUID: kRR+CTAlQQGQwz8o96HowA==
X-CSE-MsgGUID: v7uOhH8KQvm376bmYBvzAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="25433087"
X-IronPort-AV: E=Sophos;i="6.13,221,1732608000"; d="scan'208";a="25433087"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 20:34:05 -0800
X-CSE-ConnectionGUID: mBTBEV/fT2eaxrHWtS/piw==
X-CSE-MsgGUID: /hW4MmKMQ7yU+6c8PKKBgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107124204"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 20:34:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 20:34:05 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 20:34:05 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 20:34:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jmz8rbk7A9u8WHkgwdj08okTsrUlKhkHHmEQkocvM3jMMtj94MfogIVpz37s+ySXbwsQ6uNTClg0xPHxaRep8ggoxFyFyuhpXyFGxJaEwSAKVNCnWeMyBTXRBrpitigowgril2gduEUVt0iJuTzOqzOZx1bRBql+Msv/xpRWu6Jzk4VyVE4hDGVeiavEu35YMaCMsSSM6Msn3YTD+mt9UQTZJdmEvs548fM/enoTzEFYsZ1BQ4jIEZSkQ7XtwjJ6wcrQPse8YaddqNFn++rJ9yDY2mVH2fgTgy/lzseyAQoiHNrpnIsfdamRiZYyYw3dSZ9fIj1MJ9qfG4qqd49DBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W5RLvVjPPMPXfb1voAGPN0T0VQeWUn3V/mem+c5e4oc=;
 b=G/B6mhCF0sucmur46iO77fpYlUZQ81J1axUq77H06wDhp6COFEafI5bZUcIfqZfR8QzIa9fU56QMpbjvf3KR8uP9+03GJJkyRaBO26n6S5y+5r0CkbLhVgh7kjxYx27w1j4q/wuIAobFOkq1ExW59afFyi2h9aLrq1k9LvlwWbwOq/ZN1yffJkhb0JzyjUZAdKMuuW9GzXWcvLNRaBd3HVcbY6TH1HRNwzwguLfYMQh2HcFHnbLt5CCA9UF6eK15N4fX4rrf/JcQvdMXq8QTyntlVRHs7J00juPx5oFaZ9ynfvYvkZqWdBWr51ga2o9IEoxYQVZUuiXHuvduyyFHcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by IA1PR11MB8801.namprd11.prod.outlook.com (2603:10b6:208:599::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 04:34:03 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8356.017; Tue, 21 Jan 2025
 04:34:03 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Maurya, Ranu" <ranu.maurya@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>, "Vivekanandan,
 Balasubramani" <balasubramani.vivekanandan@intel.com>, "Maurya, Ranu"
 <ranu.maurya@intel.com>
Subject: RE: [PATCH v3] drm/i915: Add Wa_22010465259 in its respective WA list
Thread-Topic: [PATCH v3] drm/i915: Add Wa_22010465259 in its respective WA list
Thread-Index: AQHbZ/mwPsouODZNEEieryFTyhRB5bMagQhg
Date: Tue, 21 Jan 2025 04:34:03 +0000
Message-ID: <IA1PR11MB6266A4752B114928701E693BE2E62@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250116093115.2437154-1-ranu.maurya@intel.com>
In-Reply-To: <20250116093115.2437154-1-ranu.maurya@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|IA1PR11MB8801:EE_
x-ms-office365-filtering-correlation-id: c5b3a07f-7bdf-4493-f63b-08dd39d4d558
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?GNtS5hTANznq/SCaCk08RLJqr4JOuibAF72g2cVWX3NQ1uzyoCVC5mRvx4Pp?=
 =?us-ascii?Q?v6T2yxdsfcTuSEOj8Kq5CZ37Lqe0Ihx8sW3IUf7MP/we05w2BFLvoRqvpgWv?=
 =?us-ascii?Q?payAV2xBhj+USV0D5L6fMC12YrJqyrIBD7S5zRjWHomN7MM71UrF0k6C3SDX?=
 =?us-ascii?Q?EyVIcBeQkJkksjbOqJ0snyXUk85XhEKvWNd5/k6W6rpTODQrW+JqJyzu/BLc?=
 =?us-ascii?Q?YCT7uJFcEBJcxJ7oZN1Li+EJD8CJYXiYo0ZBklgjVSo8zNUQAG0qKEEE9xDp?=
 =?us-ascii?Q?8yiOpWJVhyaPEYoytlGn62uRsEVCXzIsb2dak4CYLurR51sKAbwKJO/3CGZj?=
 =?us-ascii?Q?CxMA5ncZGX6AO0ov56ldUaP5hLyGSM1pljzwCTR1F4oaCG+h62E4epkxR8vt?=
 =?us-ascii?Q?DgyyF+2a8lkIDw9VmYq2dQXqFOCkQknA9sXt64KCm0ZXU6dnVdR5RFtWL5/N?=
 =?us-ascii?Q?PbwowdCHx+BR6j9T1HcKyHh1oAE7O+C2wKPILCP6vkx9wFzD55VS96XleXcS?=
 =?us-ascii?Q?9dtcxertZf9+C86Hqy0esgk/YJ1kzJC3PVLwXcnxLXyo0PPdr8CgZL3TmoDK?=
 =?us-ascii?Q?60aNdBF6phNGZkX3QJDMnpurnrOdWRRR7qvi7iz6jfL6Uy/aQ6mHm5jCNB0G?=
 =?us-ascii?Q?LgvBtm/hfSEWY3BwWFIIHFPcJ8Qn8x9YTplKQNsy3lpYJTOLLyuyt7BUS+hH?=
 =?us-ascii?Q?SOjPEG/lJHDMf48uO1o4jLuIQ0ZyzXcYmIWDKdj6gpwXRnqA/Bh9zcLGYpJ7?=
 =?us-ascii?Q?2S9wYUjwGoqewuKSc179i+RpHzJSILj5WYUquX2wkQk4kNT81lVmF/x6gh1l?=
 =?us-ascii?Q?uwgKVGkg7dVkY02vUCjX56RsMho3MzNHqsW1I6h36rwOFJE03ZWY5mYLHLgR?=
 =?us-ascii?Q?W2jo+CTpKROU258EDyEKgV2yxkEUykKmNL5NPVLIJxH5pHFzaykcE9ACNvYD?=
 =?us-ascii?Q?9VYixDAmzwrsTf3xzzLIJHRJpN2xjqgTcNoXiZwYv0LWqEw0hW9SIMxrfdS7?=
 =?us-ascii?Q?DBsR/RvfPnn+vcGzH1/kP+KJWJLcaiNEZ14M/97rPu6R3fbEVsvjWS+tBaw0?=
 =?us-ascii?Q?kVqzXp1+dFOhWehM3IN5/FnMkThH1bOlICM7A8bZmHCKJOWPYtTPg22IrbUS?=
 =?us-ascii?Q?DqelDcCwF6QZUCMS71Eolp38AlPqwm8G/REaQ6TECJGs49SXBCk3w2/NSaae?=
 =?us-ascii?Q?bs+Dr7qQFBm/2gCVmwOo2+boZPHfcljlsMQc/s5PzNbU7OyypLhfJUWCvEMO?=
 =?us-ascii?Q?Tq0n9ujzC+0vq17szrtvfXrKmbml0SFWISopU78KE+VtRdTJCctVPRjbMTEm?=
 =?us-ascii?Q?JBShG93JZcD4V7e1Khe65SfPUPVT7kScHve5gpck6wanCnVIa5WrNy1Bs87j?=
 =?us-ascii?Q?VAfbrWRP9xl1m5n/gRTueS+W8wn5?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3Zd/TnqCGJvUiAU0qv0KN/I+kPhtvZ3mqWFs0LERfdtBWsx08qr4cWItadjF?=
 =?us-ascii?Q?P24QhM4vCySCXLpK3ieSXeCVycxEqGqJpIIsTo2qKe8+QoNJVB4ekegxoGfP?=
 =?us-ascii?Q?rj4jqZWZH5fvikLCsTRWhO9EBaLD6p0zOJTeXO50rvhj87edH8YOnh+U8+9l?=
 =?us-ascii?Q?OYfSD9KNJ3iM2aUwCGJZtfCqZ0Ndz9pTJb9m0WChmiUcKZYbI4ZwHT32/YoL?=
 =?us-ascii?Q?BcZuBKIs7AZVomqh1LTCA6kLm0PpKzJkL2Xyd0nuav5bz3LLxRlkdNNQ4KtF?=
 =?us-ascii?Q?drj1/LqAxpVWnkE2dvhjJ2v71DOishM+GJMDdHbe+MdwHmzMdf0sDTfiadC2?=
 =?us-ascii?Q?sqncgJfeQL5wDkX3vAOggaQp4ldBNlHvyajQH6kxVswbyLGkXnXsbBvDoBlY?=
 =?us-ascii?Q?AzedkKQtrvIBrwVpQI/pfuRvE0CySgy1iaIkt28krD8m9LUin7WnJbb/09Na?=
 =?us-ascii?Q?ysAc9+dN38rb3Em5RZj94LtC9+vlMVaNawZOU8pGm9772zhdI0H0zys2Tlli?=
 =?us-ascii?Q?zSOQoVRrveo5jYw679R2Ig5do4cUvvZQoZW/4qsrixRjB0FgW4nU7tsoM9F+?=
 =?us-ascii?Q?K4a6G+AJhlv51RlAIA7Qcc7zY3a17WmdT7XPd+g95NMVHLMmVmzSobls1gf0?=
 =?us-ascii?Q?GUCmmXpxKh2EJOI+711pUKy0xIsBMc27CHWx++OEJ5QsU5VXwdF2wNDAvNuK?=
 =?us-ascii?Q?Cd3hn374Bzt4ED53qK7GsUiIIvYFFtKtfATeyOV5tp4nrjqqAJq01V7UVjBP?=
 =?us-ascii?Q?P3g5JynWOGbGbklUdDHhkUU7Kyr4M4HlSVs1djR6viu6+/spSvQcsFxtuhVR?=
 =?us-ascii?Q?ycepQ0ZTgoFeb/aNl+1dDeeOQz2swH5LAfnmSDMg7nbc9SaYkI3sFi7rY4Tn?=
 =?us-ascii?Q?7bMV0ikQJ3GWqXo5euzaVpWYZbaAoCd0LvbCO8VEvK6vZl/ZwcxfbatwU504?=
 =?us-ascii?Q?zl7lUaO+WebRwlcQlPLabjg47SBJ5dGQ3kYv1VldYTWGKcxgzDPD8eGonW7+?=
 =?us-ascii?Q?V6IYM7ZgSSVGxJX+/fLhWAUC6NoG9KIbws4v/6DSkRUCYB/Kseb07v3XY4qG?=
 =?us-ascii?Q?1Co4XtYrA1MrMtH42GzLrWUZgy7O6VsY3nPKshOcYlr8gbrqLl5L+OnpyaU3?=
 =?us-ascii?Q?ZsM5zP+g9R1ZX4tfQbPD4kxXbrh6GM1SzZYUajHAdRXJDW8FbmjEx0LHFm0T?=
 =?us-ascii?Q?Mjkx5xL9Dz705BLRl20JIJSljK7MJjOYB8+qWKzanfAXb+/GH3XTwQgmfp+f?=
 =?us-ascii?Q?GScy4OIKy53fsCAJoOAt8tdvJwWm60iMne5SeECek5t8qPghgwGXw/MMLUsy?=
 =?us-ascii?Q?FcM30wCIqu8Q4km4Kyri2fdIBx97eE0WkXqI9oiNvxgZleEkEH9o3Nt21clE?=
 =?us-ascii?Q?r/rUZCtinUyb923i32bD5a014/yxlumhheL6hUzs60o/deVyI7pD/XY2nRYW?=
 =?us-ascii?Q?zuQQ4Aj8DgmKnQZf8ZoBWFYLe8n54PpO4xdj4co6jHb8gMuyTWcu371+XxRO?=
 =?us-ascii?Q?oZb3V/opw8CQafzMu4pvr8Juufi7OKUtAtc/vZK8o1HDHxSaiRrnWutC2cAj?=
 =?us-ascii?Q?BLzO5Y/FWMBeZzdISPUP8b6gnCh+gjffxWJrmkbMM5H5XeQPHg1HcBGMbiG2?=
 =?us-ascii?Q?LQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5b3a07f-7bdf-4493-f63b-08dd39d4d558
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2025 04:34:03.1518 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qutlo6Ym9SjQ2sNnEpARQXF5dCt4s2FPqklXqLGO/QxJ1vrxrgzQ+qiHLvz+KnHhOtcyNzdCTfbnO1q195pOrixQIgWvJ7ZdVSuE65++SN4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8801
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ra=
nu
> Maurya
> Sent: Thursday, January 16, 2025 3:01 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Pottumuttu, Sai Teja <sai.teja.pottumuttu@intel.com>; Vivekanandan,
> Balasubramani <balasubramani.vivekanandan@intel.com>; Maurya, Ranu
> <ranu.maurya@intel.com>
> Subject: [PATCH v3] drm/i915: Add Wa_22010465259 in its respective WA lis=
t
>=20
> Add Wa_22010465259 which points to an existing WA, but was missing from
> the comment list. While at it, update the other WAs and their applicable
> platforms as well.
>=20
> v1: Initial commit.
> v2: Add DG2 platform to Wa_22010465259.
> v3: Removed DG2 platform to Wa_22010465259 since it
>     was for preproduction.

LGTM, DG2 is not reaching out to this function code path.=20

>=20
> Signed-off-by: Ranu Maurya <ranu.maurya@intel.com>

[1] is the reason we drop the DG2 from the list.

1) https://patchwork.freedesktop.org/patch/632664/?series=3D143546&rev=3D3

LGTM,
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Regard,=20
Dnyaneshwar
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 570c91878189..277a4df31071 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -691,16 +691,17 @@ static void gen12_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>  	struct drm_i915_private *i915 =3D engine->i915;
>=20
>  	/*
> -	 * Wa_1409142259:tgl,dg1,adl-p
> +	 * Wa_1409142259:tgl,dg1,adl-p,adl-n
>  	 * Wa_1409347922:tgl,dg1,adl-p
>  	 * Wa_1409252684:tgl,dg1,adl-p
>  	 * Wa_1409217633:tgl,dg1,adl-p
>  	 * Wa_1409207793:tgl,dg1,adl-p
> -	 * Wa_1409178076:tgl,dg1,adl-p
> -	 * Wa_1408979724:tgl,dg1,adl-p
> -	 * Wa_14010443199:tgl,rkl,dg1,adl-p
> -	 * Wa_14010698770:tgl,rkl,dg1,adl-s,adl-p
> -	 * Wa_1409342910:tgl,rkl,dg1,adl-s,adl-p
> +	 * Wa_1409178076:tgl,dg1,adl-p,adl-n
> +	 * Wa_1408979724:tgl,dg1,adl-p,adl-n
> +	 * Wa_14010443199:tgl,rkl,dg1,adl-p,adl-n
> +	 * Wa_14010698770:tgl,rkl,dg1,adl-s,adl-p,adl-n
> +	 * Wa_1409342910:tgl,rkl,dg1,adl-s,adl-p,adl-n
> +	 * Wa_22010465259:tgl,rkl,dg1,adl-s,adl-p,adl-n
>  	 */
>  	wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
>  		     GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
> --
> 2.25.1

