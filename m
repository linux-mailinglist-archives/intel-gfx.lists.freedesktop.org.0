Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C8463494F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 22:32:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C47710E0CB;
	Tue, 22 Nov 2022 21:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4378810E0CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 21:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669152763; x=1700688763;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PlUcOCR1e+S2ScKuZ7EQXz/UdeNS0fEYvDd24ZE9sZo=;
 b=JDHv1wmdNUaRi0QEvA805NWx7qobBN2KfqLYWB09r/4LuIV1omaOSdsC
 eI5qeIgxvizeUwv7d2Pfnlf+wwY2bMRKQVhIIEk+wU+XRzRrN+fT7nJfs
 H6YxRIDaNddudOV1SSpH+kRQQsgHdTcNfmdDlC7/vczq/uiTxTjZ0zdLw
 wlTvP5/p99Br49g5aaRiqUHejQwQDorJKDDtW5pcNGkQhrzcYSrKva8TB
 PYeT86rdAj48f3kLgxErYyRupUeNaYvRwH+sdC2hk5cKbK8sRcqJkAxPz
 tbtFHIfK696b+xxhzhvV3jsmeI4wAyCKq9redwWBHpWN6JD75bwtheEUQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="297277983"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="297277983"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 13:32:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="783987442"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="783987442"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2022 13:32:42 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.13; Tue, 22 Nov 2022 13:32:42 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 13:32:41 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 13:32:41 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 13:32:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UL3OvuVbI/QQnltC+t0dScR96+bEETzs2BrbOc1PbC/7q8lI538+nG+Vcsl8z6B9y3bVRwRqnmAlVfC1fHQMFYekRId8SXkikmd1NTK+a3GvKYeZqZWUdETeXXHqnDohJQdMS/Kc2eMJTZ5STQvHy/+E0WDVfLAq1UaO0LWOGOVL6XEfa239yxVaQNUiWA/HxngUP3m0RfJbHXjbEBHCK8Y1ORGpy1CUGLcO3HBXiC8zWwXV0x09byyLqLEObBy8UOtouvE4AJXte858zIJ2WRyh6DtPjQTmJnSD8Lczcxi4G+gx/YBox1s44IqoAk18JPJ9OdxfmVhFPsRGtqt02Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wg4+UOtRSuFqLnKiN1i0iRDN87iViNlhzBU/Us8LjnE=;
 b=h7ce3pQDpCd8lntfXEdCa+gsI+oeiHU8xuMo091DS5i8mKe2yAHdkt2OXD4UTTSHjAZiiFxVjl8ogtAvv0FSap4D2EttI/0dRVet5GWwaptyq5O/wGLZ/izbPL9Du+fbE2b7UlBiOj7pX27Hz87+H2lZrVFZje1w354CoO222UjzD4BkIl2VDcvKLhWgjdQGSIwjk41Tsny9z7UUbRh0fBTLTOt8ePQr2Uj+cNV5UsYjnSNBz5D7aWgCLEqRnqD1PmRJzKj+MjJoyu6bGmlGk1nTpVnhLuA3n/2pem2mUFxtwPc9FVWhDQAu9RM1bHGEs+2MFLBTRcioj4Z5jhb25w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SJ2PR11MB7455.namprd11.prod.outlook.com (2603:10b6:a03:4cd::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.6; Tue, 22 Nov
 2022 21:32:31 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a9e2:5c97:e3f0:1f12]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a9e2:5c97:e3f0:1f12%4]) with mapi id 15.20.5834.015; Tue, 22 Nov 2022
 21:32:31 +0000
Message-ID: <d9f4338c-1919-2caa-e796-c377a9cac161@intel.com>
Date: Tue, 22 Nov 2022 13:32:28 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-GB
To: Jani Nikula <jani.nikula@linux.intel.com>, Daniele Ceraolo Spurio
 <daniele.ceraolospurio@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220906230147.479945-1-daniele.ceraolospurio@intel.com>
 <8735abxel3.fsf@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <8735abxel3.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR11CA0052.namprd11.prod.outlook.com
 (2603:10b6:a03:80::29) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SJ2PR11MB7455:EE_
