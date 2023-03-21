Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 585146C56B2
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 21:08:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD1710E102;
	Wed, 22 Mar 2023 20:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA2F810E1D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 12:16:43 +0000 (UTC)
Message-ID: <800904b0-c34d-b420-9799-6cf314e95446@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
 t=1679401002;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X+Sf8Zbn2FsABr4BjJGXOQV00kiljQcs8mgntYLLAlw=;
 b=fsra6hZLZhwgkxZgyijXWxmKyhbq8qy1RNTvrqwZklkedEom3phnizX3kFOBN6WlfgzjDN
 uXIknd95woY+fPTdFMjRC6ga3eSCWm5d4htKFGL/VA57bZdg6MiPliQ7M4Uf+2/kZ5ldi0
 YK6OzbeX3Bw/MR6YCi8kI6PgTctHTkToI459wij0gtKTAGKhN/zzD7svWNQJ2Ap7LCqXZL
 glzoAXbgZBI9LnrGhaFeTnAsSeMrtYYceXeo4rniXIWgPMvMz2xHT2TNqwo9z0SiBxExux
 XZy0GfcSGoGe0PUyDiWgBksEZ1iJMPHn3hKhE/b/m838F3ivwXE1+kfdcvK5GQ==
Date: Tue, 21 Mar 2023 19:16:32 +0700
MIME-Version: 1.0
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <8a1bbe56-4463-d18d-d5a9-d249171a569d@manjaro.org>
 <a0be2b31-9e72-1254-978e-570b27abb364@manjaro.org>
 <ZBhfhJ0ylxqXPHee@kroah.com>
 <efc7e85a-a170-ba1b-8746-b00784e81e39@manjaro.org>
 <ZBlY0yzJsT4k7bRL@kroah.com>
Content-Language: en-US
From: =?UTF-8?Q?Philip_M=c3=bcller?= <philm@manjaro.org>
Organization: Manjaro Community
In-Reply-To: <ZBlY0yzJsT4k7bRL@kroah.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=philm@manjaro.org smtp.mailfrom=philm@manjaro.org
X-Mailman-Approved-At: Wed, 22 Mar 2023 20:08:39 +0000
Subject: Re: [Intel-gfx] [Regression] drm/i915: Don't use BAR mappings for
 ring buffers with LLC alone creates issues in stable kernels
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 stable@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21.03.23 14:12, Greg Kroah-Hartman wrote:
> On Tue, Mar 21, 2023 at 07:58:44AM +0700, Philip Müller wrote:
>> On 20.03.23 20:28, Greg Kroah-Hartman wrote:
>>> On Sun, Mar 19, 2023 at 10:01:01AM +0700, Philip Müller wrote:
>>>> Have to correct the affected kernels to these: 4.14.310, 4.19.278, 5.4.237,
>>>> 5.10.175
>>>
>>> Please don't top-post :(
>>>
>>> Anyway, should be fixed in the next round of releases in a few days, if
>>> not, please let us know.
>>>
>>> greg k-h
>>
>> Hi Greg,
>>
>> seems the RCs work out. 4.19.279-rc1 and 5.10.176-rc1 were tested by a user
>> who had the issue on i915. In 5.15 series the drm patch got reverted. I only
>> see "drm/i915: Don't use stolen memory for ring buffers with LLC" there as
>> "drm/i915: Don't use BAR mappings for ring buffers with LLC" was reverted
>> with 5.15.101.
> 
> So is 5.15.y ok or not?  Sorry, I could not parse your response here.
> 
> thanks,
> 
> greg k-h

Hi Greg,

yes, 5.15.y seems to work. You could even re-add the reverted patch from 
5.15.101 as we also have tested with it applied on top of 5.15.104-rc1.
-- 
Best, Philip

