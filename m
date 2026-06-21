Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OfA8CfVxOGo8cQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 01:21:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE146ABCC7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 01:21:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=gZoeN74r;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F78010E0E6;
	Sun, 21 Jun 2026 23:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16EE10E3FF
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Jun 2026 23:21:21 +0000 (UTC)
Received: by mail-qk1-f181.google.com with SMTP id
 af79cd13be357-915d64fead9so484329785a.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Jun 2026 16:21:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782084080; cv=none;
 d=google.com; s=arc-20240605;
 b=bfFEtTNillxpJhSbk20zz5oiBY6FdlTYdOttQs638bpwrOji9HiyzgBK75nHgihGIL
 cwU2rG3H9qD/f02jG/EmiewyeTO7JAPrmiF0rGuYNAad9530C663TA8UN2CoPV/pe40R
 fq9RLa01A7i/gHMofq2jT0JGzx0ncGe6QBmMXwVzBbS/SnJBI6Hf5deFbfjkd1r9FB8x
 LPz/XcrJGpNYyE9DxlrxiWTOfscgLeXFjDV4BsSCjhHLDJ2rmuXZpR+K3JlXE/nOTXEF
 SrS7BQzcMSOZcYiKxkUFSpzrfiZcd/648Mm2kbyFP8gghUgKkXDhaIXoa8cgoVwOCoOz
 Er/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=hxi8pAd5fXbOtgwDNhDucP856vxJgDI8S86xqAbImM4=;
 fh=YEorl8bYw2fxN/LqMhTfYdSC4CHSiUtCBrVt5RxvFnk=;
 b=Ynrz++i7HbbNVMXe1VyxBbjiQFaxzLXE28yG7GFpkyM4yBKsmm/R2OlXMuV5h3Wl6y
 4bCVnUwHeTei5z0J06CHjUKhCTDb2H3vH7yHKmvHuhlOLvNzfNeX9FzM4sMPoAG/2Ee4
 bwz1H2oahLP9HBbtryX2TjLWyDUsbRK/iWOkE8PBbsVCS7YDNKMUATlqJDBHfG9JyVMO
 Dq8XTf9tTDmcSCCTVur9LGTbfT5M//3PKSf8BLVlJratEbGGA4/sjvmjCS4p2Asopl6F
 kbW4JHh7ca+ntPlHGyu7x5Hl3XVarGiKxIfXUssS/3PlxdF5JcnyF8CBN3eHZNGRBsVW
 MYsA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1782084080; x=1782688880; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hxi8pAd5fXbOtgwDNhDucP856vxJgDI8S86xqAbImM4=;
 b=gZoeN74rgR4YH2r/4d9OSEMUnaDsmehqyvAKy6vW5Z9CgPLNkUcLbRGljqjvXpyc6T
 NicoCOeCUr/euYuCNuG10uAdPS5ZtusMZlr/9fr5K0yKq5TLZ+DKq044iYU9oPVAcnCo
 wgIcDLhk5GCSY4yHkDlNbMGqO11XUrlH78uiMZVszZ+v65uHHc+BPIdAwRJ0uang25N1
 qbHzVvpGYAgjjYeddYaPbJlhaLMthd+AtmCZNCZ1OPpckg+5zl2ybfSvEyAWMsKAb9iu
 sfGu6zVPAovKY5PXfgl7kjpjD9PzQupxJEoj1cryadT7Zgh29LWiaWlrBB0uWSyKmyBH
 tEjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782084080; x=1782688880;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=hxi8pAd5fXbOtgwDNhDucP856vxJgDI8S86xqAbImM4=;
 b=TRrvdHCy0Lg2cUE5q7YFk6qFEz8ybmMSbFX93SNUZUYJRB+CnFhzJbGukqESOJxMYV
 SeqWHtotx825gx3k0U92tmOXXde2W/uxk3ehxkA8/xCOT0xGs5CpaAx5sc0eec06+SYB
 OeAo9iZv5e5TWn87oZNylfSibedtAoED3OguwkFEwRd/fKTTDLUBnpbJ/KywG0HF71IY
 OADA8HfkPaarB6DVb15reB3Q7DF9o2jOAVjaOUFQQNBSBYPUfwApcGXDeSIRf/UWxZPX
 DejzcE+wTIKjIi/bZ5Om7ev2wQ/EvHNhemKhXJ+/9qs7SywxbkPAl6XXZZ3yuEvCur1Y
 DFcA==
