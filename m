Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IizABjZd2mFlwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 22:14:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2B88D960
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 22:13:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A0010E4B2;
	Mon, 26 Jan 2026 21:13:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O+wKhUwr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80CEF10E4B8;
 Mon, 26 Jan 2026 21:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769462037; x=1800998037;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rEIQplpNGbrW6003ys2NRAA0arAvLpbjzVpL8Z77Aws=;
 b=O+wKhUwruMoPu03JauD/z66b4KSmZq087BIupkPhJH/Ge/6mEOKJI87r
 BHC8morOrzvG4L31P71hnbNvYzw+8F/+jqvOpQjbvkAh7vaFPoQeu6l9r
 DSHfvLwTIIGbFvGRr0CMajnxImqMjXkcEH7JYst0+KSxxsKatG+HyXYgf
 Jb4GSImWAKTssgFQTKiaFP0duIMZ2n0PicBTKcpBHBkH4eqwMjL38OJYH
 nOpTvGoW4EBK09a6vhnsNouaXoQq1rshblEbdHypAlDMK/TLDYawv5LBs
 Usuo4S+BiZdVL3yyMaAOXBTYr20rdBlyG/SW/7s1Y3K9YTKKWFBAXeaxG g==;
X-CSE-ConnectionGUID: r8wuYvOLQaeghwnQbDlAIQ==
X-CSE-MsgGUID: bq4hakUdRkmumD8uF21o5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="82016229"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="82016229"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 13:13:56 -0800
X-CSE-ConnectionGUID: 20phNq/6SliPuMKggEKdRg==
X-CSE-MsgGUID: uknETIcFRoqLIxAQpDkVIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="245391169"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 13:13:55 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 13:13:54 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 13:13:54 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.29) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 13:13:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dIynnWCL68r+bONlZs9r/eUsa4QV+buX8JAGrCdXdIcdc9XTlGy+6VDR7A56zN4qcdNjDxCXzAccGg6sfJvpvzS1b693eRnDIt/WQsHXRnbRJ2J668suvQs1paIN7ZzPAAtY42Jd0WHX/kz11U0izHC4dAOPgw6XKmZHof4O6SJtSZn0zaVCY7Hv/a5LENCL2PYmECXkcree+l7QxItA9VaPkuLARUqxOQg0nrRgrNB+QCo85ZHbJzDRzBsTkmnoUHYFttDXzyO+KM3T/F8GJ/WouJzNQKQ1VPErqw9KFPeHjBdVrkchPG27VeObLvghqNXQW/MWmK+DntIOlfmpvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2yU4GPNck7VYBulBkju8pbSN4kBhFzahUZlBzEIUybM=;
 b=iB5rnzQGhGf7jpmucGoPs+1rUkotOVfjanDwzPzZ13Nv+VkoSmPRTkWuBVOktTGRW7SJ9meIVbAENYw2Tmf7DuOLOof5tekWCeiRXk2uaR+Pw65khB/stk9TuuCkFF4l9zmMROgnTH3cAKhJwNviizBv/ZBp7UJlSnOoiDLgZFPBhfeXAfzWjSjG//T0kqcjb1nxOV77ZNYIMPwbj+EI29im1z6aYhL5N25MkdHRQ4EdpjEt6NqbHkjkJLNWATSNJ4ssV76OKH1XIfg0COJdGzTcynFyDk8EsPii5zPeN0YjXwtoJFzOK114mp5QwtC6Wcy/DbfL83HYyvgjpPVeLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by DS7PR11MB7908.namprd11.prod.outlook.com (2603:10b6:8:ea::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.12; Mon, 26 Jan 2026 21:13:47 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 21:13:47 +0000
