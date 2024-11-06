Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB549BF411
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 18:12:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3019B10E73F;
	Wed,  6 Nov 2024 17:12:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gm0b9Htj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E66310E73F;
 Wed,  6 Nov 2024 17:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730913132; x=1762449132;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HeBJMDiyJrwLTlPbqnV6/6Zlj88rJIEjMNBDXOg2Vxk=;
 b=Gm0b9HtjZ87wZEDzr8wIQm5NqA9vZeJL9m02cI40cLy0FwykayJT6iCB
 muFaeQDQ6bJY9xayjbXWjxxrsOICovmHnTy27b5R4Rqes0WkbaKM43nlP
 zH+dq55F3il/SUEGHRNhUJKxaejmbn8dr35am9/erVnf1Z/yMkArS1TxB
 0iL9EhihvpU697m0xhqMMAXjmfqXJmXWNxdTekbHo8LjMKQDxi6b5tE9M
 vh9/w9JN5KQA18rcEzRo7W2MFBCIneBmV0rIhM9Y2pNdxdxS/lPXJ/fEf
 UzVv55fzoTkyxKOcMl/jm1ccvIeItk4r12DTBzRXYREymx3BVvlsdHOzS g==;
X-CSE-ConnectionGUID: JyhTw/y9RJuQYz36i35k3g==
X-CSE-MsgGUID: SAOVDlRIT8KFegeUoKCjfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30826936"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="30826936"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 09:12:08 -0800
X-CSE-ConnectionGUID: LCoTpZYCSV27DO0mZn+zCA==
X-CSE-MsgGUID: /o8TDE5fRrWlw1sq33bNIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="115495345"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 09:09:47 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 09:09:46 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 09:09:46 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 09:09:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LGjJFEj3h72Qt1PTyfZCsgGJbZHMsmlEEIr8OiVAL8pz7DJPUPUy+po9QOxO9NDmPR9h/8raImUukgzC+Zka+Z2kSwtqxfR2caAYnyyb1IraxUWORjBFAh6vPnB2zh+NilXYsxYw6oCnkNWAVadq/VrfLMsvpQtZ9D6UTzT2xK1veULw0Oem7Sg7rBUCI2F/KIKonruATrEJ4IJfbAIKv1JRiQUuji3xXz/fryXMdkrLl7xQaCQREawyB4Wjni/Qj82bISAIqa4NX7/mCohYzbkMTtmlStdKCpd1kL8liNOZ/xUokOZZpy/3TbVw8b5fTMdiTFCl07c9dwoSG9bJUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=92l3uj3kU4FzVHTsg6EXJ6QuiU6d8aqQzxJbuofI8/A=;
 b=smka1jEnXe/QPbzsNELM4AI58j0nhoP3guOYW72XxeNaqjTiU0PORc5QtUAZIRwkWNejSukbOBo1hOq05RjJQS7Lzt8ntL1rDynfwu8Ho799BLFv6YWXfcjBtXoxCaMIH7BWNKO34xBgSJOw4GMl34gsK935dYQ8Yc0/Li5oQfXgwyg+hbI2TE+25i7IvShBqYiRzhBJbHRxDSzhdT7ISgYp0WxfnzDowd/3g9NSjxeJ5OrPkxR/qCOUvYfffvH1lAN87lPOmqp2pQJ8bc9P5+6PXG/eSducSZOgcHM3UJGvTLWDLppKKJeShs+rh8ZCu0ey4mXjT0gt1uJfNKnymg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB5248.namprd11.prod.outlook.com (2603:10b6:5:38b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.18; Wed, 6 Nov
 2024 17:09:43 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 17:09:42 +0000
Date: Wed, 6 Nov 2024 12:09:38 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 11/15] drm/i915/display: convert HAS_ULTRAJOINER() to
 struct intel_display
