Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED8F44E672
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 13:35:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B42236EBA3;
	Fri, 12 Nov 2021 12:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 974446EBA3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Nov 2021 12:35:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="220333825"
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="220333825"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 04:35:15 -0800
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="504872249"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 04:35:13 -0800
Date: Fri, 12 Nov 2021 14:27:34 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Takashi Iwai <tiwai@suse.de>
In-Reply-To: <s5hczn53d4l.wl-tiwai@suse.de>
Message-ID: <alpine.DEB.2.22.394.2111121424170.3554566@eliteleevi.tm.intel.com>
References: <20211110210307.1172004-1-kai.vehmanen@linux.intel.com>
 <s5hzgqb65h0.wl-tiwai@suse.de>
 <alpine.DEB.2.22.394.2111110015250.3554566@eliteleevi.tm.intel.com>
 <s5h1r3m6csi.wl-tiwai@suse.de>
 <alpine.DEB.2.22.394.2111111920450.3554566@eliteleevi.tm.intel.com>
 <s5hczn53d4l.wl-tiwai@suse.de>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] ALSA: hda: fix general protection fault in
 azx_runtime_idle
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
Cc: alsa-devel@alsa-project.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Fri, 12 Nov 2021, Takashi Iwai wrote:

> On Thu, 11 Nov 2021 18:39:36 +0100, Kai Vehmanen wrote:
> > And later
> > [   54.770701] Enabling runtime PM for inactive device (0000:00:1f.3) with active children
> > [   54.770718] WARNING: CPU: 0 PID: 10 at drivers/base/power/runtime.c:1439 pm_runtime_enable+0x98/0xb0
> > 
> > Adding a "pm_runtime_set_active(&pci->dev)" to both azx_free() and 
> > azx_probe_continue() seems to help and fix still works.
> 
> Ah yes, I was confused as if it were already called in hdac_device.c,
> but this was about the HD-audio bus controller, not the codec.
> 
> Below is the revised one.
[...]
> Currently we haven't explicitly enable and allow/forbid the runtime PM
> at the probe and the remove phases of HD-audio controller driver, and
> this was the reason of a GPF mentioned in the commit e81478bbe7a1
> ("ALSA: hda: fix general protection fault in azx_runtime_idle");
> namely, even after the resources are released, the runtime PM might be
> still invoked by the bound graphics driver during the remove of the
> controller driver.  Although we've fixed it by clearing the drvdata
> reference, it'd be also better to cover the runtime PM issue more
> properly.
> 
> This patch adds a few more pm_runtime_*() calls at the probe and the
> remove time for setting and cleaning up the runtime PM.  Particularly,
> now more explicitly pm_runtime_enable() and _disable() get called as
> well as pm_runtime_forbid() call at the remove callback, so that a
> use-after-free should be avoided.
> 
> Reported-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Signed-off-by: Takashi Iwai <tiwai@suse.de>

ack, tested this and no warnings anymore.

Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Tested-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Br, Kai
