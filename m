Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5x0IMi4MIGoLvAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 13:12:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFF9636E25
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 13:12:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=tK+2iabo;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7CC410FC1E;
	Wed,  3 Jun 2026 11:12:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com
 [74.125.224.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F301210F3B1
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2026 16:41:15 +0000 (UTC)
Received: by mail-yx1-f53.google.com with SMTP id
 956f58d0204a3-6604c8acb8dso588413d50.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Jun 2026 09:41:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780418475; cv=none;
 d=google.com; s=arc-20240605;
 b=gEUyrk4JJ5L10a5ex7A/+HJhwo1KOH1LTcTVx4OKGt9r2F5Q5EWiMrE/ISAPnRu0Yd
 zfHNC5izfOgfBpxrb6CR7+iVOQ1iSmJJPuNWzWPTm1k43TUlFEahPoBn6r/SQaqNX/oq
 ScLsdfqo8+HZGfJAcuUZzIVpUZU5OOwxOguyTdUl1Ya9/R7fpcgrskmqfiJDWPdm3kFn
 xMDNe+hLpZewRID4puCDA0elevVo5oWcTvmb/VPyKpt3GrpA4DqWvn3FtrToXcK4wFgz
 PA+K4Y5fOdFSPF8yol4ogto8ZhW9dHPwEJi/+aZsjR6KvJzHjBapcY7lCs9i8Dqh8YZr
 PAJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=CUkgIBLCXnmBC10e8G9EVJm8spb++TEf5PGlj5i5Pdc=;
 fh=DwnuSKwI71da+8s0Z9FqTC9254EWkGQQdV8psiDlxqs=;
 b=N4BbLzBOjlVOpJSogdVa5rLuegrXZfK7rXiBPzfkgKx3zqUBvn/OkP/B0WSof59+3G
 mW7WjQyj/kfA/8vNjAyBdX3tOmp+dBxmL3BUUTZ+JLadBLzwlXVpfVMheE6JUfd9Md+y
 rwWjX2O3avWhUfsHBUsPot13Hj1yDKAhfLNQifX2acMP8H6H/PeBn9WJKfw7k+TrrLsH
 cg0J+XZFCj4m4lDja6xDsmgygycRD+jGhrXOxVaEtXDmKPEiwSFGVqrN1I6JhxN8OwW3
 +Ir4tgH2je1Jlkfjflm/Y237jEO1vVBhmQjKbKHX/lfghWutGACCmdgGlNsIbvA6LQP7
 r4EQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1780418475; x=1781023275; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CUkgIBLCXnmBC10e8G9EVJm8spb++TEf5PGlj5i5Pdc=;
 b=tK+2iabon2cD0SEVCCHkifte1qpaIIiYruyu7c84catPa4Lu5PPidz+EibbCSOlQdh
 9eSIveW2dKFYudKTuhA9LaSqGxHL13SkjKv1aR6ufpaWei2A+5G33mIOPGA7reQ4GWVj
 JEPtFoCCERfVT1ElGPKOsXdG3STIuEJKvDtAMEwDFY+wJfc6CyaWzexJycLanALgWKvX
 WNMAzREA5KVpnRLWlSeMNxW+EXEfwtdrU5f17tV8pSVFzUo0vkuIEVqZp7RGZxqzUnRG
 GkK9LLtnx011gexfY0zUqfBi+nNE6vuWvDbeDY1zGZ7D9HUUvIxrBI/T2Jcwt5Xq8cUN
 M5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780418475; x=1781023275;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CUkgIBLCXnmBC10e8G9EVJm8spb++TEf5PGlj5i5Pdc=;
 b=qnNrfvOkarh3BMrV5JL7IE1e+8ZmvykbkalvQaYlpya84NLc7ORdjl2BiZ3q3XcLny
 Ohrn/m5xpgpag4RZhVGTqSqT8Qzd3qcCn1tZucyvJLgkspwbn24zztn2dBBNvAHJyPKi
 F8QhcDTP2z0VRO4Y0VmkvYHik1mxeDCi05P1UHF4DH1lpYwhPwHkj+8frRw/deleCR37
 k+u5J1rXFPscVjp8FfLSCUQaL+LUbN+yAr4Fou+Iu51a+IAFHSxQ203U0W5TxmQYHjsE
 bURygY4zk13aykGKrtANFEEw67uOCidJ3Nfrg+rVtjh79PtrRw0itQWxiuoTFWC4laSS
 96Ow==
X-Forwarded-Encrypted: i=1;
 AFNElJ+S40laFRIOvfOX9t2+exvYzzH57bZlyEhn7LmZzZAMNhdx+wfloshEOxSlDuzFyPvUoWtja9vUm5U=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy7Ygqqs2HB7AnBx0qSJ71b+JzJMdDztgP60Z2ROxCkWFvWkXP3
 1GZ4x0OPUJ204OFbPbcwsDtq9HoLe58JT97nql659NICiI8rnTEDTFgPKBOkeXSPocqpLGkv3uK
 WFqzDJPUUNHSx3BV8rM+Lj5OB7WlciHw=
X-Gm-Gg: Acq92OGl8xjDvf2jQYeRKLLbgLap3JIS1BtSCcqPfLm57kVePLf0FNEmBkprv9sGZZU
 iGoL8MN/+9RVjXEdq62MpuqB34GCuTQDysnK2t62hjBIVJ2M5Ixp7a8jbUY1A+0Kt1Db+nWb0FW
 I/DDLg38m/xpPwA3ZLMMHsqW8NCYJeCgNvFPQszYTWVEPKSanHh4Gqc3nDqFYrok9qqKZkcpgHU
 WpI3pHRNUsZUE42KIdnaQNm8OLLd1NPch/qKw6miJeosubmEvBhybvx8J8gAFGK9j/6FZPaolIO
 NlwjG2vQ8qu6sPQ3PNEXUD9WfGKAK2pgpWThMnIfLKH6Z9rYsdkoSlcfC6gDelC1XK7jC83q1w=
 =
X-Received: by 2002:a05:690e:408a:b0:65c:4a2f:336e with SMTP id
 956f58d0204a3-660d61bcc12mr352843d50.8.1780418474621; Tue, 02 Jun 2026
 09:41:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260601142943.1481728-1-arun.r.murthy@intel.com>
 <ah60jJkzbbw25R-L@ideak-desk.lan>
 <IA0PR11MB7307C39641297A08DB4C6A1ABA122@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ah7c59mNa4WfTJKu@ideak-desk.lan>
 <CAEraX5wnHv5qC3fwqNmWbDCu7qxB3+ByTHK8QYpVen3Z23tJQw@mail.gmail.com>
 <ah8GtmhJNpb8_f3G@ideak-desk.lan>
In-Reply-To: <ah8GtmhJNpb8_f3G@ideak-desk.lan>
From: Stephen Fuhry <fuhrysteve@gmail.com>
Date: Tue, 2 Jun 2026 12:41:03 -0400
X-Gm-Features: AVHnY4JNOTMb4o7mjsh4OXCp17BkzujZDhK34e6zjZn_TqJds__B5pLByJUGGVw
Message-ID: <CAEraX5ywQeF1iEhZsSk-34RDye7Pb3HaR-GhRWh1XwrX9sw3BQ@mail.gmail.com>
Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/disable
To: imre.deak@intel.com
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="000000000000bb3dcb065347fa7a"
X-Mailman-Approved-At: Wed, 03 Jun 2026 11:12:41 +0000
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:imre.deak@intel.com,m:arun.r.murthy@intel.com,m:intel-xe@lists.freedesktop.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3CFF9636E25

--000000000000bb3dcb065347fa7a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for looking into this. I'll build and boot an unpatched drm-tip
kernel
and send the log -- should have it to you within the next day or so.

One thing worth noting on the USB disconnects: those are caused by a
separate
issue with the dock's hub controllers (17ef:a391 and 17ef:a392) triggering
repeated U1/U2 link power management transitions. There's a fix for that
already -- USB_QUIRK_NO_LPM for those device IDs -- which Greg KH accepted
into usb-linus last week. On the patched kernel (USB quirk applied), the US=
B
disconnect cascade is gone entirely and the dock reconnects cleanly.

Without the USB quirk, the repeated USB-level disconnects are what drive th=
e
HPD cascade and the fec_enable mismatches. So there are really two separate
issues at play here.

Stephen Fuhry

On Tue, Jun 2, 2026 at 12:37=E2=80=AFPM Imre Deak <imre.deak@intel.com> wro=
te:

> On Tue, Jun 02, 2026 at 11:33:09AM -0400, Stephen Fuhry wrote:
> > I can share some observations from the debug logs captured on the
> affected
> > system (drm.debug=3D0x10e, Alder Lake-P [8086:46a6], ThinkPad dock, 108=
0p
> on
> > pipe B + 4K DSC on pipe C) that may help clarify the root cause.
> >
> > Imre's assertion about the enable/disable gating appears to be correct
> from
> > the logs. The active_links sequence across every modeset cycle in the
> > captured trace is always clean:
> >
> >   disable: 2 -> 1 -> 0  (intel_mst_disable_dp,
> intel_encoders_post_disable)
> >   enable:  0 -> 1 -> 2  (intel_mst_pre_enable_dp, intel_mst_enable_dp)
> >
> > No interleaving, no double-calls. intel_ddi_enable_fec and
> > intel_ddi_disable_fec are each called exactly once per link per modeset
> > cycle, as expected.
> >
> > The mismatch and cascade are instead driven by repeated failures in the
> > fastset check. In the cable-unplug log, 8 "fastset requirement not met,
> > forcing full modeset" messages fire for both pipes between t=3D110.803s=
 and
> > t=3D110.899s -- before a single active_links change occurs. After replu=
g,
> > there are dozens more at ~20ms intervals (t=3D125.5s to t=3D126.3s) as =
the
> > driver re-probes the dock, each one attempting and failing to commit a
> > modeset.
> >
> > The direction of the first mismatch after dock connect is notable. The
> > very first fastset failure shows:
> >
> >   [CRTC:186:pipe C] fastset requirement not met in fec_enable
> >                     (expected no, found yes)
> >   [CRTC:186:pipe C] fastset requirement not met in
> > hw.pipe_mode.crtc_hdisplay
> >                     (expected 1920, found 3840)
> >   [CRTC:186:pipe C] fastset requirement not met in dsc.config.pic_width
> >                     (expected 0, found 3840)
> >
> > The SW computed state has pipe C at 1920x1080 with no DSC and no FEC,
> while
> > HW has it at 3840x2160 with DSC and FEC active (from the previous
> > session/firmware state). The modeset that follows clears FEC. The next
> > compute correctly selects DSC (and therefore FEC), triggering the
> opposite
> > mismatch ("expected yes, found no"). This back-and-forth drives the
> cascade.
> >
> > The question of why the first SW compute produces fec_enable=3Dno for p=
ipe
> C
> > when DSC is needed seems to be where the actual root cause lies --
> whether
> > that's a mode-negotiation timing issue (compositor requesting 1080p
> before
> > 4K+DSC is negotiated) or something in the compute ordering in
> > intel_dp_mst_compute_config.
> >
> > Full log (drm.debug=3D0x10e, cable unplug/replug) is attached to issue
> #16303
> > if useful.
>
> I found drm-debug-dmesg-fec-patch.txt on the ticket. This seems to be a
> 6.12 kernel, with the change in this patch applied. There is a strange
> delay at boot-up between 13.894595 and 148.167 when nothing seems to
> happen.
>
> I see indeed multiple disconnect/reconnect events for the dock starting
> like:
>
> [  159.428600] usb 3-6: USB disconnect, device number 10
> [  159.428605] usb 3-6.3: USB disconnect, device number 11
> [  159.428607] usb 3-6.3.2: USB disconnect, device number 12
> [  159.431529] i915 0000:00:02.0: [drm:gen11_hpd_irq_handler [i915]]
> hotplug event received, stat 0x00040000, dig 0x00008a88, pins 0x00000800,
> long 0x00000800
> [  159.440423] usb 3-6.3.3: USB disconnect, device number 13
> [  159.440430] usb 3-6.3.3.1: USB disconnect, device number 14
> [  159.442548] usb 3-6.3.3.2: USB disconnect, device number 15
> [  159.452345] usb 2-3: USB disconnect, device number 6
> [  159.452352] r8152-cfgselector 2-3.1: USB disconnect, device number 7
> [  159.521344] usb 3-6.3.3.4: USB disconnect, device number 16
> [  159.544816] usb 2-3.3: USB disconnect, device number 8
> [  165.839439] i915 0000:00:02.0: [drm:gen11_hpd_irq_handler [i915]]
> hotplug event received, stat 0x00040000, dig 0x00008a88, pins 0x00000800,
> long 0x00000800
>
> repeated about 5 times start at 159.428. At first look this seems like a
> non-display related issue leading to the disconnection of the whole dock
> with all the USB device on it.
>
> To get a better understanding of the root cause could you please provide
> a log with the latest drm-tip kernel without any patch applied as I
> requested on the ticket?
>
> Thanks.
>
> >
> > Stephen Fuhry
> >
> > On Tue, Jun 2, 2026 at 9:39=E2=80=AFAM Imre Deak <imre.deak@intel.com> =
wrote:
> >
> > > On Tue, Jun 02, 2026 at 04:35:42PM +0300, Murthy, Arun R wrote:
> > > >
> > > > > -----Original Message-----
> > > > > From: Deak, Imre <imre.deak@intel.com>
> > > > > Sent: Tuesday, June 2, 2026 4:17 PM
> > > > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org;
> intel-xe@lists.freedesktop.org;
> > > Stephen
> > > > > Fuhry <fuhrysteve@gmail.com>
> > > > > Subject: Re: [PATCH] drm/i915/display: Refcount for fec
> enable/disable
> > > > >
> > > > > On Mon, Jun 01, 2026 at 07:59:43PM +0530, Arun R Murthy wrote:
> > > > > > The FEC_ENABLE bit is per port basis and is enabled/disabled on
> ddi
> > > > > > pre_enable and post_disable. This fec is shared across the mst
> > > streams
> > > > > > and can be enabled per stream basis as well.
> > > > > > So have a refcount to track the usage of FEC and then
> enable/disable
> > > > > > accordingly.
> > > > > >
> > > > > > Closes:
> > > > > >
> https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16073
> > > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > > Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_ddi.c      | 66
> > > +++++++++++++++++++
> > > > > >  drivers/gpu/drm/i915/display/intel_ddi.h      |  1 +
> > > > > >  .../drm/i915/display/intel_display_types.h    | 12 ++++
> > > > > >  .../drm/i915/display/intel_modeset_setup.c    |  6 ++
> > > > > >  4 files changed, 85 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > > index 86520848892e..e12a3d6d6a67 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > > > @@ -2096,6 +2096,47 @@ void intel_ddi_disable_clock(struct
> > > intel_encoder
> > > > > *encoder)
> > > > > >           encoder->disable_clock(encoder);
> > > > > >  }
> > > > > >
> > > > > > +/**
> > > > > > + * intel_ddi_seed_fec_refcounts - Seed per-port FEC refcounts
> from
> > > > > > +active CRTCs
> > > > > > + * @display: display device
> > > > > > + *
> > > > > > + * intel_digital_port::fec_active_streams is the per-port
> refcount
> > > > > > +that gates
> > > > > > + * programming of the shared DP_TP_CTL_FEC_ENABLE bit. After
> initial
> > > > > > +HW state
> > > > > > + * readout (driver load, resume, GPU reset takeover), the
> persistent
> > > > > > + * crtc_state->fec_enable values reflect what HW currently has=
;
> we
> > > > > > +need to
> > > > > > + * align the refcount with that so the first paired disable
> doesn't
> > > > > > +underflow
> > > > > > + * and the next enable doesn't incorrectly skip programming th=
e
> HW
> > > bit.
> > > > > > + *
> > > > > > + * Must be called once after intel_modeset_readout_hw_state(),
> > > before
> > > > > > +any new
> > > > > > + * modeset commit can run.
> > > > > > + */
> > > > > > +void intel_ddi_seed_fec_refcounts(struct intel_display
> *display) {
> > > > > > + struct intel_crtc *crtc;
> > > > > > +
> > > > > > + for_each_intel_crtc(display->drm, crtc) {
> > > > > > +         const struct intel_crtc_state *crtc_state =3D
> > > > > > +                 to_intel_crtc_state(crtc->base.state);
> > > > > > +         struct intel_encoder *encoder;
> > > > > > +
> > > > > > +         if (!crtc_state->hw.active || !crtc_state->fec_enable=
)
> > > > > > +                 continue;
> > > > > > +
> > > > > > +         for_each_intel_encoder(display->drm, encoder) {
> > > > > > +                 struct intel_digital_port *dig_port;
> > > > > > +
> > > > > > +                 if (encoder->base.crtc !=3D &crtc->base)
> > > > > > +                         continue;
> > > > > > +                 if (!intel_encoder_is_dig_port(encoder))
> > > > > > +                         continue;
> > > > > > +
> > > > > > +                 dig_port =3D enc_to_dig_port(encoder);
> > > > > > +                 dig_port->fec_active_streams++;
> > > > > > +                 break;
> > > > > > +         }
> > > > > > + }
> > > > > > +}
> > > > > > +
> > > > > >  void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encod=
er
> > > > > > *encoder)  {
> > > > > >   struct intel_display *display =3D to_intel_display(encoder); =
@@
> > > > > > -2413,12 +2454,22 @@ static void intel_ddi_enable_fec(struct
> > > intel_encoder
> > > > > *encoder,
> > > > > >                            const struct intel_crtc_state
> > > *crtc_state)  {
> > > > > >   struct intel_display *display =3D to_intel_display(encoder);
> > > > > > + struct intel_digital_port *dig_port =3D enc_to_dig_port(encod=
er);
> > > > > >   int i;
> > > > > >   int ret;
> > > > > >
> > > > > >   if (!crtc_state->fec_enable)
> > > > > >           return;
> > > > > >
> > > > > > + /*
> > > > > > +  * FEC is link-wide: DP_TP_CTL_FEC_ENABLE is per-port while
> > > > > > +  * crtc_state->fec_enable is per-stream. For DP MST, several
> > > streams
> > > > > > +  * on this port share the bit. Only program HW on the first
> stream
> > > > > > +  * needing FEC; subsequent streams just bump the refcount.
> > > > > > +  */
> > > > > > + if (dig_port->fec_active_streams++ > 0)
> > > > > > +         return;
> > > > >
> > > > > This doesn't make sense to me. FEC is enabled for the MST link an=
d
> if
> > > it's
> > > > > enabled then fec_enabled is set in the crtc_state for all the
> streams
> > > in the MST
> > > > > topology. intel_ddi_enable_fec() will be called only for the firs=
t
> MST
> > > stream
> > > > > being enabled and intel_ddi_disable_fec() will be called only for
> the
> > > last MST
> > > > > stream being disabled. So I don't see why the above refcounting
> would
> > > be
> > > > > needed.
> > > >
> > > > The  logs mentioned in the above listed gitlab issue shows mismatch
> in
> > > > fec enable/disable in the MST scenario. Hence added this refcount
> > > > logic to overcome the mismatch.
> > >
> > > The root cause for the mismatch should be better understood then. I
> > > still think that it's something else than the lack of refcounting.
> > >
> > > > Thanks and Regards,
> > > > Arun R Murthy
> > > > --------------------
> > > > > > +
> > > > > >   intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > > > > >                0, DP_TP_CTL_FEC_ENABLE);
> > > > > >
> > > > > > @@ -2454,10 +2505,25 @@ static void intel_ddi_disable_fec(struc=
t
> > > > > intel_encoder *encoder,
> > > > > >                             const struct intel_crtc_state
> > > *crtc_state)  {
> > > > > >   struct intel_display *display =3D to_intel_display(encoder);
> > > > > > + struct intel_digital_port *dig_port =3D enc_to_dig_port(encod=
er);
> > > > > >
> > > > > >   if (!crtc_state->fec_enable)
> > > > > >           return;
> > > > > >
> > > > > > + /*
> > > > > > +  * FEC is a link-wide property and DP_TP_CTL_FEC_ENABLE is a
> > > per-port
> > > > > > +  * register, but crtc_state->fec_enable is per-stream. For DP
> MST,
> > > > > > +  * multiple streams on the same port share this bit. Refcount
> the
> > > > > > +  * active FEC users on the port and only clear the HW bit whe=
n
> the
> > > > > > +  * last user goes away, otherwise tearing down one MST stream
> would
> > > > > > +  * disable FEC for sibling streams still using it.
> > > > > > +  */
> > > > > > + if (drm_WARN_ON(display->drm, dig_port->fec_active_streams <=
=3D
> 0))
> > > > > > +         return;
> > > > > > +
> > > > > > + if (--dig_port->fec_active_streams > 0)
> > > > > > +         return;
> > > > > > +
> > > > > >   intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > > > > >                DP_TP_CTL_FEC_ENABLE, 0);
> > > > > >   intel_de_posting_read(display, dp_tp_ctl_reg(encoder,
> crtc_state));
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > > > b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > > > index 580ecb09b8b6..3678c28a0dc9 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > > > @@ -78,6 +78,7 @@ int intel_ddi_toggle_hdcp_bits(struct
> intel_encoder
> > > > > *intel_encoder,
> > > > > >                          enum transcoder cpu_transcoder,
> > > > > >                          bool enable, u32 hdcp_mask);  void
> > > > > > intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder
> > > *encoder);
> > > > > > +void intel_ddi_seed_fec_refcounts(struct intel_display
> *display);
> > > > > >  int intel_ddi_level(struct intel_encoder *encoder,
> > > > > >               const struct intel_crtc_state *crtc_state,
> > > > > >               int lane);
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > index f44be5c689ae..84bd0d993197 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > @@ -1987,6 +1987,18 @@ struct intel_digital_port {
> > > > > >   struct ref_tracker *ddi_io_wakeref;
> > > > > >   struct ref_tracker *aux_wakeref;
> > > > > >
> > > > > > + /*
> > > > > > +  * Number of active streams on this port currently using FEC.
> > > > > > +  *
> > > > > > +  * DP_TP_CTL_FEC_ENABLE is a per-port (link-wide) HW bit, but
> > > > > > +  * crtc_state->fec_enable is per-stream. For DP MST several
> streams
> > > > > > +  * share the same port and therefore the same FEC enable bit.
> Track
> > > > > > +  * how many active streams want FEC so that the HW bit is onl=
y
> > > > > > +  * programmed on the first enable and only cleared on the las=
t
> > > > > > +  * disable. Modified under the modeset locks.
> > > > > > +  */
> > > > > > + int fec_active_streams;
> > > > > > +
> > > > > >   struct intel_tc_port *tc;
> > > > > >
> > > > > >   struct {
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > > > index e88082c8caac..14f038b8ef81 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > > > @@ -950,6 +950,12 @@ void intel_modeset_setup_hw_state(struct
> > > > > > intel_display *display,
> > > > > >
> > > > > >   intel_modeset_readout_hw_state(display);
> > > > > >
> > > > > > + /*
> > > > > > +  * Seed per-port FEC refcounts from the just-populated active
> > > > > > +  * crtc_states before anything can issue an enable/disable.
> > > > > > +  */
> > > > > > + intel_ddi_seed_fec_refcounts(display);
> > > > > > +
> > > > > >   /* HW state is read out, now we need to sanitize this mess. *=
/
> > > > > >   get_encoder_power_domains(display);
> > > > > >
> > > > > > --
> > > > > > 2.25.1
> > > > > >
> > >
>

--000000000000bb3dcb065347fa7a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for looking into this. I&#39;ll build and boot an u=
npatched drm-tip kernel<br>and send the log -- should have it to you within=
 the next day or so.<br><br>One thing worth noting on the USB disconnects: =
those are caused by a separate<br>issue with the dock&#39;s hub controllers=
 (17ef:a391 and 17ef:a392) triggering<br>repeated U1/U2 link power manageme=
nt transitions. There&#39;s a fix for that<br>already -- USB_QUIRK_NO_LPM f=
or those device IDs -- which Greg KH accepted<br>into usb-linus last week. =
On the patched kernel (USB quirk applied), the USB<br>disconnect cascade is=
 gone entirely and the dock reconnects cleanly.<br><br>Without the USB quir=
k, the repeated USB-level disconnects are what drive the<br>HPD cascade and=
 the fec_enable mismatches. So there are really two separate<br>issues at p=
lay here.<br><br>Stephen Fuhry</div><br><div class=3D"gmail_quote gmail_quo=
te_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 2, 2026 at =
12:37=E2=80=AFPM Imre Deak &lt;<a href=3D"mailto:imre.deak@intel.com">imre.=
deak@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On Tue, Jun 02, 2026 at 11:33:09AM -0400, Stephen Fuhry wrote=
:<br>
&gt; I can share some observations from the debug logs captured on the affe=
cted<br>
&gt; system (drm.debug=3D0x10e, Alder Lake-P [8086:46a6], ThinkPad dock, 10=
80p on<br>
&gt; pipe B + 4K DSC on pipe C) that may help clarify the root cause.<br>
&gt; <br>
&gt; Imre&#39;s assertion about the enable/disable gating appears to be cor=
rect from<br>
&gt; the logs. The active_links sequence across every modeset cycle in the<=
br>
&gt; captured trace is always clean:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0disable: 2 -&gt; 1 -&gt; 0=C2=A0 (intel_mst_disable_dp, in=
tel_encoders_post_disable)<br>
&gt;=C2=A0 =C2=A0enable:=C2=A0 0 -&gt; 1 -&gt; 2=C2=A0 (intel_mst_pre_enabl=
e_dp, intel_mst_enable_dp)<br>
&gt; <br>
&gt; No interleaving, no double-calls. intel_ddi_enable_fec and<br>
&gt; intel_ddi_disable_fec are each called exactly once per link per modese=
t<br>
&gt; cycle, as expected.<br>
&gt; <br>
&gt; The mismatch and cascade are instead driven by repeated failures in th=
e<br>
&gt; fastset check. In the cable-unplug log, 8 &quot;fastset requirement no=
t met,<br>
&gt; forcing full modeset&quot; messages fire for both pipes between t=3D11=
0.803s and<br>
&gt; t=3D110.899s -- before a single active_links change occurs. After repl=
ug,<br>
&gt; there are dozens more at ~20ms intervals (t=3D125.5s to t=3D126.3s) as=
 the<br>
&gt; driver re-probes the dock, each one attempting and failing to commit a=
<br>
&gt; modeset.<br>
&gt; <br>
&gt; The direction of the first mismatch after dock connect is notable. The=
<br>
&gt; very first fastset failure shows:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0[CRTC:186:pipe C] fastset requirement not met in fec_enabl=
e<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0(expected no, found yes)<br>
&gt;=C2=A0 =C2=A0[CRTC:186:pipe C] fastset requirement not met in<br>
&gt; hw.pipe_mode.crtc_hdisplay<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0(expected 1920, found 3840)<br>
&gt;=C2=A0 =C2=A0[CRTC:186:pipe C] fastset requirement not met in dsc.confi=
g.pic_width<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0(expected 0, found 3840)<br>
&gt; <br>
&gt; The SW computed state has pipe C at 1920x1080 with no DSC and no FEC, =
while<br>
&gt; HW has it at 3840x2160 with DSC and FEC active (from the previous<br>
&gt; session/firmware state). The modeset that follows clears FEC. The next=
<br>
&gt; compute correctly selects DSC (and therefore FEC), triggering the oppo=
site<br>
&gt; mismatch (&quot;expected yes, found no&quot;). This back-and-forth dri=
ves the cascade.<br>
&gt; <br>
&gt; The question of why the first SW compute produces fec_enable=3Dno for =
pipe C<br>
&gt; when DSC is needed seems to be where the actual root cause lies -- whe=
ther<br>
&gt; that&#39;s a mode-negotiation timing issue (compositor requesting 1080=
p before<br>
&gt; 4K+DSC is negotiated) or something in the compute ordering in<br>
&gt; intel_dp_mst_compute_config.<br>
&gt; <br>
&gt; Full log (drm.debug=3D0x10e, cable unplug/replug) is attached to issue=
 #16303<br>
&gt; if useful.<br>
<br>
I found drm-debug-dmesg-fec-patch.txt on the ticket. This seems to be a<br>
6.12 kernel, with the change in this patch applied. There is a strange<br>
delay at boot-up between 13.894595 and 148.167 when nothing seems to<br>
happen.<br>
<br>
I see indeed multiple disconnect/reconnect events for the dock starting<br>
like:<br>
<br>
[=C2=A0 159.428600] usb 3-6: USB disconnect, device number 10<br>
[=C2=A0 159.428605] usb 3-6.3: USB disconnect, device number 11<br>
[=C2=A0 159.428607] usb 3-6.3.2: USB disconnect, device number 12<br>
[=C2=A0 159.431529] i915 0000:00:02.0: [drm:gen11_hpd_irq_handler [i915]] h=
otplug event received, stat 0x00040000, dig 0x00008a88, pins 0x00000800, lo=
ng 0x00000800<br>
[=C2=A0 159.440423] usb 3-6.3.3: USB disconnect, device number 13<br>
[=C2=A0 159.440430] usb 3-6.3.3.1: USB disconnect, device number 14<br>
[=C2=A0 159.442548] usb 3-6.3.3.2: USB disconnect, device number 15<br>
[=C2=A0 159.452345] usb 2-3: USB disconnect, device number 6<br>
[=C2=A0 159.452352] r8152-cfgselector 2-3.1: USB disconnect, device number =
7<br>
[=C2=A0 159.521344] usb 3-6.3.3.4: USB disconnect, device number 16<br>
[=C2=A0 159.544816] usb 2-3.3: USB disconnect, device number 8<br>
[=C2=A0 165.839439] i915 0000:00:02.0: [drm:gen11_hpd_irq_handler [i915]] h=
otplug event received, stat 0x00040000, dig 0x00008a88, pins 0x00000800, lo=
ng 0x00000800<br>
<br>
repeated about 5 times start at 159.428. At first look this seems like a<br=
>
non-display related issue leading to the disconnection of the whole dock<br=
>
with all the USB device on it.<br>
<br>
To get a better understanding of the root cause could you please provide<br=
>
a log with the latest drm-tip kernel without any patch applied as I<br>
requested on the ticket?<br>
<br>
Thanks.<br>
<br>
&gt; <br>
&gt; Stephen Fuhry<br>
&gt; <br>
&gt; On Tue, Jun 2, 2026 at 9:39=E2=80=AFAM Imre Deak &lt;<a href=3D"mailto=
:imre.deak@intel.com" target=3D"_blank">imre.deak@intel.com</a>&gt; wrote:<=
br>
&gt; <br>
&gt; &gt; On Tue, Jun 02, 2026 at 04:35:42PM +0300, Murthy, Arun R wrote:<b=
r>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; -----Original Message-----<br>
&gt; &gt; &gt; &gt; From: Deak, Imre &lt;<a href=3D"mailto:imre.deak@intel.=
com" target=3D"_blank">imre.deak@intel.com</a>&gt;<br>
&gt; &gt; &gt; &gt; Sent: Tuesday, June 2, 2026 4:17 PM<br>
&gt; &gt; &gt; &gt; To: Murthy, Arun R &lt;<a href=3D"mailto:arun.r.murthy@=
intel.com" target=3D"_blank">arun.r.murthy@intel.com</a>&gt;<br>
&gt; &gt; &gt; &gt; Cc: <a href=3D"mailto:intel-gfx@lists.freedesktop.org" =
target=3D"_blank">intel-gfx@lists.freedesktop.org</a>; <a href=3D"mailto:in=
tel-xe@lists.freedesktop.org" target=3D"_blank">intel-xe@lists.freedesktop.=
org</a>;<br>
&gt; &gt; Stephen<br>
&gt; &gt; &gt; &gt; Fuhry &lt;<a href=3D"mailto:fuhrysteve@gmail.com" targe=
t=3D"_blank">fuhrysteve@gmail.com</a>&gt;<br>
&gt; &gt; &gt; &gt; Subject: Re: [PATCH] drm/i915/display: Refcount for fec=
 enable/disable<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; On Mon, Jun 01, 2026 at 07:59:43PM +0530, Arun R Murthy=
 wrote:<br>
&gt; &gt; &gt; &gt; &gt; The FEC_ENABLE bit is per port basis and is enable=
d/disabled on ddi<br>
&gt; &gt; &gt; &gt; &gt; pre_enable and post_disable. This fec is shared ac=
ross the mst<br>
&gt; &gt; streams<br>
&gt; &gt; &gt; &gt; &gt; and can be enabled per stream basis as well.<br>
&gt; &gt; &gt; &gt; &gt; So have a refcount to track the usage of FEC and t=
hen enable/disable<br>
&gt; &gt; &gt; &gt; &gt; accordingly.<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Closes:<br>
&gt; &gt; &gt; &gt; &gt; <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/work_items/16073" rel=3D"noreferrer" target=3D"_blank">https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/work_items/16073</a><br>
&gt; &gt; &gt; &gt; &gt; Signed-off-by: Arun R Murthy &lt;<a href=3D"mailto=
:arun.r.murthy@intel.com" target=3D"_blank">arun.r.murthy@intel.com</a>&gt;=
<br>
&gt; &gt; &gt; &gt; &gt; Tested-by: Stephen Fuhry &lt;<a href=3D"mailto:fuh=
rysteve@gmail.com" target=3D"_blank">fuhrysteve@gmail.com</a>&gt;<br>
&gt; &gt; &gt; &gt; &gt; ---<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 drivers/gpu/drm/i915/display/intel_ddi.c=C2=
=A0 =C2=A0 =C2=A0 | 66<br>
&gt; &gt; +++++++++++++++++++<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 drivers/gpu/drm/i915/display/intel_ddi.h=C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 .../drm/i915/display/intel_display_types.h=
=C2=A0 =C2=A0 | 12 ++++<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 .../drm/i915/display/intel_modeset_setup.c=
=C2=A0 =C2=A0 |=C2=A0 6 ++<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 4 files changed, 85 insertions(+)<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_dd=
i.c<br>
&gt; &gt; &gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_ddi.c<br>
&gt; &gt; &gt; &gt; &gt; index 86520848892e..e12a3d6d6a67 100644<br>
&gt; &gt; &gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_ddi.c<br>
&gt; &gt; &gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_ddi.c<br>
&gt; &gt; &gt; &gt; &gt; @@ -2096,6 +2096,47 @@ void intel_ddi_disable_cloc=
k(struct<br>
&gt; &gt; intel_encoder<br>
&gt; &gt; &gt; &gt; *encoder)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0encoder-&g=
t;disable_clock(encoder);<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 }<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; +/**<br>
&gt; &gt; &gt; &gt; &gt; + * intel_ddi_seed_fec_refcounts - Seed per-port F=
EC refcounts from<br>
&gt; &gt; &gt; &gt; &gt; +active CRTCs<br>
&gt; &gt; &gt; &gt; &gt; + * @display: display device<br>
&gt; &gt; &gt; &gt; &gt; + *<br>
&gt; &gt; &gt; &gt; &gt; + * intel_digital_port::fec_active_streams is the =
per-port refcount<br>
&gt; &gt; &gt; &gt; &gt; +that gates<br>
&gt; &gt; &gt; &gt; &gt; + * programming of the shared DP_TP_CTL_FEC_ENABLE=
 bit. After initial<br>
&gt; &gt; &gt; &gt; &gt; +HW state<br>
&gt; &gt; &gt; &gt; &gt; + * readout (driver load, resume, GPU reset takeov=
er), the persistent<br>
&gt; &gt; &gt; &gt; &gt; + * crtc_state-&gt;fec_enable values reflect what =
HW currently has; we<br>
&gt; &gt; &gt; &gt; &gt; +need to<br>
&gt; &gt; &gt; &gt; &gt; + * align the refcount with that so the first pair=
ed disable doesn&#39;t<br>
&gt; &gt; &gt; &gt; &gt; +underflow<br>
&gt; &gt; &gt; &gt; &gt; + * and the next enable doesn&#39;t incorrectly sk=
ip programming the HW<br>
&gt; &gt; bit.<br>
&gt; &gt; &gt; &gt; &gt; + *<br>
&gt; &gt; &gt; &gt; &gt; + * Must be called once after intel_modeset_readou=
t_hw_state(),<br>
&gt; &gt; before<br>
&gt; &gt; &gt; &gt; &gt; +any new<br>
&gt; &gt; &gt; &gt; &gt; + * modeset commit can run.<br>
&gt; &gt; &gt; &gt; &gt; + */<br>
&gt; &gt; &gt; &gt; &gt; +void intel_ddi_seed_fec_refcounts(struct intel_di=
splay *display) {<br>
&gt; &gt; &gt; &gt; &gt; + struct intel_crtc *crtc;<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt; + for_each_intel_crtc(display-&gt;drm, crtc) {<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const struct in=
tel_crtc_state *crtc_state =3D<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0to_intel_crtc_state(crtc-&gt;base.state);<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct intel_en=
coder *encoder;<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!crtc_state=
-&gt;hw.active || !crtc_state-&gt;fec_enable)<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0continue;<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for_each_intel_=
encoder(display-&gt;drm, encoder) {<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0struct intel_digital_port *dig_port;<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (encoder-&gt;base.crtc !=3D &amp;crtc-&gt;base)<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (!intel_encoder_is_dig_port(encoder))<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0continue;<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dig_port =3D enc_to_dig_port(encoder);<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dig_port-&gt;fec_active_streams++;<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; &gt; &gt; + }<br>
&gt; &gt; &gt; &gt; &gt; +}<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 void intel_ddi_sanitize_encoder_pll_mapping(=
struct intel_encoder<br>
&gt; &gt; &gt; &gt; &gt; *encoder)=C2=A0 {<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0struct intel_display *display =3D to_i=
ntel_display(encoder); @@<br>
&gt; &gt; &gt; &gt; &gt; -2413,12 +2454,22 @@ static void intel_ddi_enable_=
fec(struct<br>
&gt; &gt; intel_encoder<br>
&gt; &gt; &gt; &gt; *encoder,<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const struct intel_crtc_st=
ate<br>
&gt; &gt; *crtc_state)=C2=A0 {<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0struct intel_display *display =3D to_i=
ntel_display(encoder);<br>
&gt; &gt; &gt; &gt; &gt; + struct intel_digital_port *dig_port =3D enc_to_d=
ig_port(encoder);<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0int i;<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0int ret;<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0if (!crtc_state-&gt;fec_enable)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br=
>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; + /*<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * FEC is link-wide: DP_TP_CTL_FEC_ENABLE i=
s per-port while<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * crtc_state-&gt;fec_enable is per-stream.=
 For DP MST, several<br>
&gt; &gt; streams<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * on this port share the bit. Only program=
 HW on the first stream<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * needing FEC; subsequent streams just bum=
p the refcount.<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 */<br>
&gt; &gt; &gt; &gt; &gt; + if (dig_port-&gt;fec_active_streams++ &gt; 0)<br=
>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; This doesn&#39;t make sense to me. FEC is enabled for t=
he MST link and if<br>
&gt; &gt; it&#39;s<br>
&gt; &gt; &gt; &gt; enabled then fec_enabled is set in the crtc_state for a=
ll the streams<br>
&gt; &gt; in the MST<br>
&gt; &gt; &gt; &gt; topology. intel_ddi_enable_fec() will be called only fo=
r the first MST<br>
&gt; &gt; stream<br>
&gt; &gt; &gt; &gt; being enabled and intel_ddi_disable_fec() will be calle=
d only for the<br>
&gt; &gt; last MST<br>
&gt; &gt; &gt; &gt; stream being disabled. So I don&#39;t see why the above=
 refcounting would<br>
&gt; &gt; be<br>
&gt; &gt; &gt; &gt; needed.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The=C2=A0 logs mentioned in the above listed gitlab issue sh=
ows mismatch in<br>
&gt; &gt; &gt; fec enable/disable in the MST scenario. Hence added this ref=
count<br>
&gt; &gt; &gt; logic to overcome the mismatch.<br>
&gt; &gt;<br>
&gt; &gt; The root cause for the mismatch should be better understood then.=
 I<br>
&gt; &gt; still think that it&#39;s something else than the lack of refcoun=
ting.<br>
&gt; &gt;<br>
&gt; &gt; &gt; Thanks and Regards,<br>
&gt; &gt; &gt; Arun R Murthy<br>
&gt; &gt; &gt; --------------------<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0intel_de_rmw(display, dp_tp_ctl_reg(en=
coder, crtc_state),<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 0, DP_TP_CTL_FEC_ENABLE);<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; @@ -2454,10 +2505,25 @@ static void intel_ddi_disa=
ble_fec(struct<br>
&gt; &gt; &gt; &gt; intel_encoder *encoder,<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const struct intel_c=
rtc_state<br>
&gt; &gt; *crtc_state)=C2=A0 {<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0struct intel_display *display =3D to_i=
ntel_display(encoder);<br>
&gt; &gt; &gt; &gt; &gt; + struct intel_digital_port *dig_port =3D enc_to_d=
ig_port(encoder);<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0if (!crtc_state-&gt;fec_enable)<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br=
>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; + /*<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * FEC is a link-wide property and DP_TP_CT=
L_FEC_ENABLE is a<br>
&gt; &gt; per-port<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * register, but crtc_state-&gt;fec_enable =
is per-stream. For DP MST,<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * multiple streams on the same port share =
this bit. Refcount the<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * active FEC users on the port and only cl=
ear the HW bit when the<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * last user goes away, otherwise tearing d=
own one MST stream would<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * disable FEC for sibling streams still us=
ing it.<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 */<br>
&gt; &gt; &gt; &gt; &gt; + if (drm_WARN_ON(display-&gt;drm, dig_port-&gt;fe=
c_active_streams &lt;=3D 0))<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt; + if (--dig_port-&gt;fec_active_streams &gt; 0)<br=
>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return;<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0intel_de_rmw(display, dp_tp_ctl_reg(en=
coder, crtc_state),<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 DP_TP_CTL_FEC_ENABLE, 0);<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0intel_de_posting_read(display, dp_tp_c=
tl_reg(encoder, crtc_state));<br>
&gt; &gt; &gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_dd=
i.h<br>
&gt; &gt; &gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_ddi.h<br>
&gt; &gt; &gt; &gt; &gt; index 580ecb09b8b6..3678c28a0dc9 100644<br>
&gt; &gt; &gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_ddi.h<br>
&gt; &gt; &gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_ddi.h<br>
&gt; &gt; &gt; &gt; &gt; @@ -78,6 +78,7 @@ int intel_ddi_toggle_hdcp_bits(s=
truct intel_encoder<br>
&gt; &gt; &gt; &gt; *intel_encoder,<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enum transcoder cpu_transcoder,<b=
r>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bool enable, u32 hdcp_mask);=C2=
=A0 void<br>
&gt; &gt; &gt; &gt; &gt; intel_ddi_sanitize_encoder_pll_mapping(struct inte=
l_encoder<br>
&gt; &gt; *encoder);<br>
&gt; &gt; &gt; &gt; &gt; +void intel_ddi_seed_fec_refcounts(struct intel_di=
splay *display);<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 int intel_ddi_level(struct intel_encoder *en=
coder,<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0const struct intel_crtc_state *crtc_state,<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0int lane);<br>
&gt; &gt; &gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_di=
splay_types.h<br>
&gt; &gt; &gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_display_types=
.h<br>
&gt; &gt; &gt; &gt; &gt; index f44be5c689ae..84bd0d993197 100644<br>
&gt; &gt; &gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_display_t=
ypes.h<br>
&gt; &gt; &gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_display_t=
ypes.h<br>
&gt; &gt; &gt; &gt; &gt; @@ -1987,6 +1987,18 @@ struct intel_digital_port {=
<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0struct ref_tracker *ddi_io_wakeref;<br=
>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0struct ref_tracker *aux_wakeref;<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; + /*<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * Number of active streams on this port cu=
rrently using FEC.<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 *<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * DP_TP_CTL_FEC_ENABLE is a per-port (link=
-wide) HW bit, but<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * crtc_state-&gt;fec_enable is per-stream.=
 For DP MST several streams<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * share the same port and therefore the sa=
me FEC enable bit. Track<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * how many active streams want FEC so that=
 the HW bit is only<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * programmed on the first enable and only =
cleared on the last<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * disable. Modified under the modeset lock=
s.<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 */<br>
&gt; &gt; &gt; &gt; &gt; + int fec_active_streams;<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0struct intel_tc_port *tc;<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0struct {<br>
&gt; &gt; &gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_mo=
deset_setup.c<br>
&gt; &gt; &gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_modeset_setup=
.c<br>
&gt; &gt; &gt; &gt; &gt; index e88082c8caac..14f038b8ef81 100644<br>
&gt; &gt; &gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_modeset_s=
etup.c<br>
&gt; &gt; &gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_modeset_s=
etup.c<br>
&gt; &gt; &gt; &gt; &gt; @@ -950,6 +950,12 @@ void intel_modeset_setup_hw_s=
tate(struct<br>
&gt; &gt; &gt; &gt; &gt; intel_display *display,<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0intel_modeset_readout_hw_state(display=
);<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; + /*<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * Seed per-port FEC refcounts from the jus=
t-populated active<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 * crtc_states before anything can issue an=
 enable/disable.<br>
&gt; &gt; &gt; &gt; &gt; +=C2=A0 */<br>
&gt; &gt; &gt; &gt; &gt; + intel_ddi_seed_fec_refcounts(display);<br>
&gt; &gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0/* HW state is read out, now we need t=
o sanitize this mess. */<br>
&gt; &gt; &gt; &gt; &gt;=C2=A0 =C2=A0get_encoder_power_domains(display);<br=
>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; --<br>
&gt; &gt; &gt; &gt; &gt; 2.25.1<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt;<br>
</blockquote></div>

--000000000000bb3dcb065347fa7a--
