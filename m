Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE448BA341
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 00:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6081126FF;
	Thu,  2 May 2024 22:33:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="MoVdcG8D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7339B1126FA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 22:33:49 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id
 41be03b00d2f7-618a51c8c29so972820a12.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2024 15:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1714689229; x=1715294029;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Nhj8hJv8Nz4SLO0kIrZY8268X0YP9luJWZdcMXgW554=;
 b=MoVdcG8DqtxO9u5U76SV/89d/vnvvzQ6tbCrqSpTN8yrPlq4MNBsLABvBIJdC/lhWY
 qSeNLnnqKRRRxAibsKhsWHdccy+FvVpAHEf5JdRE7XQfEbt7CeFvtw/2t/Y2c0vjqsPy
 Xjwnx4VGYzkRbIsUEGhq3FNMfLg42erlGH2sc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714689229; x=1715294029;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Nhj8hJv8Nz4SLO0kIrZY8268X0YP9luJWZdcMXgW554=;
 b=dsGOiV240qA+3x/a/WbY2b7aWl7hTXmL2rEfve0TA3JtX0wD8+MDP9a+2y342fwJjH
 OxveKr7twM88peSMoxgEKnxQLtxjzdcp6Z8P10YHlSbFe+x8ZKYMhuBIqSZPL2Z6HNnI
 magxfIwjLpJxHN4H0FYBMlhc5yVAZZe7cIMwpGClQ+Hgnt86De70oodDcG+tKTTXVNga
 vSbhrT+Wa9fnctsRQH9M2rmQElQLY2gRVZh651rqszILBxJ5BBm5zjeqhum2M0BBVaov
 xQcpSG4ykdtNMXiMsge/KR6RcvzyCCDsbOZYydeueJYGveKT9/k+FR8qOvjaaCTBBH+y
 heqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXT6bcl+rOmSY3ebTX5yv9H1NYps3rXisRKNFZmfbBgF5+lgxpeTqBuRD0Nw4KR2wAVg0pghNwKkeWXMAKoZAWyEkyWKhIPmOomNeFt8FZ7
X-Gm-Message-State: AOJu0YwmGHxIZpTgviJjoTxj4zUPtWirWtam11WQXE4STAVJ5RhoKbEa
 o1JFvfovAnOg+sNIch87Tks3jl7XkmaPjOigJL5HDO0VyqR/v8+zdPhTxPO+Fw==
X-Google-Smtp-Source: AGHT+IFc7AO8befqehZXahPHokNXwIeinKWSHFTDAZBc8gTAVzLseerL0chlFu6kgm2QDfWE7mdbeg==
X-Received: by 2002:a17:90a:ac18:b0:2b2:9783:d0ca with SMTP id
 o24-20020a17090aac1800b002b29783d0camr1477782pjq.12.1714689228740; 
 Thu, 02 May 2024 15:33:48 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 fw14-20020a17090b128e00b002a2d4bf345bsm3698747pjb.55.2024.05.02.15.33.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 May 2024 15:33:47 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Christian Brauner <brauner@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Jan Kara <jack@suse.cz>,
 linux-fsdevel@vger.kernel.org, Zack Rusin <zack.rusin@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, Will Deacon <will@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Boqun Feng <boqun.feng@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Kent Overstreet <kent.overstreet@linux.dev>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>, Nicolas Schier <nicolas@fjasle.eu>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kbuild@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: [PATCH 5/5] fs: Convert struct file::f_count to refcount_long_t
Date: Thu,  2 May 2024 15:33:40 -0700
Message-Id: <20240502223341.1835070-5-keescook@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240502222252.work.690-kees@kernel.org>
References: <20240502222252.work.690-kees@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3356; i=keescook@chromium.org; 
 h=from:subject;
 bh=aku0Ov6TP/MVYBgFlGuMSUdhnxeal+hPQHrvCM+9JCg=; 
 b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBmNBTDsTosM5PigT8MgtAILfCBKJBIs1YpjR+n9
 i4hU3z7b2GJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCZjQUwwAKCRCJcvTf3G3A
 JpwAD/47yb9BpbWzPuD0heUR6EIq/XA2DmBYJDN5EAEcjQh8e95gPvrbNsBQnT+lojr4owqsbV7
 yzKXeVQsU4C13GRWVgHZOs4DuQkYYtC0AJVHQ9LrjXn9Rgkfb928ujjbYMNhZpvfGxJ///oDZEx
 SLgxaj8AKWkuPDgKyktn25SCmT7MnZbHQ5h+s3Eu+U0PO1IeAY8qwit7+cWw0KtH0SmVPGyzLSg
 OD7OAFb7j5XoajUhOQcltZOHvQI8FEQQsMvOJxUtioIyuro1Ah2yAhiJ+Gb4IiuzreOOS5mpQY9
 rAeyVw1zgu2gR6iJ7gpPfq40oFIp3yulcggvyRh6GeikDzJhwpr9MIdIEnYpgeyTm/PgomJjyNR
 KVeoluWeWITtKvPSs1kXp33TxqrsjXk2F06HFgRPXqyLP4d/qcZhl7q6Vs8GmNlEbtLMqxJscV2
 o/JWSiqQ4VeQfHwCAZNY9enOk5CCC6Z+YwOof8OUIKsivBxLc7dLGjX+X01ttLx5GWsmPr7/RHY
 jAKBvlDq1GORFiHN/58xNQNqu1fGiicNh5Wyuk7D22DfoO0k+gWAoz/7JKx6Q+N1zM4URIMfePa
 ZwcN0ap5AIn9iwCooiNslmX4gAjKTcV7LO1fvZy8mgzRK2khRr0rpHK6qi52Vq3AMNylI0Nw9qZ
 qJGKfgmX6LueF0A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp;
 fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
