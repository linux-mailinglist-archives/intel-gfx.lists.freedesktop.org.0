Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEeeKvsXr2kiNwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 19:56:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A02123EF3B
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 19:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BBD810E595;
	Mon,  9 Mar 2026 18:56:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PX4ZsstA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7698310E2F1
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2026 01:51:13 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-7d4c543472fso7569874a34.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2026 17:51:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772761871; x=1773366671; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Kg1pvIkGDhzpoqZiSRhgo/PesZkDB1/rihGlwx1MvAg=;
 b=PX4ZsstA23W9ANHLJGKInjgtZrPOrQmVQ4dUJDtASoI3qPHAxqP47KuELeMHfPyVsO
 K1iO6H2bo+tyr4yKRKgYhSoYd8cOvn+FS/7OWp6rVkpuo1cAkWq9WBrDOTKEz4sk8cOl
 J/OmP0Yd7wx7NA2bzBCOMAtpafroKpe2UxMRkurHoCEqZTC9oaJuJmOLaCkLFaajbTJ+
 YtwGuzQajGzpl5d4ccWim62Cr9XliIDl+BL91bEPleWENL/SK4VuTRoVuLQEX9Jc/uyi
 g19/Rwpc8Lppm5jBfCqTtEpaSqL33Ml3rCrT+dPizA3g1+rGa8o675Sjb+u2XysXPOkQ
 bA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772761871; x=1773366671;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Kg1pvIkGDhzpoqZiSRhgo/PesZkDB1/rihGlwx1MvAg=;
 b=QikoxleQDt/vO6B01GN4urlSiZqPmrNDGDI2frMUCoTrT8rV1enSpTH5MfJ6GZthyz
 4NiXyc2XGToOjQ6zIUJT9rxvjJHXmFF4gBUA77SQsEQxyS4aW+tgKdaaiLuHC0SW4zXb
 N0ghObj8cF2hxb5h1TYm/NTCGlf+MrJvbmEcYXtYsj11ImPOmOIyHgJhieA49fzNtRPd
 xCQwj6h4Z/OJU1rTigbt4NtNxED19GiwpDNYIzBZV/WL72PZLHPyQeFruVPaIvULEmck
 SLdPcVnuh5UivLpKxmzSvQNNVl8Zaz44JJmDgUjVBlp/AjwgdZpXkFt2JQeIJGwGyjAA
 tTgw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVxxDwiGQLMib0Qs0Cuc5hjxCqfKC6p9eHOmbAnztWbCDmiE3Rfnu4jOxv6k+N/HLBOhT/yYWbjgNE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxb2n1GGEK7A3SbC6Fwic3UfKVKv4yCfohxeUGCtkaGhaXe10oh
 6apW4gEVvCQ4VgC7zYX3N57f5JVc6x6vuxlXp65la34neeI1AMo/2eG0
X-Gm-Gg: ATEYQzxCwtcNUG+394XrljXViHg5UN1S12/tRHJdwBeSHF6rB3mS1l6QJ14LcMzZ7rO
 i7UM6bqginH8X4aQxv1etILRdyuumXTfIII88IfuxLJpfmSKaoSN95W/xq2sTbxRLhSzSCNKZeQ
 cOQxajJPvg82QWo0/Ug/xfhcsZaF7cUk72WgT+QVjhEi6Q7xzBSH4WHz6NETFXkSFz5KjhTTTof
 jICwjYjZ+qTG2VFReBHdb4xRoKUE3ypt1V7zoXyhEuX+wSJ5yKlJvP7ub+EzqcnBLizfih1oWzz
 RycbuFhp0yHx9xHPZwylUJWckUWYwRrY250R9IubrVMisd18Nh9VFoDC0j55RBVnMpNIX3ZVOJ4
 zOS9PIndnkn6tWKlxIS2p19JfEvo8GDJ2FhBrUfV8JFPaf8PN8PCEep9hX/G1w0fF2m5VxFV8sx
 S1bUpZXwYWKsarTwIFokgds2ddYYMxj65tvYwt1JPDrY1HX1rG
X-Received: by 2002:a05:6820:1521:b0:679:c5f3:b1fe with SMTP id
 006d021491bc7-67b9c35cee8mr289127eaf.5.1772761871399; 
 Thu, 05 Mar 2026 17:51:11 -0800 (PST)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 006d021491bc7-67b9cc1a627sm115245eaf.6.2026.03.05.17.51.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2026 17:51:10 -0800 (PST)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Jim Cromie <jim.cromie@gmail.com>, Jason Baron <jbaron@akamai.com>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [RFC PATCH 5/7] dyndbg: hoist static_key_apply_queued up
Date: Thu,  5 Mar 2026 18:50:08 -0700
Message-ID: <20260306015022.1940986-6-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260306015022.1940986-1-jim.cromie@gmail.com>
References: <20260306015022.1940986-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 09 Mar 2026 18:56:53 +0000
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
X-Rspamd-Queue-Id: 5A02123EF3B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[89];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:intel-gvt-dev@lists.freedesktop.org,m:jim.cromie@gmail.com,m:jbaron@akamai.com,m:akpm@linux-foundation.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,akamai.com,linux-foundation.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

hoist static_key_apply_queued from ddebug_change to exec_queries.
This can reduce IPIs when multiple queries are submitted together in
the same command-buffer, as when they're separated by by \n ; or %.
It won't affect single command submissions, or settings of
class-map-params, which are submitted 1 bit at a time.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index e555a8dbdc27..80fa8d2143e8 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -386,8 +386,6 @@ static int ddebug_change(const struct ddebug_query *query, struct flag_settings
 			dp->flags = newflags;
 		}
 	}
-	pr_debug("applied queued updates to %d sites in total\n", nfound);
-	static_key_apply_queued();
 	mutex_unlock(&ddebug_lock);
 
 	return nfound;
@@ -719,10 +717,12 @@ static int ddebug_exec_queries(char *query, const char *modname)
 		}
 		i++;
 	}
-	if (i)
+	if (i) {
 		v2pr_info("processed %d queries, with %d matches, %d errs\n",
 			 i, nfound, errs);
-
+		pr_debug("applied queued updates to %d sites in total\n", nfound);
+		static_key_apply_queued();
+	}
 	if (exitcode)
 		return exitcode;
 	return nfound;
-- 
2.53.0

