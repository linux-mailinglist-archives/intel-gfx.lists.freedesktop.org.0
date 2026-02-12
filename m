Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFypH7sOjmmS+wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 18:32:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CADEF12FF50
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 18:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EFEF10E786;
	Thu, 12 Feb 2026 17:32:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mSbKzM+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E90C10E786
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Feb 2026 17:32:39 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-2aad1bb5058so757135ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Feb 2026 09:32:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770917559; cv=none;
 d=google.com; s=arc-20240605;
 b=MfV4UQNMQjkF3Tz6H6RFOudDQtINoScSuOniJduNhuyeTSDFIodr1lvxcGY+PBUD0s
 gcZHXDbJgKNWSBx7opOapb5WsQBLx7MLDpDj+sG3ZEctxtTWZ14c/9I0cSjsOKmm5VWU
 wjAYn8DlYCHKBWgeaCvehEOnlJJDOG7NRxEZH0hfnv9xJ3fTtivwF6xtJGNjcfsl5hbj
 SWn///AT66CK94hAIg2qJOIoPONFRgta3xFyvdMXBtjmxe/6g+OK0VvmrGaTht3K4S1P
 4Q2CYUhouK/Z3zveMZJWZb5pCGtnPOh9GNBCdXhv+aHL9zmslfLed4tZt7kMv5iw4uDh
 DbJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=KJWO+CWz2+ZX1hwrogxjvfwO0uyUciYnaKJTLU1x3oY=;
 fh=O2ribCQQisiCkr+3M07ILQQEw1uleeeimohAwUA0pfc=;
 b=Qh2e1pWtiM0LEDZoDSbHhv4gdU4KcfIi4WyRUQKrCl3CrnxSoZRt14zQER8qHDL2aY
 RUGOl80gfSuA1ZEonQR7WEKIsBwS+XgS2O8v8UyoXz8tpGFGqs+kJ0AV4RiHY5GT3xN9
 8HxHqkHJmsLJJxu/+iWrdawPruMAOhkSQQBEMmUnmEa1ShnKOii8oRmcnYWJLrSpEA1O
 kXb0bQ6MQnfSQWO1G1hnJzpZ2lL9Zu7VbuZyhHr5ZOX8xWXZvkX1DmzTyEgvJFCE9VbP
 HQ8aYhUT1gbCRuuI/9reP0gE7brfQB0neJW4vcVsqD2lrkvSSiAxXQkBN9jMlhpk/WL7
 EN4Q==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770917559; x=1771522359; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KJWO+CWz2+ZX1hwrogxjvfwO0uyUciYnaKJTLU1x3oY=;
 b=mSbKzM+w/Boi49/ccyMoUtgk6U+QYiUcaC3amaoDs6hF0sjcDUxaMzEHUZn6MiVezL
 jOaUqazxh+PUz4ztQYcRPq4z/JYAigEKNS8C7ecPFn8kHY0eYtYmZk2Vnn5Bjd3oBaNP
 KuirHhwlUhYVCeDuskFzreTSltNzSnygp1pbTVBsBr98NCcY9IqWCVHH1yxucw8tIPC9
 q8bC8rZaXxfJXMeX+eaJ4N1iohwft9Ah2GS0c7pcMXICUDCByu1++7w8XN12uUuARi/C
 T4Gqc2ixuvRHMjD4H78p4t0PoQepWnvXFNQ0mYDgUzAYJndwmJQwroAgqN4JlLAbQFHs
 xaeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770917559; x=1771522359;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=KJWO+CWz2+ZX1hwrogxjvfwO0uyUciYnaKJTLU1x3oY=;
 b=MH2C69/ZfeA50dqOR8nezMLybY4y/ckk3TE892jMSEnpYN6JgoPI2GCs3gyMt9GwS1
 bptUXgnOkZicwTB6MRETEFGvI9zfNPlN90zCR3Rn621+KE2qZhZ1VDMyD1tHZjX1gCAQ
 M+A2p9aqpEpJWjVe7b0NdPkByjNt1RlBDFlOlIWAhNh3lF45u/v+U81/17pr/98yFxIu
 +crapWyiOAnnr2yKQJaN7RJMZVykWX/sP4xuIur4UX6Eb7cZauuFYF1fB6dH30g7vKc3
 fQxDS8OgJOVwCeylr5rCLL0jWQA8EmH6o+IW+85s50N7UgGIoxIJw3wNSnwC8oteEImc
 8+GQ==
X-Gm-Message-State: AOJu0YyuQJa/gWiIUgAs+cW725rsGhrcf4O/9Il8yJRBcdr5zwVDLNCW
 VCnmAPVQWH0DxPt1QuORdk6k+jayeHT0RiW0520STZL9MWTf5OzKWsyFrGGLMPRDNSE4fDwJ/ah
 Plk3KIAmZMIAyiDRUwUFemc6o/z7MF3Q=