Message-ID: <7bb86c2a-6f13-49ef-995b-a1a657316b19@intel.com>
Date: Mon, 26 Jan 2026 22:13:44 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] drm/xe: Remove xe_ggtt_node_allocated
To: Maarten Lankhorst <dev@lankhorst.se>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260126104604.988024-1-dev@lankhorst.se>
 <20260126104604.988024-6-dev@lankhorst.se>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20260126104604.988024-6-dev@lankhorst.se>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P190CA0042.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::14) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|DS7PR11MB7908:EE_
X-MS-Office365-Filtering-Correlation-Id: d802244c-7c03-47da-add4-08de5d1fcb9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UHllSWEyOGhQWTMwZUh6dTBiT3gvMjUzT3lsTzNUZUwwbEtiNlBBU005M2JJ?=
 =?utf-8?B?RTJDWEM5ZnRwcHhkOEZ1ZXVoVjBRSGtPdjNnWE01M0hYZ3VUYzE1WDRvK0Vp?=
 =?utf-8?B?ckg4b255QWFHejJnTkZ5TDFSbCtZVFlpY2RxOEt2Wm4vU055aDlFTXpnT3Ra?=
 =?utf-8?B?dHJWQ0k3QUJZVzBxbEloUXhjcEkxbDJFOXYzN1I0alNGN2w4SzNKLzdKbGpX?=
 =?utf-8?B?VCtVVmlMNHhZVDRTblhsSlR0S0JueSs4dHcvWkZNdklhYzdSTVRENDNydGdn?=
 =?utf-8?B?blVvdm9uNk9jd0g3WW5WVDlwRXdOZUhDeitJMUlPc2M0SWpJaHBnTEpsakk5?=
 =?utf-8?B?VThjKzBSTXIxc05vK3JHaTZ5MlFLckl2VnFOVWswbDNGRlpuaTZJQjF2TEVx?=
 =?utf-8?B?L3hLZEhYL1BiQUgzU0k2eVR4SWVUWUR1MXV0eHFnaVVhTlhTZHN6QXNQUHlv?=
 =?utf-8?B?aXl6MUZPNDlSMkNpS2NsSGhqRExpM0hjQmozMXB2aVJ4QW5nbGRnR2dERXZt?=
 =?utf-8?B?anFlWkRBWHRDaXA2SnRtSTFCNWNyakd2V0NrdE5vakQyaklKa0VZeFMyTEsx?=
 =?utf-8?B?dGc5K0FWRWx6RkNIOXVHQS95Mi9CMHU1Yjh0RmhGSnlZa2ZxZWdFM0x0WEk3?=
 =?utf-8?B?MW5MZXhBZ2NVT0lZKzBmWEZ1TldtZVNOMCtqTnk0ZDd2WU0rMDQ5VmRDTi9F?=
 =?utf-8?B?UlFnbDVTb3BTdFpNNkQvSGdEVC9DcTBXbFRlVFRBYTBrRTJLb1RKckxIMnFM?=
 =?utf-8?B?U292QllBNW1RbVNTREh5Q3hmL3R2VUNhUVNtMU1nYzlXdFBXVUU0NUNxZFlO?=
 =?utf-8?B?cHl5OFlkWk9rZ2lnalB2dm0wTk9PQktXWE42bStRKytnOVA5UUcxZzRrdVlX?=
 =?utf-8?B?RitwMVVzRFJDdDQzZTQrUXpJRzI3VE5rS1ZwMTlSTlcxbS8yZGRnQXY1cXhN?=
 =?utf-8?B?bUc5Vy9qOVRkemdteFQ1NE5WNzZKbU1IZjVuZERaMzRTSCtLMTJHNFpRcjZz?=
 =?utf-8?B?dWFWWXR1RFFIcHZjazE5RG9ZQmZPdm5iOXlDenBEd0NtOXhuYUU3UFUvRXN6?=
 =?utf-8?B?eUZldEltOUJNM2FZeXNsTWRFN242Z2hqVUtENzhxaGtDeFBHbCtXSVpVVlVk?=
 =?utf-8?B?TGFwYkoycTJ4WitTeWNFMnpuazFHTkpmYzNxNlQybVN6YUtSNkQ0YVhLaXZO?=
 =?utf-8?B?MHdBNEhYZ0phOHBrVG9uaG9aVTZkeUJJcXNxZ0xFelhjbmhPM1lRMm81T3li?=
 =?utf-8?B?ZnNkdUpUWTJ3TTdjOHdxQjhsT0h5aktRWmtNdDRFZ1pCeUpUQ1dSTmh3eXBC?=
 =?utf-8?B?UW5JL3FVLzQxSXpUYVlDQlErNDJpc3RML090WUY3bGs1SGw0ZTM4Yk5OTFo4?=
 =?utf-8?B?TnloWmRXUTRkTzU3SGl6M09YY2xjWXJ2OGVuRVRSbzNWYXJ5OG16OU5YcFM5?=
 =?utf-8?B?MkZIaVdFRlZMTmNESTVRLzBiREVOVWNkZnB6QWZoMEt0TDhHbXdvN2ROcGda?=
 =?utf-8?B?MUtta1JlSGhwK0hJblgvOTdSeTg5STJzQ0FFK3pVVWY3T1czUGpmN2VKR1JE?=
 =?utf-8?B?MkYwS016RmVtSWlFR2UyTzE1NWRGM05xL2RlZ3NubDNkREJHeStYdmR2ZC9S?=
 =?utf-8?B?M3RsTC8ydTJna3Zab2dabUFFMnBnTU5PMjIreEdJUzMybVBFZGo2UDUyK2V6?=
 =?utf-8?B?T2U3bFhsYTR3VGtjblN4QkxpdzhONlpUQzFDZTE5WmUrVEhCbEE4cjJlaVRx?=
 =?utf-8?B?bGdYWTIydVBqZjBNL3o3OC9aUEdqcDZRYXVSdG5LNm40emozNEF5aWMxdWth?=
 =?utf-8?B?bkxwempkTHlCb1VBYkRaRDVhUDFpSHJuQzVLOEdLcmpJaW4vUWh6bnVSdkpK?=
 =?utf-8?B?bmZqL09KbkxYMlQ3TU5wRVZNMUtaWXlObDRnd3R0TjU1UmxxWWpmWENQMTB5?=
 =?utf-8?B?empqY3N6dEZtbGFyK3h4Q1d6OVkwOU9HWUhFUkZmMHlGVC9OdE41akJFa29y?=
 =?utf-8?B?empsSDgyRzlmZmF5VkE4dFZiQ1pqcEdlRFNZbVJCcHh1YXJHMXFWSVlIYTUv?=
 =?utf-8?B?YWRwakpLZmREVEc0cDlEazZPc042N0tNLzFFWnRLRWpZMDJMKzBIWHdWbklS?=
 =?utf-8?Q?xmJ8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2Z3T2ZXanNnTGhCQnd2QzU3dncrQUt0aDBseVFTcUJFRThSZkgrcGZwaFYr?=
 =?utf-8?B?L0NwVm1IVzhOTWtyQXR5VHZNcUY4WjNyZ3loc3hEa3NFR0YyUFVNcVVVeG41?=
 =?utf-8?B?U1dJa09HTHNaNFN0UW1QdHNCZzMzWCtzazh4Yk82c0JweUEyQmdDL3FVTUdn?=
 =?utf-8?B?YjZPR3hFS2ZGbUhheHRCL0RyTkY3RFVaMXowVTNNalduNEhUMXVrOUczMHoy?=
 =?utf-8?B?TWQ2NVZabmVVTlE2cUMxaWJObndyQjY5TnNtcm1WRU1wUGpHWlFPVi9Obi9P?=
 =?utf-8?B?K1BKT2xPbXZSUnZtamNPUSthNjRrUUFCWDFKQURuVFhUZ0hpR3RaRXMyMVd3?=
 =?utf-8?B?OEVQck9NYWdKVVRzK0F6TnExdzZQR3FoRzJMeC9DWDd3K2ZpNC81Yk5rcGg1?=
 =?utf-8?B?bnRxeTZ3NkU4b2UrMlRvNkFwZTlPTjM4ckxsNXlYeXl2WkZkK0tNV1AxWFpT?=
 =?utf-8?B?ZWQ1UXBIUS9DYUZmZ1l1a3FjOVBKZHBwRmdlaGFBK3hVRENEOE1JNzlqRVkv?=
 =?utf-8?B?NzB0U3RMV1pWcVBEanhRS1RjRFBUa2svR0w2VlFiUmtuYWxKTnhMYnF5c0pt?=
 =?utf-8?B?MTdvUTBqRVJOMHZEVStNcjRWOXEzcUZwTTIxUWdUaEhYUEZ6NTRkakh0dC9a?=
 =?utf-8?B?OTJ6RDRLVTFaZktCZzJVYVJQcWprbkk5RnpnZzFaM1lXTGpaVFRrd3dnaDk3?=
 =?utf-8?B?ekpXSlZrU1BHbm9xc3RQdENKZUJNVWJEYi9keFBPV2JaZlY4dVRwWFZmTFJF?=
 =?utf-8?B?UlhYeHpiNlNFNWNlMEJycS95ZzVJRTE3QjV4OVNiQXR6RFZnRHpJNTgzdTIz?=
 =?utf-8?B?bEZVYmx5L1hsTys5a1BSYWphWWYvc2pyd21mWWFmZVE5VkFCN3Awb0FJTzI2?=
 =?utf-8?B?Rm1mYlZQRWM4ZGM4dEtZb0h0dHN6ckJNZGoxeVdDQUlKekxFZVpWbWRHdlEx?=
 =?utf-8?B?eVk2a0dpeXljVWltSXlaeGFrV0xIbUh5eDRvcmsvRlBLaER5dDlPOHNUY0N2?=
 =?utf-8?B?NSsrRnJhN2lPV1VNeE1jSHlGeTZxOXYzbUo4YTdFamNsbWkrcWlmS2lDc3Zq?=
 =?utf-8?B?L0htOSt4VEtrSHdrMEovNG05bkErakZ6YUhNY2VSSHl4YjRMbXVQZkx0L2Fh?=
 =?utf-8?B?eHBieDdhYi9JN1gzeDlNekU1ZzBuZVdDOHNYSUxEZW55NHZvU2lVK3N3bVFB?=
 =?utf-8?B?NHZXbDgveW1oc0QwaGZEUlZJNU9CakZDTU5TclhnU0dwRTBGQU9XMnd1cnRs?=
 =?utf-8?B?V2FkQUJNT1dBdURKaWRpOXAyY1ZYNVdZcmJDVHMzRnhqVHEwREsxRm1XNTcr?=
 =?utf-8?B?a05zcldvMkY0ejJQYXg4ZkhrVkgxWkowaE1zSURoV2dZZ3FZaTczanpzb1I2?=
 =?utf-8?B?ZDZjL0xPK3FnNzErWVZlUWhXMjRuM05VSlFxL0xTSzJsRHdMLzMzWDVUTGI4?=
 =?utf-8?B?Ylo4dXoyOW9MYjkxdVJtd1d0dUdwYk56RnNmTDhEQU95T3Vlck81Yk5ReDhC?=
 =?utf-8?B?WDA3UzM0cC9zVFk2SWlsMEtYVE9wc2xmSUVQRmJtMzFpUGtmQ2IzNTF3YU1o?=
 =?utf-8?B?MXF6MmZ5K003a3dNbnFTdDc2RG9SQ2s2MnhoZDlxL2c4eDNNNkNlMWcrWGNU?=
 =?utf-8?B?UGxpQ21GWDNSbktTZTZqWlJvZ0s4QUUvcjd1d3F2Uy96Wm9LakhHTnFnUnQr?=
 =?utf-8?B?ZGJCem5QNHBYVlE2ZXE5Z3gzUG53TmNEcXZXZlJlc3pKbWNPTVF3Q0NqT1ll?=
 =?utf-8?B?UWhJTFgrZWZIWnIvekp4OXVWRlVFOWpKTGUzSEpOaVhiak1zMHd0aVlvKzcr?=
 =?utf-8?B?Nk5KeWx0SFJ6ajE3R3hCbEZMTWRkeDhjRVZjei9PTUhteEFkQWdlb3RLVEFY?=
 =?utf-8?B?ZDhnOHhiSVFndzVnb29LZ09WazFPa29PMUpRbHJNRnZGVzJwUDlPOEQxR3Zx?=
 =?utf-8?B?WXFXVk9Va3JaeUxxWlo1dGhXUDBGeHh4MDlNNzRkaTdlTnlSRFlRL2J5aC9D?=
 =?utf-8?B?REE4VU9EbVkrOXNIQVdhdmlQTHdodlU2b0Jaank3SUVXWGFWeUlJS1pSVTYz?=
 =?utf-8?B?Uzg0cTBGazNDUkhhZ0dQR2NPS0hxN3lnQU0xYnRiYTdYRUgwUmt5Rll5aUZw?=
 =?utf-8?B?R2xSclNLa2pEVHlPczNoVjVYR0JzMUgrQzRZSjd4dUxvdlQ3MVBBWFh5djdy?=
 =?utf-8?B?cXdhNkNPYVRtTlV3ekRSTmQ5dVN3QUNaVERHd3lRUTNBVkxFbTZIRitCZGRC?=
 =?utf-8?B?djBQc3BTK0szV3MvMFk5cUFZWXM2aXkzUjJwaGZTdmV4cFhRbVcvVGhlVy9R?=
 =?utf-8?B?Z05xVWlEZ1UvZGlidVltSWI0eWRmNGRBUFY4L1BUbnNvY0w1QnNXTHZVNDQy?=
 =?utf-8?Q?LOKE7oqomQELzQ/M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d802244c-7c03-47da-add4-08de5d1fcb9f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 21:13:47.7142 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dfnfi+8hgI1NAvY1yaO2B6M5lm2r9waQ/DMOQxi0rgI2hXpvsAe7M8ajN6a+buh83Z8QW/+LGuIvfn4WG80xYF3S9pQgxfFcJ7f9/WFyVnU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7908
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,lankhorst.se:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.wajdeczko@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5F2B88D960
X-Rspamd-Action: no action



On 1/26/2026 11:46 AM, Maarten Lankhorst wrote:
> With the intermediate state gone, no longer useful. Just check against
> NULL where needed.
> 
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c     |  3 +--
>  drivers/gpu/drm/xe/xe_ggtt.c               | 17 -----------------
>  drivers/gpu/drm/xe/xe_ggtt.h               |  1 -
>  drivers/gpu/drm/xe/xe_gt_sriov_pf_config.c | 12 ++++++------
>  4 files changed, 7 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 5ff583699325c..e1d29b6ba043e 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -352,8 +352,7 @@ static void __xe_unpin_fb_vma(struct i915_vma *vma)
>  
>  	if (vma->dpt)
>  		xe_bo_unpin_map_no_vm(vma->dpt);
> -	else if (!xe_ggtt_node_allocated(vma->bo->ggtt_node[tile_id]) ||
> -		 vma->bo->ggtt_node[tile_id] != vma->node)
> +	else if (vma->bo->ggtt_node[tile_id] != vma->node)

this isn't 1:1 to what the commit message says, can you explain why?

>  		xe_ggtt_node_remove(vma->node, false);
>  
>  	ttm_bo_reserve(&vma->bo->ttm, false, false, NULL);
