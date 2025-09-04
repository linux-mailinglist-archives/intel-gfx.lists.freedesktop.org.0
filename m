Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88111B430F9
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 06:15:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D8710E967;
	Thu,  4 Sep 2025 04:15:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W9qRv/Re";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF79D10E966;
 Thu,  4 Sep 2025 04:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756959304; x=1788495304;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/7s4Uzt9Ylv0w9CGeeClvyl4GgnK2ctga+ZsPNj9ZYM=;
 b=W9qRv/ReVj/vC+apFjoZyiH/N8N01cLvKJcLNrpNfHwIZtUfHpHJUeH2
 o1SME8/sBSWXj2EjXxiE2YNjiLZFk7s+pnn2INCeS+es+s7d5Me/X2f+g
 vfdSsZ3WfjK8Q2EnsII9PSQxAyBGGPeIyJE0jo0e86XUnhN79nataDz76
 TOMQGZYZDpl3OvSApAKWmnNw4UI++3j3E8PbWzC4O8ZloH1ruNX0sw1oy
 summY75HHj2uj9bgao+VUE1GeixcO7dJ5mfZIoj+P05MC6Trdj4qPU95N
 TbBcYSZNLOcWHREedj0X7/7w1MCPi4lEr75DcJ2gEn6quCjeBpYIxlccA w==;
X-CSE-ConnectionGUID: oCszF+IcRZm/t4qkiuvtLQ==
X-CSE-MsgGUID: llKqkK6FRxaeeFccxEeS8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="59354333"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="59354333"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:15:03 -0700
X-CSE-ConnectionGUID: IyjrwyDpTUWPPKU+REVIGw==
X-CSE-MsgGUID: fc66dguWS5Grzr8uHnIBkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="177039697"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 21:15:03 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:15:02 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 3 Sep 2025 21:15:02 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.51)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 3 Sep 2025 21:15:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I7Dh72THoxjTbcY01A0akQFqusVk2EBMS+jQpSvMsr7KYO8nEjKCEVTdjwFcf2KhZcpRAtNjrXO/zMGGxI09QrkL86Bz/wnWGxoQegNn55ovYQfQHs9nthxDUT8DqwPFDckXDI+fPZYK2PCeDxm7vVQwk7WJk7e9VSXitUZxkI8v8mLOUJHGYGNZBRk5pXu6A7G01ZVq72rop4lRSCwdn/b9Q8EewBYOxPCCXPhKt2dck4jDkTDjyqc7CqIj2jTrR24Bq7jgwEYcUKbBwwcsSR2CpszrIPYnAx7AQKcvRJikzrzkG/OzXvON/kKmHEtT7pDzwN5s0Q1/KEUwPLKJbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/7s4Uzt9Ylv0w9CGeeClvyl4GgnK2ctga+ZsPNj9ZYM=;
 b=QDAmSpHgObqks8oVBf4wnWOlF75p0YTnkA0ZSzF2PA8aIfE8aRwLrCEHjfDnu8DpuiOw7CoQA1PAsXUE5UXW/2sqGVtXJ2nx6ADUED/TXgCIw3bV06prpPy5VPgvX/+TNHymtFtSOXscZF989g5x2mBz8ghTGKsk8PbhZQLhA1m4j9GMUyelFFLN9tjocNRuLiCCgb8h9OzcwEryYCtO9LiFguipYkAKtI36HuX0vhQBbyaViZRuV1Wq0IWrZLJdWb2EaHk1g27s+R54GTVn9He2qaevaMguB6Ul816kfIPX+2gMVlWLPpkTHHumGewZ++iOP9gW2DyigPZclG4SKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6302.namprd11.prod.outlook.com (2603:10b6:208:3c2::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.17; Thu, 4 Sep 2025 04:14:59 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 04:14:57 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 03/20] drm/i915/hdcp: use generic poll_timeout_us()
 instead of wait_for()
Thread-Topic: [PATCH 03/20] drm/i915/hdcp: use generic poll_timeout_us()
 instead of wait_for()