X-Gm-Gg: AZuq6aKEYS4Rgg+kGgvksw99SiXu4FL1qUgs2wqkrue5f9IRIVb0Rb7eiIQ5t3B6HsU
 u0KFueKhFXn+7mbUQ/Wr3wDh6HD2AYSKuQXyg5x903OdSHCBGxSQpMgXSe08kkNYiMvmXnBPB8q
 oe2eTnlzHAaMBHhcA8Cv+w4Jd4249yj9x6bNyJyYSoC2saWtNUv94qxY8zdC8yZqxTBKxpea0qs
 kr69izK80iuoRitEb9sIzYwMdn76MqEO8txLva0zKhRYvqURg0E2GrIgWGrmQ9FPlNqsjSscN9o
 5uW/EJbo4kKKxCmwFCZLV4PaGKnOrFJgLbUQw1gK3Q==
X-Received: by 2002:a17:902:d4c8:b0:2aa:d320:e969 with SMTP id
 d9443c01a7336-2ab3b18986fmr26218815ad.8.1770917558647; Thu, 12 Feb 2026
 09:32:38 -0800 (PST)
MIME-Version: 1.0
References: <cover.1770379986.git.jani.nikula@intel.com>
In-Reply-To: <cover.1770379986.git.jani.nikula@intel.com>
From: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Date: Thu, 12 Feb 2026 19:32:27 +0200
X-Gm-Features: AZwV_QiZn4TfGQHluDXPNcwCixx5hFSZrHcH64ZJp433UqxfD81wtNyyp1Vdtdk
Message-ID: <CAJ=qYWSJ8n71Y0tE=dqGcwib1Fq7mq=4NKnFsD0sODiUhmcVrA@mail.gmail.com>
Subject: Re: [PATCH 00/10] drm/i915/dpt: refactoring, move to parent interface
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:intel-xe@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email]
X-Rspamd-Queue-Id: CADEF12FF50
X-Rspamd-Action: no action

I didn't spot anything special on these other than maybe patch
"drm/i915/dpt: switch to i915 runtime pm calls" could use better
commit message.

set is
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On Fri, Feb 6, 2026 at 2:13=E2=80=AFPM Jani Nikula <jani.nikula@intel.com> =
wrote:
>
>
> Jani Nikula (10):
>   drm/i915/dpt: move display/intel_dpt.c to i915_dpt.c
>   drm/i915/dpt: pass obj, size instead of framebuffer to
>     intel_dpt_create()
>   drm/i915/dpt: move create/destroy to parent interface
>   drm/i915/dpt: move suspend/resume to parent interface
>   drm/i915/dpt: remove display/intel_dpt.h
>   drm/i915/dpt: drop _common from the DPT file names
>   drm/i915/dpt: switch to i915 runtime pm calls
>   drm/i915/dpt: rename i915 specific functions to i915_dpt_ prefix
>   drm/i915/dpt: rename struct i915_dpt to intel_dpt
>   drm/i915/dpt: pass opaque struct intel_dpt around instead of
>     i915_address_space
>
>  drivers/gpu/drm/i915/Makefile                 |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   1 -
>  .../drm/i915/display/intel_display_types.h    |   2 +-
>  drivers/gpu/drm/i915/display/intel_dpt.c      | 316 +++---------------
>  drivers/gpu/drm/i915/display/intel_dpt.h      |  22 +-
>  .../gpu/drm/i915/display/intel_dpt_common.c   |  35 --
>  .../gpu/drm/i915/display/intel_dpt_common.h   |  13 -
>  drivers/gpu/drm/i915/display/intel_fb.c       |  21 +-
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   |  15 +-
>  drivers/gpu/drm/i915/display/intel_parent.c   |  28 ++
>  drivers/gpu/drm/i915/display/intel_parent.h   |   9 +
>  .../drm/i915/display/skl_universal_plane.c    |   1 -
>  drivers/gpu/drm/i915/i915_dpt.c               | 277 +++++++++++++++
>  drivers/gpu/drm/i915/i915_dpt.h               |  20 ++
>  drivers/gpu/drm/i915/i915_driver.c            |   2 +
>  drivers/gpu/drm/xe/Makefile                   |   2 +-
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        |  20 --
>  include/drm/intel/display_parent_interface.h  |  11 +
>  18 files changed, 419 insertions(+), 378 deletions(-)
>  delete mode 100644 drivers/gpu/drm/i915/display/intel_dpt_common.c
>  delete mode 100644 drivers/gpu/drm/i915/display/intel_dpt_common.h
>  create mode 100644 drivers/gpu/drm/i915/i915_dpt.c
>  create mode 100644 drivers/gpu/drm/i915/i915_dpt.h
>
> --
> 2.47.3
>
