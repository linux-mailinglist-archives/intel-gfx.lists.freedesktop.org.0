Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EEE41332E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 14:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 351B96E95D;
	Tue, 21 Sep 2021 12:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC896E95D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 12:09:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="203491773"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="203491773"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 05:09:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="549459308"
Received: from unknown (HELO localhost) ([10.251.218.108])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 05:09:35 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 21 Sep 2021 15:09:33 +0300
Resent-Message-ID: <8735pyt9j6.fsf@intel.com>
MIME-Version: 1.0
Received: from outlook.iglb.intel.com [163.33.184.135]
 by jnikula-mobl3.ger.corp.intel.com with IMAP (fetchmail-6.4.0.beta4)
 for <jani@localhost> (single-drop); Tue, 21 Sep 2021 14:27:00 +0300 (EEST)
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 irsmsx605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Mailbox Transport; Tue, 21 Sep 2021 12:26:18 +0100
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 21 Sep 2021 12:26:17 +0100
Received: from orsmga008.jf.intel.com (10.7.209.65) by
 orsmsx607.amr.corp.intel.com (10.22.229.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 21 Sep 2021 04:26:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="484148609"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga008.jf.intel.com with ESMTP; 21 Sep 2021 04:26:14 -0700
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
To: <alsa-devel@alsa-project.org>, <tiwai@suse.de>, <jani.nikula@intel.com>,
 Imre Deak <imre.deak@intel.com>, <dri-devel@lists.freedesktop.org>, "Russell
 King" <rmk+kernel@arm.linux.org.uk>, <gregkh@linuxfoundation.org>
CC: "Rafael J . Wysocki" <rafael@kernel.org>, <kai.vehmanen@linux.intel.com>, 
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 21 Sep 2021 14:18:10 +0300
Message-ID: <20210921111810.2766726-1-kai.vehmanen@linux.intel.com>
X-Mailer: git-send-email 2.32.0
Content-Transfer-Encoding: 8bit
X-MS-Exchange-Organization-Network-Message-Id: b45520f4-f2d2-4ff5-09df-08d97cf2a0e0
X-MS-Exchange-Organization-AuthSource: ORSMSX607.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
Content-Type: text/plain
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.8921095
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2242.012
Subject: [Intel-gfx] [RFC PATCH] component: do not leave master devres group
 open after bind
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

In current code, the devres group for aggregate master is left open
after call to component_master_add_*(). This leads to problems when the
master does further managed allocations on its own. When any
participating driver calls component_del(), this leads to immediate
release of resources.

This came up when investigating a page fault occurring with i915 DRM
driver unbind with 5.15-rc1 kernel. The following sequence occurs:

 i915_pci_remove()
   -> intel_display_driver_unregister()
     -> i915_audio_component_cleanup()
       -> component_del()
         -> component.c:take_down_master()
           -> hdac_component_master_unbind() [via master->ops->unbind()]
           -> devres_release_group(master->parent, NULL)

With older kernels this has not caused issues, but with audio driver
moving to use managed interfaces for more of its allocations, this no
longer works. Devres log shows following to occur:

component_master_add_with_match()
[  126.886032] snd_hda_intel 0000:00:1f.3: DEVRES ADD 00000000323ccdc5 devm_component_match_release (24 bytes)
[  126.886045] snd_hda_intel 0000:00:1f.3: DEVRES ADD 00000000865cdb29 grp< (0 bytes)
[  126.886049] snd_hda_intel 0000:00:1f.3: DEVRES ADD 000000001b480725 grp< (0 bytes)

audio driver completes its PCI probe()
[  126.892238] snd_hda_intel 0000:00:1f.3: DEVRES ADD 000000001b480725 pcim_iomap_release (48 bytes)

component_del() called() at DRM/i915 unbind()
[  137.579422] i915 0000:00:02.0: DEVRES REL 00000000ef44c293 grp< (0 bytes)
[  137.579445] snd_hda_intel 0000:00:1f.3: DEVRES REL 00000000865cdb29 grp< (0 bytes)
[  137.579458] snd_hda_intel 0000:00:1f.3: DEVRES REL 000000001b480725 pcim_iomap_release (48 bytes)

So the "devres_release_group(master->parent, NULL)" ends up freeing the
pcim_iomap allocation. Upon next runtime resume, the audio driver will
cause a page fault as the iomap alloc was released without the driver
knowing about it.

Fix this issue by using the "struct master" pointer as identifier for
the devres group, and by closing the devres group after the master->ops->bind()
call is done. This allows devres allocations done by the driver acting as
master to be isolated from the binding state of the aggregate driver. This
modifies the logic originally introduced in commit 9e1ccb4a7700
("drivers/base: fix devres handling for master device").

BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/4136
Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/base/component.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

Hi,
I'm sending this as RFC as I'm not sure of the implications of
not leaving the devres group open might have to other users
of the component framework.

For audio, the current behaviour seems very problematic. The display
codec is usually just one of many audio codecs attached to the controller,
and unbind of the display codec (and the aggregate driver created with
DRM), should not bring down the whole audio card.

However, now all allocations audio driver does after call to
component_master_add_with_match(), will be freed when display
driver calls component_del().

Closing the devres group at end of component_master_add_*() would
seem the cleanest option. Looking for feedback whether this approach
is feasible. One alternative would be for the audio driver to
close the "last opened" group after its call to component_master_add(),
but this seems messy (audio would make assumptions on component.c
internals).

diff --git a/drivers/base/component.c b/drivers/base/component.c
index 5e79299f6c3f..870485cbbb87 100644
--- a/drivers/base/component.c
+++ b/drivers/base/component.c
@@ -246,7 +246,7 @@ static int try_to_bring_up_master(struct master *master,
 		return 0;
 	}
 
-	if (!devres_open_group(master->parent, NULL, GFP_KERNEL))
+	if (!devres_open_group(master->parent, master, GFP_KERNEL))
 		return -ENOMEM;
 
 	/* Found all components */
@@ -258,6 +258,7 @@ static int try_to_bring_up_master(struct master *master,
 		return ret;
 	}
 
+	devres_close_group(master->parent, NULL);
 	master->bound = true;
 	return 1;
 }
@@ -282,7 +283,7 @@ static void take_down_master(struct master *master)
 {
 	if (master->bound) {
 		master->ops->unbind(master->parent);
-		devres_release_group(master->parent, NULL);
+		devres_release_group(master->parent, master);
 		master->bound = false;
 	}
 }

base-commit: 930e99a51fcc8b1254e0a45fbe0cd5a5b8a704a5
-- 
2.32.0

