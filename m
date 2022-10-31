Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2436136A0
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 13:41:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7588F10E261;
	Mon, 31 Oct 2022 12:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C57AE10E261
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 12:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667220101; x=1698756101;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pv2h1ObxN5JkjxP99il49CJ7LOT4B2gYNPDR+OyjqkI=;
 b=BJdQBDfSyJFyHIdVJ2SQIuToKt5y1FnYGdkink680AR8nEBNCrN1/RYb
 oYAOjNaBC04mDIrFL3TukC9WFwf4DhveiGWoC2LJ43z2/p+N8wWBp27Mv
 Rm3hgkSdg67065/Ke8JPcBKENt0NfxyKk3R3+uBwF+6ups5KVDOO72BhX
 ZmGgaN/E8bxaxRmOwkhIMzQIu4CbXyTZvUPZBBBjzs2Hdbu/ynYlPB61j
 hb4bU4ZTCPx1djfNGJmkLmP5zth+8bXnhYE71v+QO1q7bHmvLcF/9LNqL
 qoLG67Yhdwi9ilgwjXR0pteUaSPQuW1TFHRjQIMXKG2jS0subc6X6BMQ/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="373097607"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="373097607"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 05:41:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="962765008"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="962765008"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 31 Oct 2022 05:41:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 05:41:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 05:41:40 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 31 Oct 2022 05:41:40 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 31 Oct 2022 05:41:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CET1DHVUqtFSq//ycktpI0XtSuPRj4Gj0rcpO48r/W4M3ZgmID6YGtHOc5+aWV1gMva0T2ofyAQyzZ9ESDF/U3sYZKAFq1BMi7tsF3z9AOzWRB0ZlCTbeWXYfBNgRv475mm+X7kxPuDRh7KjOl88KKerv8/RtT2Ylenp3QDi4Syy6+I777qGaunpOukr8FbcZgsMmd2iFbowg75BvdQiSewHGwnTfFHG/XxvhzRaJho4C+8Zf2BOPBdxgZE5436EO37ObqZqdgDNEV4zso0incTEcH/rAGX7FdPKAu5LiHQcUuoZTlHHnaT3i4/HEJ+JyxacVFnNsurF0hj6tWN0PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TAjLT3hM/0oqfguR+grKuJVcV4dswVdFMdftjAqyI28=;
 b=b8xkckpefJKSzcQuMN8W9NaxgOMqyjz1mX7ODKF+H6AROHzvT3EYQDVjdZ8qUPN4Ce/rHF55J/78qwvuRKfEYzIePksZdYZJ4eulazBeN2VkCoFMPPuZwJOcSRNKgdY5PFvCE2BxlUY0XXsWYVRqEYAQizEQi7LIjTdX0f9IuY6Ou4zpOfyNRhGHrBeexeAx/ziFbKJE+yRHq+yW91BAtPMZmSJEqg2Lf1NWlyt6DCm+vIidhkv/5h6jJMDLE6rvmLlf69jH2Hg86qKMpRa2Br4m3P1GWNRYLvM/TaluExEhju8bSLl31vpG18CP6l8rHih59M2nJpD5msfW8Rmaww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by DM4PR11MB7205.namprd11.prod.outlook.com (2603:10b6:8:113::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Mon, 31 Oct
 2022 12:41:37 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%9]) with mapi id 15.20.5769.019; Mon, 31 Oct 2022
 12:41:37 +0000
Message-ID: <ad4ba092-f560-1fe1-45e9-feae928f8cb2@intel.com>
Date: Mon, 31 Oct 2022 18:11:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20221027092242.1476080-1-anshuman.gupta@intel.com>
 <166687564581.4254.1906121029427505665@emeril.freedesktop.org>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
