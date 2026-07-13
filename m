Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XleUJNU+VWr4lwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 21:39:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D105574EC7D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 21:39:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=AG6+tLif;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20260327:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F23710E642;
	Mon, 13 Jul 2026 19:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 561A810E642
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2026 19:38:57 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id
 d75a77b69052e-51c4436d02cso1326571cf.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2026 12:38:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783971536; cv=none;
 d=google.com; s=arc-20260327;
 b=YVKNBjYPbMhmLHn2yQvyGpkZcr9vWnI4uc3iP0KvxufZ4QVhvZA9Xh+nasmAiXo38K
 GbCOfmW2zXexUsRoXPgGEnkJ1uh1O9twX00sk7x6yCWuiYt2WWyKr785obqLmK46LBM5
 B5GRLVnbseXbfcwhd0tHlkVbxm118MHzctXOJiRtR6bZXX4RHNeKTcyHgA0jpVW8VMec
 iacD/tq87XlPDbFpuHkQXsdV3EvIA7svzer0+1pkhy+E7Hfc4zYpYqwGOvI5v1VAoN5W
 9OTMulLRhn2GKIczIK+Fk+WWanO8CK4UlbXwN8aXJ7TE3dJZX5aGFZYYTc5bjg9JUXkv
 QBfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20260327; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=3pTQ1V9SGNzxvooxi/cQN6BZaEeV0mA5pkIF97bSw2c=;
 fh=rlMvtmHJ+7MH+s4Ok/HlPYiN4gbDix9vy/GlW4dhBIk=;
 b=JgnSWLeSjL12hzdyPRu1dC/CNJZUxGIyQiJvY2XLYx+Qu5dgmb8ZlA/qYnQZzlgoM0
 nGOIxXY/eCdgqld3bQVo6pgO9WiHTXmX6AtF9n22dnYIgBTOFgxaAD64kHCQcbfeICrm
 JiMi4lzKd12+QShQBGZpKMyVppu42v1JX/waaApv2VxULv+yAMtJFJh7Deou+ZaE2WdQ
 icnTEseKryAtPiPFAUhkoqzVSEKXSFSCEMrOmtgPErsr3OEBKpz+8ijCvQ7rrzgW24kB
 xocKfLk3u5+woC6YBCrG/Jp4HbBqN3KDznapCd1e8w9+4WI3biR9yo6zxgY9fn1ZfnUm
 jTKg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783971536; x=1784576336; darn=lists.freedesktop.org;
 h=content-transfer-encoding:content-type:cc:to:subject:message-id
 :date:from:in-reply-to:references:mime-version:from:to:cc:subject
 :date:message-id:reply-to:content-type;
 bh=3pTQ1V9SGNzxvooxi/cQN6BZaEeV0mA5pkIF97bSw2c=;
 b=AG6+tLifQ7YlFs43f+1ky63WgzDOzu0a62FnXnqd+RyzwND53O6JQe051rs1x2pCip
 p6VOdDtX/+oXG/bGdsN9cAO08HLYO22psky7BWhCJiiSU8ZZUgYkyUxJY9Q2SNEPSIWK
 K7tsegH4G/S4LfdkkgVZSVFODJJeUWEXO1qJv4lfpvL8SpOYh3PVKl8g9oiAMwxh0aXZ
 MWMHfTflWCtmUNZ/j2lUXf9D84VcegzrLso7PQj/xGYh6kWowXqF50ZkaLvVt3WcQUkC
 fnFyGC9uZRRPvsih/a2z5kR+4lRPNzPGeTzKId2jale67eaBGpu++uhk0WZW9NZjVR0Y
 NWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783971536; x=1784576336;
 h=content-transfer-encoding:content-type:cc:to:subject:message-id
 :date:from:in-reply-to:references:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=3pTQ1V9SGNzxvooxi/cQN6BZaEeV0mA5pkIF97bSw2c=;
 b=ecm20vX7yjRBt2n3mWedLNKk66xY3AoIMRoy8HlO1TaYIqQxnM1nM7XNnq/oCTSUAp
 XBiyCqMepFSc/JLhNfObW9MvLjy8YjrCcv/S0SoV8PRZ3AfSuv/wn5XhOXoQOH20i5cI
 PjXWaHdJlisN5W+/gaJni4L32KfOSIXiKW2WLZrurZsoo2mztfI4q8m/nGs0mM8z5bpZ
 EtS0kuMa2Htzn0CU0ay2kwJ2s3JZ174FPEojHcA1P5kDIsgURnk9fPBaafDTTzuqkZtM
 4n5XFtF+3FX/roFOCMeNlnhKS4muOBAHst9olXldB/5Pl1Z/K2Exs3RMUU4FqfZJKqLX
 ml6Q==
