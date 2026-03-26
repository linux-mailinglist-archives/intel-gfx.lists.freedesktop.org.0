Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JakHk9zymlQ9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED37135B68C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7AC010E6E0;
	Mon, 30 Mar 2026 12:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TjqwWb5G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com
 [209.85.160.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB13910EAF8
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:54:31 +0000 (UTC)
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-41708f6aa5fso873544fac.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551271; x=1775156071; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gYmxGb7uQeQFtcBU/KNsuA+yly7Rfm4LYjwUpGocOHU=;
 b=TjqwWb5GfAnUTWbVAzSskWTaDEPtTz/b7OPVQN/5Ma5Wuf1I567u6DSkxA7iOaovgQ
 IDzHtKn+TzhVCrYhcnDKf1k5sTOpzmgWDa9s+Y3ACvs5B0Xivzk6m7P6CEggnzumVrnS
 buj+xiaFONeP2nQYiZpNFCh8JCghweLMKIGfsdRLyTsvSULY0uO4KexWEIGU+9taJgLA
 B7JUTKsQfvV1BvRc5oXaAkYNK5qgUlSdWN8J6Wo1hGI/bSHnVzWsw6aIlz7/m3lnwZc0
 jwyrC0Djr9CSuXCXYPAzjKO1vEku83BXVv+e1QmnouzWVkOzW23qUQgQ1WRfPqALUbYH
 MsJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551271; x=1775156071;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=gYmxGb7uQeQFtcBU/KNsuA+yly7Rfm4LYjwUpGocOHU=;
 b=jWTh8WU+lfNMxT/PhRLHMMdFIHNIwql1YJB9HbJSSrpV2LGmbc4eoTGeXl9U5bY9Af
 G2sxQREVOigwMdfj0khaX0BTjEqv8tXCKNkBK6Vgf7IJWJPhOeaoLUn3z2+/ndeZqs0i
 zZuSqlf3S3Sfelp/wV/zlIQW5icmWY6GK2jdo7dtnux0W+ZdT6z9oII7rOpuPcZXelrY
 M0BCPik1RabgeG9xGs6zhBjnFkkyFKK7gs3nBweKpSd8ipFmfaVr1/koi6XyhMJ7Md6Y
 vMjgPT+W1Z5+g1luEx8xqjvyVz9V8p8rXkuljh7fgNN1ub+QYppWZIjJ2nO4w14UT06F
 ibHA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWlJcpHm/LWzdDJtV9x5X2vCTNx32qHw/uGKl8JEGamrbN+AvkF89662W3jaqbScVTeVafejjWzmuA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyHaUKO41BXSU/tqIDcHYApic7gZv8PyjT/dhJ0FxERZ6KqS9Li
 u1oRJ7tpyYrPfO+PiIaWDz2XoxDTGe63NCyOO5JVjqpE1+jWVncFa36Z
X-Gm-Gg: ATEYQzy8bLgUscPTdRY7/KTTXt8yXxl7XUQ3ap8ZNKUnO9EOcSgSXnhs1zhmNpM+IGu
 X4KXHSjPBVYseBgA0TLV6O06vfErmrkBWYvBO5QE9qQqzArghRvVLLyYwvLlfqfGot7/qphXbVL
 yEcRwz3qC1N1glAkDfbi7sbCtC4T8/AL1aDYuNL/DEo1GNth20Rse/Gh5tToDF2sC/mZDQxbxNW
 ZSODtdAxP//uFBbDarzUYFB8l3tKFgTuOULv9oBRxqpp0SF/nMgboNl6A/gqrgbPoZ3rcNE1PEx
 YFlEROO7dHW9uNm+Q6RvSPwzmuGmoMl5Ir621LEfbEyXlb6udah+7wpp5vUgE8wKi2Y5lkEtm6v
 VF9wtBJ/G7bplS9Gg/LXSVcmniQde4NZDCiW0H65uoZlltBgVhtIuWvx8Blw2P0nBhSV3LICr1b
 jvyt+k95NwqS52g2DVWZgApFfFhLB5mBM7+zAj5Dh+lBBKB3ld
X-Received: by 2002:a05:6870:8131:b0:417:ab68:fbaf with SMTP id
 586e51a60fabf-41ca6ddbde6mr5024881fac.20.1774551271056; 
 Thu, 26 Mar 2026 11:54:31 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.54.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:54:30 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 kernel test robot <oliver.sang@intel.com>
Subject: [PATCH v12 01/69] dyndbg: fix NULL ptr on i386 due to section
 mis-alignment
Date: Thu, 26 Mar 2026 12:53:05 -0600
Message-ID: <20260326185413.1205870-2-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260326185413.1205870-1-jim.cromie@gmail.com>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:oliver.sang@intel.com,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: ED37135B68C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When dyndbg classmaps get used (later in this series), the
__dyndbg_classes section (which has 28 byte structs on i386), causes
mis-alignment of the following __dyndbg section, resulting in a NULL
pointer deref in dynamic_debug_init().

Fix this by:

Adding ALIGN(8) to the BOUNDED_SECTION* macros.  This aligns all
sections using those macros, including the problem section above.
Almost all the other macro uses are already ALIGN(8), either
directly or by being below one.

Removing BOUNDED_SECTION* uses in ORC_UNWINDER sections.  These
explicitly have smaller alignments, and using the modified macros here
would override that aligment, which scripts/sorttable.c does not
tolerate.

Move __dyndbg section back above __dyndbg_classes, restoring its
orignal position.  This is cosmetic, given the alignment added to the
macros.

Reported-by: kernel test robot <oliver.sang@intel.com>
Closes: https://lore.kernel.org/oe-lkp/202601211325.7e1f336-lkp@intel.com
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/asm-generic/vmlinux.lds.h | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 1e1580febe4b..58daa551420b 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -212,11 +212,13 @@
 #endif
 
 #define BOUNDED_SECTION_PRE_LABEL(_sec_, _label_, _BEGIN_, _END_)	\
+	. = ALIGN(8);							\
 	_BEGIN_##_label_ = .;						\
 	KEEP(*(_sec_))							\
 	_END_##_label_ = .;
 
 #define BOUNDED_SECTION_POST_LABEL(_sec_, _label_, _BEGIN_, _END_)	\
+	. = ALIGN(8);							\
 	_label_##_BEGIN_ = .;						\
 	KEEP(*(_sec_))							\
 	_label_##_END_ = .;
@@ -869,15 +871,21 @@
 #ifdef CONFIG_UNWINDER_ORC
 #define ORC_UNWIND_TABLE						\
 	.orc_header : AT(ADDR(.orc_header) - LOAD_OFFSET) {		\
-		BOUNDED_SECTION_BY(.orc_header, _orc_header)		\
+		__start_orc_header = .;					\
+		KEEP(*(.orc_header))					\
+		__stop_orc_header = .;					\
 	}								\
 	. = ALIGN(4);							\
 	.orc_unwind_ip : AT(ADDR(.orc_unwind_ip) - LOAD_OFFSET) {	\
-		BOUNDED_SECTION_BY(.orc_unwind_ip, _orc_unwind_ip)	\
+		__start_orc_unwind_ip = .;				\
+		KEEP(*(.orc_unwind_ip))					\
+		__stop_orc_unwind_ip = .;				\
 	}								\
 	. = ALIGN(2);							\
 	.orc_unwind : AT(ADDR(.orc_unwind) - LOAD_OFFSET) {		\
-		BOUNDED_SECTION_BY(.orc_unwind, _orc_unwind)		\
+		__start_orc_unwind = .;					\
+		KEEP(*(.orc_unwind))					\
+		__stop_orc_unwind = .;					\
 	}								\
 	text_size = _etext - _stext;					\
 	. = ALIGN(4);							\
-- 
2.53.0

