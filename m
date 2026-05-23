Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KZNAE30uEWqPiQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 06:35:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D535BD1F8
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2026 06:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D18210E2C5;
	Sat, 23 May 2026 04:35:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NdmsEHFr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9984710E2C5;
 Sat, 23 May 2026 04:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779510907; x=1811046907;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LYnZ6ICfdtx6tQYffsgro0Rm2KdVwEdztVEc1scS71A=;
 b=NdmsEHFryneb/zBjjYbQ6F+8QMKL0zVx0K1Ns6xUwbRnWc4SIfBwIdO/
 +KwHxj3ySKK+7S3rBMqyJOYD0bqGJcW3SxghYypn2huwrmHdwzmCKjV78
 R0aL/0RFu0f28NVDgl79ckSAY0TyrBKIlEOX0DSJp1YhuG4pRIPVMHBwB
 t7JB2MH110hqq5y3OPWRAQlCsq7gwXcWKXQ8yohAOQYfI1MwFeEmARz7Q
 RhdBcVxuRmbu8EaUp7YzpvfSiEi4FVgGfG2VYAPwed86gB0mAdvsqVOIH
 ANEwsQ2kp93sqzjc4ii77SG97hbWLRJUkDv0PTFXGWPoLk2V28sD5S+ZV g==;
X-CSE-ConnectionGUID: 5tT9cAc9RBqiPo986fUcaA==
X-CSE-MsgGUID: bKc4rKodQhCTBuBvbo0rBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="91545628"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="91545628"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 21:35:06 -0700
X-CSE-ConnectionGUID: F+8RtltSTtyilPpGD3QZlg==
X-CSE-MsgGUID: 6j+ZuLZRT52t/BDF+6TJIg==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 21:35:06 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 21:35:05 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 21:35:05 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.6) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 21:35:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CzSab1qKdbOzXuiYm9bdNdG8YXaMYYhh4aaoPdIzqYXuw87BOYmz+sbgZONFWwH59bN7EKtzuCxUK9FIOdP38iBDxzW11lJ7Tor+BeSQkEnZYecmYw7HiYc6rWAKu5gBRz8ZAWZcBzLdQL+rD1HdyPhvhEpSH5NMQ/ES2INNPV+6+63WP2g8pB8dkDtH0XembPv6IL+NA1zZbf7/Y2ORZQBIuOzyIBBPI/TlPFhf6aaQuBciEV8BH/tLjl/wcVSXWLSfxtIzpIEQmTkuycxoLl6gb0s5gMSj0AS47Tb4sGAi0AQsrFLPZH+dDrGHsrlWVs1Z+IraLeoIDJF7+RXmjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WdD3wzCClCFvTJ5ido07Wwgcfud3mKtkNccVWGl+of4=;
 b=m/eU6beikJXmbfEzwQKMvPH6YLi4FrrFRrtyeOHmajFU8UCWwO372+PiG0qYGItRIobi8iC7YAwT2TCyeyVuo5np1uxllhH69r9d41n7ef3jXnDBNdA8SMOdPR+g+XQ7ivx6wFanxWJnPbNL6NhLhVCFy1yJZTDlARRGOhtf7fDo3wYPdd5G+xn2Xv6BuiJe9eTH4pH1e7AgjKRtxHRMOmcMY9BwoLeaiHy3E0PnujbILiWoGimUu+D2E3UQ6jGpgPCO92b2Wby7DCNpNmz7tlv9scmtOnYtJFV8Y3BYRXvsGM7dym7Lujqx0qMltwpMGJ1n016/ckKSrzEoQRcGLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6301.namprd11.prod.outlook.com (2603:10b6:208:3c3::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Sat, 23 May
 2026 04:35:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.21.0048.016; Sat, 23 May 2026
 04:35:02 +0000
Message-ID: <cdd6c6c3-c29f-4ba3-8bc5-e47d141c9895@intel.com>
Date: Sat, 23 May 2026 10:04:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] drm/i915/dp: Compute and include coasting vtotal
 for AS SDP
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Ville Syrjala" <ville.syrjala@linux.intel.com>
CC: <jouni.hogander@intel.com>, <animesh.manna@intel.com>
References: <20260518035502.2909359-1-ankit.k.nautiyal@intel.com>
 <20260518035502.2909359-11-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260518035502.2909359-11-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0235.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f4::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6301:EE_
