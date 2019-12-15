Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5D311FB66
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Dec 2019 22:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C4A6E150;
	Sun, 15 Dec 2019 21:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAE4C6E150
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Dec 2019 21:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576444353;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sd5sVQ9UKNWJYgau6+96mrk1F3DaxZwBQ12EbMqhXFM=;
 b=I2cL8keqsDaV0B0R+3mvrfkMKhfITlGot5T9bxR39/Y9vajSNND/KfzkBGdM73XOoG3v9n
 5uDTafqdJNWFXcmRGvWXWQvAUkrkmheWml6BW0X+ymWCwL9YO//+SSeKrAACNjPUlOe1eW
 jrgjTHDfs0zy8S8D/fVmQ0rgDxb5txA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-G6DHWSFMOcGlJ5ovMhcwkw-1; Sun, 15 Dec 2019 16:12:28 -0500
Received: by mail-wr1-f70.google.com with SMTP id f17so2639969wrt.19
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Dec 2019 13:12:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sd5sVQ9UKNWJYgau6+96mrk1F3DaxZwBQ12EbMqhXFM=;
 b=su5K7G7RbihiMbS/k81wzruVqbW83GFxD1yJ93V5Iy5yjqEFr9YUXqsF126dG8Q1mo
 oL1JrEVZ6hJYSSTUv8UQ2S7XlEqTuOTTsVqKA8iMyYSN4fZlJAt/4yKyREpxjXVsf7tP
 FnYJk2c1Ug5zMCVdGt7MfTgdOFTh0I5m/v1DaeXvRwtP8/5AzB5/+xaFwJdB4sNpJJpF
 QAarz9i1kJO5gEmR5REo5V1+gt5WJFU79Sxsjg6stxV85yTN8UJ72CURB5EJlhZRZ3Ym
 VGZ9CPx0IdrzlAgltS8hBY7zA1KuvzrJPEpECswiVMfJzTd0WYl7K7E8fDj4IMcQrnhE
 WbEQ==
X-Gm-Message-State: APjAAAXZIcLC6fm9kKJHTg9gU5vgzazMggs7FWihxU2vHzUF3S2vRlpo
 KaNSTlQtjibz44CVkEb74dWdH6DNuVDAcgZF7//6uSd3xKLwKeBAj0DmmqSA0/KXv1Ry18YKq+n
 2ytYaQFxv/ruqosLrEkxJhMKXeIIw
X-Received: by 2002:a05:600c:224d:: with SMTP id
 a13mr27261019wmm.57.1576444347063; 
 Sun, 15 Dec 2019 13:12:27 -0800 (PST)
X-Google-Smtp-Source: APXvYqzBsEn0NHmT/vhEYMLF4eXW7tx4zfQ+Dy8G3SXKB/6V6vLPb5h5lmp9PfRBRSHR4BqDAZM34g==
X-Received: by 2002:a05:600c:224d:: with SMTP id
 a13mr27261006wmm.57.1576444346680; 
 Sun, 15 Dec 2019 13:12:26 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id u10sm18226309wmd.1.2019.12.15.13.12.25
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 15 Dec 2019 13:12:26 -0800 (PST)
From: Hans de Goede <hdegoede@redhat.com>
To: intel-gfx@lists.freedesktop.org
References: <5a537dd2-7d54-e383-0995-1175bf31937f@redhat.com>
Message-ID: <91bea665-e68d-e35c-c779-393a45b2d472@redhat.com>
Date: Sun, 15 Dec 2019 22:12:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <5a537dd2-7d54-e383-0995-1175bf31937f@redhat.com>
Content-Language: en-US
X-MC-Unique: G6DHWSFMOcGlJ5ovMhcwkw-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] Policy for dealing with CI failures?
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

p.s.

Reading one of the IGT failure summary emails I see:

"If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15773_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI."

Is there say an email address I can forward CI failure reports which
I believe to be false-positives to for this? What is the best (non IRC /
non real-time) method to contact "your bug team" ?




On 15-12-2019 22:09, Hans de Goede wrote:
> Hi All,
> 
> I'm wondering if there are any (unwritten) guidelines for how to deal with CI
> failures. Although it is great to have such an extensive CI systems, it seems
> to result in quite many false-positives.
> 
> After a couple of resubmits I've gotten 2 patch-sets to pass the BAT tests,
> but both have failed the IGT tests on what I'm reasonably sure are unrelated
> failures.
> 
> Some examples:
> 
> This single patch series has a Reviewed-by and I would like to push it to
> dinq, but it keeps failing CI:
> 
> https://patchwork.freedesktop.org/series/69902
> 
> This is a new series, which still needs reviews, etc. but it too is
> currently failing CI for what are likely reasons which are unrelated to
> the series:
> 
> https://patchwork.freedesktop.org/series/70945/
> 
> So my main, generic question is how am I supposed to deal with these
> cases. Resubmit with a [CI] prefix in the subject until things pass?
> Take a good look at the CI results and then use common sense?
> 
> Have it at least pass BAT and use common sense for IGT?
> 
> Regards,
> 
> Hans
> 
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
