Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A853F17C931
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 00:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F716EDAC;
	Fri,  6 Mar 2020 23:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30DF96EDAA
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 23:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583538886;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=v0K5QDFeKgplPdbYfM9NaqTf1TFgxxJAitJmeiSzRLc=;
 b=bHEpwEyAVJnUS348uKMzfzGoBgBXZqGaYIG23L6uc99G69ZBttueogx+Y1gUUslND/6oC/
 rHLb/aGleUGmqe4sDaS8L6H3A2nxcink3Lk0Cf6WgaigpoDn+vpO1LW8SKHIx3cK43B6J2
 bfMEWYx0393HH+bI7QvfJCysxs31hH8=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-5ZikwXL_OgWC-qSeV8iuJw-1; Fri, 06 Mar 2020 18:54:40 -0500
X-MC-Unique: 5ZikwXL_OgWC-qSeV8iuJw-1
Received: by mail-qt1-f197.google.com with SMTP id a29so2524626qtb.18
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Mar 2020 15:54:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=v0K5QDFeKgplPdbYfM9NaqTf1TFgxxJAitJmeiSzRLc=;
 b=LOxFks9mpAt+cj5neSN/dBgKK/lZjIoUcNssrytwwJifV5MB5wA4BcFg6zP0JHTk02
 gsviJMKqdZfG2w4OqE9NQdaHO+JQkQDDkB5u7cTwI34eu+2xgA3g6WYBs7RfxxoohLsZ
 zxPu5kbXhwnrfsXsy1UDfnP8BjYhUM9oQ+KVSfi5YPZUh0EQzTX/tI3Hs7gUtmQv21EV
 8h057F3YBt1AJH2zmzBTJxmskTVLTpijuX9VLbnzzpwiPti4j4F1z73NGc9wIWfSZ5dZ
 h1XRtc5ZGMNofP52gY19N0Ti/mqtABvX7S2a6wEV3k74Dll49Fir3taQG4yrTvaV6gM6
 mKYQ==
X-Gm-Message-State: ANhLgQ2+Ev2vOMFOQmq9NAD8AzZNA3VyVKUvikZlGHdGdAj7oaHmeai8
 7fRiEiArTv6MQ+ided30mfsW6OmvbDQ04ph0loxZ0vxLx4Mp17WObyEBVdG1CCgCq1Fzksb4uEM
 0mH5GulEIJgwZzCHPVnpkjwMnVkK+
X-Received: by 2002:a37:a1cc:: with SMTP id k195mr5437767qke.169.1583538879652; 
 Fri, 06 Mar 2020 15:54:39 -0800 (PST)
X-Google-Smtp-Source: ADFU+vscqNb2q09thk4RGKHSiHoinHtpHvvInwPn9aMp5gCYVMOuHWb6I7K7veuK0ZsHmBShdeQPjA==
X-Received: by 2002:a37:a1cc:: with SMTP id k195mr5437752qke.169.1583538879335; 
 Fri, 06 Mar 2020 15:54:39 -0800 (PST)
Received: from dhcp-10-20-1-196.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id k202sm5569970qke.134.2020.03.06.15.54.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 15:54:38 -0800 (PST)
Message-ID: <aebf675d3c44ed6dc6db670067503a32113ebce9.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Hans de Goede <hdegoede@redhat.com>, Alex Deucher
 <alexdeucher@gmail.com>,  "Lipski, Mikita" <mikita.lipski@amd.com>
Date: Fri, 06 Mar 2020 18:54:37 -0500
In-Reply-To: <77b812d5-5b87-49b7-87dc-16d50a5666df@redhat.com>
References: <99213368-5025-8435-502b-3d23b875ca60@redhat.com>
 <CADnq5_OUt5XaJ_Nf23F2zsKeuPgoka8p2S6ny-H2WK==Ncg7vA@mail.gmail.com>
 <b0181c20-017b-7e3f-13c0-3ea5b98cadaa@redhat.com>
 <CADnq5_MjaOD+QrupjQwjdu-MgVZm1sg1x9=4uxdv92u1xuSdvQ@mail.gmail.com>
 <77b812d5-5b87-49b7-87dc-16d50a5666df@redhat.com>
