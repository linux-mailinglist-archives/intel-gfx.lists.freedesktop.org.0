Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BD7A3DC85
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 15:22:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 250B910E981;
	Thu, 20 Feb 2025 14:22:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mjLchGv3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 701E110E981;
 Thu, 20 Feb 2025 14:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740061327; x=1771597327;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=N7xdSWcfgq+RoRFPLH6hOUeE43naWOs5W4DnigwSXgU=;
 b=mjLchGv3pSMadeJ7M0/en2G2wgXFBVIkVDlp1+OUgNabUxNfWBLd5EPR
 0GhGHztXipSGerXPYVm5Z71B+epe+AmxDySIYveObtVsEMfQWRFbe4/2o
 4X5ZrDkmiZyVr8Wbs2o1du6z1aimtRqQJoKEAHFQZG3iZ4W+FX8jPgKiN
 8R1zJHmLLHp8QKpAZWJo4VUqnMKL0EeuhqF4Z15aWkrMccHYpXzyMpXYz
 z0ZbJ0f2SNeYRvs7YEnDxbOKaHYhYTgwYekAJGi+MXqirh6jkj36+5ibE
 d0ErZ0QNmejgOfnfc0Z6WrYlXuG68URC8C0ERidVZ77x8qi4Zw88fw+W4 Q==;
