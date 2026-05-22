Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPtnHtl+EGrdXwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 18:05:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C365B755E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 18:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5561810F677;
	Fri, 22 May 2026 16:05:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kSDfr8op";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D6CE10E8E8;
 Fri, 22 May 2026 16:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779465942; x=1811001942;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=9YMuXPO5EOyxJEJdpPhFjn1reyAt83IvFsRziUwhAHY=;
 b=kSDfr8opiXH4QcU+ysJ6aWLAqjtTpWrSIdd7PzO/0+7MiYvNWNRVKBul
 7Lq0bp4Xj/7RmegqbM0qS5n8SGDQlX+GTU9H/T1gjcYb9DoJoEJforDn2
 1kHv3qfALOzaVqPbe1mNYc7XAr/5OuAhR0J3+ooKPU/fyeSVr6ATYpflT
 FJ9YB1RjqxZhgLRFUSvrbDWGx8tQ+AHh3vgYUj5F/NjJXDkdLesUrBkMI
 a0dBABiRZFC6pUnDf6VJbrRSt3NAlTGuLUf4MlQbHxFXWvklllOvVudzb
 /i7vf2Dp3/Nt16RSPq2J9XEGGvbq7TFTlXwGgvUVyifL+lmuYSz2UjjHZ A==;
X-CSE-ConnectionGUID: w9STQlARQTymuXsgRfiJpQ==
X-CSE-MsgGUID: bb3x1O+vTX2t10ig4r+O1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84016354"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="84016354"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 09:05:42 -0700
X-CSE-ConnectionGUID: 5Tr4lr07Q5m7la3yMtoy4A==
X-CSE-MsgGUID: ljUYhw5LQias/vkuzg/GcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="237916950"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 09:05:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 09:05:40 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 09:05:40 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.41) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 09:05:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lyBzig+6IrcsmMuKMMZRTrVq6ROzk2QsdOrNMoubC0NP6dWHc8Z3T7RLVHxVWtXhoRoqtY72GQ52idt2muDQQdW3Dc0BCW7CjjtOdspExwuTO8KeDVxKT1CjyMO9II0LwUvntPNXlIfZfCS07TX3SLZPVOGJRddJJ1grdVF0mUvrnfTrEkY6B+A3QwKOYfYEwmaJ+aCULTKhLWheT+IYmQZQ5E7kHT4EoBeWqzXh7q/r9QIHcCoGEeaizs1ef4RnKWA61z4ODyNu0hFMrO4DFg59ZyvmBq1qQuf9lLEH6WTk6M7UePkfod4W1RIpjoqhlu20kbWAIOsO+9gUciyGHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OxGyWcq9p2RRSi9uF2D7MKBYqiI11VC3XpesXiXSuXo=;
 b=mloxW+iB09azpU6fuZ9sCe/OY3nGnn/+2wiwYJ8paCzfdOzwge1wvWeM1WmmvJ/vqIUJ+ujBPecegiI5bbFpbuM237r195hqfNA/DVLplSwd3rB2Zr54T93VycMlTkgAeswTCUvGi6yYdeuTqdotExsZDuLOeLlrRxvnaBcKfDYmrSwnjz2/oxIZqptOQIXDOtJkK+OK26kdx+T/pggXOSKGUGsoF3qogrQhoN4XHJQvkDt0GPuoJJi3hZk3FS9w0dQTGHhAL0Q2PIFN07W+zLA5SV25CJP9QFwwXishrN7ietfDbEDwR7v2+1GufiejYMZYJdu3xNI5AVBeIJHNhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH3PR11MB8415.namprd11.prod.outlook.com (2603:10b6:610:17b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 16:05:37 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Fri, 22 May 2026
 16:05:37 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, =?UTF-8?q?Jouni=20H=C3=B6gander?=
 <jouni.hogander@intel.com>
Subject: [PATCH v2 0/4] drm/i915/dp: Sanitize link capability change handling
Date: Fri, 22 May 2026 19:05:10 +0300
Message-ID: <20260522160514.2628249-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F70D.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::38e) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH3PR11MB8415:EE_
X-MS-Office365-Filtering-Correlation-Id: c35ee57f-18aa-41f5-4fd3-08deb81bf63f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|11063799006|3023799007;
X-Microsoft-Antispam-Message-Info: gwFfLhRsEA3qIFHuTddlsV1Tt2z40aBtsMTNuKymxk1b0CPu2KWPWUZVM9Ji1/1vaQ6NzH294TacUPrJB+RR++bheMbSQc17GzlZZ390oBPd9qNVr54ApaPCdXKVwSXQ2VTxfNc32uRH9sqnWOzeCmXe36fllEaX2bBDxfrlolbtR6mIeZJb1Fqv3YIVyq9EBoHtYC3FCbDEPv7K2SuN/zRsBcUL//7KXNTiaqjKaQ5Z3TCGAAzCKmtI1Zwtqk1x2GkDXfeOObv4p5EWOEVP9/5v9VSVkkfASWSnkUS9W+pUXxxfNhRAx86WSLXkNV1aWB5g95VNtoufnYJmfvAji5BzJAVnswzlPgevE2DY+41VTvS6mqB1U8w/ZV0Jne42QjO7pfbST1mWCwxifYbTWNMMn9cLoK2vLRkiJVjIGc5TuW8AYqWrKmHFEE/p4n1nRW4DrXuCAxgbkm4+ENGf+0s5QJ0em1vzEyRsJV8t77VPlZL00/nL2uFFJVC0fkUHIzcDBU33GBj/1oBOFS0bg+1KF+jN7WRF+NUg1xL7GmsPhF8gzYsBHQFNKI7ZfV2jndynEec0TA30pVJDy9BcFpr5JvRHIvHZF75Eg3qCVO0++4ymlmS1ggdWyyhWJaHNqXcwYcwMi2idFjESuxsh+JKgHBEOrRYjWIGz2cGfXAq65IvQ+diBGkWEaqazcTNFHWOdv5r9h8yk3bNkVwKV3g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(11063799006)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0JtRmRhQjZIdXUwY0JySWhsMEg5M2VnM3ZhNUd4N3RBSTJ1bm40RnZ0dHYx?=
 =?utf-8?B?eW5DbVNRRmZKSm00SWJHREhNbndrTHdDajVwOW8xR3pDa1NlcHV6c3N1aGJQ?=
 =?utf-8?B?L1Nmd1BUNG50RG9LalNJRlFudzJ5UHMzaTl2YnhrWHNiNENKNFd6ZExBbTJn?=
 =?utf-8?B?bW00bmJKUlM3Mi9JYmwxMjFINjlBVFh3MjhENmRPR2o3a0ZSNVBHNWIwaitQ?=
 =?utf-8?B?Z2xnSzkwdTRFSWU5T0VoOTFIVG5LcGc3L0xGWitIeUN3ZHpWd1lLQ2pRMDBi?=
 =?utf-8?B?MTNLcWhNRnN3SGlQZDFjQ01ZVk4wS3ZqVEVNSlBTUWpqSXZMODFVSEZiMVZ3?=
 =?utf-8?B?UTh4Z2pLRXNEaGZHL1pLaDNId28zRTdWRHNtbGptZENzMXJwVVhKQkpmVjN5?=
 =?utf-8?B?WFYyT2V0NVhPWitCZ05qTEF6VmxEUlVZbkhZZkEyRVo2QnRFQlVlaXVlY3kz?=
 =?utf-8?B?SGNtYkFrcFpmWXhPTnRLSnhIVUwyQVYzUjUyTEpuQTdxaTVjMEhidzdkUXBv?=
 =?utf-8?B?RkRocTA1UTdyR3B5aUF1YVIrMFdIRk92WlFZY3NoSnJ3SForYS93ZWRGd2t5?=
 =?utf-8?B?U0V1UElDVDkwV3ExVFhrRmxIRWF2M3ZWbjhPZ2pTd3ZDaEVldlZTdFNiZkg1?=
 =?utf-8?B?U2tuRFJTUmVZcEhXMVdUMDNyWVB4UGZ5bFh0TFhWWTNTZStzRHhVaE1odUp0?=
 =?utf-8?B?SDhtV045SmY1KzdXSUZRcFVTSzhpcTk5L2pjc0pHSHVRTFMrYUpvSnVsc1Mx?=
 =?utf-8?B?N0N5L0laeVJ6eFhHZnovQU5peHlLTnNkRVBRNzNwdXIzRDd2TjE3VTdYSW1W?=
 =?utf-8?B?UklEdTl2QlpSa3M5Tm9yeHUzZzU1RGxmU2tEVmo2bnBBMUltWkY4YkVnc2tk?=
 =?utf-8?B?d1pOVWFrdnNpa0VIL0Y0TUMycmJDSk1EOUNDd3BTM3NnZlJLYUR3TzBCdllY?=
 =?utf-8?B?WWhIQTNNcEJXYUwzM0htQUNBZmdhY2ovQ3R0UWpKSElKQXNJTUIwbnNOejlo?=
 =?utf-8?B?M215RDM3c3U4elFTTlFpdVlWRkVyYlo0NHpickhYNjh4eU1YVWpib1R6MFZX?=
 =?utf-8?B?eFFMekIzS3BWamZ6V3BRN0hsN0pQdXNnY1luV2puMXg1NGtlbnFxcHBLcG9U?=
 =?utf-8?B?WU01Wk1mVlBUd2hPZDRucmMyR1lYOW1WejZPV3Q5N2ZmTE82SVdEZm0xVVcz?=
 =?utf-8?B?eWJCMllCdmNFV2R6d0twRi9PZzdlSVRscnB6N3luMEpFeDRrNEF6d29OUmx1?=
 =?utf-8?B?RDc2ZTVVNFJkRG9VRWsxK2J1TEh4QTJ6NmtVRmVRQXpWUHBQckRXWm5SNG9s?=
 =?utf-8?B?R0JkSVMwTlM4SUFwcW9FNGFFWC9RQXViU0JtZ1VEVE5tVjNIL2lGdmNIT2xV?=
 =?utf-8?B?SDZ2RUd4WEp0SjcvY2ljNjRQOEx0OTRqMHp0N2JVanZKZXprSXpxK05pUlYy?=
 =?utf-8?B?d1RER2h3SE9DTWNad2R3cG0vbmtYTnNnUXFoSWxKNWNCTmhBVFFzTFFXdVkr?=
 =?utf-8?B?OHl6UmpwNk5LempMaEtJbmtpS1BZV3hIaGlGVWJRQThETUdoNzI1M2FDRld3?=
 =?utf-8?B?b3lSeTRBK3pJQ0tIVGFHTFRwR0E4QU1oY1ZIWXNOSEZPcklaMkt1UGxPL3E5?=
 =?utf-8?B?TWN3SmprWDVnRGVxR0tQVWl2ckQwQlpMQjhMcnpLUUJZZDVnQXVUcmF5Rktv?=
 =?utf-8?B?YUFsZUp3aGFGTzFSNHl6MzNBaGlmSldYMEEwQStBdy9jOWxkdWc0SnR1TENl?=
 =?utf-8?B?aUFwMlZMUHhNdHhhUU0xY3E0R1NNL1hkcXR5MWlKNFBWOWpQRDBOMnFBUjJP?=
 =?utf-8?B?aWY1VFhwZXdvODdWbGJ4bFJsYVNTanFNWVFIQ2dVaW51MGI3SFk1R3o0TVJV?=
 =?utf-8?B?YzdSU01LRjA4RWxPY1ZaYVlwMCtvZGtWZUFRRkt1MGQwZlV5WFQ3UDZHWG9T?=
 =?utf-8?B?MzExTVFVZUY2eThEdjJ3NFJqQ09QeGpDQzF6N1BkeXNBb3V1aWsvU3Ztem5r?=
 =?utf-8?B?TEVTb3JLTHRUNUY3VnlITFJFN0tsTzQ4VCtNRHE2d05kUXcxaVJtNjY4VlAv?=
 =?utf-8?B?Mm1Qb2dQMUtHRzh0S2YvRFdscWpnMVlXbEhXRm1tSlVTR2RyWnIzczFnaHE5?=
 =?utf-8?B?MjUyRUFxR0VLOCtseUFCRDVzV0tnUElzZDFybGNEU3drYTZMYjRSTldFREt4?=
 =?utf-8?B?RGxpeGxoSldZU3gwTE1LVklMdlRJZUdTelluSEVLQTR1RmpIYTZaZHpodmxC?=
 =?utf-8?B?cUVhL2RNN1pPcWdHY0hoR3haYk5IVHFQRm1WSDNtWVpOZEdETlkrKzJiRk02?=
 =?utf-8?B?SmhXbklRblgyMmwrVWxITzB3RDB0cGVNY0o2WUY4bXZ3WEN0OEdKQT09?=