X-MS-Office365-Filtering-Correlation-Id: 901fb64e-b01c-430c-8913-08daccd10faf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dQSxswryxJ7XjCfEdgO0xureWCRC7B79FhVXNJW7ii2Uxo19PQufbQqwyvQ5tE8x3mkrMLqVKrSWe9O8i95/0hi8422leXHHngIJIewHsWgyrK0TiY5lTKpRm7j0qtNRB+KBxbir1KlDoM+6Ii6d/PbV7BcOuPC+gpo+9dAIh+a9sSRfCIdO9yncPmywkGL+3RAtIrnEv4s+G/BmsTjFZ1dltQzwUvq5hIbwfLNtFJB6PNXHsxzEPbc7YTJKlgEW2xjodogWpkBF+m+RK8jFByzYN2NSo1ABoennpbaS7eCOR2/O/q8JONMJ/hF5AkiEbxD9oaAEJjfv6R3TgmGY9mLipWr3nSaX8x3omZxp98OLEXXfkn2cTldxux/Q7krxQKdPH1YkRY1sW4xETHVsF3SVrXZoYt7uJ70r0SZJu6W8euqMaxwucRwjrIX4UjNJYu14tqtAjRVb0lX1h0O0CST2fKOyJi0sQ+rBc3wIkPWB1wU6qmMveodioBbFeu1S8DDbpj4cyxjEXOrIxJuKcnb292QA7EBZrbhF9ckkqpZEpgF0qkvfkfpY/bzsrp3oh9WR/BEvJXlpOAUb112eaCMyz2HB8EJG04Woi+64PplG/w7ry+pcdzaVAPOZAQLnoztsNv4rhMzXDNE1b9mLcKIaeAGFkC1Py7KsljMOOV3WJIXs2+tTyr8eGQgkEAuH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(39860400002)(346002)(136003)(376002)(451199015)(38100700002)(31696002)(82960400001)(86362001)(966005)(5660300002)(41300700001)(8936002)(6486002)(478600001)(53546011)(316002)(66556008)(110136005)(66946007)(8676002)(66476007)(6506007)(186003)(30864003)(83380400001)(2906002)(2616005)(6512007)(6666004)(36756003)(31686004)(26005)(66899015)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmNwMDNGNzRKYXA1UHV1aVlUMlkwanM0RllLTGk1dnF1a1hGUjdRRmVYcitS?=
 =?utf-8?B?Rko1dHBaUW1SbjZHeU1mSGMvTzg3a3dWamVFRjB4aHRCSTVvMXcvaUdha1gx?=
 =?utf-8?B?N0pMUWw1YUtuN0EyYkFTNEN0QytFc0JpbEpKTjhzNzh1TWhTTllmSDlxMUxF?=
 =?utf-8?B?L1MrZk5mUkQwLzI4SE9tVFU1YzlKSXhpWUdRblNZZjhwb2ZldDdFaXh5SkJ3?=
 =?utf-8?B?QjVEZ2NmbkVrRTNzdGdHT2pidTV3Zm95V3lpOHY0RERYckwyOGpnb0NkUjZV?=
 =?utf-8?B?QzJSblRIdE9KWE4vVWE2U2kvQnJsWnVrWU0zQlV5dkMxRlM0Y3VYN0g0ZzdN?=
 =?utf-8?B?djVUTDcybUE2SjRzY2JKeFZ5S1F6d2lXR1d4TGZxMm5GejN4STJxUFVUOUt1?=
 =?utf-8?B?RkxIWTFhUW45by8rNjhRTWVVZUEvek1GUkkyYjlwbUVKZnNUUys5TE9kOEsw?=
 =?utf-8?B?eWplcVgzS2hhVkVYdnVyY2NhTlpVVzQ3akQ4dnIwV0Rqa0RNQkM5S1NERUI5?=
 =?utf-8?B?Y00xd1Zyb2xrdjJ5bHpSWUhiaEptYU9STHhDUW9tdWJkQS9ueGZKKzlIbHBK?=
 =?utf-8?B?WDVpQmh4N081VytzTG9ZUE5xQnBaWWdodlFQVFZ5QUc5Y1d3RVRhVkN6ZDlZ?=
 =?utf-8?B?LzhNYWg3cE5SUmNWZWJxMW90cnY1VGtzUFNiM040akRzd3JLdlZNY1hSMkls?=
 =?utf-8?B?RHdTUWR6K3JwSmgzWnJ3VVFXcHNSZy9mZ0N1TUZnSVpRRUxKYWljK05OYmFa?=
 =?utf-8?B?RXl6MFVHR3lRNUNwaHJLbW1CamxzY0lyc3ExVEpra29CV3FzSE1HUTdsTy95?=
 =?utf-8?B?emVLN24rWElvNmZ2OVNOMWhSaG5PTnVzVGF6MWZYNHVuZ2lYQis1UXc2SXBF?=
 =?utf-8?B?clRmK3pDeDhSZmpXTEtuSjBweUdxUHBOZHl2UjhVczcwZ2tNLzNiV1RyS0V5?=
 =?utf-8?B?TklwbEFuNUZiREExbGJTWWVBNnNBQUZFS29QbWFBY2NpZkNtMjkvRnRIRFhJ?=
 =?utf-8?B?OGdWRWlRenkxSFVHOW96akxqQ2FPL051LzVaZXRNY2ptN1pzdERMUEtuMS9V?=
 =?utf-8?B?NUJ1dks1SWU0ZitJU3UwVHl3cC9rWDQrM3RVYmtKUFlsTThtVmF4RlN6SDN2?=
 =?utf-8?B?OXpCQkJxU21JYjlqMGplbG1CZENSZjNURnp4WmRvd3hYTUttblNZT0VUL2xv?=
 =?utf-8?B?TDhuRmJoUGY2ajFINWlXUnBQdmZwVlFXa2xlaDFoQUJpNGdXSWJOK0J4NnZi?=
 =?utf-8?B?THRPVERxcnJRdVJycGNpdmxVMmVPN0ZuVmdTeFYvMFhzVUVKVXVraGFKWEtL?=
 =?utf-8?B?dEU3Q1NDOGxoSk80dWRjMmNRV3o0WmF4Q2c0dVk2T1NwaTdURm1lMHptcWVw?=
 =?utf-8?B?WVVSS3B5OHZPV05hditxN2taQVZMMWxDMUFqTDJPOGxOZFZyTXNJVUI3YnBH?=
 =?utf-8?B?YTdtdXJ6S1N6YTR4VENsL1VZZU1Md0hsc1F0TENyVkdWWjdCcW1CT1NLQi9I?=
 =?utf-8?B?RUkycmVmS1V5ekFUYUMzcnRyT3Q0LzlaN2tUNUx2ZzFxY2lIZm8vTnl5cjVq?=
 =?utf-8?B?SGZQQllKSU91eXFDcG1YY3VkQWg5L1JITmRiVGtweDdiQi83alVzdTFrNEpa?=
 =?utf-8?B?MGVId2tCUERXaERFbGVzaUMrclloOUxvRWVUY1hQekw2TjhZWDFHOVRYZXJo?=
 =?utf-8?B?RkZDay8zSUlrSlJWN1BRWU5CQ0FMc3pzS2s2SjFkd2dSTU42cWJ2YmhVNWJy?=
 =?utf-8?B?dW11ZWpYa0FYbFBwR3NtbnU0b0pkWmNNems5N1lVL2piZXJSVHgvaEdGVVB3?=
 =?utf-8?B?bzdRZEM3YzI4aVNPY2hHNVZCUEI0OGdRaERpUzFrUmc0aDFlejhDZzZTcDVW?=
 =?utf-8?B?Q2RiYWhqanRvOTA2QkU5THZ6b0VOVkpFclJqV1lFL2NmT3V1U2o5NGhrRm5r?=
 =?utf-8?B?Q05zS2d1L0RaVXAvYTBjb0FySklXOUJzTUZWSk8rSGVzNFl4QWwzN2daVWdz?=
 =?utf-8?B?Q0NmRGxib3AxWVEwblBoSklqWXRYZmczdzlDdTdhU3JnazlrQ1llL2RROTJC?=
 =?utf-8?B?TUlIMVAxeTVCcEp3ZGlEcWtNbFNWTTdFbm5pNVBUL2lrdDhWelh6TkkyUGxU?=
 =?utf-8?B?TXlEKzNSWkRKRUhZWERxNFkrUUduUTBZNnFqUVRyR0VNYkU0NjI2cnVzdERy?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 901fb64e-b01c-430c-8913-08daccd10faf
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 21:32:31.2239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JzfuHyZWb8xgKkBeKnP1QvEFdw2v4ow1BrAdj93W9LaJvqZ0Ny9FexcXq+h9HDtcS5IPtFtwcfwTvpFHtUdZqxTYVo63cMUEI4gCQ4tg5oA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7455
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI 1/2] drm/i915/uc: Support for version reduced
 and multiple firmware files
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

On 11/22/2022 06:12, Jani Nikula wrote:
> On Tue, 06 Sep 2022, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> There was a misunderstanding in how firmware file compatibility should
>> be managed within i915. This has been clarified as:
>>    i915 must support all existing firmware releases forever
>>    new minor firmware releases should replace prior versions
>>    only backwards compatibility breaking releases should be a new file
>>
>> This patch cleans up the single fallback file support that was added
>> as a quick fix emergency effort. That is now removed in preference to
>> supporting arbitrary numbers of firmware files per platform.
>>
>> The patch also adds support for having GuC firmware files that are
>> named by major version only (because the major version indicates
>> backwards breaking changes that affect the KMD) and for having HuC
>> firmware files with no version number at all (because the KMD has no
>> interface requirements with the HuC).
>>
>> For GuC, the driver will report via dmesg if the found file is older than
>> expected. For HuC, the KMD will no longer require updating for any new
>> HuC release so will not be able to report what the latest expected
>> version is.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> I have some wip tools that I occasionally run to spot issues in the
> driver. One of the checks is for global data, i.e. data specific to
> module, not the device [1].
>
> It flags things like:
>
>> +	static bool verified;
> added in this commit.
>
> It's kind of benign, but also makes you wonder why the check is only
> ever run on the first firmware (type?) of the first device probed. IIUC.
It is validating the firmware table in the driver. So it only needs to 
be done once per driver load, not per device. However, it should be done 
for each firmware type. Looks like that got missed.

The long term plan is to turn this into a sefltest (it is already only 
compiled in if self tests are enabled). I recall there was some issue 
why it didn't fit in the selftest framework before, although I don't 
recall the details.

Will take a look at fixing it...

Thanks,
John.



