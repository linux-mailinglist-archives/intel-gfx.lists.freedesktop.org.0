Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAVMBNy9c2kmyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 19:28:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 807A979A4D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 19:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E97310EBAF;
	Fri, 23 Jan 2026 18:28:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KlWjf9il";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD23310E2E4;
 Fri, 23 Jan 2026 18:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769192920; x=1800728920;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=zOox/wbqXGzJMPwD9EcZ0eN6eFJl8tahuA5NFDs00bk=;
 b=KlWjf9ilsJc5aADB89uWP3WjiRbCuIIclGh0JMIdLDrfa8lfTNsAzC5Q
 1IZB7317cISuAH1WtL+/OGwl+9yqKBU5BD6qd97dkuaRrRnTaFJQI84XK
 mvbBsErZ+g4uVrK9spTPxpVn89CGlX+YNzTl727jJz+60cLAwriE0MPtz
 Ifnbxd4lNWZ8lAshMPH5Bq2LNCzqJG6gshJlhVV/py2Rnu04k3vrfvYYN
 rFr20BuIIA4uU8OV8rk7ka1c2mudrvSjcFq1FIJDzIWxmOC5jsyJ1LyHd
 TfuXhWKABwvyD7oGJZSNEkccVTvLVKpB26fVWYHVgOCAcUOCYRlH++zGg A==;
X-CSE-ConnectionGUID: qw1cLPm3QRK0qfBl61Gz+Q==
X-CSE-MsgGUID: StzUkZz6SACcjfU4scjpuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="70509870"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70509870"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 10:28:39 -0800
X-CSE-ConnectionGUID: 8lzVGAekToau48WL/GG6gA==
X-CSE-MsgGUID: Ww5A4f5cTCSSFZM3v1lZug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207335276"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 10:28:39 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 10:28:39 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 10:28:39 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.55) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 10:28:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I+K7aF6zQrfrvkCKdEsVyFV/ruqfoew6czhOKBmo68iCnYViLPzIx2cscc13d5SzatDw28mUe1vBzSApDNx/GAJa6HKcSULcj+Lm0W6to6O8ky8zzHI5VC8KgdtVkn+99UFMMC71/93LmdLAZ+gOlKN2R+98n06unHYroKBRoa3vJq9+x+XKyX1YtjY9dHCqoj/+Cyud5n/CC1YLDiqOJAcwstxwWku6W2YRf8kx+ThezuC7TT9pdSJSvBUH60l2Y8kmQruMn2bsEErEpgyGyqrde6CsoLFbTBIiObJiS2/RsfQOJHwwNq5JGK53ADgZw6H3vNjHj2hfPQEj+odHNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RqGiEv4qm7+3MPeNlsGqspG/6BrhbhPEAtMA0gt9NNc=;
 b=ZiHFxuiwPalgNEi1vcbVXrGo0/sZBKmbTrCbC6Xs4UBcP7UB12zY5mB4PaHfAblWzpgZmRYBzVeBaA/CuqSWOwGH7vruXl+v1ZhDE3r9nODaRWIIKr/Ait2fKEt+dkE5xbAhPxvQb9GHH4zTFYG2kAMHTGQvxYMpR2VP6hl+z3CQWWiJlagrIc9HdXZH7L+nR29Ex14cVO1m/6AbdxcO+ql/ogAkYIZkejE6vg6VW0WlBKGpMhAy9mRUd0eKwWDvJhbP+chUKjCoFkfskeVMyoAMHIq4YJ6xLvJ32ue6EXRysEdBwSRDoNKpLnFRoM4UkGINuMMIElosnawC+4drhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB9417.namprd11.prod.outlook.com (2603:10b6:208:569::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Fri, 23 Jan
 2026 18:28:35 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Fri, 23 Jan 2026
 18:28:35 +0000
Date: Fri, 23 Jan 2026 20:28:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 03/14] drm/i915/dp: Extract helper to get the hdisplay
 limit
