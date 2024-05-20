Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1208C98AA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 06:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518B210E1BD;
	Mon, 20 May 2024 04:40:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A4PMgVUi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD1C110E1BD
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 04:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716180013; x=1747716013;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=8wPyG/iu7NF9+C4jpbd4ngAC60oz9X0YgNKIuw5+SlM=;
 b=A4PMgVUik9HI3aTyJtXzuLjSNUeKbd8n8uX9+ElhnTXk99TZpcSqA8CJ
 ogUNDd2gzhC2U9AkcMtUDlclvHtaBzXHx2RPKnanKbww9yWvPYWdYahS2
 1XC7wwzwv8NqIeLx89fsN1u5XFarLYO/0nAVSV9edQENfCdYWbesYrJ6H
 FVvWaDTUXE0bz58pFBov2AQODFC3ffQe/JjihBGAPFHCnLZkHil2yjApa
 wkWP8ULzAnkEQ9idF82lYPGYCGjGdrEHCgwYZQ7+rZ3/77areTti9Dd0g
 +WpEKGw5wj5D66667Yphu6kD7BJlqkeqTqaA2TGBc9Fwt3yWrPn0Dx8Rz A==;
X-CSE-ConnectionGUID: Irn9pUBaQQOTvuDIQLV9sw==
X-CSE-MsgGUID: qciO4N1oRpeKG+DIyhjspg==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="12136791"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="12136791"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2024 21:40:12 -0700
X-CSE-ConnectionGUID: 5Ews5/F+QqiY0jpzDH3KEQ==
X-CSE-MsgGUID: 2SWvy4tWRp+qLKVONg9S6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="32393729"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 May 2024 21:40:12 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 19 May 2024 21:40:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 19 May 2024 21:40:11 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 19 May 2024 21:40:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UUlXXPVgVcHgm/+TPknowaL9v0+0NxGr1biV8vhHjbITjFJ3KQmBOI/BzqkCh6VCkUuJdNKUaX/LishNriToEgiVzSGsPAZ9riur4mOZSjryUAam397hUEdpMYhzr+Hmb02jG+rpwH8iHhi6pzyc0EZRkgI/Wi4M74zw+2cLWUq0ckC4Iq+/2ITu9MlEMQ2viCfIxa115yP99Jh/+tcwdZiaa0o+z0jR9oVlSWJHbUNrXr+0VDbAm9XB5Z3U+xSNDm5eGgfRjF/i9xphpa4oHazs+W4QzX3+dvxhIeRwQvAcm8n+5O70/SKcKTa9MssHQwS81Nzkld/cfcU3jRJQjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8wPyG/iu7NF9+C4jpbd4ngAC60oz9X0YgNKIuw5+SlM=;
 b=C6Dy0tXfWoHWPa74uN5swZcfiuDPlf106VQXfsxfUxksnX6mF4N7JmsxXakNAxbu+nMM3es275WE9xGOdNbraz8dFTj9P7nvOMJEDi9oG6s4m2Lq8uPYZpLYQDsHwnr+7zo/fcEec2Nhb7H1LObmq94KM1td3Cj1u2S9653K7IIiOiQ4UoX8De+hPzJPtXNj+iY+04EBtHSePT2UWAA8qZsJ8AN/HHmorxY42rP3dZKaAQaiYMfgFTJkIm+cM6k/KNqOASS7KAYmXKV5MY4yWbV3nYdr3VBjI5/NUqmDBCJLIg6zO+1B8fa3z8YOSyg3+IEVbln8azjG/QeRHzg6JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV3PR11MB8459.namprd11.prod.outlook.com (2603:10b6:408:1b0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Mon, 20 May
 2024 04:40:08 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7587.030; Mon, 20 May 2024
 04:40:08 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915/psr: LunarLake IO and Fast Wake time line
 count maximums are 63
Thread-Topic: [PATCH 1/3] drm/i915/psr: LunarLake IO and Fast Wake time line
 count maximums are 63
Thread-Index: AQHanSAROoMTeawgVEKAzQZMkIe6tbGbDLgAgAARgYCAAAwMAIAEew0A
Date: Mon, 20 May 2024 04:40:08 +0000
Message-ID: <73d4ff3692ce8a1b5fed1a33aa98c64d1d63d6b8.camel@intel.com>
References: <20240503060621.987820-1-jouni.hogander@intel.com>
 <20240503060621.987820-2-jouni.hogander@intel.com>
 <DM4PR11MB6360FCCF477A33726BEBDD82F4EE2@DM4PR11MB6360.namprd11.prod.outlook.com>
 <de424dfd0f5ab6129411be514d6c3788037d7fcc.camel@intel.com>
 <DM4PR11MB63607FB66D9A9362159AC6C3F4EE2@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB63607FB66D9A9362159AC6C3F4EE2@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV3PR11MB8459:EE_
x-ms-office365-filtering-correlation-id: 1351383a-2c1a-49f7-2b71-08dc7886ed70
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?a0p3WTRNMU5nVlVOS0EvaUVuM1NNT05rb2FPcnpleTdLZmY5YmtuMFdFNzk2?=
 =?utf-8?B?UklzdkwrUkVKc1gvVWxLWFIvbmhmcWl4RFNMU3ovKzl0Wk9hUmVMVXR0bkp6?=
 =?utf-8?B?NElJMHZYcll2WTlWcXMzK1Z2ZjhXbi9GZHBPTE1BSittSXAyZisxeVhiRm44?=
 =?utf-8?B?b3VLVmR1MWVDUWZPdTdjaHVMQTJhMzFxR3hjSjBUci9raVc1SGx0SG5uT29i?=
 =?utf-8?B?bnpadW9ZTlQ5S1lEcUVJU1pDYmRoKzNGVlY0TktqWTVTcWF6RTgrRFpPQUhD?=
 =?utf-8?B?MHdpZXphYkhsTVZqc2hzSFhSR1RhcDRUVVp0UExjVkt5aEtqMUFzYndiejNF?=
 =?utf-8?B?bWEwTmtqSVRvMFpTNmdHeVFUYmRwTzFNWkloTDFMMWpwYkM2b0VTNHhJbytE?=
 =?utf-8?B?eHhkK04yeCtWOGNrNTFpUEp4dk9Lc1FEL2Y0dngyRE9TZWMwMUZITVVSVEw4?=
 =?utf-8?B?ZGpFNFZaczJtYmZwTkY0dHZJYU5URmhlcEVWOVdpRlhER1pvV25HSWVPQ0py?=
 =?utf-8?B?T2VsM0VZL1p3MmlwR2orTFJzUVFNY0pJcnYxZ0lHSERRT0ZDWkJ4Y05Xblhn?=
 =?utf-8?B?cFRPNnFtbkZuQnhwbDlNZEhUaTFBNzNMb080eGQvdEhsb3NibTJSVHZaUDdJ?=
 =?utf-8?B?R2x4K1NvQ3VTOURIR29xNy9UR3RQSVlIam9NN1kzZ3RFMTR3WXp0SktlYU54?=
 =?utf-8?B?enJjd0J5YzJ1Y0FqTVNmOFp0SllyZzQvWXJVeVJqcDRCT0NGTzFualIxZUdK?=
 =?utf-8?B?eWVXbXhFRERTL1VOejNPM1c2ZzV5Q0dmRldUanhGOEVabUFSQnlreXFTYzJx?=
 =?utf-8?B?WjVYdFE1YzBTRjQweG5vVW5Eei8zeTdJUi9pRE84SU83cVJYTlQxMHgrWHJi?=
 =?utf-8?B?Tmd0TnJESkFtcW9Rc2t6a1M1NW1iRURDYVhIUW5NcXdEQjFOZXlYWWp4ZEVk?=
 =?utf-8?B?VEYwdXBBN2VERzJwOEZBNTE5Z0oyaDZLMlovQm5SRDV3RndUUDQwcmJwdUh6?=
 =?utf-8?B?RmRVaFNkMlVMT0VBQTh6OEFsb29XTzRpbVI3dHowTkZzU0NRWmhhbGxKdGNp?=
 =?utf-8?B?c1N2NmhRQnhMSDAyTWp5Qy9yRlhLMXRkd1F1d0xhUHppenE2Y2NsUDBoc2s2?=
 =?utf-8?B?bVhVZjJrRnllUy9RNHJ1Umszc1VyL3ZjTGtraXFyN3dqdlpKa1EzUk9xVnBF?=
 =?utf-8?B?WjFJV1NKZ1MrVmcrOGsrcG5JWk42T1NtYUR5eTdRcFZIU3UxbXQ5M3pCcWxw?=
 =?utf-8?B?SWVBVVJhNmhNR0tSMmZlc3YxcC9sNTdZaXVIZUZsblJYdzQ0Mm4zQWN4bGkx?=
 =?utf-8?B?K1JWNHpQMkp5V1ltMEg3UDRlNC90ZXB3Q1lJWm5vMTJNV0RkSGJWWWw5SCty?=
 =?utf-8?B?dlMweGJwbmVoYThaUE1ZS3dvYnFtM1Bla0JVTSs0MGJKOUFHRFpQeHRKSE9K?=
 =?utf-8?B?V2l5dmFDMmx3TUFhdzZOek1UQm11N2FUczBVTlNZbzNyY0FUMkFHek8xQ0hL?=
 =?utf-8?B?MWtwd014TWNCNVp4Y3VBS0JTTU1rMzRQSzQ3VWdWejYxMmEzcTBSS1o2WmVt?=
 =?utf-8?B?MzZNZFhSUGg5YzRxSW5rclhNTkNlSnpkM0l3N0RRZjJKYkY5N2ZzaFdkK0VR?=
 =?utf-8?B?ODhyWm93M0FkeDNtUGhjU2ZEMEo4a05Qd3ZML3prc0duSEpyQkMyZFNIcG5D?=
 =?utf-8?B?cGdxWkd1eVkzemE4VjZsYXZjWU40S0tWblpXRFhrRjdBcndOS1RYMXBETisr?=
 =?utf-8?B?UEg4NkY5V3VNd0JnL3BUWlZLQXBILzFQTnZHT25DSEpackxFb1psKzJLQlpK?=
 =?utf-8?B?ZEJKV0Vxd2pQeTU0NW95dz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Rk9nK3pBc1AwQkRsaTR5bXMwTjMveHBDSEdLeFo0Z1JzRlJXZjgra2k0UHdS?=
 =?utf-8?B?b0JXSG1LVitqdldRbGxGUk91SE9tRDI5bmtUN21KeDJqYURBZGYzL1J2SURU?=
 =?utf-8?B?d29Icy85aDEzZTZQWit5MHVKMG9RaSs0b1F4ZmRHM1Z6ZmNzNWRlblpHS29u?=
 =?utf-8?B?WVNZUW52Rk44Wkxua2Z1ZC9jYjFpdmpxWEE0bUtvTkF5Q1ZGbkZCVHlQOU1n?=
 =?utf-8?B?VlIreXVRQXB4QXpEUnkyQlNwSzdlWmxEOGZXV2ZrVnl4Qy9KcFVXQksxZUU3?=
 =?utf-8?B?WjRRN01KTStzK3dtSmwyOHZra2g0bml1SE1ibFhXeHhQUU9sdHVkOFpWZEpQ?=
 =?utf-8?B?bmE2ZUN1azRFeHFUdXF4VTkxRVN6Z2FDa3U1ZytaSHZhUjU0Sm93QnlWYlZR?=
 =?utf-8?B?ZUE3c3hWRmJEeUoxcFhJakp2WkxiNmV5NlY4bzg0OFF4Y0JWVmNMSU9NeVZI?=
 =?utf-8?B?TmtBb1l2eW5LM1JrV2NYK2dITEJGUlpGK1UwNkd1M0xyNjJoTmJJZUtHampX?=
 =?utf-8?B?SW5aRytxakczOFhBaEk2a0dyVzRJLzFuSjlhaHdZMy94dzhOZWF1UjYwZUI5?=
 =?utf-8?B?c0xyaGV3SEhHRDJHVjk4VnI3OWdGby9SRTVLMURyZ2NtamU5VFNTakoybzE3?=
 =?utf-8?B?alpid2RvTmhiTnYyWllRRVd6RG9KR3ZDWDRGcjlpTmhaV1lNZXloUFNEVjB6?=
 =?utf-8?B?U3F3WExORE9idVRkdjBWQUNMaWd0TVJuVWpyR3U1NzE4N0FzT2lrZ0N2VkQv?=
 =?utf-8?B?VU9pUWVjRENCZUJTcXhQRys5UHAvaGJRY3ZpcG9KRjN5OHV6blZ6Yllwcjlv?=
 =?utf-8?B?OUprVVJZa21VRktRQ1dmb3o2amtlRjhsZGVnMnovY3FyM3Z4K2VpS3BENGp0?=
 =?utf-8?B?L0ljdDUyYkRlR2RrZUhWdm1uWVYvSC95Q09vZ28zbUZ4aFlINzE5S20wRXNo?=
 =?utf-8?B?ODBqUVh0UmZQOE9zMnZEUWtzL1R6N2dweFVRS3ZvS050WUt0cXlRQzRlU2I1?=
 =?utf-8?B?cWRnRTJDb09rTTFvTFd6bHpUUFFuVVpSWVl6aDNiYXhOaWtMODVST0tlcnRt?=
 =?utf-8?B?VjRmeExjZ3dKUU55TlpzbVhSQWxVWkRlS2sydG5tRHl6cEYvTmhEaldkcXI1?=
 =?utf-8?B?ajQxN3daU1FNQm1ZRDI4c0tpUGUvcEQzeGVacXJ1emR6ZnVWME9uZ1RBMmNh?=
 =?utf-8?B?WVh3cFc1M2N4RXVOQVBINllmWnNVVWVWWGdIaUZveitvbGp3UXBFbmxkRHph?=
 =?utf-8?B?V1ZVcXBtbXZQNDNlaVRHeGtmVkVMM2t6WlVXS201NXd2VnpRRDB3WHNPRUtx?=
 =?utf-8?B?TElya2JYdUFIUFdmeHduWEJTd0NzYUxvaFZENEdoM1J5UUt6NCtBa2R1N2Ji?=
 =?utf-8?B?NnZxY2NwdXRLdFUvT2pFaGVBR1daUUJwOHgzcVNmOWdoUlNlSi9xOVBLV0dZ?=
 =?utf-8?B?WVhsbVFjQnk5cjVCdmRkd3cwalFBaGluV2pETjRQM0MyaW5qUkdNUWQ5bE1Z?=
 =?utf-8?B?bkt4Z3ltc3BZK3Z1UlJvTkYybGRNTTkyRTFhd3FoL0JOdFBycStRSUN3SWph?=
 =?utf-8?B?UXRmMVVUc0EvTjU5TVJXMStRTXZlZUpkTDFzdVNVbERrOWVnNGRUeStCQWQx?=
 =?utf-8?B?cGdTaG5oY0lYQWdya0ZJM2s2eGRBK2tQNXNCVWJUZGpmdUlhSDZXNG10UGQ3?=
 =?utf-8?B?eERYK3FxMjhwdklFMlIyY1FTWFluYUd2bEU5bFh2WGZCOGtsZk5XOVk1MXpN?=
 =?utf-8?B?amNsU3JBQTEyWW5FVk9TQzRQNXA3NjVHcGx4ZGFUZG8vRm5nMGpKTmNEVzVK?=
 =?utf-8?B?Nm1uQ2htcFlqWURLK1RhdlJZcnR5eDhYWFFsdkxScy9kYTdocjZVS0VrbytR?=
 =?utf-8?B?N3N3MjNoNGYzemRtVUpKVXF2eFlhU1doM1FyT0ZuVkJCSVYwM0NtaGhGbERJ?=
 =?utf-8?B?SnN2elp6bktwZ0Z0ZTNXakkyOVY3bHYwSWpKd0txZzhZbStjUVo5YWhNRnNK?=
 =?utf-8?B?aVI1c2RFNStNNjh3bnR3L0xabXRPWGRsaE5CQ2NTNmxaYko1Q2xOR1BTUU1T?=
 =?utf-8?B?S1ppT2dMazc4czEvRXFoZS9sK1lMM2ZhVEVFNitzTWFIQi96REZPZzVLUTJh?=
 =?utf-8?B?ZWFCYWZBMytZdDJGSkZJcUlvSnNuMElNai80V2RRRnRGQ1BFeUZnby9ScHl0?=
 =?utf-8?B?S2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E09242DE2C42654984E7C2DB93E53F76@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1351383a-2c1a-49f7-2b71-08dc7886ed70
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2024 04:40:08.3833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: owKK3SLdaIxznpX9PHGC5VAULwjV1BW56p9Hz4AKs4x903tZ6A3VcJGCgDAHPo+f9+cU19QM9fv6NBq+rakhDHmdUtb4kBilLWj/WanGaVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8459
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

T24gRnJpLCAyMDI0LTA1LTE3IGF0IDA4OjE0ICswMDAwLCBTaGFua2FyLCBVbWEgd3JvdGU6DQo+
IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEhvZ2FuZGVy
LCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IEZyaWRheSwgTWF5
IDE3LCAyMDI0IDE6MDIgUE0NCj4gPiBUbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+Ow0KPiA+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0
OiBSZTogW1BBVENIIDEvM10gZHJtL2k5MTUvcHNyOiBMdW5hckxha2UgSU8gYW5kIEZhc3QgV2Fr
ZQ0KPiA+IHRpbWUgbGluZQ0KPiA+IGNvdW50IG1heGltdW1zIGFyZSA2Mw0KPiA+IA0KPiA+IE9u
IEZyaSwgMjAyNC0wNS0xNyBhdCAwNjoyOCArMDAwMCwgU2hhbmthciwgVW1hIHdyb3RlOg0KPiA+
ID4gDQo+ID4gPiANCj4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4g
RnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+
IE9uDQo+ID4gPiA+IEJlaGFsZg0KPiA+ID4gPiBPZiBKb3VuaSBIw7ZnYW5kZXINCj4gPiA+ID4g
U2VudDogRnJpZGF5LCBNYXkgMywgMjAyNCAxMTozNiBBTQ0KPiA+ID4gPiBUbzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+IFN1YmplY3Q6IFtQQVRDSCAxLzNdIGRybS9p
OTE1L3BzcjogTHVuYXJMYWtlIElPIGFuZCBGYXN0IFdha2UNCj4gPiA+ID4gdGltZQ0KPiA+ID4g
PiBsaW5lIGNvdW50IG1heGltdW1zIGFyZSA2Mw0KPiA+ID4gPiANCj4gPiA+ID4gT24gTHVuYXJM
YWtlIG1heGltdW0gZm9yIElPIGFuZCBGYXN0IFdha2UgdGltZXMgYXJlIDYzLiBUYWtlDQo+ID4g
PiA+IHRoaXMNCj4gPiA+ID4gaW50byBhY2NvdW50IGluIGNhbGN1bGF0aW9uIGFuZCB3aGVuIHdy
aXRpbmcgdGhlIElPIFdha2UgbGluZXMuDQo+ID4gPiA+IA0KPiA+ID4gPiBCc3BlYzogNjk4ODUs
IDcwMjk0DQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDUgKysrLS0NCj4gPiA+ID4gwqAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4gPiAN
Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gPiA+IGluZGV4IGY1YjMzMzM1YTlhZS4uNjc4OTg3YmJlMTY4IDEwMDY0NA0KPiA+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4g
QEAgLTEzNjQsOCArMTM2NCw5IEBAIHN0YXRpYyBib29sIF9jb21wdXRlX2FscG1fcGFyYW1zKHN0
cnVjdA0KPiA+ID4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKg
wqBmYXN0X3dha2VfdGltZSA9IHByZWNoYXJnZSArIHByZWFtYmxlICsgcGh5X3dha2UgKw0KPiA+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRmd19leGl0X2xhdGVuY3k7DQo+
ID4gPiA+IA0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0g
MTIpDQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBUT0RPOiBDaGVj
ayBob3cgd2UgY2FuIHVzZSBBTFBNX0NUTCBmYXN0DQo+ID4gPiA+IHdha2UNCj4gPiA+ID4gZXh0
ZW5kZWQgZmllbGQgKi8NCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5
MTUpID49IDIwKQ0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X3dh
a2VfbGluZXMgPSA2MzsNCj4gPiA+IA0KPiA+ID4gQXMgcGVyIHNwZWMsIGhhcmR3YXJlIHdpbGwg
YWRkIDUgZXh0cmEgbGluZXMgdG8gdGhlIHByb2dyYW1tZWQNCj4gPiA+IHZhbHVlLg0KPiA+ID4g
Rm9yIHByaW9yIHBsYXRmb3JtcyBpdCB3YXMgc2V0IHRvIDEyIGFzIDcgKDNiaXRzKSArIDUuIEkg
Z3Vlc3Mgd2UNCj4gPiA+IHNob3VsZCBtYWtlIHRoaXMgY29uc2lzdGVudC4NCj4gPiANCj4gPiBU
aGFuayB5b3UgVW1hIGZvciBwb2ludGluZyB0aGlzIG91dC4gSSBoYXZlIGZpeGVkIHRoaXMgYW5k
IHRoZSB0eXBvDQo+ID4geW91IG1lbnRpb25lZA0KPiA+IG9uIHBhdGNoIDMuIFBsZWFzZSByZWNo
ZWNrLg0KPiANCj4gSGkgSm91bmksIA0KPiBMb29rcyBnb29kLCBSQidlZCBub3cuIFlvdSBjYW4g
Z28gYWhlYWQgZm9yIG1lcmdlIChzZWVtcyBzb21lDQo+IHVucmVsYXRlZCBDSSBmYWlsdXJlcyBh
cmUgdGhlcmUpLg0KPiANCg0KVGhhbmsgeW91IFVtYSBmb3IgeW91ciByZXZpZXcuIFRoZXNlIGFy
ZSBub3cgcHVzaGVkIHRvIGRybS1pbnRlbC1uZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVy
DQoNCj4gUmVnYXJkcywNCj4gVW1hIFNoYW5rYXINCj4gDQo+ID4gQlIsDQo+ID4gDQo+ID4gSm91
bmkgSMO2Z2FuZGVyDQo+ID4gPiANCj4gPiA+IFJlZ2FyZHMsDQo+ID4gPiBVbWEgU2hhbmthcg0K
PiA+ID4gDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UgaWYgKERJU1BMQVlfVkVSKGk5MTUp
ID49IDEyKQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF93YWtl
X2xpbmVzID0gMTI7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBlbHNlDQo+ID4gPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X3dha2VfbGluZXMgPSA4Ow0KPiA+ID4gPiAt
LQ0KPiA+ID4gPiAyLjM0LjENCj4gPiA+IA0KPiANCg0K
