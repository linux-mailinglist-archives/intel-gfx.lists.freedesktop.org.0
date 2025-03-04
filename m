Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38755A4E4B9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95AC410E63E;
	Tue,  4 Mar 2025 16:02:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="MqUnbn6l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B246D10E638
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104128; x=1741708928; i=info@metux.net;
 bh=BaxoyyIJFwnPsoAuq9PR4BUafETyc028EsjAZErXFNQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:
 MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=MqUnbn6leuI2EgBDN+VI/hu5Nq25a0A/LfOaCbfecKYQw4jwOsE6U0BqLli4S4I5
 1h61Mch3FTBxAvT/1D2iyQe6jG5a0fL9h97uUIdb8eq3/DbpdgennHdIeGTbBFQyo
 j+QxFKtTojRRubQIwHq2Si4XiAHRzfmapW84ErKyRdpOmmX5c5DSC4oS5V52lsohi
 Sl97zk59AuQG/zYrfVG6qKq7F7zrlwm/6JGcHyTHtUzHwaOZUcg5QIq1DmAh/2ixV
 EN5JaFcKzN3HTSRPhPQQTyGG0XurGz2zhesW1Rb+DBOw9ds9gZGB9o7rMgjhfsjfj
 xH6onAliPmjim/lBQw==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N1fzM-1t9sMG3zw0-00szNp; Tue, 04 Mar 2025 16:56:29 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: xf86-video-intel fixes for upcoming X-server release
Date: Tue,  4 Mar 2025 16:57:53 +0100
Message-Id: <20250304155809.30399-1-info@metux.net>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:SPFTHfwGuT/pZ/d69y1aWxu+SsPtA4HpVgnqojBlhQ20NETNRiT
 qDu4qZnmOz03/ecJz7VMqSJd/S6CZz4CZhxbeMTbz1CxmGOq8XvERdXUJuIjvWpjShA9Ddp
 kpwMgrUcYwYAoQtSxchSCREAeW2PSz3TELqHRt/ZVJ/kWUNKb8GHQWPLIngq3efYM526SSF
 9fST8UdhCCOsP/6Y8llWQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:74BfZ4pPl+M=;wXlyn6oTgVp6zDwM0XQPmzy/g56
 44EhWZXRYbPKIuyYnRum/f9phnHgJCi1DAD4OjT3RSlXmVdIxczmggilx3T4eDUOIYc3pZJgC
 avdSfFyMAIcBzmGE8fZCb24EQbyBj2fgpeG+qFXtUobG5uIsWppH14tVkZE5qMdNrAY4Wwu7c
 osFHt3TFa5oafvYV3X2GbZNC93Caa1LY/hoHHvhn9ziMqlgPXEixFzNqyu2WW6V+4yTe567Ri
 NBq3qFknBJV6cZMGm/EADNSryRaG7YqsceVxlQPMTaXvCO+FVGwkO8Zk/6hbcE9NS71FBAkVq
 Qhg89nbfgQg0xPnRb6hndSOcPT04t8nUuntxOhA1+2nJdvsDYc2NvC2NTZLWzBeMR95gQ0m8c
 cqIV4V86vW0TXLavgkCdIKbxWClqJlybXteUsrqzOHw9gIxIDeCzxVHFVnlqG2p749KvsJ6QN
 bQqQGOAAt/fwvmDkLTMD2OQTcXaIjsT1OI+gSlp8Y7xrlx5bJoVm92KyKuXa9zB9qOwYlzxVZ
 X1DA9n3903ChYysAfag35T0XytzR0jAJUUI3X/iBwqsVJQpn1T9mzptlWnpolJeoXUtrlL3r9
 +cA/YkodE4j9xN5pJqyEB0PvxmqzjR/jd9jOVaWNVy0kevqc1l6nUWL2QY0VbiAAIioJLhgSK
 866ykk/g8Tgwssy1BCxTG451x/QcOrX34lh6aVOCDQGYtUHR2QtfMOf3l3ob6uzkEZVIq3NOz
 7tU8erk6qa9zVQIJCFZd5Hu7HuD+PQwY4oz9+7YWl2KUpDOI6UgJnW8tTOxLJ9DhOLxwIJTfC
 3VpCrYGwvqlMIXNX6nMHBMIsceQGasZdREsPSh6xGfyo4pQ3hGLpzlix0Wz+HkdAXqWMxdwK9
 IxJDQDSA2j4ybcjbmV1ChHui05VTh6u4D6MPagPV0/Af5GT0ltKp0JCh/TZc38jd8acEWDzzD
 5ZjwZXIOh2Y7fB4FNAWwzSortWYNQvNhQmlmyUqpaiFGxRwjCSlBa3y+/4UFKHWtaitaNEWlP
 +GaNKkoP+l0KsgIOf3+bJn1Ptja9bMc7DYH08d3S1epVhACRnCDz0FmfvAYFU0QJxCOcRuT0k
 uQRWIc/nuwFw0xrkbz/87cmpRZle2KlwDd8w1i43W+M5r5kHhUHB4LbRPcNREMx5VJAlLw0Xn
 EtskUo+rvQneZFSxX3PUCNQE4xwVI26wdzv5Xb2rpClKJJezzUYcNimP00VMAmk3mvrsChTsu
 RkieyyF0UoS1iE72FLU7WaH7f27sx9eFhJZHXqHt2DfePW8RL4PiudTDuiOlpt7TsBnCmLjXa
 CJJ98R9rSHRe4INKZeMp/BbCiW47Kc2hiTkDitK5v6VrR2hEz9S0QwiSIfFNnIwX4toowViwN
 TQqdsrjDHgSNxbwQ==
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

Hello folks,

here's a queue for xf86-video-intel driver, in order to keep up with changes
in X-server API.

shortlog:

Enrico Weigelt, metux IT consult (16):
      meson.build: fix missing Xv dependencies
      sna: stop using obsolete type aliases
      tools: fix FTBS on FreeBSD
      backlight: use system() instead of System()
      sna: use GCPtr instead of GC *
      gitlab CI: common scripts for driver builds
      gitlab CI: add pipeline for building against various Xserver releases
      stop using obsolete xf86BlockSIGIO() and xf86UnblockSIGIO()
      uxa: stop calling deprecated xf86_reload_cursors()
      use XNFalloc() instead of xnfalloc
      use XNFcallocarray() instead of xnfcalloc macro
      sna: use xserver's bswap_32()
      meson.build: increase required version
      Define __container_of only if not defined yet.
      use dixDestroyPixmap() instead of direct driver call
      use xf86NameCmp() instead of xf86nameCompare()


have fun,
--mtx

---
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287


