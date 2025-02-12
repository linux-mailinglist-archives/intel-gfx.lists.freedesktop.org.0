Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F18DA322E8
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 10:54:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2825710E83B;
	Wed, 12 Feb 2025 09:54:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sa5XDY37";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD54610E837;
 Wed, 12 Feb 2025 09:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739354051; x=1770890051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/NtZwLj4XW6EvpRHJ+G+U3DEnZjdP0ZjXFmJeG2okTk=;
 b=Sa5XDY37hVoFj21eIF8BGisIbz430atAs+V5P45JK0HR22DwRWrLP1G3
 CLziJYM5PajMK7C1G6sF3JkhJhmg5xefYrpzY+hqeLrvgLchHQZF62c9v
 y9OPKlTiVC8EycMSGhi4MiqMMOh+o1yJ/sRhqnNlcbKQhilev6V14uQHg
 vLbx+nykJA4IONKk2HfjHTk5sMWRUqhiSncwue0ELRc4rNKyn15JZlCAE
 ieFQN2dW6klh1/kbIdIPumKaa1UgnLW7NW64dRqW72d8iGbitdbZ3M4j+
 YKzTtASVIWi9LZlte+2QcADQ6+/jkLxMosNljal9p1Hp9Wusnjq8Qydyt g==;
X-CSE-ConnectionGUID: TOOQakHaQXGdPQ2VWc3NsA==
X-CSE-MsgGUID: FfrIVDtIS4yJResUsrckRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="43657423"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="43657423"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 01:54:11 -0800
X-CSE-ConnectionGUID: BDrKunz9TKGOTeXNNkR/4w==
X-CSE-MsgGUID: jvUP36/eQoGH3JV9nH3YUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="113431740"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 01:54:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 01:54:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 01:54:09 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 01:54:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bPMmCKtAmNilj5J5phMMmnGyUY+BcDkg0Lf5pUqB/6STOSzgSr3MOdvFYbnHle8sW94F8oh37u3XcgZ7jwnSMjWKa+eSOkUAmIEdBtlTAv4Vu4ugXhNTfOOOcO+l41smBM6oZOeSpilwE93RvcqpFPtB3XUK+KH2UB57Defo+442kfMgVWqx1OA4iNnYXKTgbLd77xo3+llEebkX2jKd17zqWtAqU/taXzVZ+2oDJDYQbhPHOWEEFioCbif0Pl88G9O2Au8sXC9e1y7Hx52GpBD65fzQcI+cb4j/UPGlG5wJBDgEW8sTWvhMO9fpz0hzHOmwW64JhUu6pHgS4u4YZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWcbwjgYuLJxWRWJHqJX3P5oRasIs0+pWzEN4EL4nd0=;
 b=ILm8PkcODBKrkzVrX/XOGBi0cGnThmGdvJ8kEU9k9jcxzUNxaSJBSWHyrR+s8+d6ZaYirz+CRTwKY1UQGzXQ4sjrWv1gbrfEmz4j8wZ8DHrsMWwCCAgCDHjZHTaVYapkBE/ZPZRTsuS40FcBLEzA4NSXAnBaOWPeyAgXJKVU4LXhXEWqaFDcMod7N/zzvMYpUZM4NjVknkbcKYeFUfWWqbeCV4KFVVLi4VUyu0ewQ2TXxFqiLo4P2xmLCBCihuitdn002HxXWZoqoxGtftJqHw91oBUk7lrVhXQSpCRNn4/DWJKT7hiO2MmhYYFNCcLlhg6J4aFsgA00Y6Dq5t35MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB8132.namprd11.prod.outlook.com (2603:10b6:8:17e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Wed, 12 Feb
 2025 09:54:06 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 09:54:06 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 0/9] drm_i915_private to intel_display cleanup
