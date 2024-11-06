Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 937D89BE43D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 11:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35F8210E42C;
	Wed,  6 Nov 2024 10:27:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AUyEgj3z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C373893DB;
 Wed,  6 Nov 2024 10:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730888862; x=1762424862;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Gi6yrKj7TcNDw8SWG3GZa6rR7tjuKVzahCR/JQrXW04=;
 b=AUyEgj3zLiULPF14l6ws/g0e80WYsqklCgxBVsooQzutbfhvMAqXAbfU
 jv/L0/x6NkzIBKyharqHvRhp8T/UuRpyGUqGElW+Rz4qsl+OO45LxbaCp
 /jzlMNfaE2pBE4j+P4d+u/t/HLZRgG+KBYd4nlJCv9SpiwsoX9ZpjaXSV
 t9i97p96uV+1VNaFbur2OC/TUO6/uXJJsrAY2piEqj3dQMirGqvTJS7u2
 K8jwA7G5xS7JSYNlIIOdpgITs6D/UL5DxyUgjlrsVXWEchUoXXluB21P7
 /uthDaH9S/Tqp5Dh/Z0eJGqcIkIPP63KDS5fLwpPWDtgyDZMmkksZZK0N g==;
X-CSE-ConnectionGUID: qldCpYY1RtK6e6y/L3oqTw==
X-CSE-MsgGUID: 4L6EpxvZT+SQWbOqQIP0SQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30899114"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="30899114"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 02:27:41 -0800
X-CSE-ConnectionGUID: MNxkSmmYSimQKLJRlpaF+w==
X-CSE-MsgGUID: 8oFMlNG1TrefrcSjlIyxLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="115290025"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 02:27:34 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 02:27:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 02:27:33 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 02:27:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZcGBQH57CV5FE/LeCt3gYe5Xh3V7obZjDM6tTHRwybveg87wG5MkSt5W0Nho999P5RTO/n8SVHfLtzeY7miNeDYyWwtaPQy1RHTI7n1+l6a3CZXRt/40pDU+Mm54KegkHJh1F9bJEaHdXefujzOxJAPaFRoWB/jLwWNWQY8M2y2LVu1vp+ZerblgPnFQNwIWrKn91idjyD8BQSV04aKS//A/mPZ43CZkZ7fdmqF48tAxL2hPohTHLpi6hFORbWUaEVWRlNmQH71hyu9Y6OG3pprxi0UZqCBtQf8cmgMzXAqoBvktiswhJfP/z9sX69aBcF9MJEcmMHtuN1diPa3wKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gi6yrKj7TcNDw8SWG3GZa6rR7tjuKVzahCR/JQrXW04=;
 b=KItA1otqdFZLaf3sZxnJNBbXG/+lBFJrGFgOl4qwJwh+hX5ycVSxcS5Ee5dbfw8EDtHkBo/tb4k2d0kA2fP6dILIsrM0JTB8kHPBTOspExXymi+j3E2BubWEFyrc3KrNw6ihUdWdyYvvfyICoTI6N0hHFXyB/jXg2xyuxSi65U1ZMV4IPAOTgih2xEiyjkZczNQTMpQIy91tfzWDwbEqYBHMJQ6nY4ZaxYbysXQAA7UcM4ghJOJkrtYNed8uY5vYGFwTAbjLet/BTHB/pmkLAz0CtaZU2ag4A8CeEy3aoWnKnOhBWhG49KlT3rCM+/CFj+rRBxGDrwJasQJv5HeLLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MN0PR11MB6159.namprd11.prod.outlook.com (2603:10b6:208:3c9::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 10:27:31 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 10:27:31 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 08/15] drm/i915/display: convert HAS_MBUS_JOINING() to
 struct intel_display
Thread-Topic: [PATCH 08/15] drm/i915/display: convert HAS_MBUS_JOINING() to
 struct intel_display
