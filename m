Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A21934B8695
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 12:23:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3CC510E931;
	Wed, 16 Feb 2022 11:23:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A729410E921
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645010633; x=1676546633;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hIJSQ80PtScfUf3Ja54yBNS9Zq5DNrbGxTsQOJYoa5I=;
 b=D3h9IxLEA84QD+4jOfnvssp7NW5AJZ8TxvIP7WGua/oCFH5sMscCCFqd
 e5iF7lPQhSZ74agktcr1+0wKjvkWU9Ch5Ibt3APjjzlJVfHZHwmLcc230
 hUE6QQWbnToc3xFHJbLZTSd2lWMG1BUdGhcLrzAuW/DHUMg8ehha+7PqT
 BjjGeknfk0pLlNoQDbp1I6CEeA//1rJMuygbpPrEcm3m0Hnb9iVq1ln9Q
 x7M3zoxhWOjuAyVmBB/cYHKUO5ziTjwhvA/H9cwEmlQqiLhV02B7hZnog
 8yFtvIj+n7JPejMvehsSaBwes8p9zB98HHqpVojRZS1irsKSJHIZeX3Pd w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="230545286"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="230545286"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 03:23:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="633518604"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 16 Feb 2022 03:23:53 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 03:23:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 16 Feb 2022 03:23:52 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 16 Feb 2022 03:23:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UbY7invkFx1zFcighMx2RlBOuovhRrGDGBr6xfm/jPPtZqDRdDqTwXHx2rm60GXDaSREYzUe0+xTD/yeiiHboM6S+WIyJw/tNlP4hhjhjTaC7KMPxUPT5kjYLru+at8sJd+Hq6cPgpgR1rnTK/GUAuLvNMxM1Q9bYDV++plXCuvgNtYhqaPNCDIMV9GRs9bCNzIBekm+iXZwj/SMlzUWJ2gvwBvoVzizYRbHHFdvX2Ej+qgnmZKoxzhHagunEP9KlhctjMN4a3unQC3rtDgZt5RU90syJ4t/IS6QS6dAVt2QQYE5+9K0Pu19+HuRB9YE5PfVCsqQProC4m/R6TFHXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2b7fCzVRNcHEKX3DgPTljWUsoQtWzMpCev6tzWlRbTg=;
 b=IryknTWvpmOSgClsxYpP440PgHOjTlDw4h3X0q+WAoP5pB3YfLD5LSAiat+0WEJ5sPUK3ib1hHCHA5usloNfMBI276zN7dnLTdDUyk4OvQUhWUYeAMmDokuJ0P0rYvNLn0H8d29YPwH1NuuygoOG1Kms7gRdESbMA+/7LKGi/Fi/pGJ/ULn8ozr71HlXx4Ij9T5sNA2dCclx2HmSsmT+X1Jd8Lewcncpido6AzgvboOLZJJnflMxbSeWM/FqiLqlC3zD0DbVN3U/bY0D9prZ69toyoBhd7IsCazZK8QBSPULt/4LNm1yydf6J4pXQZKa4+06ohTZIrDKTZbSasrNug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by CY4PR11MB1366.namprd11.prod.outlook.com (2603:10b6:903:2b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.15; Wed, 16 Feb
 2022 11:23:50 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::494f:20c6:4510:e763]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::494f:20c6:4510:e763%6]) with mapi id 15.20.4995.016; Wed, 16 Feb 2022
 11:23:50 +0000
Message-ID: <ec7d4042-b7c1-9892-7491-589846d78ca3@intel.com>
Date: Wed, 16 Feb 2022 16:53:40 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-11-ville.syrjala@linux.intel.com>
 <b713032b-2696-677f-d1a6-b3eece58b678@intel.com> <YgzaOVz15qLUTd7g@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <YgzaOVz15qLUTd7g@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BM1PR01CA0106.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::22)
 To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0e8f87f3-a4f7-44bc-2297-08d9f13ece45
