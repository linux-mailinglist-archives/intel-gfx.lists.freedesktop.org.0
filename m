Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 463201A15FF
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 21:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B8C89F6E;
	Tue,  7 Apr 2020 19:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90C5F89F6E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 19:31:59 +0000 (UTC)
Received: by mail-ot1-x336.google.com with SMTP id a49so4348976otc.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 12:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FNU4BwFdgYckpnjFZwSO5QYp+41n2w2U0stKwMZ4fK0=;
 b=kKCKuaCm6DAbYuZCxc1W+zEABhyJXfI9CSGYzC2Ol8+OPmyLF+lJFEDxhrdbkEGJq/
 l5zHp7CzUpj6f2HQjaqACuRwU0Qwa3yKpR3UtuQZ+vFZ7mNRRCQlHIv2rO0bj0iJ95jz
 uWdwUKwVlXH+yKtBn/aaLZ9AkDaOamvgff1043SoFQozxrejwDmHAPZ4USlv36iwBABU
 bd7U9PodBqgM7rg++Ub8haxdIf6KMaI1H62nsUDJEj6eKwaQU+UEleU9xyAojvyFSPHB
 D0UJFRT77ieUvS+gV43d24103IviE+IPQrRCJ+5DpRF8jRp9wz901n+5RuWl+CMOrIhZ
 7nEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FNU4BwFdgYckpnjFZwSO5QYp+41n2w2U0stKwMZ4fK0=;
 b=Wx1SXvJMXonwhHHDDPPIGWMK149mBi4IGooRyTSj9oi+uQy+fiqM9fViMe5eS+BIgd
 V1T0rErhaRrLXaoM+lZ0pmoE+XxHDFRvsZUZOdjMW2LA4XUPaFsmU0HuCojdDXIS2OUs
 34p/BaoZwCLlIzKerjv4OUtEova7qQRTc+hTMSfA3BgUmXDm87sYR7N6RBQpeUzStiS+
 c5OOmaodjgbNzX/oPpIvzWeMQ3TVBflQP88XffKuapHTgLOri7Fu4IoVrFJfj4aAlL+D
 CN41FFGborkZPyxDgbS8zWHJfPiQpm3xkqIc3mLZkoNzPYwAnZN6HFGxBM3Q8rqtKEJR
 iDPg==
X-Gm-Message-State: AGi0Puaf8lQFW4VUDpN73aqHQc0nXLSqd0IeIlRMsvRHapWe7Pu5ypY/
 nVvipSGncWhZI0u7wDGGe7BXup6I
X-Google-Smtp-Source: APiQypL8Z6LzH652MKcbhcJAOGsCCMaJdJ5LBVbkfetrE/04gFzZ6h3bZqyyOKZd20ejICC0DiyEhQ==
X-Received: by 2002:a9d:4914:: with SMTP id e20mr3111926otf.100.1586287918690; 
 Tue, 07 Apr 2020 12:31:58 -0700 (PDT)
Received: from [192.168.1.120] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id q15sm5560733otk.78.2020.04.07.12.31.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 12:31:58 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
References: <34c9768d-bb55-7834-c232-37b1751f4e84@lwfinger.net>
 <158628090169.8918.6452907123323208335@build.alporthouse.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <73ca084a-6445-bfe0-ffee-afe82ff3b60a@lwfinger.net>
Date: Tue, 7 Apr 2020 14:31:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158628090169.8918.6452907123323208335@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] Regression in i915
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 4/7/20 12:35 PM, Chris Wilson wrote:
> 
> 2 possible causes for 2 very different symptoms are in flight.
> But neither would strictly be a hang; the most blatant one would be the
> display server triggering an EFAULT. The patches are currently sitting
> in the drm-intel-next-fixes queue; a quick test of drm-tip would confirm
> how worried one needs to be.

The machine was still running, but I could not get access to any terminal to 
check the problem. When I booted to single-useer mode and then tried to start X, 
it failed but logged no useful errors.

I do not know which patch fixed the problem, but a pull of drm-intel-next-queued
handled the problem. My system is now booting fine. I think we only need to 
worry about the coronavirus,

I did have one trivial merge conflict to fix.

Thanks for your help.

Larry

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
