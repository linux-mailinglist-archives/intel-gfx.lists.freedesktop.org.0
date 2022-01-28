Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF114A0143
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 20:58:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E1810E2BD;
	Fri, 28 Jan 2022 19:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 463 seconds by postgrey-1.36 at gabe;
 Fri, 28 Jan 2022 19:58:24 UTC
Received: from server2.walther.xyz (server2.walther.xyz [193.200.241.189])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A01C510E2BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 19:58:24 +0000 (UTC)
Message-ID: <326ea3aa-1eb9-3458-0c99-5a15d4f7a437@walther.xyz>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walther.xyz; s=2021;
 t=1643399438;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=5Jp6KwIi2Ty6Sd9O4YaJvIXgWRHYgCZdCh6cyOdcU5A=;
 b=WwMcmr6zoWVVHVtwMCqCMxDuIldb8V3Kztak5Di6byLgEhRa2IBdtxS6u94zPbn2fX8fal
 TscHorOqDarL1niYJbBhmEF91aMJza2lK0L2y9vEKV3/dppOOfvEPd0B44tXDsRB0mj6zX
 p/BLMKsFe18Y9s9UhphVKF1/6MRdfmpZUQsVsWZN1yORjaw+qUsR0jRmTvo4zw8j/mJFsE
 Q1vD9IWjEE3jGOEliaBr//XC9kJtu57pASzIuHwR66dbKF5plwUrw/GhItUbe5kCdhflZl
 iaSOLKJ3b2xXnXaLHOh9fzY5FhmhZhLoEmH+XkGavRWE/iphW6Ali+8JAqRU+A==
Date: Fri, 28 Jan 2022 20:50:38 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
Content-Language: de-AT-frami
From: Matthias Walther <matthias@walther.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=matthias@walther.xyz smtp.mailfrom=matthias@walther.xyz
Subject: [Intel-gfx] Enable DisplayPort MST on low cost USB-C docks
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

Hello,

there are a lot of quite similar, low cost USB-C docks with multiple 
display output (usually 2x HDMI + 1x VGA) available on the big online 
platforms such as Amazon, Ebay, and Aliexpress.

Internally the display outputs are connected via DisplayPort. If you 
connect a monitor to one of the ports, it's detected as display port 
connection in xrandr. Always the same dpX in xrandr, independently of 
which physical port in use. This suggests that all physical outputs are 
connected to the same DisplayPort output.

On Microsoft's Windows these docks support multi headed output, like a 
different image on all displays (called expand mode in Windows). However 
the vendor advertises, that on MacOS the adapter can only display the 
same image on all ports of the adapter. This might be a hint, that the 
adapter internally uses DisplayPort's Multi-Stream Transport (MST) 
technology for the second and third display output (2nd HDMI, VGA), as 
Apple does not support MST while Microsoft does. Linux behaves just like 
MacOS here and only mirrors the image.

Linux is supposed to support MST since like around 2014. There are 
parameters to enable it for i915, e. g. i915.enable_dp_mst={1,2}.

However unfortunately those USB-C docks do not support multi-headed 
output on Linux. The second monitor is not detected, there is just a 
mirrored image of the first monitor on monitor two and three.

Does Linux support MST over Thunderbolt 3/4? Is there maybe a hidden 
command that the Windows driver uses to switch MST on in the dock's 
chipset?

Any hints on how to debug this would be highly appreciated! Those 
adapters become more and more popular, they are affordable and it would 
be awesome to make them fully work with Linux.

Best,
Matthias