Thread-Index: AQHbLt3YC63+Ol2d1km3NsALQYlncLKqDzqA
Date: Wed, 6 Nov 2024 10:27:31 +0000
Message-ID: <0506dd71e42b2d8e1565d4573a97b9fbf65953e4.camel@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <754f1d16612082ef48e7e33b1240418549ed1407.1730740629.git.jani.nikula@intel.com>
In-Reply-To: <754f1d16612082ef48e7e33b1240418549ed1407.1730740629.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MN0PR11MB6159:EE_
x-ms-office365-filtering-correlation-id: 6ac674b9-0965-4de0-7d73-08dcfe4d9ee7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?THlSWlNscVdFL0pmd0pVd2N3TkJHZFNHbVR6T1dyT2Fvc2ZMVDkwRlhVRm1Q?=
 =?utf-8?B?Lzg1NE5nSWt2LzFWMXJRRFM5OUpOWm1yaFdPemZqa2lwOEUzaHVZc3BDMHVF?=
 =?utf-8?B?L01tRDdTcjBqQkhWb2NrWjVNcGYvbWVUWjdDU28zMDVET0JPdFNFU0pRaDRF?=
 =?utf-8?B?UFFxbTM1dTVlNzRCNW1XY1lJZmpoU01oNFNrU2krdGZyL2lieWZYd1JhLzhG?=
 =?utf-8?B?clh0KzJ4MHhzbVlPMDJDMmt4WnNWZTlQTkJsWTk3SmcwcWlXTVhVbXRWakFs?=
 =?utf-8?B?TjBSVVdCcUE0Umh2U2tpRldMd21VcU1CTGZ3ck9QSlhjazJSWk1JSm1seVdH?=
 =?utf-8?B?ajhOaDFRaU5hdUl2UXZ4R2Q1YXB0ZEduNWdGd0xQL3hzdjh1Ym1uYVZkWDZU?=
 =?utf-8?B?a2NtMCtOcmV1V1lzMnN6all0K21yTFdka2V4OWU0VDE5NjEzQ0NiemNWMWhE?=
 =?utf-8?B?NHhFTHFBSFpaY1JPVUhNeTZwTHZzaWd3czJPcHp6Y0FiRzlXUUREVUpMT1FE?=
 =?utf-8?B?UUhsVys2WkJDcVZNaFdZMFJMSFdYR1lvU2I4d2xhSUhpY05Yc2VKemRJTGFY?=
 =?utf-8?B?TGUyU05MU0MxbkgvNXlaeUJPa3dqQTFoWEVEalFHWDQyQnlTNEs1THorRXd2?=
 =?utf-8?B?U2dXb2JPQmZIOGFaZ2F2NGZsRlhTakQrRXRwYXM3R3c4QTNSSWR4UXFkdDZQ?=
 =?utf-8?B?SCtSUy9hRnVqK1hUVmd5bGpad3BGTVpIaHYvN0h2aWtjblFQKy9DU3RUYTZR?=
 =?utf-8?B?Mzh2TVU2UWN3UVNQS09rZ1pQS0pCTk1zN0k5NmJYSFFoeWEyaU44UVpYN0xt?=
 =?utf-8?B?RDd3T1pXQ3BUM1R2SGh0aFU5TWZ0RjFTZU80M3hqVzEyZU95bmNSb21ydlgw?=
 =?utf-8?B?bWJDR1U2ck56enVZUnJRWE9WT2lSK2hBbGd6UnlocE1pVG1lSGV3QUdmdG9Y?=
 =?utf-8?B?ejJuUjBlRCtGR1VmcDkxd0pzcnozQjl5Yy83bUJPdWE0S1RxNmd1dElCTHBP?=
 =?utf-8?B?UmhDUWo0Z2h1NTJPUUM2aGNBUnplYnR0ZHNwMFZnOXpWRTFRSksxdTZYcHho?=
 =?utf-8?B?K0NCQzRyVC9kVWhUOVNhRTVKWXBUQnNwR3c2ekwzS0RDMFpKeWZQWmR5UmJZ?=
 =?utf-8?B?QnVWdnY2RmNnazlMTUt1dk1nNTdaakw5SHlqYzU2TTNOaTN4ZHY2TXB4aXJ5?=
 =?utf-8?B?ay9PcTZJTWpiNkZ0bW0zUFl4ZzRHVXkxQ2lHZndZNEkvSHEwVFFZSGFzemM0?=
 =?utf-8?B?S3Y4eEI0eWprWWR4VGd6djB1Z0xsMWZ6TUVTOGZtVzNzSStvVGZidjFJek9v?=
 =?utf-8?B?aDRwUmozRkxxVElXVlBwOGJyTUlNVVlMcFJtRm9YNUJzUGNDdURURHRGWitZ?=
 =?utf-8?B?amptanY1cXBieGx1Y1JScklDTEljSW9vVUZuRlBPSGRrRWhqenhSWkFVQlFa?=
 =?utf-8?B?aGloeTJkZzRxbmRlMWhOc0ZWa3BEaDJOaXBPbU0wakZQVVpkd0piUXBMaDdj?=
 =?utf-8?B?OEdRcXBnUWg2SWFuNFhLV3pNQ3dHcUtienVidGw0NjdZZzEwZ3ovdk5SbnVx?=
 =?utf-8?B?R0VVZlRQMmRQNUd2eHZFc3EzMXhYbjJJVkU3SnVtcVN6YVdVR2pQMW94MDVy?=
 =?utf-8?B?VGVXbmtJMHk3YXhSMHJjUzZBV1ZveXlqNWFzUWRqV3ZmU0hIYUxqeXh6Q0ZX?=
 =?utf-8?B?eDEyaWp6MlJDWktTUUhsekdKcnZOWkRFYS8xNjBQSDlPS2VPY29Bb1h0eE5v?=
 =?utf-8?B?Tk9YMC9XN1JhMG1ZTWduclhmSHZWbGNjNGNPRm9MdkNhdzZPZkUwd2FDU3NX?=
 =?utf-8?Q?RGu5jiGSroR8FkIrPCXungpapNBONF0OTgHfQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K0x6OW5CRm5yckM0L3EzM1o4aXIzV0lwQTdocVFwdWc1M0ZQMDZUWnExUUd2?=
 =?utf-8?B?cDJkVXVnOWlhMllyUERobWhsWmVTUnhjeDBJcnZXMW4xTmpYVTg1V2JkdDBx?=
 =?utf-8?B?eWZoR1pwWjRwd1dMQ2RjNjFQZXNpTC83Y25jckQxQ2tvMkoyeGtmVFhlc3BL?=
 =?utf-8?B?R0ZTdEJDVlBtVm5rOGFxd1VhUFgwOUJGZWNiQSt1K1BHeVR6Y0FLdHArbUZL?=
 =?utf-8?B?V0M0dEdha2VkYnFpS1p3cGV3MHV4blc5a3c5T29weTdQWHB3SEhMcEZZSU9L?=
 =?utf-8?B?UXlYOWtkaVNpLzIxN0F2UVlsUFNNaHdpOCsvRS83SWdpUnV4SUJLSTlsVklo?=
 =?utf-8?B?UUR5KzcyNVhYQkc2Nm5oUFdBSUkvdzFib2dKTjIwT2pIeDBPKytKcFBWYjNR?=
 =?utf-8?B?bzk2NmdIUG96OUlxWUpHZEdlbmplYXBKSlJkcTdTY3Frd0h5OU1uckI5U1FP?=
 =?utf-8?B?SlB3T1o2Y05JYlFWak96TE04WVNvQkk3MTRITkNDS01jQ01xK1p4QkUveVo3?=
 =?utf-8?B?Vzl4T28vT2NBaTQ3VHZWcGgrbFlMRUdWM2dpYzFKZU9EMW5MTGJKbUs1QjNR?=
 =?utf-8?B?ejIrNmJJTXQyN1BwRDltZFdPM000Ti9CV3lBK2RrWTMrbWZ0Unp1NGR6RU9m?=
 =?utf-8?B?dWZORGk4YU9rVFhTYzFCbVhnNjZKNGVRUW1mK0p1c2NxcXVLUFAvYnhCb1dh?=
 =?utf-8?B?b0pHdkJIK0s2bUVzcm1yWDgydFlxa2k1UkhpN3FTUW1CcTMydVF5U05pVlVv?=
 =?utf-8?B?S2dYMk16T3JZTyszL3RucnFTN0VTSy85U3hmNFJFZUJyOW85YXBaTE9PMFph?=
 =?utf-8?B?UURETmE0L1NmQ2dVeGd5RHlUNXF6V3dURmErMkxBVVJZaGl4dVl5RWR2ZWF2?=
 =?utf-8?B?a2JHNGNtTXFZYmtSZGtDNkE2RjAycU9tS2dCbjd1cW56Q003TVhVSzRkVXhI?=
 =?utf-8?B?ZUFCTkdwQnU5Y2IxYy80SnlXT0hFbVc5eEF2bGdpcE5aeWh4czhZS3pjNTFQ?=
 =?utf-8?B?b2hPdnpYbVFpa2x1blRUZG1QWTFZKzh6UHdPN2hhb0tRV2IyaHNPVE1TaXJT?=
 =?utf-8?B?a1FmcHhLR0VFR2d6b3crRm83SnJURlBOcWJob2RVeFNaNzJqb3U3UVl1L0VD?=
 =?utf-8?B?MFF1UjY5Z3RoTUpRRDJtQ0ludCtWWVNBU0UzOUIxbmhsZDQzdmZETFFZYjRS?=
 =?utf-8?B?MDF3L2VCWkhET0l6dFN2bXdBb1gwQzVuNEgrdEdRTnlqNUVUUHZuMzJUS0M0?=
 =?utf-8?B?OHludkREa2ptQWNCOEVQMktQN3dRbmN6WnFzZEU3NGxVKzluc0pEbnduZFNI?=
 =?utf-8?B?UTJ5OWlxcElzSkl5TndLQ1paQ2RBVGRXRnhDMis3MnRvOHpVczl2a05OdUtW?=
 =?utf-8?B?M3pJdE80NFVSV0RBMnQ4RXlYcE1nN3pHMXZmQ3RENUQ1cW84MVRTbUwvNDZl?=
 =?utf-8?B?eGRXRFpkKzMzYytUOWdZVjNwRWYyYkUrdVE4UkFaeVBuTi8vTSt2ck5CblVz?=
 =?utf-8?B?WjlPUmhHK3ZVNXNreTRoMWN5emhmYnIxSFRnZk9LV0tMS2dWVVpRMkwyUDBh?=
 =?utf-8?B?RlBWUnpoSWMrN0VVT2U1U3pndldXWSs2OHBvSGpLa0U4eUtTcExWZ1ZCcVRY?=
 =?utf-8?B?MCtVMzJWYTFPcjlJRlNDR01UWmRUYTR1bXZxaGdZU2lYbGhPNlR0VU01SW9K?=
 =?utf-8?B?TkpXcmdUNmJ2eStDYkF0WnFjNlZrZi9ZQnhON2xJRmp5b0EvenE5TkZ3MmRS?=
 =?utf-8?B?eVJBMDBMRkc3YWNRaG5VUk1TemtjeW0wU1RwWnh6WFFFQ0h0Y1Fld052U1dy?=
 =?utf-8?B?dTMwaUxsTlFGKzF1OHJSNFZHQXZSamdFUDQ1RmdUTUNmZzZRUkJ2Qml2TXgx?=
 =?utf-8?B?aWswRlVyUU91WWZ6RUNQdmFhNFI3cC9vbzVWZm8zdFpyWVl5dGhpT083WXB5?=
 =?utf-8?B?UVE4QUhBMWg5R3RTK0FPWVBlNk1KVk42TzJlZVBqRDJBdURSR1VCdGt1NVl5?=
 =?utf-8?B?S2RJUS9sSWdvOUwzSHN4enNqdzJlanp5bGpVOWVNVitRMkRXZGw5STlOd3Ar?=
 =?utf-8?B?dWZEZFJuNEdmV0hDSE14UXJqT1BwSEx2NldGbjhQREZWNTZ5Nm5rU0dvdUxZ?=
 =?utf-8?B?Q1VnSVl3c05RamJ6c2tSMWgxQ3FXV21IeWRiZEVTOWJTZHd4eGU3aXJmSkcz?=
 =?utf-8?Q?/NANxDhWdLeKFNFLGLi+v3g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <66680C6D680DD446807FB4CE0C318A9B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ac674b9-0965-4de0-7d73-08dcfe4d9ee7
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 10:27:31.1360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bv+EwdbwqiNY0JsnSIMGcLEEMxYUA6hf4kPz4znHp9URffUbCSbCi7vDEkGTU7Kcfu0+ioGBSsS5aBCdxRUoJqsCqvIZGt2rsmfjf9oMtzU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6159
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

