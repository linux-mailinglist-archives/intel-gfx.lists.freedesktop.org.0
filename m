Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B435D12087F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 15:23:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDBD6E5AB;
	Mon, 16 Dec 2019 14:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 491A589E41
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Dec 2019 11:12:34 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id b72so1467960wme.4
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Dec 2019 03:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=qkkNFqeyAIwklJYbtYabco2RToGyJ5DO1xbuBCGm8P0=;
 b=pwrEyNbmBoAyCnUr6HBeuHHhK3DeLWI8Af6jaZA4NT4MAw5L+Jd4xw8oUJ7qBVbPuM
 Q05+yh3Gn/vPWYtdjsv7xciAiG5O27Aq+CUEWcDi+2yl6TQslX9idQZIvQnmHNN3VjtQ
 lAqClDMxYU35gv4PMtiya/1pfZDrSBho2+tbJfia++QUOOAPVVG6GXdVhhtDlMTph2OA
 olu2uTJRx/S9gY/gHqRSj2Njcsy4dq9NrmwZYlRgvQ0eKuz5RmbydHznkJaCzDVl6HjV
 Amr7dV63XiLTnkOEBVFM4IgOgzjvRGEmAtDjId2TvqI/69S5j9ueVU2JGpOSSpJVuoYP
 bv6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=qkkNFqeyAIwklJYbtYabco2RToGyJ5DO1xbuBCGm8P0=;
 b=kPSIhhsHmYoFvReaqPrM9hkqAR7zMk8PBaagz98swrNlyGVTVR2k0SD6qj6Im3FI1H
 +QOkXRq+B14+7ebbmBI3wDJVn7vQTxDC8wqZPjBsN5CCfIjNyXrjeXqaT1medXgOzF7V
 arwGiHaqsMzzYroK7f+tPMVvqwG9V31EUrAd54taEnSP+hE6Ii1klhQZhc93+ryYm/IG
 02KhS95SZDM4VG4RCiVNM1mqC7DEUmZuuYqk8lXHA64AIhB842DaqiCAJQ+1K0aKf+jR
 Daz3UkylW10B0To3zEAkK4QhWrhonGUQ8giTrXSevK1l05JWyjLWccx6jXcVn+XdSxPu
 SFMw==
X-Gm-Message-State: APjAAAUftu4H1JzwIexacaRqeLkyC3E2LnZ83RnKk+Gs5Z5j3UBF/oCI
 MT3BCmYtcyuWUeqMM95H9Y/DMujV
X-Google-Smtp-Source: APXvYqxpjLp74ozRL+ZtccyfrwuJtcB9wEaN06tBtVxvu8mF0nlUBcDDXsLuN03kaBNmjymDa5VlZA==
X-Received: by 2002:a1c:9acf:: with SMTP id
 c198mr11772111wme.175.1576408352272; 
 Sun, 15 Dec 2019 03:12:32 -0800 (PST)
Received: from [192.168.2.202] (pD9EA3D69.dip0.t-ipconnect.de.
 [217.234.61.105])
 by smtp.gmail.com with ESMTPSA id i11sm17479832wrs.10.2019.12.15.03.12.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 15 Dec 2019 03:12:31 -0800 (PST)
From: Maximilian Luz <luzmaximilian@gmail.com>
Message-ID: <3d1744d1-5161-d377-7c3b-2e907060e3f8@gmail.com>
Date: Sun, 15 Dec 2019 12:12:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
Content-Language: en-US
X-Mailman-Approved-At: Mon, 16 Dec 2019 14:23:12 +0000
Subject: [Intel-gfx] Plans for i915 GuC Submission with regards to IPTS/ME
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
Cc: Dorian Stoll <dorian.stoll@tmsp.io>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

I am working together with a small team of volunteers on a project that
aims to make Linux usable on Microsoft Surface devices (linux-surface).
The touchscreens of these devices use Intel Precise Touch & Stylus
(IPTS) technology, which makes use of the GPU (through GuC submission)
to process touch input events. Since IPTS is not supported by upstream
Linux, the linux-surface project relies on kernel patches and
out-of-tree drivers to make it work properly under Linux.

The driver we are currently using was written by an Intel employee back
in 2016, and has since been somewhat updated and maintained by
linux-surface.  However, due to how the IPTS hardware works, the driver
has to use GuC submission to setup the connections between the GPU and
the Intel ME / touch controller. This is made possible by patching an
IPTS-specific API into the i915 driver that allows the IPTS driver to
issue commands to the GuC.

Now, starting with Linux 5.3, a bunch of changes were done to the i915
driver that made it impossible for us to use the IPTS driver like we did
before.  First, GuC submission got disabled, and recently there was a
list of patches sent to this mailing list that removes the GuC APIs that
we have been using entirely. We have a rough understanding about how the
hardware works, but for the most part, the connection between the
various parts of IPTS (ME, GuC) is a giant black-box for us.

Currently the way that IPTS and the driver work is like this:

- the IPTS driver allocates a GuC client a doorbell, and a bunch of
   touch input / output buffers, and passes the addresses to the ME

- the driver loads a vendor specific firmware file and uploads it to the
   GPU

- the ME fills up the touch input buffer, and rings the GuC doorbell

- the firmware that was uploaded to the GPU processes the data from the
   input buffer into HID events, and saves them into the output buffers

- the IPTS driver polls for changes in those buffers and relays the
   contents into the kernels HID subsystem

Is there any chance that you have an idea about if it will be possible
to update the IPTS driver that is out there to work with the new GuC API
that is coming into i915, and how we might have to go about that?

As you see, the most part of this happens in the firmware, and the
driver just sets up the messaging framework around it. This makes it
hard for us to think of a possible solution without having a deep
understanding and insight into the hardware.

Another problem is that, except for the very latest generation of
Surface devices that was released some weeks ago, all devices that use
IPTS are either Skylake or Kabylake. While researching about this, we
found some comments, stating that any form of GuC submission might only
be supported on Icelake in the future. A patch
(https://patchwork.freedesktop.org/patch/335793/) on the other hand
reads like it would be re-enabled on all devices. Can you clarify if GuC
is intended to be re-enabled on all (Gen9+) devices?

We hope you can provide us with any help in getting this updated to
support future Linux releases. The Surface devices are pretty good
hardware-wise, and it would be great to continue to use them under Linux
with a working touchscreen.

Regards,
Maximilian Luz

---

Various links that might provide more insight into the IPTS side:

- Original IPTS implementation:
     https://github.com/ipts-linux-org/ipts-linux-new

- Updated version of IPTS, with support* for linux 5.3:
     https://github.com/qzed/linux-surface-kernel/tree/v5.3-surface-devel/drivers/misc/ipts

   * Support for 5.3 is currently done by porting the i915 driver from 5.2 to
     the newer kernel, since it still supports GuC submission. It is an _awful_
     hack but none of us had time to really dive into this issue back then, and
     this seemed like the easiest solution.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
