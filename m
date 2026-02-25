Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHoPOt6XnmnXWQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 07:34:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3E319264A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 07:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5FCB10E6B6;
	Wed, 25 Feb 2026 06:34:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HbfQ6kHY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A90510E6B3;
 Wed, 25 Feb 2026 06:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772001242; x=1803537242;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+jasc8BltbT5Z/7L2kRFdXB99mngVm5TiYyeViG49ow=;
 b=HbfQ6kHYlYi0e4zLAOWVDysvaKqBby1FUI9KiyXw1wuZnqXPUWrJC4V/
 Lr3aeUNoJPTvcV1qycjnAIK/oKVZexpsYnPwvv8UNK4Z16hZVKMkLKGen
 MKqwmJVghHHvRWhqF28Co7vSHJ09LJIxSsxcb94tRfbU+NNlmGkV1w7Ae
 173vitcDgMt4KSZkrWJNNlVVVgKRSW3WTQyWdRBOhQ+fA0ZRiYnEFKTAL
 kw8VCaTCYKSCur5zcTHPlTBxLoLgaHT0bHTbE/B2m9qAjZ8pRp2uI8d5h
 iqsgze/sE8Z+L432d+XZUeQG3w4DyUO8/ioj71xhGiEbXG2d88XYYq81C g==;
X-CSE-ConnectionGUID: sHzT8Nx3T8Kx26LmNGv4Ww==
X-CSE-MsgGUID: iDxrRociSfWdnSJAAW/0uQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="84397190"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84397190"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 22:34:01 -0800
X-CSE-ConnectionGUID: kpHopPOkQlaQKbeaiY31Xw==
X-CSE-MsgGUID: goyq3mhLTI6eH+p1lbtZvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216150092"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 22:34:01 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 22:34:01 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 22:34:01 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.38) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 22:34:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DCbP8s4WJ0XEWNSBH8mZNi0sZOOxBcXqOOcAeAGeCOm8Le7susdL2yByO3FUpuGiIoNLU7ZvCJ1L8pJi3JVIDvB+3WhZjoO/UYK2bZkhrNgw77nUNy3F9BQ3/Ot3+T4p/rI3bdePEhnW4qLL/C3V05/Q7qXi9bUw5hbgz/O9rIluGkN+4rD3NZTJT7TSZmsyCivQUy+eSbprxkBxQKaoPXRfPV5hygPBkoZyDVgpyQyJF9u+72mdmPsdp3YElwyMcxrIFsAmU644ZTz3c5iuqncwUcD2x73Cyrupao+HfyxY1bTnl5VSLpr/vS2XNQtD9TKbFXJBezLnAYSR6BUWaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+jasc8BltbT5Z/7L2kRFdXB99mngVm5TiYyeViG49ow=;
 b=KhbQt9m7vQvclZPAGOmkaik5Dl8NErhKv/0VZ4AL32phnDRtvQxiioeuAGgK8enWPKXODNKkeNkIVirM/WxADpXWYyL26l7hgZjqQjUly8tvu1xSXqyAoSE8cqVQoGmpBmH6na9nmTydCMWg5NU+9c13hotc3VDED1HaNwnzApxGGwtTBY9LSzIlunItG5psSuD7NE4jib7vitPzDSoGhqKZAfJVctQwXXEpFPDiaIB+ivRyoXaOaKhEEKWIIjILfZpfk485/JgCQ1L8kG2E1f0KkRkPj3OmbpxxtplF85xUq0VepADytsCk9+7JoTxBhY4JWEH7PnMz3UWvh3ogYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6830.namprd11.prod.outlook.com (2603:10b6:510:22e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.16; Wed, 25 Feb 2026 06:33:58 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%2]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 06:33:58 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH 1/5] drm/i915/psr: Repeat Selective Update area alignment
Thread-Topic: [PATCH 1/5] drm/i915/psr: Repeat Selective Update area alignment
Thread-Index: AQHcoaDRXP6reoDOKEOIkc4qFwMnTbWS1u+AgAAnP4A=
Date: Wed, 25 Feb 2026 06:33:57 +0000
Message-ID: <a9e23121e332dbb93047c7392ba731393c3fd66d.camel@intel.com>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
 <20260219130743.1232188-2-jouni.hogander@intel.com>
 <40fbaf0f-525c-4f38-bb26-3f662a0a1a0c@intel.com>
