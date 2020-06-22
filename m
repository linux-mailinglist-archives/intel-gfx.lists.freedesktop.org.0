Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BAC203CB7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 18:38:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 168416E101;
	Mon, 22 Jun 2020 16:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 093206E101
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 16:38:04 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id g21so226416wmg.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 09:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yYl1S09BhYzy1kDg413mkO4eI8VVrmvMrHgWcI9as4U=;
 b=ElAxY3v+hzdwfzrF5SlMjgxlkYDJ/5+OqEZP66S1hnYktOJe/nGRaV55/2WzSt4r5t
 C4Gs0e/NoL9Y5GFjdh1DiJSkhXbTJckKartM3EPVukhl56Euwg/J7xvRcQpc4WvYHkoH
 T+i/dUoftgEQUCbVz+Mtj0ndnQFaXSNlBV4nCXCMg4l5v895K10d58nFv1b3dv++/EoZ
 +gtI2Wm8KiwMYt0tVNF/lxdxoWGdcAN6O0Yx1Zauxn74ULGlA/mdqMIL7Y0O9axHQTFD
 co40iJMWmMxljNpRmrlnT5vcsoK9oIESsiNq5rwHdCOY492PKv+UG9rg7yD+FMXTes69
 pGXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yYl1S09BhYzy1kDg413mkO4eI8VVrmvMrHgWcI9as4U=;
 b=OUmeviWnWhUsOMwoF+550xwHCOALbrGw80Vtk9bxrFfqXilGWo4/KkqqYXOtD4Ii6L
 Nh2mMFMhy3OG1H+EyR6zlbiwHA60rrUU1v13F+mIw6Yvj422JEG7XNqgmLGkeC/1C1Sp
 gsA1v1ATb6S20zlkmYj1ViGy5DqVw0lMFSWiHN6oqvkARAnSXgi5jucVkkZxOD6to+Sb
 uUKq9vfySEOliwg3I6QdDVHNm5Y6uDaNvyp8p0/QWLe6OAh25nSX/pS4bRGfkp2iq25z
 rmJ91zsWhR2tO5GZrHm+3Iu8pVXEyMDFZ3m3rEHSsYyzMUiCS8IgI0j/rY1WlfU3baQH
 dXzw==
X-Gm-Message-State: AOAM533UFCo2JthhNhRea4gRt7yMNvmrtZ6SWmFh5L2VnCbawbUTyAPo
 D5U3N2bDCRxb2dmL76tgrSkjUVfl
X-Google-Smtp-Source: ABdhPJwTeTjh4wfdzZWWaUGKf0dVZTNMfndbI5TDLXYU8D5lzannE9SMp1INY+PJTwQ2GMi4eOIB/A==
X-Received: by 2002:a7b:c249:: with SMTP id b9mr18238626wmj.143.1592843882545; 
 Mon, 22 Jun 2020 09:38:02 -0700 (PDT)
Received: from smtp.gmail.com ([2001:818:e238:a000:a4ba:2182:c4c1:3b20])
 by smtp.gmail.com with ESMTPSA id z9sm79796wmi.41.2020.06.22.09.38.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 09:38:02 -0700 (PDT)
Date: Mon, 22 Jun 2020 13:37:55 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <0cef6a7b7dbd8510de62f0c17e8cd952cfa84678.1592840756.git.melissa.srw@gmail.com>
References: <cover.1592840756.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1592840756.git.melissa.srw@gmail.com>
Subject: [Intel-gfx] [PATCH i-g-t 1/2] test/kms_cursor_crc: release old
 pipe_crc before create a new one
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

When a subtest fails, it skips the cleanup, and its pipe_crc remains allocated.
As a consequence, the following subtest also fails (timeout) when trying to
create a new one. This patch releases any remaining pipe_crc to enable the
creation of a new one for the next subtest.

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 tests/kms_cursor_crc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tests/kms_cursor_crc.c b/tests/kms_cursor_crc.c
index f105e295..5976df5f 100644
--- a/tests/kms_cursor_crc.c
+++ b/tests/kms_cursor_crc.c
@@ -423,6 +423,8 @@ static void prepare_crtc(data_t *data, igt_output_t *output,
 	igt_display_commit(display);
 
 	/* create the pipe_crc object for this pipe */
+	if (data->pipe_crc)
+		igt_pipe_crc_free(data->pipe_crc);
 	data->pipe_crc = igt_pipe_crc_new(data->drm_fd, data->pipe,
 					  INTEL_PIPE_CRC_SOURCE_AUTO);
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
