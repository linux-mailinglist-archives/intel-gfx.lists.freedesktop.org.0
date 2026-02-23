Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJ54NBixnGmxJwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 20:57:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 335EC17C969
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 20:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0CB210E114;
	Mon, 23 Feb 2026 19:57:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ObjHHjeD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6123F10E114
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Feb 2026 19:57:08 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id
 ffacd0b85a97d-4358fb60802so3480747f8f.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Feb 2026 11:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1771876627; x=1772481427; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=tw/RWWMMz/LUZJDIOpoJvir9hIIBp+8IjqKcLBJIVLA=;
 b=ObjHHjeD0XJH/nXP9klgttv5LE7lDB5PeebJuRmt/mFP8LvO3YPwmDgZQOCn2ckPOk
 skbsHNl1oHj3kzASAMaUyzkL/eLBuRC63Whndu4lCHqSZuovxIm/YIRryCHxoWRBf7Zu
 td6EK+cPbKK7vFZ7zOnAK8dqoauGH9LCJyS7O9ptubk/xqLubYgpVxY7f8lgc0U7BJTS
 YvfMBY5PpHYSDIPFxSELanmxrLPz8YriUbIsIs8nxEmwepg7zxIeVMC8mfv8aUS69TYr
 l6W5eskCVXKnU0IatlGqyFYBuu7PudjeflnK2HeYFT6tWb5P91DgOE9qeUneHZf386lY
 j0Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771876627; x=1772481427;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tw/RWWMMz/LUZJDIOpoJvir9hIIBp+8IjqKcLBJIVLA=;
 b=XkvVohj00aym8/Hv0LXHL1+LlA4xSYd1lHT818G7jobdciIMueG/E1QJinqXEa3D40
 Br2jWOqllcIg07SfEpZE+r8fzV6uDdEuq68Cc/vgtBeQPhbadCA7aXMVUoV1WkhVdNoG
 eSz1uvAq8Lc8NQtqii4Rx969meOvzRbdobXTLRIj0bah8MY8O8+m2B/KnAHf7zvwKVJa
 c18Q2LBPp4MGbaSEFrT1kQfUZ0DmTqGES7r0PWuIPtQjKMWKmZryDUVZiqCcXlqZvzrw
 w+La5yTMPC3bwDiEROauy3NakIElqlPpKmxyaskPFeCcFR18F7t3jjL9bTJTN5eWfnMl
 fQ3g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVigTOX7W1HRElqNKkMaGDFYobVSyPISEgzkPQm+HCH1wQ23tF1XIqJ9UK7gcyi/4S2WuFTmoFoOYU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwSl6TLXsqUez/rL46Mr1Ehb1HuV54k+AZxftC/+id0CrihyF18
 +e3nJ2JV7up+YEpV3atpRTtmzoHEXQYZH4sdB9e0RNOMYK5qw/n6DCkR
X-Gm-Gg: ATEYQzyLfCwOrq8gdK92fQTh+GTcywf99K6yTd2UqdoEZYFHg3p5geicDGUtzx90d1G
 L0OTsoUaItX0+SL+mjFnsNEzwsIEHQE5a7gaXW6fFnHHZgcxN/ILF8M3TqxLh4x+cx+C+e6vQoM
 3nL1EZHNKiRXUhRRuPvbU6bTmKXaF/1ywjMXL7co32Xd+PqxpgaEGaLFA9cfrpo3GGk0pUZNRhP
 cTLmbECTBkMYf/6LU7HefKrpBKYXGcHeXf7Cef5iTE6WA3wqxn6OQ7o6Q3e2bD4o+V1TFw4OZoB
 7Ho1c9m+KMqo399KISVEVUTghhKLolS/Wka6cQHhja7evGfs3IwEJ/KeJ/uTpIpYxMuIUp/dc7C
 WyA0mHV9docfJwil2zCRCWfRww+YpfhrzuCDkiovEzk9CrmNFmzcVzchEuPcj9xgPdss9jM7lLO
 EAdRQRP3/Z6fhOFCk/n+wiVwD+j9ncLmmV6sfxVWhiejWeveI=
X-Received: by 2002:a5d:5f82:0:b0:436:36cb:70b7 with SMTP id
 ffacd0b85a97d-439626c745emr28266383f8f.7.1771876626593; 
 Mon, 23 Feb 2026 11:57:06 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1560:9500:6003:d1d5:d313:52eb])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43970bf9f6csm23555492f8f.7.2026.02.23.11.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Feb 2026 11:57:06 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: matthew.brost@intel.com
Cc: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH] dma-buf: revert "use inline lock for the dma-fence-chain"
Date: Mon, 23 Feb 2026 20:57:05 +0100
Message-ID: <20260223195705.206226-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:matthew.brost@intel.com,m:dri-devel@lists.freedesktop.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 335EC17C969
X-Rspamd-Action: no action

This reverts commit a408c0ca0c411ca1ead995bdae3112a806c87556.

This causes a lockdep splat. Not really the right fix, but changing this
is more work than expected.

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/dma-buf/dma-fence-chain.c | 3 ++-
 include/linux/dma-fence-chain.h   | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
index a707792b6025..a8a90acf4f34 100644
--- a/drivers/dma-buf/dma-fence-chain.c
+++ b/drivers/dma-buf/dma-fence-chain.c
@@ -245,6 +245,7 @@ void dma_fence_chain_init(struct dma_fence_chain *chain,
 	struct dma_fence_chain *prev_chain = to_dma_fence_chain(prev);
 	uint64_t context;
 
+	spin_lock_init(&chain->lock);
 	rcu_assign_pointer(chain->prev, prev);
 	chain->fence = fence;
 	chain->prev_seqno = 0;
@@ -260,7 +261,7 @@ void dma_fence_chain_init(struct dma_fence_chain *chain,
 			seqno = max(prev->seqno, seqno);
 	}
 
-	dma_fence_init64(&chain->base, &dma_fence_chain_ops, NULL,
+	dma_fence_init64(&chain->base, &dma_fence_chain_ops, &chain->lock,
 			 context, seqno);
 
 	/*
diff --git a/include/linux/dma-fence-chain.h b/include/linux/dma-fence-chain.h
index df3beadf1515..5cd3ba53b4a1 100644
--- a/include/linux/dma-fence-chain.h
+++ b/include/linux/dma-fence-chain.h
@@ -46,6 +46,7 @@ struct dma_fence_chain {
 		 */
 		struct irq_work work;
 	};
+	spinlock_t lock;
 };
 
 
-- 
2.43.0

