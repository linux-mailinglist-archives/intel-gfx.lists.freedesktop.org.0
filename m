Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0944679DDA1
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 03:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D21E10E0E1;
	Wed, 13 Sep 2023 01:36:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1994310E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 01:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694569005; x=1726105005;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=DLjeV9xqrD3QH1Md1PYhpwCKw1F5d4KnH1P+IE7zn64=;
 b=Mtb1vCQB3gH+0Lv7od4DWN+PN7b/cGbW6BOZ2Z8eoAC3avAB3UTK43Xd
 4q8v+Ke6Z0DYQeCpku5omvGL1h8Dcg9E6oNrATC+cpfX19/P6jROZqHgC
 XhtZds35yxZQF7RFT4Kj2CgZPMG40HVKF3h4PHDPmYC2F9UaFmfJHQLRC
 5R2i2MxQdDMdLyZgkQ4Z32rd9QE9xeDNnERsRMn5vjguLArEv6DXZUoh9
 0X0NIv7TPinPuJqE8UxrVDsovFHVQSziJktqefql8E2wdOFzDsINlTPt5
 bdqmg9NVsCfFT1WPoHPJ+oTXn1I5n+kap+LwJVSus1c2gWcaJrGwjKRAy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="444978890"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="444978890"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 18:36:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="917650834"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="917650834"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 18:36:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 18:36:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 18:36:43 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 18:36:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cXOBfhcurZd6Xnb0mLjno1HMaL6YdGoUF+PsPCb1rzO5Huuat62vpxlbIIHkgowvwWv/OLr44AjkYZZ9ujth0Nr/qIcPrn7ZgozVwzQlCvHdtVx7DsWHYi/hlLbFh+gq2uvcDMC5/64kX706w86CmwZiJeCXgbDSD2kZAXrSaektSDmNJCqsrYJy6hy6lGI0SmSS52mJKiC0/wURkJ0ccLXDw+79pDoXIjZIAQqO9fIboRte7R7ZXxz2RxYYDuWFeam94M7uNonfzmj2CZo1ez+BPtmWxVi3apmQob18uimrTtuT/hqXx0GwDMo8mAZ2ja4MPNV37dclyjI4X6Rjlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LVupKWY4+Qh07Bwnj4admoRkDDIQ8hj/ZK5aQqfrDM8=;
 b=a1YPS44m8P+DXv8PsFCMxmPtiVTUKzefLQUGG6m1EwnrQUS92PkJKNpAyfGD5y5npUr0geRFwiHi8abyBK8ups8z2O2b+uTddM2xwW93bSApWt4aEsFsSq6mfgZlY420VvdmHtvzvA0+D65dGhXjBdbGBqS/9EIr/P2sN69fUw/57VTr8P4flJj35hAS7Pl84Knr+zeEjsGoZ6lkJ6BgDKt8CJqyXp/by1vyMqwPMwwZh5ox/cgfIaCVEKosUk5HYee9LX6YA8F2Vev2IOYFWVas0fLmFp0ENnrBps26B9SAA+frLU/HVgwH6BtZEhINn82DDIXHmTMGgmT+tTGsCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL3PR11MB6411.namprd11.prod.outlook.com (2603:10b6:208:3ba::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.31; Wed, 13 Sep 2023 01:36:15 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 01:36:15 +0000
Date: Tue, 12 Sep 2023 18:36:04 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <ZQESBLpba0nnK24G@unerlige-ril>
References: <20230909011626.1643734-1-ashutosh.dixit@intel.com>
 <20230909011626.1643734-3-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230909011626.1643734-3-ashutosh.dixit@intel.com>
X-ClientProxiedBy: MW4PR03CA0126.namprd03.prod.outlook.com
 (2603:10b6:303:8c::11) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL3PR11MB6411:EE_
X-MS-Office365-Filtering-Correlation-Id: f2885053-5fc8-4ed7-5002-08dbb3f9d204
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TmpjUEMwdqkRF4TmCtCbEWNIhGXRbRA5n8pZMSKHUYTxpJQJbf3FmEmu3KSxcZ0eBarrOUQSdzosSu5WQRnRw+wjOe14idzLCuFA8joaRY6mNWAeO7LLpygdkPhc6LTe9Rv2Jn2Ugy/eFs+05JjMeucnz8N6akqCMAtKsQMhdYk2dckPNXluvx4ing2ZhglIajAmdP9RgtVnXpUDWtEYfB2+1gErPWtVuSvHKo8PEwZFUCdqFjGXKnSeNoQ02iZJ3dCloVzVumKmIjyiLSmp/dzzc3iKiI2mgznUL+dgf5DxNHrcGsR6NdZ0Hdz22pvVTP/jYBLw7b9G1XWtBIMi+x+T7ylBsBUJJqLV91NBY76X1p34IzNoFP8SER4We3OONYR75oQ7srVmxdXwQXMh0x767rmzNe068JLEh6zZ+UVP+l57Izz/XKyW2KZcO3M8aLSUxcc0KZ+kPQLPJRn7sKKqsshAvm0yPTBdg6Ltpo0GWKStUVO/4SM4ZbkHMCCFHQoxgl1vLwVZitsz7CLUTdj+xwhIYmu8tYUyb7wQJCdWYXGVkcS9H5U4mtyHzYJz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(376002)(39860400002)(346002)(136003)(396003)(186009)(451199024)(1800799009)(86362001)(2906002)(5660300002)(4326008)(8676002)(8936002)(6862004)(6666004)(83380400001)(33716001)(6506007)(38100700002)(82960400001)(6486002)(66556008)(6512007)(478600001)(9686003)(41300700001)(26005)(316002)(6636002)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0hqMVRYSmlFWGtvZWJsVk45c0w2TkdzSHlYc21IanBaME5GVURVSmVTbmFI?=
 =?utf-8?B?N0JQbTlQamh0MFhxWVVnUm5RZlRUYTBGaFBhaTFwdDlZdmpldk5oNWtnQjBu?=
 =?utf-8?B?MzltSUhlcDM5NXgwWmJreXdXUGp1VWo5ZTJvSFBKeVM1TW1ENFYwN1EwOUF3?=
 =?utf-8?B?YTVLenF3emgrVkhDenlZV2FWSy9GSGRuc2Z1YWVMZitBc0YweDZ0SlczZUx4?=
 =?utf-8?B?TG9XQkZFcUsvM0Nrb2ZzemM3cTNtNTVoNjlCaEhVajR1OTdacHFwQUFQVUFk?=
 =?utf-8?B?a3hGeFdhd0JkU0hXSnh1MGxCY2toUkQ2M1h6RzFseWV1N1ZncVg4Nmd5OHpE?=
 =?utf-8?B?REtkU0NBdXVXVjVJdmxJQnJKblJjakl4bTZPZVd4Nk5SMU1ZNngzamg1Ymgr?=
 =?utf-8?B?OEs4TG4vTUgwOGtWQTJGUEZ2TENKR3RSQlArcS9GTnJsTVNsQlJ1dllCTFhn?=
 =?utf-8?B?clB3Z2xEamxTb3pmMXVIV0NYdHBiODl3MkJ3UjM1SWRRQzNENFBoaE9uMEFo?=
 =?utf-8?B?ZnBtSStENXRFMUJmclJJL1FwUVdaam13WVlsMVQ5N0JwRkZnNCtUZTl3ampF?=
 =?utf-8?B?MXJ3MzdSSWJLYU5UZjBiazRVU3J2SkZxblRyMklMeEJnT2ZPSVpoNm9vNkRW?=
 =?utf-8?B?cWtNMTMrWm9Sd1lTam81VlViVEV4a0RLSER0b0ExRzRHeUZibGxPUGRSV2JU?=
 =?utf-8?B?ZTc3UzV2b3FsQ2I3VzF2OERmS21BUDlLR2dDdDBQNXFVcHpHMTNFd1ROVnNL?=
 =?utf-8?B?SFhSUkdLT3lXQWNId2ZMcUlvMGJSYi9KblVzS1ZGbEdDWUhiWHNGMnZTTlZQ?=
 =?utf-8?B?R2hLZGNNa3B6dWs1MlNUYThKQ2VWNG1jeHJKYk1zRys4bDFtYmpwM0lYRFZW?=
 =?utf-8?B?SWpPcmN4cXk2WmFPK2JDdzNPNFhZaWZWQVJMeFJaRm41em53QkJJQ0JLSmJx?=
 =?utf-8?B?RlZwVkZId2g0aFQ2dHJacnhaTW01ei9sV1JsS2UwOUFSWVE0S0NleWRpTnk2?=
 =?utf-8?B?MjFzVnFON1BSY1c2dmp4WmQzc0kydHBhL25oUC9GbTFCS0NwK2VmLzNFVWZz?=
 =?utf-8?B?MWUrZ01YTk5aby82bHljTHFBa09pY1BFbzZmMDJlV2VVV3gwb2ROd0p5OSsw?=
 =?utf-8?B?am84bU9qUmRycHFOUVprdEE3aDM3QS84RkRtNHRZOEcvMFRXU01oL25ybWU2?=
 =?utf-8?B?REVidU5xakRoN0tRV0dsWHBwWFdORmxURnl2MWQrTVpxZG9qaVMvblA5TE1o?=
 =?utf-8?B?UHdiQVJNdkdjUi9CMHJtMWhyVHFqQVgwNVFXSFM1VmJwaVRmemFlbm8yVlBL?=
 =?utf-8?B?RFJlL2gzNjJ5SDRpNm9JdUNET1ZKZVJZQ2pJWkhLdHRUYVRmUFFLUHRGR1Na?=
 =?utf-8?B?NWUyL05kb0FMMkF2T3RSWk1iQUdnckpqbjB5eFFRcmtrRU5Gd3lBU3FFZUt6?=
 =?utf-8?B?S01XUzJmTHhvaVBCcEIvOGJnSDFjT1k1bVVZWTZ6RXliRU00ckVTZUFndmhz?=
 =?utf-8?B?VDVMakRWdjJBM1VlQXpnRCsyblpueWphcGsweGtuclhibUlXNGJsTWNOOW5w?=
 =?utf-8?B?eHBxeXlsa3RJWFFiVHl2T2ZLNzkzK1NBZWdSSGhxVDEraWFPTGFHMGJBSk1T?=
 =?utf-8?B?T2grbFQwZTg0ZzlleXJlR0h3RjNSMm9RMi9VTWhrYmFWeDhQaU9HbmpveVlD?=
 =?utf-8?B?SVF6VDJCMEFiUHJranNHS0VBN0lpWFpoTEdzK0c1R1NZS3ZMQkd0TyswSEtt?=
 =?utf-8?B?Nm1GcFFQMTNRa25NaHFtdlcxS3lpMzZ1UVBkTW1XTU8yQWtSWEROMi93TDdn?=
 =?utf-8?B?TzdrM3ZCaE02R0Q1Zk1PMUxuUlQrMkN3MHZZd3kxeElKc28wSGdZRXlBN01V?=
 =?utf-8?B?WXZxYjRVZnFaWklJQUE3cmJrRy9YUFlDTEV3MTk4UmsrYWFGY29IbFNBajYy?=
 =?utf-8?B?Rm83WHVKdzYzWVpMd0xKZWJKbVFnaVcwdG0xa256VWczL1JLV2ZjZW1RNkRT?=
 =?utf-8?B?cDVqVVY2ZndZSlhOSUw1L0FST3ZYOE9PUWNpWWN1RENFMUNhNlV0OFJ4VC80?=
 =?utf-8?B?a3Fubjk4cmNXYUlWVEZyclM0bUpGN2pOY0RUWVFrbzJJVHRsTFFMZmExOE9J?=
 =?utf-8?B?N0hIOVIwWHV0R3g1b0NJRzBGbTdUR29QcFNWTXQ5dHBjVlEyZndmL0Q2Z2xJ?=
 =?utf-8?Q?lvYLb1eP5xZBjBatF8bOIw0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2885053-5fc8-4ed7-5002-08dbb3f9d204
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2023 01:36:15.5779 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: phq8Nsep9GK6Cc1SXGCHH3tw+sHS9XxaGygcxUTqED0Gi039iYhS/xd1ZAiwzD/bGwfmIVsy8bYjLDE+qNHljkqBhHFjrE7mR8fev4LKIHg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6411
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/perf: Remove gtt_offset from
 stream->oa_buffer.head/.tail
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

On Fri, Sep 08, 2023 at 06:16:25PM -0700, Ashutosh Dixit wrote:
>There is no reason to add gtt_offset to the cached head/tail pointers
>stream->oa_buffer.head and stream->oa_buffer.tail. This causes the code to
>constantly add gtt_offset and subtract gtt_offset and is error
>prone (e.g. see previous patch).
>
>It is much simpler to maintain stream->oa_buffer.head and
>stream->oa_buffer.tail without adding gtt_offset to them and just allow for
>the gtt_offset when reading/writing from/to HW registers.
>
>Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>---
> drivers/gpu/drm/i915/i915_perf.c | 53 ++++++++------------------------
> 1 file changed, 13 insertions(+), 40 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index ec0fc2934045a..1347e4ec9dd5a 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -543,10 +543,9 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
> {
> 	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
> 	int report_size = stream->oa_buffer.format->size;
>-	u32 head, tail, read_tail;
>+	u32 tail, hw_tail;
> 	unsigned long flags;
> 	bool pollin;
>-	u32 hw_tail;
> 	u32 partial_report_size;
>
> 	/* We have to consider the (unlikely) possibility that read() errors
>@@ -556,6 +555,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
> 	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
>
> 	hw_tail = stream->perf->ops.oa_hw_tail_read(stream);
>+	hw_tail -= gtt_offset;

Since this patch intends to remove gtt_offset for all head/tail 
calculations, we don't need patch 1/3. Patch 1 can be dropped.

>
> 	/* The tail pointer increases in 64 byte increments, not in report_size
> 	 * steps. Also the report size may not be a power of 2. Compute
>@@ -565,16 +565,8 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
> 	partial_report_size %= report_size;
>
> 	/* Subtract partial amount off the tail */
>-	hw_tail -= gtt_offset;
> 	hw_tail = OA_TAKEN(hw_tail, partial_report_size);
>
>-	/* NB: The head we observe here might effectively be a little
>-	 * out of date. If a read() is in progress, the head could be
>-	 * anywhere between this head and stream->oa_buffer.tail.
>-	 */
>-	head = stream->oa_buffer.head - gtt_offset;
>-	read_tail = stream->oa_buffer.tail - gtt_offset;
>-
> 	tail = hw_tail;
>
> 	/* Walk the stream backward until we find a report with report
>@@ -588,7 +580,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
> 	 * memory in the order they were written to.
> 	 * If not : (╯°□°）╯︵ ┻━┻
> 	 */
>-	while (OA_TAKEN(tail, read_tail) >= report_size) {
>+	while (OA_TAKEN(tail, stream->oa_buffer.tail) >= report_size) {
> 		void *report = stream->oa_buffer.vaddr + tail;
>
> 		if (oa_report_id(stream, report) ||
>@@ -602,9 +594,9 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
> 	    __ratelimit(&stream->perf->tail_pointer_race))
> 		drm_notice(&stream->uncore->i915->drm,
> 			   "unlanded report(s) head=0x%x tail=0x%x hw_tail=0x%x\n",
>-		 head, tail, hw_tail);
>+		 stream->oa_buffer.head, tail, hw_tail);
>
>-	stream->oa_buffer.tail = gtt_offset + tail;
>+	stream->oa_buffer.tail = tail;
>
> 	pollin = OA_TAKEN(stream->oa_buffer.tail,
> 			  stream->oa_buffer.head) >= report_size;
>@@ -754,13 +746,6 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
>
> 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
>
>-	/*
>-	 * NB: oa_buffer.head/tail include the gtt_offset which we don't want
>-	 * while indexing relative to oa_buf_base.
>-	 */
>-	head -= gtt_offset;
>-	tail -= gtt_offset;
>-
> 	/*
> 	 * An out of bounds or misaligned head or tail pointer implies a driver
> 	 * bug since we validate + align the tail pointers we read from the
>@@ -896,9 +881,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
> 		 * We removed the gtt_offset for the copy loop above, indexing
> 		 * relative to oa_buf_base so put back here...
> 		 */
>-		head += gtt_offset;
> 		intel_uncore_write(uncore, oaheadptr,
>-				   head & GEN12_OAG_OAHEADPTR_MASK);
>+				   (head + gtt_offset) & GEN12_OAG_OAHEADPTR_MASK);
> 		stream->oa_buffer.head = head;
>
> 		spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
>@@ -1043,12 +1027,6 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
>
> 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
>
>-	/* NB: oa_buffer.head/tail include the gtt_offset which we don't want
>-	 * while indexing relative to oa_buf_base.
>-	 */
>-	head -= gtt_offset;
>-	tail -= gtt_offset;
>-
> 	/* An out of bounds or misaligned head or tail pointer implies a driver
> 	 * bug since we validate + align the tail pointers we read from the
> 	 * hardware and we are in full control of the head pointer which should
>@@ -1111,13 +1089,8 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
> 	if (start_offset != *offset) {
> 		spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
>
>-		/* We removed the gtt_offset for the copy loop above, indexing
>-		 * relative to oa_buf_base so put back here...
>-		 */
>-		head += gtt_offset;
>-
> 		intel_uncore_write(uncore, GEN7_OASTATUS2,
>-				   (head & GEN7_OASTATUS2_HEAD_MASK) |
>+				   ((head + gtt_offset) & GEN7_OASTATUS2_HEAD_MASK) |
> 				   GEN7_OASTATUS2_MEM_SELECT_GGTT);
> 		stream->oa_buffer.head = head;
>
>@@ -1705,7 +1678,7 @@ static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
> 	 */
> 	intel_uncore_write(uncore, GEN7_OASTATUS2, /* head */
> 			   gtt_offset | GEN7_OASTATUS2_MEM_SELECT_GGTT);
>-	stream->oa_buffer.head = gtt_offset;
>+	stream->oa_buffer.head = 0;
>
> 	intel_uncore_write(uncore, GEN7_OABUFFER, gtt_offset);
>
>@@ -1713,7 +1686,7 @@ static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
> 			   gtt_offset | OABUFFER_SIZE_16M);
>
> 	/* Mark that we need updated tail pointers to read from... */
>-	stream->oa_buffer.tail = gtt_offset;
>+	stream->oa_buffer.tail = 0;
>
> 	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
>
>@@ -1747,7 +1720,7 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
>
> 	intel_uncore_write(uncore, GEN8_OASTATUS, 0);
> 	intel_uncore_write(uncore, GEN8_OAHEADPTR, gtt_offset);
>-	stream->oa_buffer.head = gtt_offset;
>+	stream->oa_buffer.head = 0;
>
> 	intel_uncore_write(uncore, GEN8_OABUFFER_UDW, 0);
>
>@@ -1764,7 +1737,7 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
> 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
>
> 	/* Mark that we need updated tail pointers to read from... */
>-	stream->oa_buffer.tail = gtt_offset;
>+	stream->oa_buffer.tail = 0;
>
> 	/*
> 	 * Reset state used to recognise context switches, affecting which
>@@ -1801,7 +1774,7 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
> 	intel_uncore_write(uncore, __oa_regs(stream)->oa_status, 0);
> 	intel_uncore_write(uncore, __oa_regs(stream)->oa_head_ptr,
> 			   gtt_offset & GEN12_OAG_OAHEADPTR_MASK);
>-	stream->oa_buffer.head = gtt_offset;
>+	stream->oa_buffer.head = 0;
>
> 	/*
> 	 * PRM says:
>@@ -1817,7 +1790,7 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
> 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
>
> 	/* Mark that we need updated tail pointers to read from... */
>-	stream->oa_buffer.tail = gtt_offset;
>+	stream->oa_buffer.tail = 0;
>

Looks correct.

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh
> 	/*
> 	 * Reset state used to recognise context switches, affecting which
>-- 
>2.41.0
>