Thread-Index: AQHcGBZM0x79tHrLrUWM5oXrvUZpTrSCdMQA
Date: Thu, 4 Sep 2025 04:14:57 +0000
Message-ID: <fc6b73b68abd7bf1d190d48ef7a342cdc6f0efa5.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <2871a07337401c25ef3df44073c5e78fedc45e8e.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <2871a07337401c25ef3df44073c5e78fedc45e8e.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6302:EE_
x-ms-office365-filtering-correlation-id: 7a71ec6c-e335-4da2-f0ac-08ddeb699bf6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ajBna095OThoTVM2bWxuekFMaVhtc2l2SjNwbW9aNlBFMGlPck9INU9LZXE2?=
 =?utf-8?B?ZGlkZUZsMHFyWHpLbUhwMUxFbG5Kb3JWbkZGcURrelp5YXllZVFUSmM1cFMy?=
 =?utf-8?B?RUIwVFdPMFZBZ210OC84Q3ZWS0hGYmhYUUdJcy9URnZmN0dFTTVPSERpV1hw?=
 =?utf-8?B?TC9oMFpmUVBSRzJSdUwzeDJYbzhDVHVHYUh1aEtzREd6c0RpUnZiZXl0M3N2?=
 =?utf-8?B?NWU0MU55ZFJ1dTNKUTFkUy9ETk9vVFpieEo0TGpuL0Z1MVVBNUc2aUZqbzBT?=
 =?utf-8?B?NG5LZXlVSjhWNndwL2VubDBNdDhDUEJRU0cvUHl5aHhSVCsySE1SWndabDQw?=
 =?utf-8?B?WGsxd3VPQUwzNkptbmxBQTdWaGNPY0g1QTVsaklYcTRmYmZTT2Vxd2tpc1JD?=
 =?utf-8?B?bW1JRmpKcCt2a2dnalY4SGZwUXdJWk42emk3Rm5ZQ1IvNFRhLzRvbWdWSkpq?=
 =?utf-8?B?MGtjcG9ERmVwUEtMWkNrRXV0N1RFakNleXFObWFwSC9kY1diQmFOY2REb3ls?=
 =?utf-8?B?clJveW4xeHBCR2hXVk1NYVR6dVNGOWRUMDJBWUhMQU1XMVlmYXZMRURqOVpK?=
 =?utf-8?B?V3BLZ1dRRlIrNDJQb0RKQ0szRGdiRmZGT2ZTYm9FN2ZxeWsrL0V3R29QMTNC?=
 =?utf-8?B?QXRvN0ZNYzIzc0tzZTN4UlYwSDBSbXJjV3ZaMEtZblVOU05JU3pOZXJiK0Rx?=
 =?utf-8?B?VzBjWW1Jc1o3Mkg4WGM5TTRJdm9Xd3hueloyekdVVEtkdEoyK0tIZE5aak5a?=
 =?utf-8?B?ZkFkSXlVTndJTFFwcEFOWmxtWlltd2tmZElJcXhXZnJ0U21pekpmK2pZNEl5?=
 =?utf-8?B?d2l5dXd0OEZDYk1qc0ttTHExSzdHRkJsellhQmJHUkF4RU5SWTVpTlJCRHRi?=
 =?utf-8?B?MTJ5cE5FenRER0FnblJtNmtrWkppUlZ2dXF5UHZETkdJTTVBQnY4VmR3dmdL?=
 =?utf-8?B?UXA1K0V1bUZrSGJ2cmNEN0MyZ1JYZmRjRkthbDRhTUdlU1MxU3ZVNHN2THVj?=
 =?utf-8?B?OGhpcUlPeEdWNGdoRitGNTExRm1KR2JGY0pZWDdNemh2aW1IcHZWRmRnMUR4?=
 =?utf-8?B?d1orUno4ZVBBSncxbytCLzdOQXdzMnhIRzYzeVNjNjBFbThkc1hTcFhuRVRM?=
 =?utf-8?B?WVFvd2xLaXhqWGpTZDhZUUxDdHg5RTRJSXI5RlJ1c2NxS2FSKzdkb2NUSWcx?=
 =?utf-8?B?Z3pWVDJ1eXdITVY3WG1ldUZGOG9GN2s5VHBkdzU5TTRQZlJSaUNQTWRaZDZZ?=
 =?utf-8?B?cDhyZU01WU1BQVJBd1p5cEk0a3lBS05jSGlLK0dSSm9TL0dOM1FOZDVsZzVn?=
 =?utf-8?B?ajMxT3dnWmpXNGxRbjlNVTlIZDdySkdGK0Jrd0JFSzVxbGlHNm1GYnRGdWw0?=
 =?utf-8?B?NThEWGNNcDYzd2dPVktSaUZtYlFPeVRkOW1hMFdOYk1GSTE4NTZPTUMvTXlP?=
 =?utf-8?B?OHA2Y0hlL2FKTmhyRmVMZDBFVDE2WWZyeVlrak1ianhQWkl1SlhnejM5NEZs?=
 =?utf-8?B?S1A2Nm5ydkFybnZ1TjFta1VkeWZqcE9CQjV4ZE1rNjdIaWZMVENRUmZDMk1K?=
 =?utf-8?B?Wm81RVdHb0cyUlc4RVJJZ0plQ08zbHhiK3dzMmFrRERsWUhKNTcvQjd5UGly?=
 =?utf-8?B?dG8waEs0UlhyYUlIbjk0ZCtlRE9KQmxEV2U0ZC9hL0N2b0NHdVFuemp6b3kw?=
 =?utf-8?B?cGNkVnd6NkZwKzBiMlVnSktMVmtoa3lHaWxtZVYyMWtaZmVKZDlQeVd0ZkpP?=
 =?utf-8?B?VTkyalRKWEdTejQ0WkVucTNmSjVSVzE1Y0Q4bGtTejFJcFhKOGJXQVgxOTlB?=
 =?utf-8?B?eW0xWXBMSUJaOFV2alJRTE5JOEJ5WHB1TWhrUVJDMXhybDBibGRTRDJpMlcz?=
 =?utf-8?B?TWxpZEFpbk54QVpJTm8yYS9EUmJIbmZZaDFHTDlzVm1MMm44TG02VjRiZTR3?=
 =?utf-8?B?aVo5VHVqbTFhVkdPc1FuMVN4bW94UVdZUVg0cTYvRUVvV2NjUTFqK2o2M0kv?=
 =?utf-8?B?UXYyQ01tTXl3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZFFzU1ZNRUFaYVNmRE5vMmtPd0NENTd3NnpYWTQrcGloaWtXOGM5cEFtUzRX?=
 =?utf-8?B?YmNWK3RWL2VvVG1Wb3lBNzNjblVocXR5ZTh5dUd0K2JlNlJwK2hUOTlyL2xW?=
 =?utf-8?B?QUtYQUo1YXdwbDRNbUR6RUQ3V1hXYVJ4TGhURG9QR0lOdzZKMmlXd0Qxa3da?=
 =?utf-8?B?dFJvY3pLWjJkRWFnc0RsSWRDWVBvWFdnRnBScy9OajQzSzVvMmYyUStTNUdY?=
 =?utf-8?B?bUUrNk10ZCtWU2xvb2ZiYXZoL0xudnhYMnpGaDN4Vk1RYUpJay9iN3VrV0Js?=
 =?utf-8?B?SlRMMmtLcHFTTnBFZlJUUU9WM2ZpR3AxRGJsSlpCdVVmNVVxRmtnM0NwWVV0?=
 =?utf-8?B?QngrcjlJNUlsOUhTWlJHZFo4MFVhM2NScXJkMDdURWpmcTBuaVh2TjZ4TFEz?=
 =?utf-8?B?V055NmJDRnZDYXpYQ3RoNG84cmkrck5ac1lqME5va3NwdXByeDU3c0NvY3hB?=
 =?utf-8?B?M28rQVphOTlNRmM5S3pKNTlkSk5JdWk1bjMwS2FrVkc3eGkyNkVkeUIzQmIy?=
 =?utf-8?B?NUlIM3hHYXJLSGdBK0x4Skt4blNvODNmMHpwb0dQbTJjSXgveUk0Y01jN2l5?=
 =?utf-8?B?NkcvRnJSdUV2QmxTNGtsMk4zSXFsbFZ0VllJSzhhNTc2eVNiUHNoUDFxQ2xT?=
 =?utf-8?B?OUNpQ3dKVDdReHpvSTVYQUtQN0JEdVg3SXNvNkIzZjladXp6L0hPbnV5Qmxu?=
 =?utf-8?B?RVlhR1o3QmthbGtrVzRXUlZTa0JYS3llQ1ZyWFNFblRKWXh1WUp6Zm82RGxs?=
 =?utf-8?B?VFZoT0pVTXE3RTBwMU5RYjJTVGdEZ3VFY05lVFdqRG5hVFNIRzU2MFRmZy9o?=
 =?utf-8?B?UjVDcWZiV3BIeGY4TkZOK1E3aUR6Yk8xeVRvVHlRSlZWVjlxOWF4Q1pRYkdC?=
 =?utf-8?B?RVJUV2pBNi9JV0tGS2k0cFdUSUZzSjJRV3RRS2ZHbEhiZjdJd0I5NHROVFll?=
 =?utf-8?B?MXdrN0Z3akx1SjdxZHpNNzZlT3ltY0lUNndFbDN5TG1kMW9uZ3oyc3k4SVJN?=
 =?utf-8?B?WUZScjJMWTFOUWdNVVg4YUxpbExDaS9XRUl5aUJ6bHdHM3BTRm9QcXFqaXcv?=
 =?utf-8?B?R2k5T3ZSWEx0NHN4eXJhUW5WQ2F0U3ZBT1V5WmRHbGVXUUZqejhaYXk2b1Jz?=
 =?utf-8?B?ai9EeStzUnVVVmJpZkxZR1lrRXdDV1ZxNExnbDVzY0taampwNTlUZkp3S0Ni?=
 =?utf-8?B?aHhYQlJoYjdoVkZtMUxVWGIzT0ZvR2ZpMG5tQjVEUzBiWGYwSGJxbWVtSXRC?=
 =?utf-8?B?UTYvdE1BMWx6RGIxMElVeEtvVjE4bGJKSC9XOVBDL3h6YU9VSzJKcEFHWEh5?=
 =?utf-8?B?ZWhsZG1zeHVEYjBmbzdQbUlHVXdVdE0xdlp0a0tNai94TURjM29hUmhmei9r?=
 =?utf-8?B?Nmx4MmYrS1FPaWludVBRamtFdHlwK1JEay9leGNTQ3pZVGVlSWpDc3hqL3pN?=
 =?utf-8?B?MC8yaVhkRnQyYlo1ejVSVDJjNWRBV3B0RDhYaGJ1WDN3MWhRVkdJUGFFSk0z?=
 =?utf-8?B?TVRmSnlkc2FRUVljb1VZV3JKaUVDZ1R0LzNTbmg0M3o4bnZ0WDMvMVh1dHk5?=
 =?utf-8?B?WFQ4UTlNcHd6RGxGR21qMUhoY1pYblRzcFo3OXQ3ekd2eFp2REZRZDA4L2pY?=
 =?utf-8?B?Z1RIR1dqVW1rQi9WSEFIWnJPODdub0E4Q2NpOVlwMDRnUys5ck5MTzNlbGQw?=
 =?utf-8?B?Wk5OTkNKc0JCSG9pZ2Z4YThVT1psdFdYb2k4Y3RmTTZKTjcxQXUvUmFobGMy?=
 =?utf-8?B?S2lKZjh2bWlrSlI1YUVCZjI0blhWdzlUenJQa1N4NFJjdExMWFNCaUx4TmlO?=
 =?utf-8?B?WlZ6ZlFHeHo1QUVCMCtacnJPRjJFcWVQSGI3TWxCZHNDdTRKSXlNaUVOb0l3?=
 =?utf-8?B?dWErUUo0ZnhRVk1qS2txSjhKZnhXWlJ0S1l1R0VpQk1iTmlYWFE0SXZpYWdS?=
 =?utf-8?B?Nk5Lbm9yRXFDVVlpb1FtWjBzaFJkcmZUMTl0US9PbTMwSVJqbHk3bU1iTE1L?=
 =?utf-8?B?Szc1VUhEY0ZnSmwzQ2JQTHlLNUZFN0tqMGZEckw4VUJQcnFnUXlqQTZ4UXhS?=
 =?utf-8?B?ZFBEcjA1dlNNNGdRNENsZm1yS2x0Q2pZTVNoVjFPNUhtVHV3blVCSjlvSGlL?=
 =?utf-8?B?eXRiYU1sN05YMHN2WVl5ajdPSENVNjB4ZzYyaTZFcWlpMHh0dkNCYm5HelV6?=
 =?utf-8?B?NGdUZHhaYWRqMytXMVNBY0ZscG1HNHI1Y0pjcjNiUFBTTWdVNHBUa3g0QW5x?=
 =?utf-8?B?ZjNzZmVJcVJTUnZxUFNIN0JMUFZ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5A576C701B5E1D4C84035787A3475843@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a71ec6c-e335-4da2-f0ac-08ddeb699bf6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 04:14:57.7113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CosqHVJHFq4S0xPfHQR5qtVuDn7yWdCGW7Ne/zU9uct1yHYb9W3NSC/zMXTbH6gMJLohS/gl/+QKcDfgcEfZTMXKSfk0th4zm/+T2bUEuSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6302
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