Organization: Red Hat
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] 5.6 DP-MST regression: 1 of 2 monitors on TB3
 (DP-MST) dock no longer light up
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2020-02-26 at 18:52 +0100, Hans de Goede wrote:
> Hi,
> 
> On 2/26/20 5:05 PM, Alex Deucher wrote:
> > On Wed, Feb 26, 2020 at 10:43 AM Hans de Goede <hdegoede@redhat.com>
> > wrote:
> > > Hi,
> > > 
> > > On 2/26/20 4:29 PM, Alex Deucher wrote:
> > > > On Wed, Feb 26, 2020 at 10:16 AM Hans de Goede <hdegoede@redhat.com>
> > > > wrote:
> > > > > Hi Lyude and everyone else,
> > > > > 
> > > > > Lyude I'm mailing you about this because you have done a lot of
> > > > > work on DP MST, but if this rings a bell to anyone else feel
> > > > > free to weigh in on this.
> > > > 
> > > > Might be a duplicate of:
> > > > https://gitlab.freedesktop.org/drm/amd/issues/1052
> > > 
> > > Looks like you are right, reverting the commit which the bisect
> > > from that issue points to:
> > > 
> > > cd82d82cbc04 ("drm/dp_mst: Add branch bandwidth validation to MST atomic
> > > check")
> > > 
> > > Fixes the issue for me. I will add a comment to the issue.
> > > 
> > > Note I'm using integrated Intel gfx, so that means that this issue
> > > definitely is not amdgpu specific.
> > > 
> > 
> > I'm not too familiar with the mst code, but I wonder if we were
> > exceeding the bandwidth limits in some setups and it just happened to
> > work, but now that we enforcing them, they don't which is correct, but
> > a regression from some users' perspective?
> 
> I seriously doubt that is the case according to:
> https://support.lenovo.com/nl/en/solutions/pd029622
> 
> The gen 2 tb3 dock can handle 2 external
> displays at 3840*2160@60Hz together with the internal
> panel being on and both my external displays run at
> 1920x1080@60 so I'm consuming less then half of the
> maximum bandwidth.

OK-so I wasn't actually able to reproduce this issue with my setup (I've got a
X1 Carbon 7th generation, but I don't have the 2nd generation dock - only the
first generation dock) but I'm certain I've actually fixed it now, since I
realized we did not have a very good understanding of how PBN limitations are
advertised with MST. I rewrote the bandwidth checks again, and in the process
also found a much more subtle regression that got introduced in 5.6, which
would sometimes cause MST probing to appear to just stop in it's tracks with
no messages.

I cc'd both patch series to you, so I'd recommend applying them both onto your
kernel and seeing if that fixes your issues. If it still doesn't, then get me
some kernel logs with:

drm.debug=0x116 log_buf_len=50M

And I'll take a closer look. I'm pretty confident this should fix everything
though :)

> 
> There definitely is a bug somewhere in the
> cd82d82cbc04 ("drm/dp_mst: Add branch bandwidth validation to MST atomic
> check")
> commit (or somewhere else and triggered by that commit).
> 
> Regards,
> 
> Hans
> 
> 
> 
> 
> 
> 
> 
> > Alex
> > 
> > 
> > > Regards,
> > > 
> > > Hans
> > > 
> > > 
> > > 
> > > 
> > > > > I'm currently using a Lenovo X1 7th gen + a Lenovo TB3 gen 2 dock
> > > > > as my daily rider for testing purposes. When 5.6-rc1 came out I
> > > > > noticed that only 1 of the 2 1920x1080@60 monitors on the dock
> > > > > lights up.
> > > > > 
> > > > > There are no kernel errors in the logs, but mutter/gnome-shell says:
> > > > > 
> > > > > gnome-shell[1316]: Failed to post KMS update: Page flip of 93 failed
> > > > > 
> > > > > With 93 being the crtc-id of the crtc used for the monitor which is
> > > > > displaying black. Since then I've waited for 5.6-rc3 hoping that a
> > > > > fix was already queued up, but 5.6-rc3 still has this problem.
> > > > > 
> > > > > gnome-shell does behave as if all monitors are connected, so the
> > > > > monitor is seen, but we are failing to actually send any frames
> > > > > to it.
> > > > > 
> > > > > I've put a log collected with drm.debug=0x104 here:
> > > > > https://fedorapeople.org/~jwrdegoede/drm-debug.log
> > > > > 
> > > > > This message stands out as pointing to the likely cause of this
> > > > > problem:
> > > > > 
> > > > > [    3.309061] [drm:intel_dump_pipe_config [i915]] MST master
> > > > > transcoder: <invalid>
> > > > > 
> > > > > Regards,
> > > > > 
> > > > > Hans
> > > > > 
> > > > > _______________________________________________
> > > > > dri-devel mailing list
> > > > > dri-devel@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
-- 
Cheers,
	Lyude Paul (she/her)
	Associate Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
