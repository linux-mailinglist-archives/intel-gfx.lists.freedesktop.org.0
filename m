Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCWlLi6pjGkusAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 17:07:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBB1125F33
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 17:07:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E18D10E62F;
	Wed, 11 Feb 2026 16:07:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hQbmtDBq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC7510E628;
 Wed, 11 Feb 2026 16:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770826027; x=1802362027;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Dftsm+KVGQ+h+/mQuy1MhG9XLAh/YPwcLjx9Xhyq3ZU=;
 b=hQbmtDBq4eBsU7W25/W4vsNlMBgbopv1RiOyMzsHpWlZsHn60nWUiouN
 P264Tb6doWQSAUncdSp2X9cNHAIPEbc396QR6U/0jUZE74TPeQTWpap6B
 /wCoib1hPNWKBLvLLqQkRMfUdH/J+zSQak4jvmidRwPvXg2Dbm8/vhn6t
 uX2jRH0VOtlX30GaEcuLgNg4WIh8LeOgEHlH7pOuDrWFG1IgyrP4dc4f0
 9cgl4z9ndNWpWOPIZ2R/XDKInsGLVY3G3uOmtsXAypqaihqoFYSEzzahZ
 cPIhy74zLmARJXz+Ac4jPdGlav/LPxwfAsQsI0nG9P9NVy3NSURfnlU3/ A==;
