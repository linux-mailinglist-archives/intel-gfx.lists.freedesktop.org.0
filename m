Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA7FCD6482
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 15:00:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D2510E348;
	Mon, 22 Dec 2025 14:00:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hKLtnzj6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1CE710E55A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 08:22:28 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id
 d2e1a72fcca58-7b8bbf16b71so3689971b3a.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Dec 2025 00:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766391748; x=1766996548; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=U7ftMB0O2RO6V6KEGBmyXf/qaI8CtnkfkNTYnuarQaQ=;
 b=hKLtnzj6qWyMUEvZ6n0Wha1kMlHHX8NKuPU8vc8FRKwL2LQSRQyKyks78b1aY0c8dr
 chQ55OikODbpoTWW8/nAHK16cENFU1MarSWDvCrKpserunbDfv4SZSAu5x+w67YMtweQ
 jmwrRZCXQcpN8+Caie5ianEJZkX/4tzsSEhQ30wPUuso3kj1fv91NYG/v4HdzJc96Tky
 qZbFs1N+24vqVc2nHe2unGyhpXtD711aXWKfwtFAtEjTd5YZCV35AefseMQr88pBnH6v
 oet93qmIkMiAMlcSDyqgY90pUcM8E4UFUfwTFgG9SeALcsXn6MZWwAYqPnM24IZjFvZl
 TVNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766391748; x=1766996548;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=U7ftMB0O2RO6V6KEGBmyXf/qaI8CtnkfkNTYnuarQaQ=;
 b=PukuAbYvh9GHD30ZutHF+kMEhoS0FW3NCP4VI+aKJTn7rGBhWLZmBOUXVkIjJNMTls
 eEQ3tk+0jAXDu4aNtz7u9LjKKrkkKe7utEKZdkdr8GwL5coJQ/KJokLbopAT5WZLCs8X
 MctvxOIyutX61dK2T7xwO4VD4SgsaYqJx7YSbc1iQMiXhN7eZphbjPRVRBXj0dH6uMm2
 tnRTOFUsganhNheIInZ0/Z22JQrs+p97Bo8rmcxAEVRD/2JGKTAyfkXPitQlY/sOl6dR
 mpT4iGNsTfCNXbuuKUpDbX+qEreAidJk43OGaoRqWqcjIt349yEcr+W753AqkK2x1WPa
 TVJw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWKUNyxnKbTxBS4bpRHyHoQznpDRO6XiLtJBF0OzIOJEn5rsOEQbb4MRMVXEnNHGlT3F7ZEelcmasI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwEaGz38CyPkzW5Ax8mS1ZpKhkqbZKJBcyK4ivNgMsB+WaZLT30
 n+DgWz5JvVCl/+bfVuXK841aWVAluuXGRr2zKvBiE7YEnpNoQFJ4WaUPb4FHDSN4Rx8OXQ==
X-Gm-Gg: AY/fxX6m1GpjHwOlLBMTKXnDvrf2W3neEPoOdMkfx4yDP48NNIdkF3hitykb0hKb8ML
 e2RBUVg1cKY/RRSn02tUlrJ/4E+BZeO9tu+/6w0ebDGhx+1aZd7lPivDKbkbNb8BJFhhbfOG9sl
 Qj7dsGuO5o42Dzy+BRkHb5rfFmDU6KOL8DaZiFfS1my7ahMQivu0xbqZ5QRJTxSzYzxh2iU2FPH
 7PQupKqdfrc7ZgYJ5ktedmqKdSwKg5UciMCyhjZjnRZDCqLt6ey1j7UNkzRzzZITucT9+gKpxW2
 KLucPChPD9YBlve5S+ZHXn0zBQyJJzg56GdXKpOZiIM5mAZGeZ68ez0maVGs5TmKNLmZO5OQ/3r
 LxWBqQg2P4Yz9PBjOp6gaRyhiiyK7K2BvMUknYE4Va4egn83qAyXmQcZXI+W1HdJ7gc/KB8un7z
 aB7nKTURfh
X-Google-Smtp-Source: AGHT+IFIaB8eWc1HtVa50QiWjAkChZ0TUx+nROmHgF5xveLYAYPTgHVZsZQQy8Wrx7bUcj5BQhCb5g==
X-Received: by 2002:a05:6a00:a24e:b0:7ab:63fe:d7d5 with SMTP id
 d2e1a72fcca58-7ff648ed939mr9692669b3a.20.1766391748333; 
 Mon, 22 Dec 2025 00:22:28 -0800 (PST)
Received: from frodo ([2404:4400:417e:3d00:8b90:7f55:1261:772f])
 by smtp.googlemail.com with ESMTPSA id
 d2e1a72fcca58-7ff7e493123sm9540699b3a.50.2025.12.22.00.22.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Dec 2025 00:22:27 -0800 (PST)
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
 linux-arm-msm@vger.kernel.org, mingo@redhat.com, jim.cromie@gmail.com
Subject: [PATCH v7 06/31] dyndbg: reword "class unknown, " to "class:_UNKNOWN_"
Date: Mon, 22 Dec 2025 21:20:23 +1300
Message-ID: <20251222082049.1782440-7-jim.cromie@gmail.com>
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

When a dyndbg classname is unknown to a kernel module (as before
previous patch), the callsite is un-addressable via >control queries.

The control-file displays this condition as "class unknown,"
currently.  That spelling is sub-optimal/too-generic, so change it to
"class:_UNKNOWN_" to loudly announce the erroneous situation, and to
make it uniquely greppable.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index eb5146bcfaca..cb171088850c 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -1165,7 +1165,7 @@ static int ddebug_proc_show(struct seq_file *m, void *p)
 		if (class)
 			seq_printf(m, " class:%s", class);
 		else
-			seq_printf(m, " class unknown, _id:%d", dp->class_id);
+			seq_printf(m, " class:_UNKNOWN_ _id:%d", dp->class_id);
 	}
 	seq_putc(m, '\n');
 
-- 
2.52.0

