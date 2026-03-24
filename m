Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id nulXN8nNw2nuuAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:58:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFB9324511
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E1310E857;
	Wed, 25 Mar 2026 11:57:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LgW9jBot";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F00DD10E6D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2026 13:47:50 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id
 ffacd0b85a97d-43b871dd06eso175202f8f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2026 06:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774360069; x=1774964869; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=NGfhZzKVYIP6RlfjAEGnGSAhqoey9TRFFzSxoh0MDiY=;
 b=LgW9jBotyRn2glR0owwB2W6gTwd3vf8bRFmfd0xXEYWbiuTmwNC1gnYAZhVJR1udxH
 +9XVTuYg4o6mv1JzHIhGiH92KDIk9kFqFYPj4Wz6OOM1vv5vOUjNvqzQGuZvjxr+aKNa
 CjVUUkhn/jDEr1+uaGKNV7N8RjJtX898fq/9iE1QbJ7cvxec8H5tflCbiXfmLNE6z3G4
 Dm/BnGk/tuqqM9TYj0ncvMLsiA+UjhthJHuAYbzMxq4cF4bFuvV7awGJyvpuQnGvvYOP
 6hg7+tZNhCOqPdUMD8EuDHqt7SMaWHiEHcXz+hzbl5W1AUI8/xDgKSZ4/FJB2m3sHQ2h
 0BTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774360069; x=1774964869;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NGfhZzKVYIP6RlfjAEGnGSAhqoey9TRFFzSxoh0MDiY=;
 b=WO75cnwmmQC3n1qqpKqy28sGDClYgiQirwNmSyMEE33sZgGGB+0INKNiRu8eq9UspV
 pjxyOUW6y/pEJm3R/Zq8haXmDDr4yZ/v9NFyYNuXybi/vgwPXT2w+0GvMVH468GTmmJB
 F1bxBMmLc5YwYVXANjGfdBM1jZbkK/HEcgQPr7vAgaPWzSxqYnuorHV2ndHLO8eiHACZ
 ioIIC3ZYnFZoIo3ZKpZBl6iKjtuwoHk76LgTTpcWSYOaWNmY8b5WyhlYpuO68jh6HvCx
 JJKA7I2GitEMhUezEGW2Jj3ltWPn0eIqmuKIlGaqAF8NaDHCRnGOqpwvSQi/tNH1+VQw
 gbFw==
X-Gm-Message-State: AOJu0YzJqLBIykR1UU3FK50Xv85XHz7q6ZngUpK0krO58McCs7NVrZW8
 Llcxgek+FIee3ETKvJxDATCD7fbPz+odNSD3U0PmqZXoQ7Yk/5u0bbdxP7A4bVlX
X-Gm-Gg: ATEYQzxIu6DsICtSj+3h8YlwyQHWB4s/BhC1BmRPD2EP2Cfn58/US2Qm2JWSMPJ7lay
 VsDkbhbMvG4tb8IK64vrCc1KEZMg0iewiSO+mFeClWTws6NJIxKemy/N077Qrsd1eb4pCweY4Bp
 rQkF5whNAMrAuMhvLEO+0gsz4AiLq/vjpoYDt0Kcq3pA4dvKgCrnKyWOLSzcfIKb4J9Vvl9e2G3
 AwuVrPVuFvAeGByQ55VCeKNYm64u/ZvEp5YNll/xsNOjfSbVeavjdUXqvq3jckPBmdE/Bj4TTj0
 zmHiW+ylHWZkQarUOLBzn15WzI4BN3cbbch2D7Lw+mdx0mVHx/HH+9SVWMAMdxbz9XyoddM4I10
 DDimAlhoQkSeS8RNVaimrBsvUwbuZbGhExb80IAxKamEvdjXcvyTI0bLEdeC1k4idcp5NXe64aK
 LApyY4wrQ6kMAvrr429hVX3t+jrH3nKQ==
X-Received: by 2002:a5d:64c6:0:b0:439:b486:ba6b with SMTP id
 ffacd0b85a97d-43b64281531mr22669866f8f.39.1774360068914; 
 Tue, 24 Mar 2026 06:47:48 -0700 (PDT)
Received: from zinco04.TojiM4 ([197.146.60.227])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43b86fbb195sm1834492f8f.14.2026.03.24.06.47.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2026 06:47:48 -0700 (PDT)
From: Yassine Mounir <sosohero200@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: joonas.lahtinen@linux.intel.com, security@kernel.org,
 rodrigo.vivi@intel.com, Yassine Mounir <sosohero200@gmail.com>
Subject: [PATCH] drm/i915: Fix UAF race between relocation and GEM_CLOSE
Date: Tue, 24 Mar 2026 09:47:18 -0400
Message-ID: <20260324134718.27331-1-sosohero200@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 25 Mar 2026 11:57:58 +0000
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,intel.com,gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 7DFB9324511
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

A use-after-free (UAF) vulnerability was identified in the i915 driver 
within eb_relocate_vma. The issue arises from a race condition where 
a concurrent DRM_IOCTL_GEM_CLOSE can drop the GEM object's reference 
count to zero while the relocation thread is still processing entries.

This results in the kernel attempting to access freed memory in 
eb_relocate_entry, leading to a display pipeline hang and potential 
system instability.

Fix:
Wrap the relocation phase with i915_gem_object_get() and 
i915_gem_object_put() to ensure the object remains valid throughout 
the operation, even if user-space requests to close the handle.

Reported-by: Yassine Mounir (Toji1) <sosohero200@gmail.com>
Signed-off-by: Yassine Mounir <sosohero200@gmail.com>
---
 drivers/gpu/drm/i915/i915_gem_execbuffer.c | 4 ++++
 1 file changed, 4 insertions(+)

--- a/drivers/gpu/drm/i915/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/i915_gem_execbuffer.c
@@ -1542,7 +1542,11 @@ eb_relocate_vma(struct i915_execbuffer *eb, struct i915_vma *vma)
 		if (ret)
 			return ret;
 
+		/* Hold a reference to prevent UAF during concurrent GEM_CLOSE */
+		i915_gem_object_get(vma->obj);
 		ret = eb_relocate_entry(eb, vma, rel);
+		i915_gem_object_put(vma->obj);
+
 		if (ret)
 			return ret;
 	}
