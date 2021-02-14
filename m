Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD4F31AFB7
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Feb 2021 09:19:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0132A6E8AF;
	Sun, 14 Feb 2021 08:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3D5C6E8AF
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Feb 2021 08:19:13 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E1E3C64E6D;
 Sun, 14 Feb 2021 08:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613290753;
 bh=LVhazhulwgueKUKgd1qOvXMcMk+lqkImAq3V3YZFT9c=;
 h=Subject:To:Cc:From:Date:From;
 b=EhD4+D3I1IQKbLoXX4nygRDrs7Jrp1/Ddjz+JTdfDXgIVph2/v6Wdq/f69Eh0ZUbL
 L6psIxHfodFWMs+zWmfnVj6ETiSSPMjtk0qP4VQXoIJHB3YPlI79YzbZItPqDlCUL4
 chU84RY4i0j8c16RHTZl5lu5jOKAbJQz/A0ARzss=
To: Wayne.Lin@amd.com, gitlab@gitlab.freedesktop.org,
 gregkh@linuxfoundation.org, imre.deak@intel.com,
 intel-gfx@lists.freedesktop.org, lyude@redhat.com
From: <gregkh@linuxfoundation.org>
Date: Sun, 14 Feb 2021 09:19:01 +0100
Message-ID: <161329074122227@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
Subject: [Intel-gfx] Patch "drm/dp_mst: Don't report ports connected if
 nothing is attached to them" has been added to the 5.10-stable tree
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


This is a note to let you know that I've just added the patch titled

    drm/dp_mst: Don't report ports connected if nothing is attached to them

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     drm-dp_mst-don-t-report-ports-connected-if-nothing-is-attached-to-them.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 873e5bb9fbd99e4a26c448b5c7af942a6d7aa60d Mon Sep 17 00:00:00 2001
From: Imre Deak <imre.deak@intel.com>
Date: Mon, 1 Feb 2021 14:01:42 +0200
Subject: drm/dp_mst: Don't report ports connected if nothing is attached to them

From: Imre Deak <imre.deak@intel.com>

commit 873e5bb9fbd99e4a26c448b5c7af942a6d7aa60d upstream.

Reporting a port as connected if nothing is attached to them leads to
any i2c transactions on this port trying to use an uninitialized i2c
adapter, fix this.

Let's account for this case even if branch devices have no good reason
to report a port as plugged with their peer device type set to 'none'.

Fixes: db1a07956968 ("drm/dp_mst: Handle SST-only branch device case")
References: https://gitlab.freedesktop.org/drm/intel/-/issues/2987
References: https://gitlab.freedesktop.org/drm/intel/-/issues/1963
Cc: Wayne Lin <Wayne.Lin@amd.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: <stable@vger.kernel.org> # v5.5+
Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Lyude Paul <lyude@redhat.com>
Reported-by: Thiago Macieira <gitlab@gitlab.freedesktop.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20210201120145.350258-1-imre.deak@intel.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/drm_dp_mst_topology.c |    1 +
 1 file changed, 1 insertion(+)

--- a/drivers/gpu/drm/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/drm_dp_mst_topology.c
@@ -4224,6 +4224,7 @@ drm_dp_mst_detect_port(struct drm_connec
 
 	switch (port->pdt) {
 	case DP_PEER_DEVICE_NONE:
+		break;
 	case DP_PEER_DEVICE_MST_BRANCHING:
 		if (!port->mcs)
 			ret = connector_status_connected;


Patches currently in stable-queue which might be from imre.deak@intel.com are

queue-5.10/drm-dp_mst-don-t-report-ports-connected-if-nothing-is-attached-to-them.patch
queue-5.10/drm-i915-tgl-make-sure-typec-fia-is-powered-up-when-initializing-it.patch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
