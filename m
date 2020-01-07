Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C42E8132CF3
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 18:27:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BBBA6E0F5;
	Tue,  7 Jan 2020 17:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A86C6E0F5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 17:27:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 09:27:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,406,1571727600"; d="scan'208";a="233275478"
Received: from ndcioban-mobl.jf.intel.com (HELO linux.intel.com)
 ([10.7.199.51])
 by orsmga002.jf.intel.com with SMTP; 07 Jan 2020 09:27:27 -0800
Received: by linux.intel.com (sSMTP sendmail emulation);
 Tue, 07 Jan 2020 09:24:57 -0800
Date: Tue, 7 Jan 2020 09:24:57 -0800
From: Nathan Ciobanu <nathan.d.ciobanu@linux.intel.com>
To: Lucien_Kao@compal.com
Message-ID: <20200107172457.GA18938@nc-hades.jf.intel.com>
References: <d7aba6970fbd48f2b32e2bc6d838ab20@TPEMBX01.compal.com>
 <s5hwoa8j3xi.wl-tiwai@suse.de>
 <5aff22f1e36e484fa52e17c855e8ddc8@TPEMBX03.compal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5aff22f1e36e484fa52e17c855e8ddc8@TPEMBX03.compal.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [alsa-devel] USB Type-C monitor flashes once when
 play a video file after unplug and re-plug the monitor
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
Cc: AJ_Cheng@compal.com, alsa-devel@alsa-project.org, CindyXT_Wang@compal.com,
 tiwai@suse.de, intel-gfx@lists.freedesktop.org, Nelson_Ye@compal.com,
 Shane_Yap@compal.com, Evan_Tseng@compal.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 06, 2020 at 08:08:04AM +0000, Lucien_Kao@compal.com wrote:
> Hi Takashi
> 
> We verified on Ubuntu 19.10 with kernel 5.4.0.0-050400-generic (please refer to attachment), the result is positive which symptom doesn't happen anymore once I played music or video sound output through Dell S2718D Type-C monitor. It seems had some fix in latest kernel.

Takashi, can you point to the patch series you suspect may have fixed this issue? 

Thanks,
Nathan
> 
> Thanks.
> 
> 
> -----Original Message-----
> From: Takashi Iwai <tiwai@suse.de> 
> Sent: Friday, January 3, 2020 5:16 PM
> To: Cheng. AJ (TPE) <AJ_Cheng@compal.com>
> Cc: intel-gfx@lists.freedesktop.org; alsa-devel@alsa-project.org; nathan.d.ciobanu@linux.intel.com; Wang. CindyXT (TPE) <CindyXT_Wang@compal.com>; Ye. Nelson (TPE) <Nelson_Ye@compal.com>; Yap. Shane (TPE) <Shane_Yap@compal.com>; Kao. Lucien (TPE) <Lucien_Kao@compal.com>; Tseng. Evan (TPE) <Evan_Tseng@compal.com>
> Subject: Re: [alsa-devel] USB Type-C monitor flashes once when play a video file after unplug and re-plug the monitor
> 
> On Fri, 03 Jan 2020 02:57:03 +0100,
> <AJ_Cheng@compal.com> wrote:
> > 
> > Hi Sirs,
> >         Here is chromebook SW team from Compal.
> > As the mail title, we hit issue that the external monitor will flash once when play video after hot pluging.
> > We can reproduce not only on chromebook but also ubuntu 16.04.
> > There has higher failure rate with Dell Solomon dock and Dell S2718D monitor.
> > 
> > We found adding the delay in "sound/pci/hda/patch_hdmi.c " can fix 
> > this issue.(as the attachment) May need your help to review and advice. Thanks.
> > 
> > Here is the issue number in gitlab for more detail.
> > https://gitlab.freedesktop.org/drm/intel/issues/318
> 
> Could you check whether it still happens with the latest upstream kernel, at least 5.4.y, if it wasn't tested yet?
> 
> I don't want to put a long delay just because of random reason unless it's really mandatory.  I'm wondering whether the recent write-sync change improves the situation, so let's check the recent code.
> 
> 
> thanks,
> 
> Takashi
> 
> > 
> > 
> > 
> > AJ Cheng
> > NID/NID1
> > e-mail: AJ_Cheng@compal.com<mailto:AJ_Cheng@compal.com>
> > Tel:  +886-2-8797-8599 ext. 17561
> > Mobile : +886-932827829
> > COMPAL Electronics, Inc.
> > 
> > [2 flash_once.diff <application/octet-stream (base64)>]
> > 
> > _______________________________________________
> > Alsa-devel mailing list
> > Alsa-devel@alsa-project.org
> > https://mailman.alsa-project.org/mailman/listinfo/alsa-devel


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
