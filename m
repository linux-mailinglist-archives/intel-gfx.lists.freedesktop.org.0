Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3aevAwxcMGpcSAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:09:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6DB689B0B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:09:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=O4rzY+cp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE35310E614;
	Mon, 15 Jun 2026 20:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4237210E60C;
 Mon, 15 Jun 2026 20:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781554184; x=1813090184;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=DiraH7HV2Jdcp7z2yNxwt57scu1J1epPabSj24hVaqc=;
 b=O4rzY+cp0NHfsugFJkUoBwCBOyO2RiUdlYkrnnJjXjU7lTbPtQdumNMQ
 VzCAdrT16x4n3h5R9rodOMb80+C6T48LOCdlKEX+RJpFTDVLtXyLHW6NW
 NdTKGI3C+j/h8hWMPUClYq86fVGob+wevgteiasBmdyTPkEvkHvPZjrqV
 +K5waPtPV5vjc6ohCpdJSF3DXCJA/Ip0DhtIWYG08HO0KrifQ4pOlGExo
 Jbs9vZ+vAMF8W+dZ1IyejCttIAqQT8s8bYwj0s0bZgezrXZITXMV+nHc8
 x2DcYLemLOVeX2k/yTXyJdXhYFTGDSomXijZ8ap7PjYLWeoSczkK2Pprw Q==;
X-CSE-ConnectionGUID: jsGmXMAxQ9aT3ItZtUez4Q==
X-CSE-MsgGUID: DHfFOjJvRLyuWew4OfkhPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82344899"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="82344899"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:09:34 -0700
X-CSE-ConnectionGUID: 8vATXSSKQiizF5NPASpHcg==
X-CSE-MsgGUID: 7XFky6pLTr+YXnSR1lIGZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="285682183"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:09:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 13:09:33 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 13:09:33 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.45) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 13:09:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bvfX+7yhXBCmPMR4YDbpJA/Gfu8dd+/lpuiDUAQcxLFi8FRGYmGNVTfe18+vmca+drgkY9yy4O0MXpiFdMW5xUgvE+eIQKj6UvGWPWj+hxpmQqqJ9BuiSib4gs2KVizotCC40ZaN6A6aL8dyodVOyDRtsJ499binJqFQBFuPdydFNC06PaXFDo2utTr6Z67bwEHf575xa24PEngSFuxC4V1lKy4uKtxOZmqJa/v2pMp8wNJLwmmfK8hMj2b0nSckeP9lW/9XtcEQABQhcIx1V/UZOnVvCXzMA/TV3oOIjW5NvXiTutuSr/MuPcnqx0Pg7XuorZFU/hPqkhoSxl7Zkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pixshOnS0k50hnimj/GJn8jqIE0LSsJXvG5BdHTzDIE=;
 b=h1rHBgDztxAmvEua2V3vwBFelxgc5AP79vxeDzjm5ycPzVolyBEgRllFaUQwEgEgDQSXUC4vtgpqqsClftkpiwAglrUXEHYF4Gb96mU7eiKch9gPe2XZTOmYDBNQxi4CkIWIMG6+yJGCLyVdjrk8+D7E3yMpV5Jz0TjJporgVDpAnD1uTqL1DX5Q20957/oW50w2V1rAARZi6NBiHFMvKUiDUcFwRaRubwkUcu/j+cV5d4w5WHmQUfmGyyAC2f+IXS9+AVT1DDUv6JWLagKt3w1vM+H005pCB8wOwK7gyIGxQKPCJvbUw32G5HuFDmuUn//OTgqNpDaxYZzlLQ91XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by DM4PR11MB5279.namprd11.prod.outlook.com (2603:10b6:5:38a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 20:09:29 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 20:09:29 +0000
Date: Mon, 15 Jun 2026 16:09:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/4] drm/xe/display: separate d3cold handling from
 xe_display_pm_runtime_suspend_late()
Message-ID: <ajBb9sgCnlh22eY_@intel.com>
References: <cover.1781527161.git.jani.nikula@intel.com>
 <83b257cac313967d4344185669187dc7140049f4.1781527161.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <83b257cac313967d4344185669187dc7140049f4.1781527161.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0051.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::26) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|DM4PR11MB5279:EE_
