Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1C2A4E4B6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5DE910E63F;
	Tue,  4 Mar 2025 16:02:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="U9Ub4MK7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F366010E635
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104127; x=1741708927; i=info@metux.net;
 bh=0/4LYSFXCHRlnccxC4lB3FyQtQOmkvqt50MAkhbGm0E=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=U9Ub4MK7CaoKdW/oUsSFooVFLOqewRUjNrkYNrJQ8h/+CHWigfKZr28fAYQfzLP+
 gZTHfOJt8fw8SwMhXnHn8zOoASgi3FuuPlNaK5RNL/7qeif/EVsFi+4J9f6K01Que
 HnRQwwtitsnfLxZ5zjrZwEhVD3n66le3oA3BnKFS7xPw00BB/L/doUrl5Y1/PrpEA
 C+tI9Mx4QCdEAo2SeU/7h9kXlnpTvgt7Q3k8ZxpyNoozV2JG8TtiUvC//9ufjdde1
 z7tcQ8yA6we+pmka29AQttwUFxXYiEHaRgM3GQnxombGzK88H80xP4LHMY2yOXkT4
 0iyk7V2Q3BXwsMpqXg==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M9FX5-1trzL71iMR-00FP8Q; Tue, 04 Mar 2025 16:56:30 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 04/16] backlight: use system() instead of System()
Date: Tue,  4 Mar 2025 16:57:57 +0100
Message-Id: <20250304155809.30399-5-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:Td6rlONSHKN9KP1eePV3X2xMgQ2etcWabfqOaNx5331LdmikD4L
 f0hEpDjLrpVMuoAktjMn5r7aECoyuVDkq0KnCKXDfk7kP+Lc1jbIyZ5x/M95fxQQ9F6dAIE
 /eNx3DPDhPS3C5ivav73M4bYNV5eJks6AUpsaUhlGvQoZng8b2ILMCwSZEwo726+hvVSFO5
 gaGFEVCk7PNZgSztgwL6A==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:VXdWaoM6jq8=;ndnr6rv09JLsumfvqy3wA8O2fNE
 BwOiiBJHKx9OjhLHcDmT7MuNKOzp2ayPZZGF8x2F4vlAYDdTQJmnz9NbGH722CBTo/B74i/zh
 LaP5EkFr7VbzXcfPr/kkmIrJo4mN0A3uZ5oOGKgA1Lu4COYgCy1a8kmUNgF18V1KzciLQt3iX
 0qYjvxmDa5YT2B6xHrDkI3SA0pcAjECjKvO6td+DWEUKikN/MHv6UK1841lkK9KpbXPku3da1
 iBNDEHN6ej8kdu2P8lktpR8CWu7ho1bpYor2tDfguLIW6KJXWR/egyK1LR5nBTIXVvcXnynff
 2oj9ChACq7C9MStHlIwwp1NecsHISyFvTaK+4QfkX/ZY6LWXfGJhsaWPFucHgSMeYJ6Ds0q5R
 EMeDlHcC2hI3snzTe4Bhezu2Yq7XV9s+iaIUP6XVBV5s2OPjw7mjfHr5e8Q6CljNRb+LbxX5u
 tIeIpNz+05NG+0Dd2o5HBuE9YE+B4g/nQoVRJLH2oXIegIxo6jirCQFSoLQJkbiaMa93JcEvF
 /QYVm9QbAtGfyvEDzUp2dV+PNdOCapBAzAh0UacY5Hdib0X0PsXzTgWmyD1tOHclXmV1TraxZ
 r1d6GJY5IZDUMD0kyr42kyLO4n1hWO3zxsOCDF454+6gVGPZWrRNiZ+RDiXyWyfJJF4b5zU2+
 0Ku2yI72RGumtQTyhnFgpYtyGb8S1FWdi0XGaQJ6x328U8Sj+WG9cI5+soAC9mjyA1zf5QLv5
 IrU5sV2rvgqG07hl10kOwLrZhbVc2qUzMtLhWLO8M+voHA9S66C5za2wZxnjPkTwzgzD/6mlw
 NRKdYnyEuJ9/M902iEKW/WmFlX7UjjUyuc/ZBFURpHe+pe2/LolGMxyzMnkHVUgmiZ1bHGvvH
 I3SJ3iUx793IAZJWPZuM9WGm3oQVpyiQeQ2AkiuYV1J1o73VU1st9MYj5wspGsvMiku9XVIVu
 dipoZFjXiIxMm38L7Lni1/SByWGflhMuER71fZ13JR7Ci1xgiiXsyE2QtKWxsBrQx4mSmAYaq
 JxC2I4ax7wcUXQWjdRS5ZAfW/REpodfySddKx1Z4iyGobdvSgJlhBVUsMe7oRh8kilERH8xe4
 3FJWIIcCwWzcYP2v4UH029VogtXNuA38xol/wt7UgJ98LXGDpsN6xSvZCqHrEj0AeRDLgEWFJ
 1irhvoSFk1WjKXvW+HZuZviDsMicd6WZI3A+KPwFYJU+ER60yFiuVoApeBLacZV6J5z5JRJgj
 2UAGLA7sU9h7cFmvJQ3dz89RsD2uydshJBbaNK1spzuuAYl01dgy8B6GzPVwVH3cnT7/ZSSeA
 u/Fl1x57dvivfdtEmNrLmWiNFBvk9QbZHWwXbUs5LPtCmKWd3VPdJkaqnrl19XXH5SS5r9hBX
 fuznQaE9oHZrsAvw==
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

The Xserver's System() function is a special wrapper for calling a program
(xkbcomp) as an unprivileged user, when the Xserver is running as suid-roo=
t.
(which today only needed on a few platforms, eg. Solaris). Therefore it's
not suited for being called by arbitrary drivers.

In this specific context it doesn't even much sense, since it's just used
for checking whether pkexec command is present at all (and just should be
used), while the actual exec'ing of the helper is done directly by fork()
and exec() syscalls.

Thus we can safely use standard system() call instead - clearing the road
for dropping System() from Xserver's public/driver API.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/backlight.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/backlight.c b/src/backlight.c
index fcbb279f..f416f2a4 100644
=2D-- a/src/backlight.c
+++ b/src/backlight.c
@@ -366,7 +366,7 @@ static int __backlight_helper_init(struct backlight *b=
, char *iface)
 		return 0;

 	if ((st.st_mode & (S_IFREG | S_ISUID | S_IXUSR)) !=3D (S_IFREG | S_ISUID=
 | S_IXUSR)) {
-		if (System("pkexec --version"))
+		if (system("pkexec --version"))
 			return 0;

 		use_pkexec =3D 1;
=2D-
2.39.5

