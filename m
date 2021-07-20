Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 593093D017C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 20:21:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BCD66E207;
	Tue, 20 Jul 2021 18:21:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBF16E207
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 18:21:13 +0000 (UTC)
Received: by mail-pg1-x529.google.com with SMTP id y4so23269085pgl.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 11:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=za2JCZjGFn/8lytZzfYjQUauXdMYhSETKGe5ZRasqyc=;
 b=PfPElQYlFXtQ0v1ne1EjbzIDzf0GymXFrrsgqkso5WQAOQujwoFR1c+dNTmdfvGjzG
 d8ybHp289fv6dQyB2etQflY+ocfPH9eoiFa57zqyoTEcJqRHTz08OUbPRtrZAidB5wyv
 /eNRGLV7YkxdEXo+hvBr63ta8wP6YCwZQHdNMI/ydhEUy7E5X0/dOKlZd9pypSGaBlVr
 Fv2I0J+ZAFyPO1CI2x8agdsEnF3LxMAo237SF6rc0IUsMBglOBLyUXQZAFTrrGkEBTEf
 K6IMahf1Ko+qnYjEQ2ZQpU9doWaLzXFGkxYAoTHrGUnAJJs5WEkpgvqcuhIZc6uJmeRo
 LI0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=za2JCZjGFn/8lytZzfYjQUauXdMYhSETKGe5ZRasqyc=;
 b=beURfuf2j0jEHaHosBA6cnhbku+1CYDRB+WJw4ME3fnx3qwOeG2zRaN45ryJYM7llh
 8oD6TmMX366B8W2pfQ8zvQacXDxxG1tFT0NiklEhOOs+yBHt0QRcVC9AnJs4zOllSiUx
 wwIgffdSWjUfNgCdx4H6/h9eUCb02+lEkb68glm4FTOtM5Q4hp2kRfrafDPAzoSZ4pP0
 O2Q/hSYpm3nUtj0eWjfaG70NAOFat6tRlk2qxkrOqofxa9h+WQb1x8nRKTzVUSdOdEXM
 UQDwB8UPiVzMnUMShW4mdA5lkDRxXX+VAz0V5EzdNS0N7zBpwFlnANJU1AWzYISqBjWy
 1/kg==
X-Gm-Message-State: AOAM533XLeYdGPFODfPw4WPRG1HJI/p2FLC8nE7+TNVjG/HM7N/K2T0V
 PmcP4nMdEuowNeS3ofbBhsg3RhBj6jvWNg==
X-Google-Smtp-Source: ABdhPJwsJP0npD0q+O2PL2+RNiiZ4lefIX5Alcpi2kyAEvRGcVbiGxxNkwdoDBXoju4dqTomPxO9+Q==
X-Received: by 2002:a65:61ab:: with SMTP id i11mr32144153pgv.168.1626805272772; 
 Tue, 20 Jul 2021 11:21:12 -0700 (PDT)
Received: from omlet.lan ([134.134.137.86])
 by smtp.gmail.com with ESMTPSA id a22sm26516904pgv.84.2021.07.20.11.21.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 11:21:12 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Jul 2021 13:21:08 -0500
Message-Id: <20210720182108.2761496-1-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Correct the docs for
 intel_engine_cmd_parser
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In c9d9fdbc108a ("drm/i915: Revert "drm/i915/gem: Asynchronous
cmdparser""), the parameters to intel_engine_cmd_parser() were altered
without updating the docs, causing Fi.CI.DOCS to start failing.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 322f4d5955a4f..e0403ce9ce692 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1416,9 +1416,7 @@ static unsigned long *alloc_whitelist(u32 batch_length)
  * @batch_offset: byte offset in the batch at which execution starts
  * @batch_length: length of the commands in batch_obj
  * @shadow: validated copy of the batch buffer in question
- * @jump_whitelist: buffer preallocated with intel_engine_cmd_parser_alloc_jump_whitelist()
- * @shadow_map: mapping to @shadow vma
- * @batch_map: mapping to @batch vma
+ * @trampoline: true if we need to trampoline into privileged execution
  *
  * Parses the specified batch buffer looking for privilege violations as
  * described in the overview.
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
