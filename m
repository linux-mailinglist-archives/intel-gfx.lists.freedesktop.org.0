Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9033B5C70
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 12:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E0CE6E41D;
	Mon, 28 Jun 2021 10:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C862D6E41B
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Jun 2021 10:21:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="207744055"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="207744055"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 03:21:20 -0700
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="456271518"
Received: from mdosreme-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.19.149])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 03:21:18 -0700
MIME-Version: 1.0
In-Reply-To: <20210624095359.GA29649@duo.ucw.cz>
References: <20210624095359.GA29649@duo.ucw.cz>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Pavel Machek <pavel@ucw.cz>, intel-gfx@lists.freedesktop.org,
 jani.nikula@linux.intel.com, kernel list <linux-kernel@vger.kernel.org>,
 rodrigo.vivi@intel.com
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <162487567602.6944.6736788493261786550@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 28 Jun 2021 13:21:16 +0300
Subject: Re: [Intel-gfx] 5.13-rc6 on thinkpad X220: graphics hangs with
 recent mainline
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

Quoting Pavel Machek (2021-06-24 12:53:59)
> Hi!
> 
> I'm getting graphics problems with 5.13-rc:
> 
> Debian 10.9, X, chromium and flightgear is in use. Things were more
> stable than this with previous kernels.
> 
> Any ideas?

The error you are seeing:

> [185300.784992] i915 0000:00:02.0: [drm] Resetting chip for stopped heartbeat on rcs0
> [185300.888694] i915 0000:00:02.0: [drm] fgfs[27370] context reset due to GPU hang

That just indicates that the rendering took too long. It could be caused
by a change in how the application renders, userspace driver or i915. So
a previously on-the-edge-of-timeout operation may have got pushed beyond
the timeout, or the rendering genuinely got completely stuck.

If you only updated the kernel, not the application or userspace, could
you bisect the commit that introduced the behavior and report:

https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs

We have changes around this area, so would be helpful if you can bisect
the commit that started the behavior.

Regards, Joonas

