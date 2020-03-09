Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F82F17EA02
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 21:27:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D05136E478;
	Mon,  9 Mar 2020 20:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 225246E47B
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 20:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583785665;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4OsqZRBJnfSwqjz8mSam3+/g3YANUHel3btfFdnOeaQ=;
 b=C95NAsYi+KJv0GuRHW26yJvm5/0qEnnHODKi60oQJ3PekZjgpawTYP/6BCc9X6QLvIw8C/
 iJfWgBtjkoiqWMKCUZL8Tr6eVpPlZ/HgXf4/HVZLwXb5sI1m16Jx2iA5KOKd4cV0k4cOa8
 vONytgWyLSJjdfcIZghi3Vlj80kribk=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-7-P5EDf75iNOy3i9ntrhXMZA-1; Mon, 09 Mar 2020 16:27:41 -0400
X-MC-Unique: P5EDf75iNOy3i9ntrhXMZA-1
Received: by mail-qt1-f199.google.com with SMTP id g6so7603528qtp.20
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Mar 2020 13:27:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=4OsqZRBJnfSwqjz8mSam3+/g3YANUHel3btfFdnOeaQ=;
 b=sVpSIgyzgzxN3hLpXRAXOI8nnJeuntuljC60y2Zmc7F13XIjpH2ZP4KgAVt2dtOQKZ
 j1dSN+HPSFR48fykFCtWnvcFJmeTtut1qv4xV5l48V7CN+Pbr+Z05lguvRJBLAEO7SAs
 vRVxivqxF/HsPL8greIG+PAyqj+gKol4e9uunvl8gAhaafgDrz7hrTnxsBxfuP/SA6Vt
 PENMV4T+qUD+wWEKez3T08vHmqOFabfUQjmYm1dUtN40+xt3f38ZrWtDuE0Abx4zDCh9
 DDjQwc80aurEDXHt30gwPmLr9z0d4lQF9qe3S/dAgK84FqNAMLrJ3992nSjhqzJ3Nxtb
 uRcA==
X-Gm-Message-State: ANhLgQ3HPsYeVJfyHzu634m+KRmb6Dt+Vov3tFPZQMAPrfQrXo/BsUZZ
 nDHy+HpfYQ/B5HSSD/qwfLqSx1YuSgVv1nAhaRwBBcIr59vib+wW6qZd+sZ/mi60dCC2QQxcMZu
 I8/lZCwAEZX1PhT1GuamdGVPBKE/G
X-Received: by 2002:a05:6214:1427:: with SMTP id
 o7mr7696852qvx.167.1583785660775; 
 Mon, 09 Mar 2020 13:27:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv9kWwtb15Kg/U4mlD0qpDqcRZ3Yf72s23Ve5V0jlZAMb9WId9JHm1Eu+Jk+5TeW3cLuOObYA==
X-Received: by 2002:a05:6214:1427:: with SMTP id
 o7mr7696830qvx.167.1583785660525; 
 Mon, 09 Mar 2020 13:27:40 -0700 (PDT)
Received: from dhcp-10-20-1-196.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id o14sm3219534qtq.12.2020.03.09.13.27.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 13:27:39 -0700 (PDT)
Message-ID: <9e5fcbcd3f7a4d74b9941a21e0407c6eef79e920.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, 
 emil.velikov@collabora.com, jani.nikula@linux.intel.com, daniel@ffwll.ch, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Date: Mon, 09 Mar 2020 16:27:39 -0400
In-Reply-To: <20200307083023.76498-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200307083023.76498-1-pankaj.laxminarayan.bharadiya@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 0/5] Cleanup drm_dp_mst_topology_cbs hooks
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

On Sat, 2020-03-07 at 14:00 +0530, Pankaj Bharadiya wrote:
> drm_dp_mst_topology_mgr_cbs.register_connector callbacks are identical
> amongst every driver and don't do anything other than calling
> drm_connector_register().
> drm_dp_mst_topology_mgr_cbs.destroy_connector callbacks are identical
> amongst every driver and don't do anything other than cleaning up the
> connector((drm_connector_unregister()/drm_connector_put())) except for
> amdgpu_dm driver where some amdgpu_dm specific code in there.

Yeah that amdgpu destruction code kinda stinks a little bit :\. I think we can
just drop some of it and move the rest into their connector destruction
callbacks.

For the whole series:
	Reviewed-by: Lyude Paul <lyude@redhat.com>

I'm going to go ahead and let the maintainers know I'm going to push this
(since there's some minor changes here outside of drm-misc), and push this to
drm-misc-next. Then I'll go and write some patches to remove the leftover amd
bits and drop the callback for good (I'll cc it to you as well).

> 
> This series aims to cleaup these drm_dp_mst_topology_mgr_cbs hooks. 
> 
> Pankaj Bharadiya (5):
>   drm: Register connector instead of calling register_connector callback
>   drm: Remove dp mst register connector callbacks
>   drm/dp_mst: Remove register_connector callback
>   drm: Add drm_dp_destroy_connector helper and use it
>   drm: Remove drm dp mst destroy_connector callbacks
> 
>  .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  6 ------
>  drivers/gpu/drm/drm_dp_mst_topology.c         | 18 +++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 16 ----------------
>  drivers/gpu/drm/nouveau/dispnv50/disp.c       | 19 -------------------
>  drivers/gpu/drm/radeon/radeon_dp_mst.c        | 17 -----------------
>  include/drm/drm_dp_mst_helper.h               |  1 -
>  6 files changed, 15 insertions(+), 62 deletions(-)
> 
-- 
Cheers,
	Lyude Paul (she/her)
	Associate Software Engineer at Red Hat

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
