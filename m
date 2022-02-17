Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6DB4B9865
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 06:44:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2E2D10E85B;
	Thu, 17 Feb 2022 05:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E7B110E843;
 Thu, 17 Feb 2022 05:44:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C1E9A0078;
 Thu, 17 Feb 2022 05:44:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Date: Thu, 17 Feb 2022 05:44:48 -0000
Message-ID: <164507668861.18053.12815518301417311440@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220215174743.GA878920@embeddedor>
In-Reply-To: <20220215174743.GA878920@embeddedor>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_treewide=3A_Replace_zero-length_arrays_with_flexible-array_?=
 =?utf-8?q?members?=
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

Series: treewide: Replace zero-length arrays with flexible-array members
URL   : https://patchwork.freedesktop.org/series/100251/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ff9fe74a5f35 treewide: Replace zero-length arrays with flexible-array members
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
(next-20220214$ spatch --jobs $(getconf _NPROCESSORS_ONLN) --sp-file script.cocci --include-headers --dir . > output.patch)

-:299: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#299: FILE: arch/x86/include/asm/pci.h:138:
+	uint8_t romdata[];

-:487: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#487: FILE: drivers/net/ethernet/i825xx/sun3_82586.h:253:
+  unsigned char  mc_list[][6];  ^I/* pointer to 6 bytes entries */$

-:487: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#487: FILE: drivers/net/ethernet/i825xx/sun3_82586.h:253:
+  unsigned char  mc_list[][6];  ^I/* pointer to 6 bytes entries */$

-:676: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#676: FILE: drivers/scsi/qla2xxx/qla_bsg.h:160:
+	uint8_t payload[]; /* payload for cmd */

-:746: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#746: FILE: drivers/scsi/qla4xxx/ql4_fw.h:1031:
+	uint8_t in_out_RISC_stack_dump[];	/*280 - ??? */

-:965: CHECK:CAMELCASE: Avoid CamelCase: <Content>
#965: FILE: fs/ksmbd/ntlmssp.h:98:
+	__u8 Content[];

-:996: CHECK:CAMELCASE: Avoid CamelCase: <FileName>
#996: FILE: fs/ksmbd/smb2pdu.h:762:
+	char   FileName[];     /* New name to be assigned */

-:1023: CHECK:CAMELCASE: Avoid CamelCase: <StreamName>
#1023: FILE: fs/ksmbd/smb2pdu.h:821:
+	char   StreamName[];

-:1062: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u8' over 'uint8_t'
#1062: FILE: fs/xfs/scrub/attr.h:27:
+	uint8_t			buf[];

-:1254: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 's32' over 'int32_t'
#1254: FILE: include/sound/sof/channel_map.h:42:
+	int32_t ch_coeffs[];

total: 0 errors, 3 warnings, 8 checks, 915 lines checked