> 
> Best regards,
>                                                                 Pavel
> 
> [185233.329693] wlp3s0: deauthenticated from 5c:f4:ab:10:d2:bb (Reason: 16=GROUP_KEY_HANDSHAKE_TIMEOUT)
> [185234.040352] wlp3s0: authenticate with 5c:f4:ab:10:d2:bb
> [185234.043836] wlp3s0: send auth to 5c:f4:ab:10:d2:bb (try 1/3)
> [185234.046652] wlp3s0: authenticated
> [185234.049087] wlp3s0: associate with 5c:f4:ab:10:d2:bb (try 1/3)
> [185234.052667] wlp3s0: RX AssocResp from 5c:f4:ab:10:d2:bb (capab=0x411 status=0 aid=1)
> [185234.055398] wlp3s0: associated
> [185300.784992] i915 0000:00:02.0: [drm] Resetting chip for stopped heartbeat on rcs0
> [185300.888694] i915 0000:00:02.0: [drm] fgfs[27370] context reset due to GPU hang
> [185472.274563] usb 2-1.1: USB disconnect, device number 3
> [185472.274578] usb 2-1.1.2: USB disconnect, device number 5
> [185472.281518] hid-generic 0003:04F2:0111.0003: usb_submit_urb(ctrl) failed: -19
> [185472.299837] hid-generic 0003:04F2:0111.0003: usb_submit_urb(ctrl) failed: -19
> [185472.305986] hid-generic 0003:04F2:0111.0003: usb_submit_urb(ctrl) failed: -19
> [185472.328012] hid-generic 0003:04F2:0111.0003: usb_submit_urb(ctrl) failed: -19
> [185472.333738] usb 2-1.1.3: USB disconnect, device number 6
> [185673.454821] usb 2-1.1: new high-speed USB device number 7 using ehci-pci
> [185673.563486] usb 2-1.1: New USB device found, idVendor=1a40, idProduct=0101, bcdDevice= 1.11
> [185673.563502] usb 2-1.1: New USB device strings: Mfr=0, Product=1, SerialNumber=0
> [185673.563509] usb 2-1.1: Product: USB 2.0 Hub
> [185673.564488] hub 2-1.1:1.0: USB hub found
> [185673.564595] hub 2-1.1:1.0: 4 ports detected
> ...
> [207277.385543] wlp3s0: deauthenticated from 5c:f4:ab:10:d2:bb (Reason: 16=GROUP_KEY_HANDSHAKE_TIMEOUT)
> [207278.062061] wlp3s0: authenticate with 5c:f4:ab:10:d2:bb
> [207278.068175] wlp3s0: send auth to 5c:f4:ab:10:d2:bb (try 1/3)
> [207278.070985] wlp3s0: authenticated
> [207278.075545] wlp3s0: associate with 5c:f4:ab:10:d2:bb (try 1/3)
> [207278.080793] wlp3s0: RX AssocResp from 5c:f4:ab:10:d2:bb (capab=0x411 status=0 aid=1)
> [207278.084081] wlp3s0: associated
> [207564.046469] i915 0000:00:02.0: [drm] Resetting chip for stopped heartbeat on rcs0
> [207564.150293] i915 0000:00:02.0: [drm] fgfs[25729] context reset due to GPU hang
> [209075.178776] wlp3s0: deauthenticated from 5c:f4:ab:10:d2:bb (Reason: 16=GROUP_KEY_HANDSHAKE_TIMEOUT)
> [209075.841872] wlp3s0: authenticate with 5c:f4:ab:10:d2:bb
> [209075.845305] wlp3s0: send auth to 5c:f4:ab:10:d2:bb (try 1/3)
> [209075.851186] wlp3s0: authenticated
> [209075.852537] wlp3s0: associate with 5c:f4:ab:10:d2:bb (try 1/3)
> [209075.855972] wlp3s0: RX AssocResp from 5c:f4:ab:10:d2:bb (capab=0x411 status=0 aid=1)
> [209075.858522] wlp3s0: associated
> [210159.723726] PM: suspend entry (deep)
> [210159.741497] Filesystems sync: 0.017 seconds
> [210159.743585] Freezing user space processes ... (elapsed 0.009 seconds) done.
> [210159.753345] OOM killer disabled.
> [210159.753349] Freezing remaining freezable tasks ... (elapsed 0.003 seconds) done.
> [210159.757357] printk: Suspending console(s) (use no_console_suspend to debug)
> [210159.945365] sd 2:0:0:0: [sdb] Synchronizing SCSI cache
> [210159.945443] sd 0:0:0:0: [sda] Synchronizing SCSI cache
> [210159.945651] sd 0:0:0:0: [sda] Stopping disk
> [210159.947225] sd 2:0:0:0: [sdb] Stopping disk
> [210160.019791] wlp3s0: deauthenticating from 5c:f4:ab:10:d2:bb by local choice (Reason: 3=DEAUTH_LEAVING)
> [210160.021158] e1000e: EEE TX LPI TIMER: 00000011
> [210161.245106] PM: suspend devices took 1.488 seconds
> [210161.266601] ACPI: EC: interrupt blocked
> [210161.305431] ACPI: Preparing to enter system sleep state S3
> [210161.313532] ACPI: EC: event blocked
> [210161.313535] ACPI: EC: EC stopped
> [210161.313537] PM: Saving platform NVS memory
> [210161.313548] Disabling non-boot CPUs ...
> ...
> [224698.957159] wlp3s0: associated
> [229707.724067] wlp3s0: deauthenticated from 5c:f4:ab:10:d2:bb (Reason: 16=GROUP_KEY_HANDSHAKE_TIMEOUT)
> [229708.370607] wlp3s0: authenticate with 5c:f4:ab:10:d2:bb
> [229708.373732] wlp3s0: send auth to 5c:f4:ab:10:d2:bb (try 1/3)
> [229708.376501] wlp3s0: authenticated
> [229708.379997] wlp3s0: associate with 5c:f4:ab:10:d2:bb (try 1/3)
> [229708.383773] wlp3s0: RX AssocResp from 5c:f4:ab:10:d2:bb (capab=0x411 status=0 aid=1)
> [229708.386423] wlp3s0: associated
> [229756.518759] i915 0000:00:02.0: [drm] Resetting chip for stopped heartbeat on rcs0
> [229756.622596] i915 0000:00:02.0: [drm] fgfs[2648] context reset due to GPU hang
> 
> -- 
> http://www.livejournal.com/~pavelmachek
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
