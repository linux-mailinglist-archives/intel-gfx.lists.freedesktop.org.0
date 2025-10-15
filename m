Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A54BE089A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 21:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8458F10E8D3;
	Wed, 15 Oct 2025 19:51:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BkcykYYP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A3AB10E279;
 Wed, 15 Oct 2025 19:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760557868; x=1792093868;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=jK4LifNS70bUPLfG5iUJQa9GxUmiah9e+NTmPe8oZb0=;
 b=BkcykYYPSQjsoDrmvs5YV8NuffeNJtRcChzwZj6vLoaozDbUyYKryBQ/
 iHmcRyKG0kz+rDj1dcF6z9MOAcNEXo5vr4yoqA7Sw9yC3dF7WZLqXRz/x
 2YTf6+OvnClYLEDLQAgnQbjLqdla8EeXR7fvNBxYem2muJHGF8OI0X50+
 4+A8RglRvEeiANn0i5VtTDWAH8bR+jsDZnK03Lli3dVEy+QqPN6Gz7uda
 MO1asoY9Fdcnkao6+lTBuGdf/+cSIce4qFfEeXgEzgr/fjsr8xJD/Dpi+
 UssG9o6Ru0TEysQBsDT3g6GJuOMZKzKqM5teOtwhJ2Xk05QybniDTURXH w==;