Message-ID: <Zyui0sspZS5t9VYW@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <ea4d7f4694ba92c87b00258cd9786d668a09c313.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ea4d7f4694ba92c87b00258cd9786d668a09c313.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0229.namprd04.prod.outlook.com
 (2603:10b6:303:87::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB5248:EE_
X-MS-Office365-Filtering-Correlation-Id: 63857cb7-64fb-4819-bbdd-08dcfe85ce0d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?m05tglM9PbkDF81oPDOGYzFfzEFZJGBby9oXiLBAM2LLQTovpc+y3w1wPlck?=
 =?us-ascii?Q?ChNBHRIJdY0X5ar0uXrNqQ68WL7M60ACMCMcQXVP3yi8bdU5HGyBTltbWcVy?=
 =?us-ascii?Q?Lf3twlmREXgRuxekYRMv9iUhi8TtrNcWWij/UlVbqeG8UOKPv7a6J3dNayaZ?=
 =?us-ascii?Q?kRssIo9Ls1MbxOlyOg5Jt2uiKVtcOWVbLq0q7bzaVmPj4dRWoqPYlpJyvlSS?=
 =?us-ascii?Q?yAVZcHFISum1LS0MLbqtEWiVlSDLi8jOwfUZONw/bEBaHwKMP136iGNe62IR?=
 =?us-ascii?Q?kXfOZA/AX+vrTEvqCQeGgfqHD/GYI7eMO4cpZ+ppl01PKlglaNpzEjSUyPrE?=
 =?us-ascii?Q?giaR5VwLiZ8vPDapN1Nyy/OFzvXHClSflluENGsvciMBDBlgh8PY+sGilrp4?=
 =?us-ascii?Q?pHq+UwSV64CnLA4pbaLDibfJQrujUvD6aW1zw6ejG+SF5lQMFNk1/5sxgJSN?=
 =?us-ascii?Q?YyvAPp5h3NkOVz1RASoqldI93KWZcjeIYJcQri+MbNxH9P2VntyIVCHQ7m34?=
 =?us-ascii?Q?+RrO+8hJeFaFJIfirkeXdYf5ro/8cDTtsvP76CbXof1vE8eaGA7Vo8VOS6R4?=
 =?us-ascii?Q?TpUS77Yk96tH3Ji5BV3gbLpgHOpnDSrA83UMX2MuON5QWvhYXeSyxC+1wLVI?=
 =?us-ascii?Q?wnQ25W4JK9IDHr9Hyo0RVNVY6ipmEeBFORqUlzYjyRbfs3CeVCLTqwda2y5H?=
 =?us-ascii?Q?GPxw/1y2oGywhx5jg71ah4NhDDSmkkVO8RkPzHVRvjOeL77LL5mU/7eSGmfB?=
 =?us-ascii?Q?l0YO2qFHs6n1EdBTmjiXEUVys1zAkosouaj/WCKfO1RAKMhs/+Xjtcw2i10M?=
 =?us-ascii?Q?XFlAEuZDdYwSgPImJaNsIctj9TNL2nVu6a2/g0HpDSTUCTGYqF1h87VGv8Qo?=
 =?us-ascii?Q?N+ro2vcBbrZiTW5tSlLd7eRBbS7rgxhmJThNKfdKjYJXm1MKAU/61FEeY0iu?=
 =?us-ascii?Q?J4Gb8rQuluCJHHB0jLPbhnsWEe5LrKsB6F1dGjRKJkXTqlsJi7fuyvsD8gRg?=
 =?us-ascii?Q?//1R1IQFDEoU11EPYtiB2Dl7WiHa/9wVV3PQod57ULfIC1K8Xz2MsSMktChr?=
 =?us-ascii?Q?VaeMYSrKBi4qB9cIf/C0T6E5FM8llFZplTqaJLSmuVRG+Mf7uFt/+rVNgQnJ?=
 =?us-ascii?Q?bQb29RWhlWRDMSpqq5SjnPFugt5uFUuct8gsSHxZ77j3K+A/9XXHhOI0BUvb?=
 =?us-ascii?Q?A0r4wG98cycMsuK15kM4G6+l6ZiXdtjt0sPOzCuknCiPIle5YmffSclp1vuf?=
 =?us-ascii?Q?RyAiH6kOm3Ct/BoU7BaMi2VVt+F9TYXEwaMEKVuzTE1l6S6PCnQ/w1IemO4N?=
 =?us-ascii?Q?DX7N2K/+TdFUzcEDjAaGPUiF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dMRxuGzvgbqq2CVCtNXzh8hmpx78GXrwWbO74jMWEh0Oo1DwcCLvBfheJMHR?=
 =?us-ascii?Q?YggSHiLjjh8Aho6dJclQRmXdDvYE5Sm+69SxdWJJuiY/Yhe/hIfFaii86nJj?=
 =?us-ascii?Q?wddBgRg+FQP6T1RYOKuL2eNxWhFifv5ghFSqCbQwcy1XsDkUYGVhlzR5EUnx?=
 =?us-ascii?Q?stvtKUpdVwPvk38WFwOxZ7hhAs7hFOtKfoYPaHHWnhRs7sRGzAkxEyIPnArI?=
 =?us-ascii?Q?nc5RrCtpKbbotCM3PyEKAauw2FPr6+TD0yWnLvpvOxzaFUayTf5/o70G6qpk?=
 =?us-ascii?Q?Ila/PkrxS4MeFJSJ86K9s3d5IIDV61Gt3KOoGggdmHcskThq4Pc3oUEOem1M?=
 =?us-ascii?Q?tgRu0IP0bht1TEyvLrbfdZQg43zTOFfPpJtX8NyNlt1/skoa7EhMwrK6i0WT?=
 =?us-ascii?Q?mXD/sL/0+WcU/xT+2nBbJwi2Xxzd1vV9nRQfJnNcacPBG5diX3joXyIzYazI?=
 =?us-ascii?Q?bZHoawmD3mat/OJqrQ0oxBe5iXp/g2Zz/Fd+iwgilpXaVwyPQJLTiS97rtFh?=
 =?us-ascii?Q?ghyq5Do4y4EKu31vdR3g6R9nJaEH/MPIKQgcMJiFZ70i+HB5eOS8LA+2vn9j?=
 =?us-ascii?Q?xvXBf7s5ZIq2/F9+RJi1d6XB7Vj+kRUcs18RdD+trcvawMMb5cBL6WMl2ma3?=
 =?us-ascii?Q?leHqJWaP6izQ/RLtmPIVBoGyCopIsFPWsrreppUkQQppgjYLUqFhUND08v//?=
 =?us-ascii?Q?1jqTtF0/y75LC7Wbx6GYQQ4Xcf7gUuAkw+Hx2B6oFix5Hjhhj5HKxtiHlMwX?=
 =?us-ascii?Q?+/wRpn1sSQPfZ9/5SubBLPzv+qfJy1n76byWaFjqYxkkNvsMv475grRgappa?=
 =?us-ascii?Q?jn8HnXNIJMqk6KzQ/AWyRC7k0EOVtEIh5zixFXLYuPcpItQCtc0+ZzcMVtRe?=
 =?us-ascii?Q?C1xJ7xSzlvD/I1Hi/5UJAbKb6zwt1u3cMCl+GQiOKeL+CSw7l530MqbGvlRI?=
 =?us-ascii?Q?3VPaVF1fgFKXT1zd/TmC3WZv89thYE7uHDdn3Y1sx0R7HW32hrZEzKNncBD/?=
 =?us-ascii?Q?eotLY1N3Qx/6+gJvFvJZSPZTi494zg2p75bCMbFopH+9uatoOS3ygqdrgHcW?=
 =?us-ascii?Q?cW8sIY47wQW6khYhTEWQdrVb4hojX7UqhSp3p75Mfh1asIOpaY3mhzFsj1DO?=
 =?us-ascii?Q?V6CY6pg7BfR5Riqr3udC2ufi9GmDf/O/9hBkNyMWe+FiOqjgNSTjVsElWhF1?=
 =?us-ascii?Q?T09eZePvXGys3V793XO8cP8HqGZrQTK3NGyxx5WjEHGy3MjyUNmnR1PE7X/p?=
 =?us-ascii?Q?0l5gyFpnOEHMv6UlLICNfZw2c7Lht6z9PxJPjqEiZy6Q+GT07/dF1ZPzbEt/?=
 =?us-ascii?Q?q5vIEUGxKlq9CC9WPKaNcNou/uN1MubIyIV2rl3tGzaSCE4z+s6Y3gfKXg59?=
 =?us-ascii?Q?0rgPukdpnRh/vOWSSELL9D9XmAus4xyOIOhkC5XXsopzvin6ff25wBMAGVmi?=
 =?us-ascii?Q?+lP22WXiRkGOHqnNlLCChfvt4IM0eihQGO2QH7bkutBjzc+9qJMTlGmXvFEo?=
 =?us-ascii?Q?sR1fwBeZpTc+IfAZWOvylugmI2zQViQjobQxA2xTgZI9auSKMMSQ8OTWUCqC?=
 =?us-ascii?Q?+TzatLYumSwxNmw4d7kYkpMIPLX4sikcC/QrARL2Kz7IOffaiSlouMT1nzA2?=
 =?us-ascii?Q?jg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 63857cb7-64fb-4819-bbdd-08dcfe85ce0d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 17:09:42.5661 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d/u0c15W6GMrwPhhUaPNCP51uZn4R5bhT0g1SUnUndhSqTmiuXtR5vpE+xpyBhArzKH3WEVywjw2oTyKIxWDRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5248
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

On Mon, Nov 04, 2024 at 07:19:25PM +0200, Jani Nikula wrote:
> Convert HAS_ULTRAJOINER() to struct intel_display. Do minimal drive-by
> conversions to struct intel_display in the callers while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c         | 10 ++++++----
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c |  4 ++--
>  drivers/gpu/drm/i915/display/intel_display_device.h  |  6 +++---
>  drivers/gpu/drm/i915/display/intel_dp.c              |  5 ++---
>  4 files changed, 13 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f53611e83502..a3924bbb0d2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3746,12 +3746,13 @@ static u8 fixup_ultrajoiner_secondary_pipes(u8 ultrajoiner_primary_pipes,
>  static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
>  				      u8 *primary_pipes, u8 *secondary_pipes)
>  {
> +	struct intel_display *display = &i915->display;
>  	struct intel_crtc *crtc;
>  
>  	*primary_pipes = 0;
>  	*secondary_pipes = 0;
>  
> -	if (!HAS_ULTRAJOINER(i915))
> +	if (!HAS_ULTRAJOINER(display))
>  		return;
>  
>  	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
> @@ -8310,11 +8311,12 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  
>  static int max_dotclock(struct drm_i915_private *i915)
>  {
> -	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
> +	struct intel_display *display = &i915->display;
> +	int max_dotclock = display->cdclk.max_dotclk_freq;
>  
> -	if (HAS_ULTRAJOINER(i915))
> +	if (HAS_ULTRAJOINER(display))
>  		max_dotclock *= 4;
> -	else if (HAS_UNCOMPRESSED_JOINER(i915) || HAS_BIGJOINER(i915))
> +	else if (HAS_UNCOMPRESSED_JOINER(display) || HAS_BIGJOINER(display))
>  		max_dotclock *= 2;
>  
>  	return max_dotclock;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 11aff485d8fa..2874867aae2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1331,7 +1331,7 @@ static ssize_t i915_joiner_write(struct file *file,
>  {
>  	struct seq_file *m = file->private_data;
>  	struct intel_connector *connector = m->private;
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	int force_joined_pipes = 0;
>  	int ret;
>  
> @@ -1349,7 +1349,7 @@ static ssize_t i915_joiner_write(struct file *file,
>  		connector->force_joined_pipes = force_joined_pipes;
>  		break;
>  	case 4:
> -		if (HAS_ULTRAJOINER(i915)) {
> +		if (HAS_ULTRAJOINER(display)) {
>  			connector->force_joined_pipes = force_joined_pipes;
>  			break;
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index e1e718fced3c..548256401d0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -178,9 +178,9 @@ struct intel_display_platforms {
>  #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
>  					  BIT(trans)) != 0)
>  #define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
> -#define HAS_ULTRAJOINER(i915)		((DISPLAY_VER(i915) >= 20 || \
> -					  (IS_DGFX(i915) && DISPLAY_VER(i915) == 14)) && \
> -					 HAS_DSC(i915))
> +#define HAS_ULTRAJOINER(__display)	((DISPLAY_VER(__display) >= 20 || \
> +					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
> +					 HAS_DSC(__display))
>  #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
>  #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
>  #define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a27da96d2c60..7d65945c9563 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1333,16 +1333,15 @@ int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
>  			      int hdisplay, int clock)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  
>  	if (connector->force_joined_pipes)
>  		return connector->force_joined_pipes;
>  
> -	if (HAS_ULTRAJOINER(i915) &&
> +	if (HAS_ULTRAJOINER(display) &&
>  	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 4))
>  		return 4;
>  
> -	if ((HAS_BIGJOINER(i915) || HAS_UNCOMPRESSED_JOINER(i915)) &&
> +	if ((HAS_BIGJOINER(display) || HAS_UNCOMPRESSED_JOINER(display)) &&
>  	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 2))
>  		return 2;
>  
> -- 
> 2.39.5
> 
