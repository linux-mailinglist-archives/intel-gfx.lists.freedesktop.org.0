Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLcKDMA31WmP2wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 18:58:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 867E43B2232
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 18:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6152510E0CA;
	Tue,  7 Apr 2026 16:58:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="GaF3lgUn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A051010E0CA
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2026 16:58:35 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id
 5b1f17b1804b1-4852b81c73aso44375315e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2026 09:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1775581114; x=1776185914; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=fmcCtxYWfpV2aOT8zEzzeLqYjruiRjh+C4IjW9UZd78=;
 b=GaF3lgUnkVCp6RGr4gshjh3pZYjzr8WJVUD+Y/wS7EBYdnOtZysNFg8u2THtWurhJi
 MQDsMAZXPNVm+OF6PiqrP7WnlfP3mvVqWuzu0yXeqSUPrs8GpBxXKwkHGrrF8lVBWZik
 H0EpmGsSb6RtCe1pE111QOdujpX0urbsf/rYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775581114; x=1776185914;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fmcCtxYWfpV2aOT8zEzzeLqYjruiRjh+C4IjW9UZd78=;
 b=VgMowwtQyq9rr4Oy7mtz/ByT3DKVnCB0TP/5hl/14gLPRxECVpVPVyE8PF2ym4D0TJ
 mElsJbb6lVc4VAKohZegNHKO3UngoRzqJ2U3GYAu/yfOvcxSSxMYn8q4yMk9Frvaeh7g
 QH6r+nV9KB16bL3wFZF3GHfcT//xclvBpBy11dyd5+lRz6sd4gaVS2EBM+CCzicFOf2Q
 n4bwCFFmpyZY/XgNaDvF0Qh2bSo+zaGganHfSLlSy7zB37e18ZhT0uWmFFlhXvOqYxyK
 37y0B5iv/y+bKrYKdEf4jQdF9sczAQShL3kMpSUt4g/1WCPBYXq7Z+Gyyoa5FEBY39GU
 oVgA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUQi+yc0q0TcdjLbRJ4ntGuzdHl0AxNh3A3KcZk5utbHEZIKOBHtvaV+64jo5a4etkQbO6GdrFuRsI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxzRUc/X29LwpJUPtoquC02U43XxpE51JQK+uLee8smqqX7f4Tc
 3HfcCB8GWRi4DockfY8bdrhzk/0j3awSDzdktgD+eG8lyqJG8W81293s22tOVyMpLqw=
X-Gm-Gg: AeBDietJDpr1k6J27Z8Kp3IXM+B0/mMY9grJSehS68zzYv/cqvprUHZO/GvdeX75idY
 tkYvBM93Jzg/XC59DLqfoMuPbr1n4srhm/ulhQDTtuP8sPumwxN0JVD1gAXjyO98W6UNxotot8Z
 gTd6+FKSUCtt4ZKsVLR6kPqtx6a1cNRb3Q4/Qr2mUuXaraDqHl4n2wpajlr8e3WTXRXzTQhxHzh
 EWnzHL/WMmD6Ul/tMdW6ORfXfbzSKDq6D6SOFIj8rC+UJXjGhixSV1hFexRS5cVbZ4S3Nu7XvHS
 WwpJht8TNuLBCC7v42XaZWYlUw8fic/abQAm/iwXTe8X5Eyb52/gCgpaBiOL3cr42SSdFNIwXO4
 ONtKeldofgOHveMa/AdRuhJw3luvMKqmXUnv/mwOJR4GWdWbCFL5hyxf6LL0GXz3AaLrE6+kAnw
 6Dg0lenAymgZaMOqzHKvAUMLagXnR+SG0AWVU=
X-Received: by 2002:a05:600c:6089:b0:488:b241:2c5f with SMTP id
 5b1f17b1804b1-488b2412cadmr84974625e9.26.1775581113354; 
 Tue, 07 Apr 2026 09:58:33 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-488c556bfdfsm705575e9.8.2026.04.07.09.58.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2026 09:58:32 -0700 (PDT)
Date: Tue, 7 Apr 2026 18:58:30 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Dave Airlie <airlied@gmail.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Yassine Mounir <sosohero200@gmail.com>, g@web.codeaurora.org,
 gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 rodrigo.vivi@intel.com, security@kernel.org
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
Message-ID: <adU3tnnjDrj1MynZ@phenom.ffwll.local>
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
 <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
 <177557988645.129480.6094289548721099346@jlahtine-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <177557988645.129480.6094289548721099346@jlahtine-mobl>
X-Operating-System: Linux phenom 6.19.10+deb14-amd64 
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:airlied@gmail.com,m:torvalds@linuxfoundation.org,m:ville.syrjala@linux.intel.com,m:sosohero200@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,m:security@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[ffwll.ch];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[simona.vetter@ffwll.ch,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,linuxfoundation.org,linux.intel.com,web.codeaurora.org,lists.freedesktop.org,intel.com,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[simona.vetter@ffwll.ch,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,ffwll.ch:dkim,ffwll.ch:url]
X-Rspamd-Queue-Id: 867E43B2232
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 07:38:06PM +0300, Joonas Lahtinen wrote:
> Quoting Linus Torvalds (2026-04-04 01:12:17)
> > On Thu, 26 Mar 2026 at 05:32, Ville Syrjälä
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > Ignoring the AI slop aspect, I did have a quick look at the code a bit
> > > and noticed this:
> > >
> > > eb_lookup_vma() {
> > >         ...
> > >         rcu_read_lock();
> > >         vma = radix_tree_lookup(...);
> > >         if (likely(vma && vma->vm == vm))
> > >                 vma = i915_vma_tryget(vma);
> > >         rcu_read_unlock();
> > >         if (likely(vma))
> > >                 return vma;
> > >         ...
> > > }
> > >
> > > So if we somehow get a vma with the wrong vm there then we
> > > return the vma without grabbing a reference to it.
> > 
> > The fix for this seems to have gotten lost and wasn't in the recent
> > drm pull request.
> > 
> > I can just fix it up by myself, but it would be good to have proper
> > authorship and sign-off. Please?
> 
> Will include a proper patch in next -fixes PR.
> 
> The big question is, what stance to take on a value of AI generated low
> quality reproducer code which was accompanied by wall of AI slop which
> caused hours of time get wasted on debunking the hallucinations?
> 
> If the reproducer was sent verbatim with "AI claims this code crashes on
> downstream kernel X-Y.Z on my machine W, I have no idea why because
> it's AI generated." that would have been one thing.
> 
> However no proof has been even provided that it crashes on any kernel,
> yet alone mainline. All there is AI ramblings claiming hard system lockup
> while describing mouse cursor to be moving doesn't add up. Just like nothing
> about the report adds up (like suddenly claiming the problem to equally
> reproduce inside QEMU where i915 is not loaded).
> 
> "Reported-by" seems overly generous for causing hours to be wasted
> debunking false AI hallucinated claims? At most it lead to manual
> reviews where Ville finds a potential bug which may or may not be
> connected in any way to the claimed crash which may not have ever
> happened.
> 
> Should there be any tags applied? "Badly-reported-by"?

[Joonas pinged me on irc whether there's a drm stake on this but then
immediately dropped, so here we go.]

I wouldn't use this tag, feels like insulting people on the record for no
gain.

That aside I'd go with Linus' general take in his reply to credit any bug
reports as you see fit. Personally maybe Reported-by: Ville (if someone
else types up the patch) and References: for the overall thread for
context. There's no requirement to thank people who just wasted your time.

Cheers, Sima
-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch
