Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D744CC990
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 00:00:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C83110E342;
	Thu,  3 Mar 2022 23:00:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D513910E342
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 23:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646348419; x=1677884419;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=cMAiVpTplAv4xLmkGJeUKtcYaPva5SX+jAFYUfWlk4I=;
 b=RufrwDk5ZaP3xsSvEfhaWpdtxEjQtTwGhRn14E2FPiTfRdns2vKZ+bXt
 HNiJuOltTg7VEsKytqTqimhM+UTTLCFvCYNLqvqnj79vvUlerZH2utSlr
 5cZlyZYyZCqf7EGpQQT0/PipUq6Wrv6XmMQ+mw65kWAXds4TmFHtVUHGF
 t6uMgncA1YxmXz24bSpzMtRI7OvsyKQylYu+IrHFaiYfeELnfGyFDob98
 pe5/809E3q+y2eS+q+V6UqQ6VYaoXYNcsYXRoCaoxUKd0OMN8QvYkgC5W
 GNwo2S3bCeZ8+xKDK5IQB0Sb4rArBmbu/NDx7xXX2CAKaESGmkaZDuKfp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="314552995"
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; 
 d="scan'208,217";a="314552995"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 15:00:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,153,1643702400"; 
 d="scan'208,217";a="710121492"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 03 Mar 2022 15:00:18 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 15:00:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 15:00:17 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 3 Mar 2022 15:00:17 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 3 Mar 2022 15:00:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZzC/svG7a+Q+ft6Azv7rCrhzVEP8AxThh/lFIfr6aLbJU8aWd0vPMVny7CQln+FAOXhwSM1W89s5sP1hsdkcYRTcmzAJWSSJgLSYkv4PWryN2qB4tMi4rMBBrAm8+c4fHa887xa7wglZA7W1DPuY8bNfM1FFSoVggCHEzmGFhXoCaaTWK868M4mOF8WRcOXQiOaknaaKFSTH5qFms+MMPIWtj/IgjFxj6z/c2ynOtTEct3G182Ri89IhoJA/uYggo6ZHyFLzJpOohyMGSpfB4fZTwdsCtAJv3ZEq2NpgsB2hyVaqJfbWElC9RTsBg4KgBY8+QVbHU5ATdghPAsIEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q83FkCIN8Zn4JGGh2NEqbdlBHKksuUFHx5D3VV9iKiY=;
 b=dL1bJLSJ0UvMVhGVPCf7Hckj16cAYpDImBsSR9063jmiCFCuGgdUoB1XjvzI8k4Rmf5WsQ9AYTYYsShJyAIwj8chyr51e0mXMZeC2cIW7gTmBUL4T/i0xPIU70Rai5EZiMEHvbRkFOKmMJNYjPjgxpgaRGWr74otNshBGTw3mOXC36Pm1ohiWC0OSOfYe/gcGwrygW0pjz16PF70ifE0dAqWwzRl7LkSQH8s2vX34kxxnd89FbBMlX88k/tSD2vTcqUDSDJSYjcrzKrQyoeMqM3V8vKBkOehske+AdLQkLHSZoxVUZoiSSdX/dIYJDON8elnCUc4flx+rWtGXz4fQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BY5PR11MB4451.namprd11.prod.outlook.com (2603:10b6:a03:1cb::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Thu, 3 Mar
 2022 23:00:12 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::dd36:1843:a629:4ad7]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::dd36:1843:a629:4ad7%4]) with mapi id 15.20.5038.014; Thu, 3 Mar 2022
 23:00:12 +0000
Content-Type: multipart/alternative;
 boundary="------------dxZSY8ti8X3zCU2iwbNOJ9xS"
Message-ID: <3b3be930-5190-f9cc-aa00-980697b7e8a9@intel.com>
Date: Thu, 3 Mar 2022 15:00:09 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.1
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20220302003357.4188363-1-John.C.Harrison@Intel.com>
 <164621322265.11316.11844207093546471829@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <164621322265.11316.11844207093546471829@emeril.freedesktop.org>
X-ClientProxiedBy: MWHPR22CA0015.namprd22.prod.outlook.com
 (2603:10b6:300:ef::25) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: de8a0e82-3480-40a9-0164-08d9fd6992a4
