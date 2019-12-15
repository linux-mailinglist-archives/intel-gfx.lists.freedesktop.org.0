Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E2C11FB65
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 22:10:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9F346E094;
	Sun, 15 Dec 2019 21:10:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C538E6E094
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Dec 2019 21:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576444203;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=/tXt/jbxKOpffR/7/qODEGy3s/oZIroTZAVK9t3u81k=;
 b=dEx9N4a0fvopFu8x6Eg+I+pPPFUYyy7hnZGybPRNcHbFxoHfW+vkgppN14KxIua/9Qswmi
 4qkSNYizhfiefnODlOhIxkWj6FLwamT/GSE3zLRQ+CG0iiVnMHUfv/cU5gQqVMJ8fGJvqV
 NrDxBvltdCobKYbESfUGVfOvYP+UfKU=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-389-comXfFTCPae9ORJ11mipZw-1; Sun, 15 Dec 2019 16:10:01 -0500
Received: by mail-wr1-f71.google.com with SMTP id c6so2620393wrm.18
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Dec 2019 13:10:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=/tXt/jbxKOpffR/7/qODEGy3s/oZIroTZAVK9t3u81k=;
 b=nrDVC+SQrYj9R9fADrDggm219EWF4oTJNxKnNWYfhv7FDVY4QH7+1Z8+tsDR9OH+M3
 vBF74rkYEc0D5jNZJPkR0doX+TwTMbPMXQXg9Urm+KbDl9jrwm77UZ5Oo8pELSuDSg++
 uUv2C05ug1yCWlUM2aVMTRqoOvyDMCsixqJMs3fF0dOyUbu0c1cUJtv7ALKtNbceez2q
 CntVcN88ABGiRNEbnUlFktlkA677n+LmgRzBt1u+pOWQgapxb/oypLSNB18L3L2MfDYS
 HXAFO24UKjpj/nTsji3vggAwlnazIO7rgKMZwVbbYMx3kzFrLnGxhSgwoxWc8hBW0xX2
 zHyQ==
X-Gm-Message-State: APjAAAUlf/872eypoHg39Mv3M7ClLL9pgzZghWcBaXM47T6IuKfLLHPC
 aEu6LTtAW8m6/0uGMIImWpu3lghYLtZRI1R/opd3zD2oPjLFK5IjGdNABqVTLshrvaLANbz9CnQ
 cpZ+ldSw0apGVT+2UPPEjQfx42DT7
X-Received: by 2002:a5d:4602:: with SMTP id t2mr25715380wrq.37.1576444200234; 
 Sun, 15 Dec 2019 13:10:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqxfut3W0apIW1E/10BevjWCiQo7/QesJmalEwo9xcPMDU0zdd8c7R0AiaLnaWWMa41JFRfoEA==
X-Received: by 2002:a5d:4602:: with SMTP id t2mr25715370wrq.37.1576444200009; 
 Sun, 15 Dec 2019 13:10:00 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id x10sm18846626wrp.58.2019.12.15.13.09.59
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 15 Dec 2019 13:09:59 -0800 (PST)
To: intel-gfx@lists.freedesktop.org
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <5a537dd2-7d54-e383-0995-1175bf31937f@redhat.com>
Date: Sun, 15 Dec 2019 22:09:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-MC-Unique: comXfFTCPae9ORJ11mipZw-1
X-Mimecast-Spam-Score: 0
Subject: [Intel-gfx] Policy for dealing with CI failures?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi All,

I'm wondering if there are any (unwritten) guidelines for how to deal with CI
failures. Although it is great to have such an extensive CI systems, it seems
to result in quite many false-positives.

After a couple of resubmits I've gotten 2 patch-sets to pass the BAT tests,
but both have failed the IGT tests on what I'm reasonably sure are unrelated
failures.

Some examples:

This single patch series has a Reviewed-by and I would like to push it to
dinq, but it keeps failing CI:

https://patchwork.freedesktop.org/series/69902

This is a new series, which still needs reviews, etc. but it too is
currently failing CI for what are likely reasons which are unrelated to
the series:

https://patchwork.freedesktop.org/series/70945/

So my main, generic question is how am I supposed to deal with these
cases. Resubmit with a [CI] prefix in the subject until things pass?
Take a good look at the CI results and then use common sense?

Have it at least pass BAT and use common sense for IGT?

Regards,

Hans


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
