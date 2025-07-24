Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFACB10FA0
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 18:27:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF70A10E395;
	Thu, 24 Jul 2025 16:26:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AHTJES6y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8DBB10E395
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jul 2025 16:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753374418; x=1784910418;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=EHv6VT7RPuyosVPbN2NtQDpchWjZULCTp7Lgyx6Q96M=;
 b=AHTJES6yXgfSlVLzwLrbq6GlhtHK6gP1hJ0oqqrcQG3/yGY3X+SdD933
 i0a7EIsoxJPWQq/iVnLowKt8+xMBtxFt+83EBuRto7VPoXeeUdnW31D2E
 fwyHuLDNiyZGHDVZTWLvr5ZLlI5RBqWfr3CSY5L41n2CEsXX6LAB9haBF
 LMBwJyC3DT1otB8mMqk74C9XRZmuQ6wWLsdbslEWXtL/CJ2+hF01OatmB
 pVuK7bSWQxUBqJAmf95gfXJeNzsyl58fq6ck/kYp80RXxwqmUnDoxzVJl
 Gs9SRGeQpo2uvt93PlRWYbeNqUj0unsJFgzb1+AsgWGne2x92FjhKfJrd A==;
X-CSE-ConnectionGUID: 6iXo6pncQv6HjFiHTzOtMQ==
X-CSE-MsgGUID: g0QL4EIFSbKiSadNcewhcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="43312044"
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="43312044"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 09:26:58 -0700
X-CSE-ConnectionGUID: ffbpaTwbRSSo7bSGg9RGqQ==
X-CSE-MsgGUID: cz60oS2cR4SrxxS+s4+LdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="191255061"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 09:26:58 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 09:26:57 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 09:26:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.80)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 09:26:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KZJ0aTiLPNwQiAmPm7KUBhsUAwb+eVZ0MazscU0Db5r7ZA5aA34P0579h9lYeeuYoHw5prLr/UOrEkKtuLzIq0bm31UZZaP9u4OS5Lfpe6OtRC5kASa95NnEMvawKBDuXsvUm72HeVLj9JUPhao7CYH/3BexunmU6cI4k2BoeUl4HkJyEtwEvfkImvktwHNPO7wgKhCqARjX3FHZ3znULaVOhj60AUjMOtqWcZhIRivDJZLuJCdJQEEYC3sgPWHKa/+6XG5ZonbRWft/ru6WcFBBRZxiyUgdmcA/ZW/MVVEpdIWDptEqYr3PchHrrYAZ9iOh4AgoQ/8apvezmyvLOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MmE3ZzFMHlYljBHYKSGnxyWBiWeHHz6QXdq0TRzaT5E=;
 b=ElhBTtdDPd2OnDxMpbOaeP81Xf3N2/c8Wy4FXCkt4QaJqmKuDm/mkEgoY9kWrF3QknVoZQX0vhLSJSuyxPrGxH+4g6yHejYZim7gkrrZb2hgD5hMv/sbqzrG1ADKq4ROQCsIvqj/858eRu4Zr04Ek2t/uqcycrXoIIvxAuZh0mDLnhNcCdWPW7o/pIykt8v+0gUrajdD9044Fhfn22dfm7TTrX/5PXAjgLthgub44QlgX/0M49vJvd/nbyRmHFxHrk00zLLENKjoYY/1RyCcmsAMoFBiTzaVVpsjdMdkVVUZvPvxTl1MjTwb5YIkHP54taYegZEnomXyvxboBwY0Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SJ5PPF867D7FF5E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83d) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Thu, 24 Jul
 2025 16:26:53 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8943.029; Thu, 24 Jul 2025
 16:26:53 +0000
Date: Thu, 24 Jul 2025 12:26:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Ruben Wauters <rubenru09@aol.com>
Subject: Re: [PATCH] drm/i915: Fix selecting CONFIG_DRM_KUNIT_TEST in debug
 builds
Message-ID: <aIJey5rLh_lBaEtu@intel.com>
References: <20250724090237.92040-1-imre.deak@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250724090237.92040-1-imre.deak@intel.com>
X-ClientProxiedBy: BY3PR05CA0019.namprd05.prod.outlook.com
 (2603:10b6:a03:254::24) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SJ5PPF867D7FF5E:EE_
