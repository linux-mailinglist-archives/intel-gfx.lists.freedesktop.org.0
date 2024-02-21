Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BBF85FA9B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 15:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E5610E942;
	Thu, 22 Feb 2024 14:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="k2/6keyJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B809210E26B
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 15:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=metux.net;
 s=s1-ionos; t=1708528328; x=1709133128; i=info@metux.net;
 bh=bWZL2bcZ4CZRBAoTUwUgIB5eFmzSmLTU14A5BglO0eg=;
 h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
 b=k2/6keyJc4MwRTYpZ/dCQMl8yWiPP/0kLE8MP9QmFyT4OR38RAKfwBaUe0waWPN5
 iple2tqg82WbtBaK7+8bxJXeWcplfR0d1HlsumEHMx/19u0LG/9UoOLyG42+f8iON
 htXUfy4WETcxMpxCMgdDnNIIY31Ey+PsgPdcbd3HEUTzW1aMJU6xjQNSAu5T7zPNh
 43GtdX7hJgU/Mgbe0p1Q3wCZodiWIwux+SYGMDWP8tGQcj09Qf66yoPv2ZkGbHl0H
 fyBLKp/W4U6dGMb8S5vVCH3W811iB/cVJMp8iL9OYbrzrOBlvJ10jU4XCeSH/fz5+
 gC9Eqk1FDUxudlVUbw==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from orion.localdomain ([77.4.30.125]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MmU9R-1rCr6X3JIH-00iSJc for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb
 2024 16:07:04 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] backlight: use system() instead of System()
Date: Wed, 21 Feb 2024 16:06:56 +0100
Message-Id: <20240221150656.30539-4-info@metux.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221150656.30539-1-info@metux.net>
References: <20240221150656.30539-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:X5Vm51ZoCVYFS1++BHs70K3zS2ybLxJ2kjqSsRRjOjf4oX7Tz8N
 pWlDVBHls42Kuyz8PUHIk3NillbFd885YuzjUYP8st84hGDl8wH9cHs1Wx7eGqCy97p6Y+x
 Ret3D9QXYv8lhysysW6qBnvwHNaLcgRXSp9X0wKHBYIxyKZdUvFWTMUb1VbanwZE7GFIr50
 ESFgIoTkn4AnM80cIwf5Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:vneYlQWCwXs=;4i/llP7RyTen9aKdOUg3neSqr0b
 +VYZ/LKn757XelxujotvAzZ0iZblEY+hresuyDnMXQrWFB/FRNwgS4K66Or73fiiWmOKxEhxO
 p6wBgYJIBEetYG3FpHLoNuNaEwwfauz56F5lc992LK+vUVviObWk4j4l9aipGRWhOoqj4+Opd
 kWYQv6A0CQdRNZmL3Fyn6fqc+FIeM1qTHdwAkvrXYTz/O8g+gGr5SJ9nAiNFrOh9Vx7L9+cCB
 X2VolonuDsPn6hfIM9uQ5hP6Gm/xsF88l/mRq3yEKY5XW4oF0MuX28LPcTk+XtZ8r5C7/aWyF
 Rc7ygqGyCoyLD3wNxfr0scy73jSlaG/mhCFCOzqUhlp9CUI61hZ+iiBI6XOEvAmHePyM+3vxs
 vkQCEXikC20/uk/CZtnJJ1DyMWMAeRS5HM+2zFNlqEIm8p5As5KKYDurOmHAzWx967CBOyli9
 plIFbPVasqU1v0AzmelvED6VA2l2NQ8MY3CukXtEpuCjM3irGdctDfqhhXbZkcJR4J1CKHnJs
 bxyYs+gE/XV8f0D5IbibOYtCh/CDfd9jHxp4vihrrvR4UGd6LOKiOMJKxbmS9WdzWj9SCeUAc
 soA1H0Y+VvUxUWMcE3URVT9zrURW++rc9C6Hz62GIIalnMsCQJzCxQtcOdG50mB7HnrBejnvP
 j5ezQ775VFPAdOvLc5wkwzte+wACfPtufeQZrVPV6L2cUvxPRzkKZZCk7yn+1dt43cTA7DAve
 1u96mnFw2rQj3SvURYsYsdnzThaoddg/LXzEZV3x5gqc9r8FxjktWE=
X-Mailman-Approved-At: Thu, 22 Feb 2024 14:01:06 +0000
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
2.39.2

