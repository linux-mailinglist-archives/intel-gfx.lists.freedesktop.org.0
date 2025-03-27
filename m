Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADFEA72DFE
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 11:44:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB17A10E89D;
	Thu, 27 Mar 2025 10:44:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MBaFpH8+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 185E210E89B;
 Thu, 27 Mar 2025 10:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743072269; x=1774608269;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zJ2R/uTBJXjrtw8wWoN0fAqryu6A3aL1QfKTMUQpsPA=;
 b=MBaFpH8+gaYLjWYZKk5f0AtPF69PcggY27odUZGfVr2pLlN7C7ocYEfM
 jEDM0AlDK5NO3Cp25bFjmLBO8TQ78/Hc/bdcD9F3FXmWCBU49J58ju/e4
 2iItizZmXiMiGyy7v+RDks2AZ5eRFJGSrmHwm2sR6cv8MbD7Hh6O0Ivt/
 i+ZY8IkyXXlklw0u2V4qgLfSk6vwHN3S4EkhDDqOr8qg68JChpBCVEwUq
 1lcIonNI0lOs16h5QCw2uq8tOIcyg6z2LbopbWHcYqn9TxBthMIQ4eDak
 59IA70DcjnOw9kUVxR2erd6qx8luKSPSk3X6Lsl80FKt+hWqExkUv+I/1 Q==;
X-CSE-ConnectionGUID: Ahn5cEG+TwiVAg6DOWcoQQ==
X-CSE-MsgGUID: xTw+gYy3Tcy4mFsOO6n2ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44553898"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="44553898"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:44:28 -0700
X-CSE-ConnectionGUID: I9CUg/2cTYeqP70e52qrSw==
X-CSE-MsgGUID: bZrDc5PPSmaOFYxCcfTYdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="129258390"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 03:44:30 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Thu, 27 Mar 2025 03:44:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 27 Mar 2025 03:44:27 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Mar 2025 03:44:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Eul4va6rE4uIHsWdRUe33oCH61grG2DoGk/hQxHRCdGRomFCWI3BYLFIoLbFoX3vsHepoo44eKaZVJLhg1Uo46xBVmK03MNNIMkqCXdFZ6O1htsHIGCAcE+vfVGV0pRlMSfERc0MLyit7hJlSdwYi46W8Adr0lrmE68Z6ty4Rges0TBb0VWG2zeiJd3sTfXdb8991+R/SavPrPaERPTdOLCsryOaVhQqz3nllFeYa3SCx71nhRpbOqUsdYA9mOGuSjk34LUB8M7y4pa9K0SaDv/za2m0waBb4qowZzJZ5lPli5ZSmH+l2oxK33mZCKfB3f0xHrQ/iHQzBIct5pMXuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zJ2R/uTBJXjrtw8wWoN0fAqryu6A3aL1QfKTMUQpsPA=;
 b=Y8MOTdVhWmL1nGILqppBV2XHN15TNqjCKjNLR2kx8dn3mhul9qRVBmBn3TKJtQCbxwbwIjjcX3gn3xF8LgMvQX6VK8N7whfsloyzVmNGZ2/2oVBDdhObmg9j3bNLdls8t+//XBiSOQ1EqXYxPIXR6Gta1DllfewVX8vFhBmX/z7tjIQ85szdsTOyXVBJ7fUPQPmK2A60YLwt0UMUKTRN+ja7HeFdX1yMgZkrhvXLYlv+91wXspwUKtlh8VohJzGhC017sky59B1z/0AS12EZmcCORVYzR/K/7B2Z3vcAhsAJQhsCxx5FjKI7j5ffl8xLHqeWsnQqEV2Co8UVIgj4DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4SPRMB0056.namprd11.prod.outlook.com (2603:10b6:303:1e1::21)
 by SA0PR11MB4718.namprd11.prod.outlook.com (2603:10b6:806:98::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Thu, 27 Mar
 2025 10:43:58 +0000
Received: from MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a]) by MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a%4]) with mapi id 15.20.8534.043; Thu, 27 Mar 2025
 10:43:58 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v6 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v6 4/8] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbmQZnW2jeUCeqcUSe2E/spJag07OB9QsAgAThnMA=
Date: Thu, 27 Mar 2025 10:43:58 +0000
Message-ID: <MW4SPRMB005674D7F917AB6187A44156F9A12@MW4SPRMB0056.namprd11.prod.outlook.com>
References: <20250319191508.2751216-1-animesh.manna@intel.com>
 <20250319191508.2751216-5-animesh.manna@intel.com>
 <f5092028624c49bb3aa710b86b95ed890b944091.camel@intel.com>
