Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C017FA2F2
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 15:35:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A315C10E2DA;
	Mon, 27 Nov 2023 14:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 957E410E140
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 07:41:47 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id
 ffacd0b85a97d-332c46d5988so555612f8f.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Nov 2023 23:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700466106; x=1701070906; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=UcnRCn9RBtyZwzYZjL7Mal3df0TOYaoALw3ajoI8ruo=;
 b=LFXow9VCsmp2GoWni2XeKg/V5nwkTeYkPZk1qJYuqMnSKDsDlVfG/5KzTo7bU/PvJh
 pSLvHgSjVqWff6sSnq6pUZLtX0rFZUDfUI1EeCxN7gt5OpBW/umNQogwM8zyv+8gSn9S
 nU3IHcPK0ONPLavYO1Q6uxebxjZctE5M2eN5TGH92bwu6hNjr2v7jLsoxdz93TASc36I
 fQ10l2s1wLSojvnbidRn6tb4x8byJ40dP9yMv6OF922ZbO89T1gU1MnckXIDF79u69ds
 EkIzKcY8rMWWRrXQhbRqgZxj+7GnXYQpVDPbB2ZOOli45ybKh8uzylZPSSVdn0q26Z71
 /xIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700466106; x=1701070906;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=UcnRCn9RBtyZwzYZjL7Mal3df0TOYaoALw3ajoI8ruo=;
 b=Pn85fBLwTcmJPk/4TPWKvMl2bDFv+kK79IIXatMCg17/+qYu0KcQhd9ppv05UoIx+Z
 Gf9xcjWcfYCVo+W0c5TQ0mRD2Yr/fFhuopn6IQp6bFAJwzKoaU2Yhf9e/fGqa61HkzWF
 vSFgnZVGPHmGNcxIovbHCYlJ4WFQ/Z6Vm36Ea0ocWVFnFHk/6tfSkKvh4aS1OHxfyXPQ
 ROuJEU3u+xKSw7kht1XR5HIDcyVBUtgjadmlo5qzaE9PjaQfXxfpgKNlzy/O8ErKSN6z
 F93U8l2p5/Wf7c8h4LegQhdklb9TRiwEPko2spB6mrJh8KUVoY+iSrj+Aq0sL7xWKwXO
 eAzg==
X-Gm-Message-State: AOJu0Yx74B4OBbJjFPOG40YsdHJyRvKvDpTGuqisWg/G3IImSp/OrTKw
 mcwmjd+FQtxgSYTi1HWie2Y=
X-Google-Smtp-Source: AGHT+IGLxhKtp3IKpPAJiweTS4UYRDByB4GjdiKC0IaFf2a6rUb8Hh+cAbWkEb3mZscgg4QSavm/EA==
X-Received: by 2002:a5d:48c9:0:b0:331:6ad3:853 with SMTP id
 p9-20020a5d48c9000000b003316ad30853mr3683767wrs.41.1700466105720; 
 Sun, 19 Nov 2023 23:41:45 -0800 (PST)
Received: from f (cst-prg-3-109.cust.vodafone.cz. [46.135.3.109])
 by smtp.gmail.com with ESMTPSA id
 i13-20020a5d55cd000000b003313426f136sm10142299wrw.39.2023.11.19.23.41.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Nov 2023 23:41:45 -0800 (PST)
Date: Mon, 20 Nov 2023 08:41:06 +0100
From: Mateusz Guzik <mjguzik@gmail.com>
To: kernel test robot <oliver.sang@intel.com>
Message-ID: <ZVsNklEgxi5GkIZ/@f>
References: <202311201406.2022ca3f-oliver.sang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <202311201406.2022ca3f-oliver.sang@intel.com>
X-Mailman-Approved-At: Mon, 27 Nov 2023 14:35:29 +0000
Subject: Re: [Intel-gfx] [linus:master] [file] 0ede61d858:
 will-it-scale.per_thread_ops -2.9% regression
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
Cc: Christian Brauner <brauner@kernel.org>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, intel-gfx@lists.freedesktop.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, fengwei.yin@intel.com,
 gfs2@lists.linux.dev, linux-fsdevel@vger.kernel.org, feng.tang@intel.com,
 ying.huang@intel.com, oe-lkp@lists.linux.dev, bpf@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 20, 2023 at 03:11:31PM +0800, kernel test robot wrote:
> 
> 
> Hello,
> 
> kernel test robot noticed a -2.9% regression of will-it-scale.per_thread_ops on:
> 
> 
> commit: 0ede61d8589cc2d93aa78230d74ac58b5b8d0244 ("file: convert to SLAB_TYPESAFE_BY_RCU")
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git master
> 
> 93faf426e3cc000c 0ede61d8589cc2d93aa78230d74 
> ---------------- --------------------------- 
>          %stddev     %change         %stddev
>              \          |                \  
[snip]
>      30.90 ±  4%     -20.6       10.35 ±  2%  perf-profile.self.cycles-pp.__fget_light
>       0.00           +26.5       26.48        perf-profile.self.cycles-pp.__get_file_rcu
[snip]

So __fget_light now got a func call.

I don't know if this is worth patching (and benchmarking after), but I
if sorting this out is of interest, triviality below is probably the
easiest way out:

diff --git a/fs/file.c b/fs/file.c
index 5fb0b146e79e..d8d3e18800c4 100644
--- a/fs/file.c
+++ b/fs/file.c
@@ -856,14 +856,14 @@ void do_close_on_exec(struct files_struct *files)
 	spin_unlock(&files->file_lock);
 }
 
-static struct file *__get_file_rcu(struct file __rcu **f)
+static __always_inline struct file *__get_file_rcu(struct file __rcu **f)
 {
 	struct file __rcu *file;
 	struct file __rcu *file_reloaded;
 	struct file __rcu *file_reloaded_cmp;
 
 	file = rcu_dereference_raw(*f);
-	if (!file)
+	if (unlikely(!file))
 		return NULL;
 
 	if (unlikely(!atomic_long_inc_not_zero(&file->f_count)))
@@ -891,7 +891,7 @@ static struct file *__get_file_rcu(struct file __rcu **f)
 	 * If the pointers don't match the file has been reallocated by
 	 * SLAB_TYPESAFE_BY_RCU.
 	 */
-	if (file == file_reloaded_cmp)
+	if (likely(file == file_reloaded_cmp))
 		return file_reloaded;
 
 	fput(file);