X-MS-Office365-Filtering-Correlation-Id: c079466e-b301-4399-df61-08ddcacee67e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eVpyM3YvajJvMHpWVmxST2xXTTN1WmRhVWN0NHd6L1MrMVpkMnRGZFdCckIz?=
 =?utf-8?B?dWlCS2owekdXL1NLdndoblkvYmlvNnJOQmZ4L202RXAvWStFMFdRc0Jqc2FX?=
 =?utf-8?B?VnRlV2U3TzEvZC95ZFg1UjlMTStwRmRLZXRIU3NvUkdXaVB3ZVd1UXFCNk5P?=
 =?utf-8?B?WXkwTTA4dENZN0F1RlpGMXJKVGpPUlZjRWhZQ0NlTW1JcWVLUlVBWnRENGlB?=
 =?utf-8?B?VGkwK3poaTd0QXk4akptRVRRbDdlTHNWS1owWVdHaVNPU3Z0RTNXTnBqWkc0?=
 =?utf-8?B?QzdDRTZSVUJQNzNTWld2OWw0cVBtdXdKNG42aXJ0R1lFbTRJaUkxaGFTMksy?=
 =?utf-8?B?RXZzcTB3SGU2YWs3ZjhXVS9oOENtaG1CVkkxRmNHcEwzSkZQRVNHOFZSOGRw?=
 =?utf-8?B?WTFCajhJMDlXbmNnWWd3SkpDaVVlVk5NU2xvTU1waFdrRkQ0SWs3dkZ4TnRU?=
 =?utf-8?B?aXJCWGtFSEFGS1pwS3NrSGpsNzBKSmpUMG9KU0RWd2tpblEvT1NmUjJGQWxO?=
 =?utf-8?B?NkNYb2c3ZVBpMkV1SWZULzVJTGFDcFNSbmFiVkloaDhxc1FCdy9NRjhZWjUx?=
 =?utf-8?B?WkxzYURON1dlbEEybzZLNlVmdm5tb0JCaTFYdHNHMU5OSlkvN3EwU2xRejVU?=
 =?utf-8?B?SjlucmtUWTFLWm0zMzZER242TzgvRzRzTmxWQkpBUFBQWmtYVFhaVWY0ZUJo?=
 =?utf-8?B?TGRWQ0t3YkRjK0xHUVZsMUFqZUtXZDFXV0FwZndpZlNRVzVMTGU0L2E1dHgv?=
 =?utf-8?B?SFpPSnFvTUlLSFgwelV0SWhIMjhQQk1PSXQwc1IvNlo5dEVhS3c3RVE0SHdZ?=
 =?utf-8?B?MGE4bjd2eXA2Nk5Za0JZdWM4eVJVeGlYUWFhdUFLbVFSZVdodnBBdDVuckla?=
 =?utf-8?B?TG1OcjBlSHlXVnZMU0o5MUxueXlJc1p5cks4NGF5dk55VWFQQXIvRlVHeFN1?=
 =?utf-8?B?UldyMU5uVU1CVGdQdEFObTlOVWVHdlFaTktSbXJvbTk3dGVxQXBzd2VUZ1JZ?=
 =?utf-8?B?M041YURxYjI3MTNUdlFTcUxaYzczNk84MXJOQjd0OE43T3d3YmhMZVdTVkVt?=
 =?utf-8?B?L3ZHSWowbGtabndGd3dDQlRRV1BMMVZPa2JtRDhZUWFnNnpibGRJYU5idEw2?=
 =?utf-8?B?VTY5NlJERStGSWUvRXZpanBEbkgvc3RhSTNNS1JDUndwOUxFS1FQOG92dWg0?=
 =?utf-8?B?bGRKN1oxcTVDMUYwRU1sRjgzeXp4d2ZDbk9YdGk3bjVlMjdYVzRrZGFReHkx?=
 =?utf-8?B?eld4Y0YrM3ZGcWV3MGx0ZXJ5emloUm5BYlNKdXN6YUtaZUJLdTBaYjFoVy9Z?=
 =?utf-8?B?WVZCS0pjNzVTRUoyTWxlZ0hFYnkyWThLL3E2SlMzcjJlTUltbHM3eEIzTWZZ?=
 =?utf-8?B?VFYyQ2toVDdIaGxZcS9uM1Q5UERPblhKRHYyT3JwbE5aRDRwbkdmUWoybmNN?=
 =?utf-8?B?L21TTVhlWVBPVFdHK2lWZGl1SDhMT2x4WDBjMG1xUTZyODZwM2NnQ2hjV2oy?=
 =?utf-8?B?YUU4YTFaWjJ2Ymh6WnZLN2FQNW1lQzIzOEhMZHl1UTJ5c3p1Zzh3MzdSM2dh?=
 =?utf-8?B?T2ZJWVFkSFlaQXlWYXM0c0FEdlVQUVFIL0VCb1IwanBDSVNwSGpBekNFYmYz?=
 =?utf-8?B?T0RoK1I2ZnVabElKb3FYblJocTR4M21GUHcxWmJxSzJBYnZnT3FFTEtoVFhL?=
 =?utf-8?B?bVBudlV6VTMzV3hsSHBsL2VmeUUxcFJmVzZyM1NoZy92NVVCYngvQ010Wmdp?=
 =?utf-8?B?Y0RmYW4wVVFYdlg2ME0wYU1QbFVnVzNtMUx0NjNsbmM4WWhrTGZFSkw0K0RF?=
 =?utf-8?B?SzhUSnIxc1RXMzltR1B1NlhUN1gzZ2trN0prWDRhWjl1TFR0WTh4dTFBKzJT?=
 =?utf-8?B?d1NZdGpDQU5lcitPRTZMM0ZYdGx6cytYcnp2Z1RjamZPSEw0TzBsei9pMHc2?=
 =?utf-8?Q?lKpP1UJ9DW4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDZYNUhLWUFDa2oxeWZBcUtlaFVnb0FEYWJIQmhKTUxVY2paM0tmVC9Fc21i?=
 =?utf-8?B?ZTNYc0ZvL0lsREVmNDJmdHp2MTkxUzlqVm1abFVGQ1J0ckxsVjl0UkN2M3pZ?=
 =?utf-8?B?UFJ4UEJtTldKcHZKK2h6dmg5WmZGQWVnaU5zUXYxQnk1UXRRbHVMbStxZkd4?=
 =?utf-8?B?ZFNrUGhSS09vZE91djkxT3Rvb2FEbVNkZVBhOUlzKzA3dmFoNTVKSmh3UklI?=
 =?utf-8?B?eTB1SktEckx5dWRKS003T1RjOEQ3MGNpWndEWXdaRHhtNnUwN2NsZmlUemtx?=
 =?utf-8?B?VzJ1MmZnZFl3TGZtdUZMdEViZW1Wamg2LzhGOVhRUG1ob2Niai8vSnFCWC94?=
 =?utf-8?B?OHIvczl0dmI4T2RNaklyQm4wZWNHYlppd2pHUldhOE9uTE5qQVJXS3d5WWpl?=
 =?utf-8?B?cGV5LzBKUVJKcTVObFRXYy9aQUFWek5YVW1nQXhiODNvUStPNmpNWnJ2OXFh?=
 =?utf-8?B?ZTF6OThsNDE5UUpHZ21QTEFjS1J4bVd0enB6K1hINWV3WWNpck5aNnlNSmJl?=
 =?utf-8?B?SmxvRmlQTWNMNU50enJYRHpDaEhKNEJtSGNHN01nMmI5SkQzVkwwK2gvcGhv?=
 =?utf-8?B?ZDQ3TXUwT044S0E4K1g2SWgxd0NEd1VvSkhiOTVENTFuM3dUOUx5L3hsOFAv?=
 =?utf-8?B?N0s0MDdIOXF0TUY3azVlc1BvN0wrUW1lQlZxbzFDREhiWXNzTmcvb0hua0w3?=
 =?utf-8?B?YmVCTmlGYUxxVHNQRkR0WEt5L0VLOTlmZjlJQWtGWnQwSDVHd0t0TW5sYmJV?=
 =?utf-8?B?cG4zZU11emNnMVlOcFJFc2VNZWZKRkd3aDcxdFM2a3pZcFo0NU9xME5UWW9n?=
 =?utf-8?B?M2lHME9NdGc0RXlnTzN3SzJVT0NQRWp0b0tacXYrbElWQ0pqMDdGOForVENh?=
 =?utf-8?B?Tmxpc0taUWJ1ZjY4U3dMUlMxK2pWLzlKNnljMjhqUGY1U2tQdjFJaE1PNElT?=
 =?utf-8?B?KzZaSVJiMkZHc2MxbkN1TTFDZkhZSnZuNU9ORDJGMFRPMzhvYVVpcVEzSGty?=
 =?utf-8?B?SEloYkxURDNDbkV2WUFoSHZxZGo5RkJodTJ1UjFvMGVuZkxsSThGaVdaaHR4?=
 =?utf-8?B?WkZvdEFmN21tY2pralBmYTRSRVhxYmhWU0lNKzhoTmpwRnY2Vnk2OC9tamF1?=
 =?utf-8?B?aDVJWERHOTVUaGprYVpsSXg1a2FkWXJhKy9TVHlCRXk1STNLSGJ3MENIY3kx?=
 =?utf-8?B?WnNxcGJ3TDVKaElNNnJ2WXhmQlRuWGxsdWVhc2FYSnZOeFdYWTVoYnI4SmR5?=
 =?utf-8?B?d1lVekZiU2ZSM0VKVWZWYjFOV2gybDRIMUxuNjBzUmhnTFJ6U3VnMTZjUExV?=
 =?utf-8?B?dUlhbVNucWhSWXo5RVkvZUFPMmRaUnBTSjhrdTFoMitVOSt4VnpuQVRBN0Fk?=
 =?utf-8?B?MGQvMEJTSHgzK3VXbmQydFlnaklXdVlZRndJUDVjMFVMRCsrd0NrOHo3anc2?=
 =?utf-8?B?N0pKRmRabUNEYVdMV01YaE5ObFZ6MjI3ajFwSHpHSnF1SWFubnNvYWZWQ3gz?=
 =?utf-8?B?eWhnZ3ZTa2Q4OXBVOXVsbXVqMng3ZG1zaDI4Tkhpcmc3WHIrb3RtSWdwQmtN?=
 =?utf-8?B?MjM1Sy9zZ1V1OGt1NmZHMHJGb3QzSktBU3h2VFdkOVFFd0xwc2QrMXNNN0E3?=
 =?utf-8?B?T1p0V3N4T3E3SW5kNnR4Q0lGU1Yyc28vT2tZaWxudUF6ZHlKK1kyNnpqOXJ0?=
 =?utf-8?B?VDF3ZER6VkVhQk83bDQxeks4MndwZlJEVkhFeU1leVBMdVE1KzQvM2tnd2pZ?=
 =?utf-8?B?OGQ5cE1FeThKeVlRdnhYbW5HTUZEa3l5eUdnaTVURkw0ZkZkeEx0R2YzN3Zy?=
 =?utf-8?B?cjlIcmphQlNOTFFhYVRiNFFhYm1GVEI2TkpGbnlJR3lwTjNHajFkemZLMDc2?=
 =?utf-8?B?OXBnbWNCanVNeld5VldmekZNNm9XRSsvbXk1MUM4Qko3M3pVa0N6ZWhVTDdl?=
 =?utf-8?B?cGNhY0ZXazY3M3krYjVHY1p5bGZyMVRZemgrcG5YZzJUU3ozZ20wMUpuNzJ4?=
 =?utf-8?B?azQyL2NCbzJINytqSks2UUZnMjIrSWdVNzJTWklhOVNBQTR4aXMzZ1JUS0RH?=
 =?utf-8?B?bkt5dXVwWHhIdThhQUl0dmNEYnp3NWRQajhoeDBuaWFVVmc4cm1kUForZCtJ?=
 =?utf-8?B?eEdwVW5HTjFLSC8vZktlVk8wM3l3UWNWT3ZJRWFETVdsajVtakFFVTB0TXdu?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c079466e-b301-4399-df61-08ddcacee67e
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2025 16:26:53.7649 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dkqrdWIRRi5Qi6vy9hWBL/lFok0hL3+9eioLXCTJunG3b6ql8Hk6DqaS5mufzzETJUEMeuarkxzxnT3ndOAB5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF867D7FF5E
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