X-MS-Office365-Filtering-Correlation-Id: 2458a0e0-9941-42ec-e154-08decb1a01d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|376014|22082099003|18002099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: JG9CkLCLkBt6fej28OnmBNWv6GLtnETaGWo46LJf7ybI6lyKUpoIwDqUITEz9LNXXoqG9ppz/Nz96+J5TKP5XrpAgiiJXaAVVulEcFMDt9pkfzHtuofUQ+SZD8FklM2+K3EoEfEHLmGbLPKeK3wsiWdvLEP1nR25XxxA4VnBKu03JWlXh2Or+gocsS0kb3q4sh/PiyD6UyjeHxsZu9RjezdhkHm9duzQVJjN4i2o2ok8jpeg/Z0O8NYOqTFSLQ9pgPhHfhrQiqQyWii7nvToNNz6S1CNR54C8S+ph0KWnRUDXzs0MB8xaU3/PV1StvzC91LHHApUS17ikKkU/k+/F/iK6ThowiN12JpVIVY6j8ixp7kYtez15ZYtj+Aj+XW1rUvLruovdDH5NrDWXXNGrwC3a5btyybSOhaM4nX75TKySPUUYarE2ZmyxdT03EU3Ets9enrvTJts07HKMQmZvEut87H43JYQ6s8C7cIIV3U9HQ9wa3QfNXuHpusnRm9zq9VOohze3vPoRT48MrDeXZ1fFopGbN+us9kDKGa+fT4hfgnX76+0EJhpWwFWCs9K5OubzutM/x0u+QNYUhKIr3LUwuLRD4BPs6uVcjD8fw3PKrdz9sZ72ANGDXJSnrb46whBdKFUdl8HAEM5R7S9R7r6mqy8geVW9fzh5SeprW6j+aFn0AzAF+rQNlT/SG7U
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?m8k4zydfdJdIFX8ynDuts3PIYCjcPH0Jd4g34/nIMS0kxK3Jb7zFVzQljd?=
 =?iso-8859-1?Q?49zNTAqL99Le7toBXL8Y6u/fup7pM+LGsalmsPZCFRuGsZTE+WAR1Hw2Z6?=
 =?iso-8859-1?Q?D+9C3fSboPyUrdHgs011F613yJfNjuOnB0vNsBmOeE0A2D2s8OKDGi3McG?=
 =?iso-8859-1?Q?JEQluqZsEbKnedNfDy/IPH5kbseegEu+YyI+THjVzE0o6ZN9PruLyVmanl?=
 =?iso-8859-1?Q?C5AWAepNHc3p4RicTXpWy5sp/1xGPLNr3m3ray3oVbPwP3n432uyEgBU3g?=
 =?iso-8859-1?Q?q3Y9+eGGUx7yr0nLMkXIZqEntPzcayE4+ck9Xoibs+B4EbB6lRX3L8Abod?=
 =?iso-8859-1?Q?9B4vxIQeIM99vILGqj1cIVNIWsy9G8OqnkHTo1A9E/u7A0z43hAZdttx2h?=
 =?iso-8859-1?Q?mJY1ChIOiewC9B9Va5nyJCciSALhyzJCZFVuPkqvYyKS9ASerIBRFZpwge?=
 =?iso-8859-1?Q?89p32UgsoT8hiDWwNUzOjMLNIGoMWydA8c/xxCUwkkljhf0tlutfaPA/XH?=
 =?iso-8859-1?Q?2zinOL+pkv7YglhiOfV498UYFTcjFpisMJ6PudSZJ96Ha6er3HTAiGRmsp?=
 =?iso-8859-1?Q?0xQzyQrDBzQi0p6vEJVvyhWrrY3H0VvRRsgjLckJ8kTKrDOUm47W9HPw/N?=
 =?iso-8859-1?Q?muhjD78QdhGKcoauihc/9hFyjpkFIQlb+9r9QHWH1meJnuU2+altiZI5Jp?=
 =?iso-8859-1?Q?zGFCQ4scj+xafKsqqq/pcBh1+i5+EbzNAW7hKUY13FYiO/blvjpaTpdGCV?=
 =?iso-8859-1?Q?XBjKKiSNhilXC8IuOJhh5nMUGlk80mzujMc8J0L1CmWJOpnB0CttnjGS2o?=
 =?iso-8859-1?Q?tHZm0jHMTmi1+9WucuMzoD/2uiVeF0lGYHpBszLi2xkPpo4Ct9FWlz/H9X?=
 =?iso-8859-1?Q?GEpibFTcK7PJHg3Zlt2Ui92F9VOb1ogScl5cu/6wq175Rg9cKNhUesw9Lb?=
 =?iso-8859-1?Q?miSVn79ZjjnGN2tEDP9qk6UIfvwcbHNjAYjRoIMsuaK0MqRGGodusLbH6/?=
 =?iso-8859-1?Q?Se0/lG7Tx6HkHE5TYQSHfK2H/KmjYwE3R36mDvjSXp2w5OG23dapiCMj8y?=
 =?iso-8859-1?Q?bOT80dvayfcl6vL0eMsA6mgmCOiDUdVyBR4mTgn/QJ2LsGBwQBLIJU1MPC?=
 =?iso-8859-1?Q?OrrX6/wv+YIZgY2AZNtiJzcH5eHJpcvSc1JsmmfOzZhdJuMwUAQXLBlMLQ?=
 =?iso-8859-1?Q?vU5tFDb66RoQbQf286TUp2qxCt9v+ZAY39o5PtSGHS7sIm20jE7JdrOMPt?=
 =?iso-8859-1?Q?3wzOXDMc3TQtjRUy/Ki7sf6sUfEA+kOBZrhgZ4Wn3jM4PpZ3E09XTuIdGB?=
 =?iso-8859-1?Q?u/rNkAhhWvjDgtWBGdxMq5qQelchgSRxE+kHD8eStF6N+bbk7gIjRzj1CG?=
 =?iso-8859-1?Q?l+/TRO+Jre22jCXW62GGQQ2H1FV4LWEkDgSyhG2W9dcZb58AUxadzsaIgJ?=
 =?iso-8859-1?Q?RbFk687YMBI2F7j4kb6xfKiQxcE4xN0/apO5YJg5pH8oFTcyHC84HzQxri?=
 =?iso-8859-1?Q?Bhft6F+LpWRj383VH8cixEwiVHeuFUPV+e2Cz8WhxBGelKLkBh0W5icr0i?=
 =?iso-8859-1?Q?S36DsSWKLRGpX3VMZsvO5DxSATap+BHrDXe6mNRGAoSZtbdAI5l5tXkhkf?=
 =?iso-8859-1?Q?WurKEFh036G3Py+nYgKRaXeFmiE89421+Er4RW7pylbxqXdGYumvbLUlkH?=
 =?iso-8859-1?Q?yTFnQcnAlgyxbMWHdy64++c3wSLOPJoMT03o89AhmZ+DJ2IiNLX7WFi+e2?=
 =?iso-8859-1?Q?9KiygISi48FVes+WWHM5gVExLcT2UPB+1RaymxihPCFlNEp5/gx3hmShBO?=
 =?iso-8859-1?Q?lB6rdDQOlg=3D=3D?=