X-MS-TrafficTypeDiagnostic: CY4PR11MB1366:EE_
X-Microsoft-Antispam-PRVS: <CY4PR11MB13667A5210938BD109067352CE359@CY4PR11MB1366.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4hYb14++c3BIQi9hiocIlTwObcM4FJOggZUpDgLLO07mq4lFOIS2WS+CTFcyl2jCvEhiGN2YilPEH/3Fi8SwCR+c6QY+p96b6A3IF53q/2MYvtXuc3x+H4ZXnj7vuxEsKwcxevj22wDg+cYZ+SUJVWcVRKiTb2tzMCIBia53FR5D3F+R/u+PdposJQlPZmXeNQMdBCdGAFmD9OeRDMmcH/7Rhg/RJkB+NOxSTPccOJcD9vh6uKMbaKkKXntFYjRpYzfJ25sI+xNU1lE5Bg3YUTsJDl+sXSl3IdlxTLTSYBtzFrcSAxLxR4eLQo2rceWmsmGB7WHReIQaz6fdHzv+nByfwCkXYofRmqpifWJREoKWpBGmiWUqXeszSMWcfD7Pvrm6K8b5tIh2c9C6UoBinHSBcPWRwrXLuoQUAq/7QRcPLWdQwYtfKbT/KtIZ3bRPnoCzYJogl1ef1aqDbslktUJx7wVMK4CbKYOX8O+tvGnN03dFvm/GyC/YCrulIxICpkvawV1xA5prYlRhuZYV1Ldq2uR6IG7hFb4q1m0KPDrB0g8D9iVdSI+9ZDaXhbLWSiOcCVwRoGdekT3uqIAz3mz3a8g9H9KoBvQ62ogz4ER/5hfxMEgIE46863HfclJ9GNsbk+ptclJnkulk72RFDrIowizbJ3luWLhNzRobb1rbA7nqS08ktlnWtztcwcmWCpglf/Ia4iT8miAJnLOMib8hKBhtGDgZM07lxi6Rmt4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6506007)(508600001)(36756003)(6512007)(38100700002)(83380400001)(316002)(82960400001)(55236004)(53546011)(66574015)(6486002)(4326008)(2616005)(6916009)(31696002)(2906002)(66946007)(186003)(26005)(8676002)(8936002)(31686004)(66476007)(66556008)(6666004)(5660300002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dHcyL2RCUVl6MWFvUkxyZTF0aENoSXE2a3hQK3JqaG85aHZzZytZcENDQjVJ?=
 =?utf-8?B?Ull3bGEwbVZ0Y0pyRVQ2N09HWmNHcmpZc2xNb2dMbUlhTTI4VjE3akNXTisx?=
 =?utf-8?B?SC9COUJVOWhkSnRCWG8yQ2JvVVlmK0hrMWdSU3hEUERqSlgvRGtaRk90YXR6?=
 =?utf-8?B?NzJYRW44Z2drYWM4OXFTdjBqcXNySE0zemhLczRaNW90eFo2OFI4bE5VdDFx?=
 =?utf-8?B?bGdwM0NjaG5KNkNUMkJKdlgydkJQbk5KZ0hJc1NXQVZFMVFEcmY4WWwzRmNS?=
 =?utf-8?B?eW1pTlFRT0Jzc0kzTm9mOTk5Zko5VUpyTkVDVmtCMi9oaUVtMytPd2gvQTlz?=
 =?utf-8?B?aXVpeWdXNllzc0lpTkNRQ0FqMDJkS3lGd3MxV0RCT05HSzU3R25CZVIzZUlh?=
 =?utf-8?B?aVVRdHd1WTg3blE2U1JEYy8wcWFWZ1ZLRlpPT3puNU0xQ1kyd0MvcTc0ZGZn?=
 =?utf-8?B?L1hncTBHeUthS1FTVnlZc01zNmNvUkNITk90RDhJMHZjWWpXNEJZa3dwYTlU?=
 =?utf-8?B?S0tmR0J4L1pFcjZibWRZM3U2b2RvSFRRanJTS210NjBsRnVSOVI3UUVuRUN1?=
 =?utf-8?B?dWx6alVJQUpyNWxBdEc5NzhUNjJRdjZLeG5UbHVpZ2xoWW5NU1RzbmkxUGF0?=
 =?utf-8?B?d1pFL0FRVHNVOGNNaFdBQldOaDVUWmZzUlAzUXJhYU9XYTMrb3Z2cmpIQUVk?=
 =?utf-8?B?ck9yZEQ5eUJsNGI4N0tPbjJaVDAxRUFiWlAxU2U5dE8xaTl0RmhmWVBBRDg3?=
 =?utf-8?B?YXBSb3JpSlJ5QUJ6dWlVUkViczljcmZLL2hPdkE5WjZvcEJWbTNFc1IvOG9F?=
 =?utf-8?B?VHR6Z3RqQVFFSlJ2MjliUWpzemliNUtLZHI1M09kZnE4dVNsL3ZSNkNDUXhk?=
 =?utf-8?B?aU5RV2U2RjhuSlBzVUVKOE5YUzhoNVQzNkQ2LzVaa2lBOGJrMkxEcVc0M0VY?=
 =?utf-8?B?SnRIU3FmUTZUQWlyTmUxeStkNWJaUlA1b20xdHJmYmFCdm1OZnpqRVd5azAy?=
 =?utf-8?B?NjNHVllTR2NrcEE2dnExN2c0QTJPd0dKWmMvOTZqdUJmZmxubHAxU1hvQzlr?=
 =?utf-8?B?VzBrdzJjbG1XcUdaRERUTGhlK0M3SVlVK01iM1BESnBXb0Qvd2J1RGk5eTlN?=
 =?utf-8?B?bmlhRzd0RGw3dnZjdGJVN2tyMWswTlR0YXZ1Z1RLQmlmNlEyT2xFNGhCdUNj?=
 =?utf-8?B?MEgzR2U5MUp5ZFJ0S3ZaMFhEd3phbEFDMkdpOG5wR1NoQ0o0SHN0RjVvMHox?=
 =?utf-8?B?NEIvODAzeHRlVjNPZUp3b01ORURVZC9CblJnRFRaMVNvY2JjK2kyMk5iQWFt?=
 =?utf-8?B?bjl6dlN2V0xtb3R2ejhtUVY1TGlQU2xXUFlTRFJrSFppMktzRjg0cFJTOVZH?=
 =?utf-8?B?S0dOKzNpWG5wajhzNGQvM1NRVG1pMDlDQUZuN29LNjdocDNtc2pwMmhFTXJl?=
 =?utf-8?B?UmNRQ3NyMElDV0IwRE4zU09RbkxZTGpZVTlMam9uWXJrZ3JSYjlhb2t2T25N?=
 =?utf-8?B?bFU1OERWajIyUGt0U1Z1NnRKWGNsUkVxN1pTbHUwN2FnZ0haZWJZTmlYZkp1?=
 =?utf-8?B?cGprcWllWnJiVFEydUNHZ09jdU14Nm13OE1GbXh0RHIvS3hYdll1Yi9Ld2JO?=
 =?utf-8?B?Mm03dTY4a2ozNlQvK1lBdWZGZmtaT0c1bjB4bEJJUHl6SUFWbDU1aDVtVXQ4?=
 =?utf-8?B?ZythK25HWTBVc1d4dXhMSWZ2bWY0UGd0OEduQTZTd2NRcW9udlZPKzJGWmRk?=
 =?utf-8?B?UERxN2Fqd3lKSmZzV1VMdERlY0t4N3kwdEVzbE05azJVRXh1eTdUVyswMkhD?=
 =?utf-8?B?blFGSHBLaWpXd2VIZTZGYmZvcFZCR2x4bzZlLzFmenloSzhSSWQvWWVUMkE3?=
 =?utf-8?B?cTZNRFljeGZkcmJ6akFzN0dHcXFzTjhpSVJrRUlYdWt6dTJGN21Oc1RidTFs?=
 =?utf-8?B?c2d6L1lHbGxsdC83djlEdEtIcXF0NlJvT1dMbzNDeVB1NkxIYjRsSmRNTUUw?=
 =?utf-8?B?cHhQalRlcmFSQ2FGenJvakhyM2J2Y2VHcElQaEFhM3AvRzdqZzlTSW5sZTBu?=
 =?utf-8?B?VkY0cVhpcVdmY2k3MnArM1c5SnlXRVg1WFM2Y2Y2dmw2M0pGZGZvSk5VaDVv?=
 =?utf-8?B?SGh5elBkM0JtTkRBT1J6YVNSVU85NFNwVGM3eVlPWDc5YVNzZyt4N2d0NkQw?=
 =?utf-8?B?K2JvNkxNK2lsZXpUMVVpRHd6MW0wQklnYkxPS2tJWDVSa2hJcHRYeGdkVU1Y?=
 =?utf-8?B?WXRYTUNzQ0NqYXhlN0IwOGhxbHlRPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e8f87f3-a4f7-44bc-2297-08d9f13ece45
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2022 11:23:50.4757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /XhXnrMv0tR8OwXN+9KH8uYljrVn4e3r6Vxqd5ULWXy8q3mVC+IuAgPCfMt8q5D1XTaCaAhKlVsAJYce9xLDx1sUiFBV8aMAyNJqLTGkY80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1366
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915: Eliminate bigjoiner boolean
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


On 2/16/2022 4:34 PM, Ville Syrjälä wrote:
> On Wed, Feb 16, 2022 at 04:27:49PM +0530, Nautiyal, Ankit K wrote:
>> On 2/16/2022 12:02 AM, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> Since we now have the bigjoiner_pipes bitmask the boolean
>>> is redundant. Get rid of it.
>>>
>>> Also, populating bigjoiner_pipes already during
>>> encoder->compute_config() allows us to use it much earlier
>>> during the state calculation as well. The initial aim is
>>> to use it in intel_crtc_compute_config().
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
>>>    drivers/gpu/drm/i915/display/intel_display.c  | 50 ++++++++-----------
>>>    .../drm/i915/display/intel_display_debugfs.c  |  2 +-
>>>    .../drm/i915/display/intel_display_types.h    |  3 --
>>>    drivers/gpu/drm/i915/display/intel_dp.c       | 13 ++---
>>>    drivers/gpu/drm/i915/display/intel_vdsc.c     |  8 +--
>>>    .../drm/i915/display/skl_universal_plane.c    |  2 +-
>>>    7 files changed, 36 insertions(+), 44 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
>>> index 1f448f4e9aaf..da6cf0515164 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
>>> @@ -640,7 +640,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>>>    	 * FIXME bigjoiner fastpath would be good
>>>    	 */
>>>    	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
>>> -	    crtc_state->update_pipe || crtc_state->bigjoiner)
>>> +	    crtc_state->update_pipe || crtc_state->bigjoiner_pipes)
>>>    		goto slow;
>>>    
>>>    	/*
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 47b5d8cc16fd..192474163edb 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -1926,7 +1926,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>>>    	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
>>>    		return;
>>>    
>>> -	if (!new_crtc_state->bigjoiner) {
>>> +	if (!new_crtc_state->bigjoiner_pipes) {
>>>    		intel_encoders_pre_pll_enable(state, crtc);
>>>    
>>>    		if (new_crtc_state->shared_dpll)
>>> @@ -2727,7 +2727,7 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
>>>    static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
>>>    					   struct drm_display_mode *mode)
>>>    {
>>> -	if (!crtc_state->bigjoiner)
>>> +	if (!crtc_state->bigjoiner_pipes)
>>>    		return;
>>>    
>>>    	mode->crtc_clock /= 2;
>>> @@ -2811,7 +2811,7 @@ static void intel_bigjoiner_compute_pipe_src(struct intel_crtc_state *crtc_state
>>>    {
>>>    	int width, height;
>>>    
>>> -	if (!crtc_state->bigjoiner)
>>> +	if (!crtc_state->bigjoiner_pipes)
>>>    		return;
>>>    
>>>    	width = drm_rect_width(&crtc_state->pipe_src);
>>> @@ -4218,7 +4218,6 @@ static void intel_bigjoiner_get_config(struct intel_crtc_state *crtc_state)
>>>    	if (((master_pipes | slave_pipes) & BIT(pipe)) == 0)
>>>    		return;
>>>    
>>> -	crtc_state->bigjoiner = true;
>>>    	crtc_state->bigjoiner_pipes =
>>>    		BIT(get_bigjoiner_master_pipe(pipe, master_pipes, slave_pipes)) |
>>>    		get_bigjoiner_slave_pipes(pipe, master_pipes, slave_pipes);
>> Although not part of this patch, do we need to check if
>> get_bigjoiner_master_pipe() does not give PIPE_INVALID?
>>
>> Perhaps in a case where master_pipe is read as 0 but some garbage for
>> slave_pipes during readout?
>>
>> Should there be a check for INVALID_PIPE, before feeding into BIT() macro?
> I think if we want to do more thourough validation against totally bogus
> hardware programming then we should just do it once at the start.
> enabled_bigjoiner_pipes() does have something, but it's only good for
> the two joined pipes cases. Also it just warns and doesn't do anything
> more than that atm. The simple option might be to make it just zero out
> the masks entirely if they look totally bogus. The readout would then
> be skipped for all slave pipes.

Yes you are right, enabled_bigjoiner_pipes does have a check in the end 
and that will prevent bogus value to

a certain extent. Given case would not occur, atleast for two joined 
pipes case.

Anyways, the patch seems to be straight forward and looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

