Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F32B59B02
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8622810E803;
	Tue, 16 Sep 2025 14:55:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LK+0zByj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDD8110E63D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:49:47 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id
 d9443c01a7336-26060bcc5c8so29016725ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998187; x=1758602987; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OlYXyo2uZuFo7JhGyy9UUCXJlKeDR2CbpPIjqr5RgpE=;
 b=LK+0zByjxekvpitbJX+On0Zy8eWCRjbYDDy85tin8vVewSvRZNY01pftfPKgo/GwPL
 y/DeNTlWJ7nD9MA0o4YWyxc6glrjy+ppqkhTFIUiz/GjV27jq4keu/qbBIAeAg7o0M4I
 0+sRVdc9n2QmTvOg5tQWInhpKr5+rgn+pl/KcgjQGEfD9DHK4Rna1ZS/X4yfCld6fMX7
 G/ApejSgi04JSPDJSvlrek2flxslBEGkpImSW7oA2NrG1JApWqEd60Gk4L6PhSnUh1i3
 uWyjbNx6T7SRT8ri18PJith8mOJsy1ldeTeuyMLccFP0CkZ5qoY2vdyFYED3NAk9GO/K
 m5dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998187; x=1758602987;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OlYXyo2uZuFo7JhGyy9UUCXJlKeDR2CbpPIjqr5RgpE=;
 b=S1DSXQ6q99QZd0VMQ9wJCH7+nrPSYSJs5/n0UTmJxVKp6DZqHnZ70N3dGKPEZLT2vE
 iK4eTKDVNcGRTDB349nA8EbskokBpL6P2xZh2nF/QVb5r75e373hNA3sdxKQ9EIVhhae
 McFDs5LIL6E4J+e4LPfv2mUkdrleu8DgMZDfaBFaUnWYUqXYSWCYZ884g8jSK9BHTFBX
 I5G5zdbRj0afBTMWP+7eEYfb9zBBEELjuMBAlPRASoDql8p+N4jGJCrJ/2IpVS4O6Nv0
 QHN8HbmF8gmI8NISgpBn3jdZukWDuPDvICOTaVy/qZl5KDJaSsBJL8ucvpAZsoRqzkgH
 BUlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVGf+zDeEKPgJFsgwExlX4OLu+A+/NTlDiFoFaW4xW2GgTCzL/wU5+rn8LL+MLVNl0z29HewZ2DMMw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz//86NVo2iE0BfnFDIw4KckV4WOcL1b6hJXXSZ960bi/z5F6g2
 cKFcshExNAFml5sEbcB6DuSTJ0gu6CBYUBKnCHFOv+ecGmF70ij8hqnP
X-Gm-Gg: ASbGnctZwN++VeOnn6U52y84k/1/cinBUtEZB71OKPTwk2hBkNtlpPm/GuHbULLfO+1
 WyKkqM+pKMLkFNRsJaZXRZCkCUHrFm/CGEkEmqBh0t1J6adn57QYj01eSjHyFfk9U3gegUaOzH8
 M8A7dpfZnJNuVLayw/+32mcnHn/m6eeATHu2CVSYf4R3UlEZElzOkOVAeWPKxRPHcy4/65utJGk
 8z/g7LKp8xjePo3QfZcynHG3I+JIX+Ng24oLCgr8yTDuN7iYDmea3WFlkk0FcZBM9ZugrKW+alg
 Umr0Xeq9LSkb2O7TyLW/pZKSwpyX44yD4o2o846VrT3zrJYSAOzWoG544MwnODt44oeLAUuRwiC
 OKIhd7ynwblJgXL3VSZzY3jztsKmAgq4vZRNNvcKqqQTtNzilYA==
X-Google-Smtp-Source: AGHT+IFV4zbzh4iycIfH4WDU92suC0bCanMglT0Ogl2GwpwL8kM68NHrYSygkh1AIkIcAzvJhqwslA==
X-Received: by 2002:a17:903:2f4f:b0:24c:99bd:52bb with SMTP id
 d9443c01a7336-25d267641camr179941415ad.30.1757998187203; 
 Mon, 15 Sep 2025 21:49:47 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.49.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:49:46 -0700 (PDT)
From: pengdonglin <dolinux.peng@gmail.com>
To: tj@kernel.org, tony.luck@intel.com, jani.nikula@linux.intel.com,
 ap420073@gmail.com, jv@jvosburgh.net, freude@linux.ibm.com, bcrl@kvack.org,
 trondmy@kernel.org, longman@redhat.com, kees@kernel.org
Cc: bigeasy@linutronix.de, hdanton@sina.com, paulmck@kernel.org,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 linux-nfs@vger.kernel.org, linux-aio@kvack.org,
 linux-fsdevel@vger.kernel.org, linux-security-module@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-s390@vger.kernel.org, cgroups@vger.kernel.org,
 pengdonglin <dolinux.peng@gmail.com>, "Toke" <toke@toke.dk>,
 Jakub Kicinski <kuba@kernel.org>, pengdonglin <pengdonglin@xiaomi.com>
Subject: [PATCH v3 14/14] wifi: ath9k: Remove redundant rcu_read_lock/unlock()
 in spin_lock
Date: Tue, 16 Sep 2025 12:47:35 +0800
Message-Id: <20250916044735.2316171-15-dolinux.peng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916044735.2316171-1-dolinux.peng@gmail.com>
References: <20250916044735.2316171-1-dolinux.peng@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Sep 2025 14:55:20 +0000
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

From: pengdonglin <pengdonglin@xiaomi.com>

Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side function definitions")
there is no difference between rcu_read_lock(), rcu_read_lock_bh() and
rcu_read_lock_sched() in terms of RCU read section and the relevant grace
period. That means that spin_lock(), which implies rcu_read_lock_sched(),
also implies rcu_read_lock().

There is no need no explicitly start a RCU read section if one has already
been started implicitly by spin_lock().

Simplify the code and remove the inner rcu_read_lock() invocation.

Cc: "Toke" <toke@toke.dk>
Cc: Jakub Kicinski <kuba@kernel.org>
Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
---
 drivers/net/wireless/ath/ath9k/xmit.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath9k/xmit.c b/drivers/net/wireless/ath/ath9k/xmit.c
index 0ac9212e42f7..4a0f465aa2fe 100644
--- a/drivers/net/wireless/ath/ath9k/xmit.c
+++ b/drivers/net/wireless/ath/ath9k/xmit.c
@@ -1993,7 +1993,6 @@ void ath_txq_schedule(struct ath_softc *sc, struct ath_txq *txq)
 
 	ieee80211_txq_schedule_start(hw, txq->mac80211_qnum);
 	spin_lock_bh(&sc->chan_lock);
-	rcu_read_lock();
 
 	if (sc->cur_chan->stopped)
 		goto out;
@@ -2011,7 +2010,6 @@ void ath_txq_schedule(struct ath_softc *sc, struct ath_txq *txq)
 	}
 
 out:
-	rcu_read_unlock();
 	spin_unlock_bh(&sc->chan_lock);
 	ieee80211_txq_schedule_end(hw, txq->mac80211_qnum);
 }
-- 
2.34.1

