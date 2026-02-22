Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UD96GRlcnGmzEgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:54:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EF5177727
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 14:54:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B1B10E3C8;
	Mon, 23 Feb 2026 13:54:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dqrpuXO2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61F9310E12C
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Feb 2026 21:56:15 +0000 (UTC)
Received: by mail-vk1-f173.google.com with SMTP id
 71dfb90a1353d-5674689e507so1604352e0c.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Feb 2026 13:56:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771797374; cv=none;
 d=google.com; s=arc-20240605;
 b=lxirVs2uyle5pOWcOFEgelO+Z3DqBZZTYPEGfleOEbdLvhCuPkc3291h/82ALBPr4c
 s9y40l+qLmrSeUwcaoQchSB0ZL7I4scAkBq0zE6PFvElwatSnNUMOIs9NKv7N7AtNff1
 hAaO+q/0dTou6I+UW8NBod4+Oihsd56gZnY2Gm50qZOW8IKhaMumJLcqdkzA5SKbzJZo
 fWA1PCHuLB1nNM6Dr9SmXGP9476fA+16mS6ADOd6iAQt7BEnp0Uw87EkUeVyErm7gJYF
 FUAyWSvQA5Qh/4oNEJku3JA5U5P+wXlKMJ321ZLaXks1CxVT1typ4tJlqNhGNrVCpa97
 SzGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:dkim-signature;
 bh=fvZFs6ZWQcArHoivTdoRPMVBttlGZZKU4uro3YAyvz8=;
 fh=CejCUVoZQxveiALRdoz6jiSZPNJUqC7Iw48SnfqZA7k=;
 b=bAfhp97Fb5sC0HvfVAgz8hsoovGv6vfXV/5ORIJ/L6x7rXyBpfi+YUooS84ckFZWW/
 kf4QG1mtD+pxXY3js4XDxnUhp6K2O1gohz8lc/NlEKrak2Q+BWJSFu4JkqUQAlQ1YTgk
 Lm+AR9n++5LMgE2/8z9DfJXTdYcs5kNynvrmB2yasF1cvOKQFtiqfLXrbDfLYCijL5Fm
 DBhXnyvtg7w8Ac0qtQv4MRyXtxhkmhA1mNBmc1qBKO/9L0JgExcqtiDkGFnH4tnQRsYv
 r8hwNJmlRHSFEObqBOEq23ogAuzrOlLxnicd7BdEqxSrxe65BiHL6Oy1M1Zb2EYxfeqq
 hmRg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1771797374; x=1772402174; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=fvZFs6ZWQcArHoivTdoRPMVBttlGZZKU4uro3YAyvz8=;
 b=dqrpuXO2bzP066N7t5u+ofclK/cIW9s+evU6PH8UmFeJi43jC21Ghm5YNacNinTHT2
 lOkCAbeRtgyeATfIZSTjtAb0Zqf9C+tG9YojFsrx2w/uZ+LTNPSoNwp2rJa0AzqTLXD2
 6Ir5r90pQqVqrdGZz6asBsGG79f9IIbyzKZzdQ6N1qln4PoPIKIIxPvRT+6mzHLsHPV5
 hy2HumTI5Jmj8i/oKQspUNQU5SFkjqKnPcZW0hfVLoEn74EHNl9uLbRLK8Aw14HV7BDg
 879NyRl+NMkQyTQZ6c2zC4WclRFGGLvJ5oFqEIEFQM81LhKRWGoo8dpJ5YTFxGZgeVYD
 BsXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771797374; x=1772402174;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fvZFs6ZWQcArHoivTdoRPMVBttlGZZKU4uro3YAyvz8=;
 b=anTSDF9d7EaKPSOVSywaw5XVzY7SqICCzGRe8sNFeNUvJtmLm/Js8X6k3BBq59Ccjx
 Vx5Vjdxd5lN2zuhO+pwShQ+vHtJLWfEt0kFhiCxxf9hreqBDDUhok+RduuxI0kjWO62P
 3fDCAhPrFzWY6iN5TIWrUD40rys5aKWAal0aqHifMbyXBix2lptdNLXDnrxvXpfTSUHK
 0KcuBLOnxgRLmz9nva5/cO6oYDUKu8bupEVMIwuKeh0HvEz1YY/qIT96DoOm+pShiJW2
 gaTx6nruSqBwE3G6/trTzO0yOtCx4aKQDs/fQZKqwO3sMPsnmLfmyLjuibYE9ZPO9K36
 1jmA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU4wKuqzybdkJ569O9eGZ+o9/ZcVFBX3vWCHztfdtt/UQ/QSDKure8I4WKjpKRG9glSB1Yv0v4I/0A=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywhl5vbS6tqbrD+2Oy9iSi5YOVYaZ4bhFjt/VYy0VlnwKBDgNmn
 gfAhFse0Qhl/ll7QA824eGIs7eqUyvNxHVLZRgSiVSvAXZYsnT+vLulZND36tMihWRJ++GtpSYd
 OC7k/fl7Fq6VGcn1uBc3UPXFIcuzagrM=