In-Reply-To: <166687564581.4254.1906121029427505665@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0207.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::18) To CY5PR11MB6211.namprd11.prod.outlook.com
 (2603:10b6:930:25::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6211:EE_|DM4PR11MB7205:EE_
X-MS-Office365-Filtering-Correlation-Id: dc6f8e80-6d39-48d3-be08-08dabb3d406f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5FO7nRiUyMNb5iKzRoOrnJRvSUQMXZiRTscNH+QdOXAsVHQrEZEleDmZRqnWYszqtiIJjYvgHA1x87ZTdqWq1KAojtuTT7NOCsSPtCScak3NR/XIIg3UhhsqOAJOHoULyWeO5UQyh4JsyZlWKsMImxZIp/PIRmh/dum1gxiJyCFl381DOAS2OBOWphDoGCdPz8DrJL76QMqG1kABD9ehPKWdgHmHJohhfptMJ+H7reoTsK9sMZcxurfvGaiEy6sD/9eHIwBccehNzSeXUaRiYbgrivRo9relndhN1Ma1rooNgtjmH6rUlF3LqYrmHA78GkfrxH8uuFC/XZ2u/TWzANKansQ8HxihLxClZlK1jc7JFHz7xaE1P1UuQNLmdp6BT4ag5paQP9jpD8uXHQ+nO7WfHwJmqMIBEyGOZeXRn1ZiLDlEnoDa8xh0OOyZ+lBtJRLdBqtF7yJYpe24Wfp650Yp60I8vCuXvktysKa7AH/GoeTbhglVsHSjjCVJRu3Sl4qGLP9du16leRXVOWnJZbTGvjlFEVgX2t4fxQQfwbiENnBuZny6woGTPiDQtPvpIr8miDiVRDeiFq8v5/5fQ1aFEM4OFI5JE/MPRYFQ0IvD+ujmFvj5Yyb9IW+KIBpHe51np+nbzm8hDcWOku/6Me8QhC/FALEf3z1aZBGsCdkm/UT2BqQgLtWlVxVLLdgHEySQmYySNmdiVo25sH2Bi/uiPJg9I4dpsHAAxTWithHZK3ZGd5BHCLnoO0GmE9r7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(39860400002)(136003)(366004)(376002)(451199015)(2616005)(38100700002)(6512007)(186003)(41300700001)(8936002)(2906002)(26005)(82960400001)(5660300002)(31696002)(86362001)(83380400001)(36756003)(6916009)(6666004)(66476007)(66946007)(66556008)(31686004)(6486002)(478600001)(316002)(55236004)(53546011)(6506007)(966005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjk1VDh3ZXphL1VWZk8rUUl3VjZCaVBqK29pK2hxbWZKUkxOK0pYMnM3dmVT?=
 =?utf-8?B?eHVueDMzL2dyNThaNnMvWDdPYkVGWXJTK2NFeVpDY2tkOEttdzdnL0hUdXAx?=
 =?utf-8?B?QmpBNDByV21SenIwUmRicDBYVDVxMCtGdXg1blQwTHBLUWVPdlJQNzh3YTJN?=
 =?utf-8?B?MFlaeTI3YVNhZ0t4YmIza0xESjJ3T2xubEpYdm54Y1NJN1JMei94MW1VQTBH?=
 =?utf-8?B?RmkwZ2l6OVVvOGoyRTNITU1vMnd0OHYwTXltSlZCbEJTcXE2T21tZVVUNkU4?=
 =?utf-8?B?R0JDblZqUW1HMC9WbnVPQ3hLdENvVEUxWXpVZHBxRzNiZThNTjV4U1NwUVhq?=
 =?utf-8?B?amhPam1qSWVFNFY5M1BSR1RSTjk3VVc2MzZ3VkxnZEliWHBHc0pOeDc0SjZt?=
 =?utf-8?B?MWl2R3pmcWgwRmMzZzVROU1hK3ZMcWQ0VmZtSFZ0ZWxNR2RxL2hwWkxKRkxJ?=
 =?utf-8?B?KzBjY21xSTNHQldFSGhhbWpVUk03ZDlvZW1EeXNYbldNTXhPYWlzeHIxNVV4?=
 =?utf-8?B?UmVBTG5GZmxrcDROVUF2WW5rNXBkSm4xeDFjUXljR2VpdVhUSDhXelcrN0hk?=
 =?utf-8?B?cSsyQ2xRZlNHS09ReW1NUEN3UjBUUGRmaEJqZFAyNWFPdEtvOUxSb1ZTa3M1?=
 =?utf-8?B?QUdDQ1N6NzZDalB0VVU5NDVadnNiZEIxdHQ3Q0VmdmpnT1BLNU41ZUdhVHNC?=
 =?utf-8?B?TmFtbTJvYXhNS1pETGZla05SeGF5THI4bDBOdWJFTkh2TTIwZWJ2bmxpVWpP?=
 =?utf-8?B?UXk2enVsQmdKSUJiT3FKWHRiZEZNWVErNEVUTEt6cmFMd280V1FsSHZSRHRt?=
 =?utf-8?B?SVJDTm5DNjMzaUJiWFlQN24yWXRLUFZNZE9XaWJaRXRTUVFYT29qRTVJZHVi?=
 =?utf-8?B?WDA1Wk13NnpMeXZvc0phektGemRhOS9OU0ErR0xzRXkrS2V0QzlSYm5KemRL?=
 =?utf-8?B?R1M5eTFLbGFmQzU2RENtb29OdCtBNUF3N3RUaFRqcnNVYkpKd0lxODZVdGFP?=
 =?utf-8?B?ZmRkdGh2QVZKOGZTWEdrb3VRWGdRaHNVTEZjRk1OYVZvektveFFuM0VQR3lw?=
 =?utf-8?B?RDNsaS91WTFncUNxQUVEMnpNZk51STlRKy9LQ2V4Wjg5bWJRQlZ4NHMvZnE1?=
 =?utf-8?B?WlNNM2xqemVPQ2RlVHBOOXU4b1RQWVdpbXNmTW5DeDRiVU5nT0NqRTgxTzRt?=
 =?utf-8?B?a0syb1F4VHVKbDZQZ09MU2dqU0RwRXBMNnNaU21NOG0wUGFYa2g1aVVBY0w4?=
 =?utf-8?B?SkM1U1JXeDV2V2s4SFhHamZ3UzZJa0p3UmdSaDlmNXpHcWpJZzFRMWhVRHJl?=
 =?utf-8?B?MFoyalM4MUtEUnIzd3doSGVSWUdFYzNobUZacG1pSHFqQ1ExMjN6bW42dXlI?=
 =?utf-8?B?eksrb1RXMUFYQm14KytZVERDa3g1WDRYcmlmS09nK0JqMVQ4QktyRE9RcHNz?=
 =?utf-8?B?aXFGV2N6ZzFSSkZ0a29naVJoRGwvbkxQRnBaMHZtT1h5U3JwNTF6R2NKTW9K?=
 =?utf-8?B?ZDVMRElML0kyMjRNTEluRlQ5SFl6ODREL0YrMEo1R2NJaXRTd3NPRDJNY09O?=
 =?utf-8?B?R1hyRkExcXlTZGFQQnNRb0U4R1BVSTQyUHZrSUtJYVFwemV1S09uOURLZGs1?=
 =?utf-8?B?THB2R1dHeVQvbXNvdFRvNzhPbWdPSnh1NHJoNlAxZTg0Q1dHOWFPbTgvZ0ZP?=
 =?utf-8?B?c3pyL0FFWXFqdTdSNDZBeVdzMFJoTENKbzZYYnlSb1cyS1llQXNvdjNsU3Rx?=
 =?utf-8?B?VmNHdjhPTjVyUDFXUU1KUzdFeVRBTlNnRUU3V0ZvSUc5TU5kQ29Vb1BwS2Jn?=
 =?utf-8?B?VGZ6OHhLYmdtT0xOVXRicTQ3ajhzZDVnblJjWWtYYitBcXFrS1BJR2xQN0M4?=
 =?utf-8?B?K0M3aGVrVlllTVN3cHFRMlNCUkU2MkkzVGRQN2YzTVBlRjA0RzcrQU1DSk5K?=
 =?utf-8?B?MkFIQmhCUjJORDFRdDJxWS9WTkgxODA1SFl3S1Q5UWp6UXZ0Mm9tUDBqUG5k?=
 =?utf-8?B?MnlSOVhMMW9JbG82VnBVbUZCNStJTnByZWpNSDdKYm5XVC9KWVVCNGc4dzA5?=
 =?utf-8?B?dkZBcGRSK1hwL3BzQkExTVlPY3hrMWlrZG05RDhuVGxDRmFuSHFSSG94QmVl?=
 =?utf-8?B?UjNxZ3dqNlFJVVIzcVRpc1JVTjUyRlB5RHl4ZWdzVEtBak5aa0xJQkJkeGNT?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc6f8e80-6d39-48d3-be08-08dabb3d406f
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2022 12:41:37.8247 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zXpsFFzi82bxiCbfBTALPyLv0Nn4ibFXmqtgUxvUJLNOLNV8ZoI3CEEH/hI6iQMgaDngMNuR1YO9zukk/EZG9nHDFrXdoyQbqo0vwKfaMAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7205
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dgfx=3A_Grab_wakeref_at_i915=5Fttm=5Funmap=5Fvirtu?=
 =?utf-8?b?YWwgKHJldjQp?=
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



On 10/27/2022 6:30 PM, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dgfx: Grab wakeref at i915_ttm_unmap_virtual (rev4)
> URL   : https://patchwork.freedesktop.org/series/108972/
> State : warning
> 
> == Summary ==
> 
> Error: dim checkpatch failed
> d83d4490c920 drm/i915: Encapsulate lmem rpm stuff in intel_runtime_pm
> -:69: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
> #69: FILE: drivers/gpu/drm/i915/gem/i915_gem_ttm.c:1105:
> +		list_add(&obj->userfault_link, &to_i915(obj->base.dev)->runtime_pm.lmem_userfault_list);
Code if block is more readable in single line.
> 
> total: 0 errors, 1 warnings, 0 checks, 147 lines checked
> 721d116886f7 drm/i915/dgfx: Grab wakeref at i915_ttm_unmap_virtual
> -:44: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
> #44: FILE: drivers/gpu/drm/i915/gem/i915_gem_mman.c:564:
> +	GEM_BUG_ON(!obj->userfault_count);
> 
> -:155: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
Above is a false alarm, there is already an existing comment about the 
lock usages.
Br,
Anshuman Gupta.
> #155: FILE: drivers/gpu/drm/i915/intel_runtime_pm.h:67:
> +	spinlock_t lmem_userfault_lock;
> 
> total: 0 errors, 1 warnings, 1 checks, 109 lines checked
> 
> 
