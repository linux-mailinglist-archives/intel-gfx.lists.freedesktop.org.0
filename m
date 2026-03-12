Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id rKXyBomwsmmYOwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 13:24:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11105271A7C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 13:24:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B184E10E358;
	Thu, 12 Mar 2026 12:24:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dRoQ1oYm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97CE110E229;
 Thu, 12 Mar 2026 12:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773318275; x=1804854275;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gz9rAPORm8ynQEKTr6B+ZL1myqfAEHsM2xxu5VDYuTo=;
 b=dRoQ1oYmtY83ZdMlasntmLMG5mLGoitghtazBthNwcOD3/ShTsyhEh8f
 zcUOPk5b/OYQyViigenhRc7l++BUi2n3I0Va03NSJsdLUUecvEHQqMznk
 +iXyiHyOKeN1K+to0r7cSS3t7DHWfK2hs5RRHDEyRNp2HaFUAicAqXXZE
 lhcLQkJaUWgWWcdFFW0PSGrD+1iL9qHK5IxR1YsHRiiXgJssTiNKChTia
 Up2gNjvdb2E/jpWdu1dqTFdxl7ZeHwkRpDMVCI5HPI/ROg96iqvUw2SDm
 nzuqgD/+orkojDbsjRo30T8WWuD2HePZH1OW7YQ2PChBy8sMzn9h8Ksoj g==;
