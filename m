Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B14103E7D3B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 18:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 756F16E04E;
	Tue, 10 Aug 2021 16:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com
 [IPv6:2607:f8b0:4864:20::c2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C9B89E06
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 15:09:55 +0000 (UTC)
Received: by mail-oo1-xc2d.google.com with SMTP id
 t1-20020a4a54010000b02902638ef0f883so5411976ooa.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 08:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=g0I9IMGbZ0SJcY7Jg/RCs/PLaYfCHkgjx/KEvzXupe0=;
 b=G2FTdSoHCshVXI9EbAtPQDtCbPILnchvSE3uXzXiIg9EPCXL5goRBz518+ibZB19Mp
 K5QKWtDDuojbx2RxhQ5SHJCPqENrLJEbxkLH6l8cL/hibe3WJKo2/LRnYRmVXI8n+OiE
 pR9HI6tWKHNZb76+4hEG/G4UiP5/Hwpw8hLOqZoVIeTUOnVMo6VaKkZbI9KXyWzAWgJA
 cXb7wOhlzzIq07e2nr+mcluuz8YZqX0H5v8mjeVZU5pteziU5uMYhJpLjMHztlOqiBqy
 tv5zVqrdHvXrHWOauJKNO1HkZ9nUIsX1g6p/avF9VWcKXMyIdyxAnWwpoW4JnrDo+YHY
 ZTzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=g0I9IMGbZ0SJcY7Jg/RCs/PLaYfCHkgjx/KEvzXupe0=;
 b=MxhyuZeIIPkLdtICLEEJY8mp7I2gJFtI/0TzDDDH5GM9dB78hFfeiOqvEZCw1DTliy
 k9GkA0gjbFNLKap55Lr+KVPWWgfR+OakYDLbG8xq004P8hTCDYkP/DDc2Yo+fMgDc9Qh
 9b4a/rdYb/W7U4BMBcUtIhtFvnmZx3ZaG0N7g9sVZjpr/xHeoJ3Sv/nf608+HiHK3D6i
 IoAchwjiDGAGPNhz3b4g8IKsyxAQG7Id5CcvZVF+21Nfal2Z7KA9AziRIfL4HIXe6RtB
 CMhcBKHevZuOz5elwjfJqnCzQrOhWRfMtS1QoD126Jiie9lOAtUTRmbF5wanBDTPFCod
 0VzQ==
X-Gm-Message-State: AOAM530AH7JiMWJLCGqBJgrST/1oawX3WZgHvz6rV/YVxrTq1z/EESpJ
 e+cC9VXX7t9UTJHx1KFzqXvMH64TZN0RWNbNYtg=
X-Google-Smtp-Source: ABdhPJxP/RVz2hQQZZPWL9Z3NRvn08BFeLaliK0VVBpI0fnEkXlNivlCCCc4LQqq4DeF+45dM/IPf3R0qpuFVdoQfig=
X-Received: by 2002:a4a:41d2:: with SMTP id x201mr7281522ooa.71.1628608195140; 
 Tue, 10 Aug 2021 08:09:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7d93:0:0:0:0:0 with HTTP; Tue, 10 Aug 2021 08:09:54
 -0700 (PDT)
In-Reply-To: <20210810145018.24001-1-youling257@gmail.com>
References: <20210623134601.2128663-1-imre.deak@intel.com>
 <20210810145018.24001-1-youling257@gmail.com>
From: youling 257 <youling257@gmail.com>
Date: Tue, 10 Aug 2021 23:09:54 +0800
Message-ID: <CAOzgRdY6cYCyezHZD-GQptgN2-1CNeNm8PSGtjN7mSEb8kQ7Pg@mail.gmail.com>
To: imre.deak@intel.com
Cc: alsa-devel@alsa-project.org, intel-gfx@lists.freedesktop.org, 
 tiwai@suse.de, tv@lio96.de
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 10 Aug 2021 16:13:19 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] ALSA: hda: Release controller display
 power during shutdown/reboot
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

my 7820hk sound card is alc662

android_x86:/ # aplay -l
**** List of PLAYBACK Hardware Devices ****
card 0: PCH [HDA Intel PCH], device 0: ALC662 rev3 Analog [ALC662 rev3 Analog]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 3: HDMI 0 [HDMI 0]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 7: HDMI 1 [HDMI 1]
  Subdevices: 0/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 8: HDMI 2 [HDMI 2]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 9: HDMI 3 [HDMI 3]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 10: HDMI 4 [HDMI 4]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
android_x86:/ #

2021-08-10 22:50 GMT+08:00, youling257 <youling257@gmail.com>:
> it cause my intel 7820hk cpu failed shutdown.
>
