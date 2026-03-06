Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBzmCwYYr2kiNwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 19:57:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D503323EFBA
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 19:57:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C9110E5AA;
	Mon,  9 Mar 2026 18:57:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OfbcGuQQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com
 [209.85.161.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC1AF10E2E6
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2026 01:51:09 +0000 (UTC)
Received: by mail-oo1-f50.google.com with SMTP id
 006d021491bc7-662efd1bdd4so6117074eaf.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Mar 2026 17:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772761869; x=1773366669; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bUT8OXayauJDeUXGjkmGNUpTYIk2PPPOV9CpVsGLhj0=;
 b=OfbcGuQQXk7TnXTWL2CayiETbUGRKuAKDLAR3z/uCEMjgD1qBeHy/yzGSMXVupEMGR
 b1I577PMAa+ymRxUfpTRQXdzugWJYIduWvXZrB54JmFZhkXboxKMmFkQ9KQZg7g1tkjw
 TjljFOJJT0AeGdaGlc4mOXCpGrgtDv2ILtydNFZ2xtcSbObXuuOS5mGaHMfL7OGpCd1r
 2mjRq9CV7R4jK6R05IaJjfIE1RYWxBoigAB3fSHA5eaOTd4A9Y0LGKth9zLoFGeVGxit
 JGMZS7rLQEu13s66hLif+27ugwoSsWUzlVvKDwgCcEWtKmmU8i4PSoV+qK0ypcrsi++p
 3nHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772761869; x=1773366669;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=bUT8OXayauJDeUXGjkmGNUpTYIk2PPPOV9CpVsGLhj0=;
 b=fy64QzGfzB81tyn5U+nB2hgX71k6fn6qtBq4IRYjlFx79X5TB9GFVZLj8LIm4v3Q58
 jexu1bpkkpmAndOoFt/mklAsJMltvCw7BJlezgLlMwRpW2b59QUA34Ee5/tyXE4mHnJK
 xMDky3sFLfeq3Y1wooDNzO2fRAeaYqMf7aJfDbwVeVTsHxU7eE1xIZ/FyQjIN+EgJuIE
 l29XRIvggb3yhbwnBEDofnq+wXK03d81W3+H0h9BKnVk/te7yUH5QSkvboAfaobdIQSv
 WvGUwdVxC3IgbNnv6lbzFKkQ22Tqz68afESBVXzAyuxcXy8EupDMwRxF7LbHyf4LC565
 H1/w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVpoJOX4qNavTi+RsmTaiRVRp2Xuxw2tc2WmRgRb5JHkTuLj/Od/qrJg8nflyfx35Ql4XIR8/nIudM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxYJsKy/fUKeVuRt0wvZZtNji/RuK6dL0bbBGVK0Ch12cEscqAw
 WKa8iVvBu1HD0zqukT2vG12Pt0HsZ4bUzOGAKMlqbNQdRKtsQqpty3+x
X-Gm-Gg: ATEYQzywIPimCeltSgrbAMfdUZNwHkrlVgXz6aeVfCKSg1MrD98pEm3iad9C4TimR9u
 D4XesFncW+M7r+9t+ndQzRn5fC5p1NAmHWXh+z3t13GWikS0VYwCRdT/8JJsuzTsMHx//Zsyznr
 H+qOIUYydcOLDEiEPk4YBouZ5gZ0wa+oqSGSeq2JYd1UVbnPGSw3uhQwoTKwff+nCC4Oi1vQASJ
 1R3ofYSl5oyK9RzuB3+BtwxepSs7ZRBroiJt6x4v12/NLSfpmKTQ3+wkz+wV34ib0wzw66aKkek
 uw3LtnreGXs70NZ8Sp/paUR/iBKDpl/J/7brZLFx7PT9d+sXbCt0tz/r6M1qjk8fd5uzQZWdpdf
 V7ocdVYF+NIJFtOBcal6dCDopDjrhNks+Zgr3jHlWbIKq2BRd40c4A2OIBFkwGfzu84yWY9eo8B
 cvTN/E6sJ9q/86uC+kEjtlIuxbvp3T1drvZzYYDcfugQLie1yr
X-Received: by 2002:a4a:ee14:0:b0:677:3b8f:43a4 with SMTP id
 006d021491bc7-67b9c485db9mr276619eaf.36.1772761868900; 
 Thu, 05 Mar 2026 17:51:08 -0800 (PST)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 006d021491bc7-67b9cc1a627sm115245eaf.6.2026.03.05.17.51.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2026 17:51:08 -0800 (PST)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Jim Cromie <jim.cromie@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Petr Mladek <pmladek@suse.com>,
 =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Joseph Tilahun <jtilahun@astranis.com>, linux-serial@vger.kernel.org
Subject: [RFC PATCH 3/7] drivers/tty/serial/serial_core: ratelimit
 uart_wait_until_sent
Date: Thu,  5 Mar 2026 18:50:06 -0700
Message-ID: <20260306015022.1940986-4-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: D503323EFBA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[89];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:intel-gvt-dev@lists.freedesktop.org,m:jim.cromie@gmail.com,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:pmladek@suse.com,m:ilpo.jarvinen@linux.intel.com,m:linux@treblig.org,m:jtilahun@astranis.com,m:linux-serial@vger.kernel.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,linuxfoundation.org,kernel.org,suse.com,linux.intel.com,treblig.org,astranis.com,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Ratelimiting these pr_debug()s can reduce the console flood during
bulk dynamic-debug activation, in environments where a serial console
is used.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/tty/serial/serial_core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/serial_core.c b/drivers/tty/serial/serial_core.c
index 487756947a96..6db465619c70 100644
--- a/drivers/tty/serial/serial_core.c
+++ b/drivers/tty/serial/serial_core.c
@@ -1790,8 +1790,8 @@ static void uart_wait_until_sent(struct tty_struct *tty, int timeout)
 
 	expire = jiffies + timeout;
 
-	pr_debug("uart_wait_until_sent(%u), jiffies=%lu, expire=%lu...\n",
-		port->line, jiffies, expire);
+	pr_debug_ratelimited("waiting on (%u) jiffies=%lu, expire=%lu...\n",
+			     port->line, jiffies, expire);
 
 	/*
 	 * Check whether the transmitter is empty every 'char_time'.
-- 
2.53.0

