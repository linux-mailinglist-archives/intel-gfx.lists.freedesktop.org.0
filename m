Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CB8dBz8fxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0191334CFC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A19410E9B3;
	Thu, 26 Mar 2026 11:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="C7gA6+39";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C44610E02B
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 21:23:58 +0000 (UTC)
Received: by mail-ej1-f41.google.com with SMTP id
 a640c23a62f3a-b982518b73fso49015566b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 14:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774473837; x=1775078637; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=B+LE/HXNoH2tzNsyegA3N0UQz3J2EZTScRLqTOMYL5U=;
 b=C7gA6+39b9mR22fR59TYCLWh4rQa6NtJzZ172PV6mYpB5tX51OeL4qcwUwwNsvo2Ki
 hS0cSOX3btS5hglr/rHtfb4WGSesOIN8it1GanMo2iK1fUE7dv74y/dOFSa4h00qkhWw
 PLHRuVpzPRxe0x0XESR/i9GJyCp1qCuUogZwHWSNtcOY8zzqVOP40Ir9ds1yx6oZfRdM
 vznd5RXevlhy47sPlsOHq5rESwXn67/4ma5Sv0fLSoeyHHLu0qWkLUUuPXKWcjjDm4xe
 oeMHFYqeEFqAS7m/+5ehNOTt956iAa48QANmOcj1TT4W1rOnFm6OcqV6T9WK3hQdaqL3
 qeqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774473837; x=1775078637;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=B+LE/HXNoH2tzNsyegA3N0UQz3J2EZTScRLqTOMYL5U=;
 b=GLBPSpRKwQe/OFhYkclWRWPci3t6V2aJNS4sikTfKxmJTV8X2mJwbsju0g6HBMSrWu
 QAKzWi+QW/PgDHVlV9/pjOul1qjayeNbR80l4LvvFH1KRJeQ/qRVUYN9cs7K5SBPX/0V
 XeJGDyQEyP6pY2o+3Cqw8T6iwJWUYoJKuOTmVQGtVjS6ds6JI+FKMHdZdD31Rj/v2SwE
 mwxhGMLRGiZmdHzOJKqYD0cVGkC3UC1gFRYCDDlCuWpitlil3+C1NTP+SOyBO+wwhozg
 FfTDEnFwTopFLBC4nIJ72GwV5CjUZV0QCJghumQplmh3jVDoheU6sGfXm5WysDdEdvYa
 vsTw==
X-Gm-Message-State: AOJu0YwBHX6FFtSsAOUpkMExfLTNBo3ZWqPwQDLw9gt3eiuC1MpIn5N+
 yP8MJdDHnzrtR7EorVauD3isr2XrV8LlF0UMPk8zdpAOSj+tZsw+Q17nTxV8wBvaQ1keoKo=
X-Gm-Gg: ATEYQzxpESatJOPruoDpOpyX5eg2HOcNMucE9s5mjVkrEtmw7z0OqK342xcd2pXY794
 GMffcSGFPc+QMwGLKKzIM1DZmlek/kEY+1twJ9CYri5Q/b2A+1hqLhBmXzmbuWlsHkpgCyVD74z
 mnmeJ1/ZogGj8VxNs9lA31x4hrYd/Ud8YzJr2w9yY1pKnwjom+rYib4a1xqd+9B9cm19pXONHqE
 sd4J+KlswNWnOnaRpqn4I4jg4fGnu0ZA9FhiE2fdTVOyaLTMl33jIo0Bl09/4yq92dFGAD3BFPe
 eyuTk9x9Y4ZZYo1kWWj0bkxWla7juJfDwt0tSMJNaWYr14aD4DzZQJ4Cp6+aVCRMkooYXkKlIL6
 O4D/Z54leK9EE467IlPG0HTT9F9F/eMz9fXdK+1pL38OLXi7NndK5+OrXvA2lltwZXIEEn56lYF
 2e9PUQ8GD5D7NFHsIbFESUvVjxjkKiseji0T7gFOw0K7Fkr8rvHrnBYGwuHPVXpdCF8/nsow3Ls
 QHTZubxxHhV6oqjoQsjbhF0NIRKSxwuo/w=
X-Received: by 2002:a17:907:61a3:b0:b99:1074:74f with SMTP id
 a640c23a62f3a-b9a54238966mr257913866b.34.1774473836569; 
 Wed, 25 Mar 2026 14:23:56 -0700 (PDT)
Received: from cmanszew-mobl3.home (83.21.104.76.ipv4.supernova.orange.pl.
 [83.21.104.76]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b9b203c0e9esm27165266b.41.2026.03.25.14.23.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2026 14:23:56 -0700 (PDT)
From: Christoph Manszewski <c.manszewski@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Christoph Manszewski <c.manszewski@gmail.com>,
 Christoph Manszewski <christoph.manszewski@intel.com>
Subject: [PATCH v2] mailmap: update email address for Christoph Manszewski
Date: Wed, 25 Mar 2026 22:23:42 +0100
Message-ID: <20260325212342.4388-1-c.manszewski@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 26 Mar 2026 11:57:38 +0000
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[cmanszewski@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux.intel.com,gmail.com,intel.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,collabora.com:email,lst.de:email]
X-Rspamd-Queue-Id: A0191334CFC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since I am moving from intel, map the intel mail to my personal Gmail
address.

Signed-off-by: Christoph Manszewski <christoph.manszewski@intel.com>
---
 .mailmap | 1 +
 1 file changed, 1 insertion(+)

diff --git a/.mailmap b/.mailmap
index 40b4db2b2d60..2efa620bf8a5 100644
--- a/.mailmap
+++ b/.mailmap
@@ -196,6 +196,7 @@ Christophe Leroy <chleroy@kernel.org> <christophe.leroy2@cs-soprasteria.com>
 Christophe Ricard <christophe.ricard@gmail.com>
 Christopher Obbard <christopher.obbard@linaro.org> <chris.obbard@collabora.com>
 Christoph Hellwig <hch@lst.de>
+Christoph Manszewski <c.manszewski@gmail.com> <christoph.manszewski@intel.com>
 Chuck Lever <chuck.lever@oracle.com> <cel@kernel.org>
 Chuck Lever <chuck.lever@oracle.com> <cel@netapp.com>
 Chuck Lever <chuck.lever@oracle.com> <cel@citi.umich.edu>
-- 
2.47.1

