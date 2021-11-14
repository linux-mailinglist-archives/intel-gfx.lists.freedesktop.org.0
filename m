Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5AB44FBC0
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Nov 2021 22:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C7089F77;
	Sun, 14 Nov 2021 21:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 615 seconds by postgrey-1.36 at gabe;
 Sun, 14 Nov 2021 21:18:57 UTC
Received: from srs-1.relay.sys.kth.se (srs-1.sys.kth.se [130.237.48.92])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 278CE89F77
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Nov 2021 21:18:57 +0000 (UTC)
Received: from mx7.kth.se (mx7.kth.se [130.237.48.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by srs-1.relay.sys.kth.se (Postfix) with ESMTPS id 4HslL016Bgz1DY2Y
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Nov 2021 22:08:40 +0100 (CET)
Received: from mx7.kth.se (localhost [127.0.0.1])
 by mx7.kth.se (Postfix) with ESMTP id 1CD2D140134
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Nov 2021 22:08:40 +0100 (CET)
X-Virus-Scanned: by amavisd-new at kth.se
Received: from mx7.kth.se ([127.0.0.1])
 by mx7.kth.se (mx7.kth.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iN8kLxLV2uzk for <intel-gfx@lists.freedesktop.org>;
 Sun, 14 Nov 2021 22:08:38 +0100 (CET)
Received: from mail-2.stacken.kth.se (mail-2.stacken.kth.se [130.237.234.107])
 by mx7.kth.se (Postfix) with ESMTP
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Nov 2021 22:08:38 +0100 (CET)
Received: from betty.fdsoft.se (d83-183-14-20.cust.tele2.se [83.183.14.20])
 by mail-2.stacken.kth.se (Postfix) with ESMTPSA id 8557880130
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Nov 2021 22:08:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=stacken.kth.se;
 s=mail; t=1636924118;
 bh=eGkrd57FEkoZmmVRDeooqAg+wCri55+qWObzQ4mLL8I=;
 h=From:To:Subject:Date:From;
 b=z6yg06Kx2cUMDCyJCoOqKSfRfGP08bLIrllmhfx2100l/a3PQJUrqnAAtHOP0pVQC
 Lzq6lHX+8VK2ZJ8/0HPnoA4mJgwUHlsjOjIWaDv9NynzSaQF5k3IqBuo1aR4cYMoUy
 nd1mQEQouzyuYxMSr/2nYB79y39799DU6vMr7iJM7evRAqz97M5CjlDfbE8QD6Edwo
 z9fgOjoFl3CZM6WEm7Qm81lWZpCtpxmB3teSGtqcRAFMXyRPHmSvNKIOYocpyXfmLJ
 GN5+cKzkXOhuSHHGQ9eRNnSc7NY+iBgOT4kEG2IilTWnJyYv54LypR8jNnRJWlIHld
 AlRThZkE56XaQ==
Received: from ester.fdsoft.se ([192.168.1.2] helo=ester)
 by betty.fdsoft.se with esmtp (Exim 4.94.2)
 (envelope-from <frej@stacken.kth.se>) id 1mmMjt-0004ob-BD
 for intel-gfx@lists.freedesktop.org; Sun, 14 Nov 2021 22:08:37 +0100
From: Frej Drejhammar <frej@stacken.kth.se>
To: intel-gfx@lists.freedesktop.org
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
Date: Sun, 14 Nov 2021 22:08:37 +0100
Message-ID: <kee7iwilm.fsf@stacken.kth.se>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [Intel-gfx] Commit a22c074fd1dd52a8b41dd6789220409b64093e9c broke
 Intel Corporation HD Graphics (rev 08)
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

[Now sent from a subscribed address]

Hi,

Upgrading an Acer Chromebook C740 from a stable 5.14.18 to a 5.15.2
kernel leads to a hang/crash very early during startup. With 5.15.2, the
kernel fails before any video output and bootup continues to the
recovery kernel. Bisecting points to commit
a22c074fd1dd52a8b41dd6789220409b64093e9c "Merge tag
'drm-intel-next-2021-08-10-1' of
git://anongit.freedesktop.org/drm/drm-intel into drm-next" as the
culprit, but here the symptoms are slightly different, as bootup just
hangs and no fallback to the recovery kernel happens.

Lspci says that the graphics chipset is a:

00:02.0 VGA compatible controller: Intel Corporation HD Graphics (rev 08)

# dmesg  | grep -e "\(drm\)\|\(i915\)"
[    0.335241] [drm] Initialized i915 1.6.0 20201103 for 0000:00:02.0 on minor 0
[    0.335604] [drm] Initialized vgem 1.0.0 20120112 for vgem on minor 1
[    0.341795] fbcon: i915 (fb0) is primary device
[    1.650456] i915 0000:00:02.0: [drm] fb0: i915 frame buffer device

Both parents of a22c074fd1dd52a8b41dd6789220409b64093e9c:
cb22f12f302584a974a68034350bd48798843ffc and
3bfa7d40ce736ffbbfe07127061f54b359ee2b12 boots and provides video output
without any problems.

I would be grateful for suggestions on how to debug this further.

Regards,

--Frej Drejhammar
