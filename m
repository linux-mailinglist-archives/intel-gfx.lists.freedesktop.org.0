Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEBC54AC6D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 10:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 821E610EEFC;
	Tue, 14 Jun 2022 08:50:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA43510EEFC
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655196654; x=1686732654;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n+ALtDrf+Qfc5mNYIqarIKBcFYbpQxqhBvkmqCMleZk=;
 b=RGzyoa7J9gEw/FNvdH/oib8JQiHNYFJKnq/n/fHoICy3GqI+Vbk63Jvp
 gVj9dA6lamMuVR6CgosB2Ji6yep5l/xy9BqC+j7Pl3t4BcVfG8L2eGnry
 xLfY7d1M24S5w7dJikVXw+HupRfEgduDuA0w6ZctTf8HNpcyUX8XAipa0
 5S2QHBat6VIRO6ogLic1tyFCRHzOP5r5Gbrjw3XGkIil6+rSH7F64mqEb
 DPt7uoHx/K+rFnPys5FmqqNY9sxInTrQOf1MJpCUZTZ319qCERYHt+FYU
 yT9WJ0BzBmdSB2wR9juxdT2rf+p6kEXp4khj2g6BZoavOdLIawjMHG3Ru Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="258389359"
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="258389359"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 01:50:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="582605260"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 14 Jun 2022 01:50:54 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 14 Jun 2022 01:50:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 14 Jun 2022 01:50:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 14 Jun 2022 01:50:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NvNfSEZi2xbu9GVunCJrqF8mD0bQoHPSET/T5p00KoA9QAvdxmEEYoFudpRWhcVYhYn0+meXL5/UbtfY16usJDocWggn36wxtKr9nebeqByy4ayk49C+X2O6ThWKqmEmsejaUdVylcxOEie+ubNYB/g6b2X8RYLwdfzobEra7S2g9HbNObLKSWMWsB2X9Vf5pzyaWm2kegpXqy4tnUJe8FG4GiAj5w16h+KzpfxBS0YVlXBXQm2d7EP1LrJioVoHbXWfovKus1kDY26AKM387+/ROtV3+2j/Kzjur3eoSA/htwyoSRovQHvDbM7EvgwYCMO9I3crKNBFZ57buojRjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wmsj4OJ0dFpnw00htBgRQDo4VtuPDr6lfMm/PyHoDj4=;
 b=AtWTxKoQKe02FeALPrh2FikD1Kcx9vlp0fhokAAaCwsWOFl7H5DLTYYQmma29U6vSUUqE5zTEYUuci1+cKC2LhzisXmNBW44SOPWcuUF5iCTvkcN+n6K6GcYBTi/iZbPUFmMOdUov0XDreuJu7kubzA6Rl/x6JgUAqUmZ3TvnUrQTuTBl4WIVAVY3vMKGyIKfGWPfKU707eEnLGw34uZuZCjf7AjVBCEr+1VYHNUFHP0J4QK7qGxb8gFcDH5wtgKQa7/mm+NjDF2jT5cAatyu04NAshMWqlJqHKmWiraWmdrVtw9PNOr9uKRg3PKwvqDR0vmSqtdawEOiDaANVEfTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by MN2PR11MB4190.namprd11.prod.outlook.com (2603:10b6:208:13e::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.15; Tue, 14 Jun
 2022 08:50:52 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398%7]) with mapi id 15.20.5332.022; Tue, 14 Jun 2022
 08:50:52 +0000
Message-ID: <b63bc566-e606-f22c-dc7b-d6bb7f0a78ae@intel.com>
Date: Tue, 14 Jun 2022 11:49:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220603093830.1529520-1-gwan-gyeong.mun@intel.com>
 <87h751opdz.fsf@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <87h751opdz.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM5P194CA0002.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:203:8f::12) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c328efbb-d76c-4763-74d6-08da4de2fbf9