X-CSE-ConnectionGUID: EKb2caJmT9qgdB25jtlMgg==
X-CSE-MsgGUID: rufW7jv5THyA+JcBxoiRFw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85492236"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="85492236"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 05:24:35 -0700
X-CSE-ConnectionGUID: CPmu0dbORCuZ+rO0xYqU/Q==
X-CSE-MsgGUID: 6tSr8AwHTQ2hquBAivjfjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="225779071"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 05:24:35 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 05:24:34 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 05:24:34 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 05:24:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OpCNb4YxRoiRHF+B9WSrle7UVRSk/BsrJETq8Gfm+ulEQ2Ds7bGJ+HXOKVl9xxAeyxKzs+vx8lCkrhCxksmym1cUqzjY/bXx3MWgWDD9GM3QoY01dumgXIQPSLxbOsNuqQruayCHg2dfpZz56KfacZaBgANcbhvbAgv6Glr9EpbcMaEq38Y9wSmJ6BDY7oa5HRYvFpi818shBSXHYnkTrcy0zW3YS2viITuBhXDRC+aSH1VJWQ6JHxUIGU8eRhuiaR7sGwUMIYq/prAqIbxzC3YLuoUKt8VOb8askeC7peq+woO1JSncASFoYiKw3Pb0JRk42BpyoCk9beWnoD39EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5FdcLcugvsmsIbaD9RdpmvBSJ4d+lUkUMLD+FTX6YTU=;
 b=bIlIaA1iLN9XjOKWg8CJ+Yq9k2q8GNZXsZrujM9IMgVw9C77PMK1+ZYU8MPlEmnvxKD8YgAo+1W3bKBDVsNtx9f/rAVoujdAeqLbqLryfN0V5M2IsFXjLzsP7xEwV2iRCxy21q65aGOiJB+/bFrRMUgo8RgrE5l0Dpa6UqDVWBEr1g8zD/dXzz1iQZgTqvgyGOWHsaLoeqPD2IUy0mPtpO+THKe0wPHtNWKlEW/rAPLqqNhg+G/n/Er087ZhukVau4u6Z1J10n6pj2NA/ADYk5CZum4q4tZI+j45bXI7tu+VV8Qp9y/swwgnj2EIA5/ayrWLuz2FvXOqOq3cbuhHeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DS0PR11MB8081.namprd11.prod.outlook.com (2603:10b6:8:15c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Thu, 12 Mar
 2026 12:24:31 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9723.000; Thu, 12 Mar 2026
 12:24:30 +0000
Message-ID: <d2d11c57-65da-4566-b4d9-6725d8d3c8da@intel.com>
Date: Thu, 12 Mar 2026 17:54:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/dmc: Remove invalid PIPEDMC interrupt bits
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260311063259.2608206-2-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8DBEC097F8191AE0DB3497E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM3PPF208195D8DBEC097F8191AE0DB3497E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0178.namprd03.prod.outlook.com
 (2603:10b6:303:8d::33) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DS0PR11MB8081:EE_
X-MS-Office365-Filtering-Correlation-Id: 312c4f38-f68f-4b45-61a1-08de80324f9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: g7lqebQ6Oo8/bFUgXKHiDMpmFtHZIHQ/dA2KwyAxWYyXRtG9WxyUZy9f9oSxaHqeO7E7N7hVvw1h6EGf3dGW8AQtkg590M3ZIdPt5UyscsFBrYVR0rDHUHhSb6OCDHx1ghLfjmPO+pOZVIsuE2qN2cQo5O2lgiZ9CfDzHKfSr92fKgZ4tUqAqq6ckU7CpExImWva7Cy45wOD9nTS3MFDBrBWEFdCYjdsJAEeX/er2ihIP1QrFT0YjrCKPw7OHS5Myuf0k238AxjOJ/trlpSlXrmeQF3gCgrhJ/deGyvRykGXz6Qkn+JFzq0Xa0DM6b5Q/LktlpHK5qVVq7TDLeC5xF2LBbsyuVcoJa5VZWk4O0AfnXxuCYV7uqOfvNtIgUeI7I2Kt6ie00DYb9T1cmntmrn4oh2A1Oksbxk1kCT2ngp+HQn1Mr6rTN7SasR36Xk8he00FLQehEJoJOCz6SGqcvnm/7PrpxTXfn7WSPNbagSu/MXPQzMyy/liNS4iEpM3dNy4b3zd+CWtVYH0zGLCweNawtaY55i25fW9/BrulGEMpXBWcQlep7T4kY5XSPeHC+jc4u7ajM10pSR/qOvTJZ8H6bzYgRaK5mx+PD/8lOGSz6EyS6Sn6dzPldj/e57k+cQS1HA6BMrsYPdlaFKMSC12LgPdEigky7v4mh/+1A9jSkbD8nbXxWhZeIfzQGVya0M7+usNaBsLYpIPlvAvz0c4Kj8PIpO9fzRyCYnIPOw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnJFNnljY25iMVp4bEJnaDdFYVRXSVZ1K3E2LzBZbmszWHY4L1Z3bDI2S2JR?=
 =?utf-8?B?bmNvRnl0c2hqWUZPZHpWNkdHak9oUTRxU2h4VndPVFpmNHlNMmdMVm1kSndj?=
 =?utf-8?B?SmN1d1pTS2c5TjFhYURPVEllVzRhZURudE1HV1RsQ3hPUnVaQk9VUWdpNDNn?=
 =?utf-8?B?MG03a01Ld1JySldFTUZobURxK2FIV3I4cjdQSHlUUHJLYmpSUFJOVll1d05D?=
 =?utf-8?B?YnU5SjRMdlk5ZkVwRDluMnF4MDNSUEdUbm4wcmhQalVWWVFQZmlsQ2lETlhF?=
 =?utf-8?B?ZTdXbFV2UGZXWXh6bFVHZkhCZ280aUNwZXBpdEVWMlVsSkg5WkFlZ25KZGdj?=
 =?utf-8?B?K0FSREVLSzA1VmIxVUxhL2N1WjVMVUtmbXRQL1BXaEVBTmtqMlozMnFuTTZ4?=
 =?utf-8?B?ZzJwd3VnYWo1eXZtS0JrUXJTbGRUenN1bSs0QlAxckdKaC83SCtEcGFGd05O?=
 =?utf-8?B?cDFYcFNLNVEvUjRnUCtMMTI0MjJZMVpuWG9rUzVWRTk2akdSdFFsazFnVGwv?=
 =?utf-8?B?Tmt1WVh3UGV0OXd2ekhSclREQ0praUNFc2lmM2ZGV0xpbkEzRG9aOFZLbkVX?=
 =?utf-8?B?Z20xZ0NHRDNqcnI2RFhYNTRqdjNOWWlqNys5YmMwRjJlWnNObVhVTjNCc1I3?=
 =?utf-8?B?WmFjblBMZy9kVVAwaTJmUGdoYzdVZkdVNWRsS1YzSHJVZENEWnNpcHY2d0gy?=
 =?utf-8?B?MnZTeWs5VVpDWUFncncyWjErbmhtTkFVVUU3U1JKUm1TY2NEc0xwemxnOTRR?=
 =?utf-8?B?UkRzNFpUbVcwekcrVHRNLzNDd2RlaEJicy9Xek5wNjlPZm5PUFVuSjc4d01E?=
 =?utf-8?B?Z1dRVUVTVzNINno0WnQvdU5iSkE0NzJPZ3dPQlJIa21FU1RqQUVoS1lvZzZQ?=
 =?utf-8?B?M1BiL1c0OW5yTFZOVVRrZ3d6RTdjK0w0SG1OUWRaMUpkVkJnVldDWWhvWjcr?=
 =?utf-8?B?cmZRbGRwVUd2Y3kzMExSWDBDeTNhclVQZk96Q1ROYmorNFdCczRnUU00cjhX?=
 =?utf-8?B?WW8vSm9ua2VOcXBZQkVZRk1OaW5BbzhSakRrVlVuVWZpTDlUTS9MSmM2T1VN?=
 =?utf-8?B?SE82dDk3L3NTOVIzcWV2RWNQRUZDamFycjErVkUvWGYvRTgrbFdYRU1Xb2sr?=
 =?utf-8?B?T3pyZDJmZG52WjZDMURvaW4zaWZLRWZFRXhSR3NuMUlNQk8xRHN0MDFvWWtr?=
 =?utf-8?B?YmhZaUtjWUhFb2ttZEZLeFJnWDlENi9wZWJuRllRZlhJUVZaQzFLSDRINXdl?=
 =?utf-8?B?Zi9IS3hrd25tc1VxUXBhM2l0VUFSY0RTRHhCTVExTlN5U0xNREFNMTcvczU3?=
 =?utf-8?B?OUJ5VnpSQ3RRQ1llR1ZvanZkVzFBRGpVVjhtd1VHUERQOVdvMmtlMWlPc25x?=
 =?utf-8?B?QzM3Qjl3aW40N2FlTmNsM2FYbENLZGNqZXFWZTBFS1RrdWhTWEVyUHB5M1ZE?=
 =?utf-8?B?L3p4VkRyNUprS0pGNE42WC91TlMvNzNjWHRhenVLR1pPazFLbjhaVjB1NWJG?=
 =?utf-8?B?L3RMWHBXNUJXVkM4M0RKUXFrVkUyU09tZTB3eXoxemFWc2pYRFMxVzFnT1Fq?=
 =?utf-8?B?dXVBMHdvenQyTHBKdSs0VDlRT1JWdWdPenkzR1d4ODFDSjRmdWR0SDRmSjY2?=
 =?utf-8?B?dXBSTW1yaEIrK0dtR2hnSXVSZ2hzWTRNOHo5RlVFNUVwM0pZc3hjaFNWYUVP?=
 =?utf-8?B?NG1RQXArcGNJZDZrZTFIUCszaitMN1Y1Rjl0Q1R3Q2N5emU2MG9qbGJveml5?=
 =?utf-8?B?Sk94cllyaVZCMkRFM08wSk9OV05zcU1ZSmtHTFhZSXJKb1dkL0JJSnVGa0JD?=
 =?utf-8?B?azZHbjBIUVJlY0ZsVGlhNXVsUVpGNG5TVXFUM284MndFM1IzRjJtNVJ3UWJW?=
 =?utf-8?B?U2E4QU9QWlNJV2dNN0tPYndNS3BQdTdpZlR2RmhTVW80Y09FSnJSSmpYMTdy?=
 =?utf-8?B?WGVXdy9BeTBoQWc2TUVyTFZnQ0xjcVo5MWdMMkRjVEU2cHUrQkx2V3l6bFRi?=
 =?utf-8?B?TENoYWo0bmxCN2V4WnZpcElIRkFxTG93UDVQdTZJOVBheUszUzJxYVNxSXNJ?=
 =?utf-8?B?VG9ySE02VWltOFdxbE04QldFSUU1MVRGVG5PR2MyQTVyOE5Pa0UyWkVlQmNz?=
 =?utf-8?B?WjdlTGgwbFljZmJSdVQrRCt2QVhYNVNHUFljVVFxUmlCTjUxZFo5bjJmUXp6?=
 =?utf-8?B?dUdEVzl1empMTDZpQlZjOW1RWCs4SkZtUUhsMWIxcUFmNWRHM21ja3JteWV1?=
 =?utf-8?B?VnltTVpNZ0k4R1ptYW5kbWdSVC8vM2pNcS9CcTNUQUVRVkltRGlOUzFRdjJJ?=
 =?utf-8?B?V2hmZE9rZjZkSE5jV2RFUWhEZHlmNlhIZGZYckpaY253aWd3WGtscnpaeGcv?=
 =?utf-8?Q?O4Mxj8nk80x1jYGi4qeRSh5LAQrboH/7EfJe/5KEGRyG2?=
X-MS-Exchange-AntiSpam-MessageData-1: nwb593Ciomz2fg==
X-Exchange-RoutingPolicyChecked: IOOOuQFqakfFOk+GZWUqycW1C2y59un7S93LYZYHDuVIyhu7ONoIX8+GYxnMyE0NkfEyn+WAYfOaIPctUg3Q/9eLT5+gL8KgeD69643uLb0j5TCh0fPy1LFOCC1rr87Nhg4FsXva9y/7CZ6789tMv5WFBz2Zxcb2wTEDyp5XS17I2Cth6VJOjlUJP9dnu3M4GsvhRTGHUS6RCnHk7nG51c2HpTdb7cL9VL6ZtFx9Xmr22AserzZrnH6h2BnCAJWxlnUvgg66JOqI1CZhmI3in4uxffPKVKRhbjnEKUJxkqnvW4i3UeRmU2BepiMNabVhjH9KLZGCgIM5KN3v1Lx8cA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 312c4f38-f68f-4b45-61a1-08de80324f9c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 12:24:30.7673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xCTN8QF18TaMmSAUpE6kvb3o76pZKgSIknbcuJLt2dA5QW0zJspMQj0SnMIz1kYJ1PeUuekbAWS0gmj+C/bswYORAGXjeL7Wjz3X+SnTEDmpDDyRB/nHI7d3VJScQFHm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8081
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 11105271A7C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 12-03-2026 08:40, Kandpal, Suraj wrote:
>> Subject: [PATCH 1/2] drm/i915/dmc: Remove invalid PIPEDMC interrupt bits
>>
>> On display version 35+ PIPEDMC_ATS_FAULT and PIPEDMC_GTT_FAULT
>> interrupt bits are no longer defined.
>>
>> Update the interrupt mask to drop these.
>>
> Add the Bspec link for register in commit message
> so that reviewer can verify this if required in this case.
>
> Bspec: 70296

I will add Bspec number.

Regards,
Dibin

> Otherwise LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dmc.c | 3 +++
>>   1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
>> b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index c3b411259a0c..38b284a0db82 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -509,6 +509,9 @@ static void pipedmc_clock_gating_wa(struct
>> intel_display *display, bool enable)
>>
>>   static u32 pipedmc_interrupt_mask(struct intel_display *display)  {
>> +	if (DISPLAY_VER(display) >= 35)
>> +		return PIPEDMC_FLIPQ_PROG_DONE;
>> +
>>   	/*
>>   	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
>>   	 * triggering it during the first DC state transition. Figure
>> --
>> 2.43.0
