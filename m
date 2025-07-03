Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5730AF6A07
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 08:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3751D10E133;
	Thu,  3 Jul 2025 06:06:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Aa17p5PO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC6E10E133;
 Thu,  3 Jul 2025 06:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751522793; x=1783058793;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cxQnkSUaPJmeY0hVWcIJih+93xUmSdUM+nyCMh6sbbY=;
 b=Aa17p5POxtpaf0e8UB2/ON0NujQ3An80umnPn+ylG39rd826KuDPRUwE
 3tzO8FMPjbY1hk5HF89jPt8MsrXNZCeUUMWTaFX/iRX3Bq/o5rTN/f4Xn
 fMi2d5XjteTFw8OZwVlEEuXHDch51txGld0RVSLdER6PKVx4Gp7K+WvJ0
 JXwXHseIYqsZaiNOt1F00KRh/Z/U9uFIRBik6A2Ank/Q/ANJQ1YFohrxo
 08AFCz6R8SWLqNzR3yLo+1F8W5EllnPh3tLgetxuuiIytaFBYZzTxoBsR
 ZFFCPUEoIEYIKLIc5DPGZw966mUZ126/fbEbgogpgzRIh0uXNqYpKg2DN g==;
X-CSE-ConnectionGUID: 2tbd/h/bRbOPPpJ4BDNWAw==
X-CSE-MsgGUID: 4jTBMu/DT8W8EE7QQQgfyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="57643769"
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="57643769"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 23:06:32 -0700
X-CSE-ConnectionGUID: tH3Bk6C3SlWZ8YaVjPD30g==
X-CSE-MsgGUID: nbceXcCSSUa5KUJT5eDbCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,283,1744095600"; d="scan'208";a="158835200"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 23:06:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 23:06:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 2 Jul 2025 23:06:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.65)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 2 Jul 2025 23:06:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hx2YDtE+D1CcS/wUblDUmMNPaZQRkDevmctP+hmAQFaz2o7iwvDxp/OpS0tUXuDWMz8/y1dt/cjk64G65j9ovkLR5dmdjReDn0vDmop5V02ouT2pJR01AIJxqg1J4A+JHXUH0tdwLtksZKYb3HRZ20ztgwrvmvy3FjVvZgeQaZWzCECqZR9Jx/4WkxLI2P7DG2Nzq32I5i6gTqPl84UNSPoQXAgFhnJum84s3Wg3+szQKw+h4eb8AR6Pnd3zv5VjWQHYylXGZt6lsoNjyMGzPSy0EhLmAHCamQm3tDmziCva2s+coX2yer6DOnsEy8riTACGC36IZ+66lxmNR+JP8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jD1nwl2CrhY/FSCC4k3WLzuC33PJwFLgOd/KHeU5NoA=;
 b=pEeMY1nMNZ9iNpY+QJH7pLK6SHSbfeLhnnKZ5sDtedemzRzMfI3+h+DtQCpGtLKOEzCu2l0FrIZNtzEd7HjTu5hCFIQ4mzc8/u10NWGnKKqao99T9oEpOwgKZSSimtpCtD4nWAtobGVCHTtO2AIXZ33H5nvnYeKy6Tm4qh+U0IHSJ4QdLiNwVosR6DDM+Q6yi0JCA7fwaPbK6RgGd3rtziFhgKyn/nTbkqkWkmVYbyAu9dRbAVrLj9U0gX6tvJd4ZWCyfp443VUAOkSJCfousPe55dWIFzO4I/XmPqtkwmsnsNh8vU709YrThhQGsUpjv8RXx4EUCeDyfGVJmWE+2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM3PPF5217261E0.namprd11.prod.outlook.com (2603:10b6:f:fc00::f21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.26; Thu, 3 Jul
 2025 06:06:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8880.030; Thu, 3 Jul 2025
 06:06:00 +0000
Message-ID: <a1e8b331-eddd-4386-8647-f6364f7744b3@intel.com>
Date: Thu, 3 Jul 2025 11:35:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/gmbus: Add Wa_16025573575 for PTL for
 bit-bashing
To: Gustavo Sousa <gustavo.sousa@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-3-ankit.k.nautiyal@intel.com>
 <175146190758.3748.7583185864302070157@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <175146190758.3748.7583185864302070157@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0079.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM3PPF5217261E0:EE_
X-MS-Office365-Filtering-Correlation-Id: 5764be9c-cb22-4824-0a36-08ddb9f7aec7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bkk2cXY3bFZsR0hpVUd0bTZhT214YTRGZnRabUQvNFZVelBVeG4zWXlzQ3Ni?=
 =?utf-8?B?R2h0RXBQYWttVnJDYzlHSjRhT1crZURrc3kzNFNQeDNBNXRoTTZ5cEFQQ0M4?=
 =?utf-8?B?Z2QzelFsQ0ZNdHZ2SWdhS2RrcWY2K09OOEs5cDdNRytTeWZ1ZFZEaVBtQTQ2?=
 =?utf-8?B?SmMrSmg1Q0trQ3VMekRLUmpyV053SldDaU4xeXpFSkUxbHBKT1FZZXFNOXd3?=
 =?utf-8?B?ZXgwMEd3Z2V6TStHL0VCTnBIdi9KaVdobm5FRm16bmMzMkY0aDVLcjRML2JK?=
 =?utf-8?B?VC9OWWplRmUxcXNkd085OE9YOTc3V0V0L3U3WFl1ME9URzIrUGxCMk4wU28r?=
 =?utf-8?B?YkhVZVpiSTNXVCtwUndlc0tQclRjVXM2WktQdWhxVHl0WjJWaHlsMndyWC9G?=
 =?utf-8?B?Wi9jOFNHeEFoZEhOUXFLVzNITDdydnBjR01LWWZPWW5FNUo2UW1qRmVac0N5?=
 =?utf-8?B?UzBqTmp3QU1hSkJBcnJMOHZXdEhkRkF5UGM5UXQ4cmJkOUxUdUZVRDVxdUNx?=
 =?utf-8?B?OTR6VlZvWGtoUi94S285NDN1QzFLVkd3NzBRTUxoL1FIQjgrZXlpZ1J3clRM?=
 =?utf-8?B?eXVwQlhuNGx0U0pZOE9UVzNVMXFIQTR3ZXBHWmtQbTVwQTBqRVZ6MDk3elBM?=
 =?utf-8?B?MW81ZVV2TFN1ZWFnMk5WcXZMbURVZGx0RXQxYmQwd3VNRmRZSThXUTZKYzdU?=
 =?utf-8?B?RDhSdlhuMCtkdWRGTll3NnF6VWkyYk0wUWVRa0dnZGtUZU1CSnVVUU9kRDVV?=
 =?utf-8?B?TlZMRGtBYUNER3Y5THlaQklPakFWbXNYSTBsTnJGdW1pLzBRTTB4U2FPbm5a?=
 =?utf-8?B?UFRjTC9XdEFzVlQ2WHg2WHJkUUJDU2hNNTZYcUZRQzZiSmx2QTBkT2QrNCs3?=
 =?utf-8?B?L0xXdFhMK3UvMTlXekxKUWJnTkdQdTE0MHY2aEcyUVBSSVlpNzJGMWRpTTcy?=
 =?utf-8?B?Sko3REgyYkVWMngvdld1VHozQWpHNEZEZi9hMWsydGp3alpXUzl6UWNQWjNh?=
 =?utf-8?B?bjYwcis2MG9oVE9UQUEwK0ZzNnR3cGw3RHRSQURnTTREN0V6T05WVE9iVFRY?=
 =?utf-8?B?NmZqOWxEaS8xaUdGZTcyeXJaRzVuUUNBdVpRMTU4Rno3MWZmV2lJdVVzeEox?=
 =?utf-8?B?QlgydWo4aEVtbzJTZjJ3WTRhT1ovTmJ5T2VDTG1aSkZVUlhGN08xdnhSR3Uz?=
 =?utf-8?B?dUFYZXA3YjdKZ3RsMTZkN0lPdkpSOWw3SDRKYmNOYW1QZGJOWmxydjJVUG5C?=
 =?utf-8?B?bnpaSnpsQ29EUm5XYVF5Q1V2Vmx1MnhOOUxXcXBMWlhYcnJwYjB6UEZtcEhh?=
 =?utf-8?B?RHhFZ1FXU3J0RTBzYVU3ZXhWbmZFR1VqcXJ1ZURJOXJ2ejlEZGJDQ3h5ZFhK?=
 =?utf-8?B?U0x6Z2pHR3h6aUgvdGNvQ0VvN3I4RWltU25uMk9BQUZaYWlGdkRsVjJmZ1hy?=
 =?utf-8?B?cW5iUEdHNk1ua2laVXMwamZrNnpHVWdZSVNJV0ZKOVlRRWhrdDIwL1dvZEVh?=
 =?utf-8?B?d0dOWE1JWm9EZnkzQ3hRNEx2cGpGT1ZrQ1dHYU42eWZGR2toOFVSdjRraWw1?=
 =?utf-8?B?TldzZzhHNVJDYnYzT0Z0K0hXdnBNei9WRjJieUJ0THUwSVBOU0tOTXcwWU5G?=
 =?utf-8?B?YUVLYU1rM0MwWERvbVZwd2dHNXQ0a0R2eElaNndSa2ViS0dYN1VyYzBqVnVJ?=
 =?utf-8?B?VzEwOHFsRitmSVBvcVdUQlNrSzl2VHByKzE0Z3U3dTBHSHlwUE1WaDV1Rit0?=
 =?utf-8?B?dGRPRjRoUEN1ZlhEOXBlc3VBMk9ac29BSWk4bnBNS1M2NDNWU1ZxOGxGdTNQ?=
 =?utf-8?B?dWlPbFEwKzZhV3I2Y1V0cVdMNWE1QzJ5Qk9qRGJIYkZmWWFrV0lRZVVZZUZM?=
 =?utf-8?B?Z25sQURHZUJDM0pNR1dCV0VjcFh0Ti9pTFJpTFRZQjJFdVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0dKMzdMKytGa084U3Y0WEdyUDRjYU1kQUE3NWNoTDNZU0VkL2tHTjZ2UDNZ?=
 =?utf-8?B?dVNjTGZGYkdHOFJkQlk4N3BqS1orVXN5bDJTL0tvS1ZYQVRFMDJLN1pHZmdE?=
 =?utf-8?B?QWtQZ2w2Tit4aGtSUm5uck0xVy9pa29FM3RRdFl3YmF1OEEyY2hXcWE2RWZq?=
 =?utf-8?B?UnVqTmUxZTQ1eitUK2pmUmc3Zy9KVGtLOTBXM0J6dVlnSGY0THl4ZiszZGJz?=
 =?utf-8?B?UENOZWNBb1lnUEk0N2JtbzlpdDlaMENnLzBUVTk3d2hhMEdEU0xRNVMyRWw3?=
 =?utf-8?B?T3pLR1NkUDBEY2d1V0ZUenVoQjB0VG1pOXhUcHgvYy9reTdZVCtNWEwzcXp0?=
 =?utf-8?B?S1ZUSnNqelA1aWV6QUlkRHhiQndPY2t0Zm5EWWF5TWorSjlITWxZWFRqVDl4?=
 =?utf-8?B?VEFTY1Jlb2gvZGcvOGxwcHl0a0ZBWis3VGxGeTFBblFKaEttTUFiSUQwUEE2?=
 =?utf-8?B?ZHZQUitCbVBueXVQbkUwQU1XQmNPMTNZd3ZtQmpyQ290b2VJSDJTcjVpZng0?=
 =?utf-8?B?aS9YaWcyUGNMN2pDSlo5ZzJyTjVNQWVpNVUwVmw3azg0NS83Mnh0N29PY1RB?=
 =?utf-8?B?RXFXYkx5cWRyUk5yWG9EN3ZXSHJqOWR0VUh0YW03N3BPdGtLR2JBYmY1cjN5?=
 =?utf-8?B?dkdGVTEvY2lGTEZuNFJtWXhXOFVoSUpSTStxdHJheDAxZUhwRCtmSUNxTW5m?=
 =?utf-8?B?NFJQY1BMYmVuY29rL0RkR3QwRzd3T0M3VGpIbG9mdEJ0YU9hZVNmeDRNZjNS?=
 =?utf-8?B?Mk9CVGVQR2c2TlNMM2ZIQzhBQVBFbzV5ZVpJVGRUalYwSVA1TXFDbFdOYWpv?=
 =?utf-8?B?bmFtQy8rWmxxRHJBTHczQ1Z5bzIwaDhwdUd0ZkFhNlJZeW9iTEoveTFmS0w0?=
 =?utf-8?B?a1ZmU3BpRTh0L01EZDJPclpldmlSd0J4ZlpreWxZWlgycjBWRnFWQXF1WlJS?=
 =?utf-8?B?bkR6aXpPZFY3NFdKLzNSSHNGTTVTdHFpa0NFWlI4S0wxbUF1RHRFSE1pNUY3?=
 =?utf-8?B?NDZ6WEhnbjFPbWF2OVlIRTdGbVcxbTJNNktuOE1GSFd5VDFhTWtBcC9kL0Ns?=
 =?utf-8?B?Ukxxb1hWRWg5Uzg0REVFQkpYV29uUERQRTdoSGtBRUd6NE9yejk3dDFPYlZG?=
 =?utf-8?B?cnBiQXFMZlRrT1o0VFEwd0xTVEpmYVIySjMwWXYvbktlVkI3RDhpYXJxcG1m?=
 =?utf-8?B?M3ltem13UjhtSmZQSmtpMzdRb2xHQ0JJeWRvbGh3RWdpVkRjdWNreFlZSzRm?=
 =?utf-8?B?RGVKdm8rUkFxcW5TUmo2WXNOZnNxcGt2dm9xbTJHN201MGVNclByM1ZWTTZG?=
 =?utf-8?B?QmlKUHFxZmxKVDloa2JDb0JoemNVWGI2TUV4Rzhoa2lqd1JEdHVVcWpEOXR1?=
 =?utf-8?B?ZTlPZVAweUJzQ3Z1VVNYSmpPd201MzJsaUIvSEl6Tk1sVTR1MDdEd1k3azhZ?=
 =?utf-8?B?V1J0Y1VabDR0QXFmQlJQanJXaDFaRHAxYVZodjhuaE13V0RVMm5lZnZYZ09z?=
 =?utf-8?B?R3JRUHl3SnBETzRtaFNDM2VOK28zb2R3MHc0VStXNllrQ3B3MVdqczl2eTRR?=
 =?utf-8?B?ejUycjNibDErOEFMdkFFM21mK2ZlNFR3V090bkdBQVlmSGZETEx4YXM4bHNS?=
 =?utf-8?B?cEhKdi9IdlV3ZFF4OVFwdjhqQnhKdG0rYVlySTV2OFJyN0YySzM5R1F6alpZ?=
 =?utf-8?B?ZmF1c1dldUVlWkxzY1lPR055dlQ2S1cvc1IxQ2FtVDFweVM0NDkvV1NoNlY3?=
 =?utf-8?B?OENhRm1tK0hNUkxhWmgrZnN5d0JzZEZFaXhnYjg0Wkw3b3dwdWJsTTcvbksx?=
 =?utf-8?B?Y01YTzJuaXV0SlloOHJtbGdJMXFzdlNaQ0hIYlVQKzY0OWFQZG9xRzIyWE12?=
 =?utf-8?B?YTM1QTlzK2k4WnVMYWU5c3dyWkRHTnFPb3VnL3VYbDQ0ZDl5THVCQW84UXg1?=
 =?utf-8?B?ci9DZElTVWlqRTVhS0w1UktDRGlPdXlvd3lGZFBoYUd4eW1Xck9MNFpkUHpO?=
 =?utf-8?B?SFJMWXRDc2JPcVZEdHg4NWRBVWErUEpab0NFU25TNHZZQlBBV0o3ODkzTW5X?=
 =?utf-8?B?Si9BclVkUEhteXgzekoyc1FYWGxmbWY3THJmN1A0M0J6dnhlYythcHVmdWpF?=
 =?utf-8?B?NW5LNnBKOUpOTVFIRGplT1dyZVRNeWFqTDE0OE5za0dYVThKMGJlVWN5d0ZG?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5764be9c-cb22-4824-0a36-08ddb9f7aec7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 06:06:00.0626 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oVfhqdVjJfKqDVXumvGGzTtUD/J1IRo9IXKRNMbfo4ZhiKbNLDSD6XoUX5ZNFkztYVZ/js79DZcAchELni7joyREkBTw0LGT4c+WWL2Z2jM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF5217261E0
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


On 7/2/2025 6:41 PM, Gustavo Sousa wrote:
> Quoting Ankit Nautiyal (2025-07-02 05:46:19-03:00)
>> As per Wa_16025573575 for PTL, set the GPIO masks bit before starting
>> bit-bashing and maintain value through the bit-bashing sequence.
>> After bit-bashing sequence is done, clear the GPIO masks bits.
>>
>> v2:
>> -Use new helper for display workarounds. (Jani)
>> -Use a separate if-block for the workaround. (Gustavo)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>> .../gpu/drm/i915/display/intel_display_wa.c   |  7 ++++
>> .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
>> drivers/gpu/drm/i915/display/intel_gmbus.c    | 34 +++++++++++++++++--
>> 3 files changed, 40 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> index f5e8d58d9a68..12d1df5981f7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>> @@ -42,11 +42,18 @@ void intel_display_wa_apply(struct intel_display *display)
>>                  gen11_display_wa_apply(display);
>> }
>>
>> +static bool intel_display_needs_wa_16025573575(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) == 30;
> We should also check for 30.02.