X-MS-TrafficTypeDiagnostic: BY5PR11MB4451:EE_
X-Microsoft-Antispam-PRVS: <BY5PR11MB4451F6DD2023749932DA3BB7BD049@BY5PR11MB4451.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xp7WTHDtNKdE+no1XEHbnwRMWosNhOHFyvv3mLY6+rG/P77Rh/9TcVOHjUDwavILEmQ3GMXkYBrMY8U9g95zNf7KhSW/cT3FzmIM1aeWEKQLJQZmYhvw4VYYDMWlz0CPD+pV2Q6+thYZ0QONFYjvo0RHloo+xYB9daoO6oNMpG1pgLJ3XWQvFq9DVKQkk36ISVZSkK+WNHeKDFa1TiyJ4Z9M8fyFo6N93GCsz/XtasWLJeFEQ81UvBBwQGph35KkH49oBwJm53xp0TedbJHvwBf/D1B6wNgvOXU3f7yYRb10y8SBZkQzyQaTFfbCdZjFuyjmjr3cSdBBG6o3GbGuojaiYjuxsV2P+EiZsaNAFW58Zn54vpMke2eqegaVAGYr5ybFe3OJ/ce1YqwAZKhEAeC4LEo0RZ3fBO6yHwGg0ql7AKqPO6ldsHACxvoOBjjPDtUNSHPGXaecsky/stHcl6u+Hru0yyt9Q9EOZRqrjG5ihH5yR4R2E/cQcxSjQ06AnH/eX4UjC1BCyFujX5HdQ8AP032kk6Zgoy02aaEPXtuG6uDmxNU+//EJNnEVzhdoZk1ANdv7VHp+IeKsnn0kWdhhhDy5FzrQS+dAw8fa0IAOR1oa4JHZnhafD2QSPV8bA42aasdQg6QEnjcG/FIlMoALmmcvF7RDHK9RBvzbWS4vZHluE4l+3DtAj1ZtWeoNoBNQmkAiIOHyQ/F3vIKBmUAvm2B5b1lDzNSjTJ/RQG1oHAedEtFD1ynoNI5ZFpZcQYgQf6VDYGpGGxo9+KItrpaaVA4/eiu1wbuP+wE+SxA4HzbSXfDngA7uAIaY3MOenOfhUljKRZxCujk4GSHKGPDG514P37SYM39J/oDRpNst2RJhWLa8XsIyDDqk/kRh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(40265005)(2906002)(31696002)(6666004)(38100700002)(6512007)(33964004)(53546011)(316002)(6916009)(21615005)(6506007)(86362001)(26005)(66556008)(66946007)(6486002)(966005)(30864003)(5660300002)(66476007)(82960400001)(508600001)(8936002)(83380400001)(166002)(186003)(36756003)(2616005)(31686004)(13750500001)(43740500002)(45980500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDlIbmxKTVlsbUYybm15T25sR202aG8yazY2Wmd6K0E5Z283K3ZxcGxQb1RU?=
 =?utf-8?B?VDlWOWN1V0R0TzcxUW1ubnQzYjJKRUxQV0ZkWG0rNTJONlJCT2dhaDh5dWcx?=
 =?utf-8?B?QXdNLzU2SVY1bU5DSDhRRGlVc2JzY3hsZzAwL3o2QWZJa0U3Ry9SSE5wd0ty?=
 =?utf-8?B?dVYxbndKdzBOS2tKN1JkWTZnVTB6K3N3UlZra3FrRnUwbE5QeHRwcUNZem9P?=
 =?utf-8?B?NGhNalpDRFlvSjM0Njkwa2UzdmQweGtmOWtBRDUrOGEvOGQ3a25LalFuTllD?=
 =?utf-8?B?QjR0UitPTXhha0ZSbWxXWWhEb1VWL2Zab2tRK3V1a0ZPMmFuNkdmM1NxaFhR?=
 =?utf-8?B?cnpNYWNhRXFsYlJVM1B2MS8reHZuV3k3QXVBQVVRSkRSSkVGWFljeVdmeDN1?=
 =?utf-8?B?VEJNd2pleE9XWjlMZkpzbm9Nem5leHVycmd5NWV2ZkNOek5ieVZ3NUw3Tlgx?=
 =?utf-8?B?V3hqakpyWk1tYVcrb3lJd2owSEFoMEdEWDhvUXBNbnpCN3BPZ0VWUHJQWTd6?=
 =?utf-8?B?K1VPUFJJVEZ1WEVrNnJyS0hSUm9OZWpKZG15YkJ1ZTFadDVyTWdibjNBY2R5?=
 =?utf-8?B?TFNraE9zbWtPUVpXanh2bkZxZ2pKSzlvb0VNZW1neWwrNDFhZkgxZGxuekpK?=
 =?utf-8?B?aGM5VGtTSngzOTh0QUxMZEU4alo3eWRieHlmZ1IvTnVUb0RSY1drdm5yVDZC?=
 =?utf-8?B?R3N5S21OeXJjUFhkQU41UlA5NkI2V3E0QmNSMG5BL0d2UkxUQ1FjMWx4RW5U?=
 =?utf-8?B?RVk1VkQxU0E2REJWeTRoSnNjNUFqQzlLdjRKaVdJSWVOZWcvdEQ0bzZoT0d1?=
 =?utf-8?B?L1h0VUIzbzZpZ3FweW9xZDVmS284ZkR2TUJPOXJsTHFNOVNzNkxpa3BlWFJs?=
 =?utf-8?B?bEZzQnUzZW5ycUNMNGlmQWxXa2s1U1FVN3ZnVHpiMWVhWHpKa080WklFaWZX?=
 =?utf-8?B?bDlkS29pcE9SSG1KTm53SHQ1SWhWQ3hLK2hQME94UnY0ams0RHdodllad0VY?=
 =?utf-8?B?dTQwR2JLKzRrbm9BbjcxalVTNGNmdUx5aUhuVkJGZkFzUmZialo3TW5yUFN3?=
 =?utf-8?B?eGZQcmw4TS9pUWN3ZUNhMFN4U1BwRHdNZVV2RjM3TTErZTNra3hSUlo0a2hU?=
 =?utf-8?B?TEJndUUvaDRaZWwxZDlyUTlqMEt0dk1ldGVHL0tXK3V2TzJxYzE4aFVkZHlE?=
 =?utf-8?B?dStmZ2FVU1V2a2NXcWpxTTcreEZIWFFUYjRmL0laWFNuRk9zcUJiU2Jzb2dD?=
 =?utf-8?B?bFFJWEVXazJubm9ZZUNGZVdRT090UFhMSGJERlFNbTdnRHNkQVVLcmg2YnhC?=
 =?utf-8?B?WVhHbWplNVFIbFluMkZ3Z0dpcERiZklUWWZjVkkzb1g0alVwMk5teWs3WU9h?=
 =?utf-8?B?Q2JKb25qdzQwSC96clFPYjNPUmVTeFNka0p0blV3UE41VktBYnRBQzMrQk9F?=
 =?utf-8?B?SldyQ1ZMTW8wVlJzeis2REhFTENvUTQ2K05rL0FoL0NNUkNBdkpZQ0J4TmI5?=
 =?utf-8?B?Tzdsa2MraHI5YmlIeDRCOW9uVW5vanJrbDcyZmNYQmlFdWFLTlFydExFZ0Er?=
 =?utf-8?B?QnZUcG1mVEs0NnlEczk5UlNCY2V4b1ljVzZtT3FkUERGakgxRlJVNkNzalNK?=
 =?utf-8?B?UkZJNmFGeTZEdkxMaEFoSllPRUZ3Ykx4TVZoR25ld2Y1Q25xT0VNQ2w3NStN?=
 =?utf-8?B?MHMwb1NNVkhmTTZjRXdOY3Y1MDZBSllMdmk5czdJTmc4KzFleG5hMUk4SUpX?=
 =?utf-8?B?ZVJBYjdXUFVqcTE2TVBGRjRzOEd2WUJQaGRnVjB2OW96d241N3ZHUUdqUGJ0?=
 =?utf-8?B?UFN6STVOTDVBbDBOb0kvcVVrYi9YcmtnMmt6MkdVV1BuaTJtYVJJYjluRGpU?=
 =?utf-8?B?NjIxb3NhNkdLczJTek1hWHBUSmtjaGg2eS9rbS9xTFJvQ05VRXo2OXFlRzhU?=
 =?utf-8?B?eFIxaVp2ZjBMSnk2M29sQnRENExUSUMvRmFkVEc5R0dRVll2VGtrbnNudy9S?=
 =?utf-8?B?bnhmZ01iMkFTVVRQcGVvYTNLa0JrTjRZMEtNd29OWjdFNW5IZzRYTzZUdld4?=
 =?utf-8?B?WUYxNWp0WDc3eEUyYVJDME91cTEzb0NvanVueDA5dTJIcnpvWlFwTWJDdlFn?=
 =?utf-8?B?eUJOcGxneUs4VjJzV0tYZjNKT2d3MGVRMXRQMzhDQTArRWMzbDZOVmRRY3Jq?=
 =?utf-8?B?cW1FNU13YmxLdUhGVldhdHFmYmtzcEVIQkNzYnE3OTlRNjVvRnJBZlBNa0Fw?=
 =?utf-8?Q?WwIGwpViJKyYE4Erb2IGLCkxDdxWYVF2KB2P9WBWII=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de8a0e82-3480-40a9-0164-08d9fd6992a4
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2022 23:00:12.5282 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: avZl1ZL+AL4VhzeSw4nvd/GwowV5KC2PudOTR3yDy211XnihSCRtccVKSjG9EPPUiB9SmqaJS/DfhbFisqVC4a4mleVdTscYOYY70NZGsZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4451
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUHJl?=
 =?utf-8?q?p_work_for_next_GuC_release_=28rev4=29?=
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