Content-Transfer-Encoding: 8bit
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

Underflow of f_count needs to be more carefully detected than it
currently is. The results of get_file() should be checked, but the
first step is detection. Redefine f_count from atomic_long_t to
refcount_long_t.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
Cc: Christian Brauner <brauner@kernel.org>
Cc: Alexander Viro <viro@zeniv.linux.org.uk>
Cc: Jan Kara <jack@suse.cz>
Cc: linux-fsdevel@vger.kernel.org
---
 fs/file.c          | 4 ++--
 fs/file_table.c    | 6 +++---
 include/linux/fs.h | 6 +++---
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/fs/file.c b/fs/file.c
index 3b683b9101d8..570424dd634b 100644
--- a/fs/file.c
+++ b/fs/file.c
@@ -865,7 +865,7 @@ static struct file *__get_file_rcu(struct file __rcu **f)
 	if (!file)
 		return NULL;
 
-	if (unlikely(!atomic_long_inc_not_zero(&file->f_count)))
+	if (unlikely(!refcount_long_inc_not_zero(&file->f_count)))
 		return ERR_PTR(-EAGAIN);
 
 	file_reloaded = rcu_dereference_raw(*f);
@@ -987,7 +987,7 @@ static inline struct file *__fget_files_rcu(struct files_struct *files,
 		 * barrier. We only really need an 'acquire' one to
 		 * protect the loads below, but we don't have that.
 		 */
-		if (unlikely(!atomic_long_inc_not_zero(&file->f_count)))
+		if (unlikely(!refcount_long_inc_not_zero(&file->f_count)))
 			continue;
 
 		/*
diff --git a/fs/file_table.c b/fs/file_table.c
index 4f03beed4737..f29e7b94bca1 100644
--- a/fs/file_table.c
+++ b/fs/file_table.c
@@ -167,7 +167,7 @@ static int init_file(struct file *f, int flags, const struct cred *cred)
 	 * fget-rcu pattern users need to be able to handle spurious
 	 * refcount bumps we should reinitialize the reused file first.
 	 */
-	atomic_long_set(&f->f_count, 1);
+	refcount_long_set(&f->f_count, 1);
 	return 0;
 }
 
@@ -470,7 +470,7 @@ static DECLARE_DELAYED_WORK(delayed_fput_work, delayed_fput);
 
 void fput(struct file *file)
 {
-	if (atomic_long_dec_and_test(&file->f_count)) {
+	if (refcount_long_dec_and_test(&file->f_count)) {
 		struct task_struct *task = current;
 
 		if (unlikely(!(file->f_mode & (FMODE_BACKING | FMODE_OPENED)))) {
@@ -503,7 +503,7 @@ void fput(struct file *file)
  */
 void __fput_sync(struct file *file)
 {
-	if (atomic_long_dec_and_test(&file->f_count))
+	if (refcount_long_dec_and_test(&file->f_count))
 		__fput(file);
 }
 
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 210bbbfe9b83..b8f6cce7c39d 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -1001,7 +1001,7 @@ struct file {
 	 */
 	spinlock_t		f_lock;
 	fmode_t			f_mode;
-	atomic_long_t		f_count;
+	refcount_long_t		f_count;
 	struct mutex		f_pos_lock;
 	loff_t			f_pos;
 	unsigned int		f_flags;
@@ -1038,7 +1038,7 @@ struct file_handle {
 
 static inline struct file *get_file(struct file *f)
 {
-	if (unlikely(!atomic_long_inc_not_zero(&f->f_count)))
+	if (unlikely(!refcount_long_inc_not_zero(&f->f_count)))
 		return NULL;
 	return f;
 }
@@ -1046,7 +1046,7 @@ static inline struct file *get_file(struct file *f)
 struct file *get_file_rcu(struct file __rcu **f);
 struct file *get_file_active(struct file **f);
 
-#define file_count(x)	atomic_long_read(&(x)->f_count)
+#define file_count(x)	refcount_long_read(&(x)->f_count)
 
 #define	MAX_NON_LFS	((1UL<<31) - 1)
 
-- 
2.34.1