X-Exchange-RoutingPolicyChecked: bQdR8f63mu3hMsxtBhql88Z8pqWenXvWQtw66haOFsxg+TPWatfK85npsluKVh6ibIqf/lAAP2nzZRZehf9sshMwhQS3abHFtz+Z5nNLrdGHtLoabNHvnMtGBhLoRmdtWzF0SfPhbxyXYzWTIpkjdpQGHYQn8bsUb5eAiv0Z88/+rPUhfM5hCvaQinZCmAejJpnsmI022M9pfgjaftyD10LK9iSszetU4chKNNnzGSykBhVCnviW11wBzJGeHwhmW4rXzKZT2GdrvSFNJHzLG7mAK7PcNbu4mPImJ/x88Gf6eADOXcQpFg8vXUeTNPmVyourImbr7FG+ingX9UY1jg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2458a0e0-9941-42ec-e154-08decb1a01d3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2026 20:09:29.5493 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oGPUoPMUdAmzDcPjDTdRIkTodRWLnqvObI5jjT3X9F/npSj986NyQc5yi5rvY/A0FrCYew9LV+2yeTYyvu5VrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5279
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3F6DB689B0B

On Mon, Jun 15, 2026 at 03:40:47PM +0300, Jani Nikula wrote:
> Make the special d3cold paths completely separate from the rest of the
> runtime pm calls.
> 
> The intel_dmc_wl_flush_release_work() call right after
> xe_display_pm_suspend_late() might be completely redundant, but this
> avoids any functional changes.
> 
> Wiggle the comment while at it. It gets duplicated for now, but this
> will be addressed in the follow-up.
> 
> v2: Update comments
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 493e9e09b6c9..bdafc010fae1 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -389,14 +389,14 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	if (xe->d3cold.allowed)
> +	if (xe->d3cold.allowed) {
>  		xe_display_pm_suspend_late(xe);
> +		/* Ensure the wakelock release work gets flushed */
> +		intel_dmc_wl_flush_release_work(display);
> +		return;
> +	}
>  
> -	/*
> -	 * If xe_display_pm_suspend_late() is not called, it is likely
> -	 * that we will be on dynamic DC states with DMC wakelock enabled. We
> -	 * need to flush the release work in that case.
> -	 */
> +	/* Ensure the wakelock release work gets flushed */
>  	intel_dmc_wl_flush_release_work(display);

In the next patch you end up removing this entirely, so I'm wondering
why this patch simply doesn't remove this and move it to the d3cold only?!

I mean, I saw you replace that by the new runtime_ calls that does the
power_disable, but I don't see that calling the flush, so why simply not
remove now on this patch and make that next one only adding that runtime call
here?

But well, this patch itself is not wrong and it does what it tells and
you are transparently telling this is for ne follow up work. So,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  }
>  
> -- 
> 2.47.3
> 
