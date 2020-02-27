Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E80BB1727DC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA61E6ECE9;
	Thu, 27 Feb 2020 18:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B397E6ECCE
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:45:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582829143;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iVuKwPMK/eXRF4YBEvxtVfssRdB3IYBa8t0n9NIPWaY=;
 b=MDaBGn7vsAc2MIrnUEE1llsZ76vTN+2LM/zgdPLDI5fVzd2js+xFt6cazaBET4FO/uqcBy
 4nTfxtQ5NPlTzu7/mPho1Vb7XL5efFwmC+Z7w4Fg8iMDgA9EjcHg2gV+Du1UJZ0/c6iJsa
 nSpOPhouMX+hgV6BhfoaxuZJ/idDBwU=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-84-sImnswlLM9CQNfIoyadnXA-1; Thu, 27 Feb 2020 13:45:41 -0500
X-MC-Unique: sImnswlLM9CQNfIoyadnXA-1
Received: by mail-wr1-f71.google.com with SMTP id z1so208197wrs.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:45:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iVuKwPMK/eXRF4YBEvxtVfssRdB3IYBa8t0n9NIPWaY=;
 b=pYTAF1f9nmffo9KkIF4283oM6/NHmZWeNQpwsJanjA0QBcdAklLG613J0jW1pz2Jlt
 viZW52zcX/B4oYL0aJSvGv+In81j7Wr2lAae1glvmAQr71+0W/GDjF6zv9g+C4ewC/lP
 YexV77lZFYuq+NjGiOAzT/rrVuzWLCjrQDU0abe8bysw6pZ++C2R/EwbYm+BUNiluG6W
 YvOQ+zxHhDD/R9mxdmA3s+jJORDUEQdAslUuCW4ZsVe7q9KeSZQIBr9Pvb9lXc/W/gCb
 wtznG/vGgpd3NrR7umh9v7bUDfdQE/li/F+k+EPfBzuIBaEIVFPs9KTIl1bfNe3mrOGo
 TI5A==
X-Gm-Message-State: APjAAAWhlCoACXF6EM2p6r15RgUVmVt4L2/A4XN7bYlq6i0FDPeQOCG4
 6eHOGGHiYA6TBrLAIrSkKX75T00TbKl/z1HuuozTx+XBe9Q+zHZi1CrfQEq5AHY60ns2e+A5lWj
 SsvrVQpjPF93wBjnAecK5vMzNafib
X-Received: by 2002:adf:facc:: with SMTP id a12mr255978wrs.100.1582829139827; 
 Thu, 27 Feb 2020 10:45:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqzS7iwolLIglWsHkFQf0lunQH/92lmCChlV7hbhGP0V+6bufdLAND2rjW3JWdum8vxXoHyNTg==
X-Received: by 2002:adf:facc:: with SMTP id a12mr255959wrs.100.1582829139570; 
 Thu, 27 Feb 2020 10:45:39 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-fc7e-fd47-85c1-1ab3.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:fc7e:fd47:85c1:1ab3])
 by smtp.gmail.com with ESMTPSA id v16sm8831596wml.11.2020.02.27.10.45.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Feb 2020 10:45:38 -0800 (PST)
To: Lyude Paul <lyude@redhat.com>
References: <99213368-5025-8435-502b-3d23b875ca60@redhat.com>
 <cd775055fc4450bba045cfbde66d45502e16162c.camel@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <3bcd1280-0690-0193-31ef-36a937290cfb@redhat.com>
Date: Thu, 27 Feb 2020 19:45:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <cd775055fc4450bba045cfbde66d45502e16162c.camel@redhat.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] 5.6 DP-MST regression: 1 of 2 monitors on TB3
 (DP-MST) dock no longer light up
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
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2/27/20 7:41 PM, Lyude Paul wrote:
> hi - I almost certainly know the solution to this, the patches that we got
> from amd to do bandwidth checking in the DP MST helpers don't actually work
> correctly in a lot of cases and I need to fix them. I've just been busy on PTO
> and only just got back today, and have been busy with fixing a lot of RHEL
> stuff at the same time. I'll take a closer look at this soonb

Great, I'm a bit worried about the timing for getting this fixed though. We are
not that far into the cycle yet, but still I have the feeling it might be better
to just revert the commit triggering the probably pre-existing problems here
and then queue up the necessary fixes + a new version of that commit when
we have everything in place ?

This way you can take your time to fix this properly instead of having to
do a rush job to fix the regression before 5.6 ships. I think rushing things
never is a good idea. So my vote on this goes to just reverting the commit
triggering this for now and taking our time to get this right.

Regards,

Hans





> 
> On Wed, 2020-02-26 at 16:15 +0100, Hans de Goede wrote:
>> Hi Lyude and everyone else,
>>
>> Lyude I'm mailing you about this because you have done a lot of
>> work on DP MST, but if this rings a bell to anyone else feel
>> free to weigh in on this.
>>
>> I'm currently using a Lenovo X1 7th gen + a Lenovo TB3 gen 2 dock
>> as my daily rider for testing purposes. When 5.6-rc1 came out I
>> noticed that only 1 of the 2 1920x1080@60 monitors on the dock
>> lights up.
>>
>> There are no kernel errors in the logs, but mutter/gnome-shell says:
>>
>> gnome-shell[1316]: Failed to post KMS update: Page flip of 93 failed
>>
>> With 93 being the crtc-id of the crtc used for the monitor which is
>> displaying black. Since then I've waited for 5.6-rc3 hoping that a
>> fix was already queued up, but 5.6-rc3 still has this problem.
>>
>> gnome-shell does behave as if all monitors are connected, so the
>> monitor is seen, but we are failing to actually send any frames
>> to it.
>>
>> I've put a log collected with drm.debug=0x104 here:
>> https://fedorapeople.org/~jwrdegoede/drm-debug.log
>>
>> This message stands out as pointing to the likely cause of this problem:
>>
>> [    3.309061] [drm:intel_dump_pipe_config [i915]] MST master transcoder:
>> <invalid>
>>
>> Regards,
>>
>> Hans
>>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