X-Forwarded-Encrypted: i=1;
 AFNElJ8PktWje1ETJJh0i9Jmr6raY1sPtVKTQJk3LIzTNqu3bPN78/3KDDjDTwQcutCIWLl8d6Z0ocbmcLU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxrp5Yw0bR5xMx5a+rYbFYOHkBvVyMq8pGNrblVATFXagBhQ579
 frQtekAICzUuHTVJwb1HK9BjcTERUhpgz2Ha6uXBiuF+l1EjpMOBnz7TT2AsZmIjUZSLO5B+pve
 ViiNFE1QcHo8R/lYjlyreGz7T5cjE95c=
X-Gm-Gg: AfdE7cn78onrzTjSJYq3vIwKvZxYAMUIxdY1DzJ9NkDngHYaguisKq/uAyc9VSshI/6
 esNyi8obkBmNztSxVID54kGb0fkit6T4FzukbXoKKMNUIeMJnZ5mh5V13EyqJfgj5ntBYyld9zf
 LlwR84KEOpFCZxOSEOCA0lWW1LVfqZBfcoy2Whrz6Gj41ci3RwT0PWulBiJwpJIIdyp/+MzNTxJ
 UwCqYEyj/FHf/T3+xj1ZYaZtKN9UK+wwqqWiLtGaM1kDpZ60v+0M0j7TAZJAm3tG4MCuGvsV7T6
 j9LRWREO3wo56lwdBhQrLjo4nBP018ZqGLx2MYpiAk9xItZ45dG2VJj8txEidFI+duMun6BW/NR
 v6Pi29r71HGPTZds=
X-Received: by 2002:a05:620a:4053:b0:915:5216:e5bf with SMTP id
 af79cd13be357-9208c625028mr1587487185a.22.1782084080570; Sun, 21 Jun 2026
 16:21:20 -0700 (PDT)
MIME-Version: 1.0
References: <ajLy2brwvOZEFNNN@gsse-cloud1.jf.intel.com>
 <ajL++rKbSpYgBRw6@gsse-cloud1.jf.intel.com>
In-Reply-To: <ajL++rKbSpYgBRw6@gsse-cloud1.jf.intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 22 Jun 2026 09:21:08 +1000
X-Gm-Features: AVVi8Cf985BzLxOdD7bf0TqUBm8eXlIQywh3agTZ7zRl3Lbgw2eToWnB5a8jug8
Message-ID: <CAPM=9tzO2Cg2e5BRQrvwtX08pmaq+hOvBb=BuYWQ0beLyoU5uw@mail.gmail.com>
Subject: Re: [PULL] drm-xe-next-fixes
To: Matthew Brost <matthew.brost@intel.com>
Cc: Simona Vetter <simona.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dim-tools@lists.freedesktop.org
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
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:matthew.brost@intel.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:rodrigo.vivi@intel.com,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,s:lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[airlied@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[airlied@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5FE146ABCC7

On Thu, 18 Jun 2026 at 06:09, Matthew Brost <matthew.brost@intel.com> wrote=
:
>
> On Wed, Jun 17, 2026 at 12:17:45PM -0700, Matthew Brost wrote:
> > Hi Dave, Sima,
> >
> > Here are drm-xe-next-fixes for 7.2.
> >
> > Matt
> >
> > drm-xe-next-fixes-2026-06-17:
> > The following changes since commit 52d4ab1ca790a668cc8f2c27017138b1c467=
168c:
> >
>
> Rodrigo pointed out that I omitted the summary here...
>
> The changes we have are:
>
> - Set TTM beneficial order to 9 in Xe
> - Several error path cleanups
> - Fix TDR for unstarted jobs on kernel queues
> - Several TLB invalidation fixes related to suspending LR queues
> - Some small RAS fixes
> - Multi-queue suspend fix for LR queues
> - Revert inclusion of NVL_S firmware
>
> I also generated this PR using the following command, though I=E2=80=99m =
not sure it matters:
> dim pull-request drm-xe-next-fixes origin/master
>
> Rather than:
> dim pull-request drm-xe-next-fixes drm/drm-next
>
> Given these issues, please let me know if a regenerated PR would be prefe=
rred.

All good, I checked the changes and edited the commit msg to add the change=
log.

Dave.
