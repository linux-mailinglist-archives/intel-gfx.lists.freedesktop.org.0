Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4AB4BEEF4
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 02:46:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3502710E32D;
	Tue, 22 Feb 2022 01:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB1E10E32D
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 01:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1645494366;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=96JzHwNa1B2QXjUWnZ374iz4+U14qI3CRmOmAH0GIUs=;
 b=fwuCgpMQ26Il8odr942/AQhazAi/LOUGoF4MzVMs6NTmlg3wCF5RXqnsVwK7YKyLe866b9
 BoWpayl3pVydmIaViGaR2QFrRZA0TIfXHB45KnNC1p5+nTbpqf3fWv/yJw4wRQ3acbU7OW
 3RmTPXNbN+Lzkr+fJXbKnCca41FkhuQ=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-454-A3TMIR7zP1-fgoF3xzHrdA-1; Mon, 21 Feb 2022 20:46:01 -0500
X-MC-Unique: A3TMIR7zP1-fgoF3xzHrdA-1
Received: by mail-qk1-f199.google.com with SMTP id
 q5-20020a05620a0d8500b004738c1b48beso16131248qkl.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 17:46:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:date:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=96JzHwNa1B2QXjUWnZ374iz4+U14qI3CRmOmAH0GIUs=;
 b=brZI4TM3Ox2xS1L0AKWwy0a0pBwENgMkXOaNKFWEOx09XsZqWy7yoYH0sA9/zK8P2O
 zP60ELOeI+GJHorA3E++5SbgDWlSwu1hQE4WkM1GT1MTcMZe8BHgIwC7c24EELHdGpzs
 dJwYwLHUa6qAO38/Uqgajr4FmbP6vUOfAxrGy+mvOOblk5+mukEfqH53h+yL1UebpBQQ
 fXvK5MWoVxjQTMYVLyURScCV4HGL2V8Q3vXmvN8SoYG6NEc+AofeWp6J8TGCOyb88l/j
 g4j1DBtohQ1lJdcKvohG7yr0vDUqEOx7s94DvERLYz4vyU7sOWPohksAsTsmI47dBvb6
 wzqw==
X-Gm-Message-State: AOAM532b5IuSlzSO5H1bTuroSg6DAvZVK101Bo9X22cKO5T80Y6exnfD
 Uaa/1ShyWgR0ew+d0DVFZO46PC2uLVMosa5X7uzh4WaXCrszl/ahv0qAE26DXsGrtfT6MaFt972
 fqrcLeaIRbL9lHJsDWD0WRDJgfItw
X-Received: by 2002:a0c:bec2:0:b0:42d:7a97:7c50 with SMTP id
 f2-20020a0cbec2000000b0042d7a977c50mr17596028qvj.64.1645494360783; 
 Mon, 21 Feb 2022 17:46:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyRyX/nST1Psi3yWzhSr7BZIQG7ecyOcllTfLzjLqbPHMXIvAV7C+vXZhS0bg1zhOmNbnqosg==
X-Received: by 2002:a0c:bec2:0:b0:42d:7a97:7c50 with SMTP id
 f2-20020a0cbec2000000b0042d7a977c50mr17596017qvj.64.1645494360574; 
 Mon, 21 Feb 2022 17:46:00 -0800 (PST)
Received: from [192.168.8.138] (pool-96-230-100-15.bstnma.fios.verizon.net.
 [96.230.100.15])
 by smtp.gmail.com with ESMTPSA id j128sm6512810qkd.61.2022.02.21.17.45.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Feb 2022 17:46:00 -0800 (PST)
Message-ID: <e93170406e5ea46e95f44d4e33f0c86a78c0623a.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: events@lists.x.org, xorg-devel@lists.freedesktop.org, 
 wayland-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 mesa-dev@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 etnaviv@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 libre-soc-dev@lists.libre-soc.org
Date: Mon, 21 Feb 2022 20:45:58 -0500
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.3 (3.42.3-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] 2022 X.Org Board of Directors Elections Nomination
 period is NOW
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

We are seeking nominations for candidates for election to the X.Org Foundation
Board of Directors. All X.Org Foundation members are eligible for election to
the board.

Nominations for the 2022 election are now open and will remain open until
23:59 UTC on 06 March 2022.

The Board consists of directors elected from the membership. Each year, an
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
prospective voters. The collected statements, along with the statement of
contribution to the X.Org Foundation in the member's account page on
http://members.x.org, will be made available to all voters to help them make
their voting decisions.

Nominations, membership applications or renewals and completed personal
statements must be received no later than 23:59 UTC on 6th March 2022.

The slate of candidates will be published 14 March 2022 and candidate Q&A will
begin then. The deadline for Xorg membership applications and renewals is 17
March 2022.

Cheers, Lyude Paul, on behalf of the X.Org BoD