In-Reply-To: <f5092028624c49bb3aa710b86b95ed890b944091.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4SPRMB0056:EE_|SA0PR11MB4718:EE_
x-ms-office365-filtering-correlation-id: 71a41389-0a73-4203-4c49-08dd6d1c4799
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?QjI5YnpWTlJ1ZmRhWVNzV2JPdVc1QncwUks2YmthN05iUmdWc1NqckFjaUFR?=
 =?utf-8?B?ak1pckk0K3pCN1pVaUxiT2JxQnZIemhHNGR4WEFweTI3WHZSSUZHZStYbUkv?=
 =?utf-8?B?eVE0Z0xVY1FTNXZiY2c5YUdNSmdRRVJnNmtSblJua1VqVThZYTlPakU2NWN4?=
 =?utf-8?B?YVdkU1RsUFhDejlKVUtKeXc2UXBPejVpOTBnQ3BwNlVZeXkvTnU2UEt2dGMx?=
 =?utf-8?B?VmNpTjhQcmFzTUZ2dWtiYzlpZXk5VmZ3cTl2L0NneVBwNkRHaUlVc2VEUGNu?=
 =?utf-8?B?c09nL1g4MTB1cnJXTG8vKzZzU1FLMjBLNkwvOXZNWEpSTEJkZmwrMzZSdm5w?=
 =?utf-8?B?dnc0cFZjWU5pYVNFdStpSFlSejVEL3pveDhLNmk3OVorZHpxeHBKYzY0aURO?=
 =?utf-8?B?VEcvdTVZRFgvS3IxMVZMdjByMXU4TmkrV09qbGZNTnc5ZjVXdSsxTUZSWkNG?=
 =?utf-8?B?NlJ0bE5zV1pnRG5CTEJUUDIxWmlKTllpOUxIUXlPR0RYdG1sN1NEOUJESWt3?=
 =?utf-8?B?YU91clVCZVgvRnFHbU9mN0JxSE05T1V6YmxoS0VhQmQ4UXRMMEpIc1Yzdzdr?=
 =?utf-8?B?V3pvWmtZc1Z1WVc4dTlud0REYnNXOEkybHZxRjdZT0ZhTzA3eU5seWVpRjEw?=
 =?utf-8?B?U29CazhQN3gzY01rTHJJTFVKNzA2T21LV1F0U2dGUmZrWU15TVRGdTNmMXUy?=
 =?utf-8?B?b09jNTBET0FPek1oVUhzMEsrTXhqUGhyU1JsR0ZSaXdGU1FpdVRhSWlYcktO?=
 =?utf-8?B?TEVpZERmR2dVUlJBakdrMVlsdHdzdHNFK2lhNDZqYVdiWWt3c2lTSGtMYjJh?=
 =?utf-8?B?VHFjRkpYZTE1eERycHNjU01EVVNPRHhqbFNjbnp5bGNjOGR6N0lMSUxwRnFr?=
 =?utf-8?B?UVViRzA2dG5rbzhSaWloUjg2ZmZZdVVrcnhhaWp6anlQUmlyeDROUnFGd1NM?=
 =?utf-8?B?ckFKZm44V3Y1eFRPWi80TUd0Q1gxcFFOUUoxQ3JCVWRYVlRNRVF3T3ZYc3NN?=
 =?utf-8?B?TEhHTU82MVBRSTVYVXZ2VWRDVHQzQXkxWHdyK3orK2E2QWMySndUSWtNNnlY?=
 =?utf-8?B?dmUwWHJpWUhiRmJHa2x0enNJenUwaUJBNTU0VkVkVExhSGQ1NE9hK1ZIZGlU?=
 =?utf-8?B?VzFEU0tmcUt5MDhYM3BqMVltSndlOXBlL3JITU9zeTVnVHgzSzBMWENqcVJs?=
 =?utf-8?B?ckZXUkFxVi9RS0hBZGJ1Q0YzN0lnV2xpNmdtRlZYdDZFSjhza1YvVTl5S2hL?=
 =?utf-8?B?M1UvQmpxUEdhbE05NEFMUllFRFJPU2NjcmxNVjBaeDVKSEx0WU9qVWhMZUpw?=
 =?utf-8?B?TkthcWhCN09lT0Z4aHpaN0FGejBjT2dVSlFZVm0vYlFTT29iSUhvQ1g1WHcv?=
 =?utf-8?B?V3p3MWNycFkzNzdqTkJPS29YRUN3STBTUnRyRkN6eWdzODNaOC9yRVdDaFd6?=
 =?utf-8?B?ZGtucHkzR1pDckk0elpWeGVHYkJGeWhYVitJdHZoRkdlRlZ6STNKcXhVbFl3?=
 =?utf-8?B?TS90dlFwVy8rWVVUOVF1R2ZRSmxFV05uRlJ0VXloWWxOOU93VUtKbGJRZG4y?=
 =?utf-8?B?clJKVjQ1ZG01Z1BJdjdQRTd4RkxsODFZUnhwN3JwTXQrUlBsR2RoczZOWjAv?=
 =?utf-8?B?NkpQeXYrZU9FM01iWnNNZW9hb1FLb3c2bHg3V0ZQd05SdVVXa2JxMEFlVHlQ?=
 =?utf-8?B?L1dib1ZncUFZQk84YldxK1pncHg2MEI5OFMxRk1ES3NwYk1RSFJKelpFcUYw?=
 =?utf-8?B?KzZNZEVPQjd5RE5LMnFUQnpiV2VCMXovTnpGYS96cWkzSzZXVUtvc0dUY3dU?=
 =?utf-8?B?SnNnK2hjK3pwVjlOOWFEakdFVDRJbTZTQjg2N3RPWFg4dmY4cE84SDV3ZVZo?=
 =?utf-8?B?bGVXYlZINjNRZ1h0anJXbXR5d2dIVDVzOTR1VFlvZFBMdXU0bTVmQUJMeDh1?=
 =?utf-8?B?bkxwT2FVRkZHNGRPVVFXa05acW8rTi9vRW9QbTZ4Wm5zMVR4UXBOVGQvdTRS?=
 =?utf-8?Q?LPn9/29Y5MTtOp46ODgGIoCgApPJ+g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4SPRMB0056.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGJ0ZkhMbTRBcHh4Vjh2WEZHS0M4UVBrelJvVVkzRnpJeHh5YTZqQ25CQmRF?=
 =?utf-8?B?aGxLRTVMN3htT2JwRGxZVUxGQ3ZsaE5iODlLQ3ljc3JLWkFlNXIwaGM3U2pq?=
 =?utf-8?B?U2tqSTJYbjNaTmdkTWtkR2h0dkZCcWVsd2F2L1ZteXdPbGluTXZ1OVpiNDZt?=
 =?utf-8?B?aWdTRExWcE0yNGhyV1ZZNVpUVFZrWXlaaGpZemlyeXplQkxMb0FMZ0ZNT1gv?=
 =?utf-8?B?OXczM1hVTGFnOXBmR0hNSFhFelFxdWFDckgySmM1Sk5FK25ZUEVacjJnbVZL?=
 =?utf-8?B?cW1Wc1c2YUdMTGtEWkJWYVBLZmR5YWYzSGdoR25Ca2NlNEFJRXptU2J2dGpI?=
 =?utf-8?B?RE84MHMyeWEwWXdRN3BFdDJQV2pSR0NON1pMZHFlbVdxUzNGeXp5NVdzRVZC?=
 =?utf-8?B?aDZhZzNQMTRBVTdROFpwOWViUmo2VWpLUXdqSGNjODlndWNERFE4S3NqSUs0?=
 =?utf-8?B?aU1yNjVhZHlETTM3L1B5TloyOWJ5RVhwYU4vVEp4SFNxL1A5bStHVEJZU2l1?=
 =?utf-8?B?YnFFTUFxdEQ1WG84Um5aZWROUno1eHMzWkw5clVWNnZGNU1nYTZ4d0FGNXVH?=
 =?utf-8?B?TFQxaUtMdGhKU3hLNllkT05Cd3puV3FaS2FRbVJzSlFWVFJHR045SHl6Vmts?=
 =?utf-8?B?VjJVOG1wWEFBYWpPclN2b3ozaGMyWnpGbFN5ZHNsS2QwTWVKQnR0cmVkNExw?=
 =?utf-8?B?L3RRcGRwU0VWaEJOdHBaTS9JV2Z6d1J5V1ZmVG51R21JZHAySVVKWWRSeFZ3?=
 =?utf-8?B?NjZsSFEyWHd4S21MSjVWM3BSdm5lZXFzSEk5RW9SOU5BYkE1MVRDa0gyRFFV?=
 =?utf-8?B?bVVEZHZkbkhGeG5NMW1xUFhNNFpPc3BzdjJ4VnQrNUdCTnNzUkZ4RkVITVM3?=
 =?utf-8?B?TW5NZWNpOUY1STE0c3lmazBncG9PT1FkVlltTXZ0SGYvbVpFR0VPMXhRcTdQ?=
 =?utf-8?B?WkN6WmI5RC9zb2lacHFRUmJwVUlwY20wbHBlanZrZGlidjlRRUJXT05hU29V?=
 =?utf-8?B?eUlBMmdLV3RQT3R6ZXBrcUdjRE9LZllYRExUclNEVWMzK0t2RHF3ZTNlYnJB?=
 =?utf-8?B?LzVKK093b1kwd2ZtSytWR3NIYk0zME45anJYa3NDcDBSYVZPOE54OXRyazhD?=
 =?utf-8?B?K1M2cHNJamhoM3lBQzZXVGFtc2tnUFNtbmlNRDErLytWVnJlMmJWdk91L3Fj?=
 =?utf-8?B?TEE3a3RKb3BIRFNMSEkvdFBDUmRSOThZMzJLRVNRbE9yZU1BVHVIeGpKemFx?=
 =?utf-8?B?dTF5TFM5VE9FeGhvWldNQk9ERk9pOU1XaU55RkVCdVE5bnhGMDc3SXFoU1p5?=
 =?utf-8?B?cDhGcXlpckUydEFhZ3NWckpFWFplMGZoWmJxOGpRQlQvdnF6aW9GazVWelhy?=
 =?utf-8?B?bmh4L24xQy90cW9hekZuTE0yY21mejdIV0xrV1dkSWhmV2VMTkJ2VHVUYU5E?=
 =?utf-8?B?dlhycW0zSEVJUTVKOFZQWHhndHFKOGJqZnBQMnUxUVZZaDhoOWRMaHUvRHlW?=
 =?utf-8?B?Q3BkOU52a0ZsWmNXaUZyWjJsVGtDMy9rL1hhY2dBSWFxM08yS1lETDY0TUlM?=
 =?utf-8?B?YnRuaHo3Z3Myeml5K081UWZCMStnUTdKeWxsNUYzY0hmRmU2dUIrVVg0bWtL?=
 =?utf-8?B?cURjUGhUa1NGbDlZL2JzTkhsU05ndjJPcFZpSSt5SjFPeVhRNWl1anVkc1NH?=
 =?utf-8?B?ejBHUVgrU2djbVV3VmFQbzZOalpnQUxZUi9QcEc2Rml6c0o5WURqcWRpem9M?=
 =?utf-8?B?SXZ2MXV0QkhvZjlaSk5GV2luaXJJNGVQSUZ1N1g4TG16SEt1T0UxdldtT0hR?=
 =?utf-8?B?dHNNeVJ0bGdndTN5NU5XNmRsaHRESEErMy8rTnQ3QS9JVThkM0JUd0NXbUxp?=
 =?utf-8?B?VkdIcnhnUGFKNm1RbDA3Y2hUd3V1RzRuZEJtOHVUY1pqdyttUVpidTQrRjc1?=
 =?utf-8?B?VVhEZWlHSWVMTmtaVkN1emdNUjFEdkxtUHlTRjBTZWlWWXhuWmhPZW9UTWIx?=
 =?utf-8?B?UW5reWZzSnE2ZjljMExOTnJ3TmkxczJBVUk4NGZUVGJabXIzeVBpWXlxM25x?=
 =?utf-8?B?RGJyOW93dG1qNG0yUlF1Z2c3OVJkZmlwSWxieGRHTUEzVXUxSWIxaWFSZW1p?=
 =?utf-8?Q?UWg+MjxctZcIO4gDgSRwYdS9k?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4SPRMB0056.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71a41389-0a73-4203-4c49-08dd6d1c4799
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2025 10:43:58.4035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OICqqpsvtiWh2HLbTc8bMIm2baWaUdB048Dz6l+V9uXzDan0qDfmLgVdlM/0MzkeB/z/U+EPqdMof3Pb9gprMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4718
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWFyY2ggMjQsIDIw
MjUgMTozNiBQTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwg
QW5pbWVzaA0KPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IEIsIEplZXZhbiA8amVldmFuLmJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY2
IDQvOF0gZHJtL2k5MTUvbG9iZjogVXBkYXRlIGxvYmYgaWYgYW55IGNoYW5nZSBpbg0KPiBkZXBl
bmRlbnQgcGFyYW1ldGVycw0KPiANCj4gT24gVGh1LCAyMDI1LTAzLTIwIGF0IDAwOjQ1ICswNTMw
LCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+IEZvciBldmVyeSBjb21taXQgdGhlIGRlcGVuZGVu
dCBjb25kaXRpb24gZm9yIExPQkYgaXMgY2hlY2tlZCBhbmQNCj4gPiBhY2NvcmRpbmdseSB1cGRh
dGUgaGFzX2xvYmYgZmxhZyB3aGljaCB3aWxsIGJlIHVzZWQgdG8gdXBkYXRlIHRoZQ0KPiA+IEFM
UE1fQ1RMIHJlZ2lzdGVyIGR1cmluZyBjb21taXQuDQo+ID4NCj4gPiB2MTogSW5pdGlhbCB2ZXJz
aW9uLg0KPiA+IHYyOiBBdm9pZCByZWFkaW5nIGgvdyByZWdpc3RlciB3aXRob3V0IGhhc19sb2Jm
IGNoZWNrLiBbSmFuaV0NCj4gPiB2MzogVXBkYXRlIExPQkYgaW4gcG9zdCBwbGFuZSB1cGRhdGUg
aW5zdGVhZCBvZiBzZXBhcmF0ZSBmdW5jdGlvbi4NCj4gPiBbSm91bmldDQo+ID4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgNSAr
KysrLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
Yw0KPiA+IGluZGV4IGMyODYyODg4NDY2Zi4uNWRmMTI1M2E2YjZjIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBAQCAtMzc4LDkgKzM3
OCwxMiBAQCB2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+ID4gaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOw0KPiA+IMKgCWNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4gPiDCoAkJaW50ZWxfYXRvbWljX2dldF9uZXdf
Y3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiA+ICsJCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNf
c3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+IMKgCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
Ow0KPiA+DQo+ID4gLQlpZiAoIWNydGNfc3RhdGUtPmhhc19sb2JmICYmICFjcnRjX3N0YXRlLT5o
YXNfcHNyKQ0KPiA+ICsJaWYgKCFjcnRjX3N0YXRlLT5oYXNfbG9iZiAmJiAhY3J0Y19zdGF0ZS0+
aGFzX3BzciAmJg0KPiA+ICsJwqDCoMKgICFvbGRfY3J0Y19zdGF0ZS0+aGFzX2xvYmYpDQo+IA0K
PiBJIGRvbid0IHJlYWxseSB1bmRlcnN0YW5kIHRoaXMgY2hhbmdlPyBXaGVyZSBsb2JmIGlzIGRp
c2FibGVkIHdoZW4gaGFzX2xvYmYNCj4gaXMgZmFsc2U/DQoNCldoZW4gY3J0Y19zdGF0ZS0+aGFz
X2xvYmYgPSBmYWxzZSBhbmQgb2xkX2NydGNfc3RhdGUtPmhhc19sb2JmID0gdHJ1ZSwNCnRoZW4g
KCFjcnRjX3N0YXRlLT5oYXNfbG9iZiAmJiAhY3J0Y19zdGF0ZS0+aGFzX3BzciAmJiAhb2xkX2Ny
dGNfc3RhdGUtPmhhc19sb2JmKSA9IGZhbHNlLCBzbyByZXR1cm4gd2lsbCBub3QgaGFwcGVuLg0K
TmV4dCBsbmxfYWxwbV9jb25maWd1cmUoKSB3aWxsIHByb2dyYW0gb3RoZXIgYXV4LXdha2UvYXV4
LWxlc3MgYWxwbSByZWxhdGVkIGJpdHMgZXhjZXB0IGxvYmYtZW5hYmxlLiBEbyB5b3Ugc2VlIGFu
eSBpc3N1ZSBoZXJlPw0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KPiANCj4gQlIsDQo+IA0KPiBKb3Vu
aSBIw7ZnYW5kZXINCj4gPiDCoAkJcmV0dXJuOw0KPiA+DQo+ID4gwqAJZm9yX2VhY2hfaW50ZWxf
ZW5jb2Rlcl9tYXNrKGRpc3BsYXktPmRybSwgZW5jb2RlciwNCg0K
