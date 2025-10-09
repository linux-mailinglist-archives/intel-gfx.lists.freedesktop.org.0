Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD23ABD5DAF
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 21:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A8510E4DF;
	Mon, 13 Oct 2025 19:04:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KSQbhaHV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
 [209.85.166.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0793510EAD3
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 17:58:53 +0000 (UTC)
Received: by mail-il1-f180.google.com with SMTP id
 e9e14a558f8ab-42f68a0a89aso9638865ab.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Oct 2025 10:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760032732; x=1760637532; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+5lAaOOjCc4ULiFrsiLFYK9hqRtLQli7F1TlUXtnya4=;
 b=KSQbhaHVff3etj+Um7dySfayvj9UMe8TeQJs4CTfYe09P7fe/7QbQjuJwIQCjvRmCk
 sXEK1G949wUN9rRFz9SzNKi44Ss0H9F7Iy0dtJ3lo3tTVOgZISdq+jaExv5JhovrmTTb
 6pwVJ5LuGeKYzxzV+VxUX7gPpvHqeH3YTTcXtW0RwSGkYHWLtx3thZg9BxIcQORtFzbp
 RipvvCxZLvlfLHJqSWlh098SkjS3Ywu+eI9j2sB8TzMS71hIHODSOesJkPGNvuOXH2O9
 Q6sz0+iIrFjCZzKj+cnvq7J25epwyHf+S7C8e3dtFiz4M9uuFDFF+7IAs2i5v76tP5jZ
 Ssbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760032732; x=1760637532;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+5lAaOOjCc4ULiFrsiLFYK9hqRtLQli7F1TlUXtnya4=;
 b=XlOskY1V3w/u4jQifOOlaqw9aYc8VKE+f6IRMYozQlbJmeBPv5WTBDXb6n6oSAxbrv
 xGu04nQ9yLtR+OVFzyzGpr0WakQxhM9lpnEhrnsEde71mX2KHUqURkly1ayDa/17HDXc
 +fTDXnfTsEVgo22eloIPlsII6K2ar8E5Jz8l8Le2mJJW6OdMqKuh38QpM6GXYShsW90G
 QgD+lCAEpj7w8WwYOFv5OJGWUHqCmHJyJwJlkEfGw8Bduvd2fLBrv9X9j4PHRvzC8GQl
 xuXP+cwEmFj08ghbJIfEyrs2i8wlW8Nqhfhf17JlFWa+8KTvrH+LKwzJLLnQC6MWpmdg
 KMww==
X-Forwarded-Encrypted: i=1;
 AJvYcCVce+CMrjllNW5pgdsLztGRvVKgbBxmp2WbH5qWPQ5TbAoqLUTt14CfnFWTQjJUA7wNEOFI/ai6cQY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwpO2YNEWw9lxmqmDt/XV/8xiF0h9Lj/lt2Fbg1A/dpykLE0bB1
 dcH/4Vhb+0RJAW2Q78pUzGtKDJ/RYRwOFfTRSsHmXkOg/pyQq7yGkljy
X-Gm-Gg: ASbGncteul0i220mkR4dIQg87Tl65PNXdmtBMB7ualo57IZ2aTcNbyaDpk2E0ZU02Cy
 xN5jh5eRLPsOHzkKVd9EDD7HC102Vv+X7dwCd6kFrCarBoSk4xwAoum6radTlaptu7ZaZ2xZgXg
 3a/AtF1/h3GywmCqYL0dCe90fDh44rvfhH+xaG6jtG+x2ZzKDHuWQS27Wp26R9kZ5tbVRFMQkxM
 URWcKxlo6FZgh5NS09h4T70/M5y1JL19sp+oD62Q4J8KY2WP1mlXP9l4GGEm6FDCntDIMnAKkVE
 ThiU0RgfZWENt7Xn61GEJAfkej2V7Eoz3no63UrDBym9DqWK8afWAV0xS5OCds8tA7VUx1+h8DC
 CFa6TeRuNVkaECPGPf4WB5gONKIpri6dQ8zStS09YuOUDGeiVOEmMa7UHDhH1kKc5OYSsCaZbuA
 H6uH2uhhGXG/e6reSmkIsKpkJzfDjJsQYmlIzxug==
X-Google-Smtp-Source: AGHT+IFFRLinxOs/9OTcYHa0TTaGH+h0f+hAtiRcea3Rwbgg5dAqda5gTWAF7gYArlA/stW+upYWUA==
X-Received: by 2002:a92:cdac:0:b0:405:d8c4:ab8f with SMTP id
 e9e14a558f8ab-42f7c3b2655mr137425675ab.14.1760032732136; 
 Thu, 09 Oct 2025 10:58:52 -0700 (PDT)
Received: from godzilla.raven-morpho.ts.net
 (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 8926c6da1cb9f-58f7200c4afsm30256173.35.2025.10.09.10.58.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Oct 2025 10:58:51 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com
Cc: gregkh@linuxfoundation.org, ukaszb@chromium.org, louis.chauvet@bootlin.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, daniel.vetter@ffwll.ch,
 tvrtko.ursulin@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, Jim Cromie <jim.cromie@gmail.com>
Subject: [PATCH v5 05/30] dyndbg: make ddebug_class_param union members same
 size
Date: Thu,  9 Oct 2025 11:58:09 -0600
Message-ID: <20251009175834.1024308-6-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009175834.1024308-1-jim.cromie@gmail.com>
References: <20251009175834.1024308-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 13 Oct 2025 19:04:10 +0000
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

struct ddebug_class_param keeps a ref to the state-storage of the
param; make both class-types use the same unsigned long storage type.

ISTM this is simpler and safer; it avoids an irrelevant difference,
and if 2 users somehow get class-type mixed up (or refer to the wrong
union member), at least they will both see the same value.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
---
 include/linux/dynamic_debug.h | 2 +-
 lib/dynamic_debug.c           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index ff44ec346162..b9afc7731b7c 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -124,7 +124,7 @@ struct _ddebug_info {
 struct ddebug_class_param {
 	union {
 		unsigned long *bits;
-		unsigned int *lvl;
+		unsigned long *lvl;
 	};
 	char flags[8];
 	const struct ddebug_class_map *map;
diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 147540c57154..55df35df093b 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -799,7 +799,7 @@ int param_get_dyndbg_classes(char *buffer, const struct kernel_param *kp)
 
 	case DD_CLASS_TYPE_LEVEL_NAMES:
 	case DD_CLASS_TYPE_LEVEL_NUM:
-		return scnprintf(buffer, PAGE_SIZE, "%d\n", *dcp->lvl);
+		return scnprintf(buffer, PAGE_SIZE, "%ld\n", *dcp->lvl);
 	default:
 		return -1;
 	}
-- 
2.51.0

