Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D34022C6960
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 17:28:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A50EC6EE4B;
	Fri, 27 Nov 2020 16:28:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EAA06EE4B
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 16:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606494517;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type;
 bh=hBK4rF+UUZqxXGARBNA3+k4KA9RCCq8gUWcN+N8wXLI=;
 b=J8f1ojdi2RuSiw8CdiHuE/9dS1l+qr78yymjZKH63oTL6nr7m3fTTVrWwt0dINs+nxolMc
 I5c5rh232pC0z5V4HdWxPvfyLjO9QwhoHvBXwvMCT/5KQG+eD/2i61cObhoDMLI4YPwWko
 Tgr8ek2fwpi4BYTLOfZf1PPJxYg0PAw=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-503-cJokY97fNhKxU9bt10fFBA-1; Fri, 27 Nov 2020 11:28:36 -0500
X-MC-Unique: cJokY97fNhKxU9bt10fFBA-1
Received: by mail-qv1-f69.google.com with SMTP id p3so3346621qvn.15
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 08:28:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hBK4rF+UUZqxXGARBNA3+k4KA9RCCq8gUWcN+N8wXLI=;
 b=toGcdGKc/dgXn9XLZnYdZnTp5epkGvNZ6pddcQGc8lJnTTmTzg+tKZdPUh/0xt92O7
 bD8SU3Qsbisb8hJO+GmJ7/mGiaOFWtzUlP8vZ72K4glDdiZoBIfHB7SlO+UpiGZbEErX
 6cssPWUZjoUkrBNrsffQ37ITV6ymN0kvxmBFi3Fy1F18lLg+jqpilQ/Hle7CkdgxVT48
 /ABsmzHuefJpKDPHYN+mA4P+Xi9UUjlo2HHJMB5QqHVhHI4bkSzWbU8i2fbwy7pmSMIh
 Fe7VEvZzb9vc8gQR627QvuzeMZfXhxHSJOMcp/N6R1sbcPtBd+MYxJQmcA5Thhr6Sp+c
 r/Ag==
X-Gm-Message-State: AOAM530OPSadLl/CZ4kfjI/uoI+90vGS9azMuR1FGLgz/Vt6A77GoQQS
 0lHt46IW8LEaE5hHQYzRZnxHuGOiD8q+2WieP1vvwFkzBKBGfbDs7TGa5iwIoaFDK1smhJygJkx
 6FPkmOe6FiaZ1kj6Uup4ZwwcAK1dr
X-Received: by 2002:aed:3668:: with SMTP id e95mr8997837qtb.69.1606494514963; 
 Fri, 27 Nov 2020 08:28:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz3szdD1wWTn6Oo7LYsc3cKd7ZqSuuJJN25Ol+alAuJJ/qJilZvZbeVXDRkqjEGATTXuTCO6Q==
X-Received: by 2002:aed:3668:: with SMTP id e95mr8997822qtb.69.1606494514757; 
 Fri, 27 Nov 2020 08:28:34 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id 187sm6632673qki.38.2020.11.27.08.28.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Nov 2020 08:28:34 -0800 (PST)
From: trix@redhat.com
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Fri, 27 Nov 2020 08:28:28 -0800
Message-Id: <20201127162828.2660230-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.4
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] [PATCH] drm/i915: remove trailing semicolon in macro
 definition
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
Cc: Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tom Rix <trix@redhat.com>

The macro use will already have a semicolon.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index e67cec8fa2aa..ef767f04c37c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -104,7 +104,7 @@ void intel_device_info_print_static(const struct intel_device_info *info,
 	drm_printf(p, "ppgtt-type: %d\n", info->ppgtt_type);
 	drm_printf(p, "dma_mask_size: %u\n", info->dma_mask_size);
 
-#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, yesno(info->name));
+#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, yesno(info->name))
 	DEV_INFO_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
 
-- 
2.18.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
