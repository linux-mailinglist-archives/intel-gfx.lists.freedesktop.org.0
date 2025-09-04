Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6ADB43625
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 10:42:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC6A810E1BC;
	Thu,  4 Sep 2025 08:42:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hX1Xk9SU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF1910E1BC;
 Thu,  4 Sep 2025 08:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756975367; x=1788511367;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rC2xxE4j1EcROGk1FGFkgO0MjGIwYJrphKclRdqLhTM=;
 b=hX1Xk9SUGkG+TOhKh4DOIcL1KoNRQtR5if07kmpmpX+CRhwqHqBc30sC
 A+G3jptBokFkniVBJM1aIq2qcC3q+RXmruv6SBaUVygx4MgPXbY88Wk/r
 0FjlZIE/UzxUPwACzfNbNcbk8RV3AhnkLFm//ecYzZYCRo2Rsy2Lq2orW
 OISJ2vmkWFK9RYD3x5mpjvujFT/oVb3WtOdgfAKgvmIHI1/l/4dwMVWIT
 ScT0CayO0SaTpl/k0L0w5gzbkDKwVbgJuV/QYN72vfGLUIF5rF9r1J8Gt
 hwHaCsqPUTSlexnV5QWw8+7afd12/wDU+bU5pR5eNBiJTdFc93BfLMqvB Q==;
X-CSE-ConnectionGUID: LmnzWMvsR+GMDWs20Nk5qA==
X-CSE-MsgGUID: Q96fH1wtSseZz0q6YbVkjw==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="59453427"
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="59453427"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 01:42:47 -0700
X-CSE-ConnectionGUID: 8kvppMB/Sri3Qa8qHO1huA==
X-CSE-MsgGUID: jqCXxhkeS0SB7Qpyqqsctw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,237,1751266800"; d="scan'208";a="195491090"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 01:42:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 01:42:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 01:42:37 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.73) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 01:42:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RoZcnHAyvleqObiVEHSVRutAnHtVkQb/+nnEqo+W5p0TI1Ca//KYnzBV5TSAR9tEh9CW+m2RrN2L4gJ9JixQeCtqFyuvJ7TL2Y1BNrhTZn389N03tVU8AexICWfR73M5XQuTWuXgMIXFYjPaENLkSZiNpbqzSC29cBGRJDTfyCQ9rTdt+XmTAhjInATTjHplmR0KpfAxJU95Cg1wlWIUMJTcIyMhIHS+FQEnnuvahIawjrV24gC8kzKJw+QT6nr2Usl29F9O3WVEctBdaxp+i+OU9t0jNIqJop460Dx+RLq6ielVcHWnvr+W/IrC07yrQENnO7fTDysgwvHpz3m+Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rC2xxE4j1EcROGk1FGFkgO0MjGIwYJrphKclRdqLhTM=;
 b=VPyWMGskgFe1VvjyQgxbYZho3tCqWc1A435EuR7mfwblq91o63d5l95FElliHC8YMPcb4nhS1malzO1kOvRGtOS9rnqzqcfjaCoKXytrVx3wx2G/1cS+J/jZyBhNe9IATehj1NM7FEg0JEuOYRwu4X2fm4h4bAaDYSn8aaaRICAn9KMwXZEkuVY0FxIPKsQd23eQQPEv0nsHUnl+xw+XAcIJ43HVbN9dtnxFfH2m9ksus0oxrsE3mxopWwAJnITDOt9aeRLEMj6OHUL2olXzVvHWcSrMiSyloMv3Szqs3IIvfbT9L52apvBc5VFBAx6bX/L5hCyDE4kWHZTVQDTB2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB7596.namprd11.prod.outlook.com (2603:10b6:510:27e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.16; Thu, 4 Sep
 2025 08:42:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.015; Thu, 4 Sep 2025
 08:42:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 16/20] drm/i915/dsb: use generic poll_timeout_us() instead
 of wait_for()
Thread-Topic: [PATCH 16/20] drm/i915/dsb: use generic poll_timeout_us()
 instead of wait_for()
