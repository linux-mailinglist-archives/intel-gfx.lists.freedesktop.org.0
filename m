Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B6985E6C7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 19:56:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E395410E7BF;
	Wed, 21 Feb 2024 18:55:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="2874YRqe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F8E510E7C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=metux.net;
 s=s1-ionos; t=1708541751; x=1709146551; i=info@metux.net;
 bh=WSgMjBHAAfRKt4q6Wz1oGIiefnUjP3iac9aIzA6m8VY=;
 h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
 b=2874YRqe4QmKEPY6bKN+s/yjMJ6J+jkx2auW6kRQHBd0F4fELOfXmw9u2P60+AEC
 VnoooqrZ59qcHQJ2ahTJHL2/CPQcr+lecu7qGcPzxqLtKOmQuRHL7IXbWrV0mDJ+6
 Kq807AikVbgiK5WCNMOWXXIoTLkEauQFAr6XkLvcX7oGeFRzBbSAhrLxf+BUNqAjQ
 p82q3+wsoFTmhSiP6+HatIz36m6jDf9izq+OZFsPknDRrbmhhqXD1GP12FR7mLK9o
 BqpzIM6KK8WE0K5phfOi5OrIiWrJ18uM4rRzkdFYq+OU/6Gga4E3wnFuy+YrQtFoS
 LHgGTI/l1f9UFRedeQ==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from orion.localdomain ([77.4.30.125]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MLRgp-1rKv8G29wZ-00IVAE for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb
 2024 19:55:51 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 6/6] uxa: stop calling deprecated xf86_reload_cursors()
Date: Wed, 21 Feb 2024 19:55:50 +0100
Message-Id: <20240221185550.11943-6-info@metux.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221185550.11943-1-info@metux.net>
References: <20240221185550.11943-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:jKpfeRS3qbUvUZy3wCwFY3B5l7zLiX6ZbciZ2RJ+3GdSxZpOUSe
 wd9NYGibTSZByIxH9l/tHQFWumh/sg7kVcFG/xZ62mVQ5s3lkz6gxd/FiFppiGGocaR1veA
 SiZd2hsZfpgi3KYF3TDF6LqtgMQr5vykrQsvRrsxsND01C0hYmftx0jh6a5EI00IWsr9jXr
 Lv99/XffLXMrefb75Nrow==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:wm12eH2mfH8=;4o221Co7nucGt2lodQ56aPuBZ6E
 SYvxTn5yCtANNYaJ//L+TXQnr6JvqfKs1+RHDsRCVDwUXXV0JuNEX8/mI5GyIxuCKsBfCy2t6
 ClnG7BtqO++mb+vauxI5QrW5aP0ELa6he2fW28u29bOomJDQ1DPK9kypB5CkWuaEuM1DBLV33
 yM4DKFgsGOKMaOPh4Niskq/ock41lgGdasCHKuZCljuhDVImwk0NuXjAIfW/Ecq2CjTdMdWr+
 NPfzVhyIKjOnF97miHKnI1RlKfwVstiCccZ8GO0BlEb38lvcoFELCWnQJdrYJtBZdvwjw3qNu
 mflL60R/lOaDX5T9KYy2XmKNek+Krs2t9zKq+ZL+NEA2k/U7MkRn1uKQPYqWr3TzgIJ0a5h8y
 nijFLDWSbyxOoOgp4nVDsGTIc+TJxoqzpklkLbvPtWvbdyJNLV2s8cZlvalGmeJNP2BiIWR6N
 fw+rL9666WKNqSCSzL9R+SLwtNLUmF5ZtZoCdnVmuB12IiEfV8TGtouVSDWWPq31fB4CsbMgo
 JBvIxx3xFBB/YFSXkWS1bcn6TQbTdrHDerqrwosGER5pVmAjn+9xAfuVhYysUu9cU8Zw5mkyK
 JPVE5PHrcXXju6kWfCvbigpah52D1z/s9w6jm6OtqOSzz/EiaFv1kOCni1R4pXYPa02fVxYPj
 uX+d41iR0j4ZGXI8KSHbTreotTTWd0xluOxoDcK2CsmisxbhG/QQGHQJld22ARpUkU098rG2J
 AqI/VwpNL3auJzornh4jtVd+uHOG6Tz6aOnfDW5l72K1TcJTJP+VLs=
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

the function has become a no-op, it's former duties are done automatically=
.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/uxa/intel_display.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/src/uxa/intel_display.c b/src/uxa/intel_display.c
index ba4b8d87..ef5962eb 100644
=2D-- a/src/uxa/intel_display.c
+++ b/src/uxa/intel_display.c
@@ -393,9 +393,6 @@ intel_crtc_apply(xf86CrtcPtr crtc)
 		}
 	}

-	if (scrn->pScreen)
-		xf86_reload_cursors(scrn->pScreen);
-
 done:
 	free(output_ids);
 	return ret;
=2D-
2.39.2

