Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIEWDgG0fGm7OQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 14:37:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EEEBB1D6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 14:37:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1727910E9E4;
	Fri, 30 Jan 2026 13:37:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JlYHRtuS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2845D10E11C;
 Fri, 30 Jan 2026 13:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769780222; x=1801316222;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3+y7BqQgHh7JLe4iLZwp8k1rKzSExnPWdnILvZhz2IQ=;
 b=JlYHRtuSE/7nTQX1nXZ1mVWbbmWVS8bwkcVjnKdUWc8efnD3OKTDYqs5
 qUZcAwQ3eznjWp7JjIImnBzTO4I0Ly5Xgo2mUnaUOLhiosWQeqs8N6cJl
 06X2bcVtSwqIqx0pcbGAOF0+i17yugshqcShQvDZeiOTO1bAmTyfAre51
 xwiwJJJcXjnfExzuKTd8CIauQt0iXklxj9XenLCuN4QIuOJTy9sTanwxa
 l8K2Yu5oV9ZuxSW7rRFb2r1WYNHWmTi28pvcxGMmCmutTE6kRAqhYeqg2
 RnlpvrPa+6L6403InhW/xqcKNlk6Bm0qZ8ZreJkm89F3ozBMsaLvmxm3p Q==;
X-CSE-ConnectionGUID: KxawQT8dRdWFKGd7WKRC+A==
X-CSE-MsgGUID: uMw1vjz0TwqSYbxLOb0jCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70048210"
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="70048210"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 05:37:01 -0800
X-CSE-ConnectionGUID: QBsQQdxbSZKXVnDGGLsnew==
X-CSE-MsgGUID: 7ffiXJX0TVG3ZJTjsx0YDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="208965748"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 05:37:02 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 05:37:00 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 30 Jan 2026 05:37:00 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.60) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 05:36:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ERiGqT/bGt+q9URPRb44a5E7rdmpZo2yhzlwe0Y5P9UDZEuURt3+nKAtb9RFWETM5y02YojVn6dmenk/4ndxIKWF5Iv4rCJB0HNQ92rfTMEgYP2dWps8uVhnzaegktoevv6YzD1sF0+HLHGJDZ4I+8nC8XDk/P8r0bGWUC8hBj81zooGZxUBG1lB5zKIy0ZDiqc+umb0PG2oyihuyCMq9/OvtpHzT//HMJLZh5JDJrdWeYpZOwGTdLo+XuVUZhcic42nduZ/EJJsEfpOehWYl9w3exvXex6mptqh7JCteUygXZBs7raQBuyBPM3Gn46LYIO/fEdz0R3gBUArsAuwkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9wjqzyGgCmcNeRYPsdNSk17pkR2q4EWXRdzE9CajWh4=;
 b=V0ya4IlEijTOuF5Haacub9W/xRW7hLon0TgUIM8WEqT16M1P0q+V2CDR8Vg0pb1l+k908PUJa68+ITj69UQkTrqy6zOPlQH9TG5i2Um5ZW+F43X6I5fC3I33kClT9nnkI0DWsuG55qTUzwRInDlhKingQg39rwXAlvDw6KnZOKXqR2Cu/dzSiJLpBPCI0f3ROx278LFKZewIeSukxEEjebC6Uol1tPzH4vWZ5j77jKfG7oEbtO3zIAPL8x8e5TpiAFIJrw9vQcAahfXo02f0y8GGUhmP4B5X8IYtxRSiIoZ0I5XfFbY5v6j/ZP+PjaGjUvOPM9M/oq3LTTPFCYkrzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA0PR11MB7377.namprd11.prod.outlook.com (2603:10b6:208:433::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Fri, 30 Jan
 2026 13:36:57 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9564.010; Fri, 30 Jan 2026
 13:36:57 +0000
Date: Fri, 30 Jan 2026 13:36:46 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v2 2/6] lib/igt_device_scan: Split out reusable
 part of update_or_add_parent