>
> Usually I just fix the stuff, but I don't get this one.
>
>
> BR,
> Jani.
>
>
> [1] 'make; i915-check data' https://gitlab.freedesktop.org/jani/i915-check
>
>> ---
>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
>>   drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   4 +-
>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 442 ++++++++++++------
>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |  33 +-
>>   drivers/gpu/drm/i915/i915_gpu_error.c         |  16 +-
>>   5 files changed, 319 insertions(+), 186 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 0d56b615bf78..04393932623c 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1868,7 +1868,7 @@ int intel_guc_submission_init(struct intel_guc *guc)
>>   	if (guc->submission_initialized)
>>   		return 0;
>>   
>> -	if (guc->fw.major_ver_found < 70) {
>> +	if (guc->fw.file_selected.major_ver < 70) {
>>   		ret = guc_lrc_desc_pool_create_v69(guc);
>>   		if (ret)
>>   			return ret;
>> @@ -2303,7 +2303,7 @@ static int register_context(struct intel_context *ce, bool loop)
>>   	GEM_BUG_ON(intel_context_is_child(ce));
>>   	trace_intel_context_register(ce);
>>   
>> -	if (guc->fw.major_ver_found >= 70)
>> +	if (guc->fw.file_selected.major_ver >= 70)
>>   		ret = register_context_v70(guc, ce, loop);
>>   	else
>>   		ret = register_context_v69(guc, ce, loop);
>> @@ -2315,7 +2315,7 @@ static int register_context(struct intel_context *ce, bool loop)
>>   		set_context_registered(ce);
>>   		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>>   
>> -		if (guc->fw.major_ver_found >= 70)
>> +		if (guc->fw.file_selected.major_ver >= 70)
>>   			guc_context_policy_init_v70(ce, loop);
>>   	}
>>   
>> @@ -2921,7 +2921,7 @@ static void __guc_context_set_preemption_timeout(struct intel_guc *guc,
>>   						 u16 guc_id,
>>   						 u32 preemption_timeout)
>>   {
>> -	if (guc->fw.major_ver_found >= 70) {
>> +	if (guc->fw.file_selected.major_ver >= 70) {
>>   		struct context_policy policy;
>>   
>>   		__guc_context_policy_start_klv(&policy, guc_id);
>> @@ -3186,7 +3186,7 @@ static int guc_context_alloc(struct intel_context *ce)
>>   static void __guc_context_set_prio(struct intel_guc *guc,
>>   				   struct intel_context *ce)
>>   {
>> -	if (guc->fw.major_ver_found >= 70) {
>> +	if (guc->fw.file_selected.major_ver >= 70) {
>>   		struct context_policy policy;
>>   
>>   		__guc_context_policy_start_klv(&policy, ce->guc_id.id);
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> index f2e7c82985ef..d965ac4832d6 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -436,8 +436,8 @@ static void print_fw_ver(struct intel_uc *uc, struct intel_uc_fw *fw)
>>   	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
>>   
>>   	drm_info(&i915->drm, "%s firmware %s version %u.%u\n",
>> -		 intel_uc_fw_type_repr(fw->type), fw->path,
>> -		 fw->major_ver_found, fw->minor_ver_found);
>> +		 intel_uc_fw_type_repr(fw->type), fw->file_selected.path,
>> +		 fw->file_selected.major_ver, fw->file_selected.minor_ver);
>>   }
>>   
>>   static int __uc_init_hw(struct intel_uc *uc)
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> index 58547292efa0..610f36f1b989 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> @@ -41,7 +41,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
>>   		"%s firmware -> %s\n",
>>   		intel_uc_fw_type_repr(uc_fw->type),
>>   		status == INTEL_UC_FIRMWARE_SELECTED ?
>> -		uc_fw->path : intel_uc_fw_status_repr(status));
>> +		uc_fw->file_selected.path : intel_uc_fw_status_repr(status));
>>   }
>>   #endif
>>   
>> @@ -51,84 +51,149 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
>>    *
>>    * Note that RKL and ADL-S have the same GuC/HuC device ID's and use the same
>>    * firmware as TGL.
>> + *
>> + * Version numbers:
>> + * Originally, the driver required an exact match major/minor/patch furmware
>> + * file and only supported that one version for any given platform. However,
>> + * the new direction from upstream is to be backwards compatible with all
>> + * prior releases and to be as flexible as possible as to what firmware is
>> + * loaded.
>> + *
>> + * For GuC, the major version number signifies a backwards breaking API change.
>> + * So, new format GuC firmware files are labelled by their major version only.
>> + * For HuC, there is no KMD interaction, hence no version matching requirement.
>> + * So, new format HuC firmware files have no version number at all.
>> + *
>> + * All of which means that the table below must keep all old format files with
>> + * full three point version number. But newer files have reduced requirements.
>> + * Having said that, the driver still needs to track the minor version number
>> + * for GuC at least. As it is useful to report to the user that they are not
>> + * running with a recent enough version for all KMD supported features,
>> + * security fixes, etc. to be enabled.
>>    */
>> -#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_def) \
>> -	fw_def(DG2,          0, guc_def(dg2,  70, 4, 1)) \
>> -	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 70, 1, 1)) \
>> -	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  70, 1, 1)) \
>> -	fw_def(DG1,          0, guc_def(dg1,  70, 1, 1)) \
>> -	fw_def(ROCKETLAKE,   0, guc_def(tgl,  70, 1, 1)) \
>> -	fw_def(TIGERLAKE,    0, guc_def(tgl,  70, 1, 1)) \
>> -	fw_def(JASPERLAKE,   0, guc_def(ehl,  70, 1, 1)) \
>> -	fw_def(ELKHARTLAKE,  0, guc_def(ehl,  70, 1, 1)) \
>> -	fw_def(ICELAKE,      0, guc_def(icl,  70, 1, 1)) \
>> -	fw_def(COMETLAKE,    5, guc_def(cml,  70, 1, 1)) \
>> -	fw_def(COMETLAKE,    0, guc_def(kbl,  70, 1, 1)) \
>> -	fw_def(COFFEELAKE,   0, guc_def(kbl,  70, 1, 1)) \
>> -	fw_def(GEMINILAKE,   0, guc_def(glk,  70, 1, 1)) \
>> -	fw_def(KABYLAKE,     0, guc_def(kbl,  70, 1, 1)) \
>> -	fw_def(BROXTON,      0, guc_def(bxt,  70, 1, 1)) \
>> -	fw_def(SKYLAKE,      0, guc_def(skl,  70, 1, 1))
>> -
>> -#define INTEL_GUC_FIRMWARE_DEFS_FALLBACK(fw_def, guc_def) \
>> -	fw_def(ALDERLAKE_P,  0, guc_def(adlp, 69, 0, 3)) \
>> -	fw_def(ALDERLAKE_S,  0, guc_def(tgl,  69, 0, 3))
>> -
>> -#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_def) \
>> -	fw_def(ALDERLAKE_P,  0, huc_def(tgl,  7, 9, 3)) \
>> -	fw_def(ALDERLAKE_S,  0, huc_def(tgl,  7, 9, 3)) \
>> -	fw_def(DG1,          0, huc_def(dg1,  7, 9, 3)) \
>> -	fw_def(ROCKETLAKE,   0, huc_def(tgl,  7, 9, 3)) \
>> -	fw_def(TIGERLAKE,    0, huc_def(tgl,  7, 9, 3)) \
>> -	fw_def(JASPERLAKE,   0, huc_def(ehl,  9, 0, 0)) \
>> -	fw_def(ELKHARTLAKE,  0, huc_def(ehl,  9, 0, 0)) \
>> -	fw_def(ICELAKE,      0, huc_def(icl,  9, 0, 0)) \
>> -	fw_def(COMETLAKE,    5, huc_def(cml,  4, 0, 0)) \
>> -	fw_def(COMETLAKE,    0, huc_def(kbl,  4, 0, 0)) \
>> -	fw_def(COFFEELAKE,   0, huc_def(kbl,  4, 0, 0)) \
>> -	fw_def(GEMINILAKE,   0, huc_def(glk,  4, 0, 0)) \
>> -	fw_def(KABYLAKE,     0, huc_def(kbl,  4, 0, 0)) \
>> -	fw_def(BROXTON,      0, huc_def(bxt,  2, 0, 0)) \
>> -	fw_def(SKYLAKE,      0, huc_def(skl,  2, 0, 0))
>> -
>> -#define __MAKE_UC_FW_PATH(prefix_, name_, major_, minor_, patch_) \
>> +#define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
>> +	fw_def(DG2,          0, guc_mmp(dg2,  70, 4, 1)) \
>> +	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
>> +	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
>> +	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
>> +	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  69, 0, 3)) \
>> +	fw_def(DG1,          0, guc_mmp(dg1,  70, 1, 1)) \
>> +	fw_def(ROCKETLAKE,   0, guc_mmp(tgl,  70, 1, 1)) \
>> +	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 1, 1)) \
>> +	fw_def(JASPERLAKE,   0, guc_mmp(ehl,  70, 1, 1)) \
>> +	fw_def(ELKHARTLAKE,  0, guc_mmp(ehl,  70, 1, 1)) \
>> +	fw_def(ICELAKE,      0, guc_mmp(icl,  70, 1, 1)) \
>> +	fw_def(COMETLAKE,    5, guc_mmp(cml,  70, 1, 1)) \
>> +	fw_def(COMETLAKE,    0, guc_mmp(kbl,  70, 1, 1)) \
>> +	fw_def(COFFEELAKE,   0, guc_mmp(kbl,  70, 1, 1)) \
>> +	fw_def(GEMINILAKE,   0, guc_mmp(glk,  70, 1, 1)) \
>> +	fw_def(KABYLAKE,     0, guc_mmp(kbl,  70, 1, 1)) \
>> +	fw_def(BROXTON,      0, guc_mmp(bxt,  70, 1, 1)) \
>> +	fw_def(SKYLAKE,      0, guc_mmp(skl,  70, 1, 1))
>> +
>> +#define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp) \
>> +	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
>> +	fw_def(ALDERLAKE_S,  0, huc_mmp(tgl,  7, 9, 3)) \
>> +	fw_def(DG1,          0, huc_mmp(dg1,  7, 9, 3)) \
>> +	fw_def(ROCKETLAKE,   0, huc_mmp(tgl,  7, 9, 3)) \
>> +	fw_def(TIGERLAKE,    0, huc_mmp(tgl,  7, 9, 3)) \
>> +	fw_def(JASPERLAKE,   0, huc_mmp(ehl,  9, 0, 0)) \
>> +	fw_def(ELKHARTLAKE,  0, huc_mmp(ehl,  9, 0, 0)) \
>> +	fw_def(ICELAKE,      0, huc_mmp(icl,  9, 0, 0)) \
>> +	fw_def(COMETLAKE,    5, huc_mmp(cml,  4, 0, 0)) \
>> +	fw_def(COMETLAKE,    0, huc_mmp(kbl,  4, 0, 0)) \
>> +	fw_def(COFFEELAKE,   0, huc_mmp(kbl,  4, 0, 0)) \
>> +	fw_def(GEMINILAKE,   0, huc_mmp(glk,  4, 0, 0)) \
>> +	fw_def(KABYLAKE,     0, huc_mmp(kbl,  4, 0, 0)) \
>> +	fw_def(BROXTON,      0, huc_mmp(bxt,  2, 0, 0)) \
>> +	fw_def(SKYLAKE,      0, huc_mmp(skl,  2, 0, 0))
>> +
>> +/*
>> + * Set of macros for producing a list of filenames from the above table.
>> + */
>> +#define __MAKE_UC_FW_PATH_BLANK(prefix_, name_) \
>> +	"i915/" \
>> +	__stringify(prefix_) name_ ".bin"
>> +
>> +#define __MAKE_UC_FW_PATH_MAJOR(prefix_, name_, major_) \
>> +	"i915/" \
>> +	__stringify(prefix_) name_ \
>> +	__stringify(major_) ".bin"
>> +
>> +#define __MAKE_UC_FW_PATH_MMP(prefix_, name_, major_, minor_, patch_) \
>>   	"i915/" \
>>   	__stringify(prefix_) name_ \
>>   	__stringify(major_) "." \
>>   	__stringify(minor_) "." \
>>   	__stringify(patch_) ".bin"
>>   
>> -#define MAKE_GUC_FW_PATH(prefix_, major_, minor_, patch_) \
>> -	__MAKE_UC_FW_PATH(prefix_, "_guc_", major_, minor_, patch_)
>> +/* Minor for internal driver use, not part of file name */
>> +#define MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_) \
>> +	__MAKE_UC_FW_PATH_MAJOR(prefix_, "_guc_", major_)
>>   
>> -#define MAKE_HUC_FW_PATH(prefix_, major_, minor_, bld_num_) \
>> -	__MAKE_UC_FW_PATH(prefix_, "_huc_", major_, minor_, bld_num_)
>> +#define MAKE_GUC_FW_PATH_MMP(prefix_, major_, minor_, patch_) \
>> +	__MAKE_UC_FW_PATH_MMP(prefix_, "_guc_", major_, minor_, patch_)
>>   
>> -/* All blobs need to be declared via MODULE_FIRMWARE() */
>> +#define MAKE_HUC_FW_PATH_BLANK(prefix_) \
>> +	__MAKE_UC_FW_PATH_BLANK(prefix_, "_huc")
>> +
>> +#define MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_) \
>> +	__MAKE_UC_FW_PATH_MMP(prefix_, "_huc_", major_, minor_, patch_)
>> +
>> +/*
>> + * All blobs need to be declared via MODULE_FIRMWARE().
>> + * This first expansion of the table macros is solely to provide
>> + * that declaration.
>> + */
>>   #define INTEL_UC_MODULE_FW(platform_, revid_, uc_) \
>>   	MODULE_FIRMWARE(uc_);
>>   
>> -INTEL_GUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GUC_FW_PATH)
>> -INTEL_GUC_FIRMWARE_DEFS_FALLBACK(INTEL_UC_MODULE_FW, MAKE_GUC_FW_PATH)
>> -INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH)
>> +INTEL_GUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GUC_FW_PATH_MAJOR, MAKE_GUC_FW_PATH_MMP)
>> +INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH_BLANK, MAKE_HUC_FW_PATH_MMP)
>>   
>> -/* The below structs and macros are used to iterate across the list of blobs */
>> +/*
>> + * The next expansion of the table macros (in __uc_fw_auto_select below) provides
>> + * actual data structures with both the filename and the version information.
>> + * These structure arrays are then iterated over to the list of suitable files
>> + * for the current platform and to then attempt to load those files, in the order
>> + * listed, until one is successfully found.
>> + */
>>   struct __packed uc_fw_blob {
>> +	const char *path;
>> +	bool legacy;
>>   	u8 major;
>>   	u8 minor;
>> -	const char *path;
>> +	u8 patch;
>>   };
>>   
>> -#define UC_FW_BLOB(major_, minor_, path_) \
>> -	{ .major = major_, .minor = minor_, .path = path_ }
>> +#define UC_FW_BLOB_BASE(major_, minor_, patch_, path_) \
>> +	.major = major_, \
>> +	.minor = minor_, \
>> +	.patch = patch_, \
>> +	.path = path_,
>> +
>> +#define UC_FW_BLOB_NEW(major_, minor_, patch_, path_) \
>> +	{ UC_FW_BLOB_BASE(major_, minor_, patch_, path_) \
>> +	  .legacy = false }
>> +
>> +#define UC_FW_BLOB_OLD(major_, minor_, patch_, path_) \
>> +	{ UC_FW_BLOB_BASE(major_, minor_, patch_, path_) \
>> +	  .legacy = true }
>>   
>> -#define GUC_FW_BLOB(prefix_, major_, minor_, patch_) \
>> -	UC_FW_BLOB(major_, minor_, \
>> -		   MAKE_GUC_FW_PATH(prefix_, major_, minor_, patch_))
>> +#define GUC_FW_BLOB(prefix_, major_, minor_) \
>> +	UC_FW_BLOB_NEW(major_, minor_, 0, \
>> +		       MAKE_GUC_FW_PATH_MAJOR(prefix_, major_, minor_))
>>   
>> -#define HUC_FW_BLOB(prefix_, major_, minor_, bld_num_) \
>> -	UC_FW_BLOB(major_, minor_, \
>> -		   MAKE_HUC_FW_PATH(prefix_, major_, minor_, bld_num_))
>> +#define GUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
>> +	UC_FW_BLOB_OLD(major_, minor_, patch_, \
>> +		       MAKE_GUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))
>> +
>> +#define HUC_FW_BLOB(prefix_) \
>> +	UC_FW_BLOB_NEW(0, 0, 0, MAKE_HUC_FW_PATH_BLANK(prefix_))
>> +
>> +#define HUC_FW_BLOB_MMP(prefix_, major_, minor_, patch_) \
>> +	UC_FW_BLOB_OLD(major_, minor_, patch_, \
>> +		       MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_))
>>   
>>   struct __packed uc_fw_platform_requirement {
>>   	enum intel_platform p;
>> @@ -152,18 +217,16 @@ static void
>>   __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
>>   {
>>   	static const struct uc_fw_platform_requirement blobs_guc[] = {
>> -		INTEL_GUC_FIRMWARE_DEFS(MAKE_FW_LIST, GUC_FW_BLOB)
>> -	};
>> -	static const struct uc_fw_platform_requirement blobs_guc_fallback[] = {
>> -		INTEL_GUC_FIRMWARE_DEFS_FALLBACK(MAKE_FW_LIST, GUC_FW_BLOB)
>> +		INTEL_GUC_FIRMWARE_DEFS(MAKE_FW_LIST, GUC_FW_BLOB, GUC_FW_BLOB_MMP)
>>   	};
>>   	static const struct uc_fw_platform_requirement blobs_huc[] = {
>> -		INTEL_HUC_FIRMWARE_DEFS(MAKE_FW_LIST, HUC_FW_BLOB)
>> +		INTEL_HUC_FIRMWARE_DEFS(MAKE_FW_LIST, HUC_FW_BLOB, HUC_FW_BLOB_MMP)
>>   	};
>>   	static const struct fw_blobs_by_type blobs_all[INTEL_UC_FW_NUM_TYPES] = {
>>   		[INTEL_UC_FW_TYPE_GUC] = { blobs_guc, ARRAY_SIZE(blobs_guc) },
>>   		[INTEL_UC_FW_TYPE_HUC] = { blobs_huc, ARRAY_SIZE(blobs_huc) },
>>   	};
>> +	static bool verified;
>>   	const struct uc_fw_platform_requirement *fw_blobs;
>>   	enum intel_platform p = INTEL_INFO(i915)->platform;
>>   	u32 fw_count;
>> @@ -184,49 +247,94 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
>>   	fw_count = blobs_all[uc_fw->type].count;
>>   
>>   	for (i = 0; i < fw_count && p <= fw_blobs[i].p; i++) {
>> -		if (p == fw_blobs[i].p && rev >= fw_blobs[i].rev) {
>> -			const struct uc_fw_blob *blob = &fw_blobs[i].blob;
>> -			uc_fw->path = blob->path;
>> -			uc_fw->wanted_path = blob->path;
>> -			uc_fw->major_ver_wanted = blob->major;
>> -			uc_fw->minor_ver_wanted = blob->minor;
>> -			break;
>> -		}
>> -	}
>> +		const struct uc_fw_blob *blob = &fw_blobs[i].blob;
>>   
>> -	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC) {
>> -		const struct uc_fw_platform_requirement *blobs = blobs_guc_fallback;
>> -		u32 count = ARRAY_SIZE(blobs_guc_fallback);
>> +		if (p != fw_blobs[i].p)
>> +			continue;
>>   
>> -		for (i = 0; i < count && p <= blobs[i].p; i++) {
>> -			if (p == blobs[i].p && rev >= blobs[i].rev) {
>> -				const struct uc_fw_blob *blob = &blobs[i].blob;
>> +		if (rev < fw_blobs[i].rev)
>> +			continue;
>>   
>> -				uc_fw->fallback.path = blob->path;
>> -				uc_fw->fallback.major_ver = blob->major;
>> -				uc_fw->fallback.minor_ver = blob->minor;
>> -				break;
>> -			}
>> +		if (uc_fw->file_selected.path) {
>> +			if (uc_fw->file_selected.path == blob->path)
>> +				uc_fw->file_selected.path = NULL;
>> +
>> +			continue;
>>   		}
>> +
>> +		uc_fw->file_selected.path = blob->path;
>> +		uc_fw->file_wanted.path = blob->path;
>> +		uc_fw->file_wanted.major_ver = blob->major;
>> +		uc_fw->file_wanted.minor_ver = blob->minor;
>> +		break;
>>   	}
>>   
>>   	/* make sure the list is ordered as expected */
>> -	if (IS_ENABLED(CONFIG_DRM_I915_SELFTEST)) {
>> +	if (IS_ENABLED(CONFIG_DRM_I915_SELFTEST) && !verified) {
>> +		verified = true;
>> +
>>   		for (i = 1; i < fw_count; i++) {
>> +			/* Next platform is good: */
>>   			if (fw_blobs[i].p < fw_blobs[i - 1].p)
>>   				continue;
>>   
>> +			/* Next platform revision is good: */
>>   			if (fw_blobs[i].p == fw_blobs[i - 1].p &&
>>   			    fw_blobs[i].rev < fw_blobs[i - 1].rev)
>>   				continue;
>>   
>> -			drm_err(&i915->drm, "Invalid FW blob order: %s r%u comes before %s r%u\n",
>> -				intel_platform_name(fw_blobs[i - 1].p),
>> -				fw_blobs[i - 1].rev,
>> -				intel_platform_name(fw_blobs[i].p),
>> -				fw_blobs[i].rev);
>> +			/* Platform/revision must be in order: */
>> +			if (fw_blobs[i].p != fw_blobs[i - 1].p ||
>> +			    fw_blobs[i].rev != fw_blobs[i - 1].rev)
>> +				goto bad;
>> +
>> +			/* Next major version is good: */
>> +			if (fw_blobs[i].blob.major < fw_blobs[i - 1].blob.major)
>> +				continue;
>> +
>> +			/* New must be before legacy: */
>> +			if (!fw_blobs[i].blob.legacy && fw_blobs[i - 1].blob.legacy)
>> +				goto bad;
>> +
>> +			/* New to legacy also means 0.0 to X.Y (HuC), or X.0 to X.Y (GuC) */
>> +			if (fw_blobs[i].blob.legacy && !fw_blobs[i - 1].blob.legacy) {
>> +				if (!fw_blobs[i - 1].blob.major)
>> +					continue;
>> +
>> +				if (fw_blobs[i].blob.major == fw_blobs[i - 1].blob.major)
>> +					continue;
>> +			}
>> +
>> +			/* Major versions must be in order: */
>> +			if (fw_blobs[i].blob.major != fw_blobs[i - 1].blob.major)
>> +				goto bad;
>> +
>> +			/* Next minor version is good: */
>> +			if (fw_blobs[i].blob.minor < fw_blobs[i - 1].blob.minor)
>> +				continue;
>>   
>> -			uc_fw->path = NULL;
>> +			/* Minor versions must be in order: */
>> +			if (fw_blobs[i].blob.minor != fw_blobs[i - 1].blob.minor)
>> +				goto bad;
>> +
>> +			/* Patch versions must be in order: */
>> +			if (fw_blobs[i].blob.patch <= fw_blobs[i - 1].blob.patch)
>> +				continue;
>> +
>> +bad:
>> +			drm_err(&i915->drm, "\x1B[35;1mInvalid FW blob order: %s r%u %s%d.%d.%d comes before %s r%u %s%d.%d.%d\n",
>> +				intel_platform_name(fw_blobs[i - 1].p), fw_blobs[i - 1].rev,
>> +				fw_blobs[i - 1].blob.legacy ? "L" : "v",
>> +				fw_blobs[i - 1].blob.major,
>> +				fw_blobs[i - 1].blob.minor,
>> +				fw_blobs[i - 1].blob.patch,
>> +				intel_platform_name(fw_blobs[i].p), fw_blobs[i].rev,
>> +				fw_blobs[i].blob.legacy ? "L" : "v",
>> +				fw_blobs[i].blob.major,
>> +				fw_blobs[i].blob.minor,
>> +				fw_blobs[i].blob.patch);
>> +
>> +			uc_fw->file_selected.path = NULL;
>>   		}
>>   	}
>>   }
>> @@ -259,7 +367,7 @@ static void __uc_fw_user_override(struct drm_i915_private *i915, struct intel_uc
>>   	}
>>   
>>   	if (unlikely(path)) {
>> -		uc_fw->path = path;
>> +		uc_fw->file_selected.path = path;
>>   		uc_fw->user_overridden = true;
>>   	}
>>   }
>> @@ -283,7 +391,7 @@ void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
>>   	 */
>>   	BUILD_BUG_ON(INTEL_UC_FIRMWARE_UNINITIALIZED);
>>   	GEM_BUG_ON(uc_fw->status);
>> -	GEM_BUG_ON(uc_fw->path);
>> +	GEM_BUG_ON(uc_fw->file_selected.path);
>>   
>>   	uc_fw->type = type;
>>   
>> @@ -292,7 +400,7 @@ void intel_uc_fw_init_early(struct intel_uc_fw *uc_fw,
>>   		__uc_fw_user_override(i915, uc_fw);
>>   	}
>>   
>> -	intel_uc_fw_change_status(uc_fw, uc_fw->path ? *uc_fw->path ?
>> +	intel_uc_fw_change_status(uc_fw, uc_fw->file_selected.path ? *uc_fw->file_selected.path ?
>>   				  INTEL_UC_FIRMWARE_SELECTED :
>>   				  INTEL_UC_FIRMWARE_DISABLED :
>>   				  INTEL_UC_FIRMWARE_NOT_SUPPORTED);
>> @@ -305,32 +413,32 @@ static void __force_fw_fetch_failures(struct intel_uc_fw *uc_fw, int e)
>>   
>>   	if (i915_inject_probe_error(i915, e)) {
>>   		/* non-existing blob */
>> -		uc_fw->path = "<invalid>";
>> +		uc_fw->file_selected.path = "<invalid>";
>>   		uc_fw->user_overridden = user;
>>   	} else if (i915_inject_probe_error(i915, e)) {
>>   		/* require next major version */
>> -		uc_fw->major_ver_wanted += 1;
>> -		uc_fw->minor_ver_wanted = 0;
>> +		uc_fw->file_wanted.major_ver += 1;
>> +		uc_fw->file_wanted.minor_ver = 0;
>>   		uc_fw->user_overridden = user;
>>   	} else if (i915_inject_probe_error(i915, e)) {
>>   		/* require next minor version */
>> -		uc_fw->minor_ver_wanted += 1;
>> +		uc_fw->file_wanted.minor_ver += 1;
>>   		uc_fw->user_overridden = user;
>> -	} else if (uc_fw->major_ver_wanted &&
>> +	} else if (uc_fw->file_wanted.major_ver &&
>>   		   i915_inject_probe_error(i915, e)) {
>>   		/* require prev major version */
>> -		uc_fw->major_ver_wanted -= 1;
>> -		uc_fw->minor_ver_wanted = 0;
>> +		uc_fw->file_wanted.major_ver -= 1;
>> +		uc_fw->file_wanted.minor_ver = 0;
>>   		uc_fw->user_overridden = user;
>> -	} else if (uc_fw->minor_ver_wanted &&
>> +	} else if (uc_fw->file_wanted.minor_ver &&
>>   		   i915_inject_probe_error(i915, e)) {
>>   		/* require prev minor version - hey, this should work! */
>> -		uc_fw->minor_ver_wanted -= 1;
>> +		uc_fw->file_wanted.minor_ver -= 1;
>>   		uc_fw->user_overridden = user;
>>   	} else if (user && i915_inject_probe_error(i915, e)) {
>>   		/* officially unsupported platform */
>> -		uc_fw->major_ver_wanted = 0;
>> -		uc_fw->minor_ver_wanted = 0;
>> +		uc_fw->file_wanted.major_ver = 0;
>> +		uc_fw->file_wanted.minor_ver = 0;
>>   		uc_fw->user_overridden = true;
>>   	}
>>   }
>> @@ -341,8 +449,8 @@ static int check_gsc_manifest(const struct firmware *fw,
>>   	u32 *dw = (u32 *)fw->data;
>>   	u32 version = dw[HUC_GSC_VERSION_DW];
>>   
>> -	uc_fw->major_ver_found = FIELD_GET(HUC_GSC_MAJOR_VER_MASK, version);
>> -	uc_fw->minor_ver_found = FIELD_GET(HUC_GSC_MINOR_VER_MASK, version);
>> +	uc_fw->file_selected.major_ver = FIELD_GET(HUC_GSC_MAJOR_VER_MASK, version);
>> +	uc_fw->file_selected.minor_ver = FIELD_GET(HUC_GSC_MINOR_VER_MASK, version);
>>   
>>   	return 0;
>>   }
>> @@ -357,7 +465,7 @@ static int check_ccs_header(struct drm_i915_private *i915,
>>   	/* Check the size of the blob before examining buffer contents */
>>   	if (unlikely(fw->size < sizeof(struct uc_css_header))) {
>>   		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
>> +			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>>   			 fw->size, sizeof(struct uc_css_header));
>>   		return -ENODATA;
>>   	}
>> @@ -370,7 +478,7 @@ static int check_ccs_header(struct drm_i915_private *i915,
>>   	if (unlikely(size != sizeof(struct uc_css_header))) {
>>   		drm_warn(&i915->drm,
>>   			 "%s firmware %s: unexpected header size: %zu != %zu\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
>> +			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>>   			 fw->size, sizeof(struct uc_css_header));
>>   		return -EPROTO;
>>   	}
>> @@ -385,7 +493,7 @@ static int check_ccs_header(struct drm_i915_private *i915,
>>   	size = sizeof(struct uc_css_header) + uc_fw->ucode_size + uc_fw->rsa_size;
>>   	if (unlikely(fw->size < size)) {
>>   		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
>> +			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>>   			 fw->size, size);
>>   		return -ENOEXEC;
>>   	}
>> @@ -394,16 +502,16 @@ static int check_ccs_header(struct drm_i915_private *i915,
>>   	size = __intel_uc_fw_get_upload_size(uc_fw);
>>   	if (unlikely(size >= i915->wopcm.size)) {
>>   		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu > %zu\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
>> +			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>>   			 size, (size_t)i915->wopcm.size);
>>   		return -E2BIG;
>>   	}
>>   
>>   	/* Get version numbers from the CSS header */
>> -	uc_fw->major_ver_found = FIELD_GET(CSS_SW_VERSION_UC_MAJOR,
>> -					   css->sw_version);
>> -	uc_fw->minor_ver_found = FIELD_GET(CSS_SW_VERSION_UC_MINOR,
>> -					   css->sw_version);
>> +	uc_fw->file_selected.major_ver = FIELD_GET(CSS_SW_VERSION_UC_MAJOR,
>> +						   css->sw_version);
>> +	uc_fw->file_selected.minor_ver = FIELD_GET(CSS_SW_VERSION_UC_MINOR,
>> +						   css->sw_version);
>>   
>>   	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC)
>>   		uc_fw->private_data_size = css->private_data_size;
>> @@ -422,9 +530,11 @@ static int check_ccs_header(struct drm_i915_private *i915,
>>   int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>>   {
>>   	struct drm_i915_private *i915 = __uc_fw_to_gt(uc_fw)->i915;
>> +	struct intel_uc_fw_file file_ideal;
>>   	struct device *dev = i915->drm.dev;
>>   	struct drm_i915_gem_object *obj;
>>   	const struct firmware *fw = NULL;
>> +	bool old_ver = false;
>>   	int err;
>>   
>>   	GEM_BUG_ON(!i915->wopcm.size);
>> @@ -437,27 +547,33 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>>   	__force_fw_fetch_failures(uc_fw, -EINVAL);
>>   	__force_fw_fetch_failures(uc_fw, -ESTALE);
>>   
>> -	err = firmware_request_nowarn(&fw, uc_fw->path, dev);
>> -	if (err && !intel_uc_fw_is_overridden(uc_fw) && uc_fw->fallback.path) {
>> -		err = firmware_request_nowarn(&fw, uc_fw->fallback.path, dev);
>> -		if (!err) {
>> -			drm_notice(&i915->drm,
>> -				   "%s firmware %s is recommended, but only %s was found\n",
>> -				   intel_uc_fw_type_repr(uc_fw->type),
>> -				   uc_fw->wanted_path,
>> -				   uc_fw->fallback.path);
>> -			drm_info(&i915->drm,
>> -				 "Consider updating your linux-firmware pkg or downloading from %s\n",
>> -				 INTEL_UC_FIRMWARE_URL);
>> -
>> -			uc_fw->path = uc_fw->fallback.path;
>> -			uc_fw->major_ver_wanted = uc_fw->fallback.major_ver;
>> -			uc_fw->minor_ver_wanted = uc_fw->fallback.minor_ver;
>> +	err = firmware_request_nowarn(&fw, uc_fw->file_selected.path, dev);
>> +	memcpy(&file_ideal, &uc_fw->file_wanted, sizeof(file_ideal));
>> +	if (!err || intel_uc_fw_is_overridden(uc_fw))
>> +		goto done;
>> +
>> +	while (err == -ENOENT) {
>> +		__uc_fw_auto_select(i915, uc_fw);
>> +		if (!uc_fw->file_selected.path) {
>> +			/*
>> +			 * No more options! But set the path back to something
>> +			 * valid just in case it gets dereferenced.
>> +			 */
>> +			uc_fw->file_selected.path = file_ideal.path;
>> +
>> +			/* Also, preserve the version that was really wanted */
>> +			memcpy(&uc_fw->file_wanted, &file_ideal, sizeof(uc_fw->file_wanted));
>> +			break;
>>   		}
>> +
>> +		err = firmware_request_nowarn(&fw, uc_fw->file_selected.path, dev);
>>   	}
>> +
>>   	if (err)
>>   		goto fail;
>>   
>> +	old_ver = true;
>> +done:
>>   	if (uc_fw->loaded_via_gsc)
>>   		err = check_gsc_manifest(fw, uc_fw);
>>   	else
>> @@ -465,18 +581,39 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>>   	if (err)
>>   		goto fail;
>>   
>> -	if (uc_fw->major_ver_found != uc_fw->major_ver_wanted ||
>> -	    uc_fw->minor_ver_found < uc_fw->minor_ver_wanted) {
>> -		drm_notice(&i915->drm, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
>> -			   intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
>> -			   uc_fw->major_ver_found, uc_fw->minor_ver_found,
>> -			   uc_fw->major_ver_wanted, uc_fw->minor_ver_wanted);
>> -		if (!intel_uc_fw_is_overridden(uc_fw)) {
>> -			err = -ENOEXEC;
>> -			goto fail;
>> +	if (uc_fw->file_wanted.major_ver) {
>> +		/* Check the file's major version was as it claimed */
>> +		if (uc_fw->file_selected.major_ver != uc_fw->file_wanted.major_ver) {
>> +			drm_notice(&i915->drm, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
>> +				   intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> +				   uc_fw->file_selected.major_ver, uc_fw->file_selected.minor_ver,
>> +				   uc_fw->file_wanted.major_ver, uc_fw->file_wanted.minor_ver);
>> +			if (!intel_uc_fw_is_overridden(uc_fw)) {
>> +				err = -ENOEXEC;
>> +				goto fail;
>> +			}
>> +		} else {
>> +			if (uc_fw->file_selected.minor_ver < uc_fw->file_wanted.minor_ver)
>> +				old_ver = true;
>>   		}
>>   	}
>>   
>> +	if (old_ver) {
>> +		/* Preserve the version that was really wanted */
>> +		memcpy(&uc_fw->file_wanted, &file_ideal, sizeof(uc_fw->file_wanted));
>> +
>> +		drm_notice(&i915->drm,
>> +			   "%s firmware %s (%d.%d) is recommended, but only %s (%d.%d) was found\n",
>> +			   intel_uc_fw_type_repr(uc_fw->type),
>> +			   uc_fw->file_wanted.path,
>> +			   uc_fw->file_wanted.major_ver, uc_fw->file_wanted.minor_ver,
>> +			   uc_fw->file_selected.path,
>> +			   uc_fw->file_selected.major_ver, uc_fw->file_selected.minor_ver);
>> +		drm_info(&i915->drm,
>> +			 "Consider updating your linux-firmware pkg or downloading from %s\n",
>> +			 INTEL_UC_FIRMWARE_URL);
>> +	}
>> +
>>   	if (HAS_LMEM(i915)) {
>>   		obj = i915_gem_object_create_lmem_from_data(i915, fw->data, fw->size);
>>   		if (!IS_ERR(obj))
>> @@ -503,7 +640,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>>   				  INTEL_UC_FIRMWARE_ERROR);
>>   
>>   	i915_probe_error(i915, "%s firmware %s: fetch failed with error %d\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path, err);
>> +			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path, err);
>>   	drm_info(&i915->drm, "%s firmware(s) can be downloaded from %s\n",
>>   		 intel_uc_fw_type_repr(uc_fw->type), INTEL_UC_FIRMWARE_URL);
>>   
>> @@ -645,7 +782,7 @@ int intel_uc_fw_upload(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
>>   
>>   fail:
>>   	i915_probe_error(gt->i915, "Failed to load %s firmware %s (%d)\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
>> +			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>>   			 err);
>>   	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
>>   	return err;
>> @@ -864,18 +1001,19 @@ size_t intel_uc_fw_copy_rsa(struct intel_uc_fw *uc_fw, void *dst, u32 max_len)
>>   void intel_uc_fw_dump(const struct intel_uc_fw *uc_fw, struct drm_printer *p)
>>   {
>>   	drm_printf(p, "%s firmware: %s\n",
>> -		   intel_uc_fw_type_repr(uc_fw->type), uc_fw->wanted_path);
>> -	if (uc_fw->fallback.path) {
>> -		drm_printf(p, "%s firmware fallback: %s\n",
>> -			   intel_uc_fw_type_repr(uc_fw->type), uc_fw->fallback.path);
>> -		drm_printf(p, "fallback selected: %s\n",
>> -			   str_yes_no(uc_fw->path == uc_fw->fallback.path));
>> -	}
>> +		   intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path);
>> +	if (uc_fw->file_selected.path != uc_fw->file_wanted.path)
>> +		drm_printf(p, "%s firmware wanted: %s\n",
>> +			   intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_wanted.path);
>>   	drm_printf(p, "\tstatus: %s\n",
>>   		   intel_uc_fw_status_repr(uc_fw->status));
>> -	drm_printf(p, "\tversion: wanted %u.%u, found %u.%u\n",
>> -		   uc_fw->major_ver_wanted, uc_fw->minor_ver_wanted,
>> -		   uc_fw->major_ver_found, uc_fw->minor_ver_found);
>> +	if (uc_fw->file_wanted.major_ver)
>> +		drm_printf(p, "\tversion: wanted %u.%u, found %u.%u\n",
>> +			   uc_fw->file_wanted.major_ver, uc_fw->file_wanted.minor_ver,
>> +			   uc_fw->file_selected.major_ver, uc_fw->file_selected.minor_ver);
>> +	else
>> +		drm_printf(p, "\tversion: found %u.%u\n",
>> +			   uc_fw->file_selected.major_ver, uc_fw->file_selected.minor_ver);
>>   	drm_printf(p, "\tuCode: %u bytes\n", uc_fw->ucode_size);
>>   	drm_printf(p, "\tRSA: %u bytes\n", uc_fw->rsa_size);
>>   }
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
>> index 7aa2644400b9..344763c942e3 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
>> @@ -64,6 +64,17 @@ enum intel_uc_fw_type {
>>   };
>>   #define INTEL_UC_FW_NUM_TYPES 2
>>   
>> +/*
>> + * The firmware build process will generate a version header file with major and
>> + * minor version defined. The versions are built into CSS header of firmware.
>> + * i915 kernel driver set the minimal firmware version required per platform.
>> + */
>> +struct intel_uc_fw_file {
>> +	const char *path;
>> +	u16 major_ver;
>> +	u16 minor_ver;
>> +};
>> +
>>   /*
>>    * This structure encapsulates all the data needed during the process
>>    * of fetching, caching, and loading the firmware image into the uC.
>> @@ -74,11 +85,12 @@ struct intel_uc_fw {
>>   		const enum intel_uc_fw_status status;
>>   		enum intel_uc_fw_status __status; /* no accidental overwrites */
>>   	};
>> -	const char *wanted_path;
>> -	const char *path;
>> +	struct intel_uc_fw_file file_wanted;
>> +	struct intel_uc_fw_file file_selected;
>>   	bool user_overridden;
>>   	size_t size;
>>   	struct drm_i915_gem_object *obj;
>> +
>>   	/**
>>   	 * @dummy: A vma used in binding the uc fw to ggtt. We can't define this
>>   	 * vma on the stack as it can lead to a stack overflow, so we define it
>> @@ -89,25 +101,8 @@ struct intel_uc_fw {
>>   	struct i915_vma_resource dummy;
>>   	struct i915_vma *rsa_data;
>>   
>> -	/*
>> -	 * The firmware build process will generate a version header file with major and
>> -	 * minor version defined. The versions are built into CSS header of firmware.
>> -	 * i915 kernel driver set the minimal firmware version required per platform.
>> -	 */
>> -	u16 major_ver_wanted;
>> -	u16 minor_ver_wanted;
>> -	u16 major_ver_found;
>> -	u16 minor_ver_found;
>> -
>> -	struct {
>> -		const char *path;
>> -		u16 major_ver;
>> -		u16 minor_ver;
>> -	} fallback;
>> -
>>   	u32 rsa_size;
>>   	u32 ucode_size;
>> -
>>   	u32 private_data_size;
>>   
>>   	bool loaded_via_gsc;
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>> index b5fbc2252784..9ea2fe34e7d3 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>> @@ -1022,8 +1022,10 @@ static void cleanup_params(struct i915_gpu_coredump *error)
>>   
>>   static void cleanup_uc(struct intel_uc_coredump *uc)
>>   {
>> -	kfree(uc->guc_fw.path);
>> -	kfree(uc->huc_fw.path);
>> +	kfree(uc->guc_fw.file_selected.path);
>> +	kfree(uc->huc_fw.file_selected.path);
>> +	kfree(uc->guc_fw.file_wanted.path);
>> +	kfree(uc->huc_fw.file_wanted.path);
>>   	i915_vma_coredump_free(uc->guc.vma_log);
>>   	i915_vma_coredump_free(uc->guc.vma_ctb);
>>   
>> @@ -1705,12 +1707,10 @@ gt_record_uc(struct intel_gt_coredump *gt,
>>   	memcpy(&error_uc->guc_fw, &uc->guc.fw, sizeof(uc->guc.fw));
>>   	memcpy(&error_uc->huc_fw, &uc->huc.fw, sizeof(uc->huc.fw));
>>   
>> -	/* Non-default firmware paths will be specified by the modparam.
>> -	 * As modparams are generally accesible from the userspace make
>> -	 * explicit copies of the firmware paths.
>> -	 */
>> -	error_uc->guc_fw.path = kstrdup(uc->guc.fw.path, ALLOW_FAIL);
>> -	error_uc->huc_fw.path = kstrdup(uc->huc.fw.path, ALLOW_FAIL);
>> +	error_uc->guc_fw.file_selected.path = kstrdup(uc->guc.fw.file_selected.path, ALLOW_FAIL);
>> +	error_uc->huc_fw.file_selected.path = kstrdup(uc->huc.fw.file_selected.path, ALLOW_FAIL);
>> +	error_uc->guc_fw.file_wanted.path = kstrdup(uc->guc.fw.file_wanted.path, ALLOW_FAIL);
>> +	error_uc->huc_fw.file_wanted.path = kstrdup(uc->huc.fw.file_wanted.path, ALLOW_FAIL);
>>   
>>   	/*
>>   	 * Save the GuC log and include a timestamp reference for converting the

