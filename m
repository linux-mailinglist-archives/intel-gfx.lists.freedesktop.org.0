Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB0EA6A4E2
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Mar 2025 12:24:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D67610E24D;
	Thu, 20 Mar 2025 11:24:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jYwaPMoN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ADD710E22A;
 Thu, 20 Mar 2025 11:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742469864; x=1774005864;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gxdZk4svqXq7qXuhwYHUPmIzmqpteXScIXZtMvQeWGk=;
 b=jYwaPMoN6jzMlrSbSQextiQt0s9yR1BBByTiSfEWT7hGbkNiWrGIPDNg
 9R3G4wlSTbxzOB5U6wHgnfVtXgAi3xsx0e9xhU7Mx7Wj23CRAZUAgO6sb
 iL6WTOUPKG21FK7LFBHD3YxoqDf8hM291msP5trl9D+Ft6IydqVHEmbdK
 Qqs/uvhNghnVtZyib8O8o453+4mCiW/vCsOp1x6I9fsPcUhfCviaWTfdW
 BuwxcU2VQ4fYTdxzbkNDBqrf4v+hhzfUdJY/eE8UcmqXjZykw52SjEjBw
 2Wics1rcKMfo5Ike0OmgkahShfFjU8ICSlWjtdKNFU/DjwI9hmV1u+/KK A==;
X-CSE-ConnectionGUID: uACazSB1SqycgmYov+yAZg==
X-CSE-MsgGUID: n15ioJpPRp6HUmtw0c/QfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="31280526"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="31280526"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 04:24:23 -0700
X-CSE-ConnectionGUID: mr3vxTL1QuyJ/xtboj5fmw==
X-CSE-MsgGUID: f8lArhQzSrKglX6rX2EKZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="154062992"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 04:24:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 20 Mar 2025 04:24:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Mar 2025 04:24:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Mar 2025 04:24:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fAzwwCieI1FehGyq0SmEPFuAooLXRdzqO//sOTSssCaKzRHKa6o8249Z4nkTZ9UuOlNBih3HGAcpXZ7STuf3Jad5o78jq7uN4s9PzCqTEFPDB5sexsM+8emSkEjHT1h/qVllzkaNv8yfN9Zas2AFiQhYszQ7kXpAPPmnW4252cZUiebYe+xyHdI4ndMJrk9RaUAEJxA1tTTFKNwkI2LPLK6f0uA4CHIC70ynlwarhs4BfUW2MLQcb2C7b3hwlObzs8vKINuhRlWhaak6QSadZZilP3bJizfNUFQfL96kgVu6yG7nMk4vLlGH78IZvRfKSitYZZs8BMFQmShAUGc6pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gxdZk4svqXq7qXuhwYHUPmIzmqpteXScIXZtMvQeWGk=;
 b=D4Ml7+Sn0o+18jX7sC2fqOfnmkeEmpEgJV8Q+HUzLiMeQImxV5narWd/ubtU4gPRGE74tqTCwZ9bcXcndsMaqC0tHp0D/cn7kNqF47IciFvWWB+EIzp02GwYO5gW6qKcnaWgi1/tgjZoQquH359hhh1sXl3a6Xj448WgKLYNe08U58rnNLCNFoXEG20rpDKD5mMLpH/JpyzAhYbyV0mbqd4j5N1VBKOn6UMQYf5jMWsVFcOZSdrEaNreVyU0jqWEqJHkqcee46f3+QA1olYnseNlsGJtqS+WT7iW63+Mz8UFlTJzUiELTfZwNZxW8FddAkxywv/MGYksNqxvF+5b6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB6783.namprd11.prod.outlook.com (2603:10b6:806:25f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.33; Thu, 20 Mar
 2025 11:23:52 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 11:23:52 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 1/3] drm/i915: Fix scanline_offset for LNL+ and BMG+
Thread-Topic: [PATCH 1/3] drm/i915: Fix scanline_offset for LNL+ and BMG+
Thread-Index: AQHbearzv+Y/o85FYUKpo7GyiNDCyrN8IEoA
Date: Thu, 20 Mar 2025 11:23:52 +0000
Message-ID: <DM4PR11MB6360A843172E707A0F8A9C51F4D82@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
 <20250207215406.19348-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20250207215406.19348-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB6783:EE_
