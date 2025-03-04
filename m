Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35449A4E4B5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0302F10E636;
	Tue,  4 Mar 2025 16:02:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="in2+HS7J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97AD510E62B
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104121; x=1741708921; i=info@metux.net;
 bh=ApA7vI6COL6QV4EMo+Qj4+q5vFtaYc53bzyF2bYZ4y0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=in2+HS7JpEryZjAEk7K6efH8XqicXwK4e0hw2tjGhZsnG369PB4uKrDmgLseuYMF
 U0XSANqPVYKyCTKKrzWqVCMj7bs16o+BkqamTxWB//ICgyqXYUBagTsDKbhESGAUM
 c1lISZY7VHFggo1xnh8Hg9RjfMqLeZHBezgvU7/sCo0ZbrrDyjhT+nb/mIg+vyqve
 0/BUftAH13kTc2z3p3wD8gGEmZOheAqutgliSS7Wuyc//LxvMKU1Kml3JyU6z/ppB
 nASFHEd5fUG8CsXwLBqa1uOAyziulm/5WPBPVfcOPWYn+S0ST4EiQ7LQjTEjxAqvR
 LwnS7GjWUqOAm0xq5Q==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MYNaE-1tkaor23MY-00Pfyl; Tue, 04 Mar 2025 16:56:35 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 14/16] Define __container_of only if not defined yet.
Date: Tue,  4 Mar 2025 16:58:07 +0100
Message-Id: <20250304155809.30399-15-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:udiS9uvVqlZ1qMy+HIRZLMe1HfdDLTU+kb4XBaDTruZONHAryer
 ay/xU286Z5d/DjsfVXsv8ZKWHRtsD/8Jw7rkQeoiqd7Zgx1FEnafgIhRDlChXmp5NzAp7FB
 /iXrd6D6apDFyT9dy1bPk8lGJsgKRhfaXDi5rlDjFZ1zIBAcylajV9Ryq+lA4cjxG01Gq4w
 FA15U5DMdKSOeD7ZKUPCQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:RATZoGLiV2o=;UHOLUdC7y6GoIeCcc+mDpmvsXTv
 PHJyxL31wY76ZdVwmfaiSbu7dmgUImVc3nWXyt4bqD4JJfSysCqPSUGFPGnW4R0QFgzDYl3Mn
 UJS5CMDPv6yWzlgsWNp8TTNkpSqIz8JKhQ4mSqBp/BHMTPlzVxqAQNy8baJBeiOyQ2qtykidv
 5dympoOXIsfPZgkjpCBQ8u3867Hk79s12VElbKa2jUNsBS0LCVsvO9/sx+hoJVWoSvLubhu1I
 q8SzdRxVi19C0RhmiHA2k4vx9gqDWY+TJitP8hBrYv+LpqH1WbVom6IAgaF/rZREne/YsJnly
 3zwbzind8Dd5IlJJ6xEINBLUMr302NdZvnrdD+L7ES6Nu4hrO6yJgFAkcE5YqmQZfVuIFYExG
 aNhTlV/GIlHbsCX79IcQynnm/R5DoOFaZLEihXky999DxcoBXfe5tOQKeWMQ9oJ+UnNpRdwIU
 X3bLlWOAwCmdC6Bb5FTf3ab9MuWA2Bny/e/eq1x8hs0AhzV168mtsZyg/IEdmgFOkhNC85Naa
 bYKccKXnzSr8wxG/DMv7mhWUMsnPLXc3vyOxPTn0UcYjzXFnMT0j2amw1hfdc2y5udVnaCt6e
 ihOxbEM5/TuxvUDDLofvHATobvGoTC0bPeFJVs5qQvfJyvIrJ3wu1WyoXMW9LRuDTjMwTkxHs
 h2AbQylJUKRVfl2THU286sEjokCAX3r3w3s7dkIziEmjBu+JqMkFocPuu7hwqAD0i2ZE8HJ0O
 tdNL4fTkLUpKhJZ56CRoLz27919YI8RVtk+CeI1WgU6S2+UxNB+kPBCcclFk39tJOalEExITE
 Byhh0Vxx803P21G+0Admh4icdgdDM3z1QbwmCGA4hJqQQpWDvDb6oHZ44LdInv+1qOwhZBlF7
 M+vAYxkAe5ix1mvcRAEWvglRw2g3Qa5l+hps2IZkXsBgx4XycgFmEYwOxHPVnrdPZFyV7+q57
 n7DADo9v4ReEFZ1vxMwLnKGgfNGxDGUV9V2X888D2WAKccRJK5linzRxwIakO4dclg3Kho3yJ
 xXY1xYkNNy2Ql3v6WVuzv9M6uct0inwi4wcrIqgITDw4ew98TcR8O8SA5UhKzxjvi6D0TPGYn
 FWqXRpma82uGTR890x1ht4uAAs69A1Ywi8liC3/C2SH2mJsxcAPngtibO/dv86NTv7F/wD1dq
 7mAiQH4+4yGrjzONQvqJdIIZXwcEXozLvRS0RKzb7Lt11D4aZESGBb8eNcgNx9z8fgsJlKcgQ
 U2Hhp6EK+KHrZHGZexRekaQySgBRoEeL1O0kL2ihRrZKyIrpjV6gZgrr65geTQ7L6KAkFx4lW
 8/UdlGhgDrYMNNUJppmlBfmCoh0TWdEcRAczdWA+NGS2GmSqipXM4eNHbRIQqv08RO8p1H0LP
 Slz0KemGhWW2ipyA==
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

Silence warnings.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 benchmarks/dri3-swap.c | 2 ++
 src/intel_list.h       | 3 +++
 test/present-speed.c   | 2 ++
 3 files changed, 7 insertions(+)

diff --git a/benchmarks/dri3-swap.c b/benchmarks/dri3-swap.c
index 4dd423b3..fa8ec34e 100644
=2D-- a/benchmarks/dri3-swap.c
+++ b/benchmarks/dri3-swap.c
@@ -110,8 +110,10 @@ list_move(struct list *list, struct list *head)
 	}
 }

+#ifndef __container_of
 #define __container_of(ptr, sample, member)				\
     (void *)((char *)(ptr) - ((char *)&(sample)->member - (char *)(sample=
)))
+#endif

 #define list_for_each_entry(pos, head, member)				\
     for (pos =3D __container_of((head)->next, pos, member);		\
diff --git a/src/intel_list.h b/src/intel_list.h
index c8a3187a..f0fe7af9 100644
=2D-- a/src/intel_list.h
+++ b/src/intel_list.h
@@ -305,8 +305,11 @@ list_is_empty(const struct list *head)
 #define list_last_entry(ptr, type, member) \
     list_entry((ptr)->prev, type, member)

+#ifndef __container_of
 #define __container_of(ptr, sample, member)				\
     (void *)((char *)(ptr) - ((char *)&(sample)->member - (char *)(sample=
)))
+#endif
+
 /**
  * Loop through the list given by head and set pos to struct in the list.
  *
diff --git a/test/present-speed.c b/test/present-speed.c
index eccde931..7765aa94 100644
=2D-- a/test/present-speed.c
+++ b/test/present-speed.c
@@ -108,8 +108,10 @@ list_move(struct list *list, struct list *head)
 	}
 }

+#ifndef __container_of
 #define __container_of(ptr, sample, member)				\
     (void *)((char *)(ptr) - ((char *)&(sample)->member - (char *)(sample=
)))
+#endif

 #define list_for_each_entry(pos, head, member)				\
     for (pos =3D __container_of((head)->next, pos, member);		\
=2D-
2.39.5