X-CSE-ConnectionGUID: VnQzZZOuRp6DjvYSJdWqKQ==
X-CSE-MsgGUID: CglIG/GiSTWLT/FN+FNSbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="40960408"
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="40960408"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 06:22:07 -0800
X-CSE-ConnectionGUID: Y8g8gmwxQxiCEPmpmO9Aiw==
X-CSE-MsgGUID: BZ9uKV8sQ7WwoIZ5I94nhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="114998165"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 06:22:08 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 20 Feb 2025 06:22:06 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 06:22:06 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 06:22:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZeHwaPH5CwU0m4/mEcKveyv7hqVZLkoKiJ1CgctgJG2jxL/YjWcJwjvrSbNm4LG0zNc7jFw5Fz7UQhfJUdH1SajnZ3216HeGmB5uJFsGfXxRTBzvnw2pCUXC4NpnfkIU670Xpuo3pwjUf20t/jXTOETQIzQIMkGA3sygC3eH1B0QIbqEgSVDNgijXf8aWKZrpOgL7/kEO1Ccu+Z017P6QGaQwaLUtWqv2z2JW2sLem8ksu+sMHu30EN8zss8TYrhGZ1x47C2FfauR/AvYcSD6T30AmioSgQLN2FwnIZRgGXsV2mWVgLzLvRuEBo1iGMqQNlv/r87K/r9knwb7Kb0Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1HbdiZ+LH662QUZSCF8eZu0yR1ju0jCtpm92ZKwV5wE=;
 b=c10/BcYn5KOuGTwWG1ri+Zvx1en4YgIjZs0aGFR+xQyTPpKhPF6qvk8MjTFQE8xBs6hFnRTSWXGoMesiZZxjHQkdK5HOQ+Q+rDz8OKiB5YRlY2E0P154UB+jTW5wFOUnms0XwqxJIRZq56ZKtjUT2KTK6uJoOvSNWAOkZ8yFjT8IwixVxDfk8OkIUfhIVGpeY41tCHtonaT5R/0FWLl7oIh2hw9V3zHkN81tA+BAM8K1/eyLd/cn1j8RRFR39mlA7NcHsk7wC7p2ewUbTvvNhhMOy86eQGuM0lAd4o8nSBlTjHzyxEBIDZHIi2YypC3SfPIybyE+t8Zy/DXyooo54A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY8PR11MB7170.namprd11.prod.outlook.com (2603:10b6:930:91::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.14; Thu, 20 Feb
 2025 14:22:04 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8466.013; Thu, 20 Feb 2025
 14:22:04 +0000
Date: Thu, 20 Feb 2025 08:22:01 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Matthew Brost <matthew.brost@intel.com>, Matthew Auld
 <matthew.auld@intel.com>
Subject: Re: [PATCH v3.1] drm/xe/display: Fix fbdev GGTT mapping handling.
Message-ID: <dftpyfotba6vxp6pkiircxpm7ok7sowzx6x2fu52hdjug4rzfe@uc7e47olt7uv>
References: <20250219153441.625352-1-dev@lankhorst.se>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250219153441.625352-1-dev@lankhorst.se>
X-ClientProxiedBy: MW4PR04CA0142.namprd04.prod.outlook.com
 (2603:10b6:303:84::27) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY8PR11MB7170:EE_
X-MS-Office365-Filtering-Correlation-Id: 46a8ad9e-20ac-4dae-c8fc-08dd51b9f2ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?hz3YwF8URbD/ONnzr084tiGGI0uM/GK90Y/pAoatSGIEr/OuROdLGkd+MO?=
 =?iso-8859-1?Q?tunfhojRwEdJXYv7q/p75uHLOJsFWtGkZETx5GcOay/GXtDMsH3leRQT+u?=
 =?iso-8859-1?Q?hdP+p7/xBotaxbZF1pw9NIiISJBFEUXX4362otgrH0WKlUUdmNiGEGdF0B?=
 =?iso-8859-1?Q?uDaXmTPBT6CQLI/KHmIVZo0jSfJOcUPzq/ceK6jXsKWT+kvlq3Jaa6H70S?=
 =?iso-8859-1?Q?illZofax1Excmr+wqkuia+NLdcAN2yl4jWNE8LI52OkSKZY2zN8Umc4boF?=
 =?iso-8859-1?Q?120bJiRhRxNlET5cfRrYriLF4TDb+xWhrYos/feKw51K9QZXab7Dd8towu?=
 =?iso-8859-1?Q?+bu1Tij57jc8C8eDuhWQM7z4ikQIN6a0lw+iV6MQHdr0tmflCwPKXaBnXR?=
 =?iso-8859-1?Q?9glVSZk8K09fOb8FGf277tEP/qJXZ8cMF4HBUZ5mrvbx71bq8BozInAxg0?=
 =?iso-8859-1?Q?eOP6grRtV/VJG6S5c3Wym7nGBCfWxQBLMpkHbbgZjd5+vGxbl72HvZvF1m?=
 =?iso-8859-1?Q?hgp54Pb8Ap8wN/cXmO0fYiJIyHtpETcjmKwvO/Ry46rOVeii1Du2P4Qa8x?=
 =?iso-8859-1?Q?dqw289Te1WurqNcshBEQqvvj9suAYVHJ6G4AruX+z9brGDZksYbyicgzov?=
 =?iso-8859-1?Q?k9jfbBDpDj2X9JogrKEiVPYHfYDXECIWXJO0HXu8OZdxqEDH/7BV+dRT4l?=
 =?iso-8859-1?Q?BQd87/CuCIQ4+0XkEzFZZDeR7F16DPjbvIg0Q0+IwEdp+tNTMKvrihZ/pD?=
 =?iso-8859-1?Q?4WDEo3dWUm1VefnJezDYsKSV+T3Nm6hnn7SRHx/v8g53TyHjipVh8xOcb5?=
 =?iso-8859-1?Q?zBs3H35+KwkshFp3h21QxqqXveFbLMlZMQWw2HnAXQnIAwRsUfjnVDJ6Mf?=
 =?iso-8859-1?Q?S84sNfnt/LMBFWmP7+TexRrn0ThLS7bBb583Hp5ASdJfFOwQR6ViXWeyuj?=
 =?iso-8859-1?Q?ppmS1bbl6OdTf0b42GNmz2pceWwr29RsGHKvL9JP1ZMUmrOoKdbhKmwjdY?=
 =?iso-8859-1?Q?3g7DLgZ6x1Ru+4BRnVRmSXvi/Khq0LRBuc42BvKFjiahZOVJpuSg/Y1Erl?=
 =?iso-8859-1?Q?2HhPgUFUA2jfQhaByE+F90K/lg6olgfyMvwwKRz+YwP5tDLO1WFzePU0Ot?=
 =?iso-8859-1?Q?5BqQlrpj8rdUDxiktnBimwwWxQEa78aLuOx/QYfIQB/65ZLU79752j5IVR?=
 =?iso-8859-1?Q?Sf2SFweRHSlw9cssGlvSY2gNczKpevbuxrdLM8/algh8ekUotafmea6k5P?=
 =?iso-8859-1?Q?EtuzMDaF2TYqjYskAlCmqpbqoIpr3K+0/P3GemKy9xzc7DyIWlhrPGJdbH?=
 =?iso-8859-1?Q?jfDSKjlxePqgb4voDEPWoXuoPTjCn35c2Ar83rT9491CcpIuYDj/KyTTCL?=
 =?iso-8859-1?Q?hTKzHtTFJprHYh8RzMNev8hKy1/vpqc+48mUHbvGmaYhisictwNVYmVoeu?=
 =?iso-8859-1?Q?UttcQAQVd7yvXaPB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?N5Mx5EOh0i8b+NFMCgtbpa5Krl3t8aRWGwVlQcmaLw+A0m8YcdQ2ghz+Y+?=
 =?iso-8859-1?Q?Fpjm6jpBBu+dEV24ae/ghZfCfO2BhrozUKCX0pIVbfcQ/T6P7UX109MB2Y?=
 =?iso-8859-1?Q?Kp61hQjrR4dLrSDKIqIXxALQkkdfuPeyepETvwkK0cMBp152ojTQWARYLA?=
 =?iso-8859-1?Q?AU9mJj9k5z3jGtO40DdjCqHbhIKUmgVIx/hQvcpZaokaR0gvHSbJUb+Irs?=
 =?iso-8859-1?Q?6UnCzD+u34q0LcgHUJwOZsl+LmnF6381qHkFbUmAleopmwz4BXgAy7bhAB?=
 =?iso-8859-1?Q?ToB38YPb3M+6iDYeuUORxvUswvgUN2IjbXzpRjmkXhwQBwppIWClKm7DwZ?=
 =?iso-8859-1?Q?M9ziThDavwhzAGIudJLG2YO5pCt1Ylo8Eun1yxBa/QHaQqkWuwPDD0+RKk?=
 =?iso-8859-1?Q?G/Sa1r55k5DEy8XRfUpgniD4w3SRtXkh7x6BDlSAm8GuTvuoP7tmRQSHNg?=
 =?iso-8859-1?Q?bXDNYuL7Dy7m1NEB169nmId9rUAmPpEk/rc4HmvP37M/1t9FYk9+K/rXKU?=
 =?iso-8859-1?Q?IlDSJt0tkQHy20PRn2+9Jur7lWts86XrOky61n0ua7Ikc0sJjCvaG/KRY4?=
 =?iso-8859-1?Q?P/aZZZI5B/O/b1/mzXn8jS/bVpgyTSUO79o6MSIp7U7pvCF4LSlfTECTNl?=
 =?iso-8859-1?Q?afxGFQ/r+TDOud98IJC2vPegumxCUYcuxs45d0xJ+d5AUvEGGamm+c2DWp?=
 =?iso-8859-1?Q?s6KGCI6GDY7VwyB/8Cs00NR86SmFD0UCKyIvF4B5RSo+wLzTXQYM1rQwuh?=
 =?iso-8859-1?Q?NHoXMXr8bSEeiZbl4FKV07Y305hLzB1O//rA9fGgqFOmlmonFijAKs5CFL?=
 =?iso-8859-1?Q?zYOXRLxxqV3uBd5/KCw5esqXLXUMOHJDrOToSn8SZ81jTPQBrt5pJhpqF2?=
 =?iso-8859-1?Q?S8QXaPYZ0g4tJU/CeLu03buI9NtNdcbUVjFUs1NfKT+pnAoPFnYk2ntmQ0?=
 =?iso-8859-1?Q?MBPm9fc/MFh9YfRPIVYq0aOEi3/ET5wyR+WFcVI/v5Q8/Hmm/s7N22fwyd?=
 =?iso-8859-1?Q?kwbN3ck94jsNhmdzeTLWUN/71VVhmExNoxgWdBWzG+pXEPwQbAmUGNLut7?=
 =?iso-8859-1?Q?gNfRm9qcAVIVuxs413osh7gzsVf9O1tHLS6gHKCHL/cVTQe6ISzdFqQCpB?=
 =?iso-8859-1?Q?u8nTx1brqyZ5i9u78N/IM0IJIx6HqaYJxxB1DQlxnjf9ytEBU06YKDIbtX?=
 =?iso-8859-1?Q?p9hAmGd68XRi/R7i24PeStPNur43IkvvAca4RFQhtWM4jybiDVWJASWsUa?=
 =?iso-8859-1?Q?n+CTPASEgfHaVxdgFWc1Vvqlvwe49iAUs/RX+/1rZKTawtyXATBTnlDjs4?=
 =?iso-8859-1?Q?ykKvP/pUexW5VZ7kJa45CtV5s0Y8+EaTsBXMgSBdMe4khaZP1RkxTbE/Td?=
 =?iso-8859-1?Q?39M3unV32uQUCQJbmK6q+qT/PKrZkwu3J70JTPFwP9HQyq04z1W0vh1Qxc?=
 =?iso-8859-1?Q?DSAo6BHMYikOcyb3fhWl+71hxqYCy+9KML6D1JPmuc2BlMSdipNKucEo/I?=
 =?iso-8859-1?Q?EXGz3IbBLktwl302F5HRLf6fQP3uMDHH6HUHR7zeQXb3ycW8XnujnLwMpH?=
 =?iso-8859-1?Q?/oHt+NKMq7KA1TFQ7hi1bl52Jo1yxcjWHCPBB6QZn3m8zSnGlBAA48VRWs?=
 =?iso-8859-1?Q?JOe5obW4PwCkrpr5ZknbVFRDv7/2vD8otMFtaXTe5XXWD64hWbYZsexw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46a8ad9e-20ac-4dae-c8fc-08dd51b9f2ac
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2025 14:22:04.2389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +bto7YhYKNF3GS0lCn+8oG+io13XZ8YPnaG3KvsiIXPwwhIFHIikYwncASJwP8O6uLtvJp90P/1FDEpDDNBjORLoc3h/bD5mMzVTSJlA7bg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7170
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

On Wed, Feb 19, 2025 at 04:34:40PM +0100, Maarten Lankhorst wrote:
>The fbdev vma is a normal unrotated VMA, so add ane explicit check
>before re-using.
>
>When re-using, we have to restore the GGTT mapping on resume, so add
>some code to do that too.
>
>Fixes: 67a98f7e27ba ("drm/xe/display: Re-use display vmas when possible")
>Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>---
> drivers/gpu/drm/xe/display/xe_display.c |  6 +++++-
> drivers/gpu/drm/xe/display/xe_fb_pin.c  | 24 +++++++++++++++++++++++-
> drivers/gpu/drm/xe/display/xe_fb_pin.h  | 13 +++++++++++++
> 3 files changed, 41 insertions(+), 2 deletions(-)
> create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h
>
>diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>index 02a413a073824..999f25a562c19 100644
>--- a/drivers/gpu/drm/xe/display/xe_display.c
>+++ b/drivers/gpu/drm/xe/display/xe_display.c
>@@ -30,6 +30,7 @@
> #include "intel_hotplug.h"
> #include "intel_opregion.h"
> #include "skl_watermark.h"
>+#include "xe_fb_pin.h"
> #include "xe_module.h"
>
> /* Xe device functions */
>@@ -492,8 +493,11 @@ void xe_display_pm_resume(struct xe_device *xe)
> 		intel_display_driver_enable_user_access(display);
> 	}
>
>-	if (has_display(xe))
>+	if (has_display(xe)) {
>+		xe_fb_pin_resume(xe);

this looks odd. I remember when we had issues with LNL about pages
coming with garbage after a resume we talked about marking them as
"needed" on suspend so they'd be saved by mm. The ggtt afair was one of
them. Or did we go with a different approach and I'm misremembering?

+Matthew Brost / +Matthew Auld
I think this was about commit dd886a63d6e2 ("drm/xe: Restore system
memory GGTT mappings")

Lucas De Marchi

>+
> 		intel_hpd_poll_disable(xe);
>+	}
>
> 	intel_opregion_resume(display);
>
>diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>index 11a6b996d739b..dee1f6531c849 100644
>--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
>+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>@@ -12,6 +12,7 @@
> #include "intel_fbdev.h"
> #include "xe_bo.h"
> #include "xe_device.h"
>+#include "xe_fb_pin.h"
> #include "xe_ggtt.h"
> #include "xe_pm.h"
>
>@@ -398,7 +399,8 @@ static bool reuse_vma(struct intel_plane_state *new_plane_state,
> 		goto found;
> 	}
>
>-	if (fb == intel_fbdev_framebuffer(xe->display.fbdev.fbdev)) {
>+	if (fb == intel_fbdev_framebuffer(xe->display.fbdev.fbdev) &&
>+	    new_plane_state->view.gtt.type == I915_GTT_VIEW_NORMAL) {
> 		vma = intel_fbdev_vma_pointer(xe->display.fbdev.fbdev);
> 		if (vma)
> 			goto found;
>@@ -444,6 +446,26 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
> 	old_plane_state->ggtt_vma = NULL;
> }
>
>+void xe_fb_pin_resume(struct xe_device *xe)
>+{
>+	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
>+	struct i915_vma *vma = intel_fbdev_vma_pointer(xe->display.fbdev.fbdev);
>+	struct xe_bo *bo;
>+
>+	if (!vma)
>+		return;
>+
>+	bo = vma->bo;
>+
>+	mutex_lock(&ggtt->lock);
>+	for (u32 x = 0; x < bo->ttm.base.size; x += XE_PAGE_SIZE) {
>+		u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x, xe->pat.idx[XE_CACHE_NONE]);
>+
>+		ggtt->pt_ops->ggtt_set_pte(ggtt, vma->node->base.start + x, pte);
>+	}
>+	mutex_unlock(&ggtt->lock);
>+}
>+
> /*
>  * For Xe introduce dummy intel_dpt_create which just return NULL,
>  * intel_dpt_destroy which does nothing, and fake intel_dpt_ofsset returning 0;
>diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.h b/drivers/gpu/drm/xe/display/xe_fb_pin.h
>new file mode 100644
>index 0000000000000..39d48ff637002
>--- /dev/null
>+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.h
>@@ -0,0 +1,13 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright © 2025 Intel Corporation
>+ */
>+
>+#ifndef _XE_FB_PIN_H_
>+#define _XE_FB_PIN_H_
>+
>+struct xe_device;
>+
>+void xe_fb_pin_resume(struct xe_device *xe);
>+
>+#endif /* _XE_FB_PIN_H_ */
>-- 
>2.47.1
>
