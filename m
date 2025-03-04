Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF76DA4E4B4
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC6BC10E634;
	Tue,  4 Mar 2025 16:02:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="WYyVxY83";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86AE310E62D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104124; x=1741708924; i=info@metux.net;
 bh=8QTGXW4VwzyIsVibbSOgqJsT00gZ4wI+37H98Gk1UZw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=WYyVxY83KQ7bD8Dw3wzctw2R2Wu+WgOQTxHSzFiMs0KsjsgOuLSTS6ctf/q09gVT
 uX5PFwLSoOkPKNkCa8kMoUxvq3HPIY59bmySezlNtGxgdqNTDED/izFallwmSxwZ2
 uDOwTOCjJP3t9KapjbWks1vcvTUfFTJqUB3hfI8xY2OHyjIolUZqyiGC30Z+AcNEV
 D2Ytwr0kmkQoisDFNXrzsTOKetE5rwN3NQzrYjXrv9F1h4xggeADdSIQbCaH0zc5F
 t5s5vZXKsD6Vi8+JjRBX69w8iDY9kwV535LufP0GGw5d52KSHMQNxT/eR+Ur+WPZi
 tFsBdZud+qilMhznyw==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M9nlN-1tsXZQ1FK9-00FxMi; Tue, 04 Mar 2025 16:56:29 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 01/16] meson.build: fix missing Xv dependencies
Date: Tue,  4 Mar 2025 16:57:54 +0100
Message-Id: <20250304155809.30399-2-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:uPOpZYd4fqt0+lxgDCkloGPIi7/lzUf0m69GCCu6AWzJBobtjDm
 gRDo5c7MbOova/S8Cwwgt12RE3qxe+77A0H63EMyL1Iu0benRXg840HmpTZRk4CR86DkqHH
 41Mb+ukq3ib8g1MWCkdroRRB6PeyK9zUtVxYAK9dVu9tUdtI27FDAemBDvJx+8uGuJKh8Rk
 3mEilKdzIsGV9cSv1j6Hw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Db2DT/SAc8A=;oHPqakQHWywHMe9iQPxeWW5yTzM
 UvwPgvrBUcYEOfxtjHFSa8EoKDL75Xx6CdTWNliXTN1nTHzIq3JMdC+mD2tu0K4GNfKdJYX3l
 2CmO0CFX+d2vXUrv44BW6YWBP4n+Zp7E6cYSG8tr4XjY2iU5k5nRoAYDWPu+r0EFnkuk0f/ge
 49tZqFi8n6XkHhnlFiCGZ/bKJPhK7oc1XfG6DaQyu4GshRP6AySm9jKua1secUXXEUPW3COig
 Ex2zZVo2ZHO3slD0uiIqMRDIlVVZJYfQmh5PThwwVoArkDKKtfQ9kYdFveoJA0z6zxbiQrcJ8
 HcG5PV3C4oblvfF48W2wsBiVo3jisQsC/qhNO1vwgAYXF9KlmQJL47tfw6P3qioHNP7PsuUpY
 DvNzOLSXquwgEm0+f43EhUYFTxNMBGHS2jPJlgHFOpRvjiPOPcSOvrgwW5YEV+NCpmvzB/tju
 Pkpf6Y1K2cEY1FPrlw2shk5TPSKAiHH4tGSFxj0+E1ODVsWMz+RH/xh+RTFJxzTaSlg11bQ9e
 LZwhLQQq8EA4dQLY3sEh7aj8ous7HZNIeA2zBoeAPRGArTzT/b5DxoNAQKUHwobc3rNtQCQJ5
 DP+7Dx3UqGkE3UAKhwoeW7Gvc1Z+JkeYg5MBaoaZ1S/mFREUGGVQMdget7pYGm4ajaIswTEoT
 0Ku1xnEXztjUPzLqK4xE6zmDgZ2M2iJG31YYUKCn5kolzvSoShU2b4h1zK5YyGZIxNVYJh5rg
 1u5OYD+kGP1r8r97T+Efpq9UrzPUvDeueYOZhyMCoCWCrweHq8UpPKijkVoEtiEAJMRcH5G6i
 s+7VImD5aQajNkJRYbHlH3oa1evA82GqfGg693ci7a87tN+k/lhlyksg4//W+R3HdFl4eiE06
 /K0vlpuOB39n3jeHwdXq0QyyuEo3sUaA28kggqrMXBwAlXx/9SRyGGspX3vtGxLZg3buoMmFq
 CogC/Cgj+mpYlTVuXT3f3b1MdiBCWJXekPvQQxFug0GzLmqAhCXONNgrftu9xeccHJk5Gkajw
 XQjEuG36JG3UkPT1UuZC/Nf7mV9TGzkdlNc3JmN0vzIe0hyEsRNII08LGK8jrIe5LSrRLClEY
 Jxztd6EAkc4GiHuS2hbSEtV47GYnkC0BTyLfbEDen5tghyzsaJoshheKmSY5WlxzxhONjDhMy
 VZEqI3OmXCkc0MklMB8SPWc6Qnq+VR2ksGAogO/T3+0lGh6daeClxh6qyajEeFQkcdsokMpPx
 /xk0T3JohjQWL5AQTcAobMMi+1TnSxOeY79QAQ3q4fPApN7bYdzVWnXk8r1/CPYhN9lxUx2AL
 luCdtsgOFGX74EH4a0j0Yp77cfueo9JREN2OFs9ZY4kvlQzKItSmOORzQ3spw/RZkHEfNJzZ4
 U7FPkXduGYLUG8qA==
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

