Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD62B0A0EC
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 12:46:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9F210E94F;
	Fri, 18 Jul 2025 10:46:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AvBiALLd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2DB110E94E;
 Fri, 18 Jul 2025 10:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752835601; x=1784371601;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=oYKnJCEpXf9Zgu/+Kl5ewwz3zvJHIk9Yfd9Xm8tHClo=;
 b=AvBiALLdB0JJ9+lWB4sNdT21I/Vi9AY7xwdtCQ7RXe8wS3v58LX45SwH
 3tmLw0EagML9BphDx/BzD7jPNFBGNeWOaaCVBXJqmsBgZTMHV7OxL17Hs
 w+rZ+ZXF9WNPwC3zMRMKbqxdAp5NS7gTO9J+Ipsiv0q0oBvRHLqkniQmu
 cExBfGE/eKeNRnLBI4o74z0k4WbBlKDrsxgTTfjnsLxqNPESDgvpSKNEa
 24cDqDML40Dshr+am1qJqaqSKl061OpFOFdEjbJVYajd2iWMtp17UtTJH
 pIM0+EFZYtoq8ZjTDF3Q0c1MdnaeYbz4d7iZubc4/WyHGhI/nbQL1oZLR Q==;
X-CSE-ConnectionGUID: h4gGLd7KR4CwYv9C/MyUSw==
X-CSE-MsgGUID: gnGbzVKnR/el2Par7yH/gQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="55251502"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="55251502"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:46:41 -0700
X-CSE-ConnectionGUID: o48HLFhvTcylj+6EWtiaHA==
X-CSE-MsgGUID: G1GQHvGNSkO+nFY0lZcBjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="157845705"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:46:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:46:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 03:46:39 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.76)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:46:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lkHI2WO0nkLENxN/a0T7+j9yZl5nmKV2iwLU44yK0O+hdoQo4TrCvIjZsCahSBzp814BvM187SgYz0KarB9W9ZUZqZ7/II921+unVizYjwpwFW2i6rUVilmLMyh0QJ3nu30Xj1rHQbdljHXrkYSPdxgeDdTIuiZ8uvH0jdFD0Y4i+Nkdv5Yob1QWOltWV2/xgPb9F4NGfjBHS23U9+HyGMu2S4BExKDUHYMQpAr94yGTKGoUfJW4RuJzcGnl2bGJ76pdtwISIzIOOAgFWTt0sC5AZ6wkEQKVmSPoPZ46tkOEHV8nudSgwrkPJL0HeMKC3RGmYq9sdTNVdN61+1eE4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oYKnJCEpXf9Zgu/+Kl5ewwz3zvJHIk9Yfd9Xm8tHClo=;
 b=I3R/ALwwy1UcsKrQmZ3pM5P0sC5M64OQalNzLloNDPhnCJfSUV5A/lmzzcSVEsn4TyW8hVLDkVXvjygZ2ITqb2+Rv9ve0AM5wGaGcNDqiM4YFeMQY1WX7+AyZWernFEb7W9WYPcL/qUDayS/kAfr1vCLteUi9x52QgWNLHh9pzOIq0KFDFIq6Ht+wOGGharJsUsDtCkz0r0GVYP4ZyLlpD0gBrnPILCajzewvuitUlcCl4pIzRdkF/gWeGeY9k9IiJq00MQ1SoSdyxRlv/aW63yghW+rtkVUwx+u/QexnMZ7iXULlYJEIQDzl+slZhBzR0JZVjiyCX9vYWR8RemB6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB4812.namprd11.prod.outlook.com (2603:10b6:806:f8::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8901.29; Fri, 18 Jul 2025 10:46:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8880.021; Fri, 18 Jul 2025
 10:46:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
Thread-Topic: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
Thread-Index: AQHb9uSw/8wG7IbC4Emrndc4ZWucjbQ2UHaAgAEVpACAAE6MAA==
Date: Fri, 18 Jul 2025 10:46:31 +0000
Message-ID: <bd7a211e9a56b22673cc8b1d66541bcbea7d3b9f.camel@intel.com>
References: <20250717063259.440086-1-jouni.hogander@intel.com>
 <175275909975.1809.8747168482147911326@intel.com>
 <bac5a94acb4cc814a56855be54c2b5e69ab573fe.camel@intel.com>
In-Reply-To: <bac5a94acb4cc814a56855be54c2b5e69ab573fe.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB4812:EE_
x-ms-office365-filtering-correlation-id: 5cd4c111-a5a2-41ee-bf7a-08ddc5e85be0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?L2M1Z2p3cmVCS2ZqcDg3NFVNcmtrTzBHMFdTSEZmWTVDQWZpMHZlclJrbVhs?=
 =?utf-8?B?Wm14clY4ZVlzQlFDWGJ2NklJdW9pak9yKzhVbjZ3cy9XdzRIQ2xIZUpzczEw?=
 =?utf-8?B?bmMvdDQ3aUtjOGpQWHl6d3ZuM0hMbkxuNlN3eTBBc0FlL1NIL2w0YU1xQ01u?=
 =?utf-8?B?WkFjczBzTk1kZkdzYTZ3SUtwR3Y2cTYwV3dvbjlUazhWTE4xT0pkY0Q5TlFj?=
 =?utf-8?B?bHJkbWtwZnNwZm9HRlJLL1hQNTllWkxlTGNDcTlXTnFBZlRSMlp6Z3I0ampQ?=
 =?utf-8?B?Y0Z0MWJnOU00aEIwYkRIalNFUFpoaW41THpQZjRpc21PTVBxQ2RjT1R4Njky?=
 =?utf-8?B?Kzh1d3VyaHdnclgxZC9RYTNJSTJXUGwvYUduNWh1U2w5Wi9jMzNKTWQ3Q3A3?=
 =?utf-8?B?dVhDQnR1NkIvWU5JYzVGWWVnM0pXcW1KSWdpY0R6a3JMcVNCdTNOSi9URHhK?=
 =?utf-8?B?SEQyVllianBJaTJySmNGckhsdzRobk1iMFI1emphbzl1SlM2d3RTcDVSRUNU?=
 =?utf-8?B?MWV4MHF4UWNVK0VEd3hMeHVCaGhkRmEzVUYzK3F5N2pMVXAwbzYrRU5pQlN5?=
 =?utf-8?B?cHFCT0FQR0t6alFOU3R4c0pnVklWdEtCb1B5eFdUd1owWEZ6Szc2ZUp2bkZL?=
 =?utf-8?B?U2VtMzFkSmNpUlczcWVtTXNUdHV3R2E3VVBHbXVwTmJNMElsV25pa0lnV1JR?=
 =?utf-8?B?U3JhNGFtZkNMc3hQRmI0VmZKWlpVV3dJL2xMVmJVVEs0cjhWZXZQdjlXSFFu?=
 =?utf-8?B?bjczUDlyRGwwRkJ1cTRianFLdk96VFRMYlNMMDF5UE9JdFRHRTB4SjVvUTdQ?=
 =?utf-8?B?dkc3Yk44VjVtcTdONld4RHJhdkJUMW53b1NTcjZBUWVDQjZOSUFaSUJIU1Z2?=
 =?utf-8?B?NFNBKzF6eVdySVFwU1V6OGw3WHdiM0wyd0NFcXBCZnlBQ3pBK2orcTVYeWd2?=
 =?utf-8?B?TjFnb0l6bEdlYmplVmdMUEQ5YlJ1eS9CZ2plWXVBYzF0dkc5eUw4Sy9TMHds?=
 =?utf-8?B?OWZBZkVqOFVMdERuT1o1OFluNDM0cmxJS1o4VldONk1lblFMWVJyVGt2ZTNL?=
 =?utf-8?B?VnVOOTBiT0E1NXdsVW80a1dsNGpSbm5nSThOR1lJU2pmWDJDNGh6VFgyNzhD?=
 =?utf-8?B?VFIzaXFmVENFeW9hbk0zejcvL0JjeXBFTzEyT0lIOHJKcTh1VmViTmFTaVdS?=
 =?utf-8?B?SWJoWkZsWmtBTVhIbkQ1UTVOdlRWalNWVklJYmtJc1V3U2ZTZHBuU1R3cllR?=
 =?utf-8?B?NzZCMVY1dG1idk9veUtPWFI2eXlGY3FUSDRrYjdkNTAvaDZRMDlQWkRlZzAy?=
 =?utf-8?B?M0ZBTjBvL3hWK0N0c3pKYVZyY0RwekdSNkNjdW9tUURyQ1B6NzBSUmJuY2dX?=
 =?utf-8?B?dnJUcGUzbVBCbndud1Fzck9FN2pOTGdOK0duZDltTWRIUjRHTFBVenNBaE56?=
 =?utf-8?B?bDFtV0hRYWRkTFpLUHFSUXh0dkcvL3lnUkw5clVXTU0yZGIxNTR0VXZLRXZu?=
 =?utf-8?B?U0pXUGNSZGQ4TGJ1eVpZaGtwOVFHTUJnSzRyVnN4YmRRa3NkMG1kMmZmblpr?=
 =?utf-8?B?QUplbU9kM1FzNXpUWmdOdEkxYU9YMXlZNUtqeVdZcjBUUWJ0NUVTTUpDWWZV?=
 =?utf-8?B?bTVGMFVwMlg0Ny9jWUJHbi93aFJ4YUcxSVI1WWt1YzJoOUhQZnJJSzRYaFVx?=
 =?utf-8?B?eEFodkc5TVU4QXVJWmliWXV5YjQrL0RyTmdEWGkrZUZrOEJybDhRNUowWlJx?=
 =?utf-8?B?ZE9QeFc4L3NuRS9DbFNYL3RoZzRRYVp3WVljMGpGd0YvYVRVK1FJRDhRYWlQ?=
 =?utf-8?B?V1lydk84bHpqQ2Z5UlFOMzU4VnQ0c2JyU1VERm4yTGxWVFBNOFNnaEplUzhh?=
 =?utf-8?B?Qi9NSnNPQ2lKZ0N1YjVoT3NsQjF2TXEvbC96RnJzU0JzcVg0anNyVk02b214?=
 =?utf-8?B?MkhNL3BrTzQ3aE1xdnhpWHZFdHZDWkNrN2pRa3JiMHRxU0t1ZUxFRVdUWkxM?=
 =?utf-8?B?YU1ocUk3cS9nPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXBqSjBaREM0QzBjTWZXRFExQVFlOFF6cEtKUm4vSmNEYVlHZ3BJWEtBYlRM?=
 =?utf-8?B?NXI3TnpoL3VRbWRqS1VBV1J4aHRHaWlsQmF0UDlFMWVVZHRPSjBIM1puck5h?=
 =?utf-8?B?c3ZIQTJPMTdDbUNqYzdLNy9JbDRNcWlPNzdUODhyNWkrU2dwRGQraktYS2Uw?=
 =?utf-8?B?dUtNTHBzcGdmdFIyS2FDcTJvczRXeWtvYi8veG1zbVowYU8ramhieDJaQjVN?=
 =?utf-8?B?Vlo4cFNCTU9mMFl2dG96V3d3MG1udmxqQWVDaGxBQlg0dC94aFJWYllLSCsx?=
 =?utf-8?B?VWJWODVaT3FMRlA5UjEwWElpeHZNQXNqUlBqK1RqdGk1UGpBNjJxYmRXU0Fr?=
 =?utf-8?B?UVpMMWl3Tit4WS9wb3ovYXY1bDcvODFGVm9QRnVPOGhpeWxKeHRxZndiYXMr?=
 =?utf-8?B?aUNxaWpLd2phNnEzRmF5cmxhMWpqVXFrWlNITEFRL0tUM3RyaEQ5dnB1MllR?=
 =?utf-8?B?SnRnMllrKzhIVFhWUzVPZ0NNZkIrRmJsak5mWFJjQlZ4NWhVc2VzUDN2MjE2?=
 =?utf-8?B?elJnb2lCa1IvMm9WYWVTQnVuVG5zblFLc0ZTMHk4NzVtdmlJcTJ5a0lXemJU?=
 =?utf-8?B?YkRmMkdJUi9EY0VaTXpwVk8zQnFJQzJmSXplZG9aMWM0akN4RDlhRE5VbTJN?=
 =?utf-8?B?dlJsenphOTRoWmsvenhRV3paSFFobzdxRC9BS0ttdmk2eUpUZHptU3o3bmN2?=
 =?utf-8?B?RXcwT3RsbThYdWxsWUFmN214Y2RuZyswaE56R1A2VWFFYmMyQnB5VFp5dzdL?=
 =?utf-8?B?bTc4RVQzN2h6djZMcGQyclkzQjNBN1BjbW5JVmNhTGlUWUF4Y2dCL3dMc3FS?=
 =?utf-8?B?QlZLOXpycDZra0swNVdTVmNuN0ttejhzd3k0d2RkNlYxNHZuQUNtTDhrTndX?=
 =?utf-8?B?eFlkZW4wK3BOTFVtbm1POE5JaW9vQ3A3RkJWcUdWVDZBd1hQc3o1RHI4QnlE?=
 =?utf-8?B?dnd1eXUwV3RrdnA1cFhqb2tXVlJvK1JNTFRjZW9BUXpEZ21lTWltVUJ4c2ly?=
 =?utf-8?B?eE9wNi9rVWROL09wbDlGbkFyekwzZjhXZTZGOGhYSytxOG1oNFFld2xHNkRs?=
 =?utf-8?B?ZXZVN1NneGJJOXpyemN4aUprTUhackEyRmdQVmoxbmQrZlhtSTY4OWRhaHhJ?=
 =?utf-8?B?bE5GZGx4NWx5cFZaeVRCZWRtZDBhUjhNajVGeHgrS1BhL1RaQnBWWGo1L05t?=
 =?utf-8?B?eVkxNFpQb1lTaTlaVHZGQ1g3dEErNDZqazkyT0s4b2ZzRjBBTlRNTEVnV2Rq?=
 =?utf-8?B?Mml2Q0UvWGRsOTZINnVRZnJxTG1QcHlsK2k2WVRZc01Nd0IrU0JHZjkzLytU?=
 =?utf-8?B?NFVwb2JtSUg3anNoR3BndlM4R1hxdHBIOGJQZy9RUWJwVTFjOUFOclVXNjJO?=
 =?utf-8?B?OEJNMTd6NklNV3NJbk5adWdmaHpnR0RWTVA5SW4xZFdxaFk1UjV2UXZLZ0gw?=
 =?utf-8?B?bk5wdWVVTG1rM2RlK2NsZTNaZlA4QUhFZ0tNeEhSSnBEdndlL0xEVXVUbmUw?=
 =?utf-8?B?T25EdmR3WUcybzdnMEFXclVrMGE4SE5HK0NwNG0zYi9CWVBJZFlOV0tGSFJy?=
 =?utf-8?B?eElzOWRnVjF6Tm13SkYrSit5MzNxMFg2SVRnWlQ4YWQzR3VyeGMzb1VPVVpz?=
 =?utf-8?B?enNvMzZwWU5Mb0o0Mll4Y3BVOHJySEt4aXpWa0tJMkVXYmRaaGczVlg5OEpP?=
 =?utf-8?B?NXM4aXRaTUpFTzJUaGhQWksrSjROdzJsMDFwazhiOVpaUGpxbTIzUXV3M3li?=
 =?utf-8?B?TS9UQjFja3VDbnZKZGlrM0txM3RYd3JldG9lRmQzMk9NSVZudkNKaUlrYUdt?=
 =?utf-8?B?YmJHOWZEQ1pxTEVTVk5Ia3pwd2ltakJkdCs1T0EvUUJqMEdzMEUrV2U0U29G?=
 =?utf-8?B?ZE02TXY5anZWczJQZVJ3STJSRGsvS3ExSXF2VWtlaENyVk1oMEU4QVhDZjg0?=
 =?utf-8?B?cUVoU0g2Y1dMNmF4cmY5a1pYWkJ2ZHlyUktUc2l6RDdhMUNsQWdBYVgxWGxv?=
 =?utf-8?B?TFJqT3NwNmZnSlhmN1NvT2VTL0N3Sy9Pek5mUlJIV1hNMnZWQ2NTS1dvekVQ?=
 =?utf-8?B?dXZTSkJRKzBSNWx5SWxEZzRkVFdCd3YwVHE3cmJObW03M3d2Z0Iya1RmTGhn?=
 =?utf-8?B?aDI2a3daSmlib3RWckVVVkwydEpPUm85bUpCSkxGNlo3TWdBUHgzL1k3TjFT?=
 =?utf-8?B?ekc4c2hoNDhITXAxTDJyY1dvbkxmd283YjBBS00wYVJIQnNYRHZVTDZoRkpB?=
 =?utf-8?B?VCtmZHFnQXIvR3dlYVhEdVE2Nk53PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8CDFE1BBA8AEF442B912551CE5621660@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cd4c111-a5a2-41ee-bf7a-08ddc5e85be0
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2025 10:46:32.0440 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MCIxyiZKtYMHV5nGqZM4E6/AYOM/h4pHN+69tWPTF1VoxBnlsvg7RR/7m/OK5Rfsesz3TnAzgihluiEJwuVmtzxjgc99wfiWyc7zh+LG8qo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4812
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

T24gRnJpLCAyMDI1LTA3LTE4IGF0IDA5OjA1ICswMzAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFRodSwgMjAyNS0wNy0xNyBhdCAxMDozMSAtMDMwMCwgR3VzdGF2byBTb3VzYSB3cm90
ZToNCj4gPiBRdW90aW5nIEpvdW5pIEjDtmdhbmRlciAoMjAyNS0wNy0xNyAwMzozMjo1OC0wMzow
MCkNCj4gPiA+IFdlIGFyZSBzZWVpbmcgImRtZXNnLXdhcm4vYWJvcnQgLSAqRVJST1IqIFBIWSAq
IGZhaWxlZCBhZnRlciAzDQo+ID4gPiByZXRyaWVzIg0KPiA+ID4gc2luY2Ugd2Ugc3RhcnRlZCBj
b25maWd1cmluZyBMRlBTIHNlbmRpbmcuIEFjY29yZGluZyB0byBCc3BlYw0KPiA+ID4gQ29uZmln
dXJpbmcNCj4gPiA+IExGUFMgc2VuZGluZyBpcyBuZWVkZWQgb25seSB3aGVuIHVzaW5nIEFVWExl
c3MgQUxQTS4gVGhpcyBwYXRjaA0KPiA+ID4gYXZvaWRzDQo+ID4gPiB0aGVzZSBmYWlsdXJlcyBi
eSBjb25maWd1cmluZyBMRlBTIHNlbmRpbmcgb25seSB3aGVuIHVzaW5nDQo+ID4gPiBBVVhMZXNz
DQo+ID4gPiBBTFBNLg0KPiA+IA0KPiA+IEhtLi4uIEJ1dCB0aGVuIHdpdGggdGhpcyBwYXRjaCB3
ZSBhcmUgbWlzc2luZyB3cml0aW5nIHplcm8gdG8gdGhhdA0KPiA+IGJpdA0KPiA+IHdoZW4gbmVj
ZXNzYXJ5LCBubz8NCj4gDQo+IFRoYXQgc2hvdWxkbid0IGJlIG5lY2Vzc2FyeSBhcyAwIGlzIHRo
ZSByZXNldCB2YWx1ZS4NCj4gDQo+ID4gDQo+ID4gQ291bGQgdGhlIHRpbWVvdXRzIGJlIGhhcHBl
bmluZyBiZWNhdXNlIGludGVsX2N4MF9ybXcoKSBpcyBnZXR0aW5nDQo+ID4gY2FsbGVkIHdpdGhv
dXQgY2FsbGluZw0KPiA+IGludGVsX2N4MF9waHlfdHJhbnNhY3Rpb25fYmVnaW4oKS9pbnRlbF9j
eDBfcGh5X3RyYW5zYWN0aW9uX2VuZCgpPw0KPiANCj4gSSB3YXNuJ3QgYXdhcmUgYWJvdXQgdGhl
c2UuIEkgd2lsbCB0cnkgdGhlbS4NCg0KSSB0ZXN0ZWQgdGhpcyBhbmQgaXQgZG9lc24ndCBoZWxw
Og0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBf
cGh5LmMNCmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCmlu
ZGV4IGVkOGU2NDBiOTZiMC4uZTZmZjdmMDdiMmUzIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQpAQCAtMzIzOSw2ICszMjM5LDcgQEAgdm9pZCBp
bnRlbF9sbmxfbWFjX3RyYW5zbWl0X2xmcHMoc3RydWN0DQppbnRlbF9lbmNvZGVyICplbmNvZGVy
LA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCipjcnRjX3N0YXRlKQ0KIHsNCiAgICAgICAgc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGVuY29kZXIpOw0KKyAgICAgICBpbnRlbF93YWtl
cmVmX3Qgd2FrZXJlZjsNCiAgICAgICAgdTggb3duZWRfbGFuZV9tYXNrID0gaW50ZWxfY3gwX2dl
dF9vd25lZF9sYW5lX21hc2soZW5jb2Rlcik7DQogICAgICAgIGJvb2wgZW5hYmxlID0NCmludGVs
X2FscG1faXNfYWxwbV9hdXhfbGVzcyhlbmNfdG9faW50ZWxfZHAoZW5jb2RlciksDQogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNydGNfc3RhdGUpOw0K
QEAgLTMyNDcsNiArMzI0OCw4IEBAIHZvaWQgaW50ZWxfbG5sX21hY190cmFuc21pdF9sZnBzKHN0
cnVjdA0KaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCiAgICAgICAgaWYgKERJU1BMQVlfVkVSKGRp
c3BsYXkpIDwgMjApDQogICAgICAgICAgICAgICAgcmV0dXJuOw0KIA0KKyAgICAgICB3YWtlcmVm
ID0gaW50ZWxfY3gwX3BoeV90cmFuc2FjdGlvbl9iZWdpbihlbmNvZGVyKTsNCisNCiAgICAgICAg
Zm9yIChpID0gMDsgaSA8IDQ7IGkrKykgew0KICAgICAgICAgICAgICAgIGludCB0eCA9IGkgJSAy
ICsgMTsNCiAgICAgICAgICAgICAgICB1OCBsYW5lX21hc2sgPSBpIDwgMiA/IElOVEVMX0NYMF9M
QU5FMCA6DQpJTlRFTF9DWDBfTEFORTE7DQpAQCAtMzI1OSw2ICszMjYyLDggQEAgdm9pZCBpbnRl
bF9sbmxfbWFjX3RyYW5zbWl0X2xmcHMoc3RydWN0DQppbnRlbF9lbmNvZGVyICplbmNvZGVyLA0K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5hYmxlID8gQ09OVFJPTDBfTUFDX1RSQU5T
TUlUX0xGUFMgOiAwLA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTUJfV1JJVEVfQ09N
TUlUVEVEKTsNCiAgICAgICAgfQ0KKw0KKyAgICAgICBpbnRlbF9jeDBfcGh5X3RyYW5zYWN0aW9u
X2VuZChlbmNvZGVyLCB3YWtlcmVmKTsNCiB9DQoNCkRvIHlvdSB0aGluayBJIHNob3VsZCBzdGls
bCBhZGQgdGhpcyBjaGFuZ2UgYXMgd2VsbD8NCg0KPiANCj4gQlIsDQo+IA0KPiBKb3VuaSBIw7Zn
YW5kZXINCj4gDQo+ID4gDQo+ID4gPiANCj4gPiA+IEZpeGVzOiA5ZGM2MTk2ODBkZTQgKCJkcm0v
aTkxNS9kaXNwbGF5OiBBZGQgZnVuY3Rpb24gdG8gY29uZmlndXJlDQo+ID4gPiBMRlBTIHNlbmRp
bmciKQ0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3gwX3BoeS5jIHwgMTEgKysrKystLS0tLS0NCj4gPiA+IDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4gaW5k
ZXggZWQ4ZTY0MGI5NmIwLi45Y2ZjMzE4N2FlYWIgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+IEBAIC0zMjM5LDE0
ICszMjM5LDE0IEBAIHZvaWQgaW50ZWxfbG5sX21hY190cmFuc21pdF9sZnBzKHN0cnVjdA0KPiA+
ID4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0YXRlKQ0KPiA+ID4gew0KPiA+ID4gwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ID4gdG9faW50ZWxf
ZGlzcGxheShlbmNvZGVyKTsNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoCB1OCBvd25lZF9sYW5lX21h
c2sgPQ0KPiA+ID4gaW50ZWxfY3gwX2dldF9vd25lZF9sYW5lX21hc2soZW5jb2Rlcik7DQo+ID4g
PiAtwqDCoMKgwqDCoMKgwqAgYm9vbCBlbmFibGUgPQ0KPiA+ID4gaW50ZWxfYWxwbV9pc19hbHBt
X2F1eF9sZXNzKGVuY190b19pbnRlbF9kcChlbmNvZGVyKSwNCj4gPiA+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlKTsNCj4gPiA+ICvCoMKgwqDC
oMKgwqDCoCB1OCBvd25lZF9sYW5lX21hc2s7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoCBpbnQgaTsN
Cj4gPiA+IA0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8
IDIwKQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIw
IHx8DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoA0KPiA+ID4gIWludGVsX2FscG1faXNf
YWxwbV9hdXhfbGVzcyhlbmNfdG9faW50ZWxfZHAoZW5jb2RlciksDQo+ID4gPiBjcnRjX3N0YXRl
KSkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47DQo+ID4gPiAN
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoCBvd25lZF9sYW5lX21hc2sgPQ0KPiA+ID4gaW50ZWxfY3gw
X2dldF9vd25lZF9sYW5lX21hc2soZW5jb2Rlcik7DQo+ID4gDQo+ID4gVGhpcyBvcHRpbWl6YXRp
b24gY291bGQgYmUgb24gaXQncyBvd24gcGF0Y2guDQoNCk9rLCBtYXliZSBJIGxlYXZlIHRoYXQg
b3V0IG9yIGFkZCBvd24gcGF0Y2guDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KDQo+ID4g
DQo+ID4gLS0NCj4gPiBHdXN0YXZvIFNvdXNhDQo+ID4gDQo+ID4gPiDCoMKgwqDCoMKgwqDCoCBm
b3IgKGkgPSAwOyBpIDwgNDsgaSsrKSB7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaW50IHR4ID0gaSAlIDIgKyAxOw0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHU4IGxhbmVfbWFzayA9IGkgPCAyID8gSU5URUxfQ1gwX0xBTkUwIDoNCj4gPiA+IElO
VEVMX0NYMF9MQU5FMTsNCj4gPiA+IEBAIC0zMjU2LDggKzMyNTYsNyBAQCB2b2lkIGludGVsX2xu
bF9tYWNfdHJhbnNtaXRfbGZwcyhzdHJ1Y3QNCj4gPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIs
DQo+ID4gPiANCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9jeDBf
cm13KGVuY29kZXIsIGxhbmVfbWFzaywNCj4gPiA+IFBIWV9DTU4xX0NPTlRST0wodHgsIDApLA0K
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBDT05UUk9MMF9NQUNfVFJBTlNNSVRfTEZQUywNCj4gPiA+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVuYWJsZSA/DQo+
ID4gPiBDT05UUk9MMF9NQUNfVFJBTlNNSVRfTEZQUw0KPiA+ID4gOiAwLA0KPiA+ID4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTUJf
V1JJVEVfQ09NTUlUVEVEKTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIENPTlRST0wwX01BQ19UUkFOU01JVF9MRlBTLA0K
PiA+ID4gTUJfV1JJVEVfQ09NTUlUVEVEKTsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgIH0NCj4gPiA+
IH0NCj4gPiA+IA0KPiA+ID4gLS0gDQo+ID4gPiAyLjQzLjANCj4gPiA+IA0KPiANCg0K
