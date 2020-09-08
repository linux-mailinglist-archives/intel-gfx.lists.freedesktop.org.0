Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D32B260D77
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 10:22:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D2936E193;
	Tue,  8 Sep 2020 08:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 068EB6E198
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 08:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599553330;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wpXz+q9ud+AOPvV34hwZq6iLp3ZbJEEfJ7EHtLY6RqI=;
 b=QULxbftDwKoMNUOtm5ATCAJATAg/ZccdSaQ/2BrM8G99UfRmEPGi5h6RiqVE1P5baCK55u
 CczbMdr7tayIfkXF7Le3XZjtgPDYzjEfqGVjZLLUPezUcGOJk8uk9NRLsZQfC03ojRrAs7
 3xuAs8qfnZaeDsX3Fn7hZ7NBSK5pUKc=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-8CSqyJtEN-CyPTFx6f2raw-1; Tue, 08 Sep 2020 04:22:09 -0400
X-MC-Unique: 8CSqyJtEN-CyPTFx6f2raw-1
Received: by mail-ed1-f70.google.com with SMTP id x23so5903898eds.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Sep 2020 01:22:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wpXz+q9ud+AOPvV34hwZq6iLp3ZbJEEfJ7EHtLY6RqI=;
 b=Bk6TZj5t0nC9Hyjvz6yXtdXlN4mdmLPVLM4vR6QGi7GqjCzP0xHO+ene+Yeqjwcb70
 ngtILz7qDEQaVP47vlZxFymUIV7aRcf8zn9LWMe/6G94gHb55sTVkADgHot2E3m/Oxh3
 vtkS3BzaQjY2ar2EDKMgP6gSBmyqi+KCj+h+a0lsOwwTTlayGgnD+W7HvTRU1TAQrho1
 VkQ+5AeYR/PFIe2k3QV9dTDiKe+o2eisK8SgZHEvV8co0fadLfgKB9SbCF3L0tj3AdpZ
 5w1RXl7HrR8Kv5m3XElIJxT4n8JXT0ANPuD26QcDKJz+kxjG1Z4N6KIroeI4xRx5r0YZ
 chyg==
X-Gm-Message-State: AOAM532B0SSEXRprSor1UsmVscX6sfw1GMHKDRyQ3ljxgZ3kK9c2y+iO
 +E34PwCdX7fN976sdDJWPrpeded7Ke/l/Hc+JhwFM0Dv/QIpSq3F6aPhrmDLqSvCFl/1YGU5Ixb
 4jTGN0WLYWA61uB7yajVDSiLzxNzd
X-Received: by 2002:a17:906:6a50:: with SMTP id
 n16mr437644ejs.107.1599553328108; 
 Tue, 08 Sep 2020 01:22:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzSpUnMjZKtgUsJ+BcSD0zVfJfVDHsM/AFxTEzrhyw0d1WYhP2BgF9hcfPBn3/2GC9nlSOMMQ==
X-Received: by 2002:a17:906:6a50:: with SMTP id
 n16mr437624ejs.107.1599553327903; 
 Tue, 08 Sep 2020 01:22:07 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id i7sm7632087ejo.22.2020.09.08.01.22.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Sep 2020 01:22:07 -0700 (PDT)
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>
References: <20200908140022.67dd3801@canb.auug.org.au>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <db369f50-a3a0-2504-0628-ce5e6780d31b@redhat.com>
Date: Tue, 8 Sep 2020 10:22:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200908140022.67dd3801@canb.auug.org.au>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] linux-next: manual merge of the drm-intel tree with
 Linus' tree
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
Cc: Guru Das Srinagesh <gurus@codeaurora.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Stephen,

On 9/8/20 6:00 AM, Stephen Rothwell wrote:
> Hi all,
> 
> Today's linux-next merge of the drm-intel tree got a conflict in:
> 
>    drivers/gpu/drm/i915/display/intel_panel.c
> 
> between commit:
> 
>    f8bd54d21904 ("drm/i915: panel: Use atomic PWM API for devs with an external PWM controller")
> 
> from Linus' tree and commit:
> 
>    6b51e7d23aa8 ("drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller")

That doesn't sound correct, those are both commits from the drm-intel tree.

> from the drm-intel tree.
> 
> I fixed it up (I just used the latter)

Just taking the drivers/gpu/drm/i915/display/intel_panel.c contents of:

f8bd54d21904 ("drm/i915: panel: Use atomic PWM API for devs with an external PWM controller")

Is the right thing to do, the problem is a difference in a line which gets
removed in that commit.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
