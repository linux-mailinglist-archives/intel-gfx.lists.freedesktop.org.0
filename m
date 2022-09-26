Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDD15EA95D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 16:59:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0397810E447;
	Mon, 26 Sep 2022 14:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0BDC10E447
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 14:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664204338; x=1695740338;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2/nFpJ1Gm6vrOO6MSGIZTJSBA2fDVobFtCUb6ziGhso=;
 b=GFy7bI2hT7DEgyRDRSQU+sfk9rlPQ/pTGbSmpCvOWlXjoxHuYLxiM/rQ
 USpTyewhYYX4ZfBmpZSo3Qnt2lbsbA5ZW3Bc1YhajdXlwOmUzO8bDeaSn
 ROt23OuIM1O0uPNxX5W71LgWd9iFl0/H1LSXksIZQn74wyFlQHk13sxYn
 /Z2RHxlGIuxMzFOh+ajq2GcOsFgQLaQuHtU6CkvdTc26PcuN0LIDa+WXI
 QN4aWhXJhVgFXo3pYQW6BIr+Uosqe4lPud9Tnv4eRJ3WCjP80zro/xHIH
 VFTV7F60qBgyxg29u1+y0W0NZkKI+mkLNqvQwZzQdvvryNdaAGwYraWo1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="301031333"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="301031333"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 07:58:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="689581331"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="689581331"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 26 Sep 2022 07:58:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 07:58:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 07:58:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 07:58:57 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 07:58:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WQUcY/mVG8txg3btQ1e7gr7m/G3+k61LBIhItAj/6MdWQiE/0XpK+pbZcy6mbbhynB/Uvzny8tfgyqyanzr+a6iCqTa3MDBur2IPH125RhpDptqjEnZZ41MzWe6QBC39fa2y9553wjYhh2ThCUsbDj8rYGn8cAiwH0GwxUQQYGfDc2tiXipsEbwoiHsw41PhyhFo37dAvjAIyWLTsQ2xFGNlB264Ac7G1D+m/0+7YiQojg1kC7NQtk3FnytCP/tOluRIFArMutZ1HGidDMazPIwtBKQf9s6/b1zdceCVVZbp6To8cTyCg0k95ZPiWUutADeGSSPoqK5G3qcYFkSDeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nJece3+nj6SSFJBRH4v/wQlK0+19gfDG9cBTYTZn+Lo=;
 b=gEJKicKQKnPjtWGmlez/40duamVwwr4oIQkAJ3ypOzUH9AyGW/kKwV+2CzAtBLrqoIlsBIbTNHn0+7c++BSA7Mp3F/+NQpBZkTGUp9lCU5/7dAm9TEyTqdR/Rs06h+TGjB+xrZmpLcVnxRM7Z7jsvReDX+7d4XJx1TMry/gTPgkQyifR1vfUoc2r5XQu659BkhaRrLIDcCzgK/S7ldmdUE5d30Vc3fptz8W3gPRS1vIH1BF5LapBT6pCLZpS1oCPUYRRQVQkqwdA474yKb3pifH83f2wN45YuF/567/wv+mjGqold50+4cabU/IIHCY+ll0r6ZIbDFaxto9h7JZo+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA1PR11MB7248.namprd11.prod.outlook.com (2603:10b6:208:42c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.24; Mon, 26 Sep
 2022 14:58:54 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%3]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 14:58:54 +0000
Date: Mon, 26 Sep 2022 07:58:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220926145852.4wc6vttbaspx5yw3@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220916082642.3451961-1-jani.nikula@intel.com>
 <20220916152638.u3rnatqrq52x5d32@ldmartin-desk2.lan>
 <87edw7rdgy.fsf@intel.com>
 <20220920072450.2b6wizrw2i5tyk5k@ldmartin-desk2.lan>
 <87tu4u30o7.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87tu4u30o7.fsf@intel.com>
X-ClientProxiedBy: BY5PR13CA0029.namprd13.prod.outlook.com
 (2603:10b6:a03:180::42) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA1PR11MB7248:EE_