libXv needs be be explicitly linked, otherwise getting error:

  FAILED: xvmc/libIntelXvMC.so.1.0.0
  cc  -o xvmc/libIntelXvMC.so.1.0.0 xvmc/libIntelXvMC.so.1.0.0.p/intel_xvm=
c.c.o xvmc/libIntelXvMC.so.1.0.0.p/intel_xvmc_dump.c.o xvmc/libIntelXvMC.s=
o.1.0.0.p/i915_xvmc.c.o xvmc/libIntelXvMC.so.1.0.0.p/i965_xvmc.c.o xvmc/li=
bIntelXvMC.so.1.0.0.p/xvmc_vld.c.o xvmc/libIntelXvMC.so.1.0.0.p/intel_batc=
hbuffer.c.o -Wl,--as-needed -Wl,--no-undefined -shared -fPIC -Wl,--start-g=
roup -Wl,-soname,libIntelXvMC.so.1 -pthread /usr/lib/x86_64-linux-gnu/libX=
11.so /usr/lib/x86_64-linux-gnu/libXvMC.so /usr/lib/x86_64-linux-gnu/libX1=
1-xcb.so /usr/lib/x86_64-linux-gnu/libxcb.so /usr/lib/x86_64-linux-gnu/lib=
xcb-util.so /usr/lib/x86_64-linux-gnu/libxcb-dri2.so /usr/lib/x86_64-linux=
-gnu/libdrm_intel.so /usr/lib/x86_64-linux-gnu/libdrm.so -Wl,--end-group
  /usr/bin/ld: xvmc/libIntelXvMC.so.1.0.0.p/intel_xvmc.c.o: in function `X=
vMCCreateSurface':
  /home/nekrad/src/xorg/drivers/xf86-video-intel/_build/../xvmc/intel_xvmc=
.c:432: undefined reference to `XvCreateImage'
  /usr/bin/ld: xvmc/libIntelXvMC.so.1.0.0.p/intel_xvmc.c.o: in function `X=
vMCPutSurface':
  /home/nekrad/src/xorg/drivers/xf86-video-intel/_build/../xvmc/intel_xvmc=
.c:666: undefined reference to `XvPutImage'
  collect2: error: ld returned 1 exit status

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/legacy/i810/xvmc/meson.build | 1 +
 xvmc/meson.build                 | 1 +
 2 files changed, 2 insertions(+)

diff --git a/src/legacy/i810/xvmc/meson.build b/src/legacy/i810/xvmc/meson=
.build
index cd05f3ef..3505f15b 100644
=2D-- a/src/legacy/i810/xvmc/meson.build
+++ b/src/legacy/i810/xvmc/meson.build
@@ -4,6 +4,7 @@ shared_library('I810XvMC',
 	       sources : 'I810XvMC.c',
 	       dependencies : [
 		 dependency('x11', required : true),
+		 dependency('xv', required : true),
 		 dependency('xvmc', required : true),
 		 dependency('xorg-server', required : true),
 		 dependency('libdrm', required : true),
diff --git a/xvmc/meson.build b/xvmc/meson.build
index 0ecc51e5..eeba2b66 100644
=2D-- a/xvmc/meson.build
+++ b/xvmc/meson.build
@@ -14,6 +14,7 @@ shared_library('IntelXvMC',
 	       dependencies : [
 		 dependency('threads', required : true),
 		 dependency('x11', required : true),
+		 dependency('xv', required : true),
 		 dependency('xvmc', required : true),
 		 dependency('xorg-server', required : true),
 		 dependency('x11-xcb', required : true),
=2D-
2.39.5

