Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FFD65F333
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 18:54:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13C510E7E5;
	Thu,  5 Jan 2023 17:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com
 [IPv6:2607:f8b0:4864:20::631])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F3A910E7E9
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 17:54:04 +0000 (UTC)
Received: by mail-pl1-x631.google.com with SMTP id jn22so40051845plb.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Jan 2023 09:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Cki/PxKhTRHGR7jPZFPgJ3ufeXyR+R3NkPyw2otVHc0=;
 b=KzlujmWKGL0ktFX9aJ5d0aKf9Uir0j84bC0WPArdD5JHfVndwQw8Xt2ZHC40eEAx30
 F+1oI5N3nlSVD3eH1bahWIW2Za0bGawdPCVoi4oraC9F/rABXkMrs3EVsmyK2TFt+rG3
 UII9yxA6hImSc+vTi8yxfFJ1E1I6cIEwKyeSA1y6fAynwXWdMMbaCxtU9AZnfwDYoupr
 gTPHLmw6A+sYoG78XpIi1Bi3N1vUKdCGJ2VnmFgOg0/Au9SW239r5VKLf7o80DSranUf
 l+XNbSzqj3WptvkvdLk59PH1gEzXyRdyq6df7Hy516jyiLi+LNo5fmWN5/NHxpJWYbnT
 XChw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Cki/PxKhTRHGR7jPZFPgJ3ufeXyR+R3NkPyw2otVHc0=;
 b=ep2vZ6YJc53wiT3YzMAXePtLtum7q1LBc//5TTOtEc1C6Mc43UKi2Fem+n0AMD59yC
 yd6tGKOYvkhKDZmbndn+ZzfOYA/5M0/Y1jXqglf1qihsRPTbNcYOF3uKRGWQ+XC/Pdc/
 DRqNkk3aEDD30Aimvy/A3pME2sNQ9pur2+oiVYM9VG5ZNmDweoZ7ROdWv+alhCanI1Hf
 VwL4OueUN4Hk6/+70r+jWLKa81hsAxP7vUd7SLC69oLNbCWiC9Rp3utgKb2K45ez2aMV
 n9DZXnAwjAf02vz24x0xPuEsKy7H+nxS/h//fxSSBG+RZJQlurnQeaypzMhmN1NOsEye
 dlNw==
X-Gm-Message-State: AFqh2ko5xq3/fH82I2aJU7UhDbeMziFMC4WWxd8y4mA8JJf9Vuk/Txqq
 FgCN/9DfuckEojIItSoIDC7H4w==
X-Google-Smtp-Source: AMrXdXv19Ic4XIQPBb0kJZbG2hoj1COypIyVT70px3soIaHgUUwGTy4rSjVuAulrdSg44dUGw51wBw==
X-Received: by 2002:a17:902:f1c5:b0:189:3a04:4466 with SMTP id
 e5-20020a170902f1c500b001893a044466mr289415plc.2.1672941243498; 
 Thu, 05 Jan 2023 09:54:03 -0800 (PST)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 w16-20020a1709026f1000b00192dcd1b0e5sm5676409plk.265.2023.01.05.09.54.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Jan 2023 09:54:03 -0800 (PST)
Date: Thu, 5 Jan 2023 17:53:59 +0000
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Message-ID: <Y7cOt5R/wK2Y1fg5@google.com>
References: <20221223005739.1295925-1-seanjc@google.com>
 <20221223005739.1295925-27-seanjc@google.com>
 <Y6v287BFez8tU43e@yzhao56-desk.sh.intel.com>
 <Y7SbxcdYa7LKR43f@google.com>
 <Y7ZAEsQbNbWKngGi@yzhao56-desk.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y7ZAEsQbNbWKngGi@yzhao56-desk.sh.intel.com>
Subject: Re: [Intel-gfx] [PATCH 26/27] KVM: x86/mmu: Add page-track API to
 query if a gfn is valid
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
Cc: kvm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Ben Gardon <bgardon@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 05, 2023, Yan Zhao wrote:
> On Tue, Jan 03, 2023 at 09:19:01PM +0000, Sean Christopherson wrote:
> > On Wed, Dec 28, 2022, Yan Zhao wrote:
> > > On Fri, Dec 23, 2022 at 12:57:38AM +0000, Sean Christopherson wrote:
> > > > +bool kvm_page_track_is_valid_gfn(struct kvm *kvm, gfn_t gfn)
> > > > +{
> > > > +	bool ret;
> > > > +	int idx;
> > > > +
> > > > +	idx = srcu_read_lock(&kvm->srcu);
> > > > +	ret = kvm_is_visible_gfn(kvm, gfn);
> > > > +	srcu_read_unlock(&kvm->srcu, idx);
> > > > +
> > > > +	return ret;
> > > > +}
> > > > +EXPORT_SYMBOL_GPL(kvm_page_track_is_valid_gfn);
> > > This implementation is only to check whether a GFN is within a visible
> > > kvm memslot. So, why this helper function is named kvm_page_track_xxx()?
> > > Don't think it's anything related to page track, and not all of its callers
> > > in KVMGT are for page tracking.
> > 
> > KVMGT is the only user of kvm_page_track_is_valid_gfn().  kvm_is_visible_gfn()
> > has other users, just not in x86.  And long term, my goal is to allow building
> > KVM x86 without any exports.  Killing off KVM's "internal" (for vendor modules)
> > exports for select Kconfigs is easy enough, add adding a dedicated page-track API
> > solves the KVMGT angle.
> Understand!
> But personally, I don't like merging this API into page-track API as
> it obviously has nothing to do with page-track stuffs, and KVMGT also calls it for
> non-page-track purpuse.

100% agreed, but as discussed in the other patch[*], IMO the real issue is that
KVMGT is abusing KVM APIs to check the validity of GFNs that are ultimately mapped
via VFIO.  Once that issue is fixed, kvm_page_track_is_valid_gfn() can go away
entirely.  I view this as a short/medium term hack-a-fix to limit and encapsulate
KVM's API surface that is "needed" by KVMGT.

[*] https://lore.kernel.org/all/Y7cLkLUMCy+XLRwm@google.com