X-MS-Office365-Filtering-Correlation-Id: 93a23dc9-9ac8-4389-8f4b-08da9fcfa173
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hN/Pw4c+DyNtEdkBr9t3I0bkXoRekk3YjoTHQVUsg6tHX0ihP9D5D2IZEjkPERsB+x5r+mb/5qj3J02R6CmkSs99dWKNkz1Q3FhGyfDu/Iq4GBHB0Gkseh5iJLnAOU76JtrTDroQDSTpNs5ZMNvHoZ67PJaZ0ti6yNPIKCP5Nw8p5USxc9pLkwXuxqJTg1pIHkda4YpwlCrazwolwicK/VBYztlK+ZUaHQrpKSRtajpNyd6XQJR/h0Vjf6YS/X6tTu2oKuk7scrZd/4P7EVXJ5BO6ITOiO7/qDsuufzLTKnbWC8flttI3duRe2WQRJkk5UrncEWuYN0IUZHvoFRTiAdThaNnc5v5RM/DA12niE5Wx477MjLM/a+xFaiwVpBNyCPjDD9eWOT2mtSb/Bh8p6hmg0XvOEuLhEoVQRrVgKlxN0FVoNBBmkrTah/WSSHpxSRoEXnBavAuoQavzKp8TZRDWMM5iE/0IAVO8Wyvb/vZ3XhaHsXIFlDw44qj6rK3xqYHvaPrUd6H7X5U7qxhwQdQ49x6v70RQlgFXFkKTbxr0JOk3/RUJbpfYSqpCWBIXJWAoml3LtK/wm7yq5lvDRPhilhl4g6TkbHh4MYFh/xE+yaWViZJWbILFAOYwVw75WbO7GRDcrKIWv83SjNzDGOU5XK5ua7bMsn2v8ZdKvmUMcat+WdQvCmfv08DehhTieekZFymkAd63km8WUxi4VIkSqwar8kzKRCpUAb90PQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(346002)(136003)(366004)(376002)(451199015)(316002)(1076003)(6636002)(26005)(9686003)(6512007)(186003)(86362001)(6862004)(8936002)(66946007)(2906002)(66556008)(66476007)(4326008)(8676002)(5660300002)(36756003)(83380400001)(6506007)(41300700001)(966005)(6486002)(82960400001)(38100700002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?t5VOgp1LABJg9snBpr/oEg2mlZPH9LqRPE77IsmfT6kuXEjifN8csAvgbHie?=
 =?us-ascii?Q?zPvCmUhcjzU8RtWuzvf+n1h2aPz5esNf9DYdHjU60/NdVUK5nI3LrVSVj+8d?=
 =?us-ascii?Q?AWQAhokYejreK/E/uM0j7JhqLA5mFhHQ/SHT4O4A95qntpfMcn9QhJBEennD?=
 =?us-ascii?Q?Wbv1k4bh9WpyGtG7CyEJcSUcxQFr0yMr/I+Emr/6VIZfDdYI0wGDnQTy7jno?=
 =?us-ascii?Q?FO+NGi1Ti+klA+ttNn4gCm15Cj7RJeAj4fwPlKEmzRMPUI4jb113jxMLWeYu?=
 =?us-ascii?Q?IqBTn6x76DVfGfN8o10UeeHTuNWDVFOzyvAeIt7vJGqnuupGJgwT/0MloeB2?=
 =?us-ascii?Q?oAsFWkgeeG0phkQXlWgeDkAilD3vBEQuh3bWewVQPBgIWhbpy4XUehpxIAY+?=
 =?us-ascii?Q?CPHYGr/fAI1bs/Cm2dNOvfpDBomKIDSRS2r4S3oSyG97kBlnGQ5uHV8uGlKK?=
 =?us-ascii?Q?It5EVFOrk3KxSXmlSCR4N0U8NQ6EfhLndLf7ut9j/gwGOlbOhExs0njqfRSx?=
 =?us-ascii?Q?1xrXyBMnOZo45gV9bM5prEKe7DlLoss963/veZdeoQtM02H344NSebxObAj1?=
 =?us-ascii?Q?tIbCTf+o36Jdwb944CTzrb/exjrbPrkqbHlDUR7EvdMrTvL9cpJlHri1sKPi?=
 =?us-ascii?Q?lEH/SUlbTYqUPWq4UdlkAUs9MK0acvrq4ipPma4/CnVQZKRFtpynb2O/iE/V?=
 =?us-ascii?Q?7cr7LlYY+0bX2t6vzxCnhUvD6R4kIKQoXfHu5g0TwioX+Eb6Whg17vy6btWB?=
 =?us-ascii?Q?K+IL3AkFA5wPFlOeQvW7K8LQJBTgBPMfSFOeV74M9aqD6gl5+ueUn4H37x2w?=
 =?us-ascii?Q?Wi7ES/KN4/ExjTdjBxUl0B38yigEZealmWiwlLLKC8IbIpf80z7MlnybKZuu?=
 =?us-ascii?Q?5stu0tCtyapGuixcNlk47Vx2s3n3oWNe/tqyxpCCRWWb+xqJ1CiPlZksk/wV?=
 =?us-ascii?Q?JXOjw1C+JfXwt2xKCYSJIHHOwRU07NimGecxP1Qvt9B8sW2c4ARzKuk5wzzd?=
 =?us-ascii?Q?3zqtm377DzBesezKfV2muml8S0F3YrX5f5ATkSwFJqb240qJxiDT+yEFpMV8?=
 =?us-ascii?Q?6VLpQQHkV+nvkXeMVjNA+95Hq+NUIkiXmTtEZLCHz9Cl9AM7loe9GvEQui3f?=
 =?us-ascii?Q?Dcoeki2lvutj91Idu0xwTHgtFIUKy7Nv+RN0T+vrlDjMhxBtgoQfxlLW8wpS?=
 =?us-ascii?Q?5OKC5lhTNgB2OAjJEfoypo3MSWN+hGSxc6rNVNiA0UJhbsRSQOhtC3HP18vx?=
 =?us-ascii?Q?ShhY5/cQc/9AxKTtxIG1rjjekV9yfX6huCp7ZSHZblEFGigs6FtXXhSUyH6j?=
 =?us-ascii?Q?/WGOZAFNwrnm1m9g2RZeSX58zxn/sW2YSkgRtW3jXsclj7O3+5Oyh4t64mu8?=
 =?us-ascii?Q?alYhLnk8wwqZeiHC2eKYNFCHzVUOv/vkk6UaglscEbsNW7EfnGAuKuykcmoq?=
 =?us-ascii?Q?KpVtJdONmMyrZtwNJWoTXSvhYlBNGPOf6g6s69eEEr9YdsiZmtiY5Uy2d+03?=
 =?us-ascii?Q?e4BCCyfmtVxuANtGjo4EBG/eh4AelYO/VKDNio4yxfA8HxQqsqpmi61s4yfz?=
 =?us-ascii?Q?XguRov1JOsekwDAeusIqSioQBSo2RtyO3ES2wMwQw5zlzGAtfu0KLiJrRXyy?=
 =?us-ascii?Q?Cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93a23dc9-9ac8-4389-8f4b-08da9fcfa173
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 14:58:54.3972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vyTF7I04ANth545KURYazZqpWkZ02kY+bXmaY2ZW6KlhooAGfd4Flg9qFCegN2hiHFsAvgP995pH35DP+KYEA3JgCiNY/lS/9l1SgpGpSnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7248
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix device info for devices
 without display
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 26, 2022 at 01:11:36PM +0300, Jani Nikula wrote:
>On Tue, 20 Sep 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Mon, Sep 19, 2022 at 11:10:53AM +0300, Jani Nikula wrote:
>>>On Fri, 16 Sep 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>> On Fri, Sep 16, 2022 at 11:26:42AM +0300, Jani Nikula wrote:
>>>>>Commit 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask
>>>>>to runtime info") moved the pipe_mask member from struct
>>>>>intel_device_info to intel_runtime_info, but overlooked some of our
>>>>>platforms initializing device info .display = {}. This is significant,
>>>>>as pipe_mask is the single point of truth for a device having a display
>>>>>or not; the platforms in question left pipe_mask to whatever was set for
>>>>>the platforms they "inherit" from in the complex macro scheme we have.
>>>>>
>>>>>Add new NO_DISPLAY macro initializing .__runtime.pipe_mask = 0, which
>>>>>will cause the device info .display sub-struct to be zeroed in
>>>>>intel_device_info_runtime_init(). A better solution (or simply audit of
>>>>>proper use of HAS_DISPLAY() checks) is required before moving forward
>>>>>with [1].
>>>>>
>>>>>Also clear all the display related members in runtime info if there's no
>>>>>display. The latter is a bit tedious, but it's for completeness at this
>>>>>time, to ensure similar functionality as before.
>>>>>
>>>>>[1] https://lore.kernel.org/r/dfda1bf67f02ceb07c280b7a13216405fd1f7a34.1660137416.git.jani.nikula@intel.com
>>>>>
>>>>>Fixes: 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask to runtime info")
>>>>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>>>Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
>>>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>>>---
>>>>> drivers/gpu/drm/i915/i915_pci.c          | 11 ++++++-----
>>>>> drivers/gpu/drm/i915/intel_device_info.c |  6 ++++++
>>>>> 2 files changed, 12 insertions(+), 5 deletions(-)
>>>>>
>>>>>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>>>>>index 77e7df21f539..cd4487a1d3be 100644
>>>>>--- a/drivers/gpu/drm/i915/i915_pci.c
>>>>>+++ b/drivers/gpu/drm/i915/i915_pci.c
>>>>>@@ -41,6 +41,8 @@
>>>>> 	.__runtime.media.ip.ver = (x), \
>>>>> 	.__runtime.display.ip.ver = (x)
>>>>>
>>>>>+#define NO_DISPLAY .__runtime.pipe_mask = 0
>>>>>+
>>>>> #define I845_PIPE_OFFSETS \
>>>>> 	.display.pipe_offsets = { \
>>>>> 		[TRANSCODER_A] = PIPE_A_OFFSET,	\
>>>>>@@ -519,9 +521,8 @@ static const struct intel_device_info ivb_m_gt2_info = {
>>>>> static const struct intel_device_info ivb_q_info = {
>>>>> 	GEN7_FEATURES,
>>>>> 	PLATFORM(INTEL_IVYBRIDGE),
>>>>>+	NO_DISPLAY,
>>>>> 	.gt = 2,
>>>>>-	.__runtime.pipe_mask = 0, /* legal, last one wins */
>>>>>-	.__runtime.cpu_transcoder_mask = 0,
>>>>> 	.has_l3_dpf = 1,
>>>>> };
>>>>>
>>>>>@@ -1039,7 +1040,7 @@ static const struct intel_device_info xehpsdv_info = {
>>>>> 	XE_HPM_FEATURES,
>>>>> 	DGFX_FEATURES,
>>>>> 	PLATFORM(INTEL_XEHPSDV),
>>>>>-	.display = { },
>>>>>+	NO_DISPLAY,
>>>>> 	.has_64k_pages = 1,
>>>>> 	.needs_compact_pt = 1,
>>>>> 	.has_media_ratio_mode = 1,
>>>>>@@ -1081,7 +1082,7 @@ static const struct intel_device_info dg2_info = {
>>>>>
>>>>> static const struct intel_device_info ats_m_info = {
>>>>> 	DG2_FEATURES,
>>>>>-	.display = { 0 },
>>>>>+	NO_DISPLAY,
>>>>> 	.require_force_probe = 1,
>>>>> 	.tuning_thread_rr_after_dep = 1,
>>>>> };
>>>>>@@ -1103,7 +1104,7 @@ static const struct intel_device_info pvc_info = {
>>>>> 	.__runtime.graphics.ip.rel = 60,
>>>>> 	.__runtime.media.ip.rel = 60,
>>>>> 	PLATFORM(INTEL_PONTEVECCHIO),
>>>>>-	.display = { 0 },
>>>>>+	NO_DISPLAY,
>>>>> 	.has_flat_ccs = 0,
>>>>> 	.__runtime.platform_engine_mask =
>>>>> 		BIT(BCS0) |
>>>>>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>>>>>index 1434dc33cf49..20575eb77ea7 100644
>>>>>--- a/drivers/gpu/drm/i915/intel_device_info.c
>>>>>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>>>>>@@ -433,8 +433,14 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>>>>> 		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
>>>>> 						   DRIVER_ATOMIC);
>>>>> 		memset(&info->display, 0, sizeof(info->display));
>>>>>+
>>>>>+		runtime->cpu_transcoder_mask = 0;
>>>>> 		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
>>>>> 		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));
>>>>>+		runtime->fbc_mask = 0;
>>>>>+		runtime->has_hdcp = false;
>>>>>+		runtime->has_dmc = false;
>>>>>+		runtime->has_dsc = false;
>>>>
>>>> why are these not inside __runtime.display?
>>>
>>>The short answer, because there isn't one. It's an anonymous struct for
>>>now.
>>
>> /me confused... that doesn't really answer the question. Why would we
>> not move these inside a display substruct? When moving stuff out of
>> device_info.display.x, it seems the better place would be inside
>> __runtime.display.x, not __runtime.x.
>>
>> I must be missing something here. We had a "recent" move of these flags
>> lying around in device_info to be inside a display substruct -
>> commit d53db442db36 ("drm/i915: Move display device info capabilities to its
>> own struct") - to be able to keep the display flags together
>> and zero them together.
>
>So there were a few discussions spread around, but effectively the patch
>has stalled here.
>
>There's probably a bigger discussion to be had about the management of
>mutable and immutable device info, and display and non-display info.
>
>In the mean time, okay to merge this one?


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
