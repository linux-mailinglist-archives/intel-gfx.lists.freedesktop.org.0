Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBDA36E44F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 06:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 264506E1A4;
	Thu, 29 Apr 2021 04:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA3A6EC72
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 04:47:11 +0000 (UTC)
Received: from mail-oi1-f199.google.com ([209.85.167.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <chris.chiu@canonical.com>) id 1lbyZy-0007Sr-8E
 for intel-gfx@lists.freedesktop.org; Thu, 29 Apr 2021 04:47:10 +0000
Received: by mail-oi1-f199.google.com with SMTP id
 n8-20020acad6080000b029018733b9e4b1so15431157oig.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 21:47:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=rRim53UzJWgVMkdOW0b/+ZBSUNTOdVPMyNPZwfBxAPo=;
 b=sfv+92ZDvEIplInTN5XY2LX0TYWuMYzdwNlueUMNHTeVNZVkj0U8aAtw1OPHNClJCw
 5b0PD4hNJFWXxhRGmgUqnpd34yjktNl1f3bd2Lgx644NfdXXgkogbzfAvpLs+jh6EN2g
 y29hJwl99iLClRDo793mtBnpfUYrrG1fKbJxGp51gFd82E2/6bJunIgVsrSnUQHV4wZ7
 kEyCJQIZd3Tkwl7zo3hXHRizgYHQM14Fq2exBaAjSbcsLUc5QEwgFvF9Qy4C5uS0KFAn
 Oyv/qVrl0Be5DLmHkZdzOJit6tbgKS8vvj3dpU83Bs0JLiNav1mlrx1vSPLTAFFcNuCW
 K9tA==
X-Gm-Message-State: AOAM531rizXU/KGrHs4gtYa1LiCqbzycCss7RiaqJ6b7ggIOiYXtNOsV
 3/Grc3S6oZrhpUflRYL9JZxNXQMZgjnPVfltF4UCVOq1MleCvGT4SkV6gO7g3xqUvbtb4iZ7AXb
 aqsCyHK/ngX85VAQ4J20nfLQ1ZaRQFYQc+63Tnsgw3j260C+KjyPYzAtedfQW+g==
X-Received: by 2002:aca:3d86:: with SMTP id k128mr5603679oia.86.1619671629097; 
 Wed, 28 Apr 2021 21:47:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyqdMpxb8MWKz1tOE3sKrkJg5plm8nWbqA9fYdsOBpP6o5Ws798cfd23tiJN70JL2O/48OnzYTMqiwUxSqj8FI=
X-Received: by 2002:aca:3d86:: with SMTP id k128mr5603660oia.86.1619671628872; 
 Wed, 28 Apr 2021 21:47:08 -0700 (PDT)
MIME-Version: 1.0
From: Chris Chiu <chris.chiu@canonical.com>
Date: Thu, 29 Apr 2021 12:46:58 +0800
Message-ID: <CABTNMG1TRbAW+ULs9Ss27owvxppf-dA=F7M0vGp1EtHwDcK51w@mail.gmail.com>
To: imre.deak@intel.com, jani.nikula@linux.intel.com, 
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 Linux Kernel <linux-kernel@vger.kernel.org>
Subject: [Intel-gfx] TGL: : No video output on external monitor after unplug
 and re-plug the cable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We found another bug after the fix of
https://gitlab.freedesktop.org/drm/intel/-/issues/2538. The external
monitor is also connected via WD19's HDMI/DisplayPort just as #2538.
However, the display monitor can only be detected and show output at
the very first time we power on the WD19 dock. If we unplug the cable
and replug again, the monitor seems to be detected but there's no
video output.

When we power on the WD19 dock with cable connected to the monitor,
the drm kernel log shows as follows

 i915 0000:00:02.0: [drm:intel_get_hpd_pins.isra.0 [i915]] hotplug
event received, stat 0x00010000, dig 0x0088888a, pins 0x00000200, long
0x00000200
 i915 0000:00:02.0: [drm:intel_hpd_irq_handler [i915]] digital hpd on
[ENCODER:292:DDI D] - long
 i915 0000:00:02.0: [drm:intel_hpd_irq_handler [i915]] Received HPD
interrupt on PIN 9 - cnt: 10
 i915 0000:00:02.0: [drm:intel_dp_hpd_pulse [i915]] got hpd irq on
[ENCODER:292:DDI D] - long
 i915 0000:00:02.0: [drm:i915_hotplug_work_func [i915]] running
encoder hotplug functions
 i915 0000:00:02.0: [drm:i915_hotplug_work_func [i915]] Connector DP-1
(pin 9) received hotplug event. (retry 0)
 i915 0000:00:02.0: [drm:intel_dp_detect [i915]] [CONNECTOR:293:DP-1]
 i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling TC cold off
 i915 0000:00:02.0: [drm:tgl_tc_cold_request [i915]] TC cold block succeeded
 i915 0000:00:02.0: [drm:__intel_tc_port_lock [i915]] Port D/TC#1: TC
port mode reset (tbt-alt -> dp-alt)
 i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] enabling AUX D TC1
 i915 0000:00:02.0: [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX D/port
D: 0xf0000 AUX -> (ret=  8) 14 1e 40 55 02 00 00 00
 i915 0000:00:02.0: [drm:intel_dp_lttpr_init [i915]] LTTPR common
capabilities: 14 1e 40 55 02 00 00 00

Then I replug the cable, the intel_power_well_enable() in
intel_dp_aux_xfer() shows "enabling DC off" power domain instead of
enabling AUX D TC1. After that, the flooded i915 0000:00:02.0:
[drm:intel_dp_aux_xfer [i915]] AUX D/port D: timeout (status
0x7d4003ff) keeps show up and no video output.

I filed a bug on
https://gitlab.freedesktop.org/drm/intel/-/issues/3407 and also
uploaded the journal log  with kernel boot parameter
"drm.debug=0x10e".

Can anyone suggest what happens at the replug? What can we do to
identify the cause? Thanks

Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