I was thinking to add a separate patch for this, but yeah can include in 
this patch as well.


>
>> +}
>> +
>> bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
>> {
>>          switch (wa) {
>>          case INTEL_DISPLAY_WA_16023588340:
>>                  return intel_display_needs_wa_16023588340(display);
>> +        case INTEL_DISPLAY_WA_16025573575:
>> +                return intel_display_needs_wa_16025573575(display);
> While it makes sense to have function
> intel_display_needs_wa_16023588340() (at least for now), I wonder if the
> same could be said about intel_display_needs_wa_16025573575()...
>
> Maybe it would be simpler to just inline the conditions with a single
> line here instead of adding 5 extra lines to the file.


IMHO, it's better to keep __intel_display_wa() simple and uniform. In 
the future,

some workarounds might involve complex conditions (such as checks for 
steppings,
applicability to multiple platforms or variants)
which could make the switch-case harder to read if inlined.

Having dedicated functions like intel_display_needs_wa_xxxx() helps 
encapsulate that logic cleanly.

Mixing inlined conditions with function calls would reduce consistency 
and readability.


Thanks & Regards,

Ankit


>
> --
> Gustavo Sousa
>
>>          default:
>>                  drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
>>                  break;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> index 146ee70d66f7..d3d241992e55 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>> @@ -23,6 +23,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
>>
>> enum intel_display_wa {
>>          INTEL_DISPLAY_WA_16023588340,
>> +        INTEL_DISPLAY_WA_16025573575,
>> };
>>
>> bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa);
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> index 0d73f32fe7f1..95cab11c9cde 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> @@ -39,6 +39,7 @@
>> #include "intel_de.h"
>> #include "intel_display_regs.h"
>> #include "intel_display_types.h"
>> +#include "intel_display_wa.h"
>> #include "intel_gmbus.h"
>> #include "intel_gmbus_regs.h"
>>
>> @@ -241,11 +242,18 @@ static u32 get_reserved(struct intel_gmbus *bus)
>> {
>>          struct intel_display *display = bus->display;
>>          u32 reserved = 0;
>> +        u32 preserve_bits = 0;
>>
>>          /* On most chips, these bits must be preserved in software. */
>>          if (!display->platform.i830 && !display->platform.i845g)
>> -                reserved = intel_de_read_notrace(display, bus->gpio_reg) &
>> -                        (GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE);
>> +                preserve_bits |= GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE;
>> +
>> +        /* PTL: Wa_16025573575: the masks bits need to be preserved through out */
>> +        if (intel_display_wa(display, 16025573575))
>> +                preserve_bits |= GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>> +                                 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>> +
>> +        reserved = intel_de_read_notrace(display, bus->gpio_reg) & preserve_bits;
>>
>>          return reserved;
>> }
>> @@ -308,6 +316,22 @@ static void set_data(void *data, int state_high)
>>          intel_de_posting_read(display, bus->gpio_reg);
>> }
>>
>> +static void
>> +ptl_handle_mask_bits(struct intel_gmbus *bus, bool set)
>> +{
>> +        struct intel_display *display = bus->display;
>> +        u32 reg_val = intel_de_read_notrace(display, bus->gpio_reg);
>> +        u32 mask_bits = GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
>> +                        GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
>> +        if (set)
>> +                reg_val |= mask_bits;
>> +        else
>> +                reg_val &= ~mask_bits;
>> +
>> +        intel_de_write_notrace(display, bus->gpio_reg, reg_val);
>> +        intel_de_posting_read(display, bus->gpio_reg);
>> +}
>> +
>> static int
>> intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>> {
>> @@ -319,6 +343,9 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>>          if (display->platform.pineview)
>>                  pnv_gmbus_clock_gating(display, false);
>>
>> +        if (intel_display_wa(display, 16025573575))
>> +                ptl_handle_mask_bits(bus, true);
>> +
>>          set_data(bus, 1);
>>          set_clock(bus, 1);
>>          udelay(I2C_RISEFALL_TIME);
>> @@ -336,6 +363,9 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
>>
>>          if (display->platform.pineview)
>>                  pnv_gmbus_clock_gating(display, true);
>> +
>> +        if (intel_display_wa(display, 16025573575))
>> +                ptl_handle_mask_bits(bus, false);
>> }
>>
>> static void
>> -- 
>> 2.45.2
>>
