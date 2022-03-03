Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6864CBC83
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 12:28:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B8A10E273;
	Thu,  3 Mar 2022 11:28:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4ED1410E20D;
 Thu,  3 Mar 2022 11:27:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49FEEA7DFB;
 Thu,  3 Mar 2022 11:27:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Date: Thu, 03 Mar 2022 11:27:58 -0000
Message-ID: <164630687827.19854.15194588846451829171@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
In-Reply-To: <20220228110822.491923-1-jakobkoschel@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Remove_usage_of_list_iterator_past_the_loop_body_=28rev5=29?=
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

Series: Remove usage of list iterator past the loop body (rev5)
URL   : https://patchwork.freedesktop.org/series/100822/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ceb0dd20faa6 drivers: usb: remove usage of list iterator past the loop body
-:67: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#67: FILE: drivers/usb/gadget/udc/at91_udc.c:158:
+			seq_printf(s, "\treq %p len %d/%d buf %p\n",
+					&req->req, length,

total: 0 errors, 0 warnings, 1 checks, 463 lines checked
b749f91c0742 treewide: remove using list iterator after loop body as a ptr
-:38: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#38: 
#define gr_free_dma_desc(a, b) do { __gr_free_dma_desc(a, b); __magic_uninit(b); } while (0)

-:38: WARNING:COMMIT_COMMENT_SYMBOL: Commit log lines starting with '#' are dropped by git as comments
#38: 
#define gr_free_dma_desc(a, b) do { __gr_free_dma_desc(a, b); __magic_uninit(b); } while (0)

-:74: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 2 warnings, 0 checks, 9 lines checked
5f1777a3e9c2 treewide: fix incorrect use to determine if list is empty
bad42abafeb1 drivers: remove unnecessary use of list iterator variable
b7d60a03651d treewide: remove dereference of list iterator after loop body
d6c929398cf0 treewide: remove check of list iterator against head past the loop body
-:310: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#310: FILE: drivers/dma/ppc4xx/adma.c:947:
+				list_for_each_entry(tmp, &chan->chain,
 				    chain_node) {

-:322: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#322: FILE: drivers/dma/ppc4xx/adma.c:957:
+				BUG_ON(!iter);

-:507: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#507: FILE: drivers/gpu/drm/drm_memory.c:77:
+		if (tmp->bound <= offset
+		    && (tmp->bound + (tmp->pages << PAGE_SHIFT)) >=

-:1261: CHECK:CAMELCASE: Avoid CamelCase: <List>
#1261: FILE: drivers/staging/rtl8192e/rtl819x_TSProc.c:251:
+		list_for_each_entry(tmp, psearch_list, List) {

-:1262: CHECK:CAMELCASE: Avoid CamelCase: <Addr>
#1262: FILE: drivers/staging/rtl8192e/rtl819x_TSProc.c:252:
+			if (memcmp(tmp->Addr, Addr, 6) == 0 &&

-:1263: CHECK:CAMELCASE: Avoid CamelCase: <TSInfo>
#1263: FILE: drivers/staging/rtl8192e/rtl819x_TSProc.c:253:
+			    tmp->TSpec.f.TSInfo.field.ucTSID == TID &&

-:1263: CHECK:CAMELCASE: Avoid CamelCase: <ucTSID>
#1263: FILE: drivers/staging/rtl8192e/rtl819x_TSProc.c:253:
+			    tmp->TSpec.f.TSInfo.field.ucTSID == TID &&

-:1264: CHECK:CAMELCASE: Avoid CamelCase: <ucDirection>
#1264: FILE: drivers/staging/rtl8192e/rtl819x_TSProc.c:254:
+			    tmp->TSpec.f.TSInfo.field.ucDirection == dir) {

-:1265: CHECK:CAMELCASE: Avoid CamelCase: <pRet>
#1265: FILE: drivers/staging/rtl8192e/rtl819x_TSProc.c:255:
+				pRet = tmp;

-:1304: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1304: FILE: drivers/staging/rtl8192e/rtllib_rx.c:2629:
+		if (is_same_network(tmp, network,
+		   (tmp->ssid_len ? 1 : 0))) {

-:1384: WARNING:LONG_LINE_COMMENT: line length of 156 exceeds 100 columns
#1384: FILE: drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c:248:
+	//		IEEE80211_DEBUG(IEEE80211_DL_TS, "ADD:%pM, TID:%d, dir:%d\n", tmp->Addr, tmp->TSpec.ts_info.ucTSID, tmp->TSpec.ts_info.ucDirection);

-:1450: CHECK:CAMELCASE: Avoid CamelCase: <Suid>
#1450: FILE: fs/cifs/smb2misc.c:158:
+			if (tmp->Suid == le64_to_cpu(thdr->SessionId)) {

-:1450: CHECK:CAMELCASE: Avoid CamelCase: <SessionId>
#1450: FILE: fs/cifs/smb2misc.c:158:
+			if (tmp->Suid == le64_to_cpu(thdr->SessionId)) {

total: 0 errors, 2 warnings, 11 checks, 1642 lines checked