X-CSE-ConnectionGUID: Z1MUESxgTPGMntBw2CxFmA==
X-CSE-MsgGUID: wFDYzku6QTyMmr7B/+2zGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="61951058"
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="61951058"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 12:51:08 -0700
X-CSE-ConnectionGUID: xQVOsZzkREiwKCVbuY+W+w==
X-CSE-MsgGUID: eoZbD+onRqKEF8I+0jUbaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,232,1754982000"; d="scan'208";a="182203309"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 12:51:07 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 12:51:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 12:51:07 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.57) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 12:51:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sWFKwwD5y7PZUrdP8PaIb+VotNU+yYzV5z9rjcFzAUXl5gdxtcwF0/mGxyzj+Rih7AhRWsfQkQqA41DJEyHB7yxLXuQdA5nespkGXcnrJjn6vDB+a+2A1txh1NUxQA/dHVH/CnSfB8xHc2R0gJAlr4kr7lwzN8HXSJCMfwUYcF03xuqCGf+V7ODYrwrKnqJCIaWji0NKM5uMu7oLe1MhyOnJLu3v9FcznIOs6ku3kYI9H4m4ECoXRrfitQWe5cq8zCR72zf0sg3lIjGHRYuTnSi16ExWygWpZK07M5xkOIw1L5sZxBI7A2WsSZwjqOclSGeRhvDN1rC+4kZQfJUc9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f1AMxP8BhdlhmWMJlkvre0dwCfnwgCS/otL0WpDvId4=;
 b=iRaNwjC9bV0wPHMncbtUAr+4hjDMmwIfuiwtpx76CS66DTgB0DyTFLXWUqsYAJEeVa2yxiUwybrjkeFbMAb+N6GvXbd2hulCR/LNt4TVNtmPEgu+WMI0dX/fVI3rWOhnA0cGnmW6mnXaNDYZkLu1DmTJt/IhOvfY01zezGxkD9s+S+JsF8OcI++MuOYJkhFilJpoDv2/X6xlVffwm1lMNJoHsW+nMJx2fshAraMnnQOeA1e9MMeW1/VMnsGwIp2ATGUeWJT539pxgoysx06YWcdUExrICOXb2Yql3aXwV8LhLQtcvaOSag8/OQNUSp7ne/lSCpjoMRyJYgEajIsHuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB5022.namprd11.prod.outlook.com (2603:10b6:a03:2d7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 19:51:05 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 19:51:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251015191241.GQ1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-6-d2d1e26520aa@intel.com>
 <20251015174830.GN1207432@mdroper-desk1.amr.corp.intel.com>
 <176055195453.3168.13465856329598949210@intel.com>
 <20251015191241.GQ1207432@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH 06/32] drm/i915/xe3p_lpd: Update bandwidth parameters
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Wed, 15 Oct 2025 16:51:00 -0300
Message-ID: <176055786016.3168.7709157523441847015@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0133.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::18) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB5022:EE_
X-MS-Office365-Filtering-Correlation-Id: 4aa9fff6-1ae5-4197-5a49-08de0c242d38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TzhHVlVzVnpKOGtPV0N1U0JTZWNjYlZES2JnWGcvUkI5QWhhN2JLakJabHlr?=
 =?utf-8?B?dVpIRWtra2c4eU56M0ZnanlvQll0bnl4TVVVUUlOazA3NHlkTDVUZzNJaDRC?=
 =?utf-8?B?QVJtZlFmQU5WUFA3TmJWVVVmTmQ5ZUFxS0J0NXBFT09KUVE2ZDQ1UDY5c2lj?=
 =?utf-8?B?RjBFU0pYYWJUNzJ3dG1aMDEwWTVoSk1ndVcra3V2Q0VMa0toZmtlUHJOZUpu?=
 =?utf-8?B?bzlhT0ZGbDFMMmNjRjgzbHc2dGVtM3Qxd2c0K0FsbXNjd1lDOElKYVNjV2gz?=
 =?utf-8?B?cGh6dE5OSzMrMkFSNGwwczhkMUIrNXlkYUl6K2ErZlNJdGV3UkYremdsMlFl?=
 =?utf-8?B?bGs4OEdPdXFwWUFueVVXR2VOcVlrd0NIRFJGV3RCUTd1MjRBY21XN09Qd2w3?=
 =?utf-8?B?akl5WDR4TEltbFpncDBuckNRTURYSHVRc3lULzlrc2g2KzYxb2Vmdkp2VzVM?=
 =?utf-8?B?czZaeHZoTHFyT1cwTGgxc2sweE5Oc2dhY0NGRloxN2NVZ1crOTVKcGdrMk1m?=
 =?utf-8?B?S21RS2pHeW4zYjVXM0VscUxPakcxQ3QramR5a2MwRTE0bUNROWZVc2FqblVE?=
 =?utf-8?B?aHRMTnlOaTRQSVI0dEpDOVlIcFBPeHl1U1VBek5ma3lpbDZEaktaWW5hOFNW?=
 =?utf-8?B?OWtuNWpUNVlNNldaQ1NGeWdnbUxiWTN4eUJQbVQ2S1JITUY1NnVYSklGQS9K?=
 =?utf-8?B?bkJjaWdNTE5kV0VBMXFOckJTTzRRUVVUcGw3ZWgzM2NtRjRjRDhBWW1WbHhQ?=
 =?utf-8?B?MkQ1OEpyOXhKVUVmRXAxdU5ZYmNFb1BUTldsblF4WjR2Rnp0WmhuTHFlZGtx?=
 =?utf-8?B?SEtxZnNjMHQzYUpzb0RVSlMwVmJxNWpJSGpMQ3d5cmRKd3ZiK0lsTzZQOEdD?=
 =?utf-8?B?ZXlHWUd3cmlRdThmZTZtZEY0aSt5VTljcjlEVjVBMnJDckZvSU1UWTNYa2Vs?=
 =?utf-8?B?OUxkYVhNMzJpbUFIMFZJNFF0M0ZoVTJmSjlleFgrL2l0b0lRbkJvSjl1UStB?=
 =?utf-8?B?U1BaZmRsZ1JRd3R2N1JFbmtXWTRyMWJGZE5DMVZXVUd5dmx5MWdMNnJqYkNR?=
 =?utf-8?B?N0ZPbW9HcUdsUHFDZVZtZWdXZXE3VmpxWUppY1NvTVRZYTVYZkVkTGEzS1B2?=
 =?utf-8?B?NHVhMHpKV0kyWFdray9iU2tOY1g2Sk1kSGdzaVRnRlMvUHBBNmJsREowK2RZ?=
 =?utf-8?B?emhyZWovdm5WdTRqdGNFcjJwKzhQTndBTWFKS2ZHZXEzV3poMXg2Y3piTkpJ?=
 =?utf-8?B?ak5jckJDNFBDekhnQTQ0djZUQUpWcG1TREFRclQ4dzU0MnM3L0htOGNsajZa?=
 =?utf-8?B?NmhIMTJYV08ra3hONjhPTU53dFUwaDY2UFlTOW1SNkNUQWZPUHI0Q3Naamw5?=
 =?utf-8?B?L0RXYUgyd0FnMGVwUlc2TWtyMmxINDJrZWRtUWJVK3FGY21NbTFvQkZUaU16?=
 =?utf-8?B?R1h3dWxJRXNNR3VuMzZPZk9XeE92OUNPZEp6YjUydVFNeWo4M1duYUJ0bFdu?=
 =?utf-8?B?VEZLRGRBM2paNk9OdDZIUC8ydjdWRkpuTEF2Q25jK0dUNVllYU9NNDFpeFBU?=
 =?utf-8?B?UjVhdWFhdWVyQ0wveFRiTDZYaEtVZ0Q1cGc4UVlvM2UweGV4VmE4UDE4czU2?=
 =?utf-8?B?UHRnMFRkWVdRcUViWkdSR1ZZWkhLVE5tUHhNZnhkRnU2U0VGYUZUdnhsUEdk?=
 =?utf-8?B?eXZ2QU9CbElsdEZUN281a3N0RE1GTGExdWc4ejlrVUVsWVIxaWFjTzA2enpi?=
 =?utf-8?B?K3ZNK2FycnhGZDd6Uzg1eUltZ05NUEdxWmtOOXczTkcxOEIwSkoxQTJwUksz?=
 =?utf-8?B?SXJMMDd4WGRFQkVyRDdzNkRpVU5qeXR1cjAydVdvSS9HcUhEeXl4ODhOTXMy?=
 =?utf-8?B?b2oxamh2ZFN0ZWwrc2N5V2hlRmNGUjhDakdid0xXNUwramFZTGtqT0s5NTNL?=
 =?utf-8?Q?W/3fys3ZwDFTc9umM3HZNEBovW3gXwcs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjJzOEhNOGhWeGhKUUljZkQwRlhrVUVsTjJuUDZyUG5vdWg5c1VpSU8wbDJr?=
 =?utf-8?B?a0dDc2hBaXQ5ODVrSnRBUFprUnR2dTFrcmVqRHdKUit0OVZvT1V3Z1A4NDdM?=
 =?utf-8?B?bXJiQWx1MlBrQlZHbHdtTmxxcW9EdHIxYjdMN0VMa2V2Z3R5cHZUSUlHN2RB?=
 =?utf-8?B?MWJ2UDhkTGQ0ZTY3ckFDYmp6T3YybmN4ZEFJMjhJajRrUUpIRHVzMEM4SjNF?=
 =?utf-8?B?SXhrZDlPL2NOYzJxKzdpWDhsUVZvdTRjZHk3enNNZUxUQmZSUWFVNFFWdW5W?=
 =?utf-8?B?c3QzZWNyVTlKL1FQejByaElBRzdrU1NYM0xIUk5FSUEvdHNYOFN0a0hadmFX?=
 =?utf-8?B?UDhBZDhUWEthNTN5bGF5QkRhQTN0QmgzOXNCVUpRRWRuTVZlaFo4UzNiTTJj?=
 =?utf-8?B?VkFaM0xYS0hCL0NLNjI0blhFa2RBZ1VUU2hBaHV1Tjc1NW9hTFdSV2ozSGRD?=
 =?utf-8?B?RDc0WFo4RCtGak5QMDFNQmpHZDlMeTkydjk4QzlQemZBSllOQUVpLzk2SndG?=
 =?utf-8?B?aDdRVWppeEZQKytieG5zUHlDaFlwb0JSeE5GcGgwZFRqU0grWHA1ZG1IanZr?=
 =?utf-8?B?Y3pJNU9IY2JMdjk5dWlJQzRVMW9mM0h5ZGxLYjltN0JOZVRzaFVEeGs2Z2I3?=
 =?utf-8?B?QU1MZENSV1Nsb2lUdTlnQkpWRUVKNExRandyZWRmTzZjZUZkelUwT0ZvT2ov?=
 =?utf-8?B?cU1OOUhXS054RlRyVkRqOVpCaXVTdHFma3hXOSsrRFJrdXJUQjhWbXhxL2Fi?=
 =?utf-8?B?Z295czRod1FKQk4zV2dSRlJuTzlMZTE4cEFHMTFPdGJOUjNlTmdUN0JpTy96?=
 =?utf-8?B?RGUvMFBReThLNEc0MUJsYnpXNThBcnNRSUo0SitDbVZXWUhBdjY2VTlveUw2?=
 =?utf-8?B?T0VTd2wveFNTa2pSZk9PUlkxWTI1NVB6Qy81SmpNUzhJamVHUDFnYk1TQlkr?=
 =?utf-8?B?SkxlcStLcUJRUExoYUVQUjVPUTlnOWtNQ0FBVDdLUTJ6N3RVaGNEVndSTmdJ?=
 =?utf-8?B?ek5yV2lhWG1BVDJwQ3dqRFRjWHZ3LytrSTB4RWxFc21rOUVTeHFpVkk4dndC?=
 =?utf-8?B?VThZb3ZLeVo0NzFXekZ3TDl0K0hmYjAxSkNJenZsc1dWUTQxU1IrQU9Nc1Fl?=
 =?utf-8?B?MFZrNFVpNXhxdGR5K2xPL2llQ1RlL0ttcTROanpSbXdZczEreUNhYVo0YWNp?=
 =?utf-8?B?OUNqWkJIMjRMK2M1QjU4U2hYRFgrc3pSRFpqY1J5dnhRWUlqRDRXdVRMNXoz?=
 =?utf-8?B?bUZIZ0h6RGRnakN2N2psZWpaVmprWlVOd3NNZWtIMlpTQ0xaajNwRHo3ckVZ?=
 =?utf-8?B?V0ZZS1dRK1F3R0pOUFdpWlFEb24yaDhWbXNIZ0djeW9jWUt0MnEydmtsTjVx?=
 =?utf-8?B?NFRiWGNYWGdOMUJxSi95YmJBTDN1WjlVTGFXdjlEZWsyeGRkcGJjaU04emtE?=
 =?utf-8?B?OHk0bXNzZHNJaW11Tk1zMEpCUXU5TmJ2QkhwOHk3Z25oQlNqTk1mMGtIT0lO?=
 =?utf-8?B?Nmo3WHdIdHd1aVE3RjVjUW5NTlFvaHZ5aWl5elVzYzR1dWhBdTk0aXVkWDBz?=
 =?utf-8?B?NkRnR0k1M3Ftd01Sd2FuL2ROaUtvekliemliWTlVT3ZFT2taQWdUZEpMdjRa?=
 =?utf-8?B?UEVlRFV0RHVuRGVzNjkzcUJlWXdVbjlzM3hObFV2VVVkaEVZNE9vdlQxWjhz?=
 =?utf-8?B?elpGRy82UjFZSmorWkQwdEpBckNBN1k1VmYrc3g2T2hBRmQvLzJQcFVXYzJX?=
 =?utf-8?B?RUNoQmRLVUNWKzZKa0dvMzBPdnUzbHFYY0F3RHpMRUtLL3hiMDFia09PVkxK?=
 =?utf-8?B?dDkvQytlMktucjMrV3FqT2gxejFFeU9nMHVaNXBZRk9jYkNiamxkM3ZSK0da?=
 =?utf-8?B?ZlE4c1dxQ2JoalRocG9PU1FpYmVFN1BnUGVQMXJQclRKWkZOVGoxL1l0L3c3?=
 =?utf-8?B?Z3dvNnNwclZqSVJ4aGtjTkFOdWRoVk16a3VDUk5FYlQyVFRQRWIweENHM1hn?=
 =?utf-8?B?R09VYVM0dXhzcUdXeVgzQWlFQ0JUajRCWllsa3NxMEc5ZGtPMlpKK3loZnk1?=
 =?utf-8?B?NFUzS2hxV3UwamhJRDVGQjVRVmhQS3owRWlmQmt5MzFLbDgrL0tkNnFCOXhL?=
 =?utf-8?B?NE1aYmZCMlRsMlQvSnEyNzN3UDZsSWtMd3RmZmtpaExhc00ybnN1bWRKVWtN?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4aa9fff6-1ae5-4197-5a49-08de0c242d38
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 19:51:05.2303 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UHHsiFIJMAiZqUXMYiJZs0Vs6T2J72WfTEXwTeHsvJsim8Ep8bd89s7+YFIe7ZY1sFn5CpHJQKfNlVXKtBWqKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5022
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