X-MS-Office365-Filtering-Correlation-Id: dcc8ac7f-4e11-4628-e71c-08deb884a7a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|22082099003|56012099003|4143699003|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: Onv9zOpxAgGaDhefQ4LjmeoDmMcpNYs7u8pwL9viP37xnKUjjWXmOyxME+qMHUrIqy31symXiAn8OXWEO98s4zy/Lkih5Tmua2QfLjPuLaq0kwrioSM/iuy9Mk1Uu1c4+ui6SvQGT3GppxVxOBNHzgo7MZp/Mr8qLwHxAbJCPep7YWqsoHMOdZ6LAtDcJwfLSGP90/W5e/jSndP2RXqjozAd8hj3/KV7nGw9Q7MdhOY1/a5hFuQknaADce7hLshXx+hx0UuTcEXEvt7HD9vsXk5G1S8AG5xgUnkR5k3zJdEVm90s5gbtF0GENdvqsjyEUSCv2FJjSa+uwRpLldxVCsPF7568yxL3HqMQmXlN+LiwjEQb0EhJPKPurmqJzFwhESNZsyFD/+uDjp17jV78fm/l4+GTcvD4MwfMTbLwdWil4nSdexrk1OuHo1o2nl1NKt55yRvtQYzySeGdfyzO5ROu1zAoP3uZlvJMdMsb+ZwvrDgXNbiGLaShYdyiznmAceDfhWNJ/DWII29FBDrnS1QZh5EN2ZZtXgPY1pzHlQBeGUhNUR1ANTDw0v7mOKvkqR/2MQRNppPCYZ6b3i9utR3xywqgG1PglZOKoOxibPjFSxymZtuGnmujV69EGwA2NAOhyuSNYF20HuKyog5ggwl68FXOh+QW8MTMcbpAJ8x35lH/qOPr4KleNYmitz9k
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(22082099003)(56012099003)(4143699003)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTJXTVFyckFqdlBtS01kSGRVVUdwY0grb1d6SktMd29LdFhIZENnVDNlYzdM?=
 =?utf-8?B?THRTQVdycjZhQmVEU1ZDdHh0bGw4WHNsNFRVdTQvY0IzQmVwT2llVkUzTEN0?=
 =?utf-8?B?eVQ5RjFPaldOSVo1cVZNNVc4REtiV0YzWDNLYzR6blVvWVI4K0hjU3lSK20y?=
 =?utf-8?B?V3hzdExReEVXQjBiK1JPaTFFelR2TWhWL1pYdk9ZTW5pN2xGNUpxM1dwOFlY?=
 =?utf-8?B?ZGg5M0pmakJpZzI3TzhIWnFPUFQ0WW5rd2w1TjJNUFd2cmhMNU02ZDc3MXJD?=
 =?utf-8?B?UDVkQUFmRXZLNmNyWmtxMmk0STRBTG14ZUpIV0s2aThxenl2aVk3YmVRNktj?=
 =?utf-8?B?S3pRUGxuMENVQVhscWorN2lzTU0xeG5NenRHNFppY01nZE10QkJ3NVUxenQv?=
 =?utf-8?B?TzhJcUtSWFhYK1hvSjd1THo5UGRrNW5mZTRlM1pFUitQKzVwdndwT0tpdVhy?=
 =?utf-8?B?YWppMi9GdTk1VHloRENyT2xSSm1saEhOVmYwU3RKYmMzZ0JDbHF0R1E1a0hn?=
 =?utf-8?B?M01QSUUzbkpsUC8xQ0tTblFCMEV3TWp0eHZWSHhJb09YUGIrLzZhcktMR2FW?=
 =?utf-8?B?dEw0QVpSdjRHaFowZ0VIVnFHTEduZmRMa1IrSGR3dGM4ZVpkdXJuejZHanc0?=
 =?utf-8?B?NFBjeS9kUndwL3lYem1oc2xxRUlHNHdUclgrd1FIOHgycUdnd2RtQjhpais5?=
 =?utf-8?B?SlVCUVVJalFIU3cvNnJhNHZiR1lWclc2VjVNa01LSnJjbGhsNmY1NEozMTN1?=
 =?utf-8?B?Um9CRG9OYlR6YitJT0UwR2pVd0ZaWjNRQ1hpbitSblNyZEpHVVlqM2sySDhw?=
 =?utf-8?B?R0JLU1lETVB4Q0RKMUNJd1dQUXJDcGpUNlNYUEpHazM4WnJwTTJvWDZTbWVW?=
 =?utf-8?B?bEZFZ3lhUEVPYXBJQzFrRCttTEhTUWxwMzV1QzNETmZoaEZmeDZqZmRCb0xl?=
 =?utf-8?B?Wk1VK1hpM1RteVRqYlMyOU9XS3dWOUZqY1FMb2ZENWxyMjVPbWJ0SzRlRE1Z?=
 =?utf-8?B?R09walhkcktFS043VitwemZSMWMrckYxRU84ajhtdlhUZzdSYXV5eDI4QTND?=
 =?utf-8?B?V0N3dHpqakE2blFsQURpcjZITllvdTRwQW1yK1J5Z2tIM05EOUFqNmp2SFln?=
 =?utf-8?B?Y1hXV2VyTXFXVnFRZzNQYy9uTHZzejlZcjJRZEsxaS9TRU5DUFlWYlJWaG1X?=
 =?utf-8?B?R0x1ZHUxcGtaWEt0Vms5dFkwd21oNnFOT0I3WGJpMytvYXpLbCswM25IdTJZ?=
 =?utf-8?B?dXoraTBIOW5uWUlPOVFNbkFkSDZveGY4RytuQmNTaElFbktOeXdZVUpkNzls?=
 =?utf-8?B?Nk9yMk52QnV4OUh5Z1pTOWJxMDd2T2hxd0NvL0VWRXBaa09iRnliWStrcmNy?=
 =?utf-8?B?cHVIaVJ6cmEwOTBCYm5zQjVPaUltNFFGYVJYdytTZ3pJTUdSMUVOdVpjM1hx?=
 =?utf-8?B?Uyt2NTFCVy9CTnZ1N0d6bERZWC9EWlFQVW9iYklWMTJ1bGdIZnNzaTgvTnVQ?=
 =?utf-8?B?SDlGcFpVUk16dEhMVDZQVWdQMVZUR0xJZ3FMdURxcjdXSDNXOC9tY3EvaDNy?=
 =?utf-8?B?TkdEUUY0M2htRE82T0FXV2I4ZEp3bEdSRklGanVFOFhqbXZNZVFaRGtrMk9H?=
 =?utf-8?B?YUJXdUt5RWw2TnpJeGZzSGcrTWVCSWdpTVlTbUpCRnY2Z2RkdEJ3Y2hXb0VR?=
 =?utf-8?B?MHl3Lzhrb3ZFSEZFcDUyLy80SmNHSk1FMzJUWVR3TE44dno3L01WOTdMRUFk?=
 =?utf-8?B?clRtM3hEQWxnNytIT2gxdmo0d094TS9VQjBVODlmY3FoRzV2NXNOUWxjSktI?=
 =?utf-8?B?VE5iNkRwdkhCQUp0WFlsaTA3bWZHRmJZTWZUMEF0WG1oN1BzWTNPS0szUzYw?=
 =?utf-8?B?a05Cd20vSWc5NHBKTCtEaWJMNXl5eGptL0ZJdTQxUzN6Ni9GeU9iYVRGU042?=
 =?utf-8?B?WFMyM1lEaks4KzV4eVJINEZ6YXBqeFdKKy9wRzltTTdPQlYxOUxuaUpMYmR2?=
 =?utf-8?B?WXVuTzAxK2syS1o1SHdZbFh2VGRhTWY4WVlEekhkWGdvcFluSlJOK25ZOVV5?=
 =?utf-8?B?UXpxR01sZ3RoRGgzUC9YMkF5akN1Zi9jVE5JYVhlRFQ4cmVMam42RG56amlm?=
 =?utf-8?B?MDg5NTl2czdFTTdZNDR6TmxoQm9yMHJiT3A2eEFQbXdLVHFLUlduSmJ1VHBH?=
 =?utf-8?B?WlRwblhmMWF6NENDa3EvTWR6cHAwQnpFSUxBVjRzbThvUjJzTVZsZVljVnVo?=
 =?utf-8?B?dlMrWTRCMU9jeTNIL056Z1RQbXlHNDBISjFqTkpFNjNkTytTQnRrNmNDMGVJ?=
 =?utf-8?B?Q09LTDd4azhoZ0JNTzVHZUc2L3BwSVFtRFNERE42cHdMNkhBZVpoeVQza1U1?=
 =?utf-8?Q?1JXz5ZL0/jUVcIDs=3D?=
