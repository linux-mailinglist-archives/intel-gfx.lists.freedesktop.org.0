Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMKNCGpkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C18C52F76D6
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08FC210E552;
	Mon, 23 Mar 2026 16:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LgDltKzq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f47.google.com (mail-yx1-f47.google.com
 [74.125.224.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C38AF10EB0D
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 21:58:16 +0000 (UTC)
Received: by mail-yx1-f47.google.com with SMTP id
 956f58d0204a3-64e87a81639so2808880d50.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 14:58:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774043896; cv=none;
 d=google.com; s=arc-20240605;
 b=BshFMdZLvIKaj0H+Mu/ZSg7MWg+h/aXPryvP4dCIeNK8X1hV7AjQF5lxx86+HU0din
 73Sw8TLUTUJhuGiFykr6vBaVUWEoKlDIv2jH5Q/bd+VvsLy7RXdHISdDI9YQ+EO4iRsh
 xlX+tHAeni4bI29+HQ4PbF+MpKzWy59WBdJNwE5+B5SETVCSs8QKpowPvO3Siv+rxH+D
 ADecTjg6SKXwTtzZLiLDonXpABgFGyRdhkRq8BKDlSN2xJIbJrklPqYv8bRnJdT7STtZ
 Aqf9K53JJRGxB9eZvGzTTRH9s0rIFAWYmib8Cnp7Ed9gYux0awtKRBwrlKT7bDo0W1nE
 7YAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=Wqd+go642a+TWwe7PKtBfdSDa2EC78pSofkTaJD/gQ4=;
 fh=8XKuN8ozFC1Us8PT/GVh9RU9oh2/xkQDbvjiJMlHzv4=;
 b=Gu6SR57Y9P/xV33glwVvnb7FHAZTwDqUPTZRkQNQODv5cjSRHO5tXm/6reHOzVOw+Z
 +e0Z8kmvq1rmvA4mFNneyIXGVP52ir3TRgdKfSVlsjjXDc9Z5gygFaJKdzKoowUw5vIb
 AgpUrSJrk6UxN5DzOkmD76a9Jtv+pe4/7Xvj1cFbZciB9UHQUh0Yn5b9+2+giX/n77/x
 pxMxP2Xaa9xD/4EXEYtE0+1R+nG/Mk1F1GxFDvCIVcPmA3YTfd6HshRnhUn5Ti3IPC2K
 wgNKqZEo6wptXH0QwR13Agl6HxFAMgyzx0b00AYC1og4v2oplxnVLitjS6o50oGfWGZv
 nAgA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774043896; x=1774648696; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Wqd+go642a+TWwe7PKtBfdSDa2EC78pSofkTaJD/gQ4=;
 b=LgDltKzqnH9RGSfNFpFbAMsxOSjiIL5HojGOJfKMZh5Ft9qiXTsMlL4yXpgOIT+o8c
 NXSvszqQ1qG1bhuvOrHdOZKJgvh+4HwpmU9DVm+fOMe/jWPiH/hkdovdSVJ0lSOFpzJG
 a3/9HWWsizE2OpORKD1cID3EihwQiU5Nme1HnRhs9HfY1UsHbTeonlHIg7Bg421IiXxU
 h9+GfSwdALiWVS/fjFkcI7N92jcr8G1JxbWqzEqY2h0CmH5VfDkBOQi4/AjxTN+VfAt4
 sz2ZkoR+XJ+oOlbjOfbzDrXSbtYZt58YyI7pXT/qEVT0BsK+aBxb7OTTBtXu3ZdbJdNi
 nX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774043896; x=1774648696;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Wqd+go642a+TWwe7PKtBfdSDa2EC78pSofkTaJD/gQ4=;
 b=cmoxl2TyNOs0SNXlewUd13NKDTBzFWPERakYiovtwtHVigr5yxEbk9S4Fyb9GWmBgR
 16fMMYF3ckjgGvaEt9PfH33AdHQFLiHRkSHQFIJCmL1lGfC0yfTsbKERXi3fRhNDCB1y
 4nxmpwhchI/TJAFYthEfKE569kI1lLSuKvkdW38iYJSAQJjnkd+X3TPKhkUE0qSApkvw
 yUgbmqcpzOtPwkp5azszbPonBH23uYfSppbLaB/GJZYcje6cP/nOPrJog64h5pGvz4pE
 hqrQ0ub6MlCMhKMUm1D75NI0QNVrw0i0LYmGApUUjGw5nFUXTmXrmvyiIpkJDUTx/gc4
 agPw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUaA1As8fZmeJ36mTCodadS2EBgAPV/yIwZskXNMPDDzMKcCTBSsMjK4jONafn+ieVzRP5LuoMLZ+c=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx/6MoJMMNFgnWZuraref45YYaEcReTyxcUIYBV725aRurzdbO6
 rR++0M+kHFf5WOkcO04IfnnIV4b5xg+ob0IUsCFFSeWwWYaZaLSYk2L8rYHVNnlXAkIqWbCWqOw
 PPKEy8QpcHE8Q9rZmo+eL6uj+jtyzJlc=
X-Gm-Gg: ATEYQzwmcPvf77dWutBoNQzDF69BtUdP71OGXtYi197PHjSS4mI8h7vuxDUesLlBHGz
 kb5QKhZBBCVRujrbUyX1zwApc0o1O05Z09MZKoxNIOkN+WptZlxjnOfrLx2B+riVOA0H+4yhzz0
 7zivopJqm6BeFHRKwccsQgkWtP91uP/PjkZ5xwbCALUH7LPB4ab2rH3KBU10Sw/QpQUfrhyfQQq
 msuj5P7UUG1xlDy1qFd3PIQ7PmqXB6CPS+ChylI/DfQ7M9MGI89rE+lUKg1B4MOviDTh0zUqlsi
 ceMd
X-Received: by 2002:a05:690e:449f:b0:64e:8d62:9f33 with SMTP id
 956f58d0204a3-64eaa6dd45dmr4024453d50.30.1774043895560; Fri, 20 Mar 2026
 14:58:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <177402491424.6181.2389443184024817919.b4-review@b4>
In-Reply-To: <177402491424.6181.2389443184024817919.b4-review@b4>
From: jim.cromie@gmail.com
Date: Fri, 20 Mar 2026 15:57:49 -0600
X-Gm-Features: AaiRm51cb3dCqAyrsJA38fQfr2R4JXFEq57xAGqK5lcZWHyVmE6QB8o4PW3zixg
Message-ID: <CAJfuBxxXAU7UivRQbTgDoKcqiD2BVOWpMBP4YLq_wAkEN=3W8Q@mail.gmail.com>
Subject: Re: [PATCH v11 00/65] Fix DRM_USE_DYNAMIC_DEBUG=y
To: Louis Chauvet <louis.chauvet@bootlin.com>
Cc: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com, 
 gregkh@linuxfoundation.org, mripard@kernel.org, tzimmermann@suse.de, 
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com, 
 ville.syrjala@linux.intel.com, christian.koenig@amd.com, 
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com, 
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DATE_IN_PAST(1.00)[66];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:louis.chauvet@bootlin.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: C18C52F76D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 10:41=E2=80=AFAM Louis Chauvet
<louis.chauvet@bootlin.com> wrote:
>
> Hi Jim,
>
> Thanks for this new iteration, the whole series is in good shape, and I a=
m
> also interested in the "future work", you can count on me for
> tests/reviews.
>
> This series is very long, but early patches are trivials or tiny fixes
> (4..11), can you apply them to reduce the overall size?
>

lib/ "belongs" to GregKH, so its his call.
IIRC, he has applied low-risk things case-by-case up until rc3,
I dont know his criteria for doing so, or his assessment of
how low-risk the initial patches are, but we're past that milepost,
so its a more-than-usual ask.


> I will add this series on my kernel to test it on "everyday life", I will
> report issues if I have.

yay. that should be helpful

> In addition, can you move the accel and class offset implementation after
> the rest? I think the "basic" part is good and could be merged soon (my
> comments are minor). This way Lukas can start to work on a stable basis.
>

They are already quite late in the stack, do you mean _USE_ after all
the drm patches ?

Im testing v12 now, it has a few noteworthy changes:
(I will work your feedback in soon).

1- Ive found a way to address this TODO-ish item:

    drm: restore CONFIG_DRM_USE_DYNAMIC_DEBUG un-BROKEN

    Time for some thorough CI.

    Also, the previous 18 patches could perhaps be replaced by a single
    invocation of DYNDBG_CLASSMAP_USE, from a C-file linked into all drm
    drivers & helpers.  I didn't find such a file, nor a drm-client
    linkage item in the Makefile.

+subdir-ccflags-$(CONFIG_DRM_USE_DYNAMIC_DEBUG)  +=3D
-DDYNAMIC_DEBUG_MODULE -include
$(srctree)/drivers/gpu/drm/drm_dyndbg_classmap_mgr.h

injects that new file into every compilation unit,
the file has a single call: DYNAMIC_DEBUG_CLASSMAP_USE(drm_debug_classes)
with a few #ifdefs.

the approach has the advantages of:
a- no 18 1-liner patches needed
b- no need for future drivers to call the macro explicitly (since its injec=
ted)

disadvantages:
c- redundant class-user records (1 per object), 315 extras in i915
d- mysterious, action-at-a-distance

a- is fixable, by introducing a MODULE_MAIN, added once per driver/helper
but thats not much different than adding the DRM_CLASSMAP_USE() itself.

2- Ive split up patch 1, the BOUNDED_SECTION_* patch
a- split BOUNDED_* macros to include/asm-generic/bounded_sections.lds.h
b- include it from vmlinux.lds.h
c- imitate include/asm-generic/codetag.lds.h --> dyndbg.lds.h
d- scripts/module.lds.S includes c), calls MOD_DYNDBG_SECTIONS()

this addresses some lost sections in DRM-drivers, the problem was exposed b=
y 1

> Thanks,
> Louis Chauvet
>
> --
> Louis Chauvet <louis.chauvet@bootlin.com>