Quoting Matt Roper (2025-10-15 16:12:41-03:00)
>On Wed, Oct 15, 2025 at 03:12:34PM -0300, Gustavo Sousa wrote:
>> Quoting Matt Roper (2025-10-15 14:48:30-03:00)
>> >On Wed, Oct 15, 2025 at 12:15:06AM -0300, Gustavo Sousa wrote:
>> >> From: Matt Atwood <matthew.s.atwood@intel.com>
>> >>=20
>> >> Bandwidth parameters for Xe3p_LPD are basically the same as for Xe3_L=
PD.
>> >> However, now Xe3p_LPD has the ecc_impacting_de field, which could imp=
act
>> >> how the derating is defined.
>> >>=20
>> >> For the cases where that field is true, we use xe3p_lpd_ecc_sa_info,
>> >> similarly to what was done for Xe2_HPD.  Note, however, that Bspec
>> >> specifies the ECC derating value only for GDDR memory.  For now, we j=
ust
>> >> re-use the value that was defined for Xe2_HPD, namely 45.  We need to
>> >> confirm with the hardware team what would be the correct value(s) to =
use
>> >> for the ECC case.
>> >
>> >I think we need to use .derating =3D 10.  This specific block of the bs=
pec
>> >is a shared block that applies to lots of IPs/platforms.  GDDR isn't
>> >relevant to an LPD platform and .derating =3D 10 is the documented valu=
e
>> >for all other types of memory.
>>=20
>> In that case, do mean we should drop the patch adding the field
>> ecc_impacting_de and unconditionally use xe3lpd_sa_info?
>
>They're somewhat orthogonal.  The hardware (or rather firmware I guess?)
>now has a way to tell software that there's ECC present that would
>impact bandwidth, and in general that notification could be used with
>any kind of RAM.  Some platforms will never have a situation where ECC
>matters to bandwidth (so this new flag will never be set), some igpu
>platforms will have cases where system memory ECC impacts bandwidth, and
>some dgpu platforms will have cases where vram ECC impacts bandwidth.
>We don't have any relevant rules at the moment, but real details may get
>added to the spec later as we get closer to supporting the specific
>platform(s) that these IP versions will be incorporated into.  But
>adding the general ability to read out the new flag and have it ready
>for when platform-specific details start arriving in the future seems
>fine to me.  We could add a warning print if the flag is actually
>getting set on some platform before we have any rules documenting what
>we're supposed to do about it.