T24gTW9uLCAyMDI0LTExLTA0IGF0IDE5OjE5ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBD
b252ZXJ0IEhBU19NQlVTX0pPSU5JTkcoKSB0byBzdHJ1Y3QgaW50ZWxfZGlzcGxheS4gRG8gbWlu
aW1hbCBkcml2ZS1ieQo+IGNvbnZlcnNpb25zIHRvIHN0cnVjdCBpbnRlbF9kaXNwbGF5IGluIHRo
ZSBjYWxsZXJzIHdoaWxlIGF0IGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2RldmljZS5owqDCoMKgIHzCoCAyICstCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuY8KgwqAgfCAxOCArKysrKysrKysrLS0tLS0tLS0KPiDC
oDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiAKClJl
dmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVs
LmNvbT4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZXZpY2UuaAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RldmljZS5oCj4gaW5kZXggYjg1YjFkM2ZmNzA4Li5hMGZlZDQwYjc3NzkgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rldmlj
ZS5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rl
dmljZS5oCj4gQEAgLTE2Nyw3ICsxNjcsNyBAQCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9wbGF0Zm9y
bXMgewo+IMKgI2RlZmluZSBIQVNfSVBTKF9fZGlzcGxheSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCgoX19kaXNwbGF5KS0+cGxhdGZvcm0uaGFzd2VsbF91bHQgfHwgKF9fZGlzcGxheSktCj4g
PnBsYXRmb3JtLmJyb2Fkd2VsbCkKPiDCoCNkZWZpbmUgSEFTX0xSUihpOTE1KcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMikKPiDCoCNk
ZWZpbmUgSEFTX0xTUENPTihpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChJU19E
SVNQTEFZX1ZFUihpOTE1LCA5LCAxMCkpCj4gLSNkZWZpbmUgSEFTX01CVVNfSk9JTklORyhpOTE1
KcKgwqDCoMKgwqDCoMKgwqDCoChJU19BTERFUkxBS0VfUChpOTE1KSB8fCBESVNQTEFZX1ZFUihp
OTE1KSA+PSAxNCkKPiArI2RlZmluZSBIQVNfTUJVU19KT0lOSU5HKF9fZGlzcGxheSnCoMKgwqDC
oCgoX19kaXNwbGF5KS0+cGxhdGZvcm0uYWxkZXJsYWtlX3AgfHwKPiBESVNQTEFZX1ZFUihfX2Rp
c3BsYXkpID49IDE0KQo+IMKgI2RlZmluZSBIQVNfTVNPKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfVkVSKGk5MTUpID49IDEyKQo+IMKgI2RlZmluZSBI
QVNfT1ZFUkxBWShpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9JTkZP
KGk5MTUpLT5oYXNfb3ZlcmxheSkKPiDCoCNkZWZpbmUgSEFTX1BTUihpOTE1KcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQTEFZX0lORk8oaTkxNSktPmhhc19wc3IpCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5j
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYwo+IGluZGV4
IDNiMGU4N2VkYmFjZi4uODNlMmNiYmZjYWYwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMKPiBAQCAtMjQ5Niw2ICsyNDk2LDcgQEAgc3RhdGlj
IHU4IGludGVsX2RidWZfZW5hYmxlZF9zbGljZXMoY29uc3Qgc3RydWN0IGludGVsX2RidWZfc3Rh
dGUKPiAqZGJ1Zl9zdGF0ZSkKPiDCoHN0YXRpYyBpbnQKPiDCoHNrbF9jb21wdXRlX2RkYihzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKPiDCoHsKPiArwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOwo+IMKg
wqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoc3Rh
dGUtPmJhc2UuZGV2KTsKPiDCoMKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGludGVsX2RidWZf
c3RhdGUgKm9sZF9kYnVmX3N0YXRlOwo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZGJ1
Zl9zdGF0ZSAqbmV3X2RidWZfc3RhdGUgPSBOVUxMOwo+IEBAIC0yNTI0LDcgKzI1MjUsNyBAQCBz
a2xfY29tcHV0ZV9kZGIoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsKPiDC
oMKgwqDCoMKgwqDCoMKgfQo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgaWYgKEhBU19NQlVTX0pPSU5J
TkcoaTkxNSkpIHsKPiArwqDCoMKgwqDCoMKgwqBpZiAoSEFTX01CVVNfSk9JTklORyhkaXNwbGF5
KSkgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbmV3X2RidWZfc3RhdGUtPmpv
aW5lZF9tYnVzID0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBhZGxwX2NoZWNrX21idXNfam9pbmVkKG5ld19kYnVmX3N0YXRlLT5hY3RpdmVfcGlwZXMp
Owo+IMKgCj4gQEAgLTI5ODQsNyArMjk4NSw3IEBAIHN0YXRpYyB2b2lkIHNrbF93bV9nZXRfaHdf
c3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB0b19pbnRlbF9kYnVmX3N0YXRlKGk5MTUtPmRpc3BsYXkuZGJ1Zi5vYmou
c3RhdGUpOwo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKPiDCoAo+
IC3CoMKgwqDCoMKgwqDCoGlmIChIQVNfTUJVU19KT0lOSU5HKGk5MTUpKQo+ICvCoMKgwqDCoMKg
wqDCoGlmIChIQVNfTUJVU19KT0lOSU5HKGRpc3BsYXkpKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZGJ1Zl9zdGF0ZS0+am9pbmVkX21idXMgPSBpbnRlbF9kZV9yZWFkKGk5MTUs
IE1CVVNfQ1RMKSAmIE1CVVNfSk9JTjsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBkYnVmX3N0YXRl
LT5tZGNsa19jZGNsa19yYXRpbyA9IGludGVsX21kY2xrX2NkY2xrX3JhdGlvKGRpc3BsYXksICZk
aXNwbGF5LT5jZGNsay5odyk7Cj4gQEAgLTM1NjIsMjMgKzM1NjMsMjQgQEAgaW50IGludGVsX2Ri
dWZfc3RhdGVfc2V0X21kY2xrX2NkY2xrX3JhdGlvKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUK
PiAqc3RhdGUsCj4gwqB2b2lkIGludGVsX2RidWZfbWRjbGtfY2RjbGtfcmF0aW9fdXBkYXRlKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlu
dCByYXRpbywgYm9vbCBqb2luZWRfbWJ1cykKPiDCoHsKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9ICZpOTE1LT5kaXNwbGF5Owo+IMKgwqDCoMKgwqDCoMKg
wqBlbnVtIGRidWZfc2xpY2Ugc2xpY2U7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBpZiAoIUhBU19N
QlVTX0pPSU5JTkcoaTkxNSkpCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFIQVNfTUJVU19KT0lOSU5H
KGRpc3BsYXkpKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+IMKg
Cj4gLcKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDIwKQo+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV9ybXcoaTkxNSwgTUJVU19DVEwsIE1CVVNf
VFJBTlNMQVRJT05fVEhST1RUTEVfTUlOX01BU0ssCj4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BM
QVlfVkVSKGRpc3BsYXkpID49IDIwKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
bnRlbF9kZV9ybXcoZGlzcGxheSwgTUJVU19DVEwsIE1CVVNfVFJBTlNMQVRJT05fVEhST1RUTEVf
TUlOX01BU0ssCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgTUJVU19UUkFOU0xBVElPTl9USFJPVFRMRV9NSU4ocmF0aW8gLSAxKSk7Cj4g
wqAKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGpvaW5lZF9tYnVzKQo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmF0aW8gKj0gMjsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGRybV9kYmdf
a21zKCZpOTE1LT5kcm0sICJVcGRhdGluZyBkYnVmIHJhdGlvIHRvICVkIChtYnVzIGpvaW5lZDog
JXMpXG4iLAo+ICvCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIlVwZGF0
aW5nIGRidWYgcmF0aW8gdG8gJWQgKG1idXMgam9pbmVkOiAlcylcbiIsCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmF0aW8sIHN0cl95ZXNfbm8oam9pbmVkX21idXMp
KTsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2RidWZfc2xpY2UoaTkxNSwgc2xpY2Up
Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RlX3JtdyhpOTE1LCBEQlVG
X0NUTF9TKHNsaWNlKSwKPiArwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9kYnVmX3NsaWNlKGRpc3Bs
YXksIHNsaWNlKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV9ybXco
ZGlzcGxheSwgREJVRl9DVExfUyhzbGljZSksCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgREJVRl9NSU5fVFJBQ0tFUl9TVEFURV9TRVJW
SUNFX01BU0ssCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgREJVRl9NSU5fVFJBQ0tFUl9TVEFURV9TRVJWSUNFKHJhdGlvIC0gMSkpOwo+
IMKgfQoK
