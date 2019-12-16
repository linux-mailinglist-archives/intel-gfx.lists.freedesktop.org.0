Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 207C5120312
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 11:59:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7402A89F3C;
	Mon, 16 Dec 2019 10:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F2A489F3C
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 10:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576493954;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hQ6sYFdb7LHBsbEybHzcurKWWaevQ2cyS6out70xyhQ=;
 b=PESjV6CQ1Z7uwMmzu2UFN8KuRFIFkz5XABH3jxoQW8kwsFDiuMkNiLsAUptBWZ7ODIZ6Tx
 VeTrtnCxgqVTtP/xbAXqV7FDPEcLSK008gOr0G+M+cUi3sFZ3tIMP0usEmGZMfZ42f90IF
 HBZM/J23SM/s2cn8gAcoTYTcrSyUKv4=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-144-z3nwsYXiPoOElkfC6X3RXg-1; Mon, 16 Dec 2019 05:59:12 -0500
Received: by mail-wr1-f70.google.com with SMTP id r2so3544682wrp.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 02:59:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hQ6sYFdb7LHBsbEybHzcurKWWaevQ2cyS6out70xyhQ=;
 b=jWxNXd8cxYWdkg7iQVZk1S5LDrsqFKb5mOcT9OEtqJEgrgiUphoJvBGqkKjxEMtNPQ
 gZF5isBzyNma4A4zlK+nddy9CiL6pQb0DxjQi+/Zxh6nv6Nezv7mudfQvsbQOS9ppbo1
 8eYTl2SCpneAxQZJiiDUJl3JM3MBzP0DwbGuKGiXeDDMl4S4KYLgWMIr1ptyefwOoBZD
 3oVKGIi2TEhhQTQKZjtLpbX2Yod0i4vRgeqhUClvtkzGx0qg4lBzZDk8g5gmLOF2P5Gp
 7ucqL2Dzv4AqHXYNr2SjouYB63siIZ+sIIbhAZq0CtU5KxnkO+LboA8He5JaVgF8S9fp
 prng==
X-Gm-Message-State: APjAAAVKyakAl69ZVmf1Ui847c1iG+tSM0JgXNFpTVHD5VlNEQqz3vEZ
 Ug8JbH86aXTXVuQB/4kcVvP8ihCwjci1aTnoob0JdVSXtKSn30/pfRHGkogH7BItcy8Wo4m/IC2
 rCehVQRVNKm8zfXaU8hsBjW/1sQU9
X-Received: by 2002:adf:d848:: with SMTP id k8mr28536778wrl.328.1576493951580; 
 Mon, 16 Dec 2019 02:59:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqwuvaGOybV0XNDKQ0IqtqC93KS7+4qbR1CruhBbHrdFS8xkO4lkM5kRrehoFB3fnxoPD5bNoQ==
X-Received: by 2002:adf:d848:: with SMTP id k8mr28536750wrl.328.1576493951322; 
 Mon, 16 Dec 2019 02:59:11 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id s19sm19808552wmj.33.2019.12.16.02.59.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 02:59:10 -0800 (PST)
To: Linus Walleij <linus.walleij@linaro.org>
References: <20191215163810.52356-1-hdegoede@redhat.com>
 <CACRpkdarJ5chDfgc5F=ntzG1pw7kchtzp0Upp+OH9CH6WLnvXw@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <2a356fad-a473-3e37-4a7b-731594524862@redhat.com>
Date: Mon, 16 Dec 2019 11:59:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CACRpkdarJ5chDfgc5F=ntzG1pw7kchtzp0Upp+OH9CH6WLnvXw@mail.gmail.com>
Content-Language: en-US
X-MC-Unique: z3nwsYXiPoOElkfC6X3RXg-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] [PATCH 0/5] drm/i915/dsi: Control panel and
 backlight enable GPIOs from VBT
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Lee Jones <lee.jones@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 16-12-2019 11:26, Linus Walleij wrote:
> On Sun, Dec 15, 2019 at 5:38 PM Hans de Goede <hdegoede@redhat.com> wrote:
> 
>> Linus, this series starts with the already discussed pinctrl change to
>> export the function to unregister a pinctrl-map. We can either merge this
>> through drm-intel, or you could pick it up and then provide an immutable
>> branch with it for merging into drm-intel-next. Which option do you prefer?
> 
> I have created an immutable branch with these changes and pulled it
> to my "devel" branch for v5.6:
> https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=ib-pinctrl-unreg-mappings
> 
> Please pull this in and put the other patches on top of that.

Great, thank you.

Jani, a question about how I am supposed to push this (when this has been
also reviewed by some i915 devs and passes CI), can I just do:

dim backmerge drm-intel-next-queued linux-pinctrl/ib-pinctrl-unreg-mappings
cat other-patches | dim apply-branch drm-intel-next-queued
dim push-branch drm-intel-next-queued

Or I guess that dim backmerge is reserved for other drm branches only and I
should do:

dim checkout drm-intel-next-queued
git merge linux-pinctrl/ib-pinctrl-unreg-mappings
cat other-patches | dim apply-branch drm-intel-next-queued
dim push-branch drm-intel-next-queued

Or should I leave merging linux-pinctrl/ib-pinctrl-unreg-mappings into
drm-intel-next-queued up to you?

> I had a bit of mess in my subsystems last kernel cycle so I
> want to avoid that by strictly including all larger commits
> in my trees.

I understand.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
