Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3C8A4E4BB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59B7910E641;
	Tue,  4 Mar 2025 16:02:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="lWtFvcYe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A0B10E639
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104127; x=1741708927; i=info@metux.net;
 bh=D6cWD8znevIInIEZcXpDwfXug77mfV1HLdsF9rVzKqY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=lWtFvcYeVWpW38J3ZhE9jN0Gitiz2FXp4a5KlxkwaMqFFPFO7Aed4KD8cJENGR9q
 HYvUteNy7WF8CDifKZW7aCZuA0UakYOn5cgA4J1/a6ufLBa15HEKlNfOf/gu6spe4
 12JTtNqvg/I4mW0HP8pGxrGdf8bA0zkQjWgagiBYj9hQ7K0jteG2lvNap3ly+XXWF
 ds/HKzDHo5GJxvXbtwk7qf7SYeQawPOp8or7KJ87BizLkrz4tWWam3kPuWkVoJVew
 tYHjWR0XbLsnOAu1EKpoZ1Jw4NJ26IucQsI3TqCXLs5kawiT0UhOIDM4Z1NvZJgLf
 jniC3f4ExR22hqA0gg==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1M6UuX-1tvqQG48PB-00ErRA; Tue, 04 Mar 2025 16:56:30 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 03/16] tools: fix FTBS on FreeBSD
Date: Tue,  4 Mar 2025 16:57:56 +0100
Message-Id: <20250304155809.30399-4-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:WrIIr5figTgT9W0YyJ+sAQZ0KLY8ygKJqhiqf2gkJGfG0g6FoB4
 5+3mXRxv7ZanJEF5iAYjXMFcv6um6h4S7BMs0sYtYWFErwEWqdu2IlB0Gv1G2YPmRBtmMgu
 1GdH2RGrk3XxD4SjRiPm44IJBOJX397Dl3NIJX/OwFt/uw53Vm1i80mDemNNYtmTZ01Atqc
 mi5JoX0Nn2zCCpAvOsNRA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:dOz4WBCIqZc=;dEWd2SFw86LwXwJx/72UcMRfxUV
 IsPCVskxMPu3nMMtdkVDalXVlRcsltHvFYARkNUQe2OnwF+XGAZpfM0BDOJ89Zd/ISkMwayqb
 bc+9V6r9fLcCiwbYfnW8cMFsLXGqKkUnMAQZ7dHw525Q9xIin9ihyPTLe/SUrG6XdGxXkAcaz
 hVbL+hmj9pPISnPIPsS8VqbtkYngiqKcikS0NkPSc0RhhXtaYRROysJAKw6LxXYTw7VLxk85Q
 6S7RJieNqf0EtG+5miWTge5kpi/kpTIRo4X4wvecz8gp0Mpq15PWHQ1VbdkvHJFrAspapgZrg
 MoikOFevEigWtyNBv7rtLxwm4QAEV+/Qq3M8t9Qql87f2V3PFcxikv/ohXmtjtROiJjk07UK1
 ElzLCyI5Cpu5T7qrye2te7GxPwGQsa9kdFXCWIe2WGTvz37PbbGi5TTT18MD681tUiGdM4x03
 MWrqE/6WQkt/k43GUWvbpCd36ssgu+E2oN9+VYa79nu1lM/lGNdUoAL92CAI1jzh3hk30g1FP
 6V6h/qT3eo95GXgxPOEJ1F9enjfl57RYKPdLoFjDDBncUq10ajptMzmOLcsVH+IhG5FrLyBCg
 e0IVq+5kqGDbYcHlO6YrEnjuAFmWAPvtad9Z0rWYtXaq+EKGwYb8qIekwRjOHoS9cgrPCOr74
 OfAAhpbfyCPJJXJslXVI3DWojE4rIEyUuuvSGYn05U3IRcmSOGwfQwtcEtWcnk9DnI/wCP+k+
 qr9jC5fWVpXH5Tjz3XYxJxTCw5v/UKh1Feq7Ksi9o8ZPwqQusPfkEjYXUUhRonV6xQIJT9Alh
 OPChgdjRbva5klt+MVqrxhJ80y3f/rvZSz+MIWPDGkIzuulZX4leIIYcBR9HykwbkN3r4WmMd
 DZl9AwQhaN0k8gzQKowiEXG1ls1+kSrDBvLX9dDdlQtcIxBRiTntcCk6ltFh1z7h76wGQBFXv
 QeeuDJS8CzpuHVgQRWFjDhiKDjiLX+2SUTEfH3s0pzvRitkZsyt7V2h4inrf09UcsZ0ZC7yJB
 JzG0BNH8hmZRkQjgvAG9WpS3MJQWus0g1fKycXxl+gi/lDf0mjkZGiWCF/wq9HMUrcP36HTgh
 e7cBIj0AwvNDQUxyln35JC4EhbmRSihmfJK9kFzCWbPTKU4+MJHRjEw2rg0uTrekFHV6H/stQ
 aHKjbPh0EYM0ELnGgamNrM+7DnGz2YiggmX1ZRqO7qGzRu2pr2PzRs1JpHlmTferSvHjYdcde
 frhklA2J0xY8LamDhup9YuZHHzhlkZf/6Ak0redKDIRqe4J6k090oV9QpntaupXFxFO8/PLxk
 ZO8MNoi/2+VLJCqP/1wIGbM+GN/FDE5XdCxs//7tpzWCSFsklY6PLSOI3afO2R5fOERXXTo76
 7BUOtm7iXB24zp9A==
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

ETIME seems to be missing, so just alias it to ETIMEDOUT
It's just used by internal functions of the tools.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 tools/virtual.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/tools/virtual.c b/tools/virtual.c
index 010a3aab..9a4dde8e 100644
=2D-- a/tools/virtual.c
+++ b/tools/virtual.c
@@ -69,6 +69,11 @@
 #include <fcntl.h>
 #include <assert.h>

+// for FreeBSD
+#ifndef ETIME
+#define ETIME ETIMEDOUT
+#endif
+
 #define FORCE_FULL_REDRAW 0
 #define FORCE_16BIT_XFER 0

=2D-
2.39.5

