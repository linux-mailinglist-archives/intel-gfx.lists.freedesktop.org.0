Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B95CDBB32
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Dec 2025 09:46:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A78610E353;
	Wed, 24 Dec 2025 08:46:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VEgqaFYr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D561510E22F;
 Wed, 24 Dec 2025 08:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766566010; x=1798102010;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wxkZGRJ4Mlgnisi6Nxg1+tBzc3klzca4X14/vEhQYtU=;
 b=VEgqaFYrs4+8E0PuTUJ+R49n6uRj6dx+SKvfhYlMQh1hiuptjV++CCvj
 7fMNPbPeImAMnOirgEplLHWsLhMHFyfwh/Eh7lgQoztNS1OlrfAWZbQ2H
 eyXWg05mAwbxtWlHr3eujcDVyhMiaDHK6LJiz/hPSNceGA9AorjyG9032
 UQ8cE7ljJrgWiEsuGFQ9C4v1RZpk2sAMJTAWa8Truxy/+Qy297bFNiNp4
 2J6AJVQJ9yPKsYAK/OJ/x1FneOVs6OoX3Hc48P3a6d9m9Do63bE1i0nj3
 N9c0iWlY91Q/AJ0lJ3aGk+EIGUSG+gA3qQZCy3TFuPupdt550xNybz45s Q==;