Yep.  Adding a warning sounds good to me.  I think that would be better
as part of the previous patch.

>
>In general, I'm wondering if the memory bandwidth numbers are something
>that we should consider moving back to platform-based checks.  The
>hardware teams tie these kinds of changes to tickets associated with
>specific IPs, but that's mostly just because of how the databases for
>hardware changes are organized these days.  The reality is that the
>details for memory characteristics are something that's more defined by
>the underlying platform rather than the IP (and that's especially true
>for igpu platforms where where we're talking about system memory that's
>used by the CPU and all the other devices on the platform as well).

Hm... Probably.  As an example that illustrates your point, we have PTL
and WCL, which contain the same display architecture, but one different
instance of struct intel_sa_info for each.

--
Gustavo Sousa

>
>
>Matt
>
>>=20
>> In the meantime I'll try to get clarifications from HW team on this.
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >
>> >
>> >Matt
>> >
>> >>=20
>> >> Bspec: 68859, 69131
>> >> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_bw.c | 21 ++++++++++++++++++++-
>> >>  1 file changed, 20 insertions(+), 1 deletion(-)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/dr=
m/i915/display/intel_bw.c
>> >> index 8f5b86cd91b6..f0940ff9d19b 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> >> @@ -461,6 +461,20 @@ static const struct intel_sa_info xe3lpd_3002_sa=
_info =3D {
>> >>          .derating =3D 10,
>> >>  };
>> >> =20
>> >> +static const struct intel_sa_info xe3p_lpd_ecc_sa_info =3D {
>> >> +        .deburst =3D 32,
>> >> +        .deprogbwlimit =3D 65, /* GB/s */
>> >> +        .displayrtids =3D 256,
>> >> +        /*
>> >> +         * FIXME: The Bspec only shows that derating for ECC should =
be 45 for
>> >> +         * GDDR memory and does not mention other types of memory.  =
For now, we
>> >> +         * just re-use that value, but we need to confirm whether th=
at is
>> >> +         * correct or if there are different values depending on the=
 memory
>> >> +         * type.
>> >> +         */
>> >> +        .derating =3D 45,
>> >> +};
>> >> +
>> >>  static int icl_get_bw_info(struct intel_display *display,
>> >>                             const struct dram_info *dram_info,
>> >>                             const struct intel_sa_info *sa)
>> >> @@ -812,7 +826,12 @@ void intel_bw_init_hw(struct intel_display *disp=
lay)
>> >>          if (!HAS_DISPLAY(display))
>> >>                  return;
>> >> =20
>> >> -        if (DISPLAY_VERx100(display) >=3D 3002) {
>> >> +        if (DISPLAY_VER(display) >=3D 35) {
>> >> +                if (dram_info->ecc_impacting_de)
>> >> +                        tgl_get_bw_info(display, dram_info, &xe3p_lp=
d_ecc_sa_info);
>> >> +                else
>> >> +                        tgl_get_bw_info(display, dram_info, &xe3lpd_=
sa_info);
>> >> +        } else if (DISPLAY_VERx100(display) >=3D 3002) {
>> >>                  tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_=
info);
>> >>          } else if (DISPLAY_VER(display) >=3D 30) {
>> >>                  tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info)=
;
>> >>=20
>> >> --=20
>> >> 2.51.0
>> >>=20
>> >
>> >--=20
>> >Matt Roper
>> >Graphics Software Engineer
>> >Linux GPU Platform Enablement
>> >Intel Corporation
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