X-Exchange-RoutingPolicyChecked: hVm5MFMWzCN/af71n1Ay7tx70r/TZbsU+aPOBGWAVc2WXmkkYco5yvMhsTi8UOvlikSzB5WqrH9aGNdc8AuGnaAdYn4+91Gg/3lnKJcZ/uZOnmFLCyrLoXjCdFa/XQflJL12do/bVJF3dUzyXtD/d2bOItrCT/NnMAT7LhfyXafGX1vTxFq8oPvJ0o3mrHGjn/KCL6NtFSCeSA+Cf6nabrh3v7knDsKD76wb8wnnZrhl/H5EB4/yMqmUTHrbeIqvsEfHyq4ygTjS1K8aLxu9W/bJeehZp3WwbBPUYGC0Et3TCp2N3WRwyZG0UCjUntffYdh4KUZHr3GrlgxLyn9jDw==
X-MS-Exchange-CrossTenant-Network-Message-Id: c35ee57f-18aa-41f5-4fd3-08deb81bf63f
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2026 16:05:37.1941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I+sI429mD22oO+fwEQdzoTvbTITIiTWmkV1mn/mlKhjYb7YWs6PvTzQ/SdD8obiVWcGNnHtOrvr9amLEuZNcdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8415
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D8C365B755E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is v2 of [1], dropping the addition of helpers to reset the link
state, addressing Ville's comments in patch 4 and adding Jouni's R-bs.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>

[1] https://lore.kernel.org/all/20260518112427.2460725-1-imre.deak@intel.com

Imre Deak (4):
  drm/i915/dp: Reset link params after a DPRX capability change
  drm/i915/dp: Add helper to set common link params
  drm/i915/dp: Cache max common lane count
  drm/i915/dp: Detect changes in common link parameters

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 66 +++++++++++++++++--
 2 files changed, 60 insertions(+), 7 deletions(-)

-- 
2.49.1