Message-ID: <yv43qczs55sghgbvhdz5jyan6upf7sgcckaslnli33jbz2m4kz@jypceu4xi5ig>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260127100123.114516-8-janusz.krzysztofik@linux.intel.com>
 <20260127100123.114516-10-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260127100123.114516-10-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: LO4P302CA0034.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:317::17) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA0PR11MB7377:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ca73de7-71e6-4c2d-5d3c-08de6004a34b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T09Md256UHRqaFFLQlhSK1lEUnZ1ZkorZ3VVM3ZXWm55QXphSDhkNDJ1bHdR?=
 =?utf-8?B?cVpWYnBuRUdRMEJ3a0g1MmJkRVl0aUpwQS9xQ2wxdEFLU005bWI3L2dlMHl6?=
 =?utf-8?B?VHR6bWdaS3VOV1k3Q0M4SE9uQVk2bXl6VTlCc1R6UnFwdEoyZmpuY1MzZjFr?=
 =?utf-8?B?dmNUSmUxUlRkVnVoYWxvdmw4Wi9COHlKcFJOdEJmTHdxNFZCQUp1ZzhoYlFJ?=
 =?utf-8?B?RTVkekJ2VTdPMWxOZWRUVlJFWXAzMmprWEIvNDZIK2NYQThlZmdsVEZ0aDZR?=
 =?utf-8?B?ZFVKenRFSDl1OVoxcHY0em92NjMrbndzVGVacGJFOEs2MC9TVmVpSGV2QnR5?=
 =?utf-8?B?RE03RDFKd3B4cTRSL3p4V28xRnJBdFRCQUk5NWFZMWVMUXVyZFQ2TFlZUGFk?=
 =?utf-8?B?M0t4bSthamVKbDJWdnNvcjlvZXJ1S3l1V0FBeXMybERWbFpqazFQMVU4Smo0?=
 =?utf-8?B?T1VrU3Y1NFlDNlRqYkZadGpOc2V6a1ZHaFJsTHI2S29jOGt6MktRZm9nVVlC?=
 =?utf-8?B?RVpVMkJrNkxKS21Ec0F3cEFEbDNnVjV1dEwxVTFrK0VzWUdFbUI1SmhnamFl?=
 =?utf-8?B?YnlTZ2tLaFZWaUxSQ1RyREIvZFVhdGtXVERob2RkeE1CV2R4TTB4K3B5MEl5?=
 =?utf-8?B?VnZZWURud1BzUzFBZWErMzAxNkZaR2VZWHRBb3RMWEI4MUpSU2tiT0VuYzU2?=
 =?utf-8?B?S3FId0ZCdi9lUXVWL1p0TXNSNmxEVnBiTUxwYkFXNHJVYVdGbHZtSThrSDJO?=
 =?utf-8?B?UGEzdis0SHNRZzY4OE5UTkNvMUNRc1JwZ2FrM29CNWJWKzVKRklvMGRpK1N2?=
 =?utf-8?B?ZzAxU2tQZWRpazJuemhBNVY5WVJIZ1FmY2VpcnBWb1JEN2ZsK2xCdGV5KzdY?=
 =?utf-8?B?RWxVMFQrMXZEMmswbllsakhJeno1bkQ1a3krb014YitvZ3FlbmdBWDNIUU5r?=
 =?utf-8?B?UHdNNk9VVzA1MjlBUmtDTzV3WUFBeDFUWWg4Ulk0b1RTWWFDbkZ5TWF6bytS?=
 =?utf-8?B?TSttcnFxczlia3drZGphT1RiSUZoeFhXRGplV1htRnI4ZkRRSmJnQW1nKzVN?=
 =?utf-8?B?dDJRekV6a2dFYUdySWNjdWd3UkJYaW9MSU9NblZEbmJURk9mUSs1bkdsclJv?=
 =?utf-8?B?WVVlaXh1VWVOUlBBYUEyOHBFR3JYdEc2QmNscWtSRm41VkRtVXdhUmtsZGlX?=
 =?utf-8?B?SFpGY0VSOXRSQmFLNlpKM1pyZ2VJUHhjR2IvaStMWmlsc3RHVTVZelhWemZD?=
 =?utf-8?B?T1VDQXgxVUQ5N2VwYjZKL3N4bGdFRVJJSWtPeTBYcDN1bHI3ZVNlMm11OVZn?=
 =?utf-8?B?c2NTQ24yTkZUMHZra3dBVTF0V1Vlc1lybG5HQ2xLSUlnbnNQN0lEa1B1SEpK?=
 =?utf-8?B?ZmlwcVU1Q29qdEk5RjM4NTVrUEVyWkgvQWlta0tzVGNxam5oU0hCdGtIUmVY?=
 =?utf-8?B?aVQ5TVJlQlc1d09tdEpTODlYRFdWTFVNeGVPb2JWTm9rNHFPQkQwdG4wYm1i?=
 =?utf-8?B?MWMvNXhZWWxmamE5NldpWDBVaEt1U2tuaXAyYVpFcEFYeXFnVlUraVBHMkh5?=
 =?utf-8?B?VzZaaXJJZlFMZkJNamxVRERRWm9nUVMxTkpOb0ZrMVFzWDhlemgyNEVvTXdZ?=
 =?utf-8?B?bzI0Nm03REdWcEVXQTBibmUyNWRDWFl5alRsM2pQWC9HWGtUd0gyUnM0dVZi?=
 =?utf-8?B?dlUxR1NlK3Rrd1oyUXBSYkRxTUhJeWthQU5HSDFLNmJuNzZBM2I2TXhEa0FX?=
 =?utf-8?B?SmlQM2tQV2xGRFNwaVJYNVltdDc5WllBOHdKckJVVGw1aDB1eXhnOWRzTzVY?=
 =?utf-8?B?NlBMVWF0M1lkeDhEamtVa2Fxd216My9YbGlsUVBkaUxnMVRIVUEvbzVUTDBo?=
 =?utf-8?B?UHlIT3JLVmR0bjRQM0crRFQrbXJGMVVyZVRLRE0rQk8rWE1BbitHNGwybmF0?=
 =?utf-8?B?dW9qUjJzUHJBL01nRGhlT2IrVFczK1p5a0oxN3ZUaVRyQmdRblFZOGorWDF3?=
 =?utf-8?B?ZmNLdVZtVHJwM2M5b09lWEh1bjBnMVU1dFJqTGdSNUtsSExjNDg1QVNtTEd0?=
 =?utf-8?B?YXFGNFY2VWxOMmo1RWl3SlRSNDNsN05yTGdSdVN2eUlQbWdEbUtSamRGaGVt?=
 =?utf-8?Q?KJuE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlhmTVVxbnIvS3lRSGIxUk1rYnpXZGpBQ1JXZTlXV0FrN1ZJZ2t2T3VvZlNr?=
 =?utf-8?B?UWU3Nkg1RUpiMXFIZ3QzNnRiYlhySW5ncGV4QUdEcjJsVUpFUmFsVldOZks1?=
 =?utf-8?B?N2ZYc3hvVVVwRlkyNkNwdnpVQkhqenhTTUdsN0xyMHJteStkaHRnU0hUdTl1?=
 =?utf-8?B?YzVlZUlXOVNPbjB5N3BUQllUNG8rUW52QzlSYzg3N0NiTkVacnE2bG1ZU0VR?=
 =?utf-8?B?RGRuWVliMHJPZVBDaElYRWlXT3JUMFZoSFJOeGwvM29sdm9qd0hWYW04cDJx?=
 =?utf-8?B?K25XbVJBcUdCRGZBeGNubVZUb2xMb1I2dkxFT3VQYXVrVkRXRTNMbmUvNFZJ?=
 =?utf-8?B?RmY3NTQ0QUhFbzJrVjdpUXNUc3hGVVBDYWZsQzRhcGszbDdRSGF5MXBPMGJI?=
 =?utf-8?B?cEIwUEZXYjI4U1E1elh0TEkzWE9QNE1YaVVtb1loMURMVlJjeSthaGptbVhj?=
 =?utf-8?B?K2FlL0JLZHpoZVJFQmVsemt2Z3RtMG1EdjRLZ1ZCRmp6RjE0MlhId0llN05K?=
 =?utf-8?B?SVNvVXdlQ0lSMHNKY0k5NEt4Tm5TWitYSStHVklTVHQxUUlLY01zOVNBVVov?=
 =?utf-8?B?YUpSSkRmMG9wMmJBOHdLZG5Hb2xSa0ZnN2ZUTTJ5SzJJVWllTFRmOXRZei9s?=
 =?utf-8?B?Y1JsZ0NZZEs3Q211SHdYV053SWx6TVRMQ0ZCeDdUNTRmcjdnOVNKaUY4eWlX?=
 =?utf-8?B?TXM0ZFR5WWcwMFNSa2x5SXpZdzFXVXdZQWpRdUZ3NFhqRW1RREZhV0luT2xI?=
 =?utf-8?B?Y2l4T0JVeHFLODNBSVFPY1IwMTI3MHhqQzNXTWs3Mlg0ekVNRkpnWGlGZ2NT?=
 =?utf-8?B?M3piNS9MR01ZTUZJT2liRGh0dURCdVVEUmpWWjdlcDFJc0QvdlgvVVBNbW5T?=
 =?utf-8?B?SisrYmdLZ1E3aCtsZ0g0MzNybVpXdElCUkdMODZuUXJyM2JaNkZidFRFb1pX?=
 =?utf-8?B?NHNQU29oU2U5cVkxQ3lnb0RvSmQ5NndvQmpFRmtWTStvS2ZDMnp0d0JpUVMv?=
 =?utf-8?B?cGRud09YWkI1aC9kaWlheFpoSHV5K2k4T3JLbjRMbjBWVGUrR001dUNGeHpn?=
 =?utf-8?B?ck9oNWdJL3F6dlJBaHRwcjZ1dkdQZ1lKOVpOSmlUamJwc29TUjgrS3h2OUNQ?=
 =?utf-8?B?UVZmcUZVQkVTcGJ6citUZXNyeklwOTlpWVlNaE5DUWFscXNqVTIvRUQxSkwy?=
 =?utf-8?B?cDk1ekFnNHNhemo4Ullib3dEck9BaVplblZtSm85SE8zQ1hnSFZWaGl3UmJo?=
 =?utf-8?B?QnJNM2ppWkI5TWVoTG9zTGZmTXV3UkdpU3c1bC9kc2FpRDZjTVRIVlBLd2kz?=
 =?utf-8?B?VStBQ2VTVkE2cG1UbE5pOVdLNTMweWRDeVJEN3Rna0p4MmlVdXgwYnY1L29N?=
 =?utf-8?B?dlhKbnVQdmlZaFpMT2g1aWl4TEFOSHdrUS9MUGRhSjRqY3d6YTF0bjJFNGFv?=
 =?utf-8?B?WFRVQ1lZTjdGMnErVnVhWUU3c1ZidnZRRFpKcjA4OXUwREZKYmdzd2Y5MkVD?=
 =?utf-8?B?V28xUU5YQUlsQ0YrOGs2cnRsYkZBenZ1QmViOFB2cUg1SCthdXJBN1p6U054?=
 =?utf-8?B?WmZMV0hoT2cwMGMzdGRoR2l4ejJnWU44Nk5pUFIycHEyOStmWXdzNXlwWjdX?=
 =?utf-8?B?dlBpbHYvbGNkYjNBRUlPbDAyRUNXM2x0cDJYWnhVOXZTbVYxcnJoS2xDUEVL?=
 =?utf-8?B?ZGFpVG10ajJPRjFiWW5XSnhNU20wUHNBVkF1ZVNOVDFMc0V5VWJKKzBqMFhR?=
 =?utf-8?B?dXQ0ZjJid2IzbkNGSU9rMlc3QjM3bGlYdWUxK2NXQlNaNnJGL0MyYmpLRjdU?=
 =?utf-8?B?b29TTTNIOHAwQzV5N29La05BeVFUZFhYaVk2aWhGN2F3N2I1UjdEMzE5WkI4?=
 =?utf-8?B?QXloY0wvVnJsaEdRQVd1MXdwS2NQVFI0MUtIRzF4dGtMdEZJcUJCVlZ5MzFY?=
 =?utf-8?B?RUZDS3VkSkt4YVdvNjFydUEvdm1ZNW1TRjZTZTJaVEF0QkE3aWlPSkNudVRQ?=
 =?utf-8?B?NnFZbXpVditIUENWR2h1K2xxRmVYN3J6Z0tFWmxXT3dsUGN5YkdGaEx6bVBO?=
 =?utf-8?B?RkFLbG5STzk1YjdXNzMwSVlaeVlSbElCWHBnR25wb0EySWtpM0g1ajJjYWh1?=
 =?utf-8?B?RityMkpMNzQ0WVBaUnA5a2QvckZkRHF4Q1pkODFNejk1UktORUxsOEdpR0Ns?=
 =?utf-8?B?dDdTdGJZQmlKNDU4ZUFNQ09jZ2tlWUJ3YUFkQVJqQ25Bc0FyZ3FnSFFNVTFR?=
 =?utf-8?B?WERiOU1JTnFzMUJDTkV5eG5tYnEwUXJuMWRMc1NzbDdWRzQxRncvZklIeDVh?=
 =?utf-8?B?SnZqWEdmWUtoaU9IOFA2ckQzeFVwTzNmTWk4Z1Q1cGRzdVFRR0tvWnFKTG1t?=
 =?utf-8?Q?9bzN9/lbyemtTtHU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ca73de7-71e6-4c2d-5d3c-08de6004a34b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2026 13:36:57.6153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UdRJMdEeNnUlehjU+NnWFtbDV+Jv5clUAENdDwil1BOxwBemv27Dgr+QcXEV+8ERFCqB4kovuGX2sjkEa+pcgYNQrAsB/6JICT2exuo4OHg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7377
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C0EEEBB1D6
X-Rspamd-Action: no action

