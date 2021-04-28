Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EB836E17B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 00:18:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5956EC96;
	Wed, 28 Apr 2021 22:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F46E6EC66;
 Wed, 28 Apr 2021 22:18:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F15BFA66C9;
 Wed, 28 Apr 2021 22:18:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Wed, 28 Apr 2021 22:18:46 -0000
Message-ID: <161964832695.24077.7640195591522888034@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210428215257.500088-1-hdegoede@redhat.com>
In-Reply-To: <20210428215257.500088-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm_+_usb-type-c=3A_Add_support_for_out-of-band_hotplug_not?=
 =?utf-8?q?ification?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm + usb-type-c: Add support for out-of-band hotplug notification
URL   : https://patchwork.freedesktop.org/series/89604/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7d72fc2833b0 drm/connector: Make the drm_sysfs connector->kdev device hold a reference to the connector
e69c974828dd drm/connector: Add a fwnode pointer to drm_connector and register with ACPI
-:20: WARNING:BAD_SIGN_OFF: Non-standard signature: Co-authored-by:
#20: 
Co-authored-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

total: 0 errors, 1 warnings, 0 checks, 69 lines checked
52e6ef8c1a46 drm/connector: Add drm_connector_find_by_fwnode() function
-:51: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'connector->fwnode == fwnode'
#51: FILE: drivers/gpu/drm/drm_sysfs.c:547:
+		if ((connector->fwnode == fwnode) ||
+		    (connector->fwnode && connector->fwnode->secondary == fwnode)) {

-:58: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#58: FILE: drivers/gpu/drm/drm_sysfs.c:554:
+
+	}

total: 0 errors, 0 warnings, 2 checks, 48 lines checked
fcf217284f5a drm/connector: Add support for out-of-band hotplug notification
fb6f9a52ae8e drm/i915: Associate ACPI connector nodes with connector entries
3bd3a41f97eb drm/i915/dp: Add support for out-of-bound hotplug events
1714256c4348 usb: typec: altmodes/displayport: Make dp_altmode_notify() more generic
9397aa66c7ae usb: typec: altmodes/displayport: Notify drm subsys of hotplug events
e4887fe8da14 platform/x86/intel_cht_int33fe: Correct "displayport" fwnode reference


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
