Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E07B39BE8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 13:46:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396BF10E981;
	Thu, 28 Aug 2025 11:46:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l1YlD6OT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA0310E981;
 Thu, 28 Aug 2025 11:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756381580; x=1787917580;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=vYp2YbrATknmRsie5LW1yImKPnHx0U/SWds+S+xyoPI=;
 b=l1YlD6OTSBqmpKijAhT+vC1Wxw0GI0eWjmLRY0c7ST0JAsFgiZVK7uVm
 672q5+lvQ81Z3KYEPQ9ZmWL9vJ5EH3kzHPaTehLScM+w1M2Oro3c4S+nw
 trgFPRCOz2O0EbFpsIYCjMJZ7VLVHp16ykJM2zN+EiCy/Fup3NTlEgqix
 66J/II5/P7l6H6yJM6qAQ5qowzinQR00ukUIenkvpE0QYrLp7rWDPQ1N1
 75axLSwk/pGOq6DskFmfxazk+LrQIB58GaQtJUY2QsqPhnWBPRq8YJnnP
 ojC/AmOacT7mJ8Ph46wfEGf0iygXnRTyca1pCq2ex9xWjuOjaOLnq0WKy w==;
X-CSE-ConnectionGUID: qRZtI0AVQRO0pwRxH+f0PQ==
X-CSE-MsgGUID: 36KVUHkAT2C0pvMXMfUHcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58572539"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58572539"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 04:46:20 -0700
X-CSE-ConnectionGUID: bAkmN2lKSciX99JW3Kc55Q==
X-CSE-MsgGUID: 4hseZFCGRWqewdmp/iBQVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="169337704"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 04:46:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 04:46:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 04:46:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.86)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 04:46:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IdDAZbjYVlQ8i0Giir4z9DHv8gRQwOS1t8fxrmop1WEjpLRltVl8UwmPjrC+6BWHUOqbBVtGE8suIN3KOwpdQrsjdgDkeDL33qR/TABlxG/htb6vx6lSEuTGUWWIWUvWKipjZbx3qXv9EffOdOGEPxQl7yvyqg1py6nAGicKT/9CfgqHAqN1d6b/dQZLnc9Av9TdizN66hiflXywGI+SmhCKgw3nOr6rgEL+baQiYC++VSZQE4XcpoSgbLfjxSFG+lK2QgDI9i0LSpLdTUr2kplnym1hkSftpSi0t0LC7hyh+a2EQPGbPIlZg17vFC/KwVT/lXywa0wxGhENVkwQnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vYp2YbrATknmRsie5LW1yImKPnHx0U/SWds+S+xyoPI=;
 b=ZZYJ33S7sRzQM4pl6vNgvK3CBaGZrvpZkKq6jSfT//Xl2WCHWYDH9Y7ujUenysBGGjhkmXXLd5EKARLKEjA3x240DYALAWePG2vOFFIFm/efv/G+CnG9NPoaTyrLpRu+doOPlFQEwGhC6z8n6f8R6edrPsu65XXbv7mEO5S/x+ZrO/X32BV296+WAlg4gvCOa8jMUXlDS2y24r9I1JzoE6+p2T7inYlMvaJO6Lbcl77mXVA/yeQhYgFlqEYQ9GiSVJUIo5BQN8Q/VfcemvRUL+YUGGmKM+TgNiwYvFSmh7UwOQTCgpdclTroOCmfXAtInMtoYW5ENdJyCEegK9fIvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5806.namprd11.prod.outlook.com (2603:10b6:510:14b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Thu, 28 Aug
 2025 11:46:16 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9073.010; Thu, 28 Aug 2025
 11:46:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v8 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Topic: [PATCH v8 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Index: AQHcGAk/5P3p4aY3iUmRBKCcUaNeV7R38qQA
Date: Thu, 28 Aug 2025 11:46:15 +0000
Message-ID: <3fb1e64044e7b16a5a0e706f08fc85a70ae4278e.camel@intel.com>
References: <20250828104951.1279862-1-michal.grzelak@intel.com>
 <20250828104951.1279862-2-michal.grzelak@intel.com>
In-Reply-To: <20250828104951.1279862-2-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5806:EE_
x-ms-office365-filtering-correlation-id: 8a223ad9-432c-433f-53ac-08dde6287eeb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MDBGM1VyaEwvd0w1ME1vTFFzRUJrMjJ6TE13cUxVY1oxbGtDUFM3SHNBWmdk?=
 =?utf-8?B?eEpKNnhtUkY1U2dBczZCL1J5Z2l5c0Qwd0Q0eTJMNS95MEtONGRSenhYa2Jq?=
 =?utf-8?B?Z28wN1dqY3RueHNWWW1iQmR0dTJPZTV2VUZPVXh3RmNjUlZsYTl2eC81Vnpt?=
 =?utf-8?B?Y0gvbURSaUkrQmEwSklSR1RLcXZ3cy9NOHh4MHJHZXhrM3loZHBkLys0N1Ji?=
 =?utf-8?B?c1p0MW8wWWdnMmhNeks3Z3J4aHhGNWxKUUdndGpjc29PTEUxeFZKMDJqMGxo?=
 =?utf-8?B?a29SenBlTlZGWmJ5VVdZWlJiRjhCVEh1QW1pVWtodkZTcExyWlYyTmdTR3Qx?=
 =?utf-8?B?cWYrYkNtNDBIcnQyWHlEWG96bEZtYWlPQzRHcE9JdjdCR0tRL3M1Z0NnU29D?=
 =?utf-8?B?Y3BRUnlFbEFZQklSS3Q4Ky9mN3dLdDl5akljNjAzak9XSkV2YVlxZGZQMkRv?=
 =?utf-8?B?N1NzVDAzUXV3bVMxenRrTHpnUm44a0tQZjVFeHVVcFFmb1RYVzBYb0dIS3dC?=
 =?utf-8?B?eTg3M296Nm5mQUNBS05CQjdzQi8wNWYySFErN2ZwREEyUktGYzNLZWkvOFpC?=
 =?utf-8?B?S3NIaHlnc0NodXBGNjVjWWFUcFB6SnVDYkNVc3piS1drR1RyZEN3QVY2Vy9O?=
 =?utf-8?B?czhvRWdQVWVtYzVKWXdiZGt5VEx6T3lkbU9XYjQyZEwwbzk2Ylo4Qzc5TERo?=
 =?utf-8?B?c2RHeGIzYkU0d2lJc2RpQ1FqQiszdzE0SnNNektJeUs4dFo2K0xBOUExTWNi?=
 =?utf-8?B?dENnSFNRRHBXNDhMWkF6OVRScWxHb1hZWkNyeEVRc3RRMkhhUUptNXhackRN?=
 =?utf-8?B?VmZKMkFiTDN2RkRsWVBkNlBsZEEwR2dwSFlIRThGQVJSdjVLZDRVclhUdStL?=
 =?utf-8?B?OFVtZDQ1MktSamNWNlZyVHFIemxNRmtOdU8zN2ppT0g3V2drUWk4NVBJeklq?=
 =?utf-8?B?L3pYejQ4SGswWEZGYlVEZUxXMWxUa2lEeE5ZOUpFc0cwNFhVeTlvbnc2cEMw?=
 =?utf-8?B?QkJMWnI5VEs2UUF6R2FqWnB1Vy8zc2NIU3JCWGNydmR1YzJFQ2VobnVVUmhH?=
 =?utf-8?B?VXlHK3FpdDJURkJDdTFTTHJmVGNKUG1wOTBTV1dySG1kWGh6M2FOMGJCZWFu?=
 =?utf-8?B?bHhzZmlydjY3VlV2VE04b1VmN3hicmF5ZjBBbWFVUWU0RitIWEhnekxpSWl5?=
 =?utf-8?B?MjBmYm8yTWkzREpORzZvbXpaSUxPVHVFOVRjOWJ6RzYwWEZCalk2TDM5bW5E?=
 =?utf-8?B?N0dlR0hTcSttWWpEWG9nSEl0ZXovdHc2M21WWDBtYWIvVUlpdG1JVzJVR1Bt?=
 =?utf-8?B?dS92cmpuZlBhWjVmOFhQK2hTWGcwNjdVQkFQbVg3K2MxVTlFRTdOZVFYUFAw?=
 =?utf-8?B?Z3FTMmJPaHh4bE5tRjJiWmVyRXRCQWFHcjM4WklFVHJvQk9yRUYxajh5eXlG?=
 =?utf-8?B?cnpFMUV5QWVVY0ZrTWpSb0Y1ellZcGNOOTRmdEtSdlc4d3ZzbHN6YkVMWDQ2?=
 =?utf-8?B?QjRldGtMb0c2TDl5eW5UY2NselRZY3RqUTFGdG9jYUl0Y3hmQlZQU1N4ZTZp?=
 =?utf-8?B?dkd0WVhKUkJ4VkFnOWlFUFJJck4xajRaVGJLc1p1Q2RmRkNOTnFSZ1JObkJJ?=
 =?utf-8?B?M3BPRDEyZ2hSbW5NQy9LT1F2bnA0aXdqV2ZuUXBwa3gyWlhjK0VWalgyTlV6?=
 =?utf-8?B?SHMwNnZZRFhuK3RPVDBpcTBLMlNBcFplUXpvbXBkNjJZME0xVEpWckU4QzVV?=
 =?utf-8?B?eE56OFhPOXZWQzlVdm1NZnNhZ00vWjhaOVIwRmlNNU44OHJadnRMSlFVcEU5?=
 =?utf-8?B?RlMxZEVOWVh5TEh5Z1lwTHk1WHRzTmJtOTFMMlNITEFNQkFubmgrUS9qVVdj?=
 =?utf-8?B?VUg4ZXI3NjlNd0U5dGI3T3hGMk0rOEdvcS8zR0xkd1JtZm5WTXdFYzgwVEl2?=
 =?utf-8?B?dlF6VmZBTFRoOHU4YXgvTFdzWVNOTVJMTEJ3V2puQnVtWm1TbjhsRFZzMVpL?=
 =?utf-8?B?aXVVUGdWUnNRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RDN0TCtkaXVXbnhhbjBVR21RaXQvSU1HQ005dFlrOEUzKzE1USsyVjdJdlc1?=
 =?utf-8?B?RkgvWnY5UU90a3h4Y0tDOFI1WUZiek1PSGNEM0l5bXNkVmVNYi9LSk1LZUMr?=
 =?utf-8?B?WHR2NzhUMVlBUU56U2g5TUJUMGxFdFRqRFZqUEQxcXQ3cDB2cmVpaUg1U2Zp?=
 =?utf-8?B?UGFGYXFHVE1PVEVwRlRTT2FUVTdiYXZRT0tObmJUbVk2ejQ0T3FWVVVEa2hO?=
 =?utf-8?B?N0YrTGJ2RExzTXdodHc5ZnZwMHN2Rjh1bGFIeTZTRWREMlJKanpMcEtkUE9o?=
 =?utf-8?B?NkFXTHVvUlhWNi9SZzduRVpDQmtLa3lWak1Cd0J0VXVlWGRGUFYyZUo3Rmtx?=
 =?utf-8?B?bkl6ZFJsVTZHbU13MEw4RStxZTFJQjZFWEJHNWZ0bnFXVmdtT1ZocUJYRTI4?=
 =?utf-8?B?emY2VVBwWkdVNWttYXgzWXBJLzhBeE5WNmtJbWtDMzc3eXI2OU95NW1lTGdQ?=
 =?utf-8?B?UXRVbU56NDRWQnlCcDFPazI0VllGWGtxQWNtMUFOTEpPOGRQaDRQN05DODlJ?=
 =?utf-8?B?NENOOEtHcngwZjVHUnNvVUxtR01Eb1duTlZXZGJzWENiSVlzNytxclVBMU1B?=
 =?utf-8?B?Z1ppY3hFR2E2TWlOUUlmRGo3bm9yWUw5V1lRZkY2N0xOMWFWOEp6bTY2ZVFS?=
 =?utf-8?B?MzR4V3JTVWcweDgzTi9ZOWZRQUQyWUoxQUZGbm1VZXdOUCt3MEY1UXhmbUZU?=
 =?utf-8?B?UHZ6L0lCSWVvS1FCZG5zR3UvTUxTU1BvckZQY29uQWUyU1kwSGRFZGNyVU5K?=
 =?utf-8?B?TzBGeS92VkVTbkdJclRrWVRVMzg0eThrTk5aYVZ5QjErZmdyRUxjWUk2YVNo?=
 =?utf-8?B?Mi9XOThCYXlHM0JnN2Z1Mjk4cEtTNDEzN1JldTgzV242OGJYS3RLajh4NU9W?=
 =?utf-8?B?a2QydHlNdXI2L2hET0ZCRnVSOFhHZVBKbTBqcW1PbHh0dUs1MmRmRDU5MDNj?=
 =?utf-8?B?STZyWnlQMlR0ODcycmxlMFMzdWp1TEoxVHBPc1dtYlY0N05LenZJdElOWWFn?=
 =?utf-8?B?SVNjdGZXNGJLSjllLy93elhxK2x6Mk41YUpVUC94YmU0NGdhNkJrZWhLclhS?=
 =?utf-8?B?dmdEZitiejFUWE5EQXNieGtheGVCQjU3ZkRSZVM2MUxBZk1VQ1hCc0luNzBt?=
 =?utf-8?B?cWZOeFZweDd5aTNTdU5weWIrOVNlK2hmTjVZamk2bncwVVNPalJVSU5RclRo?=
 =?utf-8?B?cGhRMWdkOUtoSUVpWjB5WmIyekQzUjI2R3RSdjhjTWRSV0srT2I4UVBNOEZP?=
 =?utf-8?B?YmRXZFZlYktDVXlOOWh6MU1hUnFoVmg1M1dYc2toT05Bb2tvdGJWbHFCWjEr?=
 =?utf-8?B?MXQvVHZIRmhlSy90SlR0UzcvcFBvRStyU05ud25QNXdhb0s3SkFXNkdrVStI?=
 =?utf-8?B?aTNqVjRJcGdrSlBFakdPM1FhM1BhY0RpbTU4cWJPekwxSWRpT24rUU5wYXVo?=
 =?utf-8?B?ZlFMUkFJc2RDUUgxbjJ2NFQxZU9hellrVENrTDlmSng5TXhCQXFncUxtcjJX?=
 =?utf-8?B?RjZXK1YxNEZodnZCalczYkQ5OXZPQmFGZzBKTnJlUHVEVnNraXRsN2VDb1c3?=
 =?utf-8?B?cVdJbnVvRllOdWRHSTArcUtWR2ZMaHorMXlLZkRoeEc4NDFYRzNibTRUZjhp?=
 =?utf-8?B?NTNCT2tuZ3ZuUUhMZFFoYldEQ2dZb3J1Zk1XODFKc3lzQ1lENGxoME41MXZt?=
 =?utf-8?B?aDNJays3UDFLWUFkMHFjZ1M1UW9Cc09PZEJaUDIvaTU4Vkp2RTh2UXh2Wkpk?=
 =?utf-8?B?M3NWT0MwOVFzVmVNa3Y3cXRLY2JFV2tLRUw4N1h0MDMwVUJ2STdkNFZIaVQ2?=
 =?utf-8?B?RnMzMzhrTC9IR0QycktzVHpqZ2piMWdmTFhuOThWazljTzU2dzRuVktDQjB2?=
 =?utf-8?B?Z2c0eUQ4a0YzKzlpZWVtbzhQT293WnVTei81YzVvZ1F0M3dhalp6U1V0UGVt?=
 =?utf-8?B?Q2RsMVBWdzEyNFRYL01hcUlqWXNsdTlvZ3RSanRndzh5MzlUMDhKYURFdFhv?=
 =?utf-8?B?VUxsTFpQZ3kvc2VPK2hLSktuTEJvTkV6b1FiK2NJOFV4Mm5lWUJld0NaRFJH?=
 =?utf-8?B?bUo2NG44Si84N3ZUaytMS0p4WTJrTjYxenZYcDc1c2lvV3FKQlZ1ZFcvSlJP?=
 =?utf-8?B?SnZ6bEJmT0FzTm9BcXpLRGY5MnVNOVZiUEoxQytycXBnTEw4R3JqWllrYlA3?=
 =?utf-8?B?WGxGV3RPTWkwY0YxdmJZSzdYb09vUkdEU1lreitxUFUrdUtlc3hZZElFVitt?=
 =?utf-8?B?ZHFsS1BsdUt2MXozaWVhbk5zYmtBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B2064C1B374E974EA82691EC18DA5E6C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a223ad9-432c-433f-53ac-08dde6287eeb
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2025 11:46:15.8807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mms/8AlAiA6P3W7Rhkr/H3z/DBBwpqpasuiD4o5fZjEbqwpiQepnttyq6yboPwqUBf1HcYVfca9raLG+3YXI/930jnFwt01zZqn+lZIsAP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5806
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDEyOjQ5ICswMjAwLCBNaWNoYcWCIEdyemVsYWsgd3JvdGU6
DQo+IFRoZXJlIGlzIG5vIHJlYXNvbiBpbiBkZWJ1Z2ZzIHdoeSBQU1IgaGFzIGJlZW4gZGlzYWJs
ZWQuIEFkZA0KPiBub19wc3JfcmVhc29uIGZpZWxkIGludG8gc3RydWN0IGludGVsX3Bzci4gV3Jp
dGUgdGhlIHJlYXNvbiwNCj4gZS5nLiBQU1Igc2V0dXAgdGltaW5nIG5vdCBtZXQsIGludG8gcHJv
cGVyIFBTUiBkZWJ1Z2ZzIGZpbGUuDQo+IEV4dGVuZCBmb3JtYXQgb2YgZGVidWdmcyBmaWxlIHRv
IGhhdmUgcmVhc29uIHdoZW4gbm9uLU5VTEwuDQo+IEVuc3VyZSBub19wc3JfcmVhc29uIGlzIHVw
LXRvLWRhdGUgb3IgTlVMTCBieSByZXNldHRpbmcgaXQNCj4gYXQgdGhlIGJlZ2lubmluZyBvZiBp
bnRlbF9wc3JfY29tcHV0ZV9jb25maWcuIENsZWFuIGl0IHdoZW4NCj4gUFNSIGlzIGFjdGl2YXRl
ZC4NCj4gDQo+IFJlZmFjdG9yIGludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZSB0byB1c2Ugbm9f
cHNyX3JlYXNvbg0KPiBhbG9uZyBrZWVwX2Rpc2FibGVkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
TWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoC4u
Li9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaMKgwqDCoCB8wqAgMiArKw0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgIHwg
MjEgKysrKysrKysrKysrKysrLS0NCj4gLS0NCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCBmZDlkMjUyNzg4
OWIuLjBmODMzMmNlMWFhMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE2ODcsNiArMTY4Nyw4IEBAIHN0
cnVjdCBpbnRlbF9wc3Igew0KPiDCoAlib29sIHBrZ19jX2xhdGVuY3lfdXNlZDsNCj4gwqANCj4g
wqAJdTggYWN0aXZlX25vbl9wc3JfcGlwZXM7DQo+ICsNCj4gKwljb25zdCBjaGFyICpub19wc3Jf
cmVhc29uOw0KPiDCoH07DQo+IMKgDQo+IMKgc3RydWN0IGludGVsX2RwIHsNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDIyNDMzZmUyZWUxNC4u
N2M3ZGUzMGYxM2YyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gQEAgLTE1NzksNiArMTU3OSw3IEBAIHN0YXRpYyBib29sIF9wc3JfY29tcHV0ZV9j
b25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gwqAJaWYgKGVudHJ5X3NldHVw
X2ZyYW1lcyA+PSAwKSB7DQo+IMKgCQlpbnRlbF9kcC0+cHNyLmVudHJ5X3NldHVwX2ZyYW1lcyA9
DQo+IGVudHJ5X3NldHVwX2ZyYW1lczsNCj4gwqAJfSBlbHNlIHsNCj4gKwkJaW50ZWxfZHAtPnBz
ci5ub19wc3JfcmVhc29uID0gIlBTUiBzZXR1cCB0aW1pbmcgbm90DQo+IG1ldCI7DQoNCk9uZSBt
b3JlIHRoaW5nIEkganVzdCByZWFsaXplZC4gV2UgY2Fubm90IHNldCBpbnRlbF9kcC0NCj5wc3Iu
bm9fcHNyX3JlYXNvbiBkaXJlY3RseSBpbiBfcHNyX2NvbXB1dGVfY29uZmlnLiBUaGF0IGlzIGJl
Y2F1c2UNCmNvbXB1dGVfY29uZmlnIG1heSBlbmQgdXAgbm90IHVzaW5nIGNvbXB1dGVkIHN0YXRl
IC0+IHdlIGhhdmUgaW50ZWxfZHAtDQo+cHNyLm5vX3Bzcl9yZWFzb24gb3V0IG9mIHN5bmMuDQoN
Ckl0IHNlZW1zIHdlIG5lZWQgdG8gaGF2ZSBpdCBpbiBpbnRlbF9jcnRjX3N0YXRlIGFzIHdlbGwu
IFRoZW4gaW4NCmludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlOg0KDQppbnRlbF9kcC0+cHNyLm5v
X3Bzcl9yZWFzb24gPSBjcnRjX3N0YXRlLT5ub19wc3JfcmVhc29uDQoNCkJSLA0KDQpKb3VuaSBI
w7ZnYW5kZXINCg0KPiDCoAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiDCoAkJCcKgwqDC
oCAiUFNSIGNvbmRpdGlvbiBmYWlsZWQ6IFBTUiBzZXR1cCB0aW1pbmcNCj4gbm90IG1ldFxuIik7
DQo+IMKgCQlyZXR1cm4gZmFsc2U7DQo+IEBAIC0xNjYzLDYgKzE2NjQsOCBAQCB2b2lkIGludGVs
X3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoAlz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gwqAJdTggYWN0aXZlX3BpcGVzID0gMDsNCj4gwqAN
Cj4gKwlpbnRlbF9kcC0+cHNyLm5vX3Bzcl9yZWFzb24gPSBOVUxMOw0KPiArDQo+IMKgCWlmICgh
cHNyX2dsb2JhbF9lbmFibGVkKGludGVsX2RwKSkgew0KPiDCoAkJZHJtX2RiZ19rbXMoZGlzcGxh
eS0+ZHJtLCAiUFNSIGRpc2FibGVkIGJ5IGZsYWdcbiIpOw0KPiDCoAkJcmV0dXJuOw0KPiBAQCAt
MTgxMCw2ICsxODEzLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2FjdGl2YXRlKHN0cnVjdCBp
bnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+IMKgCQloc3dfYWN0aXZhdGVfcHNyMShpbnRlbF9kcCk7
DQo+IMKgDQo+IMKgCWludGVsX2RwLT5wc3IuYWN0aXZlID0gdHJ1ZTsNCj4gKwlpbnRlbF9kcC0+
cHNyLm5vX3Bzcl9yZWFzb24gPSBOVUxMOw0KPiDCoH0NCj4gwqANCj4gwqAvKg0KPiBAQCAtMjk3
MCwxMiArMjk3NCwxOSBAQCB2b2lkIGludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QN
Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJCWRybV9XQVJOX09OKGRpc3BsYXkt
PmRybSwNCj4gwqAJCQnCoMKgwqAgcHNyLT5lbmFibGVkICYmICFjcnRjX3N0YXRlLQ0KPiA+YWN0
aXZlX3BsYW5lcyk7DQo+IMKgDQo+IC0JCWtlZXBfZGlzYWJsZWQgfD0gcHNyLT5zaW5rX25vdF9y
ZWxpYWJsZTsNCj4gLQkJa2VlcF9kaXNhYmxlZCB8PSAhY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5l
czsNCj4gKwkJaWYgKHBzci0+c2lua19ub3RfcmVsaWFibGUpDQo+ICsJCQlrZWVwX2Rpc2FibGVk
ID0gdHJ1ZTsNCj4gKw0KPiArCQlpZiAoIWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMpIHsNCj4g
KwkJCXBzci0+bm9fcHNyX3JlYXNvbiA9ICJBbGwgcGxhbmVzIGluYWN0aXZlIjsNCj4gKwkJCWtl
ZXBfZGlzYWJsZWQgPSB0cnVlOw0KPiArCQl9DQo+IMKgDQo+IMKgCQkvKiBEaXNwbGF5IFdBICMx
MTM2OiBza2wsIGJ4dCAqLw0KPiAtCQlrZWVwX2Rpc2FibGVkIHw9IERJU1BMQVlfVkVSKGRpc3Bs
YXkpIDwgMTEgJiYNCj4gLQkJCWNydGNfc3RhdGUtPndtX2xldmVsX2Rpc2FibGVkOw0KPiArCQlp
ZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAxMSAmJiBjcnRjX3N0YXRlLQ0KPiA+d21fbGV2ZWxf
ZGlzYWJsZWQpIHsNCj4gKwkJCXBzci0+bm9fcHNyX3JlYXNvbiA9ICJXb3JrYXJvdW5kICMxMTM2
IGZvcg0KPiBza2wsIGJ4dCI7DQo+ICsJCQlrZWVwX2Rpc2FibGVkID0gdHJ1ZTsNCj4gKwkJfQ0K
PiDCoA0KPiDCoAkJaWYgKCFwc3ItPmVuYWJsZWQgJiYgIWtlZXBfZGlzYWJsZWQpDQo+IMKgCQkJ
aW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoaW50ZWxfZHAsDQo+IGNydGNfc3RhdGUpOw0KPiBAQCAt
Mzk3OCw2ICszOTg5LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX3ByaW50X21vZGUoc3RydWN0
DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJCXJlZ2lvbl9ldCA9ICIiOw0KPiDCoA0KPiDC
oAlzZXFfcHJpbnRmKG0sICJQU1IgbW9kZTogJXMlcyVzXG4iLCBtb2RlLCBzdGF0dXMsDQo+IHJl
Z2lvbl9ldCk7DQo+ICsJaWYgKHBzci0+bm9fcHNyX3JlYXNvbikNCj4gKwkJc2VxX3ByaW50Ziht
LCAiwqAgJXNcbiIsIHBzci0+bm9fcHNyX3JlYXNvbik7DQo+IMKgfQ0KPiDCoA0KPiDCoHN0YXRp
YyBpbnQgaW50ZWxfcHNyX3N0YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9k
cA0KPiAqaW50ZWxfZHApDQoNCg==