X-Gm-Message-State: AOJu0YxbrG6fy+AwyHS6q/f/8LXep8LiUna/5yJ9OfqSG+1+YLSYS4MP
 ZNX0llsUumlzgIXFhfxrb4lgaDBew6BmkyI/jUT3O5M7tNpMwunHP4dGu7GfzXR2sUeTI2/dYjG
 N1Fg5yFiC7YCPSs5Yq0jc6sLFl34g65RmxP2I/Qp+
X-Gm-Gg: AfdE7cmM3hz10GHjrCmHsEDe0LAC2NpC7qouqlx50XfEnU4pLvvoMHe/GkPUjCEi+ez
 0c12Hl3yFud44Gea0EoIemjCeZkcmfHCYR6F3pJgPeM42aR+fU9aPm5rhvVrgL3jNULDIMYkgF5
 eVe/a3b5TkGlpWsX9U7opZa+0WsV3BJvXUXYsMQK5eCN4HeRkrHfVpib3XWVcPiHF6Rv+k4hFLI
 xvHnNRu/sU2emH3Ho9vr3b3Rqf5+qOGZnaBg25qwYfYah5zERPPlb/vSz2w1l/H56UAsL2v
X-Received: by 2002:ac8:5fc6:0:b0:51a:8945:3136 with SMTP id
 d75a77b69052e-51cbf2102e5mr101834281cf.56.1783971535908; Mon, 13 Jul 2026
 12:38:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAA1YtmtZu4xH0dFXUUp97Apz4wNAvtpY2=QfhKgpt1scMFpYqQ@mail.gmail.com>