Hi Janusz,

>  #define RETRIES_GET_PARENT 5
Now that you excluded the "parent" word from names in function
below, so it's only implicitly operating on parent devices, you
could change this name to RETRIES_GET_DEVICE.

Rest of the code looks good to me:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

> -/* For each drm igt_device add or update its parent igt_device to the array.
> - * As card/render drm devices mostly have same parent (vkms is an exception)
> - * link to it and update corresponding drm_card / drm_render fields.
> - */
> -static void update_or_add_parent(struct udev *udev,
> -				 struct udev_device *dev,
> -				 struct igt_device *idev,
> -				 bool limit_attrs)
> +
> +static struct igt_device *find_or_add_igt_device(struct udev *udev,
> +						 struct udev_device *dev,
> +						 bool limit_attrs)
>  {
> -	struct udev_device *parent_dev;
> -	struct igt_device *parent_idev;
> -	const char *subsystem, *syspath, *devname;
>  	int retries = RETRIES_GET_PARENT;
> +	const char *subsystem, *syspath;
> +	struct igt_device *idev;
>  
> -	/*
> -	 * Get parent for drm node. It caches parent in udev device
> -	 * and will be destroyed along with the node.
> -	 */
> -	parent_dev = udev_device_get_parent(dev);
> -	igt_assert(parent_dev);
> -
> -	subsystem = udev_device_get_subsystem(parent_dev);
> -	syspath = udev_device_get_syspath(parent_dev);
> +	subsystem = udev_device_get_subsystem(dev);
> +	syspath = udev_device_get_syspath(dev);
>  
> -	parent_idev = igt_device_find(subsystem, syspath);
> -	while (!parent_idev && retries--) {
> +	idev = igt_device_find(subsystem, syspath);
> +	while (!idev && retries--) {
>  		/*
>  		 * Don't care about previous parent_dev, it is tracked
>  		 * by the child node. There's very rare race when driver module
> @@ -951,15 +939,41 @@ static void update_or_add_parent(struct udev *udev,
>  		 * only udev_device_new*() will scan sys directory and
>  		 * return fresh udev device.
>  		 */
> -		parent_dev = udev_device_new_from_syspath(udev, syspath);
> -		parent_idev = igt_device_new_from_udev(parent_dev, limit_attrs);
> -		udev_device_unref(parent_dev);
> +		dev = udev_device_new_from_syspath(udev, syspath);
> +		idev = igt_device_new_from_udev(dev, limit_attrs);
> +		udev_device_unref(dev);
>  
> -		if (parent_idev)
> -			igt_list_add_tail(&parent_idev->link, &igt_devs.all);
> +		if (idev)
> +			igt_list_add_tail(&idev->link, &igt_devs.all);
>  		else
>  			usleep(100000); /* arbitrary, 100ms should be enough */
>  	}
> +
> +	return idev;
> +}
> +
> +/*
> + * For each drm igt_device add or update its parent igt_device to the array.
> + * As card/render drm devices mostly have same parent (vkms is an exception)
> + * link to it and update corresponding drm_card / drm_render fields.
> + */
> +static void update_or_add_parent(struct udev *udev,
> +				 struct udev_device *dev,
> +				 struct igt_device *idev,
> +				 bool limit_attrs)
> +{
> +	struct udev_device *parent_dev;
> +	struct igt_device *parent_idev;
> +	const char *devname;
> +
> +	/*
> +	 * Get parent for drm node. It caches parent in udev device
> +	 * and will be destroyed along with the node.
> +	 */
> +	parent_dev = udev_device_get_parent(dev);
> +	igt_assert(parent_dev);
> +
> +	parent_idev = find_or_add_igt_device(udev, parent_dev, limit_attrs);
>  	igt_assert(parent_idev);
>  
>  	devname = udev_device_get_devnode(dev);
> -- 
> 2.52.0
> 

-- 
Best Regards,
Krzysztof
