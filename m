Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CED1BD5DD3
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 21:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26E5510E4EB;
	Mon, 13 Oct 2025 19:04:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="N19mMDzr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
 [209.85.166.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3BDA10EAD4
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 17:58:51 +0000 (UTC)
Received: by mail-il1-f180.google.com with SMTP id
 e9e14a558f8ab-42f7a4bf805so13342675ab.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Oct 2025 10:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760032731; x=1760637531; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mCaJXGEEoKxacl2B/5AyBFFUSkEK+Qm7rR3SS8wI7Gk=;
 b=N19mMDzr9eKdR1/lfrzPkA1PvTBzmibNeRQ2Om8CMUNm3rLEqln14ORw/og1V72SQC
 4A+tPRp/xjsSMbPh2y3ckR1ZUjVGsyRoBs7SjxtdnrTCMKBFRkOT+6JqzNTiB9/N5saz
 WQkwElcXwZswFxbOmVzp1191IVa63r8EE8ZT625QErJ7ab+Akb7AnMx6RNsgq5Sszhe3
 uGrz3mpO2IV86DaAJuu43q0bXbtQ902zqGfu7YvWN8/eEW9ddYZETAzGLAC//EmBTFdA
 g6ViGc8Y6tyZ1XdCw6Rl0WZ761a5mnyIU0mWYucIi6NMgND8fJrFj5dZiSU+G66PO18M
 0VHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760032731; x=1760637531;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mCaJXGEEoKxacl2B/5AyBFFUSkEK+Qm7rR3SS8wI7Gk=;
 b=ZHhJKJnOOWIVPfr7NzM7Aqc5UVBVb44av5vYfIfxE2Eb1vpZCCTrb3YRVJ3akJbpGl
 2ArfV069vilACYdCpBXpD4MZYHtjBz0GaVvG0wx6J1NIpwboMWqitk5m0pP58JrI3sWP
 4JTY9x3sw1Q4f8fYjA8HIAq6TWxD6SlRHl5CcPNfkQYKpM3zZto1X6ReKAHyUxBpi5j3
 69uTOkWFv6TcID1cs0b+1oP/MCle1iePcF8CukshTaaq+bunTzx/gEA+0etW2luz42LI
 GRlrtJyEaaSz3/XIjHHudgH8zMdtKxzs8+MWW7J4dpMRwcWNwO3unS421zTB+YqkCgYp
 SsLg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVOVVz06p3naCnWb9RHbIt6jV54hBM0qYtxUh3G+17jNi7ceo1hUmQ1cVRg4D2IdPgtv6Hzb9C0g2Y=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzpRdiiHQYcKuhK7p07XJr3Xgy5YegemlV7l+RmU9cPrCPM2hzX
 xKuBDKttxamGIVZnWH9YiSzV1eV9EN7lNUSS3PnNi0aRyhArqw9unOh8
X-Gm-Gg: ASbGncs2Ust+yshS/iQ0MH4zglddCECNwHYZXBxhq/XvXD8LTKb4p60zlcJOuhKie/R
 jQoXTDlF3W18SzXvoWWUiz3d/Bnfiw5c2OYJS+Aygkm/DjkOL3+M86S/sj17Ft/jB1Ms3QvawOk
 FmFrbm9E1mjJJ/6/vN24jBt/v/UOW1LbPkHq5EhP2QPwD8F5s2g8dJbfcvh+NIgYiqta2+cHtiI
 vXKDvFKX04ZNBpGa4nwpuex8auQ2oEdZg03M1x5TYD0RK8TGf529io5RsC3zVutl+mHDKLCdnya
 D2L5LayFtETaJMW25HPu2BTOjfPSLsi6AJhKDbYgr7BK4HLN71uu2DuWyntq/5pUjEKJ1Au7Nhp
 W0mtDmy18ZW/2+3nSogYrH2D/tscw5mZPn/4GumqKgS5krFC91CPn+JVlnjt+y9jsJeyFsU+7PG
 7cQEAH0GQBJOqBz5qumf/hfdh8PrMkJtcCSq/BBw==
X-Google-Smtp-Source: AGHT+IFGYwQAi6/+LnQSrv5XVqN8PJXx4dyNZG3PIv3e3G7kxepvzgPF7iyA+hTKfqnZ5PXXLeiArQ==
X-Received: by 2002:a05:6e02:4706:b0:42f:8eeb:499e with SMTP id
 e9e14a558f8ab-42f8eeb4a3amr54728835ab.13.1760032731025; 
 Thu, 09 Oct 2025 10:58:51 -0700 (PDT)
Received: from godzilla.raven-morpho.ts.net
 (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 8926c6da1cb9f-58f7200c4afsm30256173.35.2025.10.09.10.58.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Oct 2025 10:58:50 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: jbaron@akamai.com
Cc: gregkh@linuxfoundation.org, ukaszb@chromium.org, louis.chauvet@bootlin.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, daniel.vetter@ffwll.ch,
 tvrtko.ursulin@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, Jim Cromie <jim.cromie@gmail.com>
Subject: [PATCH v5 04/30] dyndbg: reword "class unknown, " to "class:_UNKNOWN_"
Date: Thu,  9 Oct 2025 11:58:08 -0600
Message-ID: <20251009175834.1024308-5-jim.cromie@gmail.com>
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

When a dyndbg classname is unknown to a kernel module (as before
previous patch), the callsite is un-addressable via >control queries.

The control-file displays this condition as "class unknown,"
currently.  That spelling is sub-optimal/too-generic, so change it to
"class:_UNKNOWN_" to loudly announce the erroneous situation, and to
make it uniquely greppable.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 5a007952f7f2..147540c57154 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -1154,7 +1154,7 @@ static int ddebug_proc_show(struct seq_file *m, void *p)
 		if (class)
 			seq_printf(m, " class:%s", class);
 		else
-			seq_printf(m, " class unknown, _id:%d", dp->class_id);
+			seq_printf(m, " class:_UNKNOWN_ _id:%d", dp->class_id);
 	}
 	seq_putc(m, '\n');
 
-- 
2.51.0

