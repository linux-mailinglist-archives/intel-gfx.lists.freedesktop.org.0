Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3157618A65
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 22:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DFA310E660;
	Thu,  3 Nov 2022 21:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 42A3910E061;
 Thu,  3 Nov 2022 21:16:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C3FAA7E03;
 Thu,  3 Nov 2022 21:16:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Thu, 03 Nov 2022 21:16:19 -0000
Message-ID: <166751017921.9191.11726829501824549562@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221103155534.1966589-1-alexander.usyskin@intel.com>
In-Reply-To: <20221103155534.1966589-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_mei=3A_add_timeout_to_send?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: mei: add timeout to send
URL   : https://patchwork.freedesktop.org/series/110495/
State : warning

== Summary ==

Error: dim checkpatch failed
37ffcfbe1ad7 mei: add timeout to send
-:157: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#157: FILE: drivers/misc/mei/client.c:2087:
+			rets = wait_event_interruptible_timeout(cl->tx_wait,
+					cl->writing_state == MEI_WRITE_COMPLETE ||

-:166: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#166: FILE: drivers/misc/mei/client.c:2096:
+			rets = wait_event_interruptible(cl->tx_wait,
+					cl->writing_state == MEI_WRITE_COMPLETE ||

total: 0 errors, 0 warnings, 2 checks, 158 lines checked


