Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 891AC510730
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 20:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00C4610E2C6;
	Tue, 26 Apr 2022 18:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC9910E255
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 18:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650998208;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=U7x3WHti8mB7zSssr6dU5T2fFBWQH7ax9JH4iLf8LkU=;
 b=d9odd6x1wzf73HOPYL+LjGvCy5TRQTwMNFXtI7TiJWkb2z+0740XtXKsww5enbon1NOxeF
 BeG1IYDTzNhyXmzTw+t6NMKFraaMmw1xYNzzvnOVQgpTc3twvCLZqelVa6nWwYVLUI0dgS
 Jw9Uy9J+ihQ3S93rr9oF7tHVSIqJsL4=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-323-t9BOiskkPVCZsp7kzMDphQ-1; Tue, 26 Apr 2022 14:36:47 -0400
X-MC-Unique: t9BOiskkPVCZsp7kzMDphQ-1
Received: by mail-qk1-f198.google.com with SMTP id
 u7-20020ae9d807000000b00680a8111ef6so12254536qkf.17
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 11:36:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=U7x3WHti8mB7zSssr6dU5T2fFBWQH7ax9JH4iLf8LkU=;
 b=TGISOCnomhJ9bbIokYaEFAS//VLZPaXWTH1q09JkzB3RIld+2EI+ZJv6ZDnbkjgg8T
 kmSx0R2+B7PKsXc/0erL77yweQ2qGpbQcpMV8vGUYJtclP9KPI3y4avKtmsNqZofldJu
 W0FVaKyJeNce2rNpCRxgAwGyMwETHB7nFSc175FNw396kN/7iHnmH7sE76oaHfWUn8sO
 Pa88PGe9JEJcKqcvQFwOoST0+2Ti+EezSEBKOOVICwiHtilaCuGMwVlhQPG7S14dhF66
 Y2WzlRe0Ljwd5dkNDUUt6hdKZZy5wECtPb/LWWhIT7ToxnvaDMFH3UAb6XX4ydPFGFwi
 EITA==
X-Gm-Message-State: AOAM53141a84fQYgczVfm4tL0ZZ8IKZIqr5FaPPtzHspaU+6UmYm7Hw7
 W6fEgCSUnuYxFeva8mwb9at7gLvt+GK86guKyj7XSB6DkKSzc7YIQLzNZnhZWO98Bc2qC6ZiAdR
 52+mIFWEgptDHSwnjk3yvkupUb2Hc
X-Received: by 2002:a05:620a:f98:b0:648:a980:5161 with SMTP id
 b24-20020a05620a0f9800b00648a9805161mr13975229qkn.545.1650998206525; 
 Tue, 26 Apr 2022 11:36:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxFlkV78mcoPFbdNEywIl8YhmnRu/TNzHWCRjxstF0LNzVzvVzweFee+/7HtJv0KoRQlwNbkA==
X-Received: by 2002:a05:620a:f98:b0:648:a980:5161 with SMTP id
 b24-20020a05620a0f9800b00648a9805161mr13975211qkn.545.1650998206290; 
 Tue, 26 Apr 2022 11:36:46 -0700 (PDT)
Received: from [192.168.8.138] (static-71-184-137-158.bstnma.ftas.verizon.net.
 [71.184.137.158]) by smtp.gmail.com with ESMTPSA id
 f39-20020a05622a1a2700b002f367d7a7a5sm4252542qtb.23.2022.04.26.11.36.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Apr 2022 11:36:45 -0700 (PDT)
Message-ID: <2be5f25b4212817ebc5e0435467848675063b45f.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: "events@lists.x.org" <events@lists.x.org>, 
 "xorg-devel@lists.freedesktop.org"
 <xorg-devel@lists.freedesktop.org>, wayland-devel@lists.freedesktop.org, 
 wayland-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, mesa-dev@lists.freedesktop.org, 
 mesa-dev@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org, etnaviv@lists.freedesktop.org, 
 etnaviv@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, libre-soc-dev@lists.libre-soc.org
Date: Tue, 26 Apr 2022 14:36:44 -0400
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] Requests For Proposals for hosting XDC 2023 are now open
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
Cc: board@foundation.x.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello everyone!

The X.org board is soliciting proposals to host XDC in 2023. Since
XDC 2022 is being held in North America this year, XDC 2023 is expected
to be in Europe. However, the board is open to other locations,
especially if there's an interesting co-location with another
conference.

If you're considering hosting XDC, we've assembled a wiki page with
what's generally expected and needed:

https://www.x.org/wiki/Events/RFP/

When submitting your proposal, please make sure to include at least the
key information about the potential location in question, possible
dates along with estimated costs. Proposals can be submitted to board
at foundation.x.org until the deadline of *September 1st, 2022*. 

Additionally, an quirk early heads-up to the board if you're
considering hosting would be appreciated, in case we need to adjust the
schedule a bit. Also, earlier is better since there generally will be a
bit of Q&A with organizers.

And if you just have some questions about what organizing XDC entails,
please feel free to chat with previous organizers, or someone from the
board.

Best regards,
	Lyude Paul
On behalf of X.org