Thread-Topic: [PATCH 0/9] drm_i915_private to intel_display cleanup
Thread-Index: AQHbfHKWMQQWVBDHmUuCGbmcHq77Y7NDbkXg
Date: Wed, 12 Feb 2025 09:54:06 +0000
Message-ID: <SN7PR11MB67507583B18C9C7D46A1C0A9E3FC2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
In-Reply-To: <20250211104857.3501566-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB8132:EE_
x-ms-office365-filtering-correlation-id: 1c047526-2d33-46f6-2112-08dd4b4b3053
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?7QJRFZwYPcXcMRxT/FqcmlZQ3L2dqMhrWfwgezM+eKR6LCD+mRgbieUWZcij?=
 =?us-ascii?Q?YA0v7+5JuCmbi588MIEmeQ/x8mjz00DoC9L5x8f1Js5Ka4ezDUzwT4nTv3Ej?=
 =?us-ascii?Q?3EgZAvfP0qyGwB611xxHsb5Pwd/s4Xl3mz5vwX0S+uLKA6fBzSbMH99ybcrE?=
 =?us-ascii?Q?5uhrNxdr7jcT4vxmdd9IOs64phEH0ZMyCbsZsjg8g6RN0F+fG6V4Wdu19/sE?=
 =?us-ascii?Q?IlhEURaJd3IkcNzDKZQPHB72WM0KGLxGN2/7LMQKdr/cwvYT20EkSLZDMWkG?=
 =?us-ascii?Q?Dla+JWWAMCnLqVx/MU4naNNepKNPmxLiGa/BT28Q853x3MACzI4+EaVXv6iy?=
 =?us-ascii?Q?zM7LZX0H9niYacYSwRHYp2vWblbuGGjFk5LICvA05ekXrruts5aHTu3hjS2j?=
 =?us-ascii?Q?SOQuMZFjCLvmUlYpN7bME5ihU1iCVkBofrxMdPl8TLZs1moK+CQ4ZBu9mGMe?=
 =?us-ascii?Q?mov//BNcDk5q/AlPn4JGh6Z7jWMFyawxQbeeqR6lpdWSCzbVhKCZ2EnRFp+C?=
 =?us-ascii?Q?nWa5yZIRNuUrxGzVMzTqRKCHn9GSYvO5QqNxsHPPDRvizIoPVOKX5y/B7pXZ?=
 =?us-ascii?Q?pSzaLHNYQgKO9vvVX5shQv3DIH9ZOgdfMepd+3AquSR8T9YxZ2CX/11LncjP?=
 =?us-ascii?Q?3exFKuqnhPtYw/h00wU1cH746jR/fCoWZ+AbN3u9bTU3gukaOgEZO/x6oD/L?=
 =?us-ascii?Q?Lgj/tRG04NIxnlQug6rWKMy0Mqo3tdpPQ5oG86m2egyRgFOJZ8ypSG2pnCOc?=
 =?us-ascii?Q?o4V2elXChhFvnz9T4XOQ/4r3jbo2fIPni/VatfPqAspzCAX/NyuFV/PwDMsU?=
 =?us-ascii?Q?vNlh/7P5HdRdWPojHPdTdMIlfHtcp8DPgArLSQFmB2XsqPU+5pjRfEr2LbfS?=
 =?us-ascii?Q?4p/zFcWah/xovaCAYFr8OtX3Na7kWyu4JZjJ3lKjgG2EM0LEUaqBZlvYP6YW?=
 =?us-ascii?Q?vYiBL5X+AAGvfXMyTp3KEwlfzljSEn0HFEjUoeFFKGg7dmLNlUJF4Qae2LEv?=
 =?us-ascii?Q?1z14IQKt5Z2oZn0j28TUStcC87LOrWswbC6DjG59QBDNHPUSgU+dh8NlLmSF?=
 =?us-ascii?Q?325O4baPd2SkZ2rxd3GVMLBIwoNBy2OoSZdbMXnO/I+CYHTRlWjVYrq5XdO4?=
 =?us-ascii?Q?mn9zPG5M7IXb/vWzQULvY47RdrvfY2QLzn91C7PFwL/duxW8U7EjasC4fHBR?=
 =?us-ascii?Q?0C4gdaPD7CJRaNltCKmauMs8hq1vS4nd4bVNBPc6QQDfQPVj+2yvdMMuG43a?=
 =?us-ascii?Q?z0LAyN4M9jEHQ4q9eXhZFSX8limZImx5sAobNMOxiUHLm0PN0L3kwPiCPelx?=
 =?us-ascii?Q?QLeg2+unsagsrAPNpWlVxGdDC+aKnRvFhLFZGHnk2ICjU+tRTAE6AboXgxUu?=
 =?us-ascii?Q?FXWYIf6+RD7tk6FF64wehlD1WmEqk2XED3o0N3jvdEdNoDNeVD4A0tHNIMbE?=
 =?us-ascii?Q?VDOwqmZ2oIM7vuJ2o1M3/ikxCnBsmEY5?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q06UUxAwJsvBUIuzHK2nkX+EThFht1K9HEwzivBVeRSIffrSv0WmIl4dHW5d?=
 =?us-ascii?Q?CXlfIWeVmlx+u3KUW/oBvvsQFTP35HmE6aDgueDx8X8HDbV+eX86EM5Dqwmr?=
 =?us-ascii?Q?q/5xW9i3fjZwJ6sljTr+FqmzI6JwzRFDvvjbkt48gGHML2f5RZRN+PAkhgBk?=
 =?us-ascii?Q?2sSx/GZab1U8RlATskuQ9B4EDPy5Sgp6vgITCsvIfSLOngRUmoHRneJ6XTBP?=
 =?us-ascii?Q?uWGkkziWDGes/xMxcxqIInUpEmAbfqX0ckPyJToJ4PSDUy/jTW6bbLs6R7Q1?=
 =?us-ascii?Q?wno9bzEmOh7zpxf0/VH4yEkEBQHyoqVIRjjoPBVCk5O3dNIF2EINCmNlfTNU?=
 =?us-ascii?Q?CGNI1A5NNxTfbQ+WLATi4X+CB28wi9WmIRyCvKXqaIrUXbE2KxxZVVECc0Td?=
 =?us-ascii?Q?I9qQmLwhkruukj+lmvGvqk5h/RKMGXyXyd3LnbzQzRnuqciny0n7r1nl2WWP?=
 =?us-ascii?Q?rkyI7O2egGs3rZE8hPICk/z7UeUHH029xfPfN3PJoPzYDo5zr85ZeZRg1UZv?=
 =?us-ascii?Q?Ka01yz9m/mwhr5k7ChaybJUzdJCg1B+CWA6W2FjE10jmdMH4M8pvs659xm3V?=
 =?us-ascii?Q?sTek2whTvnlLk0X4Ic9u9r/37KHOhvbriSU+I9T8QApTi5DcJNsWiYhrND1b?=
 =?us-ascii?Q?riIAh952N4aR60uBMbNUc/q/IW40XYvnBtYpAUNOefpk2Aq+r+Zcebk/GE37?=
 =?us-ascii?Q?UFM9VuYfIf/InJaNPy9A9JyEXg68HuiM4p8AyVcwSWx3DfKICLBqztL2GanR?=
 =?us-ascii?Q?suqHwZV36+S+FfoBQJhIi4SU/UOmcAerkf4LxLHvkSFwYmzzPxQwUZ3MkKmx?=
 =?us-ascii?Q?ViuT6+rBeVTZCcuDIYKyz+E3qctqtL4Kti1p/L0k9ix61jdVH2FhYiiddR8w?=
 =?us-ascii?Q?F8VpTn3aBT9yBV8OmcVOLyM/ndN7nOdEN9JhmFQQmnJckLb3oaXqiqOWAvMB?=
 =?us-ascii?Q?FsM7gFPvFG5UczRRsCcmAusl5yFZAVJC6cNmu3aLoe2lK2DUwkl9zzZt8Sye?=
 =?us-ascii?Q?rE2pVbOzYVbl/5iQzbfa38yTZdLOsleD28XUzzU/iYdBdt0uvwuFQfR1TmGe?=
 =?us-ascii?Q?8IfxJP/DL5WBsWLLWEZJ8hQaF/TFxAA+fPBAtMfSGH7othVb7910JalirDi1?=
 =?us-ascii?Q?cX6lWpvttTi+il6vB8X4TZVJSigPVVgxtFGPYkM9zLCUy/mqRS8T/l1O3ciX?=
 =?us-ascii?Q?WRYolLGgC7X7ZYisZOL0daPuXfuinAMqo3JaogNlLgk8MAstWYxm3U3zwwYe?=
 =?us-ascii?Q?r7oz4VpYShzLDXl9xyFbcG1cnM+KC3zjgWoveg9OwribErt5cpmHMoGYmq8r?=
 =?us-ascii?Q?U3RLKaQ49clcNLx8na7/PzSBch6OgayqWc/FGU6zRYurcFuo+hLBT+yY0PKi?=
 =?us-ascii?Q?YSWN6t3OCvtt+SqMNVaj1OCPTSQ+GFTkBH2SyPHf5uoAiOJIwi1o6BUbcUGV?=
 =?us-ascii?Q?4D61KcRAvONmnR3hjl30kZE4F372QNtFgXnndVlKX5/YV8hQmLUuM/Hgemag?=
 =?us-ascii?Q?cX1DC/U0FH4zzN4P0DqWNkgeM+cRi4ffYHLDaN/zV+t68zsAtAwSck59j4So?=
 =?us-ascii?Q?Dk+8ibbtAXau19V4BtiLvgpx6KYqwq7nwNrqwBD8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c047526-2d33-46f6-2112-08dd4b4b3053
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 09:54:06.1376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B40R07JWOzlpeD8VDtX+dz3BHniqnZL0g1iypjyuUR6l4CS/qsAPGvTvNL5Vfvkz56YtBRWUoA3/2YGy1BTRoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8132
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
> Sent: Tuesday, February 11, 2025 4:19 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 0/9] drm_i915_private to intel_display cleanup
>=20
> This series started as a cleanup to convert as many drm_i915_private to
> intel_display in intel_display_debug_fs but overflowed and ended up
> cleaning intel_dpll_mgr.c part of the code too and some other places call=
ing
> these functions. This series also replaces IS_PLATFORM() with display-
> >platform.xx to reduce drm_i915_private usage.
> Some stuff that kept me from removing i915_private altogether were PCH
> checks.
>=20
> --v2
> -Rebase
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the reviews pushed to din

