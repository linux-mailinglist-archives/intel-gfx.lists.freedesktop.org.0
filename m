Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8012E1A047D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 03:27:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF6286E50B;
	Tue,  7 Apr 2020 01:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail26.static.mailgun.info (mail26.static.mailgun.info
 [104.130.122.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 946BB6E50B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 01:27:09 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586222831; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=oLLB4tSwZttv8kEZ0iNZGhvPAxcUAJcj63ujsShLsF8=;
 b=SaPn8AzBoGh0bn6U9bvfIiEzbu16TU3lm5u2Uj77pPZSOltBcSBRE6VVksrpLuTV8Bcx0BYk
 PFf0oVL1/WaW+g0XHl7enZKjEe1DpQGut3LTDqvJOkKhlmgVG76kygLFEK+pPOrZwUff8W9b
 d0dlcAtOsSCQ8i15VI+jg31m12U=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI5MzZmYyIsICJpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8bd6d0.7f83951918f0-smtp-out-n02;
 Tue, 07 Apr 2020 01:26:40 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DB5F6C4478F; Tue,  7 Apr 2020 01:26:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: abhinavk)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1CA25C433D2;
 Tue,  7 Apr 2020 01:26:38 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 06 Apr 2020 18:26:38 -0700
From: abhinavk@codeaurora.org
To: Jani Nikula <jani.nikula@linux.intel.com>
In-Reply-To: <87r1x1kmgr.fsf@intel.com>
References: <20200403204008.14864-1-ville.syrjala@linux.intel.com>
 <20200403204008.14864-17-ville.syrjala@linux.intel.com>
 <7cd8b081a383125732dbddd32116e46e@codeaurora.org> <87r1x1kmgr.fsf@intel.com>
Message-ID: <b9fe52f5ff363c3631889b74cd34e3ec@codeaurora.org>
X-Sender: abhinavk@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Subject: Re: [Intel-gfx] [PATCH v2 16/17] drm: Nuke mode->private_flags
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
Cc: Sam Ravnborg <sam@ravnborg.org>, jeykumar@quicinc.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, aravindh@quicinc.com, nganji@quicinc.com,
 pdhaval@quicinc.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani

On 2020-04-06 02:11, Jani Nikula wrote:
> On Fri, 03 Apr 2020, abhinavk@codeaurora.org wrote:
>> Hi Ville
>> 
>> Thanks for the patch.
>> 
>> Our understanding of private_flags was that we can use it within our
>> drivers to handle vendor specific features.
>> Hence we do have several features in our downstream drivers as well as
>> some planned work based on this.
>> 
>> This was the only method to pass around and consume the driver only
>> information which we have been using.
>> 
>> In the current qualcomm upstream display drivers, the only usage of 
>> the
>> mode->private_flags is what you have removed in
>> https://patchwork.kernel.org/patch/11473497/.
>> 
>> However, for other projects which do not use upstream drivers yet, we
>> have several features already which are using the mode->private_flags.
>> 
>> We do have a plan to remove the usage of mode->private_flags for those
>> drivers as well but its not ready yet.
>> 
>> These downstream drivers still use the upstream drm files for
>> compilation.
>> 
>> So how it works is we use all the headers under include/drm and also 
>> the
>> files under drivers/gpu/drm as-it-is from upstream but maintain our
>> drivers on top of this.
>> 
>> Removing this will result in compilation failures for us in the near
>> term.
>> 
>> Can we keep this one as-it-is and when our changes are ready to post 
>> it
>> upstream we shall remove private_flags from the drm_modes.h
> 
> If your driver were upstream, Ville would have fixed it in the process
> of removing private_flags. It would be part of this patch series. That
> is the only guarantee you get for kernel internal APIs, and you only 
> get
> that guarantee for drivers in the upstream kernel. Otherwise, all bets
> are off.
> 
> Taking all the upstream considerations into account is complicated
> enough. It is simply not reasonable to hold back internal kernel 
> changes
> due to out-of-tree or downstream drivers. I know it is painful, but
> that's the cost of maintaining a driver out-of-tree.
> 
> Sorry, but no. Further reading [1].
> 
> 
> BR,
> Jani.
> 
> 
> [1] 
> https://www.kernel.org/doc/html/latest/process/stable-api-nonsense.html

Thanks for the response. We will plan to remove mode->private_flags in 
our downstream driver as well.

Abhinav
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