Thread-Index: AQHcGBZ1toHY6SDFME6u8/fivRwfYrSCv4eA
Date: Thu, 4 Sep 2025 08:42:32 +0000
Message-ID: <12aa8ec8e190d093d928d518faa152fd66519ec0.camel@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
 <979eae02af1184b3756746ace61379dd1947a79b.1756383233.git.jani.nikula@intel.com>
In-Reply-To: <979eae02af1184b3756746ace61379dd1947a79b.1756383233.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB7596:EE_
x-ms-office365-filtering-correlation-id: 201d2999-d056-4455-206d-08ddeb8efd8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cEE1VndhRkVhd3hvTUdyaG9XV2N2R1ZDMGlDR2xDOE5BUnc5bmhEanJVYzBR?=
 =?utf-8?B?YUFYanJiLzE0SmlDMy8ybFFKVFAvNUczTzFyNVlMT3RlY1pNTkdkaFFqTjJK?=
 =?utf-8?B?eEc4RkVwUFNic055ZUx0R3J4dlJpMWY2MFd5RnNUMWNQT3k1aUVlUUcwTmxV?=
 =?utf-8?B?citkQms0ZTkzelBrcjZ4VlFPUXY4TCtseGZwVzkrYklLK29pbVlEK1RjeXlz?=
 =?utf-8?B?THJKcktpV3lJZUdRdEcvWldVTFVKL2VWVWM3ZmpyMlNYWlFIL0t6R1Z4RWE2?=
 =?utf-8?B?ZmZ4SjRqKzU3Kzc1OVVPWms0d1VodkErc3hNdlVUOG5UcEowcXlJUUp6NEFF?=
 =?utf-8?B?Q3hGREZaUGt4TWtVRjhjK3J0ajZLM0N5c0JYSTJZNTlDQ3FnYXR3d3F3OGdV?=
 =?utf-8?B?azdlQy92QmlYN3JRcjBKMXVZZzRGQWo3cnJHVkhnUEtvem9kVFVBSER5bnpl?=
 =?utf-8?B?VFZMbElYTTdOREFKNGxOQTJoWlJhVlNBcGg5OXgrYk5SUzBPMW5hblJHeE5i?=
 =?utf-8?B?cXBVYUdQYW1tRjYzdHplbEdpMGw4WnhaUTNOMThFR1h4eUwvWCsyNmcwVXpC?=
 =?utf-8?B?bEk0QUZjaXpDNVpvQ1JuLzNHc05rYlpXNDFEVEhXWFRFMkhRZDYwNVd4bmh5?=
 =?utf-8?B?MVlUODZGVG5NcHJ6NVV4a0E3ZWZXcEVLZGpVQXllQ3RtNXlIY3U1bSthcVU3?=
 =?utf-8?B?cG1TVjNzNnBqMWlBT0E4bkVLYi9ya2xHbFhzczdDOUpnRU1TbW5qNnNMTE5F?=
 =?utf-8?B?VVhLcW1QMlpNNUZGalRSanNJU0dTY2d2UlhVRzVCZG0va0pXNStmVGFIcmo5?=
 =?utf-8?B?Zkk4ZWsreFgzY3RsZktyRDJHT3BITmxFTVBKVE82WVByN0Q1WngreTd3VmdP?=
 =?utf-8?B?bnhWVHBMa2J4V1JMQ1ErV29DOC9jNmt2RVljdzRsa1JGYXB1dW9yMEgwdkdT?=
 =?utf-8?B?VUp3T284MTYxL1B3K24vazdqMU82ZFRyNjhES1d5NHByMTBBMWhQZ1k5WkNB?=
 =?utf-8?B?Mjgxdk1PRDUwTzVwMWRDR0pXNk4wbHVkdXA0SzdJTHhDTkFGMVJMdHBSYmNm?=
 =?utf-8?B?QWF2UE1hSTh2N0dVdWFPUGRCRzl1amEzdGovVHR4VXk5cFk3d2ZZRGFHU3Vz?=
 =?utf-8?B?VUJXSVpzQmlpazFubG0ycGpmSE5QNUU0aE5kc3U4T1Z5engrcmo0RmVRNitJ?=
 =?utf-8?B?VVhxVFdvRnh1V2FDL3h0OGVqaEUzSU02ZmxBdUNtZitlaG44NVI1Z2w2NmVT?=
 =?utf-8?B?QXNKZGU3aCtQdmUyZGM1SlVsSmVFNW5WZU0renlpK1JTTUU0OTJacm9RYTVv?=
 =?utf-8?B?QWxNWGFjU043aExtaFJHNDlJbi9tSFAxaFU5MXlnOFZJL2o3QW5wNjEyYXdP?=
 =?utf-8?B?bU02UzBmV01iUURFaE1GUnV5TEkvT0RweTJNNHpySGVxUjhqYkZNM2V1bXph?=
 =?utf-8?B?TXh4blR3L2d4N0RvdUl1Q2lCMmVkaHl2MnZCSi9YSllrYlRGanVFUCtEaU5G?=
 =?utf-8?B?MFN6RWgyT0VhZWpiOGJiZzVFSzVySVFIV2RrMkJidW01QUswbVhLcEJoM0Qy?=
 =?utf-8?B?U00wWlZJTW51b2FvQS9jR0R3MWJQWE5oeXQ1eFFna1Z5dVFSbXJmZ0JYRVg0?=
 =?utf-8?B?OU5TTTZFZVVSa2RXQUVPRFhtTVREckJKYk9LMGlVVzY4Q3ozaEFvMzAvZG1S?=
 =?utf-8?B?NWtKbXlxbHJXVjdzRktHbDIzMmVZMHZkNTRvTXNwTThTQ0tYWFkvRkZqQmo4?=
 =?utf-8?B?VmZyTzd0T1U1WksxRmlyNW9LV0dUdXM4V1ROdm1ZZmJtdFc0bFJsdnluTEZU?=
 =?utf-8?B?QUJGSkp1MzgrUnF1aVMwYzhHallUVWh4NGZnd0RINGlSTFdqaXpQektDcnJ3?=
 =?utf-8?B?VGEzbEl6c2taVHY2VHJQYlFDOXYyVWw5RnpIejdjT1huWkpnRy9GZCtKM1BC?=
 =?utf-8?B?THBKbldUR3VXMnZyOUJQQU16Z1E3UUhLUnNzUG55RDF3OUg2WTR5S2RqL0ZC?=
 =?utf-8?B?TDJIYlhKQStnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aml1WXpraU9nM3hHVUVOeXcwLytaalF2R1lEYkNWQm5MUm93ZXdmTks2cEpN?=
 =?utf-8?B?NlVsMXp5MHM4RHNrMklKT3lvd2R1cjZOUW01Tk4wVEFVTmQyUGVVYk95VXRJ?=
 =?utf-8?B?eThzVDBWZFd3alJOUkpkSEJrTTlDQ2xaYVlWS3c0dHIvQmVlNW1aUTR1eVoy?=
 =?utf-8?B?TzFnOElzU1d6R0hSVFpBNURCSHJMUCtMWUR3a2Fxb0ZpRnI0bStNekcvaGRC?=
 =?utf-8?B?NkdRUVVNOExjeFZPM3hxS1lWRG1OYml6UnVIbDA3YVdPWnRBRm9TM2tMQnN0?=
 =?utf-8?B?MmZYQm9pMG1jNGt4S0duOGhQWkk5b2hPTmUvbDYzZm0rQmhvRTFvLzZGVHVW?=
 =?utf-8?B?SVZ3eVhQZEg2RGdHK0RnbHNsWlNwZHVId3pMU1prcTFwRGRoTk96SUpvMHh0?=
 =?utf-8?B?UFRyTUtIdHNnNzNyUHVoZXRKNm91MmYybktzeXk2bTB0Qy9PS2FwUHpMR1Z0?=
 =?utf-8?B?b0JjaHgyQnBHai9vT1ZVdE0xSUIzNnFKZFl5RW41bkhWVXRwbTQ1a2pmQjRY?=
 =?utf-8?B?QWxwNjBtYlZhTWdzRkFaTHRuK1lBUmc4b09scU45SWx2RTNDUFJ2bU1PU080?=
 =?utf-8?B?R1hWSm8rQXJQWW5IbkxCekRnNjNSd0xSc01WNDhvVmpSd2V5eDNIajNDdDIy?=
 =?utf-8?B?a1IxaytUaHY1MzFSVE5wVnYrSDV0YlJwSFFCdWkwYXk2UFBMYzI4Q3FuS1l2?=
 =?utf-8?B?UWNMYWZjalUzK3FyWEhnd0lMaEo4TFJOUEtVWU1DRWxkMHl0K1krd29qenBE?=
 =?utf-8?B?eWFJRGxDa3VlVlFnM0VDY0R3dXhucHpTOVgvbkpJbFQ2TThFaXV3MytyVk9R?=
 =?utf-8?B?ZkNMMTUyVTVkTVlyTVQ0dWEvT2Q3UWNZRFQvMytjdlZINHBEZU5wTWJ3cnZH?=
 =?utf-8?B?QXdNVll3T0pyQ0lPZVRaa3BQR1FBU0w4V0NOakpOVkx6YzA1b2oyNE4zamhz?=
 =?utf-8?B?VnNYaFBFOWxWWEo1NlNvU2tzWC9jWkVpTDY2WWo3WDh0OUE2MlJZUTJyT3pu?=
 =?utf-8?B?NVFkSjUvSzU4Y2YxTGdRd2d1c21VL3gveHlEUThaZzIrdUVQL2FBT0t6RmhF?=
 =?utf-8?B?NDl3OG1WYUN4aXNRb1UwTXRCRVAwc1o2UzArZTB4b2JaYWx5Tko0a3BpV1RG?=
 =?utf-8?B?QkFiOWppd2gvVHVuelJnaXJNd1ZGeklMajk4dDhkU3V6L1c0SlptUVQzNjYz?=
 =?utf-8?B?bGJLTUN1QkVWeGtySGo3Rm1wQ3VPMzhOem5ZZGora3ZlTmZiVFFIYjhTL3Mz?=
 =?utf-8?B?NmNQd0lqbWIvVmZuRGxpUkRURnBlcW0xcXIrNjYyUmo1dnZ2YUo4VFRqUkdj?=
 =?utf-8?B?bHI2TGdvcjVhWlJieFdrZDZEQ01FeWlCOHg5N0licitJakZqWEN6WmN0dmRE?=
 =?utf-8?B?MG1rZ1RoRlMrODhnT1lTM01LMi9QSWhXZkV0UmRyQVhPNGc2aGttNnZGb1Ni?=
 =?utf-8?B?Q0pmTFR3VGxmTDBWcjR3SUFDTXNiVC9OVzZpNFVaZ0MzWDVRK2RkczNVZG9h?=
 =?utf-8?B?bi9TUlVCa2NLdUY3MDZpanFVYm5uTjRkSTQza2wxVy9ncGZ0djNhb0I2Q1BT?=
 =?utf-8?B?N1RuUU5YdUdCelJHMTlIVGlqbWF1anh2NnZyS3F3VlNoMTlyMWlOSUVWcEJL?=
 =?utf-8?B?ZVRsTEhqRURmbVdoZUY5cTJ1ekFnOFluNE1ORGo0RjlQb2NHang5dDNHdXU2?=
 =?utf-8?B?MHBoeVlyQU50ZGFUd21WdTFTVVdRRk12TW9EUWdLNlpvbnlhOTc4QlVBeU4v?=
 =?utf-8?B?Q2RkS3kxK0JvbEg3SmM3NFZrNVFib3Z4NCsvbFpsbmJkcGhFdUM0NEdMQzdP?=
 =?utf-8?B?QU1xRHN2OThZOEJhNjNzNHd0UklkY0hUSkpHeXZPUFE5MWpwUk5zUUJyY0or?=
 =?utf-8?B?S0RZa3Qvb0JGMG02MnhxTTU1RXR1NThsaWNNSGRYY05rN1UvNjlibzBhbEps?=
 =?utf-8?B?dVc5ZzIyS1ZvVFdHUGtublFhU2lmcUhDNko5VjQ1aTNWc01BYzRXUi9tMzN2?=
 =?utf-8?B?bEM4bzl1TU92M05SUGtCTXFsY2hoeXVucGFENjBTbndKV01LRURDWnlDZXpy?=
 =?utf-8?B?REMrVy83d1J4TzhYUERSZDB4NGExVGh4MVFPcFRKbFhER1dxamplbWFHZzM1?=
 =?utf-8?B?WUZxRVZmUnJqc1VZV2U0V3FzbkNrSE1FckJLdWdGbFZxSmcwZWVZNU5NYUJG?=
 =?utf-8?B?SWZtRzJYMUFPSEVIYWU5VHJMYms4VU04T3JyWEZVRzUvczlZdVczanRFS3p2?=
 =?utf-8?B?ZTYwL1RjMDN4RE9XSmxIMDczMGVnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2B409D7CD68FFA408DA8B3BD094A4A1D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 201d2999-d056-4455-206d-08ddeb8efd8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2025 08:42:32.8072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LIUEFqfJEk5dhHkfGEekOts3GpEBGadcB25XNoTzlv6mmJkrZVErvt0PLouDEjgh8JkE+ZugdrVBaGdgngukKMEVcTzNRViYhdM7Sv+iOdY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7596
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
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5j
IHwgMTAgKysrKysrKystLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMNCj4gaW5kZXggNTNkOGFlM2E3MGU5Li5kZWU0NGQ0NWI2NjggMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtNCwxMCArNCwxMSBAQA0K
PiDCoCAqDQo+IMKgICovDQo+IMKgDQo+ICsjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+DQo+ICsN
Cj4gwqAjaW5jbHVkZSA8ZHJtL2RybV9wcmludC5oPg0KPiDCoCNpbmNsdWRlIDxkcm0vZHJtX3Zi
bGFuay5oPg0KPiDCoA0KPiAtI2luY2x1ZGUgImk5MTVfdXRpbHMuaCINCj4gwqAjaW5jbHVkZSAi
aW50ZWxfY3J0Yy5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9kZS5oIg0KPiDCoCNpbmNsdWRlICJp
bnRlbF9kaXNwbGF5X3JlZ3MuaCINCj4gQEAgLTg3MSw4ICs4NzIsMTMgQEAgdm9pZCBpbnRlbF9k
c2Jfd2FpdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpDQo+IMKgCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gZHNiLT5jcnRjOw0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRv
X2ludGVsX2Rpc3BsYXkoY3J0Yy0NCj4gPmJhc2UuZGV2KTsNCj4gwqAJZW51bSBwaXBlIHBpcGUg
PSBjcnRjLT5waXBlOw0KPiArCWJvb2wgaXNfYnVzeTsNCj4gKwlpbnQgcmV0Ow0KPiDCoA0KPiAt
CWlmICh3YWl0X2ZvcighaXNfZHNiX2J1c3koZGlzcGxheSwgcGlwZSwgZHNiLT5pZCksIDEpKSB7
DQo+ICsJcmV0ID0gcG9sbF90aW1lb3V0X3VzKGlzX2J1c3kgPSBpc19kc2JfYnVzeShkaXNwbGF5
LCBwaXBlLA0KPiBkc2ItPmlkKSwNCj4gKwkJCcKgwqDCoMKgwqAgIWlzX2J1c3ksDQo+ICsJCQnC
oMKgwqDCoMKgIDEwMCwgMTAwMCwgZmFsc2UpOw0KPiArCWlmIChyZXQpIHsNCj4gwqAJCXUzMiBv
ZmZzZXQgPSBpbnRlbF9kc2JfYnVmZmVyX2dndHRfb2Zmc2V0KCZkc2ItDQo+ID5kc2JfYnVmKTsN
Cj4gwqANCj4gwqAJCWludGVsX2RlX3dyaXRlX2Z3KGRpc3BsYXksIERTQl9DVFJMKHBpcGUsIGRz
Yi0+aWQpLA0KDQo=
