Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDkzEiW1cWkzLgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 06:27:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F9F761FCF
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 06:27:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B6010E07C;
	Thu, 22 Jan 2026 05:26:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="N5+miDRn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C464B10E07C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jan 2026 05:26:56 +0000 (UTC)
Received: by mail-qk1-f177.google.com with SMTP id
 af79cd13be357-8c6a7638f42so82075985a.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 21:26:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769059615; cv=none;
 d=google.com; s=arc-20240605;
 b=ir0YwCH8QZQcA7Dl6A8PyuHy2aTQubWbRGVeBDwV8vwgId145qz/++m5LxyFLlXBtQ
 L6eQbHCkWqeG+FfVWDc4mgOGBaVqdHseb5HLaahNkPPLHGiMnRDfSIK7ybj4hPlG+hGL
 h2u1IbBTcwjAs/74PUl348aWHApdHoZ9b/6PbokvKNCdQpQfHNASGJEW3xSOGWFv9PHg
 a2/5P0PIQGTLPs3mDgiI3KmXuZFu0RR3GL7NL5r7trJVU37wj/EkVti2Ts93FskG0JJI
 znUaM8hgkWfU5/3JRkjIIY1V8LLSCcb2iF2OsRMbLxPdh6wDsI2C2iCKsk6B+Lxa1ZAc
 Ffvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=fBla1J9dueqeZqv+IKTvLuoBDmXhHc5I5EAmZqUprIo=;
 fh=xCkLOplIrivY/QuoZsQ5oO5/NrHKmccS8RJ76aIaE9c=;
 b=MoOWz8hTC27aEaHYSooKGcLFTTKv4fM3/V/9TyJIj2OV4NpkG2J9nOc+PifHj192kU
 lgDnCD1jAvy5q3LD7t0MK9WwG+5dT8qNC10jX5r1JLFPET2t6Rbx6V1Asy9W6x1HRo7z
 zm6+5Plu20Jf9hYjZYT89B6x0QuT90+PyATqN7VgF/NecUXxCPKQW10Y7iQ+83RQaiPs
 AWetrTtZLjx/2reIfMYW4WGleJCuIdkJd3GoH7o+nymrPWF/ZwHPgxnW3hipi42pnuG+
 cxRiKKmSWwEn3b3uPGKsohE/q1BCs4gFFUOAEBugFpzoFro8gEOvArOsx4Trv39c6N+O
 Y6zg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769059615; x=1769664415; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=fBla1J9dueqeZqv+IKTvLuoBDmXhHc5I5EAmZqUprIo=;
 b=N5+miDRnIbO2kJWioFuKBnGJzeXbR0SrYApLYYXK408/6kF8yCtgXhVLC2hRNt6rWx
 wH5CWhvnuoqDT4KV+1Lm9E5esBXCMOmsr9eoCeE9KyTg4jMlubsZUTKh087juuEv12D7
 4QTDEPbNcruaDiniMRxWid7GdU8pU8MEu+N/EV0oxLx/Fj07gloAY+HsAJe59EVgu6zf
 ZlBORGdRIBf03knVTQI4clfhL1GdkCBC3EnjwXd/1808f2aStoTB1i/+piGkzjraofHc
 wxDsVp0SXMI7+Y/pQP4jqTZT/52yO7Mc70IrK0UNki73zYBVbCXwxsdkyZsFZ4RZgkP6
 ukaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769059615; x=1769664415;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fBla1J9dueqeZqv+IKTvLuoBDmXhHc5I5EAmZqUprIo=;
 b=GDZmX6nFH8BigzY3GIcoARMHQ1ZQ+3SEtd8S35nMo6XsPZzjXZVAILZgr/sTXgTgqn
 rl7n+LfQ5oJaaDjoENv6HJzzX/z+Wlfxw1gM8UqPO0SKohtsI/K1oyi1x+umjGGAmAqh
 FDj7vo/Nuuw+OKuRfPuDsgdX+QEkB129d6EQ7B5SLXa4VXMbbVetwx8w2OBzHfDEy82y
 97ufmN1jKrxsdbNNvPiRg28YdDPBjyNcfjzoG/nrPHQumWZCPxpgTVSdl7fk5wNGFbhD
 UO97bGYjC4zco+qxQc506iZNgG8mAfHc7qJsdH5gOZL1qSnFUrgPM8ngcFFU9y5RAU5X
 UhaQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW001HIKr6Eca56Gqo7af4xyBs4UtYKIv7jo7R7TOcAHMjWctpFb8waHsZnt4167PUQ+YQ++09ZvWI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxpZgb6fyTegZIpifWOaQ/MFz3jprSiT8oTESnNGS40ZrZHaViU
 jMmKTUn5kfFvD6Q2H24WMztPK/sZ2BHo3TFpCACb+bi8+50sFZx77F5CneZZEdBFXKQ6XJUz3v5
 bv52OWWNJwBsZPDw7dYOkowQOl24Hf60=