In-Reply-To: <40fbaf0f-525c-4f38-bb26-3f662a0a1a0c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6830:EE_
x-ms-office365-filtering-correlation-id: 258e131e-f0f2-4646-592d-08de7437db05
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?bFVyb1g3SzBhUDF0Ykhna0ZubG13dnh3alZKTEZ2SkdkUnk1bk9nQ1FNbndh?=
 =?utf-8?B?bzhTLzIyWEVITEhvTDF5cW9ZcGg4WENmMXROREdHeVVrTitrT0xHSjdTQ2t1?=
 =?utf-8?B?bFByY0hVditLYlBzclZTMlhSbGJwSHdQUFFGV2RnZWFXQ3Z4NnE1ZS85bnZa?=
 =?utf-8?B?QmMycytHNmxlOTRSTW9uUWNMT3daRHEvNE5wbUVSNGJMWGhvSzZNSGkvU1V1?=
 =?utf-8?B?bWFWYnFGcHRFWUI3ODI1MXNUM2xiSXJmRE5FaGUyZFlhOXEvenNaNkpYalRT?=
 =?utf-8?B?NVd1MjBRYUhFVUJVUE9EZDIvWk5aQmN1WlZHVzJXcHhzWU9CQzhsNDlEV1lP?=
 =?utf-8?B?L1JoaDNRU0hDZ1NWRkJvZFQyaFV2TXNYaG4rS0NtWlcwVHAwZmU4Z0t6OWRp?=
 =?utf-8?B?TnNPM1V4R1FzLzNzaUd6WCtjOFJHWFF6dTNkTVlwS0phQlh4UTY3VnlHaEdW?=
 =?utf-8?B?dlNya1FjZ0UwRHhnYTE3QnV4QVFmZUkyV2xydjZDMDFxb0UxM04rMXBmYnY0?=
 =?utf-8?B?MG9pdDdwSHhURmg0NUdBVmMzSVBNL0w2Yk8rd1VzNVQ3RkFpenpwZTJITmhh?=
 =?utf-8?B?ZUZpeVY0ZDNoaU9ZWmV4ODgzT0dVL2JKZEdNSkZ6bUlEZXpaOW14aGdDcVhz?=
 =?utf-8?B?RE11MlcxYXhiSnl6ZGZnZ0UxcGpocG14TzJFcGFaSjNCTFh2eEJsUmFJYU95?=
 =?utf-8?B?dzdXZUxvR244UnMwWXd2YTZpcGJlZmRTNUZ1L0hZbUlJejl6U2RGZGsxcmhF?=
 =?utf-8?B?YU4zZWZXK3RhNnpwMFQ1UzVFbG5JcmZzOWMrK3dicFlwa3FEVk9XdGU3R0VZ?=
 =?utf-8?B?LzVIS2ZZWWhQNmRGcFRDMVgyMU1jUXJ4MEJGd1YwSHJkbmlVbDlKNUN6MitF?=
 =?utf-8?B?VDVtWjBoNVFlenlIWldkaFRyRUFONUUyc2xiR1NwU1NSMFpwYU8rOElrdEVG?=
 =?utf-8?B?SU1YenNpRVVRWXZDZlFzTk1COUlhRmlDOVltd3VJMm9yS0FwamlTTStqaHRo?=
 =?utf-8?B?TnU5bmdwekRvU3hibmx4OFN0RGVmd2NkK0dYN0FpVkc5UFJFYlB2cXdLZ2pm?=
 =?utf-8?B?OEE3Sm8zWlVXOXhzL1ZWMVdZUFU5cVVIK1l4TXFsKzRaNnlQK0NDdzk2SEla?=
 =?utf-8?B?enlxSXdQaFNRTlQzb2pQVFJhUTZ6ZGo3cnd4WkVFK0tJajU0MGJBci94SFIr?=
 =?utf-8?B?WlJmM3VFVUVNV09GNTF5Q2JUbE5wWDFrNmwyZWNCd1Z1Z1ZpQkYyTitDU3VT?=
 =?utf-8?B?QTVMSGc5MkNKR0RxUXBuaEhzbHAwOFVGZkVHMXpTckdYRlNWc2gxUjVpUDZj?=
 =?utf-8?B?QWsvOEd6Yit1aytVS0FwSmRvRk5IMTErMDIydVBXbld6VE1TajBudmY1TDJS?=
 =?utf-8?B?aTlCRVU5bjVaNW9oQUV4aWR3aGx4cFQxaGhnRkpjV25pZzdURWRTMzh2MXds?=
 =?utf-8?B?cktUcFRseEk2SHZQUThmMjFRYVhlWmtLV2pmMVVKQmxrNWZxZXBDcE9INnpP?=
 =?utf-8?B?NTVqVTIwSHFXeWtESEpLT0liVVNPcURzNjVlRlR2WnRaYlk4Vk83MWdkTHJx?=
 =?utf-8?B?L0wxWVExTUdnUWRQSzVzU2Z1Qm9qYVhRYmpmTnY1VGpBK1Z1M1pXRjQzcVI5?=
 =?utf-8?B?ODdBY1crT242Sk5Ja1ZDeGpEbVpEYzZEb1FvSTJGKzBLRlpWVHVYb1hSazJO?=
 =?utf-8?B?UDNZZkRaa0Q4UTJJcUZHVEFtL3g4S3JZTTJMNW9Jclp4VUYwVzlpc1FGZDZU?=
 =?utf-8?B?T256b2k3NUNrcWNSaU5NMDJLeWE1Q2xiMEtJd281R1NxVTVpazBZbjROU0Vl?=
 =?utf-8?B?Z2ZFbWU5UlNLUnQ1Mkd4YmU3d1RJa0NubzJRaDlGOHl6NFpuNy8vbWxwaXdj?=
 =?utf-8?B?MTVqazJmOHpJK3FlY2N2SHQ0M1czTnhqYk4xUk9LVjVzRXVaQzhHSG9JWU1w?=
 =?utf-8?B?ajBKRG5tWE5GL2V3UlhJNUt5NHhuMm9FMlNTT1g5S1c3SUtnaDdycUYrMEZh?=
 =?utf-8?B?Z0N4N1UxWU9zYmZvVWVpTENMMmgwWnFpeWhXMnNBRXJGL2k2ZC96N002SVRR?=
 =?utf-8?B?NXl2L3FKNG40eHJlVnMxOXVXcHZGQklUWlVzOEF5ZTJqVEk2czh5OWRWaU9z?=
 =?utf-8?B?QXFNWHRGOHNrekdBL3E4bzZIb3l3TmdVVmJDd1B1ZS9Zb2doOC9oYVFYTHdV?=
 =?utf-8?Q?K1HMuvGBSAFuBanUadPdzxs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?blg4b2VkN1FTa29tbGs5U09EbWV5Y0RqNEV2R0ordFZuOVQ2NXRoc1dleGZs?=
 =?utf-8?B?aHNtdDQyYzdpUVptVTlTNWN6aEl6cHhiUkZjNUd4KzRXeHladUUwRXBWMEVh?=
 =?utf-8?B?N25nZHZwTjNWWU8zMVBQc3FIQlpTQmVpcnU2VGZ1WUtGQlRTcWxTTVhDbUxs?=
 =?utf-8?B?VWJZeGhSRUlTdGY5MVA4b09WOTUxU0JkS2cvZHpUZHc0aHI0cUVVOGdlQ0Fw?=
 =?utf-8?B?Y3VvQTJGMHVaNitQWEpXZm9LYmNPazhCWm5UMGwyR3ZoR0tTeStybkhzcU8y?=
 =?utf-8?B?MTBTTlR0TTBMQlhjMkR5VjB6cFJQbXg5VTVpRzJwbmwxZHFvZGZtOTRRUU5x?=
 =?utf-8?B?M0thaWhGb2tHRUIzMmpSNHFRNk10YTQzbGFPNHM3biswWmxQMzljaGVuN2ZO?=
 =?utf-8?B?WUtRMXVGRk5YL0JrQ3JrM2IwVW9RbElRaGp3TWltcjVJQnNCSXdsa081NFFs?=
 =?utf-8?B?cFA0ODdyRkduR29JNGdwNXBJdkRWRGQxVG90MVhIcjRYMnZ1ZzRNQTZVQlpG?=
 =?utf-8?B?bFo5eGQySzBpQ2NoQ0M1SUc4SEJpU0EweXJveVZDTzNtNHUzQmpxVG4rZGNu?=
 =?utf-8?B?eVdBYzFJa2UvY0p4YkRlMUxlc1I4bzdqd2hzbldtRHZ3TmpSOGw2M0M4WXd1?=
 =?utf-8?B?UHl1TWVVUG1LZHdLTEcxTy9QaExacnhwVkJvU0tuQldyKzV5MzcyVHJmNDln?=
 =?utf-8?B?c2tKSTV5eFN5NjkwUVFVSnhROVV1cDYzZkNEU0Q5cUZHT2NRVXhEb0RyWEky?=
 =?utf-8?B?Tno0MlQwT3RNZ3ZqZHcxdFlRcENSY2V2U0RYeUYwdjNDdkZhWEFSdTQ2MTdF?=
 =?utf-8?B?dEwrZ3FZTFJyTXA0LzlnVDNkUzRCRE5YZ1pNQmJuajVWMFlaeGtvd3RqS1Nz?=
 =?utf-8?B?UlFQcGZKbTB1cHNQZXlub3o5OGhGdUZBQlJKSU1GSFBnLzBETEt5L3lYaDU0?=
 =?utf-8?B?S0R6L0lqTEdYQjdKcHh1a3E2RDZvYlIvQWZ0N0dScnRYY1VEaUlNSnVlbWJh?=
 =?utf-8?B?bWRWZE1pRi9xYUFWNlA4S3FFdWkvSTNXdXNOMi9nNmk0OHhEZ01iVDh1bktQ?=
 =?utf-8?B?ZW1OUTgrZzU1elNTb1lPNFFDblUzV2tQN05Gci9KQVdKdzJGcGp6S2FRTjFS?=
 =?utf-8?B?cDJFM1FMNXppSEJ4cHVkNnpCVktlSk1VTmZvRU1rZFZFY09OeTdhVXVUQmZl?=
 =?utf-8?B?UnEzVG5NNFlwbnAyazd4blJIc3RSYWlrV2RzZ0ZWYis0LytDUG5laS82L3Q2?=
 =?utf-8?B?WnpVenhzYWw1QUlGQm8rTjZXdVZTMmovUER4RnZOd3FLWGp0bjZic2p3VTI2?=
 =?utf-8?B?czdhOTZCR0R0akdkV1R1ZHlIUUxWNUtBSVl4WG1BWm5FNTVoVTFRQWZoV0xM?=
 =?utf-8?B?R3JxYUp2aFovS2JqQm1IZ0QzZ2dnQS9pbUhReldKZHhNeTF5eXJNbVhMZS8v?=
 =?utf-8?B?YVhIZlBDMEJJTVl3Q3cyRkVLVXBTWnRnUkR4cWpNcWlLcGNqOHhmSzRJb2Z2?=
 =?utf-8?B?TW5tbUo3SUNYc3d5MGVXRnJSMi9RZUdOSnZsVGd4WVJqNExodWNwMlJLUm8w?=
 =?utf-8?B?d2VCSHJOcDh1LzU4YTJ5SG5HUmtGbWVrLzd5YnM1T1ZUbm1IdWZRUElCL3ZR?=
 =?utf-8?B?dUxHeGZrbUdCZ2RJbE5CcWNoVTkrVUJjRCs5WmNCUE5yeWxaN2g1RFg0cFpu?=
 =?utf-8?B?U0VYZGkxV2lSa2FlNW0vUHg4LzVhb3BWQ1pMTEFQOFVnTWYyak5xWlRid0F2?=
 =?utf-8?B?YmxuTVFEM2R3VEJESy92bCt5ZWlkVzFsOXliNW8zQUw4ZXJSWXJIKzdaaW1r?=
 =?utf-8?B?bHVwWFFmK3dhRmpkTmk0S3lKUjMzY2lnZGdCRCt4SjRXaGpLZkZkUXpDaFNk?=
 =?utf-8?B?VHhWUXltd3pyTDBiZXFDTnk3d01PU1JBZ20ybGtiQVY3MmVabHZKbjgzY1ZE?=
 =?utf-8?B?OTk5WXZUdmQzYSszWE1nR1RPcHZ5QTJ6SmFXOHFpdDdTOUxDMDFMKzdlcEpt?=
 =?utf-8?B?OVhkang3eml1TzRDUlhhTmJ0ZTladkV4ZmhyNlhJV0d6TURNcDNKclgybXFD?=
 =?utf-8?B?ZGpJOUloSlNaR0J3MFRvTFc0NW5HYkpqMmdlRWdxeVVUZTFpL1FtSXdZV0V5?=
 =?utf-8?B?MEdCSTdIUGhKbm1uUUxRTFJTQU1ZVUpOUm5oajkybTVwcTZNYXJFT1Zlc0Jv?=
 =?utf-8?B?MFBlSDZETmoxNEpnVk5wa1BwY2xxdkhzY01NbVR3MzhUb0ZIYkFDUGQ0MUk1?=
 =?utf-8?B?OHFVOWxhakduY3o0MmQ5MXZ5aXhSVDhpdmc5OHA1ejdISTVmSE1vUXBJVi9Q?=
 =?utf-8?B?VStSbHlPd3FHQUQ0YUdoLzdUNmpXUVEySkJFMWloUGM5MHFleXdKTWJMcnYr?=
 =?utf-8?Q?WF4FRYi7F6qXuNDBViFDgWX4Mkgcqp89PEEgaQ29lyQYT?=
