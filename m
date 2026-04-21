Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOOoJP8A52nW2gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 06:45:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAAE843648A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 06:45:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A638910E7BB;
	Tue, 21 Apr 2026 04:45:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jC89sHcy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A7F10E7B2;
 Tue, 21 Apr 2026 04:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776746747; x=1808282747;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IHKDrg7cPuZh6SeYBWJF66K4+eswB/V3HUJn5K628HI=;
 b=jC89sHcysYigkYYsGrgEms47K27hbgUUrgoMIe2KBvM76bIsMETo5cZZ
 l5Q/7rlznf5jofbDTtcxURYI8fY2OlXggXlPwzYBO7ug4vDM63d0Y/wB1
 TmKWHvwJtihklMLAE7x8sanFBL+Mjag26Dua1W/1wWVnHp3E7q78R8r+G
 Fh/ZZgbg5uGTuXyGN8aXBa6LBpAa8ohkTXNWPlKqdHpkwca6t6HHoL6gw
 Zal3tYBfNuN4xmbATsUzr0mAZIlTgWcL/ykehggPRvlTGVete+LoTYhA5
 oZELZuWbzlhqXrOruRmfHifnjQEfGnssrkoF84hc/Ki+AmbBxv6pK4nKV g==;
X-CSE-ConnectionGUID: H7ecB5/5TuqPnpI5957vYw==
X-CSE-MsgGUID: grFZe0AZTMSgTzTqThvZuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="80261111"
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="80261111"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 21:45:46 -0700
X-CSE-ConnectionGUID: 3g8bq7RqTVKDJg9YslSzuA==
X-CSE-MsgGUID: bK4x4j0MSs2VtqWS1JJTFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="228761144"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa007.fm.intel.com with ESMTP; 20 Apr 2026 21:45:44 -0700
Received: by black.igk.intel.com (Postfix, from userid 1001)
 id EAC2295; Tue, 21 Apr 2026 06:45:42 +0200 (CEST)
Date: Tue, 21 Apr 2026 06:45:42 +0200
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Francesco Orro <ncesco@interstellar.eu>,
 intel-gfx@lists.freedesktop.org, Imre Deak <imre.deak@intel.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: DP routing from iGPU to discrete Barlow Ridge TB5 on HP ZBook
 Fury G1i
Message-ID: <20260421044542.GA557136@black.igk.intel.com>
References: <pCmilDgt3Xijjdzu7H1d30dzm8IJbXFnle3yQ5nSR1Pj-snchn5xNpcq9Gb7hlh5bnsA3Efnm9cOR_VKi9RyxcRJxHlrqTW7WRPG36UgY5Q=@interstellar.eu>
 <aeaQ3Vlh6bp8-rwW@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aeaQ3Vlh6bp8-rwW@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mika.westerberg@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,black.igk.intel.com:mid]
X-Rspamd-Queue-Id: AAAE843648A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 20, 2026 at 04:47:25PM -0400, Rodrigo Vivi wrote:
> On Mon, Apr 20, 2026 at 04:04:02PM +0000, Francesco Orro wrote:
> > Hi,
> > 
> > Setup:
> >   HP ZBook Fury G1i 16 inch, BIOS X96 01.03.04
> >   Intel Arrow Lake-HX + Nvidia RTX PRO 1000 Blackwell (hybrid graphics)
> >   Kernel 6.19.13
> > 
> > The laptop exposes Thunderbolt 5 on both the integrated MTL iTBT (right
> > USB-C, domain0, 00:0d.2) and a discrete Intel Barlow Ridge (left USB-C,
> > domain1, 00:06.1 -> 05:00.0).
> > 
> > - Right port: i915 drives a DP tunnel over the iTBT host without issues.
> > - Left port: no i915 connector ever sees the external monitor. The TB
> >   driver allocates a DP tunnel on demand but DPRX reads time out, no DP
> >   source is feeding the Barlow DP_IN adapter.
> > - With nvidia-drm.modeset=1, a DP-MST connector on the Nvidia DRM device
> >   sees the monitor via the left port (EDID readable, modes negotiated).
> >   The path Nvidia -> Barlow DP_IN is functional.
> > 
> > Current hypothesis: on this board the discrete Barlow Ridge DP_IN is
> > either hardwired to a Nvidia output or behind a firmware-programmed mux
> > that BIOS latches to Nvidia at POST and is not exposed to the OS. i915
> > would therefore have no path to drive the left ports, by design.
> 
> yes, that is usually the case.
> 
> > 
> > Tests done that did not surface an OS-visible lever:
> > - i2cdetect across all SMBus/i801 busses: no DP mux/retimer at plausible
> >   addresses (0x60-0x7F).
> > - DSDT/SSDT dump (iasl -d): no Device/Method referring to DP routing,
> >   DPMUX, retimer programming, or dock display source selection.
> > - HP WMI + /sys/devices/virtual/firmware-attributes/hp-bioscfg attribute
> >   enumeration: nothing switching dock display source. "Graphics"
> >   attribute only offers Hybrid/Discrete.
> > - PCI config dump of Barlow Ridge: standard USB4 NHI, no vendor-specific
> >   capability hinting at source selection.
> > - acpi.no_usb4_osc kernel param (locally patched) to opt out of OSC USB4
> >   native support: no change in i915 visibility of the dock.
> > 
> > Is there any known way to route an Intel DDI output to a PCIe-attached
> > Barlow Ridge DP_IN adapter, or is this strictly a design where the dGPU
> > is the only valid DP source for the discrete TB controller on this class
> > of HP workstations?
> 
> I believe this is physically connected or static mux without any way to
> re-route this. But I might be wrong.
> 

This is my understanding too based on the systems I've seen.