X-CSE-ConnectionGUID: d/jaiIHOSkC4ZJ9yIRC2Og==
X-CSE-MsgGUID: l0EID5jSTN6aMYWauuY6gw==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="83421176"
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="83421176"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 08:07:06 -0800
X-CSE-ConnectionGUID: zufjGX8FQG6dxLwAqtMkGw==
X-CSE-MsgGUID: hWLM2fEHS8yB1cslGPOGiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,285,1763452800"; d="scan'208";a="212384256"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 08:07:05 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 08:07:05 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 08:07:05 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.30) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 08:07:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UTfXz8IYEf7f61sSvtUwo7PIAukiRVtjyBcGsyAVm7PATXOmfanse9e0d5k7zyLnPFYOGZ3DSMSeJVvqBeNlInYtQ+ZyBcgnVgZpWy8SAsptk/ErjYqjtKJgb4+jV4pvMz0ZAisf15ZtJSdQwY9XXRLUkokP9jy6pr9nHTpbaxbMiPlhm48Re8UsbwJI9EOWqg8nsywEc/V20mMmdHCkBhU18PLFoEZdIoH0dl95qrCBZFfn2NSX2G3Xetn5F9hS+PBnUqids927fOQkgVd8QUy0xQyg7UN5JsCRzNoWtHIO1Fe6NT3sEOLV4x63K3C4fZjh30blyZQkdUQG9scGzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gmwNhQZUmZjA+eKXkrVsC0WQFhcX8FFpuOOBV/UquwE=;
 b=NU1WpQM0/1bq8aBT9zGQjVmw0WAVyDF5yMHV6Po3x0plJrmcqOVlsdqMkWcz3T/Vx2wvLFCQUxHzjoH2Hmoefn284GCKgH2K/cTzufhwHtUcTYFWKnEjrkjhlo15Cv5m0bSprqpfrDzXuLm8xQhsFdAAVjgSxRbjDVxfd/whIpvP9o9tWY2IDBEP1NQBQtYRqrXRhEF9zYpYxztdZrP673B2l3g7l6H9QqX3praxceVitOgdzxn/FPeyhJpFsCoZWXXFmJgHwXrJy8k6VZkJn/2NBcbk+++6wtcbNrf460W4A4fOwOfv3TQb299VYddGrJJUmEK200NhyKDthsfUjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB8111.namprd11.prod.outlook.com (2603:10b6:806:2e9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Wed, 11 Feb
 2026 16:07:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Wed, 11 Feb 2026
 16:07:03 +0000
Message-ID: <86fd3cf3-f6fb-4baf-815b-5013dc177ab4@intel.com>
Date: Wed, 11 Feb 2026 21:36:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dp: Clamp the connector max_bpc request to
 the valid pipe bpp range
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260211115811.508496-1-imre.deak@intel.com>
 <20260211115811.508496-2-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260211115811.508496-2-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0170.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB8111:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d519364-c6a8-492a-08d7-08de69879834
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RllIR216d0Z6RTJ6eW92WGJjWHNmbDhCOGQ2T2hCcG8vNXhlVGw0N1BxVUNp?=
 =?utf-8?B?QnpzRERBTGR1SDhSUTZZbTNneTQ2cFd3dkRNRHlQb0szYnl4RWsxY2RBQUt4?=
 =?utf-8?B?TU1CWk43T1A5ZzAvMkE4azRoQWVtbmJJbTBwTk5HSnlZMTU4TC9tcXNKbnBp?=
 =?utf-8?B?ZDRVTWwvc1RuMFgxOWtDUGFWUnRoeW15a2VHYy9BL0xXa2VUTGl5Nk1VKzhD?=
 =?utf-8?B?K3UvL2hYcUh6cVYyelU4YkNWWmZEa3ZxYmdIYjYwYm9OYmlWSlFNVHhBdmt3?=
 =?utf-8?B?OE5MTWJoQk1PUFF3NlJBL3dyc1BtWFJQSFM3L21zMVZtZU5UUjlXZW1GeUFC?=
 =?utf-8?B?MGgyNWR1RjhGVWZsMUVBTUx2MnVrclJQS1p6OXFYOXlEMnhUUGRFUlJLWHZL?=
 =?utf-8?B?YTNPaDdncmVacm1lZzE1d2MyUlBhVzkyV1krWTI2cFNnV2xzSVM4bFJRaDFa?=
 =?utf-8?B?TTM5QnYybGJmK0R5STc3OENxc2h5Z2YzTnRqU2FXUGttWnRPZExCTUFNeXdG?=
 =?utf-8?B?SjhJcHVKQ2MrRllyZE5RVFJmNmxvaEhPVkd6Z1U3Z3J5SXliWmtnL0Z5MVEy?=
 =?utf-8?B?V3VGNnBnWENUVzlOSVhPWTFiNTFPc2dhQmJMV0gvUUI0ZnRxUTdhYjVjaDQy?=
 =?utf-8?B?bis1YmozaHNoaVpKZDlNWW9PMVJucjhEdk9WZURVSnRhbjBzV1gzZFdjUW1a?=
 =?utf-8?B?U1Rmemk2TGRxMFQzS2VFeCttbzBWQm9ta0lZYzlYTy9tSmszekU4WTBDZHE4?=
 =?utf-8?B?M0doSTRmUFA0MTk2RUhJSmRzU3dIVFAzbGxGRG5LQjVRUmRMMExRMDdzT04r?=
 =?utf-8?B?ZXJsSXdUMWRQVXpLeVBRQ0l3aVV5aUtRcEpvejdYckd0bVVsQ2IxTVI3ZlVY?=
 =?utf-8?B?aEQ4dHJMdTFpUHJYOVMwOHVXZ1dVaUFjV3piK0ZwZEphQlJCQTU2RW50RGMw?=
 =?utf-8?B?UEtZcDkyM0lLSWMwS0VTMHpwTEpnTHlmemVTWGxxOGRoQ1Y3M3h2QUl6bFlH?=
 =?utf-8?B?YnRjdEtoNjl5SWYyQVROQmFSMlpVRmRZR0pQNjNEaXVrR2ZHanRhOU5OTFdC?=
 =?utf-8?B?T1ZiUmI0RXQvejlpV2FiakVQNVp5K0txVEd5a1hrWWFlekxyWUd6VmpMcmZz?=
 =?utf-8?B?WmJFTU5UTkRVcmllMEZtaGV6S2xFVjNLMXVKc1ZLZEZNZ1Bzb01aMHpQN2xH?=
 =?utf-8?B?b2ZwYzc2eVFHN0ZVWWhYcjJQUzI2ZDJZWDFtSzBKenpLa1p2VmNHSmhMazg5?=
 =?utf-8?B?aElJT0JBUzBMem1vWk81MWlrc0tLZHFNZUhEdm5DbVE0T2swQmczRWNxOEtV?=
 =?utf-8?B?emhFSExIdjhLRW5HNzZVb1pPUVRsVVA3ZmlOaXE1VHVaVGViZFVXMnFjZ0R4?=
 =?utf-8?B?d0RmZ0QyQ0lIRytGbkIwUGdCRWVyYUFiNUN5RUozaFRaMjNhRnFoVG5HWk1J?=
 =?utf-8?B?alpJTnozVTdtbytyMjdsb2I0Y09tUTVSMnFRSnZUcDh6bmg0SkUvQml2QjZp?=
 =?utf-8?B?TE10U2JVYWgrbGg2UThXbHEraiswUitEN1hRejhCTDRuOHVJbEI0Yk9GbzM0?=
 =?utf-8?B?dER4dHRZSGR0S3c5NW0weHZwVkVuSWZUZ1NWU3VqV2NUSmhhU3k3eXpTYngv?=
 =?utf-8?B?Sys2TUd2S0JRRUx4b3F4aUJkS0ZNRC9zd0lIMHI1YXhobTBlMFMzTnE5MklV?=
 =?utf-8?B?VWZOa1hwK0NTeXM4b3V6TVVNdFd4ZUQ0OHh5Rk1iLzRjdlNmUEdRQmlCM2Zl?=
 =?utf-8?B?N0VpTDYxaU1kN2hySUZESzZuQ2t5aHB5VWxjV2IzYnk0Wk1hZTFKOWMyLzJO?=
 =?utf-8?B?VG9mWWVNZTRqRmNKQ3IvWFpoNEFaM05Pb2MyVXl3aHQxdVRoY1A1b1hxMkl0?=
 =?utf-8?B?NzZXL09OYjhTSngwOHFHOSt5K1BKaHMxQ0JCTlVnNkU5S3JkdVFyS2FZZzRP?=
 =?utf-8?B?dmMrZlhpM3dJV2RnYzBuZ0luZkkycnJwUkwxUEhFYmtEdVk2ZjJYNlpvd2FL?=
 =?utf-8?B?cmpaZGUyTFdnSlZIZU41SzNwVHdXRjR3RC9RM0IraGtHaTFpSHBMWkp2SnE4?=
 =?utf-8?B?a2dWdW52ZndOalpDcFBlbEc3L29oWDBaTjFsVkg4VU5VWVNNVnF6MGg0TzNt?=
 =?utf-8?Q?BRdM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVZ4d1NmZk53Y2lxdWt4eTc3cWtVLzRGV1djeEx6TlFaS2NEZnRPajdDRmVD?=
 =?utf-8?B?ODNPMUdIQnNLVXUxV1NUbjkvSGw5anE2VTRNYVNoNk5jUjFlWEFreis1UXo4?=
 =?utf-8?B?b3k4TnBGaEpQeWdRQS8zWTgyODcrTVNiVk1EQTdqakIrcytUSStDYnRDZDhX?=
 =?utf-8?B?aUgwNC9IL0RLbVdNeU5IWU1HRENUUTNGc1BvWTVYK0pyK3c0L1k3dlBGV3Zp?=
 =?utf-8?B?cU80cWFRS0w4T2FMeGVyZk9YRTN2VFZkWDl1c0s3b1M5eXE4V1FrQWtqV2dk?=
 =?utf-8?B?cHNUdTdYb1ZJQzVCMlk2ZFB1alFBNW4yYnJYcG5Hampuc2UvZ0NseUltdEox?=
 =?utf-8?B?eDAza0dRTHVlNDV5UHVYWVc5bjBlRDNNbU9pT0JsQzN2NVo4aDNFQWpEUzJ1?=
 =?utf-8?B?UXNSRW5yM0k2VUE5S1dWTFBjT3lqeFlYV1FsN3BybEFCbTI3T3JISGJmeEZm?=
 =?utf-8?B?b1RGZlhMUld5WjRXSktNeEZBRi8zMEZpc2g2U2t1MmtweFdVclNRU2R5ZC9x?=
 =?utf-8?B?NElNakkvNFlZdDZKZVByZDJrTExDRWRScjR3QnZWWTM3dDFXNmE4bmd0cHgy?=
 =?utf-8?B?dXBjQXFDVXFjNjFmdzZtb3JkaGFuVWtnZWcwYnlIZWhTcFY0MW5hdTh1VHV1?=
 =?utf-8?B?QXc2eGxsYnBIL3NjTGlSNzA3LzF5TkhkYVl1UVpvaytSdzduMVE5K1l5b1ZZ?=
 =?utf-8?B?WkxaQlJKM3dnNk43cTZJblNjaW9FZGJCb1gwaEZhSExQdkk2bGpLOVozSjRj?=
 =?utf-8?B?Ujl6emI1U2dTYWRFbEl5bHpRam81V3J1MCt0RXREQ0pWbE9JOENGN2dYaTlD?=
 =?utf-8?B?eDZNSEJLVkdRTjEvTzg2ME5yczlNeENjRVJ1K1BnaHNLM3NTUDIrL2ljQVVl?=
 =?utf-8?B?WHAzYW9aRXlWemsycENRb1ZxRmtyTUNjNDBGZG4wQzhVTmhoWDlIWEJZZXY2?=
 =?utf-8?B?MHJVMW5MejBPRkhYWFBLSEkzSUFRUkZocU9ZdjBXMnZUcWpnblkrMk9WaVIz?=
 =?utf-8?B?WnBNaUNJR1ErUFhyeDd4T0pBU2RHdWFIWklPeWVOZE5PM3FIQ0NzOThGUTNk?=
 =?utf-8?B?ZlQ4L21XbUlwVHR4R2pycnJCNkxyZ253SllsemlxUE9xK2UwdGZMRkpiV1hL?=
 =?utf-8?B?K3oxc0ROQzZhalpMSlh0akRYc2RPdVRtWjN2SW5VVGZpRlV1ejhqajdhWGY3?=
 =?utf-8?B?Uktrb1V6SmhHNVpEeFpsbjd6eXZGNnZoZ1UwUE1tZXFXdEltSis0dUkwSGI2?=
 =?utf-8?B?ZHVSVDlhYXVDMW04NVhnczhCZ242NFNuSDhNSDFwQXZWTmZRRVNrZjc5a0x4?=
 =?utf-8?B?SUV5UFgzdEdQOTYrZ01DVkpnTlVwRmdkT1pObWViVDFudzJlUGU3WG8rcE1Z?=
 =?utf-8?B?VllZa2VjZmpxK3B4RWFmSzFnRStSeGtyOUpydnd1MHlzSVJ0VTh4VHBzRmxi?=
 =?utf-8?B?WnFBeEZyb0RINlY0NFB0T3YweXk5V2d4OG96M1MrdnZQU2IranpncGt1ZFJh?=
 =?utf-8?B?bmdrN0xXTFh4Q0ZrcFlQU01DQ01KQzE5SVlzd1ZoeFBkQnJzcXJ5eVdMS1E2?=
 =?utf-8?B?SkdibWo0dVk5Q2lWN3AvL3F1cEJzc2liRVdzd3lZbTR4NDAvUkNGNy9vcHJ1?=
 =?utf-8?B?YWsrWkF1TlRjcWVqV2pJQlQ1aUNxMW40ZmFvSnhRR240c2I4L3BLUXFGZ1Zj?=
 =?utf-8?B?MVFvdVZSOExkVkMzcksvVGM1ZzZJaXlUWVUxdHFkd0RqdGV5NWVCWmZ6VU1N?=
 =?utf-8?B?QW96anMvdjFWZnRqUVRGTmVyTUhod2xNRG5uVTdoZmZ2UHViWnNEUnBidGJt?=
 =?utf-8?B?TGlrRUlqUk9BS2hIdjRKZlJHVWNTMTE3Z1QwVmxjRTFUK0psSU85K1BwTFUv?=
 =?utf-8?B?bDR2em5jRUpoK0x0R01BREhZZlM2bVRWa0dWVkY2SVVpZ1lBdjZ1T1NsRHpo?=
 =?utf-8?B?cjNzbnhtY1gzSTRoZ2dZN0dOdEJRSkpZcnoxQnkzK2tDdmFFczA5N0N1anN6?=
 =?utf-8?B?QjdYUjFOZ0hRSkY1bThhOEhSOENEdDlXVUU3YklXQm5mbW12Q2tqTVdxNlF3?=
 =?utf-8?B?SlpWODNvc0NiSVdadW5ncy8vMFltZnFRUVkwRjVNU3UwdmhleHJBNlY3MVBZ?=
 =?utf-8?B?VHBZQXE2dGcvZTZJR09sZlUrWXZnaVM1MW5aVlRHZUg3MkFSRHdvaGhhMU0v?=
 =?utf-8?B?TytzVHowclc0YzlKYm02UFI0WVBmdElva2ZsWmhHeXB4c045N3RoTVd0Ykpk?=
 =?utf-8?B?b3N2M0NYU1cyZmNKektRQWozcWx0UTYzSGlRcnprMHRDUnRTN2RZc3lDb2Ur?=
 =?utf-8?B?VEJxcWFDT210K214VktTVWZrRWhlWGxncFovOWVQbWN2dXplYkx3WG9TSFZh?=
 =?utf-8?Q?DM1EsOPXqKSqS/p0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d519364-c6a8-492a-08d7-08de69879834
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 16:07:03.1825 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BS3pWrnK3ZvntkiBbAhNqYL7EzdxCD+2n+PcFxEm9p2Fb/l1frbVbpe9HwbauEGG5aARexBIKA6TaCychnPtgclMpK8DiBz+kYAZ5kE7OeI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8111
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: DCBB1125F33
X-Rspamd-Action: no action


On 2/11/2026 5:28 PM, Imre Deak wrote:
> The user's request for a maximum BPC - via the max-bpc connector
> property - determines the pipe BPP selected by the encoder, which is in
> turn used either as the uncompressed output BPP or as the input BPP for
> the DSC engine. This user-requested BPC->BPP can be outside of the
> source/sink's supported valid min/max pipe BPP range and atm such an
> out-of-bound request will be rejected by the encoder's state
> computation.
>
> As opposed to the above, the semantic for the max-bpc connector property
> - which the user may reasonably expect - is not to fail the modeset in
> case of an out-of-bound max BPC request, rather to adjust the request
> clamping it to the valid BPP range.
>
> Based on the above, calculate the baseline (i.e. the non-DP specific
> platform/EDID) _maximum_ pipe BPP, storing it in
> intel_crtc_state::max_pipe_bpp, separately from the baseline _target_
> pipe BPP (which is the lower BPP of the baseline maximum and requested
> BPP, stored in intel_crtc_state::pipe_bpp). This allows the encoder
> state computation to use the baseline maximum pipe BPP as a hard limit
> for the selected pipe BPP, while also letting it use the baseline target
> pipe BPP only as a preference, clamping this target BPP to the valid
> DP pipe BPP range.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  | 12 ++++++++++
>   .../drm/i915/display/intel_display_types.h    |  1 +
>   drivers/gpu/drm/i915/display/intel_dp.c       | 24 +++++++++++++++++--
>   3 files changed, 35 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ab4b59916d2e7..dae7a7d11cb84 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4374,12 +4374,24 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	struct drm_connector *connector = conn_state->connector;
>   	const struct drm_display_info *info = &connector->display_info;
> +	int edid_bpc = info->bpc ? : 8;
>   	int target_pipe_bpp;
> +	int max_edid_bpp;
> +
> +	max_edid_bpp = bpc_to_bpp(edid_bpc);
> +	if (max_edid_bpp < 0)
> +		return max_edid_bpp;
>   
>   	target_pipe_bpp = bpc_to_bpp(conn_state->max_bpc);
>   	if (target_pipe_bpp < 0)
>   		return target_pipe_bpp;
>   
> +	/*
> +	 * The maximum pipe BPP is the minimum of the max platform BPP and
> +	 * the max EDID BPP.
> +	 */
> +	crtc_state->max_pipe_bpp = min(crtc_state->pipe_bpp, max_edid_bpp);

The function compute_sink_pipe_bpp() is actually just limiting the 
pipe_bpp to sink max limits.
Instead of filling the crtc_state->max_pipe_bpp in this function itself, 
can we have a separate function only to set the crtc_state->max_pipe_bpp 
from the edid max:
compute_max_pipe_bpp(const struct drm_connector_state *conn_state,
                      struct intel_crtc_state *crtc_state)

This can be called separately from compute_baseline_pipe_bpp:

ret = compute_max_pipe_bpp(connector_state, crtc_state);
if (ret)
     return ret;

ret = compute_sink_pipe_bpp(connector_state, crtc_state);
...

This way the compute_sink_pipe_bpp will only do one thing(adjusting the 
pipe_bpp to sink limits).

˚oO(Perhaps we should name it to adjust_pipe_bpp_for_sink()).


> +
>   	if (target_pipe_bpp < crtc_state->pipe_bpp) {
>   		drm_dbg_kms(display->drm,
>   			    "[CONNECTOR:%d:%s] Limiting target display pipe bpp to %d "
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e6298279dc892..e8e4af03a6a6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1163,6 +1163,7 @@ struct intel_crtc_state {
>   	} dsi_pll;
>   
>   	int max_link_bpp_x16;	/* in 1/16 bpp units */
> +	int max_pipe_bpp;	/* in 1 bpp units */
>   	int pipe_bpp;		/* in 1 bpp units */
>   	int min_hblank;
>   	struct intel_link_m_n dp_m_n;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 48845899298e4..4018b0122e8e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1769,7 +1769,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
>   	struct intel_connector *connector = intel_dp->attached_connector;
>   	int bpp, bpc;
>   
> -	bpc = crtc_state->pipe_bpp / 3;
> +	bpc = crtc_state->max_pipe_bpp / 3;
>   
>   	if (intel_dp->dfp.max_bpc)
>   		bpc = min_t(int, bpc, intel_dp->dfp.max_bpc);
> @@ -2726,7 +2726,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>   		 * previously. This hack should be removed once we have the
>   		 * proper retry logic in place.
>   		 */
> -		limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
> +		limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp, 24);
>   	} else {
>   		limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
>   							respect_downstream_limits);
> @@ -2757,6 +2757,26 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>   	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
>   		return false;
>   
> +	/*
> +	 * crtc_state->pipe_bpp is the non-DP specific baseline (platform/EDID)
> +	 * maximum pipe BPP limited by the max-BPC connector property request.
> +	 * Since by now pipe.max_bpp is <= the above baseline BPP, the only

Hmm I think I am missing something. Till now we have set pipe.max_bpp 
using crtc_state->max_pipe_bpp.

This is set using min of max platform Bpp and the max edid bpp (and DP 
dfp considerations, DSC sink input bpp cap).

So the relationship between pipe.max_bpp and the 
crtc_state->max_pipe_bpp is not yet clear.

I do agree with the rest of the below: we need to clamp the 
limits.pipe.max_bpp between crtc_state->pipe_bpp  and limit.pipe->min_bpp.


Regards,

Ankit

> +	 * remaining reason for adjusting pipe.max_bpp is the max-BPC connector
> +	 * property request. Adjust pipe.max_bpp to this request within the
> +	 * current valid pipe.min_bpp .. pipe.max_bpp range.
> +	 */
> +	limits->pipe.max_bpp = clamp(crtc_state->pipe_bpp, limits->pipe.min_bpp,
> +				     limits->pipe.max_bpp);
> +	if (dsc)
> +		limits->pipe.max_bpp = align_max_sink_dsc_input_bpp(connector,
> +								    limits->pipe.max_bpp);
> +
> +	if (limits->pipe.max_bpp != crtc_state->pipe_bpp)
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] Adjusting requested max pipe bpp %d -> %d\n",
> +			    connector->base.base.id, connector->base.name,
> +			    crtc_state->pipe_bpp, limits->pipe.max_bpp);
> +
>   	if (is_mst || intel_dp->use_max_params) {
>   		/*
>   		 * For MST we always configure max link bw - the spec doesn't
