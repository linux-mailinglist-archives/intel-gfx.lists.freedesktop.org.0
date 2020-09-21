Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B15FF2732B4
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 21:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5EC089E36;
	Mon, 21 Sep 2020 19:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4409889E36
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 19:22:29 +0000 (UTC)
IronPort-SDR: nqwVdyxS+ZSRnGcFGbUIwKxTSiFYA5W8f0U65IYR3k4klI72QsOjQkiDcrg7GxInIRPlpeymRW
 lxXlGBEvauZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="222058346"
X-IronPort-AV: E=Sophos;i="5.77,287,1596524400"; d="scan'208";a="222058346"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 12:22:28 -0700
IronPort-SDR: dRHk44vIjbvAMT1SilUbvCQOgZBIZShvoZ2EboPn21X8jiuWFN8RnUpp5z6bugAAAvT2NvyGq3
 GFD0WUKUmXOA==
X-IronPort-AV: E=Sophos;i="5.77,287,1596524400"; d="scan'208";a="510844714"
Received: from johnharr-mobl1.amr.corp.intel.com (HELO [10.212.118.250])
 ([10.212.118.250])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 12:22:27 -0700
To: Petri Latvala <petri.latvala@intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
 <160028134210.19374.12969903715505955797@emeril.freedesktop.org>
 <b2366829-8040-075e-59f8-9a92e749ed99@Intel.com>
 <20200917064814.GB7444@platvala-desk.ger.corp.intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <16a5587c-bf6f-7870-e38c-865aec642024@Intel.com>
Date: Mon, 21 Sep 2020 12:22:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200917064814.GB7444@platvala-desk.ger.corp.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Update_to_GuC_v49?=
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 9/16/2020 23:48, Petri Latvala wrote:
> On Wed, Sep 16, 2020 at 06:22:45PM -0700, John Harrison wrote:
>> Hello,
>>
>> The failures below all appear to be because the new GuC firmware was not
>> found on the test system.
>>
>> My understanding is that all we need to do to get the CI system to update
>> with new firmwares is to push the firmware to a branch on the FDO
>> drm-firmware repo and then send a pull request to this mailing list. That
>> was done yesterday.
> That pull request used an ssh:// url though. Can you send it again
> with a git:// url? I suppose that's a plausible reason why I don't see
> the binaries in CI's deploy dir.
>

Hello,

We reset the pull request with a git:// URL as requested. I even gave it 
a full weekend to propagate through. However, I am still getting missing 
firmware failures after posting a new patch set.

John.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
