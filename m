Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9873863F4A5
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 16:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48FD10E638;
	Thu,  1 Dec 2022 15:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D21A910E3AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 09:45:35 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id z4so21177941wrr.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 01:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=COppZajkt4EWHP4TcI4+tgWNQUyyajXa4qnC9c1n0EM=;
 b=Vw9DVXPyPdaZyUb6IddAz0h4Dk7BRWemag4IUiyZOgYAAxTYnOvbMZPnbZ8JlDmfG9
 /59mkdcSgFkNlWlWSBUQ8prn6Vqvhiuo0h22r0pcW9NnUj0H/OF2LOaIny1mr8ln2gsm
 xuJvyWOAk0s3JQvxmKUiIyNat/SlC76ZXxa1+4Ig2ICJgN40zAfkvCEMPjU5+fw7uyoY
 2rOK+gduJgEB9i9htFbxTiBBTZbKiOzlrPqMkvZvLvr0DO5TZeHArtJNZcPH5LLzv4LE
 +8swuf9MP8FP6MVngcme81QPC+7/kZ4Ps2slcW0Dxu/bzd1LsFbRqEflVAPZIYDPD8IR
 T49Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=COppZajkt4EWHP4TcI4+tgWNQUyyajXa4qnC9c1n0EM=;
 b=ItqYVr95o+/y+CDTe/Aw3nEYxQLvlsD1qGKCYp+FvHqA2oxj8p5HCM/DDeQy8wL3B4
 EpNXsxr9R1CAPxT/F4sL0qQkZuWYcmQfowWxLsPFVzBgtZ2nWSrSC+xj6YGwWs/osvzd
 G1tecNM0yn5FYtpWYdfF0ndrNcpa+WZ+g5VkTuK5niHQotqNwy7A/iEtlGz35volBT5c
 vPeHRjVVRSBkzUGwNoJh1xwXZJvvQ1G9Mg2Qi/0uzqx2uCyVQewJS7D6g7SIqsl01JMS
 vQzEV0nAyQKR9KjDY30BawBAYu3EowVrZ6DE4HodgUAui8xMXjh+ykcJqO6uBrwrOwzl
 xZFg==
X-Gm-Message-State: ANoB5pkYJHJH5e0PYN8twb6BeNbNDsPJhJgpA/6jZIhYR0psN/jND+ar
 WdFAj04gIHPkeZ4TViKkcpJw9FfJgGUoRQ==
X-Google-Smtp-Source: AA0mqf44784vK1ZJD251DLHoYNFxkZw+QumzwaciNBqk8qS62sgKY+UjRZT3rBMwvuo7jNCc77MSAQ==
X-Received: by 2002:adf:e5d0:0:b0:242:17c9:a1e with SMTP id
 a16-20020adfe5d0000000b0024217c90a1emr5680321wrn.514.1669715134379; 
 Tue, 29 Nov 2022 01:45:34 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 e14-20020adfe7ce000000b00241e7007905sm13104927wrn.75.2022.11.29.01.45.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Nov 2022 01:45:34 -0800 (PST)
Date: Tue, 29 Nov 2022 12:45:31 +0300
From: Dan Carpenter <error27@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y4XUuyFi3fr354sP@kili>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Mailman-Approved-At: Thu, 01 Dec 2022 15:58:17 +0000
Subject: [Intel-gfx] [PATCH] drm/i915/uc: Fix double free bug
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
Cc: intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The "fw" pointer is freed again in the clean up code at the end of the
function.  Set it to NULL here to prevent a double free.

Fixes: 016241168dc5 ("drm/i915/uc: use different ggtt pin offsets for uc loads")
Signed-off-by: Dan Carpenter <error27@gmail.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 0c80ba51a4bd..8aa9bcae8e72 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -585,6 +585,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 
 		/* try to find another blob to load */
 		release_firmware(fw);
+		fw = NULL;
 		err = -ENOENT;
 	}
 
-- 
2.35.1

