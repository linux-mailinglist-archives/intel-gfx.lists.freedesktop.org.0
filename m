Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A89A4E4AD
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5532910E62B;
	Tue,  4 Mar 2025 16:02:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="Pe0ZDQI1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB1210E62B
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104122; x=1741708922; i=info@metux.net;
 bh=No8rrnHlsF6Exi7GV8ZHFoOvVwyz1bjgxTYjAnXM7pI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=Pe0ZDQI1Jn1h887TEKMwQOlxTbi77zajBdw30SBp5VzUXN51mxIOVPKV+XQG+ez9
 j0y0MpV+Rpd55NQifaHncPmtMJ9pnXJUJUjtlu5HINSVn8UDAaWW+vEGdfsC+SugK
 5QVHK4pCABAI9zIKn8aYaUPAsRw+axOokREgfN0dtRNfpSBVfq4XdUeBq0Vu5fZNp
 hz9vqoVkhth6O9syMurmAbZiAzuqD4dqSe2iz2H/+Y/3PYS3XEP6GhmSjF/NxWoyQ
 9nFOL7mte7tVpI+uFeVMkkdwjtVTduOacrYDVazQNyJg7xvxXXT9yiSghNdxg8Btr
 jQ2NBiz+riWqFowjGw==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MOz8O-1tdUce2tAa-00Vhrp; Tue, 04 Mar 2025 16:56:32 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 09/16] uxa: stop calling deprecated xf86_reload_cursors()
Date: Tue,  4 Mar 2025 16:58:02 +0100
Message-Id: <20250304155809.30399-10-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:TNcVK3RRJaKdZI8ofGEfDok1QafFo3g4zv7WsWDxH/LdGLeAvvT
 CRp0/uKnahVKz1jI2EPYhkZet0ac6r1zUL/Rrhixd2ygDtL/qdma5iISVlYuPLSp4z2SyKn
 jI3BsvZVvM3QPo054CF9LzDTesKc4/T826Bqe6sQx9Nmf2KqDMOvE+zataMbC1XVqC2f4uu
 /6/r5POP3d0oSLC7kuicw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:B7Gs4pzeKzc=;IupwpG6z6IwPsB2/JilppxZb1d8
 QehFHx+QpV0tZhbiVrtGagxz7h6Btcnspp8WUK1ACNHhNL/Gviw8UCgVhrp7tAcRJV3R8NR//
 vqV3fDFwsOp3ogzCa+1Lu+RDo7dYPM8C21CQYYWtCAir6AgY9LNHdT39gWFBLGY1FbpM7BJSu
 ADDPwTwSi2oNfnOrlN25T7ksuK8C28PF18/QTVNXSitW9syJfv00osTjHRy1XxIJAE62PjkLu
 budquQTxelb1CNacC6Odz2ISW/tFtZnxnTWpqGmfkc3ny8z7JrhtM67+if3w8Fu5piSx+bmJb
 3/rclJfFPD/jZZpMrZKkIXV+EOBi4grlBw4A3PB3cBT0PfDT9I1Lm3VyfZXICs7bzybN3n/jY
 aJdLC9/mNN+CBPaVhtun+8yIE+ZB4qXjTn8GZ44ZD0usPHyZUbYikCsmzhJvEWsyj+zVnH6QL
 EZvTUr0/9Jw/3y/sz4wxBq0+oMrSmHsmcGYABQaMNjLx9d3FPQsfCihOUrJMXognWdqsJu+UF
 /aaTpy6hciRyoc76DbPfyHgJ4/yFhu1rn3EvkClumQw0LAt+xH2a0vIipLlyD1QF15ztFNoXg
 deCWjyCze6A28U8WmI9SOPZsxOP8X8OrgPfgbAEBaXOYzBMNxvn0NGdB3tPEZ3sFle6r0zRyq
 LQALfJyEdFbBBn3UDHLNVHpklnRyRlCAxCKtqqwZrnRf0sFheX+zPrHZArwHU2FTPywzp5BN4
 dO3ZSekjsaJAj0BrWTYM11VEMGdpJdvubNCE7+llnWQVjor6IB5CiJGwolQ5wZyFGkPoDHDi2
 jn+7BzDQeN68Zrybt1+A6zdyNMxdlyYGyifxZFXiFDydf6tmyJdYuJvXF+hWEAgOMapCiJ3p+
 mWxgQYcfSmp1+dgMbI2Jnr8FQQa3KoljPO8lSHx+p48dlsfiLYwMEs+JGNXUeytSfle9hP3sz
 u8j8XqR5viwAEoN8BUbzj/4lxHDjXamg1opWI/NjzusaxyPY16SR+FM47d/lQEbTN3HsjDq9S
 +80BFOlTMTh+6r+WitOFuO1+I7BUEv0dDWLh5xm74I9lUlun+2oUgPkXuiS8t3rdCk4di+SPE
 SmUOB9MBHbAMkACwQxe9HG6OsObYCQ+aqKxK47fL1I10SKMNAYC8IGrQ8DI/L2yBn28b8dxlH
 FOACwyJMgsZWsLYJvLt3YsHsDkdIK3qBvXqQNn/k50zZVcMQEAN+H/OPTyg3MLXdnsWPbMBZQ
 jfzsAoRNHsIVc+XYSzZEFjr2hKChFbnuLLtMmHnOY1QGasACoBRO518D1i7mkgwMjdvjN9+Xt
 vEp5uKpAi/xssdJhLp5SwerDpP7ExP906MDQJy/Ewm2sgirGTW1D3FJaQ1gTbFuG3Kd9XrVWM
 J1F7jUAl0e6KQavA==
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
index 409cbbcf..2a544779 100644
=2D-- a/src/uxa/intel_display.c
+++ b/src/uxa/intel_display.c
@@ -394,9 +394,6 @@ intel_crtc_apply(xf86CrtcPtr crtc)
 		}
 	}

-	if (scrn->pScreen)
-		xf86_reload_cursors(scrn->pScreen);
-
 done:
 	free(output_ids);
 	return ret;
=2D-
2.39.5