X-MS-TrafficTypeDiagnostic: MN2PR11MB4190:EE_
X-Microsoft-Antispam-PRVS: <MN2PR11MB41903EEEBDD1CF57EF7ED314B8AA9@MN2PR11MB4190.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kddFQEMdZUEQiDo9QXwdWJgZxYoxTIfA17VNRo8iqa4KQB4DGPt70rF64bgmz2qFgIgKckvZV70HinCquV4OQJjgIU03CGpOQ/KAl082XfCCGGYCkcmb94urkpnuOtCRJSdNCjLp55AnSmnGJu7TtTfCqqLva33xa//jyRfgRWb7Qd3YtpJfN+k0nyRszR8265JOlabqMAYTSYrRNhomqCM3cMtGuebjig5sJvqDsDlrEAS4kFElzO6+d49dEitR5nTjup1VdBGNQ/0RNDQk3VqGBj7gpFJfbuAo6Riz2DVbVd/SQIZqDTCYwo0wAdI2xcu+x0p3iVw5bIah60uZLVduV2rsZ4f/7pxtL5vfTNxxU7ajRr3oRU0hPVd2v4M9607cIWvO7zL1eeYMoWgcXN2kJQZ/3LPqi8EzmV7nCHzaW99CRUEpQnrVQBJKcPMQ2EECdvfNedENxbjkSLxfK0bRVL3dqeMsPHf8f6H3Oh2Q+2rz+IwI1dwHEONqn5kub5fzPK2GW2BdNzcMBP1ebkKnorVArv8IoUbiMTkylqirkbwDw5mc78N0KUXFjypP/7lZXRCyFiO2AyJhyXnVyvWpQ438VAVaSpFoVnBGuJYCQpbf09FnYNoDpy4YAXZW2jsn0+5rpqHzsZzRb2rgJ2OvmDM2PghOIrXIjBrUhBiZI/qfVOZpBK5FJTDjBtAWDFflS8Mt0D1wq95ICLsm2EG3lw43Tm7e9cIaQ5GFVGA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(38100700002)(6666004)(53546011)(6506007)(2906002)(8936002)(83380400001)(36756003)(31686004)(5660300002)(82960400001)(86362001)(8676002)(6486002)(508600001)(186003)(26005)(6512007)(66946007)(54906003)(66556008)(4326008)(66476007)(31696002)(316002)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXNTanZtL3YwRlByUmM4OFpoc1RLT3l0em8vNjE3YW9yaU5NUmkydGtGMHVa?=
 =?utf-8?B?MmJRT21Ub1NmSTVhQWhtMGZWZHhmY0JmK2dzdWkwK2dNMCt0MVFTVlFCZWNw?=
 =?utf-8?B?YWx2U2l4L2U5b2syTDZOdmthZ2ZSVzZSWEhlOFlYREVVRlNmRjgxZ0tJS3V4?=
 =?utf-8?B?c1BneUJXcXBieG5jVXU4VytUTEpaYzRlU1VlSWtxaExMTDJURmpHTVFvZ1g4?=
 =?utf-8?B?YXFURlpNTWJsdGp4bk5ZcEJnc3R6TXNiNVZOZGVGbDR5R3A1ZUYzMVp2Y3RK?=
 =?utf-8?B?Z3RzWnhDZmt3NnFwNGpXT0g1cWdzR2pEQmZhODFvVldJU2hqWUJFT2xtREla?=
 =?utf-8?B?K1pxTEVUaDdlNnNBNGw5NmpkMk1PeEtuazRGbkJQYUwzRGpZNFhvL211N21p?=
 =?utf-8?B?aGFBVGgxbFlYWlBuQzFEZVErajU1SE5YWXp3V1F3MENpL0oxR00xQksvMUJF?=
 =?utf-8?B?ZUtUT2lsUFJLdlNwQU9JbURkMWIrelR5dld0dWgzZ3IvN3A0NW41M0VrK09n?=
 =?utf-8?B?dnJjM0ZYTnROS0tFZVRaek1RaTZxMlUyTFdaVE82V0t6TWxpVHlYZjNZYnJH?=
 =?utf-8?B?N1FmWG5oeCtmNU93eEhhYlNPcXN5RjdFYllEYlEwNTV6U2ZPdFN3eitsUFJl?=
 =?utf-8?B?R2tZSWdheGlyc1orY2llMU9CWWR4OEU2NERUeFNTN21SQmxpMHdCNWhIcEZH?=
 =?utf-8?B?QWVpSWhrRjJnVThTeHZJWFlRVGpPWVZMQWNnSlJsUE4vUUUvNWxnczdsTmVK?=
 =?utf-8?B?VWVWcFVMT2RtQWcreHV0RXJCVjR0K1N5aWREcTdrdVNuMHJ4R2NaYWVyRVZN?=
 =?utf-8?B?R1F5MEUzcTRhYjlEYWNHMmRFNjI2MDRET0d2QUg1THVMSnljVDJLYmRpcG5l?=
 =?utf-8?B?V2FFcHNaTkJ0TjFCOEpING0rZW1oaHdkVHFMQlRjblZhSWpGa1VscFkybksz?=
 =?utf-8?B?OWZ3Njl3K1h1Vlkwd2RHd2pvR2FEaXdvL1h6Uk51WXFrSFY2UFBvSzU0NVNz?=
 =?utf-8?B?QlhrcDBrUmJkTENWWU1CdnhPd0ppMHc3S1JMRmNKaXNxZkVDMC9ncVhFRmIy?=
 =?utf-8?B?RzN5TlRZRlgwWnYrZkRzTHpuR3VXYWhnWitHMU4rOXo2c3RScE8vVjZIRnFw?=
 =?utf-8?B?eGIyeUhNaHl3WnlMRVFSU0taOHVUQy92WHBvSnZvTW41cWdiZXN4YVczNmlE?=
 =?utf-8?B?RUpYZlIrNllPZjd2M2lXeUc0b3A3MnVPcjExNHdrV2xScmVZSUdNOTFTbGNK?=
 =?utf-8?B?TFVKQnViTmFpTlFTMVJXL1dnTE1MZEtsVGFBc1R1Tys5TGlXM3FPendBMDd0?=
 =?utf-8?B?bmViRkVuUHZJVXJLMlhSV05MMHNvNDRLMUt5ak5VMlVNL21CdmxGZUR0MlNI?=
 =?utf-8?B?OWZVenErMC81WWRjSVc1YVNiU0xLMUtpeTBzUTRlVzZlN05reGJJbDQydVQx?=
 =?utf-8?B?Zm8wUUozVTU3RXZ0OWsvRzU2ZDBVTDRwUitlaGlxZlB4RjZ5eWtUSzlLcDcr?=
 =?utf-8?B?c2NrTVlBeHJmY3RRNVV1dnlENlhmR2FmQ2tyaTNkQnpQOGtUNWE1cGlSVFd0?=
 =?utf-8?B?dFFMS2dma1hTcnVXbVJpaTlCU2Fycmt1dmJLNUdXRUwvMDZoMUJPUVRqVEl5?=
 =?utf-8?B?MEhoZkhpcTBCSU8xRS92ZnNFMUkwMEtOOXNjZXBQb29rUFlEem1RS1p5RHMw?=
 =?utf-8?B?N0RvZkNmdkRQQkNGUVJxT0JwR0xOMWREcDV1Q0gyQ0VGOThMc05haGJTWUVI?=
 =?utf-8?B?YVNuVTdka00rM05oMEFSUlROQzBnR21OTmxtY0F5dWM5WkZGbGkzcElxc1BQ?=
 =?utf-8?B?c1dRZ3FxQ1p1UXdLVWltRmJIMFdVSTd0UFNKaEY0K3RUS0QyZzkxampUVGc3?=
 =?utf-8?B?a0ErUUF6UFJzdFlxaTBKSmloVWF4WXdyRjJzelhLazRYUzhuS2Y0ZkphZU9p?=
 =?utf-8?B?aTJOM0pyTkZ2Nmt3Y04yZjR4d3hNUXY4ay9JTTgrQi9UMlY1QnltU1ROWjJY?=
 =?utf-8?B?a3NLSEtpMklJbmZOcGgwNkxLMFU0T0E0czhBNUQ5WXRPd0hiVSt1dVBsL3o0?=
 =?utf-8?B?ZTFtMGF3TTlLUDdpM2tXckVxaDM3OGZITi9VbnhvemVtYUF2SFM0TlJadnNh?=
 =?utf-8?B?dEdVd1RPeHZtYmoyOWwvMEJCZ0I5cE1LM2h2ZEFaK3pLOEhINjFZcklRYlpS?=
 =?utf-8?B?TVJsQkFhRFo4U2x2YjZLVDg3REc5VnF5Z2VDZEVmamljSmR0dXJZNmdhU2t5?=
 =?utf-8?B?ZytVdDducWxOckFvV28xSFVqTnBXZHlMTUFERGtwODZraC9wWEx2VUd4M0l0?=
 =?utf-8?B?dzUvcXk1NHN6R0NUYlpqNjlrQ1NtcXl6amZKQkJWbTQyRXZjdlg2SFBXMUhJ?=
 =?utf-8?Q?0UMhqITCz/0A1AEw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c328efbb-d76c-4763-74d6-08da4de2fbf9
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2022 08:50:52.0160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x8YNETDd5HVgn7HO6thwabs/m8dgnlcZrTW1qEUfQexWekeYrcO77zy9+4PDwE2ViL+quJpdT/VRYF+9V7nUItg/Lfe5mY7ylFMhdC86r8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4190
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/6] Fixes integer overflow or integer
 truncation issues in page lookups,
 ttm place configuration and scatterlist creation
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
Cc: thomas.hellstrom@linux.intel.com, chris@chris-wilson.co.uk,
 matthew.auld@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 6/3/22 4:19 PM, Jani Nikula wrote:
> On Fri, 03 Jun 2022, Gwan-gyeong Mun <gwan-gyeong.mun@intel.com> wrote:
>> This patch series fixes integer overflow or integer truncation issues in
>> page lookups, ttm place configuration and scatterlist creation, etc.
>> We need to check that we avoid integer overflows when looking up a page,
>> and so fix all the instances where we have mistakenly used a plain integer
>> instead of a more suitable long.
> 
> So when are we going to start moving the helpers, both existing and the
> ones being added here, from i915_utils.h to proper kernel headers? We
> just keep adding more and more. This needs to stop.
> 
> BR,
> Jani.
> 

Thanks for your comments.

The following two macros have been added to i915_utils.h in this patch 
series.

#define exactly_pgoff_t(n) exact_type(pgoff_t, n)
The reason this macro was added is that there was a possibility that an 
overflow could occur in the code that is passed as a function parameter 
in the form of "offset >> PAGE_SHIFT" for the offset variable of 
unsigned int type in the code. Therefore this macro added so that we can 
check this part at the code level.
After checking all of this type of overflow problem in the i915 driver 
code, it is thought that it will be possible to remove it through 
refactoring in the future.

So, in my opinion, there is no need to move this macro to 
include/linux/types.h or other header files.


#define safe_conversion(ptr, value) ({ \
	typeof(value) __v = (value); \
	typeof(ptr) __ptr = (ptr); \
	overflows_type(__v, *__ptr) ? 0 : (*__ptr = (typeof(*__ptr))__v), 1; \
})
The above macro depends on overflows_type(), and overflows_type() is 
defined in i915_utils.h in the same way.
To move the safe_conversion() macro to a commonly available header, the 
overflows_type() macro must also be moved, and if the name or type of 
this macro is changed, all other code using overflows_type() will be 
affected. In this patch, safe_conversion() is added to i915_utils.h, and 
it seems to be prepared and moved to the next patch.

If you absolutely need to move the safe_conversion() macro to a common 
header in this patch series, please let me know and I will update this 
patch series.

Br,

G.G.