In-Reply-To: <CAA1YtmtZu4xH0dFXUUp97Apz4wNAvtpY2=QfhKgpt1scMFpYqQ@mail.gmail.com>
From: Tadeus Prastowo <0x66726565@gmail.com>
Date: Mon, 13 Jul 2026 21:38:44 +0200
X-Gm-Features: AUfX_my9bZZ7w7hgRpxvhUMfX4S8h6w6UKOBe-czxcJpwKMy3zFcDJhAD3q404A
Message-ID: <CAA1YtmsiNJH2NyO3EFnLW6bfDs79xMHj5vRX6keXBd-5LemCxw@mail.gmail.com>
Subject: Re: Commit 99cfbed19d06 at Linux kernel breaks AOC monitor 24P2Q
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, ville.syrjala@linux.intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[0x66726565@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:url,aoc.com:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D105574EC7D

Hi everyone,

Sorry that I forgot to CC the maintainers in the initial e-mail I sent
yesterday, which can be found at the end of this e-mail.

I also would like to add further important details:

* The problem is found on two additional custom PCs for a total of
three custom PCs as follows:
** PC-1: Intel Celeron N5100 @ 1.10GHz whose integrated Intel video
card is 8086:4e61 (JasperLake).
** PC-2: Intel N97 whose integrated Intel video card is 8086:46d1
(Alder Lake-N).
** PC-3: Intel N150 whose integrated Intel video card is 8086:46d4
(the newer Alder Lake-N).

* The problem is _not_ found on the following custom PC:
** PC-4: Intel Celeron J4125 CPU @ 2.00GHz whose integrated Intel
video card is 8086:3185 (UHD Graphics 600).

The problem can be forced to occur on PC-4 by building the kernel at
commit 99cfbed19d06 after rewriting line 702 of the file
"intel_dp_link_training.c"
(https://github.com/torvalds/linux/blob/99cfbed19d06dfe9c9929c436b5a768231c=
05b70/drivers/gpu/drm/i915/display/intel_dp_link_training.c#L702)
to be:

link_config[0] =3D DP_MSA_TIMING_PAR_IGNORE_EN;

Therefore, it is clear that on PC-1, PC-2, and PC-3, the conditional
expression "crtc_state->vrr.flipline" evaluates to true while on PC-4,
it evaluates to false.

The commit message says the following on changing the conditional
expression from "crtc_state->vrr.enable" to
"crtc_state->vrr.flipline":

"I decided to leave the MSA timing ignore bit set all the time whether
VRR is actually enabled or not. If the sink can figure out the timings
with that information when VRR is active then surely it can also do it
when VRR is inactive."

That decision by Ville Syrj=C3=A4l=C3=A4 seems to not work with the AOC mon=
itor
24P2Q, a DP-to-DP cable, and either PC-1 or PC-2 or PC-3.

Ville Syrj=C3=A4l=C3=A4 assumed 3 years ago that the sink could figure out =
the
timings regardless of whether VRR is active or inactive.

The real case at hand with the AOC monitor 24P2Q, a DP-to-DP cable,
and either PC-1 or PC-2 or PC-3 demonstrates that it seems not to be
the case.

Nevertheless, my question remains: is the rationale given by Ville
Syrj=C3=A4l=C3=A4 for his decision 3 years ago invalid according to the
DisplayPort (DP) standard and so the bug is in i915, or is the
rationale valid according to the standard and so the bug is in the
BIOSes of PC-1, PC-2, and PC-3?

Thank you for your help.

--
Best regards,
Tadeus Prastowo

On Mon, Jul 13, 2026 at 2:36=E2=80=AFAM Tadeus Prastowo <0x66726565@gmail.c=
om> wrote:
>
> Hi everyone,
>
> I have an AOC monitor with the following details:
> * Product No. 24P2Q.
> * Model No. 24P2.
> * Manufactured in March 2021.
> * Native resolution is 1920x1080.
> * Input connections: DP, DVI, HDMI, and VGA.
> * Product website: https://www.aoc.com/uk/monitors/24p2q
>
> The AOC monitor is connected to a custom PC with the following details:
> * CPU: Intel(R) Celeron(R) N5100 @ 1.10GHz
> (https://www.intel.com/content/www/us/en/products/sku/212329/intel-celero=
n-processor-n5100-4m-cache-up-to-2-80-ghz/specifications.html).
> * Integrated Intel video card VID:PID is 8086:4e61 (JasperLake UHD graphi=
cs).
> * The mainboard has two DP output ports.
>
> The monitor and the custom PC are connected with a DP-to-DP cable.
>
> The monitor has been working fine with Ubuntu 20.04 LTS in its native
> resolution: 1920x1080@60.  The Ubuntu 20.04 has Linux kernel version
> 5.15.
>
> But, the monitor no longer works in its native resolution after
> upgrading to Ubuntu 24.04 LTS: the monitor screen remains black.  The
> Ubuntu 24.04 has Linux kernel version 6.14.  The monitor can work when
> the resolution is set to 1024x768@60 using xrandr, but that is not the
> solution of this problem because I want the monitor to work at its
> native resolution.
>
> The problem remains when using the latest Ubuntu LTS (26.04), which
> has Linux kernel version 7.0.
>
> Different DP-to-DP cables have been tested with Ubuntu 24.04, but the
> problem remains.  The monitor works with Ubuntu 24.04 when either a
> DP-to-DVI or DP-to-HDMI or DP-to-VGA cable is used, but the monitor
> cannot work with Ubuntu 24.04 when using a DP-to-DP cable, which
> again, presents no problem whatsoever when using Ubuntu 20.04 with
> kernel 5.15.
>
> The monitor works with Ubuntu 24.04 using a DP-to-DP cable when
> connected to a different PC that uses a different Intel processor and
> a different integrated Intel video card.
>
> In other words, the problem is specific to the custom PC described at
> the beginning with a DP-to-DP connection to the AOC monitor.
>
> I have bisected the Linux kernel and found out that the cause of the
> problem is the following diff-hunk of commit 99cfbed19d06
> (https://github.com/torvalds/linux/commit/99cfbed19d06#diff-eb927a6d3f058=
8695ab1a8f54a0c90a7a5feddcfa8379e49130b2594b819f686),
> which is found between Linux kernel v6.4 and v6.5-rc1:
>
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -699,7 +699,7 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp=
,
>          drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
>                    &rate_select, 1);
>
> -    link_config[0] =3D crtc_state->vrr.enable ? DP_MSA_TIMING_PAR_IGNORE=
_EN : 0;
> +    link_config[0] =3D crtc_state->vrr.flipline ?
> DP_MSA_TIMING_PAR_IGNORE_EN : 0;
>      link_config[1] =3D intel_dp_is_uhbr(crtc_state) ?
>          DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
>      drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2=
);
>
> After I rebuilt the Linux kernel at commit 99cfbed19d06 by either
> reverting the hunk or rewriting the assignment statement to
> "link_config[0] =3D 0", the AOC monitor works fine again with the custom
> PC using a DP-to-DP cable and Ubuntu 24.04 with my custom kernel.
>
> Since this problem persists even in the latest state of the Linux
> kernel as of yesterday
> (https://github.com/torvalds/linux/commit/44696aa3a489), my question
> is then as follows:
>
> Is the actual problem the i915 driver or the BIOS of the custom PC?
> Note that I do not blame the firmware of the AOC monitor because the
> AOC monitor works fine when connected through a DP-to-DP cable to a
> Ubuntu 24.04 running on a different PC that has a different Intel
> processor and a different model of the integrated Intel video card.
>
> Thank you very much for any help.  If you need further
> information/test, just let me know.
>
> --
> Best regards,
> Tadeus Prastowo
