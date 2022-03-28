Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B9E4EA250
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 23:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9AEE10E11D;
	Mon, 28 Mar 2022 21:18:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 127BD10E171
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 21:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648502316;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=o/20j76lcDPeDTIfcY54M2M3yeP1hzS1Frzdk4vK99I=;
 b=OFLBoBS/3HdKJlmkE9GZ+x3nfkj1sQkGBWizbDquIgBu0A3jLmVRGFfO9XeR011XraKVKn
 cAXBoGQ4NE8+6xZDiLNEINMoLj+Nfu45pmQhujhtYQUl0zCGiJMwfWyWLKuf6E2ORuBa0Q
 G40hU0WB6gASUYC2JAJ59RlRDz9zBcY=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-330-cylDBcEANhexMyIx7R4rlw-1; Mon, 28 Mar 2022 17:18:29 -0400
X-MC-Unique: cylDBcEANhexMyIx7R4rlw-1
Received: by mail-qv1-f72.google.com with SMTP id
 r2-20020a056214068200b00440e24889e6so12234602qvz.23
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 14:18:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=o/20j76lcDPeDTIfcY54M2M3yeP1hzS1Frzdk4vK99I=;
 b=330UInAHorJhT4TwTpKZk4HEYH1tBySYOiWR3qG2cfZuMw+/QIW79uprW2cpkIBt6c
 1fGmjy9mE9qAvWJ/dO3uLM5BPhEDrM1lVGnTjKs9zLf1O1z5XwaQ25H4C8oaNTosio9g
 dlVUxeVehn5WH5btM/0ubQ153/NU3GYxskURCHKPCF8/asEowvgg2d985MvcgpPzu60F
 cUsmJIH9tc+mjEqJ6ZrccDQvw4+LXzC/Imsj812gSHTWkH7B/wLNmJaEtQ3mn/bP3ZqK
 rLaAw9gqerTs+nM9H2UHoYnILP974tZwDvtVMd+l8zaGpPm82+CaTUyHZ4bbjpzHwXNa
 JMaA==
X-Gm-Message-State: AOAM5337sykh60Fa/VQZqn+5K5ejh26nQbih321DdWy3Rfmyn1Os/FvH
 voO4Wi/lq3o4DleNyiSGQtd2ZksOupaLlkcUJWZ5e8KUJvbs7V4MTWnnh4sVSZ0ubooUM8PS4oO
 gXGeGsb94Qpixk82ofreXFZutZNI9
X-Received: by 2002:a05:6214:29c8:b0:440:fac2:a6c with SMTP id
 gh8-20020a05621429c800b00440fac20a6cmr23153274qvb.96.1648502308574; 
 Mon, 28 Mar 2022 14:18:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx80FvxqgxoMsKHifZxJPlSaASMzEtm2PCjdcW91NHHki6CRsyrlYXzQuiJUFDSkSZnID/Qgg==
X-Received: by 2002:a05:6214:29c8:b0:440:fac2:a6c with SMTP id
 gh8-20020a05621429c800b00440fac20a6cmr23153243qvb.96.1648502308333; 
 Mon, 28 Mar 2022 14:18:28 -0700 (PDT)
Received: from [192.168.8.138] (pool-71-126-244-162.bstnma.fios.verizon.net.
 [71.126.244.162]) by smtp.gmail.com with ESMTPSA id
 br13-20020a05620a460d00b00680d020b4cbsm2856816qkb.10.2022.03.28.14.18.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Mar 2022 14:18:27 -0700 (PDT)
Message-ID: <dc0ead0da30d0ccf8c4c57a2548d293c57407080.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: events@lists.x.org, xorg-devel@lists.freedesktop.org, 
 wayland-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 mesa-dev@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 etnaviv@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 libre-soc-dev@lists.libre-soc.org
Date: Mon, 28 Mar 2022 17:18:21 -0400
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.DarkModeFix.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] 2022 X.org Foundation Election Candidates
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

To all X.Org Foundation Members:

The election for the X.Org Foundation Board of Directors will begin on 04 April
2022. We have 6 candidates who are running for 4 seats. They are:

    Emma Anholt
    Shashank Sharma
    Ricardo Garcia
    Mark Filion
    Lucas Stach
    Alyssa Rosenzweig

To be found in the link below below are the Personal Statements each candidate
submitted for your consideration along with their Statements of Contribution
that they submitted with the membership application. Please review each of the
candidates' statements to help you decide whom to vote for during the upcoming
election.

    https://www.x.org/wiki/BoardOfDirectors/Elections/2022/

If you have questions of the candidates, you should feel free to ask them here
on the mailing list.

The election committee will provide detailed instructions on how the voting
system will work when the voting period begins.

Lyude Paul, on behalf of the X.Org elections committee

