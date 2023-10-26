Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E6A7D841D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 15:59:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F2210E7E3;
	Thu, 26 Oct 2023 13:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74C8010E7E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 13:59:47 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-4083ac51d8aso7465035e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 06:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698328786; x=1698933586; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=NrA324J9byq6aW84xJxusR510GF023RDvmDa1/mC+RM=;
 b=erAPAIGhkswJctEMSLtNKZEJPsmOEIAiJFnXwcZpWrlzu/p1OcvlgFv4TN0rNQahJS
 1v/lvi7alygqu+JFMPRgrVD2egdWKFnUU5HUG0/H45nSaGFsEHt2WAWKBFH3XsZT1b4O
 nhgjRzEAvP/2UVISOg6fjifdDFGdxbXzY3gqixp1ZMlRd4Tb/jM1kuLv2Bl/39GkvvaP
 ckIslnbPSrM5cQBgJ0fSqMUIO38d49lWFmjserq2Ydk/zG/uYn7UPUzGZR13w+/ssnw6
 394BZuq83T/jVeS9/5DFipmJzOHTD7gK2WeoZnR7db/5kD1sjX3irx74cOFbdwn5L2Zp
 DBxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698328786; x=1698933586;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NrA324J9byq6aW84xJxusR510GF023RDvmDa1/mC+RM=;
 b=UeBol4Swcj39AsFLAg8OAhXOw/PspnOTETcsMM2c2M+Q6iyZ8kL9AOFXiFyDiflgno
 3m1HXFEoQSh6I2QFiwn8TXUhUO1JLLgv4Ep08PA4DhJLo55YCKVogY1aWLU6rgE/m4My
 JgylZ8d9bofj6zhF9Yr2R+tulUzft4mKBn+TAENAcoO/pIGwZpJylxxgUP9dSfo7012U
 6qElKx8KJHIsyKOZovvyOHTRB5AeFlIFLJTQ15KcXOnAOLSkMIRzazc68tJBWw9SU4Rj
 wBQvmYPlBENizoRG8jFjT0ftqe3tXXh0ISNDb7nLBFfUPa+SwDNZTeXA55m4BDeSzDnd
 JGVQ==
X-Gm-Message-State: AOJu0Ywsa/0VENZWlbO4rUgDkteqzh1IAwFE4hDOIo4706mw74Q/MX0Z
 1U2MOkOECZTCAIbDfujtwTI=
X-Google-Smtp-Source: AGHT+IHzIE/Kf6/jp9jM+3nBnEhn6I0UXXluqT1vIqktNRZN8tnDvLuSbhgGF681CqAoRSH6avkvYw==
X-Received: by 2002:a05:600c:4ec8:b0:405:40ab:7693 with SMTP id
 g8-20020a05600c4ec800b0040540ab7693mr14868455wmq.31.1698328785515; 
 Thu, 26 Oct 2023 06:59:45 -0700 (PDT)
Received: from gilbert-PC ([105.112.31.135]) by smtp.gmail.com with ESMTPSA id
 l9-20020a5d5609000000b0032da7454ebesm14312078wrv.79.2023.10.26.06.59.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Oct 2023 06:59:45 -0700 (PDT)
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 14:58:39 +0100
Message-Id: <20231026135839.486894-1-gilbertadikankwu@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Remove assignment from if condition
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
Cc: chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Initialize variable "entry" during declaration. Remove assignment from if
condition.

Fix checkpatch.pl error:
ERROR: do not use assignment in if condition

Signed-off-by: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e8f42ec6b1b4..cbc4ecf26d8b 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1751,7 +1751,7 @@ static bool gen8_csb_parse(const u64 csb)
 static noinline u64
 wa_csb_read(const struct intel_engine_cs *engine, u64 * const csb)
 {
-	u64 entry;
+	u64 entry = READ_ONCE(*csb);
 
 	/*
 	 * Reading from the HWSP has one particular advantage: we can detect
@@ -1763,7 +1763,7 @@ wa_csb_read(const struct intel_engine_cs *engine, u64 * const csb)
 	 * tgl,dg1:HSDES#22011327657
 	 */
 	preempt_disable();
-	if (wait_for_atomic_us((entry = READ_ONCE(*csb)) != -1, 10)) {
+	if (wait_for_atomic_us(entry != -1, 10)) {
 		int idx = csb - engine->execlists.csb_status;
 		int status;
 
-- 
2.34.1

