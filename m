Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 185A1598FAE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 23:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5287710F0C4;
	Thu, 18 Aug 2022 21:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD62E10F0C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 21:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1660858718;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=lScf9Dov1eqBcZW4o7xmR0mpAM2ZlF/Ug/GDTkmjTuQ=;
 b=SQ+hwHvh2aiJad+yDHBTX+BYpW1KaOGmtIeildKWLiQyp2rW2JfouSf/Z1n4RoHzgCvKTv
 m9xPTpar+Odbb4I7tLBS0iSgPInnddIa6SzaUeDTcG25/qdpA7G/Ko8lGmF4bNRQA3oWB+
 SUL3KEsS8LjjeZjxYH7512EyCj2brrM=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-340-DkikB9puOpG96yggY0L_rw-1; Thu, 18 Aug 2022 17:38:37 -0400
X-MC-Unique: DkikB9puOpG96yggY0L_rw-1
Received: by mail-qv1-f72.google.com with SMTP id
 ll16-20020a056214599000b00496a69ff248so1680641qvb.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 14:38:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:organization:date
 :to:from:subject:message-id:x-gm-message-state:from:to:cc;
 bh=lScf9Dov1eqBcZW4o7xmR0mpAM2ZlF/Ug/GDTkmjTuQ=;
 b=L9o/YCD/fcPkcjbrnm+jvvHwSKyDfDWPe2iDtOsdKPLCoCWHdHn+wWDkDzu3FBKNx2
 z6E+4zXTBpQwyG2N/TS8+2105tHoFe2DTL3tlnO1bqNYimj6fL7LUs1lWPNVUtpsLS8Z
 UFWMjOmQcw2Y3ymfxgm350TiM2W/+0zMKpRLGNLwKId7zxz7ZwankHJicWu3zhE2gmqb
 aS3bXJwaCpKYQVvSaCDbV/1zQ2qXVnXJ4CMdRZWZAZkXeOzLSTDuYPxRShiWcWBX75c4
 bCA+MSI03e2yc5v3b7BiEz1Tn0Rx6fKQlGAdzem3m3scYPrm6hoowOFI1BZzL7aFEPS8
 2JgQ==
X-Gm-Message-State: ACgBeo0TcfLZVLNZEpdvSYBez1FVnzHuukvHH8x105lB09NFw+pwFJXy
 7fpaS6k110CeybE8x1ixGSzxsW7yHGofhB9jVclNjrPVbPgzn0c0sILkvYAMi2c5Z4wX6iM4IHS
 R1n1AI2SsJBmHL2iWVMQJSRt/yx7yzQuHpocqBeyoq+xVZNwsQJRHFdm60oFhf06Vvs5yT0jqPn
 R7
X-Received: by 2002:ac8:5b0d:0:b0:344:8ba5:420b with SMTP id
 m13-20020ac85b0d000000b003448ba5420bmr4472558qtw.391.1660858717224; 
 Thu, 18 Aug 2022 14:38:37 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4weG3FaJoD23N1HOgbWuE9fLcNcoGD7+s609jvGOBpchxRhBmwTYJEGv6D/MGzBj/6c+6Ktw==
X-Received: by 2002:ac8:5b0d:0:b0:344:8ba5:420b with SMTP id
 m13-20020ac85b0d000000b003448ba5420bmr4472542qtw.391.1660858716960; 
 Thu, 18 Aug 2022 14:38:36 -0700 (PDT)
Received: from [192.168.8.138] (pool-100-0-245-4.bstnma.fios.verizon.net.
 [100.0.245.4]) by smtp.gmail.com with ESMTPSA id
 br17-20020a05620a461100b006b9122642f5sm2424345qkb.75.2022.08.18.14.38.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Aug 2022 14:38:36 -0700 (PDT)
Message-ID: <34c3009646f0c9c013b378da9255faf266c47234.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 libre-soc-dev@lists.libre-soc.org
Date: Thu, 18 Aug 2022 17:38:35 -0400
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
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

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

