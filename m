Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10127492F1A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 21:16:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C16A10E556;
	Tue, 18 Jan 2022 20:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F96010E556;
 Tue, 18 Jan 2022 20:16:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3D2F7A0BCB;
 Tue, 18 Jan 2022 20:16:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bjorn Helgaas" <helgaas@kernel.org>
Date: Tue, 18 Jan 2022 20:16:47 -0000
Message-ID: <164253700724.25099.5419266136572274781@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220114002843.2083382-1-lucas.demarchi@intel.com>
In-Reply-To: <20220114002843.2083382-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv5=2C1/5=5D_x86/quirks=3A_Fix_stole?=
 =?utf-8?q?n_detection_with_integrated_+_discrete_GPU_=28rev3=29?=
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

Series: series starting with [v5,1/5] x86/quirks: Fix stolen detection with integrated + discrete GPU (rev3)
URL   : https://patchwork.freedesktop.org/series/98864/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
004c14a82918 x86/quirks: Fix stolen detection with integrated + discrete GPU
-:49: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#49: 
[1] https://lore.kernel.org/linux-pci/20201104120506.172447-1-tejaskumarx.surendrakumar.upadhyay@intel.com/

-:52: WARNING:UNKNOWN_COMMIT_ID: Unknown commit id '7329e2608d04', maybe rebased or not pulled?
#52: 
commit 7329e2608d04 ("x86/gpu: Reserve stolen memory for first integrated Intel GPU")

-:84: WARNING:BAD_SIGN_OFF: Do not use whitespace before Signed-off-by:
#84: 
    Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

-:85: WARNING:BAD_SIGN_OFF: Do not use whitespace before Signed-off-by:
#85: 
    Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

-:86: WARNING:BAD_SIGN_OFF: Do not use whitespace before Cc:
#86: 
    Cc: stable@vger.kernel.org

-:122: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Bjorn Helgaas <helgaas@kernel.org>' != 'Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>'

total: 0 errors, 6 warnings, 0 checks, 28 lines checked
d4402bab0ee8 x86/quirks: Stop using QFLAG_APPLY_ONCE in via_bugs()
64e04c0fd410 x86/quirks: Stop using QFLAG_APPLY_ONCE in nvidia_bugs()
4c0ee88e30b2 x86/quirks: Remove unused logic for flags
fca96ad72add x86/quirks: Improve line wrap on quirk conditions


