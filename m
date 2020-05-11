Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7C21CD490
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 368126E3FC;
	Mon, 11 May 2020 09:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D530F6E3F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 09:11:56 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id x17so9951790wrt.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 02:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0CinOkbYS8oPgPVLI49BKt2JzQLqGPZqhctItxxwelA=;
 b=h4rIFRGn0yKy4FgF2CPDHTuSqgim5fjp6Ly9Ueas+XY00rIljDAeF2fRgJ3GyRmMva
 juSun8H2JFb0tKhLNykj5s7WbdhQtMrb6yKjQ3/EG1CrxrYWGuMXykVRWcToDMvHyZWd
 kwRsJAkax1d6Xmna3tnM/71z6J0ExhjpOI7pA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0CinOkbYS8oPgPVLI49BKt2JzQLqGPZqhctItxxwelA=;
 b=Kkywp+Epfq4pP/2Cfrs5sYwSA4m/bZb4DMR5GdqsCzlP10vDs4YQkOIAeWxsg/B2Xl
 rVDZ1OqbAIRhkjDh9aJmIh5us2Eu28vDr9Ji1cB2fpPMPZkpCI6+X3A2AjEkKP8yM6s5
 /g4AgY++zWkz336A/YDLKWrClT87LgIVRikSg5EZmHgAtpLhrZ9AFgZJKiwbBWEdtGDU
 0nOSREeVGFN44s390NwimSJ7CQtKEIaluruG2ChJo5OmsyLBBdi1MfZJY+d5FK48aTtQ
 BRKTsYmyZ6Y+btNBtAhVDOLr3GoZv+vWPZ97FPCJ8P5d85MgyzvOqAiU3+eU9KEqxL8l
 kRWg==
X-Gm-Message-State: AGi0PuYEbL71Ncq3Obo5k6+Nq1y3GnpURdBOYEIpYbQ3qPSM3foq84b4
 PoaF9vude28tQMHAOHPesFLkzg==
X-Google-Smtp-Source: APiQypIe/NcTRB7OjwoRrwiqdLysAONSgQ8XmUpqQiiFNg4nNfp3xqmACL1LU9lULCHwhJ4moMYGIg==
X-Received: by 2002:adf:e582:: with SMTP id l2mr18950634wrm.392.1589188315492; 
 Mon, 11 May 2020 02:11:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t4sm17506299wri.54.2020.05.11.02.11.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 02:11:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Mon, 11 May 2020 11:11:42 +0200
Message-Id: <20200511091142.208787-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] misc/habalabs: don't set default
 fence_ops->wait
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
Cc: Oded Gabbay <oded.gabbay@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Olof Johansson <olof@lixom.net>, Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's the default.

Also so much for "we're not going to tell the graphics people how to
review their code", dma_fence is a pretty core piece of gpu driver
infrastructure. And it's very much uapi relevant, including piles of
corresponding userspace protocols and libraries for how to pass these
around.

Would be great if habanalabs would not use this (from a quick look
it's not needed at all), since open source the userspace and playing
by the usual rules isn't on the table. If that's not possible (because
it's actually using the uapi part of dma_fence to interact with gpu
drivers) then we have exactly what everyone promised we'd want to
avoid.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: 	Olof Johansson <olof@lixom.net>
Cc: Oded Gabbay <oded.gabbay@gmail.com>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: linux-media@vger.kernel.org
Cc: linaro-mm-sig@lists.linaro.org
---
 drivers/misc/habanalabs/command_submission.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/misc/habanalabs/command_submission.c b/drivers/misc/habanalabs/command_submission.c
index 409276b6374d..cc3ce759b6c3 100644
--- a/drivers/misc/habanalabs/command_submission.c
+++ b/drivers/misc/habanalabs/command_submission.c
@@ -46,7 +46,6 @@ static const struct dma_fence_ops hl_fence_ops = {
 	.get_driver_name = hl_fence_get_driver_name,
 	.get_timeline_name = hl_fence_get_timeline_name,
 	.enable_signaling = hl_fence_enable_signaling,
-	.wait = dma_fence_default_wait,
 	.release = hl_fence_release
 };
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
