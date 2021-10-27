Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CB943CEE1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 18:43:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C21416E8CF;
	Wed, 27 Oct 2021 16:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2293A6E8D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 16:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635353005;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=c30nzXdREXt5rxXNkNX564x/1HSSK2aOOmV7DPqFhVA=;
 b=IjkxK+mXjQdWvjqLuU3RK/BRCSWJTXHn7zakD7K8Mt7IJ6kXLVWEytcSsw/dSE5CZtUrH1
 xwNnnGUvft/sw1m3PoEwpxd5KV1+E9/QyOcUVZoJTNqdt4HzTT6XAubt8If1HmVTYPTNAv
 DIsQrvqpoxGejRRWPEOHX1Ge88XWuA4=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-RAqQSh3nOZSZ71dPyed6Jw-1; Wed, 27 Oct 2021 12:43:17 -0400
X-MC-Unique: RAqQSh3nOZSZ71dPyed6Jw-1
Received: by mail-qt1-f199.google.com with SMTP id
 90-20020aed3163000000b002a6bd958077so2313068qtg.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 09:43:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=c30nzXdREXt5rxXNkNX564x/1HSSK2aOOmV7DPqFhVA=;
 b=yR0ftKW+f0SCfrPXq4KcEbCpsxxn5OtdXeLbhk6Nqcc+UhvqJyhCNuZb7dFI0scVy9
 5zb8dTb2IbEwua/rL6Wcodbc0A9nos0cloGV2ss31EkceurdB2TDjGu7NmS9BM0tLw+L
 XhZ9TIRiDhdug/6m5yXt6CtGXloSmxqwspKvoKwi6f1+w9Zd16qT/kBy4a5vzAq3ALbK
 03iX90A9rCHYslaaUv3rpnnWyHoRgRJ3NchcytRQoZRrsDySRauKbesVYEAbCpdZsWOT
 2jB/UnVKKLHyDM/xUrZ3OnKoVAQVMif3uyBfW83/wdPk4CFBWFVEbVm8Ng+W8XbrVwsr
 QP6A==
X-Gm-Message-State: AOAM532E38jqMhyv9Bu/PmA3QswrNuQpEw86nKYM0oxKZlgSh0P5aAvw
 Kk0WE2Jvs4kwfyrc/e/488Zsfq8HKe3NOUK+4LyWD+dtPg76/PGP41CGQJbgHn9g4+kfsvzRPMX
 ozaMfa0bZDN7EkDBdVIvtU1TMMCnF
X-Received: by 2002:a05:620a:4612:: with SMTP id
 br18mr24777849qkb.405.1635352997384; 
 Wed, 27 Oct 2021 09:43:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyB0wg1Dg9vs+mnsyvRxjN8++03dorSM8Tx9qUizN6upDs9ZEWOzdWPdgO5vcm+7na5URcMHQ==
X-Received: by 2002:a05:620a:4612:: with SMTP id
 br18mr24777828qkb.405.1635352997187; 
 Wed, 27 Oct 2021 09:43:17 -0700 (PDT)
Received: from [192.168.8.138] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id t22sm258683qtw.21.2021.10.27.09.43.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 09:43:16 -0700 (PDT)
Message-ID: <9f41102728115cf7683d148d249f937bddaf8372.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Maxime Ripard <maxime@cerno.tech>
Cc: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Sean Paul <sean@poorly.run>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Date: Wed, 27 Oct 2021 12:43:15 -0400
In-Reply-To: <20211027071816.64ntgyzdvnbotabb@gilmour>
References: <e0e3cb4ea8b6f2d08e8d07a2ad3b25a2dca4570e.camel@redhat.com>
 <20211027071816.64ntgyzdvnbotabb@gilmour>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PULL] topic/amdgpu-dp2.0-mst
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

This was for airlied to pull into drm-next

On Wed, 2021-10-27 at 09:18 +0200, Maxime Ripard wrote:
> Hi Lyude,
> 
> On Mon, Oct 25, 2021 at 09:30:14PM -0400, Lyude Paul wrote:
> > topic/amdgpu-dp2.0-mst-2021-10-25:
> > UAPI Changes:
> > Nope!
> > 
> > Cross-subsystem Changes:
> > drm_dp_update_payload_part1() takes a new argument for specifying what the
> > VCPI slot start is
> > 
> > Core Changes:
> > Make the DP MST helpers aware of the current starting VCPI slot/VCPI total
> > slot count...
> > 
> > Driver Changes:
> > ...and then add support for taking advantage of this for 128b/132b links
> > on DP
> > 2.0 for amdgpu
> 
> It's not really clear to me what branch it should be pulled in? is it
> for drm-misc-next?
> 
> Thanks!
> Maxime

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

