Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7622731B5
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 20:13:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B746E51A;
	Mon, 21 Sep 2020 18:13:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FEA26E519
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 18:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1600712003;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8F5wpeF1GBgsrB1xCZMnCrLJFZZfmfwKArOQA+2WnqI=;
 b=biJYtNK7NI6DvPVu/K2eglfCQfOOJ29XDij8dJp4/U2F6e4n3+GJ0EUqOD9Npk+8ITw14Z
 ZixpAT0EKXBCWnHK/1zX4q/cgydtWCWeoAjLEMKEsro50YRULLSbyxZ5qrXaSGws2i1cX3
 NQN01gX/HZadObERKhszRra3eavAUYg=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-xArZfMv3PhyC-9reC544Ww-1; Mon, 21 Sep 2020 14:13:21 -0400
X-MC-Unique: xArZfMv3PhyC-9reC544Ww-1
Received: by mail-qv1-f70.google.com with SMTP id w8so7485689qvt.18
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 11:13:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=8F5wpeF1GBgsrB1xCZMnCrLJFZZfmfwKArOQA+2WnqI=;
 b=uQDAEAmjl9WB4Kaw3Njwk3RRMd+W4wxh29y0bm0b42OXAHLBkvUDpQiOMlCgYw4Kay
 LaQ+IM5gV46NW3qHHNsjIxj1HHTz9UIprKP86Z5VsAvhB2AEmKqsTr00pB33086CqO8U
 6J6aPe0MDoQ+Asx8omffJh+0dN2g7Ghcj2HtLTnsT1AMLriVBrb/3+NGq/2++ThYQ6Hr
 h9Rx//Lw6FiSvspwe1b1jW/Q4jv8ODwC3SZRh7Mevzh32G3Veq/6tQtV621lgiFftHF5
 rWDtCIjW85NZxA1Ql1aF6Bqoxc3UwG8AXPP8oHtA/2N3+mgZhewvQlDZXagj8n5DhZ74
 my6w==
X-Gm-Message-State: AOAM5309cm3edzmC4VUUS6wsVCMirsrj6P2WP4p1ZtQz5RtEV7QQEqPE
 c0NURPidldMIfP/I6EoKSgFVYKPB7n/coIicV6MKyKVMAehmfoRY1DhTzmrD7Eld9aXoLJjEvyK
 sa4nLjDNDQURGpNCOwnz0Wc1yBLFx
X-Received: by 2002:ad4:42a5:: with SMTP id e5mr1294632qvr.58.1600712001505;
 Mon, 21 Sep 2020 11:13:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw4HmD2czcEycYpzXGKM90KRmi9nizWQSnFZMEaNWx8kqZgIP1iydPcYOGb8uZXRLTrWbk4Pw==
X-Received: by 2002:ad4:42a5:: with SMTP id e5mr1294616qvr.58.1600712001308;
 Mon, 21 Sep 2020 11:13:21 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id l21sm9624117qkl.128.2020.09.21.11.13.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 11:13:20 -0700 (PDT)
Message-ID: <3df7f6ec13348537bec5e0736563616e9ed05c28.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Date: Mon, 21 Sep 2020 14:13:19 -0400
In-Reply-To: <87d0354bqi.fsf@intel.com>
References: <20200901123226.4177-1-jani.nikula@intel.com>
 <c4b9aa428ccfa90cb29845f622eba8923eeb2e38.camel@redhat.com>
 <87d0354bqi.fsf@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/dp: start using more of the extended
 receiver caps
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-09-01 at 21:01 +0300, Jani Nikula wrote:
> On Tue, 01 Sep 2020, Lyude Paul <lyude@redhat.com> wrote:
> > On Tue, 2020-09-01 at 15:32 +0300, Jani Nikula wrote:
> > > In the future, we'll be needing more of the extended receiver capability
> > > field starting at DPCD address 0x2200. (Specifically, we'll need main
> > > link channel coding cap for DP 2.0.) Start using it now to not miss out
> > > later on.
> > > 
> > > Cc: Lyude Paul <lyude@redhat.com>
> > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > > 
> > > ---
> > > 
> > > I guess this can be merged after the topic branch to drm-misc-next or
> > > so, but I'd prefer to have this fairly early on to catch any potential
> > > issues.
> > > ---
> > >  drivers/gpu/drm/drm_dp_helper.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/drm_dp_helper.c
> > > b/drivers/gpu/drm/drm_dp_helper.c
> > > index 1e7c638873c8..3a3c238452df 100644
> > > --- a/drivers/gpu/drm/drm_dp_helper.c
> > > +++ b/drivers/gpu/drm/drm_dp_helper.c
> > > @@ -436,7 +436,7 @@ static u8 drm_dp_downstream_port_count(const u8
> > > dpcd[DP_RECEIVER_CAP_SIZE])
> > >  static int drm_dp_read_extended_dpcd_caps(struct drm_dp_aux *aux,
> > >  					  u8 dpcd[DP_RECEIVER_CAP_SIZE])
> > >  {
> > > -	u8 dpcd_ext[6];
> > > +	u8 dpcd_ext[DP_RECEIVER_CAP_SIZE];
> > 
> > Not 100% sure this is right? It's not clear at first glance of the 2.0
> > spec, but
> > my assumption would be that on < DP2.0 devices that everything but those
> > first 6
> > bytes are zeroed out in the extended DPRX field. Since we memcpy()
> > dpcd_ext
> > using sizeof(dpcd_ext), we'd potentially end up zeroing out all of the
> > DPCD caps
> > that comes after those 6 bytes.
> 
> Re-reading stuff... AFAICT everything in 0x2200..0x220F should be
> valid. They should match what's in 0x0000..0x000F except for 0x0000,
> 0x0001, and 0x0005, for backwards compatibility.
> 
> Apparently there are no such backwards compatibility concerns with the
> other receiver cap fields then.
> 
> But it gives me an uneasy feeling that many places in the spec refer to
> 0x2200+ even though they should per spec be the same in 0x0000+.
> 
> I guess we can try without the change, and fix later if we hit issues.

I'm fine with the change if it doesn't break things btw - just as long as
we're making sure that we don't zero things out by accident
> 
> 
> BR,
> Jani.
> 
-- 
Cheers,
	Lyude Paul (she/her)
	Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