Message-ID: <aXO9z-vxxgj_y1A_@ideak-desk>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
 <20260121035330.2793386-4-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260121035330.2793386-4-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO2P123CA0076.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:138::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB9417:EE_
X-MS-Office365-Filtering-Correlation-Id: d19df0d8-4f1d-42fb-0f60-08de5aad3879
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ac7+RdPi7Oi50Yq7FjL2sZFGXCERyrS33ZGL8WpdCWr5M60vzXikn6Udk4fb?=
 =?us-ascii?Q?zHO8eCv9zfaOEOM2oW7soEN5FhtgcfCqfwXZV+CbkN086V69e281qnOEFy/a?=
 =?us-ascii?Q?xpu8d+eNHB93lfMymQLWfe1E2hpTEGew2j3KwEe7LfKvJFjT4hkIeo0tBkS3?=
 =?us-ascii?Q?ks4mAYwgPdljSAWSXmmdlgy1MCgM/eZxGXVcmTyiuxmmH9jsxdvPytIzTcXz?=
 =?us-ascii?Q?JaZn50VfyqOJ0E0H5ZCW9st8nCpSLjjLApcGbw9NsgRBd588mPKMLXo0IBEA?=
 =?us-ascii?Q?jJekUvPV7v/OG4U0jRcsPUONN4Eo9kWkn8L3xBAQsi2b8FcC3FD/p/6Pe6I0?=
 =?us-ascii?Q?3YQSCclriUdFz60SMLLvEXnzzKC026F/qG5uERtY/aElkW2DGryVPD5TlqA3?=
 =?us-ascii?Q?1ZMqZhfm8n7U8GBE7w24VrQNg3w64vehnHSuRGCpqt52cafGmx8YqQFuOGkC?=
 =?us-ascii?Q?hqUurrigEAVizgAG5XqVbHsW17S4M+YM5r3P+9ZOweEduGJdJpC2RwxSGjMq?=
 =?us-ascii?Q?hQNdX9VaGUkOWpClxkaGu/JZOHLj8RnAzZP1ZSHrQlZBXkhVPVqJrSUYG144?=
 =?us-ascii?Q?0o0oqHPNTMH/Xze1mj8WqBAgJOH4WW7w4TNvmBPFQ6LfRWL9wq3AS3x5AfAu?=
 =?us-ascii?Q?G0Qlr2y8f1HKkbuZ0NAqzYnoftxBNBsPGof57mZMdqszbbw2/gZk/1/nMddZ?=
 =?us-ascii?Q?OoXhNGij3821B37xsHpbTrgOgfrq16tpyfA9YPw82F4y+DNRBg6Tvyc79Nm/?=
 =?us-ascii?Q?s6hutMl6GYvIzo4OcP03+DplMtAADJUMOiA7unp/qoGEbgvvRu5/uxJshGKa?=
 =?us-ascii?Q?m/5SyYV9GucZiS5DTDRVXqVejNk/qwIgfpEHqLjaF7mdHKprfFRB7wtIsW6M?=
 =?us-ascii?Q?NQ2mraCrnD+hb6ytX0FTY2L+jxsqvMm8aZonbrCaYyGgOFZUBkirxFxJ1ZyX?=
 =?us-ascii?Q?/u9/+2CkJvz3zX49Zn4KDPbCimdUJ0/2vXDJ7lkjxyYBl/2GyEe3yJ3mk2dg?=
 =?us-ascii?Q?cl2PeKhp2vZ8nWp1RhTTbKXs5Tc2l3IoywvJVCu9yG9HVmEPNAeeYxrTI9UN?=
 =?us-ascii?Q?J2FBNSNrGETfuFwqjBDyxg0lbKZBHznphK9llBLamsu0BRVDxbe/c8RAmzLG?=
 =?us-ascii?Q?szoFl5uk689ugv5HL56VGPbZhTOqrTDfMW7/jJ3XSMIv0fpVpUJLMDcJNa0u?=
 =?us-ascii?Q?TQ3NpaCugXDnyU67NyPXKJoVNMzDl4/gy13upVpiuZ8IdKAXj4sGBnKF42mR?=
 =?us-ascii?Q?smeNJYDUPStJlmjzosS6sqhAQixP/690ELbDLTByJ0PBfQXKqCNrnyN4fn2k?=
 =?us-ascii?Q?QNFk9mEQ/RAxfNVh+VzK9ayRbqEne4uKnfIL/OFn8w1SKE0AqA3rZ0DqlM8X?=
 =?us-ascii?Q?+Z4PKBc+Ta5bDhWLcje9kFmmRPJiFp5uwUHjO6l+ACvPuwhvpk8Qds6NRfPc?=
 =?us-ascii?Q?5VhwfBNpE/WDZUoePRnRtAM8vhmUQv7iFYcOsec9xUMvkZQuu7KPXwGJd8xw?=
 =?us-ascii?Q?BemFzbkX2tSpQfF9TGYZ2dv5MxYXJ/UOwRpZppLZlXH3gsFbdobZfgZXJeMK?=
 =?us-ascii?Q?NOdH/fiBADzBqNoSc2A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dP03gmA2NyE4spc9EikIFFKC1Pzq2CXX7Ut2bOgjO7sFHMBT9LibiCBE/Tss?=
 =?us-ascii?Q?cvQeDw/ZexlyMslB7GSJXFMi2TFZ3uGJBxt9GYjWgpEBl/4G0ZItO5ycQ/8f?=
 =?us-ascii?Q?wHno7wLlMGwVitQQbUS3iWc+AlvB9QiHDGcAsssJvdg9WgT+yRJMvzWPrwua?=
 =?us-ascii?Q?pIAqr+idKPRemzjfPI06N7Baunx8euGhnRHHELjBn40dODL+X17n501N5vEg?=
 =?us-ascii?Q?vrjvjQ3rpfIC7sISeDhn9eemR64gRaWQLYxiyKAPyPNgqA9osNceF5Tz32PC?=
 =?us-ascii?Q?n3MwOMvGLmZNrD9JkxhZIO9NItF+zMBqI+in6gbzGfrsU7YD1NVuop23PH2w?=
 =?us-ascii?Q?83jcse+EhfjYkGeBQZ3b9wzMzZfvcDnvHa2RkgumLFWCdAF7J1lqn3rXazSO?=
 =?us-ascii?Q?YYDQst4qZG0rDrX9yXaq93AJ/RCaLUV3PMNw982RKZoHHs4MAAkz6v/IDAKL?=
 =?us-ascii?Q?6QuXUrL02ArczQO2kZG4noGBDnqzuiDM+JvD8mTTgUgRx0ebkwC5/UenIIZv?=
 =?us-ascii?Q?zfza6VXRuccznHgFB2nAJvAxTpl+eLbs/xfALP0nIV6NWygtul1AdRWXezfw?=
 =?us-ascii?Q?muNCc4TBM66ZXLweWLsv7nUku3A1LAposHO1HTs7JY/w9ZPKJcgCc4VUOhoG?=
 =?us-ascii?Q?g11HJVLYMz6O1EV6srTDN8oYcSx2ku8xdITmfDp4TVL7Ael4ON4xJQtnAKRt?=
 =?us-ascii?Q?qyGbjZMH+5WeLB7zEFj9IhtrxOt4WdaBKybSOJ5ZneG1rsCam1aXd5tD4NxL?=
 =?us-ascii?Q?SIG43qDsWQguO/vdWinLW0maoiL6PgNF/R1UVyR80EQyehH3ffLNCvMLejt1?=
 =?us-ascii?Q?XozZ5n37jPrTA2IgI6HPdeBt0oH5fkT36p0Gs5UXQBJZ8w1Zv5GIVeq4wrEW?=
 =?us-ascii?Q?N0TlkD9G/9NibNtDFhXVfdRMA1wEhT1LH+380WY/fvKMpRuirsds2fedN3gR?=
 =?us-ascii?Q?DEZt/0zSn6A23z0S1SnhR0boWNQEoUUgfM356xJGc2o2RmZB5SIC4RFWcVrD?=
 =?us-ascii?Q?O/ieMQ4/Gk4ucs4fQ2+16WsPQXambFMX1v01RxA5zHRorV6oTaOUxziXZlmj?=
 =?us-ascii?Q?kQQQXvGu5unC1y/8TuXEXdkVqCk6ueeB5AtyIiaV2UgMgWTCX1yrXXUD8eAE?=
 =?us-ascii?Q?5hvdQmrDOE0a+S5k6OjD9VmrzQbBGV/YDzkNOqPyHAe0BnNTuQTxrkM3XV22?=
 =?us-ascii?Q?tfXwwGGCmmxvZrGnOXfNDABvswN5MpoH9j5AWSi4pCadmtjLh1AbdGLyvl1c?=
 =?us-ascii?Q?ZpeSe9gV/gX3x56D0l88rtfFrFiRfrBOKMcCCrK1ByYD2pzdubDbTYdAu6uT?=
 =?us-ascii?Q?reG+jeLnRwz/BsNgmIVT1/6HenOEvNXN2X7qLgifPw6NKDvis/0R9lZS6nL2?=
 =?us-ascii?Q?+E0PpY12HMTPYWHdGuipzaD9/l4auhuECkQlP5ehTQE57E6vWFNOOuRkAdEc?=
 =?us-ascii?Q?dd8mtiLo9Yem4aLK6am/YxKI6hyYk4qNA3s2nFBqYo6L1DWA3kiuiRsTJ6JJ?=
 =?us-ascii?Q?xyIlTsJ9tZTloX/9NILnhA0uZKAD6SfSfeCQ/3HAgsUn2FUyqFdRi0l/AK0m?=
 =?us-ascii?Q?FqlrQRq6JmTm/7s3lepoE3LX8m8y1ZI7C4YCVxU8TNzReMV8KHqArCt41toT?=
 =?us-ascii?Q?nEERi4MmeltIJt1PWBbXCPQwEmTqzIet8VS++AKlmTLtMTFUWYFAfYJ9O8Fv?=
 =?us-ascii?Q?59eikanAEx6nQ1o0ZJfosAQ0VhLppeOgGjpQbEVAwRiF1536NMSxtljzisUE?=
 =?us-ascii?Q?WEbqJlKsig=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d19df0d8-4f1d-42fb-0f60-08de5aad3879
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 18:28:35.7687 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nARTGuvPi5Ubnz8nTZurd1aqeTm4bnzdcCIKb+GKjLlsmoMHwnTwJN03BbsrkNDZpW50lCBAGh/UBvLEQXXIsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9417
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.962];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 807A979A4D
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 09:23:19AM +0530, Ankit Nautiyal wrote:
> Separate out function to get the hdisplay limit for a given platform.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index c0a8ffac6312..fc7d48460a52 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1371,6 +1371,12 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  	return MODE_OK;
>  }
>  
> +static
> +int intel_dp_hdisplay_limit(struct intel_display *display)

Nit: intel_dp_max_hdisplay_per_pipe()?

Reviewed-by: Imre Deak <imre.deak@intel.com>

> +{
> +	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
> +}
> +
>  static
>  bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
>  			   struct intel_connector *connector,
> @@ -1378,17 +1384,14 @@ bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
>  			   int num_joined_pipes)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	int hdisplay_limit;
>  
>  	if (!intel_dp_has_joiner(intel_dp))
>  		return false;
>  
>  	num_joined_pipes /= 2;
>  
> -	hdisplay_limit = DISPLAY_VER(display) >= 30 ? 6144 : 5120;
> -
>  	return clock > num_joined_pipes * display->cdclk.max_dotclk_freq ||
> -	       hdisplay > num_joined_pipes * hdisplay_limit;
> +	       hdisplay > num_joined_pipes * intel_dp_hdisplay_limit(display);
>  }
>  
>  int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
> -- 
> 2.45.2
> 
