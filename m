Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DwuFvgy1Wly2QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 18:38:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FA33B1E85
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 18:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035E610E466;
	Tue,  7 Apr 2026 16:38:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JV6T8aAD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C7BC10E466
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2026 16:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775579894; x=1807115894;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=mD41rzbw9sLE6KpIzSdJeKGraEs0Kska6QG2cT9hC1c=;
 b=JV6T8aADnwzoL1xPNSHfgfZkAgcR5SnmxwvrUx2IrKPpdhFPeGqaiD3s
 ZrlWhmgsqnjbR80cvngndtM6rp/HXoRJpBVs9FiM/6iB9pPwFSFV5GaHE
 qhh/25fVcJ49v6cZ/gcrVI1Y7lYlMY6ZqNDfLh9uUrzcqW8GkNm/lYbwB
 3u7WDQ8ywbjHHVwIpgrv11aqKzr1MPxA/QtfZfC5R23lFTpwmKaIBrGZb
 QtWuzr2EBqP4LuWHMvuRImKP8A0bciU9f3gq/1z+3R6dStICLm7JtqLw6
 gdVuGr8KxE6qauZSkRRfHG11wwaT1c0XtwfMsSPcaBZCyjNiAbqaIamb5 w==;
X-CSE-ConnectionGUID: 1nq8kReRSfCjEVVWVzeuGw==
X-CSE-MsgGUID: v6RwLyMPTHapIFnSRKChNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80406058"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="80406058"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 09:38:13 -0700
X-CSE-ConnectionGUID: AkMESd+IT/mjw/ZHfmdC3g==
X-CSE-MsgGUID: ItfS/zVITvuqKxqbHl+q6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="228133239"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 09:38:10 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
 <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Yassine Mounir <sosohero200@gmail.com>, g@web.codeaurora.org,
 gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org,
 rodrigo.vivi@intel.com, security@kernel.org
To: Dave Airlie <airlied@gmail.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 07 Apr 2026 19:38:06 +0300
Message-ID: <177557988645.129480.6094289548721099346@jlahtine-mobl>
User-Agent: alot/0.12.dev7+g16b50e5f
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sosohero200@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,m:security@kernel.org,m:airlied@gmail.com,m:torvalds@linuxfoundation.org,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linuxfoundation.org,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,web.codeaurora.org,linuxfoundation.org,lists.freedesktop.org,intel.com,kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B8FA33B1E85
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Quoting Linus Torvalds (2026-04-04 01:12:17)
> On Thu, 26 Mar 2026 at 05:32, Ville Syrj=C3=A4l=C3=A4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > Ignoring the AI slop aspect, I did have a quick look at the code a bit
> > and noticed this:
> >
> > eb_lookup_vma() {
> >         ...
> >         rcu_read_lock();
> >         vma =3D radix_tree_lookup(...);
> >         if (likely(vma && vma->vm =3D=3D vm))
> >                 vma =3D i915_vma_tryget(vma);
> >         rcu_read_unlock();
> >         if (likely(vma))
> >                 return vma;
> >         ...
> > }
> >
> > So if we somehow get a vma with the wrong vm there then we
> > return the vma without grabbing a reference to it.
>=20
> The fix for this seems to have gotten lost and wasn't in the recent
> drm pull request.
>=20
> I can just fix it up by myself, but it would be good to have proper
> authorship and sign-off. Please?

Will include a proper patch in next -fixes PR.

The big question is, what stance to take on a value of AI generated low
quality reproducer code which was accompanied by wall of AI slop which
caused hours of time get wasted on debunking the hallucinations?

If the reproducer was sent verbatim with "AI claims this code crashes on
downstream kernel X-Y.Z on my machine W, I have no idea why because
it's AI generated." that would have been one thing.

However no proof has been even provided that it crashes on any kernel,
yet alone mainline. All there is AI ramblings claiming hard system lockup
while describing mouse cursor to be moving doesn't add up. Just like nothing
about the report adds up (like suddenly claiming the problem to equally
reproduce inside QEMU where i915 is not loaded).

"Reported-by" seems overly generous for causing hours to be wasted
debunking false AI hallucinated claims? At most it lead to manual
reviews where Ville finds a potential bug which may or may not be
connected in any way to the claimed crash which may not have ever
happened.

Should there be any tags applied? "Badly-reported-by"?

Regards, Joonas

>=20
>              Linus