Regards,
Suraj Kandpal

>=20
> Suraj Kandpal (9):
>   drm/i915/display_debug_fs: Use intel_display wherever possible
>   drm/i915/display_debug_fs: Prefer using display->platform
>   drm/i915/dpll: Change param to intel_display in for_each_shared_dpll
>   drm/i915/dpll: Use intel_display for dpll dump and compare hw state
>   drm/i915/dpll: Use intel_display possible in shared_dpll_mgr hooks
>   drm/i915/dpll: Use intel_display for asserting pll
>   drm/i915/dpll: Use intel_display for update_refclk hook
>   drm/i915/dpll: Accept intel_display as argument for shared_dpll_init
>   drm/i915/dpll: Replace all other leftover drm_i915_private
>=20
>  .../drm/i915/display/intel_crtc_state_dump.c  |    3 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  130 +--
>  drivers/gpu/drm/i915/display/intel_display.c  |   30 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  173 +--
>  .../drm/i915/display/intel_display_driver.c   |    4 +-
>  .../i915/display/intel_display_power_well.c   |   13 +-
>  drivers/gpu/drm/i915/display/intel_dkl_phy.c  |   54 +-
>  drivers/gpu/drm/i915/display/intel_dkl_phy.h  |    9 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   11 +-
>  drivers/gpu/drm/i915/display/intel_dpll.h     |    5 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1011 ++++++++---------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   27 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c      |   16 +-
>  drivers/gpu/drm/i915/display/intel_fdi.h      |    7 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |    7 +-
>  .../drm/i915/display/intel_modeset_setup.c    |    4 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |   45 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |   36 +-
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   12 +-
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.h    |   10 +-
>  20 files changed, 799 insertions(+), 808 deletions(-)
>=20
> --
> 2.34.1

