Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFF0CD64AC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 15:00:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 377D910E689;
	Mon, 22 Dec 2025 14:00:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Syu2tmjs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA11D10E566
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 08:22:01 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id
 d2e1a72fcca58-7b8bbf16b71so3689769b3a.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 00:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766391721; x=1766996521; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dFfaj1jg7DkAQbZ2xQqGZ0nerYqYJ2u1eC/UX4LEwiY=;
 b=Syu2tmjspjbsxZBZzGro64cQcQxDsuaF1oafdwsRYTmhV8m9oLv/T5CGThXCSSQpre
 KwrMxpwtrWG5MJP9eiw0dK4sX9hEOF5Olgzz8RN+zkWTdm5bvz8yM1Iti+bTt/ma4xj4
 REgQJtNslUwRe6fs2prz34bzz/FH7AyHFkTIP3tyTqi3HrIOfPYmEEZXEY1qoPdxIhoS
 MG2flnVi8hF9xIDw2wcl44BbzQisCRQdSQKBB4Z9k5l1pHx2GClnvhHADK/gnD07xSVF
 M9MphcIiuAcEISZ/qBmS3WhnA70rBSHcMaUvKJFYaryXyqjUvSpYSkuvkQKDn0w7EpKD
 sV0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766391721; x=1766996521;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=dFfaj1jg7DkAQbZ2xQqGZ0nerYqYJ2u1eC/UX4LEwiY=;
 b=WC3q3yrXwGENoR7vv4KliUMVveUbCTvpKIuZ1r32a4F647H9UHdOO4GQmdfWnAMyW3
 xzY5sKuU67VfYxhPqVWzsrThW5q5F6nxmLThkyiT6L6vWnGdG7/ML2YcfjQdEeJBLvXf
 rrN5GXgwky0B1EvP2Npaw31E5DLW2FuhvnHzq4IRVpF8YAxTvHJ9QNd5YHSE8ZBaaFMR
 oqK1h7swKO9CbDdd0/h2SSd2t3ATT2e3QRfNUJIqIBb1q1yNsXxmBOUzB3sinD5tGUiW
 wKejssed2T/dZKU5sNFCpSreOtoXHD3bQuWuBvx2+HBF0OY5msXV/LM+K9l/C8SPYjVh
 5qxA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKjWAzTBUz0Tmj4VVhGzmImwVh5/Ql7cszETNfz8f+nqTWnmQ1hrC/scofrgPsJ/fLtzgOaN4U4S8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwTkT/A474EtLcmxKB0HNFdWEH7mzGlANNk0qNtKq9Z3GohNuO1
 RPjHrrOcq4Y4cn20kgcjQTQ0BIz6KWEIWep7FlH1VvoULMaLe0Pk4MEA
X-Gm-Gg: AY/fxX7wjS+h2D2nNoQDkxa91Y0zUzlpOtL7LUhhVcfl14GB9zGtxlosYk5KKFjxFS/
 Adlka0VoNJs9ILtRXX1pFKzo9wgyJBOuq00r69+jvNUUPvu+TJe0D7fQsGsPEOyIFLykCq31ydU
 rL9AC1U0HSnGhl5IbXwcv+ItAmp0uQEUQOeD9opBM5GdiTCqorvb4sMOBOjzB/+tGMdzylFStph
 y2ufg1192ti4zwn+mG73vXvj1FT+pdjMD3RD/87UrlD3NWvotgE9J2sbKM3uQNcuABsgZRokFt5
 H4B5QTCsRprFGOVBtvE91j0Lwobcr/dQZzDjFl7LduaPCihnwxDl5zAaZDX4EJ5Tt0fA9EeyUOy
 vEa12qagaJadETcjnKRqmuKe8pwxfH0ej3zs5rrHF7yWU8uoz/9oQmLfs/7/2X7dI5LobalG09D
 ytRtyyN59P
X-Google-Smtp-Source: AGHT+IG3eUuB5Tb1s+Zs70IjrZagHo/mf8fIHvmKfCB1AS8Rh4HCdjBPUwGbrg6oNBn8UN6DCsv0tQ==
X-Received: by 2002:a05:6a00:3e2a:b0:7ff:9657:d6c8 with SMTP id
 d2e1a72fcca58-7ff9657d93bmr10043630b3a.27.1766391721087; 
 Mon, 22 Dec 2025 00:22:01 -0800 (PST)
Received: from frodo ([2404:4400:417e:3d00:8b90:7f55:1261:772f])
 by smtp.googlemail.com with ESMTPSA id
 d2e1a72fcca58-7ff7e493123sm9540699b3a.50.2025.12.22.00.21.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Dec 2025 00:22:00 -0800 (PST)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, jbaron@akamai.com,
 gregkh@linuxfoundation.org, ukaszb@chromium.org, louis.chauvet@bootlin.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 daniel.vetter@ffwll.ch, tvrtko.ursulin@linux.intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 seanpaul@chromium.org, robdclark@gmail.com, groeck@google.com,
 yanivt@google.com, bleung@google.com, quic_saipraka@quicinc.com,
 will@kernel.org, catalin.marinas@arm.com, quic_psodagud@quicinc.com,
 maz@kernel.org, arnd@arndb.de, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, mingo@redhat.com, jim.cromie@gmail.com,
 linux-doc@vger.kernel.org
Subject: [PATCH v7 04/31] docs/dyndbg: explain flags parse 1st
Date: Mon, 22 Dec 2025 21:20:21 +1300
Message-ID: <20251222082049.1782440-5-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251222082049.1782440-3-jim.cromie@gmail.com>
References: <20251222082049.1782440-3-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 22 Dec 2025 14:00:06 +0000
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

When writing queries to >control, flags are parsed 1st, since they are
the only required field, and they require specific compositions.  So
if the flags draw an error (on those specifics), then keyword errors
aren't reported.  This can be mildly confusing/annoying, so explain it
instead.

cc: linux-doc@vger.kernel.org
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 .../admin-guide/dynamic-debug-howto.rst         | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/dynamic-debug-howto.rst b/Documentation/admin-guide/dynamic-debug-howto.rst
index 4ac18c0a1d95..e76ccd987704 100644
--- a/Documentation/admin-guide/dynamic-debug-howto.rst
+++ b/Documentation/admin-guide/dynamic-debug-howto.rst
@@ -109,10 +109,19 @@ The match-spec's select *prdbgs* from the catalog, upon which to apply
 the flags-spec, all constraints are ANDed together.  An absent keyword
 is the same as keyword "*".
 
-
-A match specification is a keyword, which selects the attribute of
-the callsite to be compared, and a value to compare against.  Possible
-keywords are:::
+Note that since the match-spec can be empty, the flags are checked 1st,
+then the pairs of keyword and value.  Flag errs will hide keyword errs::
+
+  bash-5.2# ddcmd mod bar +foo
+  dyndbg: read 13 bytes from userspace
+  dyndbg: query 0: "mod bar +foo" mod:*
+  dyndbg: unknown flag 'o'
+  dyndbg: flags parse failed
+  dyndbg: processed 1 queries, with 0 matches, 1 errs
+
+So a match-spec is a keyword, which selects the attribute of the
+callsite to be compared, and a value to compare against.  Possible
+keywords are::
 
   match-spec ::= 'func' string |
 		 'file' string |
-- 
2.52.0

