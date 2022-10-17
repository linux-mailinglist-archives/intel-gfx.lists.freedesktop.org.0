Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC9F600CD4
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 12:49:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C8ED10E2F6;
	Mon, 17 Oct 2022 10:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB3510E2F6
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 10:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666003743;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G/nMNEaPKxeRLF9iYIA/lWfiQRPiF46bzjnNuOgshhw=;
 b=PJXcbS0VUDheRpQihEeeN+5mwtawaQjstDEZC8Yf46B4T+EGwZV1cJVuXO3oKgTsMYI4xL
 tqMt8FuFIBemHESHz3IDPdIiTWWDgFJk96xyB0g0N4QZdCvwGVUfge7pqAuuVioJvnLZS6
 K1J5Z0kpmkOYAtEY8CJdxG2DDf2Poag=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-487-Ri7lnYWROKaQZeO09Zd1Zg-1; Mon, 17 Oct 2022 06:49:02 -0400
X-MC-Unique: Ri7lnYWROKaQZeO09Zd1Zg-1
Received: by mail-ed1-f70.google.com with SMTP id
 y14-20020a056402440e00b0044301c7ccd9so9138590eda.19
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 03:49:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=G/nMNEaPKxeRLF9iYIA/lWfiQRPiF46bzjnNuOgshhw=;
 b=xY1FQm16wIz4Xj0o/Tmwm360sfCa+xfXWW0mQK6ovhieyHV/93RUtT7AlXV7TnTuW2
 d/K2jAWUjR79H+xYPp7aeWbO2I7hoNS39l9cDz5VauhK+vpUI7owrxB9JJ6oqQbm+knV
 KO5sc45kMHLiFoNX/AZr3aXa6jarZzaTelWkDlm9Z30uJ40+4emG0zq+OP4KSpJNEGwJ
 Ars+30uWFEV2g1XEs9zAI2J54CMOZru2lLfKnIQqWYa1XeOqG0cinstEGq2fw3OItcHb
 0OXSE0ho0pZ7TrbwD/KgY70tyUxIRGqJh3obWzGQ7J+1ki9Aukus9XfqkexBVV9YYdpF
 l1HA==
X-Gm-Message-State: ACrzQf3Fh7FZsFkZdHM7PJqv0z4pSY5HlH2MLFdRdRGONb65Rht0W7Qj
 Pu4vecatGt9weXz5oYQ5lWegVbcAomZG2vLfSeLmSpk2SQOpNtg7Ro0OYM2OrSnEoHX2ciFCUeG
 8rTVq3LOMYmeMLnojG0heALyOc06O
X-Received: by 2002:a17:907:5cb:b0:791:96ec:f436 with SMTP id
 wg11-20020a17090705cb00b0079196ecf436mr1015570ejb.100.1666003741353; 
 Mon, 17 Oct 2022 03:49:01 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7c3EMA0MVgt3p82joEQtl8gApzcnvyxUU7Hnm/b0T7BgEdfbcRhkDbH1n2jx1vpWgjXJUySQ==
X-Received: by 2002:a17:907:5cb:b0:791:96ec:f436 with SMTP id
 wg11-20020a17090705cb00b0079196ecf436mr1015559ejb.100.1666003741150; 
 Mon, 17 Oct 2022 03:49:01 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 ky15-20020a170907778f00b0078bfff89de4sm5880962ejc.58.2022.10.17.03.49.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Oct 2022 03:49:00 -0700 (PDT)
Message-ID: <717fb4ab-5225-884f-37f9-2032c265824e@redhat.com>
Date: Mon, 17 Oct 2022 12:48:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Thorsten Leemhuis (regressions address)" <regressions@leemhuis.info>
References: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
 <87a65usvgq.fsf@intel.com> <877d0ysv1e.fsf@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <877d0ysv1e.fsf@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] alderlake crashes (random memory corruption?) with
 6.0 i915 / ucode related
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

Hi,

On 10/17/22 10:39, Jani Nikula wrote:
> On Mon, 17 Oct 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> On Thu, 13 Oct 2022, Hans de Goede <hdegoede@redhat.com> wrote:
>>> With 6.0 the following WARN triggers:
>>> drivers/gpu/drm/i915/display/intel_bios.c:477:
>>>
>>>         drm_WARN(&i915->drm, min_size == 0,
>>>                  "Block %d min_size is zero\n", section_id);
>>
>> What's the value of section_id that gets printed?
> 
> I'm guessing this is [1] fixed by commit d3a7051841f0 ("drm/i915/bios:
> Use hardcoded fp_timing size for generating LFP data pointers") in
> v6.1-rc1.
> 
> I don't think this is the root cause for your issues, but I wonder if
> you could try v6.1-rc1 or drm-tip and see if we've fixed the other stuff
> already too?

6.1-rc1 indeed does not trigger the drm_WARN and for now (couple of
reboots, running for 5 minutes now) it seems stable. 6.0.0 usually
crashed during boot (but not always).

Do you think it would be worthwhile to try 6.0.0 with d3a7051841f0 ?

Any other commits which I can try before I go down the bisect route ?

(I'm assuming this will also affect other users, so we really need
to fix this for 6.0.x before it starts hitting Arch + Fedora users)

Regards,

Hans



> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/6592