On Thu, Jul 24, 2025 at 12:02:37PM +0300, Imre Deak wrote:
> Selecting an option which depends on other options only works if the
> dependencies are guaranteed to be selected (as these dependencies will
> not be automatically selected). CONFIG_DRM_KUNIT_TEST depends on DRM,
> MMU and KUNIT the first two of which are guaranteed to be selected for
> i915, but the last one is not. Hence, selecting CONFIG_DRM_KUNIT_TEST in
> i915 debug builds may result in CONFIG_DRM_KUNIT_TEST being selected
> without the CONFIG_KUNIT dependency being selected. This causes at least
> the following compile error:
> 
> drivers/gpu/drm/tests/drm_bridge_test.c: In function ‘drm_test_bridge_alloc_init’:
> drivers/gpu/drm/tests/drm_bridge_test.c:449:21: error: implicit declaration of function ‘kunit_device_register’; did you mean ‘root_device_register’? [-Werror=implicit-function-declaration]
>   449 |         priv->dev = kunit_device_register(test, "drm-bridge-dev");
> 
> Fix the above by selecting CONFIG_DRM_KUNIT_TEST only if CONFIG_KUNIT is
> also selected.

Perhaps DRM_KUNIT_TEST should select CONFIG_KUNIT ?!

But well, let's fix our own mess on our side. I'm sorry for missing
this detail. :/

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Fixes: 17133255a322 ("drm/i915: replace DRM_DEBUG_SELFTEST with DRM_KUNIT_TEST")
> Cc: Ruben Wauters <rubenru09@aol.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/Kconfig.debug | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
> index b15b1cecb3aad..3562a02ef7adc 100644
> --- a/drivers/gpu/drm/i915/Kconfig.debug
> +++ b/drivers/gpu/drm/i915/Kconfig.debug
> @@ -50,7 +50,7 @@ config DRM_I915_DEBUG
>  	select DRM_VGEM # used by igt/prime_vgem (dmabuf interop checks)
>  	select DRM_DEBUG_MM if DRM=y
>  	select DRM_EXPORT_FOR_TESTS if m
> -	select DRM_KUNIT_TEST
> +	select DRM_KUNIT_TEST if KUNIT
>  	select DMABUF_SELFTESTS
>  	select SW_SYNC # signaling validation framework (igt/syncobj*)
>  	select DRM_I915_WERROR
> -- 
> 2.49.1
> 