x-ms-office365-filtering-correlation-id: 59dc47cf-c236-49e9-9a50-08dd67a1b1df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VEZETWV3NDBYZWkwbmlGdWQ4TksrZ0dVMGFNMURRejl1MnBUaWxMRjliVXEy?=
 =?utf-8?B?MllXOTFWTUFuUnBQamswU0s3Y2daaEo0RUJ1dGNRNFVNN3JMeGwrVHJ3N0gx?=
 =?utf-8?B?WlRGWDlJSzNxSUJXRHN1Y3ZhcWNKL2ZUNC8vVkY1YkVtL3dIYjZnU0RENWlW?=
 =?utf-8?B?Q2k1V3doRE0yeThJOUdJUm9CemRGQnowWTlIQTdEeWF2a2RrdldTZDFmU1lI?=
 =?utf-8?B?VDQyS3VwQ2xyRCtOZC9RYXNaKzZwVm40WXY3ZmowZUQ3V2pyL29vMjFQK1Uv?=
 =?utf-8?B?bkRWOUlGSmN0Mm5pcWU1eWhZaWM5ZmN6MmFybExvZHF5dmxpYU5vR0FlZ3JH?=
 =?utf-8?B?TmFOQUZPbDVMNkpzNm8xUHBOL0tDUjNxVnZxVjI1RmxVVXdBU3c1eHJNcXhS?=
 =?utf-8?B?YlJTUFhWa2ttSFdLU1RHcXhtS0ErSm5yMWd6Q3JtTWNIZFg0d2lhTklZMXd1?=
 =?utf-8?B?enhUTmwyVUdRSmJqeFJibzZVWlFXN0dYMXltazFZRnppSXFGTzRGWnM3aHgy?=
 =?utf-8?B?NjdtSHByZTBvenJLVVF3d0xaTVhrMjRXSlc4ZFdvVGltZkVzT1k5aFNFODBi?=
 =?utf-8?B?RkJqc1VCck5IZEhsaGltMVAzdGJ2aVZjWGViUElMVHBDYWFZc0U4NThnMVd5?=
 =?utf-8?B?UlZtWFl1VXlZMGNieEZlMEgwaStGZXp6Q2M5U1drNk5MbXV2ZFp2SFM3Yzkv?=
 =?utf-8?B?QjFKd3dXamJOb0dhYUhyVXN2bnF1d2RNZlJGdW5lakhEQW1BUVZ0Q1RHbjQz?=
 =?utf-8?B?SFN0QkluR2lNVUE1QjRSaysycU5LWnZCYThJN2dtVW80ZjA5dkRkb2t6emMy?=
 =?utf-8?B?ZXlXQkRNNG92TEJzOVVGemFUMmUrT0VyYnZ3NE53cFNCSDhXbmIra3RTWnQz?=
 =?utf-8?B?SEZOVU1YWjdOOFgyOWpLM3hQTnFqQTRRUWZjWUZ6TzRPMDVqNnFXVXduQ0o0?=
 =?utf-8?B?aGJjNjc5M3pOUTUycTIycit2OVVSaDMyOU05dVdJSFNxMlpGZ1g4ak8rWEtV?=
 =?utf-8?B?eHpJM1IyNHpxRk9nUWMrWnN0OVpuL0FaZU5lN3ZLc29tdy96VjhaWnpjV1Rk?=
 =?utf-8?B?MVFyWUZBK3FydXE1M2dzaFlFWWxvUHo5SlVPa0g3cWQreGFzblMxSDdFNUd0?=
 =?utf-8?B?RU95Z1FKRVBYODdlVnlYZHd5UDVyRi9rY01WV0N5ZEhUdTh0clpMQkNMd3Nj?=
 =?utf-8?B?cDlZb3p5YkpVZTc2cWI1UDFIVlFBOWQ4Y0hYYkYwdnJ6NWp2ODltcnFMZ1kr?=
 =?utf-8?B?em9SQm5TVXRnS3hQKytjOTh2ZkJkc2JVSUpNUXlPZFNKVU9kMlpFZ1VwMzA4?=
 =?utf-8?B?UEpMams3TmhHcDA2TzNoZVZRS2F6bE1GYkQwWVUyNzkrTGlJV3F0U3YvY0d6?=
 =?utf-8?B?c3kzZlY0bGpFMTNIMmhPekxveGdMei9KNUEydUlJTUpnNEZqY3JiZDc4VWRr?=
 =?utf-8?B?akhUeFBrYmRPREdTQS9UWFFkZDlocHA4Q3lzVUw0SFRyZGx2MHFSV3NCTjM5?=
 =?utf-8?B?d0FJNjczZzRNTVVSdWhlNVF2WC9WdERJWUpWVDcyTDlCa3BYLzBqcUduUU5l?=
 =?utf-8?B?eXZySmF3bjVZU2lFVVZ0ZklmOTNLTXRub3l5U2VqZ2UyZlhlakRWcVFCdis1?=
 =?utf-8?B?Z05xSHFkTjdST0lsQzFOT0lXc1lnenRNTjJFbjgxZm1TMHhhTlpYWW5odnNx?=
 =?utf-8?B?YzM0dE0rMmsrbE1lZWt0b1E3aXBSbk5Rd2NmTVVuanBwWHR2c0dhVUFHR005?=
 =?utf-8?B?bEl0WElNejZ1ZDNKVVl1eUU5bVEwNnVMeVpkckpneE0vTHZEOVRJYlliN0Zw?=
 =?utf-8?B?VGg5STBsRE5VaUFpdUFIaEorZ0tTQmM5NlZjc3hJdzNYUWlkcUUrSDJIQ0d3?=
 =?utf-8?B?eklIdnp2ODZxZTB2dWMyUlZ3Z0Rid3N1RzlRVlV1ZlU0aytlR0FzZFhnMEVq?=
 =?utf-8?Q?4I7xs1dSPEWldT1ybItgG59YbTCcEQEm?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWNXY3VseExWQmtPb0tqS25XWldoaG1RRDBNQm9kbmN0MllWTU5rN3M2OWFE?=
 =?utf-8?B?RjN5ZlY5U3ZyUjJZc1N0N29UVHdMY2JwSGd0ZlZqUVk4UktzVzVFeE8wYzZP?=
 =?utf-8?B?NTlLbS84bTRrRWppWXg0WkkxKzJDTzFTdzVVSEtGa3RxQS82NHhyeW9EZU1i?=
 =?utf-8?B?YWIyUXFvYzRtTjBFZlhvekNaNitmTlVmUTdqS3JrZGM2eEZPcjdDeStzMDhS?=
 =?utf-8?B?MS84R2lSdTFlSGIrUUttT0J2eUFvY0xWVkVzUG1MZ0hJcDcybkgwOTVQQUVR?=
 =?utf-8?B?SVNIN3RheDlpWHZRQ1lJcC9BY0dwdlhhKzhJY3ZwSE56cjI3UGViTUNsa3oy?=
 =?utf-8?B?VVdsU2VhaCt5dDZCSVdQTjhDc2dGdmdteWVocFRqRnYzUGtHSTlkWGxrc251?=
 =?utf-8?B?cDZaNXR5ZVVCR1FoV08rblNRSEt4UE9yOWxPcHFnOGRiWGc2aDY3eGQ5OHgr?=
 =?utf-8?B?d0lVeU42YlhHMWlWN1lid1U2ZHhtYjlvbmtEMlBGaWpwYUVIV2pNd3F5R2NZ?=
 =?utf-8?B?UWxxZjc2TG5IM3hoNzZkQmpLUlNVNUtRY01DTnVuMFFMcVFpUlpqNEFCakEr?=
 =?utf-8?B?Z3JnTTdYTjhQcFhrZURHc2QvclJrY051elFBMjR6OVpDdDYzTzJodHNNd3J0?=
 =?utf-8?B?T3ZGOG5JZE1CMnZVSHRBa0xuTnBVL1NyVGVUNEVjZWtTbjZyWjVnbkFyVllE?=
 =?utf-8?B?Q1NGRzBuU0dXR1dHVnRiZ29vZmQ1UjB4Rm9vcFVZUFFUV0haQjNONlRHWE5H?=
 =?utf-8?B?YmZnMTdKcW1mNVJHN1d1WjdOVlNjSkxhTlNYOTFVZG1tVXdoMW9LOXBmVFN1?=
 =?utf-8?B?aGQ3aDBFZlVKeWtQQXo5ZmowREgwbXZFMG9LZE9xdTY4MVpXbWIzMkJDL3VQ?=
 =?utf-8?B?YWQ5SGNycjlYbkp4WTM5K1VyTmpVenVmd2JYbWt0MHFzZ1dYYVBZWWlSRXZZ?=
 =?utf-8?B?WWJEYXN6VDZSN3pCUm8vYVkyS00rQXdRbENjK2FWSWxLK2tWb1lSRDYxYzVG?=
 =?utf-8?B?dnVDYm1sVW5rakNpVjY2WC9sNktsRDFUYnkwUkN5TW14cTQzOEVpMGNTMkxR?=
 =?utf-8?B?aGpvakpiZlFWVkdBSUVmYTZ2aUV2MVN5cUMvOUlXVXppRHdkWlhQSVhjb3Iy?=
 =?utf-8?B?dExub1FFU0Y4cjJ1dWxTZXpYa1RmTEZESTZsdG9WeTQyOC9vdk5PUVlQSFp2?=
 =?utf-8?B?Z3ladmsvOGMvb0JMTkJFWEJrOTc1TXlHZ3FTYyt1bnExOUpTbDR4RE9YY3RT?=
 =?utf-8?B?MXBMYUFicWR1RzlhSjU0ZkRjQ0lveU9Gc25FMGJVS2hmODRwYW12anNMQWVV?=
 =?utf-8?B?WDBRZ2xpczZYT2RIVGMyeFZremplbVl5RVpYa2VsT3dubVdYS3hUMEQ0aWl5?=
 =?utf-8?B?S21hUEZFK2FFcGl5TVE4dDdtZnBmN041RUlJK1JNSGlCb3ZEQTYweStkeXZL?=
 =?utf-8?B?VlVRRjlOK0NNakNjOTk5UnNWVnZJNVk1d1pHSStEemtWdlB3NnZiV3Q1V0d1?=
 =?utf-8?B?VVY3TE4wczU2T0FYdU1uamkyazdRQWJnNEllVkNwT0hLaE1CNGdrQjFhTC8r?=
 =?utf-8?B?cnVOTnhwa0JlYThLRnlhL0JZSG5MandhNTdQbDkyR2JLb2pQa25Bc3lhaGIz?=
 =?utf-8?B?aFkremlMN21JM2lrV2xFT2R1aWQzVlMxODlVVXAxZEJ3TDNGU2swcGJlMTZi?=
 =?utf-8?B?QXhGaHJGZ0dhb3ZlT2xncWtBQU5QOHpaVmR6NUVYSXh3VkdhYlVpOGhFMVJ1?=
 =?utf-8?B?WUxmNi9GRUdjdUZLWHozSTdoekl2d2d3My9aN0VpSHBsVElBRmpUMy95TWFS?=
 =?utf-8?B?WjFxdlFtWTRxdVg4ZnVnVnpZLzArYWdOMStURmZDRmczKzZQajRWajM4K1d3?=
 =?utf-8?B?SHRyNGlQZDZEWGsxNWpqM01tM1kvZ2xDL0lPdUNib3ZyNE16QzAvaHVDVU1r?=
 =?utf-8?B?NkpiSk1JamVMUkk5UWpSSzNYdkNkTDhoc1oyb0RMbDYvVlp4WW5FS3VVd2ZG?=
 =?utf-8?B?T3BpcmJaL2VOckhxZ2ZDK0cvMEVlRTc2MHlZOFNYQkxFN0R5SUJOZXkwSmR1?=
 =?utf-8?B?NnNlVFpDbkJqTGlNcHZ2Ymp5RHB6QTNYRnhBbTl2alI3dVZYcThaQUpJUnhn?=
 =?utf-8?Q?QI8cWRRMr+pyA1WTlV0yq8KXa?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59dc47cf-c236-49e9-9a50-08dd67a1b1df
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2025 11:23:52.8076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8XoE4Iik/nV9OEs5XpetV45Kf8ekjJamCiJUp+qfFDF5NnBJvdzS+B1W0StAD+YNV8HlBHD72usovXsT6tj0og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6783
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFNhdHVyZGF5LCBGZWJydWFyeSA4LCAyMDI1IDM6MjQgQU0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBbUEFU
Q0ggMS8zXSBkcm0vaTkxNTogRml4IHNjYW5saW5lX29mZnNldCBmb3IgTE5MKyBhbmQgQk1HKw0K
PiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gDQo+IFR1cm5zIG91dCBMTkwrIGFuZCBCTUcrIG5vIGxvbmdlciBoYXZlIHRoZSB3ZWly
ZCBleHRyYSBzY2FubGluZSBvZmZzZXQgZm9yDQo+IEhETUkgb3V0cHV0cy4gRml4IGludGVsX2Ny
dGNfc2NhbmxpbmVfb2Zmc2V0KCkgYWNjb3JkaW5nbHkgc28gdGhhdCBzY2FubGluZQ0KPiBldmFz
aW9uL2V0Yy4gd29ya3MgY29ycmVjdGx5IG9uIEhETUkgb3V0cHV0cyBvbiB0aGVzZSBuZXcgcGxh
dGZvcm1zLg0KDQpJbnRlcmVzdGluZyBmaW5kLCB3aWxsIHRyeSB0byBmb2xsb3cgdXAgaW50ZXJu
YWxseSB3aXRoIGhhcmR3YXJlIHRvIGV4cGxhaW4gdGhlIGJlaGF2aW91ci4NCg0KQ2hhbmdlIExv
b2tzIEdvb2QgdG8gbWUsIGhvd2V2ZXIsIHdvdWxkIGJlIGdvb2QgdG8gYWxpZ24gb24gdGhlIGRp
c3BsYXkgdmVyc2lvbg0KY2hlY2sgYXMgYmVpbmcgZGlzY3Vzc2VkIGluIHRoZSB0cmFpbGluZyBt
YWlsIHRocmVhZC4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwu
Y29tPg0KDQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnDQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYyB8IDQgKysrLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+IGluZGV4IDRl
ZmQ0ZjdkNDk3YS4uN2IyNDBjZTY4MWEwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gQEAgLTIyMiw3ICsyMjIsOSBAQCBpbnQgaW50ZWxf
Y3J0Y19zY2FubGluZV9vZmZzZXQoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpDQo+ICAJICogSG93ZXZlciBpZiBxdWVyaWVkIGp1c3QgYmVmb3JlIHRoZSBzdGFy
dCBvZiB2Ymxhbmsgd2UnbGwgZ2V0IGFuDQo+ICAJICogYW5zd2VyIHRoYXQncyBzbGlnaHRseSBp
biB0aGUgZnV0dXJlLg0KPiAgCSAqLw0KPiAtCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAy
KQ0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAyMCB8fCBkaXNwbGF5LT5wbGF0Zm9y
bS5iYXR0bGVtYWdlKQ0KPiArCQlyZXR1cm4gMTsNCj4gKwllbHNlIGlmIChESVNQTEFZX1ZFUihk
aXNwbGF5KSA9PSAyKQ0KPiAgCQlyZXR1cm4gLTE7DQo+ICAJZWxzZSBpZiAoSEFTX0RESShkaXNw
bGF5KSAmJiBpbnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUsDQo+IElOVEVMX09VVFBVVF9I
RE1JKSkNCj4gIAkJcmV0dXJuIDI7DQo+IC0tDQo+IDIuNDUuMw0KDQo=