X-CSE-ConnectionGUID: j9R8EpelRq6wfV1XcPqyOg==
X-CSE-MsgGUID: UUMq9cPoScC6aSP+VsBJUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="79129167"
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="79129167"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 00:46:50 -0800
X-CSE-ConnectionGUID: 3QSsDEh4RXetozNUjhAJGA==
X-CSE-MsgGUID: +kpN4ZL0SmO5ic3bjp0Qmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="199113356"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 00:46:50 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 24 Dec 2025 00:46:49 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 24 Dec 2025 00:46:49 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 24 Dec 2025 00:46:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZeIeKaL9xvv3B9Aimuvda6yvu541mPnUefiXJ4klauNShRJ9YHZtoWPcRplQUgX76VD//PZbI+yoYBcWDatlx/dYVyCD/a4c52PSglwSbBBEsWFooFam1MsGheLgtoOa+CIyaG8xS8JLJvPvCcLjJIpRo8xzPgiRkpkOA+wOJvam70ISU6+2RK5JXo0PM0cLybsv7hUdh4jvGZIzfJDfgz8FKhibRcTR5ARFgDU+AsfsRwsMTfYF65aStVGoeVFkv5XM1nslX16jxQ9c8ypGRn+ALOFQ33DmACh0gJ+iAGDvk/j2Nx2L9xBQIViWO+xyS2RvQSonJif/jUPzUw54Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZQWmaDGNxM9uEQmj/st+5Tk0tGBNUErrb2vkPm/Jv18=;
 b=d0YArvmAYEEWvtTqfay/Xpr2BrKEuS9RCQZtmGjinBOQEgibyEKmKJyYW561lT6DHL24/+QXDGfcHGtwpJ1JmfR+okWq5bEN0Qhn37F58RQdrIx/+JK2T4MD6kBYgTtdzN2IA6kiud5VtZ1emdKrAwrsD4DD1Qup75tM7rB5zAUMy2svPlXAcz5lS6gRMkjAi122p4bCimsQkU6/+eEhvrSc6Dcp7VrQnhnubLDe3JOoAo7isOas7FgkI8vsShmITUdCcMUC7mCkCkZw4UC2Nz5jmyosX7vBR1kWGM/Xg28D4Hl4SiA2NxqCs0n5A7XWaf/qj82C9OVM2ZRKpAFPwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6361.namprd11.prod.outlook.com (2603:10b6:208:3b4::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Wed, 24 Dec
 2025 08:46:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.009; Wed, 24 Dec 2025
 08:46:47 +0000
Message-ID: <8563fc81-5394-4941-a404-97d65a54d883@intel.com>
Date: Wed, 24 Dec 2025 14:16:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/alpm: Compute LOBF late after guardband is
 already determined
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
References: <20251119135152.673276-1-ankit.k.nautiyal@intel.com>
 <20251119135152.673276-2-ankit.k.nautiyal@intel.com>
 <dffd1c790c9c391c9b3c9afcaffd7ae04436528d.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <dffd1c790c9c391c9b3c9afcaffd7ae04436528d.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SI1PR02CA0024.apcprd02.prod.outlook.com
 (2603:1096:4:1f4::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6361:EE_
X-MS-Office365-Filtering-Correlation-Id: 42e3ac8d-3420-4aa9-9f9d-08de42c8f81a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RFpwTnJhL1NGL0RXNDIveWN3aUdlQjhCZHJxNE96T3RZWjZjQVM0cjhQKzFQ?=
 =?utf-8?B?NjdaS0xqMmd5U2NVdTRSazV6d1gwR3ZvM1VhMy9pVjNNY0VNVDVYYjZHZUVI?=
 =?utf-8?B?N2IvN1l3cEZDUk9ybVV2S1F6TGhCUno3a0dKWWJnWVNiMFZKSGRTWXJjdVRE?=
 =?utf-8?B?M2VzajhzT0ZXUWpldTNKN0lINXhBZW1oR3Z1V0JaVEtHK1RBeU5vdHBtVk5D?=
 =?utf-8?B?T01yTWtEeGlxR3d0cm1YVUY4UHdvckI1ejQ5MUE3RTF1RjVUcTVwOStpUTRt?=
 =?utf-8?B?VklrNGthMENxR1NDUmFVZzNGZ3ZFVEsvYkovOVl5QzhNcXpNVEdpQnJodlQ3?=
 =?utf-8?B?UW5NUTVhNWw4dFV4c2xuUHBiUFhOUU9GWkhoVy9vdlpLZTZKSEk3R0J5SGRH?=
 =?utf-8?B?a1ZZR1VJYk5PQ2RNQWp4K0hqQWoxMExhWU1XL2l0cGV6Yjk4aURyR3hMV0hp?=
 =?utf-8?B?eWVsai85SWNOSmJ0cTVqQTV3d0txV1JLUVpIaGcrdkp4SnhtWVBYQ0Z6S0dK?=
 =?utf-8?B?WGR6enk5Rk1vcU9rWVNNbDFWNWZ6TXo1UU1OMThMOFgzM1Rub3dieVNycG9Z?=
 =?utf-8?B?KzRYTWk4RDIrOGpwckZUNG40OVliYllKYlJNK2trUU5SV0tROFJwNHJEVERj?=
 =?utf-8?B?Sk1HdlRlVDZ2YmxEazBmM1h0QlBNdDBLeEhjeUowZGluRWNvaStaZGRVQXFF?=
 =?utf-8?B?RU02MjFQNGdQRlJubnpzRnN1RGVxMWZlZmM5SVJpejhqVWoyNEM3eUNGa0s0?=
 =?utf-8?B?cm5jTWJTaWw4NTRUd09xUmg1emZDbUxwcHZWaGwveTZTVFVjcDdRZUxHUFdk?=
 =?utf-8?B?TWxCM2dXZnlGZWJ5YzQreEUwYThuZVFpWnVQZmtxTHZlenZITlJFeU1sek1D?=
 =?utf-8?B?WS9LRGFVVDhXN2ZwWDJiUTJBNjJxZHlQSG1iTzFtRTZ2UTBoVHVzZHpyaEw0?=
 =?utf-8?B?MHlMbmx1WnNndWtJS2NyQTc0RlFaYjFybUpPTkx2V21TcGtySVlWTk42NHdK?=
 =?utf-8?B?MzVSWkczc2h6cG82eGNMdWgyQWlGK3N6K0xnaXFBc2dWMmtVWkExQTN5WFpt?=
 =?utf-8?B?c2xKUTRkWHJyZUlBWlVmZzFuWStPNGdJSXdtbWpoSkZzdFBtcTkweERuR0ht?=
 =?utf-8?B?N002ejlFazM2Ulk3dXVRWGhWd0hPdTYxK0JLd2taK0tLWUtIYU1kL1JXUUNx?=
 =?utf-8?B?cENja3V4MUtJZ3lqQnp0WXJKb0xBSm9udGNBUkkvSTFPUW1SN0hReEx5eXJ5?=
 =?utf-8?B?WDRBa2NuN2w1TEZmcUg5Tk9oMm8yOFRlZFY0dW1UUm9nWVl0VW9aV2VjWWRM?=
 =?utf-8?B?Mk5Ublc5SWZ6Y0xEaHNOaCtXWHg1L2xCbzZtcmJFR2JXMllMdnRZWHkyU1Yw?=
 =?utf-8?B?emNNMERiTFJicHF1VnVXY3hYT0VTZTBaMm93ZmFmUGlqZm14SFVaem9QenJC?=
 =?utf-8?B?aXVoWlR0TlkySXBHbTIxbjNGRjBGRk9SYkRiYXYvcUw4YkExdENSanAxMDZH?=
 =?utf-8?B?YVlVTTJTMFppdlhEQTJ3Wm9Wd1k3Y3V1MmlqVlBZd2lvMnMvV0dYbStEcHdn?=
 =?utf-8?B?ZlI1MVNQK280NjkxZ0ZuV29KbTR6cmFFdzZ6blU2UzU4dDFndGtnS3FvanFP?=
 =?utf-8?B?L1pYUE1hOXVOWlJMdm5kVEgzRzRDSzdWdnpOeXJjdzJZUHRmOHlPY09ZZERW?=
 =?utf-8?B?dmRlaVVWNTd2RDFhRHN2Zyt3Z1J1VHZmS3F5T2JvanJLMFVLSVh6R0lTWkd0?=
 =?utf-8?B?aUt6OGNRZFBLY05BckRTZWdDb3g2eVBrSDhPeEtJc3NOaXQxb0JXVTlBKzdK?=
 =?utf-8?B?OVgzSlVzVk8rMG5RSWlrNVhsRmtjZkQvcW5PKzlIZnlEWjB3YlpiakcraTNz?=
 =?utf-8?B?QzNIdS90T0hwNE1LRWdvblhVVkFpSXowVGxBZmNSbURKb2E4eFRtajhSdExH?=
 =?utf-8?Q?eJ5vLzllzL9y9msTgqwcu8lCvnpWKAq1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGtFQ0VZOTgvb3J1RVNiU0EzUVdsL3ZMSTBSbmR4SVNRRHR3cXJ5REZaeDZ5?=
 =?utf-8?B?czcxYmgrSTZVMmZHOStuNDZjZEQvVHEveU92Z0xEWldYMEgzN0JJSFdTVmVO?=
 =?utf-8?B?enBwUHBYTEtHNTYyTXVvQmkxUngrZ1Y5dE5XUk42Qy9uTENtRnZYL0Z1QVlO?=
 =?utf-8?B?Zlc0NGVXR2RVL1lQUXdmQ3RybStaZUxXYzJwbDB5dGgvZXVvQ1M1YnlpWUlX?=
 =?utf-8?B?dkQzd3BQTDJXR2tZR29jZGYyY0kvWlM0bW9FNHREYjNBby9VSzg1alRMN000?=
 =?utf-8?B?eEZmSUVNWnd4Yyt3cmhPK1VzVDBRYUw5Q0NsME52emFmbGVlV0pEakwrckl2?=
 =?utf-8?B?bVJOU2k5eXQwbmo3M2RlcncvSHhvWkZBdHArVHArdUcrZTMra0pHWExkREd6?=
 =?utf-8?B?ZmQ3ZWZTalZZc1VyRXkvb04yYzVTa0xjYlJiOU9sdFZwY29NdFZkUWRwK1oz?=
 =?utf-8?B?NVRhVWthYUd4WExjcTFGenJWSHBhWTBkN2hOem1rSzVIQm9qd3YyS3gxRzF4?=
 =?utf-8?B?YlQ0ZVEyMWVUVFdjVlNlUU9nRzZoVmNNSGN1b1dDTU1yK0NTVm1nNUtxM2pS?=
 =?utf-8?B?YkFXNHpVbzJWdm5raTl6MFNST0toK3ExQUQ2a0hkWEFjWkJ0YjJSZWtkaXRY?=
 =?utf-8?B?S3cvQmxZZFBTVTJYejRZV284d3o0eDRzTjg4RjZSNmRDOFlWa2dCd3Jsckxq?=
 =?utf-8?B?cSt0ekF6V1ZLb2QyNEhEa1ZseHVHSCtJM09EbWIxT1NsWGFPcGVSVkdCaGVr?=
 =?utf-8?B?MGQ1Z3JPeW8xMVhPNEtGcEpmVzZQMGdKQmtHYUdjWGw5dFRFVmd3SUw1YzJR?=
 =?utf-8?B?TDhuN2oyTnJuWCtwWEhtaXN0ZXVTK3JyWXkzalZIKzlqMDNKWUNpdlRkUVRq?=
 =?utf-8?B?R09FVEZyRTY2VWQzNnJjZ3AxNXIrMHViNHVKMkJISE1BbldUZU9hS0ZCaHZJ?=
 =?utf-8?B?VEF2dTFLMmxUQTZqNGY1b0kzK0RDaXltNFNvZFNzb0xyT1R0eXYrdng5QkFH?=
 =?utf-8?B?QmlqM0pqbjIyVmxKa2U5VnR3MXVNWUJIUU5Edk05Tk9OT2RZbklXa3FMZkll?=
 =?utf-8?B?M0RWL1hQVXFQaGdDZzF1QXdwbDYxVXFpaHpHR1BlOXA4YzhRRUJuQ2pzdWV1?=
 =?utf-8?B?ZmFDdGlmbkxLT1dkNUVNNUZtb3hhZkI4aDQvU2p4TXlXSHdmU1F3K1ZmR2NX?=
 =?utf-8?B?MXNLM0Jya1N4U2xNMnJSQm1CMXMwUEZVOHlDdnYvQWFNYUI3NFhrdEI2cUFV?=
 =?utf-8?B?VXQ3L25tTHR6ODhtOFdzMUxPRHg2V0dHK1l1YTZGY3g4a21aVVE2Z2JTcy80?=
 =?utf-8?B?VktwNFo3TGR2M21qYlc2cXhhRTJBNS8reW11TUZGbS9sQ1l4ZGpCS0UwTGF3?=
 =?utf-8?B?cFlRYmJVd1ZLUS9tL0p6Z2czU3NUVE5qZHMxRkR6RTVybFlLbC9EenRublhh?=
 =?utf-8?B?RkxBay90QTVoWXhmbXhrTFNTVEc4TEY5QzFsNWpNTkF4TmthOFlvTWZ5a3M3?=
 =?utf-8?B?ZmlwaDVZMEZ2ZE1zM2NIalVzYkpMV3cvUHA3YldHM1hoNWRlQzhxdE9VQnp0?=
 =?utf-8?B?dVYwZ205N0k4QTBqOGVlNDJjWmpSaUtGLzkvdUdCTjYrY3lDQ0p2ZFp0RmhM?=
 =?utf-8?B?UDBGOWdHU2Z5TDBIRzJqb1NJMWVkcElhZVVKY0x3WDZtOENoVFZ5ZjYxamNk?=
 =?utf-8?B?dmUrZjk5MDhZZldpMElwMW1DWlRHQUY0WVlscG9pNEI2eVFPeTMzVzNQMzFF?=
 =?utf-8?B?SlVrbXJ4b3hlbzdROXhyNXVBaVdpcWFIS2JDUy9ZUmtKZElFZ2hhYXo0QWdm?=
 =?utf-8?B?Sjh4SU9OMlNXanY4enFYSHJPdXhVUTFmcEFhVG5PWlU0SThzeGFYclk0N3J6?=
 =?utf-8?B?WWtjUEE4a25PRjFob1dWT3RqMGVqa1VKNHVBaElZbEpvdEtEOVM3YmlzT1V4?=
 =?utf-8?B?S1RPM2FiQWk3QU1HMk1pUnhET3AvNnFyMWNNYjdCVG1zWmpNU1JPdzZOcDZt?=
 =?utf-8?B?K1JYOGs1RlFEdGFxRlN6T3BBb1o4SEtXRmxsdnZKNUk0eHdERUo2Y1o3TVNE?=
 =?utf-8?B?TzNDYzRhOVhTQnQyZzlSelEvWU8vekN6djhWNlhZemVQcmdZeUNWV2lXeE0z?=
 =?utf-8?B?WW9SZHFaODlzT3I2SHV1SDlrZGRSUm5aZnp2MVJoTWNJV0MzanlFdmx4enNW?=
 =?utf-8?B?ZUt6OXhIbHRWVEU3dGlOMy8ySFlnM1UrRzhrS1JRYjJ2dnFuRy9mSExCVnE3?=
 =?utf-8?B?Z1gvTFpEbytmMWdxS2IxUXNrVXdhRnp2MW9oWi9GT3ZJcmpLZzdRaHFZSW9M?=
 =?utf-8?B?UTFYUXkxMFIwRk1GWXQ1WGVsaWVlQTlqNUNPREFXaklBTDZuQUx5cWwzaDRt?=
 =?utf-8?Q?ymf1spUH3GiQPuvo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42e3ac8d-3420-4aa9-9f9d-08de42c8f81a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2025 08:46:47.1123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K0F2QQThA2OG11/b+IRZXyoLyunE2rssRtHbwAHGW1V09Pb1NrnpwAeWXB+kd81UlDFIXEbNJPG3SY4JTPz7IAMi7mgFW/qt11bdq+hQm2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6361
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


On 12/17/2025 6:41 PM, Hogander, Jouni wrote:
> On Wed, 2025-11-19 at 19:21 +0530, Ankit Nautiyal wrote:
>> Currently intel_alpm_lobf_compute_config() tries to account for
>> guardband +SCL requirements during encoder->compute_config() phase,
>> even before guardband is computed.
>> Also, LOBF depends on crtc_state->has_psr which can be modified in
>> encoder->compute_config_late().
>>
>> Account for lobf requirements while optimizing the guardband and add
>> checks for final guardband in encoder->compute_config_late() phase
>> after
>> the guardband and the final state of crtc_state->has_psr are already
>> computed.
>>
>> Use crtc_state->vrr.guardband and crtc_state->set_context_latency for
>> the computation and add more documentation for the dependency of
>> first
>> sdp position, guardband, set context latency and wake lines.
>>
>> v2: Add helper to use min guardband required for lobf.
>>
>> Bspec:71041
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c  | 63 +++++++++++++++++---
>> --
>>   drivers/gpu/drm/i915/display/intel_alpm.h  |  3 ++
>>   drivers/gpu/drm/i915/display/intel_dp.c    |  2 +
>>   drivers/gpu/drm/i915/display/intel_intel.c |  0
>>   drivers/gpu/drm/i915/display/intel_vrr.c   |  2 +
>>   5 files changed, 56 insertions(+), 14 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_intel.c
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
>> b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index 6372f533f65b..98cbf5dde73b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -15,6 +15,7 @@
>>   #include "intel_dp_aux.h"
>>   #include "intel_psr.h"
>>   #include "intel_psr_regs.h"
>> +#include "intel_vrr.h"
>>   
>>   #define SILENCE_PERIOD_MIN_TIME	80
>>   #define SILENCE_PERIOD_MAX_TIME	180
>> @@ -248,14 +249,58 @@ bool intel_alpm_compute_params(struct intel_dp
>> *intel_dp,
>>   	return true;
>>   }
>>   
>> +int intel_alpm_lobf_min_guardband(struct intel_crtc_state
>> *crtc_state)
>> +{
>> +	struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>> +	int first_sdp_position = adjusted_mode->crtc_vtotal -
>> +				 adjusted_mode->crtc_vsync_start;
>> +	int waketime_in_lines = max(crtc_state-
>>> alpm_state.io_wake_lines,
>> +				    crtc_state-
>>> alpm_state.aux_less_wake_lines);
> I think we should fix this to use proper value instead of just max. At
> this point FIXME would be enough.
I agree need to check if io_wake_lines or aux_less_wake_lines is to be 
used based on feature.

But currently this information is not available in crtc_state, so went 
ahead with max for now.

I will add a #FIXME note here and send new version.



>
>> +
>> +	if (!crtc_state->has_lobf)
>> +		return 0;
>> +
>> +	return first_sdp_position + waketime_in_lines + crtc_state-
>>> set_context_latency;
>> +}
>> +
>> +void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
>> +					 struct intel_crtc_state
>> *crtc_state)
>> +{
>> +	struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>> +	int waketime_in_lines, first_sdp_position;
>> +
>> +	if (!crtc_state->has_lobf)
>> +		return;
>> +
>> +	/*
>> +	 * LOBF can only be enabled if the time from the start of
>> the SCL+Guardband
>> +	 * window to the position of the first SDP is greater than
>> the time it takes
>> +	 * to wake the main link.
>> +	 *
>> +	 * Position of first sdp : vsync_start
>> +	 * start of scl + guardband : vtotal - (scl + guardband)
>> +	 * time in lines to wake main link : waketime_in_lines
>> +	 *
>> +	 * Position of first sdp - start of (scl + guardband) > time
>> in lines to wake main link
>> +	 * vsync_start - (vtotal - (scl + guardband)) >
>> waketime_in_lines
>> +	 * vsync_start - vtotal + scl + guardband >
>> waketime_in_lines
>> +	 * scl + guardband > waketime_in_lines + (vtotal -
>> vsync_start)
>> +	 */
>> +	first_sdp_position = adjusted_mode->crtc_vtotal -
>> adjusted_mode->crtc_vsync_start;
>> +	if (intel_alpm_aux_less_wake_supported(intel_dp))
>> +		waketime_in_lines = crtc_state-
>>> alpm_state.io_wake_lines;
>> +	else
>> +		waketime_in_lines = crtc_state-
>>> alpm_state.aux_less_wake_lines;
>> +
>> +	crtc_state->has_lobf = (crtc_state->set_context_latency +
>> crtc_state->vrr.guardband) >
>> +			       (first_sdp_position +
>> waketime_in_lines);
> Now if crtc_state->has_lobf is switching to false at this point we
> still have lobf guardband requirement included in our optimized
> guardband. Is that ok?

I think that's should be alright.

When we optimize the guardband we assume all features might be enabled 
and take min(vblank, optimized guardband).

If at last guardband is not matching means we went with full vblank 
length, so we should be good.

Regards,

Ankit


> BR,
> Jouni Högander
>
>> +}
>> +
>>   void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>>   				    struct intel_crtc_state
>> *crtc_state,
>>   				    struct drm_connector_state
>> *conn_state)
>>   {
>>   	struct intel_display *display = to_intel_display(intel_dp);
>> -	struct drm_display_mode *adjusted_mode = &crtc_state-
>>> hw.adjusted_mode;
>> -	int waketime_in_lines, first_sdp_position;
>> -	int context_latency, guardband;
>>   
>>   	if (intel_dp->alpm.lobf_disable_debug) {
>>   		drm_dbg_kms(display->drm, "LOBF is disabled by debug
>> flag\n");
>> @@ -288,17 +333,7 @@ void intel_alpm_lobf_compute_config(struct
>> intel_dp *intel_dp,
>>   	if (!intel_alpm_compute_params(intel_dp, crtc_state))
>>   		return;
>>   
>> -	context_latency = adjusted_mode->crtc_vblank_start -
>> adjusted_mode->crtc_vdisplay;
>> -	guardband = adjusted_mode->crtc_vtotal -
>> -		    adjusted_mode->crtc_vdisplay - context_latency;
>> -	first_sdp_position = adjusted_mode->crtc_vtotal -
>> adjusted_mode->crtc_vsync_start;
>> -	if (intel_alpm_aux_less_wake_supported(intel_dp))
>> -		waketime_in_lines = crtc_state-
>>> alpm_state.io_wake_lines;
>> -	else
>> -		waketime_in_lines = crtc_state-
>>> alpm_state.aux_less_wake_lines;
>> -
>> -	crtc_state->has_lobf = (context_latency + guardband) >
>> -		(first_sdp_position + waketime_in_lines);
>> +	crtc_state->has_lobf = true;
>>   }
>>   
>>   static void lnl_alpm_configure(struct intel_dp *intel_dp,
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h
>> b/drivers/gpu/drm/i915/display/intel_alpm.h
>> index 53599b464dea..14dc49fee4c3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
>> @@ -38,4 +38,7 @@ bool intel_alpm_is_alpm_aux_less(struct intel_dp
>> *intel_dp,
>>   				 const struct intel_crtc_state
>> *crtc_state);
>>   void intel_alpm_disable(struct intel_dp *intel_dp);
>>   bool intel_alpm_get_error(struct intel_dp *intel_dp);
>> +void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
>> +					 struct intel_crtc_state
>> *crtc_state);
>> +int intel_alpm_lobf_min_guardband(struct intel_crtc_state
>> *crtc_state);
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 0ec82fcbcf48..782e981bbc89 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -7020,6 +7020,8 @@ int intel_dp_compute_config_late(struct
>> intel_encoder *encoder,
>>   	if (ret)
>>   		return ret;
>>   
>> +	intel_alpm_lobf_compute_config_late(intel_dp, crtc_state);
>> +
>>   	return 0;
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_intel.c
>> b/drivers/gpu/drm/i915/display/intel_intel.c
>> new file mode 100644
>> index 000000000000..e69de29bb2d1
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index b92c42fde937..fcecdf3dc78c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -6,6 +6,7 @@
>>   
>>   #include <drm/drm_print.h>
>>   
>> +#include "intel_alpm.h"
>>   #include "intel_de.h"
>>   #include "intel_display_regs.h"
>>   #include "intel_display_types.h"
>> @@ -451,6 +452,7 @@ int intel_vrr_compute_optimized_guardband(struct
>> intel_crtc_state *crtc_state)
>>   	if (intel_crtc_has_dp_encoder(crtc_state)) {
>>   		guardband = max(guardband,
>> intel_psr_min_guardband(crtc_state));
>>   		guardband = max(guardband,
>> intel_dp_sdp_min_guardband(crtc_state, true));
>> +		guardband = max(guardband,
>> intel_alpm_lobf_min_guardband(crtc_state));
>>   	}
>>   
>>   	return guardband;