X-Exchange-RoutingPolicyChecked: c0SXzkc6y+0/CSRHFHACzB4VMFwCQf56Goo3TY/2koxVGmtCw0LN0KbU0fp4Ok7wHsyN6/A0tbN/eU+aRqDJqp6GuxjVSQPN1QyAHDyv5ZlUEr3iMd/RXvPUKXOLPIVIAh705b8Y4WSmbs+zKPYJ6IL2PQRdqkOzn13wqvnDXaaFqmYf3GKGLWgpBqVrHmmqbies/XH319Vg9ibKJiOEoij60F6is7922RmF3jXhtqtIGJdqDxeLwWKYflbKaG2qN6XRjd8p7BvLn6veDLa6TRCBC1F7le8SstXcKqL16NXs+LvnFk2A877p9wUc16SCZSi4Y7cii2U3WzjPHMFohA==
X-MS-Exchange-CrossTenant-Network-Message-Id: dcc8ac7f-4e11-4628-e71c-08deb884a7a7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2026 04:35:02.4692 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EzUL4HUOcnnvxi/Ac/4nk//IgCEpQZSFVTFMKBNPt/AtGp5N1itMyX3MKx25KgarfDD9ZJ+AFSQxC8MHsKvnq8BhsjUJinWvGy8vDej943g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6301
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A1D535BD1F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 5/18/2026 9:25 AM, Ankit Nautiyal wrote:
> DP v2.1 allows the source to temporarily suspend Adaptive-Sync SDP
> transmission while Panel Replay is active when the sink supports
> asynchronous video timing.
>
> In such cases, the sink relies on the last transmitted AS SDP timing
> information to maintain the refresh rate. To support this behavior,
> compute and populate the coasting vtotal field in the AS SDP payload.
>
> Include coasting vtotal in AS SDP packing, unpacking, and comparison,
> and set it during late AS SDP configuration for PR with Aux-less ALPM
> when asynchronous video timing is supported.
>
> Note:
> The coasting vtotal value is fully under driver control i.e. the HW does
> not overwrite these payload bytes. HW only samples the PR_ALPM_CTL[AS SDP
> Transmission in Active Disable] bit during PR active state and reflects it
> in the AS SDP payload at the appropriate time.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
>   drivers/gpu/drm/i915/display/intel_dp.c      | 19 +++++++++++++++++++
>   2 files changed, 21 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 757a78c75bbf..043d1c667379 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4889,7 +4889,8 @@ intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
>   		a->duration_incr_ms == b->duration_incr_ms &&
>   		a->duration_decr_ms == b->duration_decr_ms &&
>   		a->target_rr_divider == b->target_rr_divider &&
> -		a->mode == b->mode;
> +		a->mode == b->mode &&
> +		a->coasting_vtotal == b->coasting_vtotal;
>   }
>   
>   static bool
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c1c6f394eb0b..69eb474fede7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5181,6 +5181,9 @@ static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
>   	if (as_sdp->target_rr_divider)
>   		sdp->db[4] |= 0x20;
>   
> +	sdp->db[7] = as_sdp->coasting_vtotal & 0xFF;
> +	sdp->db[8] = (as_sdp->coasting_vtotal >> 8) & 0xFF;
> +
>   	return length;
>   }
>   
> @@ -5365,6 +5368,7 @@ int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
>   	as_sdp->vtotal = (sdp->db[2] << 8) | sdp->db[1];
>   	as_sdp->target_rr = ((sdp->db[4] & 0x3) << 8) | sdp->db[3];
>   	as_sdp->target_rr_divider = sdp->db[4] & 0x20 ? true : false;
> +	as_sdp->coasting_vtotal = (sdp->db[8] << 8) | sdp->db[7];
>   
>   	return 0;
>   }
> @@ -7471,6 +7475,21 @@ void intel_dp_as_sdp_compute_config_late(struct intel_dp *intel_dp,
>   	} else {
>   		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
>   	}
> +
> +	/*
> +	 * For Panel Replay with Async Video Timing support, the source can
> +	 * disable sending the AS SDP during PR Active state. In that case,
> +	 * the sink needs the coasting vtotal value to maintain the refresh
> +	 * rate.
> +	 *
> +	 * #TODO:
> +	 * If we ever advertise support for coasting at other refresh targets,
> +	 * this logic could be revisited. For now, use the minimum refresh rate
> +	 * as the only safe coasting value.
> +	 */
> +	if (intel_alpm_is_alpm_aux_less(intel_dp, crtc_state) &&
> +	    intel_psr_pr_async_video_timing_supported(intel_dp))
> +		as_sdp->coasting_vtotal = crtc_state->vrr.vmax;

As suggested in previous patch, I will drop the condition and always 
populate coasting_vtotal with vrr.vmax for now.

Regards,
Ankit


>   }
>   
>   static
