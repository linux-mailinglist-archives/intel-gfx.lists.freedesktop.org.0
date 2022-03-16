Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 744DB4DB904
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 20:48:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 685DE10EA40;
	Wed, 16 Mar 2022 19:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 967D110EA2F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 19:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1647460062;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=J0oI+0ISdRle63jGaS9/UHYnEMzVjtXKfWa9O2AXWGk=;
 b=KFn8d7GmTGQYetMlJ0WFIlMQndVNyZwwG1/7U6IXutq0aE5/QkBI8jyI+YlMT352rZMmXy
 v6snEBQhs+awhfiQqxq+VM4XCBbIU5jcpmlRqHmuY5Xl44asr3xTOpLEuPr/JlkusQi2ZK
 gF0N2GBEJbyv/MC7uaaBp5P7P5BRDAU=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-644-A0dQwdX7PSOpgcCC0zr9Jw-1; Wed, 16 Mar 2022 15:47:39 -0400
X-MC-Unique: A0dQwdX7PSOpgcCC0zr9Jw-1
Received: by mail-qv1-f71.google.com with SMTP id
 z2-20020a056214060200b00440d1bc7815so2260817qvw.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 12:47:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:date:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=J0oI+0ISdRle63jGaS9/UHYnEMzVjtXKfWa9O2AXWGk=;
 b=ATtAG62TfE96kyMQmiw5vB8rvga/ITWWFDi2097MF3JSBtKvhJcSNe3kX+pWIYwWd5
 MaaETn1X3I6Gki76LeZxQDfg65Bcipnb+JixznJaqw2HCnXbGQWjyLrt12uFpx/d4iu5
 ZBCRbAEMdKG2CyFyH7sYFs1ZitCCpqRtGVHRFvHZzxxl6gqp+HG8mJnY/AHLQ/Ldy1O5
 lEsP1Vkjt5/mwZNGhz0me1H0JMXhfBZm5b/Hl1ktttOHJ3YxNakDqPvebM/WLN54T5EB
 vFnysLwGtGvxaqEFMQWrU0OI7C0zYVkKsh09DMdM17EfkaK9FxqDFPQXUPeWEzxW712m
 g3tg==
X-Gm-Message-State: AOAM531Fenb3nNiNbqBnb9Sr6pNGkRYKt7iCLzSpDU4+/sTljasxyaCc
 hst8TW6m+KUVsB+R99P8klMNiTsf2cUNDfApk35833TW0Ssn4cxf/AHy6YPQ8FvVyhPOnG9AXus
 u0S8t21eD3tX+YmraC8LJ1A3cvzr5
X-Received: by 2002:a05:6214:dcb:b0:435:cb9c:b0b4 with SMTP id
 11-20020a0562140dcb00b00435cb9cb0b4mr1081802qvt.119.1647460057831; 
 Wed, 16 Mar 2022 12:47:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwd6yBQg5t9nqQt2lYJt49ehTyptVw7upMg0uojKxcC/Ku5glPD14dTM2VhzVpmsxZJOfIDgQ==
X-Received: by 2002:a05:6214:dcb:b0:435:cb9c:b0b4 with SMTP id
 11-20020a0562140dcb00b00435cb9cb0b4mr1081787qvt.119.1647460057597; 
 Wed, 16 Mar 2022 12:47:37 -0700 (PDT)
Received: from [192.168.8.138] (pool-96-230-100-15.bstnma.fios.verizon.net.
 [96.230.100.15]) by smtp.gmail.com with ESMTPSA id
 c27-20020a05620a165b00b0067d32238bc8sm1237699qko.125.2022.03.16.12.47.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 12:47:36 -0700 (PDT)
Message-ID: <0e029c57f314bb6139e72ff22a3f7667c99b7f26.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: events@lists.x.org, xorg-devel@lists.freedesktop.org, 
 wayland-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 mesa-dev@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 etnaviv@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 libre-soc-dev@lists.libre-soc.org
Date: Wed, 16 Mar 2022 15:47:35 -0400
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35)
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

