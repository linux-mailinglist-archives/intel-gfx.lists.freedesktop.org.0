Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CABD337BC9F
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 14:36:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18E876EB93;
	Wed, 12 May 2021 12:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D4B96EB93
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 12:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620822993;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hKC4IaCSYPlrbzbaq3gMe1FmeU8nmyn1fevXiQm7ywM=;
 b=A4PyNyL/DV3q8s5OenlblzA/F0rJx3brye+kIqFDTVf8wo4F7lHPDoY5Fwozk7J2i6IurA
 i1T4pUKc0H78tAgtnroPCJJ7dVUhavhBPubi+cw/g43oT6J/IqDfk/WIRenDeQHyPjU8uu
 SczWXl/1BS3hgPpoXp0uvs6p1OBYDq4=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-332-15vPOBJCPCOI3Y_R21c6Kw-1; Wed, 12 May 2021 08:36:32 -0400
X-MC-Unique: 15vPOBJCPCOI3Y_R21c6Kw-1
Received: by mail-ed1-f70.google.com with SMTP id
 d13-20020a056402144db0290387e63c95d8so12795138edx.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 05:36:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hKC4IaCSYPlrbzbaq3gMe1FmeU8nmyn1fevXiQm7ywM=;
 b=jMvesVEl3OChsLud+PvdHYgmbIzAsXeSc3HowfLHY49s3RsjvjUH1ulkaFBkC4ldDu
 UviqJAYuC8I9CHuKJy1b2/CF6REgH4JAtIsW3HHVkYIyI6qtH8PVdE39ajqlnTQ/tx5y
 +9UI5HHCTSjS7+QGUQbb8wQqMXYhWhW4bdsdJnmnb5WVfMFwUxJSLbt61BYILslEPL39
 h0TzMm+dnTh9CYsqTAw7iTkTcVds9dX+NMSoJvuaOkNSksqCsG3TI+bfl1YHAP/uDluL
 ZPD0U/nF5MZYxl2ois5ec5GULz6ew4WZziy/biKlJn24hdMPVM9CZoSToJuyTjDkmG3b
 utQw==
X-Gm-Message-State: AOAM532bDuwXwJqKcsjSCBZN/RxCrjmA+XicVbOJZoxNCtY5xO0kGdO8
 cTfUnm+vbbGpFfEDa4z8Fqc+X4bk9lOiCMT4Y1k07UXCmI3seBUgYs3KCqjSsGXD0M6CblzMawE
 /wWI1AXiPsUMcIjKkrxHjCXbvmoHC
X-Received: by 2002:a17:907:294f:: with SMTP id
 et15mr38025961ejc.324.1620822991260; 
 Wed, 12 May 2021 05:36:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyI+sK4A/63Au0UyVacztSMMHC9tbq67r5t3DiyzezLC5J2IG9ItNWv9phy9/7QpwSi02Ws+w==
X-Received: by 2002:a17:907:294f:: with SMTP id
 et15mr38025937ejc.324.1620822991033; 
 Wed, 12 May 2021 05:36:31 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id p2sm13795120ejo.108.2021.05.12.05.36.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 May 2021 05:36:30 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>, Peter Zijlstra <peterz@infradead.org>
References: <b6b61cf0-5874-f4c0-1fcc-4b3848451c31@redhat.com>
 <YJu4tzXmCJbKp7Fm@hirez.programming.kicks-ass.net>
 <20210512115736.GA10444@lst.de>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <3b178f66-fde6-888a-9a49-ab0d13e944b3@redhat.com>
Date: Wed, 12 May 2021 14:36:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210512115736.GA10444@lst.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] 5.13 i915/PAT regression on Brasswell,
 adding nopat to the kernel commandline worksaround this
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
Cc: intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 5/12/21 1:57 PM, Christoph Hellwig wrote:
> On Wed, May 12, 2021 at 01:15:03PM +0200, Peter Zijlstra wrote:
>> IIRC it's because of 74ffa5a3e685 ("mm: add remap_pfn_range_notrack"),
>> which added a sanity check to make sure expectations were met. It turns
>> out they were not.
>>
>> The bug is not new, the warning is. AFAIK the i915 team is aware, but
>> other than that I've not followed.
> 
> 
> The actual culprit is b12d691ea5e0 ("i915: fix remap_io_sg to verify the
> pgprot"), but otherwise agreed.  Someone the i915 maintainers all seem
> to be on vacation as the previous report did not manage to trigger any
> kind of reply.

I can confirm that reverting that commit restores i915 functionality with
5.13-rc1 on the Braswell machine on which I have been testing this.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
