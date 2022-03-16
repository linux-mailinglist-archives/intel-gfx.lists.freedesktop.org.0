Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAB24DB90C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 20:50:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB2A10EA46;
	Wed, 16 Mar 2022 19:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C580610EA46
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 19:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1647460233;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=IULt7o04qvCwavoveFrjEv+6PMDAGbABDhR83fNGGMs=;
 b=UxJRYjThLLuOG1U58bwHlMDsEi/9LoamwLs3H5jM0Ljak2iQZ+DuLkEtHepfHxIlef2TVK
 vT6wwao2As8W3py+8GLC+KrdCXFvsuD7cTp/QAcl9ui2i11SWycZ7Sl+lSECOU3Ml+cUBr
 YNhcz7REC9geRyWntCocSJRG5mQUZzc=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-132-UPmP2-NQM-26rTcxfzP-vA-1; Wed, 16 Mar 2022 15:50:32 -0400
X-MC-Unique: UPmP2-NQM-26rTcxfzP-vA-1
Received: by mail-qv1-f69.google.com with SMTP id
 w10-20020a05621412ea00b00440d10d2799so2432765qvv.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 12:50:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:date:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=IULt7o04qvCwavoveFrjEv+6PMDAGbABDhR83fNGGMs=;
 b=ULjB9+FDxgg3NPrcP8sryQnmRxD7QMlpnIVbrOnrCUzT486AOQC7ErZKIIMPBYl4pN
 jhKhW0LPEiPS8VEpRLBS9Q9xKHtbB943ujoEoi1pH7XCk/TkPg8IYggepAqjVYqwv8rQ
 +3wLjlYgOmvnkNCy4rbE1WlG+Q3Sy7sjnWpwnauVaGZh8WEsgGe43Nr17PL6/b3uUV98
 pTF3Vj0zSzYw9laa8AQsJO8mxe72J2pQaVoD8Np20bOOe+hQJWEz8utCLZbf2Cb738wx
 ARPFotz/iM3HOP9MnYG/OAkUUihg4pS3ZOncP04JLKTf4erW7sBMddOE27BK8AgvHBse
 gT6w==
X-Gm-Message-State: AOAM5339LSKnBDbw9y2UrpLl3gyHhwuMdTO4QJliSlK/XPfcJOafDa8b
 43iNELJVNvQFdhDUVkUfZMT5RsGhAvbjU9BA8tMBrWqjQNfL5N5Q5WEdGO22th5viTdFEVh/LF1
 3HDyUaUl/PbFpBtT4DsGWdNLdWCil
X-Received: by 2002:a05:622a:15d1:b0:2e1:e43a:5d8f with SMTP id
 d17-20020a05622a15d100b002e1e43a5d8fmr1272102qty.140.1647460231617; 
 Wed, 16 Mar 2022 12:50:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxh4lpEBRc4yxekchAYCkuCPJHbF3ageo0B4XggIr5OARMmH3VDkNNZctHxN64Hf6q3V4ltsw==
X-Received: by 2002:a05:622a:15d1:b0:2e1:e43a:5d8f with SMTP id
 d17-20020a05622a15d100b002e1e43a5d8fmr1272083qty.140.1647460231386; 
 Wed, 16 Mar 2022 12:50:31 -0700 (PDT)
Received: from [192.168.8.138] (pool-96-230-100-15.bstnma.fios.verizon.net.
 [96.230.100.15]) by smtp.gmail.com with ESMTPSA id
 v129-20020a379387000000b0064936bab2fcsm1320346qkd.48.2022.03.16.12.50.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Mar 2022 12:50:30 -0700 (PDT)
Message-ID: <2cbea441243bce09ec11bfe19b5bc2a727b94690.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: xorg@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 events@lists.x.org, xorg-devel@lists.freedesktop.org, 
 wayland-devel@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 mesa-dev@lists.freedesktop.org, amd-gfx@lists.freedesktop.org, 
 etnaviv@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 libre-soc-dev@lists.libre-soc.org
Date: Wed, 16 Mar 2022 15:50:29 -0400
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] 2022 X.Org Foundation Membership deadline for voting in
 the election
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

The 2022 X.Org Foundation elections are rapidly approaching. We will be
forwarding the election schedule and nominating process to the
membership shortly.

Please note that only current members can vote in the upcoming election,
and that the deadline for new memberships or renewals to vote in the
upcoming election is 31 March 2022 at 23:59 UTC.

If you are interested in joining the X.Org Foundation or in renewing
your membership, please visit the membership system site at:
https://members.x.org/

Lyude Paul, on behalf of the X.Org elections committee

