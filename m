Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8352785E6C6
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 19:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85D4C10E7B9;
	Wed, 21 Feb 2024 18:55:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="CiQ3nkpM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C257E10E7B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 18:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=metux.net;
 s=s1-ionos; t=1708541751; x=1709146551; i=info@metux.net;
 bh=fypRpMIgmXxzHYcoNa1HZB2FNEZOdBG4NWmNlBbszmo=;
 h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
 b=CiQ3nkpMRYdqtkrzwBA3Q2T0FJMkuhbikDAbhDV1lEcui2tPPUtZlavfeA1ykt+s
 7r92a+0w/ad1FsxAkqoBQWRgLQCc8PTDlCZU0gmuId0vZKo96VkAuybsIJtCnX0oB
 vg4M+VbaBGOKKd+aflD9e2KbrS8DPfhXaAo14jsWyqtQOxo4HoPG88l/ANC4rVqiN
 1rs54e6bPPe64MnODWopAUTTm369W4dphzZks1l3ylKDD6mprA6ICqlvfgLW3bLVm
 QfoZhpDQVOkY0CxkwiqTLT23uSpSk2b7Wm+aPag9QSk03FAvlFdvjbTri3eKCAzz6
 q6veu84lKLUxrhqPIw==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from orion.localdomain ([77.4.30.125]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MNfgZ-1rIkKy0qIl-00P6sQ for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb
 2024 19:55:51 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 4/6] intel_device: fix warning on possible buffer overlflow
 on sprintf() calls
Date: Wed, 21 Feb 2024 19:55:48 +0100
Message-Id: <20240221185550.11943-4-info@metux.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221185550.11943-1-info@metux.net>
References: <20240221185550.11943-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:i3ycdim7VuShRkhsXD5y/QtHYjCETUTW4hMNbTxpMx2lJtE4OXY
 tTMQoz41XezIBdpuyNtiWIMxKYtstxxG2bJbcu/GzfYc4HHZPXlAhePQXJW0VWLxGokUU6v
 tctaG5PniQDvnsFqT7vbEFW1aSfDghZGVLPUjfd54vQt0/EaHsTiGtxIMm7++OUfmJCLlIA
 GtDLyJDjOQh6C6HgcQAIg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:H/z0eqTl0XA=;Sz7k0FjdRPk8RJnoNPEC5/ByWpX
 NyrdWxk84/3n9fDr5CkbIsKKORdZE9weVGq8IpJ6YMa2hXFFg8CJ00rHXn3+AfkGoPZUg0o7B
 HdlT6S5Ef6T5/irvDp8b7c7R0e9NRMKQ5P+agfLqL38u11uYEnI6wL/bjuIQwr6kRBHJ1dVN6
 epfO1waNIniUcn3q9Q5MSIWRqT8oDVc3hXc8kQwsiH0X+L2UIRcH1ri3a3c0Q42J0C4rqf4im
 mnibvdh+RhzUi639KmOsO13ZKXHjc0YLkO2U0vPpakqhmh9W/xBzJsGA9/SyC1dZld3lIsw7G
 L1Z4v3cQG2vRIfK8RPKnR1UJ6eS0yIspDEvw7zR5BujPTm1FlfH4P5YeLj/sSUP9dx2KOun4A
 gNNKon3zT+TSUqxYQLSMTVGDbvpVyEf2ihO0oScZzZXBPQ7vlWrNAqA9P6CnGGYSrqM9KmEt5
 TgSq9S7pJVHiv5Z90nUjTaca3vtWS4ZhhZk5IKg2maY0+V0Bks5Cq5knfFAmcJQh/T7KgqMQ2
 oySxBFic86dif76ERDRp4jOC+riq0B7zluSq81ES+zrpFsjr8pVNq8QKE8YdY5qiPdQ2hcCCc
 yqYaLbJx7nsPyVyrNwdgm0f783HIP+a/cJ/us+LSF9xW/JYlxFhNxKgZJhfiZo6hV7fj9AFM2
 PYGsuA+AxfRuxOo6eLZOz5Ru89u7jM1cdLTEMcYblrxTlyy2/Yz+sDutCUzI+IFs9HOdjxO53
 fZ3xcbcQFIGxwVFh649/OZc4oeoTRBL1znnzOWtCCZzvAvTKFthZZM=
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

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/intel_device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/intel_device.c b/src/intel_device.c
index f28d3be1..06108ec3 100644
=2D-- a/src/intel_device.c
+++ b/src/intel_device.c
@@ -335,7 +335,7 @@ static int __intel_open_device__major_minor(int _major=
, int _minor)
 static int __intel_open_device__pci(const struct pci_device *pci)
 {
 	struct stat st;
-	char path[256];
+	char path[PATH_MAX];
 	DIR *dir;
 	struct dirent *de;
 	int base;
=2D-
2.39.2

