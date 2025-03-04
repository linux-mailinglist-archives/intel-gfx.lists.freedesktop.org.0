Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2AAA4E4B7
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6520E10E639;
	Tue,  4 Mar 2025 16:02:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="Kw7ktF49";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7A910E638
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104127; x=1741708927; i=info@metux.net;
 bh=mV7LYIvux7lkOo9+YJw8SBJ51ypU+ahKZHzcn2DB628=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=Kw7ktF49/HzEQKKA6pOYILsZkhOT3nhOdDxD4UYVzkSzw/fr7lM6fUnLi5DiYoYJ
 iP6FJKl6veZ+cgmSNvUmsNMA6jjLl3uMjg7HnceAYiWutJAuhUsW2SxwU08ZuFdER
 P0t7WtGLICVsTeb4nYIFlCGRsUcnQSo5p+47HFbIvXZp0qAMEML9Kfokg/c6X1xa5
 28fwrsE32FMTxJtXjTCkFJ8cEkLc7HC024NLnYqKCQ+ftJoj539JKjsKxte/ppH6v
 mjfMGn7dFGDTHHeICvnsGn+1ZYVbBvZ6y+zBjNs5kRnTUqVpv9y7No2nj3E2+8A6U
 vj7CXuj68YHCqfwQTg==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M1q4e-1trhYM3IFs-00AkhN; Tue, 04 Mar 2025 16:56:30 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 05/16] sna: use GCPtr instead of GC *
Date: Tue,  4 Mar 2025 16:57:58 +0100
Message-Id: <20250304155809.30399-6-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:4aZehfUbiMSmFv+rPNk92uzlD9gBEVfb7yeVXSUy3ouH0FYovcx
 x4nypgczurE0Ysf8G+m/fxE5dRNs+j7N8ize44GL17ytD5KdcocC499gIkm6uai/bB+Zdy7
 r4r8/G5VJ0CK7+o/AhzgDDBfVA8oqyLh5DPG1zRL9K2S0a7eOS085phK/40KF3tDT9BkyEz
 lUayrbZ4gdMEjlbGNZivA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:KUQvlTtGWVE=;YxsDlNFYHh4jPm+CBmWvCD2nVGR
 wBWn4LeJts1QZqXg9R/dvw7MsHW6gb8sjdxbOb8AqXReiGqB/kN7+bTGi6tHDlwgkbdRelPDl
 Zq2FxwJy8YIep1Pnjx8TP9e7nAnmCRBoqB8s3qm05mIwFZratLTskpYcjrhsIaUV+QsqxHQcw
 ZeILvVbYwg75SZ0pVA6WUTgSErvdL8dzOMDuXTKI5tzIfgjvZ6DTC9MIRbQf/YWK+IPZ3fHZf
 J5xoyrlUmaOsOTf+JPGaCiWmYsU0u7JyryhX58ofDlWxvF7HOrEdkGSfUaSYpo0Am7FRxnAvh
 yf7y1U1kMYWP6EZedgMML3WDG0iHgBsmzKIK+BTOoT7vcGxUSevxMZZn3OCUDcWTd/nKbdlMf
 qhxJPZtNrvi1co000DxelnjH8EoZ7v0SLqV1B4Nuat+ThDApGSO61klpJRBpFQO1mV7A31fsM
 bWa7vcsZRtEcN7CxrpWJAJ6H1R8zUcodkVT7IcLPPv+QI1q7JrSGwuqHIQRcvqXtnO4P3TMsW
 35TlYUY9++20mDzXdbkckVOYaQJQiX5/DeU81hPrsQFyJy2WfFDuIqqWblEh+NTzH0F6uC3tm
 S/DPRHiYUodIYbTMaVx01CzBAEzGwhmj09+InEN74NaQLT7YUxnblW405iaktc59p52M00Q3Z
 eUL2CwpdSqB/rAQEuYpO50erGYxsKGltyL/YvY0ljwO3AhetrxwD/Ydd4kyy0p9HRfsXwbjW4
 WgRr1DpbDNmdFx9oo9k8G2B12yhTsKs6QPuamI2nidruIN+yKlIn3+3+8ZoIZ9aLUzz2DbGgH
 jYAeAzfV1gOPvMsvhhd7YlIpfGB1GeJ2rOxYajnvOF9A2toT4C4CjZmVioXJNlQ8tQXhj54eB
 OEs3spl1BXwcaQurQSiEuwImi5XVpnZG5Ad1PMU71qg1XLkpcM0JWWrP9Zg+UxR3kSMMrfVBj
 SQ3pG3b7M7TdINWnelivlF78+r2cSof1cJwcTKZwyDmYPPeD88To6g739qWkhtV+wIP3VKkJ8
 XaI44h9Xzx+P3UX1X5oXc1/l2zx/d2xsFDHntF9bRUfZTgQ5evVRrRRJTLceK0zvFyRI7WLlN
 wQHMXmVcY4q5QS0zfFV1o3z4YvKrtAfIL6xDYcMipQMzxhEAa3z2jCfqBiETZ96xZMEIrGkTd
 gKzCymF7F9i/upHyB59BTj+WO1suQzcfCjCxRsf0STsij8MrsYVZt71MHIoQXkkYs279D8QPK
 fLPby84UXrFE9ug0bakO+5ne/P/NG0wpQI2s94v6CergR1Yj856qpiSbNg11jXwij4bXC1iVk
 UP1rfsvzQZlr3Htvr3gadgnN9SYFi245BDHVTyyskbV+u+CidKkWyIWJ+NlecwZdXaJxjUOo5
 MEQV3bBwGWOy0Xvw==
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

Xserver includes have explicit pointer types for quite all kind of structs
(at least those used by drivers), which are used all over the Xserver.
Thus it's much cleaner to use those everywhere.

This commit also clears the road to fix a horrible nightmare of hacks just
needed to circumvent naming clashes between Xserver and Xlib (affecting al=
l
DDXes that are painting on another Xserver): we can simply rename Xserver'=
s
own "GC" type to "GCRec" (the usual naming convention here) and so no trou=
ble
with Xlib's "GC" type anymore. Once this has landed, we're free to do that
without breaking this driver.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/sna/sna_accel.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/sna/sna_accel.c b/src/sna/sna_accel.c
index 89b82afa..90a61ab3 100644
=2D-- a/src/sna/sna_accel.c
+++ b/src/sna/sna_accel.c
@@ -14300,7 +14300,7 @@ static void
 sna_poly_fill_rect_stippled_n_box__imm(struct sna *sna,
 				       struct kgem_bo *bo,
 				       uint32_t br00, uint32_t br13,
-				       const GC *gc,
+				       const GCPtr gc,
 				       const BoxRec *box,
 				       const DDXPointRec *origin)
 {
@@ -14412,7 +14412,7 @@ sna_poly_fill_rect_stippled_n_box(struct sna *sna,
 				  struct kgem_bo *bo,
 				  struct kgem_bo **tile,
 				  uint32_t br00, uint32_t br13,
-				  const GC *gc,
+				  const GCPtr gc,
 				  const BoxRec *box,
 				  const DDXPointRec *origin)
 {
=2D-
2.39.5

