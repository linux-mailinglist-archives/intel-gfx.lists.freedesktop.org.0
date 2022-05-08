Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D3651EE4E
	for <lists+intel-gfx@lfdr.de>; Sun,  8 May 2022 16:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3D8810F57F;
	Sun,  8 May 2022 14:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBFA310F57F
 for <intel-gfx@lists.freedesktop.org>; Sun,  8 May 2022 14:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1652020719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2vd3NSd3JgaMgQX4g9MrIzVsxXUjPuBCRd7158kHL7Q=;
 b=HO9uNalLUX2bgXeN2Qa1hAc0ZzH5lKlafGn9W6yKaLaD0YA1JrNvTH2Ei7sbIqwZQelZjH
 XgftmOAKgU7MlUM50HvdRAYvJ+vlvIJTQSc4yx+e0U1DyQPXuMEFk5pWKA5LThIAE6th83
 n99n1sPgyrSLxIqb1qnxTCEJBBx8Lq0=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-655-Ut2yjsKMMIW87ou8xFU4VQ-1; Sun, 08 May 2022 10:38:35 -0400
X-MC-Unique: Ut2yjsKMMIW87ou8xFU4VQ-1
Received: by mail-ed1-f72.google.com with SMTP id
 h7-20020a056402094700b00425a52983dfso6871239edz.8
 for <intel-gfx@lists.freedesktop.org>; Sun, 08 May 2022 07:38:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:to
 :content-language:cc:from:subject:content-transfer-encoding;
 bh=2vd3NSd3JgaMgQX4g9MrIzVsxXUjPuBCRd7158kHL7Q=;
 b=HNUNaEwqnghQFC07X8Vu3AjyOVnEakfqqAxhRqF3/QEZjcefCM9nCJWxkpcgq6XUE6
 fIep3zaw8Pi5xhylLYQieFCUlD+Ggn1W+UOmjNLD6aLh00FvuLmcZvIJ6uC2nLbDvST5
 NsFeCfIQjmaC/HuyfhzC0XMf80uz9JJabYPe3rF7Sg/xTu/ywy52/0qlIXLC6dX7HBbo
 I2zCx9OHiTTqS+AumIjN5duF6N+ucjonz4QiSF0fQdLiE1lIZwyQ4Ck0X8uc1Q8zU67r
 5yiG2lgUi/Uui0ZtNFsHJlyD3LInR9WHKHJxAVyqtdkXKdJckAIYNWn9bLR/ocSh/QhP
 bfpA==
X-Gm-Message-State: AOAM533ixu9qhL57JIsqEtWlhM3MWP6wWSx4DkPp3WGT7dq1jqovM+zw
 iQTY7WVyle2JEtnl4sXHUDZz2Rv3hdm/PTVpmnDqXAezWMQyYCUZXdA4OsexVnq8+pVWYLck6P0
 CmkSqkKN3PiHNgwFZZ6koHSwPqp/E
X-Received: by 2002:aa7:c445:0:b0:425:d509:2113 with SMTP id
 n5-20020aa7c445000000b00425d5092113mr13241292edr.12.1652020714660; 
 Sun, 08 May 2022 07:38:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyaSYNnu6BpNlx9fQIPCYO5HIR7MVKKudYeohWpTDYjvtfo48y/ZyBxHCv9jDHFhXa9lWGQOA==
X-Received: by 2002:aa7:c445:0:b0:425:d509:2113 with SMTP id
 n5-20020aa7c445000000b00425d5092113mr13241273edr.12.1652020714411; 
 Sun, 08 May 2022 07:38:34 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 b31-20020a509f22000000b0042617ba6397sm4948483edf.33.2022.05.08.07.38.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 May 2022 07:38:33 -0700 (PDT)
Message-ID: <1366349e-f96a-3f2c-3094-f5cd1a6fa31f@redhat.com>
Date: Sun, 8 May 2022 16:38:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] [5.18 regression] drm/i915 BYT rendering broken due to
 "Remove short-term pins from execbuf, v6"
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi All,

When running a 5.18-rc4 (and -rc5) kernel on a Chuwi Hi 8, which is
a Bay Trail based tablet with 2G RAM and a 1200x1920 DSI panel.
I noticed that gnome-shell was misrendering. Many UI elements were
missing (they were all black) and at the gdm login screen (which is
a special gnome-shell session) the screen often was entirely black
until I move the cursor around and then various things got
highlighted after which they sometimes stuck around and sometimes
they disappeared again after the highlight.

Since this problem does not happen with various 5.17.y kernels I
believe that this is a kernel regression in 5.18. I've bisected this
and the bisect points to:

commit b5cfe6f7a6e1 ("drm/i915: Remove short-term pins from execbuf, v6.")

from Maarten. This commit cleanly reverts on top of 5.18-rc5 and
I can confirm that 5.18-rc5 with b5cfe6f7a6e1 reverted fixes things.

I would be more then happy to test any possible fixes for this.

Regards,

Hans

