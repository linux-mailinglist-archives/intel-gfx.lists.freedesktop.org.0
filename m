Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDuPGEVEA2pV2QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 17:16:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E94F5236DE
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 17:16:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A08CC10E39F;
	Tue, 12 May 2026 15:16:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="YD5pn3OP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C4F310E4EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2026 15:16:17 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id
 4fb4d7f45d1cf-67e9b3037dcso8026434a12.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2026 08:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1778598976; x=1779203776;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ehW8NIZ95zVpPEuSxrNan65JxyLG2SeDMLVmVAp6lJI=;
 b=YD5pn3OPmDuXvIPF2/aISS4KjNalyc8mMQAvXzkjn8pyw5rNocOL2PALG+KTup0ZgS
 FqEU/9iiCeNic96Ga4fB6jhbC+u3so806bu3+4Yk/g3EDUa2hXQS3lQ01c9bMXqjtAbE
 IMkhpFFJJjK7rb2AwMuD7Jqfn6EIM5tz5DP+k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778598976; x=1779203776;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ehW8NIZ95zVpPEuSxrNan65JxyLG2SeDMLVmVAp6lJI=;
 b=ntZIBsRFKHIOPbqpvD2h7wmi8RR6DRStS3G5gXmsciWWO94SZJmKm4v2FzeXBteP/o
 IgExRifSUNSj8SaobIzQAbkELzbt3t6knFU78OTVhSjAsEil27XFBmdo5kGT9BDxk9ji
 CEx9d95ENs7Y2RQ0fjoHFiS+GIke4do6r/MSL3AfbXnAYH9WgOthiDDVDpP6kkKMva+S
 /5jAXdGdUmDloUiGfCf+NUEAp34MouRRRwoTbDazkcbwwGvaA0BpEbcIfmj5GDdVoNS9
 LsyLo7UHxmxR5x82RvFIwv5plHrYN2HLIYObfDDUENzD4r84H86U8nW9DW/ZccM/d53c
 6sYg==
X-Gm-Message-State: AOJu0YzXhsa3PhUi4lLwHfxHgiOwgohdJc0iIgKDuz4T1758Rkv8GtGN
 TyTWhSupKFUYWZoHwgqgw9IB1glMgaQcPTu3U75FiWQXctEMhHHdFlJ0IPRfd9QrXmRB5wgPGml
 YYNFgSBI=
X-Gm-Gg: Acq92OFPj1vdp5ppw2vBK0A+pZKC+216DwSZrHrYkd6/2+cVbF7TeK6EwhfIpNIWYBG
 O08xWmIU6JntT5w/6bMo1g+ZprlwXq74vV2ZTw0pznhGDjTJDRQbX65uZ12Y6Gt17JaG0FGxHCy
 pifTbOk29A0WlXLVT77wDNhnEPZAhFLm7CksZkR1EJhKvubfKClBb+s8vJrWWA2JPdIxbdX4Mr2
 ivdGrq6YRO1VY6s8aVibEVYdVQ/kiqI+fYwrbUUyBIHId0/pcqEb8o+ezAXvHdBSCQ7/uDHkQqT
 rSpwnDuC0HO95EABycdATylhX/d0gaKtUz+8hW/zeoB92aHu1y1bE2kcuTTuf85TAUfjExX0Bsw
 wij6cHgQCazPzzNDf7/lv2boQyjT8o7rddYcVypvs4jPVTUOFrQuJC/KO2BODggAgfacSBYB+hn
 dkkCK/ABfoA1T28kRN8ebBtSTLhCT3cwr3phFWzhXMXHrbg4+arMs2Iyuf/3evIIVb3CiFM38V
X-Received: by 2002:a17:907:c14:b0:bc6:7238:bd57 with SMTP id
 a640c23a62f3a-bcaa9f590a1mr1155799066b.7.1778598975723; 
 Tue, 12 May 2026 08:16:15 -0700 (PDT)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com.
 [209.85.208.43]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-bd31a586d59sm70065966b.13.2026.05.12.08.16.13
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 May 2026 08:16:15 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id
 4fb4d7f45d1cf-6804e24803bso3649133a12.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2026 08:16:13 -0700 (PDT)
X-Received: by 2002:a05:6402:324e:b0:676:6e7c:2e3b with SMTP id
 4fb4d7f45d1cf-67ef0686b85mr6869259a12.7.1778598973379; Tue, 12 May 2026
 08:16:13 -0700 (PDT)
MIME-Version: 1.0
References: <20260512085848.208008-1-joonas.lahtinen@linux.intel.com>
In-Reply-To: <20260512085848.208008-1-joonas.lahtinen@linux.intel.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 12 May 2026 08:15:56 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjKXGC=rK_pbRY9o2dkAumRakPGws0o2nfZgqbLS0vG6w@mail.gmail.com>
X-Gm-Features: AVHnY4L8EOu7cpXBXwHAgtDAE_pgj3xPVD-NmdTaVQAAt3aaqSk4wT9w9LB_eZQ
Message-ID: <CAHk-=wjKXGC=rK_pbRY9o2dkAumRakPGws0o2nfZgqbLS0vG6w@mail.gmail.com>
Subject: Re: [PATCH] Revert "i915: don't use a vma that didn't match the
 context VM"
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: "Intel graphics driver community testing & development"
 <intel-gfx@lists.freedesktop.org>, 
 Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>
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
X-Rspamd-Queue-Id: 9E94F5236DE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[linux-foundation.org];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:dri-devel@lists.freedesktop.org,m:ville.syrjala@linux.intel.com,m:tursulin@ursulin.net,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[torvalds@linux-foundation.org,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux-foundation.org:dkim]
X-Rspamd-Action: no action

On Tue, 12 May 2026 at 01:59, Joonas Lahtinen
<joonas.lahtinen@linux.intel.com> wrote:
>
> Commit is no-op as per discussion in the linked mail thread.
> The debated UAF scenario has not been possible in mainline kernel
> since 2021.

That was never the issue.

The issue was that the code used to do this:

                if (likely(vma && vma->vm == vm))
                        vma = i915_vma_tryget(vma);

and the vma->vm == vm condition was nonsensical - and if it ever was
false, that code was all horribly buggy.

So the "since 2021" is complete nonsense.

It's only since April this year - commit a13edf9b92fc ("drm/i915/gem:
Drop check for changed VM in EXECBUF") that the "else" side is now
pointless and the revert makes sense.

Stop writing misleading commit logs and excuses for bad code. There is
no "since 2021".

                Linus
