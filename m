Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F97A5847E0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 23:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 792AD11AF5D;
	Thu, 28 Jul 2022 21:55:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2474C11AF74
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 21:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1659045328;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RIWeWSIHbaSNSMAb2yWKIz7iDZYjMxUouhnVaDr6X20=;
 b=GW+C6vhwRYHb5vNYIf5VZ+3/G8ouWqiCUr4207rpYG2BvffaL/aPMHwfxxHOce/dc3PwM5
 /tBfsPQNoGAbS/M9iOMdRNAZF3dgbuh/v1uHTwuld9mrHbtIOxWiPBp2Jq8VxbZjrqIBAM
 wTol20ADCnwXYFSHVUCv0LkL6DEPSjE=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-646-wFTxh32xPcGk1ywiVaNxCg-1; Thu, 28 Jul 2022 17:55:27 -0400
X-MC-Unique: wFTxh32xPcGk1ywiVaNxCg-1
Received: by mail-qt1-f200.google.com with SMTP id
 a10-20020ac84d8a000000b0031ee6389b7eso1824937qtw.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 14:55:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=RIWeWSIHbaSNSMAb2yWKIz7iDZYjMxUouhnVaDr6X20=;
 b=i+2haCt1G7kyWIBV644wAfDWrp1fdNL1uQA1fw56wF6DVu2rj0MynFYT9n92XydU5c
 9nACOjV4J9gv7JqDWFL9okwbwKDqJBGyHDGa00Fx2sLa7M8BlhuQWWneyDBAnraWhvao
 0+UDBxxTbd8Iur4/Rl0svpASNb5YJdbJBCxQGUt7N5uNKhDJA0SBNoRUL1V5z9EU+HxK
 LtssywDZIcIh/hxCZSPP3dYJHx9EgrLGUy2qiEeKnNYM46qNf/L1Swhuu/BFZv5Bv31q
 05urmYZUb0VK47yTMnVStgRpxBlaKhfiEjx3gCzWskOZkNG2+hz3n73s3VzP73vVHzRC
 MNSg==
X-Gm-Message-State: ACgBeo35IDnTIdbiwc6MVTtJfK4ciUEGueEHg/CbaRIOZ6ebzDWSo4SU
 rHxWpuy5Yehuaso6LIw0yqq/CmGy+o265VULYspgLsQSGMW9Eq0520N/JHObxKiBEB6EIxluGdH
 GC3UPnZOidgVTJIt+vmeDeXqk2Nyd
X-Received: by 2002:a0c:dd8e:0:b0:474:28c1:e1ce with SMTP id
 v14-20020a0cdd8e000000b0047428c1e1cemr961750qvk.108.1659045326609; 
 Thu, 28 Jul 2022 14:55:26 -0700 (PDT)
X-Google-Smtp-Source: AA6agR5M+e3+QltkMzgg6R697JLzo9/vXryZlIizbzenoKnI77y4RBNg5Jr+sjBKxEhcd25fwDY8Xw==
X-Received: by 2002:a0c:dd8e:0:b0:474:28c1:e1ce with SMTP id
 v14-20020a0cdd8e000000b0047428c1e1cemr961734qvk.108.1659045326371; 
 Thu, 28 Jul 2022 14:55:26 -0700 (PDT)
Received: from [192.168.8.138] (pool-100-0-245-4.bstnma.fios.verizon.net.
 [100.0.245.4]) by smtp.gmail.com with ESMTPSA id
 t17-20020ac87611000000b003051f450049sm1129389qtq.8.2022.07.28.14.55.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jul 2022 14:55:25 -0700 (PDT)
Message-ID: <f48b1d3ac72fa50f04a148d00977a61dc78d283d.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Christoph Hellwig <hch@lst.de>, Jani Nikula
 <jani.nikula@linux.intel.com>,  Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ben Skeggs
 <bskeggs@redhat.com>, Karol Herbst <kherbst@redhat.com>
Date: Thu, 28 Jul 2022 17:55:23 -0400
In-Reply-To: <6988c4ad3e230b8d252a2edff190502a0b17f4f2.camel@redhat.com>
References: <20220711082614.GA29487@lst.de>
 <6988c4ad3e230b8d252a2edff190502a0b17f4f2.camel@redhat.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] susetting the remaining swioltb couplin in DRM
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
Cc: nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Actually, seems like I do have a question. I see that you mention that we
could stop passing use_dma_alloc=true to ttm_device_init() or use
dma_alloc_noncoherent(). I'm not an expert on this nouveau's mm, but after
skimming it seems like if we can simply check whether or not we need all
noncoherent allocations without getting is_swiotlb_active() involved - which
should be easy. Does this seem like a workable solution, or is there something
I'm missing here?

On Thu, 2022-07-28 at 17:17 -0400, Lyude Paul wrote:
> Hi! Sorry about the slow reply to this, been busy with a bunch of other
> pressing nouveau work lately.
> 
> Anyway, the steps look pretty simple here so I can see if I can write up a
> patch shortly :)
> 
> On Mon, 2022-07-11 at 10:26 +0200, Christoph Hellwig wrote:
> > Hi i915 and nouveau maintainers,
> > 
> > any chance I could get some help to remove the remaining direct
> > driver calls into swiotlb, namely swiotlb_max_segment and
> > is_swiotlb_active.  Either should not matter to a driver as they
> > should be written to the DMA API.
> > 
> > In the i915 case it seems like the driver should use
> > dma_alloc_noncontiguous and/or dma_alloc_noncoherent to allocate
> > DMAable memory instead of using alloc_page and the streaming
> > dma mapping helpers.
> > 
> > For the latter it seems like it should just stop passing
> > use_dma_alloc == true to ttm_device_init and/or that function
> > should switch to use dma_alloc_noncoherent.
> > 
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