--------------dxZSY8ti8X3zCU2iwbNOJ9xS
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 3/2/2022 01:27, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Prep work for next GuC release (rev4)
> *URL:* 	https://patchwork.freedesktop.org/series/99805/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11308_full -> Patchwork_22457_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_22457_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22457_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (13 -> 13)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_22457_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-iclb1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html>
>
Unrelated display test on an execlist only platform.

John.


>  *
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>  *
>
>     {igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format}:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html>
>         +2 similar issues
>  *
>
>     {igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25}:
>
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html>
>         +6 similar issues
>  *
>
>     {igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-iclb6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html>
>         +5 similar issues
>
>
>     New tests
>
> New tests have been introduced between CI_DRM_11308_full and 
> Patchwork_22457_full:
>
>
>       New IGT tests (1)
>
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d-edp-1-planes-upscale-downscale:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [1.28] s
>
>
>     Known issues
>
> Here are the changes found in Patchwork_22457_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk1/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk9/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk1/boot.html>)
>         ([i915#4392])
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_ctx_isolation@preservation-s3@bcs0:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         ([i915#180])
>  *
>
>     igt@gem_ctx_param@set-priority-not-supported:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@gem_ctx_param@set-priority-not-supported.html>
>         ([fdo#109314])
>  *
>
>     igt@gem_exec_balancer@parallel-bb-first:
>
>       o shard-tglb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@gem_exec_balancer@parallel-bb-first.html>
>         ([i915#5076])
>  *
>
>     igt@gem_exec_balancer@parallel-out-fence:
>
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@gem_exec_balancer@parallel-out-fence.html>
>         ([i915#5076])
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
>  *
>
>     igt@gem_exec_fair@basic-none-share@rcs0:
>
>      o
>
>         shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         ([i915#2842])
>
>      o
>
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         ([i915#2842])
>
>  *
>
>     igt@gem_exec_fair@basic-none-vip@rcs0:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         ([i915#2842])
>  *
>
>     igt@gem_exec_fair@basic-none@vecs0:
>
>      o
>
>         shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@gem_exec_fair@basic-none@vecs0.html>
>         ([i915#2842]) +3 similar issues
>
>      o
>
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html>
>         ([i915#2842])
>
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842])
>  *
>
>     igt@gem_exec_fair@basic-pace@vcs1:
>
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html>
>         ([i915#2842]) +1 similar issue
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@gem_lmem_swapping@basic.html>
>         ([i915#4613]) +1 similar issue
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk9/igt@gem_lmem_swapping@parallel-random-verify.html>
>         ([fdo#109271] / [i915#4613])
>  *
>
>     igt@gem_lmem_swapping@random:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@gem_lmem_swapping@random.html>
>         ([fdo#109271] / [i915#4613]) +1 similar issue
>  *
>
>     igt@gem_pxp@create-regular-context-2:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@gem_pxp@create-regular-context-2.html>
>         ([i915#4270])
>  *
>
>     igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html>
>         ([i915#768])
>  *
>
>     igt@gem_userptr_blits@dmabuf-sync:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html>
>         ([fdo#109271] / [i915#3323])
>  *
>
>     igt@gem_userptr_blits@unsync-unmap-cycles:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@gem_userptr_blits@unsync-unmap-cycles.html>
>         ([i915#3297])
>  *
>
>     igt@gem_workarounds@suspend-resume-fd:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html>
>         ([i915#180]) +2 similar issues
>  *
>
>     igt@gen3_render_tiledy_blits:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@gen3_render_tiledy_blits.html>
>         ([fdo#109289])
>  *
>
>     igt@gen9_exec_parse@shadow-peek:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb5/igt@gen9_exec_parse@shadow-peek.html>
>         ([i915#2527] / [i915#2856]) +1 similar issue
>  *
>
>     igt@i915_pm_dc@dc6-dpms:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html>
>         ([i915#454])
>  *
>
>     igt@i915_pm_dc@dc6-psr:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl9/igt@i915_pm_dc@dc6-psr.html>
>         ([i915#454])
>  *
>
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html>
>         ([fdo#109271] / [i915#1937])
>  *
>
>     igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html>
>         ([fdo#109293] / [fdo#109506])
>  *
>
>     igt@i915_pm_sseu@full-enable:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@i915_pm_sseu@full-enable.html>
>         ([i915#4387])
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-snb7/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-snb6/igt@i915_selftest@live@hangcheck.html>
>         ([i915#3921])
>  *
>
>     igt@kms_async_flips@crc:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_async_flips@crc.html>
>         ([i915#4272])
>  *
>
>     igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html>
>         ([i915#404])
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777]) +3 similar issues
>  *
>
>     igt@kms_big_fb@y-tiled-16bpp-rotate-0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk5/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html>
>         ([i915#118])
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777])
>  *
>
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html>
>         ([fdo#111615])
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html>
>         ([fdo#110723]) +1 similar issue
>  *
>
>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886])
>  *
>
>     igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html>
>         ([i915#3689])
>  *
>
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886])
>  *
>
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html>
>         ([fdo#111615] / [i915#3689]) +1 similar issue
>  *
>
>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109278] / [i915#3886]) +1 similar issue
>  *
>
>     igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +7 similar issues
>  *
>
>     igt@kms_chamelium@dp-crc-multiple:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl7/igt@kms_chamelium@dp-crc-multiple.html>
>         ([fdo#109271] / [fdo#111827]) +8 similar issues
>  *
>
>     igt@kms_chamelium@dp-hpd-for-each-pipe:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-kbl7/igt@kms_chamelium@dp-hpd-for-each-pipe.html>
>         ([fdo#109271] / [fdo#111827]) +4 similar issues
>  *
>
>     igt@kms_chamelium@vga-hpd-with-enabled-mode:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_chamelium@vga-hpd-with-enabled-mode.html>
>         ([fdo#109271] / [fdo#111827]) +6 similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk9/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html>
>         ([fdo#109271] / [fdo#111827])
>  *
>
>     igt@kms_color_chamelium@pipe-b-gamma:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_color_chamelium@pipe-b-gamma.html>
>         ([fdo#109284] / [fdo#111827]) +4 similar issues
>  *
>
>     igt@kms_content_protection@lic:
>
>       o shard-apl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl3/igt@kms_content_protection@lic.html>
>         ([i915#1319]) +1 similar issue
>  *
>
>     igt@kms_content_protection@type1:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_content_protection@type1.html>
>         ([fdo#109300] / [fdo#111066])
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen.html>
>         ([fdo#109279] / [i915#3359]) +1 similar issue
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen.html>
>         ([fdo#109271]) +33 similar issues
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html>
>         ([fdo#109278]) +19 similar issues
>  *
>
>     igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html>
>         ([fdo#109274] / [fdo#111825]) +2 similar issues
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html>
>         ([fdo#109274] / [fdo#109278]) +2 similar issues
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346] / [i915#533])
>  *
>
>     igt@kms_cursor_legacy@pipe-d-torture-move:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_cursor_legacy@pipe-d-torture-move.html>
>         ([fdo#109271]) +67 similar issues
>  *
>
>     igt@kms_flip@2x-flip-vs-panning-vs-hang:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_flip@2x-flip-vs-panning-vs-hang.html>
>         ([fdo#109274]) +3 similar issues
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html>
>         ([i915#79])
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         ([i915#79])
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         ([i915#3614])
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         ([i915#3701])
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html>
>         ([fdo#109280] / [fdo#111825]) +3 similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html>
>         ([fdo#109280]) +14 similar issues
>  *
>
>     igt@kms_hdr@bpc-switch-dpms:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html>
>         ([i915#1188]) +1 similar issue
>  *
>
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         ([fdo#109271] / [i915#533]) +1 similar issue
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>
>      o
>
>         shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html>
>         ([fdo#108145] / [i915#265])
>
>      o
>
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         ([i915#265])
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>         ([fdo#108145] / [i915#265])
>  *
>
>     igt@kms_plane_lowres@pipe-a-tiling-x:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_plane_lowres@pipe-a-tiling-x.html>
>         ([i915#3536])
>  *
>
>     igt@kms_plane_lowres@pipe-b-tiling-yf:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_plane_lowres@pipe-b-tiling-yf.html>
>         ([fdo#111615] / [fdo#112054])
>  *
>
>     igt@kms_plane_lowres@pipe-c-tiling-none:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_plane_lowres@pipe-c-tiling-none.html>
>         ([i915#3536]) +1 similar issue
>  *
>
>     igt@kms_psr2_sf@cursor-plane-update-sf:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         ([fdo#109271] / [i915#658])
>  *
>
>     igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html>
>         ([fdo#109271] / [i915#658])
>  *
>
>     igt@kms_psr@psr2_cursor_mmap_gtt:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html>
>         ([fdo#109441])
>  *
>
>     igt@kms_psr@psr2_no_drrs:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_psr@psr2_no_drrs.html>
>         ([fdo#109441]) +2 similar issues
>  *
>
>     igt@kms_psr@psr2_sprite_mmap_gtt:
>
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_psr@psr2_sprite_mmap_gtt.html>
>         ([i915#132] / [i915#3467])
>  *
>
>     igt@kms_tv_load_detect@load-detect:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_tv_load_detect@load-detect.html>
>         ([fdo#109309])
>  *
>
>     igt@kms_vblank@pipe-d-ts-continuation-idle:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html>
>         ([fdo#109271]) +104 similar issues
>  *
>
>     igt@kms_vrr@flip-suspend:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_vrr@flip-suspend.html>
>         ([fdo#109502])
>  *
>
>     igt@kms_writeback@writeback-invalid-parameters:
>
>       o shard-apl: NOTRUN -> [SKIP][153] ([fdo#1
>

--------------dxZSY8ti8X3zCU2iwbNOJ9xS
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    On 3/2/2022 01:27, Patchwork wrote:<br>
    <blockquote type=3D"cite" cite=3D"mid:164621322265.11316.11844207093546=
471829@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Prep work for next GuC release (rev4)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/99805/"=
 moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwork=
.freedesktop.org/series/99805/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22457/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetex=
t">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/index.html</a><=
/td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11308_full -&gt;
        Patchwork_22457_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_22457_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_22457_full, please notify your bug team
        to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (13 -&gt; 13)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_22457_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-=
1-scaler-with-clipping-clamping:
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11308/shard-iclb1/igt@kms_plane_scaling@scaler-with-clipping-cl=
amping@pipe-b-edp-1-scaler-with-clipping-clamping.html" moz-do-not-send=3D"=
true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22457/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clampi=
ng@pipe-b-edp-1-scaler-with-clipping-clamping.html" moz-do-not-send=3D"true=
">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Unrelated display test on an execlist only platform.<br>
    <br>
    John.<br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:164621322265.11316.11844207093546=
471829@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>
          <p>{igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25=
@pipe-a-edp-1-downscale-with-pixel-format}:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_plane_scaling@downsca=
le-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.h=
tml" moz-do-not-send=3D"true">SKIP</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>{igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0=
-25}:</p>
          <ul>
            <li>{shard-rkl}: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22457/shard-rkl-5/igt@kms_plane_scaling@planes=
-unity-scaling-downscale-factor-0-25.html" moz-do-not-send=3D"true">SKIP</a=
> +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>{igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0=
-5@pipe-a-edp-1-planes-upscale-downscale}:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11308/shard-iclb6/igt@kms_plane_scaling@planes-unity-scaling-do=
wnscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html" moz-do-not-s=
end=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22457/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling=
-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html" moz-do-no=
t-send=3D"true">SKIP</a> +5 similar issues</li>
          </ul>
        </li>
      </ul>
      <h2>New tests</h2>
      <p>New tests have been introduced between CI_DRM_11308_full and
        Patchwork_22457_full:</p>
      <h3>New IGT tests (1)</h3>
      <ul>
        <li>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-7=
5@pipe-d-edp-1-planes-upscale-downscale:
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [1.28] s</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_22457_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-glk: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11308/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk9=
/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk9/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11308/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk8/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11308/shard-glk8/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1130=
8/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk7/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_11308/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-g=
lk6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk6/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11308/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk5/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11308/shard-glk5/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_113=
08/shard-glk4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk4/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11308/shard-glk4/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-=
glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk3/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11308/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk2/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11308/shard-glk2/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11=
308/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk1/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11308/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS<=
/a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2457/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk9/boot.html=
" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22457/shard-glk9/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2457/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk8/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22457/shard-glk7/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2457/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk7/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22457/shard-glk6/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2457/shard-glk6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk6/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22457/shard-glk5/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2457/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk4/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22457/shard-glk4/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2457/shard-glk4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk3/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22457/shard-glk3/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2457/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk2/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22457/shard-glk2/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2457/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-glk1/boot.html=
" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22457/shard-glk1/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2457/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>) ([i915#4392])=
</li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11308/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22457/shard-apl6/igt@gem_ctx_isolation@preserv=
ation-s3@bcs0.html" moz-do-not-send=3D"true">DMESG-WARN</a> ([i915#180])</l=
i>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_param@set-priority-not-supported:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@gem_ctx_param@set-priorit=
y-not-supported.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109314])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-bb-first:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@gem_exec_balancer@paralle=
l-bb-first.html" moz-do-not-send=3D"true">DMESG-WARN</a> ([i915#5076])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-out-fence:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@gem_exec_balancer@parallel-=
out-fence.html" moz-do-not-send=3D"true">DMESG-WARN</a> ([i915#5076])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@gem_exec_fair@basic-deadlin=
e.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2846])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
          <ul>
            <li>
              <p>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11308/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22457/shard-iclb1/igt@gem_exec_fair@basic-none=
-share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2842])</p>
            </li>
            <li>
              <p>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11308/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html" =
moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-glk2/igt@gem_exec_fair@basic-none-sh=
are@rcs0.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2842])</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11308/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html" moz=
-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@gem_exec_fair@basic-none-vip@r=
cs0.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2842])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none@vecs0:</p>
          <ul>
            <li>
              <p>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@gem_exec_fair@basic-none=
@vecs0.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2842]) +3
                similar issues</p>
            </li>
            <li>
              <p>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11308/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html" moz-d=
o-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22457/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.h=
tml" moz-do-not-send=3D"true">FAIL</a> ([i915#2842])</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-apl7/igt@gem_exec_fair@basic-pace-sh=
are@rcs0.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2842])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vcs1:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@gem_exec_fair@basic-pace@vc=
s1.html" moz-do-not-send=3D"true">FAIL</a> ([i915#2842]) +1 similar
              issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@gem_lmem_swapping@basic.h=
tml" moz-do-not-send=3D"true">SKIP</a> ([i915#4613]) +1 similar
              issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-verify:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-glk9/igt@gem_lmem_swapping@parallel-=
random-verify.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [i915#4613])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@random:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@gem_lmem_swapping@random.ht=
ml" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [i915#4613]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@create-regular-context-2:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@gem_pxp@create-regular-co=
ntext-2.html" moz-do-not-send=3D"true">SKIP</a> ([i915#4270])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@gem_render_copy@y-tiled-m=
c-ccs-to-yf-tiled-ccs.html" moz-do-not-send=3D"true">SKIP</a> ([i915#768])<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@dmabuf-sync:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@gem_userptr_blits@dmabuf-sy=
nc.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [i915#3323])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@gem_userptr_blits@unsync-=
unmap-cycles.html" moz-do-not-send=3D"true">SKIP</a> ([i915#3297])</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_workarounds@suspend-resume-fd:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11308/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html" moz=
-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22457/shard-kbl6/igt@gem_workarounds@suspend-resume=
-fd.html" moz-do-not-send=3D"true">DMESG-WARN</a> ([i915#180]) +2
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen3_render_tiledy_blits:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@gen3_render_tiledy_blits.=
html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109289])</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@shadow-peek:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb5/igt@gen9_exec_parse@shadow-pe=
ek.html" moz-do-not-send=3D"true">SKIP</a> ([i915#2527] /
              [i915#2856]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-dpms:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11308/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html" moz-do-not-send=
=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22457/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html" moz-do-not-send=
=3D"true">FAIL</a> ([i915#454])</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-psr:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-skl9/igt@i915_pm_dc@dc6-psr.html" mo=
z-do-not-send=3D"true">FAIL</a> ([i915#454])</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-l=
psp-dp.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [i915#1937])</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109293] /
              [fdo#109506])</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_sseu@full-enable:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@i915_pm_sseu@full-enable.=
html" moz-do-not-send=3D"true">SKIP</a> ([i915#4387])</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11308/shard-snb7/igt@i915_selftest@live@hangcheck.html" moz-do-n=
ot-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22457/shard-snb6/igt@i915_selftest@live@hangcheck.html" =
moz-do-not-send=3D"true">INCOMPLETE</a> ([i915#3921])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@crc:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_async_flips@crc.html" m=
oz-do-not-send=3D"true">FAIL</a> ([i915#4272])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html" moz-do-not-send=3D"true">SKIP</a> ([i915#404])</=
li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-asyn=
c-flip:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-s=
tride-64bpp-rotate-0-hflip-async-flip.html" moz-do-not-send=3D"true">SKIP</=
a> ([fdo#109271] /
              [i915#3777]) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11308/shard-glk6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html" moz=
-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22457/shard-glk5/igt@kms_big_fb@y-tiled-16bpp-rotat=
e-0.html" moz-do-not-send=3D"true">DMESG-WARN</a> ([i915#118])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-s=
tride-64bpp-rotate-0-hflip.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#10=
9271] /
              [i915#3777])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-0.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#111615])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#110=
723]) +1
              similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_c=
cs_cc:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@kms_ccs@pipe-a-crc-primary-=
rotation-180-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a=
> ([fdo#109271] /
              [i915#3886])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_ccs@pipe-a-random-ccs=
-data-y_tiled_ccs.html" moz-do-not-send=3D"true">SKIP</a> ([i915#3689])</li=
>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_c=
cs:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_ccs@pipe-b-crc-primary-=
rotation-180-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (=
[fdo#109271] /
              [i915#3886])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_ccs@pipe-b-crc-primar=
y-rotation-180-yf_tiled_ccs.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#1=
11615] /
              [i915#3689]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p=
>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_ccs@pipe-b-random-ccs=
-data-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> ([fdo=
#109278] /
              [i915#3886]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_c=
cs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-apl7/igt@kms_ccs@pipe-c-crc-primary-=
rotation-180-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (=
[fdo#109271] /
              [i915#3886]) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-crc-multiple:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-apl7/igt@kms_chamelium@dp-crc-multip=
le.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-kbl7/igt@kms_chamelium@dp-hpd-for-ea=
ch-pipe.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_chamelium@vga-hpd-with-=
enabled-mode.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [fdo#111827]) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-glk9/igt@kms_color_chamelium@pipe-b-=
ctm-red-to-blue.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [fdo#111827])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-b-gamma:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_color_chamelium@pipe-=
b-gamma.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109284] /
              [fdo#111827]) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-apl3/igt@kms_content_protection@lic.=
html" moz-do-not-send=3D"true">TIMEOUT</a> ([i915#1319]) +1
              similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@type1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_content_protection@ty=
pe1.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109300] /
              [fdo#111066])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_cursor_crc@pipe-a-cur=
sor-512x170-offscreen.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109279]=
 /
              [i915#3359]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@kms_cursor_crc@pipe-a-curso=
r-max-size-onscreen.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271]) =
+33
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_cursor_crc@pipe-a-cur=
sor-max-size-sliding.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109278])=
 +19
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_cursor_legacy@cursora=
-vs-flipb-atomic.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109274] /
              [fdo#111825]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_cursor_legacy@cursorb=
-vs-flipb-toggle.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109274] /
              [fdo#109278]) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varyin=
g-size:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11308/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-tra=
nsitions-varying-size.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl3/igt=
@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz=
-do-not-send=3D"true">FAIL</a> ([i915#2346] /
              [i915#533])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_cursor_legacy@pipe-d-to=
rture-move.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271]) +67
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109274]) +3
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11308/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.h=
tml" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22457/shard-glk3/igt@kms_flip@flip-vs-expir=
ed-vblank@a-hdmi-a1.html" moz-do-not-send=3D"true">FAIL</a> ([i915#79])</li=
>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11308/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22457/shard-skl3/igt@kms_flip@flip-vs-expired-=
vblank@b-edp1.html" moz-do-not-send=3D"true">FAIL</a> ([i915#79])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
          <ul>
            <li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11308/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp=
1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22457/shard-kbl3/igt@kms_flip@flip-vs-su=
spend-interruptible@b-dp1.html" moz-do-not-send=3D"true">INCOMPLETE</a> ([i=
915#3614])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-dow=
nscaling:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-32bpp-ytileccs-downscaling.html" moz-do-not-send=3D"true">INCO=
MPLETE</a> ([i915#3701])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw=
-blt:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-indfb-draw-blt.html" moz-do-not-send=3D"true">SKIP</=
a> ([fdo#109280] /
              [fdo#111825]) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gt=
t:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb3/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html" moz-do-not-send=3D"true">SKIP</a> =
([fdo#109280]) +14
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-dpms:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11308/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html" moz-do-not-se=
nd=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22457/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html" moz-do-not=
-send=3D"true">FAIL</a> ([i915#1188]) +1 similar
              issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-apl4/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-pipe-d.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271=
] /
              [i915#533]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
          <ul>
            <li>
              <p>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-apl3/igt@kms_plane_alpha_blend@pipe=
-a-alpha-7efc.html" moz-do-not-send=3D"true">FAIL</a> ([fdo#108145] /
                [i915#265])</p>
            </li>
            <li>
              <p>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-kbl1/igt@kms_plane_alpha_blend@pipe=
-a-alpha-7efc.html" moz-do-not-send=3D"true">FAIL</a> ([fdo#108145] /
                [i915#265]) +1 similar issue</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-skl9/igt@kms_plane_alpha_blend@pipe-=
c-alpha-7efc.html" moz-do-not-send=3D"true">FAIL</a> ([fdo#108145] /
              [i915#265]) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-apl6/igt@kms_plane_alpha_blend@pipe-=
c-alpha-transparent-fb.html" moz-do-not-send=3D"true">FAIL</a> ([i915#265])=
</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11308/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.=
html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22457/shard-skl8/igt@kms_plane_alpha_blend=
@pipe-c-coverage-7efc.html" moz-do-not-send=3D"true">FAIL</a> ([fdo#108145]=
 /
              [i915#265])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@pipe-a-tiling-x:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_plane_lowres@pipe-a-t=
iling-x.html" moz-do-not-send=3D"true">SKIP</a> ([i915#3536])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_plane_lowres@pipe-b-t=
iling-yf.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#111615] /
              [fdo#112054])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@pipe-c-tiling-none:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_plane_lowres@pipe-c-t=
iling-none.html" moz-do-not-send=3D"true">SKIP</a> ([i915#3536]) +1 similar
              issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-skl4/igt@kms_psr2_sf@cursor-plane-up=
date-sf.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [i915#658])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-apl4/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271] /
              [i915#658])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11308/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html" moz-do=
-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22457/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.htm=
l" moz-do-not-send=3D"true">SKIP</a> ([fdo#109441])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_no_drrs:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_psr@psr2_no_drrs.html=
" moz-do-not-send=3D"true">SKIP</a> ([fdo#109441]) +2
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-tglb8/igt@kms_psr@psr2_sprite_mmap_=
gtt.html" moz-do-not-send=3D"true">FAIL</a> ([i915#132] /
              [i915#3467])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_tv_load_detect@load-detect:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_tv_load_detect@load-d=
etect.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109309])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22457/shard-apl7/igt@kms_vblank@pipe-d-ts-contin=
uation-idle.html" moz-do-not-send=3D"true">SKIP</a> ([fdo#109271]) +104
              similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vrr@flip-suspend:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22457/shard-iclb7/igt@kms_vrr@flip-suspend.html=
" moz-do-not-send=3D"true">SKIP</a> ([fdo#109502])</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-invalid-parameters:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; [SKIP][153] ([fdo#1</li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
  </body>
</html>

--------------dxZSY8ti8X3zCU2iwbNOJ9xS--