x-ms-exchange-antispam-messagedata-1: JUDm0UMbZTbkrsOb4TSf/qPWH7tCV0htmbo=
Content-Type: text/plain; charset="utf-8"
Content-ID: <71F7B0CFD7F9D94C8B7988CE6205D012@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 258e131e-f0f2-4646-592d-08de7437db05
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2026 06:33:57.9712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cvtl7l6INg+odPCZosf0sxRvGwvu+a3GOKwTo7UNyc8nfGHafMhztciXzTi0CLBz/ITDdpLROqHO1ZxHNS7S6xj00Mxih1pAPimQZkcgqJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6830
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1A3E319264A
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAyLTI1IGF0IDA5OjQzICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDIvMTkvMjAyNiA2OjM3IFBNLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+
ID4gQ3VycmVudGx5IHdlIGFyZSBhbGlnbmluZyBTZWxlY3RpdmUgVXBkYXRlIGFyZWEgdG8gY292
ZXIgY3Vyc29yDQo+ID4gZnVsbHkgaWYNCj4gPiBuZWVkZWQgb25seSBvbmNlLiBJdCBtYXkgaGFw
cGVuIHRoYXQgY3Vyc29yIGlzIGluIFNlbGVjdGl2ZSBVcGRhdGUNCj4gPiBhcmVhDQo+ID4gYWZ0
ZXIgcGlwZSBhbGlnbm1lbnQgYW5kIGFmdGVyIHRoYXQgY292ZXJpbmcgY3Vyc29yIHBsYW5lIG9u
bHkNCj4gPiBwYXJ0aWFsbHkuIEZpeCB0aGlzIGJ5IGxvb3BpbmcgYWxpZ25tZW50IGFzIGxvbmcg
YXMgYWxpZ25tZW50IGlzbid0DQo+ID4gbmVlZGVkDQo+ID4gYW55bW9yZS4NCj4gDQo+IElmIEkg
dW5kZXJzdGFuZCBjb3JyZWN0bHksIGludGVsX3BzcjJfc2VsX2ZldGNoX2V0X2FsaWdubWVudCgp
IHRyaWVzDQo+IHRvIA0KPiBleHBhbmQgdGhlIGN1cnJlbnQgc3UgYXJlYSBzbyB0aGF0IGl0IGlu
Y2x1ZGVzIHRoZSBjdXJzb3IgaWYgaXQgd2FzIA0KPiBwYXJ0aWFsbHkgY292ZXJlZC4NCj4gDQo+
IFRoZW4gdGhlIGludGVsX3BzcjJfc2VsX2ZldGNoX3BpcGVfYWxpZ25tZW50KCkgdHJpZXMgdG8g
ZXhwYW5kIHRoZSBzdQ0KPiBhcmVhIHRvIGFsaWduIHdpdGggdGhlIHNsaWNlIGhlaWdodC95IGdy
YW51bGFyaXR5Lg0KPiANCj4gSGVuY2UgaXQgaXMgcG9zc2libGUgdGhhdCBhZnRlciBhbGlnbmlu
ZyB0aGUgYXJlYSB3aXRoIHRoZSBzbGljZSANCj4gaGVpZ2h0L3kgZ3JhbnVsYXJpdHksIHRoZSBj
dXJzb3Igd2hpY2ggbWlnaHQgaGF2ZSBiZWVuIG91dHNpZGUgdGhlIHN1DQo+IGFyZWEsIGhhcyBu
b3cgYmVjb21lIHBhcnRpYWxseSBpbnNpZGUgdGhlIHN1IGFyZWEuDQo+IA0KPiBTbyB0aGUgaXRl
cmF0aW9uIG1ha2VzIHNlbnNlLiBIb3dldmVyIHRoZXJlIGFyZSBjb3VwbGUgb2YgdGhpbmdzOg0K
PiANCj4gLSBpZiB0aGUgY3Vyc29yIHdhcyBhbHJlYWR5IGluc2lkZSB0aGUgc3UgYXJlYSwgdGhl
biBldmVuIGFmdGVyIHBpcGUgDQo+IGFsaWdubWVudCB3aGljaCBleHBhbmRzIHRoZSBzdSBhcmVh
ICh5MSBkZWNyZWFzZXMgZ29lcyB2ZXJ0aWNhbGx5IHVwDQo+IGFuZCANCj4geTIgaW5jcmVhc2Vz
IGdvZXMgdmVydGljYWxseSBkb3duKSB0aGUgY3Vyc29yIHdpbGwgc3RpbGwgYmUgaW5zaWRlDQo+
IHRoZSANCj4gc3UgYXJlYS4NCj4gDQo+IMKgwqBJbiB0aGF0IGNhc2Ugd2UgZG9udCBuZWVkIHRv
IGRvIGFub3RoZXIgaXRlcmF0aW9uIHdlIGNhbiBleGl0IHRoZQ0KPiBsb29wLg0KPiANCj4gLSBj
dXJzb3JfaW5fc3VfYXJlYSBpcyBzZXQgYW5kIG5ldmVyIHVzZWQuDQo+IA0KPiANCj4gUGVyaGFw
cyB3ZSBjYW4gY2hhbmdlIHRoZSBsb29wIGEgYml0IGxpa2U6DQo+IA0KPiBib29sIHN1X2FyZWFf
Y2hhbmdlZDsNCj4gLi4uLi4NCj4gZG8gew0KPiDCoMKgIMKgIGJvb2wgY3Vyc29yX2luX3N1X2Fy
ZWEgPSBmYWxzZTsNCj4gDQo+IMKgwqAgwqAgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfZXRfYWxpZ25t
ZW50KHN0YXRlLCBjcnRjLCANCj4gJmN1cnNvcl9pbl9zdV9hcmVhKTvCoCDCoCDCoC8vIEN1cnNv
ciBpcyBub3cgZWl0aGVyIGZ1bGx5IGluc2lkZSBzdSBhcmVhDQo+IE9SIA0KPiBmdWxseSBvdXRz
aWRlLg0KPiDCoMKgIMKgIHN1X2FyZWFfY2hhbmdlZCA9DQo+IGludGVsX3BzcjJfc2VsX2ZldGNo
X3BpcGVfYWxpZ25tZW50KGNydGNfc3RhdGUpO8KgIA0KPiDCoMKgIC8vIEFsaWdubWVudCBpbmNy
ZWFzZWQgdGhlIHN1IGFyZWEuDQo+IA0KPiAvKg0KPiDCoMKgKiBJZiB0aGUgY3Vyc29yIHdhcyBv
dXRzaWRlIHRoZSBTVSBhcmVhIGJlZm9yZSBhbGlnbm1lbnQsIHRoZSANCj4gYWxpZ25tZW50IHN0
ZXANCj4gwqDCoCogKHdoaWNoIG9ubHkgZXhwYW5kcyBTVSkgbWF5IHB1bGwgdGhlIGN1cnNvciBw
YXJ0aWFsbHkgaW5zaWRlLCBzbw0KPiB3ZSBtdXN0DQo+IMKgwqAqIHJ1biBFVCBhbGlnbm1lbnQg
YWdhaW4gdG8gZnVsbHkgY292ZXIgaXQuDQo+IMKgwqAqDQo+IMKgwqAqIEJ1dCBpZiB0aGUgY3Vy
c29yIHdhcyBhbHJlYWR5IGZ1bGx5IGluc2lkZSBiZWZvcmUgYWxpZ25tZW50LCANCj4gZXhwYW5k
aW5nIHRoZQ0KPiDCoMKgKiBTVSBhcmVhIHdvbid0IGNoYW5nZSB0aGF0LCBzbyBubyBmdXJ0aGVy
IHdvcmsgaXMgbmVlZGVkLg0KPiDCoMKgKi8NCj4gwqDCoCDCoCBpZiAoY3Vyc29yX2luX3N1X2Fy
ZWEpDQo+IMKgwqAgwqAgwqAgwqAgYnJlYWs7DQo+IH0gd2hpbGUgKHN1X2FyZWFfY2hhbmdlZCk7
DQo+IA0KPiANCj4gDQo+ID4gDQo+ID4gRml4ZXM6IDFiZmY5M2I4YmMyNyAoImRybS9pOTE1L3Bz
cjogRXh0ZW5kIFNVIGFyZWEgdG8gY292ZXIgY3Vyc29yDQo+ID4gZnVsbHkgaWYgbmVlZGVkIikN
Cj4gPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjYuOSsNCj4gPiBTaWduZWQtb2Zm
LWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0N
Cj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMzIgKysr
KysrKysrKysrKysrKy0tLQ0KPiA+IC0tLS0tDQo+ID4gwqAgMSBmaWxlIGNoYW5nZWQsIDIxIGlu
c2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggNWJlYTJlZGE3NDRiLi4zMzE2
NDVhMmM5ZjYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiBAQCAtMjY4OCwxMSArMjY4OCwxMiBAQCBzdGF0aWMgdm9pZCBjbGlwX2FyZWFf
dXBkYXRlKHN0cnVjdA0KPiA+IGRybV9yZWN0ICpvdmVybGFwX2RhbWFnZV9hcmVhLA0KPiA+IMKg
wqAJCW92ZXJsYXBfZGFtYWdlX2FyZWEtPnkyID0gZGFtYWdlX2FyZWEtPnkyOw0KPiA+IMKgIH0N
Cj4gPiDCoCANCj4gPiAtc3RhdGljIHZvaWQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfcGlwZV9hbGln
bm1lbnQoc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiArc3Rh
dGljIGJvb2wgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfcGlwZV9hbGlnbm1lbnQoc3RydWN0DQo+ID4g
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiDCoCB7DQo+ID4gwqDCoAlzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9DQo+ID4gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRl
KTsNCj4gPiDCoMKgCWNvbnN0IHN0cnVjdCBkcm1fZHNjX2NvbmZpZyAqdmRzY19jZmcgPSAmY3J0
Y19zdGF0ZS0NCj4gPiA+ZHNjLmNvbmZpZzsNCj4gPiDCoMKgCXUxNiB5X2FsaWdubWVudDsNCj4g
PiArCWJvb2wgYWxpZ25lZCA9IGZhbHNlOw0KPiANCj4gDQo+IEhlcmUgYWxzbyBpdCB3b3VsZCBt
YWtlIHNlbnNlIGlmIHdlIG1ha2UgdGhpcyBzdV9hcmVhX2NoYW5nZWQuDQo+IChvZmNvdXJzZSAN
Cj4gYWZ0ZXIgYWxpZ25tZW50KQ0KPiANCj4gSG9wZSBJIGFtIG1ha2luZyBzb21lIHNlbnNlIGFu
ZCBub3QgdG90YWxseSBvZmYuDQoNClllcywgeW91IGFyZSBtYWtpbmcgZ29vZCBzdWdnZXN0aW9u
cyBoZXJlLiBJIHdpbGwgcmV3b3JrIHRoZSBsb29wIGFuZA0KY2hhbmdlIHRoaXMgYXMgd2VsbC4g
VGhhbmsgeW91Lg0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBSZWdhcmRzLA0KPiAN
Cj4gQW5raXQNCj4gDQo+IA0KPiA+IMKgIA0KPiA+IMKgwqAJLyogQURMUCBhbGlnbnMgdGhlIFNV
IHJlZ2lvbiB0byB2ZHNjIHNsaWNlIGhlaWdodCBpbiBjYXNlDQo+ID4gZHNjIGlzIGVuYWJsZWQg
Ki8NCj4gPiDCoMKgCWlmIChjcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlICYmDQo+
ID4gQEAgLTI3MDEsMTAgKzI3MDIsMTggQEAgc3RhdGljIHZvaWQNCj4gPiBpbnRlbF9wc3IyX3Nl
bF9mZXRjaF9waXBlX2FsaWdubWVudChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRj
X3N0DQo+ID4gwqDCoAllbHNlDQo+ID4gwqDCoAkJeV9hbGlnbm1lbnQgPSBjcnRjX3N0YXRlLT5z
dV95X2dyYW51bGFyaXR5Ow0KPiA+IMKgIA0KPiA+IC0JY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVh
LnkxIC09IGNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS55MQ0KPiA+ICUgeV9hbGlnbm1lbnQ7DQo+
ID4gLQlpZiAoY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkyICUgeV9hbGlnbm1lbnQpDQo+ID4g
KwlpZiAoY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkxICUgeV9hbGlnbm1lbnQpIHsNCj4gPiAr
CQljcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEueTEgLT0gY3J0Y19zdGF0ZS0NCj4gPiA+cHNyMl9z
dV9hcmVhLnkxICUgeV9hbGlnbm1lbnQ7DQo+ID4gKwkJYWxpZ25lZCA9IHRydWU7DQo+ID4gKwl9
DQo+ID4gKw0KPiA+ICsJaWYgKGNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS55MiAlIHlfYWxpZ25t
ZW50KSB7DQo+ID4gwqDCoAkJY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkyID0gKChjcnRjX3N0
YXRlLQ0KPiA+ID5wc3IyX3N1X2FyZWEueTIgLw0KPiA+IMKgwqAJCQkJCQl5X2FsaWdubWVudCkg
KyAxKQ0KPiA+ICogeV9hbGlnbm1lbnQ7DQo+ID4gKwkJYWxpZ25lZCA9IHRydWU7DQo+ID4gKwl9
DQo+ID4gKw0KPiA+ICsJcmV0dXJuIGFsaWduZWQ7DQo+ID4gwqAgfQ0KPiA+IMKgIA0KPiA+IMKg
IC8qDQo+ID4gQEAgLTI5NDUsMTUgKzI5NTQsMTYgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNo
X3VwZGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgwqAJ
aWYgKHJldCkNCj4gPiDCoMKgCQlyZXR1cm4gcmV0Ow0KPiA+IMKgIA0KPiA+IC0JLyoNCj4gPiAt
CSAqIEFkanVzdCBzdSBhcmVhIHRvIGNvdmVyIGN1cnNvciBmdWxseSBhcyBuZWNlc3NhcnkNCj4g
PiAoZWFybHkNCj4gPiAtCSAqIHRyYW5zcG9ydCkuIFRoaXMgbmVlZHMgdG8gYmUgZG9uZSBhZnRl
cg0KPiA+IC0JICogZHJtX2F0b21pY19hZGRfYWZmZWN0ZWRfcGxhbmVzIHRvIGVuc3VyZSB2aXNp
YmxlIGN1cnNvcg0KPiA+IGlzIGFkZGVkIGludG8NCj4gPiAtCSAqIGFmZmVjdGVkIHBsYW5lcyBl
dmVuIHdoZW4gY3Vyc29yIGlzIG5vdCB1cGRhdGVkIGJ5DQo+ID4gaXRzZWxmLg0KPiA+IC0JICov
DQo+ID4gLQlpbnRlbF9wc3IyX3NlbF9mZXRjaF9ldF9hbGlnbm1lbnQoc3RhdGUsIGNydGMsDQo+
ID4gJmN1cnNvcl9pbl9zdV9hcmVhKTsNCj4gPiArCWRvIHsNCj4gPiArCQkvKg0KPiA+ICsJCSAq
IEFkanVzdCBzdSBhcmVhIHRvIGNvdmVyIGN1cnNvciBmdWxseSBhcw0KPiA+IG5lY2Vzc2FyeSAo
ZWFybHkNCj4gPiArCQkgKiB0cmFuc3BvcnQpLiBUaGlzIG5lZWRzIHRvIGJlIGRvbmUgYWZ0ZXIN
Cj4gPiArCQkgKiBkcm1fYXRvbWljX2FkZF9hZmZlY3RlZF9wbGFuZXMgdG8gZW5zdXJlDQo+ID4g
dmlzaWJsZSBjdXJzb3IgaXMgYWRkZWQgaW50bw0KPiA+ICsJCSAqIGFmZmVjdGVkIHBsYW5lcyBl
dmVuIHdoZW4gY3Vyc29yIGlzIG5vdCB1cGRhdGVkDQo+ID4gYnkgaXRzZWxmLg0KPiA+ICsJCSAq
Lw0KPiA+ICsJCWludGVsX3BzcjJfc2VsX2ZldGNoX2V0X2FsaWdubWVudChzdGF0ZSwgY3J0YywN
Cj4gPiAmY3Vyc29yX2luX3N1X2FyZWEpOw0KPiA+IMKgIA0KPiA+IC0JaW50ZWxfcHNyMl9zZWxf
ZmV0Y2hfcGlwZV9hbGlnbm1lbnQoY3J0Y19zdGF0ZSk7DQo+ID4gKwl9IHdoaWxlIChpbnRlbF9w
c3IyX3NlbF9mZXRjaF9waXBlX2FsaWdubWVudChjcnRjX3N0YXRlKSk7DQo+ID4gwqAgDQo+ID4g
wqDCoAkvKg0KPiA+IMKgwqAJICogTm93IHRoYXQgd2UgaGF2ZSB0aGUgcGlwZSBkYW1hZ2VkIGFy
ZWEgY2hlY2sgaWYgaXQNCj4gPiBpbnRlcnNlY3Qgd2l0aA0KDQo=