T24gVGh1LCAyMDI1LTA4LTI4IGF0IDE1OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
UHJlZmVyIGdlbmVyaWMgcG9sbCBoZWxwZXJzIG92ZXIgaTkxNSBjdXN0b20gaGVscGVycy4NCj4g
DQo+IFRoZSBmdW5jdGlvbmFsIGNoYW5nZSBpcyBsb3NpbmcgdGhlIGV4cG9uZW50aWFsbHkgZ3Jv
d2luZyBzbGVlcCBvZg0KPiB3YWl0X2ZvcigpLCB3aGljaCB1c2VkIHRvIGJlIDEwLCAyMCwgNDAs
IC4uLiwgNjQwLCBhbmQgMTI4MCB1cy4NCj4gDQo+IFVzZSBhbiBhcmJpdHJhcnkgY29uc3RhbnQg
MTAwIHVzIHNsZWVwIGluc3RlYWQuIFRoZSB0aW1lb3V0IHJlbWFpbnMNCj4gYXQgMQ0KPiBtcy4N
Cj4gDQo+IFdoaWxlIGF0IGl0LCB1c2UgdGhlIGxhc3QgZmFpbGluZyB2YWx1ZSBmb3IgZGVidWcg
bG9nZ2luZyBpbnN0ZWFkIG9mDQo+IHJlYWRpbmcgaXQgYWdhaW4uDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYyB8IDE3ICsrKysrKysrKystLS0t
LS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZGNwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYw0KPiBp
bmRleCAwYzk4ZTUwNTAxYTYuLmQ2YTEwNTk1OWQyNiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gQEAgLTgxNyw2ICs4MTcsNyBAQCBzdGF0aWMg
aW50IGludGVsX2hkY3BfYXV0aChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ICpjb25uZWN0b3Ip
DQo+IMKgCWVudW0gcG9ydCBwb3J0ID0gZGlnX3BvcnQtPmJhc2UucG9ydDsNCj4gwqAJdW5zaWdu
ZWQgbG9uZyByMF9wcmltZV9nZW5fc3RhcnQ7DQo+IMKgCWludCByZXQsIGksIHRyaWVzID0gMjsN
Cj4gKwl1MzIgdmFsOw0KPiDCoAl1bmlvbiB7DQo+IMKgCQl1MzIgcmVnWzJdOw0KPiDCoAkJdTgg
c2hpbVtEUk1fSERDUF9BTl9MRU5dOw0KPiBAQCAtOTA1LDggKzkwNiwxMCBAQCBzdGF0aWMgaW50
IGludGVsX2hkY3BfYXV0aChzdHJ1Y3QNCj4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+
IMKgCQnCoMKgwqDCoMKgwqAgSERDUF9DT05GX0FVVEhfQU5EX0VOQyk7DQo+IMKgDQo+IMKgCS8q
IFdhaXQgZm9yIFIwIHJlYWR5ICovDQo+IC0JaWYgKHdhaXRfZm9yKGludGVsX2RlX3JlYWQoZGlz
cGxheSwgSERDUF9TVEFUVVMoZGlzcGxheSwNCj4gY3B1X3RyYW5zY29kZXIsIHBvcnQpKSAmDQo+
IC0JCcKgwqDCoMKgIChIRENQX1NUQVRVU19SMF9SRUFEWSB8IEhEQ1BfU1RBVFVTX0VOQyksIDEp
KSB7DQo+ICsJcmV0ID0gcG9sbF90aW1lb3V0X3VzKHZhbCA9IGludGVsX2RlX3JlYWQoZGlzcGxh
eSwNCj4gSERDUF9TVEFUVVMoZGlzcGxheSwgY3B1X3RyYW5zY29kZXIsIHBvcnQpKSwNCj4gKwkJ
CcKgwqDCoMKgwqAgdmFsICYgKEhEQ1BfU1RBVFVTX1IwX1JFQURZIHwNCj4gSERDUF9TVEFUVVNf
RU5DKSwNCj4gKwkJCcKgwqDCoMKgwqAgMTAwLCAxMDAwLCBmYWxzZSk7DQo+ICsJaWYgKHJldCkg
ew0KPiDCoAkJZHJtX2VycihkaXNwbGF5LT5kcm0sICJUaW1lZCBvdXQgd2FpdGluZyBmb3IgUjAN
Cj4gcmVhZHlcbiIpOw0KPiDCoAkJcmV0dXJuIC1FVElNRURPVVQ7DQoNCllvdSBjYW4gcmV0dXJu
IHJldCBoZXJlPw0KDQpBbnl3YXlzOg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gwqAJfQ0KPiBAQCAtOTM4LDE2ICs5NDEsMTYg
QEAgc3RhdGljIGludCBpbnRlbF9oZGNwX2F1dGgoc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAq
Y29ubmVjdG9yKQ0KPiDCoAkJCcKgwqDCoMKgwqDCoCByaS5yZWcpOw0KPiDCoA0KPiDCoAkJLyog
V2FpdCBmb3IgUmkgcHJpbWUgbWF0Y2ggKi8NCj4gLQkJaWYgKCF3YWl0X2ZvcihpbnRlbF9kZV9y
ZWFkKGRpc3BsYXksDQo+IEhEQ1BfU1RBVFVTKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyLCBwb3J0
KSkgJg0KPiAtCQkJwqDCoMKgwqDCoCAoSERDUF9TVEFUVVNfUklfTUFUQ0ggfA0KPiBIRENQX1NU
QVRVU19FTkMpLCAxKSkNCj4gKwkJcmV0ID0gcG9sbF90aW1lb3V0X3VzKHZhbCA9IGludGVsX2Rl
X3JlYWQoZGlzcGxheSwNCj4gSERDUF9TVEFUVVMoZGlzcGxheSwgY3B1X3RyYW5zY29kZXIsIHBv
cnQpKSwNCj4gKwkJCQnCoMKgwqDCoMKgIHZhbCAmIChIRENQX1NUQVRVU19SSV9NQVRDSCB8DQo+
IEhEQ1BfU1RBVFVTX0VOQyksDQo+ICsJCQkJwqDCoMKgwqDCoCAxMDAsIDEwMDAsIGZhbHNlKTsN
Cj4gKwkJaWYgKCFyZXQpDQo+IMKgCQkJYnJlYWs7DQo+IMKgCX0NCj4gwqANCj4gwqAJaWYgKGkg
PT0gdHJpZXMpIHsNCj4gwqAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gLQkJCcKgwqDC
oCAiVGltZWQgb3V0IHdhaXRpbmcgZm9yIFJpIHByaW1lIG1hdGNoDQo+ICgleClcbiIsDQo+IC0J
CQnCoMKgwqAgaW50ZWxfZGVfcmVhZChkaXNwbGF5LA0KPiAtCQkJCQnCoCBIRENQX1NUQVRVUyhk
aXNwbGF5LA0KPiBjcHVfdHJhbnNjb2RlciwgcG9ydCkpKTsNCj4gKwkJCcKgwqDCoCAiVGltZWQg
b3V0IHdhaXRpbmcgZm9yIFJpIHByaW1lIG1hdGNoDQo+ICgleClcbiIsIHZhbCk7DQo+IMKgCQly
ZXR1cm4gLUVUSU1FRE9VVDsNCj4gwqAJfQ0KPiDCoA0KDQo=
