Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A108703C7
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 15:11:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B5D61121DD;
	Mon,  4 Mar 2024 14:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="IB6EwWyo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EF9C10ED41
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 22:30:19 +0000 (UTC)
Received: by mail-io1-f50.google.com with SMTP id
 ca18e2360f4ac-7c82d2bdc31so9002539f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Mar 2024 14:30:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google; t=1709332219; x=1709937019;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=T8x2mxeFdohQWYY3zMglPyZFTN/Kq6RqRSv1UGmerBI=;
 b=IB6EwWyohonKUDO6HnRbMuaIcezb2W9p4lAf9va9+vcuIi69Ch3mwHJFf1z110y9hJ
 gttUWcr4YEio+2PAARkJnk17ZBsF7Z0OK6O0oMjmYFe0VcAQjgsxSXuvtb/8KW9QLA3K
 r5t0HmzccIU67rE7jJG4Oo34ilUmKpAjZFhKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709332219; x=1709937019;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=T8x2mxeFdohQWYY3zMglPyZFTN/Kq6RqRSv1UGmerBI=;
 b=ScJNmkxOmryTsnYjkICXLn4UONSxMZRToOlaGeGR3lAp9ZB+LBHWIx51X5AAESI5JM
 2Dq1LA9X4IxQq8rNRZl3iGyO8nFTpGEcA3BH4Vgpv80vR0tMcKvU4SPD77fl/GdheCXX
 4DHOwQwfFvdVV+eO3eWw+IPoQUl9jjc6wHAgA2PANX4Z7BgWEgeE5mFvY9mS9GRuFM98
 Ge4sgS77loCQnPFxheFHnFHZKMB/O2jrk6RTUFdajSpOI7e3F+r5J10KqnBwbLA3gcHr
 9Y8FM6edRcl0KAfuF49wRPDmqBQY/RrG08xA9g9NS7HkI6iV6K+DRXf0XrxGctBWGAzq
 DmPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOjn1AGr+dpMbxMo2fjBcJZLLI8oQDc9QDSxnN9bhJKtYVCmxeQOTqyPFYnhaG1Fu8fiWaEhkAKAWXiVBTD0motgGxf99ptNUkp6E3C03a
X-Gm-Message-State: AOJu0YyJrhs7PD7Zh2nO/5pFsOgY3L102R647k9Ts/05evS6FKjE54MW
 c0hqbArBflySE4uANIh8Cc1hznehgKdDhv1TeKn8SLui87qJeV50Dqa1/Liyqb0=
X-Google-Smtp-Source: AGHT+IHgWkGCfWnHsje4/UxTkcI+GY6iZPTcibjb9fiZXNTMC/s9IGJS4fzp6cW5nIoplalJJpzPjA==
X-Received: by 2002:a6b:6615:0:b0:7c8:1ede:72ea with SMTP id
 a21-20020a6b6615000000b007c81ede72eamr3027448ioc.0.1709332218959; 
 Fri, 01 Mar 2024 14:30:18 -0800 (PST)
Received: from [192.168.1.128] ([38.175.170.29])
 by smtp.gmail.com with ESMTPSA id
 x4-20020a029704000000b004747cb8b342sm1006814jai.15.2024.03.01.14.30.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 Mar 2024 14:30:18 -0800 (PST)
Message-ID: <b0abafb8-65c8-4e54-a410-8a5ac7dccee6@linuxfoundation.org>
Date: Fri, 1 Mar 2024 15:30:17 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: linux-next: build failure after merge of the kunit-next tree
Content-Language: en-US
To: Stephen Rothwell <sfr@canb.auug.org.au>, David Gow <davidgow@google.com>
Cc: Brendan Higgins <brendanhiggins@google.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Dave Airlie <airlied@redhat.com>, Shuah Khan <skhan@linuxfoundation.org>
References: <20240229152653.09ecf771@canb.auug.org.au>
 <be2e812c-3898-4be8-8a9d-e221acb837c3@linuxfoundation.org>
 <CABVgOSmAmkOcY8hFnpPSgz5WZXFkez_BDGhKjBepbWFpKykfUg@mail.gmail.com>
 <20240301214358.7fdecd66@canb.auug.org.au>
 <86d87830-100f-4f29-bb7f-9a612b90866a@linuxfoundation.org>
 <20240302074643.6e1086ff@canb.auug.org.au>
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <20240302074643.6e1086ff@canb.auug.org.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 04 Mar 2024 14:11:34 +0000
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

Hi Stephen,

On 3/1/24 13:46, Stephen Rothwell wrote:
> Hi Shuah,
> 
> On Fri, 1 Mar 2024 09:05:57 -0700 Shuah Khan <skhan@linuxfoundation.org> wrote:
>>
>> On 3/1/24 03:43, Stephen Rothwell wrote:
>>> Hi all,
>>>
>>> On Fri, 1 Mar 2024 15:15:02 +0800 David Gow <davidgow@google.com> wrote:
>>>>
>>>> On Thu, 29 Feb 2024 at 23:07, Shuah Khan <skhan@linuxfoundation.org> wrote:
>>>>>
>>>>> I can carry the fix through kselftest kunit if it works
>>>>> for all.
>>>>
>>>> I'm happy for this to go in with the KUnit changes if that's the best
>>>> way to keep all of the printk formatting fixes together.
> 
> Unfortunately you can't fix this in the kunit-next tree without pulling
> in Linus' tree (or the drm-fixes tree) - which seems excessive.
>    
>>> I am pretty sure that the proper fix has been applied to the
>>> drm-fixes tree today (in the merge of the drm-misc-fixes tree).
>>>    
>>
>> What's the commit id for this fix? I Would like to include the details
>> in my pull request to Linus.
> 
> My mistake, I misread the merge commit.  It has not been fixed in the
> drm-misc-fixes tree or the drm-fixes tree (or Linus' tree since the
> drm-fixes tree has been merged there) :-(
> 
> The problem in this case is not with the format string types, but with
> a missing argument i.e. there is another argument required by the
> format string.  It really should be fixed in the drm-misc-fixes tree
> and sent to Linus post haste.
> 
> At least the change in the kunit-next tree will stop this happening in
> the future.
> 

Thank you for looking into it.

David, please send a fix in as you suggested earlier. I will apply
it to avoid compile errors.

thanks,
-- Shuah
