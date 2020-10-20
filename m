Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C9F293E9A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 16:25:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 560BE6E157;
	Tue, 20 Oct 2020 14:25:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959C56E157
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 14:25:22 +0000 (UTC)
IronPort-SDR: pMERATo2bDBXnxzWPtiyKcy6T3TXTKm3zKYWaRheYix/dRqs5+yVuEvQ0u6XPXtLYiblb+Yzfd
 pPFzKNQvE+eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="228845595"
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="228845595"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 07:25:21 -0700
IronPort-SDR: QveZ2f++q7m+N227pxhhOcjNtTLZ3JKhM40+Pl1lqOSSmLspS1/MW7tWPCRmrSQSoZAFsF940U
 ZgXb8tiIge5Q==
X-IronPort-AV: E=Sophos;i="5.77,397,1596524400"; d="scan'208";a="533079020"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2020 07:25:19 -0700
Date: Tue, 20 Oct 2020 17:25:16 +0300
From: Imre Deak <imre.deak@intel.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Andrzej Kre <andrzej.kre@gmail.com>
Message-ID: <20201020142516.GC3370607@ideak-desk.fi.intel.com>
References: <CA+Gspvj6MpJsjFWQnhrVf971EpBoSvUk1DCyPr62N9nJUMOFcw@mail.gmail.com>
 <20201019142459.GM1667571@kuha.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019142459.GM1667571@kuha.fi.intel.com>
Subject: Re: [Intel-gfx] USB-C DP mode problem on linux
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Mon, Oct 19, 2020 at 05:24:59PM +0300, Heikki Krogerus wrote:
> Hi Andrzej,
> 
> On Sat, Oct 17, 2020 at 01:34:54PM +0200, Andrzej Kre wrote:
> > Hi,
> > 
> > I know that You were involved in working on USB-C DP drivers.
> > You are my last chance to resolve my issue.
> > 
> > On my HP laptop I have Intel UHD Graphics 620.
> > When I'm connecting my 4K monitor to Display Port. It is assigning to
> > DP-2-2 socket and  I have full 3840x2160 with 60.00Hz
> > But, when I'm connecting the same monitor to the USB-C port, then it is
> > connecting to the DP-1 socket and the maximum that it can achieve is
> > 3840x2160 with only 30.00Hz.
> > But I'm making some trick: I'm connecting the same monitor through HDMI, so
> > it is connecting to DP-1 socket, and simultaneously I'm connecting USB-C,
> > and now USB-C is connecting to DP-2-2 socket (because DP-1 is occupied by
> > HDMI) and I can have full 4K with 60Hz.
> > Please, help me, how to force USB-C to connect always to DP-2-2 socket?
> > Or do You know maybe where is the problem?
> 
> Unfortunately we have no control over the mux in the operating system
> on Skylakes, at least in USB subsystem. It all happens in firmware.
> Maybe graphics side can do something.
> 
> Adding Jani, Imre, Ville and the Intel GFX list.

On SKL/KBL the USB-C -> native DP/HDMI conversion is done by an off-CPU
chip and the display driver doesn't have a way either to affect the
muxing.

Not sure why things work on DP-2 and not on DP-1, there is no port
specific limits on the CPU side that would explain this. There is a link
training failure in the log, so would be good to see more details on
that. Could you file a ticket at 
https://gitlab.freedesktop.org/drm/intel/-/issues
providing a full log booting with drm.debug=0x1e for the working and
non-working cases?

Thanks,
Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