X-Gm-Gg: AZuq6aL9+ZTDMFLLoTQdrcguvUeNtzIi3kG1flCSq/XG553rp34cvO4gzx9JS042g32
 u5trsIkOI2YhfUWMdjmndY+6+fk7m2nYO5hyVk06Vkr6VO6b0UEunErJ9AVhNJduFh5f6xhp6ok
 t8st8TF3NKcdDSFm59GcPj4K3fDSVkY00Ync7xQf9qfLtTrRg/cIbHp+cEeGDYtA2PtxecgPmWA
 n23GaCcg6i+VoeC1PF6jNYUj1ndg4DWoDo50xeFQvAfAEBwZHuxjD93dbB/jRImZodxN7C/6zbW
 nmyKF8zs54HdCAc51S71+wwpD0L4aMiGbTZnqtOkSGxTOxEAjRrIQXVjMO4AIho9+qYE3St4jqU
 kVIdHS8rSkw==
X-Received: by 2002:a05:6122:469b:b0:55b:1a1b:3273 with SMTP id
 71dfb90a1353d-568e47abec3mr2195110e0c.6.1771797374061; Sun, 22 Feb 2026
 13:56:14 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?QW5kcsOpcyBQw6lyZXo=?= <andres.f.perez@gmail.com>
Date: Sun, 22 Feb 2026 21:55:54 +0000
X-Gm-Features: AaiRm50d7jLgPyD4kdVKiyrm9CHXFWwo9PDyCMT5qvyZh7PMRFS6zqm3NMkVBvk
Message-ID: <CAD0gVBsyzYNA6ydPwg9mJ9VQzYg4zPAi24JQ13-=0KtdbQ039A@mail.gmail.com>
Subject: [REGRESSION] Display freeze on VT switch back to X11 since v6.16
To: stable@vger.kernel.org, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans de Goede <hansg@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: regressions@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 23 Feb 2026 13:54:29 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.60 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:stable@vger.kernel.org,m:laurent.pinchart@ideasonboard.com,m:hansg@kernel.org,m:mchehab@kernel.org,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:regressions@lists.linux.dev,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[andresfperez@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[vger.kernel.org,ideasonboard.com,kernel.org,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andresfperez@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_FROM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 15EF5177727
X-Rspamd-Action: no action

# OVERVIEW

Since kernel v6.16.1, switching from an X11 session to a text VT and back
freezes the display on a ThinkPad P15 Gen 2. The system remains responsive
over SSH; only the display is frozen. Bisecting identified commit
d1b618e7954802fe ("media: uvcvideo: Do not turn on the camera for some
ioctls") as the trigger. Reverting the logic change in that commit
fixes VT switching
on v6.16.1, v6.17.9, and v6.18.9, but that is not an actual solution. Wayla=
nd
compositors (e.g., river and sway) are not affected.

Last good:  v6.15.9
First bad:  v6.16.1
Bisect result: d1b618e7954802fe media: uvcvideo: Do not turn on the
camera for some ioctls

## Hardware:   Lenovo ThinkPad P15 Gen 2i (20YQ0031US)
CPU:        Intel Core i7-11800H (Tiger Lake-H)
iGPU:        Intel UHD Graphics (TGL GT1)
dGPU:       NVIDIA T1200 (not involved in eDP output; driver: nvidia-open)
Display:    15.6" 1920x1080 eDP, 10 bpc capable (EDID 1.4)
Webcam:     Integrated Camera on PCH xHCI (Bus 003 Port 004)
Firmware:   LENOVO N37ET61W (1.97)
OS:         Arch Linux, Nix home-manager, X11 + xmonad, no display manager

## Symptoms and reproduction steps:
1. Boot, start X11 on tty1 (startx).
2. Switch to tty2 (Ctrl+Alt+F2): works.
3. Switch back to tty1 (Ctrl+Alt+F1): display freezes.
   - Frozen on the last frame shown before switching away.
   - System is fully responsive over SSH.
   - Other VTs switch normally between each other as long as X11 is
not active on them.
   - Killing X does not recover the display. A reboot is required.

# DEBUG ANALYSIS

On v6.16.1, the VT switch back to X triggers a full modeset due to pipe
configuration mismatches detected by intel_pipe_config_compare:

[drm:intel_pipe_config_compare] fastset requirement not met in pipe_bpp
  (expected 30, found 24)
[drm:intel_pipe_config_compare] fastset requirement not met in dp_m_n
  (expected link 269484/524288, found link 336855/524288)
[drm:intel_pipe_config_compare] fastset requirement not met in dpll_hw_stat=
e
  (expected cfgcr0: 0xe001a5, found cfgcr0: 0x1c2)
[drm:intel_pipe_config_compare] fastset requirement not met in port_clock
  (expected 270000, found 216000)
[drm:intel_atomic_check] forcing full modeset

On v6.15.9, the same VT switch shows no such messages.
no pipe_config_compare runs, no modeset, no freeze.

# BISECT AND VERIFICATION

The bisect converged on d1b618e7954802fe in the uvcvideo driver. This
commit adds a switch statement to uvc_v4l2_unlocked_ioctl that allows
certain V4L2 IOCTLS to call video_ioctl2 directly without first calling
uvc_pm_get/uvc_pm_put. Prior to this commit, all ioctls called uvc_pm_get
before video_ioctl2.

## VT switching verification across kernel versions:

  v6.12.74 arch pkg:   WORKS
  v6.15.9 arch pkg:    WORKS
  v6.15.9 from source: WORKS
  v6.16.1 with d1b618e reverted:     WORKS
  v6.17.9 with PM wrapping restored: WORKS
  v6.18.9 with PM wrapping restored: WORKS

  v6.16.1 from source:  FREEZES
  v6.16.1 arch pkg:     FREEZES
  v6.17.9 arch pkg:     FREEZES
  v6.18.9 from source:  FREEZES
  v6.18.9 arch pkg:     FREEZES

## Things that do not eliminate the freeze

  - module_blacklist=3Duvcvideo on boot
  - CONFIG_USB_VIDEO_CLASS=3Dn (compiled out)
  - i915.enable_psr=3D0
  - Bypassing intel_vrr_transcoder_enable/disable (no-op)
  - xrandr --output eDP-1 --set "max bpc" 10
  - Xorg config FBDepth 30 (No effect on pipe_bpp)

## Workaround patch

Reverting the optimization from d1b618e to restore the unconditional
uvc_pm_get/put wrapping for all ioctls. This is not a proper fix.

diff --git a/drivers/media/usb/uvc/uvc_v4l2.c b/drivers/media/usb/uvc/uvc_v=
4l2.c
index 9e4a251eca88..15057b47ec4f 100644
--- a/drivers/media/usb/uvc/uvc_v4l2.c
+++ b/drivers/media/usb/uvc/uvc_v4l2.c
@@ -1199,33 +1199,12 @@ static long uvc_v4l2_unlocked_ioctl(struct file *fi=
le,
  unsigned int converted_cmd =3D v4l2_translate_cmd(cmd);
  int ret;

- /* The following IOCTLs need to turn on the camera. */
- switch (converted_cmd) {
- case UVCIOC_CTRL_MAP:
- case UVCIOC_CTRL_QUERY:
- case VIDIOC_G_CTRL:
- case VIDIOC_G_EXT_CTRLS:
- case VIDIOC_G_INPUT:
- case VIDIOC_QUERYCTRL:
- case VIDIOC_QUERYMENU:
- case VIDIOC_QUERY_EXT_CTRL:
- case VIDIOC_S_CTRL:
- case VIDIOC_S_EXT_CTRLS:
- case VIDIOC_S_FMT:
- case VIDIOC_S_INPUT:
- case VIDIOC_S_PARM:
- case VIDIOC_TRY_EXT_CTRLS:
- case VIDIOC_TRY_FMT:
- ret =3D uvc_pm_get(handle->stream->dev);
- if (ret)
- return ret;
- ret =3D video_ioctl2(file, cmd, arg);
- uvc_pm_put(handle->stream->dev);
+ ret =3D uvc_pm_get(handle->stream->dev);
+ if (ret)
  return ret;
- }
-
- /* The other IOCTLs can run with the camera off. */
- return video_ioctl2(file, cmd, arg);
+ ret =3D video_ioctl2(file, cmd, arg);
+ uvc_pm_put(handle->stream->dev);
+ return ret;
 }

 const struct v4l2_ioctl_ops uvc_ioctl_ops =3D {

Andr=C3=A9s
