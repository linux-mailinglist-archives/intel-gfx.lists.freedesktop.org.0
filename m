Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F52203CBA
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 18:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202CF6E12E;
	Mon, 22 Jun 2020 16:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDF2E6E12E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 16:38:34 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id g75so199191wme.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 09:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nnmeefPbsUxtL+4v4Lt7Rew7eNul0I6QCzDl0gu3TMw=;
 b=j83Alm+C9nafhTAOzy5CRD0TbFAidnEJ7S06csejkdYonNk5dzJ5JAMQwPCBI2QUSJ
 ij2BmHmqBsKjqtZReo8Qgf5+Jl9BpaQZFa/56D3kPiyrSDvKOxeA5R29u91I0F4vFd53
 t70dUP+JRdcP3XBX9vFvhnhw6x8ojpPAfGCfkavp2z5JUEr9/UVzx/fTEHFGFkV5Ge+w
 ycxWVoVBwV6vYqrLSywuuCn9CGYyDm+MH45BZtVT1gRakYJ3xc9R/iDDWrDZsxLisM2V
 pqIGwzSUql0b9ahbFGPoYom+wz0lkBq1T0j2xPV5lPX0FR8361ai8VhrvTEYFv/fFiij
 qNVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nnmeefPbsUxtL+4v4Lt7Rew7eNul0I6QCzDl0gu3TMw=;
 b=bprro8n/ou0Hy3qtSmq1qq910ZVdkrw3afllAKbhm32oEXGVGIZxa9fnN6u2uu/Rc+
 1NqMphC0DN3WpFvgtRVtqTHRbp5+p8xKKC7g4gk6puo1gAFE6RN9IJhsIZDfwcI1UA6d
 VTvPs933BRKOS/B1kNAHcC4jp8QLMdvhs2sUhb/CXkuICd7zB2SHQ306HrULFwXOYyOj
 6fqhpYJsfJTfT6XRvX0UEcQUbXE+nFtLkcSdjZ0IY/UbPqmkN9U3VYSBrRQ5eTJFcT+A
 8y6LTT6ZOIucsL0RuCN4yXdeqPsvemJgDPu5EvmRVkrSPI/2NaAiFehALEe+nJSa3nj8
 O1xw==
X-Gm-Message-State: AOAM5300CJfqcqMUEMTr2xlUnXnARkiySgzMzPw/gmy/VK0+wKzdgWrj
 b9wJF+JoO+gvxXM5jhYlMU6XL1Gn
X-Google-Smtp-Source: ABdhPJytE14ugOk0jmHgkm3cWI6Dp+c6HzUWElyN3qiiZTVFrI94EUOnz+eppzNiONVbtWT+nGaNVA==
X-Received: by 2002:a1c:dd86:: with SMTP id
 u128mr16991967wmg.123.1592843913390; 
 Mon, 22 Jun 2020 09:38:33 -0700 (PDT)
Received: from smtp.gmail.com ([2001:818:e238:a000:a4ba:2182:c4c1:3b20])
 by smtp.gmail.com with ESMTPSA id t5sm90280wmj.37.2020.06.22.09.38.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 09:38:32 -0700 (PDT)
Date: Mon, 22 Jun 2020 13:38:26 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <a1dabf70afc82f5069871489b409200e41e6ac0c.1592840756.git.melissa.srw@gmail.com>
References: <cover.1592840756.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1592840756.git.melissa.srw@gmail.com>
Subject: [Intel-gfx] [PATCH i-g-t 2/2] test/kms_cursor_crc: align the start
 of the CRC capture to a vblank
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
Cc: kernel-usp@googlegroups.com, Rodrigo.Siqueira@amd.com,
 rodrigosiqueiramelo@gmail.com, twoerner@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When running subtests in sequence using vkms, the beginning of CRC capture
process does not match the simulated vblank timing. This mismatch leads to
an endless busy wait and, consequently, timeout failures for the remaining
subtests in the test sequence. This patch sets the pace by waiting for
vblank before starting the CRC capture.

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 tests/kms_cursor_crc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/tests/kms_cursor_crc.c b/tests/kms_cursor_crc.c
index 5976df5f..755c34ed 100644
--- a/tests/kms_cursor_crc.c
+++ b/tests/kms_cursor_crc.c
@@ -474,6 +474,7 @@ static void prepare_crtc(data_t *data, igt_output_t *output,
 		igt_assert(data->batch);
 	}
 
+	igt_wait_for_vblank(data->drm_fd, data->pipe);
 	igt_pipe_crc_start(data->pipe_crc);
 }
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