X-Gm-Gg: AZuq6aL1aZI0vp4FRpIBKFaar8MX28X77PhSNYvfBCtLrTiI53NzLS3WK3ff9J29x8J
 8bzrCJhqalCyU45Q0ubmQZMfR/Z8f12GUQvOMNMhR9Ft9Cjmg7IeeUR2f95LND15+GQ5zDSMTJ0
 8gvYaBNACWsVMWbzlX3adQEyzM9cYhCBaK/i3P43jq5FqBsuBVEkcHFWAleOByRHa8IdO89r6Q0
 ED0NqjqWgUyVIAI1dTEjwXqsWdSvnRxpo5PHgsI7rl07mWPzygHJTOQQPuwVyYfDMj4P3QLMYlm
 dT3DaV3sZaO/IM83B1cTQtl83benMN0sCoZsDFJiyT4Y7QA3fzFaoErynSj4aLJckQ==
X-Received: by 2002:a05:620a:46a2:b0:854:442a:f568 with SMTP id
 af79cd13be357-8c6a6944d59mr2795593685a.43.1769059615381; Wed, 21 Jan 2026
 21:26:55 -0800 (PST)
MIME-Version: 1.0
References: <aWkNThVRSkGAfUVv@intel.com> <aXDgaporPS3I6T4J@intel.com>
In-Reply-To: <aXDgaporPS3I6T4J@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 22 Jan 2026 15:26:42 +1000
X-Gm-Features: AZwV_Qhm-U17H0bkhJqLuJLvX10NZw20MoPnZ2d0NLMam21ljZjcsyaU1GyUslw
Message-ID: <CAPM=9tx-3UWevjzbJyDTGzQ=WR3KvVDU8M2xqek39fs4zJZhnw@mail.gmail.com>
Subject: Re: [PULL] drm-intel-next
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>, 
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dim-tools@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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
	FORGED_RECIPIENTS(0.00)[m:rodrigo.vivi@intel.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[airlied@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[airlied@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8F9F761FCF
X-Rspamd-Action: no action

On Thu, 22 Jan 2026 at 00:19, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>
> On Thu, Jan 15, 2026 at 10:52:46AM -0500, Rodrigo Vivi wrote:
> > Hi Dave and Sima,
> >
> > Here goes our likely last drm-intel-next PR towards 7.0.
> >
> > Thanks,
> > Rodrigo.
> >
> > drm-intel-next-2026-01-15:
>
> Dave, Sima, anything wrong with this one?
>
> I noticed this was not picked up yet.

It should be in drm-next?

commit 9d10cd526111a989eb353c3a4df9d4c79695ea8d
Merge: 37b812b7fdc2 d30f75d2dba9
Author: Dave Airlie <airlied@redhat.com>
Date:   Fri Jan 16 12:57:20 2026 +1000

    Merge tag 'drm-intel-next-2026-01-15' of
https://gitlab.freedesktop.org/drm/i915/kernel into drm-next

    Beyond Display:
     - Make 'guc_hw_reg_state' static as it isn't exported (Ben)
     - Fix doc build on mei related interface header (Jani)

    Display related:
     - Fix ggtt fb alignment on Xe display (Tvrtko)
     - More display clean-up towards deduplication and full separation (Jani)
     - Use the consolidated HDMI tables (Suraj)
     - Account for DSC slice overhead (Ankit)
     - Prepare GVT for display modularization (Ankit, Jani)
     - Enable/Disable DC balance along with VRR DSB (Mitul, Ville)
     - Protection against unsupported modes in LT PHY (Suraj)
     - Display W/a addition and fixes (Gustavo)
     - Fix many SPDX identifier comments (Ankit)
     - Incorporate Xe3_LPD changes for CD2X divider (Gustavo)
     - Clean up link BW/DSC slice config computation (Imre)

    Signed-off-by: Dave Airlie <airlied@redhat.com>

    From: Rodrigo Vivi <rodrigo.vivi@intel.com>
    Link: https://patch.msgid.link/aWkNThVRSkGAfUVv@intel.com


Dave.
