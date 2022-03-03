Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A3A4CC82F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 22:40:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66D4510EE35;
	Thu,  3 Mar 2022 21:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9962810EE0F
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 21:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646343629;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=xtbmEfHUQ1QhBdRYfxa2FFiLrPGe7Eovpy4drHSn/Dk=;
 b=VVlSmhxV20GbIkXUvc/S+hi8KpK1Fjdz9atcdPeZWZn0qSp3kfbqGRR6b+acIzcDm7VLzY
 ufM29BA3ZqeFxytSEtaoGgsnKJbOqN8EG4FJNTJDcro93LWuFAo4BeT7e/TZrhl7xuW6F8
 fM97MgCnE4wvTWOPBT/403udsr/YWS0=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-551-0kAJ8CZCPi-H10dZ3lJUYA-1; Thu, 03 Mar 2022 16:40:25 -0500
X-MC-Unique: 0kAJ8CZCPi-H10dZ3lJUYA-1
Received: by mail-qk1-f199.google.com with SMTP id
 a15-20020a05620a066f00b0060c66d84489so4159099qkh.19
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Mar 2022 13:40:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=xtbmEfHUQ1QhBdRYfxa2FFiLrPGe7Eovpy4drHSn/Dk=;
 b=S9D2l4nZUoDWNyUOwSiHMwI8b9/8WZ1cClSc+ZJ3LN2wRhRMEglLX3UirDXapWSj1U
 OxlE4eyHZ8mJwcD4JKHE8KvNpBq+I456ls5dQxTcIF/zX3+1uBzbJkTcrW070e757wRA
 hC9BHgNmUYnOFX8wzmwCqv/gvtCpw07o8Ntbv+6f1/Vjpodiz7/gvbPSeWO/6mg/2OX5
 zYy1PLP77jhYQgX9o3jLeISOdMnxF8G1Us6r0fpSOOg0NOAmpJv9LvDEhkvKbR1xB0xF
 mdaYUCVGFxEL/Xl5UF/8khaafrqKxlB47KI2fs5mhJ10yaI7V3x+npZ1fWzRgK48yldA
 45dQ==
X-Gm-Message-State: AOAM531h+25sAvG5c+Hje05Ivta3svbUSFrvjp9FcHsagSeGH2oglzOM
 cadznnJge58z8C53efiMZNQ/CEHcsG8W+o0m1a0xMEbMB+EBQk1bBuhmDKdGIkrtN526ohyfmyD
 /68EtFP54DNdGvYeCpJBG0sUjZJ6q
X-Received: by 2002:a05:622a:1344:b0:2df:e997:6681 with SMTP id
 w4-20020a05622a134400b002dfe9976681mr23905387qtk.206.1646343624511; 
 Thu, 03 Mar 2022 13:40:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyCA+yenE8eTjRZAZCZvGlnVr52EddV1dU7aim5O2e6OJbzh14S7YnLKVi7sNxTU2jKsuO0vg==
X-Received: by 2002:a05:622a:1344:b0:2df:e997:6681 with SMTP id
 w4-20020a05622a134400b002dfe9976681mr23905369qtk.206.1646343624164; 
 Thu, 03 Mar 2022 13:40:24 -0800 (PST)
Received: from [192.168.8.138] (pool-96-230-100-15.bstnma.fios.verizon.net.
 [96.230.100.15]) by smtp.gmail.com with ESMTPSA id
 y11-20020ac85f4b000000b002de4b0a015asm2331075qta.5.2022.03.03.13.40.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 13:40:23 -0800 (PST)
Message-ID: <80f0071bbfb744921b842c870ac6f2793c4816b6.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: events@lists.x.org, xorg-devel@lists.freedesktop.org, 
 wayland-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 mesa-dev@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 etnaviv@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 libre-soc-dev@lists.libre-soc.org
Date: Thu, 03 Mar 2022 16:40:21 -0500
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] 2022 X.Org Board of Directors Elections timeline
 extended, Request for nominations
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

We are seeking nominations for candidates for election to the X.org Foundation
Board of Directors. However, as we presently do not have enough nominations to
start the election - the decision has been made to extend the timeline by 2
weeks. Note this is a fairly regular part of the elections process.

The new deadline for nominations to the X.org Board of Directors is 23:59 UTC
on 20th March 2022.

The Board consists of directors elected from the membership.  Each year, an
election is held to bring the total number of directors to eight. The four
members receiving the highest vote totals will serve as directors for two year
terms.

The directors who received two year terms starting in 2021 were Lyude Paul,
Samuel Iglesias Gonsálvez, Manasi D Navare and Daniel Vetter. They will
continue to serve until their term ends in 2023. Current directors whose term
expires in 2022 are Emma Anholt, Keith Packard, Harry Wentland and Mark
Filion.

A director is expected to participate in the fortnightly IRC meeting to
discuss current business and to attend the annual meeting of the X.Org
Foundation, which will be held at a location determined in advance by the
Board of Directors.

A member may nominate themselves or any other member they feel is qualified.
Nominations should be sent to the Election Committee at elections at x.org.

Nominees shall be required to be current members of the X.Org Foundation, and
submit a personal statement of up to 200 words that will be provided to
prospective voters.  The collected statements, along with the statement of
contribution to the X.Org Foundation in the member's account page on
http://members.x.org, will be made available to all voters to help them make
their voting decisions.

Nominations, membership applications or renewals and completed personal
statements must be received no later than 23:59 UTC on 20th March 2022.

The slate of candidates will be published 28th March 2022 and candidate Q&A
will begin then. The deadline for Xorg membership applications and renewals is
31st March 2022.

Cheers,
   Lyude Paul, on behalf of the X.Org BoD

